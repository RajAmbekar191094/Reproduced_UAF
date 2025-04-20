; ModuleID = '/home/raj/lwan/freegeoip/freegeoip.c'
source_filename = "/home/raj/lwan/freegeoip/freegeoip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.lwan_serve_files_settings_t = type { ptr, ptr, i8 }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon.0, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon.0 = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_url_map_t_ = type { ptr, ptr, ptr, i64, i32, ptr, ptr, %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.in_addr = type { i32 }
%struct.ip_info_t = type { %struct.cache_entry_t, %struct.anon.7, %struct.anon.7, %struct.anon.8, double, double, %struct.anon.9, ptr, ptr }
%struct.cache_entry_t = type { %struct.list_node, ptr, i32, i32, i64 }
%struct.list_node = type { ptr, ptr }
%struct.anon.7 = type { ptr, ptr }
%struct.anon.8 = type { ptr, ptr }
%struct.anon.9 = type { ptr, ptr }
%struct.query_limit_t = type { %struct.cache_entry_t, i32 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.ip_net_t = type { %union.ip_to_octet, %union.ip_to_octet }
%union.ip_to_octet = type { i32 }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.2, %struct.anon.2, %struct.anon.3, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.2 = type { ptr, i64 }
%struct.anon.3 = type { i64, %struct.anon.4 }
%struct.anon.4 = type { i64, i64 }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }

@json_template_str = internal constant [378 x i8] c"{{callback?}}{{callback}}({{/callback?}}{\22country_code\22:\22{{country.code}}\22,\22country_name\22:\22{{country.name}}\22,\22region_code\22:\22{{region.code}}\22,\22region_name\22:\22{{region.name}}\22,\22city\22:\22{{city.name}}\22,\22zipcode\22:\22{{city.zip_code}}\22,\22latitude\22:{{latitude}},\22longitude\22:{{longitude}},\22metro_code\22:\22{{metro.code}}\22,\22areacode\22:\22{{metro.area}}\22,\22ip\22:\22{{ip}}\22}{{callback?}});{{/callback?}}\00", align 16, !dbg !0
@template_descriptor = internal constant [13 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.12, i64 40, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.13, i64 48, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.14, i64 56, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.15, i64 64, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.16, i64 72, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.17, i64 80, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.18, i64 88, ptr @lwan_append_double_to_strbuf, ptr @lwan_tpl_double_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.19, i64 96, ptr @lwan_append_double_to_strbuf, ptr @lwan_tpl_double_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.20, i64 104, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.21, i64 112, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.22, i64 120, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.23, i64 128, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !220
@json_template = internal global ptr null, align 8, !dbg !273
@.str = private unnamed_addr constant [37 x i8] c"/home/raj/lwan/freegeoip/freegeoip.c\00", align 1, !dbg !115
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !120
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not compile JSON template\00", align 1, !dbg !125
@xml_template_str = internal constant [444 x i8] c"<?xml version=\221.0\22 encoding=\22UTF-8\22?><Response><Ip>{{ip}}</Ip><CountryCode>{{country.code}}</CountryCode><CountryName>{{country.name}}</CountryName><RegionCode>{{region.code}}</RegionCode><RegionName>{{region.name}}</RegionName><City>{{city.name}}</City><ZipCode>{{city.zip_code}}</ZipCode><Latitude>{{latitude}}</Latitude><Longitude>{{longitude}}</Longitude><MetroCode>{{metro.code}}</MetroCode><AreaCode>{{metro.area}}</AreaCode></Response>\00", align 16, !dbg !278
@xml_template = internal global ptr null, align 8, !dbg !283
@.str.2 = private unnamed_addr constant [31 x i8] c"Could not compile XML template\00", align 1, !dbg !130
@csv_template_str = internal constant [184 x i8] c"\22{{ip}}\22,\22{{country.code}}\22,\22{{country.name}}\22,\22{{region.code}}\22,\22{{region.name}}\22,\22{{city.name}}\22,\22{{city.zip_code}}\22,\22{{latitude}}\22,\22{{longitude}}\22,\22{{metro.code}}\22,\22{{metro.area}}\22\00", align 16, !dbg !285
@csv_template = internal global ptr null, align 8, !dbg !290
@.str.3 = private unnamed_addr constant [31 x i8] c"Could not compile CSV template\00", align 1, !dbg !135
@.str.4 = private unnamed_addr constant [17 x i8] c"./db/ipdb.sqlite\00", align 1, !dbg !137
@db = internal global ptr null, align 8, !dbg !292
@.str.5 = private unnamed_addr constant [28 x i8] c"Could not open database: %s\00", align 1, !dbg !142
@cache = internal global ptr null, align 8, !dbg !330
@.str.6 = private unnamed_addr constant [43 x i8] c"Limiting to %d queries per hour per client\00", align 1, !dbg !147
@query_limit = internal global ptr null, align 8, !dbg !174
@.str.7 = private unnamed_addr constant [7 x i8] c"/json/\00", align 1, !dbg !152
@.str.8 = private unnamed_addr constant [6 x i8] c"/xml/\00", align 1, !dbg !157
@.str.9 = private unnamed_addr constant [6 x i8] c"/csv/\00", align 1, !dbg !162
@.str.10 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !164
@.str.11 = private unnamed_addr constant [9 x i8] c"./static\00", align 1, !dbg !169
@constinit = private global [1 x %struct.lwan_serve_files_settings_t] [%struct.lwan_serve_files_settings_t { ptr @.str.11, ptr null, i8 1 }], align 8
@.str.12 = private unnamed_addr constant [13 x i8] c"country.code\00", align 1, !dbg !178
@.str.13 = private unnamed_addr constant [13 x i8] c"country.name\00", align 1, !dbg !183
@.str.14 = private unnamed_addr constant [12 x i8] c"region.code\00", align 1, !dbg !185
@.str.15 = private unnamed_addr constant [12 x i8] c"region.name\00", align 1, !dbg !190
@.str.16 = private unnamed_addr constant [10 x i8] c"city.name\00", align 1, !dbg !192
@.str.17 = private unnamed_addr constant [14 x i8] c"city.zip_code\00", align 1, !dbg !197
@.str.18 = private unnamed_addr constant [9 x i8] c"latitude\00", align 1, !dbg !202
@.str.19 = private unnamed_addr constant [10 x i8] c"longitude\00", align 1, !dbg !204
@.str.20 = private unnamed_addr constant [11 x i8] c"metro.code\00", align 1, !dbg !206
@.str.21 = private unnamed_addr constant [11 x i8] c"metro.area\00", align 1, !dbg !211
@.str.22 = private unnamed_addr constant [3 x i8] c"ip\00", align 1, !dbg !213
@.str.23 = private unnamed_addr constant [9 x i8] c"callback\00", align 1, !dbg !218
@.str.24 = private unnamed_addr constant [3 x i8] c"RD\00", align 1, !dbg !298
@.str.25 = private unnamed_addr constant [9 x i8] c"Reserved\00", align 1, !dbg !300
@ip_to_city_query = internal constant [656 x i8] c"SELECT    city_location.country_code, country_blocks.country_name,   city_location.region_code, region_names.region_name,   city_location.city_name, city_location.postal_code,   city_location.latitude, city_location.longitude,   city_location.metro_code, city_location.area_code FROM city_blocks    NATURAL JOIN city_location    INNER JOIN country_blocks ON       city_location.country_code = country_blocks.country_code    INNER JOIN region_names ON       city_location.country_code = region_names.country_code       AND       city_location.region_code = region_names.region_code WHERE city_blocks.ip_start <= ? ORDER BY city_blocks.ip_start DESC LIMIT 1\00", align 16, !dbg !325
@reserved_ips = internal constant [16 x { { [4 x i8] }, { [4 x i8] } }] [{ { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } zeroinitializer, { [4 x i8] } { [4 x i8] c"\FF\00\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\0A\00\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\00\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"d@\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\C0\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\7F\00\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\00\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\A9\FE\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\AC\10\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\F0\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C0\00\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\F8" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C0\00\02\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C0Xc\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C0\A8\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C6\12\00\00" }, { [4 x i8] } { [4 x i8] c"\FF\FE\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\C63d\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\CB\00q\00" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\E0\00\00\00" }, { [4 x i8] } { [4 x i8] c"\F0\00\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\F0\00\00\00" }, { [4 x i8] } { [4 x i8] c"\F0\00\00\00" } }, { { [4 x i8] }, { [4 x i8] } } { { [4 x i8] } { [4 x i8] c"\FF\FF\FF\FF" }, { [4 x i8] } { [4 x i8] c"\FF\FF\FF\FF" } }], align 16, !dbg !302
@.str.27 = private unnamed_addr constant [32 x i8] c"application/json; charset=UTF-8\00", align 1, !dbg !332
@.str.28 = private unnamed_addr constant [31 x i8] c"application/xml; charset=UTF-8\00", align 1, !dbg !334
@.str.29 = private unnamed_addr constant [26 x i8] c"text/plain; charset=UTF-8\00", align 1, !dbg !336

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !352 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lwan_t_, align 8
  %3 = alloca i32, align 4
  %4 = alloca [5 x %struct.lwan_url_map_t_], align 16
  %5 = alloca [1 x %struct.lwan_serve_files_settings_t], align 8
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !356, metadata !DIExpression()), !dbg !442
  call void @lwan_init(ptr noundef %2), !dbg !443
  %6 = call ptr @lwan_tpl_compile_string(ptr noundef @json_template_str, ptr noundef @template_descriptor), !dbg !444
  store ptr %6, ptr @json_template, align 8, !dbg !445
  %7 = load ptr, ptr @json_template, align 8, !dbg !446
  %8 = icmp ne ptr %7, null, !dbg !446
  br i1 %8, label %10, label %9, !dbg !448

9:                                                ; preds = %0
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 403, ptr noundef @__FUNCTION__.main, ptr noundef @.str.1) #10, !dbg !449
  unreachable, !dbg !449

10:                                               ; preds = %0
  %11 = call ptr @lwan_tpl_compile_string(ptr noundef @xml_template_str, ptr noundef @template_descriptor), !dbg !450
  store ptr %11, ptr @xml_template, align 8, !dbg !451
  %12 = load ptr, ptr @xml_template, align 8, !dbg !452
  %13 = icmp ne ptr %12, null, !dbg !452
  br i1 %13, label %15, label %14, !dbg !454

14:                                               ; preds = %10
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 406, ptr noundef @__FUNCTION__.main, ptr noundef @.str.2) #10, !dbg !455
  unreachable, !dbg !455

15:                                               ; preds = %10
  %16 = call ptr @lwan_tpl_compile_string(ptr noundef @csv_template_str, ptr noundef @template_descriptor), !dbg !456
  store ptr %16, ptr @csv_template, align 8, !dbg !457
  %17 = load ptr, ptr @csv_template, align 8, !dbg !458
  %18 = icmp ne ptr %17, null, !dbg !458
  br i1 %18, label %20, label %19, !dbg !460

19:                                               ; preds = %15
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 409, ptr noundef @__FUNCTION__.main, ptr noundef @.str.3) #10, !dbg !461
  unreachable, !dbg !461

20:                                               ; preds = %15
  call void @llvm.dbg.declare(metadata ptr %3, metadata !462, metadata !DIExpression()), !dbg !463
  %21 = call i32 @sqlite3_open_v2(ptr noundef @.str.4, ptr noundef @db, i32 noundef 1, ptr noundef null), !dbg !464
  store i32 %21, ptr %3, align 4, !dbg !463
  %22 = load i32, ptr %3, align 4, !dbg !465
  %23 = icmp ne i32 %22, 0, !dbg !467
  br i1 %23, label %24, label %27, !dbg !468

24:                                               ; preds = %20
  %25 = load ptr, ptr @db, align 8, !dbg !469
  %26 = call ptr @sqlite3_errmsg(ptr noundef %25), !dbg !469
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 415, ptr noundef @__FUNCTION__.main, ptr noundef @.str.5, ptr noundef %26) #10, !dbg !469
  unreachable, !dbg !469

27:                                               ; preds = %20
  %28 = call ptr @cache_create(ptr noundef @create_ipinfo, ptr noundef @destroy_ipinfo, ptr noundef null, i64 noundef 10), !dbg !470
  store ptr %28, ptr @cache, align 8, !dbg !471
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 420, ptr noundef @__FUNCTION__.main, ptr noundef @.str.6, i32 noundef 10000), !dbg !472
  %29 = call ptr @cache_create(ptr noundef @create_query_limit, ptr noundef @destroy_query_limit, ptr noundef null, i64 noundef 3600), !dbg !473
  store ptr %29, ptr @query_limit, align 8, !dbg !474
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !570
  %30 = getelementptr inbounds [5 x %struct.lwan_url_map_t_], ptr %4, i64 0, i64 0, !dbg !571
  %31 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 0, !dbg !572
  store ptr @templated_output, ptr %31, align 8, !dbg !572
  %32 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 1, !dbg !572
  %33 = load ptr, ptr @json_template, align 8, !dbg !573
  store ptr %33, ptr %32, align 8, !dbg !572
  %34 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 2, !dbg !572
  store ptr @.str.7, ptr %34, align 8, !dbg !572
  %35 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 3, !dbg !572
  store i64 0, ptr %35, align 8, !dbg !572
  %36 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 4, !dbg !572
  store i32 0, ptr %36, align 8, !dbg !572
  %37 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 5, !dbg !572
  store ptr null, ptr %37, align 8, !dbg !572
  %38 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 6, !dbg !572
  store ptr null, ptr %38, align 8, !dbg !572
  %39 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i32 0, i32 7, !dbg !572
  call void @llvm.memset.p0.i64(ptr align 8 %39, i8 0, i64 16, i1 false), !dbg !572
  %40 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %30, i64 1, !dbg !571
  %41 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 0, !dbg !574
  store ptr @templated_output, ptr %41, align 8, !dbg !574
  %42 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 1, !dbg !574
  %43 = load ptr, ptr @xml_template, align 8, !dbg !575
  store ptr %43, ptr %42, align 8, !dbg !574
  %44 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 2, !dbg !574
  store ptr @.str.8, ptr %44, align 8, !dbg !574
  %45 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 3, !dbg !574
  store i64 0, ptr %45, align 8, !dbg !574
  %46 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 4, !dbg !574
  store i32 0, ptr %46, align 8, !dbg !574
  %47 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 5, !dbg !574
  store ptr null, ptr %47, align 8, !dbg !574
  %48 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 6, !dbg !574
  store ptr null, ptr %48, align 8, !dbg !574
  %49 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 7, !dbg !574
  call void @llvm.memset.p0.i64(ptr align 8 %49, i8 0, i64 16, i1 false), !dbg !574
  %50 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i64 1, !dbg !571
  %51 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 0, !dbg !576
  store ptr @templated_output, ptr %51, align 8, !dbg !576
  %52 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 1, !dbg !576
  %53 = load ptr, ptr @csv_template, align 8, !dbg !577
  store ptr %53, ptr %52, align 8, !dbg !576
  %54 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 2, !dbg !576
  store ptr @.str.9, ptr %54, align 8, !dbg !576
  %55 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 3, !dbg !576
  store i64 0, ptr %55, align 8, !dbg !576
  %56 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 4, !dbg !576
  store i32 0, ptr %56, align 8, !dbg !576
  %57 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 5, !dbg !576
  store ptr null, ptr %57, align 8, !dbg !576
  %58 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 6, !dbg !576
  store ptr null, ptr %58, align 8, !dbg !576
  %59 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i32 0, i32 7, !dbg !576
  call void @llvm.memset.p0.i64(ptr align 8 %59, i8 0, i64 16, i1 false), !dbg !576
  %60 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %50, i64 1, !dbg !571
  %61 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 0, !dbg !578
  store ptr null, ptr %61, align 8, !dbg !578
  %62 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 1, !dbg !578
  store ptr null, ptr %62, align 8, !dbg !578
  %63 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 2, !dbg !578
  store ptr @.str.10, ptr %63, align 8, !dbg !578
  %64 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 3, !dbg !578
  store i64 0, ptr %64, align 8, !dbg !578
  %65 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 4, !dbg !578
  store i32 0, ptr %65, align 8, !dbg !578
  %66 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 5, !dbg !578
  %67 = call ptr @lwan_module_serve_files(), !dbg !579
  store ptr %67, ptr %66, align 8, !dbg !578
  %68 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 6, !dbg !578
  %69 = getelementptr inbounds [1 x %struct.lwan_serve_files_settings_t], ptr %5, i64 0, i64 0, !dbg !579
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %5, ptr align 8 @constinit, i64 24, i1 false), !dbg !579
  %70 = getelementptr inbounds [1 x %struct.lwan_serve_files_settings_t], ptr %5, i64 0, i64 0, !dbg !579
  store ptr %70, ptr %68, align 8, !dbg !578
  %71 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i32 0, i32 7, !dbg !578
  call void @llvm.memset.p0.i64(ptr align 8 %71, i8 0, i64 16, i1 false), !dbg !578
  %72 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %60, i64 1, !dbg !571
  call void @llvm.memset.p0.i64(ptr align 8 %72, i8 0, i64 72, i1 false), !dbg !571
  %73 = getelementptr inbounds [5 x %struct.lwan_url_map_t_], ptr %4, i64 0, i64 0, !dbg !580
  call void @lwan_set_url_map(ptr noundef %2, ptr noundef %73), !dbg !581
  call void @lwan_main_loop(ptr noundef %2), !dbg !582
  call void @lwan_shutdown(ptr noundef %2), !dbg !583
  %74 = load ptr, ptr @csv_template, align 8, !dbg !584
  call void @lwan_tpl_free(ptr noundef %74), !dbg !585
  %75 = load ptr, ptr @xml_template, align 8, !dbg !586
  call void @lwan_tpl_free(ptr noundef %75), !dbg !587
  %76 = load ptr, ptr @json_template, align 8, !dbg !588
  call void @lwan_tpl_free(ptr noundef %76), !dbg !589
  %77 = load ptr, ptr @query_limit, align 8, !dbg !590
  call void @cache_destroy(ptr noundef %77), !dbg !591
  %78 = load ptr, ptr @cache, align 8, !dbg !592
  call void @cache_destroy(ptr noundef %78), !dbg !593
  %79 = load ptr, ptr @db, align 8, !dbg !594
  %80 = call i32 @sqlite3_close(ptr noundef %79), !dbg !595
  ret i32 0, !dbg !596
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @lwan_init(ptr noundef) #2

