; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbd_sqlite.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_sqlite.c"
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
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct.passwd = type { ptr, ptr, i32, i32, ptr, ptr, ptr }

@driver = internal constant %struct._turn_dbdriver_t { ptr @sqlite_get_auth_secrets, ptr @sqlite_get_user_key, ptr @sqlite_set_user_key, ptr @sqlite_del_user, ptr @sqlite_list_users, ptr @sqlite_list_secrets, ptr @sqlite_del_secret, ptr @sqlite_set_secret, ptr @sqlite_add_origin, ptr @sqlite_del_origin, ptr @sqlite_list_origins, ptr @sqlite_set_realm_option_one, ptr @sqlite_list_realm_options, ptr @sqlite_auth_ping, ptr @sqlite_get_ip_list, ptr @sqlite_set_permission_ip, ptr @sqlite_reread_realms, ptr @sqlite_set_oauth_key, ptr @sqlite_get_oauth_key, ptr @sqlite_del_oauth_key, ptr @sqlite_list_oauth_keys, ptr @sqlite_get_admin_user, ptr @sqlite_set_admin_user, ptr @sqlite_del_admin_user, ptr @sqlite_list_admin_users, ptr @sqlite_disconnect }, align 8, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"select value from turn_secret where realm='%s'\00", align 1, !dbg !56
@.str.1 = private unnamed_addr constant [44 x i8] c"Error retrieving SQLite DB information: %s\0A\00", align 1, !dbg !62
@connection_key = external global i32, align 4
@.str.2 = private unnamed_addr constant [282 x i8] c"Cannot open SQLite DB connection: <%s>, runtime error:\0A  %s\0A  (If your intention is to use an SQLite database for the TURN server, then\0A  check and fix, if necessary, the effective permissions of the TURN server\0A  process and of the DB directory and then re-start the TURN server)\0A\00", align 1, !dbg !67
@turn_params = external global %struct._turn_params_, align 8
@donot_print_connection_success = internal global i32 0, align 4, !dbg !142
@.str.3 = private unnamed_addr constant [34 x i8] c"SQLite DB connection success: %s\0A\00", align 1, !dbg !72
@.str.4 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1, !dbg !77
@.str.5 = private unnamed_addr constant [49 x i8] c"Cannot figure out the user's HOME directory (1)\0A\00", align 1, !dbg !82
@.str.6 = private unnamed_addr constant [45 x i8] c"Cannot figure out the user's HOME directory\0A\00", align 1, !dbg !87
@.str.7 = private unnamed_addr constant [73 x i8] c"setting sqlite thread safe mode to serialized failed!!! return code: %d\0A\00", align 1, !dbg !92
@.str.8 = private unnamed_addr constant [56 x i8] c"Your SQLite database is not compiled to be threadsafe.\0A\00", align 1, !dbg !97
@.str.9 = private unnamed_addr constant [123 x i8] c"CREATE TABLE turnusers_lt ( realm varchar(127) default '', name varchar(512), hmackey char(128), PRIMARY KEY (realm,name))\00", align 1, !dbg !102
@.str.10 = private unnamed_addr constant [104 x i8] c"CREATE TABLE turn_secret (realm varchar(127) default '', value varchar(127), primary key (realm,value))\00", align 1, !dbg !107
@.str.11 = private unnamed_addr constant [114 x i8] c"CREATE TABLE allowed_peer_ip (realm varchar(127) default '', ip_range varchar(256), primary key (realm,ip_range))\00", align 1, !dbg !112
@.str.12 = private unnamed_addr constant [113 x i8] c"CREATE TABLE denied_peer_ip (realm varchar(127) default '', ip_range varchar(256), primary key (realm,ip_range))\00", align 1, !dbg !117
@.str.13 = private unnamed_addr constant [96 x i8] c"CREATE TABLE turn_origin_to_realm (origin varchar(127),realm varchar(127),primary key (origin))\00", align 1, !dbg !122
@.str.14 = private unnamed_addr constant [125 x i8] c"CREATE TABLE turn_realm_option (realm varchar(127) default '',\09opt varchar(32),\09value varchar(128),\09primary key (realm,opt))\00", align 1, !dbg !127
@.str.15 = private unnamed_addr constant [198 x i8] c"CREATE TABLE oauth_key (kid varchar(128),ikm_key varchar(256),timestamp bigint default 0,lifetime integer default 0,as_rs_alg varchar(64) default '',realm varchar(127) default '',primary key (kid))\00", align 1, !dbg !132
@.str.16 = private unnamed_addr constant [106 x i8] c"CREATE TABLE admin_user (name varchar(32), realm varchar(127), password varchar(127), primary key (name))\00", align 1, !dbg !137
@__const.init_sqlite_database.statements = private unnamed_addr constant [9 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr null], align 16
@rc_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !144
@write_thread = internal global i64 0, align 8, !dbg !176
@read_threads = internal global i32 0, align 4, !dbg !179
@write_level = internal global i32 0, align 4, !dbg !181
@rc_cond = internal global %union.pthread_cond_t zeroinitializer, align 8, !dbg !183
@.str.17 = private unnamed_addr constant [64 x i8] c"select hmackey from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !217
@.str.18 = private unnamed_addr constant [24 x i8] c"Wrong key: %s, user %s\0A\00", align 1, !dbg !222
@.str.19 = private unnamed_addr constant [80 x i8] c"insert or replace into turnusers_lt (realm,name,hmackey) values('%s','%s','%s')\00", align 1, !dbg !227
@.str.20 = private unnamed_addr constant [56 x i8] c"delete from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !232
@.str.21 = private unnamed_addr constant [67 x i8] c"select name,realm from turnusers_lt where realm='%s' order by name\00", align 1, !dbg !234
@.str.22 = private unnamed_addr constant [56 x i8] c"select name,realm from turnusers_lt order by realm,name\00", align 1, !dbg !239
@.str.23 = private unnamed_addr constant [8 x i8] c"%s[%s]\0A\00", align 1, !dbg !241
@.str.24 = private unnamed_addr constant [68 x i8] c"select value,realm from turn_secret where realm='%s' order by value\00", align 1, !dbg !246
@.str.25 = private unnamed_addr constant [57 x i8] c"select value,realm from turn_secret order by realm,value\00", align 1, !dbg !251
@.str.26 = private unnamed_addr constant [41 x i8] c"delete from turn_secret where realm='%s'\00", align 1, !dbg !256
@.str.27 = private unnamed_addr constant [56 x i8] c"delete from turn_secret where value='%s' and realm='%s'\00", align 1, !dbg !261
@.str.28 = private unnamed_addr constant [67 x i8] c"insert or replace into turn_secret (realm,value) values('%s','%s')\00", align 1, !dbg !263
@.str.29 = private unnamed_addr constant [77 x i8] c"insert or replace into turn_origin_to_realm (origin,realm) values('%s','%s')\00", align 1, !dbg !265
@.str.30 = private unnamed_addr constant [51 x i8] c"delete from turn_origin_to_realm where origin='%s'\00", align 1, !dbg !270
@.str.31 = private unnamed_addr constant [79 x i8] c"select origin,realm from turn_origin_to_realm where realm='%s' order by origin\00", align 1, !dbg !275
@.str.32 = private unnamed_addr constant [68 x i8] c"select origin,realm from turn_origin_to_realm order by realm,origin\00", align 1, !dbg !280
@.str.33 = private unnamed_addr constant [12 x i8] c"%s ==>> %s\0A\00", align 1, !dbg !282
@.str.34 = private unnamed_addr constant [83 x i8] c"insert or replace into turn_realm_option (realm,opt,value) values('%s','%s','%lu')\00", align 1, !dbg !287
@.str.35 = private unnamed_addr constant [82 x i8] c"select realm,opt,value from turn_realm_option where realm='%s' order by realm,opt\00", align 1, !dbg !292
@.str.36 = private unnamed_addr constant [65 x i8] c"select realm,opt,value from turn_realm_option order by realm,opt\00", align 1, !dbg !297
@.str.37 = private unnamed_addr constant [11 x i8] c"%s[%s]=%s\0A\00", align 1, !dbg !302
@.str.38 = private unnamed_addr constant [38 x i8] c"select ip_range,realm from %s_peer_ip\00", align 1, !dbg !307
@.str.39 = private unnamed_addr constant [63 x i8] c"delete from %s_peer_ip where realm = '%s'  and ip_range = '%s'\00", align 1, !dbg !312
@.str.40 = private unnamed_addr constant [69 x i8] c"insert or replace into %s_peer_ip (realm,ip_range) values('%s','%s')\00", align 1, !dbg !317
@.str.41 = private unnamed_addr constant [42 x i8] c"Error updating SQLite DB information: %s\0A\00", align 1, !dbg !322
@.str.42 = private unnamed_addr constant [46 x i8] c"select origin,realm from turn_origin_to_realm\00", align 1, !dbg !327
@.str.43 = private unnamed_addr constant [46 x i8] c"select realm,opt,value from turn_realm_option\00", align 1, !dbg !332
@.str.44 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !334
@.str.45 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !336
@.str.46 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !338
@.str.47 = private unnamed_addr constant [26 x i8] c"Unknown realm option: %s\0A\00", align 1, !dbg !340
@.str.48 = private unnamed_addr constant [119 x i8] c"insert or replace into oauth_key (kid,ikm_key,timestamp,lifetime,as_rs_alg,realm) values('%s','%s',%llu,%lu,'%s','%s')\00", align 1, !dbg !345
@.str.49 = private unnamed_addr constant [80 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm from oauth_key where kid='%s'\00", align 1, !dbg !350
@.str.50 = private unnamed_addr constant [39 x i8] c"delete from oauth_key where kid = '%s'\00", align 1, !dbg !352
@.str.51 = private unnamed_addr constant [82 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm,kid from oauth_key order by kid\00", align 1, !dbg !357
@.str.52 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1, !dbg !359
@.str.53 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !361
@.str.54 = private unnamed_addr constant [66 x i8] c"  kid=%s, ikm_key=%s, timestamp=%llu, lifetime=%lu, as_rs_alg=%s\0A\00", align 1, !dbg !366
@.str.55 = private unnamed_addr constant [54 x i8] c"select realm,password from admin_user where name='%s'\00", align 1, !dbg !371
@.str.56 = private unnamed_addr constant [79 x i8] c"insert or replace into admin_user (realm,name,password) values('%s','%s','%s')\00", align 1, !dbg !376
@.str.57 = private unnamed_addr constant [39 x i8] c"delete from admin_user where name='%s'\00", align 1, !dbg !378
@.str.58 = private unnamed_addr constant [54 x i8] c"select name,realm from admin_user order by realm,name\00", align 1, !dbg !380
@.str.59 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !382
@.str.60 = private unnamed_addr constant [31 x i8] c"SQLite connection was closed.\0A\00", align 1, !dbg !384

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_sqlite_dbdriver() #0 !dbg !596 {
  ret ptr @driver, !dbg !601
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !602 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !603, metadata !DIExpression()), !dbg !604
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !605, metadata !DIExpression()), !dbg !606
  call void @llvm.dbg.declare(metadata ptr %5, metadata !607, metadata !DIExpression()), !dbg !608
  store i32 -1, ptr %5, align 4, !dbg !608
  call void @llvm.dbg.declare(metadata ptr %6, metadata !609, metadata !DIExpression()), !dbg !610
  %15 = call ptr @get_sqlite_connection(), !dbg !611
  store ptr %15, ptr %6, align 8, !dbg !610
  %16 = load ptr, ptr %6, align 8, !dbg !612
  %17 = icmp ne ptr %16, null, !dbg !612
  br i1 %17, label %18, label %64, !dbg !614

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !615, metadata !DIExpression()), !dbg !620
  call void @llvm.dbg.declare(metadata ptr %8, metadata !621, metadata !DIExpression()), !dbg !625
  store ptr null, ptr %8, align 8, !dbg !625
  call void @llvm.dbg.declare(metadata ptr %9, metadata !626, metadata !DIExpression()), !dbg !627
  store i32 0, ptr %9, align 4, !dbg !627
  %19 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !628
  %20 = load ptr, ptr %4, align 8, !dbg !629
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %19, i64 noundef 1024, ptr noundef @.str, ptr noundef %20) #9, !dbg !630
  call void @sqlite_lock(i32 noundef 0), !dbg !631
  %22 = load ptr, ptr %6, align 8, !dbg !632
  %23 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !634
  %24 = call i32 @sqlite3_prepare(ptr noundef %22, ptr noundef %23, i32 noundef -1, ptr noundef %8, ptr noundef null), !dbg !635
  store i32 %24, ptr %9, align 4, !dbg !636
  %25 = icmp eq i32 %24, 0, !dbg !637
  br i1 %25, label %26, label %57, !dbg !638

26:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %10, metadata !639, metadata !DIExpression()), !dbg !641
  %27 = load ptr, ptr %8, align 8, !dbg !642
  %28 = call i32 @sqlite3_column_count(ptr noundef %27), !dbg !643
  store i32 %28, ptr %10, align 4, !dbg !641
  store i32 0, ptr %5, align 4, !dbg !644
  br label %29, !dbg !645

29:                                               ; preds = %55, %26
  %30 = load i32, ptr %10, align 4, !dbg !646
  %31 = icmp sgt i32 %30, 0, !dbg !647
  br i1 %31, label %32, label %56, !dbg !645

32:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %11, metadata !648, metadata !DIExpression()), !dbg !650
  %33 = load ptr, ptr %8, align 8, !dbg !651
  %34 = call i32 @sqlite3_step(ptr noundef %33), !dbg !652
  store i32 %34, ptr %11, align 4, !dbg !650
  %35 = load i32, ptr %11, align 4, !dbg !653
  %36 = icmp eq i32 %35, 100, !dbg !655
  br i1 %36, label %37, label %47, !dbg !656

37:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %12, metadata !657, metadata !DIExpression()), !dbg !659
  %38 = load ptr, ptr %8, align 8, !dbg !660
  %39 = call i32 @sqlite3_column_type(ptr noundef %38, i32 noundef 0), !dbg !661
  store i32 %39, ptr %12, align 4, !dbg !659
  %40 = load i32, ptr %12, align 4, !dbg !662
  %41 = icmp ne i32 %40, 5, !dbg !664
  br i1 %41, label %42, label %46, !dbg !665

42:                                               ; preds = %37
  %43 = load ptr, ptr %3, align 8, !dbg !666
  %44 = load ptr, ptr %8, align 8, !dbg !667
  %45 = call ptr @sqlite3_column_text(ptr noundef %44, i32 noundef 0), !dbg !668
  call void @add_to_secrets_list(ptr noundef %43, ptr noundef %45), !dbg !669
  br label %46, !dbg !669

46:                                               ; preds = %42, %37
  br label %55, !dbg !670

47:                                               ; preds = %32
  %48 = load i32, ptr %11, align 4, !dbg !671
  %49 = icmp eq i32 %48, 101, !dbg !673
  br i1 %49, label %50, label %51, !dbg !674

50:                                               ; preds = %47
  br label %56, !dbg !675

51:                                               ; preds = %47
  call void @llvm.dbg.declare(metadata ptr %13, metadata !677, metadata !DIExpression()), !dbg !679
  %52 = load ptr, ptr %6, align 8, !dbg !680
  %53 = call ptr @sqlite3_errmsg(ptr noundef %52), !dbg !681
  store ptr %53, ptr %13, align 8, !dbg !679
  %54 = load ptr, ptr %13, align 8, !dbg !682
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %54), !dbg !683
  store i32 -1, ptr %5, align 4, !dbg !684
  br label %56, !dbg !685

55:                                               ; preds = %46
  br label %29, !dbg !645, !llvm.loop !686

56:                                               ; preds = %51, %50, %29
  br label %61, !dbg !689

57:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %14, metadata !690, metadata !DIExpression()), !dbg !692
  %58 = load ptr, ptr %6, align 8, !dbg !693
  %59 = call ptr @sqlite3_errmsg(ptr noundef %58), !dbg !694
  store ptr %59, ptr %14, align 8, !dbg !692
  %60 = load ptr, ptr %14, align 8, !dbg !695
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %60), !dbg !696
  br label %61

61:                                               ; preds = %57, %56
  %62 = load ptr, ptr %8, align 8, !dbg !697
  %63 = call i32 @sqlite3_finalize(ptr noundef %62), !dbg !698
  call void @sqlite_unlock(i32 noundef 0), !dbg !699
  br label %64, !dbg !700

64:                                               ; preds = %61, %2
  %65 = load i32, ptr %5, align 4, !dbg !701
  ret i32 %65, !dbg !702
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_get_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !703 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !704, metadata !DIExpression()), !dbg !705
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !706, metadata !DIExpression()), !dbg !707
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !708, metadata !DIExpression()), !dbg !709
  call void @llvm.dbg.declare(metadata ptr %7, metadata !710, metadata !DIExpression()), !dbg !711
  store i32 -1, ptr %7, align 4, !dbg !711
  call void @llvm.dbg.declare(metadata ptr %8, metadata !712, metadata !DIExpression()), !dbg !713
  %16 = call ptr @get_sqlite_connection(), !dbg !714
  store ptr %16, ptr %8, align 8, !dbg !713
  %17 = load ptr, ptr %8, align 8, !dbg !715
  %18 = icmp ne ptr %17, null, !dbg !715
  br i1 %18, label %19, label %57, !dbg !717

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !718, metadata !DIExpression()), !dbg !720
  call void @llvm.dbg.declare(metadata ptr %10, metadata !721, metadata !DIExpression()), !dbg !722
  store ptr null, ptr %10, align 8, !dbg !722
  call void @llvm.dbg.declare(metadata ptr %11, metadata !723, metadata !DIExpression()), !dbg !724
  store i32 0, ptr %11, align 4, !dbg !724
  %20 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !725
  %21 = load ptr, ptr %4, align 8, !dbg !726
  %22 = load ptr, ptr %5, align 8, !dbg !727
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 1025, ptr noundef @.str.17, ptr noundef %21, ptr noundef %22) #9, !dbg !728
  call void @sqlite_lock(i32 noundef 0), !dbg !729
  %24 = load ptr, ptr %8, align 8, !dbg !730
  %25 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !732
  %26 = call i32 @sqlite3_prepare(ptr noundef %24, ptr noundef %25, i32 noundef -1, ptr noundef %10, ptr noundef null), !dbg !733
  store i32 %26, ptr %11, align 4, !dbg !734
  %27 = icmp eq i32 %26, 0, !dbg !735
  br i1 %27, label %28, label %50, !dbg !736

28:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %12, metadata !737, metadata !DIExpression()), !dbg !739
  %29 = load ptr, ptr %10, align 8, !dbg !740
  %30 = call i32 @sqlite3_step(ptr noundef %29), !dbg !741
  store i32 %30, ptr %12, align 4, !dbg !739
  %31 = load i32, ptr %12, align 4, !dbg !742
  %32 = icmp eq i32 %31, 100, !dbg !744
  br i1 %32, label %33, label %49, !dbg !745

33:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %13, metadata !746, metadata !DIExpression()), !dbg !748
  %34 = load ptr, ptr %10, align 8, !dbg !749
  %35 = call ptr @sqlite3_column_text(ptr noundef %34, i32 noundef 0), !dbg !750
  %36 = call noalias ptr @strdup(ptr noundef %35) #9, !dbg !751
  store ptr %36, ptr %13, align 8, !dbg !748
  call void @llvm.dbg.declare(metadata ptr %14, metadata !752, metadata !DIExpression()), !dbg !753
  %37 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !754
  store i64 %37, ptr %14, align 8, !dbg !753
  %38 = load ptr, ptr %13, align 8, !dbg !755
  %39 = load ptr, ptr %6, align 8, !dbg !757
  %40 = load i64, ptr %14, align 8, !dbg !758
  %41 = call i32 @convert_string_key_to_binary(ptr noundef %38, ptr noundef %39, i64 noundef %40), !dbg !759
  %42 = icmp slt i32 %41, 0, !dbg !760
  br i1 %42, label %43, label %46, !dbg !761

43:                                               ; preds = %33
  %44 = load ptr, ptr %13, align 8, !dbg !762
  %45 = load ptr, ptr %4, align 8, !dbg !764
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18, ptr noundef %44, ptr noundef %45), !dbg !765
  br label %47, !dbg !766

46:                                               ; preds = %33
  store i32 0, ptr %7, align 4, !dbg !767
  br label %47

47:                                               ; preds = %46, %43
  %48 = load ptr, ptr %13, align 8, !dbg !769
  call void @free(ptr noundef %48) #9, !dbg !770
  br label %49, !dbg !771

49:                                               ; preds = %47, %28
  br label %54, !dbg !772

50:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %15, metadata !773, metadata !DIExpression()), !dbg !775
  %51 = load ptr, ptr %8, align 8, !dbg !776
  %52 = call ptr @sqlite3_errmsg(ptr noundef %51), !dbg !777
  store ptr %52, ptr %15, align 8, !dbg !775
  %53 = load ptr, ptr %15, align 8, !dbg !778
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %53), !dbg !779
  br label %54

54:                                               ; preds = %50, %49
  %55 = load ptr, ptr %10, align 8, !dbg !780
  %56 = call i32 @sqlite3_finalize(ptr noundef %55), !dbg !781
  call void @sqlite_unlock(i32 noundef 0), !dbg !782
  br label %57, !dbg !783

57:                                               ; preds = %54, %3
  %58 = load i32, ptr %7, align 4, !dbg !784
  ret i32 %58, !dbg !785
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !786 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !787, metadata !DIExpression()), !dbg !788
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !789, metadata !DIExpression()), !dbg !790
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !791, metadata !DIExpression()), !dbg !792
  call void @llvm.dbg.declare(metadata ptr %7, metadata !793, metadata !DIExpression()), !dbg !794
  store i32 -1, ptr %7, align 4, !dbg !794
  call void @llvm.dbg.declare(metadata ptr %8, metadata !795, metadata !DIExpression()), !dbg !796
  call void @llvm.dbg.declare(metadata ptr %9, metadata !797, metadata !DIExpression()), !dbg !798
  store ptr null, ptr %9, align 8, !dbg !798
  call void @llvm.dbg.declare(metadata ptr %10, metadata !799, metadata !DIExpression()), !dbg !800
  store i32 0, ptr %10, align 4, !dbg !800
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !801
  call void @llvm.dbg.declare(metadata ptr %11, metadata !802, metadata !DIExpression()), !dbg !803
  %13 = call ptr @get_sqlite_connection(), !dbg !804
  store ptr %13, ptr %11, align 8, !dbg !803
  %14 = load ptr, ptr %11, align 8, !dbg !805
  %15 = icmp ne ptr %14, null, !dbg !805
  br i1 %15, label %16, label %36, !dbg !807

16:                                               ; preds = %3
  call void @sqlite_lock(i32 noundef 1), !dbg !808
  %17 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !810
  %18 = load ptr, ptr %5, align 8, !dbg !811
  %19 = load ptr, ptr %4, align 8, !dbg !812
  %20 = load ptr, ptr %6, align 8, !dbg !813
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %17, i64 noundef 1025, ptr noundef @.str.19, ptr noundef %18, ptr noundef %19, ptr noundef %20) #9, !dbg !814
  %22 = load ptr, ptr %11, align 8, !dbg !815
  %23 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !817
  %24 = call i32 @sqlite3_prepare(ptr noundef %22, ptr noundef %23, i32 noundef -1, ptr noundef %9, ptr noundef null), !dbg !818
  store i32 %24, ptr %10, align 4, !dbg !819
  %25 = icmp eq i32 %24, 0, !dbg !820
  br i1 %25, label %26, label %29, !dbg !821

26:                                               ; preds = %16
  %27 = load ptr, ptr %9, align 8, !dbg !822
  %28 = call i32 @sqlite3_step(ptr noundef %27), !dbg !824
  store i32 0, ptr %7, align 4, !dbg !825
  br label %33, !dbg !826

29:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %12, metadata !827, metadata !DIExpression()), !dbg !829
  %30 = load ptr, ptr %11, align 8, !dbg !830
  %31 = call ptr @sqlite3_errmsg(ptr noundef %30), !dbg !831
  store ptr %31, ptr %12, align 8, !dbg !829
  %32 = load ptr, ptr %12, align 8, !dbg !832
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %32), !dbg !833
  br label %33

33:                                               ; preds = %29, %26
  %34 = load ptr, ptr %9, align 8, !dbg !834
  %35 = call i32 @sqlite3_finalize(ptr noundef %34), !dbg !835
  call void @sqlite_unlock(i32 noundef 1), !dbg !836
  br label %36, !dbg !837

36:                                               ; preds = %33, %3
  %37 = load i32, ptr %7, align 4, !dbg !838
  ret i32 %37, !dbg !839
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_del_user(ptr noundef %0, ptr noundef %1) #0 !dbg !840 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !841, metadata !DIExpression()), !dbg !842
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !843, metadata !DIExpression()), !dbg !844
  call void @llvm.dbg.declare(metadata ptr %5, metadata !845, metadata !DIExpression()), !dbg !846
  store i32 -1, ptr %5, align 4, !dbg !846
  call void @llvm.dbg.declare(metadata ptr %6, metadata !847, metadata !DIExpression()), !dbg !848
  call void @llvm.dbg.declare(metadata ptr %7, metadata !849, metadata !DIExpression()), !dbg !850
  store ptr null, ptr %7, align 8, !dbg !850
  call void @llvm.dbg.declare(metadata ptr %8, metadata !851, metadata !DIExpression()), !dbg !852
  store i32 0, ptr %8, align 4, !dbg !852
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !853
  call void @llvm.dbg.declare(metadata ptr %9, metadata !854, metadata !DIExpression()), !dbg !855
  %11 = call ptr @get_sqlite_connection(), !dbg !856
  store ptr %11, ptr %9, align 8, !dbg !855
  %12 = load ptr, ptr %9, align 8, !dbg !857
  %13 = icmp ne ptr %12, null, !dbg !857
  br i1 %13, label %14, label %33, !dbg !859

14:                                               ; preds = %2
  %15 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !860
  %16 = load ptr, ptr %3, align 8, !dbg !862
  %17 = load ptr, ptr %4, align 8, !dbg !863
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.20, ptr noundef %16, ptr noundef %17) #9, !dbg !864
  call void @sqlite_lock(i32 noundef 1), !dbg !865
  %19 = load ptr, ptr %9, align 8, !dbg !866
  %20 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !868
  %21 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %7, ptr noundef null), !dbg !869
  store i32 %21, ptr %8, align 4, !dbg !870
  %22 = icmp eq i32 %21, 0, !dbg !871
  br i1 %22, label %23, label %26, !dbg !872

23:                                               ; preds = %14
  %24 = load ptr, ptr %7, align 8, !dbg !873
  %25 = call i32 @sqlite3_step(ptr noundef %24), !dbg !875
  store i32 0, ptr %5, align 4, !dbg !876
  br label %30, !dbg !877

26:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !878, metadata !DIExpression()), !dbg !880
  %27 = load ptr, ptr %9, align 8, !dbg !881
  %28 = call ptr @sqlite3_errmsg(ptr noundef %27), !dbg !882
  store ptr %28, ptr %10, align 8, !dbg !880
  %29 = load ptr, ptr %10, align 8, !dbg !883
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %29), !dbg !884
  br label %30

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %7, align 8, !dbg !885
  %32 = call i32 @sqlite3_finalize(ptr noundef %31), !dbg !886
  call void @sqlite_unlock(i32 noundef 1), !dbg !887
  br label %33, !dbg !888

33:                                               ; preds = %30, %2
  %34 = load i32, ptr %5, align 4, !dbg !889
  ret i32 %34, !dbg !890
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_users(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !891 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca [128 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !892, metadata !DIExpression()), !dbg !893
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !894, metadata !DIExpression()), !dbg !895
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !896, metadata !DIExpression()), !dbg !897
  call void @llvm.dbg.declare(metadata ptr %7, metadata !898, metadata !DIExpression()), !dbg !899
  store i32 -1, ptr %7, align 4, !dbg !899
  call void @llvm.dbg.declare(metadata ptr %8, metadata !900, metadata !DIExpression()), !dbg !901
  call void @llvm.dbg.declare(metadata ptr %9, metadata !902, metadata !DIExpression()), !dbg !903
  store ptr null, ptr %9, align 8, !dbg !903
  call void @llvm.dbg.declare(metadata ptr %10, metadata !904, metadata !DIExpression()), !dbg !905
  store i32 0, ptr %10, align 4, !dbg !905
  call void @llvm.dbg.declare(metadata ptr %11, metadata !906, metadata !DIExpression()), !dbg !908
  call void @llvm.memset.p0.i64(ptr align 16 %11, i8 0, i64 128, i1 false), !dbg !908
  %18 = load ptr, ptr %4, align 8, !dbg !909
  %19 = icmp ne ptr %18, null, !dbg !909
  br i1 %19, label %22, label %20, !dbg !911

20:                                               ; preds = %3
  %21 = getelementptr inbounds [128 x i8], ptr %11, i64 0, i64 0, !dbg !912
  store ptr %21, ptr %4, align 8, !dbg !913
  br label %22, !dbg !914

22:                                               ; preds = %20, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !915
  call void @llvm.dbg.declare(metadata ptr %12, metadata !916, metadata !DIExpression()), !dbg !917
  %23 = call ptr @get_sqlite_connection(), !dbg !918
  store ptr %23, ptr %12, align 8, !dbg !917
  %24 = load ptr, ptr %12, align 8, !dbg !919
  %25 = icmp ne ptr %24, null, !dbg !919
  br i1 %25, label %26, label %99, !dbg !921

26:                                               ; preds = %22
  %27 = load ptr, ptr %4, align 8, !dbg !922
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !922
  %29 = load i8, ptr %28, align 1, !dbg !922
  %30 = icmp ne i8 %29, 0, !dbg !922
  br i1 %30, label %31, label %35, !dbg !925

31:                                               ; preds = %26
  %32 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !926
  %33 = load ptr, ptr %4, align 8, !dbg !928
  %34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef 1025, ptr noundef @.str.21, ptr noundef %33) #9, !dbg !929
  br label %38, !dbg !930

35:                                               ; preds = %26
  %36 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !931
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %36, i64 noundef 1025, ptr noundef @.str.22) #9, !dbg !933
  br label %38

38:                                               ; preds = %35, %31
  call void @sqlite_lock(i32 noundef 0), !dbg !934
  %39 = load ptr, ptr %12, align 8, !dbg !935
  %40 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !937
  %41 = call i32 @sqlite3_prepare(ptr noundef %39, ptr noundef %40, i32 noundef -1, ptr noundef %9, ptr noundef null), !dbg !938
  store i32 %41, ptr %10, align 4, !dbg !939
  %42 = icmp eq i32 %41, 0, !dbg !940
  br i1 %42, label %43, label %92, !dbg !941

43:                                               ; preds = %38
  store i32 0, ptr %7, align 4, !dbg !942
  br label %44, !dbg !944

44:                                               ; preds = %43, %90
  call void @llvm.dbg.declare(metadata ptr %13, metadata !945, metadata !DIExpression()), !dbg !947
  %45 = load ptr, ptr %9, align 8, !dbg !948
  %46 = call i32 @sqlite3_step(ptr noundef %45), !dbg !949
  store i32 %46, ptr %13, align 4, !dbg !947
  %47 = load i32, ptr %13, align 4, !dbg !950
  %48 = icmp eq i32 %47, 100, !dbg !952
  br i1 %48, label %49, label %82, !dbg !953

49:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %14, metadata !954, metadata !DIExpression()), !dbg !956
  %50 = load ptr, ptr %9, align 8, !dbg !957
  %51 = call ptr @sqlite3_column_text(ptr noundef %50, i32 noundef 0), !dbg !958
  store ptr %51, ptr %14, align 8, !dbg !956
  call void @llvm.dbg.declare(metadata ptr %15, metadata !959, metadata !DIExpression()), !dbg !960
  %52 = load ptr, ptr %9, align 8, !dbg !961
  %53 = call ptr @sqlite3_column_text(ptr noundef %52, i32 noundef 1), !dbg !962
  store ptr %53, ptr %15, align 8, !dbg !960
  %54 = load ptr, ptr %5, align 8, !dbg !963
  %55 = icmp ne ptr %54, null, !dbg !963
  br i1 %55, label %56, label %77, !dbg !965

56:                                               ; preds = %49
  %57 = load ptr, ptr %5, align 8, !dbg !966
  %58 = load ptr, ptr %14, align 8, !dbg !968
  call void @add_to_secrets_list(ptr noundef %57, ptr noundef %58), !dbg !969
  %59 = load ptr, ptr %6, align 8, !dbg !970
  %60 = icmp ne ptr %59, null, !dbg !970
  br i1 %60, label %61, label %76, !dbg !972

61:                                               ; preds = %56
  %62 = load ptr, ptr %15, align 8, !dbg !973
  %63 = icmp ne ptr %62, null, !dbg !973
  br i1 %63, label %64, label %72, !dbg !976

64:                                               ; preds = %61
  %65 = load ptr, ptr %15, align 8, !dbg !977
  %66 = load i8, ptr %65, align 1, !dbg !978
  %67 = sext i8 %66 to i32, !dbg !978
  %68 = icmp ne i32 %67, 0, !dbg !978
  br i1 %68, label %69, label %72, !dbg !979

69:                                               ; preds = %64
  %70 = load ptr, ptr %6, align 8, !dbg !980
  %71 = load ptr, ptr %15, align 8, !dbg !982
  call void @add_to_secrets_list(ptr noundef %70, ptr noundef %71), !dbg !983
  br label %75, !dbg !984

72:                                               ; preds = %64, %61
  %73 = load ptr, ptr %6, align 8, !dbg !985
  %74 = load ptr, ptr %4, align 8, !dbg !987
  call void @add_to_secrets_list(ptr noundef %73, ptr noundef %74), !dbg !988
  br label %75

75:                                               ; preds = %72, %69
  br label %76, !dbg !989

76:                                               ; preds = %75, %56
  br label %81, !dbg !990

77:                                               ; preds = %49
  %78 = load ptr, ptr %14, align 8, !dbg !991
  %79 = load ptr, ptr %15, align 8, !dbg !993
  %80 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %78, ptr noundef %79), !dbg !994
  br label %81

81:                                               ; preds = %77, %76
  br label %90, !dbg !995

82:                                               ; preds = %44
  %83 = load i32, ptr %13, align 4, !dbg !996
  %84 = icmp eq i32 %83, 101, !dbg !998
  br i1 %84, label %85, label %86, !dbg !999

85:                                               ; preds = %82
  br label %91, !dbg !1000

86:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1002, metadata !DIExpression()), !dbg !1004
  %87 = load ptr, ptr %12, align 8, !dbg !1005
  %88 = call ptr @sqlite3_errmsg(ptr noundef %87), !dbg !1006
  store ptr %88, ptr %16, align 8, !dbg !1004
  %89 = load ptr, ptr %16, align 8, !dbg !1007
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %89), !dbg !1008
  store i32 -1, ptr %7, align 4, !dbg !1009
  br label %91, !dbg !1010

90:                                               ; preds = %81
  br label %44, !dbg !944, !llvm.loop !1011

91:                                               ; preds = %86, %85
  br label %96, !dbg !1013

92:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1014, metadata !DIExpression()), !dbg !1016
  %93 = load ptr, ptr %12, align 8, !dbg !1017
  %94 = call ptr @sqlite3_errmsg(ptr noundef %93), !dbg !1018
  store ptr %94, ptr %17, align 8, !dbg !1016
  %95 = load ptr, ptr %17, align 8, !dbg !1019
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %95), !dbg !1020
  br label %96

96:                                               ; preds = %92, %91
  %97 = load ptr, ptr %9, align 8, !dbg !1021
  %98 = call i32 @sqlite3_finalize(ptr noundef %97), !dbg !1022
  call void @sqlite_unlock(i32 noundef 0), !dbg !1023
  br label %99, !dbg !1024

99:                                               ; preds = %96, %22
  %100 = load i32, ptr %7, align 4, !dbg !1025
  ret i32 %100, !dbg !1026
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_secrets(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1027 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1028, metadata !DIExpression()), !dbg !1029
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1030, metadata !DIExpression()), !dbg !1031
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1032, metadata !DIExpression()), !dbg !1033
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1034, metadata !DIExpression()), !dbg !1035
  store i32 -1, ptr %7, align 4, !dbg !1035
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1036, metadata !DIExpression()), !dbg !1037
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1038, metadata !DIExpression()), !dbg !1039
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !1039
  %17 = load ptr, ptr %4, align 8, !dbg !1040
  %18 = icmp ne ptr %17, null, !dbg !1040
  br i1 %18, label %21, label %19, !dbg !1042

19:                                               ; preds = %3
  %20 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !1043
  store ptr %20, ptr %4, align 8, !dbg !1044
  br label %21, !dbg !1045

21:                                               ; preds = %19, %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1046, metadata !DIExpression()), !dbg !1047
  store ptr null, ptr %10, align 8, !dbg !1047
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1048, metadata !DIExpression()), !dbg !1049
  store i32 0, ptr %11, align 4, !dbg !1049
  %22 = load ptr, ptr %4, align 8, !dbg !1050
  %23 = getelementptr inbounds i8, ptr %22, i64 0, !dbg !1050
  %24 = load i8, ptr %23, align 1, !dbg !1050
  %25 = icmp ne i8 %24, 0, !dbg !1050
  br i1 %25, label %26, label %30, !dbg !1052

26:                                               ; preds = %21
  %27 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1053
  %28 = load ptr, ptr %4, align 8, !dbg !1055
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 1025, ptr noundef @.str.24, ptr noundef %28) #9, !dbg !1056
  br label %33, !dbg !1057

30:                                               ; preds = %21
  %31 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1058
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %31, i64 noundef 1025, ptr noundef @.str.25) #9, !dbg !1060
  br label %33

33:                                               ; preds = %30, %26
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1061
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1062, metadata !DIExpression()), !dbg !1063
  %34 = call ptr @get_sqlite_connection(), !dbg !1064
  store ptr %34, ptr %12, align 8, !dbg !1063
  %35 = load ptr, ptr %12, align 8, !dbg !1065
  %36 = icmp ne ptr %35, null, !dbg !1065
  br i1 %36, label %37, label %98, !dbg !1067

37:                                               ; preds = %33
  call void @sqlite_lock(i32 noundef 0), !dbg !1068
  %38 = load ptr, ptr %12, align 8, !dbg !1070
  %39 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1072
  %40 = call i32 @sqlite3_prepare(ptr noundef %38, ptr noundef %39, i32 noundef -1, ptr noundef %10, ptr noundef null), !dbg !1073
  store i32 %40, ptr %11, align 4, !dbg !1074
  %41 = icmp eq i32 %40, 0, !dbg !1075
  br i1 %41, label %42, label %95, !dbg !1076

42:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1077, metadata !DIExpression()), !dbg !1079
  store i32 0, ptr %13, align 4, !dbg !1079
  br label %43, !dbg !1080

43:                                               ; preds = %42, %93
  %44 = load ptr, ptr %10, align 8, !dbg !1081
  %45 = call i32 @sqlite3_step(ptr noundef %44), !dbg !1083
  store i32 %45, ptr %13, align 4, !dbg !1084
  %46 = load i32, ptr %13, align 4, !dbg !1085
  %47 = icmp eq i32 %46, 100, !dbg !1087
  br i1 %47, label %48, label %85, !dbg !1088

48:                                               ; preds = %43
  store i32 0, ptr %7, align 4, !dbg !1089
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1091, metadata !DIExpression()), !dbg !1092
  %49 = load ptr, ptr %10, align 8, !dbg !1093
  %50 = call ptr @sqlite3_column_text(ptr noundef %49, i32 noundef 0), !dbg !1094
  store ptr %50, ptr %14, align 8, !dbg !1092
  %51 = load ptr, ptr %14, align 8, !dbg !1095
  %52 = icmp ne ptr %51, null, !dbg !1095
  br i1 %52, label %53, label %84, !dbg !1097

53:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1098, metadata !DIExpression()), !dbg !1100
  %54 = load ptr, ptr %10, align 8, !dbg !1101
  %55 = call ptr @sqlite3_column_text(ptr noundef %54, i32 noundef 1), !dbg !1102
  store ptr %55, ptr %15, align 8, !dbg !1100
  %56 = load ptr, ptr %5, align 8, !dbg !1103
  %57 = icmp ne ptr %56, null, !dbg !1103
  br i1 %57, label %58, label %79, !dbg !1105

58:                                               ; preds = %53
  %59 = load ptr, ptr %5, align 8, !dbg !1106
  %60 = load ptr, ptr %14, align 8, !dbg !1108
  call void @add_to_secrets_list(ptr noundef %59, ptr noundef %60), !dbg !1109
  %61 = load ptr, ptr %6, align 8, !dbg !1110
  %62 = icmp ne ptr %61, null, !dbg !1110
  br i1 %62, label %63, label %78, !dbg !1112

63:                                               ; preds = %58
  %64 = load ptr, ptr %15, align 8, !dbg !1113
  %65 = icmp ne ptr %64, null, !dbg !1113
  br i1 %65, label %66, label %74, !dbg !1116

66:                                               ; preds = %63
  %67 = load ptr, ptr %15, align 8, !dbg !1117
  %68 = load i8, ptr %67, align 1, !dbg !1118
  %69 = sext i8 %68 to i32, !dbg !1118
  %70 = icmp ne i32 %69, 0, !dbg !1118
  br i1 %70, label %71, label %74, !dbg !1119

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 8, !dbg !1120
  %73 = load ptr, ptr %15, align 8, !dbg !1122
  call void @add_to_secrets_list(ptr noundef %72, ptr noundef %73), !dbg !1123
  br label %77, !dbg !1124

74:                                               ; preds = %66, %63
  %75 = load ptr, ptr %6, align 8, !dbg !1125
  %76 = load ptr, ptr %4, align 8, !dbg !1127
  call void @add_to_secrets_list(ptr noundef %75, ptr noundef %76), !dbg !1128
  br label %77

77:                                               ; preds = %74, %71
  br label %78, !dbg !1129

78:                                               ; preds = %77, %58
  br label %83, !dbg !1130

79:                                               ; preds = %53
  %80 = load ptr, ptr %14, align 8, !dbg !1131
  %81 = load ptr, ptr %15, align 8, !dbg !1133
  %82 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %80, ptr noundef %81), !dbg !1134
  br label %83

83:                                               ; preds = %79, %78
  br label %84, !dbg !1135

84:                                               ; preds = %83, %48
  br label %93, !dbg !1136

85:                                               ; preds = %43
  %86 = load i32, ptr %13, align 4, !dbg !1137
  %87 = icmp eq i32 %86, 101, !dbg !1139
  br i1 %87, label %88, label %89, !dbg !1140

88:                                               ; preds = %85
  br label %94, !dbg !1141

89:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1143, metadata !DIExpression()), !dbg !1145
  %90 = load ptr, ptr %12, align 8, !dbg !1146
  %91 = call ptr @sqlite3_errmsg(ptr noundef %90), !dbg !1147
  store ptr %91, ptr %16, align 8, !dbg !1145
  %92 = load ptr, ptr %16, align 8, !dbg !1148
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %92), !dbg !1149
  store i32 -1, ptr %7, align 4, !dbg !1150
  br label %94, !dbg !1151

93:                                               ; preds = %84
  br label %43, !dbg !1080, !llvm.loop !1152

94:                                               ; preds = %89, %88
  br label %95, !dbg !1154

95:                                               ; preds = %94, %37
  %96 = load ptr, ptr %10, align 8, !dbg !1155
  %97 = call i32 @sqlite3_finalize(ptr noundef %96), !dbg !1156
  call void @sqlite_unlock(i32 noundef 0), !dbg !1157
  br label %98, !dbg !1158

98:                                               ; preds = %95, %33
  %99 = load i32, ptr %7, align 4, !dbg !1159
  ret i32 %99, !dbg !1160
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1161 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1162, metadata !DIExpression()), !dbg !1163
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1166, metadata !DIExpression()), !dbg !1167
  store i32 -1, ptr %5, align 4, !dbg !1167
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1171, metadata !DIExpression()), !dbg !1172
  store ptr null, ptr %7, align 8, !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1173, metadata !DIExpression()), !dbg !1174
  store i32 0, ptr %8, align 4, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1175, metadata !DIExpression()), !dbg !1176
  %11 = call ptr @get_sqlite_connection(), !dbg !1177
  store ptr %11, ptr %9, align 8, !dbg !1176
  %12 = load ptr, ptr %9, align 8, !dbg !1178
  %13 = icmp ne ptr %12, null, !dbg !1178
  br i1 %13, label %14, label %47, !dbg !1180

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !1181
  %16 = icmp ne ptr %15, null, !dbg !1181
  br i1 %16, label %17, label %23, !dbg !1184

17:                                               ; preds = %14
  %18 = load ptr, ptr %3, align 8, !dbg !1185
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1185
  %20 = load i8, ptr %19, align 1, !dbg !1185
  %21 = zext i8 %20 to i32, !dbg !1185
  %22 = icmp eq i32 %21, 0, !dbg !1186
  br i1 %22, label %23, label %27, !dbg !1187

23:                                               ; preds = %17, %14
  %24 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1188
  %25 = load ptr, ptr %4, align 8, !dbg !1189
  %26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 1025, ptr noundef @.str.26, ptr noundef %25) #9, !dbg !1190
  br label %32, !dbg !1190

27:                                               ; preds = %17
  %28 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1191
  %29 = load ptr, ptr %3, align 8, !dbg !1192
  %30 = load ptr, ptr %4, align 8, !dbg !1193
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef 1025, ptr noundef @.str.27, ptr noundef %29, ptr noundef %30) #9, !dbg !1194
  br label %32

32:                                               ; preds = %27, %23
  call void @sqlite_lock(i32 noundef 1), !dbg !1195
  %33 = load ptr, ptr %9, align 8, !dbg !1196
  %34 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1198
  %35 = call i32 @sqlite3_prepare(ptr noundef %33, ptr noundef %34, i32 noundef -1, ptr noundef %7, ptr noundef null), !dbg !1199
  store i32 %35, ptr %8, align 4, !dbg !1200
  %36 = icmp eq i32 %35, 0, !dbg !1201
  br i1 %36, label %37, label %40, !dbg !1202

37:                                               ; preds = %32
  %38 = load ptr, ptr %7, align 8, !dbg !1203
  %39 = call i32 @sqlite3_step(ptr noundef %38), !dbg !1205
  store i32 0, ptr %5, align 4, !dbg !1206
  br label %44, !dbg !1207

40:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1208, metadata !DIExpression()), !dbg !1210
  %41 = load ptr, ptr %9, align 8, !dbg !1211
  %42 = call ptr @sqlite3_errmsg(ptr noundef %41), !dbg !1212
  store ptr %42, ptr %10, align 8, !dbg !1210
  %43 = load ptr, ptr %10, align 8, !dbg !1213
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %43), !dbg !1214
  br label %44

44:                                               ; preds = %40, %37
  %45 = load ptr, ptr %7, align 8, !dbg !1215
  %46 = call i32 @sqlite3_finalize(ptr noundef %45), !dbg !1216
  call void @sqlite_unlock(i32 noundef 1), !dbg !1217
  br label %47, !dbg !1218

47:                                               ; preds = %44, %2
  %48 = load i32, ptr %5, align 4, !dbg !1219
  ret i32 %48, !dbg !1220
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1221 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1222, metadata !DIExpression()), !dbg !1223
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1224, metadata !DIExpression()), !dbg !1225
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1226, metadata !DIExpression()), !dbg !1227
  store i32 -1, ptr %5, align 4, !dbg !1227
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1231, metadata !DIExpression()), !dbg !1232
  store ptr null, ptr %7, align 8, !dbg !1232
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1233, metadata !DIExpression()), !dbg !1234
  store i32 0, ptr %8, align 4, !dbg !1234
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1235, metadata !DIExpression()), !dbg !1236
  %11 = call ptr @get_sqlite_connection(), !dbg !1237
  store ptr %11, ptr %9, align 8, !dbg !1236
  %12 = load ptr, ptr %9, align 8, !dbg !1238
  %13 = icmp ne ptr %12, null, !dbg !1238
  br i1 %13, label %14, label %33, !dbg !1240

14:                                               ; preds = %2
  %15 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1241
  %16 = load ptr, ptr %4, align 8, !dbg !1243
  %17 = load ptr, ptr %3, align 8, !dbg !1244
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.28, ptr noundef %16, ptr noundef %17) #9, !dbg !1245
  call void @sqlite_lock(i32 noundef 1), !dbg !1246
  %19 = load ptr, ptr %9, align 8, !dbg !1247
  %20 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1249
  %21 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %7, ptr noundef null), !dbg !1250
  store i32 %21, ptr %8, align 4, !dbg !1251
  %22 = icmp eq i32 %21, 0, !dbg !1252
  br i1 %22, label %23, label %26, !dbg !1253

23:                                               ; preds = %14
  %24 = load ptr, ptr %7, align 8, !dbg !1254
  %25 = call i32 @sqlite3_step(ptr noundef %24), !dbg !1256
  store i32 0, ptr %5, align 4, !dbg !1257
  br label %30, !dbg !1258

26:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1259, metadata !DIExpression()), !dbg !1261
  %27 = load ptr, ptr %9, align 8, !dbg !1262
  %28 = call ptr @sqlite3_errmsg(ptr noundef %27), !dbg !1263
  store ptr %28, ptr %10, align 8, !dbg !1261
  %29 = load ptr, ptr %10, align 8, !dbg !1264
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %29), !dbg !1265
  br label %30

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %7, align 8, !dbg !1266
  %32 = call i32 @sqlite3_finalize(ptr noundef %31), !dbg !1267
  call void @sqlite_unlock(i32 noundef 1), !dbg !1268
  br label %33, !dbg !1269

33:                                               ; preds = %30, %2
  %34 = load i32, ptr %5, align 4, !dbg !1270
  ret i32 %34, !dbg !1271
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !1272 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1273, metadata !DIExpression()), !dbg !1274
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1275, metadata !DIExpression()), !dbg !1276
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 -1, ptr %5, align 4, !dbg !1278
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1281, metadata !DIExpression()), !dbg !1282
  store ptr null, ptr %7, align 8, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1283, metadata !DIExpression()), !dbg !1284
  store i32 0, ptr %8, align 4, !dbg !1284
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1285
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1286, metadata !DIExpression()), !dbg !1287
  %11 = call ptr @get_sqlite_connection(), !dbg !1288
  store ptr %11, ptr %9, align 8, !dbg !1287
  %12 = load ptr, ptr %9, align 8, !dbg !1289
  %13 = icmp ne ptr %12, null, !dbg !1289
  br i1 %13, label %14, label %33, !dbg !1291

14:                                               ; preds = %2
  %15 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1292
  %16 = load ptr, ptr %3, align 8, !dbg !1294
  %17 = load ptr, ptr %4, align 8, !dbg !1295
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.29, ptr noundef %16, ptr noundef %17) #9, !dbg !1296
  call void @sqlite_lock(i32 noundef 1), !dbg !1297
  %19 = load ptr, ptr %9, align 8, !dbg !1298
  %20 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1300
  %21 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %7, ptr noundef null), !dbg !1301
  store i32 %21, ptr %8, align 4, !dbg !1302
  %22 = icmp eq i32 %21, 0, !dbg !1303
  br i1 %22, label %23, label %26, !dbg !1304

23:                                               ; preds = %14
  %24 = load ptr, ptr %7, align 8, !dbg !1305
  %25 = call i32 @sqlite3_step(ptr noundef %24), !dbg !1307
  store i32 0, ptr %5, align 4, !dbg !1308
  br label %30, !dbg !1309

26:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1310, metadata !DIExpression()), !dbg !1312
  %27 = load ptr, ptr %9, align 8, !dbg !1313
  %28 = call ptr @sqlite3_errmsg(ptr noundef %27), !dbg !1314
  store ptr %28, ptr %10, align 8, !dbg !1312
  %29 = load ptr, ptr %10, align 8, !dbg !1315
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %29), !dbg !1316
  br label %30

30:                                               ; preds = %26, %23
  %31 = load ptr, ptr %7, align 8, !dbg !1317
  %32 = call i32 @sqlite3_finalize(ptr noundef %31), !dbg !1318
  call void @sqlite_unlock(i32 noundef 1), !dbg !1319
  br label %33, !dbg !1320

33:                                               ; preds = %30, %2
  %34 = load i32, ptr %5, align 4, !dbg !1321
  ret i32 %34, !dbg !1322
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_del_origin(ptr noundef %0) #0 !dbg !1323 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1326, metadata !DIExpression()), !dbg !1327
  store i32 -1, ptr %3, align 4, !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1330, metadata !DIExpression()), !dbg !1331
  store ptr null, ptr %5, align 8, !dbg !1331
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1332, metadata !DIExpression()), !dbg !1333
  store i32 0, ptr %6, align 4, !dbg !1333
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1335, metadata !DIExpression()), !dbg !1336
  %9 = call ptr @get_sqlite_connection(), !dbg !1337
  store ptr %9, ptr %7, align 8, !dbg !1336
  %10 = load ptr, ptr %7, align 8, !dbg !1338
  %11 = icmp ne ptr %10, null, !dbg !1338
  br i1 %11, label %12, label %30, !dbg !1340

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1341
  %14 = load ptr, ptr %2, align 8, !dbg !1343
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.30, ptr noundef %14) #9, !dbg !1344
  call void @sqlite_lock(i32 noundef 1), !dbg !1345
  %16 = load ptr, ptr %7, align 8, !dbg !1346
  %17 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1348
  %18 = call i32 @sqlite3_prepare(ptr noundef %16, ptr noundef %17, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !1349
  store i32 %18, ptr %6, align 4, !dbg !1350
  %19 = icmp eq i32 %18, 0, !dbg !1351
  br i1 %19, label %20, label %23, !dbg !1352

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8, !dbg !1353
  %22 = call i32 @sqlite3_step(ptr noundef %21), !dbg !1355
  store i32 0, ptr %3, align 4, !dbg !1356
  br label %27, !dbg !1357

23:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1358, metadata !DIExpression()), !dbg !1360
  %24 = load ptr, ptr %7, align 8, !dbg !1361
  %25 = call ptr @sqlite3_errmsg(ptr noundef %24), !dbg !1362
  store ptr %25, ptr %8, align 8, !dbg !1360
  %26 = load ptr, ptr %8, align 8, !dbg !1363
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %26), !dbg !1364
  br label %27

27:                                               ; preds = %23, %20
  %28 = load ptr, ptr %5, align 8, !dbg !1365
  %29 = call i32 @sqlite3_finalize(ptr noundef %28), !dbg !1366
  call void @sqlite_unlock(i32 noundef 1), !dbg !1367
  br label %30, !dbg !1368

30:                                               ; preds = %27, %1
  %31 = load i32, ptr %3, align 4, !dbg !1369
  ret i32 %31, !dbg !1370
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_origins(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1371 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca [1025 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1372, metadata !DIExpression()), !dbg !1373
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1374, metadata !DIExpression()), !dbg !1375
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1376, metadata !DIExpression()), !dbg !1377
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1378, metadata !DIExpression()), !dbg !1379
  store i32 -1, ptr %7, align 4, !dbg !1379
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1380, metadata !DIExpression()), !dbg !1381
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1381
  %18 = load ptr, ptr %4, align 8, !dbg !1382
  %19 = icmp ne ptr %18, null, !dbg !1382
  br i1 %19, label %22, label %20, !dbg !1384

20:                                               ; preds = %3
  %21 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1385
  store ptr %21, ptr %4, align 8, !dbg !1386
  br label %22, !dbg !1387

22:                                               ; preds = %20, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1388
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1389, metadata !DIExpression()), !dbg !1390
  store ptr null, ptr %9, align 8, !dbg !1390
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1391, metadata !DIExpression()), !dbg !1392
  store i32 0, ptr %10, align 4, !dbg !1392
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1393, metadata !DIExpression()), !dbg !1394
  %23 = call ptr @get_sqlite_connection(), !dbg !1395
  store ptr %23, ptr %11, align 8, !dbg !1394
  %24 = load ptr, ptr %11, align 8, !dbg !1396
  %25 = icmp ne ptr %24, null, !dbg !1396
  br i1 %25, label %26, label %103, !dbg !1398

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1399, metadata !DIExpression()), !dbg !1401
  %27 = load ptr, ptr %4, align 8, !dbg !1402
  %28 = icmp ne ptr %27, null, !dbg !1402
  br i1 %28, label %29, label %39, !dbg !1404

29:                                               ; preds = %26
  %30 = load ptr, ptr %4, align 8, !dbg !1405
  %31 = getelementptr inbounds i8, ptr %30, i64 0, !dbg !1405
  %32 = load i8, ptr %31, align 1, !dbg !1405
  %33 = zext i8 %32 to i32, !dbg !1405
  %34 = icmp ne i32 %33, 0, !dbg !1405
  br i1 %34, label %35, label %39, !dbg !1406

35:                                               ; preds = %29
  %36 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1407
  %37 = load ptr, ptr %4, align 8, !dbg !1409
  %38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %36, i64 noundef 1025, ptr noundef @.str.31, ptr noundef %37) #9, !dbg !1410
  br label %42, !dbg !1411

39:                                               ; preds = %29, %26
  %40 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1412
  %41 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %40, i64 noundef 1025, ptr noundef @.str.32) #9, !dbg !1414
  br label %42

42:                                               ; preds = %39, %35
  call void @sqlite_lock(i32 noundef 0), !dbg !1415
  %43 = load ptr, ptr %11, align 8, !dbg !1416
  %44 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !1418
  %45 = call i32 @sqlite3_prepare(ptr noundef %43, ptr noundef %44, i32 noundef -1, ptr noundef %9, ptr noundef null), !dbg !1419
  store i32 %45, ptr %10, align 4, !dbg !1420
  %46 = icmp eq i32 %45, 0, !dbg !1421
  br i1 %46, label %47, label %96, !dbg !1422

47:                                               ; preds = %42
  store i32 0, ptr %7, align 4, !dbg !1423
  br label %48, !dbg !1425

48:                                               ; preds = %47, %94
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1426, metadata !DIExpression()), !dbg !1428
  %49 = load ptr, ptr %9, align 8, !dbg !1429
  %50 = call i32 @sqlite3_step(ptr noundef %49), !dbg !1430
  store i32 %50, ptr %13, align 4, !dbg !1428
  %51 = load i32, ptr %13, align 4, !dbg !1431
  %52 = icmp eq i32 %51, 100, !dbg !1433
  br i1 %52, label %53, label %86, !dbg !1434

53:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1435, metadata !DIExpression()), !dbg !1437
  %54 = load ptr, ptr %9, align 8, !dbg !1438
  %55 = call ptr @sqlite3_column_text(ptr noundef %54, i32 noundef 0), !dbg !1439
  store ptr %55, ptr %14, align 8, !dbg !1437
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1440, metadata !DIExpression()), !dbg !1441
  %56 = load ptr, ptr %9, align 8, !dbg !1442
  %57 = call ptr @sqlite3_column_text(ptr noundef %56, i32 noundef 1), !dbg !1443
  store ptr %57, ptr %15, align 8, !dbg !1441
  %58 = load ptr, ptr %5, align 8, !dbg !1444
  %59 = icmp ne ptr %58, null, !dbg !1444
  br i1 %59, label %60, label %81, !dbg !1446

60:                                               ; preds = %53
  %61 = load ptr, ptr %5, align 8, !dbg !1447
  %62 = load ptr, ptr %14, align 8, !dbg !1449
  call void @add_to_secrets_list(ptr noundef %61, ptr noundef %62), !dbg !1450
  %63 = load ptr, ptr %6, align 8, !dbg !1451
  %64 = icmp ne ptr %63, null, !dbg !1451
  br i1 %64, label %65, label %80, !dbg !1453

65:                                               ; preds = %60
  %66 = load ptr, ptr %15, align 8, !dbg !1454
  %67 = icmp ne ptr %66, null, !dbg !1454
  br i1 %67, label %68, label %76, !dbg !1457

68:                                               ; preds = %65
  %69 = load ptr, ptr %15, align 8, !dbg !1458
  %70 = load i8, ptr %69, align 1, !dbg !1459
  %71 = sext i8 %70 to i32, !dbg !1459
  %72 = icmp ne i32 %71, 0, !dbg !1459
  br i1 %72, label %73, label %76, !dbg !1460

73:                                               ; preds = %68
  %74 = load ptr, ptr %6, align 8, !dbg !1461
  %75 = load ptr, ptr %15, align 8, !dbg !1463
  call void @add_to_secrets_list(ptr noundef %74, ptr noundef %75), !dbg !1464
  br label %79, !dbg !1465

76:                                               ; preds = %68, %65
  %77 = load ptr, ptr %6, align 8, !dbg !1466
  %78 = load ptr, ptr %4, align 8, !dbg !1468
  call void @add_to_secrets_list(ptr noundef %77, ptr noundef %78), !dbg !1469
  br label %79

79:                                               ; preds = %76, %73
  br label %80, !dbg !1470

80:                                               ; preds = %79, %60
  br label %85, !dbg !1471

81:                                               ; preds = %53
  %82 = load ptr, ptr %14, align 8, !dbg !1472
  %83 = load ptr, ptr %15, align 8, !dbg !1474
  %84 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef %82, ptr noundef %83), !dbg !1475
  br label %85

85:                                               ; preds = %81, %80
  br label %94, !dbg !1476

86:                                               ; preds = %48
  %87 = load i32, ptr %13, align 4, !dbg !1477
  %88 = icmp eq i32 %87, 101, !dbg !1479
  br i1 %88, label %89, label %90, !dbg !1480

89:                                               ; preds = %86
  br label %95, !dbg !1481

90:                                               ; preds = %86
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1483, metadata !DIExpression()), !dbg !1485
  %91 = load ptr, ptr %11, align 8, !dbg !1486
  %92 = call ptr @sqlite3_errmsg(ptr noundef %91), !dbg !1487
  store ptr %92, ptr %16, align 8, !dbg !1485
  %93 = load ptr, ptr %16, align 8, !dbg !1488
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %93), !dbg !1489
  store i32 -1, ptr %7, align 4, !dbg !1490
  br label %95, !dbg !1491

94:                                               ; preds = %85
  br label %48, !dbg !1425, !llvm.loop !1492

95:                                               ; preds = %90, %89
  br label %100, !dbg !1494

96:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1495, metadata !DIExpression()), !dbg !1497
  %97 = load ptr, ptr %11, align 8, !dbg !1498
  %98 = call ptr @sqlite3_errmsg(ptr noundef %97), !dbg !1499
  store ptr %98, ptr %17, align 8, !dbg !1497
  %99 = load ptr, ptr %17, align 8, !dbg !1500
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %99), !dbg !1501
  br label %100

100:                                              ; preds = %96, %95
  %101 = load ptr, ptr %9, align 8, !dbg !1502
  %102 = call i32 @sqlite3_finalize(ptr noundef %101), !dbg !1503
  call void @sqlite_unlock(i32 noundef 0), !dbg !1504
  br label %103, !dbg !1505

103:                                              ; preds = %100, %22
  %104 = load i32, ptr %7, align 4, !dbg !1506
  ret i32 %104, !dbg !1507
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1508 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1509, metadata !DIExpression()), !dbg !1510
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1511, metadata !DIExpression()), !dbg !1512
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1513, metadata !DIExpression()), !dbg !1514
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1515, metadata !DIExpression()), !dbg !1516
  store i32 -1, ptr %7, align 4, !dbg !1516
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1517, metadata !DIExpression()), !dbg !1518
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1519, metadata !DIExpression()), !dbg !1520
  store ptr null, ptr %9, align 8, !dbg !1520
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1521, metadata !DIExpression()), !dbg !1522
  store i32 0, ptr %10, align 4, !dbg !1522
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1523
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1524, metadata !DIExpression()), !dbg !1525
  %13 = call ptr @get_sqlite_connection(), !dbg !1526
  store ptr %13, ptr %11, align 8, !dbg !1525
  %14 = load ptr, ptr %11, align 8, !dbg !1527
  %15 = icmp ne ptr %14, null, !dbg !1527
  br i1 %15, label %16, label %40, !dbg !1529

16:                                               ; preds = %3
  %17 = load i64, ptr %5, align 8, !dbg !1530
  %18 = icmp ugt i64 %17, 0, !dbg !1533
  br i1 %18, label %19, label %39, !dbg !1534

19:                                               ; preds = %16
  %20 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1535
  %21 = load ptr, ptr %4, align 8, !dbg !1537
  %22 = load ptr, ptr %6, align 8, !dbg !1538
  %23 = load i64, ptr %5, align 8, !dbg !1539
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 1025, ptr noundef @.str.34, ptr noundef %21, ptr noundef %22, i64 noundef %23) #9, !dbg !1540
  call void @sqlite_lock(i32 noundef 1), !dbg !1541
  %25 = load ptr, ptr %11, align 8, !dbg !1542
  %26 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1544
  %27 = call i32 @sqlite3_prepare(ptr noundef %25, ptr noundef %26, i32 noundef -1, ptr noundef %9, ptr noundef null), !dbg !1545
  store i32 %27, ptr %10, align 4, !dbg !1546
  %28 = icmp eq i32 %27, 0, !dbg !1547
  br i1 %28, label %29, label %32, !dbg !1548

29:                                               ; preds = %19
  %30 = load ptr, ptr %9, align 8, !dbg !1549
  %31 = call i32 @sqlite3_step(ptr noundef %30), !dbg !1551
  store i32 0, ptr %7, align 4, !dbg !1552
  br label %36, !dbg !1553

32:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1554, metadata !DIExpression()), !dbg !1556
  %33 = load ptr, ptr %11, align 8, !dbg !1557
  %34 = call ptr @sqlite3_errmsg(ptr noundef %33), !dbg !1558
  store ptr %34, ptr %12, align 8, !dbg !1556
  %35 = load ptr, ptr %12, align 8, !dbg !1559
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %35), !dbg !1560
  br label %36

36:                                               ; preds = %32, %29
  %37 = load ptr, ptr %9, align 8, !dbg !1561
  %38 = call i32 @sqlite3_finalize(ptr noundef %37), !dbg !1562
  call void @sqlite_unlock(i32 noundef 1), !dbg !1563
  br label %39, !dbg !1564

39:                                               ; preds = %36, %16
  br label %40, !dbg !1565

40:                                               ; preds = %39, %3
  %41 = load i32, ptr %7, align 4, !dbg !1566
  ret i32 %41, !dbg !1567
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_realm_options(ptr noundef %0) #0 !dbg !1568 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1569, metadata !DIExpression()), !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1571, metadata !DIExpression()), !dbg !1572
  store i32 -1, ptr %3, align 4, !dbg !1572
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1573
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1574, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1576, metadata !DIExpression()), !dbg !1577
  store ptr null, ptr %5, align 8, !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1578, metadata !DIExpression()), !dbg !1579
  store i32 0, ptr %6, align 4, !dbg !1579
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1580, metadata !DIExpression()), !dbg !1581
  %14 = call ptr @get_sqlite_connection(), !dbg !1582
  store ptr %14, ptr %7, align 8, !dbg !1581
  %15 = load ptr, ptr %7, align 8, !dbg !1583
  %16 = icmp ne ptr %15, null, !dbg !1583
  br i1 %16, label %17, label %72, !dbg !1585

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8, !dbg !1586
  %19 = icmp ne ptr %18, null, !dbg !1586
  br i1 %19, label %20, label %30, !dbg !1589

20:                                               ; preds = %17
  %21 = load ptr, ptr %2, align 8, !dbg !1590
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !1590
  %23 = load i8, ptr %22, align 1, !dbg !1590
  %24 = zext i8 %23 to i32, !dbg !1590
  %25 = icmp ne i32 %24, 0, !dbg !1590
  br i1 %25, label %26, label %30, !dbg !1591

26:                                               ; preds = %20
  %27 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1592
  %28 = load ptr, ptr %2, align 8, !dbg !1594
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 1025, ptr noundef @.str.35, ptr noundef %28) #9, !dbg !1595
  br label %33, !dbg !1596

30:                                               ; preds = %20, %17
  %31 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1597
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %31, i64 noundef 1025, ptr noundef @.str.36) #9, !dbg !1599
  br label %33

33:                                               ; preds = %30, %26
  call void @sqlite_lock(i32 noundef 0), !dbg !1600
  %34 = load ptr, ptr %7, align 8, !dbg !1601
  %35 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1603
  %36 = call i32 @sqlite3_prepare(ptr noundef %34, ptr noundef %35, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !1604
  store i32 %36, ptr %6, align 4, !dbg !1605
  %37 = icmp eq i32 %36, 0, !dbg !1606
  br i1 %37, label %38, label %65, !dbg !1607

38:                                               ; preds = %33
  store i32 0, ptr %3, align 4, !dbg !1608
  br label %39, !dbg !1610

39:                                               ; preds = %38, %63
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1611, metadata !DIExpression()), !dbg !1613
  %40 = load ptr, ptr %5, align 8, !dbg !1614
  %41 = call i32 @sqlite3_step(ptr noundef %40), !dbg !1615
  store i32 %41, ptr %8, align 4, !dbg !1613
  %42 = load i32, ptr %8, align 4, !dbg !1616
  %43 = icmp eq i32 %42, 100, !dbg !1618
  br i1 %43, label %44, label %55, !dbg !1619

44:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1620, metadata !DIExpression()), !dbg !1622
  %45 = load ptr, ptr %5, align 8, !dbg !1623
  %46 = call ptr @sqlite3_column_text(ptr noundef %45, i32 noundef 0), !dbg !1624
  store ptr %46, ptr %9, align 8, !dbg !1622
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1625, metadata !DIExpression()), !dbg !1626
  %47 = load ptr, ptr %5, align 8, !dbg !1627
  %48 = call ptr @sqlite3_column_text(ptr noundef %47, i32 noundef 1), !dbg !1628
  store ptr %48, ptr %10, align 8, !dbg !1626
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1629, metadata !DIExpression()), !dbg !1630
  %49 = load ptr, ptr %5, align 8, !dbg !1631
  %50 = call ptr @sqlite3_column_text(ptr noundef %49, i32 noundef 2), !dbg !1632
  store ptr %50, ptr %11, align 8, !dbg !1630
  %51 = load ptr, ptr %10, align 8, !dbg !1633
  %52 = load ptr, ptr %9, align 8, !dbg !1634
  %53 = load ptr, ptr %11, align 8, !dbg !1635
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %51, ptr noundef %52, ptr noundef %53), !dbg !1636
  br label %63, !dbg !1637

55:                                               ; preds = %39
  %56 = load i32, ptr %8, align 4, !dbg !1638
  %57 = icmp eq i32 %56, 101, !dbg !1640
  br i1 %57, label %58, label %59, !dbg !1641

58:                                               ; preds = %55
  br label %64, !dbg !1642

59:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1644, metadata !DIExpression()), !dbg !1646
  %60 = load ptr, ptr %7, align 8, !dbg !1647
  %61 = call ptr @sqlite3_errmsg(ptr noundef %60), !dbg !1648
  store ptr %61, ptr %12, align 8, !dbg !1646
  %62 = load ptr, ptr %12, align 8, !dbg !1649
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %62), !dbg !1650
  store i32 -1, ptr %3, align 4, !dbg !1651
  br label %64, !dbg !1652

63:                                               ; preds = %44
  br label %39, !dbg !1610, !llvm.loop !1653

64:                                               ; preds = %59, %58
  br label %69, !dbg !1655

65:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1656, metadata !DIExpression()), !dbg !1658
  %66 = load ptr, ptr %7, align 8, !dbg !1659
  %67 = call ptr @sqlite3_errmsg(ptr noundef %66), !dbg !1660
  store ptr %67, ptr %13, align 8, !dbg !1658
  %68 = load ptr, ptr %13, align 8, !dbg !1661
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %68), !dbg !1662
  br label %69

69:                                               ; preds = %65, %64
  %70 = load ptr, ptr %5, align 8, !dbg !1663
  %71 = call i32 @sqlite3_finalize(ptr noundef %70), !dbg !1664
  call void @sqlite_unlock(i32 noundef 0), !dbg !1665
  br label %72, !dbg !1666

72:                                               ; preds = %69, %1
  %73 = load i32, ptr %3, align 4, !dbg !1667
  ret i32 %73, !dbg !1668
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_auth_ping(ptr noundef %0) #0 !dbg !1669 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1670, metadata !DIExpression()), !dbg !1671
  br label %3, !dbg !1672

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !1673
  store ptr %4, ptr %2, align 8, !dbg !1673
  br label %5, !dbg !1673

5:                                                ; preds = %3
  ret void, !dbg !1675
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_get_ip_list(ptr noundef %0, ptr noundef %1) #0 !dbg !1676 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1677, metadata !DIExpression()), !dbg !1678
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1681, metadata !DIExpression()), !dbg !1682
  store i32 -1, ptr %5, align 4, !dbg !1682
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1683, metadata !DIExpression()), !dbg !1684
  %15 = call ptr @get_sqlite_connection(), !dbg !1685
  store ptr %15, ptr %6, align 8, !dbg !1684
  %16 = load ptr, ptr %6, align 8, !dbg !1686
  %17 = icmp ne ptr %16, null, !dbg !1686
  br i1 %17, label %18, label %58, !dbg !1688

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1689, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1692, metadata !DIExpression()), !dbg !1693
  store ptr null, ptr %8, align 8, !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i32 0, ptr %9, align 4, !dbg !1695
  %19 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1696
  %20 = load ptr, ptr %3, align 8, !dbg !1697
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %19, i64 noundef 1025, ptr noundef @.str.38, ptr noundef %20) #9, !dbg !1698
  call void @sqlite_lock(i32 noundef 0), !dbg !1699
  %22 = load ptr, ptr %6, align 8, !dbg !1700
  %23 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1702
  %24 = call i32 @sqlite3_prepare(ptr noundef %22, ptr noundef %23, i32 noundef -1, ptr noundef %8, ptr noundef null), !dbg !1703
  store i32 %24, ptr %9, align 4, !dbg !1704
  %25 = icmp eq i32 %24, 0, !dbg !1705
  br i1 %25, label %26, label %51, !dbg !1706

26:                                               ; preds = %18
  store i32 0, ptr %5, align 4, !dbg !1707
  br label %27, !dbg !1709

27:                                               ; preds = %26, %49
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1710, metadata !DIExpression()), !dbg !1712
  %28 = load ptr, ptr %8, align 8, !dbg !1713
  %29 = call i32 @sqlite3_step(ptr noundef %28), !dbg !1714
  store i32 %29, ptr %10, align 4, !dbg !1712
  %30 = load i32, ptr %10, align 4, !dbg !1715
  %31 = icmp eq i32 %30, 100, !dbg !1717
  br i1 %31, label %32, label %41, !dbg !1718

32:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1719, metadata !DIExpression()), !dbg !1721
  %33 = load ptr, ptr %8, align 8, !dbg !1722
  %34 = call ptr @sqlite3_column_text(ptr noundef %33, i32 noundef 0), !dbg !1723
  store ptr %34, ptr %11, align 8, !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1724, metadata !DIExpression()), !dbg !1725
  %35 = load ptr, ptr %8, align 8, !dbg !1726
  %36 = call ptr @sqlite3_column_text(ptr noundef %35, i32 noundef 1), !dbg !1727
  store ptr %36, ptr %12, align 8, !dbg !1725
  %37 = load ptr, ptr %11, align 8, !dbg !1728
  %38 = load ptr, ptr %12, align 8, !dbg !1729
  %39 = load ptr, ptr %4, align 8, !dbg !1730
  %40 = call i32 @add_ip_list_range(ptr noundef %37, ptr noundef %38, ptr noundef %39), !dbg !1731
  br label %49, !dbg !1732

41:                                               ; preds = %27
  %42 = load i32, ptr %10, align 4, !dbg !1733
  %43 = icmp eq i32 %42, 101, !dbg !1735
  br i1 %43, label %44, label %45, !dbg !1736

44:                                               ; preds = %41
  br label %50, !dbg !1737

45:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1739, metadata !DIExpression()), !dbg !1741
  %46 = load ptr, ptr %6, align 8, !dbg !1742
  %47 = call ptr @sqlite3_errmsg(ptr noundef %46), !dbg !1743
  store ptr %47, ptr %13, align 8, !dbg !1741
  %48 = load ptr, ptr %13, align 8, !dbg !1744
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %48), !dbg !1745
  store i32 -1, ptr %5, align 4, !dbg !1746
  br label %50, !dbg !1747

49:                                               ; preds = %32
  br label %27, !dbg !1709, !llvm.loop !1748

50:                                               ; preds = %45, %44
  br label %55, !dbg !1750

51:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1751, metadata !DIExpression()), !dbg !1753
  %52 = load ptr, ptr %6, align 8, !dbg !1754
  %53 = call ptr @sqlite3_errmsg(ptr noundef %52), !dbg !1755
  store ptr %53, ptr %14, align 8, !dbg !1753
  %54 = load ptr, ptr %14, align 8, !dbg !1756
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %54), !dbg !1757
  br label %55

55:                                               ; preds = %51, %50
  %56 = load ptr, ptr %8, align 8, !dbg !1758
  %57 = call i32 @sqlite3_finalize(ptr noundef %56), !dbg !1759
  call void @sqlite_unlock(i32 noundef 0), !dbg !1760
  br label %58, !dbg !1761

58:                                               ; preds = %55, %2
  %59 = load i32, ptr %5, align 4, !dbg !1762
  ret i32 %59, !dbg !1763
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_permission_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1764 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [1025 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1765, metadata !DIExpression()), !dbg !1766
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1767, metadata !DIExpression()), !dbg !1768
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1769, metadata !DIExpression()), !dbg !1770
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1771, metadata !DIExpression()), !dbg !1772
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1773, metadata !DIExpression()), !dbg !1774
  store i32 -1, ptr %9, align 4, !dbg !1774
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1775, metadata !DIExpression()), !dbg !1776
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 128, i1 false), !dbg !1776
  %16 = load ptr, ptr %6, align 8, !dbg !1777
  %17 = icmp ne ptr %16, null, !dbg !1777
  br i1 %17, label %20, label %18, !dbg !1779

18:                                               ; preds = %4
  %19 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 0, !dbg !1780
  store ptr %19, ptr %6, align 8, !dbg !1781
  br label %20, !dbg !1782

20:                                               ; preds = %18, %4
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1783, metadata !DIExpression()), !dbg !1784
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1785, metadata !DIExpression()), !dbg !1786
  store ptr null, ptr %12, align 8, !dbg !1786
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1787, metadata !DIExpression()), !dbg !1788
  store i32 0, ptr %13, align 4, !dbg !1788
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1789
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1790, metadata !DIExpression()), !dbg !1791
  %21 = call ptr @get_sqlite_connection(), !dbg !1792
  store ptr %21, ptr %14, align 8, !dbg !1791
  %22 = load ptr, ptr %14, align 8, !dbg !1793
  %23 = icmp ne ptr %22, null, !dbg !1793
  br i1 %23, label %24, label %54, !dbg !1795

24:                                               ; preds = %20
  call void @sqlite_lock(i32 noundef 1), !dbg !1796
  %25 = load i32, ptr %8, align 4, !dbg !1798
  %26 = icmp ne i32 %25, 0, !dbg !1798
  br i1 %26, label %27, label %33, !dbg !1800

27:                                               ; preds = %24
  %28 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1801
  %29 = load ptr, ptr %5, align 8, !dbg !1803
  %30 = load ptr, ptr %6, align 8, !dbg !1804
  %31 = load ptr, ptr %7, align 8, !dbg !1805
  %32 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef 1025, ptr noundef @.str.39, ptr noundef %29, ptr noundef %30, ptr noundef %31) #9, !dbg !1806
  br label %39, !dbg !1807

33:                                               ; preds = %24
  %34 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1808
  %35 = load ptr, ptr %5, align 8, !dbg !1810
  %36 = load ptr, ptr %6, align 8, !dbg !1811
  %37 = load ptr, ptr %7, align 8, !dbg !1812
  %38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %34, i64 noundef 1025, ptr noundef @.str.40, ptr noundef %35, ptr noundef %36, ptr noundef %37) #9, !dbg !1813
  br label %39

39:                                               ; preds = %33, %27
  %40 = load ptr, ptr %14, align 8, !dbg !1814
  %41 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1816
  %42 = call i32 @sqlite3_prepare(ptr noundef %40, ptr noundef %41, i32 noundef -1, ptr noundef %12, ptr noundef null), !dbg !1817
  store i32 %42, ptr %13, align 4, !dbg !1818
  %43 = icmp eq i32 %42, 0, !dbg !1819
  br i1 %43, label %44, label %47, !dbg !1820

44:                                               ; preds = %39
  %45 = load ptr, ptr %12, align 8, !dbg !1821
  %46 = call i32 @sqlite3_step(ptr noundef %45), !dbg !1823
  store i32 0, ptr %9, align 4, !dbg !1824
  br label %51, !dbg !1825

47:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1826, metadata !DIExpression()), !dbg !1828
  %48 = load ptr, ptr %14, align 8, !dbg !1829
  %49 = call ptr @sqlite3_errmsg(ptr noundef %48), !dbg !1830
  store ptr %49, ptr %15, align 8, !dbg !1828
  %50 = load ptr, ptr %15, align 8, !dbg !1831
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.41, ptr noundef %50), !dbg !1832
  br label %51

51:                                               ; preds = %47, %44
  %52 = load ptr, ptr %12, align 8, !dbg !1833
  %53 = call i32 @sqlite3_finalize(ptr noundef %52), !dbg !1834
  call void @sqlite_unlock(i32 noundef 1), !dbg !1835
  br label %54, !dbg !1836

54:                                               ; preds = %51, %20
  %55 = load i32, ptr %9, align 4, !dbg !1837
  ret i32 %55, !dbg !1838
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_reread_realms(ptr noundef %0) #0 !dbg !1839 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
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
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1840, metadata !DIExpression()), !dbg !1841
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1842, metadata !DIExpression()), !dbg !1843
  %25 = call ptr @get_sqlite_connection(), !dbg !1844
  store ptr %25, ptr %3, align 8, !dbg !1843
  %26 = load ptr, ptr %3, align 8, !dbg !1845
  %27 = icmp ne ptr %26, null, !dbg !1845
  br i1 %27, label %28, label %187, !dbg !1847

28:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1848, metadata !DIExpression()), !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1851, metadata !DIExpression()), !dbg !1852
  store ptr null, ptr %5, align 8, !dbg !1852
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1853, metadata !DIExpression()), !dbg !1854
  store i32 0, ptr %6, align 4, !dbg !1854
  %29 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1855
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %29, i64 noundef 1025, ptr noundef @.str.42) #9, !dbg !1857
  call void @sqlite_lock(i32 noundef 0), !dbg !1858
  %31 = load ptr, ptr %3, align 8, !dbg !1859
  %32 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1861
  %33 = call i32 @sqlite3_prepare(ptr noundef %31, ptr noundef %32, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !1862
  store i32 %33, ptr %6, align 4, !dbg !1863
  %34 = icmp eq i32 %33, 0, !dbg !1864
  br i1 %34, label %35, label %68, !dbg !1865

35:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1866, metadata !DIExpression()), !dbg !1871
  %36 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !1872
  store ptr %36, ptr %7, align 8, !dbg !1871
  br label %37, !dbg !1873

37:                                               ; preds = %35, %65
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1874, metadata !DIExpression()), !dbg !1876
  %38 = load ptr, ptr %5, align 8, !dbg !1877
  %39 = call i32 @sqlite3_step(ptr noundef %38), !dbg !1878
  store i32 %39, ptr %8, align 4, !dbg !1876
  %40 = load i32, ptr %8, align 4, !dbg !1879
  %41 = icmp eq i32 %40, 100, !dbg !1881
  br i1 %41, label %42, label %57, !dbg !1882

42:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1883, metadata !DIExpression()), !dbg !1885
  %43 = load ptr, ptr %5, align 8, !dbg !1886
  %44 = call ptr @sqlite3_column_text(ptr noundef %43, i32 noundef 0), !dbg !1887
  %45 = call noalias ptr @strdup(ptr noundef %44) #9, !dbg !1888
  store ptr %45, ptr %9, align 8, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1889, metadata !DIExpression()), !dbg !1890
  %46 = load ptr, ptr %5, align 8, !dbg !1891
  %47 = call ptr @sqlite3_column_text(ptr noundef %46, i32 noundef 1), !dbg !1892
  %48 = call noalias ptr @strdup(ptr noundef %47) #9, !dbg !1893
  store ptr %48, ptr %10, align 8, !dbg !1890
  %49 = load ptr, ptr %10, align 8, !dbg !1894
  %50 = call ptr @get_realm(ptr noundef %49), !dbg !1895
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1896, metadata !DIExpression()), !dbg !1898
  %51 = load ptr, ptr %10, align 8, !dbg !1899
  store ptr %51, ptr %11, align 8, !dbg !1898
  %52 = load ptr, ptr %7, align 8, !dbg !1900
  %53 = load ptr, ptr %9, align 8, !dbg !1901
  %54 = load ptr, ptr %11, align 8, !dbg !1902
  %55 = call i32 @ur_string_map_put(ptr noundef %52, ptr noundef %53, ptr noundef %54), !dbg !1903
  %56 = load ptr, ptr %9, align 8, !dbg !1904
  call void @free(ptr noundef %56) #9, !dbg !1905
  br label %65, !dbg !1906

57:                                               ; preds = %37
  %58 = load i32, ptr %8, align 4, !dbg !1907
  %59 = icmp eq i32 %58, 101, !dbg !1909
  br i1 %59, label %60, label %61, !dbg !1910

60:                                               ; preds = %57
  br label %66, !dbg !1911

61:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1913, metadata !DIExpression()), !dbg !1915
  %62 = load ptr, ptr %3, align 8, !dbg !1916
  %63 = call ptr @sqlite3_errmsg(ptr noundef %62), !dbg !1917
  store ptr %63, ptr %12, align 8, !dbg !1915
  %64 = load ptr, ptr %12, align 8, !dbg !1918
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %64), !dbg !1919
  br label %66, !dbg !1920

65:                                               ; preds = %42
  br label %37, !dbg !1873, !llvm.loop !1921

66:                                               ; preds = %61, %60
  %67 = load ptr, ptr %7, align 8, !dbg !1923
  call void @update_o_to_realm(ptr noundef %67), !dbg !1924
  br label %72, !dbg !1925

68:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1926, metadata !DIExpression()), !dbg !1928
  %69 = load ptr, ptr %3, align 8, !dbg !1929
  %70 = call ptr @sqlite3_errmsg(ptr noundef %69), !dbg !1930
  store ptr %70, ptr %13, align 8, !dbg !1928
  %71 = load ptr, ptr %13, align 8, !dbg !1931
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %71), !dbg !1932
  br label %72

72:                                               ; preds = %68, %66
  %73 = load ptr, ptr %5, align 8, !dbg !1933
  %74 = call i32 @sqlite3_finalize(ptr noundef %73), !dbg !1934
  call void @sqlite_unlock(i32 noundef 0), !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1936, metadata !DIExpression()), !dbg !1939
  store i64 0, ptr %14, align 8, !dbg !1939
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1940, metadata !DIExpression()), !dbg !1941
  store i64 0, ptr %15, align 8, !dbg !1941
  call void @lock_realms(), !dbg !1942
  %75 = load ptr, ptr %2, align 8, !dbg !1943
  %76 = getelementptr inbounds %struct._secrets_list, ptr %75, i32 0, i32 1, !dbg !1944
  %77 = load i64, ptr %76, align 8, !dbg !1944
  store i64 %77, ptr %15, align 8, !dbg !1945
  call void @unlock_realms(), !dbg !1946
  store i64 0, ptr %14, align 8, !dbg !1947
  br label %78, !dbg !1949

78:                                               ; preds = %106, %72
  %79 = load i64, ptr %14, align 8, !dbg !1950
  %80 = load i64, ptr %15, align 8, !dbg !1952
  %81 = icmp ult i64 %79, %80, !dbg !1953
  br i1 %81, label %82, label %109, !dbg !1954

82:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1955, metadata !DIExpression()), !dbg !1957
  %83 = load ptr, ptr %2, align 8, !dbg !1958
  %84 = getelementptr inbounds %struct._secrets_list, ptr %83, i32 0, i32 0, !dbg !1959
  %85 = load ptr, ptr %84, align 8, !dbg !1959
  %86 = load i64, ptr %14, align 8, !dbg !1960
  %87 = getelementptr inbounds ptr, ptr %85, i64 %86, !dbg !1958
  %88 = load ptr, ptr %87, align 8, !dbg !1958
  store ptr %88, ptr %16, align 8, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1961, metadata !DIExpression()), !dbg !1987
  %89 = load ptr, ptr %16, align 8, !dbg !1988
  %90 = call ptr @get_realm(ptr noundef %89), !dbg !1989
  store ptr %90, ptr %17, align 8, !dbg !1987
  call void @lock_realms(), !dbg !1990
  %91 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !1991
  %92 = load ptr, ptr %17, align 8, !dbg !1992
  %93 = getelementptr inbounds %struct._realm_params_t, ptr %92, i32 0, i32 1, !dbg !1993
  %94 = getelementptr inbounds %struct._realm_options_t, ptr %93, i32 0, i32 1, !dbg !1994
  %95 = getelementptr inbounds %struct._perf_options_t, ptr %94, i32 0, i32 0, !dbg !1995
  store volatile i64 %91, ptr %95, align 8, !dbg !1996
  call void @unlock_realms(), !dbg !1997
  call void @lock_realms(), !dbg !1998
  %96 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !1999
  %97 = load ptr, ptr %17, align 8, !dbg !2000
  %98 = getelementptr inbounds %struct._realm_params_t, ptr %97, i32 0, i32 1, !dbg !2001
  %99 = getelementptr inbounds %struct._realm_options_t, ptr %98, i32 0, i32 1, !dbg !2002
  %100 = getelementptr inbounds %struct._perf_options_t, ptr %99, i32 0, i32 1, !dbg !2003
  store i32 %96, ptr %100, align 8, !dbg !2004
  call void @unlock_realms(), !dbg !2005
  call void @lock_realms(), !dbg !2006
  %101 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !2007
  %102 = load ptr, ptr %17, align 8, !dbg !2008
  %103 = getelementptr inbounds %struct._realm_params_t, ptr %102, i32 0, i32 1, !dbg !2009
  %104 = getelementptr inbounds %struct._realm_options_t, ptr %103, i32 0, i32 1, !dbg !2010
  %105 = getelementptr inbounds %struct._perf_options_t, ptr %104, i32 0, i32 2, !dbg !2011
  store i32 %101, ptr %105, align 4, !dbg !2012
  call void @unlock_realms(), !dbg !2013
  br label %106, !dbg !2014

106:                                              ; preds = %82
  %107 = load i64, ptr %14, align 8, !dbg !2015
  %108 = add i64 %107, 1, !dbg !2015
  store i64 %108, ptr %14, align 8, !dbg !2015
  br label %78, !dbg !2016, !llvm.loop !2017

109:                                              ; preds = %78
  call void @sqlite_lock(i32 noundef 0), !dbg !2019
  %110 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2020
  %111 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %110, i64 noundef 1025, ptr noundef @.str.43) #9, !dbg !2021
  %112 = load ptr, ptr %3, align 8, !dbg !2022
  %113 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2024
  %114 = call i32 @sqlite3_prepare(ptr noundef %112, ptr noundef %113, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !2025
  store i32 %114, ptr %6, align 4, !dbg !2026
  %115 = icmp eq i32 %114, 0, !dbg !2027
  br i1 %115, label %116, label %180, !dbg !2028

116:                                              ; preds = %109
  br label %117, !dbg !2029

117:                                              ; preds = %116, %178
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2031, metadata !DIExpression()), !dbg !2033
  %118 = load ptr, ptr %5, align 8, !dbg !2034
  %119 = call i32 @sqlite3_step(ptr noundef %118), !dbg !2035
  store i32 %119, ptr %18, align 4, !dbg !2033
  %120 = load i32, ptr %18, align 4, !dbg !2036
  %121 = icmp eq i32 %120, 100, !dbg !2038
  br i1 %121, label %122, label %170, !dbg !2039

122:                                              ; preds = %117
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2040, metadata !DIExpression()), !dbg !2042
  %123 = load ptr, ptr %5, align 8, !dbg !2043
  %124 = call ptr @sqlite3_column_text(ptr noundef %123, i32 noundef 0), !dbg !2044
  %125 = call noalias ptr @strdup(ptr noundef %124) #9, !dbg !2045
  store ptr %125, ptr %19, align 8, !dbg !2042
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2046, metadata !DIExpression()), !dbg !2047
  %126 = load ptr, ptr %5, align 8, !dbg !2048
  %127 = call ptr @sqlite3_column_text(ptr noundef %126, i32 noundef 1), !dbg !2049
  store ptr %127, ptr %20, align 8, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2050, metadata !DIExpression()), !dbg !2051
  %128 = load ptr, ptr %5, align 8, !dbg !2052
  %129 = call ptr @sqlite3_column_text(ptr noundef %128, i32 noundef 2), !dbg !2053
  store ptr %129, ptr %21, align 8, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2054, metadata !DIExpression()), !dbg !2055
  %130 = load ptr, ptr %19, align 8, !dbg !2056
  %131 = call ptr @get_realm(ptr noundef %130), !dbg !2057
  store ptr %131, ptr %22, align 8, !dbg !2055
  %132 = load ptr, ptr %20, align 8, !dbg !2058
  %133 = call i32 @strcmp(ptr noundef %132, ptr noundef @.str.44) #10, !dbg !2060
  %134 = icmp ne i32 %133, 0, !dbg !2060
  br i1 %134, label %142, label %135, !dbg !2061

135:                                              ; preds = %122
  %136 = load ptr, ptr %21, align 8, !dbg !2062
  %137 = call i64 @strtoul(ptr noundef %136, ptr noundef null, i32 noundef 10) #9, !dbg !2063
  %138 = load ptr, ptr %22, align 8, !dbg !2064
  %139 = getelementptr inbounds %struct._realm_params_t, ptr %138, i32 0, i32 1, !dbg !2065
  %140 = getelementptr inbounds %struct._realm_options_t, ptr %139, i32 0, i32 1, !dbg !2066
  %141 = getelementptr inbounds %struct._perf_options_t, ptr %140, i32 0, i32 0, !dbg !2067
  store volatile i64 %137, ptr %141, align 8, !dbg !2068
  br label %168, !dbg !2064

142:                                              ; preds = %122
  %143 = load ptr, ptr %20, align 8, !dbg !2069
  %144 = call i32 @strcmp(ptr noundef %143, ptr noundef @.str.45) #10, !dbg !2071
  %145 = icmp ne i32 %144, 0, !dbg !2071
  br i1 %145, label %153, label %146, !dbg !2072

146:                                              ; preds = %142
  %147 = load ptr, ptr %21, align 8, !dbg !2073
  %148 = call i32 @atoi(ptr noundef %147) #10, !dbg !2074
  %149 = load ptr, ptr %22, align 8, !dbg !2075
  %150 = getelementptr inbounds %struct._realm_params_t, ptr %149, i32 0, i32 1, !dbg !2076
  %151 = getelementptr inbounds %struct._realm_options_t, ptr %150, i32 0, i32 1, !dbg !2077
  %152 = getelementptr inbounds %struct._perf_options_t, ptr %151, i32 0, i32 1, !dbg !2078
  store i32 %148, ptr %152, align 8, !dbg !2079
  br label %167, !dbg !2075

153:                                              ; preds = %142
  %154 = load ptr, ptr %20, align 8, !dbg !2080
  %155 = call i32 @strcmp(ptr noundef %154, ptr noundef @.str.46) #10, !dbg !2082
  %156 = icmp ne i32 %155, 0, !dbg !2082
  br i1 %156, label %164, label %157, !dbg !2083

157:                                              ; preds = %153
  %158 = load ptr, ptr %21, align 8, !dbg !2084
  %159 = call i32 @atoi(ptr noundef %158) #10, !dbg !2085
  %160 = load ptr, ptr %22, align 8, !dbg !2086
  %161 = getelementptr inbounds %struct._realm_params_t, ptr %160, i32 0, i32 1, !dbg !2087
  %162 = getelementptr inbounds %struct._realm_options_t, ptr %161, i32 0, i32 1, !dbg !2088
  %163 = getelementptr inbounds %struct._perf_options_t, ptr %162, i32 0, i32 2, !dbg !2089
  store i32 %159, ptr %163, align 4, !dbg !2090
  br label %166, !dbg !2086

164:                                              ; preds = %153
  %165 = load ptr, ptr %20, align 8, !dbg !2091
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.47, ptr noundef %165), !dbg !2093
  br label %166

166:                                              ; preds = %164, %157
  br label %167

167:                                              ; preds = %166, %146
  br label %168

168:                                              ; preds = %167, %135
  %169 = load ptr, ptr %19, align 8, !dbg !2094
  call void @free(ptr noundef %169) #9, !dbg !2095
  br label %178, !dbg !2096

170:                                              ; preds = %117
  %171 = load i32, ptr %18, align 4, !dbg !2097
  %172 = icmp eq i32 %171, 101, !dbg !2099
  br i1 %172, label %173, label %174, !dbg !2100

173:                                              ; preds = %170
  br label %179, !dbg !2101

174:                                              ; preds = %170
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2103, metadata !DIExpression()), !dbg !2105
  %175 = load ptr, ptr %3, align 8, !dbg !2106
  %176 = call ptr @sqlite3_errmsg(ptr noundef %175), !dbg !2107
  store ptr %176, ptr %23, align 8, !dbg !2105
  %177 = load ptr, ptr %23, align 8, !dbg !2108
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %177), !dbg !2109
  br label %179, !dbg !2110

178:                                              ; preds = %168
  br label %117, !dbg !2029, !llvm.loop !2111

179:                                              ; preds = %174, %173
  br label %184, !dbg !2113

180:                                              ; preds = %109
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2114, metadata !DIExpression()), !dbg !2116
  %181 = load ptr, ptr %3, align 8, !dbg !2117
  %182 = call ptr @sqlite3_errmsg(ptr noundef %181), !dbg !2118
  store ptr %182, ptr %24, align 8, !dbg !2116
  %183 = load ptr, ptr %24, align 8, !dbg !2119
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %183), !dbg !2120
  br label %184

184:                                              ; preds = %180, %179
  %185 = load ptr, ptr %5, align 8, !dbg !2121
  %186 = call i32 @sqlite3_finalize(ptr noundef %185), !dbg !2122
  call void @sqlite_unlock(i32 noundef 0), !dbg !2123
  br label %187, !dbg !2124

187:                                              ; preds = %184, %1
  ret void, !dbg !2125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_oauth_key(ptr noundef %0) #0 !dbg !2126 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2127, metadata !DIExpression()), !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2129, metadata !DIExpression()), !dbg !2130
  store i32 -1, ptr %3, align 4, !dbg !2130
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2131, metadata !DIExpression()), !dbg !2132
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2133, metadata !DIExpression()), !dbg !2134
  store ptr null, ptr %5, align 8, !dbg !2134
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2135, metadata !DIExpression()), !dbg !2136
  store i32 0, ptr %6, align 4, !dbg !2136
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2137
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2138, metadata !DIExpression()), !dbg !2139
  %9 = call ptr @get_sqlite_connection(), !dbg !2140
  store ptr %9, ptr %7, align 8, !dbg !2139
  %10 = load ptr, ptr %7, align 8, !dbg !2141
  %11 = icmp ne ptr %10, null, !dbg !2141
  br i1 %11, label %12, label %48, !dbg !2143

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2144
  %14 = load ptr, ptr %2, align 8, !dbg !2146
  %15 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %14, i32 0, i32 0, !dbg !2147
  %16 = getelementptr inbounds [129 x i8], ptr %15, i64 0, i64 0, !dbg !2146
  %17 = load ptr, ptr %2, align 8, !dbg !2148
  %18 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %17, i32 0, i32 1, !dbg !2149
  %19 = getelementptr inbounds [257 x i8], ptr %18, i64 0, i64 0, !dbg !2148
  %20 = load ptr, ptr %2, align 8, !dbg !2150
  %21 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %20, i32 0, i32 2, !dbg !2151
  %22 = load i64, ptr %21, align 8, !dbg !2151
  %23 = load ptr, ptr %2, align 8, !dbg !2152
  %24 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %23, i32 0, i32 3, !dbg !2153
  %25 = load i32, ptr %24, align 8, !dbg !2153
  %26 = zext i32 %25 to i64, !dbg !2154
  %27 = load ptr, ptr %2, align 8, !dbg !2155
  %28 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %27, i32 0, i32 4, !dbg !2156
  %29 = getelementptr inbounds [65 x i8], ptr %28, i64 0, i64 0, !dbg !2155
  %30 = load ptr, ptr %2, align 8, !dbg !2157
  %31 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %30, i32 0, i32 5, !dbg !2158
  %32 = getelementptr inbounds [128 x i8], ptr %31, i64 0, i64 0, !dbg !2157
  %33 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.48, ptr noundef %16, ptr noundef %19, i64 noundef %22, i64 noundef %26, ptr noundef %29, ptr noundef %32) #9, !dbg !2159
  call void @sqlite_lock(i32 noundef 1), !dbg !2160
  %34 = load ptr, ptr %7, align 8, !dbg !2161
  %35 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2163
  %36 = call i32 @sqlite3_prepare(ptr noundef %34, ptr noundef %35, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !2164
  store i32 %36, ptr %6, align 4, !dbg !2165
  %37 = icmp eq i32 %36, 0, !dbg !2166
  br i1 %37, label %38, label %41, !dbg !2167

38:                                               ; preds = %12
  %39 = load ptr, ptr %5, align 8, !dbg !2168
  %40 = call i32 @sqlite3_step(ptr noundef %39), !dbg !2170
  store i32 0, ptr %3, align 4, !dbg !2171
  br label %45, !dbg !2172

41:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2173, metadata !DIExpression()), !dbg !2175
  %42 = load ptr, ptr %7, align 8, !dbg !2176
  %43 = call ptr @sqlite3_errmsg(ptr noundef %42), !dbg !2177
  store ptr %43, ptr %8, align 8, !dbg !2175
  %44 = load ptr, ptr %8, align 8, !dbg !2178
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.41, ptr noundef %44), !dbg !2179
  br label %45

45:                                               ; preds = %41, %38
  %46 = load ptr, ptr %5, align 8, !dbg !2180
  %47 = call i32 @sqlite3_finalize(ptr noundef %46), !dbg !2181
  call void @sqlite_unlock(i32 noundef 1), !dbg !2182
  br label %48, !dbg !2183

48:                                               ; preds = %45, %1
  %49 = load i32, ptr %3, align 4, !dbg !2184
  ret i32 %49, !dbg !2185
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_get_oauth_key(ptr noundef %0, ptr noundef %1) #0 !dbg !2186 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2187, metadata !DIExpression()), !dbg !2188
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2189, metadata !DIExpression()), !dbg !2190
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2191, metadata !DIExpression()), !dbg !2192
  store i32 -1, ptr %5, align 4, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2193, metadata !DIExpression()), !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2195, metadata !DIExpression()), !dbg !2196
  store ptr null, ptr %7, align 8, !dbg !2196
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2197, metadata !DIExpression()), !dbg !2198
  store i32 0, ptr %8, align 4, !dbg !2198
  %16 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2199
  %17 = load ptr, ptr %3, align 8, !dbg !2200
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %16, i64 noundef 1025, ptr noundef @.str.49, ptr noundef %17) #9, !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2202, metadata !DIExpression()), !dbg !2203
  %19 = call ptr @get_sqlite_connection(), !dbg !2204
  store ptr %19, ptr %9, align 8, !dbg !2203
  %20 = load ptr, ptr %9, align 8, !dbg !2205
  %21 = icmp ne ptr %20, null, !dbg !2205
  br i1 %21, label %22, label %142, !dbg !2207

22:                                               ; preds = %2
  call void @sqlite_lock(i32 noundef 0), !dbg !2208
  %23 = load ptr, ptr %9, align 8, !dbg !2210
  %24 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2212
  %25 = call i32 @sqlite3_prepare(ptr noundef %23, ptr noundef %24, i32 noundef -1, ptr noundef %7, ptr noundef null), !dbg !2213
  store i32 %25, ptr %8, align 4, !dbg !2214
  %26 = icmp eq i32 %25, 0, !dbg !2215
  br i1 %26, label %27, label %135, !dbg !2216

27:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2217, metadata !DIExpression()), !dbg !2219
  %28 = load ptr, ptr %7, align 8, !dbg !2220
  %29 = call i32 @sqlite3_step(ptr noundef %28), !dbg !2221
  store i32 %29, ptr %10, align 4, !dbg !2219
  %30 = load i32, ptr %10, align 4, !dbg !2222
  %31 = icmp eq i32 %30, 100, !dbg !2224
  br i1 %31, label %32, label %134, !dbg !2225

32:                                               ; preds = %27
  br label %33, !dbg !2226

33:                                               ; preds = %32
  %34 = load ptr, ptr %4, align 8, !dbg !2228
  %35 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %34, i32 0, i32 1, !dbg !2228
  %36 = getelementptr inbounds [257 x i8], ptr %35, i64 0, i64 0, !dbg !2228
  %37 = load ptr, ptr %7, align 8, !dbg !2228
  %38 = call ptr @sqlite3_column_text(ptr noundef %37, i32 noundef 0), !dbg !2228
  %39 = icmp ne ptr %36, %38, !dbg !2228
  br i1 %39, label %40, label %54, !dbg !2231

40:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2232, metadata !DIExpression()), !dbg !2236
  store i64 257, ptr %11, align 8, !dbg !2236
  %41 = load ptr, ptr %4, align 8, !dbg !2236
  %42 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %41, i32 0, i32 1, !dbg !2236
  %43 = getelementptr inbounds [257 x i8], ptr %42, i64 0, i64 0, !dbg !2236
  %44 = load ptr, ptr %7, align 8, !dbg !2236
  %45 = call ptr @sqlite3_column_text(ptr noundef %44, i32 noundef 0), !dbg !2236
  %46 = load i64, ptr %11, align 8, !dbg !2236
  %47 = call ptr @strncpy(ptr noundef %43, ptr noundef %45, i64 noundef %46) #9, !dbg !2236
  %48 = load ptr, ptr %4, align 8, !dbg !2236
  %49 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %48, i32 0, i32 1, !dbg !2236
  %50 = getelementptr inbounds [257 x i8], ptr %49, i64 0, i64 0, !dbg !2236
  %51 = load i64, ptr %11, align 8, !dbg !2236
  %52 = sub i64 %51, 1, !dbg !2236
  %53 = getelementptr inbounds i8, ptr %50, i64 %52, !dbg !2236
  store i8 0, ptr %53, align 1, !dbg !2236
  br label %54, !dbg !2237

54:                                               ; preds = %40, %33
  br label %55, !dbg !2231

55:                                               ; preds = %54
  %56 = load ptr, ptr %7, align 8, !dbg !2238
  %57 = call ptr @sqlite3_column_text(ptr noundef %56, i32 noundef 1), !dbg !2239
  %58 = call i64 @strtoll(ptr noundef %57, ptr noundef null, i32 noundef 10) #9, !dbg !2240
  %59 = load ptr, ptr %4, align 8, !dbg !2241
  %60 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %59, i32 0, i32 2, !dbg !2242
  store i64 %58, ptr %60, align 8, !dbg !2243
  %61 = load ptr, ptr %7, align 8, !dbg !2244
  %62 = call ptr @sqlite3_column_text(ptr noundef %61, i32 noundef 2), !dbg !2245
  %63 = call i64 @strtol(ptr noundef %62, ptr noundef null, i32 noundef 10) #9, !dbg !2246
  %64 = trunc i64 %63 to i32, !dbg !2247
  %65 = load ptr, ptr %4, align 8, !dbg !2248
  %66 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %65, i32 0, i32 3, !dbg !2249
  store i32 %64, ptr %66, align 8, !dbg !2250
  br label %67, !dbg !2251

67:                                               ; preds = %55
  %68 = load ptr, ptr %4, align 8, !dbg !2252
  %69 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %68, i32 0, i32 4, !dbg !2252
  %70 = getelementptr inbounds [65 x i8], ptr %69, i64 0, i64 0, !dbg !2252
  %71 = load ptr, ptr %7, align 8, !dbg !2252
  %72 = call ptr @sqlite3_column_text(ptr noundef %71, i32 noundef 3), !dbg !2252
  %73 = icmp ne ptr %70, %72, !dbg !2252
  br i1 %73, label %74, label %88, !dbg !2255

74:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2256, metadata !DIExpression()), !dbg !2260
  store i64 65, ptr %12, align 8, !dbg !2260
  %75 = load ptr, ptr %4, align 8, !dbg !2260
  %76 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %75, i32 0, i32 4, !dbg !2260
  %77 = getelementptr inbounds [65 x i8], ptr %76, i64 0, i64 0, !dbg !2260
  %78 = load ptr, ptr %7, align 8, !dbg !2260
  %79 = call ptr @sqlite3_column_text(ptr noundef %78, i32 noundef 3), !dbg !2260
  %80 = load i64, ptr %12, align 8, !dbg !2260
  %81 = call ptr @strncpy(ptr noundef %77, ptr noundef %79, i64 noundef %80) #9, !dbg !2260
  %82 = load ptr, ptr %4, align 8, !dbg !2260
  %83 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %82, i32 0, i32 4, !dbg !2260
  %84 = getelementptr inbounds [65 x i8], ptr %83, i64 0, i64 0, !dbg !2260
  %85 = load i64, ptr %12, align 8, !dbg !2260
  %86 = sub i64 %85, 1, !dbg !2260
  %87 = getelementptr inbounds i8, ptr %84, i64 %86, !dbg !2260
  store i8 0, ptr %87, align 1, !dbg !2260
  br label %88, !dbg !2261

88:                                               ; preds = %74, %67
  br label %89, !dbg !2255

89:                                               ; preds = %88
  br label %90, !dbg !2262

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 8, !dbg !2263
  %92 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %91, i32 0, i32 5, !dbg !2263
  %93 = getelementptr inbounds [128 x i8], ptr %92, i64 0, i64 0, !dbg !2263
  %94 = load ptr, ptr %7, align 8, !dbg !2263
  %95 = call ptr @sqlite3_column_text(ptr noundef %94, i32 noundef 4), !dbg !2263
  %96 = icmp ne ptr %93, %95, !dbg !2263
  br i1 %96, label %97, label %111, !dbg !2266

97:                                               ; preds = %90
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2267, metadata !DIExpression()), !dbg !2271
  store i64 128, ptr %13, align 8, !dbg !2271
  %98 = load ptr, ptr %4, align 8, !dbg !2271
  %99 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %98, i32 0, i32 5, !dbg !2271
  %100 = getelementptr inbounds [128 x i8], ptr %99, i64 0, i64 0, !dbg !2271
  %101 = load ptr, ptr %7, align 8, !dbg !2271
  %102 = call ptr @sqlite3_column_text(ptr noundef %101, i32 noundef 4), !dbg !2271
  %103 = load i64, ptr %13, align 8, !dbg !2271
  %104 = call ptr @strncpy(ptr noundef %100, ptr noundef %102, i64 noundef %103) #9, !dbg !2271
  %105 = load ptr, ptr %4, align 8, !dbg !2271
  %106 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %105, i32 0, i32 5, !dbg !2271
  %107 = getelementptr inbounds [128 x i8], ptr %106, i64 0, i64 0, !dbg !2271
  %108 = load i64, ptr %13, align 8, !dbg !2271
  %109 = sub i64 %108, 1, !dbg !2271
  %110 = getelementptr inbounds i8, ptr %107, i64 %109, !dbg !2271
  store i8 0, ptr %110, align 1, !dbg !2271
  br label %111, !dbg !2272

111:                                              ; preds = %97, %90
  br label %112, !dbg !2266

112:                                              ; preds = %111
  br label %113, !dbg !2273

113:                                              ; preds = %112
  %114 = load ptr, ptr %4, align 8, !dbg !2274
  %115 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %114, i32 0, i32 0, !dbg !2274
  %116 = getelementptr inbounds [129 x i8], ptr %115, i64 0, i64 0, !dbg !2274
  %117 = load ptr, ptr %3, align 8, !dbg !2274
  %118 = icmp ne ptr %116, %117, !dbg !2274
  br i1 %118, label %119, label %132, !dbg !2277

119:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2278, metadata !DIExpression()), !dbg !2282
  store i64 129, ptr %14, align 8, !dbg !2282
  %120 = load ptr, ptr %4, align 8, !dbg !2282
  %121 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %120, i32 0, i32 0, !dbg !2282
  %122 = getelementptr inbounds [129 x i8], ptr %121, i64 0, i64 0, !dbg !2282
  %123 = load ptr, ptr %3, align 8, !dbg !2282
  %124 = load i64, ptr %14, align 8, !dbg !2282
  %125 = call ptr @strncpy(ptr noundef %122, ptr noundef %123, i64 noundef %124) #9, !dbg !2282
  %126 = load ptr, ptr %4, align 8, !dbg !2282
  %127 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %126, i32 0, i32 0, !dbg !2282
  %128 = getelementptr inbounds [129 x i8], ptr %127, i64 0, i64 0, !dbg !2282
  %129 = load i64, ptr %14, align 8, !dbg !2282
  %130 = sub i64 %129, 1, !dbg !2282
  %131 = getelementptr inbounds i8, ptr %128, i64 %130, !dbg !2282
  store i8 0, ptr %131, align 1, !dbg !2282
  br label %132, !dbg !2283

132:                                              ; preds = %119, %113
  br label %133, !dbg !2277

133:                                              ; preds = %132
  store i32 0, ptr %5, align 4, !dbg !2284
  br label %134, !dbg !2285

134:                                              ; preds = %133, %27
  br label %139, !dbg !2286

135:                                              ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2287, metadata !DIExpression()), !dbg !2289
  %136 = load ptr, ptr %9, align 8, !dbg !2290
  %137 = call ptr @sqlite3_errmsg(ptr noundef %136), !dbg !2291
  store ptr %137, ptr %15, align 8, !dbg !2289
  %138 = load ptr, ptr %15, align 8, !dbg !2292
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %138), !dbg !2293
  br label %139

139:                                              ; preds = %135, %134
  %140 = load ptr, ptr %7, align 8, !dbg !2294
  %141 = call i32 @sqlite3_finalize(ptr noundef %140), !dbg !2295
  call void @sqlite_unlock(i32 noundef 0), !dbg !2296
  br label %142, !dbg !2297

142:                                              ; preds = %139, %2
  %143 = load i32, ptr %5, align 4, !dbg !2298
  ret i32 %143, !dbg !2299
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_del_oauth_key(ptr noundef %0) #0 !dbg !2300 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2301, metadata !DIExpression()), !dbg !2302
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2303, metadata !DIExpression()), !dbg !2304
  store i32 -1, ptr %3, align 4, !dbg !2304
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2305, metadata !DIExpression()), !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2307, metadata !DIExpression()), !dbg !2308
  store ptr null, ptr %5, align 8, !dbg !2308
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2309, metadata !DIExpression()), !dbg !2310
  store i32 0, ptr %6, align 4, !dbg !2310
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2311
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2312, metadata !DIExpression()), !dbg !2313
  %9 = call ptr @get_sqlite_connection(), !dbg !2314
  store ptr %9, ptr %7, align 8, !dbg !2313
  %10 = load ptr, ptr %7, align 8, !dbg !2315
  %11 = icmp ne ptr %10, null, !dbg !2315
  br i1 %11, label %12, label %30, !dbg !2317

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2318
  %14 = load ptr, ptr %2, align 8, !dbg !2320
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.50, ptr noundef %14) #9, !dbg !2321
  call void @sqlite_lock(i32 noundef 1), !dbg !2322
  %16 = load ptr, ptr %7, align 8, !dbg !2323
  %17 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2325
  %18 = call i32 @sqlite3_prepare(ptr noundef %16, ptr noundef %17, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !2326
  store i32 %18, ptr %6, align 4, !dbg !2327
  %19 = icmp eq i32 %18, 0, !dbg !2328
  br i1 %19, label %20, label %23, !dbg !2329

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8, !dbg !2330
  %22 = call i32 @sqlite3_step(ptr noundef %21), !dbg !2332
  store i32 0, ptr %3, align 4, !dbg !2333
  br label %27, !dbg !2334

23:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2335, metadata !DIExpression()), !dbg !2337
  %24 = load ptr, ptr %7, align 8, !dbg !2338
  %25 = call ptr @sqlite3_errmsg(ptr noundef %24), !dbg !2339
  store ptr %25, ptr %8, align 8, !dbg !2337
  %26 = load ptr, ptr %8, align 8, !dbg !2340
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %26), !dbg !2341
  br label %27

27:                                               ; preds = %23, %20
  %28 = load ptr, ptr %5, align 8, !dbg !2342
  %29 = call i32 @sqlite3_finalize(ptr noundef %28), !dbg !2343
  call void @sqlite_unlock(i32 noundef 1), !dbg !2344
  br label %30, !dbg !2345

30:                                               ; preds = %27, %1
  %31 = load i32, ptr %3, align 4, !dbg !2346
  ret i32 %31, !dbg !2347
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_oauth_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !2348 {
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
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca [256 x i8], align 16
  %24 = alloca [256 x i8], align 16
  %25 = alloca ptr, align 8
  %26 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2349, metadata !DIExpression()), !dbg !2350
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2351, metadata !DIExpression()), !dbg !2352
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2353, metadata !DIExpression()), !dbg !2354
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2355, metadata !DIExpression()), !dbg !2356
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2357, metadata !DIExpression()), !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2359, metadata !DIExpression()), !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2361, metadata !DIExpression()), !dbg !2362
  store ptr %11, ptr %12, align 8, !dbg !2362
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2363
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2364, metadata !DIExpression()), !dbg !2365
  store i32 -1, ptr %13, align 4, !dbg !2365
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2368, metadata !DIExpression()), !dbg !2369
  store ptr null, ptr %15, align 8, !dbg !2369
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2370, metadata !DIExpression()), !dbg !2371
  store i32 0, ptr %16, align 4, !dbg !2371
  %27 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2372
  %28 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %27, i64 noundef 1025, ptr noundef @.str.51) #9, !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2374, metadata !DIExpression()), !dbg !2375
  %29 = call ptr @get_sqlite_connection(), !dbg !2376
  store ptr %29, ptr %17, align 8, !dbg !2375
  %30 = load ptr, ptr %17, align 8, !dbg !2377
  %31 = icmp ne ptr %30, null, !dbg !2377
  br i1 %31, label %32, label %213, !dbg !2379

32:                                               ; preds = %5
  call void @sqlite_lock(i32 noundef 0), !dbg !2380
  %33 = load ptr, ptr %17, align 8, !dbg !2382
  %34 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2384
  %35 = call i32 @sqlite3_prepare(ptr noundef %33, ptr noundef %34, i32 noundef -1, ptr noundef %15, ptr noundef null), !dbg !2385
  store i32 %35, ptr %16, align 4, !dbg !2386
  %36 = icmp eq i32 %35, 0, !dbg !2387
  br i1 %36, label %37, label %206, !dbg !2388

37:                                               ; preds = %32
  store i32 0, ptr %13, align 4, !dbg !2389
  br label %38, !dbg !2391

38:                                               ; preds = %37, %204
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2392, metadata !DIExpression()), !dbg !2394
  %39 = load ptr, ptr %15, align 8, !dbg !2395
  %40 = call i32 @sqlite3_step(ptr noundef %39), !dbg !2396
  store i32 %40, ptr %18, align 4, !dbg !2394
  %41 = load i32, ptr %18, align 4, !dbg !2397
  %42 = icmp eq i32 %41, 100, !dbg !2399
  br i1 %42, label %43, label %196, !dbg !2400

43:                                               ; preds = %38
  br label %44, !dbg !2401

44:                                               ; preds = %43
  %45 = load ptr, ptr %12, align 8, !dbg !2403
  %46 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %45, i32 0, i32 1, !dbg !2403
  %47 = getelementptr inbounds [257 x i8], ptr %46, i64 0, i64 0, !dbg !2403
  %48 = load ptr, ptr %15, align 8, !dbg !2403
  %49 = call ptr @sqlite3_column_text(ptr noundef %48, i32 noundef 0), !dbg !2403
  %50 = icmp ne ptr %47, %49, !dbg !2403
  br i1 %50, label %51, label %65, !dbg !2406

51:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2407, metadata !DIExpression()), !dbg !2411
  store i64 257, ptr %19, align 8, !dbg !2411
  %52 = load ptr, ptr %12, align 8, !dbg !2411
  %53 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %52, i32 0, i32 1, !dbg !2411
  %54 = getelementptr inbounds [257 x i8], ptr %53, i64 0, i64 0, !dbg !2411
  %55 = load ptr, ptr %15, align 8, !dbg !2411
  %56 = call ptr @sqlite3_column_text(ptr noundef %55, i32 noundef 0), !dbg !2411
  %57 = load i64, ptr %19, align 8, !dbg !2411
  %58 = call ptr @strncpy(ptr noundef %54, ptr noundef %56, i64 noundef %57) #9, !dbg !2411
  %59 = load ptr, ptr %12, align 8, !dbg !2411
  %60 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %59, i32 0, i32 1, !dbg !2411
  %61 = getelementptr inbounds [257 x i8], ptr %60, i64 0, i64 0, !dbg !2411
  %62 = load i64, ptr %19, align 8, !dbg !2411
  %63 = sub i64 %62, 1, !dbg !2411
  %64 = getelementptr inbounds i8, ptr %61, i64 %63, !dbg !2411
  store i8 0, ptr %64, align 1, !dbg !2411
  br label %65, !dbg !2412

65:                                               ; preds = %51, %44
  br label %66, !dbg !2406

66:                                               ; preds = %65
  %67 = load ptr, ptr %15, align 8, !dbg !2413
  %68 = call ptr @sqlite3_column_text(ptr noundef %67, i32 noundef 1), !dbg !2414
  %69 = call i64 @strtoll(ptr noundef %68, ptr noundef null, i32 noundef 10) #9, !dbg !2415
  %70 = load ptr, ptr %12, align 8, !dbg !2416
  %71 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %70, i32 0, i32 2, !dbg !2417
  store i64 %69, ptr %71, align 8, !dbg !2418
  %72 = load ptr, ptr %15, align 8, !dbg !2419
  %73 = call ptr @sqlite3_column_text(ptr noundef %72, i32 noundef 2), !dbg !2420
  %74 = call i64 @strtol(ptr noundef %73, ptr noundef null, i32 noundef 10) #9, !dbg !2421
  %75 = trunc i64 %74 to i32, !dbg !2422
  %76 = load ptr, ptr %12, align 8, !dbg !2423
  %77 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %76, i32 0, i32 3, !dbg !2424
  store i32 %75, ptr %77, align 8, !dbg !2425
  br label %78, !dbg !2426

78:                                               ; preds = %66
  %79 = load ptr, ptr %12, align 8, !dbg !2427
  %80 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %79, i32 0, i32 4, !dbg !2427
  %81 = getelementptr inbounds [65 x i8], ptr %80, i64 0, i64 0, !dbg !2427
  %82 = load ptr, ptr %15, align 8, !dbg !2427
  %83 = call ptr @sqlite3_column_text(ptr noundef %82, i32 noundef 3), !dbg !2427
  %84 = icmp ne ptr %81, %83, !dbg !2427
  br i1 %84, label %85, label %99, !dbg !2430

85:                                               ; preds = %78
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2431, metadata !DIExpression()), !dbg !2435
  store i64 65, ptr %20, align 8, !dbg !2435
  %86 = load ptr, ptr %12, align 8, !dbg !2435
  %87 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %86, i32 0, i32 4, !dbg !2435
  %88 = getelementptr inbounds [65 x i8], ptr %87, i64 0, i64 0, !dbg !2435
  %89 = load ptr, ptr %15, align 8, !dbg !2435
  %90 = call ptr @sqlite3_column_text(ptr noundef %89, i32 noundef 3), !dbg !2435
  %91 = load i64, ptr %20, align 8, !dbg !2435
  %92 = call ptr @strncpy(ptr noundef %88, ptr noundef %90, i64 noundef %91) #9, !dbg !2435
  %93 = load ptr, ptr %12, align 8, !dbg !2435
  %94 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %93, i32 0, i32 4, !dbg !2435
  %95 = getelementptr inbounds [65 x i8], ptr %94, i64 0, i64 0, !dbg !2435
  %96 = load i64, ptr %20, align 8, !dbg !2435
  %97 = sub i64 %96, 1, !dbg !2435
  %98 = getelementptr inbounds i8, ptr %95, i64 %97, !dbg !2435
  store i8 0, ptr %98, align 1, !dbg !2435
  br label %99, !dbg !2436

99:                                               ; preds = %85, %78
  br label %100, !dbg !2430

100:                                              ; preds = %99
  br label %101, !dbg !2437

101:                                              ; preds = %100
  %102 = load ptr, ptr %12, align 8, !dbg !2438
  %103 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %102, i32 0, i32 5, !dbg !2438
  %104 = getelementptr inbounds [128 x i8], ptr %103, i64 0, i64 0, !dbg !2438
  %105 = load ptr, ptr %15, align 8, !dbg !2438
  %106 = call ptr @sqlite3_column_text(ptr noundef %105, i32 noundef 4), !dbg !2438
  %107 = icmp ne ptr %104, %106, !dbg !2438
  br i1 %107, label %108, label %122, !dbg !2441

108:                                              ; preds = %101
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2442, metadata !DIExpression()), !dbg !2446
  store i64 128, ptr %21, align 8, !dbg !2446
  %109 = load ptr, ptr %12, align 8, !dbg !2446
  %110 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %109, i32 0, i32 5, !dbg !2446
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !2446
  %112 = load ptr, ptr %15, align 8, !dbg !2446
  %113 = call ptr @sqlite3_column_text(ptr noundef %112, i32 noundef 4), !dbg !2446
  %114 = load i64, ptr %21, align 8, !dbg !2446
  %115 = call ptr @strncpy(ptr noundef %111, ptr noundef %113, i64 noundef %114) #9, !dbg !2446
  %116 = load ptr, ptr %12, align 8, !dbg !2446
  %117 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %116, i32 0, i32 5, !dbg !2446
  %118 = getelementptr inbounds [128 x i8], ptr %117, i64 0, i64 0, !dbg !2446
  %119 = load i64, ptr %21, align 8, !dbg !2446
  %120 = sub i64 %119, 1, !dbg !2446
  %121 = getelementptr inbounds i8, ptr %118, i64 %120, !dbg !2446
  store i8 0, ptr %121, align 1, !dbg !2446
  br label %122, !dbg !2447

122:                                              ; preds = %108, %101
  br label %123, !dbg !2441

123:                                              ; preds = %122
  br label %124, !dbg !2448

124:                                              ; preds = %123
  %125 = load ptr, ptr %12, align 8, !dbg !2449
  %126 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %125, i32 0, i32 0, !dbg !2449
  %127 = getelementptr inbounds [129 x i8], ptr %126, i64 0, i64 0, !dbg !2449
  %128 = load ptr, ptr %15, align 8, !dbg !2449
  %129 = call ptr @sqlite3_column_text(ptr noundef %128, i32 noundef 5), !dbg !2449
  %130 = icmp ne ptr %127, %129, !dbg !2449
  br i1 %130, label %131, label %145, !dbg !2452

131:                                              ; preds = %124
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2453, metadata !DIExpression()), !dbg !2457
  store i64 129, ptr %22, align 8, !dbg !2457
  %132 = load ptr, ptr %12, align 8, !dbg !2457
  %133 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %132, i32 0, i32 0, !dbg !2457
  %134 = getelementptr inbounds [129 x i8], ptr %133, i64 0, i64 0, !dbg !2457
  %135 = load ptr, ptr %15, align 8, !dbg !2457
  %136 = call ptr @sqlite3_column_text(ptr noundef %135, i32 noundef 5), !dbg !2457
  %137 = load i64, ptr %22, align 8, !dbg !2457
  %138 = call ptr @strncpy(ptr noundef %134, ptr noundef %136, i64 noundef %137) #9, !dbg !2457
  %139 = load ptr, ptr %12, align 8, !dbg !2457
  %140 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %139, i32 0, i32 0, !dbg !2457
  %141 = getelementptr inbounds [129 x i8], ptr %140, i64 0, i64 0, !dbg !2457
  %142 = load i64, ptr %22, align 8, !dbg !2457
  %143 = sub i64 %142, 1, !dbg !2457
  %144 = getelementptr inbounds i8, ptr %141, i64 %143, !dbg !2457
  store i8 0, ptr %144, align 1, !dbg !2457
  br label %145, !dbg !2458

145:                                              ; preds = %131, %124
  br label %146, !dbg !2452

146:                                              ; preds = %145
  %147 = load ptr, ptr %6, align 8, !dbg !2459
  %148 = icmp ne ptr %147, null, !dbg !2459
  br i1 %148, label %149, label %177, !dbg !2461

149:                                              ; preds = %146
  %150 = load ptr, ptr %6, align 8, !dbg !2462
  %151 = load ptr, ptr %12, align 8, !dbg !2464
  %152 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %151, i32 0, i32 0, !dbg !2465
  %153 = getelementptr inbounds [129 x i8], ptr %152, i64 0, i64 0, !dbg !2464
  call void @add_to_secrets_list(ptr noundef %150, ptr noundef %153), !dbg !2466
  %154 = load ptr, ptr %7, align 8, !dbg !2467
  %155 = load ptr, ptr %12, align 8, !dbg !2468
  %156 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %155, i32 0, i32 4, !dbg !2469
  %157 = getelementptr inbounds [65 x i8], ptr %156, i64 0, i64 0, !dbg !2468
  call void @add_to_secrets_list(ptr noundef %154, ptr noundef %157), !dbg !2470
  %158 = load ptr, ptr %10, align 8, !dbg !2471
  %159 = load ptr, ptr %12, align 8, !dbg !2472
  %160 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %159, i32 0, i32 5, !dbg !2473
  %161 = getelementptr inbounds [128 x i8], ptr %160, i64 0, i64 0, !dbg !2472
  call void @add_to_secrets_list(ptr noundef %158, ptr noundef %161), !dbg !2474
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2475, metadata !DIExpression()), !dbg !2480
  %162 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !2481
  %163 = load ptr, ptr %12, align 8, !dbg !2482
  %164 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %163, i32 0, i32 2, !dbg !2483
  %165 = load i64, ptr %164, align 8, !dbg !2483
  %166 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %162, i64 noundef 255, ptr noundef @.str.52, i64 noundef %165) #9, !dbg !2484
  %167 = load ptr, ptr %8, align 8, !dbg !2485
  %168 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !2486
  call void @add_to_secrets_list(ptr noundef %167, ptr noundef %168), !dbg !2487
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2488, metadata !DIExpression()), !dbg !2490
  %169 = getelementptr inbounds [256 x i8], ptr %24, i64 0, i64 0, !dbg !2491
  %170 = load ptr, ptr %12, align 8, !dbg !2492
  %171 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %170, i32 0, i32 3, !dbg !2493
  %172 = load i32, ptr %171, align 8, !dbg !2493
  %173 = zext i32 %172 to i64, !dbg !2494
  %174 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %169, i64 noundef 255, ptr noundef @.str.53, i64 noundef %173) #9, !dbg !2495
  %175 = load ptr, ptr %9, align 8, !dbg !2496
  %176 = getelementptr inbounds [256 x i8], ptr %24, i64 0, i64 0, !dbg !2497
  call void @add_to_secrets_list(ptr noundef %175, ptr noundef %176), !dbg !2498
  br label %195, !dbg !2499

177:                                              ; preds = %146
  %178 = load ptr, ptr %12, align 8, !dbg !2500
  %179 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %178, i32 0, i32 0, !dbg !2502
  %180 = getelementptr inbounds [129 x i8], ptr %179, i64 0, i64 0, !dbg !2500
  %181 = load ptr, ptr %12, align 8, !dbg !2503
  %182 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %181, i32 0, i32 1, !dbg !2504
  %183 = getelementptr inbounds [257 x i8], ptr %182, i64 0, i64 0, !dbg !2503
  %184 = load ptr, ptr %12, align 8, !dbg !2505
  %185 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %184, i32 0, i32 2, !dbg !2506
  %186 = load i64, ptr %185, align 8, !dbg !2506
  %187 = load ptr, ptr %12, align 8, !dbg !2507
  %188 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %187, i32 0, i32 3, !dbg !2508
  %189 = load i32, ptr %188, align 8, !dbg !2508
  %190 = zext i32 %189 to i64, !dbg !2509
  %191 = load ptr, ptr %12, align 8, !dbg !2510
  %192 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %191, i32 0, i32 4, !dbg !2511
  %193 = getelementptr inbounds [65 x i8], ptr %192, i64 0, i64 0, !dbg !2510
  %194 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %180, ptr noundef %183, i64 noundef %186, i64 noundef %190, ptr noundef %193), !dbg !2512
  br label %195

195:                                              ; preds = %177, %149
  br label %204, !dbg !2513

196:                                              ; preds = %38
  %197 = load i32, ptr %18, align 4, !dbg !2514
  %198 = icmp eq i32 %197, 101, !dbg !2516
  br i1 %198, label %199, label %200, !dbg !2517

199:                                              ; preds = %196
  br label %205, !dbg !2518

200:                                              ; preds = %196
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2520, metadata !DIExpression()), !dbg !2522
  %201 = load ptr, ptr %17, align 8, !dbg !2523
  %202 = call ptr @sqlite3_errmsg(ptr noundef %201), !dbg !2524
  store ptr %202, ptr %25, align 8, !dbg !2522
  %203 = load ptr, ptr %25, align 8, !dbg !2525
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %203), !dbg !2526
  store i32 -1, ptr %13, align 4, !dbg !2527
  br label %205, !dbg !2528

204:                                              ; preds = %195
  br label %38, !dbg !2391, !llvm.loop !2529

205:                                              ; preds = %200, %199
  br label %210, !dbg !2531

206:                                              ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2532, metadata !DIExpression()), !dbg !2534
  %207 = load ptr, ptr %17, align 8, !dbg !2535
  %208 = call ptr @sqlite3_errmsg(ptr noundef %207), !dbg !2536
  store ptr %208, ptr %26, align 8, !dbg !2534
  %209 = load ptr, ptr %26, align 8, !dbg !2537
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %209), !dbg !2538
  br label %210

210:                                              ; preds = %206, %205
  %211 = load ptr, ptr %15, align 8, !dbg !2539
  %212 = call i32 @sqlite3_finalize(ptr noundef %211), !dbg !2540
  call void @sqlite_unlock(i32 noundef 0), !dbg !2541
  br label %213, !dbg !2542

213:                                              ; preds = %210, %5
  %214 = load i32, ptr %13, align 4, !dbg !2543
  ret i32 %214, !dbg !2544
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_get_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2545 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2546, metadata !DIExpression()), !dbg !2547
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2548, metadata !DIExpression()), !dbg !2549
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2552, metadata !DIExpression()), !dbg !2553
  store i32 -1, ptr %7, align 4, !dbg !2553
  %15 = load ptr, ptr %5, align 8, !dbg !2554
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !2554
  store i8 0, ptr %16, align 1, !dbg !2555
  %17 = load ptr, ptr %6, align 8, !dbg !2556
  %18 = getelementptr inbounds i8, ptr %17, i64 0, !dbg !2556
  store i8 0, ptr %18, align 1, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2558, metadata !DIExpression()), !dbg !2559
  %19 = call ptr @get_sqlite_connection(), !dbg !2560
  store ptr %19, ptr %8, align 8, !dbg !2559
  %20 = load ptr, ptr %8, align 8, !dbg !2561
  %21 = icmp ne ptr %20, null, !dbg !2561
  br i1 %21, label %22, label %62, !dbg !2563

22:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2567, metadata !DIExpression()), !dbg !2568
  store ptr null, ptr %10, align 8, !dbg !2568
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2569, metadata !DIExpression()), !dbg !2570
  store i32 0, ptr %11, align 4, !dbg !2570
  %23 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2571
  %24 = load ptr, ptr %4, align 8, !dbg !2572
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 1025, ptr noundef @.str.55, ptr noundef %24) #9, !dbg !2573
  call void @sqlite_lock(i32 noundef 0), !dbg !2574
  %26 = load ptr, ptr %8, align 8, !dbg !2575
  %27 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2577
  %28 = call i32 @sqlite3_prepare(ptr noundef %26, ptr noundef %27, i32 noundef -1, ptr noundef %10, ptr noundef null), !dbg !2578
  store i32 %28, ptr %11, align 4, !dbg !2579
  %29 = icmp eq i32 %28, 0, !dbg !2580
  br i1 %29, label %30, label %55, !dbg !2581

30:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2582, metadata !DIExpression()), !dbg !2584
  %31 = load ptr, ptr %10, align 8, !dbg !2585
  %32 = call i32 @sqlite3_step(ptr noundef %31), !dbg !2586
  store i32 %32, ptr %12, align 4, !dbg !2584
  %33 = load i32, ptr %12, align 4, !dbg !2587
  %34 = icmp eq i32 %33, 100, !dbg !2589
  br i1 %34, label %35, label %54, !dbg !2590

35:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2591, metadata !DIExpression()), !dbg !2593
  %36 = load ptr, ptr %10, align 8, !dbg !2594
  %37 = call ptr @sqlite3_column_text(ptr noundef %36, i32 noundef 0), !dbg !2595
  store ptr %37, ptr %13, align 8, !dbg !2593
  %38 = load ptr, ptr %13, align 8, !dbg !2596
  %39 = icmp ne ptr %38, null, !dbg !2596
  br i1 %39, label %40, label %44, !dbg !2598

40:                                               ; preds = %35
  %41 = load ptr, ptr %5, align 8, !dbg !2599
  %42 = load ptr, ptr %13, align 8, !dbg !2601
  %43 = call ptr @strncpy(ptr noundef %41, ptr noundef %42, i64 noundef 127) #9, !dbg !2602
  br label %44, !dbg !2603

44:                                               ; preds = %40, %35
  %45 = load ptr, ptr %10, align 8, !dbg !2604
  %46 = call ptr @sqlite3_column_text(ptr noundef %45, i32 noundef 1), !dbg !2605
  store ptr %46, ptr %13, align 8, !dbg !2606
  %47 = load ptr, ptr %13, align 8, !dbg !2607
  %48 = icmp ne ptr %47, null, !dbg !2607
  br i1 %48, label %49, label %53, !dbg !2609

49:                                               ; preds = %44
  %50 = load ptr, ptr %6, align 8, !dbg !2610
  %51 = load ptr, ptr %13, align 8, !dbg !2612
  %52 = call ptr @strncpy(ptr noundef %50, ptr noundef %51, i64 noundef 256) #9, !dbg !2613
  br label %53, !dbg !2614

53:                                               ; preds = %49, %44
  store i32 0, ptr %7, align 4, !dbg !2615
  br label %54, !dbg !2616

54:                                               ; preds = %53, %30
  br label %59, !dbg !2617

55:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2618, metadata !DIExpression()), !dbg !2620
  %56 = load ptr, ptr %8, align 8, !dbg !2621
  %57 = call ptr @sqlite3_errmsg(ptr noundef %56), !dbg !2622
  store ptr %57, ptr %14, align 8, !dbg !2620
  %58 = load ptr, ptr %14, align 8, !dbg !2623
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %58), !dbg !2624
  br label %59

59:                                               ; preds = %55, %54
  %60 = load ptr, ptr %10, align 8, !dbg !2625
  %61 = call i32 @sqlite3_finalize(ptr noundef %60), !dbg !2626
  call void @sqlite_unlock(i32 noundef 0), !dbg !2627
  br label %62, !dbg !2628

62:                                               ; preds = %59, %3
  %63 = load i32, ptr %7, align 4, !dbg !2629
  ret i32 %63, !dbg !2630
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_set_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2631 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2632, metadata !DIExpression()), !dbg !2633
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2634, metadata !DIExpression()), !dbg !2635
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2636, metadata !DIExpression()), !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2638, metadata !DIExpression()), !dbg !2639
  store i32 -1, ptr %7, align 4, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2640, metadata !DIExpression()), !dbg !2641
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2642, metadata !DIExpression()), !dbg !2643
  store ptr null, ptr %9, align 8, !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2644, metadata !DIExpression()), !dbg !2645
  store i32 0, ptr %10, align 4, !dbg !2645
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2647, metadata !DIExpression()), !dbg !2648
  %13 = call ptr @get_sqlite_connection(), !dbg !2649
  store ptr %13, ptr %11, align 8, !dbg !2648
  %14 = load ptr, ptr %11, align 8, !dbg !2650
  %15 = icmp ne ptr %14, null, !dbg !2650
  br i1 %15, label %16, label %36, !dbg !2652

16:                                               ; preds = %3
  call void @sqlite_lock(i32 noundef 1), !dbg !2653
  %17 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2655
  %18 = load ptr, ptr %5, align 8, !dbg !2656
  %19 = load ptr, ptr %4, align 8, !dbg !2657
  %20 = load ptr, ptr %6, align 8, !dbg !2658
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %17, i64 noundef 1025, ptr noundef @.str.56, ptr noundef %18, ptr noundef %19, ptr noundef %20) #9, !dbg !2659
  %22 = load ptr, ptr %11, align 8, !dbg !2660
  %23 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2662
  %24 = call i32 @sqlite3_prepare(ptr noundef %22, ptr noundef %23, i32 noundef -1, ptr noundef %9, ptr noundef null), !dbg !2663
  store i32 %24, ptr %10, align 4, !dbg !2664
  %25 = icmp eq i32 %24, 0, !dbg !2665
  br i1 %25, label %26, label %29, !dbg !2666

26:                                               ; preds = %16
  %27 = load ptr, ptr %9, align 8, !dbg !2667
  %28 = call i32 @sqlite3_step(ptr noundef %27), !dbg !2669
  store i32 0, ptr %7, align 4, !dbg !2670
  br label %33, !dbg !2671

29:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2672, metadata !DIExpression()), !dbg !2674
  %30 = load ptr, ptr %11, align 8, !dbg !2675
  %31 = call ptr @sqlite3_errmsg(ptr noundef %30), !dbg !2676
  store ptr %31, ptr %12, align 8, !dbg !2674
  %32 = load ptr, ptr %12, align 8, !dbg !2677
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %32), !dbg !2678
  br label %33

33:                                               ; preds = %29, %26
  %34 = load ptr, ptr %9, align 8, !dbg !2679
  %35 = call i32 @sqlite3_finalize(ptr noundef %34), !dbg !2680
  call void @sqlite_unlock(i32 noundef 1), !dbg !2681
  br label %36, !dbg !2682

36:                                               ; preds = %33, %3
  %37 = load i32, ptr %7, align 4, !dbg !2683
  ret i32 %37, !dbg !2684
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_del_admin_user(ptr noundef %0) #0 !dbg !2685 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2688, metadata !DIExpression()), !dbg !2689
  store i32 -1, ptr %3, align 4, !dbg !2689
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2690, metadata !DIExpression()), !dbg !2691
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2692, metadata !DIExpression()), !dbg !2693
  store ptr null, ptr %5, align 8, !dbg !2693
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i32 0, ptr %6, align 4, !dbg !2695
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2696
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2697, metadata !DIExpression()), !dbg !2698
  %9 = call ptr @get_sqlite_connection(), !dbg !2699
  store ptr %9, ptr %7, align 8, !dbg !2698
  %10 = load ptr, ptr %7, align 8, !dbg !2700
  %11 = icmp ne ptr %10, null, !dbg !2700
  br i1 %11, label %12, label %30, !dbg !2702

12:                                               ; preds = %1
  %13 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2703
  %14 = load ptr, ptr %2, align 8, !dbg !2705
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.57, ptr noundef %14) #9, !dbg !2706
  call void @sqlite_lock(i32 noundef 1), !dbg !2707
  %16 = load ptr, ptr %7, align 8, !dbg !2708
  %17 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2710
  %18 = call i32 @sqlite3_prepare(ptr noundef %16, ptr noundef %17, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !2711
  store i32 %18, ptr %6, align 4, !dbg !2712
  %19 = icmp eq i32 %18, 0, !dbg !2713
  br i1 %19, label %20, label %23, !dbg !2714

20:                                               ; preds = %12
  %21 = load ptr, ptr %5, align 8, !dbg !2715
  %22 = call i32 @sqlite3_step(ptr noundef %21), !dbg !2717
  store i32 0, ptr %3, align 4, !dbg !2718
  br label %27, !dbg !2719

23:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2720, metadata !DIExpression()), !dbg !2722
  %24 = load ptr, ptr %7, align 8, !dbg !2723
  %25 = call ptr @sqlite3_errmsg(ptr noundef %24), !dbg !2724
  store ptr %25, ptr %8, align 8, !dbg !2722
  %26 = load ptr, ptr %8, align 8, !dbg !2725
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %26), !dbg !2726
  br label %27

27:                                               ; preds = %23, %20
  %28 = load ptr, ptr %5, align 8, !dbg !2727
  %29 = call i32 @sqlite3_finalize(ptr noundef %28), !dbg !2728
  call void @sqlite_unlock(i32 noundef 1), !dbg !2729
  br label %30, !dbg !2730

30:                                               ; preds = %27, %1
  %31 = load i32, ptr %3, align 4, !dbg !2731
  ret i32 %31, !dbg !2732
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_list_admin_users(i32 noundef %0) #0 !dbg !2733 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2734, metadata !DIExpression()), !dbg !2735
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2736, metadata !DIExpression()), !dbg !2737
  store i32 -1, ptr %3, align 4, !dbg !2737
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2738, metadata !DIExpression()), !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2740, metadata !DIExpression()), !dbg !2741
  store ptr null, ptr %5, align 8, !dbg !2741
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2742, metadata !DIExpression()), !dbg !2743
  store i32 0, ptr %6, align 4, !dbg !2743
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2745, metadata !DIExpression()), !dbg !2746
  %13 = call ptr @get_sqlite_connection(), !dbg !2747
  store ptr %13, ptr %7, align 8, !dbg !2746
  %14 = load ptr, ptr %7, align 8, !dbg !2748
  %15 = icmp ne ptr %14, null, !dbg !2748
  br i1 %15, label %16, label %72, !dbg !2750

16:                                               ; preds = %1
  %17 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2751
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %17, i64 noundef 1025, ptr noundef @.str.58) #9, !dbg !2753
  call void @sqlite_lock(i32 noundef 0), !dbg !2754
  %19 = load ptr, ptr %7, align 8, !dbg !2755
  %20 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2757
  %21 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !2758
  store i32 %21, ptr %6, align 4, !dbg !2759
  %22 = icmp eq i32 %21, 0, !dbg !2760
  br i1 %22, label %23, label %65, !dbg !2761

23:                                               ; preds = %16
  store i32 0, ptr %3, align 4, !dbg !2762
  br label %24, !dbg !2764

24:                                               ; preds = %23, %63
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2765, metadata !DIExpression()), !dbg !2767
  %25 = load ptr, ptr %5, align 8, !dbg !2768
  %26 = call i32 @sqlite3_step(ptr noundef %25), !dbg !2769
  store i32 %26, ptr %8, align 4, !dbg !2767
  %27 = load i32, ptr %8, align 4, !dbg !2770
  %28 = icmp eq i32 %27, 100, !dbg !2772
  br i1 %28, label %29, label %55, !dbg !2773

29:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2774, metadata !DIExpression()), !dbg !2776
  %30 = load ptr, ptr %5, align 8, !dbg !2777
  %31 = call ptr @sqlite3_column_text(ptr noundef %30, i32 noundef 0), !dbg !2778
  store ptr %31, ptr %9, align 8, !dbg !2776
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2779, metadata !DIExpression()), !dbg !2780
  %32 = load ptr, ptr %5, align 8, !dbg !2781
  %33 = call ptr @sqlite3_column_text(ptr noundef %32, i32 noundef 1), !dbg !2782
  store ptr %33, ptr %10, align 8, !dbg !2780
  %34 = load i32, ptr %2, align 4, !dbg !2783
  %35 = icmp ne i32 %34, 0, !dbg !2783
  br i1 %35, label %52, label %36, !dbg !2785

36:                                               ; preds = %29
  %37 = load ptr, ptr %10, align 8, !dbg !2786
  %38 = icmp ne ptr %37, null, !dbg !2786
  br i1 %38, label %39, label %48, !dbg !2789

39:                                               ; preds = %36
  %40 = load ptr, ptr %10, align 8, !dbg !2790
  %41 = load i8, ptr %40, align 1, !dbg !2791
  %42 = sext i8 %41 to i32, !dbg !2791
  %43 = icmp ne i32 %42, 0, !dbg !2791
  br i1 %43, label %44, label %48, !dbg !2792

44:                                               ; preds = %39
  %45 = load ptr, ptr %9, align 8, !dbg !2793
  %46 = load ptr, ptr %10, align 8, !dbg !2795
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %45, ptr noundef %46), !dbg !2796
  br label %51, !dbg !2797

48:                                               ; preds = %39, %36
  %49 = load ptr, ptr %9, align 8, !dbg !2798
  %50 = call i32 (ptr, ...) @printf(ptr noundef @.str.59, ptr noundef %49), !dbg !2800
  br label %51

51:                                               ; preds = %48, %44
  br label %52, !dbg !2801

52:                                               ; preds = %51, %29
  %53 = load i32, ptr %3, align 4, !dbg !2802
  %54 = add nsw i32 %53, 1, !dbg !2802
  store i32 %54, ptr %3, align 4, !dbg !2802
  br label %63, !dbg !2803

55:                                               ; preds = %24
  %56 = load i32, ptr %8, align 4, !dbg !2804
  %57 = icmp eq i32 %56, 101, !dbg !2806
  br i1 %57, label %58, label %59, !dbg !2807

58:                                               ; preds = %55
  br label %64, !dbg !2808

59:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2810, metadata !DIExpression()), !dbg !2812
  %60 = load ptr, ptr %7, align 8, !dbg !2813
  %61 = call ptr @sqlite3_errmsg(ptr noundef %60), !dbg !2814
  store ptr %61, ptr %11, align 8, !dbg !2812
  %62 = load ptr, ptr %11, align 8, !dbg !2815
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %62), !dbg !2816
  store i32 -1, ptr %3, align 4, !dbg !2817
  br label %64, !dbg !2818

63:                                               ; preds = %52
  br label %24, !dbg !2764, !llvm.loop !2819

64:                                               ; preds = %59, %58
  br label %69, !dbg !2821

65:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2822, metadata !DIExpression()), !dbg !2824
  %66 = load ptr, ptr %7, align 8, !dbg !2825
  %67 = call ptr @sqlite3_errmsg(ptr noundef %66), !dbg !2826
  store ptr %67, ptr %12, align 8, !dbg !2824
  %68 = load ptr, ptr %12, align 8, !dbg !2827
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %68), !dbg !2828
  br label %69

69:                                               ; preds = %65, %64
  %70 = load ptr, ptr %5, align 8, !dbg !2829
  %71 = call i32 @sqlite3_finalize(ptr noundef %70), !dbg !2830
  call void @sqlite_unlock(i32 noundef 0), !dbg !2831
  br label %72, !dbg !2832

72:                                               ; preds = %69, %1
  %73 = load i32, ptr %3, align 4, !dbg !2833
  ret i32 %73, !dbg !2834
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_disconnect() #0 !dbg !2835 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2836, metadata !DIExpression()), !dbg !2837
  %2 = load i32, ptr @connection_key, align 4, !dbg !2838
  %3 = call ptr @pthread_getspecific(i32 noundef %2) #9, !dbg !2839
  store ptr %3, ptr %1, align 8, !dbg !2837
  %4 = load ptr, ptr %1, align 8, !dbg !2840
  %5 = icmp ne ptr %4, null, !dbg !2840
  br i1 %5, label %6, label %9, !dbg !2842

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !2843
  %8 = call i32 @sqlite3_close(ptr noundef %7), !dbg !2845
  store ptr null, ptr %1, align 8, !dbg !2846
  br label %9, !dbg !2847

9:                                                ; preds = %6, %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.60), !dbg !2848
  ret void, !dbg !2849
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_sqlite_connection() #0 !dbg !2850 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2853, metadata !DIExpression()), !dbg !2859
  %5 = call ptr @get_persistent_users_db(), !dbg !2860
  store ptr %5, ptr %1, align 8, !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2861, metadata !DIExpression()), !dbg !2862
  %6 = load i32, ptr @connection_key, align 4, !dbg !2863
  %7 = call ptr @pthread_getspecific(i32 noundef %6) #9, !dbg !2864
  store ptr %7, ptr %2, align 8, !dbg !2862
  %8 = load ptr, ptr %2, align 8, !dbg !2865
  %9 = icmp ne ptr %8, null, !dbg !2865
  br i1 %9, label %54, label %10, !dbg !2867

10:                                               ; preds = %0
  %11 = load ptr, ptr %1, align 8, !dbg !2868
  %12 = getelementptr inbounds %struct._persistent_users_db_t, ptr %11, i32 0, i32 0, !dbg !2870
  %13 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !2868
  call void @fix_user_directory(ptr noundef %13), !dbg !2871
  %14 = call i32 @sqlite_init_multithreaded(), !dbg !2872
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2873, metadata !DIExpression()), !dbg !2874
  %15 = load ptr, ptr %1, align 8, !dbg !2875
  %16 = getelementptr inbounds %struct._persistent_users_db_t, ptr %15, i32 0, i32 0, !dbg !2876
  %17 = getelementptr inbounds [1025 x i8], ptr %16, i64 0, i64 0, !dbg !2875
  %18 = call i32 @sqlite3_open(ptr noundef %17, ptr noundef %2), !dbg !2877
  store i32 %18, ptr %3, align 4, !dbg !2874
  %19 = load ptr, ptr %2, align 8, !dbg !2878
  %20 = icmp ne ptr %19, null, !dbg !2878
  br i1 %20, label %21, label %24, !dbg !2880

21:                                               ; preds = %10
  %22 = load i32, ptr %3, align 4, !dbg !2881
  %23 = icmp ne i32 %22, 0, !dbg !2882
  br i1 %23, label %24, label %37, !dbg !2883

24:                                               ; preds = %21, %10
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2884, metadata !DIExpression()), !dbg !2886
  %25 = load ptr, ptr %2, align 8, !dbg !2887
  %26 = call ptr @sqlite3_errmsg(ptr noundef %25), !dbg !2888
  store ptr %26, ptr %4, align 8, !dbg !2886
  %27 = load ptr, ptr %1, align 8, !dbg !2889
  %28 = getelementptr inbounds %struct._persistent_users_db_t, ptr %27, i32 0, i32 0, !dbg !2890
  %29 = getelementptr inbounds [1025 x i8], ptr %28, i64 0, i64 0, !dbg !2889
  %30 = load ptr, ptr %4, align 8, !dbg !2891
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef %29, ptr noundef %30), !dbg !2892
  %31 = load ptr, ptr %2, align 8, !dbg !2893
  %32 = icmp ne ptr %31, null, !dbg !2893
  br i1 %32, label %33, label %36, !dbg !2895

33:                                               ; preds = %24
  %34 = load ptr, ptr %2, align 8, !dbg !2896
  %35 = call i32 @sqlite3_close(ptr noundef %34), !dbg !2898
  store ptr null, ptr %2, align 8, !dbg !2899
  br label %36, !dbg !2900

36:                                               ; preds = %33, %24
  store i32 -1, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86), align 8, !dbg !2901
  br label %46, !dbg !2902

37:                                               ; preds = %21
  %38 = load ptr, ptr %2, align 8, !dbg !2903
  call void @init_sqlite_database(ptr noundef %38), !dbg !2905
  %39 = load i32, ptr @donot_print_connection_success, align 4, !dbg !2906
  %40 = icmp ne i32 %39, 0, !dbg !2906
  br i1 %40, label %45, label %41, !dbg !2908

41:                                               ; preds = %37
  %42 = load ptr, ptr %1, align 8, !dbg !2909
  %43 = getelementptr inbounds %struct._persistent_users_db_t, ptr %42, i32 0, i32 0, !dbg !2911
  %44 = getelementptr inbounds [1025 x i8], ptr %43, i64 0, i64 0, !dbg !2909
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.3, ptr noundef %44), !dbg !2912
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2913
  br label %45, !dbg !2914

45:                                               ; preds = %41, %37
  br label %46

46:                                               ; preds = %45, %36
  %47 = load ptr, ptr %2, align 8, !dbg !2915
  %48 = icmp ne ptr %47, null, !dbg !2915
  br i1 %48, label %49, label %53, !dbg !2917

49:                                               ; preds = %46
  %50 = load i32, ptr @connection_key, align 4, !dbg !2918
  %51 = load ptr, ptr %2, align 8, !dbg !2920
  %52 = call i32 @pthread_setspecific(i32 noundef %50, ptr noundef %51) #9, !dbg !2921
  br label %53, !dbg !2922

53:                                               ; preds = %49, %46
  br label %54, !dbg !2923

54:                                               ; preds = %53, %0
  %55 = load ptr, ptr %2, align 8, !dbg !2924
  ret ptr %55, !dbg !2925
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_lock(i32 noundef %0) #0 !dbg !2926 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2929, metadata !DIExpression()), !dbg !2930
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2931, metadata !DIExpression()), !dbg !2932
  %5 = call i64 @pthread_self() #11, !dbg !2933
  store i64 %5, ptr %3, align 8, !dbg !2932
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2934, metadata !DIExpression()), !dbg !2935
  store i32 0, ptr %4, align 4, !dbg !2935
  br label %6, !dbg !2936

6:                                                ; preds = %45, %1
  %7 = load i32, ptr %4, align 4, !dbg !2937
  %8 = icmp ne i32 %7, 0, !dbg !2938
  %9 = xor i1 %8, true, !dbg !2938
  br i1 %9, label %10, label %47, !dbg !2936

10:                                               ; preds = %6
  %11 = call i32 @pthread_mutex_lock(ptr noundef @rc_mutex) #9, !dbg !2939
  %12 = load i32, ptr %2, align 4, !dbg !2941
  %13 = icmp ne i32 %12, 0, !dbg !2941
  br i1 %13, label %14, label %29, !dbg !2943

14:                                               ; preds = %10
  %15 = load i64, ptr @write_thread, align 8, !dbg !2944
  %16 = icmp eq i64 %15, 0, !dbg !2947
  br i1 %16, label %17, label %20, !dbg !2948

17:                                               ; preds = %14
  %18 = load i32, ptr @read_threads, align 4, !dbg !2949
  %19 = icmp slt i32 %18, 1, !dbg !2950
  br i1 %19, label %24, label %20, !dbg !2951

20:                                               ; preds = %17, %14
  %21 = load i64, ptr @write_thread, align 8, !dbg !2952
  %22 = load i64, ptr %3, align 8, !dbg !2953
  %23 = icmp eq i64 %21, %22, !dbg !2954
  br i1 %23, label %24, label %28, !dbg !2955

24:                                               ; preds = %20, %17
  store i32 1, ptr %4, align 4, !dbg !2956
  %25 = load i32, ptr @write_level, align 4, !dbg !2958
  %26 = add nsw i32 %25, 1, !dbg !2958
  store i32 %26, ptr @write_level, align 4, !dbg !2958
  %27 = load i64, ptr %3, align 8, !dbg !2959
  store i64 %27, ptr @write_thread, align 8, !dbg !2960
  br label %28, !dbg !2961

28:                                               ; preds = %24, %20
  br label %40, !dbg !2962

29:                                               ; preds = %10
  %30 = load i64, ptr @write_thread, align 8, !dbg !2963
  %31 = icmp ne i64 %30, 0, !dbg !2963
  br i1 %31, label %32, label %36, !dbg !2966

32:                                               ; preds = %29
  %33 = load i64, ptr @write_thread, align 8, !dbg !2967
  %34 = load i64, ptr %3, align 8, !dbg !2968
  %35 = icmp eq i64 %33, %34, !dbg !2969
  br i1 %35, label %36, label %39, !dbg !2970

36:                                               ; preds = %32, %29
  store i32 1, ptr %4, align 4, !dbg !2971
  %37 = load i32, ptr @read_threads, align 4, !dbg !2973
  %38 = add nsw i32 %37, 1, !dbg !2973
  store i32 %38, ptr @read_threads, align 4, !dbg !2973
  br label %39, !dbg !2974

39:                                               ; preds = %36, %32
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, ptr %4, align 4, !dbg !2975
  %42 = icmp ne i32 %41, 0, !dbg !2975
  br i1 %42, label %45, label %43, !dbg !2977

43:                                               ; preds = %40
  %44 = call i32 @pthread_cond_wait(ptr noundef @rc_cond, ptr noundef @rc_mutex), !dbg !2978
  br label %45, !dbg !2980

45:                                               ; preds = %43, %40
  %46 = call i32 @pthread_mutex_unlock(ptr noundef @rc_mutex) #9, !dbg !2981
  br label %6, !dbg !2936, !llvm.loop !2982

47:                                               ; preds = %6
  ret void, !dbg !2984
}

declare i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

declare i32 @sqlite3_column_count(ptr noundef) #3

declare i32 @sqlite3_step(ptr noundef) #3

declare i32 @sqlite3_column_type(ptr noundef, i32 noundef) #3

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #3

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #3

declare ptr @sqlite3_errmsg(ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare i32 @sqlite3_finalize(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sqlite_unlock(i32 noundef %0) #0 !dbg !2985 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2986, metadata !DIExpression()), !dbg !2987
  %3 = call i32 @pthread_mutex_lock(ptr noundef @rc_mutex) #9, !dbg !2988
  %4 = load i32, ptr %2, align 4, !dbg !2989
  %5 = icmp ne i32 %4, 0, !dbg !2989
  br i1 %5, label %6, label %13, !dbg !2991

6:                                                ; preds = %1
  %7 = load i32, ptr @write_level, align 4, !dbg !2992
  %8 = add nsw i32 %7, -1, !dbg !2992
  store i32 %8, ptr @write_level, align 4, !dbg !2992
  %9 = icmp ne i32 %8, 0, !dbg !2992
  br i1 %9, label %12, label %10, !dbg !2995

10:                                               ; preds = %6
  store i64 0, ptr @write_thread, align 8, !dbg !2996
  %11 = call i32 @pthread_cond_broadcast(ptr noundef @rc_cond) #9, !dbg !2998
  br label %12, !dbg !2999

12:                                               ; preds = %10, %6
  br label %20, !dbg !3000

13:                                               ; preds = %1
  %14 = load i32, ptr @read_threads, align 4, !dbg !3001
  %15 = add nsw i32 %14, -1, !dbg !3001
  store i32 %15, ptr @read_threads, align 4, !dbg !3001
  %16 = icmp ne i32 %15, 0, !dbg !3001
  br i1 %16, label %19, label %17, !dbg !3004

17:                                               ; preds = %13
  %18 = call i32 @pthread_cond_broadcast(ptr noundef @rc_cond) #9, !dbg !3005
  br label %19, !dbg !3007

19:                                               ; preds = %17, %13
  br label %20

20:                                               ; preds = %19, %12
  %21 = call i32 @pthread_mutex_unlock(ptr noundef @rc_mutex) #9, !dbg !3008
  ret void, !dbg !3009
}

declare ptr @get_persistent_users_db() #3

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fix_user_directory(ptr noundef %0) #0 !dbg !3010 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3013, metadata !DIExpression()), !dbg !3014
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3015, metadata !DIExpression()), !dbg !3016
  %9 = load ptr, ptr %2, align 8, !dbg !3017
  store ptr %9, ptr %3, align 8, !dbg !3016
  br label %10, !dbg !3018

10:                                               ; preds = %15, %1
  %11 = load ptr, ptr %3, align 8, !dbg !3019
  %12 = load i8, ptr %11, align 1, !dbg !3020
  %13 = sext i8 %12 to i32, !dbg !3020
  %14 = icmp eq i32 %13, 32, !dbg !3021
  br i1 %14, label %15, label %18, !dbg !3018

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !dbg !3022
  %17 = getelementptr inbounds i8, ptr %16, i32 1, !dbg !3022
  store ptr %17, ptr %3, align 8, !dbg !3022
  br label %10, !dbg !3018, !llvm.loop !3023

18:                                               ; preds = %10
  %19 = load ptr, ptr %3, align 8, !dbg !3025
  %20 = load i8, ptr %19, align 1, !dbg !3027
  %21 = sext i8 %20 to i32, !dbg !3027
  %22 = icmp eq i32 %21, 126, !dbg !3028
  br i1 %22, label %23, label %71, !dbg !3029

23:                                               ; preds = %18
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3030, metadata !DIExpression()), !dbg !3032
  %24 = call ptr @getenv(ptr noundef @.str.4) #9, !dbg !3033
  store ptr %24, ptr %4, align 8, !dbg !3032
  %25 = load ptr, ptr %4, align 8, !dbg !3034
  %26 = icmp ne ptr %25, null, !dbg !3034
  br i1 %26, label %42, label %27, !dbg !3036

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3037, metadata !DIExpression()), !dbg !3052
  %28 = call i32 @getuid() #9, !dbg !3053
  %29 = call ptr @getpwuid(i32 noundef %28), !dbg !3054
  store ptr %29, ptr %5, align 8, !dbg !3052
  %30 = load ptr, ptr %5, align 8, !dbg !3055
  %31 = icmp ne ptr %30, null, !dbg !3055
  br i1 %31, label %33, label %32, !dbg !3057

32:                                               ; preds = %27
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5), !dbg !3058
  br label %41, !dbg !3060

33:                                               ; preds = %27
  %34 = load ptr, ptr %5, align 8, !dbg !3061
  %35 = getelementptr inbounds %struct.passwd, ptr %34, i32 0, i32 5, !dbg !3063
  %36 = load ptr, ptr %35, align 8, !dbg !3063
  store ptr %36, ptr %4, align 8, !dbg !3064
  %37 = load ptr, ptr %4, align 8, !dbg !3065
  %38 = icmp ne ptr %37, null, !dbg !3065
  br i1 %38, label %40, label %39, !dbg !3067

39:                                               ; preds = %33
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.6), !dbg !3068
  br label %71, !dbg !3070

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %32
  br label %42, !dbg !3071

42:                                               ; preds = %41, %23
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3072, metadata !DIExpression()), !dbg !3073
  %43 = load ptr, ptr %4, align 8, !dbg !3074
  %44 = call i64 @strlen(ptr noundef %43) #10, !dbg !3075
  store i64 %44, ptr %6, align 8, !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3076, metadata !DIExpression()), !dbg !3077
  %45 = load ptr, ptr %2, align 8, !dbg !3078
  %46 = call i64 @strlen(ptr noundef %45) #10, !dbg !3079
  %47 = add i64 %46, 1, !dbg !3080
  %48 = load i64, ptr %6, align 8, !dbg !3081
  %49 = add i64 %47, %48, !dbg !3082
  store i64 %49, ptr %7, align 8, !dbg !3077
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3083, metadata !DIExpression()), !dbg !3084
  %50 = load i64, ptr %7, align 8, !dbg !3085
  %51 = call noalias ptr @malloc(i64 noundef %50) #12, !dbg !3086
  store ptr %51, ptr %8, align 8, !dbg !3084
  %52 = load ptr, ptr %8, align 8, !dbg !3087
  %53 = load ptr, ptr %4, align 8, !dbg !3088
  %54 = load i64, ptr %6, align 8, !dbg !3089
  %55 = call ptr @strncpy(ptr noundef %52, ptr noundef %53, i64 noundef %54) #9, !dbg !3090
  %56 = load ptr, ptr %8, align 8, !dbg !3091
  %57 = load i64, ptr %6, align 8, !dbg !3092
  %58 = getelementptr inbounds i8, ptr %56, i64 %57, !dbg !3093
  %59 = load ptr, ptr %3, align 8, !dbg !3094
  %60 = getelementptr inbounds i8, ptr %59, i64 1, !dbg !3095
  %61 = load i64, ptr %7, align 8, !dbg !3096
  %62 = load i64, ptr %6, align 8, !dbg !3097
  %63 = sub i64 %61, %62, !dbg !3098
  %64 = sub i64 %63, 1, !dbg !3099
  %65 = call ptr @strncpy(ptr noundef %58, ptr noundef %60, i64 noundef %64) #9, !dbg !3100
  %66 = load ptr, ptr %2, align 8, !dbg !3101
  %67 = load ptr, ptr %8, align 8, !dbg !3102
  %68 = load i64, ptr %7, align 8, !dbg !3103
  %69 = call ptr @strncpy(ptr noundef %66, ptr noundef %67, i64 noundef %68) #9, !dbg !3104
  %70 = load ptr, ptr %8, align 8, !dbg !3105
  call void @free(ptr noundef %70) #9, !dbg !3106
  br label %71, !dbg !3107

71:                                               ; preds = %39, %42, %18
  ret void, !dbg !3108
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sqlite_init_multithreaded() #0 !dbg !3109 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @sqlite3_shutdown(), !dbg !3112
  %4 = call i32 @sqlite3_threadsafe(), !dbg !3113
  %5 = icmp sgt i32 %4, 0, !dbg !3115
  br i1 %5, label %6, label %18, !dbg !3116

6:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3117, metadata !DIExpression()), !dbg !3119
  %7 = call i32 (i32, ...) @sqlite3_config(i32 noundef 2), !dbg !3120
  store i32 %7, ptr %2, align 4, !dbg !3119
  %8 = load i32, ptr %2, align 4, !dbg !3121
  %9 = icmp ne i32 %8, 0, !dbg !3123
  br i1 %9, label %10, label %17, !dbg !3124

10:                                               ; preds = %6
  %11 = call i32 (i32, ...) @sqlite3_config(i32 noundef 3), !dbg !3125
  store i32 %11, ptr %2, align 4, !dbg !3127
  %12 = load i32, ptr %2, align 4, !dbg !3128
  %13 = icmp ne i32 %12, 0, !dbg !3130
  br i1 %13, label %14, label %16, !dbg !3131

14:                                               ; preds = %10
  %15 = load i32, ptr %2, align 4, !dbg !3132
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, i32 noundef %15), !dbg !3134
  store i32 -1, ptr %1, align 4, !dbg !3135
  br label %20, !dbg !3135

16:                                               ; preds = %10
  br label %17, !dbg !3136

17:                                               ; preds = %16, %6
  br label %19, !dbg !3137

18:                                               ; preds = %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8), !dbg !3138
  store i32 -1, ptr %1, align 4, !dbg !3140
  br label %20, !dbg !3140

19:                                               ; preds = %17
  store i32 0, ptr %1, align 4, !dbg !3141
  br label %20, !dbg !3141

20:                                               ; preds = %19, %18, %14
  %21 = load i32, ptr %1, align 4, !dbg !3142
  ret i32 %21, !dbg !3142
}

declare i32 @sqlite3_open(ptr noundef, ptr noundef) #3

declare i32 @sqlite3_close(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sqlite_database(ptr noundef %0) #0 !dbg !3143 {
  %2 = alloca ptr, align 8
  %3 = alloca [9 x ptr], align 16
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3146, metadata !DIExpression()), !dbg !3147
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3148, metadata !DIExpression()), !dbg !3152
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %3, ptr align 16 @__const.init_sqlite_database.statements, i64 72, i1 false), !dbg !3152
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i32 0, ptr %4, align 4, !dbg !3154
  br label %7, !dbg !3155

7:                                                ; preds = %24, %1
  %8 = load i32, ptr %4, align 4, !dbg !3156
  %9 = sext i32 %8 to i64, !dbg !3157
  %10 = getelementptr inbounds [9 x ptr], ptr %3, i64 0, i64 %9, !dbg !3157
  %11 = load ptr, ptr %10, align 8, !dbg !3157
  %12 = icmp ne ptr %11, null, !dbg !3155
  br i1 %12, label %13, label %29, !dbg !3155

13:                                               ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3158, metadata !DIExpression()), !dbg !3160
  store ptr null, ptr %5, align 8, !dbg !3160
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3161, metadata !DIExpression()), !dbg !3162
  store i32 0, ptr %6, align 4, !dbg !3162
  %14 = load ptr, ptr %2, align 8, !dbg !3163
  %15 = load i32, ptr %4, align 4, !dbg !3165
  %16 = sext i32 %15 to i64, !dbg !3166
  %17 = getelementptr inbounds [9 x ptr], ptr %3, i64 0, i64 %16, !dbg !3166
  %18 = load ptr, ptr %17, align 8, !dbg !3166
  %19 = call i32 @sqlite3_prepare(ptr noundef %14, ptr noundef %18, i32 noundef -1, ptr noundef %5, ptr noundef null), !dbg !3167
  store i32 %19, ptr %6, align 4, !dbg !3168
  %20 = icmp eq i32 %19, 0, !dbg !3169
  br i1 %20, label %21, label %24, !dbg !3170

21:                                               ; preds = %13
  %22 = load ptr, ptr %5, align 8, !dbg !3171
  %23 = call i32 @sqlite3_step(ptr noundef %22), !dbg !3173
  br label %24, !dbg !3174

24:                                               ; preds = %21, %13
  %25 = load ptr, ptr %5, align 8, !dbg !3175
  %26 = call i32 @sqlite3_finalize(ptr noundef %25), !dbg !3176
  %27 = load i32, ptr %4, align 4, !dbg !3177
  %28 = add nsw i32 %27, 1, !dbg !3177
  store i32 %28, ptr %4, align 4, !dbg !3177
  br label %7, !dbg !3155, !llvm.loop !3178

29:                                               ; preds = %7
  ret void, !dbg !3180
}

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

declare ptr @getpwuid(i32 noundef) #3

; Function Attrs: nounwind
declare i32 @getuid() #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare i32 @sqlite3_shutdown() #3

declare i32 @sqlite3_threadsafe() #3

declare i32 @sqlite3_config(i32 noundef, ...) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #7

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #2

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

declare i64 @get_hmackey_size(i32 noundef) #3

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

declare i32 @printf(ptr noundef, ...) #3

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @ur_string_map_create(ptr noundef) #3

declare ptr @get_realm(ptr noundef) #3

declare i32 @ur_string_map_put(ptr noundef, ptr noundef, ptr noundef) #3

declare void @update_o_to_realm(ptr noundef) #3

declare void @lock_realms() #3

declare void @unlock_realms() #3

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i64 @strtoul(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #4

; Function Attrs: nounwind
declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!588, !589, !590, !591, !592, !593, !594}
!llvm.ident = !{!595}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "driver", scope: !2, file: !58, line: 1308, type: !389, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !32, globals: !55, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_sqlite.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "8933062e504ebf49ea3b33c13d14de1d")
!4 = !{!5, !13, !23}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 47, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!10 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!11 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!12 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TURN_USERDB_TYPE", file: !14, line: 96, baseType: !15, size: 32, elements: !16)
!14 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{!17, !18, !19, !20, !21, !22}
!17 = !DIEnumerator(name: "TURN_USERDB_TYPE_UNKNOWN", value: -1)
!18 = !DIEnumerator(name: "TURN_USERDB_TYPE_SQLITE", value: 0)
!19 = !DIEnumerator(name: "TURN_USERDB_TYPE_PQ", value: 1)
!20 = !DIEnumerator(name: "TURN_USERDB_TYPE_MYSQL", value: 2)
!21 = !DIEnumerator(name: "TURN_USERDB_TYPE_MONGO", value: 3)
!22 = !DIEnumerator(name: "TURN_USERDB_TYPE_REDIS", value: 4)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !24, line: 160, baseType: !15, size: 32, elements: !25)
!24 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!25 = !{!26, !27, !28, !29, !30, !31}
!26 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!27 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!28 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!29 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!30 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!31 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!32 = !{!33, !36, !40, !41, !42, !44, !46, !48, !49, !53}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !38, line: 272, baseType: !39)
!38 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "", checksumkind: CSK_MD5, checksum: "a588c4681dc2c3e9f3424818d7f39d50")
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !38, line: 272, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!41 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !43, line: 224, baseType: !40)
!43 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!44 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !45, line: 67, baseType: !41)
!45 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !47, line: 105, baseType: !15)
!47 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!48 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !50, line: 27, baseType: !51)
!50 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !52, line: 45, baseType: !41)
!52 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!53 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !50, line: 26, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !52, line: 42, baseType: !7)
!55 = !{!0, !56, !62, !67, !72, !77, !82, !87, !92, !97, !102, !107, !112, !117, !122, !127, !132, !137, !142, !144, !176, !179, !181, !183, !217, !222, !227, !232, !234, !239, !241, !246, !251, !256, !261, !263, !265, !270, !275, !280, !282, !287, !292, !297, !302, !307, !312, !317, !322, !327, !332, !334, !336, !338, !340, !345, !350, !352, !357, !359, !361, !366, !371, !376, !378, !380, !382, !384}
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !58, line: 218, type: !59, isLocal: true, isDefinition: true)
!58 = !DIFile(filename: "src/apps/relay/dbdrivers/dbd_sqlite.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8933062e504ebf49ea3b33c13d14de1d")
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 376, elements: !60)
!60 = !{!61}
!61 = !DISubrange(count: 47)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !58, line: 240, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 352, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 44)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !58, line: 188, type: !69, isLocal: true, isDefinition: true)
!69 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2256, elements: !70)
!70 = !{!71}
!71 = !DISubrange(count: 282)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !58, line: 197, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 272, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 34)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !58, line: 128, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 40, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 5)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !58, line: 132, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 392, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 49)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !58, line: 136, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 360, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 45)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !58, line: 109, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 584, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 73)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !58, line: 114, type: !99, isLocal: true, isDefinition: true)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 448, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 56)
!102 = !DIGlobalVariableExpression(var: !103, expr: !DIExpression())
!103 = distinct !DIGlobalVariable(scope: null, file: !58, line: 154, type: !104, isLocal: true, isDefinition: true)
!104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 984, elements: !105)
!105 = !{!106}
!106 = !DISubrange(count: 123)
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(scope: null, file: !58, line: 155, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 832, elements: !110)
!110 = !{!111}
!111 = !DISubrange(count: 104)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !58, line: 156, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 912, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 114)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !58, line: 157, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 904, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 113)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !58, line: 158, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 768, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 96)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !58, line: 159, type: !129, isLocal: true, isDefinition: true)
!129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1000, elements: !130)
!130 = !{!131}
!131 = !DISubrange(count: 125)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(scope: null, file: !58, line: 160, type: !134, isLocal: true, isDefinition: true)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1584, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 198)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !58, line: 161, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 848, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 106)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(name: "donot_print_connection_success", scope: !2, file: !58, line: 122, type: !15, isLocal: true, isDefinition: true)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "rc_mutex", scope: !2, file: !58, line: 47, type: !146, isLocal: true, isDefinition: true)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !147, line: 72, baseType: !148)
!147 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!148 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !147, line: 67, size: 320, elements: !149)
!149 = !{!150, !170, !174}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !148, file: !147, line: 69, baseType: !151, size: 320)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !152, line: 22, size: 320, elements: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!153 = !{!154, !155, !156, !157, !158, !159, !161, !162}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !151, file: !152, line: 24, baseType: !15, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !151, file: !152, line: 25, baseType: !7, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !151, file: !152, line: 26, baseType: !15, size: 32, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !151, file: !152, line: 28, baseType: !7, size: 32, offset: 96)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !151, file: !152, line: 32, baseType: !15, size: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !151, file: !152, line: 34, baseType: !160, size: 16, offset: 160)
!160 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !151, file: !152, line: 35, baseType: !160, size: 16, offset: 176)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !151, file: !152, line: 36, baseType: !163, size: 128, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !164, line: 55, baseType: !165)
!164 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !164, line: 51, size: 128, elements: !166)
!166 = !{!167, !169}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !165, file: !164, line: 53, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !165, file: !164, line: 54, baseType: !168, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !148, file: !147, line: 70, baseType: !171, size: 320)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 320, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 40)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !148, file: !147, line: 71, baseType: !175, size: 64)
!175 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(name: "write_thread", scope: !2, file: !58, line: 52, type: !178, isLocal: true, isDefinition: true)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !147, line: 27, baseType: !41)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(name: "read_threads", scope: !2, file: !58, line: 50, type: !15, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(name: "write_level", scope: !2, file: !58, line: 51, type: !15, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "rc_cond", scope: !2, file: !58, line: 48, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_cond_t", file: !147, line: 80, baseType: !186)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !147, line: 75, size: 384, elements: !187)
!187 = !{!188, !211, !215}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !186, file: !147, line: 77, baseType: !189, size: 384)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_cond_s", file: !164, line: 94, size: 384, elements: !190)
!190 = !{!191, !202, !203, !207, !208, !209, !210}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "__wseq", scope: !189, file: !164, line: 96, baseType: !192, size: 64)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "__atomic_wide_counter", file: !193, line: 33, baseType: !194)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/atomic_wide_counter.h", directory: "", checksumkind: CSK_MD5, checksum: "2708e6e61e266abad2d765ccef838dbe")
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !193, line: 25, size: 64, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "__value64", scope: !194, file: !193, line: 27, baseType: !48, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "__value32", scope: !194, file: !193, line: 32, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !193, line: 28, size: 64, elements: !199)
!199 = !{!200, !201}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "__low", scope: !198, file: !193, line: 30, baseType: !7, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "__high", scope: !198, file: !193, line: 31, baseType: !7, size: 32, offset: 32)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_start", scope: !189, file: !164, line: 97, baseType: !192, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "__g_refs", scope: !189, file: !164, line: 98, baseType: !204, size: 64, offset: 128)
!204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !205)
!205 = !{!206}
!206 = !DISubrange(count: 2)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "__g_size", scope: !189, file: !164, line: 99, baseType: !204, size: 64, offset: 192)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "__g1_orig_size", scope: !189, file: !164, line: 100, baseType: !7, size: 32, offset: 256)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "__wrefs", scope: !189, file: !164, line: 101, baseType: !7, size: 32, offset: 288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "__g_signals", scope: !189, file: !164, line: 102, baseType: !204, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !186, file: !147, line: 78, baseType: !212, size: 384)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 384, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 48)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !186, file: !147, line: 79, baseType: !216, size: 64)
!216 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !58, line: 265, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 512, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 64)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !58, line: 275, type: !224, isLocal: true, isDefinition: true)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 192, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 24)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !58, line: 424, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 640, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 80)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !58, line: 485, type: !99, isLocal: true, isDefinition: true)
!234 = !DIGlobalVariableExpression(var: !235, expr: !DIExpression())
!235 = distinct !DIGlobalVariable(scope: null, file: !58, line: 549, type: !236, isLocal: true, isDefinition: true)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 536, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 67)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !58, line: 551, type: !99, isLocal: true, isDefinition: true)
!241 = !DIGlobalVariableExpression(var: !242, expr: !DIExpression())
!242 = distinct !DIGlobalVariable(scope: null, file: !58, line: 576, type: !243, isLocal: true, isDefinition: true)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 64, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 8)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !58, line: 611, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 544, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 68)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !58, line: 613, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 456, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 57)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !58, line: 674, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 328, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 41)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !58, line: 676, type: !99, isLocal: true, isDefinition: true)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !58, line: 705, type: !236, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !58, line: 733, type: !267, isLocal: true, isDefinition: true)
!267 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 616, elements: !268)
!268 = !{!269}
!269 = !DISubrange(count: 77)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !58, line: 761, type: !272, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 408, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 51)
!275 = !DIGlobalVariableExpression(var: !276, expr: !DIExpression())
!276 = distinct !DIGlobalVariable(scope: null, file: !58, line: 795, type: !277, isLocal: true, isDefinition: true)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 632, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 79)
!280 = !DIGlobalVariableExpression(var: !281, expr: !DIExpression())
!281 = distinct !DIGlobalVariable(scope: null, file: !58, line: 797, type: !248, isLocal: true, isDefinition: true)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !58, line: 822, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 96, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 12)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !58, line: 855, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 664, elements: !290)
!290 = !{!291}
!291 = !DISubrange(count: 83)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(scope: null, file: !58, line: 885, type: !294, isLocal: true, isDefinition: true)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 656, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 82)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !58, line: 887, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 520, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 65)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !58, line: 904, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 88, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 11)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !58, line: 940, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 304, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 38)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !58, line: 997, type: !314, isLocal: true, isDefinition: true)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 504, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 63)
!317 = !DIGlobalVariableExpression(var: !318, expr: !DIExpression())
!318 = distinct !DIGlobalVariable(scope: null, file: !58, line: 999, type: !319, isLocal: true, isDefinition: true)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 552, elements: !320)
!320 = !{!321}
!321 = !DISubrange(count: 69)
!322 = !DIGlobalVariableExpression(var: !323, expr: !DIExpression())
!323 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1007, type: !324, isLocal: true, isDefinition: true)
!324 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 336, elements: !325)
!325 = !{!326}
!326 = !DISubrange(count: 42)
!327 = !DIGlobalVariableExpression(var: !328, expr: !DIExpression())
!328 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1024, type: !329, isLocal: true, isDefinition: true)
!329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 368, elements: !330)
!330 = !{!331}
!331 = !DISubrange(count: 46)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1097, type: !329, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1109, type: !243, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1111, type: !284, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1113, type: !304, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1116, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 208, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 26)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !58, line: 455, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 952, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 119)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !58, line: 302, type: !229, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !58, line: 515, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 312, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 39)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !58, line: 347, type: !294, isLocal: true, isDefinition: true)
!359 = !DIGlobalVariableExpression(var: !360, expr: !DIExpression())
!360 = distinct !DIGlobalVariable(scope: null, file: !58, line: 374, type: !79, isLocal: true, isDefinition: true)
!361 = !DIGlobalVariableExpression(var: !362, expr: !DIExpression())
!362 = distinct !DIGlobalVariable(scope: null, file: !58, line: 379, type: !363, isLocal: true, isDefinition: true)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 32, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 4)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !58, line: 383, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 528, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 66)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1154, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 432, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 54)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1197, type: !277, isLocal: true, isDefinition: true)
!378 = !DIGlobalVariableExpression(var: !379, expr: !DIExpression())
!379 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1224, type: !354, isLocal: true, isDefinition: true)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1253, type: !373, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1271, type: !363, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !58, line: 1303, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 248, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 31)
!389 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !390)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !391, line: 77, baseType: !392)
!391 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !391, line: 50, size: 1664, elements: !393)
!393 = !{!394, !411, !415, !419, !423, !427, !428, !429, !430, !431, !435, !436, !440, !441, !446, !528, !532, !536, !557, !563, !567, !571, !575, !579, !580, !584}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !392, file: !391, line: 51, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!396 = !DISubroutineType(types: !397)
!397 = !{!15, !398, !407}
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !14, line: 143, baseType: !400)
!400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !14, line: 139, size: 128, elements: !401)
!401 = !{!402, !404}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !400, file: !14, line: 140, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !400, file: !14, line: 141, baseType: !405, size: 64, offset: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !406, line: 46, baseType: !41)
!406 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !50, line: 24, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !52, line: 38, baseType: !410)
!410 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !392, file: !391, line: 52, baseType: !412, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!413 = !DISubroutineType(types: !414)
!414 = !{!15, !407, !407, !407}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !392, file: !391, line: 53, baseType: !416, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!15, !407, !407, !33}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !392, file: !391, line: 54, baseType: !420, size: 64, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DISubroutineType(types: !422)
!422 = !{!15, !407, !407}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !392, file: !391, line: 55, baseType: !424, size: 64, offset: 256)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!15, !407, !398, !398}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !392, file: !391, line: 56, baseType: !424, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !392, file: !391, line: 57, baseType: !420, size: 64, offset: 384)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !392, file: !391, line: 58, baseType: !420, size: 64, offset: 448)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !392, file: !391, line: 59, baseType: !420, size: 64, offset: 512)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !392, file: !391, line: 60, baseType: !432, size: 64, offset: 576)
!432 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !433, size: 64)
!433 = !DISubroutineType(types: !434)
!434 = !{!15, !407}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !392, file: !391, line: 61, baseType: !424, size: 64, offset: 640)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !392, file: !391, line: 62, baseType: !437, size: 64, offset: 704)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DISubroutineType(types: !439)
!439 = !{!15, !407, !41, !33}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !392, file: !391, line: 63, baseType: !432, size: 64, offset: 768)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !392, file: !391, line: 64, baseType: !442, size: 64, offset: 832)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !445}
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !392, file: !391, line: 65, baseType: !447, size: 64, offset: 896)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!15, !33, !450}
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !452, line: 159, baseType: !453)
!452 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !452, line: 154, size: 128, elements: !454)
!454 = !{!455, !527}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !453, file: !452, line: 155, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !452, line: 152, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !452, line: 146, size: 6624, elements: !459)
!459 = !{!460, !464, !468}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !458, file: !452, line: 147, baseType: !461, size: 2056)
!461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2056, elements: !462)
!462 = !{!463}
!463 = !DISubrange(count: 257)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !458, file: !452, line: 148, baseType: !465, size: 4104, offset: 2056)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 4104, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 513)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !458, file: !452, line: 149, baseType: !469, size: 448, offset: 6176)
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !470, line: 53, baseType: !471)
!470 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !470, line: 50, size: 448, elements: !472)
!472 = !{!473, !526}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !471, file: !470, line: 51, baseType: !474, size: 224)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !470, line: 48, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !470, line: 44, size: 224, elements: !476)
!476 = !{!477, !489, !505}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !475, file: !470, line: 45, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !479, line: 180, size: 128, elements: !480)
!479 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!480 = !{!481, !485}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !478, file: !479, line: 182, baseType: !482, size: 16)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !483, line: 28, baseType: !484)
!483 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!484 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !478, file: !479, line: 183, baseType: !486, size: 112, offset: 16)
!486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 112, elements: !487)
!487 = !{!488}
!488 = !DISubrange(count: 14)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !475, file: !470, line: 46, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !491, line: 245, size: 128, elements: !492)
!491 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!492 = !{!493, !494, !498, !503}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !490, file: !491, line: 247, baseType: !482, size: 16)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !490, file: !491, line: 248, baseType: !495, size: 16, offset: 16)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !491, line: 123, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !50, line: 25, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !52, line: 40, baseType: !484)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !490, file: !491, line: 249, baseType: !499, size: 32, offset: 32)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !491, line: 31, size: 32, elements: !500)
!500 = !{!501}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !499, file: !491, line: 33, baseType: !502, size: 32)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !491, line: 30, baseType: !53)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !490, file: !491, line: 252, baseType: !504, size: 64, offset: 64)
!504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 64, elements: !244)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !475, file: !470, line: 47, baseType: !506, size: 224)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !491, line: 260, size: 224, elements: !507)
!507 = !{!508, !509, !510, !511, !525}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !506, file: !491, line: 262, baseType: !482, size: 16)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !506, file: !491, line: 263, baseType: !495, size: 16, offset: 16)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !506, file: !491, line: 264, baseType: !53, size: 32, offset: 32)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !506, file: !491, line: 265, baseType: !512, size: 128, offset: 64)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !491, line: 219, size: 128, elements: !513)
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !512, file: !491, line: 226, baseType: !515, size: 128)
!515 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !512, file: !491, line: 221, size: 128, elements: !516)
!516 = !{!517, !521, !523}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !515, file: !491, line: 223, baseType: !518, size: 128)
!518 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 128, elements: !519)
!519 = !{!520}
!520 = !DISubrange(count: 16)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !515, file: !491, line: 224, baseType: !522, size: 128)
!522 = !DICompositeType(tag: DW_TAG_array_type, baseType: !496, size: 128, elements: !244)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !515, file: !491, line: 225, baseType: !524, size: 128)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 128, elements: !364)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !506, file: !491, line: 266, baseType: !53, size: 32, offset: 192)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !471, file: !470, line: 52, baseType: !474, size: 224, offset: 224)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !453, file: !452, line: 156, baseType: !405, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !392, file: !391, line: 66, baseType: !529, size: 64, offset: 960)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!15, !33, !407, !33, !15}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !392, file: !391, line: 67, baseType: !533, size: 64, offset: 1024)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{null, !398}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !392, file: !391, line: 68, baseType: !537, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DISubroutineType(types: !539)
!539 = !{!15, !540}
!540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !542, line: 144, baseType: !543)
!542 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !542, line: 135, size: 4800, elements: !544)
!544 = !{!545, !549, !550, !551, !552, !553}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !543, file: !542, line: 136, baseType: !546, size: 1032)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1032, elements: !547)
!547 = !{!548}
!548 = !DISubrange(count: 129)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !543, file: !542, line: 137, baseType: !461, size: 2056, offset: 1032)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !543, file: !542, line: 138, baseType: !49, size: 64, offset: 3136)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !543, file: !542, line: 139, baseType: !53, size: 32, offset: 3200)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !543, file: !542, line: 140, baseType: !299, size: 520, offset: 3232)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !543, file: !542, line: 141, baseType: !554, size: 1024, offset: 3752)
!554 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 1024, elements: !555)
!555 = !{!556}
!556 = !DISubrange(count: 128)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !392, file: !391, line: 69, baseType: !558, size: 64, offset: 1152)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DISubroutineType(types: !560)
!560 = !{!15, !561, !540}
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !392, file: !391, line: 70, baseType: !564, size: 64, offset: 1216)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!15, !561}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !392, file: !391, line: 71, baseType: !568, size: 64, offset: 1280)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!569 = !DISubroutineType(types: !570)
!570 = !{!15, !398, !398, !398, !398, !398}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !392, file: !391, line: 72, baseType: !572, size: 64, offset: 1344)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DISubroutineType(types: !574)
!574 = !{!15, !561, !407, !407}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !392, file: !391, line: 73, baseType: !576, size: 64, offset: 1408)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{!15, !561, !561, !561}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !392, file: !391, line: 74, baseType: !564, size: 64, offset: 1472)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !392, file: !391, line: 75, baseType: !581, size: 64, offset: 1536)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DISubroutineType(types: !583)
!583 = !{!15, !15}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !392, file: !391, line: 76, baseType: !585, size: 64, offset: 1600)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DISubroutineType(types: !587)
!587 = !{null}
!588 = !{i32 7, !"Dwarf Version", i32 5}
!589 = !{i32 2, !"Debug Info Version", i32 3}
!590 = !{i32 1, !"wchar_size", i32 4}
!591 = !{i32 8, !"PIC Level", i32 2}
!592 = !{i32 7, !"PIE Level", i32 2}
!593 = !{i32 7, !"uwtable", i32 2}
!594 = !{i32 7, !"frame-pointer", i32 2}
!595 = !{!"clang version 16.0.0"}
!596 = distinct !DISubprogram(name: "get_sqlite_dbdriver", scope: !58, file: !58, line: 1339, type: !597, scopeLine: 1339, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !600)
!597 = !DISubroutineType(types: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!600 = !{}
!601 = !DILocation(line: 1340, column: 2, scope: !596)
!602 = distinct !DISubprogram(name: "sqlite_get_auth_secrets", scope: !58, file: !58, line: 210, type: !396, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!603 = !DILocalVariable(name: "sl", arg: 1, scope: !602, file: !58, line: 210, type: !398)
!604 = !DILocation(line: 210, column: 52, scope: !602)
!605 = !DILocalVariable(name: "realm", arg: 2, scope: !602, file: !58, line: 210, type: !407)
!606 = !DILocation(line: 210, column: 65, scope: !602)
!607 = !DILocalVariable(name: "ret", scope: !602, file: !58, line: 212, type: !15)
!608 = !DILocation(line: 212, column: 6, scope: !602)
!609 = !DILocalVariable(name: "sqliteconnection", scope: !602, file: !58, line: 213, type: !36)
!610 = !DILocation(line: 213, column: 11, scope: !602)
!611 = !DILocation(line: 213, column: 30, scope: !602)
!612 = !DILocation(line: 214, column: 6, scope: !613)
!613 = distinct !DILexicalBlock(scope: !602, file: !58, line: 214, column: 6)
!614 = !DILocation(line: 214, column: 6, scope: !602)
!615 = !DILocalVariable(name: "statement", scope: !616, file: !58, line: 215, type: !617)
!616 = distinct !DILexicalBlock(scope: !613, file: !58, line: 214, column: 24)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 8200, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 1025)
!620 = !DILocation(line: 215, column: 8, scope: !616)
!621 = !DILocalVariable(name: "st", scope: !616, file: !58, line: 216, type: !622)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !38, line: 3892, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !38, line: 3892, flags: DIFlagFwdDecl)
!625 = !DILocation(line: 216, column: 17, scope: !616)
!626 = !DILocalVariable(name: "rc", scope: !616, file: !58, line: 217, type: !15)
!627 = !DILocation(line: 217, column: 7, scope: !616)
!628 = !DILocation(line: 218, column: 12, scope: !616)
!629 = !DILocation(line: 218, column: 96, scope: !616)
!630 = !DILocation(line: 218, column: 3, scope: !616)
!631 = !DILocation(line: 220, column: 3, scope: !616)
!632 = !DILocation(line: 222, column: 29, scope: !633)
!633 = distinct !DILexicalBlock(scope: !616, file: !58, line: 222, column: 7)
!634 = !DILocation(line: 222, column: 47, scope: !633)
!635 = !DILocation(line: 222, column: 13, scope: !633)
!636 = !DILocation(line: 222, column: 11, scope: !633)
!637 = !DILocation(line: 222, column: 71, scope: !633)
!638 = !DILocation(line: 222, column: 7, scope: !616)
!639 = !DILocalVariable(name: "ctotal", scope: !640, file: !58, line: 224, type: !15)
!640 = distinct !DILexicalBlock(scope: !633, file: !58, line: 222, column: 85)
!641 = !DILocation(line: 224, column: 8, scope: !640)
!642 = !DILocation(line: 224, column: 38, scope: !640)
!643 = !DILocation(line: 224, column: 17, scope: !640)
!644 = !DILocation(line: 225, column: 8, scope: !640)
!645 = !DILocation(line: 227, column: 4, scope: !640)
!646 = !DILocation(line: 227, column: 11, scope: !640)
!647 = !DILocation(line: 227, column: 18, scope: !640)
!648 = !DILocalVariable(name: "res", scope: !649, file: !58, line: 229, type: !15)
!649 = distinct !DILexicalBlock(scope: !640, file: !58, line: 227, column: 23)
!650 = !DILocation(line: 229, column: 9, scope: !649)
!651 = !DILocation(line: 229, column: 28, scope: !649)
!652 = !DILocation(line: 229, column: 15, scope: !649)
!653 = !DILocation(line: 230, column: 9, scope: !654)
!654 = distinct !DILexicalBlock(scope: !649, file: !58, line: 230, column: 9)
!655 = !DILocation(line: 230, column: 13, scope: !654)
!656 = !DILocation(line: 230, column: 9, scope: !649)
!657 = !DILocalVariable(name: "type", scope: !658, file: !58, line: 232, type: !15)
!658 = distinct !DILexicalBlock(scope: !654, file: !58, line: 230, column: 28)
!659 = !DILocation(line: 232, column: 10, scope: !658)
!660 = !DILocation(line: 232, column: 37, scope: !658)
!661 = !DILocation(line: 232, column: 17, scope: !658)
!662 = !DILocation(line: 233, column: 10, scope: !663)
!663 = distinct !DILexicalBlock(scope: !658, file: !58, line: 233, column: 10)
!664 = !DILocation(line: 233, column: 15, scope: !663)
!665 = !DILocation(line: 233, column: 10, scope: !658)
!666 = !DILocation(line: 234, column: 27, scope: !663)
!667 = !DILocation(line: 234, column: 65, scope: !663)
!668 = !DILocation(line: 234, column: 45, scope: !663)
!669 = !DILocation(line: 234, column: 7, scope: !663)
!670 = !DILocation(line: 236, column: 5, scope: !658)
!671 = !DILocation(line: 236, column: 16, scope: !672)
!672 = distinct !DILexicalBlock(scope: !654, file: !58, line: 236, column: 16)
!673 = !DILocation(line: 236, column: 20, scope: !672)
!674 = !DILocation(line: 236, column: 16, scope: !654)
!675 = !DILocation(line: 237, column: 6, scope: !676)
!676 = distinct !DILexicalBlock(scope: !672, file: !58, line: 236, column: 36)
!677 = !DILocalVariable(name: "errmsg", scope: !678, file: !58, line: 239, type: !33)
!678 = distinct !DILexicalBlock(scope: !672, file: !58, line: 238, column: 12)
!679 = !DILocation(line: 239, column: 18, scope: !678)
!680 = !DILocation(line: 239, column: 42, scope: !678)
!681 = !DILocation(line: 239, column: 27, scope: !678)
!682 = !DILocation(line: 240, column: 90, scope: !678)
!683 = !DILocation(line: 240, column: 6, scope: !678)
!684 = !DILocation(line: 241, column: 10, scope: !678)
!685 = !DILocation(line: 242, column: 6, scope: !678)
!686 = distinct !{!686, !645, !687, !688}
!687 = !DILocation(line: 244, column: 4, scope: !640)
!688 = !{!"llvm.loop.mustprogress"}
!689 = !DILocation(line: 245, column: 3, scope: !640)
!690 = !DILocalVariable(name: "errmsg", scope: !691, file: !58, line: 246, type: !33)
!691 = distinct !DILexicalBlock(scope: !633, file: !58, line: 245, column: 10)
!692 = !DILocation(line: 246, column: 16, scope: !691)
!693 = !DILocation(line: 246, column: 40, scope: !691)
!694 = !DILocation(line: 246, column: 25, scope: !691)
!695 = !DILocation(line: 247, column: 88, scope: !691)
!696 = !DILocation(line: 247, column: 4, scope: !691)
!697 = !DILocation(line: 249, column: 20, scope: !616)
!698 = !DILocation(line: 249, column: 3, scope: !616)
!699 = !DILocation(line: 251, column: 3, scope: !616)
!700 = !DILocation(line: 252, column: 2, scope: !616)
!701 = !DILocation(line: 253, column: 9, scope: !602)
!702 = !DILocation(line: 253, column: 2, scope: !602)
!703 = distinct !DISubprogram(name: "sqlite_get_user_key", scope: !58, file: !58, line: 256, type: !413, scopeLine: 257, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!704 = !DILocalVariable(name: "usname", arg: 1, scope: !703, file: !58, line: 256, type: !407)
!705 = !DILocation(line: 256, column: 41, scope: !703)
!706 = !DILocalVariable(name: "realm", arg: 2, scope: !703, file: !58, line: 256, type: !407)
!707 = !DILocation(line: 256, column: 58, scope: !703)
!708 = !DILocalVariable(name: "key", arg: 3, scope: !703, file: !58, line: 256, type: !407)
!709 = !DILocation(line: 256, column: 75, scope: !703)
!710 = !DILocalVariable(name: "ret", scope: !703, file: !58, line: 258, type: !15)
!711 = !DILocation(line: 258, column: 6, scope: !703)
!712 = !DILocalVariable(name: "sqliteconnection", scope: !703, file: !58, line: 259, type: !36)
!713 = !DILocation(line: 259, column: 11, scope: !703)
!714 = !DILocation(line: 259, column: 30, scope: !703)
!715 = !DILocation(line: 260, column: 6, scope: !716)
!716 = distinct !DILexicalBlock(scope: !703, file: !58, line: 260, column: 6)
!717 = !DILocation(line: 260, column: 6, scope: !703)
!718 = !DILocalVariable(name: "statement", scope: !719, file: !58, line: 261, type: !617)
!719 = distinct !DILexicalBlock(scope: !716, file: !58, line: 260, column: 24)
!720 = !DILocation(line: 261, column: 8, scope: !719)
!721 = !DILocalVariable(name: "st", scope: !719, file: !58, line: 262, type: !622)
!722 = !DILocation(line: 262, column: 17, scope: !719)
!723 = !DILocalVariable(name: "rc", scope: !719, file: !58, line: 263, type: !15)
!724 = !DILocation(line: 263, column: 7, scope: !719)
!725 = !DILocation(line: 265, column: 12, scope: !719)
!726 = !DILocation(line: 265, column: 109, scope: !719)
!727 = !DILocation(line: 265, column: 117, scope: !719)
!728 = !DILocation(line: 265, column: 3, scope: !719)
!729 = !DILocation(line: 267, column: 3, scope: !719)
!730 = !DILocation(line: 269, column: 29, scope: !731)
!731 = distinct !DILexicalBlock(scope: !719, file: !58, line: 269, column: 7)
!732 = !DILocation(line: 269, column: 47, scope: !731)
!733 = !DILocation(line: 269, column: 13, scope: !731)
!734 = !DILocation(line: 269, column: 11, scope: !731)
!735 = !DILocation(line: 269, column: 71, scope: !731)
!736 = !DILocation(line: 269, column: 7, scope: !719)
!737 = !DILocalVariable(name: "res", scope: !738, file: !58, line: 270, type: !15)
!738 = distinct !DILexicalBlock(scope: !731, file: !58, line: 269, column: 85)
!739 = !DILocation(line: 270, column: 8, scope: !738)
!740 = !DILocation(line: 270, column: 27, scope: !738)
!741 = !DILocation(line: 270, column: 14, scope: !738)
!742 = !DILocation(line: 271, column: 8, scope: !743)
!743 = distinct !DILexicalBlock(scope: !738, file: !58, line: 271, column: 8)
!744 = !DILocation(line: 271, column: 12, scope: !743)
!745 = !DILocation(line: 271, column: 8, scope: !738)
!746 = !DILocalVariable(name: "kval", scope: !747, file: !58, line: 272, type: !40)
!747 = distinct !DILexicalBlock(scope: !743, file: !58, line: 271, column: 27)
!748 = !DILocation(line: 272, column: 11, scope: !747)
!749 = !DILocation(line: 272, column: 59, scope: !747)
!750 = !DILocation(line: 272, column: 39, scope: !747)
!751 = !DILocation(line: 272, column: 18, scope: !747)
!752 = !DILocalVariable(name: "sz", scope: !747, file: !58, line: 273, type: !405)
!753 = !DILocation(line: 273, column: 12, scope: !747)
!754 = !DILocation(line: 273, column: 17, scope: !747)
!755 = !DILocation(line: 274, column: 38, scope: !756)
!756 = distinct !DILexicalBlock(scope: !747, file: !58, line: 274, column: 9)
!757 = !DILocation(line: 274, column: 44, scope: !756)
!758 = !DILocation(line: 274, column: 49, scope: !756)
!759 = !DILocation(line: 274, column: 9, scope: !756)
!760 = !DILocation(line: 274, column: 53, scope: !756)
!761 = !DILocation(line: 274, column: 9, scope: !747)
!762 = !DILocation(line: 275, column: 70, scope: !763)
!763 = distinct !DILexicalBlock(scope: !756, file: !58, line: 274, column: 58)
!764 = !DILocation(line: 275, column: 76, scope: !763)
!765 = !DILocation(line: 275, column: 6, scope: !763)
!766 = !DILocation(line: 276, column: 5, scope: !763)
!767 = !DILocation(line: 277, column: 10, scope: !768)
!768 = distinct !DILexicalBlock(scope: !756, file: !58, line: 276, column: 12)
!769 = !DILocation(line: 279, column: 10, scope: !747)
!770 = !DILocation(line: 279, column: 5, scope: !747)
!771 = !DILocation(line: 280, column: 4, scope: !747)
!772 = !DILocation(line: 281, column: 3, scope: !738)
!773 = !DILocalVariable(name: "errmsg", scope: !774, file: !58, line: 282, type: !33)
!774 = distinct !DILexicalBlock(scope: !731, file: !58, line: 281, column: 10)
!775 = !DILocation(line: 282, column: 16, scope: !774)
!776 = !DILocation(line: 282, column: 40, scope: !774)
!777 = !DILocation(line: 282, column: 25, scope: !774)
!778 = !DILocation(line: 283, column: 88, scope: !774)
!779 = !DILocation(line: 283, column: 4, scope: !774)
!780 = !DILocation(line: 286, column: 20, scope: !719)
!781 = !DILocation(line: 286, column: 3, scope: !719)
!782 = !DILocation(line: 288, column: 3, scope: !719)
!783 = !DILocation(line: 289, column: 2, scope: !719)
!784 = !DILocation(line: 290, column: 9, scope: !703)
!785 = !DILocation(line: 290, column: 2, scope: !703)
!786 = distinct !DISubprogram(name: "sqlite_set_user_key", scope: !58, file: !58, line: 410, type: !417, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!787 = !DILocalVariable(name: "usname", arg: 1, scope: !786, file: !58, line: 410, type: !407)
!788 = !DILocation(line: 410, column: 41, scope: !786)
!789 = !DILocalVariable(name: "realm", arg: 2, scope: !786, file: !58, line: 410, type: !407)
!790 = !DILocation(line: 410, column: 58, scope: !786)
!791 = !DILocalVariable(name: "key", arg: 3, scope: !786, file: !58, line: 410, type: !33)
!792 = !DILocation(line: 410, column: 77, scope: !786)
!793 = !DILocalVariable(name: "ret", scope: !786, file: !58, line: 412, type: !15)
!794 = !DILocation(line: 412, column: 6, scope: !786)
!795 = !DILocalVariable(name: "statement", scope: !786, file: !58, line: 413, type: !617)
!796 = !DILocation(line: 413, column: 7, scope: !786)
!797 = !DILocalVariable(name: "st", scope: !786, file: !58, line: 414, type: !622)
!798 = !DILocation(line: 414, column: 16, scope: !786)
!799 = !DILocalVariable(name: "rc", scope: !786, file: !58, line: 415, type: !15)
!800 = !DILocation(line: 415, column: 6, scope: !786)
!801 = !DILocation(line: 417, column: 32, scope: !786)
!802 = !DILocalVariable(name: "sqliteconnection", scope: !786, file: !58, line: 419, type: !36)
!803 = !DILocation(line: 419, column: 11, scope: !786)
!804 = !DILocation(line: 419, column: 30, scope: !786)
!805 = !DILocation(line: 420, column: 6, scope: !806)
!806 = distinct !DILexicalBlock(scope: !786, file: !58, line: 420, column: 6)
!807 = !DILocation(line: 420, column: 6, scope: !786)
!808 = !DILocation(line: 422, column: 3, scope: !809)
!809 = distinct !DILexicalBlock(scope: !806, file: !58, line: 420, column: 24)
!810 = !DILocation(line: 424, column: 12, scope: !809)
!811 = !DILocation(line: 424, column: 125, scope: !809)
!812 = !DILocation(line: 424, column: 132, scope: !809)
!813 = !DILocation(line: 424, column: 140, scope: !809)
!814 = !DILocation(line: 424, column: 3, scope: !809)
!815 = !DILocation(line: 426, column: 29, scope: !816)
!816 = distinct !DILexicalBlock(scope: !809, file: !58, line: 426, column: 7)
!817 = !DILocation(line: 426, column: 47, scope: !816)
!818 = !DILocation(line: 426, column: 13, scope: !816)
!819 = !DILocation(line: 426, column: 11, scope: !816)
!820 = !DILocation(line: 426, column: 71, scope: !816)
!821 = !DILocation(line: 426, column: 7, scope: !809)
!822 = !DILocation(line: 427, column: 17, scope: !823)
!823 = distinct !DILexicalBlock(scope: !816, file: !58, line: 426, column: 85)
!824 = !DILocation(line: 427, column: 4, scope: !823)
!825 = !DILocation(line: 428, column: 8, scope: !823)
!826 = !DILocation(line: 429, column: 3, scope: !823)
!827 = !DILocalVariable(name: "errmsg", scope: !828, file: !58, line: 430, type: !33)
!828 = distinct !DILexicalBlock(scope: !816, file: !58, line: 429, column: 10)
!829 = !DILocation(line: 430, column: 16, scope: !828)
!830 = !DILocation(line: 430, column: 40, scope: !828)
!831 = !DILocation(line: 430, column: 25, scope: !828)
!832 = !DILocation(line: 431, column: 88, scope: !828)
!833 = !DILocation(line: 431, column: 4, scope: !828)
!834 = !DILocation(line: 433, column: 20, scope: !809)
!835 = !DILocation(line: 433, column: 3, scope: !809)
!836 = !DILocation(line: 435, column: 3, scope: !809)
!837 = !DILocation(line: 436, column: 2, scope: !809)
!838 = !DILocation(line: 437, column: 9, scope: !786)
!839 = !DILocation(line: 437, column: 2, scope: !786)
!840 = distinct !DISubprogram(name: "sqlite_del_user", scope: !58, file: !58, line: 474, type: !421, scopeLine: 475, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!841 = !DILocalVariable(name: "usname", arg: 1, scope: !840, file: !58, line: 474, type: !407)
!842 = !DILocation(line: 474, column: 37, scope: !840)
!843 = !DILocalVariable(name: "realm", arg: 2, scope: !840, file: !58, line: 474, type: !407)
!844 = !DILocation(line: 474, column: 54, scope: !840)
!845 = !DILocalVariable(name: "ret", scope: !840, file: !58, line: 476, type: !15)
!846 = !DILocation(line: 476, column: 6, scope: !840)
!847 = !DILocalVariable(name: "statement", scope: !840, file: !58, line: 477, type: !617)
!848 = !DILocation(line: 477, column: 7, scope: !840)
!849 = !DILocalVariable(name: "st", scope: !840, file: !58, line: 478, type: !622)
!850 = !DILocation(line: 478, column: 16, scope: !840)
!851 = !DILocalVariable(name: "rc", scope: !840, file: !58, line: 479, type: !15)
!852 = !DILocation(line: 479, column: 6, scope: !840)
!853 = !DILocation(line: 481, column: 32, scope: !840)
!854 = !DILocalVariable(name: "sqliteconnection", scope: !840, file: !58, line: 483, type: !36)
!855 = !DILocation(line: 483, column: 11, scope: !840)
!856 = !DILocation(line: 483, column: 30, scope: !840)
!857 = !DILocation(line: 484, column: 6, scope: !858)
!858 = distinct !DILexicalBlock(scope: !840, file: !58, line: 484, column: 6)
!859 = !DILocation(line: 484, column: 6, scope: !840)
!860 = !DILocation(line: 485, column: 12, scope: !861)
!861 = distinct !DILexicalBlock(scope: !858, file: !58, line: 484, column: 24)
!862 = !DILocation(line: 485, column: 101, scope: !861)
!863 = !DILocation(line: 485, column: 109, scope: !861)
!864 = !DILocation(line: 485, column: 3, scope: !861)
!865 = !DILocation(line: 487, column: 3, scope: !861)
!866 = !DILocation(line: 489, column: 29, scope: !867)
!867 = distinct !DILexicalBlock(scope: !861, file: !58, line: 489, column: 7)
!868 = !DILocation(line: 489, column: 47, scope: !867)
!869 = !DILocation(line: 489, column: 13, scope: !867)
!870 = !DILocation(line: 489, column: 11, scope: !867)
!871 = !DILocation(line: 489, column: 71, scope: !867)
!872 = !DILocation(line: 489, column: 7, scope: !861)
!873 = !DILocation(line: 490, column: 17, scope: !874)
!874 = distinct !DILexicalBlock(scope: !867, file: !58, line: 489, column: 85)
!875 = !DILocation(line: 490, column: 4, scope: !874)
!876 = !DILocation(line: 491, column: 8, scope: !874)
!877 = !DILocation(line: 492, column: 3, scope: !874)
!878 = !DILocalVariable(name: "errmsg", scope: !879, file: !58, line: 493, type: !33)
!879 = distinct !DILexicalBlock(scope: !867, file: !58, line: 492, column: 10)
!880 = !DILocation(line: 493, column: 16, scope: !879)
!881 = !DILocation(line: 493, column: 40, scope: !879)
!882 = !DILocation(line: 493, column: 25, scope: !879)
!883 = !DILocation(line: 494, column: 88, scope: !879)
!884 = !DILocation(line: 494, column: 4, scope: !879)
!885 = !DILocation(line: 496, column: 20, scope: !861)
!886 = !DILocation(line: 496, column: 3, scope: !861)
!887 = !DILocation(line: 498, column: 3, scope: !861)
!888 = !DILocation(line: 499, column: 2, scope: !861)
!889 = !DILocation(line: 500, column: 9, scope: !840)
!890 = !DILocation(line: 500, column: 2, scope: !840)
!891 = distinct !DISubprogram(name: "sqlite_list_users", scope: !58, file: !58, line: 534, type: !425, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!892 = !DILocalVariable(name: "realm", arg: 1, scope: !891, file: !58, line: 534, type: !407)
!893 = !DILocation(line: 534, column: 39, scope: !891)
!894 = !DILocalVariable(name: "users", arg: 2, scope: !891, file: !58, line: 534, type: !398)
!895 = !DILocation(line: 534, column: 62, scope: !891)
!896 = !DILocalVariable(name: "realms", arg: 3, scope: !891, file: !58, line: 534, type: !398)
!897 = !DILocation(line: 534, column: 85, scope: !891)
!898 = !DILocalVariable(name: "ret", scope: !891, file: !58, line: 536, type: !15)
!899 = !DILocation(line: 536, column: 6, scope: !891)
!900 = !DILocalVariable(name: "statement", scope: !891, file: !58, line: 537, type: !617)
!901 = !DILocation(line: 537, column: 7, scope: !891)
!902 = !DILocalVariable(name: "st", scope: !891, file: !58, line: 538, type: !622)
!903 = !DILocation(line: 538, column: 16, scope: !891)
!904 = !DILocalVariable(name: "rc", scope: !891, file: !58, line: 539, type: !15)
!905 = !DILocation(line: 539, column: 6, scope: !891)
!906 = !DILocalVariable(name: "realm0", scope: !891, file: !58, line: 541, type: !907)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 1024, elements: !555)
!908 = !DILocation(line: 541, column: 10, scope: !891)
!909 = !DILocation(line: 542, column: 6, scope: !910)
!910 = distinct !DILexicalBlock(scope: !891, file: !58, line: 542, column: 5)
!911 = !DILocation(line: 542, column: 5, scope: !891)
!912 = !DILocation(line: 542, column: 19, scope: !910)
!913 = !DILocation(line: 542, column: 18, scope: !910)
!914 = !DILocation(line: 542, column: 13, scope: !910)
!915 = !DILocation(line: 544, column: 32, scope: !891)
!916 = !DILocalVariable(name: "sqliteconnection", scope: !891, file: !58, line: 546, type: !36)
!917 = !DILocation(line: 546, column: 11, scope: !891)
!918 = !DILocation(line: 546, column: 30, scope: !891)
!919 = !DILocation(line: 547, column: 6, scope: !920)
!920 = distinct !DILexicalBlock(scope: !891, file: !58, line: 547, column: 6)
!921 = !DILocation(line: 547, column: 6, scope: !891)
!922 = !DILocation(line: 548, column: 7, scope: !923)
!923 = distinct !DILexicalBlock(scope: !924, file: !58, line: 548, column: 7)
!924 = distinct !DILexicalBlock(scope: !920, file: !58, line: 547, column: 24)
!925 = !DILocation(line: 548, column: 7, scope: !924)
!926 = !DILocation(line: 549, column: 13, scope: !927)
!927 = distinct !DILexicalBlock(scope: !923, file: !58, line: 548, column: 17)
!928 = !DILocation(line: 549, column: 113, scope: !927)
!929 = !DILocation(line: 549, column: 4, scope: !927)
!930 = !DILocation(line: 550, column: 3, scope: !927)
!931 = !DILocation(line: 551, column: 13, scope: !932)
!932 = distinct !DILexicalBlock(scope: !923, file: !58, line: 550, column: 10)
!933 = !DILocation(line: 551, column: 4, scope: !932)
!934 = !DILocation(line: 554, column: 3, scope: !924)
!935 = !DILocation(line: 556, column: 29, scope: !936)
!936 = distinct !DILexicalBlock(scope: !924, file: !58, line: 556, column: 7)
!937 = !DILocation(line: 556, column: 47, scope: !936)
!938 = !DILocation(line: 556, column: 13, scope: !936)
!939 = !DILocation(line: 556, column: 11, scope: !936)
!940 = !DILocation(line: 556, column: 71, scope: !936)
!941 = !DILocation(line: 556, column: 7, scope: !924)
!942 = !DILocation(line: 558, column: 8, scope: !943)
!943 = distinct !DILexicalBlock(scope: !936, file: !58, line: 556, column: 85)
!944 = !DILocation(line: 559, column: 4, scope: !943)
!945 = !DILocalVariable(name: "res", scope: !946, file: !58, line: 560, type: !15)
!946 = distinct !DILexicalBlock(scope: !943, file: !58, line: 559, column: 14)
!947 = !DILocation(line: 560, column: 9, scope: !946)
!948 = !DILocation(line: 560, column: 28, scope: !946)
!949 = !DILocation(line: 560, column: 15, scope: !946)
!950 = !DILocation(line: 561, column: 9, scope: !951)
!951 = distinct !DILexicalBlock(scope: !946, file: !58, line: 561, column: 9)
!952 = !DILocation(line: 561, column: 13, scope: !951)
!953 = !DILocation(line: 561, column: 9, scope: !946)
!954 = !DILocalVariable(name: "kval", scope: !955, file: !58, line: 563, type: !33)
!955 = distinct !DILexicalBlock(scope: !951, file: !58, line: 561, column: 28)
!956 = !DILocation(line: 563, column: 18, scope: !955)
!957 = !DILocation(line: 563, column: 59, scope: !955)
!958 = !DILocation(line: 563, column: 39, scope: !955)
!959 = !DILocalVariable(name: "rval", scope: !955, file: !58, line: 564, type: !33)
!960 = !DILocation(line: 564, column: 18, scope: !955)
!961 = !DILocation(line: 564, column: 59, scope: !955)
!962 = !DILocation(line: 564, column: 39, scope: !955)
!963 = !DILocation(line: 566, column: 9, scope: !964)
!964 = distinct !DILexicalBlock(scope: !955, file: !58, line: 566, column: 9)
!965 = !DILocation(line: 566, column: 9, scope: !955)
!966 = !DILocation(line: 567, column: 27, scope: !967)
!967 = distinct !DILexicalBlock(scope: !964, file: !58, line: 566, column: 16)
!968 = !DILocation(line: 567, column: 33, scope: !967)
!969 = !DILocation(line: 567, column: 7, scope: !967)
!970 = !DILocation(line: 568, column: 10, scope: !971)
!971 = distinct !DILexicalBlock(scope: !967, file: !58, line: 568, column: 10)
!972 = !DILocation(line: 568, column: 10, scope: !967)
!973 = !DILocation(line: 569, column: 11, scope: !974)
!974 = distinct !DILexicalBlock(scope: !975, file: !58, line: 569, column: 11)
!975 = distinct !DILexicalBlock(scope: !971, file: !58, line: 568, column: 18)
!976 = !DILocation(line: 569, column: 16, scope: !974)
!977 = !DILocation(line: 569, column: 20, scope: !974)
!978 = !DILocation(line: 569, column: 19, scope: !974)
!979 = !DILocation(line: 569, column: 11, scope: !975)
!980 = !DILocation(line: 570, column: 29, scope: !981)
!981 = distinct !DILexicalBlock(scope: !974, file: !58, line: 569, column: 26)
!982 = !DILocation(line: 570, column: 36, scope: !981)
!983 = !DILocation(line: 570, column: 9, scope: !981)
!984 = !DILocation(line: 571, column: 8, scope: !981)
!985 = !DILocation(line: 572, column: 29, scope: !986)
!986 = distinct !DILexicalBlock(scope: !974, file: !58, line: 571, column: 15)
!987 = !DILocation(line: 572, column: 43, scope: !986)
!988 = !DILocation(line: 572, column: 9, scope: !986)
!989 = !DILocation(line: 574, column: 7, scope: !975)
!990 = !DILocation(line: 575, column: 6, scope: !967)
!991 = !DILocation(line: 576, column: 26, scope: !992)
!992 = distinct !DILexicalBlock(scope: !964, file: !58, line: 575, column: 13)
!993 = !DILocation(line: 576, column: 32, scope: !992)
!994 = !DILocation(line: 576, column: 7, scope: !992)
!995 = !DILocation(line: 579, column: 5, scope: !955)
!996 = !DILocation(line: 579, column: 16, scope: !997)
!997 = distinct !DILexicalBlock(scope: !951, file: !58, line: 579, column: 16)
!998 = !DILocation(line: 579, column: 20, scope: !997)
!999 = !DILocation(line: 579, column: 16, scope: !951)
!1000 = !DILocation(line: 580, column: 6, scope: !1001)
!1001 = distinct !DILexicalBlock(scope: !997, file: !58, line: 579, column: 36)
!1002 = !DILocalVariable(name: "errmsg", scope: !1003, file: !58, line: 582, type: !33)
!1003 = distinct !DILexicalBlock(scope: !997, file: !58, line: 581, column: 12)
!1004 = !DILocation(line: 582, column: 18, scope: !1003)
!1005 = !DILocation(line: 582, column: 42, scope: !1003)
!1006 = !DILocation(line: 582, column: 27, scope: !1003)
!1007 = !DILocation(line: 583, column: 90, scope: !1003)
!1008 = !DILocation(line: 583, column: 6, scope: !1003)
!1009 = !DILocation(line: 584, column: 10, scope: !1003)
!1010 = !DILocation(line: 585, column: 6, scope: !1003)
!1011 = distinct !{!1011, !944, !1012}
!1012 = !DILocation(line: 587, column: 4, scope: !943)
!1013 = !DILocation(line: 588, column: 3, scope: !943)
!1014 = !DILocalVariable(name: "errmsg", scope: !1015, file: !58, line: 589, type: !33)
!1015 = distinct !DILexicalBlock(scope: !936, file: !58, line: 588, column: 10)
!1016 = !DILocation(line: 589, column: 16, scope: !1015)
!1017 = !DILocation(line: 589, column: 40, scope: !1015)
!1018 = !DILocation(line: 589, column: 25, scope: !1015)
!1019 = !DILocation(line: 590, column: 88, scope: !1015)
!1020 = !DILocation(line: 590, column: 4, scope: !1015)
!1021 = !DILocation(line: 592, column: 20, scope: !924)
!1022 = !DILocation(line: 592, column: 3, scope: !924)
!1023 = !DILocation(line: 594, column: 3, scope: !924)
!1024 = !DILocation(line: 595, column: 2, scope: !924)
!1025 = !DILocation(line: 596, column: 9, scope: !891)
!1026 = !DILocation(line: 596, column: 2, scope: !891)
!1027 = distinct !DISubprogram(name: "sqlite_list_secrets", scope: !58, file: !58, line: 599, type: !425, scopeLine: 600, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1028 = !DILocalVariable(name: "realm", arg: 1, scope: !1027, file: !58, line: 599, type: !407)
!1029 = !DILocation(line: 599, column: 41, scope: !1027)
!1030 = !DILocalVariable(name: "secrets", arg: 2, scope: !1027, file: !58, line: 599, type: !398)
!1031 = !DILocation(line: 599, column: 64, scope: !1027)
!1032 = !DILocalVariable(name: "realms", arg: 3, scope: !1027, file: !58, line: 599, type: !398)
!1033 = !DILocation(line: 599, column: 89, scope: !1027)
!1034 = !DILocalVariable(name: "ret", scope: !1027, file: !58, line: 601, type: !15)
!1035 = !DILocation(line: 601, column: 6, scope: !1027)
!1036 = !DILocalVariable(name: "statement", scope: !1027, file: !58, line: 602, type: !617)
!1037 = !DILocation(line: 602, column: 7, scope: !1027)
!1038 = !DILocalVariable(name: "realm0", scope: !1027, file: !58, line: 604, type: !907)
!1039 = !DILocation(line: 604, column: 10, scope: !1027)
!1040 = !DILocation(line: 605, column: 6, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1027, file: !58, line: 605, column: 5)
!1042 = !DILocation(line: 605, column: 5, scope: !1027)
!1043 = !DILocation(line: 605, column: 19, scope: !1041)
!1044 = !DILocation(line: 605, column: 18, scope: !1041)
!1045 = !DILocation(line: 605, column: 13, scope: !1041)
!1046 = !DILocalVariable(name: "st", scope: !1027, file: !58, line: 607, type: !622)
!1047 = !DILocation(line: 607, column: 16, scope: !1027)
!1048 = !DILocalVariable(name: "rc", scope: !1027, file: !58, line: 608, type: !15)
!1049 = !DILocation(line: 608, column: 6, scope: !1027)
!1050 = !DILocation(line: 610, column: 6, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1027, file: !58, line: 610, column: 6)
!1052 = !DILocation(line: 610, column: 6, scope: !1027)
!1053 = !DILocation(line: 611, column: 12, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !58, line: 610, column: 16)
!1055 = !DILocation(line: 611, column: 113, scope: !1054)
!1056 = !DILocation(line: 611, column: 3, scope: !1054)
!1057 = !DILocation(line: 612, column: 2, scope: !1054)
!1058 = !DILocation(line: 613, column: 12, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1051, file: !58, line: 612, column: 9)
!1060 = !DILocation(line: 613, column: 3, scope: !1059)
!1061 = !DILocation(line: 616, column: 32, scope: !1027)
!1062 = !DILocalVariable(name: "sqliteconnection", scope: !1027, file: !58, line: 618, type: !36)
!1063 = !DILocation(line: 618, column: 11, scope: !1027)
!1064 = !DILocation(line: 618, column: 30, scope: !1027)
!1065 = !DILocation(line: 619, column: 5, scope: !1066)
!1066 = distinct !DILexicalBlock(scope: !1027, file: !58, line: 619, column: 5)
!1067 = !DILocation(line: 619, column: 5, scope: !1027)
!1068 = !DILocation(line: 621, column: 3, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1066, file: !58, line: 619, column: 23)
!1070 = !DILocation(line: 623, column: 29, scope: !1071)
!1071 = distinct !DILexicalBlock(scope: !1069, file: !58, line: 623, column: 7)
!1072 = !DILocation(line: 623, column: 47, scope: !1071)
!1073 = !DILocation(line: 623, column: 13, scope: !1071)
!1074 = !DILocation(line: 623, column: 11, scope: !1071)
!1075 = !DILocation(line: 623, column: 71, scope: !1071)
!1076 = !DILocation(line: 623, column: 7, scope: !1069)
!1077 = !DILocalVariable(name: "res", scope: !1078, file: !58, line: 625, type: !15)
!1078 = distinct !DILexicalBlock(scope: !1071, file: !58, line: 623, column: 85)
!1079 = !DILocation(line: 625, column: 8, scope: !1078)
!1080 = !DILocation(line: 626, column: 4, scope: !1078)
!1081 = !DILocation(line: 627, column: 24, scope: !1082)
!1082 = distinct !DILexicalBlock(scope: !1078, file: !58, line: 626, column: 13)
!1083 = !DILocation(line: 627, column: 11, scope: !1082)
!1084 = !DILocation(line: 627, column: 9, scope: !1082)
!1085 = !DILocation(line: 628, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1082, file: !58, line: 628, column: 9)
!1087 = !DILocation(line: 628, column: 13, scope: !1086)
!1088 = !DILocation(line: 628, column: 9, scope: !1082)
!1089 = !DILocation(line: 629, column: 10, scope: !1090)
!1090 = distinct !DILexicalBlock(scope: !1086, file: !58, line: 628, column: 28)
!1091 = !DILocalVariable(name: "kval", scope: !1090, file: !58, line: 630, type: !33)
!1092 = !DILocation(line: 630, column: 18, scope: !1090)
!1093 = !DILocation(line: 630, column: 59, scope: !1090)
!1094 = !DILocation(line: 630, column: 39, scope: !1090)
!1095 = !DILocation(line: 631, column: 9, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1090, file: !58, line: 631, column: 9)
!1097 = !DILocation(line: 631, column: 9, scope: !1090)
!1098 = !DILocalVariable(name: "rval", scope: !1099, file: !58, line: 632, type: !33)
!1099 = distinct !DILexicalBlock(scope: !1096, file: !58, line: 631, column: 15)
!1100 = !DILocation(line: 632, column: 19, scope: !1099)
!1101 = !DILocation(line: 632, column: 60, scope: !1099)
!1102 = !DILocation(line: 632, column: 40, scope: !1099)
!1103 = !DILocation(line: 633, column: 10, scope: !1104)
!1104 = distinct !DILexicalBlock(scope: !1099, file: !58, line: 633, column: 10)
!1105 = !DILocation(line: 633, column: 10, scope: !1099)
!1106 = !DILocation(line: 634, column: 28, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1104, file: !58, line: 633, column: 19)
!1108 = !DILocation(line: 634, column: 36, scope: !1107)
!1109 = !DILocation(line: 634, column: 8, scope: !1107)
!1110 = !DILocation(line: 635, column: 11, scope: !1111)
!1111 = distinct !DILexicalBlock(scope: !1107, file: !58, line: 635, column: 11)
!1112 = !DILocation(line: 635, column: 11, scope: !1107)
!1113 = !DILocation(line: 636, column: 12, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1115, file: !58, line: 636, column: 12)
!1115 = distinct !DILexicalBlock(scope: !1111, file: !58, line: 635, column: 19)
!1116 = !DILocation(line: 636, column: 17, scope: !1114)
!1117 = !DILocation(line: 636, column: 21, scope: !1114)
!1118 = !DILocation(line: 636, column: 20, scope: !1114)
!1119 = !DILocation(line: 636, column: 12, scope: !1115)
!1120 = !DILocation(line: 637, column: 30, scope: !1121)
!1121 = distinct !DILexicalBlock(scope: !1114, file: !58, line: 636, column: 27)
!1122 = !DILocation(line: 637, column: 37, scope: !1121)
!1123 = !DILocation(line: 637, column: 10, scope: !1121)
!1124 = !DILocation(line: 638, column: 9, scope: !1121)
!1125 = !DILocation(line: 639, column: 30, scope: !1126)
!1126 = distinct !DILexicalBlock(scope: !1114, file: !58, line: 638, column: 16)
!1127 = !DILocation(line: 639, column: 44, scope: !1126)
!1128 = !DILocation(line: 639, column: 10, scope: !1126)
!1129 = !DILocation(line: 641, column: 8, scope: !1115)
!1130 = !DILocation(line: 642, column: 7, scope: !1107)
!1131 = !DILocation(line: 643, column: 26, scope: !1132)
!1132 = distinct !DILexicalBlock(scope: !1104, file: !58, line: 642, column: 14)
!1133 = !DILocation(line: 643, column: 31, scope: !1132)
!1134 = !DILocation(line: 643, column: 8, scope: !1132)
!1135 = !DILocation(line: 645, column: 6, scope: !1099)
!1136 = !DILocation(line: 646, column: 5, scope: !1090)
!1137 = !DILocation(line: 646, column: 16, scope: !1138)
!1138 = distinct !DILexicalBlock(scope: !1086, file: !58, line: 646, column: 16)
!1139 = !DILocation(line: 646, column: 20, scope: !1138)
!1140 = !DILocation(line: 646, column: 16, scope: !1086)
!1141 = !DILocation(line: 647, column: 6, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1138, file: !58, line: 646, column: 36)
!1143 = !DILocalVariable(name: "errmsg", scope: !1144, file: !58, line: 649, type: !33)
!1144 = distinct !DILexicalBlock(scope: !1138, file: !58, line: 648, column: 12)
!1145 = !DILocation(line: 649, column: 18, scope: !1144)
!1146 = !DILocation(line: 649, column: 42, scope: !1144)
!1147 = !DILocation(line: 649, column: 27, scope: !1144)
!1148 = !DILocation(line: 650, column: 90, scope: !1144)
!1149 = !DILocation(line: 650, column: 6, scope: !1144)
!1150 = !DILocation(line: 651, column: 10, scope: !1144)
!1151 = !DILocation(line: 652, column: 6, scope: !1144)
!1152 = distinct !{!1152, !1080, !1153}
!1153 = !DILocation(line: 654, column: 4, scope: !1078)
!1154 = !DILocation(line: 655, column: 3, scope: !1078)
!1155 = !DILocation(line: 656, column: 20, scope: !1069)
!1156 = !DILocation(line: 656, column: 3, scope: !1069)
!1157 = !DILocation(line: 658, column: 3, scope: !1069)
!1158 = !DILocation(line: 659, column: 2, scope: !1069)
!1159 = !DILocation(line: 660, column: 9, scope: !1027)
!1160 = !DILocation(line: 660, column: 2, scope: !1027)
!1161 = distinct !DISubprogram(name: "sqlite_del_secret", scope: !58, file: !58, line: 663, type: !421, scopeLine: 664, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1162 = !DILocalVariable(name: "secret", arg: 1, scope: !1161, file: !58, line: 663, type: !407)
!1163 = !DILocation(line: 663, column: 39, scope: !1161)
!1164 = !DILocalVariable(name: "realm", arg: 2, scope: !1161, file: !58, line: 663, type: !407)
!1165 = !DILocation(line: 663, column: 56, scope: !1161)
!1166 = !DILocalVariable(name: "ret", scope: !1161, file: !58, line: 665, type: !15)
!1167 = !DILocation(line: 665, column: 6, scope: !1161)
!1168 = !DILocation(line: 666, column: 32, scope: !1161)
!1169 = !DILocalVariable(name: "statement", scope: !1161, file: !58, line: 667, type: !617)
!1170 = !DILocation(line: 667, column: 7, scope: !1161)
!1171 = !DILocalVariable(name: "st", scope: !1161, file: !58, line: 668, type: !622)
!1172 = !DILocation(line: 668, column: 16, scope: !1161)
!1173 = !DILocalVariable(name: "rc", scope: !1161, file: !58, line: 669, type: !15)
!1174 = !DILocation(line: 669, column: 6, scope: !1161)
!1175 = !DILocalVariable(name: "sqliteconnection", scope: !1161, file: !58, line: 671, type: !36)
!1176 = !DILocation(line: 671, column: 11, scope: !1161)
!1177 = !DILocation(line: 671, column: 30, scope: !1161)
!1178 = !DILocation(line: 672, column: 6, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1161, file: !58, line: 672, column: 6)
!1180 = !DILocation(line: 672, column: 6, scope: !1161)
!1181 = !DILocation(line: 673, column: 7, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !1183, file: !58, line: 673, column: 6)
!1183 = distinct !DILexicalBlock(scope: !1179, file: !58, line: 672, column: 24)
!1184 = !DILocation(line: 673, column: 14, scope: !1182)
!1185 = !DILocation(line: 673, column: 18, scope: !1182)
!1186 = !DILocation(line: 673, column: 27, scope: !1182)
!1187 = !DILocation(line: 673, column: 6, scope: !1183)
!1188 = !DILocation(line: 674, column: 14, scope: !1182)
!1189 = !DILocation(line: 674, column: 85, scope: !1182)
!1190 = !DILocation(line: 674, column: 5, scope: !1182)
!1191 = !DILocation(line: 676, column: 14, scope: !1182)
!1192 = !DILocation(line: 676, column: 100, scope: !1182)
!1193 = !DILocation(line: 676, column: 107, scope: !1182)
!1194 = !DILocation(line: 676, column: 5, scope: !1182)
!1195 = !DILocation(line: 678, column: 3, scope: !1183)
!1196 = !DILocation(line: 680, column: 29, scope: !1197)
!1197 = distinct !DILexicalBlock(scope: !1183, file: !58, line: 680, column: 7)
!1198 = !DILocation(line: 680, column: 47, scope: !1197)
!1199 = !DILocation(line: 680, column: 13, scope: !1197)
!1200 = !DILocation(line: 680, column: 11, scope: !1197)
!1201 = !DILocation(line: 680, column: 71, scope: !1197)
!1202 = !DILocation(line: 680, column: 7, scope: !1183)
!1203 = !DILocation(line: 681, column: 17, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1197, file: !58, line: 680, column: 85)
!1205 = !DILocation(line: 681, column: 4, scope: !1204)
!1206 = !DILocation(line: 682, column: 8, scope: !1204)
!1207 = !DILocation(line: 683, column: 3, scope: !1204)
!1208 = !DILocalVariable(name: "errmsg", scope: !1209, file: !58, line: 684, type: !33)
!1209 = distinct !DILexicalBlock(scope: !1197, file: !58, line: 683, column: 10)
!1210 = !DILocation(line: 684, column: 16, scope: !1209)
!1211 = !DILocation(line: 684, column: 40, scope: !1209)
!1212 = !DILocation(line: 684, column: 25, scope: !1209)
!1213 = !DILocation(line: 685, column: 88, scope: !1209)
!1214 = !DILocation(line: 685, column: 4, scope: !1209)
!1215 = !DILocation(line: 687, column: 20, scope: !1183)
!1216 = !DILocation(line: 687, column: 3, scope: !1183)
!1217 = !DILocation(line: 689, column: 3, scope: !1183)
!1218 = !DILocation(line: 690, column: 2, scope: !1183)
!1219 = !DILocation(line: 691, column: 9, scope: !1161)
!1220 = !DILocation(line: 691, column: 2, scope: !1161)
!1221 = distinct !DISubprogram(name: "sqlite_set_secret", scope: !58, file: !58, line: 694, type: !421, scopeLine: 695, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1222 = !DILocalVariable(name: "secret", arg: 1, scope: !1221, file: !58, line: 694, type: !407)
!1223 = !DILocation(line: 694, column: 39, scope: !1221)
!1224 = !DILocalVariable(name: "realm", arg: 2, scope: !1221, file: !58, line: 694, type: !407)
!1225 = !DILocation(line: 694, column: 56, scope: !1221)
!1226 = !DILocalVariable(name: "ret", scope: !1221, file: !58, line: 696, type: !15)
!1227 = !DILocation(line: 696, column: 6, scope: !1221)
!1228 = !DILocation(line: 697, column: 33, scope: !1221)
!1229 = !DILocalVariable(name: "statement", scope: !1221, file: !58, line: 698, type: !617)
!1230 = !DILocation(line: 698, column: 7, scope: !1221)
!1231 = !DILocalVariable(name: "st", scope: !1221, file: !58, line: 699, type: !622)
!1232 = !DILocation(line: 699, column: 16, scope: !1221)
!1233 = !DILocalVariable(name: "rc", scope: !1221, file: !58, line: 700, type: !15)
!1234 = !DILocation(line: 700, column: 6, scope: !1221)
!1235 = !DILocalVariable(name: "sqliteconnection", scope: !1221, file: !58, line: 702, type: !36)
!1236 = !DILocation(line: 702, column: 11, scope: !1221)
!1237 = !DILocation(line: 702, column: 30, scope: !1221)
!1238 = !DILocation(line: 703, column: 6, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1221, file: !58, line: 703, column: 6)
!1240 = !DILocation(line: 703, column: 6, scope: !1221)
!1241 = !DILocation(line: 705, column: 13, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !58, line: 703, column: 24)
!1243 = !DILocation(line: 705, column: 110, scope: !1242)
!1244 = !DILocation(line: 705, column: 116, scope: !1242)
!1245 = !DILocation(line: 705, column: 4, scope: !1242)
!1246 = !DILocation(line: 707, column: 4, scope: !1242)
!1247 = !DILocation(line: 709, column: 30, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1242, file: !58, line: 709, column: 8)
!1249 = !DILocation(line: 709, column: 48, scope: !1248)
!1250 = !DILocation(line: 709, column: 14, scope: !1248)
!1251 = !DILocation(line: 709, column: 12, scope: !1248)
!1252 = !DILocation(line: 709, column: 72, scope: !1248)
!1253 = !DILocation(line: 709, column: 8, scope: !1242)
!1254 = !DILocation(line: 710, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1248, file: !58, line: 709, column: 86)
!1256 = !DILocation(line: 710, column: 4, scope: !1255)
!1257 = !DILocation(line: 711, column: 8, scope: !1255)
!1258 = !DILocation(line: 712, column: 3, scope: !1255)
!1259 = !DILocalVariable(name: "errmsg", scope: !1260, file: !58, line: 713, type: !33)
!1260 = distinct !DILexicalBlock(scope: !1248, file: !58, line: 712, column: 10)
!1261 = !DILocation(line: 713, column: 16, scope: !1260)
!1262 = !DILocation(line: 713, column: 40, scope: !1260)
!1263 = !DILocation(line: 713, column: 25, scope: !1260)
!1264 = !DILocation(line: 714, column: 88, scope: !1260)
!1265 = !DILocation(line: 714, column: 4, scope: !1260)
!1266 = !DILocation(line: 716, column: 20, scope: !1242)
!1267 = !DILocation(line: 716, column: 3, scope: !1242)
!1268 = !DILocation(line: 718, column: 3, scope: !1242)
!1269 = !DILocation(line: 719, column: 2, scope: !1242)
!1270 = !DILocation(line: 720, column: 9, scope: !1221)
!1271 = !DILocation(line: 720, column: 2, scope: !1221)
!1272 = distinct !DISubprogram(name: "sqlite_add_origin", scope: !58, file: !58, line: 723, type: !421, scopeLine: 724, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1273 = !DILocalVariable(name: "origin", arg: 1, scope: !1272, file: !58, line: 723, type: !407)
!1274 = !DILocation(line: 723, column: 39, scope: !1272)
!1275 = !DILocalVariable(name: "realm", arg: 2, scope: !1272, file: !58, line: 723, type: !407)
!1276 = !DILocation(line: 723, column: 56, scope: !1272)
!1277 = !DILocalVariable(name: "ret", scope: !1272, file: !58, line: 725, type: !15)
!1278 = !DILocation(line: 725, column: 6, scope: !1272)
!1279 = !DILocalVariable(name: "statement", scope: !1272, file: !58, line: 726, type: !617)
!1280 = !DILocation(line: 726, column: 7, scope: !1272)
!1281 = !DILocalVariable(name: "st", scope: !1272, file: !58, line: 727, type: !622)
!1282 = !DILocation(line: 727, column: 16, scope: !1272)
!1283 = !DILocalVariable(name: "rc", scope: !1272, file: !58, line: 728, type: !15)
!1284 = !DILocation(line: 728, column: 6, scope: !1272)
!1285 = !DILocation(line: 729, column: 32, scope: !1272)
!1286 = !DILocalVariable(name: "sqliteconnection", scope: !1272, file: !58, line: 731, type: !36)
!1287 = !DILocation(line: 731, column: 11, scope: !1272)
!1288 = !DILocation(line: 731, column: 30, scope: !1272)
!1289 = !DILocation(line: 732, column: 5, scope: !1290)
!1290 = distinct !DILexicalBlock(scope: !1272, file: !58, line: 732, column: 5)
!1291 = !DILocation(line: 732, column: 5, scope: !1272)
!1292 = !DILocation(line: 733, column: 12, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1290, file: !58, line: 732, column: 23)
!1294 = !DILocation(line: 733, column: 119, scope: !1293)
!1295 = !DILocation(line: 733, column: 126, scope: !1293)
!1296 = !DILocation(line: 733, column: 3, scope: !1293)
!1297 = !DILocation(line: 735, column: 3, scope: !1293)
!1298 = !DILocation(line: 737, column: 29, scope: !1299)
!1299 = distinct !DILexicalBlock(scope: !1293, file: !58, line: 737, column: 7)
!1300 = !DILocation(line: 737, column: 47, scope: !1299)
!1301 = !DILocation(line: 737, column: 13, scope: !1299)
!1302 = !DILocation(line: 737, column: 11, scope: !1299)
!1303 = !DILocation(line: 737, column: 71, scope: !1299)
!1304 = !DILocation(line: 737, column: 7, scope: !1293)
!1305 = !DILocation(line: 738, column: 17, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1299, file: !58, line: 737, column: 85)
!1307 = !DILocation(line: 738, column: 4, scope: !1306)
!1308 = !DILocation(line: 739, column: 8, scope: !1306)
!1309 = !DILocation(line: 740, column: 3, scope: !1306)
!1310 = !DILocalVariable(name: "errmsg", scope: !1311, file: !58, line: 741, type: !33)
!1311 = distinct !DILexicalBlock(scope: !1299, file: !58, line: 740, column: 10)
!1312 = !DILocation(line: 741, column: 16, scope: !1311)
!1313 = !DILocation(line: 741, column: 40, scope: !1311)
!1314 = !DILocation(line: 741, column: 25, scope: !1311)
!1315 = !DILocation(line: 742, column: 88, scope: !1311)
!1316 = !DILocation(line: 742, column: 4, scope: !1311)
!1317 = !DILocation(line: 744, column: 20, scope: !1293)
!1318 = !DILocation(line: 744, column: 3, scope: !1293)
!1319 = !DILocation(line: 746, column: 3, scope: !1293)
!1320 = !DILocation(line: 747, column: 2, scope: !1293)
!1321 = !DILocation(line: 748, column: 9, scope: !1272)
!1322 = !DILocation(line: 748, column: 2, scope: !1272)
!1323 = distinct !DISubprogram(name: "sqlite_del_origin", scope: !58, file: !58, line: 751, type: !433, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1324 = !DILocalVariable(name: "origin", arg: 1, scope: !1323, file: !58, line: 751, type: !407)
!1325 = !DILocation(line: 751, column: 39, scope: !1323)
!1326 = !DILocalVariable(name: "ret", scope: !1323, file: !58, line: 753, type: !15)
!1327 = !DILocation(line: 753, column: 6, scope: !1323)
!1328 = !DILocalVariable(name: "statement", scope: !1323, file: !58, line: 754, type: !617)
!1329 = !DILocation(line: 754, column: 7, scope: !1323)
!1330 = !DILocalVariable(name: "st", scope: !1323, file: !58, line: 755, type: !622)
!1331 = !DILocation(line: 755, column: 16, scope: !1323)
!1332 = !DILocalVariable(name: "rc", scope: !1323, file: !58, line: 756, type: !15)
!1333 = !DILocation(line: 756, column: 6, scope: !1323)
!1334 = !DILocation(line: 757, column: 32, scope: !1323)
!1335 = !DILocalVariable(name: "sqliteconnection", scope: !1323, file: !58, line: 759, type: !36)
!1336 = !DILocation(line: 759, column: 11, scope: !1323)
!1337 = !DILocation(line: 759, column: 30, scope: !1323)
!1338 = !DILocation(line: 760, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1323, file: !58, line: 760, column: 5)
!1340 = !DILocation(line: 760, column: 5, scope: !1323)
!1341 = !DILocation(line: 761, column: 12, scope: !1342)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !58, line: 760, column: 23)
!1343 = !DILocation(line: 761, column: 93, scope: !1342)
!1344 = !DILocation(line: 761, column: 3, scope: !1342)
!1345 = !DILocation(line: 763, column: 3, scope: !1342)
!1346 = !DILocation(line: 765, column: 29, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1342, file: !58, line: 765, column: 7)
!1348 = !DILocation(line: 765, column: 47, scope: !1347)
!1349 = !DILocation(line: 765, column: 13, scope: !1347)
!1350 = !DILocation(line: 765, column: 11, scope: !1347)
!1351 = !DILocation(line: 765, column: 71, scope: !1347)
!1352 = !DILocation(line: 765, column: 7, scope: !1342)
!1353 = !DILocation(line: 766, column: 17, scope: !1354)
!1354 = distinct !DILexicalBlock(scope: !1347, file: !58, line: 765, column: 85)
!1355 = !DILocation(line: 766, column: 4, scope: !1354)
!1356 = !DILocation(line: 767, column: 8, scope: !1354)
!1357 = !DILocation(line: 768, column: 3, scope: !1354)
!1358 = !DILocalVariable(name: "errmsg", scope: !1359, file: !58, line: 769, type: !33)
!1359 = distinct !DILexicalBlock(scope: !1347, file: !58, line: 768, column: 10)
!1360 = !DILocation(line: 769, column: 16, scope: !1359)
!1361 = !DILocation(line: 769, column: 40, scope: !1359)
!1362 = !DILocation(line: 769, column: 25, scope: !1359)
!1363 = !DILocation(line: 770, column: 88, scope: !1359)
!1364 = !DILocation(line: 770, column: 4, scope: !1359)
!1365 = !DILocation(line: 772, column: 20, scope: !1342)
!1366 = !DILocation(line: 772, column: 3, scope: !1342)
!1367 = !DILocation(line: 774, column: 3, scope: !1342)
!1368 = !DILocation(line: 775, column: 2, scope: !1342)
!1369 = !DILocation(line: 776, column: 9, scope: !1323)
!1370 = !DILocation(line: 776, column: 2, scope: !1323)
!1371 = distinct !DISubprogram(name: "sqlite_list_origins", scope: !58, file: !58, line: 779, type: !425, scopeLine: 780, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1372 = !DILocalVariable(name: "realm", arg: 1, scope: !1371, file: !58, line: 779, type: !407)
!1373 = !DILocation(line: 779, column: 41, scope: !1371)
!1374 = !DILocalVariable(name: "origins", arg: 2, scope: !1371, file: !58, line: 779, type: !398)
!1375 = !DILocation(line: 779, column: 64, scope: !1371)
!1376 = !DILocalVariable(name: "realms", arg: 3, scope: !1371, file: !58, line: 779, type: !398)
!1377 = !DILocation(line: 779, column: 89, scope: !1371)
!1378 = !DILocalVariable(name: "ret", scope: !1371, file: !58, line: 781, type: !15)
!1379 = !DILocation(line: 781, column: 6, scope: !1371)
!1380 = !DILocalVariable(name: "realm0", scope: !1371, file: !58, line: 783, type: !907)
!1381 = !DILocation(line: 783, column: 10, scope: !1371)
!1382 = !DILocation(line: 784, column: 6, scope: !1383)
!1383 = distinct !DILexicalBlock(scope: !1371, file: !58, line: 784, column: 5)
!1384 = !DILocation(line: 784, column: 5, scope: !1371)
!1385 = !DILocation(line: 784, column: 19, scope: !1383)
!1386 = !DILocation(line: 784, column: 18, scope: !1383)
!1387 = !DILocation(line: 784, column: 13, scope: !1383)
!1388 = !DILocation(line: 786, column: 33, scope: !1371)
!1389 = !DILocalVariable(name: "st", scope: !1371, file: !58, line: 788, type: !622)
!1390 = !DILocation(line: 788, column: 16, scope: !1371)
!1391 = !DILocalVariable(name: "rc", scope: !1371, file: !58, line: 789, type: !15)
!1392 = !DILocation(line: 789, column: 6, scope: !1371)
!1393 = !DILocalVariable(name: "sqliteconnection", scope: !1371, file: !58, line: 791, type: !36)
!1394 = !DILocation(line: 791, column: 11, scope: !1371)
!1395 = !DILocation(line: 791, column: 30, scope: !1371)
!1396 = !DILocation(line: 792, column: 6, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1371, file: !58, line: 792, column: 6)
!1398 = !DILocation(line: 792, column: 6, scope: !1371)
!1399 = !DILocalVariable(name: "statement", scope: !1400, file: !58, line: 793, type: !617)
!1400 = distinct !DILexicalBlock(scope: !1397, file: !58, line: 792, column: 24)
!1401 = !DILocation(line: 793, column: 8, scope: !1400)
!1402 = !DILocation(line: 794, column: 7, scope: !1403)
!1403 = distinct !DILexicalBlock(scope: !1400, file: !58, line: 794, column: 7)
!1404 = !DILocation(line: 794, column: 13, scope: !1403)
!1405 = !DILocation(line: 794, column: 16, scope: !1403)
!1406 = !DILocation(line: 794, column: 7, scope: !1400)
!1407 = !DILocation(line: 795, column: 13, scope: !1408)
!1408 = distinct !DILexicalBlock(scope: !1403, file: !58, line: 794, column: 26)
!1409 = !DILocation(line: 795, column: 125, scope: !1408)
!1410 = !DILocation(line: 795, column: 4, scope: !1408)
!1411 = !DILocation(line: 796, column: 3, scope: !1408)
!1412 = !DILocation(line: 797, column: 13, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1403, file: !58, line: 796, column: 10)
!1414 = !DILocation(line: 797, column: 4, scope: !1413)
!1415 = !DILocation(line: 800, column: 3, scope: !1400)
!1416 = !DILocation(line: 802, column: 29, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1400, file: !58, line: 802, column: 7)
!1418 = !DILocation(line: 802, column: 47, scope: !1417)
!1419 = !DILocation(line: 802, column: 13, scope: !1417)
!1420 = !DILocation(line: 802, column: 11, scope: !1417)
!1421 = !DILocation(line: 802, column: 71, scope: !1417)
!1422 = !DILocation(line: 802, column: 7, scope: !1400)
!1423 = !DILocation(line: 804, column: 8, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1417, file: !58, line: 802, column: 85)
!1425 = !DILocation(line: 805, column: 4, scope: !1424)
!1426 = !DILocalVariable(name: "res", scope: !1427, file: !58, line: 806, type: !15)
!1427 = distinct !DILexicalBlock(scope: !1424, file: !58, line: 805, column: 14)
!1428 = !DILocation(line: 806, column: 9, scope: !1427)
!1429 = !DILocation(line: 806, column: 28, scope: !1427)
!1430 = !DILocation(line: 806, column: 15, scope: !1427)
!1431 = !DILocation(line: 807, column: 9, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1427, file: !58, line: 807, column: 9)
!1433 = !DILocation(line: 807, column: 13, scope: !1432)
!1434 = !DILocation(line: 807, column: 9, scope: !1427)
!1435 = !DILocalVariable(name: "kval", scope: !1436, file: !58, line: 809, type: !33)
!1436 = distinct !DILexicalBlock(scope: !1432, file: !58, line: 807, column: 28)
!1437 = !DILocation(line: 809, column: 18, scope: !1436)
!1438 = !DILocation(line: 809, column: 59, scope: !1436)
!1439 = !DILocation(line: 809, column: 39, scope: !1436)
!1440 = !DILocalVariable(name: "rval", scope: !1436, file: !58, line: 810, type: !33)
!1441 = !DILocation(line: 810, column: 18, scope: !1436)
!1442 = !DILocation(line: 810, column: 59, scope: !1436)
!1443 = !DILocation(line: 810, column: 39, scope: !1436)
!1444 = !DILocation(line: 812, column: 9, scope: !1445)
!1445 = distinct !DILexicalBlock(scope: !1436, file: !58, line: 812, column: 9)
!1446 = !DILocation(line: 812, column: 9, scope: !1436)
!1447 = !DILocation(line: 813, column: 27, scope: !1448)
!1448 = distinct !DILexicalBlock(scope: !1445, file: !58, line: 812, column: 18)
!1449 = !DILocation(line: 813, column: 35, scope: !1448)
!1450 = !DILocation(line: 813, column: 7, scope: !1448)
!1451 = !DILocation(line: 814, column: 10, scope: !1452)
!1452 = distinct !DILexicalBlock(scope: !1448, file: !58, line: 814, column: 10)
!1453 = !DILocation(line: 814, column: 10, scope: !1448)
!1454 = !DILocation(line: 815, column: 11, scope: !1455)
!1455 = distinct !DILexicalBlock(scope: !1456, file: !58, line: 815, column: 11)
!1456 = distinct !DILexicalBlock(scope: !1452, file: !58, line: 814, column: 18)
!1457 = !DILocation(line: 815, column: 16, scope: !1455)
!1458 = !DILocation(line: 815, column: 20, scope: !1455)
!1459 = !DILocation(line: 815, column: 19, scope: !1455)
!1460 = !DILocation(line: 815, column: 11, scope: !1456)
!1461 = !DILocation(line: 816, column: 29, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1455, file: !58, line: 815, column: 26)
!1463 = !DILocation(line: 816, column: 36, scope: !1462)
!1464 = !DILocation(line: 816, column: 9, scope: !1462)
!1465 = !DILocation(line: 817, column: 8, scope: !1462)
!1466 = !DILocation(line: 818, column: 29, scope: !1467)
!1467 = distinct !DILexicalBlock(scope: !1455, file: !58, line: 817, column: 15)
!1468 = !DILocation(line: 818, column: 43, scope: !1467)
!1469 = !DILocation(line: 818, column: 9, scope: !1467)
!1470 = !DILocation(line: 820, column: 7, scope: !1456)
!1471 = !DILocation(line: 821, column: 6, scope: !1448)
!1472 = !DILocation(line: 822, column: 29, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1445, file: !58, line: 821, column: 13)
!1474 = !DILocation(line: 822, column: 34, scope: !1473)
!1475 = !DILocation(line: 822, column: 7, scope: !1473)
!1476 = !DILocation(line: 824, column: 5, scope: !1436)
!1477 = !DILocation(line: 824, column: 16, scope: !1478)
!1478 = distinct !DILexicalBlock(scope: !1432, file: !58, line: 824, column: 16)
!1479 = !DILocation(line: 824, column: 20, scope: !1478)
!1480 = !DILocation(line: 824, column: 16, scope: !1432)
!1481 = !DILocation(line: 825, column: 6, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1478, file: !58, line: 824, column: 36)
!1483 = !DILocalVariable(name: "errmsg", scope: !1484, file: !58, line: 827, type: !33)
!1484 = distinct !DILexicalBlock(scope: !1478, file: !58, line: 826, column: 12)
!1485 = !DILocation(line: 827, column: 18, scope: !1484)
!1486 = !DILocation(line: 827, column: 42, scope: !1484)
!1487 = !DILocation(line: 827, column: 27, scope: !1484)
!1488 = !DILocation(line: 828, column: 90, scope: !1484)
!1489 = !DILocation(line: 828, column: 6, scope: !1484)
!1490 = !DILocation(line: 829, column: 10, scope: !1484)
!1491 = !DILocation(line: 830, column: 6, scope: !1484)
!1492 = distinct !{!1492, !1425, !1493}
!1493 = !DILocation(line: 832, column: 4, scope: !1424)
!1494 = !DILocation(line: 833, column: 3, scope: !1424)
!1495 = !DILocalVariable(name: "errmsg", scope: !1496, file: !58, line: 834, type: !33)
!1496 = distinct !DILexicalBlock(scope: !1417, file: !58, line: 833, column: 10)
!1497 = !DILocation(line: 834, column: 16, scope: !1496)
!1498 = !DILocation(line: 834, column: 40, scope: !1496)
!1499 = !DILocation(line: 834, column: 25, scope: !1496)
!1500 = !DILocation(line: 835, column: 88, scope: !1496)
!1501 = !DILocation(line: 835, column: 4, scope: !1496)
!1502 = !DILocation(line: 837, column: 20, scope: !1400)
!1503 = !DILocation(line: 837, column: 3, scope: !1400)
!1504 = !DILocation(line: 839, column: 3, scope: !1400)
!1505 = !DILocation(line: 840, column: 2, scope: !1400)
!1506 = !DILocation(line: 841, column: 9, scope: !1371)
!1507 = !DILocation(line: 841, column: 2, scope: !1371)
!1508 = distinct !DISubprogram(name: "sqlite_set_realm_option_one", scope: !58, file: !58, line: 844, type: !438, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1509 = !DILocalVariable(name: "realm", arg: 1, scope: !1508, file: !58, line: 844, type: !407)
!1510 = !DILocation(line: 844, column: 49, scope: !1508)
!1511 = !DILocalVariable(name: "value", arg: 2, scope: !1508, file: !58, line: 844, type: !41)
!1512 = !DILocation(line: 844, column: 70, scope: !1508)
!1513 = !DILocalVariable(name: "opt", arg: 3, scope: !1508, file: !58, line: 844, type: !33)
!1514 = !DILocation(line: 844, column: 89, scope: !1508)
!1515 = !DILocalVariable(name: "ret", scope: !1508, file: !58, line: 846, type: !15)
!1516 = !DILocation(line: 846, column: 6, scope: !1508)
!1517 = !DILocalVariable(name: "statement", scope: !1508, file: !58, line: 847, type: !617)
!1518 = !DILocation(line: 847, column: 7, scope: !1508)
!1519 = !DILocalVariable(name: "st", scope: !1508, file: !58, line: 848, type: !622)
!1520 = !DILocation(line: 848, column: 16, scope: !1508)
!1521 = !DILocalVariable(name: "rc", scope: !1508, file: !58, line: 849, type: !15)
!1522 = !DILocation(line: 849, column: 6, scope: !1508)
!1523 = !DILocation(line: 850, column: 32, scope: !1508)
!1524 = !DILocalVariable(name: "sqliteconnection", scope: !1508, file: !58, line: 852, type: !36)
!1525 = !DILocation(line: 852, column: 11, scope: !1508)
!1526 = !DILocation(line: 852, column: 30, scope: !1508)
!1527 = !DILocation(line: 853, column: 5, scope: !1528)
!1528 = distinct !DILexicalBlock(scope: !1508, file: !58, line: 853, column: 5)
!1529 = !DILocation(line: 853, column: 5, scope: !1508)
!1530 = !DILocation(line: 854, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !58, line: 854, column: 6)
!1532 = distinct !DILexicalBlock(scope: !1528, file: !58, line: 853, column: 23)
!1533 = !DILocation(line: 854, column: 11, scope: !1531)
!1534 = !DILocation(line: 854, column: 6, scope: !1532)
!1535 = !DILocation(line: 855, column: 13, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1531, file: !58, line: 854, column: 15)
!1537 = !DILocation(line: 855, column: 126, scope: !1536)
!1538 = !DILocation(line: 855, column: 132, scope: !1536)
!1539 = !DILocation(line: 855, column: 151, scope: !1536)
!1540 = !DILocation(line: 855, column: 4, scope: !1536)
!1541 = !DILocation(line: 857, column: 4, scope: !1536)
!1542 = !DILocation(line: 859, column: 30, scope: !1543)
!1543 = distinct !DILexicalBlock(scope: !1536, file: !58, line: 859, column: 8)
!1544 = !DILocation(line: 859, column: 48, scope: !1543)
!1545 = !DILocation(line: 859, column: 14, scope: !1543)
!1546 = !DILocation(line: 859, column: 12, scope: !1543)
!1547 = !DILocation(line: 859, column: 72, scope: !1543)
!1548 = !DILocation(line: 859, column: 8, scope: !1536)
!1549 = !DILocation(line: 860, column: 18, scope: !1550)
!1550 = distinct !DILexicalBlock(scope: !1543, file: !58, line: 859, column: 86)
!1551 = !DILocation(line: 860, column: 5, scope: !1550)
!1552 = !DILocation(line: 861, column: 9, scope: !1550)
!1553 = !DILocation(line: 862, column: 4, scope: !1550)
!1554 = !DILocalVariable(name: "errmsg", scope: !1555, file: !58, line: 863, type: !33)
!1555 = distinct !DILexicalBlock(scope: !1543, file: !58, line: 862, column: 11)
!1556 = !DILocation(line: 863, column: 17, scope: !1555)
!1557 = !DILocation(line: 863, column: 41, scope: !1555)
!1558 = !DILocation(line: 863, column: 26, scope: !1555)
!1559 = !DILocation(line: 864, column: 89, scope: !1555)
!1560 = !DILocation(line: 864, column: 5, scope: !1555)
!1561 = !DILocation(line: 866, column: 21, scope: !1536)
!1562 = !DILocation(line: 866, column: 4, scope: !1536)
!1563 = !DILocation(line: 868, column: 4, scope: !1536)
!1564 = !DILocation(line: 869, column: 3, scope: !1536)
!1565 = !DILocation(line: 870, column: 2, scope: !1532)
!1566 = !DILocation(line: 871, column: 9, scope: !1508)
!1567 = !DILocation(line: 871, column: 2, scope: !1508)
!1568 = distinct !DISubprogram(name: "sqlite_list_realm_options", scope: !58, file: !58, line: 874, type: !433, scopeLine: 875, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1569 = !DILocalVariable(name: "realm", arg: 1, scope: !1568, file: !58, line: 874, type: !407)
!1570 = !DILocation(line: 874, column: 47, scope: !1568)
!1571 = !DILocalVariable(name: "ret", scope: !1568, file: !58, line: 876, type: !15)
!1572 = !DILocation(line: 876, column: 6, scope: !1568)
!1573 = !DILocation(line: 877, column: 33, scope: !1568)
!1574 = !DILocalVariable(name: "statement", scope: !1568, file: !58, line: 878, type: !617)
!1575 = !DILocation(line: 878, column: 7, scope: !1568)
!1576 = !DILocalVariable(name: "st", scope: !1568, file: !58, line: 879, type: !622)
!1577 = !DILocation(line: 879, column: 16, scope: !1568)
!1578 = !DILocalVariable(name: "rc", scope: !1568, file: !58, line: 880, type: !15)
!1579 = !DILocation(line: 880, column: 6, scope: !1568)
!1580 = !DILocalVariable(name: "sqliteconnection", scope: !1568, file: !58, line: 882, type: !36)
!1581 = !DILocation(line: 882, column: 11, scope: !1568)
!1582 = !DILocation(line: 882, column: 30, scope: !1568)
!1583 = !DILocation(line: 883, column: 6, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1568, file: !58, line: 883, column: 6)
!1585 = !DILocation(line: 883, column: 6, scope: !1568)
!1586 = !DILocation(line: 884, column: 7, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1588, file: !58, line: 884, column: 7)
!1588 = distinct !DILexicalBlock(scope: !1584, file: !58, line: 883, column: 24)
!1589 = !DILocation(line: 884, column: 13, scope: !1587)
!1590 = !DILocation(line: 884, column: 16, scope: !1587)
!1591 = !DILocation(line: 884, column: 7, scope: !1588)
!1592 = !DILocation(line: 885, column: 13, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1587, file: !58, line: 884, column: 26)
!1594 = !DILocation(line: 885, column: 128, scope: !1593)
!1595 = !DILocation(line: 885, column: 4, scope: !1593)
!1596 = !DILocation(line: 886, column: 3, scope: !1593)
!1597 = !DILocation(line: 887, column: 13, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !58, line: 886, column: 10)
!1599 = !DILocation(line: 887, column: 4, scope: !1598)
!1600 = !DILocation(line: 890, column: 3, scope: !1588)
!1601 = !DILocation(line: 892, column: 29, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1588, file: !58, line: 892, column: 7)
!1603 = !DILocation(line: 892, column: 47, scope: !1602)
!1604 = !DILocation(line: 892, column: 13, scope: !1602)
!1605 = !DILocation(line: 892, column: 11, scope: !1602)
!1606 = !DILocation(line: 892, column: 71, scope: !1602)
!1607 = !DILocation(line: 892, column: 7, scope: !1588)
!1608 = !DILocation(line: 894, column: 8, scope: !1609)
!1609 = distinct !DILexicalBlock(scope: !1602, file: !58, line: 892, column: 85)
!1610 = !DILocation(line: 896, column: 4, scope: !1609)
!1611 = !DILocalVariable(name: "res", scope: !1612, file: !58, line: 897, type: !15)
!1612 = distinct !DILexicalBlock(scope: !1609, file: !58, line: 896, column: 14)
!1613 = !DILocation(line: 897, column: 9, scope: !1612)
!1614 = !DILocation(line: 897, column: 28, scope: !1612)
!1615 = !DILocation(line: 897, column: 15, scope: !1612)
!1616 = !DILocation(line: 898, column: 9, scope: !1617)
!1617 = distinct !DILexicalBlock(scope: !1612, file: !58, line: 898, column: 9)
!1618 = !DILocation(line: 898, column: 13, scope: !1617)
!1619 = !DILocation(line: 898, column: 9, scope: !1612)
!1620 = !DILocalVariable(name: "rval", scope: !1621, file: !58, line: 900, type: !33)
!1621 = distinct !DILexicalBlock(scope: !1617, file: !58, line: 898, column: 28)
!1622 = !DILocation(line: 900, column: 18, scope: !1621)
!1623 = !DILocation(line: 900, column: 59, scope: !1621)
!1624 = !DILocation(line: 900, column: 39, scope: !1621)
!1625 = !DILocalVariable(name: "oval", scope: !1621, file: !58, line: 901, type: !33)
!1626 = !DILocation(line: 901, column: 18, scope: !1621)
!1627 = !DILocation(line: 901, column: 59, scope: !1621)
!1628 = !DILocation(line: 901, column: 39, scope: !1621)
!1629 = !DILocalVariable(name: "vval", scope: !1621, file: !58, line: 902, type: !33)
!1630 = !DILocation(line: 902, column: 18, scope: !1621)
!1631 = !DILocation(line: 902, column: 59, scope: !1621)
!1632 = !DILocation(line: 902, column: 39, scope: !1621)
!1633 = !DILocation(line: 904, column: 27, scope: !1621)
!1634 = !DILocation(line: 904, column: 32, scope: !1621)
!1635 = !DILocation(line: 904, column: 37, scope: !1621)
!1636 = !DILocation(line: 904, column: 6, scope: !1621)
!1637 = !DILocation(line: 906, column: 5, scope: !1621)
!1638 = !DILocation(line: 906, column: 16, scope: !1639)
!1639 = distinct !DILexicalBlock(scope: !1617, file: !58, line: 906, column: 16)
!1640 = !DILocation(line: 906, column: 20, scope: !1639)
!1641 = !DILocation(line: 906, column: 16, scope: !1617)
!1642 = !DILocation(line: 907, column: 6, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1639, file: !58, line: 906, column: 36)
!1644 = !DILocalVariable(name: "errmsg", scope: !1645, file: !58, line: 909, type: !33)
!1645 = distinct !DILexicalBlock(scope: !1639, file: !58, line: 908, column: 12)
!1646 = !DILocation(line: 909, column: 18, scope: !1645)
!1647 = !DILocation(line: 909, column: 42, scope: !1645)
!1648 = !DILocation(line: 909, column: 27, scope: !1645)
!1649 = !DILocation(line: 910, column: 90, scope: !1645)
!1650 = !DILocation(line: 910, column: 6, scope: !1645)
!1651 = !DILocation(line: 911, column: 10, scope: !1645)
!1652 = !DILocation(line: 912, column: 6, scope: !1645)
!1653 = distinct !{!1653, !1610, !1654}
!1654 = !DILocation(line: 914, column: 4, scope: !1609)
!1655 = !DILocation(line: 915, column: 3, scope: !1609)
!1656 = !DILocalVariable(name: "errmsg", scope: !1657, file: !58, line: 916, type: !33)
!1657 = distinct !DILexicalBlock(scope: !1602, file: !58, line: 915, column: 10)
!1658 = !DILocation(line: 916, column: 16, scope: !1657)
!1659 = !DILocation(line: 916, column: 40, scope: !1657)
!1660 = !DILocation(line: 916, column: 25, scope: !1657)
!1661 = !DILocation(line: 917, column: 88, scope: !1657)
!1662 = !DILocation(line: 917, column: 4, scope: !1657)
!1663 = !DILocation(line: 919, column: 20, scope: !1588)
!1664 = !DILocation(line: 919, column: 3, scope: !1588)
!1665 = !DILocation(line: 921, column: 3, scope: !1588)
!1666 = !DILocation(line: 922, column: 2, scope: !1588)
!1667 = !DILocation(line: 923, column: 9, scope: !1568)
!1668 = !DILocation(line: 923, column: 2, scope: !1568)
!1669 = distinct !DISubprogram(name: "sqlite_auth_ping", scope: !58, file: !58, line: 926, type: !443, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1670 = !DILocalVariable(name: "rch", arg: 1, scope: !1669, file: !58, line: 926, type: !445)
!1671 = !DILocation(line: 926, column: 37, scope: !1669)
!1672 = !DILocation(line: 928, column: 2, scope: !1669)
!1673 = !DILocation(line: 928, column: 2, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1669, file: !58, line: 928, column: 2)
!1675 = !DILocation(line: 929, column: 1, scope: !1669)
!1676 = distinct !DISubprogram(name: "sqlite_get_ip_list", scope: !58, file: !58, line: 931, type: !448, scopeLine: 932, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1677 = !DILocalVariable(name: "kind", arg: 1, scope: !1676, file: !58, line: 931, type: !33)
!1678 = !DILocation(line: 931, column: 43, scope: !1676)
!1679 = !DILocalVariable(name: "list", arg: 2, scope: !1676, file: !58, line: 931, type: !450)
!1680 = !DILocation(line: 931, column: 67, scope: !1676)
!1681 = !DILocalVariable(name: "ret", scope: !1676, file: !58, line: 933, type: !15)
!1682 = !DILocation(line: 933, column: 6, scope: !1676)
!1683 = !DILocalVariable(name: "sqliteconnection", scope: !1676, file: !58, line: 935, type: !36)
!1684 = !DILocation(line: 935, column: 11, scope: !1676)
!1685 = !DILocation(line: 935, column: 30, scope: !1676)
!1686 = !DILocation(line: 936, column: 6, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1676, file: !58, line: 936, column: 6)
!1688 = !DILocation(line: 936, column: 6, scope: !1676)
!1689 = !DILocalVariable(name: "statement", scope: !1690, file: !58, line: 937, type: !617)
!1690 = distinct !DILexicalBlock(scope: !1687, file: !58, line: 936, column: 24)
!1691 = !DILocation(line: 937, column: 8, scope: !1690)
!1692 = !DILocalVariable(name: "st", scope: !1690, file: !58, line: 938, type: !622)
!1693 = !DILocation(line: 938, column: 17, scope: !1690)
!1694 = !DILocalVariable(name: "rc", scope: !1690, file: !58, line: 939, type: !15)
!1695 = !DILocation(line: 939, column: 7, scope: !1690)
!1696 = !DILocation(line: 940, column: 12, scope: !1690)
!1697 = !DILocation(line: 940, column: 83, scope: !1690)
!1698 = !DILocation(line: 940, column: 3, scope: !1690)
!1699 = !DILocation(line: 942, column: 3, scope: !1690)
!1700 = !DILocation(line: 944, column: 29, scope: !1701)
!1701 = distinct !DILexicalBlock(scope: !1690, file: !58, line: 944, column: 7)
!1702 = !DILocation(line: 944, column: 47, scope: !1701)
!1703 = !DILocation(line: 944, column: 13, scope: !1701)
!1704 = !DILocation(line: 944, column: 11, scope: !1701)
!1705 = !DILocation(line: 944, column: 71, scope: !1701)
!1706 = !DILocation(line: 944, column: 7, scope: !1690)
!1707 = !DILocation(line: 946, column: 8, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1701, file: !58, line: 944, column: 85)
!1709 = !DILocation(line: 948, column: 4, scope: !1708)
!1710 = !DILocalVariable(name: "res", scope: !1711, file: !58, line: 949, type: !15)
!1711 = distinct !DILexicalBlock(scope: !1708, file: !58, line: 948, column: 14)
!1712 = !DILocation(line: 949, column: 9, scope: !1711)
!1713 = !DILocation(line: 949, column: 28, scope: !1711)
!1714 = !DILocation(line: 949, column: 15, scope: !1711)
!1715 = !DILocation(line: 950, column: 9, scope: !1716)
!1716 = distinct !DILexicalBlock(scope: !1711, file: !58, line: 950, column: 9)
!1717 = !DILocation(line: 950, column: 13, scope: !1716)
!1718 = !DILocation(line: 950, column: 9, scope: !1711)
!1719 = !DILocalVariable(name: "kval", scope: !1720, file: !58, line: 952, type: !33)
!1720 = distinct !DILexicalBlock(scope: !1716, file: !58, line: 950, column: 28)
!1721 = !DILocation(line: 952, column: 18, scope: !1720)
!1722 = !DILocation(line: 952, column: 59, scope: !1720)
!1723 = !DILocation(line: 952, column: 39, scope: !1720)
!1724 = !DILocalVariable(name: "rval", scope: !1720, file: !58, line: 953, type: !33)
!1725 = !DILocation(line: 953, column: 18, scope: !1720)
!1726 = !DILocation(line: 953, column: 59, scope: !1720)
!1727 = !DILocation(line: 953, column: 39, scope: !1720)
!1728 = !DILocation(line: 955, column: 24, scope: !1720)
!1729 = !DILocation(line: 955, column: 30, scope: !1720)
!1730 = !DILocation(line: 955, column: 36, scope: !1720)
!1731 = !DILocation(line: 955, column: 6, scope: !1720)
!1732 = !DILocation(line: 957, column: 5, scope: !1720)
!1733 = !DILocation(line: 957, column: 16, scope: !1734)
!1734 = distinct !DILexicalBlock(scope: !1716, file: !58, line: 957, column: 16)
!1735 = !DILocation(line: 957, column: 20, scope: !1734)
!1736 = !DILocation(line: 957, column: 16, scope: !1716)
!1737 = !DILocation(line: 958, column: 6, scope: !1738)
!1738 = distinct !DILexicalBlock(scope: !1734, file: !58, line: 957, column: 36)
!1739 = !DILocalVariable(name: "errmsg", scope: !1740, file: !58, line: 960, type: !33)
!1740 = distinct !DILexicalBlock(scope: !1734, file: !58, line: 959, column: 12)
!1741 = !DILocation(line: 960, column: 18, scope: !1740)
!1742 = !DILocation(line: 960, column: 42, scope: !1740)
!1743 = !DILocation(line: 960, column: 27, scope: !1740)
!1744 = !DILocation(line: 961, column: 90, scope: !1740)
!1745 = !DILocation(line: 961, column: 6, scope: !1740)
!1746 = !DILocation(line: 962, column: 10, scope: !1740)
!1747 = !DILocation(line: 963, column: 6, scope: !1740)
!1748 = distinct !{!1748, !1709, !1749}
!1749 = !DILocation(line: 965, column: 4, scope: !1708)
!1750 = !DILocation(line: 966, column: 3, scope: !1708)
!1751 = !DILocalVariable(name: "errmsg", scope: !1752, file: !58, line: 967, type: !33)
!1752 = distinct !DILexicalBlock(scope: !1701, file: !58, line: 966, column: 10)
!1753 = !DILocation(line: 967, column: 16, scope: !1752)
!1754 = !DILocation(line: 967, column: 40, scope: !1752)
!1755 = !DILocation(line: 967, column: 25, scope: !1752)
!1756 = !DILocation(line: 968, column: 88, scope: !1752)
!1757 = !DILocation(line: 968, column: 4, scope: !1752)
!1758 = !DILocation(line: 970, column: 20, scope: !1690)
!1759 = !DILocation(line: 970, column: 3, scope: !1690)
!1760 = !DILocation(line: 972, column: 3, scope: !1690)
!1761 = !DILocation(line: 973, column: 2, scope: !1690)
!1762 = !DILocation(line: 974, column: 9, scope: !1676)
!1763 = !DILocation(line: 974, column: 2, scope: !1676)
!1764 = distinct !DISubprogram(name: "sqlite_set_permission_ip", scope: !58, file: !58, line: 977, type: !530, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1765 = !DILocalVariable(name: "kind", arg: 1, scope: !1764, file: !58, line: 977, type: !33)
!1766 = !DILocation(line: 977, column: 49, scope: !1764)
!1767 = !DILocalVariable(name: "realm", arg: 2, scope: !1764, file: !58, line: 977, type: !407)
!1768 = !DILocation(line: 977, column: 64, scope: !1764)
!1769 = !DILocalVariable(name: "ip", arg: 3, scope: !1764, file: !58, line: 977, type: !33)
!1770 = !DILocation(line: 977, column: 83, scope: !1764)
!1771 = !DILocalVariable(name: "del", arg: 4, scope: !1764, file: !58, line: 977, type: !15)
!1772 = !DILocation(line: 977, column: 91, scope: !1764)
!1773 = !DILocalVariable(name: "ret", scope: !1764, file: !58, line: 979, type: !15)
!1774 = !DILocation(line: 979, column: 6, scope: !1764)
!1775 = !DILocalVariable(name: "realm0", scope: !1764, file: !58, line: 981, type: !907)
!1776 = !DILocation(line: 981, column: 10, scope: !1764)
!1777 = !DILocation(line: 982, column: 6, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1764, file: !58, line: 982, column: 5)
!1779 = !DILocation(line: 982, column: 5, scope: !1764)
!1780 = !DILocation(line: 982, column: 19, scope: !1778)
!1781 = !DILocation(line: 982, column: 18, scope: !1778)
!1782 = !DILocation(line: 982, column: 13, scope: !1778)
!1783 = !DILocalVariable(name: "statement", scope: !1764, file: !58, line: 984, type: !617)
!1784 = !DILocation(line: 984, column: 7, scope: !1764)
!1785 = !DILocalVariable(name: "st", scope: !1764, file: !58, line: 986, type: !622)
!1786 = !DILocation(line: 986, column: 16, scope: !1764)
!1787 = !DILocalVariable(name: "rc", scope: !1764, file: !58, line: 987, type: !15)
!1788 = !DILocation(line: 987, column: 6, scope: !1764)
!1789 = !DILocation(line: 989, column: 32, scope: !1764)
!1790 = !DILocalVariable(name: "sqliteconnection", scope: !1764, file: !58, line: 991, type: !36)
!1791 = !DILocation(line: 991, column: 11, scope: !1764)
!1792 = !DILocation(line: 991, column: 30, scope: !1764)
!1793 = !DILocation(line: 992, column: 6, scope: !1794)
!1794 = distinct !DILexicalBlock(scope: !1764, file: !58, line: 992, column: 6)
!1795 = !DILocation(line: 992, column: 6, scope: !1764)
!1796 = !DILocation(line: 994, column: 3, scope: !1797)
!1797 = distinct !DILexicalBlock(scope: !1794, file: !58, line: 992, column: 24)
!1798 = !DILocation(line: 996, column: 6, scope: !1799)
!1799 = distinct !DILexicalBlock(scope: !1797, file: !58, line: 996, column: 6)
!1800 = !DILocation(line: 996, column: 6, scope: !1797)
!1801 = !DILocation(line: 997, column: 13, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1799, file: !58, line: 996, column: 11)
!1803 = !DILocation(line: 997, column: 109, scope: !1802)
!1804 = !DILocation(line: 997, column: 122, scope: !1802)
!1805 = !DILocation(line: 997, column: 129, scope: !1802)
!1806 = !DILocation(line: 997, column: 4, scope: !1802)
!1807 = !DILocation(line: 998, column: 3, scope: !1802)
!1808 = !DILocation(line: 999, column: 13, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1799, file: !58, line: 998, column: 10)
!1810 = !DILocation(line: 999, column: 115, scope: !1809)
!1811 = !DILocation(line: 999, column: 128, scope: !1809)
!1812 = !DILocation(line: 999, column: 135, scope: !1809)
!1813 = !DILocation(line: 999, column: 4, scope: !1809)
!1814 = !DILocation(line: 1002, column: 29, scope: !1815)
!1815 = distinct !DILexicalBlock(scope: !1797, file: !58, line: 1002, column: 7)
!1816 = !DILocation(line: 1002, column: 47, scope: !1815)
!1817 = !DILocation(line: 1002, column: 13, scope: !1815)
!1818 = !DILocation(line: 1002, column: 11, scope: !1815)
!1819 = !DILocation(line: 1002, column: 71, scope: !1815)
!1820 = !DILocation(line: 1002, column: 7, scope: !1797)
!1821 = !DILocation(line: 1003, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1815, file: !58, line: 1002, column: 85)
!1823 = !DILocation(line: 1003, column: 4, scope: !1822)
!1824 = !DILocation(line: 1004, column: 8, scope: !1822)
!1825 = !DILocation(line: 1005, column: 3, scope: !1822)
!1826 = !DILocalVariable(name: "errmsg", scope: !1827, file: !58, line: 1006, type: !33)
!1827 = distinct !DILexicalBlock(scope: !1815, file: !58, line: 1005, column: 10)
!1828 = !DILocation(line: 1006, column: 16, scope: !1827)
!1829 = !DILocation(line: 1006, column: 40, scope: !1827)
!1830 = !DILocation(line: 1006, column: 25, scope: !1827)
!1831 = !DILocation(line: 1007, column: 86, scope: !1827)
!1832 = !DILocation(line: 1007, column: 4, scope: !1827)
!1833 = !DILocation(line: 1009, column: 20, scope: !1797)
!1834 = !DILocation(line: 1009, column: 3, scope: !1797)
!1835 = !DILocation(line: 1011, column: 3, scope: !1797)
!1836 = !DILocation(line: 1012, column: 2, scope: !1797)
!1837 = !DILocation(line: 1013, column: 9, scope: !1764)
!1838 = !DILocation(line: 1013, column: 2, scope: !1764)
!1839 = distinct !DISubprogram(name: "sqlite_reread_realms", scope: !58, file: !58, line: 1016, type: !534, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!1840 = !DILocalVariable(name: "realms_list", arg: 1, scope: !1839, file: !58, line: 1016, type: !398)
!1841 = !DILocation(line: 1016, column: 51, scope: !1839)
!1842 = !DILocalVariable(name: "sqliteconnection", scope: !1839, file: !58, line: 1018, type: !36)
!1843 = !DILocation(line: 1018, column: 11, scope: !1839)
!1844 = !DILocation(line: 1018, column: 30, scope: !1839)
!1845 = !DILocation(line: 1019, column: 5, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1839, file: !58, line: 1019, column: 5)
!1847 = !DILocation(line: 1019, column: 5, scope: !1839)
!1848 = !DILocalVariable(name: "statement", scope: !1849, file: !58, line: 1020, type: !617)
!1849 = distinct !DILexicalBlock(scope: !1846, file: !58, line: 1019, column: 23)
!1850 = !DILocation(line: 1020, column: 8, scope: !1849)
!1851 = !DILocalVariable(name: "st", scope: !1849, file: !58, line: 1021, type: !622)
!1852 = !DILocation(line: 1021, column: 17, scope: !1849)
!1853 = !DILocalVariable(name: "rc", scope: !1849, file: !58, line: 1022, type: !15)
!1854 = !DILocation(line: 1022, column: 7, scope: !1849)
!1855 = !DILocation(line: 1024, column: 13, scope: !1856)
!1856 = distinct !DILexicalBlock(scope: !1849, file: !58, line: 1023, column: 3)
!1857 = !DILocation(line: 1024, column: 4, scope: !1856)
!1858 = !DILocation(line: 1026, column: 4, scope: !1856)
!1859 = !DILocation(line: 1028, column: 30, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1856, file: !58, line: 1028, column: 8)
!1861 = !DILocation(line: 1028, column: 48, scope: !1860)
!1862 = !DILocation(line: 1028, column: 14, scope: !1860)
!1863 = !DILocation(line: 1028, column: 12, scope: !1860)
!1864 = !DILocation(line: 1028, column: 72, scope: !1860)
!1865 = !DILocation(line: 1028, column: 8, scope: !1856)
!1866 = !DILocalVariable(name: "o_to_realm_new", scope: !1867, file: !58, line: 1030, type: !1868)
!1867 = distinct !DILexicalBlock(scope: !1860, file: !58, line: 1028, column: 86)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !43, line: 227, baseType: !1870)
!1870 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !43, line: 226, flags: DIFlagFwdDecl)
!1871 = !DILocation(line: 1030, column: 20, scope: !1867)
!1872 = !DILocation(line: 1030, column: 37, scope: !1867)
!1873 = !DILocation(line: 1032, column: 5, scope: !1867)
!1874 = !DILocalVariable(name: "res", scope: !1875, file: !58, line: 1033, type: !15)
!1875 = distinct !DILexicalBlock(scope: !1867, file: !58, line: 1032, column: 15)
!1876 = !DILocation(line: 1033, column: 10, scope: !1875)
!1877 = !DILocation(line: 1033, column: 29, scope: !1875)
!1878 = !DILocation(line: 1033, column: 16, scope: !1875)
!1879 = !DILocation(line: 1034, column: 10, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1875, file: !58, line: 1034, column: 10)
!1881 = !DILocation(line: 1034, column: 14, scope: !1880)
!1882 = !DILocation(line: 1034, column: 10, scope: !1875)
!1883 = !DILocalVariable(name: "oval", scope: !1884, file: !58, line: 1036, type: !40)
!1884 = distinct !DILexicalBlock(scope: !1880, file: !58, line: 1034, column: 29)
!1885 = !DILocation(line: 1036, column: 13, scope: !1884)
!1886 = !DILocation(line: 1036, column: 61, scope: !1884)
!1887 = !DILocation(line: 1036, column: 41, scope: !1884)
!1888 = !DILocation(line: 1036, column: 20, scope: !1884)
!1889 = !DILocalVariable(name: "rval", scope: !1884, file: !58, line: 1037, type: !40)
!1890 = !DILocation(line: 1037, column: 13, scope: !1884)
!1891 = !DILocation(line: 1037, column: 61, scope: !1884)
!1892 = !DILocation(line: 1037, column: 41, scope: !1884)
!1893 = !DILocation(line: 1037, column: 20, scope: !1884)
!1894 = !DILocation(line: 1039, column: 17, scope: !1884)
!1895 = !DILocation(line: 1039, column: 7, scope: !1884)
!1896 = !DILocalVariable(name: "value", scope: !1884, file: !58, line: 1040, type: !1897)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !43, line: 225, baseType: !445)
!1898 = !DILocation(line: 1040, column: 32, scope: !1884)
!1899 = !DILocation(line: 1040, column: 40, scope: !1884)
!1900 = !DILocation(line: 1041, column: 25, scope: !1884)
!1901 = !DILocation(line: 1041, column: 66, scope: !1884)
!1902 = !DILocation(line: 1041, column: 72, scope: !1884)
!1903 = !DILocation(line: 1041, column: 7, scope: !1884)
!1904 = !DILocation(line: 1043, column: 12, scope: !1884)
!1905 = !DILocation(line: 1043, column: 7, scope: !1884)
!1906 = !DILocation(line: 1045, column: 6, scope: !1884)
!1907 = !DILocation(line: 1045, column: 17, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1880, file: !58, line: 1045, column: 17)
!1909 = !DILocation(line: 1045, column: 21, scope: !1908)
!1910 = !DILocation(line: 1045, column: 17, scope: !1880)
!1911 = !DILocation(line: 1046, column: 7, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1908, file: !58, line: 1045, column: 37)
!1913 = !DILocalVariable(name: "errmsg", scope: !1914, file: !58, line: 1048, type: !33)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !58, line: 1047, column: 13)
!1915 = !DILocation(line: 1048, column: 19, scope: !1914)
!1916 = !DILocation(line: 1048, column: 43, scope: !1914)
!1917 = !DILocation(line: 1048, column: 28, scope: !1914)
!1918 = !DILocation(line: 1049, column: 91, scope: !1914)
!1919 = !DILocation(line: 1049, column: 7, scope: !1914)
!1920 = !DILocation(line: 1050, column: 7, scope: !1914)
!1921 = distinct !{!1921, !1873, !1922}
!1922 = !DILocation(line: 1052, column: 5, scope: !1867)
!1923 = !DILocation(line: 1054, column: 23, scope: !1867)
!1924 = !DILocation(line: 1054, column: 5, scope: !1867)
!1925 = !DILocation(line: 1056, column: 4, scope: !1867)
!1926 = !DILocalVariable(name: "errmsg", scope: !1927, file: !58, line: 1057, type: !33)
!1927 = distinct !DILexicalBlock(scope: !1860, file: !58, line: 1056, column: 11)
!1928 = !DILocation(line: 1057, column: 17, scope: !1927)
!1929 = !DILocation(line: 1057, column: 41, scope: !1927)
!1930 = !DILocation(line: 1057, column: 26, scope: !1927)
!1931 = !DILocation(line: 1058, column: 89, scope: !1927)
!1932 = !DILocation(line: 1058, column: 5, scope: !1927)
!1933 = !DILocation(line: 1060, column: 21, scope: !1856)
!1934 = !DILocation(line: 1060, column: 4, scope: !1856)
!1935 = !DILocation(line: 1062, column: 4, scope: !1856)
!1936 = !DILocalVariable(name: "i", scope: !1937, file: !58, line: 1067, type: !405)
!1937 = distinct !DILexicalBlock(scope: !1938, file: !58, line: 1066, column: 4)
!1938 = distinct !DILexicalBlock(scope: !1849, file: !58, line: 1065, column: 3)
!1939 = !DILocation(line: 1067, column: 12, scope: !1937)
!1940 = !DILocalVariable(name: "rlsz", scope: !1937, file: !58, line: 1068, type: !405)
!1941 = !DILocation(line: 1068, column: 12, scope: !1937)
!1942 = !DILocation(line: 1070, column: 5, scope: !1937)
!1943 = !DILocation(line: 1071, column: 12, scope: !1937)
!1944 = !DILocation(line: 1071, column: 25, scope: !1937)
!1945 = !DILocation(line: 1071, column: 10, scope: !1937)
!1946 = !DILocation(line: 1072, column: 5, scope: !1937)
!1947 = !DILocation(line: 1074, column: 12, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1937, file: !58, line: 1074, column: 5)
!1949 = !DILocation(line: 1074, column: 10, scope: !1948)
!1950 = !DILocation(line: 1074, column: 17, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1948, file: !58, line: 1074, column: 5)
!1952 = !DILocation(line: 1074, column: 19, scope: !1951)
!1953 = !DILocation(line: 1074, column: 18, scope: !1951)
!1954 = !DILocation(line: 1074, column: 5, scope: !1948)
!1955 = !DILocalVariable(name: "realm", scope: !1956, file: !58, line: 1076, type: !40)
!1956 = distinct !DILexicalBlock(scope: !1951, file: !58, line: 1074, column: 30)
!1957 = !DILocation(line: 1076, column: 12, scope: !1956)
!1958 = !DILocation(line: 1076, column: 20, scope: !1956)
!1959 = !DILocation(line: 1076, column: 33, scope: !1956)
!1960 = !DILocation(line: 1076, column: 41, scope: !1956)
!1961 = !DILocalVariable(name: "rp", scope: !1956, file: !58, line: 1078, type: !1962)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !14, line: 55, baseType: !1964)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !14, line: 64, size: 1344, elements: !1965)
!1965 = !{!1966, !1967, !1981}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !1964, file: !14, line: 66, baseType: !15, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1964, file: !14, line: 68, baseType: !1968, size: 1152, offset: 64)
!1968 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !452, line: 142, baseType: !1969)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !1970, line: 53, size: 1152, elements: !1971)
!1970 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!1971 = !{!1972, !1973}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1969, file: !1970, line: 55, baseType: !554, size: 1024)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !1969, file: !1970, line: 57, baseType: !1974, size: 128, offset: 1024)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !1970, line: 51, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !1970, line: 45, size: 128, elements: !1976)
!1976 = !{!1977, !1979, !1980}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !1975, file: !1970, line: 47, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !44)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !1975, file: !1970, line: 48, baseType: !46, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !1975, file: !1970, line: 49, baseType: !46, size: 32, offset: 96)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1964, file: !14, line: 70, baseType: !1982, size: 128, offset: 1216)
!1982 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !14, line: 52, baseType: !1983)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !14, line: 57, size: 128, elements: !1984)
!1984 = !{!1985, !1986}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !1983, file: !14, line: 59, baseType: !46, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !1983, file: !14, line: 60, baseType: !1868, size: 64, offset: 64)
!1987 = !DILocation(line: 1078, column: 22, scope: !1956)
!1988 = !DILocation(line: 1078, column: 37, scope: !1956)
!1989 = !DILocation(line: 1078, column: 27, scope: !1956)
!1990 = !DILocation(line: 1080, column: 6, scope: !1956)
!1991 = !DILocation(line: 1081, column: 53, scope: !1956)
!1992 = !DILocation(line: 1081, column: 6, scope: !1956)
!1993 = !DILocation(line: 1081, column: 10, scope: !1956)
!1994 = !DILocation(line: 1081, column: 18, scope: !1956)
!1995 = !DILocation(line: 1081, column: 31, scope: !1956)
!1996 = !DILocation(line: 1081, column: 39, scope: !1956)
!1997 = !DILocation(line: 1082, column: 6, scope: !1956)
!1998 = !DILocation(line: 1084, column: 6, scope: !1956)
!1999 = !DILocation(line: 1085, column: 57, scope: !1956)
!2000 = !DILocation(line: 1085, column: 6, scope: !1956)
!2001 = !DILocation(line: 1085, column: 10, scope: !1956)
!2002 = !DILocation(line: 1085, column: 18, scope: !1956)
!2003 = !DILocation(line: 1085, column: 31, scope: !1956)
!2004 = !DILocation(line: 1085, column: 43, scope: !1956)
!2005 = !DILocation(line: 1086, column: 6, scope: !1956)
!2006 = !DILocation(line: 1088, column: 6, scope: !1956)
!2007 = !DILocation(line: 1089, column: 56, scope: !1956)
!2008 = !DILocation(line: 1089, column: 6, scope: !1956)
!2009 = !DILocation(line: 1089, column: 10, scope: !1956)
!2010 = !DILocation(line: 1089, column: 18, scope: !1956)
!2011 = !DILocation(line: 1089, column: 31, scope: !1956)
!2012 = !DILocation(line: 1089, column: 42, scope: !1956)
!2013 = !DILocation(line: 1090, column: 6, scope: !1956)
!2014 = !DILocation(line: 1092, column: 5, scope: !1956)
!2015 = !DILocation(line: 1074, column: 25, scope: !1951)
!2016 = !DILocation(line: 1074, column: 5, scope: !1951)
!2017 = distinct !{!2017, !1954, !2018, !688}
!2018 = !DILocation(line: 1092, column: 5, scope: !1948)
!2019 = !DILocation(line: 1095, column: 4, scope: !1938)
!2020 = !DILocation(line: 1097, column: 13, scope: !1938)
!2021 = !DILocation(line: 1097, column: 4, scope: !1938)
!2022 = !DILocation(line: 1098, column: 30, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !1938, file: !58, line: 1098, column: 8)
!2024 = !DILocation(line: 1098, column: 48, scope: !2023)
!2025 = !DILocation(line: 1098, column: 14, scope: !2023)
!2026 = !DILocation(line: 1098, column: 12, scope: !2023)
!2027 = !DILocation(line: 1098, column: 72, scope: !2023)
!2028 = !DILocation(line: 1098, column: 8, scope: !1938)
!2029 = !DILocation(line: 1100, column: 5, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2023, file: !58, line: 1098, column: 86)
!2031 = !DILocalVariable(name: "res", scope: !2032, file: !58, line: 1101, type: !15)
!2032 = distinct !DILexicalBlock(scope: !2030, file: !58, line: 1100, column: 15)
!2033 = !DILocation(line: 1101, column: 10, scope: !2032)
!2034 = !DILocation(line: 1101, column: 29, scope: !2032)
!2035 = !DILocation(line: 1101, column: 16, scope: !2032)
!2036 = !DILocation(line: 1102, column: 10, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2032, file: !58, line: 1102, column: 10)
!2038 = !DILocation(line: 1102, column: 14, scope: !2037)
!2039 = !DILocation(line: 1102, column: 10, scope: !2032)
!2040 = !DILocalVariable(name: "rval", scope: !2041, file: !58, line: 1104, type: !40)
!2041 = distinct !DILexicalBlock(scope: !2037, file: !58, line: 1102, column: 29)
!2042 = !DILocation(line: 1104, column: 13, scope: !2041)
!2043 = !DILocation(line: 1104, column: 61, scope: !2041)
!2044 = !DILocation(line: 1104, column: 41, scope: !2041)
!2045 = !DILocation(line: 1104, column: 20, scope: !2041)
!2046 = !DILocalVariable(name: "oval", scope: !2041, file: !58, line: 1105, type: !33)
!2047 = !DILocation(line: 1105, column: 19, scope: !2041)
!2048 = !DILocation(line: 1105, column: 60, scope: !2041)
!2049 = !DILocation(line: 1105, column: 40, scope: !2041)
!2050 = !DILocalVariable(name: "vval", scope: !2041, file: !58, line: 1106, type: !33)
!2051 = !DILocation(line: 1106, column: 19, scope: !2041)
!2052 = !DILocation(line: 1106, column: 60, scope: !2041)
!2053 = !DILocation(line: 1106, column: 40, scope: !2041)
!2054 = !DILocalVariable(name: "rp", scope: !2041, file: !58, line: 1108, type: !1962)
!2055 = !DILocation(line: 1108, column: 23, scope: !2041)
!2056 = !DILocation(line: 1108, column: 38, scope: !2041)
!2057 = !DILocation(line: 1108, column: 28, scope: !2041)
!2058 = !DILocation(line: 1109, column: 18, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2041, file: !58, line: 1109, column: 10)
!2060 = !DILocation(line: 1109, column: 11, scope: !2059)
!2061 = !DILocation(line: 1109, column: 10, scope: !2041)
!2062 = !DILocation(line: 1110, column: 65, scope: !2059)
!2063 = !DILocation(line: 1110, column: 57, scope: !2059)
!2064 = !DILocation(line: 1110, column: 8, scope: !2059)
!2065 = !DILocation(line: 1110, column: 12, scope: !2059)
!2066 = !DILocation(line: 1110, column: 20, scope: !2059)
!2067 = !DILocation(line: 1110, column: 33, scope: !2059)
!2068 = !DILocation(line: 1110, column: 41, scope: !2059)
!2069 = !DILocation(line: 1111, column: 23, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2059, file: !58, line: 1111, column: 15)
!2071 = !DILocation(line: 1111, column: 16, scope: !2070)
!2072 = !DILocation(line: 1111, column: 15, scope: !2059)
!2073 = !DILocation(line: 1112, column: 58, scope: !2070)
!2074 = !DILocation(line: 1112, column: 53, scope: !2070)
!2075 = !DILocation(line: 1112, column: 8, scope: !2070)
!2076 = !DILocation(line: 1112, column: 12, scope: !2070)
!2077 = !DILocation(line: 1112, column: 20, scope: !2070)
!2078 = !DILocation(line: 1112, column: 33, scope: !2070)
!2079 = !DILocation(line: 1112, column: 45, scope: !2070)
!2080 = !DILocation(line: 1113, column: 23, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2070, file: !58, line: 1113, column: 15)
!2082 = !DILocation(line: 1113, column: 16, scope: !2081)
!2083 = !DILocation(line: 1113, column: 15, scope: !2070)
!2084 = !DILocation(line: 1114, column: 57, scope: !2081)
!2085 = !DILocation(line: 1114, column: 52, scope: !2081)
!2086 = !DILocation(line: 1114, column: 8, scope: !2081)
!2087 = !DILocation(line: 1114, column: 12, scope: !2081)
!2088 = !DILocation(line: 1114, column: 20, scope: !2081)
!2089 = !DILocation(line: 1114, column: 33, scope: !2081)
!2090 = !DILocation(line: 1114, column: 44, scope: !2081)
!2091 = !DILocation(line: 1116, column: 74, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2081, file: !58, line: 1115, column: 12)
!2093 = !DILocation(line: 1116, column: 8, scope: !2092)
!2094 = !DILocation(line: 1119, column: 12, scope: !2041)
!2095 = !DILocation(line: 1119, column: 7, scope: !2041)
!2096 = !DILocation(line: 1121, column: 6, scope: !2041)
!2097 = !DILocation(line: 1121, column: 17, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2037, file: !58, line: 1121, column: 17)
!2099 = !DILocation(line: 1121, column: 21, scope: !2098)
!2100 = !DILocation(line: 1121, column: 17, scope: !2037)
!2101 = !DILocation(line: 1122, column: 7, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2098, file: !58, line: 1121, column: 37)
!2103 = !DILocalVariable(name: "errmsg", scope: !2104, file: !58, line: 1124, type: !33)
!2104 = distinct !DILexicalBlock(scope: !2098, file: !58, line: 1123, column: 13)
!2105 = !DILocation(line: 1124, column: 19, scope: !2104)
!2106 = !DILocation(line: 1124, column: 43, scope: !2104)
!2107 = !DILocation(line: 1124, column: 28, scope: !2104)
!2108 = !DILocation(line: 1125, column: 91, scope: !2104)
!2109 = !DILocation(line: 1125, column: 7, scope: !2104)
!2110 = !DILocation(line: 1126, column: 7, scope: !2104)
!2111 = distinct !{!2111, !2029, !2112}
!2112 = !DILocation(line: 1128, column: 5, scope: !2030)
!2113 = !DILocation(line: 1129, column: 4, scope: !2030)
!2114 = !DILocalVariable(name: "errmsg", scope: !2115, file: !58, line: 1130, type: !33)
!2115 = distinct !DILexicalBlock(scope: !2023, file: !58, line: 1129, column: 11)
!2116 = !DILocation(line: 1130, column: 17, scope: !2115)
!2117 = !DILocation(line: 1130, column: 41, scope: !2115)
!2118 = !DILocation(line: 1130, column: 26, scope: !2115)
!2119 = !DILocation(line: 1131, column: 89, scope: !2115)
!2120 = !DILocation(line: 1131, column: 5, scope: !2115)
!2121 = !DILocation(line: 1133, column: 21, scope: !1938)
!2122 = !DILocation(line: 1133, column: 4, scope: !1938)
!2123 = !DILocation(line: 1135, column: 4, scope: !1938)
!2124 = !DILocation(line: 1137, column: 2, scope: !1849)
!2125 = !DILocation(line: 1138, column: 1, scope: !1839)
!2126 = distinct !DISubprogram(name: "sqlite_set_oauth_key", scope: !58, file: !58, line: 440, type: !538, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2127 = !DILocalVariable(name: "key", arg: 1, scope: !2126, file: !58, line: 440, type: !540)
!2128 = !DILocation(line: 440, column: 53, scope: !2126)
!2129 = !DILocalVariable(name: "ret", scope: !2126, file: !58, line: 443, type: !15)
!2130 = !DILocation(line: 443, column: 6, scope: !2126)
!2131 = !DILocalVariable(name: "statement", scope: !2126, file: !58, line: 444, type: !617)
!2132 = !DILocation(line: 444, column: 7, scope: !2126)
!2133 = !DILocalVariable(name: "st", scope: !2126, file: !58, line: 445, type: !622)
!2134 = !DILocation(line: 445, column: 16, scope: !2126)
!2135 = !DILocalVariable(name: "rc", scope: !2126, file: !58, line: 446, type: !15)
!2136 = !DILocation(line: 446, column: 6, scope: !2126)
!2137 = !DILocation(line: 448, column: 32, scope: !2126)
!2138 = !DILocalVariable(name: "sqliteconnection", scope: !2126, file: !58, line: 450, type: !36)
!2139 = !DILocation(line: 450, column: 11, scope: !2126)
!2140 = !DILocation(line: 450, column: 30, scope: !2126)
!2141 = !DILocation(line: 451, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2126, file: !58, line: 451, column: 6)
!2143 = !DILocation(line: 451, column: 6, scope: !2126)
!2144 = !DILocation(line: 453, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2142, file: !58, line: 451, column: 24)
!2146 = !DILocation(line: 456, column: 7, scope: !2145)
!2147 = !DILocation(line: 456, column: 12, scope: !2145)
!2148 = !DILocation(line: 456, column: 17, scope: !2145)
!2149 = !DILocation(line: 456, column: 22, scope: !2145)
!2150 = !DILocation(line: 456, column: 52, scope: !2145)
!2151 = !DILocation(line: 456, column: 57, scope: !2145)
!2152 = !DILocation(line: 456, column: 84, scope: !2145)
!2153 = !DILocation(line: 456, column: 89, scope: !2145)
!2154 = !DILocation(line: 456, column: 68, scope: !2145)
!2155 = !DILocation(line: 456, column: 99, scope: !2145)
!2156 = !DILocation(line: 456, column: 104, scope: !2145)
!2157 = !DILocation(line: 456, column: 115, scope: !2145)
!2158 = !DILocation(line: 456, column: 120, scope: !2145)
!2159 = !DILocation(line: 452, column: 3, scope: !2145)
!2160 = !DILocation(line: 458, column: 3, scope: !2145)
!2161 = !DILocation(line: 460, column: 29, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2145, file: !58, line: 460, column: 7)
!2163 = !DILocation(line: 460, column: 47, scope: !2162)
!2164 = !DILocation(line: 460, column: 13, scope: !2162)
!2165 = !DILocation(line: 460, column: 11, scope: !2162)
!2166 = !DILocation(line: 460, column: 71, scope: !2162)
!2167 = !DILocation(line: 460, column: 7, scope: !2145)
!2168 = !DILocation(line: 461, column: 17, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2162, file: !58, line: 460, column: 85)
!2170 = !DILocation(line: 461, column: 4, scope: !2169)
!2171 = !DILocation(line: 462, column: 8, scope: !2169)
!2172 = !DILocation(line: 463, column: 3, scope: !2169)
!2173 = !DILocalVariable(name: "errmsg", scope: !2174, file: !58, line: 464, type: !33)
!2174 = distinct !DILexicalBlock(scope: !2162, file: !58, line: 463, column: 10)
!2175 = !DILocation(line: 464, column: 16, scope: !2174)
!2176 = !DILocation(line: 464, column: 40, scope: !2174)
!2177 = !DILocation(line: 464, column: 25, scope: !2174)
!2178 = !DILocation(line: 465, column: 86, scope: !2174)
!2179 = !DILocation(line: 465, column: 4, scope: !2174)
!2180 = !DILocation(line: 467, column: 20, scope: !2145)
!2181 = !DILocation(line: 467, column: 3, scope: !2145)
!2182 = !DILocation(line: 469, column: 3, scope: !2145)
!2183 = !DILocation(line: 470, column: 2, scope: !2145)
!2184 = !DILocation(line: 471, column: 9, scope: !2126)
!2185 = !DILocation(line: 471, column: 2, scope: !2126)
!2186 = distinct !DISubprogram(name: "sqlite_get_oauth_key", scope: !58, file: !58, line: 293, type: !559, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2187 = !DILocalVariable(name: "kid", arg: 1, scope: !2186, file: !58, line: 293, type: !561)
!2188 = !DILocation(line: 293, column: 48, scope: !2186)
!2189 = !DILocalVariable(name: "key", arg: 2, scope: !2186, file: !58, line: 293, type: !540)
!2190 = !DILocation(line: 293, column: 73, scope: !2186)
!2191 = !DILocalVariable(name: "ret", scope: !2186, file: !58, line: 295, type: !15)
!2192 = !DILocation(line: 295, column: 6, scope: !2186)
!2193 = !DILocalVariable(name: "statement", scope: !2186, file: !58, line: 297, type: !617)
!2194 = !DILocation(line: 297, column: 7, scope: !2186)
!2195 = !DILocalVariable(name: "st", scope: !2186, file: !58, line: 298, type: !622)
!2196 = !DILocation(line: 298, column: 16, scope: !2186)
!2197 = !DILocalVariable(name: "rc", scope: !2186, file: !58, line: 299, type: !15)
!2198 = !DILocation(line: 299, column: 6, scope: !2186)
!2199 = !DILocation(line: 302, column: 11, scope: !2186)
!2200 = !DILocation(line: 302, column: 134, scope: !2186)
!2201 = !DILocation(line: 302, column: 2, scope: !2186)
!2202 = !DILocalVariable(name: "sqliteconnection", scope: !2186, file: !58, line: 304, type: !36)
!2203 = !DILocation(line: 304, column: 11, scope: !2186)
!2204 = !DILocation(line: 304, column: 30, scope: !2186)
!2205 = !DILocation(line: 305, column: 5, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2186, file: !58, line: 305, column: 5)
!2207 = !DILocation(line: 305, column: 5, scope: !2186)
!2208 = !DILocation(line: 307, column: 3, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !58, line: 305, column: 23)
!2210 = !DILocation(line: 309, column: 29, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2209, file: !58, line: 309, column: 7)
!2212 = !DILocation(line: 309, column: 47, scope: !2211)
!2213 = !DILocation(line: 309, column: 13, scope: !2211)
!2214 = !DILocation(line: 309, column: 11, scope: !2211)
!2215 = !DILocation(line: 309, column: 71, scope: !2211)
!2216 = !DILocation(line: 309, column: 7, scope: !2209)
!2217 = !DILocalVariable(name: "res", scope: !2218, file: !58, line: 311, type: !15)
!2218 = distinct !DILexicalBlock(scope: !2211, file: !58, line: 309, column: 85)
!2219 = !DILocation(line: 311, column: 8, scope: !2218)
!2220 = !DILocation(line: 311, column: 27, scope: !2218)
!2221 = !DILocation(line: 311, column: 14, scope: !2218)
!2222 = !DILocation(line: 312, column: 8, scope: !2223)
!2223 = distinct !DILexicalBlock(scope: !2218, file: !58, line: 312, column: 8)
!2224 = !DILocation(line: 312, column: 12, scope: !2223)
!2225 = !DILocation(line: 312, column: 8, scope: !2218)
!2226 = !DILocation(line: 314, column: 5, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2223, file: !58, line: 312, column: 27)
!2228 = !DILocation(line: 314, column: 5, scope: !2229)
!2229 = distinct !DILexicalBlock(scope: !2230, file: !58, line: 314, column: 5)
!2230 = distinct !DILexicalBlock(scope: !2227, file: !58, line: 314, column: 5)
!2231 = !DILocation(line: 314, column: 5, scope: !2230)
!2232 = !DILocalVariable(name: "szdst", scope: !2233, file: !58, line: 314, type: !405)
!2233 = distinct !DILexicalBlock(scope: !2234, file: !58, line: 314, column: 5)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !58, line: 314, column: 5)
!2235 = distinct !DILexicalBlock(scope: !2229, file: !58, line: 314, column: 5)
!2236 = !DILocation(line: 314, column: 5, scope: !2233)
!2237 = !DILocation(line: 314, column: 5, scope: !2235)
!2238 = !DILocation(line: 315, column: 73, scope: !2227)
!2239 = !DILocation(line: 315, column: 53, scope: !2227)
!2240 = !DILocation(line: 315, column: 32, scope: !2227)
!2241 = !DILocation(line: 315, column: 5, scope: !2227)
!2242 = !DILocation(line: 315, column: 10, scope: !2227)
!2243 = !DILocation(line: 315, column: 20, scope: !2227)
!2244 = !DILocation(line: 316, column: 71, scope: !2227)
!2245 = !DILocation(line: 316, column: 51, scope: !2227)
!2246 = !DILocation(line: 316, column: 31, scope: !2227)
!2247 = !DILocation(line: 316, column: 21, scope: !2227)
!2248 = !DILocation(line: 316, column: 5, scope: !2227)
!2249 = !DILocation(line: 316, column: 10, scope: !2227)
!2250 = !DILocation(line: 316, column: 19, scope: !2227)
!2251 = !DILocation(line: 317, column: 5, scope: !2227)
!2252 = !DILocation(line: 317, column: 5, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !58, line: 317, column: 5)
!2254 = distinct !DILexicalBlock(scope: !2227, file: !58, line: 317, column: 5)
!2255 = !DILocation(line: 317, column: 5, scope: !2254)
!2256 = !DILocalVariable(name: "szdst", scope: !2257, file: !58, line: 317, type: !405)
!2257 = distinct !DILexicalBlock(scope: !2258, file: !58, line: 317, column: 5)
!2258 = distinct !DILexicalBlock(scope: !2259, file: !58, line: 317, column: 5)
!2259 = distinct !DILexicalBlock(scope: !2253, file: !58, line: 317, column: 5)
!2260 = !DILocation(line: 317, column: 5, scope: !2257)
!2261 = !DILocation(line: 317, column: 5, scope: !2259)
!2262 = !DILocation(line: 318, column: 5, scope: !2227)
!2263 = !DILocation(line: 318, column: 5, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !58, line: 318, column: 5)
!2265 = distinct !DILexicalBlock(scope: !2227, file: !58, line: 318, column: 5)
!2266 = !DILocation(line: 318, column: 5, scope: !2265)
!2267 = !DILocalVariable(name: "szdst", scope: !2268, file: !58, line: 318, type: !405)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !58, line: 318, column: 5)
!2269 = distinct !DILexicalBlock(scope: !2270, file: !58, line: 318, column: 5)
!2270 = distinct !DILexicalBlock(scope: !2264, file: !58, line: 318, column: 5)
!2271 = !DILocation(line: 318, column: 5, scope: !2268)
!2272 = !DILocation(line: 318, column: 5, scope: !2270)
!2273 = !DILocation(line: 319, column: 5, scope: !2227)
!2274 = !DILocation(line: 319, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !58, line: 319, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2227, file: !58, line: 319, column: 5)
!2277 = !DILocation(line: 319, column: 5, scope: !2276)
!2278 = !DILocalVariable(name: "szdst", scope: !2279, file: !58, line: 319, type: !405)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !58, line: 319, column: 5)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !58, line: 319, column: 5)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !58, line: 319, column: 5)
!2282 = !DILocation(line: 319, column: 5, scope: !2279)
!2283 = !DILocation(line: 319, column: 5, scope: !2281)
!2284 = !DILocation(line: 320, column: 9, scope: !2227)
!2285 = !DILocation(line: 321, column: 4, scope: !2227)
!2286 = !DILocation(line: 322, column: 3, scope: !2218)
!2287 = !DILocalVariable(name: "errmsg", scope: !2288, file: !58, line: 323, type: !33)
!2288 = distinct !DILexicalBlock(scope: !2211, file: !58, line: 322, column: 10)
!2289 = !DILocation(line: 323, column: 16, scope: !2288)
!2290 = !DILocation(line: 323, column: 40, scope: !2288)
!2291 = !DILocation(line: 323, column: 25, scope: !2288)
!2292 = !DILocation(line: 324, column: 88, scope: !2288)
!2293 = !DILocation(line: 324, column: 4, scope: !2288)
!2294 = !DILocation(line: 327, column: 20, scope: !2209)
!2295 = !DILocation(line: 327, column: 3, scope: !2209)
!2296 = !DILocation(line: 329, column: 3, scope: !2209)
!2297 = !DILocation(line: 330, column: 2, scope: !2209)
!2298 = !DILocation(line: 332, column: 9, scope: !2186)
!2299 = !DILocation(line: 332, column: 2, scope: !2186)
!2300 = distinct !DISubprogram(name: "sqlite_del_oauth_key", scope: !58, file: !58, line: 503, type: !565, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2301 = !DILocalVariable(name: "kid", arg: 1, scope: !2300, file: !58, line: 503, type: !561)
!2302 = !DILocation(line: 503, column: 48, scope: !2300)
!2303 = !DILocalVariable(name: "ret", scope: !2300, file: !58, line: 505, type: !15)
!2304 = !DILocation(line: 505, column: 6, scope: !2300)
!2305 = !DILocalVariable(name: "statement", scope: !2300, file: !58, line: 506, type: !617)
!2306 = !DILocation(line: 506, column: 7, scope: !2300)
!2307 = !DILocalVariable(name: "st", scope: !2300, file: !58, line: 507, type: !622)
!2308 = !DILocation(line: 507, column: 16, scope: !2300)
!2309 = !DILocalVariable(name: "rc", scope: !2300, file: !58, line: 508, type: !15)
!2310 = !DILocation(line: 508, column: 6, scope: !2300)
!2311 = !DILocation(line: 510, column: 32, scope: !2300)
!2312 = !DILocalVariable(name: "sqliteconnection", scope: !2300, file: !58, line: 512, type: !36)
!2313 = !DILocation(line: 512, column: 11, scope: !2300)
!2314 = !DILocation(line: 512, column: 30, scope: !2300)
!2315 = !DILocation(line: 513, column: 6, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2300, file: !58, line: 513, column: 6)
!2317 = !DILocation(line: 513, column: 6, scope: !2300)
!2318 = !DILocation(line: 515, column: 12, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2316, file: !58, line: 513, column: 24)
!2320 = !DILocation(line: 515, column: 98, scope: !2319)
!2321 = !DILocation(line: 515, column: 3, scope: !2319)
!2322 = !DILocation(line: 517, column: 3, scope: !2319)
!2323 = !DILocation(line: 519, column: 29, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2319, file: !58, line: 519, column: 7)
!2325 = !DILocation(line: 519, column: 47, scope: !2324)
!2326 = !DILocation(line: 519, column: 13, scope: !2324)
!2327 = !DILocation(line: 519, column: 11, scope: !2324)
!2328 = !DILocation(line: 519, column: 71, scope: !2324)
!2329 = !DILocation(line: 519, column: 7, scope: !2319)
!2330 = !DILocation(line: 520, column: 17, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2324, file: !58, line: 519, column: 85)
!2332 = !DILocation(line: 520, column: 4, scope: !2331)
!2333 = !DILocation(line: 521, column: 8, scope: !2331)
!2334 = !DILocation(line: 522, column: 3, scope: !2331)
!2335 = !DILocalVariable(name: "errmsg", scope: !2336, file: !58, line: 523, type: !33)
!2336 = distinct !DILexicalBlock(scope: !2324, file: !58, line: 522, column: 10)
!2337 = !DILocation(line: 523, column: 16, scope: !2336)
!2338 = !DILocation(line: 523, column: 40, scope: !2336)
!2339 = !DILocation(line: 523, column: 25, scope: !2336)
!2340 = !DILocation(line: 524, column: 88, scope: !2336)
!2341 = !DILocation(line: 524, column: 4, scope: !2336)
!2342 = !DILocation(line: 526, column: 20, scope: !2319)
!2343 = !DILocation(line: 526, column: 3, scope: !2319)
!2344 = !DILocation(line: 528, column: 3, scope: !2319)
!2345 = !DILocation(line: 529, column: 2, scope: !2319)
!2346 = !DILocation(line: 530, column: 9, scope: !2300)
!2347 = !DILocation(line: 530, column: 2, scope: !2300)
!2348 = distinct !DISubprogram(name: "sqlite_list_oauth_keys", scope: !58, file: !58, line: 335, type: !569, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2349 = !DILocalVariable(name: "kids", arg: 1, scope: !2348, file: !58, line: 335, type: !398)
!2350 = !DILocation(line: 335, column: 51, scope: !2348)
!2351 = !DILocalVariable(name: "teas", arg: 2, scope: !2348, file: !58, line: 335, type: !398)
!2352 = !DILocation(line: 335, column: 72, scope: !2348)
!2353 = !DILocalVariable(name: "tss", arg: 3, scope: !2348, file: !58, line: 335, type: !398)
!2354 = !DILocation(line: 335, column: 93, scope: !2348)
!2355 = !DILocalVariable(name: "lts", arg: 4, scope: !2348, file: !58, line: 335, type: !398)
!2356 = !DILocation(line: 335, column: 113, scope: !2348)
!2357 = !DILocalVariable(name: "realms", arg: 5, scope: !2348, file: !58, line: 335, type: !398)
!2358 = !DILocation(line: 335, column: 133, scope: !2348)
!2359 = !DILocalVariable(name: "key_", scope: !2348, file: !58, line: 337, type: !541)
!2360 = !DILocation(line: 337, column: 21, scope: !2348)
!2361 = !DILocalVariable(name: "key", scope: !2348, file: !58, line: 338, type: !540)
!2362 = !DILocation(line: 338, column: 22, scope: !2348)
!2363 = !DILocation(line: 340, column: 32, scope: !2348)
!2364 = !DILocalVariable(name: "ret", scope: !2348, file: !58, line: 342, type: !15)
!2365 = !DILocation(line: 342, column: 6, scope: !2348)
!2366 = !DILocalVariable(name: "statement", scope: !2348, file: !58, line: 344, type: !617)
!2367 = !DILocation(line: 344, column: 7, scope: !2348)
!2368 = !DILocalVariable(name: "st", scope: !2348, file: !58, line: 345, type: !622)
!2369 = !DILocation(line: 345, column: 16, scope: !2348)
!2370 = !DILocalVariable(name: "rc", scope: !2348, file: !58, line: 346, type: !15)
!2371 = !DILocation(line: 346, column: 6, scope: !2348)
!2372 = !DILocation(line: 347, column: 11, scope: !2348)
!2373 = !DILocation(line: 347, column: 2, scope: !2348)
!2374 = !DILocalVariable(name: "sqliteconnection", scope: !2348, file: !58, line: 349, type: !36)
!2375 = !DILocation(line: 349, column: 11, scope: !2348)
!2376 = !DILocation(line: 349, column: 30, scope: !2348)
!2377 = !DILocation(line: 350, column: 5, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2348, file: !58, line: 350, column: 5)
!2379 = !DILocation(line: 350, column: 5, scope: !2348)
!2380 = !DILocation(line: 352, column: 3, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2378, file: !58, line: 350, column: 23)
!2382 = !DILocation(line: 354, column: 29, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2381, file: !58, line: 354, column: 7)
!2384 = !DILocation(line: 354, column: 47, scope: !2383)
!2385 = !DILocation(line: 354, column: 13, scope: !2383)
!2386 = !DILocation(line: 354, column: 11, scope: !2383)
!2387 = !DILocation(line: 354, column: 71, scope: !2383)
!2388 = !DILocation(line: 354, column: 7, scope: !2381)
!2389 = !DILocation(line: 356, column: 8, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2383, file: !58, line: 354, column: 85)
!2391 = !DILocation(line: 357, column: 4, scope: !2390)
!2392 = !DILocalVariable(name: "res", scope: !2393, file: !58, line: 358, type: !15)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !58, line: 357, column: 14)
!2394 = !DILocation(line: 358, column: 9, scope: !2393)
!2395 = !DILocation(line: 358, column: 28, scope: !2393)
!2396 = !DILocation(line: 358, column: 15, scope: !2393)
!2397 = !DILocation(line: 359, column: 9, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2393, file: !58, line: 359, column: 9)
!2399 = !DILocation(line: 359, column: 13, scope: !2398)
!2400 = !DILocation(line: 359, column: 9, scope: !2393)
!2401 = !DILocation(line: 361, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2398, file: !58, line: 359, column: 28)
!2403 = !DILocation(line: 361, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !58, line: 361, column: 6)
!2405 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 361, column: 6)
!2406 = !DILocation(line: 361, column: 6, scope: !2405)
!2407 = !DILocalVariable(name: "szdst", scope: !2408, file: !58, line: 361, type: !405)
!2408 = distinct !DILexicalBlock(scope: !2409, file: !58, line: 361, column: 6)
!2409 = distinct !DILexicalBlock(scope: !2410, file: !58, line: 361, column: 6)
!2410 = distinct !DILexicalBlock(scope: !2404, file: !58, line: 361, column: 6)
!2411 = !DILocation(line: 361, column: 6, scope: !2408)
!2412 = !DILocation(line: 361, column: 6, scope: !2410)
!2413 = !DILocation(line: 362, column: 74, scope: !2402)
!2414 = !DILocation(line: 362, column: 54, scope: !2402)
!2415 = !DILocation(line: 362, column: 33, scope: !2402)
!2416 = !DILocation(line: 362, column: 6, scope: !2402)
!2417 = !DILocation(line: 362, column: 11, scope: !2402)
!2418 = !DILocation(line: 362, column: 21, scope: !2402)
!2419 = !DILocation(line: 363, column: 72, scope: !2402)
!2420 = !DILocation(line: 363, column: 52, scope: !2402)
!2421 = !DILocation(line: 363, column: 32, scope: !2402)
!2422 = !DILocation(line: 363, column: 22, scope: !2402)
!2423 = !DILocation(line: 363, column: 6, scope: !2402)
!2424 = !DILocation(line: 363, column: 11, scope: !2402)
!2425 = !DILocation(line: 363, column: 20, scope: !2402)
!2426 = !DILocation(line: 364, column: 6, scope: !2402)
!2427 = !DILocation(line: 364, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2429, file: !58, line: 364, column: 6)
!2429 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 364, column: 6)
!2430 = !DILocation(line: 364, column: 6, scope: !2429)
!2431 = !DILocalVariable(name: "szdst", scope: !2432, file: !58, line: 364, type: !405)
!2432 = distinct !DILexicalBlock(scope: !2433, file: !58, line: 364, column: 6)
!2433 = distinct !DILexicalBlock(scope: !2434, file: !58, line: 364, column: 6)
!2434 = distinct !DILexicalBlock(scope: !2428, file: !58, line: 364, column: 6)
!2435 = !DILocation(line: 364, column: 6, scope: !2432)
!2436 = !DILocation(line: 364, column: 6, scope: !2434)
!2437 = !DILocation(line: 365, column: 6, scope: !2402)
!2438 = !DILocation(line: 365, column: 6, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2440, file: !58, line: 365, column: 6)
!2440 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 365, column: 6)
!2441 = !DILocation(line: 365, column: 6, scope: !2440)
!2442 = !DILocalVariable(name: "szdst", scope: !2443, file: !58, line: 365, type: !405)
!2443 = distinct !DILexicalBlock(scope: !2444, file: !58, line: 365, column: 6)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !58, line: 365, column: 6)
!2445 = distinct !DILexicalBlock(scope: !2439, file: !58, line: 365, column: 6)
!2446 = !DILocation(line: 365, column: 6, scope: !2443)
!2447 = !DILocation(line: 365, column: 6, scope: !2445)
!2448 = !DILocation(line: 366, column: 6, scope: !2402)
!2449 = !DILocation(line: 366, column: 6, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2451, file: !58, line: 366, column: 6)
!2451 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 366, column: 6)
!2452 = !DILocation(line: 366, column: 6, scope: !2451)
!2453 = !DILocalVariable(name: "szdst", scope: !2454, file: !58, line: 366, type: !405)
!2454 = distinct !DILexicalBlock(scope: !2455, file: !58, line: 366, column: 6)
!2455 = distinct !DILexicalBlock(scope: !2456, file: !58, line: 366, column: 6)
!2456 = distinct !DILexicalBlock(scope: !2450, file: !58, line: 366, column: 6)
!2457 = !DILocation(line: 366, column: 6, scope: !2454)
!2458 = !DILocation(line: 366, column: 6, scope: !2456)
!2459 = !DILocation(line: 368, column: 9, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2402, file: !58, line: 368, column: 9)
!2461 = !DILocation(line: 368, column: 9, scope: !2402)
!2462 = !DILocation(line: 369, column: 27, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 368, column: 15)
!2464 = !DILocation(line: 369, column: 32, scope: !2463)
!2465 = !DILocation(line: 369, column: 37, scope: !2463)
!2466 = !DILocation(line: 369, column: 7, scope: !2463)
!2467 = !DILocation(line: 370, column: 27, scope: !2463)
!2468 = !DILocation(line: 370, column: 32, scope: !2463)
!2469 = !DILocation(line: 370, column: 37, scope: !2463)
!2470 = !DILocation(line: 370, column: 7, scope: !2463)
!2471 = !DILocation(line: 371, column: 27, scope: !2463)
!2472 = !DILocation(line: 371, column: 34, scope: !2463)
!2473 = !DILocation(line: 371, column: 39, scope: !2463)
!2474 = !DILocation(line: 371, column: 7, scope: !2463)
!2475 = !DILocalVariable(name: "ts", scope: !2476, file: !58, line: 373, type: !2477)
!2476 = distinct !DILexicalBlock(scope: !2463, file: !58, line: 372, column: 7)
!2477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, size: 2048, elements: !2478)
!2478 = !{!2479}
!2479 = !DISubrange(count: 256)
!2480 = !DILocation(line: 373, column: 13, scope: !2476)
!2481 = !DILocation(line: 374, column: 17, scope: !2476)
!2482 = !DILocation(line: 374, column: 60, scope: !2476)
!2483 = !DILocation(line: 374, column: 65, scope: !2476)
!2484 = !DILocation(line: 374, column: 8, scope: !2476)
!2485 = !DILocation(line: 375, column: 28, scope: !2476)
!2486 = !DILocation(line: 375, column: 32, scope: !2476)
!2487 = !DILocation(line: 375, column: 8, scope: !2476)
!2488 = !DILocalVariable(name: "lt", scope: !2489, file: !58, line: 378, type: !2477)
!2489 = distinct !DILexicalBlock(scope: !2463, file: !58, line: 377, column: 7)
!2490 = !DILocation(line: 378, column: 13, scope: !2489)
!2491 = !DILocation(line: 379, column: 17, scope: !2489)
!2492 = !DILocation(line: 379, column: 54, scope: !2489)
!2493 = !DILocation(line: 379, column: 59, scope: !2489)
!2494 = !DILocation(line: 379, column: 39, scope: !2489)
!2495 = !DILocation(line: 379, column: 8, scope: !2489)
!2496 = !DILocation(line: 380, column: 28, scope: !2489)
!2497 = !DILocation(line: 380, column: 32, scope: !2489)
!2498 = !DILocation(line: 380, column: 8, scope: !2489)
!2499 = !DILocation(line: 382, column: 6, scope: !2463)
!2500 = !DILocation(line: 384, column: 11, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2460, file: !58, line: 382, column: 13)
!2502 = !DILocation(line: 384, column: 16, scope: !2501)
!2503 = !DILocation(line: 384, column: 21, scope: !2501)
!2504 = !DILocation(line: 384, column: 26, scope: !2501)
!2505 = !DILocation(line: 384, column: 55, scope: !2501)
!2506 = !DILocation(line: 384, column: 60, scope: !2501)
!2507 = !DILocation(line: 384, column: 86, scope: !2501)
!2508 = !DILocation(line: 384, column: 91, scope: !2501)
!2509 = !DILocation(line: 384, column: 71, scope: !2501)
!2510 = !DILocation(line: 385, column: 11, scope: !2501)
!2511 = !DILocation(line: 385, column: 16, scope: !2501)
!2512 = !DILocation(line: 383, column: 7, scope: !2501)
!2513 = !DILocation(line: 388, column: 5, scope: !2402)
!2514 = !DILocation(line: 388, column: 16, scope: !2515)
!2515 = distinct !DILexicalBlock(scope: !2398, file: !58, line: 388, column: 16)
!2516 = !DILocation(line: 388, column: 20, scope: !2515)
!2517 = !DILocation(line: 388, column: 16, scope: !2398)
!2518 = !DILocation(line: 389, column: 6, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2515, file: !58, line: 388, column: 36)
!2520 = !DILocalVariable(name: "errmsg", scope: !2521, file: !58, line: 391, type: !33)
!2521 = distinct !DILexicalBlock(scope: !2515, file: !58, line: 390, column: 12)
!2522 = !DILocation(line: 391, column: 18, scope: !2521)
!2523 = !DILocation(line: 391, column: 42, scope: !2521)
!2524 = !DILocation(line: 391, column: 27, scope: !2521)
!2525 = !DILocation(line: 392, column: 90, scope: !2521)
!2526 = !DILocation(line: 392, column: 6, scope: !2521)
!2527 = !DILocation(line: 393, column: 10, scope: !2521)
!2528 = !DILocation(line: 394, column: 6, scope: !2521)
!2529 = distinct !{!2529, !2391, !2530}
!2530 = !DILocation(line: 396, column: 4, scope: !2390)
!2531 = !DILocation(line: 397, column: 3, scope: !2390)
!2532 = !DILocalVariable(name: "errmsg", scope: !2533, file: !58, line: 398, type: !33)
!2533 = distinct !DILexicalBlock(scope: !2383, file: !58, line: 397, column: 10)
!2534 = !DILocation(line: 398, column: 16, scope: !2533)
!2535 = !DILocation(line: 398, column: 40, scope: !2533)
!2536 = !DILocation(line: 398, column: 25, scope: !2533)
!2537 = !DILocation(line: 399, column: 88, scope: !2533)
!2538 = !DILocation(line: 399, column: 4, scope: !2533)
!2539 = !DILocation(line: 402, column: 20, scope: !2381)
!2540 = !DILocation(line: 402, column: 3, scope: !2381)
!2541 = !DILocation(line: 404, column: 3, scope: !2381)
!2542 = !DILocation(line: 405, column: 2, scope: !2381)
!2543 = !DILocation(line: 407, column: 9, scope: !2348)
!2544 = !DILocation(line: 407, column: 2, scope: !2348)
!2545 = distinct !DISubprogram(name: "sqlite_get_admin_user", scope: !58, file: !58, line: 1142, type: !573, scopeLine: 1143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2546 = !DILocalVariable(name: "usname", arg: 1, scope: !2545, file: !58, line: 1142, type: !561)
!2547 = !DILocation(line: 1142, column: 49, scope: !2545)
!2548 = !DILocalVariable(name: "realm", arg: 2, scope: !2545, file: !58, line: 1142, type: !407)
!2549 = !DILocation(line: 1142, column: 66, scope: !2545)
!2550 = !DILocalVariable(name: "pwd", arg: 3, scope: !2545, file: !58, line: 1142, type: !407)
!2551 = !DILocation(line: 1142, column: 84, scope: !2545)
!2552 = !DILocalVariable(name: "ret", scope: !2545, file: !58, line: 1144, type: !15)
!2553 = !DILocation(line: 1144, column: 6, scope: !2545)
!2554 = !DILocation(line: 1146, column: 2, scope: !2545)
!2555 = !DILocation(line: 1146, column: 10, scope: !2545)
!2556 = !DILocation(line: 1147, column: 2, scope: !2545)
!2557 = !DILocation(line: 1147, column: 8, scope: !2545)
!2558 = !DILocalVariable(name: "sqliteconnection", scope: !2545, file: !58, line: 1149, type: !36)
!2559 = !DILocation(line: 1149, column: 11, scope: !2545)
!2560 = !DILocation(line: 1149, column: 30, scope: !2545)
!2561 = !DILocation(line: 1150, column: 6, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2545, file: !58, line: 1150, column: 6)
!2563 = !DILocation(line: 1150, column: 6, scope: !2545)
!2564 = !DILocalVariable(name: "statement", scope: !2565, file: !58, line: 1151, type: !617)
!2565 = distinct !DILexicalBlock(scope: !2562, file: !58, line: 1150, column: 24)
!2566 = !DILocation(line: 1151, column: 8, scope: !2565)
!2567 = !DILocalVariable(name: "st", scope: !2565, file: !58, line: 1152, type: !622)
!2568 = !DILocation(line: 1152, column: 17, scope: !2565)
!2569 = !DILocalVariable(name: "rc", scope: !2565, file: !58, line: 1153, type: !15)
!2570 = !DILocation(line: 1153, column: 7, scope: !2565)
!2571 = !DILocation(line: 1154, column: 12, scope: !2565)
!2572 = !DILocation(line: 1154, column: 99, scope: !2565)
!2573 = !DILocation(line: 1154, column: 3, scope: !2565)
!2574 = !DILocation(line: 1156, column: 3, scope: !2565)
!2575 = !DILocation(line: 1158, column: 29, scope: !2576)
!2576 = distinct !DILexicalBlock(scope: !2565, file: !58, line: 1158, column: 7)
!2577 = !DILocation(line: 1158, column: 47, scope: !2576)
!2578 = !DILocation(line: 1158, column: 13, scope: !2576)
!2579 = !DILocation(line: 1158, column: 11, scope: !2576)
!2580 = !DILocation(line: 1158, column: 71, scope: !2576)
!2581 = !DILocation(line: 1158, column: 7, scope: !2565)
!2582 = !DILocalVariable(name: "res", scope: !2583, file: !58, line: 1159, type: !15)
!2583 = distinct !DILexicalBlock(scope: !2576, file: !58, line: 1158, column: 85)
!2584 = !DILocation(line: 1159, column: 8, scope: !2583)
!2585 = !DILocation(line: 1159, column: 27, scope: !2583)
!2586 = !DILocation(line: 1159, column: 14, scope: !2583)
!2587 = !DILocation(line: 1160, column: 8, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2583, file: !58, line: 1160, column: 8)
!2589 = !DILocation(line: 1160, column: 12, scope: !2588)
!2590 = !DILocation(line: 1160, column: 8, scope: !2583)
!2591 = !DILocalVariable(name: "kval", scope: !2592, file: !58, line: 1161, type: !33)
!2592 = distinct !DILexicalBlock(scope: !2588, file: !58, line: 1160, column: 27)
!2593 = !DILocation(line: 1161, column: 17, scope: !2592)
!2594 = !DILocation(line: 1161, column: 58, scope: !2592)
!2595 = !DILocation(line: 1161, column: 38, scope: !2592)
!2596 = !DILocation(line: 1162, column: 8, scope: !2597)
!2597 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 1162, column: 8)
!2598 = !DILocation(line: 1162, column: 8, scope: !2592)
!2599 = !DILocation(line: 1163, column: 21, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2597, file: !58, line: 1162, column: 14)
!2601 = !DILocation(line: 1163, column: 27, scope: !2600)
!2602 = !DILocation(line: 1163, column: 6, scope: !2600)
!2603 = !DILocation(line: 1164, column: 5, scope: !2600)
!2604 = !DILocation(line: 1165, column: 46, scope: !2592)
!2605 = !DILocation(line: 1165, column: 26, scope: !2592)
!2606 = !DILocation(line: 1165, column: 10, scope: !2592)
!2607 = !DILocation(line: 1166, column: 8, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2592, file: !58, line: 1166, column: 8)
!2609 = !DILocation(line: 1166, column: 8, scope: !2592)
!2610 = !DILocation(line: 1167, column: 21, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2608, file: !58, line: 1166, column: 14)
!2612 = !DILocation(line: 1167, column: 25, scope: !2611)
!2613 = !DILocation(line: 1167, column: 6, scope: !2611)
!2614 = !DILocation(line: 1168, column: 5, scope: !2611)
!2615 = !DILocation(line: 1169, column: 9, scope: !2592)
!2616 = !DILocation(line: 1170, column: 4, scope: !2592)
!2617 = !DILocation(line: 1171, column: 3, scope: !2583)
!2618 = !DILocalVariable(name: "errmsg", scope: !2619, file: !58, line: 1172, type: !33)
!2619 = distinct !DILexicalBlock(scope: !2576, file: !58, line: 1171, column: 10)
!2620 = !DILocation(line: 1172, column: 16, scope: !2619)
!2621 = !DILocation(line: 1172, column: 40, scope: !2619)
!2622 = !DILocation(line: 1172, column: 25, scope: !2619)
!2623 = !DILocation(line: 1173, column: 88, scope: !2619)
!2624 = !DILocation(line: 1173, column: 4, scope: !2619)
!2625 = !DILocation(line: 1176, column: 20, scope: !2565)
!2626 = !DILocation(line: 1176, column: 3, scope: !2565)
!2627 = !DILocation(line: 1178, column: 3, scope: !2565)
!2628 = !DILocation(line: 1179, column: 2, scope: !2565)
!2629 = !DILocation(line: 1180, column: 9, scope: !2545)
!2630 = !DILocation(line: 1180, column: 2, scope: !2545)
!2631 = distinct !DISubprogram(name: "sqlite_set_admin_user", scope: !58, file: !58, line: 1183, type: !577, scopeLine: 1184, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2632 = !DILocalVariable(name: "usname", arg: 1, scope: !2631, file: !58, line: 1183, type: !561)
!2633 = !DILocation(line: 1183, column: 49, scope: !2631)
!2634 = !DILocalVariable(name: "realm", arg: 2, scope: !2631, file: !58, line: 1183, type: !561)
!2635 = !DILocation(line: 1183, column: 72, scope: !2631)
!2636 = !DILocalVariable(name: "pwd", arg: 3, scope: !2631, file: !58, line: 1183, type: !561)
!2637 = !DILocation(line: 1183, column: 96, scope: !2631)
!2638 = !DILocalVariable(name: "ret", scope: !2631, file: !58, line: 1185, type: !15)
!2639 = !DILocation(line: 1185, column: 6, scope: !2631)
!2640 = !DILocalVariable(name: "statement", scope: !2631, file: !58, line: 1186, type: !617)
!2641 = !DILocation(line: 1186, column: 7, scope: !2631)
!2642 = !DILocalVariable(name: "st", scope: !2631, file: !58, line: 1187, type: !622)
!2643 = !DILocation(line: 1187, column: 16, scope: !2631)
!2644 = !DILocalVariable(name: "rc", scope: !2631, file: !58, line: 1188, type: !15)
!2645 = !DILocation(line: 1188, column: 6, scope: !2631)
!2646 = !DILocation(line: 1190, column: 32, scope: !2631)
!2647 = !DILocalVariable(name: "sqliteconnection", scope: !2631, file: !58, line: 1192, type: !36)
!2648 = !DILocation(line: 1192, column: 11, scope: !2631)
!2649 = !DILocation(line: 1192, column: 30, scope: !2631)
!2650 = !DILocation(line: 1193, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2631, file: !58, line: 1193, column: 6)
!2652 = !DILocation(line: 1193, column: 6, scope: !2631)
!2653 = !DILocation(line: 1195, column: 3, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !58, line: 1193, column: 24)
!2655 = !DILocation(line: 1197, column: 12, scope: !2654)
!2656 = !DILocation(line: 1197, column: 124, scope: !2654)
!2657 = !DILocation(line: 1197, column: 131, scope: !2654)
!2658 = !DILocation(line: 1197, column: 139, scope: !2654)
!2659 = !DILocation(line: 1197, column: 3, scope: !2654)
!2660 = !DILocation(line: 1199, column: 29, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !58, line: 1199, column: 7)
!2662 = !DILocation(line: 1199, column: 47, scope: !2661)
!2663 = !DILocation(line: 1199, column: 13, scope: !2661)
!2664 = !DILocation(line: 1199, column: 11, scope: !2661)
!2665 = !DILocation(line: 1199, column: 71, scope: !2661)
!2666 = !DILocation(line: 1199, column: 7, scope: !2654)
!2667 = !DILocation(line: 1200, column: 17, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !58, line: 1199, column: 85)
!2669 = !DILocation(line: 1200, column: 4, scope: !2668)
!2670 = !DILocation(line: 1201, column: 8, scope: !2668)
!2671 = !DILocation(line: 1202, column: 3, scope: !2668)
!2672 = !DILocalVariable(name: "errmsg", scope: !2673, file: !58, line: 1203, type: !33)
!2673 = distinct !DILexicalBlock(scope: !2661, file: !58, line: 1202, column: 10)
!2674 = !DILocation(line: 1203, column: 16, scope: !2673)
!2675 = !DILocation(line: 1203, column: 40, scope: !2673)
!2676 = !DILocation(line: 1203, column: 25, scope: !2673)
!2677 = !DILocation(line: 1204, column: 88, scope: !2673)
!2678 = !DILocation(line: 1204, column: 4, scope: !2673)
!2679 = !DILocation(line: 1206, column: 20, scope: !2654)
!2680 = !DILocation(line: 1206, column: 3, scope: !2654)
!2681 = !DILocation(line: 1208, column: 3, scope: !2654)
!2682 = !DILocation(line: 1209, column: 2, scope: !2654)
!2683 = !DILocation(line: 1210, column: 9, scope: !2631)
!2684 = !DILocation(line: 1210, column: 2, scope: !2631)
!2685 = distinct !DISubprogram(name: "sqlite_del_admin_user", scope: !58, file: !58, line: 1213, type: !565, scopeLine: 1214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2686 = !DILocalVariable(name: "usname", arg: 1, scope: !2685, file: !58, line: 1213, type: !561)
!2687 = !DILocation(line: 1213, column: 49, scope: !2685)
!2688 = !DILocalVariable(name: "ret", scope: !2685, file: !58, line: 1215, type: !15)
!2689 = !DILocation(line: 1215, column: 6, scope: !2685)
!2690 = !DILocalVariable(name: "statement", scope: !2685, file: !58, line: 1216, type: !617)
!2691 = !DILocation(line: 1216, column: 7, scope: !2685)
!2692 = !DILocalVariable(name: "st", scope: !2685, file: !58, line: 1217, type: !622)
!2693 = !DILocation(line: 1217, column: 16, scope: !2685)
!2694 = !DILocalVariable(name: "rc", scope: !2685, file: !58, line: 1218, type: !15)
!2695 = !DILocation(line: 1218, column: 6, scope: !2685)
!2696 = !DILocation(line: 1220, column: 32, scope: !2685)
!2697 = !DILocalVariable(name: "sqliteconnection", scope: !2685, file: !58, line: 1222, type: !36)
!2698 = !DILocation(line: 1222, column: 11, scope: !2685)
!2699 = !DILocation(line: 1222, column: 30, scope: !2685)
!2700 = !DILocation(line: 1223, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2685, file: !58, line: 1223, column: 6)
!2702 = !DILocation(line: 1223, column: 6, scope: !2685)
!2703 = !DILocation(line: 1224, column: 12, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !58, line: 1223, column: 24)
!2705 = !DILocation(line: 1224, column: 84, scope: !2704)
!2706 = !DILocation(line: 1224, column: 3, scope: !2704)
!2707 = !DILocation(line: 1226, column: 3, scope: !2704)
!2708 = !DILocation(line: 1228, column: 29, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !58, line: 1228, column: 7)
!2710 = !DILocation(line: 1228, column: 47, scope: !2709)
!2711 = !DILocation(line: 1228, column: 13, scope: !2709)
!2712 = !DILocation(line: 1228, column: 11, scope: !2709)
!2713 = !DILocation(line: 1228, column: 71, scope: !2709)
!2714 = !DILocation(line: 1228, column: 7, scope: !2704)
!2715 = !DILocation(line: 1229, column: 17, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2709, file: !58, line: 1228, column: 85)
!2717 = !DILocation(line: 1229, column: 4, scope: !2716)
!2718 = !DILocation(line: 1230, column: 8, scope: !2716)
!2719 = !DILocation(line: 1231, column: 3, scope: !2716)
!2720 = !DILocalVariable(name: "errmsg", scope: !2721, file: !58, line: 1232, type: !33)
!2721 = distinct !DILexicalBlock(scope: !2709, file: !58, line: 1231, column: 10)
!2722 = !DILocation(line: 1232, column: 16, scope: !2721)
!2723 = !DILocation(line: 1232, column: 40, scope: !2721)
!2724 = !DILocation(line: 1232, column: 25, scope: !2721)
!2725 = !DILocation(line: 1233, column: 88, scope: !2721)
!2726 = !DILocation(line: 1233, column: 4, scope: !2721)
!2727 = !DILocation(line: 1235, column: 20, scope: !2704)
!2728 = !DILocation(line: 1235, column: 3, scope: !2704)
!2729 = !DILocation(line: 1237, column: 3, scope: !2704)
!2730 = !DILocation(line: 1238, column: 2, scope: !2704)
!2731 = !DILocation(line: 1239, column: 9, scope: !2685)
!2732 = !DILocation(line: 1239, column: 2, scope: !2685)
!2733 = distinct !DISubprogram(name: "sqlite_list_admin_users", scope: !58, file: !58, line: 1242, type: !582, scopeLine: 1243, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2734 = !DILocalVariable(name: "no_print", arg: 1, scope: !2733, file: !58, line: 1242, type: !15)
!2735 = !DILocation(line: 1242, column: 40, scope: !2733)
!2736 = !DILocalVariable(name: "ret", scope: !2733, file: !58, line: 1244, type: !15)
!2737 = !DILocation(line: 1244, column: 6, scope: !2733)
!2738 = !DILocalVariable(name: "statement", scope: !2733, file: !58, line: 1245, type: !617)
!2739 = !DILocation(line: 1245, column: 7, scope: !2733)
!2740 = !DILocalVariable(name: "st", scope: !2733, file: !58, line: 1246, type: !622)
!2741 = !DILocation(line: 1246, column: 16, scope: !2733)
!2742 = !DILocalVariable(name: "rc", scope: !2733, file: !58, line: 1247, type: !15)
!2743 = !DILocation(line: 1247, column: 6, scope: !2733)
!2744 = !DILocation(line: 1249, column: 32, scope: !2733)
!2745 = !DILocalVariable(name: "sqliteconnection", scope: !2733, file: !58, line: 1251, type: !36)
!2746 = !DILocation(line: 1251, column: 11, scope: !2733)
!2747 = !DILocation(line: 1251, column: 30, scope: !2733)
!2748 = !DILocation(line: 1252, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2733, file: !58, line: 1252, column: 6)
!2750 = !DILocation(line: 1252, column: 6, scope: !2733)
!2751 = !DILocation(line: 1253, column: 12, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !58, line: 1252, column: 24)
!2753 = !DILocation(line: 1253, column: 3, scope: !2752)
!2754 = !DILocation(line: 1255, column: 3, scope: !2752)
!2755 = !DILocation(line: 1257, column: 29, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2752, file: !58, line: 1257, column: 7)
!2757 = !DILocation(line: 1257, column: 47, scope: !2756)
!2758 = !DILocation(line: 1257, column: 13, scope: !2756)
!2759 = !DILocation(line: 1257, column: 11, scope: !2756)
!2760 = !DILocation(line: 1257, column: 71, scope: !2756)
!2761 = !DILocation(line: 1257, column: 7, scope: !2752)
!2762 = !DILocation(line: 1259, column: 8, scope: !2763)
!2763 = distinct !DILexicalBlock(scope: !2756, file: !58, line: 1257, column: 85)
!2764 = !DILocation(line: 1260, column: 4, scope: !2763)
!2765 = !DILocalVariable(name: "res", scope: !2766, file: !58, line: 1261, type: !15)
!2766 = distinct !DILexicalBlock(scope: !2763, file: !58, line: 1260, column: 14)
!2767 = !DILocation(line: 1261, column: 9, scope: !2766)
!2768 = !DILocation(line: 1261, column: 28, scope: !2766)
!2769 = !DILocation(line: 1261, column: 15, scope: !2766)
!2770 = !DILocation(line: 1262, column: 9, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2766, file: !58, line: 1262, column: 9)
!2772 = !DILocation(line: 1262, column: 13, scope: !2771)
!2773 = !DILocation(line: 1262, column: 9, scope: !2766)
!2774 = !DILocalVariable(name: "kval", scope: !2775, file: !58, line: 1264, type: !33)
!2775 = distinct !DILexicalBlock(scope: !2771, file: !58, line: 1262, column: 28)
!2776 = !DILocation(line: 1264, column: 18, scope: !2775)
!2777 = !DILocation(line: 1264, column: 59, scope: !2775)
!2778 = !DILocation(line: 1264, column: 39, scope: !2775)
!2779 = !DILocalVariable(name: "rval", scope: !2775, file: !58, line: 1265, type: !33)
!2780 = !DILocation(line: 1265, column: 18, scope: !2775)
!2781 = !DILocation(line: 1265, column: 59, scope: !2775)
!2782 = !DILocation(line: 1265, column: 39, scope: !2775)
!2783 = !DILocation(line: 1267, column: 10, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2775, file: !58, line: 1267, column: 9)
!2785 = !DILocation(line: 1267, column: 9, scope: !2775)
!2786 = !DILocation(line: 1268, column: 11, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2788, file: !58, line: 1268, column: 11)
!2788 = distinct !DILexicalBlock(scope: !2784, file: !58, line: 1267, column: 20)
!2789 = !DILocation(line: 1268, column: 16, scope: !2787)
!2790 = !DILocation(line: 1268, column: 20, scope: !2787)
!2791 = !DILocation(line: 1268, column: 19, scope: !2787)
!2792 = !DILocation(line: 1268, column: 11, scope: !2788)
!2793 = !DILocation(line: 1269, column: 27, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2787, file: !58, line: 1268, column: 26)
!2795 = !DILocation(line: 1269, column: 33, scope: !2794)
!2796 = !DILocation(line: 1269, column: 8, scope: !2794)
!2797 = !DILocation(line: 1270, column: 7, scope: !2794)
!2798 = !DILocation(line: 1271, column: 23, scope: !2799)
!2799 = distinct !DILexicalBlock(scope: !2787, file: !58, line: 1270, column: 14)
!2800 = !DILocation(line: 1271, column: 8, scope: !2799)
!2801 = !DILocation(line: 1273, column: 6, scope: !2788)
!2802 = !DILocation(line: 1275, column: 6, scope: !2775)
!2803 = !DILocation(line: 1277, column: 5, scope: !2775)
!2804 = !DILocation(line: 1277, column: 16, scope: !2805)
!2805 = distinct !DILexicalBlock(scope: !2771, file: !58, line: 1277, column: 16)
!2806 = !DILocation(line: 1277, column: 20, scope: !2805)
!2807 = !DILocation(line: 1277, column: 16, scope: !2771)
!2808 = !DILocation(line: 1278, column: 6, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2805, file: !58, line: 1277, column: 36)
!2810 = !DILocalVariable(name: "errmsg", scope: !2811, file: !58, line: 1280, type: !33)
!2811 = distinct !DILexicalBlock(scope: !2805, file: !58, line: 1279, column: 12)
!2812 = !DILocation(line: 1280, column: 18, scope: !2811)
!2813 = !DILocation(line: 1280, column: 42, scope: !2811)
!2814 = !DILocation(line: 1280, column: 27, scope: !2811)
!2815 = !DILocation(line: 1281, column: 90, scope: !2811)
!2816 = !DILocation(line: 1281, column: 6, scope: !2811)
!2817 = !DILocation(line: 1282, column: 10, scope: !2811)
!2818 = !DILocation(line: 1283, column: 6, scope: !2811)
!2819 = distinct !{!2819, !2764, !2820}
!2820 = !DILocation(line: 1285, column: 4, scope: !2763)
!2821 = !DILocation(line: 1286, column: 3, scope: !2763)
!2822 = !DILocalVariable(name: "errmsg", scope: !2823, file: !58, line: 1287, type: !33)
!2823 = distinct !DILexicalBlock(scope: !2756, file: !58, line: 1286, column: 10)
!2824 = !DILocation(line: 1287, column: 16, scope: !2823)
!2825 = !DILocation(line: 1287, column: 40, scope: !2823)
!2826 = !DILocation(line: 1287, column: 25, scope: !2823)
!2827 = !DILocation(line: 1288, column: 88, scope: !2823)
!2828 = !DILocation(line: 1288, column: 4, scope: !2823)
!2829 = !DILocation(line: 1290, column: 20, scope: !2752)
!2830 = !DILocation(line: 1290, column: 3, scope: !2752)
!2831 = !DILocation(line: 1292, column: 3, scope: !2752)
!2832 = !DILocation(line: 1293, column: 2, scope: !2752)
!2833 = !DILocation(line: 1294, column: 9, scope: !2733)
!2834 = !DILocation(line: 1294, column: 2, scope: !2733)
!2835 = distinct !DISubprogram(name: "sqlite_disconnect", scope: !58, file: !58, line: 1297, type: !586, scopeLine: 1297, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2836 = !DILocalVariable(name: "sqliteconnection", scope: !2835, file: !58, line: 1298, type: !36)
!2837 = !DILocation(line: 1298, column: 11, scope: !2835)
!2838 = !DILocation(line: 1298, column: 61, scope: !2835)
!2839 = !DILocation(line: 1298, column: 41, scope: !2835)
!2840 = !DILocation(line: 1299, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2835, file: !58, line: 1299, column: 6)
!2842 = !DILocation(line: 1299, column: 6, scope: !2835)
!2843 = !DILocation(line: 1300, column: 17, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !58, line: 1299, column: 24)
!2845 = !DILocation(line: 1300, column: 3, scope: !2844)
!2846 = !DILocation(line: 1301, column: 19, scope: !2844)
!2847 = !DILocation(line: 1302, column: 2, scope: !2844)
!2848 = !DILocation(line: 1303, column: 2, scope: !2835)
!2849 = !DILocation(line: 1304, column: 1, scope: !2835)
!2850 = distinct !DISubprogram(name: "get_sqlite_connection", scope: !58, file: !58, line: 177, type: !2851, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2851 = !DISubroutineType(types: !2852)
!2852 = !{!36}
!2853 = !DILocalVariable(name: "pud", scope: !2850, file: !58, line: 179, type: !2854)
!2854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2855, size: 64)
!2855 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !14, line: 157, baseType: !2856)
!2856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !14, line: 155, size: 8200, elements: !2857)
!2857 = !{!2858}
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !2856, file: !14, line: 156, baseType: !617, size: 8200)
!2859 = !DILocation(line: 179, column: 25, scope: !2850)
!2860 = !DILocation(line: 179, column: 31, scope: !2850)
!2861 = !DILocalVariable(name: "sqliteconnection", scope: !2850, file: !58, line: 181, type: !36)
!2862 = !DILocation(line: 181, column: 11, scope: !2850)
!2863 = !DILocation(line: 181, column: 61, scope: !2850)
!2864 = !DILocation(line: 181, column: 41, scope: !2850)
!2865 = !DILocation(line: 182, column: 6, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2850, file: !58, line: 182, column: 5)
!2867 = !DILocation(line: 182, column: 5, scope: !2850)
!2868 = !DILocation(line: 183, column: 22, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !58, line: 182, column: 24)
!2870 = !DILocation(line: 183, column: 27, scope: !2869)
!2871 = !DILocation(line: 183, column: 3, scope: !2869)
!2872 = !DILocation(line: 184, column: 3, scope: !2869)
!2873 = !DILocalVariable(name: "rc", scope: !2869, file: !58, line: 185, type: !15)
!2874 = !DILocation(line: 185, column: 7, scope: !2869)
!2875 = !DILocation(line: 185, column: 25, scope: !2869)
!2876 = !DILocation(line: 185, column: 30, scope: !2869)
!2877 = !DILocation(line: 185, column: 12, scope: !2869)
!2878 = !DILocation(line: 186, column: 7, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2869, file: !58, line: 186, column: 6)
!2880 = !DILocation(line: 186, column: 24, scope: !2879)
!2881 = !DILocation(line: 186, column: 28, scope: !2879)
!2882 = !DILocation(line: 186, column: 31, scope: !2879)
!2883 = !DILocation(line: 186, column: 6, scope: !2869)
!2884 = !DILocalVariable(name: "errmsg", scope: !2885, file: !58, line: 187, type: !33)
!2885 = distinct !DILexicalBlock(scope: !2879, file: !58, line: 186, column: 46)
!2886 = !DILocation(line: 187, column: 16, scope: !2885)
!2887 = !DILocation(line: 187, column: 40, scope: !2885)
!2888 = !DILocation(line: 187, column: 25, scope: !2885)
!2889 = !DILocation(line: 188, column: 329, scope: !2885)
!2890 = !DILocation(line: 188, column: 334, scope: !2885)
!2891 = !DILocation(line: 188, column: 341, scope: !2885)
!2892 = !DILocation(line: 188, column: 4, scope: !2885)
!2893 = !DILocation(line: 189, column: 7, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2885, file: !58, line: 189, column: 7)
!2895 = !DILocation(line: 189, column: 7, scope: !2885)
!2896 = !DILocation(line: 190, column: 19, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2894, file: !58, line: 189, column: 25)
!2898 = !DILocation(line: 190, column: 5, scope: !2897)
!2899 = !DILocation(line: 191, column: 21, scope: !2897)
!2900 = !DILocation(line: 192, column: 4, scope: !2897)
!2901 = !DILocation(line: 193, column: 45, scope: !2885)
!2902 = !DILocation(line: 194, column: 3, scope: !2885)
!2903 = !DILocation(line: 195, column: 25, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2879, file: !58, line: 194, column: 10)
!2905 = !DILocation(line: 195, column: 4, scope: !2904)
!2906 = !DILocation(line: 196, column: 8, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2904, file: !58, line: 196, column: 7)
!2908 = !DILocation(line: 196, column: 7, scope: !2904)
!2909 = !DILocation(line: 197, column: 77, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2907, file: !58, line: 196, column: 39)
!2911 = !DILocation(line: 197, column: 82, scope: !2910)
!2912 = !DILocation(line: 197, column: 5, scope: !2910)
!2913 = !DILocation(line: 198, column: 36, scope: !2910)
!2914 = !DILocation(line: 199, column: 4, scope: !2910)
!2915 = !DILocation(line: 201, column: 6, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2869, file: !58, line: 201, column: 6)
!2917 = !DILocation(line: 201, column: 6, scope: !2869)
!2918 = !DILocation(line: 202, column: 31, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2916, file: !58, line: 201, column: 24)
!2920 = !DILocation(line: 202, column: 47, scope: !2919)
!2921 = !DILocation(line: 202, column: 11, scope: !2919)
!2922 = !DILocation(line: 203, column: 3, scope: !2919)
!2923 = !DILocation(line: 204, column: 2, scope: !2869)
!2924 = !DILocation(line: 205, column: 9, scope: !2850)
!2925 = !DILocation(line: 205, column: 2, scope: !2850)
!2926 = distinct !DISubprogram(name: "sqlite_lock", scope: !58, file: !58, line: 54, type: !2927, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2927 = !DISubroutineType(types: !2928)
!2928 = !{null, !15}
!2929 = !DILocalVariable(name: "write", arg: 1, scope: !2926, file: !58, line: 54, type: !15)
!2930 = !DILocation(line: 54, column: 29, scope: !2926)
!2931 = !DILocalVariable(name: "pths", scope: !2926, file: !58, line: 56, type: !178)
!2932 = !DILocation(line: 56, column: 12, scope: !2926)
!2933 = !DILocation(line: 56, column: 19, scope: !2926)
!2934 = !DILocalVariable(name: "can_move", scope: !2926, file: !58, line: 58, type: !15)
!2935 = !DILocation(line: 58, column: 6, scope: !2926)
!2936 = !DILocation(line: 59, column: 2, scope: !2926)
!2937 = !DILocation(line: 59, column: 10, scope: !2926)
!2938 = !DILocation(line: 59, column: 9, scope: !2926)
!2939 = !DILocation(line: 60, column: 3, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2926, file: !58, line: 59, column: 20)
!2941 = !DILocation(line: 61, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2940, file: !58, line: 61, column: 7)
!2943 = !DILocation(line: 61, column: 7, scope: !2940)
!2944 = !DILocation(line: 62, column: 10, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !58, line: 62, column: 8)
!2946 = distinct !DILexicalBlock(scope: !2942, file: !58, line: 61, column: 14)
!2947 = !DILocation(line: 62, column: 23, scope: !2945)
!2948 = !DILocation(line: 62, column: 29, scope: !2945)
!2949 = !DILocation(line: 62, column: 33, scope: !2945)
!2950 = !DILocation(line: 62, column: 46, scope: !2945)
!2951 = !DILocation(line: 62, column: 52, scope: !2945)
!2952 = !DILocation(line: 62, column: 56, scope: !2945)
!2953 = !DILocation(line: 62, column: 72, scope: !2945)
!2954 = !DILocation(line: 62, column: 69, scope: !2945)
!2955 = !DILocation(line: 62, column: 8, scope: !2946)
!2956 = !DILocation(line: 63, column: 14, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2945, file: !58, line: 62, column: 79)
!2958 = !DILocation(line: 64, column: 5, scope: !2957)
!2959 = !DILocation(line: 65, column: 20, scope: !2957)
!2960 = !DILocation(line: 65, column: 18, scope: !2957)
!2961 = !DILocation(line: 66, column: 4, scope: !2957)
!2962 = !DILocation(line: 67, column: 3, scope: !2946)
!2963 = !DILocation(line: 68, column: 10, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2965, file: !58, line: 68, column: 8)
!2965 = distinct !DILexicalBlock(scope: !2942, file: !58, line: 67, column: 10)
!2966 = !DILocation(line: 68, column: 24, scope: !2964)
!2967 = !DILocation(line: 68, column: 28, scope: !2964)
!2968 = !DILocation(line: 68, column: 44, scope: !2964)
!2969 = !DILocation(line: 68, column: 41, scope: !2964)
!2970 = !DILocation(line: 68, column: 8, scope: !2965)
!2971 = !DILocation(line: 69, column: 14, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2964, file: !58, line: 68, column: 51)
!2973 = !DILocation(line: 70, column: 5, scope: !2972)
!2974 = !DILocation(line: 71, column: 4, scope: !2972)
!2975 = !DILocation(line: 73, column: 8, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2940, file: !58, line: 73, column: 7)
!2977 = !DILocation(line: 73, column: 7, scope: !2940)
!2978 = !DILocation(line: 74, column: 4, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2976, file: !58, line: 73, column: 18)
!2980 = !DILocation(line: 75, column: 3, scope: !2979)
!2981 = !DILocation(line: 76, column: 3, scope: !2940)
!2982 = distinct !{!2982, !2936, !2983, !688}
!2983 = !DILocation(line: 77, column: 2, scope: !2926)
!2984 = !DILocation(line: 78, column: 1, scope: !2926)
!2985 = distinct !DISubprogram(name: "sqlite_unlock", scope: !58, file: !58, line: 80, type: !2927, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!2986 = !DILocalVariable(name: "write", arg: 1, scope: !2985, file: !58, line: 80, type: !15)
!2987 = !DILocation(line: 80, column: 31, scope: !2985)
!2988 = !DILocation(line: 82, column: 2, scope: !2985)
!2989 = !DILocation(line: 83, column: 6, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2985, file: !58, line: 83, column: 6)
!2991 = !DILocation(line: 83, column: 6, scope: !2985)
!2992 = !DILocation(line: 84, column: 9, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2994, file: !58, line: 84, column: 7)
!2994 = distinct !DILexicalBlock(scope: !2990, file: !58, line: 83, column: 13)
!2995 = !DILocation(line: 84, column: 7, scope: !2994)
!2996 = !DILocation(line: 85, column: 17, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !58, line: 84, column: 25)
!2998 = !DILocation(line: 86, column: 4, scope: !2997)
!2999 = !DILocation(line: 87, column: 3, scope: !2997)
!3000 = !DILocation(line: 88, column: 2, scope: !2994)
!3001 = !DILocation(line: 89, column: 9, scope: !3002)
!3002 = distinct !DILexicalBlock(scope: !3003, file: !58, line: 89, column: 7)
!3003 = distinct !DILexicalBlock(scope: !2990, file: !58, line: 88, column: 9)
!3004 = !DILocation(line: 89, column: 7, scope: !3003)
!3005 = !DILocation(line: 90, column: 4, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !3002, file: !58, line: 89, column: 26)
!3007 = !DILocation(line: 91, column: 3, scope: !3006)
!3008 = !DILocation(line: 93, column: 2, scope: !2985)
!3009 = !DILocation(line: 94, column: 1, scope: !2985)
!3010 = distinct !DISubprogram(name: "fix_user_directory", scope: !58, file: !58, line: 124, type: !3011, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !40}
!3013 = !DILocalVariable(name: "dir0", arg: 1, scope: !3010, file: !58, line: 124, type: !40)
!3014 = !DILocation(line: 124, column: 38, scope: !3010)
!3015 = !DILocalVariable(name: "dir", scope: !3010, file: !58, line: 125, type: !40)
!3016 = !DILocation(line: 125, column: 8, scope: !3010)
!3017 = !DILocation(line: 125, column: 14, scope: !3010)
!3018 = !DILocation(line: 126, column: 2, scope: !3010)
!3019 = !DILocation(line: 126, column: 9, scope: !3010)
!3020 = !DILocation(line: 126, column: 8, scope: !3010)
!3021 = !DILocation(line: 126, column: 13, scope: !3010)
!3022 = !DILocation(line: 126, column: 21, scope: !3010)
!3023 = distinct !{!3023, !3018, !3024, !688}
!3024 = !DILocation(line: 126, column: 23, scope: !3010)
!3025 = !DILocation(line: 127, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3010, file: !58, line: 127, column: 5)
!3027 = !DILocation(line: 127, column: 5, scope: !3026)
!3028 = !DILocation(line: 127, column: 10, scope: !3026)
!3029 = !DILocation(line: 127, column: 5, scope: !3010)
!3030 = !DILocalVariable(name: "home", scope: !3031, file: !58, line: 128, type: !40)
!3031 = distinct !DILexicalBlock(scope: !3026, file: !58, line: 127, column: 18)
!3032 = !DILocation(line: 128, column: 9, scope: !3031)
!3033 = !DILocation(line: 128, column: 14, scope: !3031)
!3034 = !DILocation(line: 129, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3031, file: !58, line: 129, column: 6)
!3036 = !DILocation(line: 129, column: 6, scope: !3031)
!3037 = !DILocalVariable(name: "pwd", scope: !3038, file: !58, line: 130, type: !3039)
!3038 = distinct !DILexicalBlock(scope: !3035, file: !58, line: 129, column: 13)
!3039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3040, size: 64)
!3040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "passwd", file: !3041, line: 49, size: 384, elements: !3042)
!3041 = !DIFile(filename: "/usr/include/pwd.h", directory: "", checksumkind: CSK_MD5, checksum: "6682d47abdfe13134f841d46e0eadc7b")
!3042 = !{!3043, !3044, !3045, !3047, !3049, !3050, !3051}
!3043 = !DIDerivedType(tag: DW_TAG_member, name: "pw_name", scope: !3040, file: !3041, line: 51, baseType: !40, size: 64)
!3044 = !DIDerivedType(tag: DW_TAG_member, name: "pw_passwd", scope: !3040, file: !3041, line: 52, baseType: !40, size: 64, offset: 64)
!3045 = !DIDerivedType(tag: DW_TAG_member, name: "pw_uid", scope: !3040, file: !3041, line: 54, baseType: !3046, size: 32, offset: 128)
!3046 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !52, line: 146, baseType: !7)
!3047 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gid", scope: !3040, file: !3041, line: 55, baseType: !3048, size: 32, offset: 160)
!3048 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !52, line: 147, baseType: !7)
!3049 = !DIDerivedType(tag: DW_TAG_member, name: "pw_gecos", scope: !3040, file: !3041, line: 56, baseType: !40, size: 64, offset: 192)
!3050 = !DIDerivedType(tag: DW_TAG_member, name: "pw_dir", scope: !3040, file: !3041, line: 57, baseType: !40, size: 64, offset: 256)
!3051 = !DIDerivedType(tag: DW_TAG_member, name: "pw_shell", scope: !3040, file: !3041, line: 58, baseType: !40, size: 64, offset: 320)
!3052 = !DILocation(line: 130, column: 19, scope: !3038)
!3053 = !DILocation(line: 130, column: 34, scope: !3038)
!3054 = !DILocation(line: 130, column: 25, scope: !3038)
!3055 = !DILocation(line: 131, column: 8, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3038, file: !58, line: 131, column: 7)
!3057 = !DILocation(line: 131, column: 7, scope: !3038)
!3058 = !DILocation(line: 132, column: 5, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3056, file: !58, line: 131, column: 13)
!3060 = !DILocation(line: 133, column: 4, scope: !3059)
!3061 = !DILocation(line: 134, column: 12, scope: !3062)
!3062 = distinct !DILexicalBlock(scope: !3056, file: !58, line: 133, column: 11)
!3063 = !DILocation(line: 134, column: 17, scope: !3062)
!3064 = !DILocation(line: 134, column: 10, scope: !3062)
!3065 = !DILocation(line: 135, column: 9, scope: !3066)
!3066 = distinct !DILexicalBlock(scope: !3062, file: !58, line: 135, column: 8)
!3067 = !DILocation(line: 135, column: 8, scope: !3062)
!3068 = !DILocation(line: 136, column: 6, scope: !3069)
!3069 = distinct !DILexicalBlock(scope: !3066, file: !58, line: 135, column: 15)
!3070 = !DILocation(line: 137, column: 6, scope: !3069)
!3071 = !DILocation(line: 140, column: 3, scope: !3038)
!3072 = !DILocalVariable(name: "szh", scope: !3031, file: !58, line: 141, type: !405)
!3073 = !DILocation(line: 141, column: 10, scope: !3031)
!3074 = !DILocation(line: 141, column: 23, scope: !3031)
!3075 = !DILocation(line: 141, column: 16, scope: !3031)
!3076 = !DILocalVariable(name: "sz", scope: !3031, file: !58, line: 142, type: !405)
!3077 = !DILocation(line: 142, column: 10, scope: !3031)
!3078 = !DILocation(line: 142, column: 22, scope: !3031)
!3079 = !DILocation(line: 142, column: 15, scope: !3031)
!3080 = !DILocation(line: 142, column: 27, scope: !3031)
!3081 = !DILocation(line: 142, column: 30, scope: !3031)
!3082 = !DILocation(line: 142, column: 29, scope: !3031)
!3083 = !DILocalVariable(name: "dir_fixed", scope: !3031, file: !58, line: 143, type: !40)
!3084 = !DILocation(line: 143, column: 9, scope: !3031)
!3085 = !DILocation(line: 143, column: 35, scope: !3031)
!3086 = !DILocation(line: 143, column: 28, scope: !3031)
!3087 = !DILocation(line: 144, column: 11, scope: !3031)
!3088 = !DILocation(line: 144, column: 21, scope: !3031)
!3089 = !DILocation(line: 144, column: 26, scope: !3031)
!3090 = !DILocation(line: 144, column: 3, scope: !3031)
!3091 = !DILocation(line: 145, column: 11, scope: !3031)
!3092 = !DILocation(line: 145, column: 21, scope: !3031)
!3093 = !DILocation(line: 145, column: 20, scope: !3031)
!3094 = !DILocation(line: 145, column: 25, scope: !3031)
!3095 = !DILocation(line: 145, column: 28, scope: !3031)
!3096 = !DILocation(line: 145, column: 32, scope: !3031)
!3097 = !DILocation(line: 145, column: 35, scope: !3031)
!3098 = !DILocation(line: 145, column: 34, scope: !3031)
!3099 = !DILocation(line: 145, column: 38, scope: !3031)
!3100 = !DILocation(line: 145, column: 3, scope: !3031)
!3101 = !DILocation(line: 146, column: 11, scope: !3031)
!3102 = !DILocation(line: 146, column: 16, scope: !3031)
!3103 = !DILocation(line: 146, column: 26, scope: !3031)
!3104 = !DILocation(line: 146, column: 3, scope: !3031)
!3105 = !DILocation(line: 147, column: 8, scope: !3031)
!3106 = !DILocation(line: 147, column: 3, scope: !3031)
!3107 = !DILocation(line: 148, column: 2, scope: !3031)
!3108 = !DILocation(line: 149, column: 1, scope: !3010)
!3109 = distinct !DISubprogram(name: "sqlite_init_multithreaded", scope: !58, file: !58, line: 98, type: !3110, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!3110 = !DISubroutineType(types: !3111)
!3111 = !{!15}
!3112 = !DILocation(line: 102, column: 2, scope: !3109)
!3113 = !DILocation(line: 104, column: 6, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3109, file: !58, line: 104, column: 6)
!3115 = !DILocation(line: 104, column: 27, scope: !3114)
!3116 = !DILocation(line: 104, column: 6, scope: !3109)
!3117 = !DILocalVariable(name: "retCode", scope: !3118, file: !58, line: 105, type: !15)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !58, line: 104, column: 32)
!3119 = !DILocation(line: 105, column: 7, scope: !3118)
!3120 = !DILocation(line: 105, column: 17, scope: !3118)
!3121 = !DILocation(line: 106, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3118, file: !58, line: 106, column: 7)
!3123 = !DILocation(line: 106, column: 15, scope: !3122)
!3124 = !DILocation(line: 106, column: 7, scope: !3118)
!3125 = !DILocation(line: 107, column: 14, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3122, file: !58, line: 106, column: 29)
!3127 = !DILocation(line: 107, column: 12, scope: !3126)
!3128 = !DILocation(line: 108, column: 8, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3126, file: !58, line: 108, column: 8)
!3130 = !DILocation(line: 108, column: 16, scope: !3129)
!3131 = !DILocation(line: 108, column: 8, scope: !3126)
!3132 = !DILocation(line: 109, column: 118, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3129, file: !58, line: 108, column: 30)
!3134 = !DILocation(line: 109, column: 5, scope: !3133)
!3135 = !DILocation(line: 110, column: 5, scope: !3133)
!3136 = !DILocation(line: 112, column: 3, scope: !3126)
!3137 = !DILocation(line: 113, column: 2, scope: !3118)
!3138 = !DILocation(line: 114, column: 3, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !3114, file: !58, line: 113, column: 9)
!3140 = !DILocation(line: 115, column: 3, scope: !3139)
!3141 = !DILocation(line: 119, column: 2, scope: !3109)
!3142 = !DILocation(line: 120, column: 1, scope: !3109)
!3143 = distinct !DISubprogram(name: "init_sqlite_database", scope: !58, file: !58, line: 151, type: !3144, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !600)
!3144 = !DISubroutineType(types: !3145)
!3145 = !{null, !36}
!3146 = !DILocalVariable(name: "sqliteconnection", arg: 1, scope: !3143, file: !58, line: 151, type: !36)
!3147 = !DILocation(line: 151, column: 43, scope: !3143)
!3148 = !DILocalVariable(name: "statements", scope: !3143, file: !58, line: 153, type: !3149)
!3149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 576, elements: !3150)
!3150 = !{!3151}
!3151 = !DISubrange(count: 9)
!3152 = !DILocation(line: 153, column: 15, scope: !3143)
!3153 = !DILocalVariable(name: "i", scope: !3143, file: !58, line: 165, type: !15)
!3154 = !DILocation(line: 165, column: 6, scope: !3143)
!3155 = !DILocation(line: 166, column: 2, scope: !3143)
!3156 = !DILocation(line: 166, column: 19, scope: !3143)
!3157 = !DILocation(line: 166, column: 8, scope: !3143)
!3158 = !DILocalVariable(name: "statement", scope: !3159, file: !58, line: 167, type: !622)
!3159 = distinct !DILexicalBlock(scope: !3143, file: !58, line: 166, column: 23)
!3160 = !DILocation(line: 167, column: 17, scope: !3159)
!3161 = !DILocalVariable(name: "rc", scope: !3159, file: !58, line: 168, type: !15)
!3162 = !DILocation(line: 168, column: 7, scope: !3159)
!3163 = !DILocation(line: 169, column: 29, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3159, file: !58, line: 169, column: 7)
!3165 = !DILocation(line: 169, column: 58, scope: !3164)
!3166 = !DILocation(line: 169, column: 47, scope: !3164)
!3167 = !DILocation(line: 169, column: 13, scope: !3164)
!3168 = !DILocation(line: 169, column: 11, scope: !3164)
!3169 = !DILocation(line: 169, column: 82, scope: !3164)
!3170 = !DILocation(line: 169, column: 7, scope: !3159)
!3171 = !DILocation(line: 170, column: 17, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3164, file: !58, line: 169, column: 96)
!3173 = !DILocation(line: 170, column: 4, scope: !3172)
!3174 = !DILocation(line: 171, column: 3, scope: !3172)
!3175 = !DILocation(line: 172, column: 20, scope: !3159)
!3176 = !DILocation(line: 172, column: 3, scope: !3159)
!3177 = !DILocation(line: 173, column: 3, scope: !3159)
!3178 = distinct !{!3178, !3155, !3179, !688}
!3179 = !DILocation(line: 174, column: 2, scope: !3143)
!3180 = !DILocation(line: 175, column: 1, scope: !3143)
