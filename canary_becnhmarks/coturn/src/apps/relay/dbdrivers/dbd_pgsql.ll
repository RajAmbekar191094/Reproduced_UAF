; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbd_pgsql.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_pgsql.c"
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
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }

@driver = internal constant %struct._turn_dbdriver_t { ptr @pgsql_get_auth_secrets, ptr @pgsql_get_user_key, ptr @pgsql_set_user_key, ptr @pgsql_del_user, ptr @pgsql_list_users, ptr @pgsql_list_secrets, ptr @pgsql_del_secret, ptr @pgsql_set_secret, ptr @pgsql_add_origin, ptr @pgsql_del_origin, ptr @pgsql_list_origins, ptr @pgsql_set_realm_option_one, ptr @pgsql_list_realm_options, ptr @pgsql_auth_ping, ptr @pgsql_get_ip_list, ptr @pgsql_set_permission_ip, ptr @pgsql_reread_realms, ptr @pgsql_set_oauth_key, ptr @pgsql_get_oauth_key, ptr @pgsql_del_oauth_key, ptr @pgsql_list_oauth_keys, ptr @pgsql_get_admin_user, ptr @pgsql_set_admin_user, ptr @pgsql_del_admin_user, ptr @pgsql_list_admin_users, ptr @pgsql_disconnect }, align 8, !dbg !0
@.str = private unnamed_addr constant [47 x i8] c"select value from turn_secret where realm='%s'\00", align 1, !dbg !79
@.str.1 = private unnamed_addr constant [48 x i8] c"Error retrieving PostgreSQL DB information: %s\0A\00", align 1, !dbg !85
@connection_key = external global i32, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"Cannot open PostgreSQL DB connection <%s>, connection string format error: %s\0A\00", align 1, !dbg !90
@.str.3 = private unnamed_addr constant [84 x i8] c"Cannot open PostgreSQL DB connection: <%s>, unknown connection string format error\0A\00", align 1, !dbg !95
@.str.4 = private unnamed_addr constant [59 x i8] c"Cannot open PostgreSQL DB connection: <%s>, runtime error\0A\00", align 1, !dbg !100
@donot_print_connection_success = internal global i32 0, align 4, !dbg !110
@.str.5 = private unnamed_addr constant [38 x i8] c"PostgreSQL DB connection success: %s\0A\00", align 1, !dbg !105
@.str.6 = private unnamed_addr constant [64 x i8] c"select hmackey from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !112
@.str.7 = private unnamed_addr constant [31 x i8] c"Wrong key format: %s, user %s\0A\00", align 1, !dbg !117
@.str.8 = private unnamed_addr constant [24 x i8] c"Wrong key: %s, user %s\0A\00", align 1, !dbg !122
@.str.9 = private unnamed_addr constant [38 x i8] c"Wrong hmackey data for user %s: NULL\0A\00", align 1, !dbg !127
@.str.10 = private unnamed_addr constant [69 x i8] c"insert into turnusers_lt (realm,name,hmackey) values('%s','%s','%s')\00", align 1, !dbg !129
@.str.11 = private unnamed_addr constant [68 x i8] c"update turnusers_lt set hmackey='%s' where name='%s' and realm='%s'\00", align 1, !dbg !134
@.str.12 = private unnamed_addr constant [47 x i8] c"Error inserting/updating user information: %s\0A\00", align 1, !dbg !139
@.str.13 = private unnamed_addr constant [56 x i8] c"delete from turnusers_lt where name='%s' and realm='%s'\00", align 1, !dbg !141
@.str.14 = private unnamed_addr constant [67 x i8] c"select name,realm from turnusers_lt where realm='%s' order by name\00", align 1, !dbg !146
@.str.15 = private unnamed_addr constant [56 x i8] c"select name,realm from turnusers_lt order by realm,name\00", align 1, !dbg !151
@.str.16 = private unnamed_addr constant [8 x i8] c"%s[%s]\0A\00", align 1, !dbg !153
@.str.17 = private unnamed_addr constant [68 x i8] c"select value,realm from turn_secret where realm='%s' order by value\00", align 1, !dbg !158
@.str.18 = private unnamed_addr constant [57 x i8] c"select value,realm from turn_secret order by realm,value\00", align 1, !dbg !160
@.str.19 = private unnamed_addr constant [41 x i8] c"delete from turn_secret where realm='%s'\00", align 1, !dbg !165
@.str.20 = private unnamed_addr constant [56 x i8] c"delete from turn_secret where value='%s' and realm='%s'\00", align 1, !dbg !170
@.str.21 = private unnamed_addr constant [56 x i8] c"insert into turn_secret (realm,value) values('%s','%s')\00", align 1, !dbg !172
@.str.22 = private unnamed_addr constant [53 x i8] c"Error inserting/updating secret key information: %s\0A\00", align 1, !dbg !174
@.str.23 = private unnamed_addr constant [66 x i8] c"insert into turn_origin_to_realm (origin,realm) values('%s','%s')\00", align 1, !dbg !179
@.str.24 = private unnamed_addr constant [40 x i8] c"Error inserting origin information: %s\0A\00", align 1, !dbg !184
@.str.25 = private unnamed_addr constant [51 x i8] c"delete from turn_origin_to_realm where origin='%s'\00", align 1, !dbg !189
@.str.26 = private unnamed_addr constant [39 x i8] c"Error deleting origin information: %s\0A\00", align 1, !dbg !194
@.str.27 = private unnamed_addr constant [79 x i8] c"select origin,realm from turn_origin_to_realm where realm='%s' order by origin\00", align 1, !dbg !199
@.str.28 = private unnamed_addr constant [68 x i8] c"select origin,realm from turn_origin_to_realm order by realm,origin\00", align 1, !dbg !201
@.str.29 = private unnamed_addr constant [12 x i8] c"%s ==>> %s\0A\00", align 1, !dbg !203
@.str.30 = private unnamed_addr constant [60 x i8] c"delete from turn_realm_option where realm='%s' and opt='%s'\00", align 1, !dbg !208
@.str.31 = private unnamed_addr constant [72 x i8] c"insert into turn_realm_option (realm,opt,value) values('%s','%s','%lu')\00", align 1, !dbg !213
@.str.32 = private unnamed_addr constant [46 x i8] c"Error inserting realm option information: %s\0A\00", align 1, !dbg !218
@.str.33 = private unnamed_addr constant [82 x i8] c"select realm,opt,value from turn_realm_option where realm='%s' order by realm,opt\00", align 1, !dbg !223
@.str.34 = private unnamed_addr constant [65 x i8] c"select realm,opt,value from turn_realm_option order by realm,opt\00", align 1, !dbg !228
@.str.35 = private unnamed_addr constant [11 x i8] c"%s[%s]=%s\0A\00", align 1, !dbg !233
@.str.36 = private unnamed_addr constant [30 x i8] c"select value from turn_secret\00", align 1, !dbg !238
@.str.37 = private unnamed_addr constant [38 x i8] c"select ip_range,realm from %s_peer_ip\00", align 1, !dbg !243
@pgsql_get_ip_list.wrong_table_reported = internal global i32 0, align 4, !dbg !245
@.str.38 = private unnamed_addr constant [161 x i8] c"Error retrieving PostgreSQL DB information: %s; probably, the tables 'allowed_peer_ip' and/or 'denied_peer_ip' have to be upgraded to include the realm column.\0A\00", align 1, !dbg !334
@.str.39 = private unnamed_addr constant [35 x i8] c"select ip_range,'' from %s_peer_ip\00", align 1, !dbg !339
@.str.40 = private unnamed_addr constant [63 x i8] c"delete from %s_peer_ip where realm = '%s'  and ip_range = '%s'\00", align 1, !dbg !344
@.str.41 = private unnamed_addr constant [58 x i8] c"insert into %s_peer_ip (realm,ip_range) values('%s','%s')\00", align 1, !dbg !349
@.str.42 = private unnamed_addr constant [47 x i8] c"Error inserting ip permission information: %s\0A\00", align 1, !dbg !354
@.str.43 = private unnamed_addr constant [46 x i8] c"select origin,realm from turn_origin_to_realm\00", align 1, !dbg !356
@turn_params = external global %struct._turn_params_, align 8
@.str.44 = private unnamed_addr constant [46 x i8] c"select realm,opt,value from turn_realm_option\00", align 1, !dbg !358
@.str.45 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !360
@.str.46 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !362
@.str.47 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !364
@.str.48 = private unnamed_addr constant [26 x i8] c"Unknown realm option: %s\0A\00", align 1, !dbg !366
@.str.49 = private unnamed_addr constant [108 x i8] c"insert into oauth_key (kid,ikm_key,timestamp,lifetime,as_rs_alg,realm) values('%s','%s',%llu,%lu,'%s','%s')\00", align 1, !dbg !371
@.str.50 = private unnamed_addr constant [104 x i8] c"update oauth_key set ikm_key='%s',timestamp=%lu,lifetime=%lu, as_rs_alg='%s', realm='%s' where kid='%s'\00", align 1, !dbg !376
@.str.51 = private unnamed_addr constant [52 x i8] c"Error inserting/updating oauth_key information: %s\0A\00", align 1, !dbg !381
@.str.52 = private unnamed_addr constant [80 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm from oauth_key where kid='%s'\00", align 1, !dbg !386
@.str.53 = private unnamed_addr constant [39 x i8] c"delete from oauth_key where kid = '%s'\00", align 1, !dbg !391
@.str.54 = private unnamed_addr constant [42 x i8] c"Error deleting oauth_key information: %s\0A\00", align 1, !dbg !393
@.str.55 = private unnamed_addr constant [82 x i8] c"select ikm_key,timestamp,lifetime,as_rs_alg,realm,kid from oauth_key order by kid\00", align 1, !dbg !398
@.str.56 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1, !dbg !400
@.str.57 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !405
@.str.58 = private unnamed_addr constant [76 x i8] c"  kid=%s, ikm_key=%s, timestamp=%llu, lifetime=%lu, as_rs_alg=%s, realm=%s\0A\00", align 1, !dbg !408
@.str.59 = private unnamed_addr constant [54 x i8] c"select realm,password from admin_user where name='%s'\00", align 1, !dbg !413
@.str.60 = private unnamed_addr constant [68 x i8] c"insert into admin_user (realm,name,password) values('%s','%s','%s')\00", align 1, !dbg !418
@.str.61 = private unnamed_addr constant [63 x i8] c"update admin_user set password='%s',realm='%s' where name='%s'\00", align 1, !dbg !420
@.str.62 = private unnamed_addr constant [39 x i8] c"delete from admin_user where name='%s'\00", align 1, !dbg !422
@.str.63 = private unnamed_addr constant [63 x i8] c"select name,realm,password from admin_user order by realm,name\00", align 1, !dbg !424
@.str.64 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !426
@.str.65 = private unnamed_addr constant [35 x i8] c"PostgreSQL connection was closed.\0A\00", align 1, !dbg !428

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_pgsql_dbdriver() #0 !dbg !553 {
  ret ptr @driver, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !558 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !559, metadata !DIExpression()), !dbg !560
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !562
  call void @llvm.dbg.declare(metadata ptr %5, metadata !563, metadata !DIExpression()), !dbg !564
  store i32 -1, ptr %5, align 4, !dbg !564
  call void @llvm.dbg.declare(metadata ptr %6, metadata !565, metadata !DIExpression()), !dbg !566
  %11 = call ptr @get_pqdb_connection(), !dbg !567
  store ptr %11, ptr %6, align 8, !dbg !566
  %12 = load ptr, ptr %6, align 8, !dbg !568
  %13 = icmp ne ptr %12, null, !dbg !568
  br i1 %13, label %14, label %56, !dbg !570

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !571, metadata !DIExpression()), !dbg !576
  %15 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !577
  %16 = load ptr, ptr %4, align 8, !dbg !578
  %17 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1024, ptr noundef @.str, ptr noundef %16) #6, !dbg !579
  call void @llvm.dbg.declare(metadata ptr %8, metadata !580, metadata !DIExpression()), !dbg !584
  %18 = load ptr, ptr %6, align 8, !dbg !585
  %19 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !586
  %20 = call ptr @PQexec(ptr noundef %18, ptr noundef %19), !dbg !587
  store ptr %20, ptr %8, align 8, !dbg !584
  %21 = load ptr, ptr %8, align 8, !dbg !588
  %22 = icmp ne ptr %21, null, !dbg !588
  br i1 %22, label %23, label %27, !dbg !590

23:                                               ; preds = %14
  %24 = load ptr, ptr %8, align 8, !dbg !591
  %25 = call i32 @PQresultStatus(ptr noundef %24), !dbg !592
  %26 = icmp ne i32 %25, 2, !dbg !593
  br i1 %26, label %27, label %30, !dbg !594

27:                                               ; preds = %23, %14
  %28 = load ptr, ptr %6, align 8, !dbg !595
  %29 = call ptr @PQerrorMessage(ptr noundef %28), !dbg !597
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %29), !dbg !598
  br label %50, !dbg !599

30:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %9, metadata !600, metadata !DIExpression()), !dbg !602
  store i32 0, ptr %9, align 4, !dbg !602
  store i32 0, ptr %9, align 4, !dbg !603
  br label %31, !dbg !605

31:                                               ; preds = %46, %30
  %32 = load i32, ptr %9, align 4, !dbg !606
  %33 = load ptr, ptr %8, align 8, !dbg !608
  %34 = call i32 @PQntuples(ptr noundef %33), !dbg !609
  %35 = icmp slt i32 %32, %34, !dbg !610
  br i1 %35, label %36, label %49, !dbg !611

36:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %10, metadata !612, metadata !DIExpression()), !dbg !614
  %37 = load ptr, ptr %8, align 8, !dbg !615
  %38 = load i32, ptr %9, align 4, !dbg !616
  %39 = call ptr @PQgetvalue(ptr noundef %37, i32 noundef %38, i32 noundef 0), !dbg !617
  store ptr %39, ptr %10, align 8, !dbg !614
  %40 = load ptr, ptr %10, align 8, !dbg !618
  %41 = icmp ne ptr %40, null, !dbg !618
  br i1 %41, label %42, label %45, !dbg !620

42:                                               ; preds = %36
  %43 = load ptr, ptr %3, align 8, !dbg !621
  %44 = load ptr, ptr %10, align 8, !dbg !623
  call void @add_to_secrets_list(ptr noundef %43, ptr noundef %44), !dbg !624
  br label %45, !dbg !625

45:                                               ; preds = %42, %36
  br label %46, !dbg !626

46:                                               ; preds = %45
  %47 = load i32, ptr %9, align 4, !dbg !627
  %48 = add nsw i32 %47, 1, !dbg !627
  store i32 %48, ptr %9, align 4, !dbg !627
  br label %31, !dbg !628, !llvm.loop !629

49:                                               ; preds = %31
  store i32 0, ptr %5, align 4, !dbg !632
  br label %50

50:                                               ; preds = %49, %27
  %51 = load ptr, ptr %8, align 8, !dbg !633
  %52 = icmp ne ptr %51, null, !dbg !633
  br i1 %52, label %53, label %55, !dbg !635

53:                                               ; preds = %50
  %54 = load ptr, ptr %8, align 8, !dbg !636
  call void @PQclear(ptr noundef %54), !dbg !638
  br label %55, !dbg !639

55:                                               ; preds = %53, %50
  br label %56, !dbg !640

56:                                               ; preds = %55, %2
  %57 = load i32, ptr %5, align 4, !dbg !641
  ret i32 %57, !dbg !642
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_get_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !643 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !644, metadata !DIExpression()), !dbg !645
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !646, metadata !DIExpression()), !dbg !647
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !648, metadata !DIExpression()), !dbg !649
  call void @llvm.dbg.declare(metadata ptr %7, metadata !650, metadata !DIExpression()), !dbg !651
  store i32 -1, ptr %7, align 4, !dbg !651
  call void @llvm.dbg.declare(metadata ptr %8, metadata !652, metadata !DIExpression()), !dbg !653
  %14 = call ptr @get_pqdb_connection(), !dbg !654
  store ptr %14, ptr %8, align 8, !dbg !653
  %15 = load ptr, ptr %8, align 8, !dbg !655
  %16 = icmp ne ptr %15, null, !dbg !655
  br i1 %16, label %17, label %82, !dbg !657

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !658, metadata !DIExpression()), !dbg !660
  %18 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !661
  %19 = load ptr, ptr %4, align 8, !dbg !662
  %20 = load ptr, ptr %5, align 8, !dbg !663
  %21 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 1025, ptr noundef @.str.6, ptr noundef %19, ptr noundef %20) #6, !dbg !664
  call void @llvm.dbg.declare(metadata ptr %10, metadata !665, metadata !DIExpression()), !dbg !666
  %22 = load ptr, ptr %8, align 8, !dbg !667
  %23 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !668
  %24 = call ptr @PQexec(ptr noundef %22, ptr noundef %23), !dbg !669
  store ptr %24, ptr %10, align 8, !dbg !666
  %25 = load ptr, ptr %10, align 8, !dbg !670
  %26 = icmp ne ptr %25, null, !dbg !670
  br i1 %26, label %27, label %35, !dbg !672

27:                                               ; preds = %17
  %28 = load ptr, ptr %10, align 8, !dbg !673
  %29 = call i32 @PQresultStatus(ptr noundef %28), !dbg !674
  %30 = icmp ne i32 %29, 2, !dbg !675
  br i1 %30, label %35, label %31, !dbg !676

31:                                               ; preds = %27
  %32 = load ptr, ptr %10, align 8, !dbg !677
  %33 = call i32 @PQntuples(ptr noundef %32), !dbg !678
  %34 = icmp ne i32 %33, 1, !dbg !679
  br i1 %34, label %35, label %38, !dbg !680

35:                                               ; preds = %31, %27, %17
  %36 = load ptr, ptr %8, align 8, !dbg !681
  %37 = call ptr @PQerrorMessage(ptr noundef %36), !dbg !683
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %37), !dbg !684
  br label %76, !dbg !685

38:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %11, metadata !686, metadata !DIExpression()), !dbg !688
  %39 = load ptr, ptr %10, align 8, !dbg !689
  %40 = call ptr @PQgetvalue(ptr noundef %39, i32 noundef 0, i32 noundef 0), !dbg !690
  store ptr %40, ptr %11, align 8, !dbg !688
  call void @llvm.dbg.declare(metadata ptr %12, metadata !691, metadata !DIExpression()), !dbg !692
  %41 = load ptr, ptr %10, align 8, !dbg !693
  %42 = call i32 @PQgetlength(ptr noundef %41, i32 noundef 0, i32 noundef 0), !dbg !694
  store i32 %42, ptr %12, align 4, !dbg !692
  %43 = load ptr, ptr %11, align 8, !dbg !695
  %44 = icmp ne ptr %43, null, !dbg !695
  br i1 %44, label %45, label %73, !dbg !697

45:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %13, metadata !698, metadata !DIExpression()), !dbg !700
  %46 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !701
  store i64 %46, ptr %13, align 8, !dbg !700
  %47 = load i32, ptr %12, align 4, !dbg !702
  %48 = sext i32 %47 to i64, !dbg !704
  %49 = load i64, ptr %13, align 8, !dbg !705
  %50 = mul i64 %49, 2, !dbg !706
  %51 = icmp ult i64 %48, %50, !dbg !707
  br i1 %51, label %58, label %52, !dbg !708

52:                                               ; preds = %45
  %53 = load ptr, ptr %11, align 8, !dbg !709
  %54 = call i64 @strlen(ptr noundef %53) #7, !dbg !710
  %55 = load i64, ptr %13, align 8, !dbg !711
  %56 = mul i64 %55, 2, !dbg !712
  %57 = icmp ult i64 %54, %56, !dbg !713
  br i1 %57, label %58, label %61, !dbg !714

58:                                               ; preds = %52, %45
  %59 = load ptr, ptr %11, align 8, !dbg !715
  %60 = load ptr, ptr %4, align 8, !dbg !717
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %59, ptr noundef %60), !dbg !718
  br label %72, !dbg !719

61:                                               ; preds = %52
  %62 = load ptr, ptr %11, align 8, !dbg !720
  %63 = load ptr, ptr %6, align 8, !dbg !722
  %64 = load i64, ptr %13, align 8, !dbg !723
  %65 = call i32 @convert_string_key_to_binary(ptr noundef %62, ptr noundef %63, i64 noundef %64), !dbg !724
  %66 = icmp slt i32 %65, 0, !dbg !725
  br i1 %66, label %67, label %70, !dbg !726

67:                                               ; preds = %61
  %68 = load ptr, ptr %11, align 8, !dbg !727
  %69 = load ptr, ptr %4, align 8, !dbg !729
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, ptr noundef %68, ptr noundef %69), !dbg !730
  br label %71, !dbg !731

70:                                               ; preds = %61
  store i32 0, ptr %7, align 4, !dbg !732
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %58
  br label %75, !dbg !734

73:                                               ; preds = %38
  %74 = load ptr, ptr %4, align 8, !dbg !735
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9, ptr noundef %74), !dbg !737
  br label %75

75:                                               ; preds = %73, %72
  br label %76

76:                                               ; preds = %75, %35
  %77 = load ptr, ptr %10, align 8, !dbg !738
  %78 = icmp ne ptr %77, null, !dbg !738
  br i1 %78, label %79, label %81, !dbg !740

79:                                               ; preds = %76
  %80 = load ptr, ptr %10, align 8, !dbg !741
  call void @PQclear(ptr noundef %80), !dbg !742
  br label %81, !dbg !742

81:                                               ; preds = %79, %76
  br label %82, !dbg !743

82:                                               ; preds = %81, %3
  %83 = load i32, ptr %7, align 4, !dbg !744
  ret i32 %83, !dbg !745
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !746 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !747, metadata !DIExpression()), !dbg !748
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !749, metadata !DIExpression()), !dbg !750
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !751, metadata !DIExpression()), !dbg !752
  call void @llvm.dbg.declare(metadata ptr %7, metadata !753, metadata !DIExpression()), !dbg !754
  store i32 -1, ptr %7, align 4, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %8, metadata !755, metadata !DIExpression()), !dbg !756
  call void @llvm.dbg.declare(metadata ptr %9, metadata !757, metadata !DIExpression()), !dbg !758
  %11 = call ptr @get_pqdb_connection(), !dbg !759
  store ptr %11, ptr %9, align 8, !dbg !758
  %12 = load ptr, ptr %9, align 8, !dbg !760
  %13 = icmp ne ptr %12, null, !dbg !760
  br i1 %13, label %14, label %60, !dbg !762

14:                                               ; preds = %3
  %15 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !763
  %16 = load ptr, ptr %5, align 8, !dbg !765
  %17 = load ptr, ptr %4, align 8, !dbg !766
  %18 = load ptr, ptr %6, align 8, !dbg !767
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.10, ptr noundef %16, ptr noundef %17, ptr noundef %18) #6, !dbg !768
  call void @llvm.dbg.declare(metadata ptr %10, metadata !769, metadata !DIExpression()), !dbg !770
  %20 = load ptr, ptr %9, align 8, !dbg !771
  %21 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !772
  %22 = call ptr @PQexec(ptr noundef %20, ptr noundef %21), !dbg !773
  store ptr %22, ptr %10, align 8, !dbg !770
  %23 = load ptr, ptr %10, align 8, !dbg !774
  %24 = icmp ne ptr %23, null, !dbg !774
  br i1 %24, label %25, label %29, !dbg !776

25:                                               ; preds = %14
  %26 = load ptr, ptr %10, align 8, !dbg !777
  %27 = call i32 @PQresultStatus(ptr noundef %26), !dbg !778
  %28 = icmp ne i32 %27, 1, !dbg !779
  br i1 %28, label %29, label %54, !dbg !780

29:                                               ; preds = %25, %14
  %30 = load ptr, ptr %10, align 8, !dbg !781
  %31 = icmp ne ptr %30, null, !dbg !781
  br i1 %31, label %32, label %34, !dbg !784

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 8, !dbg !785
  call void @PQclear(ptr noundef %33), !dbg !787
  br label %34, !dbg !788

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !789
  %36 = load ptr, ptr %6, align 8, !dbg !790
  %37 = load ptr, ptr %4, align 8, !dbg !791
  %38 = load ptr, ptr %5, align 8, !dbg !792
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %35, i64 noundef 1025, ptr noundef @.str.11, ptr noundef %36, ptr noundef %37, ptr noundef %38) #6, !dbg !793
  %40 = load ptr, ptr %9, align 8, !dbg !794
  %41 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !795
  %42 = call ptr @PQexec(ptr noundef %40, ptr noundef %41), !dbg !796
  store ptr %42, ptr %10, align 8, !dbg !797
  %43 = load ptr, ptr %10, align 8, !dbg !798
  %44 = icmp ne ptr %43, null, !dbg !798
  br i1 %44, label %45, label %49, !dbg !800

45:                                               ; preds = %34
  %46 = load ptr, ptr %10, align 8, !dbg !801
  %47 = call i32 @PQresultStatus(ptr noundef %46), !dbg !802
  %48 = icmp ne i32 %47, 1, !dbg !803
  br i1 %48, label %49, label %52, !dbg !804

49:                                               ; preds = %45, %34
  %50 = load ptr, ptr %9, align 8, !dbg !805
  %51 = call ptr @PQerrorMessage(ptr noundef %50), !dbg !807
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.12, ptr noundef %51), !dbg !808
  br label %53, !dbg !809

52:                                               ; preds = %45
  store i32 0, ptr %7, align 4, !dbg !810
  br label %53

53:                                               ; preds = %52, %49
  br label %54, !dbg !812

54:                                               ; preds = %53, %25
  %55 = load ptr, ptr %10, align 8, !dbg !813
  %56 = icmp ne ptr %55, null, !dbg !813
  br i1 %56, label %57, label %59, !dbg !815

57:                                               ; preds = %54
  %58 = load ptr, ptr %10, align 8, !dbg !816
  call void @PQclear(ptr noundef %58), !dbg !818
  br label %59, !dbg !819

59:                                               ; preds = %57, %54
  br label %60, !dbg !820

60:                                               ; preds = %59, %3
  %61 = load i32, ptr %7, align 4, !dbg !821
  ret i32 %61, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_del_user(ptr noundef %0, ptr noundef %1) #0 !dbg !823 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !824, metadata !DIExpression()), !dbg !825
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !826, metadata !DIExpression()), !dbg !827
  call void @llvm.dbg.declare(metadata ptr %5, metadata !828, metadata !DIExpression()), !dbg !829
  store i32 -1, ptr %5, align 4, !dbg !829
  call void @llvm.dbg.declare(metadata ptr %6, metadata !830, metadata !DIExpression()), !dbg !831
  call void @llvm.dbg.declare(metadata ptr %7, metadata !832, metadata !DIExpression()), !dbg !833
  %9 = call ptr @get_pqdb_connection(), !dbg !834
  store ptr %9, ptr %7, align 8, !dbg !833
  %10 = load ptr, ptr %7, align 8, !dbg !835
  %11 = icmp ne ptr %10, null, !dbg !835
  br i1 %11, label %12, label %25, !dbg !837

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !838
  %14 = load ptr, ptr %3, align 8, !dbg !840
  %15 = load ptr, ptr %4, align 8, !dbg !841
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.13, ptr noundef %14, ptr noundef %15) #6, !dbg !842
  call void @llvm.dbg.declare(metadata ptr %8, metadata !843, metadata !DIExpression()), !dbg !844
  %17 = load ptr, ptr %7, align 8, !dbg !845
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !846
  %19 = call ptr @PQexec(ptr noundef %17, ptr noundef %18), !dbg !847
  store ptr %19, ptr %8, align 8, !dbg !844
  %20 = load ptr, ptr %8, align 8, !dbg !848
  %21 = icmp ne ptr %20, null, !dbg !848
  br i1 %21, label %22, label %24, !dbg !850

22:                                               ; preds = %12
  %23 = load ptr, ptr %8, align 8, !dbg !851
  call void @PQclear(ptr noundef %23), !dbg !853
  store i32 0, ptr %5, align 4, !dbg !854
  br label %24, !dbg !855

24:                                               ; preds = %22, %12
  br label %25, !dbg !856

25:                                               ; preds = %24, %2
  %26 = load i32, ptr %5, align 4, !dbg !857
  ret i32 %26, !dbg !858
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_users(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !859 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !860, metadata !DIExpression()), !dbg !861
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !862, metadata !DIExpression()), !dbg !863
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !864, metadata !DIExpression()), !dbg !865
  call void @llvm.dbg.declare(metadata ptr %7, metadata !866, metadata !DIExpression()), !dbg !867
  store i32 -1, ptr %7, align 4, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %8, metadata !868, metadata !DIExpression()), !dbg !869
  call void @llvm.dbg.declare(metadata ptr %9, metadata !870, metadata !DIExpression()), !dbg !872
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !872
  %15 = load ptr, ptr %4, align 8, !dbg !873
  %16 = icmp ne ptr %15, null, !dbg !873
  br i1 %16, label %19, label %17, !dbg !875

17:                                               ; preds = %3
  %18 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !876
  store ptr %18, ptr %4, align 8, !dbg !877
  br label %19, !dbg !878

19:                                               ; preds = %17, %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !879, metadata !DIExpression()), !dbg !880
  %20 = call ptr @get_pqdb_connection(), !dbg !881
  store ptr %20, ptr %10, align 8, !dbg !880
  %21 = load ptr, ptr %10, align 8, !dbg !882
  %22 = icmp ne ptr %21, null, !dbg !882
  br i1 %22, label %23, label %107, !dbg !884

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8, !dbg !885
  %25 = getelementptr inbounds i8, ptr %24, i64 0, !dbg !885
  %26 = load i8, ptr %25, align 1, !dbg !885
  %27 = icmp ne i8 %26, 0, !dbg !885
  br i1 %27, label %28, label %32, !dbg !888

28:                                               ; preds = %23
  %29 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !889
  %30 = load ptr, ptr %4, align 8, !dbg !891
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %29, i64 noundef 1025, ptr noundef @.str.14, ptr noundef %30) #6, !dbg !892
  br label %35, !dbg !893

32:                                               ; preds = %23
  %33 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !894
  %34 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %33, i64 noundef 1025, ptr noundef @.str.15) #6, !dbg !896
  br label %35

35:                                               ; preds = %32, %28
  call void @llvm.dbg.declare(metadata ptr %11, metadata !897, metadata !DIExpression()), !dbg !898
  %36 = load ptr, ptr %10, align 8, !dbg !899
  %37 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !900
  %38 = call ptr @PQexec(ptr noundef %36, ptr noundef %37), !dbg !901
  store ptr %38, ptr %11, align 8, !dbg !898
  %39 = load ptr, ptr %11, align 8, !dbg !902
  %40 = icmp ne ptr %39, null, !dbg !902
  br i1 %40, label %41, label %45, !dbg !904

41:                                               ; preds = %35
  %42 = load ptr, ptr %11, align 8, !dbg !905
  %43 = call i32 @PQresultStatus(ptr noundef %42), !dbg !906
  %44 = icmp ne i32 %43, 2, !dbg !907
  br i1 %44, label %45, label %48, !dbg !908

45:                                               ; preds = %41, %35
  %46 = load ptr, ptr %10, align 8, !dbg !909
  %47 = call ptr @PQerrorMessage(ptr noundef %46), !dbg !911
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %47), !dbg !912
  br label %101, !dbg !913

48:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %12, metadata !914, metadata !DIExpression()), !dbg !916
  store i32 0, ptr %12, align 4, !dbg !916
  store i32 0, ptr %12, align 4, !dbg !917
  br label %49, !dbg !919

49:                                               ; preds = %97, %48
  %50 = load i32, ptr %12, align 4, !dbg !920
  %51 = load ptr, ptr %11, align 8, !dbg !922
  %52 = call i32 @PQntuples(ptr noundef %51), !dbg !923
  %53 = icmp slt i32 %50, %52, !dbg !924
  br i1 %53, label %54, label %100, !dbg !925

54:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %13, metadata !926, metadata !DIExpression()), !dbg !928
  %55 = load ptr, ptr %11, align 8, !dbg !929
  %56 = load i32, ptr %12, align 4, !dbg !930
  %57 = call ptr @PQgetvalue(ptr noundef %55, i32 noundef %56, i32 noundef 0), !dbg !931
  store ptr %57, ptr %13, align 8, !dbg !928
  %58 = load ptr, ptr %13, align 8, !dbg !932
  %59 = icmp ne ptr %58, null, !dbg !932
  br i1 %59, label %60, label %96, !dbg !934

60:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %14, metadata !935, metadata !DIExpression()), !dbg !937
  %61 = load ptr, ptr %11, align 8, !dbg !938
  %62 = load i32, ptr %12, align 4, !dbg !939
  %63 = call ptr @PQgetvalue(ptr noundef %61, i32 noundef %62, i32 noundef 1), !dbg !940
  store ptr %63, ptr %14, align 8, !dbg !937
  %64 = load ptr, ptr %14, align 8, !dbg !941
  %65 = icmp ne ptr %64, null, !dbg !941
  br i1 %65, label %66, label %95, !dbg !943

66:                                               ; preds = %60
  %67 = load ptr, ptr %5, align 8, !dbg !944
  %68 = icmp ne ptr %67, null, !dbg !944
  br i1 %68, label %69, label %90, !dbg !947

69:                                               ; preds = %66
  %70 = load ptr, ptr %5, align 8, !dbg !948
  %71 = load ptr, ptr %13, align 8, !dbg !950
  call void @add_to_secrets_list(ptr noundef %70, ptr noundef %71), !dbg !951
  %72 = load ptr, ptr %6, align 8, !dbg !952
  %73 = icmp ne ptr %72, null, !dbg !952
  br i1 %73, label %74, label %89, !dbg !954

74:                                               ; preds = %69
  %75 = load ptr, ptr %14, align 8, !dbg !955
  %76 = icmp ne ptr %75, null, !dbg !955
  br i1 %76, label %77, label %85, !dbg !958

77:                                               ; preds = %74
  %78 = load ptr, ptr %14, align 8, !dbg !959
  %79 = load i8, ptr %78, align 1, !dbg !960
  %80 = sext i8 %79 to i32, !dbg !960
  %81 = icmp ne i32 %80, 0, !dbg !960
  br i1 %81, label %82, label %85, !dbg !961

82:                                               ; preds = %77
  %83 = load ptr, ptr %6, align 8, !dbg !962
  %84 = load ptr, ptr %14, align 8, !dbg !964
  call void @add_to_secrets_list(ptr noundef %83, ptr noundef %84), !dbg !965
  br label %88, !dbg !966

85:                                               ; preds = %77, %74
  %86 = load ptr, ptr %6, align 8, !dbg !967
  %87 = load ptr, ptr %4, align 8, !dbg !969
  call void @add_to_secrets_list(ptr noundef %86, ptr noundef %87), !dbg !970
  br label %88

88:                                               ; preds = %85, %82
  br label %89, !dbg !971

89:                                               ; preds = %88, %69
  br label %94, !dbg !972

90:                                               ; preds = %66
  %91 = load ptr, ptr %13, align 8, !dbg !973
  %92 = load ptr, ptr %14, align 8, !dbg !975
  %93 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %91, ptr noundef %92), !dbg !976
  br label %94

94:                                               ; preds = %90, %89
  br label %95, !dbg !977

95:                                               ; preds = %94, %60
  br label %96, !dbg !978

96:                                               ; preds = %95, %54
  br label %97, !dbg !979

97:                                               ; preds = %96
  %98 = load i32, ptr %12, align 4, !dbg !980
  %99 = add nsw i32 %98, 1, !dbg !980
  store i32 %99, ptr %12, align 4, !dbg !980
  br label %49, !dbg !981, !llvm.loop !982

100:                                              ; preds = %49
  store i32 0, ptr %7, align 4, !dbg !984
  br label %101

101:                                              ; preds = %100, %45
  %102 = load ptr, ptr %11, align 8, !dbg !985
  %103 = icmp ne ptr %102, null, !dbg !985
  br i1 %103, label %104, label %106, !dbg !987

104:                                              ; preds = %101
  %105 = load ptr, ptr %11, align 8, !dbg !988
  call void @PQclear(ptr noundef %105), !dbg !990
  br label %106, !dbg !991

106:                                              ; preds = %104, %101
  br label %107, !dbg !992

107:                                              ; preds = %106, %19
  %108 = load i32, ptr %7, align 4, !dbg !993
  ret i32 %108, !dbg !994
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_secrets(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !995 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !996, metadata !DIExpression()), !dbg !997
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !998, metadata !DIExpression()), !dbg !999
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1000, metadata !DIExpression()), !dbg !1001
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1002, metadata !DIExpression()), !dbg !1003
  store i32 -1, ptr %7, align 4, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1004, metadata !DIExpression()), !dbg !1005
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1005
  %15 = load ptr, ptr %4, align 8, !dbg !1006
  %16 = icmp ne ptr %15, null, !dbg !1006
  br i1 %16, label %19, label %17, !dbg !1008

17:                                               ; preds = %3
  %18 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1009
  store ptr %18, ptr %4, align 8, !dbg !1010
  br label %19, !dbg !1011

19:                                               ; preds = %17, %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1012, metadata !DIExpression()), !dbg !1013
  %20 = load ptr, ptr %4, align 8, !dbg !1014
  %21 = getelementptr inbounds i8, ptr %20, i64 0, !dbg !1014
  %22 = load i8, ptr %21, align 1, !dbg !1014
  %23 = icmp ne i8 %22, 0, !dbg !1014
  br i1 %23, label %24, label %28, !dbg !1016

24:                                               ; preds = %19
  %25 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1017
  %26 = load ptr, ptr %4, align 8, !dbg !1019
  %27 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.17, ptr noundef %26) #6, !dbg !1020
  br label %31, !dbg !1021

28:                                               ; preds = %19
  %29 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1022
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %29, i64 noundef 1025, ptr noundef @.str.18) #6, !dbg !1024
  br label %31

31:                                               ; preds = %28, %24
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1025
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1026, metadata !DIExpression()), !dbg !1027
  %32 = call ptr @get_pqdb_connection(), !dbg !1028
  store ptr %32, ptr %10, align 8, !dbg !1027
  %33 = load ptr, ptr %10, align 8, !dbg !1029
  %34 = icmp ne ptr %33, null, !dbg !1029
  br i1 %34, label %35, label %103, !dbg !1031

35:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1032, metadata !DIExpression()), !dbg !1034
  %36 = load ptr, ptr %10, align 8, !dbg !1035
  %37 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !1036
  %38 = call ptr @PQexec(ptr noundef %36, ptr noundef %37), !dbg !1037
  store ptr %38, ptr %11, align 8, !dbg !1034
  %39 = load ptr, ptr %11, align 8, !dbg !1038
  %40 = icmp ne ptr %39, null, !dbg !1038
  br i1 %40, label %41, label %45, !dbg !1040

41:                                               ; preds = %35
  %42 = load ptr, ptr %11, align 8, !dbg !1041
  %43 = call i32 @PQresultStatus(ptr noundef %42), !dbg !1042
  %44 = icmp ne i32 %43, 2, !dbg !1043
  br i1 %44, label %45, label %48, !dbg !1044

45:                                               ; preds = %41, %35
  %46 = load ptr, ptr %10, align 8, !dbg !1045
  %47 = call ptr @PQerrorMessage(ptr noundef %46), !dbg !1047
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %47), !dbg !1048
  br label %97, !dbg !1049

48:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1050, metadata !DIExpression()), !dbg !1052
  store i32 0, ptr %12, align 4, !dbg !1052
  store i32 0, ptr %12, align 4, !dbg !1053
  br label %49, !dbg !1055

49:                                               ; preds = %93, %48
  %50 = load i32, ptr %12, align 4, !dbg !1056
  %51 = load ptr, ptr %11, align 8, !dbg !1058
  %52 = call i32 @PQntuples(ptr noundef %51), !dbg !1059
  %53 = icmp slt i32 %50, %52, !dbg !1060
  br i1 %53, label %54, label %96, !dbg !1061

54:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1062, metadata !DIExpression()), !dbg !1064
  %55 = load ptr, ptr %11, align 8, !dbg !1065
  %56 = load i32, ptr %12, align 4, !dbg !1066
  %57 = call ptr @PQgetvalue(ptr noundef %55, i32 noundef %56, i32 noundef 0), !dbg !1067
  store ptr %57, ptr %13, align 8, !dbg !1064
  %58 = load ptr, ptr %13, align 8, !dbg !1068
  %59 = icmp ne ptr %58, null, !dbg !1068
  br i1 %59, label %60, label %92, !dbg !1070

60:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1071, metadata !DIExpression()), !dbg !1073
  %61 = load ptr, ptr %11, align 8, !dbg !1074
  %62 = load i32, ptr %12, align 4, !dbg !1075
  %63 = call ptr @PQgetvalue(ptr noundef %61, i32 noundef %62, i32 noundef 1), !dbg !1076
  store ptr %63, ptr %14, align 8, !dbg !1073
  %64 = load ptr, ptr %5, align 8, !dbg !1077
  %65 = icmp ne ptr %64, null, !dbg !1077
  br i1 %65, label %66, label %87, !dbg !1079

66:                                               ; preds = %60
  %67 = load ptr, ptr %5, align 8, !dbg !1080
  %68 = load ptr, ptr %13, align 8, !dbg !1082
  call void @add_to_secrets_list(ptr noundef %67, ptr noundef %68), !dbg !1083
  %69 = load ptr, ptr %6, align 8, !dbg !1084
  %70 = icmp ne ptr %69, null, !dbg !1084
  br i1 %70, label %71, label %86, !dbg !1086

71:                                               ; preds = %66
  %72 = load ptr, ptr %14, align 8, !dbg !1087
  %73 = icmp ne ptr %72, null, !dbg !1087
  br i1 %73, label %74, label %82, !dbg !1090

74:                                               ; preds = %71
  %75 = load ptr, ptr %14, align 8, !dbg !1091
  %76 = load i8, ptr %75, align 1, !dbg !1092
  %77 = sext i8 %76 to i32, !dbg !1092
  %78 = icmp ne i32 %77, 0, !dbg !1092
  br i1 %78, label %79, label %82, !dbg !1093

79:                                               ; preds = %74
  %80 = load ptr, ptr %6, align 8, !dbg !1094
  %81 = load ptr, ptr %14, align 8, !dbg !1096
  call void @add_to_secrets_list(ptr noundef %80, ptr noundef %81), !dbg !1097
  br label %85, !dbg !1098

82:                                               ; preds = %74, %71
  %83 = load ptr, ptr %6, align 8, !dbg !1099
  %84 = load ptr, ptr %4, align 8, !dbg !1101
  call void @add_to_secrets_list(ptr noundef %83, ptr noundef %84), !dbg !1102
  br label %85

85:                                               ; preds = %82, %79
  br label %86, !dbg !1103

86:                                               ; preds = %85, %66
  br label %91, !dbg !1104

87:                                               ; preds = %60
  %88 = load ptr, ptr %13, align 8, !dbg !1105
  %89 = load ptr, ptr %14, align 8, !dbg !1107
  %90 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %88, ptr noundef %89), !dbg !1108
  br label %91

91:                                               ; preds = %87, %86
  br label %92, !dbg !1109

92:                                               ; preds = %91, %54
  br label %93, !dbg !1110

93:                                               ; preds = %92
  %94 = load i32, ptr %12, align 4, !dbg !1111
  %95 = add nsw i32 %94, 1, !dbg !1111
  store i32 %95, ptr %12, align 4, !dbg !1111
  br label %49, !dbg !1112, !llvm.loop !1113

96:                                               ; preds = %49
  store i32 0, ptr %7, align 4, !dbg !1115
  br label %97

97:                                               ; preds = %96, %45
  %98 = load ptr, ptr %11, align 8, !dbg !1116
  %99 = icmp ne ptr %98, null, !dbg !1116
  br i1 %99, label %100, label %102, !dbg !1118

100:                                              ; preds = %97
  %101 = load ptr, ptr %11, align 8, !dbg !1119
  call void @PQclear(ptr noundef %101), !dbg !1121
  br label %102, !dbg !1122

102:                                              ; preds = %100, %97
  br label %103, !dbg !1123

103:                                              ; preds = %102, %31
  %104 = load i32, ptr %7, align 4, !dbg !1124
  ret i32 %104, !dbg !1125
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1126 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1127, metadata !DIExpression()), !dbg !1128
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1131, metadata !DIExpression()), !dbg !1132
  store i32 -1, ptr %5, align 4, !dbg !1132
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1134, metadata !DIExpression()), !dbg !1135
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1136, metadata !DIExpression()), !dbg !1137
  %9 = call ptr @get_pqdb_connection(), !dbg !1138
  store ptr %9, ptr %7, align 8, !dbg !1137
  %10 = load ptr, ptr %7, align 8, !dbg !1139
  %11 = icmp ne ptr %10, null, !dbg !1139
  br i1 %11, label %12, label %39, !dbg !1141

12:                                               ; preds = %2
  %13 = load ptr, ptr %3, align 8, !dbg !1142
  %14 = icmp ne ptr %13, null, !dbg !1142
  br i1 %14, label %15, label %21, !dbg !1145

15:                                               ; preds = %12
  %16 = load ptr, ptr %3, align 8, !dbg !1146
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !1146
  %18 = load i8, ptr %17, align 1, !dbg !1146
  %19 = zext i8 %18 to i32, !dbg !1146
  %20 = icmp eq i32 %19, 0, !dbg !1147
  br i1 %20, label %21, label %25, !dbg !1148

21:                                               ; preds = %15, %12
  %22 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1149
  %23 = load ptr, ptr %4, align 8, !dbg !1150
  %24 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %22, i64 noundef 1025, ptr noundef @.str.19, ptr noundef %23) #6, !dbg !1151
  br label %30, !dbg !1151

25:                                               ; preds = %15
  %26 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1152
  %27 = load ptr, ptr %3, align 8, !dbg !1153
  %28 = load ptr, ptr %4, align 8, !dbg !1154
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.20, ptr noundef %27, ptr noundef %28) #6, !dbg !1155
  br label %30

30:                                               ; preds = %25, %21
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1156, metadata !DIExpression()), !dbg !1157
  %31 = load ptr, ptr %7, align 8, !dbg !1158
  %32 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1159
  %33 = call ptr @PQexec(ptr noundef %31, ptr noundef %32), !dbg !1160
  store ptr %33, ptr %8, align 8, !dbg !1157
  %34 = load ptr, ptr %8, align 8, !dbg !1161
  %35 = icmp ne ptr %34, null, !dbg !1161
  br i1 %35, label %36, label %38, !dbg !1163

36:                                               ; preds = %30
  %37 = load ptr, ptr %8, align 8, !dbg !1164
  call void @PQclear(ptr noundef %37), !dbg !1166
  store i32 0, ptr %5, align 4, !dbg !1167
  br label %38, !dbg !1168

38:                                               ; preds = %36, %30
  br label %39, !dbg !1169

39:                                               ; preds = %38, %2
  %40 = load i32, ptr %5, align 4, !dbg !1170
  ret i32 %40, !dbg !1171
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1172 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1173, metadata !DIExpression()), !dbg !1174
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1175, metadata !DIExpression()), !dbg !1176
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1177, metadata !DIExpression()), !dbg !1178
  store i32 -1, ptr %5, align 4, !dbg !1178
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1179
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1182, metadata !DIExpression()), !dbg !1183
  %9 = call ptr @get_pqdb_connection(), !dbg !1184
  store ptr %9, ptr %7, align 8, !dbg !1183
  %10 = load ptr, ptr %7, align 8, !dbg !1185
  %11 = icmp ne ptr %10, null, !dbg !1185
  br i1 %11, label %12, label %36, !dbg !1187

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1188
  %14 = load ptr, ptr %4, align 8, !dbg !1190
  %15 = load ptr, ptr %3, align 8, !dbg !1191
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.21, ptr noundef %14, ptr noundef %15) #6, !dbg !1192
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1193, metadata !DIExpression()), !dbg !1194
  %17 = load ptr, ptr %7, align 8, !dbg !1195
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1196
  %19 = call ptr @PQexec(ptr noundef %17, ptr noundef %18), !dbg !1197
  store ptr %19, ptr %8, align 8, !dbg !1194
  %20 = load ptr, ptr %8, align 8, !dbg !1198
  %21 = icmp ne ptr %20, null, !dbg !1198
  br i1 %21, label %22, label %26, !dbg !1200

22:                                               ; preds = %12
  %23 = load ptr, ptr %8, align 8, !dbg !1201
  %24 = call i32 @PQresultStatus(ptr noundef %23), !dbg !1202
  %25 = icmp ne i32 %24, 1, !dbg !1203
  br i1 %25, label %26, label %29, !dbg !1204

26:                                               ; preds = %22, %12
  %27 = load ptr, ptr %7, align 8, !dbg !1205
  %28 = call ptr @PQerrorMessage(ptr noundef %27), !dbg !1207
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.22, ptr noundef %28), !dbg !1208
  br label %30, !dbg !1209

29:                                               ; preds = %22
  store i32 0, ptr %5, align 4, !dbg !1210
  br label %30

30:                                               ; preds = %29, %26
  %31 = load ptr, ptr %8, align 8, !dbg !1212
  %32 = icmp ne ptr %31, null, !dbg !1212
  br i1 %32, label %33, label %35, !dbg !1214

33:                                               ; preds = %30
  %34 = load ptr, ptr %8, align 8, !dbg !1215
  call void @PQclear(ptr noundef %34), !dbg !1217
  br label %35, !dbg !1218

35:                                               ; preds = %33, %30
  br label %36, !dbg !1219

36:                                               ; preds = %35, %2
  %37 = load i32, ptr %5, align 4, !dbg !1220
  ret i32 %37, !dbg !1221
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !1222 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1223, metadata !DIExpression()), !dbg !1224
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1226
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1227, metadata !DIExpression()), !dbg !1228
  store i32 -1, ptr %5, align 4, !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1229, metadata !DIExpression()), !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1231, metadata !DIExpression()), !dbg !1232
  %9 = call ptr @get_pqdb_connection(), !dbg !1233
  store ptr %9, ptr %7, align 8, !dbg !1232
  %10 = load ptr, ptr %7, align 8, !dbg !1234
  %11 = icmp ne ptr %10, null, !dbg !1234
  br i1 %11, label %12, label %36, !dbg !1236

12:                                               ; preds = %2
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1237
  %14 = load ptr, ptr %3, align 8, !dbg !1239
  %15 = load ptr, ptr %4, align 8, !dbg !1240
  %16 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.23, ptr noundef %14, ptr noundef %15) #6, !dbg !1241
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1242, metadata !DIExpression()), !dbg !1243
  %17 = load ptr, ptr %7, align 8, !dbg !1244
  %18 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !1245
  %19 = call ptr @PQexec(ptr noundef %17, ptr noundef %18), !dbg !1246
  store ptr %19, ptr %8, align 8, !dbg !1243
  %20 = load ptr, ptr %8, align 8, !dbg !1247
  %21 = icmp ne ptr %20, null, !dbg !1247
  br i1 %21, label %22, label %26, !dbg !1249

22:                                               ; preds = %12
  %23 = load ptr, ptr %8, align 8, !dbg !1250
  %24 = call i32 @PQresultStatus(ptr noundef %23), !dbg !1251
  %25 = icmp ne i32 %24, 1, !dbg !1252
  br i1 %25, label %26, label %29, !dbg !1253

26:                                               ; preds = %22, %12
  %27 = load ptr, ptr %7, align 8, !dbg !1254
  %28 = call ptr @PQerrorMessage(ptr noundef %27), !dbg !1256
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.24, ptr noundef %28), !dbg !1257
  br label %30, !dbg !1258

29:                                               ; preds = %22
  store i32 0, ptr %5, align 4, !dbg !1259
  br label %30

30:                                               ; preds = %29, %26
  %31 = load ptr, ptr %8, align 8, !dbg !1261
  %32 = icmp ne ptr %31, null, !dbg !1261
  br i1 %32, label %33, label %35, !dbg !1263

33:                                               ; preds = %30
  %34 = load ptr, ptr %8, align 8, !dbg !1264
  call void @PQclear(ptr noundef %34), !dbg !1266
  br label %35, !dbg !1267

35:                                               ; preds = %33, %30
  br label %36, !dbg !1268

36:                                               ; preds = %35, %2
  %37 = load i32, ptr %5, align 4, !dbg !1269
  ret i32 %37, !dbg !1270
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_del_origin(ptr noundef %0) #0 !dbg !1271 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1272, metadata !DIExpression()), !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1274, metadata !DIExpression()), !dbg !1275
  store i32 -1, ptr %3, align 4, !dbg !1275
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1276, metadata !DIExpression()), !dbg !1277
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1278, metadata !DIExpression()), !dbg !1279
  %7 = call ptr @get_pqdb_connection(), !dbg !1280
  store ptr %7, ptr %5, align 8, !dbg !1279
  %8 = load ptr, ptr %5, align 8, !dbg !1281
  %9 = icmp ne ptr %8, null, !dbg !1281
  br i1 %9, label %10, label %33, !dbg !1283

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1284
  %12 = load ptr, ptr %2, align 8, !dbg !1286
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.25, ptr noundef %12) #6, !dbg !1287
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1288, metadata !DIExpression()), !dbg !1289
  %14 = load ptr, ptr %5, align 8, !dbg !1290
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1291
  %16 = call ptr @PQexec(ptr noundef %14, ptr noundef %15), !dbg !1292
  store ptr %16, ptr %6, align 8, !dbg !1289
  %17 = load ptr, ptr %6, align 8, !dbg !1293
  %18 = icmp ne ptr %17, null, !dbg !1293
  br i1 %18, label %19, label %23, !dbg !1295

19:                                               ; preds = %10
  %20 = load ptr, ptr %6, align 8, !dbg !1296
  %21 = call i32 @PQresultStatus(ptr noundef %20), !dbg !1297
  %22 = icmp ne i32 %21, 1, !dbg !1298
  br i1 %22, label %23, label %26, !dbg !1299

23:                                               ; preds = %19, %10
  %24 = load ptr, ptr %5, align 8, !dbg !1300
  %25 = call ptr @PQerrorMessage(ptr noundef %24), !dbg !1302
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.26, ptr noundef %25), !dbg !1303
  br label %27, !dbg !1304

26:                                               ; preds = %19
  store i32 0, ptr %3, align 4, !dbg !1305
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr %6, align 8, !dbg !1307
  %29 = icmp ne ptr %28, null, !dbg !1307
  br i1 %29, label %30, label %32, !dbg !1309

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 8, !dbg !1310
  call void @PQclear(ptr noundef %31), !dbg !1312
  br label %32, !dbg !1313

32:                                               ; preds = %30, %27
  br label %33, !dbg !1314

33:                                               ; preds = %32, %1
  %34 = load i32, ptr %3, align 4, !dbg !1315
  ret i32 %34, !dbg !1316
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_origins(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1317 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca [1025 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1318, metadata !DIExpression()), !dbg !1319
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1320, metadata !DIExpression()), !dbg !1321
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1324, metadata !DIExpression()), !dbg !1325
  store i32 -1, ptr %7, align 4, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1327
  %15 = load ptr, ptr %4, align 8, !dbg !1328
  %16 = icmp ne ptr %15, null, !dbg !1328
  br i1 %16, label %19, label %17, !dbg !1330

17:                                               ; preds = %3
  %18 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1331
  store ptr %18, ptr %4, align 8, !dbg !1332
  br label %19, !dbg !1333

19:                                               ; preds = %17, %3
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1334
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1335, metadata !DIExpression()), !dbg !1336
  %20 = call ptr @get_pqdb_connection(), !dbg !1337
  store ptr %20, ptr %9, align 8, !dbg !1336
  %21 = load ptr, ptr %9, align 8, !dbg !1338
  %22 = icmp ne ptr %21, null, !dbg !1338
  br i1 %22, label %23, label %111, !dbg !1340

23:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1341, metadata !DIExpression()), !dbg !1343
  %24 = load ptr, ptr %4, align 8, !dbg !1344
  %25 = icmp ne ptr %24, null, !dbg !1344
  br i1 %25, label %26, label %36, !dbg !1346

26:                                               ; preds = %23
  %27 = load ptr, ptr %4, align 8, !dbg !1347
  %28 = getelementptr inbounds i8, ptr %27, i64 0, !dbg !1347
  %29 = load i8, ptr %28, align 1, !dbg !1347
  %30 = zext i8 %29 to i32, !dbg !1347
  %31 = icmp ne i32 %30, 0, !dbg !1347
  br i1 %31, label %32, label %36, !dbg !1348

32:                                               ; preds = %26
  %33 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1349
  %34 = load ptr, ptr %4, align 8, !dbg !1351
  %35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %33, i64 noundef 1025, ptr noundef @.str.27, ptr noundef %34) #6, !dbg !1352
  br label %39, !dbg !1353

36:                                               ; preds = %26, %23
  %37 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1354
  %38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %37, i64 noundef 1025, ptr noundef @.str.28) #6, !dbg !1356
  br label %39

39:                                               ; preds = %36, %32
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1357, metadata !DIExpression()), !dbg !1358
  %40 = load ptr, ptr %9, align 8, !dbg !1359
  %41 = getelementptr inbounds [1025 x i8], ptr %10, i64 0, i64 0, !dbg !1360
  %42 = call ptr @PQexec(ptr noundef %40, ptr noundef %41), !dbg !1361
  store ptr %42, ptr %11, align 8, !dbg !1358
  %43 = load ptr, ptr %11, align 8, !dbg !1362
  %44 = icmp ne ptr %43, null, !dbg !1362
  br i1 %44, label %45, label %49, !dbg !1364

45:                                               ; preds = %39
  %46 = load ptr, ptr %11, align 8, !dbg !1365
  %47 = call i32 @PQresultStatus(ptr noundef %46), !dbg !1366
  %48 = icmp ne i32 %47, 2, !dbg !1367
  br i1 %48, label %49, label %52, !dbg !1368

49:                                               ; preds = %45, %39
  %50 = load ptr, ptr %9, align 8, !dbg !1369
  %51 = call ptr @PQerrorMessage(ptr noundef %50), !dbg !1371
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %51), !dbg !1372
  br label %105, !dbg !1373

52:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1374, metadata !DIExpression()), !dbg !1376
  store i32 0, ptr %12, align 4, !dbg !1376
  store i32 0, ptr %12, align 4, !dbg !1377
  br label %53, !dbg !1379

53:                                               ; preds = %101, %52
  %54 = load i32, ptr %12, align 4, !dbg !1380
  %55 = load ptr, ptr %11, align 8, !dbg !1382
  %56 = call i32 @PQntuples(ptr noundef %55), !dbg !1383
  %57 = icmp slt i32 %54, %56, !dbg !1384
  br i1 %57, label %58, label %104, !dbg !1385

58:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1386, metadata !DIExpression()), !dbg !1388
  %59 = load ptr, ptr %11, align 8, !dbg !1389
  %60 = load i32, ptr %12, align 4, !dbg !1390
  %61 = call ptr @PQgetvalue(ptr noundef %59, i32 noundef %60, i32 noundef 0), !dbg !1391
  store ptr %61, ptr %13, align 8, !dbg !1388
  %62 = load ptr, ptr %13, align 8, !dbg !1392
  %63 = icmp ne ptr %62, null, !dbg !1392
  br i1 %63, label %64, label %100, !dbg !1394

64:                                               ; preds = %58
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1395, metadata !DIExpression()), !dbg !1397
  %65 = load ptr, ptr %11, align 8, !dbg !1398
  %66 = load i32, ptr %12, align 4, !dbg !1399
  %67 = call ptr @PQgetvalue(ptr noundef %65, i32 noundef %66, i32 noundef 1), !dbg !1400
  store ptr %67, ptr %14, align 8, !dbg !1397
  %68 = load ptr, ptr %14, align 8, !dbg !1401
  %69 = icmp ne ptr %68, null, !dbg !1401
  br i1 %69, label %70, label %99, !dbg !1403

70:                                               ; preds = %64
  %71 = load ptr, ptr %5, align 8, !dbg !1404
  %72 = icmp ne ptr %71, null, !dbg !1404
  br i1 %72, label %73, label %94, !dbg !1407

73:                                               ; preds = %70
  %74 = load ptr, ptr %5, align 8, !dbg !1408
  %75 = load ptr, ptr %13, align 8, !dbg !1410
  call void @add_to_secrets_list(ptr noundef %74, ptr noundef %75), !dbg !1411
  %76 = load ptr, ptr %6, align 8, !dbg !1412
  %77 = icmp ne ptr %76, null, !dbg !1412
  br i1 %77, label %78, label %93, !dbg !1414

78:                                               ; preds = %73
  %79 = load ptr, ptr %14, align 8, !dbg !1415
  %80 = icmp ne ptr %79, null, !dbg !1415
  br i1 %80, label %81, label %89, !dbg !1418

81:                                               ; preds = %78
  %82 = load ptr, ptr %14, align 8, !dbg !1419
  %83 = load i8, ptr %82, align 1, !dbg !1420
  %84 = sext i8 %83 to i32, !dbg !1420
  %85 = icmp ne i32 %84, 0, !dbg !1420
  br i1 %85, label %86, label %89, !dbg !1421

86:                                               ; preds = %81
  %87 = load ptr, ptr %6, align 8, !dbg !1422
  %88 = load ptr, ptr %14, align 8, !dbg !1424
  call void @add_to_secrets_list(ptr noundef %87, ptr noundef %88), !dbg !1425
  br label %92, !dbg !1426

89:                                               ; preds = %81, %78
  %90 = load ptr, ptr %6, align 8, !dbg !1427
  %91 = load ptr, ptr %4, align 8, !dbg !1429
  call void @add_to_secrets_list(ptr noundef %90, ptr noundef %91), !dbg !1430
  br label %92

92:                                               ; preds = %89, %86
  br label %93, !dbg !1431

93:                                               ; preds = %92, %73
  br label %98, !dbg !1432

94:                                               ; preds = %70
  %95 = load ptr, ptr %13, align 8, !dbg !1433
  %96 = load ptr, ptr %14, align 8, !dbg !1435
  %97 = call i32 (ptr, ...) @printf(ptr noundef @.str.29, ptr noundef %95, ptr noundef %96), !dbg !1436
  br label %98

98:                                               ; preds = %94, %93
  br label %99, !dbg !1437

99:                                               ; preds = %98, %64
  br label %100, !dbg !1438

100:                                              ; preds = %99, %58
  br label %101, !dbg !1439

101:                                              ; preds = %100
  %102 = load i32, ptr %12, align 4, !dbg !1440
  %103 = add nsw i32 %102, 1, !dbg !1440
  store i32 %103, ptr %12, align 4, !dbg !1440
  br label %53, !dbg !1441, !llvm.loop !1442

104:                                              ; preds = %53
  store i32 0, ptr %7, align 4, !dbg !1444
  br label %105

105:                                              ; preds = %104, %49
  %106 = load ptr, ptr %11, align 8, !dbg !1445
  %107 = icmp ne ptr %106, null, !dbg !1445
  br i1 %107, label %108, label %110, !dbg !1447

108:                                              ; preds = %105
  %109 = load ptr, ptr %11, align 8, !dbg !1448
  call void @PQclear(ptr noundef %109), !dbg !1450
  br label %110, !dbg !1451

110:                                              ; preds = %108, %105
  br label %111, !dbg !1452

111:                                              ; preds = %110, %19
  %112 = load i32, ptr %7, align 4, !dbg !1453
  ret i32 %112, !dbg !1454
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1455 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1458, metadata !DIExpression()), !dbg !1459
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1462, metadata !DIExpression()), !dbg !1463
  store i32 -1, ptr %7, align 4, !dbg !1463
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1464, metadata !DIExpression()), !dbg !1465
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1466, metadata !DIExpression()), !dbg !1467
  %12 = call ptr @get_pqdb_connection(), !dbg !1468
  store ptr %12, ptr %9, align 8, !dbg !1467
  %13 = load ptr, ptr %9, align 8, !dbg !1469
  %14 = icmp ne ptr %13, null, !dbg !1469
  br i1 %14, label %15, label %56, !dbg !1471

15:                                               ; preds = %3
  %16 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1472
  %17 = load ptr, ptr %4, align 8, !dbg !1475
  %18 = load ptr, ptr %6, align 8, !dbg !1476
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %16, i64 noundef 1025, ptr noundef @.str.30, ptr noundef %17, ptr noundef %18) #6, !dbg !1477
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1478, metadata !DIExpression()), !dbg !1479
  %20 = load ptr, ptr %9, align 8, !dbg !1480
  %21 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1481
  %22 = call ptr @PQexec(ptr noundef %20, ptr noundef %21), !dbg !1482
  store ptr %22, ptr %10, align 8, !dbg !1479
  %23 = load ptr, ptr %10, align 8, !dbg !1483
  %24 = icmp ne ptr %23, null, !dbg !1483
  br i1 %24, label %25, label %27, !dbg !1485

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !dbg !1486
  call void @PQclear(ptr noundef %26), !dbg !1488
  br label %27, !dbg !1489

27:                                               ; preds = %25, %15
  %28 = load i64, ptr %5, align 8, !dbg !1490
  %29 = icmp ugt i64 %28, 0, !dbg !1492
  br i1 %29, label %30, label %55, !dbg !1493

30:                                               ; preds = %27
  %31 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1494
  %32 = load ptr, ptr %4, align 8, !dbg !1496
  %33 = load ptr, ptr %6, align 8, !dbg !1497
  %34 = load i64, ptr %5, align 8, !dbg !1498
  %35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %31, i64 noundef 1025, ptr noundef @.str.31, ptr noundef %32, ptr noundef %33, i64 noundef %34) #6, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1500, metadata !DIExpression()), !dbg !1501
  %36 = load ptr, ptr %9, align 8, !dbg !1502
  %37 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !1503
  %38 = call ptr @PQexec(ptr noundef %36, ptr noundef %37), !dbg !1504
  store ptr %38, ptr %11, align 8, !dbg !1501
  %39 = load ptr, ptr %11, align 8, !dbg !1505
  %40 = icmp ne ptr %39, null, !dbg !1505
  br i1 %40, label %41, label %45, !dbg !1507

41:                                               ; preds = %30
  %42 = load ptr, ptr %11, align 8, !dbg !1508
  %43 = call i32 @PQresultStatus(ptr noundef %42), !dbg !1509
  %44 = icmp ne i32 %43, 1, !dbg !1510
  br i1 %44, label %45, label %48, !dbg !1511

45:                                               ; preds = %41, %30
  %46 = load ptr, ptr %9, align 8, !dbg !1512
  %47 = call ptr @PQerrorMessage(ptr noundef %46), !dbg !1514
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.32, ptr noundef %47), !dbg !1515
  br label %49, !dbg !1516

48:                                               ; preds = %41
  store i32 0, ptr %7, align 4, !dbg !1517
  br label %49

49:                                               ; preds = %48, %45
  %50 = load ptr, ptr %11, align 8, !dbg !1519
  %51 = icmp ne ptr %50, null, !dbg !1519
  br i1 %51, label %52, label %54, !dbg !1521

52:                                               ; preds = %49
  %53 = load ptr, ptr %11, align 8, !dbg !1522
  call void @PQclear(ptr noundef %53), !dbg !1524
  br label %54, !dbg !1525

54:                                               ; preds = %52, %49
  br label %55, !dbg !1526

55:                                               ; preds = %54, %27
  br label %56, !dbg !1527

56:                                               ; preds = %55, %3
  %57 = load i32, ptr %7, align 4, !dbg !1528
  ret i32 %57, !dbg !1529
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_realm_options(ptr noundef %0) #0 !dbg !1530 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1531, metadata !DIExpression()), !dbg !1532
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1533, metadata !DIExpression()), !dbg !1534
  store i32 -1, ptr %3, align 4, !dbg !1534
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1535
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1536, metadata !DIExpression()), !dbg !1537
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1538, metadata !DIExpression()), !dbg !1539
  %11 = call ptr @get_pqdb_connection(), !dbg !1540
  store ptr %11, ptr %5, align 8, !dbg !1539
  %12 = load ptr, ptr %5, align 8, !dbg !1541
  %13 = icmp ne ptr %12, null, !dbg !1541
  br i1 %13, label %14, label %85, !dbg !1543

14:                                               ; preds = %1
  %15 = load ptr, ptr %2, align 8, !dbg !1544
  %16 = icmp ne ptr %15, null, !dbg !1544
  br i1 %16, label %17, label %27, !dbg !1547

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !dbg !1548
  %19 = getelementptr inbounds i8, ptr %18, i64 0, !dbg !1548
  %20 = load i8, ptr %19, align 1, !dbg !1548
  %21 = zext i8 %20 to i32, !dbg !1548
  %22 = icmp ne i32 %21, 0, !dbg !1548
  br i1 %22, label %23, label %27, !dbg !1549

23:                                               ; preds = %17
  %24 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1550
  %25 = load ptr, ptr %2, align 8, !dbg !1552
  %26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 1025, ptr noundef @.str.33, ptr noundef %25) #6, !dbg !1553
  br label %30, !dbg !1554

27:                                               ; preds = %17, %14
  %28 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1555
  %29 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %28, i64 noundef 1025, ptr noundef @.str.34) #6, !dbg !1557
  br label %30

30:                                               ; preds = %27, %23
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1558, metadata !DIExpression()), !dbg !1559
  %31 = load ptr, ptr %5, align 8, !dbg !1560
  %32 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1561
  %33 = call ptr @PQexec(ptr noundef %31, ptr noundef %32), !dbg !1562
  store ptr %33, ptr %6, align 8, !dbg !1559
  %34 = load ptr, ptr %6, align 8, !dbg !1563
  %35 = icmp ne ptr %34, null, !dbg !1563
  br i1 %35, label %36, label %40, !dbg !1565

36:                                               ; preds = %30
  %37 = load ptr, ptr %6, align 8, !dbg !1566
  %38 = call i32 @PQresultStatus(ptr noundef %37), !dbg !1567
  %39 = icmp ne i32 %38, 2, !dbg !1568
  br i1 %39, label %40, label %43, !dbg !1569

40:                                               ; preds = %36, %30
  %41 = load ptr, ptr %5, align 8, !dbg !1570
  %42 = call ptr @PQerrorMessage(ptr noundef %41), !dbg !1572
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %42), !dbg !1573
  br label %79, !dbg !1574

43:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1575, metadata !DIExpression()), !dbg !1577
  store i32 0, ptr %7, align 4, !dbg !1577
  store i32 0, ptr %7, align 4, !dbg !1578
  br label %44, !dbg !1580

44:                                               ; preds = %75, %43
  %45 = load i32, ptr %7, align 4, !dbg !1581
  %46 = load ptr, ptr %6, align 8, !dbg !1583
  %47 = call i32 @PQntuples(ptr noundef %46), !dbg !1584
  %48 = icmp slt i32 %45, %47, !dbg !1585
  br i1 %48, label %49, label %78, !dbg !1586

49:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1587, metadata !DIExpression()), !dbg !1589
  %50 = load ptr, ptr %6, align 8, !dbg !1590
  %51 = load i32, ptr %7, align 4, !dbg !1591
  %52 = call ptr @PQgetvalue(ptr noundef %50, i32 noundef %51, i32 noundef 0), !dbg !1592
  store ptr %52, ptr %8, align 8, !dbg !1589
  %53 = load ptr, ptr %8, align 8, !dbg !1593
  %54 = icmp ne ptr %53, null, !dbg !1593
  br i1 %54, label %55, label %74, !dbg !1595

55:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1596, metadata !DIExpression()), !dbg !1598
  %56 = load ptr, ptr %6, align 8, !dbg !1599
  %57 = load i32, ptr %7, align 4, !dbg !1600
  %58 = call ptr @PQgetvalue(ptr noundef %56, i32 noundef %57, i32 noundef 1), !dbg !1601
  store ptr %58, ptr %9, align 8, !dbg !1598
  %59 = load ptr, ptr %9, align 8, !dbg !1602
  %60 = icmp ne ptr %59, null, !dbg !1602
  br i1 %60, label %61, label %73, !dbg !1604

61:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1605, metadata !DIExpression()), !dbg !1607
  %62 = load ptr, ptr %6, align 8, !dbg !1608
  %63 = load i32, ptr %7, align 4, !dbg !1609
  %64 = call ptr @PQgetvalue(ptr noundef %62, i32 noundef %63, i32 noundef 2), !dbg !1610
  store ptr %64, ptr %10, align 8, !dbg !1607
  %65 = load ptr, ptr %10, align 8, !dbg !1611
  %66 = icmp ne ptr %65, null, !dbg !1611
  br i1 %66, label %67, label %72, !dbg !1613

67:                                               ; preds = %61
  %68 = load ptr, ptr %9, align 8, !dbg !1614
  %69 = load ptr, ptr %8, align 8, !dbg !1616
  %70 = load ptr, ptr %10, align 8, !dbg !1617
  %71 = call i32 (ptr, ...) @printf(ptr noundef @.str.35, ptr noundef %68, ptr noundef %69, ptr noundef %70), !dbg !1618
  br label %72, !dbg !1619

72:                                               ; preds = %67, %61
  br label %73, !dbg !1620

73:                                               ; preds = %72, %55
  br label %74, !dbg !1621

74:                                               ; preds = %73, %49
  br label %75, !dbg !1622

75:                                               ; preds = %74
  %76 = load i32, ptr %7, align 4, !dbg !1623
  %77 = add nsw i32 %76, 1, !dbg !1623
  store i32 %77, ptr %7, align 4, !dbg !1623
  br label %44, !dbg !1624, !llvm.loop !1625

78:                                               ; preds = %44
  store i32 0, ptr %3, align 4, !dbg !1627
  br label %79

79:                                               ; preds = %78, %40
  %80 = load ptr, ptr %6, align 8, !dbg !1628
  %81 = icmp ne ptr %80, null, !dbg !1628
  br i1 %81, label %82, label %84, !dbg !1630

82:                                               ; preds = %79
  %83 = load ptr, ptr %6, align 8, !dbg !1631
  call void @PQclear(ptr noundef %83), !dbg !1633
  br label %84, !dbg !1634

84:                                               ; preds = %82, %79
  br label %85, !dbg !1635

85:                                               ; preds = %84, %1
  %86 = load i32, ptr %3, align 4, !dbg !1636
  ret i32 %86, !dbg !1637
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgsql_auth_ping(ptr noundef %0) #0 !dbg !1638 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1025 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1639, metadata !DIExpression()), !dbg !1640
  br label %7, !dbg !1641

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !1642
  store ptr %8, ptr %2, align 8, !dbg !1642
  br label %9, !dbg !1642

9:                                                ; preds = %7
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1644, metadata !DIExpression()), !dbg !1645
  %10 = call ptr @get_pqdb_connection(), !dbg !1646
  store ptr %10, ptr %3, align 8, !dbg !1645
  %11 = load ptr, ptr %3, align 8, !dbg !1647
  %12 = icmp ne ptr %11, null, !dbg !1647
  br i1 %12, label %13, label %45, !dbg !1649

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1650, metadata !DIExpression()), !dbg !1652
  br label %14, !dbg !1653

14:                                               ; preds = %13
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1654
  %16 = icmp ne ptr %15, @.str.36, !dbg !1654
  br i1 %16, label %17, label %25, !dbg !1657

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1658, metadata !DIExpression()), !dbg !1662
  store i64 1025, ptr %5, align 8, !dbg !1662
  %18 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1662
  %19 = load i64, ptr %5, align 8, !dbg !1662
  %20 = call ptr @strncpy(ptr noundef %18, ptr noundef @.str.36, i64 noundef %19) #6, !dbg !1662
  %21 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1662
  %22 = load i64, ptr %5, align 8, !dbg !1662
  %23 = sub i64 %22, 1, !dbg !1662
  %24 = getelementptr inbounds i8, ptr %21, i64 %23, !dbg !1662
  store i8 0, ptr %24, align 1, !dbg !1662
  br label %25, !dbg !1663

25:                                               ; preds = %17, %14
  br label %26, !dbg !1657

26:                                               ; preds = %25
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1664, metadata !DIExpression()), !dbg !1665
  %27 = load ptr, ptr %3, align 8, !dbg !1666
  %28 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1667
  %29 = call ptr @PQexec(ptr noundef %27, ptr noundef %28), !dbg !1668
  store ptr %29, ptr %6, align 8, !dbg !1665
  %30 = load ptr, ptr %6, align 8, !dbg !1669
  %31 = icmp ne ptr %30, null, !dbg !1669
  br i1 %31, label %32, label %36, !dbg !1671

32:                                               ; preds = %26
  %33 = load ptr, ptr %6, align 8, !dbg !1672
  %34 = call i32 @PQresultStatus(ptr noundef %33), !dbg !1673
  %35 = icmp ne i32 %34, 2, !dbg !1674
  br i1 %35, label %36, label %39, !dbg !1675

36:                                               ; preds = %32, %26
  %37 = load ptr, ptr %3, align 8, !dbg !1676
  %38 = call ptr @PQerrorMessage(ptr noundef %37), !dbg !1678
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %38), !dbg !1679
  br label %39, !dbg !1680

39:                                               ; preds = %36, %32
  %40 = load ptr, ptr %6, align 8, !dbg !1681
  %41 = icmp ne ptr %40, null, !dbg !1681
  br i1 %41, label %42, label %44, !dbg !1683

42:                                               ; preds = %39
  %43 = load ptr, ptr %6, align 8, !dbg !1684
  call void @PQclear(ptr noundef %43), !dbg !1686
  br label %44, !dbg !1687

44:                                               ; preds = %42, %39
  br label %45, !dbg !1688

45:                                               ; preds = %44, %9
  ret void, !dbg !1689
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_get_ip_list(ptr noundef %0, ptr noundef %1) #0 !dbg !247 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca [1025 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1690, metadata !DIExpression()), !dbg !1691
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1694, metadata !DIExpression()), !dbg !1695
  store i32 -1, ptr %5, align 4, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1696, metadata !DIExpression()), !dbg !1697
  %12 = call ptr @get_pqdb_connection(), !dbg !1698
  store ptr %12, ptr %6, align 8, !dbg !1697
  %13 = load ptr, ptr %6, align 8, !dbg !1699
  %14 = icmp ne ptr %13, null, !dbg !1699
  br i1 %14, label %15, label %79, !dbg !1701

15:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1702, metadata !DIExpression()), !dbg !1704
  %16 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1705
  %17 = load ptr, ptr %3, align 8, !dbg !1706
  %18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %16, i64 noundef 1025, ptr noundef @.str.37, ptr noundef %17) #6, !dbg !1707
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1708, metadata !DIExpression()), !dbg !1709
  %19 = load ptr, ptr %6, align 8, !dbg !1710
  %20 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1711
  %21 = call ptr @PQexec(ptr noundef %19, ptr noundef %20), !dbg !1712
  store ptr %21, ptr %8, align 8, !dbg !1709
  %22 = load ptr, ptr %8, align 8, !dbg !1713
  %23 = icmp ne ptr %22, null, !dbg !1713
  br i1 %23, label %24, label %28, !dbg !1715

24:                                               ; preds = %15
  %25 = load ptr, ptr %8, align 8, !dbg !1716
  %26 = call i32 @PQresultStatus(ptr noundef %25), !dbg !1717
  %27 = icmp ne i32 %26, 2, !dbg !1718
  br i1 %27, label %28, label %41, !dbg !1719

28:                                               ; preds = %24, %15
  %29 = load i32, ptr @pgsql_get_ip_list.wrong_table_reported, align 4, !dbg !1720
  %30 = icmp ne i32 %29, 0, !dbg !1720
  br i1 %30, label %34, label %31, !dbg !1723

31:                                               ; preds = %28
  store i32 1, ptr @pgsql_get_ip_list.wrong_table_reported, align 4, !dbg !1724
  %32 = load ptr, ptr %6, align 8, !dbg !1726
  %33 = call ptr @PQerrorMessage(ptr noundef %32), !dbg !1727
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.38, ptr noundef %33), !dbg !1728
  br label %34, !dbg !1729

34:                                               ; preds = %31, %28
  %35 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1730
  %36 = load ptr, ptr %3, align 8, !dbg !1731
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %35, i64 noundef 1025, ptr noundef @.str.39, ptr noundef %36) #6, !dbg !1732
  %38 = load ptr, ptr %6, align 8, !dbg !1733
  %39 = getelementptr inbounds [1025 x i8], ptr %7, i64 0, i64 0, !dbg !1734
  %40 = call ptr @PQexec(ptr noundef %38, ptr noundef %39), !dbg !1735
  store ptr %40, ptr %8, align 8, !dbg !1736
  br label %41, !dbg !1737

41:                                               ; preds = %34, %24
  %42 = load ptr, ptr %8, align 8, !dbg !1738
  %43 = icmp ne ptr %42, null, !dbg !1738
  br i1 %43, label %44, label %73, !dbg !1740

44:                                               ; preds = %41
  %45 = load ptr, ptr %8, align 8, !dbg !1741
  %46 = call i32 @PQresultStatus(ptr noundef %45), !dbg !1742
  %47 = icmp eq i32 %46, 2, !dbg !1743
  br i1 %47, label %48, label %73, !dbg !1744

48:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1745, metadata !DIExpression()), !dbg !1747
  store i32 0, ptr %9, align 4, !dbg !1747
  store i32 0, ptr %9, align 4, !dbg !1748
  br label %49, !dbg !1750

49:                                               ; preds = %69, %48
  %50 = load i32, ptr %9, align 4, !dbg !1751
  %51 = load ptr, ptr %8, align 8, !dbg !1753
  %52 = call i32 @PQntuples(ptr noundef %51), !dbg !1754
  %53 = icmp slt i32 %50, %52, !dbg !1755
  br i1 %53, label %54, label %72, !dbg !1756

54:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1757, metadata !DIExpression()), !dbg !1759
  %55 = load ptr, ptr %8, align 8, !dbg !1760
  %56 = load i32, ptr %9, align 4, !dbg !1761
  %57 = call ptr @PQgetvalue(ptr noundef %55, i32 noundef %56, i32 noundef 0), !dbg !1762
  store ptr %57, ptr %10, align 8, !dbg !1759
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1763, metadata !DIExpression()), !dbg !1764
  %58 = load ptr, ptr %8, align 8, !dbg !1765
  %59 = load i32, ptr %9, align 4, !dbg !1766
  %60 = call ptr @PQgetvalue(ptr noundef %58, i32 noundef %59, i32 noundef 1), !dbg !1767
  store ptr %60, ptr %11, align 8, !dbg !1764
  %61 = load ptr, ptr %10, align 8, !dbg !1768
  %62 = icmp ne ptr %61, null, !dbg !1768
  br i1 %62, label %63, label %68, !dbg !1770

63:                                               ; preds = %54
  %64 = load ptr, ptr %10, align 8, !dbg !1771
  %65 = load ptr, ptr %11, align 8, !dbg !1773
  %66 = load ptr, ptr %4, align 8, !dbg !1774
  %67 = call i32 @add_ip_list_range(ptr noundef %64, ptr noundef %65, ptr noundef %66), !dbg !1775
  br label %68, !dbg !1776

68:                                               ; preds = %63, %54
  br label %69, !dbg !1777

69:                                               ; preds = %68
  %70 = load i32, ptr %9, align 4, !dbg !1778
  %71 = add nsw i32 %70, 1, !dbg !1778
  store i32 %71, ptr %9, align 4, !dbg !1778
  br label %49, !dbg !1779, !llvm.loop !1780

72:                                               ; preds = %49
  store i32 0, ptr %5, align 4, !dbg !1782
  br label %73, !dbg !1783

73:                                               ; preds = %72, %44, %41
  %74 = load ptr, ptr %8, align 8, !dbg !1784
  %75 = icmp ne ptr %74, null, !dbg !1784
  br i1 %75, label %76, label %78, !dbg !1786

76:                                               ; preds = %73
  %77 = load ptr, ptr %8, align 8, !dbg !1787
  call void @PQclear(ptr noundef %77), !dbg !1789
  br label %78, !dbg !1790

78:                                               ; preds = %76, %73
  br label %79, !dbg !1791

79:                                               ; preds = %78, %2
  %80 = load i32, ptr %5, align 4, !dbg !1792
  ret i32 %80, !dbg !1793
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_permission_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1794 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [128 x i8], align 16
  %11 = alloca [1025 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1795, metadata !DIExpression()), !dbg !1796
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1797, metadata !DIExpression()), !dbg !1798
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1799, metadata !DIExpression()), !dbg !1800
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1801, metadata !DIExpression()), !dbg !1802
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1803, metadata !DIExpression()), !dbg !1804
  store i32 -1, ptr %9, align 4, !dbg !1804
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1805, metadata !DIExpression()), !dbg !1806
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 128, i1 false), !dbg !1806
  %14 = load ptr, ptr %6, align 8, !dbg !1807
  %15 = icmp ne ptr %14, null, !dbg !1807
  br i1 %15, label %18, label %16, !dbg !1809

16:                                               ; preds = %4
  %17 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 0, !dbg !1810
  store ptr %17, ptr %6, align 8, !dbg !1811
  br label %18, !dbg !1812

18:                                               ; preds = %16, %4
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !1813
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1814, metadata !DIExpression()), !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1816, metadata !DIExpression()), !dbg !1817
  %19 = call ptr @get_pqdb_connection(), !dbg !1818
  store ptr %19, ptr %12, align 8, !dbg !1817
  %20 = load ptr, ptr %12, align 8, !dbg !1819
  %21 = icmp ne ptr %20, null, !dbg !1819
  br i1 %21, label %22, label %57, !dbg !1821

22:                                               ; preds = %18
  %23 = load i32, ptr %8, align 4, !dbg !1822
  %24 = icmp ne i32 %23, 0, !dbg !1822
  br i1 %24, label %25, label %31, !dbg !1825

25:                                               ; preds = %22
  %26 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1826
  %27 = load ptr, ptr %5, align 8, !dbg !1828
  %28 = load ptr, ptr %6, align 8, !dbg !1829
  %29 = load ptr, ptr %7, align 8, !dbg !1830
  %30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %26, i64 noundef 1025, ptr noundef @.str.40, ptr noundef %27, ptr noundef %28, ptr noundef %29) #6, !dbg !1831
  br label %37, !dbg !1832

31:                                               ; preds = %22
  %32 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1833
  %33 = load ptr, ptr %5, align 8, !dbg !1835
  %34 = load ptr, ptr %6, align 8, !dbg !1836
  %35 = load ptr, ptr %7, align 8, !dbg !1837
  %36 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %32, i64 noundef 1025, ptr noundef @.str.41, ptr noundef %33, ptr noundef %34, ptr noundef %35) #6, !dbg !1838
  br label %37

37:                                               ; preds = %31, %25
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1839, metadata !DIExpression()), !dbg !1840
  %38 = load ptr, ptr %12, align 8, !dbg !1841
  %39 = getelementptr inbounds [1025 x i8], ptr %11, i64 0, i64 0, !dbg !1842
  %40 = call ptr @PQexec(ptr noundef %38, ptr noundef %39), !dbg !1843
  store ptr %40, ptr %13, align 8, !dbg !1840
  %41 = load ptr, ptr %13, align 8, !dbg !1844
  %42 = icmp ne ptr %41, null, !dbg !1844
  br i1 %42, label %43, label %47, !dbg !1846

43:                                               ; preds = %37
  %44 = load ptr, ptr %13, align 8, !dbg !1847
  %45 = call i32 @PQresultStatus(ptr noundef %44), !dbg !1848
  %46 = icmp ne i32 %45, 1, !dbg !1849
  br i1 %46, label %47, label %50, !dbg !1850

47:                                               ; preds = %43, %37
  %48 = load ptr, ptr %12, align 8, !dbg !1851
  %49 = call ptr @PQerrorMessage(ptr noundef %48), !dbg !1853
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.42, ptr noundef %49), !dbg !1854
  br label %51, !dbg !1855

50:                                               ; preds = %43
  store i32 0, ptr %9, align 4, !dbg !1856
  br label %51

51:                                               ; preds = %50, %47
  %52 = load ptr, ptr %13, align 8, !dbg !1858
  %53 = icmp ne ptr %52, null, !dbg !1858
  br i1 %53, label %54, label %56, !dbg !1860

54:                                               ; preds = %51
  %55 = load ptr, ptr %13, align 8, !dbg !1861
  call void @PQclear(ptr noundef %55), !dbg !1863
  br label %56, !dbg !1864

56:                                               ; preds = %54, %51
  br label %57, !dbg !1865

57:                                               ; preds = %56, %18
  %58 = load i32, ptr %9, align 4, !dbg !1866
  ret i32 %58, !dbg !1867
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgsql_reread_realms(ptr noundef %0) #0 !dbg !1868 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1869, metadata !DIExpression()), !dbg !1870
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1871, metadata !DIExpression()), !dbg !1872
  %21 = call ptr @get_pqdb_connection(), !dbg !1873
  store ptr %21, ptr %3, align 8, !dbg !1872
  %22 = load ptr, ptr %3, align 8, !dbg !1874
  %23 = icmp ne ptr %22, null, !dbg !1874
  br i1 %23, label %24, label %198, !dbg !1876

24:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1877, metadata !DIExpression()), !dbg !1879
  %25 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1880
  %26 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %25, i64 noundef 1025, ptr noundef @.str.43) #6, !dbg !1882
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1883, metadata !DIExpression()), !dbg !1884
  %27 = load ptr, ptr %3, align 8, !dbg !1885
  %28 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !1886
  %29 = call ptr @PQexec(ptr noundef %27, ptr noundef %28), !dbg !1887
  store ptr %29, ptr %5, align 8, !dbg !1884
  %30 = load ptr, ptr %5, align 8, !dbg !1888
  %31 = icmp ne ptr %30, null, !dbg !1888
  br i1 %31, label %32, label %71, !dbg !1890

32:                                               ; preds = %24
  %33 = load ptr, ptr %5, align 8, !dbg !1891
  %34 = call i32 @PQresultStatus(ptr noundef %33), !dbg !1892
  %35 = icmp eq i32 %34, 2, !dbg !1893
  br i1 %35, label %36, label %71, !dbg !1894

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1895, metadata !DIExpression()), !dbg !1900
  %37 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !1901
  store ptr %37, ptr %6, align 8, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1902, metadata !DIExpression()), !dbg !1903
  store i32 0, ptr %7, align 4, !dbg !1903
  store i32 0, ptr %7, align 4, !dbg !1904
  br label %38, !dbg !1906

38:                                               ; preds = %66, %36
  %39 = load i32, ptr %7, align 4, !dbg !1907
  %40 = load ptr, ptr %5, align 8, !dbg !1909
  %41 = call i32 @PQntuples(ptr noundef %40), !dbg !1910
  %42 = icmp slt i32 %39, %41, !dbg !1911
  br i1 %42, label %43, label %69, !dbg !1912

43:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1913, metadata !DIExpression()), !dbg !1915
  %44 = load ptr, ptr %5, align 8, !dbg !1916
  %45 = load i32, ptr %7, align 4, !dbg !1917
  %46 = call ptr @PQgetvalue(ptr noundef %44, i32 noundef %45, i32 noundef 0), !dbg !1918
  store ptr %46, ptr %8, align 8, !dbg !1915
  %47 = load ptr, ptr %8, align 8, !dbg !1919
  %48 = icmp ne ptr %47, null, !dbg !1919
  br i1 %48, label %49, label %65, !dbg !1921

49:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1922, metadata !DIExpression()), !dbg !1924
  %50 = load ptr, ptr %5, align 8, !dbg !1925
  %51 = load i32, ptr %7, align 4, !dbg !1926
  %52 = call ptr @PQgetvalue(ptr noundef %50, i32 noundef %51, i32 noundef 1), !dbg !1927
  store ptr %52, ptr %9, align 8, !dbg !1924
  %53 = load ptr, ptr %9, align 8, !dbg !1928
  %54 = icmp ne ptr %53, null, !dbg !1928
  br i1 %54, label %55, label %64, !dbg !1930

55:                                               ; preds = %49
  %56 = load ptr, ptr %9, align 8, !dbg !1931
  %57 = call ptr @get_realm(ptr noundef %56), !dbg !1933
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1934, metadata !DIExpression()), !dbg !1936
  %58 = load ptr, ptr %9, align 8, !dbg !1937
  %59 = call noalias ptr @strdup(ptr noundef %58) #6, !dbg !1938
  store ptr %59, ptr %10, align 8, !dbg !1936
  %60 = load ptr, ptr %6, align 8, !dbg !1939
  %61 = load ptr, ptr %8, align 8, !dbg !1940
  %62 = load ptr, ptr %10, align 8, !dbg !1941
  %63 = call i32 @ur_string_map_put(ptr noundef %60, ptr noundef %61, ptr noundef %62), !dbg !1942
  br label %64, !dbg !1943

64:                                               ; preds = %55, %49
  br label %65, !dbg !1944

65:                                               ; preds = %64, %43
  br label %66, !dbg !1945

66:                                               ; preds = %65
  %67 = load i32, ptr %7, align 4, !dbg !1946
  %68 = add nsw i32 %67, 1, !dbg !1946
  store i32 %68, ptr %7, align 4, !dbg !1946
  br label %38, !dbg !1947, !llvm.loop !1948

69:                                               ; preds = %38
  %70 = load ptr, ptr %6, align 8, !dbg !1950
  call void @update_o_to_realm(ptr noundef %70), !dbg !1951
  br label %71, !dbg !1952

71:                                               ; preds = %69, %32, %24
  %72 = load ptr, ptr %5, align 8, !dbg !1953
  %73 = icmp ne ptr %72, null, !dbg !1953
  br i1 %73, label %74, label %76, !dbg !1955

74:                                               ; preds = %71
  %75 = load ptr, ptr %5, align 8, !dbg !1956
  call void @PQclear(ptr noundef %75), !dbg !1958
  br label %76, !dbg !1959

76:                                               ; preds = %74, %71
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1960, metadata !DIExpression()), !dbg !1963
  store i64 0, ptr %11, align 8, !dbg !1963
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1964, metadata !DIExpression()), !dbg !1965
  store i64 0, ptr %12, align 8, !dbg !1965
  call void @lock_realms(), !dbg !1966
  %77 = load ptr, ptr %2, align 8, !dbg !1967
  %78 = getelementptr inbounds %struct._secrets_list, ptr %77, i32 0, i32 1, !dbg !1968
  %79 = load i64, ptr %78, align 8, !dbg !1968
  store i64 %79, ptr %12, align 8, !dbg !1969
  call void @unlock_realms(), !dbg !1970
  store i64 0, ptr %11, align 8, !dbg !1971
  br label %80, !dbg !1973

80:                                               ; preds = %108, %76
  %81 = load i64, ptr %11, align 8, !dbg !1974
  %82 = load i64, ptr %12, align 8, !dbg !1976
  %83 = icmp ult i64 %81, %82, !dbg !1977
  br i1 %83, label %84, label %111, !dbg !1978

84:                                               ; preds = %80
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1979, metadata !DIExpression()), !dbg !1981
  %85 = load ptr, ptr %2, align 8, !dbg !1982
  %86 = getelementptr inbounds %struct._secrets_list, ptr %85, i32 0, i32 0, !dbg !1983
  %87 = load ptr, ptr %86, align 8, !dbg !1983
  %88 = load i64, ptr %11, align 8, !dbg !1984
  %89 = getelementptr inbounds ptr, ptr %87, i64 %88, !dbg !1982
  %90 = load ptr, ptr %89, align 8, !dbg !1982
  store ptr %90, ptr %13, align 8, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1985, metadata !DIExpression()), !dbg !2011
  %91 = load ptr, ptr %13, align 8, !dbg !2012
  %92 = call ptr @get_realm(ptr noundef %91), !dbg !2013
  store ptr %92, ptr %14, align 8, !dbg !2011
  call void @lock_realms(), !dbg !2014
  %93 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !2015
  %94 = load ptr, ptr %14, align 8, !dbg !2016
  %95 = getelementptr inbounds %struct._realm_params_t, ptr %94, i32 0, i32 1, !dbg !2017
  %96 = getelementptr inbounds %struct._realm_options_t, ptr %95, i32 0, i32 1, !dbg !2018
  %97 = getelementptr inbounds %struct._perf_options_t, ptr %96, i32 0, i32 0, !dbg !2019
  store volatile i64 %93, ptr %97, align 8, !dbg !2020
  call void @unlock_realms(), !dbg !2021
  call void @lock_realms(), !dbg !2022
  %98 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !2023
  %99 = load ptr, ptr %14, align 8, !dbg !2024
  %100 = getelementptr inbounds %struct._realm_params_t, ptr %99, i32 0, i32 1, !dbg !2025
  %101 = getelementptr inbounds %struct._realm_options_t, ptr %100, i32 0, i32 1, !dbg !2026
  %102 = getelementptr inbounds %struct._perf_options_t, ptr %101, i32 0, i32 1, !dbg !2027
  store i32 %98, ptr %102, align 8, !dbg !2028
  call void @unlock_realms(), !dbg !2029
  call void @lock_realms(), !dbg !2030
  %103 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !2031
  %104 = load ptr, ptr %14, align 8, !dbg !2032
  %105 = getelementptr inbounds %struct._realm_params_t, ptr %104, i32 0, i32 1, !dbg !2033
  %106 = getelementptr inbounds %struct._realm_options_t, ptr %105, i32 0, i32 1, !dbg !2034
  %107 = getelementptr inbounds %struct._perf_options_t, ptr %106, i32 0, i32 2, !dbg !2035
  store i32 %103, ptr %107, align 4, !dbg !2036
  call void @unlock_realms(), !dbg !2037
  br label %108, !dbg !2038

108:                                              ; preds = %84
  %109 = load i64, ptr %11, align 8, !dbg !2039
  %110 = add i64 %109, 1, !dbg !2039
  store i64 %110, ptr %11, align 8, !dbg !2039
  br label %80, !dbg !2040, !llvm.loop !2041

111:                                              ; preds = %80
  %112 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2043
  %113 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %112, i64 noundef 1025, ptr noundef @.str.44) #6, !dbg !2044
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2045, metadata !DIExpression()), !dbg !2046
  %114 = load ptr, ptr %3, align 8, !dbg !2047
  %115 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2048
  %116 = call ptr @PQexec(ptr noundef %114, ptr noundef %115), !dbg !2049
  store ptr %116, ptr %15, align 8, !dbg !2046
  %117 = load ptr, ptr %15, align 8, !dbg !2050
  %118 = icmp ne ptr %117, null, !dbg !2050
  br i1 %118, label %119, label %192, !dbg !2052

119:                                              ; preds = %111
  %120 = load ptr, ptr %15, align 8, !dbg !2053
  %121 = call i32 @PQresultStatus(ptr noundef %120), !dbg !2054
  %122 = icmp eq i32 %121, 2, !dbg !2055
  br i1 %122, label %123, label %192, !dbg !2056

123:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2057, metadata !DIExpression()), !dbg !2059
  store i32 0, ptr %16, align 4, !dbg !2059
  store i32 0, ptr %16, align 4, !dbg !2060
  br label %124, !dbg !2062

124:                                              ; preds = %188, %123
  %125 = load i32, ptr %16, align 4, !dbg !2063
  %126 = load ptr, ptr %15, align 8, !dbg !2065
  %127 = call i32 @PQntuples(ptr noundef %126), !dbg !2066
  %128 = icmp slt i32 %125, %127, !dbg !2067
  br i1 %128, label %129, label %191, !dbg !2068

129:                                              ; preds = %124
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2069, metadata !DIExpression()), !dbg !2071
  %130 = load ptr, ptr %15, align 8, !dbg !2072
  %131 = load i32, ptr %16, align 4, !dbg !2073
  %132 = call ptr @PQgetvalue(ptr noundef %130, i32 noundef %131, i32 noundef 0), !dbg !2074
  store ptr %132, ptr %17, align 8, !dbg !2071
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2075, metadata !DIExpression()), !dbg !2076
  %133 = load ptr, ptr %15, align 8, !dbg !2077
  %134 = load i32, ptr %16, align 4, !dbg !2078
  %135 = call ptr @PQgetvalue(ptr noundef %133, i32 noundef %134, i32 noundef 1), !dbg !2079
  store ptr %135, ptr %18, align 8, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2080, metadata !DIExpression()), !dbg !2081
  %136 = load ptr, ptr %15, align 8, !dbg !2082
  %137 = load i32, ptr %16, align 4, !dbg !2083
  %138 = call ptr @PQgetvalue(ptr noundef %136, i32 noundef %137, i32 noundef 2), !dbg !2084
  store ptr %138, ptr %19, align 8, !dbg !2081
  %139 = load ptr, ptr %17, align 8, !dbg !2085
  %140 = icmp ne ptr %139, null, !dbg !2085
  br i1 %140, label %141, label %187, !dbg !2087

141:                                              ; preds = %129
  %142 = load ptr, ptr %18, align 8, !dbg !2088
  %143 = icmp ne ptr %142, null, !dbg !2088
  br i1 %143, label %144, label %187, !dbg !2089

144:                                              ; preds = %141
  %145 = load ptr, ptr %19, align 8, !dbg !2090
  %146 = icmp ne ptr %145, null, !dbg !2090
  br i1 %146, label %147, label %187, !dbg !2091

147:                                              ; preds = %144
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2092, metadata !DIExpression()), !dbg !2094
  %148 = load ptr, ptr %17, align 8, !dbg !2095
  %149 = call ptr @get_realm(ptr noundef %148), !dbg !2096
  store ptr %149, ptr %20, align 8, !dbg !2094
  %150 = load ptr, ptr %18, align 8, !dbg !2097
  %151 = call i32 @strcmp(ptr noundef %150, ptr noundef @.str.45) #7, !dbg !2099
  %152 = icmp ne i32 %151, 0, !dbg !2099
  br i1 %152, label %160, label %153, !dbg !2100

153:                                              ; preds = %147
  %154 = load ptr, ptr %19, align 8, !dbg !2101
  %155 = call i64 @strtoul(ptr noundef %154, ptr noundef null, i32 noundef 10) #6, !dbg !2102
  %156 = load ptr, ptr %20, align 8, !dbg !2103
  %157 = getelementptr inbounds %struct._realm_params_t, ptr %156, i32 0, i32 1, !dbg !2104
  %158 = getelementptr inbounds %struct._realm_options_t, ptr %157, i32 0, i32 1, !dbg !2105
  %159 = getelementptr inbounds %struct._perf_options_t, ptr %158, i32 0, i32 0, !dbg !2106
  store volatile i64 %155, ptr %159, align 8, !dbg !2107
  br label %186, !dbg !2103

160:                                              ; preds = %147
  %161 = load ptr, ptr %18, align 8, !dbg !2108
  %162 = call i32 @strcmp(ptr noundef %161, ptr noundef @.str.46) #7, !dbg !2110
  %163 = icmp ne i32 %162, 0, !dbg !2110
  br i1 %163, label %171, label %164, !dbg !2111

164:                                              ; preds = %160
  %165 = load ptr, ptr %19, align 8, !dbg !2112
  %166 = call i32 @atoi(ptr noundef %165) #7, !dbg !2113
  %167 = load ptr, ptr %20, align 8, !dbg !2114
  %168 = getelementptr inbounds %struct._realm_params_t, ptr %167, i32 0, i32 1, !dbg !2115
  %169 = getelementptr inbounds %struct._realm_options_t, ptr %168, i32 0, i32 1, !dbg !2116
  %170 = getelementptr inbounds %struct._perf_options_t, ptr %169, i32 0, i32 1, !dbg !2117
  store i32 %166, ptr %170, align 8, !dbg !2118
  br label %185, !dbg !2114

171:                                              ; preds = %160
  %172 = load ptr, ptr %18, align 8, !dbg !2119
  %173 = call i32 @strcmp(ptr noundef %172, ptr noundef @.str.47) #7, !dbg !2121
  %174 = icmp ne i32 %173, 0, !dbg !2121
  br i1 %174, label %182, label %175, !dbg !2122

175:                                              ; preds = %171
  %176 = load ptr, ptr %19, align 8, !dbg !2123
  %177 = call i32 @atoi(ptr noundef %176) #7, !dbg !2124
  %178 = load ptr, ptr %20, align 8, !dbg !2125
  %179 = getelementptr inbounds %struct._realm_params_t, ptr %178, i32 0, i32 1, !dbg !2126
  %180 = getelementptr inbounds %struct._realm_options_t, ptr %179, i32 0, i32 1, !dbg !2127
  %181 = getelementptr inbounds %struct._perf_options_t, ptr %180, i32 0, i32 2, !dbg !2128
  store i32 %177, ptr %181, align 4, !dbg !2129
  br label %184, !dbg !2125

182:                                              ; preds = %171
  %183 = load ptr, ptr %18, align 8, !dbg !2130
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.48, ptr noundef %183), !dbg !2132
  br label %184

184:                                              ; preds = %182, %175
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %153
  br label %187, !dbg !2133

187:                                              ; preds = %186, %144, %141, %129
  br label %188, !dbg !2134

188:                                              ; preds = %187
  %189 = load i32, ptr %16, align 4, !dbg !2135
  %190 = add nsw i32 %189, 1, !dbg !2135
  store i32 %190, ptr %16, align 4, !dbg !2135
  br label %124, !dbg !2136, !llvm.loop !2137

191:                                              ; preds = %124
  br label %192, !dbg !2139

192:                                              ; preds = %191, %119, %111
  %193 = load ptr, ptr %15, align 8, !dbg !2140
  %194 = icmp ne ptr %193, null, !dbg !2140
  br i1 %194, label %195, label %197, !dbg !2142

195:                                              ; preds = %192
  %196 = load ptr, ptr %15, align 8, !dbg !2143
  call void @PQclear(ptr noundef %196), !dbg !2145
  br label %197, !dbg !2146

197:                                              ; preds = %195, %192
  br label %198, !dbg !2147

198:                                              ; preds = %197, %1
  ret void, !dbg !2148
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_oauth_key(ptr noundef %0) #0 !dbg !2149 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2150, metadata !DIExpression()), !dbg !2151
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2152, metadata !DIExpression()), !dbg !2153
  store i32 -1, ptr %3, align 4, !dbg !2153
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2154, metadata !DIExpression()), !dbg !2155
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2156, metadata !DIExpression()), !dbg !2157
  %7 = call ptr @get_pqdb_connection(), !dbg !2158
  store ptr %7, ptr %5, align 8, !dbg !2157
  %8 = load ptr, ptr %5, align 8, !dbg !2159
  %9 = icmp ne ptr %8, null, !dbg !2159
  br i1 %9, label %10, label %89, !dbg !2161

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2162
  %12 = load ptr, ptr %2, align 8, !dbg !2164
  %13 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %12, i32 0, i32 0, !dbg !2165
  %14 = getelementptr inbounds [129 x i8], ptr %13, i64 0, i64 0, !dbg !2164
  %15 = load ptr, ptr %2, align 8, !dbg !2166
  %16 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %15, i32 0, i32 1, !dbg !2167
  %17 = getelementptr inbounds [257 x i8], ptr %16, i64 0, i64 0, !dbg !2166
  %18 = load ptr, ptr %2, align 8, !dbg !2168
  %19 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %18, i32 0, i32 2, !dbg !2169
  %20 = load i64, ptr %19, align 8, !dbg !2169
  %21 = load ptr, ptr %2, align 8, !dbg !2170
  %22 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 3, !dbg !2171
  %23 = load i32, ptr %22, align 8, !dbg !2171
  %24 = zext i32 %23 to i64, !dbg !2172
  %25 = load ptr, ptr %2, align 8, !dbg !2173
  %26 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %25, i32 0, i32 4, !dbg !2174
  %27 = getelementptr inbounds [65 x i8], ptr %26, i64 0, i64 0, !dbg !2173
  %28 = load ptr, ptr %2, align 8, !dbg !2175
  %29 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %28, i32 0, i32 5, !dbg !2176
  %30 = getelementptr inbounds [128 x i8], ptr %29, i64 0, i64 0, !dbg !2175
  %31 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.49, ptr noundef %14, ptr noundef %17, i64 noundef %20, i64 noundef %24, ptr noundef %27, ptr noundef %30) #6, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2178, metadata !DIExpression()), !dbg !2179
  %32 = load ptr, ptr %5, align 8, !dbg !2180
  %33 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2181
  %34 = call ptr @PQexec(ptr noundef %32, ptr noundef %33), !dbg !2182
  store ptr %34, ptr %6, align 8, !dbg !2179
  %35 = load ptr, ptr %6, align 8, !dbg !2183
  %36 = icmp ne ptr %35, null, !dbg !2183
  br i1 %36, label %37, label %41, !dbg !2185

37:                                               ; preds = %10
  %38 = load ptr, ptr %6, align 8, !dbg !2186
  %39 = call i32 @PQresultStatus(ptr noundef %38), !dbg !2187
  %40 = icmp ne i32 %39, 1, !dbg !2188
  br i1 %40, label %41, label %82, !dbg !2189

41:                                               ; preds = %37, %10
  %42 = load ptr, ptr %6, align 8, !dbg !2190
  %43 = icmp ne ptr %42, null, !dbg !2190
  br i1 %43, label %44, label %46, !dbg !2193

44:                                               ; preds = %41
  %45 = load ptr, ptr %6, align 8, !dbg !2194
  call void @PQclear(ptr noundef %45), !dbg !2196
  br label %46, !dbg !2197

46:                                               ; preds = %44, %41
  %47 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2198
  %48 = load ptr, ptr %2, align 8, !dbg !2199
  %49 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %48, i32 0, i32 1, !dbg !2200
  %50 = getelementptr inbounds [257 x i8], ptr %49, i64 0, i64 0, !dbg !2199
  %51 = load ptr, ptr %2, align 8, !dbg !2201
  %52 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %51, i32 0, i32 2, !dbg !2202
  %53 = load i64, ptr %52, align 8, !dbg !2202
  %54 = load ptr, ptr %2, align 8, !dbg !2203
  %55 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %54, i32 0, i32 3, !dbg !2204
  %56 = load i32, ptr %55, align 8, !dbg !2204
  %57 = zext i32 %56 to i64, !dbg !2205
  %58 = load ptr, ptr %2, align 8, !dbg !2206
  %59 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %58, i32 0, i32 4, !dbg !2207
  %60 = getelementptr inbounds [65 x i8], ptr %59, i64 0, i64 0, !dbg !2206
  %61 = load ptr, ptr %2, align 8, !dbg !2208
  %62 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %61, i32 0, i32 5, !dbg !2209
  %63 = getelementptr inbounds [128 x i8], ptr %62, i64 0, i64 0, !dbg !2208
  %64 = load ptr, ptr %2, align 8, !dbg !2210
  %65 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %64, i32 0, i32 0, !dbg !2211
  %66 = getelementptr inbounds [129 x i8], ptr %65, i64 0, i64 0, !dbg !2210
  %67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %47, i64 noundef 1025, ptr noundef @.str.50, ptr noundef %50, i64 noundef %53, i64 noundef %57, ptr noundef %60, ptr noundef %63, ptr noundef %66) #6, !dbg !2212
  %68 = load ptr, ptr %5, align 8, !dbg !2213
  %69 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2214
  %70 = call ptr @PQexec(ptr noundef %68, ptr noundef %69), !dbg !2215
  store ptr %70, ptr %6, align 8, !dbg !2216
  %71 = load ptr, ptr %6, align 8, !dbg !2217
  %72 = icmp ne ptr %71, null, !dbg !2217
  br i1 %72, label %73, label %77, !dbg !2219

73:                                               ; preds = %46
  %74 = load ptr, ptr %6, align 8, !dbg !2220
  %75 = call i32 @PQresultStatus(ptr noundef %74), !dbg !2221
  %76 = icmp ne i32 %75, 1, !dbg !2222
  br i1 %76, label %77, label %80, !dbg !2223

77:                                               ; preds = %73, %46
  %78 = load ptr, ptr %5, align 8, !dbg !2224
  %79 = call ptr @PQerrorMessage(ptr noundef %78), !dbg !2226
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.51, ptr noundef %79), !dbg !2227
  br label %81, !dbg !2228

80:                                               ; preds = %73
  store i32 0, ptr %3, align 4, !dbg !2229
  br label %81

81:                                               ; preds = %80, %77
  br label %83, !dbg !2231

82:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !dbg !2232
  br label %83

83:                                               ; preds = %82, %81
  %84 = load ptr, ptr %6, align 8, !dbg !2234
  %85 = icmp ne ptr %84, null, !dbg !2234
  br i1 %85, label %86, label %88, !dbg !2236

86:                                               ; preds = %83
  %87 = load ptr, ptr %6, align 8, !dbg !2237
  call void @PQclear(ptr noundef %87), !dbg !2239
  br label %88, !dbg !2240

88:                                               ; preds = %86, %83
  br label %89, !dbg !2241

89:                                               ; preds = %88, %1
  %90 = load i32, ptr %3, align 4, !dbg !2242
  ret i32 %90, !dbg !2243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_get_oauth_key(ptr noundef %0, ptr noundef %1) #0 !dbg !2244 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca [1025 x i8], align 16
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2245, metadata !DIExpression()), !dbg !2246
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2249, metadata !DIExpression()), !dbg !2250
  store i32 -1, ptr %5, align 4, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2251, metadata !DIExpression()), !dbg !2252
  %13 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2253
  %14 = load ptr, ptr %3, align 8, !dbg !2254
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %13, i64 noundef 1025, ptr noundef @.str.52, ptr noundef %14) #6, !dbg !2255
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2256, metadata !DIExpression()), !dbg !2257
  %16 = call ptr @get_pqdb_connection(), !dbg !2258
  store ptr %16, ptr %7, align 8, !dbg !2257
  %17 = load ptr, ptr %7, align 8, !dbg !2259
  %18 = icmp ne ptr %17, null, !dbg !2259
  br i1 %18, label %19, label %144, !dbg !2261

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2262, metadata !DIExpression()), !dbg !2264
  %20 = load ptr, ptr %7, align 8, !dbg !2265
  %21 = getelementptr inbounds [1025 x i8], ptr %6, i64 0, i64 0, !dbg !2266
  %22 = call ptr @PQexec(ptr noundef %20, ptr noundef %21), !dbg !2267
  store ptr %22, ptr %8, align 8, !dbg !2264
  %23 = load ptr, ptr %8, align 8, !dbg !2268
  %24 = icmp ne ptr %23, null, !dbg !2268
  br i1 %24, label %25, label %33, !dbg !2270

25:                                               ; preds = %19
  %26 = load ptr, ptr %8, align 8, !dbg !2271
  %27 = call i32 @PQresultStatus(ptr noundef %26), !dbg !2272
  %28 = icmp ne i32 %27, 2, !dbg !2273
  br i1 %28, label %33, label %29, !dbg !2274

29:                                               ; preds = %25
  %30 = load ptr, ptr %8, align 8, !dbg !2275
  %31 = call i32 @PQntuples(ptr noundef %30), !dbg !2276
  %32 = icmp ne i32 %31, 1, !dbg !2277
  br i1 %32, label %33, label %36, !dbg !2278

33:                                               ; preds = %29, %25, %19
  %34 = load ptr, ptr %7, align 8, !dbg !2279
  %35 = call ptr @PQerrorMessage(ptr noundef %34), !dbg !2281
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %35), !dbg !2282
  br label %138, !dbg !2283

36:                                               ; preds = %29
  br label %37, !dbg !2284

37:                                               ; preds = %36
  %38 = load ptr, ptr %4, align 8, !dbg !2286
  %39 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %38, i32 0, i32 1, !dbg !2286
  %40 = getelementptr inbounds [257 x i8], ptr %39, i64 0, i64 0, !dbg !2286
  %41 = load ptr, ptr %8, align 8, !dbg !2286
  %42 = call ptr @PQgetvalue(ptr noundef %41, i32 noundef 0, i32 noundef 0), !dbg !2286
  %43 = icmp ne ptr %40, %42, !dbg !2286
  br i1 %43, label %44, label %58, !dbg !2289

44:                                               ; preds = %37
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2290, metadata !DIExpression()), !dbg !2294
  store i64 257, ptr %9, align 8, !dbg !2294
  %45 = load ptr, ptr %4, align 8, !dbg !2294
  %46 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %45, i32 0, i32 1, !dbg !2294
  %47 = getelementptr inbounds [257 x i8], ptr %46, i64 0, i64 0, !dbg !2294
  %48 = load ptr, ptr %8, align 8, !dbg !2294
  %49 = call ptr @PQgetvalue(ptr noundef %48, i32 noundef 0, i32 noundef 0), !dbg !2294
  %50 = load i64, ptr %9, align 8, !dbg !2294
  %51 = call ptr @strncpy(ptr noundef %47, ptr noundef %49, i64 noundef %50) #6, !dbg !2294
  %52 = load ptr, ptr %4, align 8, !dbg !2294
  %53 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %52, i32 0, i32 1, !dbg !2294
  %54 = getelementptr inbounds [257 x i8], ptr %53, i64 0, i64 0, !dbg !2294
  %55 = load i64, ptr %9, align 8, !dbg !2294
  %56 = sub i64 %55, 1, !dbg !2294
  %57 = getelementptr inbounds i8, ptr %54, i64 %56, !dbg !2294
  store i8 0, ptr %57, align 1, !dbg !2294
  br label %58, !dbg !2295

58:                                               ; preds = %44, %37
  br label %59, !dbg !2289

59:                                               ; preds = %58
  %60 = load ptr, ptr %8, align 8, !dbg !2296
  %61 = call ptr @PQgetvalue(ptr noundef %60, i32 noundef 0, i32 noundef 1), !dbg !2297
  %62 = call i64 @strtoll(ptr noundef %61, ptr noundef null, i32 noundef 10) #6, !dbg !2298
  %63 = load ptr, ptr %4, align 8, !dbg !2299
  %64 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %63, i32 0, i32 2, !dbg !2300
  store i64 %62, ptr %64, align 8, !dbg !2301
  %65 = load ptr, ptr %8, align 8, !dbg !2302
  %66 = call ptr @PQgetvalue(ptr noundef %65, i32 noundef 0, i32 noundef 2), !dbg !2303
  %67 = call i64 @strtol(ptr noundef %66, ptr noundef null, i32 noundef 10) #6, !dbg !2304
  %68 = trunc i64 %67 to i32, !dbg !2305
  %69 = load ptr, ptr %4, align 8, !dbg !2306
  %70 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %69, i32 0, i32 3, !dbg !2307
  store i32 %68, ptr %70, align 8, !dbg !2308
  br label %71, !dbg !2309

71:                                               ; preds = %59
  %72 = load ptr, ptr %4, align 8, !dbg !2310
  %73 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %72, i32 0, i32 4, !dbg !2310
  %74 = getelementptr inbounds [65 x i8], ptr %73, i64 0, i64 0, !dbg !2310
  %75 = load ptr, ptr %8, align 8, !dbg !2310
  %76 = call ptr @PQgetvalue(ptr noundef %75, i32 noundef 0, i32 noundef 3), !dbg !2310
  %77 = icmp ne ptr %74, %76, !dbg !2310
  br i1 %77, label %78, label %92, !dbg !2313

78:                                               ; preds = %71
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2314, metadata !DIExpression()), !dbg !2318
  store i64 65, ptr %10, align 8, !dbg !2318
  %79 = load ptr, ptr %4, align 8, !dbg !2318
  %80 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %79, i32 0, i32 4, !dbg !2318
  %81 = getelementptr inbounds [65 x i8], ptr %80, i64 0, i64 0, !dbg !2318
  %82 = load ptr, ptr %8, align 8, !dbg !2318
  %83 = call ptr @PQgetvalue(ptr noundef %82, i32 noundef 0, i32 noundef 3), !dbg !2318
  %84 = load i64, ptr %10, align 8, !dbg !2318
  %85 = call ptr @strncpy(ptr noundef %81, ptr noundef %83, i64 noundef %84) #6, !dbg !2318
  %86 = load ptr, ptr %4, align 8, !dbg !2318
  %87 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %86, i32 0, i32 4, !dbg !2318
  %88 = getelementptr inbounds [65 x i8], ptr %87, i64 0, i64 0, !dbg !2318
  %89 = load i64, ptr %10, align 8, !dbg !2318
  %90 = sub i64 %89, 1, !dbg !2318
  %91 = getelementptr inbounds i8, ptr %88, i64 %90, !dbg !2318
  store i8 0, ptr %91, align 1, !dbg !2318
  br label %92, !dbg !2319

92:                                               ; preds = %78, %71
  br label %93, !dbg !2313

93:                                               ; preds = %92
  br label %94, !dbg !2320

94:                                               ; preds = %93
  %95 = load ptr, ptr %4, align 8, !dbg !2321
  %96 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %95, i32 0, i32 5, !dbg !2321
  %97 = getelementptr inbounds [128 x i8], ptr %96, i64 0, i64 0, !dbg !2321
  %98 = load ptr, ptr %8, align 8, !dbg !2321
  %99 = call ptr @PQgetvalue(ptr noundef %98, i32 noundef 0, i32 noundef 4), !dbg !2321
  %100 = icmp ne ptr %97, %99, !dbg !2321
  br i1 %100, label %101, label %115, !dbg !2324

101:                                              ; preds = %94
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2325, metadata !DIExpression()), !dbg !2329
  store i64 128, ptr %11, align 8, !dbg !2329
  %102 = load ptr, ptr %4, align 8, !dbg !2329
  %103 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %102, i32 0, i32 5, !dbg !2329
  %104 = getelementptr inbounds [128 x i8], ptr %103, i64 0, i64 0, !dbg !2329
  %105 = load ptr, ptr %8, align 8, !dbg !2329
  %106 = call ptr @PQgetvalue(ptr noundef %105, i32 noundef 0, i32 noundef 4), !dbg !2329
  %107 = load i64, ptr %11, align 8, !dbg !2329
  %108 = call ptr @strncpy(ptr noundef %104, ptr noundef %106, i64 noundef %107) #6, !dbg !2329
  %109 = load ptr, ptr %4, align 8, !dbg !2329
  %110 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %109, i32 0, i32 5, !dbg !2329
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !2329
  %112 = load i64, ptr %11, align 8, !dbg !2329
  %113 = sub i64 %112, 1, !dbg !2329
  %114 = getelementptr inbounds i8, ptr %111, i64 %113, !dbg !2329
  store i8 0, ptr %114, align 1, !dbg !2329
  br label %115, !dbg !2330

115:                                              ; preds = %101, %94
  br label %116, !dbg !2324

116:                                              ; preds = %115
  br label %117, !dbg !2331

117:                                              ; preds = %116
  %118 = load ptr, ptr %4, align 8, !dbg !2332
  %119 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %118, i32 0, i32 0, !dbg !2332
  %120 = getelementptr inbounds [129 x i8], ptr %119, i64 0, i64 0, !dbg !2332
  %121 = load ptr, ptr %3, align 8, !dbg !2332
  %122 = icmp ne ptr %120, %121, !dbg !2332
  br i1 %122, label %123, label %136, !dbg !2335

123:                                              ; preds = %117
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2336, metadata !DIExpression()), !dbg !2340
  store i64 129, ptr %12, align 8, !dbg !2340
  %124 = load ptr, ptr %4, align 8, !dbg !2340
  %125 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %124, i32 0, i32 0, !dbg !2340
  %126 = getelementptr inbounds [129 x i8], ptr %125, i64 0, i64 0, !dbg !2340
  %127 = load ptr, ptr %3, align 8, !dbg !2340
  %128 = load i64, ptr %12, align 8, !dbg !2340
  %129 = call ptr @strncpy(ptr noundef %126, ptr noundef %127, i64 noundef %128) #6, !dbg !2340
  %130 = load ptr, ptr %4, align 8, !dbg !2340
  %131 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %130, i32 0, i32 0, !dbg !2340
  %132 = getelementptr inbounds [129 x i8], ptr %131, i64 0, i64 0, !dbg !2340
  %133 = load i64, ptr %12, align 8, !dbg !2340
  %134 = sub i64 %133, 1, !dbg !2340
  %135 = getelementptr inbounds i8, ptr %132, i64 %134, !dbg !2340
  store i8 0, ptr %135, align 1, !dbg !2340
  br label %136, !dbg !2341

136:                                              ; preds = %123, %117
  br label %137, !dbg !2335

137:                                              ; preds = %136
  store i32 0, ptr %5, align 4, !dbg !2342
  br label %138

138:                                              ; preds = %137, %33
  %139 = load ptr, ptr %8, align 8, !dbg !2343
  %140 = icmp ne ptr %139, null, !dbg !2343
  br i1 %140, label %141, label %143, !dbg !2345

141:                                              ; preds = %138
  %142 = load ptr, ptr %8, align 8, !dbg !2346
  call void @PQclear(ptr noundef %142), !dbg !2348
  br label %143, !dbg !2349

143:                                              ; preds = %141, %138
  br label %144, !dbg !2350

144:                                              ; preds = %143, %2
  %145 = load i32, ptr %5, align 4, !dbg !2351
  ret i32 %145, !dbg !2352
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_del_oauth_key(ptr noundef %0) #0 !dbg !2353 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2354, metadata !DIExpression()), !dbg !2355
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2356, metadata !DIExpression()), !dbg !2357
  store i32 -1, ptr %3, align 4, !dbg !2357
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2358, metadata !DIExpression()), !dbg !2359
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2360, metadata !DIExpression()), !dbg !2361
  %7 = call ptr @get_pqdb_connection(), !dbg !2362
  store ptr %7, ptr %5, align 8, !dbg !2361
  %8 = load ptr, ptr %5, align 8, !dbg !2363
  %9 = icmp ne ptr %8, null, !dbg !2363
  br i1 %9, label %10, label %33, !dbg !2365

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2366
  %12 = load ptr, ptr %2, align 8, !dbg !2368
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.53, ptr noundef %12) #6, !dbg !2369
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2370, metadata !DIExpression()), !dbg !2371
  %14 = load ptr, ptr %5, align 8, !dbg !2372
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2373
  %16 = call ptr @PQexec(ptr noundef %14, ptr noundef %15), !dbg !2374
  store ptr %16, ptr %6, align 8, !dbg !2371
  %17 = load ptr, ptr %6, align 8, !dbg !2375
  %18 = icmp ne ptr %17, null, !dbg !2375
  br i1 %18, label %19, label %23, !dbg !2377

19:                                               ; preds = %10
  %20 = load ptr, ptr %6, align 8, !dbg !2378
  %21 = call i32 @PQresultStatus(ptr noundef %20), !dbg !2379
  %22 = icmp ne i32 %21, 1, !dbg !2380
  br i1 %22, label %23, label %26, !dbg !2381

23:                                               ; preds = %19, %10
  %24 = load ptr, ptr %5, align 8, !dbg !2382
  %25 = call ptr @PQerrorMessage(ptr noundef %24), !dbg !2384
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.54, ptr noundef %25), !dbg !2385
  br label %27, !dbg !2386

26:                                               ; preds = %19
  store i32 0, ptr %3, align 4, !dbg !2387
  br label %27

27:                                               ; preds = %26, %23
  %28 = load ptr, ptr %6, align 8, !dbg !2389
  %29 = icmp ne ptr %28, null, !dbg !2389
  br i1 %29, label %30, label %32, !dbg !2391

30:                                               ; preds = %27
  %31 = load ptr, ptr %6, align 8, !dbg !2392
  call void @PQclear(ptr noundef %31), !dbg !2394
  br label %32, !dbg !2395

32:                                               ; preds = %30, %27
  br label %33, !dbg !2396

33:                                               ; preds = %32, %1
  %34 = load i32, ptr %3, align 4, !dbg !2397
  ret i32 %34, !dbg !2398
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_oauth_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !2399 {
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
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca [256 x i8], align 16
  %23 = alloca [256 x i8], align 16
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2400, metadata !DIExpression()), !dbg !2401
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2402, metadata !DIExpression()), !dbg !2403
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2404, metadata !DIExpression()), !dbg !2405
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2406, metadata !DIExpression()), !dbg !2407
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2408, metadata !DIExpression()), !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2412, metadata !DIExpression()), !dbg !2413
  store ptr %11, ptr %12, align 8, !dbg !2413
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2414, metadata !DIExpression()), !dbg !2415
  store i32 -1, ptr %13, align 4, !dbg !2415
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2416, metadata !DIExpression()), !dbg !2417
  %24 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2418
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 1025, ptr noundef @.str.55) #6, !dbg !2419
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2420, metadata !DIExpression()), !dbg !2421
  %26 = call ptr @get_pqdb_connection(), !dbg !2422
  store ptr %26, ptr %15, align 8, !dbg !2421
  %27 = load ptr, ptr %15, align 8, !dbg !2423
  %28 = icmp ne ptr %27, null, !dbg !2423
  br i1 %28, label %29, label %224, !dbg !2425

29:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2426, metadata !DIExpression()), !dbg !2428
  %30 = load ptr, ptr %15, align 8, !dbg !2429
  %31 = getelementptr inbounds [1025 x i8], ptr %14, i64 0, i64 0, !dbg !2430
  %32 = call ptr @PQexec(ptr noundef %30, ptr noundef %31), !dbg !2431
  store ptr %32, ptr %16, align 8, !dbg !2428
  %33 = load ptr, ptr %16, align 8, !dbg !2432
  %34 = icmp ne ptr %33, null, !dbg !2432
  br i1 %34, label %35, label %39, !dbg !2434

35:                                               ; preds = %29
  %36 = load ptr, ptr %16, align 8, !dbg !2435
  %37 = call i32 @PQresultStatus(ptr noundef %36), !dbg !2436
  %38 = icmp ne i32 %37, 2, !dbg !2437
  br i1 %38, label %39, label %42, !dbg !2438

39:                                               ; preds = %35, %29
  %40 = load ptr, ptr %15, align 8, !dbg !2439
  %41 = call ptr @PQerrorMessage(ptr noundef %40), !dbg !2441
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %41), !dbg !2442
  br label %218, !dbg !2443

42:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2444, metadata !DIExpression()), !dbg !2446
  store i32 0, ptr %17, align 4, !dbg !2446
  store i32 0, ptr %17, align 4, !dbg !2447
  br label %43, !dbg !2449

43:                                               ; preds = %214, %42
  %44 = load i32, ptr %17, align 4, !dbg !2450
  %45 = load ptr, ptr %16, align 8, !dbg !2452
  %46 = call i32 @PQntuples(ptr noundef %45), !dbg !2453
  %47 = icmp slt i32 %44, %46, !dbg !2454
  br i1 %47, label %48, label %217, !dbg !2455

48:                                               ; preds = %43
  br label %49, !dbg !2456

49:                                               ; preds = %48
  %50 = load ptr, ptr %12, align 8, !dbg !2458
  %51 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %50, i32 0, i32 1, !dbg !2458
  %52 = getelementptr inbounds [257 x i8], ptr %51, i64 0, i64 0, !dbg !2458
  %53 = load ptr, ptr %16, align 8, !dbg !2458
  %54 = load i32, ptr %17, align 4, !dbg !2458
  %55 = call ptr @PQgetvalue(ptr noundef %53, i32 noundef %54, i32 noundef 0), !dbg !2458
  %56 = icmp ne ptr %52, %55, !dbg !2458
  br i1 %56, label %57, label %72, !dbg !2461

57:                                               ; preds = %49
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2462, metadata !DIExpression()), !dbg !2466
  store i64 257, ptr %18, align 8, !dbg !2466
  %58 = load ptr, ptr %12, align 8, !dbg !2466
  %59 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %58, i32 0, i32 1, !dbg !2466
  %60 = getelementptr inbounds [257 x i8], ptr %59, i64 0, i64 0, !dbg !2466
  %61 = load ptr, ptr %16, align 8, !dbg !2466
  %62 = load i32, ptr %17, align 4, !dbg !2466
  %63 = call ptr @PQgetvalue(ptr noundef %61, i32 noundef %62, i32 noundef 0), !dbg !2466
  %64 = load i64, ptr %18, align 8, !dbg !2466
  %65 = call ptr @strncpy(ptr noundef %60, ptr noundef %63, i64 noundef %64) #6, !dbg !2466
  %66 = load ptr, ptr %12, align 8, !dbg !2466
  %67 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %66, i32 0, i32 1, !dbg !2466
  %68 = getelementptr inbounds [257 x i8], ptr %67, i64 0, i64 0, !dbg !2466
  %69 = load i64, ptr %18, align 8, !dbg !2466
  %70 = sub i64 %69, 1, !dbg !2466
  %71 = getelementptr inbounds i8, ptr %68, i64 %70, !dbg !2466
  store i8 0, ptr %71, align 1, !dbg !2466
  br label %72, !dbg !2467

72:                                               ; preds = %57, %49
  br label %73, !dbg !2461

73:                                               ; preds = %72
  %74 = load ptr, ptr %16, align 8, !dbg !2468
  %75 = load i32, ptr %17, align 4, !dbg !2469
  %76 = call ptr @PQgetvalue(ptr noundef %74, i32 noundef %75, i32 noundef 1), !dbg !2470
  %77 = call i64 @strtoll(ptr noundef %76, ptr noundef null, i32 noundef 10) #6, !dbg !2471
  %78 = load ptr, ptr %12, align 8, !dbg !2472
  %79 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %78, i32 0, i32 2, !dbg !2473
  store i64 %77, ptr %79, align 8, !dbg !2474
  %80 = load ptr, ptr %16, align 8, !dbg !2475
  %81 = load i32, ptr %17, align 4, !dbg !2476
  %82 = call ptr @PQgetvalue(ptr noundef %80, i32 noundef %81, i32 noundef 2), !dbg !2477
  %83 = call i64 @strtol(ptr noundef %82, ptr noundef null, i32 noundef 10) #6, !dbg !2478
  %84 = trunc i64 %83 to i32, !dbg !2479
  %85 = load ptr, ptr %12, align 8, !dbg !2480
  %86 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %85, i32 0, i32 3, !dbg !2481
  store i32 %84, ptr %86, align 8, !dbg !2482
  br label %87, !dbg !2483

87:                                               ; preds = %73
  %88 = load ptr, ptr %12, align 8, !dbg !2484
  %89 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %88, i32 0, i32 4, !dbg !2484
  %90 = getelementptr inbounds [65 x i8], ptr %89, i64 0, i64 0, !dbg !2484
  %91 = load ptr, ptr %16, align 8, !dbg !2484
  %92 = load i32, ptr %17, align 4, !dbg !2484
  %93 = call ptr @PQgetvalue(ptr noundef %91, i32 noundef %92, i32 noundef 3), !dbg !2484
  %94 = icmp ne ptr %90, %93, !dbg !2484
  br i1 %94, label %95, label %110, !dbg !2487

95:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2488, metadata !DIExpression()), !dbg !2492
  store i64 65, ptr %19, align 8, !dbg !2492
  %96 = load ptr, ptr %12, align 8, !dbg !2492
  %97 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %96, i32 0, i32 4, !dbg !2492
  %98 = getelementptr inbounds [65 x i8], ptr %97, i64 0, i64 0, !dbg !2492
  %99 = load ptr, ptr %16, align 8, !dbg !2492
  %100 = load i32, ptr %17, align 4, !dbg !2492
  %101 = call ptr @PQgetvalue(ptr noundef %99, i32 noundef %100, i32 noundef 3), !dbg !2492
  %102 = load i64, ptr %19, align 8, !dbg !2492
  %103 = call ptr @strncpy(ptr noundef %98, ptr noundef %101, i64 noundef %102) #6, !dbg !2492
  %104 = load ptr, ptr %12, align 8, !dbg !2492
  %105 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %104, i32 0, i32 4, !dbg !2492
  %106 = getelementptr inbounds [65 x i8], ptr %105, i64 0, i64 0, !dbg !2492
  %107 = load i64, ptr %19, align 8, !dbg !2492
  %108 = sub i64 %107, 1, !dbg !2492
  %109 = getelementptr inbounds i8, ptr %106, i64 %108, !dbg !2492
  store i8 0, ptr %109, align 1, !dbg !2492
  br label %110, !dbg !2493

110:                                              ; preds = %95, %87
  br label %111, !dbg !2487

111:                                              ; preds = %110
  br label %112, !dbg !2494

112:                                              ; preds = %111
  %113 = load ptr, ptr %12, align 8, !dbg !2495
  %114 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %113, i32 0, i32 5, !dbg !2495
  %115 = getelementptr inbounds [128 x i8], ptr %114, i64 0, i64 0, !dbg !2495
  %116 = load ptr, ptr %16, align 8, !dbg !2495
  %117 = load i32, ptr %17, align 4, !dbg !2495
  %118 = call ptr @PQgetvalue(ptr noundef %116, i32 noundef %117, i32 noundef 4), !dbg !2495
  %119 = icmp ne ptr %115, %118, !dbg !2495
  br i1 %119, label %120, label %135, !dbg !2498

120:                                              ; preds = %112
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2499, metadata !DIExpression()), !dbg !2503
  store i64 128, ptr %20, align 8, !dbg !2503
  %121 = load ptr, ptr %12, align 8, !dbg !2503
  %122 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %121, i32 0, i32 5, !dbg !2503
  %123 = getelementptr inbounds [128 x i8], ptr %122, i64 0, i64 0, !dbg !2503
  %124 = load ptr, ptr %16, align 8, !dbg !2503
  %125 = load i32, ptr %17, align 4, !dbg !2503
  %126 = call ptr @PQgetvalue(ptr noundef %124, i32 noundef %125, i32 noundef 4), !dbg !2503
  %127 = load i64, ptr %20, align 8, !dbg !2503
  %128 = call ptr @strncpy(ptr noundef %123, ptr noundef %126, i64 noundef %127) #6, !dbg !2503
  %129 = load ptr, ptr %12, align 8, !dbg !2503
  %130 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %129, i32 0, i32 5, !dbg !2503
  %131 = getelementptr inbounds [128 x i8], ptr %130, i64 0, i64 0, !dbg !2503
  %132 = load i64, ptr %20, align 8, !dbg !2503
  %133 = sub i64 %132, 1, !dbg !2503
  %134 = getelementptr inbounds i8, ptr %131, i64 %133, !dbg !2503
  store i8 0, ptr %134, align 1, !dbg !2503
  br label %135, !dbg !2504

135:                                              ; preds = %120, %112
  br label %136, !dbg !2498

136:                                              ; preds = %135
  br label %137, !dbg !2505

137:                                              ; preds = %136
  %138 = load ptr, ptr %12, align 8, !dbg !2506
  %139 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %138, i32 0, i32 0, !dbg !2506
  %140 = getelementptr inbounds [129 x i8], ptr %139, i64 0, i64 0, !dbg !2506
  %141 = load ptr, ptr %16, align 8, !dbg !2506
  %142 = load i32, ptr %17, align 4, !dbg !2506
  %143 = call ptr @PQgetvalue(ptr noundef %141, i32 noundef %142, i32 noundef 5), !dbg !2506
  %144 = icmp ne ptr %140, %143, !dbg !2506
  br i1 %144, label %145, label %160, !dbg !2509

145:                                              ; preds = %137
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2510, metadata !DIExpression()), !dbg !2514
  store i64 129, ptr %21, align 8, !dbg !2514
  %146 = load ptr, ptr %12, align 8, !dbg !2514
  %147 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %146, i32 0, i32 0, !dbg !2514
  %148 = getelementptr inbounds [129 x i8], ptr %147, i64 0, i64 0, !dbg !2514
  %149 = load ptr, ptr %16, align 8, !dbg !2514
  %150 = load i32, ptr %17, align 4, !dbg !2514
  %151 = call ptr @PQgetvalue(ptr noundef %149, i32 noundef %150, i32 noundef 5), !dbg !2514
  %152 = load i64, ptr %21, align 8, !dbg !2514
  %153 = call ptr @strncpy(ptr noundef %148, ptr noundef %151, i64 noundef %152) #6, !dbg !2514
  %154 = load ptr, ptr %12, align 8, !dbg !2514
  %155 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %154, i32 0, i32 0, !dbg !2514
  %156 = getelementptr inbounds [129 x i8], ptr %155, i64 0, i64 0, !dbg !2514
  %157 = load i64, ptr %21, align 8, !dbg !2514
  %158 = sub i64 %157, 1, !dbg !2514
  %159 = getelementptr inbounds i8, ptr %156, i64 %158, !dbg !2514
  store i8 0, ptr %159, align 1, !dbg !2514
  br label %160, !dbg !2515

160:                                              ; preds = %145, %137
  br label %161, !dbg !2509

161:                                              ; preds = %160
  %162 = load ptr, ptr %6, align 8, !dbg !2516
  %163 = icmp ne ptr %162, null, !dbg !2516
  br i1 %163, label %164, label %192, !dbg !2518

164:                                              ; preds = %161
  %165 = load ptr, ptr %6, align 8, !dbg !2519
  %166 = load ptr, ptr %12, align 8, !dbg !2521
  %167 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %166, i32 0, i32 0, !dbg !2522
  %168 = getelementptr inbounds [129 x i8], ptr %167, i64 0, i64 0, !dbg !2521
  call void @add_to_secrets_list(ptr noundef %165, ptr noundef %168), !dbg !2523
  %169 = load ptr, ptr %7, align 8, !dbg !2524
  %170 = load ptr, ptr %12, align 8, !dbg !2525
  %171 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %170, i32 0, i32 4, !dbg !2526
  %172 = getelementptr inbounds [65 x i8], ptr %171, i64 0, i64 0, !dbg !2525
  call void @add_to_secrets_list(ptr noundef %169, ptr noundef %172), !dbg !2527
  %173 = load ptr, ptr %10, align 8, !dbg !2528
  %174 = load ptr, ptr %12, align 8, !dbg !2529
  %175 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %174, i32 0, i32 5, !dbg !2530
  %176 = getelementptr inbounds [128 x i8], ptr %175, i64 0, i64 0, !dbg !2529
  call void @add_to_secrets_list(ptr noundef %173, ptr noundef %176), !dbg !2531
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2532, metadata !DIExpression()), !dbg !2537
  %177 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !2538
  %178 = load ptr, ptr %12, align 8, !dbg !2539
  %179 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %178, i32 0, i32 2, !dbg !2540
  %180 = load i64, ptr %179, align 8, !dbg !2540
  %181 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %177, i64 noundef 255, ptr noundef @.str.56, i64 noundef %180) #6, !dbg !2541
  %182 = load ptr, ptr %8, align 8, !dbg !2542
  %183 = getelementptr inbounds [256 x i8], ptr %22, i64 0, i64 0, !dbg !2543
  call void @add_to_secrets_list(ptr noundef %182, ptr noundef %183), !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2545, metadata !DIExpression()), !dbg !2547
  %184 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !2548
  %185 = load ptr, ptr %12, align 8, !dbg !2549
  %186 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %185, i32 0, i32 3, !dbg !2550
  %187 = load i32, ptr %186, align 8, !dbg !2550
  %188 = zext i32 %187 to i64, !dbg !2551
  %189 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %184, i64 noundef 255, ptr noundef @.str.57, i64 noundef %188) #6, !dbg !2552
  %190 = load ptr, ptr %9, align 8, !dbg !2553
  %191 = getelementptr inbounds [256 x i8], ptr %23, i64 0, i64 0, !dbg !2554
  call void @add_to_secrets_list(ptr noundef %190, ptr noundef %191), !dbg !2555
  br label %213, !dbg !2556

192:                                              ; preds = %161
  %193 = load ptr, ptr %12, align 8, !dbg !2557
  %194 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %193, i32 0, i32 0, !dbg !2559
  %195 = getelementptr inbounds [129 x i8], ptr %194, i64 0, i64 0, !dbg !2557
  %196 = load ptr, ptr %12, align 8, !dbg !2560
  %197 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %196, i32 0, i32 1, !dbg !2561
  %198 = getelementptr inbounds [257 x i8], ptr %197, i64 0, i64 0, !dbg !2560
  %199 = load ptr, ptr %12, align 8, !dbg !2562
  %200 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %199, i32 0, i32 2, !dbg !2563
  %201 = load i64, ptr %200, align 8, !dbg !2563
  %202 = load ptr, ptr %12, align 8, !dbg !2564
  %203 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %202, i32 0, i32 3, !dbg !2565
  %204 = load i32, ptr %203, align 8, !dbg !2565
  %205 = zext i32 %204 to i64, !dbg !2566
  %206 = load ptr, ptr %12, align 8, !dbg !2567
  %207 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %206, i32 0, i32 4, !dbg !2568
  %208 = getelementptr inbounds [65 x i8], ptr %207, i64 0, i64 0, !dbg !2567
  %209 = load ptr, ptr %12, align 8, !dbg !2569
  %210 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %209, i32 0, i32 5, !dbg !2570
  %211 = getelementptr inbounds [128 x i8], ptr %210, i64 0, i64 0, !dbg !2569
  %212 = call i32 (ptr, ...) @printf(ptr noundef @.str.58, ptr noundef %195, ptr noundef %198, i64 noundef %201, i64 noundef %205, ptr noundef %208, ptr noundef %211), !dbg !2571
  br label %213

213:                                              ; preds = %192, %164
  store i32 0, ptr %13, align 4, !dbg !2572
  br label %214, !dbg !2573

214:                                              ; preds = %213
  %215 = load i32, ptr %17, align 4, !dbg !2574
  %216 = add nsw i32 %215, 1, !dbg !2574
  store i32 %216, ptr %17, align 4, !dbg !2574
  br label %43, !dbg !2575, !llvm.loop !2576

217:                                              ; preds = %43
  br label %218

218:                                              ; preds = %217, %39
  %219 = load ptr, ptr %16, align 8, !dbg !2578
  %220 = icmp ne ptr %219, null, !dbg !2578
  br i1 %220, label %221, label %223, !dbg !2580

221:                                              ; preds = %218
  %222 = load ptr, ptr %16, align 8, !dbg !2581
  call void @PQclear(ptr noundef %222), !dbg !2583
  br label %223, !dbg !2584

223:                                              ; preds = %221, %218
  br label %224, !dbg !2585

224:                                              ; preds = %223, %5
  %225 = load i32, ptr %13, align 4, !dbg !2586
  ret i32 %225, !dbg !2587
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_get_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2588 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca [1025 x i8], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2589, metadata !DIExpression()), !dbg !2590
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2591, metadata !DIExpression()), !dbg !2592
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2595, metadata !DIExpression()), !dbg !2596
  store i32 -1, ptr %7, align 4, !dbg !2596
  %12 = load ptr, ptr %5, align 8, !dbg !2597
  %13 = getelementptr inbounds i8, ptr %12, i64 0, !dbg !2597
  store i8 0, ptr %13, align 1, !dbg !2598
  %14 = load ptr, ptr %6, align 8, !dbg !2599
  %15 = getelementptr inbounds i8, ptr %14, i64 0, !dbg !2599
  store i8 0, ptr %15, align 1, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2601, metadata !DIExpression()), !dbg !2602
  %16 = call ptr @get_pqdb_connection(), !dbg !2603
  store ptr %16, ptr %8, align 8, !dbg !2602
  %17 = load ptr, ptr %8, align 8, !dbg !2604
  %18 = icmp ne ptr %17, null, !dbg !2604
  br i1 %18, label %19, label %64, !dbg !2606

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2607, metadata !DIExpression()), !dbg !2609
  %20 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2610
  %21 = load ptr, ptr %4, align 8, !dbg !2611
  %22 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %20, i64 noundef 1025, ptr noundef @.str.59, ptr noundef %21) #6, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2613, metadata !DIExpression()), !dbg !2614
  %23 = load ptr, ptr %8, align 8, !dbg !2615
  %24 = getelementptr inbounds [1025 x i8], ptr %9, i64 0, i64 0, !dbg !2616
  %25 = call ptr @PQexec(ptr noundef %23, ptr noundef %24), !dbg !2617
  store ptr %25, ptr %10, align 8, !dbg !2614
  %26 = load ptr, ptr %10, align 8, !dbg !2618
  %27 = icmp ne ptr %26, null, !dbg !2618
  br i1 %27, label %28, label %36, !dbg !2620

28:                                               ; preds = %19
  %29 = load ptr, ptr %10, align 8, !dbg !2621
  %30 = call i32 @PQresultStatus(ptr noundef %29), !dbg !2622
  %31 = icmp ne i32 %30, 2, !dbg !2623
  br i1 %31, label %36, label %32, !dbg !2624

32:                                               ; preds = %28
  %33 = load ptr, ptr %10, align 8, !dbg !2625
  %34 = call i32 @PQntuples(ptr noundef %33), !dbg !2626
  %35 = icmp ne i32 %34, 1, !dbg !2627
  br i1 %35, label %36, label %39, !dbg !2628

36:                                               ; preds = %32, %28, %19
  %37 = load ptr, ptr %8, align 8, !dbg !2629
  %38 = call ptr @PQerrorMessage(ptr noundef %37), !dbg !2631
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %38), !dbg !2632
  br label %58, !dbg !2633

39:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2634, metadata !DIExpression()), !dbg !2636
  %40 = load ptr, ptr %10, align 8, !dbg !2637
  %41 = call ptr @PQgetvalue(ptr noundef %40, i32 noundef 0, i32 noundef 0), !dbg !2638
  store ptr %41, ptr %11, align 8, !dbg !2636
  %42 = load ptr, ptr %11, align 8, !dbg !2639
  %43 = icmp ne ptr %42, null, !dbg !2639
  br i1 %43, label %44, label %48, !dbg !2641

44:                                               ; preds = %39
  %45 = load ptr, ptr %5, align 8, !dbg !2642
  %46 = load ptr, ptr %11, align 8, !dbg !2644
  %47 = call ptr @strncpy(ptr noundef %45, ptr noundef %46, i64 noundef 127) #6, !dbg !2645
  br label %48, !dbg !2646

48:                                               ; preds = %44, %39
  %49 = load ptr, ptr %10, align 8, !dbg !2647
  %50 = call ptr @PQgetvalue(ptr noundef %49, i32 noundef 0, i32 noundef 1), !dbg !2648
  store ptr %50, ptr %11, align 8, !dbg !2649
  %51 = load ptr, ptr %11, align 8, !dbg !2650
  %52 = icmp ne ptr %51, null, !dbg !2650
  br i1 %52, label %53, label %57, !dbg !2652

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 8, !dbg !2653
  %55 = load ptr, ptr %11, align 8, !dbg !2655
  %56 = call ptr @strncpy(ptr noundef %54, ptr noundef %55, i64 noundef 256) #6, !dbg !2656
  br label %57, !dbg !2657

57:                                               ; preds = %53, %48
  store i32 0, ptr %7, align 4, !dbg !2658
  br label %58

58:                                               ; preds = %57, %36
  %59 = load ptr, ptr %10, align 8, !dbg !2659
  %60 = icmp ne ptr %59, null, !dbg !2659
  br i1 %60, label %61, label %63, !dbg !2661

61:                                               ; preds = %58
  %62 = load ptr, ptr %10, align 8, !dbg !2662
  call void @PQclear(ptr noundef %62), !dbg !2663
  br label %63, !dbg !2663

63:                                               ; preds = %61, %58
  br label %64, !dbg !2664

64:                                               ; preds = %63, %3
  %65 = load i32, ptr %7, align 4, !dbg !2665
  ret i32 %65, !dbg !2666
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_set_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2667 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [1025 x i8], align 16
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2668, metadata !DIExpression()), !dbg !2669
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2670, metadata !DIExpression()), !dbg !2671
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2672, metadata !DIExpression()), !dbg !2673
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2674, metadata !DIExpression()), !dbg !2675
  store i32 -1, ptr %7, align 4, !dbg !2675
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2676, metadata !DIExpression()), !dbg !2677
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2678
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2679, metadata !DIExpression()), !dbg !2680
  %11 = call ptr @get_pqdb_connection(), !dbg !2681
  store ptr %11, ptr %9, align 8, !dbg !2680
  %12 = load ptr, ptr %9, align 8, !dbg !2682
  %13 = icmp ne ptr %12, null, !dbg !2682
  br i1 %13, label %14, label %60, !dbg !2684

14:                                               ; preds = %3
  %15 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2685
  %16 = load ptr, ptr %5, align 8, !dbg !2687
  %17 = load ptr, ptr %4, align 8, !dbg !2688
  %18 = load ptr, ptr %6, align 8, !dbg !2689
  %19 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %15, i64 noundef 1025, ptr noundef @.str.60, ptr noundef %16, ptr noundef %17, ptr noundef %18) #6, !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2691, metadata !DIExpression()), !dbg !2692
  %20 = load ptr, ptr %9, align 8, !dbg !2693
  %21 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2694
  %22 = call ptr @PQexec(ptr noundef %20, ptr noundef %21), !dbg !2695
  store ptr %22, ptr %10, align 8, !dbg !2692
  %23 = load ptr, ptr %10, align 8, !dbg !2696
  %24 = icmp ne ptr %23, null, !dbg !2696
  br i1 %24, label %25, label %29, !dbg !2698

25:                                               ; preds = %14
  %26 = load ptr, ptr %10, align 8, !dbg !2699
  %27 = call i32 @PQresultStatus(ptr noundef %26), !dbg !2700
  %28 = icmp ne i32 %27, 1, !dbg !2701
  br i1 %28, label %29, label %54, !dbg !2702

29:                                               ; preds = %25, %14
  %30 = load ptr, ptr %10, align 8, !dbg !2703
  %31 = icmp ne ptr %30, null, !dbg !2703
  br i1 %31, label %32, label %34, !dbg !2706

32:                                               ; preds = %29
  %33 = load ptr, ptr %10, align 8, !dbg !2707
  call void @PQclear(ptr noundef %33), !dbg !2709
  br label %34, !dbg !2710

34:                                               ; preds = %32, %29
  %35 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2711
  %36 = load ptr, ptr %6, align 8, !dbg !2712
  %37 = load ptr, ptr %5, align 8, !dbg !2713
  %38 = load ptr, ptr %4, align 8, !dbg !2714
  %39 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %35, i64 noundef 1025, ptr noundef @.str.61, ptr noundef %36, ptr noundef %37, ptr noundef %38) #6, !dbg !2715
  %40 = load ptr, ptr %9, align 8, !dbg !2716
  %41 = getelementptr inbounds [1025 x i8], ptr %8, i64 0, i64 0, !dbg !2717
  %42 = call ptr @PQexec(ptr noundef %40, ptr noundef %41), !dbg !2718
  store ptr %42, ptr %10, align 8, !dbg !2719
  %43 = load ptr, ptr %10, align 8, !dbg !2720
  %44 = icmp ne ptr %43, null, !dbg !2720
  br i1 %44, label %45, label %49, !dbg !2722

45:                                               ; preds = %34
  %46 = load ptr, ptr %10, align 8, !dbg !2723
  %47 = call i32 @PQresultStatus(ptr noundef %46), !dbg !2724
  %48 = icmp ne i32 %47, 1, !dbg !2725
  br i1 %48, label %49, label %52, !dbg !2726

49:                                               ; preds = %45, %34
  %50 = load ptr, ptr %9, align 8, !dbg !2727
  %51 = call ptr @PQerrorMessage(ptr noundef %50), !dbg !2729
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.12, ptr noundef %51), !dbg !2730
  br label %53, !dbg !2731

52:                                               ; preds = %45
  store i32 0, ptr %7, align 4, !dbg !2732
  br label %53

53:                                               ; preds = %52, %49
  br label %54, !dbg !2734

54:                                               ; preds = %53, %25
  %55 = load ptr, ptr %10, align 8, !dbg !2735
  %56 = icmp ne ptr %55, null, !dbg !2735
  br i1 %56, label %57, label %59, !dbg !2737

57:                                               ; preds = %54
  %58 = load ptr, ptr %10, align 8, !dbg !2738
  call void @PQclear(ptr noundef %58), !dbg !2740
  br label %59, !dbg !2741

59:                                               ; preds = %57, %54
  br label %60, !dbg !2742

60:                                               ; preds = %59, %3
  %61 = load i32, ptr %7, align 4, !dbg !2743
  ret i32 %61, !dbg !2744
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_del_admin_user(ptr noundef %0) #0 !dbg !2745 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i32 -1, ptr %3, align 4, !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2753, metadata !DIExpression()), !dbg !2754
  %7 = call ptr @get_pqdb_connection(), !dbg !2755
  store ptr %7, ptr %5, align 8, !dbg !2754
  %8 = load ptr, ptr %5, align 8, !dbg !2756
  %9 = icmp ne ptr %8, null, !dbg !2756
  br i1 %9, label %10, label %22, !dbg !2758

10:                                               ; preds = %1
  %11 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2759
  %12 = load ptr, ptr %2, align 8, !dbg !2761
  %13 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %11, i64 noundef 1025, ptr noundef @.str.62, ptr noundef %12) #6, !dbg !2762
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2763, metadata !DIExpression()), !dbg !2764
  %14 = load ptr, ptr %5, align 8, !dbg !2765
  %15 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2766
  %16 = call ptr @PQexec(ptr noundef %14, ptr noundef %15), !dbg !2767
  store ptr %16, ptr %6, align 8, !dbg !2764
  %17 = load ptr, ptr %6, align 8, !dbg !2768
  %18 = icmp ne ptr %17, null, !dbg !2768
  br i1 %18, label %19, label %21, !dbg !2770

19:                                               ; preds = %10
  %20 = load ptr, ptr %6, align 8, !dbg !2771
  call void @PQclear(ptr noundef %20), !dbg !2773
  store i32 0, ptr %3, align 4, !dbg !2774
  br label %21, !dbg !2775

21:                                               ; preds = %19, %10
  br label %22, !dbg !2776

22:                                               ; preds = %21, %1
  %23 = load i32, ptr %3, align 4, !dbg !2777
  ret i32 %23, !dbg !2778
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pgsql_list_admin_users(i32 noundef %0) #0 !dbg !2779 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [1025 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2780, metadata !DIExpression()), !dbg !2781
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i32 -1, ptr %3, align 4, !dbg !2783
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !2786
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2787, metadata !DIExpression()), !dbg !2788
  %10 = call ptr @get_pqdb_connection(), !dbg !2789
  store ptr %10, ptr %5, align 8, !dbg !2788
  %11 = load ptr, ptr %5, align 8, !dbg !2790
  %12 = icmp ne ptr %11, null, !dbg !2790
  br i1 %12, label %13, label %16, !dbg !2792

13:                                               ; preds = %1
  %14 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2793
  %15 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %14, i64 noundef 1025, ptr noundef @.str.63) #6, !dbg !2795
  br label %16, !dbg !2796

16:                                               ; preds = %13, %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2797, metadata !DIExpression()), !dbg !2798
  %17 = load ptr, ptr %5, align 8, !dbg !2799
  %18 = getelementptr inbounds [1025 x i8], ptr %4, i64 0, i64 0, !dbg !2800
  %19 = call ptr @PQexec(ptr noundef %17, ptr noundef %18), !dbg !2801
  store ptr %19, ptr %6, align 8, !dbg !2798
  %20 = load ptr, ptr %6, align 8, !dbg !2802
  %21 = icmp ne ptr %20, null, !dbg !2802
  br i1 %21, label %22, label %26, !dbg !2804

22:                                               ; preds = %16
  %23 = load ptr, ptr %6, align 8, !dbg !2805
  %24 = call i32 @PQresultStatus(ptr noundef %23), !dbg !2806
  %25 = icmp ne i32 %24, 2, !dbg !2807
  br i1 %25, label %26, label %29, !dbg !2808

26:                                               ; preds = %22, %16
  %27 = load ptr, ptr %5, align 8, !dbg !2809
  %28 = call ptr @PQerrorMessage(ptr noundef %27), !dbg !2811
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1, ptr noundef %28), !dbg !2812
  br label %70, !dbg !2813

29:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2814, metadata !DIExpression()), !dbg !2816
  store i32 0, ptr %7, align 4, !dbg !2816
  store i32 0, ptr %3, align 4, !dbg !2817
  store i32 0, ptr %7, align 4, !dbg !2818
  br label %30, !dbg !2820

30:                                               ; preds = %66, %29
  %31 = load i32, ptr %7, align 4, !dbg !2821
  %32 = load ptr, ptr %6, align 8, !dbg !2823
  %33 = call i32 @PQntuples(ptr noundef %32), !dbg !2824
  %34 = icmp slt i32 %31, %33, !dbg !2825
  br i1 %34, label %35, label %69, !dbg !2826

35:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2827, metadata !DIExpression()), !dbg !2829
  %36 = load ptr, ptr %6, align 8, !dbg !2830
  %37 = load i32, ptr %7, align 4, !dbg !2831
  %38 = call ptr @PQgetvalue(ptr noundef %36, i32 noundef %37, i32 noundef 0), !dbg !2832
  store ptr %38, ptr %8, align 8, !dbg !2829
  %39 = load i32, ptr %3, align 4, !dbg !2833
  %40 = add nsw i32 %39, 1, !dbg !2833
  store i32 %40, ptr %3, align 4, !dbg !2833
  %41 = load ptr, ptr %8, align 8, !dbg !2834
  %42 = icmp ne ptr %41, null, !dbg !2834
  br i1 %42, label %43, label %65, !dbg !2836

43:                                               ; preds = %35
  %44 = load i32, ptr %2, align 4, !dbg !2837
  %45 = icmp ne i32 %44, 0, !dbg !2837
  br i1 %45, label %65, label %46, !dbg !2838

46:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2839, metadata !DIExpression()), !dbg !2841
  %47 = load ptr, ptr %6, align 8, !dbg !2842
  %48 = load i32, ptr %7, align 4, !dbg !2843
  %49 = call ptr @PQgetvalue(ptr noundef %47, i32 noundef %48, i32 noundef 1), !dbg !2844
  store ptr %49, ptr %9, align 8, !dbg !2841
  %50 = load ptr, ptr %9, align 8, !dbg !2845
  %51 = icmp ne ptr %50, null, !dbg !2845
  br i1 %51, label %52, label %61, !dbg !2847

52:                                               ; preds = %46
  %53 = load ptr, ptr %9, align 8, !dbg !2848
  %54 = load i8, ptr %53, align 1, !dbg !2849
  %55 = sext i8 %54 to i32, !dbg !2849
  %56 = icmp ne i32 %55, 0, !dbg !2849
  br i1 %56, label %57, label %61, !dbg !2850

57:                                               ; preds = %52
  %58 = load ptr, ptr %8, align 8, !dbg !2851
  %59 = load ptr, ptr %9, align 8, !dbg !2853
  %60 = call i32 (ptr, ...) @printf(ptr noundef @.str.16, ptr noundef %58, ptr noundef %59), !dbg !2854
  br label %64, !dbg !2855

61:                                               ; preds = %52, %46
  %62 = load ptr, ptr %8, align 8, !dbg !2856
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.64, ptr noundef %62), !dbg !2858
  br label %64

64:                                               ; preds = %61, %57
  br label %65, !dbg !2859

65:                                               ; preds = %64, %43, %35
  br label %66, !dbg !2860

66:                                               ; preds = %65
  %67 = load i32, ptr %7, align 4, !dbg !2861
  %68 = add nsw i32 %67, 1, !dbg !2861
  store i32 %68, ptr %7, align 4, !dbg !2861
  br label %30, !dbg !2862, !llvm.loop !2863

69:                                               ; preds = %30
  br label %70

70:                                               ; preds = %69, %26
  %71 = load ptr, ptr %6, align 8, !dbg !2865
  %72 = icmp ne ptr %71, null, !dbg !2865
  br i1 %72, label %73, label %75, !dbg !2867

73:                                               ; preds = %70
  %74 = load ptr, ptr %6, align 8, !dbg !2868
  call void @PQclear(ptr noundef %74), !dbg !2870
  br label %75, !dbg !2871

75:                                               ; preds = %73, %70
  %76 = load i32, ptr %3, align 4, !dbg !2872
  ret i32 %76, !dbg !2873
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pgsql_disconnect() #0 !dbg !2874 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2875, metadata !DIExpression()), !dbg !2876
  %2 = load i32, ptr @connection_key, align 4, !dbg !2877
  %3 = call ptr @pthread_getspecific(i32 noundef %2) #6, !dbg !2878
  store ptr %3, ptr %1, align 8, !dbg !2876
  %4 = load ptr, ptr %1, align 8, !dbg !2879
  %5 = icmp ne ptr %4, null, !dbg !2879
  br i1 %5, label %6, label %8, !dbg !2881

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !2882
  call void @PQfinish(ptr noundef %7), !dbg !2884
  store ptr null, ptr %1, align 8, !dbg !2885
  br label %8, !dbg !2886

8:                                                ; preds = %6, %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.65), !dbg !2887
  ret void, !dbg !2888
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_pqdb_connection() #0 !dbg !2889 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2892, metadata !DIExpression()), !dbg !2898
  %7 = call ptr @get_persistent_users_db(), !dbg !2899
  store ptr %7, ptr %1, align 8, !dbg !2898
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2900, metadata !DIExpression()), !dbg !2901
  %8 = load i32, ptr @connection_key, align 4, !dbg !2902
  %9 = call ptr @pthread_getspecific(i32 noundef %8) #6, !dbg !2903
  store ptr %9, ptr %2, align 8, !dbg !2901
  %10 = load ptr, ptr %2, align 8, !dbg !2904
  %11 = icmp ne ptr %10, null, !dbg !2904
  br i1 %11, label %12, label %23, !dbg !2906

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2907, metadata !DIExpression()), !dbg !2910
  %13 = load ptr, ptr %2, align 8, !dbg !2911
  %14 = call i32 @PQstatus(ptr noundef %13), !dbg !2912
  store i32 %14, ptr %3, align 4, !dbg !2910
  %15 = load i32, ptr %3, align 4, !dbg !2913
  %16 = icmp ne i32 %15, 0, !dbg !2915
  br i1 %16, label %17, label %22, !dbg !2916

17:                                               ; preds = %12
  %18 = load ptr, ptr %2, align 8, !dbg !2917
  call void @PQfinish(ptr noundef %18), !dbg !2919
  store ptr null, ptr %2, align 8, !dbg !2920
  %19 = load i32, ptr @connection_key, align 4, !dbg !2921
  %20 = load ptr, ptr %2, align 8, !dbg !2922
  %21 = call i32 @pthread_setspecific(i32 noundef %19, ptr noundef %20) #6, !dbg !2923
  br label %22, !dbg !2924

22:                                               ; preds = %17, %12
  br label %23, !dbg !2925

23:                                               ; preds = %22, %0
  %24 = load ptr, ptr %2, align 8, !dbg !2926
  %25 = icmp ne ptr %24, null, !dbg !2926
  br i1 %25, label %92, label %26, !dbg !2928

26:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2929, metadata !DIExpression()), !dbg !2931
  store ptr null, ptr %4, align 8, !dbg !2931
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2932, metadata !DIExpression()), !dbg !2944
  %27 = load ptr, ptr %1, align 8, !dbg !2945
  %28 = getelementptr inbounds %struct._persistent_users_db_t, ptr %27, i32 0, i32 0, !dbg !2946
  %29 = getelementptr inbounds [1025 x i8], ptr %28, i64 0, i64 0, !dbg !2945
  %30 = call ptr @PQconninfoParse(ptr noundef %29, ptr noundef %4), !dbg !2947
  store ptr %30, ptr %5, align 8, !dbg !2944
  %31 = load ptr, ptr %5, align 8, !dbg !2948
  %32 = icmp ne ptr %31, null, !dbg !2948
  br i1 %32, label %47, label %33, !dbg !2950

33:                                               ; preds = %26
  %34 = load ptr, ptr %4, align 8, !dbg !2951
  %35 = icmp ne ptr %34, null, !dbg !2951
  br i1 %35, label %36, label %42, !dbg !2954

36:                                               ; preds = %33
  %37 = load ptr, ptr %1, align 8, !dbg !2955
  %38 = getelementptr inbounds %struct._persistent_users_db_t, ptr %37, i32 0, i32 0, !dbg !2957
  %39 = getelementptr inbounds [1025 x i8], ptr %38, i64 0, i64 0, !dbg !2955
  %40 = load ptr, ptr %4, align 8, !dbg !2958
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2, ptr noundef %39, ptr noundef %40), !dbg !2959
  %41 = load ptr, ptr %4, align 8, !dbg !2960
  call void @free(ptr noundef %41) #6, !dbg !2961
  br label %46, !dbg !2962

42:                                               ; preds = %33
  %43 = load ptr, ptr %1, align 8, !dbg !2963
  %44 = getelementptr inbounds %struct._persistent_users_db_t, ptr %43, i32 0, i32 0, !dbg !2965
  %45 = getelementptr inbounds [1025 x i8], ptr %44, i64 0, i64 0, !dbg !2963
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3, ptr noundef %45), !dbg !2966
  br label %46

46:                                               ; preds = %42, %36
  br label %84, !dbg !2967

47:                                               ; preds = %26
  %48 = load ptr, ptr %5, align 8, !dbg !2968
  call void @PQconninfoFree(ptr noundef %48), !dbg !2970
  %49 = load ptr, ptr %4, align 8, !dbg !2971
  %50 = icmp ne ptr %49, null, !dbg !2971
  br i1 %50, label %51, label %53, !dbg !2973

51:                                               ; preds = %47
  %52 = load ptr, ptr %4, align 8, !dbg !2974
  call void @free(ptr noundef %52) #6, !dbg !2975
  br label %53, !dbg !2975

53:                                               ; preds = %51, %47
  %54 = load ptr, ptr %1, align 8, !dbg !2976
  %55 = getelementptr inbounds %struct._persistent_users_db_t, ptr %54, i32 0, i32 0, !dbg !2977
  %56 = getelementptr inbounds [1025 x i8], ptr %55, i64 0, i64 0, !dbg !2976
  %57 = call ptr @PQconnectdb(ptr noundef %56), !dbg !2978
  store ptr %57, ptr %2, align 8, !dbg !2979
  %58 = load ptr, ptr %2, align 8, !dbg !2980
  %59 = icmp ne ptr %58, null, !dbg !2980
  br i1 %59, label %64, label %60, !dbg !2982

60:                                               ; preds = %53
  %61 = load ptr, ptr %1, align 8, !dbg !2983
  %62 = getelementptr inbounds %struct._persistent_users_db_t, ptr %61, i32 0, i32 0, !dbg !2985
  %63 = getelementptr inbounds [1025 x i8], ptr %62, i64 0, i64 0, !dbg !2983
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4, ptr noundef %63), !dbg !2986
  br label %83, !dbg !2987

64:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2988, metadata !DIExpression()), !dbg !2990
  %65 = load ptr, ptr %2, align 8, !dbg !2991
  %66 = call i32 @PQstatus(ptr noundef %65), !dbg !2992
  store i32 %66, ptr %6, align 4, !dbg !2990
  %67 = load i32, ptr %6, align 4, !dbg !2993
  %68 = icmp ne i32 %67, 0, !dbg !2995
  br i1 %68, label %69, label %74, !dbg !2996

69:                                               ; preds = %64
  %70 = load ptr, ptr %2, align 8, !dbg !2997
  call void @PQfinish(ptr noundef %70), !dbg !2999
  store ptr null, ptr %2, align 8, !dbg !3000
  %71 = load ptr, ptr %1, align 8, !dbg !3001
  %72 = getelementptr inbounds %struct._persistent_users_db_t, ptr %71, i32 0, i32 0, !dbg !3002
  %73 = getelementptr inbounds [1025 x i8], ptr %72, i64 0, i64 0, !dbg !3001
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4, ptr noundef %73), !dbg !3003
  br label %82, !dbg !3004

74:                                               ; preds = %64
  %75 = load i32, ptr @donot_print_connection_success, align 4, !dbg !3005
  %76 = icmp ne i32 %75, 0, !dbg !3005
  br i1 %76, label %81, label %77, !dbg !3007

77:                                               ; preds = %74
  %78 = load ptr, ptr %1, align 8, !dbg !3008
  %79 = getelementptr inbounds %struct._persistent_users_db_t, ptr %78, i32 0, i32 0, !dbg !3010
  %80 = getelementptr inbounds [1025 x i8], ptr %79, i64 0, i64 0, !dbg !3008
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.5, ptr noundef %80), !dbg !3011
  store i32 1, ptr @donot_print_connection_success, align 4, !dbg !3012
  br label %81, !dbg !3013

81:                                               ; preds = %77, %74
  br label %82

82:                                               ; preds = %81, %69
  br label %83

83:                                               ; preds = %82, %60
  br label %84

84:                                               ; preds = %83, %46
  %85 = load ptr, ptr %2, align 8, !dbg !3014
  %86 = icmp ne ptr %85, null, !dbg !3014
  br i1 %86, label %87, label %91, !dbg !3016

87:                                               ; preds = %84
  %88 = load i32, ptr @connection_key, align 4, !dbg !3017
  %89 = load ptr, ptr %2, align 8, !dbg !3019
  %90 = call i32 @pthread_setspecific(i32 noundef %88, ptr noundef %89) #6, !dbg !3020
  br label %91, !dbg !3021

91:                                               ; preds = %87, %84
  br label %92, !dbg !3022

92:                                               ; preds = %91, %23
  %93 = load ptr, ptr %2, align 8, !dbg !3023
  ret ptr %93, !dbg !3024
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

declare ptr @PQexec(ptr noundef, ptr noundef) #3

declare i32 @PQresultStatus(ptr noundef) #3

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #3

declare ptr @PQerrorMessage(ptr noundef) #3

declare i32 @PQntuples(ptr noundef) #3

declare ptr @PQgetvalue(ptr noundef, i32 noundef, i32 noundef) #3

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #3

declare void @PQclear(ptr noundef) #3

declare ptr @get_persistent_users_db() #3

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #2

declare i32 @PQstatus(ptr noundef) #3

declare void @PQfinish(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #2

declare ptr @PQconninfoParse(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

declare void @PQconninfoFree(ptr noundef) #3

declare ptr @PQconnectdb(ptr noundef) #3

declare i32 @PQgetlength(ptr noundef, i32 noundef, i32 noundef) #3

declare i64 @get_hmackey_size(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #4

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare i32 @printf(ptr noundef, ...) #3

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #3

declare ptr @ur_string_map_create(ptr noundef) #3

declare ptr @get_realm(ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

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
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!545, !546, !547, !548, !549, !550, !551}
!llvm.ident = !{!552}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "driver", scope: !2, file: !81, line: 963, type: !430, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !54, globals: !78, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_pgsql.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "7db946e3172433722fe53ff624928e21")
!4 = !{!5, !21, !28, !44}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 92, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "/usr/include/postgresql/libpq-fe.h", directory: "", checksumkind: CSK_MD5, checksum: "7e1cd4f14f105bf04c5c2b9e5ea85d6a")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20}
!9 = !DIEnumerator(name: "PGRES_EMPTY_QUERY", value: 0)
!10 = !DIEnumerator(name: "PGRES_COMMAND_OK", value: 1)
!11 = !DIEnumerator(name: "PGRES_TUPLES_OK", value: 2)
!12 = !DIEnumerator(name: "PGRES_COPY_OUT", value: 3)
!13 = !DIEnumerator(name: "PGRES_COPY_IN", value: 4)
!14 = !DIEnumerator(name: "PGRES_BAD_RESPONSE", value: 5)
!15 = !DIEnumerator(name: "PGRES_NONFATAL_ERROR", value: 6)
!16 = !DIEnumerator(name: "PGRES_FATAL_ERROR", value: 7)
!17 = !DIEnumerator(name: "PGRES_COPY_BOTH", value: 8)
!18 = !DIEnumerator(name: "PGRES_SINGLE_TUPLE", value: 9)
!19 = !DIEnumerator(name: "PGRES_PIPELINE_SYNC", value: 10)
!20 = !DIEnumerator(name: "PGRES_PIPELINE_ABORTED", value: 11)
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !22, line: 47, baseType: !7, size: 32, elements: !23)
!22 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!23 = !{!24, !25, !26, !27}
!24 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!25 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!26 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!27 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 56, baseType: !7, size: 32, elements: !29)
!29 = !{!30, !31, !32, !33, !34, !35, !36, !37, !38, !39, !40, !41, !42, !43}
!30 = !DIEnumerator(name: "CONNECTION_OK", value: 0)
!31 = !DIEnumerator(name: "CONNECTION_BAD", value: 1)
!32 = !DIEnumerator(name: "CONNECTION_STARTED", value: 2)
!33 = !DIEnumerator(name: "CONNECTION_MADE", value: 3)
!34 = !DIEnumerator(name: "CONNECTION_AWAITING_RESPONSE", value: 4)
!35 = !DIEnumerator(name: "CONNECTION_AUTH_OK", value: 5)
!36 = !DIEnumerator(name: "CONNECTION_SETENV", value: 6)
!37 = !DIEnumerator(name: "CONNECTION_SSL_STARTUP", value: 7)
!38 = !DIEnumerator(name: "CONNECTION_NEEDED", value: 8)
!39 = !DIEnumerator(name: "CONNECTION_CHECK_WRITABLE", value: 9)
!40 = !DIEnumerator(name: "CONNECTION_CONSUME", value: 10)
!41 = !DIEnumerator(name: "CONNECTION_GSS_STARTUP", value: 11)
!42 = !DIEnumerator(name: "CONNECTION_CHECK_TARGET", value: 12)
!43 = !DIEnumerator(name: "CONNECTION_CHECK_STANDBY", value: 13)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !45, line: 160, baseType: !46, size: 32, elements: !47)
!45 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !{!48, !49, !50, !51, !52, !53}
!48 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!49 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!50 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!51 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!52 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!53 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!54 = !{!55, !58, !61, !60, !63, !65, !67, !69, !71, !72, !76}
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "PGconn", file: !6, line: 164, baseType: !57)
!57 = !DICompositeType(tag: DW_TAG_structure_type, name: "pg_conn", file: !6, line: 164, flags: DIFlagFwdDecl)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 46, baseType: !60)
!59 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!60 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !66, line: 224, baseType: !61)
!66 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!67 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !68, line: 67, baseType: !60)
!68 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !70, line: 105, baseType: !46)
!70 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!71 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !73, line: 27, baseType: !74)
!73 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !75, line: 45, baseType: !60)
!75 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !73, line: 26, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !75, line: 42, baseType: !7)
!78 = !{!0, !79, !85, !90, !95, !100, !105, !110, !112, !117, !122, !127, !129, !134, !139, !141, !146, !151, !153, !158, !160, !165, !170, !172, !174, !179, !184, !189, !194, !199, !201, !203, !208, !213, !218, !223, !228, !233, !238, !243, !245, !334, !339, !344, !349, !354, !356, !358, !360, !362, !364, !366, !371, !376, !381, !386, !391, !393, !398, !400, !405, !408, !413, !418, !420, !422, !424, !426, !428}
!79 = !DIGlobalVariableExpression(var: !80, expr: !DIExpression())
!80 = distinct !DIGlobalVariable(scope: null, file: !81, line: 99, type: !82, isLocal: true, isDefinition: true)
!81 = !DIFile(filename: "src/apps/relay/dbdrivers/dbd_pgsql.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "7db946e3172433722fe53ff624928e21")
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 376, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 47)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !81, line: 103, type: !87, isLocal: true, isDefinition: true)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 384, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 48)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(scope: null, file: !81, line: 60, type: !92, isLocal: true, isDefinition: true)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 632, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 79)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(scope: null, file: !81, line: 63, type: !97, isLocal: true, isDefinition: true)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 672, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 84)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(scope: null, file: !81, line: 71, type: !102, isLocal: true, isDefinition: true)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 472, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 59)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !81, line: 79, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 304, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 38)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "donot_print_connection_success", scope: !2, file: !81, line: 40, type: !46, isLocal: true, isDefinition: true)
!112 = !DIGlobalVariableExpression(var: !113, expr: !DIExpression())
!113 = distinct !DIGlobalVariable(scope: null, file: !81, line: 128, type: !114, isLocal: true, isDefinition: true)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 512, elements: !115)
!115 = !{!116}
!116 = !DISubrange(count: 64)
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !81, line: 139, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 248, elements: !120)
!120 = !{!121}
!121 = !DISubrange(count: 31)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !81, line: 141, type: !124, isLocal: true, isDefinition: true)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 192, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 24)
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(scope: null, file: !81, line: 146, type: !107, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !81, line: 253, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 552, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 69)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !81, line: 260, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 544, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 68)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !81, line: 263, type: !82, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !81, line: 314, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 448, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 56)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !81, line: 356, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 536, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 67)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !81, line: 358, type: !143, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !81, line: 380, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 64, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 8)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !81, line: 403, type: !136, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !81, line: 405, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 456, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 57)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !81, line: 451, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 328, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 41)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !81, line: 453, type: !143, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !81, line: 470, type: !143, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !81, line: 475, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 424, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 53)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !81, line: 531, type: !181, isLocal: true, isDefinition: true)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 528, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 66)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !81, line: 534, type: !186, isLocal: true, isDefinition: true)
!186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 320, elements: !187)
!187 = !{!188}
!188 = !DISubrange(count: 40)
!189 = !DIGlobalVariableExpression(var: !190, expr: !DIExpression())
!190 = distinct !DIGlobalVariable(scope: null, file: !81, line: 550, type: !191, isLocal: true, isDefinition: true)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 408, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 51)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !81, line: 553, type: !196, isLocal: true, isDefinition: true)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 312, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 39)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !81, line: 580, type: !92, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !81, line: 582, type: !136, isLocal: true, isDefinition: true)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !81, line: 604, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 96, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 12)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !81, line: 624, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 480, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 60)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !81, line: 631, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 576, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 72)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !81, line: 634, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 368, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 46)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !81, line: 653, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 656, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 82)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !81, line: 655, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 520, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 65)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !81, line: 669, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 88, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !81, line: 688, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 240, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 30)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !81, line: 708, type: !107, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(name: "wrong_table_reported", scope: !247, file: !81, line: 712, type: !46, isLocal: true, isDefinition: true)
!247 = distinct !DISubprogram(name: "pgsql_get_ip_list", scope: !81, file: !81, line: 702, type: !248, scopeLine: 703, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!248 = !DISubroutineType(types: !249)
!249 = !{!46, !63, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !252, line: 159, baseType: !253)
!252 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !252, line: 154, size: 128, elements: !254)
!254 = !{!255, !332}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !253, file: !252, line: 155, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !252, line: 152, baseType: !258)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !252, line: 146, size: 6624, elements: !259)
!259 = !{!260, !264, !268}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !258, file: !252, line: 147, baseType: !261, size: 2056)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2056, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 257)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !258, file: !252, line: 148, baseType: !265, size: 4104, offset: 2056)
!265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 4104, elements: !266)
!266 = !{!267}
!267 = !DISubrange(count: 513)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !258, file: !252, line: 149, baseType: !269, size: 448, offset: 6176)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !270, line: 53, baseType: !271)
!270 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !270, line: 50, size: 448, elements: !272)
!272 = !{!273, !331}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !271, file: !270, line: 51, baseType: !274, size: 224)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !270, line: 48, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !270, line: 44, size: 224, elements: !276)
!276 = !{!277, !289, !306}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !275, file: !270, line: 45, baseType: !278, size: 128)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !279, line: 180, size: 128, elements: !280)
!279 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!280 = !{!281, !285}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !278, file: !279, line: 182, baseType: !282, size: 16)
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !283, line: 28, baseType: !284)
!283 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!284 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !278, file: !279, line: 183, baseType: !286, size: 112, offset: 16)
!286 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 112, elements: !287)
!287 = !{!288}
!288 = !DISubrange(count: 14)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !275, file: !270, line: 46, baseType: !290, size: 128)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !291, line: 245, size: 128, elements: !292)
!291 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!292 = !{!293, !294, !298, !303}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !290, file: !291, line: 247, baseType: !282, size: 16)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !290, file: !291, line: 248, baseType: !295, size: 16, offset: 16)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !291, line: 123, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !73, line: 25, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !75, line: 40, baseType: !284)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !290, file: !291, line: 249, baseType: !299, size: 32, offset: 32)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !291, line: 31, size: 32, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !299, file: !291, line: 33, baseType: !302, size: 32)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !291, line: 30, baseType: !76)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !290, file: !291, line: 252, baseType: !304, size: 64, offset: 64)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 64, elements: !156)
!305 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !275, file: !270, line: 47, baseType: !307, size: 224)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !291, line: 260, size: 224, elements: !308)
!308 = !{!309, !310, !311, !312, !330}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !307, file: !291, line: 262, baseType: !282, size: 16)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !307, file: !291, line: 263, baseType: !295, size: 16, offset: 16)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !307, file: !291, line: 264, baseType: !76, size: 32, offset: 32)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !307, file: !291, line: 265, baseType: !313, size: 128, offset: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !291, line: 219, size: 128, elements: !314)
!314 = !{!315}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !313, file: !291, line: 226, baseType: !316, size: 128)
!316 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !313, file: !291, line: 221, size: 128, elements: !317)
!317 = !{!318, !324, !326}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !316, file: !291, line: 223, baseType: !319, size: 128)
!319 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 128, elements: !322)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !73, line: 24, baseType: !321)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !75, line: 38, baseType: !305)
!322 = !{!323}
!323 = !DISubrange(count: 16)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !316, file: !291, line: 224, baseType: !325, size: 128)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 128, elements: !156)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !316, file: !291, line: 225, baseType: !327, size: 128)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !76, size: 128, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 4)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !307, file: !291, line: 266, baseType: !76, size: 32, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !271, file: !270, line: 52, baseType: !274, size: 224, offset: 224)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !253, file: !252, line: 156, baseType: !58, size: 64, offset: 64)
!333 = !{}
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !81, line: 715, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1288, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 161)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !81, line: 717, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 280, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 35)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !81, line: 504, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 504, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 63)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !81, line: 506, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 464, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 58)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(scope: null, file: !81, line: 513, type: !82, isLocal: true, isDefinition: true)
!356 = !DIGlobalVariableExpression(var: !357, expr: !DIExpression())
!357 = distinct !DIGlobalVariable(scope: null, file: !81, line: 746, type: !220, isLocal: true, isDefinition: true)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !81, line: 804, type: !220, isLocal: true, isDefinition: true)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !81, line: 816, type: !155, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !81, line: 818, type: !205, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !81, line: 820, type: !235, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !81, line: 823, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 208, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 26)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !81, line: 281, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 864, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 108)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !81, line: 290, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 832, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 104)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !81, line: 294, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 416, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 52)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !81, line: 163, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 640, elements: !389)
!389 = !{!390}
!390 = !DISubrange(count: 80)
!391 = !DIGlobalVariableExpression(var: !392, expr: !DIExpression())
!392 = distinct !DIGlobalVariable(scope: null, file: !81, line: 330, type: !196, isLocal: true, isDefinition: true)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(scope: null, file: !81, line: 334, type: !395, isLocal: true, isDefinition: true)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 336, elements: !396)
!396 = !{!397}
!397 = !DISubrange(count: 42)
!398 = !DIGlobalVariableExpression(var: !399, expr: !DIExpression())
!399 = distinct !DIGlobalVariable(scope: null, file: !81, line: 197, type: !225, isLocal: true, isDefinition: true)
!400 = !DIGlobalVariableExpression(var: !401, expr: !DIExpression())
!401 = distinct !DIGlobalVariable(scope: null, file: !81, line: 222, type: !402, isLocal: true, isDefinition: true)
!402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 40, elements: !403)
!403 = !{!404}
!404 = !DISubrange(count: 5)
!405 = !DIGlobalVariableExpression(var: !406, expr: !DIExpression())
!406 = distinct !DIGlobalVariable(scope: null, file: !81, line: 227, type: !407, isLocal: true, isDefinition: true)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 32, elements: !328)
!408 = !DIGlobalVariableExpression(var: !409, expr: !DIExpression())
!409 = distinct !DIGlobalVariable(scope: null, file: !81, line: 231, type: !410, isLocal: true, isDefinition: true)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 608, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 76)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !81, line: 848, type: !415, isLocal: true, isDefinition: true)
!415 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 432, elements: !416)
!416 = !{!417}
!417 = !DISubrange(count: 54)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !81, line: 879, type: !136, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !81, line: 886, type: !346, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !81, line: 908, type: !196, isLocal: true, isDefinition: true)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !81, line: 925, type: !346, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !81, line: 941, type: !407, isLocal: true, isDefinition: true)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !81, line: 958, type: !341, isLocal: true, isDefinition: true)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !432, line: 77, baseType: !433)
!432 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !432, line: 50, size: 1664, elements: !434)
!434 = !{!435, !448, !452, !456, !460, !464, !465, !466, !467, !468, !472, !473, !477, !478, !483, !485, !489, !493, !514, !520, !524, !528, !532, !536, !537, !541}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !433, file: !432, line: 51, baseType: !436, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!46, !439, !447}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !441, line: 143, baseType: !442)
!441 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !441, line: 139, size: 128, elements: !443)
!443 = !{!444, !446}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !442, file: !441, line: 140, baseType: !445, size: 64)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !442, file: !441, line: 141, baseType: !58, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !433, file: !432, line: 52, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!46, !447, !447, !447}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !433, file: !432, line: 53, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DISubroutineType(types: !455)
!455 = !{!46, !447, !447, !63}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !433, file: !432, line: 54, baseType: !457, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!46, !447, !447}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !433, file: !432, line: 55, baseType: !461, size: 64, offset: 256)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{!46, !447, !439, !439}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !433, file: !432, line: 56, baseType: !461, size: 64, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !433, file: !432, line: 57, baseType: !457, size: 64, offset: 384)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !433, file: !432, line: 58, baseType: !457, size: 64, offset: 448)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !433, file: !432, line: 59, baseType: !457, size: 64, offset: 512)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !433, file: !432, line: 60, baseType: !469, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DISubroutineType(types: !471)
!471 = !{!46, !447}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !433, file: !432, line: 61, baseType: !461, size: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !433, file: !432, line: 62, baseType: !474, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!46, !447, !60, !63}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !433, file: !432, line: 63, baseType: !469, size: 64, offset: 768)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !433, file: !432, line: 64, baseType: !479, size: 64, offset: 832)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DISubroutineType(types: !481)
!481 = !{null, !482}
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !433, file: !432, line: 65, baseType: !484, size: 64, offset: 896)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !433, file: !432, line: 66, baseType: !486, size: 64, offset: 960)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DISubroutineType(types: !488)
!488 = !{!46, !63, !447, !63, !46}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !433, file: !432, line: 67, baseType: !490, size: 64, offset: 1024)
!490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !491, size: 64)
!491 = !DISubroutineType(types: !492)
!492 = !{null, !439}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !433, file: !432, line: 68, baseType: !494, size: 64, offset: 1088)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{!46, !497}
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !499, line: 144, baseType: !500)
!499 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !499, line: 135, size: 4800, elements: !501)
!501 = !{!502, !506, !507, !508, !509, !510}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !500, file: !499, line: 136, baseType: !503, size: 1032)
!503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1032, elements: !504)
!504 = !{!505}
!505 = !DISubrange(count: 129)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !500, file: !499, line: 137, baseType: !261, size: 2056, offset: 1032)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !500, file: !499, line: 138, baseType: !72, size: 64, offset: 3136)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !500, file: !499, line: 139, baseType: !76, size: 32, offset: 3200)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !500, file: !499, line: 140, baseType: !230, size: 520, offset: 3232)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !500, file: !499, line: 141, baseType: !511, size: 1024, offset: 3752)
!511 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 1024, elements: !512)
!512 = !{!513}
!513 = !DISubrange(count: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !433, file: !432, line: 69, baseType: !515, size: 64, offset: 1152)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DISubroutineType(types: !517)
!517 = !{!46, !518, !497}
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !433, file: !432, line: 70, baseType: !521, size: 64, offset: 1216)
!521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !522, size: 64)
!522 = !DISubroutineType(types: !523)
!523 = !{!46, !518}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !433, file: !432, line: 71, baseType: !525, size: 64, offset: 1280)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DISubroutineType(types: !527)
!527 = !{!46, !439, !439, !439, !439, !439}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !433, file: !432, line: 72, baseType: !529, size: 64, offset: 1344)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!46, !518, !447, !447}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !433, file: !432, line: 73, baseType: !533, size: 64, offset: 1408)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DISubroutineType(types: !535)
!535 = !{!46, !518, !518, !518}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !433, file: !432, line: 74, baseType: !521, size: 64, offset: 1472)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !433, file: !432, line: 75, baseType: !538, size: 64, offset: 1536)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DISubroutineType(types: !540)
!540 = !{!46, !46}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !433, file: !432, line: 76, baseType: !542, size: 64, offset: 1600)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null}
!545 = !{i32 7, !"Dwarf Version", i32 5}
!546 = !{i32 2, !"Debug Info Version", i32 3}
!547 = !{i32 1, !"wchar_size", i32 4}
!548 = !{i32 8, !"PIC Level", i32 2}
!549 = !{i32 7, !"PIE Level", i32 2}
!550 = !{i32 7, !"uwtable", i32 2}
!551 = !{i32 7, !"frame-pointer", i32 2}
!552 = !{!"clang version 16.0.0"}
!553 = distinct !DISubprogram(name: "get_pgsql_dbdriver", scope: !81, file: !81, line: 992, type: !554, scopeLine: 992, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !333)
!554 = !DISubroutineType(types: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!557 = !DILocation(line: 993, column: 3, scope: !553)
!558 = distinct !DISubprogram(name: "pgsql_get_auth_secrets", scope: !81, file: !81, line: 94, type: !437, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!559 = !DILocalVariable(name: "sl", arg: 1, scope: !558, file: !81, line: 94, type: !439)
!560 = !DILocation(line: 94, column: 51, scope: !558)
!561 = !DILocalVariable(name: "realm", arg: 2, scope: !558, file: !81, line: 94, type: !447)
!562 = !DILocation(line: 94, column: 64, scope: !558)
!563 = !DILocalVariable(name: "ret", scope: !558, file: !81, line: 95, type: !46)
!564 = !DILocation(line: 95, column: 7, scope: !558)
!565 = !DILocalVariable(name: "pqc", scope: !558, file: !81, line: 96, type: !55)
!566 = !DILocation(line: 96, column: 11, scope: !558)
!567 = !DILocation(line: 96, column: 17, scope: !558)
!568 = !DILocation(line: 97, column: 5, scope: !569)
!569 = distinct !DILexicalBlock(scope: !558, file: !81, line: 97, column: 5)
!570 = !DILocation(line: 97, column: 5, scope: !558)
!571 = !DILocalVariable(name: "statement", scope: !572, file: !81, line: 98, type: !573)
!572 = distinct !DILexicalBlock(scope: !569, file: !81, line: 97, column: 10)
!573 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 8200, elements: !574)
!574 = !{!575}
!575 = !DISubrange(count: 1025)
!576 = !DILocation(line: 98, column: 8, scope: !572)
!577 = !DILocation(line: 99, column: 12, scope: !572)
!578 = !DILocation(line: 99, column: 91, scope: !572)
!579 = !DILocation(line: 99, column: 3, scope: !572)
!580 = !DILocalVariable(name: "res", scope: !572, file: !81, line: 100, type: !581)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "PGresult", file: !6, line: 171, baseType: !583)
!583 = !DICompositeType(tag: DW_TAG_structure_type, name: "pg_result", file: !6, line: 171, flags: DIFlagFwdDecl)
!584 = !DILocation(line: 100, column: 13, scope: !572)
!585 = !DILocation(line: 100, column: 26, scope: !572)
!586 = !DILocation(line: 100, column: 31, scope: !572)
!587 = !DILocation(line: 100, column: 19, scope: !572)
!588 = !DILocation(line: 102, column: 7, scope: !589)
!589 = distinct !DILexicalBlock(scope: !572, file: !81, line: 102, column: 6)
!590 = !DILocation(line: 102, column: 11, scope: !589)
!591 = !DILocation(line: 102, column: 30, scope: !589)
!592 = !DILocation(line: 102, column: 15, scope: !589)
!593 = !DILocation(line: 102, column: 35, scope: !589)
!594 = !DILocation(line: 102, column: 6, scope: !572)
!595 = !DILocation(line: 103, column: 106, scope: !596)
!596 = distinct !DILexicalBlock(scope: !589, file: !81, line: 102, column: 56)
!597 = !DILocation(line: 103, column: 91, scope: !596)
!598 = !DILocation(line: 103, column: 4, scope: !596)
!599 = !DILocation(line: 104, column: 3, scope: !596)
!600 = !DILocalVariable(name: "i", scope: !601, file: !81, line: 105, type: !46)
!601 = distinct !DILexicalBlock(scope: !589, file: !81, line: 104, column: 10)
!602 = !DILocation(line: 105, column: 8, scope: !601)
!603 = !DILocation(line: 106, column: 9, scope: !604)
!604 = distinct !DILexicalBlock(scope: !601, file: !81, line: 106, column: 4)
!605 = !DILocation(line: 106, column: 8, scope: !604)
!606 = !DILocation(line: 106, column: 12, scope: !607)
!607 = distinct !DILexicalBlock(scope: !604, file: !81, line: 106, column: 4)
!608 = !DILocation(line: 106, column: 24, scope: !607)
!609 = !DILocation(line: 106, column: 14, scope: !607)
!610 = !DILocation(line: 106, column: 13, scope: !607)
!611 = !DILocation(line: 106, column: 4, scope: !604)
!612 = !DILocalVariable(name: "kval", scope: !613, file: !81, line: 107, type: !61)
!613 = distinct !DILexicalBlock(scope: !607, file: !81, line: 106, column: 34)
!614 = !DILocation(line: 107, column: 11, scope: !613)
!615 = !DILocation(line: 107, column: 29, scope: !613)
!616 = !DILocation(line: 107, column: 33, scope: !613)
!617 = !DILocation(line: 107, column: 18, scope: !613)
!618 = !DILocation(line: 108, column: 8, scope: !619)
!619 = distinct !DILexicalBlock(scope: !613, file: !81, line: 108, column: 8)
!620 = !DILocation(line: 108, column: 8, scope: !613)
!621 = !DILocation(line: 109, column: 26, scope: !622)
!622 = distinct !DILexicalBlock(scope: !619, file: !81, line: 108, column: 14)
!623 = !DILocation(line: 109, column: 29, scope: !622)
!624 = !DILocation(line: 109, column: 6, scope: !622)
!625 = !DILocation(line: 110, column: 5, scope: !622)
!626 = !DILocation(line: 111, column: 4, scope: !613)
!627 = !DILocation(line: 106, column: 30, scope: !607)
!628 = !DILocation(line: 106, column: 4, scope: !607)
!629 = distinct !{!629, !611, !630, !631}
!630 = !DILocation(line: 111, column: 4, scope: !604)
!631 = !{!"llvm.loop.mustprogress"}
!632 = !DILocation(line: 112, column: 8, scope: !601)
!633 = !DILocation(line: 115, column: 6, scope: !634)
!634 = distinct !DILexicalBlock(scope: !572, file: !81, line: 115, column: 6)
!635 = !DILocation(line: 115, column: 6, scope: !572)
!636 = !DILocation(line: 116, column: 12, scope: !637)
!637 = distinct !DILexicalBlock(scope: !634, file: !81, line: 115, column: 11)
!638 = !DILocation(line: 116, column: 4, scope: !637)
!639 = !DILocation(line: 117, column: 3, scope: !637)
!640 = !DILocation(line: 118, column: 2, scope: !572)
!641 = !DILocation(line: 119, column: 10, scope: !558)
!642 = !DILocation(line: 119, column: 3, scope: !558)
!643 = distinct !DISubprogram(name: "pgsql_get_user_key", scope: !81, file: !81, line: 122, type: !450, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!644 = !DILocalVariable(name: "usname", arg: 1, scope: !643, file: !81, line: 122, type: !447)
!645 = !DILocation(line: 122, column: 40, scope: !643)
!646 = !DILocalVariable(name: "realm", arg: 2, scope: !643, file: !81, line: 122, type: !447)
!647 = !DILocation(line: 122, column: 57, scope: !643)
!648 = !DILocalVariable(name: "key", arg: 3, scope: !643, file: !81, line: 122, type: !447)
!649 = !DILocation(line: 122, column: 74, scope: !643)
!650 = !DILocalVariable(name: "ret", scope: !643, file: !81, line: 123, type: !46)
!651 = !DILocation(line: 123, column: 7, scope: !643)
!652 = !DILocalVariable(name: "pqc", scope: !643, file: !81, line: 124, type: !55)
!653 = !DILocation(line: 124, column: 11, scope: !643)
!654 = !DILocation(line: 124, column: 17, scope: !643)
!655 = !DILocation(line: 125, column: 5, scope: !656)
!656 = distinct !DILexicalBlock(scope: !643, file: !81, line: 125, column: 5)
!657 = !DILocation(line: 125, column: 5, scope: !643)
!658 = !DILocalVariable(name: "statement", scope: !659, file: !81, line: 126, type: !573)
!659 = distinct !DILexicalBlock(scope: !656, file: !81, line: 125, column: 10)
!660 = !DILocation(line: 126, column: 8, scope: !659)
!661 = !DILocation(line: 128, column: 12, scope: !659)
!662 = !DILocation(line: 128, column: 106, scope: !659)
!663 = !DILocation(line: 128, column: 113, scope: !659)
!664 = !DILocation(line: 128, column: 3, scope: !659)
!665 = !DILocalVariable(name: "res", scope: !659, file: !81, line: 129, type: !581)
!666 = !DILocation(line: 129, column: 13, scope: !659)
!667 = !DILocation(line: 129, column: 26, scope: !659)
!668 = !DILocation(line: 129, column: 31, scope: !659)
!669 = !DILocation(line: 129, column: 19, scope: !659)
!670 = !DILocation(line: 131, column: 7, scope: !671)
!671 = distinct !DILexicalBlock(scope: !659, file: !81, line: 131, column: 6)
!672 = !DILocation(line: 131, column: 11, scope: !671)
!673 = !DILocation(line: 131, column: 30, scope: !671)
!674 = !DILocation(line: 131, column: 15, scope: !671)
!675 = !DILocation(line: 131, column: 35, scope: !671)
!676 = !DILocation(line: 131, column: 55, scope: !671)
!677 = !DILocation(line: 131, column: 69, scope: !671)
!678 = !DILocation(line: 131, column: 59, scope: !671)
!679 = !DILocation(line: 131, column: 73, scope: !671)
!680 = !DILocation(line: 131, column: 6, scope: !659)
!681 = !DILocation(line: 132, column: 106, scope: !682)
!682 = distinct !DILexicalBlock(scope: !671, file: !81, line: 131, column: 79)
!683 = !DILocation(line: 132, column: 91, scope: !682)
!684 = !DILocation(line: 132, column: 4, scope: !682)
!685 = !DILocation(line: 133, column: 3, scope: !682)
!686 = !DILocalVariable(name: "kval", scope: !687, file: !81, line: 134, type: !61)
!687 = distinct !DILexicalBlock(scope: !671, file: !81, line: 133, column: 10)
!688 = !DILocation(line: 134, column: 10, scope: !687)
!689 = !DILocation(line: 134, column: 28, scope: !687)
!690 = !DILocation(line: 134, column: 17, scope: !687)
!691 = !DILocalVariable(name: "len", scope: !687, file: !81, line: 135, type: !46)
!692 = !DILocation(line: 135, column: 8, scope: !687)
!693 = !DILocation(line: 135, column: 26, scope: !687)
!694 = !DILocation(line: 135, column: 14, scope: !687)
!695 = !DILocation(line: 136, column: 7, scope: !696)
!696 = distinct !DILexicalBlock(scope: !687, file: !81, line: 136, column: 7)
!697 = !DILocation(line: 136, column: 7, scope: !687)
!698 = !DILocalVariable(name: "sz", scope: !699, file: !81, line: 137, type: !58)
!699 = distinct !DILexicalBlock(scope: !696, file: !81, line: 136, column: 13)
!700 = !DILocation(line: 137, column: 12, scope: !699)
!701 = !DILocation(line: 137, column: 17, scope: !699)
!702 = !DILocation(line: 138, column: 17, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !81, line: 138, column: 8)
!704 = !DILocation(line: 138, column: 9, scope: !703)
!705 = !DILocation(line: 138, column: 21, scope: !703)
!706 = !DILocation(line: 138, column: 23, scope: !703)
!707 = !DILocation(line: 138, column: 20, scope: !703)
!708 = !DILocation(line: 138, column: 26, scope: !703)
!709 = !DILocation(line: 138, column: 36, scope: !703)
!710 = !DILocation(line: 138, column: 29, scope: !703)
!711 = !DILocation(line: 138, column: 42, scope: !703)
!712 = !DILocation(line: 138, column: 44, scope: !703)
!713 = !DILocation(line: 138, column: 41, scope: !703)
!714 = !DILocation(line: 138, column: 8, scope: !699)
!715 = !DILocation(line: 139, column: 76, scope: !716)
!716 = distinct !DILexicalBlock(scope: !703, file: !81, line: 138, column: 49)
!717 = !DILocation(line: 139, column: 81, scope: !716)
!718 = !DILocation(line: 139, column: 6, scope: !716)
!719 = !DILocation(line: 140, column: 5, scope: !716)
!720 = !DILocation(line: 140, column: 44, scope: !721)
!721 = distinct !DILexicalBlock(scope: !703, file: !81, line: 140, column: 15)
!722 = !DILocation(line: 140, column: 50, scope: !721)
!723 = !DILocation(line: 140, column: 55, scope: !721)
!724 = !DILocation(line: 140, column: 15, scope: !721)
!725 = !DILocation(line: 140, column: 58, scope: !721)
!726 = !DILocation(line: 140, column: 15, scope: !703)
!727 = !DILocation(line: 141, column: 69, scope: !728)
!728 = distinct !DILexicalBlock(scope: !721, file: !81, line: 140, column: 62)
!729 = !DILocation(line: 141, column: 74, scope: !728)
!730 = !DILocation(line: 141, column: 6, scope: !728)
!731 = !DILocation(line: 142, column: 5, scope: !728)
!732 = !DILocation(line: 143, column: 10, scope: !733)
!733 = distinct !DILexicalBlock(scope: !721, file: !81, line: 142, column: 12)
!734 = !DILocation(line: 145, column: 4, scope: !699)
!735 = !DILocation(line: 146, column: 82, scope: !736)
!736 = distinct !DILexicalBlock(scope: !696, file: !81, line: 145, column: 11)
!737 = !DILocation(line: 146, column: 5, scope: !736)
!738 = !DILocation(line: 150, column: 6, scope: !739)
!739 = distinct !DILexicalBlock(scope: !659, file: !81, line: 150, column: 6)
!740 = !DILocation(line: 150, column: 6, scope: !659)
!741 = !DILocation(line: 151, column: 12, scope: !739)
!742 = !DILocation(line: 151, column: 4, scope: !739)
!743 = !DILocation(line: 153, column: 2, scope: !659)
!744 = !DILocation(line: 154, column: 10, scope: !643)
!745 = !DILocation(line: 154, column: 3, scope: !643)
!746 = distinct !DISubprogram(name: "pgsql_set_user_key", scope: !81, file: !81, line: 248, type: !454, scopeLine: 248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!747 = !DILocalVariable(name: "usname", arg: 1, scope: !746, file: !81, line: 248, type: !447)
!748 = !DILocation(line: 248, column: 40, scope: !746)
!749 = !DILocalVariable(name: "realm", arg: 2, scope: !746, file: !81, line: 248, type: !447)
!750 = !DILocation(line: 248, column: 57, scope: !746)
!751 = !DILocalVariable(name: "key", arg: 3, scope: !746, file: !81, line: 248, type: !63)
!752 = !DILocation(line: 248, column: 76, scope: !746)
!753 = !DILocalVariable(name: "ret", scope: !746, file: !81, line: 249, type: !46)
!754 = !DILocation(line: 249, column: 7, scope: !746)
!755 = !DILocalVariable(name: "statement", scope: !746, file: !81, line: 250, type: !573)
!756 = !DILocation(line: 250, column: 7, scope: !746)
!757 = !DILocalVariable(name: "pqc", scope: !746, file: !81, line: 251, type: !55)
!758 = !DILocation(line: 251, column: 10, scope: !746)
!759 = !DILocation(line: 251, column: 16, scope: !746)
!760 = !DILocation(line: 252, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !746, file: !81, line: 252, column: 5)
!762 = !DILocation(line: 252, column: 5, scope: !746)
!763 = !DILocation(line: 253, column: 13, scope: !764)
!764 = distinct !DILexicalBlock(scope: !761, file: !81, line: 252, column: 10)
!765 = !DILocation(line: 253, column: 112, scope: !764)
!766 = !DILocation(line: 253, column: 118, scope: !764)
!767 = !DILocation(line: 253, column: 125, scope: !764)
!768 = !DILocation(line: 253, column: 4, scope: !764)
!769 = !DILocalVariable(name: "res", scope: !764, file: !81, line: 255, type: !581)
!770 = !DILocation(line: 255, column: 13, scope: !764)
!771 = !DILocation(line: 255, column: 26, scope: !764)
!772 = !DILocation(line: 255, column: 31, scope: !764)
!773 = !DILocation(line: 255, column: 19, scope: !764)
!774 = !DILocation(line: 256, column: 7, scope: !775)
!775 = distinct !DILexicalBlock(scope: !764, file: !81, line: 256, column: 6)
!776 = !DILocation(line: 256, column: 11, scope: !775)
!777 = !DILocation(line: 256, column: 30, scope: !775)
!778 = !DILocation(line: 256, column: 15, scope: !775)
!779 = !DILocation(line: 256, column: 35, scope: !775)
!780 = !DILocation(line: 256, column: 6, scope: !764)
!781 = !DILocation(line: 257, column: 7, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !81, line: 257, column: 7)
!783 = distinct !DILexicalBlock(scope: !775, file: !81, line: 256, column: 57)
!784 = !DILocation(line: 257, column: 7, scope: !783)
!785 = !DILocation(line: 258, column: 13, scope: !786)
!786 = distinct !DILexicalBlock(scope: !782, file: !81, line: 257, column: 12)
!787 = !DILocation(line: 258, column: 5, scope: !786)
!788 = !DILocation(line: 259, column: 4, scope: !786)
!789 = !DILocation(line: 260, column: 13, scope: !783)
!790 = !DILocation(line: 260, column: 111, scope: !783)
!791 = !DILocation(line: 260, column: 115, scope: !783)
!792 = !DILocation(line: 260, column: 122, scope: !783)
!793 = !DILocation(line: 260, column: 4, scope: !783)
!794 = !DILocation(line: 261, column: 17, scope: !783)
!795 = !DILocation(line: 261, column: 22, scope: !783)
!796 = !DILocation(line: 261, column: 10, scope: !783)
!797 = !DILocation(line: 261, column: 8, scope: !783)
!798 = !DILocation(line: 262, column: 8, scope: !799)
!799 = distinct !DILexicalBlock(scope: !783, file: !81, line: 262, column: 7)
!800 = !DILocation(line: 262, column: 12, scope: !799)
!801 = !DILocation(line: 262, column: 31, scope: !799)
!802 = !DILocation(line: 262, column: 16, scope: !799)
!803 = !DILocation(line: 262, column: 36, scope: !799)
!804 = !DILocation(line: 262, column: 7, scope: !783)
!805 = !DILocation(line: 263, column: 106, scope: !806)
!806 = distinct !DILexicalBlock(scope: !799, file: !81, line: 262, column: 58)
!807 = !DILocation(line: 263, column: 91, scope: !806)
!808 = !DILocation(line: 263, column: 5, scope: !806)
!809 = !DILocation(line: 264, column: 4, scope: !806)
!810 = !DILocation(line: 265, column: 10, scope: !811)
!811 = distinct !DILexicalBlock(scope: !799, file: !81, line: 264, column: 11)
!812 = !DILocation(line: 267, column: 3, scope: !783)
!813 = !DILocation(line: 268, column: 6, scope: !814)
!814 = distinct !DILexicalBlock(scope: !764, file: !81, line: 268, column: 6)
!815 = !DILocation(line: 268, column: 6, scope: !764)
!816 = !DILocation(line: 269, column: 12, scope: !817)
!817 = distinct !DILexicalBlock(scope: !814, file: !81, line: 268, column: 11)
!818 = !DILocation(line: 269, column: 4, scope: !817)
!819 = !DILocation(line: 270, column: 3, scope: !817)
!820 = !DILocation(line: 271, column: 2, scope: !764)
!821 = !DILocation(line: 272, column: 10, scope: !746)
!822 = !DILocation(line: 272, column: 3, scope: !746)
!823 = distinct !DISubprogram(name: "pgsql_del_user", scope: !81, file: !81, line: 309, type: !458, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!824 = !DILocalVariable(name: "usname", arg: 1, scope: !823, file: !81, line: 309, type: !447)
!825 = !DILocation(line: 309, column: 36, scope: !823)
!826 = !DILocalVariable(name: "realm", arg: 2, scope: !823, file: !81, line: 309, type: !447)
!827 = !DILocation(line: 309, column: 53, scope: !823)
!828 = !DILocalVariable(name: "ret", scope: !823, file: !81, line: 310, type: !46)
!829 = !DILocation(line: 310, column: 7, scope: !823)
!830 = !DILocalVariable(name: "statement", scope: !823, file: !81, line: 311, type: !573)
!831 = !DILocation(line: 311, column: 7, scope: !823)
!832 = !DILocalVariable(name: "pqc", scope: !823, file: !81, line: 312, type: !55)
!833 = !DILocation(line: 312, column: 10, scope: !823)
!834 = !DILocation(line: 312, column: 16, scope: !823)
!835 = !DILocation(line: 313, column: 5, scope: !836)
!836 = distinct !DILexicalBlock(scope: !823, file: !81, line: 313, column: 5)
!837 = !DILocation(line: 313, column: 5, scope: !823)
!838 = !DILocation(line: 314, column: 12, scope: !839)
!839 = distinct !DILexicalBlock(scope: !836, file: !81, line: 313, column: 10)
!840 = !DILocation(line: 314, column: 98, scope: !839)
!841 = !DILocation(line: 314, column: 105, scope: !839)
!842 = !DILocation(line: 314, column: 3, scope: !839)
!843 = !DILocalVariable(name: "res", scope: !839, file: !81, line: 315, type: !581)
!844 = !DILocation(line: 315, column: 13, scope: !839)
!845 = !DILocation(line: 315, column: 26, scope: !839)
!846 = !DILocation(line: 315, column: 31, scope: !839)
!847 = !DILocation(line: 315, column: 19, scope: !839)
!848 = !DILocation(line: 316, column: 6, scope: !849)
!849 = distinct !DILexicalBlock(scope: !839, file: !81, line: 316, column: 6)
!850 = !DILocation(line: 316, column: 6, scope: !839)
!851 = !DILocation(line: 317, column: 12, scope: !852)
!852 = distinct !DILexicalBlock(scope: !849, file: !81, line: 316, column: 11)
!853 = !DILocation(line: 317, column: 4, scope: !852)
!854 = !DILocation(line: 318, column: 11, scope: !852)
!855 = !DILocation(line: 319, column: 3, scope: !852)
!856 = !DILocation(line: 320, column: 2, scope: !839)
!857 = !DILocation(line: 321, column: 10, scope: !823)
!858 = !DILocation(line: 321, column: 3, scope: !823)
!859 = distinct !DISubprogram(name: "pgsql_list_users", scope: !81, file: !81, line: 345, type: !462, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!860 = !DILocalVariable(name: "realm", arg: 1, scope: !859, file: !81, line: 345, type: !447)
!861 = !DILocation(line: 345, column: 38, scope: !859)
!862 = !DILocalVariable(name: "users", arg: 2, scope: !859, file: !81, line: 345, type: !439)
!863 = !DILocation(line: 345, column: 61, scope: !859)
!864 = !DILocalVariable(name: "realms", arg: 3, scope: !859, file: !81, line: 345, type: !439)
!865 = !DILocation(line: 345, column: 84, scope: !859)
!866 = !DILocalVariable(name: "ret", scope: !859, file: !81, line: 347, type: !46)
!867 = !DILocation(line: 347, column: 6, scope: !859)
!868 = !DILocalVariable(name: "statement", scope: !859, file: !81, line: 348, type: !573)
!869 = !DILocation(line: 348, column: 7, scope: !859)
!870 = !DILocalVariable(name: "realm0", scope: !859, file: !81, line: 350, type: !871)
!871 = !DICompositeType(tag: DW_TAG_array_type, baseType: !320, size: 1024, elements: !512)
!872 = !DILocation(line: 350, column: 10, scope: !859)
!873 = !DILocation(line: 351, column: 6, scope: !874)
!874 = distinct !DILexicalBlock(scope: !859, file: !81, line: 351, column: 5)
!875 = !DILocation(line: 351, column: 5, scope: !859)
!876 = !DILocation(line: 351, column: 19, scope: !874)
!877 = !DILocation(line: 351, column: 18, scope: !874)
!878 = !DILocation(line: 351, column: 13, scope: !874)
!879 = !DILocalVariable(name: "pqc", scope: !859, file: !81, line: 353, type: !55)
!880 = !DILocation(line: 353, column: 10, scope: !859)
!881 = !DILocation(line: 353, column: 16, scope: !859)
!882 = !DILocation(line: 354, column: 5, scope: !883)
!883 = distinct !DILexicalBlock(scope: !859, file: !81, line: 354, column: 5)
!884 = !DILocation(line: 354, column: 5, scope: !859)
!885 = !DILocation(line: 355, column: 6, scope: !886)
!886 = distinct !DILexicalBlock(scope: !887, file: !81, line: 355, column: 6)
!887 = distinct !DILexicalBlock(scope: !883, file: !81, line: 354, column: 10)
!888 = !DILocation(line: 355, column: 6, scope: !887)
!889 = !DILocation(line: 356, column: 14, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !81, line: 355, column: 16)
!891 = !DILocation(line: 356, column: 111, scope: !890)
!892 = !DILocation(line: 356, column: 5, scope: !890)
!893 = !DILocation(line: 357, column: 3, scope: !890)
!894 = !DILocation(line: 358, column: 14, scope: !895)
!895 = distinct !DILexicalBlock(scope: !886, file: !81, line: 357, column: 10)
!896 = !DILocation(line: 358, column: 5, scope: !895)
!897 = !DILocalVariable(name: "res", scope: !887, file: !81, line: 360, type: !581)
!898 = !DILocation(line: 360, column: 13, scope: !887)
!899 = !DILocation(line: 360, column: 26, scope: !887)
!900 = !DILocation(line: 360, column: 31, scope: !887)
!901 = !DILocation(line: 360, column: 19, scope: !887)
!902 = !DILocation(line: 361, column: 7, scope: !903)
!903 = distinct !DILexicalBlock(scope: !887, file: !81, line: 361, column: 6)
!904 = !DILocation(line: 361, column: 11, scope: !903)
!905 = !DILocation(line: 361, column: 30, scope: !903)
!906 = !DILocation(line: 361, column: 15, scope: !903)
!907 = !DILocation(line: 361, column: 35, scope: !903)
!908 = !DILocation(line: 361, column: 6, scope: !887)
!909 = !DILocation(line: 362, column: 106, scope: !910)
!910 = distinct !DILexicalBlock(scope: !903, file: !81, line: 361, column: 56)
!911 = !DILocation(line: 362, column: 91, scope: !910)
!912 = !DILocation(line: 362, column: 4, scope: !910)
!913 = !DILocation(line: 363, column: 3, scope: !910)
!914 = !DILocalVariable(name: "i", scope: !915, file: !81, line: 364, type: !46)
!915 = distinct !DILexicalBlock(scope: !903, file: !81, line: 363, column: 10)
!916 = !DILocation(line: 364, column: 8, scope: !915)
!917 = !DILocation(line: 365, column: 9, scope: !918)
!918 = distinct !DILexicalBlock(scope: !915, file: !81, line: 365, column: 4)
!919 = !DILocation(line: 365, column: 8, scope: !918)
!920 = !DILocation(line: 365, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !918, file: !81, line: 365, column: 4)
!922 = !DILocation(line: 365, column: 24, scope: !921)
!923 = !DILocation(line: 365, column: 14, scope: !921)
!924 = !DILocation(line: 365, column: 13, scope: !921)
!925 = !DILocation(line: 365, column: 4, scope: !918)
!926 = !DILocalVariable(name: "kval", scope: !927, file: !81, line: 366, type: !61)
!927 = distinct !DILexicalBlock(scope: !921, file: !81, line: 365, column: 34)
!928 = !DILocation(line: 366, column: 11, scope: !927)
!929 = !DILocation(line: 366, column: 29, scope: !927)
!930 = !DILocation(line: 366, column: 33, scope: !927)
!931 = !DILocation(line: 366, column: 18, scope: !927)
!932 = !DILocation(line: 367, column: 8, scope: !933)
!933 = distinct !DILexicalBlock(scope: !927, file: !81, line: 367, column: 8)
!934 = !DILocation(line: 367, column: 8, scope: !927)
!935 = !DILocalVariable(name: "rval", scope: !936, file: !81, line: 368, type: !61)
!936 = distinct !DILexicalBlock(scope: !933, file: !81, line: 367, column: 14)
!937 = !DILocation(line: 368, column: 12, scope: !936)
!938 = !DILocation(line: 368, column: 30, scope: !936)
!939 = !DILocation(line: 368, column: 34, scope: !936)
!940 = !DILocation(line: 368, column: 19, scope: !936)
!941 = !DILocation(line: 369, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !936, file: !81, line: 369, column: 9)
!943 = !DILocation(line: 369, column: 9, scope: !936)
!944 = !DILocation(line: 370, column: 10, scope: !945)
!945 = distinct !DILexicalBlock(scope: !946, file: !81, line: 370, column: 10)
!946 = distinct !DILexicalBlock(scope: !942, file: !81, line: 369, column: 15)
!947 = !DILocation(line: 370, column: 10, scope: !946)
!948 = !DILocation(line: 371, column: 28, scope: !949)
!949 = distinct !DILexicalBlock(scope: !945, file: !81, line: 370, column: 17)
!950 = !DILocation(line: 371, column: 34, scope: !949)
!951 = !DILocation(line: 371, column: 8, scope: !949)
!952 = !DILocation(line: 372, column: 11, scope: !953)
!953 = distinct !DILexicalBlock(scope: !949, file: !81, line: 372, column: 11)
!954 = !DILocation(line: 372, column: 11, scope: !949)
!955 = !DILocation(line: 373, column: 12, scope: !956)
!956 = distinct !DILexicalBlock(scope: !957, file: !81, line: 373, column: 12)
!957 = distinct !DILexicalBlock(scope: !953, file: !81, line: 372, column: 19)
!958 = !DILocation(line: 373, column: 17, scope: !956)
!959 = !DILocation(line: 373, column: 21, scope: !956)
!960 = !DILocation(line: 373, column: 20, scope: !956)
!961 = !DILocation(line: 373, column: 12, scope: !957)
!962 = !DILocation(line: 374, column: 30, scope: !963)
!963 = distinct !DILexicalBlock(scope: !956, file: !81, line: 373, column: 27)
!964 = !DILocation(line: 374, column: 37, scope: !963)
!965 = !DILocation(line: 374, column: 10, scope: !963)
!966 = !DILocation(line: 375, column: 9, scope: !963)
!967 = !DILocation(line: 376, column: 30, scope: !968)
!968 = distinct !DILexicalBlock(scope: !956, file: !81, line: 375, column: 16)
!969 = !DILocation(line: 376, column: 44, scope: !968)
!970 = !DILocation(line: 376, column: 10, scope: !968)
!971 = !DILocation(line: 378, column: 8, scope: !957)
!972 = !DILocation(line: 379, column: 7, scope: !949)
!973 = !DILocation(line: 380, column: 27, scope: !974)
!974 = distinct !DILexicalBlock(scope: !945, file: !81, line: 379, column: 14)
!975 = !DILocation(line: 380, column: 33, scope: !974)
!976 = !DILocation(line: 380, column: 8, scope: !974)
!977 = !DILocation(line: 382, column: 6, scope: !946)
!978 = !DILocation(line: 383, column: 5, scope: !936)
!979 = !DILocation(line: 384, column: 4, scope: !927)
!980 = !DILocation(line: 365, column: 30, scope: !921)
!981 = !DILocation(line: 365, column: 4, scope: !921)
!982 = distinct !{!982, !925, !983, !631}
!983 = !DILocation(line: 384, column: 4, scope: !918)
!984 = !DILocation(line: 385, column: 8, scope: !915)
!985 = !DILocation(line: 387, column: 6, scope: !986)
!986 = distinct !DILexicalBlock(scope: !887, file: !81, line: 387, column: 6)
!987 = !DILocation(line: 387, column: 6, scope: !887)
!988 = !DILocation(line: 388, column: 12, scope: !989)
!989 = distinct !DILexicalBlock(scope: !986, file: !81, line: 387, column: 11)
!990 = !DILocation(line: 388, column: 4, scope: !989)
!991 = !DILocation(line: 389, column: 3, scope: !989)
!992 = !DILocation(line: 390, column: 2, scope: !887)
!993 = !DILocation(line: 391, column: 10, scope: !859)
!994 = !DILocation(line: 391, column: 3, scope: !859)
!995 = distinct !DISubprogram(name: "pgsql_list_secrets", scope: !81, file: !81, line: 394, type: !462, scopeLine: 395, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!996 = !DILocalVariable(name: "realm", arg: 1, scope: !995, file: !81, line: 394, type: !447)
!997 = !DILocation(line: 394, column: 40, scope: !995)
!998 = !DILocalVariable(name: "secrets", arg: 2, scope: !995, file: !81, line: 394, type: !439)
!999 = !DILocation(line: 394, column: 63, scope: !995)
!1000 = !DILocalVariable(name: "realms", arg: 3, scope: !995, file: !81, line: 394, type: !439)
!1001 = !DILocation(line: 394, column: 88, scope: !995)
!1002 = !DILocalVariable(name: "ret", scope: !995, file: !81, line: 396, type: !46)
!1003 = !DILocation(line: 396, column: 6, scope: !995)
!1004 = !DILocalVariable(name: "realm0", scope: !995, file: !81, line: 398, type: !871)
!1005 = !DILocation(line: 398, column: 10, scope: !995)
!1006 = !DILocation(line: 399, column: 6, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !995, file: !81, line: 399, column: 5)
!1008 = !DILocation(line: 399, column: 5, scope: !995)
!1009 = !DILocation(line: 399, column: 19, scope: !1007)
!1010 = !DILocation(line: 399, column: 18, scope: !1007)
!1011 = !DILocation(line: 399, column: 13, scope: !1007)
!1012 = !DILocalVariable(name: "statement", scope: !995, file: !81, line: 401, type: !573)
!1013 = !DILocation(line: 401, column: 7, scope: !995)
!1014 = !DILocation(line: 402, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !995, file: !81, line: 402, column: 6)
!1016 = !DILocation(line: 402, column: 6, scope: !995)
!1017 = !DILocation(line: 403, column: 12, scope: !1018)
!1018 = distinct !DILexicalBlock(scope: !1015, file: !81, line: 402, column: 16)
!1019 = !DILocation(line: 403, column: 113, scope: !1018)
!1020 = !DILocation(line: 403, column: 3, scope: !1018)
!1021 = !DILocation(line: 404, column: 2, scope: !1018)
!1022 = !DILocation(line: 405, column: 12, scope: !1023)
!1023 = distinct !DILexicalBlock(scope: !1015, file: !81, line: 404, column: 9)
!1024 = !DILocation(line: 405, column: 3, scope: !1023)
!1025 = !DILocation(line: 408, column: 32, scope: !995)
!1026 = !DILocalVariable(name: "pqc", scope: !995, file: !81, line: 410, type: !55)
!1027 = !DILocation(line: 410, column: 10, scope: !995)
!1028 = !DILocation(line: 410, column: 16, scope: !995)
!1029 = !DILocation(line: 411, column: 5, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !995, file: !81, line: 411, column: 5)
!1031 = !DILocation(line: 411, column: 5, scope: !995)
!1032 = !DILocalVariable(name: "res", scope: !1033, file: !81, line: 412, type: !581)
!1033 = distinct !DILexicalBlock(scope: !1030, file: !81, line: 411, column: 10)
!1034 = !DILocation(line: 412, column: 13, scope: !1033)
!1035 = !DILocation(line: 412, column: 26, scope: !1033)
!1036 = !DILocation(line: 412, column: 31, scope: !1033)
!1037 = !DILocation(line: 412, column: 19, scope: !1033)
!1038 = !DILocation(line: 413, column: 7, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1033, file: !81, line: 413, column: 6)
!1040 = !DILocation(line: 413, column: 11, scope: !1039)
!1041 = !DILocation(line: 413, column: 30, scope: !1039)
!1042 = !DILocation(line: 413, column: 15, scope: !1039)
!1043 = !DILocation(line: 413, column: 35, scope: !1039)
!1044 = !DILocation(line: 413, column: 6, scope: !1033)
!1045 = !DILocation(line: 414, column: 106, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1039, file: !81, line: 413, column: 56)
!1047 = !DILocation(line: 414, column: 91, scope: !1046)
!1048 = !DILocation(line: 414, column: 4, scope: !1046)
!1049 = !DILocation(line: 415, column: 3, scope: !1046)
!1050 = !DILocalVariable(name: "i", scope: !1051, file: !81, line: 416, type: !46)
!1051 = distinct !DILexicalBlock(scope: !1039, file: !81, line: 415, column: 10)
!1052 = !DILocation(line: 416, column: 8, scope: !1051)
!1053 = !DILocation(line: 417, column: 9, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1051, file: !81, line: 417, column: 4)
!1055 = !DILocation(line: 417, column: 8, scope: !1054)
!1056 = !DILocation(line: 417, column: 12, scope: !1057)
!1057 = distinct !DILexicalBlock(scope: !1054, file: !81, line: 417, column: 4)
!1058 = !DILocation(line: 417, column: 24, scope: !1057)
!1059 = !DILocation(line: 417, column: 14, scope: !1057)
!1060 = !DILocation(line: 417, column: 13, scope: !1057)
!1061 = !DILocation(line: 417, column: 4, scope: !1054)
!1062 = !DILocalVariable(name: "kval", scope: !1063, file: !81, line: 418, type: !61)
!1063 = distinct !DILexicalBlock(scope: !1057, file: !81, line: 417, column: 34)
!1064 = !DILocation(line: 418, column: 11, scope: !1063)
!1065 = !DILocation(line: 418, column: 29, scope: !1063)
!1066 = !DILocation(line: 418, column: 33, scope: !1063)
!1067 = !DILocation(line: 418, column: 18, scope: !1063)
!1068 = !DILocation(line: 419, column: 8, scope: !1069)
!1069 = distinct !DILexicalBlock(scope: !1063, file: !81, line: 419, column: 8)
!1070 = !DILocation(line: 419, column: 8, scope: !1063)
!1071 = !DILocalVariable(name: "rval", scope: !1072, file: !81, line: 420, type: !61)
!1072 = distinct !DILexicalBlock(scope: !1069, file: !81, line: 419, column: 14)
!1073 = !DILocation(line: 420, column: 12, scope: !1072)
!1074 = !DILocation(line: 420, column: 30, scope: !1072)
!1075 = !DILocation(line: 420, column: 34, scope: !1072)
!1076 = !DILocation(line: 420, column: 19, scope: !1072)
!1077 = !DILocation(line: 421, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1072, file: !81, line: 421, column: 9)
!1079 = !DILocation(line: 421, column: 9, scope: !1072)
!1080 = !DILocation(line: 422, column: 27, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1078, file: !81, line: 421, column: 18)
!1082 = !DILocation(line: 422, column: 35, scope: !1081)
!1083 = !DILocation(line: 422, column: 7, scope: !1081)
!1084 = !DILocation(line: 423, column: 10, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1081, file: !81, line: 423, column: 10)
!1086 = !DILocation(line: 423, column: 10, scope: !1081)
!1087 = !DILocation(line: 424, column: 11, scope: !1088)
!1088 = distinct !DILexicalBlock(scope: !1089, file: !81, line: 424, column: 11)
!1089 = distinct !DILexicalBlock(scope: !1085, file: !81, line: 423, column: 18)
!1090 = !DILocation(line: 424, column: 16, scope: !1088)
!1091 = !DILocation(line: 424, column: 20, scope: !1088)
!1092 = !DILocation(line: 424, column: 19, scope: !1088)
!1093 = !DILocation(line: 424, column: 11, scope: !1089)
!1094 = !DILocation(line: 425, column: 29, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1088, file: !81, line: 424, column: 26)
!1096 = !DILocation(line: 425, column: 36, scope: !1095)
!1097 = !DILocation(line: 425, column: 9, scope: !1095)
!1098 = !DILocation(line: 426, column: 8, scope: !1095)
!1099 = !DILocation(line: 427, column: 29, scope: !1100)
!1100 = distinct !DILexicalBlock(scope: !1088, file: !81, line: 426, column: 15)
!1101 = !DILocation(line: 427, column: 43, scope: !1100)
!1102 = !DILocation(line: 427, column: 9, scope: !1100)
!1103 = !DILocation(line: 429, column: 7, scope: !1089)
!1104 = !DILocation(line: 430, column: 6, scope: !1081)
!1105 = !DILocation(line: 431, column: 25, scope: !1106)
!1106 = distinct !DILexicalBlock(scope: !1078, file: !81, line: 430, column: 13)
!1107 = !DILocation(line: 431, column: 30, scope: !1106)
!1108 = !DILocation(line: 431, column: 7, scope: !1106)
!1109 = !DILocation(line: 433, column: 5, scope: !1072)
!1110 = !DILocation(line: 434, column: 4, scope: !1063)
!1111 = !DILocation(line: 417, column: 30, scope: !1057)
!1112 = !DILocation(line: 417, column: 4, scope: !1057)
!1113 = distinct !{!1113, !1061, !1114, !631}
!1114 = !DILocation(line: 434, column: 4, scope: !1054)
!1115 = !DILocation(line: 435, column: 8, scope: !1051)
!1116 = !DILocation(line: 437, column: 6, scope: !1117)
!1117 = distinct !DILexicalBlock(scope: !1033, file: !81, line: 437, column: 6)
!1118 = !DILocation(line: 437, column: 6, scope: !1033)
!1119 = !DILocation(line: 438, column: 12, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !1117, file: !81, line: 437, column: 11)
!1121 = !DILocation(line: 438, column: 4, scope: !1120)
!1122 = !DILocation(line: 439, column: 3, scope: !1120)
!1123 = !DILocation(line: 440, column: 2, scope: !1033)
!1124 = !DILocation(line: 441, column: 9, scope: !995)
!1125 = !DILocation(line: 441, column: 2, scope: !995)
!1126 = distinct !DISubprogram(name: "pgsql_del_secret", scope: !81, file: !81, line: 444, type: !458, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1127 = !DILocalVariable(name: "secret", arg: 1, scope: !1126, file: !81, line: 444, type: !447)
!1128 = !DILocation(line: 444, column: 38, scope: !1126)
!1129 = !DILocalVariable(name: "realm", arg: 2, scope: !1126, file: !81, line: 444, type: !447)
!1130 = !DILocation(line: 444, column: 55, scope: !1126)
!1131 = !DILocalVariable(name: "ret", scope: !1126, file: !81, line: 445, type: !46)
!1132 = !DILocation(line: 445, column: 7, scope: !1126)
!1133 = !DILocation(line: 446, column: 32, scope: !1126)
!1134 = !DILocalVariable(name: "statement", scope: !1126, file: !81, line: 447, type: !573)
!1135 = !DILocation(line: 447, column: 7, scope: !1126)
!1136 = !DILocalVariable(name: "pqc", scope: !1126, file: !81, line: 448, type: !55)
!1137 = !DILocation(line: 448, column: 10, scope: !1126)
!1138 = !DILocation(line: 448, column: 16, scope: !1126)
!1139 = !DILocation(line: 449, column: 6, scope: !1140)
!1140 = distinct !DILexicalBlock(scope: !1126, file: !81, line: 449, column: 6)
!1141 = !DILocation(line: 449, column: 6, scope: !1126)
!1142 = !DILocation(line: 450, column: 7, scope: !1143)
!1143 = distinct !DILexicalBlock(scope: !1144, file: !81, line: 450, column: 6)
!1144 = distinct !DILexicalBlock(scope: !1140, file: !81, line: 449, column: 11)
!1145 = !DILocation(line: 450, column: 14, scope: !1143)
!1146 = !DILocation(line: 450, column: 18, scope: !1143)
!1147 = !DILocation(line: 450, column: 27, scope: !1143)
!1148 = !DILocation(line: 450, column: 6, scope: !1144)
!1149 = !DILocation(line: 451, column: 14, scope: !1143)
!1150 = !DILocation(line: 451, column: 85, scope: !1143)
!1151 = !DILocation(line: 451, column: 5, scope: !1143)
!1152 = !DILocation(line: 453, column: 14, scope: !1143)
!1153 = !DILocation(line: 453, column: 100, scope: !1143)
!1154 = !DILocation(line: 453, column: 107, scope: !1143)
!1155 = !DILocation(line: 453, column: 5, scope: !1143)
!1156 = !DILocalVariable(name: "res", scope: !1144, file: !81, line: 455, type: !581)
!1157 = !DILocation(line: 455, column: 13, scope: !1144)
!1158 = !DILocation(line: 455, column: 26, scope: !1144)
!1159 = !DILocation(line: 455, column: 31, scope: !1144)
!1160 = !DILocation(line: 455, column: 19, scope: !1144)
!1161 = !DILocation(line: 456, column: 7, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1144, file: !81, line: 456, column: 7)
!1163 = !DILocation(line: 456, column: 7, scope: !1144)
!1164 = !DILocation(line: 457, column: 12, scope: !1165)
!1165 = distinct !DILexicalBlock(scope: !1162, file: !81, line: 456, column: 12)
!1166 = !DILocation(line: 457, column: 4, scope: !1165)
!1167 = !DILocation(line: 458, column: 11, scope: !1165)
!1168 = !DILocation(line: 459, column: 3, scope: !1165)
!1169 = !DILocation(line: 460, column: 2, scope: !1144)
!1170 = !DILocation(line: 461, column: 10, scope: !1126)
!1171 = !DILocation(line: 461, column: 3, scope: !1126)
!1172 = distinct !DISubprogram(name: "pgsql_set_secret", scope: !81, file: !81, line: 464, type: !458, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1173 = !DILocalVariable(name: "secret", arg: 1, scope: !1172, file: !81, line: 464, type: !447)
!1174 = !DILocation(line: 464, column: 38, scope: !1172)
!1175 = !DILocalVariable(name: "realm", arg: 2, scope: !1172, file: !81, line: 464, type: !447)
!1176 = !DILocation(line: 464, column: 55, scope: !1172)
!1177 = !DILocalVariable(name: "ret", scope: !1172, file: !81, line: 465, type: !46)
!1178 = !DILocation(line: 465, column: 7, scope: !1172)
!1179 = !DILocation(line: 466, column: 33, scope: !1172)
!1180 = !DILocalVariable(name: "statement", scope: !1172, file: !81, line: 467, type: !573)
!1181 = !DILocation(line: 467, column: 7, scope: !1172)
!1182 = !DILocalVariable(name: "pqc", scope: !1172, file: !81, line: 468, type: !55)
!1183 = !DILocation(line: 468, column: 10, scope: !1172)
!1184 = !DILocation(line: 468, column: 16, scope: !1172)
!1185 = !DILocation(line: 469, column: 6, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1172, file: !81, line: 469, column: 6)
!1187 = !DILocation(line: 469, column: 6, scope: !1172)
!1188 = !DILocation(line: 470, column: 13, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !81, line: 469, column: 11)
!1190 = !DILocation(line: 470, column: 99, scope: !1189)
!1191 = !DILocation(line: 470, column: 105, scope: !1189)
!1192 = !DILocation(line: 470, column: 4, scope: !1189)
!1193 = !DILocalVariable(name: "res", scope: !1189, file: !81, line: 471, type: !581)
!1194 = !DILocation(line: 471, column: 14, scope: !1189)
!1195 = !DILocation(line: 471, column: 27, scope: !1189)
!1196 = !DILocation(line: 471, column: 32, scope: !1189)
!1197 = !DILocation(line: 471, column: 20, scope: !1189)
!1198 = !DILocation(line: 472, column: 9, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1189, file: !81, line: 472, column: 8)
!1200 = !DILocation(line: 472, column: 13, scope: !1199)
!1201 = !DILocation(line: 472, column: 32, scope: !1199)
!1202 = !DILocation(line: 472, column: 17, scope: !1199)
!1203 = !DILocation(line: 472, column: 37, scope: !1199)
!1204 = !DILocation(line: 472, column: 8, scope: !1189)
!1205 = !DILocation(line: 476, column: 21, scope: !1206)
!1206 = distinct !DILexicalBlock(scope: !1199, file: !81, line: 472, column: 59)
!1207 = !DILocation(line: 476, column: 6, scope: !1206)
!1208 = !DILocation(line: 473, column: 5, scope: !1206)
!1209 = !DILocation(line: 477, column: 4, scope: !1206)
!1210 = !DILocation(line: 478, column: 10, scope: !1211)
!1211 = distinct !DILexicalBlock(scope: !1199, file: !81, line: 477, column: 11)
!1212 = !DILocation(line: 480, column: 8, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1189, file: !81, line: 480, column: 8)
!1214 = !DILocation(line: 480, column: 8, scope: !1189)
!1215 = !DILocation(line: 481, column: 14, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !81, line: 480, column: 13)
!1217 = !DILocation(line: 481, column: 6, scope: !1216)
!1218 = !DILocation(line: 482, column: 4, scope: !1216)
!1219 = !DILocation(line: 483, column: 2, scope: !1189)
!1220 = !DILocation(line: 485, column: 9, scope: !1172)
!1221 = !DILocation(line: 485, column: 2, scope: !1172)
!1222 = distinct !DISubprogram(name: "pgsql_add_origin", scope: !81, file: !81, line: 526, type: !458, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1223 = !DILocalVariable(name: "origin", arg: 1, scope: !1222, file: !81, line: 526, type: !447)
!1224 = !DILocation(line: 526, column: 38, scope: !1222)
!1225 = !DILocalVariable(name: "realm", arg: 2, scope: !1222, file: !81, line: 526, type: !447)
!1226 = !DILocation(line: 526, column: 55, scope: !1222)
!1227 = !DILocalVariable(name: "ret", scope: !1222, file: !81, line: 527, type: !46)
!1228 = !DILocation(line: 527, column: 7, scope: !1222)
!1229 = !DILocalVariable(name: "statement", scope: !1222, file: !81, line: 528, type: !573)
!1230 = !DILocation(line: 528, column: 7, scope: !1222)
!1231 = !DILocalVariable(name: "pqc", scope: !1222, file: !81, line: 529, type: !55)
!1232 = !DILocation(line: 529, column: 10, scope: !1222)
!1233 = !DILocation(line: 529, column: 16, scope: !1222)
!1234 = !DILocation(line: 530, column: 5, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1222, file: !81, line: 530, column: 5)
!1236 = !DILocation(line: 530, column: 5, scope: !1222)
!1237 = !DILocation(line: 531, column: 12, scope: !1238)
!1238 = distinct !DILexicalBlock(scope: !1235, file: !81, line: 530, column: 10)
!1239 = !DILocation(line: 531, column: 108, scope: !1238)
!1240 = !DILocation(line: 531, column: 115, scope: !1238)
!1241 = !DILocation(line: 531, column: 3, scope: !1238)
!1242 = !DILocalVariable(name: "res", scope: !1238, file: !81, line: 532, type: !581)
!1243 = !DILocation(line: 532, column: 13, scope: !1238)
!1244 = !DILocation(line: 532, column: 26, scope: !1238)
!1245 = !DILocation(line: 532, column: 31, scope: !1238)
!1246 = !DILocation(line: 532, column: 19, scope: !1238)
!1247 = !DILocation(line: 533, column: 7, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1238, file: !81, line: 533, column: 6)
!1249 = !DILocation(line: 533, column: 11, scope: !1248)
!1250 = !DILocation(line: 533, column: 30, scope: !1248)
!1251 = !DILocation(line: 533, column: 15, scope: !1248)
!1252 = !DILocation(line: 533, column: 35, scope: !1248)
!1253 = !DILocation(line: 533, column: 6, scope: !1238)
!1254 = !DILocation(line: 534, column: 98, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1248, file: !81, line: 533, column: 57)
!1256 = !DILocation(line: 534, column: 83, scope: !1255)
!1257 = !DILocation(line: 534, column: 4, scope: !1255)
!1258 = !DILocation(line: 535, column: 3, scope: !1255)
!1259 = !DILocation(line: 536, column: 9, scope: !1260)
!1260 = distinct !DILexicalBlock(scope: !1248, file: !81, line: 535, column: 10)
!1261 = !DILocation(line: 538, column: 6, scope: !1262)
!1262 = distinct !DILexicalBlock(scope: !1238, file: !81, line: 538, column: 6)
!1263 = !DILocation(line: 538, column: 6, scope: !1238)
!1264 = !DILocation(line: 539, column: 12, scope: !1265)
!1265 = distinct !DILexicalBlock(scope: !1262, file: !81, line: 538, column: 11)
!1266 = !DILocation(line: 539, column: 4, scope: !1265)
!1267 = !DILocation(line: 540, column: 3, scope: !1265)
!1268 = !DILocation(line: 541, column: 2, scope: !1238)
!1269 = !DILocation(line: 542, column: 10, scope: !1222)
!1270 = !DILocation(line: 542, column: 3, scope: !1222)
!1271 = distinct !DISubprogram(name: "pgsql_del_origin", scope: !81, file: !81, line: 545, type: !470, scopeLine: 545, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1272 = !DILocalVariable(name: "origin", arg: 1, scope: !1271, file: !81, line: 545, type: !447)
!1273 = !DILocation(line: 545, column: 38, scope: !1271)
!1274 = !DILocalVariable(name: "ret", scope: !1271, file: !81, line: 546, type: !46)
!1275 = !DILocation(line: 546, column: 7, scope: !1271)
!1276 = !DILocalVariable(name: "statement", scope: !1271, file: !81, line: 547, type: !573)
!1277 = !DILocation(line: 547, column: 7, scope: !1271)
!1278 = !DILocalVariable(name: "pqc", scope: !1271, file: !81, line: 548, type: !55)
!1279 = !DILocation(line: 548, column: 10, scope: !1271)
!1280 = !DILocation(line: 548, column: 16, scope: !1271)
!1281 = !DILocation(line: 549, column: 5, scope: !1282)
!1282 = distinct !DILexicalBlock(scope: !1271, file: !81, line: 549, column: 5)
!1283 = !DILocation(line: 549, column: 5, scope: !1271)
!1284 = !DILocation(line: 550, column: 12, scope: !1285)
!1285 = distinct !DILexicalBlock(scope: !1282, file: !81, line: 549, column: 10)
!1286 = !DILocation(line: 550, column: 93, scope: !1285)
!1287 = !DILocation(line: 550, column: 3, scope: !1285)
!1288 = !DILocalVariable(name: "res", scope: !1285, file: !81, line: 551, type: !581)
!1289 = !DILocation(line: 551, column: 13, scope: !1285)
!1290 = !DILocation(line: 551, column: 26, scope: !1285)
!1291 = !DILocation(line: 551, column: 31, scope: !1285)
!1292 = !DILocation(line: 551, column: 19, scope: !1285)
!1293 = !DILocation(line: 552, column: 7, scope: !1294)
!1294 = distinct !DILexicalBlock(scope: !1285, file: !81, line: 552, column: 6)
!1295 = !DILocation(line: 552, column: 11, scope: !1294)
!1296 = !DILocation(line: 552, column: 30, scope: !1294)
!1297 = !DILocation(line: 552, column: 15, scope: !1294)
!1298 = !DILocation(line: 552, column: 35, scope: !1294)
!1299 = !DILocation(line: 552, column: 6, scope: !1285)
!1300 = !DILocation(line: 553, column: 97, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1294, file: !81, line: 552, column: 57)
!1302 = !DILocation(line: 553, column: 82, scope: !1301)
!1303 = !DILocation(line: 553, column: 4, scope: !1301)
!1304 = !DILocation(line: 554, column: 3, scope: !1301)
!1305 = !DILocation(line: 555, column: 9, scope: !1306)
!1306 = distinct !DILexicalBlock(scope: !1294, file: !81, line: 554, column: 10)
!1307 = !DILocation(line: 557, column: 6, scope: !1308)
!1308 = distinct !DILexicalBlock(scope: !1285, file: !81, line: 557, column: 6)
!1309 = !DILocation(line: 557, column: 6, scope: !1285)
!1310 = !DILocation(line: 558, column: 12, scope: !1311)
!1311 = distinct !DILexicalBlock(scope: !1308, file: !81, line: 557, column: 11)
!1312 = !DILocation(line: 558, column: 4, scope: !1311)
!1313 = !DILocation(line: 559, column: 3, scope: !1311)
!1314 = !DILocation(line: 560, column: 2, scope: !1285)
!1315 = !DILocation(line: 561, column: 10, scope: !1271)
!1316 = !DILocation(line: 561, column: 3, scope: !1271)
!1317 = distinct !DISubprogram(name: "pgsql_list_origins", scope: !81, file: !81, line: 564, type: !462, scopeLine: 565, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1318 = !DILocalVariable(name: "realm", arg: 1, scope: !1317, file: !81, line: 564, type: !447)
!1319 = !DILocation(line: 564, column: 40, scope: !1317)
!1320 = !DILocalVariable(name: "origins", arg: 2, scope: !1317, file: !81, line: 564, type: !439)
!1321 = !DILocation(line: 564, column: 63, scope: !1317)
!1322 = !DILocalVariable(name: "realms", arg: 3, scope: !1317, file: !81, line: 564, type: !439)
!1323 = !DILocation(line: 564, column: 88, scope: !1317)
!1324 = !DILocalVariable(name: "ret", scope: !1317, file: !81, line: 566, type: !46)
!1325 = !DILocation(line: 566, column: 6, scope: !1317)
!1326 = !DILocalVariable(name: "realm0", scope: !1317, file: !81, line: 568, type: !871)
!1327 = !DILocation(line: 568, column: 10, scope: !1317)
!1328 = !DILocation(line: 569, column: 6, scope: !1329)
!1329 = distinct !DILexicalBlock(scope: !1317, file: !81, line: 569, column: 5)
!1330 = !DILocation(line: 569, column: 5, scope: !1317)
!1331 = !DILocation(line: 569, column: 19, scope: !1329)
!1332 = !DILocation(line: 569, column: 18, scope: !1329)
!1333 = !DILocation(line: 569, column: 13, scope: !1329)
!1334 = !DILocation(line: 571, column: 33, scope: !1317)
!1335 = !DILocalVariable(name: "pqc", scope: !1317, file: !81, line: 573, type: !55)
!1336 = !DILocation(line: 573, column: 10, scope: !1317)
!1337 = !DILocation(line: 573, column: 16, scope: !1317)
!1338 = !DILocation(line: 575, column: 5, scope: !1339)
!1339 = distinct !DILexicalBlock(scope: !1317, file: !81, line: 575, column: 5)
!1340 = !DILocation(line: 575, column: 5, scope: !1317)
!1341 = !DILocalVariable(name: "statement", scope: !1342, file: !81, line: 577, type: !573)
!1342 = distinct !DILexicalBlock(scope: !1339, file: !81, line: 575, column: 10)
!1343 = !DILocation(line: 577, column: 8, scope: !1342)
!1344 = !DILocation(line: 579, column: 6, scope: !1345)
!1345 = distinct !DILexicalBlock(scope: !1342, file: !81, line: 579, column: 6)
!1346 = !DILocation(line: 579, column: 12, scope: !1345)
!1347 = !DILocation(line: 579, column: 15, scope: !1345)
!1348 = !DILocation(line: 579, column: 6, scope: !1342)
!1349 = !DILocation(line: 580, column: 14, scope: !1350)
!1350 = distinct !DILexicalBlock(scope: !1345, file: !81, line: 579, column: 25)
!1351 = !DILocation(line: 580, column: 123, scope: !1350)
!1352 = !DILocation(line: 580, column: 5, scope: !1350)
!1353 = !DILocation(line: 581, column: 3, scope: !1350)
!1354 = !DILocation(line: 582, column: 14, scope: !1355)
!1355 = distinct !DILexicalBlock(scope: !1345, file: !81, line: 581, column: 10)
!1356 = !DILocation(line: 582, column: 5, scope: !1355)
!1357 = !DILocalVariable(name: "res", scope: !1342, file: !81, line: 584, type: !581)
!1358 = !DILocation(line: 584, column: 13, scope: !1342)
!1359 = !DILocation(line: 584, column: 26, scope: !1342)
!1360 = !DILocation(line: 584, column: 31, scope: !1342)
!1361 = !DILocation(line: 584, column: 19, scope: !1342)
!1362 = !DILocation(line: 585, column: 7, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1342, file: !81, line: 585, column: 6)
!1364 = !DILocation(line: 585, column: 11, scope: !1363)
!1365 = !DILocation(line: 585, column: 30, scope: !1363)
!1366 = !DILocation(line: 585, column: 15, scope: !1363)
!1367 = !DILocation(line: 585, column: 35, scope: !1363)
!1368 = !DILocation(line: 585, column: 6, scope: !1342)
!1369 = !DILocation(line: 586, column: 106, scope: !1370)
!1370 = distinct !DILexicalBlock(scope: !1363, file: !81, line: 585, column: 56)
!1371 = !DILocation(line: 586, column: 91, scope: !1370)
!1372 = !DILocation(line: 586, column: 4, scope: !1370)
!1373 = !DILocation(line: 587, column: 3, scope: !1370)
!1374 = !DILocalVariable(name: "i", scope: !1375, file: !81, line: 588, type: !46)
!1375 = distinct !DILexicalBlock(scope: !1363, file: !81, line: 587, column: 10)
!1376 = !DILocation(line: 588, column: 8, scope: !1375)
!1377 = !DILocation(line: 589, column: 9, scope: !1378)
!1378 = distinct !DILexicalBlock(scope: !1375, file: !81, line: 589, column: 4)
!1379 = !DILocation(line: 589, column: 8, scope: !1378)
!1380 = !DILocation(line: 589, column: 12, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1378, file: !81, line: 589, column: 4)
!1382 = !DILocation(line: 589, column: 24, scope: !1381)
!1383 = !DILocation(line: 589, column: 14, scope: !1381)
!1384 = !DILocation(line: 589, column: 13, scope: !1381)
!1385 = !DILocation(line: 589, column: 4, scope: !1378)
!1386 = !DILocalVariable(name: "kval", scope: !1387, file: !81, line: 590, type: !61)
!1387 = distinct !DILexicalBlock(scope: !1381, file: !81, line: 589, column: 34)
!1388 = !DILocation(line: 590, column: 11, scope: !1387)
!1389 = !DILocation(line: 590, column: 29, scope: !1387)
!1390 = !DILocation(line: 590, column: 33, scope: !1387)
!1391 = !DILocation(line: 590, column: 18, scope: !1387)
!1392 = !DILocation(line: 591, column: 8, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1387, file: !81, line: 591, column: 8)
!1394 = !DILocation(line: 591, column: 8, scope: !1387)
!1395 = !DILocalVariable(name: "rval", scope: !1396, file: !81, line: 592, type: !61)
!1396 = distinct !DILexicalBlock(scope: !1393, file: !81, line: 591, column: 14)
!1397 = !DILocation(line: 592, column: 12, scope: !1396)
!1398 = !DILocation(line: 592, column: 30, scope: !1396)
!1399 = !DILocation(line: 592, column: 34, scope: !1396)
!1400 = !DILocation(line: 592, column: 19, scope: !1396)
!1401 = !DILocation(line: 593, column: 9, scope: !1402)
!1402 = distinct !DILexicalBlock(scope: !1396, file: !81, line: 593, column: 9)
!1403 = !DILocation(line: 593, column: 9, scope: !1396)
!1404 = !DILocation(line: 594, column: 10, scope: !1405)
!1405 = distinct !DILexicalBlock(scope: !1406, file: !81, line: 594, column: 10)
!1406 = distinct !DILexicalBlock(scope: !1402, file: !81, line: 593, column: 15)
!1407 = !DILocation(line: 594, column: 10, scope: !1406)
!1408 = !DILocation(line: 595, column: 28, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1405, file: !81, line: 594, column: 19)
!1410 = !DILocation(line: 595, column: 36, scope: !1409)
!1411 = !DILocation(line: 595, column: 8, scope: !1409)
!1412 = !DILocation(line: 596, column: 11, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1409, file: !81, line: 596, column: 11)
!1414 = !DILocation(line: 596, column: 11, scope: !1409)
!1415 = !DILocation(line: 597, column: 12, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1417, file: !81, line: 597, column: 12)
!1417 = distinct !DILexicalBlock(scope: !1413, file: !81, line: 596, column: 19)
!1418 = !DILocation(line: 597, column: 17, scope: !1416)
!1419 = !DILocation(line: 597, column: 21, scope: !1416)
!1420 = !DILocation(line: 597, column: 20, scope: !1416)
!1421 = !DILocation(line: 597, column: 12, scope: !1417)
!1422 = !DILocation(line: 598, column: 30, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1416, file: !81, line: 597, column: 27)
!1424 = !DILocation(line: 598, column: 37, scope: !1423)
!1425 = !DILocation(line: 598, column: 10, scope: !1423)
!1426 = !DILocation(line: 599, column: 9, scope: !1423)
!1427 = !DILocation(line: 600, column: 30, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1416, file: !81, line: 599, column: 16)
!1429 = !DILocation(line: 600, column: 44, scope: !1428)
!1430 = !DILocation(line: 600, column: 10, scope: !1428)
!1431 = !DILocation(line: 602, column: 8, scope: !1417)
!1432 = !DILocation(line: 603, column: 7, scope: !1409)
!1433 = !DILocation(line: 604, column: 30, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1405, file: !81, line: 603, column: 14)
!1435 = !DILocation(line: 604, column: 35, scope: !1434)
!1436 = !DILocation(line: 604, column: 8, scope: !1434)
!1437 = !DILocation(line: 606, column: 6, scope: !1406)
!1438 = !DILocation(line: 607, column: 5, scope: !1396)
!1439 = !DILocation(line: 608, column: 4, scope: !1387)
!1440 = !DILocation(line: 589, column: 30, scope: !1381)
!1441 = !DILocation(line: 589, column: 4, scope: !1381)
!1442 = distinct !{!1442, !1385, !1443, !631}
!1443 = !DILocation(line: 608, column: 4, scope: !1378)
!1444 = !DILocation(line: 609, column: 8, scope: !1375)
!1445 = !DILocation(line: 611, column: 6, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1342, file: !81, line: 611, column: 6)
!1447 = !DILocation(line: 611, column: 6, scope: !1342)
!1448 = !DILocation(line: 612, column: 12, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1446, file: !81, line: 611, column: 11)
!1450 = !DILocation(line: 612, column: 4, scope: !1449)
!1451 = !DILocation(line: 613, column: 3, scope: !1449)
!1452 = !DILocation(line: 614, column: 2, scope: !1342)
!1453 = !DILocation(line: 615, column: 9, scope: !1317)
!1454 = !DILocation(line: 615, column: 2, scope: !1317)
!1455 = distinct !DISubprogram(name: "pgsql_set_realm_option_one", scope: !81, file: !81, line: 618, type: !475, scopeLine: 618, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1456 = !DILocalVariable(name: "realm", arg: 1, scope: !1455, file: !81, line: 618, type: !447)
!1457 = !DILocation(line: 618, column: 48, scope: !1455)
!1458 = !DILocalVariable(name: "value", arg: 2, scope: !1455, file: !81, line: 618, type: !60)
!1459 = !DILocation(line: 618, column: 69, scope: !1455)
!1460 = !DILocalVariable(name: "opt", arg: 3, scope: !1455, file: !81, line: 618, type: !63)
!1461 = !DILocation(line: 618, column: 88, scope: !1455)
!1462 = !DILocalVariable(name: "ret", scope: !1455, file: !81, line: 619, type: !46)
!1463 = !DILocation(line: 619, column: 7, scope: !1455)
!1464 = !DILocalVariable(name: "statement", scope: !1455, file: !81, line: 620, type: !573)
!1465 = !DILocation(line: 620, column: 7, scope: !1455)
!1466 = !DILocalVariable(name: "pqc", scope: !1455, file: !81, line: 621, type: !55)
!1467 = !DILocation(line: 621, column: 10, scope: !1455)
!1468 = !DILocation(line: 621, column: 16, scope: !1455)
!1469 = !DILocation(line: 622, column: 5, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1455, file: !81, line: 622, column: 5)
!1471 = !DILocation(line: 622, column: 5, scope: !1455)
!1472 = !DILocation(line: 624, column: 13, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1474, file: !81, line: 623, column: 3)
!1474 = distinct !DILexicalBlock(scope: !1470, file: !81, line: 622, column: 10)
!1475 = !DILocation(line: 624, column: 103, scope: !1473)
!1476 = !DILocation(line: 624, column: 109, scope: !1473)
!1477 = !DILocation(line: 624, column: 4, scope: !1473)
!1478 = !DILocalVariable(name: "res", scope: !1473, file: !81, line: 625, type: !581)
!1479 = !DILocation(line: 625, column: 14, scope: !1473)
!1480 = !DILocation(line: 625, column: 27, scope: !1473)
!1481 = !DILocation(line: 625, column: 32, scope: !1473)
!1482 = !DILocation(line: 625, column: 20, scope: !1473)
!1483 = !DILocation(line: 626, column: 7, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1473, file: !81, line: 626, column: 7)
!1485 = !DILocation(line: 626, column: 7, scope: !1473)
!1486 = !DILocation(line: 627, column: 13, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1484, file: !81, line: 626, column: 12)
!1488 = !DILocation(line: 627, column: 5, scope: !1487)
!1489 = !DILocation(line: 628, column: 4, scope: !1487)
!1490 = !DILocation(line: 630, column: 6, scope: !1491)
!1491 = distinct !DILexicalBlock(scope: !1474, file: !81, line: 630, column: 6)
!1492 = !DILocation(line: 630, column: 11, scope: !1491)
!1493 = !DILocation(line: 630, column: 6, scope: !1474)
!1494 = !DILocation(line: 631, column: 13, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1491, file: !81, line: 630, column: 15)
!1496 = !DILocation(line: 631, column: 115, scope: !1495)
!1497 = !DILocation(line: 631, column: 121, scope: !1495)
!1498 = !DILocation(line: 631, column: 140, scope: !1495)
!1499 = !DILocation(line: 631, column: 4, scope: !1495)
!1500 = !DILocalVariable(name: "res", scope: !1495, file: !81, line: 632, type: !581)
!1501 = !DILocation(line: 632, column: 14, scope: !1495)
!1502 = !DILocation(line: 632, column: 27, scope: !1495)
!1503 = !DILocation(line: 632, column: 32, scope: !1495)
!1504 = !DILocation(line: 632, column: 20, scope: !1495)
!1505 = !DILocation(line: 633, column: 8, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1495, file: !81, line: 633, column: 7)
!1507 = !DILocation(line: 633, column: 12, scope: !1506)
!1508 = !DILocation(line: 633, column: 31, scope: !1506)
!1509 = !DILocation(line: 633, column: 16, scope: !1506)
!1510 = !DILocation(line: 633, column: 36, scope: !1506)
!1511 = !DILocation(line: 633, column: 7, scope: !1495)
!1512 = !DILocation(line: 634, column: 105, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1506, file: !81, line: 633, column: 58)
!1514 = !DILocation(line: 634, column: 90, scope: !1513)
!1515 = !DILocation(line: 634, column: 5, scope: !1513)
!1516 = !DILocation(line: 635, column: 4, scope: !1513)
!1517 = !DILocation(line: 636, column: 10, scope: !1518)
!1518 = distinct !DILexicalBlock(scope: !1506, file: !81, line: 635, column: 11)
!1519 = !DILocation(line: 638, column: 7, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1495, file: !81, line: 638, column: 7)
!1521 = !DILocation(line: 638, column: 7, scope: !1495)
!1522 = !DILocation(line: 639, column: 13, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1520, file: !81, line: 638, column: 12)
!1524 = !DILocation(line: 639, column: 5, scope: !1523)
!1525 = !DILocation(line: 640, column: 4, scope: !1523)
!1526 = !DILocation(line: 641, column: 3, scope: !1495)
!1527 = !DILocation(line: 642, column: 2, scope: !1474)
!1528 = !DILocation(line: 643, column: 10, scope: !1455)
!1529 = !DILocation(line: 643, column: 3, scope: !1455)
!1530 = distinct !DISubprogram(name: "pgsql_list_realm_options", scope: !81, file: !81, line: 646, type: !470, scopeLine: 646, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1531 = !DILocalVariable(name: "realm", arg: 1, scope: !1530, file: !81, line: 646, type: !447)
!1532 = !DILocation(line: 646, column: 46, scope: !1530)
!1533 = !DILocalVariable(name: "ret", scope: !1530, file: !81, line: 647, type: !46)
!1534 = !DILocation(line: 647, column: 7, scope: !1530)
!1535 = !DILocation(line: 648, column: 33, scope: !1530)
!1536 = !DILocalVariable(name: "statement", scope: !1530, file: !81, line: 649, type: !573)
!1537 = !DILocation(line: 649, column: 7, scope: !1530)
!1538 = !DILocalVariable(name: "pqc", scope: !1530, file: !81, line: 650, type: !55)
!1539 = !DILocation(line: 650, column: 10, scope: !1530)
!1540 = !DILocation(line: 650, column: 16, scope: !1530)
!1541 = !DILocation(line: 651, column: 5, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1530, file: !81, line: 651, column: 5)
!1543 = !DILocation(line: 651, column: 5, scope: !1530)
!1544 = !DILocation(line: 652, column: 6, scope: !1545)
!1545 = distinct !DILexicalBlock(scope: !1546, file: !81, line: 652, column: 6)
!1546 = distinct !DILexicalBlock(scope: !1542, file: !81, line: 651, column: 10)
!1547 = !DILocation(line: 652, column: 12, scope: !1545)
!1548 = !DILocation(line: 652, column: 15, scope: !1545)
!1549 = !DILocation(line: 652, column: 6, scope: !1546)
!1550 = !DILocation(line: 653, column: 13, scope: !1551)
!1551 = distinct !DILexicalBlock(scope: !1545, file: !81, line: 652, column: 25)
!1552 = !DILocation(line: 653, column: 125, scope: !1551)
!1553 = !DILocation(line: 653, column: 4, scope: !1551)
!1554 = !DILocation(line: 654, column: 3, scope: !1551)
!1555 = !DILocation(line: 655, column: 13, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1545, file: !81, line: 654, column: 10)
!1557 = !DILocation(line: 655, column: 4, scope: !1556)
!1558 = !DILocalVariable(name: "res", scope: !1546, file: !81, line: 657, type: !581)
!1559 = !DILocation(line: 657, column: 13, scope: !1546)
!1560 = !DILocation(line: 657, column: 26, scope: !1546)
!1561 = !DILocation(line: 657, column: 31, scope: !1546)
!1562 = !DILocation(line: 657, column: 19, scope: !1546)
!1563 = !DILocation(line: 658, column: 7, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1546, file: !81, line: 658, column: 6)
!1565 = !DILocation(line: 658, column: 11, scope: !1564)
!1566 = !DILocation(line: 658, column: 30, scope: !1564)
!1567 = !DILocation(line: 658, column: 15, scope: !1564)
!1568 = !DILocation(line: 658, column: 35, scope: !1564)
!1569 = !DILocation(line: 658, column: 6, scope: !1546)
!1570 = !DILocation(line: 659, column: 106, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1564, file: !81, line: 658, column: 56)
!1572 = !DILocation(line: 659, column: 91, scope: !1571)
!1573 = !DILocation(line: 659, column: 4, scope: !1571)
!1574 = !DILocation(line: 660, column: 3, scope: !1571)
!1575 = !DILocalVariable(name: "i", scope: !1576, file: !81, line: 661, type: !46)
!1576 = distinct !DILexicalBlock(scope: !1564, file: !81, line: 660, column: 10)
!1577 = !DILocation(line: 661, column: 8, scope: !1576)
!1578 = !DILocation(line: 662, column: 9, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1576, file: !81, line: 662, column: 4)
!1580 = !DILocation(line: 662, column: 8, scope: !1579)
!1581 = !DILocation(line: 662, column: 12, scope: !1582)
!1582 = distinct !DILexicalBlock(scope: !1579, file: !81, line: 662, column: 4)
!1583 = !DILocation(line: 662, column: 24, scope: !1582)
!1584 = !DILocation(line: 662, column: 14, scope: !1582)
!1585 = !DILocation(line: 662, column: 13, scope: !1582)
!1586 = !DILocation(line: 662, column: 4, scope: !1579)
!1587 = !DILocalVariable(name: "rval", scope: !1588, file: !81, line: 663, type: !61)
!1588 = distinct !DILexicalBlock(scope: !1582, file: !81, line: 662, column: 34)
!1589 = !DILocation(line: 663, column: 11, scope: !1588)
!1590 = !DILocation(line: 663, column: 29, scope: !1588)
!1591 = !DILocation(line: 663, column: 33, scope: !1588)
!1592 = !DILocation(line: 663, column: 18, scope: !1588)
!1593 = !DILocation(line: 664, column: 8, scope: !1594)
!1594 = distinct !DILexicalBlock(scope: !1588, file: !81, line: 664, column: 8)
!1595 = !DILocation(line: 664, column: 8, scope: !1588)
!1596 = !DILocalVariable(name: "oval", scope: !1597, file: !81, line: 665, type: !61)
!1597 = distinct !DILexicalBlock(scope: !1594, file: !81, line: 664, column: 14)
!1598 = !DILocation(line: 665, column: 12, scope: !1597)
!1599 = !DILocation(line: 665, column: 30, scope: !1597)
!1600 = !DILocation(line: 665, column: 34, scope: !1597)
!1601 = !DILocation(line: 665, column: 19, scope: !1597)
!1602 = !DILocation(line: 666, column: 9, scope: !1603)
!1603 = distinct !DILexicalBlock(scope: !1597, file: !81, line: 666, column: 9)
!1604 = !DILocation(line: 666, column: 9, scope: !1597)
!1605 = !DILocalVariable(name: "vval", scope: !1606, file: !81, line: 667, type: !61)
!1606 = distinct !DILexicalBlock(scope: !1603, file: !81, line: 666, column: 15)
!1607 = !DILocation(line: 667, column: 13, scope: !1606)
!1608 = !DILocation(line: 667, column: 31, scope: !1606)
!1609 = !DILocation(line: 667, column: 35, scope: !1606)
!1610 = !DILocation(line: 667, column: 20, scope: !1606)
!1611 = !DILocation(line: 668, column: 10, scope: !1612)
!1612 = distinct !DILexicalBlock(scope: !1606, file: !81, line: 668, column: 10)
!1613 = !DILocation(line: 668, column: 10, scope: !1606)
!1614 = !DILocation(line: 669, column: 29, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1612, file: !81, line: 668, column: 16)
!1616 = !DILocation(line: 669, column: 34, scope: !1615)
!1617 = !DILocation(line: 669, column: 39, scope: !1615)
!1618 = !DILocation(line: 669, column: 8, scope: !1615)
!1619 = !DILocation(line: 670, column: 7, scope: !1615)
!1620 = !DILocation(line: 671, column: 6, scope: !1606)
!1621 = !DILocation(line: 672, column: 5, scope: !1597)
!1622 = !DILocation(line: 673, column: 4, scope: !1588)
!1623 = !DILocation(line: 662, column: 30, scope: !1582)
!1624 = !DILocation(line: 662, column: 4, scope: !1582)
!1625 = distinct !{!1625, !1586, !1626, !631}
!1626 = !DILocation(line: 673, column: 4, scope: !1579)
!1627 = !DILocation(line: 674, column: 11, scope: !1576)
!1628 = !DILocation(line: 676, column: 6, scope: !1629)
!1629 = distinct !DILexicalBlock(scope: !1546, file: !81, line: 676, column: 6)
!1630 = !DILocation(line: 676, column: 6, scope: !1546)
!1631 = !DILocation(line: 677, column: 12, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1629, file: !81, line: 676, column: 11)
!1633 = !DILocation(line: 677, column: 4, scope: !1632)
!1634 = !DILocation(line: 678, column: 3, scope: !1632)
!1635 = !DILocation(line: 679, column: 2, scope: !1546)
!1636 = !DILocation(line: 680, column: 10, scope: !1530)
!1637 = !DILocation(line: 680, column: 3, scope: !1530)
!1638 = distinct !DISubprogram(name: "pgsql_auth_ping", scope: !81, file: !81, line: 683, type: !480, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1639 = !DILocalVariable(name: "rch", arg: 1, scope: !1638, file: !81, line: 683, type: !482)
!1640 = !DILocation(line: 683, column: 36, scope: !1638)
!1641 = !DILocation(line: 684, column: 2, scope: !1638)
!1642 = !DILocation(line: 684, column: 2, scope: !1643)
!1643 = distinct !DILexicalBlock(scope: !1638, file: !81, line: 684, column: 2)
!1644 = !DILocalVariable(name: "pqc", scope: !1638, file: !81, line: 685, type: !55)
!1645 = !DILocation(line: 685, column: 11, scope: !1638)
!1646 = !DILocation(line: 685, column: 17, scope: !1638)
!1647 = !DILocation(line: 686, column: 5, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1638, file: !81, line: 686, column: 5)
!1649 = !DILocation(line: 686, column: 5, scope: !1638)
!1650 = !DILocalVariable(name: "statement", scope: !1651, file: !81, line: 687, type: !573)
!1651 = distinct !DILexicalBlock(scope: !1648, file: !81, line: 686, column: 10)
!1652 = !DILocation(line: 687, column: 8, scope: !1651)
!1653 = !DILocation(line: 688, column: 3, scope: !1651)
!1654 = !DILocation(line: 688, column: 3, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1656, file: !81, line: 688, column: 3)
!1656 = distinct !DILexicalBlock(scope: !1651, file: !81, line: 688, column: 3)
!1657 = !DILocation(line: 688, column: 3, scope: !1656)
!1658 = !DILocalVariable(name: "szdst", scope: !1659, file: !81, line: 688, type: !58)
!1659 = distinct !DILexicalBlock(scope: !1660, file: !81, line: 688, column: 3)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !81, line: 688, column: 3)
!1661 = distinct !DILexicalBlock(scope: !1655, file: !81, line: 688, column: 3)
!1662 = !DILocation(line: 688, column: 3, scope: !1659)
!1663 = !DILocation(line: 688, column: 3, scope: !1661)
!1664 = !DILocalVariable(name: "res", scope: !1651, file: !81, line: 689, type: !581)
!1665 = !DILocation(line: 689, column: 13, scope: !1651)
!1666 = !DILocation(line: 689, column: 26, scope: !1651)
!1667 = !DILocation(line: 689, column: 31, scope: !1651)
!1668 = !DILocation(line: 689, column: 19, scope: !1651)
!1669 = !DILocation(line: 691, column: 7, scope: !1670)
!1670 = distinct !DILexicalBlock(scope: !1651, file: !81, line: 691, column: 6)
!1671 = !DILocation(line: 691, column: 11, scope: !1670)
!1672 = !DILocation(line: 691, column: 30, scope: !1670)
!1673 = !DILocation(line: 691, column: 15, scope: !1670)
!1674 = !DILocation(line: 691, column: 35, scope: !1670)
!1675 = !DILocation(line: 691, column: 6, scope: !1651)
!1676 = !DILocation(line: 692, column: 106, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1670, file: !81, line: 691, column: 56)
!1678 = !DILocation(line: 692, column: 91, scope: !1677)
!1679 = !DILocation(line: 692, column: 4, scope: !1677)
!1680 = !DILocation(line: 693, column: 3, scope: !1677)
!1681 = !DILocation(line: 695, column: 6, scope: !1682)
!1682 = distinct !DILexicalBlock(scope: !1651, file: !81, line: 695, column: 6)
!1683 = !DILocation(line: 695, column: 6, scope: !1651)
!1684 = !DILocation(line: 696, column: 12, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1682, file: !81, line: 695, column: 11)
!1686 = !DILocation(line: 696, column: 4, scope: !1685)
!1687 = !DILocation(line: 697, column: 3, scope: !1685)
!1688 = !DILocation(line: 698, column: 2, scope: !1651)
!1689 = !DILocation(line: 699, column: 1, scope: !1638)
!1690 = !DILocalVariable(name: "kind", arg: 1, scope: !247, file: !81, line: 702, type: !63)
!1691 = !DILocation(line: 702, column: 42, scope: !247)
!1692 = !DILocalVariable(name: "list", arg: 2, scope: !247, file: !81, line: 702, type: !250)
!1693 = !DILocation(line: 702, column: 66, scope: !247)
!1694 = !DILocalVariable(name: "ret", scope: !247, file: !81, line: 704, type: !46)
!1695 = !DILocation(line: 704, column: 6, scope: !247)
!1696 = !DILocalVariable(name: "pqc", scope: !247, file: !81, line: 705, type: !55)
!1697 = !DILocation(line: 705, column: 11, scope: !247)
!1698 = !DILocation(line: 705, column: 17, scope: !247)
!1699 = !DILocation(line: 706, column: 6, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !247, file: !81, line: 706, column: 6)
!1701 = !DILocation(line: 706, column: 6, scope: !247)
!1702 = !DILocalVariable(name: "statement", scope: !1703, file: !81, line: 707, type: !573)
!1703 = distinct !DILexicalBlock(scope: !1700, file: !81, line: 706, column: 11)
!1704 = !DILocation(line: 707, column: 8, scope: !1703)
!1705 = !DILocation(line: 708, column: 12, scope: !1703)
!1706 = !DILocation(line: 708, column: 83, scope: !1703)
!1707 = !DILocation(line: 708, column: 3, scope: !1703)
!1708 = !DILocalVariable(name: "res", scope: !1703, file: !81, line: 709, type: !581)
!1709 = !DILocation(line: 709, column: 13, scope: !1703)
!1710 = !DILocation(line: 709, column: 26, scope: !1703)
!1711 = !DILocation(line: 709, column: 31, scope: !1703)
!1712 = !DILocation(line: 709, column: 19, scope: !1703)
!1713 = !DILocation(line: 711, column: 8, scope: !1714)
!1714 = distinct !DILexicalBlock(scope: !1703, file: !81, line: 711, column: 7)
!1715 = !DILocation(line: 711, column: 12, scope: !1714)
!1716 = !DILocation(line: 711, column: 31, scope: !1714)
!1717 = !DILocation(line: 711, column: 16, scope: !1714)
!1718 = !DILocation(line: 711, column: 36, scope: !1714)
!1719 = !DILocation(line: 711, column: 7, scope: !1703)
!1720 = !DILocation(line: 713, column: 8, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1722, file: !81, line: 713, column: 7)
!1722 = distinct !DILexicalBlock(scope: !1714, file: !81, line: 711, column: 57)
!1723 = !DILocation(line: 713, column: 7, scope: !1722)
!1724 = !DILocation(line: 714, column: 26, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1721, file: !81, line: 713, column: 30)
!1726 = !DILocation(line: 715, column: 220, scope: !1725)
!1727 = !DILocation(line: 715, column: 205, scope: !1725)
!1728 = !DILocation(line: 715, column: 5, scope: !1725)
!1729 = !DILocation(line: 716, column: 4, scope: !1725)
!1730 = !DILocation(line: 717, column: 13, scope: !1722)
!1731 = !DILocation(line: 717, column: 81, scope: !1722)
!1732 = !DILocation(line: 717, column: 4, scope: !1722)
!1733 = !DILocation(line: 718, column: 17, scope: !1722)
!1734 = !DILocation(line: 718, column: 22, scope: !1722)
!1735 = !DILocation(line: 718, column: 10, scope: !1722)
!1736 = !DILocation(line: 718, column: 8, scope: !1722)
!1737 = !DILocation(line: 719, column: 3, scope: !1722)
!1738 = !DILocation(line: 721, column: 7, scope: !1739)
!1739 = distinct !DILexicalBlock(scope: !1703, file: !81, line: 721, column: 7)
!1740 = !DILocation(line: 721, column: 11, scope: !1739)
!1741 = !DILocation(line: 721, column: 30, scope: !1739)
!1742 = !DILocation(line: 721, column: 15, scope: !1739)
!1743 = !DILocation(line: 721, column: 35, scope: !1739)
!1744 = !DILocation(line: 721, column: 7, scope: !1703)
!1745 = !DILocalVariable(name: "i", scope: !1746, file: !81, line: 722, type: !46)
!1746 = distinct !DILexicalBlock(scope: !1739, file: !81, line: 721, column: 56)
!1747 = !DILocation(line: 722, column: 8, scope: !1746)
!1748 = !DILocation(line: 723, column: 11, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1746, file: !81, line: 723, column: 4)
!1750 = !DILocation(line: 723, column: 9, scope: !1749)
!1751 = !DILocation(line: 723, column: 16, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1749, file: !81, line: 723, column: 4)
!1753 = !DILocation(line: 723, column: 30, scope: !1752)
!1754 = !DILocation(line: 723, column: 20, scope: !1752)
!1755 = !DILocation(line: 723, column: 18, scope: !1752)
!1756 = !DILocation(line: 723, column: 4, scope: !1749)
!1757 = !DILocalVariable(name: "kval", scope: !1758, file: !81, line: 724, type: !61)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !81, line: 723, column: 41)
!1759 = !DILocation(line: 724, column: 11, scope: !1758)
!1760 = !DILocation(line: 724, column: 29, scope: !1758)
!1761 = !DILocation(line: 724, column: 34, scope: !1758)
!1762 = !DILocation(line: 724, column: 18, scope: !1758)
!1763 = !DILocalVariable(name: "rval", scope: !1758, file: !81, line: 725, type: !61)
!1764 = !DILocation(line: 725, column: 11, scope: !1758)
!1765 = !DILocation(line: 725, column: 29, scope: !1758)
!1766 = !DILocation(line: 725, column: 34, scope: !1758)
!1767 = !DILocation(line: 725, column: 18, scope: !1758)
!1768 = !DILocation(line: 726, column: 9, scope: !1769)
!1769 = distinct !DILexicalBlock(scope: !1758, file: !81, line: 726, column: 9)
!1770 = !DILocation(line: 726, column: 9, scope: !1758)
!1771 = !DILocation(line: 727, column: 24, scope: !1772)
!1772 = distinct !DILexicalBlock(scope: !1769, file: !81, line: 726, column: 15)
!1773 = !DILocation(line: 727, column: 30, scope: !1772)
!1774 = !DILocation(line: 727, column: 36, scope: !1772)
!1775 = !DILocation(line: 727, column: 6, scope: !1772)
!1776 = !DILocation(line: 728, column: 5, scope: !1772)
!1777 = !DILocation(line: 729, column: 4, scope: !1758)
!1778 = !DILocation(line: 723, column: 37, scope: !1752)
!1779 = !DILocation(line: 723, column: 4, scope: !1752)
!1780 = distinct !{!1780, !1756, !1781, !631}
!1781 = !DILocation(line: 729, column: 4, scope: !1749)
!1782 = !DILocation(line: 730, column: 8, scope: !1746)
!1783 = !DILocation(line: 731, column: 3, scope: !1746)
!1784 = !DILocation(line: 733, column: 7, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1703, file: !81, line: 733, column: 7)
!1786 = !DILocation(line: 733, column: 7, scope: !1703)
!1787 = !DILocation(line: 734, column: 12, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1785, file: !81, line: 733, column: 12)
!1789 = !DILocation(line: 734, column: 4, scope: !1788)
!1790 = !DILocation(line: 735, column: 3, scope: !1788)
!1791 = !DILocation(line: 736, column: 2, scope: !1703)
!1792 = !DILocation(line: 737, column: 9, scope: !247)
!1793 = !DILocation(line: 737, column: 2, scope: !247)
!1794 = distinct !DISubprogram(name: "pgsql_set_permission_ip", scope: !81, file: !81, line: 488, type: !487, scopeLine: 489, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1795 = !DILocalVariable(name: "kind", arg: 1, scope: !1794, file: !81, line: 488, type: !63)
!1796 = !DILocation(line: 488, column: 48, scope: !1794)
!1797 = !DILocalVariable(name: "realm", arg: 2, scope: !1794, file: !81, line: 488, type: !447)
!1798 = !DILocation(line: 488, column: 63, scope: !1794)
!1799 = !DILocalVariable(name: "ip", arg: 3, scope: !1794, file: !81, line: 488, type: !63)
!1800 = !DILocation(line: 488, column: 82, scope: !1794)
!1801 = !DILocalVariable(name: "del", arg: 4, scope: !1794, file: !81, line: 488, type: !46)
!1802 = !DILocation(line: 488, column: 90, scope: !1794)
!1803 = !DILocalVariable(name: "ret", scope: !1794, file: !81, line: 490, type: !46)
!1804 = !DILocation(line: 490, column: 6, scope: !1794)
!1805 = !DILocalVariable(name: "realm0", scope: !1794, file: !81, line: 492, type: !871)
!1806 = !DILocation(line: 492, column: 10, scope: !1794)
!1807 = !DILocation(line: 493, column: 6, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1794, file: !81, line: 493, column: 5)
!1809 = !DILocation(line: 493, column: 5, scope: !1794)
!1810 = !DILocation(line: 493, column: 19, scope: !1808)
!1811 = !DILocation(line: 493, column: 18, scope: !1808)
!1812 = !DILocation(line: 493, column: 13, scope: !1808)
!1813 = !DILocation(line: 495, column: 33, scope: !1794)
!1814 = !DILocalVariable(name: "statement", scope: !1794, file: !81, line: 497, type: !573)
!1815 = !DILocation(line: 497, column: 7, scope: !1794)
!1816 = !DILocalVariable(name: "pqc", scope: !1794, file: !81, line: 499, type: !55)
!1817 = !DILocation(line: 499, column: 10, scope: !1794)
!1818 = !DILocation(line: 499, column: 16, scope: !1794)
!1819 = !DILocation(line: 501, column: 6, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1794, file: !81, line: 501, column: 6)
!1821 = !DILocation(line: 501, column: 6, scope: !1794)
!1822 = !DILocation(line: 503, column: 6, scope: !1823)
!1823 = distinct !DILexicalBlock(scope: !1824, file: !81, line: 503, column: 6)
!1824 = distinct !DILexicalBlock(scope: !1820, file: !81, line: 501, column: 11)
!1825 = !DILocation(line: 503, column: 6, scope: !1824)
!1826 = !DILocation(line: 504, column: 13, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1823, file: !81, line: 503, column: 11)
!1828 = !DILocation(line: 504, column: 109, scope: !1827)
!1829 = !DILocation(line: 504, column: 122, scope: !1827)
!1830 = !DILocation(line: 504, column: 129, scope: !1827)
!1831 = !DILocation(line: 504, column: 4, scope: !1827)
!1832 = !DILocation(line: 505, column: 3, scope: !1827)
!1833 = !DILocation(line: 506, column: 13, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1823, file: !81, line: 505, column: 10)
!1835 = !DILocation(line: 506, column: 104, scope: !1834)
!1836 = !DILocation(line: 506, column: 117, scope: !1834)
!1837 = !DILocation(line: 506, column: 124, scope: !1834)
!1838 = !DILocation(line: 506, column: 4, scope: !1834)
!1839 = !DILocalVariable(name: "res", scope: !1824, file: !81, line: 509, type: !581)
!1840 = !DILocation(line: 509, column: 13, scope: !1824)
!1841 = !DILocation(line: 509, column: 26, scope: !1824)
!1842 = !DILocation(line: 509, column: 31, scope: !1824)
!1843 = !DILocation(line: 509, column: 19, scope: !1824)
!1844 = !DILocation(line: 510, column: 8, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1824, file: !81, line: 510, column: 7)
!1846 = !DILocation(line: 510, column: 12, scope: !1845)
!1847 = !DILocation(line: 510, column: 31, scope: !1845)
!1848 = !DILocation(line: 510, column: 16, scope: !1845)
!1849 = !DILocation(line: 510, column: 36, scope: !1845)
!1850 = !DILocation(line: 510, column: 7, scope: !1824)
!1851 = !DILocation(line: 514, column: 20, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !81, line: 510, column: 58)
!1853 = !DILocation(line: 514, column: 5, scope: !1852)
!1854 = !DILocation(line: 511, column: 4, scope: !1852)
!1855 = !DILocation(line: 515, column: 4, scope: !1852)
!1856 = !DILocation(line: 516, column: 10, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1845, file: !81, line: 515, column: 11)
!1858 = !DILocation(line: 518, column: 8, scope: !1859)
!1859 = distinct !DILexicalBlock(scope: !1824, file: !81, line: 518, column: 8)
!1860 = !DILocation(line: 518, column: 8, scope: !1824)
!1861 = !DILocation(line: 519, column: 14, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1859, file: !81, line: 518, column: 13)
!1863 = !DILocation(line: 519, column: 6, scope: !1862)
!1864 = !DILocation(line: 520, column: 4, scope: !1862)
!1865 = !DILocation(line: 521, column: 2, scope: !1824)
!1866 = !DILocation(line: 523, column: 9, scope: !1794)
!1867 = !DILocation(line: 523, column: 2, scope: !1794)
!1868 = distinct !DISubprogram(name: "pgsql_reread_realms", scope: !81, file: !81, line: 740, type: !491, scopeLine: 740, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!1869 = !DILocalVariable(name: "realms_list", arg: 1, scope: !1868, file: !81, line: 740, type: !439)
!1870 = !DILocation(line: 740, column: 50, scope: !1868)
!1871 = !DILocalVariable(name: "pqc", scope: !1868, file: !81, line: 741, type: !55)
!1872 = !DILocation(line: 741, column: 11, scope: !1868)
!1873 = !DILocation(line: 741, column: 17, scope: !1868)
!1874 = !DILocation(line: 742, column: 5, scope: !1875)
!1875 = distinct !DILexicalBlock(scope: !1868, file: !81, line: 742, column: 5)
!1876 = !DILocation(line: 742, column: 5, scope: !1868)
!1877 = !DILocalVariable(name: "statement", scope: !1878, file: !81, line: 743, type: !573)
!1878 = distinct !DILexicalBlock(scope: !1875, file: !81, line: 742, column: 10)
!1879 = !DILocation(line: 743, column: 8, scope: !1878)
!1880 = !DILocation(line: 746, column: 13, scope: !1881)
!1881 = distinct !DILexicalBlock(scope: !1878, file: !81, line: 745, column: 3)
!1882 = !DILocation(line: 746, column: 4, scope: !1881)
!1883 = !DILocalVariable(name: "res", scope: !1881, file: !81, line: 747, type: !581)
!1884 = !DILocation(line: 747, column: 14, scope: !1881)
!1885 = !DILocation(line: 747, column: 27, scope: !1881)
!1886 = !DILocation(line: 747, column: 32, scope: !1881)
!1887 = !DILocation(line: 747, column: 20, scope: !1881)
!1888 = !DILocation(line: 749, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1881, file: !81, line: 749, column: 7)
!1890 = !DILocation(line: 749, column: 11, scope: !1889)
!1891 = !DILocation(line: 749, column: 30, scope: !1889)
!1892 = !DILocation(line: 749, column: 15, scope: !1889)
!1893 = !DILocation(line: 749, column: 35, scope: !1889)
!1894 = !DILocation(line: 749, column: 7, scope: !1881)
!1895 = !DILocalVariable(name: "o_to_realm_new", scope: !1896, file: !81, line: 751, type: !1897)
!1896 = distinct !DILexicalBlock(scope: !1889, file: !81, line: 749, column: 56)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !66, line: 227, baseType: !1899)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !66, line: 226, flags: DIFlagFwdDecl)
!1900 = !DILocation(line: 751, column: 20, scope: !1896)
!1901 = !DILocation(line: 751, column: 37, scope: !1896)
!1902 = !DILocalVariable(name: "i", scope: !1896, file: !81, line: 753, type: !46)
!1903 = !DILocation(line: 753, column: 9, scope: !1896)
!1904 = !DILocation(line: 754, column: 10, scope: !1905)
!1905 = distinct !DILexicalBlock(scope: !1896, file: !81, line: 754, column: 5)
!1906 = !DILocation(line: 754, column: 9, scope: !1905)
!1907 = !DILocation(line: 754, column: 13, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1905, file: !81, line: 754, column: 5)
!1909 = !DILocation(line: 754, column: 25, scope: !1908)
!1910 = !DILocation(line: 754, column: 15, scope: !1908)
!1911 = !DILocation(line: 754, column: 14, scope: !1908)
!1912 = !DILocation(line: 754, column: 5, scope: !1905)
!1913 = !DILocalVariable(name: "oval", scope: !1914, file: !81, line: 755, type: !61)
!1914 = distinct !DILexicalBlock(scope: !1908, file: !81, line: 754, column: 35)
!1915 = !DILocation(line: 755, column: 12, scope: !1914)
!1916 = !DILocation(line: 755, column: 30, scope: !1914)
!1917 = !DILocation(line: 755, column: 34, scope: !1914)
!1918 = !DILocation(line: 755, column: 19, scope: !1914)
!1919 = !DILocation(line: 756, column: 9, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1914, file: !81, line: 756, column: 9)
!1921 = !DILocation(line: 756, column: 9, scope: !1914)
!1922 = !DILocalVariable(name: "rval", scope: !1923, file: !81, line: 757, type: !61)
!1923 = distinct !DILexicalBlock(scope: !1920, file: !81, line: 756, column: 15)
!1924 = !DILocation(line: 757, column: 13, scope: !1923)
!1925 = !DILocation(line: 757, column: 31, scope: !1923)
!1926 = !DILocation(line: 757, column: 35, scope: !1923)
!1927 = !DILocation(line: 757, column: 20, scope: !1923)
!1928 = !DILocation(line: 758, column: 10, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1923, file: !81, line: 758, column: 10)
!1930 = !DILocation(line: 758, column: 10, scope: !1923)
!1931 = !DILocation(line: 759, column: 18, scope: !1932)
!1932 = distinct !DILexicalBlock(scope: !1929, file: !81, line: 758, column: 16)
!1933 = !DILocation(line: 759, column: 8, scope: !1932)
!1934 = !DILocalVariable(name: "value", scope: !1932, file: !81, line: 760, type: !1935)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !66, line: 225, baseType: !482)
!1936 = !DILocation(line: 760, column: 33, scope: !1932)
!1937 = !DILocation(line: 760, column: 48, scope: !1932)
!1938 = !DILocation(line: 760, column: 41, scope: !1932)
!1939 = !DILocation(line: 761, column: 26, scope: !1932)
!1940 = !DILocation(line: 761, column: 67, scope: !1932)
!1941 = !DILocation(line: 761, column: 73, scope: !1932)
!1942 = !DILocation(line: 761, column: 8, scope: !1932)
!1943 = !DILocation(line: 762, column: 7, scope: !1932)
!1944 = !DILocation(line: 763, column: 6, scope: !1923)
!1945 = !DILocation(line: 764, column: 5, scope: !1914)
!1946 = !DILocation(line: 754, column: 31, scope: !1908)
!1947 = !DILocation(line: 754, column: 5, scope: !1908)
!1948 = distinct !{!1948, !1912, !1949, !631}
!1949 = !DILocation(line: 764, column: 5, scope: !1905)
!1950 = !DILocation(line: 766, column: 27, scope: !1896)
!1951 = !DILocation(line: 766, column: 9, scope: !1896)
!1952 = !DILocation(line: 767, column: 4, scope: !1896)
!1953 = !DILocation(line: 769, column: 7, scope: !1954)
!1954 = distinct !DILexicalBlock(scope: !1881, file: !81, line: 769, column: 7)
!1955 = !DILocation(line: 769, column: 7, scope: !1881)
!1956 = !DILocation(line: 770, column: 13, scope: !1957)
!1957 = distinct !DILexicalBlock(scope: !1954, file: !81, line: 769, column: 12)
!1958 = !DILocation(line: 770, column: 5, scope: !1957)
!1959 = !DILocation(line: 771, column: 4, scope: !1957)
!1960 = !DILocalVariable(name: "i", scope: !1961, file: !81, line: 776, type: !58)
!1961 = distinct !DILexicalBlock(scope: !1962, file: !81, line: 775, column: 4)
!1962 = distinct !DILexicalBlock(scope: !1878, file: !81, line: 774, column: 3)
!1963 = !DILocation(line: 776, column: 12, scope: !1961)
!1964 = !DILocalVariable(name: "rlsz", scope: !1961, file: !81, line: 777, type: !58)
!1965 = !DILocation(line: 777, column: 12, scope: !1961)
!1966 = !DILocation(line: 779, column: 5, scope: !1961)
!1967 = !DILocation(line: 780, column: 12, scope: !1961)
!1968 = !DILocation(line: 780, column: 25, scope: !1961)
!1969 = !DILocation(line: 780, column: 10, scope: !1961)
!1970 = !DILocation(line: 781, column: 5, scope: !1961)
!1971 = !DILocation(line: 783, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1961, file: !81, line: 783, column: 5)
!1973 = !DILocation(line: 783, column: 10, scope: !1972)
!1974 = !DILocation(line: 783, column: 17, scope: !1975)
!1975 = distinct !DILexicalBlock(scope: !1972, file: !81, line: 783, column: 5)
!1976 = !DILocation(line: 783, column: 19, scope: !1975)
!1977 = !DILocation(line: 783, column: 18, scope: !1975)
!1978 = !DILocation(line: 783, column: 5, scope: !1972)
!1979 = !DILocalVariable(name: "realm", scope: !1980, file: !81, line: 785, type: !61)
!1980 = distinct !DILexicalBlock(scope: !1975, file: !81, line: 783, column: 30)
!1981 = !DILocation(line: 785, column: 12, scope: !1980)
!1982 = !DILocation(line: 785, column: 20, scope: !1980)
!1983 = !DILocation(line: 785, column: 33, scope: !1980)
!1984 = !DILocation(line: 785, column: 41, scope: !1980)
!1985 = !DILocalVariable(name: "rp", scope: !1980, file: !81, line: 787, type: !1986)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !441, line: 55, baseType: !1988)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !441, line: 64, size: 1344, elements: !1989)
!1989 = !{!1990, !1991, !2005}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !1988, file: !441, line: 66, baseType: !46, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !1988, file: !441, line: 68, baseType: !1992, size: 1152, offset: 64)
!1992 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !252, line: 142, baseType: !1993)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !1994, line: 53, size: 1152, elements: !1995)
!1994 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!1995 = !{!1996, !1997}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1993, file: !1994, line: 55, baseType: !511, size: 1024)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !1993, file: !1994, line: 57, baseType: !1998, size: 128, offset: 1024)
!1998 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !1994, line: 51, baseType: !1999)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !1994, line: 45, size: 128, elements: !2000)
!2000 = !{!2001, !2003, !2004}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !1999, file: !1994, line: 47, baseType: !2002, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !67)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !1999, file: !1994, line: 48, baseType: !69, size: 32, offset: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !1999, file: !1994, line: 49, baseType: !69, size: 32, offset: 96)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1988, file: !441, line: 70, baseType: !2006, size: 128, offset: 1216)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !441, line: 52, baseType: !2007)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !441, line: 57, size: 128, elements: !2008)
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !2007, file: !441, line: 59, baseType: !69, size: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !2007, file: !441, line: 60, baseType: !1897, size: 64, offset: 64)
!2011 = !DILocation(line: 787, column: 22, scope: !1980)
!2012 = !DILocation(line: 787, column: 37, scope: !1980)
!2013 = !DILocation(line: 787, column: 27, scope: !1980)
!2014 = !DILocation(line: 789, column: 6, scope: !1980)
!2015 = !DILocation(line: 790, column: 53, scope: !1980)
!2016 = !DILocation(line: 790, column: 6, scope: !1980)
!2017 = !DILocation(line: 790, column: 10, scope: !1980)
!2018 = !DILocation(line: 790, column: 18, scope: !1980)
!2019 = !DILocation(line: 790, column: 31, scope: !1980)
!2020 = !DILocation(line: 790, column: 39, scope: !1980)
!2021 = !DILocation(line: 791, column: 6, scope: !1980)
!2022 = !DILocation(line: 793, column: 6, scope: !1980)
!2023 = !DILocation(line: 794, column: 57, scope: !1980)
!2024 = !DILocation(line: 794, column: 6, scope: !1980)
!2025 = !DILocation(line: 794, column: 10, scope: !1980)
!2026 = !DILocation(line: 794, column: 18, scope: !1980)
!2027 = !DILocation(line: 794, column: 31, scope: !1980)
!2028 = !DILocation(line: 794, column: 43, scope: !1980)
!2029 = !DILocation(line: 795, column: 6, scope: !1980)
!2030 = !DILocation(line: 797, column: 6, scope: !1980)
!2031 = !DILocation(line: 798, column: 56, scope: !1980)
!2032 = !DILocation(line: 798, column: 6, scope: !1980)
!2033 = !DILocation(line: 798, column: 10, scope: !1980)
!2034 = !DILocation(line: 798, column: 18, scope: !1980)
!2035 = !DILocation(line: 798, column: 31, scope: !1980)
!2036 = !DILocation(line: 798, column: 42, scope: !1980)
!2037 = !DILocation(line: 799, column: 6, scope: !1980)
!2038 = !DILocation(line: 801, column: 5, scope: !1980)
!2039 = !DILocation(line: 783, column: 25, scope: !1975)
!2040 = !DILocation(line: 783, column: 5, scope: !1975)
!2041 = distinct !{!2041, !1978, !2042, !631}
!2042 = !DILocation(line: 801, column: 5, scope: !1972)
!2043 = !DILocation(line: 804, column: 13, scope: !1962)
!2044 = !DILocation(line: 804, column: 4, scope: !1962)
!2045 = !DILocalVariable(name: "res", scope: !1962, file: !81, line: 805, type: !581)
!2046 = !DILocation(line: 805, column: 14, scope: !1962)
!2047 = !DILocation(line: 805, column: 27, scope: !1962)
!2048 = !DILocation(line: 805, column: 32, scope: !1962)
!2049 = !DILocation(line: 805, column: 20, scope: !1962)
!2050 = !DILocation(line: 807, column: 7, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !1962, file: !81, line: 807, column: 7)
!2052 = !DILocation(line: 807, column: 11, scope: !2051)
!2053 = !DILocation(line: 807, column: 30, scope: !2051)
!2054 = !DILocation(line: 807, column: 15, scope: !2051)
!2055 = !DILocation(line: 807, column: 35, scope: !2051)
!2056 = !DILocation(line: 807, column: 7, scope: !1962)
!2057 = !DILocalVariable(name: "i", scope: !2058, file: !81, line: 809, type: !46)
!2058 = distinct !DILexicalBlock(scope: !2051, file: !81, line: 807, column: 56)
!2059 = !DILocation(line: 809, column: 9, scope: !2058)
!2060 = !DILocation(line: 810, column: 10, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2058, file: !81, line: 810, column: 5)
!2062 = !DILocation(line: 810, column: 9, scope: !2061)
!2063 = !DILocation(line: 810, column: 13, scope: !2064)
!2064 = distinct !DILexicalBlock(scope: !2061, file: !81, line: 810, column: 5)
!2065 = !DILocation(line: 810, column: 25, scope: !2064)
!2066 = !DILocation(line: 810, column: 15, scope: !2064)
!2067 = !DILocation(line: 810, column: 14, scope: !2064)
!2068 = !DILocation(line: 810, column: 5, scope: !2061)
!2069 = !DILocalVariable(name: "rval", scope: !2070, file: !81, line: 811, type: !61)
!2070 = distinct !DILexicalBlock(scope: !2064, file: !81, line: 810, column: 35)
!2071 = !DILocation(line: 811, column: 12, scope: !2070)
!2072 = !DILocation(line: 811, column: 30, scope: !2070)
!2073 = !DILocation(line: 811, column: 34, scope: !2070)
!2074 = !DILocation(line: 811, column: 19, scope: !2070)
!2075 = !DILocalVariable(name: "oval", scope: !2070, file: !81, line: 812, type: !61)
!2076 = !DILocation(line: 812, column: 12, scope: !2070)
!2077 = !DILocation(line: 812, column: 30, scope: !2070)
!2078 = !DILocation(line: 812, column: 34, scope: !2070)
!2079 = !DILocation(line: 812, column: 19, scope: !2070)
!2080 = !DILocalVariable(name: "vval", scope: !2070, file: !81, line: 813, type: !61)
!2081 = !DILocation(line: 813, column: 12, scope: !2070)
!2082 = !DILocation(line: 813, column: 30, scope: !2070)
!2083 = !DILocation(line: 813, column: 34, scope: !2070)
!2084 = !DILocation(line: 813, column: 19, scope: !2070)
!2085 = !DILocation(line: 814, column: 9, scope: !2086)
!2086 = distinct !DILexicalBlock(scope: !2070, file: !81, line: 814, column: 9)
!2087 = !DILocation(line: 814, column: 14, scope: !2086)
!2088 = !DILocation(line: 814, column: 17, scope: !2086)
!2089 = !DILocation(line: 814, column: 22, scope: !2086)
!2090 = !DILocation(line: 814, column: 25, scope: !2086)
!2091 = !DILocation(line: 814, column: 9, scope: !2070)
!2092 = !DILocalVariable(name: "rp", scope: !2093, file: !81, line: 815, type: !1986)
!2093 = distinct !DILexicalBlock(scope: !2086, file: !81, line: 814, column: 31)
!2094 = !DILocation(line: 815, column: 23, scope: !2093)
!2095 = !DILocation(line: 815, column: 38, scope: !2093)
!2096 = !DILocation(line: 815, column: 28, scope: !2093)
!2097 = !DILocation(line: 816, column: 18, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2093, file: !81, line: 816, column: 10)
!2099 = !DILocation(line: 816, column: 11, scope: !2098)
!2100 = !DILocation(line: 816, column: 10, scope: !2093)
!2101 = !DILocation(line: 817, column: 65, scope: !2098)
!2102 = !DILocation(line: 817, column: 57, scope: !2098)
!2103 = !DILocation(line: 817, column: 8, scope: !2098)
!2104 = !DILocation(line: 817, column: 12, scope: !2098)
!2105 = !DILocation(line: 817, column: 20, scope: !2098)
!2106 = !DILocation(line: 817, column: 33, scope: !2098)
!2107 = !DILocation(line: 817, column: 41, scope: !2098)
!2108 = !DILocation(line: 818, column: 23, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2098, file: !81, line: 818, column: 15)
!2110 = !DILocation(line: 818, column: 16, scope: !2109)
!2111 = !DILocation(line: 818, column: 15, scope: !2098)
!2112 = !DILocation(line: 819, column: 58, scope: !2109)
!2113 = !DILocation(line: 819, column: 53, scope: !2109)
!2114 = !DILocation(line: 819, column: 8, scope: !2109)
!2115 = !DILocation(line: 819, column: 12, scope: !2109)
!2116 = !DILocation(line: 819, column: 20, scope: !2109)
!2117 = !DILocation(line: 819, column: 33, scope: !2109)
!2118 = !DILocation(line: 819, column: 45, scope: !2109)
!2119 = !DILocation(line: 820, column: 23, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2109, file: !81, line: 820, column: 15)
!2121 = !DILocation(line: 820, column: 16, scope: !2120)
!2122 = !DILocation(line: 820, column: 15, scope: !2109)
!2123 = !DILocation(line: 821, column: 57, scope: !2120)
!2124 = !DILocation(line: 821, column: 52, scope: !2120)
!2125 = !DILocation(line: 821, column: 8, scope: !2120)
!2126 = !DILocation(line: 821, column: 12, scope: !2120)
!2127 = !DILocation(line: 821, column: 20, scope: !2120)
!2128 = !DILocation(line: 821, column: 33, scope: !2120)
!2129 = !DILocation(line: 821, column: 44, scope: !2120)
!2130 = !DILocation(line: 823, column: 74, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2120, file: !81, line: 822, column: 12)
!2132 = !DILocation(line: 823, column: 8, scope: !2131)
!2133 = !DILocation(line: 825, column: 6, scope: !2093)
!2134 = !DILocation(line: 826, column: 5, scope: !2070)
!2135 = !DILocation(line: 810, column: 31, scope: !2064)
!2136 = !DILocation(line: 810, column: 5, scope: !2064)
!2137 = distinct !{!2137, !2068, !2138, !631}
!2138 = !DILocation(line: 826, column: 5, scope: !2061)
!2139 = !DILocation(line: 827, column: 4, scope: !2058)
!2140 = !DILocation(line: 829, column: 7, scope: !2141)
!2141 = distinct !DILexicalBlock(scope: !1962, file: !81, line: 829, column: 7)
!2142 = !DILocation(line: 829, column: 7, scope: !1962)
!2143 = !DILocation(line: 830, column: 13, scope: !2144)
!2144 = distinct !DILexicalBlock(scope: !2141, file: !81, line: 829, column: 12)
!2145 = !DILocation(line: 830, column: 5, scope: !2144)
!2146 = !DILocation(line: 831, column: 4, scope: !2144)
!2147 = !DILocation(line: 833, column: 2, scope: !1878)
!2148 = !DILocation(line: 834, column: 1, scope: !1868)
!2149 = distinct !DISubprogram(name: "pgsql_set_oauth_key", scope: !81, file: !81, line: 275, type: !495, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2150 = !DILocalVariable(name: "key", arg: 1, scope: !2149, file: !81, line: 275, type: !497)
!2151 = !DILocation(line: 275, column: 52, scope: !2149)
!2152 = !DILocalVariable(name: "ret", scope: !2149, file: !81, line: 277, type: !46)
!2153 = !DILocation(line: 277, column: 7, scope: !2149)
!2154 = !DILocalVariable(name: "statement", scope: !2149, file: !81, line: 278, type: !573)
!2155 = !DILocation(line: 278, column: 8, scope: !2149)
!2156 = !DILocalVariable(name: "pqc", scope: !2149, file: !81, line: 279, type: !55)
!2157 = !DILocation(line: 279, column: 11, scope: !2149)
!2158 = !DILocation(line: 279, column: 17, scope: !2149)
!2159 = !DILocation(line: 280, column: 6, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2149, file: !81, line: 280, column: 6)
!2161 = !DILocation(line: 280, column: 6, scope: !2149)
!2162 = !DILocation(line: 281, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !81, line: 280, column: 11)
!2164 = !DILocation(line: 282, column: 6, scope: !2163)
!2165 = !DILocation(line: 282, column: 11, scope: !2163)
!2166 = !DILocation(line: 282, column: 15, scope: !2163)
!2167 = !DILocation(line: 282, column: 20, scope: !2163)
!2168 = !DILocation(line: 282, column: 48, scope: !2163)
!2169 = !DILocation(line: 282, column: 53, scope: !2163)
!2170 = !DILocation(line: 282, column: 78, scope: !2163)
!2171 = !DILocation(line: 282, column: 83, scope: !2163)
!2172 = !DILocation(line: 282, column: 63, scope: !2163)
!2173 = !DILocation(line: 283, column: 6, scope: !2163)
!2174 = !DILocation(line: 283, column: 11, scope: !2163)
!2175 = !DILocation(line: 283, column: 21, scope: !2163)
!2176 = !DILocation(line: 283, column: 26, scope: !2163)
!2177 = !DILocation(line: 281, column: 4, scope: !2163)
!2178 = !DILocalVariable(name: "res", scope: !2163, file: !81, line: 285, type: !581)
!2179 = !DILocation(line: 285, column: 14, scope: !2163)
!2180 = !DILocation(line: 285, column: 27, scope: !2163)
!2181 = !DILocation(line: 285, column: 32, scope: !2163)
!2182 = !DILocation(line: 285, column: 20, scope: !2163)
!2183 = !DILocation(line: 286, column: 8, scope: !2184)
!2184 = distinct !DILexicalBlock(scope: !2163, file: !81, line: 286, column: 7)
!2185 = !DILocation(line: 286, column: 12, scope: !2184)
!2186 = !DILocation(line: 286, column: 31, scope: !2184)
!2187 = !DILocation(line: 286, column: 16, scope: !2184)
!2188 = !DILocation(line: 286, column: 36, scope: !2184)
!2189 = !DILocation(line: 286, column: 7, scope: !2163)
!2190 = !DILocation(line: 287, column: 8, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2192, file: !81, line: 287, column: 8)
!2192 = distinct !DILexicalBlock(scope: !2184, file: !81, line: 286, column: 58)
!2193 = !DILocation(line: 287, column: 8, scope: !2192)
!2194 = !DILocation(line: 288, column: 12, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2191, file: !81, line: 287, column: 13)
!2196 = !DILocation(line: 288, column: 4, scope: !2195)
!2197 = !DILocation(line: 289, column: 5, scope: !2195)
!2198 = !DILocation(line: 290, column: 14, scope: !2192)
!2199 = !DILocation(line: 290, column: 148, scope: !2192)
!2200 = !DILocation(line: 290, column: 153, scope: !2192)
!2201 = !DILocation(line: 290, column: 176, scope: !2192)
!2202 = !DILocation(line: 290, column: 181, scope: !2192)
!2203 = !DILocation(line: 290, column: 206, scope: !2192)
!2204 = !DILocation(line: 290, column: 211, scope: !2192)
!2205 = !DILocation(line: 290, column: 191, scope: !2192)
!2206 = !DILocation(line: 291, column: 7, scope: !2192)
!2207 = !DILocation(line: 291, column: 12, scope: !2192)
!2208 = !DILocation(line: 291, column: 22, scope: !2192)
!2209 = !DILocation(line: 291, column: 27, scope: !2192)
!2210 = !DILocation(line: 291, column: 33, scope: !2192)
!2211 = !DILocation(line: 291, column: 38, scope: !2192)
!2212 = !DILocation(line: 290, column: 5, scope: !2192)
!2213 = !DILocation(line: 292, column: 18, scope: !2192)
!2214 = !DILocation(line: 292, column: 23, scope: !2192)
!2215 = !DILocation(line: 292, column: 11, scope: !2192)
!2216 = !DILocation(line: 292, column: 9, scope: !2192)
!2217 = !DILocation(line: 293, column: 9, scope: !2218)
!2218 = distinct !DILexicalBlock(scope: !2192, file: !81, line: 293, column: 8)
!2219 = !DILocation(line: 293, column: 13, scope: !2218)
!2220 = !DILocation(line: 293, column: 32, scope: !2218)
!2221 = !DILocation(line: 293, column: 17, scope: !2218)
!2222 = !DILocation(line: 293, column: 37, scope: !2218)
!2223 = !DILocation(line: 293, column: 8, scope: !2192)
!2224 = !DILocation(line: 294, column: 112, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2218, file: !81, line: 293, column: 59)
!2226 = !DILocation(line: 294, column: 97, scope: !2225)
!2227 = !DILocation(line: 294, column: 6, scope: !2225)
!2228 = !DILocation(line: 295, column: 5, scope: !2225)
!2229 = !DILocation(line: 296, column: 10, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2218, file: !81, line: 295, column: 12)
!2231 = !DILocation(line: 298, column: 4, scope: !2192)
!2232 = !DILocation(line: 299, column: 9, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2184, file: !81, line: 298, column: 11)
!2234 = !DILocation(line: 302, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2163, file: !81, line: 302, column: 7)
!2236 = !DILocation(line: 302, column: 7, scope: !2163)
!2237 = !DILocation(line: 303, column: 13, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2235, file: !81, line: 302, column: 12)
!2239 = !DILocation(line: 303, column: 5, scope: !2238)
!2240 = !DILocation(line: 304, column: 4, scope: !2238)
!2241 = !DILocation(line: 305, column: 3, scope: !2163)
!2242 = !DILocation(line: 306, column: 10, scope: !2149)
!2243 = !DILocation(line: 306, column: 3, scope: !2149)
!2244 = distinct !DISubprogram(name: "pgsql_get_oauth_key", scope: !81, file: !81, line: 157, type: !516, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2245 = !DILocalVariable(name: "kid", arg: 1, scope: !2244, file: !81, line: 157, type: !518)
!2246 = !DILocation(line: 157, column: 47, scope: !2244)
!2247 = !DILocalVariable(name: "key", arg: 2, scope: !2244, file: !81, line: 157, type: !497)
!2248 = !DILocation(line: 157, column: 72, scope: !2244)
!2249 = !DILocalVariable(name: "ret", scope: !2244, file: !81, line: 159, type: !46)
!2250 = !DILocation(line: 159, column: 6, scope: !2244)
!2251 = !DILocalVariable(name: "statement", scope: !2244, file: !81, line: 161, type: !573)
!2252 = !DILocation(line: 161, column: 7, scope: !2244)
!2253 = !DILocation(line: 163, column: 11, scope: !2244)
!2254 = !DILocation(line: 163, column: 134, scope: !2244)
!2255 = !DILocation(line: 163, column: 2, scope: !2244)
!2256 = !DILocalVariable(name: "pqc", scope: !2244, file: !81, line: 165, type: !55)
!2257 = !DILocation(line: 165, column: 11, scope: !2244)
!2258 = !DILocation(line: 165, column: 17, scope: !2244)
!2259 = !DILocation(line: 166, column: 5, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2244, file: !81, line: 166, column: 5)
!2261 = !DILocation(line: 166, column: 5, scope: !2244)
!2262 = !DILocalVariable(name: "res", scope: !2263, file: !81, line: 167, type: !581)
!2263 = distinct !DILexicalBlock(scope: !2260, file: !81, line: 166, column: 10)
!2264 = !DILocation(line: 167, column: 13, scope: !2263)
!2265 = !DILocation(line: 167, column: 26, scope: !2263)
!2266 = !DILocation(line: 167, column: 31, scope: !2263)
!2267 = !DILocation(line: 167, column: 19, scope: !2263)
!2268 = !DILocation(line: 169, column: 7, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2263, file: !81, line: 169, column: 6)
!2270 = !DILocation(line: 169, column: 11, scope: !2269)
!2271 = !DILocation(line: 169, column: 30, scope: !2269)
!2272 = !DILocation(line: 169, column: 15, scope: !2269)
!2273 = !DILocation(line: 169, column: 35, scope: !2269)
!2274 = !DILocation(line: 169, column: 55, scope: !2269)
!2275 = !DILocation(line: 169, column: 69, scope: !2269)
!2276 = !DILocation(line: 169, column: 59, scope: !2269)
!2277 = !DILocation(line: 169, column: 73, scope: !2269)
!2278 = !DILocation(line: 169, column: 6, scope: !2263)
!2279 = !DILocation(line: 170, column: 106, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2269, file: !81, line: 169, column: 79)
!2281 = !DILocation(line: 170, column: 91, scope: !2280)
!2282 = !DILocation(line: 170, column: 4, scope: !2280)
!2283 = !DILocation(line: 171, column: 3, scope: !2280)
!2284 = !DILocation(line: 172, column: 4, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2269, file: !81, line: 171, column: 10)
!2286 = !DILocation(line: 172, column: 4, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2288, file: !81, line: 172, column: 4)
!2288 = distinct !DILexicalBlock(scope: !2285, file: !81, line: 172, column: 4)
!2289 = !DILocation(line: 172, column: 4, scope: !2288)
!2290 = !DILocalVariable(name: "szdst", scope: !2291, file: !81, line: 172, type: !58)
!2291 = distinct !DILexicalBlock(scope: !2292, file: !81, line: 172, column: 4)
!2292 = distinct !DILexicalBlock(scope: !2293, file: !81, line: 172, column: 4)
!2293 = distinct !DILexicalBlock(scope: !2287, file: !81, line: 172, column: 4)
!2294 = !DILocation(line: 172, column: 4, scope: !2291)
!2295 = !DILocation(line: 172, column: 4, scope: !2293)
!2296 = !DILocation(line: 173, column: 50, scope: !2285)
!2297 = !DILocation(line: 173, column: 39, scope: !2285)
!2298 = !DILocation(line: 173, column: 31, scope: !2285)
!2299 = !DILocation(line: 173, column: 4, scope: !2285)
!2300 = !DILocation(line: 173, column: 9, scope: !2285)
!2301 = !DILocation(line: 173, column: 19, scope: !2285)
!2302 = !DILocation(line: 174, column: 48, scope: !2285)
!2303 = !DILocation(line: 174, column: 37, scope: !2285)
!2304 = !DILocation(line: 174, column: 30, scope: !2285)
!2305 = !DILocation(line: 174, column: 20, scope: !2285)
!2306 = !DILocation(line: 174, column: 4, scope: !2285)
!2307 = !DILocation(line: 174, column: 9, scope: !2285)
!2308 = !DILocation(line: 174, column: 18, scope: !2285)
!2309 = !DILocation(line: 175, column: 4, scope: !2285)
!2310 = !DILocation(line: 175, column: 4, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !81, line: 175, column: 4)
!2312 = distinct !DILexicalBlock(scope: !2285, file: !81, line: 175, column: 4)
!2313 = !DILocation(line: 175, column: 4, scope: !2312)
!2314 = !DILocalVariable(name: "szdst", scope: !2315, file: !81, line: 175, type: !58)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !81, line: 175, column: 4)
!2316 = distinct !DILexicalBlock(scope: !2317, file: !81, line: 175, column: 4)
!2317 = distinct !DILexicalBlock(scope: !2311, file: !81, line: 175, column: 4)
!2318 = !DILocation(line: 175, column: 4, scope: !2315)
!2319 = !DILocation(line: 175, column: 4, scope: !2317)
!2320 = !DILocation(line: 176, column: 4, scope: !2285)
!2321 = !DILocation(line: 176, column: 4, scope: !2322)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !81, line: 176, column: 4)
!2323 = distinct !DILexicalBlock(scope: !2285, file: !81, line: 176, column: 4)
!2324 = !DILocation(line: 176, column: 4, scope: !2323)
!2325 = !DILocalVariable(name: "szdst", scope: !2326, file: !81, line: 176, type: !58)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !81, line: 176, column: 4)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !81, line: 176, column: 4)
!2328 = distinct !DILexicalBlock(scope: !2322, file: !81, line: 176, column: 4)
!2329 = !DILocation(line: 176, column: 4, scope: !2326)
!2330 = !DILocation(line: 176, column: 4, scope: !2328)
!2331 = !DILocation(line: 177, column: 4, scope: !2285)
!2332 = !DILocation(line: 177, column: 4, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2334, file: !81, line: 177, column: 4)
!2334 = distinct !DILexicalBlock(scope: !2285, file: !81, line: 177, column: 4)
!2335 = !DILocation(line: 177, column: 4, scope: !2334)
!2336 = !DILocalVariable(name: "szdst", scope: !2337, file: !81, line: 177, type: !58)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !81, line: 177, column: 4)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !81, line: 177, column: 4)
!2339 = distinct !DILexicalBlock(scope: !2333, file: !81, line: 177, column: 4)
!2340 = !DILocation(line: 177, column: 4, scope: !2337)
!2341 = !DILocation(line: 177, column: 4, scope: !2339)
!2342 = !DILocation(line: 178, column: 8, scope: !2285)
!2343 = !DILocation(line: 181, column: 6, scope: !2344)
!2344 = distinct !DILexicalBlock(scope: !2263, file: !81, line: 181, column: 6)
!2345 = !DILocation(line: 181, column: 6, scope: !2263)
!2346 = !DILocation(line: 182, column: 12, scope: !2347)
!2347 = distinct !DILexicalBlock(scope: !2344, file: !81, line: 181, column: 11)
!2348 = !DILocation(line: 182, column: 4, scope: !2347)
!2349 = !DILocation(line: 183, column: 3, scope: !2347)
!2350 = !DILocation(line: 184, column: 2, scope: !2263)
!2351 = !DILocation(line: 186, column: 9, scope: !2244)
!2352 = !DILocation(line: 186, column: 2, scope: !2244)
!2353 = distinct !DISubprogram(name: "pgsql_del_oauth_key", scope: !81, file: !81, line: 324, type: !522, scopeLine: 324, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2354 = !DILocalVariable(name: "kid", arg: 1, scope: !2353, file: !81, line: 324, type: !518)
!2355 = !DILocation(line: 324, column: 47, scope: !2353)
!2356 = !DILocalVariable(name: "ret", scope: !2353, file: !81, line: 326, type: !46)
!2357 = !DILocation(line: 326, column: 7, scope: !2353)
!2358 = !DILocalVariable(name: "statement", scope: !2353, file: !81, line: 327, type: !573)
!2359 = !DILocation(line: 327, column: 8, scope: !2353)
!2360 = !DILocalVariable(name: "pqc", scope: !2353, file: !81, line: 328, type: !55)
!2361 = !DILocation(line: 328, column: 11, scope: !2353)
!2362 = !DILocation(line: 328, column: 17, scope: !2353)
!2363 = !DILocation(line: 329, column: 6, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2353, file: !81, line: 329, column: 6)
!2365 = !DILocation(line: 329, column: 6, scope: !2353)
!2366 = !DILocation(line: 330, column: 13, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2364, file: !81, line: 329, column: 11)
!2368 = !DILocation(line: 330, column: 95, scope: !2367)
!2369 = !DILocation(line: 330, column: 4, scope: !2367)
!2370 = !DILocalVariable(name: "res", scope: !2367, file: !81, line: 332, type: !581)
!2371 = !DILocation(line: 332, column: 14, scope: !2367)
!2372 = !DILocation(line: 332, column: 27, scope: !2367)
!2373 = !DILocation(line: 332, column: 32, scope: !2367)
!2374 = !DILocation(line: 332, column: 20, scope: !2367)
!2375 = !DILocation(line: 333, column: 8, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2367, file: !81, line: 333, column: 7)
!2377 = !DILocation(line: 333, column: 12, scope: !2376)
!2378 = !DILocation(line: 333, column: 31, scope: !2376)
!2379 = !DILocation(line: 333, column: 16, scope: !2376)
!2380 = !DILocation(line: 333, column: 36, scope: !2376)
!2381 = !DILocation(line: 333, column: 7, scope: !2367)
!2382 = !DILocation(line: 334, column: 101, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2376, file: !81, line: 333, column: 58)
!2384 = !DILocation(line: 334, column: 86, scope: !2383)
!2385 = !DILocation(line: 334, column: 5, scope: !2383)
!2386 = !DILocation(line: 335, column: 4, scope: !2383)
!2387 = !DILocation(line: 336, column: 9, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2376, file: !81, line: 335, column: 11)
!2389 = !DILocation(line: 338, column: 7, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2367, file: !81, line: 338, column: 7)
!2391 = !DILocation(line: 338, column: 7, scope: !2367)
!2392 = !DILocation(line: 339, column: 13, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2390, file: !81, line: 338, column: 12)
!2394 = !DILocation(line: 339, column: 5, scope: !2393)
!2395 = !DILocation(line: 340, column: 4, scope: !2393)
!2396 = !DILocation(line: 341, column: 3, scope: !2367)
!2397 = !DILocation(line: 342, column: 10, scope: !2353)
!2398 = !DILocation(line: 342, column: 3, scope: !2353)
!2399 = distinct !DISubprogram(name: "pgsql_list_oauth_keys", scope: !81, file: !81, line: 189, type: !526, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2400 = !DILocalVariable(name: "kids", arg: 1, scope: !2399, file: !81, line: 189, type: !439)
!2401 = !DILocation(line: 189, column: 50, scope: !2399)
!2402 = !DILocalVariable(name: "teas", arg: 2, scope: !2399, file: !81, line: 189, type: !439)
!2403 = !DILocation(line: 189, column: 71, scope: !2399)
!2404 = !DILocalVariable(name: "tss", arg: 3, scope: !2399, file: !81, line: 189, type: !439)
!2405 = !DILocation(line: 189, column: 92, scope: !2399)
!2406 = !DILocalVariable(name: "lts", arg: 4, scope: !2399, file: !81, line: 189, type: !439)
!2407 = !DILocation(line: 189, column: 112, scope: !2399)
!2408 = !DILocalVariable(name: "realms", arg: 5, scope: !2399, file: !81, line: 189, type: !439)
!2409 = !DILocation(line: 189, column: 132, scope: !2399)
!2410 = !DILocalVariable(name: "key_", scope: !2399, file: !81, line: 191, type: !498)
!2411 = !DILocation(line: 191, column: 21, scope: !2399)
!2412 = !DILocalVariable(name: "key", scope: !2399, file: !81, line: 192, type: !497)
!2413 = !DILocation(line: 192, column: 22, scope: !2399)
!2414 = !DILocalVariable(name: "ret", scope: !2399, file: !81, line: 194, type: !46)
!2415 = !DILocation(line: 194, column: 6, scope: !2399)
!2416 = !DILocalVariable(name: "statement", scope: !2399, file: !81, line: 196, type: !573)
!2417 = !DILocation(line: 196, column: 7, scope: !2399)
!2418 = !DILocation(line: 197, column: 11, scope: !2399)
!2419 = !DILocation(line: 197, column: 2, scope: !2399)
!2420 = !DILocalVariable(name: "pqc", scope: !2399, file: !81, line: 199, type: !55)
!2421 = !DILocation(line: 199, column: 11, scope: !2399)
!2422 = !DILocation(line: 199, column: 17, scope: !2399)
!2423 = !DILocation(line: 200, column: 5, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2399, file: !81, line: 200, column: 5)
!2425 = !DILocation(line: 200, column: 5, scope: !2399)
!2426 = !DILocalVariable(name: "res", scope: !2427, file: !81, line: 201, type: !581)
!2427 = distinct !DILexicalBlock(scope: !2424, file: !81, line: 200, column: 10)
!2428 = !DILocation(line: 201, column: 13, scope: !2427)
!2429 = !DILocation(line: 201, column: 26, scope: !2427)
!2430 = !DILocation(line: 201, column: 31, scope: !2427)
!2431 = !DILocation(line: 201, column: 19, scope: !2427)
!2432 = !DILocation(line: 203, column: 7, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2427, file: !81, line: 203, column: 6)
!2434 = !DILocation(line: 203, column: 11, scope: !2433)
!2435 = !DILocation(line: 203, column: 30, scope: !2433)
!2436 = !DILocation(line: 203, column: 15, scope: !2433)
!2437 = !DILocation(line: 203, column: 35, scope: !2433)
!2438 = !DILocation(line: 203, column: 6, scope: !2427)
!2439 = !DILocation(line: 204, column: 106, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2433, file: !81, line: 203, column: 56)
!2441 = !DILocation(line: 204, column: 91, scope: !2440)
!2442 = !DILocation(line: 204, column: 4, scope: !2440)
!2443 = !DILocation(line: 205, column: 3, scope: !2440)
!2444 = !DILocalVariable(name: "i", scope: !2445, file: !81, line: 206, type: !46)
!2445 = distinct !DILexicalBlock(scope: !2433, file: !81, line: 205, column: 10)
!2446 = !DILocation(line: 206, column: 8, scope: !2445)
!2447 = !DILocation(line: 207, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !81, line: 207, column: 4)
!2449 = !DILocation(line: 207, column: 8, scope: !2448)
!2450 = !DILocation(line: 207, column: 12, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !81, line: 207, column: 4)
!2452 = !DILocation(line: 207, column: 24, scope: !2451)
!2453 = !DILocation(line: 207, column: 14, scope: !2451)
!2454 = !DILocation(line: 207, column: 13, scope: !2451)
!2455 = !DILocation(line: 207, column: 4, scope: !2448)
!2456 = !DILocation(line: 209, column: 5, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2451, file: !81, line: 207, column: 34)
!2458 = !DILocation(line: 209, column: 5, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !81, line: 209, column: 5)
!2460 = distinct !DILexicalBlock(scope: !2457, file: !81, line: 209, column: 5)
!2461 = !DILocation(line: 209, column: 5, scope: !2460)
!2462 = !DILocalVariable(name: "szdst", scope: !2463, file: !81, line: 209, type: !58)
!2463 = distinct !DILexicalBlock(scope: !2464, file: !81, line: 209, column: 5)
!2464 = distinct !DILexicalBlock(scope: !2465, file: !81, line: 209, column: 5)
!2465 = distinct !DILexicalBlock(scope: !2459, file: !81, line: 209, column: 5)
!2466 = !DILocation(line: 209, column: 5, scope: !2463)
!2467 = !DILocation(line: 209, column: 5, scope: !2465)
!2468 = !DILocation(line: 210, column: 51, scope: !2457)
!2469 = !DILocation(line: 210, column: 55, scope: !2457)
!2470 = !DILocation(line: 210, column: 40, scope: !2457)
!2471 = !DILocation(line: 210, column: 32, scope: !2457)
!2472 = !DILocation(line: 210, column: 5, scope: !2457)
!2473 = !DILocation(line: 210, column: 10, scope: !2457)
!2474 = !DILocation(line: 210, column: 20, scope: !2457)
!2475 = !DILocation(line: 211, column: 49, scope: !2457)
!2476 = !DILocation(line: 211, column: 53, scope: !2457)
!2477 = !DILocation(line: 211, column: 38, scope: !2457)
!2478 = !DILocation(line: 211, column: 31, scope: !2457)
!2479 = !DILocation(line: 211, column: 21, scope: !2457)
!2480 = !DILocation(line: 211, column: 5, scope: !2457)
!2481 = !DILocation(line: 211, column: 10, scope: !2457)
!2482 = !DILocation(line: 211, column: 19, scope: !2457)
!2483 = !DILocation(line: 212, column: 5, scope: !2457)
!2484 = !DILocation(line: 212, column: 5, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2486, file: !81, line: 212, column: 5)
!2486 = distinct !DILexicalBlock(scope: !2457, file: !81, line: 212, column: 5)
!2487 = !DILocation(line: 212, column: 5, scope: !2486)
!2488 = !DILocalVariable(name: "szdst", scope: !2489, file: !81, line: 212, type: !58)
!2489 = distinct !DILexicalBlock(scope: !2490, file: !81, line: 212, column: 5)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !81, line: 212, column: 5)
!2491 = distinct !DILexicalBlock(scope: !2485, file: !81, line: 212, column: 5)
!2492 = !DILocation(line: 212, column: 5, scope: !2489)
!2493 = !DILocation(line: 212, column: 5, scope: !2491)
!2494 = !DILocation(line: 213, column: 5, scope: !2457)
!2495 = !DILocation(line: 213, column: 5, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2497, file: !81, line: 213, column: 5)
!2497 = distinct !DILexicalBlock(scope: !2457, file: !81, line: 213, column: 5)
!2498 = !DILocation(line: 213, column: 5, scope: !2497)
!2499 = !DILocalVariable(name: "szdst", scope: !2500, file: !81, line: 213, type: !58)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !81, line: 213, column: 5)
!2501 = distinct !DILexicalBlock(scope: !2502, file: !81, line: 213, column: 5)
!2502 = distinct !DILexicalBlock(scope: !2496, file: !81, line: 213, column: 5)
!2503 = !DILocation(line: 213, column: 5, scope: !2500)
!2504 = !DILocation(line: 213, column: 5, scope: !2502)
!2505 = !DILocation(line: 214, column: 5, scope: !2457)
!2506 = !DILocation(line: 214, column: 5, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2508, file: !81, line: 214, column: 5)
!2508 = distinct !DILexicalBlock(scope: !2457, file: !81, line: 214, column: 5)
!2509 = !DILocation(line: 214, column: 5, scope: !2508)
!2510 = !DILocalVariable(name: "szdst", scope: !2511, file: !81, line: 214, type: !58)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !81, line: 214, column: 5)
!2512 = distinct !DILexicalBlock(scope: !2513, file: !81, line: 214, column: 5)
!2513 = distinct !DILexicalBlock(scope: !2507, file: !81, line: 214, column: 5)
!2514 = !DILocation(line: 214, column: 5, scope: !2511)
!2515 = !DILocation(line: 214, column: 5, scope: !2513)
!2516 = !DILocation(line: 216, column: 8, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2457, file: !81, line: 216, column: 8)
!2518 = !DILocation(line: 216, column: 8, scope: !2457)
!2519 = !DILocation(line: 217, column: 26, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2517, file: !81, line: 216, column: 14)
!2521 = !DILocation(line: 217, column: 31, scope: !2520)
!2522 = !DILocation(line: 217, column: 36, scope: !2520)
!2523 = !DILocation(line: 217, column: 6, scope: !2520)
!2524 = !DILocation(line: 218, column: 26, scope: !2520)
!2525 = !DILocation(line: 218, column: 31, scope: !2520)
!2526 = !DILocation(line: 218, column: 36, scope: !2520)
!2527 = !DILocation(line: 218, column: 6, scope: !2520)
!2528 = !DILocation(line: 219, column: 26, scope: !2520)
!2529 = !DILocation(line: 219, column: 33, scope: !2520)
!2530 = !DILocation(line: 219, column: 38, scope: !2520)
!2531 = !DILocation(line: 219, column: 6, scope: !2520)
!2532 = !DILocalVariable(name: "ts", scope: !2533, file: !81, line: 221, type: !2534)
!2533 = distinct !DILexicalBlock(scope: !2520, file: !81, line: 220, column: 6)
!2534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !62, size: 2048, elements: !2535)
!2535 = !{!2536}
!2536 = !DISubrange(count: 256)
!2537 = !DILocation(line: 221, column: 12, scope: !2533)
!2538 = !DILocation(line: 222, column: 16, scope: !2533)
!2539 = !DILocation(line: 222, column: 59, scope: !2533)
!2540 = !DILocation(line: 222, column: 64, scope: !2533)
!2541 = !DILocation(line: 222, column: 7, scope: !2533)
!2542 = !DILocation(line: 223, column: 27, scope: !2533)
!2543 = !DILocation(line: 223, column: 31, scope: !2533)
!2544 = !DILocation(line: 223, column: 7, scope: !2533)
!2545 = !DILocalVariable(name: "lt", scope: !2546, file: !81, line: 226, type: !2534)
!2546 = distinct !DILexicalBlock(scope: !2520, file: !81, line: 225, column: 6)
!2547 = !DILocation(line: 226, column: 12, scope: !2546)
!2548 = !DILocation(line: 227, column: 16, scope: !2546)
!2549 = !DILocation(line: 227, column: 53, scope: !2546)
!2550 = !DILocation(line: 227, column: 58, scope: !2546)
!2551 = !DILocation(line: 227, column: 38, scope: !2546)
!2552 = !DILocation(line: 227, column: 7, scope: !2546)
!2553 = !DILocation(line: 228, column: 27, scope: !2546)
!2554 = !DILocation(line: 228, column: 31, scope: !2546)
!2555 = !DILocation(line: 228, column: 7, scope: !2546)
!2556 = !DILocation(line: 230, column: 5, scope: !2520)
!2557 = !DILocation(line: 232, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2517, file: !81, line: 230, column: 12)
!2559 = !DILocation(line: 232, column: 12, scope: !2558)
!2560 = !DILocation(line: 232, column: 17, scope: !2558)
!2561 = !DILocation(line: 232, column: 22, scope: !2558)
!2562 = !DILocation(line: 232, column: 51, scope: !2558)
!2563 = !DILocation(line: 232, column: 56, scope: !2558)
!2564 = !DILocation(line: 232, column: 82, scope: !2558)
!2565 = !DILocation(line: 232, column: 87, scope: !2558)
!2566 = !DILocation(line: 232, column: 67, scope: !2558)
!2567 = !DILocation(line: 233, column: 7, scope: !2558)
!2568 = !DILocation(line: 233, column: 12, scope: !2558)
!2569 = !DILocation(line: 233, column: 22, scope: !2558)
!2570 = !DILocation(line: 233, column: 27, scope: !2558)
!2571 = !DILocation(line: 231, column: 6, scope: !2558)
!2572 = !DILocation(line: 236, column: 9, scope: !2457)
!2573 = !DILocation(line: 237, column: 4, scope: !2457)
!2574 = !DILocation(line: 207, column: 30, scope: !2451)
!2575 = !DILocation(line: 207, column: 4, scope: !2451)
!2576 = distinct !{!2576, !2455, !2577, !631}
!2577 = !DILocation(line: 237, column: 4, scope: !2448)
!2578 = !DILocation(line: 240, column: 6, scope: !2579)
!2579 = distinct !DILexicalBlock(scope: !2427, file: !81, line: 240, column: 6)
!2580 = !DILocation(line: 240, column: 6, scope: !2427)
!2581 = !DILocation(line: 241, column: 12, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2579, file: !81, line: 240, column: 11)
!2583 = !DILocation(line: 241, column: 4, scope: !2582)
!2584 = !DILocation(line: 242, column: 3, scope: !2582)
!2585 = !DILocation(line: 243, column: 2, scope: !2427)
!2586 = !DILocation(line: 245, column: 9, scope: !2399)
!2587 = !DILocation(line: 245, column: 2, scope: !2399)
!2588 = distinct !DISubprogram(name: "pgsql_get_admin_user", scope: !81, file: !81, line: 838, type: !530, scopeLine: 839, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2589 = !DILocalVariable(name: "usname", arg: 1, scope: !2588, file: !81, line: 838, type: !518)
!2590 = !DILocation(line: 838, column: 48, scope: !2588)
!2591 = !DILocalVariable(name: "realm", arg: 2, scope: !2588, file: !81, line: 838, type: !447)
!2592 = !DILocation(line: 838, column: 65, scope: !2588)
!2593 = !DILocalVariable(name: "pwd", arg: 3, scope: !2588, file: !81, line: 838, type: !447)
!2594 = !DILocation(line: 838, column: 83, scope: !2588)
!2595 = !DILocalVariable(name: "ret", scope: !2588, file: !81, line: 840, type: !46)
!2596 = !DILocation(line: 840, column: 6, scope: !2588)
!2597 = !DILocation(line: 842, column: 2, scope: !2588)
!2598 = !DILocation(line: 842, column: 10, scope: !2588)
!2599 = !DILocation(line: 843, column: 2, scope: !2588)
!2600 = !DILocation(line: 843, column: 8, scope: !2588)
!2601 = !DILocalVariable(name: "pqc", scope: !2588, file: !81, line: 845, type: !55)
!2602 = !DILocation(line: 845, column: 11, scope: !2588)
!2603 = !DILocation(line: 845, column: 17, scope: !2588)
!2604 = !DILocation(line: 846, column: 5, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2588, file: !81, line: 846, column: 5)
!2606 = !DILocation(line: 846, column: 5, scope: !2588)
!2607 = !DILocalVariable(name: "statement", scope: !2608, file: !81, line: 847, type: !573)
!2608 = distinct !DILexicalBlock(scope: !2605, file: !81, line: 846, column: 10)
!2609 = !DILocation(line: 847, column: 8, scope: !2608)
!2610 = !DILocation(line: 848, column: 12, scope: !2608)
!2611 = !DILocation(line: 848, column: 96, scope: !2608)
!2612 = !DILocation(line: 848, column: 3, scope: !2608)
!2613 = !DILocalVariable(name: "res", scope: !2608, file: !81, line: 849, type: !581)
!2614 = !DILocation(line: 849, column: 13, scope: !2608)
!2615 = !DILocation(line: 849, column: 26, scope: !2608)
!2616 = !DILocation(line: 849, column: 31, scope: !2608)
!2617 = !DILocation(line: 849, column: 19, scope: !2608)
!2618 = !DILocation(line: 851, column: 7, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2608, file: !81, line: 851, column: 6)
!2620 = !DILocation(line: 851, column: 11, scope: !2619)
!2621 = !DILocation(line: 851, column: 30, scope: !2619)
!2622 = !DILocation(line: 851, column: 15, scope: !2619)
!2623 = !DILocation(line: 851, column: 35, scope: !2619)
!2624 = !DILocation(line: 851, column: 55, scope: !2619)
!2625 = !DILocation(line: 851, column: 69, scope: !2619)
!2626 = !DILocation(line: 851, column: 59, scope: !2619)
!2627 = !DILocation(line: 851, column: 73, scope: !2619)
!2628 = !DILocation(line: 851, column: 6, scope: !2608)
!2629 = !DILocation(line: 852, column: 106, scope: !2630)
!2630 = distinct !DILexicalBlock(scope: !2619, file: !81, line: 851, column: 79)
!2631 = !DILocation(line: 852, column: 91, scope: !2630)
!2632 = !DILocation(line: 852, column: 4, scope: !2630)
!2633 = !DILocation(line: 853, column: 3, scope: !2630)
!2634 = !DILocalVariable(name: "kval", scope: !2635, file: !81, line: 854, type: !63)
!2635 = distinct !DILexicalBlock(scope: !2619, file: !81, line: 853, column: 10)
!2636 = !DILocation(line: 854, column: 16, scope: !2635)
!2637 = !DILocation(line: 854, column: 34, scope: !2635)
!2638 = !DILocation(line: 854, column: 23, scope: !2635)
!2639 = !DILocation(line: 855, column: 7, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2635, file: !81, line: 855, column: 7)
!2641 = !DILocation(line: 855, column: 7, scope: !2635)
!2642 = !DILocation(line: 856, column: 20, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2640, file: !81, line: 855, column: 13)
!2644 = !DILocation(line: 856, column: 26, scope: !2643)
!2645 = !DILocation(line: 856, column: 5, scope: !2643)
!2646 = !DILocation(line: 857, column: 4, scope: !2643)
!2647 = !DILocation(line: 858, column: 36, scope: !2635)
!2648 = !DILocation(line: 858, column: 25, scope: !2635)
!2649 = !DILocation(line: 858, column: 9, scope: !2635)
!2650 = !DILocation(line: 859, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2635, file: !81, line: 859, column: 7)
!2652 = !DILocation(line: 859, column: 7, scope: !2635)
!2653 = !DILocation(line: 860, column: 20, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2651, file: !81, line: 859, column: 13)
!2655 = !DILocation(line: 860, column: 24, scope: !2654)
!2656 = !DILocation(line: 860, column: 5, scope: !2654)
!2657 = !DILocation(line: 861, column: 4, scope: !2654)
!2658 = !DILocation(line: 862, column: 8, scope: !2635)
!2659 = !DILocation(line: 865, column: 6, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2608, file: !81, line: 865, column: 6)
!2661 = !DILocation(line: 865, column: 6, scope: !2608)
!2662 = !DILocation(line: 866, column: 12, scope: !2660)
!2663 = !DILocation(line: 866, column: 4, scope: !2660)
!2664 = !DILocation(line: 868, column: 2, scope: !2608)
!2665 = !DILocation(line: 869, column: 9, scope: !2588)
!2666 = !DILocation(line: 869, column: 2, scope: !2588)
!2667 = distinct !DISubprogram(name: "pgsql_set_admin_user", scope: !81, file: !81, line: 872, type: !534, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2668 = !DILocalVariable(name: "usname", arg: 1, scope: !2667, file: !81, line: 872, type: !518)
!2669 = !DILocation(line: 872, column: 48, scope: !2667)
!2670 = !DILocalVariable(name: "realm", arg: 2, scope: !2667, file: !81, line: 872, type: !518)
!2671 = !DILocation(line: 872, column: 71, scope: !2667)
!2672 = !DILocalVariable(name: "pwd", arg: 3, scope: !2667, file: !81, line: 872, type: !518)
!2673 = !DILocation(line: 872, column: 95, scope: !2667)
!2674 = !DILocalVariable(name: "ret", scope: !2667, file: !81, line: 874, type: !46)
!2675 = !DILocation(line: 874, column: 6, scope: !2667)
!2676 = !DILocalVariable(name: "statement", scope: !2667, file: !81, line: 875, type: !573)
!2677 = !DILocation(line: 875, column: 7, scope: !2667)
!2678 = !DILocation(line: 876, column: 32, scope: !2667)
!2679 = !DILocalVariable(name: "pqc", scope: !2667, file: !81, line: 877, type: !55)
!2680 = !DILocation(line: 877, column: 10, scope: !2667)
!2681 = !DILocation(line: 877, column: 16, scope: !2667)
!2682 = !DILocation(line: 878, column: 5, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2667, file: !81, line: 878, column: 5)
!2684 = !DILocation(line: 878, column: 5, scope: !2667)
!2685 = !DILocation(line: 879, column: 13, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !81, line: 878, column: 10)
!2687 = !DILocation(line: 879, column: 111, scope: !2686)
!2688 = !DILocation(line: 879, column: 117, scope: !2686)
!2689 = !DILocation(line: 879, column: 124, scope: !2686)
!2690 = !DILocation(line: 879, column: 4, scope: !2686)
!2691 = !DILocalVariable(name: "res", scope: !2686, file: !81, line: 881, type: !581)
!2692 = !DILocation(line: 881, column: 14, scope: !2686)
!2693 = !DILocation(line: 881, column: 27, scope: !2686)
!2694 = !DILocation(line: 881, column: 32, scope: !2686)
!2695 = !DILocation(line: 881, column: 20, scope: !2686)
!2696 = !DILocation(line: 882, column: 8, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2686, file: !81, line: 882, column: 7)
!2698 = !DILocation(line: 882, column: 12, scope: !2697)
!2699 = !DILocation(line: 882, column: 31, scope: !2697)
!2700 = !DILocation(line: 882, column: 16, scope: !2697)
!2701 = !DILocation(line: 882, column: 36, scope: !2697)
!2702 = !DILocation(line: 882, column: 7, scope: !2686)
!2703 = !DILocation(line: 883, column: 6, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2705, file: !81, line: 883, column: 6)
!2705 = distinct !DILexicalBlock(scope: !2697, file: !81, line: 882, column: 58)
!2706 = !DILocation(line: 883, column: 6, scope: !2705)
!2707 = !DILocation(line: 884, column: 12, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2704, file: !81, line: 883, column: 11)
!2709 = !DILocation(line: 884, column: 4, scope: !2708)
!2710 = !DILocation(line: 885, column: 3, scope: !2708)
!2711 = !DILocation(line: 886, column: 12, scope: !2705)
!2712 = !DILocation(line: 886, column: 105, scope: !2705)
!2713 = !DILocation(line: 886, column: 109, scope: !2705)
!2714 = !DILocation(line: 886, column: 115, scope: !2705)
!2715 = !DILocation(line: 886, column: 3, scope: !2705)
!2716 = !DILocation(line: 887, column: 16, scope: !2705)
!2717 = !DILocation(line: 887, column: 21, scope: !2705)
!2718 = !DILocation(line: 887, column: 9, scope: !2705)
!2719 = !DILocation(line: 887, column: 7, scope: !2705)
!2720 = !DILocation(line: 888, column: 7, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2705, file: !81, line: 888, column: 6)
!2722 = !DILocation(line: 888, column: 11, scope: !2721)
!2723 = !DILocation(line: 888, column: 30, scope: !2721)
!2724 = !DILocation(line: 888, column: 15, scope: !2721)
!2725 = !DILocation(line: 888, column: 35, scope: !2721)
!2726 = !DILocation(line: 888, column: 6, scope: !2705)
!2727 = !DILocation(line: 889, column: 105, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2721, file: !81, line: 888, column: 57)
!2729 = !DILocation(line: 889, column: 90, scope: !2728)
!2730 = !DILocation(line: 889, column: 4, scope: !2728)
!2731 = !DILocation(line: 890, column: 3, scope: !2728)
!2732 = !DILocation(line: 891, column: 9, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2721, file: !81, line: 890, column: 10)
!2734 = !DILocation(line: 893, column: 4, scope: !2705)
!2735 = !DILocation(line: 894, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2686, file: !81, line: 894, column: 7)
!2737 = !DILocation(line: 894, column: 7, scope: !2686)
!2738 = !DILocation(line: 895, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !81, line: 894, column: 12)
!2740 = !DILocation(line: 895, column: 3, scope: !2739)
!2741 = !DILocation(line: 896, column: 4, scope: !2739)
!2742 = !DILocation(line: 897, column: 2, scope: !2686)
!2743 = !DILocation(line: 898, column: 9, scope: !2667)
!2744 = !DILocation(line: 898, column: 2, scope: !2667)
!2745 = distinct !DISubprogram(name: "pgsql_del_admin_user", scope: !81, file: !81, line: 901, type: !522, scopeLine: 902, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2746 = !DILocalVariable(name: "usname", arg: 1, scope: !2745, file: !81, line: 901, type: !518)
!2747 = !DILocation(line: 901, column: 48, scope: !2745)
!2748 = !DILocalVariable(name: "ret", scope: !2745, file: !81, line: 903, type: !46)
!2749 = !DILocation(line: 903, column: 6, scope: !2745)
!2750 = !DILocalVariable(name: "statement", scope: !2745, file: !81, line: 904, type: !573)
!2751 = !DILocation(line: 904, column: 7, scope: !2745)
!2752 = !DILocation(line: 905, column: 32, scope: !2745)
!2753 = !DILocalVariable(name: "pqc", scope: !2745, file: !81, line: 906, type: !55)
!2754 = !DILocation(line: 906, column: 10, scope: !2745)
!2755 = !DILocation(line: 906, column: 16, scope: !2745)
!2756 = !DILocation(line: 907, column: 5, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !81, line: 907, column: 5)
!2758 = !DILocation(line: 907, column: 5, scope: !2745)
!2759 = !DILocation(line: 908, column: 12, scope: !2760)
!2760 = distinct !DILexicalBlock(scope: !2757, file: !81, line: 907, column: 10)
!2761 = !DILocation(line: 908, column: 81, scope: !2760)
!2762 = !DILocation(line: 908, column: 3, scope: !2760)
!2763 = !DILocalVariable(name: "res", scope: !2760, file: !81, line: 909, type: !581)
!2764 = !DILocation(line: 909, column: 13, scope: !2760)
!2765 = !DILocation(line: 909, column: 26, scope: !2760)
!2766 = !DILocation(line: 909, column: 31, scope: !2760)
!2767 = !DILocation(line: 909, column: 19, scope: !2760)
!2768 = !DILocation(line: 910, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2760, file: !81, line: 910, column: 6)
!2770 = !DILocation(line: 910, column: 6, scope: !2760)
!2771 = !DILocation(line: 911, column: 12, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2769, file: !81, line: 910, column: 11)
!2773 = !DILocation(line: 911, column: 4, scope: !2772)
!2774 = !DILocation(line: 912, column: 8, scope: !2772)
!2775 = !DILocation(line: 913, column: 3, scope: !2772)
!2776 = !DILocation(line: 914, column: 2, scope: !2760)
!2777 = !DILocation(line: 915, column: 9, scope: !2745)
!2778 = !DILocation(line: 915, column: 2, scope: !2745)
!2779 = distinct !DISubprogram(name: "pgsql_list_admin_users", scope: !81, file: !81, line: 918, type: !539, scopeLine: 919, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2780 = !DILocalVariable(name: "no_print", arg: 1, scope: !2779, file: !81, line: 918, type: !46)
!2781 = !DILocation(line: 918, column: 39, scope: !2779)
!2782 = !DILocalVariable(name: "ret", scope: !2779, file: !81, line: 920, type: !46)
!2783 = !DILocation(line: 920, column: 6, scope: !2779)
!2784 = !DILocalVariable(name: "statement", scope: !2779, file: !81, line: 921, type: !573)
!2785 = !DILocation(line: 921, column: 7, scope: !2779)
!2786 = !DILocation(line: 922, column: 32, scope: !2779)
!2787 = !DILocalVariable(name: "pqc", scope: !2779, file: !81, line: 923, type: !55)
!2788 = !DILocation(line: 923, column: 10, scope: !2779)
!2789 = !DILocation(line: 923, column: 16, scope: !2779)
!2790 = !DILocation(line: 924, column: 5, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2779, file: !81, line: 924, column: 5)
!2792 = !DILocation(line: 924, column: 5, scope: !2779)
!2793 = !DILocation(line: 925, column: 12, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2791, file: !81, line: 924, column: 10)
!2795 = !DILocation(line: 925, column: 3, scope: !2794)
!2796 = !DILocation(line: 926, column: 2, scope: !2794)
!2797 = !DILocalVariable(name: "res", scope: !2779, file: !81, line: 927, type: !581)
!2798 = !DILocation(line: 927, column: 12, scope: !2779)
!2799 = !DILocation(line: 927, column: 25, scope: !2779)
!2800 = !DILocation(line: 927, column: 30, scope: !2779)
!2801 = !DILocation(line: 927, column: 18, scope: !2779)
!2802 = !DILocation(line: 928, column: 6, scope: !2803)
!2803 = distinct !DILexicalBlock(scope: !2779, file: !81, line: 928, column: 5)
!2804 = !DILocation(line: 928, column: 10, scope: !2803)
!2805 = !DILocation(line: 928, column: 29, scope: !2803)
!2806 = !DILocation(line: 928, column: 14, scope: !2803)
!2807 = !DILocation(line: 928, column: 34, scope: !2803)
!2808 = !DILocation(line: 928, column: 5, scope: !2779)
!2809 = !DILocation(line: 929, column: 105, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2803, file: !81, line: 928, column: 55)
!2811 = !DILocation(line: 929, column: 90, scope: !2810)
!2812 = !DILocation(line: 929, column: 3, scope: !2810)
!2813 = !DILocation(line: 930, column: 2, scope: !2810)
!2814 = !DILocalVariable(name: "i", scope: !2815, file: !81, line: 931, type: !46)
!2815 = distinct !DILexicalBlock(scope: !2803, file: !81, line: 930, column: 9)
!2816 = !DILocation(line: 931, column: 7, scope: !2815)
!2817 = !DILocation(line: 932, column: 7, scope: !2815)
!2818 = !DILocation(line: 933, column: 8, scope: !2819)
!2819 = distinct !DILexicalBlock(scope: !2815, file: !81, line: 933, column: 3)
!2820 = !DILocation(line: 933, column: 7, scope: !2819)
!2821 = !DILocation(line: 933, column: 11, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2819, file: !81, line: 933, column: 3)
!2823 = !DILocation(line: 933, column: 23, scope: !2822)
!2824 = !DILocation(line: 933, column: 13, scope: !2822)
!2825 = !DILocation(line: 933, column: 12, scope: !2822)
!2826 = !DILocation(line: 933, column: 3, scope: !2819)
!2827 = !DILocalVariable(name: "kval", scope: !2828, file: !81, line: 934, type: !61)
!2828 = distinct !DILexicalBlock(scope: !2822, file: !81, line: 933, column: 33)
!2829 = !DILocation(line: 934, column: 10, scope: !2828)
!2830 = !DILocation(line: 934, column: 28, scope: !2828)
!2831 = !DILocation(line: 934, column: 32, scope: !2828)
!2832 = !DILocation(line: 934, column: 17, scope: !2828)
!2833 = !DILocation(line: 935, column: 4, scope: !2828)
!2834 = !DILocation(line: 936, column: 7, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2828, file: !81, line: 936, column: 7)
!2836 = !DILocation(line: 936, column: 12, scope: !2835)
!2837 = !DILocation(line: 936, column: 16, scope: !2835)
!2838 = !DILocation(line: 936, column: 7, scope: !2828)
!2839 = !DILocalVariable(name: "rval", scope: !2840, file: !81, line: 937, type: !61)
!2840 = distinct !DILexicalBlock(scope: !2835, file: !81, line: 936, column: 26)
!2841 = !DILocation(line: 937, column: 11, scope: !2840)
!2842 = !DILocation(line: 937, column: 29, scope: !2840)
!2843 = !DILocation(line: 937, column: 33, scope: !2840)
!2844 = !DILocation(line: 937, column: 18, scope: !2840)
!2845 = !DILocation(line: 938, column: 8, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2840, file: !81, line: 938, column: 8)
!2847 = !DILocation(line: 938, column: 13, scope: !2846)
!2848 = !DILocation(line: 938, column: 17, scope: !2846)
!2849 = !DILocation(line: 938, column: 16, scope: !2846)
!2850 = !DILocation(line: 938, column: 8, scope: !2840)
!2851 = !DILocation(line: 939, column: 24, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2846, file: !81, line: 938, column: 23)
!2853 = !DILocation(line: 939, column: 29, scope: !2852)
!2854 = !DILocation(line: 939, column: 6, scope: !2852)
!2855 = !DILocation(line: 940, column: 5, scope: !2852)
!2856 = !DILocation(line: 941, column: 20, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2846, file: !81, line: 940, column: 12)
!2858 = !DILocation(line: 941, column: 6, scope: !2857)
!2859 = !DILocation(line: 943, column: 4, scope: !2840)
!2860 = !DILocation(line: 944, column: 3, scope: !2828)
!2861 = !DILocation(line: 933, column: 29, scope: !2822)
!2862 = !DILocation(line: 933, column: 3, scope: !2822)
!2863 = distinct !{!2863, !2826, !2864, !631}
!2864 = !DILocation(line: 944, column: 3, scope: !2819)
!2865 = !DILocation(line: 946, column: 5, scope: !2866)
!2866 = distinct !DILexicalBlock(scope: !2779, file: !81, line: 946, column: 5)
!2867 = !DILocation(line: 946, column: 5, scope: !2779)
!2868 = !DILocation(line: 947, column: 11, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2866, file: !81, line: 946, column: 10)
!2870 = !DILocation(line: 947, column: 3, scope: !2869)
!2871 = !DILocation(line: 948, column: 2, scope: !2869)
!2872 = !DILocation(line: 949, column: 9, scope: !2779)
!2873 = !DILocation(line: 949, column: 2, scope: !2779)
!2874 = distinct !DISubprogram(name: "pgsql_disconnect", scope: !81, file: !81, line: 952, type: !543, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2875 = !DILocalVariable(name: "pqdbconnection", scope: !2874, file: !81, line: 953, type: !55)
!2876 = !DILocation(line: 953, column: 10, scope: !2874)
!2877 = !DILocation(line: 953, column: 56, scope: !2874)
!2878 = !DILocation(line: 953, column: 36, scope: !2874)
!2879 = !DILocation(line: 954, column: 6, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2874, file: !81, line: 954, column: 6)
!2881 = !DILocation(line: 954, column: 6, scope: !2874)
!2882 = !DILocation(line: 955, column: 12, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2880, file: !81, line: 954, column: 22)
!2884 = !DILocation(line: 955, column: 3, scope: !2883)
!2885 = !DILocation(line: 956, column: 17, scope: !2883)
!2886 = !DILocation(line: 957, column: 2, scope: !2883)
!2887 = !DILocation(line: 958, column: 2, scope: !2874)
!2888 = !DILocation(line: 959, column: 1, scope: !2874)
!2889 = distinct !DISubprogram(name: "get_pqdb_connection", scope: !81, file: !81, line: 42, type: !2890, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !333)
!2890 = !DISubroutineType(types: !2891)
!2891 = !{!55}
!2892 = !DILocalVariable(name: "pud", scope: !2889, file: !81, line: 44, type: !2893)
!2893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2894, size: 64)
!2894 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !441, line: 157, baseType: !2895)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !441, line: 155, size: 8200, elements: !2896)
!2896 = !{!2897}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !2895, file: !441, line: 156, baseType: !573, size: 8200)
!2898 = !DILocation(line: 44, column: 25, scope: !2889)
!2899 = !DILocation(line: 44, column: 31, scope: !2889)
!2900 = !DILocalVariable(name: "pqdbconnection", scope: !2889, file: !81, line: 46, type: !55)
!2901 = !DILocation(line: 46, column: 10, scope: !2889)
!2902 = !DILocation(line: 46, column: 56, scope: !2889)
!2903 = !DILocation(line: 46, column: 36, scope: !2889)
!2904 = !DILocation(line: 47, column: 5, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2889, file: !81, line: 47, column: 5)
!2906 = !DILocation(line: 47, column: 5, scope: !2889)
!2907 = !DILocalVariable(name: "status", scope: !2908, file: !81, line: 48, type: !2909)
!2908 = distinct !DILexicalBlock(scope: !2905, file: !81, line: 47, column: 21)
!2909 = !DIDerivedType(tag: DW_TAG_typedef, name: "ConnStatusType", file: !6, line: 80, baseType: !28)
!2910 = !DILocation(line: 48, column: 18, scope: !2908)
!2911 = !DILocation(line: 48, column: 36, scope: !2908)
!2912 = !DILocation(line: 48, column: 27, scope: !2908)
!2913 = !DILocation(line: 49, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2908, file: !81, line: 49, column: 6)
!2915 = !DILocation(line: 49, column: 13, scope: !2914)
!2916 = !DILocation(line: 49, column: 6, scope: !2908)
!2917 = !DILocation(line: 50, column: 13, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !81, line: 49, column: 31)
!2919 = !DILocation(line: 50, column: 4, scope: !2918)
!2920 = !DILocation(line: 51, column: 19, scope: !2918)
!2921 = !DILocation(line: 52, column: 31, scope: !2918)
!2922 = !DILocation(line: 52, column: 47, scope: !2918)
!2923 = !DILocation(line: 52, column: 11, scope: !2918)
!2924 = !DILocation(line: 53, column: 3, scope: !2918)
!2925 = !DILocation(line: 54, column: 2, scope: !2908)
!2926 = !DILocation(line: 55, column: 6, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2889, file: !81, line: 55, column: 5)
!2928 = !DILocation(line: 55, column: 5, scope: !2889)
!2929 = !DILocalVariable(name: "errmsg", scope: !2930, file: !81, line: 56, type: !61)
!2930 = distinct !DILexicalBlock(scope: !2927, file: !81, line: 55, column: 22)
!2931 = !DILocation(line: 56, column: 9, scope: !2930)
!2932 = !DILocalVariable(name: "co", scope: !2930, file: !81, line: 57, type: !2933)
!2933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2934, size: 64)
!2934 = !DIDerivedType(tag: DW_TAG_typedef, name: "PQconninfoOption", file: !6, line: 238, baseType: !2935)
!2935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_PQconninfoOption", file: !6, line: 225, size: 448, elements: !2936)
!2936 = !{!2937, !2938, !2939, !2940, !2941, !2942, !2943}
!2937 = !DIDerivedType(tag: DW_TAG_member, name: "keyword", scope: !2935, file: !6, line: 227, baseType: !61, size: 64)
!2938 = !DIDerivedType(tag: DW_TAG_member, name: "envvar", scope: !2935, file: !6, line: 228, baseType: !61, size: 64, offset: 64)
!2939 = !DIDerivedType(tag: DW_TAG_member, name: "compiled", scope: !2935, file: !6, line: 229, baseType: !61, size: 64, offset: 128)
!2940 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !2935, file: !6, line: 230, baseType: !61, size: 64, offset: 192)
!2941 = !DIDerivedType(tag: DW_TAG_member, name: "label", scope: !2935, file: !6, line: 231, baseType: !61, size: 64, offset: 256)
!2942 = !DIDerivedType(tag: DW_TAG_member, name: "dispchar", scope: !2935, file: !6, line: 232, baseType: !61, size: 64, offset: 320)
!2943 = !DIDerivedType(tag: DW_TAG_member, name: "dispsize", scope: !2935, file: !6, line: 237, baseType: !46, size: 32, offset: 384)
!2944 = !DILocation(line: 57, column: 21, scope: !2930)
!2945 = !DILocation(line: 57, column: 42, scope: !2930)
!2946 = !DILocation(line: 57, column: 47, scope: !2930)
!2947 = !DILocation(line: 57, column: 26, scope: !2930)
!2948 = !DILocation(line: 58, column: 7, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2930, file: !81, line: 58, column: 6)
!2950 = !DILocation(line: 58, column: 6, scope: !2930)
!2951 = !DILocation(line: 59, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !81, line: 59, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2949, file: !81, line: 58, column: 11)
!2954 = !DILocation(line: 59, column: 7, scope: !2953)
!2955 = !DILocation(line: 60, column: 123, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2952, file: !81, line: 59, column: 15)
!2957 = !DILocation(line: 60, column: 128, scope: !2956)
!2958 = !DILocation(line: 60, column: 135, scope: !2956)
!2959 = !DILocation(line: 60, column: 5, scope: !2956)
!2960 = !DILocation(line: 61, column: 10, scope: !2956)
!2961 = !DILocation(line: 61, column: 5, scope: !2956)
!2962 = !DILocation(line: 62, column: 4, scope: !2956)
!2963 = !DILocation(line: 63, column: 128, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2952, file: !81, line: 62, column: 11)
!2965 = !DILocation(line: 63, column: 133, scope: !2964)
!2966 = !DILocation(line: 63, column: 5, scope: !2964)
!2967 = !DILocation(line: 65, column: 3, scope: !2953)
!2968 = !DILocation(line: 66, column: 19, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2949, file: !81, line: 65, column: 10)
!2970 = !DILocation(line: 66, column: 4, scope: !2969)
!2971 = !DILocation(line: 67, column: 7, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2969, file: !81, line: 67, column: 7)
!2973 = !DILocation(line: 67, column: 7, scope: !2969)
!2974 = !DILocation(line: 68, column: 10, scope: !2972)
!2975 = !DILocation(line: 68, column: 5, scope: !2972)
!2976 = !DILocation(line: 69, column: 33, scope: !2969)
!2977 = !DILocation(line: 69, column: 38, scope: !2969)
!2978 = !DILocation(line: 69, column: 21, scope: !2969)
!2979 = !DILocation(line: 69, column: 19, scope: !2969)
!2980 = !DILocation(line: 70, column: 8, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2969, file: !81, line: 70, column: 7)
!2982 = !DILocation(line: 70, column: 7, scope: !2969)
!2983 = !DILocation(line: 71, column: 103, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2981, file: !81, line: 70, column: 24)
!2985 = !DILocation(line: 71, column: 108, scope: !2984)
!2986 = !DILocation(line: 71, column: 5, scope: !2984)
!2987 = !DILocation(line: 72, column: 4, scope: !2984)
!2988 = !DILocalVariable(name: "status", scope: !2989, file: !81, line: 73, type: !2909)
!2989 = distinct !DILexicalBlock(scope: !2981, file: !81, line: 72, column: 11)
!2990 = !DILocation(line: 73, column: 20, scope: !2989)
!2991 = !DILocation(line: 73, column: 38, scope: !2989)
!2992 = !DILocation(line: 73, column: 29, scope: !2989)
!2993 = !DILocation(line: 74, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2989, file: !81, line: 74, column: 8)
!2995 = !DILocation(line: 74, column: 15, scope: !2994)
!2996 = !DILocation(line: 74, column: 8, scope: !2989)
!2997 = !DILocation(line: 75, column: 15, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2994, file: !81, line: 74, column: 33)
!2999 = !DILocation(line: 75, column: 6, scope: !2998)
!3000 = !DILocation(line: 76, column: 21, scope: !2998)
!3001 = !DILocation(line: 77, column: 104, scope: !2998)
!3002 = !DILocation(line: 77, column: 109, scope: !2998)
!3003 = !DILocation(line: 77, column: 6, scope: !2998)
!3004 = !DILocation(line: 78, column: 5, scope: !2998)
!3005 = !DILocation(line: 78, column: 16, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2994, file: !81, line: 78, column: 15)
!3007 = !DILocation(line: 78, column: 15, scope: !2994)
!3008 = !DILocation(line: 79, column: 82, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !3006, file: !81, line: 78, column: 47)
!3010 = !DILocation(line: 79, column: 87, scope: !3009)
!3011 = !DILocation(line: 79, column: 6, scope: !3009)
!3012 = !DILocation(line: 80, column: 37, scope: !3009)
!3013 = !DILocation(line: 81, column: 5, scope: !3009)
!3014 = !DILocation(line: 85, column: 6, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !2930, file: !81, line: 85, column: 6)
!3016 = !DILocation(line: 85, column: 6, scope: !2930)
!3017 = !DILocation(line: 86, column: 31, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !81, line: 85, column: 22)
!3019 = !DILocation(line: 86, column: 47, scope: !3018)
!3020 = !DILocation(line: 86, column: 11, scope: !3018)
!3021 = !DILocation(line: 87, column: 3, scope: !3018)
!3022 = !DILocation(line: 88, column: 2, scope: !2930)
!3023 = !DILocation(line: 89, column: 9, scope: !2889)
!3024 = !DILocation(line: 89, column: 2, scope: !2889)