declare ptr @lwan_tpl_compile_string(ptr noundef, ptr noundef) #2

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare ptr @sqlite3_errmsg(ptr noundef) #2

declare ptr @cache_create(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_ipinfo(ptr noundef %0, ptr noundef %1) #0 !dbg !597 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca ptr, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca ptr, align 8
  %31 = alloca %struct.in_addr, align 4
  store ptr %0, ptr %27, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !600, metadata !DIExpression()), !dbg !601
  store ptr %1, ptr %28, align 8
  call void @llvm.dbg.declare(metadata ptr %28, metadata !602, metadata !DIExpression()), !dbg !603
  call void @llvm.dbg.declare(metadata ptr %29, metadata !604, metadata !DIExpression()), !dbg !608
  call void @llvm.dbg.declare(metadata ptr %30, metadata !609, metadata !DIExpression()), !dbg !610
  store ptr null, ptr %30, align 8, !dbg !610
  call void @llvm.dbg.declare(metadata ptr %31, metadata !611, metadata !DIExpression()), !dbg !615
  %32 = load ptr, ptr %27, align 8, !dbg !616
  %33 = call i32 @inet_aton(ptr noundef %32, ptr noundef %31) #11, !dbg !616
  %34 = icmp ne i32 %33, 0, !dbg !616
  %35 = xor i1 %34, true, !dbg !616
  %36 = zext i1 %35 to i32, !dbg !616
  %37 = sext i32 %36 to i64, !dbg !616
  %38 = icmp ne i64 %37, 0, !dbg !616
  br i1 %38, label %39, label %40, !dbg !618

39:                                               ; preds = %2
  br label %227, !dbg !619

40:                                               ; preds = %2
  %41 = getelementptr inbounds %struct.in_addr, ptr %31, i32 0, i32 0, !dbg !620
  %42 = load i32, ptr %41, align 4, !dbg !620
  %43 = call zeroext i1 @is_reserved_ip(i32 noundef %42), !dbg !622
  br i1 %43, label %44, label %67, !dbg !623

44:                                               ; preds = %40
  %45 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 136) #12, !dbg !624
  store ptr %45, ptr %30, align 8, !dbg !626
  %46 = load ptr, ptr %30, align 8, !dbg !627
  %47 = icmp ne ptr %46, null, !dbg !627
  %48 = xor i1 %47, true, !dbg !627
  %49 = xor i1 %48, true, !dbg !627
  %50 = zext i1 %49 to i32, !dbg !627
  %51 = sext i32 %50 to i64, !dbg !627
  %52 = icmp ne i64 %51, 0, !dbg !627
  br i1 %52, label %53, label %66, !dbg !629

53:                                               ; preds = %44
  %54 = call noalias ptr @strdup(ptr noundef @.str.24) #11, !dbg !630
  %55 = load ptr, ptr %30, align 8, !dbg !632
  %56 = getelementptr inbounds %struct.ip_info_t, ptr %55, i32 0, i32 1, !dbg !633
  %57 = getelementptr inbounds %struct.anon.7, ptr %56, i32 0, i32 0, !dbg !634
  store ptr %54, ptr %57, align 8, !dbg !635
  %58 = call noalias ptr @strdup(ptr noundef @.str.25) #11, !dbg !636
  %59 = load ptr, ptr %30, align 8, !dbg !637
  %60 = getelementptr inbounds %struct.ip_info_t, ptr %59, i32 0, i32 1, !dbg !638
  %61 = getelementptr inbounds %struct.anon.7, ptr %60, i32 0, i32 1, !dbg !639
  store ptr %58, ptr %61, align 8, !dbg !640
  %62 = load ptr, ptr %27, align 8, !dbg !641
  %63 = call noalias ptr @strdup(ptr noundef %62) #11, !dbg !642
  %64 = load ptr, ptr %30, align 8, !dbg !643
  %65 = getelementptr inbounds %struct.ip_info_t, ptr %64, i32 0, i32 7, !dbg !644
  store ptr %63, ptr %65, align 8, !dbg !645
  br label %66, !dbg !646

66:                                               ; preds = %53, %44
  br label %227, !dbg !647

67:                                               ; preds = %40
  %68 = load ptr, ptr @db, align 8, !dbg !648
  %69 = call i32 @sqlite3_prepare(ptr noundef %68, ptr noundef @ip_to_city_query, i32 noundef 655, ptr noundef %29, ptr noundef null), !dbg !650
  %70 = icmp ne i32 %69, 0, !dbg !651
  br i1 %70, label %71, label %72, !dbg !652

71:                                               ; preds = %67
  br label %227, !dbg !653

72:                                               ; preds = %67
  %73 = load ptr, ptr %29, align 8, !dbg !654
  %74 = getelementptr inbounds %struct.in_addr, ptr %31, i32 0, i32 0, !dbg !656
  %75 = load i32, ptr %74, align 4, !dbg !656
  %76 = call i32 @ntohl(i32 noundef %75) #13, !dbg !657
  %77 = zext i32 %76 to i64, !dbg !657
  %78 = call i32 @sqlite3_bind_int64(ptr noundef %73, i32 noundef 1, i64 noundef %77), !dbg !658
  %79 = icmp ne i32 %78, 0, !dbg !659
  br i1 %79, label %80, label %81, !dbg !660

80:                                               ; preds = %72
  br label %224, !dbg !661

81:                                               ; preds = %72
  %82 = load ptr, ptr %29, align 8, !dbg !662
  %83 = call i32 @sqlite3_step(ptr noundef %82), !dbg !664
  %84 = icmp ne i32 %83, 100, !dbg !665
  br i1 %84, label %85, label %86, !dbg !666

85:                                               ; preds = %81
  br label %224, !dbg !667

86:                                               ; preds = %81
  %87 = call noalias ptr @malloc(i64 noundef 136) #14, !dbg !668
  store ptr %87, ptr %30, align 8, !dbg !669
  %88 = load ptr, ptr %30, align 8, !dbg !670
  %89 = icmp ne ptr %88, null, !dbg !670
  br i1 %89, label %91, label %90, !dbg !672

90:                                               ; preds = %86
  br label %224, !dbg !673

91:                                               ; preds = %86
  %92 = load ptr, ptr %29, align 8, !dbg !674
  store ptr %92, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !675, metadata !DIExpression()), !dbg !679
  store i32 0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !681, metadata !DIExpression()), !dbg !682
  call void @llvm.dbg.declare(metadata ptr %5, metadata !683, metadata !DIExpression()), !dbg !686
  %93 = load ptr, ptr %3, align 8, !dbg !687
  %94 = load i32, ptr %4, align 4, !dbg !688
  %95 = call ptr @sqlite3_column_text(ptr noundef %93, i32 noundef %94) #11, !dbg !689
  store ptr %95, ptr %5, align 8, !dbg !690
  %96 = load ptr, ptr %5, align 8, !dbg !691
  %97 = icmp ne ptr %96, null, !dbg !691
  br i1 %97, label %98, label %101, !dbg !691

98:                                               ; preds = %91
  %99 = load ptr, ptr %5, align 8, !dbg !692
  %100 = call noalias ptr @strdup(ptr noundef %99) #11, !dbg !693
  br label %102, !dbg !691

101:                                              ; preds = %91
  br label %102, !dbg !691

102:                                              ; preds = %98, %101
  %103 = phi ptr [ %100, %98 ], [ null, %101 ], !dbg !691
  %104 = load ptr, ptr %30, align 8, !dbg !694
  %105 = getelementptr inbounds %struct.ip_info_t, ptr %104, i32 0, i32 1, !dbg !695
  %106 = getelementptr inbounds %struct.anon.7, ptr %105, i32 0, i32 0, !dbg !696
  store ptr %103, ptr %106, align 8, !dbg !697
  %107 = load ptr, ptr %29, align 8, !dbg !698
  store ptr %107, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !675, metadata !DIExpression()), !dbg !699
  store i32 1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !681, metadata !DIExpression()), !dbg !701
  call void @llvm.dbg.declare(metadata ptr %8, metadata !683, metadata !DIExpression()), !dbg !702
  %108 = load ptr, ptr %6, align 8, !dbg !703
  %109 = load i32, ptr %7, align 4, !dbg !704
  %110 = call ptr @sqlite3_column_text(ptr noundef %108, i32 noundef %109) #11, !dbg !705
  store ptr %110, ptr %8, align 8, !dbg !706
  %111 = load ptr, ptr %8, align 8, !dbg !707
  %112 = icmp ne ptr %111, null, !dbg !707
  br i1 %112, label %113, label %116, !dbg !707

113:                                              ; preds = %102
  %114 = load ptr, ptr %8, align 8, !dbg !708
  %115 = call noalias ptr @strdup(ptr noundef %114) #11, !dbg !709
  br label %117, !dbg !707

116:                                              ; preds = %102
  br label %117, !dbg !707

117:                                              ; preds = %113, %116
  %118 = phi ptr [ %115, %113 ], [ null, %116 ], !dbg !707
  %119 = load ptr, ptr %30, align 8, !dbg !710
  %120 = getelementptr inbounds %struct.ip_info_t, ptr %119, i32 0, i32 1, !dbg !711
  %121 = getelementptr inbounds %struct.anon.7, ptr %120, i32 0, i32 1, !dbg !712
  store ptr %118, ptr %121, align 8, !dbg !713
  %122 = load ptr, ptr %29, align 8, !dbg !714
  store ptr %122, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !675, metadata !DIExpression()), !dbg !715
  store i32 2, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !681, metadata !DIExpression()), !dbg !717
  call void @llvm.dbg.declare(metadata ptr %11, metadata !683, metadata !DIExpression()), !dbg !718
  %123 = load ptr, ptr %9, align 8, !dbg !719
  %124 = load i32, ptr %10, align 4, !dbg !720
  %125 = call ptr @sqlite3_column_text(ptr noundef %123, i32 noundef %124) #11, !dbg !721
  store ptr %125, ptr %11, align 8, !dbg !722
  %126 = load ptr, ptr %11, align 8, !dbg !723
  %127 = icmp ne ptr %126, null, !dbg !723
  br i1 %127, label %128, label %131, !dbg !723

128:                                              ; preds = %117
  %129 = load ptr, ptr %11, align 8, !dbg !724
  %130 = call noalias ptr @strdup(ptr noundef %129) #11, !dbg !725
  br label %132, !dbg !723

131:                                              ; preds = %117
  br label %132, !dbg !723

132:                                              ; preds = %128, %131
  %133 = phi ptr [ %130, %128 ], [ null, %131 ], !dbg !723
  %134 = load ptr, ptr %30, align 8, !dbg !726
  %135 = getelementptr inbounds %struct.ip_info_t, ptr %134, i32 0, i32 2, !dbg !727
  %136 = getelementptr inbounds %struct.anon.7, ptr %135, i32 0, i32 0, !dbg !728
  store ptr %133, ptr %136, align 8, !dbg !729
  %137 = load ptr, ptr %29, align 8, !dbg !730
  store ptr %137, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !675, metadata !DIExpression()), !dbg !731
  store i32 3, ptr %13, align 4
  call void @llvm.dbg.declare(metadata ptr %13, metadata !681, metadata !DIExpression()), !dbg !733
  call void @llvm.dbg.declare(metadata ptr %14, metadata !683, metadata !DIExpression()), !dbg !734
  %138 = load ptr, ptr %12, align 8, !dbg !735
  %139 = load i32, ptr %13, align 4, !dbg !736
  %140 = call ptr @sqlite3_column_text(ptr noundef %138, i32 noundef %139) #11, !dbg !737
  store ptr %140, ptr %14, align 8, !dbg !738
  %141 = load ptr, ptr %14, align 8, !dbg !739
  %142 = icmp ne ptr %141, null, !dbg !739
  br i1 %142, label %143, label %146, !dbg !739

143:                                              ; preds = %132
  %144 = load ptr, ptr %14, align 8, !dbg !740
  %145 = call noalias ptr @strdup(ptr noundef %144) #11, !dbg !741
  br label %147, !dbg !739

146:                                              ; preds = %132
  br label %147, !dbg !739

147:                                              ; preds = %143, %146
  %148 = phi ptr [ %145, %143 ], [ null, %146 ], !dbg !739
  %149 = load ptr, ptr %30, align 8, !dbg !742
  %150 = getelementptr inbounds %struct.ip_info_t, ptr %149, i32 0, i32 2, !dbg !743
  %151 = getelementptr inbounds %struct.anon.7, ptr %150, i32 0, i32 1, !dbg !744
  store ptr %148, ptr %151, align 8, !dbg !745
  %152 = load ptr, ptr %29, align 8, !dbg !746
  store ptr %152, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !675, metadata !DIExpression()), !dbg !747
  store i32 4, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !681, metadata !DIExpression()), !dbg !749
  call void @llvm.dbg.declare(metadata ptr %17, metadata !683, metadata !DIExpression()), !dbg !750
  %153 = load ptr, ptr %15, align 8, !dbg !751
  %154 = load i32, ptr %16, align 4, !dbg !752
  %155 = call ptr @sqlite3_column_text(ptr noundef %153, i32 noundef %154) #11, !dbg !753
  store ptr %155, ptr %17, align 8, !dbg !754
  %156 = load ptr, ptr %17, align 8, !dbg !755
  %157 = icmp ne ptr %156, null, !dbg !755
  br i1 %157, label %158, label %161, !dbg !755

158:                                              ; preds = %147
  %159 = load ptr, ptr %17, align 8, !dbg !756
  %160 = call noalias ptr @strdup(ptr noundef %159) #11, !dbg !757
  br label %162, !dbg !755

