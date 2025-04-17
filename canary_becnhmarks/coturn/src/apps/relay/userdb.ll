; ModuleID = '/home/raj/coturn/src/apps/relay/userdb.c'
source_filename = "/home/raj/coturn/src/apps/relay/userdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turn_mutex = type { i32, ptr }
%struct._realm_params_t = type { i32, %struct._realm_options_t, %struct._realm_status_t }
%struct._realm_options_t = type { [128 x i8], %struct._perf_options_t }
%struct._perf_options_t = type { i64, i32, i32 }
%struct._realm_status_t = type { i32, ptr }
%struct._secrets_list = type { ptr, i64 }
%struct._turn_params_ = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, [1025 x i8], [33 x i8], [1025 x i8], [1025 x i8], [1025 x i8], [513 x i8], [1025 x i8], i32, i32, i32, i32, i32, ptr, %union.pthread_mutex_t, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [1025 x i8], [1025 x i8], i32, %struct.listener_server, %struct._ip_range_list, %struct._ip_range_list, i32, [4 x ptr], i16, i16, i32, i32, i32, [1025 x i8], i64, ptr, i32, ptr, i8, i8, [1025 x i8], [1025 x i8], i32, %struct._turn_server_addrs_list, i32, %struct._turn_server_addrs_list, %struct._turn_server_addrs_list, i32, i32, i32, i32, i32, i32, i8, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, %struct._default_users_db_t, i64, [1025 x i8], [1025 x i8], i32, i32, i32, i32, i32 }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.listener_server = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, ptr, ptr, ptr }
%struct._ip_range_list = type { ptr, i64 }
%struct._turn_server_addrs_list = type { ptr, i64, %struct._turn_mutex }
%struct._default_users_db_t = type { i32, %struct._persistent_users_db_t, %struct._ram_users_db_t }
%struct._persistent_users_db_t = type { [1025 x i8] }
%struct._ram_users_db_t = type { i64, ptr, %struct._secrets_list }
%struct._oauth_key_data_raw = type { [129 x i8], [257 x i8], i64, i32, [65 x i8], [128 x i8] }
%struct._oauth_key_data = type { [129 x i8], [257 x i8], i64, i32, i32, [65 x i8] }
%struct._oauth_key = type { [129 x i8], [257 x i8], i64, i32, i32, i32, [257 x i8], i64, [257 x i8], i64 }
%struct._oauth_token = type { %struct._oauth_encrypted_block }
%struct._oauth_encrypted_block = type { i16, [256 x i8], i16, [128 x i8], i64, i32 }
%struct._encoded_oauth_token = type { [1024 x i8], i64 }
%struct._turn_dbdriver_t = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.auth_message = type { i8, i32, i32, i32, i32, [513 x i8], [128 x i8], [64 x i8], [257 x i8], ptr, %struct._ioa_net_data, i64, i32 }
%struct._ioa_net_data = type { %union.ioa_addr, ptr, i32, i32 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._ip_range = type { [257 x i8], [513 x i8], %struct.ioa_addr_range }
%struct.ioa_addr_range = type { %union.ioa_addr, %union.ioa_addr }

@realms = internal global ptr null, align 8, !dbg !0
@o_to_realm_mutex = internal global %struct._turn_mutex zeroinitializer, align 8, !dbg !379
@o_to_realm = internal global ptr null, align 8, !dbg !393
@default_realm_params_ptr = internal global ptr null, align 8, !dbg !395
@create_default_realm._default_realm_params = internal global %struct._realm_params_t { i32 1, %struct._realm_options_t zeroinitializer, %struct._realm_status_t zeroinitializer }, align 8, !dbg !283
@realms_list = internal global %struct._secrets_list zeroinitializer, align 8, !dbg !386
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !290
@.str.1 = private unnamed_addr constant [34 x i8] c"Encoded oAuth token is too large\0A\00", align 1, !dbg !293
@turn_params = external global %struct._turn_params_, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Cannot determine oAuth server name\00", align 1, !dbg !298
@.str.3 = private unnamed_addr constant [27 x i8] c"Cannot decode oauth token\0A\00", align 1, !dbg !303
@.str.4 = private unnamed_addr constant [49 x i8] c"Wrong size of the MAC key in oAuth token(3): %d\0A\00", align 1, !dbg !308
@.str.5 = private unnamed_addr constant [24 x i8] c"oAuth token is too old\0A\00", align 1, !dbg !313
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !318
@.str.7 = private unnamed_addr constant [2 x i8] c":\00", align 1, !dbg !323
@.str.8 = private unnamed_addr constant [24 x i8] c"Wrong user account: %s\0A\00", align 1, !dbg !328
@.str.9 = private unnamed_addr constant [21 x i8] c"Wrong user name: %s\0A\00", align 1, !dbg !330
@.str.10 = private unnamed_addr constant [3 x i8] c"0x\00", align 1, !dbg !335
@.str.11 = private unnamed_addr constant [22 x i8] c"Wrong key format: %s\0A\00", align 1, !dbg !340
@.str.12 = private unnamed_addr constant [15 x i8] c"Wrong key: %s\0A\00", align 1, !dbg !345
@stderr = external global ptr, align 8
@.str.13 = private unnamed_addr constant [64 x i8] c"The operation cannot be completed: a realm option must be set.\0A\00", align 1, !dbg !350
@.str.14 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1, !dbg !353
@.str.15 = private unnamed_addr constant [6 x i8] c"0x%s\0A\00", align 1, !dbg !358
@whitelist_rwlock = internal global ptr null, align 8, !dbg !429
@blacklist_rwlock = internal global ptr null, align 8, !dbg !431
@ipwhitelist = internal global ptr null, align 8, !dbg !433
@ipblacklist = internal global ptr null, align 8, !dbg !435
@.str.16 = private unnamed_addr constant [8 x i8] c"allowed\00", align 1, !dbg !363
@.str.17 = private unnamed_addr constant [7 x i8] c"denied\00", align 1, !dbg !366
@.str.18 = private unnamed_addr constant [26 x i8] c"Wrong address format: %s\0A\00", align 1, !dbg !369
@.str.19 = private unnamed_addr constant [32 x i8] c"Wrong address range format: %s\0A\00", align 1, !dbg !374
@.str.20 = private unnamed_addr constant [60 x i8] c"The operation cannot be completed: the origin must be set.\0A\00", align 1, !dbg !397
@.str.21 = private unnamed_addr constant [59 x i8] c"The operation cannot be completed: the realm must be set.\0A\00", align 1, !dbg !402
@.str.22 = private unnamed_addr constant [8 x i8] c"max-bps\00", align 1, !dbg !407
@.str.23 = private unnamed_addr constant [11 x i8] c"user-quota\00", align 1, !dbg !409
@.str.24 = private unnamed_addr constant [12 x i8] c"total-quota\00", align 1, !dbg !414
@.str.25 = private unnamed_addr constant [58 x i8] c"The operation cannot be completed: the user must be set.\0A\00", align 1, !dbg !419
@.str.26 = private unnamed_addr constant [62 x i8] c"The operation cannot be completed: the password must be set.\0A\00", align 1, !dbg !424

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lock_realms() #0 !dbg !445 {
  %1 = load ptr, ptr @realms, align 8, !dbg !446
  %2 = call i32 @ur_string_map_lock(ptr noundef %1), !dbg !447
  ret void, !dbg !448
}

declare i32 @ur_string_map_lock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unlock_realms() #0 !dbg !449 {
  %1 = load ptr, ptr @realms, align 8, !dbg !450
  %2 = call i32 @ur_string_map_unlock(ptr noundef %1), !dbg !451
  ret void, !dbg !452
}

declare i32 @ur_string_map_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_o_to_realm(ptr noundef %0) #0 !dbg !453 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !456, metadata !DIExpression()), !dbg !457
  %3 = call i32 @turn_mutex_lock(ptr noundef @o_to_realm_mutex), !dbg !458
  call void @ur_string_map_free(ptr noundef @o_to_realm), !dbg !459
  %4 = load ptr, ptr %2, align 8, !dbg !460
  store ptr %4, ptr @o_to_realm, align 8, !dbg !461
  %5 = call i32 @turn_mutex_unlock(ptr noundef @o_to_realm_mutex), !dbg !462
  ret void, !dbg !463
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare i32 @turn_mutex_lock(ptr noundef) #1

declare void @ur_string_map_free(ptr noundef) #1

declare i32 @turn_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @create_default_realm() #0 !dbg !285 {
  %1 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !464
  %2 = icmp ne ptr %1, null, !dbg !464
  br i1 %2, label %3, label %4, !dbg !466

3:                                                ; preds = %0
  br label %12, !dbg !467

4:                                                ; preds = %0
  %5 = call i32 @turn_mutex_init_recursive(ptr noundef @o_to_realm_mutex), !dbg !469
  call void @init_secrets_list(ptr noundef @realms_list), !dbg !470
  %6 = call ptr @ur_string_map_create(ptr noundef @free), !dbg !471
  store ptr %6, ptr @o_to_realm, align 8, !dbg !472
  store ptr @create_default_realm._default_realm_params, ptr @default_realm_params_ptr, align 8, !dbg !473
  %7 = call ptr @ur_string_map_create(ptr noundef null), !dbg !474
  store ptr %7, ptr @realms, align 8, !dbg !475
  call void @lock_realms(), !dbg !476
  %8 = call ptr @ur_string_map_create(ptr noundef null), !dbg !477
  %9 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !478
  %10 = getelementptr inbounds %struct._realm_params_t, ptr %9, i32 0, i32 2, !dbg !479
  %11 = getelementptr inbounds %struct._realm_status_t, ptr %10, i32 0, i32 1, !dbg !480
  store ptr %8, ptr %11, align 8, !dbg !481
  call void @unlock_realms(), !dbg !482
  br label %12, !dbg !483

12:                                               ; preds = %4, %3
  ret void, !dbg !483
}

declare i32 @turn_mutex_init_recursive(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_secrets_list(ptr noundef %0) #0 !dbg !484 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !488, metadata !DIExpression()), !dbg !489
  %3 = load ptr, ptr %2, align 8, !dbg !490
  %4 = icmp ne ptr %3, null, !dbg !490
  br i1 %4, label %5, label %7, !dbg !492

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !493
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 16, i1 false), !dbg !495
  br label %7, !dbg !496

7:                                                ; preds = %5, %1
  ret void, !dbg !497
}

declare ptr @ur_string_map_create(ptr noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_default_realm_options(ptr noundef %0) #0 !dbg !498 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !502, metadata !DIExpression()), !dbg !503
  %3 = load ptr, ptr %2, align 8, !dbg !504
  %4 = icmp ne ptr %3, null, !dbg !504
  br i1 %4, label %5, label %9, !dbg !506

5:                                                ; preds = %1
  call void @lock_realms(), !dbg !507
  %6 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !509
  %7 = getelementptr inbounds %struct._realm_params_t, ptr %6, i32 0, i32 1, !dbg !510
  %8 = load ptr, ptr %2, align 8, !dbg !511
  call void @bcopy(ptr noundef %7, ptr noundef %8, i64 noundef 144) #10, !dbg !512
  call void @unlock_realms(), !dbg !513
  br label %9, !dbg !514

9:                                                ; preds = %5, %1
  ret void, !dbg !515
}

; Function Attrs: nounwind
declare void @bcopy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_default_realm_name(ptr noundef %0) #0 !dbg !516 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !519, metadata !DIExpression()), !dbg !520
  call void @lock_realms(), !dbg !521
  call void @llvm.dbg.declare(metadata ptr %3, metadata !522, metadata !DIExpression()), !dbg !523
  %5 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !524
  store ptr %5, ptr %3, align 8, !dbg !523
  br label %6, !dbg !525

6:                                                ; preds = %1
  %7 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !526
  %8 = getelementptr inbounds %struct._realm_params_t, ptr %7, i32 0, i32 1, !dbg !526
  %9 = getelementptr inbounds %struct._realm_options_t, ptr %8, i32 0, i32 0, !dbg !526
  %10 = getelementptr inbounds [128 x i8], ptr %9, i64 0, i64 0, !dbg !526
  %11 = load ptr, ptr %2, align 8, !dbg !526
  %12 = icmp ne ptr %10, %11, !dbg !526
  br i1 %12, label %13, label %28, !dbg !529

13:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %4, metadata !530, metadata !DIExpression()), !dbg !534
  store i64 128, ptr %4, align 8, !dbg !534
  %14 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !534
  %15 = getelementptr inbounds %struct._realm_params_t, ptr %14, i32 0, i32 1, !dbg !534
  %16 = getelementptr inbounds %struct._realm_options_t, ptr %15, i32 0, i32 0, !dbg !534
  %17 = getelementptr inbounds [128 x i8], ptr %16, i64 0, i64 0, !dbg !534
  %18 = load ptr, ptr %2, align 8, !dbg !534
  %19 = load i64, ptr %4, align 8, !dbg !534
  %20 = call ptr @strncpy(ptr noundef %17, ptr noundef %18, i64 noundef %19) #10, !dbg !534
  %21 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !534
  %22 = getelementptr inbounds %struct._realm_params_t, ptr %21, i32 0, i32 1, !dbg !534
  %23 = getelementptr inbounds %struct._realm_options_t, ptr %22, i32 0, i32 0, !dbg !534
  %24 = getelementptr inbounds [128 x i8], ptr %23, i64 0, i64 0, !dbg !534
  %25 = load i64, ptr %4, align 8, !dbg !534
  %26 = sub i64 %25, 1, !dbg !534
  %27 = getelementptr inbounds i8, ptr %24, i64 %26, !dbg !534
  store i8 0, ptr %27, align 1, !dbg !534
  br label %28, !dbg !535

28:                                               ; preds = %13, %6
  br label %29, !dbg !529

29:                                               ; preds = %28
  %30 = load ptr, ptr @realms, align 8, !dbg !536
  %31 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !537
  %32 = getelementptr inbounds %struct._realm_params_t, ptr %31, i32 0, i32 1, !dbg !538
  %33 = getelementptr inbounds %struct._realm_options_t, ptr %32, i32 0, i32 0, !dbg !539
  %34 = getelementptr inbounds [128 x i8], ptr %33, i64 0, i64 0, !dbg !537
  %35 = load ptr, ptr %3, align 8, !dbg !540
  %36 = call i32 @ur_string_map_put(ptr noundef %30, ptr noundef %34, ptr noundef %35), !dbg !541
  %37 = load ptr, ptr %2, align 8, !dbg !542
  call void @add_to_secrets_list(ptr noundef @realms_list, ptr noundef %37), !dbg !543
  call void @unlock_realms(), !dbg !544
  ret void, !dbg !545
}

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

declare i32 @ur_string_map_put(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @add_to_secrets_list(ptr noundef %0, ptr noundef %1) #0 !dbg !546 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !549, metadata !DIExpression()), !dbg !550
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !551, metadata !DIExpression()), !dbg !552
  %5 = load ptr, ptr %3, align 8, !dbg !553
  %6 = icmp ne ptr %5, null, !dbg !553
  br i1 %6, label %7, label %35, !dbg !555

7:                                                ; preds = %2
  %8 = load ptr, ptr %4, align 8, !dbg !556
  %9 = icmp ne ptr %8, null, !dbg !556
  br i1 %9, label %10, label %35, !dbg !557

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8, !dbg !558
  %12 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !560
  %13 = load ptr, ptr %12, align 8, !dbg !560
  %14 = load ptr, ptr %3, align 8, !dbg !561
  %15 = getelementptr inbounds %struct._secrets_list, ptr %14, i32 0, i32 1, !dbg !562
  %16 = load i64, ptr %15, align 8, !dbg !562
  %17 = add i64 %16, 1, !dbg !563
  %18 = mul i64 8, %17, !dbg !564
  %19 = call ptr @realloc(ptr noundef %13, i64 noundef %18) #11, !dbg !565
  %20 = load ptr, ptr %3, align 8, !dbg !566
  %21 = getelementptr inbounds %struct._secrets_list, ptr %20, i32 0, i32 0, !dbg !567
  store ptr %19, ptr %21, align 8, !dbg !568
  %22 = load ptr, ptr %4, align 8, !dbg !569
  %23 = call noalias ptr @strdup(ptr noundef %22) #10, !dbg !570
  %24 = load ptr, ptr %3, align 8, !dbg !571
  %25 = getelementptr inbounds %struct._secrets_list, ptr %24, i32 0, i32 0, !dbg !572
  %26 = load ptr, ptr %25, align 8, !dbg !572
  %27 = load ptr, ptr %3, align 8, !dbg !573
  %28 = getelementptr inbounds %struct._secrets_list, ptr %27, i32 0, i32 1, !dbg !574
  %29 = load i64, ptr %28, align 8, !dbg !574
  %30 = getelementptr inbounds ptr, ptr %26, i64 %29, !dbg !571
  store ptr %23, ptr %30, align 8, !dbg !575
  %31 = load ptr, ptr %3, align 8, !dbg !576
  %32 = getelementptr inbounds %struct._secrets_list, ptr %31, i32 0, i32 1, !dbg !577
  %33 = load i64, ptr %32, align 8, !dbg !578
  %34 = add i64 %33, 1, !dbg !578
  store i64 %34, ptr %32, align 8, !dbg !578
  br label %35, !dbg !579

35:                                               ; preds = %10, %7, %2
  ret void, !dbg !580
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_realm(ptr noundef %0) #0 !dbg !581 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !584, metadata !DIExpression()), !dbg !585
  %8 = load ptr, ptr %3, align 8, !dbg !586
  %9 = icmp ne ptr %8, null, !dbg !586
  br i1 %9, label %10, label %63, !dbg !588

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !589
  %12 = getelementptr inbounds i8, ptr %11, i64 0, !dbg !589
  %13 = load i8, ptr %12, align 1, !dbg !589
  %14 = sext i8 %13 to i32, !dbg !589
  %15 = icmp ne i32 %14, 0, !dbg !589
  br i1 %15, label %16, label %63, !dbg !590

16:                                               ; preds = %10
  call void @lock_realms(), !dbg !591
  call void @llvm.dbg.declare(metadata ptr %4, metadata !593, metadata !DIExpression()), !dbg !594
  store ptr null, ptr %4, align 8, !dbg !594
  call void @llvm.dbg.declare(metadata ptr %5, metadata !595, metadata !DIExpression()), !dbg !596
  %17 = load ptr, ptr %3, align 8, !dbg !597
  store ptr %17, ptr %5, align 8, !dbg !596
  %18 = load ptr, ptr @realms, align 8, !dbg !598
  %19 = load ptr, ptr %5, align 8, !dbg !600
  %20 = call i32 @ur_string_map_get(ptr noundef %18, ptr noundef %19, ptr noundef %4), !dbg !601
  %21 = icmp ne i32 %20, 0, !dbg !601
  br i1 %21, label %22, label %24, !dbg !602

22:                                               ; preds = %16
  call void @unlock_realms(), !dbg !603
  %23 = load ptr, ptr %4, align 8, !dbg !605
  store ptr %23, ptr %2, align 8, !dbg !606
  br label %65, !dbg !606

24:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %6, metadata !607, metadata !DIExpression()), !dbg !609
  %25 = call noalias ptr @malloc(i64 noundef 168) #12, !dbg !610
  store ptr %25, ptr %6, align 8, !dbg !609
  %26 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !611
  %27 = load ptr, ptr %6, align 8, !dbg !612
  call void @bcopy(ptr noundef %26, ptr noundef %27, i64 noundef 168) #10, !dbg !613
  br label %28, !dbg !614

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !dbg !615
  %30 = getelementptr inbounds %struct._realm_params_t, ptr %29, i32 0, i32 1, !dbg !615
  %31 = getelementptr inbounds %struct._realm_options_t, ptr %30, i32 0, i32 0, !dbg !615
  %32 = getelementptr inbounds [128 x i8], ptr %31, i64 0, i64 0, !dbg !615
  %33 = load ptr, ptr %3, align 8, !dbg !615
  %34 = icmp ne ptr %32, %33, !dbg !615
  br i1 %34, label %35, label %50, !dbg !618

35:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %7, metadata !619, metadata !DIExpression()), !dbg !623
  store i64 128, ptr %7, align 8, !dbg !623
  %36 = load ptr, ptr %6, align 8, !dbg !623
  %37 = getelementptr inbounds %struct._realm_params_t, ptr %36, i32 0, i32 1, !dbg !623
  %38 = getelementptr inbounds %struct._realm_options_t, ptr %37, i32 0, i32 0, !dbg !623
  %39 = getelementptr inbounds [128 x i8], ptr %38, i64 0, i64 0, !dbg !623
  %40 = load ptr, ptr %3, align 8, !dbg !623
  %41 = load i64, ptr %7, align 8, !dbg !623
  %42 = call ptr @strncpy(ptr noundef %39, ptr noundef %40, i64 noundef %41) #10, !dbg !623
  %43 = load ptr, ptr %6, align 8, !dbg !623
  %44 = getelementptr inbounds %struct._realm_params_t, ptr %43, i32 0, i32 1, !dbg !623
  %45 = getelementptr inbounds %struct._realm_options_t, ptr %44, i32 0, i32 0, !dbg !623
  %46 = getelementptr inbounds [128 x i8], ptr %45, i64 0, i64 0, !dbg !623
  %47 = load i64, ptr %7, align 8, !dbg !623
  %48 = sub i64 %47, 1, !dbg !623
  %49 = getelementptr inbounds i8, ptr %46, i64 %48, !dbg !623
  store i8 0, ptr %49, align 1, !dbg !623
  br label %50, !dbg !624

50:                                               ; preds = %35, %28
  br label %51, !dbg !618

51:                                               ; preds = %50
  %52 = load ptr, ptr %6, align 8, !dbg !625
  store ptr %52, ptr %4, align 8, !dbg !626
  %53 = load ptr, ptr @realms, align 8, !dbg !627
  %54 = load ptr, ptr %5, align 8, !dbg !628
  %55 = load ptr, ptr %4, align 8, !dbg !629
  %56 = call i32 @ur_string_map_put(ptr noundef %53, ptr noundef %54, ptr noundef %55), !dbg !630
  %57 = call ptr @ur_string_map_create(ptr noundef null), !dbg !631
  %58 = load ptr, ptr %6, align 8, !dbg !632
  %59 = getelementptr inbounds %struct._realm_params_t, ptr %58, i32 0, i32 2, !dbg !633
  %60 = getelementptr inbounds %struct._realm_status_t, ptr %59, i32 0, i32 1, !dbg !634
  store ptr %57, ptr %60, align 8, !dbg !635
  %61 = load ptr, ptr %3, align 8, !dbg !636
  call void @add_to_secrets_list(ptr noundef @realms_list, ptr noundef %61), !dbg !637
  call void @unlock_realms(), !dbg !638
  %62 = load ptr, ptr %6, align 8, !dbg !639
  store ptr %62, ptr %2, align 8, !dbg !640
  br label %65, !dbg !640

63:                                               ; preds = %10, %1
  %64 = load ptr, ptr @default_realm_params_ptr, align 8, !dbg !641
  store ptr %64, ptr %2, align 8, !dbg !642
  br label %65, !dbg !642

65:                                               ; preds = %63, %51, %22
  %66 = load ptr, ptr %2, align 8, !dbg !643
  ret ptr %66, !dbg !643
}

declare i32 @ur_string_map_get(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_realm_data(ptr noundef %0, ptr noundef %1) #0 !dbg !644 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !647, metadata !DIExpression()), !dbg !648
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !649, metadata !DIExpression()), !dbg !650
  call void @lock_realms(), !dbg !651
  %5 = load ptr, ptr %3, align 8, !dbg !652
  %6 = call ptr @get_realm(ptr noundef %5), !dbg !653
  %7 = load ptr, ptr %4, align 8, !dbg !654
  call void @bcopy(ptr noundef %6, ptr noundef %7, i64 noundef 168) #10, !dbg !655
  call void @unlock_realms(), !dbg !656
  ret i32 0, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_realm_options_by_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !658 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct._realm_params_t, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata ptr %6, metadata !665, metadata !DIExpression()), !dbg !666
  store ptr null, ptr %6, align 8, !dbg !666
  %9 = call i32 @turn_mutex_lock(ptr noundef @o_to_realm_mutex), !dbg !667
  %10 = load ptr, ptr @o_to_realm, align 8, !dbg !668
  %11 = load ptr, ptr %4, align 8, !dbg !670
  %12 = call i32 @ur_string_map_get(ptr noundef %10, ptr noundef %11, ptr noundef %6), !dbg !671
  %13 = icmp ne i32 %12, 0, !dbg !671
  br i1 %13, label %14, label %26, !dbg !672

14:                                               ; preds = %2
  %15 = load ptr, ptr %6, align 8, !dbg !673
  %16 = icmp ne ptr %15, null, !dbg !673
  br i1 %16, label %17, label %26, !dbg !674

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %7, metadata !675, metadata !DIExpression()), !dbg !677
  %18 = load ptr, ptr %6, align 8, !dbg !678
  %19 = call noalias ptr @strdup(ptr noundef %18) #10, !dbg !679
  store ptr %19, ptr %7, align 8, !dbg !677
  %20 = call i32 @turn_mutex_unlock(ptr noundef @o_to_realm_mutex), !dbg !680
  call void @llvm.dbg.declare(metadata ptr %8, metadata !681, metadata !DIExpression()), !dbg !682
  %21 = load ptr, ptr %7, align 8, !dbg !683
  %22 = call i32 @get_realm_data(ptr noundef %21, ptr noundef %8), !dbg !684
  %23 = getelementptr inbounds %struct._realm_params_t, ptr %8, i32 0, i32 1, !dbg !685
  %24 = load ptr, ptr %5, align 8, !dbg !686
  call void @bcopy(ptr noundef %23, ptr noundef %24, i64 noundef 144) #10, !dbg !687
  %25 = load ptr, ptr %7, align 8, !dbg !688
  call void @free(ptr noundef %25) #10, !dbg !689
  store i32 1, ptr %3, align 4, !dbg !690
  br label %29, !dbg !690

26:                                               ; preds = %14, %2
  %27 = call i32 @turn_mutex_unlock(ptr noundef @o_to_realm_mutex), !dbg !691
  %28 = load ptr, ptr %5, align 8, !dbg !693
  call void @get_default_realm_options(ptr noundef %28), !dbg !694
  store i32 0, ptr %3, align 4, !dbg !695
  br label %29, !dbg !695

29:                                               ; preds = %26, %17
  %30 = load i32, ptr %3, align 4, !dbg !696
  ret i32 %30, !dbg !696
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_realm_options_by_name(ptr noundef %0, ptr noundef %1) #0 !dbg !697 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct._realm_params_t, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !700, metadata !DIExpression()), !dbg !701
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !702, metadata !DIExpression()), !dbg !703
  call void @llvm.dbg.declare(metadata ptr %5, metadata !704, metadata !DIExpression()), !dbg !705
  %6 = load ptr, ptr %3, align 8, !dbg !706
  %7 = call i32 @get_realm_data(ptr noundef %6, ptr noundef %5), !dbg !707
  %8 = getelementptr inbounds %struct._realm_params_t, ptr %5, i32 0, i32 1, !dbg !708
  %9 = load ptr, ptr %4, align 8, !dbg !709
  call void @bcopy(ptr noundef %8, ptr noundef %9, i64 noundef 144) #10, !dbg !710
  ret void, !dbg !711
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_total_quota(ptr noundef %0, i32 noundef %1) #0 !dbg !712 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !715, metadata !DIExpression()), !dbg !716
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !717, metadata !DIExpression()), !dbg !718
  call void @llvm.dbg.declare(metadata ptr %5, metadata !719, metadata !DIExpression()), !dbg !720
  %7 = load i32, ptr %4, align 4, !dbg !721
  store i32 %7, ptr %5, align 4, !dbg !720
  call void @lock_realms(), !dbg !722
  call void @llvm.dbg.declare(metadata ptr %6, metadata !723, metadata !DIExpression()), !dbg !724
  %8 = load ptr, ptr %3, align 8, !dbg !725
  %9 = call ptr @get_realm(ptr noundef %8), !dbg !726
  store ptr %9, ptr %6, align 8, !dbg !724
  %10 = load i32, ptr %4, align 4, !dbg !727
  %11 = load ptr, ptr %6, align 8, !dbg !728
  %12 = getelementptr inbounds %struct._realm_params_t, ptr %11, i32 0, i32 1, !dbg !729
  %13 = getelementptr inbounds %struct._realm_options_t, ptr %12, i32 0, i32 1, !dbg !730
  %14 = getelementptr inbounds %struct._perf_options_t, ptr %13, i32 0, i32 1, !dbg !731
  store i32 %10, ptr %14, align 8, !dbg !732
  call void @unlock_realms(), !dbg !733
  %15 = load i32, ptr %5, align 4, !dbg !734
  ret i32 %15, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @change_user_quota(ptr noundef %0, i32 noundef %1) #0 !dbg !736 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !737, metadata !DIExpression()), !dbg !738
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !739, metadata !DIExpression()), !dbg !740
  call void @llvm.dbg.declare(metadata ptr %5, metadata !741, metadata !DIExpression()), !dbg !742
  %7 = load i32, ptr %4, align 4, !dbg !743
  store i32 %7, ptr %5, align 4, !dbg !742
  call void @lock_realms(), !dbg !744
  call void @llvm.dbg.declare(metadata ptr %6, metadata !745, metadata !DIExpression()), !dbg !746
  %8 = load ptr, ptr %3, align 8, !dbg !747
  %9 = call ptr @get_realm(ptr noundef %8), !dbg !748
  store ptr %9, ptr %6, align 8, !dbg !746
  %10 = load i32, ptr %4, align 4, !dbg !749
  %11 = load ptr, ptr %6, align 8, !dbg !750
  %12 = getelementptr inbounds %struct._realm_params_t, ptr %11, i32 0, i32 1, !dbg !751
  %13 = getelementptr inbounds %struct._realm_options_t, ptr %12, i32 0, i32 1, !dbg !752
  %14 = getelementptr inbounds %struct._perf_options_t, ptr %13, i32 0, i32 2, !dbg !753
  store i32 %10, ptr %14, align 4, !dbg !754
  call void @unlock_realms(), !dbg !755
  %15 = load i32, ptr %5, align 4, !dbg !756
  ret i32 %15, !dbg !757
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clean_secrets_list(ptr noundef %0) #0 !dbg !758 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !759, metadata !DIExpression()), !dbg !760
  %4 = load ptr, ptr %2, align 8, !dbg !761
  %5 = icmp ne ptr %4, null, !dbg !761
  br i1 %5, label %6, label %46, !dbg !763

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !764
  %8 = getelementptr inbounds %struct._secrets_list, ptr %7, i32 0, i32 0, !dbg !767
  %9 = load ptr, ptr %8, align 8, !dbg !767
  %10 = icmp ne ptr %9, null, !dbg !764
  br i1 %10, label %11, label %45, !dbg !768

11:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %3, metadata !769, metadata !DIExpression()), !dbg !771
  store i64 0, ptr %3, align 8, !dbg !771
  store i64 0, ptr %3, align 8, !dbg !772
  br label %12, !dbg !774

12:                                               ; preds = %34, %11
  %13 = load i64, ptr %3, align 8, !dbg !775
  %14 = load ptr, ptr %2, align 8, !dbg !777
  %15 = getelementptr inbounds %struct._secrets_list, ptr %14, i32 0, i32 1, !dbg !778
  %16 = load i64, ptr %15, align 8, !dbg !778
  %17 = icmp ult i64 %13, %16, !dbg !779
  br i1 %17, label %18, label %37, !dbg !780

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8, !dbg !781
  %20 = getelementptr inbounds %struct._secrets_list, ptr %19, i32 0, i32 0, !dbg !784
  %21 = load ptr, ptr %20, align 8, !dbg !784
  %22 = load i64, ptr %3, align 8, !dbg !785
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22, !dbg !781
  %24 = load ptr, ptr %23, align 8, !dbg !781
  %25 = icmp ne ptr %24, null, !dbg !781
  br i1 %25, label %26, label %33, !dbg !786

26:                                               ; preds = %18
  %27 = load ptr, ptr %2, align 8, !dbg !787
  %28 = getelementptr inbounds %struct._secrets_list, ptr %27, i32 0, i32 0, !dbg !789
  %29 = load ptr, ptr %28, align 8, !dbg !789
  %30 = load i64, ptr %3, align 8, !dbg !790
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30, !dbg !787
  %32 = load ptr, ptr %31, align 8, !dbg !787
  call void @free(ptr noundef %32) #10, !dbg !791
  br label %33, !dbg !792

33:                                               ; preds = %26, %18
  br label %34, !dbg !793

34:                                               ; preds = %33
  %35 = load i64, ptr %3, align 8, !dbg !794
  %36 = add i64 %35, 1, !dbg !794
  store i64 %36, ptr %3, align 8, !dbg !794
  br label %12, !dbg !795, !llvm.loop !796

37:                                               ; preds = %12
  %38 = load ptr, ptr %2, align 8, !dbg !799
  %39 = getelementptr inbounds %struct._secrets_list, ptr %38, i32 0, i32 0, !dbg !800
  %40 = load ptr, ptr %39, align 8, !dbg !800
  call void @free(ptr noundef %40) #10, !dbg !801
  %41 = load ptr, ptr %2, align 8, !dbg !802
  %42 = getelementptr inbounds %struct._secrets_list, ptr %41, i32 0, i32 0, !dbg !803
  store ptr null, ptr %42, align 8, !dbg !804
  %43 = load ptr, ptr %2, align 8, !dbg !805
  %44 = getelementptr inbounds %struct._secrets_list, ptr %43, i32 0, i32 1, !dbg !806
  store i64 0, ptr %44, align 8, !dbg !807
  br label %45, !dbg !808

45:                                               ; preds = %37, %6
  br label %46, !dbg !809

46:                                               ; preds = %45, %1
  ret void, !dbg !810
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_secrets_list_size(ptr noundef %0) #0 !dbg !811 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !814, metadata !DIExpression()), !dbg !815
  %4 = load ptr, ptr %3, align 8, !dbg !816
  %5 = icmp ne ptr %4, null, !dbg !816
  br i1 %5, label %6, label %15, !dbg !818

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !819
  %8 = getelementptr inbounds %struct._secrets_list, ptr %7, i32 0, i32 0, !dbg !820
  %9 = load ptr, ptr %8, align 8, !dbg !820
  %10 = icmp ne ptr %9, null, !dbg !819
  br i1 %10, label %11, label %15, !dbg !821

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !822
  %13 = getelementptr inbounds %struct._secrets_list, ptr %12, i32 0, i32 1, !dbg !824
  %14 = load i64, ptr %13, align 8, !dbg !824
  store i64 %14, ptr %2, align 8, !dbg !825
  br label %16, !dbg !825

15:                                               ; preds = %6, %1
  store i64 0, ptr %2, align 8, !dbg !826
  br label %16, !dbg !826

16:                                               ; preds = %15, %11
  %17 = load i64, ptr %2, align 8, !dbg !827
  ret i64 %17, !dbg !827
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_secrets_list_elem(ptr noundef %0, i64 noundef %1) #0 !dbg !828 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !831, metadata !DIExpression()), !dbg !832
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !833, metadata !DIExpression()), !dbg !834
  %6 = load ptr, ptr %4, align 8, !dbg !835
  %7 = call i64 @get_secrets_list_size(ptr noundef %6), !dbg !837
  %8 = load i64, ptr %5, align 8, !dbg !838
  %9 = icmp ugt i64 %7, %8, !dbg !839
  br i1 %9, label %10, label %17, !dbg !840

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !841
  %12 = getelementptr inbounds %struct._secrets_list, ptr %11, i32 0, i32 0, !dbg !843
  %13 = load ptr, ptr %12, align 8, !dbg !843
  %14 = load i64, ptr %5, align 8, !dbg !844
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14, !dbg !841
  %16 = load ptr, ptr %15, align 8, !dbg !841
  store ptr %16, ptr %3, align 8, !dbg !845
  br label %18, !dbg !845

17:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !846
  br label %18, !dbg !846

18:                                               ; preds = %17, %10
  %19 = load ptr, ptr %3, align 8, !dbg !847
  ret ptr %19, !dbg !847
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_user_key(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) #0 !dbg !848 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca %struct._oauth_key_data_raw, align 8
  %22 = alloca i32, align 4
  %23 = alloca %struct._oauth_key_data, align 8
  %24 = alloca [1025 x i8], align 16
  %25 = alloca i64, align 8
  %26 = alloca %struct._oauth_key, align 8
  %27 = alloca %struct._oauth_token, align 8
  %28 = alloca %struct._encoded_oauth_token, align 8
  %29 = alloca ptr, align 8
  %30 = alloca [257 x i8], align 16
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca %struct._secrets_list, align 8
  %38 = alloca i64, align 8
  %39 = alloca [128 x i8], align 16
  %40 = alloca i32, align 4
  %41 = alloca [257 x i8], align 16
  %42 = alloca ptr, align 8
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i64, align 8
  %46 = alloca ptr, align 8
  %47 = alloca ptr, align 8
  %48 = alloca i64, align 8
  %49 = alloca ptr, align 8
  store i32 %0, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !853, metadata !DIExpression()), !dbg !854
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !855, metadata !DIExpression()), !dbg !856
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !857, metadata !DIExpression()), !dbg !858
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !859, metadata !DIExpression()), !dbg !860
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !861, metadata !DIExpression()), !dbg !862
  store ptr %5, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !863, metadata !DIExpression()), !dbg !864
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !865, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.declare(metadata ptr %16, metadata !867, metadata !DIExpression()), !dbg !868
  store i32 -1, ptr %16, align 4, !dbg !868
  %50 = load ptr, ptr %11, align 8, !dbg !869
  %51 = icmp ne ptr %50, null, !dbg !869
  br i1 %51, label %52, label %54, !dbg !871

52:                                               ; preds = %7
  %53 = load ptr, ptr %11, align 8, !dbg !872
  store i32 0, ptr %53, align 4, !dbg !873
  br label %54, !dbg !874

54:                                               ; preds = %52, %7
  %55 = load i32, ptr %9, align 4, !dbg !875
  %56 = icmp ne i32 %55, 0, !dbg !875
  br i1 %56, label %57, label %257, !dbg !877

57:                                               ; preds = %54
  %58 = load ptr, ptr %10, align 8, !dbg !878
  %59 = icmp ne ptr %58, null, !dbg !878
  br i1 %59, label %60, label %257, !dbg !879

60:                                               ; preds = %57
  %61 = load ptr, ptr %12, align 8, !dbg !880
  %62 = icmp ne ptr %61, null, !dbg !880
  br i1 %62, label %63, label %257, !dbg !881

63:                                               ; preds = %60
  %64 = load ptr, ptr %12, align 8, !dbg !882
  %65 = getelementptr inbounds i8, ptr %64, i64 0, !dbg !882
  %66 = load i8, ptr %65, align 1, !dbg !882
  %67 = zext i8 %66 to i32, !dbg !882
  %68 = icmp ne i32 %67, 0, !dbg !882
  br i1 %68, label %69, label %257, !dbg !883

69:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %17, metadata !884, metadata !DIExpression()), !dbg !889
  %70 = load ptr, ptr %15, align 8, !dbg !890
  %71 = call ptr @ioa_network_buffer_data(ptr noundef %70), !dbg !891
  %72 = load ptr, ptr %15, align 8, !dbg !892
  %73 = call i64 @ioa_network_buffer_get_size(ptr noundef %72), !dbg !893
  %74 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %71, i64 noundef %73, i16 noundef zeroext 27), !dbg !894
  store ptr %74, ptr %17, align 8, !dbg !889
  %75 = load ptr, ptr %17, align 8, !dbg !895
  %76 = icmp ne ptr %75, null, !dbg !895
  br i1 %76, label %77, label %256, !dbg !897

77:                                               ; preds = %69
  call void @llvm.dbg.declare(metadata ptr %18, metadata !898, metadata !DIExpression()), !dbg !900
  %78 = load ptr, ptr %17, align 8, !dbg !901
  %79 = call i32 @stun_attr_get_len(ptr noundef %78), !dbg !902
  store i32 %79, ptr %18, align 4, !dbg !900
  call void @llvm.dbg.declare(metadata ptr %19, metadata !903, metadata !DIExpression()), !dbg !904
  %80 = load ptr, ptr %17, align 8, !dbg !905
  %81 = call ptr @stun_attr_get_value(ptr noundef %80), !dbg !906
  store ptr %81, ptr %19, align 8, !dbg !904
  %82 = load ptr, ptr %10, align 8, !dbg !907
  store i32 1, ptr %82, align 4, !dbg !908
  %83 = load i32, ptr %18, align 4, !dbg !909
  %84 = icmp sgt i32 %83, 0, !dbg !911
  br i1 %84, label %85, label %255, !dbg !912

85:                                               ; preds = %77
  %86 = load ptr, ptr %19, align 8, !dbg !913
  %87 = icmp ne ptr %86, null, !dbg !913
  br i1 %87, label %88, label %255, !dbg !914

88:                                               ; preds = %85
  call void @llvm.dbg.declare(metadata ptr %20, metadata !915, metadata !DIExpression()), !dbg !1021
  %89 = call ptr @get_dbdriver(), !dbg !1022
  store ptr %89, ptr %20, align 8, !dbg !1021
  %90 = load ptr, ptr %20, align 8, !dbg !1023
  %91 = icmp ne ptr %90, null, !dbg !1023
  br i1 %91, label %92, label %254, !dbg !1025

92:                                               ; preds = %88
  %93 = load ptr, ptr %20, align 8, !dbg !1026
  %94 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %93, i32 0, i32 18, !dbg !1027
  %95 = load ptr, ptr %94, align 8, !dbg !1027
  %96 = icmp ne ptr %95, null, !dbg !1026
  br i1 %96, label %97, label %254, !dbg !1028

97:                                               ; preds = %92
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1029, metadata !DIExpression()), !dbg !1031
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 600, i1 false), !dbg !1032
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1033, metadata !DIExpression()), !dbg !1034
  %98 = load ptr, ptr %20, align 8, !dbg !1035
  %99 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %98, i32 0, i32 18, !dbg !1036
  %100 = load ptr, ptr %99, align 8, !dbg !1036
  %101 = load ptr, ptr %12, align 8, !dbg !1037
  %102 = call i32 %100(ptr noundef %101, ptr noundef %21), !dbg !1038
  store i32 %102, ptr %22, align 4, !dbg !1034
  %103 = load i32, ptr %22, align 4, !dbg !1039
  %104 = icmp slt i32 %103, 0, !dbg !1041
  br i1 %104, label %105, label %107, !dbg !1042

105:                                              ; preds = %97
  %106 = load i32, ptr %16, align 4, !dbg !1043
  store i32 %106, ptr %8, align 4, !dbg !1044
  br label %404, !dbg !1044

107:                                              ; preds = %97
  %108 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 0, !dbg !1045
  %109 = getelementptr inbounds [129 x i8], ptr %108, i64 0, i64 0, !dbg !1047
  %110 = load i8, ptr %109, align 8, !dbg !1047
  %111 = icmp ne i8 %110, 0, !dbg !1047
  br i1 %111, label %114, label %112, !dbg !1048

112:                                              ; preds = %107
  %113 = load i32, ptr %16, align 4, !dbg !1049
  store i32 %113, ptr %8, align 4, !dbg !1050
  br label %404, !dbg !1050

114:                                              ; preds = %107
  %115 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 3, !dbg !1051
  %116 = load i32, ptr %115, align 8, !dbg !1051
  %117 = icmp ne i32 %116, 0, !dbg !1053
  br i1 %117, label %118, label %134, !dbg !1054

118:                                              ; preds = %114
  %119 = call i64 @time(ptr noundef null) #10, !dbg !1055
  %120 = trunc i64 %119 to i32, !dbg !1055
  %121 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 2, !dbg !1055
  %122 = load i64, ptr %121, align 8, !dbg !1055
  %123 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 3, !dbg !1055
  %124 = load i32, ptr %123, align 8, !dbg !1055
  %125 = zext i32 %124 to i64, !dbg !1055
  %126 = add i64 %122, %125, !dbg !1055
  %127 = add i64 %126, 5, !dbg !1055
  %128 = trunc i64 %127 to i32, !dbg !1055
  %129 = sub nsw i32 %120, %128, !dbg !1055
  %130 = icmp slt i32 %129, 0, !dbg !1055
  br i1 %130, label %133, label %131, !dbg !1058

131:                                              ; preds = %118
  %132 = load i32, ptr %16, align 4, !dbg !1059
  store i32 %132, ptr %8, align 4, !dbg !1061
  br label %404, !dbg !1061

133:                                              ; preds = %118
  br label %134, !dbg !1062

134:                                              ; preds = %133, %114
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1063, metadata !DIExpression()), !dbg !1073
  call void @llvm.memset.p0.i64(ptr align 8 %23, i8 0, i64 480, i1 false), !dbg !1074
  call void @convert_oauth_key_data_raw(ptr noundef %21, ptr noundef %23), !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1076, metadata !DIExpression()), !dbg !1080
  call void @llvm.memset.p0.i64(ptr align 16 %24, i8 0, i64 1025, i1 false), !dbg !1080
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1081, metadata !DIExpression()), !dbg !1082
  store i64 1024, ptr %25, align 8, !dbg !1082
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1083, metadata !DIExpression()), !dbg !1098
  call void @llvm.memset.p0.i64(ptr align 8 %26, i8 0, i64 952, i1 false), !dbg !1099
  %135 = getelementptr inbounds [1025 x i8], ptr %24, i64 0, i64 0, !dbg !1100
  %136 = load i64, ptr %25, align 8, !dbg !1102
  %137 = call i32 @convert_oauth_key_data(ptr noundef %23, ptr noundef %26, ptr noundef %135, i64 noundef %136), !dbg !1103
  %138 = icmp slt i32 %137, 0, !dbg !1104
  br i1 %138, label %139, label %141, !dbg !1105

139:                                              ; preds = %134
  %140 = getelementptr inbounds [1025 x i8], ptr %24, i64 0, i64 0, !dbg !1106
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str, ptr noundef %140), !dbg !1108
  store i32 -1, ptr %8, align 4, !dbg !1109
  br label %404, !dbg !1109

141:                                              ; preds = %134
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1110, metadata !DIExpression()), !dbg !1128
  call void @llvm.memset.p0.i64(ptr align 8 %27, i8 0, i64 408, i1 false), !dbg !1129
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1130, metadata !DIExpression()), !dbg !1139
  call void @llvm.memset.p0.i64(ptr align 8 %28, i8 0, i64 1032, i1 false), !dbg !1140
  %142 = load i32, ptr %18, align 4, !dbg !1141
  %143 = sext i32 %142 to i64, !dbg !1143
  %144 = icmp ugt i64 %143, 1024, !dbg !1144
  br i1 %144, label %145, label %146, !dbg !1145

145:                                              ; preds = %141
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.1), !dbg !1146
  store i32 -1, ptr %8, align 4, !dbg !1148
  br label %404, !dbg !1148

146:                                              ; preds = %141
  %147 = load ptr, ptr %19, align 8, !dbg !1149
  %148 = getelementptr inbounds %struct._encoded_oauth_token, ptr %28, i32 0, i32 0, !dbg !1150
  %149 = getelementptr inbounds [1024 x i8], ptr %148, i64 0, i64 0, !dbg !1151
  %150 = load i32, ptr %18, align 4, !dbg !1152
  %151 = sext i32 %150 to i64, !dbg !1153
  call void @bcopy(ptr noundef %147, ptr noundef %149, i64 noundef %151) #10, !dbg !1154
  %152 = load i32, ptr %18, align 4, !dbg !1155
  %153 = sext i32 %152 to i64, !dbg !1156
  %154 = getelementptr inbounds %struct._encoded_oauth_token, ptr %28, i32 0, i32 1, !dbg !1157
  store i64 %153, ptr %154, align 8, !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %29, metadata !1159, metadata !DIExpression()), !dbg !1160
  store ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 59), ptr %29, align 8, !dbg !1160
  %155 = load ptr, ptr %29, align 8, !dbg !1161
  %156 = icmp ne ptr %155, null, !dbg !1161
  br i1 %156, label %157, label %163, !dbg !1163

157:                                              ; preds = %146
  %158 = load ptr, ptr %29, align 8, !dbg !1164
  %159 = getelementptr inbounds i8, ptr %158, i64 0, !dbg !1164
  %160 = load i8, ptr %159, align 1, !dbg !1164
  %161 = sext i8 %160 to i32, !dbg !1164
  %162 = icmp ne i32 %161, 0, !dbg !1164
  br i1 %162, label %175, label %163, !dbg !1165

163:                                              ; preds = %157, %146
  %164 = load ptr, ptr %13, align 8, !dbg !1166
  store ptr %164, ptr %29, align 8, !dbg !1168
  %165 = load ptr, ptr %29, align 8, !dbg !1169
  %166 = icmp ne ptr %165, null, !dbg !1169
  br i1 %166, label %167, label %173, !dbg !1171

167:                                              ; preds = %163
  %168 = load ptr, ptr %29, align 8, !dbg !1172
  %169 = getelementptr inbounds i8, ptr %168, i64 0, !dbg !1172
  %170 = load i8, ptr %169, align 1, !dbg !1172
  %171 = sext i8 %170 to i32, !dbg !1172
  %172 = icmp ne i32 %171, 0, !dbg !1172
  br i1 %172, label %174, label %173, !dbg !1173

173:                                              ; preds = %167, %163
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.2), !dbg !1174
  store i32 -1, ptr %8, align 4, !dbg !1176
  br label %404, !dbg !1176

174:                                              ; preds = %167
  br label %175, !dbg !1177

175:                                              ; preds = %174, %157
  %176 = load ptr, ptr %29, align 8, !dbg !1178
  %177 = call i32 @decode_oauth_token(ptr noundef %176, ptr noundef %28, ptr noundef %26, ptr noundef %27), !dbg !1180
  %178 = icmp slt i32 %177, 0, !dbg !1181
  br i1 %178, label %179, label %180, !dbg !1182

179:                                              ; preds = %175
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.3), !dbg !1183
  store i32 -1, ptr %8, align 4, !dbg !1185
  br label %404, !dbg !1185

180:                                              ; preds = %175
  %181 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1186
  %182 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %181, i32 0, i32 2, !dbg !1187
  %183 = load i16, ptr %182, align 2, !dbg !1187
  %184 = zext i16 %183 to i32, !dbg !1188
  switch i32 %184, label %187 [
    i32 20, label %185
    i32 32, label %186
    i32 48, label %186
    i32 64, label %186
  ], !dbg !1189

185:                                              ; preds = %180
  br label %192, !dbg !1190

186:                                              ; preds = %180, %180, %180
  br label %187, !dbg !1192

187:                                              ; preds = %180, %186
  %188 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1193
  %189 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %188, i32 0, i32 2, !dbg !1194
  %190 = load i16, ptr %189, align 2, !dbg !1194
  %191 = zext i16 %190 to i32, !dbg !1195
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.4, i32 noundef %191), !dbg !1196
  store i32 -1, ptr %8, align 4, !dbg !1197
  br label %404, !dbg !1197

192:                                              ; preds = %185
  call void @llvm.dbg.declare(metadata ptr %30, metadata !1198, metadata !DIExpression()), !dbg !1201
  %193 = load ptr, ptr %15, align 8, !dbg !1202
  %194 = call ptr @ioa_network_buffer_data(ptr noundef %193), !dbg !1204
  %195 = load ptr, ptr %15, align 8, !dbg !1205
  %196 = call i64 @ioa_network_buffer_get_size(ptr noundef %195), !dbg !1206
  %197 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1207
  %198 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %197, i32 0, i32 3, !dbg !1208
  %199 = getelementptr inbounds [128 x i8], ptr %198, i64 0, i64 0, !dbg !1209
  %200 = getelementptr inbounds [257 x i8], ptr %30, i64 0, i64 0, !dbg !1210
  %201 = call i32 @stun_check_message_integrity_by_key_str(i32 noundef 1, ptr noundef %194, i64 noundef %196, ptr noundef %199, ptr noundef %200, i32 noundef 0), !dbg !1211
  %202 = icmp sgt i32 %201, 0, !dbg !1212
  br i1 %202, label %203, label %253, !dbg !1213

203:                                              ; preds = %192
  call void @llvm.dbg.declare(metadata ptr %31, metadata !1214, metadata !DIExpression()), !dbg !1216
  %204 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1217
  %205 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %204, i32 0, i32 5, !dbg !1218
  %206 = load i32, ptr %205, align 8, !dbg !1218
  store i32 %206, ptr %31, align 4, !dbg !1216
  %207 = load i32, ptr %31, align 4, !dbg !1219
  %208 = icmp ne i32 %207, 0, !dbg !1219
  br i1 %208, label %209, label %235, !dbg !1221

209:                                              ; preds = %203
  call void @llvm.dbg.declare(metadata ptr %32, metadata !1222, metadata !DIExpression()), !dbg !1224
  %210 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1225
  %211 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %210, i32 0, i32 4, !dbg !1226
  %212 = load i64, ptr %211, align 8, !dbg !1226
  %213 = lshr i64 %212, 16, !dbg !1227
  %214 = trunc i64 %213 to i32, !dbg !1228
  store i32 %214, ptr %32, align 4, !dbg !1224
  call void @llvm.dbg.declare(metadata ptr %33, metadata !1229, metadata !DIExpression()), !dbg !1230
  %215 = load i32, ptr %32, align 4, !dbg !1231
  %216 = load i32, ptr %31, align 4, !dbg !1232
  %217 = add i32 %215, %216, !dbg !1233
  %218 = add i32 %217, 5, !dbg !1234
  store i32 %218, ptr %33, align 4, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %34, metadata !1235, metadata !DIExpression()), !dbg !1236
  %219 = call i64 @time(ptr noundef null) #10, !dbg !1237
  %220 = trunc i64 %219 to i32, !dbg !1237
  store i32 %220, ptr %34, align 4, !dbg !1236
  %221 = load i32, ptr %34, align 4, !dbg !1238
  %222 = load i32, ptr %33, align 4, !dbg !1238
  %223 = sub nsw i32 %221, %222, !dbg !1238
  %224 = icmp slt i32 %223, 0, !dbg !1238
  br i1 %224, label %226, label %225, !dbg !1240

225:                                              ; preds = %209
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.5), !dbg !1241
  store i32 -1, ptr %8, align 4, !dbg !1243
  br label %404, !dbg !1243

226:                                              ; preds = %209
  %227 = load ptr, ptr %11, align 8, !dbg !1244
  %228 = icmp ne ptr %227, null, !dbg !1244
  br i1 %228, label %229, label %234, !dbg !1246

229:                                              ; preds = %226
  %230 = load i32, ptr %33, align 4, !dbg !1247
  %231 = load i32, ptr %34, align 4, !dbg !1249
  %232 = sub i32 %230, %231, !dbg !1250
  %233 = load ptr, ptr %11, align 8, !dbg !1251
  store i32 %232, ptr %233, align 4, !dbg !1252
  br label %234, !dbg !1253

234:                                              ; preds = %229, %226
  br label %235, !dbg !1254

235:                                              ; preds = %234, %203
  %236 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1255
  %237 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %236, i32 0, i32 3, !dbg !1256
  %238 = getelementptr inbounds [128 x i8], ptr %237, i64 0, i64 0, !dbg !1257
  %239 = load ptr, ptr %14, align 8, !dbg !1258
  %240 = getelementptr inbounds %struct._oauth_token, ptr %27, i32 0, i32 0, !dbg !1259
  %241 = getelementptr inbounds %struct._oauth_encrypted_block, ptr %240, i32 0, i32 2, !dbg !1260
  %242 = load i16, ptr %241, align 2, !dbg !1260
  %243 = zext i16 %242 to i64, !dbg !1261
  call void @bcopy(ptr noundef %238, ptr noundef %239, i64 noundef %243) #10, !dbg !1262
  %244 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 5, !dbg !1263
  %245 = getelementptr inbounds [128 x i8], ptr %244, i64 0, i64 0, !dbg !1265
  %246 = load i8, ptr %245, align 1, !dbg !1265
  %247 = icmp ne i8 %246, 0, !dbg !1265
  br i1 %247, label %248, label %252, !dbg !1266

248:                                              ; preds = %235
  %249 = getelementptr inbounds %struct._oauth_key_data_raw, ptr %21, i32 0, i32 5, !dbg !1267
  %250 = getelementptr inbounds [128 x i8], ptr %249, i64 0, i64 0, !dbg !1269
  %251 = load ptr, ptr %13, align 8, !dbg !1270
  call void @bcopy(ptr noundef %250, ptr noundef %251, i64 noundef 128) #10, !dbg !1271
  br label %252, !dbg !1272

252:                                              ; preds = %248, %235
  store i32 0, ptr %16, align 4, !dbg !1273
  br label %253, !dbg !1274

253:                                              ; preds = %252, %192
  br label %254, !dbg !1275

254:                                              ; preds = %253, %92, %88
  br label %255, !dbg !1276

255:                                              ; preds = %254, %85, %77
  br label %256, !dbg !1277

256:                                              ; preds = %255, %69
  br label %257, !dbg !1278

257:                                              ; preds = %256, %63, %60, %57, %54
  %258 = load ptr, ptr %10, align 8, !dbg !1279
  %259 = icmp ne ptr %258, null, !dbg !1279
  br i1 %259, label %260, label %266, !dbg !1281

260:                                              ; preds = %257
  %261 = load ptr, ptr %10, align 8, !dbg !1282
  %262 = load i32, ptr %261, align 4, !dbg !1283
  %263 = icmp ne i32 %262, 0, !dbg !1283
  br i1 %263, label %264, label %266, !dbg !1284

264:                                              ; preds = %260
  %265 = load i32, ptr %16, align 4, !dbg !1285
  store i32 %265, ptr %8, align 4, !dbg !1287
  br label %404, !dbg !1287

266:                                              ; preds = %260, %257
  %267 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 79), align 4, !dbg !1288
  %268 = icmp ne i32 %267, 0, !dbg !1290
  br i1 %268, label %269, label %367, !dbg !1291

269:                                              ; preds = %266
  call void @llvm.dbg.declare(metadata ptr %35, metadata !1292, metadata !DIExpression()), !dbg !1294
  %270 = call i64 @time(ptr noundef null) #10, !dbg !1295
  %271 = trunc i64 %270 to i32, !dbg !1296
  store i32 %271, ptr %35, align 4, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %36, metadata !1297, metadata !DIExpression()), !dbg !1298
  store i32 0, ptr %36, align 4, !dbg !1298
  call void @llvm.dbg.declare(metadata ptr %37, metadata !1299, metadata !DIExpression()), !dbg !1300
  call void @llvm.dbg.declare(metadata ptr %38, metadata !1301, metadata !DIExpression()), !dbg !1302
  store i64 0, ptr %38, align 8, !dbg !1302
  call void @init_secrets_list(ptr noundef %37), !dbg !1303
  %272 = load ptr, ptr %13, align 8, !dbg !1304
  %273 = call i32 @get_auth_secrets(ptr noundef %37, ptr noundef %272), !dbg !1306
  %274 = icmp slt i32 %273, 0, !dbg !1307
  br i1 %274, label %275, label %277, !dbg !1308

275:                                              ; preds = %269
  %276 = load i32, ptr %16, align 4, !dbg !1309
  store i32 %276, ptr %8, align 4, !dbg !1310
  br label %404, !dbg !1310

277:                                              ; preds = %269
  %278 = load ptr, ptr %12, align 8, !dbg !1311
  %279 = call i32 @get_rest_api_timestamp(ptr noundef %278), !dbg !1312
  store i32 %279, ptr %36, align 4, !dbg !1313
  %280 = load i32, ptr %36, align 4, !dbg !1314
  %281 = load i32, ptr %35, align 4, !dbg !1314
  %282 = sub nsw i32 %280, %281, !dbg !1314
  %283 = icmp slt i32 %282, 0, !dbg !1314
  br i1 %283, label %365, label %284, !dbg !1316

284:                                              ; preds = %277
  call void @llvm.dbg.declare(metadata ptr %39, metadata !1317, metadata !DIExpression()), !dbg !1319
  call void @llvm.dbg.declare(metadata ptr %40, metadata !1320, metadata !DIExpression()), !dbg !1321
  call void @llvm.dbg.declare(metadata ptr %41, metadata !1322, metadata !DIExpression()), !dbg !1323
  %285 = getelementptr inbounds [128 x i8], ptr %39, i64 0, i64 0, !dbg !1324
  store i8 0, ptr %285, align 16, !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %42, metadata !1326, metadata !DIExpression()), !dbg !1327
  %286 = load ptr, ptr %15, align 8, !dbg !1328
  %287 = call ptr @ioa_network_buffer_data(ptr noundef %286), !dbg !1329
  %288 = load ptr, ptr %15, align 8, !dbg !1330
  %289 = call i64 @ioa_network_buffer_get_size(ptr noundef %288), !dbg !1331
  %290 = call ptr @stun_attr_get_first_by_type_str(ptr noundef %287, i64 noundef %289, i16 noundef zeroext 8), !dbg !1332
  store ptr %290, ptr %42, align 8, !dbg !1327
  %291 = load ptr, ptr %42, align 8, !dbg !1333
  %292 = icmp ne ptr %291, null, !dbg !1333
  br i1 %292, label %294, label %293, !dbg !1335

293:                                              ; preds = %284
  store i32 -1, ptr %8, align 4, !dbg !1336
  br label %404, !dbg !1336

294:                                              ; preds = %284
  call void @llvm.dbg.declare(metadata ptr %43, metadata !1337, metadata !DIExpression()), !dbg !1338
  %295 = load ptr, ptr %42, align 8, !dbg !1339
  %296 = call i32 @stun_attr_get_len(ptr noundef %295), !dbg !1340
  store i32 %296, ptr %43, align 4, !dbg !1338
  %297 = load i32, ptr %43, align 4, !dbg !1341
  switch i32 %297, label %300 [
    i32 20, label %298
    i32 32, label %299
    i32 48, label %299
    i32 64, label %299
  ], !dbg !1342

298:                                              ; preds = %294
  store i32 20, ptr %40, align 4, !dbg !1343
  br label %301, !dbg !1345

299:                                              ; preds = %294, %294, %294
  br label %300, !dbg !1346

300:                                              ; preds = %294, %299
  store i32 -1, ptr %8, align 4, !dbg !1347
  br label %404, !dbg !1347

301:                                              ; preds = %298
  store i64 0, ptr %38, align 8, !dbg !1348
  br label %302, !dbg !1350

302:                                              ; preds = %361, %301
  %303 = load i64, ptr %38, align 8, !dbg !1351
  %304 = call i64 @get_secrets_list_size(ptr noundef %37), !dbg !1353
  %305 = icmp ult i64 %303, %304, !dbg !1354
  br i1 %305, label %306, label %364, !dbg !1355

306:                                              ; preds = %302
  call void @llvm.dbg.declare(metadata ptr %44, metadata !1356, metadata !DIExpression()), !dbg !1358
  %307 = load i64, ptr %38, align 8, !dbg !1359
  %308 = call ptr @get_secrets_list_elem(ptr noundef %37, i64 noundef %307), !dbg !1360
  store ptr %308, ptr %44, align 8, !dbg !1358
  %309 = load ptr, ptr %44, align 8, !dbg !1361
  %310 = icmp ne ptr %309, null, !dbg !1361
  br i1 %310, label %311, label %360, !dbg !1363

311:                                              ; preds = %306
  %312 = load ptr, ptr %12, align 8, !dbg !1364
  %313 = load ptr, ptr %12, align 8, !dbg !1367
  %314 = call i64 @strlen(ptr noundef %313) #13, !dbg !1368
  %315 = load ptr, ptr %44, align 8, !dbg !1369
  %316 = load ptr, ptr %44, align 8, !dbg !1370
  %317 = call i64 @strlen(ptr noundef %316) #13, !dbg !1371
  %318 = getelementptr inbounds [128 x i8], ptr %39, i64 0, i64 0, !dbg !1372
  %319 = call i32 @stun_calculate_hmac(ptr noundef %312, i64 noundef %314, ptr noundef %315, i64 noundef %317, ptr noundef %318, ptr noundef %40, i32 noundef 0), !dbg !1373
  %320 = icmp sge i32 %319, 0, !dbg !1374
  br i1 %320, label %321, label %359, !dbg !1375

321:                                              ; preds = %311
  call void @llvm.dbg.declare(metadata ptr %45, metadata !1376, metadata !DIExpression()), !dbg !1378
  store i64 0, ptr %45, align 8, !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %46, metadata !1379, metadata !DIExpression()), !dbg !1380
  %322 = getelementptr inbounds [128 x i8], ptr %39, i64 0, i64 0, !dbg !1381
  %323 = load i32, ptr %40, align 4, !dbg !1382
  %324 = zext i32 %323 to i64, !dbg !1382
  %325 = call ptr @base64_encode(ptr noundef %322, i64 noundef %324, ptr noundef %45), !dbg !1383
  store ptr %325, ptr %46, align 8, !dbg !1380
  %326 = load ptr, ptr %46, align 8, !dbg !1384
  %327 = icmp ne ptr %326, null, !dbg !1384
  br i1 %327, label %328, label %358, !dbg !1386

328:                                              ; preds = %321
  %329 = load i64, ptr %45, align 8, !dbg !1387
  %330 = icmp ult i64 %329, 1, !dbg !1390
  br i1 %330, label %331, label %333, !dbg !1391

331:                                              ; preds = %328
  %332 = load ptr, ptr %46, align 8, !dbg !1392
  call void @free(ptr noundef %332) #10, !dbg !1394
  br label %357, !dbg !1395

333:                                              ; preds = %328
  %334 = load ptr, ptr %12, align 8, !dbg !1396
  %335 = load ptr, ptr %13, align 8, !dbg !1399
  %336 = load ptr, ptr %46, align 8, !dbg !1400
  %337 = load ptr, ptr %14, align 8, !dbg !1401
  %338 = call i32 @stun_produce_integrity_key_str(ptr noundef %334, ptr noundef %335, ptr noundef %336, ptr noundef %337, i32 noundef 0), !dbg !1402
  %339 = icmp sge i32 %338, 0, !dbg !1403
  br i1 %339, label %340, label %351, !dbg !1404

340:                                              ; preds = %333
  %341 = load ptr, ptr %15, align 8, !dbg !1405
  %342 = call ptr @ioa_network_buffer_data(ptr noundef %341), !dbg !1408
  %343 = load ptr, ptr %15, align 8, !dbg !1409
  %344 = call i64 @ioa_network_buffer_get_size(ptr noundef %343), !dbg !1410
  %345 = load ptr, ptr %14, align 8, !dbg !1411
  %346 = getelementptr inbounds [257 x i8], ptr %41, i64 0, i64 0, !dbg !1412
  %347 = call i32 @stun_check_message_integrity_by_key_str(i32 noundef 1, ptr noundef %342, i64 noundef %344, ptr noundef %345, ptr noundef %346, i32 noundef 0), !dbg !1413
  %348 = icmp sgt i32 %347, 0, !dbg !1414
  br i1 %348, label %349, label %350, !dbg !1415

349:                                              ; preds = %340
  store i32 0, ptr %16, align 4, !dbg !1416
  br label %350, !dbg !1418

350:                                              ; preds = %349, %340
  br label %351, !dbg !1419

351:                                              ; preds = %350, %333
  %352 = load ptr, ptr %46, align 8, !dbg !1420
  call void @free(ptr noundef %352) #10, !dbg !1421
  %353 = load i32, ptr %16, align 4, !dbg !1422
  %354 = icmp eq i32 %353, 0, !dbg !1424
  br i1 %354, label %355, label %356, !dbg !1425

355:                                              ; preds = %351
  br label %364, !dbg !1426

356:                                              ; preds = %351
  br label %357

357:                                              ; preds = %356, %331
  br label %358, !dbg !1427

358:                                              ; preds = %357, %321
  br label %359, !dbg !1428

359:                                              ; preds = %358, %311
  br label %360, !dbg !1429

360:                                              ; preds = %359, %306
  br label %361, !dbg !1430

361:                                              ; preds = %360
  %362 = load i64, ptr %38, align 8, !dbg !1431
  %363 = add i64 %362, 1, !dbg !1431
  store i64 %363, ptr %38, align 8, !dbg !1431
  br label %302, !dbg !1432, !llvm.loop !1433

364:                                              ; preds = %355, %302
  br label %365, !dbg !1435

365:                                              ; preds = %364, %277
  call void @clean_secrets_list(ptr noundef %37), !dbg !1436
  %366 = load i32, ptr %16, align 4, !dbg !1437
  store i32 %366, ptr %8, align 4, !dbg !1438
  br label %404, !dbg !1438

367:                                              ; preds = %266
  call void @llvm.dbg.declare(metadata ptr %47, metadata !1439, metadata !DIExpression()), !dbg !1440
  store ptr null, ptr %47, align 8, !dbg !1440
  %368 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !1441
  %369 = call i32 @ur_string_map_lock(ptr noundef %368), !dbg !1442
  %370 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !1443
  %371 = load ptr, ptr %12, align 8, !dbg !1445
  %372 = call i32 @ur_string_map_get(ptr noundef %370, ptr noundef %371, ptr noundef %47), !dbg !1446
  %373 = icmp ne i32 %372, 0, !dbg !1446
  br i1 %373, label %374, label %375, !dbg !1447

374:                                              ; preds = %367
  store i32 0, ptr %16, align 4, !dbg !1448
  br label %375, !dbg !1450

375:                                              ; preds = %374, %367
  %376 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !1451
  %377 = call i32 @ur_string_map_unlock(ptr noundef %376), !dbg !1452
  %378 = load i32, ptr %16, align 4, !dbg !1453
  %379 = icmp eq i32 %378, 0, !dbg !1455
  br i1 %379, label %380, label %385, !dbg !1456

380:                                              ; preds = %375
  call void @llvm.dbg.declare(metadata ptr %48, metadata !1457, metadata !DIExpression()), !dbg !1459
  %381 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !1460
  store i64 %381, ptr %48, align 8, !dbg !1459
  %382 = load ptr, ptr %47, align 8, !dbg !1461
  %383 = load ptr, ptr %14, align 8, !dbg !1462
  %384 = load i64, ptr %48, align 8, !dbg !1463
  call void @bcopy(ptr noundef %382, ptr noundef %383, i64 noundef %384) #10, !dbg !1464
  store i32 0, ptr %8, align 4, !dbg !1465
  br label %404, !dbg !1465

385:                                              ; preds = %375
  call void @llvm.dbg.declare(metadata ptr %49, metadata !1466, metadata !DIExpression()), !dbg !1467
  %386 = call ptr @get_dbdriver(), !dbg !1468
  store ptr %386, ptr %49, align 8, !dbg !1467
  %387 = load ptr, ptr %49, align 8, !dbg !1469
  %388 = icmp ne ptr %387, null, !dbg !1469
  br i1 %388, label %389, label %402, !dbg !1471

389:                                              ; preds = %385
  %390 = load ptr, ptr %49, align 8, !dbg !1472
  %391 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %390, i32 0, i32 1, !dbg !1473
  %392 = load ptr, ptr %391, align 8, !dbg !1473
  %393 = icmp ne ptr %392, null, !dbg !1472
  br i1 %393, label %394, label %402, !dbg !1474

394:                                              ; preds = %389
  %395 = load ptr, ptr %49, align 8, !dbg !1475
  %396 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %395, i32 0, i32 1, !dbg !1477
  %397 = load ptr, ptr %396, align 8, !dbg !1477
  %398 = load ptr, ptr %12, align 8, !dbg !1478
  %399 = load ptr, ptr %13, align 8, !dbg !1479
  %400 = load ptr, ptr %14, align 8, !dbg !1480
  %401 = call i32 %397(ptr noundef %398, ptr noundef %399, ptr noundef %400), !dbg !1481
  store i32 %401, ptr %16, align 4, !dbg !1482
  br label %402, !dbg !1483

402:                                              ; preds = %394, %389, %385
  %403 = load i32, ptr %16, align 4, !dbg !1484
  store i32 %403, ptr %8, align 4, !dbg !1485
  br label %404, !dbg !1485

404:                                              ; preds = %402, %380, %365, %300, %293, %275, %264, %225, %187, %179, %173, %145, %139, %131, %112, %105
  %405 = load i32, ptr %8, align 4, !dbg !1486
  ret i32 %405, !dbg !1486
}

declare ptr @stun_attr_get_first_by_type_str(ptr noundef, i64 noundef, i16 noundef zeroext) #1

declare ptr @ioa_network_buffer_data(ptr noundef) #1

declare i64 @ioa_network_buffer_get_size(ptr noundef) #1

declare i32 @stun_attr_get_len(ptr noundef) #1

declare ptr @stun_attr_get_value(ptr noundef) #1

declare ptr @get_dbdriver() #1

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

declare void @convert_oauth_key_data_raw(ptr noundef, ptr noundef) #1

declare i32 @convert_oauth_key_data(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #1

declare void @turn_log_func_default(i32 noundef, ptr noundef, ...) #1

declare i32 @decode_oauth_token(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

declare i32 @stun_check_message_integrity_by_key_str(i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_auth_secrets(ptr noundef %0, ptr noundef %1) #0 !dbg !1487 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1488, metadata !DIExpression()), !dbg !1489
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1492, metadata !DIExpression()), !dbg !1493
  store i32 -1, ptr %5, align 4, !dbg !1493
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1494, metadata !DIExpression()), !dbg !1495
  %8 = call ptr @get_dbdriver(), !dbg !1496
  store ptr %8, ptr %6, align 8, !dbg !1495
  %9 = load ptr, ptr %3, align 8, !dbg !1497
  call void @clean_secrets_list(ptr noundef %9), !dbg !1498
  %10 = call i64 @get_secrets_list_size(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 2)), !dbg !1499
  %11 = icmp ne i64 %10, 0, !dbg !1499
  br i1 %11, label %12, label %25, !dbg !1501

12:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1502, metadata !DIExpression()), !dbg !1504
  store i64 0, ptr %7, align 8, !dbg !1504
  store i64 0, ptr %7, align 8, !dbg !1505
  br label %13, !dbg !1507

13:                                               ; preds = %21, %12
  %14 = load i64, ptr %7, align 8, !dbg !1508
  %15 = call i64 @get_secrets_list_size(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 2)), !dbg !1510
  %16 = icmp ult i64 %14, %15, !dbg !1511
  br i1 %16, label %17, label %24, !dbg !1512

17:                                               ; preds = %13
  %18 = load ptr, ptr %3, align 8, !dbg !1513
  %19 = load i64, ptr %7, align 8, !dbg !1515
  %20 = call ptr @get_secrets_list_elem(ptr noundef getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 2), i64 noundef %19), !dbg !1516
  call void @add_to_secrets_list(ptr noundef %18, ptr noundef %20), !dbg !1517
  br label %21, !dbg !1518

21:                                               ; preds = %17
  %22 = load i64, ptr %7, align 8, !dbg !1519
  %23 = add i64 %22, 1, !dbg !1519
  store i64 %23, ptr %7, align 8, !dbg !1519
  br label %13, !dbg !1520, !llvm.loop !1521

24:                                               ; preds = %13
  store i32 0, ptr %5, align 4, !dbg !1523
  br label %25, !dbg !1524

25:                                               ; preds = %24, %2
  %26 = load ptr, ptr %6, align 8, !dbg !1525
  %27 = icmp ne ptr %26, null, !dbg !1525
  br i1 %27, label %28, label %40, !dbg !1527

28:                                               ; preds = %25
  %29 = load ptr, ptr %6, align 8, !dbg !1528
  %30 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %29, i32 0, i32 0, !dbg !1529
  %31 = load ptr, ptr %30, align 8, !dbg !1529
  %32 = icmp ne ptr %31, null, !dbg !1528
  br i1 %32, label %33, label %40, !dbg !1530

33:                                               ; preds = %28
  %34 = load ptr, ptr %6, align 8, !dbg !1531
  %35 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %34, i32 0, i32 0, !dbg !1533
  %36 = load ptr, ptr %35, align 8, !dbg !1533
  %37 = load ptr, ptr %3, align 8, !dbg !1534
  %38 = load ptr, ptr %4, align 8, !dbg !1535
  %39 = call i32 %36(ptr noundef %37, ptr noundef %38), !dbg !1536
  store i32 %39, ptr %5, align 4, !dbg !1537
  br label %40, !dbg !1538

40:                                               ; preds = %33, %28, %25
  %41 = load i32, ptr %5, align 4, !dbg !1539
  ret i32 %41, !dbg !1540
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rest_api_timestamp(ptr noundef %0) #0 !dbg !1541 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1544, metadata !DIExpression()), !dbg !1545
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1546, metadata !DIExpression()), !dbg !1547
  store i32 0, ptr %3, align 4, !dbg !1547
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1548, metadata !DIExpression()), !dbg !1549
  store i32 0, ptr %4, align 4, !dbg !1549
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1550, metadata !DIExpression()), !dbg !1551
  %8 = load ptr, ptr %2, align 8, !dbg !1552
  %9 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 72), align 8, !dbg !1553
  %10 = sext i8 %9 to i32, !dbg !1554
  %11 = call ptr @strchr(ptr noundef %8, i32 noundef %10) #13, !dbg !1555
  store ptr %11, ptr %5, align 8, !dbg !1551
  %12 = load ptr, ptr %5, align 8, !dbg !1556
  %13 = icmp ne ptr %12, null, !dbg !1556
  br i1 %13, label %14, label %60, !dbg !1558

14:                                               ; preds = %1
  %15 = load ptr, ptr %5, align 8, !dbg !1559
  %16 = load ptr, ptr %2, align 8, !dbg !1562
  %17 = icmp eq ptr %15, %16, !dbg !1563
  br i1 %17, label %18, label %21, !dbg !1564

18:                                               ; preds = %14
  %19 = load ptr, ptr %2, align 8, !dbg !1565
  %20 = getelementptr inbounds i8, ptr %19, i64 1, !dbg !1565
  store ptr %20, ptr %2, align 8, !dbg !1565
  br label %59, !dbg !1567

21:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1568, metadata !DIExpression()), !dbg !1570
  %22 = load ptr, ptr %2, align 8, !dbg !1571
  store ptr %22, ptr %6, align 8, !dbg !1570
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1572, metadata !DIExpression()), !dbg !1573
  store i32 0, ptr %7, align 4, !dbg !1573
  br label %23, !dbg !1574

23:                                               ; preds = %40, %21
  %24 = load ptr, ptr %6, align 8, !dbg !1575
  %25 = load ptr, ptr %5, align 8, !dbg !1576
  %26 = icmp ult ptr %24, %25, !dbg !1577
  br i1 %26, label %27, label %43, !dbg !1574

27:                                               ; preds = %23
  %28 = load ptr, ptr %6, align 8, !dbg !1578
  %29 = getelementptr inbounds i8, ptr %28, i64 0, !dbg !1578
  %30 = load i8, ptr %29, align 1, !dbg !1578
  %31 = sext i8 %30 to i32, !dbg !1578
  %32 = icmp sge i32 %31, 48, !dbg !1581
  br i1 %32, label %33, label %39, !dbg !1582

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 8, !dbg !1583
  %35 = getelementptr inbounds i8, ptr %34, i64 0, !dbg !1583
  %36 = load i8, ptr %35, align 1, !dbg !1583
  %37 = sext i8 %36 to i32, !dbg !1583
  %38 = icmp sle i32 %37, 57, !dbg !1584
  br i1 %38, label %40, label %39, !dbg !1585

39:                                               ; preds = %33, %27
  store i32 1, ptr %7, align 4, !dbg !1586
  br label %43, !dbg !1588

40:                                               ; preds = %33
  %41 = load ptr, ptr %6, align 8, !dbg !1589
  %42 = getelementptr inbounds i8, ptr %41, i32 1, !dbg !1589
  store ptr %42, ptr %6, align 8, !dbg !1589
  br label %23, !dbg !1574, !llvm.loop !1590

43:                                               ; preds = %39, %23
  %44 = load i32, ptr %7, align 4, !dbg !1592
  %45 = icmp ne i32 %44, 0, !dbg !1592
  br i1 %45, label %46, label %51, !dbg !1594

46:                                               ; preds = %43
  %47 = load ptr, ptr %5, align 8, !dbg !1595
  %48 = getelementptr inbounds i8, ptr %47, i64 1, !dbg !1597
  %49 = call i64 @atol(ptr noundef %48) #13, !dbg !1598
  %50 = trunc i64 %49 to i32, !dbg !1599
  store i32 %50, ptr %3, align 4, !dbg !1600
  store i32 1, ptr %4, align 4, !dbg !1601
  br label %58, !dbg !1602

51:                                               ; preds = %43
  %52 = load ptr, ptr %5, align 8, !dbg !1603
  store i8 0, ptr %52, align 1, !dbg !1605
  %53 = load ptr, ptr %2, align 8, !dbg !1606
  %54 = call i64 @atol(ptr noundef %53) #13, !dbg !1607
  %55 = trunc i64 %54 to i32, !dbg !1608
  store i32 %55, ptr %3, align 4, !dbg !1609
  store i32 1, ptr %4, align 4, !dbg !1610
  %56 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 72), align 8, !dbg !1611
  %57 = load ptr, ptr %5, align 8, !dbg !1612
  store i8 %56, ptr %57, align 1, !dbg !1613
  br label %58

58:                                               ; preds = %51, %46
  br label %59

59:                                               ; preds = %58, %18
  br label %60, !dbg !1614

60:                                               ; preds = %59, %1
  %61 = load i32, ptr %4, align 4, !dbg !1615
  %62 = icmp ne i32 %61, 0, !dbg !1615
  br i1 %62, label %67, label %63, !dbg !1617

63:                                               ; preds = %60
  %64 = load ptr, ptr %2, align 8, !dbg !1618
  %65 = call i64 @atol(ptr noundef %64) #13, !dbg !1620
  %66 = trunc i64 %65 to i32, !dbg !1621
  store i32 %66, ptr %3, align 4, !dbg !1622
  br label %67, !dbg !1623

67:                                               ; preds = %63, %60
  %68 = load i32, ptr %3, align 4, !dbg !1624
  ret i32 %68, !dbg !1625
}

declare i32 @stun_calculate_hmac(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

declare ptr @base64_encode(ptr noundef, i64 noundef, ptr noundef) #1

declare i32 @stun_produce_integrity_key_str(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) #1

declare i64 @get_hmackey_size(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @start_user_check(i8 noundef zeroext %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, i64 noundef %8, ptr noundef %9) #0 !dbg !1626 {
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca %struct.auth_message, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store i8 %0, ptr %11, align 1
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2182, metadata !DIExpression()), !dbg !2183
  store i32 %1, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2184, metadata !DIExpression()), !dbg !2185
  store i32 %2, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2186, metadata !DIExpression()), !dbg !2187
  store ptr %3, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2188, metadata !DIExpression()), !dbg !2189
  store ptr %4, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2190, metadata !DIExpression()), !dbg !2191
  store ptr %5, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2192, metadata !DIExpression()), !dbg !2193
  store ptr %6, ptr %17, align 8
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2194, metadata !DIExpression()), !dbg !2195
  store ptr %7, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2196, metadata !DIExpression()), !dbg !2197
  store i64 %8, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2198, metadata !DIExpression()), !dbg !2199
  store ptr %9, ptr %20, align 8
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2200, metadata !DIExpression()), !dbg !2201
  %24 = load ptr, ptr %20, align 8, !dbg !2202
  store i32 1, ptr %24, align 4, !dbg !2203
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2204, metadata !DIExpression()), !dbg !2220
  call void @llvm.memset.p0.i64(ptr align 8 %21, i8 0, i64 1056, i1 false), !dbg !2221
  %25 = load i8, ptr %11, align 1, !dbg !2222
  %26 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 0, !dbg !2223
  store i8 %25, ptr %26, align 8, !dbg !2224
  %27 = load i32, ptr %12, align 4, !dbg !2225
  %28 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 1, !dbg !2226
  store i32 %27, ptr %28, align 4, !dbg !2227
  %29 = load i32, ptr %13, align 4, !dbg !2228
  %30 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 2, !dbg !2229
  store i32 %29, ptr %30, align 8, !dbg !2230
  %31 = load ptr, ptr %14, align 8, !dbg !2231
  %32 = load i32, ptr %31, align 4, !dbg !2232
  %33 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 3, !dbg !2233
  store i32 %32, ptr %33, align 4, !dbg !2234
  br label %34, !dbg !2235

34:                                               ; preds = %10
  %35 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 5, !dbg !2236
  %36 = getelementptr inbounds [513 x i8], ptr %35, i64 0, i64 0, !dbg !2236
  %37 = load ptr, ptr %15, align 8, !dbg !2236
  %38 = icmp ne ptr %36, %37, !dbg !2236
  br i1 %38, label %39, label %50, !dbg !2239

39:                                               ; preds = %34
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2240, metadata !DIExpression()), !dbg !2244
  store i64 513, ptr %22, align 8, !dbg !2244
  %40 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 5, !dbg !2244
  %41 = getelementptr inbounds [513 x i8], ptr %40, i64 0, i64 0, !dbg !2244
  %42 = load ptr, ptr %15, align 8, !dbg !2244
  %43 = load i64, ptr %22, align 8, !dbg !2244
  %44 = call ptr @strncpy(ptr noundef %41, ptr noundef %42, i64 noundef %43) #10, !dbg !2244
  %45 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 5, !dbg !2244
  %46 = getelementptr inbounds [513 x i8], ptr %45, i64 0, i64 0, !dbg !2244
  %47 = load i64, ptr %22, align 8, !dbg !2244
  %48 = sub i64 %47, 1, !dbg !2244
  %49 = getelementptr inbounds i8, ptr %46, i64 %48, !dbg !2244
  store i8 0, ptr %49, align 1, !dbg !2244
  br label %50, !dbg !2245

50:                                               ; preds = %39, %34
  br label %51, !dbg !2239

51:                                               ; preds = %50
  br label %52, !dbg !2246

52:                                               ; preds = %51
  %53 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 6, !dbg !2247
  %54 = getelementptr inbounds [128 x i8], ptr %53, i64 0, i64 0, !dbg !2247
  %55 = load ptr, ptr %16, align 8, !dbg !2247
  %56 = icmp ne ptr %54, %55, !dbg !2247
  br i1 %56, label %57, label %68, !dbg !2250

57:                                               ; preds = %52
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2251, metadata !DIExpression()), !dbg !2255
  store i64 128, ptr %23, align 8, !dbg !2255
  %58 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 6, !dbg !2255
  %59 = getelementptr inbounds [128 x i8], ptr %58, i64 0, i64 0, !dbg !2255
  %60 = load ptr, ptr %16, align 8, !dbg !2255
  %61 = load i64, ptr %23, align 8, !dbg !2255
  %62 = call ptr @strncpy(ptr noundef %59, ptr noundef %60, i64 noundef %61) #10, !dbg !2255
  %63 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 6, !dbg !2255
  %64 = getelementptr inbounds [128 x i8], ptr %63, i64 0, i64 0, !dbg !2255
  %65 = load i64, ptr %23, align 8, !dbg !2255
  %66 = sub i64 %65, 1, !dbg !2255
  %67 = getelementptr inbounds i8, ptr %64, i64 %66, !dbg !2255
  store i8 0, ptr %67, align 1, !dbg !2255
  br label %68, !dbg !2256

68:                                               ; preds = %57, %52
  br label %69, !dbg !2250

69:                                               ; preds = %68
  %70 = load ptr, ptr %17, align 8, !dbg !2257
  %71 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 9, !dbg !2258
  store ptr %70, ptr %71, align 8, !dbg !2259
  %72 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 10, !dbg !2260
  %73 = load ptr, ptr %18, align 8, !dbg !2261
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %72, ptr align 8 %73, i64 48, i1 false), !dbg !2262
  %74 = load ptr, ptr %18, align 8, !dbg !2263
  %75 = getelementptr inbounds %struct._ioa_net_data, ptr %74, i32 0, i32 1, !dbg !2264
  store ptr null, ptr %75, align 8, !dbg !2265
  %76 = load i64, ptr %19, align 8, !dbg !2266
  %77 = getelementptr inbounds %struct.auth_message, ptr %21, i32 0, i32 11, !dbg !2267
  store i64 %76, ptr %77, align 8, !dbg !2268
  call void @send_auth_message_to_auth_server(ptr noundef %21), !dbg !2269
  ret ptr null, !dbg !2270
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @send_auth_message_to_auth_server(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_new_allocation_quota(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !2271 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2272, metadata !DIExpression()), !dbg !2273
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2274, metadata !DIExpression()), !dbg !2275
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2276, metadata !DIExpression()), !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2278, metadata !DIExpression()), !dbg !2279
  store i32 0, ptr %7, align 4, !dbg !2279
  %11 = load ptr, ptr %4, align 8, !dbg !2280
  %12 = icmp ne ptr %11, null, !dbg !2280
  br i1 %12, label %16, label %13, !dbg !2282

13:                                               ; preds = %3
  %14 = load i32, ptr %5, align 4, !dbg !2283
  %15 = icmp ne i32 %14, 0, !dbg !2283
  br i1 %15, label %16, label %128, !dbg !2284

16:                                               ; preds = %13, %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2285, metadata !DIExpression()), !dbg !2287
  %17 = load i32, ptr %5, align 4, !dbg !2288
  %18 = icmp ne i32 %17, 0, !dbg !2288
  br i1 %18, label %19, label %21, !dbg !2288

19:                                               ; preds = %16
  %20 = call noalias ptr @strdup(ptr noundef @.str.6) #10, !dbg !2289
  br label %24, !dbg !2288

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !2290
  %23 = call ptr @get_real_username(ptr noundef %22), !dbg !2291
  br label %24, !dbg !2288

24:                                               ; preds = %21, %19
  %25 = phi ptr [ %20, %19 ], [ %23, %21 ], !dbg !2288
  store ptr %25, ptr %8, align 8, !dbg !2287
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2292, metadata !DIExpression()), !dbg !2293
  %26 = load ptr, ptr %6, align 8, !dbg !2294
  %27 = call ptr @get_realm(ptr noundef %26), !dbg !2295
  store ptr %27, ptr %9, align 8, !dbg !2293
  %28 = load ptr, ptr %9, align 8, !dbg !2296
  %29 = getelementptr inbounds %struct._realm_params_t, ptr %28, i32 0, i32 2, !dbg !2297
  %30 = getelementptr inbounds %struct._realm_status_t, ptr %29, i32 0, i32 1, !dbg !2298
  %31 = load ptr, ptr %30, align 8, !dbg !2298
  %32 = call i32 @ur_string_map_lock(ptr noundef %31), !dbg !2299
  %33 = load ptr, ptr %9, align 8, !dbg !2300
  %34 = getelementptr inbounds %struct._realm_params_t, ptr %33, i32 0, i32 1, !dbg !2302
  %35 = getelementptr inbounds %struct._realm_options_t, ptr %34, i32 0, i32 1, !dbg !2303
  %36 = getelementptr inbounds %struct._perf_options_t, ptr %35, i32 0, i32 1, !dbg !2304
  %37 = load i32, ptr %36, align 8, !dbg !2304
  %38 = icmp ne i32 %37, 0, !dbg !2300
  br i1 %38, label %39, label %51, !dbg !2305

39:                                               ; preds = %24
  %40 = load ptr, ptr %9, align 8, !dbg !2306
  %41 = getelementptr inbounds %struct._realm_params_t, ptr %40, i32 0, i32 2, !dbg !2307
  %42 = getelementptr inbounds %struct._realm_status_t, ptr %41, i32 0, i32 0, !dbg !2308
  %43 = load i32, ptr %42, align 8, !dbg !2308
  %44 = load ptr, ptr %9, align 8, !dbg !2309
  %45 = getelementptr inbounds %struct._realm_params_t, ptr %44, i32 0, i32 1, !dbg !2310
  %46 = getelementptr inbounds %struct._realm_options_t, ptr %45, i32 0, i32 1, !dbg !2311
  %47 = getelementptr inbounds %struct._perf_options_t, ptr %46, i32 0, i32 1, !dbg !2312
  %48 = load i32, ptr %47, align 8, !dbg !2312
  %49 = icmp sge i32 %43, %48, !dbg !2313
  br i1 %49, label %50, label %51, !dbg !2314

50:                                               ; preds = %39
  store i32 -1, ptr %7, align 4, !dbg !2315
  br label %121, !dbg !2317

51:                                               ; preds = %39, %24
  %52 = load ptr, ptr %8, align 8, !dbg !2318
  %53 = getelementptr inbounds i8, ptr %52, i64 0, !dbg !2318
  %54 = load i8, ptr %53, align 1, !dbg !2318
  %55 = icmp ne i8 %54, 0, !dbg !2318
  br i1 %55, label %56, label %114, !dbg !2320

56:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2321, metadata !DIExpression()), !dbg !2323
  store ptr null, ptr %10, align 8, !dbg !2323
  %57 = load ptr, ptr %9, align 8, !dbg !2324
  %58 = getelementptr inbounds %struct._realm_params_t, ptr %57, i32 0, i32 2, !dbg !2326
  %59 = getelementptr inbounds %struct._realm_status_t, ptr %58, i32 0, i32 1, !dbg !2327
  %60 = load ptr, ptr %59, align 8, !dbg !2327
  %61 = load ptr, ptr %8, align 8, !dbg !2328
  %62 = call i32 @ur_string_map_get(ptr noundef %60, ptr noundef %61, ptr noundef %10), !dbg !2329
  %63 = icmp ne i32 %62, 0, !dbg !2329
  br i1 %63, label %77, label %64, !dbg !2330

64:                                               ; preds = %56
  store ptr inttoptr (i64 1 to ptr), ptr %10, align 8, !dbg !2331
  %65 = load ptr, ptr %9, align 8, !dbg !2333
  %66 = getelementptr inbounds %struct._realm_params_t, ptr %65, i32 0, i32 2, !dbg !2334
  %67 = getelementptr inbounds %struct._realm_status_t, ptr %66, i32 0, i32 1, !dbg !2335
  %68 = load ptr, ptr %67, align 8, !dbg !2335
  %69 = load ptr, ptr %8, align 8, !dbg !2336
  %70 = load ptr, ptr %10, align 8, !dbg !2337
  %71 = call i32 @ur_string_map_put(ptr noundef %68, ptr noundef %69, ptr noundef %70), !dbg !2338
  %72 = load ptr, ptr %9, align 8, !dbg !2339
  %73 = getelementptr inbounds %struct._realm_params_t, ptr %72, i32 0, i32 2, !dbg !2340
  %74 = getelementptr inbounds %struct._realm_status_t, ptr %73, i32 0, i32 0, !dbg !2341
  %75 = load i32, ptr %74, align 8, !dbg !2342
  %76 = add nsw i32 %75, 1, !dbg !2342
  store i32 %76, ptr %74, align 8, !dbg !2342
  br label %113, !dbg !2343

77:                                               ; preds = %56
  %78 = load ptr, ptr %9, align 8, !dbg !2344
  %79 = getelementptr inbounds %struct._realm_params_t, ptr %78, i32 0, i32 1, !dbg !2347
  %80 = getelementptr inbounds %struct._realm_options_t, ptr %79, i32 0, i32 1, !dbg !2348
  %81 = getelementptr inbounds %struct._perf_options_t, ptr %80, i32 0, i32 2, !dbg !2349
  %82 = load i32, ptr %81, align 4, !dbg !2349
  %83 = icmp ne i32 %82, 0, !dbg !2350
  br i1 %83, label %84, label %95, !dbg !2351

84:                                               ; preds = %77
  %85 = load ptr, ptr %10, align 8, !dbg !2352
  %86 = ptrtoint ptr %85 to i64, !dbg !2353
  %87 = load ptr, ptr %9, align 8, !dbg !2354
  %88 = getelementptr inbounds %struct._realm_params_t, ptr %87, i32 0, i32 1, !dbg !2355
  %89 = getelementptr inbounds %struct._realm_options_t, ptr %88, i32 0, i32 1, !dbg !2356
  %90 = getelementptr inbounds %struct._perf_options_t, ptr %89, i32 0, i32 2, !dbg !2357
  %91 = load i32, ptr %90, align 4, !dbg !2357
  %92 = sext i32 %91 to i64, !dbg !2358
  %93 = icmp uge i64 %86, %92, !dbg !2359
  br i1 %93, label %94, label %95, !dbg !2360

94:                                               ; preds = %84
  store i32 -1, ptr %7, align 4, !dbg !2361
  br label %112, !dbg !2363

95:                                               ; preds = %84, %77
  %96 = load ptr, ptr %10, align 8, !dbg !2364
  %97 = ptrtoint ptr %96 to i64, !dbg !2366
  %98 = add i64 %97, 1, !dbg !2367
  %99 = inttoptr i64 %98 to ptr, !dbg !2368
  store ptr %99, ptr %10, align 8, !dbg !2369
  %100 = load ptr, ptr %9, align 8, !dbg !2370
  %101 = getelementptr inbounds %struct._realm_params_t, ptr %100, i32 0, i32 2, !dbg !2371
  %102 = getelementptr inbounds %struct._realm_status_t, ptr %101, i32 0, i32 1, !dbg !2372
  %103 = load ptr, ptr %102, align 8, !dbg !2372
  %104 = load ptr, ptr %8, align 8, !dbg !2373
  %105 = load ptr, ptr %10, align 8, !dbg !2374
  %106 = call i32 @ur_string_map_put(ptr noundef %103, ptr noundef %104, ptr noundef %105), !dbg !2375
  %107 = load ptr, ptr %9, align 8, !dbg !2376
  %108 = getelementptr inbounds %struct._realm_params_t, ptr %107, i32 0, i32 2, !dbg !2377
  %109 = getelementptr inbounds %struct._realm_status_t, ptr %108, i32 0, i32 0, !dbg !2378
  %110 = load i32, ptr %109, align 8, !dbg !2379
  %111 = add nsw i32 %110, 1, !dbg !2379
  store i32 %111, ptr %109, align 8, !dbg !2379
  br label %112

112:                                              ; preds = %95, %94
  br label %113

113:                                              ; preds = %112, %64
  br label %120, !dbg !2380

114:                                              ; preds = %51
  %115 = load ptr, ptr %9, align 8, !dbg !2381
  %116 = getelementptr inbounds %struct._realm_params_t, ptr %115, i32 0, i32 2, !dbg !2383
  %117 = getelementptr inbounds %struct._realm_status_t, ptr %116, i32 0, i32 0, !dbg !2384
  %118 = load i32, ptr %117, align 8, !dbg !2385
  %119 = add nsw i32 %118, 1, !dbg !2385
  store i32 %119, ptr %117, align 8, !dbg !2385
  br label %120

120:                                              ; preds = %114, %113
  br label %121

121:                                              ; preds = %120, %50
  %122 = load ptr, ptr %8, align 8, !dbg !2386
  call void @free(ptr noundef %122) #10, !dbg !2387
  %123 = load ptr, ptr %9, align 8, !dbg !2388
  %124 = getelementptr inbounds %struct._realm_params_t, ptr %123, i32 0, i32 2, !dbg !2389
  %125 = getelementptr inbounds %struct._realm_status_t, ptr %124, i32 0, i32 1, !dbg !2390
  %126 = load ptr, ptr %125, align 8, !dbg !2390
  %127 = call i32 @ur_string_map_unlock(ptr noundef %126), !dbg !2391
  br label %128, !dbg !2392

128:                                              ; preds = %121, %13
  %129 = load i32, ptr %7, align 4, !dbg !2393
  ret i32 %129, !dbg !2394
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_real_username(ptr noundef %0) #0 !dbg !2395 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2398, metadata !DIExpression()), !dbg !2399
  %7 = load ptr, ptr %3, align 8, !dbg !2400
  %8 = getelementptr inbounds i8, ptr %7, i64 0, !dbg !2400
  %9 = load i8, ptr %8, align 1, !dbg !2400
  %10 = sext i8 %9 to i32, !dbg !2400
  %11 = icmp ne i32 %10, 0, !dbg !2400
  br i1 %11, label %12, label %67, !dbg !2402

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 79), align 4, !dbg !2403
  %14 = icmp ne i32 %13, 0, !dbg !2404
  br i1 %14, label %15, label %67, !dbg !2405

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2406, metadata !DIExpression()), !dbg !2408
  %16 = load ptr, ptr %3, align 8, !dbg !2409
  %17 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 72), align 8, !dbg !2410
  %18 = sext i8 %17 to i32, !dbg !2411
  %19 = call ptr @strchr(ptr noundef %16, i32 noundef %18) #13, !dbg !2412
  store ptr %19, ptr %4, align 8, !dbg !2408
  %20 = load ptr, ptr %4, align 8, !dbg !2413
  %21 = icmp ne ptr %20, null, !dbg !2413
  br i1 %21, label %22, label %66, !dbg !2415

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !dbg !2416
  %24 = load ptr, ptr %3, align 8, !dbg !2419
  %25 = icmp eq ptr %23, %24, !dbg !2420
  br i1 %25, label %26, label %29, !dbg !2421

26:                                               ; preds = %22
  %27 = load ptr, ptr %3, align 8, !dbg !2422
  %28 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !2422
  store ptr %28, ptr %3, align 8, !dbg !2422
  br label %65, !dbg !2424

29:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2425, metadata !DIExpression()), !dbg !2427
  %30 = load ptr, ptr %3, align 8, !dbg !2428
  store ptr %30, ptr %5, align 8, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2429, metadata !DIExpression()), !dbg !2430
  store i32 0, ptr %6, align 4, !dbg !2430
  br label %31, !dbg !2431

31:                                               ; preds = %48, %29
  %32 = load ptr, ptr %5, align 8, !dbg !2432
  %33 = load ptr, ptr %4, align 8, !dbg !2433
  %34 = icmp ult ptr %32, %33, !dbg !2434
  br i1 %34, label %35, label %51, !dbg !2431

35:                                               ; preds = %31
  %36 = load ptr, ptr %5, align 8, !dbg !2435
  %37 = getelementptr inbounds i8, ptr %36, i64 0, !dbg !2435
  %38 = load i8, ptr %37, align 1, !dbg !2435
  %39 = sext i8 %38 to i32, !dbg !2435
  %40 = icmp sge i32 %39, 48, !dbg !2438
  br i1 %40, label %41, label %47, !dbg !2439

41:                                               ; preds = %35
  %42 = load ptr, ptr %5, align 8, !dbg !2440
  %43 = getelementptr inbounds i8, ptr %42, i64 0, !dbg !2440
  %44 = load i8, ptr %43, align 1, !dbg !2440
  %45 = sext i8 %44 to i32, !dbg !2440
  %46 = icmp sle i32 %45, 57, !dbg !2441
  br i1 %46, label %48, label %47, !dbg !2442

47:                                               ; preds = %41, %35
  store i32 1, ptr %6, align 4, !dbg !2443
  br label %51, !dbg !2445

48:                                               ; preds = %41
  %49 = load ptr, ptr %5, align 8, !dbg !2446
  %50 = getelementptr inbounds i8, ptr %49, i32 1, !dbg !2446
  store ptr %50, ptr %5, align 8, !dbg !2446
  br label %31, !dbg !2431, !llvm.loop !2447

51:                                               ; preds = %47, %31
  %52 = load i32, ptr %6, align 4, !dbg !2449
  %53 = icmp ne i32 %52, 0, !dbg !2449
  br i1 %53, label %57, label %54, !dbg !2451

54:                                               ; preds = %51
  %55 = load ptr, ptr %4, align 8, !dbg !2452
  %56 = getelementptr inbounds i8, ptr %55, i64 1, !dbg !2454
  store ptr %56, ptr %3, align 8, !dbg !2455
  br label %64, !dbg !2456

57:                                               ; preds = %51
  %58 = load ptr, ptr %4, align 8, !dbg !2457
  store i8 0, ptr %58, align 1, !dbg !2459
  %59 = load ptr, ptr %3, align 8, !dbg !2460
  %60 = call noalias ptr @strdup(ptr noundef %59) #10, !dbg !2461
  store ptr %60, ptr %3, align 8, !dbg !2462
  %61 = load i8, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 72), align 8, !dbg !2463
  %62 = load ptr, ptr %4, align 8, !dbg !2464
  store i8 %61, ptr %62, align 1, !dbg !2465
  %63 = load ptr, ptr %3, align 8, !dbg !2466
  store ptr %63, ptr %2, align 8, !dbg !2467
  br label %70, !dbg !2467

64:                                               ; preds = %54
  br label %65

65:                                               ; preds = %64, %26
  br label %66, !dbg !2468

66:                                               ; preds = %65, %15
  br label %67, !dbg !2469

67:                                               ; preds = %66, %12, %1
  %68 = load ptr, ptr %3, align 8, !dbg !2470
  %69 = call noalias ptr @strdup(ptr noundef %68) #10, !dbg !2471
  store ptr %69, ptr %2, align 8, !dbg !2472
  br label %70, !dbg !2472

70:                                               ; preds = %67, %57
  %71 = load ptr, ptr %2, align 8, !dbg !2473
  ret ptr %71, !dbg !2473
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @release_allocation_quota(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !2474 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2475, metadata !DIExpression()), !dbg !2476
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2477, metadata !DIExpression()), !dbg !2478
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2479, metadata !DIExpression()), !dbg !2480
  %10 = load ptr, ptr %4, align 8, !dbg !2481
  %11 = icmp ne ptr %10, null, !dbg !2481
  br i1 %11, label %12, label %74, !dbg !2483

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2484, metadata !DIExpression()), !dbg !2486
  %13 = load i32, ptr %5, align 4, !dbg !2487
  %14 = icmp ne i32 %13, 0, !dbg !2487
  br i1 %14, label %15, label %17, !dbg !2487

15:                                               ; preds = %12
  %16 = call noalias ptr @strdup(ptr noundef @.str.6) #10, !dbg !2488
  br label %20, !dbg !2487

17:                                               ; preds = %12
  %18 = load ptr, ptr %4, align 8, !dbg !2489
  %19 = call ptr @get_real_username(ptr noundef %18), !dbg !2490
  br label %20, !dbg !2487

20:                                               ; preds = %17, %15
  %21 = phi ptr [ %16, %15 ], [ %19, %17 ], !dbg !2487
  store ptr %21, ptr %7, align 8, !dbg !2486
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2491, metadata !DIExpression()), !dbg !2492
  %22 = load ptr, ptr %6, align 8, !dbg !2493
  %23 = call ptr @get_realm(ptr noundef %22), !dbg !2494
  store ptr %23, ptr %8, align 8, !dbg !2492
  %24 = load ptr, ptr %8, align 8, !dbg !2495
  %25 = getelementptr inbounds %struct._realm_params_t, ptr %24, i32 0, i32 2, !dbg !2496
  %26 = getelementptr inbounds %struct._realm_status_t, ptr %25, i32 0, i32 1, !dbg !2497
  %27 = load ptr, ptr %26, align 8, !dbg !2497
  %28 = call i32 @ur_string_map_lock(ptr noundef %27), !dbg !2498
  %29 = load ptr, ptr %7, align 8, !dbg !2499
  %30 = getelementptr inbounds i8, ptr %29, i64 0, !dbg !2499
  %31 = load i8, ptr %30, align 1, !dbg !2499
  %32 = icmp ne i8 %31, 0, !dbg !2499
  br i1 %32, label %33, label %55, !dbg !2501

33:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2502, metadata !DIExpression()), !dbg !2504
  store ptr null, ptr %9, align 8, !dbg !2504
  %34 = load ptr, ptr %8, align 8, !dbg !2505
  %35 = getelementptr inbounds %struct._realm_params_t, ptr %34, i32 0, i32 2, !dbg !2506
  %36 = getelementptr inbounds %struct._realm_status_t, ptr %35, i32 0, i32 1, !dbg !2507
  %37 = load ptr, ptr %36, align 8, !dbg !2507
  %38 = load ptr, ptr %7, align 8, !dbg !2508
  %39 = call i32 @ur_string_map_get(ptr noundef %37, ptr noundef %38, ptr noundef %9), !dbg !2509
  %40 = load ptr, ptr %9, align 8, !dbg !2510
  %41 = icmp ne ptr %40, null, !dbg !2510
  br i1 %41, label %42, label %54, !dbg !2512

42:                                               ; preds = %33
  %43 = load ptr, ptr %9, align 8, !dbg !2513
  %44 = ptrtoint ptr %43 to i64, !dbg !2515
  %45 = sub i64 %44, 1, !dbg !2516
  %46 = inttoptr i64 %45 to ptr, !dbg !2517
  store ptr %46, ptr %9, align 8, !dbg !2518
  %47 = load ptr, ptr %8, align 8, !dbg !2519
  %48 = getelementptr inbounds %struct._realm_params_t, ptr %47, i32 0, i32 2, !dbg !2520
  %49 = getelementptr inbounds %struct._realm_status_t, ptr %48, i32 0, i32 1, !dbg !2521
  %50 = load ptr, ptr %49, align 8, !dbg !2521
  %51 = load ptr, ptr %7, align 8, !dbg !2522
  %52 = load ptr, ptr %9, align 8, !dbg !2523
  %53 = call i32 @ur_string_map_put(ptr noundef %50, ptr noundef %51, ptr noundef %52), !dbg !2524
  br label %54, !dbg !2525

54:                                               ; preds = %42, %33
  br label %55, !dbg !2526

55:                                               ; preds = %54, %20
  %56 = load ptr, ptr %8, align 8, !dbg !2527
  %57 = getelementptr inbounds %struct._realm_params_t, ptr %56, i32 0, i32 2, !dbg !2529
  %58 = getelementptr inbounds %struct._realm_status_t, ptr %57, i32 0, i32 0, !dbg !2530
  %59 = load i32, ptr %58, align 8, !dbg !2530
  %60 = icmp ne i32 %59, 0, !dbg !2527
  br i1 %60, label %61, label %67, !dbg !2531

61:                                               ; preds = %55
  %62 = load ptr, ptr %8, align 8, !dbg !2532
  %63 = getelementptr inbounds %struct._realm_params_t, ptr %62, i32 0, i32 2, !dbg !2533
  %64 = getelementptr inbounds %struct._realm_status_t, ptr %63, i32 0, i32 0, !dbg !2534
  %65 = load i32, ptr %64, align 8, !dbg !2535
  %66 = add nsw i32 %65, -1, !dbg !2535
  store i32 %66, ptr %64, align 8, !dbg !2535
  br label %67, !dbg !2535

67:                                               ; preds = %61, %55
  %68 = load ptr, ptr %8, align 8, !dbg !2536
  %69 = getelementptr inbounds %struct._realm_params_t, ptr %68, i32 0, i32 2, !dbg !2537
  %70 = getelementptr inbounds %struct._realm_status_t, ptr %69, i32 0, i32 1, !dbg !2538
  %71 = load ptr, ptr %70, align 8, !dbg !2538
  %72 = call i32 @ur_string_map_unlock(ptr noundef %71), !dbg !2539
  %73 = load ptr, ptr %7, align 8, !dbg !2540
  call void @free(ptr noundef %73) #10, !dbg !2541
  br label %74, !dbg !2542

74:                                               ; preds = %67, %3
  ret void, !dbg !2543
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_static_user_account(ptr noundef %0) #0 !dbg !2544 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2547, metadata !DIExpression()), !dbg !2548
  %10 = load ptr, ptr %3, align 8, !dbg !2549
  %11 = icmp ne ptr %10, null, !dbg !2549
  br i1 %11, label %12, label %109, !dbg !2551

12:                                               ; preds = %1
  %13 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 79), align 4, !dbg !2552
  %14 = icmp ne i32 %13, 0, !dbg !2553
  br i1 %14, label %109, label %15, !dbg !2554

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2555, metadata !DIExpression()), !dbg !2557
  %16 = load ptr, ptr %3, align 8, !dbg !2558
  %17 = call ptr @strstr(ptr noundef %16, ptr noundef @.str.7) #13, !dbg !2559
  store ptr %17, ptr %4, align 8, !dbg !2557
  %18 = load ptr, ptr %4, align 8, !dbg !2560
  %19 = icmp ne ptr %18, null, !dbg !2560
  br i1 %19, label %20, label %28, !dbg !2562

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !dbg !2563
  %22 = load ptr, ptr %3, align 8, !dbg !2564
  %23 = icmp eq ptr %21, %22, !dbg !2565
  br i1 %23, label %28, label %24, !dbg !2566

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !dbg !2567
  %26 = call i64 @strlen(ptr noundef %25) #13, !dbg !2568
  %27 = icmp ult i64 %26, 2, !dbg !2569
  br i1 %27, label %28, label %30, !dbg !2570

28:                                               ; preds = %24, %20, %15
  %29 = load ptr, ptr %3, align 8, !dbg !2571
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.8, ptr noundef %29), !dbg !2573
  br label %108, !dbg !2574

30:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2575, metadata !DIExpression()), !dbg !2577
  %31 = load ptr, ptr %4, align 8, !dbg !2578
  %32 = load ptr, ptr %3, align 8, !dbg !2579
  %33 = ptrtoint ptr %31 to i64, !dbg !2580
  %34 = ptrtoint ptr %32 to i64, !dbg !2580
  %35 = sub i64 %33, %34, !dbg !2580
  store i64 %35, ptr %5, align 8, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2581, metadata !DIExpression()), !dbg !2582
  %36 = load i64, ptr %5, align 8, !dbg !2583
  %37 = add i64 %36, 1, !dbg !2584
  %38 = mul i64 1, %37, !dbg !2585
  %39 = call noalias ptr @malloc(i64 noundef %38) #12, !dbg !2586
  store ptr %39, ptr %6, align 8, !dbg !2582
  %40 = load ptr, ptr %6, align 8, !dbg !2587
  %41 = load ptr, ptr %3, align 8, !dbg !2588
  %42 = load i64, ptr %5, align 8, !dbg !2589
  %43 = call ptr @strncpy(ptr noundef %40, ptr noundef %41, i64 noundef %42) #10, !dbg !2590
  %44 = load ptr, ptr %6, align 8, !dbg !2591
  %45 = load i64, ptr %5, align 8, !dbg !2592
  %46 = getelementptr inbounds i8, ptr %44, i64 %45, !dbg !2591
  store i8 0, ptr %46, align 1, !dbg !2593
  %47 = load ptr, ptr %6, align 8, !dbg !2594
  %48 = call i32 @SASLprep(ptr noundef %47), !dbg !2596
  %49 = icmp slt i32 %48, 0, !dbg !2597
  br i1 %49, label %50, label %53, !dbg !2598

50:                                               ; preds = %30
  %51 = load ptr, ptr %3, align 8, !dbg !2599
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.9, ptr noundef %51), !dbg !2601
  %52 = load ptr, ptr %6, align 8, !dbg !2602
  call void @free(ptr noundef %52) #10, !dbg !2603
  store i32 -1, ptr %2, align 4, !dbg !2604
  br label %110, !dbg !2604

53:                                               ; preds = %30
  %54 = load ptr, ptr %4, align 8, !dbg !2605
  %55 = getelementptr inbounds i8, ptr %54, i64 1, !dbg !2606
  %56 = call ptr @skip_blanks(ptr noundef %55), !dbg !2607
  store ptr %56, ptr %4, align 8, !dbg !2608
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2609, metadata !DIExpression()), !dbg !2610
  %57 = call noalias ptr @malloc(i64 noundef 64) #12, !dbg !2611
  store ptr %57, ptr %7, align 8, !dbg !2610
  %58 = load ptr, ptr %4, align 8, !dbg !2612
  %59 = call ptr @strstr(ptr noundef %58, ptr noundef @.str.10) #13, !dbg !2614
  %60 = load ptr, ptr %4, align 8, !dbg !2615
  %61 = icmp eq ptr %59, %60, !dbg !2616
  br i1 %61, label %62, label %85, !dbg !2617

62:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2618, metadata !DIExpression()), !dbg !2620
  %63 = load ptr, ptr %4, align 8, !dbg !2621
  %64 = getelementptr inbounds i8, ptr %63, i64 2, !dbg !2622
  store ptr %64, ptr %8, align 8, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2623, metadata !DIExpression()), !dbg !2624
  %65 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !2625
  store i64 %65, ptr %9, align 8, !dbg !2624
  %66 = load ptr, ptr %8, align 8, !dbg !2626
  %67 = call i64 @strlen(ptr noundef %66) #13, !dbg !2628
  %68 = load i64, ptr %9, align 8, !dbg !2629
  %69 = mul i64 %68, 2, !dbg !2630
  %70 = icmp ult i64 %67, %69, !dbg !2631
  br i1 %70, label %71, label %73, !dbg !2632

71:                                               ; preds = %62
  %72 = load ptr, ptr %4, align 8, !dbg !2633
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.11, ptr noundef %72), !dbg !2635
  br label %73, !dbg !2636

73:                                               ; preds = %71, %62
  %74 = load ptr, ptr %8, align 8, !dbg !2637
  %75 = load ptr, ptr %7, align 8, !dbg !2639
  %76 = getelementptr inbounds [64 x i8], ptr %75, i64 0, i64 0, !dbg !2640
  %77 = load i64, ptr %9, align 8, !dbg !2641
  %78 = call i32 @convert_string_key_to_binary(ptr noundef %74, ptr noundef %76, i64 noundef %77), !dbg !2642
  %79 = icmp slt i32 %78, 0, !dbg !2643
  br i1 %79, label %80, label %84, !dbg !2644

80:                                               ; preds = %73
  %81 = load ptr, ptr %4, align 8, !dbg !2645
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.12, ptr noundef %81), !dbg !2647
  %82 = load ptr, ptr %6, align 8, !dbg !2648
  call void @free(ptr noundef %82) #10, !dbg !2649
  %83 = load ptr, ptr %7, align 8, !dbg !2650
  call void @free(ptr noundef %83) #10, !dbg !2651
  store i32 -1, ptr %2, align 4, !dbg !2652
  br label %110, !dbg !2652

84:                                               ; preds = %73
  br label %95, !dbg !2653

85:                                               ; preds = %53
  %86 = load ptr, ptr %6, align 8, !dbg !2654
  %87 = call ptr @get_realm(ptr noundef null), !dbg !2656
  %88 = getelementptr inbounds %struct._realm_params_t, ptr %87, i32 0, i32 1, !dbg !2657
  %89 = getelementptr inbounds %struct._realm_options_t, ptr %88, i32 0, i32 0, !dbg !2658
  %90 = getelementptr inbounds [128 x i8], ptr %89, i64 0, i64 0, !dbg !2656
  %91 = load ptr, ptr %4, align 8, !dbg !2659
  %92 = load ptr, ptr %7, align 8, !dbg !2660
  %93 = getelementptr inbounds [64 x i8], ptr %92, i64 0, i64 0, !dbg !2661
  %94 = call i32 @stun_produce_integrity_key_str(ptr noundef %86, ptr noundef %90, ptr noundef %91, ptr noundef %93, i32 noundef 0), !dbg !2662
  br label %95

95:                                               ; preds = %85, %84
  %96 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !2663
  %97 = call i32 @ur_string_map_lock(ptr noundef %96), !dbg !2665
  %98 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !2666
  %99 = load ptr, ptr %6, align 8, !dbg !2667
  %100 = load ptr, ptr %7, align 8, !dbg !2668
  %101 = getelementptr inbounds [64 x i8], ptr %100, i64 0, i64 0, !dbg !2669
  %102 = call i32 @ur_string_map_put(ptr noundef %98, ptr noundef %99, ptr noundef %101), !dbg !2670
  %103 = load ptr, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2, i32 1), align 8, !dbg !2671
  %104 = call i32 @ur_string_map_unlock(ptr noundef %103), !dbg !2672
  %105 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2), align 8, !dbg !2673
  %106 = add i64 %105, 1, !dbg !2673
  store i64 %106, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 86, i32 2), align 8, !dbg !2673
  %107 = load ptr, ptr %6, align 8, !dbg !2674
  call void @free(ptr noundef %107) #10, !dbg !2675
  store i32 0, ptr %2, align 4, !dbg !2676
  br label %110, !dbg !2676

108:                                              ; preds = %28
  br label %109, !dbg !2677

109:                                              ; preds = %108, %12, %1
  store i32 -1, ptr %2, align 4, !dbg !2678
  br label %110, !dbg !2678

110:                                              ; preds = %109, %95, %80, %50
  %111 = load i32, ptr %2, align 4, !dbg !2679
  ret i32 %111, !dbg !2679
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #7

declare i32 @SASLprep(ptr noundef) #1

declare ptr @skip_blanks(ptr noundef) #1

declare i32 @convert_string_key_to_binary(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adminuser(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7) #0 !dbg !2680 {
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca ptr, align 8
  %17 = alloca i32, align 4
  %18 = alloca [64 x i8], align 16
  %19 = alloca [129 x i8], align 16
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca [257 x i8], align 16
  store ptr %0, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2685, metadata !DIExpression()), !dbg !2686
  store ptr %1, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2687, metadata !DIExpression()), !dbg !2688
  store ptr %2, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2689, metadata !DIExpression()), !dbg !2690
  store ptr %3, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2691, metadata !DIExpression()), !dbg !2692
  store ptr %4, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2693, metadata !DIExpression()), !dbg !2694
  store i32 %5, ptr %15, align 4
  call void @llvm.dbg.declare(metadata ptr %15, metadata !2695, metadata !DIExpression()), !dbg !2696
  store ptr %6, ptr %16, align 8
  call void @llvm.dbg.declare(metadata ptr %16, metadata !2697, metadata !DIExpression()), !dbg !2698
  store i32 %7, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !2699, metadata !DIExpression()), !dbg !2700
  call void @llvm.dbg.declare(metadata ptr %18, metadata !2701, metadata !DIExpression()), !dbg !2702
  call void @llvm.dbg.declare(metadata ptr %19, metadata !2703, metadata !DIExpression()), !dbg !2704
  %26 = load i32, ptr %15, align 4, !dbg !2705
  %27 = icmp eq i32 %26, 4, !dbg !2707
  br i1 %27, label %28, label %32, !dbg !2708

28:                                               ; preds = %8
  %29 = load ptr, ptr %11, align 8, !dbg !2709
  %30 = load i32, ptr %17, align 4, !dbg !2711
  %31 = call i32 @list_users(ptr noundef %29, i32 noundef %30), !dbg !2712
  store i32 %31, ptr %9, align 4, !dbg !2713
  br label %247, !dbg !2713

32:                                               ; preds = %8
  %33 = load i32, ptr %15, align 4, !dbg !2714
  %34 = icmp eq i32 %33, 10, !dbg !2716
  br i1 %34, label %35, label %38, !dbg !2717

35:                                               ; preds = %32
  %36 = load ptr, ptr %11, align 8, !dbg !2718
  %37 = call i32 @list_origins(ptr noundef %36), !dbg !2720
  store i32 %37, ptr %9, align 4, !dbg !2721
  br label %247, !dbg !2721

38:                                               ; preds = %32
  %39 = load i32, ptr %15, align 4, !dbg !2722
  %40 = icmp eq i32 %39, 6, !dbg !2724
  br i1 %40, label %41, label %44, !dbg !2725

41:                                               ; preds = %38
  %42 = load ptr, ptr %11, align 8, !dbg !2726
  %43 = call i32 @show_secret(ptr noundef %42), !dbg !2728
  store i32 %43, ptr %9, align 4, !dbg !2729
  br label %247, !dbg !2729

44:                                               ; preds = %38
  %45 = load i32, ptr %15, align 4, !dbg !2730
  %46 = icmp eq i32 %45, 5, !dbg !2732
  br i1 %46, label %47, label %51, !dbg !2733

47:                                               ; preds = %44
  %48 = load ptr, ptr %13, align 8, !dbg !2734
  %49 = load ptr, ptr %11, align 8, !dbg !2736
  %50 = call i32 @set_secret(ptr noundef %48, ptr noundef %49), !dbg !2737
  store i32 %50, ptr %9, align 4, !dbg !2738
  br label %247, !dbg !2738

51:                                               ; preds = %44
  %52 = load i32, ptr %15, align 4, !dbg !2739
  %53 = icmp eq i32 %52, 7, !dbg !2741
  br i1 %53, label %54, label %58, !dbg !2742

54:                                               ; preds = %51
  %55 = load ptr, ptr %13, align 8, !dbg !2743
  %56 = load ptr, ptr %11, align 8, !dbg !2745
  %57 = call i32 @del_secret(ptr noundef %55, ptr noundef %56), !dbg !2746
  store i32 %57, ptr %9, align 4, !dbg !2747
  br label %247, !dbg !2747

58:                                               ; preds = %51
  %59 = load i32, ptr %15, align 4, !dbg !2748
  %60 = icmp eq i32 %59, 8, !dbg !2750
  br i1 %60, label %61, label %67, !dbg !2751

61:                                               ; preds = %58
  %62 = load ptr, ptr %14, align 8, !dbg !2752
  call void @must_set_admin_origin(ptr noundef %62), !dbg !2754
  %63 = load ptr, ptr %11, align 8, !dbg !2755
  call void @must_set_admin_realm(ptr noundef %63), !dbg !2756
  %64 = load ptr, ptr %14, align 8, !dbg !2757
  %65 = load ptr, ptr %11, align 8, !dbg !2758
  %66 = call i32 @add_origin(ptr noundef %64, ptr noundef %65), !dbg !2759
  store i32 %66, ptr %9, align 4, !dbg !2760
  br label %247, !dbg !2760

67:                                               ; preds = %58
  %68 = load i32, ptr %15, align 4, !dbg !2761
  %69 = icmp eq i32 %68, 9, !dbg !2763
  br i1 %69, label %70, label %74, !dbg !2764

70:                                               ; preds = %67
  %71 = load ptr, ptr %14, align 8, !dbg !2765
  call void @must_set_admin_origin(ptr noundef %71), !dbg !2767
  %72 = load ptr, ptr %14, align 8, !dbg !2768
  %73 = call i32 @del_origin(ptr noundef %72), !dbg !2769
  store i32 %73, ptr %9, align 4, !dbg !2770
  br label %247, !dbg !2770

74:                                               ; preds = %67
  %75 = load i32, ptr %15, align 4, !dbg !2771
  %76 = icmp eq i32 %75, 11, !dbg !2773
  br i1 %76, label %77, label %103, !dbg !2774

77:                                               ; preds = %74
  %78 = load ptr, ptr %11, align 8, !dbg !2775
  call void @must_set_admin_realm(ptr noundef %78), !dbg !2777
  %79 = load ptr, ptr %16, align 8, !dbg !2778
  %80 = icmp ne ptr %79, null, !dbg !2778
  br i1 %80, label %81, label %96, !dbg !2780

81:                                               ; preds = %77
  %82 = load ptr, ptr %16, align 8, !dbg !2781
  %83 = getelementptr inbounds %struct._perf_options_t, ptr %82, i32 0, i32 0, !dbg !2782
  %84 = load volatile i64, ptr %83, align 8, !dbg !2782
  %85 = icmp ne i64 %84, -1, !dbg !2783
  br i1 %85, label %99, label %86, !dbg !2784

86:                                               ; preds = %81
  %87 = load ptr, ptr %16, align 8, !dbg !2785
  %88 = getelementptr inbounds %struct._perf_options_t, ptr %87, i32 0, i32 1, !dbg !2786
  %89 = load i32, ptr %88, align 8, !dbg !2786
  %90 = icmp sge i32 %89, 0, !dbg !2787
  br i1 %90, label %99, label %91, !dbg !2788

91:                                               ; preds = %86
  %92 = load ptr, ptr %16, align 8, !dbg !2789
  %93 = getelementptr inbounds %struct._perf_options_t, ptr %92, i32 0, i32 2, !dbg !2790
  %94 = load i32, ptr %93, align 4, !dbg !2790
  %95 = icmp sge i32 %94, 0, !dbg !2791
  br i1 %95, label %99, label %96, !dbg !2792

96:                                               ; preds = %91, %77
  %97 = load ptr, ptr @stderr, align 8, !dbg !2793
  %98 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %97, ptr noundef @.str.13), !dbg !2795
  call void @exit(i32 noundef -1) #14, !dbg !2796
  unreachable, !dbg !2796

99:                                               ; preds = %91, %86, %81
  %100 = load ptr, ptr %11, align 8, !dbg !2797
  %101 = load ptr, ptr %16, align 8, !dbg !2798
  %102 = call i32 @set_realm_option(ptr noundef %100, ptr noundef %101), !dbg !2799
  store i32 %102, ptr %9, align 4, !dbg !2800
  br label %247, !dbg !2800

103:                                              ; preds = %74
  %104 = load i32, ptr %15, align 4, !dbg !2801
  %105 = icmp eq i32 %104, 12, !dbg !2803
  br i1 %105, label %106, label %109, !dbg !2804

106:                                              ; preds = %103
  %107 = load ptr, ptr %11, align 8, !dbg !2805
  %108 = call i32 @list_realm_options(ptr noundef %107), !dbg !2807
  store i32 %108, ptr %9, align 4, !dbg !2808
  br label %247, !dbg !2808

109:                                              ; preds = %103
  %110 = load ptr, ptr %10, align 8, !dbg !2809
  call void @must_set_admin_user(ptr noundef %110), !dbg !2810
  %111 = load i32, ptr %15, align 4, !dbg !2811
  %112 = icmp ne i32 %111, 3, !dbg !2813
  br i1 %112, label %113, label %158, !dbg !2814

113:                                              ; preds = %109
  %114 = load i32, ptr %17, align 4, !dbg !2815
  %115 = icmp ne i32 %114, 0, !dbg !2815
  br i1 %115, label %158, label %116, !dbg !2816

116:                                              ; preds = %113
  %117 = load ptr, ptr %12, align 8, !dbg !2817
  call void @must_set_admin_pwd(ptr noundef %117), !dbg !2819
  %118 = load ptr, ptr %10, align 8, !dbg !2820
  %119 = load ptr, ptr %11, align 8, !dbg !2822
  %120 = load ptr, ptr %12, align 8, !dbg !2823
  %121 = getelementptr inbounds [64 x i8], ptr %18, i64 0, i64 0, !dbg !2824
  %122 = call i32 @stun_produce_integrity_key_str(ptr noundef %118, ptr noundef %119, ptr noundef %120, ptr noundef %121, i32 noundef 0), !dbg !2825
  call void @llvm.dbg.declare(metadata ptr %20, metadata !2826, metadata !DIExpression()), !dbg !2827
  store i64 0, ptr %20, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %21, metadata !2828, metadata !DIExpression()), !dbg !2829
  %123 = call i64 @get_hmackey_size(i32 noundef 0), !dbg !2830
  store i64 %123, ptr %21, align 8, !dbg !2829
  call void @llvm.dbg.declare(metadata ptr %22, metadata !2831, metadata !DIExpression()), !dbg !2832
  %124 = load i64, ptr %21, align 8, !dbg !2833
  %125 = mul i64 %124, 2, !dbg !2834
  %126 = trunc i64 %125 to i32, !dbg !2835
  %127 = add nsw i32 %126, 1, !dbg !2836
  store i32 %127, ptr %22, align 4, !dbg !2832
  call void @llvm.dbg.declare(metadata ptr %23, metadata !2837, metadata !DIExpression()), !dbg !2838
  %128 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2839
  store ptr %128, ptr %23, align 8, !dbg !2838
  store i64 0, ptr %20, align 8, !dbg !2840
  br label %129, !dbg !2842

129:                                              ; preds = %151, %116
  %130 = load i64, ptr %20, align 8, !dbg !2843
  %131 = load i64, ptr %21, align 8, !dbg !2845
  %132 = icmp ult i64 %130, %131, !dbg !2846
  br i1 %132, label %133, label %136, !dbg !2847

133:                                              ; preds = %129
  %134 = load i32, ptr %22, align 4, !dbg !2848
  %135 = icmp sgt i32 %134, 2, !dbg !2849
  br label %136

136:                                              ; preds = %133, %129
  %137 = phi i1 [ false, %129 ], [ %135, %133 ], !dbg !2850
  br i1 %137, label %138, label %154, !dbg !2851

138:                                              ; preds = %136
  %139 = load ptr, ptr %23, align 8, !dbg !2852
  %140 = load i64, ptr %21, align 8, !dbg !2854
  %141 = mul i64 %140, 2, !dbg !2855
  %142 = load i64, ptr %20, align 8, !dbg !2856
  %143 = getelementptr inbounds [64 x i8], ptr %18, i64 0, i64 %142, !dbg !2857
  %144 = load i8, ptr %143, align 1, !dbg !2857
  %145 = zext i8 %144 to i32, !dbg !2858
  %146 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %139, i64 noundef %141, ptr noundef @.str.14, i32 noundef %145) #10, !dbg !2859
  %147 = load i32, ptr %22, align 4, !dbg !2860
  %148 = sub nsw i32 %147, 2, !dbg !2860
  store i32 %148, ptr %22, align 4, !dbg !2860
  %149 = load ptr, ptr %23, align 8, !dbg !2861
  %150 = getelementptr inbounds i8, ptr %149, i64 2, !dbg !2861
  store ptr %150, ptr %23, align 8, !dbg !2861
  br label %151, !dbg !2862

151:                                              ; preds = %138
  %152 = load i64, ptr %20, align 8, !dbg !2863
  %153 = add i64 %152, 1, !dbg !2863
  store i64 %153, ptr %20, align 8, !dbg !2863
  br label %129, !dbg !2864, !llvm.loop !2865

154:                                              ; preds = %136
  %155 = load i64, ptr %21, align 8, !dbg !2867
  %156 = mul i64 %155, 2, !dbg !2868
  %157 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 %156, !dbg !2869
  store i8 0, ptr %157, align 1, !dbg !2870
  br label %158, !dbg !2871

158:                                              ; preds = %154, %113, %109
  call void @llvm.dbg.declare(metadata ptr %24, metadata !2872, metadata !DIExpression()), !dbg !2873
  %159 = call ptr @get_dbdriver(), !dbg !2874
  store ptr %159, ptr %24, align 8, !dbg !2873
  %160 = load i32, ptr %15, align 4, !dbg !2875
  %161 = icmp eq i32 %160, 1, !dbg !2877
  br i1 %161, label %162, label %165, !dbg !2878

162:                                              ; preds = %158
  %163 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2879
  %164 = call i32 (ptr, ...) @printf(ptr noundef @.str.15, ptr noundef %163), !dbg !2881
  br label %246, !dbg !2882

165:                                              ; preds = %158
  %166 = load ptr, ptr %24, align 8, !dbg !2883
  %167 = icmp ne ptr %166, null, !dbg !2883
  br i1 %167, label %168, label %245, !dbg !2885

168:                                              ; preds = %165
  %169 = load i32, ptr %17, align 4, !dbg !2886
  %170 = icmp ne i32 %169, 0, !dbg !2886
  br i1 %170, label %173, label %171, !dbg !2889

171:                                              ; preds = %168
  %172 = load ptr, ptr %11, align 8, !dbg !2890
  call void @must_set_admin_realm(ptr noundef %172), !dbg !2891
  br label %173, !dbg !2891

173:                                              ; preds = %171, %168
  %174 = load i32, ptr %15, align 4, !dbg !2892
  %175 = icmp eq i32 %174, 3, !dbg !2894
  br i1 %175, label %176, label %205, !dbg !2895

176:                                              ; preds = %173
  %177 = load i32, ptr %17, align 4, !dbg !2896
  %178 = icmp ne i32 %177, 0, !dbg !2896
  br i1 %178, label %179, label %191, !dbg !2899

179:                                              ; preds = %176
  %180 = load ptr, ptr %24, align 8, !dbg !2900
  %181 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %180, i32 0, i32 23, !dbg !2903
  %182 = load ptr, ptr %181, align 8, !dbg !2903
  %183 = icmp ne ptr %182, null, !dbg !2900
  br i1 %183, label %184, label %190, !dbg !2904

184:                                              ; preds = %179
  %185 = load ptr, ptr %24, align 8, !dbg !2905
  %186 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %185, i32 0, i32 23, !dbg !2906
  %187 = load ptr, ptr %186, align 8, !dbg !2906
  %188 = load ptr, ptr %10, align 8, !dbg !2907
  %189 = call i32 %187(ptr noundef %188), !dbg !2908
  br label %190, !dbg !2908

190:                                              ; preds = %184, %179
  br label %204, !dbg !2909

191:                                              ; preds = %176
  %192 = load ptr, ptr %24, align 8, !dbg !2910
  %193 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %192, i32 0, i32 3, !dbg !2913
  %194 = load ptr, ptr %193, align 8, !dbg !2913
  %195 = icmp ne ptr %194, null, !dbg !2910
  br i1 %195, label %196, label %203, !dbg !2914

196:                                              ; preds = %191
  %197 = load ptr, ptr %24, align 8, !dbg !2915
  %198 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %197, i32 0, i32 3, !dbg !2916
  %199 = load ptr, ptr %198, align 8, !dbg !2916
  %200 = load ptr, ptr %10, align 8, !dbg !2917
  %201 = load ptr, ptr %11, align 8, !dbg !2918
  %202 = call i32 %199(ptr noundef %200, ptr noundef %201), !dbg !2919
  br label %203, !dbg !2919

203:                                              ; preds = %196, %191
  br label %204

204:                                              ; preds = %203, %190
  br label %244, !dbg !2920

205:                                              ; preds = %173
  %206 = load i32, ptr %15, align 4, !dbg !2921
  %207 = icmp eq i32 %206, 2, !dbg !2923
  br i1 %207, label %208, label %243, !dbg !2924

208:                                              ; preds = %205
  %209 = load i32, ptr %17, align 4, !dbg !2925
  %210 = icmp ne i32 %209, 0, !dbg !2925
  br i1 %210, label %211, label %228, !dbg !2928

211:                                              ; preds = %208
  %212 = load ptr, ptr %12, align 8, !dbg !2929
  call void @must_set_admin_pwd(ptr noundef %212), !dbg !2931
  %213 = load ptr, ptr %24, align 8, !dbg !2932
  %214 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %213, i32 0, i32 22, !dbg !2934
  %215 = load ptr, ptr %214, align 8, !dbg !2934
  %216 = icmp ne ptr %215, null, !dbg !2932
  br i1 %216, label %217, label %227, !dbg !2935

217:                                              ; preds = %211
  call void @llvm.dbg.declare(metadata ptr %25, metadata !2936, metadata !DIExpression()), !dbg !2938
  %218 = load ptr, ptr %12, align 8, !dbg !2939
  %219 = getelementptr inbounds [257 x i8], ptr %25, i64 0, i64 0, !dbg !2940
  call void @generate_new_enc_password(ptr noundef %218, ptr noundef %219), !dbg !2941
  %220 = load ptr, ptr %24, align 8, !dbg !2942
  %221 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %220, i32 0, i32 22, !dbg !2943
  %222 = load ptr, ptr %221, align 8, !dbg !2943
  %223 = load ptr, ptr %10, align 8, !dbg !2944
  %224 = load ptr, ptr %11, align 8, !dbg !2945
  %225 = getelementptr inbounds [257 x i8], ptr %25, i64 0, i64 0, !dbg !2946
  %226 = call i32 %222(ptr noundef %223, ptr noundef %224, ptr noundef %225), !dbg !2947
  br label %227, !dbg !2948

227:                                              ; preds = %217, %211
  br label %242, !dbg !2949

228:                                              ; preds = %208
  %229 = load ptr, ptr %24, align 8, !dbg !2950
  %230 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %229, i32 0, i32 2, !dbg !2953
  %231 = load ptr, ptr %230, align 8, !dbg !2953
  %232 = icmp ne ptr %231, null, !dbg !2950
  br i1 %232, label %233, label %241, !dbg !2954

233:                                              ; preds = %228
  %234 = load ptr, ptr %24, align 8, !dbg !2955
  %235 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %234, i32 0, i32 2, !dbg !2956
  %236 = load ptr, ptr %235, align 8, !dbg !2956
  %237 = load ptr, ptr %10, align 8, !dbg !2957
  %238 = load ptr, ptr %11, align 8, !dbg !2958
  %239 = getelementptr inbounds [129 x i8], ptr %19, i64 0, i64 0, !dbg !2959
  %240 = call i32 %236(ptr noundef %237, ptr noundef %238, ptr noundef %239), !dbg !2960
  br label %241, !dbg !2960

241:                                              ; preds = %233, %228
  br label %242

242:                                              ; preds = %241, %227
  br label %243, !dbg !2961

243:                                              ; preds = %242, %205
  br label %244

244:                                              ; preds = %243, %204
  br label %245, !dbg !2962

245:                                              ; preds = %244, %165
  br label %246

246:                                              ; preds = %245, %162
  store i32 0, ptr %9, align 4, !dbg !2963
  br label %247, !dbg !2963

247:                                              ; preds = %246, %106, %99, %70, %61, %54, %47, %41, %35, %28
  %248 = load i32, ptr %9, align 4, !dbg !2964
  ret i32 %248, !dbg !2964
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_users(ptr noundef %0, i32 noundef %1) #0 !dbg !2965 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2968, metadata !DIExpression()), !dbg !2969
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2970, metadata !DIExpression()), !dbg !2971
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2972, metadata !DIExpression()), !dbg !2973
  %6 = call ptr @get_dbdriver(), !dbg !2974
  store ptr %6, ptr %5, align 8, !dbg !2973
  %7 = load ptr, ptr %5, align 8, !dbg !2975
  %8 = icmp ne ptr %7, null, !dbg !2975
  br i1 %8, label %9, label %36, !dbg !2977

9:                                                ; preds = %2
  %10 = load i32, ptr %4, align 4, !dbg !2978
  %11 = icmp ne i32 %10, 0, !dbg !2978
  br i1 %11, label %12, label %23, !dbg !2981

12:                                               ; preds = %9
  %13 = load ptr, ptr %5, align 8, !dbg !2982
  %14 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %13, i32 0, i32 24, !dbg !2985
  %15 = load ptr, ptr %14, align 8, !dbg !2985
  %16 = icmp ne ptr %15, null, !dbg !2982
  br i1 %16, label %17, label %22, !dbg !2986

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !2987
  %19 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %18, i32 0, i32 24, !dbg !2989
  %20 = load ptr, ptr %19, align 8, !dbg !2989
  %21 = call i32 %20(i32 noundef 0), !dbg !2990
  br label %22, !dbg !2991

22:                                               ; preds = %17, %12
  br label %35, !dbg !2992

23:                                               ; preds = %9
  %24 = load ptr, ptr %5, align 8, !dbg !2993
  %25 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %24, i32 0, i32 4, !dbg !2996
  %26 = load ptr, ptr %25, align 8, !dbg !2996
  %27 = icmp ne ptr %26, null, !dbg !2993
  br i1 %27, label %28, label %34, !dbg !2997

28:                                               ; preds = %23
  %29 = load ptr, ptr %5, align 8, !dbg !2998
  %30 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %29, i32 0, i32 4, !dbg !3000
  %31 = load ptr, ptr %30, align 8, !dbg !3000
  %32 = load ptr, ptr %3, align 8, !dbg !3001
  %33 = call i32 %31(ptr noundef %32, ptr noundef null, ptr noundef null), !dbg !3002
  br label %34, !dbg !3003

34:                                               ; preds = %28, %23
  br label %35

35:                                               ; preds = %34, %22
  br label %36, !dbg !3004

36:                                               ; preds = %35, %2
  ret i32 0, !dbg !3005
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_origins(ptr noundef %0) #0 !dbg !3006 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3009, metadata !DIExpression()), !dbg !3010
  %4 = call ptr @get_dbdriver(), !dbg !3011
  store ptr %4, ptr %3, align 8, !dbg !3010
  %5 = load ptr, ptr %3, align 8, !dbg !3012
  %6 = icmp ne ptr %5, null, !dbg !3012
  br i1 %6, label %7, label %18, !dbg !3014

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3015
  %9 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %8, i32 0, i32 10, !dbg !3016
  %10 = load ptr, ptr %9, align 8, !dbg !3016
  %11 = icmp ne ptr %10, null, !dbg !3015
  br i1 %11, label %12, label %18, !dbg !3017

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !3018
  %14 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %13, i32 0, i32 10, !dbg !3020
  %15 = load ptr, ptr %14, align 8, !dbg !3020
  %16 = load ptr, ptr %2, align 8, !dbg !3021
  %17 = call i32 %15(ptr noundef %16, ptr noundef null, ptr noundef null), !dbg !3022
  br label %18, !dbg !3023

18:                                               ; preds = %12, %7, %1
  ret i32 0, !dbg !3024
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_secret(ptr noundef %0) #0 !dbg !3025 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3026, metadata !DIExpression()), !dbg !3027
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3028, metadata !DIExpression()), !dbg !3029
  %4 = call ptr @get_dbdriver(), !dbg !3030
  store ptr %4, ptr %3, align 8, !dbg !3029
  %5 = load ptr, ptr %3, align 8, !dbg !3031
  %6 = icmp ne ptr %5, null, !dbg !3031
  br i1 %6, label %7, label %18, !dbg !3033

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3034
  %9 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %8, i32 0, i32 5, !dbg !3035
  %10 = load ptr, ptr %9, align 8, !dbg !3035
  %11 = icmp ne ptr %10, null, !dbg !3034
  br i1 %11, label %12, label %18, !dbg !3036

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !3037
  %14 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %13, i32 0, i32 5, !dbg !3039
  %15 = load ptr, ptr %14, align 8, !dbg !3039
  %16 = load ptr, ptr %2, align 8, !dbg !3040
  %17 = call i32 %15(ptr noundef %16, ptr noundef null, ptr noundef null), !dbg !3041
  br label %18, !dbg !3042

18:                                               ; preds = %12, %7, %1
  ret i32 0, !dbg !3043
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !3044 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3045, metadata !DIExpression()), !dbg !3046
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3047, metadata !DIExpression()), !dbg !3048
  %7 = load ptr, ptr %4, align 8, !dbg !3049
  %8 = icmp ne ptr %7, null, !dbg !3049
  br i1 %8, label %9, label %15, !dbg !3051

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !3052
  %11 = getelementptr inbounds i8, ptr %10, i64 0, !dbg !3052
  %12 = load i8, ptr %11, align 1, !dbg !3052
  %13 = zext i8 %12 to i32, !dbg !3052
  %14 = icmp eq i32 %13, 0, !dbg !3053
  br i1 %14, label %15, label %16, !dbg !3054

15:                                               ; preds = %9, %2
  store i32 0, ptr %3, align 4, !dbg !3055
  br label %37, !dbg !3055

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8, !dbg !3056
  call void @must_set_admin_realm(ptr noundef %17), !dbg !3057
  %18 = load ptr, ptr %4, align 8, !dbg !3058
  %19 = load ptr, ptr %5, align 8, !dbg !3059
  %20 = call i32 @del_secret(ptr noundef %18, ptr noundef %19), !dbg !3060
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3061, metadata !DIExpression()), !dbg !3062
  %21 = call ptr @get_dbdriver(), !dbg !3063
  store ptr %21, ptr %6, align 8, !dbg !3062
  %22 = load ptr, ptr %6, align 8, !dbg !3064
  %23 = icmp ne ptr %22, null, !dbg !3064
  br i1 %23, label %24, label %36, !dbg !3066

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !dbg !3067
  %26 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %25, i32 0, i32 7, !dbg !3068
  %27 = load ptr, ptr %26, align 8, !dbg !3068
  %28 = icmp ne ptr %27, null, !dbg !3067
  br i1 %28, label %29, label %36, !dbg !3069

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !dbg !3070
  %31 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %30, i32 0, i32 7, !dbg !3072
  %32 = load ptr, ptr %31, align 8, !dbg !3072
  %33 = load ptr, ptr %4, align 8, !dbg !3073
  %34 = load ptr, ptr %5, align 8, !dbg !3074
  %35 = call i32 %32(ptr noundef %33, ptr noundef %34), !dbg !3075
  br label %36, !dbg !3076

36:                                               ; preds = %29, %24, %16
  store i32 0, ptr %3, align 4, !dbg !3077
  br label %37, !dbg !3077

37:                                               ; preds = %36, %15
  %38 = load i32, ptr %3, align 4, !dbg !3078
  ret i32 %38, !dbg !3078
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_secret(ptr noundef %0, ptr noundef %1) #0 !dbg !3079 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3080, metadata !DIExpression()), !dbg !3081
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3082, metadata !DIExpression()), !dbg !3083
  %6 = load ptr, ptr %4, align 8, !dbg !3084
  call void @must_set_admin_realm(ptr noundef %6), !dbg !3085
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3086, metadata !DIExpression()), !dbg !3087
  %7 = call ptr @get_dbdriver(), !dbg !3088
  store ptr %7, ptr %5, align 8, !dbg !3087
  %8 = load ptr, ptr %5, align 8, !dbg !3089
  %9 = icmp ne ptr %8, null, !dbg !3089
  br i1 %9, label %10, label %22, !dbg !3091

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !3092
  %12 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %11, i32 0, i32 6, !dbg !3093
  %13 = load ptr, ptr %12, align 8, !dbg !3093
  %14 = icmp ne ptr %13, null, !dbg !3092
  br i1 %14, label %15, label %22, !dbg !3094

15:                                               ; preds = %10
  %16 = load ptr, ptr %5, align 8, !dbg !3095
  %17 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %16, i32 0, i32 6, !dbg !3097
  %18 = load ptr, ptr %17, align 8, !dbg !3097
  %19 = load ptr, ptr %3, align 8, !dbg !3098
  %20 = load ptr, ptr %4, align 8, !dbg !3099
  %21 = call i32 %18(ptr noundef %19, ptr noundef %20), !dbg !3100
  br label %22, !dbg !3101

22:                                               ; preds = %15, %10, %2
  ret i32 0, !dbg !3102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_set_admin_origin(ptr noundef %0) #0 !dbg !3103 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3104, metadata !DIExpression()), !dbg !3105
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3106, metadata !DIExpression()), !dbg !3107
  %4 = load ptr, ptr %2, align 8, !dbg !3108
  store ptr %4, ptr %3, align 8, !dbg !3107
  %5 = load ptr, ptr %3, align 8, !dbg !3109
  %6 = icmp ne ptr %5, null, !dbg !3109
  br i1 %6, label %7, label %12, !dbg !3111

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3112
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !3112
  %10 = load i8, ptr %9, align 1, !dbg !3112
  %11 = icmp ne i8 %10, 0, !dbg !3112
  br i1 %11, label %15, label %12, !dbg !3113

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr @stderr, align 8, !dbg !3114
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.20), !dbg !3116
  call void @exit(i32 noundef -1) #14, !dbg !3117
  unreachable, !dbg !3117

15:                                               ; preds = %7
  ret void, !dbg !3118
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_set_admin_realm(ptr noundef %0) #0 !dbg !3119 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3120, metadata !DIExpression()), !dbg !3121
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3122, metadata !DIExpression()), !dbg !3123
  %4 = load ptr, ptr %2, align 8, !dbg !3124
  store ptr %4, ptr %3, align 8, !dbg !3123
  %5 = load ptr, ptr %3, align 8, !dbg !3125
  %6 = icmp ne ptr %5, null, !dbg !3125
  br i1 %6, label %7, label %12, !dbg !3127

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3128
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !3128
  %10 = load i8, ptr %9, align 1, !dbg !3128
  %11 = icmp ne i8 %10, 0, !dbg !3128
  br i1 %11, label %15, label %12, !dbg !3129

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr @stderr, align 8, !dbg !3130
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.21), !dbg !3132
  call void @exit(i32 noundef -1) #14, !dbg !3133
  unreachable, !dbg !3133

15:                                               ; preds = %7
  ret void, !dbg !3134
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_origin(ptr noundef %0, ptr noundef %1) #0 !dbg !3135 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [128 x i8], align 16
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3136, metadata !DIExpression()), !dbg !3137
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3138, metadata !DIExpression()), !dbg !3139
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3140, metadata !DIExpression()), !dbg !3141
  %7 = load ptr, ptr %3, align 8, !dbg !3142
  %8 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 0, !dbg !3143
  %9 = call i32 @get_canonic_origin(ptr noundef %7, ptr noundef %8, i32 noundef 127), !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3145, metadata !DIExpression()), !dbg !3146
  %10 = call ptr @get_dbdriver(), !dbg !3147
  store ptr %10, ptr %6, align 8, !dbg !3146
  %11 = load ptr, ptr %6, align 8, !dbg !3148
  %12 = icmp ne ptr %11, null, !dbg !3148
  br i1 %12, label %13, label %25, !dbg !3150

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 8, !dbg !3151
  %15 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %14, i32 0, i32 8, !dbg !3152
  %16 = load ptr, ptr %15, align 8, !dbg !3152
  %17 = icmp ne ptr %16, null, !dbg !3151
  br i1 %17, label %18, label %25, !dbg !3153

18:                                               ; preds = %13
  %19 = load ptr, ptr %6, align 8, !dbg !3154
  %20 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %19, i32 0, i32 8, !dbg !3156
  %21 = load ptr, ptr %20, align 8, !dbg !3156
  %22 = getelementptr inbounds [128 x i8], ptr %5, i64 0, i64 0, !dbg !3157
  %23 = load ptr, ptr %4, align 8, !dbg !3158
  %24 = call i32 %21(ptr noundef %22, ptr noundef %23), !dbg !3159
  br label %25, !dbg !3160

25:                                               ; preds = %18, %13, %2
  ret i32 0, !dbg !3161
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_origin(ptr noundef %0) #0 !dbg !3162 {
  %2 = alloca ptr, align 8
  %3 = alloca [128 x i8], align 16
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3163, metadata !DIExpression()), !dbg !3164
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3165, metadata !DIExpression()), !dbg !3166
  %5 = load ptr, ptr %2, align 8, !dbg !3167
  %6 = getelementptr inbounds [128 x i8], ptr %3, i64 0, i64 0, !dbg !3168
  %7 = call i32 @get_canonic_origin(ptr noundef %5, ptr noundef %6, i32 noundef 127), !dbg !3169
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3170, metadata !DIExpression()), !dbg !3171
  %8 = call ptr @get_dbdriver(), !dbg !3172
  store ptr %8, ptr %4, align 8, !dbg !3171
  %9 = load ptr, ptr %4, align 8, !dbg !3173
  %10 = icmp ne ptr %9, null, !dbg !3173
  br i1 %10, label %11, label %22, !dbg !3175

11:                                               ; preds = %1
  %12 = load ptr, ptr %4, align 8, !dbg !3176
  %13 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %12, i32 0, i32 9, !dbg !3177
  %14 = load ptr, ptr %13, align 8, !dbg !3177
  %15 = icmp ne ptr %14, null, !dbg !3176
  br i1 %15, label %16, label %22, !dbg !3178

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !dbg !3179
  %18 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %17, i32 0, i32 9, !dbg !3181
  %19 = load ptr, ptr %18, align 8, !dbg !3181
  %20 = getelementptr inbounds [128 x i8], ptr %3, i64 0, i64 0, !dbg !3182
  %21 = call i32 %19(ptr noundef %20), !dbg !3183
  br label %22, !dbg !3184

22:                                               ; preds = %16, %11, %1
  ret i32 0, !dbg !3185
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_realm_option(ptr noundef %0, ptr noundef %1) #0 !dbg !3186 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3189, metadata !DIExpression()), !dbg !3190
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3191, metadata !DIExpression()), !dbg !3192
  %5 = load ptr, ptr %3, align 8, !dbg !3193
  %6 = load ptr, ptr %4, align 8, !dbg !3194
  %7 = getelementptr inbounds %struct._perf_options_t, ptr %6, i32 0, i32 0, !dbg !3195
  %8 = load volatile i64, ptr %7, align 8, !dbg !3195
  %9 = call i32 @set_realm_option_one(ptr noundef %5, i64 noundef %8, ptr noundef @.str.22), !dbg !3196
  %10 = load ptr, ptr %3, align 8, !dbg !3197
  %11 = load ptr, ptr %4, align 8, !dbg !3198
  %12 = getelementptr inbounds %struct._perf_options_t, ptr %11, i32 0, i32 2, !dbg !3199
  %13 = load i32, ptr %12, align 4, !dbg !3199
  %14 = sext i32 %13 to i64, !dbg !3200
  %15 = call i32 @set_realm_option_one(ptr noundef %10, i64 noundef %14, ptr noundef @.str.23), !dbg !3201
  %16 = load ptr, ptr %3, align 8, !dbg !3202
  %17 = load ptr, ptr %4, align 8, !dbg !3203
  %18 = getelementptr inbounds %struct._perf_options_t, ptr %17, i32 0, i32 1, !dbg !3204
  %19 = load i32, ptr %18, align 8, !dbg !3204
  %20 = sext i32 %19 to i64, !dbg !3205
  %21 = call i32 @set_realm_option_one(ptr noundef %16, i64 noundef %20, ptr noundef @.str.24), !dbg !3206
  ret i32 0, !dbg !3207
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list_realm_options(ptr noundef %0) #0 !dbg !3208 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3211, metadata !DIExpression()), !dbg !3212
  %4 = call ptr @get_dbdriver(), !dbg !3213
  store ptr %4, ptr %3, align 8, !dbg !3212
  %5 = load ptr, ptr %3, align 8, !dbg !3214
  %6 = icmp ne ptr %5, null, !dbg !3214
  br i1 %6, label %7, label %18, !dbg !3216

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3217
  %9 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %8, i32 0, i32 12, !dbg !3218
  %10 = load ptr, ptr %9, align 8, !dbg !3218
  %11 = icmp ne ptr %10, null, !dbg !3217
  br i1 %11, label %12, label %18, !dbg !3219

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !3220
  %14 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %13, i32 0, i32 12, !dbg !3222
  %15 = load ptr, ptr %14, align 8, !dbg !3222
  %16 = load ptr, ptr %2, align 8, !dbg !3223
  %17 = call i32 %15(ptr noundef %16), !dbg !3224
  br label %18, !dbg !3225

18:                                               ; preds = %12, %7, %1
  ret i32 0, !dbg !3226
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_set_admin_user(ptr noundef %0) #0 !dbg !3227 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3228, metadata !DIExpression()), !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3230, metadata !DIExpression()), !dbg !3231
  %4 = load ptr, ptr %2, align 8, !dbg !3232
  store ptr %4, ptr %3, align 8, !dbg !3231
  %5 = load ptr, ptr %3, align 8, !dbg !3233
  %6 = icmp ne ptr %5, null, !dbg !3233
  br i1 %6, label %7, label %12, !dbg !3235

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3236
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !3236
  %10 = load i8, ptr %9, align 1, !dbg !3236
  %11 = icmp ne i8 %10, 0, !dbg !3236
  br i1 %11, label %15, label %12, !dbg !3237

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr @stderr, align 8, !dbg !3238
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.25), !dbg !3240
  call void @exit(i32 noundef -1) #14, !dbg !3241
  unreachable, !dbg !3241

15:                                               ; preds = %7
  ret void, !dbg !3242
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @must_set_admin_pwd(ptr noundef %0) #0 !dbg !3243 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3246, metadata !DIExpression()), !dbg !3247
  %4 = load ptr, ptr %2, align 8, !dbg !3248
  store ptr %4, ptr %3, align 8, !dbg !3247
  %5 = load ptr, ptr %3, align 8, !dbg !3249
  %6 = icmp ne ptr %5, null, !dbg !3249
  br i1 %6, label %7, label %12, !dbg !3251

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3252
  %9 = getelementptr inbounds i8, ptr %8, i64 0, !dbg !3252
  %10 = load i8, ptr %9, align 1, !dbg !3252
  %11 = icmp ne i8 %10, 0, !dbg !3252
  br i1 %11, label %15, label %12, !dbg !3253

12:                                               ; preds = %7, %1
  %13 = load ptr, ptr @stderr, align 8, !dbg !3254
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str.26), !dbg !3256
  call void @exit(i32 noundef -1) #14, !dbg !3257
  unreachable, !dbg !3257

15:                                               ; preds = %7
  ret void, !dbg !3258
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare i32 @printf(ptr noundef, ...) #1

declare void @generate_new_enc_password(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auth_ping(ptr noundef %0) #0 !dbg !3259 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3262, metadata !DIExpression()), !dbg !3263
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3264, metadata !DIExpression()), !dbg !3265
  %4 = call ptr @get_dbdriver(), !dbg !3266
  store ptr %4, ptr %3, align 8, !dbg !3265
  %5 = load ptr, ptr %3, align 8, !dbg !3267
  %6 = icmp ne ptr %5, null, !dbg !3267
  br i1 %6, label %7, label %17, !dbg !3269

7:                                                ; preds = %1
  %8 = load ptr, ptr %3, align 8, !dbg !3270
  %9 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %8, i32 0, i32 13, !dbg !3271
  %10 = load ptr, ptr %9, align 8, !dbg !3271
  %11 = icmp ne ptr %10, null, !dbg !3270
  br i1 %11, label %12, label %17, !dbg !3272

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !dbg !3273
  %14 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %13, i32 0, i32 13, !dbg !3275
  %15 = load ptr, ptr %14, align 8, !dbg !3275
  %16 = load ptr, ptr %2, align 8, !dbg !3276
  call void %15(ptr noundef %16), !dbg !3277
  br label %17, !dbg !3278

17:                                               ; preds = %12, %7, %1
  ret void, !dbg !3279
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_dynamic_ip_lists() #0 !dbg !3280 {
  %1 = call noalias ptr @malloc(i64 noundef 56) #12, !dbg !3281
  store ptr %1, ptr @whitelist_rwlock, align 8, !dbg !3282
  %2 = load ptr, ptr @whitelist_rwlock, align 8, !dbg !3283
  %3 = call i32 @pthread_rwlock_init(ptr noundef %2, ptr noundef null) #10, !dbg !3284
  %4 = call noalias ptr @malloc(i64 noundef 56) #12, !dbg !3285
  store ptr %4, ptr @blacklist_rwlock, align 8, !dbg !3286
  %5 = load ptr, ptr @blacklist_rwlock, align 8, !dbg !3287
  %6 = call i32 @pthread_rwlock_init(ptr noundef %5, ptr noundef null) #10, !dbg !3288
  ret void, !dbg !3289
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_init(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_lock_whitelist(ptr noundef %0) #0 !dbg !3290 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3293, metadata !DIExpression()), !dbg !3294
  br label %3, !dbg !3295

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3296
  store ptr %4, ptr %2, align 8, !dbg !3296
  br label %5, !dbg !3296

5:                                                ; preds = %3
  %6 = load ptr, ptr @whitelist_rwlock, align 8, !dbg !3298
  %7 = call i32 @pthread_rwlock_rdlock(ptr noundef %6) #10, !dbg !3299
  ret void, !dbg !3300
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_rdlock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_unlock_whitelist(ptr noundef %0) #0 !dbg !3301 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3302, metadata !DIExpression()), !dbg !3303
  br label %3, !dbg !3304

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3305
  store ptr %4, ptr %2, align 8, !dbg !3305
  br label %5, !dbg !3305

5:                                                ; preds = %3
  %6 = load ptr, ptr @whitelist_rwlock, align 8, !dbg !3307
  %7 = call i32 @pthread_rwlock_unlock(ptr noundef %6) #10, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_unlock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ioa_get_whitelist(ptr noundef %0) #0 !dbg !3310 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3315, metadata !DIExpression()), !dbg !3316
  br label %3, !dbg !3317

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3318
  store ptr %4, ptr %2, align 8, !dbg !3318
  br label %5, !dbg !3318

5:                                                ; preds = %3
  %6 = load ptr, ptr @ipwhitelist, align 8, !dbg !3320
  ret ptr %6, !dbg !3321
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_lock_blacklist(ptr noundef %0) #0 !dbg !3322 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3323, metadata !DIExpression()), !dbg !3324
  br label %3, !dbg !3325

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3326
  store ptr %4, ptr %2, align 8, !dbg !3326
  br label %5, !dbg !3326

5:                                                ; preds = %3
  %6 = load ptr, ptr @blacklist_rwlock, align 8, !dbg !3328
  %7 = call i32 @pthread_rwlock_rdlock(ptr noundef %6) #10, !dbg !3329
  ret void, !dbg !3330
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ioa_unlock_blacklist(ptr noundef %0) #0 !dbg !3331 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3332, metadata !DIExpression()), !dbg !3333
  br label %3, !dbg !3334

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3335
  store ptr %4, ptr %2, align 8, !dbg !3335
  br label %5, !dbg !3335

5:                                                ; preds = %3
  %6 = load ptr, ptr @blacklist_rwlock, align 8, !dbg !3337
  %7 = call i32 @pthread_rwlock_unlock(ptr noundef %6) #10, !dbg !3338
  ret void, !dbg !3339
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @ioa_get_blacklist(ptr noundef %0) #0 !dbg !3340 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3341, metadata !DIExpression()), !dbg !3342
  br label %3, !dbg !3343

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3344
  store ptr %4, ptr %2, align 8, !dbg !3344
  br label %5, !dbg !3344

5:                                                ; preds = %3
  %6 = load ptr, ptr @ipblacklist, align 8, !dbg !3346
  ret ptr %6, !dbg !3347
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_ip_list(ptr noundef %0) #0 !dbg !3348 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3351, metadata !DIExpression()), !dbg !3352
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3353, metadata !DIExpression()), !dbg !3354
  %5 = call noalias ptr @malloc(i64 noundef 16) #12, !dbg !3355
  store ptr %5, ptr %3, align 8, !dbg !3354
  %6 = load ptr, ptr %3, align 8, !dbg !3356
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 16, i1 false), !dbg !3357
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3358, metadata !DIExpression()), !dbg !3359
  %7 = call ptr @get_dbdriver(), !dbg !3360
  store ptr %7, ptr %4, align 8, !dbg !3359
  %8 = load ptr, ptr %4, align 8, !dbg !3361
  %9 = icmp ne ptr %8, null, !dbg !3361
  br i1 %9, label %10, label %25, !dbg !3363

10:                                               ; preds = %1
  %11 = load ptr, ptr %4, align 8, !dbg !3364
  %12 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %11, i32 0, i32 14, !dbg !3365
  %13 = load ptr, ptr %12, align 8, !dbg !3365
  %14 = icmp ne ptr %13, null, !dbg !3364
  br i1 %14, label %15, label %25, !dbg !3366

15:                                               ; preds = %10
  %16 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 92), align 4, !dbg !3367
  %17 = icmp ne i32 %16, 0, !dbg !3368
  br i1 %17, label %25, label %18, !dbg !3369

18:                                               ; preds = %15
  %19 = load ptr, ptr %4, align 8, !dbg !3370
  %20 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %19, i32 0, i32 14, !dbg !3372
  %21 = load ptr, ptr %20, align 8, !dbg !3372
  %22 = load ptr, ptr %2, align 8, !dbg !3373
  %23 = load ptr, ptr %3, align 8, !dbg !3374
  %24 = call i32 %21(ptr noundef %22, ptr noundef %23), !dbg !3375
  br label %25, !dbg !3376

25:                                               ; preds = %18, %15, %10, %1
  %26 = load ptr, ptr %3, align 8, !dbg !3377
  ret ptr %26, !dbg !3378
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ip_list_free(ptr noundef %0) #0 !dbg !3379 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3382, metadata !DIExpression()), !dbg !3383
  %3 = load ptr, ptr %2, align 8, !dbg !3384
  %4 = icmp ne ptr %3, null, !dbg !3384
  br i1 %4, label %5, label %16, !dbg !3386

5:                                                ; preds = %1
  %6 = load ptr, ptr %2, align 8, !dbg !3387
  %7 = getelementptr inbounds %struct._ip_range_list, ptr %6, i32 0, i32 0, !dbg !3390
  %8 = load ptr, ptr %7, align 8, !dbg !3390
  %9 = icmp ne ptr %8, null, !dbg !3387
  br i1 %9, label %10, label %14, !dbg !3391

10:                                               ; preds = %5
  %11 = load ptr, ptr %2, align 8, !dbg !3392
  %12 = getelementptr inbounds %struct._ip_range_list, ptr %11, i32 0, i32 0, !dbg !3393
  %13 = load ptr, ptr %12, align 8, !dbg !3393
  call void @free(ptr noundef %13) #10, !dbg !3394
  br label %14, !dbg !3394

14:                                               ; preds = %10, %5
  %15 = load ptr, ptr %2, align 8, !dbg !3395
  call void @free(ptr noundef %15) #10, !dbg !3396
  br label %16, !dbg !3397

16:                                               ; preds = %14, %1
  ret void, !dbg !3398
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_white_and_black_lists() #0 !dbg !3399 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3400, metadata !DIExpression()), !dbg !3402
  %5 = call ptr @get_ip_list(ptr noundef @.str.16), !dbg !3403
  store ptr %5, ptr %1, align 8, !dbg !3402
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3404, metadata !DIExpression()), !dbg !3405
  store ptr null, ptr %2, align 8, !dbg !3405
  call void @ioa_wrlock_whitelist(ptr noundef null), !dbg !3406
  %6 = load ptr, ptr @ipwhitelist, align 8, !dbg !3407
  store ptr %6, ptr %2, align 8, !dbg !3408
  %7 = load ptr, ptr %1, align 8, !dbg !3409
  store ptr %7, ptr @ipwhitelist, align 8, !dbg !3410
  call void @ioa_unlock_whitelist(ptr noundef null), !dbg !3411
  %8 = load ptr, ptr %2, align 8, !dbg !3412
  call void @ip_list_free(ptr noundef %8), !dbg !3413
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3414, metadata !DIExpression()), !dbg !3416
  %9 = call ptr @get_ip_list(ptr noundef @.str.17), !dbg !3417
  store ptr %9, ptr %3, align 8, !dbg !3416
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3418, metadata !DIExpression()), !dbg !3419
  store ptr null, ptr %4, align 8, !dbg !3419
  call void @ioa_wrlock_blacklist(ptr noundef null), !dbg !3420
  %10 = load ptr, ptr @ipblacklist, align 8, !dbg !3421
  store ptr %10, ptr %4, align 8, !dbg !3422
  %11 = load ptr, ptr %3, align 8, !dbg !3423
  store ptr %11, ptr @ipblacklist, align 8, !dbg !3424
  call void @ioa_unlock_blacklist(ptr noundef null), !dbg !3425
  %12 = load ptr, ptr %4, align 8, !dbg !3426
  call void @ip_list_free(ptr noundef %12), !dbg !3427
  ret void, !dbg !3428
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioa_wrlock_whitelist(ptr noundef %0) #0 !dbg !3429 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3430, metadata !DIExpression()), !dbg !3431
  br label %3, !dbg !3432

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3433
  store ptr %4, ptr %2, align 8, !dbg !3433
  br label %5, !dbg !3433

5:                                                ; preds = %3
  %6 = load ptr, ptr @whitelist_rwlock, align 8, !dbg !3435
  %7 = call i32 @pthread_rwlock_wrlock(ptr noundef %6) #10, !dbg !3436
  ret void, !dbg !3437
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioa_wrlock_blacklist(ptr noundef %0) #0 !dbg !3438 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3439, metadata !DIExpression()), !dbg !3440
  br label %3, !dbg !3441

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !3442
  store ptr %4, ptr %2, align 8, !dbg !3442
  br label %5, !dbg !3442

5:                                                ; preds = %3
  %6 = load ptr, ptr @blacklist_rwlock, align 8, !dbg !3444
  %7 = call i32 @pthread_rwlock_wrlock(ptr noundef %6) #10, !dbg !3445
  ret void, !dbg !3446
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @add_ip_list_range(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3447 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %union.ioa_addr, align 4
  %11 = alloca %union.ioa_addr, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3450, metadata !DIExpression()), !dbg !3451
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3452, metadata !DIExpression()), !dbg !3453
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3454, metadata !DIExpression()), !dbg !3455
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3456, metadata !DIExpression()), !dbg !3457
  %14 = load ptr, ptr %5, align 8, !dbg !3458
  %15 = call noalias ptr @strdup(ptr noundef %14) #10, !dbg !3459
  store ptr %15, ptr %8, align 8, !dbg !3457
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3460, metadata !DIExpression()), !dbg !3461
  %16 = load ptr, ptr %8, align 8, !dbg !3462
  %17 = call ptr @strchr(ptr noundef %16, i32 noundef 45) #13, !dbg !3463
  store ptr %17, ptr %9, align 8, !dbg !3461
  %18 = load ptr, ptr %9, align 8, !dbg !3464
  %19 = icmp ne ptr %18, null, !dbg !3464
  br i1 %19, label %20, label %22, !dbg !3466

20:                                               ; preds = %3
  %21 = load ptr, ptr %9, align 8, !dbg !3467
  store i8 0, ptr %21, align 1, !dbg !3469
  br label %22, !dbg !3470

22:                                               ; preds = %20, %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3471, metadata !DIExpression()), !dbg !3472
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3473, metadata !DIExpression()), !dbg !3474
  %23 = load ptr, ptr %8, align 8, !dbg !3475
  %24 = call i32 @make_ioa_addr(ptr noundef %23, i32 noundef 0, ptr noundef %10), !dbg !3477
  %25 = icmp slt i32 %24, 0, !dbg !3478
  br i1 %25, label %26, label %29, !dbg !3479

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8, !dbg !3480
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18, ptr noundef %27), !dbg !3482
  %28 = load ptr, ptr %8, align 8, !dbg !3483
  call void @free(ptr noundef %28) #10, !dbg !3484
  store i32 -1, ptr %4, align 4, !dbg !3485
  br label %172, !dbg !3485

29:                                               ; preds = %22
  %30 = load ptr, ptr %9, align 8, !dbg !3486
  %31 = icmp ne ptr %30, null, !dbg !3486
  br i1 %31, label %32, label %42, !dbg !3488

32:                                               ; preds = %29
  %33 = load ptr, ptr %9, align 8, !dbg !3489
  %34 = getelementptr inbounds i8, ptr %33, i64 1, !dbg !3492
  %35 = call i32 @make_ioa_addr(ptr noundef %34, i32 noundef 0, ptr noundef %11), !dbg !3493
  %36 = icmp slt i32 %35, 0, !dbg !3494
  br i1 %36, label %37, label %41, !dbg !3495

37:                                               ; preds = %32
  %38 = load ptr, ptr %9, align 8, !dbg !3496
  %39 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !3498
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.18, ptr noundef %39), !dbg !3499
  %40 = load ptr, ptr %8, align 8, !dbg !3500
  call void @free(ptr noundef %40) #10, !dbg !3501
  store i32 -1, ptr %4, align 4, !dbg !3502
  br label %172, !dbg !3502

41:                                               ; preds = %32
  br label %43, !dbg !3503

42:                                               ; preds = %29
  call void @addr_cpy(ptr noundef %11, ptr noundef %10), !dbg !3504
  br label %43

43:                                               ; preds = %42, %41
  %44 = load ptr, ptr %9, align 8, !dbg !3506
  %45 = icmp ne ptr %44, null, !dbg !3506
  br i1 %45, label %46, label %48, !dbg !3508

46:                                               ; preds = %43
  %47 = load ptr, ptr %9, align 8, !dbg !3509
  store i8 45, ptr %47, align 1, !dbg !3510
  br label %48, !dbg !3511

48:                                               ; preds = %46, %43
  %49 = load ptr, ptr %7, align 8, !dbg !3512
  %50 = getelementptr inbounds %struct._ip_range_list, ptr %49, i32 0, i32 1, !dbg !3513
  %51 = load i64, ptr %50, align 8, !dbg !3514
  %52 = add i64 %51, 1, !dbg !3514
  store i64 %52, ptr %50, align 8, !dbg !3514
  %53 = load ptr, ptr %7, align 8, !dbg !3515
  %54 = getelementptr inbounds %struct._ip_range_list, ptr %53, i32 0, i32 0, !dbg !3516
  %55 = load ptr, ptr %54, align 8, !dbg !3516
  %56 = load ptr, ptr %7, align 8, !dbg !3517
  %57 = getelementptr inbounds %struct._ip_range_list, ptr %56, i32 0, i32 1, !dbg !3518
  %58 = load i64, ptr %57, align 8, !dbg !3518
  %59 = mul i64 828, %58, !dbg !3519
  %60 = call ptr @realloc(ptr noundef %55, i64 noundef %59) #11, !dbg !3520
  %61 = load ptr, ptr %7, align 8, !dbg !3521
  %62 = getelementptr inbounds %struct._ip_range_list, ptr %61, i32 0, i32 0, !dbg !3522
  store ptr %60, ptr %62, align 8, !dbg !3523
  br label %63, !dbg !3524

63:                                               ; preds = %48
  %64 = load ptr, ptr %7, align 8, !dbg !3525
  %65 = getelementptr inbounds %struct._ip_range_list, ptr %64, i32 0, i32 0, !dbg !3525
  %66 = load ptr, ptr %65, align 8, !dbg !3525
  %67 = load ptr, ptr %7, align 8, !dbg !3525
  %68 = getelementptr inbounds %struct._ip_range_list, ptr %67, i32 0, i32 1, !dbg !3525
  %69 = load i64, ptr %68, align 8, !dbg !3525
  %70 = sub i64 %69, 1, !dbg !3525
  %71 = getelementptr inbounds %struct._ip_range, ptr %66, i64 %70, !dbg !3525
  %72 = getelementptr inbounds %struct._ip_range, ptr %71, i32 0, i32 0, !dbg !3525
  %73 = getelementptr inbounds [257 x i8], ptr %72, i64 0, i64 0, !dbg !3525
  %74 = load ptr, ptr %8, align 8, !dbg !3525
  %75 = icmp ne ptr %73, %74, !dbg !3525
  br i1 %75, label %76, label %103, !dbg !3528

76:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3529, metadata !DIExpression()), !dbg !3533
  store i64 257, ptr %12, align 8, !dbg !3533
  %77 = load ptr, ptr %7, align 8, !dbg !3533
  %78 = getelementptr inbounds %struct._ip_range_list, ptr %77, i32 0, i32 0, !dbg !3533
  %79 = load ptr, ptr %78, align 8, !dbg !3533
  %80 = load ptr, ptr %7, align 8, !dbg !3533
  %81 = getelementptr inbounds %struct._ip_range_list, ptr %80, i32 0, i32 1, !dbg !3533
  %82 = load i64, ptr %81, align 8, !dbg !3533
  %83 = sub i64 %82, 1, !dbg !3533
  %84 = getelementptr inbounds %struct._ip_range, ptr %79, i64 %83, !dbg !3533
  %85 = getelementptr inbounds %struct._ip_range, ptr %84, i32 0, i32 0, !dbg !3533
  %86 = getelementptr inbounds [257 x i8], ptr %85, i64 0, i64 0, !dbg !3533
  %87 = load ptr, ptr %8, align 8, !dbg !3533
  %88 = load i64, ptr %12, align 8, !dbg !3533
  %89 = call ptr @strncpy(ptr noundef %86, ptr noundef %87, i64 noundef %88) #10, !dbg !3533
  %90 = load ptr, ptr %7, align 8, !dbg !3533
  %91 = getelementptr inbounds %struct._ip_range_list, ptr %90, i32 0, i32 0, !dbg !3533
  %92 = load ptr, ptr %91, align 8, !dbg !3533
  %93 = load ptr, ptr %7, align 8, !dbg !3533
  %94 = getelementptr inbounds %struct._ip_range_list, ptr %93, i32 0, i32 1, !dbg !3533
  %95 = load i64, ptr %94, align 8, !dbg !3533
  %96 = sub i64 %95, 1, !dbg !3533
  %97 = getelementptr inbounds %struct._ip_range, ptr %92, i64 %96, !dbg !3533
  %98 = getelementptr inbounds %struct._ip_range, ptr %97, i32 0, i32 0, !dbg !3533
  %99 = getelementptr inbounds [257 x i8], ptr %98, i64 0, i64 0, !dbg !3533
  %100 = load i64, ptr %12, align 8, !dbg !3533
  %101 = sub i64 %100, 1, !dbg !3533
  %102 = getelementptr inbounds i8, ptr %99, i64 %101, !dbg !3533
  store i8 0, ptr %102, align 1, !dbg !3533
  br label %103, !dbg !3534

103:                                              ; preds = %76, %63
  br label %104, !dbg !3528

104:                                              ; preds = %103
  %105 = load ptr, ptr %6, align 8, !dbg !3535
  %106 = icmp ne ptr %105, null, !dbg !3535
  br i1 %106, label %107, label %150, !dbg !3537

107:                                              ; preds = %104
  br label %108, !dbg !3538

108:                                              ; preds = %107
  %109 = load ptr, ptr %7, align 8, !dbg !3539
  %110 = getelementptr inbounds %struct._ip_range_list, ptr %109, i32 0, i32 0, !dbg !3539
  %111 = load ptr, ptr %110, align 8, !dbg !3539
  %112 = load ptr, ptr %7, align 8, !dbg !3539
  %113 = getelementptr inbounds %struct._ip_range_list, ptr %112, i32 0, i32 1, !dbg !3539
  %114 = load i64, ptr %113, align 8, !dbg !3539
  %115 = sub i64 %114, 1, !dbg !3539
  %116 = getelementptr inbounds %struct._ip_range, ptr %111, i64 %115, !dbg !3539
  %117 = getelementptr inbounds %struct._ip_range, ptr %116, i32 0, i32 1, !dbg !3539
  %118 = getelementptr inbounds [513 x i8], ptr %117, i64 0, i64 0, !dbg !3539
  %119 = load ptr, ptr %6, align 8, !dbg !3539
  %120 = icmp ne ptr %118, %119, !dbg !3539
  br i1 %120, label %121, label %148, !dbg !3542

121:                                              ; preds = %108
  call void @llvm.dbg.declare(metadata ptr %13, metadata !3543, metadata !DIExpression()), !dbg !3547
  store i64 513, ptr %13, align 8, !dbg !3547
  %122 = load ptr, ptr %7, align 8, !dbg !3547
  %123 = getelementptr inbounds %struct._ip_range_list, ptr %122, i32 0, i32 0, !dbg !3547
  %124 = load ptr, ptr %123, align 8, !dbg !3547
  %125 = load ptr, ptr %7, align 8, !dbg !3547
  %126 = getelementptr inbounds %struct._ip_range_list, ptr %125, i32 0, i32 1, !dbg !3547
  %127 = load i64, ptr %126, align 8, !dbg !3547
  %128 = sub i64 %127, 1, !dbg !3547
  %129 = getelementptr inbounds %struct._ip_range, ptr %124, i64 %128, !dbg !3547
  %130 = getelementptr inbounds %struct._ip_range, ptr %129, i32 0, i32 1, !dbg !3547
  %131 = getelementptr inbounds [513 x i8], ptr %130, i64 0, i64 0, !dbg !3547
  %132 = load ptr, ptr %6, align 8, !dbg !3547
  %133 = load i64, ptr %13, align 8, !dbg !3547
  %134 = call ptr @strncpy(ptr noundef %131, ptr noundef %132, i64 noundef %133) #10, !dbg !3547
  %135 = load ptr, ptr %7, align 8, !dbg !3547
  %136 = getelementptr inbounds %struct._ip_range_list, ptr %135, i32 0, i32 0, !dbg !3547
  %137 = load ptr, ptr %136, align 8, !dbg !3547
  %138 = load ptr, ptr %7, align 8, !dbg !3547
  %139 = getelementptr inbounds %struct._ip_range_list, ptr %138, i32 0, i32 1, !dbg !3547
  %140 = load i64, ptr %139, align 8, !dbg !3547
  %141 = sub i64 %140, 1, !dbg !3547
  %142 = getelementptr inbounds %struct._ip_range, ptr %137, i64 %141, !dbg !3547
  %143 = getelementptr inbounds %struct._ip_range, ptr %142, i32 0, i32 1, !dbg !3547
  %144 = getelementptr inbounds [513 x i8], ptr %143, i64 0, i64 0, !dbg !3547
  %145 = load i64, ptr %13, align 8, !dbg !3547
  %146 = sub i64 %145, 1, !dbg !3547
  %147 = getelementptr inbounds i8, ptr %144, i64 %146, !dbg !3547
  store i8 0, ptr %147, align 1, !dbg !3547
  br label %148, !dbg !3548

148:                                              ; preds = %121, %108
  br label %149, !dbg !3542

149:                                              ; preds = %148
  br label %161, !dbg !3542

150:                                              ; preds = %104
  %151 = load ptr, ptr %7, align 8, !dbg !3549
  %152 = getelementptr inbounds %struct._ip_range_list, ptr %151, i32 0, i32 0, !dbg !3550
  %153 = load ptr, ptr %152, align 8, !dbg !3550
  %154 = load ptr, ptr %7, align 8, !dbg !3551
  %155 = getelementptr inbounds %struct._ip_range_list, ptr %154, i32 0, i32 1, !dbg !3552
  %156 = load i64, ptr %155, align 8, !dbg !3552
  %157 = sub i64 %156, 1, !dbg !3553
  %158 = getelementptr inbounds %struct._ip_range, ptr %153, i64 %157, !dbg !3549
  %159 = getelementptr inbounds %struct._ip_range, ptr %158, i32 0, i32 1, !dbg !3554
  %160 = getelementptr inbounds [513 x i8], ptr %159, i64 0, i64 0, !dbg !3549
  store i8 0, ptr %160, align 1, !dbg !3555
  br label %161

161:                                              ; preds = %150, %149
  %162 = load ptr, ptr %8, align 8, !dbg !3556
  call void @free(ptr noundef %162) #10, !dbg !3557
  %163 = load ptr, ptr %7, align 8, !dbg !3558
  %164 = getelementptr inbounds %struct._ip_range_list, ptr %163, i32 0, i32 0, !dbg !3559
  %165 = load ptr, ptr %164, align 8, !dbg !3559
  %166 = load ptr, ptr %7, align 8, !dbg !3560
  %167 = getelementptr inbounds %struct._ip_range_list, ptr %166, i32 0, i32 1, !dbg !3561
  %168 = load i64, ptr %167, align 8, !dbg !3561
  %169 = sub i64 %168, 1, !dbg !3562
  %170 = getelementptr inbounds %struct._ip_range, ptr %165, i64 %169, !dbg !3558
  %171 = getelementptr inbounds %struct._ip_range, ptr %170, i32 0, i32 2, !dbg !3563
  call void @ioa_addr_range_set(ptr noundef %171, ptr noundef %10, ptr noundef %11), !dbg !3564
  store i32 0, ptr %4, align 4, !dbg !3565
  br label %172, !dbg !3565

172:                                              ; preds = %161, %37, %26
  %173 = load i32, ptr %4, align 4, !dbg !3566
  ret i32 %173, !dbg !3566
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strchr(ptr noundef, i32 noundef) #7

declare i32 @make_ioa_addr(ptr noundef, i32 noundef, ptr noundef) #1

declare void @addr_cpy(ptr noundef, ptr noundef) #1

declare void @ioa_addr_range_set(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_ip_list_range(ptr noundef %0) #0 !dbg !3567 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca %union.ioa_addr, align 4
  %7 = alloca %union.ioa_addr, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3570, metadata !DIExpression()), !dbg !3571
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3572, metadata !DIExpression()), !dbg !3573
  %8 = load ptr, ptr %3, align 8, !dbg !3574
  %9 = call noalias ptr @strdup(ptr noundef %8) #10, !dbg !3575
  store ptr %9, ptr %4, align 8, !dbg !3573
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3576, metadata !DIExpression()), !dbg !3577
  %10 = load ptr, ptr %4, align 8, !dbg !3578
  %11 = call ptr @strchr(ptr noundef %10, i32 noundef 45) #13, !dbg !3579
  store ptr %11, ptr %5, align 8, !dbg !3577
  %12 = load ptr, ptr %5, align 8, !dbg !3580
  %13 = icmp ne ptr %12, null, !dbg !3580
  br i1 %13, label %14, label %16, !dbg !3582

14:                                               ; preds = %1
  %15 = load ptr, ptr %5, align 8, !dbg !3583
  store i8 0, ptr %15, align 1, !dbg !3585
  br label %16, !dbg !3586

16:                                               ; preds = %14, %1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3587, metadata !DIExpression()), !dbg !3588
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3589, metadata !DIExpression()), !dbg !3590
  %17 = load ptr, ptr %4, align 8, !dbg !3591
  %18 = call i32 @make_ioa_addr(ptr noundef %17, i32 noundef 0, ptr noundef %6), !dbg !3593
  %19 = icmp slt i32 %18, 0, !dbg !3594
  br i1 %19, label %20, label %23, !dbg !3595

20:                                               ; preds = %16
  %21 = load ptr, ptr %4, align 8, !dbg !3596
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.19, ptr noundef %21), !dbg !3598
  %22 = load ptr, ptr %4, align 8, !dbg !3599
  call void @free(ptr noundef %22) #10, !dbg !3600
  store i32 -1, ptr %2, align 4, !dbg !3601
  br label %44, !dbg !3601

23:                                               ; preds = %16
  %24 = load ptr, ptr %5, align 8, !dbg !3602
  %25 = icmp ne ptr %24, null, !dbg !3602
  br i1 %25, label %26, label %36, !dbg !3604

26:                                               ; preds = %23
  %27 = load ptr, ptr %5, align 8, !dbg !3605
  %28 = getelementptr inbounds i8, ptr %27, i64 1, !dbg !3608
  %29 = call i32 @make_ioa_addr(ptr noundef %28, i32 noundef 0, ptr noundef %7), !dbg !3609
  %30 = icmp slt i32 %29, 0, !dbg !3610
  br i1 %30, label %31, label %35, !dbg !3611

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !3612
  %33 = getelementptr inbounds i8, ptr %32, i64 1, !dbg !3614
  call void (i32, ptr, ...) @turn_log_func_default(i32 noundef 3, ptr noundef @.str.19, ptr noundef %33), !dbg !3615
  %34 = load ptr, ptr %4, align 8, !dbg !3616
  call void @free(ptr noundef %34) #10, !dbg !3617
  store i32 -1, ptr %2, align 4, !dbg !3618
  br label %44, !dbg !3618

35:                                               ; preds = %26
  br label %37, !dbg !3619

36:                                               ; preds = %23
  call void @addr_cpy(ptr noundef %7, ptr noundef %6), !dbg !3620
  br label %37

37:                                               ; preds = %36, %35
  %38 = load ptr, ptr %5, align 8, !dbg !3622
  %39 = icmp ne ptr %38, null, !dbg !3622
  br i1 %39, label %40, label %42, !dbg !3624

40:                                               ; preds = %37
  %41 = load ptr, ptr %5, align 8, !dbg !3625
  store i8 45, ptr %41, align 1, !dbg !3626
  br label %42, !dbg !3627

42:                                               ; preds = %40, %37
  %43 = load ptr, ptr %4, align 8, !dbg !3628
  call void @free(ptr noundef %43) #10, !dbg !3629
  store i32 0, ptr %2, align 4, !dbg !3630
  br label %44, !dbg !3630

44:                                               ; preds = %42, %31, %20
  %45 = load i32, ptr %2, align 4, !dbg !3631
  ret i32 %45, !dbg !3631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reread_realms() #0 !dbg !3632 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void @llvm.dbg.declare(metadata ptr %1, metadata !3633, metadata !DIExpression()), !dbg !3635
  %3 = call ptr @get_realm(ptr noundef null), !dbg !3636
  store ptr %3, ptr %1, align 8, !dbg !3635
  call void @lock_realms(), !dbg !3637
  %4 = load i64, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 80), align 8, !dbg !3638
  %5 = load ptr, ptr %1, align 8, !dbg !3639
  %6 = getelementptr inbounds %struct._realm_params_t, ptr %5, i32 0, i32 1, !dbg !3640
  %7 = getelementptr inbounds %struct._realm_options_t, ptr %6, i32 0, i32 1, !dbg !3641
  %8 = getelementptr inbounds %struct._perf_options_t, ptr %7, i32 0, i32 0, !dbg !3642
  store volatile i64 %4, ptr %8, align 8, !dbg !3643
  %9 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 83), align 8, !dbg !3644
  %10 = load ptr, ptr %1, align 8, !dbg !3645
  %11 = getelementptr inbounds %struct._realm_params_t, ptr %10, i32 0, i32 1, !dbg !3646
  %12 = getelementptr inbounds %struct._realm_options_t, ptr %11, i32 0, i32 1, !dbg !3647
  %13 = getelementptr inbounds %struct._perf_options_t, ptr %12, i32 0, i32 1, !dbg !3648
  store i32 %9, ptr %13, align 8, !dbg !3649
  %14 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 84), align 4, !dbg !3650
  %15 = load ptr, ptr %1, align 8, !dbg !3651
  %16 = getelementptr inbounds %struct._realm_params_t, ptr %15, i32 0, i32 1, !dbg !3652
  %17 = getelementptr inbounds %struct._realm_options_t, ptr %16, i32 0, i32 1, !dbg !3653
  %18 = getelementptr inbounds %struct._perf_options_t, ptr %17, i32 0, i32 2, !dbg !3654
  store i32 %14, ptr %18, align 4, !dbg !3655
  call void @unlock_realms(), !dbg !3656
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3657, metadata !DIExpression()), !dbg !3658
  %19 = call ptr @get_dbdriver(), !dbg !3659
  store ptr %19, ptr %2, align 8, !dbg !3658
  %20 = load ptr, ptr %2, align 8, !dbg !3660
  %21 = icmp ne ptr %20, null, !dbg !3660
  br i1 %21, label %22, label %34, !dbg !3662

22:                                               ; preds = %0
  %23 = load ptr, ptr %2, align 8, !dbg !3663
  %24 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %23, i32 0, i32 16, !dbg !3664
  %25 = load ptr, ptr %24, align 8, !dbg !3664
  %26 = icmp ne ptr %25, null, !dbg !3663
  br i1 %26, label %27, label %34, !dbg !3665

27:                                               ; preds = %22
  %28 = load i32, ptr getelementptr inbounds (%struct._turn_params_, ptr @turn_params, i32 0, i32 93), align 8, !dbg !3666
  %29 = icmp ne i32 %28, 0, !dbg !3667
  br i1 %29, label %34, label %30, !dbg !3668

30:                                               ; preds = %27
  %31 = load ptr, ptr %2, align 8, !dbg !3669
  %32 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %31, i32 0, i32 16, !dbg !3671
  %33 = load ptr, ptr %32, align 8, !dbg !3671
  call void %33(ptr noundef @realms_list), !dbg !3672
  br label %34, !dbg !3673

34:                                               ; preds = %30, %27, %22, %0
  ret void, !dbg !3674
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @atol(ptr noundef) #7

declare i32 @get_canonic_origin(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_realm_option_one(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 !dbg !3675 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3676, metadata !DIExpression()), !dbg !3677
  store i64 %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3678, metadata !DIExpression()), !dbg !3679
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3680, metadata !DIExpression()), !dbg !3681
  %9 = load i64, ptr %6, align 8, !dbg !3682
  %10 = icmp eq i64 %9, -1, !dbg !3684
  br i1 %10, label %11, label %12, !dbg !3685

11:                                               ; preds = %3
  store i32 0, ptr %4, align 4, !dbg !3686
  br label %30, !dbg !3686

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3687, metadata !DIExpression()), !dbg !3688
  %13 = call ptr @get_dbdriver(), !dbg !3689
  store ptr %13, ptr %8, align 8, !dbg !3688
  %14 = load ptr, ptr %8, align 8, !dbg !3690
  %15 = icmp ne ptr %14, null, !dbg !3690
  br i1 %15, label %16, label %29, !dbg !3692

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8, !dbg !3693
  %18 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %17, i32 0, i32 11, !dbg !3694
  %19 = load ptr, ptr %18, align 8, !dbg !3694
  %20 = icmp ne ptr %19, null, !dbg !3693
  br i1 %20, label %21, label %29, !dbg !3695

21:                                               ; preds = %16
  %22 = load ptr, ptr %8, align 8, !dbg !3696
  %23 = getelementptr inbounds %struct._turn_dbdriver_t, ptr %22, i32 0, i32 11, !dbg !3698
  %24 = load ptr, ptr %23, align 8, !dbg !3698
  %25 = load ptr, ptr %5, align 8, !dbg !3699
  %26 = load i64, ptr %6, align 8, !dbg !3700
  %27 = load ptr, ptr %7, align 8, !dbg !3701
  %28 = call i32 %24(ptr noundef %25, i64 noundef %26, ptr noundef %27), !dbg !3702
  br label %29, !dbg !3703

29:                                               ; preds = %21, %16, %12
  store i32 0, ptr %4, align 4, !dbg !3704
  br label %30, !dbg !3704

30:                                               ; preds = %29, %11
  %31 = load i32, ptr %4, align 4, !dbg !3705
  ret i32 %31, !dbg !3705
}

; Function Attrs: nounwind
declare i32 @pthread_rwlock_wrlock(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind willreturn memory(read) }
attributes #14 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!437, !438, !439, !440, !441, !442, !443}
!llvm.ident = !{!444}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "realms", scope: !2, file: !286, line: 69, type: !145, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !282, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/userdb.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "892ccda1016ad0bc5e7662da91c3ba87")
!4 = !{!5, !14, !22, !29, !37, !43, !56, !67, !76, !83, !88}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ENC_ALG", file: !6, line: 177, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "src/client/ns_turn_msg_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "4d8c44ae9e82b7a50b86805787352690")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13}
!9 = !DIEnumerator(name: "ENC_ALG_ERROR", value: -1)
!10 = !DIEnumerator(name: "ENC_ALG_DEFAULT", value: 0)
!11 = !DIEnumerator(name: "A256GCM", value: 0)
!12 = !DIEnumerator(name: "A128GCM", value: 1)
!13 = !DIEnumerator(name: "ENC_ALG_NUM", value: 2)
!14 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !15, line: 47, baseType: !16, size: 32, elements: !17)
!15 = !DIFile(filename: "src/apps/common/ns_turn_utils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "74cb4019b1eb9d8e2b879df518b15a25")
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21}
!18 = !DIEnumerator(name: "TURN_LOG_LEVEL_INFO", value: 0)
!19 = !DIEnumerator(name: "TURN_LOG_LEVEL_CONTROL", value: 1)
!20 = !DIEnumerator(name: "TURN_LOG_LEVEL_WARNING", value: 2)
!21 = !DIEnumerator(name: "TURN_LOG_LEVEL_ERROR", value: 3)
!22 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !23, line: 54, baseType: !16, size: 32, elements: !24)
!23 = !DIFile(filename: "src/client/ns_turn_msg.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "43c56357294df21a547ee0716fe3769d")
!24 = !{!25, !26, !27, !28}
!25 = !DIEnumerator(name: "TURN_CREDENTIALS_NONE", value: 0)
!26 = !DIEnumerator(name: "TURN_CREDENTIALS_LONG_TERM", value: 1)
!27 = !DIEnumerator(name: "TURN_CREDENTIALS_SHORT_TERM", value: 2)
!28 = !DIEnumerator(name: "TURN_CREDENTIALS_UNDEFINED", value: 3)
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SHATYPE", file: !6, line: 160, baseType: !7, size: 32, elements: !30)
!30 = !{!31, !32, !33, !34, !35, !36}
!31 = !DIEnumerator(name: "SHATYPE_ERROR", value: -1)
!32 = !DIEnumerator(name: "SHATYPE_DEFAULT", value: 0)
!33 = !DIEnumerator(name: "SHATYPE_SHA1", value: 0)
!34 = !DIEnumerator(name: "SHATYPE_SHA256", value: 1)
!35 = !DIEnumerator(name: "SHATYPE_SHA384", value: 2)
!36 = !DIEnumerator(name: "SHATYPE_SHA512", value: 3)
!37 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !38, line: 92, baseType: !16, size: 32, elements: !39)
!38 = !DIFile(filename: "src/server/ns_turn_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6e53554bfe42393e23ac816233e245b8")
!39 = !{!40, !41, !42}
!40 = !DIEnumerator(name: "DONT_FRAGMENT_UNSUPPORTED", value: 0)
!41 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORTED", value: 1)
!42 = !DIEnumerator(name: "DONT_FRAGMENT_SUPPORT_EMULATED", value: 2)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_TYPE", file: !44, line: 85, baseType: !16, size: 32, elements: !45)
!44 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!45 = !{!46, !47, !48, !49, !50, !51, !52, !53, !54, !55}
!46 = !DIEnumerator(name: "UNKNOWN_SOCKET", value: 0)
!47 = !DIEnumerator(name: "TCP_SOCKET", value: 6)
!48 = !DIEnumerator(name: "UDP_SOCKET", value: 17)
!49 = !DIEnumerator(name: "TLS_SOCKET", value: 56)
!50 = !DIEnumerator(name: "SCTP_SOCKET", value: 132)
!51 = !DIEnumerator(name: "TLS_SCTP_SOCKET", value: 133)
!52 = !DIEnumerator(name: "DTLS_SOCKET", value: 250)
!53 = !DIEnumerator(name: "TCP_SOCKET_PROXY", value: 253)
!54 = !DIEnumerator(name: "TENTATIVE_SCTP_SOCKET", value: 254)
!55 = !DIEnumerator(name: "TENTATIVE_TCP_SOCKET", value: 255)
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_SOCKET_APP_TYPE", file: !44, line: 100, baseType: !16, size: 32, elements: !57)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66}
!58 = !DIEnumerator(name: "UNKNOWN_APP_SOCKET", value: 0)
!59 = !DIEnumerator(name: "CLIENT_SOCKET", value: 1)
!60 = !DIEnumerator(name: "HTTP_CLIENT_SOCKET", value: 2)
!61 = !DIEnumerator(name: "HTTPS_CLIENT_SOCKET", value: 3)
!62 = !DIEnumerator(name: "RELAY_SOCKET", value: 4)
!63 = !DIEnumerator(name: "RELAY_RTCP_SOCKET", value: 5)
!64 = !DIEnumerator(name: "TCP_CLIENT_DATA_SOCKET", value: 6)
!65 = !DIEnumerator(name: "TCP_RELAY_DATA_SOCKET", value: 7)
!66 = !DIEnumerator(name: "LISTENER_SOCKET", value: 8)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TC_STATE", file: !68, line: 67, baseType: !16, size: 32, elements: !69)
!68 = !DIFile(filename: "src/server/ns_turn_allocation.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0cb2cf61c9ec5dd3030a6e5a6f8d4af1")
!69 = !{!70, !71, !72, !73, !74, !75}
!70 = !DIEnumerator(name: "TC_STATE_UNKNOWN", value: 0)
!71 = !DIEnumerator(name: "TC_STATE_CLIENT_TO_PEER_CONNECTING", value: 1)
!72 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTING", value: 2)
!73 = !DIEnumerator(name: "TC_STATE_PEER_CONNECTED", value: 3)
!74 = !DIEnumerator(name: "TC_STATE_READY", value: 4)
!75 = !DIEnumerator(name: "TC_STATE_FAILED", value: 5)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_MESSAGE_TO_RELAY_TYPE", file: !38, line: 69, baseType: !16, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82}
!78 = !DIEnumerator(name: "RMT_UNKNOWN", value: 0)
!79 = !DIEnumerator(name: "RMT_SOCKET", value: 1)
!80 = !DIEnumerator(name: "RMT_CB_SOCKET", value: 2)
!81 = !DIEnumerator(name: "RMT_MOBILE_SOCKET", value: 3)
!82 = !DIEnumerator(name: "RMT_CANCEL_SESSION", value: 4)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !38, line: 79, baseType: !16, size: 32, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV4", value: 0)
!86 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_IPV6", value: 1)
!87 = !DIEnumerator(name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY_KEEP", value: 2)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "_TURNADMIN_COMMAND_TYPE", file: !89, line: 119, baseType: !16, size: 32, elements: !90)
!89 = !DIFile(filename: "src/apps/relay/userdb.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "ef7aa3b34af7515d3cf1275f8bfd0947")
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103}
!91 = !DIEnumerator(name: "TA_COMMAND_UNKNOWN", value: 0)
!92 = !DIEnumerator(name: "TA_PRINT_KEY", value: 1)
!93 = !DIEnumerator(name: "TA_UPDATE_USER", value: 2)
!94 = !DIEnumerator(name: "TA_DELETE_USER", value: 3)
!95 = !DIEnumerator(name: "TA_LIST_USERS", value: 4)
!96 = !DIEnumerator(name: "TA_SET_SECRET", value: 5)
!97 = !DIEnumerator(name: "TA_SHOW_SECRET", value: 6)
!98 = !DIEnumerator(name: "TA_DEL_SECRET", value: 7)
!99 = !DIEnumerator(name: "TA_ADD_ORIGIN", value: 8)
!100 = !DIEnumerator(name: "TA_DEL_ORIGIN", value: 9)
!101 = !DIEnumerator(name: "TA_LIST_ORIGINS", value: 10)
!102 = !DIEnumerator(name: "TA_SET_REALM_OPTION", value: 11)
!103 = !DIEnumerator(name: "TA_LIST_REALM_OPTIONS", value: 12)
!104 = !{!105, !108, !111, !112, !113, !148, !149, !153, !157, !159, !7, !164, !107, !165, !133, !16, !170, !201, !206, !134}
!105 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_value_type", file: !106, line: 225, baseType: !107)
!106 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map_key_type", file: !106, line: 224, baseType: !111)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_params_t", file: !89, line: 55, baseType: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_params_t", file: !89, line: 64, size: 1344, elements: !116)
!116 = !{!117, !118, !139}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "is_default_realm", scope: !115, file: !89, line: 66, baseType: !7, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !115, file: !89, line: 68, baseType: !119, size: 1152, offset: 64)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_options_t", file: !44, line: 142, baseType: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_options_t", file: !121, line: 53, size: 1152, elements: !122)
!121 = !DIFile(filename: "src/server/ns_turn_session.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "0d3b1381a7fca7a8f35b6ee419f25609")
!122 = !{!123, !127}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !120, file: !121, line: 55, baseType: !124, size: 1024)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "perf_options", scope: !120, file: !121, line: 57, baseType: !128, size: 128, offset: 1024)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "perf_options_t", file: !121, line: 51, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_perf_options_t", file: !121, line: 45, size: 128, elements: !130)
!130 = !{!131, !135, !138}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "max_bps", scope: !129, file: !121, line: 47, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "band_limit_t", file: !23, line: 67, baseType: !134)
!134 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "total_quota", scope: !129, file: !121, line: 48, baseType: !136, size: 32, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "vint", file: !137, line: 105, baseType: !7)
!137 = !DIFile(filename: "src/ns_turn_defs.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "126e9c9d0b914de7fdf6162f77453397")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "user_quota", scope: !129, file: !121, line: 49, baseType: !136, size: 32, offset: 96)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !115, file: !89, line: 70, baseType: !140, size: 128, offset: 1216)
!140 = !DIDerivedType(tag: DW_TAG_typedef, name: "realm_status_t", file: !89, line: 52, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_realm_status_t", file: !89, line: 57, size: 128, elements: !142)
!142 = !{!143, !144}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "total_current_allocs", scope: !141, file: !89, line: 59, baseType: !136, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_counters", scope: !141, file: !89, line: 60, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_string_map", file: !106, line: 227, baseType: !147)
!147 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_string_map", file: !106, line: 226, flags: DIFlagFwdDecl)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !150, line: 26, baseType: !151)
!150 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h", directory: "", checksumkind: CSK_MD5, checksum: "55bcbdc3159515ebd91d351a70d505f4")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__int32_t", file: !152, line: 41, baseType: !7)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_time_t", file: !137, line: 108, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !155, line: 26, baseType: !156)
!155 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !152, line: 42, baseType: !16)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !134)
!158 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !155, line: 24, baseType: !162)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !152, line: 38, baseType: !163)
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "hmackey_t", file: !23, line: 64, baseType: !167)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 512, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_rwlock_t", file: !172, line: 91, baseType: !173)
!172 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!173 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !172, line: 86, size: 448, elements: !174)
!174 = !{!175, !195, !199}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !173, file: !172, line: 88, baseType: !176, size: 448)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_rwlock_arch_t", file: !177, line: 23, size: 448, elements: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h", directory: "", checksumkind: CSK_MD5, checksum: "2034038f4a99ff6cb7b9de3a3e8c2a8e")
!178 = !{!179, !180, !181, !182, !183, !184, !185, !186, !187, !189, !193, !194}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "__readers", scope: !176, file: !177, line: 25, baseType: !16, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "__writers", scope: !176, file: !177, line: 26, baseType: !16, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "__wrphase_futex", scope: !176, file: !177, line: 27, baseType: !16, size: 32, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "__writers_futex", scope: !176, file: !177, line: 28, baseType: !16, size: 32, offset: 96)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "__pad3", scope: !176, file: !177, line: 29, baseType: !16, size: 32, offset: 128)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "__pad4", scope: !176, file: !177, line: 30, baseType: !16, size: 32, offset: 160)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "__cur_writer", scope: !176, file: !177, line: 32, baseType: !7, size: 32, offset: 192)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "__shared", scope: !176, file: !177, line: 33, baseType: !7, size: 32, offset: 224)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "__rwelision", scope: !176, file: !177, line: 34, baseType: !188, size: 8, offset: 256)
!188 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "__pad1", scope: !176, file: !177, line: 39, baseType: !190, size: 56, offset: 264)
!190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 56, elements: !191)
!191 = !{!192}
!192 = !DISubrange(count: 7)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "__pad2", scope: !176, file: !177, line: 42, baseType: !134, size: 64, offset: 320)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "__flags", scope: !176, file: !177, line: 45, baseType: !16, size: 32, offset: 384)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !173, file: !172, line: 89, baseType: !196, size: 448)
!196 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 448, elements: !197)
!197 = !{!198}
!198 = !DISubrange(count: 56)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !173, file: !172, line: 90, baseType: !200, size: 64)
!200 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_list_t", file: !44, line: 159, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range_list", file: !44, line: 154, size: 128, elements: !204)
!204 = !{!205, !281}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "rs", scope: !203, file: !44, line: 155, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "ip_range_t", file: !44, line: 152, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ip_range", file: !44, line: 146, size: 6624, elements: !209)
!209 = !{!210, !214, !218}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !208, file: !44, line: 147, baseType: !211, size: 2056)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2056, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 257)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !208, file: !44, line: 148, baseType: !215, size: 4104, offset: 2056)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 4104, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 513)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "enc", scope: !208, file: !44, line: 149, baseType: !219, size: 448, offset: 6176)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr_range", file: !220, line: 53, baseType: !221)
!220 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !220, line: 50, size: 448, elements: !222)
!222 = !{!223, !280}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "min", scope: !221, file: !220, line: 51, baseType: !224, size: 224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !220, line: 48, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !220, line: 44, size: 224, elements: !226)
!226 = !{!227, !239, !257}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !225, file: !220, line: 45, baseType: !228, size: 128)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !229, line: 180, size: 128, elements: !230)
!229 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!230 = !{!231, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !228, file: !229, line: 182, baseType: !232, size: 16)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !233, line: 28, baseType: !234)
!233 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!234 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !228, file: !229, line: 183, baseType: !236, size: 112, offset: 16)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 112, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 14)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !225, file: !220, line: 46, baseType: !240, size: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !241, line: 245, size: 128, elements: !242)
!241 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!242 = !{!243, !244, !248, !253}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !240, file: !241, line: 247, baseType: !232, size: 16)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !240, file: !241, line: 248, baseType: !245, size: 16, offset: 16)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !241, line: 123, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !155, line: 25, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !152, line: 40, baseType: !234)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !240, file: !241, line: 249, baseType: !249, size: 32, offset: 32)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !241, line: 31, size: 32, elements: !250)
!250 = !{!251}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !249, file: !241, line: 33, baseType: !252, size: 32)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !241, line: 30, baseType: !154)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !240, file: !241, line: 252, baseType: !254, size: 64, offset: 64)
!254 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 64, elements: !255)
!255 = !{!256}
!256 = !DISubrange(count: 8)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !225, file: !220, line: 47, baseType: !258, size: 224)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !241, line: 260, size: 224, elements: !259)
!259 = !{!260, !261, !262, !263, !279}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !258, file: !241, line: 262, baseType: !232, size: 16)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !258, file: !241, line: 263, baseType: !245, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !258, file: !241, line: 264, baseType: !154, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !258, file: !241, line: 265, baseType: !264, size: 128, offset: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !241, line: 219, size: 128, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !264, file: !241, line: 226, baseType: !267, size: 128)
!267 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !264, file: !241, line: 221, size: 128, elements: !268)
!268 = !{!269, !273, !275}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !267, file: !241, line: 223, baseType: !270, size: 128)
!270 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 128, elements: !271)
!271 = !{!272}
!272 = !DISubrange(count: 16)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !267, file: !241, line: 224, baseType: !274, size: 128)
!274 = !DICompositeType(tag: DW_TAG_array_type, baseType: !246, size: 128, elements: !255)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !267, file: !241, line: 225, baseType: !276, size: 128)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !154, size: 128, elements: !277)
!277 = !{!278}
!278 = !DISubrange(count: 4)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !258, file: !241, line: 266, baseType: !154, size: 32, offset: 192)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !221, file: !220, line: 52, baseType: !224, size: 224, offset: 224)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "ranges_number", scope: !203, file: !44, line: 156, baseType: !157, size: 64, offset: 64)
!282 = !{!283, !290, !293, !298, !303, !308, !313, !318, !323, !328, !330, !335, !340, !345, !350, !353, !358, !363, !366, !369, !374, !379, !386, !0, !393, !395, !397, !402, !407, !409, !414, !419, !424, !429, !431, !433, !435}
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "_default_realm_params", scope: !285, file: !286, line: 95, type: !114, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "create_default_realm", scope: !286, file: !286, line: 89, type: !287, scopeLine: 90, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!286 = !DIFile(filename: "src/apps/relay/userdb.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "892ccda1016ad0bc5e7662da91c3ba87")
!287 = !DISubroutineType(types: !288)
!288 = !{null}
!289 = !{}
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(scope: null, file: !286, line: 454, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !277)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !286, line: 465, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 272, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 34)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !286, line: 475, type: !300, isLocal: true, isDefinition: true)
!300 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 280, elements: !301)
!301 = !{!302}
!302 = !DISubrange(count: 35)
!303 = !DIGlobalVariableExpression(var: !304, expr: !DIExpression())
!304 = distinct !DIGlobalVariable(scope: null, file: !286, line: 481, type: !305, isLocal: true, isDefinition: true)
!305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 216, elements: !306)
!306 = !{!307}
!307 = !DISubrange(count: 27)
!308 = !DIGlobalVariableExpression(var: !309, expr: !DIExpression())
!309 = distinct !DIGlobalVariable(scope: null, file: !286, line: 492, type: !310, isLocal: true, isDefinition: true)
!310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 392, elements: !311)
!311 = !{!312}
!312 = !DISubrange(count: 49)
!313 = !DIGlobalVariableExpression(var: !314, expr: !DIExpression())
!314 = distinct !DIGlobalVariable(scope: null, file: !286, line: 510, type: !315, isLocal: true, isDefinition: true)
!315 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 192, elements: !316)
!316 = !{!317}
!317 = !DISubrange(count: 24)
!318 = !DIGlobalVariableExpression(var: !319, expr: !DIExpression())
!319 = distinct !DIGlobalVariable(scope: null, file: !286, line: 663, type: !320, isLocal: true, isDefinition: true)
!320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 8, elements: !321)
!321 = !{!322}
!322 = !DISubrange(count: 1)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !286, line: 719, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 16, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 2)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !286, line: 721, type: !315, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !286, line: 728, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 168, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 21)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !286, line: 734, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 24, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 3)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !286, line: 738, type: !342, isLocal: true, isDefinition: true)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 176, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 22)
!345 = !DIGlobalVariableExpression(var: !346, expr: !DIExpression())
!346 = distinct !DIGlobalVariable(scope: null, file: !286, line: 740, type: !347, isLocal: true, isDefinition: true)
!347 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 120, elements: !348)
!348 = !{!349}
!349 = !DISubrange(count: 15)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !286, line: 930, type: !352, isLocal: true, isDefinition: true)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 512, elements: !168)
!353 = !DIGlobalVariableExpression(var: !354, expr: !DIExpression())
!354 = distinct !DIGlobalVariable(scope: null, file: !286, line: 953, type: !355, isLocal: true, isDefinition: true)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 40, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 5)
!358 = !DIGlobalVariableExpression(var: !359, expr: !DIExpression())
!359 = distinct !DIGlobalVariable(scope: null, file: !286, line: 965, type: !360, isLocal: true, isDefinition: true)
!360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 48, elements: !361)
!361 = !{!362}
!362 = !DISubrange(count: 6)
!363 = !DIGlobalVariableExpression(var: !364, expr: !DIExpression())
!364 = distinct !DIGlobalVariable(scope: null, file: !286, line: 1189, type: !365, isLocal: true, isDefinition: true)
!365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !255)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !286, line: 1198, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 56, elements: !191)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !286, line: 1223, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 208, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 26)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !286, line: 1268, type: !376, isLocal: true, isDefinition: true)
!376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !377)
!377 = !{!378}
!378 = !DISubrange(count: 32)
!379 = !DIGlobalVariableExpression(var: !380, expr: !DIExpression())
!380 = distinct !DIGlobalVariable(name: "o_to_realm_mutex", scope: !2, file: !286, line: 70, type: !381, isLocal: true, isDefinition: true)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !44, line: 60, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !44, line: 55, size: 128, elements: !383)
!383 = !{!384, !385}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !382, file: !44, line: 56, baseType: !154, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !382, file: !44, line: 57, baseType: !107, size: 64, offset: 64)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(name: "realms_list", scope: !2, file: !286, line: 72, type: !388, isLocal: true, isDefinition: true)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "secrets_list_t", file: !89, line: 143, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_secrets_list", file: !89, line: 139, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "secrets", scope: !389, file: !89, line: 140, baseType: !148, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !389, file: !89, line: 141, baseType: !157, size: 64, offset: 64)
!393 = !DIGlobalVariableExpression(var: !394, expr: !DIExpression())
!394 = distinct !DIGlobalVariable(name: "o_to_realm", scope: !2, file: !286, line: 71, type: !145, isLocal: true, isDefinition: true)
!395 = !DIGlobalVariableExpression(var: !396, expr: !DIExpression())
!396 = distinct !DIGlobalVariable(name: "default_realm_params_ptr", scope: !2, file: !286, line: 67, type: !113, isLocal: true, isDefinition: true)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !286, line: 244, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 480, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 60)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !286, line: 217, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 472, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 59)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !286, line: 875, type: !365, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !286, line: 876, type: !411, isLocal: true, isDefinition: true)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 88, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 11)
!414 = !DIGlobalVariableExpression(var: !415, expr: !DIExpression())
!415 = distinct !DIGlobalVariable(scope: null, file: !286, line: 877, type: !416, isLocal: true, isDefinition: true)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 96, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 12)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !286, line: 226, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 464, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 58)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !286, line: 235, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 496, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 62)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "whitelist_rwlock", scope: !2, file: !286, line: 1074, type: !170, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(name: "blacklist_rwlock", scope: !2, file: !286, line: 1075, type: !170, isLocal: true, isDefinition: true)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(name: "ipwhitelist", scope: !2, file: !286, line: 1081, type: !201, isLocal: true, isDefinition: true)
!435 = !DIGlobalVariableExpression(var: !436, expr: !DIExpression())
!436 = distinct !DIGlobalVariable(name: "ipblacklist", scope: !2, file: !286, line: 1082, type: !201, isLocal: true, isDefinition: true)
!437 = !{i32 7, !"Dwarf Version", i32 5}
!438 = !{i32 2, !"Debug Info Version", i32 3}
!439 = !{i32 1, !"wchar_size", i32 4}
!440 = !{i32 8, !"PIC Level", i32 2}
!441 = !{i32 7, !"PIE Level", i32 2}
!442 = !{i32 7, !"uwtable", i32 2}
!443 = !{i32 7, !"frame-pointer", i32 2}
!444 = !{!"clang version 16.0.0"}
!445 = distinct !DISubprogram(name: "lock_realms", scope: !286, file: !286, line: 74, type: !287, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!446 = !DILocation(line: 75, column: 21, scope: !445)
!447 = !DILocation(line: 75, column: 2, scope: !445)
!448 = !DILocation(line: 76, column: 1, scope: !445)
!449 = distinct !DISubprogram(name: "unlock_realms", scope: !286, file: !286, line: 78, type: !287, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!450 = !DILocation(line: 79, column: 23, scope: !449)
!451 = !DILocation(line: 79, column: 2, scope: !449)
!452 = !DILocation(line: 80, column: 1, scope: !449)
!453 = distinct !DISubprogram(name: "update_o_to_realm", scope: !286, file: !286, line: 82, type: !454, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !145}
!456 = !DILocalVariable(name: "o_to_realm_new", arg: 1, scope: !453, file: !286, line: 82, type: !145)
!457 = !DILocation(line: 82, column: 40, scope: !453)
!458 = !DILocation(line: 83, column: 3, scope: !453)
!459 = !DILocation(line: 84, column: 3, scope: !453)
!460 = !DILocation(line: 85, column: 16, scope: !453)
!461 = !DILocation(line: 85, column: 14, scope: !453)
!462 = !DILocation(line: 86, column: 3, scope: !453)
!463 = !DILocation(line: 87, column: 1, scope: !453)
!464 = !DILocation(line: 91, column: 5, scope: !465)
!465 = distinct !DILexicalBlock(scope: !285, file: !286, line: 91, column: 5)
!466 = !DILocation(line: 91, column: 5, scope: !285)
!467 = !DILocation(line: 92, column: 3, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !286, line: 91, column: 31)
!469 = !DILocation(line: 106, column: 2, scope: !285)
!470 = !DILocation(line: 107, column: 2, scope: !285)
!471 = !DILocation(line: 108, column: 15, scope: !285)
!472 = !DILocation(line: 108, column: 13, scope: !285)
!473 = !DILocation(line: 109, column: 27, scope: !285)
!474 = !DILocation(line: 110, column: 11, scope: !285)
!475 = !DILocation(line: 110, column: 9, scope: !285)
!476 = !DILocation(line: 111, column: 2, scope: !285)
!477 = !DILocation(line: 112, column: 53, scope: !285)
!478 = !DILocation(line: 112, column: 2, scope: !285)
!479 = !DILocation(line: 112, column: 28, scope: !285)
!480 = !DILocation(line: 112, column: 35, scope: !285)
!481 = !DILocation(line: 112, column: 50, scope: !285)
!482 = !DILocation(line: 113, column: 2, scope: !285)
!483 = !DILocation(line: 114, column: 1, scope: !285)
!484 = distinct !DISubprogram(name: "init_secrets_list", scope: !286, file: !286, line: 251, type: !485, scopeLine: 252, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!485 = !DISubroutineType(types: !486)
!486 = !{null, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!488 = !DILocalVariable(name: "sl", arg: 1, scope: !484, file: !286, line: 251, type: !487)
!489 = !DILocation(line: 251, column: 40, scope: !484)
!490 = !DILocation(line: 253, column: 5, scope: !491)
!491 = distinct !DILexicalBlock(scope: !484, file: !286, line: 253, column: 5)
!492 = !DILocation(line: 253, column: 5, scope: !484)
!493 = !DILocation(line: 254, column: 9, scope: !494)
!494 = distinct !DILexicalBlock(scope: !491, file: !286, line: 253, column: 9)
!495 = !DILocation(line: 254, column: 3, scope: !494)
!496 = !DILocation(line: 255, column: 2, scope: !494)
!497 = !DILocation(line: 256, column: 1, scope: !484)
!498 = distinct !DISubprogram(name: "get_default_realm_options", scope: !286, file: !286, line: 116, type: !499, scopeLine: 117, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!499 = !DISubroutineType(types: !500)
!500 = !{null, !501}
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!502 = !DILocalVariable(name: "ro", arg: 1, scope: !498, file: !286, line: 116, type: !501)
!503 = !DILocation(line: 116, column: 49, scope: !498)
!504 = !DILocation(line: 118, column: 5, scope: !505)
!505 = distinct !DILexicalBlock(scope: !498, file: !286, line: 118, column: 5)
!506 = !DILocation(line: 118, column: 5, scope: !498)
!507 = !DILocation(line: 119, column: 3, scope: !508)
!508 = distinct !DILexicalBlock(scope: !505, file: !286, line: 118, column: 9)
!509 = !DILocation(line: 120, column: 11, scope: !508)
!510 = !DILocation(line: 120, column: 37, scope: !508)
!511 = !DILocation(line: 120, column: 46, scope: !508)
!512 = !DILocation(line: 120, column: 3, scope: !508)
!513 = !DILocation(line: 121, column: 3, scope: !508)
!514 = !DILocation(line: 122, column: 2, scope: !508)
!515 = !DILocation(line: 123, column: 1, scope: !498)
!516 = distinct !DISubprogram(name: "set_default_realm_name", scope: !286, file: !286, line: 125, type: !517, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!517 = !DISubroutineType(types: !518)
!518 = !{null, !111}
!519 = !DILocalVariable(name: "realm", arg: 1, scope: !516, file: !286, line: 125, type: !111)
!520 = !DILocation(line: 125, column: 35, scope: !516)
!521 = !DILocation(line: 126, column: 2, scope: !516)
!522 = !DILocalVariable(name: "value", scope: !516, file: !286, line: 127, type: !105)
!523 = !DILocation(line: 127, column: 27, scope: !516)
!524 = !DILocation(line: 127, column: 61, scope: !516)
!525 = !DILocation(line: 128, column: 2, scope: !516)
!526 = !DILocation(line: 128, column: 2, scope: !527)
!527 = distinct !DILexicalBlock(scope: !528, file: !286, line: 128, column: 2)
!528 = distinct !DILexicalBlock(scope: !516, file: !286, line: 128, column: 2)
!529 = !DILocation(line: 128, column: 2, scope: !528)
!530 = !DILocalVariable(name: "szdst", scope: !531, file: !286, line: 128, type: !157)
!531 = distinct !DILexicalBlock(scope: !532, file: !286, line: 128, column: 2)
!532 = distinct !DILexicalBlock(scope: !533, file: !286, line: 128, column: 2)
!533 = distinct !DILexicalBlock(scope: !527, file: !286, line: 128, column: 2)
!534 = !DILocation(line: 128, column: 2, scope: !531)
!535 = !DILocation(line: 128, column: 2, scope: !533)
!536 = !DILocation(line: 129, column: 20, scope: !516)
!537 = !DILocation(line: 129, column: 52, scope: !516)
!538 = !DILocation(line: 129, column: 78, scope: !516)
!539 = !DILocation(line: 129, column: 86, scope: !516)
!540 = !DILocation(line: 129, column: 92, scope: !516)
!541 = !DILocation(line: 129, column: 2, scope: !516)
!542 = !DILocation(line: 130, column: 36, scope: !516)
!543 = !DILocation(line: 130, column: 2, scope: !516)
!544 = !DILocation(line: 131, column: 2, scope: !516)
!545 = !DILocation(line: 132, column: 1, scope: !516)
!546 = distinct !DISubprogram(name: "add_to_secrets_list", scope: !286, file: !286, line: 291, type: !547, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!547 = !DISubroutineType(types: !548)
!548 = !{null, !487, !108}
!549 = !DILocalVariable(name: "sl", arg: 1, scope: !546, file: !286, line: 291, type: !487)
!550 = !DILocation(line: 291, column: 42, scope: !546)
!551 = !DILocalVariable(name: "elem", arg: 2, scope: !546, file: !286, line: 291, type: !108)
!552 = !DILocation(line: 291, column: 58, scope: !546)
!553 = !DILocation(line: 293, column: 5, scope: !554)
!554 = distinct !DILexicalBlock(scope: !546, file: !286, line: 293, column: 5)
!555 = !DILocation(line: 293, column: 8, scope: !554)
!556 = !DILocation(line: 293, column: 11, scope: !554)
!557 = !DILocation(line: 293, column: 5, scope: !546)
!558 = !DILocation(line: 294, column: 34, scope: !559)
!559 = distinct !DILexicalBlock(scope: !554, file: !286, line: 293, column: 17)
!560 = !DILocation(line: 294, column: 38, scope: !559)
!561 = !DILocation(line: 294, column: 62, scope: !559)
!562 = !DILocation(line: 294, column: 66, scope: !559)
!563 = !DILocation(line: 294, column: 68, scope: !559)
!564 = !DILocation(line: 294, column: 60, scope: !559)
!565 = !DILocation(line: 294, column: 26, scope: !559)
!566 = !DILocation(line: 294, column: 4, scope: !559)
!567 = !DILocation(line: 294, column: 8, scope: !559)
!568 = !DILocation(line: 294, column: 16, scope: !559)
!569 = !DILocation(line: 295, column: 33, scope: !559)
!570 = !DILocation(line: 295, column: 26, scope: !559)
!571 = !DILocation(line: 295, column: 4, scope: !559)
!572 = !DILocation(line: 295, column: 8, scope: !559)
!573 = !DILocation(line: 295, column: 16, scope: !559)
!574 = !DILocation(line: 295, column: 20, scope: !559)
!575 = !DILocation(line: 295, column: 24, scope: !559)
!576 = !DILocation(line: 296, column: 4, scope: !559)
!577 = !DILocation(line: 296, column: 8, scope: !559)
!578 = !DILocation(line: 296, column: 11, scope: !559)
!579 = !DILocation(line: 297, column: 2, scope: !559)
!580 = !DILocation(line: 298, column: 1, scope: !546)
!581 = distinct !DISubprogram(name: "get_realm", scope: !286, file: !286, line: 134, type: !582, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!582 = !DISubroutineType(types: !583)
!583 = !{!113, !111}
!584 = !DILocalVariable(name: "name", arg: 1, scope: !581, file: !286, line: 134, type: !111)
!585 = !DILocation(line: 134, column: 33, scope: !581)
!586 = !DILocation(line: 136, column: 5, scope: !587)
!587 = distinct !DILexicalBlock(scope: !581, file: !286, line: 136, column: 5)
!588 = !DILocation(line: 136, column: 10, scope: !587)
!589 = !DILocation(line: 136, column: 13, scope: !587)
!590 = !DILocation(line: 136, column: 5, scope: !581)
!591 = !DILocation(line: 137, column: 3, scope: !592)
!592 = distinct !DILexicalBlock(scope: !587, file: !286, line: 136, column: 22)
!593 = !DILocalVariable(name: "value", scope: !592, file: !286, line: 138, type: !105)
!594 = !DILocation(line: 138, column: 28, scope: !592)
!595 = !DILocalVariable(name: "key", scope: !592, file: !286, line: 139, type: !112)
!596 = !DILocation(line: 139, column: 26, scope: !592)
!597 = !DILocation(line: 139, column: 56, scope: !592)
!598 = !DILocation(line: 140, column: 25, scope: !599)
!599 = distinct !DILexicalBlock(scope: !592, file: !286, line: 140, column: 7)
!600 = !DILocation(line: 140, column: 33, scope: !599)
!601 = !DILocation(line: 140, column: 7, scope: !599)
!602 = !DILocation(line: 140, column: 7, scope: !592)
!603 = !DILocation(line: 141, column: 4, scope: !604)
!604 = distinct !DILexicalBlock(scope: !599, file: !286, line: 140, column: 47)
!605 = !DILocation(line: 142, column: 28, scope: !604)
!606 = !DILocation(line: 142, column: 4, scope: !604)
!607 = !DILocalVariable(name: "ret", scope: !608, file: !286, line: 144, type: !113)
!608 = distinct !DILexicalBlock(scope: !599, file: !286, line: 143, column: 10)
!609 = !DILocation(line: 144, column: 20, scope: !608)
!610 = !DILocation(line: 144, column: 43, scope: !608)
!611 = !DILocation(line: 145, column: 10, scope: !608)
!612 = !DILocation(line: 145, column: 35, scope: !608)
!613 = !DILocation(line: 145, column: 4, scope: !608)
!614 = !DILocation(line: 146, column: 4, scope: !608)
!615 = !DILocation(line: 146, column: 4, scope: !616)
!616 = distinct !DILexicalBlock(scope: !617, file: !286, line: 146, column: 4)
!617 = distinct !DILexicalBlock(scope: !608, file: !286, line: 146, column: 4)
!618 = !DILocation(line: 146, column: 4, scope: !617)
!619 = !DILocalVariable(name: "szdst", scope: !620, file: !286, line: 146, type: !157)
!620 = distinct !DILexicalBlock(scope: !621, file: !286, line: 146, column: 4)
!621 = distinct !DILexicalBlock(scope: !622, file: !286, line: 146, column: 4)
!622 = distinct !DILexicalBlock(scope: !616, file: !286, line: 146, column: 4)
!623 = !DILocation(line: 146, column: 4, scope: !620)
!624 = !DILocation(line: 146, column: 4, scope: !622)
!625 = !DILocation(line: 147, column: 38, scope: !608)
!626 = !DILocation(line: 147, column: 10, scope: !608)
!627 = !DILocation(line: 148, column: 22, scope: !608)
!628 = !DILocation(line: 148, column: 30, scope: !608)
!629 = !DILocation(line: 148, column: 35, scope: !608)
!630 = !DILocation(line: 148, column: 4, scope: !608)
!631 = !DILocation(line: 149, column: 34, scope: !608)
!632 = !DILocation(line: 149, column: 4, scope: !608)
!633 = !DILocation(line: 149, column: 9, scope: !608)
!634 = !DILocation(line: 149, column: 16, scope: !608)
!635 = !DILocation(line: 149, column: 31, scope: !608)
!636 = !DILocation(line: 150, column: 38, scope: !608)
!637 = !DILocation(line: 150, column: 4, scope: !608)
!638 = !DILocation(line: 151, column: 4, scope: !608)
!639 = !DILocation(line: 152, column: 11, scope: !608)
!640 = !DILocation(line: 152, column: 4, scope: !608)
!641 = !DILocation(line: 156, column: 9, scope: !581)
!642 = !DILocation(line: 156, column: 2, scope: !581)
!643 = !DILocation(line: 157, column: 1, scope: !581)
!644 = distinct !DISubprogram(name: "get_realm_data", scope: !286, file: !286, line: 159, type: !645, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!645 = !DISubroutineType(types: !646)
!646 = !{!7, !111, !113}
!647 = !DILocalVariable(name: "name", arg: 1, scope: !644, file: !286, line: 159, type: !111)
!648 = !DILocation(line: 159, column: 26, scope: !644)
!649 = !DILocalVariable(name: "rp", arg: 2, scope: !644, file: !286, line: 159, type: !113)
!650 = !DILocation(line: 159, column: 48, scope: !644)
!651 = !DILocation(line: 161, column: 2, scope: !644)
!652 = !DILocation(line: 162, column: 18, scope: !644)
!653 = !DILocation(line: 162, column: 8, scope: !644)
!654 = !DILocation(line: 162, column: 24, scope: !644)
!655 = !DILocation(line: 162, column: 2, scope: !644)
!656 = !DILocation(line: 163, column: 2, scope: !644)
!657 = !DILocation(line: 164, column: 2, scope: !644)
!658 = distinct !DISubprogram(name: "get_realm_options_by_origin", scope: !286, file: !286, line: 167, type: !659, scopeLine: 168, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!659 = !DISubroutineType(types: !660)
!660 = !{!7, !111, !501}
!661 = !DILocalVariable(name: "origin", arg: 1, scope: !658, file: !286, line: 167, type: !111)
!662 = !DILocation(line: 167, column: 39, scope: !658)
!663 = !DILocalVariable(name: "ro", arg: 2, scope: !658, file: !286, line: 167, type: !501)
!664 = !DILocation(line: 167, column: 64, scope: !658)
!665 = !DILocalVariable(name: "value", scope: !658, file: !286, line: 169, type: !105)
!666 = !DILocation(line: 169, column: 27, scope: !658)
!667 = !DILocation(line: 170, column: 2, scope: !658)
!668 = !DILocation(line: 171, column: 24, scope: !669)
!669 = distinct !DILexicalBlock(scope: !658, file: !286, line: 171, column: 6)
!670 = !DILocation(line: 171, column: 61, scope: !669)
!671 = !DILocation(line: 171, column: 6, scope: !669)
!672 = !DILocation(line: 171, column: 77, scope: !669)
!673 = !DILocation(line: 171, column: 80, scope: !669)
!674 = !DILocation(line: 171, column: 6, scope: !658)
!675 = !DILocalVariable(name: "realm", scope: !676, file: !286, line: 172, type: !111)
!676 = distinct !DILexicalBlock(scope: !669, file: !286, line: 171, column: 87)
!677 = !DILocation(line: 172, column: 9, scope: !676)
!678 = !DILocation(line: 172, column: 31, scope: !676)
!679 = !DILocation(line: 172, column: 17, scope: !676)
!680 = !DILocation(line: 173, column: 3, scope: !676)
!681 = !DILocalVariable(name: "rp", scope: !676, file: !286, line: 174, type: !114)
!682 = !DILocation(line: 174, column: 18, scope: !676)
!683 = !DILocation(line: 175, column: 18, scope: !676)
!684 = !DILocation(line: 175, column: 3, scope: !676)
!685 = !DILocation(line: 176, column: 14, scope: !676)
!686 = !DILocation(line: 176, column: 23, scope: !676)
!687 = !DILocation(line: 176, column: 3, scope: !676)
!688 = !DILocation(line: 177, column: 8, scope: !676)
!689 = !DILocation(line: 177, column: 3, scope: !676)
!690 = !DILocation(line: 178, column: 3, scope: !676)
!691 = !DILocation(line: 180, column: 3, scope: !692)
!692 = distinct !DILexicalBlock(scope: !669, file: !286, line: 179, column: 9)
!693 = !DILocation(line: 181, column: 29, scope: !692)
!694 = !DILocation(line: 181, column: 3, scope: !692)
!695 = !DILocation(line: 182, column: 3, scope: !692)
!696 = !DILocation(line: 184, column: 1, scope: !658)
!697 = distinct !DISubprogram(name: "get_realm_options_by_name", scope: !286, file: !286, line: 186, type: !698, scopeLine: 187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!698 = !DISubroutineType(types: !699)
!699 = !{null, !111, !501}
!700 = !DILocalVariable(name: "realm", arg: 1, scope: !697, file: !286, line: 186, type: !111)
!701 = !DILocation(line: 186, column: 38, scope: !697)
!702 = !DILocalVariable(name: "ro", arg: 2, scope: !697, file: !286, line: 186, type: !501)
!703 = !DILocation(line: 186, column: 62, scope: !697)
!704 = !DILocalVariable(name: "rp", scope: !697, file: !286, line: 188, type: !114)
!705 = !DILocation(line: 188, column: 17, scope: !697)
!706 = !DILocation(line: 189, column: 17, scope: !697)
!707 = !DILocation(line: 189, column: 2, scope: !697)
!708 = !DILocation(line: 190, column: 13, scope: !697)
!709 = !DILocation(line: 190, column: 22, scope: !697)
!710 = !DILocation(line: 190, column: 2, scope: !697)
!711 = !DILocation(line: 191, column: 1, scope: !697)
!712 = distinct !DISubprogram(name: "change_total_quota", scope: !286, file: !286, line: 193, type: !713, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!713 = !DISubroutineType(types: !714)
!714 = !{!7, !111, !7}
!715 = !DILocalVariable(name: "realm", arg: 1, scope: !712, file: !286, line: 193, type: !111)
!716 = !DILocation(line: 193, column: 30, scope: !712)
!717 = !DILocalVariable(name: "value", arg: 2, scope: !712, file: !286, line: 193, type: !7)
!718 = !DILocation(line: 193, column: 41, scope: !712)
!719 = !DILocalVariable(name: "ret", scope: !712, file: !286, line: 195, type: !7)
!720 = !DILocation(line: 195, column: 6, scope: !712)
!721 = !DILocation(line: 195, column: 12, scope: !712)
!722 = !DILocation(line: 196, column: 2, scope: !712)
!723 = !DILocalVariable(name: "rp", scope: !712, file: !286, line: 197, type: !113)
!724 = !DILocation(line: 197, column: 18, scope: !712)
!725 = !DILocation(line: 197, column: 33, scope: !712)
!726 = !DILocation(line: 197, column: 23, scope: !712)
!727 = !DILocation(line: 198, column: 41, scope: !712)
!728 = !DILocation(line: 198, column: 2, scope: !712)
!729 = !DILocation(line: 198, column: 6, scope: !712)
!730 = !DILocation(line: 198, column: 14, scope: !712)
!731 = !DILocation(line: 198, column: 27, scope: !712)
!732 = !DILocation(line: 198, column: 39, scope: !712)
!733 = !DILocation(line: 199, column: 2, scope: !712)
!734 = !DILocation(line: 200, column: 9, scope: !712)
!735 = !DILocation(line: 200, column: 2, scope: !712)
!736 = distinct !DISubprogram(name: "change_user_quota", scope: !286, file: !286, line: 203, type: !713, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!737 = !DILocalVariable(name: "realm", arg: 1, scope: !736, file: !286, line: 203, type: !111)
!738 = !DILocation(line: 203, column: 29, scope: !736)
!739 = !DILocalVariable(name: "value", arg: 2, scope: !736, file: !286, line: 203, type: !7)
!740 = !DILocation(line: 203, column: 40, scope: !736)
!741 = !DILocalVariable(name: "ret", scope: !736, file: !286, line: 205, type: !7)
!742 = !DILocation(line: 205, column: 6, scope: !736)
!743 = !DILocation(line: 205, column: 12, scope: !736)
!744 = !DILocation(line: 206, column: 2, scope: !736)
!745 = !DILocalVariable(name: "rp", scope: !736, file: !286, line: 207, type: !113)
!746 = !DILocation(line: 207, column: 18, scope: !736)
!747 = !DILocation(line: 207, column: 33, scope: !736)
!748 = !DILocation(line: 207, column: 23, scope: !736)
!749 = !DILocation(line: 208, column: 40, scope: !736)
!750 = !DILocation(line: 208, column: 2, scope: !736)
!751 = !DILocation(line: 208, column: 6, scope: !736)
!752 = !DILocation(line: 208, column: 14, scope: !736)
!753 = !DILocation(line: 208, column: 27, scope: !736)
!754 = !DILocation(line: 208, column: 38, scope: !736)
!755 = !DILocation(line: 209, column: 2, scope: !736)
!756 = !DILocation(line: 210, column: 9, scope: !736)
!757 = !DILocation(line: 210, column: 2, scope: !736)
!758 = distinct !DISubprogram(name: "clean_secrets_list", scope: !286, file: !286, line: 258, type: !485, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!759 = !DILocalVariable(name: "sl", arg: 1, scope: !758, file: !286, line: 258, type: !487)
!760 = !DILocation(line: 258, column: 41, scope: !758)
!761 = !DILocation(line: 260, column: 5, scope: !762)
!762 = distinct !DILexicalBlock(scope: !758, file: !286, line: 260, column: 5)
!763 = !DILocation(line: 260, column: 5, scope: !758)
!764 = !DILocation(line: 261, column: 6, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !286, line: 261, column: 6)
!766 = distinct !DILexicalBlock(scope: !762, file: !286, line: 260, column: 9)
!767 = !DILocation(line: 261, column: 10, scope: !765)
!768 = !DILocation(line: 261, column: 6, scope: !766)
!769 = !DILocalVariable(name: "i", scope: !770, file: !286, line: 262, type: !157)
!770 = distinct !DILexicalBlock(scope: !765, file: !286, line: 261, column: 19)
!771 = !DILocation(line: 262, column: 11, scope: !770)
!772 = !DILocation(line: 263, column: 10, scope: !773)
!773 = distinct !DILexicalBlock(scope: !770, file: !286, line: 263, column: 4)
!774 = !DILocation(line: 263, column: 8, scope: !773)
!775 = !DILocation(line: 263, column: 14, scope: !776)
!776 = distinct !DILexicalBlock(scope: !773, file: !286, line: 263, column: 4)
!777 = !DILocation(line: 263, column: 16, scope: !776)
!778 = !DILocation(line: 263, column: 20, scope: !776)
!779 = !DILocation(line: 263, column: 15, scope: !776)
!780 = !DILocation(line: 263, column: 4, scope: !773)
!781 = !DILocation(line: 264, column: 8, scope: !782)
!782 = distinct !DILexicalBlock(scope: !783, file: !286, line: 264, column: 8)
!783 = distinct !DILexicalBlock(scope: !776, file: !286, line: 263, column: 28)
!784 = !DILocation(line: 264, column: 12, scope: !782)
!785 = !DILocation(line: 264, column: 20, scope: !782)
!786 = !DILocation(line: 264, column: 8, scope: !783)
!787 = !DILocation(line: 265, column: 11, scope: !788)
!788 = distinct !DILexicalBlock(scope: !782, file: !286, line: 264, column: 24)
!789 = !DILocation(line: 265, column: 15, scope: !788)
!790 = !DILocation(line: 265, column: 23, scope: !788)
!791 = !DILocation(line: 265, column: 6, scope: !788)
!792 = !DILocation(line: 266, column: 5, scope: !788)
!793 = !DILocation(line: 267, column: 4, scope: !783)
!794 = !DILocation(line: 263, column: 23, scope: !776)
!795 = !DILocation(line: 263, column: 4, scope: !776)
!796 = distinct !{!796, !780, !797, !798}
!797 = !DILocation(line: 267, column: 4, scope: !773)
!798 = !{!"llvm.loop.mustprogress"}
!799 = !DILocation(line: 268, column: 9, scope: !770)
!800 = !DILocation(line: 268, column: 13, scope: !770)
!801 = !DILocation(line: 268, column: 4, scope: !770)
!802 = !DILocation(line: 269, column: 4, scope: !770)
!803 = !DILocation(line: 269, column: 8, scope: !770)
!804 = !DILocation(line: 269, column: 16, scope: !770)
!805 = !DILocation(line: 270, column: 4, scope: !770)
!806 = !DILocation(line: 270, column: 8, scope: !770)
!807 = !DILocation(line: 270, column: 11, scope: !770)
!808 = !DILocation(line: 271, column: 3, scope: !770)
!809 = !DILocation(line: 272, column: 2, scope: !766)
!810 = !DILocation(line: 273, column: 1, scope: !758)
!811 = distinct !DISubprogram(name: "get_secrets_list_size", scope: !286, file: !286, line: 275, type: !812, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!812 = !DISubroutineType(types: !813)
!813 = !{!157, !487}
!814 = !DILocalVariable(name: "sl", arg: 1, scope: !811, file: !286, line: 275, type: !487)
!815 = !DILocation(line: 275, column: 46, scope: !811)
!816 = !DILocation(line: 277, column: 5, scope: !817)
!817 = distinct !DILexicalBlock(scope: !811, file: !286, line: 277, column: 5)
!818 = !DILocation(line: 277, column: 8, scope: !817)
!819 = !DILocation(line: 277, column: 11, scope: !817)
!820 = !DILocation(line: 277, column: 15, scope: !817)
!821 = !DILocation(line: 277, column: 5, scope: !811)
!822 = !DILocation(line: 278, column: 10, scope: !823)
!823 = distinct !DILexicalBlock(scope: !817, file: !286, line: 277, column: 24)
!824 = !DILocation(line: 278, column: 14, scope: !823)
!825 = !DILocation(line: 278, column: 3, scope: !823)
!826 = !DILocation(line: 280, column: 2, scope: !811)
!827 = !DILocation(line: 281, column: 1, scope: !811)
!828 = distinct !DISubprogram(name: "get_secrets_list_elem", scope: !286, file: !286, line: 283, type: !829, scopeLine: 284, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!829 = !DISubroutineType(types: !830)
!830 = !{!108, !487, !157}
!831 = !DILocalVariable(name: "sl", arg: 1, scope: !828, file: !286, line: 283, type: !487)
!832 = !DILocation(line: 283, column: 51, scope: !828)
!833 = !DILocalVariable(name: "i", arg: 2, scope: !828, file: !286, line: 283, type: !157)
!834 = !DILocation(line: 283, column: 62, scope: !828)
!835 = !DILocation(line: 285, column: 27, scope: !836)
!836 = distinct !DILexicalBlock(scope: !828, file: !286, line: 285, column: 5)
!837 = !DILocation(line: 285, column: 5, scope: !836)
!838 = !DILocation(line: 285, column: 31, scope: !836)
!839 = !DILocation(line: 285, column: 30, scope: !836)
!840 = !DILocation(line: 285, column: 5, scope: !828)
!841 = !DILocation(line: 286, column: 10, scope: !842)
!842 = distinct !DILexicalBlock(scope: !836, file: !286, line: 285, column: 34)
!843 = !DILocation(line: 286, column: 14, scope: !842)
!844 = !DILocation(line: 286, column: 22, scope: !842)
!845 = !DILocation(line: 286, column: 3, scope: !842)
!846 = !DILocation(line: 288, column: 2, scope: !828)
!847 = !DILocation(line: 289, column: 1, scope: !828)
!848 = distinct !DISubprogram(name: "get_user_key", scope: !286, file: !286, line: 401, type: !849, scopeLine: 402, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!849 = !DISubroutineType(types: !850)
!850 = !{!7, !7, !851, !851, !164, !164, !164, !852}
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_network_buffer_handle", file: !44, line: 124, baseType: !107)
!853 = !DILocalVariable(name: "in_oauth", arg: 1, scope: !848, file: !286, line: 401, type: !7)
!854 = !DILocation(line: 401, column: 22, scope: !848)
!855 = !DILocalVariable(name: "out_oauth", arg: 2, scope: !848, file: !286, line: 401, type: !851)
!856 = !DILocation(line: 401, column: 37, scope: !848)
!857 = !DILocalVariable(name: "max_session_time", arg: 3, scope: !848, file: !286, line: 401, type: !851)
!858 = !DILocation(line: 401, column: 53, scope: !848)
!859 = !DILocalVariable(name: "usname", arg: 4, scope: !848, file: !286, line: 401, type: !164)
!860 = !DILocation(line: 401, column: 80, scope: !848)
!861 = !DILocalVariable(name: "realm", arg: 5, scope: !848, file: !286, line: 401, type: !164)
!862 = !DILocation(line: 401, column: 97, scope: !848)
!863 = !DILocalVariable(name: "key", arg: 6, scope: !848, file: !286, line: 401, type: !164)
!864 = !DILocation(line: 401, column: 114, scope: !848)
!865 = !DILocalVariable(name: "nbh", arg: 7, scope: !848, file: !286, line: 401, type: !852)
!866 = !DILocation(line: 401, column: 145, scope: !848)
!867 = !DILocalVariable(name: "ret", scope: !848, file: !286, line: 403, type: !7)
!868 = !DILocation(line: 403, column: 6, scope: !848)
!869 = !DILocation(line: 405, column: 5, scope: !870)
!870 = distinct !DILexicalBlock(scope: !848, file: !286, line: 405, column: 5)
!871 = !DILocation(line: 405, column: 5, scope: !848)
!872 = !DILocation(line: 406, column: 4, scope: !870)
!873 = !DILocation(line: 406, column: 21, scope: !870)
!874 = !DILocation(line: 406, column: 3, scope: !870)
!875 = !DILocation(line: 408, column: 5, scope: !876)
!876 = distinct !DILexicalBlock(scope: !848, file: !286, line: 408, column: 5)
!877 = !DILocation(line: 408, column: 14, scope: !876)
!878 = !DILocation(line: 408, column: 17, scope: !876)
!879 = !DILocation(line: 408, column: 27, scope: !876)
!880 = !DILocation(line: 408, column: 30, scope: !876)
!881 = !DILocation(line: 408, column: 37, scope: !876)
!882 = !DILocation(line: 408, column: 40, scope: !876)
!883 = !DILocation(line: 408, column: 5, scope: !848)
!884 = !DILocalVariable(name: "sar", scope: !885, file: !286, line: 410, type: !886)
!885 = distinct !DILexicalBlock(scope: !876, file: !286, line: 408, column: 51)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_attr_ref", file: !23, line: 71, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!889 = !DILocation(line: 410, column: 17, scope: !885)
!890 = !DILocation(line: 410, column: 79, scope: !885)
!891 = !DILocation(line: 410, column: 55, scope: !885)
!892 = !DILocation(line: 411, column: 37, scope: !885)
!893 = !DILocation(line: 411, column: 9, scope: !885)
!894 = !DILocation(line: 410, column: 23, scope: !885)
!895 = !DILocation(line: 413, column: 6, scope: !896)
!896 = distinct !DILexicalBlock(scope: !885, file: !286, line: 413, column: 6)
!897 = !DILocation(line: 413, column: 6, scope: !885)
!898 = !DILocalVariable(name: "len", scope: !899, file: !286, line: 415, type: !7)
!899 = distinct !DILexicalBlock(scope: !896, file: !286, line: 413, column: 11)
!900 = !DILocation(line: 415, column: 8, scope: !899)
!901 = !DILocation(line: 415, column: 32, scope: !899)
!902 = !DILocation(line: 415, column: 14, scope: !899)
!903 = !DILocalVariable(name: "value", scope: !899, file: !286, line: 416, type: !159)
!904 = !DILocation(line: 416, column: 19, scope: !899)
!905 = !DILocation(line: 416, column: 47, scope: !899)
!906 = !DILocation(line: 416, column: 27, scope: !899)
!907 = !DILocation(line: 418, column: 5, scope: !899)
!908 = !DILocation(line: 418, column: 15, scope: !899)
!909 = !DILocation(line: 420, column: 7, scope: !910)
!910 = distinct !DILexicalBlock(scope: !899, file: !286, line: 420, column: 7)
!911 = !DILocation(line: 420, column: 10, scope: !910)
!912 = !DILocation(line: 420, column: 13, scope: !910)
!913 = !DILocation(line: 420, column: 16, scope: !910)
!914 = !DILocation(line: 420, column: 7, scope: !899)
!915 = !DILocalVariable(name: "dbd", scope: !916, file: !286, line: 422, type: !917)
!916 = distinct !DILexicalBlock(scope: !910, file: !286, line: 420, column: 23)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !919)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_dbdriver_t", file: !920, line: 77, baseType: !921)
!920 = !DIFile(filename: "src/apps/relay/dbdrivers/dbdriver.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "00319dc97026a2c0105cbae0fcb396b3")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_dbdriver_t", file: !920, line: 50, size: 1664, elements: !922)
!922 = !{!923, !927, !931, !935, !939, !943, !944, !945, !946, !947, !951, !952, !956, !957, !961, !965, !969, !971, !994, !998, !1002, !1006, !1010, !1014, !1015, !1019}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "get_auth_secrets", scope: !921, file: !920, line: 51, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!7, !487, !164}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "get_user_key", scope: !921, file: !920, line: 52, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DISubroutineType(types: !930)
!930 = !{!7, !164, !164, !164}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "set_user_key", scope: !921, file: !920, line: 53, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!7, !164, !164, !108}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "del_user", scope: !921, file: !920, line: 54, baseType: !936, size: 64, offset: 192)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DISubroutineType(types: !938)
!938 = !{!7, !164, !164}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "list_users", scope: !921, file: !920, line: 55, baseType: !940, size: 64, offset: 256)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DISubroutineType(types: !942)
!942 = !{!7, !164, !487, !487}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "list_secrets", scope: !921, file: !920, line: 56, baseType: !940, size: 64, offset: 320)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "del_secret", scope: !921, file: !920, line: 57, baseType: !936, size: 64, offset: 384)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "set_secret", scope: !921, file: !920, line: 58, baseType: !936, size: 64, offset: 448)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "add_origin", scope: !921, file: !920, line: 59, baseType: !936, size: 64, offset: 512)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "del_origin", scope: !921, file: !920, line: 60, baseType: !948, size: 64, offset: 576)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{!7, !164}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "list_origins", scope: !921, file: !920, line: 61, baseType: !940, size: 64, offset: 640)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "set_realm_option_one", scope: !921, file: !920, line: 62, baseType: !953, size: 64, offset: 704)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = !DISubroutineType(types: !955)
!955 = !{!7, !164, !134, !108}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "list_realm_options", scope: !921, file: !920, line: 63, baseType: !948, size: 64, offset: 768)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "auth_ping", scope: !921, file: !920, line: 64, baseType: !958, size: 64, offset: 832)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{null, !107}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "get_ip_list", scope: !921, file: !920, line: 65, baseType: !962, size: 64, offset: 896)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{!7, !108, !201}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "set_permission_ip", scope: !921, file: !920, line: 66, baseType: !966, size: 64, offset: 960)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!7, !108, !164, !108, !7}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "reread_realms", scope: !921, file: !920, line: 67, baseType: !970, size: 64, offset: 1024)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "set_oauth_key", scope: !921, file: !920, line: 68, baseType: !972, size: 64, offset: 1088)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!7, !975}
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data_raw", file: !977, line: 144, baseType: !978)
!977 = !DIFile(filename: "src/apps/common/apputils.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "5f4d9112d5c1617ebc273618c0760b4a")
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data_raw", file: !977, line: 135, size: 4800, elements: !979)
!979 = !{!980, !984, !985, !988, !989, !993}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !978, file: !977, line: 136, baseType: !981, size: 1032)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1032, elements: !982)
!982 = !{!983}
!983 = !DISubrange(count: 129)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !978, file: !977, line: 137, baseType: !211, size: 2056, offset: 1032)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !978, file: !977, line: 138, baseType: !986, size: 64, offset: 3136)
!986 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !155, line: 27, baseType: !987)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !152, line: 45, baseType: !134)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !978, file: !977, line: 139, baseType: !154, size: 32, offset: 3200)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !978, file: !977, line: 140, baseType: !990, size: 520, offset: 3232)
!990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 520, elements: !991)
!991 = !{!992}
!992 = !DISubrange(count: 65)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !978, file: !977, line: 141, baseType: !124, size: 1024, offset: 3752)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "get_oauth_key", scope: !921, file: !920, line: 69, baseType: !995, size: 64, offset: 1152)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DISubroutineType(types: !997)
!997 = !{!7, !159, !975}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "del_oauth_key", scope: !921, file: !920, line: 70, baseType: !999, size: 64, offset: 1216)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DISubroutineType(types: !1001)
!1001 = !{!7, !159}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "list_oauth_keys", scope: !921, file: !920, line: 71, baseType: !1003, size: 64, offset: 1280)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!7, !487, !487, !487, !487, !487}
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "get_admin_user", scope: !921, file: !920, line: 72, baseType: !1007, size: 64, offset: 1344)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DISubroutineType(types: !1009)
!1009 = !{!7, !159, !164, !164}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "set_admin_user", scope: !921, file: !920, line: 73, baseType: !1011, size: 64, offset: 1408)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{!7, !159, !159, !159}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "del_admin_user", scope: !921, file: !920, line: 74, baseType: !999, size: 64, offset: 1472)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "list_admin_users", scope: !921, file: !920, line: 75, baseType: !1016, size: 64, offset: 1536)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!7, !7}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !921, file: !920, line: 76, baseType: !1020, size: 64, offset: 1600)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!1021 = !DILocation(line: 422, column: 29, scope: !916)
!1022 = !DILocation(line: 422, column: 35, scope: !916)
!1023 = !DILocation(line: 424, column: 9, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !916, file: !286, line: 424, column: 9)
!1025 = !DILocation(line: 424, column: 13, scope: !1024)
!1026 = !DILocation(line: 424, column: 16, scope: !1024)
!1027 = !DILocation(line: 424, column: 21, scope: !1024)
!1028 = !DILocation(line: 424, column: 9, scope: !916)
!1029 = !DILocalVariable(name: "rawKey", scope: !1030, file: !286, line: 426, type: !976)
!1030 = distinct !DILexicalBlock(scope: !1024, file: !286, line: 424, column: 36)
!1031 = !DILocation(line: 426, column: 25, scope: !1030)
!1032 = !DILocation(line: 427, column: 6, scope: !1030)
!1033 = !DILocalVariable(name: "gres", scope: !1030, file: !286, line: 429, type: !7)
!1034 = !DILocation(line: 429, column: 10, scope: !1030)
!1035 = !DILocation(line: 429, column: 20, scope: !1030)
!1036 = !DILocation(line: 429, column: 25, scope: !1030)
!1037 = !DILocation(line: 429, column: 41, scope: !1030)
!1038 = !DILocation(line: 429, column: 17, scope: !1030)
!1039 = !DILocation(line: 430, column: 9, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 430, column: 9)
!1041 = !DILocation(line: 430, column: 13, scope: !1040)
!1042 = !DILocation(line: 430, column: 9, scope: !1030)
!1043 = !DILocation(line: 431, column: 14, scope: !1040)
!1044 = !DILocation(line: 431, column: 7, scope: !1040)
!1045 = !DILocation(line: 433, column: 17, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 433, column: 9)
!1047 = !DILocation(line: 433, column: 10, scope: !1046)
!1048 = !DILocation(line: 433, column: 9, scope: !1030)
!1049 = !DILocation(line: 434, column: 14, scope: !1046)
!1050 = !DILocation(line: 434, column: 7, scope: !1046)
!1051 = !DILocation(line: 436, column: 16, scope: !1052)
!1052 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 436, column: 9)
!1053 = !DILocation(line: 436, column: 9, scope: !1052)
!1054 = !DILocation(line: 436, column: 9, scope: !1030)
!1055 = !DILocation(line: 437, column: 11, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1057, file: !286, line: 437, column: 10)
!1057 = distinct !DILexicalBlock(scope: !1052, file: !286, line: 436, column: 26)
!1058 = !DILocation(line: 437, column: 10, scope: !1057)
!1059 = !DILocation(line: 438, column: 15, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1056, file: !286, line: 437, column: 109)
!1061 = !DILocation(line: 438, column: 8, scope: !1060)
!1062 = !DILocation(line: 440, column: 6, scope: !1057)
!1063 = !DILocalVariable(name: "okd", scope: !1030, file: !286, line: 442, type: !1064)
!1064 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key_data", file: !6, line: 221, baseType: !1065)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key_data", file: !6, line: 212, size: 3840, elements: !1066)
!1066 = !{!1067, !1068, !1069, !1070, !1071, !1072}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !1065, file: !6, line: 213, baseType: !981, size: 1032)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !1065, file: !6, line: 214, baseType: !211, size: 2056, offset: 1032)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !1065, file: !6, line: 215, baseType: !157, size: 64, offset: 3136)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1065, file: !6, line: 216, baseType: !153, size: 32, offset: 3200)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !1065, file: !6, line: 217, baseType: !153, size: 32, offset: 3232)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !1065, file: !6, line: 218, baseType: !990, size: 520, offset: 3264)
!1073 = !DILocation(line: 442, column: 21, scope: !1030)
!1074 = !DILocation(line: 443, column: 6, scope: !1030)
!1075 = !DILocation(line: 445, column: 6, scope: !1030)
!1076 = !DILocalVariable(name: "err_msg", scope: !1030, file: !286, line: 447, type: !1077)
!1077 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 8200, elements: !1078)
!1078 = !{!1079}
!1079 = !DISubrange(count: 1025)
!1080 = !DILocation(line: 447, column: 11, scope: !1030)
!1081 = !DILocalVariable(name: "err_msg_size", scope: !1030, file: !286, line: 448, type: !157)
!1082 = !DILocation(line: 448, column: 13, scope: !1030)
!1083 = !DILocalVariable(name: "okey", scope: !1030, file: !286, line: 450, type: !1084)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_key", file: !6, line: 236, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_key", file: !6, line: 223, size: 7616, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1090, !1091, !1092, !1094, !1095, !1096, !1097}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kid", scope: !1085, file: !6, line: 224, baseType: !981, size: 1032)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key", scope: !1085, file: !6, line: 225, baseType: !211, size: 2056, offset: 1032)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ikm_key_size", scope: !1085, file: !6, line: 226, baseType: !157, size: 64, offset: 3136)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1085, file: !6, line: 227, baseType: !153, size: 32, offset: 3200)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !1085, file: !6, line: 228, baseType: !153, size: 32, offset: 3232)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_alg", scope: !1085, file: !6, line: 229, baseType: !1093, size: 32, offset: 3264)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "ENC_ALG", file: !6, line: 187, baseType: !5)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key", scope: !1085, file: !6, line: 230, baseType: !211, size: 2056, offset: 3296)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "as_rs_key_size", scope: !1085, file: !6, line: 231, baseType: !157, size: 64, offset: 5376)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key", scope: !1085, file: !6, line: 232, baseType: !211, size: 2056, offset: 5440)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "auth_key_size", scope: !1085, file: !6, line: 233, baseType: !157, size: 64, offset: 7552)
!1098 = !DILocation(line: 450, column: 16, scope: !1030)
!1099 = !DILocation(line: 451, column: 6, scope: !1030)
!1100 = !DILocation(line: 453, column: 46, scope: !1101)
!1101 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 453, column: 10)
!1102 = !DILocation(line: 453, column: 55, scope: !1101)
!1103 = !DILocation(line: 453, column: 10, scope: !1101)
!1104 = !DILocation(line: 453, column: 69, scope: !1101)
!1105 = !DILocation(line: 453, column: 10, scope: !1030)
!1106 = !DILocation(line: 454, column: 51, scope: !1107)
!1107 = distinct !DILexicalBlock(scope: !1101, file: !286, line: 453, column: 74)
!1108 = !DILocation(line: 454, column: 7, scope: !1107)
!1109 = !DILocation(line: 455, column: 7, scope: !1107)
!1110 = !DILocalVariable(name: "dot", scope: !1030, file: !286, line: 458, type: !1111)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_token", file: !6, line: 253, baseType: !1112)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_token", file: !6, line: 249, size: 3264, elements: !1113)
!1113 = !{!1114}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "enc_block", scope: !1112, file: !6, line: 250, baseType: !1115, size: 3264)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "oauth_encrypted_block", file: !6, line: 247, baseType: !1116)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_oauth_encrypted_block", file: !6, line: 238, size: 3264, elements: !1117)
!1117 = !{!1118, !1119, !1123, !1124, !1126, !1127}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_length", scope: !1116, file: !6, line: 239, baseType: !246, size: 16)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !1116, file: !6, line: 240, baseType: !1120, size: 2048, offset: 16)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2048, elements: !1121)
!1121 = !{!1122}
!1122 = !DISubrange(count: 256)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "key_length", scope: !1116, file: !6, line: 241, baseType: !246, size: 16, offset: 2064)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "mac_key", scope: !1116, file: !6, line: 242, baseType: !1125, size: 1024, offset: 2080)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 1024, elements: !125)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "timestamp", scope: !1116, file: !6, line: 243, baseType: !986, size: 64, offset: 3136)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime", scope: !1116, file: !6, line: 244, baseType: !154, size: 32, offset: 3200)
!1128 = !DILocation(line: 458, column: 18, scope: !1030)
!1129 = !DILocation(line: 459, column: 6, scope: !1030)
!1130 = !DILocalVariable(name: "etoken", scope: !1030, file: !286, line: 461, type: !1131)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "encoded_oauth_token", file: !6, line: 262, baseType: !1132)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_encoded_oauth_token", file: !6, line: 257, size: 8256, elements: !1133)
!1133 = !{!1134, !1138}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "token", scope: !1132, file: !6, line: 258, baseType: !1135, size: 8192)
!1135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 8192, elements: !1136)
!1136 = !{!1137}
!1137 = !DISubrange(count: 1024)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1132, file: !6, line: 259, baseType: !157, size: 64, offset: 8192)
!1139 = !DILocation(line: 461, column: 26, scope: !1030)
!1140 = !DILocation(line: 462, column: 6, scope: !1030)
!1141 = !DILocation(line: 464, column: 17, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 464, column: 9)
!1143 = !DILocation(line: 464, column: 9, scope: !1142)
!1144 = !DILocation(line: 464, column: 21, scope: !1142)
!1145 = !DILocation(line: 464, column: 9, scope: !1030)
!1146 = !DILocation(line: 465, column: 7, scope: !1147)
!1147 = distinct !DILexicalBlock(scope: !1142, file: !286, line: 464, column: 45)
!1148 = !DILocation(line: 466, column: 7, scope: !1147)
!1149 = !DILocation(line: 468, column: 12, scope: !1030)
!1150 = !DILocation(line: 468, column: 25, scope: !1030)
!1151 = !DILocation(line: 468, column: 18, scope: !1030)
!1152 = !DILocation(line: 468, column: 39, scope: !1030)
!1153 = !DILocation(line: 468, column: 31, scope: !1030)
!1154 = !DILocation(line: 468, column: 6, scope: !1030)
!1155 = !DILocation(line: 469, column: 28, scope: !1030)
!1156 = !DILocation(line: 469, column: 20, scope: !1030)
!1157 = !DILocation(line: 469, column: 13, scope: !1030)
!1158 = !DILocation(line: 469, column: 18, scope: !1030)
!1159 = !DILocalVariable(name: "server_name", scope: !1030, file: !286, line: 471, type: !108)
!1160 = !DILocation(line: 471, column: 18, scope: !1030)
!1161 = !DILocation(line: 472, column: 11, scope: !1162)
!1162 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 472, column: 9)
!1163 = !DILocation(line: 472, column: 23, scope: !1162)
!1164 = !DILocation(line: 472, column: 26, scope: !1162)
!1165 = !DILocation(line: 472, column: 9, scope: !1030)
!1166 = !DILocation(line: 473, column: 28, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !1162, file: !286, line: 472, column: 43)
!1168 = !DILocation(line: 473, column: 19, scope: !1167)
!1169 = !DILocation(line: 474, column: 12, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1167, file: !286, line: 474, column: 10)
!1171 = !DILocation(line: 474, column: 24, scope: !1170)
!1172 = !DILocation(line: 474, column: 27, scope: !1170)
!1173 = !DILocation(line: 474, column: 10, scope: !1167)
!1174 = !DILocation(line: 475, column: 8, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !286, line: 474, column: 44)
!1176 = !DILocation(line: 476, column: 8, scope: !1175)
!1177 = !DILocation(line: 478, column: 6, scope: !1167)
!1178 = !DILocation(line: 480, column: 47, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 480, column: 10)
!1180 = !DILocation(line: 480, column: 10, scope: !1179)
!1181 = !DILocation(line: 480, column: 81, scope: !1179)
!1182 = !DILocation(line: 480, column: 10, scope: !1030)
!1183 = !DILocation(line: 481, column: 7, scope: !1184)
!1184 = distinct !DILexicalBlock(scope: !1179, file: !286, line: 480, column: 86)
!1185 = !DILocation(line: 482, column: 7, scope: !1184)
!1186 = !DILocation(line: 485, column: 17, scope: !1030)
!1187 = !DILocation(line: 485, column: 27, scope: !1030)
!1188 = !DILocation(line: 485, column: 13, scope: !1030)
!1189 = !DILocation(line: 485, column: 6, scope: !1030)
!1190 = !DILocation(line: 487, column: 7, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 485, column: 39)
!1192 = !DILocation(line: 490, column: 6, scope: !1191)
!1193 = !DILocation(line: 492, column: 104, scope: !1191)
!1194 = !DILocation(line: 492, column: 114, scope: !1191)
!1195 = !DILocation(line: 492, column: 95, scope: !1191)
!1196 = !DILocation(line: 492, column: 7, scope: !1191)
!1197 = !DILocation(line: 493, column: 7, scope: !1191)
!1198 = !DILocalVariable(name: "pwdtmp", scope: !1030, file: !286, line: 496, type: !1199)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "password_t", file: !23, line: 66, baseType: !1200)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 2056, elements: !212)
!1201 = !DILocation(line: 496, column: 17, scope: !1030)
!1202 = !DILocation(line: 498, column: 33, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1030, file: !286, line: 497, column: 9)
!1204 = !DILocation(line: 498, column: 9, scope: !1203)
!1205 = !DILocation(line: 499, column: 37, scope: !1203)
!1206 = !DILocation(line: 499, column: 9, scope: !1203)
!1207 = !DILocation(line: 500, column: 13, scope: !1203)
!1208 = !DILocation(line: 500, column: 23, scope: !1203)
!1209 = !DILocation(line: 500, column: 9, scope: !1203)
!1210 = !DILocation(line: 501, column: 9, scope: !1203)
!1211 = !DILocation(line: 497, column: 9, scope: !1203)
!1212 = !DILocation(line: 502, column: 25, scope: !1203)
!1213 = !DILocation(line: 497, column: 9, scope: !1030)
!1214 = !DILocalVariable(name: "lifetime", scope: !1215, file: !286, line: 504, type: !153)
!1215 = distinct !DILexicalBlock(scope: !1203, file: !286, line: 502, column: 29)
!1216 = !DILocation(line: 504, column: 19, scope: !1215)
!1217 = !DILocation(line: 504, column: 48, scope: !1215)
!1218 = !DILocation(line: 504, column: 58, scope: !1215)
!1219 = !DILocation(line: 505, column: 10, scope: !1220)
!1220 = distinct !DILexicalBlock(scope: !1215, file: !286, line: 505, column: 10)
!1221 = !DILocation(line: 505, column: 10, scope: !1215)
!1222 = !DILocalVariable(name: "ts", scope: !1223, file: !286, line: 506, type: !153)
!1223 = distinct !DILexicalBlock(scope: !1220, file: !286, line: 505, column: 20)
!1224 = !DILocation(line: 506, column: 20, scope: !1223)
!1225 = !DILocation(line: 506, column: 43, scope: !1223)
!1226 = !DILocation(line: 506, column: 53, scope: !1223)
!1227 = !DILocation(line: 506, column: 63, scope: !1223)
!1228 = !DILocation(line: 506, column: 25, scope: !1223)
!1229 = !DILocalVariable(name: "to", scope: !1223, file: !286, line: 507, type: !153)
!1230 = !DILocation(line: 507, column: 20, scope: !1223)
!1231 = !DILocation(line: 507, column: 25, scope: !1223)
!1232 = !DILocation(line: 507, column: 30, scope: !1223)
!1233 = !DILocation(line: 507, column: 28, scope: !1223)
!1234 = !DILocation(line: 507, column: 39, scope: !1223)
!1235 = !DILocalVariable(name: "ct", scope: !1223, file: !286, line: 508, type: !153)
!1236 = !DILocation(line: 508, column: 20, scope: !1223)
!1237 = !DILocation(line: 508, column: 25, scope: !1223)
!1238 = !DILocation(line: 509, column: 12, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1223, file: !286, line: 509, column: 11)
!1240 = !DILocation(line: 509, column: 11, scope: !1223)
!1241 = !DILocation(line: 510, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1239, file: !286, line: 509, column: 37)
!1243 = !DILocation(line: 511, column: 9, scope: !1242)
!1244 = !DILocation(line: 513, column: 11, scope: !1245)
!1245 = distinct !DILexicalBlock(scope: !1223, file: !286, line: 513, column: 11)
!1246 = !DILocation(line: 513, column: 11, scope: !1223)
!1247 = !DILocation(line: 514, column: 29, scope: !1248)
!1248 = distinct !DILexicalBlock(scope: !1245, file: !286, line: 513, column: 29)
!1249 = !DILocation(line: 514, column: 34, scope: !1248)
!1250 = !DILocation(line: 514, column: 32, scope: !1248)
!1251 = !DILocation(line: 514, column: 10, scope: !1248)
!1252 = !DILocation(line: 514, column: 27, scope: !1248)
!1253 = !DILocation(line: 515, column: 8, scope: !1248)
!1254 = !DILocation(line: 516, column: 7, scope: !1223)
!1255 = !DILocation(line: 518, column: 17, scope: !1215)
!1256 = !DILocation(line: 518, column: 27, scope: !1215)
!1257 = !DILocation(line: 518, column: 13, scope: !1215)
!1258 = !DILocation(line: 518, column: 35, scope: !1215)
!1259 = !DILocation(line: 518, column: 43, scope: !1215)
!1260 = !DILocation(line: 518, column: 53, scope: !1215)
!1261 = !DILocation(line: 518, column: 39, scope: !1215)
!1262 = !DILocation(line: 518, column: 7, scope: !1215)
!1263 = !DILocation(line: 520, column: 17, scope: !1264)
!1264 = distinct !DILexicalBlock(scope: !1215, file: !286, line: 520, column: 10)
!1265 = !DILocation(line: 520, column: 10, scope: !1264)
!1266 = !DILocation(line: 520, column: 10, scope: !1215)
!1267 = !DILocation(line: 521, column: 21, scope: !1268)
!1268 = distinct !DILexicalBlock(scope: !1264, file: !286, line: 520, column: 27)
!1269 = !DILocation(line: 521, column: 14, scope: !1268)
!1270 = !DILocation(line: 521, column: 27, scope: !1268)
!1271 = !DILocation(line: 521, column: 8, scope: !1268)
!1272 = !DILocation(line: 522, column: 7, scope: !1268)
!1273 = !DILocation(line: 524, column: 11, scope: !1215)
!1274 = !DILocation(line: 525, column: 6, scope: !1215)
!1275 = !DILocation(line: 526, column: 5, scope: !1030)
!1276 = !DILocation(line: 527, column: 4, scope: !916)
!1277 = !DILocation(line: 528, column: 3, scope: !899)
!1278 = !DILocation(line: 529, column: 2, scope: !885)
!1279 = !DILocation(line: 531, column: 5, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !848, file: !286, line: 531, column: 5)
!1281 = !DILocation(line: 531, column: 15, scope: !1280)
!1282 = !DILocation(line: 531, column: 19, scope: !1280)
!1283 = !DILocation(line: 531, column: 18, scope: !1280)
!1284 = !DILocation(line: 531, column: 5, scope: !848)
!1285 = !DILocation(line: 532, column: 10, scope: !1286)
!1286 = distinct !DILexicalBlock(scope: !1280, file: !286, line: 531, column: 30)
!1287 = !DILocation(line: 532, column: 3, scope: !1286)
!1288 = !DILocation(line: 535, column: 17, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !848, file: !286, line: 535, column: 5)
!1290 = !DILocation(line: 535, column: 5, scope: !1289)
!1291 = !DILocation(line: 535, column: 5, scope: !848)
!1292 = !DILocalVariable(name: "ctime", scope: !1293, file: !286, line: 537, type: !153)
!1293 = distinct !DILexicalBlock(scope: !1289, file: !286, line: 535, column: 49)
!1294 = !DILocation(line: 537, column: 15, scope: !1293)
!1295 = !DILocation(line: 537, column: 37, scope: !1293)
!1296 = !DILocation(line: 537, column: 23, scope: !1293)
!1297 = !DILocalVariable(name: "ts", scope: !1293, file: !286, line: 538, type: !153)
!1298 = !DILocation(line: 538, column: 15, scope: !1293)
!1299 = !DILocalVariable(name: "sl", scope: !1293, file: !286, line: 539, type: !388)
!1300 = !DILocation(line: 539, column: 18, scope: !1293)
!1301 = !DILocalVariable(name: "sll", scope: !1293, file: !286, line: 540, type: !157)
!1302 = !DILocation(line: 540, column: 10, scope: !1293)
!1303 = !DILocation(line: 542, column: 3, scope: !1293)
!1304 = !DILocation(line: 544, column: 28, scope: !1305)
!1305 = distinct !DILexicalBlock(scope: !1293, file: !286, line: 544, column: 6)
!1306 = !DILocation(line: 544, column: 6, scope: !1305)
!1307 = !DILocation(line: 544, column: 34, scope: !1305)
!1308 = !DILocation(line: 544, column: 6, scope: !1293)
!1309 = !DILocation(line: 545, column: 11, scope: !1305)
!1310 = !DILocation(line: 545, column: 4, scope: !1305)
!1311 = !DILocation(line: 547, column: 38, scope: !1293)
!1312 = !DILocation(line: 547, column: 8, scope: !1293)
!1313 = !DILocation(line: 547, column: 6, scope: !1293)
!1314 = !DILocation(line: 549, column: 7, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1293, file: !286, line: 549, column: 6)
!1316 = !DILocation(line: 549, column: 6, scope: !1293)
!1317 = !DILocalVariable(name: "hmac", scope: !1318, file: !286, line: 551, type: !1125)
!1318 = distinct !DILexicalBlock(scope: !1315, file: !286, line: 549, column: 36)
!1319 = !DILocation(line: 551, column: 12, scope: !1318)
!1320 = !DILocalVariable(name: "hmac_len", scope: !1318, file: !286, line: 552, type: !16)
!1321 = !DILocation(line: 552, column: 17, scope: !1318)
!1322 = !DILocalVariable(name: "pwdtmp", scope: !1318, file: !286, line: 553, type: !1199)
!1323 = !DILocation(line: 553, column: 15, scope: !1318)
!1324 = !DILocation(line: 555, column: 4, scope: !1318)
!1325 = !DILocation(line: 555, column: 12, scope: !1318)
!1326 = !DILocalVariable(name: "sar", scope: !1318, file: !286, line: 557, type: !886)
!1327 = !DILocation(line: 557, column: 18, scope: !1318)
!1328 = !DILocation(line: 557, column: 80, scope: !1318)
!1329 = !DILocation(line: 557, column: 56, scope: !1318)
!1330 = !DILocation(line: 558, column: 36, scope: !1318)
!1331 = !DILocation(line: 558, column: 8, scope: !1318)
!1332 = !DILocation(line: 557, column: 24, scope: !1318)
!1333 = !DILocation(line: 560, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1318, file: !286, line: 560, column: 8)
!1335 = !DILocation(line: 560, column: 8, scope: !1318)
!1336 = !DILocation(line: 561, column: 5, scope: !1334)
!1337 = !DILocalVariable(name: "sarlen", scope: !1318, file: !286, line: 563, type: !7)
!1338 = !DILocation(line: 563, column: 8, scope: !1318)
!1339 = !DILocation(line: 563, column: 35, scope: !1318)
!1340 = !DILocation(line: 563, column: 17, scope: !1318)
!1341 = !DILocation(line: 564, column: 11, scope: !1318)
!1342 = !DILocation(line: 564, column: 4, scope: !1318)
!1343 = !DILocation(line: 566, column: 14, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1318, file: !286, line: 564, column: 19)
!1345 = !DILocation(line: 567, column: 5, scope: !1344)
!1346 = !DILocation(line: 570, column: 4, scope: !1344)
!1347 = !DILocation(line: 572, column: 5, scope: !1344)
!1348 = !DILocation(line: 575, column: 11, scope: !1349)
!1349 = distinct !DILexicalBlock(scope: !1318, file: !286, line: 575, column: 4)
!1350 = !DILocation(line: 575, column: 8, scope: !1349)
!1351 = !DILocation(line: 575, column: 14, scope: !1352)
!1352 = distinct !DILexicalBlock(scope: !1349, file: !286, line: 575, column: 4)
!1353 = !DILocation(line: 575, column: 18, scope: !1352)
!1354 = !DILocation(line: 575, column: 17, scope: !1352)
!1355 = !DILocation(line: 575, column: 4, scope: !1349)
!1356 = !DILocalVariable(name: "secret", scope: !1357, file: !286, line: 577, type: !108)
!1357 = distinct !DILexicalBlock(scope: !1352, file: !286, line: 575, column: 52)
!1358 = !DILocation(line: 577, column: 17, scope: !1357)
!1359 = !DILocation(line: 577, column: 52, scope: !1357)
!1360 = !DILocation(line: 577, column: 26, scope: !1357)
!1361 = !DILocation(line: 579, column: 8, scope: !1362)
!1362 = distinct !DILexicalBlock(scope: !1357, file: !286, line: 579, column: 8)
!1363 = !DILocation(line: 579, column: 8, scope: !1357)
!1364 = !DILocation(line: 580, column: 29, scope: !1365)
!1365 = distinct !DILexicalBlock(scope: !1366, file: !286, line: 580, column: 9)
!1366 = distinct !DILexicalBlock(scope: !1362, file: !286, line: 579, column: 16)
!1367 = !DILocation(line: 580, column: 51, scope: !1365)
!1368 = !DILocation(line: 580, column: 37, scope: !1365)
!1369 = !DILocation(line: 580, column: 76, scope: !1365)
!1370 = !DILocation(line: 580, column: 91, scope: !1365)
!1371 = !DILocation(line: 580, column: 84, scope: !1365)
!1372 = !DILocation(line: 580, column: 100, scope: !1365)
!1373 = !DILocation(line: 580, column: 9, scope: !1365)
!1374 = !DILocation(line: 580, column: 133, scope: !1365)
!1375 = !DILocation(line: 580, column: 9, scope: !1366)
!1376 = !DILocalVariable(name: "pwd_length", scope: !1377, file: !286, line: 581, type: !157)
!1377 = distinct !DILexicalBlock(scope: !1365, file: !286, line: 580, column: 138)
!1378 = !DILocation(line: 581, column: 14, scope: !1377)
!1379 = !DILocalVariable(name: "pwd", scope: !1377, file: !286, line: 582, type: !111)
!1380 = !DILocation(line: 582, column: 13, scope: !1377)
!1381 = !DILocation(line: 582, column: 33, scope: !1377)
!1382 = !DILocation(line: 582, column: 38, scope: !1377)
!1383 = !DILocation(line: 582, column: 19, scope: !1377)
!1384 = !DILocation(line: 584, column: 10, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1377, file: !286, line: 584, column: 10)
!1386 = !DILocation(line: 584, column: 10, scope: !1377)
!1387 = !DILocation(line: 585, column: 11, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1389, file: !286, line: 585, column: 11)
!1389 = distinct !DILexicalBlock(scope: !1385, file: !286, line: 584, column: 15)
!1390 = !DILocation(line: 585, column: 21, scope: !1388)
!1391 = !DILocation(line: 585, column: 11, scope: !1389)
!1392 = !DILocation(line: 586, column: 14, scope: !1393)
!1393 = distinct !DILexicalBlock(scope: !1388, file: !286, line: 585, column: 25)
!1394 = !DILocation(line: 586, column: 9, scope: !1393)
!1395 = !DILocation(line: 587, column: 8, scope: !1393)
!1396 = !DILocation(line: 588, column: 53, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1398, file: !286, line: 588, column: 12)
!1398 = distinct !DILexicalBlock(scope: !1388, file: !286, line: 587, column: 15)
!1399 = !DILocation(line: 588, column: 61, scope: !1397)
!1400 = !DILocation(line: 588, column: 78, scope: !1397)
!1401 = !DILocation(line: 588, column: 83, scope: !1397)
!1402 = !DILocation(line: 588, column: 12, scope: !1397)
!1403 = !DILocation(line: 588, column: 104, scope: !1397)
!1404 = !DILocation(line: 588, column: 12, scope: !1398)
!1405 = !DILocation(line: 591, column: 35, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1407, file: !286, line: 590, column: 13)
!1407 = distinct !DILexicalBlock(scope: !1397, file: !286, line: 588, column: 109)
!1408 = !DILocation(line: 591, column: 11, scope: !1406)
!1409 = !DILocation(line: 592, column: 39, scope: !1406)
!1410 = !DILocation(line: 592, column: 11, scope: !1406)
!1411 = !DILocation(line: 593, column: 11, scope: !1406)
!1412 = !DILocation(line: 594, column: 11, scope: !1406)
!1413 = !DILocation(line: 590, column: 13, scope: !1406)
!1414 = !DILocation(line: 595, column: 27, scope: !1406)
!1415 = !DILocation(line: 590, column: 13, scope: !1407)
!1416 = !DILocation(line: 597, column: 15, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1406, file: !286, line: 595, column: 31)
!1418 = !DILocation(line: 598, column: 10, scope: !1417)
!1419 = !DILocation(line: 599, column: 9, scope: !1407)
!1420 = !DILocation(line: 600, column: 14, scope: !1398)
!1421 = !DILocation(line: 600, column: 9, scope: !1398)
!1422 = !DILocation(line: 602, column: 12, scope: !1423)
!1423 = distinct !DILexicalBlock(scope: !1398, file: !286, line: 602, column: 12)
!1424 = !DILocation(line: 602, column: 15, scope: !1423)
!1425 = !DILocation(line: 602, column: 12, scope: !1398)
!1426 = !DILocation(line: 603, column: 10, scope: !1423)
!1427 = !DILocation(line: 605, column: 7, scope: !1389)
!1428 = !DILocation(line: 606, column: 6, scope: !1377)
!1429 = !DILocation(line: 607, column: 5, scope: !1366)
!1430 = !DILocation(line: 608, column: 4, scope: !1357)
!1431 = !DILocation(line: 575, column: 45, scope: !1352)
!1432 = !DILocation(line: 575, column: 4, scope: !1352)
!1433 = distinct !{!1433, !1355, !1434, !798}
!1434 = !DILocation(line: 608, column: 4, scope: !1349)
!1435 = !DILocation(line: 609, column: 3, scope: !1318)
!1436 = !DILocation(line: 611, column: 3, scope: !1293)
!1437 = !DILocation(line: 613, column: 10, scope: !1293)
!1438 = !DILocation(line: 613, column: 3, scope: !1293)
!1439 = !DILocalVariable(name: "ukey", scope: !848, file: !286, line: 616, type: !105)
!1440 = !DILocation(line: 616, column: 27, scope: !848)
!1441 = !DILocation(line: 617, column: 57, scope: !848)
!1442 = !DILocation(line: 617, column: 2, scope: !848)
!1443 = !DILocation(line: 618, column: 59, scope: !1444)
!1444 = distinct !DILexicalBlock(scope: !848, file: !286, line: 618, column: 5)
!1445 = !DILocation(line: 618, column: 100, scope: !1444)
!1446 = !DILocation(line: 618, column: 5, scope: !1444)
!1447 = !DILocation(line: 618, column: 5, scope: !848)
!1448 = !DILocation(line: 619, column: 7, scope: !1449)
!1449 = distinct !DILexicalBlock(scope: !1444, file: !286, line: 618, column: 116)
!1450 = !DILocation(line: 620, column: 2, scope: !1449)
!1451 = !DILocation(line: 621, column: 59, scope: !848)
!1452 = !DILocation(line: 621, column: 2, scope: !848)
!1453 = !DILocation(line: 623, column: 5, scope: !1454)
!1454 = distinct !DILexicalBlock(scope: !848, file: !286, line: 623, column: 5)
!1455 = !DILocation(line: 623, column: 8, scope: !1454)
!1456 = !DILocation(line: 623, column: 5, scope: !848)
!1457 = !DILocalVariable(name: "sz", scope: !1458, file: !286, line: 624, type: !157)
!1458 = distinct !DILexicalBlock(scope: !1454, file: !286, line: 623, column: 13)
!1459 = !DILocation(line: 624, column: 10, scope: !1458)
!1460 = !DILocation(line: 624, column: 15, scope: !1458)
!1461 = !DILocation(line: 625, column: 9, scope: !1458)
!1462 = !DILocation(line: 625, column: 14, scope: !1458)
!1463 = !DILocation(line: 625, column: 18, scope: !1458)
!1464 = !DILocation(line: 625, column: 3, scope: !1458)
!1465 = !DILocation(line: 626, column: 3, scope: !1458)
!1466 = !DILocalVariable(name: "dbd", scope: !848, file: !286, line: 629, type: !917)
!1467 = !DILocation(line: 629, column: 26, scope: !848)
!1468 = !DILocation(line: 629, column: 32, scope: !848)
!1469 = !DILocation(line: 630, column: 6, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !848, file: !286, line: 630, column: 6)
!1471 = !DILocation(line: 630, column: 10, scope: !1470)
!1472 = !DILocation(line: 630, column: 13, scope: !1470)
!1473 = !DILocation(line: 630, column: 18, scope: !1470)
!1474 = !DILocation(line: 630, column: 6, scope: !848)
!1475 = !DILocation(line: 631, column: 12, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1470, file: !286, line: 630, column: 32)
!1477 = !DILocation(line: 631, column: 17, scope: !1476)
!1478 = !DILocation(line: 631, column: 32, scope: !1476)
!1479 = !DILocation(line: 631, column: 40, scope: !1476)
!1480 = !DILocation(line: 631, column: 47, scope: !1476)
!1481 = !DILocation(line: 631, column: 9, scope: !1476)
!1482 = !DILocation(line: 631, column: 7, scope: !1476)
!1483 = !DILocation(line: 632, column: 2, scope: !1476)
!1484 = !DILocation(line: 634, column: 9, scope: !848)
!1485 = !DILocation(line: 634, column: 2, scope: !848)
!1486 = !DILocation(line: 635, column: 1, scope: !848)
!1487 = distinct !DISubprogram(name: "get_auth_secrets", scope: !286, file: !286, line: 302, type: !925, scopeLine: 303, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!1488 = !DILocalVariable(name: "sl", arg: 1, scope: !1487, file: !286, line: 302, type: !487)
!1489 = !DILocation(line: 302, column: 45, scope: !1487)
!1490 = !DILocalVariable(name: "realm", arg: 2, scope: !1487, file: !286, line: 302, type: !164)
!1491 = !DILocation(line: 302, column: 58, scope: !1487)
!1492 = !DILocalVariable(name: "ret", scope: !1487, file: !286, line: 304, type: !7)
!1493 = !DILocation(line: 304, column: 6, scope: !1487)
!1494 = !DILocalVariable(name: "dbd", scope: !1487, file: !286, line: 305, type: !917)
!1495 = !DILocation(line: 305, column: 27, scope: !1487)
!1496 = !DILocation(line: 305, column: 33, scope: !1487)
!1497 = !DILocation(line: 307, column: 21, scope: !1487)
!1498 = !DILocation(line: 307, column: 2, scope: !1487)
!1499 = !DILocation(line: 309, column: 5, scope: !1500)
!1500 = distinct !DILexicalBlock(scope: !1487, file: !286, line: 309, column: 5)
!1501 = !DILocation(line: 309, column: 5, scope: !1487)
!1502 = !DILocalVariable(name: "i", scope: !1503, file: !286, line: 310, type: !157)
!1503 = distinct !DILexicalBlock(scope: !1500, file: !286, line: 309, column: 86)
!1504 = !DILocation(line: 310, column: 10, scope: !1503)
!1505 = !DILocation(line: 311, column: 8, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1503, file: !286, line: 311, column: 3)
!1507 = !DILocation(line: 311, column: 7, scope: !1506)
!1508 = !DILocation(line: 311, column: 11, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1506, file: !286, line: 311, column: 3)
!1510 = !DILocation(line: 311, column: 13, scope: !1509)
!1511 = !DILocation(line: 311, column: 12, scope: !1509)
!1512 = !DILocation(line: 311, column: 3, scope: !1506)
!1513 = !DILocation(line: 312, column: 24, scope: !1514)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !286, line: 311, column: 98)
!1515 = !DILocation(line: 312, column: 106, scope: !1514)
!1516 = !DILocation(line: 312, column: 27, scope: !1514)
!1517 = !DILocation(line: 312, column: 4, scope: !1514)
!1518 = !DILocation(line: 313, column: 3, scope: !1514)
!1519 = !DILocation(line: 311, column: 93, scope: !1509)
!1520 = !DILocation(line: 311, column: 3, scope: !1509)
!1521 = distinct !{!1521, !1512, !1522, !798}
!1522 = !DILocation(line: 313, column: 3, scope: !1506)
!1523 = !DILocation(line: 314, column: 6, scope: !1503)
!1524 = !DILocation(line: 315, column: 2, scope: !1503)
!1525 = !DILocation(line: 317, column: 7, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1487, file: !286, line: 317, column: 7)
!1527 = !DILocation(line: 317, column: 11, scope: !1526)
!1528 = !DILocation(line: 317, column: 14, scope: !1526)
!1529 = !DILocation(line: 317, column: 19, scope: !1526)
!1530 = !DILocation(line: 317, column: 7, scope: !1487)
!1531 = !DILocation(line: 318, column: 13, scope: !1532)
!1532 = distinct !DILexicalBlock(scope: !1526, file: !286, line: 317, column: 37)
!1533 = !DILocation(line: 318, column: 18, scope: !1532)
!1534 = !DILocation(line: 318, column: 36, scope: !1532)
!1535 = !DILocation(line: 318, column: 40, scope: !1532)
!1536 = !DILocation(line: 318, column: 11, scope: !1532)
!1537 = !DILocation(line: 318, column: 9, scope: !1532)
!1538 = !DILocation(line: 319, column: 3, scope: !1532)
!1539 = !DILocation(line: 321, column: 9, scope: !1487)
!1540 = !DILocation(line: 321, column: 2, scope: !1487)
!1541 = distinct !DISubprogram(name: "get_rest_api_timestamp", scope: !286, file: !286, line: 327, type: !1542, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!1542 = !DISubroutineType(types: !1543)
!1543 = !{!153, !111}
!1544 = !DILocalVariable(name: "usname", arg: 1, scope: !1541, file: !286, line: 327, type: !111)
!1545 = !DILocation(line: 327, column: 49, scope: !1541)
!1546 = !DILocalVariable(name: "ts", scope: !1541, file: !286, line: 329, type: !153)
!1547 = !DILocation(line: 329, column: 14, scope: !1541)
!1548 = !DILocalVariable(name: "ts_set", scope: !1541, file: !286, line: 330, type: !7)
!1549 = !DILocation(line: 330, column: 6, scope: !1541)
!1550 = !DILocalVariable(name: "col", scope: !1541, file: !286, line: 332, type: !111)
!1551 = !DILocation(line: 332, column: 8, scope: !1541)
!1552 = !DILocation(line: 332, column: 21, scope: !1541)
!1553 = !DILocation(line: 332, column: 40, scope: !1541)
!1554 = !DILocation(line: 332, column: 28, scope: !1541)
!1555 = !DILocation(line: 332, column: 14, scope: !1541)
!1556 = !DILocation(line: 334, column: 5, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1541, file: !286, line: 334, column: 5)
!1558 = !DILocation(line: 334, column: 5, scope: !1541)
!1559 = !DILocation(line: 335, column: 6, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1561, file: !286, line: 335, column: 6)
!1561 = distinct !DILexicalBlock(scope: !1557, file: !286, line: 334, column: 10)
!1562 = !DILocation(line: 335, column: 13, scope: !1560)
!1563 = !DILocation(line: 335, column: 10, scope: !1560)
!1564 = !DILocation(line: 335, column: 6, scope: !1561)
!1565 = !DILocation(line: 336, column: 11, scope: !1566)
!1566 = distinct !DILexicalBlock(scope: !1560, file: !286, line: 335, column: 21)
!1567 = !DILocation(line: 337, column: 3, scope: !1566)
!1568 = !DILocalVariable(name: "ptr", scope: !1569, file: !286, line: 338, type: !111)
!1569 = distinct !DILexicalBlock(scope: !1560, file: !286, line: 337, column: 10)
!1570 = !DILocation(line: 338, column: 10, scope: !1569)
!1571 = !DILocation(line: 338, column: 16, scope: !1569)
!1572 = !DILocalVariable(name: "found_non_figure", scope: !1569, file: !286, line: 339, type: !7)
!1573 = !DILocation(line: 339, column: 8, scope: !1569)
!1574 = !DILocation(line: 340, column: 4, scope: !1569)
!1575 = !DILocation(line: 340, column: 10, scope: !1569)
!1576 = !DILocation(line: 340, column: 16, scope: !1569)
!1577 = !DILocation(line: 340, column: 14, scope: !1569)
!1578 = !DILocation(line: 341, column: 10, scope: !1579)
!1579 = distinct !DILexicalBlock(scope: !1580, file: !286, line: 341, column: 8)
!1580 = distinct !DILexicalBlock(scope: !1569, file: !286, line: 340, column: 21)
!1581 = !DILocation(line: 341, column: 16, scope: !1579)
!1582 = !DILocation(line: 341, column: 22, scope: !1579)
!1583 = !DILocation(line: 341, column: 25, scope: !1579)
!1584 = !DILocation(line: 341, column: 31, scope: !1579)
!1585 = !DILocation(line: 341, column: 8, scope: !1580)
!1586 = !DILocation(line: 342, column: 22, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1579, file: !286, line: 341, column: 39)
!1588 = !DILocation(line: 343, column: 6, scope: !1587)
!1589 = !DILocation(line: 345, column: 5, scope: !1580)
!1590 = distinct !{!1590, !1574, !1591, !798}
!1591 = !DILocation(line: 346, column: 4, scope: !1569)
!1592 = !DILocation(line: 347, column: 7, scope: !1593)
!1593 = distinct !DILexicalBlock(scope: !1569, file: !286, line: 347, column: 7)
!1594 = !DILocation(line: 347, column: 7, scope: !1569)
!1595 = !DILocation(line: 348, column: 28, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1593, file: !286, line: 347, column: 25)
!1597 = !DILocation(line: 348, column: 31, scope: !1596)
!1598 = !DILocation(line: 348, column: 23, scope: !1596)
!1599 = !DILocation(line: 348, column: 10, scope: !1596)
!1600 = !DILocation(line: 348, column: 8, scope: !1596)
!1601 = !DILocation(line: 349, column: 12, scope: !1596)
!1602 = !DILocation(line: 350, column: 4, scope: !1596)
!1603 = !DILocation(line: 351, column: 6, scope: !1604)
!1604 = distinct !DILexicalBlock(scope: !1593, file: !286, line: 350, column: 11)
!1605 = !DILocation(line: 351, column: 9, scope: !1604)
!1606 = !DILocation(line: 352, column: 28, scope: !1604)
!1607 = !DILocation(line: 352, column: 23, scope: !1604)
!1608 = !DILocation(line: 352, column: 10, scope: !1604)
!1609 = !DILocation(line: 352, column: 8, scope: !1604)
!1610 = !DILocation(line: 353, column: 12, scope: !1604)
!1611 = !DILocation(line: 354, column: 22, scope: !1604)
!1612 = !DILocation(line: 354, column: 6, scope: !1604)
!1613 = !DILocation(line: 354, column: 9, scope: !1604)
!1614 = !DILocation(line: 357, column: 2, scope: !1561)
!1615 = !DILocation(line: 359, column: 6, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1541, file: !286, line: 359, column: 5)
!1617 = !DILocation(line: 359, column: 5, scope: !1541)
!1618 = !DILocation(line: 360, column: 26, scope: !1619)
!1619 = distinct !DILexicalBlock(scope: !1616, file: !286, line: 359, column: 14)
!1620 = !DILocation(line: 360, column: 21, scope: !1619)
!1621 = !DILocation(line: 360, column: 8, scope: !1619)
!1622 = !DILocation(line: 360, column: 6, scope: !1619)
!1623 = !DILocation(line: 361, column: 2, scope: !1619)
!1624 = !DILocation(line: 363, column: 9, scope: !1541)
!1625 = !DILocation(line: 363, column: 2, scope: !1541)
!1626 = distinct !DISubprogram(name: "start_user_check", scope: !286, file: !286, line: 637, type: !1627, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!164, !1629, !1630, !7, !851, !164, !164, !1631, !1839, !986, !851}
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnserver_id", file: !38, line: 67, baseType: !161)
!1630 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_credential_type", file: !23, line: 59, baseType: !22)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_username_resume_cb", file: !38, line: 101, baseType: !1632)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !7, !7, !7, !164, !164, !1635, !986, !1839, !164}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_turnserver", file: !38, line: 99, baseType: !1637)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_turnserver", file: !38, line: 111, size: 3456, elements: !1638)
!1638 = !{!1639, !1640, !1642, !1646, !1647, !1738, !1739, !1740, !1741, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1759, !1764, !1766, !2068, !2071, !2076, !2081, !2082, !2083, !2084, !2085, !2137, !2142, !2143, !2144, !2145, !2152, !2161, !2162, !2163, !2164, !2165, !2166, !2167, !2168, !2169, !2170, !2171, !2176, !2177, !2178, !2179, !2181}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1637, file: !38, line: 113, baseType: !1629, size: 8)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "session_id_counter", scope: !1637, file: !38, line: 115, baseType: !1641, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnsession_id", file: !121, line: 62, baseType: !986)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "sessions_map", scope: !1637, file: !38, line: 116, baseType: !1643, size: 64, offset: 128)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map", file: !106, line: 43, baseType: !1645)
!1645 = !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_map", file: !106, line: 42, flags: DIFlagFwdDecl)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "ctime", scope: !1637, file: !38, line: 118, baseType: !153, size: 32, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1637, file: !38, line: 120, baseType: !1648, size: 64, offset: 256)
!1648 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine_handle", file: !44, line: 120, baseType: !1649)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_engine", file: !44, line: 119, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_engine", file: !1652, line: 135, size: 536064, elements: !1653)
!1652 = !DIFile(filename: "src/apps/relay/ns_ioalib_impl.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "39ae1828625a6763b6269ecb34869b6c")
!1653 = !{!1654, !1659, !1663, !1664, !1665, !1670, !1675, !1701, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1714, !1718, !1720, !1729, !1730, !1731, !1732, !1733, !1735}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !1651, file: !1652, line: 137, baseType: !1655, size: 64)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !1657, line: 49, baseType: !1658)
!1657 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !1657, line: 48, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "event_base", scope: !1651, file: !1652, line: 138, baseType: !1660, size: 64, offset: 64)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "event_base", file: !1662, line: 118, flags: DIFlagFwdDecl)
!1662 = !DIFile(filename: "/usr/include/event2/bufferevent.h", directory: "", checksumkind: CSK_MD5, checksum: "15bb43c26b2c9058b6c64d44779c7263")
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "deallocate_eb", scope: !1651, file: !1652, line: 139, baseType: !7, size: 32, offset: 128)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !1651, file: !1652, line: 140, baseType: !7, size: 32, offset: 160)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "tp", scope: !1651, file: !1652, line: 141, baseType: !1666, size: 64, offset: 192)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !1668, line: 50, baseType: !1669)
!1668 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !1668, line: 49, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "map_rtcp", scope: !1651, file: !1652, line: 142, baseType: !1671, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtcp_map", file: !1673, line: 46, baseType: !1674)
!1673 = !DIFile(filename: "src/server/ns_turn_maps_rtcp.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bedcc1443244c8ca394e26ac35053c7")
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "_rtcp_map", file: !1673, line: 45, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1651, file: !1652, line: 143, baseType: !1676, size: 128, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list", file: !1652, line: 81, baseType: !1677)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list", file: !1652, line: 78, size: 128, elements: !1678)
!1678 = !{!1679, !1700}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1677, file: !1652, line: 79, baseType: !1680, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer_list_elem", file: !1652, line: 76, baseType: !1682)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer_list_elem", file: !1652, line: 73, size: 524288, elements: !1683)
!1683 = !{!1684, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1682, file: !1652, line: 74, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1682, file: !1652, line: 75, baseType: !1687, size: 524224, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_buffer", file: !1688, line: 48, baseType: !1689)
!1688 = !DIFile(filename: "src/apps/common/stun_buffer.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "cc7948905c033a0fb654060699acf9e2")
!1689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_stun_buffer", file: !1688, line: 42, size: 524224, elements: !1690)
!1690 = !{!1691, !1693, !1697, !1698, !1699}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !1689, file: !1688, line: 43, baseType: !1692, size: 32)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 32, elements: !277)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1689, file: !1688, line: 44, baseType: !1694, size: 524056, offset: 32)
!1694 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 524056, elements: !1695)
!1695 = !{!1696}
!1696 = !DISubrange(count: 65507)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1689, file: !1688, line: 45, baseType: !157, size: 64, offset: 524096)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1689, file: !1688, line: 46, baseType: !246, size: 16, offset: 524160)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "coffset", scope: !1689, file: !1688, line: 47, baseType: !161, size: 8, offset: 524176)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "tsz", scope: !1677, file: !1652, line: 80, baseType: !157, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_ssl23", scope: !1651, file: !1652, line: 144, baseType: !1702, size: 64, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL_CTX", file: !1704, line: 185, baseType: !1705)
!1704 = !DIFile(filename: "/usr/include/openssl/types.h", directory: "", checksumkind: CSK_MD5, checksum: "44f1236065e4ee65cf4cd545c3e12ab9")
!1705 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_ctx_st", file: !1704, line: 185, flags: DIFlagFwdDecl)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_0", scope: !1651, file: !1652, line: 145, baseType: !1702, size: 64, offset: 512)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_1", scope: !1651, file: !1652, line: 147, baseType: !1702, size: 64, offset: 576)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "tls_ctx_v1_2", scope: !1651, file: !1652, line: 149, baseType: !1702, size: 64, offset: 640)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx", scope: !1651, file: !1652, line: 153, baseType: !1702, size: 64, offset: 704)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "dtls_ctx_v1_2", scope: !1651, file: !1652, line: 156, baseType: !1702, size: 64, offset: 768)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !1651, file: !1652, line: 158, baseType: !153, size: 32, offset: 832)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "timer_ev", scope: !1651, file: !1652, line: 159, baseType: !1713, size: 64, offset: 896)
!1713 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_timer_handle", file: !44, line: 122, baseType: !107)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "cmsg", scope: !1651, file: !1652, line: 160, baseType: !1715, size: 524296, offset: 960)
!1715 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 524296, elements: !1716)
!1716 = !{!1717}
!1717 = !DISubrange(count: 65537)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timer_intervals", scope: !1651, file: !1652, line: 161, baseType: !1719, size: 448, offset: 525280)
!1719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 448, elements: !237)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "predef_timers", scope: !1651, file: !1652, line: 162, baseType: !1721, size: 1792, offset: 525760)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1722, size: 1792, elements: !237)
!1722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !1723, line: 8, size: 128, elements: !1724)
!1723 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "9b45d950050c215f216850b27bd1e8f3")
!1724 = !{!1725, !1727}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !1722, file: !1723, line: 14, baseType: !1726, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !152, line: 160, baseType: !200)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !1722, file: !1723, line: 15, baseType: !1728, size: 64, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !152, line: 162, baseType: !200)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "relay_ifname", scope: !1651, file: !1652, line: 164, baseType: !1077, size: 8200, offset: 527552)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "default_relays", scope: !1651, file: !1652, line: 165, baseType: !7, size: 32, offset: 535776)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "relays_number", scope: !1651, file: !1652, line: 166, baseType: !157, size: 64, offset: 535808)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_counter", scope: !1651, file: !1652, line: 167, baseType: !157, size: 64, offset: 535872)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addrs", scope: !1651, file: !1652, line: 168, baseType: !1734, size: 64, offset: 535936)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "rch", scope: !1651, file: !1652, line: 169, baseType: !1736, size: 64, offset: 536000)
!1736 = !DIDerivedType(tag: DW_TAG_typedef, name: "redis_context_handle", file: !1737, line: 45, baseType: !107)
!1737 = !DIFile(filename: "src/apps/common/hiredis_libevent2.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "8bcf7d75479c12c7a6031a30f30ef1f7")
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !1637, file: !38, line: 121, baseType: !7, size: 32, offset: 320)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "fingerprint", scope: !1637, file: !38, line: 122, baseType: !7, size: 32, offset: 352)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "rfc5780", scope: !1637, file: !38, line: 123, baseType: !7, size: 32, offset: 384)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "check_origin", scope: !1637, file: !38, line: 124, baseType: !1742, size: 64, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_typedef, name: "vintp", file: !137, line: 106, baseType: !1743)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "stale_nonce", scope: !1637, file: !38, line: 125, baseType: !1742, size: 64, offset: 512)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "max_allocate_lifetime", scope: !1637, file: !38, line: 126, baseType: !1742, size: 64, offset: 576)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "channel_lifetime", scope: !1637, file: !38, line: 127, baseType: !1742, size: 64, offset: 640)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "permission_lifetime", scope: !1637, file: !38, line: 128, baseType: !1742, size: 64, offset: 704)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "stun_only", scope: !1637, file: !38, line: 129, baseType: !1742, size: 64, offset: 768)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "no_stun", scope: !1637, file: !38, line: 130, baseType: !1742, size: 64, offset: 832)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "no_software_attribute", scope: !1637, file: !38, line: 131, baseType: !1742, size: 64, offset: 896)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "web_admin_listen_on_workers", scope: !1637, file: !38, line: 132, baseType: !1742, size: 64, offset: 960)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "secure_stun", scope: !1637, file: !38, line: 133, baseType: !1742, size: 64, offset: 1024)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !1637, file: !38, line: 134, baseType: !1630, size: 32, offset: 1088)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "alt_addr_cb", scope: !1637, file: !38, line: 135, baseType: !1755, size: 64, offset: 1152)
!1755 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_alt_addr_cb", file: !38, line: 59, baseType: !1756)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!7, !1734, !1734}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "sm_cb", scope: !1637, file: !38, line: 136, baseType: !1760, size: 64, offset: 1216)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_message_cb", file: !38, line: 60, baseType: !1761)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!7, !1648, !852, !1734, !1734}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dont_fragment", scope: !1637, file: !38, line: 137, baseType: !1765, size: 32, offset: 1280)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "dont_fragment_option_t", file: !38, line: 96, baseType: !37)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !1637, file: !38, line: 138, baseType: !1767, size: 64, offset: 1344)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!7, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "ts_ur_super_session", file: !44, line: 47, baseType: !1772)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ts_ur_super_session", file: !121, line: 68, size: 152448, elements: !1773)
!1773 = !{!1774, !1775, !1776, !1777, !1914, !2017, !2018, !2019, !2020, !2021, !2025, !2026, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2062, !2063, !2067}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "server", scope: !1772, file: !121, line: 69, baseType: !107, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1772, file: !121, line: 70, baseType: !1641, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !1772, file: !121, line: 71, baseType: !153, size: 32, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "client_socket", scope: !1772, file: !121, line: 72, baseType: !1778, size: 64, offset: 192)
!1778 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket_handle", file: !44, line: 116, baseType: !1779)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_socket", file: !44, line: 115, baseType: !1781)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_socket", file: !1652, line: 179, size: 2880, elements: !1782)
!1782 = !{!1783, !1784, !1786, !1787, !1809, !1812, !1813, !1814, !1816, !1818, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1834, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1865, !1866, !1895, !1896, !1901, !1902, !1906, !1911, !1912, !1913}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !1781, file: !1652, line: 181, baseType: !7, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "parent_s", scope: !1781, file: !1652, line: 182, baseType: !1785, size: 64, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1781, file: !1652, line: 183, baseType: !154, size: 32, offset: 128)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "sockets_container", scope: !1781, file: !1652, line: 184, baseType: !1788, size: 64, offset: 192)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !106, line: 183, baseType: !1790)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !106, line: 177, size: 1441856, elements: !1791)
!1791 = !{!1792, !1808}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !1790, file: !106, line: 178, baseType: !1793, size: 1441792)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1794, size: 1441792, elements: !1136)
!1794 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !106, line: 175, baseType: !1795)
!1795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !106, line: 171, size: 1408, elements: !1796)
!1796 = !{!1797, !1805, !1807}
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !1795, file: !106, line: 172, baseType: !1798, size: 1280)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1799, size: 1280, elements: !277)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !106, line: 169, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !106, line: 166, size: 320, elements: !1801)
!1801 = !{!1802, !1803}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1800, file: !106, line: 167, baseType: !224, size: 224)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1800, file: !106, line: 168, baseType: !1804, size: 64, offset: 256)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !106, line: 161, baseType: !134)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !1795, file: !106, line: 173, baseType: !1806, size: 64, offset: 1280)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !1795, file: !106, line: 174, baseType: !157, size: 64, offset: 1344)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !1790, file: !106, line: 179, baseType: !986, size: 64, offset: 1441792)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "bev", scope: !1781, file: !1652, line: 185, baseType: !1810, size: 64, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DICompositeType(tag: DW_TAG_structure_type, name: "bufferevent", file: !1662, line: 113, flags: DIFlagFwdDecl)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "defer_nbh", scope: !1781, file: !1652, line: 186, baseType: !852, size: 64, offset: 320)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "family", scope: !1781, file: !1652, line: 187, baseType: !7, size: 32, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "st", scope: !1781, file: !1652, line: 188, baseType: !1815, size: 32, offset: 416)
!1815 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_TYPE", file: !44, line: 98, baseType: !43)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "sat", scope: !1781, file: !1652, line: 189, baseType: !1817, size: 32, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "SOCKET_APP_TYPE", file: !44, line: 112, baseType: !56)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "ssl", scope: !1781, file: !1652, line: 190, baseType: !1819, size: 64, offset: 512)
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_typedef, name: "SSL", file: !1704, line: 184, baseType: !1821)
!1821 = !DICompositeType(tag: DW_TAG_structure_type, name: "ssl_st", file: !1704, line: 184, flags: DIFlagFwdDecl)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_renegs", scope: !1781, file: !1652, line: 191, baseType: !154, size: 32, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "in_write", scope: !1781, file: !1652, line: 192, baseType: !7, size: 32, offset: 608)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !1781, file: !1652, line: 193, baseType: !7, size: 32, offset: 640)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_known", scope: !1781, file: !1652, line: 194, baseType: !7, size: 32, offset: 672)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr", scope: !1781, file: !1652, line: 195, baseType: !224, size: 224, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !1781, file: !1652, line: 196, baseType: !7, size: 32, offset: 928)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr", scope: !1781, file: !1652, line: 197, baseType: !224, size: 224, offset: 960)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "e", scope: !1781, file: !1652, line: 198, baseType: !1648, size: 64, offset: 1216)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "read_event", scope: !1781, file: !1652, line: 199, baseType: !1831, size: 64, offset: 1280)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DICompositeType(tag: DW_TAG_structure_type, name: "event", file: !1833, line: 276, flags: DIFlagFwdDecl)
!1833 = !DIFile(filename: "/usr/include/event2/event.h", directory: "", checksumkind: CSK_MD5, checksum: "90db4fa73456052afa8984291985dfd5")
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "read_cb", scope: !1781, file: !1652, line: 200, baseType: !1835, size: 64, offset: 1344)
!1835 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_event_handler", file: !44, line: 199, baseType: !1836)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{null, !1778, !7, !1839, !107, !7}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_net_data", file: !44, line: 132, baseType: !1841)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ioa_net_data", file: !44, line: 127, size: 384, elements: !1842)
!1842 = !{!1843, !1844, !1845, !1846}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "src_addr", scope: !1841, file: !44, line: 128, baseType: !224, size: 224)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "nbh", scope: !1841, file: !44, line: 129, baseType: !852, size: 64, offset: 256)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "recv_ttl", scope: !1841, file: !44, line: 130, baseType: !7, size: 32, offset: 320)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "recv_tos", scope: !1841, file: !44, line: 131, baseType: !7, size: 32, offset: 352)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "read_ctx", scope: !1781, file: !1652, line: 201, baseType: !107, size: 64, offset: 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1781, file: !1652, line: 202, baseType: !7, size: 32, offset: 1472)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "session", scope: !1781, file: !1652, line: 203, baseType: !1770, size: 64, offset: 1536)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "current_df_relay_flag", scope: !1781, file: !1652, line: 204, baseType: !7, size: 32, offset: 1600)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "do_not_use_df", scope: !1781, file: !1652, line: 206, baseType: !7, size: 32, offset: 1632)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "tobeclosed", scope: !1781, file: !1652, line: 207, baseType: !7, size: 32, offset: 1664)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "broken", scope: !1781, file: !1652, line: 208, baseType: !7, size: 32, offset: 1696)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "default_ttl", scope: !1781, file: !1652, line: 209, baseType: !7, size: 32, offset: 1728)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "current_ttl", scope: !1781, file: !1652, line: 210, baseType: !7, size: 32, offset: 1760)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "default_tos", scope: !1781, file: !1652, line: 211, baseType: !7, size: 32, offset: 1792)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "current_tos", scope: !1781, file: !1652, line: 212, baseType: !7, size: 32, offset: 1824)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1781, file: !1652, line: 213, baseType: !1676, size: 128, offset: 1856)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie", scope: !1781, file: !1652, line: 214, baseType: !153, size: 32, offset: 1984)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "data_traffic", scope: !1781, file: !1652, line: 215, baseType: !1861, size: 128, offset: 2048)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "traffic_bytes", file: !1652, line: 174, size: 128, elements: !1862)
!1862 = !{!1863, !1864}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_read", scope: !1861, file: !1652, line: 175, baseType: !133, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "jiffie_bytes_write", scope: !1861, file: !1652, line: 176, baseType: !133, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "control_traffic", scope: !1781, file: !1652, line: 216, baseType: !1861, size: 128, offset: 2176)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sub_session", scope: !1781, file: !1652, line: 219, baseType: !1867, size: 64, offset: 2304)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection", file: !44, line: 50, baseType: !1869)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection", file: !68, line: 85, size: 960, elements: !1870)
!1870 = !{!1871, !1873, !1875, !1876, !1877, !1878, !1879, !1880, !1886, !1887, !1888}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1869, file: !68, line: 87, baseType: !1872, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "TC_STATE", file: !68, line: 76, baseType: !67)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1869, file: !68, line: 88, baseType: !1874, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_id", file: !68, line: 78, baseType: !154)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !1869, file: !68, line: 89, baseType: !224, size: 224, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "client_s", scope: !1869, file: !68, line: 90, baseType: !1778, size: 64, offset: 320)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "peer_s", scope: !1869, file: !68, line: 91, baseType: !1778, size: 64, offset: 384)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "peer_conn_timeout", scope: !1869, file: !68, line: 92, baseType: !1713, size: 64, offset: 448)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bind_timeout", scope: !1869, file: !68, line: 93, baseType: !1713, size: 64, offset: 512)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1869, file: !68, line: 94, baseType: !1881, size: 96, offset: 576)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "stun_tid", file: !23, line: 52, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !23, line: 47, size: 96, elements: !1883)
!1883 = !{!1884}
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "tsx_id", scope: !1882, file: !23, line: 51, baseType: !1885, size: 96)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 96, elements: !417)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1869, file: !68, line: 95, baseType: !107, size: 64, offset: 704)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1869, file: !68, line: 96, baseType: !7, size: 32, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "ub_to_client", scope: !1869, file: !68, line: 97, baseType: !1889, size: 128, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_typedef, name: "unsent_buffer", file: !68, line: 83, baseType: !1890)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 80, size: 128, elements: !1891)
!1891 = !{!1892, !1893}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !1890, file: !68, line: 81, baseType: !157, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bufs", scope: !1890, file: !68, line: 82, baseType: !1894, size: 64, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "conn_bev", scope: !1781, file: !1652, line: 221, baseType: !1810, size: 64, offset: 2368)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "conn_cb", scope: !1781, file: !1652, line: 222, baseType: !1897, size: 64, offset: 2432)
!1897 = !DIDerivedType(tag: DW_TAG_typedef, name: "connect_cb", file: !44, line: 135, baseType: !1898)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{null, !7, !107}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "conn_arg", scope: !1781, file: !1652, line: 223, baseType: !107, size: 64, offset: 2496)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "list_ev", scope: !1781, file: !1652, line: 225, baseType: !1903, size: 64, offset: 2560)
!1903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1904, size: 64)
!1904 = !DICompositeType(tag: DW_TAG_structure_type, name: "evconnlistener", file: !1905, line: 69, flags: DIFlagFwdDecl)
!1905 = !DIFile(filename: "src/apps/relay/turn_admin_server.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "72080e29702b34b58984e3ea957f1f4c")
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "acb", scope: !1781, file: !1652, line: 226, baseType: !1907, size: 64, offset: 2624)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "accept_cb", file: !44, line: 137, baseType: !1908)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DISubroutineType(types: !1910)
!1910 = !{null, !1778, !107}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "acbarg", scope: !1781, file: !1652, line: 227, baseType: !107, size: 64, offset: 2688)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "special_session", scope: !1781, file: !1652, line: 229, baseType: !107, size: 64, offset: 2752)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "special_session_size", scope: !1781, file: !1652, line: 230, baseType: !157, size: 64, offset: 2816)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1772, file: !121, line: 73, baseType: !1915, size: 141120, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocation", file: !68, line: 186, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_allocation", file: !68, line: 176, size: 141120, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1972, !1980, !1982, !2008, !2009, !2010}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "is_valid", scope: !1916, file: !68, line: 177, baseType: !7, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "tid", scope: !1916, file: !68, line: 178, baseType: !1881, size: 96, offset: 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "addr_to_perm", scope: !1916, file: !68, line: 179, baseType: !1921, size: 125440, offset: 128)
!1921 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_hashtable", file: !68, line: 166, baseType: !1922)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_hashtable", file: !68, line: 164, size: 125440, elements: !1923)
!1923 = !{!1924}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1922, file: !68, line: 165, baseType: !1925, size: 125440)
!1925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1926, size: 125440, elements: !255)
!1926 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_array", file: !68, line: 162, baseType: !1927)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_array", file: !68, line: 158, size: 15680, elements: !1928)
!1928 = !{!1929, !1968, !1969}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "main_slots", scope: !1927, file: !68, line: 159, baseType: !1930, size: 15552)
!1930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1931, size: 15552, elements: !338)
!1931 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_slot", file: !68, line: 156, baseType: !1932)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_slot", file: !68, line: 154, size: 5184, elements: !1933)
!1933 = !{!1934}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1932, file: !68, line: 155, baseType: !1935, size: 5184)
!1935 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_permission_info", file: !68, line: 152, baseType: !1936)
!1936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_permission_info", file: !68, line: 143, size: 5184, elements: !1937)
!1937 = !{!1938, !1939, !1961, !1962, !1963, !1964, !1965, !1966}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1936, file: !68, line: 144, baseType: !7, size: 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !1936, file: !68, line: 145, baseType: !1940, size: 4608, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map", file: !106, line: 117, baseType: !1941)
!1941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map", file: !106, line: 115, size: 4608, elements: !1942)
!1942 = !{!1943}
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1941, file: !106, line: 116, baseType: !1944, size: 4608)
!1944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1945, size: 4608, elements: !255)
!1945 = !DIDerivedType(tag: DW_TAG_typedef, name: "lm_map_array", file: !106, line: 113, baseType: !1946)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_lm_map_array", file: !106, line: 107, size: 576, elements: !1947)
!1947 = !{!1948, !1951, !1954, !1955, !1958}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "main_keys", scope: !1946, file: !106, line: 108, baseType: !1949, size: 192)
!1949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1950, size: 192, elements: !338)
!1950 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_key_type", file: !106, line: 47, baseType: !986)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "main_values", scope: !1946, file: !106, line: 109, baseType: !1952, size: 192, offset: 192)
!1952 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1953, size: 192, elements: !338)
!1953 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_map_value_type", file: !106, line: 48, baseType: !134)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !1946, file: !106, line: 110, baseType: !157, size: 64, offset: 384)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "extra_keys", scope: !1946, file: !106, line: 111, baseType: !1956, size: 64, offset: 448)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "extra_values", scope: !1946, file: !106, line: 112, baseType: !1959, size: 64, offset: 512)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1936, file: !68, line: 146, baseType: !224, size: 224, offset: 4672)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !1936, file: !68, line: 147, baseType: !153, size: 32, offset: 4896)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !1936, file: !68, line: 148, baseType: !1713, size: 64, offset: 4928)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1936, file: !68, line: 149, baseType: !107, size: 64, offset: 4992)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "verbose", scope: !1936, file: !68, line: 150, baseType: !7, size: 32, offset: 5056)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "session_id", scope: !1936, file: !68, line: 151, baseType: !1967, size: 64, offset: 5120)
!1967 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !1927, file: !68, line: 160, baseType: !157, size: 64, offset: 15552)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "extra_slots", scope: !1927, file: !68, line: 161, baseType: !1970, size: 64, offset: 15616)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions", scope: !1916, file: !68, line: 180, baseType: !1973, size: 384, offset: 125568)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1974, size: 384, elements: !326)
!1974 = !DIDerivedType(tag: DW_TAG_typedef, name: "relay_endpoint_session", file: !68, line: 55, baseType: !1975)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !68, line: 50, size: 192, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1975, file: !68, line: 52, baseType: !1778, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !1975, file: !68, line: 53, baseType: !153, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !1975, file: !68, line: 54, baseType: !1713, size: 64, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "relay_sessions_failure", scope: !1916, file: !68, line: 181, baseType: !1981, size: 64, offset: 125952)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !326)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "chns", scope: !1916, file: !68, line: 182, baseType: !1983, size: 14848, offset: 126016)
!1983 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map", file: !68, line: 136, baseType: !1984)
!1984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_map", file: !68, line: 134, size: 14848, elements: !1985)
!1985 = !{!1986}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !1984, file: !68, line: 135, baseType: !1987, size: 14848)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1988, size: 14848, elements: !255)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_map_array", file: !68, line: 132, baseType: !1989)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_chn_map_array", file: !68, line: 128, size: 1856, elements: !1990)
!1990 = !{!1991, !2004, !2005}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "main_chns", scope: !1989, file: !68, line: 129, baseType: !1992, size: 1728)
!1992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1993, size: 1728, elements: !338)
!1993 = !DIDerivedType(tag: DW_TAG_typedef, name: "ch_info", file: !68, line: 121, baseType: !1994)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ch_info", file: !68, line: 112, size: 576, elements: !1995)
!1995 = !{!1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "chnum", scope: !1994, file: !68, line: 113, baseType: !246, size: 16)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !1994, file: !68, line: 114, baseType: !7, size: 32, offset: 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1994, file: !68, line: 115, baseType: !246, size: 16, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "peer_addr", scope: !1994, file: !68, line: 116, baseType: !224, size: 224, offset: 96)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !1994, file: !68, line: 117, baseType: !153, size: 32, offset: 320)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "lifetime_ev", scope: !1994, file: !68, line: 118, baseType: !1713, size: 64, offset: 384)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1994, file: !68, line: 119, baseType: !107, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "kernel_channel", scope: !1994, file: !68, line: 120, baseType: !107, size: 64, offset: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !1989, file: !68, line: 130, baseType: !157, size: 64, offset: 1728)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "extra_chns", scope: !1989, file: !68, line: 131, baseType: !2006, size: 64, offset: 1792)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1916, file: !68, line: 183, baseType: !107, size: 64, offset: 140864)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_connections", scope: !1916, file: !68, line: 184, baseType: !1643, size: 64, offset: 140928)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "tcs", scope: !1916, file: !68, line: 185, baseType: !2011, size: 128, offset: 140992)
!2011 = !DIDerivedType(tag: DW_TAG_typedef, name: "tcp_connection_list", file: !68, line: 103, baseType: !2012)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_tcp_connection_list", file: !68, line: 100, size: 128, elements: !2013)
!2013 = !{!2014, !2015}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "sz", scope: !2012, file: !68, line: 101, baseType: !157, size: 64)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "elems", scope: !2012, file: !68, line: 102, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_allocated_timeout_ev", scope: !1772, file: !121, line: 74, baseType: !1713, size: 64, offset: 141376)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !1772, file: !121, line: 75, baseType: !7, size: 32, offset: 141440)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "is_tcp_relay", scope: !1772, file: !121, line: 76, baseType: !7, size: 32, offset: 141472)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "to_be_closed", scope: !1772, file: !121, line: 77, baseType: !7, size: 32, offset: 141504)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "nonce", scope: !1772, file: !121, line: 79, baseType: !2022, size: 136, offset: 141536)
!2022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 136, elements: !2023)
!2023 = !{!2024}
!2024 = !DISubrange(count: 17)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "nonce_expiration_time", scope: !1772, file: !121, line: 80, baseType: !153, size: 32, offset: 141696)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !1772, file: !121, line: 81, baseType: !2027, size: 4104, offset: 141728)
!2027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !161, size: 4104, elements: !216)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey", scope: !1772, file: !121, line: 82, baseType: !166, size: 512, offset: 145832)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "hmackey_set", scope: !1772, file: !121, line: 83, baseType: !7, size: 32, offset: 146368)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !1772, file: !121, line: 84, baseType: !1199, size: 2056, offset: 146400)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "quota_used", scope: !1772, file: !121, line: 85, baseType: !7, size: 32, offset: 148480)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !1772, file: !121, line: 86, baseType: !7, size: 32, offset: 148512)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time_auth", scope: !1772, file: !121, line: 87, baseType: !153, size: 32, offset: 148544)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "realm_options", scope: !1772, file: !121, line: 89, baseType: !119, size: 1152, offset: 148608)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "origin_set", scope: !1772, file: !121, line: 90, baseType: !7, size: 32, offset: 149760)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !1772, file: !121, line: 91, baseType: !124, size: 1024, offset: 149792)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !1772, file: !121, line: 93, baseType: !154, size: 32, offset: 150816)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !1772, file: !121, line: 94, baseType: !154, size: 32, offset: 150848)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !1772, file: !121, line: 95, baseType: !154, size: 32, offset: 150880)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !1772, file: !121, line: 96, baseType: !154, size: 32, offset: 150912)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_packets", scope: !1772, file: !121, line: 97, baseType: !986, size: 64, offset: 150976)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_packets", scope: !1772, file: !121, line: 98, baseType: !986, size: 64, offset: 151040)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "t_received_bytes", scope: !1772, file: !121, line: 99, baseType: !986, size: 64, offset: 151104)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "t_sent_bytes", scope: !1772, file: !121, line: 100, baseType: !986, size: 64, offset: 151168)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !1772, file: !121, line: 101, baseType: !986, size: 64, offset: 151232)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !1772, file: !121, line: 102, baseType: !157, size: 64, offset: 151296)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !1772, file: !121, line: 103, baseType: !157, size: 64, offset: 151360)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !1772, file: !121, line: 104, baseType: !154, size: 32, offset: 151424)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !1772, file: !121, line: 105, baseType: !154, size: 32, offset: 151456)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !1772, file: !121, line: 106, baseType: !154, size: 32, offset: 151488)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !1772, file: !121, line: 107, baseType: !154, size: 32, offset: 151520)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_packets", scope: !1772, file: !121, line: 108, baseType: !154, size: 32, offset: 151552)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_packets", scope: !1772, file: !121, line: 109, baseType: !154, size: 32, offset: 151584)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_received_bytes", scope: !1772, file: !121, line: 110, baseType: !154, size: 32, offset: 151616)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "t_peer_sent_bytes", scope: !1772, file: !121, line: 111, baseType: !154, size: 32, offset: 151648)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !1772, file: !121, line: 112, baseType: !986, size: 64, offset: 151680)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !1772, file: !121, line: 113, baseType: !157, size: 64, offset: 151744)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !1772, file: !121, line: 114, baseType: !157, size: 64, offset: 151808)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !1772, file: !121, line: 116, baseType: !7, size: 32, offset: 151872)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_id", scope: !1772, file: !121, line: 117, baseType: !2061, size: 64, offset: 151936)
!2061 = !DIDerivedType(tag: DW_TAG_typedef, name: "mobile_id_t", file: !121, line: 66, baseType: !986)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "old_mobile_id", scope: !1772, file: !121, line: 118, baseType: !2061, size: 64, offset: 152000)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "s_mobile_id", scope: !1772, file: !121, line: 119, baseType: !2064, size: 264, offset: 152064)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 264, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 33)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !1772, file: !121, line: 121, baseType: !133, size: 64, offset: 152384)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "userkeycb", scope: !1637, file: !38, line: 139, baseType: !2069, size: 64, offset: 1408)
!2069 = !DIDerivedType(tag: DW_TAG_typedef, name: "get_user_key_cb", file: !38, line: 102, baseType: !2070)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "chquotacb", scope: !1637, file: !38, line: 140, baseType: !2072, size: 64, offset: 1472)
!2072 = !DIDerivedType(tag: DW_TAG_typedef, name: "check_new_allocation_quota_cb", file: !38, line: 103, baseType: !2073)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!7, !164, !7, !164}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "raqcb", scope: !1637, file: !38, line: 141, baseType: !2077, size: 64, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_typedef, name: "release_allocation_quota_cb", file: !38, line: 104, baseType: !2078)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{null, !164, !7, !164}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip_set", scope: !1637, file: !38, line: 142, baseType: !7, size: 32, offset: 1600)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "external_ip", scope: !1637, file: !38, line: 143, baseType: !224, size: 224, offset: 1632)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "allow_loopback_peers", scope: !1637, file: !38, line: 144, baseType: !1742, size: 64, offset: 1856)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "no_multicast_peers", scope: !1637, file: !38, line: 145, baseType: !1742, size: 64, offset: 1920)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "send_turn_session_info", scope: !1637, file: !38, line: 146, baseType: !2086, size: 64, offset: 1984)
!2086 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_turn_session_info_cb", file: !38, line: 106, baseType: !2087)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!7, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "turn_session_info", file: !121, line: 134, size: 15040, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2096, !2097, !2098, !2099, !2101, !2102, !2108, !2109, !2110, !2111, !2112, !2113, !2114, !2115, !2116, !2117, !2118, !2119, !2120, !2121, !2122, !2123, !2124, !2125, !2126, !2127, !2128, !2130, !2131, !2133, !2134, !2135, !2136}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2091, file: !121, line: 135, baseType: !1641, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2091, file: !121, line: 136, baseType: !7, size: 32, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !2091, file: !121, line: 137, baseType: !153, size: 32, offset: 96)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "expiration_time", scope: !2091, file: !121, line: 138, baseType: !153, size: 32, offset: 128)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "client_protocol", scope: !2091, file: !121, line: 139, baseType: !1815, size: 32, offset: 160)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "peer_protocol", scope: !2091, file: !121, line: 140, baseType: !1815, size: 32, offset: 192)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "tls_method", scope: !2091, file: !121, line: 141, baseType: !2100, size: 136, offset: 224)
!2100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 136, elements: !2023)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "tls_cipher", scope: !2091, file: !121, line: 142, baseType: !990, size: 520, offset: 360)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "local_addr_data", scope: !2091, file: !121, line: 143, baseType: !2103, size: 768, offset: 896)
!2103 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_data", file: !121, line: 132, baseType: !2104)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_data", file: !121, line: 129, size: 768, elements: !2105)
!2105 = !{!2106, !2107}
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2104, file: !121, line: 130, baseType: !224, size: 224)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "saddr", scope: !2104, file: !121, line: 131, baseType: !990, size: 520, offset: 224)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "remote_addr_data", scope: !2091, file: !121, line: 144, baseType: !2103, size: 768, offset: 1664)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv4", scope: !2091, file: !121, line: 145, baseType: !2103, size: 768, offset: 2432)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "relay_addr_data_ipv6", scope: !2091, file: !121, line: 146, baseType: !2103, size: 768, offset: 3200)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !2091, file: !121, line: 147, baseType: !2027, size: 4104, offset: 3968)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "enforce_fingerprints", scope: !2091, file: !121, line: 148, baseType: !7, size: 32, offset: 8096)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "received_packets", scope: !2091, file: !121, line: 150, baseType: !986, size: 64, offset: 8128)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "sent_packets", scope: !2091, file: !121, line: 151, baseType: !986, size: 64, offset: 8192)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "received_bytes", scope: !2091, file: !121, line: 152, baseType: !986, size: 64, offset: 8256)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "sent_bytes", scope: !2091, file: !121, line: 153, baseType: !986, size: 64, offset: 8320)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "received_rate", scope: !2091, file: !121, line: 154, baseType: !154, size: 32, offset: 8384)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "sent_rate", scope: !2091, file: !121, line: 155, baseType: !154, size: 32, offset: 8416)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "total_rate", scope: !2091, file: !121, line: 156, baseType: !154, size: 32, offset: 8448)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_packets", scope: !2091, file: !121, line: 157, baseType: !986, size: 64, offset: 8512)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_packets", scope: !2091, file: !121, line: 158, baseType: !986, size: 64, offset: 8576)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_bytes", scope: !2091, file: !121, line: 159, baseType: !986, size: 64, offset: 8640)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_bytes", scope: !2091, file: !121, line: 160, baseType: !986, size: 64, offset: 8704)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "peer_received_rate", scope: !2091, file: !121, line: 161, baseType: !154, size: 32, offset: 8768)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "peer_sent_rate", scope: !2091, file: !121, line: 162, baseType: !154, size: 32, offset: 8800)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "peer_total_rate", scope: !2091, file: !121, line: 163, baseType: !154, size: 32, offset: 8832)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "is_mobile", scope: !2091, file: !121, line: 165, baseType: !7, size: 32, offset: 8864)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_data", scope: !2091, file: !121, line: 167, baseType: !2129, size: 3840, offset: 8896)
!2129 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2103, size: 3840, elements: !356)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "main_peers_size", scope: !2091, file: !121, line: 168, baseType: !157, size: 64, offset: 12736)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_data", scope: !2091, file: !121, line: 169, baseType: !2132, size: 64, offset: 12800)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "extra_peers_size", scope: !2091, file: !121, line: 170, baseType: !157, size: 64, offset: 12864)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !2091, file: !121, line: 172, baseType: !124, size: 1024, offset: 12928)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2091, file: !121, line: 173, baseType: !124, size: 1024, offset: 13952)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "bps", scope: !2091, file: !121, line: 175, baseType: !133, size: 64, offset: 14976)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "send_https_socket", scope: !1637, file: !38, line: 147, baseType: !2138, size: 64, offset: 2048)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_https_socket_cb", file: !38, line: 107, baseType: !2139)
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DISubroutineType(types: !2141)
!2141 = !{null, !1778}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "no_udp_relay", scope: !1637, file: !38, line: 150, baseType: !1742, size: 64, offset: 2112)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "no_tcp_relay", scope: !1637, file: !38, line: 151, baseType: !1742, size: 64, offset: 2176)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "tcp_relay_connections", scope: !1637, file: !38, line: 152, baseType: !1643, size: 64, offset: 2240)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "send_socket_to_relay", scope: !1637, file: !38, line: 153, baseType: !2146, size: 64, offset: 2304)
!2146 = !DIDerivedType(tag: DW_TAG_typedef, name: "send_socket_to_relay_cb", file: !38, line: 105, baseType: !2147)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!7, !1629, !986, !2150, !1778, !7, !2151, !1839, !7}
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_typedef, name: "MESSAGE_TO_RELAY_TYPE", file: !38, line: 76, baseType: !76)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "alternate_servers_list", scope: !1637, file: !38, line: 157, baseType: !2153, size: 64, offset: 2368)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_server_addrs_list_t", file: !38, line: 53, baseType: !2155)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_server_addrs_list", file: !38, line: 47, size: 256, elements: !2156)
!2156 = !{!2157, !2158, !2160}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2155, file: !38, line: 48, baseType: !1734, size: 64)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2155, file: !38, line: 49, baseType: !2159, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !157)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "m", scope: !2155, file: !38, line: 50, baseType: !381, size: 128, offset: 128)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "as_counter", scope: !1637, file: !38, line: 158, baseType: !157, size: 64, offset: 2432)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "tls_alternate_servers_list", scope: !1637, file: !38, line: 159, baseType: !2153, size: 64, offset: 2496)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "tls_as_counter", scope: !1637, file: !38, line: 160, baseType: !157, size: 64, offset: 2560)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "aux_servers_list", scope: !1637, file: !38, line: 161, baseType: !2153, size: 64, offset: 2624)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "self_udp_balance", scope: !1637, file: !38, line: 162, baseType: !7, size: 32, offset: 2688)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "ip_whitelist", scope: !1637, file: !38, line: 165, baseType: !201, size: 64, offset: 2752)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "ip_blacklist", scope: !1637, file: !38, line: 166, baseType: !201, size: 64, offset: 2816)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "mobility", scope: !1637, file: !38, line: 169, baseType: !1742, size: 64, offset: 2880)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "mobile_connections_map", scope: !1637, file: !38, line: 170, baseType: !1643, size: 64, offset: 2944)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "server_relay", scope: !1637, file: !38, line: 173, baseType: !7, size: 32, offset: 3008)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "allocate_bps_func", scope: !1637, file: !38, line: 176, baseType: !2172, size: 64, offset: 3072)
!2172 = !DIDerivedType(tag: DW_TAG_typedef, name: "allocate_bps_cb", file: !38, line: 109, baseType: !2173)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!133, !133, !7}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "oauth", scope: !1637, file: !38, line: 179, baseType: !7, size: 32, offset: 3136)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "oauth_server_name", scope: !1637, file: !38, line: 180, baseType: !108, size: 64, offset: 3200)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "acme_redirect", scope: !1637, file: !38, line: 183, baseType: !108, size: 64, offset: 3264)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "allocation_default_address_family", scope: !1637, file: !38, line: 186, baseType: !2180, size: 32, offset: 3328)
!2180 = !DIDerivedType(tag: DW_TAG_typedef, name: "ALLOCATION_DEFAULT_ADDRESS_FAMILY", file: !38, line: 84, baseType: !83)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "log_binding", scope: !1637, file: !38, line: 189, baseType: !1742, size: 64, offset: 3392)
!2182 = !DILocalVariable(name: "id", arg: 1, scope: !1626, file: !286, line: 637, type: !1629)
!2183 = !DILocation(line: 637, column: 41, scope: !1626)
!2184 = !DILocalVariable(name: "ct", arg: 2, scope: !1626, file: !286, line: 637, type: !1630)
!2185 = !DILocation(line: 637, column: 66, scope: !1626)
!2186 = !DILocalVariable(name: "in_oauth", arg: 3, scope: !1626, file: !286, line: 637, type: !7)
!2187 = !DILocation(line: 637, column: 74, scope: !1626)
!2188 = !DILocalVariable(name: "out_oauth", arg: 4, scope: !1626, file: !286, line: 637, type: !851)
!2189 = !DILocation(line: 637, column: 89, scope: !1626)
!2190 = !DILocalVariable(name: "usname", arg: 5, scope: !1626, file: !286, line: 637, type: !164)
!2191 = !DILocation(line: 637, column: 109, scope: !1626)
!2192 = !DILocalVariable(name: "realm", arg: 6, scope: !1626, file: !286, line: 637, type: !164)
!2193 = !DILocation(line: 637, column: 126, scope: !1626)
!2194 = !DILocalVariable(name: "resume", arg: 7, scope: !1626, file: !286, line: 637, type: !1631)
!2195 = !DILocation(line: 637, column: 156, scope: !1626)
!2196 = !DILocalVariable(name: "in_buffer", arg: 8, scope: !1626, file: !286, line: 637, type: !1839)
!2197 = !DILocation(line: 637, column: 178, scope: !1626)
!2198 = !DILocalVariable(name: "ctxkey", arg: 9, scope: !1626, file: !286, line: 637, type: !986)
!2199 = !DILocation(line: 637, column: 198, scope: !1626)
!2200 = !DILocalVariable(name: "postpone_reply", arg: 10, scope: !1626, file: !286, line: 637, type: !851)
!2201 = !DILocation(line: 637, column: 211, scope: !1626)
!2202 = !DILocation(line: 639, column: 3, scope: !1626)
!2203 = !DILocation(line: 639, column: 18, scope: !1626)
!2204 = !DILocalVariable(name: "am", scope: !1626, file: !286, line: 641, type: !2205)
!2205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "auth_message", file: !89, line: 80, size: 8448, elements: !2206)
!2206 = !{!2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2205, file: !89, line: 81, baseType: !1629, size: 8)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "ct", scope: !2205, file: !89, line: 82, baseType: !1630, size: 32, offset: 32)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "in_oauth", scope: !2205, file: !89, line: 83, baseType: !7, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "out_oauth", scope: !2205, file: !89, line: 84, baseType: !7, size: 32, offset: 96)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "max_session_time", scope: !2205, file: !89, line: 85, baseType: !7, size: 32, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "username", scope: !2205, file: !89, line: 86, baseType: !2027, size: 4104, offset: 160)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !2205, file: !89, line: 87, baseType: !1125, size: 1024, offset: 4264)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !2205, file: !89, line: 88, baseType: !166, size: 512, offset: 5288)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "pwd", scope: !2205, file: !89, line: 89, baseType: !1199, size: 2056, offset: 5800)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "resume_func", scope: !2205, file: !89, line: 90, baseType: !1631, size: 64, offset: 7872)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "in_buffer", scope: !2205, file: !89, line: 91, baseType: !1840, size: 384, offset: 7936)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ctxkey", scope: !2205, file: !89, line: 92, baseType: !986, size: 64, offset: 8320)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "success", scope: !2205, file: !89, line: 93, baseType: !7, size: 32, offset: 8384)
!2220 = !DILocation(line: 641, column: 22, scope: !1626)
!2221 = !DILocation(line: 642, column: 2, scope: !1626)
!2222 = !DILocation(line: 643, column: 10, scope: !1626)
!2223 = !DILocation(line: 643, column: 5, scope: !1626)
!2224 = !DILocation(line: 643, column: 8, scope: !1626)
!2225 = !DILocation(line: 644, column: 10, scope: !1626)
!2226 = !DILocation(line: 644, column: 5, scope: !1626)
!2227 = !DILocation(line: 644, column: 8, scope: !1626)
!2228 = !DILocation(line: 645, column: 16, scope: !1626)
!2229 = !DILocation(line: 645, column: 5, scope: !1626)
!2230 = !DILocation(line: 645, column: 14, scope: !1626)
!2231 = !DILocation(line: 646, column: 18, scope: !1626)
!2232 = !DILocation(line: 646, column: 17, scope: !1626)
!2233 = !DILocation(line: 646, column: 5, scope: !1626)
!2234 = !DILocation(line: 646, column: 15, scope: !1626)
!2235 = !DILocation(line: 647, column: 2, scope: !1626)
!2236 = !DILocation(line: 647, column: 2, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2238, file: !286, line: 647, column: 2)
!2238 = distinct !DILexicalBlock(scope: !1626, file: !286, line: 647, column: 2)
!2239 = !DILocation(line: 647, column: 2, scope: !2238)
!2240 = !DILocalVariable(name: "szdst", scope: !2241, file: !286, line: 647, type: !157)
!2241 = distinct !DILexicalBlock(scope: !2242, file: !286, line: 647, column: 2)
!2242 = distinct !DILexicalBlock(scope: !2243, file: !286, line: 647, column: 2)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !286, line: 647, column: 2)
!2244 = !DILocation(line: 647, column: 2, scope: !2241)
!2245 = !DILocation(line: 647, column: 2, scope: !2243)
!2246 = !DILocation(line: 648, column: 2, scope: !1626)
!2247 = !DILocation(line: 648, column: 2, scope: !2248)
!2248 = distinct !DILexicalBlock(scope: !2249, file: !286, line: 648, column: 2)
!2249 = distinct !DILexicalBlock(scope: !1626, file: !286, line: 648, column: 2)
!2250 = !DILocation(line: 648, column: 2, scope: !2249)
!2251 = !DILocalVariable(name: "szdst", scope: !2252, file: !286, line: 648, type: !157)
!2252 = distinct !DILexicalBlock(scope: !2253, file: !286, line: 648, column: 2)
!2253 = distinct !DILexicalBlock(scope: !2254, file: !286, line: 648, column: 2)
!2254 = distinct !DILexicalBlock(scope: !2248, file: !286, line: 648, column: 2)
!2255 = !DILocation(line: 648, column: 2, scope: !2252)
!2256 = !DILocation(line: 648, column: 2, scope: !2254)
!2257 = !DILocation(line: 649, column: 19, scope: !1626)
!2258 = !DILocation(line: 649, column: 5, scope: !1626)
!2259 = !DILocation(line: 649, column: 17, scope: !1626)
!2260 = !DILocation(line: 650, column: 14, scope: !1626)
!2261 = !DILocation(line: 650, column: 25, scope: !1626)
!2262 = !DILocation(line: 650, column: 2, scope: !1626)
!2263 = !DILocation(line: 651, column: 2, scope: !1626)
!2264 = !DILocation(line: 651, column: 13, scope: !1626)
!2265 = !DILocation(line: 651, column: 17, scope: !1626)
!2266 = !DILocation(line: 652, column: 14, scope: !1626)
!2267 = !DILocation(line: 652, column: 5, scope: !1626)
!2268 = !DILocation(line: 652, column: 12, scope: !1626)
!2269 = !DILocation(line: 654, column: 2, scope: !1626)
!2270 = !DILocation(line: 656, column: 2, scope: !1626)
!2271 = distinct !DISubprogram(name: "check_new_allocation_quota", scope: !286, file: !286, line: 659, type: !2074, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2272 = !DILocalVariable(name: "user", arg: 1, scope: !2271, file: !286, line: 659, type: !164)
!2273 = !DILocation(line: 659, column: 41, scope: !2271)
!2274 = !DILocalVariable(name: "oauth", arg: 2, scope: !2271, file: !286, line: 659, type: !7)
!2275 = !DILocation(line: 659, column: 51, scope: !2271)
!2276 = !DILocalVariable(name: "realm", arg: 3, scope: !2271, file: !286, line: 659, type: !164)
!2277 = !DILocation(line: 659, column: 67, scope: !2271)
!2278 = !DILocalVariable(name: "ret", scope: !2271, file: !286, line: 661, type: !7)
!2279 = !DILocation(line: 661, column: 6, scope: !2271)
!2280 = !DILocation(line: 662, column: 6, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2271, file: !286, line: 662, column: 6)
!2282 = !DILocation(line: 662, column: 11, scope: !2281)
!2283 = !DILocation(line: 662, column: 14, scope: !2281)
!2284 = !DILocation(line: 662, column: 6, scope: !2271)
!2285 = !DILocalVariable(name: "username", scope: !2286, file: !286, line: 663, type: !164)
!2286 = distinct !DILexicalBlock(scope: !2281, file: !286, line: 662, column: 21)
!2287 = !DILocation(line: 663, column: 12, scope: !2286)
!2288 = !DILocation(line: 663, column: 23, scope: !2286)
!2289 = !DILocation(line: 663, column: 41, scope: !2286)
!2290 = !DILocation(line: 663, column: 89, scope: !2286)
!2291 = !DILocation(line: 663, column: 64, scope: !2286)
!2292 = !DILocalVariable(name: "rp", scope: !2286, file: !286, line: 664, type: !113)
!2293 = !DILocation(line: 664, column: 19, scope: !2286)
!2294 = !DILocation(line: 664, column: 41, scope: !2286)
!2295 = !DILocation(line: 664, column: 24, scope: !2286)
!2296 = !DILocation(line: 665, column: 22, scope: !2286)
!2297 = !DILocation(line: 665, column: 26, scope: !2286)
!2298 = !DILocation(line: 665, column: 33, scope: !2286)
!2299 = !DILocation(line: 665, column: 3, scope: !2286)
!2300 = !DILocation(line: 666, column: 7, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2286, file: !286, line: 666, column: 7)
!2302 = !DILocation(line: 666, column: 11, scope: !2301)
!2303 = !DILocation(line: 666, column: 19, scope: !2301)
!2304 = !DILocation(line: 666, column: 32, scope: !2301)
!2305 = !DILocation(line: 666, column: 44, scope: !2301)
!2306 = !DILocation(line: 666, column: 48, scope: !2301)
!2307 = !DILocation(line: 666, column: 52, scope: !2301)
!2308 = !DILocation(line: 666, column: 59, scope: !2301)
!2309 = !DILocation(line: 666, column: 83, scope: !2301)
!2310 = !DILocation(line: 666, column: 87, scope: !2301)
!2311 = !DILocation(line: 666, column: 95, scope: !2301)
!2312 = !DILocation(line: 666, column: 108, scope: !2301)
!2313 = !DILocation(line: 666, column: 80, scope: !2301)
!2314 = !DILocation(line: 666, column: 7, scope: !2286)
!2315 = !DILocation(line: 667, column: 8, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2301, file: !286, line: 666, column: 122)
!2317 = !DILocation(line: 668, column: 3, scope: !2316)
!2318 = !DILocation(line: 668, column: 13, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2301, file: !286, line: 668, column: 13)
!2320 = !DILocation(line: 668, column: 13, scope: !2301)
!2321 = !DILocalVariable(name: "value", scope: !2322, file: !286, line: 669, type: !105)
!2322 = distinct !DILexicalBlock(scope: !2319, file: !286, line: 668, column: 25)
!2323 = !DILocation(line: 669, column: 29, scope: !2322)
!2324 = !DILocation(line: 670, column: 27, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !286, line: 670, column: 8)
!2326 = !DILocation(line: 670, column: 31, scope: !2325)
!2327 = !DILocation(line: 670, column: 38, scope: !2325)
!2328 = !DILocation(line: 670, column: 79, scope: !2325)
!2329 = !DILocation(line: 670, column: 9, scope: !2325)
!2330 = !DILocation(line: 670, column: 8, scope: !2322)
!2331 = !DILocation(line: 671, column: 11, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2325, file: !286, line: 670, column: 98)
!2333 = !DILocation(line: 672, column: 23, scope: !2332)
!2334 = !DILocation(line: 672, column: 27, scope: !2332)
!2335 = !DILocation(line: 672, column: 34, scope: !2332)
!2336 = !DILocation(line: 672, column: 75, scope: !2332)
!2337 = !DILocation(line: 672, column: 85, scope: !2332)
!2338 = !DILocation(line: 672, column: 5, scope: !2332)
!2339 = !DILocation(line: 673, column: 8, scope: !2332)
!2340 = !DILocation(line: 673, column: 12, scope: !2332)
!2341 = !DILocation(line: 673, column: 19, scope: !2332)
!2342 = !DILocation(line: 673, column: 5, scope: !2332)
!2343 = !DILocation(line: 674, column: 4, scope: !2332)
!2344 = !DILocation(line: 675, column: 10, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2346, file: !286, line: 675, column: 9)
!2346 = distinct !DILexicalBlock(scope: !2325, file: !286, line: 674, column: 11)
!2347 = !DILocation(line: 675, column: 14, scope: !2345)
!2348 = !DILocation(line: 675, column: 22, scope: !2345)
!2349 = !DILocation(line: 675, column: 35, scope: !2345)
!2350 = !DILocation(line: 675, column: 9, scope: !2345)
!2351 = !DILocation(line: 675, column: 47, scope: !2345)
!2352 = !DILocation(line: 675, column: 60, scope: !2345)
!2353 = !DILocation(line: 675, column: 51, scope: !2345)
!2354 = !DILocation(line: 675, column: 78, scope: !2345)
!2355 = !DILocation(line: 675, column: 82, scope: !2345)
!2356 = !DILocation(line: 675, column: 90, scope: !2345)
!2357 = !DILocation(line: 675, column: 103, scope: !2345)
!2358 = !DILocation(line: 675, column: 69, scope: !2345)
!2359 = !DILocation(line: 675, column: 66, scope: !2345)
!2360 = !DILocation(line: 675, column: 9, scope: !2346)
!2361 = !DILocation(line: 676, column: 10, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2345, file: !286, line: 675, column: 117)
!2363 = !DILocation(line: 677, column: 5, scope: !2362)
!2364 = !DILocation(line: 678, column: 50, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2345, file: !286, line: 677, column: 12)
!2366 = !DILocation(line: 678, column: 42, scope: !2365)
!2367 = !DILocation(line: 678, column: 57, scope: !2365)
!2368 = !DILocation(line: 678, column: 14, scope: !2365)
!2369 = !DILocation(line: 678, column: 12, scope: !2365)
!2370 = !DILocation(line: 679, column: 24, scope: !2365)
!2371 = !DILocation(line: 679, column: 28, scope: !2365)
!2372 = !DILocation(line: 679, column: 35, scope: !2365)
!2373 = !DILocation(line: 679, column: 76, scope: !2365)
!2374 = !DILocation(line: 679, column: 86, scope: !2365)
!2375 = !DILocation(line: 679, column: 6, scope: !2365)
!2376 = !DILocation(line: 680, column: 9, scope: !2365)
!2377 = !DILocation(line: 680, column: 13, scope: !2365)
!2378 = !DILocation(line: 680, column: 20, scope: !2365)
!2379 = !DILocation(line: 680, column: 6, scope: !2365)
!2380 = !DILocation(line: 683, column: 3, scope: !2322)
!2381 = !DILocation(line: 684, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2319, file: !286, line: 683, column: 10)
!2383 = !DILocation(line: 684, column: 11, scope: !2382)
!2384 = !DILocation(line: 684, column: 18, scope: !2382)
!2385 = !DILocation(line: 684, column: 4, scope: !2382)
!2386 = !DILocation(line: 686, column: 8, scope: !2286)
!2387 = !DILocation(line: 686, column: 3, scope: !2286)
!2388 = !DILocation(line: 687, column: 24, scope: !2286)
!2389 = !DILocation(line: 687, column: 28, scope: !2286)
!2390 = !DILocation(line: 687, column: 35, scope: !2286)
!2391 = !DILocation(line: 687, column: 3, scope: !2286)
!2392 = !DILocation(line: 688, column: 2, scope: !2286)
!2393 = !DILocation(line: 689, column: 9, scope: !2271)
!2394 = !DILocation(line: 689, column: 2, scope: !2271)
!2395 = distinct !DISubprogram(name: "get_real_username", scope: !286, file: !286, line: 366, type: !2396, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!111, !111}
!2398 = !DILocalVariable(name: "usname", arg: 1, scope: !2395, file: !286, line: 366, type: !111)
!2399 = !DILocation(line: 366, column: 38, scope: !2395)
!2400 = !DILocation(line: 368, column: 5, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2395, file: !286, line: 368, column: 5)
!2402 = !DILocation(line: 368, column: 15, scope: !2401)
!2403 = !DILocation(line: 368, column: 30, scope: !2401)
!2404 = !DILocation(line: 368, column: 18, scope: !2401)
!2405 = !DILocation(line: 368, column: 5, scope: !2395)
!2406 = !DILocalVariable(name: "col", scope: !2407, file: !286, line: 369, type: !111)
!2407 = distinct !DILexicalBlock(scope: !2401, file: !286, line: 368, column: 62)
!2408 = !DILocation(line: 369, column: 9, scope: !2407)
!2409 = !DILocation(line: 369, column: 20, scope: !2407)
!2410 = !DILocation(line: 369, column: 39, scope: !2407)
!2411 = !DILocation(line: 369, column: 27, scope: !2407)
!2412 = !DILocation(line: 369, column: 13, scope: !2407)
!2413 = !DILocation(line: 370, column: 6, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2407, file: !286, line: 370, column: 6)
!2415 = !DILocation(line: 370, column: 6, scope: !2407)
!2416 = !DILocation(line: 371, column: 7, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2418, file: !286, line: 371, column: 7)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !286, line: 370, column: 11)
!2419 = !DILocation(line: 371, column: 14, scope: !2417)
!2420 = !DILocation(line: 371, column: 11, scope: !2417)
!2421 = !DILocation(line: 371, column: 7, scope: !2418)
!2422 = !DILocation(line: 372, column: 12, scope: !2423)
!2423 = distinct !DILexicalBlock(scope: !2417, file: !286, line: 371, column: 22)
!2424 = !DILocation(line: 373, column: 4, scope: !2423)
!2425 = !DILocalVariable(name: "ptr", scope: !2426, file: !286, line: 374, type: !111)
!2426 = distinct !DILexicalBlock(scope: !2417, file: !286, line: 373, column: 11)
!2427 = !DILocation(line: 374, column: 11, scope: !2426)
!2428 = !DILocation(line: 374, column: 17, scope: !2426)
!2429 = !DILocalVariable(name: "found_non_figure", scope: !2426, file: !286, line: 375, type: !7)
!2430 = !DILocation(line: 375, column: 9, scope: !2426)
!2431 = !DILocation(line: 376, column: 5, scope: !2426)
!2432 = !DILocation(line: 376, column: 11, scope: !2426)
!2433 = !DILocation(line: 376, column: 17, scope: !2426)
!2434 = !DILocation(line: 376, column: 15, scope: !2426)
!2435 = !DILocation(line: 377, column: 11, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2437, file: !286, line: 377, column: 9)
!2437 = distinct !DILexicalBlock(scope: !2426, file: !286, line: 376, column: 22)
!2438 = !DILocation(line: 377, column: 17, scope: !2436)
!2439 = !DILocation(line: 377, column: 23, scope: !2436)
!2440 = !DILocation(line: 377, column: 26, scope: !2436)
!2441 = !DILocation(line: 377, column: 32, scope: !2436)
!2442 = !DILocation(line: 377, column: 9, scope: !2437)
!2443 = !DILocation(line: 378, column: 23, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2436, file: !286, line: 377, column: 40)
!2445 = !DILocation(line: 379, column: 7, scope: !2444)
!2446 = !DILocation(line: 381, column: 6, scope: !2437)
!2447 = distinct !{!2447, !2431, !2448, !798}
!2448 = !DILocation(line: 382, column: 5, scope: !2426)
!2449 = !DILocation(line: 383, column: 9, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2426, file: !286, line: 383, column: 8)
!2451 = !DILocation(line: 383, column: 8, scope: !2426)
!2452 = !DILocation(line: 384, column: 15, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2450, file: !286, line: 383, column: 27)
!2454 = !DILocation(line: 384, column: 18, scope: !2453)
!2455 = !DILocation(line: 384, column: 13, scope: !2453)
!2456 = !DILocation(line: 385, column: 5, scope: !2453)
!2457 = !DILocation(line: 386, column: 7, scope: !2458)
!2458 = distinct !DILexicalBlock(scope: !2450, file: !286, line: 385, column: 12)
!2459 = !DILocation(line: 386, column: 10, scope: !2458)
!2460 = !DILocation(line: 387, column: 22, scope: !2458)
!2461 = !DILocation(line: 387, column: 15, scope: !2458)
!2462 = !DILocation(line: 387, column: 13, scope: !2458)
!2463 = !DILocation(line: 388, column: 23, scope: !2458)
!2464 = !DILocation(line: 388, column: 7, scope: !2458)
!2465 = !DILocation(line: 388, column: 10, scope: !2458)
!2466 = !DILocation(line: 389, column: 13, scope: !2458)
!2467 = !DILocation(line: 389, column: 6, scope: !2458)
!2468 = !DILocation(line: 392, column: 3, scope: !2418)
!2469 = !DILocation(line: 393, column: 2, scope: !2407)
!2470 = !DILocation(line: 395, column: 16, scope: !2395)
!2471 = !DILocation(line: 395, column: 9, scope: !2395)
!2472 = !DILocation(line: 395, column: 2, scope: !2395)
!2473 = !DILocation(line: 396, column: 1, scope: !2395)
!2474 = distinct !DISubprogram(name: "release_allocation_quota", scope: !286, file: !286, line: 692, type: !2079, scopeLine: 693, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2475 = !DILocalVariable(name: "user", arg: 1, scope: !2474, file: !286, line: 692, type: !164)
!2476 = !DILocation(line: 692, column: 40, scope: !2474)
!2477 = !DILocalVariable(name: "oauth", arg: 2, scope: !2474, file: !286, line: 692, type: !7)
!2478 = !DILocation(line: 692, column: 50, scope: !2474)
!2479 = !DILocalVariable(name: "realm", arg: 3, scope: !2474, file: !286, line: 692, type: !164)
!2480 = !DILocation(line: 692, column: 66, scope: !2474)
!2481 = !DILocation(line: 694, column: 6, scope: !2482)
!2482 = distinct !DILexicalBlock(scope: !2474, file: !286, line: 694, column: 6)
!2483 = !DILocation(line: 694, column: 6, scope: !2474)
!2484 = !DILocalVariable(name: "username", scope: !2485, file: !286, line: 695, type: !164)
!2485 = distinct !DILexicalBlock(scope: !2482, file: !286, line: 694, column: 12)
!2486 = !DILocation(line: 695, column: 12, scope: !2485)
!2487 = !DILocation(line: 695, column: 23, scope: !2485)
!2488 = !DILocation(line: 695, column: 41, scope: !2485)
!2489 = !DILocation(line: 695, column: 89, scope: !2485)
!2490 = !DILocation(line: 695, column: 64, scope: !2485)
!2491 = !DILocalVariable(name: "rp", scope: !2485, file: !286, line: 696, type: !113)
!2492 = !DILocation(line: 696, column: 19, scope: !2485)
!2493 = !DILocation(line: 696, column: 41, scope: !2485)
!2494 = !DILocation(line: 696, column: 24, scope: !2485)
!2495 = !DILocation(line: 697, column: 22, scope: !2485)
!2496 = !DILocation(line: 697, column: 26, scope: !2485)
!2497 = !DILocation(line: 697, column: 33, scope: !2485)
!2498 = !DILocation(line: 697, column: 3, scope: !2485)
!2499 = !DILocation(line: 698, column: 6, scope: !2500)
!2500 = distinct !DILexicalBlock(scope: !2485, file: !286, line: 698, column: 6)
!2501 = !DILocation(line: 698, column: 6, scope: !2485)
!2502 = !DILocalVariable(name: "value", scope: !2503, file: !286, line: 699, type: !105)
!2503 = distinct !DILexicalBlock(scope: !2500, file: !286, line: 698, column: 19)
!2504 = !DILocation(line: 699, column: 29, scope: !2503)
!2505 = !DILocation(line: 700, column: 22, scope: !2503)
!2506 = !DILocation(line: 700, column: 26, scope: !2503)
!2507 = !DILocation(line: 700, column: 33, scope: !2503)
!2508 = !DILocation(line: 700, column: 74, scope: !2503)
!2509 = !DILocation(line: 700, column: 4, scope: !2503)
!2510 = !DILocation(line: 701, column: 8, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2503, file: !286, line: 701, column: 8)
!2512 = !DILocation(line: 701, column: 8, scope: !2503)
!2513 = !DILocation(line: 702, column: 49, scope: !2514)
!2514 = distinct !DILexicalBlock(scope: !2511, file: !286, line: 701, column: 15)
!2515 = !DILocation(line: 702, column: 41, scope: !2514)
!2516 = !DILocation(line: 702, column: 56, scope: !2514)
!2517 = !DILocation(line: 702, column: 13, scope: !2514)
!2518 = !DILocation(line: 702, column: 11, scope: !2514)
!2519 = !DILocation(line: 703, column: 23, scope: !2514)
!2520 = !DILocation(line: 703, column: 27, scope: !2514)
!2521 = !DILocation(line: 703, column: 34, scope: !2514)
!2522 = !DILocation(line: 703, column: 75, scope: !2514)
!2523 = !DILocation(line: 703, column: 85, scope: !2514)
!2524 = !DILocation(line: 703, column: 5, scope: !2514)
!2525 = !DILocation(line: 704, column: 4, scope: !2514)
!2526 = !DILocation(line: 705, column: 3, scope: !2503)
!2527 = !DILocation(line: 706, column: 7, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2485, file: !286, line: 706, column: 7)
!2529 = !DILocation(line: 706, column: 11, scope: !2528)
!2530 = !DILocation(line: 706, column: 18, scope: !2528)
!2531 = !DILocation(line: 706, column: 7, scope: !2485)
!2532 = !DILocation(line: 707, column: 7, scope: !2528)
!2533 = !DILocation(line: 707, column: 11, scope: !2528)
!2534 = !DILocation(line: 707, column: 18, scope: !2528)
!2535 = !DILocation(line: 707, column: 4, scope: !2528)
!2536 = !DILocation(line: 708, column: 24, scope: !2485)
!2537 = !DILocation(line: 708, column: 28, scope: !2485)
!2538 = !DILocation(line: 708, column: 35, scope: !2485)
!2539 = !DILocation(line: 708, column: 3, scope: !2485)
!2540 = !DILocation(line: 709, column: 8, scope: !2485)
!2541 = !DILocation(line: 709, column: 3, scope: !2485)
!2542 = !DILocation(line: 710, column: 2, scope: !2485)
!2543 = !DILocation(line: 711, column: 1, scope: !2474)
!2544 = distinct !DISubprogram(name: "add_static_user_account", scope: !286, file: !286, line: 715, type: !2545, scopeLine: 716, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!7, !111}
!2547 = !DILocalVariable(name: "user", arg: 1, scope: !2544, file: !286, line: 715, type: !111)
!2548 = !DILocation(line: 715, column: 35, scope: !2544)
!2549 = !DILocation(line: 718, column: 5, scope: !2550)
!2550 = distinct !DILexicalBlock(scope: !2544, file: !286, line: 718, column: 5)
!2551 = !DILocation(line: 718, column: 10, scope: !2550)
!2552 = !DILocation(line: 718, column: 26, scope: !2550)
!2553 = !DILocation(line: 718, column: 14, scope: !2550)
!2554 = !DILocation(line: 718, column: 5, scope: !2544)
!2555 = !DILocalVariable(name: "s", scope: !2556, file: !286, line: 719, type: !111)
!2556 = distinct !DILexicalBlock(scope: !2550, file: !286, line: 718, column: 58)
!2557 = !DILocation(line: 719, column: 9, scope: !2556)
!2558 = !DILocation(line: 719, column: 20, scope: !2556)
!2559 = !DILocation(line: 719, column: 13, scope: !2556)
!2560 = !DILocation(line: 720, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2556, file: !286, line: 720, column: 6)
!2562 = !DILocation(line: 720, column: 9, scope: !2561)
!2563 = !DILocation(line: 720, column: 13, scope: !2561)
!2564 = !DILocation(line: 720, column: 16, scope: !2561)
!2565 = !DILocation(line: 720, column: 14, scope: !2561)
!2566 = !DILocation(line: 720, column: 22, scope: !2561)
!2567 = !DILocation(line: 720, column: 33, scope: !2561)
!2568 = !DILocation(line: 720, column: 26, scope: !2561)
!2569 = !DILocation(line: 720, column: 35, scope: !2561)
!2570 = !DILocation(line: 720, column: 6, scope: !2556)
!2571 = !DILocation(line: 721, column: 67, scope: !2572)
!2572 = distinct !DILexicalBlock(scope: !2561, file: !286, line: 720, column: 40)
!2573 = !DILocation(line: 721, column: 4, scope: !2572)
!2574 = !DILocation(line: 722, column: 3, scope: !2572)
!2575 = !DILocalVariable(name: "ulen", scope: !2576, file: !286, line: 723, type: !157)
!2576 = distinct !DILexicalBlock(scope: !2561, file: !286, line: 722, column: 10)
!2577 = !DILocation(line: 723, column: 11, scope: !2576)
!2578 = !DILocation(line: 723, column: 18, scope: !2576)
!2579 = !DILocation(line: 723, column: 20, scope: !2576)
!2580 = !DILocation(line: 723, column: 19, scope: !2576)
!2581 = !DILocalVariable(name: "usname", scope: !2576, file: !286, line: 724, type: !111)
!2582 = !DILocation(line: 724, column: 10, scope: !2576)
!2583 = !DILocation(line: 724, column: 47, scope: !2576)
!2584 = !DILocation(line: 724, column: 51, scope: !2576)
!2585 = !DILocation(line: 724, column: 45, scope: !2576)
!2586 = !DILocation(line: 724, column: 26, scope: !2576)
!2587 = !DILocation(line: 725, column: 12, scope: !2576)
!2588 = !DILocation(line: 725, column: 19, scope: !2576)
!2589 = !DILocation(line: 725, column: 24, scope: !2576)
!2590 = !DILocation(line: 725, column: 4, scope: !2576)
!2591 = !DILocation(line: 726, column: 4, scope: !2576)
!2592 = !DILocation(line: 726, column: 11, scope: !2576)
!2593 = !DILocation(line: 726, column: 16, scope: !2576)
!2594 = !DILocation(line: 727, column: 26, scope: !2595)
!2595 = distinct !DILexicalBlock(scope: !2576, file: !286, line: 727, column: 7)
!2596 = !DILocation(line: 727, column: 7, scope: !2595)
!2597 = !DILocation(line: 727, column: 33, scope: !2595)
!2598 = !DILocation(line: 727, column: 7, scope: !2576)
!2599 = !DILocation(line: 728, column: 65, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2595, file: !286, line: 727, column: 37)
!2601 = !DILocation(line: 728, column: 5, scope: !2600)
!2602 = !DILocation(line: 729, column: 10, scope: !2600)
!2603 = !DILocation(line: 729, column: 5, scope: !2600)
!2604 = !DILocation(line: 730, column: 5, scope: !2600)
!2605 = !DILocation(line: 732, column: 20, scope: !2576)
!2606 = !DILocation(line: 732, column: 21, scope: !2576)
!2607 = !DILocation(line: 732, column: 8, scope: !2576)
!2608 = !DILocation(line: 732, column: 6, scope: !2576)
!2609 = !DILocalVariable(name: "key", scope: !2576, file: !286, line: 733, type: !165)
!2610 = !DILocation(line: 733, column: 15, scope: !2576)
!2611 = !DILocation(line: 733, column: 33, scope: !2576)
!2612 = !DILocation(line: 734, column: 14, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2576, file: !286, line: 734, column: 7)
!2614 = !DILocation(line: 734, column: 7, scope: !2613)
!2615 = !DILocation(line: 734, column: 23, scope: !2613)
!2616 = !DILocation(line: 734, column: 21, scope: !2613)
!2617 = !DILocation(line: 734, column: 7, scope: !2576)
!2618 = !DILocalVariable(name: "keysource", scope: !2619, file: !286, line: 735, type: !111)
!2619 = distinct !DILexicalBlock(scope: !2613, file: !286, line: 734, column: 26)
!2620 = !DILocation(line: 735, column: 11, scope: !2619)
!2621 = !DILocation(line: 735, column: 23, scope: !2619)
!2622 = !DILocation(line: 735, column: 25, scope: !2619)
!2623 = !DILocalVariable(name: "sz", scope: !2619, file: !286, line: 736, type: !157)
!2624 = !DILocation(line: 736, column: 12, scope: !2619)
!2625 = !DILocation(line: 736, column: 17, scope: !2619)
!2626 = !DILocation(line: 737, column: 15, scope: !2627)
!2627 = distinct !DILexicalBlock(scope: !2619, file: !286, line: 737, column: 8)
!2628 = !DILocation(line: 737, column: 8, scope: !2627)
!2629 = !DILocation(line: 737, column: 26, scope: !2627)
!2630 = !DILocation(line: 737, column: 28, scope: !2627)
!2631 = !DILocation(line: 737, column: 25, scope: !2627)
!2632 = !DILocation(line: 737, column: 8, scope: !2619)
!2633 = !DILocation(line: 738, column: 67, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2627, file: !286, line: 737, column: 32)
!2635 = !DILocation(line: 738, column: 6, scope: !2634)
!2636 = !DILocation(line: 739, column: 5, scope: !2634)
!2637 = !DILocation(line: 739, column: 39, scope: !2638)
!2638 = distinct !DILexicalBlock(scope: !2619, file: !286, line: 739, column: 10)
!2639 = !DILocation(line: 739, column: 51, scope: !2638)
!2640 = !DILocation(line: 739, column: 50, scope: !2638)
!2641 = !DILocation(line: 739, column: 56, scope: !2638)
!2642 = !DILocation(line: 739, column: 10, scope: !2638)
!2643 = !DILocation(line: 739, column: 59, scope: !2638)
!2644 = !DILocation(line: 739, column: 10, scope: !2619)
!2645 = !DILocation(line: 740, column: 60, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2638, file: !286, line: 739, column: 63)
!2647 = !DILocation(line: 740, column: 6, scope: !2646)
!2648 = !DILocation(line: 741, column: 11, scope: !2646)
!2649 = !DILocation(line: 741, column: 6, scope: !2646)
!2650 = !DILocation(line: 742, column: 11, scope: !2646)
!2651 = !DILocation(line: 742, column: 6, scope: !2646)
!2652 = !DILocation(line: 743, column: 6, scope: !2646)
!2653 = !DILocation(line: 745, column: 4, scope: !2619)
!2654 = !DILocation(line: 747, column: 46, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2613, file: !286, line: 745, column: 11)
!2656 = !DILocation(line: 747, column: 64, scope: !2655)
!2657 = !DILocation(line: 747, column: 81, scope: !2655)
!2658 = !DILocation(line: 747, column: 89, scope: !2655)
!2659 = !DILocation(line: 747, column: 105, scope: !2655)
!2660 = !DILocation(line: 747, column: 109, scope: !2655)
!2661 = !DILocation(line: 747, column: 108, scope: !2655)
!2662 = !DILocation(line: 747, column: 5, scope: !2655)
!2663 = !DILocation(line: 750, column: 60, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2576, file: !286, line: 749, column: 4)
!2665 = !DILocation(line: 750, column: 5, scope: !2664)
!2666 = !DILocation(line: 751, column: 59, scope: !2664)
!2667 = !DILocation(line: 751, column: 100, scope: !2664)
!2668 = !DILocation(line: 751, column: 135, scope: !2664)
!2669 = !DILocation(line: 751, column: 134, scope: !2664)
!2670 = !DILocation(line: 751, column: 5, scope: !2664)
!2671 = !DILocation(line: 752, column: 62, scope: !2664)
!2672 = !DILocation(line: 752, column: 5, scope: !2664)
!2673 = !DILocation(line: 754, column: 52, scope: !2576)
!2674 = !DILocation(line: 755, column: 9, scope: !2576)
!2675 = !DILocation(line: 755, column: 4, scope: !2576)
!2676 = !DILocation(line: 756, column: 4, scope: !2576)
!2677 = !DILocation(line: 758, column: 2, scope: !2556)
!2678 = !DILocation(line: 760, column: 2, scope: !2544)
!2679 = !DILocation(line: 761, column: 1, scope: !2544)
!2680 = distinct !DISubprogram(name: "adminuser", scope: !286, file: !286, line: 891, type: !2681, scopeLine: 892, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2681 = !DISubroutineType(types: !2682)
!2682 = !{!7, !164, !164, !164, !164, !164, !2683, !2684, !7}
!2683 = !DIDerivedType(tag: DW_TAG_typedef, name: "TURNADMIN_COMMAND_TYPE", file: !89, line: 135, baseType: !88)
!2684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!2685 = !DILocalVariable(name: "user", arg: 1, scope: !2680, file: !286, line: 891, type: !164)
!2686 = !DILocation(line: 891, column: 24, scope: !2680)
!2687 = !DILocalVariable(name: "realm", arg: 2, scope: !2680, file: !286, line: 891, type: !164)
!2688 = !DILocation(line: 891, column: 39, scope: !2680)
!2689 = !DILocalVariable(name: "pwd", arg: 3, scope: !2680, file: !286, line: 891, type: !164)
!2690 = !DILocation(line: 891, column: 55, scope: !2680)
!2691 = !DILocalVariable(name: "secret", arg: 4, scope: !2680, file: !286, line: 891, type: !164)
!2692 = !DILocation(line: 891, column: 69, scope: !2680)
!2693 = !DILocalVariable(name: "origin", arg: 5, scope: !2680, file: !286, line: 891, type: !164)
!2694 = !DILocation(line: 891, column: 86, scope: !2680)
!2695 = !DILocalVariable(name: "ct", arg: 6, scope: !2680, file: !286, line: 891, type: !2683)
!2696 = !DILocation(line: 891, column: 117, scope: !2680)
!2697 = !DILocalVariable(name: "po", arg: 7, scope: !2680, file: !286, line: 891, type: !2684)
!2698 = !DILocation(line: 891, column: 137, scope: !2680)
!2699 = !DILocalVariable(name: "is_admin", arg: 8, scope: !2680, file: !286, line: 891, type: !7)
!2700 = !DILocation(line: 891, column: 145, scope: !2680)
!2701 = !DILocalVariable(name: "key", scope: !2680, file: !286, line: 893, type: !166)
!2702 = !DILocation(line: 893, column: 12, scope: !2680)
!2703 = !DILocalVariable(name: "skey", scope: !2680, file: !286, line: 894, type: !981)
!2704 = !DILocation(line: 894, column: 7, scope: !2680)
!2705 = !DILocation(line: 896, column: 6, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 896, column: 6)
!2707 = !DILocation(line: 896, column: 9, scope: !2706)
!2708 = !DILocation(line: 896, column: 6, scope: !2680)
!2709 = !DILocation(line: 897, column: 21, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2706, file: !286, line: 896, column: 27)
!2711 = !DILocation(line: 897, column: 28, scope: !2710)
!2712 = !DILocation(line: 897, column: 10, scope: !2710)
!2713 = !DILocation(line: 897, column: 3, scope: !2710)
!2714 = !DILocation(line: 900, column: 6, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 900, column: 6)
!2716 = !DILocation(line: 900, column: 9, scope: !2715)
!2717 = !DILocation(line: 900, column: 6, scope: !2680)
!2718 = !DILocation(line: 901, column: 23, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2715, file: !286, line: 900, column: 29)
!2720 = !DILocation(line: 901, column: 10, scope: !2719)
!2721 = !DILocation(line: 901, column: 3, scope: !2719)
!2722 = !DILocation(line: 904, column: 6, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 904, column: 6)
!2724 = !DILocation(line: 904, column: 9, scope: !2723)
!2725 = !DILocation(line: 904, column: 6, scope: !2680)
!2726 = !DILocation(line: 905, column: 22, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2723, file: !286, line: 904, column: 28)
!2728 = !DILocation(line: 905, column: 10, scope: !2727)
!2729 = !DILocation(line: 905, column: 3, scope: !2727)
!2730 = !DILocation(line: 908, column: 6, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 908, column: 6)
!2732 = !DILocation(line: 908, column: 9, scope: !2731)
!2733 = !DILocation(line: 908, column: 6, scope: !2680)
!2734 = !DILocation(line: 909, column: 21, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2731, file: !286, line: 908, column: 27)
!2736 = !DILocation(line: 909, column: 29, scope: !2735)
!2737 = !DILocation(line: 909, column: 10, scope: !2735)
!2738 = !DILocation(line: 909, column: 3, scope: !2735)
!2739 = !DILocation(line: 912, column: 6, scope: !2740)
!2740 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 912, column: 6)
!2741 = !DILocation(line: 912, column: 9, scope: !2740)
!2742 = !DILocation(line: 912, column: 6, scope: !2680)
!2743 = !DILocation(line: 913, column: 21, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2740, file: !286, line: 912, column: 27)
!2745 = !DILocation(line: 913, column: 29, scope: !2744)
!2746 = !DILocation(line: 913, column: 10, scope: !2744)
!2747 = !DILocation(line: 913, column: 3, scope: !2744)
!2748 = !DILocation(line: 916, column: 6, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 916, column: 6)
!2750 = !DILocation(line: 916, column: 9, scope: !2749)
!2751 = !DILocation(line: 916, column: 6, scope: !2680)
!2752 = !DILocation(line: 917, column: 25, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2749, file: !286, line: 916, column: 27)
!2754 = !DILocation(line: 917, column: 3, scope: !2753)
!2755 = !DILocation(line: 918, column: 24, scope: !2753)
!2756 = !DILocation(line: 918, column: 3, scope: !2753)
!2757 = !DILocation(line: 919, column: 21, scope: !2753)
!2758 = !DILocation(line: 919, column: 29, scope: !2753)
!2759 = !DILocation(line: 919, column: 10, scope: !2753)
!2760 = !DILocation(line: 919, column: 3, scope: !2753)
!2761 = !DILocation(line: 922, column: 6, scope: !2762)
!2762 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 922, column: 6)
!2763 = !DILocation(line: 922, column: 9, scope: !2762)
!2764 = !DILocation(line: 922, column: 6, scope: !2680)
!2765 = !DILocation(line: 923, column: 25, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2762, file: !286, line: 922, column: 27)
!2767 = !DILocation(line: 923, column: 3, scope: !2766)
!2768 = !DILocation(line: 924, column: 21, scope: !2766)
!2769 = !DILocation(line: 924, column: 10, scope: !2766)
!2770 = !DILocation(line: 924, column: 3, scope: !2766)
!2771 = !DILocation(line: 927, column: 6, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 927, column: 6)
!2773 = !DILocation(line: 927, column: 9, scope: !2772)
!2774 = !DILocation(line: 927, column: 6, scope: !2680)
!2775 = !DILocation(line: 928, column: 24, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2772, file: !286, line: 927, column: 33)
!2777 = !DILocation(line: 928, column: 3, scope: !2776)
!2778 = !DILocation(line: 929, column: 9, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2776, file: !286, line: 929, column: 7)
!2780 = !DILocation(line: 929, column: 12, scope: !2779)
!2781 = !DILocation(line: 929, column: 16, scope: !2779)
!2782 = !DILocation(line: 929, column: 20, scope: !2779)
!2783 = !DILocation(line: 929, column: 28, scope: !2779)
!2784 = !DILocation(line: 929, column: 51, scope: !2779)
!2785 = !DILocation(line: 929, column: 54, scope: !2779)
!2786 = !DILocation(line: 929, column: 58, scope: !2779)
!2787 = !DILocation(line: 929, column: 70, scope: !2779)
!2788 = !DILocation(line: 929, column: 75, scope: !2779)
!2789 = !DILocation(line: 929, column: 78, scope: !2779)
!2790 = !DILocation(line: 929, column: 82, scope: !2779)
!2791 = !DILocation(line: 929, column: 93, scope: !2779)
!2792 = !DILocation(line: 929, column: 7, scope: !2776)
!2793 = !DILocation(line: 930, column: 12, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2779, file: !286, line: 929, column: 101)
!2795 = !DILocation(line: 930, column: 4, scope: !2794)
!2796 = !DILocation(line: 931, column: 4, scope: !2794)
!2797 = !DILocation(line: 933, column: 27, scope: !2776)
!2798 = !DILocation(line: 933, column: 34, scope: !2776)
!2799 = !DILocation(line: 933, column: 10, scope: !2776)
!2800 = !DILocation(line: 933, column: 3, scope: !2776)
!2801 = !DILocation(line: 936, column: 6, scope: !2802)
!2802 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 936, column: 6)
!2803 = !DILocation(line: 936, column: 9, scope: !2802)
!2804 = !DILocation(line: 936, column: 6, scope: !2680)
!2805 = !DILocation(line: 937, column: 29, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2802, file: !286, line: 936, column: 35)
!2807 = !DILocation(line: 937, column: 10, scope: !2806)
!2808 = !DILocation(line: 937, column: 3, scope: !2806)
!2809 = !DILocation(line: 940, column: 22, scope: !2680)
!2810 = !DILocation(line: 940, column: 2, scope: !2680)
!2811 = !DILocation(line: 942, column: 6, scope: !2812)
!2812 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 942, column: 6)
!2813 = !DILocation(line: 942, column: 9, scope: !2812)
!2814 = !DILocation(line: 942, column: 27, scope: !2812)
!2815 = !DILocation(line: 942, column: 31, scope: !2812)
!2816 = !DILocation(line: 942, column: 6, scope: !2680)
!2817 = !DILocation(line: 944, column: 22, scope: !2818)
!2818 = distinct !DILexicalBlock(scope: !2812, file: !286, line: 942, column: 41)
!2819 = !DILocation(line: 944, column: 3, scope: !2818)
!2820 = !DILocation(line: 947, column: 35, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2818, file: !286, line: 946, column: 3)
!2822 = !DILocation(line: 947, column: 41, scope: !2821)
!2823 = !DILocation(line: 947, column: 48, scope: !2821)
!2824 = !DILocation(line: 947, column: 53, scope: !2821)
!2825 = !DILocation(line: 947, column: 4, scope: !2821)
!2826 = !DILocalVariable(name: "i", scope: !2821, file: !286, line: 948, type: !157)
!2827 = !DILocation(line: 948, column: 11, scope: !2821)
!2828 = !DILocalVariable(name: "sz", scope: !2821, file: !286, line: 949, type: !157)
!2829 = !DILocation(line: 949, column: 11, scope: !2821)
!2830 = !DILocation(line: 949, column: 16, scope: !2821)
!2831 = !DILocalVariable(name: "maxsz", scope: !2821, file: !286, line: 950, type: !7)
!2832 = !DILocation(line: 950, column: 8, scope: !2821)
!2833 = !DILocation(line: 950, column: 23, scope: !2821)
!2834 = !DILocation(line: 950, column: 26, scope: !2821)
!2835 = !DILocation(line: 950, column: 16, scope: !2821)
!2836 = !DILocation(line: 950, column: 31, scope: !2821)
!2837 = !DILocalVariable(name: "s", scope: !2821, file: !286, line: 951, type: !111)
!2838 = !DILocation(line: 951, column: 10, scope: !2821)
!2839 = !DILocation(line: 951, column: 14, scope: !2821)
!2840 = !DILocation(line: 952, column: 11, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2821, file: !286, line: 952, column: 4)
!2842 = !DILocation(line: 952, column: 9, scope: !2841)
!2843 = !DILocation(line: 952, column: 17, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !286, line: 952, column: 4)
!2845 = !DILocation(line: 952, column: 21, scope: !2844)
!2846 = !DILocation(line: 952, column: 19, scope: !2844)
!2847 = !DILocation(line: 952, column: 25, scope: !2844)
!2848 = !DILocation(line: 952, column: 29, scope: !2844)
!2849 = !DILocation(line: 952, column: 35, scope: !2844)
!2850 = !DILocation(line: 0, scope: !2844)
!2851 = !DILocation(line: 952, column: 4, scope: !2841)
!2852 = !DILocation(line: 953, column: 14, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2844, file: !286, line: 952, column: 46)
!2854 = !DILocation(line: 953, column: 27, scope: !2853)
!2855 = !DILocation(line: 953, column: 30, scope: !2853)
!2856 = !DILocation(line: 953, column: 63, scope: !2853)
!2857 = !DILocation(line: 953, column: 59, scope: !2853)
!2858 = !DILocation(line: 953, column: 44, scope: !2853)
!2859 = !DILocation(line: 953, column: 5, scope: !2853)
!2860 = !DILocation(line: 954, column: 11, scope: !2853)
!2861 = !DILocation(line: 955, column: 7, scope: !2853)
!2862 = !DILocation(line: 956, column: 4, scope: !2853)
!2863 = !DILocation(line: 952, column: 42, scope: !2844)
!2864 = !DILocation(line: 952, column: 4, scope: !2844)
!2865 = distinct !{!2865, !2851, !2866, !798}
!2866 = !DILocation(line: 956, column: 4, scope: !2841)
!2867 = !DILocation(line: 957, column: 9, scope: !2821)
!2868 = !DILocation(line: 957, column: 12, scope: !2821)
!2869 = !DILocation(line: 957, column: 4, scope: !2821)
!2870 = !DILocation(line: 957, column: 17, scope: !2821)
!2871 = !DILocation(line: 959, column: 2, scope: !2818)
!2872 = !DILocalVariable(name: "dbd", scope: !2680, file: !286, line: 961, type: !917)
!2873 = !DILocation(line: 961, column: 26, scope: !2680)
!2874 = !DILocation(line: 961, column: 32, scope: !2680)
!2875 = !DILocation(line: 963, column: 6, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2680, file: !286, line: 963, column: 6)
!2877 = !DILocation(line: 963, column: 9, scope: !2876)
!2878 = !DILocation(line: 963, column: 6, scope: !2680)
!2879 = !DILocation(line: 965, column: 20, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !286, line: 963, column: 26)
!2881 = !DILocation(line: 965, column: 3, scope: !2880)
!2882 = !DILocation(line: 967, column: 2, scope: !2880)
!2883 = !DILocation(line: 967, column: 13, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2876, file: !286, line: 967, column: 13)
!2885 = !DILocation(line: 967, column: 13, scope: !2876)
!2886 = !DILocation(line: 969, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2888, file: !286, line: 969, column: 6)
!2888 = distinct !DILexicalBlock(scope: !2884, file: !286, line: 967, column: 18)
!2889 = !DILocation(line: 969, column: 6, scope: !2888)
!2890 = !DILocation(line: 970, column: 25, scope: !2887)
!2891 = !DILocation(line: 970, column: 4, scope: !2887)
!2892 = !DILocation(line: 972, column: 7, scope: !2893)
!2893 = distinct !DILexicalBlock(scope: !2888, file: !286, line: 972, column: 7)
!2894 = !DILocation(line: 972, column: 10, scope: !2893)
!2895 = !DILocation(line: 972, column: 7, scope: !2888)
!2896 = !DILocation(line: 973, column: 7, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2898, file: !286, line: 973, column: 7)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !286, line: 972, column: 29)
!2899 = !DILocation(line: 973, column: 7, scope: !2898)
!2900 = !DILocation(line: 974, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2902, file: !286, line: 974, column: 9)
!2902 = distinct !DILexicalBlock(scope: !2897, file: !286, line: 973, column: 17)
!2903 = !DILocation(line: 974, column: 14, scope: !2901)
!2904 = !DILocation(line: 974, column: 9, scope: !2902)
!2905 = !DILocation(line: 975, column: 8, scope: !2901)
!2906 = !DILocation(line: 975, column: 13, scope: !2901)
!2907 = !DILocation(line: 975, column: 29, scope: !2901)
!2908 = !DILocation(line: 975, column: 6, scope: !2901)
!2909 = !DILocation(line: 976, column: 4, scope: !2902)
!2910 = !DILocation(line: 977, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2912, file: !286, line: 977, column: 9)
!2912 = distinct !DILexicalBlock(scope: !2897, file: !286, line: 976, column: 11)
!2913 = !DILocation(line: 977, column: 14, scope: !2911)
!2914 = !DILocation(line: 977, column: 9, scope: !2912)
!2915 = !DILocation(line: 978, column: 8, scope: !2911)
!2916 = !DILocation(line: 978, column: 13, scope: !2911)
!2917 = !DILocation(line: 978, column: 23, scope: !2911)
!2918 = !DILocation(line: 978, column: 29, scope: !2911)
!2919 = !DILocation(line: 978, column: 6, scope: !2911)
!2920 = !DILocation(line: 980, column: 3, scope: !2898)
!2921 = !DILocation(line: 980, column: 14, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2893, file: !286, line: 980, column: 14)
!2923 = !DILocation(line: 980, column: 17, scope: !2922)
!2924 = !DILocation(line: 980, column: 14, scope: !2893)
!2925 = !DILocation(line: 981, column: 7, scope: !2926)
!2926 = distinct !DILexicalBlock(scope: !2927, file: !286, line: 981, column: 7)
!2927 = distinct !DILexicalBlock(scope: !2922, file: !286, line: 980, column: 36)
!2928 = !DILocation(line: 981, column: 7, scope: !2927)
!2929 = !DILocation(line: 982, column: 24, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2926, file: !286, line: 981, column: 17)
!2931 = !DILocation(line: 982, column: 5, scope: !2930)
!2932 = !DILocation(line: 983, column: 9, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2930, file: !286, line: 983, column: 9)
!2934 = !DILocation(line: 983, column: 14, scope: !2933)
!2935 = !DILocation(line: 983, column: 9, scope: !2930)
!2936 = !DILocalVariable(name: "password", scope: !2937, file: !286, line: 984, type: !1199)
!2937 = distinct !DILexicalBlock(scope: !2933, file: !286, line: 983, column: 30)
!2938 = !DILocation(line: 984, column: 17, scope: !2937)
!2939 = !DILocation(line: 985, column: 39, scope: !2937)
!2940 = !DILocation(line: 985, column: 50, scope: !2937)
!2941 = !DILocation(line: 985, column: 6, scope: !2937)
!2942 = !DILocation(line: 986, column: 8, scope: !2937)
!2943 = !DILocation(line: 986, column: 13, scope: !2937)
!2944 = !DILocation(line: 986, column: 29, scope: !2937)
!2945 = !DILocation(line: 986, column: 35, scope: !2937)
!2946 = !DILocation(line: 986, column: 42, scope: !2937)
!2947 = !DILocation(line: 986, column: 6, scope: !2937)
!2948 = !DILocation(line: 987, column: 5, scope: !2937)
!2949 = !DILocation(line: 988, column: 4, scope: !2930)
!2950 = !DILocation(line: 989, column: 9, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2952, file: !286, line: 989, column: 9)
!2952 = distinct !DILexicalBlock(scope: !2926, file: !286, line: 988, column: 11)
!2953 = !DILocation(line: 989, column: 14, scope: !2951)
!2954 = !DILocation(line: 989, column: 9, scope: !2952)
!2955 = !DILocation(line: 990, column: 8, scope: !2951)
!2956 = !DILocation(line: 990, column: 13, scope: !2951)
!2957 = !DILocation(line: 990, column: 27, scope: !2951)
!2958 = !DILocation(line: 990, column: 33, scope: !2951)
!2959 = !DILocation(line: 990, column: 40, scope: !2951)
!2960 = !DILocation(line: 990, column: 6, scope: !2951)
!2961 = !DILocation(line: 992, column: 3, scope: !2927)
!2962 = !DILocation(line: 994, column: 2, scope: !2888)
!2963 = !DILocation(line: 996, column: 2, scope: !2680)
!2964 = !DILocation(line: 997, column: 1, scope: !2680)
!2965 = distinct !DISubprogram(name: "list_users", scope: !286, file: !286, line: 765, type: !2966, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!7, !164, !7}
!2968 = !DILocalVariable(name: "realm", arg: 1, scope: !2965, file: !286, line: 765, type: !164)
!2969 = !DILocation(line: 765, column: 32, scope: !2965)
!2970 = !DILocalVariable(name: "is_admin", arg: 2, scope: !2965, file: !286, line: 765, type: !7)
!2971 = !DILocation(line: 765, column: 43, scope: !2965)
!2972 = !DILocalVariable(name: "dbd", scope: !2965, file: !286, line: 767, type: !917)
!2973 = !DILocation(line: 767, column: 27, scope: !2965)
!2974 = !DILocation(line: 767, column: 33, scope: !2965)
!2975 = !DILocation(line: 768, column: 7, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2965, file: !286, line: 768, column: 7)
!2977 = !DILocation(line: 768, column: 7, scope: !2965)
!2978 = !DILocation(line: 769, column: 7, scope: !2979)
!2979 = distinct !DILexicalBlock(scope: !2980, file: !286, line: 769, column: 7)
!2980 = distinct !DILexicalBlock(scope: !2976, file: !286, line: 768, column: 12)
!2981 = !DILocation(line: 769, column: 7, scope: !2980)
!2982 = !DILocation(line: 770, column: 8, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2984, file: !286, line: 770, column: 8)
!2984 = distinct !DILexicalBlock(scope: !2979, file: !286, line: 769, column: 17)
!2985 = !DILocation(line: 770, column: 13, scope: !2983)
!2986 = !DILocation(line: 770, column: 8, scope: !2984)
!2987 = !DILocation(line: 771, column: 8, scope: !2988)
!2988 = distinct !DILexicalBlock(scope: !2983, file: !286, line: 770, column: 31)
!2989 = !DILocation(line: 771, column: 13, scope: !2988)
!2990 = !DILocation(line: 771, column: 6, scope: !2988)
!2991 = !DILocation(line: 772, column: 5, scope: !2988)
!2992 = !DILocation(line: 773, column: 4, scope: !2984)
!2993 = !DILocation(line: 774, column: 8, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2995, file: !286, line: 774, column: 8)
!2995 = distinct !DILexicalBlock(scope: !2979, file: !286, line: 773, column: 11)
!2996 = !DILocation(line: 774, column: 13, scope: !2994)
!2997 = !DILocation(line: 774, column: 8, scope: !2995)
!2998 = !DILocation(line: 775, column: 8, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2994, file: !286, line: 774, column: 25)
!3000 = !DILocation(line: 775, column: 13, scope: !2999)
!3001 = !DILocation(line: 775, column: 25, scope: !2999)
!3002 = !DILocation(line: 775, column: 6, scope: !2999)
!3003 = !DILocation(line: 776, column: 5, scope: !2999)
!3004 = !DILocation(line: 778, column: 3, scope: !2980)
!3005 = !DILocation(line: 780, column: 3, scope: !2965)
!3006 = distinct !DISubprogram(name: "list_origins", scope: !286, file: !286, line: 850, type: !949, scopeLine: 851, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3007 = !DILocalVariable(name: "realm", arg: 1, scope: !3006, file: !286, line: 850, type: !164)
!3008 = !DILocation(line: 850, column: 34, scope: !3006)
!3009 = !DILocalVariable(name: "dbd", scope: !3006, file: !286, line: 852, type: !917)
!3010 = !DILocation(line: 852, column: 27, scope: !3006)
!3011 = !DILocation(line: 852, column: 33, scope: !3006)
!3012 = !DILocation(line: 853, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3006, file: !286, line: 853, column: 7)
!3014 = !DILocation(line: 853, column: 11, scope: !3013)
!3015 = !DILocation(line: 853, column: 14, scope: !3013)
!3016 = !DILocation(line: 853, column: 19, scope: !3013)
!3017 = !DILocation(line: 853, column: 7, scope: !3006)
!3018 = !DILocation(line: 854, column: 7, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3013, file: !286, line: 853, column: 33)
!3020 = !DILocation(line: 854, column: 12, scope: !3019)
!3021 = !DILocation(line: 854, column: 26, scope: !3019)
!3022 = !DILocation(line: 854, column: 5, scope: !3019)
!3023 = !DILocation(line: 855, column: 3, scope: !3019)
!3024 = !DILocation(line: 857, column: 3, scope: !3006)
!3025 = distinct !DISubprogram(name: "show_secret", scope: !286, file: !286, line: 783, type: !949, scopeLine: 784, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3026 = !DILocalVariable(name: "realm", arg: 1, scope: !3025, file: !286, line: 783, type: !164)
!3027 = !DILocation(line: 783, column: 33, scope: !3025)
!3028 = !DILocalVariable(name: "dbd", scope: !3025, file: !286, line: 785, type: !917)
!3029 = !DILocation(line: 785, column: 27, scope: !3025)
!3030 = !DILocation(line: 785, column: 33, scope: !3025)
!3031 = !DILocation(line: 786, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3025, file: !286, line: 786, column: 7)
!3033 = !DILocation(line: 786, column: 11, scope: !3032)
!3034 = !DILocation(line: 786, column: 14, scope: !3032)
!3035 = !DILocation(line: 786, column: 19, scope: !3032)
!3036 = !DILocation(line: 786, column: 7, scope: !3025)
!3037 = !DILocation(line: 787, column: 7, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3032, file: !286, line: 786, column: 33)
!3039 = !DILocation(line: 787, column: 12, scope: !3038)
!3040 = !DILocation(line: 787, column: 26, scope: !3038)
!3041 = !DILocation(line: 787, column: 5, scope: !3038)
!3042 = !DILocation(line: 788, column: 3, scope: !3038)
!3043 = !DILocation(line: 790, column: 3, scope: !3025)
!3044 = distinct !DISubprogram(name: "set_secret", scope: !286, file: !286, line: 805, type: !937, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3045 = !DILocalVariable(name: "secret", arg: 1, scope: !3044, file: !286, line: 805, type: !164)
!3046 = !DILocation(line: 805, column: 32, scope: !3044)
!3047 = !DILocalVariable(name: "realm", arg: 2, scope: !3044, file: !286, line: 805, type: !164)
!3048 = !DILocation(line: 805, column: 49, scope: !3044)
!3049 = !DILocation(line: 807, column: 6, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !286, line: 807, column: 5)
!3051 = !DILocation(line: 807, column: 13, scope: !3050)
!3052 = !DILocation(line: 807, column: 17, scope: !3050)
!3053 = !DILocation(line: 807, column: 26, scope: !3050)
!3054 = !DILocation(line: 807, column: 5, scope: !3044)
!3055 = !DILocation(line: 808, column: 3, scope: !3050)
!3056 = !DILocation(line: 810, column: 23, scope: !3044)
!3057 = !DILocation(line: 810, column: 2, scope: !3044)
!3058 = !DILocation(line: 812, column: 13, scope: !3044)
!3059 = !DILocation(line: 812, column: 21, scope: !3044)
!3060 = !DILocation(line: 812, column: 2, scope: !3044)
!3061 = !DILocalVariable(name: "dbd", scope: !3044, file: !286, line: 814, type: !917)
!3062 = !DILocation(line: 814, column: 26, scope: !3044)
!3063 = !DILocation(line: 814, column: 32, scope: !3044)
!3064 = !DILocation(line: 815, column: 6, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3044, file: !286, line: 815, column: 6)
!3066 = !DILocation(line: 815, column: 10, scope: !3065)
!3067 = !DILocation(line: 815, column: 13, scope: !3065)
!3068 = !DILocation(line: 815, column: 18, scope: !3065)
!3069 = !DILocation(line: 815, column: 6, scope: !3044)
!3070 = !DILocation(line: 816, column: 5, scope: !3071)
!3071 = distinct !DILexicalBlock(scope: !3065, file: !286, line: 815, column: 30)
!3072 = !DILocation(line: 816, column: 10, scope: !3071)
!3073 = !DILocation(line: 816, column: 22, scope: !3071)
!3074 = !DILocation(line: 816, column: 30, scope: !3071)
!3075 = !DILocation(line: 816, column: 3, scope: !3071)
!3076 = !DILocation(line: 817, column: 2, scope: !3071)
!3077 = !DILocation(line: 819, column: 2, scope: !3044)
!3078 = !DILocation(line: 820, column: 1, scope: !3044)
!3079 = distinct !DISubprogram(name: "del_secret", scope: !286, file: !286, line: 793, type: !937, scopeLine: 793, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3080 = !DILocalVariable(name: "secret", arg: 1, scope: !3079, file: !286, line: 793, type: !164)
!3081 = !DILocation(line: 793, column: 32, scope: !3079)
!3082 = !DILocalVariable(name: "realm", arg: 2, scope: !3079, file: !286, line: 793, type: !164)
!3083 = !DILocation(line: 793, column: 49, scope: !3079)
!3084 = !DILocation(line: 795, column: 23, scope: !3079)
!3085 = !DILocation(line: 795, column: 2, scope: !3079)
!3086 = !DILocalVariable(name: "dbd", scope: !3079, file: !286, line: 797, type: !917)
!3087 = !DILocation(line: 797, column: 26, scope: !3079)
!3088 = !DILocation(line: 797, column: 32, scope: !3079)
!3089 = !DILocation(line: 798, column: 6, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3079, file: !286, line: 798, column: 6)
!3091 = !DILocation(line: 798, column: 10, scope: !3090)
!3092 = !DILocation(line: 798, column: 13, scope: !3090)
!3093 = !DILocation(line: 798, column: 18, scope: !3090)
!3094 = !DILocation(line: 798, column: 6, scope: !3079)
!3095 = !DILocation(line: 799, column: 5, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3090, file: !286, line: 798, column: 30)
!3097 = !DILocation(line: 799, column: 10, scope: !3096)
!3098 = !DILocation(line: 799, column: 22, scope: !3096)
!3099 = !DILocation(line: 799, column: 30, scope: !3096)
!3100 = !DILocation(line: 799, column: 3, scope: !3096)
!3101 = !DILocation(line: 800, column: 2, scope: !3096)
!3102 = !DILocation(line: 802, column: 2, scope: !3079)
!3103 = distinct !DISubprogram(name: "must_set_admin_origin", scope: !286, file: !286, line: 240, type: !959, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3104 = !DILocalVariable(name: "origin0", arg: 1, scope: !3103, file: !286, line: 240, type: !107)
!3105 = !DILocation(line: 240, column: 41, scope: !3103)
!3106 = !DILocalVariable(name: "origin", scope: !3103, file: !286, line: 242, type: !111)
!3107 = !DILocation(line: 242, column: 8, scope: !3103)
!3108 = !DILocation(line: 242, column: 24, scope: !3103)
!3109 = !DILocation(line: 243, column: 6, scope: !3110)
!3110 = distinct !DILexicalBlock(scope: !3103, file: !286, line: 243, column: 5)
!3111 = !DILocation(line: 243, column: 13, scope: !3110)
!3112 = !DILocation(line: 243, column: 17, scope: !3110)
!3113 = !DILocation(line: 243, column: 5, scope: !3103)
!3114 = !DILocation(line: 244, column: 11, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3110, file: !286, line: 243, column: 28)
!3116 = !DILocation(line: 244, column: 3, scope: !3115)
!3117 = !DILocation(line: 245, column: 3, scope: !3115)
!3118 = !DILocation(line: 247, column: 1, scope: !3103)
!3119 = distinct !DISubprogram(name: "must_set_admin_realm", scope: !286, file: !286, line: 213, type: !959, scopeLine: 214, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3120 = !DILocalVariable(name: "realm0", arg: 1, scope: !3119, file: !286, line: 213, type: !107)
!3121 = !DILocation(line: 213, column: 40, scope: !3119)
!3122 = !DILocalVariable(name: "realm", scope: !3119, file: !286, line: 215, type: !111)
!3123 = !DILocation(line: 215, column: 8, scope: !3119)
!3124 = !DILocation(line: 215, column: 23, scope: !3119)
!3125 = !DILocation(line: 216, column: 6, scope: !3126)
!3126 = distinct !DILexicalBlock(scope: !3119, file: !286, line: 216, column: 5)
!3127 = !DILocation(line: 216, column: 12, scope: !3126)
!3128 = !DILocation(line: 216, column: 16, scope: !3126)
!3129 = !DILocation(line: 216, column: 5, scope: !3119)
!3130 = !DILocation(line: 217, column: 11, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3126, file: !286, line: 216, column: 26)
!3132 = !DILocation(line: 217, column: 3, scope: !3131)
!3133 = !DILocation(line: 218, column: 3, scope: !3131)
!3134 = !DILocation(line: 220, column: 1, scope: !3119)
!3135 = distinct !DISubprogram(name: "add_origin", scope: !286, file: !286, line: 822, type: !937, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3136 = !DILocalVariable(name: "origin0", arg: 1, scope: !3135, file: !286, line: 822, type: !164)
!3137 = !DILocation(line: 822, column: 32, scope: !3135)
!3138 = !DILocalVariable(name: "realm", arg: 2, scope: !3135, file: !286, line: 822, type: !164)
!3139 = !DILocation(line: 822, column: 50, scope: !3135)
!3140 = !DILocalVariable(name: "origin", scope: !3135, file: !286, line: 824, type: !1125)
!3141 = !DILocation(line: 824, column: 10, scope: !3135)
!3142 = !DILocation(line: 826, column: 35, scope: !3135)
!3143 = !DILocation(line: 826, column: 52, scope: !3135)
!3144 = !DILocation(line: 826, column: 2, scope: !3135)
!3145 = !DILocalVariable(name: "dbd", scope: !3135, file: !286, line: 828, type: !917)
!3146 = !DILocation(line: 828, column: 26, scope: !3135)
!3147 = !DILocation(line: 828, column: 32, scope: !3135)
!3148 = !DILocation(line: 829, column: 6, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3135, file: !286, line: 829, column: 6)
!3150 = !DILocation(line: 829, column: 10, scope: !3149)
!3151 = !DILocation(line: 829, column: 13, scope: !3149)
!3152 = !DILocation(line: 829, column: 18, scope: !3149)
!3153 = !DILocation(line: 829, column: 6, scope: !3135)
!3154 = !DILocation(line: 830, column: 5, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3149, file: !286, line: 829, column: 30)
!3156 = !DILocation(line: 830, column: 10, scope: !3155)
!3157 = !DILocation(line: 830, column: 22, scope: !3155)
!3158 = !DILocation(line: 830, column: 30, scope: !3155)
!3159 = !DILocation(line: 830, column: 3, scope: !3155)
!3160 = !DILocation(line: 831, column: 2, scope: !3155)
!3161 = !DILocation(line: 833, column: 2, scope: !3135)
!3162 = distinct !DISubprogram(name: "del_origin", scope: !286, file: !286, line: 836, type: !949, scopeLine: 837, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3163 = !DILocalVariable(name: "origin0", arg: 1, scope: !3162, file: !286, line: 836, type: !164)
!3164 = !DILocation(line: 836, column: 32, scope: !3162)
!3165 = !DILocalVariable(name: "origin", scope: !3162, file: !286, line: 838, type: !1125)
!3166 = !DILocation(line: 838, column: 10, scope: !3162)
!3167 = !DILocation(line: 840, column: 35, scope: !3162)
!3168 = !DILocation(line: 840, column: 52, scope: !3162)
!3169 = !DILocation(line: 840, column: 2, scope: !3162)
!3170 = !DILocalVariable(name: "dbd", scope: !3162, file: !286, line: 842, type: !917)
!3171 = !DILocation(line: 842, column: 26, scope: !3162)
!3172 = !DILocation(line: 842, column: 32, scope: !3162)
!3173 = !DILocation(line: 843, column: 6, scope: !3174)
!3174 = distinct !DILexicalBlock(scope: !3162, file: !286, line: 843, column: 6)
!3175 = !DILocation(line: 843, column: 10, scope: !3174)
!3176 = !DILocation(line: 843, column: 13, scope: !3174)
!3177 = !DILocation(line: 843, column: 18, scope: !3174)
!3178 = !DILocation(line: 843, column: 6, scope: !3162)
!3179 = !DILocation(line: 844, column: 5, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3174, file: !286, line: 843, column: 30)
!3181 = !DILocation(line: 844, column: 10, scope: !3180)
!3182 = !DILocation(line: 844, column: 22, scope: !3180)
!3183 = !DILocation(line: 844, column: 3, scope: !3180)
!3184 = !DILocation(line: 845, column: 2, scope: !3180)
!3185 = !DILocation(line: 847, column: 2, scope: !3162)
!3186 = distinct !DISubprogram(name: "set_realm_option", scope: !286, file: !286, line: 873, type: !3187, scopeLine: 874, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3187 = !DISubroutineType(types: !3188)
!3188 = !{!7, !164, !2684}
!3189 = !DILocalVariable(name: "realm", arg: 1, scope: !3186, file: !286, line: 873, type: !164)
!3190 = !DILocation(line: 873, column: 38, scope: !3186)
!3191 = !DILocalVariable(name: "po", arg: 2, scope: !3186, file: !286, line: 873, type: !2684)
!3192 = !DILocation(line: 873, column: 61, scope: !3186)
!3193 = !DILocation(line: 875, column: 23, scope: !3186)
!3194 = !DILocation(line: 875, column: 44, scope: !3186)
!3195 = !DILocation(line: 875, column: 48, scope: !3186)
!3196 = !DILocation(line: 875, column: 2, scope: !3186)
!3197 = !DILocation(line: 876, column: 23, scope: !3186)
!3198 = !DILocation(line: 876, column: 44, scope: !3186)
!3199 = !DILocation(line: 876, column: 48, scope: !3186)
!3200 = !DILocation(line: 876, column: 29, scope: !3186)
!3201 = !DILocation(line: 876, column: 2, scope: !3186)
!3202 = !DILocation(line: 877, column: 23, scope: !3186)
!3203 = !DILocation(line: 877, column: 44, scope: !3186)
!3204 = !DILocation(line: 877, column: 48, scope: !3186)
!3205 = !DILocation(line: 877, column: 29, scope: !3186)
!3206 = !DILocation(line: 877, column: 2, scope: !3186)
!3207 = !DILocation(line: 878, column: 2, scope: !3186)
!3208 = distinct !DISubprogram(name: "list_realm_options", scope: !286, file: !286, line: 881, type: !949, scopeLine: 882, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3209 = !DILocalVariable(name: "realm", arg: 1, scope: !3208, file: !286, line: 881, type: !164)
!3210 = !DILocation(line: 881, column: 40, scope: !3208)
!3211 = !DILocalVariable(name: "dbd", scope: !3208, file: !286, line: 883, type: !917)
!3212 = !DILocation(line: 883, column: 27, scope: !3208)
!3213 = !DILocation(line: 883, column: 33, scope: !3208)
!3214 = !DILocation(line: 884, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3208, file: !286, line: 884, column: 7)
!3216 = !DILocation(line: 884, column: 11, scope: !3215)
!3217 = !DILocation(line: 884, column: 14, scope: !3215)
!3218 = !DILocation(line: 884, column: 19, scope: !3215)
!3219 = !DILocation(line: 884, column: 7, scope: !3208)
!3220 = !DILocation(line: 885, column: 7, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3215, file: !286, line: 884, column: 39)
!3222 = !DILocation(line: 885, column: 12, scope: !3221)
!3223 = !DILocation(line: 885, column: 32, scope: !3221)
!3224 = !DILocation(line: 885, column: 5, scope: !3221)
!3225 = !DILocation(line: 886, column: 2, scope: !3221)
!3226 = !DILocation(line: 888, column: 2, scope: !3208)
!3227 = distinct !DISubprogram(name: "must_set_admin_user", scope: !286, file: !286, line: 222, type: !959, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3228 = !DILocalVariable(name: "user0", arg: 1, scope: !3227, file: !286, line: 222, type: !107)
!3229 = !DILocation(line: 222, column: 39, scope: !3227)
!3230 = !DILocalVariable(name: "user", scope: !3227, file: !286, line: 224, type: !111)
!3231 = !DILocation(line: 224, column: 8, scope: !3227)
!3232 = !DILocation(line: 224, column: 22, scope: !3227)
!3233 = !DILocation(line: 225, column: 6, scope: !3234)
!3234 = distinct !DILexicalBlock(scope: !3227, file: !286, line: 225, column: 5)
!3235 = !DILocation(line: 225, column: 11, scope: !3234)
!3236 = !DILocation(line: 225, column: 15, scope: !3234)
!3237 = !DILocation(line: 225, column: 5, scope: !3227)
!3238 = !DILocation(line: 226, column: 11, scope: !3239)
!3239 = distinct !DILexicalBlock(scope: !3234, file: !286, line: 225, column: 24)
!3240 = !DILocation(line: 226, column: 3, scope: !3239)
!3241 = !DILocation(line: 227, column: 3, scope: !3239)
!3242 = !DILocation(line: 229, column: 1, scope: !3227)
!3243 = distinct !DISubprogram(name: "must_set_admin_pwd", scope: !286, file: !286, line: 231, type: !959, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3244 = !DILocalVariable(name: "pwd0", arg: 1, scope: !3243, file: !286, line: 231, type: !107)
!3245 = !DILocation(line: 231, column: 38, scope: !3243)
!3246 = !DILocalVariable(name: "pwd", scope: !3243, file: !286, line: 233, type: !111)
!3247 = !DILocation(line: 233, column: 8, scope: !3243)
!3248 = !DILocation(line: 233, column: 21, scope: !3243)
!3249 = !DILocation(line: 234, column: 6, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3243, file: !286, line: 234, column: 5)
!3251 = !DILocation(line: 234, column: 10, scope: !3250)
!3252 = !DILocation(line: 234, column: 14, scope: !3250)
!3253 = !DILocation(line: 234, column: 5, scope: !3243)
!3254 = !DILocation(line: 235, column: 11, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !286, line: 234, column: 22)
!3256 = !DILocation(line: 235, column: 3, scope: !3255)
!3257 = !DILocation(line: 236, column: 3, scope: !3255)
!3258 = !DILocation(line: 238, column: 1, scope: !3243)
!3259 = distinct !DISubprogram(name: "auth_ping", scope: !286, file: !286, line: 1001, type: !3260, scopeLine: 1002, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3260 = !DISubroutineType(types: !3261)
!3261 = !{null, !1736}
!3262 = !DILocalVariable(name: "rch", arg: 1, scope: !3259, file: !286, line: 1001, type: !1736)
!3263 = !DILocation(line: 1001, column: 37, scope: !3259)
!3264 = !DILocalVariable(name: "dbd", scope: !3259, file: !286, line: 1003, type: !917)
!3265 = !DILocation(line: 1003, column: 27, scope: !3259)
!3266 = !DILocation(line: 1003, column: 33, scope: !3259)
!3267 = !DILocation(line: 1004, column: 7, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3259, file: !286, line: 1004, column: 7)
!3269 = !DILocation(line: 1004, column: 11, scope: !3268)
!3270 = !DILocation(line: 1004, column: 14, scope: !3268)
!3271 = !DILocation(line: 1004, column: 19, scope: !3268)
!3272 = !DILocation(line: 1004, column: 7, scope: !3259)
!3273 = !DILocation(line: 1005, column: 7, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3268, file: !286, line: 1004, column: 30)
!3275 = !DILocation(line: 1005, column: 12, scope: !3274)
!3276 = !DILocation(line: 1005, column: 23, scope: !3274)
!3277 = !DILocation(line: 1005, column: 5, scope: !3274)
!3278 = !DILocation(line: 1006, column: 3, scope: !3274)
!3279 = !DILocation(line: 1007, column: 1, scope: !3259)
!3280 = distinct !DISubprogram(name: "init_dynamic_ip_lists", scope: !286, file: !286, line: 1084, type: !287, scopeLine: 1085, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3281 = !DILocation(line: 1087, column: 41, scope: !3280)
!3282 = !DILocation(line: 1087, column: 19, scope: !3280)
!3283 = !DILocation(line: 1088, column: 22, scope: !3280)
!3284 = !DILocation(line: 1088, column: 2, scope: !3280)
!3285 = !DILocation(line: 1090, column: 41, scope: !3280)
!3286 = !DILocation(line: 1090, column: 19, scope: !3280)
!3287 = !DILocation(line: 1091, column: 22, scope: !3280)
!3288 = !DILocation(line: 1091, column: 2, scope: !3280)
!3289 = !DILocation(line: 1096, column: 1, scope: !3280)
!3290 = distinct !DISubprogram(name: "ioa_lock_whitelist", scope: !286, file: !286, line: 1098, type: !3291, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3291 = !DISubroutineType(types: !3292)
!3292 = !{null, !1648}
!3293 = !DILocalVariable(name: "e", arg: 1, scope: !3290, file: !286, line: 1098, type: !1648)
!3294 = !DILocation(line: 1098, column: 43, scope: !3290)
!3295 = !DILocation(line: 1100, column: 2, scope: !3290)
!3296 = !DILocation(line: 1100, column: 2, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3290, file: !286, line: 1100, column: 2)
!3298 = !DILocation(line: 1102, column: 24, scope: !3290)
!3299 = !DILocation(line: 1102, column: 2, scope: !3290)
!3300 = !DILocation(line: 1106, column: 1, scope: !3290)
!3301 = distinct !DISubprogram(name: "ioa_unlock_whitelist", scope: !286, file: !286, line: 1107, type: !3291, scopeLine: 1108, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3302 = !DILocalVariable(name: "e", arg: 1, scope: !3301, file: !286, line: 1107, type: !1648)
!3303 = !DILocation(line: 1107, column: 45, scope: !3301)
!3304 = !DILocation(line: 1109, column: 2, scope: !3301)
!3305 = !DILocation(line: 1109, column: 2, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3301, file: !286, line: 1109, column: 2)
!3307 = !DILocation(line: 1111, column: 24, scope: !3301)
!3308 = !DILocation(line: 1111, column: 2, scope: !3301)
!3309 = !DILocation(line: 1115, column: 1, scope: !3301)
!3310 = distinct !DISubprogram(name: "ioa_get_whitelist", scope: !286, file: !286, line: 1125, type: !3311, scopeLine: 1126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3311 = !DISubroutineType(types: !3312)
!3312 = !{!3313, !1648}
!3313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3314, size: 64)
!3314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !202)
!3315 = !DILocalVariable(name: "e", arg: 1, scope: !3310, file: !286, line: 1125, type: !1648)
!3316 = !DILocation(line: 1125, column: 60, scope: !3310)
!3317 = !DILocation(line: 1127, column: 2, scope: !3310)
!3318 = !DILocation(line: 1127, column: 2, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3310, file: !286, line: 1127, column: 2)
!3320 = !DILocation(line: 1128, column: 9, scope: !3310)
!3321 = !DILocation(line: 1128, column: 2, scope: !3310)
!3322 = distinct !DISubprogram(name: "ioa_lock_blacklist", scope: !286, file: !286, line: 1131, type: !3291, scopeLine: 1132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3323 = !DILocalVariable(name: "e", arg: 1, scope: !3322, file: !286, line: 1131, type: !1648)
!3324 = !DILocation(line: 1131, column: 43, scope: !3322)
!3325 = !DILocation(line: 1133, column: 2, scope: !3322)
!3326 = !DILocation(line: 1133, column: 2, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3322, file: !286, line: 1133, column: 2)
!3328 = !DILocation(line: 1135, column: 24, scope: !3322)
!3329 = !DILocation(line: 1135, column: 2, scope: !3322)
!3330 = !DILocation(line: 1139, column: 1, scope: !3322)
!3331 = distinct !DISubprogram(name: "ioa_unlock_blacklist", scope: !286, file: !286, line: 1140, type: !3291, scopeLine: 1141, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3332 = !DILocalVariable(name: "e", arg: 1, scope: !3331, file: !286, line: 1140, type: !1648)
!3333 = !DILocation(line: 1140, column: 45, scope: !3331)
!3334 = !DILocation(line: 1142, column: 2, scope: !3331)
!3335 = !DILocation(line: 1142, column: 2, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3331, file: !286, line: 1142, column: 2)
!3337 = !DILocation(line: 1144, column: 24, scope: !3331)
!3338 = !DILocation(line: 1144, column: 2, scope: !3331)
!3339 = !DILocation(line: 1148, column: 1, scope: !3331)
!3340 = distinct !DISubprogram(name: "ioa_get_blacklist", scope: !286, file: !286, line: 1158, type: !3311, scopeLine: 1159, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3341 = !DILocalVariable(name: "e", arg: 1, scope: !3340, file: !286, line: 1158, type: !1648)
!3342 = !DILocation(line: 1158, column: 60, scope: !3340)
!3343 = !DILocation(line: 1160, column: 2, scope: !3340)
!3344 = !DILocation(line: 1160, column: 2, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3340, file: !286, line: 1160, column: 2)
!3346 = !DILocation(line: 1161, column: 9, scope: !3340)
!3347 = !DILocation(line: 1161, column: 2, scope: !3340)
!3348 = distinct !DISubprogram(name: "get_ip_list", scope: !286, file: !286, line: 1164, type: !3349, scopeLine: 1165, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!201, !108}
!3351 = !DILocalVariable(name: "kind", arg: 1, scope: !3348, file: !286, line: 1164, type: !108)
!3352 = !DILocation(line: 1164, column: 42, scope: !3348)
!3353 = !DILocalVariable(name: "ret", scope: !3348, file: !286, line: 1166, type: !201)
!3354 = !DILocation(line: 1166, column: 19, scope: !3348)
!3355 = !DILocation(line: 1166, column: 44, scope: !3348)
!3356 = !DILocation(line: 1167, column: 8, scope: !3348)
!3357 = !DILocation(line: 1167, column: 2, scope: !3348)
!3358 = !DILocalVariable(name: "dbd", scope: !3348, file: !286, line: 1169, type: !917)
!3359 = !DILocation(line: 1169, column: 26, scope: !3348)
!3360 = !DILocation(line: 1169, column: 32, scope: !3348)
!3361 = !DILocation(line: 1170, column: 6, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3348, file: !286, line: 1170, column: 6)
!3363 = !DILocation(line: 1170, column: 10, scope: !3362)
!3364 = !DILocation(line: 1170, column: 13, scope: !3362)
!3365 = !DILocation(line: 1170, column: 18, scope: !3362)
!3366 = !DILocation(line: 1170, column: 30, scope: !3362)
!3367 = !DILocation(line: 1170, column: 46, scope: !3362)
!3368 = !DILocation(line: 1170, column: 34, scope: !3362)
!3369 = !DILocation(line: 1170, column: 6, scope: !3348)
!3370 = !DILocation(line: 1171, column: 5, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3362, file: !286, line: 1170, column: 66)
!3372 = !DILocation(line: 1171, column: 10, scope: !3371)
!3373 = !DILocation(line: 1171, column: 23, scope: !3371)
!3374 = !DILocation(line: 1171, column: 29, scope: !3371)
!3375 = !DILocation(line: 1171, column: 3, scope: !3371)
!3376 = !DILocation(line: 1172, column: 2, scope: !3371)
!3377 = !DILocation(line: 1174, column: 9, scope: !3348)
!3378 = !DILocation(line: 1174, column: 2, scope: !3348)
!3379 = distinct !DISubprogram(name: "ip_list_free", scope: !286, file: !286, line: 1177, type: !3380, scopeLine: 1178, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3380 = !DISubroutineType(types: !3381)
!3381 = !{null, !201}
!3382 = !DILocalVariable(name: "l", arg: 1, scope: !3379, file: !286, line: 1177, type: !201)
!3383 = !DILocation(line: 1177, column: 36, scope: !3379)
!3384 = !DILocation(line: 1179, column: 5, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3379, file: !286, line: 1179, column: 5)
!3386 = !DILocation(line: 1179, column: 5, scope: !3379)
!3387 = !DILocation(line: 1180, column: 6, scope: !3388)
!3388 = distinct !DILexicalBlock(scope: !3389, file: !286, line: 1180, column: 6)
!3389 = distinct !DILexicalBlock(scope: !3385, file: !286, line: 1179, column: 8)
!3390 = !DILocation(line: 1180, column: 9, scope: !3388)
!3391 = !DILocation(line: 1180, column: 6, scope: !3389)
!3392 = !DILocation(line: 1181, column: 10, scope: !3388)
!3393 = !DILocation(line: 1181, column: 13, scope: !3388)
!3394 = !DILocation(line: 1181, column: 5, scope: !3388)
!3395 = !DILocation(line: 1182, column: 8, scope: !3389)
!3396 = !DILocation(line: 1182, column: 3, scope: !3389)
!3397 = !DILocation(line: 1183, column: 2, scope: !3389)
!3398 = !DILocation(line: 1184, column: 1, scope: !3379)
!3399 = distinct !DISubprogram(name: "update_white_and_black_lists", scope: !286, file: !286, line: 1186, type: !287, scopeLine: 1187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3400 = !DILocalVariable(name: "wl", scope: !3401, file: !286, line: 1189, type: !201)
!3401 = distinct !DILexicalBlock(scope: !3399, file: !286, line: 1188, column: 2)
!3402 = !DILocation(line: 1189, column: 20, scope: !3401)
!3403 = !DILocation(line: 1189, column: 25, scope: !3401)
!3404 = !DILocalVariable(name: "owl", scope: !3401, file: !286, line: 1190, type: !201)
!3405 = !DILocation(line: 1190, column: 20, scope: !3401)
!3406 = !DILocation(line: 1191, column: 3, scope: !3401)
!3407 = !DILocation(line: 1192, column: 9, scope: !3401)
!3408 = !DILocation(line: 1192, column: 7, scope: !3401)
!3409 = !DILocation(line: 1193, column: 17, scope: !3401)
!3410 = !DILocation(line: 1193, column: 15, scope: !3401)
!3411 = !DILocation(line: 1194, column: 3, scope: !3401)
!3412 = !DILocation(line: 1195, column: 16, scope: !3401)
!3413 = !DILocation(line: 1195, column: 3, scope: !3401)
!3414 = !DILocalVariable(name: "bl", scope: !3415, file: !286, line: 1198, type: !201)
!3415 = distinct !DILexicalBlock(scope: !3399, file: !286, line: 1197, column: 2)
!3416 = !DILocation(line: 1198, column: 20, scope: !3415)
!3417 = !DILocation(line: 1198, column: 25, scope: !3415)
!3418 = !DILocalVariable(name: "obl", scope: !3415, file: !286, line: 1199, type: !201)
!3419 = !DILocation(line: 1199, column: 20, scope: !3415)
!3420 = !DILocation(line: 1200, column: 3, scope: !3415)
!3421 = !DILocation(line: 1201, column: 9, scope: !3415)
!3422 = !DILocation(line: 1201, column: 7, scope: !3415)
!3423 = !DILocation(line: 1202, column: 17, scope: !3415)
!3424 = !DILocation(line: 1202, column: 15, scope: !3415)
!3425 = !DILocation(line: 1203, column: 3, scope: !3415)
!3426 = !DILocation(line: 1204, column: 16, scope: !3415)
!3427 = !DILocation(line: 1204, column: 3, scope: !3415)
!3428 = !DILocation(line: 1206, column: 1, scope: !3399)
!3429 = distinct !DISubprogram(name: "ioa_wrlock_whitelist", scope: !286, file: !286, line: 1116, type: !3291, scopeLine: 1117, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3430 = !DILocalVariable(name: "e", arg: 1, scope: !3429, file: !286, line: 1116, type: !1648)
!3431 = !DILocation(line: 1116, column: 52, scope: !3429)
!3432 = !DILocation(line: 1118, column: 2, scope: !3429)
!3433 = !DILocation(line: 1118, column: 2, scope: !3434)
!3434 = distinct !DILexicalBlock(scope: !3429, file: !286, line: 1118, column: 2)
!3435 = !DILocation(line: 1120, column: 24, scope: !3429)
!3436 = !DILocation(line: 1120, column: 2, scope: !3429)
!3437 = !DILocation(line: 1124, column: 1, scope: !3429)
!3438 = distinct !DISubprogram(name: "ioa_wrlock_blacklist", scope: !286, file: !286, line: 1149, type: !3291, scopeLine: 1150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3439 = !DILocalVariable(name: "e", arg: 1, scope: !3438, file: !286, line: 1149, type: !1648)
!3440 = !DILocation(line: 1149, column: 52, scope: !3438)
!3441 = !DILocation(line: 1151, column: 2, scope: !3438)
!3442 = !DILocation(line: 1151, column: 2, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3438, file: !286, line: 1151, column: 2)
!3444 = !DILocation(line: 1153, column: 24, scope: !3438)
!3445 = !DILocation(line: 1153, column: 2, scope: !3438)
!3446 = !DILocation(line: 1157, column: 1, scope: !3438)
!3447 = distinct !DISubprogram(name: "add_ip_list_range", scope: !286, file: !286, line: 1210, type: !3448, scopeLine: 1211, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!7, !108, !108, !201}
!3450 = !DILocalVariable(name: "range0", arg: 1, scope: !3447, file: !286, line: 1210, type: !108)
!3451 = !DILocation(line: 1210, column: 36, scope: !3447)
!3452 = !DILocalVariable(name: "realm", arg: 2, scope: !3447, file: !286, line: 1210, type: !108)
!3453 = !DILocation(line: 1210, column: 57, scope: !3447)
!3454 = !DILocalVariable(name: "list", arg: 3, scope: !3447, file: !286, line: 1210, type: !201)
!3455 = !DILocation(line: 1210, column: 82, scope: !3447)
!3456 = !DILocalVariable(name: "range", scope: !3447, file: !286, line: 1212, type: !111)
!3457 = !DILocation(line: 1212, column: 8, scope: !3447)
!3458 = !DILocation(line: 1212, column: 23, scope: !3447)
!3459 = !DILocation(line: 1212, column: 16, scope: !3447)
!3460 = !DILocalVariable(name: "separator", scope: !3447, file: !286, line: 1214, type: !111)
!3461 = !DILocation(line: 1214, column: 8, scope: !3447)
!3462 = !DILocation(line: 1214, column: 27, scope: !3447)
!3463 = !DILocation(line: 1214, column: 20, scope: !3447)
!3464 = !DILocation(line: 1216, column: 6, scope: !3465)
!3465 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1216, column: 6)
!3466 = !DILocation(line: 1216, column: 6, scope: !3447)
!3467 = !DILocation(line: 1217, column: 4, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3465, file: !286, line: 1216, column: 17)
!3469 = !DILocation(line: 1217, column: 14, scope: !3468)
!3470 = !DILocation(line: 1218, column: 2, scope: !3468)
!3471 = !DILocalVariable(name: "min", scope: !3447, file: !286, line: 1220, type: !224)
!3472 = !DILocation(line: 1220, column: 11, scope: !3447)
!3473 = !DILocalVariable(name: "max", scope: !3447, file: !286, line: 1220, type: !224)
!3474 = !DILocation(line: 1220, column: 16, scope: !3447)
!3475 = !DILocation(line: 1222, column: 37, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1222, column: 6)
!3477 = !DILocation(line: 1222, column: 6, scope: !3476)
!3478 = !DILocation(line: 1222, column: 53, scope: !3476)
!3479 = !DILocation(line: 1222, column: 6, scope: !3447)
!3480 = !DILocation(line: 1223, column: 69, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3476, file: !286, line: 1222, column: 58)
!3482 = !DILocation(line: 1223, column: 3, scope: !3481)
!3483 = !DILocation(line: 1224, column: 8, scope: !3481)
!3484 = !DILocation(line: 1224, column: 3, scope: !3481)
!3485 = !DILocation(line: 1225, column: 3, scope: !3481)
!3486 = !DILocation(line: 1228, column: 6, scope: !3487)
!3487 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1228, column: 6)
!3488 = !DILocation(line: 1228, column: 6, scope: !3447)
!3489 = !DILocation(line: 1229, column: 38, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3491, file: !286, line: 1229, column: 7)
!3491 = distinct !DILexicalBlock(scope: !3487, file: !286, line: 1228, column: 17)
!3492 = !DILocation(line: 1229, column: 48, scope: !3490)
!3493 = !DILocation(line: 1229, column: 7, scope: !3490)
!3494 = !DILocation(line: 1229, column: 62, scope: !3490)
!3495 = !DILocation(line: 1229, column: 7, scope: !3491)
!3496 = !DILocation(line: 1230, column: 70, scope: !3497)
!3497 = distinct !DILexicalBlock(scope: !3490, file: !286, line: 1229, column: 67)
!3498 = !DILocation(line: 1230, column: 80, scope: !3497)
!3499 = !DILocation(line: 1230, column: 4, scope: !3497)
!3500 = !DILocation(line: 1231, column: 9, scope: !3497)
!3501 = !DILocation(line: 1231, column: 4, scope: !3497)
!3502 = !DILocation(line: 1232, column: 4, scope: !3497)
!3503 = !DILocation(line: 1234, column: 2, scope: !3491)
!3504 = !DILocation(line: 1236, column: 3, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3487, file: !286, line: 1234, column: 9)
!3506 = !DILocation(line: 1239, column: 6, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1239, column: 6)
!3508 = !DILocation(line: 1239, column: 6, scope: !3447)
!3509 = !DILocation(line: 1240, column: 4, scope: !3507)
!3510 = !DILocation(line: 1240, column: 14, scope: !3507)
!3511 = !DILocation(line: 1240, column: 3, scope: !3507)
!3512 = !DILocation(line: 1242, column: 5, scope: !3447)
!3513 = !DILocation(line: 1242, column: 11, scope: !3447)
!3514 = !DILocation(line: 1242, column: 2, scope: !3447)
!3515 = !DILocation(line: 1243, column: 35, scope: !3447)
!3516 = !DILocation(line: 1243, column: 41, scope: !3447)
!3517 = !DILocation(line: 1243, column: 66, scope: !3447)
!3518 = !DILocation(line: 1243, column: 72, scope: !3447)
!3519 = !DILocation(line: 1243, column: 64, scope: !3447)
!3520 = !DILocation(line: 1243, column: 27, scope: !3447)
!3521 = !DILocation(line: 1243, column: 2, scope: !3447)
!3522 = !DILocation(line: 1243, column: 8, scope: !3447)
!3523 = !DILocation(line: 1243, column: 11, scope: !3447)
!3524 = !DILocation(line: 1244, column: 2, scope: !3447)
!3525 = !DILocation(line: 1244, column: 2, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3527, file: !286, line: 1244, column: 2)
!3527 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1244, column: 2)
!3528 = !DILocation(line: 1244, column: 2, scope: !3527)
!3529 = !DILocalVariable(name: "szdst", scope: !3530, file: !286, line: 1244, type: !157)
!3530 = distinct !DILexicalBlock(scope: !3531, file: !286, line: 1244, column: 2)
!3531 = distinct !DILexicalBlock(scope: !3532, file: !286, line: 1244, column: 2)
!3532 = distinct !DILexicalBlock(scope: !3526, file: !286, line: 1244, column: 2)
!3533 = !DILocation(line: 1244, column: 2, scope: !3530)
!3534 = !DILocation(line: 1244, column: 2, scope: !3532)
!3535 = !DILocation(line: 1245, column: 5, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3447, file: !286, line: 1245, column: 5)
!3537 = !DILocation(line: 1245, column: 5, scope: !3447)
!3538 = !DILocation(line: 1246, column: 3, scope: !3536)
!3539 = !DILocation(line: 1246, column: 3, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3541, file: !286, line: 1246, column: 3)
!3541 = distinct !DILexicalBlock(scope: !3536, file: !286, line: 1246, column: 3)
!3542 = !DILocation(line: 1246, column: 3, scope: !3541)
!3543 = !DILocalVariable(name: "szdst", scope: !3544, file: !286, line: 1246, type: !157)
!3544 = distinct !DILexicalBlock(scope: !3545, file: !286, line: 1246, column: 3)
!3545 = distinct !DILexicalBlock(scope: !3546, file: !286, line: 1246, column: 3)
!3546 = distinct !DILexicalBlock(scope: !3540, file: !286, line: 1246, column: 3)
!3547 = !DILocation(line: 1246, column: 3, scope: !3544)
!3548 = !DILocation(line: 1246, column: 3, scope: !3546)
!3549 = !DILocation(line: 1248, column: 3, scope: !3536)
!3550 = !DILocation(line: 1248, column: 9, scope: !3536)
!3551 = !DILocation(line: 1248, column: 12, scope: !3536)
!3552 = !DILocation(line: 1248, column: 18, scope: !3536)
!3553 = !DILocation(line: 1248, column: 32, scope: !3536)
!3554 = !DILocation(line: 1248, column: 37, scope: !3536)
!3555 = !DILocation(line: 1248, column: 45, scope: !3536)
!3556 = !DILocation(line: 1249, column: 7, scope: !3447)
!3557 = !DILocation(line: 1249, column: 2, scope: !3447)
!3558 = !DILocation(line: 1250, column: 23, scope: !3447)
!3559 = !DILocation(line: 1250, column: 29, scope: !3447)
!3560 = !DILocation(line: 1250, column: 32, scope: !3447)
!3561 = !DILocation(line: 1250, column: 38, scope: !3447)
!3562 = !DILocation(line: 1250, column: 52, scope: !3447)
!3563 = !DILocation(line: 1250, column: 57, scope: !3447)
!3564 = !DILocation(line: 1250, column: 2, scope: !3447)
!3565 = !DILocation(line: 1252, column: 2, scope: !3447)
!3566 = !DILocation(line: 1253, column: 1, scope: !3447)
!3567 = distinct !DISubprogram(name: "check_ip_list_range", scope: !286, file: !286, line: 1255, type: !3568, scopeLine: 1256, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3568 = !DISubroutineType(types: !3569)
!3569 = !{!7, !108}
!3570 = !DILocalVariable(name: "range0", arg: 1, scope: !3567, file: !286, line: 1255, type: !108)
!3571 = !DILocation(line: 1255, column: 38, scope: !3567)
!3572 = !DILocalVariable(name: "range", scope: !3567, file: !286, line: 1257, type: !111)
!3573 = !DILocation(line: 1257, column: 8, scope: !3567)
!3574 = !DILocation(line: 1257, column: 23, scope: !3567)
!3575 = !DILocation(line: 1257, column: 16, scope: !3567)
!3576 = !DILocalVariable(name: "separator", scope: !3567, file: !286, line: 1259, type: !111)
!3577 = !DILocation(line: 1259, column: 8, scope: !3567)
!3578 = !DILocation(line: 1259, column: 27, scope: !3567)
!3579 = !DILocation(line: 1259, column: 20, scope: !3567)
!3580 = !DILocation(line: 1261, column: 6, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3567, file: !286, line: 1261, column: 6)
!3582 = !DILocation(line: 1261, column: 6, scope: !3567)
!3583 = !DILocation(line: 1262, column: 4, scope: !3584)
!3584 = distinct !DILexicalBlock(scope: !3581, file: !286, line: 1261, column: 17)
!3585 = !DILocation(line: 1262, column: 14, scope: !3584)
!3586 = !DILocation(line: 1263, column: 2, scope: !3584)
!3587 = !DILocalVariable(name: "min", scope: !3567, file: !286, line: 1265, type: !224)
!3588 = !DILocation(line: 1265, column: 11, scope: !3567)
!3589 = !DILocalVariable(name: "max", scope: !3567, file: !286, line: 1265, type: !224)
!3590 = !DILocation(line: 1265, column: 16, scope: !3567)
!3591 = !DILocation(line: 1267, column: 37, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3567, file: !286, line: 1267, column: 6)
!3593 = !DILocation(line: 1267, column: 6, scope: !3592)
!3594 = !DILocation(line: 1267, column: 53, scope: !3592)
!3595 = !DILocation(line: 1267, column: 6, scope: !3567)
!3596 = !DILocation(line: 1268, column: 75, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3592, file: !286, line: 1267, column: 58)
!3598 = !DILocation(line: 1268, column: 3, scope: !3597)
!3599 = !DILocation(line: 1269, column: 8, scope: !3597)
!3600 = !DILocation(line: 1269, column: 3, scope: !3597)
!3601 = !DILocation(line: 1270, column: 3, scope: !3597)
!3602 = !DILocation(line: 1273, column: 6, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3567, file: !286, line: 1273, column: 6)
!3604 = !DILocation(line: 1273, column: 6, scope: !3567)
!3605 = !DILocation(line: 1274, column: 38, scope: !3606)
!3606 = distinct !DILexicalBlock(scope: !3607, file: !286, line: 1274, column: 7)
!3607 = distinct !DILexicalBlock(scope: !3603, file: !286, line: 1273, column: 17)
!3608 = !DILocation(line: 1274, column: 48, scope: !3606)
!3609 = !DILocation(line: 1274, column: 7, scope: !3606)
!3610 = !DILocation(line: 1274, column: 62, scope: !3606)
!3611 = !DILocation(line: 1274, column: 7, scope: !3607)
!3612 = !DILocation(line: 1275, column: 76, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3606, file: !286, line: 1274, column: 67)
!3614 = !DILocation(line: 1275, column: 86, scope: !3613)
!3615 = !DILocation(line: 1275, column: 4, scope: !3613)
!3616 = !DILocation(line: 1276, column: 9, scope: !3613)
!3617 = !DILocation(line: 1276, column: 4, scope: !3613)
!3618 = !DILocation(line: 1277, column: 4, scope: !3613)
!3619 = !DILocation(line: 1279, column: 2, scope: !3607)
!3620 = !DILocation(line: 1281, column: 3, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3603, file: !286, line: 1279, column: 9)
!3622 = !DILocation(line: 1284, column: 6, scope: !3623)
!3623 = distinct !DILexicalBlock(scope: !3567, file: !286, line: 1284, column: 6)
!3624 = !DILocation(line: 1284, column: 6, scope: !3567)
!3625 = !DILocation(line: 1285, column: 4, scope: !3623)
!3626 = !DILocation(line: 1285, column: 14, scope: !3623)
!3627 = !DILocation(line: 1285, column: 3, scope: !3623)
!3628 = !DILocation(line: 1287, column: 7, scope: !3567)
!3629 = !DILocation(line: 1287, column: 2, scope: !3567)
!3630 = !DILocation(line: 1289, column: 2, scope: !3567)
!3631 = !DILocation(line: 1290, column: 1, scope: !3567)
!3632 = distinct !DISubprogram(name: "reread_realms", scope: !286, file: !286, line: 1294, type: !287, scopeLine: 1295, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3633 = !DILocalVariable(name: "defrp", scope: !3634, file: !286, line: 1297, type: !113)
!3634 = distinct !DILexicalBlock(scope: !3632, file: !286, line: 1296, column: 2)
!3635 = !DILocation(line: 1297, column: 19, scope: !3634)
!3636 = !DILocation(line: 1297, column: 27, scope: !3634)
!3637 = !DILocation(line: 1298, column: 3, scope: !3634)
!3638 = !DILocation(line: 1299, column: 53, scope: !3634)
!3639 = !DILocation(line: 1299, column: 3, scope: !3634)
!3640 = !DILocation(line: 1299, column: 10, scope: !3634)
!3641 = !DILocation(line: 1299, column: 18, scope: !3634)
!3642 = !DILocation(line: 1299, column: 31, scope: !3634)
!3643 = !DILocation(line: 1299, column: 39, scope: !3634)
!3644 = !DILocation(line: 1300, column: 57, scope: !3634)
!3645 = !DILocation(line: 1300, column: 3, scope: !3634)
!3646 = !DILocation(line: 1300, column: 10, scope: !3634)
!3647 = !DILocation(line: 1300, column: 18, scope: !3634)
!3648 = !DILocation(line: 1300, column: 31, scope: !3634)
!3649 = !DILocation(line: 1300, column: 43, scope: !3634)
!3650 = !DILocation(line: 1301, column: 56, scope: !3634)
!3651 = !DILocation(line: 1301, column: 3, scope: !3634)
!3652 = !DILocation(line: 1301, column: 10, scope: !3634)
!3653 = !DILocation(line: 1301, column: 18, scope: !3634)
!3654 = !DILocation(line: 1301, column: 31, scope: !3634)
!3655 = !DILocation(line: 1301, column: 42, scope: !3634)
!3656 = !DILocation(line: 1302, column: 3, scope: !3634)
!3657 = !DILocalVariable(name: "dbd", scope: !3632, file: !286, line: 1305, type: !917)
!3658 = !DILocation(line: 1305, column: 26, scope: !3632)
!3659 = !DILocation(line: 1305, column: 32, scope: !3632)
!3660 = !DILocation(line: 1306, column: 6, scope: !3661)
!3661 = distinct !DILexicalBlock(scope: !3632, file: !286, line: 1306, column: 6)
!3662 = !DILocation(line: 1306, column: 10, scope: !3661)
!3663 = !DILocation(line: 1306, column: 13, scope: !3661)
!3664 = !DILocation(line: 1306, column: 18, scope: !3661)
!3665 = !DILocation(line: 1306, column: 32, scope: !3661)
!3666 = !DILocation(line: 1306, column: 48, scope: !3661)
!3667 = !DILocation(line: 1306, column: 36, scope: !3661)
!3668 = !DILocation(line: 1306, column: 6, scope: !3632)
!3669 = !DILocation(line: 1307, column: 5, scope: !3670)
!3670 = distinct !DILexicalBlock(scope: !3661, file: !286, line: 1306, column: 67)
!3671 = !DILocation(line: 1307, column: 10, scope: !3670)
!3672 = !DILocation(line: 1307, column: 3, scope: !3670)
!3673 = !DILocation(line: 1308, column: 2, scope: !3670)
!3674 = !DILocation(line: 1309, column: 1, scope: !3632)
!3675 = distinct !DISubprogram(name: "set_realm_option_one", scope: !286, file: !286, line: 860, type: !954, scopeLine: 861, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !289)
!3676 = !DILocalVariable(name: "realm", arg: 1, scope: !3675, file: !286, line: 860, type: !164)
!3677 = !DILocation(line: 860, column: 42, scope: !3675)
!3678 = !DILocalVariable(name: "value", arg: 2, scope: !3675, file: !286, line: 860, type: !134)
!3679 = !DILocation(line: 860, column: 63, scope: !3675)
!3680 = !DILocalVariable(name: "opt", arg: 3, scope: !3675, file: !286, line: 860, type: !108)
!3681 = !DILocation(line: 860, column: 82, scope: !3675)
!3682 = !DILocation(line: 862, column: 5, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3675, file: !286, line: 862, column: 5)
!3684 = !DILocation(line: 862, column: 11, scope: !3683)
!3685 = !DILocation(line: 862, column: 5, scope: !3675)
!3686 = !DILocation(line: 863, column: 3, scope: !3683)
!3687 = !DILocalVariable(name: "dbd", scope: !3675, file: !286, line: 865, type: !917)
!3688 = !DILocation(line: 865, column: 26, scope: !3675)
!3689 = !DILocation(line: 865, column: 32, scope: !3675)
!3690 = !DILocation(line: 866, column: 6, scope: !3691)
!3691 = distinct !DILexicalBlock(scope: !3675, file: !286, line: 866, column: 6)
!3692 = !DILocation(line: 866, column: 10, scope: !3691)
!3693 = !DILocation(line: 866, column: 13, scope: !3691)
!3694 = !DILocation(line: 866, column: 18, scope: !3691)
!3695 = !DILocation(line: 866, column: 6, scope: !3675)
!3696 = !DILocation(line: 867, column: 5, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3691, file: !286, line: 866, column: 40)
!3698 = !DILocation(line: 867, column: 10, scope: !3697)
!3699 = !DILocation(line: 867, column: 32, scope: !3697)
!3700 = !DILocation(line: 867, column: 39, scope: !3697)
!3701 = !DILocation(line: 867, column: 46, scope: !3697)
!3702 = !DILocation(line: 867, column: 3, scope: !3697)
!3703 = !DILocation(line: 868, column: 2, scope: !3697)
!3704 = !DILocation(line: 870, column: 2, scope: !3675)
!3705 = !DILocation(line: 871, column: 1, scope: !3675)
