; ModuleID = '/home/raj/lwan/techempower/techempower.c'
source_filename = "/home/raj/lwan/techempower/techempower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_url_map_t_ = type { ptr, ptr, ptr, i64, i32, ptr, ptr, %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.db_row = type { %union.anon.9, i8, i64 }
%union.anon.9 = type { ptr }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.Fortune = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, ptr }
%struct.array = type { ptr, i64, i64, i64 }

@main.url_map = internal constant [6 x %struct.lwan_url_map_t_] [%struct.lwan_url_map_t_ { ptr @json, ptr null, ptr @.str, i64 0, i32 0, ptr null, ptr null, %struct.anon.6 zeroinitializer }, %struct.lwan_url_map_t_ { ptr @db, ptr null, ptr @.str.1, i64 0, i32 0, ptr null, ptr null, %struct.anon.6 zeroinitializer }, %struct.lwan_url_map_t_ { ptr @queries, ptr null, ptr @.str.2, i64 0, i32 0, ptr null, ptr null, %struct.anon.6 zeroinitializer }, %struct.lwan_url_map_t_ { ptr @plaintext, ptr null, ptr @.str.3, i64 0, i32 0, ptr null, ptr null, %struct.anon.6 zeroinitializer }, %struct.lwan_url_map_t_ { ptr @fortunes, ptr null, ptr @.str.4, i64 0, i32 0, ptr null, ptr null, %struct.anon.6 zeroinitializer }, %struct.lwan_url_map_t_ zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [6 x i8] c"/json\00", align 1, !dbg !93
@.str.1 = private unnamed_addr constant [4 x i8] c"/db\00", align 1, !dbg !98
@.str.2 = private unnamed_addr constant [9 x i8] c"/queries\00", align 1, !dbg !103
@.str.3 = private unnamed_addr constant [11 x i8] c"/plaintext\00", align 1, !dbg !108
@.str.4 = private unnamed_addr constant [10 x i8] c"/fortunes\00", align 1, !dbg !113
@.str.5 = private unnamed_addr constant [10 x i8] c"USE_MYSQL\00", align 1, !dbg !118
@.str.6 = private unnamed_addr constant [11 x i8] c"MYSQL_USER\00", align 1, !dbg !120
@.str.7 = private unnamed_addr constant [11 x i8] c"MYSQL_PASS\00", align 1, !dbg !122
@.str.8 = private unnamed_addr constant [11 x i8] c"MYSQL_HOST\00", align 1, !dbg !124
@.str.9 = private unnamed_addr constant [9 x i8] c"MYSQL_DB\00", align 1, !dbg !126
@.str.10 = private unnamed_addr constant [41 x i8] c"/home/raj/lwan/techempower/techempower.c\00", align 1, !dbg !128
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !133
@.str.11 = private unnamed_addr constant [23 x i8] c"No MySQL user provided\00", align 1, !dbg !139
@.str.12 = private unnamed_addr constant [27 x i8] c"No MySQL password provided\00", align 1, !dbg !144
@.str.13 = private unnamed_addr constant [27 x i8] c"No MySQL hostname provided\00", align 1, !dbg !149
@.str.14 = private unnamed_addr constant [27 x i8] c"No MySQL database provided\00", align 1, !dbg !151
@database = internal global ptr null, align 8, !dbg !183
@.str.15 = private unnamed_addr constant [26 x i8] c"PRAGMA mmap_size=44040192\00", align 1, !dbg !153
@.str.16 = private unnamed_addr constant [24 x i8] c"PRAGMA journal_mode=OFF\00", align 1, !dbg !158
@.str.17 = private unnamed_addr constant [30 x i8] c"PRAGMA locking_mode=EXCLUSIVE\00", align 1, !dbg !163
@__const.main.pragmas = private unnamed_addr constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr null], align 16
@.str.18 = private unnamed_addr constant [15 x i8] c"techempower.db\00", align 1, !dbg !168
@.str.19 = private unnamed_addr constant [34 x i8] c"Could not connect to the database\00", align 1, !dbg !173
@fortunes_template_str = internal constant [201 x i8] c"<!DOCTYPE html><html><head><title>Fortunes</title></head><body><table><tr><th>id</th><th>message</th></tr>{{#item}}<tr><td>{{item.id}}</td><td>{{item.message}}</td></tr>{{/item}}</table></body></html>\00", align 16, !dbg !232
@fortune_desc = internal constant [2 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.28, i64 0, ptr null, ptr null, ptr @fortune_list_generator, ptr @fortune_item_desc }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !240
@fortune_tpl = internal global ptr null, align 8, !dbg !188
@.str.20 = private unnamed_addr constant [36 x i8] c"Could not compile fortune templates\00", align 1, !dbg !178
@.str.21 = private unnamed_addr constant [8 x i8] c"message\00", align 1, !dbg !193
@hello_world = internal constant [14 x i8] c"Hello, World!\00", align 1, !dbg !198
@.str.22 = private unnamed_addr constant [17 x i8] c"application/json\00", align 1, !dbg !203
@__const.db.rows = private unnamed_addr constant [1 x %struct.db_row] [%struct.db_row { %union.anon.9 zeroinitializer, i8 105, i64 0 }], align 16
@random_number_query = internal constant [42 x i8] c"SELECT randomNumber FROM World WHERE id=?\00", align 16, !dbg !208
@.str.23 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !213
@.str.24 = private unnamed_addr constant [13 x i8] c"randomNumber\00", align 1, !dbg !218
@.str.25 = private unnamed_addr constant [8 x i8] c"queries\00", align 1, !dbg !223
@__const.queries.rows = private unnamed_addr constant [1 x %struct.db_row] [%struct.db_row { %union.anon.9 zeroinitializer, i8 105, i64 0 }], align 16
@.str.26 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1, !dbg !225
@.str.27 = private unnamed_addr constant [25 x i8] c"text/html; charset=UTF-8\00", align 1, !dbg !227
@.str.28 = private unnamed_addr constant [5 x i8] c"item\00", align 1, !dbg !237
@fortune_item_desc = internal constant [3 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.30, i64 8, ptr @lwan_append_int_to_strbuf, ptr @lwan_tpl_int_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.31, i64 16, ptr @lwan_append_str_escaped_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !304
@fortune_list_generator.fortune_query = internal constant [22 x i8] c"SELECT * FROM Fortune\00", align 16, !dbg !290
@.str.29 = private unnamed_addr constant [42 x i8] c"Additional fortune added at request time.\00", align 1, !dbg !297
@.str.30 = private unnamed_addr constant [8 x i8] c"item.id\00", align 1, !dbg !300
@.str.31 = private unnamed_addr constant [13 x i8] c"item.message\00", align 1, !dbg !302

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !2 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lwan_t_, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x ptr], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !493, metadata !DIExpression()), !dbg !494
  call void @lwan_init(ptr noundef %2), !dbg !495
  %8 = call i64 @time(ptr noundef null) #8, !dbg !496
  %9 = trunc i64 %8 to i32, !dbg !497
  call void @srand(i32 noundef %9) #8, !dbg !498
  %10 = call ptr @getenv(ptr noundef @.str.5) #8, !dbg !499
  %11 = icmp ne ptr %10, null, !dbg !499
  br i1 %11, label %12, label %38, !dbg !501

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !502, metadata !DIExpression()), !dbg !504
  %13 = call ptr @getenv(ptr noundef @.str.6) #8, !dbg !505
  store ptr %13, ptr %3, align 8, !dbg !504
  call void @llvm.dbg.declare(metadata ptr %4, metadata !506, metadata !DIExpression()), !dbg !507
  %14 = call ptr @getenv(ptr noundef @.str.7) #8, !dbg !508
  store ptr %14, ptr %4, align 8, !dbg !507
  call void @llvm.dbg.declare(metadata ptr %5, metadata !509, metadata !DIExpression()), !dbg !510
  %15 = call ptr @getenv(ptr noundef @.str.8) #8, !dbg !511
  store ptr %15, ptr %5, align 8, !dbg !510
  call void @llvm.dbg.declare(metadata ptr %6, metadata !512, metadata !DIExpression()), !dbg !513
  %16 = call ptr @getenv(ptr noundef @.str.9) #8, !dbg !514
  store ptr %16, ptr %6, align 8, !dbg !513
  %17 = load ptr, ptr %3, align 8, !dbg !515
  %18 = icmp ne ptr %17, null, !dbg !515
  br i1 %18, label %20, label %19, !dbg !517

19:                                               ; preds = %12
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 327, ptr noundef @__FUNCTION__.main, ptr noundef @.str.11) #9, !dbg !518
  unreachable, !dbg !518

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 8, !dbg !519
  %22 = icmp ne ptr %21, null, !dbg !519
  br i1 %22, label %24, label %23, !dbg !521

23:                                               ; preds = %20
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 329, ptr noundef @__FUNCTION__.main, ptr noundef @.str.12) #9, !dbg !522
  unreachable, !dbg !522

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !523
  %26 = icmp ne ptr %25, null, !dbg !523
  br i1 %26, label %28, label %27, !dbg !525

27:                                               ; preds = %24
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 331, ptr noundef @__FUNCTION__.main, ptr noundef @.str.13) #9, !dbg !526
  unreachable, !dbg !526

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !dbg !527
  %30 = icmp ne ptr %29, null, !dbg !527
  br i1 %30, label %32, label %31, !dbg !529

31:                                               ; preds = %28
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 333, ptr noundef @__FUNCTION__.main, ptr noundef @.str.14) #9, !dbg !530
  unreachable, !dbg !530

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 8, !dbg !531
  %34 = load ptr, ptr %3, align 8, !dbg !532
  %35 = load ptr, ptr %4, align 8, !dbg !533
  %36 = load ptr, ptr %6, align 8, !dbg !534
  %37 = call ptr @db_connect_mysql(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36), !dbg !535
  store ptr %37, ptr @database, align 8, !dbg !536
  br label %41, !dbg !537

38:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %7, metadata !538, metadata !DIExpression()), !dbg !541
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.main.pragmas, i64 32, i1 false), !dbg !541
  %39 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 0, !dbg !542
  %40 = call ptr @db_connect_sqlite(ptr noundef @.str.18, i1 noundef zeroext true, ptr noundef %39), !dbg !543
  store ptr %40, ptr @database, align 8, !dbg !544
  br label %41

41:                                               ; preds = %38, %32
  %42 = load ptr, ptr @database, align 8, !dbg !545
  %43 = icmp ne ptr %42, null, !dbg !545
  br i1 %43, label %45, label %44, !dbg !547

44:                                               ; preds = %41
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 347, ptr noundef @__FUNCTION__.main, ptr noundef @.str.19) #9, !dbg !548
  unreachable, !dbg !548

45:                                               ; preds = %41
  %46 = call ptr @lwan_tpl_compile_string(ptr noundef @fortunes_template_str, ptr noundef @fortune_desc), !dbg !549
  store ptr %46, ptr @fortune_tpl, align 8, !dbg !550
  %47 = load ptr, ptr @fortune_tpl, align 8, !dbg !551
  %48 = icmp ne ptr %47, null, !dbg !551
  br i1 %48, label %50, label %49, !dbg !553

49:                                               ; preds = %45
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10, i32 noundef 351, ptr noundef @__FUNCTION__.main, ptr noundef @.str.20) #9, !dbg !554
  unreachable, !dbg !554

50:                                               ; preds = %45
  call void @lwan_set_url_map(ptr noundef %2, ptr noundef @main.url_map), !dbg !555
  call void @lwan_main_loop(ptr noundef %2), !dbg !556
  %51 = load ptr, ptr @fortune_tpl, align 8, !dbg !557
  call void @lwan_tpl_free(ptr noundef %51), !dbg !558
  %52 = load ptr, ptr @database, align 8, !dbg !559
  call void @db_disconnect(ptr noundef %52), !dbg !560
  call void @lwan_shutdown(ptr noundef %2), !dbg !561
  ret i32 0, !dbg !562
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !563 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !564, metadata !DIExpression()), !dbg !565
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !566, metadata !DIExpression()), !dbg !567
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !568, metadata !DIExpression()), !dbg !569
  call void @llvm.dbg.declare(metadata ptr %8, metadata !570, metadata !DIExpression()), !dbg !593
  %9 = call ptr @json_mkobject(), !dbg !594
  store ptr %9, ptr %8, align 8, !dbg !593
  %10 = load ptr, ptr %8, align 8, !dbg !595
  %11 = icmp ne ptr %10, null, !dbg !595
  %12 = xor i1 %11, true, !dbg !595
  %13 = zext i1 %12 to i32, !dbg !595
  %14 = sext i32 %13 to i64, !dbg !595
  %15 = icmp ne i64 %14, 0, !dbg !595
  br i1 %15, label %16, label %17, !dbg !597

16:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !598
  br label %23, !dbg !598

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 8, !dbg !599
  %19 = call ptr @json_mkstring(ptr noundef @hello_world), !dbg !600
  call void @json_append_member(ptr noundef %18, ptr noundef @.str.21, ptr noundef %19), !dbg !601
  %20 = load ptr, ptr %6, align 8, !dbg !602
  %21 = load ptr, ptr %8, align 8, !dbg !603
  %22 = call i32 @json_response(ptr noundef %20, ptr noundef %21), !dbg !604
  store i32 %22, ptr %4, align 4, !dbg !605
  br label %23, !dbg !605