161:                                              ; preds = %147
  br label %162, !dbg !755

162:                                              ; preds = %158, %161
  %163 = phi ptr [ %160, %158 ], [ null, %161 ], !dbg !755
  %164 = load ptr, ptr %30, align 8, !dbg !758
  %165 = getelementptr inbounds %struct.ip_info_t, ptr %164, i32 0, i32 3, !dbg !759
  %166 = getelementptr inbounds %struct.anon.8, ptr %165, i32 0, i32 0, !dbg !760
  store ptr %163, ptr %166, align 8, !dbg !761
  %167 = load ptr, ptr %29, align 8, !dbg !762
  store ptr %167, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !675, metadata !DIExpression()), !dbg !763
  store i32 5, ptr %19, align 4
  call void @llvm.dbg.declare(metadata ptr %19, metadata !681, metadata !DIExpression()), !dbg !765
  call void @llvm.dbg.declare(metadata ptr %20, metadata !683, metadata !DIExpression()), !dbg !766
  %168 = load ptr, ptr %18, align 8, !dbg !767
  %169 = load i32, ptr %19, align 4, !dbg !768
  %170 = call ptr @sqlite3_column_text(ptr noundef %168, i32 noundef %169) #11, !dbg !769
  store ptr %170, ptr %20, align 8, !dbg !770
  %171 = load ptr, ptr %20, align 8, !dbg !771
  %172 = icmp ne ptr %171, null, !dbg !771
  br i1 %172, label %173, label %176, !dbg !771

173:                                              ; preds = %162
  %174 = load ptr, ptr %20, align 8, !dbg !772
  %175 = call noalias ptr @strdup(ptr noundef %174) #11, !dbg !773
  br label %177, !dbg !771

176:                                              ; preds = %162
  br label %177, !dbg !771

177:                                              ; preds = %173, %176
  %178 = phi ptr [ %175, %173 ], [ null, %176 ], !dbg !771
  %179 = load ptr, ptr %30, align 8, !dbg !774
  %180 = getelementptr inbounds %struct.ip_info_t, ptr %179, i32 0, i32 3, !dbg !775
  %181 = getelementptr inbounds %struct.anon.8, ptr %180, i32 0, i32 1, !dbg !776
  store ptr %178, ptr %181, align 8, !dbg !777
  %182 = load ptr, ptr %29, align 8, !dbg !778
  %183 = call double @sqlite3_column_double(ptr noundef %182, i32 noundef 6), !dbg !779
  %184 = load ptr, ptr %30, align 8, !dbg !780
  %185 = getelementptr inbounds %struct.ip_info_t, ptr %184, i32 0, i32 4, !dbg !781
  store double %183, ptr %185, align 8, !dbg !782
  %186 = load ptr, ptr %29, align 8, !dbg !783
  %187 = call double @sqlite3_column_double(ptr noundef %186, i32 noundef 7), !dbg !784
  %188 = load ptr, ptr %30, align 8, !dbg !785
  %189 = getelementptr inbounds %struct.ip_info_t, ptr %188, i32 0, i32 5, !dbg !786
  store double %187, ptr %189, align 8, !dbg !787
  %190 = load ptr, ptr %29, align 8, !dbg !788
  store ptr %190, ptr %21, align 8
  call void @llvm.dbg.declare(metadata ptr %21, metadata !675, metadata !DIExpression()), !dbg !789
  store i32 8, ptr %22, align 4
  call void @llvm.dbg.declare(metadata ptr %22, metadata !681, metadata !DIExpression()), !dbg !791
  call void @llvm.dbg.declare(metadata ptr %23, metadata !683, metadata !DIExpression()), !dbg !792
  %191 = load ptr, ptr %21, align 8, !dbg !793
  %192 = load i32, ptr %22, align 4, !dbg !794
  %193 = call ptr @sqlite3_column_text(ptr noundef %191, i32 noundef %192) #11, !dbg !795
  store ptr %193, ptr %23, align 8, !dbg !796
  %194 = load ptr, ptr %23, align 8, !dbg !797
  %195 = icmp ne ptr %194, null, !dbg !797
  br i1 %195, label %196, label %199, !dbg !797

196:                                              ; preds = %177
  %197 = load ptr, ptr %23, align 8, !dbg !798
  %198 = call noalias ptr @strdup(ptr noundef %197) #11, !dbg !799
  br label %200, !dbg !797

199:                                              ; preds = %177
  br label %200, !dbg !797

200:                                              ; preds = %196, %199
  %201 = phi ptr [ %198, %196 ], [ null, %199 ], !dbg !797
  %202 = load ptr, ptr %30, align 8, !dbg !800
  %203 = getelementptr inbounds %struct.ip_info_t, ptr %202, i32 0, i32 6, !dbg !801
  %204 = getelementptr inbounds %struct.anon.9, ptr %203, i32 0, i32 0, !dbg !802
  store ptr %201, ptr %204, align 8, !dbg !803
  %205 = load ptr, ptr %29, align 8, !dbg !804
  store ptr %205, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !675, metadata !DIExpression()), !dbg !805
  store i32 9, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !681, metadata !DIExpression()), !dbg !807
  call void @llvm.dbg.declare(metadata ptr %26, metadata !683, metadata !DIExpression()), !dbg !808
  %206 = load ptr, ptr %24, align 8, !dbg !809
  %207 = load i32, ptr %25, align 4, !dbg !810
  %208 = call ptr @sqlite3_column_text(ptr noundef %206, i32 noundef %207) #11, !dbg !811
  store ptr %208, ptr %26, align 8, !dbg !812
  %209 = load ptr, ptr %26, align 8, !dbg !813
  %210 = icmp ne ptr %209, null, !dbg !813
  br i1 %210, label %211, label %214, !dbg !813

211:                                              ; preds = %200
  %212 = load ptr, ptr %26, align 8, !dbg !814
  %213 = call noalias ptr @strdup(ptr noundef %212) #11, !dbg !815
  br label %215, !dbg !813

214:                                              ; preds = %200
  br label %215, !dbg !813

215:                                              ; preds = %211, %214
  %216 = phi ptr [ %213, %211 ], [ null, %214 ], !dbg !813
  %217 = load ptr, ptr %30, align 8, !dbg !816
  %218 = getelementptr inbounds %struct.ip_info_t, ptr %217, i32 0, i32 6, !dbg !817
  %219 = getelementptr inbounds %struct.anon.9, ptr %218, i32 0, i32 1, !dbg !818
  store ptr %216, ptr %219, align 8, !dbg !819
  %220 = load ptr, ptr %27, align 8, !dbg !820
  %221 = call noalias ptr @strdup(ptr noundef %220) #11, !dbg !821
  %222 = load ptr, ptr %30, align 8, !dbg !822
  %223 = getelementptr inbounds %struct.ip_info_t, ptr %222, i32 0, i32 7, !dbg !823
  store ptr %221, ptr %223, align 8, !dbg !824
  br label %224, !dbg !822

224:                                              ; preds = %215, %90, %85, %80
  call void @llvm.dbg.label(metadata !825), !dbg !826
  %225 = load ptr, ptr %29, align 8, !dbg !827
  %226 = call i32 @sqlite3_finalize(ptr noundef %225), !dbg !828
  br label %227, !dbg !828

227:                                              ; preds = %224, %71, %66, %39
  call void @llvm.dbg.label(metadata !829), !dbg !830
  %228 = load ptr, ptr %30, align 8, !dbg !831
  ret ptr %228, !dbg !832
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_ipinfo(ptr noundef %0, ptr noundef %1) #0 !dbg !833 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !836, metadata !DIExpression()), !dbg !837
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !838, metadata !DIExpression()), !dbg !839
  call void @llvm.dbg.declare(metadata ptr %5, metadata !840, metadata !DIExpression()), !dbg !841
  %6 = load ptr, ptr %3, align 8, !dbg !842
  store ptr %6, ptr %5, align 8, !dbg !841
  %7 = load ptr, ptr %5, align 8, !dbg !843
  %8 = icmp ne ptr %7, null, !dbg !843
  br i1 %8, label %10, label %9, !dbg !845

9:                                                ; preds = %2
  br label %47, !dbg !846

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !847
  %12 = getelementptr inbounds %struct.ip_info_t, ptr %11, i32 0, i32 1, !dbg !848
  %13 = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 0, !dbg !849
  %14 = load ptr, ptr %13, align 8, !dbg !849
  call void @free(ptr noundef %14) #11, !dbg !850
  %15 = load ptr, ptr %5, align 8, !dbg !851
  %16 = getelementptr inbounds %struct.ip_info_t, ptr %15, i32 0, i32 1, !dbg !852
  %17 = getelementptr inbounds %struct.anon.7, ptr %16, i32 0, i32 1, !dbg !853
  %18 = load ptr, ptr %17, align 8, !dbg !853
  call void @free(ptr noundef %18) #11, !dbg !854
  %19 = load ptr, ptr %5, align 8, !dbg !855
  %20 = getelementptr inbounds %struct.ip_info_t, ptr %19, i32 0, i32 2, !dbg !856
  %21 = getelementptr inbounds %struct.anon.7, ptr %20, i32 0, i32 0, !dbg !857
  %22 = load ptr, ptr %21, align 8, !dbg !857
  call void @free(ptr noundef %22) #11, !dbg !858
  %23 = load ptr, ptr %5, align 8, !dbg !859
  %24 = getelementptr inbounds %struct.ip_info_t, ptr %23, i32 0, i32 2, !dbg !860
  %25 = getelementptr inbounds %struct.anon.7, ptr %24, i32 0, i32 1, !dbg !861
  %26 = load ptr, ptr %25, align 8, !dbg !861
  call void @free(ptr noundef %26) #11, !dbg !862
  %27 = load ptr, ptr %5, align 8, !dbg !863
  %28 = getelementptr inbounds %struct.ip_info_t, ptr %27, i32 0, i32 3, !dbg !864
  %29 = getelementptr inbounds %struct.anon.8, ptr %28, i32 0, i32 0, !dbg !865
  %30 = load ptr, ptr %29, align 8, !dbg !865
  call void @free(ptr noundef %30) #11, !dbg !866
  %31 = load ptr, ptr %5, align 8, !dbg !867
  %32 = getelementptr inbounds %struct.ip_info_t, ptr %31, i32 0, i32 3, !dbg !868
  %33 = getelementptr inbounds %struct.anon.8, ptr %32, i32 0, i32 1, !dbg !869
  %34 = load ptr, ptr %33, align 8, !dbg !869
  call void @free(ptr noundef %34) #11, !dbg !870
  %35 = load ptr, ptr %5, align 8, !dbg !871
  %36 = getelementptr inbounds %struct.ip_info_t, ptr %35, i32 0, i32 6, !dbg !872
  %37 = getelementptr inbounds %struct.anon.9, ptr %36, i32 0, i32 0, !dbg !873
  %38 = load ptr, ptr %37, align 8, !dbg !873
  call void @free(ptr noundef %38) #11, !dbg !874
  %39 = load ptr, ptr %5, align 8, !dbg !875
  %40 = getelementptr inbounds %struct.ip_info_t, ptr %39, i32 0, i32 6, !dbg !876
  %41 = getelementptr inbounds %struct.anon.9, ptr %40, i32 0, i32 1, !dbg !877
  %42 = load ptr, ptr %41, align 8, !dbg !877
  call void @free(ptr noundef %42) #11, !dbg !878
  %43 = load ptr, ptr %5, align 8, !dbg !879
  %44 = getelementptr inbounds %struct.ip_info_t, ptr %43, i32 0, i32 7, !dbg !880
  %45 = load ptr, ptr %44, align 8, !dbg !880
  call void @free(ptr noundef %45) #11, !dbg !881
  %46 = load ptr, ptr %5, align 8, !dbg !882
  call void @free(ptr noundef %46) #11, !dbg !883
  br label %47, !dbg !884

47:                                               ; preds = %10, %9
  ret void, !dbg !884
}

declare void @lwan_status_info_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_query_limit(ptr noundef %0, ptr noundef %1) #0 !dbg !885 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !886, metadata !DIExpression()), !dbg !887
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !888, metadata !DIExpression()), !dbg !889
  call void @llvm.dbg.declare(metadata ptr %5, metadata !890, metadata !DIExpression()), !dbg !891
  %6 = call noalias ptr @malloc(i64 noundef 48) #14, !dbg !892
  store ptr %6, ptr %5, align 8, !dbg !891
  %7 = load ptr, ptr %5, align 8, !dbg !893
  %8 = icmp ne ptr %7, null, !dbg !893
  %9 = xor i1 %8, true, !dbg !893
  %10 = xor i1 %9, true, !dbg !893
  %11 = zext i1 %10 to i32, !dbg !893
  %12 = sext i32 %11 to i64, !dbg !893
  %13 = icmp ne i64 %12, 0, !dbg !893
  br i1 %13, label %14, label %17, !dbg !895

14:                                               ; preds = %2
  %15 = load ptr, ptr %5, align 8, !dbg !896
  %16 = getelementptr inbounds %struct.query_limit_t, ptr %15, i32 0, i32 1, !dbg !897
  store i32 0, ptr %16, align 8, !dbg !898
  br label %17, !dbg !896

17:                                               ; preds = %14, %2
  %18 = load ptr, ptr %5, align 8, !dbg !899
  ret ptr %18, !dbg !900
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_query_limit(ptr noundef %0, ptr noundef %1) #0 !dbg !901 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !902, metadata !DIExpression()), !dbg !903
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !904, metadata !DIExpression()), !dbg !905
  %5 = load ptr, ptr %3, align 8, !dbg !906
  call void @free(ptr noundef %5) #11, !dbg !907
  ret void, !dbg !908
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @templated_output(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !909 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [46 x i8], align 16
  %12 = alloca ptr, align 8
  %13 = alloca %struct.ip_info_t, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !910, metadata !DIExpression()), !dbg !911
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !912, metadata !DIExpression()), !dbg !913
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !914, metadata !DIExpression()), !dbg !915
  call void @llvm.dbg.declare(metadata ptr %8, metadata !916, metadata !DIExpression()), !dbg !917
  call void @llvm.dbg.declare(metadata ptr %9, metadata !918, metadata !DIExpression()), !dbg !919
  %14 = load ptr, ptr %7, align 8, !dbg !920
  store ptr %14, ptr %9, align 8, !dbg !919
  call void @llvm.dbg.declare(metadata ptr %10, metadata !921, metadata !DIExpression()), !dbg !922
  call void @llvm.dbg.declare(metadata ptr %11, metadata !923, metadata !DIExpression()), !dbg !927
  %15 = load ptr, ptr %5, align 8, !dbg !928
  %16 = getelementptr inbounds [46 x i8], ptr %11, i64 0, i64 0, !dbg !929
  %17 = call ptr @lwan_request_get_remote_address(ptr noundef %15, ptr noundef %16), !dbg !930
  store ptr %17, ptr %8, align 8, !dbg !931
  %18 = load ptr, ptr %8, align 8, !dbg !932
  %19 = icmp ne ptr %18, null, !dbg !932
  %20 = xor i1 %19, true, !dbg !932
  %21 = zext i1 %20 to i32, !dbg !932
  %22 = sext i32 %21 to i64, !dbg !932
  %23 = icmp ne i64 %22, 0, !dbg !932
  br i1 %23, label %24, label %25, !dbg !934

24:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !935
  br label %69, !dbg !935

25:                                               ; preds = %3
  %26 = load ptr, ptr %8, align 8, !dbg !936
  %27 = call zeroext i1 @is_rate_limited(ptr noundef %26), !dbg !936
  br i1 %27, label %28, label %29, !dbg !938

28:                                               ; preds = %25
  store i32 403, ptr %4, align 4, !dbg !939
  br label %69, !dbg !939

