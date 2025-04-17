; ModuleID = '/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mongo.c'
source_filename = "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mongo.c"
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
%struct._bson_t = type { i32, i32, [120 x i8] }
%struct.bson_iter_t = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct._bson_value_t }
%struct._bson_value_t = type { i32, i32, %union.anon.0 }
%union.anon.0 = type { %struct.anon.5 }
%struct.anon.5 = type { ptr, i32, %struct.bson_oid_t }
%struct.bson_oid_t = type { [12 x i8] }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._MONGO = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [5 x i8] c"turn\00", align 1, !dbg !0
@MONGO_DEFAULT_DB = dso_local global ptr @.str, align 8, !dbg !7
@driver = internal constant %struct._turn_dbdriver_t { ptr @mongo_get_auth_secrets, ptr @mongo_get_user_key, ptr @mongo_set_user_key, ptr @mongo_del_user, ptr @mongo_list_users, ptr @mongo_list_secrets, ptr @mongo_del_secret, ptr @mongo_set_secret, ptr @mongo_add_origin, ptr @mongo_del_origin, ptr @mongo_list_origins, ptr @mongo_set_realm_option_one, ptr @mongo_list_realm_options, ptr @mongo_auth_ping, ptr @mongo_get_ip_list, ptr @mongo_set_permission_ip, ptr @mongo_reread_realms, ptr @mongo_set_oauth_key, ptr @mongo_get_oauth_key, ptr @mongo_del_oauth_key, ptr @mongo_list_oauth_keys, ptr @mongo_get_admin_user, ptr @mongo_set_admin_user, ptr @mongo_del_admin_user, ptr @mongo_list_admin_users, ptr @mongo_disconnect }, align 8, !dbg !144
@.str.1 = private unnamed_addr constant [12 x i8] c"turn_secret\00", align 1, !dbg !352
@.str.2 = private unnamed_addr constant [6 x i8] c"realm\00", align 1, !dbg !357
@.str.3 = private unnamed_addr constant [6 x i8] c"value\00", align 1, !dbg !362
@.str.4 = private unnamed_addr constant [49 x i8] c"Error querying MongoDB collection 'turn_secret'\0A\00", align 1, !dbg !364
@.str.5 = private unnamed_addr constant [39 x i8] c"Error getting a connection to MongoDB\0A\00", align 1, !dbg !369
@.str.6 = private unnamed_addr constant [42 x i8] c"Error retrieving MongoDB collection '%s'\0A\00", align 1, !dbg !374
@connection_key = external global i32, align 4
@.str.7 = private unnamed_addr constant [68 x i8] c"Cannot open parse MongoDB URI <%s>, connection string format error\0A\00", align 1, !dbg !379
@.str.8 = private unnamed_addr constant [38 x i8] c"Cannot initialize MongoDB connection\0A\00", align 1, !dbg !384
@.str.9 = private unnamed_addr constant [25 x i8] c"Opened MongoDB URI <%s>\0A\00", align 1, !dbg !389
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !394
@.str.11 = private unnamed_addr constant [13 x i8] c"turnusers_lt\00", align 1, !dbg !397
@.str.12 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !402
@.str.13 = private unnamed_addr constant [8 x i8] c"hmackey\00", align 1, !dbg !404
@.str.14 = private unnamed_addr constant [50 x i8] c"Error querying MongoDB collection 'turnusers_lt'\0A\00", align 1, !dbg !407
@.str.15 = private unnamed_addr constant [58 x i8] c"Wrong key format: string length=%d (must be %d): user %s\0A\00", align 1, !dbg !412
@.str.16 = private unnamed_addr constant [24 x i8] c"Wrong key: %s, user %s\0A\00", align 1, !dbg !417
@.str.17 = private unnamed_addr constant [47 x i8] c"Error inserting/updating user key information\0A\00", align 1, !dbg !422
@.str.18 = private unnamed_addr constant [37 x i8] c"Error deleting user key information\0A\00", align 1, !dbg !427
@.str.19 = private unnamed_addr constant [9 x i8] c"$orderby\00", align 1, !dbg !432
@.str.20 = private unnamed_addr constant [7 x i8] c"$query\00", align 1, !dbg !437
@.str.21 = private unnamed_addr constant [40 x i8] c"Error querying MongoDB collection '%s'\0A\00", align 1, !dbg !442
@.str.22 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !447
@.str.23 = private unnamed_addr constant [8 x i8] c"%s[%s]\0A\00", align 1, !dbg !452
@.str.24 = private unnamed_addr constant [49 x i8] c"Error inserting/updating secret key information\0A\00", align 1, !dbg !454
@.str.25 = private unnamed_addr constant [10 x i8] c"$addToSet\00", align 1, !dbg !456
@.str.26 = private unnamed_addr constant [7 x i8] c"origin\00", align 1, !dbg !461
@.str.27 = private unnamed_addr constant [51 x i8] c"Error inserting/updating realm origin information\0A\00", align 1, !dbg !463
@.str.28 = private unnamed_addr constant [6 x i8] c"$pull\00", align 1, !dbg !468
@.str.29 = private unnamed_addr constant [35 x i8] c"Error deleting origin information\0A\00", align 1, !dbg !470
@.str.30 = private unnamed_addr constant [43 x i8] c"Error querying MongoDB collection 'realm'\0A\00", align 1, !dbg !475
@.str.31 = private unnamed_addr constant [12 x i8] c"%s ==>> %s\0A\00", align 1, !dbg !480
@.str.32 = private unnamed_addr constant [9 x i8] c"options.\00", align 1, !dbg !482
@.str.33 = private unnamed_addr constant [5 x i8] c"$set\00", align 1, !dbg !484
@.str.34 = private unnamed_addr constant [7 x i8] c"$unset\00", align 1, !dbg !486
@.str.35 = private unnamed_addr constant [8 x i8] c"options\00", align 1, !dbg !488
@.str.36 = private unnamed_addr constant [11 x i8] c"%s[%s]=%d\0A\00", align 1, !dbg !490
@.str.37 = private unnamed_addr constant [11 x i8] c"%s_peer_ip\00", align 1, !dbg !495
@.str.38 = private unnamed_addr constant [43 x i8] c"Error inserting permission ip information\0A\00", align 1, !dbg !497
@turn_params = external global %struct._turn_params_, align 8
@.str.39 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !499
@.str.40 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !501
@.str.41 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !503
@.str.42 = private unnamed_addr constant [26 x i8] c"Unknown realm option: %s\0A\00", align 1, !dbg !505
@.str.43 = private unnamed_addr constant [10 x i8] c"oauth_key\00", align 1, !dbg !510
@.str.44 = private unnamed_addr constant [4 x i8] c"kid\00", align 1, !dbg !512
@.str.45 = private unnamed_addr constant [10 x i8] c"as_rs_alg\00", align 1, !dbg !514
@.str.46 = private unnamed_addr constant [8 x i8] c"ikm_key\00", align 1, !dbg !516
@.str.47 = private unnamed_addr constant [10 x i8] c"timestamp\00", align 1, !dbg !518
@.str.48 = private unnamed_addr constant [9 x i8] c"lifetime\00", align 1, !dbg !520
@.str.49 = private unnamed_addr constant [48 x i8] c"Error inserting/updating oauth key information\0A\00", align 1, !dbg !522
@.str.50 = private unnamed_addr constant [47 x i8] c"Error querying MongoDB collection 'oauth_key'\0A\00", align 1, !dbg !527
@.str.51 = private unnamed_addr constant [38 x i8] c"Error deleting oauth key information\0A\00", align 1, !dbg !529
@.str.52 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1, !dbg !531
@.str.53 = private unnamed_addr constant [4 x i8] c"%lu\00", align 1, !dbg !533
@.str.54 = private unnamed_addr constant [76 x i8] c"  kid=%s, ikm_key=%s, timestamp=%llu, lifetime=%lu, as_rs_alg=%s, realm=%s\0A\00", align 1, !dbg !535
@.str.55 = private unnamed_addr constant [11 x i8] c"admin_user\00", align 1, !dbg !540
@.str.56 = private unnamed_addr constant [9 x i8] c"password\00", align 1, !dbg !542
@.str.57 = private unnamed_addr constant [48 x i8] c"Error querying MongoDB collection 'admin_user'\0A\00", align 1, !dbg !544
@.str.58 = private unnamed_addr constant [49 x i8] c"Error inserting/updating admin user information\0A\00", align 1, !dbg !546
@.str.59 = private unnamed_addr constant [39 x i8] c"Error deleting admin user information\0A\00", align 1, !dbg !548
@.str.60 = private unnamed_addr constant [32 x i8] c"MongoDB connection was closed.\0A\00", align 1, !dbg !550

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_mongo_dbdriver() #0 !dbg !563 {
  ret ptr @driver, !dbg !568
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !569 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca %struct._bson_t, align 128
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bson_iter_t, align 128
  %14 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !570, metadata !DIExpression()), !dbg !571
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !572, metadata !DIExpression()), !dbg !573
  call void @llvm.dbg.declare(metadata ptr %6, metadata !574, metadata !DIExpression()), !dbg !579
  %15 = call ptr @mongo_get_collection(ptr noundef @.str.1), !dbg !580
  store ptr %15, ptr %6, align 8, !dbg !579
  %16 = load ptr, ptr %6, align 8, !dbg !581
  %17 = icmp ne ptr %16, null, !dbg !581
  br i1 %17, label %19, label %18, !dbg !583

18:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !584
  br label %53, !dbg !584

19:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !585, metadata !DIExpression()), !dbg !595
  call void @bson_init(ptr noundef %7), !dbg !596
  %20 = load ptr, ptr %5, align 8, !dbg !597
  %21 = load ptr, ptr %5, align 8, !dbg !597
  %22 = call i64 @strlen(ptr noundef %21) #7, !dbg !597
  %23 = trunc i64 %22 to i32, !dbg !597
  %24 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.2, i32 noundef 5, ptr noundef %20, i32 noundef %23), !dbg !597
  call void @llvm.dbg.declare(metadata ptr %8, metadata !598, metadata !DIExpression()), !dbg !599
  call void @bson_init(ptr noundef %8), !dbg !600
  %25 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.3, i32 noundef 5, i32 noundef 1), !dbg !601
  call void @llvm.dbg.declare(metadata ptr %9, metadata !602, metadata !DIExpression()), !dbg !607
  %26 = load ptr, ptr %6, align 8, !dbg !608
  %27 = call ptr @mongoc_collection_find(ptr noundef %26, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %7, ptr noundef %8, ptr noundef null), !dbg !609
  store ptr %27, ptr %9, align 8, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %10, metadata !611, metadata !DIExpression()), !dbg !612
  store i32 -1, ptr %10, align 4, !dbg !612
  %28 = load ptr, ptr %9, align 8, !dbg !613
  %29 = icmp ne ptr %28, null, !dbg !613
  br i1 %29, label %31, label %30, !dbg !615

30:                                               ; preds = %19
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4), !dbg !616
  br label %50, !dbg !618

31:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %11, metadata !619, metadata !DIExpression()), !dbg !623
  call void @llvm.dbg.declare(metadata ptr %12, metadata !624, metadata !DIExpression()), !dbg !625
  call void @llvm.dbg.declare(metadata ptr %13, metadata !626, metadata !DIExpression()), !dbg !724
  call void @llvm.dbg.declare(metadata ptr %14, metadata !725, metadata !DIExpression()), !dbg !726
  br label %32, !dbg !727

32:                                               ; preds = %47, %31
  %33 = load ptr, ptr %9, align 8, !dbg !728
  %34 = call zeroext i1 @mongoc_cursor_next(ptr noundef %33, ptr noundef %11), !dbg !729
  br i1 %34, label %35, label %48, !dbg !727

35:                                               ; preds = %32
  %36 = load ptr, ptr %11, align 8, !dbg !730
  %37 = call zeroext i1 @bson_iter_init(ptr noundef %13, ptr noundef %36), !dbg !733
  br i1 %37, label %38, label %47, !dbg !734

38:                                               ; preds = %35
  %39 = call zeroext i1 @bson_iter_find(ptr noundef %13, ptr noundef @.str.3), !dbg !735
  br i1 %39, label %40, label %47, !dbg !736

40:                                               ; preds = %38
  %41 = call i32 @bson_iter_type(ptr noundef %13), !dbg !737
  %42 = icmp eq i32 %41, 2, !dbg !737
  br i1 %42, label %43, label %47, !dbg !738

43:                                               ; preds = %40
  %44 = call ptr @bson_iter_utf8(ptr noundef %13, ptr noundef %12), !dbg !739
  store ptr %44, ptr %14, align 8, !dbg !741
  %45 = load ptr, ptr %4, align 8, !dbg !742
  %46 = load ptr, ptr %14, align 8, !dbg !743
  call void @add_to_secrets_list(ptr noundef %45, ptr noundef %46), !dbg !744
  br label %47, !dbg !745

47:                                               ; preds = %43, %40, %38, %35
  br label %32, !dbg !727, !llvm.loop !746

48:                                               ; preds = %32
  %49 = load ptr, ptr %9, align 8, !dbg !749
  call void @mongoc_cursor_destroy(ptr noundef %49), !dbg !750
  store i32 0, ptr %10, align 4, !dbg !751
  br label %50

50:                                               ; preds = %48, %30
  %51 = load ptr, ptr %6, align 8, !dbg !752
  call void @mongoc_collection_destroy(ptr noundef %51), !dbg !753
  call void @bson_destroy(ptr noundef %7), !dbg !754
  call void @bson_destroy(ptr noundef %8), !dbg !755
  %52 = load i32, ptr %10, align 4, !dbg !756
  store i32 %52, ptr %3, align 4, !dbg !757
  br label %53, !dbg !757

53:                                               ; preds = %50, %18
  %54 = load i32, ptr %3, align 4, !dbg !758
  ret i32 %54, !dbg !758
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_get_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !759 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bson_iter_t, align 128
  %16 = alloca ptr, align 8
  %17 = alloca i64, align 8
  %18 = alloca [129 x i8], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !760, metadata !DIExpression()), !dbg !761
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !762, metadata !DIExpression()), !dbg !763
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !764, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata ptr %8, metadata !766, metadata !DIExpression()), !dbg !767
  %19 = call ptr @mongo_get_collection(ptr noundef @.str.11), !dbg !768
  store ptr %19, ptr %8, align 8, !dbg !767
  %20 = load ptr, ptr %8, align 8, !dbg !769
  %21 = icmp ne ptr %20, null, !dbg !769
  br i1 %21, label %23, label %22, !dbg !771

22:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !772
  br label %88, !dbg !772

23:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !773, metadata !DIExpression()), !dbg !774
  call void @bson_init(ptr noundef %9), !dbg !775
  %24 = load ptr, ptr %5, align 8, !dbg !776
  %25 = load ptr, ptr %5, align 8, !dbg !776
  %26 = call i64 @strlen(ptr noundef %25) #7, !dbg !776
  %27 = trunc i64 %26 to i32, !dbg !776
  %28 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.12, i32 noundef 4, ptr noundef %24, i32 noundef %27), !dbg !776
  %29 = load ptr, ptr %6, align 8, !dbg !777
  %30 = load ptr, ptr %6, align 8, !dbg !777
  %31 = call i64 @strlen(ptr noundef %30) #7, !dbg !777
  %32 = trunc i64 %31 to i32, !dbg !777
  %33 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.2, i32 noundef 5, ptr noundef %29, i32 noundef %32), !dbg !777
  call void @llvm.dbg.declare(metadata ptr %10, metadata !778, metadata !DIExpression()), !dbg !779
  call void @bson_init(ptr noundef %10), !dbg !780
  %34 = call zeroext i1 @bson_append_int32(ptr noundef %10, ptr noundef @.str.13, i32 noundef 7, i32 noundef 1), !dbg !781
  call void @llvm.dbg.declare(metadata ptr %11, metadata !782, metadata !DIExpression()), !dbg !783
  %35 = load ptr, ptr %8, align 8, !dbg !784
  %36 = call ptr @mongoc_collection_find(ptr noundef %35, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %9, ptr noundef %10, ptr noundef null), !dbg !785
  store ptr %36, ptr %11, align 8, !dbg !786
  call void @llvm.dbg.declare(metadata ptr %12, metadata !787, metadata !DIExpression()), !dbg !788
  store i32 -1, ptr %12, align 4, !dbg !788
  %37 = load ptr, ptr %11, align 8, !dbg !789
  %38 = icmp ne ptr %37, null, !dbg !789
  br i1 %38, label %40, label %39, !dbg !791

39:                                               ; preds = %23
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.14), !dbg !792
  br label %85, !dbg !794

40:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %13, metadata !795, metadata !DIExpression()), !dbg !797
  call void @llvm.dbg.declare(metadata ptr %14, metadata !798, metadata !DIExpression()), !dbg !799
  call void @llvm.dbg.declare(metadata ptr %15, metadata !800, metadata !DIExpression()), !dbg !801
  call void @llvm.dbg.declare(metadata ptr %16, metadata !802, metadata !DIExpression()), !dbg !803
  %41 = load ptr, ptr %11, align 8, !dbg !804
  %42 = call zeroext i1 @mongoc_cursor_next(ptr noundef %41, ptr noundef %13), !dbg !806
  br i1 %42, label %43, label %83, !dbg !807

43:                                               ; preds = %40
  %44 = load ptr, ptr %13, align 8, !dbg !808
  %45 = call zeroext i1 @bson_iter_init(ptr noundef %15, ptr noundef %44), !dbg !811
  br i1 %45, label %46, label %82, !dbg !812

46:                                               ; preds = %43
  %47 = call zeroext i1 @bson_iter_find(ptr noundef %15, ptr noundef @.str.13), !dbg !813
  br i1 %47, label %48, label %82, !dbg !814

48:                                               ; preds = %46
  %49 = call i32 @bson_iter_type(ptr noundef %15), !dbg !815
  %50 = icmp eq i32 %49, 2, !dbg !815
  br i1 %50, label %51, label %82, !dbg !816

51:                                               ; preds = %48
  %52 = call ptr @bson_iter_utf8(ptr noundef %15, ptr noundef %14), !dbg !817
  store ptr %52, ptr %16, align 8, !dbg !819
  call void @llvm.dbg.declare(metadata ptr %17, metadata !820, metadata !DIExpression()), !dbg !821
  %53 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !822
  %54 = mul i64 %53, 2, !dbg !823
  store i64 %54, ptr %17, align 8, !dbg !821
  %55 = load i32, ptr %14, align 4, !dbg !824
  %56 = zext i32 %55 to i64, !dbg !824
  %57 = load i64, ptr %17, align 8, !dbg !826
  %58 = icmp ult i64 %56, %57, !dbg !827
  br i1 %58, label %59, label %64, !dbg !828

59:                                               ; preds = %51
  %60 = load i32, ptr %14, align 4, !dbg !829
  %61 = load i64, ptr %17, align 8, !dbg !831
  %62 = trunc i64 %61 to i32, !dbg !832
  %63 = load ptr, ptr %5, align 8, !dbg !833
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.15, i32 noundef %60, i32 noundef %62, ptr noundef %63), !dbg !834
  br label %81, !dbg !835

64:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %18, metadata !836, metadata !DIExpression()), !dbg !838
  %65 = load ptr, ptr %16, align 8, !dbg !839
  %66 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !840
  %67 = load i64, ptr %17, align 8, !dbg !841
  call void @bcopy(ptr noundef %65, ptr noundef %66, i64 noundef %67) #8, !dbg !842
  %68 = load i64, ptr %17, align 8, !dbg !843
  %69 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 %68, !dbg !844
  store i8 0, ptr %69, align 1, !dbg !845
  %70 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !846
  %71 = load ptr, ptr %7, align 8, !dbg !848
  %72 = load i64, ptr %17, align 8, !dbg !849
  %73 = udiv i64 %72, 2, !dbg !850
  %74 = call i32 @convert_string_key_to_binary(ptr noundef %70, ptr noundef %71, i64 noundef %73), !dbg !851
  %75 = icmp slt i32 %74, 0, !dbg !852
  br i1 %75, label %76, label %79, !dbg !853

76:                                               ; preds = %64
  %77 = getelementptr inbounds [129 x i8], ptr %18, i64 0, i64 0, !dbg !854
  %78 = load ptr, ptr %5, align 8, !dbg !856
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.16, ptr noundef %77, ptr noundef %78), !dbg !857
  br label %80, !dbg !858

79:                                               ; preds = %64
  store i32 0, ptr %12, align 4, !dbg !859
  br label %80

80:                                               ; preds = %79, %76
  br label %81

81:                                               ; preds = %80, %59
  br label %82, !dbg !861

82:                                               ; preds = %81, %48, %46, %43
  br label %83, !dbg !862

83:                                               ; preds = %82, %40
  %84 = load ptr, ptr %11, align 8, !dbg !863
  call void @mongoc_cursor_destroy(ptr noundef %84), !dbg !864
  br label %85

85:                                               ; preds = %83, %39
  %86 = load ptr, ptr %8, align 8, !dbg !865
  call void @mongoc_collection_destroy(ptr noundef %86), !dbg !866
  call void @bson_destroy(ptr noundef %9), !dbg !867
  call void @bson_destroy(ptr noundef %10), !dbg !868
  %87 = load i32, ptr %12, align 4, !dbg !869
  store i32 %87, ptr %4, align 4, !dbg !870
  br label %88, !dbg !870

88:                                               ; preds = %85, %22
  %89 = load i32, ptr %4, align 4, !dbg !871
  ret i32 %89, !dbg !871
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_user_key(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !872 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !873, metadata !DIExpression()), !dbg !874
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !875, metadata !DIExpression()), !dbg !876
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata ptr %8, metadata !879, metadata !DIExpression()), !dbg !880
  %12 = call ptr @mongo_get_collection(ptr noundef @.str.11), !dbg !881
  store ptr %12, ptr %8, align 8, !dbg !880
  %13 = load ptr, ptr %8, align 8, !dbg !882
  %14 = icmp ne ptr %13, null, !dbg !882
  br i1 %14, label %16, label %15, !dbg !884

15:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !885
  br label %49, !dbg !885

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !886, metadata !DIExpression()), !dbg !887
  call void @bson_init(ptr noundef %9), !dbg !888
  %17 = load ptr, ptr %5, align 8, !dbg !889
  %18 = load ptr, ptr %5, align 8, !dbg !889
  %19 = call i64 @strlen(ptr noundef %18) #7, !dbg !889
  %20 = trunc i64 %19 to i32, !dbg !889
  %21 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.12, i32 noundef 4, ptr noundef %17, i32 noundef %20), !dbg !889
  %22 = load ptr, ptr %6, align 8, !dbg !890
  %23 = load ptr, ptr %6, align 8, !dbg !890
  %24 = call i64 @strlen(ptr noundef %23) #7, !dbg !890
  %25 = trunc i64 %24 to i32, !dbg !890
  %26 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.2, i32 noundef 5, ptr noundef %22, i32 noundef %25), !dbg !890
  call void @llvm.dbg.declare(metadata ptr %10, metadata !891, metadata !DIExpression()), !dbg !892
  call void @bson_init(ptr noundef %10), !dbg !893
  %27 = load ptr, ptr %5, align 8, !dbg !894
  %28 = load ptr, ptr %5, align 8, !dbg !894
  %29 = call i64 @strlen(ptr noundef %28) #7, !dbg !894
  %30 = trunc i64 %29 to i32, !dbg !894
  %31 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.12, i32 noundef 4, ptr noundef %27, i32 noundef %30), !dbg !894
  %32 = load ptr, ptr %6, align 8, !dbg !895
  %33 = load ptr, ptr %6, align 8, !dbg !895
  %34 = call i64 @strlen(ptr noundef %33) #7, !dbg !895
  %35 = trunc i64 %34 to i32, !dbg !895
  %36 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.2, i32 noundef 5, ptr noundef %32, i32 noundef %35), !dbg !895
  %37 = load ptr, ptr %7, align 8, !dbg !896
  %38 = load ptr, ptr %7, align 8, !dbg !896
  %39 = call i64 @strlen(ptr noundef %38) #7, !dbg !896
  %40 = trunc i64 %39 to i32, !dbg !896
  %41 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.13, i32 noundef 7, ptr noundef %37, i32 noundef %40), !dbg !896
  call void @llvm.dbg.declare(metadata ptr %11, metadata !897, metadata !DIExpression()), !dbg !898
  store i32 -1, ptr %11, align 4, !dbg !898
  %42 = load ptr, ptr %8, align 8, !dbg !899
  %43 = call zeroext i1 @mongoc_collection_update(ptr noundef %42, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef null), !dbg !901
  br i1 %43, label %45, label %44, !dbg !902

44:                                               ; preds = %16
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.17), !dbg !903
  br label %46, !dbg !905

45:                                               ; preds = %16
  store i32 0, ptr %11, align 4, !dbg !906
  br label %46

46:                                               ; preds = %45, %44
  %47 = load ptr, ptr %8, align 8, !dbg !908
  call void @mongoc_collection_destroy(ptr noundef %47), !dbg !909
  call void @bson_destroy(ptr noundef %10), !dbg !910
  call void @bson_destroy(ptr noundef %9), !dbg !911
  %48 = load i32, ptr %11, align 4, !dbg !912
  store i32 %48, ptr %4, align 4, !dbg !913
  br label %49, !dbg !913

49:                                               ; preds = %46, %15
  %50 = load i32, ptr %4, align 4, !dbg !914
  ret i32 %50, !dbg !914
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_del_user(ptr noundef %0, ptr noundef %1) #0 !dbg !915 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !916, metadata !DIExpression()), !dbg !917
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !918, metadata !DIExpression()), !dbg !919
  call void @llvm.dbg.declare(metadata ptr %6, metadata !920, metadata !DIExpression()), !dbg !921
  %9 = call ptr @mongo_get_collection(ptr noundef @.str.11), !dbg !922
  store ptr %9, ptr %6, align 8, !dbg !921
  %10 = load ptr, ptr %6, align 8, !dbg !923
  %11 = icmp ne ptr %10, null, !dbg !923
  br i1 %11, label %13, label %12, !dbg !925

12:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !926
  br label %31, !dbg !926

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !927, metadata !DIExpression()), !dbg !928
  call void @bson_init(ptr noundef %7), !dbg !929
  %14 = load ptr, ptr %4, align 8, !dbg !930
  %15 = load ptr, ptr %4, align 8, !dbg !930
  %16 = call i64 @strlen(ptr noundef %15) #7, !dbg !930
  %17 = trunc i64 %16 to i32, !dbg !930
  %18 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.12, i32 noundef 4, ptr noundef %14, i32 noundef %17), !dbg !930
  %19 = load ptr, ptr %5, align 8, !dbg !931
  %20 = load ptr, ptr %5, align 8, !dbg !931
  %21 = call i64 @strlen(ptr noundef %20) #7, !dbg !931
  %22 = trunc i64 %21 to i32, !dbg !931
  %23 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.2, i32 noundef 5, ptr noundef %19, i32 noundef %22), !dbg !931
  call void @llvm.dbg.declare(metadata ptr %8, metadata !932, metadata !DIExpression()), !dbg !933
  store i32 -1, ptr %8, align 4, !dbg !933
  %24 = load ptr, ptr %6, align 8, !dbg !934
  %25 = call zeroext i1 @mongoc_collection_delete(ptr noundef %24, i32 noundef 1, ptr noundef %7, ptr noundef null, ptr noundef null), !dbg !936
  br i1 %25, label %27, label %26, !dbg !937

26:                                               ; preds = %13
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18), !dbg !938
  br label %28, !dbg !940

27:                                               ; preds = %13
  store i32 0, ptr %8, align 4, !dbg !941
  br label %28

28:                                               ; preds = %27, %26
  %29 = load ptr, ptr %6, align 8, !dbg !943
  call void @mongoc_collection_destroy(ptr noundef %29), !dbg !944
  call void @bson_destroy(ptr noundef %7), !dbg !945
  %30 = load i32, ptr %8, align 4, !dbg !946
  store i32 %30, ptr %3, align 4, !dbg !947
  br label %31, !dbg !947

31:                                               ; preds = %28, %12
  %32 = load i32, ptr %3, align 4, !dbg !948
  ret i32 %32, !dbg !948
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_users(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !949 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [128 x i8], align 16
  %11 = alloca %struct._bson_t, align 128
  %12 = alloca %struct._bson_t, align 128
  %13 = alloca %struct._bson_t, align 128
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.bson_iter_t, align 128
  %19 = alloca %struct.bson_iter_t, align 128
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !950, metadata !DIExpression()), !dbg !951
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !952, metadata !DIExpression()), !dbg !953
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !954, metadata !DIExpression()), !dbg !955
  call void @llvm.dbg.declare(metadata ptr %8, metadata !956, metadata !DIExpression()), !dbg !957
  store ptr @.str.11, ptr %8, align 8, !dbg !957
  call void @llvm.dbg.declare(metadata ptr %9, metadata !958, metadata !DIExpression()), !dbg !959
  %22 = load ptr, ptr %8, align 8, !dbg !960
  %23 = call ptr @mongo_get_collection(ptr noundef %22), !dbg !961
  store ptr %23, ptr %9, align 8, !dbg !959
  call void @llvm.dbg.declare(metadata ptr %10, metadata !962, metadata !DIExpression()), !dbg !964
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 128, i1 false), !dbg !964
  %24 = load ptr, ptr %5, align 8, !dbg !965
  %25 = icmp ne ptr %24, null, !dbg !965
  br i1 %25, label %28, label %26, !dbg !967

26:                                               ; preds = %3
  %27 = getelementptr inbounds [128 x i8], ptr %10, i64 0, i64 0, !dbg !968
  store ptr %27, ptr %5, align 8, !dbg !969
  br label %28, !dbg !970

28:                                               ; preds = %26, %3
  %29 = load ptr, ptr %9, align 8, !dbg !971
  %30 = icmp ne ptr %29, null, !dbg !971
  br i1 %30, label %32, label %31, !dbg !973

31:                                               ; preds = %28
  store i32 -1, ptr %4, align 4, !dbg !974
  br label %124, !dbg !974

32:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %11, metadata !975, metadata !DIExpression()), !dbg !976
  call void @llvm.dbg.declare(metadata ptr %12, metadata !977, metadata !DIExpression()), !dbg !978
  call void @bson_init(ptr noundef %11), !dbg !979
  %33 = call zeroext i1 @bson_append_document_begin(ptr noundef %11, ptr noundef @.str.19, i32 noundef -1, ptr noundef %12), !dbg !980
  %34 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.2, i32 noundef -1, i32 noundef 1), !dbg !981
  %35 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.12, i32 noundef -1, i32 noundef 1), !dbg !982
  %36 = call zeroext i1 @bson_append_document_end(ptr noundef %11, ptr noundef %12), !dbg !983
  %37 = call zeroext i1 @bson_append_document_begin(ptr noundef %11, ptr noundef @.str.20, i32 noundef -1, ptr noundef %12), !dbg !984
  %38 = load ptr, ptr %5, align 8, !dbg !985
  %39 = icmp ne ptr %38, null, !dbg !985
  br i1 %39, label %40, label %52, !dbg !987

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !dbg !988
  %42 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !988
  %43 = load i8, ptr %42, align 1, !dbg !988
  %44 = zext i8 %43 to i32, !dbg !988
  %45 = icmp ne i32 %44, 0, !dbg !988
  br i1 %45, label %46, label %52, !dbg !989

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !dbg !990
  %48 = load ptr, ptr %5, align 8, !dbg !990
  %49 = call i64 @strlen(ptr noundef %48) #7, !dbg !990
  %50 = trunc i64 %49 to i32, !dbg !990
  %51 = call zeroext i1 @bson_append_utf8(ptr noundef %12, ptr noundef @.str.2, i32 noundef 5, ptr noundef %47, i32 noundef %50), !dbg !990
  br label %52, !dbg !992

52:                                               ; preds = %46, %40, %32
  %53 = call zeroext i1 @bson_append_document_end(ptr noundef %11, ptr noundef %12), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %13, metadata !994, metadata !DIExpression()), !dbg !995
  call void @bson_init(ptr noundef %13), !dbg !996
  %54 = call zeroext i1 @bson_append_int32(ptr noundef %13, ptr noundef @.str.12, i32 noundef 4, i32 noundef 1), !dbg !997
  %55 = call zeroext i1 @bson_append_int32(ptr noundef %13, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !998
  call void @llvm.dbg.declare(metadata ptr %14, metadata !999, metadata !DIExpression()), !dbg !1000
  %56 = load ptr, ptr %9, align 8, !dbg !1001
  %57 = call ptr @mongoc_collection_find(ptr noundef %56, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %11, ptr noundef %13, ptr noundef null), !dbg !1002
  store ptr %57, ptr %14, align 8, !dbg !1003
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1004, metadata !DIExpression()), !dbg !1005
  store i32 -1, ptr %15, align 4, !dbg !1005
  %58 = load ptr, ptr %14, align 8, !dbg !1006
  %59 = icmp ne ptr %58, null, !dbg !1006
  br i1 %59, label %62, label %60, !dbg !1008

60:                                               ; preds = %52
  %61 = load ptr, ptr %8, align 8, !dbg !1009
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.21, ptr noundef %61), !dbg !1011
  br label %121, !dbg !1012

62:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1013, metadata !DIExpression()), !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1016, metadata !DIExpression()), !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1018, metadata !DIExpression()), !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1020, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1022, metadata !DIExpression()), !dbg !1023
  br label %63, !dbg !1024

63:                                               ; preds = %118, %62
  %64 = load ptr, ptr %14, align 8, !dbg !1025
  %65 = call zeroext i1 @mongoc_cursor_next(ptr noundef %64, ptr noundef %16), !dbg !1026
  br i1 %65, label %66, label %119, !dbg !1024

66:                                               ; preds = %63
  %67 = load ptr, ptr %16, align 8, !dbg !1027
  %68 = call zeroext i1 @bson_iter_init(ptr noundef %18, ptr noundef %67), !dbg !1030
  br i1 %68, label %69, label %118, !dbg !1031

69:                                               ; preds = %66
  %70 = call zeroext i1 @bson_iter_find(ptr noundef %18, ptr noundef @.str.12), !dbg !1032
  br i1 %70, label %71, label %118, !dbg !1033

71:                                               ; preds = %69
  %72 = call i32 @bson_iter_type(ptr noundef %18), !dbg !1034
  %73 = icmp eq i32 %72, 2, !dbg !1034
  br i1 %73, label %74, label %118, !dbg !1035

74:                                               ; preds = %71
  %75 = call ptr @bson_iter_utf8(ptr noundef %18, ptr noundef %17), !dbg !1036
  store ptr %75, ptr %20, align 8, !dbg !1038
  %76 = load i32, ptr %17, align 4, !dbg !1039
  %77 = icmp ne i32 %76, 0, !dbg !1039
  br i1 %77, label %78, label %117, !dbg !1041

78:                                               ; preds = %74
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1042, metadata !DIExpression()), !dbg !1044
  store ptr @.str.22, ptr %21, align 8, !dbg !1044
  %79 = load ptr, ptr %16, align 8, !dbg !1045
  %80 = call zeroext i1 @bson_iter_init(ptr noundef %19, ptr noundef %79), !dbg !1047
  br i1 %80, label %81, label %88, !dbg !1048

81:                                               ; preds = %78
  %82 = call zeroext i1 @bson_iter_find(ptr noundef %19, ptr noundef @.str.2), !dbg !1049
  br i1 %82, label %83, label %88, !dbg !1050

83:                                               ; preds = %81
  %84 = call i32 @bson_iter_type(ptr noundef %19), !dbg !1051
  %85 = icmp eq i32 %84, 2, !dbg !1051
  br i1 %85, label %86, label %88, !dbg !1052

86:                                               ; preds = %83
  %87 = call ptr @bson_iter_utf8(ptr noundef %19, ptr noundef %17), !dbg !1053
  store ptr %87, ptr %21, align 8, !dbg !1055
  br label %88, !dbg !1056

88:                                               ; preds = %86, %83, %81, %78
  %89 = load ptr, ptr %6, align 8, !dbg !1057
  %90 = icmp ne ptr %89, null, !dbg !1057
  br i1 %90, label %91, label %112, !dbg !1059

91:                                               ; preds = %88
  %92 = load ptr, ptr %6, align 8, !dbg !1060
  %93 = load ptr, ptr %20, align 8, !dbg !1062
  call void @add_to_secrets_list(ptr noundef %92, ptr noundef %93), !dbg !1063
  %94 = load ptr, ptr %7, align 8, !dbg !1064
  %95 = icmp ne ptr %94, null, !dbg !1064
  br i1 %95, label %96, label %111, !dbg !1066

96:                                               ; preds = %91
  %97 = load ptr, ptr %21, align 8, !dbg !1067
  %98 = icmp ne ptr %97, null, !dbg !1067
  br i1 %98, label %99, label %107, !dbg !1070

99:                                               ; preds = %96
  %100 = load ptr, ptr %21, align 8, !dbg !1071
  %101 = load i8, ptr %100, align 1, !dbg !1072
  %102 = sext i8 %101 to i32, !dbg !1072
  %103 = icmp ne i32 %102, 0, !dbg !1072
  br i1 %103, label %104, label %107, !dbg !1073

104:                                              ; preds = %99
  %105 = load ptr, ptr %7, align 8, !dbg !1074
  %106 = load ptr, ptr %21, align 8, !dbg !1076
  call void @add_to_secrets_list(ptr noundef %105, ptr noundef %106), !dbg !1077
  br label %110, !dbg !1078

107:                                              ; preds = %99, %96
  %108 = load ptr, ptr %7, align 8, !dbg !1079
  %109 = load ptr, ptr %5, align 8, !dbg !1081
  call void @add_to_secrets_list(ptr noundef %108, ptr noundef %109), !dbg !1082
  br label %110

110:                                              ; preds = %107, %104
  br label %111, !dbg !1083

111:                                              ; preds = %110, %91
  br label %116, !dbg !1084

112:                                              ; preds = %88
  %113 = load ptr, ptr %20, align 8, !dbg !1085
  %114 = load ptr, ptr %21, align 8, !dbg !1087
  %115 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %113, ptr noundef %114), !dbg !1088
  br label %116

116:                                              ; preds = %112, %111
  br label %117, !dbg !1089

117:                                              ; preds = %116, %74
  br label %118, !dbg !1090

118:                                              ; preds = %117, %71, %69, %66
  br label %63, !dbg !1024, !llvm.loop !1091

119:                                              ; preds = %63
  %120 = load ptr, ptr %14, align 8, !dbg !1093
  call void @mongoc_cursor_destroy(ptr noundef %120), !dbg !1094
  store i32 0, ptr %15, align 4, !dbg !1095
  br label %121

121:                                              ; preds = %119, %60
  %122 = load ptr, ptr %9, align 8, !dbg !1096
  call void @mongoc_collection_destroy(ptr noundef %122), !dbg !1097
  call void @bson_destroy(ptr noundef %11), !dbg !1098
  call void @bson_destroy(ptr noundef %13), !dbg !1099
  %123 = load i32, ptr %15, align 4, !dbg !1100
  store i32 %123, ptr %4, align 4, !dbg !1101
  br label %124, !dbg !1101

124:                                              ; preds = %121, %31
  %125 = load i32, ptr %4, align 4, !dbg !1102
  ret i32 %125, !dbg !1102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_secrets(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1103 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca %struct._bson_t, align 128
  %12 = alloca %struct._bson_t, align 128
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bson_iter_t, align 128
  %18 = alloca %struct.bson_iter_t, align 128
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1104, metadata !DIExpression()), !dbg !1105
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1106, metadata !DIExpression()), !dbg !1107
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1110, metadata !DIExpression()), !dbg !1111
  %21 = call ptr @mongo_get_collection(ptr noundef @.str.1), !dbg !1112
  store ptr %21, ptr %8, align 8, !dbg !1111
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1113, metadata !DIExpression()), !dbg !1114
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !1114
  %22 = load ptr, ptr %5, align 8, !dbg !1115
  %23 = icmp ne ptr %22, null, !dbg !1115
  br i1 %23, label %26, label %24, !dbg !1117

24:                                               ; preds = %3
  %25 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !1118
  store ptr %25, ptr %5, align 8, !dbg !1119
  br label %26, !dbg !1120

26:                                               ; preds = %24, %3
  %27 = load ptr, ptr %8, align 8, !dbg !1121
  %28 = icmp ne ptr %27, null, !dbg !1121
  br i1 %28, label %30, label %29, !dbg !1123

29:                                               ; preds = %26
  store i32 -1, ptr %4, align 4, !dbg !1124
  br label %121, !dbg !1124

30:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1125, metadata !DIExpression()), !dbg !1126
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1127, metadata !DIExpression()), !dbg !1128
  call void @bson_init(ptr noundef %10), !dbg !1129
  %31 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.19, i32 noundef -1, ptr noundef %11), !dbg !1130
  %32 = call zeroext i1 @bson_append_int32(ptr noundef %11, ptr noundef @.str.2, i32 noundef -1, i32 noundef 1), !dbg !1131
  %33 = call zeroext i1 @bson_append_int32(ptr noundef %11, ptr noundef @.str.3, i32 noundef -1, i32 noundef 1), !dbg !1132
  %34 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1133
  %35 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.20, i32 noundef -1, ptr noundef %11), !dbg !1134
  %36 = load ptr, ptr %5, align 8, !dbg !1135
  %37 = icmp ne ptr %36, null, !dbg !1135
  br i1 %37, label %38, label %50, !dbg !1137

38:                                               ; preds = %30
  %39 = load ptr, ptr %5, align 8, !dbg !1138
  %40 = getelementptr inbounds i8, ptr %39, i64 0, !dbg !1138
  %41 = load i8, ptr %40, align 1, !dbg !1138
  %42 = zext i8 %41 to i32, !dbg !1138
  %43 = icmp ne i32 %42, 0, !dbg !1138
  br i1 %43, label %44, label %50, !dbg !1139

44:                                               ; preds = %38
  %45 = load ptr, ptr %5, align 8, !dbg !1140
  %46 = load ptr, ptr %5, align 8, !dbg !1140
  %47 = call i64 @strlen(ptr noundef %46) #7, !dbg !1140
  %48 = trunc i64 %47 to i32, !dbg !1140
  %49 = call zeroext i1 @bson_append_utf8(ptr noundef %11, ptr noundef @.str.2, i32 noundef 5, ptr noundef %45, i32 noundef %48), !dbg !1140
  br label %50, !dbg !1142

50:                                               ; preds = %44, %38, %30
  %51 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @bson_init(ptr noundef %12), !dbg !1146
  %52 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.3, i32 noundef 5, i32 noundef 1), !dbg !1147
  %53 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1148
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1149, metadata !DIExpression()), !dbg !1150
  %54 = load ptr, ptr %8, align 8, !dbg !1151
  %55 = call ptr @mongoc_collection_find(ptr noundef %54, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %10, ptr noundef %12, ptr noundef null), !dbg !1152
  store ptr %55, ptr %13, align 8, !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1154, metadata !DIExpression()), !dbg !1155
  store i32 -1, ptr %14, align 4, !dbg !1155
  %56 = load ptr, ptr %13, align 8, !dbg !1156
  %57 = icmp ne ptr %56, null, !dbg !1156
  br i1 %57, label %59, label %58, !dbg !1158

58:                                               ; preds = %50
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4), !dbg !1159
  br label %118, !dbg !1161

59:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1162, metadata !DIExpression()), !dbg !1164
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1165, metadata !DIExpression()), !dbg !1166
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1167, metadata !DIExpression()), !dbg !1168
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1169, metadata !DIExpression()), !dbg !1170
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1171, metadata !DIExpression()), !dbg !1172
  br label %60, !dbg !1173

60:                                               ; preds = %115, %59
  %61 = load ptr, ptr %13, align 8, !dbg !1174
  %62 = call zeroext i1 @mongoc_cursor_next(ptr noundef %61, ptr noundef %15), !dbg !1175
  br i1 %62, label %63, label %116, !dbg !1173

63:                                               ; preds = %60
  %64 = load ptr, ptr %15, align 8, !dbg !1176
  %65 = call zeroext i1 @bson_iter_init(ptr noundef %17, ptr noundef %64), !dbg !1179
  br i1 %65, label %66, label %115, !dbg !1180

66:                                               ; preds = %63
  %67 = call zeroext i1 @bson_iter_find(ptr noundef %17, ptr noundef @.str.3), !dbg !1181
  br i1 %67, label %68, label %115, !dbg !1182

68:                                               ; preds = %66
  %69 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1183
  %70 = icmp eq i32 %69, 2, !dbg !1183
  br i1 %70, label %71, label %115, !dbg !1184

71:                                               ; preds = %68
  %72 = call ptr @bson_iter_utf8(ptr noundef %17, ptr noundef %16), !dbg !1185
  store ptr %72, ptr %19, align 8, !dbg !1187
  %73 = load i32, ptr %16, align 4, !dbg !1188
  %74 = icmp ne i32 %73, 0, !dbg !1188
  br i1 %74, label %75, label %114, !dbg !1190

75:                                               ; preds = %71
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1191, metadata !DIExpression()), !dbg !1193
  store ptr @.str.22, ptr %20, align 8, !dbg !1193
  %76 = load ptr, ptr %15, align 8, !dbg !1194
  %77 = call zeroext i1 @bson_iter_init(ptr noundef %18, ptr noundef %76), !dbg !1196
  br i1 %77, label %78, label %85, !dbg !1197

78:                                               ; preds = %75
  %79 = call zeroext i1 @bson_iter_find(ptr noundef %18, ptr noundef @.str.2), !dbg !1198
  br i1 %79, label %80, label %85, !dbg !1199

80:                                               ; preds = %78
  %81 = call i32 @bson_iter_type(ptr noundef %18), !dbg !1200
  %82 = icmp eq i32 %81, 2, !dbg !1200
  br i1 %82, label %83, label %85, !dbg !1201

83:                                               ; preds = %80
  %84 = call ptr @bson_iter_utf8(ptr noundef %18, ptr noundef %16), !dbg !1202
  store ptr %84, ptr %20, align 8, !dbg !1204
  br label %85, !dbg !1205

85:                                               ; preds = %83, %80, %78, %75
  %86 = load ptr, ptr %6, align 8, !dbg !1206
  %87 = icmp ne ptr %86, null, !dbg !1206
  br i1 %87, label %88, label %109, !dbg !1208

88:                                               ; preds = %85
  %89 = load ptr, ptr %6, align 8, !dbg !1209
  %90 = load ptr, ptr %19, align 8, !dbg !1211
  call void @add_to_secrets_list(ptr noundef %89, ptr noundef %90), !dbg !1212
  %91 = load ptr, ptr %7, align 8, !dbg !1213
  %92 = icmp ne ptr %91, null, !dbg !1213
  br i1 %92, label %93, label %108, !dbg !1215

93:                                               ; preds = %88
  %94 = load ptr, ptr %20, align 8, !dbg !1216
  %95 = icmp ne ptr %94, null, !dbg !1216
  br i1 %95, label %96, label %104, !dbg !1219

96:                                               ; preds = %93
  %97 = load ptr, ptr %20, align 8, !dbg !1220
  %98 = load i8, ptr %97, align 1, !dbg !1221
  %99 = sext i8 %98 to i32, !dbg !1221
  %100 = icmp ne i32 %99, 0, !dbg !1221
  br i1 %100, label %101, label %104, !dbg !1222

101:                                              ; preds = %96
  %102 = load ptr, ptr %7, align 8, !dbg !1223
  %103 = load ptr, ptr %20, align 8, !dbg !1225
  call void @add_to_secrets_list(ptr noundef %102, ptr noundef %103), !dbg !1226
  br label %107, !dbg !1227

104:                                              ; preds = %96, %93
  %105 = load ptr, ptr %7, align 8, !dbg !1228
  %106 = load ptr, ptr %5, align 8, !dbg !1230
  call void @add_to_secrets_list(ptr noundef %105, ptr noundef %106), !dbg !1231
  br label %107

107:                                              ; preds = %104, %101
  br label %108, !dbg !1232

108:                                              ; preds = %107, %88
  br label %113, !dbg !1233

109:                                              ; preds = %85
  %110 = load ptr, ptr %19, align 8, !dbg !1234
  %111 = load ptr, ptr %20, align 8, !dbg !1236
  %112 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %110, ptr noundef %111), !dbg !1237
  br label %113

113:                                              ; preds = %109, %108
  br label %114, !dbg !1238

114:                                              ; preds = %113, %71
  br label %115, !dbg !1239

115:                                              ; preds = %114, %68, %66, %63
  br label %60, !dbg !1173, !llvm.loop !1240

116:                                              ; preds = %60
  %117 = load ptr, ptr %13, align 8, !dbg !1242
  call void @mongoc_cursor_destroy(ptr noundef %117), !dbg !1243
  store i32 0, ptr %14, align 4, !dbg !1244
  br label %118

118:                                              ; preds = %116, %58
  %119 = load ptr, ptr %8, align 8, !dbg !1245
  call void @mongoc_collection_destroy(ptr noundef %119), !dbg !1246
  call void @bson_destroy(ptr noundef %10), !dbg !1247
  call void @bson_destroy(ptr noundef %12), !dbg !1248
  %120 = load i32, ptr %14, align 4, !dbg !1249
  store i32 %120, ptr %4, align 4, !dbg !1250
  br label %121, !dbg !1250

121:                                              ; preds = %118, %29
  %122 = load i32, ptr %4, align 4, !dbg !1251
  ret i32 %122, !dbg !1251
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1252 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._bson_t, align 128
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1253, metadata !DIExpression()), !dbg !1254
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1255, metadata !DIExpression()), !dbg !1256
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1257, metadata !DIExpression()), !dbg !1258
  %8 = call ptr @mongo_get_collection(ptr noundef @.str.1), !dbg !1259
  store ptr %8, ptr %6, align 8, !dbg !1258
  %9 = load ptr, ptr %6, align 8, !dbg !1260
  %10 = icmp ne ptr %9, null, !dbg !1260
  br i1 %10, label %12, label %11, !dbg !1262

11:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !1263
  br label %36, !dbg !1263

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1264, metadata !DIExpression()), !dbg !1265
  call void @bson_init(ptr noundef %7), !dbg !1266
  %13 = load ptr, ptr %5, align 8, !dbg !1267
  %14 = load ptr, ptr %5, align 8, !dbg !1267
  %15 = call i64 @strlen(ptr noundef %14) #7, !dbg !1267
  %16 = trunc i64 %15 to i32, !dbg !1267
  %17 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.2, i32 noundef 5, ptr noundef %13, i32 noundef %16), !dbg !1267
  %18 = load ptr, ptr %4, align 8, !dbg !1268
  %19 = icmp ne ptr %18, null, !dbg !1268
  br i1 %19, label %20, label %32, !dbg !1270

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 8, !dbg !1271
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !1271
  %23 = load i8, ptr %22, align 1, !dbg !1271
  %24 = zext i8 %23 to i32, !dbg !1271
  %25 = icmp ne i32 %24, 0, !dbg !1272
  br i1 %25, label %26, label %32, !dbg !1273

26:                                               ; preds = %20
  %27 = load ptr, ptr %4, align 8, !dbg !1274
  %28 = load ptr, ptr %4, align 8, !dbg !1274
  %29 = call i64 @strlen(ptr noundef %28) #7, !dbg !1274
  %30 = trunc i64 %29 to i32, !dbg !1274
  %31 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.3, i32 noundef 5, ptr noundef %27, i32 noundef %30), !dbg !1274
  br label %32, !dbg !1276

32:                                               ; preds = %26, %20, %12
  %33 = load ptr, ptr %6, align 8, !dbg !1277
  %34 = call zeroext i1 @mongoc_collection_delete(ptr noundef %33, i32 noundef 0, ptr noundef %7, ptr noundef null, ptr noundef null), !dbg !1278
  %35 = load ptr, ptr %6, align 8, !dbg !1279
  call void @mongoc_collection_destroy(ptr noundef %35), !dbg !1280
  call void @bson_destroy(ptr noundef %7), !dbg !1281
  store i32 0, ptr %3, align 4, !dbg !1282
  br label %36, !dbg !1282

36:                                               ; preds = %32, %11
  %37 = load i32, ptr %3, align 4, !dbg !1283
  ret i32 %37, !dbg !1283
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !1284 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1285, metadata !DIExpression()), !dbg !1286
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1287, metadata !DIExpression()), !dbg !1288
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1289, metadata !DIExpression()), !dbg !1290
  %9 = call ptr @mongo_get_collection(ptr noundef @.str.1), !dbg !1291
  store ptr %9, ptr %6, align 8, !dbg !1290
  %10 = load ptr, ptr %6, align 8, !dbg !1292
  %11 = icmp ne ptr %10, null, !dbg !1292
  br i1 %11, label %13, label %12, !dbg !1294

12:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !1295
  br label %32, !dbg !1295

13:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1296, metadata !DIExpression()), !dbg !1297
  call void @bson_init(ptr noundef %7), !dbg !1298
  %14 = load ptr, ptr %5, align 8, !dbg !1299
  %15 = load ptr, ptr %5, align 8, !dbg !1299
  %16 = call i64 @strlen(ptr noundef %15) #7, !dbg !1299
  %17 = trunc i64 %16 to i32, !dbg !1299
  %18 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.2, i32 noundef 5, ptr noundef %14, i32 noundef %17), !dbg !1299
  %19 = load ptr, ptr %4, align 8, !dbg !1300
  %20 = load ptr, ptr %4, align 8, !dbg !1300
  %21 = call i64 @strlen(ptr noundef %20) #7, !dbg !1300
  %22 = trunc i64 %21 to i32, !dbg !1300
  %23 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.3, i32 noundef 5, ptr noundef %19, i32 noundef %22), !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1301, metadata !DIExpression()), !dbg !1302
  %24 = load ptr, ptr %6, align 8, !dbg !1303
  %25 = call zeroext i1 @mongoc_collection_insert(ptr noundef %24, i32 noundef 0, ptr noundef %7, ptr noundef null, ptr noundef null), !dbg !1304
  %26 = zext i1 %25 to i32, !dbg !1304
  store i32 %26, ptr %8, align 4, !dbg !1302
  %27 = load ptr, ptr %6, align 8, !dbg !1305
  call void @mongoc_collection_destroy(ptr noundef %27), !dbg !1306
  call void @bson_destroy(ptr noundef %7), !dbg !1307
  %28 = load i32, ptr %8, align 4, !dbg !1308
  %29 = icmp ne i32 %28, 0, !dbg !1308
  br i1 %29, label %31, label %30, !dbg !1310

30:                                               ; preds = %13
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.24), !dbg !1311
  store i32 -1, ptr %3, align 4, !dbg !1313
  br label %32, !dbg !1313

31:                                               ; preds = %13
  store i32 0, ptr %3, align 4, !dbg !1314
  br label %32, !dbg !1314

32:                                               ; preds = %31, %30, %12
  %33 = load i32, ptr %3, align 4, !dbg !1316
  ret i32 %33, !dbg !1316
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !1317 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca [128 x i8], align 16
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca %struct._bson_t, align 128
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1318, metadata !DIExpression()), !dbg !1319
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1322, metadata !DIExpression()), !dbg !1323
  %12 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1324
  store ptr %12, ptr %6, align 8, !dbg !1323
  %13 = load ptr, ptr %6, align 8, !dbg !1325
  %14 = icmp ne ptr %13, null, !dbg !1325
  br i1 %14, label %16, label %15, !dbg !1327

15:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !1328
  br label %41, !dbg !1328

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1329, metadata !DIExpression()), !dbg !1330
  store i32 -1, ptr %7, align 4, !dbg !1330
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1331, metadata !DIExpression()), !dbg !1332
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 128, i1 false), !dbg !1332
  %17 = load ptr, ptr %5, align 8, !dbg !1333
  %18 = icmp ne ptr %17, null, !dbg !1333
  br i1 %18, label %21, label %19, !dbg !1335

19:                                               ; preds = %16
  %20 = getelementptr inbounds [128 x i8], ptr %8, i64 0, i64 0, !dbg !1336
  store ptr %20, ptr %5, align 8, !dbg !1337
  br label %21, !dbg !1338

21:                                               ; preds = %19, %16
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1339, metadata !DIExpression()), !dbg !1340
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1341, metadata !DIExpression()), !dbg !1342
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1343, metadata !DIExpression()), !dbg !1344
  call void @bson_init(ptr noundef %9), !dbg !1345
  %22 = load ptr, ptr %5, align 8, !dbg !1346
  %23 = load ptr, ptr %5, align 8, !dbg !1346
  %24 = call i64 @strlen(ptr noundef %23) #7, !dbg !1346
  %25 = trunc i64 %24 to i32, !dbg !1346
  %26 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.2, i32 noundef 5, ptr noundef %22, i32 noundef %25), !dbg !1346
  call void @bson_init(ptr noundef %10), !dbg !1347
  %27 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.25, i32 noundef -1, ptr noundef %11), !dbg !1348
  %28 = load ptr, ptr %4, align 8, !dbg !1349
  %29 = load ptr, ptr %4, align 8, !dbg !1349
  %30 = call i64 @strlen(ptr noundef %29) #7, !dbg !1349
  %31 = trunc i64 %30 to i32, !dbg !1349
  %32 = call zeroext i1 @bson_append_utf8(ptr noundef %11, ptr noundef @.str.26, i32 noundef 6, ptr noundef %28, i32 noundef %31), !dbg !1349
  %33 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1350
  %34 = load ptr, ptr %6, align 8, !dbg !1351
  %35 = call zeroext i1 @mongoc_collection_update(ptr noundef %34, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef null), !dbg !1353
  br i1 %35, label %37, label %36, !dbg !1354

36:                                               ; preds = %21
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.27), !dbg !1355
  br label %38, !dbg !1357

37:                                               ; preds = %21
  store i32 0, ptr %7, align 4, !dbg !1358
  br label %38

38:                                               ; preds = %37, %36
  %39 = load ptr, ptr %6, align 8, !dbg !1360
  call void @mongoc_collection_destroy(ptr noundef %39), !dbg !1361
  call void @bson_destroy(ptr noundef %9), !dbg !1362
  call void @bson_destroy(ptr noundef %10), !dbg !1363
  %40 = load i32, ptr %7, align 4, !dbg !1364
  store i32 %40, ptr %3, align 4, !dbg !1365
  br label %41, !dbg !1365

41:                                               ; preds = %38, %15
  %42 = load i32, ptr %3, align 4, !dbg !1366
  ret i32 %42, !dbg !1366
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_del_origin(ptr noundef %0) #0 !dbg !1367 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct._bson_t, align 128
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca %struct._bson_t, align 128
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1370, metadata !DIExpression()), !dbg !1371
  %9 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1372
  store ptr %9, ptr %4, align 8, !dbg !1371
  %10 = load ptr, ptr %4, align 8, !dbg !1373
  %11 = icmp ne ptr %10, null, !dbg !1373
  br i1 %11, label %13, label %12, !dbg !1375

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !1376
  br label %28, !dbg !1376

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1377, metadata !DIExpression()), !dbg !1378
  store i32 -1, ptr %5, align 4, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1379, metadata !DIExpression()), !dbg !1380
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1381, metadata !DIExpression()), !dbg !1382
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1383, metadata !DIExpression()), !dbg !1384
  call void @bson_init(ptr noundef %6), !dbg !1385
  call void @bson_init(ptr noundef %7), !dbg !1386
  %14 = call zeroext i1 @bson_append_document_begin(ptr noundef %7, ptr noundef @.str.28, i32 noundef -1, ptr noundef %8), !dbg !1387
  %15 = load ptr, ptr %3, align 8, !dbg !1388
  %16 = load ptr, ptr %3, align 8, !dbg !1388
  %17 = call i64 @strlen(ptr noundef %16) #7, !dbg !1388
  %18 = trunc i64 %17 to i32, !dbg !1388
  %19 = call zeroext i1 @bson_append_utf8(ptr noundef %8, ptr noundef @.str.26, i32 noundef 6, ptr noundef %15, i32 noundef %18), !dbg !1388
  %20 = call zeroext i1 @bson_append_document_end(ptr noundef %7, ptr noundef %8), !dbg !1389
  %21 = load ptr, ptr %4, align 8, !dbg !1390
  %22 = call zeroext i1 @mongoc_collection_update(ptr noundef %21, i32 noundef 2, ptr noundef %6, ptr noundef %7, ptr noundef null, ptr noundef null), !dbg !1392
  br i1 %22, label %24, label %23, !dbg !1393

23:                                               ; preds = %13
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.29), !dbg !1394
  br label %25, !dbg !1396

24:                                               ; preds = %13
  store i32 0, ptr %5, align 4, !dbg !1397
  br label %25

25:                                               ; preds = %24, %23
  %26 = load ptr, ptr %4, align 8, !dbg !1399
  call void @mongoc_collection_destroy(ptr noundef %26), !dbg !1400
  call void @bson_destroy(ptr noundef %6), !dbg !1401
  call void @bson_destroy(ptr noundef %7), !dbg !1402
  %27 = load i32, ptr %5, align 4, !dbg !1403
  store i32 %27, ptr %2, align 4, !dbg !1404
  br label %28, !dbg !1404

28:                                               ; preds = %25, %12
  %29 = load i32, ptr %2, align 4, !dbg !1405
  ret i32 %29, !dbg !1405
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_origins(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1406 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [128 x i8], align 16
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca %struct._bson_t, align 128
  %12 = alloca %struct._bson_t, align 128
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.bson_iter_t, align 128
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct._bson_t, align 128
  %22 = alloca %struct.bson_iter_t, align 128
  %23 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1407, metadata !DIExpression()), !dbg !1408
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1409, metadata !DIExpression()), !dbg !1410
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1411, metadata !DIExpression()), !dbg !1412
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1413, metadata !DIExpression()), !dbg !1414
  %24 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1415
  store ptr %24, ptr %8, align 8, !dbg !1414
  %25 = load ptr, ptr %8, align 8, !dbg !1416
  %26 = icmp ne ptr %25, null, !dbg !1416
  br i1 %26, label %28, label %27, !dbg !1418

27:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !1419
  br label %122, !dbg !1419

28:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1420, metadata !DIExpression()), !dbg !1421
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 128, i1 false), !dbg !1421
  %29 = load ptr, ptr %5, align 8, !dbg !1422
  %30 = icmp ne ptr %29, null, !dbg !1422
  br i1 %30, label %33, label %31, !dbg !1424

31:                                               ; preds = %28
  %32 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !1425
  store ptr %32, ptr %5, align 8, !dbg !1426
  br label %33, !dbg !1427

33:                                               ; preds = %31, %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1428, metadata !DIExpression()), !dbg !1429
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1430, metadata !DIExpression()), !dbg !1431
  call void @bson_init(ptr noundef %10), !dbg !1432
  %34 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.19, i32 noundef -1, ptr noundef %11), !dbg !1433
  %35 = call zeroext i1 @bson_append_int32(ptr noundef %11, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1434
  %36 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1435
  %37 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.20, i32 noundef -1, ptr noundef %11), !dbg !1436
  %38 = load ptr, ptr %5, align 8, !dbg !1437
  %39 = icmp ne ptr %38, null, !dbg !1437
  br i1 %39, label %40, label %52, !dbg !1439

40:                                               ; preds = %33
  %41 = load ptr, ptr %5, align 8, !dbg !1440
  %42 = getelementptr inbounds i8, ptr %41, i64 0, !dbg !1440
  %43 = load i8, ptr %42, align 1, !dbg !1440
  %44 = zext i8 %43 to i32, !dbg !1440
  %45 = icmp ne i32 %44, 0, !dbg !1440
  br i1 %45, label %46, label %52, !dbg !1441

46:                                               ; preds = %40
  %47 = load ptr, ptr %5, align 8, !dbg !1442
  %48 = load ptr, ptr %5, align 8, !dbg !1442
  %49 = call i64 @strlen(ptr noundef %48) #7, !dbg !1442
  %50 = trunc i64 %49 to i32, !dbg !1442
  %51 = call zeroext i1 @bson_append_utf8(ptr noundef %11, ptr noundef @.str.2, i32 noundef 5, ptr noundef %47, i32 noundef %50), !dbg !1442
  br label %52, !dbg !1444

52:                                               ; preds = %46, %40, %33
  %53 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1445
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1446, metadata !DIExpression()), !dbg !1447
  call void @bson_init(ptr noundef %12), !dbg !1448
  %54 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.26, i32 noundef 6, i32 noundef 1), !dbg !1449
  %55 = call zeroext i1 @bson_append_int32(ptr noundef %12, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1450
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1451, metadata !DIExpression()), !dbg !1452
  %56 = load ptr, ptr %8, align 8, !dbg !1453
  %57 = call ptr @mongoc_collection_find(ptr noundef %56, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %10, ptr noundef %12, ptr noundef null), !dbg !1454
  store ptr %57, ptr %13, align 8, !dbg !1455
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1456, metadata !DIExpression()), !dbg !1457
  store i32 -1, ptr %14, align 4, !dbg !1457
  %58 = load ptr, ptr %13, align 8, !dbg !1458
  %59 = icmp ne ptr %58, null, !dbg !1458
  br i1 %59, label %61, label %60, !dbg !1460

60:                                               ; preds = %52
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30), !dbg !1461
  br label %119, !dbg !1463

61:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1464, metadata !DIExpression()), !dbg !1466
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1467, metadata !DIExpression()), !dbg !1468
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1469, metadata !DIExpression()), !dbg !1470
  br label %62, !dbg !1471

62:                                               ; preds = %116, %61
  %63 = load ptr, ptr %13, align 8, !dbg !1472
  %64 = call zeroext i1 @mongoc_cursor_next(ptr noundef %63, ptr noundef %15), !dbg !1473
  br i1 %64, label %65, label %117, !dbg !1471

65:                                               ; preds = %62
  %66 = load ptr, ptr %15, align 8, !dbg !1474
  %67 = call zeroext i1 @bson_iter_init(ptr noundef %17, ptr noundef %66), !dbg !1477
  br i1 %67, label %68, label %116, !dbg !1478

68:                                               ; preds = %65
  %69 = call zeroext i1 @bson_iter_find(ptr noundef %17, ptr noundef @.str.2), !dbg !1479
  br i1 %69, label %70, label %116, !dbg !1480

70:                                               ; preds = %68
  %71 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1481
  %72 = icmp eq i32 %71, 2, !dbg !1481
  br i1 %72, label %73, label %116, !dbg !1482

73:                                               ; preds = %70
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1483, metadata !DIExpression()), !dbg !1485
  %74 = call ptr @bson_iter_utf8(ptr noundef %17, ptr noundef %16), !dbg !1486
  store ptr %74, ptr %18, align 8, !dbg !1485
  %75 = load ptr, ptr %15, align 8, !dbg !1487
  %76 = call zeroext i1 @bson_iter_init(ptr noundef %17, ptr noundef %75), !dbg !1489
  br i1 %76, label %77, label %115, !dbg !1490

77:                                               ; preds = %73
  %78 = call zeroext i1 @bson_iter_find(ptr noundef %17, ptr noundef @.str.26), !dbg !1491
  br i1 %78, label %79, label %115, !dbg !1492

79:                                               ; preds = %77
  %80 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1493
  %81 = icmp eq i32 %80, 4, !dbg !1493
  br i1 %81, label %82, label %115, !dbg !1494

82:                                               ; preds = %79
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1495, metadata !DIExpression()), !dbg !1497
  store ptr null, ptr %19, align 8, !dbg !1497
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1498, metadata !DIExpression()), !dbg !1499
  store i32 0, ptr %20, align 4, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1500, metadata !DIExpression()), !dbg !1501
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1502, metadata !DIExpression()), !dbg !1503
  call void @bson_iter_array(ptr noundef %17, ptr noundef %20, ptr noundef %19), !dbg !1504
  %83 = load ptr, ptr %19, align 8, !dbg !1505
  %84 = load i32, ptr %20, align 4, !dbg !1506
  %85 = zext i32 %84 to i64, !dbg !1506
  %86 = call zeroext i1 @bson_init_static(ptr noundef %21, ptr noundef %83, i64 noundef %85), !dbg !1507
  %87 = call zeroext i1 @bson_iter_init(ptr noundef %22, ptr noundef %21), !dbg !1508
  br i1 %87, label %88, label %114, !dbg !1510

88:                                               ; preds = %82
  br label %89, !dbg !1511

89:                                               ; preds = %112, %88
  %90 = call zeroext i1 @bson_iter_next(ptr noundef %22), !dbg !1513
  br i1 %90, label %91, label %113, !dbg !1511

91:                                               ; preds = %89
  %92 = call i32 @bson_iter_type(ptr noundef %22), !dbg !1514
  %93 = icmp eq i32 %92, 2, !dbg !1514
  br i1 %93, label %94, label %112, !dbg !1517

94:                                               ; preds = %91
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1518, metadata !DIExpression()), !dbg !1520
  %95 = call ptr @bson_iter_utf8(ptr noundef %22, ptr noundef %16), !dbg !1521
  store ptr %95, ptr %23, align 8, !dbg !1520
  %96 = load ptr, ptr %6, align 8, !dbg !1522
  %97 = icmp ne ptr %96, null, !dbg !1522
  br i1 %97, label %98, label %107, !dbg !1524

98:                                               ; preds = %94
  %99 = load ptr, ptr %6, align 8, !dbg !1525
  %100 = load ptr, ptr %23, align 8, !dbg !1527
  call void @add_to_secrets_list(ptr noundef %99, ptr noundef %100), !dbg !1528
  %101 = load ptr, ptr %7, align 8, !dbg !1529
  %102 = icmp ne ptr %101, null, !dbg !1529
  br i1 %102, label %103, label %106, !dbg !1531

103:                                              ; preds = %98
  %104 = load ptr, ptr %7, align 8, !dbg !1532
  %105 = load ptr, ptr %18, align 8, !dbg !1534
  call void @add_to_secrets_list(ptr noundef %104, ptr noundef %105), !dbg !1535
  br label %106, !dbg !1536

106:                                              ; preds = %103, %98
  br label %111, !dbg !1537

107:                                              ; preds = %94
  %108 = load ptr, ptr %18, align 8, !dbg !1538
  %109 = load ptr, ptr %23, align 8, !dbg !1540
  %110 = call i32 (ptr, ...) @printf(ptr noundef @.str.31, ptr noundef %108, ptr noundef %109), !dbg !1541
  br label %111

111:                                              ; preds = %107, %106
  br label %112, !dbg !1542

112:                                              ; preds = %111, %91
  br label %89, !dbg !1511, !llvm.loop !1543

113:                                              ; preds = %89
  br label %114, !dbg !1545

114:                                              ; preds = %113, %82
  br label %115, !dbg !1546

115:                                              ; preds = %114, %79, %77, %73
  br label %116, !dbg !1547

116:                                              ; preds = %115, %70, %68, %65
  br label %62, !dbg !1471, !llvm.loop !1548

117:                                              ; preds = %62
  %118 = load ptr, ptr %13, align 8, !dbg !1550
  call void @mongoc_cursor_destroy(ptr noundef %118), !dbg !1551
  store i32 0, ptr %14, align 4, !dbg !1552
  br label %119

119:                                              ; preds = %117, %60
  %120 = load ptr, ptr %8, align 8, !dbg !1553
  call void @mongoc_collection_destroy(ptr noundef %120), !dbg !1554
  call void @bson_destroy(ptr noundef %10), !dbg !1555
  call void @bson_destroy(ptr noundef %12), !dbg !1556
  %121 = load i32, ptr %14, align 4, !dbg !1557
  store i32 %121, ptr %4, align 4, !dbg !1558
  br label %122, !dbg !1558

122:                                              ; preds = %119, %27
  %123 = load i32, ptr %4, align 4, !dbg !1559
  ret i32 %123, !dbg !1559
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !1560 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca %struct._bson_t, align 128
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1561, metadata !DIExpression()), !dbg !1562
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1563, metadata !DIExpression()), !dbg !1564
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1567, metadata !DIExpression()), !dbg !1568
  %15 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1569
  store ptr %15, ptr %8, align 8, !dbg !1568
  %16 = load ptr, ptr %8, align 8, !dbg !1570
  %17 = icmp ne ptr %16, null, !dbg !1570
  br i1 %17, label %19, label %18, !dbg !1572

18:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !1573
  br label %64, !dbg !1573

19:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1574, metadata !DIExpression()), !dbg !1575
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1576, metadata !DIExpression()), !dbg !1577
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1578, metadata !DIExpression()), !dbg !1579
  call void @bson_init(ptr noundef %9), !dbg !1580
  %20 = load ptr, ptr %5, align 8, !dbg !1581
  %21 = load ptr, ptr %5, align 8, !dbg !1581
  %22 = call i64 @strlen(ptr noundef %21) #7, !dbg !1581
  %23 = trunc i64 %22 to i32, !dbg !1581
  %24 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.2, i32 noundef 5, ptr noundef %20, i32 noundef %23), !dbg !1581
  call void @bson_init(ptr noundef %10), !dbg !1582
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1583, metadata !DIExpression()), !dbg !1584
  %25 = load ptr, ptr %7, align 8, !dbg !1585
  %26 = call i64 @strlen(ptr noundef %25) #7, !dbg !1586
  %27 = add i64 9, %26, !dbg !1587
  store i64 %27, ptr %12, align 8, !dbg !1584
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1588, metadata !DIExpression()), !dbg !1589
  %28 = load i64, ptr %12, align 8, !dbg !1590
  %29 = call noalias ptr @malloc(i64 noundef %28) #9, !dbg !1591
  store ptr %29, ptr %13, align 8, !dbg !1589
  %30 = load ptr, ptr %13, align 8, !dbg !1592
  %31 = call ptr @strcpy(ptr noundef %30, ptr noundef @.str.32) #8, !dbg !1593
  %32 = load ptr, ptr %13, align 8, !dbg !1594
  %33 = load ptr, ptr %7, align 8, !dbg !1595
  %34 = call ptr @strcat(ptr noundef %32, ptr noundef %33) #8, !dbg !1596
  %35 = load i64, ptr %6, align 8, !dbg !1597
  %36 = icmp ugt i64 %35, 0, !dbg !1599
  br i1 %36, label %37, label %47, !dbg !1600

37:                                               ; preds = %19
  %38 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.33, i32 noundef -1, ptr noundef %11), !dbg !1601
  %39 = load ptr, ptr %13, align 8, !dbg !1603
  %40 = load ptr, ptr %13, align 8, !dbg !1603
  %41 = call i64 @strlen(ptr noundef %40) #7, !dbg !1603
  %42 = trunc i64 %41 to i32, !dbg !1603
  %43 = load i64, ptr %6, align 8, !dbg !1603
  %44 = trunc i64 %43 to i32, !dbg !1603
  %45 = call zeroext i1 @bson_append_int32(ptr noundef %11, ptr noundef %39, i32 noundef %42, i32 noundef %44), !dbg !1603
  %46 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1604
  br label %55, !dbg !1605

47:                                               ; preds = %19
  %48 = call zeroext i1 @bson_append_document_begin(ptr noundef %10, ptr noundef @.str.34, i32 noundef -1, ptr noundef %11), !dbg !1606
  %49 = load ptr, ptr %13, align 8, !dbg !1608
  %50 = load ptr, ptr %13, align 8, !dbg !1608
  %51 = call i64 @strlen(ptr noundef %50) #7, !dbg !1608
  %52 = trunc i64 %51 to i32, !dbg !1608
  %53 = call zeroext i1 @bson_append_int32(ptr noundef %11, ptr noundef %49, i32 noundef %52, i32 noundef 1), !dbg !1608
  %54 = call zeroext i1 @bson_append_document_end(ptr noundef %10, ptr noundef %11), !dbg !1609
  br label %55

55:                                               ; preds = %47, %37
  %56 = load ptr, ptr %13, align 8, !dbg !1610
  call void @free(ptr noundef %56) #8, !dbg !1611
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1612, metadata !DIExpression()), !dbg !1613
  store i32 -1, ptr %14, align 4, !dbg !1613
  %57 = load ptr, ptr %8, align 8, !dbg !1614
  %58 = call zeroext i1 @mongoc_collection_update(ptr noundef %57, i32 noundef 2, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef null), !dbg !1616
  br i1 %58, label %60, label %59, !dbg !1617

59:                                               ; preds = %55
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.29), !dbg !1618
  br label %61, !dbg !1620

60:                                               ; preds = %55
  store i32 0, ptr %14, align 4, !dbg !1621
  br label %61

61:                                               ; preds = %60, %59
  %62 = load ptr, ptr %8, align 8, !dbg !1623
  call void @mongoc_collection_destroy(ptr noundef %62), !dbg !1624
  call void @bson_destroy(ptr noundef %9), !dbg !1625
  call void @bson_destroy(ptr noundef %10), !dbg !1626
  %63 = load i32, ptr %14, align 4, !dbg !1627
  store i32 %63, ptr %4, align 4, !dbg !1628
  br label %64, !dbg !1628

64:                                               ; preds = %61, %18
  %65 = load i32, ptr %4, align 4, !dbg !1629
  ret i32 %65, !dbg !1629
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_realm_options(ptr noundef %0) #0 !dbg !1630 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._bson_t, align 128
  %6 = alloca %struct._bson_t, align 128
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.bson_iter_t, align 128
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct._bson_t, align 128
  %17 = alloca %struct.bson_iter_t, align 128
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1631, metadata !DIExpression()), !dbg !1632
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1633, metadata !DIExpression()), !dbg !1634
  %22 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1635
  store ptr %22, ptr %4, align 8, !dbg !1634
  %23 = load ptr, ptr %4, align 8, !dbg !1636
  %24 = icmp ne ptr %23, null, !dbg !1636
  br i1 %24, label %26, label %25, !dbg !1638

25:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !1639
  br label %126, !dbg !1639

26:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1640, metadata !DIExpression()), !dbg !1641
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1642, metadata !DIExpression()), !dbg !1643
  call void @bson_init(ptr noundef %5), !dbg !1644
  %27 = call zeroext i1 @bson_append_document_begin(ptr noundef %5, ptr noundef @.str.19, i32 noundef -1, ptr noundef %6), !dbg !1645
  %28 = call zeroext i1 @bson_append_int32(ptr noundef %6, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1646
  %29 = call zeroext i1 @bson_append_document_end(ptr noundef %5, ptr noundef %6), !dbg !1647
  %30 = call zeroext i1 @bson_append_document_begin(ptr noundef %5, ptr noundef @.str.20, i32 noundef -1, ptr noundef %6), !dbg !1648
  %31 = load ptr, ptr %3, align 8, !dbg !1649
  %32 = icmp ne ptr %31, null, !dbg !1649
  br i1 %32, label %33, label %45, !dbg !1651

33:                                               ; preds = %26
  %34 = load ptr, ptr %3, align 8, !dbg !1652
  %35 = getelementptr inbounds i8, ptr %34, i64 0, !dbg !1652
  %36 = load i8, ptr %35, align 1, !dbg !1652
  %37 = zext i8 %36 to i32, !dbg !1652
  %38 = icmp ne i32 %37, 0, !dbg !1652
  br i1 %38, label %39, label %45, !dbg !1653

39:                                               ; preds = %33
  %40 = load ptr, ptr %3, align 8, !dbg !1654
  %41 = load ptr, ptr %3, align 8, !dbg !1654
  %42 = call i64 @strlen(ptr noundef %41) #7, !dbg !1654
  %43 = trunc i64 %42 to i32, !dbg !1654
  %44 = call zeroext i1 @bson_append_utf8(ptr noundef %6, ptr noundef @.str.2, i32 noundef 5, ptr noundef %40, i32 noundef %43), !dbg !1654
  br label %45, !dbg !1656

45:                                               ; preds = %39, %33, %26
  %46 = call zeroext i1 @bson_append_document_end(ptr noundef %5, ptr noundef %6), !dbg !1657
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1658, metadata !DIExpression()), !dbg !1659
  call void @bson_init(ptr noundef %7), !dbg !1660
  %47 = call zeroext i1 @bson_append_int32(ptr noundef %7, ptr noundef @.str.35, i32 noundef 7, i32 noundef 1), !dbg !1661
  %48 = call zeroext i1 @bson_append_int32(ptr noundef %7, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1662
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1663, metadata !DIExpression()), !dbg !1664
  %49 = load ptr, ptr %4, align 8, !dbg !1665
  %50 = call ptr @mongoc_collection_find(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %5, ptr noundef %7, ptr noundef null), !dbg !1666
  store ptr %50, ptr %8, align 8, !dbg !1667
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1668, metadata !DIExpression()), !dbg !1669
  store i32 -1, ptr %9, align 4, !dbg !1669
  %51 = load ptr, ptr %8, align 8, !dbg !1670
  %52 = icmp ne ptr %51, null, !dbg !1670
  br i1 %52, label %54, label %53, !dbg !1672

53:                                               ; preds = %45
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30), !dbg !1673
  br label %123, !dbg !1675

54:                                               ; preds = %45
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1676, metadata !DIExpression()), !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1679, metadata !DIExpression()), !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1681, metadata !DIExpression()), !dbg !1682
  br label %55, !dbg !1683

55:                                               ; preds = %120, %54
  %56 = load ptr, ptr %8, align 8, !dbg !1684
  %57 = call zeroext i1 @mongoc_cursor_next(ptr noundef %56, ptr noundef %10), !dbg !1685
  br i1 %57, label %58, label %121, !dbg !1683

58:                                               ; preds = %55
  %59 = load ptr, ptr %10, align 8, !dbg !1686
  %60 = call zeroext i1 @bson_iter_init(ptr noundef %12, ptr noundef %59), !dbg !1689
  br i1 %60, label %61, label %120, !dbg !1690

61:                                               ; preds = %58
  %62 = call zeroext i1 @bson_iter_find(ptr noundef %12, ptr noundef @.str.2), !dbg !1691
  br i1 %62, label %63, label %120, !dbg !1692

63:                                               ; preds = %61
  %64 = call i32 @bson_iter_type(ptr noundef %12), !dbg !1693
  %65 = icmp eq i32 %64, 2, !dbg !1693
  br i1 %65, label %66, label %120, !dbg !1694

66:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1695, metadata !DIExpression()), !dbg !1697
  %67 = call ptr @bson_iter_utf8(ptr noundef %12, ptr noundef %11), !dbg !1698
  store ptr %67, ptr %13, align 8, !dbg !1697
  %68 = load ptr, ptr %10, align 8, !dbg !1699
  %69 = call zeroext i1 @bson_iter_init(ptr noundef %12, ptr noundef %68), !dbg !1701
  br i1 %69, label %70, label %119, !dbg !1702

70:                                               ; preds = %66
  %71 = call zeroext i1 @bson_iter_find(ptr noundef %12, ptr noundef @.str.35), !dbg !1703
  br i1 %71, label %72, label %119, !dbg !1704

72:                                               ; preds = %70
  %73 = call i32 @bson_iter_type(ptr noundef %12), !dbg !1705
  %74 = icmp eq i32 %73, 3, !dbg !1705
  br i1 %74, label %75, label %119, !dbg !1706

75:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1707, metadata !DIExpression()), !dbg !1709
  store ptr null, ptr %14, align 8, !dbg !1709
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1710, metadata !DIExpression()), !dbg !1711
  store i32 0, ptr %15, align 4, !dbg !1711
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1712, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1714, metadata !DIExpression()), !dbg !1715
  call void @bson_iter_document(ptr noundef %12, ptr noundef %15, ptr noundef %14), !dbg !1716
  %76 = load ptr, ptr %14, align 8, !dbg !1717
  %77 = load i32, ptr %15, align 4, !dbg !1718
  %78 = zext i32 %77 to i64, !dbg !1718
  %79 = call zeroext i1 @bson_init_static(ptr noundef %16, ptr noundef %76, i64 noundef %78), !dbg !1719
  %80 = call zeroext i1 @bson_iter_init(ptr noundef %17, ptr noundef %16), !dbg !1720
  br i1 %80, label %81, label %118, !dbg !1722

81:                                               ; preds = %75
  br label %82, !dbg !1723

82:                                               ; preds = %116, %81
  %83 = call zeroext i1 @bson_iter_next(ptr noundef %17), !dbg !1725
  br i1 %83, label %84, label %117, !dbg !1723

84:                                               ; preds = %82
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1726, metadata !DIExpression()), !dbg !1728
  %85 = call ptr @bson_iter_key(ptr noundef %17), !dbg !1729
  store ptr %85, ptr %18, align 8, !dbg !1728
  %86 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1730
  %87 = icmp eq i32 %86, 1, !dbg !1730
  br i1 %87, label %88, label %95, !dbg !1732

88:                                               ; preds = %84
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1733, metadata !DIExpression()), !dbg !1735
  %89 = call double @bson_iter_double(ptr noundef %17), !dbg !1736
  %90 = fptosi double %89 to i32, !dbg !1737
  store i32 %90, ptr %19, align 4, !dbg !1735
  %91 = load ptr, ptr %18, align 8, !dbg !1738
  %92 = load ptr, ptr %13, align 8, !dbg !1739
  %93 = load i32, ptr %19, align 4, !dbg !1740
  %94 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %91, ptr noundef %92, i32 noundef %93), !dbg !1741
  br label %116, !dbg !1742

95:                                               ; preds = %84
  %96 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1743
  %97 = icmp eq i32 %96, 16, !dbg !1743
  br i1 %97, label %98, label %104, !dbg !1745

98:                                               ; preds = %95
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1746, metadata !DIExpression()), !dbg !1748
  %99 = call i32 @bson_iter_int32(ptr noundef %17), !dbg !1749
  store i32 %99, ptr %20, align 4, !dbg !1748
  %100 = load ptr, ptr %18, align 8, !dbg !1750
  %101 = load ptr, ptr %13, align 8, !dbg !1751
  %102 = load i32, ptr %20, align 4, !dbg !1752
  %103 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %100, ptr noundef %101, i32 noundef %102), !dbg !1753
  br label %115, !dbg !1754

104:                                              ; preds = %95
  %105 = call i32 @bson_iter_type(ptr noundef %17), !dbg !1755
  %106 = icmp eq i32 %105, 18, !dbg !1755
  br i1 %106, label %107, label %114, !dbg !1757

107:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1758, metadata !DIExpression()), !dbg !1760
  %108 = call i64 @bson_iter_int64(ptr noundef %17), !dbg !1761
  %109 = trunc i64 %108 to i32, !dbg !1762
  store i32 %109, ptr %21, align 4, !dbg !1760
  %110 = load ptr, ptr %18, align 8, !dbg !1763
  %111 = load ptr, ptr %13, align 8, !dbg !1764
  %112 = load i32, ptr %21, align 4, !dbg !1765
  %113 = call i32 (ptr, ...) @printf(ptr noundef @.str.36, ptr noundef %110, ptr noundef %111, i32 noundef %112), !dbg !1766
  br label %114, !dbg !1767

114:                                              ; preds = %107, %104
  br label %115

115:                                              ; preds = %114, %98
  br label %116

116:                                              ; preds = %115, %88
  br label %82, !dbg !1723, !llvm.loop !1768

117:                                              ; preds = %82
  br label %118, !dbg !1770

118:                                              ; preds = %117, %75
  br label %119, !dbg !1771

119:                                              ; preds = %118, %72, %70, %66
  br label %120, !dbg !1772

120:                                              ; preds = %119, %63, %61, %58
  br label %55, !dbg !1683, !llvm.loop !1773

121:                                              ; preds = %55
  %122 = load ptr, ptr %8, align 8, !dbg !1775
  call void @mongoc_cursor_destroy(ptr noundef %122), !dbg !1776
  store i32 0, ptr %9, align 4, !dbg !1777
  br label %123

123:                                              ; preds = %121, %53
  %124 = load ptr, ptr %4, align 8, !dbg !1778
  call void @mongoc_collection_destroy(ptr noundef %124), !dbg !1779
  call void @bson_destroy(ptr noundef %5), !dbg !1780
  call void @bson_destroy(ptr noundef %7), !dbg !1781
  %125 = load i32, ptr %9, align 4, !dbg !1782
  store i32 %125, ptr %2, align 4, !dbg !1783
  br label %126, !dbg !1783

126:                                              ; preds = %123, %25
  %127 = load i32, ptr %2, align 4, !dbg !1784
  ret i32 %127, !dbg !1784
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mongo_auth_ping(ptr noundef %0) #0 !dbg !1785 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1786, metadata !DIExpression()), !dbg !1787
  br label %3, !dbg !1788

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !1789
  store ptr %4, ptr %2, align 8, !dbg !1789
  br label %5, !dbg !1789

5:                                                ; preds = %3
  ret void, !dbg !1791
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_get_ip_list(ptr noundef %0, ptr noundef %1) #0 !dbg !1792 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1793, metadata !DIExpression()), !dbg !1794
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1795, metadata !DIExpression()), !dbg !1796
  %5 = load ptr, ptr %3, align 8, !dbg !1797
  %6 = load ptr, ptr %4, align 8, !dbg !1798
  %7 = call i32 @mongo_read_realms_ip_lists(ptr noundef %5, ptr noundef %6), !dbg !1799
  ret i32 %7, !dbg !1800
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_permission_ip(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !1801 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca [129 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca [128 x i8], align 16
  %14 = alloca %struct._bson_t, align 128
  %15 = alloca %struct._bson_t, align 128
  %16 = alloca %struct._bson_t, align 128
  %17 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1802, metadata !DIExpression()), !dbg !1803
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1804, metadata !DIExpression()), !dbg !1805
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1806, metadata !DIExpression()), !dbg !1807
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1808, metadata !DIExpression()), !dbg !1809
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1810, metadata !DIExpression()), !dbg !1811
  %18 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !1812
  %19 = load ptr, ptr %6, align 8, !dbg !1813
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 128, ptr noundef @.str.37, ptr noundef %19) #8, !dbg !1814
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1815, metadata !DIExpression()), !dbg !1816
  %21 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1817
  store ptr %21, ptr %11, align 8, !dbg !1816
  %22 = load ptr, ptr %11, align 8, !dbg !1818
  %23 = icmp ne ptr %22, null, !dbg !1818
  br i1 %23, label %25, label %24, !dbg !1820

24:                                               ; preds = %4
  store i32 -1, ptr %5, align 4, !dbg !1821
  br label %66, !dbg !1821

25:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 -1, ptr %12, align 4, !dbg !1823
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 128, i1 false), !dbg !1825
  %26 = load ptr, ptr %7, align 8, !dbg !1826
  %27 = icmp ne ptr %26, null, !dbg !1826
  br i1 %27, label %30, label %28, !dbg !1828

28:                                               ; preds = %25
  %29 = getelementptr inbounds [128 x i8], ptr %13, i64 0, i64 0, !dbg !1829
  store ptr %29, ptr %7, align 8, !dbg !1830
  br label %30, !dbg !1831

30:                                               ; preds = %28, %25
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1832, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1834, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1836, metadata !DIExpression()), !dbg !1837
  call void @bson_init(ptr noundef %14), !dbg !1838
  %31 = load ptr, ptr %7, align 8, !dbg !1839
  %32 = load ptr, ptr %7, align 8, !dbg !1839
  %33 = call i64 @strlen(ptr noundef %32) #7, !dbg !1839
  %34 = trunc i64 %33 to i32, !dbg !1839
  %35 = call zeroext i1 @bson_append_utf8(ptr noundef %14, ptr noundef @.str.2, i32 noundef 5, ptr noundef %31, i32 noundef %34), !dbg !1839
  call void @bson_init(ptr noundef %15), !dbg !1840
  %36 = load i32, ptr %9, align 4, !dbg !1841
  %37 = icmp ne i32 %36, 0, !dbg !1841
  br i1 %37, label %38, label %40, !dbg !1843

38:                                               ; preds = %30
  %39 = call zeroext i1 @bson_append_document_begin(ptr noundef %15, ptr noundef @.str.28, i32 noundef -1, ptr noundef %16), !dbg !1844
  br label %42, !dbg !1846

40:                                               ; preds = %30
  %41 = call zeroext i1 @bson_append_document_begin(ptr noundef %15, ptr noundef @.str.25, i32 noundef -1, ptr noundef %16), !dbg !1847
  br label %42

42:                                               ; preds = %40, %38
  %43 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !1849
  %44 = getelementptr inbounds [129 x i8], ptr %10, i64 0, i64 0, !dbg !1849
  %45 = call i64 @strlen(ptr noundef %44) #7, !dbg !1849
  %46 = trunc i64 %45 to i32, !dbg !1849
  %47 = load ptr, ptr %8, align 8, !dbg !1849
  %48 = load ptr, ptr %8, align 8, !dbg !1849
  %49 = call i64 @strlen(ptr noundef %48) #7, !dbg !1849
  %50 = trunc i64 %49 to i32, !dbg !1849
  %51 = call zeroext i1 @bson_append_utf8(ptr noundef %16, ptr noundef %43, i32 noundef %46, ptr noundef %47, i32 noundef %50), !dbg !1849
  %52 = call zeroext i1 @bson_append_document_end(ptr noundef %15, ptr noundef %16), !dbg !1850
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1851, metadata !DIExpression()), !dbg !1853
  store i32 0, ptr %17, align 4, !dbg !1853
  %53 = load i32, ptr %9, align 4, !dbg !1854
  %54 = icmp ne i32 %53, 0, !dbg !1854
  br i1 %54, label %55, label %56, !dbg !1856

55:                                               ; preds = %42
  store i32 2, ptr %17, align 4, !dbg !1857
  br label %57, !dbg !1859

56:                                               ; preds = %42
  store i32 1, ptr %17, align 4, !dbg !1860
  br label %57

57:                                               ; preds = %56, %55
  %58 = load ptr, ptr %11, align 8, !dbg !1862
  %59 = load i32, ptr %17, align 4, !dbg !1864
  %60 = call zeroext i1 @mongoc_collection_update(ptr noundef %58, i32 noundef %59, ptr noundef %14, ptr noundef %15, ptr noundef null, ptr noundef null), !dbg !1865
  br i1 %60, label %62, label %61, !dbg !1866

61:                                               ; preds = %57
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.38), !dbg !1867
  br label %63, !dbg !1869

62:                                               ; preds = %57
  store i32 0, ptr %12, align 4, !dbg !1870
  br label %63

63:                                               ; preds = %62, %61
  %64 = load ptr, ptr %11, align 8, !dbg !1872
  call void @mongoc_collection_destroy(ptr noundef %64), !dbg !1873
  call void @bson_destroy(ptr noundef %14), !dbg !1874
  call void @bson_destroy(ptr noundef %15), !dbg !1875
  %65 = load i32, ptr %12, align 4, !dbg !1876
  store i32 %65, ptr %5, align 4, !dbg !1877
  br label %66, !dbg !1877

66:                                               ; preds = %63, %24
  %67 = load i32, ptr %5, align 4, !dbg !1878
  ret i32 %67, !dbg !1878
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mongo_reread_realms(ptr noundef %0) #0 !dbg !1879 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca %struct._bson_t, align 128
  %5 = alloca %struct._bson_t, align 128
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.bson_iter_t, align 128
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct._bson_t, align 128
  %15 = alloca %struct.bson_iter_t, align 128
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct._bson_t, align 128
  %23 = alloca %struct.bson_iter_t, align 128
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1880, metadata !DIExpression()), !dbg !1881
  br label %26, !dbg !1882

26:                                               ; preds = %1
  %27 = load ptr, ptr %2, align 8, !dbg !1883
  store ptr %27, ptr %2, align 8, !dbg !1883
  br label %28, !dbg !1883

28:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1885, metadata !DIExpression()), !dbg !1886
  %29 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !1887
  store ptr %29, ptr %3, align 8, !dbg !1886
  %30 = load ptr, ptr %3, align 8, !dbg !1888
  %31 = icmp ne ptr %30, null, !dbg !1888
  br i1 %31, label %33, label %32, !dbg !1890

32:                                               ; preds = %28
  br label %198, !dbg !1891

33:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1892, metadata !DIExpression()), !dbg !1893
  call void @bson_init(ptr noundef %4), !dbg !1894
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1895, metadata !DIExpression()), !dbg !1896
  call void @bson_init(ptr noundef %5), !dbg !1897
  %34 = call zeroext i1 @bson_append_int32(ptr noundef %5, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !1898
  %35 = call zeroext i1 @bson_append_int32(ptr noundef %5, ptr noundef @.str.26, i32 noundef 6, i32 noundef 1), !dbg !1899
  %36 = call zeroext i1 @bson_append_int32(ptr noundef %5, ptr noundef @.str.35, i32 noundef 7, i32 noundef 1), !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1901, metadata !DIExpression()), !dbg !1902
  %37 = load ptr, ptr %3, align 8, !dbg !1903
  %38 = call ptr @mongoc_collection_find(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %4, ptr noundef %5, ptr noundef null), !dbg !1904
  store ptr %38, ptr %6, align 8, !dbg !1905
  %39 = load ptr, ptr %6, align 8, !dbg !1906
  %40 = icmp ne ptr %39, null, !dbg !1906
  br i1 %40, label %42, label %41, !dbg !1908

41:                                               ; preds = %33
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30), !dbg !1909
  br label %196, !dbg !1911

42:                                               ; preds = %33
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1912, metadata !DIExpression()), !dbg !1917
  %43 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !1918
  store ptr %43, ptr %7, align 8, !dbg !1917
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1919, metadata !DIExpression()), !dbg !1920
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1921, metadata !DIExpression()), !dbg !1922
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1923, metadata !DIExpression()), !dbg !1924
  br label %44, !dbg !1925

44:                                               ; preds = %192, %42
  %45 = load ptr, ptr %6, align 8, !dbg !1926
  %46 = call zeroext i1 @mongoc_cursor_next(ptr noundef %45, ptr noundef %8), !dbg !1927
  br i1 %46, label %47, label %193, !dbg !1925

47:                                               ; preds = %44
  %48 = load ptr, ptr %8, align 8, !dbg !1928
  %49 = call zeroext i1 @bson_iter_init(ptr noundef %10, ptr noundef %48), !dbg !1931
  br i1 %49, label %50, label %192, !dbg !1932

50:                                               ; preds = %47
  %51 = call zeroext i1 @bson_iter_find(ptr noundef %10, ptr noundef @.str.2), !dbg !1933
  br i1 %51, label %52, label %192, !dbg !1934

52:                                               ; preds = %50
  %53 = call i32 @bson_iter_type(ptr noundef %10), !dbg !1935
  %54 = icmp eq i32 %53, 2, !dbg !1935
  br i1 %54, label %55, label %192, !dbg !1936

55:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1937, metadata !DIExpression()), !dbg !1939
  %56 = call ptr @bson_iter_utf8(ptr noundef %10, ptr noundef %9), !dbg !1940
  %57 = call noalias ptr @strdup(ptr noundef %56) #8, !dbg !1941
  store ptr %57, ptr %11, align 8, !dbg !1939
  %58 = load ptr, ptr %11, align 8, !dbg !1942
  %59 = call ptr @get_realm(ptr noundef %58), !dbg !1943
  %60 = load ptr, ptr %8, align 8, !dbg !1944
  %61 = call zeroext i1 @bson_iter_init(ptr noundef %10, ptr noundef %60), !dbg !1946
  br i1 %61, label %62, label %93, !dbg !1947

62:                                               ; preds = %55
  %63 = call zeroext i1 @bson_iter_find(ptr noundef %10, ptr noundef @.str.26), !dbg !1948
  br i1 %63, label %64, label %93, !dbg !1949

64:                                               ; preds = %62
  %65 = call i32 @bson_iter_type(ptr noundef %10), !dbg !1950
  %66 = icmp eq i32 %65, 4, !dbg !1950
  br i1 %66, label %67, label %93, !dbg !1951

67:                                               ; preds = %64
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1952, metadata !DIExpression()), !dbg !1954
  store ptr null, ptr %12, align 8, !dbg !1954
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1955, metadata !DIExpression()), !dbg !1956
  store i32 0, ptr %13, align 4, !dbg !1956
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1957, metadata !DIExpression()), !dbg !1958
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1959, metadata !DIExpression()), !dbg !1960
  call void @bson_iter_array(ptr noundef %10, ptr noundef %13, ptr noundef %12), !dbg !1961
  %68 = load ptr, ptr %12, align 8, !dbg !1962
  %69 = load i32, ptr %13, align 4, !dbg !1963
  %70 = zext i32 %69 to i64, !dbg !1963
  %71 = call zeroext i1 @bson_init_static(ptr noundef %14, ptr noundef %68, i64 noundef %70), !dbg !1964
  %72 = call zeroext i1 @bson_iter_init(ptr noundef %15, ptr noundef %14), !dbg !1965
  br i1 %72, label %73, label %92, !dbg !1967

73:                                               ; preds = %67
  br label %74, !dbg !1968

74:                                               ; preds = %90, %73
  %75 = call zeroext i1 @bson_iter_next(ptr noundef %15), !dbg !1970
  br i1 %75, label %76, label %91, !dbg !1968

76:                                               ; preds = %74
  %77 = call i32 @bson_iter_type(ptr noundef %15), !dbg !1971
  %78 = icmp eq i32 %77, 2, !dbg !1971
  br i1 %78, label %79, label %90, !dbg !1974

79:                                               ; preds = %76
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1975, metadata !DIExpression()), !dbg !1977
  %80 = call ptr @bson_iter_utf8(ptr noundef %15, ptr noundef %9), !dbg !1978
  %81 = call noalias ptr @strdup(ptr noundef %80) #8, !dbg !1979
  store ptr %81, ptr %16, align 8, !dbg !1977
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1980, metadata !DIExpression()), !dbg !1981
  %82 = load ptr, ptr %11, align 8, !dbg !1982
  %83 = call noalias ptr @strdup(ptr noundef %82) #8, !dbg !1983
  store ptr %83, ptr %17, align 8, !dbg !1981
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1984, metadata !DIExpression()), !dbg !1985
  %84 = load ptr, ptr %17, align 8, !dbg !1986
  store ptr %84, ptr %18, align 8, !dbg !1985
  %85 = load ptr, ptr %7, align 8, !dbg !1987
  %86 = load ptr, ptr %16, align 8, !dbg !1988
  %87 = load ptr, ptr %18, align 8, !dbg !1989
  %88 = call i32 @ur_string_map_put(ptr noundef %85, ptr noundef %86, ptr noundef %87), !dbg !1990
  %89 = load ptr, ptr %16, align 8, !dbg !1991
  call void @free(ptr noundef %89) #8, !dbg !1992
  br label %90, !dbg !1993

90:                                               ; preds = %79, %76
  br label %74, !dbg !1968, !llvm.loop !1994

91:                                               ; preds = %74
  br label %92, !dbg !1996

92:                                               ; preds = %91, %67
  br label %93, !dbg !1997

93:                                               ; preds = %92, %64, %62, %55
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1998, metadata !DIExpression()), !dbg !2024
  %94 = load ptr, ptr %11, align 8, !dbg !2025
  %95 = call ptr @get_realm(ptr noundef %94), !dbg !2026
  store ptr %95, ptr %19, align 8, !dbg !2024
  call void @lock_realms(), !dbg !2027
  %96 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !2028
  %97 = load ptr, ptr %19, align 8, !dbg !2029
  %98 = getelementptr inbounds %struct._realm_params_t, ptr %97, i32 0, i32 1, !dbg !2030
  %99 = getelementptr inbounds %struct._realm_options_t, ptr %98, i32 0, i32 1, !dbg !2031
  %100 = getelementptr inbounds %struct._perf_options_t, ptr %99, i32 0, i32 0, !dbg !2032
  store volatile i64 %96, ptr %100, align 8, !dbg !2033
  %101 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !2034
  %102 = load ptr, ptr %19, align 8, !dbg !2035
  %103 = getelementptr inbounds %struct._realm_params_t, ptr %102, i32 0, i32 1, !dbg !2036
  %104 = getelementptr inbounds %struct._realm_options_t, ptr %103, i32 0, i32 1, !dbg !2037
  %105 = getelementptr inbounds %struct._perf_options_t, ptr %104, i32 0, i32 1, !dbg !2038
  store i32 %101, ptr %105, align 8, !dbg !2039
  %106 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !2040
  %107 = load ptr, ptr %19, align 8, !dbg !2041
  %108 = getelementptr inbounds %struct._realm_params_t, ptr %107, i32 0, i32 1, !dbg !2042
  %109 = getelementptr inbounds %struct._realm_options_t, ptr %108, i32 0, i32 1, !dbg !2043
  %110 = getelementptr inbounds %struct._perf_options_t, ptr %109, i32 0, i32 2, !dbg !2044
  store i32 %106, ptr %110, align 4, !dbg !2045
  call void @unlock_realms(), !dbg !2046
  %111 = load ptr, ptr %8, align 8, !dbg !2047
  %112 = call zeroext i1 @bson_iter_init(ptr noundef %10, ptr noundef %111), !dbg !2049
  br i1 %112, label %113, label %190, !dbg !2050

113:                                              ; preds = %93
  %114 = call zeroext i1 @bson_iter_find(ptr noundef %10, ptr noundef @.str.35), !dbg !2051
  br i1 %114, label %115, label %190, !dbg !2052

115:                                              ; preds = %113
  %116 = call i32 @bson_iter_type(ptr noundef %10), !dbg !2053
  %117 = icmp eq i32 %116, 3, !dbg !2053
  br i1 %117, label %118, label %190, !dbg !2054

118:                                              ; preds = %115
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2055, metadata !DIExpression()), !dbg !2057
  store ptr null, ptr %20, align 8, !dbg !2057
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2058, metadata !DIExpression()), !dbg !2059
  store i32 0, ptr %21, align 4, !dbg !2059
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2060, metadata !DIExpression()), !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2062, metadata !DIExpression()), !dbg !2063
  call void @bson_iter_document(ptr noundef %10, ptr noundef %21, ptr noundef %20), !dbg !2064
  %119 = load ptr, ptr %20, align 8, !dbg !2065
  %120 = load i32, ptr %21, align 4, !dbg !2066
  %121 = zext i32 %120 to i64, !dbg !2066
  %122 = call zeroext i1 @bson_init_static(ptr noundef %22, ptr noundef %119, i64 noundef %121), !dbg !2067
  %123 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %22), !dbg !2068
  br i1 %123, label %124, label %189, !dbg !2070

124:                                              ; preds = %118
  br label %125, !dbg !2071

125:                                              ; preds = %187, %124
  %126 = call zeroext i1 @bson_iter_next(ptr noundef %23), !dbg !2073
  br i1 %126, label %127, label %188, !dbg !2071

127:                                              ; preds = %125
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2074, metadata !DIExpression()), !dbg !2076
  %128 = call ptr @bson_iter_key(ptr noundef %23), !dbg !2077
  store ptr %128, ptr %24, align 8, !dbg !2076
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2078, metadata !DIExpression()), !dbg !2079
  store i64 0, ptr %25, align 8, !dbg !2079
  %129 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2080
  %130 = icmp eq i32 %129, 1, !dbg !2080
  br i1 %130, label %131, label %134, !dbg !2082

131:                                              ; preds = %127
  %132 = call double @bson_iter_double(ptr noundef %23), !dbg !2083
  %133 = fptoui double %132 to i64, !dbg !2085
  store i64 %133, ptr %25, align 8, !dbg !2086
  br label %147, !dbg !2087

134:                                              ; preds = %127
  %135 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2088
  %136 = icmp eq i32 %135, 16, !dbg !2088
  br i1 %136, label %137, label %140, !dbg !2090

137:                                              ; preds = %134
  %138 = call i32 @bson_iter_int32(ptr noundef %23), !dbg !2091
  %139 = sext i32 %138 to i64, !dbg !2093
  store i64 %139, ptr %25, align 8, !dbg !2094
  br label %146, !dbg !2095

140:                                              ; preds = %134
  %141 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2096
  %142 = icmp eq i32 %141, 18, !dbg !2096
  br i1 %142, label %143, label %145, !dbg !2098

143:                                              ; preds = %140
  %144 = call i64 @bson_iter_int64(ptr noundef %23), !dbg !2099
  store i64 %144, ptr %25, align 8, !dbg !2101
  br label %145, !dbg !2102

145:                                              ; preds = %143, %140
  br label %146

146:                                              ; preds = %145, %137
  br label %147

147:                                              ; preds = %146, %131
  %148 = load i64, ptr %25, align 8, !dbg !2103
  %149 = icmp ne i64 %148, 0, !dbg !2103
  br i1 %149, label %150, label %187, !dbg !2105

150:                                              ; preds = %147
  %151 = load ptr, ptr %24, align 8, !dbg !2106
  %152 = call i32 @strcmp(ptr noundef %151, ptr noundef @.str.39) #7, !dbg !2109
  %153 = icmp ne i32 %152, 0, !dbg !2109
  br i1 %153, label %160, label %154, !dbg !2110

154:                                              ; preds = %150
  %155 = load i64, ptr %25, align 8, !dbg !2111
  %156 = load ptr, ptr %19, align 8, !dbg !2112
  %157 = getelementptr inbounds %struct._realm_params_t, ptr %156, i32 0, i32 1, !dbg !2113
  %158 = getelementptr inbounds %struct._realm_options_t, ptr %157, i32 0, i32 1, !dbg !2114
  %159 = getelementptr inbounds %struct._perf_options_t, ptr %158, i32 0, i32 0, !dbg !2115
  store volatile i64 %155, ptr %159, align 8, !dbg !2116
  br label %186, !dbg !2112

160:                                              ; preds = %150
  %161 = load ptr, ptr %24, align 8, !dbg !2117
  %162 = call i32 @strcmp(ptr noundef %161, ptr noundef @.str.40) #7, !dbg !2119
  %163 = icmp ne i32 %162, 0, !dbg !2119
  br i1 %163, label %171, label %164, !dbg !2120

164:                                              ; preds = %160
  %165 = load i64, ptr %25, align 8, !dbg !2121
  %166 = trunc i64 %165 to i32, !dbg !2122
  %167 = load ptr, ptr %19, align 8, !dbg !2123
  %168 = getelementptr inbounds %struct._realm_params_t, ptr %167, i32 0, i32 1, !dbg !2124
  %169 = getelementptr inbounds %struct._realm_options_t, ptr %168, i32 0, i32 1, !dbg !2125
  %170 = getelementptr inbounds %struct._perf_options_t, ptr %169, i32 0, i32 1, !dbg !2126
  store i32 %166, ptr %170, align 8, !dbg !2127
  br label %185, !dbg !2123

171:                                              ; preds = %160
  %172 = load ptr, ptr %24, align 8, !dbg !2128
  %173 = call i32 @strcmp(ptr noundef %172, ptr noundef @.str.41) #7, !dbg !2130
  %174 = icmp ne i32 %173, 0, !dbg !2130
  br i1 %174, label %182, label %175, !dbg !2131

175:                                              ; preds = %171
  %176 = load i64, ptr %25, align 8, !dbg !2132
  %177 = trunc i64 %176 to i32, !dbg !2133
  %178 = load ptr, ptr %19, align 8, !dbg !2134
  %179 = getelementptr inbounds %struct._realm_params_t, ptr %178, i32 0, i32 1, !dbg !2135
  %180 = getelementptr inbounds %struct._realm_options_t, ptr %179, i32 0, i32 1, !dbg !2136
  %181 = getelementptr inbounds %struct._perf_options_t, ptr %180, i32 0, i32 2, !dbg !2137
  store i32 %177, ptr %181, align 4, !dbg !2138
  br label %184, !dbg !2134

182:                                              ; preds = %171
  %183 = load ptr, ptr %24, align 8, !dbg !2139
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.42, ptr noundef %183), !dbg !2141
  br label %184

184:                                              ; preds = %182, %175
  br label %185

185:                                              ; preds = %184, %164
  br label %186

186:                                              ; preds = %185, %154
  br label %187, !dbg !2142

187:                                              ; preds = %186, %147
  br label %125, !dbg !2071, !llvm.loop !2143

188:                                              ; preds = %125
  br label %189, !dbg !2145

189:                                              ; preds = %188, %118
  br label %190, !dbg !2146

190:                                              ; preds = %189, %115, %113, %93
  %191 = load ptr, ptr %11, align 8, !dbg !2147
  call void @free(ptr noundef %191) #8, !dbg !2148
  br label %192, !dbg !2149

192:                                              ; preds = %190, %52, %50, %47
  br label %44, !dbg !1925, !llvm.loop !2150

193:                                              ; preds = %44
  %194 = load ptr, ptr %7, align 8, !dbg !2152
  call void @update_o_to_realm(ptr noundef %194), !dbg !2153
  %195 = load ptr, ptr %6, align 8, !dbg !2154
  call void @mongoc_cursor_destroy(ptr noundef %195), !dbg !2155
  br label %196

196:                                              ; preds = %193, %41
  %197 = load ptr, ptr %3, align 8, !dbg !2156
  call void @mongoc_collection_destroy(ptr noundef %197), !dbg !2157
  call void @bson_destroy(ptr noundef %4), !dbg !2158
  call void @bson_destroy(ptr noundef %5), !dbg !2159
  br label %198, !dbg !2160

198:                                              ; preds = %196, %32
  ret void, !dbg !2160
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_oauth_key(ptr noundef %0) #0 !dbg !2161 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._bson_t, align 128
  %6 = alloca %struct._bson_t, align 128
  %7 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2162, metadata !DIExpression()), !dbg !2163
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2164, metadata !DIExpression()), !dbg !2165
  %8 = call ptr @mongo_get_collection(ptr noundef @.str.43), !dbg !2166
  store ptr %8, ptr %4, align 8, !dbg !2165
  %9 = load ptr, ptr %4, align 8, !dbg !2167
  %10 = icmp ne ptr %9, null, !dbg !2167
  br i1 %10, label %12, label %11, !dbg !2169

11:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2170
  br label %73, !dbg !2170

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2171, metadata !DIExpression()), !dbg !2172
  call void @bson_init(ptr noundef %5), !dbg !2173
  %13 = load ptr, ptr %3, align 8, !dbg !2174
  %14 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %13, i32 0, i32 0, !dbg !2174
  %15 = getelementptr inbounds [129 x i8], ptr %14, i64 0, i64 0, !dbg !2174
  %16 = load ptr, ptr %3, align 8, !dbg !2174
  %17 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %16, i32 0, i32 0, !dbg !2174
  %18 = getelementptr inbounds [129 x i8], ptr %17, i64 0, i64 0, !dbg !2174
  %19 = call i64 @strlen(ptr noundef %18) #7, !dbg !2174
  %20 = trunc i64 %19 to i32, !dbg !2174
  %21 = call zeroext i1 @bson_append_utf8(ptr noundef %5, ptr noundef @.str.44, i32 noundef 3, ptr noundef %15, i32 noundef %20), !dbg !2174
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2175, metadata !DIExpression()), !dbg !2176
  call void @bson_init(ptr noundef %6), !dbg !2177
  %22 = load ptr, ptr %3, align 8, !dbg !2178
  %23 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %22, i32 0, i32 0, !dbg !2178
  %24 = getelementptr inbounds [129 x i8], ptr %23, i64 0, i64 0, !dbg !2178
  %25 = load ptr, ptr %3, align 8, !dbg !2178
  %26 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %25, i32 0, i32 0, !dbg !2178
  %27 = getelementptr inbounds [129 x i8], ptr %26, i64 0, i64 0, !dbg !2178
  %28 = call i64 @strlen(ptr noundef %27) #7, !dbg !2178
  %29 = trunc i64 %28 to i32, !dbg !2178
  %30 = call zeroext i1 @bson_append_utf8(ptr noundef %6, ptr noundef @.str.44, i32 noundef 3, ptr noundef %24, i32 noundef %29), !dbg !2178
  %31 = load ptr, ptr %3, align 8, !dbg !2179
  %32 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %31, i32 0, i32 4, !dbg !2179
  %33 = getelementptr inbounds [65 x i8], ptr %32, i64 0, i64 0, !dbg !2179
  %34 = load ptr, ptr %3, align 8, !dbg !2179
  %35 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %34, i32 0, i32 4, !dbg !2179
  %36 = getelementptr inbounds [65 x i8], ptr %35, i64 0, i64 0, !dbg !2179
  %37 = call i64 @strlen(ptr noundef %36) #7, !dbg !2179
  %38 = trunc i64 %37 to i32, !dbg !2179
  %39 = call zeroext i1 @bson_append_utf8(ptr noundef %6, ptr noundef @.str.45, i32 noundef 9, ptr noundef %33, i32 noundef %38), !dbg !2179
  %40 = load ptr, ptr %3, align 8, !dbg !2180
  %41 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %40, i32 0, i32 5, !dbg !2180
  %42 = getelementptr inbounds [128 x i8], ptr %41, i64 0, i64 0, !dbg !2180
  %43 = load ptr, ptr %3, align 8, !dbg !2180
  %44 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %43, i32 0, i32 5, !dbg !2180
  %45 = getelementptr inbounds [128 x i8], ptr %44, i64 0, i64 0, !dbg !2180
  %46 = call i64 @strlen(ptr noundef %45) #7, !dbg !2180
  %47 = trunc i64 %46 to i32, !dbg !2180
  %48 = call zeroext i1 @bson_append_utf8(ptr noundef %6, ptr noundef @.str.2, i32 noundef 5, ptr noundef %42, i32 noundef %47), !dbg !2180
  %49 = load ptr, ptr %3, align 8, !dbg !2181
  %50 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %49, i32 0, i32 1, !dbg !2181
  %51 = getelementptr inbounds [257 x i8], ptr %50, i64 0, i64 0, !dbg !2181
  %52 = load ptr, ptr %3, align 8, !dbg !2181
  %53 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %52, i32 0, i32 1, !dbg !2181
  %54 = getelementptr inbounds [257 x i8], ptr %53, i64 0, i64 0, !dbg !2181
  %55 = call i64 @strlen(ptr noundef %54) #7, !dbg !2181
  %56 = trunc i64 %55 to i32, !dbg !2181
  %57 = call zeroext i1 @bson_append_utf8(ptr noundef %6, ptr noundef @.str.46, i32 noundef 7, ptr noundef %51, i32 noundef %56), !dbg !2181
  %58 = load ptr, ptr %3, align 8, !dbg !2182
  %59 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %58, i32 0, i32 2, !dbg !2182
  %60 = load i64, ptr %59, align 8, !dbg !2182
  %61 = call zeroext i1 @bson_append_int64(ptr noundef %6, ptr noundef @.str.47, i32 noundef 9, i64 noundef %60), !dbg !2182
  %62 = load ptr, ptr %3, align 8, !dbg !2183
  %63 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %62, i32 0, i32 3, !dbg !2183
  %64 = load i32, ptr %63, align 8, !dbg !2183
  %65 = call zeroext i1 @bson_append_int32(ptr noundef %6, ptr noundef @.str.48, i32 noundef 8, i32 noundef %64), !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2184, metadata !DIExpression()), !dbg !2185
  store i32 -1, ptr %7, align 4, !dbg !2185
  %66 = load ptr, ptr %4, align 8, !dbg !2186
  %67 = call zeroext i1 @mongoc_collection_update(ptr noundef %66, i32 noundef 1, ptr noundef %5, ptr noundef %6, ptr noundef null, ptr noundef null), !dbg !2188
  br i1 %67, label %69, label %68, !dbg !2189

68:                                               ; preds = %12
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.49), !dbg !2190
  br label %70, !dbg !2192

69:                                               ; preds = %12
  store i32 0, ptr %7, align 4, !dbg !2193
  br label %70

70:                                               ; preds = %69, %68
  %71 = load ptr, ptr %4, align 8, !dbg !2195
  call void @mongoc_collection_destroy(ptr noundef %71), !dbg !2196
  call void @bson_destroy(ptr noundef %6), !dbg !2197
  call void @bson_destroy(ptr noundef %5), !dbg !2198
  %72 = load i32, ptr %7, align 4, !dbg !2199
  store i32 %72, ptr %2, align 4, !dbg !2200
  br label %73, !dbg !2200

73:                                               ; preds = %70, %11
  %74 = load i32, ptr %2, align 4, !dbg !2201
  ret i32 %74, !dbg !2201
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_get_oauth_key(ptr noundef %0, ptr noundef %1) #0 !dbg !2202 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca %struct._bson_t, align 128
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bson_iter_t, align 128
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2203, metadata !DIExpression()), !dbg !2204
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2205, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2207, metadata !DIExpression()), !dbg !2208
  %18 = call ptr @mongo_get_collection(ptr noundef @.str.43), !dbg !2209
  store ptr %18, ptr %6, align 8, !dbg !2208
  %19 = load ptr, ptr %6, align 8, !dbg !2210
  %20 = icmp ne ptr %19, null, !dbg !2210
  br i1 %20, label %22, label %21, !dbg !2212

21:                                               ; preds = %2
  store i32 -1, ptr %3, align 4, !dbg !2213
  br label %183, !dbg !2213

22:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2214, metadata !DIExpression()), !dbg !2215
  call void @bson_init(ptr noundef %7), !dbg !2216
  %23 = load ptr, ptr %4, align 8, !dbg !2217
  %24 = load ptr, ptr %4, align 8, !dbg !2217
  %25 = call i64 @strlen(ptr noundef %24) #7, !dbg !2217
  %26 = trunc i64 %25 to i32, !dbg !2217
  %27 = call zeroext i1 @bson_append_utf8(ptr noundef %7, ptr noundef @.str.44, i32 noundef 3, ptr noundef %23, i32 noundef %26), !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2218, metadata !DIExpression()), !dbg !2219
  call void @bson_init(ptr noundef %8), !dbg !2220
  %28 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.48, i32 noundef 8, i32 noundef 1), !dbg !2221
  %29 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.47, i32 noundef 9, i32 noundef 1), !dbg !2222
  %30 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.45, i32 noundef 9, i32 noundef 1), !dbg !2223
  %31 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !2224
  %32 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.46, i32 noundef 7, i32 noundef 1), !dbg !2225
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2226, metadata !DIExpression()), !dbg !2227
  %33 = load ptr, ptr %6, align 8, !dbg !2228
  %34 = call ptr @mongoc_collection_find(ptr noundef %33, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %7, ptr noundef %8, ptr noundef null), !dbg !2229
  store ptr %34, ptr %9, align 8, !dbg !2230
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2231, metadata !DIExpression()), !dbg !2232
  store i32 -1, ptr %10, align 4, !dbg !2232
  %35 = load ptr, ptr %5, align 8, !dbg !2233
  call void @llvm.memset.p0.i64(ptr align 8 %35, i8 0, i64 600, i1 false), !dbg !2234
  br label %36, !dbg !2235

36:                                               ; preds = %22
  %37 = load ptr, ptr %5, align 8, !dbg !2236
  %38 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %37, i32 0, i32 0, !dbg !2236
  %39 = getelementptr inbounds [129 x i8], ptr %38, i64 0, i64 0, !dbg !2236
  %40 = load ptr, ptr %4, align 8, !dbg !2236
  %41 = icmp ne ptr %39, %40, !dbg !2236
  br i1 %41, label %42, label %55, !dbg !2239

42:                                               ; preds = %36
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2240, metadata !DIExpression()), !dbg !2244
  store i64 129, ptr %11, align 8, !dbg !2244
  %43 = load ptr, ptr %5, align 8, !dbg !2244
  %44 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %43, i32 0, i32 0, !dbg !2244
  %45 = getelementptr inbounds [129 x i8], ptr %44, i64 0, i64 0, !dbg !2244
  %46 = load ptr, ptr %4, align 8, !dbg !2244
  %47 = load i64, ptr %11, align 8, !dbg !2244
  %48 = call ptr @strncpy(ptr noundef %45, ptr noundef %46, i64 noundef %47) #8, !dbg !2244
  %49 = load ptr, ptr %5, align 8, !dbg !2244
  %50 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %49, i32 0, i32 0, !dbg !2244
  %51 = getelementptr inbounds [129 x i8], ptr %50, i64 0, i64 0, !dbg !2244
  %52 = load i64, ptr %11, align 8, !dbg !2244
  %53 = sub i64 %52, 1, !dbg !2244
  %54 = getelementptr inbounds i8, ptr %51, i64 %53, !dbg !2244
  store i8 0, ptr %54, align 1, !dbg !2244
  br label %55, !dbg !2245

55:                                               ; preds = %42, %36
  br label %56, !dbg !2239

56:                                               ; preds = %55
  %57 = load ptr, ptr %9, align 8, !dbg !2246
  %58 = icmp ne ptr %57, null, !dbg !2246
  br i1 %58, label %60, label %59, !dbg !2248

59:                                               ; preds = %56
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.50), !dbg !2249
  br label %180, !dbg !2251

60:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2252, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2257, metadata !DIExpression()), !dbg !2258
  %61 = load ptr, ptr %9, align 8, !dbg !2259
  %62 = call zeroext i1 @mongoc_cursor_next(ptr noundef %61, ptr noundef %12), !dbg !2261
  br i1 %62, label %63, label %178, !dbg !2262

63:                                               ; preds = %60
  %64 = load ptr, ptr %12, align 8, !dbg !2263
  %65 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %64), !dbg !2266
  br i1 %65, label %66, label %93, !dbg !2267

66:                                               ; preds = %63
  %67 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.45), !dbg !2268
  br i1 %67, label %68, label %93, !dbg !2269

68:                                               ; preds = %66
  %69 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2270
  %70 = icmp eq i32 %69, 2, !dbg !2270
  br i1 %70, label %71, label %93, !dbg !2271

71:                                               ; preds = %68
  br label %72, !dbg !2272

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 8, !dbg !2274
  %74 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %73, i32 0, i32 4, !dbg !2274
  %75 = getelementptr inbounds [65 x i8], ptr %74, i64 0, i64 0, !dbg !2274
  %76 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2274
  %77 = icmp ne ptr %75, %76, !dbg !2274
  br i1 %77, label %78, label %91, !dbg !2277

78:                                               ; preds = %72
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2278, metadata !DIExpression()), !dbg !2282
  store i64 65, ptr %15, align 8, !dbg !2282
  %79 = load ptr, ptr %5, align 8, !dbg !2282
  %80 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %79, i32 0, i32 4, !dbg !2282
  %81 = getelementptr inbounds [65 x i8], ptr %80, i64 0, i64 0, !dbg !2282
  %82 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2282
  %83 = load i64, ptr %15, align 8, !dbg !2282
  %84 = call ptr @strncpy(ptr noundef %81, ptr noundef %82, i64 noundef %83) #8, !dbg !2282
  %85 = load ptr, ptr %5, align 8, !dbg !2282
  %86 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %85, i32 0, i32 4, !dbg !2282
  %87 = getelementptr inbounds [65 x i8], ptr %86, i64 0, i64 0, !dbg !2282
  %88 = load i64, ptr %15, align 8, !dbg !2282
  %89 = sub i64 %88, 1, !dbg !2282
  %90 = getelementptr inbounds i8, ptr %87, i64 %89, !dbg !2282
  store i8 0, ptr %90, align 1, !dbg !2282
  br label %91, !dbg !2283

91:                                               ; preds = %78, %72
  br label %92, !dbg !2277

92:                                               ; preds = %91
  br label %93, !dbg !2284

93:                                               ; preds = %92, %68, %66, %63
  %94 = load ptr, ptr %12, align 8, !dbg !2285
  %95 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %94), !dbg !2287
  br i1 %95, label %96, label %123, !dbg !2288

96:                                               ; preds = %93
  %97 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.2), !dbg !2289
  br i1 %97, label %98, label %123, !dbg !2290

98:                                               ; preds = %96
  %99 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2291
  %100 = icmp eq i32 %99, 2, !dbg !2291
  br i1 %100, label %101, label %123, !dbg !2292

101:                                              ; preds = %98
  br label %102, !dbg !2293

102:                                              ; preds = %101
  %103 = load ptr, ptr %5, align 8, !dbg !2295
  %104 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %103, i32 0, i32 5, !dbg !2295
  %105 = getelementptr inbounds [128 x i8], ptr %104, i64 0, i64 0, !dbg !2295
  %106 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2295
  %107 = icmp ne ptr %105, %106, !dbg !2295
  br i1 %107, label %108, label %121, !dbg !2298

108:                                              ; preds = %102
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2299, metadata !DIExpression()), !dbg !2303
  store i64 128, ptr %16, align 8, !dbg !2303
  %109 = load ptr, ptr %5, align 8, !dbg !2303
  %110 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %109, i32 0, i32 5, !dbg !2303
  %111 = getelementptr inbounds [128 x i8], ptr %110, i64 0, i64 0, !dbg !2303
  %112 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2303
  %113 = load i64, ptr %16, align 8, !dbg !2303
  %114 = call ptr @strncpy(ptr noundef %111, ptr noundef %112, i64 noundef %113) #8, !dbg !2303
  %115 = load ptr, ptr %5, align 8, !dbg !2303
  %116 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %115, i32 0, i32 5, !dbg !2303
  %117 = getelementptr inbounds [128 x i8], ptr %116, i64 0, i64 0, !dbg !2303
  %118 = load i64, ptr %16, align 8, !dbg !2303
  %119 = sub i64 %118, 1, !dbg !2303
  %120 = getelementptr inbounds i8, ptr %117, i64 %119, !dbg !2303
  store i8 0, ptr %120, align 1, !dbg !2303
  br label %121, !dbg !2304

121:                                              ; preds = %108, %102
  br label %122, !dbg !2298

122:                                              ; preds = %121
  br label %123, !dbg !2305

123:                                              ; preds = %122, %98, %96, %93
  %124 = load ptr, ptr %12, align 8, !dbg !2306
  %125 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %124), !dbg !2308
  br i1 %125, label %126, label %153, !dbg !2309

126:                                              ; preds = %123
  %127 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.46), !dbg !2310
  br i1 %127, label %128, label %153, !dbg !2311

128:                                              ; preds = %126
  %129 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2312
  %130 = icmp eq i32 %129, 2, !dbg !2312
  br i1 %130, label %131, label %153, !dbg !2313

131:                                              ; preds = %128
  br label %132, !dbg !2314

132:                                              ; preds = %131
  %133 = load ptr, ptr %5, align 8, !dbg !2316
  %134 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %133, i32 0, i32 1, !dbg !2316
  %135 = getelementptr inbounds [257 x i8], ptr %134, i64 0, i64 0, !dbg !2316
  %136 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2316
  %137 = icmp ne ptr %135, %136, !dbg !2316
  br i1 %137, label %138, label %151, !dbg !2319

138:                                              ; preds = %132
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2320, metadata !DIExpression()), !dbg !2324
  store i64 257, ptr %17, align 8, !dbg !2324
  %139 = load ptr, ptr %5, align 8, !dbg !2324
  %140 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %139, i32 0, i32 1, !dbg !2324
  %141 = getelementptr inbounds [257 x i8], ptr %140, i64 0, i64 0, !dbg !2324
  %142 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !2324
  %143 = load i64, ptr %17, align 8, !dbg !2324
  %144 = call ptr @strncpy(ptr noundef %141, ptr noundef %142, i64 noundef %143) #8, !dbg !2324
  %145 = load ptr, ptr %5, align 8, !dbg !2324
  %146 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %145, i32 0, i32 1, !dbg !2324
  %147 = getelementptr inbounds [257 x i8], ptr %146, i64 0, i64 0, !dbg !2324
  %148 = load i64, ptr %17, align 8, !dbg !2324
  %149 = sub i64 %148, 1, !dbg !2324
  %150 = getelementptr inbounds i8, ptr %147, i64 %149, !dbg !2324
  store i8 0, ptr %150, align 1, !dbg !2324
  br label %151, !dbg !2325

151:                                              ; preds = %138, %132
  br label %152, !dbg !2319

152:                                              ; preds = %151
  br label %153, !dbg !2326

153:                                              ; preds = %152, %128, %126, %123
  %154 = load ptr, ptr %12, align 8, !dbg !2327
  %155 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %154), !dbg !2329
  br i1 %155, label %156, label %165, !dbg !2330

156:                                              ; preds = %153
  %157 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.47), !dbg !2331
  br i1 %157, label %158, label %165, !dbg !2332

158:                                              ; preds = %156
  %159 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2333
  %160 = icmp eq i32 %159, 18, !dbg !2333
  br i1 %160, label %161, label %165, !dbg !2334

161:                                              ; preds = %158
  %162 = call i64 @bson_iter_int64(ptr noundef %14), !dbg !2335
  %163 = load ptr, ptr %5, align 8, !dbg !2337
  %164 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %163, i32 0, i32 2, !dbg !2338
  store i64 %162, ptr %164, align 8, !dbg !2339
  br label %165, !dbg !2340

165:                                              ; preds = %161, %158, %156, %153
  %166 = load ptr, ptr %12, align 8, !dbg !2341
  %167 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %166), !dbg !2343
  br i1 %167, label %168, label %177, !dbg !2344

168:                                              ; preds = %165
  %169 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.48), !dbg !2345
  br i1 %169, label %170, label %177, !dbg !2346

170:                                              ; preds = %168
  %171 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2347
  %172 = icmp eq i32 %171, 16, !dbg !2347
  br i1 %172, label %173, label %177, !dbg !2348

173:                                              ; preds = %170
  %174 = call i32 @bson_iter_int32(ptr noundef %14), !dbg !2349
  %175 = load ptr, ptr %5, align 8, !dbg !2351
  %176 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %175, i32 0, i32 3, !dbg !2352
  store i32 %174, ptr %176, align 8, !dbg !2353
  br label %177, !dbg !2354

177:                                              ; preds = %173, %170, %168, %165
  store i32 0, ptr %10, align 4, !dbg !2355
  br label %178, !dbg !2356

178:                                              ; preds = %177, %60
  %179 = load ptr, ptr %9, align 8, !dbg !2357
  call void @mongoc_cursor_destroy(ptr noundef %179), !dbg !2358
  br label %180

180:                                              ; preds = %178, %59
  %181 = load ptr, ptr %6, align 8, !dbg !2359
  call void @mongoc_collection_destroy(ptr noundef %181), !dbg !2360
  call void @bson_destroy(ptr noundef %7), !dbg !2361
  call void @bson_destroy(ptr noundef %8), !dbg !2362
  %182 = load i32, ptr %10, align 4, !dbg !2363
  store i32 %182, ptr %3, align 4, !dbg !2364
  br label %183, !dbg !2364

183:                                              ; preds = %180, %21
  %184 = load i32, ptr %3, align 4, !dbg !2365
  ret i32 %184, !dbg !2365
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_del_oauth_key(ptr noundef %0) #0 !dbg !2366 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._bson_t, align 128
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2369, metadata !DIExpression()), !dbg !2370
  %7 = call ptr @mongo_get_collection(ptr noundef @.str.43), !dbg !2371
  store ptr %7, ptr %4, align 8, !dbg !2370
  %8 = load ptr, ptr %4, align 8, !dbg !2372
  %9 = icmp ne ptr %8, null, !dbg !2372
  br i1 %9, label %11, label %10, !dbg !2374

10:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2375
  br label %24, !dbg !2375

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @bson_init(ptr noundef %5), !dbg !2378
  %12 = load ptr, ptr %3, align 8, !dbg !2379
  %13 = load ptr, ptr %3, align 8, !dbg !2379
  %14 = call i64 @strlen(ptr noundef %13) #7, !dbg !2379
  %15 = trunc i64 %14 to i32, !dbg !2379
  %16 = call zeroext i1 @bson_append_utf8(ptr noundef %5, ptr noundef @.str.44, i32 noundef 3, ptr noundef %12, i32 noundef %15), !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2380, metadata !DIExpression()), !dbg !2381
  store i32 -1, ptr %6, align 4, !dbg !2381
  %17 = load ptr, ptr %4, align 8, !dbg !2382
  %18 = call zeroext i1 @mongoc_collection_delete(ptr noundef %17, i32 noundef 1, ptr noundef %5, ptr noundef null, ptr noundef null), !dbg !2384
  br i1 %18, label %20, label %19, !dbg !2385

19:                                               ; preds = %11
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.51), !dbg !2386
  br label %21, !dbg !2388

20:                                               ; preds = %11
  store i32 0, ptr %6, align 4, !dbg !2389
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %4, align 8, !dbg !2391
  call void @mongoc_collection_destroy(ptr noundef %22), !dbg !2392
  call void @bson_destroy(ptr noundef %5), !dbg !2393
  %23 = load i32, ptr %6, align 4, !dbg !2394
  store i32 %23, ptr %2, align 4, !dbg !2395
  br label %24, !dbg !2395

24:                                               ; preds = %21, %10
  %25 = load i32, ptr %2, align 4, !dbg !2396
  ret i32 %25, !dbg !2396
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_oauth_keys(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !2397 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca %struct._bson_t, align 128
  %15 = alloca %struct._bson_t, align 128
  %16 = alloca %struct._bson_t, align 128
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca %struct._oauth_key_data_raw, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct.bson_iter_t, align 128
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca [256 x i8], align 16
  %29 = alloca [256 x i8], align 16
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2398, metadata !DIExpression()), !dbg !2399
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2400, metadata !DIExpression()), !dbg !2401
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2402, metadata !DIExpression()), !dbg !2403
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2404, metadata !DIExpression()), !dbg !2405
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2406, metadata !DIExpression()), !dbg !2407
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2408, metadata !DIExpression()), !dbg !2409
  store ptr @.str.43, ptr %12, align 8, !dbg !2409
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2410, metadata !DIExpression()), !dbg !2411
  %30 = load ptr, ptr %12, align 8, !dbg !2412
  %31 = call ptr @mongo_get_collection(ptr noundef %30), !dbg !2413
  store ptr %31, ptr %13, align 8, !dbg !2411
  %32 = load ptr, ptr %13, align 8, !dbg !2414
  %33 = icmp ne ptr %32, null, !dbg !2414
  br i1 %33, label %35, label %34, !dbg !2416

34:                                               ; preds = %5
  store i32 -1, ptr %6, align 4, !dbg !2417
  br label %260, !dbg !2417

35:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2418, metadata !DIExpression()), !dbg !2419
  call void @bson_init(ptr noundef %14), !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2421, metadata !DIExpression()), !dbg !2422
  %36 = call zeroext i1 @bson_append_document_begin(ptr noundef %14, ptr noundef @.str.19, i32 noundef -1, ptr noundef %15), !dbg !2423
  %37 = call zeroext i1 @bson_append_int32(ptr noundef %15, ptr noundef @.str.44, i32 noundef -1, i32 noundef 1), !dbg !2424
  %38 = call zeroext i1 @bson_append_document_end(ptr noundef %14, ptr noundef %15), !dbg !2425
  %39 = call zeroext i1 @bson_append_document_begin(ptr noundef %14, ptr noundef @.str.20, i32 noundef -1, ptr noundef %15), !dbg !2426
  %40 = call zeroext i1 @bson_append_document_end(ptr noundef %14, ptr noundef %15), !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2428, metadata !DIExpression()), !dbg !2429
  call void @bson_init(ptr noundef %16), !dbg !2430
  %41 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.44, i32 noundef 3, i32 noundef 1), !dbg !2431
  %42 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.48, i32 noundef 8, i32 noundef 1), !dbg !2432
  %43 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.47, i32 noundef 9, i32 noundef 1), !dbg !2433
  %44 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.45, i32 noundef 9, i32 noundef 1), !dbg !2434
  %45 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !2435
  %46 = call zeroext i1 @bson_append_int32(ptr noundef %16, ptr noundef @.str.46, i32 noundef 7, i32 noundef 1), !dbg !2436
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2437, metadata !DIExpression()), !dbg !2438
  %47 = load ptr, ptr %13, align 8, !dbg !2439
  %48 = call ptr @mongoc_collection_find(ptr noundef %47, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %14, ptr noundef %16, ptr noundef null), !dbg !2440
  store ptr %48, ptr %17, align 8, !dbg !2441
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2442, metadata !DIExpression()), !dbg !2443
  store i32 -1, ptr %18, align 4, !dbg !2443
  %49 = load ptr, ptr %17, align 8, !dbg !2444
  %50 = icmp ne ptr %49, null, !dbg !2444
  br i1 %50, label %53, label %51, !dbg !2446

51:                                               ; preds = %35
  %52 = load ptr, ptr %12, align 8, !dbg !2447
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.21, ptr noundef %52), !dbg !2449
  br label %257, !dbg !2450

53:                                               ; preds = %35
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2451, metadata !DIExpression()), !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2454, metadata !DIExpression()), !dbg !2455
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2456, metadata !DIExpression()), !dbg !2457
  store ptr %20, ptr %21, align 8, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2458, metadata !DIExpression()), !dbg !2459
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2460, metadata !DIExpression()), !dbg !2461
  br label %54, !dbg !2462

54:                                               ; preds = %254, %53
  %55 = load ptr, ptr %17, align 8, !dbg !2463
  %56 = call zeroext i1 @mongoc_cursor_next(ptr noundef %55, ptr noundef %19), !dbg !2464
  br i1 %56, label %57, label %255, !dbg !2462

57:                                               ; preds = %54
  %58 = load ptr, ptr %21, align 8, !dbg !2465
  call void @llvm.memset.p0.i64(ptr align 8 %58, i8 0, i64 600, i1 false), !dbg !2467
  %59 = load ptr, ptr %19, align 8, !dbg !2468
  %60 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %59), !dbg !2470
  br i1 %60, label %61, label %88, !dbg !2471

61:                                               ; preds = %57
  %62 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.44), !dbg !2472
  br i1 %62, label %63, label %88, !dbg !2473

63:                                               ; preds = %61
  %64 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2474
  %65 = icmp eq i32 %64, 2, !dbg !2474
  br i1 %65, label %66, label %88, !dbg !2475

66:                                               ; preds = %63
  br label %67, !dbg !2476

67:                                               ; preds = %66
  %68 = load ptr, ptr %21, align 8, !dbg !2478
  %69 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %68, i32 0, i32 0, !dbg !2478
  %70 = getelementptr inbounds [129 x i8], ptr %69, i64 0, i64 0, !dbg !2478
  %71 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2478
  %72 = icmp ne ptr %70, %71, !dbg !2478
  br i1 %72, label %73, label %86, !dbg !2481

73:                                               ; preds = %67
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2482, metadata !DIExpression()), !dbg !2486
  store i64 129, ptr %24, align 8, !dbg !2486
  %74 = load ptr, ptr %21, align 8, !dbg !2486
  %75 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %74, i32 0, i32 0, !dbg !2486
  %76 = getelementptr inbounds [129 x i8], ptr %75, i64 0, i64 0, !dbg !2486
  %77 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2486
  %78 = load i64, ptr %24, align 8, !dbg !2486
  %79 = call ptr @strncpy(ptr noundef %76, ptr noundef %77, i64 noundef %78) #8, !dbg !2486
  %80 = load ptr, ptr %21, align 8, !dbg !2486
  %81 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %80, i32 0, i32 0, !dbg !2486
  %82 = getelementptr inbounds [129 x i8], ptr %81, i64 0, i64 0, !dbg !2486
  %83 = load i64, ptr %24, align 8, !dbg !2486
  %84 = sub i64 %83, 1, !dbg !2486
  %85 = getelementptr inbounds i8, ptr %82, i64 %84, !dbg !2486
  store i8 0, ptr %85, align 1, !dbg !2486
  br label %86, !dbg !2487

86:                                               ; preds = %73, %67
  br label %87, !dbg !2481

87:                                               ; preds = %86
  br label %88, !dbg !2488

88:                                               ; preds = %87, %63, %61, %57
  %89 = load ptr, ptr %19, align 8, !dbg !2489
  %90 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %89), !dbg !2491
  br i1 %90, label %91, label %118, !dbg !2492

91:                                               ; preds = %88
  %92 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.45), !dbg !2493
  br i1 %92, label %93, label %118, !dbg !2494

93:                                               ; preds = %91
  %94 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2495
  %95 = icmp eq i32 %94, 2, !dbg !2495
  br i1 %95, label %96, label %118, !dbg !2496

96:                                               ; preds = %93
  br label %97, !dbg !2497

97:                                               ; preds = %96
  %98 = load ptr, ptr %21, align 8, !dbg !2499
  %99 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %98, i32 0, i32 4, !dbg !2499
  %100 = getelementptr inbounds [65 x i8], ptr %99, i64 0, i64 0, !dbg !2499
  %101 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2499
  %102 = icmp ne ptr %100, %101, !dbg !2499
  br i1 %102, label %103, label %116, !dbg !2502

103:                                              ; preds = %97
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2503, metadata !DIExpression()), !dbg !2507
  store i64 65, ptr %25, align 8, !dbg !2507
  %104 = load ptr, ptr %21, align 8, !dbg !2507
  %105 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %104, i32 0, i32 4, !dbg !2507
  %106 = getelementptr inbounds [65 x i8], ptr %105, i64 0, i64 0, !dbg !2507
  %107 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2507
  %108 = load i64, ptr %25, align 8, !dbg !2507
  %109 = call ptr @strncpy(ptr noundef %106, ptr noundef %107, i64 noundef %108) #8, !dbg !2507
  %110 = load ptr, ptr %21, align 8, !dbg !2507
  %111 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %110, i32 0, i32 4, !dbg !2507
  %112 = getelementptr inbounds [65 x i8], ptr %111, i64 0, i64 0, !dbg !2507
  %113 = load i64, ptr %25, align 8, !dbg !2507
  %114 = sub i64 %113, 1, !dbg !2507
  %115 = getelementptr inbounds i8, ptr %112, i64 %114, !dbg !2507
  store i8 0, ptr %115, align 1, !dbg !2507
  br label %116, !dbg !2508

116:                                              ; preds = %103, %97
  br label %117, !dbg !2502

117:                                              ; preds = %116
  br label %118, !dbg !2509

118:                                              ; preds = %117, %93, %91, %88
  %119 = load ptr, ptr %19, align 8, !dbg !2510
  %120 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %119), !dbg !2512
  br i1 %120, label %121, label %148, !dbg !2513

121:                                              ; preds = %118
  %122 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.2), !dbg !2514
  br i1 %122, label %123, label %148, !dbg !2515

123:                                              ; preds = %121
  %124 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2516
  %125 = icmp eq i32 %124, 2, !dbg !2516
  br i1 %125, label %126, label %148, !dbg !2517

126:                                              ; preds = %123
  br label %127, !dbg !2518

127:                                              ; preds = %126
  %128 = load ptr, ptr %21, align 8, !dbg !2520
  %129 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %128, i32 0, i32 5, !dbg !2520
  %130 = getelementptr inbounds [128 x i8], ptr %129, i64 0, i64 0, !dbg !2520
  %131 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2520
  %132 = icmp ne ptr %130, %131, !dbg !2520
  br i1 %132, label %133, label %146, !dbg !2523

133:                                              ; preds = %127
  call void @llvm.dbg.declare(metadata ptr %26, metadata !2524, metadata !DIExpression()), !dbg !2528
  store i64 128, ptr %26, align 8, !dbg !2528
  %134 = load ptr, ptr %21, align 8, !dbg !2528
  %135 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %134, i32 0, i32 5, !dbg !2528
  %136 = getelementptr inbounds [128 x i8], ptr %135, i64 0, i64 0, !dbg !2528
  %137 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2528
  %138 = load i64, ptr %26, align 8, !dbg !2528
  %139 = call ptr @strncpy(ptr noundef %136, ptr noundef %137, i64 noundef %138) #8, !dbg !2528
  %140 = load ptr, ptr %21, align 8, !dbg !2528
  %141 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %140, i32 0, i32 5, !dbg !2528
  %142 = getelementptr inbounds [128 x i8], ptr %141, i64 0, i64 0, !dbg !2528
  %143 = load i64, ptr %26, align 8, !dbg !2528
  %144 = sub i64 %143, 1, !dbg !2528
  %145 = getelementptr inbounds i8, ptr %142, i64 %144, !dbg !2528
  store i8 0, ptr %145, align 1, !dbg !2528
  br label %146, !dbg !2529

146:                                              ; preds = %133, %127
  br label %147, !dbg !2523

147:                                              ; preds = %146
  br label %148, !dbg !2530

148:                                              ; preds = %147, %123, %121, %118
  %149 = load ptr, ptr %19, align 8, !dbg !2531
  %150 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %149), !dbg !2533
  br i1 %150, label %151, label %178, !dbg !2534

151:                                              ; preds = %148
  %152 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.46), !dbg !2535
  br i1 %152, label %153, label %178, !dbg !2536

153:                                              ; preds = %151
  %154 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2537
  %155 = icmp eq i32 %154, 2, !dbg !2537
  br i1 %155, label %156, label %178, !dbg !2538

156:                                              ; preds = %153
  br label %157, !dbg !2539

157:                                              ; preds = %156
  %158 = load ptr, ptr %21, align 8, !dbg !2541
  %159 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %158, i32 0, i32 1, !dbg !2541
  %160 = getelementptr inbounds [257 x i8], ptr %159, i64 0, i64 0, !dbg !2541
  %161 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2541
  %162 = icmp ne ptr %160, %161, !dbg !2541
  br i1 %162, label %163, label %176, !dbg !2544

163:                                              ; preds = %157
  call void @llvm.dbg.declare(metadata ptr %27, metadata !2545, metadata !DIExpression()), !dbg !2549
  store i64 257, ptr %27, align 8, !dbg !2549
  %164 = load ptr, ptr %21, align 8, !dbg !2549
  %165 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %164, i32 0, i32 1, !dbg !2549
  %166 = getelementptr inbounds [257 x i8], ptr %165, i64 0, i64 0, !dbg !2549
  %167 = call ptr @bson_iter_utf8(ptr noundef %23, ptr noundef %22), !dbg !2549
  %168 = load i64, ptr %27, align 8, !dbg !2549
  %169 = call ptr @strncpy(ptr noundef %166, ptr noundef %167, i64 noundef %168) #8, !dbg !2549
  %170 = load ptr, ptr %21, align 8, !dbg !2549
  %171 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %170, i32 0, i32 1, !dbg !2549
  %172 = getelementptr inbounds [257 x i8], ptr %171, i64 0, i64 0, !dbg !2549
  %173 = load i64, ptr %27, align 8, !dbg !2549
  %174 = sub i64 %173, 1, !dbg !2549
  %175 = getelementptr inbounds i8, ptr %172, i64 %174, !dbg !2549
  store i8 0, ptr %175, align 1, !dbg !2549
  br label %176, !dbg !2550

176:                                              ; preds = %163, %157
  br label %177, !dbg !2544

177:                                              ; preds = %176
  br label %178, !dbg !2551

178:                                              ; preds = %177, %153, %151, %148
  %179 = load ptr, ptr %19, align 8, !dbg !2552
  %180 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %179), !dbg !2554
  br i1 %180, label %181, label %190, !dbg !2555

181:                                              ; preds = %178
  %182 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.47), !dbg !2556
  br i1 %182, label %183, label %190, !dbg !2557

183:                                              ; preds = %181
  %184 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2558
  %185 = icmp eq i32 %184, 18, !dbg !2558
  br i1 %185, label %186, label %190, !dbg !2559

186:                                              ; preds = %183
  %187 = call i64 @bson_iter_int64(ptr noundef %23), !dbg !2560
  %188 = load ptr, ptr %21, align 8, !dbg !2562
  %189 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %188, i32 0, i32 2, !dbg !2563
  store i64 %187, ptr %189, align 8, !dbg !2564
  br label %190, !dbg !2565

190:                                              ; preds = %186, %183, %181, %178
  %191 = load ptr, ptr %19, align 8, !dbg !2566
  %192 = call zeroext i1 @bson_iter_init(ptr noundef %23, ptr noundef %191), !dbg !2568
  br i1 %192, label %193, label %202, !dbg !2569

193:                                              ; preds = %190
  %194 = call zeroext i1 @bson_iter_find(ptr noundef %23, ptr noundef @.str.48), !dbg !2570
  br i1 %194, label %195, label %202, !dbg !2571

195:                                              ; preds = %193
  %196 = call i32 @bson_iter_type(ptr noundef %23), !dbg !2572
  %197 = icmp eq i32 %196, 16, !dbg !2572
  br i1 %197, label %198, label %202, !dbg !2573

198:                                              ; preds = %195
  %199 = call i32 @bson_iter_int32(ptr noundef %23), !dbg !2574
  %200 = load ptr, ptr %21, align 8, !dbg !2576
  %201 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %200, i32 0, i32 3, !dbg !2577
  store i32 %199, ptr %201, align 8, !dbg !2578
  br label %202, !dbg !2579

202:                                              ; preds = %198, %195, %193, %190
  %203 = load ptr, ptr %7, align 8, !dbg !2580
  %204 = icmp ne ptr %203, null, !dbg !2580
  br i1 %204, label %205, label %233, !dbg !2582

205:                                              ; preds = %202
  %206 = load ptr, ptr %7, align 8, !dbg !2583
  %207 = load ptr, ptr %21, align 8, !dbg !2585
  %208 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %207, i32 0, i32 0, !dbg !2586
  %209 = getelementptr inbounds [129 x i8], ptr %208, i64 0, i64 0, !dbg !2585
  call void @add_to_secrets_list(ptr noundef %206, ptr noundef %209), !dbg !2587
  %210 = load ptr, ptr %8, align 8, !dbg !2588
  %211 = load ptr, ptr %21, align 8, !dbg !2589
  %212 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %211, i32 0, i32 4, !dbg !2590
  %213 = getelementptr inbounds [65 x i8], ptr %212, i64 0, i64 0, !dbg !2589
  call void @add_to_secrets_list(ptr noundef %210, ptr noundef %213), !dbg !2591
  %214 = load ptr, ptr %11, align 8, !dbg !2592
  %215 = load ptr, ptr %21, align 8, !dbg !2593
  %216 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %215, i32 0, i32 5, !dbg !2594
  %217 = getelementptr inbounds [128 x i8], ptr %216, i64 0, i64 0, !dbg !2593
  call void @add_to_secrets_list(ptr noundef %214, ptr noundef %217), !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %28, metadata !2596, metadata !DIExpression()), !dbg !2601
  %218 = getelementptr inbounds [256 x i8], ptr %28, i64 0, i64 0, !dbg !2602
  %219 = load ptr, ptr %21, align 8, !dbg !2603
  %220 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %219, i32 0, i32 2, !dbg !2604
  %221 = load i64, ptr %220, align 8, !dbg !2604
  %222 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %218, i64 noundef 255, ptr noundef @.str.52, i64 noundef %221) #8, !dbg !2605
  %223 = load ptr, ptr %9, align 8, !dbg !2606
  %224 = getelementptr inbounds [256 x i8], ptr %28, i64 0, i64 0, !dbg !2607
  call void @add_to_secrets_list(ptr noundef %223, ptr noundef %224), !dbg !2608
  call void @llvm.dbg.declare(metadata ptr %29, metadata !2609, metadata !DIExpression()), !dbg !2611
  %225 = getelementptr inbounds [256 x i8], ptr %29, i64 0, i64 0, !dbg !2612
  %226 = load ptr, ptr %21, align 8, !dbg !2613
  %227 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %226, i32 0, i32 3, !dbg !2614
  %228 = load i32, ptr %227, align 8, !dbg !2614
  %229 = zext i32 %228 to i64, !dbg !2615
  %230 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %225, i64 noundef 255, ptr noundef @.str.53, i64 noundef %229) #8, !dbg !2616
  %231 = load ptr, ptr %10, align 8, !dbg !2617
  %232 = getelementptr inbounds [256 x i8], ptr %29, i64 0, i64 0, !dbg !2618
  call void @add_to_secrets_list(ptr noundef %231, ptr noundef %232), !dbg !2619
  br label %254, !dbg !2620

233:                                              ; preds = %202
  %234 = load ptr, ptr %21, align 8, !dbg !2621
  %235 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %234, i32 0, i32 0, !dbg !2623
  %236 = getelementptr inbounds [129 x i8], ptr %235, i64 0, i64 0, !dbg !2621
  %237 = load ptr, ptr %21, align 8, !dbg !2624
  %238 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %237, i32 0, i32 1, !dbg !2625
  %239 = getelementptr inbounds [257 x i8], ptr %238, i64 0, i64 0, !dbg !2624
  %240 = load ptr, ptr %21, align 8, !dbg !2626
  %241 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %240, i32 0, i32 2, !dbg !2627
  %242 = load i64, ptr %241, align 8, !dbg !2627
  %243 = load ptr, ptr %21, align 8, !dbg !2628
  %244 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %243, i32 0, i32 3, !dbg !2629
  %245 = load i32, ptr %244, align 8, !dbg !2629
  %246 = zext i32 %245 to i64, !dbg !2630
  %247 = load ptr, ptr %21, align 8, !dbg !2631
  %248 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %247, i32 0, i32 4, !dbg !2632
  %249 = getelementptr inbounds [65 x i8], ptr %248, i64 0, i64 0, !dbg !2631
  %250 = load ptr, ptr %21, align 8, !dbg !2633
  %251 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %250, i32 0, i32 5, !dbg !2634
  %252 = getelementptr inbounds [128 x i8], ptr %251, i64 0, i64 0, !dbg !2633
  %253 = call i32 (ptr, ...) @printf(ptr noundef @.str.54, ptr noundef %236, ptr noundef %239, i64 noundef %242, i64 noundef %246, ptr noundef %249, ptr noundef %252), !dbg !2635
  br label %254

254:                                              ; preds = %233, %205
  br label %54, !dbg !2462, !llvm.loop !2636

255:                                              ; preds = %54
  %256 = load ptr, ptr %17, align 8, !dbg !2638
  call void @mongoc_cursor_destroy(ptr noundef %256), !dbg !2639
  store i32 0, ptr %18, align 4, !dbg !2640
  br label %257

257:                                              ; preds = %255, %51
  %258 = load ptr, ptr %13, align 8, !dbg !2641
  call void @mongoc_collection_destroy(ptr noundef %258), !dbg !2642
  call void @bson_destroy(ptr noundef %14), !dbg !2643
  call void @bson_destroy(ptr noundef %16), !dbg !2644
  %259 = load i32, ptr %18, align 4, !dbg !2645
  store i32 %259, ptr %6, align 4, !dbg !2646
  br label %260, !dbg !2646

260:                                              ; preds = %257, %34
  %261 = load i32, ptr %6, align 4, !dbg !2647
  ret i32 %261, !dbg !2647
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_get_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2648 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.bson_iter_t, align 128
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2649, metadata !DIExpression()), !dbg !2650
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2651, metadata !DIExpression()), !dbg !2652
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2653, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2655, metadata !DIExpression()), !dbg !2656
  %16 = call ptr @mongo_get_collection(ptr noundef @.str.55), !dbg !2657
  store ptr %16, ptr %8, align 8, !dbg !2656
  %17 = load ptr, ptr %8, align 8, !dbg !2658
  %18 = icmp ne ptr %17, null, !dbg !2658
  br i1 %18, label %20, label %19, !dbg !2660

19:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !2661
  br label %70, !dbg !2661

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8, !dbg !2662
  %22 = getelementptr inbounds i8, ptr %21, i64 0, !dbg !2662
  store i8 0, ptr %22, align 1, !dbg !2663
  %23 = load ptr, ptr %7, align 8, !dbg !2664
  %24 = getelementptr inbounds i8, ptr %23, i64 0, !dbg !2664
  store i8 0, ptr %24, align 1, !dbg !2665
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2666, metadata !DIExpression()), !dbg !2667
  call void @bson_init(ptr noundef %9), !dbg !2668
  %25 = load ptr, ptr %5, align 8, !dbg !2669
  %26 = load ptr, ptr %5, align 8, !dbg !2669
  %27 = call i64 @strlen(ptr noundef %26) #7, !dbg !2669
  %28 = trunc i64 %27 to i32, !dbg !2669
  %29 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.12, i32 noundef 4, ptr noundef %25, i32 noundef %28), !dbg !2669
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @bson_init(ptr noundef %10), !dbg !2672
  %30 = call zeroext i1 @bson_append_int32(ptr noundef %10, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !2673
  %31 = call zeroext i1 @bson_append_int32(ptr noundef %10, ptr noundef @.str.56, i32 noundef 8, i32 noundef 1), !dbg !2674
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2675, metadata !DIExpression()), !dbg !2676
  %32 = load ptr, ptr %8, align 8, !dbg !2677
  %33 = call ptr @mongoc_collection_find(ptr noundef %32, i32 noundef 0, i32 noundef 0, i32 noundef 1, i32 noundef 0, ptr noundef %9, ptr noundef %10, ptr noundef null), !dbg !2678
  store ptr %33, ptr %11, align 8, !dbg !2679
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i32 -1, ptr %12, align 4, !dbg !2681
  %34 = load ptr, ptr %11, align 8, !dbg !2682
  %35 = icmp ne ptr %34, null, !dbg !2682
  br i1 %35, label %37, label %36, !dbg !2684

36:                                               ; preds = %20
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.57), !dbg !2685
  br label %67, !dbg !2687

37:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2688, metadata !DIExpression()), !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2691, metadata !DIExpression()), !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2693, metadata !DIExpression()), !dbg !2694
  %38 = load ptr, ptr %11, align 8, !dbg !2695
  %39 = call zeroext i1 @mongoc_cursor_next(ptr noundef %38, ptr noundef %13), !dbg !2697
  br i1 %39, label %40, label %65, !dbg !2698

40:                                               ; preds = %37
  %41 = load ptr, ptr %13, align 8, !dbg !2699
  %42 = call zeroext i1 @bson_iter_init(ptr noundef %15, ptr noundef %41), !dbg !2702
  br i1 %42, label %43, label %52, !dbg !2703

43:                                               ; preds = %40
  %44 = call zeroext i1 @bson_iter_find(ptr noundef %15, ptr noundef @.str.2), !dbg !2704
  br i1 %44, label %45, label %52, !dbg !2705

45:                                               ; preds = %43
  %46 = call i32 @bson_iter_type(ptr noundef %15), !dbg !2706
  %47 = icmp eq i32 %46, 2, !dbg !2706
  br i1 %47, label %48, label %52, !dbg !2707

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 8, !dbg !2708
  %50 = call ptr @bson_iter_utf8(ptr noundef %15, ptr noundef %14), !dbg !2710
  %51 = call ptr @strncpy(ptr noundef %49, ptr noundef %50, i64 noundef 127) #8, !dbg !2711
  store i32 0, ptr %12, align 4, !dbg !2712
  br label %52, !dbg !2713

52:                                               ; preds = %48, %45, %43, %40
  %53 = load ptr, ptr %13, align 8, !dbg !2714
  %54 = call zeroext i1 @bson_iter_init(ptr noundef %15, ptr noundef %53), !dbg !2716
  br i1 %54, label %55, label %64, !dbg !2717

55:                                               ; preds = %52
  %56 = call zeroext i1 @bson_iter_find(ptr noundef %15, ptr noundef @.str.56), !dbg !2718
  br i1 %56, label %57, label %64, !dbg !2719

57:                                               ; preds = %55
  %58 = call i32 @bson_iter_type(ptr noundef %15), !dbg !2720
  %59 = icmp eq i32 %58, 2, !dbg !2720
  br i1 %59, label %60, label %64, !dbg !2721

60:                                               ; preds = %57
  %61 = load ptr, ptr %7, align 8, !dbg !2722
  %62 = call ptr @bson_iter_utf8(ptr noundef %15, ptr noundef %14), !dbg !2724
  %63 = call ptr @strncpy(ptr noundef %61, ptr noundef %62, i64 noundef 256) #8, !dbg !2725
  store i32 0, ptr %12, align 4, !dbg !2726
  br label %64, !dbg !2727

64:                                               ; preds = %60, %57, %55, %52
  br label %65, !dbg !2728

65:                                               ; preds = %64, %37
  %66 = load ptr, ptr %11, align 8, !dbg !2729
  call void @mongoc_cursor_destroy(ptr noundef %66), !dbg !2730
  br label %67

67:                                               ; preds = %65, %36
  %68 = load ptr, ptr %8, align 8, !dbg !2731
  call void @mongoc_collection_destroy(ptr noundef %68), !dbg !2732
  call void @bson_destroy(ptr noundef %9), !dbg !2733
  call void @bson_destroy(ptr noundef %10), !dbg !2734
  %69 = load i32, ptr %12, align 4, !dbg !2735
  store i32 %69, ptr %4, align 4, !dbg !2736
  br label %70, !dbg !2736

70:                                               ; preds = %67, %19
  %71 = load i32, ptr %4, align 4, !dbg !2737
  ret i32 %71, !dbg !2737
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_set_admin_user(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2738 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2739, metadata !DIExpression()), !dbg !2740
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2741, metadata !DIExpression()), !dbg !2742
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2743, metadata !DIExpression()), !dbg !2744
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2745, metadata !DIExpression()), !dbg !2746
  %12 = call ptr @mongo_get_collection(ptr noundef @.str.55), !dbg !2747
  store ptr %12, ptr %8, align 8, !dbg !2746
  %13 = load ptr, ptr %8, align 8, !dbg !2748
  %14 = icmp ne ptr %13, null, !dbg !2748
  br i1 %14, label %16, label %15, !dbg !2750

15:                                               ; preds = %3
  store i32 -1, ptr %4, align 4, !dbg !2751
  br label %44, !dbg !2751

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @bson_init(ptr noundef %9), !dbg !2754
  %17 = load ptr, ptr %5, align 8, !dbg !2755
  %18 = load ptr, ptr %5, align 8, !dbg !2755
  %19 = call i64 @strlen(ptr noundef %18) #7, !dbg !2755
  %20 = trunc i64 %19 to i32, !dbg !2755
  %21 = call zeroext i1 @bson_append_utf8(ptr noundef %9, ptr noundef @.str.12, i32 noundef 4, ptr noundef %17, i32 noundef %20), !dbg !2755
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2756, metadata !DIExpression()), !dbg !2757
  call void @bson_init(ptr noundef %10), !dbg !2758
  %22 = load ptr, ptr %5, align 8, !dbg !2759
  %23 = load ptr, ptr %5, align 8, !dbg !2759
  %24 = call i64 @strlen(ptr noundef %23) #7, !dbg !2759
  %25 = trunc i64 %24 to i32, !dbg !2759
  %26 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.12, i32 noundef 4, ptr noundef %22, i32 noundef %25), !dbg !2759
  %27 = load ptr, ptr %6, align 8, !dbg !2760
  %28 = load ptr, ptr %6, align 8, !dbg !2760
  %29 = call i64 @strlen(ptr noundef %28) #7, !dbg !2760
  %30 = trunc i64 %29 to i32, !dbg !2760
  %31 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.2, i32 noundef 5, ptr noundef %27, i32 noundef %30), !dbg !2760
  %32 = load ptr, ptr %7, align 8, !dbg !2761
  %33 = load ptr, ptr %7, align 8, !dbg !2761
  %34 = call i64 @strlen(ptr noundef %33) #7, !dbg !2761
  %35 = trunc i64 %34 to i32, !dbg !2761
  %36 = call zeroext i1 @bson_append_utf8(ptr noundef %10, ptr noundef @.str.56, i32 noundef 8, ptr noundef %32, i32 noundef %35), !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i32 -1, ptr %11, align 4, !dbg !2763
  %37 = load ptr, ptr %8, align 8, !dbg !2764
  %38 = call zeroext i1 @mongoc_collection_update(ptr noundef %37, i32 noundef 1, ptr noundef %9, ptr noundef %10, ptr noundef null, ptr noundef null), !dbg !2766
  br i1 %38, label %40, label %39, !dbg !2767

39:                                               ; preds = %16
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.58), !dbg !2768
  br label %41, !dbg !2770

40:                                               ; preds = %16
  store i32 0, ptr %11, align 4, !dbg !2771
  br label %41

41:                                               ; preds = %40, %39
  %42 = load ptr, ptr %8, align 8, !dbg !2773
  call void @mongoc_collection_destroy(ptr noundef %42), !dbg !2774
  call void @bson_destroy(ptr noundef %10), !dbg !2775
  call void @bson_destroy(ptr noundef %9), !dbg !2776
  %43 = load i32, ptr %11, align 4, !dbg !2777
  store i32 %43, ptr %4, align 4, !dbg !2778
  br label %44, !dbg !2778

44:                                               ; preds = %41, %15
  %45 = load i32, ptr %4, align 4, !dbg !2779
  ret i32 %45, !dbg !2779
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_del_admin_user(ptr noundef %0) #0 !dbg !2780 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._bson_t, align 128
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2781, metadata !DIExpression()), !dbg !2782
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2783, metadata !DIExpression()), !dbg !2784
  %7 = call ptr @mongo_get_collection(ptr noundef @.str.55), !dbg !2785
  store ptr %7, ptr %4, align 8, !dbg !2784
  %8 = load ptr, ptr %4, align 8, !dbg !2786
  %9 = icmp ne ptr %8, null, !dbg !2786
  br i1 %9, label %11, label %10, !dbg !2788

10:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2789
  br label %24, !dbg !2789

11:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2790, metadata !DIExpression()), !dbg !2791
  call void @bson_init(ptr noundef %5), !dbg !2792
  %12 = load ptr, ptr %3, align 8, !dbg !2793
  %13 = load ptr, ptr %3, align 8, !dbg !2793
  %14 = call i64 @strlen(ptr noundef %13) #7, !dbg !2793
  %15 = trunc i64 %14 to i32, !dbg !2793
  %16 = call zeroext i1 @bson_append_utf8(ptr noundef %5, ptr noundef @.str.12, i32 noundef 4, ptr noundef %12, i32 noundef %15), !dbg !2793
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2794, metadata !DIExpression()), !dbg !2795
  store i32 -1, ptr %6, align 4, !dbg !2795
  %17 = load ptr, ptr %4, align 8, !dbg !2796
  %18 = call zeroext i1 @mongoc_collection_delete(ptr noundef %17, i32 noundef 1, ptr noundef %5, ptr noundef null, ptr noundef null), !dbg !2798
  br i1 %18, label %20, label %19, !dbg !2799

19:                                               ; preds = %11
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.59), !dbg !2800
  br label %21, !dbg !2802

20:                                               ; preds = %11
  store i32 0, ptr %6, align 4, !dbg !2803
  br label %21

21:                                               ; preds = %20, %19
  %22 = load ptr, ptr %4, align 8, !dbg !2805
  call void @mongoc_collection_destroy(ptr noundef %22), !dbg !2806
  call void @bson_destroy(ptr noundef %5), !dbg !2807
  %23 = load i32, ptr %6, align 4, !dbg !2808
  store i32 %23, ptr %2, align 4, !dbg !2809
  br label %24, !dbg !2809

24:                                               ; preds = %21, %10
  %25 = load i32, ptr %2, align 4, !dbg !2810
  ret i32 %25, !dbg !2810
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_list_admin_users(i32 noundef %0) #0 !dbg !2811 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %struct._bson_t, align 128
  %7 = alloca %struct._bson_t, align 128
  %8 = alloca %struct._bson_t, align 128
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.bson_iter_t, align 128
  %14 = alloca %struct.bson_iter_t, align 128
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2812, metadata !DIExpression()), !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2814, metadata !DIExpression()), !dbg !2815
  store ptr @.str.55, ptr %4, align 8, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2816, metadata !DIExpression()), !dbg !2817
  %17 = load ptr, ptr %4, align 8, !dbg !2818
  %18 = call ptr @mongo_get_collection(ptr noundef %17), !dbg !2819
  store ptr %18, ptr %5, align 8, !dbg !2817
  %19 = load ptr, ptr %5, align 8, !dbg !2820
  %20 = icmp ne ptr %19, null, !dbg !2820
  br i1 %20, label %22, label %21, !dbg !2822

21:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2823
  br label %91, !dbg !2823

22:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2824, metadata !DIExpression()), !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2826, metadata !DIExpression()), !dbg !2827
  call void @bson_init(ptr noundef %6), !dbg !2828
  %23 = call zeroext i1 @bson_append_document_begin(ptr noundef %6, ptr noundef @.str.19, i32 noundef -1, ptr noundef %7), !dbg !2829
  %24 = call zeroext i1 @bson_append_int32(ptr noundef %7, ptr noundef @.str.12, i32 noundef -1, i32 noundef 1), !dbg !2830
  %25 = call zeroext i1 @bson_append_document_end(ptr noundef %6, ptr noundef %7), !dbg !2831
  %26 = call zeroext i1 @bson_append_document_begin(ptr noundef %6, ptr noundef @.str.20, i32 noundef -1, ptr noundef %7), !dbg !2832
  %27 = call zeroext i1 @bson_append_document_end(ptr noundef %6, ptr noundef %7), !dbg !2833
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2834, metadata !DIExpression()), !dbg !2835
  call void @bson_init(ptr noundef %8), !dbg !2836
  %28 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.12, i32 noundef 4, i32 noundef 1), !dbg !2837
  %29 = call zeroext i1 @bson_append_int32(ptr noundef %8, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !2838
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2839, metadata !DIExpression()), !dbg !2840
  %30 = load ptr, ptr %5, align 8, !dbg !2841
  %31 = call ptr @mongoc_collection_find(ptr noundef %30, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %6, ptr noundef %8, ptr noundef null), !dbg !2842
  store ptr %31, ptr %9, align 8, !dbg !2843
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2844, metadata !DIExpression()), !dbg !2845
  store i32 -1, ptr %10, align 4, !dbg !2845
  %32 = load ptr, ptr %9, align 8, !dbg !2846
  %33 = icmp ne ptr %32, null, !dbg !2846
  br i1 %33, label %36, label %34, !dbg !2848

34:                                               ; preds = %22
  %35 = load ptr, ptr %4, align 8, !dbg !2849
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.21, ptr noundef %35), !dbg !2851
  br label %88, !dbg !2852

36:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2853, metadata !DIExpression()), !dbg !2855
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2856, metadata !DIExpression()), !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2858, metadata !DIExpression()), !dbg !2859
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2860, metadata !DIExpression()), !dbg !2861
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2862, metadata !DIExpression()), !dbg !2863
  store i32 0, ptr %10, align 4, !dbg !2864
  br label %37, !dbg !2865

37:                                               ; preds = %85, %36
  %38 = load ptr, ptr %9, align 8, !dbg !2866
  %39 = call zeroext i1 @mongoc_cursor_next(ptr noundef %38, ptr noundef %11), !dbg !2867
  br i1 %39, label %40, label %86, !dbg !2865

40:                                               ; preds = %37
  %41 = load ptr, ptr %11, align 8, !dbg !2868
  %42 = call zeroext i1 @bson_iter_init(ptr noundef %13, ptr noundef %41), !dbg !2871
  br i1 %42, label %43, label %85, !dbg !2872

43:                                               ; preds = %40
  %44 = call zeroext i1 @bson_iter_find(ptr noundef %13, ptr noundef @.str.12), !dbg !2873
  br i1 %44, label %45, label %85, !dbg !2874

45:                                               ; preds = %43
  %46 = call i32 @bson_iter_type(ptr noundef %13), !dbg !2875
  %47 = icmp eq i32 %46, 2, !dbg !2875
  br i1 %47, label %48, label %85, !dbg !2876

48:                                               ; preds = %45
  %49 = call ptr @bson_iter_utf8(ptr noundef %13, ptr noundef %12), !dbg !2877
  store ptr %49, ptr %15, align 8, !dbg !2879
  %50 = load i32, ptr %12, align 4, !dbg !2880
  %51 = icmp ne i32 %50, 0, !dbg !2880
  br i1 %51, label %52, label %84, !dbg !2882

52:                                               ; preds = %48
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2883, metadata !DIExpression()), !dbg !2885
  store ptr @.str.22, ptr %16, align 8, !dbg !2885
  %53 = load ptr, ptr %11, align 8, !dbg !2886
  %54 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %53), !dbg !2888
  br i1 %54, label %55, label %62, !dbg !2889

55:                                               ; preds = %52
  %56 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.2), !dbg !2890
  br i1 %56, label %57, label %62, !dbg !2891

57:                                               ; preds = %55
  %58 = call i32 @bson_iter_type(ptr noundef %14), !dbg !2892
  %59 = icmp eq i32 %58, 2, !dbg !2892
  br i1 %59, label %60, label %62, !dbg !2893

60:                                               ; preds = %57
  %61 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %12), !dbg !2894
  store ptr %61, ptr %16, align 8, !dbg !2896
  br label %62, !dbg !2897

62:                                               ; preds = %60, %57, %55, %52
  %63 = load i32, ptr %10, align 4, !dbg !2898
  %64 = add nsw i32 %63, 1, !dbg !2898
  store i32 %64, ptr %10, align 4, !dbg !2898
  %65 = load i32, ptr %3, align 4, !dbg !2899
  %66 = icmp ne i32 %65, 0, !dbg !2899
  br i1 %66, label %83, label %67, !dbg !2901

67:                                               ; preds = %62
  %68 = load ptr, ptr %16, align 8, !dbg !2902
  %69 = icmp ne ptr %68, null, !dbg !2902
  br i1 %69, label %70, label %79, !dbg !2905

70:                                               ; preds = %67
  %71 = load ptr, ptr %16, align 8, !dbg !2906
  %72 = load i8, ptr %71, align 1, !dbg !2907
  %73 = sext i8 %72 to i32, !dbg !2907
  %74 = icmp ne i32 %73, 0, !dbg !2907
  br i1 %74, label %75, label %79, !dbg !2908

75:                                               ; preds = %70
  %76 = load ptr, ptr %15, align 8, !dbg !2909
  %77 = load ptr, ptr %16, align 8, !dbg !2911
  %78 = call i32 (ptr, ...) @printf(ptr noundef @.str.23, ptr noundef %76, ptr noundef %77), !dbg !2912
  br label %82, !dbg !2913

79:                                               ; preds = %70, %67
  %80 = load ptr, ptr %15, align 8, !dbg !2914
  %81 = call i32 (ptr, ...) @printf(ptr noundef @.str.10, ptr noundef %80), !dbg !2916
  br label %82

82:                                               ; preds = %79, %75
  br label %83, !dbg !2917

83:                                               ; preds = %82, %62
  br label %84, !dbg !2918

84:                                               ; preds = %83, %48
  br label %85, !dbg !2919

85:                                               ; preds = %84, %45, %43, %40
  br label %37, !dbg !2865, !llvm.loop !2920

86:                                               ; preds = %37
  %87 = load ptr, ptr %9, align 8, !dbg !2922
  call void @mongoc_cursor_destroy(ptr noundef %87), !dbg !2923
  br label %88

88:                                               ; preds = %86, %34
  %89 = load ptr, ptr %5, align 8, !dbg !2924
  call void @mongoc_collection_destroy(ptr noundef %89), !dbg !2925
  call void @bson_destroy(ptr noundef %6), !dbg !2926
  call void @bson_destroy(ptr noundef %8), !dbg !2927
  %90 = load i32, ptr %10, align 4, !dbg !2928
  store i32 %90, ptr %2, align 4, !dbg !2929
  br label %91, !dbg !2929

91:                                               ; preds = %88, %21
  %92 = load i32, ptr %2, align 4, !dbg !2930
  ret i32 %92, !dbg !2930
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mongo_disconnect() #0 !dbg !2931 {
  %1 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2932, metadata !DIExpression()), !dbg !2933
  %2 = load i32, ptr @connection_key, align 4, !dbg !2934
  %3 = call ptr @pthread_getspecific(i32 noundef %2) #8, !dbg !2935
  store ptr %3, ptr %1, align 8, !dbg !2933
  %4 = load ptr, ptr %1, align 8, !dbg !2936
  %5 = icmp ne ptr %4, null, !dbg !2936
  br i1 %5, label %6, label %8, !dbg !2938

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8, !dbg !2939
  call void @MongoFree(ptr noundef %7), !dbg !2941
  store ptr null, ptr %1, align 8, !dbg !2942
  br label %8, !dbg !2943

8:                                                ; preds = %6, %0
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.60), !dbg !2944
  ret void, !dbg !2945
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mongo_get_collection(ptr noundef %0) #0 !dbg !2946 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2951, metadata !DIExpression()), !dbg !2952
  %6 = call ptr @get_mongodb_connection(), !dbg !2953
  store ptr %6, ptr %4, align 8, !dbg !2952
  %7 = load ptr, ptr %4, align 8, !dbg !2954
  %8 = icmp ne ptr %7, null, !dbg !2954
  br i1 %8, label %10, label %9, !dbg !2956

9:                                                ; preds = %1
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5), !dbg !2957
  store ptr null, ptr %2, align 8, !dbg !2959
  br label %25, !dbg !2959

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2960, metadata !DIExpression()), !dbg !2961
  %11 = load ptr, ptr %4, align 8, !dbg !2962
  %12 = getelementptr inbounds %struct._MONGO, ptr %11, i32 0, i32 1, !dbg !2963
  %13 = load ptr, ptr %12, align 8, !dbg !2963
  %14 = load ptr, ptr %4, align 8, !dbg !2964
  %15 = getelementptr inbounds %struct._MONGO, ptr %14, i32 0, i32 2, !dbg !2965
  %16 = load ptr, ptr %15, align 8, !dbg !2965
  %17 = load ptr, ptr %3, align 8, !dbg !2966
  %18 = call ptr @mongoc_client_get_collection(ptr noundef %13, ptr noundef %16, ptr noundef %17), !dbg !2967
  store ptr %18, ptr %5, align 8, !dbg !2968
  %19 = load ptr, ptr %5, align 8, !dbg !2969
  %20 = icmp ne ptr %19, null, !dbg !2969
  br i1 %20, label %23, label %21, !dbg !2971

21:                                               ; preds = %10
  %22 = load ptr, ptr %3, align 8, !dbg !2972
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.6, ptr noundef %22), !dbg !2974
  br label %23, !dbg !2975

23:                                               ; preds = %21, %10
  %24 = load ptr, ptr %5, align 8, !dbg !2976
  store ptr %24, ptr %2, align 8, !dbg !2977
  br label %25, !dbg !2977

25:                                               ; preds = %23, %9
  %26 = load ptr, ptr %2, align 8, !dbg !2978
  ret ptr %26, !dbg !2978
}

declare void @bson_init(ptr noundef) #2

declare zeroext i1 @bson_append_utf8(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare zeroext i1 @bson_append_int32(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #2

declare ptr @mongoc_collection_find(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #2

declare zeroext i1 @mongoc_cursor_next(ptr noundef, ptr noundef) #2

declare zeroext i1 @bson_iter_init(ptr noundef, ptr noundef) #2

declare zeroext i1 @bson_iter_find(ptr noundef, ptr noundef) #2

declare i32 @bson_iter_type(ptr noundef) #2

declare ptr @bson_iter_utf8(ptr noundef, ptr noundef) #2

declare void @add_to_secrets_list(ptr noundef, ptr noundef) #2

declare void @mongoc_cursor_destroy(ptr noundef) #2

declare void @mongoc_collection_destroy(ptr noundef) #2

declare void @bson_destroy(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_mongodb_connection() #0 !dbg !2979 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !2982, metadata !DIExpression()), !dbg !2991
  %3 = call ptr @get_persistent_users_db(), !dbg !2992
  store ptr %3, ptr %1, align 8, !dbg !2991
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2993, metadata !DIExpression()), !dbg !2994
  %4 = load i32, ptr @connection_key, align 4, !dbg !2995
  %5 = call ptr @pthread_getspecific(i32 noundef %4) #8, !dbg !2996
  store ptr %5, ptr %2, align 8, !dbg !2994
  %6 = load ptr, ptr %2, align 8, !dbg !2997
  %7 = icmp ne ptr %6, null, !dbg !2997
  br i1 %7, label %67, label %8, !dbg !2999

8:                                                ; preds = %0
  call void @mongoc_init(), !dbg !3000
  call void @mongoc_log_set_handler(ptr noundef @mongo_logger, ptr noundef null), !dbg !3002
  %9 = call noalias ptr @malloc(i64 noundef 24) #9, !dbg !3003
  store ptr %9, ptr %2, align 8, !dbg !3004
  %10 = load ptr, ptr %2, align 8, !dbg !3005
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 24, i1 false), !dbg !3006
  %11 = load ptr, ptr %1, align 8, !dbg !3007
  %12 = getelementptr inbounds %struct._persistent_users_db_t, ptr %11, i32 0, i32 0, !dbg !3008
  %13 = getelementptr inbounds [1025 x i8], ptr %12, i64 0, i64 0, !dbg !3007
  %14 = call ptr @mongoc_uri_new(ptr noundef %13), !dbg !3009
  %15 = load ptr, ptr %2, align 8, !dbg !3010
  %16 = getelementptr inbounds %struct._MONGO, ptr %15, i32 0, i32 0, !dbg !3011
  store ptr %14, ptr %16, align 8, !dbg !3012
  %17 = load ptr, ptr %2, align 8, !dbg !3013
  %18 = getelementptr inbounds %struct._MONGO, ptr %17, i32 0, i32 0, !dbg !3015
  %19 = load ptr, ptr %18, align 8, !dbg !3015
  %20 = icmp ne ptr %19, null, !dbg !3013
  br i1 %20, label %26, label %21, !dbg !3016

21:                                               ; preds = %8
  %22 = load ptr, ptr %1, align 8, !dbg !3017
  %23 = getelementptr inbounds %struct._persistent_users_db_t, ptr %22, i32 0, i32 0, !dbg !3019
  %24 = getelementptr inbounds [1025 x i8], ptr %23, i64 0, i64 0, !dbg !3017
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.7, ptr noundef %24), !dbg !3020
  %25 = load ptr, ptr %2, align 8, !dbg !3021
  call void @MongoFree(ptr noundef %25), !dbg !3022
  store ptr null, ptr %2, align 8, !dbg !3023
  br label %66, !dbg !3024

26:                                               ; preds = %8
  %27 = load ptr, ptr %2, align 8, !dbg !3025
  %28 = getelementptr inbounds %struct._MONGO, ptr %27, i32 0, i32 0, !dbg !3027
  %29 = load ptr, ptr %28, align 8, !dbg !3027
  %30 = call ptr @mongoc_client_new_from_uri(ptr noundef %29), !dbg !3028
  %31 = load ptr, ptr %2, align 8, !dbg !3029
  %32 = getelementptr inbounds %struct._MONGO, ptr %31, i32 0, i32 1, !dbg !3030
  store ptr %30, ptr %32, align 8, !dbg !3031
  %33 = load ptr, ptr %2, align 8, !dbg !3032
  %34 = getelementptr inbounds %struct._MONGO, ptr %33, i32 0, i32 1, !dbg !3034
  %35 = load ptr, ptr %34, align 8, !dbg !3034
  %36 = icmp ne ptr %35, null, !dbg !3032
  br i1 %36, label %39, label %37, !dbg !3035

37:                                               ; preds = %26
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8), !dbg !3036
  %38 = load ptr, ptr %2, align 8, !dbg !3038
  call void @MongoFree(ptr noundef %38), !dbg !3039
  store ptr null, ptr %2, align 8, !dbg !3040
  br label %65, !dbg !3041

39:                                               ; preds = %26
  %40 = load ptr, ptr %2, align 8, !dbg !3042
  %41 = getelementptr inbounds %struct._MONGO, ptr %40, i32 0, i32 0, !dbg !3044
  %42 = load ptr, ptr %41, align 8, !dbg !3044
  %43 = call ptr @mongoc_uri_get_database(ptr noundef %42), !dbg !3045
  %44 = load ptr, ptr %2, align 8, !dbg !3046
  %45 = getelementptr inbounds %struct._MONGO, ptr %44, i32 0, i32 2, !dbg !3047
  store ptr %43, ptr %45, align 8, !dbg !3048
  %46 = load ptr, ptr %2, align 8, !dbg !3049
  %47 = getelementptr inbounds %struct._MONGO, ptr %46, i32 0, i32 2, !dbg !3051
  %48 = load ptr, ptr %47, align 8, !dbg !3051
  %49 = icmp ne ptr %48, null, !dbg !3049
  br i1 %49, label %54, label %50, !dbg !3052

50:                                               ; preds = %39
  %51 = load ptr, ptr @MONGO_DEFAULT_DB, align 8, !dbg !3053
  %52 = load ptr, ptr %2, align 8, !dbg !3054
  %53 = getelementptr inbounds %struct._MONGO, ptr %52, i32 0, i32 2, !dbg !3055
  store ptr %51, ptr %53, align 8, !dbg !3056
  br label %54, !dbg !3054

54:                                               ; preds = %50, %39
  %55 = load ptr, ptr %2, align 8, !dbg !3057
  %56 = icmp ne ptr %55, null, !dbg !3057
  br i1 %56, label %57, label %61, !dbg !3059

57:                                               ; preds = %54
  %58 = load i32, ptr @connection_key, align 4, !dbg !3060
  %59 = load ptr, ptr %2, align 8, !dbg !3062
  %60 = call i32 @pthread_setspecific(i32 noundef %58, ptr noundef %59) #8, !dbg !3063
  br label %61, !dbg !3064

61:                                               ; preds = %57, %54
  %62 = load ptr, ptr %1, align 8, !dbg !3065
  %63 = getelementptr inbounds %struct._persistent_users_db_t, ptr %62, i32 0, i32 0, !dbg !3066
  %64 = getelementptr inbounds [1025 x i8], ptr %63, i64 0, i64 0, !dbg !3065
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 0, ptr noundef @.str.9, ptr noundef %64), !dbg !3067
  br label %65

65:                                               ; preds = %61, %37
  br label %66

66:                                               ; preds = %65, %21
  br label %67, !dbg !3068

67:                                               ; preds = %66, %0
  %68 = load ptr, ptr %2, align 8, !dbg !3069
  ret ptr %68, !dbg !3070
}

declare ptr @mongoc_client_get_collection(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @get_persistent_users_db() #2

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) #4

declare void @mongoc_init() #2

declare void @mongoc_log_set_handler(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mongo_logger(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !3071 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store i32 %0, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3075, metadata !DIExpression()), !dbg !3076
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3077, metadata !DIExpression()), !dbg !3078
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3079, metadata !DIExpression()), !dbg !3080
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3081, metadata !DIExpression()), !dbg !3082
  br label %10, !dbg !3083

10:                                               ; preds = %4
  %11 = load ptr, ptr %6, align 8, !dbg !3084
  store ptr %11, ptr %6, align 8, !dbg !3084
  br label %12, !dbg !3084

12:                                               ; preds = %10
  br label %13, !dbg !3086

13:                                               ; preds = %12
  %14 = load ptr, ptr %8, align 8, !dbg !3087
  store ptr %14, ptr %8, align 8, !dbg !3087
  br label %15, !dbg !3087

15:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3089, metadata !DIExpression()), !dbg !3091
  store i32 0, ptr %9, align 4, !dbg !3091
  br label %16, !dbg !3092

16:                                               ; preds = %15
  %17 = load i32, ptr %9, align 4, !dbg !3093
  store i32 %17, ptr %9, align 4, !dbg !3093
  br label %18, !dbg !3093

18:                                               ; preds = %16
  %19 = load i32, ptr %5, align 4, !dbg !3095
  switch i32 %19, label %22 [
    i32 0, label %20
    i32 2, label %21
  ], !dbg !3096

20:                                               ; preds = %18
  store i32 3, ptr %9, align 4, !dbg !3097
  br label %23, !dbg !3099

21:                                               ; preds = %18
  store i32 2, ptr %9, align 4, !dbg !3100
  br label %23, !dbg !3101

22:                                               ; preds = %18
  store i32 0, ptr %9, align 4, !dbg !3102
  br label %23, !dbg !3103

23:                                               ; preds = %22, %21, %20
  %24 = load i32, ptr %9, align 4, !dbg !3104
  %25 = load ptr, ptr %7, align 8, !dbg !3105
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef %24, ptr noundef @.str.10, ptr noundef %25), !dbg !3106
  ret void, !dbg !3107
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @mongoc_uri_new(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @MongoFree(ptr noundef %0) #0 !dbg !3108 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3111, metadata !DIExpression()), !dbg !3112
  %3 = load ptr, ptr %2, align 8, !dbg !3113
  %4 = icmp ne ptr %3, null, !dbg !3113
  br i1 %4, label %5, label %25, !dbg !3115

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !3116
  %7 = getelementptr inbounds %struct._MONGO, ptr %6, i32 0, i32 0, !dbg !3119
  %8 = load ptr, ptr %7, align 8, !dbg !3119
  %9 = icmp ne ptr %8, null, !dbg !3116
  br i1 %9, label %10, label %14, !dbg !3120

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !3121
  %12 = getelementptr inbounds %struct._MONGO, ptr %11, i32 0, i32 0, !dbg !3122
  %13 = load ptr, ptr %12, align 8, !dbg !3122
  call void @mongoc_uri_destroy(ptr noundef %13), !dbg !3123
  br label %14, !dbg !3123

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !3124
  %16 = getelementptr inbounds %struct._MONGO, ptr %15, i32 0, i32 1, !dbg !3126
  %17 = load ptr, ptr %16, align 8, !dbg !3126
  %18 = icmp ne ptr %17, null, !dbg !3124
  br i1 %18, label %19, label %23, !dbg !3127

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !dbg !3128
  %21 = getelementptr inbounds %struct._MONGO, ptr %20, i32 0, i32 1, !dbg !3129
  %22 = load ptr, ptr %21, align 8, !dbg !3129
  call void @mongoc_client_destroy(ptr noundef %22), !dbg !3130
  br label %23, !dbg !3130

23:                                               ; preds = %19, %14
  %24 = load ptr, ptr %2, align 8, !dbg !3131
  call void @free(ptr noundef %24) #8, !dbg !3132
  br label %25, !dbg !3133

25:                                               ; preds = %23, %1
  ret void, !dbg !3134
}

declare ptr @mongoc_client_new_from_uri(ptr noundef) #2

declare ptr @mongoc_uri_get_database(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) #4

declare void @mongoc_uri_destroy(ptr noundef) #2

declare void @mongoc_client_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare i64 @get_hmackey_size(i32 noundef) #2

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @mongoc_collection_update(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @mongoc_collection_delete(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @bson_append_document_begin(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare zeroext i1 @bson_append_document_end(ptr noundef, ptr noundef) #2

declare i32 @printf(ptr noundef, ...) #2

declare zeroext i1 @mongoc_collection_insert(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare void @bson_iter_array(ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @bson_init_static(ptr noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @bson_iter_next(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #4

declare void @bson_iter_document(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @bson_iter_key(ptr noundef) #2

declare double @bson_iter_double(ptr noundef) #2

declare i32 @bson_iter_int32(ptr noundef) #2

declare i64 @bson_iter_int64(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mongo_read_realms_ip_lists(ptr noundef %0, ptr noundef %1) #0 !dbg !3135 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca [129 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca %struct._bson_t, align 128
  %10 = alloca %struct._bson_t, align 128
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.bson_iter_t, align 128
  %15 = alloca [513 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct._bson_t, align 128
  %20 = alloca %struct.bson_iter_t, align 128
  %21 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3136, metadata !DIExpression()), !dbg !3137
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i32 0, ptr %6, align 4, !dbg !3141
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3142, metadata !DIExpression()), !dbg !3143
  %22 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !3144
  %23 = load ptr, ptr %4, align 8, !dbg !3145
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %22, ptr noundef @.str.37, ptr noundef %23) #8, !dbg !3146
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3147, metadata !DIExpression()), !dbg !3148
  %25 = call ptr @mongo_get_collection(ptr noundef @.str.2), !dbg !3149
  store ptr %25, ptr %8, align 8, !dbg !3148
  %26 = load ptr, ptr %8, align 8, !dbg !3150
  %27 = icmp ne ptr %26, null, !dbg !3150
  br i1 %27, label %30, label %28, !dbg !3152

28:                                               ; preds = %2
  %29 = load i32, ptr %6, align 4, !dbg !3153
  store i32 %29, ptr %3, align 4, !dbg !3154
  br label %106, !dbg !3154

30:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @bson_init(ptr noundef %9), !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @bson_init(ptr noundef %10), !dbg !3160
  %31 = call zeroext i1 @bson_append_int32(ptr noundef %10, ptr noundef @.str.2, i32 noundef 5, i32 noundef 1), !dbg !3161
  %32 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !3162
  %33 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !3162
  %34 = call i64 @strlen(ptr noundef %33) #7, !dbg !3162
  %35 = trunc i64 %34 to i32, !dbg !3162
  %36 = call zeroext i1 @bson_append_int32(ptr noundef %10, ptr noundef %32, i32 noundef %35, i32 noundef 1), !dbg !3162
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3163, metadata !DIExpression()), !dbg !3164
  %37 = load ptr, ptr %8, align 8, !dbg !3165
  %38 = call ptr @mongoc_collection_find(ptr noundef %37, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef %9, ptr noundef %10, ptr noundef null), !dbg !3166
  store ptr %38, ptr %11, align 8, !dbg !3167
  %39 = load ptr, ptr %11, align 8, !dbg !3168
  %40 = icmp ne ptr %39, null, !dbg !3168
  br i1 %40, label %42, label %41, !dbg !3170

41:                                               ; preds = %30
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.30), !dbg !3171
  store i32 -1, ptr %6, align 4, !dbg !3173
  br label %103, !dbg !3174

42:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3175, metadata !DIExpression()), !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3178, metadata !DIExpression()), !dbg !3179
  call void @llvm.dbg.declare(metadata ptr %14, metadata !3180, metadata !DIExpression()), !dbg !3181
  call void @llvm.dbg.declare(metadata ptr %15, metadata !3182, metadata !DIExpression()), !dbg !3183
  br label %43, !dbg !3184

43:                                               ; preds = %100, %42
  %44 = load ptr, ptr %11, align 8, !dbg !3185
  %45 = call zeroext i1 @mongoc_cursor_next(ptr noundef %44, ptr noundef %12), !dbg !3186
  br i1 %45, label %46, label %101, !dbg !3184

46:                                               ; preds = %43
  %47 = load ptr, ptr %12, align 8, !dbg !3187
  %48 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %47), !dbg !3190
  br i1 %48, label %49, label %100, !dbg !3191

49:                                               ; preds = %46
  %50 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef @.str.2), !dbg !3192
  br i1 %50, label %51, label %100, !dbg !3193

51:                                               ; preds = %49
  %52 = call i32 @bson_iter_type(ptr noundef %14), !dbg !3194
  %53 = icmp eq i32 %52, 2, !dbg !3194
  br i1 %53, label %54, label %100, !dbg !3195

54:                                               ; preds = %51
  br label %55, !dbg !3196

55:                                               ; preds = %54
  %56 = getelementptr inbounds [513 x i8], ptr %15, i64 0, i64 0, !dbg !3198
  %57 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !3198
  %58 = icmp ne ptr %56, %57, !dbg !3198
  br i1 %58, label %59, label %68, !dbg !3201

59:                                               ; preds = %55
  call void @llvm.dbg.declare(metadata ptr %16, metadata !3202, metadata !DIExpression()), !dbg !3206
  store i64 513, ptr %16, align 8, !dbg !3206
  %60 = getelementptr inbounds [513 x i8], ptr %15, i64 0, i64 0, !dbg !3206
  %61 = call ptr @bson_iter_utf8(ptr noundef %14, ptr noundef %13), !dbg !3206
  %62 = load i64, ptr %16, align 8, !dbg !3206
  %63 = call ptr @strncpy(ptr noundef %60, ptr noundef %61, i64 noundef %62) #8, !dbg !3206
  %64 = getelementptr inbounds [513 x i8], ptr %15, i64 0, i64 0, !dbg !3206
  %65 = load i64, ptr %16, align 8, !dbg !3206
  %66 = sub i64 %65, 1, !dbg !3206
  %67 = getelementptr inbounds i8, ptr %64, i64 %66, !dbg !3206
  store i8 0, ptr %67, align 1, !dbg !3206
  br label %68, !dbg !3207

68:                                               ; preds = %59, %55
  br label %69, !dbg !3201

69:                                               ; preds = %68
  %70 = load ptr, ptr %12, align 8, !dbg !3208
  %71 = call zeroext i1 @bson_iter_init(ptr noundef %14, ptr noundef %70), !dbg !3210
  br i1 %71, label %72, label %99, !dbg !3211

72:                                               ; preds = %69
  %73 = getelementptr inbounds [129 x i8], ptr %7, i64 0, i64 0, !dbg !3212
  %74 = call zeroext i1 @bson_iter_find(ptr noundef %14, ptr noundef %73), !dbg !3213
  br i1 %74, label %75, label %99, !dbg !3214

75:                                               ; preds = %72
  %76 = call i32 @bson_iter_type(ptr noundef %14), !dbg !3215
  %77 = icmp eq i32 %76, 4, !dbg !3215
  br i1 %77, label %78, label %99, !dbg !3216

78:                                               ; preds = %75
  call void @llvm.dbg.declare(metadata ptr %17, metadata !3217, metadata !DIExpression()), !dbg !3219
  store ptr null, ptr %17, align 8, !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %18, metadata !3220, metadata !DIExpression()), !dbg !3221
  store i32 0, ptr %18, align 4, !dbg !3221
  call void @llvm.dbg.declare(metadata ptr %19, metadata !3222, metadata !DIExpression()), !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %20, metadata !3224, metadata !DIExpression()), !dbg !3225
  call void @bson_iter_array(ptr noundef %14, ptr noundef %18, ptr noundef %17), !dbg !3226
  %79 = load ptr, ptr %17, align 8, !dbg !3227
  %80 = load i32, ptr %18, align 4, !dbg !3228
  %81 = zext i32 %80 to i64, !dbg !3228
  %82 = call zeroext i1 @bson_init_static(ptr noundef %19, ptr noundef %79, i64 noundef %81), !dbg !3229
  %83 = call zeroext i1 @bson_iter_init(ptr noundef %20, ptr noundef %19), !dbg !3230
  br i1 %83, label %84, label %98, !dbg !3232

84:                                               ; preds = %78
  br label %85, !dbg !3233

85:                                               ; preds = %96, %84
  %86 = call zeroext i1 @bson_iter_next(ptr noundef %20), !dbg !3235
  br i1 %86, label %87, label %97, !dbg !3233

87:                                               ; preds = %85
  %88 = call i32 @bson_iter_type(ptr noundef %20), !dbg !3236
  %89 = icmp eq i32 %88, 2, !dbg !3236
  br i1 %89, label %90, label %96, !dbg !3239

90:                                               ; preds = %87
  call void @llvm.dbg.declare(metadata ptr %21, metadata !3240, metadata !DIExpression()), !dbg !3242
  %91 = call ptr @bson_iter_utf8(ptr noundef %20, ptr noundef %13), !dbg !3243
  store ptr %91, ptr %21, align 8, !dbg !3242
  %92 = load ptr, ptr %21, align 8, !dbg !3244
  %93 = getelementptr inbounds [513 x i8], ptr %15, i64 0, i64 0, !dbg !3245
  %94 = load ptr, ptr %5, align 8, !dbg !3246
  %95 = call i32 @add_ip_list_range(ptr noundef %92, ptr noundef %93, ptr noundef %94), !dbg !3247
  br label %96, !dbg !3248

96:                                               ; preds = %90, %87
  br label %85, !dbg !3233, !llvm.loop !3249

97:                                               ; preds = %85
  br label %98, !dbg !3251

98:                                               ; preds = %97, %78
  br label %99, !dbg !3252

99:                                               ; preds = %98, %75, %72, %69
  br label %100, !dbg !3253

100:                                              ; preds = %99, %51, %49, %46
  br label %43, !dbg !3184, !llvm.loop !3254

101:                                              ; preds = %43
  %102 = load ptr, ptr %11, align 8, !dbg !3256
  call void @mongoc_cursor_destroy(ptr noundef %102), !dbg !3257
  br label %103

103:                                              ; preds = %101, %41
  %104 = load ptr, ptr %8, align 8, !dbg !3258
  call void @mongoc_collection_destroy(ptr noundef %104), !dbg !3259
  call void @bson_destroy(ptr noundef %9), !dbg !3260
  call void @bson_destroy(ptr noundef %10), !dbg !3261
  %105 = load i32, ptr %6, align 4, !dbg !3262
  store i32 %105, ptr %3, align 4, !dbg !3263
  br label %106, !dbg !3263

106:                                              ; preds = %103, %28
  %107 = load i32, ptr %3, align 4, !dbg !3264
  ret i32 %107, !dbg !3264
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #4

declare i32 @add_ip_list_range(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare ptr @ur_string_map_create(ptr noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #4

declare ptr @get_realm(ptr noundef) #2

declare i32 @ur_string_map_put(ptr noundef, ptr noundef, ptr noundef) #2

declare void @lock_realms() #2

declare void @unlock_realms() #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

declare void @update_o_to_realm(ptr noundef) #2

declare zeroext i1 @bson_append_int64(ptr noundef, ptr noundef, i32 noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!555, !556, !557, !558, !559, !560, !561}
!llvm.ident = !{!562}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 41, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/dbdrivers/dbd_mongo.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "b188b7774b26aa98a8ad267750e8d1ed")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "MONGO_DEFAULT_DB", scope: !9, file: !2, line: 41, type: !102, isLocal: false, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !10, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !11, retainedTypes: !101, globals: !143, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/dbdrivers/dbd_mongo.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "b188b7774b26aa98a8ad267750e8d1ed")
!11 = !{!12, !25, !32, !57, !68, !78, !88, !93, !97}
!12 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 95, baseType: !14, size: 32, elements: !15)
!13 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-flags.h", directory: "", checksumkind: CSK_MD5, checksum: "dcb65a56ce1b685779763817f44c5581")
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !{!16, !17, !18, !19, !20, !21, !22, !23, !24}
!16 = !DIEnumerator(name: "MONGOC_QUERY_NONE", value: 0)
!17 = !DIEnumerator(name: "MONGOC_QUERY_TAILABLE_CURSOR", value: 2)
!18 = !DIEnumerator(name: "MONGOC_QUERY_SLAVE_OK", value: 4)
!19 = !DIEnumerator(name: "MONGOC_QUERY_SECONDARY_OK", value: 4)
!20 = !DIEnumerator(name: "MONGOC_QUERY_OPLOG_REPLAY", value: 8)
!21 = !DIEnumerator(name: "MONGOC_QUERY_NO_CURSOR_TIMEOUT", value: 16)
!22 = !DIEnumerator(name: "MONGOC_QUERY_AWAIT_DATA", value: 32)
!23 = !DIEnumerator(name: "MONGOC_QUERY_EXHAUST", value: 64)
!24 = !DIEnumerator(name: "MONGOC_QUERY_PARTIAL", value: 128)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !26, line: 47, baseType: !14, size: 32, elements: !27)
!26 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!27 = !{!28, !29, !30, !31}
!28 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!29 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!30 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!31 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!32 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 235, baseType: !14, size: 32, elements: !34)
!33 = !DIFile(filename: "/usr/include/libbson-1.0/bson/bson-types.h", directory: "", checksumkind: CSK_MD5, checksum: "89ccd18b278677e3f25297a8c3171624")
!34 = !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!35 = !DIEnumerator(name: "BSON_TYPE_EOD", value: 0)
!36 = !DIEnumerator(name: "BSON_TYPE_DOUBLE", value: 1)
!37 = !DIEnumerator(name: "BSON_TYPE_UTF8", value: 2)
!38 = !DIEnumerator(name: "BSON_TYPE_DOCUMENT", value: 3)
!39 = !DIEnumerator(name: "BSON_TYPE_ARRAY", value: 4)
!40 = !DIEnumerator(name: "BSON_TYPE_BINARY", value: 5)
!41 = !DIEnumerator(name: "BSON_TYPE_UNDEFINED", value: 6)
!42 = !DIEnumerator(name: "BSON_TYPE_OID", value: 7)
!43 = !DIEnumerator(name: "BSON_TYPE_BOOL", value: 8)
!44 = !DIEnumerator(name: "BSON_TYPE_DATE_TIME", value: 9)
!45 = !DIEnumerator(name: "BSON_TYPE_NULL", value: 10)
!46 = !DIEnumerator(name: "BSON_TYPE_REGEX", value: 11)
!47 = !DIEnumerator(name: "BSON_TYPE_DBPOINTER", value: 12)
!48 = !DIEnumerator(name: "BSON_TYPE_CODE", value: 13)
!49 = !DIEnumerator(name: "BSON_TYPE_SYMBOL", value: 14)
!50 = !DIEnumerator(name: "BSON_TYPE_CODEWSCOPE", value: 15)
!51 = !DIEnumerator(name: "BSON_TYPE_INT32", value: 16)
!52 = !DIEnumerator(name: "BSON_TYPE_TIMESTAMP", value: 17)
!53 = !DIEnumerator(name: "BSON_TYPE_INT64", value: 18)
!54 = !DIEnumerator(name: "BSON_TYPE_DECIMAL128", value: 19)
!55 = !DIEnumerator(name: "BSON_TYPE_MAXKEY", value: 127)
!56 = !DIEnumerator(name: "BSON_TYPE_MINKEY", value: 255)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !33, line: 267, baseType: !14, size: 32, elements: !58)
!58 = !{!59, !60, !61, !62, !63, !64, !65, !66, !67}
!59 = !DIEnumerator(name: "BSON_SUBTYPE_BINARY", value: 0)
!60 = !DIEnumerator(name: "BSON_SUBTYPE_FUNCTION", value: 1)
!61 = !DIEnumerator(name: "BSON_SUBTYPE_BINARY_DEPRECATED", value: 2)
!62 = !DIEnumerator(name: "BSON_SUBTYPE_UUID_DEPRECATED", value: 3)
!63 = !DIEnumerator(name: "BSON_SUBTYPE_UUID", value: 4)
!64 = !DIEnumerator(name: "BSON_SUBTYPE_MD5", value: 5)
!65 = !DIEnumerator(name: "BSON_SUBTYPE_ENCRYPTED", value: 6)
!66 = !DIEnumerator(name: "BSON_SUBTYPE_COLUMN", value: 7)
!67 = !DIEnumerator(name: "BSON_SUBTYPE_USER", value: 128)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !69, line: 48, baseType: !14, size: 32, elements: !70)
!69 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-log.h", directory: "", checksumkind: CSK_MD5, checksum: "1c741c1aed2b563cacb6bced8e97d0b0")
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_ERROR", value: 0)
!72 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_CRITICAL", value: 1)
!73 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_WARNING", value: 2)
!74 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_MESSAGE", value: 3)
!75 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_INFO", value: 4)
!76 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_DEBUG", value: 5)
!77 = !DIEnumerator(name: "MONGOC_LOG_LEVEL_TRACE", value: 6)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !79, line: 160, baseType: !80, size: 32, elements: !81)
!79 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!80 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!81 = !{!82, !83, !84, !85, !86, !87}
!82 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!83 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!84 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!85 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!86 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!87 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 137, baseType: !14, size: 32, elements: !89)
!89 = !{!90, !91, !92}
!90 = !DIEnumerator(name: "MONGOC_UPDATE_NONE", value: 0)
!91 = !DIEnumerator(name: "MONGOC_UPDATE_UPSERT", value: 1)
!92 = !DIEnumerator(name: "MONGOC_UPDATE_MULTI_UPDATE", value: 2)
!93 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 39, baseType: !14, size: 32, elements: !94)
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "MONGOC_DELETE_NONE", value: 0)
!96 = !DIEnumerator(name: "MONGOC_DELETE_SINGLE_REMOVE", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !13, line: 67, baseType: !14, size: 32, elements: !98)
!98 = !{!99, !100}
!99 = !DIEnumerator(name: "MONGOC_INSERT_NONE", value: 0)
!100 = !DIEnumerator(name: "MONGOC_INSERT_CONTINUE_ON_ERROR", value: 1)
!101 = !{!80, !102, !104, !120, !121, !122, !126, !128, !129, !133, !135, !137, !140, !142, !132}
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "MONGO", file: !2, line: 49, baseType: !106)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_MONGO", file: !2, line: 43, size: 192, elements: !107)
!107 = !{!108, !113, !119}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "uri", scope: !106, file: !2, line: 44, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_uri_t", file: !111, line: 95, baseType: !112)
!111 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-uri.h", directory: "", checksumkind: CSK_MD5, checksum: "ec8a82d2d8c002b1517fee400464e7cc")
!112 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_uri_t", file: !111, line: 95, flags: DIFlagFwdDecl)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "client", scope: !106, file: !2, line: 45, baseType: !114, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_client_t", file: !116, line: 75, baseType: !117)
!116 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-client.h", directory: "", checksumkind: CSK_MD5, checksum: "a1b1212bb6ae352f4d6cd67651bf4990")
!117 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_client_t", file: !118, line: 25, flags: DIFlagFwdDecl)
!118 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-client-side-encryption.h", directory: "", checksumkind: CSK_MD5, checksum: "b5be0a43bc59dc23fea512cd25d3fbf7")
!119 = !DIDerivedType(tag: DW_TAG_member, name: "database", scope: !106, file: !2, line: 46, baseType: !102, size: 64, offset: 128)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !123, line: 26, baseType: !124)
!123 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !125, line: 41, baseType: !80)
!125 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !127, line: 225, baseType: !120)
!127 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !127, line: 224, baseType: !121)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !130, line: 27, baseType: !131)
!130 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !125, line: 45, baseType: !132)
!132 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !134, line: 67, baseType: !132)
!134 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !136, line: 105, baseType: !80)
!136 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !123, line: 27, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int64_t", file: !125, line: 44, baseType: !139)
!139 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !130, line: 26, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !125, line: 42, baseType: !14)
!142 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!143 = !{!0, !7, !144, !352, !357, !362, !364, !369, !374, !379, !384, !389, !394, !397, !402, !404, !407, !412, !417, !422, !427, !432, !437, !442, !447, !452, !454, !456, !461, !463, !468, !470, !475, !480, !482, !484, !486, !488, !490, !495, !497, !499, !501, !503, !505, !510, !512, !514, !516, !518, !520, !522, !527, !529, !531, !533, !535, !540, !542, !544, !546, !548, !550}
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(name: "driver", scope: !9, file: !2, line: 1365, type: !146, isLocal: true, isDefinition: true)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !148, line: 77, baseType: !149)
!148 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !148, line: 50, size: 1664, elements: !150)
!150 = !{!151, !169, !173, !177, !181, !185, !186, !187, !188, !189, !193, !194, !198, !199, !203, !289, !293, !297, !321, !327, !331, !335, !339, !343, !344, !348}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !149, file: !148, line: 51, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!80, !155, !165}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !157, line: 143, baseType: !158)
!157 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !157, line: 139, size: 128, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !158, file: !157, line: 140, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !158, file: !157, line: 141, baseType: !163, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 46, baseType: !132)
!164 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !130, line: 24, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !125, line: 38, baseType: !168)
!168 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !149, file: !148, line: 52, baseType: !170, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!80, !165, !165, !165}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !149, file: !148, line: 53, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = !DISubroutineType(types: !176)
!176 = !{!80, !165, !165, !102}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !149, file: !148, line: 54, baseType: !178, size: 64, offset: 192)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!80, !165, !165}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !149, file: !148, line: 55, baseType: !182, size: 64, offset: 256)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!80, !165, !155, !155}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !149, file: !148, line: 56, baseType: !182, size: 64, offset: 320)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !149, file: !148, line: 57, baseType: !178, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !149, file: !148, line: 58, baseType: !178, size: 64, offset: 448)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !149, file: !148, line: 59, baseType: !178, size: 64, offset: 512)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !149, file: !148, line: 60, baseType: !190, size: 64, offset: 576)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DISubroutineType(types: !192)
!192 = !{!80, !165}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !149, file: !148, line: 61, baseType: !182, size: 64, offset: 640)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !149, file: !148, line: 62, baseType: !195, size: 64, offset: 704)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!80, !165, !132, !102}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !149, file: !148, line: 63, baseType: !190, size: 64, offset: 768)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !149, file: !148, line: 64, baseType: !200, size: 64, offset: 832)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DISubroutineType(types: !202)
!202 = !{null, !120}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !149, file: !148, line: 65, baseType: !204, size: 64, offset: 896)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!80, !102, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !209, line: 159, baseType: !210)
!209 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !209, line: 154, size: 128, elements: !211)
!211 = !{!212, !288}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !210, file: !209, line: 155, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !209, line: 152, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !209, line: 146, size: 6624, elements: !216)
!216 = !{!217, !221, !225}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !215, file: !209, line: 147, baseType: !218, size: 2056)
!218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2056, elements: !219)
!219 = !{!220}
!220 = !DISubrange(count: 257)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !215, file: !209, line: 148, baseType: !222, size: 4104, offset: 2056)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4104, elements: !223)
!223 = !{!224}
!224 = !DISubrange(count: 513)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !215, file: !209, line: 149, baseType: !226, size: 448, offset: 6176)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !227, line: 53, baseType: !228)
!227 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !227, line: 50, size: 448, elements: !229)
!229 = !{!230, !287}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !228, file: !227, line: 51, baseType: !231, size: 224)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !227, line: 48, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !227, line: 44, size: 224, elements: !233)
!233 = !{!234, !246, !264}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !232, file: !227, line: 45, baseType: !235, size: 128)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !236, line: 180, size: 128, elements: !237)
!236 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!237 = !{!238, !242}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !235, file: !236, line: 182, baseType: !239, size: 16)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !240, line: 28, baseType: !241)
!240 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!241 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !235, file: !236, line: 183, baseType: !243, size: 112, offset: 16)
!243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !244)
!244 = !{!245}
!245 = !DISubrange(count: 14)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !232, file: !227, line: 46, baseType: !247, size: 128)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !248, line: 245, size: 128, elements: !249)
!248 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!249 = !{!250, !251, !255, !260}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !247, file: !248, line: 247, baseType: !239, size: 16)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !247, file: !248, line: 248, baseType: !252, size: 16, offset: 16)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !248, line: 123, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !130, line: 25, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !125, line: 40, baseType: !241)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !247, file: !248, line: 249, baseType: !256, size: 32, offset: 32)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !248, line: 31, size: 32, elements: !257)
!257 = !{!258}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !256, file: !248, line: 33, baseType: !259, size: 32)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !248, line: 30, baseType: !140)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !247, file: !248, line: 252, baseType: !261, size: 64, offset: 64)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !168, size: 64, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 8)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !232, file: !227, line: 47, baseType: !265, size: 224)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !248, line: 260, size: 224, elements: !266)
!266 = !{!267, !268, !269, !270, !286}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !265, file: !248, line: 262, baseType: !239, size: 16)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !265, file: !248, line: 263, baseType: !252, size: 16, offset: 16)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !265, file: !248, line: 264, baseType: !140, size: 32, offset: 32)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !265, file: !248, line: 265, baseType: !271, size: 128, offset: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !248, line: 219, size: 128, elements: !272)
!272 = !{!273}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !271, file: !248, line: 226, baseType: !274, size: 128)
!274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !271, file: !248, line: 221, size: 128, elements: !275)
!275 = !{!276, !280, !282}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !274, file: !248, line: 223, baseType: !277, size: 128)
!277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 128, elements: !278)
!278 = !{!279}
!279 = !DISubrange(count: 16)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !274, file: !248, line: 224, baseType: !281, size: 128)
!281 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 128, elements: !262)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !274, file: !248, line: 225, baseType: !283, size: 128)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !140, size: 128, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 4)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !265, file: !248, line: 266, baseType: !140, size: 32, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !228, file: !227, line: 52, baseType: !231, size: 224, offset: 224)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !210, file: !209, line: 156, baseType: !163, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !149, file: !148, line: 66, baseType: !290, size: 64, offset: 960)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!80, !102, !165, !102, !80}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !149, file: !148, line: 67, baseType: !294, size: 64, offset: 1024)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{null, !155}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !149, file: !148, line: 68, baseType: !298, size: 64, offset: 1088)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!80, !301}
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !303, line: 144, baseType: !304)
!303 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !303, line: 135, size: 4800, elements: !305)
!305 = !{!306, !310, !311, !312, !313, !317}
!306 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !304, file: !303, line: 136, baseType: !307, size: 1032)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !308)
!308 = !{!309}
!309 = !DISubrange(count: 129)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !304, file: !303, line: 137, baseType: !218, size: 2056, offset: 1032)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !304, file: !303, line: 138, baseType: !129, size: 64, offset: 3136)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !304, file: !303, line: 139, baseType: !140, size: 32, offset: 3200)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !304, file: !303, line: 140, baseType: !314, size: 520, offset: 3232)
!314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !315)
!315 = !{!316}
!316 = !DISubrange(count: 65)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !304, file: !303, line: 141, baseType: !318, size: 1024, offset: 3752)
!318 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !319)
!319 = !{!320}
!320 = !DISubrange(count: 128)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !149, file: !148, line: 69, baseType: !322, size: 64, offset: 1152)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!80, !325, !301}
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !149, file: !148, line: 70, baseType: !328, size: 64, offset: 1216)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!80, !325}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !149, file: !148, line: 71, baseType: !332, size: 64, offset: 1280)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!80, !155, !155, !155, !155, !155}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !149, file: !148, line: 72, baseType: !336, size: 64, offset: 1344)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!80, !325, !165, !165}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !149, file: !148, line: 73, baseType: !340, size: 64, offset: 1408)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!80, !325, !325, !325}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !149, file: !148, line: 74, baseType: !328, size: 64, offset: 1472)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !149, file: !148, line: 75, baseType: !345, size: 64, offset: 1536)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!80, !80}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !149, file: !148, line: 76, baseType: !349, size: 64, offset: 1600)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{null}
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 12)
!357 = !DIGlobalVariableExpression(var: !358, expr: !DIExpression())
!358 = distinct !DIGlobalVariable(scope: null, file: !2, line: 157, type: !359, isLocal: true, isDefinition: true)
!359 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !360)
!360 = !{!361}
!361 = !DISubrange(count: 6)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !359, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 169, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 392, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 49)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 133, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 39)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 141, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 42)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(scope: null, file: !2, line: 99, type: !381, isLocal: true, isDefinition: true)
!381 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 544, elements: !382)
!382 = !{!383}
!383 = !DISubrange(count: 68)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !2, line: 108, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 38)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 25)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !284)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !2, line: 192, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 13)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !2, line: 199, type: !3, isLocal: true, isDefinition: true)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 204, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !262)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 212, type: !409, isLocal: true, isDefinition: true)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 50)
!412 = !DIGlobalVariableExpression(var: !413, expr: !DIExpression())
!413 = distinct !DIGlobalVariable(scope: null, file: !2, line: 223, type: !414, isLocal: true, isDefinition: true)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 464, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 58)
!417 = !DIGlobalVariableExpression(var: !418, expr: !DIExpression())
!418 = distinct !DIGlobalVariable(scope: null, file: !2, line: 229, type: !419, isLocal: true, isDefinition: true)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 24)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(scope: null, file: !2, line: 325, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 47)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !2, line: 382, type: !429, isLocal: true, isDefinition: true)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !430)
!430 = !{!431}
!431 = !DISubrange(count: 37)
!432 = !DIGlobalVariableExpression(var: !433, expr: !DIExpression())
!433 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !434, isLocal: true, isDefinition: true)
!434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !435)
!435 = !{!436}
!436 = !DISubrange(count: 9)
!437 = !DIGlobalVariableExpression(var: !438, expr: !DIExpression())
!438 = distinct !DIGlobalVariable(scope: null, file: !2, line: 431, type: !439, isLocal: true, isDefinition: true)
!439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !440)
!440 = !{!441}
!441 = !DISubrange(count: 7)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !444, isLocal: true, isDefinition: true)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 40)
!447 = !DIGlobalVariableExpression(var: !448, expr: !DIExpression())
!448 = distinct !DIGlobalVariable(scope: null, file: !2, line: 459, type: !449, isLocal: true, isDefinition: true)
!449 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !450)
!450 = !{!451}
!451 = !DISubrange(count: 1)
!452 = !DIGlobalVariableExpression(var: !453, expr: !DIExpression())
!453 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !406, isLocal: true, isDefinition: true)
!454 = !DIGlobalVariableExpression(var: !455, expr: !DIExpression())
!455 = distinct !DIGlobalVariable(scope: null, file: !2, line: 684, type: !366, isLocal: true, isDefinition: true)
!456 = !DIGlobalVariableExpression(var: !457, expr: !DIExpression())
!457 = distinct !DIGlobalVariable(scope: null, file: !2, line: 753, type: !458, isLocal: true, isDefinition: true)
!458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !459)
!459 = !{!460}
!460 = !DISubrange(count: 10)
!461 = !DIGlobalVariableExpression(var: !462, expr: !DIExpression())
!462 = distinct !DIGlobalVariable(scope: null, file: !2, line: 754, type: !439, isLocal: true, isDefinition: true)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !2, line: 758, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 408, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 51)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !2, line: 780, type: !359, isLocal: true, isDefinition: true)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(scope: null, file: !2, line: 785, type: !472, isLocal: true, isDefinition: true)
!472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !473)
!473 = !{!474}
!474 = !DISubrange(count: 35)
!475 = !DIGlobalVariableExpression(var: !476, expr: !DIExpression())
!476 = distinct !DIGlobalVariable(scope: null, file: !2, line: 827, type: !477, isLocal: true, isDefinition: true)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 43)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 856, type: !354, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 886, type: !434, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 890, type: !3, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 894, type: !439, isLocal: true, isDefinition: true)
!488 = !DIGlobalVariableExpression(var: !489, expr: !DIExpression())
!489 = distinct !DIGlobalVariable(scope: null, file: !2, line: 932, type: !406, isLocal: true, isDefinition: true)
!490 = !DIGlobalVariableExpression(var: !491, expr: !DIExpression())
!491 = distinct !DIGlobalVariable(scope: null, file: !2, line: 965, type: !492, isLocal: true, isDefinition: true)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 11)
!495 = !DIGlobalVariableExpression(var: !496, expr: !DIExpression())
!496 = distinct !DIGlobalVariable(scope: null, file: !2, line: 997, type: !492, isLocal: true, isDefinition: true)
!497 = !DIGlobalVariableExpression(var: !498, expr: !DIExpression())
!498 = distinct !DIGlobalVariable(scope: null, file: !2, line: 727, type: !477, isLocal: true, isDefinition: true)
!499 = !DIGlobalVariableExpression(var: !500, expr: !DIExpression())
!500 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1164, type: !406, isLocal: true, isDefinition: true)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1166, type: !354, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1168, type: !492, isLocal: true, isDefinition: true)
!505 = !DIGlobalVariableExpression(var: !506, expr: !DIExpression())
!506 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1172, type: !507, isLocal: true, isDefinition: true)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 26)
!510 = !DIGlobalVariableExpression(var: !511, expr: !DIExpression())
!511 = distinct !DIGlobalVariable(scope: null, file: !2, line: 337, type: !458, isLocal: true, isDefinition: true)
!512 = !DIGlobalVariableExpression(var: !513, expr: !DIExpression())
!513 = distinct !DIGlobalVariable(scope: null, file: !2, line: 344, type: !396, isLocal: true, isDefinition: true)
!514 = !DIGlobalVariableExpression(var: !515, expr: !DIExpression())
!515 = distinct !DIGlobalVariable(scope: null, file: !2, line: 349, type: !458, isLocal: true, isDefinition: true)
!516 = !DIGlobalVariableExpression(var: !517, expr: !DIExpression())
!517 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !406, isLocal: true, isDefinition: true)
!518 = !DIGlobalVariableExpression(var: !519, expr: !DIExpression())
!519 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !458, isLocal: true, isDefinition: true)
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !434, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !2, line: 358, type: !524, isLocal: true, isDefinition: true)
!524 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !525)
!525 = !{!526}
!526 = !DISubrange(count: 48)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 274, type: !424, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !386, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 554, type: !3, isLocal: true, isDefinition: true)
!533 = !DIGlobalVariableExpression(var: !534, expr: !DIExpression())
!534 = distinct !DIGlobalVariable(scope: null, file: !2, line: 559, type: !396, isLocal: true, isDefinition: true)
!535 = !DIGlobalVariableExpression(var: !536, expr: !DIExpression())
!536 = distinct !DIGlobalVariable(scope: null, file: !2, line: 563, type: !537, isLocal: true, isDefinition: true)
!537 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 608, elements: !538)
!538 = !{!539}
!539 = !DISubrange(count: 76)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1193, type: !492, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1208, type: !434, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1216, type: !524, isLocal: true, isDefinition: true)
!546 = !DIGlobalVariableExpression(var: !547, expr: !DIExpression())
!547 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1259, type: !366, isLocal: true, isDefinition: true)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1283, type: !371, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1360, type: !552, isLocal: true, isDefinition: true)
!552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !553)
!553 = !{!554}
!554 = !DISubrange(count: 32)
!555 = !{i32 7, !"Dwarf Version", i32 5}
!556 = !{i32 2, !"Debug Info Version", i32 3}
!557 = !{i32 1, !"wchar_size", i32 4}
!558 = !{i32 8, !"PIC Level", i32 2}
!559 = !{i32 7, !"PIE Level", i32 2}
!560 = !{i32 7, !"uwtable", i32 2}
!561 = !{i32 7, !"frame-pointer", i32 2}
!562 = !{!"clang version 16.0.0"}
!563 = distinct !DISubprogram(name: "get_mongo_dbdriver", scope: !2, file: !2, line: 1394, type: !564, scopeLine: 1394, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !567)
!564 = !DISubroutineType(types: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!567 = !{}
!568 = !DILocation(line: 1395, column: 3, scope: !563)
!569 = distinct !DISubprogram(name: "mongo_get_auth_secrets", scope: !2, file: !2, line: 149, type: !153, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!570 = !DILocalVariable(name: "sl", arg: 1, scope: !569, file: !2, line: 149, type: !155)
!571 = !DILocation(line: 149, column: 51, scope: !569)
!572 = !DILocalVariable(name: "realm", arg: 2, scope: !569, file: !2, line: 149, type: !165)
!573 = !DILocation(line: 149, column: 64, scope: !569)
!574 = !DILocalVariable(name: "collection", scope: !569, file: !2, line: 150, type: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_collection_t", file: !577, line: 38, baseType: !578)
!577 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-collection.h", directory: "", checksumkind: CSK_MD5, checksum: "2cea9224f2c11ca0048d3faf871f3e43")
!578 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_collection_t", file: !577, line: 38, flags: DIFlagFwdDecl)
!579 = !DILocation(line: 150, column: 25, scope: !569)
!580 = !DILocation(line: 150, column: 38, scope: !569)
!581 = !DILocation(line: 152, column: 6, scope: !582)
!582 = distinct !DILexicalBlock(scope: !569, file: !2, line: 152, column: 5)
!583 = !DILocation(line: 152, column: 5, scope: !569)
!584 = !DILocation(line: 153, column: 5, scope: !582)
!585 = !DILocalVariable(name: "query", scope: !569, file: !2, line: 155, type: !586)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_t", file: !33, line: 138, baseType: !587, align: 1024)
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_t", file: !33, line: 134, size: 1024, elements: !588)
!588 = !{!589, !590, !591}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !587, file: !33, line: 135, baseType: !140, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !587, file: !33, line: 136, baseType: !140, size: 32, offset: 32)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !587, file: !33, line: 137, baseType: !592, size: 960, offset: 64)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 960, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 120)
!595 = !DILocation(line: 155, column: 10, scope: !569)
!596 = !DILocation(line: 156, column: 3, scope: !569)
!597 = !DILocation(line: 157, column: 3, scope: !569)
!598 = !DILocalVariable(name: "fields", scope: !569, file: !2, line: 159, type: !586)
!599 = !DILocation(line: 159, column: 10, scope: !569)
!600 = !DILocation(line: 160, column: 3, scope: !569)
!601 = !DILocation(line: 161, column: 3, scope: !569)
!602 = !DILocalVariable(name: "cursor", scope: !569, file: !2, line: 163, type: !603)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_cursor_t", file: !605, line: 30, baseType: !606)
!605 = !DIFile(filename: "/usr/include/libmongoc-1.0/mongoc/mongoc-cursor.h", directory: "", checksumkind: CSK_MD5, checksum: "ab02e4cb247e4dedbf49e30b4b02e193")
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "_mongoc_cursor_t", file: !605, line: 30, flags: DIFlagFwdDecl)
!607 = !DILocation(line: 163, column: 21, scope: !569)
!608 = !DILocation(line: 164, column: 35, scope: !569)
!609 = !DILocation(line: 164, column: 12, scope: !569)
!610 = !DILocation(line: 164, column: 10, scope: !569)
!611 = !DILocalVariable(name: "ret", scope: !569, file: !2, line: 166, type: !80)
!612 = !DILocation(line: 166, column: 7, scope: !569)
!613 = !DILocation(line: 168, column: 8, scope: !614)
!614 = distinct !DILexicalBlock(scope: !569, file: !2, line: 168, column: 7)
!615 = !DILocation(line: 168, column: 7, scope: !569)
!616 = !DILocation(line: 169, column: 3, scope: !617)
!617 = distinct !DILexicalBlock(scope: !614, file: !2, line: 168, column: 16)
!618 = !DILocation(line: 170, column: 3, scope: !617)
!619 = !DILocalVariable(name: "item", scope: !620, file: !2, line: 171, type: !621)
!620 = distinct !DILexicalBlock(scope: !614, file: !2, line: 170, column: 10)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !586)
!623 = !DILocation(line: 171, column: 20, scope: !620)
!624 = !DILocalVariable(name: "length", scope: !620, file: !2, line: 172, type: !140)
!625 = !DILocation(line: 172, column: 14, scope: !620)
!626 = !DILocalVariable(name: "iter", scope: !620, file: !2, line: 173, type: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_iter_t", file: !33, line: 376, baseType: !628, align: 1024)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 363, size: 640, elements: !629)
!629 = !{!630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "raw", scope: !628, file: !33, line: 364, baseType: !325, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !628, file: !33, line: 365, baseType: !140, size: 32, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "off", scope: !628, file: !33, line: 366, baseType: !140, size: 32, offset: 96)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !628, file: !33, line: 367, baseType: !140, size: 32, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !628, file: !33, line: 368, baseType: !140, size: 32, offset: 160)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "d1", scope: !628, file: !33, line: 369, baseType: !140, size: 32, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "d2", scope: !628, file: !33, line: 370, baseType: !140, size: 32, offset: 224)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "d3", scope: !628, file: !33, line: 371, baseType: !140, size: 32, offset: 256)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "d4", scope: !628, file: !33, line: 372, baseType: !140, size: 32, offset: 288)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "next_off", scope: !628, file: !33, line: 373, baseType: !140, size: 32, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "err_off", scope: !628, file: !33, line: 374, baseType: !140, size: 32, offset: 352)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !628, file: !33, line: 375, baseType: !642, size: 256, align: 64, offset: 384)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_value_t", file: !33, line: 348, baseType: !643, align: 64)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_bson_value_t", file: !33, line: 295, size: 256, elements: !644)
!644 = !{!645, !647, !648}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "value_type", scope: !643, file: !33, line: 296, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_type_t", file: !33, line: 258, baseType: !32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !643, file: !33, line: 297, baseType: !122, size: 32, offset: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !643, file: !33, line: 347, baseType: !649, size: 192, offset: 64)
!649 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !643, file: !33, line: 298, size: 192, elements: !650)
!650 = !{!651, !657, !658, !659, !663, !665, !667, !668, !673, !678, !683, !690, !695, !701, !706, !713, !718}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "v_oid", scope: !649, file: !33, line: 299, baseType: !652, size: 96)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_oid_t", file: !33, line: 179, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 177, size: 96, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !653, file: !33, line: 178, baseType: !656, size: 96)
!656 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 96, elements: !355)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "v_int64", scope: !649, file: !33, line: 300, baseType: !137, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "v_int32", scope: !649, file: !33, line: 301, baseType: !122, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "v_int8", scope: !649, file: !33, line: 302, baseType: !660, size: 8)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !123, line: 24, baseType: !661)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int8_t", file: !125, line: 37, baseType: !662)
!662 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "v_double", scope: !649, file: !33, line: 303, baseType: !664, size: 64)
!664 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "v_bool", scope: !649, file: !33, line: 304, baseType: !666, size: 8)
!666 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "v_datetime", scope: !649, file: !33, line: 305, baseType: !137, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "v_timestamp", scope: !649, file: !33, line: 309, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 306, size: 64, elements: !670)
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !669, file: !33, line: 307, baseType: !140, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "increment", scope: !669, file: !33, line: 308, baseType: !140, size: 32, offset: 32)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "v_utf8", scope: !649, file: !33, line: 313, baseType: !674, size: 128)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 310, size: 128, elements: !675)
!675 = !{!676, !677}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !674, file: !33, line: 311, baseType: !121, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !674, file: !33, line: 312, baseType: !140, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "v_doc", scope: !649, file: !33, line: 317, baseType: !679, size: 128)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 314, size: 128, elements: !680)
!680 = !{!681, !682}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !679, file: !33, line: 315, baseType: !165, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !679, file: !33, line: 316, baseType: !140, size: 32, offset: 64)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "v_binary", scope: !649, file: !33, line: 322, baseType: !684, size: 128)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 318, size: 128, elements: !685)
!685 = !{!686, !687, !688}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !684, file: !33, line: 319, baseType: !165, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "data_len", scope: !684, file: !33, line: 320, baseType: !140, size: 32, offset: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "subtype", scope: !684, file: !33, line: 321, baseType: !689, size: 32, offset: 96)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_subtype_t", file: !33, line: 277, baseType: !57)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "v_regex", scope: !649, file: !33, line: 326, baseType: !691, size: 128)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 323, size: 128, elements: !692)
!692 = !{!693, !694}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "regex", scope: !691, file: !33, line: 324, baseType: !121, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !691, file: !33, line: 325, baseType: !121, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "v_dbpointer", scope: !649, file: !33, line: 331, baseType: !696, size: 192)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 327, size: 192, elements: !697)
!697 = !{!698, !699, !700}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "collection", scope: !696, file: !33, line: 328, baseType: !121, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "collection_len", scope: !696, file: !33, line: 329, baseType: !140, size: 32, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "oid", scope: !696, file: !33, line: 330, baseType: !652, size: 96, offset: 96)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "v_code", scope: !649, file: !33, line: 335, baseType: !702, size: 128)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 332, size: 128, elements: !703)
!703 = !{!704, !705}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !702, file: !33, line: 333, baseType: !121, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !702, file: !33, line: 334, baseType: !140, size: 32, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "v_codewscope", scope: !649, file: !33, line: 341, baseType: !707, size: 192)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 336, size: 192, elements: !708)
!708 = !{!709, !710, !711, !712}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !707, file: !33, line: 337, baseType: !121, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "scope_data", scope: !707, file: !33, line: 338, baseType: !165, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "code_len", scope: !707, file: !33, line: 339, baseType: !140, size: 32, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "scope_len", scope: !707, file: !33, line: 340, baseType: !140, size: 32, offset: 160)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "v_symbol", scope: !649, file: !33, line: 345, baseType: !714, size: 128)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !649, file: !33, line: 342, size: 128, elements: !715)
!715 = !{!716, !717}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "symbol", scope: !714, file: !33, line: 343, baseType: !121, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !714, file: !33, line: 344, baseType: !140, size: 32, offset: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "v_decimal128", scope: !649, file: !33, line: 346, baseType: !719, size: 128)
!719 = !DIDerivedType(tag: DW_TAG_typedef, name: "bson_decimal128_t", file: !33, line: 203, baseType: !720)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !33, line: 195, size: 128, elements: !721)
!721 = !{!722, !723}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !720, file: !33, line: 197, baseType: !129, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !720, file: !33, line: 198, baseType: !129, size: 64, offset: 64)
!724 = !DILocation(line: 173, column: 17, scope: !620)
!725 = !DILocalVariable(name: "value", scope: !620, file: !2, line: 174, type: !102)
!726 = !DILocation(line: 174, column: 18, scope: !620)
!727 = !DILocation(line: 175, column: 5, scope: !620)
!728 = !DILocation(line: 175, column: 30, scope: !620)
!729 = !DILocation(line: 175, column: 11, scope: !620)
!730 = !DILocation(line: 176, column: 32, scope: !731)
!731 = distinct !DILexicalBlock(scope: !732, file: !2, line: 176, column: 10)
!732 = distinct !DILexicalBlock(scope: !620, file: !2, line: 175, column: 46)
!733 = !DILocation(line: 176, column: 10, scope: !731)
!734 = !DILocation(line: 176, column: 38, scope: !731)
!735 = !DILocation(line: 176, column: 41, scope: !731)
!736 = !DILocation(line: 176, column: 72, scope: !731)
!737 = !DILocation(line: 176, column: 75, scope: !731)
!738 = !DILocation(line: 176, column: 10, scope: !732)
!739 = !DILocation(line: 177, column: 17, scope: !740)
!740 = distinct !DILexicalBlock(scope: !731, file: !2, line: 176, column: 104)
!741 = !DILocation(line: 177, column: 15, scope: !740)
!742 = !DILocation(line: 178, column: 25, scope: !740)
!743 = !DILocation(line: 178, column: 29, scope: !740)
!744 = !DILocation(line: 178, column: 5, scope: !740)
!745 = !DILocation(line: 179, column: 7, scope: !740)
!746 = distinct !{!746, !727, !747, !748}
!747 = !DILocation(line: 180, column: 5, scope: !620)
!748 = !{!"llvm.loop.mustprogress"}
!749 = !DILocation(line: 181, column: 27, scope: !620)
!750 = !DILocation(line: 181, column: 5, scope: !620)
!751 = !DILocation(line: 182, column: 9, scope: !620)
!752 = !DILocation(line: 185, column: 29, scope: !569)
!753 = !DILocation(line: 185, column: 3, scope: !569)
!754 = !DILocation(line: 186, column: 3, scope: !569)
!755 = !DILocation(line: 187, column: 3, scope: !569)
!756 = !DILocation(line: 188, column: 10, scope: !569)
!757 = !DILocation(line: 188, column: 3, scope: !569)
!758 = !DILocation(line: 189, column: 1, scope: !569)
!759 = distinct !DISubprogram(name: "mongo_get_user_key", scope: !2, file: !2, line: 191, type: !171, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!760 = !DILocalVariable(name: "usname", arg: 1, scope: !759, file: !2, line: 191, type: !165)
!761 = !DILocation(line: 191, column: 40, scope: !759)
!762 = !DILocalVariable(name: "realm", arg: 2, scope: !759, file: !2, line: 191, type: !165)
!763 = !DILocation(line: 191, column: 57, scope: !759)
!764 = !DILocalVariable(name: "key", arg: 3, scope: !759, file: !2, line: 191, type: !165)
!765 = !DILocation(line: 191, column: 74, scope: !759)
!766 = !DILocalVariable(name: "collection", scope: !759, file: !2, line: 192, type: !575)
!767 = !DILocation(line: 192, column: 25, scope: !759)
!768 = !DILocation(line: 192, column: 38, scope: !759)
!769 = !DILocation(line: 194, column: 6, scope: !770)
!770 = distinct !DILexicalBlock(scope: !759, file: !2, line: 194, column: 5)
!771 = !DILocation(line: 194, column: 5, scope: !759)
!772 = !DILocation(line: 195, column: 5, scope: !770)
!773 = !DILocalVariable(name: "query", scope: !759, file: !2, line: 197, type: !586)
!774 = !DILocation(line: 197, column: 10, scope: !759)
!775 = !DILocation(line: 198, column: 3, scope: !759)
!776 = !DILocation(line: 199, column: 3, scope: !759)
!777 = !DILocation(line: 200, column: 3, scope: !759)
!778 = !DILocalVariable(name: "fields", scope: !759, file: !2, line: 202, type: !586)
!779 = !DILocation(line: 202, column: 10, scope: !759)
!780 = !DILocation(line: 203, column: 3, scope: !759)
!781 = !DILocation(line: 204, column: 3, scope: !759)
!782 = !DILocalVariable(name: "cursor", scope: !759, file: !2, line: 206, type: !603)
!783 = !DILocation(line: 206, column: 21, scope: !759)
!784 = !DILocation(line: 207, column: 35, scope: !759)
!785 = !DILocation(line: 207, column: 12, scope: !759)
!786 = !DILocation(line: 207, column: 10, scope: !759)
!787 = !DILocalVariable(name: "ret", scope: !759, file: !2, line: 209, type: !80)
!788 = !DILocation(line: 209, column: 7, scope: !759)
!789 = !DILocation(line: 211, column: 8, scope: !790)
!790 = distinct !DILexicalBlock(scope: !759, file: !2, line: 211, column: 7)
!791 = !DILocation(line: 211, column: 7, scope: !759)
!792 = !DILocation(line: 212, column: 3, scope: !793)
!793 = distinct !DILexicalBlock(scope: !790, file: !2, line: 211, column: 16)
!794 = !DILocation(line: 213, column: 3, scope: !793)
!795 = !DILocalVariable(name: "item", scope: !796, file: !2, line: 214, type: !621)
!796 = distinct !DILexicalBlock(scope: !790, file: !2, line: 213, column: 10)
!797 = !DILocation(line: 214, column: 20, scope: !796)
!798 = !DILocalVariable(name: "length", scope: !796, file: !2, line: 215, type: !140)
!799 = !DILocation(line: 215, column: 14, scope: !796)
!800 = !DILocalVariable(name: "iter", scope: !796, file: !2, line: 216, type: !627)
!801 = !DILocation(line: 216, column: 17, scope: !796)
!802 = !DILocalVariable(name: "value", scope: !796, file: !2, line: 217, type: !102)
!803 = !DILocation(line: 217, column: 18, scope: !796)
!804 = !DILocation(line: 218, column: 28, scope: !805)
!805 = distinct !DILexicalBlock(scope: !796, file: !2, line: 218, column: 9)
!806 = !DILocation(line: 218, column: 9, scope: !805)
!807 = !DILocation(line: 218, column: 9, scope: !796)
!808 = !DILocation(line: 219, column: 32, scope: !809)
!809 = distinct !DILexicalBlock(scope: !810, file: !2, line: 219, column: 10)
!810 = distinct !DILexicalBlock(scope: !805, file: !2, line: 218, column: 44)
!811 = !DILocation(line: 219, column: 10, scope: !809)
!812 = !DILocation(line: 219, column: 38, scope: !809)
!813 = !DILocation(line: 219, column: 41, scope: !809)
!814 = !DILocation(line: 219, column: 74, scope: !809)
!815 = !DILocation(line: 219, column: 77, scope: !809)
!816 = !DILocation(line: 219, column: 10, scope: !810)
!817 = !DILocation(line: 220, column: 17, scope: !818)
!818 = distinct !DILexicalBlock(scope: !809, file: !2, line: 219, column: 106)
!819 = !DILocation(line: 220, column: 15, scope: !818)
!820 = !DILocalVariable(name: "sz", scope: !818, file: !2, line: 221, type: !163)
!821 = !DILocation(line: 221, column: 12, scope: !818)
!822 = !DILocation(line: 221, column: 17, scope: !818)
!823 = !DILocation(line: 221, column: 51, scope: !818)
!824 = !DILocation(line: 222, column: 8, scope: !825)
!825 = distinct !DILexicalBlock(scope: !818, file: !2, line: 222, column: 8)
!826 = !DILocation(line: 222, column: 17, scope: !825)
!827 = !DILocation(line: 222, column: 15, scope: !825)
!828 = !DILocation(line: 222, column: 8, scope: !818)
!829 = !DILocation(line: 223, column: 109, scope: !830)
!830 = distinct !DILexicalBlock(scope: !825, file: !2, line: 222, column: 21)
!831 = !DILocation(line: 223, column: 122, scope: !830)
!832 = !DILocation(line: 223, column: 117, scope: !830)
!833 = !DILocation(line: 223, column: 126, scope: !830)
!834 = !DILocation(line: 223, column: 6, scope: !830)
!835 = !DILocation(line: 224, column: 5, scope: !830)
!836 = !DILocalVariable(name: "kval", scope: !837, file: !2, line: 225, type: !307)
!837 = distinct !DILexicalBlock(scope: !825, file: !2, line: 224, column: 12)
!838 = !DILocation(line: 225, column: 11, scope: !837)
!839 = !DILocation(line: 226, column: 12, scope: !837)
!840 = !DILocation(line: 226, column: 19, scope: !837)
!841 = !DILocation(line: 226, column: 25, scope: !837)
!842 = !DILocation(line: 226, column: 6, scope: !837)
!843 = !DILocation(line: 227, column: 11, scope: !837)
!844 = !DILocation(line: 227, column: 6, scope: !837)
!845 = !DILocation(line: 227, column: 15, scope: !837)
!846 = !DILocation(line: 228, column: 38, scope: !847)
!847 = distinct !DILexicalBlock(scope: !837, file: !2, line: 228, column: 9)
!848 = !DILocation(line: 228, column: 44, scope: !847)
!849 = !DILocation(line: 228, column: 49, scope: !847)
!850 = !DILocation(line: 228, column: 52, scope: !847)
!851 = !DILocation(line: 228, column: 9, scope: !847)
!852 = !DILocation(line: 228, column: 57, scope: !847)
!853 = !DILocation(line: 228, column: 9, scope: !837)
!854 = !DILocation(line: 229, column: 71, scope: !855)
!855 = distinct !DILexicalBlock(scope: !847, file: !2, line: 228, column: 62)
!856 = !DILocation(line: 229, column: 77, scope: !855)
!857 = !DILocation(line: 229, column: 7, scope: !855)
!858 = !DILocation(line: 230, column: 6, scope: !855)
!859 = !DILocation(line: 231, column: 11, scope: !860)
!860 = distinct !DILexicalBlock(scope: !847, file: !2, line: 230, column: 13)
!861 = !DILocation(line: 234, column: 7, scope: !818)
!862 = !DILocation(line: 235, column: 5, scope: !810)
!863 = !DILocation(line: 236, column: 27, scope: !796)
!864 = !DILocation(line: 236, column: 5, scope: !796)
!865 = !DILocation(line: 238, column: 29, scope: !759)
!866 = !DILocation(line: 238, column: 3, scope: !759)
!867 = !DILocation(line: 239, column: 3, scope: !759)
!868 = !DILocation(line: 240, column: 3, scope: !759)
!869 = !DILocation(line: 241, column: 10, scope: !759)
!870 = !DILocation(line: 241, column: 3, scope: !759)
!871 = !DILocation(line: 242, column: 1, scope: !759)
!872 = distinct !DISubprogram(name: "mongo_set_user_key", scope: !2, file: !2, line: 305, type: !175, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!873 = !DILocalVariable(name: "usname", arg: 1, scope: !872, file: !2, line: 305, type: !165)
!874 = !DILocation(line: 305, column: 40, scope: !872)
!875 = !DILocalVariable(name: "realm", arg: 2, scope: !872, file: !2, line: 305, type: !165)
!876 = !DILocation(line: 305, column: 57, scope: !872)
!877 = !DILocalVariable(name: "key", arg: 3, scope: !872, file: !2, line: 305, type: !102)
!878 = !DILocation(line: 305, column: 76, scope: !872)
!879 = !DILocalVariable(name: "collection", scope: !872, file: !2, line: 306, type: !575)
!880 = !DILocation(line: 306, column: 25, scope: !872)
!881 = !DILocation(line: 306, column: 38, scope: !872)
!882 = !DILocation(line: 308, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !872, file: !2, line: 308, column: 5)
!884 = !DILocation(line: 308, column: 5, scope: !872)
!885 = !DILocation(line: 309, column: 5, scope: !883)
!886 = !DILocalVariable(name: "query", scope: !872, file: !2, line: 311, type: !586)
!887 = !DILocation(line: 311, column: 10, scope: !872)
!888 = !DILocation(line: 312, column: 3, scope: !872)
!889 = !DILocation(line: 313, column: 3, scope: !872)
!890 = !DILocation(line: 314, column: 3, scope: !872)
!891 = !DILocalVariable(name: "doc", scope: !872, file: !2, line: 316, type: !586)
!892 = !DILocation(line: 316, column: 10, scope: !872)
!893 = !DILocation(line: 317, column: 3, scope: !872)
!894 = !DILocation(line: 318, column: 3, scope: !872)
!895 = !DILocation(line: 319, column: 3, scope: !872)
!896 = !DILocation(line: 320, column: 3, scope: !872)
!897 = !DILocalVariable(name: "ret", scope: !872, file: !2, line: 322, type: !80)
!898 = !DILocation(line: 322, column: 7, scope: !872)
!899 = !DILocation(line: 324, column: 33, scope: !900)
!900 = distinct !DILexicalBlock(scope: !872, file: !2, line: 324, column: 7)
!901 = !DILocation(line: 324, column: 8, scope: !900)
!902 = !DILocation(line: 324, column: 7, scope: !872)
!903 = !DILocation(line: 325, column: 5, scope: !904)
!904 = distinct !DILexicalBlock(scope: !900, file: !2, line: 324, column: 94)
!905 = !DILocation(line: 326, column: 3, scope: !904)
!906 = !DILocation(line: 327, column: 9, scope: !907)
!907 = distinct !DILexicalBlock(scope: !900, file: !2, line: 326, column: 10)
!908 = !DILocation(line: 329, column: 29, scope: !872)
!909 = !DILocation(line: 329, column: 3, scope: !872)
!910 = !DILocation(line: 330, column: 3, scope: !872)
!911 = !DILocation(line: 331, column: 3, scope: !872)
!912 = !DILocation(line: 332, column: 10, scope: !872)
!913 = !DILocation(line: 332, column: 3, scope: !872)
!914 = !DILocation(line: 333, column: 1, scope: !872)
!915 = distinct !DISubprogram(name: "mongo_del_user", scope: !2, file: !2, line: 368, type: !179, scopeLine: 368, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!916 = !DILocalVariable(name: "usname", arg: 1, scope: !915, file: !2, line: 368, type: !165)
!917 = !DILocation(line: 368, column: 36, scope: !915)
!918 = !DILocalVariable(name: "realm", arg: 2, scope: !915, file: !2, line: 368, type: !165)
!919 = !DILocation(line: 368, column: 53, scope: !915)
!920 = !DILocalVariable(name: "collection", scope: !915, file: !2, line: 369, type: !575)
!921 = !DILocation(line: 369, column: 25, scope: !915)
!922 = !DILocation(line: 369, column: 38, scope: !915)
!923 = !DILocation(line: 371, column: 6, scope: !924)
!924 = distinct !DILexicalBlock(scope: !915, file: !2, line: 371, column: 5)
!925 = !DILocation(line: 371, column: 5, scope: !915)
!926 = !DILocation(line: 372, column: 5, scope: !924)
!927 = !DILocalVariable(name: "query", scope: !915, file: !2, line: 374, type: !586)
!928 = !DILocation(line: 374, column: 10, scope: !915)
!929 = !DILocation(line: 375, column: 3, scope: !915)
!930 = !DILocation(line: 376, column: 3, scope: !915)
!931 = !DILocation(line: 377, column: 3, scope: !915)
!932 = !DILocalVariable(name: "ret", scope: !915, file: !2, line: 379, type: !80)
!933 = !DILocation(line: 379, column: 7, scope: !915)
!934 = !DILocation(line: 381, column: 33, scope: !935)
!935 = distinct !DILexicalBlock(scope: !915, file: !2, line: 381, column: 7)
!936 = !DILocation(line: 381, column: 8, scope: !935)
!937 = !DILocation(line: 381, column: 7, scope: !915)
!938 = !DILocation(line: 382, column: 5, scope: !939)
!939 = distinct !DILexicalBlock(scope: !935, file: !2, line: 381, column: 95)
!940 = !DILocation(line: 383, column: 3, scope: !939)
!941 = !DILocation(line: 384, column: 9, scope: !942)
!942 = distinct !DILexicalBlock(scope: !935, file: !2, line: 383, column: 10)
!943 = !DILocation(line: 386, column: 29, scope: !915)
!944 = !DILocation(line: 386, column: 3, scope: !915)
!945 = !DILocation(line: 387, column: 3, scope: !915)
!946 = !DILocation(line: 388, column: 10, scope: !915)
!947 = !DILocation(line: 388, column: 3, scope: !915)
!948 = !DILocation(line: 389, column: 1, scope: !915)
!949 = distinct !DISubprogram(name: "mongo_list_users", scope: !2, file: !2, line: 414, type: !183, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!950 = !DILocalVariable(name: "realm", arg: 1, scope: !949, file: !2, line: 414, type: !165)
!951 = !DILocation(line: 414, column: 38, scope: !949)
!952 = !DILocalVariable(name: "users", arg: 2, scope: !949, file: !2, line: 414, type: !155)
!953 = !DILocation(line: 414, column: 61, scope: !949)
!954 = !DILocalVariable(name: "realms", arg: 3, scope: !949, file: !2, line: 414, type: !155)
!955 = !DILocation(line: 414, column: 84, scope: !949)
!956 = !DILocalVariable(name: "collection_name", scope: !949, file: !2, line: 416, type: !102)
!957 = !DILocation(line: 416, column: 16, scope: !949)
!958 = !DILocalVariable(name: "collection", scope: !949, file: !2, line: 417, type: !575)
!959 = !DILocation(line: 417, column: 25, scope: !949)
!960 = !DILocation(line: 417, column: 59, scope: !949)
!961 = !DILocation(line: 417, column: 38, scope: !949)
!962 = !DILocalVariable(name: "realm0", scope: !949, file: !2, line: 419, type: !963)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1024, elements: !319)
!964 = !DILocation(line: 419, column: 11, scope: !949)
!965 = !DILocation(line: 420, column: 7, scope: !966)
!966 = distinct !DILexicalBlock(scope: !949, file: !2, line: 420, column: 6)
!967 = !DILocation(line: 420, column: 6, scope: !949)
!968 = !DILocation(line: 420, column: 20, scope: !966)
!969 = !DILocation(line: 420, column: 19, scope: !966)
!970 = !DILocation(line: 420, column: 14, scope: !966)
!971 = !DILocation(line: 422, column: 7, scope: !972)
!972 = distinct !DILexicalBlock(scope: !949, file: !2, line: 422, column: 6)
!973 = !DILocation(line: 422, column: 6, scope: !949)
!974 = !DILocation(line: 423, column: 5, scope: !972)
!975 = !DILocalVariable(name: "query", scope: !949, file: !2, line: 425, type: !586)
!976 = !DILocation(line: 425, column: 10, scope: !949)
!977 = !DILocalVariable(name: "child", scope: !949, file: !2, line: 425, type: !586)
!978 = !DILocation(line: 425, column: 17, scope: !949)
!979 = !DILocation(line: 426, column: 3, scope: !949)
!980 = !DILocation(line: 427, column: 3, scope: !949)
!981 = !DILocation(line: 428, column: 3, scope: !949)
!982 = !DILocation(line: 429, column: 3, scope: !949)
!983 = !DILocation(line: 430, column: 3, scope: !949)
!984 = !DILocation(line: 431, column: 3, scope: !949)
!985 = !DILocation(line: 432, column: 7, scope: !986)
!986 = distinct !DILexicalBlock(scope: !949, file: !2, line: 432, column: 7)
!987 = !DILocation(line: 432, column: 13, scope: !986)
!988 = !DILocation(line: 432, column: 16, scope: !986)
!989 = !DILocation(line: 432, column: 7, scope: !949)
!990 = !DILocation(line: 433, column: 5, scope: !991)
!991 = distinct !DILexicalBlock(scope: !986, file: !2, line: 432, column: 26)
!992 = !DILocation(line: 434, column: 3, scope: !991)
!993 = !DILocation(line: 435, column: 3, scope: !949)
!994 = !DILocalVariable(name: "fields", scope: !949, file: !2, line: 437, type: !586)
!995 = !DILocation(line: 437, column: 10, scope: !949)
!996 = !DILocation(line: 438, column: 3, scope: !949)
!997 = !DILocation(line: 439, column: 3, scope: !949)
!998 = !DILocation(line: 440, column: 3, scope: !949)
!999 = !DILocalVariable(name: "cursor", scope: !949, file: !2, line: 442, type: !603)
!1000 = !DILocation(line: 442, column: 21, scope: !949)
!1001 = !DILocation(line: 443, column: 35, scope: !949)
!1002 = !DILocation(line: 443, column: 12, scope: !949)
!1003 = !DILocation(line: 443, column: 10, scope: !949)
!1004 = !DILocalVariable(name: "ret", scope: !949, file: !2, line: 445, type: !80)
!1005 = !DILocation(line: 445, column: 7, scope: !949)
!1006 = !DILocation(line: 447, column: 8, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !949, file: !2, line: 447, column: 7)
!1008 = !DILocation(line: 447, column: 7, scope: !949)
!1009 = !DILocation(line: 448, column: 83, scope: !1010)
!1010 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 447, column: 16)
!1011 = !DILocation(line: 448, column: 3, scope: !1010)
!1012 = !DILocation(line: 449, column: 3, scope: !1010)
!1013 = !DILocalVariable(name: "item", scope: !1014, file: !2, line: 450, type: !621)
!1014 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 449, column: 10)
!1015 = !DILocation(line: 450, column: 20, scope: !1014)
!1016 = !DILocalVariable(name: "length", scope: !1014, file: !2, line: 451, type: !140)
!1017 = !DILocation(line: 451, column: 14, scope: !1014)
!1018 = !DILocalVariable(name: "iter", scope: !1014, file: !2, line: 452, type: !627)
!1019 = !DILocation(line: 452, column: 17, scope: !1014)
!1020 = !DILocalVariable(name: "iter_realm", scope: !1014, file: !2, line: 453, type: !627)
!1021 = !DILocation(line: 453, column: 17, scope: !1014)
!1022 = !DILocalVariable(name: "value", scope: !1014, file: !2, line: 454, type: !102)
!1023 = !DILocation(line: 454, column: 18, scope: !1014)
!1024 = !DILocation(line: 455, column: 5, scope: !1014)
!1025 = !DILocation(line: 455, column: 31, scope: !1014)
!1026 = !DILocation(line: 455, column: 12, scope: !1014)
!1027 = !DILocation(line: 456, column: 32, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 456, column: 10)
!1029 = distinct !DILexicalBlock(scope: !1014, file: !2, line: 455, column: 47)
!1030 = !DILocation(line: 456, column: 10, scope: !1028)
!1031 = !DILocation(line: 456, column: 38, scope: !1028)
!1032 = !DILocation(line: 456, column: 41, scope: !1028)
!1033 = !DILocation(line: 456, column: 71, scope: !1028)
!1034 = !DILocation(line: 456, column: 74, scope: !1028)
!1035 = !DILocation(line: 456, column: 10, scope: !1029)
!1036 = !DILocation(line: 457, column: 15, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !1028, file: !2, line: 456, column: 103)
!1038 = !DILocation(line: 457, column: 13, scope: !1037)
!1039 = !DILocation(line: 458, column: 11, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 458, column: 11)
!1041 = !DILocation(line: 458, column: 11, scope: !1037)
!1042 = !DILocalVariable(name: "rval", scope: !1043, file: !2, line: 459, type: !102)
!1043 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 458, column: 19)
!1044 = !DILocation(line: 459, column: 23, scope: !1043)
!1045 = !DILocation(line: 460, column: 40, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 460, column: 12)
!1047 = !DILocation(line: 460, column: 12, scope: !1046)
!1048 = !DILocation(line: 460, column: 46, scope: !1046)
!1049 = !DILocation(line: 460, column: 49, scope: !1046)
!1050 = !DILocation(line: 460, column: 86, scope: !1046)
!1051 = !DILocation(line: 460, column: 89, scope: !1046)
!1052 = !DILocation(line: 460, column: 12, scope: !1043)
!1053 = !DILocation(line: 461, column: 16, scope: !1054)
!1054 = distinct !DILexicalBlock(scope: !1046, file: !2, line: 460, column: 124)
!1055 = !DILocation(line: 461, column: 14, scope: !1054)
!1056 = !DILocation(line: 462, column: 8, scope: !1054)
!1057 = !DILocation(line: 463, column: 11, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 463, column: 11)
!1059 = !DILocation(line: 463, column: 11, scope: !1043)
!1060 = !DILocation(line: 464, column: 29, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 463, column: 18)
!1062 = !DILocation(line: 464, column: 35, scope: !1061)
!1063 = !DILocation(line: 464, column: 9, scope: !1061)
!1064 = !DILocation(line: 465, column: 12, scope: !1065)
!1065 = distinct !DILexicalBlock(scope: !1061, file: !2, line: 465, column: 12)
!1066 = !DILocation(line: 465, column: 12, scope: !1061)
!1067 = !DILocation(line: 466, column: 13, scope: !1068)
!1068 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 466, column: 13)
!1069 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 465, column: 20)
!1070 = !DILocation(line: 466, column: 18, scope: !1068)
!1071 = !DILocation(line: 466, column: 22, scope: !1068)
!1072 = !DILocation(line: 466, column: 21, scope: !1068)
!1073 = !DILocation(line: 466, column: 13, scope: !1069)
!1074 = !DILocation(line: 467, column: 31, scope: !1075)
!1075 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 466, column: 28)
!1076 = !DILocation(line: 467, column: 38, scope: !1075)
!1077 = !DILocation(line: 467, column: 11, scope: !1075)
!1078 = !DILocation(line: 468, column: 10, scope: !1075)
!1079 = !DILocation(line: 469, column: 31, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1068, file: !2, line: 468, column: 17)
!1081 = !DILocation(line: 469, column: 45, scope: !1080)
!1082 = !DILocation(line: 469, column: 11, scope: !1080)
!1083 = !DILocation(line: 471, column: 9, scope: !1069)
!1084 = !DILocation(line: 472, column: 8, scope: !1061)
!1085 = !DILocation(line: 473, column: 28, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1058, file: !2, line: 472, column: 15)
!1087 = !DILocation(line: 473, column: 35, scope: !1086)
!1088 = !DILocation(line: 473, column: 9, scope: !1086)
!1089 = !DILocation(line: 475, column: 7, scope: !1043)
!1090 = !DILocation(line: 476, column: 6, scope: !1037)
!1091 = distinct !{!1091, !1024, !1092, !748}
!1092 = !DILocation(line: 477, column: 5, scope: !1014)
!1093 = !DILocation(line: 478, column: 27, scope: !1014)
!1094 = !DILocation(line: 478, column: 5, scope: !1014)
!1095 = !DILocation(line: 479, column: 9, scope: !1014)
!1096 = !DILocation(line: 481, column: 29, scope: !949)
!1097 = !DILocation(line: 481, column: 3, scope: !949)
!1098 = !DILocation(line: 482, column: 3, scope: !949)
!1099 = !DILocation(line: 483, column: 3, scope: !949)
!1100 = !DILocation(line: 484, column: 10, scope: !949)
!1101 = !DILocation(line: 484, column: 3, scope: !949)
!1102 = !DILocation(line: 485, column: 1, scope: !949)
!1103 = distinct !DISubprogram(name: "mongo_list_secrets", scope: !2, file: !2, line: 577, type: !183, scopeLine: 578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1104 = !DILocalVariable(name: "realm", arg: 1, scope: !1103, file: !2, line: 577, type: !165)
!1105 = !DILocation(line: 577, column: 40, scope: !1103)
!1106 = !DILocalVariable(name: "secrets", arg: 2, scope: !1103, file: !2, line: 577, type: !155)
!1107 = !DILocation(line: 577, column: 63, scope: !1103)
!1108 = !DILocalVariable(name: "realms", arg: 3, scope: !1103, file: !2, line: 577, type: !155)
!1109 = !DILocation(line: 577, column: 88, scope: !1103)
!1110 = !DILocalVariable(name: "collection", scope: !1103, file: !2, line: 579, type: !575)
!1111 = !DILocation(line: 579, column: 24, scope: !1103)
!1112 = !DILocation(line: 579, column: 37, scope: !1103)
!1113 = !DILocalVariable(name: "realm0", scope: !1103, file: !2, line: 581, type: !963)
!1114 = !DILocation(line: 581, column: 10, scope: !1103)
!1115 = !DILocation(line: 582, column: 6, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 582, column: 5)
!1117 = !DILocation(line: 582, column: 5, scope: !1103)
!1118 = !DILocation(line: 582, column: 19, scope: !1116)
!1119 = !DILocation(line: 582, column: 18, scope: !1116)
!1120 = !DILocation(line: 582, column: 13, scope: !1116)
!1121 = !DILocation(line: 584, column: 6, scope: !1122)
!1122 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 584, column: 5)
!1123 = !DILocation(line: 584, column: 5, scope: !1103)
!1124 = !DILocation(line: 585, column: 3, scope: !1122)
!1125 = !DILocalVariable(name: "query", scope: !1103, file: !2, line: 587, type: !586)
!1126 = !DILocation(line: 587, column: 9, scope: !1103)
!1127 = !DILocalVariable(name: "child", scope: !1103, file: !2, line: 587, type: !586)
!1128 = !DILocation(line: 587, column: 16, scope: !1103)
!1129 = !DILocation(line: 588, column: 2, scope: !1103)
!1130 = !DILocation(line: 589, column: 2, scope: !1103)
!1131 = !DILocation(line: 590, column: 2, scope: !1103)
!1132 = !DILocation(line: 591, column: 2, scope: !1103)
!1133 = !DILocation(line: 592, column: 2, scope: !1103)
!1134 = !DILocation(line: 593, column: 2, scope: !1103)
!1135 = !DILocation(line: 594, column: 6, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 594, column: 6)
!1137 = !DILocation(line: 594, column: 12, scope: !1136)
!1138 = !DILocation(line: 594, column: 15, scope: !1136)
!1139 = !DILocation(line: 594, column: 6, scope: !1103)
!1140 = !DILocation(line: 595, column: 3, scope: !1141)
!1141 = distinct !DILexicalBlock(scope: !1136, file: !2, line: 594, column: 25)
!1142 = !DILocation(line: 596, column: 2, scope: !1141)
!1143 = !DILocation(line: 597, column: 2, scope: !1103)
!1144 = !DILocalVariable(name: "fields", scope: !1103, file: !2, line: 599, type: !586)
!1145 = !DILocation(line: 599, column: 9, scope: !1103)
!1146 = !DILocation(line: 600, column: 2, scope: !1103)
!1147 = !DILocation(line: 601, column: 2, scope: !1103)
!1148 = !DILocation(line: 602, column: 2, scope: !1103)
!1149 = !DILocalVariable(name: "cursor", scope: !1103, file: !2, line: 604, type: !603)
!1150 = !DILocation(line: 604, column: 20, scope: !1103)
!1151 = !DILocation(line: 605, column: 34, scope: !1103)
!1152 = !DILocation(line: 605, column: 11, scope: !1103)
!1153 = !DILocation(line: 605, column: 9, scope: !1103)
!1154 = !DILocalVariable(name: "ret", scope: !1103, file: !2, line: 607, type: !80)
!1155 = !DILocation(line: 607, column: 6, scope: !1103)
!1156 = !DILocation(line: 609, column: 7, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1103, file: !2, line: 609, column: 6)
!1158 = !DILocation(line: 609, column: 6, scope: !1103)
!1159 = !DILocation(line: 610, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 609, column: 15)
!1161 = !DILocation(line: 611, column: 2, scope: !1160)
!1162 = !DILocalVariable(name: "item", scope: !1163, file: !2, line: 612, type: !621)
!1163 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 611, column: 9)
!1164 = !DILocation(line: 612, column: 18, scope: !1163)
!1165 = !DILocalVariable(name: "length", scope: !1163, file: !2, line: 613, type: !140)
!1166 = !DILocation(line: 613, column: 12, scope: !1163)
!1167 = !DILocalVariable(name: "iter", scope: !1163, file: !2, line: 614, type: !627)
!1168 = !DILocation(line: 614, column: 15, scope: !1163)
!1169 = !DILocalVariable(name: "iter_realm", scope: !1163, file: !2, line: 615, type: !627)
!1170 = !DILocation(line: 615, column: 18, scope: !1163)
!1171 = !DILocalVariable(name: "value", scope: !1163, file: !2, line: 616, type: !102)
!1172 = !DILocation(line: 616, column: 16, scope: !1163)
!1173 = !DILocation(line: 617, column: 3, scope: !1163)
!1174 = !DILocation(line: 617, column: 29, scope: !1163)
!1175 = !DILocation(line: 617, column: 10, scope: !1163)
!1176 = !DILocation(line: 618, column: 30, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1178, file: !2, line: 618, column: 8)
!1178 = distinct !DILexicalBlock(scope: !1163, file: !2, line: 617, column: 45)
!1179 = !DILocation(line: 618, column: 8, scope: !1177)
!1180 = !DILocation(line: 618, column: 36, scope: !1177)
!1181 = !DILocation(line: 618, column: 39, scope: !1177)
!1182 = !DILocation(line: 618, column: 70, scope: !1177)
!1183 = !DILocation(line: 618, column: 73, scope: !1177)
!1184 = !DILocation(line: 618, column: 8, scope: !1178)
!1185 = !DILocation(line: 619, column: 13, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 618, column: 102)
!1187 = !DILocation(line: 619, column: 11, scope: !1186)
!1188 = !DILocation(line: 620, column: 9, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 620, column: 9)
!1190 = !DILocation(line: 620, column: 9, scope: !1186)
!1191 = !DILocalVariable(name: "rval", scope: !1192, file: !2, line: 621, type: !102)
!1192 = distinct !DILexicalBlock(scope: !1189, file: !2, line: 620, column: 17)
!1193 = !DILocation(line: 621, column: 18, scope: !1192)
!1194 = !DILocation(line: 622, column: 38, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 622, column: 10)
!1196 = !DILocation(line: 622, column: 10, scope: !1195)
!1197 = !DILocation(line: 622, column: 44, scope: !1195)
!1198 = !DILocation(line: 622, column: 47, scope: !1195)
!1199 = !DILocation(line: 622, column: 84, scope: !1195)
!1200 = !DILocation(line: 622, column: 87, scope: !1195)
!1201 = !DILocation(line: 622, column: 10, scope: !1192)
!1202 = !DILocation(line: 623, column: 14, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 622, column: 122)
!1204 = !DILocation(line: 623, column: 12, scope: !1203)
!1205 = !DILocation(line: 624, column: 6, scope: !1203)
!1206 = !DILocation(line: 625, column: 9, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1192, file: !2, line: 625, column: 9)
!1208 = !DILocation(line: 625, column: 9, scope: !1192)
!1209 = !DILocation(line: 626, column: 27, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 625, column: 18)
!1211 = !DILocation(line: 626, column: 35, scope: !1210)
!1212 = !DILocation(line: 626, column: 7, scope: !1210)
!1213 = !DILocation(line: 627, column: 13, scope: !1214)
!1214 = distinct !DILexicalBlock(scope: !1210, file: !2, line: 627, column: 13)
!1215 = !DILocation(line: 627, column: 13, scope: !1210)
!1216 = !DILocation(line: 628, column: 14, scope: !1217)
!1217 = distinct !DILexicalBlock(scope: !1218, file: !2, line: 628, column: 14)
!1218 = distinct !DILexicalBlock(scope: !1214, file: !2, line: 627, column: 21)
!1219 = !DILocation(line: 628, column: 19, scope: !1217)
!1220 = !DILocation(line: 628, column: 23, scope: !1217)
!1221 = !DILocation(line: 628, column: 22, scope: !1217)
!1222 = !DILocation(line: 628, column: 14, scope: !1218)
!1223 = !DILocation(line: 629, column: 32, scope: !1224)
!1224 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 628, column: 29)
!1225 = !DILocation(line: 629, column: 39, scope: !1224)
!1226 = !DILocation(line: 629, column: 12, scope: !1224)
!1227 = !DILocation(line: 630, column: 11, scope: !1224)
!1228 = !DILocation(line: 631, column: 32, scope: !1229)
!1229 = distinct !DILexicalBlock(scope: !1217, file: !2, line: 630, column: 18)
!1230 = !DILocation(line: 631, column: 46, scope: !1229)
!1231 = !DILocation(line: 631, column: 12, scope: !1229)
!1232 = !DILocation(line: 633, column: 10, scope: !1218)
!1233 = !DILocation(line: 634, column: 6, scope: !1210)
!1234 = !DILocation(line: 635, column: 26, scope: !1235)
!1235 = distinct !DILexicalBlock(scope: !1207, file: !2, line: 634, column: 13)
!1236 = !DILocation(line: 635, column: 33, scope: !1235)
!1237 = !DILocation(line: 635, column: 7, scope: !1235)
!1238 = !DILocation(line: 637, column: 5, scope: !1192)
!1239 = !DILocation(line: 638, column: 4, scope: !1186)
!1240 = distinct !{!1240, !1173, !1241, !748}
!1241 = !DILocation(line: 639, column: 3, scope: !1163)
!1242 = !DILocation(line: 640, column: 25, scope: !1163)
!1243 = !DILocation(line: 640, column: 3, scope: !1163)
!1244 = !DILocation(line: 641, column: 7, scope: !1163)
!1245 = !DILocation(line: 643, column: 28, scope: !1103)
!1246 = !DILocation(line: 643, column: 2, scope: !1103)
!1247 = !DILocation(line: 644, column: 2, scope: !1103)
!1248 = !DILocation(line: 645, column: 2, scope: !1103)
!1249 = !DILocation(line: 646, column: 9, scope: !1103)
!1250 = !DILocation(line: 646, column: 2, scope: !1103)
!1251 = !DILocation(line: 647, column: 1, scope: !1103)
!1252 = distinct !DISubprogram(name: "mongo_del_secret", scope: !2, file: !2, line: 649, type: !179, scopeLine: 649, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1253 = !DILocalVariable(name: "secret", arg: 1, scope: !1252, file: !2, line: 649, type: !165)
!1254 = !DILocation(line: 649, column: 38, scope: !1252)
!1255 = !DILocalVariable(name: "realm", arg: 2, scope: !1252, file: !2, line: 649, type: !165)
!1256 = !DILocation(line: 649, column: 55, scope: !1252)
!1257 = !DILocalVariable(name: "collection", scope: !1252, file: !2, line: 650, type: !575)
!1258 = !DILocation(line: 650, column: 25, scope: !1252)
!1259 = !DILocation(line: 650, column: 38, scope: !1252)
!1260 = !DILocation(line: 652, column: 6, scope: !1261)
!1261 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 652, column: 5)
!1262 = !DILocation(line: 652, column: 5, scope: !1252)
!1263 = !DILocation(line: 653, column: 5, scope: !1261)
!1264 = !DILocalVariable(name: "query", scope: !1252, file: !2, line: 655, type: !586)
!1265 = !DILocation(line: 655, column: 10, scope: !1252)
!1266 = !DILocation(line: 656, column: 3, scope: !1252)
!1267 = !DILocation(line: 657, column: 3, scope: !1252)
!1268 = !DILocation(line: 658, column: 5, scope: !1269)
!1269 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 658, column: 5)
!1270 = !DILocation(line: 658, column: 12, scope: !1269)
!1271 = !DILocation(line: 658, column: 16, scope: !1269)
!1272 = !DILocation(line: 658, column: 25, scope: !1269)
!1273 = !DILocation(line: 658, column: 5, scope: !1252)
!1274 = !DILocation(line: 659, column: 5, scope: !1275)
!1275 = distinct !DILexicalBlock(scope: !1269, file: !2, line: 658, column: 31)
!1276 = !DILocation(line: 660, column: 3, scope: !1275)
!1277 = !DILocation(line: 662, column: 28, scope: !1252)
!1278 = !DILocation(line: 662, column: 3, scope: !1252)
!1279 = !DILocation(line: 663, column: 29, scope: !1252)
!1280 = !DILocation(line: 663, column: 3, scope: !1252)
!1281 = !DILocation(line: 664, column: 3, scope: !1252)
!1282 = !DILocation(line: 665, column: 3, scope: !1252)
!1283 = !DILocation(line: 666, column: 1, scope: !1252)
!1284 = distinct !DISubprogram(name: "mongo_set_secret", scope: !2, file: !2, line: 668, type: !179, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1285 = !DILocalVariable(name: "secret", arg: 1, scope: !1284, file: !2, line: 668, type: !165)
!1286 = !DILocation(line: 668, column: 38, scope: !1284)
!1287 = !DILocalVariable(name: "realm", arg: 2, scope: !1284, file: !2, line: 668, type: !165)
!1288 = !DILocation(line: 668, column: 55, scope: !1284)
!1289 = !DILocalVariable(name: "collection", scope: !1284, file: !2, line: 669, type: !575)
!1290 = !DILocation(line: 669, column: 25, scope: !1284)
!1291 = !DILocation(line: 669, column: 38, scope: !1284)
!1292 = !DILocation(line: 671, column: 6, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 671, column: 5)
!1294 = !DILocation(line: 671, column: 5, scope: !1284)
!1295 = !DILocation(line: 672, column: 5, scope: !1293)
!1296 = !DILocalVariable(name: "query", scope: !1284, file: !2, line: 674, type: !586)
!1297 = !DILocation(line: 674, column: 10, scope: !1284)
!1298 = !DILocation(line: 675, column: 3, scope: !1284)
!1299 = !DILocation(line: 676, column: 3, scope: !1284)
!1300 = !DILocation(line: 677, column: 3, scope: !1284)
!1301 = !DILocalVariable(name: "res", scope: !1284, file: !2, line: 679, type: !80)
!1302 = !DILocation(line: 679, column: 7, scope: !1284)
!1303 = !DILocation(line: 679, column: 38, scope: !1284)
!1304 = !DILocation(line: 679, column: 13, scope: !1284)
!1305 = !DILocation(line: 680, column: 29, scope: !1284)
!1306 = !DILocation(line: 680, column: 3, scope: !1284)
!1307 = !DILocation(line: 681, column: 3, scope: !1284)
!1308 = !DILocation(line: 683, column: 8, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1284, file: !2, line: 683, column: 7)
!1310 = !DILocation(line: 683, column: 7, scope: !1284)
!1311 = !DILocation(line: 684, column: 5, scope: !1312)
!1312 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 683, column: 13)
!1313 = !DILocation(line: 685, column: 5, scope: !1312)
!1314 = !DILocation(line: 687, column: 5, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1309, file: !2, line: 686, column: 10)
!1316 = !DILocation(line: 689, column: 1, scope: !1284)
!1317 = distinct !DISubprogram(name: "mongo_add_origin", scope: !2, file: !2, line: 737, type: !179, scopeLine: 738, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1318 = !DILocalVariable(name: "origin", arg: 1, scope: !1317, file: !2, line: 737, type: !165)
!1319 = !DILocation(line: 737, column: 38, scope: !1317)
!1320 = !DILocalVariable(name: "realm", arg: 2, scope: !1317, file: !2, line: 737, type: !165)
!1321 = !DILocation(line: 737, column: 55, scope: !1317)
!1322 = !DILocalVariable(name: "collection", scope: !1317, file: !2, line: 739, type: !575)
!1323 = !DILocation(line: 739, column: 24, scope: !1317)
!1324 = !DILocation(line: 739, column: 37, scope: !1317)
!1325 = !DILocation(line: 741, column: 6, scope: !1326)
!1326 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 741, column: 5)
!1327 = !DILocation(line: 741, column: 5, scope: !1317)
!1328 = !DILocation(line: 742, column: 3, scope: !1326)
!1329 = !DILocalVariable(name: "ret", scope: !1317, file: !2, line: 744, type: !80)
!1330 = !DILocation(line: 744, column: 6, scope: !1317)
!1331 = !DILocalVariable(name: "realm0", scope: !1317, file: !2, line: 746, type: !963)
!1332 = !DILocation(line: 746, column: 10, scope: !1317)
!1333 = !DILocation(line: 747, column: 6, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 747, column: 5)
!1335 = !DILocation(line: 747, column: 5, scope: !1317)
!1336 = !DILocation(line: 747, column: 19, scope: !1334)
!1337 = !DILocation(line: 747, column: 18, scope: !1334)
!1338 = !DILocation(line: 747, column: 13, scope: !1334)
!1339 = !DILocalVariable(name: "query", scope: !1317, file: !2, line: 749, type: !586)
!1340 = !DILocation(line: 749, column: 9, scope: !1317)
!1341 = !DILocalVariable(name: "doc", scope: !1317, file: !2, line: 749, type: !586)
!1342 = !DILocation(line: 749, column: 16, scope: !1317)
!1343 = !DILocalVariable(name: "child", scope: !1317, file: !2, line: 749, type: !586)
!1344 = !DILocation(line: 749, column: 21, scope: !1317)
!1345 = !DILocation(line: 750, column: 2, scope: !1317)
!1346 = !DILocation(line: 751, column: 2, scope: !1317)
!1347 = !DILocation(line: 752, column: 2, scope: !1317)
!1348 = !DILocation(line: 753, column: 2, scope: !1317)
!1349 = !DILocation(line: 754, column: 2, scope: !1317)
!1350 = !DILocation(line: 755, column: 2, scope: !1317)
!1351 = !DILocation(line: 757, column: 32, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1317, file: !2, line: 757, column: 6)
!1353 = !DILocation(line: 757, column: 7, scope: !1352)
!1354 = !DILocation(line: 757, column: 6, scope: !1317)
!1355 = !DILocation(line: 758, column: 3, scope: !1356)
!1356 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 757, column: 93)
!1357 = !DILocation(line: 759, column: 2, scope: !1356)
!1358 = !DILocation(line: 760, column: 7, scope: !1359)
!1359 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 759, column: 9)
!1360 = !DILocation(line: 762, column: 28, scope: !1317)
!1361 = !DILocation(line: 762, column: 2, scope: !1317)
!1362 = !DILocation(line: 763, column: 2, scope: !1317)
!1363 = !DILocation(line: 764, column: 2, scope: !1317)
!1364 = !DILocation(line: 765, column: 9, scope: !1317)
!1365 = !DILocation(line: 765, column: 2, scope: !1317)
!1366 = !DILocation(line: 766, column: 1, scope: !1317)
!1367 = distinct !DISubprogram(name: "mongo_del_origin", scope: !2, file: !2, line: 768, type: !191, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1368 = !DILocalVariable(name: "origin", arg: 1, scope: !1367, file: !2, line: 768, type: !165)
!1369 = !DILocation(line: 768, column: 38, scope: !1367)
!1370 = !DILocalVariable(name: "collection", scope: !1367, file: !2, line: 770, type: !575)
!1371 = !DILocation(line: 770, column: 25, scope: !1367)
!1372 = !DILocation(line: 770, column: 38, scope: !1367)
!1373 = !DILocation(line: 772, column: 7, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 772, column: 6)
!1375 = !DILocation(line: 772, column: 6, scope: !1367)
!1376 = !DILocation(line: 773, column: 5, scope: !1374)
!1377 = !DILocalVariable(name: "ret", scope: !1367, file: !2, line: 775, type: !80)
!1378 = !DILocation(line: 775, column: 7, scope: !1367)
!1379 = !DILocalVariable(name: "query", scope: !1367, file: !2, line: 777, type: !586)
!1380 = !DILocation(line: 777, column: 10, scope: !1367)
!1381 = !DILocalVariable(name: "doc", scope: !1367, file: !2, line: 777, type: !586)
!1382 = !DILocation(line: 777, column: 17, scope: !1367)
!1383 = !DILocalVariable(name: "child", scope: !1367, file: !2, line: 777, type: !586)
!1384 = !DILocation(line: 777, column: 22, scope: !1367)
!1385 = !DILocation(line: 778, column: 3, scope: !1367)
!1386 = !DILocation(line: 779, column: 3, scope: !1367)
!1387 = !DILocation(line: 780, column: 3, scope: !1367)
!1388 = !DILocation(line: 781, column: 3, scope: !1367)
!1389 = !DILocation(line: 782, column: 3, scope: !1367)
!1390 = !DILocation(line: 784, column: 33, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 784, column: 7)
!1392 = !DILocation(line: 784, column: 8, scope: !1391)
!1393 = !DILocation(line: 784, column: 7, scope: !1367)
!1394 = !DILocation(line: 785, column: 5, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 784, column: 100)
!1396 = !DILocation(line: 786, column: 3, scope: !1395)
!1397 = !DILocation(line: 787, column: 9, scope: !1398)
!1398 = distinct !DILexicalBlock(scope: !1391, file: !2, line: 786, column: 10)
!1399 = !DILocation(line: 789, column: 29, scope: !1367)
!1400 = !DILocation(line: 789, column: 3, scope: !1367)
!1401 = !DILocation(line: 790, column: 3, scope: !1367)
!1402 = !DILocation(line: 791, column: 3, scope: !1367)
!1403 = !DILocation(line: 792, column: 10, scope: !1367)
!1404 = !DILocation(line: 792, column: 3, scope: !1367)
!1405 = !DILocation(line: 793, column: 1, scope: !1367)
!1406 = distinct !DISubprogram(name: "mongo_list_origins", scope: !2, file: !2, line: 795, type: !183, scopeLine: 796, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1407 = !DILocalVariable(name: "realm", arg: 1, scope: !1406, file: !2, line: 795, type: !165)
!1408 = !DILocation(line: 795, column: 40, scope: !1406)
!1409 = !DILocalVariable(name: "origins", arg: 2, scope: !1406, file: !2, line: 795, type: !155)
!1410 = !DILocation(line: 795, column: 63, scope: !1406)
!1411 = !DILocalVariable(name: "realms", arg: 3, scope: !1406, file: !2, line: 795, type: !155)
!1412 = !DILocation(line: 795, column: 88, scope: !1406)
!1413 = !DILocalVariable(name: "collection", scope: !1406, file: !2, line: 797, type: !575)
!1414 = !DILocation(line: 797, column: 24, scope: !1406)
!1415 = !DILocation(line: 797, column: 37, scope: !1406)
!1416 = !DILocation(line: 799, column: 6, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 799, column: 5)
!1418 = !DILocation(line: 799, column: 5, scope: !1406)
!1419 = !DILocation(line: 800, column: 3, scope: !1417)
!1420 = !DILocalVariable(name: "realm0", scope: !1406, file: !2, line: 802, type: !963)
!1421 = !DILocation(line: 802, column: 10, scope: !1406)
!1422 = !DILocation(line: 803, column: 6, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 803, column: 5)
!1424 = !DILocation(line: 803, column: 5, scope: !1406)
!1425 = !DILocation(line: 803, column: 19, scope: !1423)
!1426 = !DILocation(line: 803, column: 18, scope: !1423)
!1427 = !DILocation(line: 803, column: 13, scope: !1423)
!1428 = !DILocalVariable(name: "query", scope: !1406, file: !2, line: 805, type: !586)
!1429 = !DILocation(line: 805, column: 9, scope: !1406)
!1430 = !DILocalVariable(name: "child", scope: !1406, file: !2, line: 805, type: !586)
!1431 = !DILocation(line: 805, column: 16, scope: !1406)
!1432 = !DILocation(line: 806, column: 2, scope: !1406)
!1433 = !DILocation(line: 807, column: 2, scope: !1406)
!1434 = !DILocation(line: 808, column: 2, scope: !1406)
!1435 = !DILocation(line: 809, column: 2, scope: !1406)
!1436 = !DILocation(line: 810, column: 2, scope: !1406)
!1437 = !DILocation(line: 811, column: 6, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 811, column: 6)
!1439 = !DILocation(line: 811, column: 12, scope: !1438)
!1440 = !DILocation(line: 811, column: 15, scope: !1438)
!1441 = !DILocation(line: 811, column: 6, scope: !1406)
!1442 = !DILocation(line: 812, column: 3, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1438, file: !2, line: 811, column: 25)
!1444 = !DILocation(line: 813, column: 2, scope: !1443)
!1445 = !DILocation(line: 814, column: 2, scope: !1406)
!1446 = !DILocalVariable(name: "fields", scope: !1406, file: !2, line: 816, type: !586)
!1447 = !DILocation(line: 816, column: 9, scope: !1406)
!1448 = !DILocation(line: 817, column: 2, scope: !1406)
!1449 = !DILocation(line: 818, column: 2, scope: !1406)
!1450 = !DILocation(line: 819, column: 2, scope: !1406)
!1451 = !DILocalVariable(name: "cursor", scope: !1406, file: !2, line: 821, type: !603)
!1452 = !DILocation(line: 821, column: 20, scope: !1406)
!1453 = !DILocation(line: 822, column: 34, scope: !1406)
!1454 = !DILocation(line: 822, column: 11, scope: !1406)
!1455 = !DILocation(line: 822, column: 9, scope: !1406)
!1456 = !DILocalVariable(name: "ret", scope: !1406, file: !2, line: 824, type: !80)
!1457 = !DILocation(line: 824, column: 6, scope: !1406)
!1458 = !DILocation(line: 826, column: 7, scope: !1459)
!1459 = distinct !DILexicalBlock(scope: !1406, file: !2, line: 826, column: 6)
!1460 = !DILocation(line: 826, column: 6, scope: !1406)
!1461 = !DILocation(line: 827, column: 3, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 826, column: 15)
!1463 = !DILocation(line: 828, column: 2, scope: !1462)
!1464 = !DILocalVariable(name: "item", scope: !1465, file: !2, line: 829, type: !621)
!1465 = distinct !DILexicalBlock(scope: !1459, file: !2, line: 828, column: 9)
!1466 = !DILocation(line: 829, column: 18, scope: !1465)
!1467 = !DILocalVariable(name: "length", scope: !1465, file: !2, line: 830, type: !140)
!1468 = !DILocation(line: 830, column: 12, scope: !1465)
!1469 = !DILocalVariable(name: "iter", scope: !1465, file: !2, line: 831, type: !627)
!1470 = !DILocation(line: 831, column: 15, scope: !1465)
!1471 = !DILocation(line: 833, column: 3, scope: !1465)
!1472 = !DILocation(line: 833, column: 29, scope: !1465)
!1473 = !DILocation(line: 833, column: 10, scope: !1465)
!1474 = !DILocation(line: 834, column: 30, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1476, file: !2, line: 834, column: 8)
!1476 = distinct !DILexicalBlock(scope: !1465, file: !2, line: 833, column: 45)
!1477 = !DILocation(line: 834, column: 8, scope: !1475)
!1478 = !DILocation(line: 834, column: 36, scope: !1475)
!1479 = !DILocation(line: 834, column: 39, scope: !1475)
!1480 = !DILocation(line: 834, column: 70, scope: !1475)
!1481 = !DILocation(line: 834, column: 73, scope: !1475)
!1482 = !DILocation(line: 834, column: 8, scope: !1476)
!1483 = !DILocalVariable(name: "_realm", scope: !1484, file: !2, line: 835, type: !102)
!1484 = distinct !DILexicalBlock(scope: !1475, file: !2, line: 834, column: 102)
!1485 = !DILocation(line: 835, column: 18, scope: !1484)
!1486 = !DILocation(line: 835, column: 27, scope: !1484)
!1487 = !DILocation(line: 837, column: 31, scope: !1488)
!1488 = distinct !DILexicalBlock(scope: !1484, file: !2, line: 837, column: 9)
!1489 = !DILocation(line: 837, column: 9, scope: !1488)
!1490 = !DILocation(line: 837, column: 37, scope: !1488)
!1491 = !DILocation(line: 837, column: 40, scope: !1488)
!1492 = !DILocation(line: 837, column: 72, scope: !1488)
!1493 = !DILocation(line: 837, column: 75, scope: !1488)
!1494 = !DILocation(line: 837, column: 9, scope: !1484)
!1495 = !DILocalVariable(name: "docbuf", scope: !1496, file: !2, line: 838, type: !325)
!1496 = distinct !DILexicalBlock(scope: !1488, file: !2, line: 837, column: 105)
!1497 = !DILocation(line: 838, column: 21, scope: !1496)
!1498 = !DILocalVariable(name: "doclen", scope: !1496, file: !2, line: 839, type: !140)
!1499 = !DILocation(line: 839, column: 15, scope: !1496)
!1500 = !DILocalVariable(name: "origin_array", scope: !1496, file: !2, line: 840, type: !586)
!1501 = !DILocation(line: 840, column: 13, scope: !1496)
!1502 = !DILocalVariable(name: "origin_iter", scope: !1496, file: !2, line: 841, type: !627)
!1503 = !DILocation(line: 841, column: 18, scope: !1496)
!1504 = !DILocation(line: 843, column: 6, scope: !1496)
!1505 = !DILocation(line: 844, column: 38, scope: !1496)
!1506 = !DILocation(line: 844, column: 46, scope: !1496)
!1507 = !DILocation(line: 844, column: 6, scope: !1496)
!1508 = !DILocation(line: 846, column: 10, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 846, column: 10)
!1510 = !DILocation(line: 846, column: 10, scope: !1496)
!1511 = !DILocation(line: 847, column: 7, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 846, column: 55)
!1513 = !DILocation(line: 847, column: 13, scope: !1512)
!1514 = !DILocation(line: 848, column: 12, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1516, file: !2, line: 848, column: 12)
!1516 = distinct !DILexicalBlock(scope: !1512, file: !2, line: 847, column: 43)
!1517 = !DILocation(line: 848, column: 12, scope: !1516)
!1518 = !DILocalVariable(name: "_origin", scope: !1519, file: !2, line: 849, type: !102)
!1519 = distinct !DILexicalBlock(scope: !1515, file: !2, line: 848, column: 48)
!1520 = !DILocation(line: 849, column: 22, scope: !1519)
!1521 = !DILocation(line: 849, column: 32, scope: !1519)
!1522 = !DILocation(line: 850, column: 12, scope: !1523)
!1523 = distinct !DILexicalBlock(scope: !1519, file: !2, line: 850, column: 12)
!1524 = !DILocation(line: 850, column: 12, scope: !1519)
!1525 = !DILocation(line: 851, column: 30, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 850, column: 21)
!1527 = !DILocation(line: 851, column: 38, scope: !1526)
!1528 = !DILocation(line: 851, column: 10, scope: !1526)
!1529 = !DILocation(line: 852, column: 13, scope: !1530)
!1530 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 852, column: 13)
!1531 = !DILocation(line: 852, column: 13, scope: !1526)
!1532 = !DILocation(line: 853, column: 31, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1530, file: !2, line: 852, column: 21)
!1534 = !DILocation(line: 853, column: 38, scope: !1533)
!1535 = !DILocation(line: 853, column: 11, scope: !1533)
!1536 = !DILocation(line: 854, column: 10, scope: !1533)
!1537 = !DILocation(line: 855, column: 9, scope: !1526)
!1538 = !DILocation(line: 856, column: 33, scope: !1539)
!1539 = distinct !DILexicalBlock(scope: !1523, file: !2, line: 855, column: 16)
!1540 = !DILocation(line: 856, column: 41, scope: !1539)
!1541 = !DILocation(line: 856, column: 10, scope: !1539)
!1542 = !DILocation(line: 858, column: 8, scope: !1519)
!1543 = distinct !{!1543, !1511, !1544, !748}
!1544 = !DILocation(line: 859, column: 7, scope: !1512)
!1545 = !DILocation(line: 860, column: 6, scope: !1512)
!1546 = !DILocation(line: 861, column: 5, scope: !1496)
!1547 = !DILocation(line: 862, column: 4, scope: !1484)
!1548 = distinct !{!1548, !1471, !1549, !748}
!1549 = !DILocation(line: 863, column: 3, scope: !1465)
!1550 = !DILocation(line: 864, column: 25, scope: !1465)
!1551 = !DILocation(line: 864, column: 3, scope: !1465)
!1552 = !DILocation(line: 865, column: 7, scope: !1465)
!1553 = !DILocation(line: 867, column: 28, scope: !1406)
!1554 = !DILocation(line: 867, column: 2, scope: !1406)
!1555 = !DILocation(line: 868, column: 2, scope: !1406)
!1556 = !DILocation(line: 869, column: 2, scope: !1406)
!1557 = !DILocation(line: 870, column: 9, scope: !1406)
!1558 = !DILocation(line: 870, column: 2, scope: !1406)
!1559 = !DILocation(line: 871, column: 1, scope: !1406)
!1560 = distinct !DISubprogram(name: "mongo_set_realm_option_one", scope: !2, file: !2, line: 873, type: !196, scopeLine: 873, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1561 = !DILocalVariable(name: "realm", arg: 1, scope: !1560, file: !2, line: 873, type: !165)
!1562 = !DILocation(line: 873, column: 48, scope: !1560)
!1563 = !DILocalVariable(name: "value", arg: 2, scope: !1560, file: !2, line: 873, type: !132)
!1564 = !DILocation(line: 873, column: 69, scope: !1560)
!1565 = !DILocalVariable(name: "opt", arg: 3, scope: !1560, file: !2, line: 873, type: !102)
!1566 = !DILocation(line: 873, column: 88, scope: !1560)
!1567 = !DILocalVariable(name: "collection", scope: !1560, file: !2, line: 874, type: !575)
!1568 = !DILocation(line: 874, column: 25, scope: !1560)
!1569 = !DILocation(line: 874, column: 38, scope: !1560)
!1570 = !DILocation(line: 876, column: 6, scope: !1571)
!1571 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 876, column: 5)
!1572 = !DILocation(line: 876, column: 5, scope: !1560)
!1573 = !DILocation(line: 877, column: 5, scope: !1571)
!1574 = !DILocalVariable(name: "query", scope: !1560, file: !2, line: 879, type: !586)
!1575 = !DILocation(line: 879, column: 10, scope: !1560)
!1576 = !DILocalVariable(name: "doc", scope: !1560, file: !2, line: 879, type: !586)
!1577 = !DILocation(line: 879, column: 17, scope: !1560)
!1578 = !DILocalVariable(name: "child", scope: !1560, file: !2, line: 879, type: !586)
!1579 = !DILocation(line: 879, column: 22, scope: !1560)
!1580 = !DILocation(line: 880, column: 3, scope: !1560)
!1581 = !DILocation(line: 881, column: 3, scope: !1560)
!1582 = !DILocation(line: 882, column: 3, scope: !1560)
!1583 = !DILocalVariable(name: "klen", scope: !1560, file: !2, line: 884, type: !163)
!1584 = !DILocation(line: 884, column: 10, scope: !1560)
!1585 = !DILocation(line: 884, column: 28, scope: !1560)
!1586 = !DILocation(line: 884, column: 21, scope: !1560)
!1587 = !DILocation(line: 884, column: 19, scope: !1560)
!1588 = !DILocalVariable(name: "_k", scope: !1560, file: !2, line: 885, type: !121)
!1589 = !DILocation(line: 885, column: 10, scope: !1560)
!1590 = !DILocation(line: 885, column: 30, scope: !1560)
!1591 = !DILocation(line: 885, column: 23, scope: !1560)
!1592 = !DILocation(line: 886, column: 10, scope: !1560)
!1593 = !DILocation(line: 886, column: 3, scope: !1560)
!1594 = !DILocation(line: 887, column: 10, scope: !1560)
!1595 = !DILocation(line: 887, column: 14, scope: !1560)
!1596 = !DILocation(line: 887, column: 3, scope: !1560)
!1597 = !DILocation(line: 889, column: 7, scope: !1598)
!1598 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 889, column: 7)
!1599 = !DILocation(line: 889, column: 13, scope: !1598)
!1600 = !DILocation(line: 889, column: 7, scope: !1560)
!1601 = !DILocation(line: 890, column: 5, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 889, column: 18)
!1603 = !DILocation(line: 891, column: 5, scope: !1602)
!1604 = !DILocation(line: 892, column: 5, scope: !1602)
!1605 = !DILocation(line: 893, column: 3, scope: !1602)
!1606 = !DILocation(line: 894, column: 5, scope: !1607)
!1607 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 893, column: 10)
!1608 = !DILocation(line: 895, column: 5, scope: !1607)
!1609 = !DILocation(line: 896, column: 5, scope: !1607)
!1610 = !DILocation(line: 898, column: 8, scope: !1560)
!1611 = !DILocation(line: 898, column: 3, scope: !1560)
!1612 = !DILocalVariable(name: "ret", scope: !1560, file: !2, line: 900, type: !80)
!1613 = !DILocation(line: 900, column: 7, scope: !1560)
!1614 = !DILocation(line: 902, column: 33, scope: !1615)
!1615 = distinct !DILexicalBlock(scope: !1560, file: !2, line: 902, column: 7)
!1616 = !DILocation(line: 902, column: 8, scope: !1615)
!1617 = !DILocation(line: 902, column: 7, scope: !1560)
!1618 = !DILocation(line: 903, column: 5, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 902, column: 100)
!1620 = !DILocation(line: 904, column: 3, scope: !1619)
!1621 = !DILocation(line: 905, column: 9, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1615, file: !2, line: 904, column: 10)
!1623 = !DILocation(line: 907, column: 29, scope: !1560)
!1624 = !DILocation(line: 907, column: 3, scope: !1560)
!1625 = !DILocation(line: 908, column: 3, scope: !1560)
!1626 = !DILocation(line: 909, column: 3, scope: !1560)
!1627 = !DILocation(line: 910, column: 10, scope: !1560)
!1628 = !DILocation(line: 910, column: 3, scope: !1560)
!1629 = !DILocation(line: 911, column: 1, scope: !1560)
!1630 = distinct !DISubprogram(name: "mongo_list_realm_options", scope: !2, file: !2, line: 913, type: !191, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1631 = !DILocalVariable(name: "realm", arg: 1, scope: !1630, file: !2, line: 913, type: !165)
!1632 = !DILocation(line: 913, column: 46, scope: !1630)
!1633 = !DILocalVariable(name: "collection", scope: !1630, file: !2, line: 914, type: !575)
!1634 = !DILocation(line: 914, column: 25, scope: !1630)
!1635 = !DILocation(line: 914, column: 38, scope: !1630)
!1636 = !DILocation(line: 916, column: 6, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 916, column: 5)
!1638 = !DILocation(line: 916, column: 5, scope: !1630)
!1639 = !DILocation(line: 917, column: 5, scope: !1637)
!1640 = !DILocalVariable(name: "query", scope: !1630, file: !2, line: 919, type: !586)
!1641 = !DILocation(line: 919, column: 10, scope: !1630)
!1642 = !DILocalVariable(name: "child", scope: !1630, file: !2, line: 919, type: !586)
!1643 = !DILocation(line: 919, column: 17, scope: !1630)
!1644 = !DILocation(line: 920, column: 3, scope: !1630)
!1645 = !DILocation(line: 921, column: 3, scope: !1630)
!1646 = !DILocation(line: 922, column: 3, scope: !1630)
!1647 = !DILocation(line: 923, column: 3, scope: !1630)
!1648 = !DILocation(line: 924, column: 3, scope: !1630)
!1649 = !DILocation(line: 925, column: 7, scope: !1650)
!1650 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 925, column: 7)
!1651 = !DILocation(line: 925, column: 13, scope: !1650)
!1652 = !DILocation(line: 925, column: 16, scope: !1650)
!1653 = !DILocation(line: 925, column: 7, scope: !1630)
!1654 = !DILocation(line: 926, column: 5, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1650, file: !2, line: 925, column: 26)
!1656 = !DILocation(line: 927, column: 3, scope: !1655)
!1657 = !DILocation(line: 928, column: 3, scope: !1630)
!1658 = !DILocalVariable(name: "fields", scope: !1630, file: !2, line: 930, type: !586)
!1659 = !DILocation(line: 930, column: 10, scope: !1630)
!1660 = !DILocation(line: 931, column: 3, scope: !1630)
!1661 = !DILocation(line: 932, column: 3, scope: !1630)
!1662 = !DILocation(line: 933, column: 3, scope: !1630)
!1663 = !DILocalVariable(name: "cursor", scope: !1630, file: !2, line: 935, type: !603)
!1664 = !DILocation(line: 935, column: 21, scope: !1630)
!1665 = !DILocation(line: 936, column: 35, scope: !1630)
!1666 = !DILocation(line: 936, column: 12, scope: !1630)
!1667 = !DILocation(line: 936, column: 10, scope: !1630)
!1668 = !DILocalVariable(name: "ret", scope: !1630, file: !2, line: 938, type: !80)
!1669 = !DILocation(line: 938, column: 7, scope: !1630)
!1670 = !DILocation(line: 940, column: 8, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1630, file: !2, line: 940, column: 7)
!1672 = !DILocation(line: 940, column: 7, scope: !1630)
!1673 = !DILocation(line: 941, column: 3, scope: !1674)
!1674 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 940, column: 16)
!1675 = !DILocation(line: 942, column: 3, scope: !1674)
!1676 = !DILocalVariable(name: "item", scope: !1677, file: !2, line: 943, type: !621)
!1677 = distinct !DILexicalBlock(scope: !1671, file: !2, line: 942, column: 10)
!1678 = !DILocation(line: 943, column: 20, scope: !1677)
!1679 = !DILocalVariable(name: "length", scope: !1677, file: !2, line: 944, type: !140)
!1680 = !DILocation(line: 944, column: 14, scope: !1677)
!1681 = !DILocalVariable(name: "iter", scope: !1677, file: !2, line: 945, type: !627)
!1682 = !DILocation(line: 945, column: 17, scope: !1677)
!1683 = !DILocation(line: 947, column: 5, scope: !1677)
!1684 = !DILocation(line: 947, column: 31, scope: !1677)
!1685 = !DILocation(line: 947, column: 12, scope: !1677)
!1686 = !DILocation(line: 948, column: 32, scope: !1687)
!1687 = distinct !DILexicalBlock(scope: !1688, file: !2, line: 948, column: 10)
!1688 = distinct !DILexicalBlock(scope: !1677, file: !2, line: 947, column: 47)
!1689 = !DILocation(line: 948, column: 10, scope: !1687)
!1690 = !DILocation(line: 948, column: 38, scope: !1687)
!1691 = !DILocation(line: 948, column: 41, scope: !1687)
!1692 = !DILocation(line: 948, column: 72, scope: !1687)
!1693 = !DILocation(line: 948, column: 75, scope: !1687)
!1694 = !DILocation(line: 948, column: 10, scope: !1688)
!1695 = !DILocalVariable(name: "_realm", scope: !1696, file: !2, line: 949, type: !102)
!1696 = distinct !DILexicalBlock(scope: !1687, file: !2, line: 948, column: 104)
!1697 = !DILocation(line: 949, column: 22, scope: !1696)
!1698 = !DILocation(line: 949, column: 31, scope: !1696)
!1699 = !DILocation(line: 951, column: 35, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1696, file: !2, line: 951, column: 13)
!1701 = !DILocation(line: 951, column: 13, scope: !1700)
!1702 = !DILocation(line: 951, column: 41, scope: !1700)
!1703 = !DILocation(line: 951, column: 44, scope: !1700)
!1704 = !DILocation(line: 951, column: 77, scope: !1700)
!1705 = !DILocation(line: 951, column: 80, scope: !1700)
!1706 = !DILocation(line: 951, column: 13, scope: !1696)
!1707 = !DILocalVariable(name: "docbuf", scope: !1708, file: !2, line: 952, type: !325)
!1708 = distinct !DILexicalBlock(scope: !1700, file: !2, line: 951, column: 113)
!1709 = !DILocation(line: 952, column: 26, scope: !1708)
!1710 = !DILocalVariable(name: "doclen", scope: !1708, file: !2, line: 953, type: !140)
!1711 = !DILocation(line: 953, column: 20, scope: !1708)
!1712 = !DILocalVariable(name: "options", scope: !1708, file: !2, line: 954, type: !586)
!1713 = !DILocation(line: 954, column: 18, scope: !1708)
!1714 = !DILocalVariable(name: "options_iter", scope: !1708, file: !2, line: 955, type: !627)
!1715 = !DILocation(line: 955, column: 23, scope: !1708)
!1716 = !DILocation(line: 957, column: 11, scope: !1708)
!1717 = !DILocation(line: 958, column: 38, scope: !1708)
!1718 = !DILocation(line: 958, column: 46, scope: !1708)
!1719 = !DILocation(line: 958, column: 11, scope: !1708)
!1720 = !DILocation(line: 960, column: 15, scope: !1721)
!1721 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 960, column: 15)
!1722 = !DILocation(line: 960, column: 15, scope: !1708)
!1723 = !DILocation(line: 961, column: 13, scope: !1724)
!1724 = distinct !DILexicalBlock(scope: !1721, file: !2, line: 960, column: 56)
!1725 = !DILocation(line: 961, column: 19, scope: !1724)
!1726 = !DILocalVariable(name: "_k", scope: !1727, file: !2, line: 962, type: !102)
!1727 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 961, column: 50)
!1728 = !DILocation(line: 962, column: 28, scope: !1727)
!1729 = !DILocation(line: 962, column: 33, scope: !1727)
!1730 = !DILocation(line: 963, column: 19, scope: !1731)
!1731 = distinct !DILexicalBlock(scope: !1727, file: !2, line: 963, column: 19)
!1732 = !DILocation(line: 963, column: 19, scope: !1727)
!1733 = !DILocalVariable(name: "_v", scope: !1734, file: !2, line: 964, type: !122)
!1734 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 963, column: 58)
!1735 = !DILocation(line: 964, column: 25, scope: !1734)
!1736 = !DILocation(line: 964, column: 39, scope: !1734)
!1737 = !DILocation(line: 964, column: 30, scope: !1734)
!1738 = !DILocation(line: 965, column: 31, scope: !1734)
!1739 = !DILocation(line: 965, column: 35, scope: !1734)
!1740 = !DILocation(line: 965, column: 43, scope: !1734)
!1741 = !DILocation(line: 965, column: 9, scope: !1734)
!1742 = !DILocation(line: 966, column: 15, scope: !1734)
!1743 = !DILocation(line: 966, column: 26, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1731, file: !2, line: 966, column: 26)
!1745 = !DILocation(line: 966, column: 26, scope: !1731)
!1746 = !DILocalVariable(name: "_v", scope: !1747, file: !2, line: 967, type: !122)
!1747 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 966, column: 64)
!1748 = !DILocation(line: 967, column: 25, scope: !1747)
!1749 = !DILocation(line: 967, column: 30, scope: !1747)
!1750 = !DILocation(line: 968, column: 31, scope: !1747)
!1751 = !DILocation(line: 968, column: 35, scope: !1747)
!1752 = !DILocation(line: 968, column: 43, scope: !1747)
!1753 = !DILocation(line: 968, column: 9, scope: !1747)
!1754 = !DILocation(line: 969, column: 15, scope: !1747)
!1755 = !DILocation(line: 969, column: 26, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1744, file: !2, line: 969, column: 26)
!1757 = !DILocation(line: 969, column: 26, scope: !1744)
!1758 = !DILocalVariable(name: "_v", scope: !1759, file: !2, line: 970, type: !122)
!1759 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 969, column: 64)
!1760 = !DILocation(line: 970, column: 25, scope: !1759)
!1761 = !DILocation(line: 970, column: 39, scope: !1759)
!1762 = !DILocation(line: 970, column: 30, scope: !1759)
!1763 = !DILocation(line: 971, column: 31, scope: !1759)
!1764 = !DILocation(line: 971, column: 35, scope: !1759)
!1765 = !DILocation(line: 971, column: 43, scope: !1759)
!1766 = !DILocation(line: 971, column: 9, scope: !1759)
!1767 = !DILocation(line: 972, column: 15, scope: !1759)
!1768 = distinct !{!1768, !1723, !1769, !748}
!1769 = !DILocation(line: 973, column: 13, scope: !1724)
!1770 = !DILocation(line: 974, column: 11, scope: !1724)
!1771 = !DILocation(line: 975, column: 9, scope: !1708)
!1772 = !DILocation(line: 976, column: 7, scope: !1696)
!1773 = distinct !{!1773, !1683, !1774, !748}
!1774 = !DILocation(line: 977, column: 5, scope: !1677)
!1775 = !DILocation(line: 978, column: 27, scope: !1677)
!1776 = !DILocation(line: 978, column: 5, scope: !1677)
!1777 = !DILocation(line: 979, column: 9, scope: !1677)
!1778 = !DILocation(line: 981, column: 29, scope: !1630)
!1779 = !DILocation(line: 981, column: 3, scope: !1630)
!1780 = !DILocation(line: 982, column: 3, scope: !1630)
!1781 = !DILocation(line: 983, column: 3, scope: !1630)
!1782 = !DILocation(line: 984, column: 10, scope: !1630)
!1783 = !DILocation(line: 984, column: 3, scope: !1630)
!1784 = !DILocation(line: 985, column: 1, scope: !1630)
!1785 = distinct !DISubprogram(name: "mongo_auth_ping", scope: !2, file: !2, line: 987, type: !201, scopeLine: 987, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1786 = !DILocalVariable(name: "rch", arg: 1, scope: !1785, file: !2, line: 987, type: !120)
!1787 = !DILocation(line: 987, column: 36, scope: !1785)
!1788 = !DILocation(line: 988, column: 2, scope: !1785)
!1789 = !DILocation(line: 988, column: 2, scope: !1790)
!1790 = distinct !DILexicalBlock(scope: !1785, file: !2, line: 988, column: 2)
!1791 = !DILocation(line: 990, column: 1, scope: !1785)
!1792 = distinct !DISubprogram(name: "mongo_get_ip_list", scope: !2, file: !2, line: 1063, type: !205, scopeLine: 1063, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1793 = !DILocalVariable(name: "kind", arg: 1, scope: !1792, file: !2, line: 1063, type: !102)
!1794 = !DILocation(line: 1063, column: 42, scope: !1792)
!1795 = !DILocalVariable(name: "list", arg: 2, scope: !1792, file: !2, line: 1063, type: !207)
!1796 = !DILocation(line: 1063, column: 66, scope: !1792)
!1797 = !DILocation(line: 1064, column: 36, scope: !1792)
!1798 = !DILocation(line: 1064, column: 42, scope: !1792)
!1799 = !DILocation(line: 1064, column: 9, scope: !1792)
!1800 = !DILocation(line: 1064, column: 2, scope: !1792)
!1801 = distinct !DISubprogram(name: "mongo_set_permission_ip", scope: !2, file: !2, line: 691, type: !291, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1802 = !DILocalVariable(name: "kind", arg: 1, scope: !1801, file: !2, line: 691, type: !102)
!1803 = !DILocation(line: 691, column: 48, scope: !1801)
!1804 = !DILocalVariable(name: "realm", arg: 2, scope: !1801, file: !2, line: 691, type: !165)
!1805 = !DILocation(line: 691, column: 63, scope: !1801)
!1806 = !DILocalVariable(name: "ip", arg: 3, scope: !1801, file: !2, line: 691, type: !102)
!1807 = !DILocation(line: 691, column: 82, scope: !1801)
!1808 = !DILocalVariable(name: "del", arg: 4, scope: !1801, file: !2, line: 691, type: !80)
!1809 = !DILocation(line: 691, column: 90, scope: !1801)
!1810 = !DILocalVariable(name: "sub_collection_name", scope: !1801, file: !2, line: 693, type: !307)
!1811 = !DILocation(line: 693, column: 7, scope: !1801)
!1812 = !DILocation(line: 694, column: 11, scope: !1801)
!1813 = !DILocation(line: 694, column: 74, scope: !1801)
!1814 = !DILocation(line: 694, column: 2, scope: !1801)
!1815 = !DILocalVariable(name: "collection", scope: !1801, file: !2, line: 696, type: !575)
!1816 = !DILocation(line: 696, column: 24, scope: !1801)
!1817 = !DILocation(line: 696, column: 37, scope: !1801)
!1818 = !DILocation(line: 698, column: 6, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 698, column: 5)
!1820 = !DILocation(line: 698, column: 5, scope: !1801)
!1821 = !DILocation(line: 699, column: 3, scope: !1819)
!1822 = !DILocalVariable(name: "ret", scope: !1801, file: !2, line: 701, type: !80)
!1823 = !DILocation(line: 701, column: 6, scope: !1801)
!1824 = !DILocalVariable(name: "realm0", scope: !1801, file: !2, line: 703, type: !963)
!1825 = !DILocation(line: 703, column: 10, scope: !1801)
!1826 = !DILocation(line: 704, column: 6, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 704, column: 5)
!1828 = !DILocation(line: 704, column: 5, scope: !1801)
!1829 = !DILocation(line: 704, column: 19, scope: !1827)
!1830 = !DILocation(line: 704, column: 18, scope: !1827)
!1831 = !DILocation(line: 704, column: 13, scope: !1827)
!1832 = !DILocalVariable(name: "query", scope: !1801, file: !2, line: 706, type: !586)
!1833 = !DILocation(line: 706, column: 9, scope: !1801)
!1834 = !DILocalVariable(name: "doc", scope: !1801, file: !2, line: 706, type: !586)
!1835 = !DILocation(line: 706, column: 16, scope: !1801)
!1836 = !DILocalVariable(name: "child", scope: !1801, file: !2, line: 706, type: !586)
!1837 = !DILocation(line: 706, column: 21, scope: !1801)
!1838 = !DILocation(line: 707, column: 2, scope: !1801)
!1839 = !DILocation(line: 708, column: 2, scope: !1801)
!1840 = !DILocation(line: 709, column: 2, scope: !1801)
!1841 = !DILocation(line: 710, column: 5, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 710, column: 5)
!1843 = !DILocation(line: 710, column: 5, scope: !1801)
!1844 = !DILocation(line: 711, column: 3, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 710, column: 10)
!1846 = !DILocation(line: 712, column: 2, scope: !1845)
!1847 = !DILocation(line: 713, column: 3, scope: !1848)
!1848 = distinct !DILexicalBlock(scope: !1842, file: !2, line: 712, column: 9)
!1849 = !DILocation(line: 715, column: 2, scope: !1801)
!1850 = !DILocation(line: 716, column: 2, scope: !1801)
!1851 = !DILocalVariable(name: "flags", scope: !1801, file: !2, line: 718, type: !1852)
!1852 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_update_flags_t", file: !13, line: 141, baseType: !88)
!1853 = !DILocation(line: 718, column: 24, scope: !1801)
!1854 = !DILocation(line: 720, column: 5, scope: !1855)
!1855 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 720, column: 5)
!1856 = !DILocation(line: 720, column: 5, scope: !1801)
!1857 = !DILocation(line: 721, column: 9, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 720, column: 10)
!1859 = !DILocation(line: 722, column: 2, scope: !1858)
!1860 = !DILocation(line: 723, column: 9, scope: !1861)
!1861 = distinct !DILexicalBlock(scope: !1855, file: !2, line: 722, column: 9)
!1862 = !DILocation(line: 726, column: 32, scope: !1863)
!1863 = distinct !DILexicalBlock(scope: !1801, file: !2, line: 726, column: 6)
!1864 = !DILocation(line: 726, column: 44, scope: !1863)
!1865 = !DILocation(line: 726, column: 7, scope: !1863)
!1866 = !DILocation(line: 726, column: 6, scope: !1801)
!1867 = !DILocation(line: 727, column: 3, scope: !1868)
!1868 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 726, column: 78)
!1869 = !DILocation(line: 728, column: 2, scope: !1868)
!1870 = !DILocation(line: 729, column: 7, scope: !1871)
!1871 = distinct !DILexicalBlock(scope: !1863, file: !2, line: 728, column: 9)
!1872 = !DILocation(line: 731, column: 28, scope: !1801)
!1873 = !DILocation(line: 731, column: 2, scope: !1801)
!1874 = !DILocation(line: 732, column: 2, scope: !1801)
!1875 = !DILocation(line: 733, column: 2, scope: !1801)
!1876 = !DILocation(line: 734, column: 9, scope: !1801)
!1877 = !DILocation(line: 734, column: 2, scope: !1801)
!1878 = !DILocation(line: 735, column: 1, scope: !1801)
!1879 = distinct !DISubprogram(name: "mongo_reread_realms", scope: !2, file: !2, line: 1068, type: !295, scopeLine: 1068, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!1880 = !DILocalVariable(name: "realms_list", arg: 1, scope: !1879, file: !2, line: 1068, type: !155)
!1881 = !DILocation(line: 1068, column: 50, scope: !1879)
!1882 = !DILocation(line: 1070, column: 2, scope: !1879)
!1883 = !DILocation(line: 1070, column: 2, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 1070, column: 2)
!1885 = !DILocalVariable(name: "collection", scope: !1879, file: !2, line: 1072, type: !575)
!1886 = !DILocation(line: 1072, column: 24, scope: !1879)
!1887 = !DILocation(line: 1072, column: 37, scope: !1879)
!1888 = !DILocation(line: 1074, column: 7, scope: !1889)
!1889 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 1074, column: 6)
!1890 = !DILocation(line: 1074, column: 6, scope: !1879)
!1891 = !DILocation(line: 1075, column: 3, scope: !1889)
!1892 = !DILocalVariable(name: "query", scope: !1879, file: !2, line: 1077, type: !586)
!1893 = !DILocation(line: 1077, column: 9, scope: !1879)
!1894 = !DILocation(line: 1078, column: 2, scope: !1879)
!1895 = !DILocalVariable(name: "fields", scope: !1879, file: !2, line: 1080, type: !586)
!1896 = !DILocation(line: 1080, column: 9, scope: !1879)
!1897 = !DILocation(line: 1081, column: 2, scope: !1879)
!1898 = !DILocation(line: 1082, column: 2, scope: !1879)
!1899 = !DILocation(line: 1083, column: 2, scope: !1879)
!1900 = !DILocation(line: 1084, column: 2, scope: !1879)
!1901 = !DILocalVariable(name: "cursor", scope: !1879, file: !2, line: 1086, type: !603)
!1902 = !DILocation(line: 1086, column: 20, scope: !1879)
!1903 = !DILocation(line: 1087, column: 34, scope: !1879)
!1904 = !DILocation(line: 1087, column: 11, scope: !1879)
!1905 = !DILocation(line: 1087, column: 9, scope: !1879)
!1906 = !DILocation(line: 1090, column: 7, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 1090, column: 6)
!1908 = !DILocation(line: 1090, column: 6, scope: !1879)
!1909 = !DILocation(line: 1091, column: 3, scope: !1910)
!1910 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 1090, column: 15)
!1911 = !DILocation(line: 1093, column: 2, scope: !1910)
!1912 = !DILocalVariable(name: "o_to_realm_new", scope: !1913, file: !2, line: 1094, type: !1914)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 1093, column: 9)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !127, line: 227, baseType: !1916)
!1916 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !127, line: 226, flags: DIFlagFwdDecl)
!1917 = !DILocation(line: 1094, column: 18, scope: !1913)
!1918 = !DILocation(line: 1094, column: 35, scope: !1913)
!1919 = !DILocalVariable(name: "item", scope: !1913, file: !2, line: 1096, type: !621)
!1920 = !DILocation(line: 1096, column: 18, scope: !1913)
!1921 = !DILocalVariable(name: "length", scope: !1913, file: !2, line: 1097, type: !140)
!1922 = !DILocation(line: 1097, column: 12, scope: !1913)
!1923 = !DILocalVariable(name: "iter", scope: !1913, file: !2, line: 1098, type: !627)
!1924 = !DILocation(line: 1098, column: 15, scope: !1913)
!1925 = !DILocation(line: 1100, column: 3, scope: !1913)
!1926 = !DILocation(line: 1100, column: 29, scope: !1913)
!1927 = !DILocation(line: 1100, column: 10, scope: !1913)
!1928 = !DILocation(line: 1102, column: 30, scope: !1929)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 1102, column: 8)
!1930 = distinct !DILexicalBlock(scope: !1913, file: !2, line: 1100, column: 45)
!1931 = !DILocation(line: 1102, column: 8, scope: !1929)
!1932 = !DILocation(line: 1102, column: 36, scope: !1929)
!1933 = !DILocation(line: 1102, column: 39, scope: !1929)
!1934 = !DILocation(line: 1103, column: 6, scope: !1929)
!1935 = !DILocation(line: 1103, column: 9, scope: !1929)
!1936 = !DILocation(line: 1102, column: 8, scope: !1930)
!1937 = !DILocalVariable(name: "_realm", scope: !1938, file: !2, line: 1105, type: !121)
!1938 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 1103, column: 38)
!1939 = !DILocation(line: 1105, column: 12, scope: !1938)
!1940 = !DILocation(line: 1105, column: 28, scope: !1938)
!1941 = !DILocation(line: 1105, column: 21, scope: !1938)
!1942 = !DILocation(line: 1107, column: 15, scope: !1938)
!1943 = !DILocation(line: 1107, column: 5, scope: !1938)
!1944 = !DILocation(line: 1109, column: 31, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 1109, column: 9)
!1946 = !DILocation(line: 1109, column: 9, scope: !1945)
!1947 = !DILocation(line: 1109, column: 37, scope: !1945)
!1948 = !DILocation(line: 1109, column: 40, scope: !1945)
!1949 = !DILocation(line: 1110, column: 17, scope: !1945)
!1950 = !DILocation(line: 1110, column: 20, scope: !1945)
!1951 = !DILocation(line: 1109, column: 9, scope: !1938)
!1952 = !DILocalVariable(name: "docbuf", scope: !1953, file: !2, line: 1111, type: !325)
!1953 = distinct !DILexicalBlock(scope: !1945, file: !2, line: 1110, column: 50)
!1954 = !DILocation(line: 1111, column: 21, scope: !1953)
!1955 = !DILocalVariable(name: "doclen", scope: !1953, file: !2, line: 1112, type: !140)
!1956 = !DILocation(line: 1112, column: 15, scope: !1953)
!1957 = !DILocalVariable(name: "origin_array", scope: !1953, file: !2, line: 1113, type: !586)
!1958 = !DILocation(line: 1113, column: 13, scope: !1953)
!1959 = !DILocalVariable(name: "origin_iter", scope: !1953, file: !2, line: 1114, type: !627)
!1960 = !DILocation(line: 1114, column: 18, scope: !1953)
!1961 = !DILocation(line: 1116, column: 6, scope: !1953)
!1962 = !DILocation(line: 1117, column: 38, scope: !1953)
!1963 = !DILocation(line: 1117, column: 46, scope: !1953)
!1964 = !DILocation(line: 1117, column: 6, scope: !1953)
!1965 = !DILocation(line: 1119, column: 10, scope: !1966)
!1966 = distinct !DILexicalBlock(scope: !1953, file: !2, line: 1119, column: 10)
!1967 = !DILocation(line: 1119, column: 10, scope: !1953)
!1968 = !DILocation(line: 1120, column: 7, scope: !1969)
!1969 = distinct !DILexicalBlock(scope: !1966, file: !2, line: 1119, column: 55)
!1970 = !DILocation(line: 1120, column: 14, scope: !1969)
!1971 = !DILocation(line: 1121, column: 12, scope: !1972)
!1972 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 1121, column: 12)
!1973 = distinct !DILexicalBlock(scope: !1969, file: !2, line: 1120, column: 44)
!1974 = !DILocation(line: 1121, column: 12, scope: !1973)
!1975 = !DILocalVariable(name: "_origin", scope: !1976, file: !2, line: 1122, type: !121)
!1976 = distinct !DILexicalBlock(scope: !1972, file: !2, line: 1121, column: 48)
!1977 = !DILocation(line: 1122, column: 15, scope: !1976)
!1978 = !DILocation(line: 1122, column: 32, scope: !1976)
!1979 = !DILocation(line: 1122, column: 25, scope: !1976)
!1980 = !DILocalVariable(name: "rval", scope: !1976, file: !2, line: 1123, type: !121)
!1981 = !DILocation(line: 1123, column: 15, scope: !1976)
!1982 = !DILocation(line: 1123, column: 29, scope: !1976)
!1983 = !DILocation(line: 1123, column: 22, scope: !1976)
!1984 = !DILocalVariable(name: "value", scope: !1976, file: !2, line: 1124, type: !126)
!1985 = !DILocation(line: 1124, column: 34, scope: !1976)
!1986 = !DILocation(line: 1125, column: 39, scope: !1976)
!1987 = !DILocation(line: 1126, column: 27, scope: !1976)
!1988 = !DILocation(line: 1127, column: 36, scope: !1976)
!1989 = !DILocation(line: 1128, column: 11, scope: !1976)
!1990 = !DILocation(line: 1126, column: 9, scope: !1976)
!1991 = !DILocation(line: 1129, column: 14, scope: !1976)
!1992 = !DILocation(line: 1129, column: 9, scope: !1976)
!1993 = !DILocation(line: 1130, column: 8, scope: !1976)
!1994 = distinct !{!1994, !1968, !1995, !748}
!1995 = !DILocation(line: 1131, column: 7, scope: !1969)
!1996 = !DILocation(line: 1132, column: 6, scope: !1969)
!1997 = !DILocation(line: 1133, column: 5, scope: !1953)
!1998 = !DILocalVariable(name: "rp", scope: !1938, file: !2, line: 1135, type: !1999)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !157, line: 55, baseType: !2001)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !157, line: 64, size: 1344, elements: !2002)
!2002 = !{!2003, !2004, !2018}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !2001, file: !157, line: 66, baseType: !80, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2001, file: !157, line: 68, baseType: !2005, size: 1152, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !209, line: 142, baseType: !2006)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !2007, line: 53, size: 1152, elements: !2008)
!2007 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!2008 = !{!2009, !2010}
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2006, file: !2007, line: 55, baseType: !318, size: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !2006, file: !2007, line: 57, baseType: !2011, size: 128, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !2007, line: 51, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !2007, line: 45, size: 128, elements: !2013)
!2013 = !{!2014, !2016, !2017}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !2012, file: !2007, line: 47, baseType: !2015, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !2012, file: !2007, line: 48, baseType: !135, size: 32, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !2012, file: !2007, line: 49, baseType: !135, size: 32, offset: 96)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2001, file: !157, line: 70, baseType: !2019, size: 128, offset: 1216)
!2019 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !157, line: 52, baseType: !2020)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !157, line: 57, size: 128, elements: !2021)
!2021 = !{!2022, !2023}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !2020, file: !157, line: 59, baseType: !135, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !2020, file: !157, line: 60, baseType: !1914, size: 64, offset: 64)
!2024 = !DILocation(line: 1135, column: 21, scope: !1938)
!2025 = !DILocation(line: 1135, column: 36, scope: !1938)
!2026 = !DILocation(line: 1135, column: 26, scope: !1938)
!2027 = !DILocation(line: 1136, column: 5, scope: !1938)
!2028 = !DILocation(line: 1137, column: 52, scope: !1938)
!2029 = !DILocation(line: 1137, column: 5, scope: !1938)
!2030 = !DILocation(line: 1137, column: 9, scope: !1938)
!2031 = !DILocation(line: 1137, column: 17, scope: !1938)
!2032 = !DILocation(line: 1137, column: 30, scope: !1938)
!2033 = !DILocation(line: 1137, column: 38, scope: !1938)
!2034 = !DILocation(line: 1138, column: 56, scope: !1938)
!2035 = !DILocation(line: 1138, column: 5, scope: !1938)
!2036 = !DILocation(line: 1138, column: 9, scope: !1938)
!2037 = !DILocation(line: 1138, column: 17, scope: !1938)
!2038 = !DILocation(line: 1138, column: 30, scope: !1938)
!2039 = !DILocation(line: 1138, column: 42, scope: !1938)
!2040 = !DILocation(line: 1139, column: 55, scope: !1938)
!2041 = !DILocation(line: 1139, column: 5, scope: !1938)
!2042 = !DILocation(line: 1139, column: 9, scope: !1938)
!2043 = !DILocation(line: 1139, column: 17, scope: !1938)
!2044 = !DILocation(line: 1139, column: 30, scope: !1938)
!2045 = !DILocation(line: 1139, column: 41, scope: !1938)
!2046 = !DILocation(line: 1140, column: 5, scope: !1938)
!2047 = !DILocation(line: 1142, column: 31, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 1142, column: 9)
!2049 = !DILocation(line: 1142, column: 9, scope: !2048)
!2050 = !DILocation(line: 1142, column: 37, scope: !2048)
!2051 = !DILocation(line: 1142, column: 40, scope: !2048)
!2052 = !DILocation(line: 1143, column: 18, scope: !2048)
!2053 = !DILocation(line: 1143, column: 21, scope: !2048)
!2054 = !DILocation(line: 1142, column: 9, scope: !1938)
!2055 = !DILocalVariable(name: "docbuf", scope: !2056, file: !2, line: 1144, type: !325)
!2056 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 1143, column: 54)
!2057 = !DILocation(line: 1144, column: 21, scope: !2056)
!2058 = !DILocalVariable(name: "doclen", scope: !2056, file: !2, line: 1145, type: !140)
!2059 = !DILocation(line: 1145, column: 15, scope: !2056)
!2060 = !DILocalVariable(name: "options", scope: !2056, file: !2, line: 1146, type: !586)
!2061 = !DILocation(line: 1146, column: 13, scope: !2056)
!2062 = !DILocalVariable(name: "options_iter", scope: !2056, file: !2, line: 1147, type: !627)
!2063 = !DILocation(line: 1147, column: 18, scope: !2056)
!2064 = !DILocation(line: 1149, column: 6, scope: !2056)
!2065 = !DILocation(line: 1150, column: 33, scope: !2056)
!2066 = !DILocation(line: 1150, column: 41, scope: !2056)
!2067 = !DILocation(line: 1150, column: 6, scope: !2056)
!2068 = !DILocation(line: 1152, column: 10, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2056, file: !2, line: 1152, column: 10)
!2070 = !DILocation(line: 1152, column: 10, scope: !2056)
!2071 = !DILocation(line: 1153, column: 7, scope: !2072)
!2072 = distinct !DILexicalBlock(scope: !2069, file: !2, line: 1152, column: 51)
!2073 = !DILocation(line: 1153, column: 14, scope: !2072)
!2074 = !DILocalVariable(name: "_k", scope: !2075, file: !2, line: 1154, type: !102)
!2075 = distinct !DILexicalBlock(scope: !2072, file: !2, line: 1153, column: 45)
!2076 = !DILocation(line: 1154, column: 21, scope: !2075)
!2077 = !DILocation(line: 1154, column: 26, scope: !2075)
!2078 = !DILocalVariable(name: "_v", scope: !2075, file: !2, line: 1155, type: !129)
!2079 = !DILocation(line: 1155, column: 17, scope: !2075)
!2080 = !DILocation(line: 1156, column: 12, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1156, column: 12)
!2082 = !DILocation(line: 1156, column: 12, scope: !2075)
!2083 = !DILocation(line: 1157, column: 25, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 1156, column: 51)
!2085 = !DILocation(line: 1157, column: 14, scope: !2084)
!2086 = !DILocation(line: 1157, column: 12, scope: !2084)
!2087 = !DILocation(line: 1158, column: 8, scope: !2084)
!2088 = !DILocation(line: 1158, column: 19, scope: !2089)
!2089 = distinct !DILexicalBlock(scope: !2081, file: !2, line: 1158, column: 19)
!2090 = !DILocation(line: 1158, column: 19, scope: !2081)
!2091 = !DILocation(line: 1159, column: 24, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 1158, column: 57)
!2093 = !DILocation(line: 1159, column: 14, scope: !2092)
!2094 = !DILocation(line: 1159, column: 12, scope: !2092)
!2095 = !DILocation(line: 1160, column: 8, scope: !2092)
!2096 = !DILocation(line: 1160, column: 19, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2089, file: !2, line: 1160, column: 19)
!2098 = !DILocation(line: 1160, column: 19, scope: !2089)
!2099 = !DILocation(line: 1161, column: 25, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2097, file: !2, line: 1160, column: 57)
!2101 = !DILocation(line: 1161, column: 12, scope: !2100)
!2102 = !DILocation(line: 1162, column: 8, scope: !2100)
!2103 = !DILocation(line: 1163, column: 12, scope: !2104)
!2104 = distinct !DILexicalBlock(scope: !2075, file: !2, line: 1163, column: 12)
!2105 = !DILocation(line: 1163, column: 12, scope: !2075)
!2106 = !DILocation(line: 1164, column: 21, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2108, file: !2, line: 1164, column: 13)
!2108 = distinct !DILexicalBlock(scope: !2104, file: !2, line: 1163, column: 16)
!2109 = !DILocation(line: 1164, column: 14, scope: !2107)
!2110 = !DILocation(line: 1164, column: 13, scope: !2108)
!2111 = !DILocation(line: 1165, column: 60, scope: !2107)
!2112 = !DILocation(line: 1165, column: 10, scope: !2107)
!2113 = !DILocation(line: 1165, column: 14, scope: !2107)
!2114 = !DILocation(line: 1165, column: 22, scope: !2107)
!2115 = !DILocation(line: 1165, column: 35, scope: !2107)
!2116 = !DILocation(line: 1165, column: 43, scope: !2107)
!2117 = !DILocation(line: 1166, column: 26, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 1166, column: 18)
!2119 = !DILocation(line: 1166, column: 19, scope: !2118)
!2120 = !DILocation(line: 1166, column: 18, scope: !2107)
!2121 = !DILocation(line: 1167, column: 56, scope: !2118)
!2122 = !DILocation(line: 1167, column: 49, scope: !2118)
!2123 = !DILocation(line: 1167, column: 10, scope: !2118)
!2124 = !DILocation(line: 1167, column: 14, scope: !2118)
!2125 = !DILocation(line: 1167, column: 22, scope: !2118)
!2126 = !DILocation(line: 1167, column: 35, scope: !2118)
!2127 = !DILocation(line: 1167, column: 47, scope: !2118)
!2128 = !DILocation(line: 1168, column: 26, scope: !2129)
!2129 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 1168, column: 18)
!2130 = !DILocation(line: 1168, column: 19, scope: !2129)
!2131 = !DILocation(line: 1168, column: 18, scope: !2118)
!2132 = !DILocation(line: 1169, column: 55, scope: !2129)
!2133 = !DILocation(line: 1169, column: 48, scope: !2129)
!2134 = !DILocation(line: 1169, column: 10, scope: !2129)
!2135 = !DILocation(line: 1169, column: 14, scope: !2129)
!2136 = !DILocation(line: 1169, column: 22, scope: !2129)
!2137 = !DILocation(line: 1169, column: 35, scope: !2129)
!2138 = !DILocation(line: 1169, column: 46, scope: !2129)
!2139 = !DILocation(line: 1172, column: 42, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2129, file: !2, line: 1170, column: 14)
!2141 = !DILocation(line: 1171, column: 10, scope: !2140)
!2142 = !DILocation(line: 1174, column: 8, scope: !2108)
!2143 = distinct !{!2143, !2071, !2144, !748}
!2144 = !DILocation(line: 1175, column: 7, scope: !2072)
!2145 = !DILocation(line: 1176, column: 6, scope: !2072)
!2146 = !DILocation(line: 1177, column: 5, scope: !2056)
!2147 = !DILocation(line: 1178, column: 10, scope: !1938)
!2148 = !DILocation(line: 1178, column: 5, scope: !1938)
!2149 = !DILocation(line: 1179, column: 4, scope: !1938)
!2150 = distinct !{!2150, !1925, !2151, !748}
!2151 = !DILocation(line: 1180, column: 3, scope: !1913)
!2152 = !DILocation(line: 1181, column: 21, scope: !1913)
!2153 = !DILocation(line: 1181, column: 3, scope: !1913)
!2154 = !DILocation(line: 1182, column: 25, scope: !1913)
!2155 = !DILocation(line: 1182, column: 3, scope: !1913)
!2156 = !DILocation(line: 1184, column: 28, scope: !1879)
!2157 = !DILocation(line: 1184, column: 2, scope: !1879)
!2158 = !DILocation(line: 1185, column: 2, scope: !1879)
!2159 = !DILocation(line: 1186, column: 2, scope: !1879)
!2160 = !DILocation(line: 1187, column: 1, scope: !1879)
!2161 = distinct !DISubprogram(name: "mongo_set_oauth_key", scope: !2, file: !2, line: 335, type: !299, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2162 = !DILocalVariable(name: "key", arg: 1, scope: !2161, file: !2, line: 335, type: !301)
!2163 = !DILocation(line: 335, column: 52, scope: !2161)
!2164 = !DILocalVariable(name: "collection", scope: !2161, file: !2, line: 337, type: !575)
!2165 = !DILocation(line: 337, column: 25, scope: !2161)
!2166 = !DILocation(line: 337, column: 38, scope: !2161)
!2167 = !DILocation(line: 339, column: 7, scope: !2168)
!2168 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 339, column: 6)
!2169 = !DILocation(line: 339, column: 6, scope: !2161)
!2170 = !DILocation(line: 340, column: 5, scope: !2168)
!2171 = !DILocalVariable(name: "query", scope: !2161, file: !2, line: 342, type: !586)
!2172 = !DILocation(line: 342, column: 10, scope: !2161)
!2173 = !DILocation(line: 343, column: 3, scope: !2161)
!2174 = !DILocation(line: 344, column: 3, scope: !2161)
!2175 = !DILocalVariable(name: "doc", scope: !2161, file: !2, line: 346, type: !586)
!2176 = !DILocation(line: 346, column: 10, scope: !2161)
!2177 = !DILocation(line: 347, column: 3, scope: !2161)
!2178 = !DILocation(line: 348, column: 3, scope: !2161)
!2179 = !DILocation(line: 349, column: 3, scope: !2161)
!2180 = !DILocation(line: 350, column: 3, scope: !2161)
!2181 = !DILocation(line: 351, column: 3, scope: !2161)
!2182 = !DILocation(line: 352, column: 3, scope: !2161)
!2183 = !DILocation(line: 353, column: 3, scope: !2161)
!2184 = !DILocalVariable(name: "ret", scope: !2161, file: !2, line: 355, type: !80)
!2185 = !DILocation(line: 355, column: 7, scope: !2161)
!2186 = !DILocation(line: 357, column: 33, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 357, column: 7)
!2188 = !DILocation(line: 357, column: 8, scope: !2187)
!2189 = !DILocation(line: 357, column: 7, scope: !2161)
!2190 = !DILocation(line: 358, column: 5, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 357, column: 94)
!2192 = !DILocation(line: 359, column: 3, scope: !2191)
!2193 = !DILocation(line: 360, column: 9, scope: !2194)
!2194 = distinct !DILexicalBlock(scope: !2187, file: !2, line: 359, column: 10)
!2195 = !DILocation(line: 362, column: 29, scope: !2161)
!2196 = !DILocation(line: 362, column: 3, scope: !2161)
!2197 = !DILocation(line: 363, column: 3, scope: !2161)
!2198 = !DILocation(line: 364, column: 3, scope: !2161)
!2199 = !DILocation(line: 365, column: 10, scope: !2161)
!2200 = !DILocation(line: 365, column: 3, scope: !2161)
!2201 = !DILocation(line: 366, column: 1, scope: !2161)
!2202 = distinct !DISubprogram(name: "mongo_get_oauth_key", scope: !2, file: !2, line: 244, type: !323, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2203 = !DILocalVariable(name: "kid", arg: 1, scope: !2202, file: !2, line: 244, type: !325)
!2204 = !DILocation(line: 244, column: 47, scope: !2202)
!2205 = !DILocalVariable(name: "key", arg: 2, scope: !2202, file: !2, line: 244, type: !301)
!2206 = !DILocation(line: 244, column: 72, scope: !2202)
!2207 = !DILocalVariable(name: "collection", scope: !2202, file: !2, line: 246, type: !575)
!2208 = !DILocation(line: 246, column: 24, scope: !2202)
!2209 = !DILocation(line: 246, column: 37, scope: !2202)
!2210 = !DILocation(line: 248, column: 7, scope: !2211)
!2211 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 248, column: 6)
!2212 = !DILocation(line: 248, column: 6, scope: !2202)
!2213 = !DILocation(line: 249, column: 3, scope: !2211)
!2214 = !DILocalVariable(name: "query", scope: !2202, file: !2, line: 251, type: !586)
!2215 = !DILocation(line: 251, column: 9, scope: !2202)
!2216 = !DILocation(line: 252, column: 2, scope: !2202)
!2217 = !DILocation(line: 253, column: 2, scope: !2202)
!2218 = !DILocalVariable(name: "fields", scope: !2202, file: !2, line: 255, type: !586)
!2219 = !DILocation(line: 255, column: 9, scope: !2202)
!2220 = !DILocation(line: 256, column: 2, scope: !2202)
!2221 = !DILocation(line: 257, column: 2, scope: !2202)
!2222 = !DILocation(line: 258, column: 2, scope: !2202)
!2223 = !DILocation(line: 259, column: 2, scope: !2202)
!2224 = !DILocation(line: 260, column: 2, scope: !2202)
!2225 = !DILocation(line: 261, column: 2, scope: !2202)
!2226 = !DILocalVariable(name: "cursor", scope: !2202, file: !2, line: 263, type: !603)
!2227 = !DILocation(line: 263, column: 20, scope: !2202)
!2228 = !DILocation(line: 264, column: 34, scope: !2202)
!2229 = !DILocation(line: 264, column: 11, scope: !2202)
!2230 = !DILocation(line: 264, column: 9, scope: !2202)
!2231 = !DILocalVariable(name: "ret", scope: !2202, file: !2, line: 267, type: !80)
!2232 = !DILocation(line: 267, column: 6, scope: !2202)
!2233 = !DILocation(line: 269, column: 8, scope: !2202)
!2234 = !DILocation(line: 269, column: 2, scope: !2202)
!2235 = !DILocation(line: 270, column: 2, scope: !2202)
!2236 = !DILocation(line: 270, column: 2, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 270, column: 2)
!2238 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 270, column: 2)
!2239 = !DILocation(line: 270, column: 2, scope: !2238)
!2240 = !DILocalVariable(name: "szdst", scope: !2241, file: !2, line: 270, type: !163)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !2, line: 270, column: 2)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !2, line: 270, column: 2)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 270, column: 2)
!2244 = !DILocation(line: 270, column: 2, scope: !2241)
!2245 = !DILocation(line: 270, column: 2, scope: !2243)
!2246 = !DILocation(line: 272, column: 7, scope: !2247)
!2247 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 272, column: 6)
!2248 = !DILocation(line: 272, column: 6, scope: !2202)
!2249 = !DILocation(line: 273, column: 3, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 272, column: 15)
!2251 = !DILocation(line: 275, column: 2, scope: !2250)
!2252 = !DILocalVariable(name: "item", scope: !2253, file: !2, line: 276, type: !621)
!2253 = distinct !DILexicalBlock(scope: !2247, file: !2, line: 275, column: 9)
!2254 = !DILocation(line: 276, column: 18, scope: !2253)
!2255 = !DILocalVariable(name: "length", scope: !2253, file: !2, line: 277, type: !140)
!2256 = !DILocation(line: 277, column: 12, scope: !2253)
!2257 = !DILocalVariable(name: "iter", scope: !2253, file: !2, line: 278, type: !627)
!2258 = !DILocation(line: 278, column: 15, scope: !2253)
!2259 = !DILocation(line: 279, column: 26, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2253, file: !2, line: 279, column: 7)
!2261 = !DILocation(line: 279, column: 7, scope: !2260)
!2262 = !DILocation(line: 279, column: 7, scope: !2253)
!2263 = !DILocation(line: 280, column: 30, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 280, column: 8)
!2265 = distinct !DILexicalBlock(scope: !2260, file: !2, line: 279, column: 42)
!2266 = !DILocation(line: 280, column: 8, scope: !2264)
!2267 = !DILocation(line: 280, column: 36, scope: !2264)
!2268 = !DILocation(line: 280, column: 39, scope: !2264)
!2269 = !DILocation(line: 280, column: 74, scope: !2264)
!2270 = !DILocation(line: 280, column: 77, scope: !2264)
!2271 = !DILocation(line: 280, column: 8, scope: !2265)
!2272 = !DILocation(line: 281, column: 5, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2264, file: !2, line: 280, column: 106)
!2274 = !DILocation(line: 281, column: 5, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2276, file: !2, line: 281, column: 5)
!2276 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 281, column: 5)
!2277 = !DILocation(line: 281, column: 5, scope: !2276)
!2278 = !DILocalVariable(name: "szdst", scope: !2279, file: !2, line: 281, type: !163)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !2, line: 281, column: 5)
!2280 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 281, column: 5)
!2281 = distinct !DILexicalBlock(scope: !2275, file: !2, line: 281, column: 5)
!2282 = !DILocation(line: 281, column: 5, scope: !2279)
!2283 = !DILocation(line: 281, column: 5, scope: !2281)
!2284 = !DILocation(line: 282, column: 4, scope: !2273)
!2285 = !DILocation(line: 283, column: 30, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 283, column: 8)
!2287 = !DILocation(line: 283, column: 8, scope: !2286)
!2288 = !DILocation(line: 283, column: 36, scope: !2286)
!2289 = !DILocation(line: 283, column: 39, scope: !2286)
!2290 = !DILocation(line: 283, column: 70, scope: !2286)
!2291 = !DILocation(line: 283, column: 73, scope: !2286)
!2292 = !DILocation(line: 283, column: 8, scope: !2265)
!2293 = !DILocation(line: 284, column: 5, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2286, file: !2, line: 283, column: 102)
!2295 = !DILocation(line: 284, column: 5, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !2, line: 284, column: 5)
!2297 = distinct !DILexicalBlock(scope: !2294, file: !2, line: 284, column: 5)
!2298 = !DILocation(line: 284, column: 5, scope: !2297)
!2299 = !DILocalVariable(name: "szdst", scope: !2300, file: !2, line: 284, type: !163)
!2300 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 284, column: 5)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 284, column: 5)
!2302 = distinct !DILexicalBlock(scope: !2296, file: !2, line: 284, column: 5)
!2303 = !DILocation(line: 284, column: 5, scope: !2300)
!2304 = !DILocation(line: 284, column: 5, scope: !2302)
!2305 = !DILocation(line: 285, column: 4, scope: !2294)
!2306 = !DILocation(line: 286, column: 30, scope: !2307)
!2307 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 286, column: 8)
!2308 = !DILocation(line: 286, column: 8, scope: !2307)
!2309 = !DILocation(line: 286, column: 36, scope: !2307)
!2310 = !DILocation(line: 286, column: 39, scope: !2307)
!2311 = !DILocation(line: 286, column: 72, scope: !2307)
!2312 = !DILocation(line: 286, column: 75, scope: !2307)
!2313 = !DILocation(line: 286, column: 8, scope: !2265)
!2314 = !DILocation(line: 287, column: 5, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2307, file: !2, line: 286, column: 104)
!2316 = !DILocation(line: 287, column: 5, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2318, file: !2, line: 287, column: 5)
!2318 = distinct !DILexicalBlock(scope: !2315, file: !2, line: 287, column: 5)
!2319 = !DILocation(line: 287, column: 5, scope: !2318)
!2320 = !DILocalVariable(name: "szdst", scope: !2321, file: !2, line: 287, type: !163)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !2, line: 287, column: 5)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !2, line: 287, column: 5)
!2323 = distinct !DILexicalBlock(scope: !2317, file: !2, line: 287, column: 5)
!2324 = !DILocation(line: 287, column: 5, scope: !2321)
!2325 = !DILocation(line: 287, column: 5, scope: !2323)
!2326 = !DILocation(line: 288, column: 4, scope: !2315)
!2327 = !DILocation(line: 289, column: 30, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 289, column: 8)
!2329 = !DILocation(line: 289, column: 8, scope: !2328)
!2330 = !DILocation(line: 289, column: 36, scope: !2328)
!2331 = !DILocation(line: 289, column: 39, scope: !2328)
!2332 = !DILocation(line: 289, column: 74, scope: !2328)
!2333 = !DILocation(line: 289, column: 77, scope: !2328)
!2334 = !DILocation(line: 289, column: 8, scope: !2265)
!2335 = !DILocation(line: 290, column: 32, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2328, file: !2, line: 289, column: 107)
!2337 = !DILocation(line: 290, column: 5, scope: !2336)
!2338 = !DILocation(line: 290, column: 10, scope: !2336)
!2339 = !DILocation(line: 290, column: 20, scope: !2336)
!2340 = !DILocation(line: 291, column: 4, scope: !2336)
!2341 = !DILocation(line: 292, column: 30, scope: !2342)
!2342 = distinct !DILexicalBlock(scope: !2265, file: !2, line: 292, column: 8)
!2343 = !DILocation(line: 292, column: 8, scope: !2342)
!2344 = !DILocation(line: 292, column: 36, scope: !2342)
!2345 = !DILocation(line: 292, column: 39, scope: !2342)
!2346 = !DILocation(line: 292, column: 73, scope: !2342)
!2347 = !DILocation(line: 292, column: 76, scope: !2342)
!2348 = !DILocation(line: 292, column: 8, scope: !2265)
!2349 = !DILocation(line: 293, column: 31, scope: !2350)
!2350 = distinct !DILexicalBlock(scope: !2342, file: !2, line: 292, column: 106)
!2351 = !DILocation(line: 293, column: 5, scope: !2350)
!2352 = !DILocation(line: 293, column: 10, scope: !2350)
!2353 = !DILocation(line: 293, column: 19, scope: !2350)
!2354 = !DILocation(line: 294, column: 4, scope: !2350)
!2355 = !DILocation(line: 295, column: 8, scope: !2265)
!2356 = !DILocation(line: 296, column: 3, scope: !2265)
!2357 = !DILocation(line: 297, column: 25, scope: !2253)
!2358 = !DILocation(line: 297, column: 3, scope: !2253)
!2359 = !DILocation(line: 299, column: 28, scope: !2202)
!2360 = !DILocation(line: 299, column: 2, scope: !2202)
!2361 = !DILocation(line: 300, column: 2, scope: !2202)
!2362 = !DILocation(line: 301, column: 2, scope: !2202)
!2363 = !DILocation(line: 302, column: 9, scope: !2202)
!2364 = !DILocation(line: 302, column: 2, scope: !2202)
!2365 = !DILocation(line: 303, column: 1, scope: !2202)
!2366 = distinct !DISubprogram(name: "mongo_del_oauth_key", scope: !2, file: !2, line: 391, type: !329, scopeLine: 391, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2367 = !DILocalVariable(name: "kid", arg: 1, scope: !2366, file: !2, line: 391, type: !325)
!2368 = !DILocation(line: 391, column: 47, scope: !2366)
!2369 = !DILocalVariable(name: "collection", scope: !2366, file: !2, line: 393, type: !575)
!2370 = !DILocation(line: 393, column: 25, scope: !2366)
!2371 = !DILocation(line: 393, column: 38, scope: !2366)
!2372 = !DILocation(line: 395, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 395, column: 6)
!2374 = !DILocation(line: 395, column: 6, scope: !2366)
!2375 = !DILocation(line: 396, column: 5, scope: !2373)
!2376 = !DILocalVariable(name: "query", scope: !2366, file: !2, line: 398, type: !586)
!2377 = !DILocation(line: 398, column: 10, scope: !2366)
!2378 = !DILocation(line: 399, column: 3, scope: !2366)
!2379 = !DILocation(line: 400, column: 3, scope: !2366)
!2380 = !DILocalVariable(name: "ret", scope: !2366, file: !2, line: 402, type: !80)
!2381 = !DILocation(line: 402, column: 7, scope: !2366)
!2382 = !DILocation(line: 404, column: 33, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 404, column: 7)
!2384 = !DILocation(line: 404, column: 8, scope: !2383)
!2385 = !DILocation(line: 404, column: 7, scope: !2366)
!2386 = !DILocation(line: 405, column: 5, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 404, column: 95)
!2388 = !DILocation(line: 406, column: 3, scope: !2387)
!2389 = !DILocation(line: 407, column: 9, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2383, file: !2, line: 406, column: 10)
!2391 = !DILocation(line: 409, column: 29, scope: !2366)
!2392 = !DILocation(line: 409, column: 3, scope: !2366)
!2393 = !DILocation(line: 410, column: 3, scope: !2366)
!2394 = !DILocation(line: 411, column: 10, scope: !2366)
!2395 = !DILocation(line: 411, column: 3, scope: !2366)
!2396 = !DILocation(line: 412, column: 1, scope: !2366)
!2397 = distinct !DISubprogram(name: "mongo_list_oauth_keys", scope: !2, file: !2, line: 487, type: !333, scopeLine: 487, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2398 = !DILocalVariable(name: "kids", arg: 1, scope: !2397, file: !2, line: 487, type: !155)
!2399 = !DILocation(line: 487, column: 50, scope: !2397)
!2400 = !DILocalVariable(name: "teas", arg: 2, scope: !2397, file: !2, line: 487, type: !155)
!2401 = !DILocation(line: 487, column: 71, scope: !2397)
!2402 = !DILocalVariable(name: "tss", arg: 3, scope: !2397, file: !2, line: 487, type: !155)
!2403 = !DILocation(line: 487, column: 92, scope: !2397)
!2404 = !DILocalVariable(name: "lts", arg: 4, scope: !2397, file: !2, line: 487, type: !155)
!2405 = !DILocation(line: 487, column: 112, scope: !2397)
!2406 = !DILocalVariable(name: "realms", arg: 5, scope: !2397, file: !2, line: 487, type: !155)
!2407 = !DILocation(line: 487, column: 132, scope: !2397)
!2408 = !DILocalVariable(name: "collection_name", scope: !2397, file: !2, line: 489, type: !102)
!2409 = !DILocation(line: 489, column: 16, scope: !2397)
!2410 = !DILocalVariable(name: "collection", scope: !2397, file: !2, line: 490, type: !575)
!2411 = !DILocation(line: 490, column: 25, scope: !2397)
!2412 = !DILocation(line: 490, column: 59, scope: !2397)
!2413 = !DILocation(line: 490, column: 38, scope: !2397)
!2414 = !DILocation(line: 492, column: 7, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 492, column: 6)
!2416 = !DILocation(line: 492, column: 6, scope: !2397)
!2417 = !DILocation(line: 493, column: 5, scope: !2415)
!2418 = !DILocalVariable(name: "query", scope: !2397, file: !2, line: 495, type: !586)
!2419 = !DILocation(line: 495, column: 10, scope: !2397)
!2420 = !DILocation(line: 496, column: 3, scope: !2397)
!2421 = !DILocalVariable(name: "child", scope: !2397, file: !2, line: 498, type: !586)
!2422 = !DILocation(line: 498, column: 10, scope: !2397)
!2423 = !DILocation(line: 499, column: 3, scope: !2397)
!2424 = !DILocation(line: 500, column: 3, scope: !2397)
!2425 = !DILocation(line: 501, column: 3, scope: !2397)
!2426 = !DILocation(line: 502, column: 3, scope: !2397)
!2427 = !DILocation(line: 503, column: 3, scope: !2397)
!2428 = !DILocalVariable(name: "fields", scope: !2397, file: !2, line: 505, type: !586)
!2429 = !DILocation(line: 505, column: 10, scope: !2397)
!2430 = !DILocation(line: 506, column: 3, scope: !2397)
!2431 = !DILocation(line: 507, column: 3, scope: !2397)
!2432 = !DILocation(line: 508, column: 3, scope: !2397)
!2433 = !DILocation(line: 509, column: 3, scope: !2397)
!2434 = !DILocation(line: 510, column: 3, scope: !2397)
!2435 = !DILocation(line: 511, column: 3, scope: !2397)
!2436 = !DILocation(line: 512, column: 3, scope: !2397)
!2437 = !DILocalVariable(name: "cursor", scope: !2397, file: !2, line: 514, type: !603)
!2438 = !DILocation(line: 514, column: 21, scope: !2397)
!2439 = !DILocation(line: 515, column: 35, scope: !2397)
!2440 = !DILocation(line: 515, column: 12, scope: !2397)
!2441 = !DILocation(line: 515, column: 10, scope: !2397)
!2442 = !DILocalVariable(name: "ret", scope: !2397, file: !2, line: 517, type: !80)
!2443 = !DILocation(line: 517, column: 7, scope: !2397)
!2444 = !DILocation(line: 519, column: 8, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 519, column: 7)
!2446 = !DILocation(line: 519, column: 7, scope: !2397)
!2447 = !DILocation(line: 520, column: 83, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 519, column: 16)
!2449 = !DILocation(line: 520, column: 3, scope: !2448)
!2450 = !DILocation(line: 521, column: 3, scope: !2448)
!2451 = !DILocalVariable(name: "item", scope: !2452, file: !2, line: 522, type: !621)
!2452 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 521, column: 10)
!2453 = !DILocation(line: 522, column: 20, scope: !2452)
!2454 = !DILocalVariable(name: "key_", scope: !2452, file: !2, line: 523, type: !302)
!2455 = !DILocation(line: 523, column: 21, scope: !2452)
!2456 = !DILocalVariable(name: "key", scope: !2452, file: !2, line: 524, type: !301)
!2457 = !DILocation(line: 524, column: 22, scope: !2452)
!2458 = !DILocalVariable(name: "length", scope: !2452, file: !2, line: 525, type: !140)
!2459 = !DILocation(line: 525, column: 14, scope: !2452)
!2460 = !DILocalVariable(name: "iter", scope: !2452, file: !2, line: 526, type: !627)
!2461 = !DILocation(line: 526, column: 17, scope: !2452)
!2462 = !DILocation(line: 527, column: 5, scope: !2452)
!2463 = !DILocation(line: 527, column: 31, scope: !2452)
!2464 = !DILocation(line: 527, column: 12, scope: !2452)
!2465 = !DILocation(line: 529, column: 12, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2452, file: !2, line: 527, column: 47)
!2467 = !DILocation(line: 529, column: 6, scope: !2466)
!2468 = !DILocation(line: 530, column: 32, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 530, column: 10)
!2470 = !DILocation(line: 530, column: 10, scope: !2469)
!2471 = !DILocation(line: 530, column: 38, scope: !2469)
!2472 = !DILocation(line: 530, column: 41, scope: !2469)
!2473 = !DILocation(line: 530, column: 70, scope: !2469)
!2474 = !DILocation(line: 530, column: 73, scope: !2469)
!2475 = !DILocation(line: 530, column: 10, scope: !2466)
!2476 = !DILocation(line: 531, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2469, file: !2, line: 530, column: 102)
!2478 = !DILocation(line: 531, column: 7, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !2, line: 531, column: 7)
!2480 = distinct !DILexicalBlock(scope: !2477, file: !2, line: 531, column: 7)
!2481 = !DILocation(line: 531, column: 7, scope: !2480)
!2482 = !DILocalVariable(name: "szdst", scope: !2483, file: !2, line: 531, type: !163)
!2483 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 531, column: 7)
!2484 = distinct !DILexicalBlock(scope: !2485, file: !2, line: 531, column: 7)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !2, line: 531, column: 7)
!2486 = !DILocation(line: 531, column: 7, scope: !2483)
!2487 = !DILocation(line: 531, column: 7, scope: !2485)
!2488 = !DILocation(line: 532, column: 6, scope: !2477)
!2489 = !DILocation(line: 533, column: 32, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 533, column: 10)
!2491 = !DILocation(line: 533, column: 10, scope: !2490)
!2492 = !DILocation(line: 533, column: 38, scope: !2490)
!2493 = !DILocation(line: 533, column: 41, scope: !2490)
!2494 = !DILocation(line: 533, column: 76, scope: !2490)
!2495 = !DILocation(line: 533, column: 79, scope: !2490)
!2496 = !DILocation(line: 533, column: 10, scope: !2466)
!2497 = !DILocation(line: 534, column: 10, scope: !2498)
!2498 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 533, column: 108)
!2499 = !DILocation(line: 534, column: 10, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 534, column: 10)
!2501 = distinct !DILexicalBlock(scope: !2498, file: !2, line: 534, column: 10)
!2502 = !DILocation(line: 534, column: 10, scope: !2501)
!2503 = !DILocalVariable(name: "szdst", scope: !2504, file: !2, line: 534, type: !163)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 534, column: 10)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !2, line: 534, column: 10)
!2506 = distinct !DILexicalBlock(scope: !2500, file: !2, line: 534, column: 10)
!2507 = !DILocation(line: 534, column: 10, scope: !2504)
!2508 = !DILocation(line: 534, column: 10, scope: !2506)
!2509 = !DILocation(line: 535, column: 6, scope: !2498)
!2510 = !DILocation(line: 536, column: 32, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 536, column: 10)
!2512 = !DILocation(line: 536, column: 10, scope: !2511)
!2513 = !DILocation(line: 536, column: 38, scope: !2511)
!2514 = !DILocation(line: 536, column: 41, scope: !2511)
!2515 = !DILocation(line: 536, column: 72, scope: !2511)
!2516 = !DILocation(line: 536, column: 75, scope: !2511)
!2517 = !DILocation(line: 536, column: 10, scope: !2466)
!2518 = !DILocation(line: 537, column: 10, scope: !2519)
!2519 = distinct !DILexicalBlock(scope: !2511, file: !2, line: 536, column: 104)
!2520 = !DILocation(line: 537, column: 10, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2522, file: !2, line: 537, column: 10)
!2522 = distinct !DILexicalBlock(scope: !2519, file: !2, line: 537, column: 10)
!2523 = !DILocation(line: 537, column: 10, scope: !2522)
!2524 = !DILocalVariable(name: "szdst", scope: !2525, file: !2, line: 537, type: !163)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 537, column: 10)
!2526 = distinct !DILexicalBlock(scope: !2527, file: !2, line: 537, column: 10)
!2527 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 537, column: 10)
!2528 = !DILocation(line: 537, column: 10, scope: !2525)
!2529 = !DILocation(line: 537, column: 10, scope: !2527)
!2530 = !DILocation(line: 538, column: 6, scope: !2519)
!2531 = !DILocation(line: 539, column: 32, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 539, column: 10)
!2533 = !DILocation(line: 539, column: 10, scope: !2532)
!2534 = !DILocation(line: 539, column: 38, scope: !2532)
!2535 = !DILocation(line: 539, column: 41, scope: !2532)
!2536 = !DILocation(line: 539, column: 74, scope: !2532)
!2537 = !DILocation(line: 539, column: 77, scope: !2532)
!2538 = !DILocation(line: 539, column: 10, scope: !2466)
!2539 = !DILocation(line: 540, column: 7, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2532, file: !2, line: 539, column: 106)
!2541 = !DILocation(line: 540, column: 7, scope: !2542)
!2542 = distinct !DILexicalBlock(scope: !2543, file: !2, line: 540, column: 7)
!2543 = distinct !DILexicalBlock(scope: !2540, file: !2, line: 540, column: 7)
!2544 = !DILocation(line: 540, column: 7, scope: !2543)
!2545 = !DILocalVariable(name: "szdst", scope: !2546, file: !2, line: 540, type: !163)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !2, line: 540, column: 7)
!2547 = distinct !DILexicalBlock(scope: !2548, file: !2, line: 540, column: 7)
!2548 = distinct !DILexicalBlock(scope: !2542, file: !2, line: 540, column: 7)
!2549 = !DILocation(line: 540, column: 7, scope: !2546)
!2550 = !DILocation(line: 540, column: 7, scope: !2548)
!2551 = !DILocation(line: 541, column: 6, scope: !2540)
!2552 = !DILocation(line: 542, column: 32, scope: !2553)
!2553 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 542, column: 10)
!2554 = !DILocation(line: 542, column: 10, scope: !2553)
!2555 = !DILocation(line: 542, column: 38, scope: !2553)
!2556 = !DILocation(line: 542, column: 41, scope: !2553)
!2557 = !DILocation(line: 542, column: 76, scope: !2553)
!2558 = !DILocation(line: 542, column: 79, scope: !2553)
!2559 = !DILocation(line: 542, column: 10, scope: !2466)
!2560 = !DILocation(line: 543, column: 34, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !2, line: 542, column: 109)
!2562 = !DILocation(line: 543, column: 7, scope: !2561)
!2563 = !DILocation(line: 543, column: 12, scope: !2561)
!2564 = !DILocation(line: 543, column: 22, scope: !2561)
!2565 = !DILocation(line: 544, column: 6, scope: !2561)
!2566 = !DILocation(line: 545, column: 32, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 545, column: 10)
!2568 = !DILocation(line: 545, column: 10, scope: !2567)
!2569 = !DILocation(line: 545, column: 38, scope: !2567)
!2570 = !DILocation(line: 545, column: 41, scope: !2567)
!2571 = !DILocation(line: 545, column: 75, scope: !2567)
!2572 = !DILocation(line: 545, column: 78, scope: !2567)
!2573 = !DILocation(line: 545, column: 10, scope: !2466)
!2574 = !DILocation(line: 546, column: 33, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2567, file: !2, line: 545, column: 108)
!2576 = !DILocation(line: 546, column: 7, scope: !2575)
!2577 = !DILocation(line: 546, column: 12, scope: !2575)
!2578 = !DILocation(line: 546, column: 21, scope: !2575)
!2579 = !DILocation(line: 547, column: 6, scope: !2575)
!2580 = !DILocation(line: 548, column: 9, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2466, file: !2, line: 548, column: 9)
!2582 = !DILocation(line: 548, column: 9, scope: !2466)
!2583 = !DILocation(line: 549, column: 27, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2581, file: !2, line: 548, column: 15)
!2585 = !DILocation(line: 549, column: 32, scope: !2584)
!2586 = !DILocation(line: 549, column: 37, scope: !2584)
!2587 = !DILocation(line: 549, column: 7, scope: !2584)
!2588 = !DILocation(line: 550, column: 27, scope: !2584)
!2589 = !DILocation(line: 550, column: 32, scope: !2584)
!2590 = !DILocation(line: 550, column: 37, scope: !2584)
!2591 = !DILocation(line: 550, column: 7, scope: !2584)
!2592 = !DILocation(line: 551, column: 27, scope: !2584)
!2593 = !DILocation(line: 551, column: 34, scope: !2584)
!2594 = !DILocation(line: 551, column: 39, scope: !2584)
!2595 = !DILocation(line: 551, column: 7, scope: !2584)
!2596 = !DILocalVariable(name: "ts", scope: !2597, file: !2, line: 553, type: !2598)
!2597 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 552, column: 4)
!2598 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !2599)
!2599 = !{!2600}
!2600 = !DISubrange(count: 256)
!2601 = !DILocation(line: 553, column: 10, scope: !2597)
!2602 = !DILocation(line: 554, column: 14, scope: !2597)
!2603 = !DILocation(line: 554, column: 57, scope: !2597)
!2604 = !DILocation(line: 554, column: 62, scope: !2597)
!2605 = !DILocation(line: 554, column: 5, scope: !2597)
!2606 = !DILocation(line: 555, column: 25, scope: !2597)
!2607 = !DILocation(line: 555, column: 29, scope: !2597)
!2608 = !DILocation(line: 555, column: 5, scope: !2597)
!2609 = !DILocalVariable(name: "lt", scope: !2610, file: !2, line: 558, type: !2598)
!2610 = distinct !DILexicalBlock(scope: !2584, file: !2, line: 557, column: 4)
!2611 = !DILocation(line: 558, column: 10, scope: !2610)
!2612 = !DILocation(line: 559, column: 14, scope: !2610)
!2613 = !DILocation(line: 559, column: 51, scope: !2610)
!2614 = !DILocation(line: 559, column: 56, scope: !2610)
!2615 = !DILocation(line: 559, column: 36, scope: !2610)
!2616 = !DILocation(line: 559, column: 5, scope: !2610)
!2617 = !DILocation(line: 560, column: 25, scope: !2610)
!2618 = !DILocation(line: 560, column: 29, scope: !2610)
!2619 = !DILocation(line: 560, column: 5, scope: !2610)
!2620 = !DILocation(line: 562, column: 6, scope: !2584)
!2621 = !DILocation(line: 564, column: 11, scope: !2622)
!2622 = distinct !DILexicalBlock(scope: !2581, file: !2, line: 562, column: 13)
!2623 = !DILocation(line: 564, column: 16, scope: !2622)
!2624 = !DILocation(line: 564, column: 21, scope: !2622)
!2625 = !DILocation(line: 564, column: 26, scope: !2622)
!2626 = !DILocation(line: 564, column: 55, scope: !2622)
!2627 = !DILocation(line: 564, column: 60, scope: !2622)
!2628 = !DILocation(line: 564, column: 86, scope: !2622)
!2629 = !DILocation(line: 564, column: 91, scope: !2622)
!2630 = !DILocation(line: 564, column: 71, scope: !2622)
!2631 = !DILocation(line: 565, column: 11, scope: !2622)
!2632 = !DILocation(line: 565, column: 16, scope: !2622)
!2633 = !DILocation(line: 565, column: 27, scope: !2622)
!2634 = !DILocation(line: 565, column: 32, scope: !2622)
!2635 = !DILocation(line: 563, column: 7, scope: !2622)
!2636 = distinct !{!2636, !2462, !2637, !748}
!2637 = !DILocation(line: 567, column: 5, scope: !2452)
!2638 = !DILocation(line: 568, column: 27, scope: !2452)
!2639 = !DILocation(line: 568, column: 5, scope: !2452)
!2640 = !DILocation(line: 569, column: 9, scope: !2452)
!2641 = !DILocation(line: 571, column: 29, scope: !2397)
!2642 = !DILocation(line: 571, column: 3, scope: !2397)
!2643 = !DILocation(line: 572, column: 3, scope: !2397)
!2644 = !DILocation(line: 573, column: 3, scope: !2397)
!2645 = !DILocation(line: 574, column: 10, scope: !2397)
!2646 = !DILocation(line: 574, column: 3, scope: !2397)
!2647 = !DILocation(line: 575, column: 1, scope: !2397)
!2648 = distinct !DISubprogram(name: "mongo_get_admin_user", scope: !2, file: !2, line: 1191, type: !337, scopeLine: 1192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2649 = !DILocalVariable(name: "usname", arg: 1, scope: !2648, file: !2, line: 1191, type: !325)
!2650 = !DILocation(line: 1191, column: 48, scope: !2648)
!2651 = !DILocalVariable(name: "realm", arg: 2, scope: !2648, file: !2, line: 1191, type: !165)
!2652 = !DILocation(line: 1191, column: 65, scope: !2648)
!2653 = !DILocalVariable(name: "pwd", arg: 3, scope: !2648, file: !2, line: 1191, type: !165)
!2654 = !DILocation(line: 1191, column: 83, scope: !2648)
!2655 = !DILocalVariable(name: "collection", scope: !2648, file: !2, line: 1193, type: !575)
!2656 = !DILocation(line: 1193, column: 24, scope: !2648)
!2657 = !DILocation(line: 1193, column: 37, scope: !2648)
!2658 = !DILocation(line: 1195, column: 6, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2648, file: !2, line: 1195, column: 5)
!2660 = !DILocation(line: 1195, column: 5, scope: !2648)
!2661 = !DILocation(line: 1196, column: 5, scope: !2659)
!2662 = !DILocation(line: 1198, column: 2, scope: !2648)
!2663 = !DILocation(line: 1198, column: 10, scope: !2648)
!2664 = !DILocation(line: 1199, column: 2, scope: !2648)
!2665 = !DILocation(line: 1199, column: 8, scope: !2648)
!2666 = !DILocalVariable(name: "query", scope: !2648, file: !2, line: 1201, type: !586)
!2667 = !DILocation(line: 1201, column: 9, scope: !2648)
!2668 = !DILocation(line: 1202, column: 2, scope: !2648)
!2669 = !DILocation(line: 1203, column: 2, scope: !2648)
!2670 = !DILocalVariable(name: "fields", scope: !2648, file: !2, line: 1205, type: !586)
!2671 = !DILocation(line: 1205, column: 9, scope: !2648)
!2672 = !DILocation(line: 1206, column: 2, scope: !2648)
!2673 = !DILocation(line: 1207, column: 2, scope: !2648)
!2674 = !DILocation(line: 1208, column: 2, scope: !2648)
!2675 = !DILocalVariable(name: "cursor", scope: !2648, file: !2, line: 1210, type: !603)
!2676 = !DILocation(line: 1210, column: 20, scope: !2648)
!2677 = !DILocation(line: 1211, column: 34, scope: !2648)
!2678 = !DILocation(line: 1211, column: 11, scope: !2648)
!2679 = !DILocation(line: 1211, column: 9, scope: !2648)
!2680 = !DILocalVariable(name: "ret", scope: !2648, file: !2, line: 1213, type: !80)
!2681 = !DILocation(line: 1213, column: 6, scope: !2648)
!2682 = !DILocation(line: 1215, column: 7, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2648, file: !2, line: 1215, column: 6)
!2684 = !DILocation(line: 1215, column: 6, scope: !2648)
!2685 = !DILocation(line: 1216, column: 3, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2683, file: !2, line: 1215, column: 15)
!2687 = !DILocation(line: 1217, column: 2, scope: !2686)
!2688 = !DILocalVariable(name: "item", scope: !2689, file: !2, line: 1218, type: !621)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !2, line: 1217, column: 9)
!2690 = !DILocation(line: 1218, column: 18, scope: !2689)
!2691 = !DILocalVariable(name: "length", scope: !2689, file: !2, line: 1219, type: !140)
!2692 = !DILocation(line: 1219, column: 12, scope: !2689)
!2693 = !DILocalVariable(name: "iter", scope: !2689, file: !2, line: 1220, type: !627)
!2694 = !DILocation(line: 1220, column: 15, scope: !2689)
!2695 = !DILocation(line: 1221, column: 26, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2689, file: !2, line: 1221, column: 7)
!2697 = !DILocation(line: 1221, column: 7, scope: !2696)
!2698 = !DILocation(line: 1221, column: 7, scope: !2689)
!2699 = !DILocation(line: 1222, column: 30, scope: !2700)
!2700 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1222, column: 8)
!2701 = distinct !DILexicalBlock(scope: !2696, file: !2, line: 1221, column: 42)
!2702 = !DILocation(line: 1222, column: 8, scope: !2700)
!2703 = !DILocation(line: 1222, column: 36, scope: !2700)
!2704 = !DILocation(line: 1222, column: 39, scope: !2700)
!2705 = !DILocation(line: 1222, column: 70, scope: !2700)
!2706 = !DILocation(line: 1222, column: 73, scope: !2700)
!2707 = !DILocation(line: 1222, column: 8, scope: !2701)
!2708 = !DILocation(line: 1223, column: 20, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2700, file: !2, line: 1222, column: 102)
!2710 = !DILocation(line: 1223, column: 26, scope: !2709)
!2711 = !DILocation(line: 1223, column: 5, scope: !2709)
!2712 = !DILocation(line: 1224, column: 9, scope: !2709)
!2713 = !DILocation(line: 1225, column: 4, scope: !2709)
!2714 = !DILocation(line: 1226, column: 30, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2701, file: !2, line: 1226, column: 8)
!2716 = !DILocation(line: 1226, column: 8, scope: !2715)
!2717 = !DILocation(line: 1226, column: 36, scope: !2715)
!2718 = !DILocation(line: 1226, column: 39, scope: !2715)
!2719 = !DILocation(line: 1226, column: 73, scope: !2715)
!2720 = !DILocation(line: 1226, column: 76, scope: !2715)
!2721 = !DILocation(line: 1226, column: 8, scope: !2701)
!2722 = !DILocation(line: 1227, column: 20, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2715, file: !2, line: 1226, column: 105)
!2724 = !DILocation(line: 1227, column: 24, scope: !2723)
!2725 = !DILocation(line: 1227, column: 5, scope: !2723)
!2726 = !DILocation(line: 1228, column: 9, scope: !2723)
!2727 = !DILocation(line: 1229, column: 4, scope: !2723)
!2728 = !DILocation(line: 1230, column: 3, scope: !2701)
!2729 = !DILocation(line: 1231, column: 25, scope: !2689)
!2730 = !DILocation(line: 1231, column: 3, scope: !2689)
!2731 = !DILocation(line: 1233, column: 28, scope: !2648)
!2732 = !DILocation(line: 1233, column: 2, scope: !2648)
!2733 = !DILocation(line: 1234, column: 2, scope: !2648)
!2734 = !DILocation(line: 1235, column: 2, scope: !2648)
!2735 = !DILocation(line: 1236, column: 9, scope: !2648)
!2736 = !DILocation(line: 1236, column: 2, scope: !2648)
!2737 = !DILocation(line: 1237, column: 1, scope: !2648)
!2738 = distinct !DISubprogram(name: "mongo_set_admin_user", scope: !2, file: !2, line: 1239, type: !341, scopeLine: 1240, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2739 = !DILocalVariable(name: "usname", arg: 1, scope: !2738, file: !2, line: 1239, type: !325)
!2740 = !DILocation(line: 1239, column: 48, scope: !2738)
!2741 = !DILocalVariable(name: "realm", arg: 2, scope: !2738, file: !2, line: 1239, type: !325)
!2742 = !DILocation(line: 1239, column: 71, scope: !2738)
!2743 = !DILocalVariable(name: "pwd", arg: 3, scope: !2738, file: !2, line: 1239, type: !325)
!2744 = !DILocation(line: 1239, column: 95, scope: !2738)
!2745 = !DILocalVariable(name: "collection", scope: !2738, file: !2, line: 1241, type: !575)
!2746 = !DILocation(line: 1241, column: 24, scope: !2738)
!2747 = !DILocation(line: 1241, column: 37, scope: !2738)
!2748 = !DILocation(line: 1243, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 1243, column: 5)
!2750 = !DILocation(line: 1243, column: 5, scope: !2738)
!2751 = !DILocation(line: 1244, column: 5, scope: !2749)
!2752 = !DILocalVariable(name: "query", scope: !2738, file: !2, line: 1246, type: !586)
!2753 = !DILocation(line: 1246, column: 9, scope: !2738)
!2754 = !DILocation(line: 1247, column: 2, scope: !2738)
!2755 = !DILocation(line: 1248, column: 2, scope: !2738)
!2756 = !DILocalVariable(name: "doc", scope: !2738, file: !2, line: 1250, type: !586)
!2757 = !DILocation(line: 1250, column: 9, scope: !2738)
!2758 = !DILocation(line: 1251, column: 2, scope: !2738)
!2759 = !DILocation(line: 1252, column: 2, scope: !2738)
!2760 = !DILocation(line: 1253, column: 2, scope: !2738)
!2761 = !DILocation(line: 1254, column: 2, scope: !2738)
!2762 = !DILocalVariable(name: "ret", scope: !2738, file: !2, line: 1256, type: !80)
!2763 = !DILocation(line: 1256, column: 6, scope: !2738)
!2764 = !DILocation(line: 1258, column: 32, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 1258, column: 6)
!2766 = !DILocation(line: 1258, column: 7, scope: !2765)
!2767 = !DILocation(line: 1258, column: 6, scope: !2738)
!2768 = !DILocation(line: 1259, column: 3, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2765, file: !2, line: 1258, column: 93)
!2770 = !DILocation(line: 1260, column: 2, scope: !2769)
!2771 = !DILocation(line: 1261, column: 7, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2765, file: !2, line: 1260, column: 9)
!2773 = !DILocation(line: 1263, column: 28, scope: !2738)
!2774 = !DILocation(line: 1263, column: 2, scope: !2738)
!2775 = !DILocation(line: 1264, column: 2, scope: !2738)
!2776 = !DILocation(line: 1265, column: 2, scope: !2738)
!2777 = !DILocation(line: 1266, column: 9, scope: !2738)
!2778 = !DILocation(line: 1266, column: 2, scope: !2738)
!2779 = !DILocation(line: 1267, column: 1, scope: !2738)
!2780 = distinct !DISubprogram(name: "mongo_del_admin_user", scope: !2, file: !2, line: 1269, type: !329, scopeLine: 1270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2781 = !DILocalVariable(name: "usname", arg: 1, scope: !2780, file: !2, line: 1269, type: !325)
!2782 = !DILocation(line: 1269, column: 48, scope: !2780)
!2783 = !DILocalVariable(name: "collection", scope: !2780, file: !2, line: 1271, type: !575)
!2784 = !DILocation(line: 1271, column: 24, scope: !2780)
!2785 = !DILocation(line: 1271, column: 37, scope: !2780)
!2786 = !DILocation(line: 1273, column: 6, scope: !2787)
!2787 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1273, column: 5)
!2788 = !DILocation(line: 1273, column: 5, scope: !2780)
!2789 = !DILocation(line: 1274, column: 3, scope: !2787)
!2790 = !DILocalVariable(name: "query", scope: !2780, file: !2, line: 1276, type: !586)
!2791 = !DILocation(line: 1276, column: 9, scope: !2780)
!2792 = !DILocation(line: 1277, column: 2, scope: !2780)
!2793 = !DILocation(line: 1278, column: 2, scope: !2780)
!2794 = !DILocalVariable(name: "ret", scope: !2780, file: !2, line: 1280, type: !80)
!2795 = !DILocation(line: 1280, column: 6, scope: !2780)
!2796 = !DILocation(line: 1282, column: 32, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2780, file: !2, line: 1282, column: 6)
!2798 = !DILocation(line: 1282, column: 7, scope: !2797)
!2799 = !DILocation(line: 1282, column: 6, scope: !2780)
!2800 = !DILocation(line: 1283, column: 3, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 1282, column: 94)
!2802 = !DILocation(line: 1284, column: 2, scope: !2801)
!2803 = !DILocation(line: 1285, column: 7, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2797, file: !2, line: 1284, column: 9)
!2805 = !DILocation(line: 1287, column: 28, scope: !2780)
!2806 = !DILocation(line: 1287, column: 2, scope: !2780)
!2807 = !DILocation(line: 1288, column: 2, scope: !2780)
!2808 = !DILocation(line: 1289, column: 9, scope: !2780)
!2809 = !DILocation(line: 1289, column: 2, scope: !2780)
!2810 = !DILocation(line: 1290, column: 1, scope: !2780)
!2811 = distinct !DISubprogram(name: "mongo_list_admin_users", scope: !2, file: !2, line: 1292, type: !346, scopeLine: 1293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2812 = !DILocalVariable(name: "no_print", arg: 1, scope: !2811, file: !2, line: 1292, type: !80)
!2813 = !DILocation(line: 1292, column: 39, scope: !2811)
!2814 = !DILocalVariable(name: "collection_name", scope: !2811, file: !2, line: 1294, type: !102)
!2815 = !DILocation(line: 1294, column: 15, scope: !2811)
!2816 = !DILocalVariable(name: "collection", scope: !2811, file: !2, line: 1295, type: !575)
!2817 = !DILocation(line: 1295, column: 24, scope: !2811)
!2818 = !DILocation(line: 1295, column: 58, scope: !2811)
!2819 = !DILocation(line: 1295, column: 37, scope: !2811)
!2820 = !DILocation(line: 1297, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 1297, column: 5)
!2822 = !DILocation(line: 1297, column: 5, scope: !2811)
!2823 = !DILocation(line: 1298, column: 3, scope: !2821)
!2824 = !DILocalVariable(name: "query", scope: !2811, file: !2, line: 1300, type: !586)
!2825 = !DILocation(line: 1300, column: 9, scope: !2811)
!2826 = !DILocalVariable(name: "child", scope: !2811, file: !2, line: 1300, type: !586)
!2827 = !DILocation(line: 1300, column: 16, scope: !2811)
!2828 = !DILocation(line: 1301, column: 2, scope: !2811)
!2829 = !DILocation(line: 1302, column: 2, scope: !2811)
!2830 = !DILocation(line: 1303, column: 2, scope: !2811)
!2831 = !DILocation(line: 1304, column: 2, scope: !2811)
!2832 = !DILocation(line: 1305, column: 2, scope: !2811)
!2833 = !DILocation(line: 1306, column: 2, scope: !2811)
!2834 = !DILocalVariable(name: "fields", scope: !2811, file: !2, line: 1308, type: !586)
!2835 = !DILocation(line: 1308, column: 9, scope: !2811)
!2836 = !DILocation(line: 1309, column: 2, scope: !2811)
!2837 = !DILocation(line: 1310, column: 2, scope: !2811)
!2838 = !DILocation(line: 1311, column: 2, scope: !2811)
!2839 = !DILocalVariable(name: "cursor", scope: !2811, file: !2, line: 1313, type: !603)
!2840 = !DILocation(line: 1313, column: 20, scope: !2811)
!2841 = !DILocation(line: 1314, column: 34, scope: !2811)
!2842 = !DILocation(line: 1314, column: 11, scope: !2811)
!2843 = !DILocation(line: 1314, column: 9, scope: !2811)
!2844 = !DILocalVariable(name: "ret", scope: !2811, file: !2, line: 1316, type: !80)
!2845 = !DILocation(line: 1316, column: 6, scope: !2811)
!2846 = !DILocation(line: 1318, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2811, file: !2, line: 1318, column: 6)
!2848 = !DILocation(line: 1318, column: 6, scope: !2811)
!2849 = !DILocation(line: 1319, column: 83, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 1318, column: 15)
!2851 = !DILocation(line: 1319, column: 3, scope: !2850)
!2852 = !DILocation(line: 1320, column: 2, scope: !2850)
!2853 = !DILocalVariable(name: "item", scope: !2854, file: !2, line: 1321, type: !621)
!2854 = distinct !DILexicalBlock(scope: !2847, file: !2, line: 1320, column: 9)
!2855 = !DILocation(line: 1321, column: 18, scope: !2854)
!2856 = !DILocalVariable(name: "length", scope: !2854, file: !2, line: 1322, type: !140)
!2857 = !DILocation(line: 1322, column: 12, scope: !2854)
!2858 = !DILocalVariable(name: "iter", scope: !2854, file: !2, line: 1323, type: !627)
!2859 = !DILocation(line: 1323, column: 15, scope: !2854)
!2860 = !DILocalVariable(name: "iter_realm", scope: !2854, file: !2, line: 1324, type: !627)
!2861 = !DILocation(line: 1324, column: 15, scope: !2854)
!2862 = !DILocalVariable(name: "value", scope: !2854, file: !2, line: 1325, type: !102)
!2863 = !DILocation(line: 1325, column: 16, scope: !2854)
!2864 = !DILocation(line: 1326, column: 7, scope: !2854)
!2865 = !DILocation(line: 1327, column: 3, scope: !2854)
!2866 = !DILocation(line: 1327, column: 29, scope: !2854)
!2867 = !DILocation(line: 1327, column: 10, scope: !2854)
!2868 = !DILocation(line: 1328, column: 30, scope: !2869)
!2869 = distinct !DILexicalBlock(scope: !2870, file: !2, line: 1328, column: 8)
!2870 = distinct !DILexicalBlock(scope: !2854, file: !2, line: 1327, column: 45)
!2871 = !DILocation(line: 1328, column: 8, scope: !2869)
!2872 = !DILocation(line: 1328, column: 36, scope: !2869)
!2873 = !DILocation(line: 1328, column: 39, scope: !2869)
!2874 = !DILocation(line: 1328, column: 69, scope: !2869)
!2875 = !DILocation(line: 1328, column: 72, scope: !2869)
!2876 = !DILocation(line: 1328, column: 8, scope: !2870)
!2877 = !DILocation(line: 1329, column: 13, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2869, file: !2, line: 1328, column: 101)
!2879 = !DILocation(line: 1329, column: 11, scope: !2878)
!2880 = !DILocation(line: 1330, column: 9, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1330, column: 9)
!2882 = !DILocation(line: 1330, column: 9, scope: !2878)
!2883 = !DILocalVariable(name: "realm", scope: !2884, file: !2, line: 1331, type: !102)
!2884 = distinct !DILexicalBlock(scope: !2881, file: !2, line: 1330, column: 17)
!2885 = !DILocation(line: 1331, column: 18, scope: !2884)
!2886 = !DILocation(line: 1332, column: 38, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 1332, column: 10)
!2888 = !DILocation(line: 1332, column: 10, scope: !2887)
!2889 = !DILocation(line: 1332, column: 44, scope: !2887)
!2890 = !DILocation(line: 1332, column: 47, scope: !2887)
!2891 = !DILocation(line: 1332, column: 84, scope: !2887)
!2892 = !DILocation(line: 1332, column: 87, scope: !2887)
!2893 = !DILocation(line: 1332, column: 10, scope: !2884)
!2894 = !DILocation(line: 1333, column: 15, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2887, file: !2, line: 1332, column: 122)
!2896 = !DILocation(line: 1333, column: 13, scope: !2895)
!2897 = !DILocation(line: 1334, column: 6, scope: !2895)
!2898 = !DILocation(line: 1335, column: 6, scope: !2884)
!2899 = !DILocation(line: 1336, column: 10, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2884, file: !2, line: 1336, column: 9)
!2901 = !DILocation(line: 1336, column: 9, scope: !2884)
!2902 = !DILocation(line: 1337, column: 10, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2904, file: !2, line: 1337, column: 10)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !2, line: 1336, column: 20)
!2905 = !DILocation(line: 1337, column: 16, scope: !2903)
!2906 = !DILocation(line: 1337, column: 20, scope: !2903)
!2907 = !DILocation(line: 1337, column: 19, scope: !2903)
!2908 = !DILocation(line: 1337, column: 10, scope: !2904)
!2909 = !DILocation(line: 1338, column: 27, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 1337, column: 27)
!2911 = !DILocation(line: 1338, column: 34, scope: !2910)
!2912 = !DILocation(line: 1338, column: 8, scope: !2910)
!2913 = !DILocation(line: 1339, column: 7, scope: !2910)
!2914 = !DILocation(line: 1340, column: 23, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2903, file: !2, line: 1339, column: 14)
!2916 = !DILocation(line: 1340, column: 8, scope: !2915)
!2917 = !DILocation(line: 1342, column: 6, scope: !2904)
!2918 = !DILocation(line: 1343, column: 5, scope: !2884)
!2919 = !DILocation(line: 1344, column: 4, scope: !2878)
!2920 = distinct !{!2920, !2865, !2921, !748}
!2921 = !DILocation(line: 1345, column: 3, scope: !2854)
!2922 = !DILocation(line: 1346, column: 25, scope: !2854)
!2923 = !DILocation(line: 1346, column: 3, scope: !2854)
!2924 = !DILocation(line: 1348, column: 28, scope: !2811)
!2925 = !DILocation(line: 1348, column: 2, scope: !2811)
!2926 = !DILocation(line: 1349, column: 2, scope: !2811)
!2927 = !DILocation(line: 1350, column: 2, scope: !2811)
!2928 = !DILocation(line: 1351, column: 9, scope: !2811)
!2929 = !DILocation(line: 1351, column: 2, scope: !2811)
!2930 = !DILocation(line: 1352, column: 1, scope: !2811)
!2931 = distinct !DISubprogram(name: "mongo_disconnect", scope: !2, file: !2, line: 1354, type: !350, scopeLine: 1354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2932 = !DILocalVariable(name: "mongoconnection", scope: !2931, file: !2, line: 1355, type: !104)
!2933 = !DILocation(line: 1355, column: 10, scope: !2931)
!2934 = !DILocation(line: 1355, column: 58, scope: !2931)
!2935 = !DILocation(line: 1355, column: 38, scope: !2931)
!2936 = !DILocation(line: 1356, column: 6, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2931, file: !2, line: 1356, column: 6)
!2938 = !DILocation(line: 1356, column: 6, scope: !2931)
!2939 = !DILocation(line: 1357, column: 13, scope: !2940)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 1356, column: 23)
!2941 = !DILocation(line: 1357, column: 3, scope: !2940)
!2942 = !DILocation(line: 1358, column: 19, scope: !2940)
!2943 = !DILocation(line: 1359, column: 2, scope: !2940)
!2944 = !DILocation(line: 1360, column: 2, scope: !2931)
!2945 = !DILocation(line: 1361, column: 1, scope: !2931)
!2946 = distinct !DISubprogram(name: "mongo_get_collection", scope: !2, file: !2, line: 129, type: !2947, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2947 = !DISubroutineType(types: !2948)
!2948 = !{!575, !102}
!2949 = !DILocalVariable(name: "name", arg: 1, scope: !2946, file: !2, line: 129, type: !102)
!2950 = !DILocation(line: 129, column: 64, scope: !2946)
!2951 = !DILocalVariable(name: "mc", scope: !2946, file: !2, line: 130, type: !104)
!2952 = !DILocation(line: 130, column: 10, scope: !2946)
!2953 = !DILocation(line: 130, column: 15, scope: !2946)
!2954 = !DILocation(line: 132, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 132, column: 5)
!2956 = !DILocation(line: 132, column: 5, scope: !2946)
!2957 = !DILocation(line: 133, column: 3, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2955, file: !2, line: 132, column: 10)
!2959 = !DILocation(line: 134, column: 3, scope: !2958)
!2960 = !DILocalVariable(name: "collection", scope: !2946, file: !2, line: 137, type: !575)
!2961 = !DILocation(line: 137, column: 25, scope: !2946)
!2962 = !DILocation(line: 138, column: 45, scope: !2946)
!2963 = !DILocation(line: 138, column: 49, scope: !2946)
!2964 = !DILocation(line: 138, column: 57, scope: !2946)
!2965 = !DILocation(line: 138, column: 61, scope: !2946)
!2966 = !DILocation(line: 138, column: 71, scope: !2946)
!2967 = !DILocation(line: 138, column: 16, scope: !2946)
!2968 = !DILocation(line: 138, column: 14, scope: !2946)
!2969 = !DILocation(line: 140, column: 8, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 140, column: 7)
!2971 = !DILocation(line: 140, column: 7, scope: !2946)
!2972 = !DILocation(line: 141, column: 85, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2970, file: !2, line: 140, column: 20)
!2974 = !DILocation(line: 141, column: 3, scope: !2973)
!2975 = !DILocation(line: 142, column: 3, scope: !2973)
!2976 = !DILocation(line: 144, column: 10, scope: !2946)
!2977 = !DILocation(line: 144, column: 3, scope: !2946)
!2978 = !DILocation(line: 145, column: 1, scope: !2946)
!2979 = distinct !DISubprogram(name: "get_mongodb_connection", scope: !2, file: !2, line: 81, type: !2980, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{!104}
!2982 = !DILocalVariable(name: "pud", scope: !2979, file: !2, line: 83, type: !2983)
!2983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2984, size: 64)
!2984 = !DIDerivedType(tag: DW_TAG_typedef, name: "persistent_users_db_t", file: !157, line: 157, baseType: !2985)
!2985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_persistent_users_db_t", file: !157, line: 155, size: 8200, elements: !2986)
!2986 = !{!2987}
!2987 = !DIDerivedType(tag: DW_TAG_member, name: "userdb", scope: !2985, file: !157, line: 156, baseType: !2988, size: 8200)
!2988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8200, elements: !2989)
!2989 = !{!2990}
!2990 = !DISubrange(count: 1025)
!2991 = !DILocation(line: 83, column: 26, scope: !2979)
!2992 = !DILocation(line: 83, column: 32, scope: !2979)
!2993 = !DILocalVariable(name: "mydbconnection", scope: !2979, file: !2, line: 85, type: !104)
!2994 = !DILocation(line: 85, column: 10, scope: !2979)
!2995 = !DILocation(line: 85, column: 57, scope: !2979)
!2996 = !DILocation(line: 85, column: 37, scope: !2979)
!2997 = !DILocation(line: 87, column: 7, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2979, file: !2, line: 87, column: 6)
!2999 = !DILocation(line: 87, column: 6, scope: !2979)
!3000 = !DILocation(line: 88, column: 3, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2998, file: !2, line: 87, column: 23)
!3002 = !DILocation(line: 89, column: 3, scope: !3001)
!3003 = !DILocation(line: 91, column: 30, scope: !3001)
!3004 = !DILocation(line: 91, column: 18, scope: !3001)
!3005 = !DILocation(line: 92, column: 9, scope: !3001)
!3006 = !DILocation(line: 92, column: 3, scope: !3001)
!3007 = !DILocation(line: 94, column: 40, scope: !3001)
!3008 = !DILocation(line: 94, column: 45, scope: !3001)
!3009 = !DILocation(line: 94, column: 25, scope: !3001)
!3010 = !DILocation(line: 94, column: 3, scope: !3001)
!3011 = !DILocation(line: 94, column: 19, scope: !3001)
!3012 = !DILocation(line: 94, column: 23, scope: !3001)
!3013 = !DILocation(line: 96, column: 8, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3001, file: !2, line: 96, column: 7)
!3015 = !DILocation(line: 96, column: 24, scope: !3014)
!3016 = !DILocation(line: 96, column: 7, scope: !3001)
!3017 = !DILocation(line: 100, column: 6, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !2, line: 96, column: 29)
!3019 = !DILocation(line: 100, column: 11, scope: !3018)
!3020 = !DILocation(line: 97, column: 4, scope: !3018)
!3021 = !DILocation(line: 101, column: 14, scope: !3018)
!3022 = !DILocation(line: 101, column: 4, scope: !3018)
!3023 = !DILocation(line: 102, column: 19, scope: !3018)
!3024 = !DILocation(line: 103, column: 3, scope: !3018)
!3025 = !DILocation(line: 105, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !3014, file: !2, line: 103, column: 10)
!3027 = !DILocation(line: 105, column: 22, scope: !3026)
!3028 = !DILocation(line: 104, column: 29, scope: !3026)
!3029 = !DILocation(line: 104, column: 4, scope: !3026)
!3030 = !DILocation(line: 104, column: 20, scope: !3026)
!3031 = !DILocation(line: 104, column: 27, scope: !3026)
!3032 = !DILocation(line: 106, column: 9, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3026, file: !2, line: 106, column: 8)
!3034 = !DILocation(line: 106, column: 25, scope: !3033)
!3035 = !DILocation(line: 106, column: 8, scope: !3026)
!3036 = !DILocation(line: 107, column: 5, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3033, file: !2, line: 106, column: 33)
!3038 = !DILocation(line: 109, column: 15, scope: !3037)
!3039 = !DILocation(line: 109, column: 5, scope: !3037)
!3040 = !DILocation(line: 110, column: 20, scope: !3037)
!3041 = !DILocation(line: 111, column: 4, scope: !3037)
!3042 = !DILocation(line: 113, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3033, file: !2, line: 111, column: 11)
!3044 = !DILocation(line: 113, column: 23, scope: !3043)
!3045 = !DILocation(line: 112, column: 32, scope: !3043)
!3046 = !DILocation(line: 112, column: 5, scope: !3043)
!3047 = !DILocation(line: 112, column: 21, scope: !3043)
!3048 = !DILocation(line: 112, column: 30, scope: !3043)
!3049 = !DILocation(line: 114, column: 10, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 114, column: 9)
!3051 = !DILocation(line: 114, column: 26, scope: !3050)
!3052 = !DILocation(line: 114, column: 9, scope: !3043)
!3053 = !DILocation(line: 115, column: 33, scope: !3050)
!3054 = !DILocation(line: 115, column: 6, scope: !3050)
!3055 = !DILocation(line: 115, column: 22, scope: !3050)
!3056 = !DILocation(line: 115, column: 31, scope: !3050)
!3057 = !DILocation(line: 116, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3043, file: !2, line: 116, column: 8)
!3059 = !DILocation(line: 116, column: 8, scope: !3043)
!3060 = !DILocation(line: 117, column: 33, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3058, file: !2, line: 116, column: 24)
!3062 = !DILocation(line: 117, column: 49, scope: !3061)
!3063 = !DILocation(line: 117, column: 13, scope: !3061)
!3064 = !DILocation(line: 118, column: 5, scope: !3061)
!3065 = !DILocation(line: 122, column: 6, scope: !3043)
!3066 = !DILocation(line: 122, column: 11, scope: !3043)
!3067 = !DILocation(line: 119, column: 5, scope: !3043)
!3068 = !DILocation(line: 125, column: 2, scope: !3001)
!3069 = !DILocation(line: 126, column: 9, scope: !2979)
!3070 = !DILocation(line: 126, column: 2, scope: !2979)
!3071 = distinct !DISubprogram(name: "mongo_logger", scope: !2, file: !2, line: 51, type: !3072, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !3074, !102, !102, !120}
!3074 = !DIDerivedType(tag: DW_TAG_typedef, name: "mongoc_log_level_t", file: !69, line: 56, baseType: !68)
!3075 = !DILocalVariable(name: "log_level", arg: 1, scope: !3071, file: !2, line: 51, type: !3074)
!3076 = !DILocation(line: 51, column: 45, scope: !3071)
!3077 = !DILocalVariable(name: "log_domain", arg: 2, scope: !3071, file: !2, line: 51, type: !102)
!3078 = !DILocation(line: 51, column: 69, scope: !3071)
!3079 = !DILocalVariable(name: "message", arg: 3, scope: !3071, file: !2, line: 51, type: !102)
!3080 = !DILocation(line: 51, column: 94, scope: !3071)
!3081 = !DILocalVariable(name: "user_data", arg: 4, scope: !3071, file: !2, line: 51, type: !120)
!3082 = !DILocation(line: 51, column: 110, scope: !3071)
!3083 = !DILocation(line: 52, column: 2, scope: !3071)
!3084 = !DILocation(line: 52, column: 2, scope: !3085)
!3085 = distinct !DILexicalBlock(scope: !3071, file: !2, line: 52, column: 2)
!3086 = !DILocation(line: 53, column: 2, scope: !3071)
!3087 = !DILocation(line: 53, column: 2, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3071, file: !2, line: 53, column: 2)
!3089 = !DILocalVariable(name: "l", scope: !3071, file: !2, line: 55, type: !3090)
!3090 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURN_LOG_LEVEL", file: !26, line: 52, baseType: !25)
!3091 = !DILocation(line: 55, column: 18, scope: !3071)
!3092 = !DILocation(line: 57, column: 3, scope: !3071)
!3093 = !DILocation(line: 57, column: 3, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3071, file: !2, line: 57, column: 3)
!3095 = !DILocation(line: 59, column: 10, scope: !3071)
!3096 = !DILocation(line: 59, column: 3, scope: !3071)
!3097 = !DILocation(line: 61, column: 9, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3071, file: !2, line: 59, column: 21)
!3099 = !DILocation(line: 62, column: 7, scope: !3098)
!3100 = !DILocation(line: 64, column: 9, scope: !3098)
!3101 = !DILocation(line: 65, column: 7, scope: !3098)
!3102 = !DILocation(line: 67, column: 9, scope: !3098)
!3103 = !DILocation(line: 68, column: 7, scope: !3098)
!3104 = !DILocation(line: 70, column: 16, scope: !3071)
!3105 = !DILocation(line: 70, column: 27, scope: !3071)
!3106 = !DILocation(line: 70, column: 2, scope: !3071)
!3107 = !DILocation(line: 71, column: 1, scope: !3071)
!3108 = distinct !DISubprogram(name: "MongoFree", scope: !2, file: !2, line: 73, type: !3109, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!3109 = !DISubroutineType(types: !3110)
!3110 = !{null, !104}
!3111 = !DILocalVariable(name: "info", arg: 1, scope: !3108, file: !2, line: 73, type: !104)
!3112 = !DILocation(line: 73, column: 31, scope: !3108)
!3113 = !DILocation(line: 74, column: 5, scope: !3114)
!3114 = distinct !DILexicalBlock(scope: !3108, file: !2, line: 74, column: 5)
!3115 = !DILocation(line: 74, column: 5, scope: !3108)
!3116 = !DILocation(line: 75, column: 6, scope: !3117)
!3117 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 75, column: 6)
!3118 = distinct !DILexicalBlock(scope: !3114, file: !2, line: 74, column: 11)
!3119 = !DILocation(line: 75, column: 12, scope: !3117)
!3120 = !DILocation(line: 75, column: 6, scope: !3118)
!3121 = !DILocation(line: 75, column: 36, scope: !3117)
!3122 = !DILocation(line: 75, column: 42, scope: !3117)
!3123 = !DILocation(line: 75, column: 17, scope: !3117)
!3124 = !DILocation(line: 76, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3118, file: !2, line: 76, column: 6)
!3126 = !DILocation(line: 76, column: 12, scope: !3125)
!3127 = !DILocation(line: 76, column: 6, scope: !3118)
!3128 = !DILocation(line: 76, column: 42, scope: !3125)
!3129 = !DILocation(line: 76, column: 48, scope: !3125)
!3130 = !DILocation(line: 76, column: 20, scope: !3125)
!3131 = !DILocation(line: 77, column: 8, scope: !3118)
!3132 = !DILocation(line: 77, column: 3, scope: !3118)
!3133 = !DILocation(line: 78, column: 2, scope: !3118)
!3134 = !DILocation(line: 79, column: 1, scope: !3108)
!3135 = distinct !DISubprogram(name: "mongo_read_realms_ip_lists", scope: !2, file: !2, line: 992, type: !205, scopeLine: 993, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !9, retainedNodes: !567)
!3136 = !DILocalVariable(name: "kind", arg: 1, scope: !3135, file: !2, line: 992, type: !102)
!3137 = !DILocation(line: 992, column: 51, scope: !3135)
!3138 = !DILocalVariable(name: "list", arg: 2, scope: !3135, file: !2, line: 992, type: !207)
!3139 = !DILocation(line: 992, column: 75, scope: !3135)
!3140 = !DILocalVariable(name: "ret", scope: !3135, file: !2, line: 994, type: !80)
!3141 = !DILocation(line: 994, column: 6, scope: !3135)
!3142 = !DILocalVariable(name: "field_name", scope: !3135, file: !2, line: 996, type: !307)
!3143 = !DILocation(line: 996, column: 7, scope: !3135)
!3144 = !DILocation(line: 997, column: 10, scope: !3135)
!3145 = !DILocation(line: 997, column: 36, scope: !3135)
!3146 = !DILocation(line: 997, column: 2, scope: !3135)
!3147 = !DILocalVariable(name: "collection", scope: !3135, file: !2, line: 999, type: !575)
!3148 = !DILocation(line: 999, column: 24, scope: !3135)
!3149 = !DILocation(line: 999, column: 37, scope: !3135)
!3150 = !DILocation(line: 1001, column: 7, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1001, column: 6)
!3152 = !DILocation(line: 1001, column: 6, scope: !3135)
!3153 = !DILocation(line: 1002, column: 10, scope: !3151)
!3154 = !DILocation(line: 1002, column: 3, scope: !3151)
!3155 = !DILocalVariable(name: "query", scope: !3135, file: !2, line: 1004, type: !586)
!3156 = !DILocation(line: 1004, column: 9, scope: !3135)
!3157 = !DILocation(line: 1005, column: 2, scope: !3135)
!3158 = !DILocalVariable(name: "fields", scope: !3135, file: !2, line: 1007, type: !586)
!3159 = !DILocation(line: 1007, column: 9, scope: !3135)
!3160 = !DILocation(line: 1008, column: 2, scope: !3135)
!3161 = !DILocation(line: 1009, column: 2, scope: !3135)
!3162 = !DILocation(line: 1010, column: 2, scope: !3135)
!3163 = !DILocalVariable(name: "cursor", scope: !3135, file: !2, line: 1012, type: !603)
!3164 = !DILocation(line: 1012, column: 20, scope: !3135)
!3165 = !DILocation(line: 1013, column: 34, scope: !3135)
!3166 = !DILocation(line: 1013, column: 11, scope: !3135)
!3167 = !DILocation(line: 1013, column: 9, scope: !3135)
!3168 = !DILocation(line: 1016, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 1016, column: 6)
!3170 = !DILocation(line: 1016, column: 6, scope: !3135)
!3171 = !DILocation(line: 1017, column: 3, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3169, file: !2, line: 1016, column: 15)
!3173 = !DILocation(line: 1019, column: 7, scope: !3172)
!3174 = !DILocation(line: 1020, column: 2, scope: !3172)
!3175 = !DILocalVariable(name: "item", scope: !3176, file: !2, line: 1021, type: !621)
!3176 = distinct !DILexicalBlock(scope: !3169, file: !2, line: 1020, column: 9)
!3177 = !DILocation(line: 1021, column: 18, scope: !3176)
!3178 = !DILocalVariable(name: "length", scope: !3176, file: !2, line: 1022, type: !140)
!3179 = !DILocation(line: 1022, column: 12, scope: !3176)
!3180 = !DILocalVariable(name: "iter", scope: !3176, file: !2, line: 1023, type: !627)
!3181 = !DILocation(line: 1023, column: 15, scope: !3176)
!3182 = !DILocalVariable(name: "realm", scope: !3176, file: !2, line: 1024, type: !222)
!3183 = !DILocation(line: 1024, column: 8, scope: !3176)
!3184 = !DILocation(line: 1026, column: 3, scope: !3176)
!3185 = !DILocation(line: 1026, column: 29, scope: !3176)
!3186 = !DILocation(line: 1026, column: 10, scope: !3176)
!3187 = !DILocation(line: 1028, column: 30, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3189, file: !2, line: 1028, column: 8)
!3189 = distinct !DILexicalBlock(scope: !3176, file: !2, line: 1026, column: 45)
!3190 = !DILocation(line: 1028, column: 8, scope: !3188)
!3191 = !DILocation(line: 1028, column: 36, scope: !3188)
!3192 = !DILocation(line: 1028, column: 39, scope: !3188)
!3193 = !DILocation(line: 1029, column: 6, scope: !3188)
!3194 = !DILocation(line: 1029, column: 9, scope: !3188)
!3195 = !DILocation(line: 1028, column: 8, scope: !3189)
!3196 = !DILocation(line: 1031, column: 5, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3188, file: !2, line: 1029, column: 38)
!3198 = !DILocation(line: 1031, column: 5, scope: !3199)
!3199 = distinct !DILexicalBlock(scope: !3200, file: !2, line: 1031, column: 5)
!3200 = distinct !DILexicalBlock(scope: !3197, file: !2, line: 1031, column: 5)
!3201 = !DILocation(line: 1031, column: 5, scope: !3200)
!3202 = !DILocalVariable(name: "szdst", scope: !3203, file: !2, line: 1031, type: !163)
!3203 = distinct !DILexicalBlock(scope: !3204, file: !2, line: 1031, column: 5)
!3204 = distinct !DILexicalBlock(scope: !3205, file: !2, line: 1031, column: 5)
!3205 = distinct !DILexicalBlock(scope: !3199, file: !2, line: 1031, column: 5)
!3206 = !DILocation(line: 1031, column: 5, scope: !3203)
!3207 = !DILocation(line: 1031, column: 5, scope: !3205)
!3208 = !DILocation(line: 1033, column: 31, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3197, file: !2, line: 1033, column: 9)
!3210 = !DILocation(line: 1033, column: 9, scope: !3209)
!3211 = !DILocation(line: 1033, column: 37, scope: !3209)
!3212 = !DILocation(line: 1034, column: 7, scope: !3209)
!3213 = !DILocation(line: 1033, column: 40, scope: !3209)
!3214 = !DILocation(line: 1034, column: 19, scope: !3209)
!3215 = !DILocation(line: 1034, column: 22, scope: !3209)
!3216 = !DILocation(line: 1033, column: 9, scope: !3197)
!3217 = !DILocalVariable(name: "docbuf", scope: !3218, file: !2, line: 1035, type: !325)
!3218 = distinct !DILexicalBlock(scope: !3209, file: !2, line: 1034, column: 52)
!3219 = !DILocation(line: 1035, column: 21, scope: !3218)
!3220 = !DILocalVariable(name: "doclen", scope: !3218, file: !2, line: 1036, type: !140)
!3221 = !DILocation(line: 1036, column: 15, scope: !3218)
!3222 = !DILocalVariable(name: "ip_range_array", scope: !3218, file: !2, line: 1037, type: !586)
!3223 = !DILocation(line: 1037, column: 13, scope: !3218)
!3224 = !DILocalVariable(name: "ip_range_iter", scope: !3218, file: !2, line: 1038, type: !627)
!3225 = !DILocation(line: 1038, column: 18, scope: !3218)
!3226 = !DILocation(line: 1040, column: 6, scope: !3218)
!3227 = !DILocation(line: 1041, column: 40, scope: !3218)
!3228 = !DILocation(line: 1041, column: 48, scope: !3218)
!3229 = !DILocation(line: 1041, column: 6, scope: !3218)
!3230 = !DILocation(line: 1043, column: 10, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3218, file: !2, line: 1043, column: 10)
!3232 = !DILocation(line: 1043, column: 10, scope: !3218)
!3233 = !DILocation(line: 1044, column: 7, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3231, file: !2, line: 1043, column: 59)
!3235 = !DILocation(line: 1044, column: 14, scope: !3234)
!3236 = !DILocation(line: 1045, column: 12, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3238, file: !2, line: 1045, column: 12)
!3238 = distinct !DILexicalBlock(scope: !3234, file: !2, line: 1044, column: 46)
!3239 = !DILocation(line: 1045, column: 12, scope: !3238)
!3240 = !DILocalVariable(name: "ip_range", scope: !3241, file: !2, line: 1046, type: !102)
!3241 = distinct !DILexicalBlock(scope: !3237, file: !2, line: 1045, column: 50)
!3242 = !DILocation(line: 1046, column: 21, scope: !3241)
!3243 = !DILocation(line: 1046, column: 32, scope: !3241)
!3244 = !DILocation(line: 1047, column: 27, scope: !3241)
!3245 = !DILocation(line: 1047, column: 37, scope: !3241)
!3246 = !DILocation(line: 1047, column: 44, scope: !3241)
!3247 = !DILocation(line: 1047, column: 9, scope: !3241)
!3248 = !DILocation(line: 1048, column: 8, scope: !3241)
!3249 = distinct !{!3249, !3233, !3250, !748}
!3250 = !DILocation(line: 1049, column: 7, scope: !3234)
!3251 = !DILocation(line: 1050, column: 6, scope: !3234)
!3252 = !DILocation(line: 1051, column: 5, scope: !3218)
!3253 = !DILocation(line: 1052, column: 4, scope: !3197)
!3254 = distinct !{!3254, !3184, !3255, !748}
!3255 = !DILocation(line: 1053, column: 3, scope: !3176)
!3256 = !DILocation(line: 1054, column: 25, scope: !3176)
!3257 = !DILocation(line: 1054, column: 3, scope: !3176)
!3258 = !DILocation(line: 1056, column: 28, scope: !3135)
!3259 = !DILocation(line: 1056, column: 2, scope: !3135)
!3260 = !DILocation(line: 1057, column: 2, scope: !3135)
!3261 = !DILocation(line: 1058, column: 2, scope: !3135)
!3262 = !DILocation(line: 1060, column: 9, scope: !3135)
!3263 = !DILocation(line: 1060, column: 2, scope: !3135)
!3264 = !DILocation(line: 1061, column: 1, scope: !3135)