23:                                               ; preds = %17, %16
  %24 = load i32, ptr %4, align 4, !dbg !606
  ret i32 %24, !dbg !606
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !607 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [1 x %struct.db_row], align 16
  %9 = alloca [2 x %struct.db_row], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !608, metadata !DIExpression()), !dbg !609
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !610, metadata !DIExpression()), !dbg !611
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !612, metadata !DIExpression()), !dbg !613
  call void @llvm.dbg.declare(metadata ptr %8, metadata !614, metadata !DIExpression()), !dbg !627
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %8, ptr align 16 @__const.db.rows, i64 24, i1 false), !dbg !627
  call void @llvm.dbg.declare(metadata ptr %9, metadata !628, metadata !DIExpression()), !dbg !630
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 48, i1 false), !dbg !630
  %12 = getelementptr inbounds [2 x %struct.db_row], ptr %9, i32 0, i32 0, !dbg !630
  %13 = getelementptr inbounds %struct.db_row, ptr %12, i32 0, i32 1, !dbg !630
  store i8 105, ptr %13, align 8, !dbg !630
  call void @llvm.dbg.declare(metadata ptr %10, metadata !631, metadata !DIExpression()), !dbg !634
  %14 = load ptr, ptr @database, align 8, !dbg !635
  %15 = call ptr @db_prepare_stmt(ptr noundef %14, ptr noundef @random_number_query, i64 noundef 41), !dbg !636
  store ptr %15, ptr %10, align 8, !dbg !634
  %16 = load ptr, ptr %10, align 8, !dbg !637
  %17 = icmp ne ptr %16, null, !dbg !637
  %18 = xor i1 %17, true, !dbg !637
  %19 = zext i1 %18 to i32, !dbg !637
  %20 = sext i32 %19 to i64, !dbg !637
  %21 = icmp ne i64 %20, 0, !dbg !637
  br i1 %21, label %22, label %23, !dbg !639

22:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !640
  br label %40, !dbg !640

23:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %11, metadata !641, metadata !DIExpression()), !dbg !642
  %24 = load ptr, ptr %10, align 8, !dbg !643
  %25 = getelementptr inbounds [1 x %struct.db_row], ptr %8, i64 0, i64 0, !dbg !644
  %26 = getelementptr inbounds [2 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !645
  %27 = call ptr @db_query(ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !646
  store ptr %27, ptr %11, align 8, !dbg !642
  %28 = load ptr, ptr %10, align 8, !dbg !647
  call void @db_stmt_finalize(ptr noundef %28), !dbg !648
  %29 = load ptr, ptr %11, align 8, !dbg !649
  %30 = icmp ne ptr %29, null, !dbg !649
  %31 = xor i1 %30, true, !dbg !649
  %32 = zext i1 %31 to i32, !dbg !649
  %33 = sext i32 %32 to i64, !dbg !649
  %34 = icmp ne i64 %33, 0, !dbg !649
  br i1 %34, label %35, label %36, !dbg !651

35:                                               ; preds = %23
  store i32 500, ptr %4, align 4, !dbg !652
  br label %40, !dbg !652

36:                                               ; preds = %23
  %37 = load ptr, ptr %6, align 8, !dbg !653
  %38 = load ptr, ptr %11, align 8, !dbg !654
  %39 = call i32 @json_response(ptr noundef %37, ptr noundef %38), !dbg !655
  store i32 %39, ptr %4, align 4, !dbg !656
  br label %40, !dbg !656

40:                                               ; preds = %36, %35, %22
  %41 = load i32, ptr %4, align 4, !dbg !657
  ret i32 %41, !dbg !657
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queries(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !658 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [1 x %struct.db_row], align 16
  %13 = alloca [2 x %struct.db_row], align 16
  %14 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !659, metadata !DIExpression()), !dbg !660
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !661, metadata !DIExpression()), !dbg !662
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !663, metadata !DIExpression()), !dbg !664
  call void @llvm.dbg.declare(metadata ptr %8, metadata !665, metadata !DIExpression()), !dbg !666
  %15 = load ptr, ptr %5, align 8, !dbg !667
  %16 = call ptr @lwan_request_get_query_param(ptr noundef %15, ptr noundef @.str.25), !dbg !668
  store ptr %16, ptr %8, align 8, !dbg !666
  %17 = load ptr, ptr %8, align 8, !dbg !669
  %18 = icmp ne ptr %17, null, !dbg !669
  %19 = xor i1 %18, true, !dbg !669
  %20 = zext i1 %19 to i32, !dbg !669
  %21 = sext i32 %20 to i64, !dbg !669
  %22 = icmp ne i64 %21, 0, !dbg !669
  br i1 %22, label %23, label %24, !dbg !671

23:                                               ; preds = %3
  store i32 400, ptr %4, align 4, !dbg !672
  br label %91, !dbg !672

24:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !673, metadata !DIExpression()), !dbg !674
  %25 = load ptr, ptr %8, align 8, !dbg !675
  %26 = call i64 @parse_long(ptr noundef %25, i64 noundef -1), !dbg !676
  store i64 %26, ptr %9, align 8, !dbg !674
  %27 = load i64, ptr %9, align 8, !dbg !677
  %28 = icmp sle i64 %27, 0, !dbg !677
  %29 = zext i1 %28 to i32, !dbg !677
  %30 = sext i32 %29 to i64, !dbg !677
  %31 = icmp ne i64 %30, 0, !dbg !677
  br i1 %31, label %32, label %33, !dbg !679

32:                                               ; preds = %24
  store i64 1, ptr %9, align 8, !dbg !680
  br label %41, !dbg !681

33:                                               ; preds = %24
  %34 = load i64, ptr %9, align 8, !dbg !682
  %35 = icmp sgt i64 %34, 500, !dbg !682
  %36 = zext i1 %35 to i32, !dbg !682
  %37 = sext i32 %36 to i64, !dbg !682
  %38 = icmp ne i64 %37, 0, !dbg !682
  br i1 %38, label %39, label %40, !dbg !684

39:                                               ; preds = %33
  store i64 500, ptr %9, align 8, !dbg !685
  br label %40, !dbg !686

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %32
  call void @llvm.dbg.declare(metadata ptr %10, metadata !687, metadata !DIExpression()), !dbg !688
  %42 = load ptr, ptr @database, align 8, !dbg !689
  %43 = call ptr @db_prepare_stmt(ptr noundef %42, ptr noundef @random_number_query, i64 noundef 41), !dbg !690
  store ptr %43, ptr %10, align 8, !dbg !688
  %44 = load ptr, ptr %10, align 8, !dbg !691
  %45 = icmp ne ptr %44, null, !dbg !691
  %46 = xor i1 %45, true, !dbg !691
  %47 = zext i1 %46 to i32, !dbg !691
  %48 = sext i32 %47 to i64, !dbg !691
  %49 = icmp ne i64 %48, 0, !dbg !691
  br i1 %49, label %50, label %51, !dbg !693

50:                                               ; preds = %41
  store i32 500, ptr %4, align 4, !dbg !694
  br label %91, !dbg !694

51:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %11, metadata !695, metadata !DIExpression()), !dbg !696
  %52 = call ptr @json_mkarray(), !dbg !697
  store ptr %52, ptr %11, align 8, !dbg !696
  %53 = load ptr, ptr %11, align 8, !dbg !698
  %54 = icmp ne ptr %53, null, !dbg !698
  %55 = xor i1 %54, true, !dbg !698
  %56 = zext i1 %55 to i32, !dbg !698
  %57 = sext i32 %56 to i64, !dbg !698
  %58 = icmp ne i64 %57, 0, !dbg !698
  br i1 %58, label %59, label %60, !dbg !700

59:                                               ; preds = %51
  br label %89, !dbg !701

60:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %12, metadata !702, metadata !DIExpression()), !dbg !703
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %12, ptr align 16 @__const.queries.rows, i64 24, i1 false), !dbg !703
  call void @llvm.dbg.declare(metadata ptr %13, metadata !704, metadata !DIExpression()), !dbg !705
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 48, i1 false), !dbg !705
  %61 = getelementptr inbounds [2 x %struct.db_row], ptr %13, i32 0, i32 0, !dbg !705
  %62 = getelementptr inbounds %struct.db_row, ptr %61, i32 0, i32 1, !dbg !705
  store i8 105, ptr %62, align 8, !dbg !705
  br label %63, !dbg !706

63:                                               ; preds = %79, %60
  %64 = load i64, ptr %9, align 8, !dbg !707
  %65 = add nsw i64 %64, -1, !dbg !707
  store i64 %65, ptr %9, align 8, !dbg !707
  %66 = icmp ne i64 %64, 0, !dbg !706
  br i1 %66, label %67, label %82, !dbg !706

67:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %14, metadata !708, metadata !DIExpression()), !dbg !710
  %68 = load ptr, ptr %10, align 8, !dbg !711
  %69 = getelementptr inbounds [1 x %struct.db_row], ptr %12, i64 0, i64 0, !dbg !712
  %70 = getelementptr inbounds [2 x %struct.db_row], ptr %13, i64 0, i64 0, !dbg !713
  %71 = call ptr @db_query(ptr noundef %68, ptr noundef %69, ptr noundef %70), !dbg !714
  store ptr %71, ptr %14, align 8, !dbg !710
  %72 = load ptr, ptr %14, align 8, !dbg !715
  %73 = icmp ne ptr %72, null, !dbg !715
  %74 = xor i1 %73, true, !dbg !715
  %75 = zext i1 %74 to i32, !dbg !715
  %76 = sext i32 %75 to i64, !dbg !715
  %77 = icmp ne i64 %76, 0, !dbg !715
  br i1 %77, label %78, label %79, !dbg !717

78:                                               ; preds = %67
  br label %87, !dbg !718

79:                                               ; preds = %67
  %80 = load ptr, ptr %11, align 8, !dbg !719
  %81 = load ptr, ptr %14, align 8, !dbg !720
  call void @json_append_element(ptr noundef %80, ptr noundef %81), !dbg !721
  br label %63, !dbg !706, !llvm.loop !722

82:                                               ; preds = %63
  %83 = load ptr, ptr %10, align 8, !dbg !725
  call void @db_stmt_finalize(ptr noundef %83), !dbg !726
  %84 = load ptr, ptr %6, align 8, !dbg !727
  %85 = load ptr, ptr %11, align 8, !dbg !728
  %86 = call i32 @json_response(ptr noundef %84, ptr noundef %85), !dbg !729
  store i32 %86, ptr %4, align 4, !dbg !730
  br label %91, !dbg !730

87:                                               ; preds = %78
  call void @llvm.dbg.label(metadata !731), !dbg !732
  %88 = load ptr, ptr %11, align 8, !dbg !733
  call void @json_delete(ptr noundef %88), !dbg !734
  br label %89, !dbg !734

89:                                               ; preds = %87, %59
  call void @llvm.dbg.label(metadata !735), !dbg !736
  %90 = load ptr, ptr %10, align 8, !dbg !737
  call void @db_stmt_finalize(ptr noundef %90), !dbg !738
  store i32 500, ptr %4, align 4, !dbg !739
  br label %91, !dbg !739

91:                                               ; preds = %89, %82, %50, %23
  %92 = load i32, ptr %4, align 4, !dbg !740
  ret i32 %92, !dbg !740
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plaintext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !741 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !742, metadata !DIExpression()), !dbg !743
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !744, metadata !DIExpression()), !dbg !745
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !746, metadata !DIExpression()), !dbg !747
  %7 = load ptr, ptr %5, align 8, !dbg !748
  %8 = getelementptr inbounds %struct.lwan_response_t_, ptr %7, i32 0, i32 0, !dbg !749
  %9 = load ptr, ptr %8, align 8, !dbg !749
  %10 = call zeroext i1 @strbuf_set_static(ptr noundef %9, ptr noundef @hello_world, i64 noundef 13), !dbg !750
  %11 = load ptr, ptr %5, align 8, !dbg !751
  %12 = getelementptr inbounds %struct.lwan_response_t_, ptr %11, i32 0, i32 1, !dbg !752
  store ptr @.str.26, ptr %12, align 8, !dbg !753
  ret i32 200, !dbg !754
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortunes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !755 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.Fortune, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !756, metadata !DIExpression()), !dbg !757
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !758, metadata !DIExpression()), !dbg !759
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !760, metadata !DIExpression()), !dbg !761
  call void @llvm.dbg.declare(metadata ptr %8, metadata !762, metadata !DIExpression()), !dbg !763
  %9 = load ptr, ptr @fortune_tpl, align 8, !dbg !764
  %10 = load ptr, ptr %6, align 8, !dbg !764
  %11 = getelementptr inbounds %struct.lwan_response_t_, ptr %10, i32 0, i32 0, !dbg !764
  %12 = load ptr, ptr %11, align 8, !dbg !764
  %13 = call ptr @lwan_tpl_apply_with_buffer(ptr noundef %9, ptr noundef %12, ptr noundef %8), !dbg !764
  %14 = icmp ne ptr %13, null, !dbg !764
  %15 = xor i1 %14, true, !dbg !764
  %16 = zext i1 %15 to i32, !dbg !764
  %17 = sext i32 %16 to i64, !dbg !764
  %18 = icmp ne i64 %17, 0, !dbg !764
  br i1 %18, label %19, label %20, !dbg !766

19:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !767
  br label %23, !dbg !767

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8, !dbg !768
  %22 = getelementptr inbounds %struct.lwan_response_t_, ptr %21, i32 0, i32 1, !dbg !769
  store ptr @.str.27, ptr %22, align 8, !dbg !770
  store i32 200, ptr %4, align 4, !dbg !771
  br label %23, !dbg !771

23:                                               ; preds = %20, %19
  %24 = load i32, ptr %4, align 4, !dbg !772
  ret i32 %24, !dbg !772
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @lwan_init(ptr noundef) #2

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