29:                                               ; preds = %25
  %30 = load ptr, ptr %5, align 8, !dbg !940
  %31 = load ptr, ptr %8, align 8, !dbg !941
  %32 = call ptr @internal_query(ptr noundef %30, ptr noundef %31), !dbg !942
  store ptr %32, ptr %10, align 8, !dbg !943
  %33 = load ptr, ptr %10, align 8, !dbg !944
  %34 = icmp ne ptr %33, null, !dbg !944
  %35 = xor i1 %34, true, !dbg !944
  %36 = zext i1 %35 to i32, !dbg !944
  %37 = sext i32 %36 to i64, !dbg !944
  %38 = icmp ne i64 %37, 0, !dbg !944
  br i1 %38, label %39, label %40, !dbg !946

39:                                               ; preds = %29
  store i32 404, ptr %4, align 4, !dbg !947
  br label %69, !dbg !947

40:                                               ; preds = %29
  %41 = load ptr, ptr %9, align 8, !dbg !948
  %42 = load ptr, ptr @json_template, align 8, !dbg !950
  %43 = icmp eq ptr %41, %42, !dbg !951
  br i1 %43, label %44, label %47, !dbg !952

44:                                               ; preds = %40
  %45 = load ptr, ptr %6, align 8, !dbg !953
  %46 = getelementptr inbounds %struct.lwan_response_t_, ptr %45, i32 0, i32 1, !dbg !954
  store ptr @.str.27, ptr %46, align 8, !dbg !955
  br label %58, !dbg !953

47:                                               ; preds = %40
  %48 = load ptr, ptr %9, align 8, !dbg !956
  %49 = load ptr, ptr @xml_template, align 8, !dbg !958
  %50 = icmp eq ptr %48, %49, !dbg !959
  br i1 %50, label %51, label %54, !dbg !960

51:                                               ; preds = %47
  %52 = load ptr, ptr %6, align 8, !dbg !961
  %53 = getelementptr inbounds %struct.lwan_response_t_, ptr %52, i32 0, i32 1, !dbg !962
  store ptr @.str.28, ptr %53, align 8, !dbg !963
  br label %57, !dbg !961

54:                                               ; preds = %47
  %55 = load ptr, ptr %6, align 8, !dbg !964
  %56 = getelementptr inbounds %struct.lwan_response_t_, ptr %55, i32 0, i32 1, !dbg !965
  store ptr @.str.29, ptr %56, align 8, !dbg !966
  br label %57

57:                                               ; preds = %54, %51
  br label %58

58:                                               ; preds = %57, %44
  call void @llvm.dbg.declare(metadata ptr %12, metadata !967, metadata !DIExpression()), !dbg !968
  %59 = load ptr, ptr %5, align 8, !dbg !969
  %60 = call ptr @lwan_request_get_query_param(ptr noundef %59, ptr noundef @.str.23), !dbg !970
  store ptr %60, ptr %12, align 8, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %13, metadata !971, metadata !DIExpression()), !dbg !972
  %61 = load ptr, ptr %10, align 8, !dbg !973
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %61, i64 136, i1 false), !dbg !974
  %62 = load ptr, ptr %12, align 8, !dbg !975
  %63 = getelementptr inbounds %struct.ip_info_t, ptr %13, i32 0, i32 8, !dbg !976
  store ptr %62, ptr %63, align 8, !dbg !977
  %64 = load ptr, ptr %9, align 8, !dbg !978
  %65 = load ptr, ptr %6, align 8, !dbg !979
  %66 = getelementptr inbounds %struct.lwan_response_t_, ptr %65, i32 0, i32 0, !dbg !980
  %67 = load ptr, ptr %66, align 8, !dbg !980
  %68 = call ptr @lwan_tpl_apply_with_buffer(ptr noundef %64, ptr noundef %67, ptr noundef %13), !dbg !981
  store i32 200, ptr %4, align 4, !dbg !982
  br label %69, !dbg !982

69:                                               ; preds = %58, %39, %28, %24
  %70 = load i32, ptr %4, align 4, !dbg !983
  ret i32 %70, !dbg !983
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare ptr @lwan_module_serve_files() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare void @lwan_set_url_map(ptr noundef, ptr noundef) #2

declare void @lwan_main_loop(ptr noundef) #2

declare void @lwan_shutdown(ptr noundef) #2

declare void @lwan_tpl_free(ptr noundef) #2

declare void @cache_destroy(ptr noundef) #2

declare i32 @sqlite3_close(ptr noundef) #2

declare void @lwan_append_str_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_str_is_empty(ptr noundef) #2

declare void @lwan_append_double_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_double_is_empty(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @inet_aton(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_reserved_ip(i32 noundef %0) #0 !dbg !984 {
  %2 = alloca i1, align 1
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !987, metadata !DIExpression()), !dbg !988
  call void @llvm.dbg.declare(metadata ptr %4, metadata !989, metadata !DIExpression()), !dbg !990
  store i64 0, ptr %4, align 8, !dbg !991
  br label %5, !dbg !993

5:                                                ; preds = %15, %1
  %6 = load i64, ptr %4, align 8, !dbg !994
  %7 = icmp ult i64 %6, 16, !dbg !996
  br i1 %7, label %8, label %18, !dbg !997

8:                                                ; preds = %5
  %9 = load i64, ptr %4, align 8, !dbg !998
  %10 = getelementptr inbounds [16 x %struct.ip_net_t], ptr @reserved_ips, i64 0, i64 %9, !dbg !1001
  %11 = load i32, ptr %3, align 4, !dbg !1002
  %12 = call zeroext i1 @net_contains_ip(ptr noundef %10, i32 noundef %11), !dbg !1003
  br i1 %12, label %13, label %14, !dbg !1004

13:                                               ; preds = %8
  store i1 true, ptr %2, align 1, !dbg !1005
  br label %19, !dbg !1005

14:                                               ; preds = %8
  br label %15, !dbg !1006

15:                                               ; preds = %14
  %16 = load i64, ptr %4, align 8, !dbg !1007
  %17 = add i64 %16, 1, !dbg !1007
  store i64 %17, ptr %4, align 8, !dbg !1007
  br label %5, !dbg !1008, !llvm.loop !1009

18:                                               ; preds = %5
  store i1 false, ptr %2, align 1, !dbg !1012
  br label %19, !dbg !1012

19:                                               ; preds = %18, %13
  %20 = load i1, ptr %2, align 1, !dbg !1013
  ret i1 %20, !dbg !1013
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #6

declare i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @sqlite3_bind_int64(ptr noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #8

declare i32 @sqlite3_step(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #9

declare double @sqlite3_column_double(ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @sqlite3_finalize(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @net_contains_ip(ptr noundef %0, i32 noundef %1) #0 !dbg !1014 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.ip_to_octet, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1018, metadata !DIExpression()), !dbg !1019
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1020, metadata !DIExpression()), !dbg !1021
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1022, metadata !DIExpression()), !dbg !1023
  %6 = load i32, ptr %4, align 4, !dbg !1024
  store i32 %6, ptr %5, align 4, !dbg !1025
  %7 = load ptr, ptr %3, align 8, !dbg !1026
  %8 = getelementptr inbounds %struct.ip_net_t, ptr %7, i32 0, i32 0, !dbg !1027
  %9 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !1026
  %10 = load i8, ptr %9, align 4, !dbg !1026
  %11 = zext i8 %10 to i32, !dbg !1026
  %12 = load ptr, ptr %3, align 8, !dbg !1028
  %13 = getelementptr inbounds %struct.ip_net_t, ptr %12, i32 0, i32 1, !dbg !1029
  %14 = getelementptr inbounds [4 x i8], ptr %13, i64 0, i64 0, !dbg !1028
  %15 = load i8, ptr %14, align 4, !dbg !1028
  %16 = zext i8 %15 to i32, !dbg !1028
  %17 = and i32 %11, %16, !dbg !1030
  %18 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 0, !dbg !1031
  %19 = load i8, ptr %18, align 4, !dbg !1031
  %20 = zext i8 %19 to i32, !dbg !1031
  %21 = load ptr, ptr %3, align 8, !dbg !1032
  %22 = getelementptr inbounds %struct.ip_net_t, ptr %21, i32 0, i32 1, !dbg !1033
  %23 = getelementptr inbounds [4 x i8], ptr %22, i64 0, i64 0, !dbg !1032
  %24 = load i8, ptr %23, align 4, !dbg !1032
  %25 = zext i8 %24 to i32, !dbg !1032
  %26 = and i32 %20, %25, !dbg !1034
  %27 = icmp eq i32 %17, %26, !dbg !1035
  br i1 %27, label %28, label %94, !dbg !1036

28:                                               ; preds = %2
  %29 = load ptr, ptr %3, align 8, !dbg !1037
  %30 = getelementptr inbounds %struct.ip_net_t, ptr %29, i32 0, i32 0, !dbg !1038
  %31 = getelementptr inbounds [4 x i8], ptr %30, i64 0, i64 1, !dbg !1037
  %32 = load i8, ptr %31, align 1, !dbg !1037
  %33 = zext i8 %32 to i32, !dbg !1037
  %34 = load ptr, ptr %3, align 8, !dbg !1039
  %35 = getelementptr inbounds %struct.ip_net_t, ptr %34, i32 0, i32 1, !dbg !1040
  %36 = getelementptr inbounds [4 x i8], ptr %35, i64 0, i64 1, !dbg !1039
  %37 = load i8, ptr %36, align 1, !dbg !1039
  %38 = zext i8 %37 to i32, !dbg !1039
  %39 = and i32 %33, %38, !dbg !1041
  %40 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 1, !dbg !1042
  %41 = load i8, ptr %40, align 1, !dbg !1042
  %42 = zext i8 %41 to i32, !dbg !1042
  %43 = load ptr, ptr %3, align 8, !dbg !1043
  %44 = getelementptr inbounds %struct.ip_net_t, ptr %43, i32 0, i32 1, !dbg !1044
  %45 = getelementptr inbounds [4 x i8], ptr %44, i64 0, i64 1, !dbg !1043
  %46 = load i8, ptr %45, align 1, !dbg !1043
  %47 = zext i8 %46 to i32, !dbg !1043
  %48 = and i32 %42, %47, !dbg !1045
  %49 = icmp eq i32 %39, %48, !dbg !1046
  br i1 %49, label %50, label %94, !dbg !1047

50:                                               ; preds = %28
  %51 = load ptr, ptr %3, align 8, !dbg !1048
  %52 = getelementptr inbounds %struct.ip_net_t, ptr %51, i32 0, i32 0, !dbg !1049
  %53 = getelementptr inbounds [4 x i8], ptr %52, i64 0, i64 2, !dbg !1048
  %54 = load i8, ptr %53, align 2, !dbg !1048
  %55 = zext i8 %54 to i32, !dbg !1048
  %56 = load ptr, ptr %3, align 8, !dbg !1050
  %57 = getelementptr inbounds %struct.ip_net_t, ptr %56, i32 0, i32 1, !dbg !1051
  %58 = getelementptr inbounds [4 x i8], ptr %57, i64 0, i64 2, !dbg !1050
  %59 = load i8, ptr %58, align 2, !dbg !1050
  %60 = zext i8 %59 to i32, !dbg !1050
  %61 = and i32 %55, %60, !dbg !1052
  %62 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 2, !dbg !1053
  %63 = load i8, ptr %62, align 2, !dbg !1053
  %64 = zext i8 %63 to i32, !dbg !1053
  %65 = load ptr, ptr %3, align 8, !dbg !1054
  %66 = getelementptr inbounds %struct.ip_net_t, ptr %65, i32 0, i32 1, !dbg !1055
  %67 = getelementptr inbounds [4 x i8], ptr %66, i64 0, i64 2, !dbg !1054
  %68 = load i8, ptr %67, align 2, !dbg !1054
  %69 = zext i8 %68 to i32, !dbg !1054
  %70 = and i32 %64, %69, !dbg !1056
  %71 = icmp eq i32 %61, %70, !dbg !1057
  br i1 %71, label %72, label %94, !dbg !1058

72:                                               ; preds = %50
  %73 = load ptr, ptr %3, align 8, !dbg !1059
  %74 = getelementptr inbounds %struct.ip_net_t, ptr %73, i32 0, i32 0, !dbg !1060
  %75 = getelementptr inbounds [4 x i8], ptr %74, i64 0, i64 3, !dbg !1059
  %76 = load i8, ptr %75, align 1, !dbg !1059
  %77 = zext i8 %76 to i32, !dbg !1059
  %78 = load ptr, ptr %3, align 8, !dbg !1061
  %79 = getelementptr inbounds %struct.ip_net_t, ptr %78, i32 0, i32 1, !dbg !1062
  %80 = getelementptr inbounds [4 x i8], ptr %79, i64 0, i64 3, !dbg !1061
  %81 = load i8, ptr %80, align 1, !dbg !1061
  %82 = zext i8 %81 to i32, !dbg !1061
  %83 = and i32 %77, %82, !dbg !1063
  %84 = getelementptr inbounds [4 x i8], ptr %5, i64 0, i64 3, !dbg !1064
  %85 = load i8, ptr %84, align 1, !dbg !1064
  %86 = zext i8 %85 to i32, !dbg !1064
  %87 = load ptr, ptr %3, align 8, !dbg !1065
  %88 = getelementptr inbounds %struct.ip_net_t, ptr %87, i32 0, i32 1, !dbg !1066
  %89 = getelementptr inbounds [4 x i8], ptr %88, i64 0, i64 3, !dbg !1065
  %90 = load i8, ptr %89, align 1, !dbg !1065
  %91 = zext i8 %90 to i32, !dbg !1065
  %92 = and i32 %86, %91, !dbg !1067
  %93 = icmp eq i32 %83, %92, !dbg !1068
  br label %94

94:                                               ; preds = %72, %50, %28, %2
  %95 = phi i1 [ false, %50 ], [ false, %28 ], [ false, %2 ], [ %93, %72 ], !dbg !1069
  ret i1 %95, !dbg !1070
}

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #6

declare ptr @lwan_request_get_remote_address(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @is_rate_limited(ptr noundef %0) #0 !dbg !1071 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1074, metadata !DIExpression()), !dbg !1075
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1076, metadata !DIExpression()), !dbg !1077
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1078, metadata !DIExpression()), !dbg !1079
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1080, metadata !DIExpression()), !dbg !1081
  %7 = load ptr, ptr @query_limit, align 8, !dbg !1082
  %8 = load ptr, ptr %3, align 8, !dbg !1083
  %9 = call ptr @cache_get_and_ref_entry(ptr noundef %7, ptr noundef %8, ptr noundef %5), !dbg !1084
  store ptr %9, ptr %6, align 8, !dbg !1085
  %10 = load ptr, ptr %6, align 8, !dbg !1086
  %11 = icmp ne ptr %10, null, !dbg !1086
  br i1 %11, label %13, label %12, !dbg !1088

12:                                               ; preds = %1
  store i1 true, ptr %2, align 1, !dbg !1089
  br label %25, !dbg !1089

13:                                               ; preds = %1
  %14 = load ptr, ptr %6, align 8, !dbg !1090
  %15 = getelementptr inbounds %struct.query_limit_t, ptr %14, i32 0, i32 1, !dbg !1090
  %16 = atomicrmw add ptr %15, i32 1 seq_cst, align 4, !dbg !1090
  %17 = add i32 %16, 1, !dbg !1090
  %18 = icmp ugt i32 %17, 10000, !dbg !1091
  %19 = zext i1 %18 to i8, !dbg !1092
  store i8 %19, ptr %4, align 1, !dbg !1092
  %20 = load ptr, ptr @query_limit, align 8, !dbg !1093
  %21 = load ptr, ptr %6, align 8, !dbg !1094
  %22 = getelementptr inbounds %struct.query_limit_t, ptr %21, i32 0, i32 0, !dbg !1095
  call void @cache_entry_unref(ptr noundef %20, ptr noundef %22), !dbg !1096
  %23 = load i8, ptr %4, align 1, !dbg !1097
  %24 = trunc i8 %23 to i1, !dbg !1097
  store i1 %24, ptr %2, align 1, !dbg !1098
  br label %25, !dbg !1098

