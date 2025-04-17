; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mysql.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mysql.c"
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
%struct.aes_key_st = type { [60 x i32], i32 }
%struct.ctr_state = type { [16 x i8], i32, [16 x i8] }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._Myconninfo = type { ptr, ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@driver = internal constant %struct._turn_dbdriver_t { ptr @mysql_get_auth_secrets, ptr @mysql_get_user_key, ptr @mysql_set_user_key, ptr @mysql_del_user, ptr @mysql_list_users, ptr @mysql_list_secrets, ptr @mysql_del_secret, ptr @mysql_set_secret, ptr @mysql_add_origin, ptr @mysql_del_origin, ptr @mysql_list_origins, ptr @mysql_set_realm_option_one, ptr @mysql_list_realm_options, ptr @mysql_auth_ping, ptr @mysql_get_ip_list, ptr @mysql_set_permission_ip, ptr @mysql_reread_realms, ptr @mysql_set_oauth_key, ptr @mysql_get_oauth_key, ptr @mysql_del_oauth_key, ptr @mysql_list_oauth_keys, ptr @mysql_get_admin_user, ptr @mysql_set_admin_user, ptr @mysql_del_admin_user, ptr @mysql_list_admin_users, ptr @mysql_disconnect }, align 8, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"select value from turn_secret where realm='%s'\00", align 1, !dbg !346
@.str.1 = private unnamed_addr constant [43 x i8] c"Error retrieving MySQL DB information: %s\0A\00", align 1, !dbg !351
@connection_key = external global i32, align 4
@.str.2 = private unnamed_addr constant [74 x i8] c"Cannot open MySQL DB connection <%s>, connection string format error: %s\0A\00", align 1, !dbg !356
@.str.3 = private unnamed_addr constant [70 x i8] c"Cannot open MySQL DB connection <%s>, connection string format error\0A\00", align 1, !dbg !361
@.str.4 = private unnamed_addr constant [43 x i8] c"MySQL Database name is not provided: <%s>\0A\00", align 1, !dbg !366
@.str.5 = private unnamed_addr constant [39 x i8] c"Cannot initialize MySQL DB connection\0A\00", align 1, !dbg !368
@turn_params = external global %struct._turn_params_, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"Cannot open MySQL DB connection: <%s>, runtime error\0A\00", align 1, !dbg !373
@.str.7 = private unnamed_addr constant [32 x i8] c"Cannot connect to MySQL DB: %s\0A\00", align 1, !dbg !378
@donot_print_connection_success = internal global i32 0, align 4, !dbg !511
@.str.8 = private unnamed_addr constant [33 x i8] c"MySQL DB connection success: %s\0A\00", align 1, !dbg !383
@.str.9 = private unnamed_addr constant [35 x i8] c"Encryption with AES is activated.\0A\00", align 1, !dbg !388
@.str.10 = private unnamed_addr constant [23 x i8] c"Connection is secure.\0A\00", align 1, !dbg !393
@.str.11 = private unnamed_addr constant [27 x i8] c"Connection is not secure.\0A\00", align 1, !dbg !398
@.str.12 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !403
@.str.13 = private unnamed_addr constant [2 x i8] c"=\00", align 1, !dbg !408
@.str.14 = private unnamed_addr constant [5 x i8] c"host\00", align 1, !dbg !410
@.str.15 = private unnamed_addr constant [3 x i8] c"ip\00", align 1, !dbg !415
@.str.16 = private unnamed_addr constant [5 x i8] c"addr\00", align 1, !dbg !420
@.str.17 = private unnamed_addr constant [7 x i8] c"ipaddr\00", align 1, !dbg !422
@.str.18 = private unnamed_addr constant [9 x i8] c"hostaddr\00", align 1, !dbg !427
@.str.19 = private unnamed_addr constant [7 x i8] c"dbname\00", align 1, !dbg !432
@.str.20 = private unnamed_addr constant [3 x i8] c"db\00", align 1, !dbg !434
@.str.21 = private unnamed_addr constant [9 x i8] c"database\00", align 1, !dbg !436
@.str.22 = private unnamed_addr constant [5 x i8] c"user\00", align 1, !dbg !438
@.str.23 = private unnamed_addr constant [6 x i8] c"uname\00", align 1, !dbg !440
@.str.24 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !442
@.str.25 = private unnamed_addr constant [9 x i8] c"username\00", align 1, !dbg !444
@.str.26 = private unnamed_addr constant [9 x i8] c"password\00", align 1, !dbg !446
@.str.27 = private unnamed_addr constant [4 x i8] c"pwd\00", align 1, !dbg !448
@.str.28 = private unnamed_addr constant [7 x i8] c"passwd\00", align 1, !dbg !453
@.str.29 = private unnamed_addr constant [7 x i8] c"secret\00", align 1, !dbg !455
@.str.30 = private unnamed_addr constant [5 x i8] c"port\00", align 1, !dbg !457
@.str.31 = private unnamed_addr constant [2 x i8] c"p\00", align 1, !dbg !459
@.str.32 = private unnamed_addr constant [16 x i8] c"connect_timeout\00", align 1, !dbg !461
@.str.33 = private unnamed_addr constant [8 x i8] c"timeout\00", align 1, !dbg !466
@.str.34 = private unnamed_addr constant [13 x i8] c"read_timeout\00", align 1, !dbg !471
@.str.35 = private unnamed_addr constant [4 x i8] c"key\00", align 1, !dbg !476
@.str.36 = private unnamed_addr constant [8 x i8] c"ssl-key\00", align 1, !dbg !478
@.str.37 = private unnamed_addr constant [3 x i8] c"ca\00", align 1, !dbg !480
@.str.38 = private unnamed_addr constant [7 x i8] c"ssl-ca\00", align 1, !dbg !482
@.str.39 = private unnamed_addr constant [7 x i8] c"capath\00", align 1, !dbg !484
@.str.40 = private unnamed_addr constant [11 x i8] c"ssl-capath\00", align 1, !dbg !486
@.str.41 = private unnamed_addr constant [5 x i8] c"cert\00", align 1, !dbg !491
@.str.42 = private unnamed_addr constant [9 x i8] c"ssl-cert\00", align 1, !dbg !493
@.str.43 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1, !dbg !495
@.str.44 = private unnamed_addr constant [11 x i8] c"ssl-cipher\00", align 1, !dbg !497
@.str.45 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !499
@.str.46 = private unnamed_addr constant [10 x i8] c"127.0.0.1\00", align 1, !dbg !501
@.str.47 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !506
@.str.48 = private unnamed_addr constant [64 x i8] c"select hmackey from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !513
@.str.49 = private unnamed_addr constant [51 x i8] c"Unknown error retrieving MySQL DB information: %s\0A\00", align 1, !dbg !518
@.str.50 = private unnamed_addr constant [58 x i8] c"Wrong key format: string length=%d (must be %d): user %s\0A\00", align 1, !dbg !523
@.str.51 = private unnamed_addr constant [24 x i8] c"Wrong key: %s, user %s\0A\00", align 1, !dbg !528
@.str.52 = private unnamed_addr constant [69 x i8] c"insert into turnusers_lt (realm,name,hmackey) values('%s','%s','%s')\00", align 1, !dbg !533
@.str.53 = private unnamed_addr constant [68 x i8] c"update turnusers_lt set hmackey='%s' where name='%s' and realm='%s'\00", align 1, !dbg !538
@.str.54 = private unnamed_addr constant [51 x i8] c"Error inserting/updating user key information: %s\0A\00", align 1, !dbg !543
@.str.55 = private unnamed_addr constant [56 x i8] c"delete from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !545
@.str.56 = private unnamed_addr constant [41 x i8] c"Error deleting user key information: %s\0A\00", align 1, !dbg !550
@.str.57 = private unnamed_addr constant [68 x i8] c"select name, realm from turnusers_lt where realm='%s' order by name\00", align 1, !dbg !555
@.str.58 = private unnamed_addr constant [57 x i8] c"select name, realm from turnusers_lt order by realm,name\00", align 1, !dbg !557
@.str.59 = private unnamed_addr constant [8 x i8] c"%s[%s]\0A\00", align 1, !dbg !562
@.str.60 = private unnamed_addr constant [68 x i8] c"select value,realm from turn_secret where realm='%s' order by value\00", align 1, !dbg !564
@.str.61 = private unnamed_addr constant [57 x i8] c"select value,realm from turn_secret order by realm,value\00", align 1, !dbg !566
@.str.62 = private unnamed_addr constant [41 x i8] c"delete from turn_secret where realm='%s'\00", align 1, !dbg !568
@.str.63 = private unnamed_addr constant [56 x i8] c"delete from turn_secret where value='%s' and realm='%s'\00", align 1, !dbg !570
@.str.64 = private unnamed_addr constant [56 x i8] c"insert into turn_secret (realm,value) values('%s','%s')\00", align 1, !dbg !572
@.str.65 = private unnamed_addr constant [53 x i8] c"Error inserting/updating secret key information: %s\0A\00", align 1, !dbg !574
@.str.66 = private unnamed_addr constant [66 x i8] c"insert into turn_origin_to_realm (origin,realm) values('%s','%s')\00", align 1, !dbg !579
@.str.67 = private unnamed_addr constant [40 x i8] c"Error inserting origin information: %s\0A\00", align 1, !dbg !584
@.str.68 = private unnamed_addr constant [51 x i8] c"delete from turn_origin_to_realm where origin='%s'\00", align 1, !dbg !589
@.str.69 = private unnamed_addr constant [39 x i8] c"Error deleting origin information: %s\0A\00", align 1, !dbg !591
@.str.70 = private unnamed_addr constant [79 x i8] c"select origin,realm from turn_origin_to_realm where realm='%s' order by origin\00", align 1, !dbg !593
@.str.71 = private unnamed_addr constant [68 x i8] c"select origin,realm from turn_origin_to_realm order by realm,origin\00", align 1, !dbg !598
@.str.72 = private unnamed_addr constant [12 x i8] c"%s ==>> %s\0A\00", align 1, !dbg !600
@.str.73 = private unnamed_addr constant [60 x i8] c"delete from turn_realm_option where realm='%s' and opt='%s'\00", align 1, !dbg !605
@.str.74 = private unnamed_addr constant [72 x i8] c"insert into turn_realm_option (realm,opt,value) values('%s','%s','%lu')\00", align 1, !dbg !610
@.str.75 = private unnamed_addr constant [46 x i8] c"Error inserting realm option information: %s\0A\00", align 1, !dbg !615
@.str.76 = private unnamed_addr constant [82 x i8] c"select realm,opt,value from turn_realm_option where realm='%s' order by realm,opt\00", align 1, !dbg !620
@.str.77 = private unnamed_addr constant [65 x i8] c"select realm,opt,value from turn_realm_option order by realm,opt\00", align 1, !dbg !625
@.str.78 = private unnamed_addr constant [11 x i8] c"%s[%s]=%s\0A\00", align 1, !dbg !630
@.str.79 = private unnamed_addr constant [30 x i8] c"select value from turn_secret\00", align 1, !dbg !632
@.str.80 = private unnamed_addr constant [38 x i8] c"select ip_range,realm from %s_peer_ip\00", align 1, !dbg !637
@mysql_get_ip_list.wrong_table_reported = internal global i32 0, align 4, !dbg !642
@.str.81 = private unnamed_addr constant [152 x i8] c"Error retrieving MySQL DB information; probably, the tables 'allowed_peer_ip' and/or 'denied_peer_ip' have to be upgraded to include the realm column.\0A\00", align 1, !dbg !728
@.str.82 = private unnamed_addr constant [35 x i8] c"select ip_range,'' from %s_peer_ip\00", align 1, !dbg !733
@.str.83 = private unnamed_addr constant [63 x i8] c"delete from %s_peer_ip where realm = '%s'  and ip_range = '%s'\00", align 1, !dbg !735
@.str.84 = private unnamed_addr constant [58 x i8] c"insert into %s_peer_ip (realm,ip_range) values('%s','%s')\00", align 1, !dbg !740
@.str.85 = private unnamed_addr constant [47 x i8] c"Error inserting permission ip information: %s\0A\00", align 1, !dbg !742
@.str.86 = private unnamed_addr constant [46 x i8] c"select origin,realm from turn_origin_to_realm\00", align 1, !dbg !744
@.str.87 = private unnamed_addr constant [46 x i8] c"select realm,opt,value from turn_realm_option\00", align 1, !dbg !746
@.str.88 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !748
@.str.89 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !750
@.str.90 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !752
@.str.91 = private unnamed_addr constant [26 x i8] c"Unknown realm option: %s\0A\00", align 1, !dbg !754
@.str.92 = private unnamed_addr constant [108 x i8] c"insert into oauth_key (kid,ikm_key,timestamp,lifetime,as_rs_alg,realm) values('%s','%s',%llu,%lu,'%s','%s')\00", align 1, !dbg !759
@.str.93 = private unnamed_addr constant [104 x i8] c"update oauth_key set ikm_key='%s',timestamp=%lu,lifetime=%lu, as_rs_alg='%s', realm='%s' where kid='%s'\00", align 1, !dbg !764
@.str.94 = private unnamed_addr constant [52 x i8] c"Error inserting/updating oauth key information: %s\0A\00", align 1, !dbg !769
@.str.95 = private unnamed_addr constant [80 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm from oauth_key where kid='%s'\00", align 1, !dbg !774
@.str.96 = private unnamed_addr constant [39 x i8] c"delete from oauth_key where kid = '%s'\00", align 1, !dbg !779
@.str.97 = private unnamed_addr constant [42 x i8] c"Error deleting oauth key information: %s\0A\00", align 1, !dbg !781
@.str.98 = private unnamed_addr constant [82 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm,kid from oauth_key order by kid\00", align 1, !dbg !786
@.str.99 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1, !dbg !788
@.str.100 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !790
@.str.101 = private unnamed_addr constant [76 x i8] c"  kid=%s, ikm_key=%s, timestamp=%llu, lifetime=%lu, as_rs_alg=%s, realm=%s\0A\00", align 1, !dbg !792
@.str.102 = private unnamed_addr constant [54 x i8] c"select realm,password from admin_user where name='%s'\00", align 1, !dbg !797
@.str.103 = private unnamed_addr constant [68 x i8] c"insert into admin_user (realm,name,password) values('%s','%s','%s')\00", align 1, !dbg !799
@.str.104 = private unnamed_addr constant [63 x i8] c"update admin_user set realm='%s',password='%s' where name='%s'\00", align 1, !dbg !801
@.str.105 = private unnamed_addr constant [39 x i8] c"delete from admin_user where name='%s'\00", align 1, !dbg !803
@.str.106 = private unnamed_addr constant [43 x i8] c"Error deleting admin user information: %s\0A\00", align 1, !dbg !805
@.str.107 = private unnamed_addr constant [55 x i8] c"select name, realm from admin_user order by realm,name\00", align 1, !dbg !807
@.str.108 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !812
@.str.109 = private unnamed_addr constant [30 x i8] c"MySQL connection was closed.\0A\00", align 1, !dbg !814

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @decryptPassword(ptr noundef %0, ptr noundef %1) #0 !dbg !935 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [8 x i8], align 1
  %7 = alloca %struct.aes_key_st, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca [1024 x i8], align 16
  %13 = alloca %struct.ctr_state, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !938, metadata !DIExpression()), !dbg !939
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !940, metadata !DIExpression()), !dbg !941
  call void @llvm.dbg.declare(metadata ptr %5, metadata !942, metadata !DIExpression()), !dbg !943
  call void @llvm.dbg.declare(metadata ptr %6, metadata !944, metadata !DIExpression()), !dbg !945
  call void @llvm.memset.p0.i64(ptr align 1 %6, i8 0, i64 8, i1 false), !dbg !945
  call void @llvm.dbg.declare(metadata ptr %7, metadata !946, metadata !DIExpression()), !dbg !954
  call void @llvm.dbg.declare(metadata ptr %8, metadata !955, metadata !DIExpression()), !dbg !959
  %14 = load ptr, ptr %4, align 8, !dbg !960
  %15 = call i32 @AES_set_encrypt_key(ptr noundef %14, i32 noundef 128, ptr noundef %7), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %9, metadata !962, metadata !DIExpression()), !dbg !963
  %16 = load ptr, ptr %3, align 8, !dbg !964
  %17 = call i32 @decodedTextSize(ptr noundef %16), !dbg !965
  store i32 %17, ptr %9, align 4, !dbg !963
  call void @llvm.dbg.declare(metadata ptr %10, metadata !966, metadata !DIExpression()), !dbg !967
  %18 = load ptr, ptr %3, align 8, !dbg !968
  %19 = call i64 @strlen(ptr noundef %18) #7, !dbg !969
  %20 = trunc i64 %19 to i32, !dbg !969
  store i32 %20, ptr %10, align 4, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %11, metadata !970, metadata !DIExpression()), !dbg !971
  %21 = load ptr, ptr %3, align 8, !dbg !972
  %22 = load i32, ptr %10, align 4, !dbg !973
  %23 = call ptr @base64decode(ptr noundef %21, i32 noundef %22), !dbg !974
  store ptr %23, ptr %11, align 8, !dbg !971
  call void @llvm.dbg.declare(metadata ptr %12, metadata !975, metadata !DIExpression()), !dbg !979
  call void @llvm.memset.p0.i64(ptr align 16 %12, i8 0, i64 1024, i1 false), !dbg !979
  call void @llvm.dbg.declare(metadata ptr %13, metadata !980, metadata !DIExpression()), !dbg !988
  %24 = getelementptr inbounds [8 x i8], ptr %6, i64 0, i64 0, !dbg !989
  %25 = call i32 @init_ctr(ptr noundef %13, ptr noundef %24), !dbg !990
  %26 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !991
  call void @llvm.memset.p0.i64(ptr align 16 %26, i8 0, i64 256, i1 false), !dbg !991
  %27 = load ptr, ptr %11, align 8, !dbg !992
  %28 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !993
  %29 = load i32, ptr %9, align 4, !dbg !994
  %30 = sext i32 %29 to i64, !dbg !994
  %31 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 0, !dbg !995
  %32 = getelementptr inbounds [16 x i8], ptr %31, i64 0, i64 0, !dbg !996
  %33 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 2, !dbg !997
  %34 = getelementptr inbounds [16 x i8], ptr %33, i64 0, i64 0, !dbg !998
  %35 = getelementptr inbounds %struct.ctr_state, ptr %13, i32 0, i32 1, !dbg !999
  call void @CRYPTO_ctr128_encrypt(ptr noundef %27, ptr noundef %28, i64 noundef %30, ptr noundef %7, ptr noundef %32, ptr noundef %34, ptr noundef %35, ptr noundef @AES_encrypt), !dbg !1000
  %36 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !1001
  %37 = getelementptr inbounds [256 x i8], ptr %8, i64 0, i64 0, !dbg !1002
  %38 = call ptr @strcat(ptr noundef %36, ptr noundef %37) #8, !dbg !1003
  %39 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !1004
  %40 = call i64 @strlen(ptr noundef %39) #7, !dbg !1005
  %41 = mul i64 1, %40, !dbg !1006
  %42 = call noalias ptr @malloc(i64 noundef %41) #9, !dbg !1007
  store ptr %42, ptr %5, align 8, !dbg !1008
  %43 = load ptr, ptr %5, align 8, !dbg !1009
  %44 = getelementptr inbounds [1024 x i8], ptr %12, i64 0, i64 0, !dbg !1010
  %45 = call ptr @strcpy(ptr noundef %43, ptr noundef %44) #8, !dbg !1011
  %46 = load ptr, ptr %5, align 8, !dbg !1012
  ret ptr %46, !dbg !1013
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

declare i32 @AES_set_encrypt_key(ptr noundef, i32 noundef, ptr noundef) #3

declare i32 @decodedTextSize(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare ptr @base64decode(ptr noundef, i32 noundef) #3

declare i32 @init_ctr(ptr noundef, ptr noundef) #3

declare void @CRYPTO_ctr128_encrypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @AES_encrypt(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #5

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_mysql_dbdriver() #0 !dbg !1014 {
  ret ptr @driver, !dbg !1018
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !1019 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1020, metadata !DIExpression()), !dbg !1021
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1022, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1024, metadata !DIExpression()), !dbg !1025
  store i32 -1, ptr %5, align 4, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1026, metadata !DIExpression()), !dbg !1027
  %14 = call ptr @get_mydb_connection(), !dbg !1028
  store ptr %14, ptr %6, align 8, !dbg !1027
  %15 = load ptr, ptr %6, align 8, !dbg !1029
  %16 = icmp ne ptr %15, null, !dbg !1029
  br i1 %16, label %17, label %83, !dbg !1031

17:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1032, metadata !DIExpression()), !dbg !1037
  %18 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1038
  %19 = load ptr, ptr %4, align 8, !dbg !1039
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 1024, ptr noundef @.str, ptr noundef %19) #8, !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1041, metadata !DIExpression()), !dbg !1042
  %21 = load ptr, ptr %6, align 8, !dbg !1043
  %22 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1044
  %23 = call i32 @mysql_query(ptr noundef %21, ptr noundef %22), !dbg !1045
  store i32 %23, ptr %8, align 4, !dbg !1042
  %24 = load i32, ptr %8, align 4, !dbg !1046
  %25 = icmp ne i32 %24, 0, !dbg !1046
  br i1 %25, label %26, label %29, !dbg !1048

26:                                               ; preds = %17
  %27 = load ptr, ptr %6, align 8, !dbg !1049
  %28 = call ptr @mysql_error(ptr noundef %27), !dbg !1051
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %28), !dbg !1052
  br label %82, !dbg !1053

29:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1054, metadata !DIExpression()), !dbg !1093
  %30 = load ptr, ptr %6, align 8, !dbg !1094
  %31 = call ptr @mysql_store_result(ptr noundef %30), !dbg !1095
  store ptr %31, ptr %9, align 8, !dbg !1093
  %32 = load ptr, ptr %9, align 8, !dbg !1096
  %33 = icmp ne ptr %32, null, !dbg !1096
  br i1 %33, label %37, label %34, !dbg !1098

34:                                               ; preds = %29
  %35 = load ptr, ptr %6, align 8, !dbg !1099
  %36 = call ptr @mysql_error(ptr noundef %35), !dbg !1101
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %36), !dbg !1102
  br label %76, !dbg !1103

37:                                               ; preds = %29
  %38 = load ptr, ptr %6, align 8, !dbg !1104
  %39 = call i32 @mysql_field_count(ptr noundef %38), !dbg !1106
  %40 = icmp eq i32 %39, 1, !dbg !1107
  br i1 %40, label %41, label %75, !dbg !1108

41:                                               ; preds = %37
  br label %42, !dbg !1109

42:                                               ; preds = %73, %41
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1111, metadata !DIExpression()), !dbg !1115
  %43 = load ptr, ptr %9, align 8, !dbg !1116
  %44 = call ptr @mysql_fetch_row(ptr noundef %43), !dbg !1117
  store ptr %44, ptr %10, align 8, !dbg !1115
  %45 = load ptr, ptr %10, align 8, !dbg !1118
  %46 = icmp ne ptr %45, null, !dbg !1118
  br i1 %46, label %48, label %47, !dbg !1120

47:                                               ; preds = %42
  br label %74, !dbg !1121

48:                                               ; preds = %42
  %49 = load ptr, ptr %10, align 8, !dbg !1123
  %50 = getelementptr inbounds ptr, ptr %49, i64 0, !dbg !1123
  %51 = load ptr, ptr %50, align 8, !dbg !1123
  %52 = icmp ne ptr %51, null, !dbg !1123
  br i1 %52, label %53, label %72, !dbg !1126

53:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1127, metadata !DIExpression()), !dbg !1129
  %54 = load ptr, ptr %9, align 8, !dbg !1130
  %55 = call ptr @mysql_fetch_lengths(ptr noundef %54), !dbg !1131
  store ptr %55, ptr %11, align 8, !dbg !1129
  %56 = load ptr, ptr %11, align 8, !dbg !1132
  %57 = icmp ne ptr %56, null, !dbg !1132
  br i1 %57, label %58, label %71, !dbg !1134

58:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1135, metadata !DIExpression()), !dbg !1137
  %59 = load ptr, ptr %11, align 8, !dbg !1138
  %60 = getelementptr inbounds i64, ptr %59, i64 0, !dbg !1138
  %61 = load i64, ptr %60, align 8, !dbg !1138
  store i64 %61, ptr %12, align 8, !dbg !1137
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1139, metadata !DIExpression()), !dbg !1140
  %62 = load ptr, ptr %10, align 8, !dbg !1141
  %63 = getelementptr inbounds ptr, ptr %62, i64 0, !dbg !1141
  %64 = load ptr, ptr %63, align 8, !dbg !1141
  %65 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 0, !dbg !1142
  %66 = load i64, ptr %12, align 8, !dbg !1143
  call void @bcopy(ptr noundef %64, ptr noundef %65, i64 noundef %66) #8, !dbg !1144
  %67 = load i64, ptr %12, align 8, !dbg !1145
  %68 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 %67, !dbg !1146
  store i8 0, ptr %68, align 1, !dbg !1147
  %69 = load ptr, ptr %3, align 8, !dbg !1148
  %70 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 0, !dbg !1149
  call void @add_to_secrets_list(ptr noundef %69, ptr noundef %70), !dbg !1150
  br label %71, !dbg !1151

71:                                               ; preds = %58, %53
  br label %72, !dbg !1152

72:                                               ; preds = %71, %48
  br label %73

73:                                               ; preds = %72
  br label %42, !dbg !1153, !llvm.loop !1154

74:                                               ; preds = %47
  store i32 0, ptr %5, align 4, !dbg !1157
  br label %75, !dbg !1158

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75, %34
  %77 = load ptr, ptr %9, align 8, !dbg !1159
  %78 = icmp ne ptr %77, null, !dbg !1159
  br i1 %78, label %79, label %81, !dbg !1161

79:                                               ; preds = %76
  %80 = load ptr, ptr %9, align 8, !dbg !1162
  call void @mysql_free_result(ptr noundef %80), !dbg !1163
  br label %81, !dbg !1163

81:                                               ; preds = %79, %76
  br label %82

82:                                               ; preds = %81, %26
  br label %83, !dbg !1164

83:                                               ; preds = %82, %2
  %84 = load i32, ptr %5, align 4, !dbg !1165
  ret i32 %84, !dbg !1166
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_get_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1167 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca [129 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1168, metadata !DIExpression()), !dbg !1169
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1170, metadata !DIExpression()), !dbg !1171
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1172, metadata !DIExpression()), !dbg !1173
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1174, metadata !DIExpression()), !dbg !1175
  store i32 -1, ptr %7, align 4, !dbg !1175
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1176, metadata !DIExpression()), !dbg !1177
  %16 = call ptr @get_mydb_connection(), !dbg !1178
  store ptr %16, ptr %8, align 8, !dbg !1177
  %17 = load ptr, ptr %8, align 8, !dbg !1179
  %18 = icmp ne ptr %17, null, !dbg !1179
  br i1 %18, label %19, label %107, !dbg !1181

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1182, metadata !DIExpression()), !dbg !1184
  %20 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1185
  %21 = load ptr, ptr %4, align 8, !dbg !1186
  %22 = load ptr, ptr %5, align 8, !dbg !1187
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 1025, ptr noundef @.str.48, ptr noundef %21, ptr noundef %22) #8, !dbg !1188
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1189, metadata !DIExpression()), !dbg !1190
  %24 = load ptr, ptr %8, align 8, !dbg !1191
  %25 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1192
  %26 = call i32 @mysql_query(ptr noundef %24, ptr noundef %25), !dbg !1193
  store i32 %26, ptr %10, align 4, !dbg !1190
  %27 = load i32, ptr %10, align 4, !dbg !1194
  %28 = icmp ne i32 %27, 0, !dbg !1194
  br i1 %28, label %29, label %32, !dbg !1196

29:                                               ; preds = %19
  %30 = load ptr, ptr %8, align 8, !dbg !1197
  %31 = call ptr @mysql_error(ptr noundef %30), !dbg !1199
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %31), !dbg !1200
  br label %106, !dbg !1201

32:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1202, metadata !DIExpression()), !dbg !1204
  %33 = load ptr, ptr %8, align 8, !dbg !1205
  %34 = call ptr @mysql_store_result(ptr noundef %33), !dbg !1206
  store ptr %34, ptr %11, align 8, !dbg !1204
  %35 = load ptr, ptr %11, align 8, !dbg !1207
  %36 = icmp ne ptr %35, null, !dbg !1207
  br i1 %36, label %40, label %37, !dbg !1209

37:                                               ; preds = %32
  %38 = load ptr, ptr %8, align 8, !dbg !1210
  %39 = call ptr @mysql_error(ptr noundef %38), !dbg !1212
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %39), !dbg !1213
  br label %100, !dbg !1214

40:                                               ; preds = %32
  %41 = load ptr, ptr %8, align 8, !dbg !1215
  %42 = call i32 @mysql_field_count(ptr noundef %41), !dbg !1217
  %43 = icmp ne i32 %42, 1, !dbg !1218
  br i1 %43, label %44, label %46, !dbg !1219

44:                                               ; preds = %40
  %45 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1220
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %45), !dbg !1222
  br label %99, !dbg !1223

46:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1224, metadata !DIExpression()), !dbg !1226
  %47 = load ptr, ptr %11, align 8, !dbg !1227
  %48 = call ptr @mysql_fetch_row(ptr noundef %47), !dbg !1228
  store ptr %48, ptr %12, align 8, !dbg !1226
  %49 = load ptr, ptr %12, align 8, !dbg !1229
  %50 = icmp ne ptr %49, null, !dbg !1229
  br i1 %50, label %51, label %98, !dbg !1231

51:                                               ; preds = %46
  %52 = load ptr, ptr %12, align 8, !dbg !1232
  %53 = getelementptr inbounds ptr, ptr %52, i64 0, !dbg !1232
  %54 = load ptr, ptr %53, align 8, !dbg !1232
  %55 = icmp ne ptr %54, null, !dbg !1232
  br i1 %55, label %56, label %98, !dbg !1233

56:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1234, metadata !DIExpression()), !dbg !1236
  %57 = load ptr, ptr %11, align 8, !dbg !1237
  %58 = call ptr @mysql_fetch_lengths(ptr noundef %57), !dbg !1238
  store ptr %58, ptr %13, align 8, !dbg !1236
  %59 = load ptr, ptr %13, align 8, !dbg !1239
  %60 = icmp ne ptr %59, null, !dbg !1239
  br i1 %60, label %61, label %97, !dbg !1241

61:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1242, metadata !DIExpression()), !dbg !1244
  %62 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !1245
  %63 = mul i64 %62, 2, !dbg !1246
  store i64 %63, ptr %14, align 8, !dbg !1244
  %64 = load ptr, ptr %13, align 8, !dbg !1247
  %65 = getelementptr inbounds i64, ptr %64, i64 0, !dbg !1247
  %66 = load i64, ptr %65, align 8, !dbg !1247
  %67 = load i64, ptr %14, align 8, !dbg !1249
  %68 = icmp ult i64 %66, %67, !dbg !1250
  br i1 %68, label %69, label %77, !dbg !1251

69:                                               ; preds = %61
  %70 = load ptr, ptr %13, align 8, !dbg !1252
  %71 = getelementptr inbounds i64, ptr %70, i64 0, !dbg !1252
  %72 = load i64, ptr %71, align 8, !dbg !1252
  %73 = trunc i64 %72 to i32, !dbg !1254
  %74 = load i64, ptr %14, align 8, !dbg !1255
  %75 = trunc i64 %74 to i32, !dbg !1256
  %76 = load ptr, ptr %4, align 8, !dbg !1257
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.50, i32 noundef %73, i32 noundef %75, ptr noundef %76), !dbg !1258
  br label %96, !dbg !1259

77:                                               ; preds = %61
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1260, metadata !DIExpression()), !dbg !1262
  %78 = load ptr, ptr %12, align 8, !dbg !1263
  %79 = getelementptr inbounds ptr, ptr %78, i64 0, !dbg !1263
  %80 = load ptr, ptr %79, align 8, !dbg !1263
  %81 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !1264
  %82 = load i64, ptr %14, align 8, !dbg !1265
  call void @bcopy(ptr noundef %80, ptr noundef %81, i64 noundef %82) #8, !dbg !1266
  %83 = load i64, ptr %14, align 8, !dbg !1267
  %84 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 %83, !dbg !1268
  store i8 0, ptr %84, align 1, !dbg !1269
  %85 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !1270
  %86 = load ptr, ptr %6, align 8, !dbg !1272
  %87 = load i64, ptr %14, align 8, !dbg !1273
  %88 = udiv i64 %87, 2, !dbg !1274
  %89 = call i32 @convert_string_key_to_binary(ptr noundef %85, ptr noundef %86, i64 noundef %88), !dbg !1275
  %90 = icmp slt i32 %89, 0, !dbg !1276
  br i1 %90, label %91, label %94, !dbg !1277

91:                                               ; preds = %77
  %92 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !1278
  %93 = load ptr, ptr %4, align 8, !dbg !1280
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.51, ptr noundef %92, ptr noundef %93), !dbg !1281
  br label %95, !dbg !1282

94:                                               ; preds = %77
  store i32 0, ptr %7, align 4, !dbg !1283
  br label %95

95:                                               ; preds = %94, %91
  br label %96

96:                                               ; preds = %95, %69
  br label %97, !dbg !1285

97:                                               ; preds = %96, %56
  br label %98, !dbg !1286

98:                                               ; preds = %97, %51, %46
  br label %99

99:                                               ; preds = %98, %44
  br label %100

100:                                              ; preds = %99, %37
  %101 = load ptr, ptr %11, align 8, !dbg !1287
  %102 = icmp ne ptr %101, null, !dbg !1287
  br i1 %102, label %103, label %105, !dbg !1289

103:                                              ; preds = %100
  %104 = load ptr, ptr %11, align 8, !dbg !1290
  call void @mysql_free_result(ptr noundef %104), !dbg !1291
  br label %105, !dbg !1291

105:                                              ; preds = %103, %100
  br label %106

106:                                              ; preds = %105, %29
  br label %107, !dbg !1292

107:                                              ; preds = %106, %3
  %108 = load i32, ptr %7, align 4, !dbg !1293
  ret i32 %108, !dbg !1294
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1295 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1296, metadata !DIExpression()), !dbg !1297
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1298, metadata !DIExpression()), !dbg !1299
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1300, metadata !DIExpression()), !dbg !1301
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1302, metadata !DIExpression()), !dbg !1303
  store i32 -1, ptr %7, align 4, !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1304, metadata !DIExpression()), !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1306, metadata !DIExpression()), !dbg !1307
  %11 = call ptr @get_mydb_connection(), !dbg !1308
  store ptr %11, ptr %9, align 8, !dbg !1307
  %12 = load ptr, ptr %9, align 8, !dbg !1309
  %13 = icmp ne ptr %12, null, !dbg !1309
  br i1 %13, label %14, label %43, !dbg !1311

14:                                               ; preds = %3
  %15 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1312
  %16 = load ptr, ptr %5, align 8, !dbg !1314
  %17 = load ptr, ptr %4, align 8, !dbg !1315
  %18 = load ptr, ptr %6, align 8, !dbg !1316
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.52, ptr noundef %16, ptr noundef %17, ptr noundef %18) #8, !dbg !1317
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1318, metadata !DIExpression()), !dbg !1319
  %20 = load ptr, ptr %9, align 8, !dbg !1320
  %21 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1321
  %22 = call i32 @mysql_query(ptr noundef %20, ptr noundef %21), !dbg !1322
  store i32 %22, ptr %10, align 4, !dbg !1319
  %23 = load i32, ptr %10, align 4, !dbg !1323
  %24 = icmp ne i32 %23, 0, !dbg !1323
  br i1 %24, label %26, label %25, !dbg !1325

25:                                               ; preds = %14
  store i32 0, ptr %7, align 4, !dbg !1326
  br label %42, !dbg !1328

26:                                               ; preds = %14
  %27 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1329
  %28 = load ptr, ptr %6, align 8, !dbg !1331
  %29 = load ptr, ptr %4, align 8, !dbg !1332
  %30 = load ptr, ptr %5, align 8, !dbg !1333
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 1025, ptr noundef @.str.53, ptr noundef %28, ptr noundef %29, ptr noundef %30) #8, !dbg !1334
  %32 = load ptr, ptr %9, align 8, !dbg !1335
  %33 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1336
  %34 = call i32 @mysql_query(ptr noundef %32, ptr noundef %33), !dbg !1337
  store i32 %34, ptr %10, align 4, !dbg !1338
  %35 = load i32, ptr %10, align 4, !dbg !1339
  %36 = icmp ne i32 %35, 0, !dbg !1339
  br i1 %36, label %38, label %37, !dbg !1341

37:                                               ; preds = %26
  store i32 0, ptr %7, align 4, !dbg !1342
  br label %41, !dbg !1344

38:                                               ; preds = %26
  %39 = load ptr, ptr %9, align 8, !dbg !1345
  %40 = call ptr @mysql_error(ptr noundef %39), !dbg !1347
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.54, ptr noundef %40), !dbg !1348
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %25
  br label %43, !dbg !1349

43:                                               ; preds = %42, %3
  %44 = load i32, ptr %7, align 4, !dbg !1350
  ret i32 %44, !dbg !1351
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_del_user(ptr noundef %0, ptr noundef %1) #0 !dbg !1352 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1353, metadata !DIExpression()), !dbg !1354
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1355, metadata !DIExpression()), !dbg !1356
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1357, metadata !DIExpression()), !dbg !1358
  store i32 -1, ptr %5, align 4, !dbg !1358
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1359, metadata !DIExpression()), !dbg !1360
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1361, metadata !DIExpression()), !dbg !1362
  %9 = call ptr @get_mydb_connection(), !dbg !1363
  store ptr %9, ptr %7, align 8, !dbg !1362
  %10 = load ptr, ptr %7, align 8, !dbg !1364
  %11 = icmp ne ptr %10, null, !dbg !1364
  br i1 %11, label %12, label %27, !dbg !1366

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1367
  %14 = load ptr, ptr %3, align 8, !dbg !1369
  %15 = load ptr, ptr %4, align 8, !dbg !1370
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.55, ptr noundef %14, ptr noundef %15) #8, !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1372, metadata !DIExpression()), !dbg !1373
  %17 = load ptr, ptr %7, align 8, !dbg !1374
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1375
  %19 = call i32 @mysql_query(ptr noundef %17, ptr noundef %18), !dbg !1376
  store i32 %19, ptr %8, align 4, !dbg !1373
  %20 = load i32, ptr %8, align 4, !dbg !1377
  %21 = icmp ne i32 %20, 0, !dbg !1377
  br i1 %21, label %22, label %25, !dbg !1379

22:                                               ; preds = %12
  %23 = load ptr, ptr %7, align 8, !dbg !1380
  %24 = call ptr @mysql_error(ptr noundef %23), !dbg !1382
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.56, ptr noundef %24), !dbg !1383
  br label %26, !dbg !1384

25:                                               ; preds = %12
  store i32 0, ptr %5, align 4, !dbg !1385
  br label %26

26:                                               ; preds = %25, %22
  br label %27, !dbg !1387

27:                                               ; preds = %26, %2
  %28 = load i32, ptr %5, align 4, !dbg !1388
  ret i32 %28, !dbg !1389
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_users(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1390 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1391, metadata !DIExpression()), !dbg !1392
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1393, metadata !DIExpression()), !dbg !1394
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1395, metadata !DIExpression()), !dbg !1396
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1397, metadata !DIExpression()), !dbg !1398
  store i32 -1, ptr %7, align 4, !dbg !1398
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1399, metadata !DIExpression()), !dbg !1400
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1401, metadata !DIExpression()), !dbg !1403
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !1403
  %14 = load ptr, ptr %4, align 8, !dbg !1404
  %15 = icmp ne ptr %14, null, !dbg !1404
  br i1 %15, label %18, label %16, !dbg !1406

16:                                               ; preds = %3
  %17 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !1407
  store ptr %17, ptr %4, align 8, !dbg !1408
  br label %18, !dbg !1409

18:                                               ; preds = %16, %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1410, metadata !DIExpression()), !dbg !1411
  %19 = call ptr @get_mydb_connection(), !dbg !1412
  store ptr %19, ptr %10, align 8, !dbg !1411
  %20 = load ptr, ptr %10, align 8, !dbg !1413
  %21 = icmp ne ptr %20, null, !dbg !1413
  br i1 %21, label %22, label %114, !dbg !1415

22:                                               ; preds = %18
  %23 = load ptr, ptr %4, align 8, !dbg !1416
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !1416
  %25 = load i8, ptr %24, align 1, !dbg !1416
  %26 = icmp ne i8 %25, 0, !dbg !1416
  br i1 %26, label %27, label %31, !dbg !1419

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1420
  %29 = load ptr, ptr %4, align 8, !dbg !1422
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef 1025, ptr noundef @.str.57, ptr noundef %29) #8, !dbg !1423
  br label %34, !dbg !1424

31:                                               ; preds = %22
  %32 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1425
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef 1025, ptr noundef @.str.58) #8, !dbg !1427
  br label %34

34:                                               ; preds = %31, %27
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1428, metadata !DIExpression()), !dbg !1429
  %35 = load ptr, ptr %10, align 8, !dbg !1430
  %36 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1431
  %37 = call i32 @mysql_query(ptr noundef %35, ptr noundef %36), !dbg !1432
  store i32 %37, ptr %11, align 4, !dbg !1429
  %38 = load i32, ptr %11, align 4, !dbg !1433
  %39 = icmp ne i32 %38, 0, !dbg !1433
  br i1 %39, label %40, label %43, !dbg !1435

40:                                               ; preds = %34
  %41 = load ptr, ptr %10, align 8, !dbg !1436
  %42 = call ptr @mysql_error(ptr noundef %41), !dbg !1438
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %42), !dbg !1439
  br label %113, !dbg !1440

43:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1441, metadata !DIExpression()), !dbg !1443
  %44 = load ptr, ptr %10, align 8, !dbg !1444
  %45 = call ptr @mysql_store_result(ptr noundef %44), !dbg !1445
  store ptr %45, ptr %12, align 8, !dbg !1443
  %46 = load ptr, ptr %12, align 8, !dbg !1446
  %47 = icmp ne ptr %46, null, !dbg !1446
  br i1 %47, label %51, label %48, !dbg !1448

48:                                               ; preds = %43
  %49 = load ptr, ptr %10, align 8, !dbg !1449
  %50 = call ptr @mysql_error(ptr noundef %49), !dbg !1451
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %50), !dbg !1452
  br label %107, !dbg !1453

51:                                               ; preds = %43
  %52 = load ptr, ptr %10, align 8, !dbg !1454
  %53 = call i32 @mysql_field_count(ptr noundef %52), !dbg !1456
  %54 = icmp ne i32 %53, 2, !dbg !1457
  br i1 %54, label %55, label %57, !dbg !1458

55:                                               ; preds = %51
  %56 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1459
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %56), !dbg !1461
  br label %106, !dbg !1462

57:                                               ; preds = %51
  br label %58, !dbg !1463

58:                                               ; preds = %104, %57
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1465, metadata !DIExpression()), !dbg !1469
  %59 = load ptr, ptr %12, align 8, !dbg !1470
  %60 = call ptr @mysql_fetch_row(ptr noundef %59), !dbg !1471
  store ptr %60, ptr %13, align 8, !dbg !1469
  %61 = load ptr, ptr %13, align 8, !dbg !1472
  %62 = icmp ne ptr %61, null, !dbg !1472
  br i1 %62, label %64, label %63, !dbg !1474

63:                                               ; preds = %58
  br label %105, !dbg !1475

64:                                               ; preds = %58
  %65 = load ptr, ptr %13, align 8, !dbg !1477
  %66 = getelementptr inbounds ptr, ptr %65, i64 0, !dbg !1477
  %67 = load ptr, ptr %66, align 8, !dbg !1477
  %68 = icmp ne ptr %67, null, !dbg !1477
  br i1 %68, label %69, label %103, !dbg !1480

69:                                               ; preds = %64
  %70 = load ptr, ptr %5, align 8, !dbg !1481
  %71 = icmp ne ptr %70, null, !dbg !1481
  br i1 %71, label %72, label %94, !dbg !1484

72:                                               ; preds = %69
  %73 = load ptr, ptr %5, align 8, !dbg !1485
  %74 = load ptr, ptr %13, align 8, !dbg !1487
  %75 = getelementptr inbounds ptr, ptr %74, i64 0, !dbg !1487
  %76 = load ptr, ptr %75, align 8, !dbg !1487
  call void @add_to_secrets_list(ptr noundef %73, ptr noundef %76), !dbg !1488
  %77 = load ptr, ptr %6, align 8, !dbg !1489
  %78 = icmp ne ptr %77, null, !dbg !1489
  br i1 %78, label %79, label %93, !dbg !1491

79:                                               ; preds = %72
  %80 = load ptr, ptr %13, align 8, !dbg !1492
  %81 = getelementptr inbounds ptr, ptr %80, i64 1, !dbg !1492
  %82 = load ptr, ptr %81, align 8, !dbg !1492
  %83 = icmp ne ptr %82, null, !dbg !1492
  br i1 %83, label %84, label %89, !dbg !1495

84:                                               ; preds = %79
  %85 = load ptr, ptr %6, align 8, !dbg !1496
  %86 = load ptr, ptr %13, align 8, !dbg !1498
  %87 = getelementptr inbounds ptr, ptr %86, i64 1, !dbg !1498
  %88 = load ptr, ptr %87, align 8, !dbg !1498
  call void @add_to_secrets_list(ptr noundef %85, ptr noundef %88), !dbg !1499
  br label %92, !dbg !1500

89:                                               ; preds = %79
  %90 = load ptr, ptr %6, align 8, !dbg !1501
  %91 = load ptr, ptr %4, align 8, !dbg !1503
  call void @add_to_secrets_list(ptr noundef %90, ptr noundef %91), !dbg !1504
  br label %92

92:                                               ; preds = %89, %84
  br label %93, !dbg !1505

93:                                               ; preds = %92, %72
  br label %102, !dbg !1506

94:                                               ; preds = %69
  %95 = load ptr, ptr %13, align 8, !dbg !1507
  %96 = getelementptr inbounds ptr, ptr %95, i64 0, !dbg !1507
  %97 = load ptr, ptr %96, align 8, !dbg !1507
  %98 = load ptr, ptr %13, align 8, !dbg !1509
  %99 = getelementptr inbounds ptr, ptr %98, i64 1, !dbg !1509
  %100 = load ptr, ptr %99, align 8, !dbg !1509
  %101 = call i32 (ptr, ...) @printf(ptr noundef @.str.59, ptr noundef %97, ptr noundef %100), !dbg !1510
  br label %102

102:                                              ; preds = %94, %93
  br label %103, !dbg !1511

103:                                              ; preds = %102, %64
  br label %104

104:                                              ; preds = %103
  br label %58, !dbg !1512, !llvm.loop !1513

105:                                              ; preds = %63
  store i32 0, ptr %7, align 4, !dbg !1516
  br label %106

106:                                              ; preds = %105, %55
  br label %107

107:                                              ; preds = %106, %48
  %108 = load ptr, ptr %12, align 8, !dbg !1517
  %109 = icmp ne ptr %108, null, !dbg !1517
  br i1 %109, label %110, label %112, !dbg !1519

110:                                              ; preds = %107
  %111 = load ptr, ptr %12, align 8, !dbg !1520
  call void @mysql_free_result(ptr noundef %111), !dbg !1521
  br label %112, !dbg !1521

112:                                              ; preds = %110, %107
  br label %113

113:                                              ; preds = %112, %40
  br label %114, !dbg !1522

114:                                              ; preds = %113, %18
  %115 = load i32, ptr %7, align 4, !dbg !1523
  ret i32 %115, !dbg !1524
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_secrets(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1525 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1526, metadata !DIExpression()), !dbg !1527
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1528, metadata !DIExpression()), !dbg !1529
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1530, metadata !DIExpression()), !dbg !1531
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1532, metadata !DIExpression()), !dbg !1533
  store i32 -1, ptr %7, align 4, !dbg !1533
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1534, metadata !DIExpression()), !dbg !1535
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1535
  %16 = load ptr, ptr %4, align 8, !dbg !1536
  %17 = icmp ne ptr %16, null, !dbg !1536
  br i1 %17, label %20, label %18, !dbg !1538

18:                                               ; preds = %3
  %19 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1539
  store ptr %19, ptr %4, align 8, !dbg !1540
  br label %20, !dbg !1541

20:                                               ; preds = %18, %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1542, metadata !DIExpression()), !dbg !1543
  %21 = load ptr, ptr %4, align 8, !dbg !1544
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !1544
  %23 = load i8, ptr %22, align 1, !dbg !1544
  %24 = icmp ne i8 %23, 0, !dbg !1544
  br i1 %24, label %25, label %29, !dbg !1546

25:                                               ; preds = %20
  %26 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1547
  %27 = load ptr, ptr %4, align 8, !dbg !1549
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.60, ptr noundef %27) #8, !dbg !1550
  br label %32, !dbg !1551

29:                                               ; preds = %20
  %30 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1552
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %30, i64 noundef 1025, ptr noundef @.str.61) #8, !dbg !1554
  br label %32

32:                                               ; preds = %29, %25
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1555
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1556, metadata !DIExpression()), !dbg !1557
  %33 = call ptr @get_mydb_connection(), !dbg !1558
  store ptr %33, ptr %10, align 8, !dbg !1557
  %34 = load ptr, ptr %10, align 8, !dbg !1559
  %35 = icmp ne ptr %34, null, !dbg !1559
  br i1 %35, label %36, label %115, !dbg !1561

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1562, metadata !DIExpression()), !dbg !1564
  %37 = load ptr, ptr %10, align 8, !dbg !1565
  %38 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1566
  %39 = call i32 @mysql_query(ptr noundef %37, ptr noundef %38), !dbg !1567
  store i32 %39, ptr %11, align 4, !dbg !1564
  %40 = load i32, ptr %11, align 4, !dbg !1568
  %41 = icmp ne i32 %40, 0, !dbg !1568
  br i1 %41, label %42, label %45, !dbg !1570

42:                                               ; preds = %36
  %43 = load ptr, ptr %10, align 8, !dbg !1571
  %44 = call ptr @mysql_error(ptr noundef %43), !dbg !1573
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %44), !dbg !1574
  br label %114, !dbg !1575

45:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1576, metadata !DIExpression()), !dbg !1578
  %46 = load ptr, ptr %10, align 8, !dbg !1579
  %47 = call ptr @mysql_store_result(ptr noundef %46), !dbg !1580
  store ptr %47, ptr %12, align 8, !dbg !1578
  %48 = load ptr, ptr %12, align 8, !dbg !1581
  %49 = icmp ne ptr %48, null, !dbg !1581
  br i1 %49, label %53, label %50, !dbg !1583

50:                                               ; preds = %45
  %51 = load ptr, ptr %10, align 8, !dbg !1584
  %52 = call ptr @mysql_error(ptr noundef %51), !dbg !1586
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %52), !dbg !1587
  br label %108, !dbg !1588

53:                                               ; preds = %45
  %54 = load ptr, ptr %10, align 8, !dbg !1589
  %55 = call i32 @mysql_field_count(ptr noundef %54), !dbg !1591
  %56 = icmp ne i32 %55, 2, !dbg !1592
  br i1 %56, label %57, label %59, !dbg !1593

57:                                               ; preds = %53
  %58 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1594
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %58), !dbg !1596
  br label %107, !dbg !1597

59:                                               ; preds = %53
  br label %60, !dbg !1598

60:                                               ; preds = %105, %59
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1600, metadata !DIExpression()), !dbg !1604
  %61 = load ptr, ptr %12, align 8, !dbg !1605
  %62 = call ptr @mysql_fetch_row(ptr noundef %61), !dbg !1606
  store ptr %62, ptr %13, align 8, !dbg !1604
  %63 = load ptr, ptr %13, align 8, !dbg !1607
  %64 = icmp ne ptr %63, null, !dbg !1607
  br i1 %64, label %66, label %65, !dbg !1609

65:                                               ; preds = %60
  br label %106, !dbg !1610

66:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1612, metadata !DIExpression()), !dbg !1614
  %67 = load ptr, ptr %13, align 8, !dbg !1615
  %68 = getelementptr inbounds ptr, ptr %67, i64 0, !dbg !1615
  %69 = load ptr, ptr %68, align 8, !dbg !1615
  store ptr %69, ptr %14, align 8, !dbg !1614
  %70 = load ptr, ptr %14, align 8, !dbg !1616
  %71 = icmp ne ptr %70, null, !dbg !1616
  br i1 %71, label %72, label %104, !dbg !1618

72:                                               ; preds = %66
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1619, metadata !DIExpression()), !dbg !1621
  %73 = load ptr, ptr %13, align 8, !dbg !1622
  %74 = getelementptr inbounds ptr, ptr %73, i64 1, !dbg !1622
  %75 = load ptr, ptr %74, align 8, !dbg !1622
  store ptr %75, ptr %15, align 8, !dbg !1621
  %76 = load ptr, ptr %5, align 8, !dbg !1623
  %77 = icmp ne ptr %76, null, !dbg !1623
  br i1 %77, label %78, label %99, !dbg !1625

78:                                               ; preds = %72
  %79 = load ptr, ptr %5, align 8, !dbg !1626
  %80 = load ptr, ptr %14, align 8, !dbg !1628
  call void @add_to_secrets_list(ptr noundef %79, ptr noundef %80), !dbg !1629
  %81 = load ptr, ptr %6, align 8, !dbg !1630
  %82 = icmp ne ptr %81, null, !dbg !1630
  br i1 %82, label %83, label %98, !dbg !1632

83:                                               ; preds = %78
  %84 = load ptr, ptr %15, align 8, !dbg !1633
  %85 = icmp ne ptr %84, null, !dbg !1633
  br i1 %85, label %86, label %94, !dbg !1636

86:                                               ; preds = %83
  %87 = load ptr, ptr %15, align 8, !dbg !1637
  %88 = load i8, ptr %87, align 1, !dbg !1638
  %89 = sext i8 %88 to i32, !dbg !1638
  %90 = icmp ne i32 %89, 0, !dbg !1638
  br i1 %90, label %91, label %94, !dbg !1639

91:                                               ; preds = %86
  %92 = load ptr, ptr %6, align 8, !dbg !1640
  %93 = load ptr, ptr %15, align 8, !dbg !1642
  call void @add_to_secrets_list(ptr noundef %92, ptr noundef %93), !dbg !1643
  br label %97, !dbg !1644

94:                                               ; preds = %86, %83
  %95 = load ptr, ptr %6, align 8, !dbg !1645
  %96 = load ptr, ptr %4, align 8, !dbg !1647
  call void @add_to_secrets_list(ptr noundef %95, ptr noundef %96), !dbg !1648
  br label %97

97:                                               ; preds = %94, %91
  br label %98, !dbg !1649

98:                                               ; preds = %97, %78
  br label %103, !dbg !1650

99:                                               ; preds = %72
  %100 = load ptr, ptr %14, align 8, !dbg !1651
  %101 = load ptr, ptr %15, align 8, !dbg !1653
  %102 = call i32 (ptr, ...) @printf(ptr noundef @.str.59, ptr noundef %100, ptr noundef %101), !dbg !1654
  br label %103

103:                                              ; preds = %99, %98
  br label %104, !dbg !1655

104:                                              ; preds = %103, %66
  br label %105

105:                                              ; preds = %104
  br label %60, !dbg !1656, !llvm.loop !1657

106:                                              ; preds = %65
  store i32 0, ptr %7, align 4, !dbg !1660
  br label %107

107:                                              ; preds = %106, %57
  br label %108

108:                                              ; preds = %107, %50
  %109 = load ptr, ptr %12, align 8, !dbg !1661
  %110 = icmp ne ptr %109, null, !dbg !1661
  br i1 %110, label %111, label %113, !dbg !1663

111:                                              ; preds = %108
  %112 = load ptr, ptr %12, align 8, !dbg !1664
  call void @mysql_free_result(ptr noundef %112), !dbg !1665
  br label %113, !dbg !1665

113:                                              ; preds = %111, %108
  br label %114

114:                                              ; preds = %113, %42
  br label %115, !dbg !1666

115:                                              ; preds = %114, %32
  %116 = load i32, ptr %7, align 4, !dbg !1667
  ret i32 %116, !dbg !1668
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1669 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1670, metadata !DIExpression()), !dbg !1671
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1672, metadata !DIExpression()), !dbg !1673
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1674, metadata !DIExpression()), !dbg !1675
  store i32 -1, ptr %5, align 4, !dbg !1675
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1677, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1679, metadata !DIExpression()), !dbg !1680
  %8 = call ptr @get_mydb_connection(), !dbg !1681
  store ptr %8, ptr %7, align 8, !dbg !1680
  %9 = load ptr, ptr %7, align 8, !dbg !1682
  %10 = icmp ne ptr %9, null, !dbg !1682
  br i1 %10, label %11, label %33, !dbg !1684

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !1685
  %13 = icmp ne ptr %12, null, !dbg !1685
  br i1 %13, label %14, label %20, !dbg !1688

14:                                               ; preds = %11
  %15 = load ptr, ptr %3, align 8, !dbg !1689
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !1689
  %17 = load i8, ptr %16, align 1, !dbg !1689
  %18 = zext i8 %17 to i32, !dbg !1689
  %19 = icmp eq i32 %18, 0, !dbg !1690
  br i1 %19, label %20, label %24, !dbg !1691

20:                                               ; preds = %14, %11
  %21 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1692
  %22 = load ptr, ptr %4, align 8, !dbg !1693
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %21, i64 noundef 1025, ptr noundef @.str.62, ptr noundef %22) #8, !dbg !1694
  br label %29, !dbg !1694

24:                                               ; preds = %14
  %25 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1695
  %26 = load ptr, ptr %3, align 8, !dbg !1696
  %27 = load ptr, ptr %4, align 8, !dbg !1697
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.63, ptr noundef %26, ptr noundef %27) #8, !dbg !1698
  br label %29

29:                                               ; preds = %24, %20
  %30 = load ptr, ptr %7, align 8, !dbg !1699
  %31 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1700
  %32 = call i32 @mysql_query(ptr noundef %30, ptr noundef %31), !dbg !1701
  store i32 0, ptr %5, align 4, !dbg !1702
  br label %33, !dbg !1703

33:                                               ; preds = %29, %2
  %34 = load i32, ptr %5, align 4, !dbg !1704
  ret i32 %34, !dbg !1705
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1706 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1707, metadata !DIExpression()), !dbg !1708
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1711, metadata !DIExpression()), !dbg !1712
  store i32 -1, ptr %5, align 4, !dbg !1712
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1714, metadata !DIExpression()), !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1716, metadata !DIExpression()), !dbg !1717
  %9 = call ptr @get_mydb_connection(), !dbg !1718
  store ptr %9, ptr %7, align 8, !dbg !1717
  %10 = load ptr, ptr %7, align 8, !dbg !1719
  %11 = icmp ne ptr %10, null, !dbg !1719
  br i1 %11, label %12, label %27, !dbg !1721

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1722
  %14 = load ptr, ptr %4, align 8, !dbg !1724
  %15 = load ptr, ptr %3, align 8, !dbg !1725
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.64, ptr noundef %14, ptr noundef %15) #8, !dbg !1726
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1727, metadata !DIExpression()), !dbg !1728
  %17 = load ptr, ptr %7, align 8, !dbg !1729
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1730
  %19 = call i32 @mysql_query(ptr noundef %17, ptr noundef %18), !dbg !1731
  store i32 %19, ptr %8, align 4, !dbg !1728
  %20 = load i32, ptr %8, align 4, !dbg !1732
  %21 = icmp ne i32 %20, 0, !dbg !1732
  br i1 %21, label %22, label %25, !dbg !1734

22:                                               ; preds = %12
  %23 = load ptr, ptr %7, align 8, !dbg !1735
  %24 = call ptr @mysql_error(ptr noundef %23), !dbg !1737
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.65, ptr noundef %24), !dbg !1738
  br label %26, !dbg !1739

25:                                               ; preds = %12
  store i32 0, ptr %5, align 4, !dbg !1740
  br label %26

26:                                               ; preds = %25, %22
  br label %27, !dbg !1742

27:                                               ; preds = %26, %2
  %28 = load i32, ptr %5, align 4, !dbg !1743
  ret i32 %28, !dbg !1744
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !1745 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1746, metadata !DIExpression()), !dbg !1747
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1748, metadata !DIExpression()), !dbg !1749
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1750, metadata !DIExpression()), !dbg !1751
  store i32 -1, ptr %5, align 4, !dbg !1751
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1752, metadata !DIExpression()), !dbg !1753
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1754, metadata !DIExpression()), !dbg !1755
  %9 = call ptr @get_mydb_connection(), !dbg !1756
  store ptr %9, ptr %7, align 8, !dbg !1755
  %10 = load ptr, ptr %7, align 8, !dbg !1757
  %11 = icmp ne ptr %10, null, !dbg !1757
  br i1 %11, label %12, label %27, !dbg !1759

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1760
  %14 = load ptr, ptr %3, align 8, !dbg !1762
  %15 = load ptr, ptr %4, align 8, !dbg !1763
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.66, ptr noundef %14, ptr noundef %15) #8, !dbg !1764
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1765, metadata !DIExpression()), !dbg !1766
  %17 = load ptr, ptr %7, align 8, !dbg !1767
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1768
  %19 = call i32 @mysql_query(ptr noundef %17, ptr noundef %18), !dbg !1769
  store i32 %19, ptr %8, align 4, !dbg !1766
  %20 = load i32, ptr %8, align 4, !dbg !1770
  %21 = icmp ne i32 %20, 0, !dbg !1770
  br i1 %21, label %22, label %25, !dbg !1772

22:                                               ; preds = %12
  %23 = load ptr, ptr %7, align 8, !dbg !1773
  %24 = call ptr @mysql_error(ptr noundef %23), !dbg !1775
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.67, ptr noundef %24), !dbg !1776
  br label %26, !dbg !1777

25:                                               ; preds = %12
  store i32 0, ptr %5, align 4, !dbg !1778
  br label %26

26:                                               ; preds = %25, %22
  br label %27, !dbg !1780

27:                                               ; preds = %26, %2
  %28 = load i32, ptr %5, align 4, !dbg !1781
  ret i32 %28, !dbg !1782
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_del_origin(ptr noundef %0) #0 !dbg !1783 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1784, metadata !DIExpression()), !dbg !1785
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1786, metadata !DIExpression()), !dbg !1787
  store i32 -1, ptr %3, align 4, !dbg !1787
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1788, metadata !DIExpression()), !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1790, metadata !DIExpression()), !dbg !1791
  %7 = call ptr @get_mydb_connection(), !dbg !1792
  store ptr %7, ptr %5, align 8, !dbg !1791
  %8 = load ptr, ptr %5, align 8, !dbg !1793
  %9 = icmp ne ptr %8, null, !dbg !1793
  br i1 %9, label %10, label %24, !dbg !1795

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1796
  %12 = load ptr, ptr %2, align 8, !dbg !1798
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.68, ptr noundef %12) #8, !dbg !1799
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1800, metadata !DIExpression()), !dbg !1801
  %14 = load ptr, ptr %5, align 8, !dbg !1802
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1803
  %16 = call i32 @mysql_query(ptr noundef %14, ptr noundef %15), !dbg !1804
  store i32 %16, ptr %6, align 4, !dbg !1801
  %17 = load i32, ptr %6, align 4, !dbg !1805
  %18 = icmp ne i32 %17, 0, !dbg !1805
  br i1 %18, label %19, label %22, !dbg !1807

19:                                               ; preds = %10
  %20 = load ptr, ptr %5, align 8, !dbg !1808
  %21 = call ptr @mysql_error(ptr noundef %20), !dbg !1810
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.69, ptr noundef %21), !dbg !1811
  br label %23, !dbg !1812

22:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !1813
  br label %23

23:                                               ; preds = %22, %19
  br label %24, !dbg !1815

24:                                               ; preds = %23, %1
  %25 = load i32, ptr %3, align 4, !dbg !1816
  ret i32 %25, !dbg !1817
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_origins(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1818 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca [1025 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1819, metadata !DIExpression()), !dbg !1820
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1821, metadata !DIExpression()), !dbg !1822
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1823, metadata !DIExpression()), !dbg !1824
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1825, metadata !DIExpression()), !dbg !1826
  store i32 -1, ptr %7, align 4, !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1827, metadata !DIExpression()), !dbg !1828
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1828
  %16 = load ptr, ptr %4, align 8, !dbg !1829
  %17 = icmp ne ptr %16, null, !dbg !1829
  br i1 %17, label %20, label %18, !dbg !1831

18:                                               ; preds = %3
  %19 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1832
  store ptr %19, ptr %4, align 8, !dbg !1833
  br label %20, !dbg !1834

20:                                               ; preds = %18, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1836, metadata !DIExpression()), !dbg !1837
  %21 = call ptr @get_mydb_connection(), !dbg !1838
  store ptr %21, ptr %9, align 8, !dbg !1837
  %22 = load ptr, ptr %9, align 8, !dbg !1839
  %23 = icmp ne ptr %22, null, !dbg !1839
  br i1 %23, label %24, label %126, !dbg !1841

24:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1842, metadata !DIExpression()), !dbg !1844
  %25 = load ptr, ptr %4, align 8, !dbg !1845
  %26 = icmp ne ptr %25, null, !dbg !1845
  br i1 %26, label %27, label %37, !dbg !1847

27:                                               ; preds = %24
  %28 = load ptr, ptr %4, align 8, !dbg !1848
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !1848
  %30 = load i8, ptr %29, align 1, !dbg !1848
  %31 = zext i8 %30 to i32, !dbg !1848
  %32 = icmp ne i32 %31, 0, !dbg !1848
  br i1 %32, label %33, label %37, !dbg !1849

33:                                               ; preds = %27
  %34 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1850
  %35 = load ptr, ptr %4, align 8, !dbg !1852
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %34, i64 noundef 1025, ptr noundef @.str.70, ptr noundef %35) #8, !dbg !1853
  br label %40, !dbg !1854

37:                                               ; preds = %27, %24
  %38 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1855
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %38, i64 noundef 1025, ptr noundef @.str.71) #8, !dbg !1857
  br label %40

40:                                               ; preds = %37, %33
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1858, metadata !DIExpression()), !dbg !1859
  %41 = load ptr, ptr %9, align 8, !dbg !1860
  %42 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1861
  %43 = call i32 @mysql_query(ptr noundef %41, ptr noundef %42), !dbg !1862
  store i32 %43, ptr %11, align 4, !dbg !1859
  %44 = load i32, ptr %11, align 4, !dbg !1863
  %45 = icmp ne i32 %44, 0, !dbg !1863
  br i1 %45, label %46, label %49, !dbg !1865

46:                                               ; preds = %40
  %47 = load ptr, ptr %9, align 8, !dbg !1866
  %48 = call ptr @mysql_error(ptr noundef %47), !dbg !1868
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %48), !dbg !1869
  br label %125, !dbg !1870

49:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1871, metadata !DIExpression()), !dbg !1873
  %50 = load ptr, ptr %9, align 8, !dbg !1874
  %51 = call ptr @mysql_store_result(ptr noundef %50), !dbg !1875
  store ptr %51, ptr %12, align 8, !dbg !1873
  %52 = load ptr, ptr %12, align 8, !dbg !1876
  %53 = icmp ne ptr %52, null, !dbg !1876
  br i1 %53, label %57, label %54, !dbg !1878

54:                                               ; preds = %49
  %55 = load ptr, ptr %9, align 8, !dbg !1879
  %56 = call ptr @mysql_error(ptr noundef %55), !dbg !1881
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %56), !dbg !1882
  br label %119, !dbg !1883

57:                                               ; preds = %49
  %58 = load ptr, ptr %9, align 8, !dbg !1884
  %59 = call i32 @mysql_field_count(ptr noundef %58), !dbg !1886
  %60 = icmp ne i32 %59, 2, !dbg !1887
  br i1 %60, label %61, label %63, !dbg !1888

61:                                               ; preds = %57
  %62 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1889
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %62), !dbg !1891
  br label %118, !dbg !1892

63:                                               ; preds = %57
  br label %64, !dbg !1893

64:                                               ; preds = %116, %63
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1895, metadata !DIExpression()), !dbg !1899
  %65 = load ptr, ptr %12, align 8, !dbg !1900
  %66 = call ptr @mysql_fetch_row(ptr noundef %65), !dbg !1901
  store ptr %66, ptr %13, align 8, !dbg !1899
  %67 = load ptr, ptr %13, align 8, !dbg !1902
  %68 = icmp ne ptr %67, null, !dbg !1902
  br i1 %68, label %70, label %69, !dbg !1904

69:                                               ; preds = %64
  br label %117, !dbg !1905

70:                                               ; preds = %64
  %71 = load ptr, ptr %13, align 8, !dbg !1907
  %72 = getelementptr inbounds ptr, ptr %71, i64 0, !dbg !1907
  %73 = load ptr, ptr %72, align 8, !dbg !1907
  %74 = icmp ne ptr %73, null, !dbg !1907
  br i1 %74, label %75, label %115, !dbg !1910

75:                                               ; preds = %70
  %76 = load ptr, ptr %13, align 8, !dbg !1911
  %77 = getelementptr inbounds ptr, ptr %76, i64 1, !dbg !1911
  %78 = load ptr, ptr %77, align 8, !dbg !1911
  %79 = icmp ne ptr %78, null, !dbg !1911
  br i1 %79, label %80, label %115, !dbg !1912

80:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1913, metadata !DIExpression()), !dbg !1915
  %81 = load ptr, ptr %13, align 8, !dbg !1916
  %82 = getelementptr inbounds ptr, ptr %81, i64 0, !dbg !1916
  %83 = load ptr, ptr %82, align 8, !dbg !1916
  store ptr %83, ptr %14, align 8, !dbg !1915
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1917, metadata !DIExpression()), !dbg !1918
  %84 = load ptr, ptr %13, align 8, !dbg !1919
  %85 = getelementptr inbounds ptr, ptr %84, i64 1, !dbg !1919
  %86 = load ptr, ptr %85, align 8, !dbg !1919
  store ptr %86, ptr %15, align 8, !dbg !1918
  %87 = load ptr, ptr %5, align 8, !dbg !1920
  %88 = icmp ne ptr %87, null, !dbg !1920
  br i1 %88, label %89, label %110, !dbg !1922

89:                                               ; preds = %80
  %90 = load ptr, ptr %5, align 8, !dbg !1923
  %91 = load ptr, ptr %14, align 8, !dbg !1925
  call void @add_to_secrets_list(ptr noundef %90, ptr noundef %91), !dbg !1926
  %92 = load ptr, ptr %6, align 8, !dbg !1927
  %93 = icmp ne ptr %92, null, !dbg !1927
  br i1 %93, label %94, label %109, !dbg !1929

94:                                               ; preds = %89
  %95 = load ptr, ptr %15, align 8, !dbg !1930
  %96 = icmp ne ptr %95, null, !dbg !1930
  br i1 %96, label %97, label %105, !dbg !1933

97:                                               ; preds = %94
  %98 = load ptr, ptr %15, align 8, !dbg !1934
  %99 = load i8, ptr %98, align 1, !dbg !1935
  %100 = sext i8 %99 to i32, !dbg !1935
  %101 = icmp ne i32 %100, 0, !dbg !1935
  br i1 %101, label %102, label %105, !dbg !1936

102:                                              ; preds = %97
  %103 = load ptr, ptr %6, align 8, !dbg !1937
  %104 = load ptr, ptr %15, align 8, !dbg !1939
  call void @add_to_secrets_list(ptr noundef %103, ptr noundef %104), !dbg !1940
  br label %108, !dbg !1941

105:                                              ; preds = %97, %94
  %106 = load ptr, ptr %6, align 8, !dbg !1942
  %107 = load ptr, ptr %4, align 8, !dbg !1944
  call void @add_to_secrets_list(ptr noundef %106, ptr noundef %107), !dbg !1945
  br label %108

108:                                              ; preds = %105, %102
  br label %109, !dbg !1946

109:                                              ; preds = %108, %89
  br label %114, !dbg !1947

110:                                              ; preds = %80
  %111 = load ptr, ptr %14, align 8, !dbg !1948
  %112 = load ptr, ptr %15, align 8, !dbg !1950
  %113 = call i32 (ptr, ...) @printf(ptr noundef @.str.72, ptr noundef %111, ptr noundef %112), !dbg !1951
  br label %114

114:                                              ; preds = %110, %109
  br label %115, !dbg !1952

115:                                              ; preds = %114, %75, %70
  br label %116

116:                                              ; preds = %115
  br label %64, !dbg !1953, !llvm.loop !1954

117:                                              ; preds = %69
  store i32 0, ptr %7, align 4, !dbg !1957
  br label %118

118:                                              ; preds = %117, %61
  br label %119

119:                                              ; preds = %118, %54
  %120 = load ptr, ptr %12, align 8, !dbg !1958
  %121 = icmp ne ptr %120, null, !dbg !1958
  br i1 %121, label %122, label %124, !dbg !1960

122:                                              ; preds = %119
  %123 = load ptr, ptr %12, align 8, !dbg !1961
  call void @mysql_free_result(ptr noundef %123), !dbg !1962
  br label %124, !dbg !1962

124:                                              ; preds = %122, %119
  br label %125

125:                                              ; preds = %124, %46
  br label %126, !dbg !1963

126:                                              ; preds = %125, %20
  %127 = load i32, ptr %7, align 4, !dbg !1964
  ret i32 %127, !dbg !1965
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1966 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1967, metadata !DIExpression()), !dbg !1968
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1969, metadata !DIExpression()), !dbg !1970
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1971, metadata !DIExpression()), !dbg !1972
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1973, metadata !DIExpression()), !dbg !1974
  store i32 -1, ptr %7, align 4, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1975, metadata !DIExpression()), !dbg !1976
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1977, metadata !DIExpression()), !dbg !1978
  %11 = call ptr @get_mydb_connection(), !dbg !1979
  store ptr %11, ptr %9, align 8, !dbg !1978
  %12 = load ptr, ptr %9, align 8, !dbg !1980
  %13 = icmp ne ptr %12, null, !dbg !1980
  br i1 %13, label %14, label %41, !dbg !1982

14:                                               ; preds = %3
  %15 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1983
  %16 = load ptr, ptr %4, align 8, !dbg !1986
  %17 = load ptr, ptr %6, align 8, !dbg !1987
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.73, ptr noundef %16, ptr noundef %17) #8, !dbg !1988
  %19 = load ptr, ptr %9, align 8, !dbg !1989
  %20 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1990
  %21 = call i32 @mysql_query(ptr noundef %19, ptr noundef %20), !dbg !1991
  %22 = load i64, ptr %5, align 8, !dbg !1992
  %23 = icmp ugt i64 %22, 0, !dbg !1994
  br i1 %23, label %24, label %40, !dbg !1995

24:                                               ; preds = %14
  %25 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1996
  %26 = load ptr, ptr %4, align 8, !dbg !1998
  %27 = load ptr, ptr %6, align 8, !dbg !1999
  %28 = load i64, ptr %5, align 8, !dbg !2000
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.74, ptr noundef %26, ptr noundef %27, i64 noundef %28) #8, !dbg !2001
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2002, metadata !DIExpression()), !dbg !2003
  %30 = load ptr, ptr %9, align 8, !dbg !2004
  %31 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2005
  %32 = call i32 @mysql_query(ptr noundef %30, ptr noundef %31), !dbg !2006
  store i32 %32, ptr %10, align 4, !dbg !2003
  %33 = load i32, ptr %10, align 4, !dbg !2007
  %34 = icmp ne i32 %33, 0, !dbg !2007
  br i1 %34, label %35, label %38, !dbg !2009

35:                                               ; preds = %24
  %36 = load ptr, ptr %9, align 8, !dbg !2010
  %37 = call ptr @mysql_error(ptr noundef %36), !dbg !2012
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.75, ptr noundef %37), !dbg !2013
  br label %39, !dbg !2014

38:                                               ; preds = %24
  store i32 0, ptr %7, align 4, !dbg !2015
  br label %39

39:                                               ; preds = %38, %35
  br label %40, !dbg !2017

40:                                               ; preds = %39, %14
  br label %41, !dbg !2018

41:                                               ; preds = %40, %3
  %42 = load i32, ptr %7, align 4, !dbg !2019
  ret i32 %42, !dbg !2020
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_realm_options(ptr noundef %0) #0 !dbg !2021 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2022, metadata !DIExpression()), !dbg !2023
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2024, metadata !DIExpression()), !dbg !2025
  store i32 -1, ptr %3, align 4, !dbg !2025
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2026
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2027, metadata !DIExpression()), !dbg !2028
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2029, metadata !DIExpression()), !dbg !2030
  %9 = call ptr @get_mydb_connection(), !dbg !2031
  store ptr %9, ptr %5, align 8, !dbg !2030
  %10 = load ptr, ptr %5, align 8, !dbg !2032
  %11 = icmp ne ptr %10, null, !dbg !2032
  br i1 %11, label %12, label %95, !dbg !2034

12:                                               ; preds = %1
  %13 = load ptr, ptr %2, align 8, !dbg !2035
  %14 = icmp ne ptr %13, null, !dbg !2035
  br i1 %14, label %15, label %25, !dbg !2038

15:                                               ; preds = %12
  %16 = load ptr, ptr %2, align 8, !dbg !2039
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !2039
  %18 = load i8, ptr %17, align 1, !dbg !2039
  %19 = zext i8 %18 to i32, !dbg !2039
  %20 = icmp ne i32 %19, 0, !dbg !2039
  br i1 %20, label %21, label %25, !dbg !2040

21:                                               ; preds = %15
  %22 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2041
  %23 = load ptr, ptr %2, align 8, !dbg !2043
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %22, i64 noundef 1025, ptr noundef @.str.76, ptr noundef %23) #8, !dbg !2044
  br label %28, !dbg !2045

25:                                               ; preds = %15, %12
  %26 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2046
  %27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.77) #8, !dbg !2048
  br label %28

28:                                               ; preds = %25, %21
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2049, metadata !DIExpression()), !dbg !2050
  %29 = load ptr, ptr %5, align 8, !dbg !2051
  %30 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2052
  %31 = call i32 @mysql_query(ptr noundef %29, ptr noundef %30), !dbg !2053
  store i32 %31, ptr %6, align 4, !dbg !2050
  %32 = load i32, ptr %6, align 4, !dbg !2054
  %33 = icmp ne i32 %32, 0, !dbg !2054
  br i1 %33, label %34, label %37, !dbg !2056

34:                                               ; preds = %28
  %35 = load ptr, ptr %5, align 8, !dbg !2057
  %36 = call ptr @mysql_error(ptr noundef %35), !dbg !2059
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %36), !dbg !2060
  br label %94, !dbg !2061

37:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2062, metadata !DIExpression()), !dbg !2064
  %38 = load ptr, ptr %5, align 8, !dbg !2065
  %39 = call ptr @mysql_store_result(ptr noundef %38), !dbg !2066
  store ptr %39, ptr %7, align 8, !dbg !2064
  %40 = load ptr, ptr %7, align 8, !dbg !2067
  %41 = icmp ne ptr %40, null, !dbg !2067
  br i1 %41, label %45, label %42, !dbg !2069

42:                                               ; preds = %37
  %43 = load ptr, ptr %5, align 8, !dbg !2070
  %44 = call ptr @mysql_error(ptr noundef %43), !dbg !2072
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %44), !dbg !2073
  br label %88, !dbg !2074

45:                                               ; preds = %37
  %46 = load ptr, ptr %5, align 8, !dbg !2075
  %47 = call i32 @mysql_field_count(ptr noundef %46), !dbg !2077
  %48 = icmp ne i32 %47, 3, !dbg !2078
  br i1 %48, label %49, label %51, !dbg !2079

49:                                               ; preds = %45
  %50 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2080
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %50), !dbg !2082
  br label %87, !dbg !2083

51:                                               ; preds = %45
  br label %52, !dbg !2084

52:                                               ; preds = %85, %51
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2086, metadata !DIExpression()), !dbg !2090
  %53 = load ptr, ptr %7, align 8, !dbg !2091
  %54 = call ptr @mysql_fetch_row(ptr noundef %53), !dbg !2092
  store ptr %54, ptr %8, align 8, !dbg !2090
  %55 = load ptr, ptr %8, align 8, !dbg !2093
  %56 = icmp ne ptr %55, null, !dbg !2093
  br i1 %56, label %58, label %57, !dbg !2095

57:                                               ; preds = %52
  br label %86, !dbg !2096

58:                                               ; preds = %52
  %59 = load ptr, ptr %8, align 8, !dbg !2098
  %60 = getelementptr inbounds ptr, ptr %59, i64 0, !dbg !2098
  %61 = load ptr, ptr %60, align 8, !dbg !2098
  %62 = icmp ne ptr %61, null, !dbg !2098
  br i1 %62, label %63, label %84, !dbg !2101

63:                                               ; preds = %58
  %64 = load ptr, ptr %8, align 8, !dbg !2102
  %65 = getelementptr inbounds ptr, ptr %64, i64 1, !dbg !2102
  %66 = load ptr, ptr %65, align 8, !dbg !2102
  %67 = icmp ne ptr %66, null, !dbg !2102
  br i1 %67, label %68, label %84, !dbg !2103

68:                                               ; preds = %63
  %69 = load ptr, ptr %8, align 8, !dbg !2104
  %70 = getelementptr inbounds ptr, ptr %69, i64 2, !dbg !2104
  %71 = load ptr, ptr %70, align 8, !dbg !2104
  %72 = icmp ne ptr %71, null, !dbg !2104
  br i1 %72, label %73, label %84, !dbg !2105

73:                                               ; preds = %68
  %74 = load ptr, ptr %8, align 8, !dbg !2106
  %75 = getelementptr inbounds ptr, ptr %74, i64 1, !dbg !2106
  %76 = load ptr, ptr %75, align 8, !dbg !2106
  %77 = load ptr, ptr %8, align 8, !dbg !2108
  %78 = getelementptr inbounds ptr, ptr %77, i64 0, !dbg !2108
  %79 = load ptr, ptr %78, align 8, !dbg !2108
  %80 = load ptr, ptr %8, align 8, !dbg !2109
  %81 = getelementptr inbounds ptr, ptr %80, i64 2, !dbg !2109
  %82 = load ptr, ptr %81, align 8, !dbg !2109
  %83 = call i32 (ptr, ...) @printf(ptr noundef @.str.78, ptr noundef %76, ptr noundef %79, ptr noundef %82), !dbg !2110
  br label %84, !dbg !2111

84:                                               ; preds = %73, %68, %63, %58
  br label %85

85:                                               ; preds = %84
  br label %52, !dbg !2112, !llvm.loop !2113

86:                                               ; preds = %57
  store i32 0, ptr %3, align 4, !dbg !2116
  br label %87

87:                                               ; preds = %86, %49
  br label %88

88:                                               ; preds = %87, %42
  %89 = load ptr, ptr %7, align 8, !dbg !2117
  %90 = icmp ne ptr %89, null, !dbg !2117
  br i1 %90, label %91, label %93, !dbg !2119

91:                                               ; preds = %88
  %92 = load ptr, ptr %7, align 8, !dbg !2120
  call void @mysql_free_result(ptr noundef %92), !dbg !2121
  br label %93, !dbg !2121

93:                                               ; preds = %91, %88
  br label %94

94:                                               ; preds = %93, %34
  br label %95, !dbg !2122

95:                                               ; preds = %94, %1
  %96 = load i32, ptr %3, align 4, !dbg !2123
  ret i32 %96, !dbg !2124
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysql_auth_ping(ptr noundef %0) #0 !dbg !2125 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1025 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2126, metadata !DIExpression()), !dbg !2127
  br label %8, !dbg !2128

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !2129
  store ptr %9, ptr %2, align 8, !dbg !2129
  br label %10, !dbg !2129

10:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2131, metadata !DIExpression()), !dbg !2132
  %11 = call ptr @get_mydb_connection(), !dbg !2133
  store ptr %11, ptr %3, align 8, !dbg !2132
  %12 = load ptr, ptr %3, align 8, !dbg !2134
  %13 = icmp ne ptr %12, null, !dbg !2134
  br i1 %13, label %14, label %48, !dbg !2136

14:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2137, metadata !DIExpression()), !dbg !2139
  br label %15, !dbg !2140

15:                                               ; preds = %14
  %16 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2141
  %17 = icmp ne ptr %16, @.str.79, !dbg !2141
  br i1 %17, label %18, label %26, !dbg !2144

18:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2145, metadata !DIExpression()), !dbg !2149
  store i64 1025, ptr %5, align 8, !dbg !2149
  %19 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2149
  %20 = load i64, ptr %5, align 8, !dbg !2149
  %21 = call ptr @strncpy(ptr noundef %19, ptr noundef @.str.79, i64 noundef %20) #8, !dbg !2149
  %22 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2149
  %23 = load i64, ptr %5, align 8, !dbg !2149
  %24 = sub i64 %23, 1, !dbg !2149
  %25 = getelementptr inbounds i8, ptr %22, i64 %24, !dbg !2149
  store i8 0, ptr %25, align 1, !dbg !2149
  br label %26, !dbg !2150

26:                                               ; preds = %18, %15
  br label %27, !dbg !2144

27:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2151, metadata !DIExpression()), !dbg !2152
  %28 = load ptr, ptr %3, align 8, !dbg !2153
  %29 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2154
  %30 = call i32 @mysql_query(ptr noundef %28, ptr noundef %29), !dbg !2155
  store i32 %30, ptr %6, align 4, !dbg !2152
  %31 = load i32, ptr %6, align 4, !dbg !2156
  %32 = icmp ne i32 %31, 0, !dbg !2156
  br i1 %32, label %33, label %36, !dbg !2158

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8, !dbg !2159
  %35 = call ptr @mysql_error(ptr noundef %34), !dbg !2161
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %35), !dbg !2162
  br label %47, !dbg !2163

36:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2164, metadata !DIExpression()), !dbg !2166
  %37 = load ptr, ptr %3, align 8, !dbg !2167
  %38 = call ptr @mysql_store_result(ptr noundef %37), !dbg !2168
  store ptr %38, ptr %7, align 8, !dbg !2166
  %39 = load ptr, ptr %7, align 8, !dbg !2169
  %40 = icmp ne ptr %39, null, !dbg !2169
  br i1 %40, label %44, label %41, !dbg !2171

41:                                               ; preds = %36
  %42 = load ptr, ptr %3, align 8, !dbg !2172
  %43 = call ptr @mysql_error(ptr noundef %42), !dbg !2174
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %43), !dbg !2175
  br label %46, !dbg !2176

44:                                               ; preds = %36
  %45 = load ptr, ptr %7, align 8, !dbg !2177
  call void @mysql_free_result(ptr noundef %45), !dbg !2179
  br label %46

46:                                               ; preds = %44, %41
  br label %47

47:                                               ; preds = %46, %33
  br label %48, !dbg !2180

48:                                               ; preds = %47, %10
  ret void, !dbg !2181
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_get_ip_list(ptr noundef %0, ptr noundef %1) #0 !dbg !644 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca [1025 x i8], align 16
  %14 = alloca [1025 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2182, metadata !DIExpression()), !dbg !2183
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2184, metadata !DIExpression()), !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2186, metadata !DIExpression()), !dbg !2187
  store i32 -1, ptr %5, align 4, !dbg !2187
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2188, metadata !DIExpression()), !dbg !2189
  %15 = call ptr @get_mydb_connection(), !dbg !2190
  store ptr %15, ptr %6, align 8, !dbg !2189
  %16 = load ptr, ptr %6, align 8, !dbg !2191
  %17 = icmp ne ptr %16, null, !dbg !2191
  br i1 %17, label %18, label %103, !dbg !2193

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2194, metadata !DIExpression()), !dbg !2196
  %19 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2197
  %20 = load ptr, ptr %3, align 8, !dbg !2198
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %19, i64 noundef 1025, ptr noundef @.str.80, ptr noundef %20) #8, !dbg !2199
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2200, metadata !DIExpression()), !dbg !2201
  %22 = load ptr, ptr %6, align 8, !dbg !2202
  %23 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2203
  %24 = call i32 @mysql_query(ptr noundef %22, ptr noundef %23), !dbg !2204
  store i32 %24, ptr %8, align 4, !dbg !2201
  %25 = load i32, ptr %8, align 4, !dbg !2205
  %26 = icmp ne i32 %25, 0, !dbg !2205
  br i1 %26, label %27, label %38, !dbg !2207

27:                                               ; preds = %18
  %28 = load i32, ptr @mysql_get_ip_list.wrong_table_reported, align 4, !dbg !2208
  %29 = icmp ne i32 %28, 0, !dbg !2208
  br i1 %29, label %31, label %30, !dbg !2211

30:                                               ; preds = %27
  store i32 1, ptr @mysql_get_ip_list.wrong_table_reported, align 4, !dbg !2212
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.81), !dbg !2214
  br label %31, !dbg !2215

31:                                               ; preds = %30, %27
  %32 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2216
  %33 = load ptr, ptr %3, align 8, !dbg !2217
  %34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef 1025, ptr noundef @.str.82, ptr noundef %33) #8, !dbg !2218
  %35 = load ptr, ptr %6, align 8, !dbg !2219
  %36 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !2220
  %37 = call i32 @mysql_query(ptr noundef %35, ptr noundef %36), !dbg !2221
  store i32 %37, ptr %8, align 4, !dbg !2222
  br label %38, !dbg !2223

38:                                               ; preds = %31, %18
  %39 = load i32, ptr %8, align 4, !dbg !2224
  %40 = icmp eq i32 %39, 0, !dbg !2226
  br i1 %40, label %41, label %102, !dbg !2227

41:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2228, metadata !DIExpression()), !dbg !2230
  %42 = load ptr, ptr %6, align 8, !dbg !2231
  %43 = call ptr @mysql_store_result(ptr noundef %42), !dbg !2232
  store ptr %43, ptr %9, align 8, !dbg !2230
  %44 = load ptr, ptr %9, align 8, !dbg !2233
  %45 = icmp ne ptr %44, null, !dbg !2233
  br i1 %45, label %46, label %96, !dbg !2235

46:                                               ; preds = %41
  %47 = load ptr, ptr %6, align 8, !dbg !2236
  %48 = call i32 @mysql_field_count(ptr noundef %47), !dbg !2237
  %49 = icmp eq i32 %48, 2, !dbg !2238
  br i1 %49, label %50, label %96, !dbg !2239

50:                                               ; preds = %46
  br label %51, !dbg !2240

51:                                               ; preds = %94, %50
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2242, metadata !DIExpression()), !dbg !2246
  %52 = load ptr, ptr %9, align 8, !dbg !2247
  %53 = call ptr @mysql_fetch_row(ptr noundef %52), !dbg !2248
  store ptr %53, ptr %10, align 8, !dbg !2246
  %54 = load ptr, ptr %10, align 8, !dbg !2249
  %55 = icmp ne ptr %54, null, !dbg !2249
  br i1 %55, label %57, label %56, !dbg !2251

56:                                               ; preds = %51
  br label %95, !dbg !2252

57:                                               ; preds = %51
  %58 = load ptr, ptr %10, align 8, !dbg !2254
  %59 = getelementptr inbounds ptr, ptr %58, i64 0, !dbg !2254
  %60 = load ptr, ptr %59, align 8, !dbg !2254
  %61 = icmp ne ptr %60, null, !dbg !2254
  br i1 %61, label %62, label %93, !dbg !2257

62:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2258, metadata !DIExpression()), !dbg !2260
  %63 = load ptr, ptr %9, align 8, !dbg !2261
  %64 = call ptr @mysql_fetch_lengths(ptr noundef %63), !dbg !2262
  store ptr %64, ptr %11, align 8, !dbg !2260
  %65 = load ptr, ptr %11, align 8, !dbg !2263
  %66 = icmp ne ptr %65, null, !dbg !2263
  br i1 %66, label %67, label %92, !dbg !2265

67:                                               ; preds = %62
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2266, metadata !DIExpression()), !dbg !2268
  %68 = load ptr, ptr %11, align 8, !dbg !2269
  %69 = getelementptr inbounds i64, ptr %68, i64 0, !dbg !2269
  %70 = load i64, ptr %69, align 8, !dbg !2269
  store i64 %70, ptr %12, align 8, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2270, metadata !DIExpression()), !dbg !2271
  %71 = load ptr, ptr %10, align 8, !dbg !2272
  %72 = getelementptr inbounds ptr, ptr %71, i64 0, !dbg !2272
  %73 = load ptr, ptr %72, align 8, !dbg !2272
  %74 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 0, !dbg !2273
  %75 = load i64, ptr %12, align 8, !dbg !2274
  call void @bcopy(ptr noundef %73, ptr noundef %74, i64 noundef %75) #8, !dbg !2275
  %76 = load i64, ptr %12, align 8, !dbg !2276
  %77 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 %76, !dbg !2277
  store i8 0, ptr %77, align 1, !dbg !2278
  %78 = load ptr, ptr %11, align 8, !dbg !2279
  %79 = getelementptr inbounds i64, ptr %78, i64 1, !dbg !2279
  %80 = load i64, ptr %79, align 8, !dbg !2279
  store i64 %80, ptr %12, align 8, !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2281, metadata !DIExpression()), !dbg !2282
  %81 = load ptr, ptr %10, align 8, !dbg !2283
  %82 = getelementptr inbounds ptr, ptr %81, i64 1, !dbg !2283
  %83 = load ptr, ptr %82, align 8, !dbg !2283
  %84 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2284
  %85 = load i64, ptr %12, align 8, !dbg !2285
  call void @bcopy(ptr noundef %83, ptr noundef %84, i64 noundef %85) #8, !dbg !2286
  %86 = load i64, ptr %12, align 8, !dbg !2287
  %87 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 %86, !dbg !2288
  store i8 0, ptr %87, align 1, !dbg !2289
  %88 = getelementptr inbounds [1025 x i8], ptr %13, i64 0, i64 0, !dbg !2290
  %89 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2291
  %90 = load ptr, ptr %4, align 8, !dbg !2292
  %91 = call i32 @add_ip_list_range(ptr noundef %88, ptr noundef %89, ptr noundef %90), !dbg !2293
  br label %92, !dbg !2294

92:                                               ; preds = %67, %62
  br label %93, !dbg !2295

93:                                               ; preds = %92, %57
  br label %94

94:                                               ; preds = %93
  br label %51, !dbg !2296, !llvm.loop !2297

95:                                               ; preds = %56
  store i32 0, ptr %5, align 4, !dbg !2300
  br label %96, !dbg !2301

96:                                               ; preds = %95, %46, %41
  %97 = load ptr, ptr %9, align 8, !dbg !2302
  %98 = icmp ne ptr %97, null, !dbg !2302
  br i1 %98, label %99, label %101, !dbg !2304

99:                                               ; preds = %96
  %100 = load ptr, ptr %9, align 8, !dbg !2305
  call void @mysql_free_result(ptr noundef %100), !dbg !2306
  br label %101, !dbg !2306

101:                                              ; preds = %99, %96
  br label %102, !dbg !2307

102:                                              ; preds = %101, %38
  br label %103, !dbg !2308

103:                                              ; preds = %102, %2
  %104 = load i32, ptr %5, align 4, !dbg !2309
  ret i32 %104, !dbg !2310
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_permission_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2311 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [1025 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2312, metadata !DIExpression()), !dbg !2313
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2314, metadata !DIExpression()), !dbg !2315
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2316, metadata !DIExpression()), !dbg !2317
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2318, metadata !DIExpression()), !dbg !2319
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2320, metadata !DIExpression()), !dbg !2321
  store i32 -1, ptr %9, align 4, !dbg !2321
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2322, metadata !DIExpression()), !dbg !2323
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 128, i1 false), !dbg !2323
  %14 = load ptr, ptr %6, align 8, !dbg !2324
  %15 = icmp ne ptr %14, null, !dbg !2324
  br i1 %15, label %18, label %16, !dbg !2326

16:                                               ; preds = %4
  %17 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 0, !dbg !2327
  store ptr %17, ptr %6, align 8, !dbg !2328
  br label %18, !dbg !2329

18:                                               ; preds = %16, %4
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2331, metadata !DIExpression()), !dbg !2332
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2333, metadata !DIExpression()), !dbg !2334
  %19 = call ptr @get_mydb_connection(), !dbg !2335
  store ptr %19, ptr %12, align 8, !dbg !2334
  %20 = load ptr, ptr %12, align 8, !dbg !2336
  %21 = icmp ne ptr %20, null, !dbg !2336
  br i1 %21, label %22, label %48, !dbg !2338

22:                                               ; preds = %18
  %23 = load i32, ptr %8, align 4, !dbg !2339
  %24 = icmp ne i32 %23, 0, !dbg !2339
  br i1 %24, label %25, label %31, !dbg !2342

25:                                               ; preds = %22
  %26 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !2343
  %27 = load ptr, ptr %5, align 8, !dbg !2345
  %28 = load ptr, ptr %6, align 8, !dbg !2346
  %29 = load ptr, ptr %7, align 8, !dbg !2347
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.83, ptr noundef %27, ptr noundef %28, ptr noundef %29) #8, !dbg !2348
  br label %37, !dbg !2349

31:                                               ; preds = %22
  %32 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !2350
  %33 = load ptr, ptr %5, align 8, !dbg !2352
  %34 = load ptr, ptr %6, align 8, !dbg !2353
  %35 = load ptr, ptr %7, align 8, !dbg !2354
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef 1025, ptr noundef @.str.84, ptr noundef %33, ptr noundef %34, ptr noundef %35) #8, !dbg !2355
  br label %37

37:                                               ; preds = %31, %25
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2356, metadata !DIExpression()), !dbg !2357
  %38 = load ptr, ptr %12, align 8, !dbg !2358
  %39 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !2359
  %40 = call i32 @mysql_query(ptr noundef %38, ptr noundef %39), !dbg !2360
  store i32 %40, ptr %13, align 4, !dbg !2357
  %41 = load i32, ptr %13, align 4, !dbg !2361
  %42 = icmp ne i32 %41, 0, !dbg !2361
  br i1 %42, label %43, label %46, !dbg !2363

43:                                               ; preds = %37
  %44 = load ptr, ptr %12, align 8, !dbg !2364
  %45 = call ptr @mysql_error(ptr noundef %44), !dbg !2366
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.85, ptr noundef %45), !dbg !2367
  br label %47, !dbg !2368

46:                                               ; preds = %37
  store i32 0, ptr %9, align 4, !dbg !2369
  br label %47

47:                                               ; preds = %46, %43
  br label %48, !dbg !2371

48:                                               ; preds = %47, %18
  %49 = load i32, ptr %9, align 4, !dbg !2372
  ret i32 %49, !dbg !2373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysql_reread_realms(ptr noundef %0) #0 !dbg !2374 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1025 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca [513 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca [513 x i8], align 16
  %23 = alloca i64, align 8
  %24 = alloca [513 x i8], align 16
  %25 = alloca [513 x i8], align 16
  %26 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2375, metadata !DIExpression()), !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2377, metadata !DIExpression()), !dbg !2378
  %27 = call ptr @get_mydb_connection(), !dbg !2379
  store ptr %27, ptr %3, align 8, !dbg !2378
  %28 = load ptr, ptr %3, align 8, !dbg !2380
  %29 = icmp ne ptr %28, null, !dbg !2380
  br i1 %29, label %30, label %263, !dbg !2382

30:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2383, metadata !DIExpression()), !dbg !2385
  %31 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2386
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %31, i64 noundef 1025, ptr noundef @.str.86) #8, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2389, metadata !DIExpression()), !dbg !2390
  %33 = load ptr, ptr %3, align 8, !dbg !2391
  %34 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2392
  %35 = call i32 @mysql_query(ptr noundef %33, ptr noundef %34), !dbg !2393
  store i32 %35, ptr %5, align 4, !dbg !2390
  %36 = load i32, ptr %5, align 4, !dbg !2394
  %37 = icmp eq i32 %36, 0, !dbg !2396
  br i1 %37, label %38, label %103, !dbg !2397

38:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2398, metadata !DIExpression()), !dbg !2400
  %39 = load ptr, ptr %3, align 8, !dbg !2401
  %40 = call ptr @mysql_store_result(ptr noundef %39), !dbg !2402
  store ptr %40, ptr %6, align 8, !dbg !2400
  %41 = load ptr, ptr %6, align 8, !dbg !2403
  %42 = icmp ne ptr %41, null, !dbg !2403
  br i1 %42, label %43, label %97, !dbg !2405

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8, !dbg !2406
  %45 = call i32 @mysql_field_count(ptr noundef %44), !dbg !2407
  %46 = icmp eq i32 %45, 2, !dbg !2408
  br i1 %46, label %47, label %97, !dbg !2409

47:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2410, metadata !DIExpression()), !dbg !2415
  %48 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !2416
  store ptr %48, ptr %7, align 8, !dbg !2415
  br label %49, !dbg !2417

49:                                               ; preds = %94, %47
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2418, metadata !DIExpression()), !dbg !2422
  %50 = load ptr, ptr %6, align 8, !dbg !2423
  %51 = call ptr @mysql_fetch_row(ptr noundef %50), !dbg !2424
  store ptr %51, ptr %8, align 8, !dbg !2422
  %52 = load ptr, ptr %8, align 8, !dbg !2425
  %53 = icmp ne ptr %52, null, !dbg !2425
  br i1 %53, label %55, label %54, !dbg !2427

54:                                               ; preds = %49
  br label %95, !dbg !2428

55:                                               ; preds = %49
  %56 = load ptr, ptr %8, align 8, !dbg !2430
  %57 = getelementptr inbounds ptr, ptr %56, i64 0, !dbg !2430
  %58 = load ptr, ptr %57, align 8, !dbg !2430
  %59 = icmp ne ptr %58, null, !dbg !2430
  br i1 %59, label %60, label %93, !dbg !2433

60:                                               ; preds = %55
  %61 = load ptr, ptr %8, align 8, !dbg !2434
  %62 = getelementptr inbounds ptr, ptr %61, i64 1, !dbg !2434
  %63 = load ptr, ptr %62, align 8, !dbg !2434
  %64 = icmp ne ptr %63, null, !dbg !2434
  br i1 %64, label %65, label %93, !dbg !2435

65:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2436, metadata !DIExpression()), !dbg !2438
  %66 = load ptr, ptr %6, align 8, !dbg !2439
  %67 = call ptr @mysql_fetch_lengths(ptr noundef %66), !dbg !2440
  store ptr %67, ptr %9, align 8, !dbg !2438
  %68 = load ptr, ptr %9, align 8, !dbg !2441
  %69 = icmp ne ptr %68, null, !dbg !2441
  br i1 %69, label %70, label %92, !dbg !2443

70:                                               ; preds = %65
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2444, metadata !DIExpression()), !dbg !2446
  %71 = load ptr, ptr %9, align 8, !dbg !2447
  %72 = getelementptr inbounds i64, ptr %71, i64 0, !dbg !2447
  %73 = load i64, ptr %72, align 8, !dbg !2447
  store i64 %73, ptr %10, align 8, !dbg !2446
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2448, metadata !DIExpression()), !dbg !2449
  %74 = load ptr, ptr %8, align 8, !dbg !2450
  %75 = getelementptr inbounds ptr, ptr %74, i64 0, !dbg !2450
  %76 = load ptr, ptr %75, align 8, !dbg !2450
  %77 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !2451
  %78 = load i64, ptr %10, align 8, !dbg !2452
  call void @bcopy(ptr noundef %76, ptr noundef %77, i64 noundef %78) #8, !dbg !2453
  %79 = load i64, ptr %10, align 8, !dbg !2454
  %80 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 %79, !dbg !2455
  store i8 0, ptr %80, align 1, !dbg !2456
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2457, metadata !DIExpression()), !dbg !2458
  %81 = load ptr, ptr %8, align 8, !dbg !2459
  %82 = getelementptr inbounds ptr, ptr %81, i64 1, !dbg !2459
  %83 = load ptr, ptr %82, align 8, !dbg !2459
  %84 = call noalias ptr @strdup(ptr noundef %83) #8, !dbg !2460
  store ptr %84, ptr %12, align 8, !dbg !2458
  %85 = load ptr, ptr %12, align 8, !dbg !2461
  %86 = call ptr @get_realm(ptr noundef %85), !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2463, metadata !DIExpression()), !dbg !2464
  %87 = load ptr, ptr %12, align 8, !dbg !2465
  store ptr %87, ptr %13, align 8, !dbg !2464
  %88 = load ptr, ptr %7, align 8, !dbg !2466
  %89 = getelementptr inbounds [513 x i8], ptr %11, i64 0, i64 0, !dbg !2467
  %90 = load ptr, ptr %13, align 8, !dbg !2468
  %91 = call i32 @ur_string_map_put(ptr noundef %88, ptr noundef %89, ptr noundef %90), !dbg !2469
  br label %92, !dbg !2470

92:                                               ; preds = %70, %65
  br label %93, !dbg !2471

93:                                               ; preds = %92, %60, %55
  br label %94

94:                                               ; preds = %93
  br label %49, !dbg !2472, !llvm.loop !2473

95:                                               ; preds = %54
  %96 = load ptr, ptr %7, align 8, !dbg !2476
  call void @update_o_to_realm(ptr noundef %96), !dbg !2477
  br label %97, !dbg !2478

97:                                               ; preds = %95, %43, %38
  %98 = load ptr, ptr %6, align 8, !dbg !2479
  %99 = icmp ne ptr %98, null, !dbg !2479
  br i1 %99, label %100, label %102, !dbg !2481

100:                                              ; preds = %97
  %101 = load ptr, ptr %6, align 8, !dbg !2482
  call void @mysql_free_result(ptr noundef %101), !dbg !2483
  br label %102, !dbg !2483

102:                                              ; preds = %100, %97
  br label %103, !dbg !2484

103:                                              ; preds = %102, %30
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2485, metadata !DIExpression()), !dbg !2487
  store i64 0, ptr %14, align 8, !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2488, metadata !DIExpression()), !dbg !2489
  store i64 0, ptr %15, align 8, !dbg !2489
  call void @lock_realms(), !dbg !2490
  %104 = load ptr, ptr %2, align 8, !dbg !2491
  %105 = getelementptr inbounds %struct._secrets_list, ptr %104, i32 0, i32 1, !dbg !2492
  %106 = load i64, ptr %105, align 8, !dbg !2492
  store i64 %106, ptr %15, align 8, !dbg !2493
  call void @unlock_realms(), !dbg !2494
  store i64 0, ptr %14, align 8, !dbg !2495
  br label %107, !dbg !2497

107:                                              ; preds = %135, %103
  %108 = load i64, ptr %14, align 8, !dbg !2498
  %109 = load i64, ptr %15, align 8, !dbg !2500
  %110 = icmp ult i64 %108, %109, !dbg !2501
  br i1 %110, label %111, label %138, !dbg !2502

111:                                              ; preds = %107
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2503, metadata !DIExpression()), !dbg !2505
  %112 = load ptr, ptr %2, align 8, !dbg !2506
  %113 = getelementptr inbounds %struct._secrets_list, ptr %112, i32 0, i32 0, !dbg !2507
  %114 = load ptr, ptr %113, align 8, !dbg !2507
  %115 = load i64, ptr %14, align 8, !dbg !2508
  %116 = getelementptr inbounds ptr, ptr %114, i64 %115, !dbg !2506
  %117 = load ptr, ptr %116, align 8, !dbg !2506
  store ptr %117, ptr %16, align 8, !dbg !2505
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2509, metadata !DIExpression()), !dbg !2535
  %118 = load ptr, ptr %16, align 8, !dbg !2536
  %119 = call ptr @get_realm(ptr noundef %118), !dbg !2537
  store ptr %119, ptr %17, align 8, !dbg !2535
  call void @lock_realms(), !dbg !2538
  %120 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !2539
  %121 = load ptr, ptr %17, align 8, !dbg !2540
  %122 = getelementptr inbounds %struct._realm_params_t, ptr %121, i32 0, i32 1, !dbg !2541
  %123 = getelementptr inbounds %struct._realm_options_t, ptr %122, i32 0, i32 1, !dbg !2542
  %124 = getelementptr inbounds %struct._perf_options_t, ptr %123, i32 0, i32 0, !dbg !2543
  store volatile i64 %120, ptr %124, align 8, !dbg !2544
  call void @unlock_realms(), !dbg !2545
  call void @lock_realms(), !dbg !2546
  %125 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !2547
  %126 = load ptr, ptr %17, align 8, !dbg !2548
  %127 = getelementptr inbounds %struct._realm_params_t, ptr %126, i32 0, i32 1, !dbg !2549
  %128 = getelementptr inbounds %struct._realm_options_t, ptr %127, i32 0, i32 1, !dbg !2550
  %129 = getelementptr inbounds %struct._perf_options_t, ptr %128, i32 0, i32 1, !dbg !2551
  store i32 %125, ptr %129, align 8, !dbg !2552
  call void @unlock_realms(), !dbg !2553
  call void @lock_realms(), !dbg !2554
  %130 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !2555
  %131 = load ptr, ptr %17, align 8, !dbg !2556
  %132 = getelementptr inbounds %struct._realm_params_t, ptr %131, i32 0, i32 1, !dbg !2557
  %133 = getelementptr inbounds %struct._realm_options_t, ptr %132, i32 0, i32 1, !dbg !2558
  %134 = getelementptr inbounds %struct._perf_options_t, ptr %133, i32 0, i32 2, !dbg !2559
  store i32 %130, ptr %134, align 4, !dbg !2560
  call void @unlock_realms(), !dbg !2561
  br label %135, !dbg !2562

135:                                              ; preds = %111
  %136 = load i64, ptr %14, align 8, !dbg !2563
  %137 = add i64 %136, 1, !dbg !2563
  store i64 %137, ptr %14, align 8, !dbg !2563
  br label %107, !dbg !2564, !llvm.loop !2565

138:                                              ; preds = %107
  %139 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2568
  %140 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %139, i64 noundef 1025, ptr noundef @.str.87) #8, !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2570, metadata !DIExpression()), !dbg !2571
  %141 = load ptr, ptr %3, align 8, !dbg !2572
  %142 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2573
  %143 = call i32 @mysql_query(ptr noundef %141, ptr noundef %142), !dbg !2574
  store i32 %143, ptr %18, align 4, !dbg !2571
  %144 = load i32, ptr %18, align 4, !dbg !2575
  %145 = icmp eq i32 %144, 0, !dbg !2577
  br i1 %145, label %146, label %262, !dbg !2578

146:                                              ; preds = %138
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2579, metadata !DIExpression()), !dbg !2581
  %147 = load ptr, ptr %3, align 8, !dbg !2582
  %148 = call ptr @mysql_store_result(ptr noundef %147), !dbg !2583
  store ptr %148, ptr %19, align 8, !dbg !2581
  %149 = load ptr, ptr %19, align 8, !dbg !2584
  %150 = icmp ne ptr %149, null, !dbg !2584
  br i1 %150, label %151, label %256, !dbg !2586

151:                                              ; preds = %146
  %152 = load ptr, ptr %3, align 8, !dbg !2587
  %153 = call i32 @mysql_field_count(ptr noundef %152), !dbg !2588
  %154 = icmp eq i32 %153, 3, !dbg !2589
  br i1 %154, label %155, label %256, !dbg !2590

155:                                              ; preds = %151
  br label %156, !dbg !2591

156:                                              ; preds = %254, %155
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2593, metadata !DIExpression()), !dbg !2597
  %157 = load ptr, ptr %19, align 8, !dbg !2598
  %158 = call ptr @mysql_fetch_row(ptr noundef %157), !dbg !2599
  store ptr %158, ptr %20, align 8, !dbg !2597
  %159 = load ptr, ptr %20, align 8, !dbg !2600
  %160 = icmp ne ptr %159, null, !dbg !2600
  br i1 %160, label %162, label %161, !dbg !2602

161:                                              ; preds = %156
  br label %255, !dbg !2603

162:                                              ; preds = %156
  %163 = load ptr, ptr %20, align 8, !dbg !2605
  %164 = getelementptr inbounds ptr, ptr %163, i64 0, !dbg !2605
  %165 = load ptr, ptr %164, align 8, !dbg !2605
  %166 = icmp ne ptr %165, null, !dbg !2605
  br i1 %166, label %167, label %253, !dbg !2608

167:                                              ; preds = %162
  %168 = load ptr, ptr %20, align 8, !dbg !2609
  %169 = getelementptr inbounds ptr, ptr %168, i64 1, !dbg !2609
  %170 = load ptr, ptr %169, align 8, !dbg !2609
  %171 = icmp ne ptr %170, null, !dbg !2609
  br i1 %171, label %172, label %253, !dbg !2610

172:                                              ; preds = %167
  %173 = load ptr, ptr %20, align 8, !dbg !2611
  %174 = getelementptr inbounds ptr, ptr %173, i64 2, !dbg !2611
  %175 = load ptr, ptr %174, align 8, !dbg !2611
  %176 = icmp ne ptr %175, null, !dbg !2611
  br i1 %176, label %177, label %253, !dbg !2612

177:                                              ; preds = %172
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2613, metadata !DIExpression()), !dbg !2615
  %178 = load ptr, ptr %19, align 8, !dbg !2616
  %179 = call ptr @mysql_fetch_lengths(ptr noundef %178), !dbg !2617
  store ptr %179, ptr %21, align 8, !dbg !2615
  %180 = load ptr, ptr %21, align 8, !dbg !2618
  %181 = icmp ne ptr %180, null, !dbg !2618
  br i1 %181, label %182, label %252, !dbg !2620

182:                                              ; preds = %177
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2621, metadata !DIExpression()), !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2624, metadata !DIExpression()), !dbg !2625
  %183 = load ptr, ptr %21, align 8, !dbg !2626
  %184 = getelementptr inbounds i64, ptr %183, i64 0, !dbg !2626
  %185 = load i64, ptr %184, align 8, !dbg !2626
  store i64 %185, ptr %23, align 8, !dbg !2625
  %186 = load ptr, ptr %20, align 8, !dbg !2627
  %187 = getelementptr inbounds ptr, ptr %186, i64 0, !dbg !2627
  %188 = load ptr, ptr %187, align 8, !dbg !2627
  %189 = getelementptr inbounds [513 x i8], ptr %22, i64 0, i64 0, !dbg !2628
  %190 = load i64, ptr %23, align 8, !dbg !2629
  call void @bcopy(ptr noundef %188, ptr noundef %189, i64 noundef %190) #8, !dbg !2630
  %191 = load i64, ptr %23, align 8, !dbg !2631
  %192 = getelementptr inbounds [513 x i8], ptr %22, i64 0, i64 %191, !dbg !2632
  store i8 0, ptr %192, align 1, !dbg !2633
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2634, metadata !DIExpression()), !dbg !2635
  %193 = load ptr, ptr %21, align 8, !dbg !2636
  %194 = getelementptr inbounds i64, ptr %193, i64 1, !dbg !2636
  %195 = load i64, ptr %194, align 8, !dbg !2636
  store i64 %195, ptr %23, align 8, !dbg !2637
  %196 = load ptr, ptr %20, align 8, !dbg !2638
  %197 = getelementptr inbounds ptr, ptr %196, i64 1, !dbg !2638
  %198 = load ptr, ptr %197, align 8, !dbg !2638
  %199 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 0, !dbg !2639
  %200 = load i64, ptr %23, align 8, !dbg !2640
  call void @bcopy(ptr noundef %198, ptr noundef %199, i64 noundef %200) #8, !dbg !2641
  %201 = load i64, ptr %23, align 8, !dbg !2642
  %202 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 %201, !dbg !2643
  store i8 0, ptr %202, align 1, !dbg !2644
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2645, metadata !DIExpression()), !dbg !2646
  %203 = load ptr, ptr %21, align 8, !dbg !2647
  %204 = getelementptr inbounds i64, ptr %203, i64 2, !dbg !2647
  %205 = load i64, ptr %204, align 8, !dbg !2647
  store i64 %205, ptr %23, align 8, !dbg !2648
  %206 = load ptr, ptr %20, align 8, !dbg !2649
  %207 = getelementptr inbounds ptr, ptr %206, i64 2, !dbg !2649
  %208 = load ptr, ptr %207, align 8, !dbg !2649
  %209 = getelementptr inbounds [513 x i8], ptr %25, i64 0, i64 0, !dbg !2650
  %210 = load i64, ptr %23, align 8, !dbg !2651
  call void @bcopy(ptr noundef %208, ptr noundef %209, i64 noundef %210) #8, !dbg !2652
  %211 = load i64, ptr %23, align 8, !dbg !2653
  %212 = getelementptr inbounds [513 x i8], ptr %25, i64 0, i64 %211, !dbg !2654
  store i8 0, ptr %212, align 1, !dbg !2655
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2656, metadata !DIExpression()), !dbg !2657
  %213 = getelementptr inbounds [513 x i8], ptr %22, i64 0, i64 0, !dbg !2658
  %214 = call ptr @get_realm(ptr noundef %213), !dbg !2659
  store ptr %214, ptr %26, align 8, !dbg !2657
  %215 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 0, !dbg !2660
  %216 = call i32 @strcmp(ptr noundef %215, ptr noundef @.str.88) #7, !dbg !2662
  %217 = icmp ne i32 %216, 0, !dbg !2662
  br i1 %217, label %225, label %218, !dbg !2663

218:                                              ; preds = %182
  %219 = getelementptr inbounds [513 x i8], ptr %25, i64 0, i64 0, !dbg !2664
  %220 = call i64 @strtoul(ptr noundef %219, ptr noundef null, i32 noundef 10) #8, !dbg !2665
  %221 = load ptr, ptr %26, align 8, !dbg !2666
  %222 = getelementptr inbounds %struct._realm_params_t, ptr %221, i32 0, i32 1, !dbg !2667
  %223 = getelementptr inbounds %struct._realm_options_t, ptr %222, i32 0, i32 1, !dbg !2668
  %224 = getelementptr inbounds %struct._perf_options_t, ptr %223, i32 0, i32 0, !dbg !2669
  store volatile i64 %220, ptr %224, align 8, !dbg !2670
  br label %251, !dbg !2666

225:                                              ; preds = %182
  %226 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 0, !dbg !2671
  %227 = call i32 @strcmp(ptr noundef %226, ptr noundef @.str.89) #7, !dbg !2673
  %228 = icmp ne i32 %227, 0, !dbg !2673
  br i1 %228, label %236, label %229, !dbg !2674

229:                                              ; preds = %225
  %230 = getelementptr inbounds [513 x i8], ptr %25, i64 0, i64 0, !dbg !2675
  %231 = call i32 @atoi(ptr noundef %230) #7, !dbg !2676
  %232 = load ptr, ptr %26, align 8, !dbg !2677
  %233 = getelementptr inbounds %struct._realm_params_t, ptr %232, i32 0, i32 1, !dbg !2678
  %234 = getelementptr inbounds %struct._realm_options_t, ptr %233, i32 0, i32 1, !dbg !2679
  %235 = getelementptr inbounds %struct._perf_options_t, ptr %234, i32 0, i32 1, !dbg !2680
  store i32 %231, ptr %235, align 8, !dbg !2681
  br label %250, !dbg !2677

236:                                              ; preds = %225
  %237 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 0, !dbg !2682
  %238 = call i32 @strcmp(ptr noundef %237, ptr noundef @.str.90) #7, !dbg !2684
  %239 = icmp ne i32 %238, 0, !dbg !2684
  br i1 %239, label %247, label %240, !dbg !2685

240:                                              ; preds = %236
  %241 = getelementptr inbounds [513 x i8], ptr %25, i64 0, i64 0, !dbg !2686
  %242 = call i32 @atoi(ptr noundef %241) #7, !dbg !2687
  %243 = load ptr, ptr %26, align 8, !dbg !2688
  %244 = getelementptr inbounds %struct._realm_params_t, ptr %243, i32 0, i32 1, !dbg !2689
  %245 = getelementptr inbounds %struct._realm_options_t, ptr %244, i32 0, i32 1, !dbg !2690
  %246 = getelementptr inbounds %struct._perf_options_t, ptr %245, i32 0, i32 2, !dbg !2691
  store i32 %242, ptr %246, align 4, !dbg !2692
  br label %249, !dbg !2688

247:                                              ; preds = %236
  %248 = getelementptr inbounds [513 x i8], ptr %24, i64 0, i64 0, !dbg !2693
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.91, ptr noundef %248), !dbg !2695
  br label %249

249:                                              ; preds = %247, %240
  br label %250

250:                                              ; preds = %249, %229
  br label %251

251:                                              ; preds = %250, %218
  br label %252, !dbg !2696

252:                                              ; preds = %251, %177
  br label %253, !dbg !2697

253:                                              ; preds = %252, %172, %167, %162
  br label %254

254:                                              ; preds = %253
  br label %156, !dbg !2698, !llvm.loop !2699

255:                                              ; preds = %161
  br label %256, !dbg !2702

256:                                              ; preds = %255, %151, %146
  %257 = load ptr, ptr %19, align 8, !dbg !2703
  %258 = icmp ne ptr %257, null, !dbg !2703
  br i1 %258, label %259, label %261, !dbg !2705

259:                                              ; preds = %256
  %260 = load ptr, ptr %19, align 8, !dbg !2706
  call void @mysql_free_result(ptr noundef %260), !dbg !2707
  br label %261, !dbg !2707

261:                                              ; preds = %259, %256
  br label %262, !dbg !2708

262:                                              ; preds = %261, %138
  br label %263, !dbg !2709

263:                                              ; preds = %262, %1
  ret void, !dbg !2710
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_oauth_key(ptr noundef %0) #0 !dbg !2711 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2712, metadata !DIExpression()), !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2714, metadata !DIExpression()), !dbg !2715
  store i32 -1, ptr %3, align 4, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2716, metadata !DIExpression()), !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2718, metadata !DIExpression()), !dbg !2719
  %7 = call ptr @get_mydb_connection(), !dbg !2720
  store ptr %7, ptr %5, align 8, !dbg !2719
  %8 = load ptr, ptr %5, align 8, !dbg !2721
  %9 = icmp ne ptr %8, null, !dbg !2721
  br i1 %9, label %10, label %71, !dbg !2723

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2724
  %12 = load ptr, ptr %2, align 8, !dbg !2726
  %13 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %12, i32 0, i32 0, !dbg !2727
  %14 = getelementptr inbounds [129 x i8], ptr %13, i64 0, i64 0, !dbg !2726
  %15 = load ptr, ptr %2, align 8, !dbg !2728
  %16 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 1, !dbg !2729
  %17 = getelementptr inbounds [257 x i8], ptr %16, i64 0, i64 0, !dbg !2728
  %18 = load ptr, ptr %2, align 8, !dbg !2730
  %19 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %18, i32 0, i32 2, !dbg !2731
  %20 = load i64, ptr %19, align 8, !dbg !2731
  %21 = load ptr, ptr %2, align 8, !dbg !2732
  %22 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 3, !dbg !2733
  %23 = load i32, ptr %22, align 8, !dbg !2733
  %24 = zext i32 %23 to i64, !dbg !2734
  %25 = load ptr, ptr %2, align 8, !dbg !2735
  %26 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %25, i32 0, i32 4, !dbg !2736
  %27 = getelementptr inbounds [65 x i8], ptr %26, i64 0, i64 0, !dbg !2735
  %28 = load ptr, ptr %2, align 8, !dbg !2737
  %29 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %28, i32 0, i32 5, !dbg !2738
  %30 = getelementptr inbounds [128 x i8], ptr %29, i64 0, i64 0, !dbg !2737
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.92, ptr noundef %14, ptr noundef %17, i64 noundef %20, i64 noundef %24, ptr noundef %27, ptr noundef %30) #8, !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2740, metadata !DIExpression()), !dbg !2741
  %32 = load ptr, ptr %5, align 8, !dbg !2742
  %33 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2743
  %34 = call i32 @mysql_query(ptr noundef %32, ptr noundef %33), !dbg !2744
  store i32 %34, ptr %6, align 4, !dbg !2741
  %35 = load i32, ptr %6, align 4, !dbg !2745
  %36 = icmp ne i32 %35, 0, !dbg !2745
  br i1 %36, label %37, label %69, !dbg !2747

37:                                               ; preds = %10
  %38 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2748
  %39 = load ptr, ptr %2, align 8, !dbg !2750
  %40 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %39, i32 0, i32 1, !dbg !2751
  %41 = getelementptr inbounds [257 x i8], ptr %40, i64 0, i64 0, !dbg !2750
  %42 = load ptr, ptr %2, align 8, !dbg !2752
  %43 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %42, i32 0, i32 2, !dbg !2753
  %44 = load i64, ptr %43, align 8, !dbg !2753
  %45 = load ptr, ptr %2, align 8, !dbg !2754
  %46 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %45, i32 0, i32 3, !dbg !2755
  %47 = load i32, ptr %46, align 8, !dbg !2755
  %48 = zext i32 %47 to i64, !dbg !2756
  %49 = load ptr, ptr %2, align 8, !dbg !2757
  %50 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %49, i32 0, i32 4, !dbg !2758
  %51 = getelementptr inbounds [65 x i8], ptr %50, i64 0, i64 0, !dbg !2757
  %52 = load ptr, ptr %2, align 8, !dbg !2759
  %53 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %52, i32 0, i32 5, !dbg !2760
  %54 = getelementptr inbounds [128 x i8], ptr %53, i64 0, i64 0, !dbg !2759
  %55 = load ptr, ptr %2, align 8, !dbg !2761
  %56 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %55, i32 0, i32 0, !dbg !2762
  %57 = getelementptr inbounds [129 x i8], ptr %56, i64 0, i64 0, !dbg !2761
  %58 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %38, i64 noundef 1025, ptr noundef @.str.93, ptr noundef %41, i64 noundef %44, i64 noundef %48, ptr noundef %51, ptr noundef %54, ptr noundef %57) #8, !dbg !2763
  %59 = load ptr, ptr %5, align 8, !dbg !2764
  %60 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2765
  %61 = call i32 @mysql_query(ptr noundef %59, ptr noundef %60), !dbg !2766
  store i32 %61, ptr %6, align 4, !dbg !2767
  %62 = load i32, ptr %6, align 4, !dbg !2768
  %63 = icmp ne i32 %62, 0, !dbg !2768
  br i1 %63, label %64, label %67, !dbg !2770

64:                                               ; preds = %37
  %65 = load ptr, ptr %5, align 8, !dbg !2771
  %66 = call ptr @mysql_error(ptr noundef %65), !dbg !2773
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.94, ptr noundef %66), !dbg !2774
  br label %68, !dbg !2775

67:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !dbg !2776
  br label %68

68:                                               ; preds = %67, %64
  br label %70, !dbg !2778

69:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !2779
  br label %70

70:                                               ; preds = %69, %68
  br label %71, !dbg !2781

71:                                               ; preds = %70, %1
  %72 = load i32, ptr %3, align 4, !dbg !2782
  ret i32 %72, !dbg !2783
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_get_oauth_key(ptr noundef %0, ptr noundef %1) #0 !dbg !2784 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca [128 x i8], align 16
  %14 = alloca [128 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2785, metadata !DIExpression()), !dbg !2786
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2787, metadata !DIExpression()), !dbg !2788
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2789, metadata !DIExpression()), !dbg !2790
  store i32 -1, ptr %5, align 4, !dbg !2790
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2791, metadata !DIExpression()), !dbg !2792
  %15 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2793
  %16 = load ptr, ptr %3, align 8, !dbg !2794
  %17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.95, ptr noundef %16) #8, !dbg !2795
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2796, metadata !DIExpression()), !dbg !2797
  %18 = call ptr @get_mydb_connection(), !dbg !2798
  store ptr %18, ptr %7, align 8, !dbg !2797
  %19 = load ptr, ptr %7, align 8, !dbg !2799
  %20 = icmp ne ptr %19, null, !dbg !2799
  br i1 %20, label %21, label %167, !dbg !2801

21:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2802, metadata !DIExpression()), !dbg !2804
  %22 = load ptr, ptr %7, align 8, !dbg !2805
  %23 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2806
  %24 = call i32 @mysql_query(ptr noundef %22, ptr noundef %23), !dbg !2807
  store i32 %24, ptr %8, align 4, !dbg !2804
  %25 = load i32, ptr %8, align 4, !dbg !2808
  %26 = icmp ne i32 %25, 0, !dbg !2808
  br i1 %26, label %27, label %30, !dbg !2810

27:                                               ; preds = %21
  %28 = load ptr, ptr %7, align 8, !dbg !2811
  %29 = call ptr @mysql_error(ptr noundef %28), !dbg !2813
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %29), !dbg !2814
  br label %166, !dbg !2815

30:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2816, metadata !DIExpression()), !dbg !2818
  %31 = load ptr, ptr %7, align 8, !dbg !2819
  %32 = call ptr @mysql_store_result(ptr noundef %31), !dbg !2820
  store ptr %32, ptr %9, align 8, !dbg !2818
  %33 = load ptr, ptr %9, align 8, !dbg !2821
  %34 = icmp ne ptr %33, null, !dbg !2821
  br i1 %34, label %38, label %35, !dbg !2823

35:                                               ; preds = %30
  %36 = load ptr, ptr %7, align 8, !dbg !2824
  %37 = call ptr @mysql_error(ptr noundef %36), !dbg !2826
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %37), !dbg !2827
  br label %160, !dbg !2828

38:                                               ; preds = %30
  %39 = load ptr, ptr %7, align 8, !dbg !2829
  %40 = call i32 @mysql_field_count(ptr noundef %39), !dbg !2831
  %41 = icmp ne i32 %40, 5, !dbg !2832
  br i1 %41, label %42, label %44, !dbg !2833

42:                                               ; preds = %38
  %43 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2834
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %43), !dbg !2836
  br label %159, !dbg !2837

44:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2838, metadata !DIExpression()), !dbg !2840
  %45 = load ptr, ptr %9, align 8, !dbg !2841
  %46 = call ptr @mysql_fetch_row(ptr noundef %45), !dbg !2842
  store ptr %46, ptr %10, align 8, !dbg !2840
  %47 = load ptr, ptr %10, align 8, !dbg !2843
  %48 = icmp ne ptr %47, null, !dbg !2843
  br i1 %48, label %49, label %158, !dbg !2845

49:                                               ; preds = %44
  %50 = load ptr, ptr %10, align 8, !dbg !2846
  %51 = getelementptr inbounds ptr, ptr %50, i64 0, !dbg !2846
  %52 = load ptr, ptr %51, align 8, !dbg !2846
  %53 = icmp ne ptr %52, null, !dbg !2846
  br i1 %53, label %54, label %158, !dbg !2847

54:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2848, metadata !DIExpression()), !dbg !2850
  %55 = load ptr, ptr %9, align 8, !dbg !2851
  %56 = call ptr @mysql_fetch_lengths(ptr noundef %55), !dbg !2852
  store ptr %56, ptr %11, align 8, !dbg !2850
  %57 = load ptr, ptr %11, align 8, !dbg !2853
  %58 = icmp ne ptr %57, null, !dbg !2853
  br i1 %58, label %59, label %157, !dbg !2855

59:                                               ; preds = %54
  br label %60, !dbg !2856

60:                                               ; preds = %59
  %61 = load ptr, ptr %4, align 8, !dbg !2858
  %62 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %61, i32 0, i32 0, !dbg !2858
  %63 = getelementptr inbounds [129 x i8], ptr %62, i64 0, i64 0, !dbg !2858
  %64 = load ptr, ptr %3, align 8, !dbg !2858
  %65 = icmp ne ptr %63, %64, !dbg !2858
  br i1 %65, label %66, label %79, !dbg !2861

66:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2862, metadata !DIExpression()), !dbg !2866
  store i64 129, ptr %12, align 8, !dbg !2866
  %67 = load ptr, ptr %4, align 8, !dbg !2866
  %68 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %67, i32 0, i32 0, !dbg !2866
  %69 = getelementptr inbounds [129 x i8], ptr %68, i64 0, i64 0, !dbg !2866
  %70 = load ptr, ptr %3, align 8, !dbg !2866
  %71 = load i64, ptr %12, align 8, !dbg !2866
  %72 = call ptr @strncpy(ptr noundef %69, ptr noundef %70, i64 noundef %71) #8, !dbg !2866
  %73 = load ptr, ptr %4, align 8, !dbg !2866
  %74 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %73, i32 0, i32 0, !dbg !2866
  %75 = getelementptr inbounds [129 x i8], ptr %74, i64 0, i64 0, !dbg !2866
  %76 = load i64, ptr %12, align 8, !dbg !2866
  %77 = sub i64 %76, 1, !dbg !2866
  %78 = getelementptr inbounds i8, ptr %75, i64 %77, !dbg !2866
  store i8 0, ptr %78, align 1, !dbg !2866
  br label %79, !dbg !2867

79:                                               ; preds = %66, %60
  br label %80, !dbg !2861

80:                                               ; preds = %79
  %81 = load ptr, ptr %10, align 8, !dbg !2868
  %82 = getelementptr inbounds ptr, ptr %81, i64 0, !dbg !2868
  %83 = load ptr, ptr %82, align 8, !dbg !2868
  %84 = load ptr, ptr %4, align 8, !dbg !2869
  %85 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %84, i32 0, i32 1, !dbg !2870
  %86 = getelementptr inbounds [257 x i8], ptr %85, i64 0, i64 0, !dbg !2869
  %87 = load ptr, ptr %11, align 8, !dbg !2871
  %88 = getelementptr inbounds i64, ptr %87, i64 0, !dbg !2871
  %89 = load i64, ptr %88, align 8, !dbg !2871
  call void @bcopy(ptr noundef %83, ptr noundef %86, i64 noundef %89) #8, !dbg !2872
  %90 = load ptr, ptr %4, align 8, !dbg !2873
  %91 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %90, i32 0, i32 1, !dbg !2874
  %92 = load ptr, ptr %11, align 8, !dbg !2875
  %93 = getelementptr inbounds i64, ptr %92, i64 0, !dbg !2875
  %94 = load i64, ptr %93, align 8, !dbg !2875
  %95 = getelementptr inbounds [257 x i8], ptr %91, i64 0, i64 %94, !dbg !2873
  store i8 0, ptr %95, align 1, !dbg !2876
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2877, metadata !DIExpression()), !dbg !2878
  %96 = load ptr, ptr %10, align 8, !dbg !2879
  %97 = getelementptr inbounds ptr, ptr %96, i64 1, !dbg !2879
  %98 = load ptr, ptr %97, align 8, !dbg !2879
  %99 = getelementptr inbounds [128 x i8], ptr %13, i64 0, i64 0, !dbg !2880
  %100 = load ptr, ptr %11, align 8, !dbg !2881
  %101 = getelementptr inbounds i64, ptr %100, i64 1, !dbg !2881
  %102 = load i64, ptr %101, align 8, !dbg !2881
  call void @bcopy(ptr noundef %98, ptr noundef %99, i64 noundef %102) #8, !dbg !2882
  %103 = load ptr, ptr %11, align 8, !dbg !2883
  %104 = getelementptr inbounds i64, ptr %103, i64 1, !dbg !2883
  %105 = load i64, ptr %104, align 8, !dbg !2883
  %106 = getelementptr inbounds [128 x i8], ptr %13, i64 0, i64 %105, !dbg !2884
  store i8 0, ptr %106, align 1, !dbg !2885
  %107 = getelementptr inbounds [128 x i8], ptr %13, i64 0, i64 0, !dbg !2886
  %108 = call i64 @strtoull(ptr noundef %107, ptr noundef null, i32 noundef 10) #8, !dbg !2887
  %109 = load ptr, ptr %4, align 8, !dbg !2888
  %110 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %109, i32 0, i32 2, !dbg !2889
  store i64 %108, ptr %110, align 8, !dbg !2890
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2891, metadata !DIExpression()), !dbg !2892
  %111 = load ptr, ptr %10, align 8, !dbg !2893
  %112 = getelementptr inbounds ptr, ptr %111, i64 2, !dbg !2893
  %113 = load ptr, ptr %112, align 8, !dbg !2893
  %114 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 0, !dbg !2894
  %115 = load ptr, ptr %11, align 8, !dbg !2895
  %116 = getelementptr inbounds i64, ptr %115, i64 2, !dbg !2895
  %117 = load i64, ptr %116, align 8, !dbg !2895
  call void @bcopy(ptr noundef %113, ptr noundef %114, i64 noundef %117) #8, !dbg !2896
  %118 = load ptr, ptr %11, align 8, !dbg !2897
  %119 = getelementptr inbounds i64, ptr %118, i64 2, !dbg !2897
  %120 = load i64, ptr %119, align 8, !dbg !2897
  %121 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 %120, !dbg !2898
  store i8 0, ptr %121, align 1, !dbg !2899
  %122 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 0, !dbg !2900
  %123 = call i64 @strtoul(ptr noundef %122, ptr noundef null, i32 noundef 10) #8, !dbg !2901
  %124 = trunc i64 %123 to i32, !dbg !2902
  %125 = load ptr, ptr %4, align 8, !dbg !2903
  %126 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %125, i32 0, i32 3, !dbg !2904
  store i32 %124, ptr %126, align 8, !dbg !2905
  %127 = load ptr, ptr %10, align 8, !dbg !2906
  %128 = getelementptr inbounds ptr, ptr %127, i64 3, !dbg !2906
  %129 = load ptr, ptr %128, align 8, !dbg !2906
  %130 = load ptr, ptr %4, align 8, !dbg !2907
  %131 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %130, i32 0, i32 4, !dbg !2908
  %132 = getelementptr inbounds [65 x i8], ptr %131, i64 0, i64 0, !dbg !2907
  %133 = load ptr, ptr %11, align 8, !dbg !2909
  %134 = getelementptr inbounds i64, ptr %133, i64 3, !dbg !2909
  %135 = load i64, ptr %134, align 8, !dbg !2909
  call void @bcopy(ptr noundef %129, ptr noundef %132, i64 noundef %135) #8, !dbg !2910
  %136 = load ptr, ptr %4, align 8, !dbg !2911
  %137 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %136, i32 0, i32 4, !dbg !2912
  %138 = load ptr, ptr %11, align 8, !dbg !2913
  %139 = getelementptr inbounds i64, ptr %138, i64 3, !dbg !2913
  %140 = load i64, ptr %139, align 8, !dbg !2913
  %141 = getelementptr inbounds [65 x i8], ptr %137, i64 0, i64 %140, !dbg !2911
  store i8 0, ptr %141, align 1, !dbg !2914
  %142 = load ptr, ptr %10, align 8, !dbg !2915
  %143 = getelementptr inbounds ptr, ptr %142, i64 4, !dbg !2915
  %144 = load ptr, ptr %143, align 8, !dbg !2915
  %145 = load ptr, ptr %4, align 8, !dbg !2916
  %146 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %145, i32 0, i32 5, !dbg !2917
  %147 = getelementptr inbounds [128 x i8], ptr %146, i64 0, i64 0, !dbg !2916
  %148 = load ptr, ptr %11, align 8, !dbg !2918
  %149 = getelementptr inbounds i64, ptr %148, i64 4, !dbg !2918
  %150 = load i64, ptr %149, align 8, !dbg !2918
  call void @bcopy(ptr noundef %144, ptr noundef %147, i64 noundef %150) #8, !dbg !2919
  %151 = load ptr, ptr %4, align 8, !dbg !2920
  %152 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %151, i32 0, i32 5, !dbg !2921
  %153 = load ptr, ptr %11, align 8, !dbg !2922
  %154 = getelementptr inbounds i64, ptr %153, i64 4, !dbg !2922
  %155 = load i64, ptr %154, align 8, !dbg !2922
  %156 = getelementptr inbounds [128 x i8], ptr %152, i64 0, i64 %155, !dbg !2920
  store i8 0, ptr %156, align 1, !dbg !2923
  store i32 0, ptr %5, align 4, !dbg !2924
  br label %157, !dbg !2925

157:                                              ; preds = %80, %54
  br label %158, !dbg !2926

158:                                              ; preds = %157, %49, %44
  br label %159

159:                                              ; preds = %158, %42
  br label %160

160:                                              ; preds = %159, %35
  %161 = load ptr, ptr %9, align 8, !dbg !2927
  %162 = icmp ne ptr %161, null, !dbg !2927
  br i1 %162, label %163, label %165, !dbg !2929

163:                                              ; preds = %160
  %164 = load ptr, ptr %9, align 8, !dbg !2930
  call void @mysql_free_result(ptr noundef %164), !dbg !2931
  br label %165, !dbg !2931

165:                                              ; preds = %163, %160
  br label %166

166:                                              ; preds = %165, %27
  br label %167, !dbg !2932

167:                                              ; preds = %166, %2
  %168 = load i32, ptr %5, align 4, !dbg !2933
  ret i32 %168, !dbg !2934
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_del_oauth_key(ptr noundef %0) #0 !dbg !2935 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2936, metadata !DIExpression()), !dbg !2937
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2938, metadata !DIExpression()), !dbg !2939
  store i32 -1, ptr %3, align 4, !dbg !2939
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2940, metadata !DIExpression()), !dbg !2941
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2942, metadata !DIExpression()), !dbg !2943
  %7 = call ptr @get_mydb_connection(), !dbg !2944
  store ptr %7, ptr %5, align 8, !dbg !2943
  %8 = load ptr, ptr %5, align 8, !dbg !2945
  %9 = icmp ne ptr %8, null, !dbg !2945
  br i1 %9, label %10, label %24, !dbg !2947

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2948
  %12 = load ptr, ptr %2, align 8, !dbg !2950
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.96, ptr noundef %12) #8, !dbg !2951
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2952, metadata !DIExpression()), !dbg !2953
  %14 = load ptr, ptr %5, align 8, !dbg !2954
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2955
  %16 = call i32 @mysql_query(ptr noundef %14, ptr noundef %15), !dbg !2956
  store i32 %16, ptr %6, align 4, !dbg !2953
  %17 = load i32, ptr %6, align 4, !dbg !2957
  %18 = icmp ne i32 %17, 0, !dbg !2957
  br i1 %18, label %19, label %22, !dbg !2959

19:                                               ; preds = %10
  %20 = load ptr, ptr %5, align 8, !dbg !2960
  %21 = call ptr @mysql_error(ptr noundef %20), !dbg !2962
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.97, ptr noundef %21), !dbg !2963
  br label %23, !dbg !2964

22:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !2965
  br label %23

23:                                               ; preds = %22, %19
  br label %24, !dbg !2967

24:                                               ; preds = %23, %1
  %25 = load i32, ptr %3, align 4, !dbg !2968
  ret i32 %25, !dbg !2969
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_oauth_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !2970 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca %struct._oauth_key_data_raw, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca [1025 x i8], align 16
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca [128 x i8], align 16
  %21 = alloca [128 x i8], align 16
  %22 = alloca [256 x i8], align 16
  %23 = alloca [256 x i8], align 16
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2971, metadata !DIExpression()), !dbg !2972
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2973, metadata !DIExpression()), !dbg !2974
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2975, metadata !DIExpression()), !dbg !2976
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2977, metadata !DIExpression()), !dbg !2978
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2981, metadata !DIExpression()), !dbg !2982
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2983, metadata !DIExpression()), !dbg !2984
  store ptr %11, ptr %12, align 8, !dbg !2984
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2985, metadata !DIExpression()), !dbg !2986
  store i32 -1, ptr %13, align 4, !dbg !2986
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2987, metadata !DIExpression()), !dbg !2988
  %24 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2989
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 1025, ptr noundef @.str.98) #8, !dbg !2990
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2991, metadata !DIExpression()), !dbg !2992
  %26 = call ptr @get_mydb_connection(), !dbg !2993
  store ptr %26, ptr %15, align 8, !dbg !2992
  %27 = load ptr, ptr %15, align 8, !dbg !2994
  %28 = icmp ne ptr %27, null, !dbg !2994
  br i1 %28, label %29, label %219, !dbg !2996

29:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2997, metadata !DIExpression()), !dbg !2999
  %30 = load ptr, ptr %15, align 8, !dbg !3000
  %31 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !3001
  %32 = call i32 @mysql_query(ptr noundef %30, ptr noundef %31), !dbg !3002
  store i32 %32, ptr %16, align 4, !dbg !2999
  %33 = load i32, ptr %16, align 4, !dbg !3003
  %34 = icmp ne i32 %33, 0, !dbg !3003
  br i1 %34, label %35, label %38, !dbg !3005

35:                                               ; preds = %29
  %36 = load ptr, ptr %15, align 8, !dbg !3006
  %37 = call ptr @mysql_error(ptr noundef %36), !dbg !3008
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %37), !dbg !3009
  br label %218, !dbg !3010

38:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3011, metadata !DIExpression()), !dbg !3013
  %39 = load ptr, ptr %15, align 8, !dbg !3014
  %40 = call ptr @mysql_store_result(ptr noundef %39), !dbg !3015
  store ptr %40, ptr %17, align 8, !dbg !3013
  %41 = load ptr, ptr %17, align 8, !dbg !3016
  %42 = icmp ne ptr %41, null, !dbg !3016
  br i1 %42, label %46, label %43, !dbg !3018

43:                                               ; preds = %38
  %44 = load ptr, ptr %15, align 8, !dbg !3019
  %45 = call ptr @mysql_error(ptr noundef %44), !dbg !3021
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %45), !dbg !3022
  br label %212, !dbg !3023

46:                                               ; preds = %38
  %47 = load ptr, ptr %15, align 8, !dbg !3024
  %48 = call i32 @mysql_field_count(ptr noundef %47), !dbg !3026
  %49 = icmp ne i32 %48, 6, !dbg !3027
  br i1 %49, label %50, label %52, !dbg !3028

50:                                               ; preds = %46
  %51 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !3029
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %51), !dbg !3031
  br label %211, !dbg !3032

52:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3033, metadata !DIExpression()), !dbg !3035
  %53 = load ptr, ptr %17, align 8, !dbg !3036
  %54 = call ptr @mysql_fetch_row(ptr noundef %53), !dbg !3037
  store ptr %54, ptr %18, align 8, !dbg !3035
  br label %55, !dbg !3038

55:                                               ; preds = %207, %52
  %56 = load ptr, ptr %18, align 8, !dbg !3039
  %57 = icmp ne ptr %56, null, !dbg !3038
  br i1 %57, label %58, label %210, !dbg !3038

58:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3040, metadata !DIExpression()), !dbg !3042
  %59 = load ptr, ptr %17, align 8, !dbg !3043
  %60 = call ptr @mysql_fetch_lengths(ptr noundef %59), !dbg !3044
  store ptr %60, ptr %19, align 8, !dbg !3042
  %61 = load ptr, ptr %19, align 8, !dbg !3045
  %62 = icmp ne ptr %61, null, !dbg !3045
  br i1 %62, label %63, label %207, !dbg !3047

63:                                               ; preds = %58
  %64 = load ptr, ptr %18, align 8, !dbg !3048
  %65 = getelementptr inbounds ptr, ptr %64, i64 0, !dbg !3048
  %66 = load ptr, ptr %65, align 8, !dbg !3048
  %67 = load ptr, ptr %12, align 8, !dbg !3050
  %68 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %67, i32 0, i32 1, !dbg !3051
  %69 = getelementptr inbounds [257 x i8], ptr %68, i64 0, i64 0, !dbg !3050
  %70 = load ptr, ptr %19, align 8, !dbg !3052
  %71 = getelementptr inbounds i64, ptr %70, i64 0, !dbg !3052
  %72 = load i64, ptr %71, align 8, !dbg !3052
  call void @bcopy(ptr noundef %66, ptr noundef %69, i64 noundef %72) #8, !dbg !3053
  %73 = load ptr, ptr %12, align 8, !dbg !3054
  %74 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %73, i32 0, i32 1, !dbg !3055
  %75 = load ptr, ptr %19, align 8, !dbg !3056
  %76 = getelementptr inbounds i64, ptr %75, i64 0, !dbg !3056
  %77 = load i64, ptr %76, align 8, !dbg !3056
  %78 = getelementptr inbounds [257 x i8], ptr %74, i64 0, i64 %77, !dbg !3054
  store i8 0, ptr %78, align 1, !dbg !3057
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3058, metadata !DIExpression()), !dbg !3059
  %79 = load ptr, ptr %18, align 8, !dbg !3060
  %80 = getelementptr inbounds ptr, ptr %79, i64 1, !dbg !3060
  %81 = load ptr, ptr %80, align 8, !dbg !3060
  %82 = getelementptr inbounds [128 x i8], ptr %20, i64 0, i64 0, !dbg !3061
  %83 = load ptr, ptr %19, align 8, !dbg !3062
  %84 = getelementptr inbounds i64, ptr %83, i64 1, !dbg !3062
  %85 = load i64, ptr %84, align 8, !dbg !3062
  call void @bcopy(ptr noundef %81, ptr noundef %82, i64 noundef %85) #8, !dbg !3063
  %86 = load ptr, ptr %19, align 8, !dbg !3064
  %87 = getelementptr inbounds i64, ptr %86, i64 1, !dbg !3064
  %88 = load i64, ptr %87, align 8, !dbg !3064
  %89 = getelementptr inbounds [128 x i8], ptr %20, i64 0, i64 %88, !dbg !3065
  store i8 0, ptr %89, align 1, !dbg !3066
  %90 = getelementptr inbounds [128 x i8], ptr %20, i64 0, i64 0, !dbg !3067
  %91 = call i64 @strtoull(ptr noundef %90, ptr noundef null, i32 noundef 10) #8, !dbg !3068
  %92 = load ptr, ptr %12, align 8, !dbg !3069
  %93 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %92, i32 0, i32 2, !dbg !3070
  store i64 %91, ptr %93, align 8, !dbg !3071
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3072, metadata !DIExpression()), !dbg !3073
  %94 = load ptr, ptr %18, align 8, !dbg !3074
  %95 = getelementptr inbounds ptr, ptr %94, i64 2, !dbg !3074
  %96 = load ptr, ptr %95, align 8, !dbg !3074
  %97 = getelementptr inbounds [128 x i8], ptr %21, i64 0, i64 0, !dbg !3075
  %98 = load ptr, ptr %19, align 8, !dbg !3076
  %99 = getelementptr inbounds i64, ptr %98, i64 2, !dbg !3076
  %100 = load i64, ptr %99, align 8, !dbg !3076
  call void @bcopy(ptr noundef %96, ptr noundef %97, i64 noundef %100) #8, !dbg !3077
  %101 = load ptr, ptr %19, align 8, !dbg !3078
  %102 = getelementptr inbounds i64, ptr %101, i64 2, !dbg !3078
  %103 = load i64, ptr %102, align 8, !dbg !3078
  %104 = getelementptr inbounds [128 x i8], ptr %21, i64 0, i64 %103, !dbg !3079
  store i8 0, ptr %104, align 1, !dbg !3080
  %105 = getelementptr inbounds [128 x i8], ptr %21, i64 0, i64 0, !dbg !3081
  %106 = call i64 @strtoul(ptr noundef %105, ptr noundef null, i32 noundef 10) #8, !dbg !3082
  %107 = trunc i64 %106 to i32, !dbg !3083
  %108 = load ptr, ptr %12, align 8, !dbg !3084
  %109 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %108, i32 0, i32 3, !dbg !3085
  store i32 %107, ptr %109, align 8, !dbg !3086
  %110 = load ptr, ptr %18, align 8, !dbg !3087
  %111 = getelementptr inbounds ptr, ptr %110, i64 3, !dbg !3087
  %112 = load ptr, ptr %111, align 8, !dbg !3087
  %113 = load ptr, ptr %12, align 8, !dbg !3088
  %114 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %113, i32 0, i32 4, !dbg !3089
  %115 = getelementptr inbounds [65 x i8], ptr %114, i64 0, i64 0, !dbg !3088
  %116 = load ptr, ptr %19, align 8, !dbg !3090
  %117 = getelementptr inbounds i64, ptr %116, i64 3, !dbg !3090
  %118 = load i64, ptr %117, align 8, !dbg !3090
  call void @bcopy(ptr noundef %112, ptr noundef %115, i64 noundef %118) #8, !dbg !3091
  %119 = load ptr, ptr %12, align 8, !dbg !3092
  %120 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %119, i32 0, i32 4, !dbg !3093
  %121 = load ptr, ptr %19, align 8, !dbg !3094
  %122 = getelementptr inbounds i64, ptr %121, i64 3, !dbg !3094
  %123 = load i64, ptr %122, align 8, !dbg !3094
  %124 = getelementptr inbounds [65 x i8], ptr %120, i64 0, i64 %123, !dbg !3092
  store i8 0, ptr %124, align 1, !dbg !3095
  %125 = load ptr, ptr %18, align 8, !dbg !3096
  %126 = getelementptr inbounds ptr, ptr %125, i64 4, !dbg !3096
  %127 = load ptr, ptr %126, align 8, !dbg !3096
  %128 = load ptr, ptr %12, align 8, !dbg !3097
  %129 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %128, i32 0, i32 5, !dbg !3098
  %130 = getelementptr inbounds [128 x i8], ptr %129, i64 0, i64 0, !dbg !3097
  %131 = load ptr, ptr %19, align 8, !dbg !3099
  %132 = getelementptr inbounds i64, ptr %131, i64 4, !dbg !3099
  %133 = load i64, ptr %132, align 8, !dbg !3099
  call void @bcopy(ptr noundef %127, ptr noundef %130, i64 noundef %133) #8, !dbg !3100
  %134 = load ptr, ptr %12, align 8, !dbg !3101
  %135 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %134, i32 0, i32 5, !dbg !3102
  %136 = load ptr, ptr %19, align 8, !dbg !3103
  %137 = getelementptr inbounds i64, ptr %136, i64 4, !dbg !3103
  %138 = load i64, ptr %137, align 8, !dbg !3103
  %139 = getelementptr inbounds [128 x i8], ptr %135, i64 0, i64 %138, !dbg !3101
  store i8 0, ptr %139, align 1, !dbg !3104
  %140 = load ptr, ptr %18, align 8, !dbg !3105
  %141 = getelementptr inbounds ptr, ptr %140, i64 5, !dbg !3105
  %142 = load ptr, ptr %141, align 8, !dbg !3105
  %143 = load ptr, ptr %12, align 8, !dbg !3106
  %144 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %143, i32 0, i32 0, !dbg !3107
  %145 = getelementptr inbounds [129 x i8], ptr %144, i64 0, i64 0, !dbg !3106
  %146 = load ptr, ptr %19, align 8, !dbg !3108
  %147 = getelementptr inbounds i64, ptr %146, i64 5, !dbg !3108
  %148 = load i64, ptr %147, align 8, !dbg !3108
  call void @bcopy(ptr noundef %142, ptr noundef %145, i64 noundef %148) #8, !dbg !3109
  %149 = load ptr, ptr %12, align 8, !dbg !3110
  %150 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %149, i32 0, i32 0, !dbg !3111
  %151 = load ptr, ptr %19, align 8, !dbg !3112
  %152 = getelementptr inbounds i64, ptr %151, i64 5, !dbg !3112
  %153 = load i64, ptr %152, align 8, !dbg !3112
  %154 = getelementptr inbounds [129 x i8], ptr %150, i64 0, i64 %153, !dbg !3110
  store i8 0, ptr %154, align 1, !dbg !3113
  %155 = load ptr, ptr %6, align 8, !dbg !3114
  %156 = icmp ne ptr %155, null, !dbg !3114
  br i1 %156, label %157, label %185, !dbg !3116

157:                                              ; preds = %63
  %158 = load ptr, ptr %6, align 8, !dbg !3117
  %159 = load ptr, ptr %12, align 8, !dbg !3119
  %160 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %159, i32 0, i32 0, !dbg !3120
  %161 = getelementptr inbounds [129 x i8], ptr %160, i64 0, i64 0, !dbg !3119
  call void @add_to_secrets_list(ptr noundef %158, ptr noundef %161), !dbg !3121
  %162 = load ptr, ptr %7, align 8, !dbg !3122
  %163 = load ptr, ptr %12, align 8, !dbg !3123
  %164 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %163, i32 0, i32 4, !dbg !3124
  %165 = getelementptr inbounds [65 x i8], ptr %164, i64 0, i64 0, !dbg !3123
  call void @add_to_secrets_list(ptr noundef %162, ptr noundef %165), !dbg !3125
  %166 = load ptr, ptr %10, align 8, !dbg !3126
  %167 = load ptr, ptr %12, align 8, !dbg !3127
  %168 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %167, i32 0, i32 5, !dbg !3128
  %169 = getelementptr inbounds [128 x i8], ptr %168, i64 0, i64 0, !dbg !3127
  call void @add_to_secrets_list(ptr noundef %166, ptr noundef %169), !dbg !3129
  call void @llvm.dbg.declare(metadata ptr %22, metadata !3130, metadata !DIExpression()), !dbg !3133
  %170 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !3134
  %171 = load ptr, ptr %12, align 8, !dbg !3135
  %172 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %171, i32 0, i32 2, !dbg !3136
  %173 = load i64, ptr %172, align 8, !dbg !3136
  %174 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %170, i64 noundef 255, ptr noundef @.str.99, i64 noundef %173) #8, !dbg !3137
  %175 = load ptr, ptr %8, align 8, !dbg !3138
  %176 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !3139
  call void @add_to_secrets_list(ptr noundef %175, ptr noundef %176), !dbg !3140
  call void @llvm.dbg.declare(metadata ptr %23, metadata !3141, metadata !DIExpression()), !dbg !3143
  %177 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !3144
  %178 = load ptr, ptr %12, align 8, !dbg !3145
  %179 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %178, i32 0, i32 3, !dbg !3146
  %180 = load i32, ptr %179, align 8, !dbg !3146
  %181 = zext i32 %180 to i64, !dbg !3147
  %182 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %177, i64 noundef 255, ptr noundef @.str.100, i64 noundef %181) #8, !dbg !3148
  %183 = load ptr, ptr %9, align 8, !dbg !3149
  %184 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !3150
  call void @add_to_secrets_list(ptr noundef %183, ptr noundef %184), !dbg !3151
  br label %206, !dbg !3152

185:                                              ; preds = %63
  %186 = load ptr, ptr %12, align 8, !dbg !3153
  %187 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %186, i32 0, i32 0, !dbg !3155
  %188 = getelementptr inbounds [129 x i8], ptr %187, i64 0, i64 0, !dbg !3153
  %189 = load ptr, ptr %12, align 8, !dbg !3156
  %190 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %189, i32 0, i32 1, !dbg !3157
  %191 = getelementptr inbounds [257 x i8], ptr %190, i64 0, i64 0, !dbg !3156
  %192 = load ptr, ptr %12, align 8, !dbg !3158
  %193 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %192, i32 0, i32 2, !dbg !3159
  %194 = load i64, ptr %193, align 8, !dbg !3159
  %195 = load ptr, ptr %12, align 8, !dbg !3160
  %196 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %195, i32 0, i32 3, !dbg !3161
  %197 = load i32, ptr %196, align 8, !dbg !3161
  %198 = zext i32 %197 to i64, !dbg !3162
  %199 = load ptr, ptr %12, align 8, !dbg !3163
  %200 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %199, i32 0, i32 4, !dbg !3164
  %201 = getelementptr inbounds [65 x i8], ptr %200, i64 0, i64 0, !dbg !3163
  %202 = load ptr, ptr %12, align 8, !dbg !3165
  %203 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %202, i32 0, i32 5, !dbg !3166
  %204 = getelementptr inbounds [128 x i8], ptr %203, i64 0, i64 0, !dbg !3165
  %205 = call i32 (ptr, ...) @printf(ptr noundef @.str.101, ptr noundef %188, ptr noundef %191, i64 noundef %194, i64 noundef %198, ptr noundef %201, ptr noundef %204), !dbg !3167
  br label %206

206:                                              ; preds = %185, %157
  br label %207, !dbg !3168

207:                                              ; preds = %206, %58
  %208 = load ptr, ptr %17, align 8, !dbg !3169
  %209 = call ptr @mysql_fetch_row(ptr noundef %208), !dbg !3170
  store ptr %209, ptr %18, align 8, !dbg !3171
  br label %55, !dbg !3038, !llvm.loop !3172

210:                                              ; preds = %55
  br label %211

211:                                              ; preds = %210, %50
  br label %212

212:                                              ; preds = %211, %43
  %213 = load ptr, ptr %17, align 8, !dbg !3174
  %214 = icmp ne ptr %213, null, !dbg !3174
  br i1 %214, label %215, label %217, !dbg !3176

215:                                              ; preds = %212
  %216 = load ptr, ptr %17, align 8, !dbg !3177
  call void @mysql_free_result(ptr noundef %216), !dbg !3178
  br label %217, !dbg !3178

217:                                              ; preds = %215, %212
  br label %218

218:                                              ; preds = %217, %35
  br label %219, !dbg !3179

219:                                              ; preds = %218, %5
  %220 = load i32, ptr %13, align 4, !dbg !3180
  ret i32 %220, !dbg !3181
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_get_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3182 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3183, metadata !DIExpression()), !dbg !3184
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3185, metadata !DIExpression()), !dbg !3186
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3187, metadata !DIExpression()), !dbg !3188
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3189, metadata !DIExpression()), !dbg !3190
  store i32 -1, ptr %7, align 4, !dbg !3190
  %13 = load ptr, ptr %5, align 8, !dbg !3191
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !3191
  store i8 0, ptr %14, align 1, !dbg !3192
  %15 = load ptr, ptr %6, align 8, !dbg !3193
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !3193
  store i8 0, ptr %16, align 1, !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3195, metadata !DIExpression()), !dbg !3196
  %17 = call ptr @get_mydb_connection(), !dbg !3197
  store ptr %17, ptr %8, align 8, !dbg !3196
  %18 = load ptr, ptr %8, align 8, !dbg !3198
  %19 = icmp ne ptr %18, null, !dbg !3198
  br i1 %19, label %20, label %76, !dbg !3200

20:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3201, metadata !DIExpression()), !dbg !3203
  %21 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3204
  %22 = load ptr, ptr %4, align 8, !dbg !3205
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %21, i64 noundef 1025, ptr noundef @.str.102, ptr noundef %22) #8, !dbg !3206
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3207, metadata !DIExpression()), !dbg !3208
  %24 = load ptr, ptr %8, align 8, !dbg !3209
  %25 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3210
  %26 = call i32 @mysql_query(ptr noundef %24, ptr noundef %25), !dbg !3211
  store i32 %26, ptr %10, align 4, !dbg !3208
  %27 = load i32, ptr %10, align 4, !dbg !3212
  %28 = icmp ne i32 %27, 0, !dbg !3212
  br i1 %28, label %29, label %32, !dbg !3214

29:                                               ; preds = %20
  %30 = load ptr, ptr %8, align 8, !dbg !3215
  %31 = call ptr @mysql_error(ptr noundef %30), !dbg !3217
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %31), !dbg !3218
  br label %75, !dbg !3219

32:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3220, metadata !DIExpression()), !dbg !3222
  %33 = load ptr, ptr %8, align 8, !dbg !3223
  %34 = call ptr @mysql_store_result(ptr noundef %33), !dbg !3224
  store ptr %34, ptr %11, align 8, !dbg !3222
  %35 = load ptr, ptr %11, align 8, !dbg !3225
  %36 = icmp ne ptr %35, null, !dbg !3225
  br i1 %36, label %40, label %37, !dbg !3227

37:                                               ; preds = %32
  %38 = load ptr, ptr %8, align 8, !dbg !3228
  %39 = call ptr @mysql_error(ptr noundef %38), !dbg !3230
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %39), !dbg !3231
  br label %69, !dbg !3232

40:                                               ; preds = %32
  %41 = load ptr, ptr %8, align 8, !dbg !3233
  %42 = call i32 @mysql_field_count(ptr noundef %41), !dbg !3235
  %43 = icmp ne i32 %42, 2, !dbg !3236
  br i1 %43, label %44, label %46, !dbg !3237

44:                                               ; preds = %40
  %45 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !3238
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %45), !dbg !3240
  br label %68, !dbg !3241

46:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3242, metadata !DIExpression()), !dbg !3244
  %47 = load ptr, ptr %11, align 8, !dbg !3245
  %48 = call ptr @mysql_fetch_row(ptr noundef %47), !dbg !3246
  store ptr %48, ptr %12, align 8, !dbg !3244
  %49 = load ptr, ptr %12, align 8, !dbg !3247
  %50 = icmp ne ptr %49, null, !dbg !3247
  br i1 %50, label %51, label %67, !dbg !3249

51:                                               ; preds = %46
  %52 = load ptr, ptr %12, align 8, !dbg !3250
  %53 = getelementptr inbounds ptr, ptr %52, i64 0, !dbg !3250
  %54 = load ptr, ptr %53, align 8, !dbg !3250
  %55 = icmp ne ptr %54, null, !dbg !3250
  br i1 %55, label %56, label %67, !dbg !3251

56:                                               ; preds = %51
  %57 = load ptr, ptr %5, align 8, !dbg !3252
  %58 = load ptr, ptr %12, align 8, !dbg !3254
  %59 = getelementptr inbounds ptr, ptr %58, i64 0, !dbg !3254
  %60 = load ptr, ptr %59, align 8, !dbg !3254
  %61 = call ptr @strncpy(ptr noundef %57, ptr noundef %60, i64 noundef 127) #8, !dbg !3255
  %62 = load ptr, ptr %6, align 8, !dbg !3256
  %63 = load ptr, ptr %12, align 8, !dbg !3257
  %64 = getelementptr inbounds ptr, ptr %63, i64 1, !dbg !3257
  %65 = load ptr, ptr %64, align 8, !dbg !3257
  %66 = call ptr @strncpy(ptr noundef %62, ptr noundef %65, i64 noundef 256) #8, !dbg !3258
  store i32 0, ptr %7, align 4, !dbg !3259
  br label %67, !dbg !3260

67:                                               ; preds = %56, %51, %46
  br label %68

68:                                               ; preds = %67, %44
  br label %69

69:                                               ; preds = %68, %37
  %70 = load ptr, ptr %11, align 8, !dbg !3261
  %71 = icmp ne ptr %70, null, !dbg !3261
  br i1 %71, label %72, label %74, !dbg !3263

72:                                               ; preds = %69
  %73 = load ptr, ptr %11, align 8, !dbg !3264
  call void @mysql_free_result(ptr noundef %73), !dbg !3265
  br label %74, !dbg !3265

74:                                               ; preds = %72, %69
  br label %75

75:                                               ; preds = %74, %29
  br label %76, !dbg !3266

76:                                               ; preds = %75, %3
  %77 = load i32, ptr %7, align 4, !dbg !3267
  ret i32 %77, !dbg !3268
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_set_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3269 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3270, metadata !DIExpression()), !dbg !3271
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3272, metadata !DIExpression()), !dbg !3273
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3276, metadata !DIExpression()), !dbg !3277
  store i32 -1, ptr %7, align 4, !dbg !3277
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3278, metadata !DIExpression()), !dbg !3279
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3280
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3281, metadata !DIExpression()), !dbg !3282
  %11 = call ptr @get_mydb_connection(), !dbg !3283
  store ptr %11, ptr %9, align 8, !dbg !3282
  %12 = load ptr, ptr %9, align 8, !dbg !3284
  %13 = icmp ne ptr %12, null, !dbg !3284
  br i1 %13, label %14, label %43, !dbg !3286

14:                                               ; preds = %3
  %15 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !3287
  %16 = load ptr, ptr %5, align 8, !dbg !3289
  %17 = load ptr, ptr %4, align 8, !dbg !3290
  %18 = load ptr, ptr %6, align 8, !dbg !3291
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.103, ptr noundef %16, ptr noundef %17, ptr noundef %18) #8, !dbg !3292
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3293, metadata !DIExpression()), !dbg !3294
  %20 = load ptr, ptr %9, align 8, !dbg !3295
  %21 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !3296
  %22 = call i32 @mysql_query(ptr noundef %20, ptr noundef %21), !dbg !3297
  store i32 %22, ptr %10, align 4, !dbg !3294
  %23 = load i32, ptr %10, align 4, !dbg !3298
  %24 = icmp ne i32 %23, 0, !dbg !3298
  br i1 %24, label %26, label %25, !dbg !3300

25:                                               ; preds = %14
  store i32 0, ptr %7, align 4, !dbg !3301
  br label %42, !dbg !3303

26:                                               ; preds = %14
  %27 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !3304
  %28 = load ptr, ptr %5, align 8, !dbg !3306
  %29 = load ptr, ptr %6, align 8, !dbg !3307
  %30 = load ptr, ptr %4, align 8, !dbg !3308
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 1025, ptr noundef @.str.104, ptr noundef %28, ptr noundef %29, ptr noundef %30) #8, !dbg !3309
  %32 = load ptr, ptr %9, align 8, !dbg !3310
  %33 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !3311
  %34 = call i32 @mysql_query(ptr noundef %32, ptr noundef %33), !dbg !3312
  store i32 %34, ptr %10, align 4, !dbg !3313
  %35 = load i32, ptr %10, align 4, !dbg !3314
  %36 = icmp ne i32 %35, 0, !dbg !3314
  br i1 %36, label %38, label %37, !dbg !3316

37:                                               ; preds = %26
  store i32 0, ptr %7, align 4, !dbg !3317
  br label %41, !dbg !3319

38:                                               ; preds = %26
  %39 = load ptr, ptr %9, align 8, !dbg !3320
  %40 = call ptr @mysql_error(ptr noundef %39), !dbg !3322
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.54, ptr noundef %40), !dbg !3323
  br label %41

41:                                               ; preds = %38, %37
  br label %42

42:                                               ; preds = %41, %25
  br label %43, !dbg !3324

43:                                               ; preds = %42, %3
  %44 = load i32, ptr %7, align 4, !dbg !3325
  ret i32 %44, !dbg !3326
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_del_admin_user(ptr noundef %0) #0 !dbg !3327 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3328, metadata !DIExpression()), !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3330, metadata !DIExpression()), !dbg !3331
  store i32 -1, ptr %3, align 4, !dbg !3331
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3332, metadata !DIExpression()), !dbg !3333
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3334
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3335, metadata !DIExpression()), !dbg !3336
  %7 = call ptr @get_mydb_connection(), !dbg !3337
  store ptr %7, ptr %5, align 8, !dbg !3336
  %8 = load ptr, ptr %5, align 8, !dbg !3338
  %9 = icmp ne ptr %8, null, !dbg !3338
  br i1 %9, label %10, label %24, !dbg !3340

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !3341
  %12 = load ptr, ptr %2, align 8, !dbg !3343
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.105, ptr noundef %12) #8, !dbg !3344
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3345, metadata !DIExpression()), !dbg !3346
  %14 = load ptr, ptr %5, align 8, !dbg !3347
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !3348
  %16 = call i32 @mysql_query(ptr noundef %14, ptr noundef %15), !dbg !3349
  store i32 %16, ptr %6, align 4, !dbg !3346
  %17 = load i32, ptr %6, align 4, !dbg !3350
  %18 = icmp ne i32 %17, 0, !dbg !3350
  br i1 %18, label %19, label %22, !dbg !3352

19:                                               ; preds = %10
  %20 = load ptr, ptr %5, align 8, !dbg !3353
  %21 = call ptr @mysql_error(ptr noundef %20), !dbg !3355
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.106, ptr noundef %21), !dbg !3356
  br label %23, !dbg !3357

22:                                               ; preds = %10
  store i32 0, ptr %3, align 4, !dbg !3358
  br label %23

23:                                               ; preds = %22, %19
  br label %24, !dbg !3360

24:                                               ; preds = %23, %1
  %25 = load i32, ptr %3, align 4, !dbg !3361
  ret i32 %25, !dbg !3362
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mysql_list_admin_users(i32 noundef %0) #0 !dbg !3363 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i32 -1, ptr %3, align 4, !dbg !3367
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3368, metadata !DIExpression()), !dbg !3369
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3370
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3371, metadata !DIExpression()), !dbg !3372
  %9 = call ptr @get_mydb_connection(), !dbg !3373
  store ptr %9, ptr %5, align 8, !dbg !3372
  %10 = load ptr, ptr %5, align 8, !dbg !3374
  %11 = icmp ne ptr %10, null, !dbg !3374
  br i1 %11, label %12, label %92, !dbg !3376

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !3377
  %14 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.107) #8, !dbg !3379
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3380, metadata !DIExpression()), !dbg !3381
  %15 = load ptr, ptr %5, align 8, !dbg !3382
  %16 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !3383
  %17 = call i32 @mysql_query(ptr noundef %15, ptr noundef %16), !dbg !3384
  store i32 %17, ptr %6, align 4, !dbg !3381
  %18 = load i32, ptr %6, align 4, !dbg !3385
  %19 = icmp ne i32 %18, 0, !dbg !3385
  br i1 %19, label %20, label %23, !dbg !3387

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8, !dbg !3388
  %22 = call ptr @mysql_error(ptr noundef %21), !dbg !3390
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %22), !dbg !3391
  br label %91, !dbg !3392

23:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3393, metadata !DIExpression()), !dbg !3395
  %24 = load ptr, ptr %5, align 8, !dbg !3396
  %25 = call ptr @mysql_store_result(ptr noundef %24), !dbg !3397
  store ptr %25, ptr %7, align 8, !dbg !3395
  %26 = load ptr, ptr %7, align 8, !dbg !3398
  %27 = icmp ne ptr %26, null, !dbg !3398
  br i1 %27, label %31, label %28, !dbg !3400

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 8, !dbg !3401
  %30 = call ptr @mysql_error(ptr noundef %29), !dbg !3403
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %30), !dbg !3404
  br label %85, !dbg !3405

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 8, !dbg !3406
  %33 = call i32 @mysql_field_count(ptr noundef %32), !dbg !3408
  %34 = icmp ne i32 %33, 2, !dbg !3409
  br i1 %34, label %35, label %37, !dbg !3410

35:                                               ; preds = %31
  %36 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !3411
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49, ptr noundef %36), !dbg !3413
  br label %84, !dbg !3414

37:                                               ; preds = %31
  store i32 0, ptr %3, align 4, !dbg !3415
  br label %38, !dbg !3417

38:                                               ; preds = %82, %37
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3418, metadata !DIExpression()), !dbg !3422
  %39 = load ptr, ptr %7, align 8, !dbg !3423
  %40 = call ptr @mysql_fetch_row(ptr noundef %39), !dbg !3424
  store ptr %40, ptr %8, align 8, !dbg !3422
  %41 = load ptr, ptr %8, align 8, !dbg !3425
  %42 = icmp ne ptr %41, null, !dbg !3425
  br i1 %42, label %44, label %43, !dbg !3427

43:                                               ; preds = %38
  br label %83, !dbg !3428

44:                                               ; preds = %38
  %45 = load i32, ptr %3, align 4, !dbg !3430
  %46 = add nsw i32 %45, 1, !dbg !3430
  store i32 %46, ptr %3, align 4, !dbg !3430
  %47 = load ptr, ptr %8, align 8, !dbg !3432
  %48 = getelementptr inbounds ptr, ptr %47, i64 0, !dbg !3432
  %49 = load ptr, ptr %48, align 8, !dbg !3432
  %50 = icmp ne ptr %49, null, !dbg !3432
  br i1 %50, label %51, label %81, !dbg !3434

51:                                               ; preds = %44
  %52 = load i32, ptr %2, align 4, !dbg !3435
  %53 = icmp ne i32 %52, 0, !dbg !3435
  br i1 %53, label %81, label %54, !dbg !3436

54:                                               ; preds = %51
  %55 = load ptr, ptr %8, align 8, !dbg !3437
  %56 = getelementptr inbounds ptr, ptr %55, i64 1, !dbg !3437
  %57 = load ptr, ptr %56, align 8, !dbg !3437
  %58 = icmp ne ptr %57, null, !dbg !3437
  br i1 %58, label %59, label %75, !dbg !3440

59:                                               ; preds = %54
  %60 = load ptr, ptr %8, align 8, !dbg !3441
  %61 = getelementptr inbounds ptr, ptr %60, i64 1, !dbg !3441
  %62 = load ptr, ptr %61, align 8, !dbg !3441
  %63 = getelementptr inbounds i8, ptr %62, i64 0, !dbg !3441
  %64 = load i8, ptr %63, align 1, !dbg !3441
  %65 = sext i8 %64 to i32, !dbg !3441
  %66 = icmp ne i32 %65, 0, !dbg !3441
  br i1 %66, label %67, label %75, !dbg !3442

67:                                               ; preds = %59
  %68 = load ptr, ptr %8, align 8, !dbg !3443
  %69 = getelementptr inbounds ptr, ptr %68, i64 0, !dbg !3443
  %70 = load ptr, ptr %69, align 8, !dbg !3443
  %71 = load ptr, ptr %8, align 8, !dbg !3445
  %72 = getelementptr inbounds ptr, ptr %71, i64 1, !dbg !3445
  %73 = load ptr, ptr %72, align 8, !dbg !3445
  %74 = call i32 (ptr, ...) @printf(ptr noundef @.str.59, ptr noundef %70, ptr noundef %73), !dbg !3446
  br label %80, !dbg !3447

75:                                               ; preds = %59, %54
  %76 = load ptr, ptr %8, align 8, !dbg !3448
  %77 = getelementptr inbounds ptr, ptr %76, i64 0, !dbg !3448
  %78 = load ptr, ptr %77, align 8, !dbg !3448
  %79 = call i32 (ptr, ...) @printf(ptr noundef @.str.108, ptr noundef %78), !dbg !3450
  br label %80

80:                                               ; preds = %75, %67
  br label %81, !dbg !3451

81:                                               ; preds = %80, %51, %44
  br label %82

82:                                               ; preds = %81
  br label %38, !dbg !3452, !llvm.loop !3453

83:                                               ; preds = %43
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %28
  %86 = load ptr, ptr %7, align 8, !dbg !3456
  %87 = icmp ne ptr %86, null, !dbg !3456
  br i1 %87, label %88, label %90, !dbg !3458

88:                                               ; preds = %85
  %89 = load ptr, ptr %7, align 8, !dbg !3459
  call void @mysql_free_result(ptr noundef %89), !dbg !3460
  br label %90, !dbg !3460

90:                                               ; preds = %88, %85
  br label %91

91:                                               ; preds = %90, %20
  br label %92, !dbg !3461

92:                                               ; preds = %91, %1
  %93 = load i32, ptr %3, align 4, !dbg !3462
  ret i32 %93, !dbg !3463
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mysql_disconnect() #0 !dbg !3464 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3465, metadata !DIExpression()), !dbg !3466
  %2 = load i32, ptr @connection_key, align 4, !dbg !3467
  %3 = call ptr @pthread_getspecific(i32 noundef %2) #8, !dbg !3468
  store ptr %3, ptr %1, align 8, !dbg !3466
  %4 = load ptr, ptr %1, align 8, !dbg !3469
  %5 = icmp ne ptr %4, null, !dbg !3469
  br i1 %5, label %6, label %8, !dbg !3471

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !3472
  call void @mysql_close(ptr noundef %7), !dbg !3474
  store ptr null, ptr %1, align 8, !dbg !3475
  br label %8, !dbg !3476

8:                                                ; preds = %6, %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.109), !dbg !3477
  ret void, !dbg !3478
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_mydb_connection() #0 !dbg !3479 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3482, metadata !DIExpression()), !dbg !3488
  %6 = call ptr @get_persistent_users_db(), !dbg !3489
  store ptr %6, ptr %1, align 8, !dbg !3488
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3490, metadata !DIExpression()), !dbg !3491
  %7 = load i32, ptr @connection_key, align 4, !dbg !3492
  %8 = call ptr @pthread_getspecific(i32 noundef %7) #8, !dbg !3493
  store ptr %8, ptr %2, align 8, !dbg !3491
  %9 = load ptr, ptr %2, align 8, !dbg !3494
  %10 = icmp ne ptr %9, null, !dbg !3494
  br i1 %10, label %11, label %21, !dbg !3496

11:                                               ; preds = %0
  %12 = load ptr, ptr %2, align 8, !dbg !3497
  %13 = call i32 @mysql_ping(ptr noundef %12), !dbg !3500
  %14 = icmp ne i32 %13, 0, !dbg !3500
  br i1 %14, label %15, label %20, !dbg !3501

15:                                               ; preds = %11
  %16 = load ptr, ptr %2, align 8, !dbg !3502
  call void @mysql_close(ptr noundef %16), !dbg !3504
  store ptr null, ptr %2, align 8, !dbg !3505
  %17 = load i32, ptr @connection_key, align 4, !dbg !3506
  %18 = load ptr, ptr %2, align 8, !dbg !3507
  %19 = call i32 @pthread_setspecific(i32 noundef %17, ptr noundef %18) #8, !dbg !3508
  br label %20, !dbg !3509

20:                                               ; preds = %15, %11
  br label %21, !dbg !3510

21:                                               ; preds = %20, %0
  %22 = load ptr, ptr %2, align 8, !dbg !3511
  %23 = icmp ne ptr %22, null, !dbg !3511
  br i1 %23, label %207, label %24, !dbg !3513

24:                                               ; preds = %21
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3514, metadata !DIExpression()), !dbg !3516
  store ptr null, ptr %3, align 8, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3517, metadata !DIExpression()), !dbg !3518
  %25 = load ptr, ptr %1, align 8, !dbg !3519
  %26 = getelementptr inbounds %struct._persistent_users_db_t, ptr %25, i32 0, i32 0, !dbg !3520
  %27 = getelementptr inbounds [1025 x i8], ptr %26, i64 0, i64 0, !dbg !3519
  %28 = call ptr @MyconninfoParse(ptr noundef %27, ptr noundef %3), !dbg !3521
  store ptr %28, ptr %4, align 8, !dbg !3518
  %29 = load ptr, ptr %4, align 8, !dbg !3522
  %30 = icmp ne ptr %29, null, !dbg !3522
  br i1 %30, label %45, label %31, !dbg !3524

31:                                               ; preds = %24
  %32 = load ptr, ptr %3, align 8, !dbg !3525
  %33 = icmp ne ptr %32, null, !dbg !3525
  br i1 %33, label %34, label %40, !dbg !3528

34:                                               ; preds = %31
  %35 = load ptr, ptr %1, align 8, !dbg !3529
  %36 = getelementptr inbounds %struct._persistent_users_db_t, ptr %35, i32 0, i32 0, !dbg !3531
  %37 = getelementptr inbounds [1025 x i8], ptr %36, i64 0, i64 0, !dbg !3529
  %38 = load ptr, ptr %3, align 8, !dbg !3532
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef %37, ptr noundef %38), !dbg !3533
  %39 = load ptr, ptr %3, align 8, !dbg !3534
  call void @free(ptr noundef %39) #8, !dbg !3535
  br label %44, !dbg !3536

40:                                               ; preds = %31
  %41 = load ptr, ptr %1, align 8, !dbg !3537
  %42 = getelementptr inbounds %struct._persistent_users_db_t, ptr %41, i32 0, i32 0, !dbg !3539
  %43 = getelementptr inbounds [1025 x i8], ptr %42, i64 0, i64 0, !dbg !3537
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3, ptr noundef %43), !dbg !3540
  br label %44

44:                                               ; preds = %40, %34
  br label %199, !dbg !3541

45:                                               ; preds = %24
  %46 = load ptr, ptr %3, align 8, !dbg !3542
  %47 = icmp ne ptr %46, null, !dbg !3542
  br i1 %47, label %48, label %55, !dbg !3544

48:                                               ; preds = %45
  %49 = load ptr, ptr %1, align 8, !dbg !3545
  %50 = getelementptr inbounds %struct._persistent_users_db_t, ptr %49, i32 0, i32 0, !dbg !3547
  %51 = getelementptr inbounds [1025 x i8], ptr %50, i64 0, i64 0, !dbg !3545
  %52 = load ptr, ptr %3, align 8, !dbg !3548
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef %51, ptr noundef %52), !dbg !3549
  %53 = load ptr, ptr %3, align 8, !dbg !3550
  call void @free(ptr noundef %53) #8, !dbg !3551
  %54 = load ptr, ptr %4, align 8, !dbg !3552
  call void @MyconninfoFree(ptr noundef %54), !dbg !3553
  br label %198, !dbg !3554

55:                                               ; preds = %45
  %56 = load ptr, ptr %4, align 8, !dbg !3555
  %57 = getelementptr inbounds %struct._Myconninfo, ptr %56, i32 0, i32 1, !dbg !3557
  %58 = load ptr, ptr %57, align 8, !dbg !3557
  %59 = icmp ne ptr %58, null, !dbg !3558
  br i1 %59, label %65, label %60, !dbg !3559

60:                                               ; preds = %55
  %61 = load ptr, ptr %1, align 8, !dbg !3560
  %62 = getelementptr inbounds %struct._persistent_users_db_t, ptr %61, i32 0, i32 0, !dbg !3562
  %63 = getelementptr inbounds [1025 x i8], ptr %62, i64 0, i64 0, !dbg !3560
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4, ptr noundef %63), !dbg !3563
  %64 = load ptr, ptr %4, align 8, !dbg !3564
  call void @MyconninfoFree(ptr noundef %64), !dbg !3565
  br label %197, !dbg !3566

65:                                               ; preds = %55
  %66 = call ptr @mysql_init(ptr noundef null), !dbg !3567
  store ptr %66, ptr %2, align 8, !dbg !3569
  %67 = load ptr, ptr %2, align 8, !dbg !3570
  %68 = icmp ne ptr %67, null, !dbg !3570
  br i1 %68, label %70, label %69, !dbg !3572

69:                                               ; preds = %65
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5), !dbg !3573
  br label %195, !dbg !3575

70:                                               ; preds = %65
  %71 = load ptr, ptr %4, align 8, !dbg !3576
  %72 = getelementptr inbounds %struct._Myconninfo, ptr %71, i32 0, i32 5, !dbg !3579
  %73 = load i32, ptr %72, align 4, !dbg !3579
  %74 = icmp ne i32 %73, 0, !dbg !3576
  br i1 %74, label %75, label %80, !dbg !3580

75:                                               ; preds = %70
  %76 = load ptr, ptr %2, align 8, !dbg !3581
  %77 = load ptr, ptr %4, align 8, !dbg !3582
  %78 = getelementptr inbounds %struct._Myconninfo, ptr %77, i32 0, i32 5, !dbg !3583
  %79 = call i32 @mysql_options(ptr noundef %76, i32 noundef 0, ptr noundef %78), !dbg !3584
  br label %80, !dbg !3584

80:                                               ; preds = %75, %70
  %81 = load ptr, ptr %4, align 8, !dbg !3585
  %82 = getelementptr inbounds %struct._Myconninfo, ptr %81, i32 0, i32 6, !dbg !3587
  %83 = load i32, ptr %82, align 8, !dbg !3587
  %84 = icmp ne i32 %83, 0, !dbg !3585
  br i1 %84, label %85, label %90, !dbg !3588

85:                                               ; preds = %80
  %86 = load ptr, ptr %2, align 8, !dbg !3589
  %87 = load ptr, ptr %4, align 8, !dbg !3590
  %88 = getelementptr inbounds %struct._Myconninfo, ptr %87, i32 0, i32 6, !dbg !3591
  %89 = call i32 @mysql_options(ptr noundef %86, i32 noundef 11, ptr noundef %88), !dbg !3592
  br label %90, !dbg !3592

90:                                               ; preds = %85, %80
  %91 = load ptr, ptr %4, align 8, !dbg !3593
  %92 = getelementptr inbounds %struct._Myconninfo, ptr %91, i32 0, i32 8, !dbg !3595
  %93 = load ptr, ptr %92, align 8, !dbg !3595
  %94 = icmp ne ptr %93, null, !dbg !3593
  br i1 %94, label %115, label %95, !dbg !3596

95:                                               ; preds = %90
  %96 = load ptr, ptr %4, align 8, !dbg !3597
  %97 = getelementptr inbounds %struct._Myconninfo, ptr %96, i32 0, i32 10, !dbg !3598
  %98 = load ptr, ptr %97, align 8, !dbg !3598
  %99 = icmp ne ptr %98, null, !dbg !3597
  br i1 %99, label %115, label %100, !dbg !3599

100:                                              ; preds = %95
  %101 = load ptr, ptr %4, align 8, !dbg !3600
  %102 = getelementptr inbounds %struct._Myconninfo, ptr %101, i32 0, i32 9, !dbg !3601
  %103 = load ptr, ptr %102, align 8, !dbg !3601
  %104 = icmp ne ptr %103, null, !dbg !3600
  br i1 %104, label %115, label %105, !dbg !3602

105:                                              ; preds = %100
  %106 = load ptr, ptr %4, align 8, !dbg !3603
  %107 = getelementptr inbounds %struct._Myconninfo, ptr %106, i32 0, i32 11, !dbg !3604
  %108 = load ptr, ptr %107, align 8, !dbg !3604
  %109 = icmp ne ptr %108, null, !dbg !3603
  br i1 %109, label %115, label %110, !dbg !3605

110:                                              ; preds = %105
  %111 = load ptr, ptr %4, align 8, !dbg !3606
  %112 = getelementptr inbounds %struct._Myconninfo, ptr %111, i32 0, i32 7, !dbg !3607
  %113 = load ptr, ptr %112, align 8, !dbg !3607
  %114 = icmp ne ptr %113, null, !dbg !3606
  br i1 %114, label %115, label %133, !dbg !3608

115:                                              ; preds = %110, %105, %100, %95, %90
  %116 = load ptr, ptr %2, align 8, !dbg !3609
  %117 = load ptr, ptr %4, align 8, !dbg !3611
  %118 = getelementptr inbounds %struct._Myconninfo, ptr %117, i32 0, i32 7, !dbg !3612
  %119 = load ptr, ptr %118, align 8, !dbg !3612
  %120 = load ptr, ptr %4, align 8, !dbg !3613
  %121 = getelementptr inbounds %struct._Myconninfo, ptr %120, i32 0, i32 9, !dbg !3614
  %122 = load ptr, ptr %121, align 8, !dbg !3614
  %123 = load ptr, ptr %4, align 8, !dbg !3615
  %124 = getelementptr inbounds %struct._Myconninfo, ptr %123, i32 0, i32 8, !dbg !3616
  %125 = load ptr, ptr %124, align 8, !dbg !3616
  %126 = load ptr, ptr %4, align 8, !dbg !3617
  %127 = getelementptr inbounds %struct._Myconninfo, ptr %126, i32 0, i32 10, !dbg !3618
  %128 = load ptr, ptr %127, align 8, !dbg !3618
  %129 = load ptr, ptr %4, align 8, !dbg !3619
  %130 = getelementptr inbounds %struct._Myconninfo, ptr %129, i32 0, i32 11, !dbg !3620
  %131 = load ptr, ptr %130, align 8, !dbg !3620
  %132 = call zeroext i1 @mysql_ssl_set(ptr noundef %116, ptr noundef %119, ptr noundef %122, ptr noundef %125, ptr noundef %128, ptr noundef %131), !dbg !3621
  br label %133, !dbg !3622

133:                                              ; preds = %115, %110
  %134 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), align 8, !dbg !3623
  %135 = icmp ne i8 %134, 0, !dbg !3623
  br i1 %135, label %136, label %143, !dbg !3625

136:                                              ; preds = %133
  %137 = load ptr, ptr %4, align 8, !dbg !3626
  %138 = getelementptr inbounds %struct._Myconninfo, ptr %137, i32 0, i32 3, !dbg !3628
  %139 = load ptr, ptr %138, align 8, !dbg !3628
  %140 = call ptr @decryptPassword(ptr noundef %139, ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 89)), !dbg !3629
  %141 = load ptr, ptr %4, align 8, !dbg !3630
  %142 = getelementptr inbounds %struct._Myconninfo, ptr %141, i32 0, i32 3, !dbg !3631
  store ptr %140, ptr %142, align 8, !dbg !3632
  br label %143, !dbg !3633

143:                                              ; preds = %136, %133
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3634, metadata !DIExpression()), !dbg !3635
  %144 = load ptr, ptr %2, align 8, !dbg !3636
  %145 = load ptr, ptr %4, align 8, !dbg !3637
  %146 = getelementptr inbounds %struct._Myconninfo, ptr %145, i32 0, i32 0, !dbg !3638
  %147 = load ptr, ptr %146, align 8, !dbg !3638
  %148 = load ptr, ptr %4, align 8, !dbg !3639
  %149 = getelementptr inbounds %struct._Myconninfo, ptr %148, i32 0, i32 2, !dbg !3640
  %150 = load ptr, ptr %149, align 8, !dbg !3640
  %151 = load ptr, ptr %4, align 8, !dbg !3641
  %152 = getelementptr inbounds %struct._Myconninfo, ptr %151, i32 0, i32 3, !dbg !3642
  %153 = load ptr, ptr %152, align 8, !dbg !3642
  %154 = load ptr, ptr %4, align 8, !dbg !3643
  %155 = getelementptr inbounds %struct._Myconninfo, ptr %154, i32 0, i32 1, !dbg !3644
  %156 = load ptr, ptr %155, align 8, !dbg !3644
  %157 = load ptr, ptr %4, align 8, !dbg !3645
  %158 = getelementptr inbounds %struct._Myconninfo, ptr %157, i32 0, i32 4, !dbg !3646
  %159 = load i32, ptr %158, align 8, !dbg !3646
  %160 = call ptr @mysql_real_connect(ptr noundef %144, ptr noundef %147, ptr noundef %150, ptr noundef %153, ptr noundef %156, i32 noundef %159, ptr noundef null, i64 noundef 4096), !dbg !3647
  store ptr %160, ptr %5, align 8, !dbg !3635
  %161 = load ptr, ptr %5, align 8, !dbg !3648
  %162 = icmp ne ptr %161, null, !dbg !3648
  br i1 %162, label %168, label %163, !dbg !3650

163:                                              ; preds = %143
  %164 = load ptr, ptr %1, align 8, !dbg !3651
  %165 = getelementptr inbounds %struct._persistent_users_db_t, ptr %164, i32 0, i32 0, !dbg !3653
  %166 = getelementptr inbounds [1025 x i8], ptr %165, i64 0, i64 0, !dbg !3651
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.6, ptr noundef %166), !dbg !3654
  %167 = load ptr, ptr %2, align 8, !dbg !3655
  call void @mysql_close(ptr noundef %167), !dbg !3656
  store ptr null, ptr %2, align 8, !dbg !3657
  br label %194, !dbg !3658

168:                                              ; preds = %143
  %169 = load ptr, ptr %2, align 8, !dbg !3659
  %170 = load ptr, ptr %4, align 8, !dbg !3661
  %171 = getelementptr inbounds %struct._Myconninfo, ptr %170, i32 0, i32 1, !dbg !3662
  %172 = load ptr, ptr %171, align 8, !dbg !3662
  %173 = call i32 @mysql_select_db(ptr noundef %169, ptr noundef %172), !dbg !3663
  %174 = icmp ne i32 %173, 0, !dbg !3663
  br i1 %174, label %175, label %180, !dbg !3664

175:                                              ; preds = %168
  %176 = load ptr, ptr %4, align 8, !dbg !3665
  %177 = getelementptr inbounds %struct._Myconninfo, ptr %176, i32 0, i32 1, !dbg !3667
  %178 = load ptr, ptr %177, align 8, !dbg !3667
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %178), !dbg !3668
  %179 = load ptr, ptr %2, align 8, !dbg !3669
  call void @mysql_close(ptr noundef %179), !dbg !3670
  store ptr null, ptr %2, align 8, !dbg !3671
  br label %193, !dbg !3672

180:                                              ; preds = %168
  %181 = load i32, ptr @donot_print_connection_success, align 4, !dbg !3673
  %182 = icmp ne i32 %181, 0, !dbg !3673
  br i1 %182, label %192, label %183, !dbg !3675

183:                                              ; preds = %180
  %184 = load ptr, ptr %1, align 8, !dbg !3676
  %185 = getelementptr inbounds %struct._persistent_users_db_t, ptr %184, i32 0, i32 0, !dbg !3678
  %186 = getelementptr inbounds [1025 x i8], ptr %185, i64 0, i64 0, !dbg !3676
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.8, ptr noundef %186), !dbg !3679
  %187 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 88), align 8, !dbg !3680
  %188 = icmp ne i8 %187, 0, !dbg !3680
  br i1 %188, label %189, label %190, !dbg !3682

189:                                              ; preds = %183
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9), !dbg !3683
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.10), !dbg !3685
  br label %191, !dbg !3686

190:                                              ; preds = %183
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.11), !dbg !3687
  br label %191

191:                                              ; preds = %190, %189
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3688
  br label %192, !dbg !3689

192:                                              ; preds = %191, %180
  br label %193

193:                                              ; preds = %192, %175
  br label %194

194:                                              ; preds = %193, %163
  br label %195

195:                                              ; preds = %194, %69
  %196 = load ptr, ptr %4, align 8, !dbg !3690
  call void @MyconninfoFree(ptr noundef %196), !dbg !3691
  br label %197

197:                                              ; preds = %195, %60
  br label %198

198:                                              ; preds = %197, %48
  br label %199

199:                                              ; preds = %198, %44
  %200 = load ptr, ptr %2, align 8, !dbg !3692
  %201 = icmp ne ptr %200, null, !dbg !3692
  br i1 %201, label %202, label %206, !dbg !3694

202:                                              ; preds = %199
  %203 = load i32, ptr @connection_key, align 4, !dbg !3695
  %204 = load ptr, ptr %2, align 8, !dbg !3697
  %205 = call i32 @pthread_setspecific(i32 noundef %203, ptr noundef %204) #8, !dbg !3698
  br label %206, !dbg !3699

206:                                              ; preds = %202, %199
  br label %207, !dbg !3700

207:                                              ; preds = %206, %21
  %208 = load ptr, ptr %2, align 8, !dbg !3701
  ret ptr %208, !dbg !3702
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

declare i32 @mysql_query(ptr noundef, ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare ptr @mysql_error(ptr noundef) #3

declare ptr @mysql_store_result(ptr noundef) #3

declare i32 @mysql_field_count(ptr noundef) #3

declare ptr @mysql_fetch_row(ptr noundef) #3

declare ptr @mysql_fetch_lengths(ptr noundef) #3

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #5

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #3

declare void @mysql_free_result(ptr noundef) #3

declare ptr @get_persistent_users_db() #3

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #5

declare i32 @mysql_ping(ptr noundef) #3

declare void @mysql_close(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @MyconninfoParse(ptr noundef %0, ptr noundef %1) #0 !dbg !3703 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3706, metadata !DIExpression()), !dbg !3707
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3708, metadata !DIExpression()), !dbg !3709
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3710, metadata !DIExpression()), !dbg !3711
  %10 = call noalias ptr @malloc(i64 noundef 88) #9, !dbg !3712
  store ptr %10, ptr %5, align 8, !dbg !3711
  %11 = load ptr, ptr %5, align 8, !dbg !3713
  call void @llvm.memset.p0.i64(ptr align 8 %11, i8 0, i64 88, i1 false), !dbg !3714
  %12 = load ptr, ptr %3, align 8, !dbg !3715
  %13 = icmp ne ptr %12, null, !dbg !3715
  br i1 %13, label %14, label %421, !dbg !3717

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3718, metadata !DIExpression()), !dbg !3720
  %15 = load ptr, ptr %3, align 8, !dbg !3721
  %16 = call noalias ptr @strdup(ptr noundef %15) #8, !dbg !3722
  store ptr %16, ptr %6, align 8, !dbg !3720
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3723, metadata !DIExpression()), !dbg !3724
  %17 = load ptr, ptr %6, align 8, !dbg !3725
  store ptr %17, ptr %7, align 8, !dbg !3724
  br label %18, !dbg !3726

18:                                               ; preds = %417, %14
  %19 = load ptr, ptr %7, align 8, !dbg !3727
  %20 = icmp ne ptr %19, null, !dbg !3727
  br i1 %20, label %21, label %26, !dbg !3728

21:                                               ; preds = %18
  %22 = load ptr, ptr %7, align 8, !dbg !3729
  %23 = load i8, ptr %22, align 1, !dbg !3730
  %24 = sext i8 %23 to i32, !dbg !3730
  %25 = icmp ne i32 %24, 0, !dbg !3728
  br label %26

26:                                               ; preds = %21, %18
  %27 = phi i1 [ false, %18 ], [ %25, %21 ], !dbg !3731
  br i1 %27, label %28, label %419, !dbg !3726

28:                                               ; preds = %26
  br label %29, !dbg !3732

29:                                               ; preds = %41, %28
  %30 = load ptr, ptr %7, align 8, !dbg !3734
  %31 = load i8, ptr %30, align 1, !dbg !3735
  %32 = sext i8 %31 to i32, !dbg !3735
  %33 = icmp ne i32 %32, 0, !dbg !3735
  br i1 %33, label %34, label %39, !dbg !3736

34:                                               ; preds = %29
  %35 = load ptr, ptr %7, align 8, !dbg !3737
  %36 = load i8, ptr %35, align 1, !dbg !3738
  %37 = sext i8 %36 to i32, !dbg !3738
  %38 = icmp eq i32 %37, 32, !dbg !3739
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ], !dbg !3740
  br i1 %40, label %41, label %44, !dbg !3732

41:                                               ; preds = %39
  %42 = load ptr, ptr %7, align 8, !dbg !3741
  %43 = getelementptr inbounds i8, ptr %42, i32 1, !dbg !3741
  store ptr %43, ptr %7, align 8, !dbg !3741
  br label %29, !dbg !3732, !llvm.loop !3742

44:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3744, metadata !DIExpression()), !dbg !3745
  %45 = load ptr, ptr %7, align 8, !dbg !3746
  %46 = call ptr @strstr(ptr noundef %45, ptr noundef @.str.12) #7, !dbg !3747
  store ptr %46, ptr %8, align 8, !dbg !3745
  %47 = load ptr, ptr %8, align 8, !dbg !3748
  %48 = icmp ne ptr %47, null, !dbg !3748
  br i1 %48, label %49, label %53, !dbg !3750

49:                                               ; preds = %44
  %50 = load ptr, ptr %8, align 8, !dbg !3751
  store i8 0, ptr %50, align 1, !dbg !3753
  %51 = load ptr, ptr %8, align 8, !dbg !3754
  %52 = getelementptr inbounds i8, ptr %51, i32 1, !dbg !3754
  store ptr %52, ptr %8, align 8, !dbg !3754
  br label %53, !dbg !3755

53:                                               ; preds = %49, %44
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3756, metadata !DIExpression()), !dbg !3757
  %54 = load ptr, ptr %7, align 8, !dbg !3758
  %55 = call ptr @strstr(ptr noundef %54, ptr noundef @.str.13) #7, !dbg !3759
  store ptr %55, ptr %9, align 8, !dbg !3757
  %56 = load ptr, ptr %9, align 8, !dbg !3760
  %57 = icmp ne ptr %56, null, !dbg !3760
  br i1 %57, label %67, label %58, !dbg !3762

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8, !dbg !3763
  call void @MyconninfoFree(ptr noundef %59), !dbg !3765
  store ptr null, ptr %5, align 8, !dbg !3766
  %60 = load ptr, ptr %4, align 8, !dbg !3767
  %61 = icmp ne ptr %60, null, !dbg !3767
  br i1 %61, label %62, label %66, !dbg !3769

62:                                               ; preds = %58
  %63 = load ptr, ptr %7, align 8, !dbg !3770
  %64 = call noalias ptr @strdup(ptr noundef %63) #8, !dbg !3772
  %65 = load ptr, ptr %4, align 8, !dbg !3773
  store ptr %64, ptr %65, align 8, !dbg !3774
  br label %66, !dbg !3775

66:                                               ; preds = %62, %58
  br label %419, !dbg !3776

67:                                               ; preds = %53
  %68 = load ptr, ptr %9, align 8, !dbg !3777
  store i8 0, ptr %68, align 1, !dbg !3778
  %69 = load ptr, ptr %7, align 8, !dbg !3779
  %70 = call i32 @strcmp(ptr noundef %69, ptr noundef @.str.14) #7, !dbg !3781
  %71 = icmp ne i32 %70, 0, !dbg !3781
  br i1 %71, label %78, label %72, !dbg !3782

72:                                               ; preds = %67
  %73 = load ptr, ptr %9, align 8, !dbg !3783
  %74 = getelementptr inbounds i8, ptr %73, i64 1, !dbg !3784
  %75 = call noalias ptr @strdup(ptr noundef %74) #8, !dbg !3785
  %76 = load ptr, ptr %5, align 8, !dbg !3786
  %77 = getelementptr inbounds %struct._Myconninfo, ptr %76, i32 0, i32 0, !dbg !3787
  store ptr %75, ptr %77, align 8, !dbg !3788
  br label %417, !dbg !3786

78:                                               ; preds = %67
  %79 = load ptr, ptr %7, align 8, !dbg !3789
  %80 = call i32 @strcmp(ptr noundef %79, ptr noundef @.str.15) #7, !dbg !3791
  %81 = icmp ne i32 %80, 0, !dbg !3791
  br i1 %81, label %88, label %82, !dbg !3792

82:                                               ; preds = %78
  %83 = load ptr, ptr %9, align 8, !dbg !3793
  %84 = getelementptr inbounds i8, ptr %83, i64 1, !dbg !3794
  %85 = call noalias ptr @strdup(ptr noundef %84) #8, !dbg !3795
  %86 = load ptr, ptr %5, align 8, !dbg !3796
  %87 = getelementptr inbounds %struct._Myconninfo, ptr %86, i32 0, i32 0, !dbg !3797
  store ptr %85, ptr %87, align 8, !dbg !3798
  br label %416, !dbg !3796

88:                                               ; preds = %78
  %89 = load ptr, ptr %7, align 8, !dbg !3799
  %90 = call i32 @strcmp(ptr noundef %89, ptr noundef @.str.16) #7, !dbg !3801
  %91 = icmp ne i32 %90, 0, !dbg !3801
  br i1 %91, label %98, label %92, !dbg !3802

92:                                               ; preds = %88
  %93 = load ptr, ptr %9, align 8, !dbg !3803
  %94 = getelementptr inbounds i8, ptr %93, i64 1, !dbg !3804
  %95 = call noalias ptr @strdup(ptr noundef %94) #8, !dbg !3805
  %96 = load ptr, ptr %5, align 8, !dbg !3806
  %97 = getelementptr inbounds %struct._Myconninfo, ptr %96, i32 0, i32 0, !dbg !3807
  store ptr %95, ptr %97, align 8, !dbg !3808
  br label %415, !dbg !3806

98:                                               ; preds = %88
  %99 = load ptr, ptr %7, align 8, !dbg !3809
  %100 = call i32 @strcmp(ptr noundef %99, ptr noundef @.str.17) #7, !dbg !3811
  %101 = icmp ne i32 %100, 0, !dbg !3811
  br i1 %101, label %108, label %102, !dbg !3812

102:                                              ; preds = %98
  %103 = load ptr, ptr %9, align 8, !dbg !3813
  %104 = getelementptr inbounds i8, ptr %103, i64 1, !dbg !3814
  %105 = call noalias ptr @strdup(ptr noundef %104) #8, !dbg !3815
  %106 = load ptr, ptr %5, align 8, !dbg !3816
  %107 = getelementptr inbounds %struct._Myconninfo, ptr %106, i32 0, i32 0, !dbg !3817
  store ptr %105, ptr %107, align 8, !dbg !3818
  br label %414, !dbg !3816

108:                                              ; preds = %98
  %109 = load ptr, ptr %7, align 8, !dbg !3819
  %110 = call i32 @strcmp(ptr noundef %109, ptr noundef @.str.18) #7, !dbg !3821
  %111 = icmp ne i32 %110, 0, !dbg !3821
  br i1 %111, label %118, label %112, !dbg !3822

112:                                              ; preds = %108
  %113 = load ptr, ptr %9, align 8, !dbg !3823
  %114 = getelementptr inbounds i8, ptr %113, i64 1, !dbg !3824
  %115 = call noalias ptr @strdup(ptr noundef %114) #8, !dbg !3825
  %116 = load ptr, ptr %5, align 8, !dbg !3826
  %117 = getelementptr inbounds %struct._Myconninfo, ptr %116, i32 0, i32 0, !dbg !3827
  store ptr %115, ptr %117, align 8, !dbg !3828
  br label %413, !dbg !3826

118:                                              ; preds = %108
  %119 = load ptr, ptr %7, align 8, !dbg !3829
  %120 = call i32 @strcmp(ptr noundef %119, ptr noundef @.str.19) #7, !dbg !3831
  %121 = icmp ne i32 %120, 0, !dbg !3831
  br i1 %121, label %128, label %122, !dbg !3832

122:                                              ; preds = %118
  %123 = load ptr, ptr %9, align 8, !dbg !3833
  %124 = getelementptr inbounds i8, ptr %123, i64 1, !dbg !3834
  %125 = call noalias ptr @strdup(ptr noundef %124) #8, !dbg !3835
  %126 = load ptr, ptr %5, align 8, !dbg !3836
  %127 = getelementptr inbounds %struct._Myconninfo, ptr %126, i32 0, i32 1, !dbg !3837
  store ptr %125, ptr %127, align 8, !dbg !3838
  br label %412, !dbg !3836

128:                                              ; preds = %118
  %129 = load ptr, ptr %7, align 8, !dbg !3839
  %130 = call i32 @strcmp(ptr noundef %129, ptr noundef @.str.20) #7, !dbg !3841
  %131 = icmp ne i32 %130, 0, !dbg !3841
  br i1 %131, label %138, label %132, !dbg !3842

132:                                              ; preds = %128
  %133 = load ptr, ptr %9, align 8, !dbg !3843
  %134 = getelementptr inbounds i8, ptr %133, i64 1, !dbg !3844
  %135 = call noalias ptr @strdup(ptr noundef %134) #8, !dbg !3845
  %136 = load ptr, ptr %5, align 8, !dbg !3846
  %137 = getelementptr inbounds %struct._Myconninfo, ptr %136, i32 0, i32 1, !dbg !3847
  store ptr %135, ptr %137, align 8, !dbg !3848
  br label %411, !dbg !3846

138:                                              ; preds = %128
  %139 = load ptr, ptr %7, align 8, !dbg !3849
  %140 = call i32 @strcmp(ptr noundef %139, ptr noundef @.str.21) #7, !dbg !3851
  %141 = icmp ne i32 %140, 0, !dbg !3851
  br i1 %141, label %148, label %142, !dbg !3852

142:                                              ; preds = %138
  %143 = load ptr, ptr %9, align 8, !dbg !3853
  %144 = getelementptr inbounds i8, ptr %143, i64 1, !dbg !3854
  %145 = call noalias ptr @strdup(ptr noundef %144) #8, !dbg !3855
  %146 = load ptr, ptr %5, align 8, !dbg !3856
  %147 = getelementptr inbounds %struct._Myconninfo, ptr %146, i32 0, i32 1, !dbg !3857
  store ptr %145, ptr %147, align 8, !dbg !3858
  br label %410, !dbg !3856

148:                                              ; preds = %138
  %149 = load ptr, ptr %7, align 8, !dbg !3859
  %150 = call i32 @strcmp(ptr noundef %149, ptr noundef @.str.22) #7, !dbg !3861
  %151 = icmp ne i32 %150, 0, !dbg !3861
  br i1 %151, label %158, label %152, !dbg !3862

152:                                              ; preds = %148
  %153 = load ptr, ptr %9, align 8, !dbg !3863
  %154 = getelementptr inbounds i8, ptr %153, i64 1, !dbg !3864
  %155 = call noalias ptr @strdup(ptr noundef %154) #8, !dbg !3865
  %156 = load ptr, ptr %5, align 8, !dbg !3866
  %157 = getelementptr inbounds %struct._Myconninfo, ptr %156, i32 0, i32 2, !dbg !3867
  store ptr %155, ptr %157, align 8, !dbg !3868
  br label %409, !dbg !3866

158:                                              ; preds = %148
  %159 = load ptr, ptr %7, align 8, !dbg !3869
  %160 = call i32 @strcmp(ptr noundef %159, ptr noundef @.str.23) #7, !dbg !3871
  %161 = icmp ne i32 %160, 0, !dbg !3871
  br i1 %161, label %168, label %162, !dbg !3872

162:                                              ; preds = %158
  %163 = load ptr, ptr %9, align 8, !dbg !3873
  %164 = getelementptr inbounds i8, ptr %163, i64 1, !dbg !3874
  %165 = call noalias ptr @strdup(ptr noundef %164) #8, !dbg !3875
  %166 = load ptr, ptr %5, align 8, !dbg !3876
  %167 = getelementptr inbounds %struct._Myconninfo, ptr %166, i32 0, i32 2, !dbg !3877
  store ptr %165, ptr %167, align 8, !dbg !3878
  br label %408, !dbg !3876

168:                                              ; preds = %158
  %169 = load ptr, ptr %7, align 8, !dbg !3879
  %170 = call i32 @strcmp(ptr noundef %169, ptr noundef @.str.24) #7, !dbg !3881
  %171 = icmp ne i32 %170, 0, !dbg !3881
  br i1 %171, label %178, label %172, !dbg !3882

172:                                              ; preds = %168
  %173 = load ptr, ptr %9, align 8, !dbg !3883
  %174 = getelementptr inbounds i8, ptr %173, i64 1, !dbg !3884
  %175 = call noalias ptr @strdup(ptr noundef %174) #8, !dbg !3885
  %176 = load ptr, ptr %5, align 8, !dbg !3886
  %177 = getelementptr inbounds %struct._Myconninfo, ptr %176, i32 0, i32 2, !dbg !3887
  store ptr %175, ptr %177, align 8, !dbg !3888
  br label %407, !dbg !3886

178:                                              ; preds = %168
  %179 = load ptr, ptr %7, align 8, !dbg !3889
  %180 = call i32 @strcmp(ptr noundef %179, ptr noundef @.str.25) #7, !dbg !3891
  %181 = icmp ne i32 %180, 0, !dbg !3891
  br i1 %181, label %188, label %182, !dbg !3892

182:                                              ; preds = %178
  %183 = load ptr, ptr %9, align 8, !dbg !3893
  %184 = getelementptr inbounds i8, ptr %183, i64 1, !dbg !3894
  %185 = call noalias ptr @strdup(ptr noundef %184) #8, !dbg !3895
  %186 = load ptr, ptr %5, align 8, !dbg !3896
  %187 = getelementptr inbounds %struct._Myconninfo, ptr %186, i32 0, i32 2, !dbg !3897
  store ptr %185, ptr %187, align 8, !dbg !3898
  br label %406, !dbg !3896

188:                                              ; preds = %178
  %189 = load ptr, ptr %7, align 8, !dbg !3899
  %190 = call i32 @strcmp(ptr noundef %189, ptr noundef @.str.26) #7, !dbg !3901
  %191 = icmp ne i32 %190, 0, !dbg !3901
  br i1 %191, label %198, label %192, !dbg !3902

192:                                              ; preds = %188
  %193 = load ptr, ptr %9, align 8, !dbg !3903
  %194 = getelementptr inbounds i8, ptr %193, i64 1, !dbg !3904
  %195 = call noalias ptr @strdup(ptr noundef %194) #8, !dbg !3905
  %196 = load ptr, ptr %5, align 8, !dbg !3906
  %197 = getelementptr inbounds %struct._Myconninfo, ptr %196, i32 0, i32 3, !dbg !3907
  store ptr %195, ptr %197, align 8, !dbg !3908
  br label %405, !dbg !3906

198:                                              ; preds = %188
  %199 = load ptr, ptr %7, align 8, !dbg !3909
  %200 = call i32 @strcmp(ptr noundef %199, ptr noundef @.str.27) #7, !dbg !3911
  %201 = icmp ne i32 %200, 0, !dbg !3911
  br i1 %201, label %208, label %202, !dbg !3912

202:                                              ; preds = %198
  %203 = load ptr, ptr %9, align 8, !dbg !3913
  %204 = getelementptr inbounds i8, ptr %203, i64 1, !dbg !3914
  %205 = call noalias ptr @strdup(ptr noundef %204) #8, !dbg !3915
  %206 = load ptr, ptr %5, align 8, !dbg !3916
  %207 = getelementptr inbounds %struct._Myconninfo, ptr %206, i32 0, i32 3, !dbg !3917
  store ptr %205, ptr %207, align 8, !dbg !3918
  br label %404, !dbg !3916

208:                                              ; preds = %198
  %209 = load ptr, ptr %7, align 8, !dbg !3919
  %210 = call i32 @strcmp(ptr noundef %209, ptr noundef @.str.28) #7, !dbg !3921
  %211 = icmp ne i32 %210, 0, !dbg !3921
  br i1 %211, label %218, label %212, !dbg !3922

212:                                              ; preds = %208
  %213 = load ptr, ptr %9, align 8, !dbg !3923
  %214 = getelementptr inbounds i8, ptr %213, i64 1, !dbg !3924
  %215 = call noalias ptr @strdup(ptr noundef %214) #8, !dbg !3925
  %216 = load ptr, ptr %5, align 8, !dbg !3926
  %217 = getelementptr inbounds %struct._Myconninfo, ptr %216, i32 0, i32 3, !dbg !3927
  store ptr %215, ptr %217, align 8, !dbg !3928
  br label %403, !dbg !3926

218:                                              ; preds = %208
  %219 = load ptr, ptr %7, align 8, !dbg !3929
  %220 = call i32 @strcmp(ptr noundef %219, ptr noundef @.str.29) #7, !dbg !3931
  %221 = icmp ne i32 %220, 0, !dbg !3931
  br i1 %221, label %228, label %222, !dbg !3932

222:                                              ; preds = %218
  %223 = load ptr, ptr %9, align 8, !dbg !3933
  %224 = getelementptr inbounds i8, ptr %223, i64 1, !dbg !3934
  %225 = call noalias ptr @strdup(ptr noundef %224) #8, !dbg !3935
  %226 = load ptr, ptr %5, align 8, !dbg !3936
  %227 = getelementptr inbounds %struct._Myconninfo, ptr %226, i32 0, i32 3, !dbg !3937
  store ptr %225, ptr %227, align 8, !dbg !3938
  br label %402, !dbg !3936

228:                                              ; preds = %218
  %229 = load ptr, ptr %7, align 8, !dbg !3939
  %230 = call i32 @strcmp(ptr noundef %229, ptr noundef @.str.30) #7, !dbg !3941
  %231 = icmp ne i32 %230, 0, !dbg !3941
  br i1 %231, label %238, label %232, !dbg !3942

232:                                              ; preds = %228
  %233 = load ptr, ptr %9, align 8, !dbg !3943
  %234 = getelementptr inbounds i8, ptr %233, i64 1, !dbg !3944
  %235 = call i32 @atoi(ptr noundef %234) #7, !dbg !3945
  %236 = load ptr, ptr %5, align 8, !dbg !3946
  %237 = getelementptr inbounds %struct._Myconninfo, ptr %236, i32 0, i32 4, !dbg !3947
  store i32 %235, ptr %237, align 8, !dbg !3948
  br label %401, !dbg !3946

238:                                              ; preds = %228
  %239 = load ptr, ptr %7, align 8, !dbg !3949
  %240 = call i32 @strcmp(ptr noundef %239, ptr noundef @.str.31) #7, !dbg !3951
  %241 = icmp ne i32 %240, 0, !dbg !3951
  br i1 %241, label %248, label %242, !dbg !3952

242:                                              ; preds = %238
  %243 = load ptr, ptr %9, align 8, !dbg !3953
  %244 = getelementptr inbounds i8, ptr %243, i64 1, !dbg !3954
  %245 = call i32 @atoi(ptr noundef %244) #7, !dbg !3955
  %246 = load ptr, ptr %5, align 8, !dbg !3956
  %247 = getelementptr inbounds %struct._Myconninfo, ptr %246, i32 0, i32 4, !dbg !3957
  store i32 %245, ptr %247, align 8, !dbg !3958
  br label %400, !dbg !3956

248:                                              ; preds = %238
  %249 = load ptr, ptr %7, align 8, !dbg !3959
  %250 = call i32 @strcmp(ptr noundef %249, ptr noundef @.str.32) #7, !dbg !3961
  %251 = icmp ne i32 %250, 0, !dbg !3961
  br i1 %251, label %258, label %252, !dbg !3962

252:                                              ; preds = %248
  %253 = load ptr, ptr %9, align 8, !dbg !3963
  %254 = getelementptr inbounds i8, ptr %253, i64 1, !dbg !3964
  %255 = call i32 @atoi(ptr noundef %254) #7, !dbg !3965
  %256 = load ptr, ptr %5, align 8, !dbg !3966
  %257 = getelementptr inbounds %struct._Myconninfo, ptr %256, i32 0, i32 5, !dbg !3967
  store i32 %255, ptr %257, align 4, !dbg !3968
  br label %399, !dbg !3966

258:                                              ; preds = %248
  %259 = load ptr, ptr %7, align 8, !dbg !3969
  %260 = call i32 @strcmp(ptr noundef %259, ptr noundef @.str.33) #7, !dbg !3971
  %261 = icmp ne i32 %260, 0, !dbg !3971
  br i1 %261, label %268, label %262, !dbg !3972

262:                                              ; preds = %258
  %263 = load ptr, ptr %9, align 8, !dbg !3973
  %264 = getelementptr inbounds i8, ptr %263, i64 1, !dbg !3974
  %265 = call i32 @atoi(ptr noundef %264) #7, !dbg !3975
  %266 = load ptr, ptr %5, align 8, !dbg !3976
  %267 = getelementptr inbounds %struct._Myconninfo, ptr %266, i32 0, i32 5, !dbg !3977
  store i32 %265, ptr %267, align 4, !dbg !3978
  br label %398, !dbg !3976

268:                                              ; preds = %258
  %269 = load ptr, ptr %7, align 8, !dbg !3979
  %270 = call i32 @strcmp(ptr noundef %269, ptr noundef @.str.34) #7, !dbg !3981
  %271 = icmp ne i32 %270, 0, !dbg !3981
  br i1 %271, label %278, label %272, !dbg !3982

272:                                              ; preds = %268
  %273 = load ptr, ptr %9, align 8, !dbg !3983
  %274 = getelementptr inbounds i8, ptr %273, i64 1, !dbg !3984
  %275 = call i32 @atoi(ptr noundef %274) #7, !dbg !3985
  %276 = load ptr, ptr %5, align 8, !dbg !3986
  %277 = getelementptr inbounds %struct._Myconninfo, ptr %276, i32 0, i32 6, !dbg !3987
  store i32 %275, ptr %277, align 8, !dbg !3988
  br label %397, !dbg !3986

278:                                              ; preds = %268
  %279 = load ptr, ptr %7, align 8, !dbg !3989
  %280 = call i32 @strcmp(ptr noundef %279, ptr noundef @.str.35) #7, !dbg !3991
  %281 = icmp ne i32 %280, 0, !dbg !3991
  br i1 %281, label %288, label %282, !dbg !3992

282:                                              ; preds = %278
  %283 = load ptr, ptr %9, align 8, !dbg !3993
  %284 = getelementptr inbounds i8, ptr %283, i64 1, !dbg !3994
  %285 = call noalias ptr @strdup(ptr noundef %284) #8, !dbg !3995
  %286 = load ptr, ptr %5, align 8, !dbg !3996
  %287 = getelementptr inbounds %struct._Myconninfo, ptr %286, i32 0, i32 7, !dbg !3997
  store ptr %285, ptr %287, align 8, !dbg !3998
  br label %396, !dbg !3996

288:                                              ; preds = %278
  %289 = load ptr, ptr %7, align 8, !dbg !3999
  %290 = call i32 @strcmp(ptr noundef %289, ptr noundef @.str.36) #7, !dbg !4001
  %291 = icmp ne i32 %290, 0, !dbg !4001
  br i1 %291, label %298, label %292, !dbg !4002

292:                                              ; preds = %288
  %293 = load ptr, ptr %9, align 8, !dbg !4003
  %294 = getelementptr inbounds i8, ptr %293, i64 1, !dbg !4004
  %295 = call noalias ptr @strdup(ptr noundef %294) #8, !dbg !4005
  %296 = load ptr, ptr %5, align 8, !dbg !4006
  %297 = getelementptr inbounds %struct._Myconninfo, ptr %296, i32 0, i32 7, !dbg !4007
  store ptr %295, ptr %297, align 8, !dbg !4008
  br label %395, !dbg !4006

298:                                              ; preds = %288
  %299 = load ptr, ptr %7, align 8, !dbg !4009
  %300 = call i32 @strcmp(ptr noundef %299, ptr noundef @.str.37) #7, !dbg !4011
  %301 = icmp ne i32 %300, 0, !dbg !4011
  br i1 %301, label %308, label %302, !dbg !4012

302:                                              ; preds = %298
  %303 = load ptr, ptr %9, align 8, !dbg !4013
  %304 = getelementptr inbounds i8, ptr %303, i64 1, !dbg !4014
  %305 = call noalias ptr @strdup(ptr noundef %304) #8, !dbg !4015
  %306 = load ptr, ptr %5, align 8, !dbg !4016
  %307 = getelementptr inbounds %struct._Myconninfo, ptr %306, i32 0, i32 8, !dbg !4017
  store ptr %305, ptr %307, align 8, !dbg !4018
  br label %394, !dbg !4016

308:                                              ; preds = %298
  %309 = load ptr, ptr %7, align 8, !dbg !4019
  %310 = call i32 @strcmp(ptr noundef %309, ptr noundef @.str.38) #7, !dbg !4021
  %311 = icmp ne i32 %310, 0, !dbg !4021
  br i1 %311, label %318, label %312, !dbg !4022

312:                                              ; preds = %308
  %313 = load ptr, ptr %9, align 8, !dbg !4023
  %314 = getelementptr inbounds i8, ptr %313, i64 1, !dbg !4024
  %315 = call noalias ptr @strdup(ptr noundef %314) #8, !dbg !4025
  %316 = load ptr, ptr %5, align 8, !dbg !4026
  %317 = getelementptr inbounds %struct._Myconninfo, ptr %316, i32 0, i32 8, !dbg !4027
  store ptr %315, ptr %317, align 8, !dbg !4028
  br label %393, !dbg !4026

318:                                              ; preds = %308
  %319 = load ptr, ptr %7, align 8, !dbg !4029
  %320 = call i32 @strcmp(ptr noundef %319, ptr noundef @.str.39) #7, !dbg !4031
  %321 = icmp ne i32 %320, 0, !dbg !4031
  br i1 %321, label %328, label %322, !dbg !4032

322:                                              ; preds = %318
  %323 = load ptr, ptr %9, align 8, !dbg !4033
  %324 = getelementptr inbounds i8, ptr %323, i64 1, !dbg !4034
  %325 = call noalias ptr @strdup(ptr noundef %324) #8, !dbg !4035
  %326 = load ptr, ptr %5, align 8, !dbg !4036
  %327 = getelementptr inbounds %struct._Myconninfo, ptr %326, i32 0, i32 10, !dbg !4037
  store ptr %325, ptr %327, align 8, !dbg !4038
  br label %392, !dbg !4036

328:                                              ; preds = %318
  %329 = load ptr, ptr %7, align 8, !dbg !4039
  %330 = call i32 @strcmp(ptr noundef %329, ptr noundef @.str.40) #7, !dbg !4041
  %331 = icmp ne i32 %330, 0, !dbg !4041
  br i1 %331, label %338, label %332, !dbg !4042

332:                                              ; preds = %328
  %333 = load ptr, ptr %9, align 8, !dbg !4043
  %334 = getelementptr inbounds i8, ptr %333, i64 1, !dbg !4044
  %335 = call noalias ptr @strdup(ptr noundef %334) #8, !dbg !4045
  %336 = load ptr, ptr %5, align 8, !dbg !4046
  %337 = getelementptr inbounds %struct._Myconninfo, ptr %336, i32 0, i32 10, !dbg !4047
  store ptr %335, ptr %337, align 8, !dbg !4048
  br label %391, !dbg !4046

338:                                              ; preds = %328
  %339 = load ptr, ptr %7, align 8, !dbg !4049
  %340 = call i32 @strcmp(ptr noundef %339, ptr noundef @.str.41) #7, !dbg !4051
  %341 = icmp ne i32 %340, 0, !dbg !4051
  br i1 %341, label %348, label %342, !dbg !4052

342:                                              ; preds = %338
  %343 = load ptr, ptr %9, align 8, !dbg !4053
  %344 = getelementptr inbounds i8, ptr %343, i64 1, !dbg !4054
  %345 = call noalias ptr @strdup(ptr noundef %344) #8, !dbg !4055
  %346 = load ptr, ptr %5, align 8, !dbg !4056
  %347 = getelementptr inbounds %struct._Myconninfo, ptr %346, i32 0, i32 9, !dbg !4057
  store ptr %345, ptr %347, align 8, !dbg !4058
  br label %390, !dbg !4056

348:                                              ; preds = %338
  %349 = load ptr, ptr %7, align 8, !dbg !4059
  %350 = call i32 @strcmp(ptr noundef %349, ptr noundef @.str.42) #7, !dbg !4061
  %351 = icmp ne i32 %350, 0, !dbg !4061
  br i1 %351, label %358, label %352, !dbg !4062

352:                                              ; preds = %348
  %353 = load ptr, ptr %9, align 8, !dbg !4063
  %354 = getelementptr inbounds i8, ptr %353, i64 1, !dbg !4064
  %355 = call noalias ptr @strdup(ptr noundef %354) #8, !dbg !4065
  %356 = load ptr, ptr %5, align 8, !dbg !4066
  %357 = getelementptr inbounds %struct._Myconninfo, ptr %356, i32 0, i32 9, !dbg !4067
  store ptr %355, ptr %357, align 8, !dbg !4068
  br label %389, !dbg !4066

358:                                              ; preds = %348
  %359 = load ptr, ptr %7, align 8, !dbg !4069
  %360 = call i32 @strcmp(ptr noundef %359, ptr noundef @.str.43) #7, !dbg !4071
  %361 = icmp ne i32 %360, 0, !dbg !4071
  br i1 %361, label %368, label %362, !dbg !4072

362:                                              ; preds = %358
  %363 = load ptr, ptr %9, align 8, !dbg !4073
  %364 = getelementptr inbounds i8, ptr %363, i64 1, !dbg !4074
  %365 = call noalias ptr @strdup(ptr noundef %364) #8, !dbg !4075
  %366 = load ptr, ptr %5, align 8, !dbg !4076
  %367 = getelementptr inbounds %struct._Myconninfo, ptr %366, i32 0, i32 11, !dbg !4077
  store ptr %365, ptr %367, align 8, !dbg !4078
  br label %388, !dbg !4076

368:                                              ; preds = %358
  %369 = load ptr, ptr %7, align 8, !dbg !4079
  %370 = call i32 @strcmp(ptr noundef %369, ptr noundef @.str.44) #7, !dbg !4081
  %371 = icmp ne i32 %370, 0, !dbg !4081
  br i1 %371, label %378, label %372, !dbg !4082

372:                                              ; preds = %368
  %373 = load ptr, ptr %9, align 8, !dbg !4083
  %374 = getelementptr inbounds i8, ptr %373, i64 1, !dbg !4084
  %375 = call noalias ptr @strdup(ptr noundef %374) #8, !dbg !4085
  %376 = load ptr, ptr %5, align 8, !dbg !4086
  %377 = getelementptr inbounds %struct._Myconninfo, ptr %376, i32 0, i32 11, !dbg !4087
  store ptr %375, ptr %377, align 8, !dbg !4088
  br label %387, !dbg !4086

378:                                              ; preds = %368
  %379 = load ptr, ptr %5, align 8, !dbg !4089
  call void @MyconninfoFree(ptr noundef %379), !dbg !4091
  store ptr null, ptr %5, align 8, !dbg !4092
  %380 = load ptr, ptr %4, align 8, !dbg !4093
  %381 = icmp ne ptr %380, null, !dbg !4093
  br i1 %381, label %382, label %386, !dbg !4095

382:                                              ; preds = %378
  %383 = load ptr, ptr %7, align 8, !dbg !4096
  %384 = call noalias ptr @strdup(ptr noundef %383) #8, !dbg !4098
  %385 = load ptr, ptr %4, align 8, !dbg !4099
  store ptr %384, ptr %385, align 8, !dbg !4100
  br label %386, !dbg !4101

386:                                              ; preds = %382, %378
  br label %419, !dbg !4102

387:                                              ; preds = %372
  br label %388

388:                                              ; preds = %387, %362
  br label %389

389:                                              ; preds = %388, %352
  br label %390

390:                                              ; preds = %389, %342
  br label %391

391:                                              ; preds = %390, %332
  br label %392

392:                                              ; preds = %391, %322
  br label %393

393:                                              ; preds = %392, %312
  br label %394

394:                                              ; preds = %393, %302
  br label %395

395:                                              ; preds = %394, %292
  br label %396

396:                                              ; preds = %395, %282
  br label %397

397:                                              ; preds = %396, %272
  br label %398

398:                                              ; preds = %397, %262
  br label %399

399:                                              ; preds = %398, %252
  br label %400

400:                                              ; preds = %399, %242
  br label %401

401:                                              ; preds = %400, %232
  br label %402

402:                                              ; preds = %401, %222
  br label %403

403:                                              ; preds = %402, %212
  br label %404

404:                                              ; preds = %403, %202
  br label %405

405:                                              ; preds = %404, %192
  br label %406

406:                                              ; preds = %405, %182
  br label %407

407:                                              ; preds = %406, %172
  br label %408

408:                                              ; preds = %407, %162
  br label %409

409:                                              ; preds = %408, %152
  br label %410

410:                                              ; preds = %409, %142
  br label %411

411:                                              ; preds = %410, %132
  br label %412

412:                                              ; preds = %411, %122
  br label %413

413:                                              ; preds = %412, %112
  br label %414

414:                                              ; preds = %413, %102
  br label %415

415:                                              ; preds = %414, %92
  br label %416

416:                                              ; preds = %415, %82
  br label %417

417:                                              ; preds = %416, %72
  %418 = load ptr, ptr %8, align 8, !dbg !4103
  store ptr %418, ptr %7, align 8, !dbg !4104
  br label %18, !dbg !3726, !llvm.loop !4105

419:                                              ; preds = %386, %66, %26
  %420 = load ptr, ptr %6, align 8, !dbg !4107
  call void @free(ptr noundef %420) #8, !dbg !4108
  br label %421, !dbg !4109

421:                                              ; preds = %419, %2
  %422 = load ptr, ptr %5, align 8, !dbg !4110
  %423 = icmp ne ptr %422, null, !dbg !4110
  br i1 %423, label %424, label %461, !dbg !4112

424:                                              ; preds = %421
  %425 = load ptr, ptr %5, align 8, !dbg !4113
  %426 = getelementptr inbounds %struct._Myconninfo, ptr %425, i32 0, i32 1, !dbg !4116
  %427 = load ptr, ptr %426, align 8, !dbg !4116
  %428 = icmp ne ptr %427, null, !dbg !4117
  br i1 %428, label %433, label %429, !dbg !4118

429:                                              ; preds = %424
  %430 = call noalias ptr @strdup(ptr noundef @.str.45) #8, !dbg !4119
  %431 = load ptr, ptr %5, align 8, !dbg !4120
  %432 = getelementptr inbounds %struct._Myconninfo, ptr %431, i32 0, i32 1, !dbg !4121
  store ptr %430, ptr %432, align 8, !dbg !4122
  br label %433, !dbg !4120

433:                                              ; preds = %429, %424
  %434 = load ptr, ptr %5, align 8, !dbg !4123
  %435 = getelementptr inbounds %struct._Myconninfo, ptr %434, i32 0, i32 0, !dbg !4125
  %436 = load ptr, ptr %435, align 8, !dbg !4125
  %437 = icmp ne ptr %436, null, !dbg !4126
  br i1 %437, label %442, label %438, !dbg !4127

438:                                              ; preds = %433
  %439 = call noalias ptr @strdup(ptr noundef @.str.46) #8, !dbg !4128
  %440 = load ptr, ptr %5, align 8, !dbg !4129
  %441 = getelementptr inbounds %struct._Myconninfo, ptr %440, i32 0, i32 0, !dbg !4130
  store ptr %439, ptr %441, align 8, !dbg !4131
  br label %442, !dbg !4129

442:                                              ; preds = %438, %433
  %443 = load ptr, ptr %5, align 8, !dbg !4132
  %444 = getelementptr inbounds %struct._Myconninfo, ptr %443, i32 0, i32 2, !dbg !4134
  %445 = load ptr, ptr %444, align 8, !dbg !4134
  %446 = icmp ne ptr %445, null, !dbg !4135
  br i1 %446, label %451, label %447, !dbg !4136

447:                                              ; preds = %442
  %448 = call noalias ptr @strdup(ptr noundef @.str.47) #8, !dbg !4137
  %449 = load ptr, ptr %5, align 8, !dbg !4138
  %450 = getelementptr inbounds %struct._Myconninfo, ptr %449, i32 0, i32 2, !dbg !4139
  store ptr %448, ptr %450, align 8, !dbg !4140
  br label %451, !dbg !4138

451:                                              ; preds = %447, %442
  %452 = load ptr, ptr %5, align 8, !dbg !4141
  %453 = getelementptr inbounds %struct._Myconninfo, ptr %452, i32 0, i32 3, !dbg !4143
  %454 = load ptr, ptr %453, align 8, !dbg !4143
  %455 = icmp ne ptr %454, null, !dbg !4144
  br i1 %455, label %460, label %456, !dbg !4145

456:                                              ; preds = %451
  %457 = call noalias ptr @strdup(ptr noundef @.str.47) #8, !dbg !4146
  %458 = load ptr, ptr %5, align 8, !dbg !4147
  %459 = getelementptr inbounds %struct._Myconninfo, ptr %458, i32 0, i32 3, !dbg !4148
  store ptr %457, ptr %459, align 8, !dbg !4149
  br label %460, !dbg !4147

460:                                              ; preds = %456, %451
  br label %461, !dbg !4150

461:                                              ; preds = %460, %421
  %462 = load ptr, ptr %5, align 8, !dbg !4151
  ret ptr %462, !dbg !4152
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MyconninfoFree(ptr noundef %0) #0 !dbg !4153 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4156, metadata !DIExpression()), !dbg !4157
  %3 = load ptr, ptr %2, align 8, !dbg !4158
  %4 = icmp ne ptr %3, null, !dbg !4158
  br i1 %4, label %5, label %88, !dbg !4160

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !4161
  %7 = getelementptr inbounds %struct._Myconninfo, ptr %6, i32 0, i32 0, !dbg !4164
  %8 = load ptr, ptr %7, align 8, !dbg !4164
  %9 = icmp ne ptr %8, null, !dbg !4161
  br i1 %9, label %10, label %14, !dbg !4165

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !4166
  %12 = getelementptr inbounds %struct._Myconninfo, ptr %11, i32 0, i32 0, !dbg !4167
  %13 = load ptr, ptr %12, align 8, !dbg !4167
  call void @free(ptr noundef %13) #8, !dbg !4168
  br label %14, !dbg !4168

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !4169
  %16 = getelementptr inbounds %struct._Myconninfo, ptr %15, i32 0, i32 1, !dbg !4171
  %17 = load ptr, ptr %16, align 8, !dbg !4171
  %18 = icmp ne ptr %17, null, !dbg !4169
  br i1 %18, label %19, label %23, !dbg !4172

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !dbg !4173
  %21 = getelementptr inbounds %struct._Myconninfo, ptr %20, i32 0, i32 1, !dbg !4174
  %22 = load ptr, ptr %21, align 8, !dbg !4174
  call void @free(ptr noundef %22) #8, !dbg !4175
  br label %23, !dbg !4175

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %2, align 8, !dbg !4176
  %25 = getelementptr inbounds %struct._Myconninfo, ptr %24, i32 0, i32 2, !dbg !4178
  %26 = load ptr, ptr %25, align 8, !dbg !4178
  %27 = icmp ne ptr %26, null, !dbg !4176
  br i1 %27, label %28, label %32, !dbg !4179

28:                                               ; preds = %23
  %29 = load ptr, ptr %2, align 8, !dbg !4180
  %30 = getelementptr inbounds %struct._Myconninfo, ptr %29, i32 0, i32 2, !dbg !4181
  %31 = load ptr, ptr %30, align 8, !dbg !4181
  call void @free(ptr noundef %31) #8, !dbg !4182
  br label %32, !dbg !4182

32:                                               ; preds = %28, %23
  %33 = load ptr, ptr %2, align 8, !dbg !4183
  %34 = getelementptr inbounds %struct._Myconninfo, ptr %33, i32 0, i32 3, !dbg !4185
  %35 = load ptr, ptr %34, align 8, !dbg !4185
  %36 = icmp ne ptr %35, null, !dbg !4183
  br i1 %36, label %37, label %41, !dbg !4186

37:                                               ; preds = %32
  %38 = load ptr, ptr %2, align 8, !dbg !4187
  %39 = getelementptr inbounds %struct._Myconninfo, ptr %38, i32 0, i32 3, !dbg !4188
  %40 = load ptr, ptr %39, align 8, !dbg !4188
  call void @free(ptr noundef %40) #8, !dbg !4189
  br label %41, !dbg !4189

41:                                               ; preds = %37, %32
  %42 = load ptr, ptr %2, align 8, !dbg !4190
  %43 = getelementptr inbounds %struct._Myconninfo, ptr %42, i32 0, i32 7, !dbg !4192
  %44 = load ptr, ptr %43, align 8, !dbg !4192
  %45 = icmp ne ptr %44, null, !dbg !4190
  br i1 %45, label %46, label %50, !dbg !4193

46:                                               ; preds = %41
  %47 = load ptr, ptr %2, align 8, !dbg !4194
  %48 = getelementptr inbounds %struct._Myconninfo, ptr %47, i32 0, i32 7, !dbg !4195
  %49 = load ptr, ptr %48, align 8, !dbg !4195
  call void @free(ptr noundef %49) #8, !dbg !4196
  br label %50, !dbg !4196

50:                                               ; preds = %46, %41
  %51 = load ptr, ptr %2, align 8, !dbg !4197
  %52 = getelementptr inbounds %struct._Myconninfo, ptr %51, i32 0, i32 8, !dbg !4199
  %53 = load ptr, ptr %52, align 8, !dbg !4199
  %54 = icmp ne ptr %53, null, !dbg !4197
  br i1 %54, label %55, label %59, !dbg !4200

55:                                               ; preds = %50
  %56 = load ptr, ptr %2, align 8, !dbg !4201
  %57 = getelementptr inbounds %struct._Myconninfo, ptr %56, i32 0, i32 8, !dbg !4202
  %58 = load ptr, ptr %57, align 8, !dbg !4202
  call void @free(ptr noundef %58) #8, !dbg !4203
  br label %59, !dbg !4203

59:                                               ; preds = %55, %50
  %60 = load ptr, ptr %2, align 8, !dbg !4204
  %61 = getelementptr inbounds %struct._Myconninfo, ptr %60, i32 0, i32 9, !dbg !4206
  %62 = load ptr, ptr %61, align 8, !dbg !4206
  %63 = icmp ne ptr %62, null, !dbg !4204
  br i1 %63, label %64, label %68, !dbg !4207

64:                                               ; preds = %59
  %65 = load ptr, ptr %2, align 8, !dbg !4208
  %66 = getelementptr inbounds %struct._Myconninfo, ptr %65, i32 0, i32 9, !dbg !4209
  %67 = load ptr, ptr %66, align 8, !dbg !4209
  call void @free(ptr noundef %67) #8, !dbg !4210
  br label %68, !dbg !4210

68:                                               ; preds = %64, %59
  %69 = load ptr, ptr %2, align 8, !dbg !4211
  %70 = getelementptr inbounds %struct._Myconninfo, ptr %69, i32 0, i32 10, !dbg !4213
  %71 = load ptr, ptr %70, align 8, !dbg !4213
  %72 = icmp ne ptr %71, null, !dbg !4211
  br i1 %72, label %73, label %77, !dbg !4214

73:                                               ; preds = %68
  %74 = load ptr, ptr %2, align 8, !dbg !4215
  %75 = getelementptr inbounds %struct._Myconninfo, ptr %74, i32 0, i32 10, !dbg !4216
  %76 = load ptr, ptr %75, align 8, !dbg !4216
  call void @free(ptr noundef %76) #8, !dbg !4217
  br label %77, !dbg !4217

77:                                               ; preds = %73, %68
  %78 = load ptr, ptr %2, align 8, !dbg !4218
  %79 = getelementptr inbounds %struct._Myconninfo, ptr %78, i32 0, i32 11, !dbg !4220
  %80 = load ptr, ptr %79, align 8, !dbg !4220
  %81 = icmp ne ptr %80, null, !dbg !4218
  br i1 %81, label %82, label %86, !dbg !4221

82:                                               ; preds = %77
  %83 = load ptr, ptr %2, align 8, !dbg !4222
  %84 = getelementptr inbounds %struct._Myconninfo, ptr %83, i32 0, i32 11, !dbg !4223
  %85 = load ptr, ptr %84, align 8, !dbg !4223
  call void @free(ptr noundef %85) #8, !dbg !4224
  br label %86, !dbg !4224

86:                                               ; preds = %82, %77
  %87 = load ptr, ptr %2, align 8, !dbg !4225
  call void @llvm.memset.p0.i64(ptr align 8 %87, i8 0, i64 88, i1 false), !dbg !4226
  br label %88, !dbg !4227

88:                                               ; preds = %86, %1
  ret void, !dbg !4228
}

declare ptr @mysql_init(ptr noundef) #3

declare i32 @mysql_options(ptr noundef, i32 noundef, ptr noundef) #3

declare zeroext i1 @mysql_ssl_set(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @mysql_real_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #3

declare i32 @mysql_select_db(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

declare i64 @get_hmackey_size(i32 noundef) #3

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #5

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @ur_string_map_create(ptr noundef) #3

declare ptr @get_realm(ptr noundef) #3

declare i32 @ur_string_map_put(ptr noundef, ptr noundef, ptr noundef) #3

declare void @update_o_to_realm(ptr noundef) #3

declare void @lock_realms() #3

declare void @unlock_realms() #3

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i64 @strtoull(ptr noundef, ptr noundef, i32 noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!927, !928, !929, !930, !931, !932, !933}
!llvm.ident = !{!934}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "driver", scope: !2, file: !320, line: 1275, type: !816, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !120, globals: !345, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mysql.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "e7f291ca284da95292c85ab7d47216ff")
!4 = !{!5, !43, !50, !55, !62, !110}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_field_types", file: !6, line: 53, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/mysql/field_types.h", directory: "", checksumkind: CSK_MD5, checksum: "1dac89ddf305112c87b3c4620861815a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!9 = !DIEnumerator(name: "MYSQL_TYPE_DECIMAL", value: 0)
!10 = !DIEnumerator(name: "MYSQL_TYPE_TINY", value: 1)
!11 = !DIEnumerator(name: "MYSQL_TYPE_SHORT", value: 2)
!12 = !DIEnumerator(name: "MYSQL_TYPE_LONG", value: 3)
!13 = !DIEnumerator(name: "MYSQL_TYPE_FLOAT", value: 4)
!14 = !DIEnumerator(name: "MYSQL_TYPE_DOUBLE", value: 5)
!15 = !DIEnumerator(name: "MYSQL_TYPE_NULL", value: 6)
!16 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP", value: 7)
!17 = !DIEnumerator(name: "MYSQL_TYPE_LONGLONG", value: 8)
!18 = !DIEnumerator(name: "MYSQL_TYPE_INT24", value: 9)
!19 = !DIEnumerator(name: "MYSQL_TYPE_DATE", value: 10)
!20 = !DIEnumerator(name: "MYSQL_TYPE_TIME", value: 11)
!21 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME", value: 12)
!22 = !DIEnumerator(name: "MYSQL_TYPE_YEAR", value: 13)
!23 = !DIEnumerator(name: "MYSQL_TYPE_NEWDATE", value: 14)
!24 = !DIEnumerator(name: "MYSQL_TYPE_VARCHAR", value: 15)
!25 = !DIEnumerator(name: "MYSQL_TYPE_BIT", value: 16)
!26 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP2", value: 17)
!27 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME2", value: 18)
!28 = !DIEnumerator(name: "MYSQL_TYPE_TIME2", value: 19)
!29 = !DIEnumerator(name: "MYSQL_TYPE_TYPED_ARRAY", value: 20)
!30 = !DIEnumerator(name: "MYSQL_TYPE_INVALID", value: 243)
!31 = !DIEnumerator(name: "MYSQL_TYPE_BOOL", value: 244)
!32 = !DIEnumerator(name: "MYSQL_TYPE_JSON", value: 245)
!33 = !DIEnumerator(name: "MYSQL_TYPE_NEWDECIMAL", value: 246)
!34 = !DIEnumerator(name: "MYSQL_TYPE_ENUM", value: 247)
!35 = !DIEnumerator(name: "MYSQL_TYPE_SET", value: 248)
!36 = !DIEnumerator(name: "MYSQL_TYPE_TINY_BLOB", value: 249)
!37 = !DIEnumerator(name: "MYSQL_TYPE_MEDIUM_BLOB", value: 250)
!38 = !DIEnumerator(name: "MYSQL_TYPE_LONG_BLOB", value: 251)
!39 = !DIEnumerator(name: "MYSQL_TYPE_BLOB", value: 252)
!40 = !DIEnumerator(name: "MYSQL_TYPE_VAR_STRING", value: 253)
!41 = !DIEnumerator(name: "MYSQL_TYPE_STRING", value: 254)
!42 = !DIEnumerator(name: "MYSQL_TYPE_GEOMETRY", value: 255)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mysql_status", file: !44, line: 256, baseType: !7, size: 32, elements: !45)
!44 = !DIFile(filename: "/usr/include/mysql/mysql.h", directory: "", checksumkind: CSK_MD5, checksum: "1247b3d6239b685fabf3391bf8ffe6e9")
!45 = !{!46, !47, !48, !49}
!46 = !DIEnumerator(name: "MYSQL_STATUS_READY", value: 0)
!47 = !DIEnumerator(name: "MYSQL_STATUS_GET_RESULT", value: 1)
!48 = !DIEnumerator(name: "MYSQL_STATUS_USE_RESULT", value: 2)
!49 = !DIEnumerator(name: "MYSQL_STATUS_STATEMENT_GET_RESULT", value: 3)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_resultset_metadata", file: !51, line: 1024, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "/usr/include/mysql/mysql_com.h", directory: "", checksumkind: CSK_MD5, checksum: "948b54ebe3c9fc7d454d9a6494ddab54")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "RESULTSET_METADATA_NONE", value: 0)
!54 = !DIEnumerator(name: "RESULTSET_METADATA_FULL", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 47, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!59 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!60 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!61 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mysql_option", file: !44, line: 170, baseType: !7, size: 32, elements: !63)
!63 = !{!64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!64 = !DIEnumerator(name: "MYSQL_OPT_CONNECT_TIMEOUT", value: 0)
!65 = !DIEnumerator(name: "MYSQL_OPT_COMPRESS", value: 1)
!66 = !DIEnumerator(name: "MYSQL_OPT_NAMED_PIPE", value: 2)
!67 = !DIEnumerator(name: "MYSQL_INIT_COMMAND", value: 3)
!68 = !DIEnumerator(name: "MYSQL_READ_DEFAULT_FILE", value: 4)
!69 = !DIEnumerator(name: "MYSQL_READ_DEFAULT_GROUP", value: 5)
!70 = !DIEnumerator(name: "MYSQL_SET_CHARSET_DIR", value: 6)
!71 = !DIEnumerator(name: "MYSQL_SET_CHARSET_NAME", value: 7)
!72 = !DIEnumerator(name: "MYSQL_OPT_LOCAL_INFILE", value: 8)
!73 = !DIEnumerator(name: "MYSQL_OPT_PROTOCOL", value: 9)
!74 = !DIEnumerator(name: "MYSQL_SHARED_MEMORY_BASE_NAME", value: 10)
!75 = !DIEnumerator(name: "MYSQL_OPT_READ_TIMEOUT", value: 11)
!76 = !DIEnumerator(name: "MYSQL_OPT_WRITE_TIMEOUT", value: 12)
!77 = !DIEnumerator(name: "MYSQL_OPT_USE_RESULT", value: 13)
!78 = !DIEnumerator(name: "MYSQL_REPORT_DATA_TRUNCATION", value: 14)
!79 = !DIEnumerator(name: "MYSQL_OPT_RECONNECT", value: 15)
!80 = !DIEnumerator(name: "MYSQL_PLUGIN_DIR", value: 16)
!81 = !DIEnumerator(name: "MYSQL_DEFAULT_AUTH", value: 17)
!82 = !DIEnumerator(name: "MYSQL_OPT_BIND", value: 18)
!83 = !DIEnumerator(name: "MYSQL_OPT_SSL_KEY", value: 19)
!84 = !DIEnumerator(name: "MYSQL_OPT_SSL_CERT", value: 20)
!85 = !DIEnumerator(name: "MYSQL_OPT_SSL_CA", value: 21)
!86 = !DIEnumerator(name: "MYSQL_OPT_SSL_CAPATH", value: 22)
!87 = !DIEnumerator(name: "MYSQL_OPT_SSL_CIPHER", value: 23)
!88 = !DIEnumerator(name: "MYSQL_OPT_SSL_CRL", value: 24)
!89 = !DIEnumerator(name: "MYSQL_OPT_SSL_CRLPATH", value: 25)
!90 = !DIEnumerator(name: "MYSQL_OPT_CONNECT_ATTR_RESET", value: 26)
!91 = !DIEnumerator(name: "MYSQL_OPT_CONNECT_ATTR_ADD", value: 27)
!92 = !DIEnumerator(name: "MYSQL_OPT_CONNECT_ATTR_DELETE", value: 28)
!93 = !DIEnumerator(name: "MYSQL_SERVER_PUBLIC_KEY", value: 29)
!94 = !DIEnumerator(name: "MYSQL_ENABLE_CLEARTEXT_PLUGIN", value: 30)
!95 = !DIEnumerator(name: "MYSQL_OPT_CAN_HANDLE_EXPIRED_PASSWORDS", value: 31)
!96 = !DIEnumerator(name: "MYSQL_OPT_MAX_ALLOWED_PACKET", value: 32)
!97 = !DIEnumerator(name: "MYSQL_OPT_NET_BUFFER_LENGTH", value: 33)
!98 = !DIEnumerator(name: "MYSQL_OPT_TLS_VERSION", value: 34)
!99 = !DIEnumerator(name: "MYSQL_OPT_SSL_MODE", value: 35)
!100 = !DIEnumerator(name: "MYSQL_OPT_GET_SERVER_PUBLIC_KEY", value: 36)
!101 = !DIEnumerator(name: "MYSQL_OPT_RETRY_COUNT", value: 37)
!102 = !DIEnumerator(name: "MYSQL_OPT_OPTIONAL_RESULTSET_METADATA", value: 38)
!103 = !DIEnumerator(name: "MYSQL_OPT_SSL_FIPS_MODE", value: 39)
!104 = !DIEnumerator(name: "MYSQL_OPT_TLS_CIPHERSUITES", value: 40)
!105 = !DIEnumerator(name: "MYSQL_OPT_COMPRESSION_ALGORITHMS", value: 41)
!106 = !DIEnumerator(name: "MYSQL_OPT_ZSTD_COMPRESSION_LEVEL", value: 42)
!107 = !DIEnumerator(name: "MYSQL_OPT_LOAD_DATA_LOCAL_DIR", value: 43)
!108 = !DIEnumerator(name: "MYSQL_OPT_USER_PASSWORD", value: 44)
!109 = !DIEnumerator(name: "MYSQL_OPT_SSL_SESSION_DATA", value: 45)
!110 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !111, line: 160, baseType: !112, size: 32, elements: !113)
!111 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!112 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!113 = !{!114, !115, !116, !117, !118, !119}
!114 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!115 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!116 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!117 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!118 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!119 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!120 = !{!121, !132, !134, !318, !7, !112, !152, !277, !335, !337, !338, !340, !342, !224, !343}
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "block128_f", file: !122, line: 25, baseType: !123)
!122 = !DIFile(filename: "/usr/include/openssl/modes.h", directory: "", checksumkind: CSK_MD5, checksum: "4d7254b8c0e88f21372dfaf8e30599a1")
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !126, !129, !130}
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL", file: !44, line: 337, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL", file: !44, line: 299, size: 9280, elements: !137)
!137 = !{!138, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !194, !220, !223, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !292, !293, !294, !295, !296, !300, !310, !314, !315, !317}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !136, file: !44, line: 300, baseType: !139, size: 5312)
!139 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET", file: !51, line: 947, baseType: !140)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NET", file: !51, line: 914, size: 5312, elements: !141)
!141 = !{!142, !145, !146, !147, !148, !149, !151, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !166, !167, !168, !170, !171, !172, !176, !180}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "vio", scope: !140, file: !51, line: 915, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vio", file: !51, line: 894, flags: DIFlagFwdDecl)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !140, file: !51, line: 916, baseType: !129, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "buff_end", scope: !140, file: !51, line: 916, baseType: !129, size: 64, offset: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !140, file: !51, line: 916, baseType: !129, size: 64, offset: 192)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !140, file: !51, line: 916, baseType: !129, size: 64, offset: 256)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !140, file: !51, line: 917, baseType: !150, size: 32, offset: 320)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_socket", file: !44, line: 65, baseType: !112)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "remain_in_buf", scope: !140, file: !51, line: 923, baseType: !152, size: 64, offset: 384)
!152 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !140, file: !51, line: 923, baseType: !152, size: 64, offset: 448)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "buf_length", scope: !140, file: !51, line: 923, baseType: !152, size: 64, offset: 512)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "where_b", scope: !140, file: !51, line: 923, baseType: !152, size: 64, offset: 576)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet", scope: !140, file: !51, line: 924, baseType: !152, size: 64, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !140, file: !51, line: 924, baseType: !152, size: 64, offset: 704)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_nr", scope: !140, file: !51, line: 925, baseType: !7, size: 32, offset: 768)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "compress_pkt_nr", scope: !140, file: !51, line: 925, baseType: !7, size: 32, offset: 800)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !140, file: !51, line: 926, baseType: !7, size: 32, offset: 832)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !140, file: !51, line: 926, baseType: !7, size: 32, offset: 864)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !140, file: !51, line: 926, baseType: !7, size: 32, offset: 896)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "fcntl", scope: !140, file: !51, line: 927, baseType: !112, size: 32, offset: 928)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "return_status", scope: !140, file: !51, line: 928, baseType: !165, size: 64, offset: 960)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "reading_or_writing", scope: !140, file: !51, line: 929, baseType: !128, size: 8, offset: 1024)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "save_char", scope: !140, file: !51, line: 930, baseType: !128, size: 8, offset: 1032)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !140, file: !51, line: 931, baseType: !169, size: 8, offset: 1040)
!169 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !140, file: !51, line: 932, baseType: !7, size: 32, offset: 1056)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !140, file: !51, line: 933, baseType: !128, size: 8, offset: 1088)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !140, file: !51, line: 935, baseType: !173, size: 4096, offset: 1096)
!173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4096, elements: !174)
!174 = !{!175}
!175 = !DISubrange(count: 512)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "sqlstate", scope: !140, file: !51, line: 937, baseType: !177, size: 48, offset: 5192)
!177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 48, elements: !178)
!178 = !{!179}
!179 = !DISubrange(count: 6)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !140, file: !51, line: 946, baseType: !181, size: 64, offset: 5248)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "connector_fd", scope: !136, file: !44, line: 301, baseType: !129, size: 64, offset: 5312)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5376)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5440)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5504)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5568)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "server_version", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5632)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "host_info", scope: !136, file: !44, line: 302, baseType: !132, size: 64, offset: 5696)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !136, file: !44, line: 303, baseType: !132, size: 64, offset: 5760)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !136, file: !44, line: 303, baseType: !132, size: 64, offset: 5824)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !136, file: !44, line: 304, baseType: !192, size: 64, offset: 5888)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHARSET_INFO", file: !44, line: 304, flags: DIFlagFwdDecl)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !136, file: !44, line: 305, baseType: !195, size: 64, offset: 5952)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_FIELD", file: !44, line: 143, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_FIELD", file: !44, line: 121, size: 1024, elements: !198)
!198 = !{!199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !44, line: 122, baseType: !132, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "org_name", scope: !197, file: !44, line: 123, baseType: !132, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !197, file: !44, line: 124, baseType: !132, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "org_table", scope: !197, file: !44, line: 125, baseType: !132, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !197, file: !44, line: 126, baseType: !132, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "catalog", scope: !197, file: !44, line: 127, baseType: !132, size: 64, offset: 320)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !197, file: !44, line: 128, baseType: !132, size: 64, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !197, file: !44, line: 129, baseType: !152, size: 64, offset: 448)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !197, file: !44, line: 130, baseType: !152, size: 64, offset: 512)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !197, file: !44, line: 131, baseType: !7, size: 32, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "org_name_length", scope: !197, file: !44, line: 132, baseType: !7, size: 32, offset: 608)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "table_length", scope: !197, file: !44, line: 133, baseType: !7, size: 32, offset: 640)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "org_table_length", scope: !197, file: !44, line: 134, baseType: !7, size: 32, offset: 672)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "db_length", scope: !197, file: !44, line: 135, baseType: !7, size: 32, offset: 704)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "catalog_length", scope: !197, file: !44, line: 136, baseType: !7, size: 32, offset: 736)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "def_length", scope: !197, file: !44, line: 137, baseType: !7, size: 32, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !197, file: !44, line: 138, baseType: !7, size: 32, offset: 800)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "decimals", scope: !197, file: !44, line: 139, baseType: !7, size: 32, offset: 832)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "charsetnr", scope: !197, file: !44, line: 140, baseType: !7, size: 32, offset: 864)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !197, file: !44, line: 141, baseType: !5, size: 32, offset: 896)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !197, file: !44, line: 142, baseType: !181, size: 64, offset: 960)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "field_alloc", scope: !136, file: !44, line: 306, baseType: !221, size: 64, offset: 6016)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DICompositeType(tag: DW_TAG_structure_type, name: "MEM_ROOT", file: !44, line: 161, flags: DIFlagFwdDecl)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "affected_rows", scope: !136, file: !44, line: 307, baseType: !224, size: 64, offset: 6080)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !225, line: 27, baseType: !226)
!225 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !227, line: 45, baseType: !152)
!227 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!228 = !DIDerivedType(tag: DW_TAG_member, name: "insert_id", scope: !136, file: !44, line: 308, baseType: !224, size: 64, offset: 6144)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "extra_info", scope: !136, file: !44, line: 309, baseType: !224, size: 64, offset: 6208)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !136, file: !44, line: 310, baseType: !152, size: 64, offset: 6272)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !136, file: !44, line: 311, baseType: !152, size: 64, offset: 6336)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !136, file: !44, line: 312, baseType: !7, size: 32, offset: 6400)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !136, file: !44, line: 313, baseType: !152, size: 64, offset: 6464)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "server_capabilities", scope: !136, file: !44, line: 313, baseType: !152, size: 64, offset: 6528)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !136, file: !44, line: 314, baseType: !7, size: 32, offset: 6592)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !136, file: !44, line: 315, baseType: !7, size: 32, offset: 6624)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "server_status", scope: !136, file: !44, line: 316, baseType: !7, size: 32, offset: 6656)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "server_language", scope: !136, file: !44, line: 317, baseType: !7, size: 32, offset: 6688)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "warning_count", scope: !136, file: !44, line: 318, baseType: !7, size: 32, offset: 6720)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !136, file: !44, line: 319, baseType: !241, size: 1920, offset: 6784)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options", file: !44, line: 225, size: 1920, elements: !242)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !279, !283, !287, !288, !289}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !241, file: !44, line: 226, baseType: !7, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !241, file: !44, line: 226, baseType: !7, size: 32, offset: 32)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !241, file: !44, line: 226, baseType: !7, size: 32, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !241, file: !44, line: 227, baseType: !7, size: 32, offset: 96)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !241, file: !44, line: 227, baseType: !7, size: 32, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !241, file: !44, line: 228, baseType: !152, size: 64, offset: 192)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !241, file: !44, line: 229, baseType: !132, size: 64, offset: 256)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !241, file: !44, line: 229, baseType: !132, size: 64, offset: 320)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !241, file: !44, line: 229, baseType: !132, size: 64, offset: 384)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !241, file: !44, line: 229, baseType: !132, size: 64, offset: 448)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !241, file: !44, line: 229, baseType: !132, size: 64, offset: 512)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "init_commands", scope: !241, file: !44, line: 230, baseType: !255, size: 64, offset: 576)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DICompositeType(tag: DW_TAG_structure_type, name: "Init_commands_array", file: !44, line: 230, flags: DIFlagFwdDecl)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_file", scope: !241, file: !44, line: 231, baseType: !132, size: 64, offset: 640)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_group", scope: !241, file: !44, line: 231, baseType: !132, size: 64, offset: 704)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "charset_dir", scope: !241, file: !44, line: 231, baseType: !132, size: 64, offset: 768)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "charset_name", scope: !241, file: !44, line: 231, baseType: !132, size: 64, offset: 832)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_key", scope: !241, file: !44, line: 232, baseType: !132, size: 64, offset: 896)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert", scope: !241, file: !44, line: 233, baseType: !132, size: 64, offset: 960)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ca", scope: !241, file: !44, line: 234, baseType: !132, size: 64, offset: 1024)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_capath", scope: !241, file: !44, line: 235, baseType: !132, size: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cipher", scope: !241, file: !44, line: 236, baseType: !132, size: 64, offset: 1152)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory_base_name", scope: !241, file: !44, line: 237, baseType: !132, size: 64, offset: 1216)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "max_allowed_packet", scope: !241, file: !44, line: 238, baseType: !152, size: 64, offset: 1280)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !241, file: !44, line: 239, baseType: !169, size: 8, offset: 1344)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "named_pipe", scope: !241, file: !44, line: 239, baseType: !169, size: 8, offset: 1352)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "bind_address", scope: !241, file: !44, line: 243, baseType: !132, size: 64, offset: 1408)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "report_data_truncation", scope: !241, file: !44, line: 245, baseType: !169, size: 8, offset: 1472)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_init", scope: !241, file: !44, line: 248, baseType: !273, size: 64, offset: 1536)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{!112, !276, !277, !181}
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_read", scope: !241, file: !44, line: 249, baseType: !280, size: 64, offset: 1600)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!112, !181, !132, !7}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_end", scope: !241, file: !44, line: 250, baseType: !284, size: 64, offset: 1664)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !181}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_error", scope: !241, file: !44, line: 251, baseType: !280, size: 64, offset: 1728)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_userdata", scope: !241, file: !44, line: 252, baseType: !181, size: 64, offset: 1792)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !241, file: !44, line: 253, baseType: !290, size: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options_extention", file: !44, line: 223, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !136, file: !44, line: 320, baseType: !43, size: 32, offset: 8704)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "resultset_metadata", scope: !136, file: !44, line: 321, baseType: !50, size: 32, offset: 8736)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "free_me", scope: !136, file: !44, line: 322, baseType: !169, size: 8, offset: 8768)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !136, file: !44, line: 323, baseType: !169, size: 8, offset: 8776)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "scramble", scope: !136, file: !44, line: 326, baseType: !297, size: 168, offset: 8784)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 168, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 21)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "stmts", scope: !136, file: !44, line: 328, baseType: !301, size: 64, offset: 8960)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIST", file: !303, line: 39, baseType: !304)
!303 = !DIFile(filename: "/usr/include/mysql/my_list.h", directory: "", checksumkind: CSK_MD5, checksum: "2c916b19e4f514cea577a95404bf2fb6")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LIST", file: !303, line: 36, size: 192, elements: !305)
!305 = !{!306, !308, !309}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !304, file: !303, line: 37, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !304, file: !303, line: 37, baseType: !307, size: 64, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !304, file: !303, line: 38, baseType: !181, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !136, file: !44, line: 329, baseType: !311, size: 64, offset: 9024)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_METHODS", file: !44, line: 296, flags: DIFlagFwdDecl)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "thd", scope: !136, file: !44, line: 330, baseType: !181, size: 64, offset: 9088)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_owner", scope: !136, file: !44, line: 335, baseType: !316, size: 64, offset: 9152)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !136, file: !44, line: 336, baseType: !181, size: 64, offset: 9216)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "Myconninfo", file: !320, line: 60, baseType: !321)
!320 = !DIFile(filename: "src/apps/relay/dbdrivers/dbd_mysql.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "e7f291ca284da95292c85ab7d47216ff")
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_Myconninfo", file: !320, line: 43, size: 704, elements: !322)
!322 = !{!323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !321, file: !320, line: 44, baseType: !132, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !321, file: !320, line: 45, baseType: !132, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !321, file: !320, line: 46, baseType: !132, size: 64, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !321, file: !320, line: 47, baseType: !132, size: 64, offset: 192)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !321, file: !320, line: 48, baseType: !7, size: 32, offset: 256)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !321, file: !320, line: 49, baseType: !7, size: 32, offset: 288)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !321, file: !320, line: 50, baseType: !7, size: 32, offset: 320)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !321, file: !320, line: 52, baseType: !132, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ca", scope: !321, file: !320, line: 53, baseType: !132, size: 64, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "cert", scope: !321, file: !320, line: 54, baseType: !132, size: 64, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "capath", scope: !321, file: !320, line: 55, baseType: !132, size: 64, offset: 576)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "cipher", scope: !321, file: !320, line: 56, baseType: !132, size: 64, offset: 640)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !336, line: 225, baseType: !181)
!336 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !336, line: 224, baseType: !132)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !339, line: 67, baseType: !152)
!339 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !341, line: 105, baseType: !112)
!341 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!342 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !225, line: 26, baseType: !344)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !227, line: 42, baseType: !7)
!345 = !{!0, !346, !351, !356, !361, !366, !368, !373, !378, !383, !388, !393, !398, !403, !408, !410, !415, !420, !422, !427, !432, !434, !436, !438, !440, !442, !444, !446, !448, !453, !455, !457, !459, !461, !466, !471, !476, !478, !480, !482, !484, !486, !491, !493, !495, !497, !499, !501, !506, !511, !513, !518, !523, !528, !533, !538, !543, !545, !550, !555, !557, !562, !564, !566, !568, !570, !572, !574, !579, !584, !589, !591, !593, !598, !600, !605, !610, !615, !620, !625, !630, !632, !637, !642, !728, !733, !735, !740, !742, !744, !746, !748, !750, !752, !754, !759, !764, !769, !774, !779, !781, !786, !788, !790, !792, !797, !799, !801, !803, !805, !807, !812, !814}
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !320, line: 307, type: !348, isLocal: true, isDefinition: true)
!348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 376, elements: !349)
!349 = !{!350}
!350 = !DISubrange(count: 47)
!351 = !DIGlobalVariableExpression(var: !352, expr: !DIExpression())
!352 = distinct !DIGlobalVariable(scope: null, file: !320, line: 310, type: !353, isLocal: true, isDefinition: true)
!353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 344, elements: !354)
!354 = !{!355}
!355 = !DISubrange(count: 43)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !320, line: 242, type: !358, isLocal: true, isDefinition: true)
!358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 592, elements: !359)
!359 = !{!360}
!360 = !DISubrange(count: 74)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !320, line: 245, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 560, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 70)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !320, line: 252, type: !353, isLocal: true, isDefinition: true)
!368 = !DIGlobalVariableExpression(var: !369, expr: !DIExpression())
!369 = distinct !DIGlobalVariable(scope: null, file: !320, line: 257, type: !370, isLocal: true, isDefinition: true)
!370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 312, elements: !371)
!371 = !{!372}
!372 = !DISubrange(count: 39)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !320, line: 273, type: !375, isLocal: true, isDefinition: true)
!375 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 432, elements: !376)
!376 = !{!377}
!377 = !DISubrange(count: 54)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !320, line: 277, type: !380, isLocal: true, isDefinition: true)
!380 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 256, elements: !381)
!381 = !{!382}
!382 = !DISubrange(count: 32)
!383 = !DIGlobalVariableExpression(var: !384, expr: !DIExpression())
!384 = distinct !DIGlobalVariable(scope: null, file: !320, line: 281, type: !385, isLocal: true, isDefinition: true)
!385 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 264, elements: !386)
!386 = !{!387}
!387 = !DISubrange(count: 33)
!388 = !DIGlobalVariableExpression(var: !389, expr: !DIExpression())
!389 = distinct !DIGlobalVariable(scope: null, file: !320, line: 283, type: !390, isLocal: true, isDefinition: true)
!390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 280, elements: !391)
!391 = !{!392}
!392 = !DISubrange(count: 35)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !320, line: 284, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 184, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 23)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !320, line: 287, type: !400, isLocal: true, isDefinition: true)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 216, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 27)
!403 = !DIGlobalVariableExpression(var: !404, expr: !DIExpression())
!404 = distinct !DIGlobalVariable(scope: null, file: !320, line: 115, type: !405, isLocal: true, isDefinition: true)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 16, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 2)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !320, line: 121, type: !405, isLocal: true, isDefinition: true)
!410 = !DIGlobalVariableExpression(var: !411, expr: !DIExpression())
!411 = distinct !DIGlobalVariable(scope: null, file: !320, line: 132, type: !412, isLocal: true, isDefinition: true)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 40, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 5)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !320, line: 134, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 24, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 3)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !320, line: 136, type: !412, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !320, line: 138, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 56, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 7)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !320, line: 140, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 72, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 9)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !320, line: 142, type: !424, isLocal: true, isDefinition: true)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !320, line: 144, type: !417, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !320, line: 146, type: !429, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !320, line: 148, type: !412, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !320, line: 150, type: !177, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !320, line: 152, type: !412, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !320, line: 154, type: !429, isLocal: true, isDefinition: true)
!446 = !DIGlobalVariableExpression(var: !447, expr: !DIExpression())
!447 = distinct !DIGlobalVariable(scope: null, file: !320, line: 156, type: !429, isLocal: true, isDefinition: true)
!448 = !DIGlobalVariableExpression(var: !449, expr: !DIExpression())
!449 = distinct !DIGlobalVariable(scope: null, file: !320, line: 158, type: !450, isLocal: true, isDefinition: true)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 4)
!453 = !DIGlobalVariableExpression(var: !454, expr: !DIExpression())
!454 = distinct !DIGlobalVariable(scope: null, file: !320, line: 160, type: !424, isLocal: true, isDefinition: true)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !320, line: 162, type: !424, isLocal: true, isDefinition: true)
!457 = !DIGlobalVariableExpression(var: !458, expr: !DIExpression())
!458 = distinct !DIGlobalVariable(scope: null, file: !320, line: 164, type: !412, isLocal: true, isDefinition: true)
!459 = !DIGlobalVariableExpression(var: !460, expr: !DIExpression())
!460 = distinct !DIGlobalVariable(scope: null, file: !320, line: 166, type: !405, isLocal: true, isDefinition: true)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !320, line: 168, type: !463, isLocal: true, isDefinition: true)
!463 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 128, elements: !464)
!464 = !{!465}
!465 = !DISubrange(count: 16)
!466 = !DIGlobalVariableExpression(var: !467, expr: !DIExpression())
!467 = distinct !DIGlobalVariable(scope: null, file: !320, line: 170, type: !468, isLocal: true, isDefinition: true)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 64, elements: !469)
!469 = !{!470}
!470 = !DISubrange(count: 8)
!471 = !DIGlobalVariableExpression(var: !472, expr: !DIExpression())
!472 = distinct !DIGlobalVariable(scope: null, file: !320, line: 172, type: !473, isLocal: true, isDefinition: true)
!473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 104, elements: !474)
!474 = !{!475}
!475 = !DISubrange(count: 13)
!476 = !DIGlobalVariableExpression(var: !477, expr: !DIExpression())
!477 = distinct !DIGlobalVariable(scope: null, file: !320, line: 174, type: !450, isLocal: true, isDefinition: true)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !320, line: 176, type: !468, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !320, line: 178, type: !417, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !320, line: 180, type: !424, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !320, line: 182, type: !424, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !320, line: 184, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 88, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 11)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !320, line: 186, type: !412, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !320, line: 188, type: !429, isLocal: true, isDefinition: true)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !320, line: 190, type: !424, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !320, line: 192, type: !488, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !320, line: 211, type: !405, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !320, line: 213, type: !503, isLocal: true, isDefinition: true)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 80, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 10)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !320, line: 215, type: !508, isLocal: true, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 1)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(name: "donot_print_connection_success", scope: !2, file: !320, line: 41, type: !112, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !320, line: 349, type: !515, isLocal: true, isDefinition: true)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 64)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !320, line: 358, type: !520, isLocal: true, isDefinition: true)
!520 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 408, elements: !521)
!521 = !{!522}
!522 = !DISubrange(count: 51)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !320, line: 366, type: !525, isLocal: true, isDefinition: true)
!525 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 464, elements: !526)
!526 = !{!527}
!527 = !DISubrange(count: 58)
!528 = !DIGlobalVariableExpression(var: !529, expr: !DIExpression())
!529 = distinct !DIGlobalVariable(scope: null, file: !320, line: 372, type: !530, isLocal: true, isDefinition: true)
!530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 192, elements: !531)
!531 = !{!532}
!532 = !DISubrange(count: 24)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !320, line: 528, type: !535, isLocal: true, isDefinition: true)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 552, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: 69)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !320, line: 533, type: !540, isLocal: true, isDefinition: true)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 544, elements: !541)
!541 = !{!542}
!542 = !DISubrange(count: 68)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !320, line: 538, type: !520, isLocal: true, isDefinition: true)
!545 = !DIGlobalVariableExpression(var: !546, expr: !DIExpression())
!546 = distinct !DIGlobalVariable(scope: null, file: !320, line: 576, type: !547, isLocal: true, isDefinition: true)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 448, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: 56)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !320, line: 579, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 328, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 41)
!555 = !DIGlobalVariableExpression(var: !556, expr: !DIExpression())
!556 = distinct !DIGlobalVariable(scope: null, file: !320, line: 614, type: !540, isLocal: true, isDefinition: true)
!557 = !DIGlobalVariableExpression(var: !558, expr: !DIExpression())
!558 = distinct !DIGlobalVariable(scope: null, file: !320, line: 616, type: !559, isLocal: true, isDefinition: true)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 456, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: 57)
!562 = !DIGlobalVariableExpression(var: !563, expr: !DIExpression())
!563 = distinct !DIGlobalVariable(scope: null, file: !320, line: 644, type: !468, isLocal: true, isDefinition: true)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !320, line: 668, type: !540, isLocal: true, isDefinition: true)
!566 = !DIGlobalVariableExpression(var: !567, expr: !DIExpression())
!567 = distinct !DIGlobalVariable(scope: null, file: !320, line: 670, type: !559, isLocal: true, isDefinition: true)
!568 = !DIGlobalVariableExpression(var: !569, expr: !DIExpression())
!569 = distinct !DIGlobalVariable(scope: null, file: !320, line: 727, type: !552, isLocal: true, isDefinition: true)
!570 = !DIGlobalVariableExpression(var: !571, expr: !DIExpression())
!571 = distinct !DIGlobalVariable(scope: null, file: !320, line: 729, type: !547, isLocal: true, isDefinition: true)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !320, line: 742, type: !547, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !320, line: 747, type: !576, isLocal: true, isDefinition: true)
!576 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 424, elements: !577)
!577 = !{!578}
!578 = !DISubrange(count: 53)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !320, line: 792, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 528, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: 66)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !320, line: 797, type: !586, isLocal: true, isDefinition: true)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 320, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 40)
!589 = !DIGlobalVariableExpression(var: !590, expr: !DIExpression())
!590 = distinct !DIGlobalVariable(scope: null, file: !320, line: 811, type: !520, isLocal: true, isDefinition: true)
!591 = !DIGlobalVariableExpression(var: !592, expr: !DIExpression())
!592 = distinct !DIGlobalVariable(scope: null, file: !320, line: 816, type: !370, isLocal: true, isDefinition: true)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !320, line: 838, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 632, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 79)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !320, line: 840, type: !540, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !320, line: 870, type: !602, isLocal: true, isDefinition: true)
!602 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 96, elements: !603)
!603 = !{!604}
!604 = !DISubrange(count: 12)
!605 = !DIGlobalVariableExpression(var: !606, expr: !DIExpression())
!606 = distinct !DIGlobalVariable(scope: null, file: !320, line: 891, type: !607, isLocal: true, isDefinition: true)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 480, elements: !608)
!608 = !{!609}
!609 = !DISubrange(count: 60)
!610 = !DIGlobalVariableExpression(var: !611, expr: !DIExpression())
!611 = distinct !DIGlobalVariable(scope: null, file: !320, line: 895, type: !612, isLocal: true, isDefinition: true)
!612 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 576, elements: !613)
!613 = !{!614}
!614 = !DISubrange(count: 72)
!615 = !DIGlobalVariableExpression(var: !616, expr: !DIExpression())
!616 = distinct !DIGlobalVariable(scope: null, file: !320, line: 900, type: !617, isLocal: true, isDefinition: true)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 368, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 46)
!620 = !DIGlobalVariableExpression(var: !621, expr: !DIExpression())
!621 = distinct !DIGlobalVariable(scope: null, file: !320, line: 917, type: !622, isLocal: true, isDefinition: true)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 656, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 82)
!625 = !DIGlobalVariableExpression(var: !626, expr: !DIExpression())
!626 = distinct !DIGlobalVariable(scope: null, file: !320, line: 919, type: !627, isLocal: true, isDefinition: true)
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 520, elements: !628)
!628 = !{!629}
!629 = !DISubrange(count: 65)
!630 = !DIGlobalVariableExpression(var: !631, expr: !DIExpression())
!631 = distinct !DIGlobalVariable(scope: null, file: !320, line: 937, type: !488, isLocal: true, isDefinition: true)
!632 = !DIGlobalVariableExpression(var: !633, expr: !DIExpression())
!633 = distinct !DIGlobalVariable(scope: null, file: !320, line: 956, type: !634, isLocal: true, isDefinition: true)
!634 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 240, elements: !635)
!635 = !{!636}
!636 = !DISubrange(count: 30)
!637 = !DIGlobalVariableExpression(var: !638, expr: !DIExpression())
!638 = distinct !DIGlobalVariable(scope: null, file: !320, line: 976, type: !639, isLocal: true, isDefinition: true)
!639 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 304, elements: !640)
!640 = !{!641}
!641 = !DISubrange(count: 38)
!642 = !DIGlobalVariableExpression(var: !643, expr: !DIExpression())
!643 = distinct !DIGlobalVariable(name: "wrong_table_reported", scope: !644, file: !320, line: 980, type: !112, isLocal: true, isDefinition: true)
!644 = distinct !DISubprogram(name: "mysql_get_ip_list", scope: !320, file: !320, line: 971, type: !645, scopeLine: 971, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!645 = !DISubroutineType(types: !646)
!646 = !{!112, !277, !647}
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !649, line: 159, baseType: !650)
!649 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !649, line: 154, size: 128, elements: !651)
!651 = !{!652, !724}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !650, file: !649, line: 155, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !649, line: 152, baseType: !655)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !649, line: 146, size: 6624, elements: !656)
!656 = !{!657, !661, !665}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !655, file: !649, line: 147, baseType: !658, size: 2056)
!658 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2056, elements: !659)
!659 = !{!660}
!660 = !DISubrange(count: 257)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !655, file: !649, line: 148, baseType: !662, size: 4104, offset: 2056)
!662 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 4104, elements: !663)
!663 = !{!664}
!664 = !DISubrange(count: 513)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !655, file: !649, line: 149, baseType: !666, size: 448, offset: 6176)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !667, line: 53, baseType: !668)
!667 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !667, line: 50, size: 448, elements: !669)
!669 = !{!670, !723}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !668, file: !667, line: 51, baseType: !671, size: 224)
!671 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !667, line: 48, baseType: !672)
!672 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !667, line: 44, size: 224, elements: !673)
!673 = !{!674, !686, !702}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !672, file: !667, line: 45, baseType: !675, size: 128)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !676, line: 180, size: 128, elements: !677)
!676 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!677 = !{!678, !682}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !675, file: !676, line: 182, baseType: !679, size: 16)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !680, line: 28, baseType: !681)
!680 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!681 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !675, file: !676, line: 183, baseType: !683, size: 112, offset: 16)
!683 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 112, elements: !684)
!684 = !{!685}
!685 = !DISubrange(count: 14)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !672, file: !667, line: 46, baseType: !687, size: 128)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !688, line: 245, size: 128, elements: !689)
!688 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!689 = !{!690, !691, !695, !700}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !687, file: !688, line: 247, baseType: !679, size: 16)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !687, file: !688, line: 248, baseType: !692, size: 16, offset: 16)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !688, line: 123, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !225, line: 25, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !227, line: 40, baseType: !681)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !687, file: !688, line: 249, baseType: !696, size: 32, offset: 32)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !688, line: 31, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !696, file: !688, line: 33, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !688, line: 30, baseType: !343)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !687, file: !688, line: 252, baseType: !701, size: 64, offset: 64)
!701 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !469)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !672, file: !667, line: 47, baseType: !703, size: 224)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !688, line: 260, size: 224, elements: !704)
!704 = !{!705, !706, !707, !708, !722}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !703, file: !688, line: 262, baseType: !679, size: 16)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !703, file: !688, line: 263, baseType: !692, size: 16, offset: 16)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !703, file: !688, line: 264, baseType: !343, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !703, file: !688, line: 265, baseType: !709, size: 128, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !688, line: 219, size: 128, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !709, file: !688, line: 226, baseType: !712, size: 128)
!712 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !709, file: !688, line: 221, size: 128, elements: !713)
!713 = !{!714, !718, !720}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !712, file: !688, line: 223, baseType: !715, size: 128)
!715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 128, elements: !464)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !225, line: 24, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !227, line: 38, baseType: !128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !712, file: !688, line: 224, baseType: !719, size: 128)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !693, size: 128, elements: !469)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !712, file: !688, line: 225, baseType: !721, size: 128)
!721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !343, size: 128, elements: !451)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !703, file: !688, line: 266, baseType: !343, size: 32, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !668, file: !667, line: 52, baseType: !671, size: 224, offset: 224)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !650, file: !649, line: 156, baseType: !725, size: 64, offset: 64)
!725 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !726, line: 46, baseType: !152)
!726 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!727 = !{}
!728 = !DIGlobalVariableExpression(var: !729, expr: !DIExpression())
!729 = distinct !DIGlobalVariable(scope: null, file: !320, line: 983, type: !730, isLocal: true, isDefinition: true)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1216, elements: !731)
!731 = !{!732}
!732 = !DISubrange(count: 152)
!733 = !DIGlobalVariableExpression(var: !734, expr: !DIExpression())
!734 = distinct !DIGlobalVariable(scope: null, file: !320, line: 985, type: !390, isLocal: true, isDefinition: true)
!735 = !DIGlobalVariableExpression(var: !736, expr: !DIExpression())
!736 = distinct !DIGlobalVariable(scope: null, file: !320, line: 770, type: !737, isLocal: true, isDefinition: true)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 504, elements: !738)
!738 = !{!739}
!739 = !DISubrange(count: 63)
!740 = !DIGlobalVariableExpression(var: !741, expr: !DIExpression())
!741 = distinct !DIGlobalVariable(scope: null, file: !320, line: 772, type: !525, isLocal: true, isDefinition: true)
!742 = !DIGlobalVariableExpression(var: !743, expr: !DIExpression())
!743 = distinct !DIGlobalVariable(scope: null, file: !320, line: 778, type: !348, isLocal: true, isDefinition: true)
!744 = !DIGlobalVariableExpression(var: !745, expr: !DIExpression())
!745 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1028, type: !617, isLocal: true, isDefinition: true)
!746 = !DIGlobalVariableExpression(var: !747, expr: !DIExpression())
!747 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1093, type: !617, isLocal: true, isDefinition: true)
!748 = !DIGlobalVariableExpression(var: !749, expr: !DIExpression())
!749 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1120, type: !468, isLocal: true, isDefinition: true)
!750 = !DIGlobalVariableExpression(var: !751, expr: !DIExpression())
!751 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1122, type: !602, isLocal: true, isDefinition: true)
!752 = !DIGlobalVariableExpression(var: !753, expr: !DIExpression())
!753 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1124, type: !488, isLocal: true, isDefinition: true)
!754 = !DIGlobalVariableExpression(var: !755, expr: !DIExpression())
!755 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1127, type: !756, isLocal: true, isDefinition: true)
!756 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 208, elements: !757)
!757 = !{!758}
!758 = !DISubrange(count: 26)
!759 = !DIGlobalVariableExpression(var: !760, expr: !DIExpression())
!760 = distinct !DIGlobalVariable(scope: null, file: !320, line: 551, type: !761, isLocal: true, isDefinition: true)
!761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 864, elements: !762)
!762 = !{!763}
!763 = !DISubrange(count: 108)
!764 = !DIGlobalVariableExpression(var: !765, expr: !DIExpression())
!765 = distinct !DIGlobalVariable(scope: null, file: !320, line: 556, type: !766, isLocal: true, isDefinition: true)
!766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 832, elements: !767)
!767 = !{!768}
!768 = !DISubrange(count: 104)
!769 = !DIGlobalVariableExpression(var: !770, expr: !DIExpression())
!770 = distinct !DIGlobalVariable(scope: null, file: !320, line: 560, type: !771, isLocal: true, isDefinition: true)
!771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 416, elements: !772)
!772 = !{!773}
!773 = !DISubrange(count: 52)
!774 = !DIGlobalVariableExpression(var: !775, expr: !DIExpression())
!775 = distinct !DIGlobalVariable(scope: null, file: !320, line: 393, type: !776, isLocal: true, isDefinition: true)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 640, elements: !777)
!777 = !{!778}
!778 = !DISubrange(count: 80)
!779 = !DIGlobalVariableExpression(var: !780, expr: !DIExpression())
!780 = distinct !DIGlobalVariable(scope: null, file: !320, line: 592, type: !370, isLocal: true, isDefinition: true)
!781 = !DIGlobalVariableExpression(var: !782, expr: !DIExpression())
!782 = distinct !DIGlobalVariable(scope: null, file: !320, line: 595, type: !783, isLocal: true, isDefinition: true)
!783 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 336, elements: !784)
!784 = !{!785}
!785 = !DISubrange(count: 42)
!786 = !DIGlobalVariableExpression(var: !787, expr: !DIExpression())
!787 = distinct !DIGlobalVariable(scope: null, file: !320, line: 449, type: !622, isLocal: true, isDefinition: true)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(scope: null, file: !320, line: 496, type: !412, isLocal: true, isDefinition: true)
!790 = !DIGlobalVariableExpression(var: !791, expr: !DIExpression())
!791 = distinct !DIGlobalVariable(scope: null, file: !320, line: 501, type: !450, isLocal: true, isDefinition: true)
!792 = !DIGlobalVariableExpression(var: !793, expr: !DIExpression())
!793 = distinct !DIGlobalVariable(scope: null, file: !320, line: 505, type: !794, isLocal: true, isDefinition: true)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 608, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 76)
!797 = !DIGlobalVariableExpression(var: !798, expr: !DIExpression())
!798 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1153, type: !375, isLocal: true, isDefinition: true)
!799 = !DIGlobalVariableExpression(var: !800, expr: !DIExpression())
!800 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1186, type: !540, isLocal: true, isDefinition: true)
!801 = !DIGlobalVariableExpression(var: !802, expr: !DIExpression())
!802 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1191, type: !737, isLocal: true, isDefinition: true)
!803 = !DIGlobalVariableExpression(var: !804, expr: !DIExpression())
!804 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1210, type: !370, isLocal: true, isDefinition: true)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1213, type: !353, isLocal: true, isDefinition: true)
!807 = !DIGlobalVariableExpression(var: !808, expr: !DIExpression())
!808 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1228, type: !809, isLocal: true, isDefinition: true)
!809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 440, elements: !810)
!810 = !{!811}
!811 = !DISubrange(count: 55)
!812 = !DIGlobalVariableExpression(var: !813, expr: !DIExpression())
!813 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1250, type: !450, isLocal: true, isDefinition: true)
!814 = !DIGlobalVariableExpression(var: !815, expr: !DIExpression())
!815 = distinct !DIGlobalVariable(scope: null, file: !320, line: 1270, type: !634, isLocal: true, isDefinition: true)
!816 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !817)
!817 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !818, line: 77, baseType: !819)
!818 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !818, line: 50, size: 1664, elements: !820)
!820 = !{!821, !834, !838, !842, !846, !850, !851, !852, !853, !854, !858, !859, !863, !864, !865, !867, !871, !875, !896, !902, !906, !910, !914, !918, !919, !923}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !819, file: !818, line: 51, baseType: !822, size: 64)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DISubroutineType(types: !824)
!824 = !{!112, !825, !833}
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !827, line: 143, baseType: !828)
!827 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !827, line: 139, size: 128, elements: !829)
!829 = !{!830, !832}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !828, file: !827, line: 140, baseType: !831, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !828, file: !827, line: 141, baseType: !725, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !819, file: !818, line: 52, baseType: !835, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DISubroutineType(types: !837)
!837 = !{!112, !833, !833, !833}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !819, file: !818, line: 53, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!112, !833, !833, !277}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !819, file: !818, line: 54, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!112, !833, !833}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !819, file: !818, line: 55, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!112, !833, !825, !825}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !819, file: !818, line: 56, baseType: !847, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !819, file: !818, line: 57, baseType: !843, size: 64, offset: 384)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !819, file: !818, line: 58, baseType: !843, size: 64, offset: 448)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !819, file: !818, line: 59, baseType: !843, size: 64, offset: 512)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !819, file: !818, line: 60, baseType: !855, size: 64, offset: 576)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{!112, !833}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !819, file: !818, line: 61, baseType: !847, size: 64, offset: 640)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !819, file: !818, line: 62, baseType: !860, size: 64, offset: 704)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DISubroutineType(types: !862)
!862 = !{!112, !833, !152, !277}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !819, file: !818, line: 63, baseType: !855, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !819, file: !818, line: 64, baseType: !284, size: 64, offset: 832)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !819, file: !818, line: 65, baseType: !866, size: 64, offset: 896)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !819, file: !818, line: 66, baseType: !868, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{!112, !277, !833, !277, !112}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !819, file: !818, line: 67, baseType: !872, size: 64, offset: 1024)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DISubroutineType(types: !874)
!874 = !{null, !825}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !819, file: !818, line: 68, baseType: !876, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!112, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !881, line: 144, baseType: !882)
!881 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !881, line: 135, size: 4800, elements: !883)
!883 = !{!884, !888, !889, !890, !891, !892}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !882, file: !881, line: 136, baseType: !885, size: 1032)
!885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1032, elements: !886)
!886 = !{!887}
!887 = !DISubrange(count: 129)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !882, file: !881, line: 137, baseType: !658, size: 2056, offset: 1032)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !882, file: !881, line: 138, baseType: !224, size: 64, offset: 3136)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !882, file: !881, line: 139, baseType: !343, size: 32, offset: 3200)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !882, file: !881, line: 140, baseType: !627, size: 520, offset: 3232)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !882, file: !881, line: 141, baseType: !893, size: 1024, offset: 3752)
!893 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !894)
!894 = !{!895}
!895 = !DISubrange(count: 128)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !819, file: !818, line: 69, baseType: !897, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!112, !900, !879}
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !716)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !819, file: !818, line: 70, baseType: !903, size: 64, offset: 1216)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DISubroutineType(types: !905)
!905 = !{!112, !900}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !819, file: !818, line: 71, baseType: !907, size: 64, offset: 1280)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = !DISubroutineType(types: !909)
!909 = !{!112, !825, !825, !825, !825, !825}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !819, file: !818, line: 72, baseType: !911, size: 64, offset: 1344)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!112, !900, !833, !833}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !819, file: !818, line: 73, baseType: !915, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DISubroutineType(types: !917)
!917 = !{!112, !900, !900, !900}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !819, file: !818, line: 74, baseType: !903, size: 64, offset: 1472)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !819, file: !818, line: 75, baseType: !920, size: 64, offset: 1536)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!112, !112}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !819, file: !818, line: 76, baseType: !924, size: 64, offset: 1600)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null}
!927 = !{i32 7, !"Dwarf Version", i32 5}
!928 = !{i32 2, !"Debug Info Version", i32 3}
!929 = !{i32 1, !"wchar_size", i32 4}
!930 = !{i32 8, !"PIC Level", i32 2}
!931 = !{i32 7, !"PIE Level", i32 2}
!932 = !{i32 7, !"uwtable", i32 2}
!933 = !{i32 7, !"frame-pointer", i32 2}
!934 = !{!"clang version 16.0.0"}
!935 = distinct !DISubprogram(name: "decryptPassword", scope: !320, file: !320, line: 77, type: !936, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !727)
!936 = !DISubroutineType(types: !937)
!937 = !{!132, !132, !126}
!938 = !DILocalVariable(name: "in", arg: 1, scope: !935, file: !320, line: 77, type: !132)
!939 = !DILocation(line: 77, column: 29, scope: !935)
!940 = !DILocalVariable(name: "mykey", arg: 2, scope: !935, file: !320, line: 77, type: !126)
!941 = !DILocation(line: 77, column: 54, scope: !935)
!942 = !DILocalVariable(name: "out", scope: !935, file: !320, line: 79, type: !132)
!943 = !DILocation(line: 79, column: 8, scope: !935)
!944 = !DILocalVariable(name: "iv", scope: !935, file: !320, line: 80, type: !701)
!945 = !DILocation(line: 80, column: 16, scope: !935)
!946 = !DILocalVariable(name: "key", scope: !935, file: !320, line: 81, type: !947)
!947 = !DIDerivedType(tag: DW_TAG_typedef, name: "AES_KEY", file: !948, line: 45, baseType: !949)
!948 = !DIFile(filename: "/usr/include/openssl/aes.h", directory: "", checksumkind: CSK_MD5, checksum: "c985bf41b08156ada84e9c536811221a")
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "aes_key_st", file: !948, line: 37, size: 1952, elements: !950)
!950 = !{!951, !953}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "rd_key", scope: !949, file: !948, line: 41, baseType: !952, size: 1920)
!952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1920, elements: !608)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "rounds", scope: !949, file: !948, line: 43, baseType: !112, size: 32, offset: 1920)
!954 = !DILocation(line: 81, column: 10, scope: !935)
!955 = !DILocalVariable(name: "outdata", scope: !935, file: !320, line: 82, type: !956)
!956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2048, elements: !957)
!957 = !{!958}
!958 = !DISubrange(count: 256)
!959 = !DILocation(line: 82, column: 16, scope: !935)
!960 = !DILocation(line: 83, column: 22, scope: !935)
!961 = !DILocation(line: 83, column: 2, scope: !935)
!962 = !DILocalVariable(name: "newTotalSize", scope: !935, file: !320, line: 84, type: !112)
!963 = !DILocation(line: 84, column: 6, scope: !935)
!964 = !DILocation(line: 84, column: 35, scope: !935)
!965 = !DILocation(line: 84, column: 19, scope: !935)
!966 = !DILocalVariable(name: "bytes_to_decode", scope: !935, file: !320, line: 85, type: !112)
!967 = !DILocation(line: 85, column: 6, scope: !935)
!968 = !DILocation(line: 85, column: 31, scope: !935)
!969 = !DILocation(line: 85, column: 24, scope: !935)
!970 = !DILocalVariable(name: "encryptedText", scope: !935, file: !320, line: 86, type: !129)
!971 = !DILocation(line: 86, column: 17, scope: !935)
!972 = !DILocation(line: 86, column: 46, scope: !935)
!973 = !DILocation(line: 86, column: 50, scope: !935)
!974 = !DILocation(line: 86, column: 33, scope: !935)
!975 = !DILocalVariable(name: "last", scope: !935, file: !320, line: 87, type: !976)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8192, elements: !977)
!977 = !{!978}
!978 = !DISubrange(count: 1024)
!979 = !DILocation(line: 87, column: 7, scope: !935)
!980 = !DILocalVariable(name: "state", scope: !935, file: !320, line: 88, type: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ctr_state", file: !982, line: 394, size: 288, elements: !983)
!982 = !DIFile(filename: "src/apps/relay/dbdrivers/../mainrelay.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1acca21bed3a1df5ba7170d81a649a58")
!983 = !{!984, !986, !987}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ivec", scope: !981, file: !982, line: 395, baseType: !985, size: 128)
!985 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 128, elements: !464)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !981, file: !982, line: 396, baseType: !7, size: 32, offset: 128)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "ecount", scope: !981, file: !982, line: 397, baseType: !985, size: 128, offset: 160)
!988 = !DILocation(line: 88, column: 19, scope: !935)
!989 = !DILocation(line: 89, column: 19, scope: !935)
!990 = !DILocation(line: 89, column: 2, scope: !935)
!991 = !DILocation(line: 90, column: 2, scope: !935)
!992 = !DILocation(line: 93, column: 24, scope: !935)
!993 = !DILocation(line: 93, column: 39, scope: !935)
!994 = !DILocation(line: 93, column: 48, scope: !935)
!995 = !DILocation(line: 93, column: 74, scope: !935)
!996 = !DILocation(line: 93, column: 68, scope: !935)
!997 = !DILocation(line: 93, column: 86, scope: !935)
!998 = !DILocation(line: 93, column: 80, scope: !935)
!999 = !DILocation(line: 93, column: 101, scope: !935)
!1000 = !DILocation(line: 93, column: 2, scope: !935)
!1001 = !DILocation(line: 98, column: 9, scope: !935)
!1002 = !DILocation(line: 98, column: 21, scope: !935)
!1003 = !DILocation(line: 98, column: 2, scope: !935)
!1004 = !DILocation(line: 99, column: 40, scope: !935)
!1005 = !DILocation(line: 99, column: 33, scope: !935)
!1006 = !DILocation(line: 99, column: 32, scope: !935)
!1007 = !DILocation(line: 99, column: 13, scope: !935)
!1008 = !DILocation(line: 99, column: 5, scope: !935)
!1009 = !DILocation(line: 100, column: 9, scope: !935)
!1010 = !DILocation(line: 100, column: 13, scope: !935)
!1011 = !DILocation(line: 100, column: 2, scope: !935)
!1012 = !DILocation(line: 101, column: 9, scope: !935)
!1013 = !DILocation(line: 101, column: 2, scope: !935)
!1014 = distinct !DISubprogram(name: "get_mysql_dbdriver", scope: !320, file: !320, line: 1304, type: !1015, scopeLine: 1304, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!1017}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!1018 = !DILocation(line: 1305, column: 3, scope: !1014)
!1019 = distinct !DISubprogram(name: "mysql_get_auth_secrets", scope: !320, file: !320, line: 302, type: !823, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1020 = !DILocalVariable(name: "sl", arg: 1, scope: !1019, file: !320, line: 302, type: !825)
!1021 = !DILocation(line: 302, column: 51, scope: !1019)
!1022 = !DILocalVariable(name: "realm", arg: 2, scope: !1019, file: !320, line: 302, type: !833)
!1023 = !DILocation(line: 302, column: 64, scope: !1019)
!1024 = !DILocalVariable(name: "ret", scope: !1019, file: !320, line: 303, type: !112)
!1025 = !DILocation(line: 303, column: 7, scope: !1019)
!1026 = !DILocalVariable(name: "myc", scope: !1019, file: !320, line: 304, type: !134)
!1027 = !DILocation(line: 304, column: 10, scope: !1019)
!1028 = !DILocation(line: 304, column: 16, scope: !1019)
!1029 = !DILocation(line: 305, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1019, file: !320, line: 305, column: 5)
!1031 = !DILocation(line: 305, column: 5, scope: !1019)
!1032 = !DILocalVariable(name: "statement", scope: !1033, file: !320, line: 306, type: !1034)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !320, line: 305, column: 10)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 8200, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 1025)
!1037 = !DILocation(line: 306, column: 8, scope: !1033)
!1038 = !DILocation(line: 307, column: 12, scope: !1033)
!1039 = !DILocation(line: 307, column: 91, scope: !1033)
!1040 = !DILocation(line: 307, column: 3, scope: !1033)
!1041 = !DILocalVariable(name: "res", scope: !1033, file: !320, line: 308, type: !112)
!1042 = !DILocation(line: 308, column: 7, scope: !1033)
!1043 = !DILocation(line: 308, column: 25, scope: !1033)
!1044 = !DILocation(line: 308, column: 30, scope: !1033)
!1045 = !DILocation(line: 308, column: 13, scope: !1033)
!1046 = !DILocation(line: 309, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1033, file: !320, line: 309, column: 6)
!1048 = !DILocation(line: 309, column: 6, scope: !1033)
!1049 = !DILocation(line: 310, column: 98, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1047, file: !320, line: 309, column: 11)
!1051 = !DILocation(line: 310, column: 86, scope: !1050)
!1052 = !DILocation(line: 310, column: 4, scope: !1050)
!1053 = !DILocation(line: 311, column: 3, scope: !1050)
!1054 = !DILocalVariable(name: "mres", scope: !1055, file: !320, line: 312, type: !1056)
!1055 = distinct !DILexicalBlock(scope: !1047, file: !320, line: 311, column: 10)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_RES", file: !44, line: 356, baseType: !1058)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_RES", file: !44, line: 339, size: 832, elements: !1059)
!1059 = !{!1060, !1061, !1062, !1079, !1080, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "row_count", scope: !1058, file: !44, line: 340, baseType: !224, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1058, file: !44, line: 341, baseType: !195, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1058, file: !44, line: 342, baseType: !1063, size: 64, offset: 128)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_DATA", file: !44, line: 163, size: 256, elements: !1065)
!1065 = !{!1066, !1076, !1077, !1078}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1064, file: !44, line: 164, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROWS", file: !44, line: 157, baseType: !1069)
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_ROWS", file: !44, line: 153, size: 192, elements: !1070)
!1070 = !{!1071, !1073, !1075}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1069, file: !44, line: 154, baseType: !1072, size: 64)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1069, file: !44, line: 155, baseType: !1074, size: 64, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROW", file: !44, line: 145, baseType: !831)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1069, file: !44, line: 156, baseType: !152, size: 64, offset: 128)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1064, file: !44, line: 165, baseType: !221, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !1064, file: !44, line: 166, baseType: !224, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1064, file: !44, line: 167, baseType: !7, size: 32, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "data_cursor", scope: !1058, file: !44, line: 343, baseType: !1067, size: 64, offset: 192)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "lengths", scope: !1058, file: !44, line: 344, baseType: !1081, size: 64, offset: 256)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1058, file: !44, line: 345, baseType: !134, size: 64, offset: 320)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !1058, file: !44, line: 346, baseType: !311, size: 64, offset: 384)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "row", scope: !1058, file: !44, line: 347, baseType: !1074, size: 64, offset: 448)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "current_row", scope: !1058, file: !44, line: 348, baseType: !1074, size: 64, offset: 512)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "field_alloc", scope: !1058, file: !44, line: 349, baseType: !221, size: 64, offset: 576)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !1058, file: !44, line: 350, baseType: !7, size: 32, offset: 640)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "current_field", scope: !1058, file: !44, line: 350, baseType: !7, size: 32, offset: 672)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "eof", scope: !1058, file: !44, line: 351, baseType: !169, size: 8, offset: 704)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_cancelled", scope: !1058, file: !44, line: 353, baseType: !169, size: 8, offset: 712)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "metadata", scope: !1058, file: !44, line: 354, baseType: !50, size: 32, offset: 736)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !1058, file: !44, line: 355, baseType: !181, size: 64, offset: 768)
!1093 = !DILocation(line: 312, column: 15, scope: !1055)
!1094 = !DILocation(line: 312, column: 41, scope: !1055)
!1095 = !DILocation(line: 312, column: 22, scope: !1055)
!1096 = !DILocation(line: 313, column: 8, scope: !1097)
!1097 = distinct !DILexicalBlock(scope: !1055, file: !320, line: 313, column: 7)
!1098 = !DILocation(line: 313, column: 7, scope: !1055)
!1099 = !DILocation(line: 314, column: 99, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1097, file: !320, line: 313, column: 14)
!1101 = !DILocation(line: 314, column: 87, scope: !1100)
!1102 = !DILocation(line: 314, column: 5, scope: !1100)
!1103 = !DILocation(line: 315, column: 4, scope: !1100)
!1104 = !DILocation(line: 315, column: 32, scope: !1105)
!1105 = distinct !DILexicalBlock(scope: !1097, file: !320, line: 315, column: 14)
!1106 = !DILocation(line: 315, column: 14, scope: !1105)
!1107 = !DILocation(line: 315, column: 36, scope: !1105)
!1108 = !DILocation(line: 315, column: 14, scope: !1097)
!1109 = !DILocation(line: 316, column: 5, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1105, file: !320, line: 315, column: 41)
!1111 = !DILocalVariable(name: "row", scope: !1112, file: !320, line: 317, type: !1074)
!1112 = distinct !DILexicalBlock(scope: !1113, file: !320, line: 316, column: 13)
!1113 = distinct !DILexicalBlock(scope: !1114, file: !320, line: 316, column: 5)
!1114 = distinct !DILexicalBlock(scope: !1110, file: !320, line: 316, column: 5)
!1115 = !DILocation(line: 317, column: 16, scope: !1112)
!1116 = !DILocation(line: 317, column: 38, scope: !1112)
!1117 = !DILocation(line: 317, column: 22, scope: !1112)
!1118 = !DILocation(line: 318, column: 10, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1112, file: !320, line: 318, column: 9)
!1120 = !DILocation(line: 318, column: 9, scope: !1112)
!1121 = !DILocation(line: 319, column: 7, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1119, file: !320, line: 318, column: 15)
!1123 = !DILocation(line: 321, column: 10, scope: !1124)
!1124 = distinct !DILexicalBlock(scope: !1125, file: !320, line: 321, column: 10)
!1125 = distinct !DILexicalBlock(scope: !1119, file: !320, line: 320, column: 13)
!1126 = !DILocation(line: 321, column: 10, scope: !1125)
!1127 = !DILocalVariable(name: "lengths", scope: !1128, file: !320, line: 322, type: !1081)
!1128 = distinct !DILexicalBlock(scope: !1124, file: !320, line: 321, column: 18)
!1129 = !DILocation(line: 322, column: 23, scope: !1128)
!1130 = !DILocation(line: 322, column: 53, scope: !1128)
!1131 = !DILocation(line: 322, column: 33, scope: !1128)
!1132 = !DILocation(line: 323, column: 11, scope: !1133)
!1133 = distinct !DILexicalBlock(scope: !1128, file: !320, line: 323, column: 11)
!1134 = !DILocation(line: 323, column: 11, scope: !1128)
!1135 = !DILocalVariable(name: "sz", scope: !1136, file: !320, line: 324, type: !725)
!1136 = distinct !DILexicalBlock(scope: !1133, file: !320, line: 323, column: 20)
!1137 = !DILocation(line: 324, column: 16, scope: !1136)
!1138 = !DILocation(line: 324, column: 21, scope: !1136)
!1139 = !DILocalVariable(name: "auth_secret", scope: !1136, file: !320, line: 325, type: !1034)
!1140 = !DILocation(line: 325, column: 14, scope: !1136)
!1141 = !DILocation(line: 326, column: 15, scope: !1136)
!1142 = !DILocation(line: 326, column: 22, scope: !1136)
!1143 = !DILocation(line: 326, column: 34, scope: !1136)
!1144 = !DILocation(line: 326, column: 9, scope: !1136)
!1145 = !DILocation(line: 327, column: 21, scope: !1136)
!1146 = !DILocation(line: 327, column: 9, scope: !1136)
!1147 = !DILocation(line: 327, column: 24, scope: !1136)
!1148 = !DILocation(line: 328, column: 29, scope: !1136)
!1149 = !DILocation(line: 328, column: 32, scope: !1136)
!1150 = !DILocation(line: 328, column: 9, scope: !1136)
!1151 = !DILocation(line: 329, column: 8, scope: !1136)
!1152 = !DILocation(line: 330, column: 7, scope: !1128)
!1153 = !DILocation(line: 316, column: 5, scope: !1113)
!1154 = distinct !{!1154, !1155, !1156}
!1155 = !DILocation(line: 316, column: 5, scope: !1114)
!1156 = !DILocation(line: 332, column: 5, scope: !1114)
!1157 = !DILocation(line: 333, column: 9, scope: !1110)
!1158 = !DILocation(line: 334, column: 4, scope: !1110)
!1159 = !DILocation(line: 336, column: 7, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1055, file: !320, line: 336, column: 7)
!1161 = !DILocation(line: 336, column: 7, scope: !1055)
!1162 = !DILocation(line: 337, column: 23, scope: !1160)
!1163 = !DILocation(line: 337, column: 5, scope: !1160)
!1164 = !DILocation(line: 339, column: 2, scope: !1033)
!1165 = !DILocation(line: 340, column: 10, scope: !1019)
!1166 = !DILocation(line: 340, column: 3, scope: !1019)
!1167 = distinct !DISubprogram(name: "mysql_get_user_key", scope: !320, file: !320, line: 343, type: !836, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1168 = !DILocalVariable(name: "usname", arg: 1, scope: !1167, file: !320, line: 343, type: !833)
!1169 = !DILocation(line: 343, column: 40, scope: !1167)
!1170 = !DILocalVariable(name: "realm", arg: 2, scope: !1167, file: !320, line: 343, type: !833)
!1171 = !DILocation(line: 343, column: 57, scope: !1167)
!1172 = !DILocalVariable(name: "key", arg: 3, scope: !1167, file: !320, line: 343, type: !833)
!1173 = !DILocation(line: 343, column: 74, scope: !1167)
!1174 = !DILocalVariable(name: "ret", scope: !1167, file: !320, line: 344, type: !112)
!1175 = !DILocation(line: 344, column: 7, scope: !1167)
!1176 = !DILocalVariable(name: "myc", scope: !1167, file: !320, line: 345, type: !134)
!1177 = !DILocation(line: 345, column: 10, scope: !1167)
!1178 = !DILocation(line: 345, column: 16, scope: !1167)
!1179 = !DILocation(line: 346, column: 5, scope: !1180)
!1180 = distinct !DILexicalBlock(scope: !1167, file: !320, line: 346, column: 5)
!1181 = !DILocation(line: 346, column: 5, scope: !1167)
!1182 = !DILocalVariable(name: "statement", scope: !1183, file: !320, line: 347, type: !1034)
!1183 = distinct !DILexicalBlock(scope: !1180, file: !320, line: 346, column: 10)
!1184 = !DILocation(line: 347, column: 8, scope: !1183)
!1185 = !DILocation(line: 349, column: 12, scope: !1183)
!1186 = !DILocation(line: 349, column: 106, scope: !1183)
!1187 = !DILocation(line: 349, column: 113, scope: !1183)
!1188 = !DILocation(line: 349, column: 3, scope: !1183)
!1189 = !DILocalVariable(name: "res", scope: !1183, file: !320, line: 350, type: !112)
!1190 = !DILocation(line: 350, column: 7, scope: !1183)
!1191 = !DILocation(line: 350, column: 25, scope: !1183)
!1192 = !DILocation(line: 350, column: 30, scope: !1183)
!1193 = !DILocation(line: 350, column: 13, scope: !1183)
!1194 = !DILocation(line: 351, column: 6, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1183, file: !320, line: 351, column: 6)
!1196 = !DILocation(line: 351, column: 6, scope: !1183)
!1197 = !DILocation(line: 352, column: 98, scope: !1198)
!1198 = distinct !DILexicalBlock(scope: !1195, file: !320, line: 351, column: 11)
!1199 = !DILocation(line: 352, column: 86, scope: !1198)
!1200 = !DILocation(line: 352, column: 4, scope: !1198)
!1201 = !DILocation(line: 353, column: 3, scope: !1198)
!1202 = !DILocalVariable(name: "mres", scope: !1203, file: !320, line: 354, type: !1056)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !320, line: 353, column: 10)
!1204 = !DILocation(line: 354, column: 15, scope: !1203)
!1205 = !DILocation(line: 354, column: 41, scope: !1203)
!1206 = !DILocation(line: 354, column: 22, scope: !1203)
!1207 = !DILocation(line: 355, column: 8, scope: !1208)
!1208 = distinct !DILexicalBlock(scope: !1203, file: !320, line: 355, column: 7)
!1209 = !DILocation(line: 355, column: 7, scope: !1203)
!1210 = !DILocation(line: 356, column: 99, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1208, file: !320, line: 355, column: 14)
!1212 = !DILocation(line: 356, column: 87, scope: !1211)
!1213 = !DILocation(line: 356, column: 5, scope: !1211)
!1214 = !DILocation(line: 357, column: 4, scope: !1211)
!1215 = !DILocation(line: 357, column: 32, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1208, file: !320, line: 357, column: 14)
!1217 = !DILocation(line: 357, column: 14, scope: !1216)
!1218 = !DILocation(line: 357, column: 36, scope: !1216)
!1219 = !DILocation(line: 357, column: 14, scope: !1208)
!1220 = !DILocation(line: 358, column: 95, scope: !1221)
!1221 = distinct !DILexicalBlock(scope: !1216, file: !320, line: 357, column: 41)
!1222 = !DILocation(line: 358, column: 5, scope: !1221)
!1223 = !DILocation(line: 359, column: 4, scope: !1221)
!1224 = !DILocalVariable(name: "row", scope: !1225, file: !320, line: 360, type: !1074)
!1225 = distinct !DILexicalBlock(scope: !1216, file: !320, line: 359, column: 11)
!1226 = !DILocation(line: 360, column: 15, scope: !1225)
!1227 = !DILocation(line: 360, column: 37, scope: !1225)
!1228 = !DILocation(line: 360, column: 21, scope: !1225)
!1229 = !DILocation(line: 361, column: 8, scope: !1230)
!1230 = distinct !DILexicalBlock(scope: !1225, file: !320, line: 361, column: 8)
!1231 = !DILocation(line: 361, column: 12, scope: !1230)
!1232 = !DILocation(line: 361, column: 15, scope: !1230)
!1233 = !DILocation(line: 361, column: 8, scope: !1225)
!1234 = !DILocalVariable(name: "lengths", scope: !1235, file: !320, line: 362, type: !1081)
!1235 = distinct !DILexicalBlock(scope: !1230, file: !320, line: 361, column: 23)
!1236 = !DILocation(line: 362, column: 21, scope: !1235)
!1237 = !DILocation(line: 362, column: 51, scope: !1235)
!1238 = !DILocation(line: 362, column: 31, scope: !1235)
!1239 = !DILocation(line: 363, column: 9, scope: !1240)
!1240 = distinct !DILexicalBlock(scope: !1235, file: !320, line: 363, column: 9)
!1241 = !DILocation(line: 363, column: 9, scope: !1235)
!1242 = !DILocalVariable(name: "sz", scope: !1243, file: !320, line: 364, type: !725)
!1243 = distinct !DILexicalBlock(scope: !1240, file: !320, line: 363, column: 18)
!1244 = !DILocation(line: 364, column: 14, scope: !1243)
!1245 = !DILocation(line: 364, column: 19, scope: !1243)
!1246 = !DILocation(line: 364, column: 52, scope: !1243)
!1247 = !DILocation(line: 365, column: 10, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1243, file: !320, line: 365, column: 10)
!1249 = !DILocation(line: 365, column: 21, scope: !1248)
!1250 = !DILocation(line: 365, column: 20, scope: !1248)
!1251 = !DILocation(line: 365, column: 10, scope: !1243)
!1252 = !DILocation(line: 366, column: 110, scope: !1253)
!1253 = distinct !DILexicalBlock(scope: !1248, file: !320, line: 365, column: 25)
!1254 = !DILocation(line: 366, column: 105, scope: !1253)
!1255 = !DILocation(line: 366, column: 126, scope: !1253)
!1256 = !DILocation(line: 366, column: 121, scope: !1253)
!1257 = !DILocation(line: 366, column: 129, scope: !1253)
!1258 = !DILocation(line: 366, column: 8, scope: !1253)
!1259 = !DILocation(line: 367, column: 7, scope: !1253)
!1260 = !DILocalVariable(name: "kval", scope: !1261, file: !320, line: 368, type: !885)
!1261 = distinct !DILexicalBlock(scope: !1248, file: !320, line: 367, column: 14)
!1262 = !DILocation(line: 368, column: 13, scope: !1261)
!1263 = !DILocation(line: 369, column: 14, scope: !1261)
!1264 = !DILocation(line: 369, column: 21, scope: !1261)
!1265 = !DILocation(line: 369, column: 26, scope: !1261)
!1266 = !DILocation(line: 369, column: 8, scope: !1261)
!1267 = !DILocation(line: 370, column: 13, scope: !1261)
!1268 = !DILocation(line: 370, column: 8, scope: !1261)
!1269 = !DILocation(line: 370, column: 16, scope: !1261)
!1270 = !DILocation(line: 371, column: 40, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1261, file: !320, line: 371, column: 11)
!1272 = !DILocation(line: 371, column: 46, scope: !1271)
!1273 = !DILocation(line: 371, column: 51, scope: !1271)
!1274 = !DILocation(line: 371, column: 53, scope: !1271)
!1275 = !DILocation(line: 371, column: 11, scope: !1271)
!1276 = !DILocation(line: 371, column: 56, scope: !1271)
!1277 = !DILocation(line: 371, column: 11, scope: !1261)
!1278 = !DILocation(line: 372, column: 72, scope: !1279)
!1279 = distinct !DILexicalBlock(scope: !1271, file: !320, line: 371, column: 60)
!1280 = !DILocation(line: 372, column: 77, scope: !1279)
!1281 = !DILocation(line: 372, column: 9, scope: !1279)
!1282 = !DILocation(line: 373, column: 8, scope: !1279)
!1283 = !DILocation(line: 374, column: 13, scope: !1284)
!1284 = distinct !DILexicalBlock(scope: !1271, file: !320, line: 373, column: 15)
!1285 = !DILocation(line: 377, column: 6, scope: !1243)
!1286 = !DILocation(line: 378, column: 5, scope: !1235)
!1287 = !DILocation(line: 381, column: 7, scope: !1288)
!1288 = distinct !DILexicalBlock(scope: !1203, file: !320, line: 381, column: 7)
!1289 = !DILocation(line: 381, column: 7, scope: !1203)
!1290 = !DILocation(line: 382, column: 23, scope: !1288)
!1291 = !DILocation(line: 382, column: 5, scope: !1288)
!1292 = !DILocation(line: 384, column: 2, scope: !1183)
!1293 = !DILocation(line: 385, column: 10, scope: !1167)
!1294 = !DILocation(line: 385, column: 3, scope: !1167)
!1295 = distinct !DISubprogram(name: "mysql_set_user_key", scope: !320, file: !320, line: 522, type: !840, scopeLine: 523, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1296 = !DILocalVariable(name: "usname", arg: 1, scope: !1295, file: !320, line: 522, type: !833)
!1297 = !DILocation(line: 522, column: 40, scope: !1295)
!1298 = !DILocalVariable(name: "realm", arg: 2, scope: !1295, file: !320, line: 522, type: !833)
!1299 = !DILocation(line: 522, column: 57, scope: !1295)
!1300 = !DILocalVariable(name: "key", arg: 3, scope: !1295, file: !320, line: 522, type: !277)
!1301 = !DILocation(line: 522, column: 76, scope: !1295)
!1302 = !DILocalVariable(name: "ret", scope: !1295, file: !320, line: 524, type: !112)
!1303 = !DILocation(line: 524, column: 7, scope: !1295)
!1304 = !DILocalVariable(name: "statement", scope: !1295, file: !320, line: 525, type: !1034)
!1305 = !DILocation(line: 525, column: 8, scope: !1295)
!1306 = !DILocalVariable(name: "myc", scope: !1295, file: !320, line: 526, type: !134)
!1307 = !DILocation(line: 526, column: 11, scope: !1295)
!1308 = !DILocation(line: 526, column: 17, scope: !1295)
!1309 = !DILocation(line: 527, column: 6, scope: !1310)
!1310 = distinct !DILexicalBlock(scope: !1295, file: !320, line: 527, column: 6)
!1311 = !DILocation(line: 527, column: 6, scope: !1295)
!1312 = !DILocation(line: 528, column: 13, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1310, file: !320, line: 527, column: 11)
!1314 = !DILocation(line: 528, column: 112, scope: !1313)
!1315 = !DILocation(line: 528, column: 118, scope: !1313)
!1316 = !DILocation(line: 528, column: 125, scope: !1313)
!1317 = !DILocation(line: 528, column: 4, scope: !1313)
!1318 = !DILocalVariable(name: "res", scope: !1313, file: !320, line: 529, type: !112)
!1319 = !DILocation(line: 529, column: 8, scope: !1313)
!1320 = !DILocation(line: 529, column: 26, scope: !1313)
!1321 = !DILocation(line: 529, column: 31, scope: !1313)
!1322 = !DILocation(line: 529, column: 14, scope: !1313)
!1323 = !DILocation(line: 530, column: 8, scope: !1324)
!1324 = distinct !DILexicalBlock(scope: !1313, file: !320, line: 530, column: 7)
!1325 = !DILocation(line: 530, column: 7, scope: !1313)
!1326 = !DILocation(line: 531, column: 9, scope: !1327)
!1327 = distinct !DILexicalBlock(scope: !1324, file: !320, line: 530, column: 13)
!1328 = !DILocation(line: 532, column: 4, scope: !1327)
!1329 = !DILocation(line: 533, column: 14, scope: !1330)
!1330 = distinct !DILexicalBlock(scope: !1324, file: !320, line: 532, column: 11)
!1331 = !DILocation(line: 533, column: 112, scope: !1330)
!1332 = !DILocation(line: 533, column: 116, scope: !1330)
!1333 = !DILocation(line: 533, column: 123, scope: !1330)
!1334 = !DILocation(line: 533, column: 5, scope: !1330)
!1335 = !DILocation(line: 534, column: 23, scope: !1330)
!1336 = !DILocation(line: 534, column: 28, scope: !1330)
!1337 = !DILocation(line: 534, column: 11, scope: !1330)
!1338 = !DILocation(line: 534, column: 9, scope: !1330)
!1339 = !DILocation(line: 535, column: 9, scope: !1340)
!1340 = distinct !DILexicalBlock(scope: !1330, file: !320, line: 535, column: 8)
!1341 = !DILocation(line: 535, column: 8, scope: !1330)
!1342 = !DILocation(line: 536, column: 10, scope: !1343)
!1343 = distinct !DILexicalBlock(scope: !1340, file: !320, line: 535, column: 14)
!1344 = !DILocation(line: 537, column: 5, scope: !1343)
!1345 = !DILocation(line: 538, column: 108, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1340, file: !320, line: 537, column: 12)
!1347 = !DILocation(line: 538, column: 96, scope: !1346)
!1348 = !DILocation(line: 538, column: 6, scope: !1346)
!1349 = !DILocation(line: 541, column: 3, scope: !1313)
!1350 = !DILocation(line: 542, column: 10, scope: !1295)
!1351 = !DILocation(line: 542, column: 3, scope: !1295)
!1352 = distinct !DISubprogram(name: "mysql_del_user", scope: !320, file: !320, line: 571, type: !844, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1353 = !DILocalVariable(name: "usname", arg: 1, scope: !1352, file: !320, line: 571, type: !833)
!1354 = !DILocation(line: 571, column: 36, scope: !1352)
!1355 = !DILocalVariable(name: "realm", arg: 2, scope: !1352, file: !320, line: 571, type: !833)
!1356 = !DILocation(line: 571, column: 53, scope: !1352)
!1357 = !DILocalVariable(name: "ret", scope: !1352, file: !320, line: 572, type: !112)
!1358 = !DILocation(line: 572, column: 7, scope: !1352)
!1359 = !DILocalVariable(name: "statement", scope: !1352, file: !320, line: 573, type: !1034)
!1360 = !DILocation(line: 573, column: 7, scope: !1352)
!1361 = !DILocalVariable(name: "myc", scope: !1352, file: !320, line: 574, type: !134)
!1362 = !DILocation(line: 574, column: 10, scope: !1352)
!1363 = !DILocation(line: 574, column: 16, scope: !1352)
!1364 = !DILocation(line: 575, column: 5, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1352, file: !320, line: 575, column: 5)
!1366 = !DILocation(line: 575, column: 5, scope: !1352)
!1367 = !DILocation(line: 576, column: 12, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1365, file: !320, line: 575, column: 10)
!1369 = !DILocation(line: 576, column: 98, scope: !1368)
!1370 = !DILocation(line: 576, column: 105, scope: !1368)
!1371 = !DILocation(line: 576, column: 3, scope: !1368)
!1372 = !DILocalVariable(name: "res", scope: !1368, file: !320, line: 577, type: !112)
!1373 = !DILocation(line: 577, column: 7, scope: !1368)
!1374 = !DILocation(line: 577, column: 25, scope: !1368)
!1375 = !DILocation(line: 577, column: 30, scope: !1368)
!1376 = !DILocation(line: 577, column: 13, scope: !1368)
!1377 = !DILocation(line: 578, column: 6, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1368, file: !320, line: 578, column: 6)
!1379 = !DILocation(line: 578, column: 6, scope: !1368)
!1380 = !DILocation(line: 579, column: 96, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !320, line: 578, column: 11)
!1382 = !DILocation(line: 579, column: 84, scope: !1381)
!1383 = !DILocation(line: 579, column: 4, scope: !1381)
!1384 = !DILocation(line: 580, column: 3, scope: !1381)
!1385 = !DILocation(line: 581, column: 9, scope: !1386)
!1386 = distinct !DILexicalBlock(scope: !1378, file: !320, line: 580, column: 10)
!1387 = !DILocation(line: 583, column: 2, scope: !1368)
!1388 = !DILocation(line: 584, column: 10, scope: !1352)
!1389 = !DILocation(line: 584, column: 3, scope: !1352)
!1390 = distinct !DISubprogram(name: "mysql_list_users", scope: !320, file: !320, line: 603, type: !848, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1391 = !DILocalVariable(name: "realm", arg: 1, scope: !1390, file: !320, line: 603, type: !833)
!1392 = !DILocation(line: 603, column: 38, scope: !1390)
!1393 = !DILocalVariable(name: "users", arg: 2, scope: !1390, file: !320, line: 603, type: !825)
!1394 = !DILocation(line: 603, column: 61, scope: !1390)
!1395 = !DILocalVariable(name: "realms", arg: 3, scope: !1390, file: !320, line: 603, type: !825)
!1396 = !DILocation(line: 603, column: 84, scope: !1390)
!1397 = !DILocalVariable(name: "ret", scope: !1390, file: !320, line: 605, type: !112)
!1398 = !DILocation(line: 605, column: 6, scope: !1390)
!1399 = !DILocalVariable(name: "statement", scope: !1390, file: !320, line: 606, type: !1034)
!1400 = !DILocation(line: 606, column: 7, scope: !1390)
!1401 = !DILocalVariable(name: "realm0", scope: !1390, file: !320, line: 608, type: !1402)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !716, size: 1024, elements: !894)
!1403 = !DILocation(line: 608, column: 10, scope: !1390)
!1404 = !DILocation(line: 609, column: 6, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1390, file: !320, line: 609, column: 5)
!1406 = !DILocation(line: 609, column: 5, scope: !1390)
!1407 = !DILocation(line: 609, column: 19, scope: !1405)
!1408 = !DILocation(line: 609, column: 18, scope: !1405)
!1409 = !DILocation(line: 609, column: 13, scope: !1405)
!1410 = !DILocalVariable(name: "myc", scope: !1390, file: !320, line: 611, type: !134)
!1411 = !DILocation(line: 611, column: 10, scope: !1390)
!1412 = !DILocation(line: 611, column: 16, scope: !1390)
!1413 = !DILocation(line: 612, column: 5, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1390, file: !320, line: 612, column: 5)
!1415 = !DILocation(line: 612, column: 5, scope: !1390)
!1416 = !DILocation(line: 613, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1418, file: !320, line: 613, column: 6)
!1418 = distinct !DILexicalBlock(scope: !1414, file: !320, line: 612, column: 10)
!1419 = !DILocation(line: 613, column: 6, scope: !1418)
!1420 = !DILocation(line: 614, column: 14, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !320, line: 613, column: 16)
!1422 = !DILocation(line: 614, column: 112, scope: !1421)
!1423 = !DILocation(line: 614, column: 5, scope: !1421)
!1424 = !DILocation(line: 615, column: 3, scope: !1421)
!1425 = !DILocation(line: 616, column: 14, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1417, file: !320, line: 615, column: 10)
!1427 = !DILocation(line: 616, column: 5, scope: !1426)
!1428 = !DILocalVariable(name: "res", scope: !1418, file: !320, line: 618, type: !112)
!1429 = !DILocation(line: 618, column: 7, scope: !1418)
!1430 = !DILocation(line: 618, column: 25, scope: !1418)
!1431 = !DILocation(line: 618, column: 30, scope: !1418)
!1432 = !DILocation(line: 618, column: 13, scope: !1418)
!1433 = !DILocation(line: 619, column: 6, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1418, file: !320, line: 619, column: 6)
!1435 = !DILocation(line: 619, column: 6, scope: !1418)
!1436 = !DILocation(line: 620, column: 98, scope: !1437)
!1437 = distinct !DILexicalBlock(scope: !1434, file: !320, line: 619, column: 11)
!1438 = !DILocation(line: 620, column: 86, scope: !1437)
!1439 = !DILocation(line: 620, column: 4, scope: !1437)
!1440 = !DILocation(line: 621, column: 3, scope: !1437)
!1441 = !DILocalVariable(name: "mres", scope: !1442, file: !320, line: 622, type: !1056)
!1442 = distinct !DILexicalBlock(scope: !1434, file: !320, line: 621, column: 10)
!1443 = !DILocation(line: 622, column: 15, scope: !1442)
!1444 = !DILocation(line: 622, column: 41, scope: !1442)
!1445 = !DILocation(line: 622, column: 22, scope: !1442)
!1446 = !DILocation(line: 623, column: 8, scope: !1447)
!1447 = distinct !DILexicalBlock(scope: !1442, file: !320, line: 623, column: 7)
!1448 = !DILocation(line: 623, column: 7, scope: !1442)
!1449 = !DILocation(line: 624, column: 99, scope: !1450)
!1450 = distinct !DILexicalBlock(scope: !1447, file: !320, line: 623, column: 14)
!1451 = !DILocation(line: 624, column: 87, scope: !1450)
!1452 = !DILocation(line: 624, column: 5, scope: !1450)
!1453 = !DILocation(line: 625, column: 4, scope: !1450)
!1454 = !DILocation(line: 625, column: 32, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1447, file: !320, line: 625, column: 14)
!1456 = !DILocation(line: 625, column: 14, scope: !1455)
!1457 = !DILocation(line: 625, column: 36, scope: !1455)
!1458 = !DILocation(line: 625, column: 14, scope: !1447)
!1459 = !DILocation(line: 626, column: 95, scope: !1460)
!1460 = distinct !DILexicalBlock(scope: !1455, file: !320, line: 625, column: 41)
!1461 = !DILocation(line: 626, column: 5, scope: !1460)
!1462 = !DILocation(line: 627, column: 4, scope: !1460)
!1463 = !DILocation(line: 628, column: 5, scope: !1464)
!1464 = distinct !DILexicalBlock(scope: !1455, file: !320, line: 627, column: 11)
!1465 = !DILocalVariable(name: "row", scope: !1466, file: !320, line: 629, type: !1074)
!1466 = distinct !DILexicalBlock(scope: !1467, file: !320, line: 628, column: 13)
!1467 = distinct !DILexicalBlock(scope: !1468, file: !320, line: 628, column: 5)
!1468 = distinct !DILexicalBlock(scope: !1464, file: !320, line: 628, column: 5)
!1469 = !DILocation(line: 629, column: 16, scope: !1466)
!1470 = !DILocation(line: 629, column: 38, scope: !1466)
!1471 = !DILocation(line: 629, column: 22, scope: !1466)
!1472 = !DILocation(line: 630, column: 10, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1466, file: !320, line: 630, column: 9)
!1474 = !DILocation(line: 630, column: 9, scope: !1466)
!1475 = !DILocation(line: 631, column: 7, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1473, file: !320, line: 630, column: 15)
!1477 = !DILocation(line: 633, column: 10, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1479, file: !320, line: 633, column: 10)
!1479 = distinct !DILexicalBlock(scope: !1473, file: !320, line: 632, column: 13)
!1480 = !DILocation(line: 633, column: 10, scope: !1479)
!1481 = !DILocation(line: 634, column: 11, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1483, file: !320, line: 634, column: 11)
!1483 = distinct !DILexicalBlock(scope: !1478, file: !320, line: 633, column: 18)
!1484 = !DILocation(line: 634, column: 11, scope: !1483)
!1485 = !DILocation(line: 635, column: 29, scope: !1486)
!1486 = distinct !DILexicalBlock(scope: !1482, file: !320, line: 634, column: 18)
!1487 = !DILocation(line: 635, column: 35, scope: !1486)
!1488 = !DILocation(line: 635, column: 9, scope: !1486)
!1489 = !DILocation(line: 636, column: 12, scope: !1490)
!1490 = distinct !DILexicalBlock(scope: !1486, file: !320, line: 636, column: 12)
!1491 = !DILocation(line: 636, column: 12, scope: !1486)
!1492 = !DILocation(line: 637, column: 13, scope: !1493)
!1493 = distinct !DILexicalBlock(scope: !1494, file: !320, line: 637, column: 13)
!1494 = distinct !DILexicalBlock(scope: !1490, file: !320, line: 636, column: 20)
!1495 = !DILocation(line: 637, column: 13, scope: !1494)
!1496 = !DILocation(line: 638, column: 31, scope: !1497)
!1497 = distinct !DILexicalBlock(scope: !1493, file: !320, line: 637, column: 21)
!1498 = !DILocation(line: 638, column: 38, scope: !1497)
!1499 = !DILocation(line: 638, column: 11, scope: !1497)
!1500 = !DILocation(line: 639, column: 10, scope: !1497)
!1501 = !DILocation(line: 640, column: 31, scope: !1502)
!1502 = distinct !DILexicalBlock(scope: !1493, file: !320, line: 639, column: 17)
!1503 = !DILocation(line: 640, column: 45, scope: !1502)
!1504 = !DILocation(line: 640, column: 11, scope: !1502)
!1505 = !DILocation(line: 642, column: 9, scope: !1494)
!1506 = !DILocation(line: 643, column: 8, scope: !1486)
!1507 = !DILocation(line: 644, column: 28, scope: !1508)
!1508 = distinct !DILexicalBlock(scope: !1482, file: !320, line: 643, column: 15)
!1509 = !DILocation(line: 644, column: 36, scope: !1508)
!1510 = !DILocation(line: 644, column: 9, scope: !1508)
!1511 = !DILocation(line: 646, column: 7, scope: !1483)
!1512 = !DILocation(line: 628, column: 5, scope: !1467)
!1513 = distinct !{!1513, !1514, !1515}
!1514 = !DILocation(line: 628, column: 5, scope: !1468)
!1515 = !DILocation(line: 648, column: 5, scope: !1468)
!1516 = !DILocation(line: 649, column: 13, scope: !1464)
!1517 = !DILocation(line: 652, column: 7, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1442, file: !320, line: 652, column: 7)
!1519 = !DILocation(line: 652, column: 7, scope: !1442)
!1520 = !DILocation(line: 653, column: 23, scope: !1518)
!1521 = !DILocation(line: 653, column: 5, scope: !1518)
!1522 = !DILocation(line: 655, column: 2, scope: !1418)
!1523 = !DILocation(line: 656, column: 10, scope: !1390)
!1524 = !DILocation(line: 656, column: 3, scope: !1390)
!1525 = distinct !DISubprogram(name: "mysql_list_secrets", scope: !320, file: !320, line: 659, type: !848, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1526 = !DILocalVariable(name: "realm", arg: 1, scope: !1525, file: !320, line: 659, type: !833)
!1527 = !DILocation(line: 659, column: 40, scope: !1525)
!1528 = !DILocalVariable(name: "secrets", arg: 2, scope: !1525, file: !320, line: 659, type: !825)
!1529 = !DILocation(line: 659, column: 63, scope: !1525)
!1530 = !DILocalVariable(name: "realms", arg: 3, scope: !1525, file: !320, line: 659, type: !825)
!1531 = !DILocation(line: 659, column: 88, scope: !1525)
!1532 = !DILocalVariable(name: "ret", scope: !1525, file: !320, line: 661, type: !112)
!1533 = !DILocation(line: 661, column: 6, scope: !1525)
!1534 = !DILocalVariable(name: "realm0", scope: !1525, file: !320, line: 663, type: !1402)
!1535 = !DILocation(line: 663, column: 10, scope: !1525)
!1536 = !DILocation(line: 664, column: 6, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1525, file: !320, line: 664, column: 5)
!1538 = !DILocation(line: 664, column: 5, scope: !1525)
!1539 = !DILocation(line: 664, column: 19, scope: !1537)
!1540 = !DILocation(line: 664, column: 18, scope: !1537)
!1541 = !DILocation(line: 664, column: 13, scope: !1537)
!1542 = !DILocalVariable(name: "statement", scope: !1525, file: !320, line: 666, type: !1034)
!1543 = !DILocation(line: 666, column: 7, scope: !1525)
!1544 = !DILocation(line: 667, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1525, file: !320, line: 667, column: 6)
!1546 = !DILocation(line: 667, column: 6, scope: !1525)
!1547 = !DILocation(line: 668, column: 12, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1545, file: !320, line: 667, column: 16)
!1549 = !DILocation(line: 668, column: 113, scope: !1548)
!1550 = !DILocation(line: 668, column: 3, scope: !1548)
!1551 = !DILocation(line: 669, column: 2, scope: !1548)
!1552 = !DILocation(line: 670, column: 12, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1545, file: !320, line: 669, column: 9)
!1554 = !DILocation(line: 670, column: 3, scope: !1553)
!1555 = !DILocation(line: 673, column: 32, scope: !1525)
!1556 = !DILocalVariable(name: "myc", scope: !1525, file: !320, line: 675, type: !134)
!1557 = !DILocation(line: 675, column: 10, scope: !1525)
!1558 = !DILocation(line: 675, column: 16, scope: !1525)
!1559 = !DILocation(line: 676, column: 5, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1525, file: !320, line: 676, column: 5)
!1561 = !DILocation(line: 676, column: 5, scope: !1525)
!1562 = !DILocalVariable(name: "res", scope: !1563, file: !320, line: 677, type: !112)
!1563 = distinct !DILexicalBlock(scope: !1560, file: !320, line: 676, column: 10)
!1564 = !DILocation(line: 677, column: 7, scope: !1563)
!1565 = !DILocation(line: 677, column: 25, scope: !1563)
!1566 = !DILocation(line: 677, column: 30, scope: !1563)
!1567 = !DILocation(line: 677, column: 13, scope: !1563)
!1568 = !DILocation(line: 678, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1563, file: !320, line: 678, column: 6)
!1570 = !DILocation(line: 678, column: 6, scope: !1563)
!1571 = !DILocation(line: 679, column: 98, scope: !1572)
!1572 = distinct !DILexicalBlock(scope: !1569, file: !320, line: 678, column: 11)
!1573 = !DILocation(line: 679, column: 86, scope: !1572)
!1574 = !DILocation(line: 679, column: 4, scope: !1572)
!1575 = !DILocation(line: 680, column: 3, scope: !1572)
!1576 = !DILocalVariable(name: "mres", scope: !1577, file: !320, line: 681, type: !1056)
!1577 = distinct !DILexicalBlock(scope: !1569, file: !320, line: 680, column: 10)
!1578 = !DILocation(line: 681, column: 15, scope: !1577)
!1579 = !DILocation(line: 681, column: 41, scope: !1577)
!1580 = !DILocation(line: 681, column: 22, scope: !1577)
!1581 = !DILocation(line: 682, column: 8, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1577, file: !320, line: 682, column: 7)
!1583 = !DILocation(line: 682, column: 7, scope: !1577)
!1584 = !DILocation(line: 683, column: 99, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1582, file: !320, line: 682, column: 14)
!1586 = !DILocation(line: 683, column: 87, scope: !1585)
!1587 = !DILocation(line: 683, column: 5, scope: !1585)
!1588 = !DILocation(line: 684, column: 4, scope: !1585)
!1589 = !DILocation(line: 684, column: 32, scope: !1590)
!1590 = distinct !DILexicalBlock(scope: !1582, file: !320, line: 684, column: 14)
!1591 = !DILocation(line: 684, column: 14, scope: !1590)
!1592 = !DILocation(line: 684, column: 36, scope: !1590)
!1593 = !DILocation(line: 684, column: 14, scope: !1582)
!1594 = !DILocation(line: 685, column: 95, scope: !1595)
!1595 = distinct !DILexicalBlock(scope: !1590, file: !320, line: 684, column: 41)
!1596 = !DILocation(line: 685, column: 5, scope: !1595)
!1597 = !DILocation(line: 686, column: 4, scope: !1595)
!1598 = !DILocation(line: 687, column: 5, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1590, file: !320, line: 686, column: 11)
!1600 = !DILocalVariable(name: "row", scope: !1601, file: !320, line: 688, type: !1074)
!1601 = distinct !DILexicalBlock(scope: !1602, file: !320, line: 687, column: 13)
!1602 = distinct !DILexicalBlock(scope: !1603, file: !320, line: 687, column: 5)
!1603 = distinct !DILexicalBlock(scope: !1599, file: !320, line: 687, column: 5)
!1604 = !DILocation(line: 688, column: 16, scope: !1601)
!1605 = !DILocation(line: 688, column: 38, scope: !1601)
!1606 = !DILocation(line: 688, column: 22, scope: !1601)
!1607 = !DILocation(line: 689, column: 10, scope: !1608)
!1608 = distinct !DILexicalBlock(scope: !1601, file: !320, line: 689, column: 9)
!1609 = !DILocation(line: 689, column: 9, scope: !1601)
!1610 = !DILocation(line: 690, column: 7, scope: !1611)
!1611 = distinct !DILexicalBlock(scope: !1608, file: !320, line: 689, column: 15)
!1612 = !DILocalVariable(name: "kval", scope: !1613, file: !320, line: 692, type: !277)
!1613 = distinct !DILexicalBlock(scope: !1608, file: !320, line: 691, column: 13)
!1614 = !DILocation(line: 692, column: 19, scope: !1613)
!1615 = !DILocation(line: 692, column: 26, scope: !1613)
!1616 = !DILocation(line: 693, column: 10, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1613, file: !320, line: 693, column: 10)
!1618 = !DILocation(line: 693, column: 10, scope: !1613)
!1619 = !DILocalVariable(name: "rval", scope: !1620, file: !320, line: 694, type: !277)
!1620 = distinct !DILexicalBlock(scope: !1617, file: !320, line: 693, column: 16)
!1621 = !DILocation(line: 694, column: 20, scope: !1620)
!1622 = !DILocation(line: 694, column: 27, scope: !1620)
!1623 = !DILocation(line: 695, column: 11, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1620, file: !320, line: 695, column: 11)
!1625 = !DILocation(line: 695, column: 11, scope: !1620)
!1626 = !DILocation(line: 696, column: 29, scope: !1627)
!1627 = distinct !DILexicalBlock(scope: !1624, file: !320, line: 695, column: 20)
!1628 = !DILocation(line: 696, column: 37, scope: !1627)
!1629 = !DILocation(line: 696, column: 9, scope: !1627)
!1630 = !DILocation(line: 697, column: 12, scope: !1631)
!1631 = distinct !DILexicalBlock(scope: !1627, file: !320, line: 697, column: 12)
!1632 = !DILocation(line: 697, column: 12, scope: !1627)
!1633 = !DILocation(line: 698, column: 13, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1635, file: !320, line: 698, column: 13)
!1635 = distinct !DILexicalBlock(scope: !1631, file: !320, line: 697, column: 20)
!1636 = !DILocation(line: 698, column: 18, scope: !1634)
!1637 = !DILocation(line: 698, column: 22, scope: !1634)
!1638 = !DILocation(line: 698, column: 21, scope: !1634)
!1639 = !DILocation(line: 698, column: 13, scope: !1635)
!1640 = !DILocation(line: 699, column: 31, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1634, file: !320, line: 698, column: 28)
!1642 = !DILocation(line: 699, column: 38, scope: !1641)
!1643 = !DILocation(line: 699, column: 11, scope: !1641)
!1644 = !DILocation(line: 700, column: 10, scope: !1641)
!1645 = !DILocation(line: 701, column: 31, scope: !1646)
!1646 = distinct !DILexicalBlock(scope: !1634, file: !320, line: 700, column: 17)
!1647 = !DILocation(line: 701, column: 45, scope: !1646)
!1648 = !DILocation(line: 701, column: 11, scope: !1646)
!1649 = !DILocation(line: 703, column: 9, scope: !1635)
!1650 = !DILocation(line: 704, column: 8, scope: !1627)
!1651 = !DILocation(line: 705, column: 27, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1624, file: !320, line: 704, column: 15)
!1653 = !DILocation(line: 705, column: 32, scope: !1652)
!1654 = !DILocation(line: 705, column: 9, scope: !1652)
!1655 = !DILocation(line: 707, column: 7, scope: !1620)
!1656 = !DILocation(line: 687, column: 5, scope: !1602)
!1657 = distinct !{!1657, !1658, !1659}
!1658 = !DILocation(line: 687, column: 5, scope: !1603)
!1659 = !DILocation(line: 709, column: 5, scope: !1603)
!1660 = !DILocation(line: 710, column: 9, scope: !1599)
!1661 = !DILocation(line: 713, column: 7, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1577, file: !320, line: 713, column: 7)
!1663 = !DILocation(line: 713, column: 7, scope: !1577)
!1664 = !DILocation(line: 714, column: 23, scope: !1662)
!1665 = !DILocation(line: 714, column: 5, scope: !1662)
!1666 = !DILocation(line: 716, column: 2, scope: !1563)
!1667 = !DILocation(line: 717, column: 9, scope: !1525)
!1668 = !DILocation(line: 717, column: 2, scope: !1525)
!1669 = distinct !DISubprogram(name: "mysql_del_secret", scope: !320, file: !320, line: 720, type: !844, scopeLine: 720, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1670 = !DILocalVariable(name: "secret", arg: 1, scope: !1669, file: !320, line: 720, type: !833)
!1671 = !DILocation(line: 720, column: 38, scope: !1669)
!1672 = !DILocalVariable(name: "realm", arg: 2, scope: !1669, file: !320, line: 720, type: !833)
!1673 = !DILocation(line: 720, column: 55, scope: !1669)
!1674 = !DILocalVariable(name: "ret", scope: !1669, file: !320, line: 721, type: !112)
!1675 = !DILocation(line: 721, column: 7, scope: !1669)
!1676 = !DILocation(line: 722, column: 32, scope: !1669)
!1677 = !DILocalVariable(name: "statement", scope: !1669, file: !320, line: 723, type: !1034)
!1678 = !DILocation(line: 723, column: 7, scope: !1669)
!1679 = !DILocalVariable(name: "myc", scope: !1669, file: !320, line: 724, type: !134)
!1680 = !DILocation(line: 724, column: 10, scope: !1669)
!1681 = !DILocation(line: 724, column: 16, scope: !1669)
!1682 = !DILocation(line: 725, column: 6, scope: !1683)
!1683 = distinct !DILexicalBlock(scope: !1669, file: !320, line: 725, column: 6)
!1684 = !DILocation(line: 725, column: 6, scope: !1669)
!1685 = !DILocation(line: 726, column: 7, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1687, file: !320, line: 726, column: 6)
!1687 = distinct !DILexicalBlock(scope: !1683, file: !320, line: 725, column: 11)
!1688 = !DILocation(line: 726, column: 14, scope: !1686)
!1689 = !DILocation(line: 726, column: 18, scope: !1686)
!1690 = !DILocation(line: 726, column: 27, scope: !1686)
!1691 = !DILocation(line: 726, column: 6, scope: !1687)
!1692 = !DILocation(line: 727, column: 14, scope: !1686)
!1693 = !DILocation(line: 727, column: 85, scope: !1686)
!1694 = !DILocation(line: 727, column: 5, scope: !1686)
!1695 = !DILocation(line: 729, column: 14, scope: !1686)
!1696 = !DILocation(line: 729, column: 100, scope: !1686)
!1697 = !DILocation(line: 729, column: 107, scope: !1686)
!1698 = !DILocation(line: 729, column: 5, scope: !1686)
!1699 = !DILocation(line: 730, column: 15, scope: !1687)
!1700 = !DILocation(line: 730, column: 20, scope: !1687)
!1701 = !DILocation(line: 730, column: 3, scope: !1687)
!1702 = !DILocation(line: 731, column: 9, scope: !1687)
!1703 = !DILocation(line: 732, column: 2, scope: !1687)
!1704 = !DILocation(line: 733, column: 10, scope: !1669)
!1705 = !DILocation(line: 733, column: 3, scope: !1669)
!1706 = distinct !DISubprogram(name: "mysql_set_secret", scope: !320, file: !320, line: 736, type: !844, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1707 = !DILocalVariable(name: "secret", arg: 1, scope: !1706, file: !320, line: 736, type: !833)
!1708 = !DILocation(line: 736, column: 38, scope: !1706)
!1709 = !DILocalVariable(name: "realm", arg: 2, scope: !1706, file: !320, line: 736, type: !833)
!1710 = !DILocation(line: 736, column: 55, scope: !1706)
!1711 = !DILocalVariable(name: "ret", scope: !1706, file: !320, line: 737, type: !112)
!1712 = !DILocation(line: 737, column: 7, scope: !1706)
!1713 = !DILocation(line: 738, column: 33, scope: !1706)
!1714 = !DILocalVariable(name: "statement", scope: !1706, file: !320, line: 739, type: !1034)
!1715 = !DILocation(line: 739, column: 7, scope: !1706)
!1716 = !DILocalVariable(name: "myc", scope: !1706, file: !320, line: 740, type: !134)
!1717 = !DILocation(line: 740, column: 10, scope: !1706)
!1718 = !DILocation(line: 740, column: 16, scope: !1706)
!1719 = !DILocation(line: 741, column: 6, scope: !1720)
!1720 = distinct !DILexicalBlock(scope: !1706, file: !320, line: 741, column: 6)
!1721 = !DILocation(line: 741, column: 6, scope: !1706)
!1722 = !DILocation(line: 742, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1720, file: !320, line: 741, column: 11)
!1724 = !DILocation(line: 742, column: 99, scope: !1723)
!1725 = !DILocation(line: 742, column: 105, scope: !1723)
!1726 = !DILocation(line: 742, column: 4, scope: !1723)
!1727 = !DILocalVariable(name: "res", scope: !1723, file: !320, line: 743, type: !112)
!1728 = !DILocation(line: 743, column: 8, scope: !1723)
!1729 = !DILocation(line: 743, column: 26, scope: !1723)
!1730 = !DILocation(line: 743, column: 31, scope: !1723)
!1731 = !DILocation(line: 743, column: 14, scope: !1723)
!1732 = !DILocation(line: 744, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1723, file: !320, line: 744, column: 8)
!1734 = !DILocation(line: 744, column: 8, scope: !1723)
!1735 = !DILocation(line: 748, column: 18, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1733, file: !320, line: 744, column: 13)
!1737 = !DILocation(line: 748, column: 6, scope: !1736)
!1738 = !DILocation(line: 745, column: 6, scope: !1736)
!1739 = !DILocation(line: 749, column: 4, scope: !1736)
!1740 = !DILocation(line: 750, column: 10, scope: !1741)
!1741 = distinct !DILexicalBlock(scope: !1733, file: !320, line: 749, column: 11)
!1742 = !DILocation(line: 752, column: 2, scope: !1723)
!1743 = !DILocation(line: 753, column: 10, scope: !1706)
!1744 = !DILocation(line: 753, column: 3, scope: !1706)
!1745 = distinct !DISubprogram(name: "mysql_add_origin", scope: !320, file: !320, line: 787, type: !844, scopeLine: 787, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1746 = !DILocalVariable(name: "origin", arg: 1, scope: !1745, file: !320, line: 787, type: !833)
!1747 = !DILocation(line: 787, column: 38, scope: !1745)
!1748 = !DILocalVariable(name: "realm", arg: 2, scope: !1745, file: !320, line: 787, type: !833)
!1749 = !DILocation(line: 787, column: 55, scope: !1745)
!1750 = !DILocalVariable(name: "ret", scope: !1745, file: !320, line: 788, type: !112)
!1751 = !DILocation(line: 788, column: 7, scope: !1745)
!1752 = !DILocalVariable(name: "statement", scope: !1745, file: !320, line: 789, type: !1034)
!1753 = !DILocation(line: 789, column: 7, scope: !1745)
!1754 = !DILocalVariable(name: "myc", scope: !1745, file: !320, line: 790, type: !134)
!1755 = !DILocation(line: 790, column: 10, scope: !1745)
!1756 = !DILocation(line: 790, column: 16, scope: !1745)
!1757 = !DILocation(line: 791, column: 6, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1745, file: !320, line: 791, column: 6)
!1759 = !DILocation(line: 791, column: 6, scope: !1745)
!1760 = !DILocation(line: 792, column: 12, scope: !1761)
!1761 = distinct !DILexicalBlock(scope: !1758, file: !320, line: 791, column: 11)
!1762 = !DILocation(line: 792, column: 108, scope: !1761)
!1763 = !DILocation(line: 792, column: 115, scope: !1761)
!1764 = !DILocation(line: 792, column: 3, scope: !1761)
!1765 = !DILocalVariable(name: "res", scope: !1761, file: !320, line: 793, type: !112)
!1766 = !DILocation(line: 793, column: 7, scope: !1761)
!1767 = !DILocation(line: 793, column: 25, scope: !1761)
!1768 = !DILocation(line: 793, column: 30, scope: !1761)
!1769 = !DILocation(line: 793, column: 13, scope: !1761)
!1770 = !DILocation(line: 794, column: 7, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1761, file: !320, line: 794, column: 7)
!1772 = !DILocation(line: 794, column: 7, scope: !1761)
!1773 = !DILocation(line: 798, column: 18, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !320, line: 794, column: 12)
!1775 = !DILocation(line: 798, column: 6, scope: !1774)
!1776 = !DILocation(line: 795, column: 4, scope: !1774)
!1777 = !DILocation(line: 799, column: 3, scope: !1774)
!1778 = !DILocation(line: 800, column: 9, scope: !1779)
!1779 = distinct !DILexicalBlock(scope: !1771, file: !320, line: 799, column: 10)
!1780 = !DILocation(line: 802, column: 2, scope: !1761)
!1781 = !DILocation(line: 803, column: 10, scope: !1745)
!1782 = !DILocation(line: 803, column: 3, scope: !1745)
!1783 = distinct !DISubprogram(name: "mysql_del_origin", scope: !320, file: !320, line: 806, type: !856, scopeLine: 806, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1784 = !DILocalVariable(name: "origin", arg: 1, scope: !1783, file: !320, line: 806, type: !833)
!1785 = !DILocation(line: 806, column: 38, scope: !1783)
!1786 = !DILocalVariable(name: "ret", scope: !1783, file: !320, line: 807, type: !112)
!1787 = !DILocation(line: 807, column: 7, scope: !1783)
!1788 = !DILocalVariable(name: "statement", scope: !1783, file: !320, line: 808, type: !1034)
!1789 = !DILocation(line: 808, column: 7, scope: !1783)
!1790 = !DILocalVariable(name: "myc", scope: !1783, file: !320, line: 809, type: !134)
!1791 = !DILocation(line: 809, column: 10, scope: !1783)
!1792 = !DILocation(line: 809, column: 16, scope: !1783)
!1793 = !DILocation(line: 810, column: 6, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1783, file: !320, line: 810, column: 6)
!1795 = !DILocation(line: 810, column: 6, scope: !1783)
!1796 = !DILocation(line: 811, column: 12, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !320, line: 810, column: 11)
!1798 = !DILocation(line: 811, column: 93, scope: !1797)
!1799 = !DILocation(line: 811, column: 3, scope: !1797)
!1800 = !DILocalVariable(name: "res", scope: !1797, file: !320, line: 812, type: !112)
!1801 = !DILocation(line: 812, column: 7, scope: !1797)
!1802 = !DILocation(line: 812, column: 25, scope: !1797)
!1803 = !DILocation(line: 812, column: 30, scope: !1797)
!1804 = !DILocation(line: 812, column: 13, scope: !1797)
!1805 = !DILocation(line: 813, column: 7, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !320, line: 813, column: 7)
!1807 = !DILocation(line: 813, column: 7, scope: !1797)
!1808 = !DILocation(line: 817, column: 18, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1806, file: !320, line: 813, column: 12)
!1810 = !DILocation(line: 817, column: 6, scope: !1809)
!1811 = !DILocation(line: 814, column: 4, scope: !1809)
!1812 = !DILocation(line: 818, column: 3, scope: !1809)
!1813 = !DILocation(line: 819, column: 9, scope: !1814)
!1814 = distinct !DILexicalBlock(scope: !1806, file: !320, line: 818, column: 10)
!1815 = !DILocation(line: 821, column: 2, scope: !1797)
!1816 = !DILocation(line: 822, column: 10, scope: !1783)
!1817 = !DILocation(line: 822, column: 3, scope: !1783)
!1818 = distinct !DISubprogram(name: "mysql_list_origins", scope: !320, file: !320, line: 825, type: !848, scopeLine: 826, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1819 = !DILocalVariable(name: "realm", arg: 1, scope: !1818, file: !320, line: 825, type: !833)
!1820 = !DILocation(line: 825, column: 40, scope: !1818)
!1821 = !DILocalVariable(name: "origins", arg: 2, scope: !1818, file: !320, line: 825, type: !825)
!1822 = !DILocation(line: 825, column: 63, scope: !1818)
!1823 = !DILocalVariable(name: "realms", arg: 3, scope: !1818, file: !320, line: 825, type: !825)
!1824 = !DILocation(line: 825, column: 88, scope: !1818)
!1825 = !DILocalVariable(name: "ret", scope: !1818, file: !320, line: 827, type: !112)
!1826 = !DILocation(line: 827, column: 6, scope: !1818)
!1827 = !DILocalVariable(name: "realm0", scope: !1818, file: !320, line: 829, type: !1402)
!1828 = !DILocation(line: 829, column: 10, scope: !1818)
!1829 = !DILocation(line: 830, column: 6, scope: !1830)
!1830 = distinct !DILexicalBlock(scope: !1818, file: !320, line: 830, column: 5)
!1831 = !DILocation(line: 830, column: 5, scope: !1818)
!1832 = !DILocation(line: 830, column: 19, scope: !1830)
!1833 = !DILocation(line: 830, column: 18, scope: !1830)
!1834 = !DILocation(line: 830, column: 13, scope: !1830)
!1835 = !DILocation(line: 832, column: 33, scope: !1818)
!1836 = !DILocalVariable(name: "myc", scope: !1818, file: !320, line: 834, type: !134)
!1837 = !DILocation(line: 834, column: 10, scope: !1818)
!1838 = !DILocation(line: 834, column: 16, scope: !1818)
!1839 = !DILocation(line: 835, column: 5, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1818, file: !320, line: 835, column: 5)
!1841 = !DILocation(line: 835, column: 5, scope: !1818)
!1842 = !DILocalVariable(name: "statement", scope: !1843, file: !320, line: 836, type: !1034)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !320, line: 835, column: 10)
!1844 = !DILocation(line: 836, column: 8, scope: !1843)
!1845 = !DILocation(line: 837, column: 6, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1843, file: !320, line: 837, column: 6)
!1847 = !DILocation(line: 837, column: 12, scope: !1846)
!1848 = !DILocation(line: 837, column: 15, scope: !1846)
!1849 = !DILocation(line: 837, column: 6, scope: !1843)
!1850 = !DILocation(line: 838, column: 13, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1846, file: !320, line: 837, column: 25)
!1852 = !DILocation(line: 838, column: 122, scope: !1851)
!1853 = !DILocation(line: 838, column: 4, scope: !1851)
!1854 = !DILocation(line: 839, column: 3, scope: !1851)
!1855 = !DILocation(line: 840, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1846, file: !320, line: 839, column: 10)
!1857 = !DILocation(line: 840, column: 4, scope: !1856)
!1858 = !DILocalVariable(name: "res", scope: !1843, file: !320, line: 842, type: !112)
!1859 = !DILocation(line: 842, column: 7, scope: !1843)
!1860 = !DILocation(line: 842, column: 25, scope: !1843)
!1861 = !DILocation(line: 842, column: 30, scope: !1843)
!1862 = !DILocation(line: 842, column: 13, scope: !1843)
!1863 = !DILocation(line: 843, column: 6, scope: !1864)
!1864 = distinct !DILexicalBlock(scope: !1843, file: !320, line: 843, column: 6)
!1865 = !DILocation(line: 843, column: 6, scope: !1843)
!1866 = !DILocation(line: 844, column: 98, scope: !1867)
!1867 = distinct !DILexicalBlock(scope: !1864, file: !320, line: 843, column: 11)
!1868 = !DILocation(line: 844, column: 86, scope: !1867)
!1869 = !DILocation(line: 844, column: 4, scope: !1867)
!1870 = !DILocation(line: 845, column: 3, scope: !1867)
!1871 = !DILocalVariable(name: "mres", scope: !1872, file: !320, line: 846, type: !1056)
!1872 = distinct !DILexicalBlock(scope: !1864, file: !320, line: 845, column: 10)
!1873 = !DILocation(line: 846, column: 15, scope: !1872)
!1874 = !DILocation(line: 846, column: 41, scope: !1872)
!1875 = !DILocation(line: 846, column: 22, scope: !1872)
!1876 = !DILocation(line: 847, column: 8, scope: !1877)
!1877 = distinct !DILexicalBlock(scope: !1872, file: !320, line: 847, column: 7)
!1878 = !DILocation(line: 847, column: 7, scope: !1872)
!1879 = !DILocation(line: 848, column: 99, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1877, file: !320, line: 847, column: 14)
!1881 = !DILocation(line: 848, column: 87, scope: !1880)
!1882 = !DILocation(line: 848, column: 5, scope: !1880)
!1883 = !DILocation(line: 849, column: 4, scope: !1880)
!1884 = !DILocation(line: 849, column: 32, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1877, file: !320, line: 849, column: 14)
!1886 = !DILocation(line: 849, column: 14, scope: !1885)
!1887 = !DILocation(line: 849, column: 36, scope: !1885)
!1888 = !DILocation(line: 849, column: 14, scope: !1877)
!1889 = !DILocation(line: 850, column: 95, scope: !1890)
!1890 = distinct !DILexicalBlock(scope: !1885, file: !320, line: 849, column: 41)
!1891 = !DILocation(line: 850, column: 5, scope: !1890)
!1892 = !DILocation(line: 851, column: 4, scope: !1890)
!1893 = !DILocation(line: 852, column: 5, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1885, file: !320, line: 851, column: 11)
!1895 = !DILocalVariable(name: "row", scope: !1896, file: !320, line: 853, type: !1074)
!1896 = distinct !DILexicalBlock(scope: !1897, file: !320, line: 852, column: 13)
!1897 = distinct !DILexicalBlock(scope: !1898, file: !320, line: 852, column: 5)
!1898 = distinct !DILexicalBlock(scope: !1894, file: !320, line: 852, column: 5)
!1899 = !DILocation(line: 853, column: 16, scope: !1896)
!1900 = !DILocation(line: 853, column: 38, scope: !1896)
!1901 = !DILocation(line: 853, column: 22, scope: !1896)
!1902 = !DILocation(line: 854, column: 10, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1896, file: !320, line: 854, column: 9)
!1904 = !DILocation(line: 854, column: 9, scope: !1896)
!1905 = !DILocation(line: 855, column: 7, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1903, file: !320, line: 854, column: 15)
!1907 = !DILocation(line: 857, column: 10, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1909, file: !320, line: 857, column: 10)
!1909 = distinct !DILexicalBlock(scope: !1903, file: !320, line: 856, column: 13)
!1910 = !DILocation(line: 857, column: 17, scope: !1908)
!1911 = !DILocation(line: 857, column: 20, scope: !1908)
!1912 = !DILocation(line: 857, column: 10, scope: !1909)
!1913 = !DILocalVariable(name: "kval", scope: !1914, file: !320, line: 858, type: !277)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !320, line: 857, column: 28)
!1915 = !DILocation(line: 858, column: 20, scope: !1914)
!1916 = !DILocation(line: 858, column: 27, scope: !1914)
!1917 = !DILocalVariable(name: "rval", scope: !1914, file: !320, line: 859, type: !277)
!1918 = !DILocation(line: 859, column: 20, scope: !1914)
!1919 = !DILocation(line: 859, column: 27, scope: !1914)
!1920 = !DILocation(line: 860, column: 11, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1914, file: !320, line: 860, column: 11)
!1922 = !DILocation(line: 860, column: 11, scope: !1914)
!1923 = !DILocation(line: 861, column: 29, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1921, file: !320, line: 860, column: 20)
!1925 = !DILocation(line: 861, column: 37, scope: !1924)
!1926 = !DILocation(line: 861, column: 9, scope: !1924)
!1927 = !DILocation(line: 862, column: 12, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1924, file: !320, line: 862, column: 12)
!1929 = !DILocation(line: 862, column: 12, scope: !1924)
!1930 = !DILocation(line: 863, column: 13, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !320, line: 863, column: 13)
!1932 = distinct !DILexicalBlock(scope: !1928, file: !320, line: 862, column: 20)
!1933 = !DILocation(line: 863, column: 18, scope: !1931)
!1934 = !DILocation(line: 863, column: 22, scope: !1931)
!1935 = !DILocation(line: 863, column: 21, scope: !1931)
!1936 = !DILocation(line: 863, column: 13, scope: !1932)
!1937 = !DILocation(line: 864, column: 31, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1931, file: !320, line: 863, column: 28)
!1939 = !DILocation(line: 864, column: 38, scope: !1938)
!1940 = !DILocation(line: 864, column: 11, scope: !1938)
!1941 = !DILocation(line: 865, column: 10, scope: !1938)
!1942 = !DILocation(line: 866, column: 31, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1931, file: !320, line: 865, column: 17)
!1944 = !DILocation(line: 866, column: 45, scope: !1943)
!1945 = !DILocation(line: 866, column: 11, scope: !1943)
!1946 = !DILocation(line: 868, column: 9, scope: !1932)
!1947 = !DILocation(line: 869, column: 8, scope: !1924)
!1948 = !DILocation(line: 870, column: 31, scope: !1949)
!1949 = distinct !DILexicalBlock(scope: !1921, file: !320, line: 869, column: 15)
!1950 = !DILocation(line: 870, column: 36, scope: !1949)
!1951 = !DILocation(line: 870, column: 9, scope: !1949)
!1952 = !DILocation(line: 872, column: 7, scope: !1914)
!1953 = !DILocation(line: 852, column: 5, scope: !1897)
!1954 = distinct !{!1954, !1955, !1956}
!1955 = !DILocation(line: 852, column: 5, scope: !1898)
!1956 = !DILocation(line: 874, column: 5, scope: !1898)
!1957 = !DILocation(line: 875, column: 13, scope: !1894)
!1958 = !DILocation(line: 878, column: 7, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1872, file: !320, line: 878, column: 7)
!1960 = !DILocation(line: 878, column: 7, scope: !1872)
!1961 = !DILocation(line: 879, column: 23, scope: !1959)
!1962 = !DILocation(line: 879, column: 5, scope: !1959)
!1963 = !DILocation(line: 881, column: 2, scope: !1843)
!1964 = !DILocation(line: 882, column: 10, scope: !1818)
!1965 = !DILocation(line: 882, column: 3, scope: !1818)
!1966 = distinct !DISubprogram(name: "mysql_set_realm_option_one", scope: !320, file: !320, line: 885, type: !861, scopeLine: 885, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!1967 = !DILocalVariable(name: "realm", arg: 1, scope: !1966, file: !320, line: 885, type: !833)
!1968 = !DILocation(line: 885, column: 48, scope: !1966)
!1969 = !DILocalVariable(name: "value", arg: 2, scope: !1966, file: !320, line: 885, type: !152)
!1970 = !DILocation(line: 885, column: 69, scope: !1966)
!1971 = !DILocalVariable(name: "opt", arg: 3, scope: !1966, file: !320, line: 885, type: !277)
!1972 = !DILocation(line: 885, column: 88, scope: !1966)
!1973 = !DILocalVariable(name: "ret", scope: !1966, file: !320, line: 886, type: !112)
!1974 = !DILocation(line: 886, column: 7, scope: !1966)
!1975 = !DILocalVariable(name: "statement", scope: !1966, file: !320, line: 887, type: !1034)
!1976 = !DILocation(line: 887, column: 7, scope: !1966)
!1977 = !DILocalVariable(name: "myc", scope: !1966, file: !320, line: 888, type: !134)
!1978 = !DILocation(line: 888, column: 10, scope: !1966)
!1979 = !DILocation(line: 888, column: 16, scope: !1966)
!1980 = !DILocation(line: 889, column: 6, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1966, file: !320, line: 889, column: 6)
!1982 = !DILocation(line: 889, column: 6, scope: !1966)
!1983 = !DILocation(line: 891, column: 13, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1985, file: !320, line: 890, column: 3)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !320, line: 889, column: 11)
!1986 = !DILocation(line: 891, column: 103, scope: !1984)
!1987 = !DILocation(line: 891, column: 109, scope: !1984)
!1988 = !DILocation(line: 891, column: 4, scope: !1984)
!1989 = !DILocation(line: 892, column: 16, scope: !1984)
!1990 = !DILocation(line: 892, column: 21, scope: !1984)
!1991 = !DILocation(line: 892, column: 4, scope: !1984)
!1992 = !DILocation(line: 894, column: 6, scope: !1993)
!1993 = distinct !DILexicalBlock(scope: !1985, file: !320, line: 894, column: 6)
!1994 = !DILocation(line: 894, column: 11, scope: !1993)
!1995 = !DILocation(line: 894, column: 6, scope: !1985)
!1996 = !DILocation(line: 895, column: 13, scope: !1997)
!1997 = distinct !DILexicalBlock(scope: !1993, file: !320, line: 894, column: 15)
!1998 = !DILocation(line: 895, column: 115, scope: !1997)
!1999 = !DILocation(line: 895, column: 121, scope: !1997)
!2000 = !DILocation(line: 895, column: 140, scope: !1997)
!2001 = !DILocation(line: 895, column: 4, scope: !1997)
!2002 = !DILocalVariable(name: "res", scope: !1997, file: !320, line: 896, type: !112)
!2003 = !DILocation(line: 896, column: 8, scope: !1997)
!2004 = !DILocation(line: 896, column: 26, scope: !1997)
!2005 = !DILocation(line: 896, column: 31, scope: !1997)
!2006 = !DILocation(line: 896, column: 14, scope: !1997)
!2007 = !DILocation(line: 897, column: 8, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1997, file: !320, line: 897, column: 8)
!2009 = !DILocation(line: 897, column: 8, scope: !1997)
!2010 = !DILocation(line: 901, column: 20, scope: !2011)
!2011 = distinct !DILexicalBlock(scope: !2008, file: !320, line: 897, column: 13)
!2012 = !DILocation(line: 901, column: 8, scope: !2011)
!2013 = !DILocation(line: 898, column: 5, scope: !2011)
!2014 = !DILocation(line: 902, column: 4, scope: !2011)
!2015 = !DILocation(line: 903, column: 10, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2008, file: !320, line: 902, column: 11)
!2017 = !DILocation(line: 905, column: 3, scope: !1997)
!2018 = !DILocation(line: 906, column: 2, scope: !1985)
!2019 = !DILocation(line: 907, column: 10, scope: !1966)
!2020 = !DILocation(line: 907, column: 3, scope: !1966)
!2021 = distinct !DISubprogram(name: "mysql_list_realm_options", scope: !320, file: !320, line: 910, type: !856, scopeLine: 910, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2022 = !DILocalVariable(name: "realm", arg: 1, scope: !2021, file: !320, line: 910, type: !833)
!2023 = !DILocation(line: 910, column: 46, scope: !2021)
!2024 = !DILocalVariable(name: "ret", scope: !2021, file: !320, line: 911, type: !112)
!2025 = !DILocation(line: 911, column: 7, scope: !2021)
!2026 = !DILocation(line: 912, column: 33, scope: !2021)
!2027 = !DILocalVariable(name: "statement", scope: !2021, file: !320, line: 913, type: !1034)
!2028 = !DILocation(line: 913, column: 7, scope: !2021)
!2029 = !DILocalVariable(name: "myc", scope: !2021, file: !320, line: 914, type: !134)
!2030 = !DILocation(line: 914, column: 10, scope: !2021)
!2031 = !DILocation(line: 914, column: 16, scope: !2021)
!2032 = !DILocation(line: 915, column: 5, scope: !2033)
!2033 = distinct !DILexicalBlock(scope: !2021, file: !320, line: 915, column: 5)
!2034 = !DILocation(line: 915, column: 5, scope: !2021)
!2035 = !DILocation(line: 916, column: 6, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2037, file: !320, line: 916, column: 6)
!2037 = distinct !DILexicalBlock(scope: !2033, file: !320, line: 915, column: 10)
!2038 = !DILocation(line: 916, column: 12, scope: !2036)
!2039 = !DILocation(line: 916, column: 15, scope: !2036)
!2040 = !DILocation(line: 916, column: 6, scope: !2037)
!2041 = !DILocation(line: 917, column: 13, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2036, file: !320, line: 916, column: 25)
!2043 = !DILocation(line: 917, column: 125, scope: !2042)
!2044 = !DILocation(line: 917, column: 4, scope: !2042)
!2045 = !DILocation(line: 918, column: 3, scope: !2042)
!2046 = !DILocation(line: 919, column: 13, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2036, file: !320, line: 918, column: 10)
!2048 = !DILocation(line: 919, column: 4, scope: !2047)
!2049 = !DILocalVariable(name: "res", scope: !2037, file: !320, line: 921, type: !112)
!2050 = !DILocation(line: 921, column: 7, scope: !2037)
!2051 = !DILocation(line: 921, column: 25, scope: !2037)
!2052 = !DILocation(line: 921, column: 30, scope: !2037)
!2053 = !DILocation(line: 921, column: 13, scope: !2037)
!2054 = !DILocation(line: 922, column: 6, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2037, file: !320, line: 922, column: 6)
!2056 = !DILocation(line: 922, column: 6, scope: !2037)
!2057 = !DILocation(line: 923, column: 98, scope: !2058)
!2058 = distinct !DILexicalBlock(scope: !2055, file: !320, line: 922, column: 11)
!2059 = !DILocation(line: 923, column: 86, scope: !2058)
!2060 = !DILocation(line: 923, column: 4, scope: !2058)
!2061 = !DILocation(line: 924, column: 3, scope: !2058)
!2062 = !DILocalVariable(name: "mres", scope: !2063, file: !320, line: 925, type: !1056)
!2063 = distinct !DILexicalBlock(scope: !2055, file: !320, line: 924, column: 10)
!2064 = !DILocation(line: 925, column: 15, scope: !2063)
!2065 = !DILocation(line: 925, column: 41, scope: !2063)
!2066 = !DILocation(line: 925, column: 22, scope: !2063)
!2067 = !DILocation(line: 926, column: 8, scope: !2068)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !320, line: 926, column: 7)
!2069 = !DILocation(line: 926, column: 7, scope: !2063)
!2070 = !DILocation(line: 927, column: 99, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2068, file: !320, line: 926, column: 14)
!2072 = !DILocation(line: 927, column: 87, scope: !2071)
!2073 = !DILocation(line: 927, column: 5, scope: !2071)
!2074 = !DILocation(line: 928, column: 4, scope: !2071)
!2075 = !DILocation(line: 928, column: 32, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2068, file: !320, line: 928, column: 14)
!2077 = !DILocation(line: 928, column: 14, scope: !2076)
!2078 = !DILocation(line: 928, column: 36, scope: !2076)
!2079 = !DILocation(line: 928, column: 14, scope: !2068)
!2080 = !DILocation(line: 929, column: 95, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2076, file: !320, line: 928, column: 41)
!2082 = !DILocation(line: 929, column: 5, scope: !2081)
!2083 = !DILocation(line: 930, column: 4, scope: !2081)
!2084 = !DILocation(line: 931, column: 5, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2076, file: !320, line: 930, column: 11)
!2086 = !DILocalVariable(name: "row", scope: !2087, file: !320, line: 932, type: !1074)
!2087 = distinct !DILexicalBlock(scope: !2088, file: !320, line: 931, column: 13)
!2088 = distinct !DILexicalBlock(scope: !2089, file: !320, line: 931, column: 5)
!2089 = distinct !DILexicalBlock(scope: !2085, file: !320, line: 931, column: 5)
!2090 = !DILocation(line: 932, column: 16, scope: !2087)
!2091 = !DILocation(line: 932, column: 38, scope: !2087)
!2092 = !DILocation(line: 932, column: 22, scope: !2087)
!2093 = !DILocation(line: 933, column: 10, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2087, file: !320, line: 933, column: 9)
!2095 = !DILocation(line: 933, column: 9, scope: !2087)
!2096 = !DILocation(line: 934, column: 7, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2094, file: !320, line: 933, column: 15)
!2098 = !DILocation(line: 936, column: 10, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2100, file: !320, line: 936, column: 10)
!2100 = distinct !DILexicalBlock(scope: !2094, file: !320, line: 935, column: 13)
!2101 = !DILocation(line: 936, column: 17, scope: !2099)
!2102 = !DILocation(line: 936, column: 20, scope: !2099)
!2103 = !DILocation(line: 936, column: 27, scope: !2099)
!2104 = !DILocation(line: 936, column: 30, scope: !2099)
!2105 = !DILocation(line: 936, column: 10, scope: !2100)
!2106 = !DILocation(line: 937, column: 29, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2099, file: !320, line: 936, column: 38)
!2108 = !DILocation(line: 937, column: 36, scope: !2107)
!2109 = !DILocation(line: 937, column: 43, scope: !2107)
!2110 = !DILocation(line: 937, column: 8, scope: !2107)
!2111 = !DILocation(line: 938, column: 7, scope: !2107)
!2112 = !DILocation(line: 931, column: 5, scope: !2088)
!2113 = distinct !{!2113, !2114, !2115}
!2114 = !DILocation(line: 931, column: 5, scope: !2089)
!2115 = !DILocation(line: 940, column: 5, scope: !2089)
!2116 = !DILocation(line: 941, column: 13, scope: !2085)
!2117 = !DILocation(line: 944, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2063, file: !320, line: 944, column: 7)
!2119 = !DILocation(line: 944, column: 7, scope: !2063)
!2120 = !DILocation(line: 945, column: 23, scope: !2118)
!2121 = !DILocation(line: 945, column: 5, scope: !2118)
!2122 = !DILocation(line: 947, column: 2, scope: !2037)
!2123 = !DILocation(line: 948, column: 10, scope: !2021)
!2124 = !DILocation(line: 948, column: 3, scope: !2021)
!2125 = distinct !DISubprogram(name: "mysql_auth_ping", scope: !320, file: !320, line: 951, type: !285, scopeLine: 951, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2126 = !DILocalVariable(name: "rch", arg: 1, scope: !2125, file: !320, line: 951, type: !181)
!2127 = !DILocation(line: 951, column: 36, scope: !2125)
!2128 = !DILocation(line: 952, column: 2, scope: !2125)
!2129 = !DILocation(line: 952, column: 2, scope: !2130)
!2130 = distinct !DILexicalBlock(scope: !2125, file: !320, line: 952, column: 2)
!2131 = !DILocalVariable(name: "myc", scope: !2125, file: !320, line: 953, type: !134)
!2132 = !DILocation(line: 953, column: 10, scope: !2125)
!2133 = !DILocation(line: 953, column: 16, scope: !2125)
!2134 = !DILocation(line: 954, column: 5, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2125, file: !320, line: 954, column: 5)
!2136 = !DILocation(line: 954, column: 5, scope: !2125)
!2137 = !DILocalVariable(name: "statement", scope: !2138, file: !320, line: 955, type: !1034)
!2138 = distinct !DILexicalBlock(scope: !2135, file: !320, line: 954, column: 10)
!2139 = !DILocation(line: 955, column: 8, scope: !2138)
!2140 = !DILocation(line: 956, column: 3, scope: !2138)
!2141 = !DILocation(line: 956, column: 3, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2143, file: !320, line: 956, column: 3)
!2143 = distinct !DILexicalBlock(scope: !2138, file: !320, line: 956, column: 3)
!2144 = !DILocation(line: 956, column: 3, scope: !2143)
!2145 = !DILocalVariable(name: "szdst", scope: !2146, file: !320, line: 956, type: !725)
!2146 = distinct !DILexicalBlock(scope: !2147, file: !320, line: 956, column: 3)
!2147 = distinct !DILexicalBlock(scope: !2148, file: !320, line: 956, column: 3)
!2148 = distinct !DILexicalBlock(scope: !2142, file: !320, line: 956, column: 3)
!2149 = !DILocation(line: 956, column: 3, scope: !2146)
!2150 = !DILocation(line: 956, column: 3, scope: !2148)
!2151 = !DILocalVariable(name: "res", scope: !2138, file: !320, line: 957, type: !112)
!2152 = !DILocation(line: 957, column: 7, scope: !2138)
!2153 = !DILocation(line: 957, column: 25, scope: !2138)
!2154 = !DILocation(line: 957, column: 30, scope: !2138)
!2155 = !DILocation(line: 957, column: 13, scope: !2138)
!2156 = !DILocation(line: 958, column: 6, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2138, file: !320, line: 958, column: 6)
!2158 = !DILocation(line: 958, column: 6, scope: !2138)
!2159 = !DILocation(line: 959, column: 98, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2157, file: !320, line: 958, column: 11)
!2161 = !DILocation(line: 959, column: 86, scope: !2160)
!2162 = !DILocation(line: 959, column: 4, scope: !2160)
!2163 = !DILocation(line: 960, column: 3, scope: !2160)
!2164 = !DILocalVariable(name: "mres", scope: !2165, file: !320, line: 961, type: !1056)
!2165 = distinct !DILexicalBlock(scope: !2157, file: !320, line: 960, column: 10)
!2166 = !DILocation(line: 961, column: 15, scope: !2165)
!2167 = !DILocation(line: 961, column: 41, scope: !2165)
!2168 = !DILocation(line: 961, column: 22, scope: !2165)
!2169 = !DILocation(line: 962, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2165, file: !320, line: 962, column: 7)
!2171 = !DILocation(line: 962, column: 7, scope: !2165)
!2172 = !DILocation(line: 963, column: 99, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2170, file: !320, line: 962, column: 14)
!2174 = !DILocation(line: 963, column: 87, scope: !2173)
!2175 = !DILocation(line: 963, column: 5, scope: !2173)
!2176 = !DILocation(line: 964, column: 4, scope: !2173)
!2177 = !DILocation(line: 965, column: 23, scope: !2178)
!2178 = distinct !DILexicalBlock(scope: !2170, file: !320, line: 964, column: 11)
!2179 = !DILocation(line: 965, column: 5, scope: !2178)
!2180 = !DILocation(line: 968, column: 2, scope: !2138)
!2181 = !DILocation(line: 969, column: 1, scope: !2125)
!2182 = !DILocalVariable(name: "kind", arg: 1, scope: !644, file: !320, line: 971, type: !277)
!2183 = !DILocation(line: 971, column: 42, scope: !644)
!2184 = !DILocalVariable(name: "list", arg: 2, scope: !644, file: !320, line: 971, type: !647)
!2185 = !DILocation(line: 971, column: 66, scope: !644)
!2186 = !DILocalVariable(name: "ret", scope: !644, file: !320, line: 972, type: !112)
!2187 = !DILocation(line: 972, column: 7, scope: !644)
!2188 = !DILocalVariable(name: "myc", scope: !644, file: !320, line: 973, type: !134)
!2189 = !DILocation(line: 973, column: 10, scope: !644)
!2190 = !DILocation(line: 973, column: 16, scope: !644)
!2191 = !DILocation(line: 974, column: 5, scope: !2192)
!2192 = distinct !DILexicalBlock(scope: !644, file: !320, line: 974, column: 5)
!2193 = !DILocation(line: 974, column: 5, scope: !644)
!2194 = !DILocalVariable(name: "statement", scope: !2195, file: !320, line: 975, type: !1034)
!2195 = distinct !DILexicalBlock(scope: !2192, file: !320, line: 974, column: 10)
!2196 = !DILocation(line: 975, column: 8, scope: !2195)
!2197 = !DILocation(line: 976, column: 12, scope: !2195)
!2198 = !DILocation(line: 976, column: 80, scope: !2195)
!2199 = !DILocation(line: 976, column: 3, scope: !2195)
!2200 = !DILocalVariable(name: "res", scope: !2195, file: !320, line: 977, type: !112)
!2201 = !DILocation(line: 977, column: 7, scope: !2195)
!2202 = !DILocation(line: 977, column: 25, scope: !2195)
!2203 = !DILocation(line: 977, column: 30, scope: !2195)
!2204 = !DILocation(line: 977, column: 13, scope: !2195)
!2205 = !DILocation(line: 979, column: 6, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2195, file: !320, line: 979, column: 6)
!2207 = !DILocation(line: 979, column: 6, scope: !2195)
!2208 = !DILocation(line: 981, column: 8, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !320, line: 981, column: 7)
!2210 = distinct !DILexicalBlock(scope: !2206, file: !320, line: 979, column: 11)
!2211 = !DILocation(line: 981, column: 7, scope: !2210)
!2212 = !DILocation(line: 982, column: 26, scope: !2213)
!2213 = distinct !DILexicalBlock(scope: !2209, file: !320, line: 981, column: 30)
!2214 = !DILocation(line: 983, column: 5, scope: !2213)
!2215 = !DILocation(line: 984, column: 4, scope: !2213)
!2216 = !DILocation(line: 985, column: 13, scope: !2210)
!2217 = !DILocation(line: 985, column: 81, scope: !2210)
!2218 = !DILocation(line: 985, column: 4, scope: !2210)
!2219 = !DILocation(line: 986, column: 22, scope: !2210)
!2220 = !DILocation(line: 986, column: 27, scope: !2210)
!2221 = !DILocation(line: 986, column: 10, scope: !2210)
!2222 = !DILocation(line: 986, column: 8, scope: !2210)
!2223 = !DILocation(line: 987, column: 3, scope: !2210)
!2224 = !DILocation(line: 989, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2195, file: !320, line: 989, column: 6)
!2226 = !DILocation(line: 989, column: 10, scope: !2225)
!2227 = !DILocation(line: 989, column: 6, scope: !2195)
!2228 = !DILocalVariable(name: "mres", scope: !2229, file: !320, line: 990, type: !1056)
!2229 = distinct !DILexicalBlock(scope: !2225, file: !320, line: 989, column: 16)
!2230 = !DILocation(line: 990, column: 15, scope: !2229)
!2231 = !DILocation(line: 990, column: 41, scope: !2229)
!2232 = !DILocation(line: 990, column: 22, scope: !2229)
!2233 = !DILocation(line: 991, column: 7, scope: !2234)
!2234 = distinct !DILexicalBlock(scope: !2229, file: !320, line: 991, column: 7)
!2235 = !DILocation(line: 991, column: 12, scope: !2234)
!2236 = !DILocation(line: 991, column: 33, scope: !2234)
!2237 = !DILocation(line: 991, column: 15, scope: !2234)
!2238 = !DILocation(line: 991, column: 37, scope: !2234)
!2239 = !DILocation(line: 991, column: 7, scope: !2229)
!2240 = !DILocation(line: 992, column: 5, scope: !2241)
!2241 = distinct !DILexicalBlock(scope: !2234, file: !320, line: 991, column: 42)
!2242 = !DILocalVariable(name: "row", scope: !2243, file: !320, line: 993, type: !1074)
!2243 = distinct !DILexicalBlock(scope: !2244, file: !320, line: 992, column: 13)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !320, line: 992, column: 5)
!2245 = distinct !DILexicalBlock(scope: !2241, file: !320, line: 992, column: 5)
!2246 = !DILocation(line: 993, column: 16, scope: !2243)
!2247 = !DILocation(line: 993, column: 38, scope: !2243)
!2248 = !DILocation(line: 993, column: 22, scope: !2243)
!2249 = !DILocation(line: 994, column: 10, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2243, file: !320, line: 994, column: 9)
!2251 = !DILocation(line: 994, column: 9, scope: !2243)
!2252 = !DILocation(line: 995, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !320, line: 994, column: 15)
!2254 = !DILocation(line: 997, column: 10, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2256, file: !320, line: 997, column: 10)
!2256 = distinct !DILexicalBlock(scope: !2250, file: !320, line: 996, column: 13)
!2257 = !DILocation(line: 997, column: 10, scope: !2256)
!2258 = !DILocalVariable(name: "lengths", scope: !2259, file: !320, line: 998, type: !1081)
!2259 = distinct !DILexicalBlock(scope: !2255, file: !320, line: 997, column: 18)
!2260 = !DILocation(line: 998, column: 23, scope: !2259)
!2261 = !DILocation(line: 998, column: 53, scope: !2259)
!2262 = !DILocation(line: 998, column: 33, scope: !2259)
!2263 = !DILocation(line: 999, column: 11, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !320, line: 999, column: 11)
!2265 = !DILocation(line: 999, column: 11, scope: !2259)
!2266 = !DILocalVariable(name: "sz", scope: !2267, file: !320, line: 1000, type: !725)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !320, line: 999, column: 20)
!2268 = !DILocation(line: 1000, column: 16, scope: !2267)
!2269 = !DILocation(line: 1000, column: 21, scope: !2267)
!2270 = !DILocalVariable(name: "kval", scope: !2267, file: !320, line: 1001, type: !1034)
!2271 = !DILocation(line: 1001, column: 14, scope: !2267)
!2272 = !DILocation(line: 1002, column: 15, scope: !2267)
!2273 = !DILocation(line: 1002, column: 22, scope: !2267)
!2274 = !DILocation(line: 1002, column: 27, scope: !2267)
!2275 = !DILocation(line: 1002, column: 9, scope: !2267)
!2276 = !DILocation(line: 1003, column: 14, scope: !2267)
!2277 = !DILocation(line: 1003, column: 9, scope: !2267)
!2278 = !DILocation(line: 1003, column: 17, scope: !2267)
!2279 = !DILocation(line: 1004, column: 14, scope: !2267)
!2280 = !DILocation(line: 1004, column: 12, scope: !2267)
!2281 = !DILocalVariable(name: "rval", scope: !2267, file: !320, line: 1005, type: !1034)
!2282 = !DILocation(line: 1005, column: 14, scope: !2267)
!2283 = !DILocation(line: 1006, column: 15, scope: !2267)
!2284 = !DILocation(line: 1006, column: 22, scope: !2267)
!2285 = !DILocation(line: 1006, column: 27, scope: !2267)
!2286 = !DILocation(line: 1006, column: 9, scope: !2267)
!2287 = !DILocation(line: 1007, column: 14, scope: !2267)
!2288 = !DILocation(line: 1007, column: 9, scope: !2267)
!2289 = !DILocation(line: 1007, column: 17, scope: !2267)
!2290 = !DILocation(line: 1008, column: 27, scope: !2267)
!2291 = !DILocation(line: 1008, column: 32, scope: !2267)
!2292 = !DILocation(line: 1008, column: 37, scope: !2267)
!2293 = !DILocation(line: 1008, column: 9, scope: !2267)
!2294 = !DILocation(line: 1009, column: 8, scope: !2267)
!2295 = !DILocation(line: 1010, column: 7, scope: !2259)
!2296 = !DILocation(line: 992, column: 5, scope: !2244)
!2297 = distinct !{!2297, !2298, !2299}
!2298 = !DILocation(line: 992, column: 5, scope: !2245)
!2299 = !DILocation(line: 1012, column: 5, scope: !2245)
!2300 = !DILocation(line: 1013, column: 9, scope: !2241)
!2301 = !DILocation(line: 1014, column: 4, scope: !2241)
!2302 = !DILocation(line: 1016, column: 7, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2229, file: !320, line: 1016, column: 7)
!2304 = !DILocation(line: 1016, column: 7, scope: !2229)
!2305 = !DILocation(line: 1017, column: 23, scope: !2303)
!2306 = !DILocation(line: 1017, column: 5, scope: !2303)
!2307 = !DILocation(line: 1018, column: 3, scope: !2229)
!2308 = !DILocation(line: 1019, column: 2, scope: !2195)
!2309 = !DILocation(line: 1020, column: 10, scope: !644)
!2310 = !DILocation(line: 1020, column: 3, scope: !644)
!2311 = distinct !DISubprogram(name: "mysql_set_permission_ip", scope: !320, file: !320, line: 756, type: !869, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2312 = !DILocalVariable(name: "kind", arg: 1, scope: !2311, file: !320, line: 756, type: !277)
!2313 = !DILocation(line: 756, column: 48, scope: !2311)
!2314 = !DILocalVariable(name: "realm", arg: 2, scope: !2311, file: !320, line: 756, type: !833)
!2315 = !DILocation(line: 756, column: 63, scope: !2311)
!2316 = !DILocalVariable(name: "ip", arg: 3, scope: !2311, file: !320, line: 756, type: !277)
!2317 = !DILocation(line: 756, column: 82, scope: !2311)
!2318 = !DILocalVariable(name: "del", arg: 4, scope: !2311, file: !320, line: 756, type: !112)
!2319 = !DILocation(line: 756, column: 90, scope: !2311)
!2320 = !DILocalVariable(name: "ret", scope: !2311, file: !320, line: 758, type: !112)
!2321 = !DILocation(line: 758, column: 6, scope: !2311)
!2322 = !DILocalVariable(name: "realm0", scope: !2311, file: !320, line: 760, type: !1402)
!2323 = !DILocation(line: 760, column: 10, scope: !2311)
!2324 = !DILocation(line: 761, column: 6, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2311, file: !320, line: 761, column: 5)
!2326 = !DILocation(line: 761, column: 5, scope: !2311)
!2327 = !DILocation(line: 761, column: 19, scope: !2325)
!2328 = !DILocation(line: 761, column: 18, scope: !2325)
!2329 = !DILocation(line: 761, column: 13, scope: !2325)
!2330 = !DILocation(line: 763, column: 33, scope: !2311)
!2331 = !DILocalVariable(name: "statement", scope: !2311, file: !320, line: 765, type: !1034)
!2332 = !DILocation(line: 765, column: 7, scope: !2311)
!2333 = !DILocalVariable(name: "myc", scope: !2311, file: !320, line: 767, type: !134)
!2334 = !DILocation(line: 767, column: 10, scope: !2311)
!2335 = !DILocation(line: 767, column: 16, scope: !2311)
!2336 = !DILocation(line: 768, column: 6, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2311, file: !320, line: 768, column: 6)
!2338 = !DILocation(line: 768, column: 6, scope: !2311)
!2339 = !DILocation(line: 769, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2341, file: !320, line: 769, column: 6)
!2341 = distinct !DILexicalBlock(scope: !2337, file: !320, line: 768, column: 11)
!2342 = !DILocation(line: 769, column: 6, scope: !2341)
!2343 = !DILocation(line: 770, column: 13, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2340, file: !320, line: 769, column: 11)
!2345 = !DILocation(line: 770, column: 109, scope: !2344)
!2346 = !DILocation(line: 770, column: 122, scope: !2344)
!2347 = !DILocation(line: 770, column: 129, scope: !2344)
!2348 = !DILocation(line: 770, column: 4, scope: !2344)
!2349 = !DILocation(line: 771, column: 3, scope: !2344)
!2350 = !DILocation(line: 772, column: 13, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2340, file: !320, line: 771, column: 10)
!2352 = !DILocation(line: 772, column: 104, scope: !2351)
!2353 = !DILocation(line: 772, column: 117, scope: !2351)
!2354 = !DILocation(line: 772, column: 124, scope: !2351)
!2355 = !DILocation(line: 772, column: 4, scope: !2351)
!2356 = !DILocalVariable(name: "res", scope: !2341, file: !320, line: 774, type: !112)
!2357 = !DILocation(line: 774, column: 7, scope: !2341)
!2358 = !DILocation(line: 774, column: 25, scope: !2341)
!2359 = !DILocation(line: 774, column: 30, scope: !2341)
!2360 = !DILocation(line: 774, column: 13, scope: !2341)
!2361 = !DILocation(line: 775, column: 7, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2341, file: !320, line: 775, column: 7)
!2363 = !DILocation(line: 775, column: 7, scope: !2341)
!2364 = !DILocation(line: 779, column: 18, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2362, file: !320, line: 775, column: 12)
!2366 = !DILocation(line: 779, column: 6, scope: !2365)
!2367 = !DILocation(line: 776, column: 4, scope: !2365)
!2368 = !DILocation(line: 780, column: 3, scope: !2365)
!2369 = !DILocation(line: 781, column: 8, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2362, file: !320, line: 780, column: 10)
!2371 = !DILocation(line: 783, column: 2, scope: !2341)
!2372 = !DILocation(line: 784, column: 9, scope: !2311)
!2373 = !DILocation(line: 784, column: 2, scope: !2311)
!2374 = distinct !DISubprogram(name: "mysql_reread_realms", scope: !320, file: !320, line: 1023, type: !873, scopeLine: 1023, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2375 = !DILocalVariable(name: "realms_list", arg: 1, scope: !2374, file: !320, line: 1023, type: !825)
!2376 = !DILocation(line: 1023, column: 50, scope: !2374)
!2377 = !DILocalVariable(name: "myc", scope: !2374, file: !320, line: 1024, type: !134)
!2378 = !DILocation(line: 1024, column: 10, scope: !2374)
!2379 = !DILocation(line: 1024, column: 16, scope: !2374)
!2380 = !DILocation(line: 1025, column: 5, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2374, file: !320, line: 1025, column: 5)
!2382 = !DILocation(line: 1025, column: 5, scope: !2374)
!2383 = !DILocalVariable(name: "statement", scope: !2384, file: !320, line: 1026, type: !1034)
!2384 = distinct !DILexicalBlock(scope: !2381, file: !320, line: 1025, column: 10)
!2385 = !DILocation(line: 1026, column: 8, scope: !2384)
!2386 = !DILocation(line: 1028, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !320, line: 1027, column: 3)
!2388 = !DILocation(line: 1028, column: 4, scope: !2387)
!2389 = !DILocalVariable(name: "res", scope: !2387, file: !320, line: 1029, type: !112)
!2390 = !DILocation(line: 1029, column: 8, scope: !2387)
!2391 = !DILocation(line: 1029, column: 26, scope: !2387)
!2392 = !DILocation(line: 1029, column: 31, scope: !2387)
!2393 = !DILocation(line: 1029, column: 14, scope: !2387)
!2394 = !DILocation(line: 1030, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2387, file: !320, line: 1030, column: 7)
!2396 = !DILocation(line: 1030, column: 11, scope: !2395)
!2397 = !DILocation(line: 1030, column: 7, scope: !2387)
!2398 = !DILocalVariable(name: "mres", scope: !2399, file: !320, line: 1031, type: !1056)
!2399 = distinct !DILexicalBlock(scope: !2395, file: !320, line: 1030, column: 17)
!2400 = !DILocation(line: 1031, column: 16, scope: !2399)
!2401 = !DILocation(line: 1031, column: 42, scope: !2399)
!2402 = !DILocation(line: 1031, column: 23, scope: !2399)
!2403 = !DILocation(line: 1032, column: 8, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2399, file: !320, line: 1032, column: 8)
!2405 = !DILocation(line: 1032, column: 13, scope: !2404)
!2406 = !DILocation(line: 1032, column: 34, scope: !2404)
!2407 = !DILocation(line: 1032, column: 16, scope: !2404)
!2408 = !DILocation(line: 1032, column: 38, scope: !2404)
!2409 = !DILocation(line: 1032, column: 8, scope: !2399)
!2410 = !DILocalVariable(name: "o_to_realm_new", scope: !2411, file: !320, line: 1034, type: !2412)
!2411 = distinct !DILexicalBlock(scope: !2404, file: !320, line: 1032, column: 43)
!2412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2413, size: 64)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !336, line: 227, baseType: !2414)
!2414 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !336, line: 226, flags: DIFlagFwdDecl)
!2415 = !DILocation(line: 1034, column: 21, scope: !2411)
!2416 = !DILocation(line: 1034, column: 38, scope: !2411)
!2417 = !DILocation(line: 1036, column: 6, scope: !2411)
!2418 = !DILocalVariable(name: "row", scope: !2419, file: !320, line: 1037, type: !1074)
!2419 = distinct !DILexicalBlock(scope: !2420, file: !320, line: 1036, column: 14)
!2420 = distinct !DILexicalBlock(scope: !2421, file: !320, line: 1036, column: 6)
!2421 = distinct !DILexicalBlock(scope: !2411, file: !320, line: 1036, column: 6)
!2422 = !DILocation(line: 1037, column: 17, scope: !2419)
!2423 = !DILocation(line: 1037, column: 39, scope: !2419)
!2424 = !DILocation(line: 1037, column: 23, scope: !2419)
!2425 = !DILocation(line: 1038, column: 11, scope: !2426)
!2426 = distinct !DILexicalBlock(scope: !2419, file: !320, line: 1038, column: 10)
!2427 = !DILocation(line: 1038, column: 10, scope: !2419)
!2428 = !DILocation(line: 1039, column: 8, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2426, file: !320, line: 1038, column: 16)
!2430 = !DILocation(line: 1041, column: 11, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2432, file: !320, line: 1041, column: 11)
!2432 = distinct !DILexicalBlock(scope: !2426, file: !320, line: 1040, column: 14)
!2433 = !DILocation(line: 1041, column: 18, scope: !2431)
!2434 = !DILocation(line: 1041, column: 21, scope: !2431)
!2435 = !DILocation(line: 1041, column: 11, scope: !2432)
!2436 = !DILocalVariable(name: "lengths", scope: !2437, file: !320, line: 1042, type: !1081)
!2437 = distinct !DILexicalBlock(scope: !2431, file: !320, line: 1041, column: 29)
!2438 = !DILocation(line: 1042, column: 24, scope: !2437)
!2439 = !DILocation(line: 1042, column: 54, scope: !2437)
!2440 = !DILocation(line: 1042, column: 34, scope: !2437)
!2441 = !DILocation(line: 1043, column: 12, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !320, line: 1043, column: 12)
!2443 = !DILocation(line: 1043, column: 12, scope: !2437)
!2444 = !DILocalVariable(name: "sz", scope: !2445, file: !320, line: 1044, type: !725)
!2445 = distinct !DILexicalBlock(scope: !2442, file: !320, line: 1043, column: 21)
!2446 = !DILocation(line: 1044, column: 17, scope: !2445)
!2447 = !DILocation(line: 1044, column: 22, scope: !2445)
!2448 = !DILocalVariable(name: "oval", scope: !2445, file: !320, line: 1045, type: !662)
!2449 = !DILocation(line: 1045, column: 15, scope: !2445)
!2450 = !DILocation(line: 1046, column: 16, scope: !2445)
!2451 = !DILocation(line: 1046, column: 23, scope: !2445)
!2452 = !DILocation(line: 1046, column: 28, scope: !2445)
!2453 = !DILocation(line: 1046, column: 10, scope: !2445)
!2454 = !DILocation(line: 1047, column: 15, scope: !2445)
!2455 = !DILocation(line: 1047, column: 10, scope: !2445)
!2456 = !DILocation(line: 1047, column: 18, scope: !2445)
!2457 = !DILocalVariable(name: "rval", scope: !2445, file: !320, line: 1048, type: !132)
!2458 = !DILocation(line: 1048, column: 16, scope: !2445)
!2459 = !DILocation(line: 1048, column: 28, scope: !2445)
!2460 = !DILocation(line: 1048, column: 21, scope: !2445)
!2461 = !DILocation(line: 1049, column: 20, scope: !2445)
!2462 = !DILocation(line: 1049, column: 10, scope: !2445)
!2463 = !DILocalVariable(name: "value", scope: !2445, file: !320, line: 1050, type: !335)
!2464 = !DILocation(line: 1050, column: 35, scope: !2445)
!2465 = !DILocation(line: 1050, column: 69, scope: !2445)
!2466 = !DILocation(line: 1051, column: 28, scope: !2445)
!2467 = !DILocation(line: 1051, column: 69, scope: !2445)
!2468 = !DILocation(line: 1051, column: 75, scope: !2445)
!2469 = !DILocation(line: 1051, column: 10, scope: !2445)
!2470 = !DILocation(line: 1052, column: 9, scope: !2445)
!2471 = !DILocation(line: 1053, column: 8, scope: !2437)
!2472 = !DILocation(line: 1036, column: 6, scope: !2420)
!2473 = distinct !{!2473, !2474, !2475}
!2474 = !DILocation(line: 1036, column: 6, scope: !2421)
!2475 = !DILocation(line: 1055, column: 6, scope: !2421)
!2476 = !DILocation(line: 1057, column: 24, scope: !2411)
!2477 = !DILocation(line: 1057, column: 6, scope: !2411)
!2478 = !DILocation(line: 1058, column: 5, scope: !2411)
!2479 = !DILocation(line: 1060, column: 8, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2399, file: !320, line: 1060, column: 8)
!2481 = !DILocation(line: 1060, column: 8, scope: !2399)
!2482 = !DILocation(line: 1061, column: 24, scope: !2480)
!2483 = !DILocation(line: 1061, column: 6, scope: !2480)
!2484 = !DILocation(line: 1062, column: 4, scope: !2399)
!2485 = !DILocalVariable(name: "i", scope: !2486, file: !320, line: 1065, type: !725)
!2486 = distinct !DILexicalBlock(scope: !2384, file: !320, line: 1064, column: 3)
!2487 = !DILocation(line: 1065, column: 11, scope: !2486)
!2488 = !DILocalVariable(name: "rlsz", scope: !2486, file: !320, line: 1066, type: !725)
!2489 = !DILocation(line: 1066, column: 11, scope: !2486)
!2490 = !DILocation(line: 1068, column: 4, scope: !2486)
!2491 = !DILocation(line: 1069, column: 11, scope: !2486)
!2492 = !DILocation(line: 1069, column: 24, scope: !2486)
!2493 = !DILocation(line: 1069, column: 9, scope: !2486)
!2494 = !DILocation(line: 1070, column: 4, scope: !2486)
!2495 = !DILocation(line: 1072, column: 11, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2486, file: !320, line: 1072, column: 4)
!2497 = !DILocation(line: 1072, column: 9, scope: !2496)
!2498 = !DILocation(line: 1072, column: 16, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2496, file: !320, line: 1072, column: 4)
!2500 = !DILocation(line: 1072, column: 18, scope: !2499)
!2501 = !DILocation(line: 1072, column: 17, scope: !2499)
!2502 = !DILocation(line: 1072, column: 4, scope: !2496)
!2503 = !DILocalVariable(name: "realm", scope: !2504, file: !320, line: 1074, type: !132)
!2504 = distinct !DILexicalBlock(scope: !2499, file: !320, line: 1072, column: 29)
!2505 = !DILocation(line: 1074, column: 11, scope: !2504)
!2506 = !DILocation(line: 1074, column: 19, scope: !2504)
!2507 = !DILocation(line: 1074, column: 32, scope: !2504)
!2508 = !DILocation(line: 1074, column: 40, scope: !2504)
!2509 = !DILocalVariable(name: "rp", scope: !2504, file: !320, line: 1076, type: !2510)
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2511, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !827, line: 55, baseType: !2512)
!2512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !827, line: 64, size: 1344, elements: !2513)
!2513 = !{!2514, !2515, !2529}
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !2512, file: !827, line: 66, baseType: !112, size: 32)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2512, file: !827, line: 68, baseType: !2516, size: 1152, offset: 64)
!2516 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !649, line: 142, baseType: !2517)
!2517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !2518, line: 53, size: 1152, elements: !2519)
!2518 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2517, file: !2518, line: 55, baseType: !893, size: 1024)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !2517, file: !2518, line: 57, baseType: !2522, size: 128, offset: 1024)
!2522 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !2518, line: 51, baseType: !2523)
!2523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !2518, line: 45, size: 128, elements: !2524)
!2524 = !{!2525, !2527, !2528}
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !2523, file: !2518, line: 47, baseType: !2526, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !338)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !2523, file: !2518, line: 48, baseType: !340, size: 32, offset: 64)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !2523, file: !2518, line: 49, baseType: !340, size: 32, offset: 96)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2512, file: !827, line: 70, baseType: !2530, size: 128, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !827, line: 52, baseType: !2531)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !827, line: 57, size: 128, elements: !2532)
!2532 = !{!2533, !2534}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !2531, file: !827, line: 59, baseType: !340, size: 32)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !2531, file: !827, line: 60, baseType: !2412, size: 64, offset: 64)
!2535 = !DILocation(line: 1076, column: 21, scope: !2504)
!2536 = !DILocation(line: 1076, column: 36, scope: !2504)
!2537 = !DILocation(line: 1076, column: 26, scope: !2504)
!2538 = !DILocation(line: 1078, column: 5, scope: !2504)
!2539 = !DILocation(line: 1079, column: 52, scope: !2504)
!2540 = !DILocation(line: 1079, column: 5, scope: !2504)
!2541 = !DILocation(line: 1079, column: 9, scope: !2504)
!2542 = !DILocation(line: 1079, column: 17, scope: !2504)
!2543 = !DILocation(line: 1079, column: 30, scope: !2504)
!2544 = !DILocation(line: 1079, column: 38, scope: !2504)
!2545 = !DILocation(line: 1080, column: 5, scope: !2504)
!2546 = !DILocation(line: 1082, column: 5, scope: !2504)
!2547 = !DILocation(line: 1083, column: 56, scope: !2504)
!2548 = !DILocation(line: 1083, column: 5, scope: !2504)
!2549 = !DILocation(line: 1083, column: 9, scope: !2504)
!2550 = !DILocation(line: 1083, column: 17, scope: !2504)
!2551 = !DILocation(line: 1083, column: 30, scope: !2504)
!2552 = !DILocation(line: 1083, column: 42, scope: !2504)
!2553 = !DILocation(line: 1084, column: 5, scope: !2504)
!2554 = !DILocation(line: 1086, column: 5, scope: !2504)
!2555 = !DILocation(line: 1087, column: 55, scope: !2504)
!2556 = !DILocation(line: 1087, column: 5, scope: !2504)
!2557 = !DILocation(line: 1087, column: 9, scope: !2504)
!2558 = !DILocation(line: 1087, column: 17, scope: !2504)
!2559 = !DILocation(line: 1087, column: 30, scope: !2504)
!2560 = !DILocation(line: 1087, column: 41, scope: !2504)
!2561 = !DILocation(line: 1088, column: 5, scope: !2504)
!2562 = !DILocation(line: 1090, column: 4, scope: !2504)
!2563 = !DILocation(line: 1072, column: 24, scope: !2499)
!2564 = !DILocation(line: 1072, column: 4, scope: !2499)
!2565 = distinct !{!2565, !2502, !2566, !2567}
!2566 = !DILocation(line: 1090, column: 4, scope: !2496)
!2567 = !{!"llvm.loop.mustprogress"}
!2568 = !DILocation(line: 1093, column: 12, scope: !2384)
!2569 = !DILocation(line: 1093, column: 3, scope: !2384)
!2570 = !DILocalVariable(name: "res", scope: !2384, file: !320, line: 1094, type: !112)
!2571 = !DILocation(line: 1094, column: 7, scope: !2384)
!2572 = !DILocation(line: 1094, column: 25, scope: !2384)
!2573 = !DILocation(line: 1094, column: 30, scope: !2384)
!2574 = !DILocation(line: 1094, column: 13, scope: !2384)
!2575 = !DILocation(line: 1095, column: 6, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2384, file: !320, line: 1095, column: 6)
!2577 = !DILocation(line: 1095, column: 10, scope: !2576)
!2578 = !DILocation(line: 1095, column: 6, scope: !2384)
!2579 = !DILocalVariable(name: "mres", scope: !2580, file: !320, line: 1096, type: !1056)
!2580 = distinct !DILexicalBlock(scope: !2576, file: !320, line: 1095, column: 16)
!2581 = !DILocation(line: 1096, column: 15, scope: !2580)
!2582 = !DILocation(line: 1096, column: 41, scope: !2580)
!2583 = !DILocation(line: 1096, column: 22, scope: !2580)
!2584 = !DILocation(line: 1097, column: 7, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2580, file: !320, line: 1097, column: 7)
!2586 = !DILocation(line: 1097, column: 12, scope: !2585)
!2587 = !DILocation(line: 1097, column: 33, scope: !2585)
!2588 = !DILocation(line: 1097, column: 15, scope: !2585)
!2589 = !DILocation(line: 1097, column: 37, scope: !2585)
!2590 = !DILocation(line: 1097, column: 7, scope: !2580)
!2591 = !DILocation(line: 1099, column: 5, scope: !2592)
!2592 = distinct !DILexicalBlock(scope: !2585, file: !320, line: 1097, column: 42)
!2593 = !DILocalVariable(name: "row", scope: !2594, file: !320, line: 1100, type: !1074)
!2594 = distinct !DILexicalBlock(scope: !2595, file: !320, line: 1099, column: 13)
!2595 = distinct !DILexicalBlock(scope: !2596, file: !320, line: 1099, column: 5)
!2596 = distinct !DILexicalBlock(scope: !2592, file: !320, line: 1099, column: 5)
!2597 = !DILocation(line: 1100, column: 16, scope: !2594)
!2598 = !DILocation(line: 1100, column: 38, scope: !2594)
!2599 = !DILocation(line: 1100, column: 22, scope: !2594)
!2600 = !DILocation(line: 1101, column: 10, scope: !2601)
!2601 = distinct !DILexicalBlock(scope: !2594, file: !320, line: 1101, column: 9)
!2602 = !DILocation(line: 1101, column: 9, scope: !2594)
!2603 = !DILocation(line: 1102, column: 7, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2601, file: !320, line: 1101, column: 15)
!2605 = !DILocation(line: 1104, column: 10, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2607, file: !320, line: 1104, column: 10)
!2607 = distinct !DILexicalBlock(scope: !2601, file: !320, line: 1103, column: 13)
!2608 = !DILocation(line: 1104, column: 17, scope: !2606)
!2609 = !DILocation(line: 1104, column: 20, scope: !2606)
!2610 = !DILocation(line: 1104, column: 27, scope: !2606)
!2611 = !DILocation(line: 1104, column: 30, scope: !2606)
!2612 = !DILocation(line: 1104, column: 10, scope: !2607)
!2613 = !DILocalVariable(name: "lengths", scope: !2614, file: !320, line: 1105, type: !1081)
!2614 = distinct !DILexicalBlock(scope: !2606, file: !320, line: 1104, column: 38)
!2615 = !DILocation(line: 1105, column: 23, scope: !2614)
!2616 = !DILocation(line: 1105, column: 53, scope: !2614)
!2617 = !DILocation(line: 1105, column: 33, scope: !2614)
!2618 = !DILocation(line: 1106, column: 11, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2614, file: !320, line: 1106, column: 11)
!2620 = !DILocation(line: 1106, column: 11, scope: !2614)
!2621 = !DILocalVariable(name: "rval", scope: !2622, file: !320, line: 1107, type: !662)
!2622 = distinct !DILexicalBlock(scope: !2619, file: !320, line: 1106, column: 20)
!2623 = !DILocation(line: 1107, column: 14, scope: !2622)
!2624 = !DILocalVariable(name: "sz", scope: !2622, file: !320, line: 1108, type: !725)
!2625 = !DILocation(line: 1108, column: 16, scope: !2622)
!2626 = !DILocation(line: 1108, column: 21, scope: !2622)
!2627 = !DILocation(line: 1109, column: 15, scope: !2622)
!2628 = !DILocation(line: 1109, column: 22, scope: !2622)
!2629 = !DILocation(line: 1109, column: 27, scope: !2622)
!2630 = !DILocation(line: 1109, column: 9, scope: !2622)
!2631 = !DILocation(line: 1110, column: 14, scope: !2622)
!2632 = !DILocation(line: 1110, column: 9, scope: !2622)
!2633 = !DILocation(line: 1110, column: 17, scope: !2622)
!2634 = !DILocalVariable(name: "oval", scope: !2622, file: !320, line: 1111, type: !662)
!2635 = !DILocation(line: 1111, column: 14, scope: !2622)
!2636 = !DILocation(line: 1112, column: 14, scope: !2622)
!2637 = !DILocation(line: 1112, column: 12, scope: !2622)
!2638 = !DILocation(line: 1113, column: 15, scope: !2622)
!2639 = !DILocation(line: 1113, column: 22, scope: !2622)
!2640 = !DILocation(line: 1113, column: 27, scope: !2622)
!2641 = !DILocation(line: 1113, column: 9, scope: !2622)
!2642 = !DILocation(line: 1114, column: 14, scope: !2622)
!2643 = !DILocation(line: 1114, column: 9, scope: !2622)
!2644 = !DILocation(line: 1114, column: 17, scope: !2622)
!2645 = !DILocalVariable(name: "vval", scope: !2622, file: !320, line: 1115, type: !662)
!2646 = !DILocation(line: 1115, column: 14, scope: !2622)
!2647 = !DILocation(line: 1116, column: 14, scope: !2622)
!2648 = !DILocation(line: 1116, column: 12, scope: !2622)
!2649 = !DILocation(line: 1117, column: 15, scope: !2622)
!2650 = !DILocation(line: 1117, column: 22, scope: !2622)
!2651 = !DILocation(line: 1117, column: 27, scope: !2622)
!2652 = !DILocation(line: 1117, column: 9, scope: !2622)
!2653 = !DILocation(line: 1118, column: 14, scope: !2622)
!2654 = !DILocation(line: 1118, column: 9, scope: !2622)
!2655 = !DILocation(line: 1118, column: 17, scope: !2622)
!2656 = !DILocalVariable(name: "rp", scope: !2622, file: !320, line: 1119, type: !2510)
!2657 = !DILocation(line: 1119, column: 25, scope: !2622)
!2658 = !DILocation(line: 1119, column: 40, scope: !2622)
!2659 = !DILocation(line: 1119, column: 30, scope: !2622)
!2660 = !DILocation(line: 1120, column: 20, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2622, file: !320, line: 1120, column: 12)
!2662 = !DILocation(line: 1120, column: 13, scope: !2661)
!2663 = !DILocation(line: 1120, column: 12, scope: !2622)
!2664 = !DILocation(line: 1121, column: 67, scope: !2661)
!2665 = !DILocation(line: 1121, column: 59, scope: !2661)
!2666 = !DILocation(line: 1121, column: 10, scope: !2661)
!2667 = !DILocation(line: 1121, column: 14, scope: !2661)
!2668 = !DILocation(line: 1121, column: 22, scope: !2661)
!2669 = !DILocation(line: 1121, column: 35, scope: !2661)
!2670 = !DILocation(line: 1121, column: 43, scope: !2661)
!2671 = !DILocation(line: 1122, column: 25, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2661, file: !320, line: 1122, column: 17)
!2673 = !DILocation(line: 1122, column: 18, scope: !2672)
!2674 = !DILocation(line: 1122, column: 17, scope: !2661)
!2675 = !DILocation(line: 1123, column: 60, scope: !2672)
!2676 = !DILocation(line: 1123, column: 55, scope: !2672)
!2677 = !DILocation(line: 1123, column: 10, scope: !2672)
!2678 = !DILocation(line: 1123, column: 14, scope: !2672)
!2679 = !DILocation(line: 1123, column: 22, scope: !2672)
!2680 = !DILocation(line: 1123, column: 35, scope: !2672)
!2681 = !DILocation(line: 1123, column: 47, scope: !2672)
!2682 = !DILocation(line: 1124, column: 25, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2672, file: !320, line: 1124, column: 17)
!2684 = !DILocation(line: 1124, column: 18, scope: !2683)
!2685 = !DILocation(line: 1124, column: 17, scope: !2672)
!2686 = !DILocation(line: 1125, column: 59, scope: !2683)
!2687 = !DILocation(line: 1125, column: 54, scope: !2683)
!2688 = !DILocation(line: 1125, column: 10, scope: !2683)
!2689 = !DILocation(line: 1125, column: 14, scope: !2683)
!2690 = !DILocation(line: 1125, column: 22, scope: !2683)
!2691 = !DILocation(line: 1125, column: 35, scope: !2683)
!2692 = !DILocation(line: 1125, column: 46, scope: !2683)
!2693 = !DILocation(line: 1127, column: 76, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2683, file: !320, line: 1126, column: 14)
!2695 = !DILocation(line: 1127, column: 10, scope: !2694)
!2696 = !DILocation(line: 1129, column: 8, scope: !2622)
!2697 = !DILocation(line: 1130, column: 7, scope: !2614)
!2698 = !DILocation(line: 1099, column: 5, scope: !2595)
!2699 = distinct !{!2699, !2700, !2701}
!2700 = !DILocation(line: 1099, column: 5, scope: !2596)
!2701 = !DILocation(line: 1132, column: 5, scope: !2596)
!2702 = !DILocation(line: 1133, column: 4, scope: !2592)
!2703 = !DILocation(line: 1135, column: 7, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2580, file: !320, line: 1135, column: 7)
!2705 = !DILocation(line: 1135, column: 7, scope: !2580)
!2706 = !DILocation(line: 1136, column: 23, scope: !2704)
!2707 = !DILocation(line: 1136, column: 5, scope: !2704)
!2708 = !DILocation(line: 1137, column: 3, scope: !2580)
!2709 = !DILocation(line: 1138, column: 2, scope: !2384)
!2710 = !DILocation(line: 1139, column: 1, scope: !2374)
!2711 = distinct !DISubprogram(name: "mysql_set_oauth_key", scope: !320, file: !320, line: 545, type: !877, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2712 = !DILocalVariable(name: "key", arg: 1, scope: !2711, file: !320, line: 545, type: !879)
!2713 = !DILocation(line: 545, column: 52, scope: !2711)
!2714 = !DILocalVariable(name: "ret", scope: !2711, file: !320, line: 547, type: !112)
!2715 = !DILocation(line: 547, column: 6, scope: !2711)
!2716 = !DILocalVariable(name: "statement", scope: !2711, file: !320, line: 548, type: !1034)
!2717 = !DILocation(line: 548, column: 7, scope: !2711)
!2718 = !DILocalVariable(name: "myc", scope: !2711, file: !320, line: 549, type: !134)
!2719 = !DILocation(line: 549, column: 10, scope: !2711)
!2720 = !DILocation(line: 549, column: 16, scope: !2711)
!2721 = !DILocation(line: 550, column: 5, scope: !2722)
!2722 = distinct !DILexicalBlock(scope: !2711, file: !320, line: 550, column: 5)
!2723 = !DILocation(line: 550, column: 5, scope: !2711)
!2724 = !DILocation(line: 551, column: 12, scope: !2725)
!2725 = distinct !DILexicalBlock(scope: !2722, file: !320, line: 550, column: 10)
!2726 = !DILocation(line: 552, column: 8, scope: !2725)
!2727 = !DILocation(line: 552, column: 13, scope: !2725)
!2728 = !DILocation(line: 552, column: 17, scope: !2725)
!2729 = !DILocation(line: 552, column: 22, scope: !2725)
!2730 = !DILocation(line: 552, column: 50, scope: !2725)
!2731 = !DILocation(line: 552, column: 55, scope: !2725)
!2732 = !DILocation(line: 552, column: 80, scope: !2725)
!2733 = !DILocation(line: 552, column: 85, scope: !2725)
!2734 = !DILocation(line: 552, column: 65, scope: !2725)
!2735 = !DILocation(line: 553, column: 8, scope: !2725)
!2736 = !DILocation(line: 553, column: 13, scope: !2725)
!2737 = !DILocation(line: 553, column: 23, scope: !2725)
!2738 = !DILocation(line: 553, column: 28, scope: !2725)
!2739 = !DILocation(line: 551, column: 3, scope: !2725)
!2740 = !DILocalVariable(name: "res", scope: !2725, file: !320, line: 554, type: !112)
!2741 = !DILocation(line: 554, column: 7, scope: !2725)
!2742 = !DILocation(line: 554, column: 25, scope: !2725)
!2743 = !DILocation(line: 554, column: 30, scope: !2725)
!2744 = !DILocation(line: 554, column: 13, scope: !2725)
!2745 = !DILocation(line: 555, column: 6, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2725, file: !320, line: 555, column: 6)
!2747 = !DILocation(line: 555, column: 6, scope: !2725)
!2748 = !DILocation(line: 556, column: 13, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2746, file: !320, line: 555, column: 11)
!2750 = !DILocation(line: 556, column: 147, scope: !2749)
!2751 = !DILocation(line: 556, column: 152, scope: !2749)
!2752 = !DILocation(line: 556, column: 175, scope: !2749)
!2753 = !DILocation(line: 556, column: 180, scope: !2749)
!2754 = !DILocation(line: 556, column: 205, scope: !2749)
!2755 = !DILocation(line: 556, column: 210, scope: !2749)
!2756 = !DILocation(line: 556, column: 190, scope: !2749)
!2757 = !DILocation(line: 557, column: 10, scope: !2749)
!2758 = !DILocation(line: 557, column: 15, scope: !2749)
!2759 = !DILocation(line: 557, column: 25, scope: !2749)
!2760 = !DILocation(line: 557, column: 30, scope: !2749)
!2761 = !DILocation(line: 557, column: 36, scope: !2749)
!2762 = !DILocation(line: 557, column: 41, scope: !2749)
!2763 = !DILocation(line: 556, column: 4, scope: !2749)
!2764 = !DILocation(line: 558, column: 22, scope: !2749)
!2765 = !DILocation(line: 558, column: 27, scope: !2749)
!2766 = !DILocation(line: 558, column: 10, scope: !2749)
!2767 = !DILocation(line: 558, column: 8, scope: !2749)
!2768 = !DILocation(line: 559, column: 7, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2749, file: !320, line: 559, column: 7)
!2770 = !DILocation(line: 559, column: 7, scope: !2749)
!2771 = !DILocation(line: 560, column: 108, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !320, line: 559, column: 12)
!2773 = !DILocation(line: 560, column: 96, scope: !2772)
!2774 = !DILocation(line: 560, column: 5, scope: !2772)
!2775 = !DILocation(line: 561, column: 4, scope: !2772)
!2776 = !DILocation(line: 562, column: 9, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2769, file: !320, line: 561, column: 11)
!2778 = !DILocation(line: 564, column: 3, scope: !2749)
!2779 = !DILocation(line: 565, column: 8, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2746, file: !320, line: 564, column: 10)
!2781 = !DILocation(line: 567, column: 2, scope: !2725)
!2782 = !DILocation(line: 568, column: 9, scope: !2711)
!2783 = !DILocation(line: 568, column: 2, scope: !2711)
!2784 = distinct !DISubprogram(name: "mysql_get_oauth_key", scope: !320, file: !320, line: 388, type: !898, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2785 = !DILocalVariable(name: "kid", arg: 1, scope: !2784, file: !320, line: 388, type: !900)
!2786 = !DILocation(line: 388, column: 47, scope: !2784)
!2787 = !DILocalVariable(name: "key", arg: 2, scope: !2784, file: !320, line: 388, type: !879)
!2788 = !DILocation(line: 388, column: 72, scope: !2784)
!2789 = !DILocalVariable(name: "ret", scope: !2784, file: !320, line: 390, type: !112)
!2790 = !DILocation(line: 390, column: 6, scope: !2784)
!2791 = !DILocalVariable(name: "statement", scope: !2784, file: !320, line: 391, type: !1034)
!2792 = !DILocation(line: 391, column: 7, scope: !2784)
!2793 = !DILocation(line: 393, column: 11, scope: !2784)
!2794 = !DILocation(line: 393, column: 134, scope: !2784)
!2795 = !DILocation(line: 393, column: 2, scope: !2784)
!2796 = !DILocalVariable(name: "myc", scope: !2784, file: !320, line: 395, type: !134)
!2797 = !DILocation(line: 395, column: 10, scope: !2784)
!2798 = !DILocation(line: 395, column: 16, scope: !2784)
!2799 = !DILocation(line: 396, column: 5, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2784, file: !320, line: 396, column: 5)
!2801 = !DILocation(line: 396, column: 5, scope: !2784)
!2802 = !DILocalVariable(name: "res", scope: !2803, file: !320, line: 397, type: !112)
!2803 = distinct !DILexicalBlock(scope: !2800, file: !320, line: 396, column: 10)
!2804 = !DILocation(line: 397, column: 7, scope: !2803)
!2805 = !DILocation(line: 397, column: 25, scope: !2803)
!2806 = !DILocation(line: 397, column: 30, scope: !2803)
!2807 = !DILocation(line: 397, column: 13, scope: !2803)
!2808 = !DILocation(line: 398, column: 6, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !320, line: 398, column: 6)
!2810 = !DILocation(line: 398, column: 6, scope: !2803)
!2811 = !DILocation(line: 399, column: 98, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2809, file: !320, line: 398, column: 11)
!2813 = !DILocation(line: 399, column: 86, scope: !2812)
!2814 = !DILocation(line: 399, column: 4, scope: !2812)
!2815 = !DILocation(line: 400, column: 3, scope: !2812)
!2816 = !DILocalVariable(name: "mres", scope: !2817, file: !320, line: 401, type: !1056)
!2817 = distinct !DILexicalBlock(scope: !2809, file: !320, line: 400, column: 10)
!2818 = !DILocation(line: 401, column: 15, scope: !2817)
!2819 = !DILocation(line: 401, column: 41, scope: !2817)
!2820 = !DILocation(line: 401, column: 22, scope: !2817)
!2821 = !DILocation(line: 402, column: 8, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2817, file: !320, line: 402, column: 7)
!2823 = !DILocation(line: 402, column: 7, scope: !2817)
!2824 = !DILocation(line: 403, column: 99, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2822, file: !320, line: 402, column: 14)
!2826 = !DILocation(line: 403, column: 87, scope: !2825)
!2827 = !DILocation(line: 403, column: 5, scope: !2825)
!2828 = !DILocation(line: 404, column: 4, scope: !2825)
!2829 = !DILocation(line: 404, column: 32, scope: !2830)
!2830 = distinct !DILexicalBlock(scope: !2822, file: !320, line: 404, column: 14)
!2831 = !DILocation(line: 404, column: 14, scope: !2830)
!2832 = !DILocation(line: 404, column: 36, scope: !2830)
!2833 = !DILocation(line: 404, column: 14, scope: !2822)
!2834 = !DILocation(line: 405, column: 95, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2830, file: !320, line: 404, column: 41)
!2836 = !DILocation(line: 405, column: 5, scope: !2835)
!2837 = !DILocation(line: 406, column: 4, scope: !2835)
!2838 = !DILocalVariable(name: "row", scope: !2839, file: !320, line: 407, type: !1074)
!2839 = distinct !DILexicalBlock(scope: !2830, file: !320, line: 406, column: 11)
!2840 = !DILocation(line: 407, column: 15, scope: !2839)
!2841 = !DILocation(line: 407, column: 37, scope: !2839)
!2842 = !DILocation(line: 407, column: 21, scope: !2839)
!2843 = !DILocation(line: 408, column: 8, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !320, line: 408, column: 8)
!2845 = !DILocation(line: 408, column: 12, scope: !2844)
!2846 = !DILocation(line: 408, column: 15, scope: !2844)
!2847 = !DILocation(line: 408, column: 8, scope: !2839)
!2848 = !DILocalVariable(name: "lengths", scope: !2849, file: !320, line: 409, type: !1081)
!2849 = distinct !DILexicalBlock(scope: !2844, file: !320, line: 408, column: 23)
!2850 = !DILocation(line: 409, column: 21, scope: !2849)
!2851 = !DILocation(line: 409, column: 51, scope: !2849)
!2852 = !DILocation(line: 409, column: 31, scope: !2849)
!2853 = !DILocation(line: 410, column: 9, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2849, file: !320, line: 410, column: 9)
!2855 = !DILocation(line: 410, column: 9, scope: !2849)
!2856 = !DILocation(line: 411, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !320, line: 410, column: 18)
!2858 = !DILocation(line: 411, column: 7, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2860, file: !320, line: 411, column: 7)
!2860 = distinct !DILexicalBlock(scope: !2857, file: !320, line: 411, column: 7)
!2861 = !DILocation(line: 411, column: 7, scope: !2860)
!2862 = !DILocalVariable(name: "szdst", scope: !2863, file: !320, line: 411, type: !725)
!2863 = distinct !DILexicalBlock(scope: !2864, file: !320, line: 411, column: 7)
!2864 = distinct !DILexicalBlock(scope: !2865, file: !320, line: 411, column: 7)
!2865 = distinct !DILexicalBlock(scope: !2859, file: !320, line: 411, column: 7)
!2866 = !DILocation(line: 411, column: 7, scope: !2863)
!2867 = !DILocation(line: 411, column: 7, scope: !2865)
!2868 = !DILocation(line: 412, column: 13, scope: !2857)
!2869 = !DILocation(line: 412, column: 20, scope: !2857)
!2870 = !DILocation(line: 412, column: 25, scope: !2857)
!2871 = !DILocation(line: 412, column: 33, scope: !2857)
!2872 = !DILocation(line: 412, column: 7, scope: !2857)
!2873 = !DILocation(line: 413, column: 7, scope: !2857)
!2874 = !DILocation(line: 413, column: 12, scope: !2857)
!2875 = !DILocation(line: 413, column: 20, scope: !2857)
!2876 = !DILocation(line: 413, column: 31, scope: !2857)
!2877 = !DILocalVariable(name: "stimestamp", scope: !2857, file: !320, line: 415, type: !893)
!2878 = !DILocation(line: 415, column: 12, scope: !2857)
!2879 = !DILocation(line: 416, column: 13, scope: !2857)
!2880 = !DILocation(line: 416, column: 20, scope: !2857)
!2881 = !DILocation(line: 416, column: 31, scope: !2857)
!2882 = !DILocation(line: 416, column: 7, scope: !2857)
!2883 = !DILocation(line: 417, column: 18, scope: !2857)
!2884 = !DILocation(line: 417, column: 7, scope: !2857)
!2885 = !DILocation(line: 417, column: 29, scope: !2857)
!2886 = !DILocation(line: 418, column: 43, scope: !2857)
!2887 = !DILocation(line: 418, column: 34, scope: !2857)
!2888 = !DILocation(line: 418, column: 7, scope: !2857)
!2889 = !DILocation(line: 418, column: 12, scope: !2857)
!2890 = !DILocation(line: 418, column: 22, scope: !2857)
!2891 = !DILocalVariable(name: "slifetime", scope: !2857, file: !320, line: 420, type: !893)
!2892 = !DILocation(line: 420, column: 12, scope: !2857)
!2893 = !DILocation(line: 421, column: 13, scope: !2857)
!2894 = !DILocation(line: 421, column: 20, scope: !2857)
!2895 = !DILocation(line: 421, column: 30, scope: !2857)
!2896 = !DILocation(line: 421, column: 7, scope: !2857)
!2897 = !DILocation(line: 422, column: 17, scope: !2857)
!2898 = !DILocation(line: 422, column: 7, scope: !2857)
!2899 = !DILocation(line: 422, column: 28, scope: !2857)
!2900 = !DILocation(line: 423, column: 41, scope: !2857)
!2901 = !DILocation(line: 423, column: 33, scope: !2857)
!2902 = !DILocation(line: 423, column: 23, scope: !2857)
!2903 = !DILocation(line: 423, column: 7, scope: !2857)
!2904 = !DILocation(line: 423, column: 12, scope: !2857)
!2905 = !DILocation(line: 423, column: 21, scope: !2857)
!2906 = !DILocation(line: 425, column: 13, scope: !2857)
!2907 = !DILocation(line: 425, column: 20, scope: !2857)
!2908 = !DILocation(line: 425, column: 25, scope: !2857)
!2909 = !DILocation(line: 425, column: 35, scope: !2857)
!2910 = !DILocation(line: 425, column: 7, scope: !2857)
!2911 = !DILocation(line: 426, column: 7, scope: !2857)
!2912 = !DILocation(line: 426, column: 12, scope: !2857)
!2913 = !DILocation(line: 426, column: 22, scope: !2857)
!2914 = !DILocation(line: 426, column: 33, scope: !2857)
!2915 = !DILocation(line: 428, column: 13, scope: !2857)
!2916 = !DILocation(line: 428, column: 20, scope: !2857)
!2917 = !DILocation(line: 428, column: 25, scope: !2857)
!2918 = !DILocation(line: 428, column: 31, scope: !2857)
!2919 = !DILocation(line: 428, column: 7, scope: !2857)
!2920 = !DILocation(line: 429, column: 7, scope: !2857)
!2921 = !DILocation(line: 429, column: 12, scope: !2857)
!2922 = !DILocation(line: 429, column: 18, scope: !2857)
!2923 = !DILocation(line: 429, column: 29, scope: !2857)
!2924 = !DILocation(line: 431, column: 11, scope: !2857)
!2925 = !DILocation(line: 432, column: 6, scope: !2857)
!2926 = !DILocation(line: 433, column: 5, scope: !2849)
!2927 = !DILocation(line: 436, column: 7, scope: !2928)
!2928 = distinct !DILexicalBlock(scope: !2817, file: !320, line: 436, column: 7)
!2929 = !DILocation(line: 436, column: 7, scope: !2817)
!2930 = !DILocation(line: 437, column: 23, scope: !2928)
!2931 = !DILocation(line: 437, column: 5, scope: !2928)
!2932 = !DILocation(line: 439, column: 2, scope: !2803)
!2933 = !DILocation(line: 440, column: 9, scope: !2784)
!2934 = !DILocation(line: 440, column: 2, scope: !2784)
!2935 = distinct !DISubprogram(name: "mysql_del_oauth_key", scope: !320, file: !320, line: 587, type: !904, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2936 = !DILocalVariable(name: "kid", arg: 1, scope: !2935, file: !320, line: 587, type: !900)
!2937 = !DILocation(line: 587, column: 47, scope: !2935)
!2938 = !DILocalVariable(name: "ret", scope: !2935, file: !320, line: 588, type: !112)
!2939 = !DILocation(line: 588, column: 6, scope: !2935)
!2940 = !DILocalVariable(name: "statement", scope: !2935, file: !320, line: 589, type: !1034)
!2941 = !DILocation(line: 589, column: 7, scope: !2935)
!2942 = !DILocalVariable(name: "myc", scope: !2935, file: !320, line: 590, type: !134)
!2943 = !DILocation(line: 590, column: 10, scope: !2935)
!2944 = !DILocation(line: 590, column: 16, scope: !2935)
!2945 = !DILocation(line: 591, column: 5, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2935, file: !320, line: 591, column: 5)
!2947 = !DILocation(line: 591, column: 5, scope: !2935)
!2948 = !DILocation(line: 592, column: 12, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2946, file: !320, line: 591, column: 10)
!2950 = !DILocation(line: 592, column: 94, scope: !2949)
!2951 = !DILocation(line: 592, column: 3, scope: !2949)
!2952 = !DILocalVariable(name: "res", scope: !2949, file: !320, line: 593, type: !112)
!2953 = !DILocation(line: 593, column: 7, scope: !2949)
!2954 = !DILocation(line: 593, column: 25, scope: !2949)
!2955 = !DILocation(line: 593, column: 30, scope: !2949)
!2956 = !DILocation(line: 593, column: 13, scope: !2949)
!2957 = !DILocation(line: 594, column: 6, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2949, file: !320, line: 594, column: 6)
!2959 = !DILocation(line: 594, column: 6, scope: !2949)
!2960 = !DILocation(line: 595, column: 97, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2958, file: !320, line: 594, column: 11)
!2962 = !DILocation(line: 595, column: 85, scope: !2961)
!2963 = !DILocation(line: 595, column: 4, scope: !2961)
!2964 = !DILocation(line: 596, column: 3, scope: !2961)
!2965 = !DILocation(line: 597, column: 9, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !320, line: 596, column: 10)
!2967 = !DILocation(line: 599, column: 2, scope: !2949)
!2968 = !DILocation(line: 600, column: 9, scope: !2935)
!2969 = !DILocation(line: 600, column: 2, scope: !2935)
!2970 = distinct !DISubprogram(name: "mysql_list_oauth_keys", scope: !320, file: !320, line: 443, type: !908, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!2971 = !DILocalVariable(name: "kids", arg: 1, scope: !2970, file: !320, line: 443, type: !825)
!2972 = !DILocation(line: 443, column: 50, scope: !2970)
!2973 = !DILocalVariable(name: "teas", arg: 2, scope: !2970, file: !320, line: 443, type: !825)
!2974 = !DILocation(line: 443, column: 71, scope: !2970)
!2975 = !DILocalVariable(name: "tss", arg: 3, scope: !2970, file: !320, line: 443, type: !825)
!2976 = !DILocation(line: 443, column: 92, scope: !2970)
!2977 = !DILocalVariable(name: "lts", arg: 4, scope: !2970, file: !320, line: 443, type: !825)
!2978 = !DILocation(line: 443, column: 112, scope: !2970)
!2979 = !DILocalVariable(name: "realms", arg: 5, scope: !2970, file: !320, line: 443, type: !825)
!2980 = !DILocation(line: 443, column: 132, scope: !2970)
!2981 = !DILocalVariable(name: "key_", scope: !2970, file: !320, line: 445, type: !880)
!2982 = !DILocation(line: 445, column: 21, scope: !2970)
!2983 = !DILocalVariable(name: "key", scope: !2970, file: !320, line: 446, type: !879)
!2984 = !DILocation(line: 446, column: 22, scope: !2970)
!2985 = !DILocalVariable(name: "ret", scope: !2970, file: !320, line: 447, type: !112)
!2986 = !DILocation(line: 447, column: 6, scope: !2970)
!2987 = !DILocalVariable(name: "statement", scope: !2970, file: !320, line: 448, type: !1034)
!2988 = !DILocation(line: 448, column: 7, scope: !2970)
!2989 = !DILocation(line: 449, column: 11, scope: !2970)
!2990 = !DILocation(line: 449, column: 2, scope: !2970)
!2991 = !DILocalVariable(name: "myc", scope: !2970, file: !320, line: 451, type: !134)
!2992 = !DILocation(line: 451, column: 10, scope: !2970)
!2993 = !DILocation(line: 451, column: 16, scope: !2970)
!2994 = !DILocation(line: 452, column: 5, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2970, file: !320, line: 452, column: 5)
!2996 = !DILocation(line: 452, column: 5, scope: !2970)
!2997 = !DILocalVariable(name: "res", scope: !2998, file: !320, line: 453, type: !112)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !320, line: 452, column: 10)
!2999 = !DILocation(line: 453, column: 7, scope: !2998)
!3000 = !DILocation(line: 453, column: 25, scope: !2998)
!3001 = !DILocation(line: 453, column: 30, scope: !2998)
!3002 = !DILocation(line: 453, column: 13, scope: !2998)
!3003 = !DILocation(line: 454, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2998, file: !320, line: 454, column: 6)
!3005 = !DILocation(line: 454, column: 6, scope: !2998)
!3006 = !DILocation(line: 455, column: 98, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !3004, file: !320, line: 454, column: 11)
!3008 = !DILocation(line: 455, column: 86, scope: !3007)
!3009 = !DILocation(line: 455, column: 4, scope: !3007)
!3010 = !DILocation(line: 456, column: 3, scope: !3007)
!3011 = !DILocalVariable(name: "mres", scope: !3012, file: !320, line: 457, type: !1056)
!3012 = distinct !DILexicalBlock(scope: !3004, file: !320, line: 456, column: 10)
!3013 = !DILocation(line: 457, column: 15, scope: !3012)
!3014 = !DILocation(line: 457, column: 41, scope: !3012)
!3015 = !DILocation(line: 457, column: 22, scope: !3012)
!3016 = !DILocation(line: 458, column: 8, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3012, file: !320, line: 458, column: 7)
!3018 = !DILocation(line: 458, column: 7, scope: !3012)
!3019 = !DILocation(line: 459, column: 99, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !3017, file: !320, line: 458, column: 14)
!3021 = !DILocation(line: 459, column: 87, scope: !3020)
!3022 = !DILocation(line: 459, column: 5, scope: !3020)
!3023 = !DILocation(line: 460, column: 4, scope: !3020)
!3024 = !DILocation(line: 460, column: 32, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3017, file: !320, line: 460, column: 14)
!3026 = !DILocation(line: 460, column: 14, scope: !3025)
!3027 = !DILocation(line: 460, column: 36, scope: !3025)
!3028 = !DILocation(line: 460, column: 14, scope: !3017)
!3029 = !DILocation(line: 461, column: 95, scope: !3030)
!3030 = distinct !DILexicalBlock(scope: !3025, file: !320, line: 460, column: 41)
!3031 = !DILocation(line: 461, column: 5, scope: !3030)
!3032 = !DILocation(line: 462, column: 4, scope: !3030)
!3033 = !DILocalVariable(name: "row", scope: !3034, file: !320, line: 463, type: !1074)
!3034 = distinct !DILexicalBlock(scope: !3025, file: !320, line: 462, column: 11)
!3035 = !DILocation(line: 463, column: 15, scope: !3034)
!3036 = !DILocation(line: 463, column: 37, scope: !3034)
!3037 = !DILocation(line: 463, column: 21, scope: !3034)
!3038 = !DILocation(line: 464, column: 5, scope: !3034)
!3039 = !DILocation(line: 464, column: 11, scope: !3034)
!3040 = !DILocalVariable(name: "lengths", scope: !3041, file: !320, line: 465, type: !1081)
!3041 = distinct !DILexicalBlock(scope: !3034, file: !320, line: 464, column: 16)
!3042 = !DILocation(line: 465, column: 21, scope: !3041)
!3043 = !DILocation(line: 465, column: 51, scope: !3041)
!3044 = !DILocation(line: 465, column: 31, scope: !3041)
!3045 = !DILocation(line: 466, column: 9, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !3041, file: !320, line: 466, column: 9)
!3047 = !DILocation(line: 466, column: 9, scope: !3041)
!3048 = !DILocation(line: 468, column: 13, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3046, file: !320, line: 466, column: 18)
!3050 = !DILocation(line: 468, column: 20, scope: !3049)
!3051 = !DILocation(line: 468, column: 25, scope: !3049)
!3052 = !DILocation(line: 468, column: 33, scope: !3049)
!3053 = !DILocation(line: 468, column: 7, scope: !3049)
!3054 = !DILocation(line: 469, column: 7, scope: !3049)
!3055 = !DILocation(line: 469, column: 12, scope: !3049)
!3056 = !DILocation(line: 469, column: 20, scope: !3049)
!3057 = !DILocation(line: 469, column: 31, scope: !3049)
!3058 = !DILocalVariable(name: "stimestamp", scope: !3049, file: !320, line: 471, type: !893)
!3059 = !DILocation(line: 471, column: 12, scope: !3049)
!3060 = !DILocation(line: 472, column: 13, scope: !3049)
!3061 = !DILocation(line: 472, column: 20, scope: !3049)
!3062 = !DILocation(line: 472, column: 31, scope: !3049)
!3063 = !DILocation(line: 472, column: 7, scope: !3049)
!3064 = !DILocation(line: 473, column: 18, scope: !3049)
!3065 = !DILocation(line: 473, column: 7, scope: !3049)
!3066 = !DILocation(line: 473, column: 29, scope: !3049)
!3067 = !DILocation(line: 474, column: 43, scope: !3049)
!3068 = !DILocation(line: 474, column: 34, scope: !3049)
!3069 = !DILocation(line: 474, column: 7, scope: !3049)
!3070 = !DILocation(line: 474, column: 12, scope: !3049)
!3071 = !DILocation(line: 474, column: 22, scope: !3049)
!3072 = !DILocalVariable(name: "slifetime", scope: !3049, file: !320, line: 476, type: !893)
!3073 = !DILocation(line: 476, column: 12, scope: !3049)
!3074 = !DILocation(line: 477, column: 13, scope: !3049)
!3075 = !DILocation(line: 477, column: 20, scope: !3049)
!3076 = !DILocation(line: 477, column: 30, scope: !3049)
!3077 = !DILocation(line: 477, column: 7, scope: !3049)
!3078 = !DILocation(line: 478, column: 17, scope: !3049)
!3079 = !DILocation(line: 478, column: 7, scope: !3049)
!3080 = !DILocation(line: 478, column: 28, scope: !3049)
!3081 = !DILocation(line: 479, column: 41, scope: !3049)
!3082 = !DILocation(line: 479, column: 33, scope: !3049)
!3083 = !DILocation(line: 479, column: 23, scope: !3049)
!3084 = !DILocation(line: 479, column: 7, scope: !3049)
!3085 = !DILocation(line: 479, column: 12, scope: !3049)
!3086 = !DILocation(line: 479, column: 21, scope: !3049)
!3087 = !DILocation(line: 481, column: 13, scope: !3049)
!3088 = !DILocation(line: 481, column: 20, scope: !3049)
!3089 = !DILocation(line: 481, column: 25, scope: !3049)
!3090 = !DILocation(line: 481, column: 35, scope: !3049)
!3091 = !DILocation(line: 481, column: 7, scope: !3049)
!3092 = !DILocation(line: 482, column: 7, scope: !3049)
!3093 = !DILocation(line: 482, column: 12, scope: !3049)
!3094 = !DILocation(line: 482, column: 22, scope: !3049)
!3095 = !DILocation(line: 482, column: 33, scope: !3049)
!3096 = !DILocation(line: 484, column: 13, scope: !3049)
!3097 = !DILocation(line: 484, column: 20, scope: !3049)
!3098 = !DILocation(line: 484, column: 25, scope: !3049)
!3099 = !DILocation(line: 484, column: 31, scope: !3049)
!3100 = !DILocation(line: 484, column: 7, scope: !3049)
!3101 = !DILocation(line: 485, column: 7, scope: !3049)
!3102 = !DILocation(line: 485, column: 12, scope: !3049)
!3103 = !DILocation(line: 485, column: 18, scope: !3049)
!3104 = !DILocation(line: 485, column: 29, scope: !3049)
!3105 = !DILocation(line: 487, column: 13, scope: !3049)
!3106 = !DILocation(line: 487, column: 20, scope: !3049)
!3107 = !DILocation(line: 487, column: 25, scope: !3049)
!3108 = !DILocation(line: 487, column: 29, scope: !3049)
!3109 = !DILocation(line: 487, column: 7, scope: !3049)
!3110 = !DILocation(line: 488, column: 7, scope: !3049)
!3111 = !DILocation(line: 488, column: 12, scope: !3049)
!3112 = !DILocation(line: 488, column: 16, scope: !3049)
!3113 = !DILocation(line: 488, column: 27, scope: !3049)
!3114 = !DILocation(line: 490, column: 10, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3049, file: !320, line: 490, column: 10)
!3116 = !DILocation(line: 490, column: 10, scope: !3049)
!3117 = !DILocation(line: 491, column: 28, scope: !3118)
!3118 = distinct !DILexicalBlock(scope: !3115, file: !320, line: 490, column: 16)
!3119 = !DILocation(line: 491, column: 33, scope: !3118)
!3120 = !DILocation(line: 491, column: 38, scope: !3118)
!3121 = !DILocation(line: 491, column: 8, scope: !3118)
!3122 = !DILocation(line: 492, column: 28, scope: !3118)
!3123 = !DILocation(line: 492, column: 33, scope: !3118)
!3124 = !DILocation(line: 492, column: 38, scope: !3118)
!3125 = !DILocation(line: 492, column: 8, scope: !3118)
!3126 = !DILocation(line: 493, column: 28, scope: !3118)
!3127 = !DILocation(line: 493, column: 35, scope: !3118)
!3128 = !DILocation(line: 493, column: 40, scope: !3118)
!3129 = !DILocation(line: 493, column: 8, scope: !3118)
!3130 = !DILocalVariable(name: "ts", scope: !3131, file: !320, line: 495, type: !3132)
!3131 = distinct !DILexicalBlock(scope: !3118, file: !320, line: 494, column: 8)
!3132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, elements: !957)
!3133 = !DILocation(line: 495, column: 14, scope: !3131)
!3134 = !DILocation(line: 496, column: 18, scope: !3131)
!3135 = !DILocation(line: 496, column: 61, scope: !3131)
!3136 = !DILocation(line: 496, column: 66, scope: !3131)
!3137 = !DILocation(line: 496, column: 9, scope: !3131)
!3138 = !DILocation(line: 497, column: 29, scope: !3131)
!3139 = !DILocation(line: 497, column: 33, scope: !3131)
!3140 = !DILocation(line: 497, column: 9, scope: !3131)
!3141 = !DILocalVariable(name: "lt", scope: !3142, file: !320, line: 500, type: !3132)
!3142 = distinct !DILexicalBlock(scope: !3118, file: !320, line: 499, column: 8)
!3143 = !DILocation(line: 500, column: 14, scope: !3142)
!3144 = !DILocation(line: 501, column: 18, scope: !3142)
!3145 = !DILocation(line: 501, column: 55, scope: !3142)
!3146 = !DILocation(line: 501, column: 60, scope: !3142)
!3147 = !DILocation(line: 501, column: 40, scope: !3142)
!3148 = !DILocation(line: 501, column: 9, scope: !3142)
!3149 = !DILocation(line: 502, column: 29, scope: !3142)
!3150 = !DILocation(line: 502, column: 33, scope: !3142)
!3151 = !DILocation(line: 502, column: 9, scope: !3142)
!3152 = !DILocation(line: 504, column: 7, scope: !3118)
!3153 = !DILocation(line: 506, column: 9, scope: !3154)
!3154 = distinct !DILexicalBlock(scope: !3115, file: !320, line: 504, column: 14)
!3155 = !DILocation(line: 506, column: 14, scope: !3154)
!3156 = !DILocation(line: 506, column: 19, scope: !3154)
!3157 = !DILocation(line: 506, column: 24, scope: !3154)
!3158 = !DILocation(line: 506, column: 53, scope: !3154)
!3159 = !DILocation(line: 506, column: 58, scope: !3154)
!3160 = !DILocation(line: 506, column: 84, scope: !3154)
!3161 = !DILocation(line: 506, column: 89, scope: !3154)
!3162 = !DILocation(line: 506, column: 69, scope: !3154)
!3163 = !DILocation(line: 507, column: 9, scope: !3154)
!3164 = !DILocation(line: 507, column: 14, scope: !3154)
!3165 = !DILocation(line: 507, column: 24, scope: !3154)
!3166 = !DILocation(line: 507, column: 29, scope: !3154)
!3167 = !DILocation(line: 505, column: 8, scope: !3154)
!3168 = !DILocation(line: 509, column: 6, scope: !3049)
!3169 = !DILocation(line: 510, column: 28, scope: !3041)
!3170 = !DILocation(line: 510, column: 12, scope: !3041)
!3171 = !DILocation(line: 510, column: 10, scope: !3041)
!3172 = distinct !{!3172, !3038, !3173, !2567}
!3173 = !DILocation(line: 511, column: 5, scope: !3034)
!3174 = !DILocation(line: 514, column: 7, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3012, file: !320, line: 514, column: 7)
!3176 = !DILocation(line: 514, column: 7, scope: !3012)
!3177 = !DILocation(line: 515, column: 23, scope: !3175)
!3178 = !DILocation(line: 515, column: 5, scope: !3175)
!3179 = !DILocation(line: 517, column: 2, scope: !2998)
!3180 = !DILocation(line: 519, column: 9, scope: !2970)
!3181 = !DILocation(line: 519, column: 2, scope: !2970)
!3182 = distinct !DISubprogram(name: "mysql_get_admin_user", scope: !320, file: !320, line: 1143, type: !912, scopeLine: 1144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3183 = !DILocalVariable(name: "usname", arg: 1, scope: !3182, file: !320, line: 1143, type: !900)
!3184 = !DILocation(line: 1143, column: 48, scope: !3182)
!3185 = !DILocalVariable(name: "realm", arg: 2, scope: !3182, file: !320, line: 1143, type: !833)
!3186 = !DILocation(line: 1143, column: 65, scope: !3182)
!3187 = !DILocalVariable(name: "pwd", arg: 3, scope: !3182, file: !320, line: 1143, type: !833)
!3188 = !DILocation(line: 1143, column: 83, scope: !3182)
!3189 = !DILocalVariable(name: "ret", scope: !3182, file: !320, line: 1145, type: !112)
!3190 = !DILocation(line: 1145, column: 7, scope: !3182)
!3191 = !DILocation(line: 1147, column: 3, scope: !3182)
!3192 = !DILocation(line: 1147, column: 11, scope: !3182)
!3193 = !DILocation(line: 1148, column: 3, scope: !3182)
!3194 = !DILocation(line: 1148, column: 9, scope: !3182)
!3195 = !DILocalVariable(name: "myc", scope: !3182, file: !320, line: 1150, type: !134)
!3196 = !DILocation(line: 1150, column: 11, scope: !3182)
!3197 = !DILocation(line: 1150, column: 17, scope: !3182)
!3198 = !DILocation(line: 1151, column: 6, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3182, file: !320, line: 1151, column: 6)
!3200 = !DILocation(line: 1151, column: 6, scope: !3182)
!3201 = !DILocalVariable(name: "statement", scope: !3202, file: !320, line: 1152, type: !1034)
!3202 = distinct !DILexicalBlock(scope: !3199, file: !320, line: 1151, column: 11)
!3203 = !DILocation(line: 1152, column: 7, scope: !3202)
!3204 = !DILocation(line: 1153, column: 11, scope: !3202)
!3205 = !DILocation(line: 1153, column: 95, scope: !3202)
!3206 = !DILocation(line: 1153, column: 2, scope: !3202)
!3207 = !DILocalVariable(name: "res", scope: !3202, file: !320, line: 1154, type: !112)
!3208 = !DILocation(line: 1154, column: 6, scope: !3202)
!3209 = !DILocation(line: 1154, column: 24, scope: !3202)
!3210 = !DILocation(line: 1154, column: 29, scope: !3202)
!3211 = !DILocation(line: 1154, column: 12, scope: !3202)
!3212 = !DILocation(line: 1155, column: 5, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3202, file: !320, line: 1155, column: 5)
!3214 = !DILocation(line: 1155, column: 5, scope: !3202)
!3215 = !DILocation(line: 1156, column: 97, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !320, line: 1155, column: 10)
!3217 = !DILocation(line: 1156, column: 85, scope: !3216)
!3218 = !DILocation(line: 1156, column: 3, scope: !3216)
!3219 = !DILocation(line: 1157, column: 2, scope: !3216)
!3220 = !DILocalVariable(name: "mres", scope: !3221, file: !320, line: 1158, type: !1056)
!3221 = distinct !DILexicalBlock(scope: !3213, file: !320, line: 1157, column: 9)
!3222 = !DILocation(line: 1158, column: 14, scope: !3221)
!3223 = !DILocation(line: 1158, column: 40, scope: !3221)
!3224 = !DILocation(line: 1158, column: 21, scope: !3221)
!3225 = !DILocation(line: 1159, column: 7, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3221, file: !320, line: 1159, column: 6)
!3227 = !DILocation(line: 1159, column: 6, scope: !3221)
!3228 = !DILocation(line: 1160, column: 98, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3226, file: !320, line: 1159, column: 13)
!3230 = !DILocation(line: 1160, column: 86, scope: !3229)
!3231 = !DILocation(line: 1160, column: 4, scope: !3229)
!3232 = !DILocation(line: 1161, column: 3, scope: !3229)
!3233 = !DILocation(line: 1161, column: 31, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3226, file: !320, line: 1161, column: 13)
!3235 = !DILocation(line: 1161, column: 13, scope: !3234)
!3236 = !DILocation(line: 1161, column: 35, scope: !3234)
!3237 = !DILocation(line: 1161, column: 13, scope: !3226)
!3238 = !DILocation(line: 1162, column: 94, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !320, line: 1161, column: 40)
!3240 = !DILocation(line: 1162, column: 4, scope: !3239)
!3241 = !DILocation(line: 1163, column: 3, scope: !3239)
!3242 = !DILocalVariable(name: "row", scope: !3243, file: !320, line: 1164, type: !1074)
!3243 = distinct !DILexicalBlock(scope: !3234, file: !320, line: 1163, column: 10)
!3244 = !DILocation(line: 1164, column: 14, scope: !3243)
!3245 = !DILocation(line: 1164, column: 36, scope: !3243)
!3246 = !DILocation(line: 1164, column: 20, scope: !3243)
!3247 = !DILocation(line: 1165, column: 7, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3243, file: !320, line: 1165, column: 7)
!3249 = !DILocation(line: 1165, column: 11, scope: !3248)
!3250 = !DILocation(line: 1165, column: 14, scope: !3248)
!3251 = !DILocation(line: 1165, column: 7, scope: !3243)
!3252 = !DILocation(line: 1166, column: 20, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3248, file: !320, line: 1165, column: 22)
!3254 = !DILocation(line: 1166, column: 26, scope: !3253)
!3255 = !DILocation(line: 1166, column: 5, scope: !3253)
!3256 = !DILocation(line: 1167, column: 20, scope: !3253)
!3257 = !DILocation(line: 1167, column: 24, scope: !3253)
!3258 = !DILocation(line: 1167, column: 5, scope: !3253)
!3259 = !DILocation(line: 1168, column: 9, scope: !3253)
!3260 = !DILocation(line: 1169, column: 4, scope: !3253)
!3261 = !DILocation(line: 1172, column: 6, scope: !3262)
!3262 = distinct !DILexicalBlock(scope: !3221, file: !320, line: 1172, column: 6)
!3263 = !DILocation(line: 1172, column: 6, scope: !3221)
!3264 = !DILocation(line: 1173, column: 22, scope: !3262)
!3265 = !DILocation(line: 1173, column: 4, scope: !3262)
!3266 = !DILocation(line: 1175, column: 3, scope: !3202)
!3267 = !DILocation(line: 1176, column: 10, scope: !3182)
!3268 = !DILocation(line: 1176, column: 3, scope: !3182)
!3269 = distinct !DISubprogram(name: "mysql_set_admin_user", scope: !320, file: !320, line: 1179, type: !916, scopeLine: 1180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3270 = !DILocalVariable(name: "usname", arg: 1, scope: !3269, file: !320, line: 1179, type: !900)
!3271 = !DILocation(line: 1179, column: 48, scope: !3269)
!3272 = !DILocalVariable(name: "realm", arg: 2, scope: !3269, file: !320, line: 1179, type: !900)
!3273 = !DILocation(line: 1179, column: 71, scope: !3269)
!3274 = !DILocalVariable(name: "pwd", arg: 3, scope: !3269, file: !320, line: 1179, type: !900)
!3275 = !DILocation(line: 1179, column: 95, scope: !3269)
!3276 = !DILocalVariable(name: "ret", scope: !3269, file: !320, line: 1181, type: !112)
!3277 = !DILocation(line: 1181, column: 7, scope: !3269)
!3278 = !DILocalVariable(name: "statement", scope: !3269, file: !320, line: 1182, type: !1034)
!3279 = !DILocation(line: 1182, column: 8, scope: !3269)
!3280 = !DILocation(line: 1183, column: 33, scope: !3269)
!3281 = !DILocalVariable(name: "myc", scope: !3269, file: !320, line: 1184, type: !134)
!3282 = !DILocation(line: 1184, column: 11, scope: !3269)
!3283 = !DILocation(line: 1184, column: 17, scope: !3269)
!3284 = !DILocation(line: 1185, column: 6, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3269, file: !320, line: 1185, column: 6)
!3286 = !DILocation(line: 1185, column: 6, scope: !3269)
!3287 = !DILocation(line: 1186, column: 13, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3285, file: !320, line: 1185, column: 11)
!3289 = !DILocation(line: 1186, column: 111, scope: !3288)
!3290 = !DILocation(line: 1186, column: 117, scope: !3288)
!3291 = !DILocation(line: 1186, column: 124, scope: !3288)
!3292 = !DILocation(line: 1186, column: 4, scope: !3288)
!3293 = !DILocalVariable(name: "res", scope: !3288, file: !320, line: 1187, type: !112)
!3294 = !DILocation(line: 1187, column: 8, scope: !3288)
!3295 = !DILocation(line: 1187, column: 26, scope: !3288)
!3296 = !DILocation(line: 1187, column: 31, scope: !3288)
!3297 = !DILocation(line: 1187, column: 14, scope: !3288)
!3298 = !DILocation(line: 1188, column: 8, scope: !3299)
!3299 = distinct !DILexicalBlock(scope: !3288, file: !320, line: 1188, column: 7)
!3300 = !DILocation(line: 1188, column: 7, scope: !3288)
!3301 = !DILocation(line: 1189, column: 9, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3299, file: !320, line: 1188, column: 13)
!3303 = !DILocation(line: 1190, column: 4, scope: !3302)
!3304 = !DILocation(line: 1191, column: 14, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3299, file: !320, line: 1190, column: 11)
!3306 = !DILocation(line: 1191, column: 107, scope: !3305)
!3307 = !DILocation(line: 1191, column: 113, scope: !3305)
!3308 = !DILocation(line: 1191, column: 117, scope: !3305)
!3309 = !DILocation(line: 1191, column: 5, scope: !3305)
!3310 = !DILocation(line: 1192, column: 23, scope: !3305)
!3311 = !DILocation(line: 1192, column: 28, scope: !3305)
!3312 = !DILocation(line: 1192, column: 11, scope: !3305)
!3313 = !DILocation(line: 1192, column: 9, scope: !3305)
!3314 = !DILocation(line: 1193, column: 9, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3305, file: !320, line: 1193, column: 8)
!3316 = !DILocation(line: 1193, column: 8, scope: !3305)
!3317 = !DILocation(line: 1194, column: 10, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3315, file: !320, line: 1193, column: 14)
!3319 = !DILocation(line: 1195, column: 5, scope: !3318)
!3320 = !DILocation(line: 1196, column: 108, scope: !3321)
!3321 = distinct !DILexicalBlock(scope: !3315, file: !320, line: 1195, column: 12)
!3322 = !DILocation(line: 1196, column: 96, scope: !3321)
!3323 = !DILocation(line: 1196, column: 6, scope: !3321)
!3324 = !DILocation(line: 1199, column: 3, scope: !3288)
!3325 = !DILocation(line: 1200, column: 10, scope: !3269)
!3326 = !DILocation(line: 1200, column: 3, scope: !3269)
!3327 = distinct !DISubprogram(name: "mysql_del_admin_user", scope: !320, file: !320, line: 1203, type: !904, scopeLine: 1204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3328 = !DILocalVariable(name: "usname", arg: 1, scope: !3327, file: !320, line: 1203, type: !900)
!3329 = !DILocation(line: 1203, column: 48, scope: !3327)
!3330 = !DILocalVariable(name: "ret", scope: !3327, file: !320, line: 1205, type: !112)
!3331 = !DILocation(line: 1205, column: 6, scope: !3327)
!3332 = !DILocalVariable(name: "statement", scope: !3327, file: !320, line: 1206, type: !1034)
!3333 = !DILocation(line: 1206, column: 7, scope: !3327)
!3334 = !DILocation(line: 1207, column: 32, scope: !3327)
!3335 = !DILocalVariable(name: "myc", scope: !3327, file: !320, line: 1208, type: !134)
!3336 = !DILocation(line: 1208, column: 10, scope: !3327)
!3337 = !DILocation(line: 1208, column: 16, scope: !3327)
!3338 = !DILocation(line: 1209, column: 5, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3327, file: !320, line: 1209, column: 5)
!3340 = !DILocation(line: 1209, column: 5, scope: !3327)
!3341 = !DILocation(line: 1210, column: 12, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3339, file: !320, line: 1209, column: 10)
!3343 = !DILocation(line: 1210, column: 81, scope: !3342)
!3344 = !DILocation(line: 1210, column: 3, scope: !3342)
!3345 = !DILocalVariable(name: "res", scope: !3342, file: !320, line: 1211, type: !112)
!3346 = !DILocation(line: 1211, column: 7, scope: !3342)
!3347 = !DILocation(line: 1211, column: 25, scope: !3342)
!3348 = !DILocation(line: 1211, column: 30, scope: !3342)
!3349 = !DILocation(line: 1211, column: 13, scope: !3342)
!3350 = !DILocation(line: 1212, column: 6, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3342, file: !320, line: 1212, column: 6)
!3352 = !DILocation(line: 1212, column: 6, scope: !3342)
!3353 = !DILocation(line: 1213, column: 98, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3351, file: !320, line: 1212, column: 11)
!3355 = !DILocation(line: 1213, column: 86, scope: !3354)
!3356 = !DILocation(line: 1213, column: 4, scope: !3354)
!3357 = !DILocation(line: 1214, column: 3, scope: !3354)
!3358 = !DILocation(line: 1215, column: 9, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3351, file: !320, line: 1214, column: 10)
!3360 = !DILocation(line: 1217, column: 2, scope: !3342)
!3361 = !DILocation(line: 1218, column: 9, scope: !3327)
!3362 = !DILocation(line: 1218, column: 2, scope: !3327)
!3363 = distinct !DISubprogram(name: "mysql_list_admin_users", scope: !320, file: !320, line: 1221, type: !921, scopeLine: 1222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3364 = !DILocalVariable(name: "no_print", arg: 1, scope: !3363, file: !320, line: 1221, type: !112)
!3365 = !DILocation(line: 1221, column: 39, scope: !3363)
!3366 = !DILocalVariable(name: "ret", scope: !3363, file: !320, line: 1223, type: !112)
!3367 = !DILocation(line: 1223, column: 6, scope: !3363)
!3368 = !DILocalVariable(name: "statement", scope: !3363, file: !320, line: 1224, type: !1034)
!3369 = !DILocation(line: 1224, column: 7, scope: !3363)
!3370 = !DILocation(line: 1225, column: 32, scope: !3363)
!3371 = !DILocalVariable(name: "myc", scope: !3363, file: !320, line: 1226, type: !134)
!3372 = !DILocation(line: 1226, column: 10, scope: !3363)
!3373 = !DILocation(line: 1226, column: 16, scope: !3363)
!3374 = !DILocation(line: 1227, column: 5, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3363, file: !320, line: 1227, column: 5)
!3376 = !DILocation(line: 1227, column: 5, scope: !3363)
!3377 = !DILocation(line: 1228, column: 12, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3375, file: !320, line: 1227, column: 10)
!3379 = !DILocation(line: 1228, column: 3, scope: !3378)
!3380 = !DILocalVariable(name: "res", scope: !3378, file: !320, line: 1229, type: !112)
!3381 = !DILocation(line: 1229, column: 7, scope: !3378)
!3382 = !DILocation(line: 1229, column: 25, scope: !3378)
!3383 = !DILocation(line: 1229, column: 30, scope: !3378)
!3384 = !DILocation(line: 1229, column: 13, scope: !3378)
!3385 = !DILocation(line: 1230, column: 6, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3378, file: !320, line: 1230, column: 6)
!3387 = !DILocation(line: 1230, column: 6, scope: !3378)
!3388 = !DILocation(line: 1231, column: 98, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3386, file: !320, line: 1230, column: 11)
!3390 = !DILocation(line: 1231, column: 86, scope: !3389)
!3391 = !DILocation(line: 1231, column: 4, scope: !3389)
!3392 = !DILocation(line: 1232, column: 3, scope: !3389)
!3393 = !DILocalVariable(name: "mres", scope: !3394, file: !320, line: 1233, type: !1056)
!3394 = distinct !DILexicalBlock(scope: !3386, file: !320, line: 1232, column: 10)
!3395 = !DILocation(line: 1233, column: 15, scope: !3394)
!3396 = !DILocation(line: 1233, column: 41, scope: !3394)
!3397 = !DILocation(line: 1233, column: 22, scope: !3394)
!3398 = !DILocation(line: 1234, column: 8, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3394, file: !320, line: 1234, column: 7)
!3400 = !DILocation(line: 1234, column: 7, scope: !3394)
!3401 = !DILocation(line: 1235, column: 99, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !320, line: 1234, column: 14)
!3403 = !DILocation(line: 1235, column: 87, scope: !3402)
!3404 = !DILocation(line: 1235, column: 5, scope: !3402)
!3405 = !DILocation(line: 1236, column: 4, scope: !3402)
!3406 = !DILocation(line: 1236, column: 32, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3399, file: !320, line: 1236, column: 14)
!3408 = !DILocation(line: 1236, column: 14, scope: !3407)
!3409 = !DILocation(line: 1236, column: 36, scope: !3407)
!3410 = !DILocation(line: 1236, column: 14, scope: !3399)
!3411 = !DILocation(line: 1237, column: 95, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3407, file: !320, line: 1236, column: 41)
!3413 = !DILocation(line: 1237, column: 5, scope: !3412)
!3414 = !DILocation(line: 1238, column: 4, scope: !3412)
!3415 = !DILocation(line: 1239, column: 9, scope: !3416)
!3416 = distinct !DILexicalBlock(scope: !3407, file: !320, line: 1238, column: 11)
!3417 = !DILocation(line: 1240, column: 5, scope: !3416)
!3418 = !DILocalVariable(name: "row", scope: !3419, file: !320, line: 1241, type: !1074)
!3419 = distinct !DILexicalBlock(scope: !3420, file: !320, line: 1240, column: 13)
!3420 = distinct !DILexicalBlock(scope: !3421, file: !320, line: 1240, column: 5)
!3421 = distinct !DILexicalBlock(scope: !3416, file: !320, line: 1240, column: 5)
!3422 = !DILocation(line: 1241, column: 16, scope: !3419)
!3423 = !DILocation(line: 1241, column: 38, scope: !3419)
!3424 = !DILocation(line: 1241, column: 22, scope: !3419)
!3425 = !DILocation(line: 1242, column: 10, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3419, file: !320, line: 1242, column: 9)
!3427 = !DILocation(line: 1242, column: 9, scope: !3419)
!3428 = !DILocation(line: 1243, column: 7, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3426, file: !320, line: 1242, column: 15)
!3430 = !DILocation(line: 1245, column: 7, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3426, file: !320, line: 1244, column: 13)
!3432 = !DILocation(line: 1246, column: 10, scope: !3433)
!3433 = distinct !DILexicalBlock(scope: !3431, file: !320, line: 1246, column: 10)
!3434 = !DILocation(line: 1246, column: 17, scope: !3433)
!3435 = !DILocation(line: 1246, column: 21, scope: !3433)
!3436 = !DILocation(line: 1246, column: 10, scope: !3431)
!3437 = !DILocation(line: 1247, column: 11, scope: !3438)
!3438 = distinct !DILexicalBlock(scope: !3439, file: !320, line: 1247, column: 11)
!3439 = distinct !DILexicalBlock(scope: !3433, file: !320, line: 1246, column: 31)
!3440 = !DILocation(line: 1247, column: 18, scope: !3438)
!3441 = !DILocation(line: 1247, column: 21, scope: !3438)
!3442 = !DILocation(line: 1247, column: 11, scope: !3439)
!3443 = !DILocation(line: 1248, column: 27, scope: !3444)
!3444 = distinct !DILexicalBlock(scope: !3438, file: !320, line: 1247, column: 32)
!3445 = !DILocation(line: 1248, column: 34, scope: !3444)
!3446 = !DILocation(line: 1248, column: 9, scope: !3444)
!3447 = !DILocation(line: 1249, column: 8, scope: !3444)
!3448 = !DILocation(line: 1250, column: 23, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3438, file: !320, line: 1249, column: 15)
!3450 = !DILocation(line: 1250, column: 9, scope: !3449)
!3451 = !DILocation(line: 1252, column: 7, scope: !3439)
!3452 = !DILocation(line: 1240, column: 5, scope: !3420)
!3453 = distinct !{!3453, !3454, !3455}
!3454 = !DILocation(line: 1240, column: 5, scope: !3421)
!3455 = !DILocation(line: 1254, column: 5, scope: !3421)
!3456 = !DILocation(line: 1257, column: 7, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3394, file: !320, line: 1257, column: 7)
!3458 = !DILocation(line: 1257, column: 7, scope: !3394)
!3459 = !DILocation(line: 1258, column: 23, scope: !3457)
!3460 = !DILocation(line: 1258, column: 5, scope: !3457)
!3461 = !DILocation(line: 1260, column: 2, scope: !3378)
!3462 = !DILocation(line: 1261, column: 9, scope: !3363)
!3463 = !DILocation(line: 1261, column: 2, scope: !3363)
!3464 = distinct !DISubprogram(name: "mysql_disconnect", scope: !320, file: !320, line: 1264, type: !925, scopeLine: 1264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3465 = !DILocalVariable(name: "mydbconnection", scope: !3464, file: !320, line: 1265, type: !134)
!3466 = !DILocation(line: 1265, column: 9, scope: !3464)
!3467 = !DILocation(line: 1265, column: 54, scope: !3464)
!3468 = !DILocation(line: 1265, column: 34, scope: !3464)
!3469 = !DILocation(line: 1266, column: 6, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3464, file: !320, line: 1266, column: 6)
!3471 = !DILocation(line: 1266, column: 6, scope: !3464)
!3472 = !DILocation(line: 1267, column: 15, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3470, file: !320, line: 1266, column: 22)
!3474 = !DILocation(line: 1267, column: 3, scope: !3473)
!3475 = !DILocation(line: 1268, column: 17, scope: !3473)
!3476 = !DILocation(line: 1269, column: 2, scope: !3473)
!3477 = !DILocation(line: 1270, column: 2, scope: !3464)
!3478 = !DILocation(line: 1271, column: 1, scope: !3464)
!3479 = distinct !DISubprogram(name: "get_mydb_connection", scope: !320, file: !320, line: 223, type: !3480, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{!134}
!3482 = !DILocalVariable(name: "pud", scope: !3479, file: !320, line: 225, type: !3483)
!3483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3484, size: 64)
!3484 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !827, line: 157, baseType: !3485)
!3485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !827, line: 155, size: 8200, elements: !3486)
!3486 = !{!3487}
!3487 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !3485, file: !827, line: 156, baseType: !1034, size: 8200)
!3488 = !DILocation(line: 225, column: 25, scope: !3479)
!3489 = !DILocation(line: 225, column: 31, scope: !3479)
!3490 = !DILocalVariable(name: "mydbconnection", scope: !3479, file: !320, line: 227, type: !134)
!3491 = !DILocation(line: 227, column: 9, scope: !3479)
!3492 = !DILocation(line: 227, column: 54, scope: !3479)
!3493 = !DILocation(line: 227, column: 34, scope: !3479)
!3494 = !DILocation(line: 229, column: 5, scope: !3495)
!3495 = distinct !DILexicalBlock(scope: !3479, file: !320, line: 229, column: 5)
!3496 = !DILocation(line: 229, column: 5, scope: !3479)
!3497 = !DILocation(line: 230, column: 17, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !320, line: 230, column: 6)
!3499 = distinct !DILexicalBlock(scope: !3495, file: !320, line: 229, column: 21)
!3500 = !DILocation(line: 230, column: 6, scope: !3498)
!3501 = !DILocation(line: 230, column: 6, scope: !3499)
!3502 = !DILocation(line: 231, column: 16, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3498, file: !320, line: 230, column: 34)
!3504 = !DILocation(line: 231, column: 4, scope: !3503)
!3505 = !DILocation(line: 232, column: 18, scope: !3503)
!3506 = !DILocation(line: 233, column: 31, scope: !3503)
!3507 = !DILocation(line: 233, column: 47, scope: !3503)
!3508 = !DILocation(line: 233, column: 11, scope: !3503)
!3509 = !DILocation(line: 234, column: 3, scope: !3503)
!3510 = !DILocation(line: 235, column: 2, scope: !3499)
!3511 = !DILocation(line: 237, column: 6, scope: !3512)
!3512 = distinct !DILexicalBlock(scope: !3479, file: !320, line: 237, column: 5)
!3513 = !DILocation(line: 237, column: 5, scope: !3479)
!3514 = !DILocalVariable(name: "errmsg", scope: !3515, file: !320, line: 238, type: !132)
!3515 = distinct !DILexicalBlock(scope: !3512, file: !320, line: 237, column: 22)
!3516 = !DILocation(line: 238, column: 9, scope: !3515)
!3517 = !DILocalVariable(name: "co", scope: !3515, file: !320, line: 239, type: !318)
!3518 = !DILocation(line: 239, column: 15, scope: !3515)
!3519 = !DILocation(line: 239, column: 34, scope: !3515)
!3520 = !DILocation(line: 239, column: 39, scope: !3515)
!3521 = !DILocation(line: 239, column: 18, scope: !3515)
!3522 = !DILocation(line: 240, column: 7, scope: !3523)
!3523 = distinct !DILexicalBlock(scope: !3515, file: !320, line: 240, column: 6)
!3524 = !DILocation(line: 240, column: 6, scope: !3515)
!3525 = !DILocation(line: 241, column: 7, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !320, line: 241, column: 7)
!3527 = distinct !DILexicalBlock(scope: !3523, file: !320, line: 240, column: 11)
!3528 = !DILocation(line: 241, column: 7, scope: !3527)
!3529 = !DILocation(line: 242, column: 118, scope: !3530)
!3530 = distinct !DILexicalBlock(scope: !3526, file: !320, line: 241, column: 15)
!3531 = !DILocation(line: 242, column: 123, scope: !3530)
!3532 = !DILocation(line: 242, column: 130, scope: !3530)
!3533 = !DILocation(line: 242, column: 5, scope: !3530)
!3534 = !DILocation(line: 243, column: 10, scope: !3530)
!3535 = !DILocation(line: 243, column: 5, scope: !3530)
!3536 = !DILocation(line: 244, column: 4, scope: !3530)
!3537 = !DILocation(line: 245, column: 114, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3526, file: !320, line: 244, column: 11)
!3539 = !DILocation(line: 245, column: 119, scope: !3538)
!3540 = !DILocation(line: 245, column: 5, scope: !3538)
!3541 = !DILocation(line: 247, column: 3, scope: !3527)
!3542 = !DILocation(line: 247, column: 13, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3523, file: !320, line: 247, column: 13)
!3544 = !DILocation(line: 247, column: 13, scope: !3523)
!3545 = !DILocation(line: 248, column: 117, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3543, file: !320, line: 247, column: 21)
!3547 = !DILocation(line: 248, column: 122, scope: !3546)
!3548 = !DILocation(line: 248, column: 129, scope: !3546)
!3549 = !DILocation(line: 248, column: 4, scope: !3546)
!3550 = !DILocation(line: 249, column: 9, scope: !3546)
!3551 = !DILocation(line: 249, column: 4, scope: !3546)
!3552 = !DILocation(line: 250, column: 19, scope: !3546)
!3553 = !DILocation(line: 250, column: 4, scope: !3546)
!3554 = !DILocation(line: 251, column: 3, scope: !3546)
!3555 = !DILocation(line: 251, column: 15, scope: !3556)
!3556 = distinct !DILexicalBlock(scope: !3543, file: !320, line: 251, column: 13)
!3557 = !DILocation(line: 251, column: 19, scope: !3556)
!3558 = !DILocation(line: 251, column: 14, scope: !3556)
!3559 = !DILocation(line: 251, column: 13, scope: !3543)
!3560 = !DILocation(line: 252, column: 86, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3556, file: !320, line: 251, column: 28)
!3562 = !DILocation(line: 252, column: 91, scope: !3561)
!3563 = !DILocation(line: 252, column: 4, scope: !3561)
!3564 = !DILocation(line: 253, column: 19, scope: !3561)
!3565 = !DILocation(line: 253, column: 4, scope: !3561)
!3566 = !DILocation(line: 254, column: 3, scope: !3561)
!3567 = !DILocation(line: 255, column: 21, scope: !3568)
!3568 = distinct !DILexicalBlock(scope: !3556, file: !320, line: 254, column: 10)
!3569 = !DILocation(line: 255, column: 19, scope: !3568)
!3570 = !DILocation(line: 256, column: 8, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3568, file: !320, line: 256, column: 7)
!3572 = !DILocation(line: 256, column: 7, scope: !3568)
!3573 = !DILocation(line: 257, column: 5, scope: !3574)
!3574 = distinct !DILexicalBlock(scope: !3571, file: !320, line: 256, column: 24)
!3575 = !DILocation(line: 258, column: 4, scope: !3574)
!3576 = !DILocation(line: 259, column: 8, scope: !3577)
!3577 = distinct !DILexicalBlock(scope: !3578, file: !320, line: 259, column: 8)
!3578 = distinct !DILexicalBlock(scope: !3571, file: !320, line: 258, column: 11)
!3579 = !DILocation(line: 259, column: 12, scope: !3577)
!3580 = !DILocation(line: 259, column: 8, scope: !3578)
!3581 = !DILocation(line: 260, column: 20, scope: !3577)
!3582 = !DILocation(line: 260, column: 63, scope: !3577)
!3583 = !DILocation(line: 260, column: 67, scope: !3577)
!3584 = !DILocation(line: 260, column: 6, scope: !3577)
!3585 = !DILocation(line: 261, column: 8, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3578, file: !320, line: 261, column: 8)
!3587 = !DILocation(line: 261, column: 12, scope: !3586)
!3588 = !DILocation(line: 261, column: 8, scope: !3578)
!3589 = !DILocation(line: 262, column: 20, scope: !3586)
!3590 = !DILocation(line: 262, column: 60, scope: !3586)
!3591 = !DILocation(line: 262, column: 64, scope: !3586)
!3592 = !DILocation(line: 262, column: 6, scope: !3586)
!3593 = !DILocation(line: 263, column: 8, scope: !3594)
!3594 = distinct !DILexicalBlock(scope: !3578, file: !320, line: 263, column: 8)
!3595 = !DILocation(line: 263, column: 12, scope: !3594)
!3596 = !DILocation(line: 263, column: 15, scope: !3594)
!3597 = !DILocation(line: 263, column: 18, scope: !3594)
!3598 = !DILocation(line: 263, column: 22, scope: !3594)
!3599 = !DILocation(line: 263, column: 29, scope: !3594)
!3600 = !DILocation(line: 263, column: 32, scope: !3594)
!3601 = !DILocation(line: 263, column: 36, scope: !3594)
!3602 = !DILocation(line: 263, column: 41, scope: !3594)
!3603 = !DILocation(line: 263, column: 44, scope: !3594)
!3604 = !DILocation(line: 263, column: 48, scope: !3594)
!3605 = !DILocation(line: 263, column: 55, scope: !3594)
!3606 = !DILocation(line: 263, column: 58, scope: !3594)
!3607 = !DILocation(line: 263, column: 62, scope: !3594)
!3608 = !DILocation(line: 263, column: 8, scope: !3578)
!3609 = !DILocation(line: 264, column: 20, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3594, file: !320, line: 263, column: 67)
!3611 = !DILocation(line: 264, column: 36, scope: !3610)
!3612 = !DILocation(line: 264, column: 40, scope: !3610)
!3613 = !DILocation(line: 264, column: 45, scope: !3610)
!3614 = !DILocation(line: 264, column: 49, scope: !3610)
!3615 = !DILocation(line: 264, column: 55, scope: !3610)
!3616 = !DILocation(line: 264, column: 59, scope: !3610)
!3617 = !DILocation(line: 264, column: 63, scope: !3610)
!3618 = !DILocation(line: 264, column: 67, scope: !3610)
!3619 = !DILocation(line: 264, column: 75, scope: !3610)
!3620 = !DILocation(line: 264, column: 79, scope: !3610)
!3621 = !DILocation(line: 264, column: 6, scope: !3610)
!3622 = !DILocation(line: 265, column: 5, scope: !3610)
!3623 = !DILocation(line: 267, column: 8, scope: !3624)
!3624 = distinct !DILexicalBlock(scope: !3578, file: !320, line: 267, column: 8)
!3625 = !DILocation(line: 267, column: 8, scope: !3578)
!3626 = !DILocation(line: 268, column: 37, scope: !3627)
!3627 = distinct !DILexicalBlock(scope: !3624, file: !320, line: 267, column: 39)
!3628 = !DILocation(line: 268, column: 41, scope: !3627)
!3629 = !DILocation(line: 268, column: 21, scope: !3627)
!3630 = !DILocation(line: 268, column: 6, scope: !3627)
!3631 = !DILocation(line: 268, column: 10, scope: !3627)
!3632 = !DILocation(line: 268, column: 19, scope: !3627)
!3633 = !DILocation(line: 269, column: 5, scope: !3627)
!3634 = !DILocalVariable(name: "conn", scope: !3578, file: !320, line: 271, type: !134)
!3635 = !DILocation(line: 271, column: 12, scope: !3578)
!3636 = !DILocation(line: 271, column: 38, scope: !3578)
!3637 = !DILocation(line: 271, column: 54, scope: !3578)
!3638 = !DILocation(line: 271, column: 58, scope: !3578)
!3639 = !DILocation(line: 271, column: 64, scope: !3578)
!3640 = !DILocation(line: 271, column: 68, scope: !3578)
!3641 = !DILocation(line: 271, column: 74, scope: !3578)
!3642 = !DILocation(line: 271, column: 78, scope: !3578)
!3643 = !DILocation(line: 271, column: 88, scope: !3578)
!3644 = !DILocation(line: 271, column: 92, scope: !3578)
!3645 = !DILocation(line: 271, column: 100, scope: !3578)
!3646 = !DILocation(line: 271, column: 104, scope: !3578)
!3647 = !DILocation(line: 271, column: 19, scope: !3578)
!3648 = !DILocation(line: 272, column: 9, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3578, file: !320, line: 272, column: 8)
!3650 = !DILocation(line: 272, column: 8, scope: !3578)
!3651 = !DILocation(line: 273, column: 99, scope: !3652)
!3652 = distinct !DILexicalBlock(scope: !3649, file: !320, line: 272, column: 15)
!3653 = !DILocation(line: 273, column: 104, scope: !3652)
!3654 = !DILocation(line: 273, column: 6, scope: !3652)
!3655 = !DILocation(line: 274, column: 18, scope: !3652)
!3656 = !DILocation(line: 274, column: 6, scope: !3652)
!3657 = !DILocation(line: 275, column: 20, scope: !3652)
!3658 = !DILocation(line: 276, column: 5, scope: !3652)
!3659 = !DILocation(line: 276, column: 31, scope: !3660)
!3660 = distinct !DILexicalBlock(scope: !3649, file: !320, line: 276, column: 15)
!3661 = !DILocation(line: 276, column: 47, scope: !3660)
!3662 = !DILocation(line: 276, column: 51, scope: !3660)
!3663 = !DILocation(line: 276, column: 15, scope: !3660)
!3664 = !DILocation(line: 276, column: 15, scope: !3649)
!3665 = !DILocation(line: 277, column: 77, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3660, file: !320, line: 276, column: 60)
!3667 = !DILocation(line: 277, column: 81, scope: !3666)
!3668 = !DILocation(line: 277, column: 6, scope: !3666)
!3669 = !DILocation(line: 278, column: 18, scope: !3666)
!3670 = !DILocation(line: 278, column: 6, scope: !3666)
!3671 = !DILocation(line: 279, column: 20, scope: !3666)
!3672 = !DILocation(line: 280, column: 5, scope: !3666)
!3673 = !DILocation(line: 280, column: 16, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3660, file: !320, line: 280, column: 15)
!3675 = !DILocation(line: 280, column: 15, scope: !3660)
!3676 = !DILocation(line: 281, column: 77, scope: !3677)
!3677 = distinct !DILexicalBlock(scope: !3674, file: !320, line: 280, column: 48)
!3678 = !DILocation(line: 281, column: 82, scope: !3677)
!3679 = !DILocation(line: 281, column: 6, scope: !3677)
!3680 = !DILocation(line: 282, column: 9, scope: !3681)
!3681 = distinct !DILexicalBlock(scope: !3677, file: !320, line: 282, column: 9)
!3682 = !DILocation(line: 282, column: 9, scope: !3677)
!3683 = !DILocation(line: 283, column: 7, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3681, file: !320, line: 282, column: 41)
!3685 = !DILocation(line: 284, column: 7, scope: !3684)
!3686 = !DILocation(line: 285, column: 6, scope: !3684)
!3687 = !DILocation(line: 287, column: 25, scope: !3681)
!3688 = !DILocation(line: 288, column: 37, scope: !3677)
!3689 = !DILocation(line: 289, column: 5, scope: !3677)
!3690 = !DILocation(line: 291, column: 19, scope: !3568)
!3691 = !DILocation(line: 291, column: 4, scope: !3568)
!3692 = !DILocation(line: 293, column: 6, scope: !3693)
!3693 = distinct !DILexicalBlock(scope: !3515, file: !320, line: 293, column: 6)
!3694 = !DILocation(line: 293, column: 6, scope: !3515)
!3695 = !DILocation(line: 294, column: 31, scope: !3696)
!3696 = distinct !DILexicalBlock(scope: !3693, file: !320, line: 293, column: 22)
!3697 = !DILocation(line: 294, column: 47, scope: !3696)
!3698 = !DILocation(line: 294, column: 11, scope: !3696)
!3699 = !DILocation(line: 295, column: 3, scope: !3696)
!3700 = !DILocation(line: 296, column: 2, scope: !3515)
!3701 = !DILocation(line: 297, column: 9, scope: !3479)
!3702 = !DILocation(line: 297, column: 2, scope: !3479)
!3703 = distinct !DISubprogram(name: "MyconninfoParse", scope: !320, file: !320, line: 105, type: !3704, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!318, !132, !831}
!3706 = !DILocalVariable(name: "userdb", arg: 1, scope: !3703, file: !320, line: 105, type: !132)
!3707 = !DILocation(line: 105, column: 42, scope: !3703)
!3708 = !DILocalVariable(name: "errmsg", arg: 2, scope: !3703, file: !320, line: 105, type: !831)
!3709 = !DILocation(line: 105, column: 57, scope: !3703)
!3710 = !DILocalVariable(name: "co", scope: !3703, file: !320, line: 106, type: !318)
!3711 = !DILocation(line: 106, column: 14, scope: !3703)
!3712 = !DILocation(line: 106, column: 32, scope: !3703)
!3713 = !DILocation(line: 107, column: 8, scope: !3703)
!3714 = !DILocation(line: 107, column: 2, scope: !3703)
!3715 = !DILocation(line: 108, column: 5, scope: !3716)
!3716 = distinct !DILexicalBlock(scope: !3703, file: !320, line: 108, column: 5)
!3717 = !DILocation(line: 108, column: 5, scope: !3703)
!3718 = !DILocalVariable(name: "s0", scope: !3719, file: !320, line: 109, type: !132)
!3719 = distinct !DILexicalBlock(scope: !3716, file: !320, line: 108, column: 13)
!3720 = !DILocation(line: 109, column: 9, scope: !3719)
!3721 = !DILocation(line: 109, column: 19, scope: !3719)
!3722 = !DILocation(line: 109, column: 12, scope: !3719)
!3723 = !DILocalVariable(name: "s", scope: !3719, file: !320, line: 110, type: !132)
!3724 = !DILocation(line: 110, column: 9, scope: !3719)
!3725 = !DILocation(line: 110, column: 13, scope: !3719)
!3726 = !DILocation(line: 112, column: 3, scope: !3719)
!3727 = !DILocation(line: 112, column: 9, scope: !3719)
!3728 = !DILocation(line: 112, column: 11, scope: !3719)
!3729 = !DILocation(line: 112, column: 15, scope: !3719)
!3730 = !DILocation(line: 112, column: 14, scope: !3719)
!3731 = !DILocation(line: 0, scope: !3719)
!3732 = !DILocation(line: 114, column: 4, scope: !3733)
!3733 = distinct !DILexicalBlock(scope: !3719, file: !320, line: 112, column: 18)
!3734 = !DILocation(line: 114, column: 11, scope: !3733)
!3735 = !DILocation(line: 114, column: 10, scope: !3733)
!3736 = !DILocation(line: 114, column: 13, scope: !3733)
!3737 = !DILocation(line: 114, column: 18, scope: !3733)
!3738 = !DILocation(line: 114, column: 17, scope: !3733)
!3739 = !DILocation(line: 114, column: 19, scope: !3733)
!3740 = !DILocation(line: 0, scope: !3733)
!3741 = !DILocation(line: 114, column: 27, scope: !3733)
!3742 = distinct !{!3742, !3732, !3743, !2567}
!3743 = !DILocation(line: 114, column: 29, scope: !3733)
!3744 = !DILocalVariable(name: "snext", scope: !3733, file: !320, line: 115, type: !132)
!3745 = !DILocation(line: 115, column: 10, scope: !3733)
!3746 = !DILocation(line: 115, column: 25, scope: !3733)
!3747 = !DILocation(line: 115, column: 18, scope: !3733)
!3748 = !DILocation(line: 116, column: 7, scope: !3749)
!3749 = distinct !DILexicalBlock(scope: !3733, file: !320, line: 116, column: 7)
!3750 = !DILocation(line: 116, column: 7, scope: !3733)
!3751 = !DILocation(line: 117, column: 6, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3749, file: !320, line: 116, column: 14)
!3753 = !DILocation(line: 117, column: 12, scope: !3752)
!3754 = !DILocation(line: 118, column: 5, scope: !3752)
!3755 = !DILocation(line: 119, column: 4, scope: !3752)
!3756 = !DILocalVariable(name: "seq", scope: !3733, file: !320, line: 121, type: !132)
!3757 = !DILocation(line: 121, column: 10, scope: !3733)
!3758 = !DILocation(line: 121, column: 23, scope: !3733)
!3759 = !DILocation(line: 121, column: 16, scope: !3733)
!3760 = !DILocation(line: 122, column: 8, scope: !3761)
!3761 = distinct !DILexicalBlock(scope: !3733, file: !320, line: 122, column: 7)
!3762 = !DILocation(line: 122, column: 7, scope: !3733)
!3763 = !DILocation(line: 123, column: 20, scope: !3764)
!3764 = distinct !DILexicalBlock(scope: !3761, file: !320, line: 122, column: 13)
!3765 = !DILocation(line: 123, column: 5, scope: !3764)
!3766 = !DILocation(line: 124, column: 8, scope: !3764)
!3767 = !DILocation(line: 125, column: 8, scope: !3768)
!3768 = distinct !DILexicalBlock(scope: !3764, file: !320, line: 125, column: 8)
!3769 = !DILocation(line: 125, column: 8, scope: !3764)
!3770 = !DILocation(line: 126, column: 23, scope: !3771)
!3771 = distinct !DILexicalBlock(scope: !3768, file: !320, line: 125, column: 16)
!3772 = !DILocation(line: 126, column: 16, scope: !3771)
!3773 = !DILocation(line: 126, column: 7, scope: !3771)
!3774 = !DILocation(line: 126, column: 14, scope: !3771)
!3775 = !DILocation(line: 127, column: 5, scope: !3771)
!3776 = !DILocation(line: 128, column: 5, scope: !3764)
!3777 = !DILocation(line: 131, column: 5, scope: !3733)
!3778 = !DILocation(line: 131, column: 9, scope: !3733)
!3779 = !DILocation(line: 132, column: 15, scope: !3780)
!3780 = distinct !DILexicalBlock(scope: !3733, file: !320, line: 132, column: 7)
!3781 = !DILocation(line: 132, column: 8, scope: !3780)
!3782 = !DILocation(line: 132, column: 7, scope: !3733)
!3783 = !DILocation(line: 133, column: 23, scope: !3780)
!3784 = !DILocation(line: 133, column: 26, scope: !3780)
!3785 = !DILocation(line: 133, column: 16, scope: !3780)
!3786 = !DILocation(line: 133, column: 5, scope: !3780)
!3787 = !DILocation(line: 133, column: 9, scope: !3780)
!3788 = !DILocation(line: 133, column: 14, scope: !3780)
!3789 = !DILocation(line: 134, column: 20, scope: !3790)
!3790 = distinct !DILexicalBlock(scope: !3780, file: !320, line: 134, column: 12)
!3791 = !DILocation(line: 134, column: 13, scope: !3790)
!3792 = !DILocation(line: 134, column: 12, scope: !3780)
!3793 = !DILocation(line: 135, column: 23, scope: !3790)
!3794 = !DILocation(line: 135, column: 26, scope: !3790)
!3795 = !DILocation(line: 135, column: 16, scope: !3790)
!3796 = !DILocation(line: 135, column: 5, scope: !3790)
!3797 = !DILocation(line: 135, column: 9, scope: !3790)
!3798 = !DILocation(line: 135, column: 14, scope: !3790)
!3799 = !DILocation(line: 136, column: 20, scope: !3800)
!3800 = distinct !DILexicalBlock(scope: !3790, file: !320, line: 136, column: 12)
!3801 = !DILocation(line: 136, column: 13, scope: !3800)
!3802 = !DILocation(line: 136, column: 12, scope: !3790)
!3803 = !DILocation(line: 137, column: 23, scope: !3800)
!3804 = !DILocation(line: 137, column: 26, scope: !3800)
!3805 = !DILocation(line: 137, column: 16, scope: !3800)
!3806 = !DILocation(line: 137, column: 5, scope: !3800)
!3807 = !DILocation(line: 137, column: 9, scope: !3800)
!3808 = !DILocation(line: 137, column: 14, scope: !3800)
!3809 = !DILocation(line: 138, column: 20, scope: !3810)
!3810 = distinct !DILexicalBlock(scope: !3800, file: !320, line: 138, column: 12)
!3811 = !DILocation(line: 138, column: 13, scope: !3810)
!3812 = !DILocation(line: 138, column: 12, scope: !3800)
!3813 = !DILocation(line: 139, column: 23, scope: !3810)
!3814 = !DILocation(line: 139, column: 26, scope: !3810)
!3815 = !DILocation(line: 139, column: 16, scope: !3810)
!3816 = !DILocation(line: 139, column: 5, scope: !3810)
!3817 = !DILocation(line: 139, column: 9, scope: !3810)
!3818 = !DILocation(line: 139, column: 14, scope: !3810)
!3819 = !DILocation(line: 140, column: 20, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3810, file: !320, line: 140, column: 12)
!3821 = !DILocation(line: 140, column: 13, scope: !3820)
!3822 = !DILocation(line: 140, column: 12, scope: !3810)
!3823 = !DILocation(line: 141, column: 23, scope: !3820)
!3824 = !DILocation(line: 141, column: 26, scope: !3820)
!3825 = !DILocation(line: 141, column: 16, scope: !3820)
!3826 = !DILocation(line: 141, column: 5, scope: !3820)
!3827 = !DILocation(line: 141, column: 9, scope: !3820)
!3828 = !DILocation(line: 141, column: 14, scope: !3820)
!3829 = !DILocation(line: 142, column: 20, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3820, file: !320, line: 142, column: 12)
!3831 = !DILocation(line: 142, column: 13, scope: !3830)
!3832 = !DILocation(line: 142, column: 12, scope: !3820)
!3833 = !DILocation(line: 143, column: 25, scope: !3830)
!3834 = !DILocation(line: 143, column: 28, scope: !3830)
!3835 = !DILocation(line: 143, column: 18, scope: !3830)
!3836 = !DILocation(line: 143, column: 5, scope: !3830)
!3837 = !DILocation(line: 143, column: 9, scope: !3830)
!3838 = !DILocation(line: 143, column: 16, scope: !3830)
!3839 = !DILocation(line: 144, column: 20, scope: !3840)
!3840 = distinct !DILexicalBlock(scope: !3830, file: !320, line: 144, column: 12)
!3841 = !DILocation(line: 144, column: 13, scope: !3840)
!3842 = !DILocation(line: 144, column: 12, scope: !3830)
!3843 = !DILocation(line: 145, column: 25, scope: !3840)
!3844 = !DILocation(line: 145, column: 28, scope: !3840)
!3845 = !DILocation(line: 145, column: 18, scope: !3840)
!3846 = !DILocation(line: 145, column: 5, scope: !3840)
!3847 = !DILocation(line: 145, column: 9, scope: !3840)
!3848 = !DILocation(line: 145, column: 16, scope: !3840)
!3849 = !DILocation(line: 146, column: 20, scope: !3850)
!3850 = distinct !DILexicalBlock(scope: !3840, file: !320, line: 146, column: 12)
!3851 = !DILocation(line: 146, column: 13, scope: !3850)
!3852 = !DILocation(line: 146, column: 12, scope: !3840)
!3853 = !DILocation(line: 147, column: 25, scope: !3850)
!3854 = !DILocation(line: 147, column: 28, scope: !3850)
!3855 = !DILocation(line: 147, column: 18, scope: !3850)
!3856 = !DILocation(line: 147, column: 5, scope: !3850)
!3857 = !DILocation(line: 147, column: 9, scope: !3850)
!3858 = !DILocation(line: 147, column: 16, scope: !3850)
!3859 = !DILocation(line: 148, column: 20, scope: !3860)
!3860 = distinct !DILexicalBlock(scope: !3850, file: !320, line: 148, column: 12)
!3861 = !DILocation(line: 148, column: 13, scope: !3860)
!3862 = !DILocation(line: 148, column: 12, scope: !3850)
!3863 = !DILocation(line: 149, column: 23, scope: !3860)
!3864 = !DILocation(line: 149, column: 26, scope: !3860)
!3865 = !DILocation(line: 149, column: 16, scope: !3860)
!3866 = !DILocation(line: 149, column: 5, scope: !3860)
!3867 = !DILocation(line: 149, column: 9, scope: !3860)
!3868 = !DILocation(line: 149, column: 14, scope: !3860)
!3869 = !DILocation(line: 150, column: 20, scope: !3870)
!3870 = distinct !DILexicalBlock(scope: !3860, file: !320, line: 150, column: 12)
!3871 = !DILocation(line: 150, column: 13, scope: !3870)
!3872 = !DILocation(line: 150, column: 12, scope: !3860)
!3873 = !DILocation(line: 151, column: 23, scope: !3870)
!3874 = !DILocation(line: 151, column: 26, scope: !3870)
!3875 = !DILocation(line: 151, column: 16, scope: !3870)
!3876 = !DILocation(line: 151, column: 5, scope: !3870)
!3877 = !DILocation(line: 151, column: 9, scope: !3870)
!3878 = !DILocation(line: 151, column: 14, scope: !3870)
!3879 = !DILocation(line: 152, column: 20, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3870, file: !320, line: 152, column: 12)
!3881 = !DILocation(line: 152, column: 13, scope: !3880)
!3882 = !DILocation(line: 152, column: 12, scope: !3870)
!3883 = !DILocation(line: 153, column: 23, scope: !3880)
!3884 = !DILocation(line: 153, column: 26, scope: !3880)
!3885 = !DILocation(line: 153, column: 16, scope: !3880)
!3886 = !DILocation(line: 153, column: 5, scope: !3880)
!3887 = !DILocation(line: 153, column: 9, scope: !3880)
!3888 = !DILocation(line: 153, column: 14, scope: !3880)
!3889 = !DILocation(line: 154, column: 20, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3880, file: !320, line: 154, column: 12)
!3891 = !DILocation(line: 154, column: 13, scope: !3890)
!3892 = !DILocation(line: 154, column: 12, scope: !3880)
!3893 = !DILocation(line: 155, column: 23, scope: !3890)
!3894 = !DILocation(line: 155, column: 26, scope: !3890)
!3895 = !DILocation(line: 155, column: 16, scope: !3890)
!3896 = !DILocation(line: 155, column: 5, scope: !3890)
!3897 = !DILocation(line: 155, column: 9, scope: !3890)
!3898 = !DILocation(line: 155, column: 14, scope: !3890)
!3899 = !DILocation(line: 156, column: 20, scope: !3900)
!3900 = distinct !DILexicalBlock(scope: !3890, file: !320, line: 156, column: 12)
!3901 = !DILocation(line: 156, column: 13, scope: !3900)
!3902 = !DILocation(line: 156, column: 12, scope: !3890)
!3903 = !DILocation(line: 157, column: 27, scope: !3900)
!3904 = !DILocation(line: 157, column: 30, scope: !3900)
!3905 = !DILocation(line: 157, column: 20, scope: !3900)
!3906 = !DILocation(line: 157, column: 5, scope: !3900)
!3907 = !DILocation(line: 157, column: 9, scope: !3900)
!3908 = !DILocation(line: 157, column: 18, scope: !3900)
!3909 = !DILocation(line: 158, column: 20, scope: !3910)
!3910 = distinct !DILexicalBlock(scope: !3900, file: !320, line: 158, column: 12)
!3911 = !DILocation(line: 158, column: 13, scope: !3910)
!3912 = !DILocation(line: 158, column: 12, scope: !3900)
!3913 = !DILocation(line: 159, column: 27, scope: !3910)
!3914 = !DILocation(line: 159, column: 30, scope: !3910)
!3915 = !DILocation(line: 159, column: 20, scope: !3910)
!3916 = !DILocation(line: 159, column: 5, scope: !3910)
!3917 = !DILocation(line: 159, column: 9, scope: !3910)
!3918 = !DILocation(line: 159, column: 18, scope: !3910)
!3919 = !DILocation(line: 160, column: 20, scope: !3920)
!3920 = distinct !DILexicalBlock(scope: !3910, file: !320, line: 160, column: 12)
!3921 = !DILocation(line: 160, column: 13, scope: !3920)
!3922 = !DILocation(line: 160, column: 12, scope: !3910)
!3923 = !DILocation(line: 161, column: 27, scope: !3920)
!3924 = !DILocation(line: 161, column: 30, scope: !3920)
!3925 = !DILocation(line: 161, column: 20, scope: !3920)
!3926 = !DILocation(line: 161, column: 5, scope: !3920)
!3927 = !DILocation(line: 161, column: 9, scope: !3920)
!3928 = !DILocation(line: 161, column: 18, scope: !3920)
!3929 = !DILocation(line: 162, column: 20, scope: !3930)
!3930 = distinct !DILexicalBlock(scope: !3920, file: !320, line: 162, column: 12)
!3931 = !DILocation(line: 162, column: 13, scope: !3930)
!3932 = !DILocation(line: 162, column: 12, scope: !3920)
!3933 = !DILocation(line: 163, column: 27, scope: !3930)
!3934 = !DILocation(line: 163, column: 30, scope: !3930)
!3935 = !DILocation(line: 163, column: 20, scope: !3930)
!3936 = !DILocation(line: 163, column: 5, scope: !3930)
!3937 = !DILocation(line: 163, column: 9, scope: !3930)
!3938 = !DILocation(line: 163, column: 18, scope: !3930)
!3939 = !DILocation(line: 164, column: 20, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3930, file: !320, line: 164, column: 12)
!3941 = !DILocation(line: 164, column: 13, scope: !3940)
!3942 = !DILocation(line: 164, column: 12, scope: !3930)
!3943 = !DILocation(line: 165, column: 35, scope: !3940)
!3944 = !DILocation(line: 165, column: 38, scope: !3940)
!3945 = !DILocation(line: 165, column: 30, scope: !3940)
!3946 = !DILocation(line: 165, column: 5, scope: !3940)
!3947 = !DILocation(line: 165, column: 9, scope: !3940)
!3948 = !DILocation(line: 165, column: 14, scope: !3940)
!3949 = !DILocation(line: 166, column: 20, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3940, file: !320, line: 166, column: 12)
!3951 = !DILocation(line: 166, column: 13, scope: !3950)
!3952 = !DILocation(line: 166, column: 12, scope: !3940)
!3953 = !DILocation(line: 167, column: 35, scope: !3950)
!3954 = !DILocation(line: 167, column: 38, scope: !3950)
!3955 = !DILocation(line: 167, column: 30, scope: !3950)
!3956 = !DILocation(line: 167, column: 5, scope: !3950)
!3957 = !DILocation(line: 167, column: 9, scope: !3950)
!3958 = !DILocation(line: 167, column: 14, scope: !3950)
!3959 = !DILocation(line: 168, column: 20, scope: !3960)
!3960 = distinct !DILexicalBlock(scope: !3950, file: !320, line: 168, column: 12)
!3961 = !DILocation(line: 168, column: 13, scope: !3960)
!3962 = !DILocation(line: 168, column: 12, scope: !3950)
!3963 = !DILocation(line: 169, column: 46, scope: !3960)
!3964 = !DILocation(line: 169, column: 49, scope: !3960)
!3965 = !DILocation(line: 169, column: 41, scope: !3960)
!3966 = !DILocation(line: 169, column: 5, scope: !3960)
!3967 = !DILocation(line: 169, column: 9, scope: !3960)
!3968 = !DILocation(line: 169, column: 25, scope: !3960)
!3969 = !DILocation(line: 170, column: 20, scope: !3970)
!3970 = distinct !DILexicalBlock(scope: !3960, file: !320, line: 170, column: 12)
!3971 = !DILocation(line: 170, column: 13, scope: !3970)
!3972 = !DILocation(line: 170, column: 12, scope: !3960)
!3973 = !DILocation(line: 171, column: 46, scope: !3970)
!3974 = !DILocation(line: 171, column: 49, scope: !3970)
!3975 = !DILocation(line: 171, column: 41, scope: !3970)
!3976 = !DILocation(line: 171, column: 5, scope: !3970)
!3977 = !DILocation(line: 171, column: 9, scope: !3970)
!3978 = !DILocation(line: 171, column: 25, scope: !3970)
!3979 = !DILocation(line: 172, column: 20, scope: !3980)
!3980 = distinct !DILexicalBlock(scope: !3970, file: !320, line: 172, column: 12)
!3981 = !DILocation(line: 172, column: 13, scope: !3980)
!3982 = !DILocation(line: 172, column: 12, scope: !3970)
!3983 = !DILocation(line: 173, column: 43, scope: !3980)
!3984 = !DILocation(line: 173, column: 46, scope: !3980)
!3985 = !DILocation(line: 173, column: 38, scope: !3980)
!3986 = !DILocation(line: 173, column: 5, scope: !3980)
!3987 = !DILocation(line: 173, column: 9, scope: !3980)
!3988 = !DILocation(line: 173, column: 22, scope: !3980)
!3989 = !DILocation(line: 174, column: 20, scope: !3990)
!3990 = distinct !DILexicalBlock(scope: !3980, file: !320, line: 174, column: 12)
!3991 = !DILocation(line: 174, column: 13, scope: !3990)
!3992 = !DILocation(line: 174, column: 12, scope: !3980)
!3993 = !DILocation(line: 175, column: 22, scope: !3990)
!3994 = !DILocation(line: 175, column: 25, scope: !3990)
!3995 = !DILocation(line: 175, column: 15, scope: !3990)
!3996 = !DILocation(line: 175, column: 5, scope: !3990)
!3997 = !DILocation(line: 175, column: 9, scope: !3990)
!3998 = !DILocation(line: 175, column: 13, scope: !3990)
!3999 = !DILocation(line: 176, column: 20, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3990, file: !320, line: 176, column: 12)
!4001 = !DILocation(line: 176, column: 13, scope: !4000)
!4002 = !DILocation(line: 176, column: 12, scope: !3990)
!4003 = !DILocation(line: 177, column: 22, scope: !4000)
!4004 = !DILocation(line: 177, column: 25, scope: !4000)
!4005 = !DILocation(line: 177, column: 15, scope: !4000)
!4006 = !DILocation(line: 177, column: 5, scope: !4000)
!4007 = !DILocation(line: 177, column: 9, scope: !4000)
!4008 = !DILocation(line: 177, column: 13, scope: !4000)
!4009 = !DILocation(line: 178, column: 20, scope: !4010)
!4010 = distinct !DILexicalBlock(scope: !4000, file: !320, line: 178, column: 12)
!4011 = !DILocation(line: 178, column: 13, scope: !4010)
!4012 = !DILocation(line: 178, column: 12, scope: !4000)
!4013 = !DILocation(line: 179, column: 21, scope: !4010)
!4014 = !DILocation(line: 179, column: 24, scope: !4010)
!4015 = !DILocation(line: 179, column: 14, scope: !4010)
!4016 = !DILocation(line: 179, column: 5, scope: !4010)
!4017 = !DILocation(line: 179, column: 9, scope: !4010)
!4018 = !DILocation(line: 179, column: 12, scope: !4010)
!4019 = !DILocation(line: 180, column: 20, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4010, file: !320, line: 180, column: 12)
!4021 = !DILocation(line: 180, column: 13, scope: !4020)
!4022 = !DILocation(line: 180, column: 12, scope: !4010)
!4023 = !DILocation(line: 181, column: 21, scope: !4020)
!4024 = !DILocation(line: 181, column: 24, scope: !4020)
!4025 = !DILocation(line: 181, column: 14, scope: !4020)
!4026 = !DILocation(line: 181, column: 5, scope: !4020)
!4027 = !DILocation(line: 181, column: 9, scope: !4020)
!4028 = !DILocation(line: 181, column: 12, scope: !4020)
!4029 = !DILocation(line: 182, column: 20, scope: !4030)
!4030 = distinct !DILexicalBlock(scope: !4020, file: !320, line: 182, column: 12)
!4031 = !DILocation(line: 182, column: 13, scope: !4030)
!4032 = !DILocation(line: 182, column: 12, scope: !4020)
!4033 = !DILocation(line: 183, column: 25, scope: !4030)
!4034 = !DILocation(line: 183, column: 28, scope: !4030)
!4035 = !DILocation(line: 183, column: 18, scope: !4030)
!4036 = !DILocation(line: 183, column: 5, scope: !4030)
!4037 = !DILocation(line: 183, column: 9, scope: !4030)
!4038 = !DILocation(line: 183, column: 16, scope: !4030)
!4039 = !DILocation(line: 184, column: 20, scope: !4040)
!4040 = distinct !DILexicalBlock(scope: !4030, file: !320, line: 184, column: 12)
!4041 = !DILocation(line: 184, column: 13, scope: !4040)
!4042 = !DILocation(line: 184, column: 12, scope: !4030)
!4043 = !DILocation(line: 185, column: 25, scope: !4040)
!4044 = !DILocation(line: 185, column: 28, scope: !4040)
!4045 = !DILocation(line: 185, column: 18, scope: !4040)
!4046 = !DILocation(line: 185, column: 5, scope: !4040)
!4047 = !DILocation(line: 185, column: 9, scope: !4040)
!4048 = !DILocation(line: 185, column: 16, scope: !4040)
!4049 = !DILocation(line: 186, column: 20, scope: !4050)
!4050 = distinct !DILexicalBlock(scope: !4040, file: !320, line: 186, column: 12)
!4051 = !DILocation(line: 186, column: 13, scope: !4050)
!4052 = !DILocation(line: 186, column: 12, scope: !4040)
!4053 = !DILocation(line: 187, column: 23, scope: !4050)
!4054 = !DILocation(line: 187, column: 26, scope: !4050)
!4055 = !DILocation(line: 187, column: 16, scope: !4050)
!4056 = !DILocation(line: 187, column: 5, scope: !4050)
!4057 = !DILocation(line: 187, column: 9, scope: !4050)
!4058 = !DILocation(line: 187, column: 14, scope: !4050)
!4059 = !DILocation(line: 188, column: 20, scope: !4060)
!4060 = distinct !DILexicalBlock(scope: !4050, file: !320, line: 188, column: 12)
!4061 = !DILocation(line: 188, column: 13, scope: !4060)
!4062 = !DILocation(line: 188, column: 12, scope: !4050)
!4063 = !DILocation(line: 189, column: 23, scope: !4060)
!4064 = !DILocation(line: 189, column: 26, scope: !4060)
!4065 = !DILocation(line: 189, column: 16, scope: !4060)
!4066 = !DILocation(line: 189, column: 5, scope: !4060)
!4067 = !DILocation(line: 189, column: 9, scope: !4060)
!4068 = !DILocation(line: 189, column: 14, scope: !4060)
!4069 = !DILocation(line: 190, column: 20, scope: !4070)
!4070 = distinct !DILexicalBlock(scope: !4060, file: !320, line: 190, column: 12)
!4071 = !DILocation(line: 190, column: 13, scope: !4070)
!4072 = !DILocation(line: 190, column: 12, scope: !4060)
!4073 = !DILocation(line: 191, column: 25, scope: !4070)
!4074 = !DILocation(line: 191, column: 28, scope: !4070)
!4075 = !DILocation(line: 191, column: 18, scope: !4070)
!4076 = !DILocation(line: 191, column: 5, scope: !4070)
!4077 = !DILocation(line: 191, column: 9, scope: !4070)
!4078 = !DILocation(line: 191, column: 16, scope: !4070)
!4079 = !DILocation(line: 192, column: 20, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4070, file: !320, line: 192, column: 12)
!4081 = !DILocation(line: 192, column: 13, scope: !4080)
!4082 = !DILocation(line: 192, column: 12, scope: !4070)
!4083 = !DILocation(line: 193, column: 25, scope: !4080)
!4084 = !DILocation(line: 193, column: 28, scope: !4080)
!4085 = !DILocation(line: 193, column: 18, scope: !4080)
!4086 = !DILocation(line: 193, column: 5, scope: !4080)
!4087 = !DILocation(line: 193, column: 9, scope: !4080)
!4088 = !DILocation(line: 193, column: 16, scope: !4080)
!4089 = !DILocation(line: 195, column: 20, scope: !4090)
!4090 = distinct !DILexicalBlock(scope: !4080, file: !320, line: 194, column: 9)
!4091 = !DILocation(line: 195, column: 5, scope: !4090)
!4092 = !DILocation(line: 196, column: 8, scope: !4090)
!4093 = !DILocation(line: 197, column: 8, scope: !4094)
!4094 = distinct !DILexicalBlock(scope: !4090, file: !320, line: 197, column: 8)
!4095 = !DILocation(line: 197, column: 8, scope: !4090)
!4096 = !DILocation(line: 198, column: 23, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4094, file: !320, line: 197, column: 16)
!4098 = !DILocation(line: 198, column: 16, scope: !4097)
!4099 = !DILocation(line: 198, column: 7, scope: !4097)
!4100 = !DILocation(line: 198, column: 14, scope: !4097)
!4101 = !DILocation(line: 199, column: 5, scope: !4097)
!4102 = !DILocation(line: 200, column: 5, scope: !4090)
!4103 = !DILocation(line: 203, column: 8, scope: !3733)
!4104 = !DILocation(line: 203, column: 6, scope: !3733)
!4105 = distinct !{!4105, !3726, !4106, !2567}
!4106 = !DILocation(line: 204, column: 3, scope: !3719)
!4107 = !DILocation(line: 206, column: 8, scope: !3719)
!4108 = !DILocation(line: 206, column: 3, scope: !3719)
!4109 = !DILocation(line: 207, column: 2, scope: !3719)
!4110 = !DILocation(line: 209, column: 5, scope: !4111)
!4111 = distinct !DILexicalBlock(scope: !3703, file: !320, line: 209, column: 5)
!4112 = !DILocation(line: 209, column: 5, scope: !3703)
!4113 = !DILocation(line: 210, column: 8, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4115, file: !320, line: 210, column: 6)
!4115 = distinct !DILexicalBlock(scope: !4111, file: !320, line: 209, column: 9)
!4116 = !DILocation(line: 210, column: 12, scope: !4114)
!4117 = !DILocation(line: 210, column: 7, scope: !4114)
!4118 = !DILocation(line: 210, column: 6, scope: !4115)
!4119 = !DILocation(line: 211, column: 15, scope: !4114)
!4120 = !DILocation(line: 211, column: 4, scope: !4114)
!4121 = !DILocation(line: 211, column: 8, scope: !4114)
!4122 = !DILocation(line: 211, column: 14, scope: !4114)
!4123 = !DILocation(line: 212, column: 8, scope: !4124)
!4124 = distinct !DILexicalBlock(scope: !4115, file: !320, line: 212, column: 6)
!4125 = !DILocation(line: 212, column: 12, scope: !4124)
!4126 = !DILocation(line: 212, column: 7, scope: !4124)
!4127 = !DILocation(line: 212, column: 6, scope: !4115)
!4128 = !DILocation(line: 213, column: 13, scope: !4124)
!4129 = !DILocation(line: 213, column: 4, scope: !4124)
!4130 = !DILocation(line: 213, column: 8, scope: !4124)
!4131 = !DILocation(line: 213, column: 12, scope: !4124)
!4132 = !DILocation(line: 214, column: 8, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4115, file: !320, line: 214, column: 6)
!4134 = !DILocation(line: 214, column: 12, scope: !4133)
!4135 = !DILocation(line: 214, column: 7, scope: !4133)
!4136 = !DILocation(line: 214, column: 6, scope: !4115)
!4137 = !DILocation(line: 215, column: 13, scope: !4133)
!4138 = !DILocation(line: 215, column: 4, scope: !4133)
!4139 = !DILocation(line: 215, column: 8, scope: !4133)
!4140 = !DILocation(line: 215, column: 12, scope: !4133)
!4141 = !DILocation(line: 216, column: 8, scope: !4142)
!4142 = distinct !DILexicalBlock(scope: !4115, file: !320, line: 216, column: 6)
!4143 = !DILocation(line: 216, column: 12, scope: !4142)
!4144 = !DILocation(line: 216, column: 7, scope: !4142)
!4145 = !DILocation(line: 216, column: 6, scope: !4115)
!4146 = !DILocation(line: 217, column: 17, scope: !4142)
!4147 = !DILocation(line: 217, column: 4, scope: !4142)
!4148 = !DILocation(line: 217, column: 8, scope: !4142)
!4149 = !DILocation(line: 217, column: 16, scope: !4142)
!4150 = !DILocation(line: 218, column: 2, scope: !4115)
!4151 = !DILocation(line: 220, column: 9, scope: !3703)
!4152 = !DILocation(line: 220, column: 2, scope: !3703)
!4153 = distinct !DISubprogram(name: "MyconninfoFree", scope: !320, file: !320, line: 62, type: !4154, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !727)
!4154 = !DISubroutineType(types: !4155)
!4155 = !{null, !318}
!4156 = !DILocalVariable(name: "co", arg: 1, scope: !4153, file: !320, line: 62, type: !318)
!4157 = !DILocation(line: 62, column: 40, scope: !4153)
!4158 = !DILocation(line: 63, column: 5, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !4153, file: !320, line: 63, column: 5)
!4160 = !DILocation(line: 63, column: 5, scope: !4153)
!4161 = !DILocation(line: 64, column: 6, scope: !4162)
!4162 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 64, column: 6)
!4163 = distinct !DILexicalBlock(scope: !4159, file: !320, line: 63, column: 9)
!4164 = !DILocation(line: 64, column: 10, scope: !4162)
!4165 = !DILocation(line: 64, column: 6, scope: !4163)
!4166 = !DILocation(line: 64, column: 21, scope: !4162)
!4167 = !DILocation(line: 64, column: 25, scope: !4162)
!4168 = !DILocation(line: 64, column: 16, scope: !4162)
!4169 = !DILocation(line: 65, column: 6, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 65, column: 6)
!4171 = !DILocation(line: 65, column: 10, scope: !4170)
!4172 = !DILocation(line: 65, column: 6, scope: !4163)
!4173 = !DILocation(line: 65, column: 23, scope: !4170)
!4174 = !DILocation(line: 65, column: 27, scope: !4170)
!4175 = !DILocation(line: 65, column: 18, scope: !4170)
!4176 = !DILocation(line: 66, column: 6, scope: !4177)
!4177 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 66, column: 6)
!4178 = !DILocation(line: 66, column: 10, scope: !4177)
!4179 = !DILocation(line: 66, column: 6, scope: !4163)
!4180 = !DILocation(line: 66, column: 21, scope: !4177)
!4181 = !DILocation(line: 66, column: 25, scope: !4177)
!4182 = !DILocation(line: 66, column: 16, scope: !4177)
!4183 = !DILocation(line: 67, column: 6, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 67, column: 6)
!4185 = !DILocation(line: 67, column: 10, scope: !4184)
!4186 = !DILocation(line: 67, column: 6, scope: !4163)
!4187 = !DILocation(line: 67, column: 25, scope: !4184)
!4188 = !DILocation(line: 67, column: 29, scope: !4184)
!4189 = !DILocation(line: 67, column: 20, scope: !4184)
!4190 = !DILocation(line: 68, column: 6, scope: !4191)
!4191 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 68, column: 6)
!4192 = !DILocation(line: 68, column: 10, scope: !4191)
!4193 = !DILocation(line: 68, column: 6, scope: !4163)
!4194 = !DILocation(line: 68, column: 20, scope: !4191)
!4195 = !DILocation(line: 68, column: 24, scope: !4191)
!4196 = !DILocation(line: 68, column: 15, scope: !4191)
!4197 = !DILocation(line: 69, column: 6, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 69, column: 6)
!4199 = !DILocation(line: 69, column: 10, scope: !4198)
!4200 = !DILocation(line: 69, column: 6, scope: !4163)
!4201 = !DILocation(line: 69, column: 19, scope: !4198)
!4202 = !DILocation(line: 69, column: 23, scope: !4198)
!4203 = !DILocation(line: 69, column: 14, scope: !4198)
!4204 = !DILocation(line: 70, column: 6, scope: !4205)
!4205 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 70, column: 6)
!4206 = !DILocation(line: 70, column: 10, scope: !4205)
!4207 = !DILocation(line: 70, column: 6, scope: !4163)
!4208 = !DILocation(line: 70, column: 21, scope: !4205)
!4209 = !DILocation(line: 70, column: 25, scope: !4205)
!4210 = !DILocation(line: 70, column: 16, scope: !4205)
!4211 = !DILocation(line: 71, column: 6, scope: !4212)
!4212 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 71, column: 6)
!4213 = !DILocation(line: 71, column: 10, scope: !4212)
!4214 = !DILocation(line: 71, column: 6, scope: !4163)
!4215 = !DILocation(line: 71, column: 23, scope: !4212)
!4216 = !DILocation(line: 71, column: 27, scope: !4212)
!4217 = !DILocation(line: 71, column: 18, scope: !4212)
!4218 = !DILocation(line: 72, column: 6, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4163, file: !320, line: 72, column: 6)
!4220 = !DILocation(line: 72, column: 10, scope: !4219)
!4221 = !DILocation(line: 72, column: 6, scope: !4163)
!4222 = !DILocation(line: 72, column: 23, scope: !4219)
!4223 = !DILocation(line: 72, column: 27, scope: !4219)
!4224 = !DILocation(line: 72, column: 18, scope: !4219)
!4225 = !DILocation(line: 73, column: 9, scope: !4163)
!4226 = !DILocation(line: 73, column: 3, scope: !4163)
!4227 = !DILocation(line: 74, column: 2, scope: !4163)
!4228 = !DILocation(line: 75, column: 1, scope: !4153)