declare ptr @db_connect_mysql(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare ptr @db_connect_sqlite(ptr noundef, i1 noundef zeroext, ptr noundef) #2

declare ptr @lwan_tpl_compile_string(ptr noundef, ptr noundef) #2

declare void @lwan_set_url_map(ptr noundef, ptr noundef) #2

declare void @lwan_main_loop(ptr noundef) #2

declare void @lwan_tpl_free(ptr noundef) #2

declare void @db_disconnect(ptr noundef) #2

declare void @lwan_shutdown(ptr noundef) #2

declare ptr @json_mkobject() #2

declare void @json_append_member(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @json_mkstring(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_response(ptr noundef %0, ptr noundef %1) #0 !dbg !773 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !776, metadata !DIExpression()), !dbg !777
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.declare(metadata ptr %6, metadata !780, metadata !DIExpression()), !dbg !781
  call void @llvm.dbg.declare(metadata ptr %7, metadata !782, metadata !DIExpression()), !dbg !783
  %8 = load ptr, ptr %5, align 8, !dbg !784
  %9 = call ptr @json_stringify_length(ptr noundef %8, ptr noundef null, ptr noundef %6), !dbg !785
  store ptr %9, ptr %7, align 8, !dbg !786
  %10 = load ptr, ptr %5, align 8, !dbg !787
  call void @json_delete(ptr noundef %10), !dbg !788
  %11 = load ptr, ptr %7, align 8, !dbg !789
  %12 = icmp ne ptr %11, null, !dbg !789
  %13 = xor i1 %12, true, !dbg !789
  %14 = zext i1 %13 to i32, !dbg !789
  %15 = sext i32 %14 to i64, !dbg !789
  %16 = icmp ne i64 %15, 0, !dbg !789
  br i1 %16, label %17, label %18, !dbg !791

17:                                               ; preds = %2
  store i32 500, ptr %3, align 4, !dbg !792
  br label %28, !dbg !792

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !793
  %20 = getelementptr inbounds %struct.lwan_response_t_, ptr %19, i32 0, i32 0, !dbg !794
  %21 = load ptr, ptr %20, align 8, !dbg !794
  %22 = load ptr, ptr %7, align 8, !dbg !795
  %23 = load i64, ptr %6, align 8, !dbg !796
  %24 = call zeroext i1 @strbuf_set(ptr noundef %21, ptr noundef %22, i64 noundef %23), !dbg !797
  %25 = load ptr, ptr %7, align 8, !dbg !798
  call void @free(ptr noundef %25) #8, !dbg !799
  %26 = load ptr, ptr %4, align 8, !dbg !800
  %27 = getelementptr inbounds %struct.lwan_response_t_, ptr %26, i32 0, i32 1, !dbg !801
  store ptr @.str.22, ptr %27, align 8, !dbg !802
  store i32 200, ptr %3, align 4, !dbg !803
  br label %28, !dbg !803

28:                                               ; preds = %18, %17
  %29 = load i32, ptr %3, align 4, !dbg !804
  ret i32 %29, !dbg !804
}

declare ptr @json_stringify_length(ptr noundef, ptr noundef, ptr noundef) #2

declare void @json_delete(ptr noundef) #2

declare zeroext i1 @strbuf_set(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @db_prepare_stmt(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_query(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !805 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !809, metadata !DIExpression()), !dbg !810
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !811, metadata !DIExpression()), !dbg !812
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !813, metadata !DIExpression()), !dbg !814
  call void @llvm.dbg.declare(metadata ptr %7, metadata !815, metadata !DIExpression()), !dbg !816
  store ptr null, ptr %7, align 8, !dbg !816
  call void @llvm.dbg.declare(metadata ptr %8, metadata !817, metadata !DIExpression()), !dbg !818
  %9 = call i32 @rand() #8, !dbg !819
  %10 = srem i32 %9, 10000, !dbg !820
  store i32 %10, ptr %8, align 4, !dbg !818
  %11 = load i32, ptr %8, align 4, !dbg !821
  %12 = load ptr, ptr %5, align 8, !dbg !822
  %13 = getelementptr inbounds %struct.db_row, ptr %12, i64 0, !dbg !822
  %14 = getelementptr inbounds %struct.db_row, ptr %13, i32 0, i32 0, !dbg !823
  store i32 %11, ptr %14, align 8, !dbg !824
  %15 = load ptr, ptr %4, align 8, !dbg !825
  %16 = load ptr, ptr %5, align 8, !dbg !825
  %17 = call zeroext i1 @db_stmt_bind(ptr noundef %15, ptr noundef %16, i64 noundef 1), !dbg !825
  %18 = xor i1 %17, true, !dbg !825
  %19 = zext i1 %18 to i32, !dbg !825
  %20 = sext i32 %19 to i64, !dbg !825
  %21 = icmp ne i64 %20, 0, !dbg !825
  br i1 %21, label %22, label %23, !dbg !827

22:                                               ; preds = %3
  br label %53, !dbg !828

23:                                               ; preds = %3
  %24 = load ptr, ptr %4, align 8, !dbg !829
  %25 = load ptr, ptr %6, align 8, !dbg !829
  %26 = call zeroext i1 @db_stmt_step(ptr noundef %24, ptr noundef %25), !dbg !829
  %27 = xor i1 %26, true, !dbg !829
  %28 = zext i1 %27 to i32, !dbg !829
  %29 = sext i32 %28 to i64, !dbg !829
  %30 = icmp ne i64 %29, 0, !dbg !829
  br i1 %30, label %31, label %32, !dbg !831

31:                                               ; preds = %23
  br label %53, !dbg !832

32:                                               ; preds = %23
  %33 = call ptr @json_mkobject(), !dbg !833
  store ptr %33, ptr %7, align 8, !dbg !834
  %34 = load ptr, ptr %7, align 8, !dbg !835
  %35 = icmp ne ptr %34, null, !dbg !835
  %36 = xor i1 %35, true, !dbg !835
  %37 = zext i1 %36 to i32, !dbg !835
  %38 = sext i32 %37 to i64, !dbg !835
  %39 = icmp ne i64 %38, 0, !dbg !835
  br i1 %39, label %40, label %41, !dbg !837

40:                                               ; preds = %32
  br label %53, !dbg !838

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 8, !dbg !839
  %43 = load i32, ptr %8, align 4, !dbg !840
  %44 = sitofp i32 %43 to double, !dbg !840
  %45 = call ptr @json_mknumber(double noundef %44), !dbg !841
  call void @json_append_member(ptr noundef %42, ptr noundef @.str.23, ptr noundef %45), !dbg !842
  %46 = load ptr, ptr %7, align 8, !dbg !843
  %47 = load ptr, ptr %6, align 8, !dbg !844
  %48 = getelementptr inbounds %struct.db_row, ptr %47, i64 0, !dbg !844
  %49 = getelementptr inbounds %struct.db_row, ptr %48, i32 0, i32 0, !dbg !845
  %50 = load i32, ptr %49, align 8, !dbg !846
  %51 = sitofp i32 %50 to double, !dbg !844
  %52 = call ptr @json_mknumber(double noundef %51), !dbg !847
  call void @json_append_member(ptr noundef %46, ptr noundef @.str.24, ptr noundef %52), !dbg !848
  br label %53, !dbg !848

53:                                               ; preds = %41, %40, %31, %22
  call void @llvm.dbg.label(metadata !849), !dbg !850
  %54 = load ptr, ptr %7, align 8, !dbg !851
  ret ptr %54, !dbg !852
}

declare void @db_stmt_finalize(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @rand() #3

declare zeroext i1 @db_stmt_bind(ptr noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @db_stmt_step(ptr noundef, ptr noundef) #2

declare ptr @json_mknumber(double noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare ptr @lwan_request_get_query_param(ptr noundef, ptr noundef) #2

declare i64 @parse_long(ptr noundef, i64 noundef) #2

declare ptr @json_mkarray() #2

declare void @json_append_element(ptr noundef, ptr noundef) #2

declare zeroext i1 @strbuf_set_static(ptr noundef, ptr noundef, i64 noundef) #2

declare ptr @lwan_tpl_apply_with_buffer(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_list_generator(ptr noundef %0) #0 !dbg !292 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca ptr, align 8
  %6 = alloca %struct.array, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca [3 x %struct.db_row], align 16
  %10 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !853, metadata !DIExpression()), !dbg !854
  call void @llvm.dbg.declare(metadata ptr %4, metadata !855, metadata !DIExpression()), !dbg !859
  call void @llvm.dbg.declare(metadata ptr %5, metadata !860, metadata !DIExpression()), !dbg !862
  call void @llvm.dbg.declare(metadata ptr %6, metadata !863, metadata !DIExpression()), !dbg !872
  call void @llvm.dbg.declare(metadata ptr %7, metadata !873, metadata !DIExpression()), !dbg !874
  call void @llvm.dbg.declare(metadata ptr %8, metadata !875, metadata !DIExpression()), !dbg !876
  %11 = load ptr, ptr @database, align 8, !dbg !877
  %12 = call ptr @db_prepare_stmt(ptr noundef %11, ptr noundef @fortune_list_generator.fortune_query, i64 noundef 21), !dbg !878
  store ptr %12, ptr %7, align 8, !dbg !879
  %13 = load ptr, ptr %7, align 8, !dbg !880
  %14 = icmp ne ptr %13, null, !dbg !880
  %15 = xor i1 %14, true, !dbg !880
  %16 = zext i1 %15 to i32, !dbg !880
  %17 = sext i32 %16 to i64, !dbg !880
  %18 = icmp ne i64 %17, 0, !dbg !880
  br i1 %18, label %19, label %20, !dbg !882

19:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !883
  br label %84, !dbg !883

20:                                               ; preds = %1
  call void @array_init(ptr noundef %6, i64 noundef 16), !dbg !884
  call void @llvm.dbg.declare(metadata ptr %9, metadata !885, metadata !DIExpression()), !dbg !887
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 72, i1 false), !dbg !887
  %21 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !888
  %22 = getelementptr inbounds %struct.db_row, ptr %21, i32 0, i32 1, !dbg !889
  store i8 105, ptr %22, align 8, !dbg !889
  %23 = getelementptr inbounds %struct.db_row, ptr %21, i64 1, !dbg !888
  %24 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 0, !dbg !890
  %25 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 0, !dbg !891
  store ptr %25, ptr %24, align 8, !dbg !892
  %26 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 1, !dbg !890
  store i8 115, ptr %26, align 8, !dbg !890
  %27 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 2, !dbg !890
  store i64 256, ptr %27, align 8, !dbg !890
  %28 = getelementptr inbounds %struct.db_row, ptr %23, i64 1, !dbg !888
  br label %29, !dbg !893

29:                                               ; preds = %43, %20
  %30 = load ptr, ptr %7, align 8, !dbg !894
  %31 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !895
  %32 = call zeroext i1 @db_stmt_step(ptr noundef %30, ptr noundef %31), !dbg !896
  br i1 %32, label %33, label %44, !dbg !893

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !dbg !897
  %35 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !900
  %36 = getelementptr inbounds %struct.db_row, ptr %35, i32 0, i32 0, !dbg !901
  %37 = load i32, ptr %36, align 16, !dbg !902
  %38 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 1, !dbg !903
  %39 = getelementptr inbounds %struct.db_row, ptr %38, i32 0, i32 0, !dbg !904
  %40 = load ptr, ptr %39, align 8, !dbg !905
  %41 = call zeroext i1 @append_fortune(ptr noundef %34, ptr noundef %6, i32 noundef %37, ptr noundef %40), !dbg !906
  br i1 %41, label %43, label %42, !dbg !907

42:                                               ; preds = %33
  br label %82, !dbg !908

43:                                               ; preds = %33
  br label %29, !dbg !893, !llvm.loop !909

44:                                               ; preds = %29
  %45 = load ptr, ptr %3, align 8, !dbg !911
  %46 = call zeroext i1 @append_fortune(ptr noundef %45, ptr noundef %6, i32 noundef 0, ptr noundef @.str.29), !dbg !913
  br i1 %46, label %48, label %47, !dbg !914

47:                                               ; preds = %44
  br label %82, !dbg !915

48:                                               ; preds = %44
  call void @array_sort(ptr noundef %6, ptr noundef @fortune_compare), !dbg !916
  %49 = load ptr, ptr %3, align 8, !dbg !917
  %50 = call ptr @coro_get_data(ptr noundef %49), !dbg !918
  store ptr %50, ptr %5, align 8, !dbg !919
  store i64 0, ptr %8, align 8, !dbg !920
  br label %51, !dbg !922

51:                                               ; preds = %78, %48
  %52 = load i64, ptr %8, align 8, !dbg !923
  %53 = getelementptr inbounds %struct.array, ptr %6, i32 0, i32 1, !dbg !925
  %54 = load i64, ptr %53, align 8, !dbg !925
  %55 = icmp ult i64 %52, %54, !dbg !926
  br i1 %55, label %56, label %81, !dbg !927

56:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %10, metadata !928, metadata !DIExpression()), !dbg !930
  %57 = getelementptr inbounds %struct.array, ptr %6, i32 0, i32 0, !dbg !931
  %58 = load ptr, ptr %57, align 8, !dbg !931
  %59 = load i64, ptr %8, align 8, !dbg !932
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59, !dbg !933
  %61 = load ptr, ptr %60, align 8, !dbg !933
  store ptr %61, ptr %10, align 8, !dbg !930
  %62 = load ptr, ptr %10, align 8, !dbg !934
  %63 = getelementptr inbounds %struct.Fortune, ptr %62, i32 0, i32 0, !dbg !935
  %64 = getelementptr inbounds %struct.anon.10, ptr %63, i32 0, i32 1, !dbg !936
  %65 = load i32, ptr %64, align 8, !dbg !936
  %66 = load ptr, ptr %5, align 8, !dbg !937
  %67 = getelementptr inbounds %struct.Fortune, ptr %66, i32 0, i32 0, !dbg !938
  %68 = getelementptr inbounds %struct.anon.10, ptr %67, i32 0, i32 1, !dbg !939
  store i32 %65, ptr %68, align 8, !dbg !940
  %69 = load ptr, ptr %10, align 8, !dbg !941
  %70 = getelementptr inbounds %struct.Fortune, ptr %69, i32 0, i32 0, !dbg !942
  %71 = getelementptr inbounds %struct.anon.10, ptr %70, i32 0, i32 2, !dbg !943
  %72 = load ptr, ptr %71, align 8, !dbg !943
  %73 = load ptr, ptr %5, align 8, !dbg !944
  %74 = getelementptr inbounds %struct.Fortune, ptr %73, i32 0, i32 0, !dbg !945
  %75 = getelementptr inbounds %struct.anon.10, ptr %74, i32 0, i32 2, !dbg !946
  store ptr %72, ptr %75, align 8, !dbg !947
  %76 = load ptr, ptr %3, align 8, !dbg !948
  %77 = call i32 @coro_yield(ptr noundef %76, i32 noundef 1), !dbg !949
  br label %78, !dbg !950

78:                                               ; preds = %56
  %79 = load i64, ptr %8, align 8, !dbg !951
  %80 = add i64 %79, 1, !dbg !951
  store i64 %80, ptr %8, align 8, !dbg !951
  br label %51, !dbg !952, !llvm.loop !953

81:                                               ; preds = %51
  br label %82, !dbg !954

82:                                               ; preds = %81, %47, %42
  call void @llvm.dbg.label(metadata !955), !dbg !956
  call void @array_free_array(ptr noundef %6), !dbg !957
  %83 = load ptr, ptr %7, align 8, !dbg !958
  call void @db_stmt_finalize(ptr noundef %83), !dbg !959
  store i32 0, ptr %2, align 4, !dbg !960
  br label %84, !dbg !960

84:                                               ; preds = %82, %19
  %85 = load i32, ptr %2, align 4, !dbg !961
  ret i32 %85, !dbg !961
}

declare void @array_init(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @append_fortune(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !962 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !966, metadata !DIExpression()), !dbg !967
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !968, metadata !DIExpression()), !dbg !969
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !970, metadata !DIExpression()), !dbg !971
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !972, metadata !DIExpression()), !dbg !973
  call void @llvm.dbg.declare(metadata ptr %10, metadata !974, metadata !DIExpression()), !dbg !975
  %11 = load ptr, ptr %6, align 8, !dbg !976
  %12 = call ptr @coro_malloc(ptr noundef %11, i64 noundef 24), !dbg !977
  store ptr %12, ptr %10, align 8, !dbg !978
  %13 = load ptr, ptr %10, align 8, !dbg !979
  %14 = icmp ne ptr %13, null, !dbg !979
  %15 = xor i1 %14, true, !dbg !979
  %16 = zext i1 %15 to i32, !dbg !979
  %17 = sext i32 %16 to i64, !dbg !979
  %18 = icmp ne i64 %17, 0, !dbg !979
  br i1 %18, label %19, label %20, !dbg !981

19:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !982
  br label %46, !dbg !982

20:                                               ; preds = %4
  %21 = load i32, ptr %8, align 4, !dbg !983
  %22 = load ptr, ptr %10, align 8, !dbg !984
  %23 = getelementptr inbounds %struct.Fortune, ptr %22, i32 0, i32 0, !dbg !985
  %24 = getelementptr inbounds %struct.anon.10, ptr %23, i32 0, i32 1, !dbg !986
  store i32 %21, ptr %24, align 8, !dbg !987
  %25 = load ptr, ptr %6, align 8, !dbg !988
  %26 = load ptr, ptr %9, align 8, !dbg !989
  %27 = call ptr @coro_strdup(ptr noundef %25, ptr noundef %26), !dbg !990
  %28 = load ptr, ptr %10, align 8, !dbg !991
  %29 = getelementptr inbounds %struct.Fortune, ptr %28, i32 0, i32 0, !dbg !992
  %30 = getelementptr inbounds %struct.anon.10, ptr %29, i32 0, i32 2, !dbg !993
  store ptr %27, ptr %30, align 8, !dbg !994
  %31 = load ptr, ptr %10, align 8, !dbg !995
  %32 = getelementptr inbounds %struct.Fortune, ptr %31, i32 0, i32 0, !dbg !995
  %33 = getelementptr inbounds %struct.anon.10, ptr %32, i32 0, i32 2, !dbg !995
  %34 = load ptr, ptr %33, align 8, !dbg !995
  %35 = icmp ne ptr %34, null, !dbg !995
  %36 = xor i1 %35, true, !dbg !995
  %37 = zext i1 %36 to i32, !dbg !995
  %38 = sext i32 %37 to i64, !dbg !995
  %39 = icmp ne i64 %38, 0, !dbg !995
  br i1 %39, label %40, label %41, !dbg !997

40:                                               ; preds = %20
  store i1 false, ptr %5, align 1, !dbg !998
  br label %46, !dbg !998

41:                                               ; preds = %20
  %42 = load ptr, ptr %7, align 8, !dbg !999
  %43 = load ptr, ptr %10, align 8, !dbg !1000
  %44 = call i32 @array_append(ptr noundef %42, ptr noundef %43), !dbg !1001
  %45 = icmp sge i32 %44, 0, !dbg !1002
  store i1 %45, ptr %5, align 1, !dbg !1003
  br label %46, !dbg !1003

46:                                               ; preds = %41, %40, %19
  %47 = load i1, ptr %5, align 1, !dbg !1004
  ret i1 %47, !dbg !1004
}

declare void @array_sort(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_compare(ptr noundef %0, ptr noundef %1) #0 !dbg !1005 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1010, metadata !DIExpression()), !dbg !1011
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1012, metadata !DIExpression()), !dbg !1013
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1014, metadata !DIExpression()), !dbg !1015
  %12 = load ptr, ptr %4, align 8, !dbg !1016
  %13 = load ptr, ptr %12, align 8, !dbg !1017
  store ptr %13, ptr %6, align 8, !dbg !1015
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1018, metadata !DIExpression()), !dbg !1019
  %14 = load ptr, ptr %5, align 8, !dbg !1020
  %15 = load ptr, ptr %14, align 8, !dbg !1021
  store ptr %15, ptr %7, align 8, !dbg !1019
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1022, metadata !DIExpression()), !dbg !1023
  %16 = load ptr, ptr %6, align 8, !dbg !1024
  %17 = getelementptr inbounds %struct.Fortune, ptr %16, i32 0, i32 0, !dbg !1025
  %18 = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 2, !dbg !1026
  %19 = load ptr, ptr %18, align 8, !dbg !1026
  %20 = call i64 @strlen(ptr noundef %19) #10, !dbg !1027
  store i64 %20, ptr %8, align 8, !dbg !1023
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1028, metadata !DIExpression()), !dbg !1029
  %21 = load ptr, ptr %7, align 8, !dbg !1030
  %22 = getelementptr inbounds %struct.Fortune, ptr %21, i32 0, i32 0, !dbg !1031
  %23 = getelementptr inbounds %struct.anon.10, ptr %22, i32 0, i32 2, !dbg !1032
  %24 = load ptr, ptr %23, align 8, !dbg !1032
  %25 = call i64 @strlen(ptr noundef %24) #10, !dbg !1033
  store i64 %25, ptr %9, align 8, !dbg !1029
  %26 = load i64, ptr %8, align 8, !dbg !1034
  %27 = icmp ne i64 %26, 0, !dbg !1034
  br i1 %27, label %28, label %31, !dbg !1036

28:                                               ; preds = %2
  %29 = load i64, ptr %9, align 8, !dbg !1037
  %30 = icmp ne i64 %29, 0, !dbg !1037
  br i1 %30, label %36, label %31, !dbg !1038

31:                                               ; preds = %28, %2
  %32 = load i64, ptr %8, align 8, !dbg !1039
  %33 = load i64, ptr %9, align 8, !dbg !1040
  %34 = icmp ugt i64 %32, %33, !dbg !1041
  %35 = zext i1 %34 to i32, !dbg !1041
  store i32 %35, ptr %3, align 4, !dbg !1042
  br label %67, !dbg !1042

36:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1043, metadata !DIExpression()), !dbg !1044
  %37 = load i64, ptr %8, align 8, !dbg !1045
  %38 = load i64, ptr %9, align 8, !dbg !1046
  %39 = icmp ult i64 %37, %38, !dbg !1047
  br i1 %39, label %40, label %42, !dbg !1045

40:                                               ; preds = %36
  %41 = load i64, ptr %8, align 8, !dbg !1048
  br label %44, !dbg !1045

42:                                               ; preds = %36
  %43 = load i64, ptr %9, align 8, !dbg !1049
  br label %44, !dbg !1045

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ], !dbg !1045
  store i64 %45, ptr %10, align 8, !dbg !1044
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1050, metadata !DIExpression()), !dbg !1051
  %46 = load ptr, ptr %6, align 8, !dbg !1052
  %47 = getelementptr inbounds %struct.Fortune, ptr %46, i32 0, i32 0, !dbg !1053
  %48 = getelementptr inbounds %struct.anon.10, ptr %47, i32 0, i32 2, !dbg !1054
  %49 = load ptr, ptr %48, align 8, !dbg !1054
  %50 = load ptr, ptr %7, align 8, !dbg !1055
  %51 = getelementptr inbounds %struct.Fortune, ptr %50, i32 0, i32 0, !dbg !1056
  %52 = getelementptr inbounds %struct.anon.10, ptr %51, i32 0, i32 2, !dbg !1057
  %53 = load ptr, ptr %52, align 8, !dbg !1057
  %54 = load i64, ptr %10, align 8, !dbg !1058
  %55 = call i32 @memcmp(ptr noundef %49, ptr noundef %53, i64 noundef %54) #10, !dbg !1059
  store i32 %55, ptr %11, align 4, !dbg !1051
  %56 = load i32, ptr %11, align 4, !dbg !1060
  %57 = icmp eq i32 %56, 0, !dbg !1062
  br i1 %57, label %58, label %63, !dbg !1063

58:                                               ; preds = %44
  %59 = load i64, ptr %8, align 8, !dbg !1064
  %60 = load i64, ptr %9, align 8, !dbg !1065
  %61 = icmp ugt i64 %59, %60, !dbg !1066
  %62 = zext i1 %61 to i32, !dbg !1066
  store i32 %62, ptr %3, align 4, !dbg !1067
  br label %67, !dbg !1067

63:                                               ; preds = %44
  %64 = load i32, ptr %11, align 4, !dbg !1068
  %65 = icmp sgt i32 %64, 0, !dbg !1069
  %66 = zext i1 %65 to i32, !dbg !1069
  store i32 %66, ptr %3, align 4, !dbg !1070
  br label %67, !dbg !1070

67:                                               ; preds = %63, %58, %31
  %68 = load i32, ptr %3, align 4, !dbg !1071
  ret i32 %68, !dbg !1071
}

declare ptr @coro_get_data(ptr noundef) #2

declare i32 @coro_yield(ptr noundef, i32 noundef) #2

declare void @array_free_array(ptr noundef) #2

declare ptr @coro_malloc(ptr noundef, i64 noundef) #2

declare ptr @coro_strdup(ptr noundef, ptr noundef) #2