25:                                               ; preds = %13, %12
  %26 = load i1, ptr %2, align 1, !dbg !1099
  ret i1 %26, !dbg !1099
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @internal_query(ptr noundef %0, ptr noundef %1) #0 !dbg !1100 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1103, metadata !DIExpression()), !dbg !1104
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1107, metadata !DIExpression()), !dbg !1108
  %7 = load ptr, ptr %4, align 8, !dbg !1109
  %8 = getelementptr inbounds %struct.lwan_request_t_, ptr %7, i32 0, i32 2, !dbg !1111
  %9 = getelementptr inbounds %struct.lwan_value_t_, ptr %8, i32 0, i32 1, !dbg !1112
  %10 = load i64, ptr %9, align 8, !dbg !1112
  %11 = icmp eq i64 %10, 0, !dbg !1113
  br i1 %11, label %12, label %14, !dbg !1114

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !1115
  store ptr %13, ptr %6, align 8, !dbg !1116
  br label %27, !dbg !1117

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !1118
  %16 = getelementptr inbounds %struct.lwan_request_t_, ptr %15, i32 0, i32 2, !dbg !1120
  %17 = getelementptr inbounds %struct.lwan_value_t_, ptr %16, i32 0, i32 1, !dbg !1121
  %18 = load i64, ptr %17, align 8, !dbg !1121
  %19 = icmp ult i64 %18, 7, !dbg !1122
  br i1 %19, label %20, label %21, !dbg !1123

20:                                               ; preds = %14
  store ptr null, ptr %6, align 8, !dbg !1124
  br label %26, !dbg !1125

21:                                               ; preds = %14
  %22 = load ptr, ptr %4, align 8, !dbg !1126
  %23 = getelementptr inbounds %struct.lwan_request_t_, ptr %22, i32 0, i32 2, !dbg !1127
  %24 = getelementptr inbounds %struct.lwan_value_t_, ptr %23, i32 0, i32 0, !dbg !1128
  %25 = load ptr, ptr %24, align 8, !dbg !1128
  store ptr %25, ptr %6, align 8, !dbg !1129
  br label %26

26:                                               ; preds = %21, %20
  br label %27

27:                                               ; preds = %26, %12
  %28 = load ptr, ptr %6, align 8, !dbg !1130
  %29 = icmp ne ptr %28, null, !dbg !1130
  %30 = xor i1 %29, true, !dbg !1130
  %31 = zext i1 %30 to i32, !dbg !1130
  %32 = sext i32 %31 to i64, !dbg !1130
  %33 = icmp ne i64 %32, 0, !dbg !1130
  br i1 %33, label %34, label %35, !dbg !1132

34:                                               ; preds = %27
  store ptr null, ptr %3, align 8, !dbg !1133
  br label %44, !dbg !1133

35:                                               ; preds = %27
  %36 = load ptr, ptr @cache, align 8, !dbg !1134
  %37 = load ptr, ptr %4, align 8, !dbg !1135
  %38 = getelementptr inbounds %struct.lwan_request_t_, ptr %37, i32 0, i32 4, !dbg !1136
  %39 = load ptr, ptr %38, align 8, !dbg !1136
  %40 = getelementptr inbounds %struct.lwan_connection_t_, ptr %39, i32 0, i32 2, !dbg !1137
  %41 = load ptr, ptr %40, align 8, !dbg !1137
  %42 = load ptr, ptr %6, align 8, !dbg !1138
  %43 = call ptr @cache_coro_get_and_ref_entry(ptr noundef %36, ptr noundef %41, ptr noundef %42), !dbg !1139
  store ptr %43, ptr %3, align 8, !dbg !1140
  br label %44, !dbg !1140

44:                                               ; preds = %35, %34
  %45 = load ptr, ptr %3, align 8, !dbg !1141
  ret ptr %45, !dbg !1141
}

declare ptr @lwan_request_get_query_param(ptr noundef, ptr noundef) #2

declare ptr @lwan_tpl_apply_with_buffer(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @cache_get_and_ref_entry(ptr noundef, ptr noundef, ptr noundef) #2

declare void @cache_entry_unref(ptr noundef, ptr noundef) #2

declare ptr @cache_coro_get_and_ref_entry(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0,1) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!344, !345, !346, !347, !348, !349, !350}
!llvm.ident = !{!351}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "json_template_str", scope: !2, file: !83, line: 71, type: !341, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !56, globals: !114, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/freegeoip/freegeoip.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "561ad2ff5308a7ee192b72afbd6bde90")
!4 = !{!5, !15, !34, !46}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 158, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONN_MASK", value: -1)
!10 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!11 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!12 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!13 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!14 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 114, baseType: !16, size: 32, elements: !17)
!16 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29, !30, !31, !32, !33}
!18 = !DIEnumerator(name: "HTTP_OK", value: 200)
!19 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!20 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!21 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!22 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!23 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!24 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!25 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!26 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!27 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!28 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!29 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!30 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!31 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!32 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!33 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!34 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 145, baseType: !7, size: 32, elements: !35)
!35 = !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45}
!36 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!37 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!38 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!39 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!40 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!41 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!42 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!43 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!44 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!45 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 133, baseType: !16, size: 32, elements: !47)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55}
!48 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!49 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!50 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!51 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!52 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!53 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!54 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!55 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!56 = !{!57, !58, !59, !71, !81, !109}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !6, line: 143, baseType: !46)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_entry_t", file: !61, line: 27, size: 320, elements: !62)
!61 = !DIFile(filename: "common/lwan-cache.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f48e19cadb0735f737f22aa65af51f83")
!62 = !{!63, !70, !73, !74, !75}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !60, file: !61, line: 28, baseType: !64, size: 128)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !65, line: 191, size: 128, elements: !66)
!65 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!66 = !{!67, !69}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !64, file: !65, line: 193, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !64, file: !65, line: 193, baseType: !68, size: 64, offset: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !60, file: !61, line: 29, baseType: !71, size: 64, offset: 128)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !60, file: !61, line: 30, baseType: !16, size: 32, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !60, file: !61, line: 31, baseType: !16, size: 32, offset: 224)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !60, file: !61, line: 32, baseType: !76, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !77, line: 10, baseType: !78)
!77 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !79, line: 160, baseType: !80)
!79 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!80 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_info_t", file: !83, line: 37, size: 1088, elements: !84)
!83 = !DIFile(filename: "freegeoip/freegeoip.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "561ad2ff5308a7ee192b72afbd6bde90")
!84 = !{!85, !86, !91, !92, !97, !99, !100, !105, !106}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !82, file: !83, line: 38, baseType: !60, size: 320)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "country", scope: !82, file: !83, line: 42, baseType: !87, size: 128, offset: 320)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !83, line: 39, size: 128, elements: !88)
!88 = !{!89, !90}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !87, file: !83, line: 40, baseType: !71, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !87, file: !83, line: 41, baseType: !71, size: 64, offset: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "region", scope: !82, file: !83, line: 42, baseType: !87, size: 128, offset: 448)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "city", scope: !82, file: !83, line: 46, baseType: !93, size: 128, offset: 576)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !83, line: 43, size: 128, elements: !94)
!94 = !{!95, !96}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !93, file: !83, line: 44, baseType: !71, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "zip_code", scope: !93, file: !83, line: 45, baseType: !71, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "latitude", scope: !82, file: !83, line: 47, baseType: !98, size: 64, offset: 704)
!98 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "longitude", scope: !82, file: !83, line: 47, baseType: !98, size: 64, offset: 768)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "metro", scope: !82, file: !83, line: 50, baseType: !101, size: 128, offset: 832)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !82, file: !83, line: 48, size: 128, elements: !102)
!102 = !{!103, !104}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !101, file: !83, line: 49, baseType: !71, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "area", scope: !101, file: !83, line: 49, baseType: !71, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !82, file: !83, line: 51, baseType: !71, size: 64, offset: 960)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !82, file: !83, line: 52, baseType: !107, size: 64, offset: 1024)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "query_limit_t", file: !83, line: 174, size: 384, elements: !111)
!111 = !{!112, !113}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !110, file: !83, line: 175, baseType: !60, size: 320)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "queries", scope: !110, file: !83, line: 176, baseType: !16, size: 32, offset: 320)
!114 = !{!115, !120, !125, !130, !135, !137, !142, !147, !152, !157, !162, !164, !169, !174, !0, !178, !183, !185, !190, !192, !197, !202, !204, !206, !211, !213, !218, !220, !273, !278, !283, !285, !290, !292, !298, !300, !302, !325, !330, !332, !334, !336}
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !83, line: 403, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 296, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 37)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !83, line: 403, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 40, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 5)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !83, line: 403, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 256, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 32)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !83, line: 406, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 248, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 31)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !83, line: 409, type: !132, isLocal: true, isDefinition: true)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !83, line: 411, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 136, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 17)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !83, line: 414, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 224, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 28)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !83, line: 419, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 344, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 43)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !83, line: 428, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 56, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 7)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !83, line: 429, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 48, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 6)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !83, line: 430, type: !159, isLocal: true, isDefinition: true)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !83, line: 431, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 16, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 2)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !83, line: 431, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 72, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 9)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(name: "query_limit", scope: !2, file: !83, line: 179, type: !176, isLocal: true, isDefinition: true)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DICompositeType(tag: DW_TAG_structure_type, name: "cache_t", file: !61, line: 40, flags: DIFlagFwdDecl)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !83, line: 56, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 104, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 13)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !83, line: 57, type: !180, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !83, line: 58, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 96, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 12)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !83, line: 59, type: !187, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !83, line: 60, type: !194, isLocal: true, isDefinition: true)
!194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 80, elements: !195)
!195 = !{!196}
!196 = !DISubrange(count: 10)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !83, line: 61, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 112, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 14)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !83, line: 62, type: !171, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !83, line: 63, type: !194, isLocal: true, isDefinition: true)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !83, line: 64, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 88, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 11)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !83, line: 65, type: !208, isLocal: true, isDefinition: true)
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(scope: null, file: !83, line: 66, type: !215, isLocal: true, isDefinition: true)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 24, elements: !216)
!216 = !{!217}
!217 = !DISubrange(count: 3)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !83, line: 67, type: !171, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "template_descriptor", scope: !2, file: !83, line: 55, type: !222, isLocal: true, isDefinition: true)
!222 = !DICompositeType(tag: DW_TAG_array_type, baseType: !223, size: 4992, elements: !181)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !225, line: 26, baseType: !226)
!225 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !225, line: 30, size: 384, elements: !227)
!227 = !{!228, !229, !234, !257, !262, !271}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !226, file: !225, line: 31, baseType: !107, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !226, file: !225, line: 32, baseType: !230, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !232, line: 85, baseType: !233)
!232 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !79, line: 152, baseType: !80)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !226, file: !225, line: 34, baseType: !235, size: 64, offset: 128)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !238, !57}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !240, line: 25, baseType: !241)
!240 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !240, line: 27, size: 256, elements: !242)
!242 = !{!243, !248, !256}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !241, file: !240, line: 31, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !241, file: !240, line: 28, size: 64, elements: !245)
!245 = !{!246, !247}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !244, file: !240, line: 29, baseType: !71, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !244, file: !240, line: 30, baseType: !107, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !241, file: !240, line: 34, baseType: !249, size: 128, offset: 64)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !240, line: 32, size: 128, elements: !250)
!250 = !{!251, !255}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !249, file: !240, line: 33, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !253, line: 46, baseType: !254)
!253 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!254 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !249, file: !240, line: 33, baseType: !252, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !241, file: !240, line: 35, baseType: !16, size: 32, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !226, file: !225, line: 35, baseType: !258, size: 64, offset: 192)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!261, !57}
!261 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !226, file: !225, line: 37, baseType: !263, size: 64, offset: 256)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !225, line: 28, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!7, !267}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !269, line: 34, baseType: !270)
!269 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!270 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !269, line: 34, flags: DIFlagFwdDecl)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !226, file: !225, line: 38, baseType: !272, size: 64, offset: 320)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(name: "json_template", scope: !2, file: !83, line: 183, type: !275, isLocal: true, isDefinition: true)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !225, line: 25, baseType: !277)
!277 = !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !225, line: 25, flags: DIFlagFwdDecl)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(name: "xml_template_str", scope: !2, file: !83, line: 88, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 3552, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 444)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "xml_template", scope: !2, file: !83, line: 184, type: !275, isLocal: true, isDefinition: true)
!285 = !DIGlobalVariableExpression(var: !286, expr: !DIExpression())
!286 = distinct !DIGlobalVariable(name: "csv_template_str", scope: !2, file: !83, line: 104, type: !287, isLocal: true, isDefinition: true)
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1472, elements: !288)
!288 = !{!289}
!289 = !DISubrange(count: 184)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "csv_template", scope: !2, file: !83, line: 185, type: !275, isLocal: true, isDefinition: true)
!292 = !DIGlobalVariableExpression(var: !293, expr: !DIExpression())
!293 = distinct !DIGlobalVariable(name: "db", scope: !2, file: !83, line: 187, type: !294, isLocal: true, isDefinition: true)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !296, line: 272, baseType: !297)
!296 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "", checksumkind: CSK_MD5, checksum: "a588c4681dc2c3e9f3424818d7f39d50")
!297 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !296, line: 272, flags: DIFlagFwdDecl)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !83, line: 253, type: !215, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !83, line: 254, type: !171, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(name: "reserved_ips", scope: !2, file: !83, line: 151, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !305, size: 1024, elements: !323)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ip_net_t", file: !83, line: 142, size: 64, elements: !307)
!307 = !{!308, !322}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !306, file: !83, line: 143, baseType: !309, size: 32)
!309 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "ip_to_octet", file: !83, line: 137, size: 32, elements: !310)
!310 = !{!311, !316}
!311 = !DIDerivedType(tag: DW_TAG_member, name: "octet", scope: !309, file: !83, line: 138, baseType: !312, size: 32)
!312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 32, elements: !314)
!313 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!314 = !{!315}
!315 = !DISubrange(count: 4)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !309, file: !83, line: 139, baseType: !317, size: 32)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !318, line: 30, baseType: !319)
!318 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !320, line: 26, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !79, line: 42, baseType: !16)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "mask", scope: !306, file: !83, line: 144, baseType: !309, size: 32, offset: 32)
!323 = !{!324}
!324 = !DISubrange(count: 16)
!325 = !DIGlobalVariableExpression(var: !326, expr: !DIExpression())
!326 = distinct !DIGlobalVariable(name: "ip_to_city_query", scope: !2, file: !83, line: 118, type: !327, isLocal: true, isDefinition: true)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 5248, elements: !328)
!328 = !{!329}
!329 = !DISubrange(count: 656)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(name: "cache", scope: !2, file: !83, line: 186, type: !176, isLocal: true, isDefinition: true)
!332 = !DIGlobalVariableExpression(var: !333, expr: !DIExpression())
!333 = distinct !DIGlobalVariable(scope: null, file: !83, line: 378, type: !127, isLocal: true, isDefinition: true)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !83, line: 380, type: !132, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !83, line: 382, type: !338, isLocal: true, isDefinition: true)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 208, elements: !339)
!339 = !{!340}
!340 = !DISubrange(count: 26)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 3024, elements: !342)
!342 = !{!343}
!343 = !DISubrange(count: 378)
!344 = !{i32 7, !"Dwarf Version", i32 5}
!345 = !{i32 2, !"Debug Info Version", i32 3}
!346 = !{i32 1, !"wchar_size", i32 4}
!347 = !{i32 8, !"PIC Level", i32 2}
!348 = !{i32 7, !"PIE Level", i32 2}
!349 = !{i32 7, !"uwtable", i32 2}
!350 = !{i32 7, !"frame-pointer", i32 2}
!351 = !{!"clang version 16.0.0"}
!352 = distinct !DISubprogram(name: "main", scope: !83, file: !83, line: 395, type: !353, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !355)
!353 = !DISubroutineType(types: !354)
!354 = !{!7}
!355 = !{}
!356 = !DILocalVariable(name: "l", scope: !352, file: !83, line: 397, type: !357)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !6, line: 103, baseType: !358)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !6, line: 275, size: 640, elements: !359)
!359 = !{!360, !387, !420, !427, !431, !441}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !358, file: !6, line: 276, baseType: !361, size: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !362, line: 25, baseType: !363)
!362 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !362, line: 41, size: 128, elements: !364)
!364 = !{!365, !383}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !363, file: !362, line: 42, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !362, line: 26, baseType: !368)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !362, line: 29, size: 640, elements: !369)
!369 = !{!370, !374, !382}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !368, file: !362, line: 30, baseType: !371, size: 512)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !366, size: 512, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 8)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !368, file: !362, line: 31, baseType: !375, size: 64, offset: 512)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !362, line: 27, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !362, line: 35, size: 192, elements: !378)
!378 = !{!379, !380, !381}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !377, file: !362, line: 36, baseType: !71, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !377, file: !362, line: 37, baseType: !57, size: 64, offset: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !377, file: !362, line: 38, baseType: !375, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !368, file: !362, line: 32, baseType: !7, size: 32, offset: 576)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !363, file: !362, line: 43, baseType: !384, size: 64, offset: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{null, !57}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !358, file: !6, line: 277, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !6, line: 112, baseType: !390)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !6, line: 196, size: 256, elements: !391)
!391 = !{!392, !394, !395, !396, !418, !419}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !390, file: !6, line: 199, baseType: !393, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !6, line: 165, baseType: !5)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !390, file: !6, line: 200, baseType: !16, size: 32, offset: 32)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !390, file: !6, line: 201, baseType: !267, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !390, file: !6, line: 202, baseType: !397, size: 64, offset: 128)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !6, line: 108, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !6, line: 253, size: 832, elements: !400)
!400 = !{!401, !403, !412, !413, !415}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !399, file: !6, line: 254, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !399, file: !6, line: 259, baseType: !404, size: 576, offset: 64)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !399, file: !6, line: 255, size: 576, elements: !405)
!405 = !{!406, !410, !411}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !404, file: !6, line: 256, baseType: !407, size: 240)
!407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 240, elements: !408)
!408 = !{!409}
!409 = !DISubrange(count: 30)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !404, file: !6, line: 257, baseType: !407, size: 240, offset: 240)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !404, file: !6, line: 258, baseType: !76, size: 64, offset: 512)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !399, file: !6, line: 261, baseType: !7, size: 32, offset: 640)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !399, file: !6, line: 262, baseType: !414, size: 64, offset: 672)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !167)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !399, file: !6, line: 263, baseType: !416, size: 64, offset: 768)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !417, line: 27, baseType: !254)
!417 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!418 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !390, file: !6, line: 203, baseType: !7, size: 32, offset: 192)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !390, file: !6, line: 203, baseType: !7, size: 32, offset: 224)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !358, file: !6, line: 283, baseType: !421, size: 128, offset: 192)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !6, line: 279, size: 128, elements: !422)
!422 = !{!423, !424, !425}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !421, file: !6, line: 280, baseType: !397, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !421, file: !6, line: 281, baseType: !16, size: 32, offset: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !421, file: !6, line: 282, baseType: !426, size: 16, offset: 96)
!426 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !358, file: !6, line: 285, baseType: !428, size: 64, offset: 320)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !430, line: 6, flags: DIFlagFwdDecl)
!430 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!431 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !358, file: !6, line: 286, baseType: !432, size: 192, offset: 384)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !6, line: 111, baseType: !433)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !6, line: 266, size: 192, elements: !434)
!434 = !{!435, !436, !437, !438, !439, !440}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !433, file: !6, line: 267, baseType: !71, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !433, file: !6, line: 268, baseType: !426, size: 16, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !433, file: !6, line: 269, baseType: !261, size: 8, offset: 80)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !433, file: !6, line: 270, baseType: !261, size: 8, offset: 88)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !433, file: !6, line: 271, baseType: !16, size: 32, offset: 96)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !433, file: !6, line: 272, baseType: !426, size: 16, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !358, file: !6, line: 287, baseType: !7, size: 32, offset: 576)
!442 = !DILocation(line: 397, column: 12, scope: !352)
!443 = !DILocation(line: 399, column: 5, scope: !352)
!444 = !DILocation(line: 401, column: 21, scope: !352)
!445 = !DILocation(line: 401, column: 19, scope: !352)
!446 = !DILocation(line: 402, column: 10, scope: !447)
!447 = distinct !DILexicalBlock(scope: !352, file: !83, line: 402, column: 9)
!448 = !DILocation(line: 402, column: 9, scope: !352)
!449 = !DILocation(line: 403, column: 9, scope: !447)
!450 = !DILocation(line: 404, column: 20, scope: !352)
!451 = !DILocation(line: 404, column: 18, scope: !352)
!452 = !DILocation(line: 405, column: 10, scope: !453)
!453 = distinct !DILexicalBlock(scope: !352, file: !83, line: 405, column: 9)
!454 = !DILocation(line: 405, column: 9, scope: !352)
!455 = !DILocation(line: 406, column: 9, scope: !453)
!456 = !DILocation(line: 407, column: 20, scope: !352)
!457 = !DILocation(line: 407, column: 18, scope: !352)
!458 = !DILocation(line: 408, column: 10, scope: !459)
!459 = distinct !DILexicalBlock(scope: !352, file: !83, line: 408, column: 9)
!460 = !DILocation(line: 408, column: 9, scope: !352)
!461 = !DILocation(line: 409, column: 9, scope: !459)
!462 = !DILocalVariable(name: "result", scope: !352, file: !83, line: 411, type: !7)
!463 = !DILocation(line: 411, column: 9, scope: !352)
!464 = !DILocation(line: 411, column: 18, scope: !352)
!465 = !DILocation(line: 413, column: 9, scope: !466)
!466 = distinct !DILexicalBlock(scope: !352, file: !83, line: 413, column: 9)
!467 = !DILocation(line: 413, column: 16, scope: !466)
!468 = !DILocation(line: 413, column: 9, scope: !352)
!469 = !DILocation(line: 414, column: 9, scope: !466)
!470 = !DILocation(line: 416, column: 13, scope: !352)
!471 = !DILocation(line: 416, column: 11, scope: !352)
!472 = !DILocation(line: 419, column: 5, scope: !352)
!473 = !DILocation(line: 421, column: 19, scope: !352)
!474 = !DILocation(line: 421, column: 17, scope: !352)
!475 = !DILocalVariable(name: "default_map", scope: !352, file: !83, line: 427, type: !476)
!476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 2880, elements: !123)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_url_map_t", file: !6, line: 109, baseType: !479)
!479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_url_map_t_", file: !6, line: 236, size: 576, elements: !480)
!480 = !{!481, !540, !541, !542, !543, !544, !564, !565}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !479, file: !6, line: 237, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!485, !486, !539, !57}
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !6, line: 131, baseType: !15)
!486 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !6, line: 106, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !6, line: 206, size: 1280, elements: !489)
!489 = !{!490, !492, !493, !499, !500, !501, !512, !513, !522}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !488, file: !6, line: 207, baseType: !491, size: 32)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !6, line: 156, baseType: !34)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !488, file: !6, line: 208, baseType: !7, size: 32, offset: 32)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !488, file: !6, line: 209, baseType: !494, size: 128, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !6, line: 110, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !6, line: 191, size: 128, elements: !496)
!496 = !{!497, !498}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !495, file: !6, line: 192, baseType: !71, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !495, file: !6, line: 193, baseType: !252, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !488, file: !6, line: 210, baseType: !494, size: 128, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !488, file: !6, line: 211, baseType: !388, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !488, file: !6, line: 216, baseType: !502, size: 128, offset: 384)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !6, line: 213, size: 128, elements: !503)
!503 = !{!504, !511}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !502, file: !6, line: 214, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !6, line: 105, baseType: !507)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !6, line: 173, size: 128, elements: !508)
!508 = !{!509, !510}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !507, file: !6, line: 174, baseType: !71, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !507, file: !6, line: 175, baseType: !71, size: 64, offset: 64)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !502, file: !6, line: 215, baseType: !252, size: 64, offset: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !488, file: !6, line: 216, baseType: !502, size: 128, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !488, file: !6, line: 223, baseType: !514, size: 192, offset: 640)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !6, line: 217, size: 192, elements: !515)
!515 = !{!516, !517}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !514, file: !6, line: 218, baseType: !76, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !514, file: !6, line: 222, baseType: !518, size: 128, offset: 64)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !514, file: !6, line: 219, size: 128, elements: !519)
!519 = !{!520, !521}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !518, file: !6, line: 220, baseType: !231, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !518, file: !6, line: 221, baseType: !231, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !488, file: !6, line: 224, baseType: !523, size: 448, offset: 832)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !6, line: 107, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !6, line: 178, size: 448, elements: !525)
!525 = !{!526, !527, !528, !529, !530}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !524, file: !6, line: 179, baseType: !238, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !524, file: !6, line: 180, baseType: !107, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !524, file: !6, line: 181, baseType: !252, size: 64, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !524, file: !6, line: 182, baseType: !505, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !524, file: !6, line: 188, baseType: !531, size: 192, offset: 256)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !524, file: !6, line: 184, size: 192, elements: !532)
!532 = !{!533, !537, !538}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !531, file: !6, line: 185, baseType: !534, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DISubroutineType(types: !536)
!536 = !{!485, !486, !57}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !531, file: !6, line: 186, baseType: !57, size: 64, offset: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !531, file: !6, line: 187, baseType: !57, size: 64, offset: 128)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !479, file: !6, line: 238, baseType: !57, size: 64, offset: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !479, file: !6, line: 240, baseType: !107, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !479, file: !6, line: 241, baseType: !252, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !479, file: !6, line: 242, baseType: !58, size: 32, offset: 256)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !479, file: !6, line: 244, baseType: !545, size: 64, offset: 320)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !6, line: 104, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !6, line: 227, size: 384, elements: !549)
!549 = !{!550, !551, !555, !561, !562, !563}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !548, file: !6, line: 228, baseType: !107, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !548, file: !6, line: 229, baseType: !552, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!57, !57}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !548, file: !6, line: 230, baseType: !556, size: 64, offset: 128)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DISubroutineType(types: !558)
!558 = !{!57, !559}
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !548, file: !6, line: 231, baseType: !384, size: 64, offset: 192)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !548, file: !6, line: 232, baseType: !482, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !548, file: !6, line: 233, baseType: !58, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !479, file: !6, line: 245, baseType: !57, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !479, file: !6, line: 250, baseType: !566, size: 128, offset: 448)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !479, file: !6, line: 247, size: 128, elements: !567)
!567 = !{!568, !569}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !566, file: !6, line: 248, baseType: !71, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !566, file: !6, line: 249, baseType: !71, size: 64, offset: 64)
!570 = !DILocation(line: 427, column: 26, scope: !352)
!571 = !DILocation(line: 427, column: 42, scope: !352)
!572 = !DILocation(line: 428, column: 9, scope: !352)
!573 = !DILocation(line: 428, column: 68, scope: !352)
!574 = !DILocation(line: 429, column: 9, scope: !352)
!575 = !DILocation(line: 429, column: 67, scope: !352)
!576 = !DILocation(line: 430, column: 9, scope: !352)
!577 = !DILocation(line: 430, column: 67, scope: !352)
!578 = !DILocation(line: 431, column: 9, scope: !352)
!579 = !DILocation(line: 431, column: 26, scope: !352)
!580 = !DILocation(line: 435, column: 26, scope: !352)
!581 = !DILocation(line: 435, column: 5, scope: !352)
!582 = !DILocation(line: 436, column: 5, scope: !352)
!583 = !DILocation(line: 437, column: 5, scope: !352)
!584 = !DILocation(line: 439, column: 19, scope: !352)
!585 = !DILocation(line: 439, column: 5, scope: !352)
!586 = !DILocation(line: 440, column: 19, scope: !352)
!587 = !DILocation(line: 440, column: 5, scope: !352)
!588 = !DILocation(line: 441, column: 19, scope: !352)
!589 = !DILocation(line: 441, column: 5, scope: !352)
!590 = !DILocation(line: 443, column: 19, scope: !352)
!591 = !DILocation(line: 443, column: 5, scope: !352)
!592 = !DILocation(line: 445, column: 19, scope: !352)
!593 = !DILocation(line: 445, column: 5, scope: !352)
!594 = !DILocation(line: 446, column: 19, scope: !352)
!595 = !DILocation(line: 446, column: 5, scope: !352)
!596 = !DILocation(line: 448, column: 5, scope: !352)
!597 = distinct !DISubprogram(name: "create_ipinfo", scope: !83, file: !83, line: 241, type: !598, scopeLine: 242, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!598 = !DISubroutineType(types: !599)
!599 = !{!59, !107, !57}
!600 = !DILocalVariable(name: "key", arg: 1, scope: !597, file: !83, line: 241, type: !107)
!601 = !DILocation(line: 241, column: 27, scope: !597)
!602 = !DILocalVariable(name: "context", arg: 2, scope: !597, file: !83, line: 241, type: !57)
!603 = !DILocation(line: 241, column: 38, scope: !597)
!604 = !DILocalVariable(name: "stmt", scope: !597, file: !83, line: 243, type: !605)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !296, line: 3892, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !296, line: 3892, flags: DIFlagFwdDecl)
!608 = !DILocation(line: 243, column: 19, scope: !597)
!609 = !DILocalVariable(name: "ip_info", scope: !597, file: !83, line: 244, type: !81)
!610 = !DILocation(line: 244, column: 23, scope: !597)
!611 = !DILocalVariable(name: "addr", scope: !597, file: !83, line: 245, type: !612)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !318, line: 31, size: 32, elements: !613)
!613 = !{!614}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !612, file: !318, line: 33, baseType: !317, size: 32)
!615 = !DILocation(line: 245, column: 20, scope: !597)
!616 = !DILocation(line: 247, column: 9, scope: !617)
!617 = distinct !DILexicalBlock(scope: !597, file: !83, line: 247, column: 9)
!618 = !DILocation(line: 247, column: 9, scope: !597)
!619 = !DILocation(line: 248, column: 9, scope: !617)
!620 = !DILocation(line: 250, column: 29, scope: !621)
!621 = distinct !DILexicalBlock(scope: !597, file: !83, line: 250, column: 9)
!622 = !DILocation(line: 250, column: 9, scope: !621)
!623 = !DILocation(line: 250, column: 9, scope: !597)
!624 = !DILocation(line: 251, column: 19, scope: !625)
!625 = distinct !DILexicalBlock(scope: !621, file: !83, line: 250, column: 38)
!626 = !DILocation(line: 251, column: 17, scope: !625)
!627 = !DILocation(line: 252, column: 13, scope: !628)
!628 = distinct !DILexicalBlock(scope: !625, file: !83, line: 252, column: 13)
!629 = !DILocation(line: 252, column: 13, scope: !625)
!630 = !DILocation(line: 253, column: 37, scope: !631)
!631 = distinct !DILexicalBlock(scope: !628, file: !83, line: 252, column: 30)
!632 = !DILocation(line: 253, column: 13, scope: !631)
!633 = !DILocation(line: 253, column: 22, scope: !631)
!634 = !DILocation(line: 253, column: 30, scope: !631)
!635 = !DILocation(line: 253, column: 35, scope: !631)
!636 = !DILocation(line: 254, column: 37, scope: !631)
!637 = !DILocation(line: 254, column: 13, scope: !631)
!638 = !DILocation(line: 254, column: 22, scope: !631)
!639 = !DILocation(line: 254, column: 30, scope: !631)
!640 = !DILocation(line: 254, column: 35, scope: !631)
!641 = !DILocation(line: 255, column: 34, scope: !631)
!642 = !DILocation(line: 255, column: 27, scope: !631)
!643 = !DILocation(line: 255, column: 13, scope: !631)
!644 = !DILocation(line: 255, column: 22, scope: !631)
!645 = !DILocation(line: 255, column: 25, scope: !631)
!646 = !DILocation(line: 256, column: 9, scope: !631)
!647 = !DILocation(line: 257, column: 9, scope: !625)
!648 = !DILocation(line: 260, column: 25, scope: !649)
!649 = distinct !DILexicalBlock(scope: !597, file: !83, line: 260, column: 9)
!650 = !DILocation(line: 260, column: 9, scope: !649)
!651 = !DILocation(line: 262, column: 38, scope: !649)
!652 = !DILocation(line: 260, column: 9, scope: !597)
!653 = !DILocation(line: 263, column: 9, scope: !649)
!654 = !DILocation(line: 265, column: 28, scope: !655)
!655 = distinct !DILexicalBlock(scope: !597, file: !83, line: 265, column: 9)
!656 = !DILocation(line: 265, column: 48, scope: !655)
!657 = !DILocation(line: 265, column: 37, scope: !655)
!658 = !DILocation(line: 265, column: 9, scope: !655)
!659 = !DILocation(line: 265, column: 57, scope: !655)
!660 = !DILocation(line: 265, column: 9, scope: !597)
!661 = !DILocation(line: 266, column: 9, scope: !655)
!662 = !DILocation(line: 268, column: 22, scope: !663)
!663 = distinct !DILexicalBlock(scope: !597, file: !83, line: 268, column: 9)
!664 = !DILocation(line: 268, column: 9, scope: !663)
!665 = !DILocation(line: 268, column: 28, scope: !663)
!666 = !DILocation(line: 268, column: 9, scope: !597)
!667 = !DILocation(line: 269, column: 9, scope: !663)
!668 = !DILocation(line: 271, column: 15, scope: !597)
!669 = !DILocation(line: 271, column: 13, scope: !597)
!670 = !DILocation(line: 272, column: 10, scope: !671)
!671 = distinct !DILexicalBlock(scope: !597, file: !83, line: 272, column: 9)
!672 = !DILocation(line: 272, column: 9, scope: !597)
!673 = !DILocation(line: 273, column: 9, scope: !671)
!674 = !DILocation(line: 277, column: 29, scope: !597)
!675 = !DILocalVariable(name: "stmt", arg: 1, scope: !676, file: !83, line: 232, type: !605)
!676 = distinct !DISubprogram(name: "text_column_helper", scope: !83, file: !83, line: 232, type: !677, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!677 = !DISubroutineType(types: !678)
!678 = !{!71, !605, !7}
!679 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !680)
!680 = distinct !DILocation(line: 277, column: 29, scope: !597)
!681 = !DILocalVariable(name: "ind", arg: 2, scope: !676, file: !83, line: 232, type: !7)
!682 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !680)
!683 = !DILocalVariable(name: "value", scope: !676, file: !83, line: 234, type: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!686 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !680)
!687 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !680)
!688 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !680)
!689 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !680)
!690 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !680)
!691 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !680)
!692 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !680)
!693 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !680)
!694 = !DILocation(line: 277, column: 5, scope: !597)
!695 = !DILocation(line: 277, column: 14, scope: !597)
!696 = !DILocation(line: 277, column: 22, scope: !597)
!697 = !DILocation(line: 277, column: 27, scope: !597)
!698 = !DILocation(line: 278, column: 29, scope: !597)
!699 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !700)
!700 = distinct !DILocation(line: 278, column: 29, scope: !597)
!701 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !700)
!702 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !700)
!703 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !700)
!704 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !700)
!705 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !700)
!706 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !700)
!707 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !700)
!708 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !700)
!709 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !700)
!710 = !DILocation(line: 278, column: 5, scope: !597)
!711 = !DILocation(line: 278, column: 14, scope: !597)
!712 = !DILocation(line: 278, column: 22, scope: !597)
!713 = !DILocation(line: 278, column: 27, scope: !597)
!714 = !DILocation(line: 279, column: 28, scope: !597)
!715 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !716)
!716 = distinct !DILocation(line: 279, column: 28, scope: !597)
!717 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !716)
!718 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !716)
!719 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !716)
!720 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !716)
!721 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !716)
!722 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !716)
!723 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !716)
!724 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !716)
!725 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !716)
!726 = !DILocation(line: 279, column: 5, scope: !597)
!727 = !DILocation(line: 279, column: 14, scope: !597)
!728 = !DILocation(line: 279, column: 21, scope: !597)
!729 = !DILocation(line: 279, column: 26, scope: !597)
!730 = !DILocation(line: 280, column: 28, scope: !597)
!731 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !732)
!732 = distinct !DILocation(line: 280, column: 28, scope: !597)
!733 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !732)
!734 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !732)
!735 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !732)
!736 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !732)
!737 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !732)
!738 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !732)
!739 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !732)
!740 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !732)
!741 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !732)
!742 = !DILocation(line: 280, column: 5, scope: !597)
!743 = !DILocation(line: 280, column: 14, scope: !597)
!744 = !DILocation(line: 280, column: 21, scope: !597)
!745 = !DILocation(line: 280, column: 26, scope: !597)
!746 = !DILocation(line: 281, column: 26, scope: !597)
!747 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !748)
!748 = distinct !DILocation(line: 281, column: 26, scope: !597)
!749 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !748)
!750 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !748)
!751 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !748)
!752 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !748)
!753 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !748)
!754 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !748)
!755 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !748)
!756 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !748)
!757 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !748)
!758 = !DILocation(line: 281, column: 5, scope: !597)
!759 = !DILocation(line: 281, column: 14, scope: !597)
!760 = !DILocation(line: 281, column: 19, scope: !597)
!761 = !DILocation(line: 281, column: 24, scope: !597)
!762 = !DILocation(line: 282, column: 30, scope: !597)
!763 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !764)
!764 = distinct !DILocation(line: 282, column: 30, scope: !597)
!765 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !764)
!766 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !764)
!767 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !764)
!768 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !764)
!769 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !764)
!770 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !764)
!771 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !764)
!772 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !764)
!773 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !764)
!774 = !DILocation(line: 282, column: 5, scope: !597)
!775 = !DILocation(line: 282, column: 14, scope: !597)
!776 = !DILocation(line: 282, column: 19, scope: !597)
!777 = !DILocation(line: 282, column: 28, scope: !597)
!778 = !DILocation(line: 283, column: 47, scope: !597)
!779 = !DILocation(line: 283, column: 25, scope: !597)
!780 = !DILocation(line: 283, column: 5, scope: !597)
!781 = !DILocation(line: 283, column: 14, scope: !597)
!782 = !DILocation(line: 283, column: 23, scope: !597)
!783 = !DILocation(line: 284, column: 48, scope: !597)
!784 = !DILocation(line: 284, column: 26, scope: !597)
!785 = !DILocation(line: 284, column: 5, scope: !597)
!786 = !DILocation(line: 284, column: 14, scope: !597)
!787 = !DILocation(line: 284, column: 24, scope: !597)
!788 = !DILocation(line: 285, column: 27, scope: !597)
!789 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !790)
!790 = distinct !DILocation(line: 285, column: 27, scope: !597)
!791 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !790)
!792 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !790)
!793 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !790)
!794 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !790)
!795 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !790)
!796 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !790)
!797 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !790)
!798 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !790)
!799 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !790)
!800 = !DILocation(line: 285, column: 5, scope: !597)
!801 = !DILocation(line: 285, column: 14, scope: !597)
!802 = !DILocation(line: 285, column: 20, scope: !597)
!803 = !DILocation(line: 285, column: 25, scope: !597)
!804 = !DILocation(line: 286, column: 27, scope: !597)
!805 = !DILocation(line: 232, column: 34, scope: !676, inlinedAt: !806)
!806 = distinct !DILocation(line: 286, column: 27, scope: !597)
!807 = !DILocation(line: 232, column: 44, scope: !676, inlinedAt: !806)
!808 = !DILocation(line: 234, column: 26, scope: !676, inlinedAt: !806)
!809 = !DILocation(line: 236, column: 33, scope: !676, inlinedAt: !806)
!810 = !DILocation(line: 236, column: 39, scope: !676, inlinedAt: !806)
!811 = !DILocation(line: 236, column: 13, scope: !676, inlinedAt: !806)
!812 = !DILocation(line: 236, column: 11, scope: !676, inlinedAt: !806)
!813 = !DILocation(line: 237, column: 12, scope: !676, inlinedAt: !806)
!814 = !DILocation(line: 237, column: 35, scope: !676, inlinedAt: !806)
!815 = !DILocation(line: 237, column: 20, scope: !676, inlinedAt: !806)
!816 = !DILocation(line: 286, column: 5, scope: !597)
!817 = !DILocation(line: 286, column: 14, scope: !597)
!818 = !DILocation(line: 286, column: 20, scope: !597)
!819 = !DILocation(line: 286, column: 25, scope: !597)
!820 = !DILocation(line: 290, column: 26, scope: !597)
!821 = !DILocation(line: 290, column: 19, scope: !597)
!822 = !DILocation(line: 290, column: 5, scope: !597)
!823 = !DILocation(line: 290, column: 14, scope: !597)
!824 = !DILocation(line: 290, column: 17, scope: !597)
!825 = !DILabel(scope: !597, name: "end", file: !83, line: 292)
!826 = !DILocation(line: 292, column: 1, scope: !597)
!827 = !DILocation(line: 293, column: 22, scope: !597)
!828 = !DILocation(line: 293, column: 5, scope: !597)
!829 = !DILabel(scope: !597, name: "end_no_finalize", file: !83, line: 294)
!830 = !DILocation(line: 294, column: 1, scope: !597)
!831 = !DILocation(line: 295, column: 36, scope: !597)
!832 = !DILocation(line: 295, column: 5, scope: !597)
!833 = distinct !DISubprogram(name: "destroy_ipinfo", scope: !83, file: !83, line: 211, type: !834, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!834 = !DISubroutineType(types: !835)
!835 = !{null, !59, !57}
!836 = !DILocalVariable(name: "entry", arg: 1, scope: !833, file: !83, line: 211, type: !59)
!837 = !DILocation(line: 211, column: 38, scope: !833)
!838 = !DILocalVariable(name: "context", arg: 2, scope: !833, file: !83, line: 212, type: !57)
!839 = !DILocation(line: 212, column: 19, scope: !833)
!840 = !DILocalVariable(name: "ip_info", scope: !833, file: !83, line: 214, type: !81)
!841 = !DILocation(line: 214, column: 23, scope: !833)
!842 = !DILocation(line: 214, column: 53, scope: !833)
!843 = !DILocation(line: 216, column: 10, scope: !844)
!844 = distinct !DILexicalBlock(scope: !833, file: !83, line: 216, column: 9)
!845 = !DILocation(line: 216, column: 9, scope: !833)
!846 = !DILocation(line: 217, column: 9, scope: !844)
!847 = !DILocation(line: 219, column: 10, scope: !833)
!848 = !DILocation(line: 219, column: 19, scope: !833)
!849 = !DILocation(line: 219, column: 27, scope: !833)
!850 = !DILocation(line: 219, column: 5, scope: !833)
!851 = !DILocation(line: 220, column: 10, scope: !833)
!852 = !DILocation(line: 220, column: 19, scope: !833)
!853 = !DILocation(line: 220, column: 27, scope: !833)
!854 = !DILocation(line: 220, column: 5, scope: !833)
!855 = !DILocation(line: 221, column: 10, scope: !833)
!856 = !DILocation(line: 221, column: 19, scope: !833)
!857 = !DILocation(line: 221, column: 26, scope: !833)
!858 = !DILocation(line: 221, column: 5, scope: !833)
!859 = !DILocation(line: 222, column: 10, scope: !833)
!860 = !DILocation(line: 222, column: 19, scope: !833)
!861 = !DILocation(line: 222, column: 26, scope: !833)
!862 = !DILocation(line: 222, column: 5, scope: !833)
!863 = !DILocation(line: 223, column: 10, scope: !833)
!864 = !DILocation(line: 223, column: 19, scope: !833)
!865 = !DILocation(line: 223, column: 24, scope: !833)
!866 = !DILocation(line: 223, column: 5, scope: !833)
!867 = !DILocation(line: 224, column: 10, scope: !833)
!868 = !DILocation(line: 224, column: 19, scope: !833)
!869 = !DILocation(line: 224, column: 24, scope: !833)
!870 = !DILocation(line: 224, column: 5, scope: !833)
!871 = !DILocation(line: 225, column: 10, scope: !833)
!872 = !DILocation(line: 225, column: 19, scope: !833)
!873 = !DILocation(line: 225, column: 25, scope: !833)
!874 = !DILocation(line: 225, column: 5, scope: !833)
!875 = !DILocation(line: 226, column: 10, scope: !833)
!876 = !DILocation(line: 226, column: 19, scope: !833)
!877 = !DILocation(line: 226, column: 25, scope: !833)
!878 = !DILocation(line: 226, column: 5, scope: !833)
!879 = !DILocation(line: 227, column: 10, scope: !833)
!880 = !DILocation(line: 227, column: 19, scope: !833)
!881 = !DILocation(line: 227, column: 5, scope: !833)
!882 = !DILocation(line: 228, column: 10, scope: !833)
!883 = !DILocation(line: 228, column: 5, scope: !833)
!884 = !DILocation(line: 229, column: 1, scope: !833)
!885 = distinct !DISubprogram(name: "create_query_limit", scope: !83, file: !83, line: 300, type: !598, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!886 = !DILocalVariable(name: "key", arg: 1, scope: !885, file: !83, line: 300, type: !107)
!887 = !DILocation(line: 300, column: 32, scope: !885)
!888 = !DILocalVariable(name: "context", arg: 2, scope: !885, file: !83, line: 301, type: !57)
!889 = !DILocation(line: 301, column: 19, scope: !885)
!890 = !DILocalVariable(name: "entry", scope: !885, file: !83, line: 303, type: !109)
!891 = !DILocation(line: 303, column: 27, scope: !885)
!892 = !DILocation(line: 303, column: 35, scope: !885)
!893 = !DILocation(line: 304, column: 9, scope: !894)
!894 = distinct !DILexicalBlock(scope: !885, file: !83, line: 304, column: 9)
!895 = !DILocation(line: 304, column: 9, scope: !885)
!896 = !DILocation(line: 305, column: 9, scope: !894)
!897 = !DILocation(line: 305, column: 16, scope: !894)
!898 = !DILocation(line: 305, column: 24, scope: !894)
!899 = !DILocation(line: 306, column: 36, scope: !885)
!900 = !DILocation(line: 306, column: 5, scope: !885)
!901 = distinct !DISubprogram(name: "destroy_query_limit", scope: !83, file: !83, line: 310, type: !834, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!902 = !DILocalVariable(name: "entry", arg: 1, scope: !901, file: !83, line: 310, type: !59)
!903 = !DILocation(line: 310, column: 43, scope: !901)
!904 = !DILocalVariable(name: "context", arg: 2, scope: !901, file: !83, line: 311, type: !57)
!905 = !DILocation(line: 311, column: 19, scope: !901)
!906 = !DILocation(line: 313, column: 10, scope: !901)
!907 = !DILocation(line: 313, column: 5, scope: !901)
!908 = !DILocation(line: 314, column: 1, scope: !901)
!909 = distinct !DISubprogram(name: "templated_output", scope: !83, file: !83, line: 355, type: !483, scopeLine: 358, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!910 = !DILocalVariable(name: "request", arg: 1, scope: !909, file: !83, line: 355, type: !486)
!911 = !DILocation(line: 355, column: 34, scope: !909)
!912 = !DILocalVariable(name: "response", arg: 2, scope: !909, file: !83, line: 356, type: !539)
!913 = !DILocation(line: 356, column: 35, scope: !909)
!914 = !DILocalVariable(name: "data", arg: 3, scope: !909, file: !83, line: 357, type: !57)
!915 = !DILocation(line: 357, column: 24, scope: !909)
!916 = !DILocalVariable(name: "ip_address", scope: !909, file: !83, line: 359, type: !107)
!917 = !DILocation(line: 359, column: 17, scope: !909)
!918 = !DILocalVariable(name: "tpl", scope: !909, file: !83, line: 360, type: !275)
!919 = !DILocation(line: 360, column: 17, scope: !909)
!920 = !DILocation(line: 360, column: 23, scope: !909)
!921 = !DILocalVariable(name: "info", scope: !909, file: !83, line: 361, type: !81)
!922 = !DILocation(line: 361, column: 23, scope: !909)
!923 = !DILocalVariable(name: "ip_address_buf", scope: !909, file: !83, line: 362, type: !924)
!924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !72, size: 368, elements: !925)
!925 = !{!926}
!926 = !DISubrange(count: 46)
!927 = !DILocation(line: 362, column: 10, scope: !909)
!928 = !DILocation(line: 364, column: 50, scope: !909)
!929 = !DILocation(line: 364, column: 59, scope: !909)
!930 = !DILocation(line: 364, column: 18, scope: !909)
!931 = !DILocation(line: 364, column: 16, scope: !909)
!932 = !DILocation(line: 365, column: 9, scope: !933)
!933 = distinct !DILexicalBlock(scope: !909, file: !83, line: 365, column: 9)
!934 = !DILocation(line: 365, column: 9, scope: !909)
!935 = !DILocation(line: 366, column: 9, scope: !933)
!936 = !DILocation(line: 369, column: 9, scope: !937)
!937 = distinct !DILexicalBlock(scope: !909, file: !83, line: 369, column: 9)
!938 = !DILocation(line: 369, column: 9, scope: !909)
!939 = !DILocation(line: 370, column: 9, scope: !937)
!940 = !DILocation(line: 373, column: 27, scope: !909)
!941 = !DILocation(line: 373, column: 36, scope: !909)
!942 = !DILocation(line: 373, column: 12, scope: !909)
!943 = !DILocation(line: 373, column: 10, scope: !909)
!944 = !DILocation(line: 374, column: 9, scope: !945)
!945 = distinct !DILexicalBlock(scope: !909, file: !83, line: 374, column: 9)
!946 = !DILocation(line: 374, column: 9, scope: !909)
!947 = !DILocation(line: 375, column: 9, scope: !945)
!948 = !DILocation(line: 377, column: 9, scope: !949)
!949 = distinct !DILexicalBlock(scope: !909, file: !83, line: 377, column: 9)
!950 = !DILocation(line: 377, column: 16, scope: !949)
!951 = !DILocation(line: 377, column: 13, scope: !949)
!952 = !DILocation(line: 377, column: 9, scope: !909)
!953 = !DILocation(line: 378, column: 9, scope: !949)
!954 = !DILocation(line: 378, column: 19, scope: !949)
!955 = !DILocation(line: 378, column: 29, scope: !949)
!956 = !DILocation(line: 379, column: 14, scope: !957)
!957 = distinct !DILexicalBlock(scope: !949, file: !83, line: 379, column: 14)
!958 = !DILocation(line: 379, column: 21, scope: !957)
!959 = !DILocation(line: 379, column: 18, scope: !957)
!960 = !DILocation(line: 379, column: 14, scope: !949)
!961 = !DILocation(line: 380, column: 9, scope: !957)
!962 = !DILocation(line: 380, column: 19, scope: !957)
!963 = !DILocation(line: 380, column: 29, scope: !957)
!964 = !DILocation(line: 382, column: 9, scope: !957)
!965 = !DILocation(line: 382, column: 19, scope: !957)
!966 = !DILocation(line: 382, column: 29, scope: !957)
!967 = !DILocalVariable(name: "callback", scope: !909, file: !83, line: 384, type: !107)
!968 = !DILocation(line: 384, column: 17, scope: !909)
!969 = !DILocation(line: 384, column: 57, scope: !909)
!970 = !DILocation(line: 384, column: 28, scope: !909)
!971 = !DILocalVariable(name: "info_with_callback", scope: !909, file: !83, line: 385, type: !82)
!972 = !DILocation(line: 385, column: 22, scope: !909)
!973 = !DILocation(line: 385, column: 44, scope: !909)
!974 = !DILocation(line: 385, column: 43, scope: !909)
!975 = !DILocation(line: 386, column: 35, scope: !909)
!976 = !DILocation(line: 386, column: 24, scope: !909)
!977 = !DILocation(line: 386, column: 33, scope: !909)
!978 = !DILocation(line: 388, column: 32, scope: !909)
!979 = !DILocation(line: 388, column: 37, scope: !909)
!980 = !DILocation(line: 388, column: 47, scope: !909)
!981 = !DILocation(line: 388, column: 5, scope: !909)
!982 = !DILocation(line: 391, column: 5, scope: !909)
!983 = !DILocation(line: 392, column: 1, scope: !909)
!984 = distinct !DISubprogram(name: "is_reserved_ip", scope: !83, file: !83, line: 200, type: !985, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!985 = !DISubroutineType(types: !986)
!986 = !{!261, !317}
!987 = !DILocalVariable(name: "ip", arg: 1, scope: !984, file: !83, line: 200, type: !317)
!988 = !DILocation(line: 200, column: 26, scope: !984)
!989 = !DILocalVariable(name: "i", scope: !984, file: !83, line: 202, type: !252)
!990 = !DILocation(line: 202, column: 12, scope: !984)
!991 = !DILocation(line: 203, column: 12, scope: !992)
!992 = distinct !DILexicalBlock(scope: !984, file: !83, line: 203, column: 5)
!993 = !DILocation(line: 203, column: 10, scope: !992)
!994 = !DILocation(line: 203, column: 17, scope: !995)
!995 = distinct !DILexicalBlock(scope: !992, file: !83, line: 203, column: 5)
!996 = !DILocation(line: 203, column: 19, scope: !995)
!997 = !DILocation(line: 203, column: 5, scope: !992)
!998 = !DILocation(line: 204, column: 43, scope: !999)
!999 = distinct !DILexicalBlock(scope: !1000, file: !83, line: 204, column: 13)
!1000 = distinct !DILexicalBlock(scope: !995, file: !83, line: 203, column: 52)
!1001 = !DILocation(line: 204, column: 30, scope: !999)
!1002 = !DILocation(line: 204, column: 47, scope: !999)
!1003 = !DILocation(line: 204, column: 13, scope: !999)
!1004 = !DILocation(line: 204, column: 13, scope: !1000)
!1005 = !DILocation(line: 205, column: 13, scope: !999)
!1006 = !DILocation(line: 206, column: 5, scope: !1000)
!1007 = !DILocation(line: 203, column: 48, scope: !995)
!1008 = !DILocation(line: 203, column: 5, scope: !995)
!1009 = distinct !{!1009, !997, !1010, !1011}
!1010 = !DILocation(line: 206, column: 5, scope: !992)
!1011 = !{!"llvm.loop.mustprogress"}
!1012 = !DILocation(line: 207, column: 5, scope: !984)
!1013 = !DILocation(line: 208, column: 1, scope: !984)
!1014 = distinct !DISubprogram(name: "net_contains_ip", scope: !83, file: !83, line: 190, type: !1015, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1015 = !DISubroutineType(types: !1016)
!1016 = !{!261, !1017, !317}
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!1018 = !DILocalVariable(name: "net", arg: 1, scope: !1014, file: !83, line: 190, type: !1017)
!1019 = !DILocation(line: 190, column: 40, scope: !1014)
!1020 = !DILocalVariable(name: "ip", arg: 2, scope: !1014, file: !83, line: 190, type: !317)
!1021 = !DILocation(line: 190, column: 55, scope: !1014)
!1022 = !DILocalVariable(name: "_ip", scope: !1014, file: !83, line: 192, type: !309)
!1023 = !DILocation(line: 192, column: 23, scope: !1014)
!1024 = !DILocation(line: 192, column: 37, scope: !1014)
!1025 = !DILocation(line: 192, column: 29, scope: !1014)
!1026 = !DILocation(line: 193, column: 13, scope: !1014)
!1027 = !DILocation(line: 193, column: 18, scope: !1014)
!1028 = !DILocation(line: 193, column: 32, scope: !1014)
!1029 = !DILocation(line: 193, column: 37, scope: !1014)
!1030 = !DILocation(line: 193, column: 30, scope: !1014)
!1031 = !DILocation(line: 193, column: 56, scope: !1014)
!1032 = !DILocation(line: 193, column: 71, scope: !1014)
!1033 = !DILocation(line: 193, column: 76, scope: !1014)
!1034 = !DILocation(line: 193, column: 69, scope: !1014)
!1035 = !DILocation(line: 193, column: 52, scope: !1014)
!1036 = !DILocation(line: 193, column: 91, scope: !1014)
!1037 = !DILocation(line: 194, column: 10, scope: !1014)
!1038 = !DILocation(line: 194, column: 15, scope: !1014)
!1039 = !DILocation(line: 194, column: 29, scope: !1014)
!1040 = !DILocation(line: 194, column: 34, scope: !1014)
!1041 = !DILocation(line: 194, column: 27, scope: !1014)
!1042 = !DILocation(line: 194, column: 53, scope: !1014)
!1043 = !DILocation(line: 194, column: 68, scope: !1014)
!1044 = !DILocation(line: 194, column: 73, scope: !1014)
!1045 = !DILocation(line: 194, column: 66, scope: !1014)
!1046 = !DILocation(line: 194, column: 49, scope: !1014)
!1047 = !DILocation(line: 194, column: 88, scope: !1014)
!1048 = !DILocation(line: 195, column: 10, scope: !1014)
!1049 = !DILocation(line: 195, column: 15, scope: !1014)
!1050 = !DILocation(line: 195, column: 29, scope: !1014)
!1051 = !DILocation(line: 195, column: 34, scope: !1014)
!1052 = !DILocation(line: 195, column: 27, scope: !1014)
!1053 = !DILocation(line: 195, column: 53, scope: !1014)
!1054 = !DILocation(line: 195, column: 68, scope: !1014)
!1055 = !DILocation(line: 195, column: 73, scope: !1014)
!1056 = !DILocation(line: 195, column: 66, scope: !1014)
!1057 = !DILocation(line: 195, column: 49, scope: !1014)
!1058 = !DILocation(line: 195, column: 88, scope: !1014)
!1059 = !DILocation(line: 196, column: 10, scope: !1014)
!1060 = !DILocation(line: 196, column: 15, scope: !1014)
!1061 = !DILocation(line: 196, column: 29, scope: !1014)
!1062 = !DILocation(line: 196, column: 34, scope: !1014)
!1063 = !DILocation(line: 196, column: 27, scope: !1014)
!1064 = !DILocation(line: 196, column: 53, scope: !1014)
!1065 = !DILocation(line: 196, column: 68, scope: !1014)
!1066 = !DILocation(line: 196, column: 73, scope: !1014)
!1067 = !DILocation(line: 196, column: 66, scope: !1014)
!1068 = !DILocation(line: 196, column: 49, scope: !1014)
!1069 = !DILocation(line: 0, scope: !1014)
!1070 = !DILocation(line: 193, column: 5, scope: !1014)
!1071 = distinct !DISubprogram(name: "is_rate_limited", scope: !83, file: !83, line: 336, type: !1072, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!261, !107}
!1074 = !DILocalVariable(name: "ip_address", arg: 1, scope: !1071, file: !83, line: 336, type: !107)
!1075 = !DILocation(line: 336, column: 41, scope: !1071)
!1076 = !DILocalVariable(name: "limited", scope: !1071, file: !83, line: 338, type: !261)
!1077 = !DILocation(line: 338, column: 10, scope: !1071)
!1078 = !DILocalVariable(name: "error", scope: !1071, file: !83, line: 339, type: !7)
!1079 = !DILocation(line: 339, column: 9, scope: !1071)
!1080 = !DILocalVariable(name: "limit", scope: !1071, file: !83, line: 340, type: !109)
!1081 = !DILocation(line: 340, column: 27, scope: !1071)
!1082 = !DILocation(line: 343, column: 41, scope: !1071)
!1083 = !DILocation(line: 343, column: 54, scope: !1071)
!1084 = !DILocation(line: 343, column: 17, scope: !1071)
!1085 = !DILocation(line: 342, column: 11, scope: !1071)
!1086 = !DILocation(line: 344, column: 10, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1071, file: !83, line: 344, column: 9)
!1088 = !DILocation(line: 344, column: 9, scope: !1071)
!1089 = !DILocation(line: 345, column: 9, scope: !1087)
!1090 = !DILocation(line: 347, column: 15, scope: !1071)
!1091 = !DILocation(line: 347, column: 46, scope: !1071)
!1092 = !DILocation(line: 347, column: 13, scope: !1071)
!1093 = !DILocation(line: 348, column: 23, scope: !1071)
!1094 = !DILocation(line: 348, column: 37, scope: !1071)
!1095 = !DILocation(line: 348, column: 44, scope: !1071)
!1096 = !DILocation(line: 348, column: 5, scope: !1071)
!1097 = !DILocation(line: 350, column: 12, scope: !1071)
!1098 = !DILocation(line: 350, column: 5, scope: !1071)
!1099 = !DILocation(line: 351, column: 1, scope: !1071)
!1100 = distinct !DISubprogram(name: "internal_query", scope: !83, file: !83, line: 318, type: !1101, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !355)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!81, !486, !107}
!1103 = !DILocalVariable(name: "request", arg: 1, scope: !1100, file: !83, line: 318, type: !486)
!1104 = !DILocation(line: 318, column: 32, scope: !1100)
!1105 = !DILocalVariable(name: "ip_address", arg: 2, scope: !1100, file: !83, line: 318, type: !107)
!1106 = !DILocation(line: 318, column: 53, scope: !1100)
!1107 = !DILocalVariable(name: "query", scope: !1100, file: !83, line: 320, type: !107)
!1108 = !DILocation(line: 320, column: 17, scope: !1100)
!1109 = !DILocation(line: 322, column: 9, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1100, file: !83, line: 322, column: 9)
!1111 = !DILocation(line: 322, column: 18, scope: !1110)
!1112 = !DILocation(line: 322, column: 22, scope: !1110)
!1113 = !DILocation(line: 322, column: 26, scope: !1110)
!1114 = !DILocation(line: 322, column: 9, scope: !1100)
!1115 = !DILocation(line: 323, column: 17, scope: !1110)
!1116 = !DILocation(line: 323, column: 15, scope: !1110)
!1117 = !DILocation(line: 323, column: 9, scope: !1110)
!1118 = !DILocation(line: 324, column: 14, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1110, file: !83, line: 324, column: 14)
!1120 = !DILocation(line: 324, column: 23, scope: !1119)
!1121 = !DILocation(line: 324, column: 27, scope: !1119)
!1122 = !DILocation(line: 324, column: 31, scope: !1119)
!1123 = !DILocation(line: 324, column: 14, scope: !1110)
!1124 = !DILocation(line: 325, column: 15, scope: !1119)
!1125 = !DILocation(line: 325, column: 9, scope: !1119)
!1126 = !DILocation(line: 327, column: 17, scope: !1119)
!1127 = !DILocation(line: 327, column: 26, scope: !1119)
!1128 = !DILocation(line: 327, column: 30, scope: !1119)
!1129 = !DILocation(line: 327, column: 15, scope: !1119)
!1130 = !DILocation(line: 328, column: 9, scope: !1131)
!1131 = distinct !DILexicalBlock(scope: !1100, file: !83, line: 328, column: 9)
!1132 = !DILocation(line: 328, column: 9, scope: !1100)
!1133 = !DILocation(line: 329, column: 9, scope: !1131)
!1134 = !DILocation(line: 331, column: 61, scope: !1100)
!1135 = !DILocation(line: 332, column: 17, scope: !1100)
!1136 = !DILocation(line: 332, column: 26, scope: !1100)
!1137 = !DILocation(line: 332, column: 32, scope: !1100)
!1138 = !DILocation(line: 332, column: 38, scope: !1100)
!1139 = !DILocation(line: 331, column: 32, scope: !1100)
!1140 = !DILocation(line: 331, column: 5, scope: !1100)
!1141 = !DILocation(line: 333, column: 1, scope: !1100)