declare i32 @array_append(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

declare void @lwan_append_int_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_int_is_empty(ptr noundef) #2

declare void @lwan_append_str_escaped_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_str_is_empty(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }
attributes #10 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!7}
!llvm.module.flags = !{!485, !486, !487, !488, !489, !490, !491}
!llvm.ident = !{!492}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "url_map", scope: !2, file: !3, line: 306, type: !307, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 304, type: !4, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !293)
!3 = !DIFile(filename: "techempower/techempower.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "862c10ebb5d5d09bd221596387c59720")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = distinct !DICompileUnit(language: DW_LANG_C11, file: !8, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !9, retainedTypes: !69, globals: !92, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/raj/lwan/techempower/techempower.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "862c10ebb5d5d09bd221596387c59720")
!9 = !{!10, !30, !42, !50, !60}
!10 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 114, baseType: !12, size: 32, elements: !13)
!11 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!12 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!13 = !{!14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!14 = !DIEnumerator(name: "HTTP_OK", value: 200)
!15 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!16 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!17 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!18 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!19 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!20 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!21 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!22 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!23 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!24 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!25 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!26 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!27 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!28 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!29 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 145, baseType: !6, size: 32, elements: !31)
!31 = !{!32, !33, !34, !35, !36, !37, !38, !39, !40, !41}
!32 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!33 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!34 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!35 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!36 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!37 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!38 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!39 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!40 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!41 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!42 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 158, baseType: !6, size: 32, elements: !43)
!43 = !{!44, !45, !46, !47, !48, !49}
!44 = !DIEnumerator(name: "CONN_MASK", value: -1)
!45 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!46 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!47 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!48 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!49 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !11, line: 133, baseType: !12, size: 32, elements: !51)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59}
!52 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!53 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!54 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!55 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!56 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!57 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!58 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!59 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!60 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !61, line: 29, baseType: !12, size: 32, elements: !62)
!61 = !DIFile(filename: "techempower/json.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "90532975aa76ecb9e0e0525c7677d9b7")
!62 = !{!63, !64, !65, !66, !67, !68}
!63 = !DIEnumerator(name: "JSON_NULL", value: 0)
!64 = !DIEnumerator(name: "JSON_BOOL", value: 1)
!65 = !DIEnumerator(name: "JSON_STRING", value: 2)
!66 = !DIEnumerator(name: "JSON_NUMBER", value: 3)
!67 = !DIEnumerator(name: "JSON_ARRAY", value: 4)
!68 = !DIEnumerator(name: "JSON_OBJECT", value: 5)
!69 = !{!12, !70}
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Fortune", file: !3, line: 34, size: 192, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !73, file: !3, line: 40, baseType: !76, size: 192)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !73, file: !3, line: 35, size: 192, elements: !77)
!77 = !{!78, !88, !89}
!78 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !76, file: !3, line: 36, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !80, line: 28, baseType: !81)
!80 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DISubroutineType(types: !83)
!83 = !{!6, !84}
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !86, line: 34, baseType: !87)
!86 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!87 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !86, line: 34, flags: DIFlagFwdDecl)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !76, file: !3, line: 38, baseType: !6, size: 32, offset: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !76, file: !3, line: 39, baseType: !90, size: 64, offset: 128)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !{!93, !98, !103, !108, !113, !0, !118, !120, !122, !124, !126, !128, !133, !139, !144, !149, !151, !153, !158, !163, !168, !173, !178, !183, !188, !193, !198, !203, !208, !213, !218, !223, !225, !227, !232, !237, !240, !290, !297, !300, !302, !304}
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 6)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 4)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !3, line: 309, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 72, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 9)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 310, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 88, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 11)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 311, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 80, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 10)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !115, isLocal: true, isDefinition: true)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !110, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !110, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !110, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !105, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !130, isLocal: true, isDefinition: true)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 328, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 41)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 40, elements: !137)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!137 = !{!138}
!138 = !DISubrange(count: 5)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !141, isLocal: true, isDefinition: true)
!141 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, elements: !142)
!142 = !{!143}
!143 = !DISubrange(count: 23)
!144 = !DIGlobalVariableExpression(var: !145, expr: !DIExpression())
!145 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !146, isLocal: true, isDefinition: true)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 216, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 27)
!149 = !DIGlobalVariableExpression(var: !150, expr: !DIExpression())
!150 = distinct !DIGlobalVariable(scope: null, file: !3, line: 331, type: !146, isLocal: true, isDefinition: true)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 333, type: !146, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !3, line: 338, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 208, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 26)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !3, line: 339, type: !160, isLocal: true, isDefinition: true)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 24)
!163 = !DIGlobalVariableExpression(var: !164, expr: !DIExpression())
!164 = distinct !DIGlobalVariable(scope: null, file: !3, line: 340, type: !165, isLocal: true, isDefinition: true)
!165 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 240, elements: !166)
!166 = !{!167}
!167 = !DISubrange(count: 30)
!168 = !DIGlobalVariableExpression(var: !169, expr: !DIExpression())
!169 = distinct !DIGlobalVariable(scope: null, file: !3, line: 343, type: !170, isLocal: true, isDefinition: true)
!170 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 120, elements: !171)
!171 = !{!172}
!172 = !DISubrange(count: 15)
!173 = !DIGlobalVariableExpression(var: !174, expr: !DIExpression())
!174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !175, isLocal: true, isDefinition: true)
!175 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 272, elements: !176)
!176 = !{!177}
!177 = !DISubrange(count: 34)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 351, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 288, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 36)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(name: "database", scope: !7, file: !3, line: 70, type: !185, isLocal: true, isDefinition: true)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DICompositeType(tag: DW_TAG_structure_type, name: "db", file: !187, line: 24, flags: DIFlagFwdDecl)
!187 = !DIFile(filename: "techempower/database.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b5199ce24ba11b1ee7482ccc6d0952b7")
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(name: "fortune_tpl", scope: !7, file: !3, line: 71, type: !190, isLocal: true, isDefinition: true)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !80, line: 25, baseType: !192)
!192 = !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !80, line: 25, flags: DIFlagFwdDecl)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !195, isLocal: true, isDefinition: true)
!195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !196)
!196 = !{!197}
!197 = !DISubrange(count: 8)
!198 = !DIGlobalVariableExpression(var: !199, expr: !DIExpression())
!199 = distinct !DIGlobalVariable(name: "hello_world", scope: !7, file: !3, line: 31, type: !200, isLocal: true, isDefinition: true)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 112, elements: !201)
!201 = !{!202}
!202 = !DISubrange(count: 14)
!203 = !DIGlobalVariableExpression(var: !204, expr: !DIExpression())
!204 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !205, isLocal: true, isDefinition: true)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 17)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(name: "random_number_query", scope: !7, file: !3, line: 32, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 336, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 42)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !3, line: 123, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 3)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 124, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 104, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 13)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !195, isLocal: true, isDefinition: true)
!225 = !DIGlobalVariableExpression(var: !226, expr: !DIExpression())
!226 = distinct !DIGlobalVariable(scope: null, file: !3, line: 204, type: !110, isLocal: true, isDefinition: true)
!227 = !DIGlobalVariableExpression(var: !228, expr: !DIExpression())
!228 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !229, isLocal: true, isDefinition: true)
!229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 200, elements: !230)
!230 = !{!231}
!231 = !DISubrange(count: 25)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "fortunes_template_str", scope: !7, file: !3, line: 43, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 1608, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 201)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !239, isLocal: true, isDefinition: true)
!239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 40, elements: !137)
!240 = !DIGlobalVariableExpression(var: !241, expr: !DIExpression())
!241 = distinct !DIGlobalVariable(name: "fortune_desc", scope: !7, file: !3, line: 64, type: !242, isLocal: true, isDefinition: true)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 768, elements: !288)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !80, line: 26, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !80, line: 30, size: 384, elements: !246)
!246 = !{!247, !249, !256, !280, !285, !286}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !245, file: !80, line: 31, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !245, file: !80, line: 32, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !252, line: 85, baseType: !253)
!252 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !254, line: 152, baseType: !255)
!254 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!255 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !245, file: !80, line: 34, baseType: !257, size: 64, offset: 128)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !260, !279}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !262, line: 25, baseType: !263)
!262 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !262, line: 27, size: 256, elements: !264)
!264 = !{!265, !270, !278}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !263, file: !262, line: 31, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !263, file: !262, line: 28, size: 64, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !266, file: !262, line: 29, baseType: !90, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !266, file: !262, line: 30, baseType: !248, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !263, file: !262, line: 34, baseType: !271, size: 128, offset: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !263, file: !262, line: 32, size: 128, elements: !272)
!272 = !{!273, !277}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !271, file: !262, line: 33, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !275, line: 46, baseType: !276)
!275 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!276 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !271, file: !262, line: 33, baseType: !274, size: 64, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !263, file: !262, line: 35, baseType: !12, size: 32, offset: 192)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !245, file: !80, line: 35, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!284, !279}
!284 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !245, file: !80, line: 37, baseType: !79, size: 64, offset: 256)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !245, file: !80, line: 38, baseType: !287, size: 64, offset: 320)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!288 = !{!289}
!289 = !DISubrange(count: 2)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "fortune_query", scope: !292, file: !3, line: 245, type: !294, isLocal: true, isDefinition: true)
!292 = distinct !DISubprogram(name: "fortune_list_generator", scope: !3, file: !3, line: 243, type: !82, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!293 = !{}
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 176, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 22)
!297 = !DIGlobalVariableExpression(var: !298, expr: !DIExpression())
!298 = distinct !DIGlobalVariable(scope: null, file: !3, line: 269, type: !299, isLocal: true, isDefinition: true)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 336, elements: !211)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 59, type: !195, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 60, type: !220, isLocal: true, isDefinition: true)
!304 = !DIGlobalVariableExpression(var: !305, expr: !DIExpression())
!305 = distinct !DIGlobalVariable(name: "fortune_item_desc", scope: !7, file: !3, line: 58, type: !306, isLocal: true, isDefinition: true)
!306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !243, size: 1152, elements: !216)
!307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !308, size: 3456, elements: !96)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_url_map_t", file: !11, line: 109, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_url_map_t_", file: !11, line: 236, size: 576, elements: !311)
!311 = !{!312, !454, !455, !456, !457, !459, !479, !480}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !310, file: !11, line: 237, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!316, !317, !453, !279}
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !11, line: 131, baseType: !10)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !11, line: 106, baseType: !319)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !11, line: 206, size: 1280, elements: !320)
!320 = !{!321, !323, !324, !330, !331, !415, !426, !427, !436}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !319, file: !11, line: 207, baseType: !322, size: 32)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !11, line: 156, baseType: !30)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !319, file: !11, line: 208, baseType: !6, size: 32, offset: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !319, file: !11, line: 209, baseType: !325, size: 128, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !11, line: 110, baseType: !326)
!326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !11, line: 191, size: 128, elements: !327)
!327 = !{!328, !329}
!328 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !326, file: !11, line: 192, baseType: !90, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !326, file: !11, line: 193, baseType: !274, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !319, file: !11, line: 210, baseType: !325, size: 128, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !319, file: !11, line: 211, baseType: !332, size: 64, offset: 320)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !11, line: 112, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !11, line: 196, size: 256, elements: !335)
!335 = !{!336, !338, !339, !340, !413, !414}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !334, file: !11, line: 199, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !11, line: 165, baseType: !42)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !334, file: !11, line: 200, baseType: !12, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !334, file: !11, line: 201, baseType: !84, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !334, file: !11, line: 202, baseType: !341, size: 64, offset: 128)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !11, line: 108, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !11, line: 253, size: 832, elements: !344)
!344 = !{!345, !398, !407, !408, !410}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !343, file: !11, line: 254, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !11, line: 103, baseType: !348)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !11, line: 275, size: 640, elements: !349)
!349 = !{!350, !375, !376, !383, !387, !397}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !348, file: !11, line: 276, baseType: !351, size: 128)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !352, line: 25, baseType: !353)
!352 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !352, line: 41, size: 128, elements: !354)
!354 = !{!355, !371}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !353, file: !352, line: 42, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !352, line: 26, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !352, line: 29, size: 640, elements: !359)
!359 = !{!360, !362, !370}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !358, file: !352, line: 30, baseType: !361, size: 512)
!361 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 512, elements: !196)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !358, file: !352, line: 31, baseType: !363, size: 64, offset: 512)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !352, line: 27, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !352, line: 35, size: 192, elements: !366)
!366 = !{!367, !368, !369}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !365, file: !352, line: 36, baseType: !90, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !365, file: !352, line: 37, baseType: !279, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !365, file: !352, line: 38, baseType: !363, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !358, file: !352, line: 32, baseType: !6, size: 32, offset: 576)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !353, file: !352, line: 43, baseType: !372, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DISubroutineType(types: !374)
!374 = !{null, !279}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !348, file: !11, line: 277, baseType: !332, size: 64, offset: 128)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !348, file: !11, line: 283, baseType: !377, size: 128, offset: 192)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !11, line: 279, size: 128, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !377, file: !11, line: 280, baseType: !341, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !377, file: !11, line: 281, baseType: !12, size: 32, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !377, file: !11, line: 282, baseType: !382, size: 16, offset: 96)
!382 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !348, file: !11, line: 285, baseType: !384, size: 64, offset: 320)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !386, line: 6, flags: DIFlagFwdDecl)
!386 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!387 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !348, file: !11, line: 286, baseType: !388, size: 192, offset: 384)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !11, line: 111, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !11, line: 266, size: 192, elements: !390)
!390 = !{!391, !392, !393, !394, !395, !396}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !389, file: !11, line: 267, baseType: !90, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !389, file: !11, line: 268, baseType: !382, size: 16, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !389, file: !11, line: 269, baseType: !284, size: 8, offset: 80)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !389, file: !11, line: 270, baseType: !284, size: 8, offset: 88)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !389, file: !11, line: 271, baseType: !12, size: 32, offset: 96)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !389, file: !11, line: 272, baseType: !382, size: 16, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !348, file: !11, line: 287, baseType: !6, size: 32, offset: 576)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !343, file: !11, line: 259, baseType: !399, size: 576, offset: 64)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !11, line: 255, size: 576, elements: !400)
!400 = !{!401, !402, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !399, file: !11, line: 256, baseType: !165, size: 240)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !399, file: !11, line: 257, baseType: !165, size: 240, offset: 240)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !399, file: !11, line: 258, baseType: !404, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !405, line: 10, baseType: !406)
!405 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !254, line: 160, baseType: !255)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !343, file: !11, line: 261, baseType: !6, size: 32, offset: 640)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !343, file: !11, line: 262, baseType: !409, size: 64, offset: 672)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !6, size: 64, elements: !288)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !343, file: !11, line: 263, baseType: !411, size: 64, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !412, line: 27, baseType: !276)
!412 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!413 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !334, file: !11, line: 203, baseType: !6, size: 32, offset: 192)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !334, file: !11, line: 203, baseType: !6, size: 32, offset: 224)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !319, file: !11, line: 216, baseType: !416, size: 128, offset: 384)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !11, line: 213, size: 128, elements: !417)
!417 = !{!418, !425}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !416, file: !11, line: 214, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !11, line: 105, baseType: !421)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !11, line: 173, size: 128, elements: !422)
!422 = !{!423, !424}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !421, file: !11, line: 174, baseType: !90, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !421, file: !11, line: 175, baseType: !90, size: 64, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !416, file: !11, line: 215, baseType: !274, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !319, file: !11, line: 216, baseType: !416, size: 128, offset: 512)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !319, file: !11, line: 223, baseType: !428, size: 192, offset: 640)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !319, file: !11, line: 217, size: 192, elements: !429)
!429 = !{!430, !431}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !428, file: !11, line: 218, baseType: !404, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !428, file: !11, line: 222, baseType: !432, size: 128, offset: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !428, file: !11, line: 219, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !432, file: !11, line: 220, baseType: !251, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !432, file: !11, line: 221, baseType: !251, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !319, file: !11, line: 224, baseType: !437, size: 448, offset: 832)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !11, line: 107, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !11, line: 178, size: 448, elements: !439)
!439 = !{!440, !441, !442, !443, !444}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !438, file: !11, line: 179, baseType: !260, size: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !438, file: !11, line: 180, baseType: !248, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !438, file: !11, line: 181, baseType: !274, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !438, file: !11, line: 182, baseType: !419, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !438, file: !11, line: 188, baseType: !445, size: 192, offset: 256)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !438, file: !11, line: 184, size: 192, elements: !446)
!446 = !{!447, !451, !452}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !445, file: !11, line: 185, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DISubroutineType(types: !450)
!450 = !{!316, !317, !279}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !445, file: !11, line: 186, baseType: !279, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !445, file: !11, line: 187, baseType: !279, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !310, file: !11, line: 238, baseType: !279, size: 64, offset: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !310, file: !11, line: 240, baseType: !248, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !310, file: !11, line: 241, baseType: !274, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !310, file: !11, line: 242, baseType: !458, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !11, line: 143, baseType: !50)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !310, file: !11, line: 244, baseType: !460, size: 64, offset: 320)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !462)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !11, line: 104, baseType: !463)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !11, line: 227, size: 384, elements: !464)
!464 = !{!465, !466, !470, !476, !477, !478}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !463, file: !11, line: 228, baseType: !248, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !463, file: !11, line: 229, baseType: !467, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DISubroutineType(types: !469)
!469 = !{!279, !279}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !463, file: !11, line: 230, baseType: !471, size: 64, offset: 128)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DISubroutineType(types: !473)
!473 = !{!279, !474}
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !463, file: !11, line: 231, baseType: !372, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !463, file: !11, line: 232, baseType: !313, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !463, file: !11, line: 233, baseType: !458, size: 32, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !310, file: !11, line: 245, baseType: !279, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !310, file: !11, line: 250, baseType: !481, size: 128, offset: 448)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !310, file: !11, line: 247, size: 128, elements: !482)
!482 = !{!483, !484}
!483 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !481, file: !11, line: 248, baseType: !90, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !481, file: !11, line: 249, baseType: !90, size: 64, offset: 64)
!485 = !{i32 7, !"Dwarf Version", i32 5}
!486 = !{i32 2, !"Debug Info Version", i32 3}
!487 = !{i32 1, !"wchar_size", i32 4}
!488 = !{i32 8, !"PIC Level", i32 2}
!489 = !{i32 7, !"PIE Level", i32 2}
!490 = !{i32 7, !"uwtable", i32 2}
!491 = !{i32 7, !"frame-pointer", i32 2}
!492 = !{!"clang version 16.0.0"}
!493 = !DILocalVariable(name: "l", scope: !2, file: !3, line: 314, type: !347)
!494 = !DILocation(line: 314, column: 12, scope: !2)
!495 = !DILocation(line: 316, column: 5, scope: !2)
!496 = !DILocation(line: 318, column: 25, scope: !2)
!497 = !DILocation(line: 318, column: 11, scope: !2)
!498 = !DILocation(line: 318, column: 5, scope: !2)
!499 = !DILocation(line: 320, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !2, file: !3, line: 320, column: 9)
!501 = !DILocation(line: 320, column: 9, scope: !2)
!502 = !DILocalVariable(name: "user", scope: !503, file: !3, line: 321, type: !248)
!503 = distinct !DILexicalBlock(scope: !500, file: !3, line: 320, column: 30)
!504 = !DILocation(line: 321, column: 21, scope: !503)
!505 = !DILocation(line: 321, column: 28, scope: !503)
!506 = !DILocalVariable(name: "password", scope: !503, file: !3, line: 322, type: !248)
!507 = !DILocation(line: 322, column: 21, scope: !503)
!508 = !DILocation(line: 322, column: 32, scope: !503)
!509 = !DILocalVariable(name: "hostname", scope: !503, file: !3, line: 323, type: !248)
!510 = !DILocation(line: 323, column: 21, scope: !503)
!511 = !DILocation(line: 323, column: 32, scope: !503)
!512 = !DILocalVariable(name: "db", scope: !503, file: !3, line: 324, type: !248)
!513 = !DILocation(line: 324, column: 21, scope: !503)
!514 = !DILocation(line: 324, column: 26, scope: !503)
!515 = !DILocation(line: 326, column: 14, scope: !516)
!516 = distinct !DILexicalBlock(scope: !503, file: !3, line: 326, column: 13)
!517 = !DILocation(line: 326, column: 13, scope: !503)
!518 = !DILocation(line: 327, column: 13, scope: !516)
!519 = !DILocation(line: 328, column: 14, scope: !520)
!520 = distinct !DILexicalBlock(scope: !503, file: !3, line: 328, column: 13)
!521 = !DILocation(line: 328, column: 13, scope: !503)
!522 = !DILocation(line: 329, column: 13, scope: !520)
!523 = !DILocation(line: 330, column: 14, scope: !524)
!524 = distinct !DILexicalBlock(scope: !503, file: !3, line: 330, column: 13)
!525 = !DILocation(line: 330, column: 13, scope: !503)
!526 = !DILocation(line: 331, column: 13, scope: !524)
!527 = !DILocation(line: 332, column: 14, scope: !528)
!528 = distinct !DILexicalBlock(scope: !503, file: !3, line: 332, column: 13)
!529 = !DILocation(line: 332, column: 13, scope: !503)
!530 = !DILocation(line: 333, column: 13, scope: !528)
!531 = !DILocation(line: 335, column: 37, scope: !503)
!532 = !DILocation(line: 335, column: 47, scope: !503)
!533 = !DILocation(line: 335, column: 53, scope: !503)
!534 = !DILocation(line: 335, column: 63, scope: !503)
!535 = !DILocation(line: 335, column: 20, scope: !503)
!536 = !DILocation(line: 335, column: 18, scope: !503)
!537 = !DILocation(line: 336, column: 5, scope: !503)
!538 = !DILocalVariable(name: "pragmas", scope: !539, file: !3, line: 337, type: !540)
!539 = distinct !DILexicalBlock(scope: !500, file: !3, line: 336, column: 12)
!540 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 256, elements: !101)
!541 = !DILocation(line: 337, column: 21, scope: !539)
!542 = !DILocation(line: 343, column: 62, scope: !539)
!543 = !DILocation(line: 343, column: 20, scope: !539)
!544 = !DILocation(line: 343, column: 18, scope: !539)
!545 = !DILocation(line: 346, column: 10, scope: !546)
!546 = distinct !DILexicalBlock(scope: !2, file: !3, line: 346, column: 9)
!547 = !DILocation(line: 346, column: 9, scope: !2)
!548 = !DILocation(line: 347, column: 9, scope: !546)
!549 = !DILocation(line: 349, column: 19, scope: !2)
!550 = !DILocation(line: 349, column: 17, scope: !2)
!551 = !DILocation(line: 350, column: 10, scope: !552)
!552 = distinct !DILexicalBlock(scope: !2, file: !3, line: 350, column: 9)
!553 = !DILocation(line: 350, column: 9, scope: !2)
!554 = !DILocation(line: 351, column: 9, scope: !552)
!555 = !DILocation(line: 353, column: 5, scope: !2)
!556 = !DILocation(line: 354, column: 5, scope: !2)
!557 = !DILocation(line: 356, column: 19, scope: !2)
!558 = !DILocation(line: 356, column: 5, scope: !2)
!559 = !DILocation(line: 357, column: 19, scope: !2)
!560 = !DILocation(line: 357, column: 5, scope: !2)
!561 = !DILocation(line: 358, column: 5, scope: !2)
!562 = !DILocation(line: 360, column: 5, scope: !2)
!563 = distinct !DISubprogram(name: "json", scope: !3, file: !3, line: 92, type: !314, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!564 = !DILocalVariable(name: "request", arg: 1, scope: !563, file: !3, line: 92, type: !317)
!565 = !DILocation(line: 92, column: 22, scope: !563)
!566 = !DILocalVariable(name: "response", arg: 2, scope: !563, file: !3, line: 93, type: !453)
!567 = !DILocation(line: 93, column: 23, scope: !563)
!568 = !DILocalVariable(name: "data", arg: 3, scope: !563, file: !3, line: 94, type: !279)
!569 = !DILocation(line: 94, column: 12, scope: !563)
!570 = !DILocalVariable(name: "hello", scope: !563, file: !3, line: 96, type: !571)
!571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonNode", file: !61, line: 38, baseType: !573)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "JsonNode", file: !61, line: 40, size: 448, elements: !574)
!574 = !{!575, !576, !577, !578, !579, !581}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !573, file: !61, line: 43, baseType: !571, size: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !573, file: !61, line: 44, baseType: !571, size: 64, offset: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !573, file: !61, line: 44, baseType: !571, size: 64, offset: 128)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !573, file: !61, line: 47, baseType: !90, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !573, file: !61, line: 49, baseType: !580, size: 32, offset: 256)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonTag", file: !61, line: 36, baseType: !60)
!581 = !DIDerivedType(tag: DW_TAG_member, scope: !573, file: !61, line: 50, baseType: !582, size: 128, offset: 320)
!582 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !573, file: !61, line: 50, size: 128, elements: !583)
!583 = !{!584, !585, !586, !588}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "bool_", scope: !582, file: !61, line: 52, baseType: !284, size: 8)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "string_", scope: !582, file: !61, line: 55, baseType: !90, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "number_", scope: !582, file: !61, line: 58, baseType: !587, size: 64)
!587 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !582, file: !61, line: 64, baseType: !589, size: 128)
!589 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !582, file: !61, line: 62, size: 128, elements: !590)
!590 = !{!591, !592}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !589, file: !61, line: 63, baseType: !571, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !589, file: !61, line: 63, baseType: !571, size: 64, offset: 64)
!593 = !DILocation(line: 96, column: 15, scope: !563)
!594 = !DILocation(line: 96, column: 23, scope: !563)
!595 = !DILocation(line: 97, column: 9, scope: !596)
!596 = distinct !DILexicalBlock(scope: !563, file: !3, line: 97, column: 9)
!597 = !DILocation(line: 97, column: 9, scope: !563)
!598 = !DILocation(line: 98, column: 9, scope: !596)
!599 = !DILocation(line: 100, column: 24, scope: !563)
!600 = !DILocation(line: 100, column: 42, scope: !563)
!601 = !DILocation(line: 100, column: 5, scope: !563)
!602 = !DILocation(line: 102, column: 26, scope: !563)
!603 = !DILocation(line: 102, column: 36, scope: !563)
!604 = !DILocation(line: 102, column: 12, scope: !563)
!605 = !DILocation(line: 102, column: 5, scope: !563)
!606 = !DILocation(line: 103, column: 1, scope: !563)
!607 = distinct !DISubprogram(name: "db", scope: !3, file: !3, line: 131, type: !314, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!608 = !DILocalVariable(name: "request", arg: 1, scope: !607, file: !3, line: 131, type: !317)
!609 = !DILocation(line: 131, column: 20, scope: !607)
!610 = !DILocalVariable(name: "response", arg: 2, scope: !607, file: !3, line: 132, type: !453)
!611 = !DILocation(line: 132, column: 21, scope: !607)
!612 = !DILocalVariable(name: "data", arg: 3, scope: !607, file: !3, line: 133, type: !279)
!613 = !DILocation(line: 133, column: 10, scope: !607)
!614 = !DILocalVariable(name: "rows", scope: !607, file: !3, line: 135, type: !615)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 192, elements: !625)
!616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_row", file: !187, line: 27, size: 192, elements: !617)
!617 = !{!618, !623, !624}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !616, file: !187, line: 31, baseType: !619, size: 64)
!619 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !616, file: !187, line: 28, size: 64, elements: !620)
!620 = !{!621, !622}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !619, file: !187, line: 29, baseType: !90, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !619, file: !187, line: 30, baseType: !6, size: 32)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !616, file: !187, line: 32, baseType: !91, size: 8, offset: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !616, file: !187, line: 33, baseType: !274, size: 64, offset: 128)
!625 = !{!626}
!626 = !DISubrange(count: 1)
!627 = !DILocation(line: 135, column: 19, scope: !607)
!628 = !DILocalVariable(name: "results", scope: !607, file: !3, line: 136, type: !629)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 384, elements: !288)
!630 = !DILocation(line: 136, column: 19, scope: !607)
!631 = !DILocalVariable(name: "stmt", scope: !607, file: !3, line: 137, type: !632)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt", file: !187, line: 25, flags: DIFlagFwdDecl)
!634 = !DILocation(line: 137, column: 21, scope: !607)
!635 = !DILocation(line: 137, column: 44, scope: !607)
!636 = !DILocation(line: 137, column: 28, scope: !607)
!637 = !DILocation(line: 139, column: 9, scope: !638)
!638 = distinct !DILexicalBlock(scope: !607, file: !3, line: 139, column: 9)
!639 = !DILocation(line: 139, column: 9, scope: !607)
!640 = !DILocation(line: 140, column: 9, scope: !638)
!641 = !DILocalVariable(name: "object", scope: !607, file: !3, line: 142, type: !571)
!642 = !DILocation(line: 142, column: 15, scope: !607)
!643 = !DILocation(line: 142, column: 33, scope: !607)
!644 = !DILocation(line: 142, column: 39, scope: !607)
!645 = !DILocation(line: 142, column: 45, scope: !607)
!646 = !DILocation(line: 142, column: 24, scope: !607)
!647 = !DILocation(line: 143, column: 22, scope: !607)
!648 = !DILocation(line: 143, column: 5, scope: !607)
!649 = !DILocation(line: 145, column: 9, scope: !650)
!650 = distinct !DILexicalBlock(scope: !607, file: !3, line: 145, column: 9)
!651 = !DILocation(line: 145, column: 9, scope: !607)
!652 = !DILocation(line: 146, column: 9, scope: !650)
!653 = !DILocation(line: 148, column: 26, scope: !607)
!654 = !DILocation(line: 148, column: 36, scope: !607)
!655 = !DILocation(line: 148, column: 12, scope: !607)
!656 = !DILocation(line: 148, column: 5, scope: !607)
!657 = !DILocation(line: 149, column: 1, scope: !607)
!658 = distinct !DISubprogram(name: "queries", scope: !3, file: !3, line: 152, type: !314, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!659 = !DILocalVariable(name: "request", arg: 1, scope: !658, file: !3, line: 152, type: !317)
!660 = !DILocation(line: 152, column: 25, scope: !658)
!661 = !DILocalVariable(name: "response", arg: 2, scope: !658, file: !3, line: 153, type: !453)
!662 = !DILocation(line: 153, column: 26, scope: !658)
!663 = !DILocalVariable(name: "data", arg: 3, scope: !658, file: !3, line: 154, type: !279)
!664 = !DILocation(line: 154, column: 15, scope: !658)
!665 = !DILocalVariable(name: "queries_str", scope: !658, file: !3, line: 156, type: !248)
!666 = !DILocation(line: 156, column: 17, scope: !658)
!667 = !DILocation(line: 156, column: 60, scope: !658)
!668 = !DILocation(line: 156, column: 31, scope: !658)
!669 = !DILocation(line: 158, column: 9, scope: !670)
!670 = distinct !DILexicalBlock(scope: !658, file: !3, line: 158, column: 9)
!671 = !DILocation(line: 158, column: 9, scope: !658)
!672 = !DILocation(line: 159, column: 9, scope: !670)
!673 = !DILocalVariable(name: "queries", scope: !658, file: !3, line: 161, type: !255)
!674 = !DILocation(line: 161, column: 10, scope: !658)
!675 = !DILocation(line: 161, column: 31, scope: !658)
!676 = !DILocation(line: 161, column: 20, scope: !658)
!677 = !DILocation(line: 162, column: 9, scope: !678)
!678 = distinct !DILexicalBlock(scope: !658, file: !3, line: 162, column: 9)
!679 = !DILocation(line: 162, column: 9, scope: !658)
!680 = !DILocation(line: 163, column: 17, scope: !678)
!681 = !DILocation(line: 163, column: 9, scope: !678)
!682 = !DILocation(line: 164, column: 14, scope: !683)
!683 = distinct !DILexicalBlock(scope: !678, file: !3, line: 164, column: 14)
!684 = !DILocation(line: 164, column: 14, scope: !678)
!685 = !DILocation(line: 165, column: 17, scope: !683)
!686 = !DILocation(line: 165, column: 9, scope: !683)
!687 = !DILocalVariable(name: "stmt", scope: !658, file: !3, line: 167, type: !632)
!688 = !DILocation(line: 167, column: 21, scope: !658)
!689 = !DILocation(line: 167, column: 44, scope: !658)
!690 = !DILocation(line: 167, column: 28, scope: !658)
!691 = !DILocation(line: 169, column: 9, scope: !692)
!692 = distinct !DILexicalBlock(scope: !658, file: !3, line: 169, column: 9)
!693 = !DILocation(line: 169, column: 9, scope: !658)
!694 = !DILocation(line: 170, column: 9, scope: !692)
!695 = !DILocalVariable(name: "array", scope: !658, file: !3, line: 172, type: !571)
!696 = !DILocation(line: 172, column: 15, scope: !658)
!697 = !DILocation(line: 172, column: 23, scope: !658)
!698 = !DILocation(line: 173, column: 9, scope: !699)
!699 = distinct !DILexicalBlock(scope: !658, file: !3, line: 173, column: 9)
!700 = !DILocation(line: 173, column: 9, scope: !658)
!701 = !DILocation(line: 174, column: 9, scope: !699)
!702 = !DILocalVariable(name: "rows", scope: !658, file: !3, line: 176, type: !615)
!703 = !DILocation(line: 176, column: 19, scope: !658)
!704 = !DILocalVariable(name: "results", scope: !658, file: !3, line: 177, type: !629)
!705 = !DILocation(line: 177, column: 19, scope: !658)
!706 = !DILocation(line: 178, column: 5, scope: !658)
!707 = !DILocation(line: 178, column: 19, scope: !658)
!708 = !DILocalVariable(name: "object", scope: !709, file: !3, line: 179, type: !571)
!709 = distinct !DILexicalBlock(scope: !658, file: !3, line: 178, column: 23)
!710 = !DILocation(line: 179, column: 19, scope: !709)
!711 = !DILocation(line: 179, column: 37, scope: !709)
!712 = !DILocation(line: 179, column: 43, scope: !709)
!713 = !DILocation(line: 179, column: 49, scope: !709)
!714 = !DILocation(line: 179, column: 28, scope: !709)
!715 = !DILocation(line: 181, column: 13, scope: !716)
!716 = distinct !DILexicalBlock(scope: !709, file: !3, line: 181, column: 13)
!717 = !DILocation(line: 181, column: 13, scope: !709)
!718 = !DILocation(line: 182, column: 13, scope: !716)
!719 = !DILocation(line: 184, column: 29, scope: !709)
!720 = !DILocation(line: 184, column: 36, scope: !709)
!721 = !DILocation(line: 184, column: 9, scope: !709)
!722 = distinct !{!722, !706, !723, !724}
!723 = !DILocation(line: 185, column: 5, scope: !658)
!724 = !{!"llvm.loop.mustprogress"}
!725 = !DILocation(line: 187, column: 22, scope: !658)
!726 = !DILocation(line: 187, column: 5, scope: !658)
!727 = !DILocation(line: 188, column: 26, scope: !658)
!728 = !DILocation(line: 188, column: 36, scope: !658)
!729 = !DILocation(line: 188, column: 12, scope: !658)
!730 = !DILocation(line: 188, column: 5, scope: !658)
!731 = !DILabel(scope: !658, name: "out_array", file: !3, line: 190)
!732 = !DILocation(line: 190, column: 1, scope: !658)
!733 = !DILocation(line: 191, column: 17, scope: !658)
!734 = !DILocation(line: 191, column: 5, scope: !658)
!735 = !DILabel(scope: !658, name: "out_no_array", file: !3, line: 192)
!736 = !DILocation(line: 192, column: 1, scope: !658)
!737 = !DILocation(line: 193, column: 22, scope: !658)
!738 = !DILocation(line: 193, column: 5, scope: !658)
!739 = !DILocation(line: 194, column: 5, scope: !658)
!740 = !DILocation(line: 195, column: 1, scope: !658)
!741 = distinct !DISubprogram(name: "plaintext", scope: !3, file: !3, line: 198, type: !314, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!742 = !DILocalVariable(name: "request", arg: 1, scope: !741, file: !3, line: 198, type: !317)
!743 = !DILocation(line: 198, column: 27, scope: !741)
!744 = !DILocalVariable(name: "response", arg: 2, scope: !741, file: !3, line: 199, type: !453)
!745 = !DILocation(line: 199, column: 28, scope: !741)
!746 = !DILocalVariable(name: "data", arg: 3, scope: !741, file: !3, line: 200, type: !279)
!747 = !DILocation(line: 200, column: 17, scope: !741)
!748 = !DILocation(line: 202, column: 23, scope: !741)
!749 = !DILocation(line: 202, column: 33, scope: !741)
!750 = !DILocation(line: 202, column: 5, scope: !741)
!751 = !DILocation(line: 204, column: 5, scope: !741)
!752 = !DILocation(line: 204, column: 15, scope: !741)
!753 = !DILocation(line: 204, column: 25, scope: !741)
!754 = !DILocation(line: 205, column: 5, scope: !741)
!755 = distinct !DISubprogram(name: "fortunes", scope: !3, file: !3, line: 289, type: !314, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!756 = !DILocalVariable(name: "request", arg: 1, scope: !755, file: !3, line: 289, type: !317)
!757 = !DILocation(line: 289, column: 26, scope: !755)
!758 = !DILocalVariable(name: "response", arg: 2, scope: !755, file: !3, line: 290, type: !453)
!759 = !DILocation(line: 290, column: 27, scope: !755)
!760 = !DILocalVariable(name: "data", arg: 3, scope: !755, file: !3, line: 291, type: !279)
!761 = !DILocation(line: 291, column: 16, scope: !755)
!762 = !DILocalVariable(name: "fortune", scope: !755, file: !3, line: 293, type: !73)
!763 = !DILocation(line: 293, column: 20, scope: !755)
!764 = !DILocation(line: 295, column: 9, scope: !765)
!765 = distinct !DILexicalBlock(scope: !755, file: !3, line: 295, column: 9)
!766 = !DILocation(line: 295, column: 9, scope: !755)
!767 = !DILocation(line: 297, column: 8, scope: !765)
!768 = !DILocation(line: 299, column: 5, scope: !755)
!769 = !DILocation(line: 299, column: 15, scope: !755)
!770 = !DILocation(line: 299, column: 25, scope: !755)
!771 = !DILocation(line: 300, column: 5, scope: !755)
!772 = !DILocation(line: 301, column: 1, scope: !755)
!773 = distinct !DISubprogram(name: "json_response", scope: !3, file: !3, line: 74, type: !774, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!774 = !DISubroutineType(types: !775)
!775 = !{!316, !453, !571}
!776 = !DILocalVariable(name: "response", arg: 1, scope: !773, file: !3, line: 74, type: !453)
!777 = !DILocation(line: 74, column: 32, scope: !773)
!778 = !DILocalVariable(name: "node", arg: 2, scope: !773, file: !3, line: 74, type: !571)
!779 = !DILocation(line: 74, column: 52, scope: !773)
!780 = !DILocalVariable(name: "length", scope: !773, file: !3, line: 76, type: !274)
!781 = !DILocation(line: 76, column: 12, scope: !773)
!782 = !DILocalVariable(name: "serialized", scope: !773, file: !3, line: 77, type: !90)
!783 = !DILocation(line: 77, column: 11, scope: !773)
!784 = !DILocation(line: 79, column: 40, scope: !773)
!785 = !DILocation(line: 79, column: 18, scope: !773)
!786 = !DILocation(line: 79, column: 16, scope: !773)
!787 = !DILocation(line: 80, column: 17, scope: !773)
!788 = !DILocation(line: 80, column: 5, scope: !773)
!789 = !DILocation(line: 81, column: 9, scope: !790)
!790 = distinct !DILexicalBlock(scope: !773, file: !3, line: 81, column: 9)
!791 = !DILocation(line: 81, column: 9, scope: !773)
!792 = !DILocation(line: 82, column: 9, scope: !790)
!793 = !DILocation(line: 84, column: 16, scope: !773)
!794 = !DILocation(line: 84, column: 26, scope: !773)
!795 = !DILocation(line: 84, column: 34, scope: !773)
!796 = !DILocation(line: 84, column: 46, scope: !773)
!797 = !DILocation(line: 84, column: 5, scope: !773)
!798 = !DILocation(line: 85, column: 10, scope: !773)
!799 = !DILocation(line: 85, column: 5, scope: !773)
!800 = !DILocation(line: 87, column: 5, scope: !773)
!801 = !DILocation(line: 87, column: 15, scope: !773)
!802 = !DILocation(line: 87, column: 25, scope: !773)
!803 = !DILocation(line: 88, column: 5, scope: !773)
!804 = !DILocation(line: 89, column: 1, scope: !773)
!805 = distinct !DISubprogram(name: "db_query", scope: !3, file: !3, line: 106, type: !806, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!806 = !DISubroutineType(types: !807)
!807 = !{!571, !632, !808, !808}
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!809 = !DILocalVariable(name: "stmt", arg: 1, scope: !805, file: !3, line: 106, type: !632)
!810 = !DILocation(line: 106, column: 26, scope: !805)
!811 = !DILocalVariable(name: "rows", arg: 2, scope: !805, file: !3, line: 106, type: !808)
!812 = !DILocation(line: 106, column: 46, scope: !805)
!813 = !DILocalVariable(name: "results", arg: 3, scope: !805, file: !3, line: 106, type: !808)
!814 = !DILocation(line: 106, column: 68, scope: !805)
!815 = !DILocalVariable(name: "object", scope: !805, file: !3, line: 108, type: !571)
!816 = !DILocation(line: 108, column: 15, scope: !805)
!817 = !DILocalVariable(name: "id", scope: !805, file: !3, line: 109, type: !6)
!818 = !DILocation(line: 109, column: 9, scope: !805)
!819 = !DILocation(line: 109, column: 14, scope: !805)
!820 = !DILocation(line: 109, column: 21, scope: !805)
!821 = !DILocation(line: 111, column: 19, scope: !805)
!822 = !DILocation(line: 111, column: 5, scope: !805)
!823 = !DILocation(line: 111, column: 13, scope: !805)
!824 = !DILocation(line: 111, column: 17, scope: !805)
!825 = !DILocation(line: 113, column: 9, scope: !826)
!826 = distinct !DILexicalBlock(scope: !805, file: !3, line: 113, column: 9)
!827 = !DILocation(line: 113, column: 9, scope: !805)
!828 = !DILocation(line: 114, column: 9, scope: !826)
!829 = !DILocation(line: 116, column: 9, scope: !830)
!830 = distinct !DILexicalBlock(scope: !805, file: !3, line: 116, column: 9)
!831 = !DILocation(line: 116, column: 9, scope: !805)
!832 = !DILocation(line: 117, column: 9, scope: !830)
!833 = !DILocation(line: 119, column: 14, scope: !805)
!834 = !DILocation(line: 119, column: 12, scope: !805)
!835 = !DILocation(line: 120, column: 9, scope: !836)
!836 = distinct !DILexicalBlock(scope: !805, file: !3, line: 120, column: 9)
!837 = !DILocation(line: 120, column: 9, scope: !805)
!838 = !DILocation(line: 121, column: 9, scope: !836)
!839 = !DILocation(line: 123, column: 24, scope: !805)
!840 = !DILocation(line: 123, column: 52, scope: !805)
!841 = !DILocation(line: 123, column: 38, scope: !805)
!842 = !DILocation(line: 123, column: 5, scope: !805)
!843 = !DILocation(line: 124, column: 24, scope: !805)
!844 = !DILocation(line: 124, column: 62, scope: !805)
!845 = !DILocation(line: 124, column: 73, scope: !805)
!846 = !DILocation(line: 124, column: 75, scope: !805)
!847 = !DILocation(line: 124, column: 48, scope: !805)
!848 = !DILocation(line: 124, column: 5, scope: !805)
!849 = !DILabel(scope: !805, name: "out", file: !3, line: 126)
!850 = !DILocation(line: 126, column: 1, scope: !805)
!851 = !DILocation(line: 127, column: 12, scope: !805)
!852 = !DILocation(line: 127, column: 5, scope: !805)
!853 = !DILocalVariable(name: "coro", arg: 1, scope: !292, file: !3, line: 243, type: !84)
!854 = !DILocation(line: 243, column: 43, scope: !292)
!855 = !DILocalVariable(name: "fortune_buffer", scope: !292, file: !3, line: 246, type: !856)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 2048, elements: !857)
!857 = !{!858}
!858 = !DISubrange(count: 256)
!859 = !DILocation(line: 246, column: 10, scope: !292)
!860 = !DILocalVariable(name: "fortune", scope: !292, file: !3, line: 247, type: !861)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!862 = !DILocation(line: 247, column: 21, scope: !292)
!863 = !DILocalVariable(name: "fortunes", scope: !292, file: !3, line: 248, type: !864)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array", file: !865, line: 9, size: 256, elements: !866)
!865 = !DIFile(filename: "techempower/array.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "e322a465531025820950d0b6769ca0f7")
!866 = !{!867, !869, !870, !871}
!867 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !864, file: !865, line: 10, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !864, file: !865, line: 11, baseType: !274, size: 64, offset: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !864, file: !865, line: 12, baseType: !274, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !864, file: !865, line: 13, baseType: !274, size: 64, offset: 192)
!872 = !DILocation(line: 248, column: 18, scope: !292)
!873 = !DILocalVariable(name: "stmt", scope: !292, file: !3, line: 249, type: !632)
!874 = !DILocation(line: 249, column: 21, scope: !292)
!875 = !DILocalVariable(name: "i", scope: !292, file: !3, line: 250, type: !274)
!876 = !DILocation(line: 250, column: 12, scope: !292)
!877 = !DILocation(line: 252, column: 28, scope: !292)
!878 = !DILocation(line: 252, column: 12, scope: !292)
!879 = !DILocation(line: 252, column: 10, scope: !292)
!880 = !DILocation(line: 253, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !292, file: !3, line: 253, column: 9)
!882 = !DILocation(line: 253, column: 9, scope: !292)
!883 = !DILocation(line: 254, column: 9, scope: !881)
!884 = !DILocation(line: 256, column: 5, scope: !292)
!885 = !DILocalVariable(name: "results", scope: !292, file: !3, line: 258, type: !886)
!886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !616, size: 576, elements: !216)
!887 = !DILocation(line: 258, column: 19, scope: !292)
!888 = !DILocation(line: 258, column: 31, scope: !292)
!889 = !DILocation(line: 259, column: 9, scope: !292)
!890 = !DILocation(line: 260, column: 9, scope: !292)
!891 = !DILocation(line: 260, column: 31, scope: !292)
!892 = !DILocation(line: 260, column: 26, scope: !292)
!893 = !DILocation(line: 263, column: 5, scope: !292)
!894 = !DILocation(line: 263, column: 25, scope: !292)
!895 = !DILocation(line: 263, column: 31, scope: !292)
!896 = !DILocation(line: 263, column: 12, scope: !292)
!897 = !DILocation(line: 264, column: 29, scope: !898)
!898 = distinct !DILexicalBlock(scope: !899, file: !3, line: 264, column: 13)
!899 = distinct !DILexicalBlock(scope: !292, file: !3, line: 263, column: 41)
!900 = !DILocation(line: 264, column: 46, scope: !898)
!901 = !DILocation(line: 264, column: 57, scope: !898)
!902 = !DILocation(line: 264, column: 59, scope: !898)
!903 = !DILocation(line: 264, column: 62, scope: !898)
!904 = !DILocation(line: 264, column: 73, scope: !898)
!905 = !DILocation(line: 264, column: 75, scope: !898)
!906 = !DILocation(line: 264, column: 14, scope: !898)
!907 = !DILocation(line: 264, column: 13, scope: !899)
!908 = !DILocation(line: 265, column: 13, scope: !898)
!909 = distinct !{!909, !893, !910, !724}
!910 = !DILocation(line: 266, column: 5, scope: !292)
!911 = !DILocation(line: 268, column: 25, scope: !912)
!912 = distinct !DILexicalBlock(scope: !292, file: !3, line: 268, column: 9)
!913 = !DILocation(line: 268, column: 10, scope: !912)
!914 = !DILocation(line: 268, column: 9, scope: !292)
!915 = !DILocation(line: 270, column: 9, scope: !912)
!916 = !DILocation(line: 272, column: 5, scope: !292)
!917 = !DILocation(line: 274, column: 29, scope: !292)
!918 = !DILocation(line: 274, column: 15, scope: !292)
!919 = !DILocation(line: 274, column: 13, scope: !292)
!920 = !DILocation(line: 275, column: 12, scope: !921)
!921 = distinct !DILexicalBlock(scope: !292, file: !3, line: 275, column: 5)
!922 = !DILocation(line: 275, column: 10, scope: !921)
!923 = !DILocation(line: 275, column: 17, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !3, line: 275, column: 5)
!925 = !DILocation(line: 275, column: 30, scope: !924)
!926 = !DILocation(line: 275, column: 19, scope: !924)
!927 = !DILocation(line: 275, column: 5, scope: !921)
!928 = !DILocalVariable(name: "f", scope: !929, file: !3, line: 276, type: !861)
!929 = distinct !DILexicalBlock(scope: !924, file: !3, line: 275, column: 42)
!930 = !DILocation(line: 276, column: 25, scope: !929)
!931 = !DILocation(line: 276, column: 38, scope: !929)
!932 = !DILocation(line: 276, column: 44, scope: !929)
!933 = !DILocation(line: 276, column: 29, scope: !929)
!934 = !DILocation(line: 277, column: 28, scope: !929)
!935 = !DILocation(line: 277, column: 31, scope: !929)
!936 = !DILocation(line: 277, column: 36, scope: !929)
!937 = !DILocation(line: 277, column: 9, scope: !929)
!938 = !DILocation(line: 277, column: 18, scope: !929)
!939 = !DILocation(line: 277, column: 23, scope: !929)
!940 = !DILocation(line: 277, column: 26, scope: !929)
!941 = !DILocation(line: 278, column: 33, scope: !929)
!942 = !DILocation(line: 278, column: 36, scope: !929)
!943 = !DILocation(line: 278, column: 41, scope: !929)
!944 = !DILocation(line: 278, column: 9, scope: !929)
!945 = !DILocation(line: 278, column: 18, scope: !929)
!946 = !DILocation(line: 278, column: 23, scope: !929)
!947 = !DILocation(line: 278, column: 31, scope: !929)
!948 = !DILocation(line: 279, column: 20, scope: !929)
!949 = !DILocation(line: 279, column: 9, scope: !929)
!950 = !DILocation(line: 280, column: 5, scope: !929)
!951 = !DILocation(line: 275, column: 38, scope: !924)
!952 = !DILocation(line: 275, column: 5, scope: !924)
!953 = distinct !{!953, !927, !954, !724}
!954 = !DILocation(line: 280, column: 5, scope: !921)
!955 = !DILabel(scope: !292, name: "out", file: !3, line: 282)
!956 = !DILocation(line: 282, column: 1, scope: !292)
!957 = !DILocation(line: 283, column: 5, scope: !292)
!958 = !DILocation(line: 284, column: 22, scope: !292)
!959 = !DILocation(line: 284, column: 5, scope: !292)
!960 = !DILocation(line: 285, column: 5, scope: !292)
!961 = !DILocation(line: 286, column: 1, scope: !292)
!962 = distinct !DISubprogram(name: "append_fortune", scope: !3, file: !3, line: 226, type: !963, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!963 = !DISubroutineType(types: !964)
!964 = !{!284, !84, !965, !6, !248}
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!966 = !DILocalVariable(name: "coro", arg: 1, scope: !962, file: !3, line: 226, type: !84)
!967 = !DILocation(line: 226, column: 36, scope: !962)
!968 = !DILocalVariable(name: "fortunes", arg: 2, scope: !962, file: !3, line: 226, type: !965)
!969 = !DILocation(line: 226, column: 56, scope: !962)
!970 = !DILocalVariable(name: "id", arg: 3, scope: !962, file: !3, line: 227, type: !6)
!971 = !DILocation(line: 227, column: 32, scope: !962)
!972 = !DILocalVariable(name: "message", arg: 4, scope: !962, file: !3, line: 227, type: !248)
!973 = !DILocation(line: 227, column: 48, scope: !962)
!974 = !DILocalVariable(name: "fortune", scope: !962, file: !3, line: 229, type: !861)
!975 = !DILocation(line: 229, column: 21, scope: !962)
!976 = !DILocation(line: 231, column: 27, scope: !962)
!977 = !DILocation(line: 231, column: 15, scope: !962)
!978 = !DILocation(line: 231, column: 13, scope: !962)
!979 = !DILocation(line: 232, column: 9, scope: !980)
!980 = distinct !DILexicalBlock(scope: !962, file: !3, line: 232, column: 9)
!981 = !DILocation(line: 232, column: 9, scope: !962)
!982 = !DILocation(line: 233, column: 9, scope: !980)
!983 = !DILocation(line: 235, column: 24, scope: !962)
!984 = !DILocation(line: 235, column: 5, scope: !962)
!985 = !DILocation(line: 235, column: 14, scope: !962)
!986 = !DILocation(line: 235, column: 19, scope: !962)
!987 = !DILocation(line: 235, column: 22, scope: !962)
!988 = !DILocation(line: 236, column: 41, scope: !962)
!989 = !DILocation(line: 236, column: 47, scope: !962)
!990 = !DILocation(line: 236, column: 29, scope: !962)
!991 = !DILocation(line: 236, column: 5, scope: !962)
!992 = !DILocation(line: 236, column: 14, scope: !962)
!993 = !DILocation(line: 236, column: 19, scope: !962)
!994 = !DILocation(line: 236, column: 27, scope: !962)
!995 = !DILocation(line: 237, column: 9, scope: !996)
!996 = distinct !DILexicalBlock(scope: !962, file: !3, line: 237, column: 9)
!997 = !DILocation(line: 237, column: 9, scope: !962)
!998 = !DILocation(line: 238, column: 9, scope: !996)
!999 = !DILocation(line: 240, column: 25, scope: !962)
!1000 = !DILocation(line: 240, column: 35, scope: !962)
!1001 = !DILocation(line: 240, column: 12, scope: !962)
!1002 = !DILocation(line: 240, column: 44, scope: !962)
!1003 = !DILocation(line: 240, column: 5, scope: !962)
!1004 = !DILocation(line: 241, column: 1, scope: !962)
!1005 = distinct !DISubprogram(name: "fortune_compare", scope: !3, file: !3, line: 208, type: !1006, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !7, retainedNodes: !293)
!1006 = !DISubroutineType(types: !1007)
!1007 = !{!6, !1008, !1008}
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1010 = !DILocalVariable(name: "a", arg: 1, scope: !1005, file: !3, line: 208, type: !1008)
!1011 = !DILocation(line: 208, column: 40, scope: !1005)
!1012 = !DILocalVariable(name: "b", arg: 2, scope: !1005, file: !3, line: 208, type: !1008)
!1013 = !DILocation(line: 208, column: 55, scope: !1005)
!1014 = !DILocalVariable(name: "fortune_a", scope: !1005, file: !3, line: 210, type: !71)
!1015 = !DILocation(line: 210, column: 27, scope: !1005)
!1016 = !DILocation(line: 210, column: 65, scope: !1005)
!1017 = !DILocation(line: 210, column: 39, scope: !1005)
!1018 = !DILocalVariable(name: "fortune_b", scope: !1005, file: !3, line: 211, type: !71)
!1019 = !DILocation(line: 211, column: 27, scope: !1005)
!1020 = !DILocation(line: 211, column: 65, scope: !1005)
!1021 = !DILocation(line: 211, column: 39, scope: !1005)
!1022 = !DILocalVariable(name: "a_len", scope: !1005, file: !3, line: 212, type: !274)
!1023 = !DILocation(line: 212, column: 12, scope: !1005)
!1024 = !DILocation(line: 212, column: 27, scope: !1005)
!1025 = !DILocation(line: 212, column: 38, scope: !1005)
!1026 = !DILocation(line: 212, column: 43, scope: !1005)
!1027 = !DILocation(line: 212, column: 20, scope: !1005)
!1028 = !DILocalVariable(name: "b_len", scope: !1005, file: !3, line: 213, type: !274)
!1029 = !DILocation(line: 213, column: 12, scope: !1005)
!1030 = !DILocation(line: 213, column: 27, scope: !1005)
!1031 = !DILocation(line: 213, column: 38, scope: !1005)
!1032 = !DILocation(line: 213, column: 43, scope: !1005)
!1033 = !DILocation(line: 213, column: 20, scope: !1005)
!1034 = !DILocation(line: 215, column: 10, scope: !1035)
!1035 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 215, column: 9)
!1036 = !DILocation(line: 215, column: 16, scope: !1035)
!1037 = !DILocation(line: 215, column: 20, scope: !1035)
!1038 = !DILocation(line: 215, column: 9, scope: !1005)
!1039 = !DILocation(line: 216, column: 16, scope: !1035)
!1040 = !DILocation(line: 216, column: 24, scope: !1035)
!1041 = !DILocation(line: 216, column: 22, scope: !1035)
!1042 = !DILocation(line: 216, column: 9, scope: !1035)
!1043 = !DILocalVariable(name: "min_len", scope: !1005, file: !3, line: 218, type: !274)
!1044 = !DILocation(line: 218, column: 12, scope: !1005)
!1045 = !DILocation(line: 218, column: 22, scope: !1005)
!1046 = !DILocation(line: 218, column: 30, scope: !1005)
!1047 = !DILocation(line: 218, column: 28, scope: !1005)
!1048 = !DILocation(line: 218, column: 38, scope: !1005)
!1049 = !DILocation(line: 218, column: 46, scope: !1005)
!1050 = !DILocalVariable(name: "cmp", scope: !1005, file: !3, line: 219, type: !6)
!1051 = !DILocation(line: 219, column: 9, scope: !1005)
!1052 = !DILocation(line: 219, column: 22, scope: !1005)
!1053 = !DILocation(line: 219, column: 33, scope: !1005)
!1054 = !DILocation(line: 219, column: 38, scope: !1005)
!1055 = !DILocation(line: 219, column: 47, scope: !1005)
!1056 = !DILocation(line: 219, column: 58, scope: !1005)
!1057 = !DILocation(line: 219, column: 63, scope: !1005)
!1058 = !DILocation(line: 219, column: 72, scope: !1005)
!1059 = !DILocation(line: 219, column: 15, scope: !1005)
!1060 = !DILocation(line: 220, column: 9, scope: !1061)
!1061 = distinct !DILexicalBlock(scope: !1005, file: !3, line: 220, column: 9)
!1062 = !DILocation(line: 220, column: 13, scope: !1061)
!1063 = !DILocation(line: 220, column: 9, scope: !1005)
!1064 = !DILocation(line: 221, column: 16, scope: !1061)
!1065 = !DILocation(line: 221, column: 24, scope: !1061)
!1066 = !DILocation(line: 221, column: 22, scope: !1061)
!1067 = !DILocation(line: 221, column: 9, scope: !1061)
!1068 = !DILocation(line: 223, column: 12, scope: !1005)
!1069 = !DILocation(line: 223, column: 16, scope: !1005)
!1070 = !DILocation(line: 223, column: 5, scope: !1005)
!1071 = !DILocation(line: 224, column: 1, scope: !1005)
