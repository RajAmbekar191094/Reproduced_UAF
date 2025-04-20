; ModuleID = 'llvm-link'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_url_map_t_ = type { ptr, ptr, ptr, i64, i32, ptr, ptr, %struct.db }
%struct.db = type { ptr, ptr }
%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.db_row = type { %union.anon, i8, i64 }
%union.anon = type { ptr }
%struct.array = type { ptr, i64, i64, i64 }
%struct.db_mysql = type { %struct.db, ptr }
%struct.db_stmt_mysql = type { %struct.db_stmt, ptr, ptr, ptr, i8 }
%struct.db_stmt = type { ptr, ptr, ptr }
%struct.MYSQL_BIND = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i32, i32, i32, i8, i8, i8, i8, ptr }
%struct.db_stmt_sqlite = type { %struct.db_stmt, ptr }
%struct.JsonNode = type { ptr, ptr, ptr, ptr, i32, %union.anon.0 }
%union.anon.0 = type { %struct.db }
%struct.lwan_t_ = type { %struct.db, ptr, %struct.anon, ptr, %struct.lwan_config_t_, i32 }
%struct.anon = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.db_stmt }
%struct.Fortune = type { %struct.anon.10 }
%struct.anon.10 = type { ptr, i32, ptr }

@.str = private unnamed_addr constant [9 x i8] c"step > 0\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [35 x i8] c"/home/raj/lwan/techempower/array.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.array_init = private unnamed_addr constant [40 x i8] c"void array_init(struct array *, size_t)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [5 x i8] c"utf8\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [25 x i8] c"array->tag == JSON_ARRAY\00", align 1, !dbg !24
@.str.1.4 = private unnamed_addr constant [34 x i8] c"/home/raj/lwan/techempower/json.c\00", align 1, !dbg !30
@__PRETTY_FUNCTION__.json_append_element = private unnamed_addr constant [49 x i8] c"void json_append_element(JsonNode *, JsonNode *)\00", align 1, !dbg !35
@.str.2.5 = private unnamed_addr constant [24 x i8] c"element->parent == NULL\00", align 1, !dbg !40
@__PRETTY_FUNCTION__.json_prepend_element = private unnamed_addr constant [50 x i8] c"void json_prepend_element(JsonNode *, JsonNode *)\00", align 1, !dbg !45
@.str.3.6 = private unnamed_addr constant [27 x i8] c"object->tag == JSON_OBJECT\00", align 1, !dbg !50
@__PRETTY_FUNCTION__.json_append_member = private unnamed_addr constant [62 x i8] c"void json_append_member(JsonNode *, const char *, JsonNode *)\00", align 1, !dbg !55
@.str.4 = private unnamed_addr constant [22 x i8] c"value->parent == NULL\00", align 1, !dbg !60
@__PRETTY_FUNCTION__.json_prepend_member = private unnamed_addr constant [63 x i8] c"void json_prepend_member(JsonNode *, const char *, JsonNode *)\00", align 1, !dbg !65
@.str.5 = private unnamed_addr constant [27 x i8] c"key contains invalid UTF-8\00", align 1, !dbg !70
@.str.6 = private unnamed_addr constant [20 x i8] c"tag is invalid (%u)\00", align 1, !dbg !72
@.str.7 = private unnamed_addr constant [42 x i8] c"bool_ is neither false (%d) nor true (%d)\00", align 1, !dbg !77
@.str.8 = private unnamed_addr constant [16 x i8] c"string_ is NULL\00", align 1, !dbg !82
@.str.9 = private unnamed_addr constant [31 x i8] c"string_ contains invalid UTF-8\00", align 1, !dbg !87
@.str.10 = private unnamed_addr constant [30 x i8] c"tail is NULL, but head is not\00", align 1, !dbg !92
@.str.11 = private unnamed_addr constant [30 x i8] c"head is NULL, but tail is not\00", align 1, !dbg !97
@.str.12 = private unnamed_addr constant [39 x i8] c"First child's prev pointer is not NULL\00", align 1, !dbg !99
@.str.13 = private unnamed_addr constant [22 x i8] c"node is its own child\00", align 1, !dbg !104
@.str.14 = private unnamed_addr constant [29 x i8] c"child->next == child (cycle)\00", align 1, !dbg !106
@.str.15 = private unnamed_addr constant [28 x i8] c"child->next == head (cycle)\00", align 1, !dbg !111
@.str.16 = private unnamed_addr constant [36 x i8] c"child does not point back to parent\00", align 1, !dbg !116
@.str.17 = private unnamed_addr constant [41 x i8] c"child->next does not point back to child\00", align 1, !dbg !121
@.str.18 = private unnamed_addr constant [32 x i8] c"Array element's key is not NULL\00", align 1, !dbg !126
@.str.19 = private unnamed_addr constant [28 x i8] c"Object member's key is NULL\00", align 1, !dbg !131
@.str.20 = private unnamed_addr constant [79 x i8] c"tail does not match pointer found by starting at head and following next links\00", align 1, !dbg !133
@stderr = external global ptr, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1, !dbg !138
@.str.22 = private unnamed_addr constant [75 x i8] c"sb->start <= sb->cur && strlen(sb->start) == (size_t)(sb->cur - sb->start)\00", align 1, !dbg !140
@__PRETTY_FUNCTION__.sb_finish = private unnamed_addr constant [22 x i8] c"char *sb_finish(SB *)\00", align 1, !dbg !145
@__PRETTY_FUNCTION__.sb_finish_length = private unnamed_addr constant [39 x i8] c"char *sb_finish_length(SB *, size_t *)\00", align 1, !dbg !148
@.str.23 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !151
@.str.24 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !153
@.str.25 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !158
@.str.26 = private unnamed_addr constant [65 x i8] c"unicode <= 0x10FFFF && !(unicode >= 0xD800 && unicode <= 0xDFFF)\00", align 1, !dbg !160
@__PRETTY_FUNCTION__.utf8_write_char = private unnamed_addr constant [37 x i8] c"int utf8_write_char(uchar_t, char *)\00", align 1, !dbg !165
@.str.27 = private unnamed_addr constant [24 x i8] c"tag_is_valid(node->tag)\00", align 1, !dbg !170
@__PRETTY_FUNCTION__.emit_value = private unnamed_addr constant [40 x i8] c"void emit_value(SB *, const JsonNode *)\00", align 1, !dbg !172
@.str.28 = private unnamed_addr constant [6 x i8] c"%.16g\00", align 1, !dbg !174
@__PRETTY_FUNCTION__.emit_value_indented = private unnamed_addr constant [68 x i8] c"void emit_value_indented(SB *, const JsonNode *, const char *, int)\00", align 1, !dbg !176
@.str.29 = private unnamed_addr constant [3 x i8] c"[]\00", align 1, !dbg !181
@.str.30 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1, !dbg !186
@.str.31 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1, !dbg !188
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !190
@.str.33 = private unnamed_addr constant [3 x i8] c"{}\00", align 1, !dbg !195
@.str.34 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1, !dbg !197
@.str.35 = private unnamed_addr constant [3 x i8] c": \00", align 1, !dbg !199
@.str.36 = private unnamed_addr constant [19 x i8] c"utf8_validate(str)\00", align 1, !dbg !201
@__PRETTY_FUNCTION__.emit_string = private unnamed_addr constant [37 x i8] c"void emit_string(SB *, const char *)\00", align 1, !dbg !206
@.str.37 = private unnamed_addr constant [20 x i8] c"unicode <= 0x10FFFF\00", align 1, !dbg !208
@.str.38 = private unnamed_addr constant [20 x i8] c"utf8_validate_cz(s)\00", align 1, !dbg !210
@__PRETTY_FUNCTION__.utf8_read_char = private unnamed_addr constant [44 x i8] c"int utf8_read_char(const char *, uchar_t *)\00", align 1, !dbg !212
@.str.39 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1, !dbg !217
@.str.40 = private unnamed_addr constant [42 x i8] c"unicode >= 0x10000 && unicode <= 0x10FFFF\00", align 1, !dbg !222
@__PRETTY_FUNCTION__.to_surrogate_pair = private unnamed_addr constant [56 x i8] c"void to_surrogate_pair(uchar_t, uint16_t *, uint16_t *)\00", align 1, !dbg !224
@main.url_map = internal constant [6 x %struct.lwan_url_map_t_] [%struct.lwan_url_map_t_ { ptr @json, ptr null, ptr @.str.41, i64 0, i32 0, ptr null, ptr null, %struct.db zeroinitializer }, %struct.lwan_url_map_t_ { ptr @db, ptr null, ptr @.str.1.42, i64 0, i32 0, ptr null, ptr null, %struct.db zeroinitializer }, %struct.lwan_url_map_t_ { ptr @queries, ptr null, ptr @.str.2.43, i64 0, i32 0, ptr null, ptr null, %struct.db zeroinitializer }, %struct.lwan_url_map_t_ { ptr @plaintext, ptr null, ptr @.str.3.44, i64 0, i32 0, ptr null, ptr null, %struct.db zeroinitializer }, %struct.lwan_url_map_t_ { ptr @fortunes, ptr null, ptr @.str.4.45, i64 0, i32 0, ptr null, ptr null, %struct.db zeroinitializer }, %struct.lwan_url_map_t_ zeroinitializer], align 16, !dbg !229
@.str.41 = private unnamed_addr constant [6 x i8] c"/json\00", align 1, !dbg !321
@.str.1.42 = private unnamed_addr constant [4 x i8] c"/db\00", align 1, !dbg !323
@.str.2.43 = private unnamed_addr constant [9 x i8] c"/queries\00", align 1, !dbg !328
@.str.3.44 = private unnamed_addr constant [11 x i8] c"/plaintext\00", align 1, !dbg !330
@.str.4.45 = private unnamed_addr constant [10 x i8] c"/fortunes\00", align 1, !dbg !335
@.str.5.7 = private unnamed_addr constant [10 x i8] c"USE_MYSQL\00", align 1, !dbg !340
@.str.6.8 = private unnamed_addr constant [11 x i8] c"MYSQL_USER\00", align 1, !dbg !342
@.str.7.9 = private unnamed_addr constant [11 x i8] c"MYSQL_PASS\00", align 1, !dbg !344
@.str.8.10 = private unnamed_addr constant [11 x i8] c"MYSQL_HOST\00", align 1, !dbg !346
@.str.9.11 = private unnamed_addr constant [9 x i8] c"MYSQL_DB\00", align 1, !dbg !348
@.str.10.12 = private unnamed_addr constant [41 x i8] c"/home/raj/lwan/techempower/techempower.c\00", align 1, !dbg !350
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !352
@.str.11.13 = private unnamed_addr constant [23 x i8] c"No MySQL user provided\00", align 1, !dbg !355
@.str.12.14 = private unnamed_addr constant [27 x i8] c"No MySQL password provided\00", align 1, !dbg !360
@.str.13.15 = private unnamed_addr constant [27 x i8] c"No MySQL hostname provided\00", align 1, !dbg !362
@.str.14.16 = private unnamed_addr constant [27 x i8] c"No MySQL database provided\00", align 1, !dbg !364
@database = internal global ptr null, align 8, !dbg !384
@.str.15.57 = private unnamed_addr constant [26 x i8] c"PRAGMA mmap_size=44040192\00", align 1, !dbg !366
@.str.16.58 = private unnamed_addr constant [24 x i8] c"PRAGMA journal_mode=OFF\00", align 1, !dbg !371
@.str.17.59 = private unnamed_addr constant [30 x i8] c"PRAGMA locking_mode=EXCLUSIVE\00", align 1, !dbg !373
@__const.main.pragmas = private unnamed_addr constant [4 x ptr] [ptr @.str.15.57, ptr @.str.16.58, ptr @.str.17.59, ptr null], align 16
@.str.18.17 = private unnamed_addr constant [15 x i8] c"techempower.db\00", align 1, !dbg !375
@.str.19.18 = private unnamed_addr constant [34 x i8] c"Could not connect to the database\00", align 1, !dbg !380
@fortunes_template_str = internal constant [201 x i8] c"<!DOCTYPE html><html><head><title>Fortunes</title></head><body><table><tr><th>id</th><th>message</th></tr>{{#item}}<tr><td>{{item.id}}</td><td>{{item.message}}</td></tr>{{/item}}</table></body></html>\00", align 16, !dbg !422
@fortune_desc = internal constant [2 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.28.53, i64 0, ptr null, ptr null, ptr @fortune_list_generator, ptr @fortune_item_desc }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !429
@fortune_tpl = internal global ptr null, align 8, !dbg !389
@.str.20.19 = private unnamed_addr constant [36 x i8] c"Could not compile fortune templates\00", align 1, !dbg !382
@.str.21.52 = private unnamed_addr constant [8 x i8] c"message\00", align 1, !dbg !394
@hello_world = internal constant [14 x i8] c"Hello, World!\00", align 1, !dbg !399
@.str.22.49 = private unnamed_addr constant [17 x i8] c"application/json\00", align 1, !dbg !404
@__const.db.rows = private unnamed_addr constant [1 x %struct.db_row] [%struct.db_row { %union.anon zeroinitializer, i8 105, i64 0 }], align 16
@random_number_query = internal constant [42 x i8] c"SELECT randomNumber FROM World WHERE id=?\00", align 16, !dbg !406
@.str.23.50 = private unnamed_addr constant [3 x i8] c"id\00", align 1, !dbg !409
@.str.24.51 = private unnamed_addr constant [13 x i8] c"randomNumber\00", align 1, !dbg !411
@.str.25.48 = private unnamed_addr constant [8 x i8] c"queries\00", align 1, !dbg !416
@__const.queries.rows = private unnamed_addr constant [1 x %struct.db_row] [%struct.db_row { %union.anon zeroinitializer, i8 105, i64 0 }], align 16
@.str.26.47 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1, !dbg !418
@.str.27.46 = private unnamed_addr constant [25 x i8] c"text/html; charset=UTF-8\00", align 1, !dbg !420
@.str.28.53 = private unnamed_addr constant [5 x i8] c"item\00", align 1, !dbg !427
@fortune_item_desc = internal constant [3 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.30.54, i64 8, ptr @lwan_append_int_to_strbuf, ptr @lwan_tpl_int_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.31.55, i64 16, ptr @lwan_append_str_escaped_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !487
@fortune_list_generator.fortune_query = internal constant [22 x i8] c"SELECT * FROM Fortune\00", align 16, !dbg !477
@.str.29.56 = private unnamed_addr constant [42 x i8] c"Additional fortune added at request time.\00", align 1, !dbg !481
@.str.30.54 = private unnamed_addr constant [8 x i8] c"item.id\00", align 1, !dbg !483
@.str.31.55 = private unnamed_addr constant [13 x i8] c"item.message\00", align 1, !dbg !485

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_init(ptr noundef %0, i64 noundef %1) #0 !dbg !1112 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1123, metadata !DIExpression()), !dbg !1124
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1125, metadata !DIExpression()), !dbg !1126
  %5 = load i64, ptr %4, align 8, !dbg !1127
  %6 = icmp ugt i64 %5, 0, !dbg !1127
  br i1 %6, label %7, label %8, !dbg !1130

7:                                                ; preds = %2
  br label %9, !dbg !1130

8:                                                ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 45, ptr noundef @__PRETTY_FUNCTION__.array_init) #12, !dbg !1127
  unreachable, !dbg !1127

9:                                                ; preds = %7
  %10 = load ptr, ptr %3, align 8, !dbg !1131
  %11 = getelementptr inbounds %struct.array, ptr %10, i32 0, i32 0, !dbg !1132
  store ptr null, ptr %11, align 8, !dbg !1133
  %12 = load ptr, ptr %3, align 8, !dbg !1134
  %13 = getelementptr inbounds %struct.array, ptr %12, i32 0, i32 1, !dbg !1135
  store i64 0, ptr %13, align 8, !dbg !1136
  %14 = load ptr, ptr %3, align 8, !dbg !1137
  %15 = getelementptr inbounds %struct.array, ptr %14, i32 0, i32 2, !dbg !1138
  store i64 0, ptr %15, align 8, !dbg !1139
  %16 = load i64, ptr %4, align 8, !dbg !1140
  %17 = load ptr, ptr %3, align 8, !dbg !1141
  %18 = getelementptr inbounds %struct.array, ptr %17, i32 0, i32 3, !dbg !1142
  store i64 %16, ptr %18, align 8, !dbg !1143
  ret void, !dbg !1144
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_append(ptr noundef %0, ptr noundef %1) #0 !dbg !1145 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1150, metadata !DIExpression()), !dbg !1151
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1152, metadata !DIExpression()), !dbg !1153
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1154, metadata !DIExpression()), !dbg !1155
  %8 = load ptr, ptr %4, align 8, !dbg !1156
  %9 = getelementptr inbounds %struct.array, ptr %8, i32 0, i32 1, !dbg !1158
  %10 = load i64, ptr %9, align 8, !dbg !1158
  %11 = add i64 %10, 1, !dbg !1159
  %12 = load ptr, ptr %4, align 8, !dbg !1160
  %13 = getelementptr inbounds %struct.array, ptr %12, i32 0, i32 2, !dbg !1161
  %14 = load i64, ptr %13, align 8, !dbg !1161
  %15 = icmp uge i64 %11, %14, !dbg !1162
  br i1 %15, label %16, label %31, !dbg !1163

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1164, metadata !DIExpression()), !dbg !1166
  %17 = load ptr, ptr %4, align 8, !dbg !1167
  %18 = load ptr, ptr %4, align 8, !dbg !1168
  %19 = getelementptr inbounds %struct.array, ptr %18, i32 0, i32 2, !dbg !1169
  %20 = load i64, ptr %19, align 8, !dbg !1169
  %21 = load ptr, ptr %4, align 8, !dbg !1170
  %22 = getelementptr inbounds %struct.array, ptr %21, i32 0, i32 3, !dbg !1171
  %23 = load i64, ptr %22, align 8, !dbg !1171
  %24 = add i64 %20, %23, !dbg !1172
  %25 = call i32 @array_realloc(ptr noundef %17, i64 noundef %24), !dbg !1173
  store i32 %25, ptr %7, align 4, !dbg !1166
  %26 = load i32, ptr %7, align 4, !dbg !1174
  %27 = icmp slt i32 %26, 0, !dbg !1176
  br i1 %27, label %28, label %30, !dbg !1177

28:                                               ; preds = %16
  %29 = load i32, ptr %7, align 4, !dbg !1178
  store i32 %29, ptr %3, align 4, !dbg !1179
  br label %47, !dbg !1179

30:                                               ; preds = %16
  br label %31, !dbg !1180

31:                                               ; preds = %30, %2
  %32 = load ptr, ptr %4, align 8, !dbg !1181
  %33 = getelementptr inbounds %struct.array, ptr %32, i32 0, i32 1, !dbg !1182
  %34 = load i64, ptr %33, align 8, !dbg !1182
  store i64 %34, ptr %6, align 8, !dbg !1183
  %35 = load ptr, ptr %5, align 8, !dbg !1184
  %36 = load ptr, ptr %4, align 8, !dbg !1185
  %37 = getelementptr inbounds %struct.array, ptr %36, i32 0, i32 0, !dbg !1186
  %38 = load ptr, ptr %37, align 8, !dbg !1186
  %39 = load i64, ptr %6, align 8, !dbg !1187
  %40 = getelementptr inbounds ptr, ptr %38, i64 %39, !dbg !1185
  store ptr %35, ptr %40, align 8, !dbg !1188
  %41 = load ptr, ptr %4, align 8, !dbg !1189
  %42 = getelementptr inbounds %struct.array, ptr %41, i32 0, i32 1, !dbg !1190
  %43 = load i64, ptr %42, align 8, !dbg !1191
  %44 = add i64 %43, 1, !dbg !1191
  store i64 %44, ptr %42, align 8, !dbg !1191
  %45 = load i64, ptr %6, align 8, !dbg !1192
  %46 = trunc i64 %45 to i32, !dbg !1193
  store i32 %46, ptr %3, align 4, !dbg !1194
  br label %47, !dbg !1194

47:                                               ; preds = %31, %28
  %48 = load i32, ptr %3, align 4, !dbg !1195
  ret i32 %48, !dbg !1195
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @array_realloc(ptr noundef %0, i64 noundef %1) #0 !dbg !1196 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1199, metadata !DIExpression()), !dbg !1200
  store i64 %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1201, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1203, metadata !DIExpression()), !dbg !1204
  %7 = load ptr, ptr %4, align 8, !dbg !1205
  %8 = getelementptr inbounds %struct.array, ptr %7, i32 0, i32 0, !dbg !1206
  %9 = load ptr, ptr %8, align 8, !dbg !1206
  %10 = load i64, ptr %5, align 8, !dbg !1207
  %11 = call ptr @reallocarray(ptr noundef %9, i64 noundef 8, i64 noundef %10) #13, !dbg !1208
  store ptr %11, ptr %6, align 8, !dbg !1204
  %12 = load ptr, ptr %6, align 8, !dbg !1209
  %13 = icmp eq ptr %12, null, !dbg !1211
  br i1 %13, label %14, label %15, !dbg !1212

14:                                               ; preds = %2
  store i32 -12, ptr %3, align 4, !dbg !1213
  br label %22, !dbg !1213

15:                                               ; preds = %2
  %16 = load ptr, ptr %6, align 8, !dbg !1214
  %17 = load ptr, ptr %4, align 8, !dbg !1215
  %18 = getelementptr inbounds %struct.array, ptr %17, i32 0, i32 0, !dbg !1216
  store ptr %16, ptr %18, align 8, !dbg !1217
  %19 = load i64, ptr %5, align 8, !dbg !1218
  %20 = load ptr, ptr %4, align 8, !dbg !1219
  %21 = getelementptr inbounds %struct.array, ptr %20, i32 0, i32 2, !dbg !1220
  store i64 %19, ptr %21, align 8, !dbg !1221
  store i32 0, ptr %3, align 4, !dbg !1222
  br label %22, !dbg !1222

22:                                               ; preds = %15, %14
  %23 = load i32, ptr %3, align 4, !dbg !1223
  ret i32 %23, !dbg !1223
}

; Function Attrs: nounwind
declare ptr @reallocarray(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_append_unique(ptr noundef %0, ptr noundef %1) #0 !dbg !1224 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1225, metadata !DIExpression()), !dbg !1226
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1227, metadata !DIExpression()), !dbg !1228
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1229, metadata !DIExpression()), !dbg !1230
  %8 = load ptr, ptr %4, align 8, !dbg !1231
  %9 = getelementptr inbounds %struct.array, ptr %8, i32 0, i32 0, !dbg !1232
  %10 = load ptr, ptr %9, align 8, !dbg !1232
  store ptr %10, ptr %6, align 8, !dbg !1230
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1233, metadata !DIExpression()), !dbg !1234
  %11 = load ptr, ptr %6, align 8, !dbg !1235
  %12 = load ptr, ptr %4, align 8, !dbg !1236
  %13 = getelementptr inbounds %struct.array, ptr %12, i32 0, i32 1, !dbg !1237
  %14 = load i64, ptr %13, align 8, !dbg !1237
  %15 = getelementptr inbounds ptr, ptr %11, i64 %14, !dbg !1238
  store ptr %15, ptr %7, align 8, !dbg !1234
  br label %16, !dbg !1239

16:                                               ; preds = %27, %2
  %17 = load ptr, ptr %6, align 8, !dbg !1240
  %18 = load ptr, ptr %7, align 8, !dbg !1243
  %19 = icmp ult ptr %17, %18, !dbg !1244
  br i1 %19, label %20, label %30, !dbg !1245

20:                                               ; preds = %16
  %21 = load ptr, ptr %6, align 8, !dbg !1246
  %22 = load ptr, ptr %21, align 8, !dbg !1248
  %23 = load ptr, ptr %5, align 8, !dbg !1249
  %24 = icmp eq ptr %22, %23, !dbg !1250
  br i1 %24, label %25, label %26, !dbg !1251

25:                                               ; preds = %20
  store i32 -17, ptr %3, align 4, !dbg !1252
  br label %34, !dbg !1252

26:                                               ; preds = %20
  br label %27, !dbg !1249

27:                                               ; preds = %26
  %28 = load ptr, ptr %6, align 8, !dbg !1253
  %29 = getelementptr inbounds ptr, ptr %28, i32 1, !dbg !1253
  store ptr %29, ptr %6, align 8, !dbg !1253
  br label %16, !dbg !1254, !llvm.loop !1255

30:                                               ; preds = %16
  %31 = load ptr, ptr %4, align 8, !dbg !1258
  %32 = load ptr, ptr %5, align 8, !dbg !1259
  %33 = call i32 @array_append(ptr noundef %31, ptr noundef %32), !dbg !1260
  store i32 %33, ptr %3, align 4, !dbg !1261
  br label %34, !dbg !1261

34:                                               ; preds = %30, %25
  %35 = load i32, ptr %3, align 4, !dbg !1262
  ret i32 %35, !dbg !1262
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_pop(ptr noundef %0) #0 !dbg !1263 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1266, metadata !DIExpression()), !dbg !1267
  %4 = load ptr, ptr %2, align 8, !dbg !1268
  %5 = getelementptr inbounds %struct.array, ptr %4, i32 0, i32 1, !dbg !1269
  %6 = load i64, ptr %5, align 8, !dbg !1270
  %7 = add i64 %6, -1, !dbg !1270
  store i64 %7, ptr %5, align 8, !dbg !1270
  %8 = load ptr, ptr %2, align 8, !dbg !1271
  %9 = getelementptr inbounds %struct.array, ptr %8, i32 0, i32 1, !dbg !1273
  %10 = load i64, ptr %9, align 8, !dbg !1273
  %11 = load ptr, ptr %2, align 8, !dbg !1274
  %12 = getelementptr inbounds %struct.array, ptr %11, i32 0, i32 3, !dbg !1275
  %13 = load i64, ptr %12, align 8, !dbg !1275
  %14 = add i64 %10, %13, !dbg !1276
  %15 = load ptr, ptr %2, align 8, !dbg !1277
  %16 = getelementptr inbounds %struct.array, ptr %15, i32 0, i32 2, !dbg !1278
  %17 = load i64, ptr %16, align 8, !dbg !1278
  %18 = icmp ult i64 %14, %17, !dbg !1279
  br i1 %18, label %19, label %33, !dbg !1280

19:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1281, metadata !DIExpression()), !dbg !1283
  %20 = load ptr, ptr %2, align 8, !dbg !1284
  %21 = load ptr, ptr %2, align 8, !dbg !1285
  %22 = getelementptr inbounds %struct.array, ptr %21, i32 0, i32 2, !dbg !1286
  %23 = load i64, ptr %22, align 8, !dbg !1286
  %24 = load ptr, ptr %2, align 8, !dbg !1287
  %25 = getelementptr inbounds %struct.array, ptr %24, i32 0, i32 3, !dbg !1288
  %26 = load i64, ptr %25, align 8, !dbg !1288
  %27 = sub i64 %23, %26, !dbg !1289
  %28 = call i32 @array_realloc(ptr noundef %20, i64 noundef %27), !dbg !1290
  store i32 %28, ptr %3, align 4, !dbg !1283
  %29 = load i32, ptr %3, align 4, !dbg !1291
  %30 = icmp slt i32 %29, 0, !dbg !1293
  br i1 %30, label %31, label %32, !dbg !1294

31:                                               ; preds = %19
  br label %33, !dbg !1295

32:                                               ; preds = %19
  br label %33, !dbg !1296

33:                                               ; preds = %32, %31, %1
  ret void, !dbg !1297
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_free_array(ptr noundef %0) #0 !dbg !1298 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1299, metadata !DIExpression()), !dbg !1300
  %3 = load ptr, ptr %2, align 8, !dbg !1301
  %4 = getelementptr inbounds %struct.array, ptr %3, i32 0, i32 0, !dbg !1302
  %5 = load ptr, ptr %4, align 8, !dbg !1302
  call void @free(ptr noundef %5) #13, !dbg !1303
  %6 = load ptr, ptr %2, align 8, !dbg !1304
  %7 = getelementptr inbounds %struct.array, ptr %6, i32 0, i32 1, !dbg !1305
  store i64 0, ptr %7, align 8, !dbg !1306
  %8 = load ptr, ptr %2, align 8, !dbg !1307
  %9 = getelementptr inbounds %struct.array, ptr %8, i32 0, i32 2, !dbg !1308
  store i64 0, ptr %9, align 8, !dbg !1309
  ret void, !dbg !1310
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @array_sort(ptr noundef %0, ptr noundef %1) #0 !dbg !1311 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1317, metadata !DIExpression()), !dbg !1318
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1319, metadata !DIExpression()), !dbg !1320
  %5 = load ptr, ptr %3, align 8, !dbg !1321
  %6 = getelementptr inbounds %struct.array, ptr %5, i32 0, i32 0, !dbg !1322
  %7 = load ptr, ptr %6, align 8, !dbg !1322
  %8 = load ptr, ptr %3, align 8, !dbg !1323
  %9 = getelementptr inbounds %struct.array, ptr %8, i32 0, i32 1, !dbg !1324
  %10 = load i64, ptr %9, align 8, !dbg !1324
  %11 = load ptr, ptr %4, align 8, !dbg !1325
  call void @qsort(ptr noundef %7, i64 noundef %10, i64 noundef 8, ptr noundef %11), !dbg !1326
  ret void, !dbg !1327
}

declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @array_remove_at(ptr noundef %0, i32 noundef %1) #0 !dbg !1328 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1331, metadata !DIExpression()), !dbg !1332
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1333, metadata !DIExpression()), !dbg !1334
  %7 = load ptr, ptr %4, align 8, !dbg !1335
  %8 = getelementptr inbounds %struct.array, ptr %7, i32 0, i32 1, !dbg !1337
  %9 = load i64, ptr %8, align 8, !dbg !1337
  %10 = load i32, ptr %5, align 4, !dbg !1338
  %11 = zext i32 %10 to i64, !dbg !1338
  %12 = icmp ule i64 %9, %11, !dbg !1339
  br i1 %12, label %13, label %14, !dbg !1340

13:                                               ; preds = %2
  store i32 -2, ptr %3, align 4, !dbg !1341
  br label %73, !dbg !1341

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !1342
  %16 = getelementptr inbounds %struct.array, ptr %15, i32 0, i32 1, !dbg !1343
  %17 = load i64, ptr %16, align 8, !dbg !1344
  %18 = add i64 %17, -1, !dbg !1344
  store i64 %18, ptr %16, align 8, !dbg !1344
  %19 = load i32, ptr %5, align 4, !dbg !1345
  %20 = zext i32 %19 to i64, !dbg !1345
  %21 = load ptr, ptr %4, align 8, !dbg !1347
  %22 = getelementptr inbounds %struct.array, ptr %21, i32 0, i32 1, !dbg !1348
  %23 = load i64, ptr %22, align 8, !dbg !1348
  %24 = icmp ult i64 %20, %23, !dbg !1349
  br i1 %24, label %25, label %46, !dbg !1350

25:                                               ; preds = %14
  %26 = load ptr, ptr %4, align 8, !dbg !1351
  %27 = getelementptr inbounds %struct.array, ptr %26, i32 0, i32 0, !dbg !1352
  %28 = load ptr, ptr %27, align 8, !dbg !1352
  %29 = load i32, ptr %5, align 4, !dbg !1353
  %30 = zext i32 %29 to i64, !dbg !1354
  %31 = getelementptr inbounds ptr, ptr %28, i64 %30, !dbg !1354
  %32 = load ptr, ptr %4, align 8, !dbg !1355
  %33 = getelementptr inbounds %struct.array, ptr %32, i32 0, i32 0, !dbg !1356
  %34 = load ptr, ptr %33, align 8, !dbg !1356
  %35 = load i32, ptr %5, align 4, !dbg !1357
  %36 = zext i32 %35 to i64, !dbg !1358
  %37 = getelementptr inbounds ptr, ptr %34, i64 %36, !dbg !1358
  %38 = getelementptr inbounds ptr, ptr %37, i64 1, !dbg !1359
  %39 = load ptr, ptr %4, align 8, !dbg !1360
  %40 = getelementptr inbounds %struct.array, ptr %39, i32 0, i32 1, !dbg !1361
  %41 = load i64, ptr %40, align 8, !dbg !1361
  %42 = load i32, ptr %5, align 4, !dbg !1362
  %43 = zext i32 %42 to i64, !dbg !1362
  %44 = sub i64 %41, %43, !dbg !1363
  %45 = mul i64 8, %44, !dbg !1364
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %31, ptr align 8 %38, i64 %45, i1 false), !dbg !1365
  br label %46, !dbg !1365

46:                                               ; preds = %25, %14
  %47 = load ptr, ptr %4, align 8, !dbg !1366
  %48 = getelementptr inbounds %struct.array, ptr %47, i32 0, i32 1, !dbg !1368
  %49 = load i64, ptr %48, align 8, !dbg !1368
  %50 = load ptr, ptr %4, align 8, !dbg !1369
  %51 = getelementptr inbounds %struct.array, ptr %50, i32 0, i32 3, !dbg !1370
  %52 = load i64, ptr %51, align 8, !dbg !1370
  %53 = add i64 %49, %52, !dbg !1371
  %54 = load ptr, ptr %4, align 8, !dbg !1372
  %55 = getelementptr inbounds %struct.array, ptr %54, i32 0, i32 2, !dbg !1373
  %56 = load i64, ptr %55, align 8, !dbg !1373
  %57 = icmp ult i64 %53, %56, !dbg !1374
  br i1 %57, label %58, label %72, !dbg !1375

58:                                               ; preds = %46
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1376, metadata !DIExpression()), !dbg !1378
  %59 = load ptr, ptr %4, align 8, !dbg !1379
  %60 = load ptr, ptr %4, align 8, !dbg !1380
  %61 = getelementptr inbounds %struct.array, ptr %60, i32 0, i32 2, !dbg !1381
  %62 = load i64, ptr %61, align 8, !dbg !1381
  %63 = load ptr, ptr %4, align 8, !dbg !1382
  %64 = getelementptr inbounds %struct.array, ptr %63, i32 0, i32 3, !dbg !1383
  %65 = load i64, ptr %64, align 8, !dbg !1383
  %66 = sub i64 %62, %65, !dbg !1384
  %67 = call i32 @array_realloc(ptr noundef %59, i64 noundef %66), !dbg !1385
  store i32 %67, ptr %6, align 4, !dbg !1378
  %68 = load i32, ptr %6, align 4, !dbg !1386
  %69 = icmp slt i32 %68, 0, !dbg !1388
  br i1 %69, label %70, label %71, !dbg !1389

70:                                               ; preds = %58
  store i32 0, ptr %3, align 4, !dbg !1390
  br label %73, !dbg !1390

71:                                               ; preds = %58
  br label %72, !dbg !1391

72:                                               ; preds = %71, %46
  store i32 0, ptr %3, align 4, !dbg !1392
  br label %73, !dbg !1392

73:                                               ; preds = %72, %70, %13
  %74 = load i32, ptr %3, align 4, !dbg !1393
  ret i32 %74, !dbg !1393
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_connect_mysql(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1394 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1397, metadata !DIExpression()), !dbg !1398
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1399, metadata !DIExpression()), !dbg !1400
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1401, metadata !DIExpression()), !dbg !1402
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1403, metadata !DIExpression()), !dbg !1404
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1405, metadata !DIExpression()), !dbg !1406
  %11 = call noalias ptr @malloc(i64 noundef 24) #14, !dbg !1407
  store ptr %11, ptr %10, align 8, !dbg !1406
  %12 = load ptr, ptr %10, align 8, !dbg !1408
  %13 = icmp ne ptr %12, null, !dbg !1408
  br i1 %13, label %15, label %14, !dbg !1410

14:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !1411
  br label %56, !dbg !1411

15:                                               ; preds = %4
  %16 = call ptr @mysql_init(ptr noundef null), !dbg !1412
  %17 = load ptr, ptr %10, align 8, !dbg !1413
  %18 = getelementptr inbounds %struct.db_mysql, ptr %17, i32 0, i32 1, !dbg !1414
  store ptr %16, ptr %18, align 8, !dbg !1415
  %19 = load ptr, ptr %10, align 8, !dbg !1416
  %20 = getelementptr inbounds %struct.db_mysql, ptr %19, i32 0, i32 1, !dbg !1418
  %21 = load ptr, ptr %20, align 8, !dbg !1418
  %22 = icmp ne ptr %21, null, !dbg !1416
  br i1 %22, label %25, label %23, !dbg !1419

23:                                               ; preds = %15
  %24 = load ptr, ptr %10, align 8, !dbg !1420
  call void @free(ptr noundef %24) #13, !dbg !1422
  store ptr null, ptr %5, align 8, !dbg !1423
  br label %56, !dbg !1423

25:                                               ; preds = %15
  %26 = load ptr, ptr %10, align 8, !dbg !1424
  %27 = getelementptr inbounds %struct.db_mysql, ptr %26, i32 0, i32 1, !dbg !1426
  %28 = load ptr, ptr %27, align 8, !dbg !1426
  %29 = load ptr, ptr %6, align 8, !dbg !1427
  %30 = load ptr, ptr %7, align 8, !dbg !1428
  %31 = load ptr, ptr %8, align 8, !dbg !1429
  %32 = load ptr, ptr %9, align 8, !dbg !1430
  %33 = call ptr @mysql_real_connect(ptr noundef %28, ptr noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, i32 noundef 0, ptr noundef null, i64 noundef 0), !dbg !1431
  %34 = icmp ne ptr %33, null, !dbg !1431
  br i1 %34, label %36, label %35, !dbg !1432

35:                                               ; preds = %25
  br label %51, !dbg !1433

36:                                               ; preds = %25
  %37 = load ptr, ptr %10, align 8, !dbg !1434
  %38 = getelementptr inbounds %struct.db_mysql, ptr %37, i32 0, i32 1, !dbg !1436
  %39 = load ptr, ptr %38, align 8, !dbg !1436
  %40 = call i32 @mysql_set_character_set(ptr noundef %39, ptr noundef @.str.2), !dbg !1437
  %41 = icmp ne i32 %40, 0, !dbg !1437
  br i1 %41, label %42, label %43, !dbg !1438

42:                                               ; preds = %36
  br label %51, !dbg !1439

43:                                               ; preds = %36
  %44 = load ptr, ptr %10, align 8, !dbg !1440
  %45 = getelementptr inbounds %struct.db_mysql, ptr %44, i32 0, i32 0, !dbg !1441
  %46 = getelementptr inbounds %struct.db, ptr %45, i32 0, i32 0, !dbg !1442
  store ptr @db_disconnect_mysql, ptr %46, align 8, !dbg !1443
  %47 = load ptr, ptr %10, align 8, !dbg !1444
  %48 = getelementptr inbounds %struct.db_mysql, ptr %47, i32 0, i32 0, !dbg !1445
  %49 = getelementptr inbounds %struct.db, ptr %48, i32 0, i32 1, !dbg !1446
  store ptr @db_prepare_mysql, ptr %49, align 8, !dbg !1447
  %50 = load ptr, ptr %10, align 8, !dbg !1448
  store ptr %50, ptr %5, align 8, !dbg !1449
  br label %56, !dbg !1449

51:                                               ; preds = %42, %35
  call void @llvm.dbg.label(metadata !1450), !dbg !1451
  %52 = load ptr, ptr %10, align 8, !dbg !1452
  %53 = getelementptr inbounds %struct.db_mysql, ptr %52, i32 0, i32 1, !dbg !1453
  %54 = load ptr, ptr %53, align 8, !dbg !1453
  call void @mysql_close(ptr noundef %54), !dbg !1454
  %55 = load ptr, ptr %10, align 8, !dbg !1455
  call void @free(ptr noundef %55) #13, !dbg !1456
  store ptr null, ptr %5, align 8, !dbg !1457
  br label %56, !dbg !1457

56:                                               ; preds = %51, %43, %23, %14
  %57 = load ptr, ptr %5, align 8, !dbg !1458
  ret ptr %57, !dbg !1458
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #6

declare ptr @mysql_init(ptr noundef) #4

declare ptr @mysql_real_connect(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #4

declare i32 @mysql_set_character_set(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_disconnect_mysql(ptr noundef %0) #0 !dbg !1459 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1460, metadata !DIExpression()), !dbg !1461
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1462, metadata !DIExpression()), !dbg !1463
  %4 = load ptr, ptr %2, align 8, !dbg !1464
  store ptr %4, ptr %3, align 8, !dbg !1463
  %5 = load ptr, ptr %3, align 8, !dbg !1465
  %6 = getelementptr inbounds %struct.db_mysql, ptr %5, i32 0, i32 1, !dbg !1466
  %7 = load ptr, ptr %6, align 8, !dbg !1466
  call void @mysql_close(ptr noundef %7), !dbg !1467
  %8 = load ptr, ptr %2, align 8, !dbg !1468
  call void @free(ptr noundef %8) #13, !dbg !1469
  ret void, !dbg !1470
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_prepare_mysql(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1471 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1472, metadata !DIExpression()), !dbg !1473
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1474, metadata !DIExpression()), !dbg !1475
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1476, metadata !DIExpression()), !dbg !1477
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1478, metadata !DIExpression()), !dbg !1479
  %10 = load ptr, ptr %5, align 8, !dbg !1480
  store ptr %10, ptr %8, align 8, !dbg !1479
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1481, metadata !DIExpression()), !dbg !1482
  %11 = call noalias ptr @malloc(i64 noundef 56) #14, !dbg !1483
  store ptr %11, ptr %9, align 8, !dbg !1482
  %12 = load ptr, ptr %9, align 8, !dbg !1484
  %13 = icmp ne ptr %12, null, !dbg !1484
  br i1 %13, label %15, label %14, !dbg !1486

14:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !1487
  br label %59, !dbg !1487

15:                                               ; preds = %3
  %16 = load ptr, ptr %8, align 8, !dbg !1488
  %17 = getelementptr inbounds %struct.db_mysql, ptr %16, i32 0, i32 1, !dbg !1489
  %18 = load ptr, ptr %17, align 8, !dbg !1489
  %19 = call ptr @mysql_stmt_init(ptr noundef %18), !dbg !1490
  %20 = load ptr, ptr %9, align 8, !dbg !1491
  %21 = getelementptr inbounds %struct.db_stmt_mysql, ptr %20, i32 0, i32 1, !dbg !1492
  store ptr %19, ptr %21, align 8, !dbg !1493
  %22 = load ptr, ptr %9, align 8, !dbg !1494
  %23 = getelementptr inbounds %struct.db_stmt_mysql, ptr %22, i32 0, i32 1, !dbg !1496
  %24 = load ptr, ptr %23, align 8, !dbg !1496
  %25 = icmp ne ptr %24, null, !dbg !1494
  br i1 %25, label %28, label %26, !dbg !1497

26:                                               ; preds = %15
  %27 = load ptr, ptr %9, align 8, !dbg !1498
  call void @free(ptr noundef %27) #13, !dbg !1500
  store ptr null, ptr %4, align 8, !dbg !1501
  br label %59, !dbg !1501

28:                                               ; preds = %15
  %29 = load ptr, ptr %9, align 8, !dbg !1502
  %30 = getelementptr inbounds %struct.db_stmt_mysql, ptr %29, i32 0, i32 1, !dbg !1504
  %31 = load ptr, ptr %30, align 8, !dbg !1504
  %32 = load ptr, ptr %6, align 8, !dbg !1505
  %33 = load i64, ptr %7, align 8, !dbg !1506
  %34 = call i32 @mysql_stmt_prepare(ptr noundef %31, ptr noundef %32, i64 noundef %33), !dbg !1507
  %35 = icmp ne i32 %34, 0, !dbg !1507
  br i1 %35, label %36, label %42, !dbg !1508

36:                                               ; preds = %28
  %37 = load ptr, ptr %9, align 8, !dbg !1509
  %38 = getelementptr inbounds %struct.db_stmt_mysql, ptr %37, i32 0, i32 1, !dbg !1511
  %39 = load ptr, ptr %38, align 8, !dbg !1511
  %40 = call zeroext i1 @mysql_stmt_close(ptr noundef %39), !dbg !1512
  %41 = load ptr, ptr %9, align 8, !dbg !1513
  call void @free(ptr noundef %41) #13, !dbg !1514
  store ptr null, ptr %4, align 8, !dbg !1515
  br label %59, !dbg !1515

42:                                               ; preds = %28
  %43 = load ptr, ptr %9, align 8, !dbg !1516
  %44 = getelementptr inbounds %struct.db_stmt_mysql, ptr %43, i32 0, i32 0, !dbg !1517
  %45 = getelementptr inbounds %struct.db_stmt, ptr %44, i32 0, i32 0, !dbg !1518
  store ptr @db_stmt_bind_mysql, ptr %45, align 8, !dbg !1519
  %46 = load ptr, ptr %9, align 8, !dbg !1520
  %47 = getelementptr inbounds %struct.db_stmt_mysql, ptr %46, i32 0, i32 0, !dbg !1521
  %48 = getelementptr inbounds %struct.db_stmt, ptr %47, i32 0, i32 1, !dbg !1522
  store ptr @db_stmt_step_mysql, ptr %48, align 8, !dbg !1523
  %49 = load ptr, ptr %9, align 8, !dbg !1524
  %50 = getelementptr inbounds %struct.db_stmt_mysql, ptr %49, i32 0, i32 0, !dbg !1525
  %51 = getelementptr inbounds %struct.db_stmt, ptr %50, i32 0, i32 2, !dbg !1526
  store ptr @db_stmt_finalize_mysql, ptr %51, align 8, !dbg !1527
  %52 = load ptr, ptr %9, align 8, !dbg !1528
  %53 = getelementptr inbounds %struct.db_stmt_mysql, ptr %52, i32 0, i32 3, !dbg !1529
  store ptr null, ptr %53, align 8, !dbg !1530
  %54 = load ptr, ptr %9, align 8, !dbg !1531
  %55 = getelementptr inbounds %struct.db_stmt_mysql, ptr %54, i32 0, i32 2, !dbg !1532
  store ptr null, ptr %55, align 8, !dbg !1533
  %56 = load ptr, ptr %9, align 8, !dbg !1534
  %57 = getelementptr inbounds %struct.db_stmt_mysql, ptr %56, i32 0, i32 4, !dbg !1535
  store i8 1, ptr %57, align 8, !dbg !1536
  %58 = load ptr, ptr %9, align 8, !dbg !1537
  store ptr %58, ptr %4, align 8, !dbg !1538
  br label %59, !dbg !1538

59:                                               ; preds = %42, %36, %26, %14
  %60 = load ptr, ptr %4, align 8, !dbg !1539
  ret ptr %60, !dbg !1539
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @mysql_close(ptr noundef) #4

declare ptr @mysql_stmt_init(ptr noundef) #4

declare i32 @mysql_stmt_prepare(ptr noundef, ptr noundef, i64 noundef) #4

declare zeroext i1 @mysql_stmt_close(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_bind_mysql(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1540 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1541, metadata !DIExpression()), !dbg !1542
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1543, metadata !DIExpression()), !dbg !1544
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1545, metadata !DIExpression()), !dbg !1546
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1547, metadata !DIExpression()), !dbg !1548
  %11 = load ptr, ptr %5, align 8, !dbg !1549
  store ptr %11, ptr %8, align 8, !dbg !1548
  %12 = load ptr, ptr %8, align 8, !dbg !1550
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 4, !dbg !1551
  store i8 1, ptr %13, align 8, !dbg !1552
  %14 = load ptr, ptr %8, align 8, !dbg !1553
  %15 = getelementptr inbounds %struct.db_stmt_mysql, ptr %14, i32 0, i32 2, !dbg !1555
  %16 = load ptr, ptr %15, align 8, !dbg !1555
  %17 = icmp ne ptr %16, null, !dbg !1553
  br i1 %17, label %29, label %18, !dbg !1556

18:                                               ; preds = %3
  %19 = load i64, ptr %7, align 8, !dbg !1557
  %20 = call noalias ptr @calloc(i64 noundef %19, i64 noundef 112) #15, !dbg !1559
  %21 = load ptr, ptr %8, align 8, !dbg !1560
  %22 = getelementptr inbounds %struct.db_stmt_mysql, ptr %21, i32 0, i32 2, !dbg !1561
  store ptr %20, ptr %22, align 8, !dbg !1562
  %23 = load ptr, ptr %8, align 8, !dbg !1563
  %24 = getelementptr inbounds %struct.db_stmt_mysql, ptr %23, i32 0, i32 2, !dbg !1565
  %25 = load ptr, ptr %24, align 8, !dbg !1565
  %26 = icmp ne ptr %25, null, !dbg !1563
  br i1 %26, label %28, label %27, !dbg !1566

27:                                               ; preds = %18
  store i1 false, ptr %4, align 1, !dbg !1567
  br label %106, !dbg !1567

28:                                               ; preds = %18
  br label %34, !dbg !1568

29:                                               ; preds = %3
  %30 = load ptr, ptr %8, align 8, !dbg !1569
  %31 = getelementptr inbounds %struct.db_stmt_mysql, ptr %30, i32 0, i32 1, !dbg !1571
  %32 = load ptr, ptr %31, align 8, !dbg !1571
  %33 = call zeroext i1 @mysql_stmt_reset(ptr noundef %32), !dbg !1572
  br label %34

34:                                               ; preds = %29, %28
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1573, metadata !DIExpression()), !dbg !1575
  store i64 0, ptr %9, align 8, !dbg !1575
  br label %35, !dbg !1576

35:                                               ; preds = %94, %34
  %36 = load i64, ptr %9, align 8, !dbg !1577
  %37 = load i64, ptr %7, align 8, !dbg !1579
  %38 = icmp ult i64 %36, %37, !dbg !1580
  br i1 %38, label %39, label %97, !dbg !1581

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 8, !dbg !1582
  %41 = load i64, ptr %9, align 8, !dbg !1585
  %42 = getelementptr inbounds %struct.db_row, ptr %40, i64 %41, !dbg !1582
  %43 = getelementptr inbounds %struct.db_row, ptr %42, i32 0, i32 1, !dbg !1586
  %44 = load i8, ptr %43, align 8, !dbg !1586
  %45 = sext i8 %44 to i32, !dbg !1582
  %46 = icmp eq i32 %45, 0, !dbg !1587
  br i1 %46, label %47, label %48, !dbg !1588

47:                                               ; preds = %39
  br label %97, !dbg !1589

48:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1590, metadata !DIExpression()), !dbg !1591
  %49 = load ptr, ptr %8, align 8, !dbg !1592
  %50 = getelementptr inbounds %struct.db_stmt_mysql, ptr %49, i32 0, i32 2, !dbg !1593
  %51 = load ptr, ptr %50, align 8, !dbg !1593
  %52 = load i64, ptr %9, align 8, !dbg !1594
  %53 = getelementptr inbounds %struct.MYSQL_BIND, ptr %51, i64 %52, !dbg !1592
  store ptr %53, ptr %10, align 8, !dbg !1591
  %54 = load ptr, ptr %6, align 8, !dbg !1595
  %55 = load i64, ptr %9, align 8, !dbg !1597
  %56 = getelementptr inbounds %struct.db_row, ptr %54, i64 %55, !dbg !1595
  %57 = getelementptr inbounds %struct.db_row, ptr %56, i32 0, i32 1, !dbg !1598
  %58 = load i8, ptr %57, align 8, !dbg !1598
  %59 = sext i8 %58 to i32, !dbg !1595
  %60 = icmp eq i32 %59, 115, !dbg !1599
  br i1 %60, label %61, label %71, !dbg !1600

61:                                               ; preds = %48
  %62 = load ptr, ptr %10, align 8, !dbg !1601
  %63 = getelementptr inbounds %struct.MYSQL_BIND, ptr %62, i32 0, i32 13, !dbg !1603
  store i32 254, ptr %63, align 8, !dbg !1604
  %64 = load ptr, ptr %6, align 8, !dbg !1605
  %65 = load i64, ptr %9, align 8, !dbg !1606
  %66 = getelementptr inbounds %struct.db_row, ptr %64, i64 %65, !dbg !1605
  %67 = getelementptr inbounds %struct.db_row, ptr %66, i32 0, i32 0, !dbg !1607
  %68 = load ptr, ptr %67, align 8, !dbg !1608
  %69 = load ptr, ptr %10, align 8, !dbg !1609
  %70 = getelementptr inbounds %struct.MYSQL_BIND, ptr %69, i32 0, i32 2, !dbg !1610
  store ptr %68, ptr %70, align 8, !dbg !1611
  br label %89, !dbg !1612

71:                                               ; preds = %48
  %72 = load ptr, ptr %6, align 8, !dbg !1613
  %73 = load i64, ptr %9, align 8, !dbg !1615
  %74 = getelementptr inbounds %struct.db_row, ptr %72, i64 %73, !dbg !1613
  %75 = getelementptr inbounds %struct.db_row, ptr %74, i32 0, i32 1, !dbg !1616
  %76 = load i8, ptr %75, align 8, !dbg !1616
  %77 = sext i8 %76 to i32, !dbg !1613
  %78 = icmp eq i32 %77, 105, !dbg !1617
  br i1 %78, label %79, label %88, !dbg !1618

79:                                               ; preds = %71
  %80 = load ptr, ptr %10, align 8, !dbg !1619
  %81 = getelementptr inbounds %struct.MYSQL_BIND, ptr %80, i32 0, i32 13, !dbg !1621
  store i32 3, ptr %81, align 8, !dbg !1622
  %82 = load ptr, ptr %6, align 8, !dbg !1623
  %83 = load i64, ptr %9, align 8, !dbg !1624
  %84 = getelementptr inbounds %struct.db_row, ptr %82, i64 %83, !dbg !1623
  %85 = getelementptr inbounds %struct.db_row, ptr %84, i32 0, i32 0, !dbg !1625
  %86 = load ptr, ptr %10, align 8, !dbg !1626
  %87 = getelementptr inbounds %struct.MYSQL_BIND, ptr %86, i32 0, i32 2, !dbg !1627
  store ptr %85, ptr %87, align 8, !dbg !1628
  br label %88, !dbg !1629

88:                                               ; preds = %79, %71
  br label %89

89:                                               ; preds = %88, %61
  %90 = load ptr, ptr %10, align 8, !dbg !1630
  %91 = getelementptr inbounds %struct.MYSQL_BIND, ptr %90, i32 0, i32 1, !dbg !1631
  store ptr null, ptr %91, align 8, !dbg !1632
  %92 = load ptr, ptr %10, align 8, !dbg !1633
  %93 = getelementptr inbounds %struct.MYSQL_BIND, ptr %92, i32 0, i32 0, !dbg !1634
  store ptr null, ptr %93, align 8, !dbg !1635
  br label %94, !dbg !1636

94:                                               ; preds = %89
  %95 = load i64, ptr %9, align 8, !dbg !1637
  %96 = add i64 %95, 1, !dbg !1637
  store i64 %96, ptr %9, align 8, !dbg !1637
  br label %35, !dbg !1638, !llvm.loop !1639

97:                                               ; preds = %47, %35
  %98 = load ptr, ptr %8, align 8, !dbg !1641
  %99 = getelementptr inbounds %struct.db_stmt_mysql, ptr %98, i32 0, i32 1, !dbg !1642
  %100 = load ptr, ptr %99, align 8, !dbg !1642
  %101 = load ptr, ptr %8, align 8, !dbg !1643
  %102 = getelementptr inbounds %struct.db_stmt_mysql, ptr %101, i32 0, i32 2, !dbg !1644
  %103 = load ptr, ptr %102, align 8, !dbg !1644
  %104 = call zeroext i1 @mysql_stmt_bind_param(ptr noundef %100, ptr noundef %103), !dbg !1645
  %105 = xor i1 %104, true, !dbg !1646
  store i1 %105, ptr %4, align 1, !dbg !1647
  br label %106, !dbg !1647

106:                                              ; preds = %97, %27
  %107 = load i1, ptr %4, align 1, !dbg !1648
  ret i1 %107, !dbg !1648
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_step_mysql(ptr noundef %0, ptr noundef %1) #0 !dbg !1649 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1650, metadata !DIExpression()), !dbg !1651
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1652, metadata !DIExpression()), !dbg !1653
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1654, metadata !DIExpression()), !dbg !1655
  %11 = load ptr, ptr %4, align 8, !dbg !1656
  store ptr %11, ptr %6, align 8, !dbg !1655
  %12 = load ptr, ptr %6, align 8, !dbg !1657
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 4, !dbg !1659
  %14 = load i8, ptr %13, align 8, !dbg !1659
  %15 = trunc i8 %14 to i1, !dbg !1659
  br i1 %15, label %16, label %26, !dbg !1660

16:                                               ; preds = %2
  %17 = load ptr, ptr %6, align 8, !dbg !1661
  %18 = getelementptr inbounds %struct.db_stmt_mysql, ptr %17, i32 0, i32 4, !dbg !1663
  store i8 0, ptr %18, align 8, !dbg !1664
  %19 = load ptr, ptr %6, align 8, !dbg !1665
  %20 = getelementptr inbounds %struct.db_stmt_mysql, ptr %19, i32 0, i32 1, !dbg !1667
  %21 = load ptr, ptr %20, align 8, !dbg !1667
  %22 = call i32 @mysql_stmt_execute(ptr noundef %21), !dbg !1668
  %23 = icmp ne i32 %22, 0, !dbg !1668
  br i1 %23, label %24, label %25, !dbg !1669

24:                                               ; preds = %16
  store i1 false, ptr %3, align 1, !dbg !1670
  br label %156, !dbg !1670

25:                                               ; preds = %16
  br label %26, !dbg !1671

26:                                               ; preds = %25, %2
  %27 = load ptr, ptr %6, align 8, !dbg !1672
  %28 = getelementptr inbounds %struct.db_stmt_mysql, ptr %27, i32 0, i32 3, !dbg !1674
  %29 = load ptr, ptr %28, align 8, !dbg !1674
  %30 = icmp ne ptr %29, null, !dbg !1672
  br i1 %30, label %150, label %31, !dbg !1675

31:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1676, metadata !DIExpression()), !dbg !1678
  store i64 0, ptr %7, align 8, !dbg !1678
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1679, metadata !DIExpression()), !dbg !1681
  %32 = load ptr, ptr %5, align 8, !dbg !1682
  store ptr %32, ptr %8, align 8, !dbg !1681
  br label %33, !dbg !1683

33:                                               ; preds = %42, %31
  %34 = load ptr, ptr %8, align 8, !dbg !1684
  %35 = getelementptr inbounds %struct.db_row, ptr %34, i32 0, i32 1, !dbg !1686
  %36 = load i8, ptr %35, align 8, !dbg !1686
  %37 = sext i8 %36 to i32, !dbg !1684
  %38 = icmp ne i32 %37, 0, !dbg !1687
  br i1 %38, label %39, label %45, !dbg !1688

39:                                               ; preds = %33
  %40 = load i64, ptr %7, align 8, !dbg !1689
  %41 = add i64 %40, 1, !dbg !1689
  store i64 %41, ptr %7, align 8, !dbg !1689
  br label %42, !dbg !1690

42:                                               ; preds = %39
  %43 = load ptr, ptr %8, align 8, !dbg !1691
  %44 = getelementptr inbounds %struct.db_row, ptr %43, i32 1, !dbg !1691
  store ptr %44, ptr %8, align 8, !dbg !1691
  br label %33, !dbg !1692, !llvm.loop !1693

45:                                               ; preds = %33
  %46 = load i64, ptr %7, align 8, !dbg !1695
  %47 = icmp ne i64 %46, 0, !dbg !1695
  br i1 %47, label %49, label %48, !dbg !1697

48:                                               ; preds = %45
  store i1 false, ptr %3, align 1, !dbg !1698
  br label %156, !dbg !1698

49:                                               ; preds = %45
  %50 = load i64, ptr %7, align 8, !dbg !1699
  %51 = call noalias ptr @calloc(i64 noundef %50, i64 noundef 112) #15, !dbg !1700
  %52 = load ptr, ptr %6, align 8, !dbg !1701
  %53 = getelementptr inbounds %struct.db_stmt_mysql, ptr %52, i32 0, i32 3, !dbg !1702
  store ptr %51, ptr %53, align 8, !dbg !1703
  %54 = load ptr, ptr %6, align 8, !dbg !1704
  %55 = getelementptr inbounds %struct.db_stmt_mysql, ptr %54, i32 0, i32 3, !dbg !1706
  %56 = load ptr, ptr %55, align 8, !dbg !1706
  %57 = icmp ne ptr %56, null, !dbg !1704
  br i1 %57, label %59, label %58, !dbg !1707

58:                                               ; preds = %49
  store i1 false, ptr %3, align 1, !dbg !1708
  br label %156, !dbg !1708

59:                                               ; preds = %49
  %60 = load i64, ptr %7, align 8, !dbg !1709
  %61 = call noalias ptr @calloc(i64 noundef %60, i64 noundef 112) #15, !dbg !1710
  %62 = load ptr, ptr %6, align 8, !dbg !1711
  %63 = getelementptr inbounds %struct.db_stmt_mysql, ptr %62, i32 0, i32 2, !dbg !1712
  store ptr %61, ptr %63, align 8, !dbg !1713
  %64 = load ptr, ptr %6, align 8, !dbg !1714
  %65 = getelementptr inbounds %struct.db_stmt_mysql, ptr %64, i32 0, i32 2, !dbg !1716
  %66 = load ptr, ptr %65, align 8, !dbg !1716
  %67 = icmp ne ptr %66, null, !dbg !1714
  br i1 %67, label %72, label %68, !dbg !1717

68:                                               ; preds = %59
  %69 = load ptr, ptr %6, align 8, !dbg !1718
  %70 = getelementptr inbounds %struct.db_stmt_mysql, ptr %69, i32 0, i32 2, !dbg !1720
  %71 = load ptr, ptr %70, align 8, !dbg !1720
  call void @free(ptr noundef %71) #13, !dbg !1721
  store i1 false, ptr %3, align 1, !dbg !1722
  br label %156, !dbg !1722

72:                                               ; preds = %59
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1723, metadata !DIExpression()), !dbg !1724
  %73 = load ptr, ptr %6, align 8, !dbg !1725
  %74 = getelementptr inbounds %struct.db_stmt_mysql, ptr %73, i32 0, i32 3, !dbg !1726
  %75 = load ptr, ptr %74, align 8, !dbg !1726
  store ptr %75, ptr %9, align 8, !dbg !1724
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1727, metadata !DIExpression()), !dbg !1729
  store i64 0, ptr %10, align 8, !dbg !1729
  br label %76, !dbg !1730

76:                                               ; preds = %139, %72
  %77 = load i64, ptr %10, align 8, !dbg !1731
  %78 = load i64, ptr %7, align 8, !dbg !1733
  %79 = icmp ult i64 %77, %78, !dbg !1734
  br i1 %79, label %80, label %142, !dbg !1735

80:                                               ; preds = %76
  %81 = load ptr, ptr %5, align 8, !dbg !1736
  %82 = load i64, ptr %10, align 8, !dbg !1739
  %83 = getelementptr inbounds %struct.db_row, ptr %81, i64 %82, !dbg !1736
  %84 = getelementptr inbounds %struct.db_row, ptr %83, i32 0, i32 1, !dbg !1740
  %85 = load i8, ptr %84, align 8, !dbg !1740
  %86 = sext i8 %85 to i32, !dbg !1736
  %87 = icmp eq i32 %86, 115, !dbg !1741
  br i1 %87, label %88, label %102, !dbg !1742

88:                                               ; preds = %80
  %89 = load ptr, ptr %9, align 8, !dbg !1743
  %90 = load i64, ptr %10, align 8, !dbg !1745
  %91 = getelementptr inbounds %struct.MYSQL_BIND, ptr %89, i64 %90, !dbg !1743
  %92 = getelementptr inbounds %struct.MYSQL_BIND, ptr %91, i32 0, i32 13, !dbg !1746
  store i32 254, ptr %92, align 8, !dbg !1747
  %93 = load ptr, ptr %5, align 8, !dbg !1748
  %94 = load i64, ptr %10, align 8, !dbg !1749
  %95 = getelementptr inbounds %struct.db_row, ptr %93, i64 %94, !dbg !1748
  %96 = getelementptr inbounds %struct.db_row, ptr %95, i32 0, i32 0, !dbg !1750
  %97 = load ptr, ptr %96, align 8, !dbg !1751
  %98 = load ptr, ptr %9, align 8, !dbg !1752
  %99 = load i64, ptr %10, align 8, !dbg !1753
  %100 = getelementptr inbounds %struct.MYSQL_BIND, ptr %98, i64 %99, !dbg !1752
  %101 = getelementptr inbounds %struct.MYSQL_BIND, ptr %100, i32 0, i32 2, !dbg !1754
  store ptr %97, ptr %101, align 8, !dbg !1755
  br label %125, !dbg !1756

102:                                              ; preds = %80
  %103 = load ptr, ptr %5, align 8, !dbg !1757
  %104 = load i64, ptr %10, align 8, !dbg !1759
  %105 = getelementptr inbounds %struct.db_row, ptr %103, i64 %104, !dbg !1757
  %106 = getelementptr inbounds %struct.db_row, ptr %105, i32 0, i32 1, !dbg !1760
  %107 = load i8, ptr %106, align 8, !dbg !1760
  %108 = sext i8 %107 to i32, !dbg !1757
  %109 = icmp eq i32 %108, 105, !dbg !1761
  br i1 %109, label %110, label %123, !dbg !1762

110:                                              ; preds = %102
  %111 = load ptr, ptr %9, align 8, !dbg !1763
  %112 = load i64, ptr %10, align 8, !dbg !1765
  %113 = getelementptr inbounds %struct.MYSQL_BIND, ptr %111, i64 %112, !dbg !1763
  %114 = getelementptr inbounds %struct.MYSQL_BIND, ptr %113, i32 0, i32 13, !dbg !1766
  store i32 3, ptr %114, align 8, !dbg !1767
  %115 = load ptr, ptr %5, align 8, !dbg !1768
  %116 = load i64, ptr %10, align 8, !dbg !1769
  %117 = getelementptr inbounds %struct.db_row, ptr %115, i64 %116, !dbg !1768
  %118 = getelementptr inbounds %struct.db_row, ptr %117, i32 0, i32 0, !dbg !1770
  %119 = load ptr, ptr %9, align 8, !dbg !1771
  %120 = load i64, ptr %10, align 8, !dbg !1772
  %121 = getelementptr inbounds %struct.MYSQL_BIND, ptr %119, i64 %120, !dbg !1771
  %122 = getelementptr inbounds %struct.MYSQL_BIND, ptr %121, i32 0, i32 2, !dbg !1773
  store ptr %118, ptr %122, align 8, !dbg !1774
  br label %124, !dbg !1775

123:                                              ; preds = %102
  store i1 false, ptr %3, align 1, !dbg !1776
  br label %156, !dbg !1776

124:                                              ; preds = %110
  br label %125

125:                                              ; preds = %124, %88
  %126 = load ptr, ptr %9, align 8, !dbg !1778
  %127 = load i64, ptr %10, align 8, !dbg !1779
  %128 = getelementptr inbounds %struct.MYSQL_BIND, ptr %126, i64 %127, !dbg !1778
  %129 = getelementptr inbounds %struct.MYSQL_BIND, ptr %128, i32 0, i32 1, !dbg !1780
  store ptr null, ptr %129, align 8, !dbg !1781
  %130 = load ptr, ptr %5, align 8, !dbg !1782
  %131 = load i64, ptr %10, align 8, !dbg !1783
  %132 = getelementptr inbounds %struct.db_row, ptr %130, i64 %131, !dbg !1782
  %133 = getelementptr inbounds %struct.db_row, ptr %132, i32 0, i32 2, !dbg !1784
  %134 = load i64, ptr %133, align 8, !dbg !1784
  %135 = load ptr, ptr %9, align 8, !dbg !1785
  %136 = load i64, ptr %10, align 8, !dbg !1786
  %137 = getelementptr inbounds %struct.MYSQL_BIND, ptr %135, i64 %136, !dbg !1785
  %138 = getelementptr inbounds %struct.MYSQL_BIND, ptr %137, i32 0, i32 8, !dbg !1787
  store i64 %134, ptr %138, align 8, !dbg !1788
  br label %139, !dbg !1789

139:                                              ; preds = %125
  %140 = load i64, ptr %10, align 8, !dbg !1790
  %141 = add i64 %140, 1, !dbg !1790
  store i64 %141, ptr %10, align 8, !dbg !1790
  br label %76, !dbg !1791, !llvm.loop !1792

142:                                              ; preds = %76
  %143 = load ptr, ptr %6, align 8, !dbg !1794
  %144 = getelementptr inbounds %struct.db_stmt_mysql, ptr %143, i32 0, i32 1, !dbg !1796
  %145 = load ptr, ptr %144, align 8, !dbg !1796
  %146 = load ptr, ptr %9, align 8, !dbg !1797
  %147 = call zeroext i1 @mysql_stmt_bind_result(ptr noundef %145, ptr noundef %146), !dbg !1798
  br i1 %147, label %148, label %149, !dbg !1799

148:                                              ; preds = %142
  store i1 false, ptr %3, align 1, !dbg !1800
  br label %156, !dbg !1800

149:                                              ; preds = %142
  br label %150, !dbg !1801

150:                                              ; preds = %149, %26
  %151 = load ptr, ptr %6, align 8, !dbg !1802
  %152 = getelementptr inbounds %struct.db_stmt_mysql, ptr %151, i32 0, i32 1, !dbg !1803
  %153 = load ptr, ptr %152, align 8, !dbg !1803
  %154 = call i32 @mysql_stmt_fetch(ptr noundef %153), !dbg !1804
  %155 = icmp eq i32 %154, 0, !dbg !1805
  store i1 %155, ptr %3, align 1, !dbg !1806
  br label %156, !dbg !1806

156:                                              ; preds = %150, %148, %123, %68, %58, %48, %24
  %157 = load i1, ptr %3, align 1, !dbg !1807
  ret i1 %157, !dbg !1807
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stmt_finalize_mysql(ptr noundef %0) #0 !dbg !1808 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1809, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1811, metadata !DIExpression()), !dbg !1812
  %4 = load ptr, ptr %2, align 8, !dbg !1813
  store ptr %4, ptr %3, align 8, !dbg !1812
  %5 = load ptr, ptr %3, align 8, !dbg !1814
  %6 = getelementptr inbounds %struct.db_stmt_mysql, ptr %5, i32 0, i32 1, !dbg !1815
  %7 = load ptr, ptr %6, align 8, !dbg !1815
  %8 = call zeroext i1 @mysql_stmt_close(ptr noundef %7), !dbg !1816
  %9 = load ptr, ptr %3, align 8, !dbg !1817
  %10 = getelementptr inbounds %struct.db_stmt_mysql, ptr %9, i32 0, i32 3, !dbg !1818
  %11 = load ptr, ptr %10, align 8, !dbg !1818
  call void @free(ptr noundef %11) #13, !dbg !1819
  %12 = load ptr, ptr %3, align 8, !dbg !1820
  %13 = getelementptr inbounds %struct.db_stmt_mysql, ptr %12, i32 0, i32 2, !dbg !1821
  %14 = load ptr, ptr %13, align 8, !dbg !1821
  call void @free(ptr noundef %14) #13, !dbg !1822
  %15 = load ptr, ptr %3, align 8, !dbg !1823
  call void @free(ptr noundef %15) #13, !dbg !1824
  ret void, !dbg !1825
}

declare i32 @mysql_stmt_execute(ptr noundef) #4

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

declare zeroext i1 @mysql_stmt_bind_result(ptr noundef, ptr noundef) #4

declare i32 @mysql_stmt_fetch(ptr noundef) #4

declare zeroext i1 @mysql_stmt_reset(ptr noundef) #4

declare zeroext i1 @mysql_stmt_bind_param(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_connect_sqlite(ptr noundef %0, i1 noundef zeroext %1, ptr noundef %2) #0 !dbg !1826 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1830, metadata !DIExpression()), !dbg !1831
  %12 = zext i1 %1 to i8
  store i8 %12, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1832, metadata !DIExpression()), !dbg !1833
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1834, metadata !DIExpression()), !dbg !1835
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1836, metadata !DIExpression()), !dbg !1837
  %13 = call noalias ptr @malloc(i64 noundef 24) #14, !dbg !1838
  store ptr %13, ptr %8, align 8, !dbg !1837
  %14 = load ptr, ptr %8, align 8, !dbg !1839
  %15 = icmp ne ptr %14, null, !dbg !1839
  br i1 %15, label %17, label %16, !dbg !1841

16:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !1842
  br label %62, !dbg !1842

17:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1843, metadata !DIExpression()), !dbg !1844
  %18 = load i8, ptr %6, align 1, !dbg !1845
  %19 = trunc i8 %18 to i1, !dbg !1845
  %20 = zext i1 %19 to i64, !dbg !1845
  %21 = select i1 %19, i32 1, i32 0, !dbg !1845
  store i32 %21, ptr %9, align 4, !dbg !1844
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1846, metadata !DIExpression()), !dbg !1847
  %22 = load ptr, ptr %5, align 8, !dbg !1848
  %23 = load ptr, ptr %8, align 8, !dbg !1849
  %24 = getelementptr inbounds %struct.db_mysql, ptr %23, i32 0, i32 1, !dbg !1850
  %25 = load i32, ptr %9, align 4, !dbg !1851
  %26 = call i32 @sqlite3_open_v2(ptr noundef %22, ptr noundef %24, i32 noundef %25, ptr noundef null), !dbg !1852
  store i32 %26, ptr %10, align 4, !dbg !1847
  %27 = load i32, ptr %10, align 4, !dbg !1853
  %28 = icmp ne i32 %27, 0, !dbg !1855
  br i1 %28, label %29, label %31, !dbg !1856

29:                                               ; preds = %17
  %30 = load ptr, ptr %8, align 8, !dbg !1857
  call void @free(ptr noundef %30) #13, !dbg !1859
  store ptr null, ptr %4, align 8, !dbg !1860
  br label %62, !dbg !1860

31:                                               ; preds = %17
  %32 = load ptr, ptr %7, align 8, !dbg !1861
  %33 = icmp ne ptr %32, null, !dbg !1861
  br i1 %33, label %34, label %54, !dbg !1863

34:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1864, metadata !DIExpression()), !dbg !1867
  store i64 0, ptr %11, align 8, !dbg !1867
  br label %35, !dbg !1868

35:                                               ; preds = %50, %34
  %36 = load ptr, ptr %7, align 8, !dbg !1869
  %37 = load i64, ptr %11, align 8, !dbg !1871
  %38 = getelementptr inbounds ptr, ptr %36, i64 %37, !dbg !1869
  %39 = load ptr, ptr %38, align 8, !dbg !1869
  %40 = icmp ne ptr %39, null, !dbg !1872
  br i1 %40, label %41, label %53, !dbg !1872

41:                                               ; preds = %35
  %42 = load ptr, ptr %8, align 8, !dbg !1873
  %43 = getelementptr inbounds %struct.db_mysql, ptr %42, i32 0, i32 1, !dbg !1874
  %44 = load ptr, ptr %43, align 8, !dbg !1874
  %45 = load ptr, ptr %7, align 8, !dbg !1875
  %46 = load i64, ptr %11, align 8, !dbg !1876
  %47 = getelementptr inbounds ptr, ptr %45, i64 %46, !dbg !1875
  %48 = load ptr, ptr %47, align 8, !dbg !1875
  %49 = call i32 @sqlite3_exec(ptr noundef %44, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef null), !dbg !1877
  br label %50, !dbg !1877

50:                                               ; preds = %41
  %51 = load i64, ptr %11, align 8, !dbg !1878
  %52 = add i64 %51, 1, !dbg !1878
  store i64 %52, ptr %11, align 8, !dbg !1878
  br label %35, !dbg !1879, !llvm.loop !1880

53:                                               ; preds = %35
  br label %54, !dbg !1882

54:                                               ; preds = %53, %31
  %55 = load ptr, ptr %8, align 8, !dbg !1883
  %56 = getelementptr inbounds %struct.db_mysql, ptr %55, i32 0, i32 0, !dbg !1884
  %57 = getelementptr inbounds %struct.db, ptr %56, i32 0, i32 0, !dbg !1885
  store ptr @db_disconnect_sqlite, ptr %57, align 8, !dbg !1886
  %58 = load ptr, ptr %8, align 8, !dbg !1887
  %59 = getelementptr inbounds %struct.db_mysql, ptr %58, i32 0, i32 0, !dbg !1888
  %60 = getelementptr inbounds %struct.db, ptr %59, i32 0, i32 1, !dbg !1889
  store ptr @db_prepare_sqlite, ptr %60, align 8, !dbg !1890
  %61 = load ptr, ptr %8, align 8, !dbg !1891
  store ptr %61, ptr %4, align 8, !dbg !1892
  br label %62, !dbg !1892

62:                                               ; preds = %54, %29, %16
  %63 = load ptr, ptr %4, align 8, !dbg !1893
  ret ptr %63, !dbg !1893
}

declare i32 @sqlite3_open_v2(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @sqlite3_exec(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_disconnect_sqlite(ptr noundef %0) #0 !dbg !1894 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1895, metadata !DIExpression()), !dbg !1896
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1897, metadata !DIExpression()), !dbg !1898
  %4 = load ptr, ptr %2, align 8, !dbg !1899
  store ptr %4, ptr %3, align 8, !dbg !1898
  %5 = load ptr, ptr %3, align 8, !dbg !1900
  %6 = getelementptr inbounds %struct.db_mysql, ptr %5, i32 0, i32 1, !dbg !1901
  %7 = load ptr, ptr %6, align 8, !dbg !1901
  %8 = call i32 @sqlite3_close(ptr noundef %7), !dbg !1902
  %9 = load ptr, ptr %2, align 8, !dbg !1903
  call void @free(ptr noundef %9) #13, !dbg !1904
  ret void, !dbg !1905
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_prepare_sqlite(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1906 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1907, metadata !DIExpression()), !dbg !1908
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1909, metadata !DIExpression()), !dbg !1910
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1911, metadata !DIExpression()), !dbg !1912
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1913, metadata !DIExpression()), !dbg !1914
  %11 = load ptr, ptr %5, align 8, !dbg !1915
  store ptr %11, ptr %8, align 8, !dbg !1914
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1916, metadata !DIExpression()), !dbg !1917
  %12 = call noalias ptr @malloc(i64 noundef 32) #14, !dbg !1918
  store ptr %12, ptr %9, align 8, !dbg !1917
  %13 = load ptr, ptr %9, align 8, !dbg !1919
  %14 = icmp ne ptr %13, null, !dbg !1919
  br i1 %14, label %16, label %15, !dbg !1921

15:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !1922
  br label %41, !dbg !1922

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1923, metadata !DIExpression()), !dbg !1924
  %17 = load ptr, ptr %8, align 8, !dbg !1925
  %18 = getelementptr inbounds %struct.db_mysql, ptr %17, i32 0, i32 1, !dbg !1926
  %19 = load ptr, ptr %18, align 8, !dbg !1926
  %20 = load ptr, ptr %6, align 8, !dbg !1927
  %21 = load i64, ptr %7, align 8, !dbg !1928
  %22 = trunc i64 %21 to i32, !dbg !1929
  %23 = load ptr, ptr %9, align 8, !dbg !1930
  %24 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %23, i32 0, i32 1, !dbg !1931
  %25 = call i32 @sqlite3_prepare(ptr noundef %19, ptr noundef %20, i32 noundef %22, ptr noundef %24, ptr noundef null), !dbg !1932
  store i32 %25, ptr %10, align 4, !dbg !1924
  %26 = load i32, ptr %10, align 4, !dbg !1933
  %27 = icmp ne i32 %26, 0, !dbg !1935
  br i1 %27, label %28, label %30, !dbg !1936

28:                                               ; preds = %16
  %29 = load ptr, ptr %9, align 8, !dbg !1937
  call void @free(ptr noundef %29) #13, !dbg !1939
  store ptr null, ptr %4, align 8, !dbg !1940
  br label %41, !dbg !1940

30:                                               ; preds = %16
  %31 = load ptr, ptr %9, align 8, !dbg !1941
  %32 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %31, i32 0, i32 0, !dbg !1942
  %33 = getelementptr inbounds %struct.db_stmt, ptr %32, i32 0, i32 0, !dbg !1943
  store ptr @db_stmt_bind_sqlite, ptr %33, align 8, !dbg !1944
  %34 = load ptr, ptr %9, align 8, !dbg !1945
  %35 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %34, i32 0, i32 0, !dbg !1946
  %36 = getelementptr inbounds %struct.db_stmt, ptr %35, i32 0, i32 1, !dbg !1947
  store ptr @db_stmt_step_sqlite, ptr %36, align 8, !dbg !1948
  %37 = load ptr, ptr %9, align 8, !dbg !1949
  %38 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %37, i32 0, i32 0, !dbg !1950
  %39 = getelementptr inbounds %struct.db_stmt, ptr %38, i32 0, i32 2, !dbg !1951
  store ptr @db_stmt_finalize_sqlite, ptr %39, align 8, !dbg !1952
  %40 = load ptr, ptr %9, align 8, !dbg !1953
  store ptr %40, ptr %4, align 8, !dbg !1954
  br label %41, !dbg !1954

41:                                               ; preds = %30, %28, %15
  %42 = load ptr, ptr %4, align 8, !dbg !1955
  ret ptr %42, !dbg !1955
}

declare i32 @sqlite3_prepare(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_bind_sqlite(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !1956 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1957, metadata !DIExpression()), !dbg !1958
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1959, metadata !DIExpression()), !dbg !1960
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1961, metadata !DIExpression()), !dbg !1962
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1963, metadata !DIExpression()), !dbg !1964
  %13 = load ptr, ptr %5, align 8, !dbg !1965
  store ptr %13, ptr %8, align 8, !dbg !1964
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1966, metadata !DIExpression()), !dbg !1969
  %14 = load ptr, ptr %6, align 8, !dbg !1970
  %15 = getelementptr inbounds %struct.db_row, ptr %14, i64 -1, !dbg !1971
  store ptr %15, ptr %9, align 8, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1972, metadata !DIExpression()), !dbg !1973
  %16 = load ptr, ptr %8, align 8, !dbg !1974
  %17 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %16, i32 0, i32 1, !dbg !1975
  %18 = load ptr, ptr %17, align 8, !dbg !1975
  %19 = call i32 @sqlite3_reset(ptr noundef %18), !dbg !1976
  %20 = load ptr, ptr %8, align 8, !dbg !1977
  %21 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %20, i32 0, i32 1, !dbg !1978
  %22 = load ptr, ptr %21, align 8, !dbg !1978
  %23 = call i32 @sqlite3_clear_bindings(ptr noundef %22), !dbg !1979
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1980, metadata !DIExpression()), !dbg !1982
  store i64 1, ptr %11, align 8, !dbg !1982
  br label %24, !dbg !1983

24:                                               ; preds = %81, %3
  %25 = load i64, ptr %11, align 8, !dbg !1984
  %26 = load i64, ptr %7, align 8, !dbg !1986
  %27 = icmp ule i64 %25, %26, !dbg !1987
  br i1 %27, label %28, label %84, !dbg !1988

28:                                               ; preds = %24
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1989, metadata !DIExpression()), !dbg !1991
  %29 = load ptr, ptr %9, align 8, !dbg !1992
  %30 = load i64, ptr %11, align 8, !dbg !1993
  %31 = getelementptr inbounds %struct.db_row, ptr %29, i64 %30, !dbg !1992
  store ptr %31, ptr %12, align 8, !dbg !1991
  %32 = load ptr, ptr %12, align 8, !dbg !1994
  %33 = getelementptr inbounds %struct.db_row, ptr %32, i32 0, i32 1, !dbg !1996
  %34 = load i8, ptr %33, align 8, !dbg !1996
  %35 = sext i8 %34 to i32, !dbg !1994
  %36 = icmp eq i32 %35, 0, !dbg !1997
  br i1 %36, label %37, label %38, !dbg !1998

37:                                               ; preds = %28
  br label %84, !dbg !1999

38:                                               ; preds = %28
  %39 = load ptr, ptr %12, align 8, !dbg !2000
  %40 = getelementptr inbounds %struct.db_row, ptr %39, i32 0, i32 1, !dbg !2002
  %41 = load i8, ptr %40, align 8, !dbg !2002
  %42 = sext i8 %41 to i32, !dbg !2000
  %43 = icmp eq i32 %42, 115, !dbg !2003
  br i1 %43, label %44, label %58, !dbg !2004

44:                                               ; preds = %38
  %45 = load ptr, ptr %8, align 8, !dbg !2005
  %46 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %45, i32 0, i32 1, !dbg !2007
  %47 = load ptr, ptr %46, align 8, !dbg !2007
  %48 = load i64, ptr %11, align 8, !dbg !2008
  %49 = trunc i64 %48 to i32, !dbg !2009
  %50 = load ptr, ptr %12, align 8, !dbg !2010
  %51 = getelementptr inbounds %struct.db_row, ptr %50, i32 0, i32 0, !dbg !2011
  %52 = load ptr, ptr %51, align 8, !dbg !2012
  %53 = call i32 @sqlite3_bind_text(ptr noundef %47, i32 noundef %49, ptr noundef %52, i32 noundef -1, ptr noundef null), !dbg !2013
  store i32 %53, ptr %10, align 4, !dbg !2014
  %54 = load i32, ptr %10, align 4, !dbg !2015
  %55 = icmp ne i32 %54, 0, !dbg !2017
  br i1 %55, label %56, label %57, !dbg !2018

56:                                               ; preds = %44
  store i1 false, ptr %4, align 1, !dbg !2019
  br label %85, !dbg !2019

57:                                               ; preds = %44
  br label %80, !dbg !2020

58:                                               ; preds = %38
  %59 = load ptr, ptr %12, align 8, !dbg !2021
  %60 = getelementptr inbounds %struct.db_row, ptr %59, i32 0, i32 1, !dbg !2023
  %61 = load i8, ptr %60, align 8, !dbg !2023
  %62 = sext i8 %61 to i32, !dbg !2021
  %63 = icmp eq i32 %62, 105, !dbg !2024
  br i1 %63, label %64, label %78, !dbg !2025

64:                                               ; preds = %58
  %65 = load ptr, ptr %8, align 8, !dbg !2026
  %66 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %65, i32 0, i32 1, !dbg !2028
  %67 = load ptr, ptr %66, align 8, !dbg !2028
  %68 = load i64, ptr %11, align 8, !dbg !2029
  %69 = trunc i64 %68 to i32, !dbg !2030
  %70 = load ptr, ptr %12, align 8, !dbg !2031
  %71 = getelementptr inbounds %struct.db_row, ptr %70, i32 0, i32 0, !dbg !2032
  %72 = load i32, ptr %71, align 8, !dbg !2033
  %73 = call i32 @sqlite3_bind_int(ptr noundef %67, i32 noundef %69, i32 noundef %72), !dbg !2034
  store i32 %73, ptr %10, align 4, !dbg !2035
  %74 = load i32, ptr %10, align 4, !dbg !2036
  %75 = icmp ne i32 %74, 0, !dbg !2038
  br i1 %75, label %76, label %77, !dbg !2039

76:                                               ; preds = %64
  store i1 false, ptr %4, align 1, !dbg !2040
  br label %85, !dbg !2040

77:                                               ; preds = %64
  br label %79, !dbg !2041

78:                                               ; preds = %58
  store i1 false, ptr %4, align 1, !dbg !2042
  br label %85, !dbg !2042

79:                                               ; preds = %77
  br label %80

80:                                               ; preds = %79, %57
  br label %81, !dbg !2044

81:                                               ; preds = %80
  %82 = load i64, ptr %11, align 8, !dbg !2045
  %83 = add i64 %82, 1, !dbg !2045
  store i64 %83, ptr %11, align 8, !dbg !2045
  br label %24, !dbg !2046, !llvm.loop !2047

84:                                               ; preds = %37, %24
  store i1 true, ptr %4, align 1, !dbg !2049
  br label %85, !dbg !2049

85:                                               ; preds = %84, %78, %76, %56
  %86 = load i1, ptr %4, align 1, !dbg !2050
  ret i1 %86, !dbg !2050
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @db_stmt_step_sqlite(ptr noundef %0, ptr noundef %1) #0 !dbg !2051 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2052, metadata !DIExpression()), !dbg !2053
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2054, metadata !DIExpression()), !dbg !2055
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2056, metadata !DIExpression()), !dbg !2057
  %9 = load ptr, ptr %4, align 8, !dbg !2058
  store ptr %9, ptr %6, align 8, !dbg !2057
  %10 = load ptr, ptr %6, align 8, !dbg !2059
  %11 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %10, i32 0, i32 1, !dbg !2061
  %12 = load ptr, ptr %11, align 8, !dbg !2061
  %13 = call i32 @sqlite3_step(ptr noundef %12), !dbg !2062
  %14 = icmp ne i32 %13, 100, !dbg !2063
  br i1 %14, label %15, label %16, !dbg !2064

15:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !2065
  br label %61, !dbg !2065

16:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2066, metadata !DIExpression()), !dbg !2067
  store i32 0, ptr %7, align 4, !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2068, metadata !DIExpression()), !dbg !2070
  %17 = load ptr, ptr %5, align 8, !dbg !2071
  store ptr %17, ptr %8, align 8, !dbg !2070
  br label %18, !dbg !2072

18:                                               ; preds = %55, %16
  %19 = load ptr, ptr %8, align 8, !dbg !2073
  %20 = getelementptr inbounds %struct.db_row, ptr %19, i32 0, i32 1, !dbg !2075
  %21 = load i8, ptr %20, align 8, !dbg !2075
  %22 = sext i8 %21 to i32, !dbg !2073
  %23 = icmp ne i32 %22, 0, !dbg !2076
  br i1 %23, label %24, label %60, !dbg !2077

24:                                               ; preds = %18
  %25 = load ptr, ptr %8, align 8, !dbg !2078
  %26 = getelementptr inbounds %struct.db_row, ptr %25, i32 0, i32 1, !dbg !2081
  %27 = load i8, ptr %26, align 8, !dbg !2081
  %28 = sext i8 %27 to i32, !dbg !2078
  %29 = icmp eq i32 %28, 105, !dbg !2082
  br i1 %29, label %30, label %38, !dbg !2083

30:                                               ; preds = %24
  %31 = load ptr, ptr %6, align 8, !dbg !2084
  %32 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %31, i32 0, i32 1, !dbg !2086
  %33 = load ptr, ptr %32, align 8, !dbg !2086
  %34 = load i32, ptr %7, align 4, !dbg !2087
  %35 = call i32 @sqlite3_column_int(ptr noundef %33, i32 noundef %34), !dbg !2088
  %36 = load ptr, ptr %8, align 8, !dbg !2089
  %37 = getelementptr inbounds %struct.db_row, ptr %36, i32 0, i32 0, !dbg !2090
  store i32 %35, ptr %37, align 8, !dbg !2091
  br label %54, !dbg !2092

38:                                               ; preds = %24
  %39 = load ptr, ptr %8, align 8, !dbg !2093
  %40 = getelementptr inbounds %struct.db_row, ptr %39, i32 0, i32 1, !dbg !2095
  %41 = load i8, ptr %40, align 8, !dbg !2095
  %42 = sext i8 %41 to i32, !dbg !2093
  %43 = icmp eq i32 %42, 115, !dbg !2096
  br i1 %43, label %44, label %52, !dbg !2097

44:                                               ; preds = %38
  %45 = load ptr, ptr %6, align 8, !dbg !2098
  %46 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %45, i32 0, i32 1, !dbg !2100
  %47 = load ptr, ptr %46, align 8, !dbg !2100
  %48 = load i32, ptr %7, align 4, !dbg !2101
  %49 = call ptr @sqlite3_column_text(ptr noundef %47, i32 noundef %48), !dbg !2102
  %50 = load ptr, ptr %8, align 8, !dbg !2103
  %51 = getelementptr inbounds %struct.db_row, ptr %50, i32 0, i32 0, !dbg !2104
  store ptr %49, ptr %51, align 8, !dbg !2105
  br label %53, !dbg !2106

52:                                               ; preds = %38
  store i1 false, ptr %3, align 1, !dbg !2107
  br label %61, !dbg !2107

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %30
  br label %55, !dbg !2109

55:                                               ; preds = %54
  %56 = load ptr, ptr %8, align 8, !dbg !2110
  %57 = getelementptr inbounds %struct.db_row, ptr %56, i32 1, !dbg !2110
  store ptr %57, ptr %8, align 8, !dbg !2110
  %58 = load i32, ptr %7, align 4, !dbg !2111
  %59 = add nsw i32 %58, 1, !dbg !2111
  store i32 %59, ptr %7, align 4, !dbg !2111
  br label %18, !dbg !2112, !llvm.loop !2113

60:                                               ; preds = %18
  store i1 true, ptr %3, align 1, !dbg !2115
  br label %61, !dbg !2115

61:                                               ; preds = %60, %52, %15
  %62 = load i1, ptr %3, align 1, !dbg !2116
  ret i1 %62, !dbg !2116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db_stmt_finalize_sqlite(ptr noundef %0) #0 !dbg !2117 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2118, metadata !DIExpression()), !dbg !2119
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2120, metadata !DIExpression()), !dbg !2121
  %4 = load ptr, ptr %2, align 8, !dbg !2122
  store ptr %4, ptr %3, align 8, !dbg !2121
  %5 = load ptr, ptr %3, align 8, !dbg !2123
  %6 = getelementptr inbounds %struct.db_stmt_sqlite, ptr %5, i32 0, i32 1, !dbg !2124
  %7 = load ptr, ptr %6, align 8, !dbg !2124
  %8 = call i32 @sqlite3_finalize(ptr noundef %7), !dbg !2125
  %9 = load ptr, ptr %3, align 8, !dbg !2126
  call void @free(ptr noundef %9) #13, !dbg !2127
  ret void, !dbg !2128
}

declare i32 @sqlite3_finalize(ptr noundef) #4

declare i32 @sqlite3_step(ptr noundef) #4

declare i32 @sqlite3_column_int(ptr noundef, i32 noundef) #4

declare ptr @sqlite3_column_text(ptr noundef, i32 noundef) #4

declare i32 @sqlite3_reset(ptr noundef) #4

declare i32 @sqlite3_clear_bindings(ptr noundef) #4

declare i32 @sqlite3_bind_text(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #4

declare i32 @sqlite3_bind_int(ptr noundef, i32 noundef, i32 noundef) #4

declare i32 @sqlite3_close(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @db_stmt_bind(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2129 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2130, metadata !DIExpression()), !dbg !2131
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2132, metadata !DIExpression()), !dbg !2133
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2134, metadata !DIExpression()), !dbg !2135
  %7 = load ptr, ptr %4, align 8, !dbg !2136
  %8 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2137
  %9 = load ptr, ptr %8, align 8, !dbg !2137
  %10 = load ptr, ptr %4, align 8, !dbg !2138
  %11 = load ptr, ptr %5, align 8, !dbg !2139
  %12 = load i64, ptr %6, align 8, !dbg !2140
  %13 = call zeroext i1 %9(ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !2136
  ret i1 %13, !dbg !2141
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @db_stmt_step(ptr noundef %0, ptr noundef %1) #0 !dbg !2142 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2143, metadata !DIExpression()), !dbg !2144
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2145, metadata !DIExpression()), !dbg !2146
  %5 = load ptr, ptr %3, align 8, !dbg !2147
  %6 = getelementptr inbounds %struct.db_stmt, ptr %5, i32 0, i32 1, !dbg !2148
  %7 = load ptr, ptr %6, align 8, !dbg !2148
  %8 = load ptr, ptr %3, align 8, !dbg !2149
  %9 = load ptr, ptr %4, align 8, !dbg !2150
  %10 = call zeroext i1 %7(ptr noundef %8, ptr noundef %9), !dbg !2147
  ret i1 %10, !dbg !2151
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_stmt_finalize(ptr noundef %0) #0 !dbg !2152 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2153, metadata !DIExpression()), !dbg !2154
  %3 = load ptr, ptr %2, align 8, !dbg !2155
  %4 = getelementptr inbounds %struct.db_stmt, ptr %3, i32 0, i32 2, !dbg !2156
  %5 = load ptr, ptr %4, align 8, !dbg !2156
  %6 = load ptr, ptr %2, align 8, !dbg !2157
  call void %5(ptr noundef %6), !dbg !2155
  ret void, !dbg !2158
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @db_disconnect(ptr noundef %0) #0 !dbg !2159 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2160, metadata !DIExpression()), !dbg !2161
  %3 = load ptr, ptr %2, align 8, !dbg !2162
  %4 = getelementptr inbounds %struct.db, ptr %3, i32 0, i32 0, !dbg !2163
  %5 = load ptr, ptr %4, align 8, !dbg !2163
  %6 = load ptr, ptr %2, align 8, !dbg !2164
  call void %5(ptr noundef %6), !dbg !2162
  ret void, !dbg !2165
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @db_prepare_stmt(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2166 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2167, metadata !DIExpression()), !dbg !2168
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2169, metadata !DIExpression()), !dbg !2170
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2171, metadata !DIExpression()), !dbg !2172
  %7 = load ptr, ptr %4, align 8, !dbg !2173
  %8 = getelementptr inbounds %struct.db, ptr %7, i32 0, i32 1, !dbg !2174
  %9 = load ptr, ptr %8, align 8, !dbg !2174
  %10 = load ptr, ptr %4, align 8, !dbg !2175
  %11 = load ptr, ptr %5, align 8, !dbg !2176
  %12 = load i64, ptr %6, align 8, !dbg !2177
  %13 = call ptr %9(ptr noundef %10, ptr noundef %11, i64 noundef %12), !dbg !2173
  ret ptr %13, !dbg !2178
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_decode(ptr noundef %0) #0 !dbg !2179 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2182, metadata !DIExpression()), !dbg !2183
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2184, metadata !DIExpression()), !dbg !2185
  %6 = load ptr, ptr %3, align 8, !dbg !2186
  store ptr %6, ptr %4, align 8, !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2187, metadata !DIExpression()), !dbg !2188
  call void @skip_space(ptr noundef %4), !dbg !2189
  %7 = call zeroext i1 @parse_value(ptr noundef %4, ptr noundef %5), !dbg !2190
  br i1 %7, label %9, label %8, !dbg !2192

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !2193
  br label %18, !dbg !2193

9:                                                ; preds = %1
  call void @skip_space(ptr noundef %4), !dbg !2194
  %10 = load ptr, ptr %4, align 8, !dbg !2195
  %11 = load i8, ptr %10, align 1, !dbg !2197
  %12 = sext i8 %11 to i32, !dbg !2197
  %13 = icmp ne i32 %12, 0, !dbg !2198
  br i1 %13, label %14, label %16, !dbg !2199

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8, !dbg !2200
  call void @json_delete(ptr noundef %15), !dbg !2202
  store ptr null, ptr %2, align 8, !dbg !2203
  br label %18, !dbg !2203

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8, !dbg !2204
  store ptr %17, ptr %2, align 8, !dbg !2205
  br label %18, !dbg !2205

18:                                               ; preds = %16, %14, %8
  %19 = load ptr, ptr %2, align 8, !dbg !2206
  ret ptr %19, !dbg !2206
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_space(ptr noundef %0) #0 !dbg !2207 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2210, metadata !DIExpression()), !dbg !2211
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2212, metadata !DIExpression()), !dbg !2213
  %4 = load ptr, ptr %2, align 8, !dbg !2214
  %5 = load ptr, ptr %4, align 8, !dbg !2215
  store ptr %5, ptr %3, align 8, !dbg !2213
  br label %6, !dbg !2216

6:                                                ; preds = %28, %1
  %7 = load ptr, ptr %3, align 8, !dbg !2217
  %8 = load i8, ptr %7, align 1, !dbg !2217
  %9 = sext i8 %8 to i32, !dbg !2217
  %10 = icmp eq i32 %9, 9, !dbg !2217
  br i1 %10, label %26, label %11, !dbg !2217

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !2217
  %13 = load i8, ptr %12, align 1, !dbg !2217
  %14 = sext i8 %13 to i32, !dbg !2217
  %15 = icmp eq i32 %14, 10, !dbg !2217
  br i1 %15, label %26, label %16, !dbg !2217

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !2217
  %18 = load i8, ptr %17, align 1, !dbg !2217
  %19 = sext i8 %18 to i32, !dbg !2217
  %20 = icmp eq i32 %19, 13, !dbg !2217
  br i1 %20, label %26, label %21, !dbg !2217

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !dbg !2217
  %23 = load i8, ptr %22, align 1, !dbg !2217
  %24 = sext i8 %23 to i32, !dbg !2217
  %25 = icmp eq i32 %24, 32, !dbg !2217
  br label %26, !dbg !2217

26:                                               ; preds = %21, %16, %11, %6
  %27 = phi i1 [ true, %16 ], [ true, %11 ], [ true, %6 ], [ %25, %21 ]
  br i1 %27, label %28, label %31, !dbg !2216

28:                                               ; preds = %26
  %29 = load ptr, ptr %3, align 8, !dbg !2218
  %30 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !2218
  store ptr %30, ptr %3, align 8, !dbg !2218
  br label %6, !dbg !2216, !llvm.loop !2219

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8, !dbg !2220
  %33 = load ptr, ptr %2, align 8, !dbg !2221
  store ptr %32, ptr %33, align 8, !dbg !2222
  ret void, !dbg !2223
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_value(ptr noundef %0, ptr noundef %1) #0 !dbg !2224 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2228, metadata !DIExpression()), !dbg !2229
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2230, metadata !DIExpression()), !dbg !2231
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2232, metadata !DIExpression()), !dbg !2233
  %9 = load ptr, ptr %4, align 8, !dbg !2234
  %10 = load ptr, ptr %9, align 8, !dbg !2235
  store ptr %10, ptr %6, align 8, !dbg !2233
  %11 = load ptr, ptr %6, align 8, !dbg !2236
  %12 = load i8, ptr %11, align 1, !dbg !2237
  %13 = sext i8 %12 to i32, !dbg !2237
  switch i32 %13, label %83 [
    i32 110, label %14
    i32 102, label %26
    i32 116, label %38
    i32 34, label %50
    i32 91, label %69
    i32 123, label %76
  ], !dbg !2238

14:                                               ; preds = %2
  %15 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.23), !dbg !2239
  br i1 %15, label %16, label %25, !dbg !2242

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !dbg !2243
  %18 = icmp ne ptr %17, null, !dbg !2243
  br i1 %18, label %19, label %22, !dbg !2246

19:                                               ; preds = %16
  %20 = call ptr @json_mknull(), !dbg !2247
  %21 = load ptr, ptr %5, align 8, !dbg !2248
  store ptr %20, ptr %21, align 8, !dbg !2249
  br label %22, !dbg !2250

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %6, align 8, !dbg !2251
  %24 = load ptr, ptr %4, align 8, !dbg !2252
  store ptr %23, ptr %24, align 8, !dbg !2253
  store i1 true, ptr %3, align 1, !dbg !2254
  br label %102, !dbg !2254

25:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !2255
  br label %102, !dbg !2255

26:                                               ; preds = %2
  %27 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.24), !dbg !2256
  br i1 %27, label %28, label %37, !dbg !2258

28:                                               ; preds = %26
  %29 = load ptr, ptr %5, align 8, !dbg !2259
  %30 = icmp ne ptr %29, null, !dbg !2259
  br i1 %30, label %31, label %34, !dbg !2262

31:                                               ; preds = %28
  %32 = call ptr @json_mkbool(i1 noundef zeroext false), !dbg !2263
  %33 = load ptr, ptr %5, align 8, !dbg !2264
  store ptr %32, ptr %33, align 8, !dbg !2265
  br label %34, !dbg !2266

34:                                               ; preds = %31, %28
  %35 = load ptr, ptr %6, align 8, !dbg !2267
  %36 = load ptr, ptr %4, align 8, !dbg !2268
  store ptr %35, ptr %36, align 8, !dbg !2269
  store i1 true, ptr %3, align 1, !dbg !2270
  br label %102, !dbg !2270

37:                                               ; preds = %26
  store i1 false, ptr %3, align 1, !dbg !2271
  br label %102, !dbg !2271

38:                                               ; preds = %2
  %39 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.25), !dbg !2272
  br i1 %39, label %40, label %49, !dbg !2274

40:                                               ; preds = %38
  %41 = load ptr, ptr %5, align 8, !dbg !2275
  %42 = icmp ne ptr %41, null, !dbg !2275
  br i1 %42, label %43, label %46, !dbg !2278

43:                                               ; preds = %40
  %44 = call ptr @json_mkbool(i1 noundef zeroext true), !dbg !2279
  %45 = load ptr, ptr %5, align 8, !dbg !2280
  store ptr %44, ptr %45, align 8, !dbg !2281
  br label %46, !dbg !2282

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %6, align 8, !dbg !2283
  %48 = load ptr, ptr %4, align 8, !dbg !2284
  store ptr %47, ptr %48, align 8, !dbg !2285
  store i1 true, ptr %3, align 1, !dbg !2286
  br label %102, !dbg !2286

49:                                               ; preds = %38
  store i1 false, ptr %3, align 1, !dbg !2287
  br label %102, !dbg !2287

50:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2288, metadata !DIExpression()), !dbg !2290
  %51 = load ptr, ptr %5, align 8, !dbg !2291
  %52 = icmp ne ptr %51, null, !dbg !2291
  br i1 %52, label %53, label %54, !dbg !2291

53:                                               ; preds = %50
  br label %55, !dbg !2291

54:                                               ; preds = %50
  br label %55, !dbg !2291

55:                                               ; preds = %54, %53
  %56 = phi ptr [ %7, %53 ], [ null, %54 ], !dbg !2291
  %57 = call zeroext i1 @parse_string(ptr noundef %6, ptr noundef %56), !dbg !2293
  br i1 %57, label %58, label %68, !dbg !2294

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 8, !dbg !2295
  %60 = icmp ne ptr %59, null, !dbg !2295
  br i1 %60, label %61, label %65, !dbg !2298

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !dbg !2299
  %63 = call ptr @mkstring(ptr noundef %62), !dbg !2300
  %64 = load ptr, ptr %5, align 8, !dbg !2301
  store ptr %63, ptr %64, align 8, !dbg !2302
  br label %65, !dbg !2303

65:                                               ; preds = %61, %58
  %66 = load ptr, ptr %6, align 8, !dbg !2304
  %67 = load ptr, ptr %4, align 8, !dbg !2305
  store ptr %66, ptr %67, align 8, !dbg !2306
  store i1 true, ptr %3, align 1, !dbg !2307
  br label %102, !dbg !2307

68:                                               ; preds = %55
  store i1 false, ptr %3, align 1, !dbg !2308
  br label %102, !dbg !2308

69:                                               ; preds = %2
  %70 = load ptr, ptr %5, align 8, !dbg !2309
  %71 = call zeroext i1 @parse_array(ptr noundef %6, ptr noundef %70), !dbg !2311
  br i1 %71, label %72, label %75, !dbg !2312

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8, !dbg !2313
  %74 = load ptr, ptr %4, align 8, !dbg !2315
  store ptr %73, ptr %74, align 8, !dbg !2316
  store i1 true, ptr %3, align 1, !dbg !2317
  br label %102, !dbg !2317

75:                                               ; preds = %69
  store i1 false, ptr %3, align 1, !dbg !2318
  br label %102, !dbg !2318

76:                                               ; preds = %2
  %77 = load ptr, ptr %5, align 8, !dbg !2319
  %78 = call zeroext i1 @parse_object(ptr noundef %6, ptr noundef %77), !dbg !2321
  br i1 %78, label %79, label %82, !dbg !2322

79:                                               ; preds = %76
  %80 = load ptr, ptr %6, align 8, !dbg !2323
  %81 = load ptr, ptr %4, align 8, !dbg !2325
  store ptr %80, ptr %81, align 8, !dbg !2326
  store i1 true, ptr %3, align 1, !dbg !2327
  br label %102, !dbg !2327

82:                                               ; preds = %76
  store i1 false, ptr %3, align 1, !dbg !2328
  br label %102, !dbg !2328

83:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2329, metadata !DIExpression()), !dbg !2331
  %84 = load ptr, ptr %5, align 8, !dbg !2332
  %85 = icmp ne ptr %84, null, !dbg !2332
  br i1 %85, label %86, label %87, !dbg !2332

86:                                               ; preds = %83
  br label %88, !dbg !2332

87:                                               ; preds = %83
  br label %88, !dbg !2332

88:                                               ; preds = %87, %86
  %89 = phi ptr [ %8, %86 ], [ null, %87 ], !dbg !2332
  %90 = call zeroext i1 @parse_number(ptr noundef %6, ptr noundef %89), !dbg !2334
  br i1 %90, label %91, label %101, !dbg !2335

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !dbg !2336
  %93 = icmp ne ptr %92, null, !dbg !2336
  br i1 %93, label %94, label %98, !dbg !2339

94:                                               ; preds = %91
  %95 = load double, ptr %8, align 8, !dbg !2340
  %96 = call ptr @json_mknumber(double noundef %95), !dbg !2341
  %97 = load ptr, ptr %5, align 8, !dbg !2342
  store ptr %96, ptr %97, align 8, !dbg !2343
  br label %98, !dbg !2344

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr %6, align 8, !dbg !2345
  %100 = load ptr, ptr %4, align 8, !dbg !2346
  store ptr %99, ptr %100, align 8, !dbg !2347
  store i1 true, ptr %3, align 1, !dbg !2348
  br label %102, !dbg !2348

101:                                              ; preds = %88
  store i1 false, ptr %3, align 1, !dbg !2349
  br label %102, !dbg !2349

102:                                              ; preds = %101, %98, %82, %79, %75, %72, %68, %65, %49, %46, %37, %34, %25, %22
  %103 = load i1, ptr %3, align 1, !dbg !2350
  ret i1 %103, !dbg !2350
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_delete(ptr noundef %0) #0 !dbg !2351 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2354, metadata !DIExpression()), !dbg !2355
  %5 = load ptr, ptr %2, align 8, !dbg !2356
  %6 = icmp ne ptr %5, null, !dbg !2358
  br i1 %6, label %7, label %35, !dbg !2359

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !2360
  call void @json_remove_from_parent(ptr noundef %8), !dbg !2362
  %9 = load ptr, ptr %2, align 8, !dbg !2363
  %10 = getelementptr inbounds %struct.JsonNode, ptr %9, i32 0, i32 4, !dbg !2364
  %11 = load i32, ptr %10, align 8, !dbg !2364
  switch i32 %11, label %32 [
    i32 2, label %12
    i32 4, label %16
    i32 5, label %16
  ], !dbg !2365

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !2366
  %14 = getelementptr inbounds %struct.JsonNode, ptr %13, i32 0, i32 5, !dbg !2368
  %15 = load ptr, ptr %14, align 8, !dbg !2368
  call void @free(ptr noundef %15) #13, !dbg !2369
  br label %33, !dbg !2370

16:                                               ; preds = %7, %7
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2374, metadata !DIExpression()), !dbg !2375
  %17 = load ptr, ptr %2, align 8, !dbg !2376
  %18 = getelementptr inbounds %struct.JsonNode, ptr %17, i32 0, i32 5, !dbg !2378
  %19 = getelementptr inbounds %struct.db, ptr %18, i32 0, i32 0, !dbg !2379
  %20 = load ptr, ptr %19, align 8, !dbg !2379
  store ptr %20, ptr %3, align 8, !dbg !2380
  br label %21, !dbg !2381

21:                                               ; preds = %29, %16
  %22 = load ptr, ptr %3, align 8, !dbg !2382
  %23 = icmp ne ptr %22, null, !dbg !2384
  br i1 %23, label %24, label %31, !dbg !2385

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !dbg !2386
  %26 = getelementptr inbounds %struct.JsonNode, ptr %25, i32 0, i32 2, !dbg !2388
  %27 = load ptr, ptr %26, align 8, !dbg !2388
  store ptr %27, ptr %4, align 8, !dbg !2389
  %28 = load ptr, ptr %3, align 8, !dbg !2390
  call void @json_delete(ptr noundef %28), !dbg !2391
  br label %29, !dbg !2392

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !dbg !2393
  store ptr %30, ptr %3, align 8, !dbg !2394
  br label %21, !dbg !2395, !llvm.loop !2396

31:                                               ; preds = %21
  br label %33, !dbg !2398

32:                                               ; preds = %7
  br label %33, !dbg !2399

33:                                               ; preds = %32, %31, %12
  %34 = load ptr, ptr %2, align 8, !dbg !2400
  call void @free(ptr noundef %34) #13, !dbg !2401
  br label %35, !dbg !2402

35:                                               ; preds = %33, %1
  ret void, !dbg !2403
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_remove_from_parent(ptr noundef %0) #0 !dbg !2404 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2405, metadata !DIExpression()), !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2407, metadata !DIExpression()), !dbg !2408
  %4 = load ptr, ptr %2, align 8, !dbg !2409
  %5 = getelementptr inbounds %struct.JsonNode, ptr %4, i32 0, i32 0, !dbg !2410
  %6 = load ptr, ptr %5, align 8, !dbg !2410
  store ptr %6, ptr %3, align 8, !dbg !2408
  %7 = load ptr, ptr %3, align 8, !dbg !2411
  %8 = icmp ne ptr %7, null, !dbg !2413
  br i1 %8, label %9, label %61, !dbg !2414

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !2415
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 1, !dbg !2418
  %12 = load ptr, ptr %11, align 8, !dbg !2418
  %13 = icmp ne ptr %12, null, !dbg !2419
  br i1 %13, label %14, label %22, !dbg !2420

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !2421
  %16 = getelementptr inbounds %struct.JsonNode, ptr %15, i32 0, i32 2, !dbg !2422
  %17 = load ptr, ptr %16, align 8, !dbg !2422
  %18 = load ptr, ptr %2, align 8, !dbg !2423
  %19 = getelementptr inbounds %struct.JsonNode, ptr %18, i32 0, i32 1, !dbg !2424
  %20 = load ptr, ptr %19, align 8, !dbg !2424
  %21 = getelementptr inbounds %struct.JsonNode, ptr %20, i32 0, i32 2, !dbg !2425
  store ptr %17, ptr %21, align 8, !dbg !2426
  br label %29, !dbg !2423

22:                                               ; preds = %9
  %23 = load ptr, ptr %2, align 8, !dbg !2427
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 2, !dbg !2428
  %25 = load ptr, ptr %24, align 8, !dbg !2428
  %26 = load ptr, ptr %3, align 8, !dbg !2429
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 5, !dbg !2430
  %28 = getelementptr inbounds %struct.db, ptr %27, i32 0, i32 0, !dbg !2431
  store ptr %25, ptr %28, align 8, !dbg !2432
  br label %29

29:                                               ; preds = %22, %14
  %30 = load ptr, ptr %2, align 8, !dbg !2433
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 2, !dbg !2435
  %32 = load ptr, ptr %31, align 8, !dbg !2435
  %33 = icmp ne ptr %32, null, !dbg !2436
  br i1 %33, label %34, label %42, !dbg !2437

34:                                               ; preds = %29
  %35 = load ptr, ptr %2, align 8, !dbg !2438
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 1, !dbg !2439
  %37 = load ptr, ptr %36, align 8, !dbg !2439
  %38 = load ptr, ptr %2, align 8, !dbg !2440
  %39 = getelementptr inbounds %struct.JsonNode, ptr %38, i32 0, i32 2, !dbg !2441
  %40 = load ptr, ptr %39, align 8, !dbg !2441
  %41 = getelementptr inbounds %struct.JsonNode, ptr %40, i32 0, i32 1, !dbg !2442
  store ptr %37, ptr %41, align 8, !dbg !2443
  br label %49, !dbg !2440

42:                                               ; preds = %29
  %43 = load ptr, ptr %2, align 8, !dbg !2444
  %44 = getelementptr inbounds %struct.JsonNode, ptr %43, i32 0, i32 1, !dbg !2445
  %45 = load ptr, ptr %44, align 8, !dbg !2445
  %46 = load ptr, ptr %3, align 8, !dbg !2446
  %47 = getelementptr inbounds %struct.JsonNode, ptr %46, i32 0, i32 5, !dbg !2447
  %48 = getelementptr inbounds %struct.db, ptr %47, i32 0, i32 1, !dbg !2448
  store ptr %45, ptr %48, align 8, !dbg !2449
  br label %49

49:                                               ; preds = %42, %34
  %50 = load ptr, ptr %2, align 8, !dbg !2450
  %51 = getelementptr inbounds %struct.JsonNode, ptr %50, i32 0, i32 3, !dbg !2451
  %52 = load ptr, ptr %51, align 8, !dbg !2451
  call void @free(ptr noundef %52) #13, !dbg !2452
  %53 = load ptr, ptr %2, align 8, !dbg !2453
  %54 = getelementptr inbounds %struct.JsonNode, ptr %53, i32 0, i32 0, !dbg !2454
  store ptr null, ptr %54, align 8, !dbg !2455
  %55 = load ptr, ptr %2, align 8, !dbg !2456
  %56 = getelementptr inbounds %struct.JsonNode, ptr %55, i32 0, i32 2, !dbg !2457
  store ptr null, ptr %56, align 8, !dbg !2458
  %57 = load ptr, ptr %2, align 8, !dbg !2459
  %58 = getelementptr inbounds %struct.JsonNode, ptr %57, i32 0, i32 1, !dbg !2460
  store ptr null, ptr %58, align 8, !dbg !2461
  %59 = load ptr, ptr %2, align 8, !dbg !2462
  %60 = getelementptr inbounds %struct.JsonNode, ptr %59, i32 0, i32 3, !dbg !2463
  store ptr null, ptr %60, align 8, !dbg !2464
  br label %61, !dbg !2465

61:                                               ; preds = %49, %1
  ret void, !dbg !2466
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @expect_literal(ptr noundef %0, ptr noundef %1) #0 !dbg !2467 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2470, metadata !DIExpression()), !dbg !2471
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2472, metadata !DIExpression()), !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2474, metadata !DIExpression()), !dbg !2475
  %7 = load ptr, ptr %4, align 8, !dbg !2476
  %8 = load ptr, ptr %7, align 8, !dbg !2477
  store ptr %8, ptr %6, align 8, !dbg !2475
  br label %9, !dbg !2478

9:                                                ; preds = %25, %2
  %10 = load ptr, ptr %5, align 8, !dbg !2479
  %11 = load i8, ptr %10, align 1, !dbg !2480
  %12 = sext i8 %11 to i32, !dbg !2480
  %13 = icmp ne i32 %12, 0, !dbg !2481
  br i1 %13, label %14, label %26, !dbg !2478

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !dbg !2482
  %16 = getelementptr inbounds i8, ptr %15, i32 1, !dbg !2482
  store ptr %16, ptr %6, align 8, !dbg !2482
  %17 = load i8, ptr %15, align 1, !dbg !2484
  %18 = sext i8 %17 to i32, !dbg !2484
  %19 = load ptr, ptr %5, align 8, !dbg !2485
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !2485
  store ptr %20, ptr %5, align 8, !dbg !2485
  %21 = load i8, ptr %19, align 1, !dbg !2486
  %22 = sext i8 %21 to i32, !dbg !2486
  %23 = icmp ne i32 %18, %22, !dbg !2487
  br i1 %23, label %24, label %25, !dbg !2488

24:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !2489
  br label %29, !dbg !2489

25:                                               ; preds = %14
  br label %9, !dbg !2478, !llvm.loop !2490

26:                                               ; preds = %9
  %27 = load ptr, ptr %6, align 8, !dbg !2492
  %28 = load ptr, ptr %4, align 8, !dbg !2493
  store ptr %27, ptr %28, align 8, !dbg !2494
  store i1 true, ptr %3, align 1, !dbg !2495
  br label %29, !dbg !2495

29:                                               ; preds = %26, %24
  %30 = load i1, ptr %3, align 1, !dbg !2496
  ret i1 %30, !dbg !2496
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mknull() #0 !dbg !2497 {
  %1 = call ptr @mknode(i32 noundef 0), !dbg !2500
  ret ptr %1, !dbg !2501
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkbool(i1 noundef zeroext %0) #0 !dbg !2502 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = zext i1 %0 to i8
  store i8 %4, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2505, metadata !DIExpression()), !dbg !2506
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2507, metadata !DIExpression()), !dbg !2508
  %5 = call ptr @mknode(i32 noundef 1), !dbg !2509
  store ptr %5, ptr %3, align 8, !dbg !2508
  %6 = load i8, ptr %2, align 1, !dbg !2510
  %7 = trunc i8 %6 to i1, !dbg !2510
  %8 = load ptr, ptr %3, align 8, !dbg !2511
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 5, !dbg !2512
  %10 = zext i1 %7 to i8, !dbg !2513
  store i8 %10, ptr %9, align 8, !dbg !2513
  %11 = load ptr, ptr %3, align 8, !dbg !2514
  ret ptr %11, !dbg !2515
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_string(ptr noundef %0, ptr noundef %1) #0 !dbg !2516 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.db_stmt, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2519, metadata !DIExpression()), !dbg !2520
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2521, metadata !DIExpression()), !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2523, metadata !DIExpression()), !dbg !2524
  %15 = load ptr, ptr %4, align 8, !dbg !2525
  %16 = load ptr, ptr %15, align 8, !dbg !2526
  store ptr %16, ptr %6, align 8, !dbg !2524
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2527, metadata !DIExpression()), !dbg !2534
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 24, i1 false), !dbg !2534
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2535, metadata !DIExpression()), !dbg !2536
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2537, metadata !DIExpression()), !dbg !2538
  %17 = load ptr, ptr %6, align 8, !dbg !2539
  %18 = getelementptr inbounds i8, ptr %17, i32 1, !dbg !2539
  store ptr %18, ptr %6, align 8, !dbg !2539
  %19 = load i8, ptr %17, align 1, !dbg !2541
  %20 = sext i8 %19 to i32, !dbg !2541
  %21 = icmp ne i32 %20, 34, !dbg !2542
  br i1 %21, label %22, label %23, !dbg !2543

22:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !2544
  br label %196, !dbg !2544

23:                                               ; preds = %2
  %24 = load ptr, ptr %5, align 8, !dbg !2545
  %25 = icmp ne ptr %24, null, !dbg !2545
  br i1 %25, label %26, label %41, !dbg !2547

26:                                               ; preds = %23
  call void @sb_init(ptr noundef %7), !dbg !2548
  br label %27, !dbg !2550

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 1, !dbg !2551
  %29 = load ptr, ptr %28, align 8, !dbg !2551
  %30 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2551
  %31 = load ptr, ptr %30, align 8, !dbg !2551
  %32 = ptrtoint ptr %29 to i64, !dbg !2551
  %33 = ptrtoint ptr %31 to i64, !dbg !2551
  %34 = sub i64 %32, %33, !dbg !2551
  %35 = icmp ult i64 %34, 4, !dbg !2551
  br i1 %35, label %36, label %37, !dbg !2554

36:                                               ; preds = %27
  call void @sb_grow(ptr noundef %7, i64 noundef 4), !dbg !2551
  br label %37, !dbg !2551

37:                                               ; preds = %36, %27
  br label %38, !dbg !2554

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2555
  %40 = load ptr, ptr %39, align 8, !dbg !2555
  store ptr %40, ptr %9, align 8, !dbg !2556
  br label %43, !dbg !2557

41:                                               ; preds = %23
  %42 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !2558
  store ptr %42, ptr %9, align 8, !dbg !2560
  br label %43

43:                                               ; preds = %41, %38
  br label %44, !dbg !2561

44:                                               ; preds = %179, %43
  %45 = load ptr, ptr %6, align 8, !dbg !2562
  %46 = load i8, ptr %45, align 1, !dbg !2563
  %47 = sext i8 %46 to i32, !dbg !2563
  %48 = icmp ne i32 %47, 34, !dbg !2564
  br i1 %48, label %49, label %180, !dbg !2561

49:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2565, metadata !DIExpression()), !dbg !2567
  %50 = load ptr, ptr %6, align 8, !dbg !2568
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !2568
  store ptr %51, ptr %6, align 8, !dbg !2568
  %52 = load i8, ptr %50, align 1, !dbg !2569
  store i8 %52, ptr %10, align 1, !dbg !2567
  %53 = load i8, ptr %10, align 1, !dbg !2570
  %54 = sext i8 %53 to i32, !dbg !2570
  %55 = icmp eq i32 %54, 92, !dbg !2572
  br i1 %55, label %56, label %131, !dbg !2573

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 8, !dbg !2574
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !2574
  store ptr %58, ptr %6, align 8, !dbg !2574
  %59 = load i8, ptr %57, align 1, !dbg !2576
  store i8 %59, ptr %10, align 1, !dbg !2577
  %60 = load i8, ptr %10, align 1, !dbg !2578
  %61 = sext i8 %60 to i32, !dbg !2578
  switch i32 %61, label %129 [
    i32 34, label %62
    i32 92, label %62
    i32 47, label %62
    i32 98, label %66
    i32 102, label %69
    i32 110, label %72
    i32 114, label %75
    i32 116, label %78
    i32 117, label %81
  ], !dbg !2579

62:                                               ; preds = %56, %56, %56
  %63 = load i8, ptr %10, align 1, !dbg !2580
  %64 = load ptr, ptr %9, align 8, !dbg !2582
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !2582
  store ptr %65, ptr %9, align 8, !dbg !2582
  store i8 %63, ptr %64, align 1, !dbg !2583
  br label %130, !dbg !2584

66:                                               ; preds = %56
  %67 = load ptr, ptr %9, align 8, !dbg !2585
  %68 = getelementptr inbounds i8, ptr %67, i32 1, !dbg !2585
  store ptr %68, ptr %9, align 8, !dbg !2585
  store i8 8, ptr %67, align 1, !dbg !2586
  br label %130, !dbg !2587

69:                                               ; preds = %56
  %70 = load ptr, ptr %9, align 8, !dbg !2588
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !2588
  store ptr %71, ptr %9, align 8, !dbg !2588
  store i8 12, ptr %70, align 1, !dbg !2589
  br label %130, !dbg !2590

72:                                               ; preds = %56
  %73 = load ptr, ptr %9, align 8, !dbg !2591
  %74 = getelementptr inbounds i8, ptr %73, i32 1, !dbg !2591
  store ptr %74, ptr %9, align 8, !dbg !2591
  store i8 10, ptr %73, align 1, !dbg !2592
  br label %130, !dbg !2593

75:                                               ; preds = %56
  %76 = load ptr, ptr %9, align 8, !dbg !2594
  %77 = getelementptr inbounds i8, ptr %76, i32 1, !dbg !2594
  store ptr %77, ptr %9, align 8, !dbg !2594
  store i8 13, ptr %76, align 1, !dbg !2595
  br label %130, !dbg !2596

78:                                               ; preds = %56
  %79 = load ptr, ptr %9, align 8, !dbg !2597
  %80 = getelementptr inbounds i8, ptr %79, i32 1, !dbg !2597
  store ptr %80, ptr %9, align 8, !dbg !2597
  store i8 9, ptr %79, align 1, !dbg !2598
  br label %130, !dbg !2599

81:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2600, metadata !DIExpression()), !dbg !2602
  call void @llvm.dbg.declare(metadata ptr %12, metadata !2603, metadata !DIExpression()), !dbg !2604
  call void @llvm.dbg.declare(metadata ptr %13, metadata !2605, metadata !DIExpression()), !dbg !2606
  %82 = call zeroext i1 @parse_hex16(ptr noundef %6, ptr noundef %11), !dbg !2607
  br i1 %82, label %84, label %83, !dbg !2609

83:                                               ; preds = %81
  br label %191, !dbg !2610

84:                                               ; preds = %81
  %85 = load i16, ptr %11, align 2, !dbg !2611
  %86 = zext i16 %85 to i32, !dbg !2611
  %87 = icmp sge i32 %86, 55296, !dbg !2613
  br i1 %87, label %88, label %113, !dbg !2614

88:                                               ; preds = %84
  %89 = load i16, ptr %11, align 2, !dbg !2615
  %90 = zext i16 %89 to i32, !dbg !2615
  %91 = icmp sle i32 %90, 57343, !dbg !2616
  br i1 %91, label %92, label %113, !dbg !2617

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 8, !dbg !2618
  %94 = getelementptr inbounds i8, ptr %93, i32 1, !dbg !2618
  store ptr %94, ptr %6, align 8, !dbg !2618
  %95 = load i8, ptr %93, align 1, !dbg !2621
  %96 = sext i8 %95 to i32, !dbg !2621
  %97 = icmp ne i32 %96, 92, !dbg !2622
  br i1 %97, label %106, label %98, !dbg !2623

98:                                               ; preds = %92
  %99 = load ptr, ptr %6, align 8, !dbg !2624
  %100 = getelementptr inbounds i8, ptr %99, i32 1, !dbg !2624
  store ptr %100, ptr %6, align 8, !dbg !2624
  %101 = load i8, ptr %99, align 1, !dbg !2625
  %102 = sext i8 %101 to i32, !dbg !2625
  %103 = icmp ne i32 %102, 117, !dbg !2626
  br i1 %103, label %106, label %104, !dbg !2627

104:                                              ; preds = %98
  %105 = call zeroext i1 @parse_hex16(ptr noundef %6, ptr noundef %12), !dbg !2628
  br i1 %105, label %107, label %106, !dbg !2629

106:                                              ; preds = %104, %98, %92
  br label %191, !dbg !2630

107:                                              ; preds = %104
  %108 = load i16, ptr %11, align 2, !dbg !2631
  %109 = load i16, ptr %12, align 2, !dbg !2633
  %110 = call zeroext i1 @from_surrogate_pair(i16 noundef zeroext %108, i16 noundef zeroext %109, ptr noundef %13), !dbg !2634
  br i1 %110, label %112, label %111, !dbg !2635

111:                                              ; preds = %107
  br label %191, !dbg !2636

112:                                              ; preds = %107
  br label %122, !dbg !2637

113:                                              ; preds = %88, %84
  %114 = load i16, ptr %11, align 2, !dbg !2638
  %115 = zext i16 %114 to i32, !dbg !2638
  %116 = icmp eq i32 %115, 0, !dbg !2640
  br i1 %116, label %117, label %118, !dbg !2641

117:                                              ; preds = %113
  br label %191, !dbg !2642

118:                                              ; preds = %113
  %119 = load i16, ptr %11, align 2, !dbg !2644
  %120 = zext i16 %119 to i32, !dbg !2644
  store i32 %120, ptr %13, align 4, !dbg !2646
  br label %121

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %112
  %123 = load i32, ptr %13, align 4, !dbg !2647
  %124 = load ptr, ptr %9, align 8, !dbg !2648
  %125 = call i32 @utf8_write_char(i32 noundef %123, ptr noundef %124), !dbg !2649
  %126 = load ptr, ptr %9, align 8, !dbg !2650
  %127 = sext i32 %125 to i64, !dbg !2650
  %128 = getelementptr inbounds i8, ptr %126, i64 %127, !dbg !2650
  store ptr %128, ptr %9, align 8, !dbg !2650
  br label %130, !dbg !2651

129:                                              ; preds = %56
  br label %191, !dbg !2652

130:                                              ; preds = %122, %78, %75, %72, %69, %66, %62
  br label %157, !dbg !2653

131:                                              ; preds = %49
  %132 = load i8, ptr %10, align 1, !dbg !2654
  %133 = sext i8 %132 to i32, !dbg !2654
  %134 = icmp sle i32 %133, 31, !dbg !2656
  br i1 %134, label %135, label %136, !dbg !2657

135:                                              ; preds = %131
  br label %191, !dbg !2658

136:                                              ; preds = %131
  call void @llvm.dbg.declare(metadata ptr %14, metadata !2660, metadata !DIExpression()), !dbg !2662
  %137 = load ptr, ptr %6, align 8, !dbg !2663
  %138 = getelementptr inbounds i8, ptr %137, i32 -1, !dbg !2663
  store ptr %138, ptr %6, align 8, !dbg !2663
  %139 = load ptr, ptr %6, align 8, !dbg !2664
  %140 = call i64 @utf8_validate_cz(ptr noundef %139), !dbg !2665
  store i64 %140, ptr %14, align 8, !dbg !2666
  %141 = load i64, ptr %14, align 8, !dbg !2667
  %142 = icmp eq i64 %141, 0, !dbg !2669
  br i1 %142, label %143, label %144, !dbg !2670

143:                                              ; preds = %136
  br label %191, !dbg !2671

144:                                              ; preds = %136
  br label %145, !dbg !2672

145:                                              ; preds = %149, %144
  %146 = load i64, ptr %14, align 8, !dbg !2673
  %147 = add i64 %146, -1, !dbg !2673
  store i64 %147, ptr %14, align 8, !dbg !2673
  %148 = icmp ne i64 %146, 0, !dbg !2672
  br i1 %148, label %149, label %155, !dbg !2672

149:                                              ; preds = %145
  %150 = load ptr, ptr %6, align 8, !dbg !2674
  %151 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !2674
  store ptr %151, ptr %6, align 8, !dbg !2674
  %152 = load i8, ptr %150, align 1, !dbg !2675
  %153 = load ptr, ptr %9, align 8, !dbg !2676
  %154 = getelementptr inbounds i8, ptr %153, i32 1, !dbg !2676
  store ptr %154, ptr %9, align 8, !dbg !2676
  store i8 %152, ptr %153, align 1, !dbg !2677
  br label %145, !dbg !2672, !llvm.loop !2678

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156, %130
  %158 = load ptr, ptr %5, align 8, !dbg !2679
  %159 = icmp ne ptr %158, null, !dbg !2679
  br i1 %159, label %160, label %177, !dbg !2681

160:                                              ; preds = %157
  %161 = load ptr, ptr %9, align 8, !dbg !2682
  %162 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2684
  store ptr %161, ptr %162, align 8, !dbg !2685
  br label %163, !dbg !2686

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 1, !dbg !2687
  %165 = load ptr, ptr %164, align 8, !dbg !2687
  %166 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2687
  %167 = load ptr, ptr %166, align 8, !dbg !2687
  %168 = ptrtoint ptr %165 to i64, !dbg !2687
  %169 = ptrtoint ptr %167 to i64, !dbg !2687
  %170 = sub i64 %168, %169, !dbg !2687
  %171 = icmp ult i64 %170, 4, !dbg !2687
  br i1 %171, label %172, label %173, !dbg !2690

172:                                              ; preds = %163
  call void @sb_grow(ptr noundef %7, i64 noundef 4), !dbg !2687
  br label %173, !dbg !2687

173:                                              ; preds = %172, %163
  br label %174, !dbg !2690

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !2691
  %176 = load ptr, ptr %175, align 8, !dbg !2691
  store ptr %176, ptr %9, align 8, !dbg !2692
  br label %179, !dbg !2693

177:                                              ; preds = %157
  %178 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !2694
  store ptr %178, ptr %9, align 8, !dbg !2696
  br label %179

179:                                              ; preds = %177, %174
  br label %44, !dbg !2561, !llvm.loop !2697

180:                                              ; preds = %44
  %181 = load ptr, ptr %6, align 8, !dbg !2699
  %182 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !2699
  store ptr %182, ptr %6, align 8, !dbg !2699
  %183 = load ptr, ptr %5, align 8, !dbg !2700
  %184 = icmp ne ptr %183, null, !dbg !2700
  br i1 %184, label %185, label %188, !dbg !2702

185:                                              ; preds = %180
  %186 = call ptr @sb_finish(ptr noundef %7), !dbg !2703
  %187 = load ptr, ptr %5, align 8, !dbg !2704
  store ptr %186, ptr %187, align 8, !dbg !2705
  br label %188, !dbg !2706

188:                                              ; preds = %185, %180
  %189 = load ptr, ptr %6, align 8, !dbg !2707
  %190 = load ptr, ptr %4, align 8, !dbg !2708
  store ptr %189, ptr %190, align 8, !dbg !2709
  store i1 true, ptr %3, align 1, !dbg !2710
  br label %196, !dbg !2710

191:                                              ; preds = %143, %135, %129, %117, %111, %106, %83
  call void @llvm.dbg.label(metadata !2711), !dbg !2712
  %192 = load ptr, ptr %5, align 8, !dbg !2713
  %193 = icmp ne ptr %192, null, !dbg !2713
  br i1 %193, label %194, label %195, !dbg !2715

194:                                              ; preds = %191
  call void @sb_free(ptr noundef %7), !dbg !2716
  br label %195, !dbg !2716

195:                                              ; preds = %194, %191
  store i1 false, ptr %3, align 1, !dbg !2717
  br label %196, !dbg !2717

196:                                              ; preds = %195, %188, %22
  %197 = load i1, ptr %3, align 1, !dbg !2718
  ret i1 %197, !dbg !2718
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mkstring(ptr noundef %0) #0 !dbg !2719 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2724, metadata !DIExpression()), !dbg !2725
  %4 = call ptr @mknode(i32 noundef 2), !dbg !2726
  store ptr %4, ptr %3, align 8, !dbg !2725
  %5 = load ptr, ptr %2, align 8, !dbg !2727
  %6 = load ptr, ptr %3, align 8, !dbg !2728
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 5, !dbg !2729
  store ptr %5, ptr %7, align 8, !dbg !2730
  %8 = load ptr, ptr %3, align 8, !dbg !2731
  ret ptr %8, !dbg !2732
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_array(ptr noundef %0, ptr noundef %1) #0 !dbg !2733 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2734, metadata !DIExpression()), !dbg !2735
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2736, metadata !DIExpression()), !dbg !2737
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2738, metadata !DIExpression()), !dbg !2739
  %9 = load ptr, ptr %4, align 8, !dbg !2740
  %10 = load ptr, ptr %9, align 8, !dbg !2741
  store ptr %10, ptr %6, align 8, !dbg !2739
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2742, metadata !DIExpression()), !dbg !2743
  %11 = load ptr, ptr %5, align 8, !dbg !2744
  %12 = icmp ne ptr %11, null, !dbg !2744
  br i1 %12, label %13, label %15, !dbg !2744

13:                                               ; preds = %2
  %14 = call ptr @json_mkarray(), !dbg !2745
  br label %16, !dbg !2744

15:                                               ; preds = %2
  br label %16, !dbg !2744

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %14, %13 ], [ null, %15 ], !dbg !2744
  store ptr %17, ptr %7, align 8, !dbg !2743
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2746, metadata !DIExpression()), !dbg !2747
  %18 = load ptr, ptr %6, align 8, !dbg !2748
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !2748
  store ptr %19, ptr %6, align 8, !dbg !2748
  %20 = load i8, ptr %18, align 1, !dbg !2750
  %21 = sext i8 %20 to i32, !dbg !2750
  %22 = icmp ne i32 %21, 91, !dbg !2751
  br i1 %22, label %23, label %24, !dbg !2752

23:                                               ; preds = %16
  br label %73, !dbg !2753

24:                                               ; preds = %16
  call void @skip_space(ptr noundef %6), !dbg !2754
  %25 = load ptr, ptr %6, align 8, !dbg !2755
  %26 = load i8, ptr %25, align 1, !dbg !2757
  %27 = sext i8 %26 to i32, !dbg !2757
  %28 = icmp eq i32 %27, 93, !dbg !2758
  br i1 %28, label %29, label %32, !dbg !2759

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !dbg !2760
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !2760
  store ptr %31, ptr %6, align 8, !dbg !2760
  br label %64, !dbg !2762

32:                                               ; preds = %24
  br label %33, !dbg !2763

33:                                               ; preds = %63, %32
  %34 = load ptr, ptr %5, align 8, !dbg !2764
  %35 = icmp ne ptr %34, null, !dbg !2764
  br i1 %35, label %36, label %37, !dbg !2764

36:                                               ; preds = %33
  br label %38, !dbg !2764

37:                                               ; preds = %33
  br label %38, !dbg !2764

38:                                               ; preds = %37, %36
  %39 = phi ptr [ %8, %36 ], [ null, %37 ], !dbg !2764
  %40 = call zeroext i1 @parse_value(ptr noundef %6, ptr noundef %39), !dbg !2769
  br i1 %40, label %42, label %41, !dbg !2770

41:                                               ; preds = %38
  br label %73, !dbg !2771

42:                                               ; preds = %38
  call void @skip_space(ptr noundef %6), !dbg !2772
  %43 = load ptr, ptr %5, align 8, !dbg !2773
  %44 = icmp ne ptr %43, null, !dbg !2773
  br i1 %44, label %45, label %48, !dbg !2775

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 8, !dbg !2776
  %47 = load ptr, ptr %8, align 8, !dbg !2777
  call void @json_append_element(ptr noundef %46, ptr noundef %47), !dbg !2778
  br label %48, !dbg !2778

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr %6, align 8, !dbg !2779
  %50 = load i8, ptr %49, align 1, !dbg !2781
  %51 = sext i8 %50 to i32, !dbg !2781
  %52 = icmp eq i32 %51, 93, !dbg !2782
  br i1 %52, label %53, label %56, !dbg !2783

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 8, !dbg !2784
  %55 = getelementptr inbounds i8, ptr %54, i32 1, !dbg !2784
  store ptr %55, ptr %6, align 8, !dbg !2784
  br label %64, !dbg !2786

56:                                               ; preds = %48
  %57 = load ptr, ptr %6, align 8, !dbg !2787
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !2787
  store ptr %58, ptr %6, align 8, !dbg !2787
  %59 = load i8, ptr %57, align 1, !dbg !2789
  %60 = sext i8 %59 to i32, !dbg !2789
  %61 = icmp ne i32 %60, 44, !dbg !2790
  br i1 %61, label %62, label %63, !dbg !2791

62:                                               ; preds = %56
  br label %73, !dbg !2792

63:                                               ; preds = %56
  call void @skip_space(ptr noundef %6), !dbg !2793
  br label %33, !dbg !2794, !llvm.loop !2795

64:                                               ; preds = %53, %29
  call void @llvm.dbg.label(metadata !2798), !dbg !2799
  %65 = load ptr, ptr %6, align 8, !dbg !2800
  %66 = load ptr, ptr %4, align 8, !dbg !2801
  store ptr %65, ptr %66, align 8, !dbg !2802
  %67 = load ptr, ptr %5, align 8, !dbg !2803
  %68 = icmp ne ptr %67, null, !dbg !2803
  br i1 %68, label %69, label %72, !dbg !2805

69:                                               ; preds = %64
  %70 = load ptr, ptr %7, align 8, !dbg !2806
  %71 = load ptr, ptr %5, align 8, !dbg !2807
  store ptr %70, ptr %71, align 8, !dbg !2808
  br label %72, !dbg !2809

72:                                               ; preds = %69, %64
  store i1 true, ptr %3, align 1, !dbg !2810
  br label %75, !dbg !2810

73:                                               ; preds = %62, %41, %23
  call void @llvm.dbg.label(metadata !2811), !dbg !2812
  %74 = load ptr, ptr %7, align 8, !dbg !2813
  call void @json_delete(ptr noundef %74), !dbg !2814
  store i1 false, ptr %3, align 1, !dbg !2815
  br label %75, !dbg !2815

75:                                               ; preds = %73, %72
  %76 = load i1, ptr %3, align 1, !dbg !2816
  ret i1 %76, !dbg !2816
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_object(ptr noundef %0, ptr noundef %1) #0 !dbg !2817 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2818, metadata !DIExpression()), !dbg !2819
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2822, metadata !DIExpression()), !dbg !2823
  %10 = load ptr, ptr %4, align 8, !dbg !2824
  %11 = load ptr, ptr %10, align 8, !dbg !2825
  store ptr %11, ptr %6, align 8, !dbg !2823
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2826, metadata !DIExpression()), !dbg !2827
  %12 = load ptr, ptr %5, align 8, !dbg !2828
  %13 = icmp ne ptr %12, null, !dbg !2828
  br i1 %13, label %14, label %16, !dbg !2828

14:                                               ; preds = %2
  %15 = call ptr @json_mkobject(), !dbg !2829
  br label %17, !dbg !2828

16:                                               ; preds = %2
  br label %17, !dbg !2828

17:                                               ; preds = %16, %14
  %18 = phi ptr [ %15, %14 ], [ null, %16 ], !dbg !2828
  store ptr %18, ptr %7, align 8, !dbg !2827
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2830, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2832, metadata !DIExpression()), !dbg !2833
  %19 = load ptr, ptr %6, align 8, !dbg !2834
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !2834
  store ptr %20, ptr %6, align 8, !dbg !2834
  %21 = load i8, ptr %19, align 1, !dbg !2836
  %22 = sext i8 %21 to i32, !dbg !2836
  %23 = icmp ne i32 %22, 123, !dbg !2837
  br i1 %23, label %24, label %25, !dbg !2838

24:                                               ; preds = %17
  br label %97, !dbg !2839

25:                                               ; preds = %17
  call void @skip_space(ptr noundef %6), !dbg !2840
  %26 = load ptr, ptr %6, align 8, !dbg !2841
  %27 = load i8, ptr %26, align 1, !dbg !2843
  %28 = sext i8 %27 to i32, !dbg !2843
  %29 = icmp eq i32 %28, 125, !dbg !2844
  br i1 %29, label %30, label %33, !dbg !2845

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !dbg !2846
  %32 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !2846
  store ptr %32, ptr %6, align 8, !dbg !2846
  br label %82, !dbg !2848

33:                                               ; preds = %25
  br label %34, !dbg !2849

34:                                               ; preds = %81, %33
  %35 = load ptr, ptr %5, align 8, !dbg !2850
  %36 = icmp ne ptr %35, null, !dbg !2850
  br i1 %36, label %37, label %38, !dbg !2850

37:                                               ; preds = %34
  br label %39, !dbg !2850

38:                                               ; preds = %34
  br label %39, !dbg !2850

39:                                               ; preds = %38, %37
  %40 = phi ptr [ %8, %37 ], [ null, %38 ], !dbg !2850
  %41 = call zeroext i1 @parse_string(ptr noundef %6, ptr noundef %40), !dbg !2855
  br i1 %41, label %43, label %42, !dbg !2856

42:                                               ; preds = %39
  br label %97, !dbg !2857

43:                                               ; preds = %39
  call void @skip_space(ptr noundef %6), !dbg !2858
  %44 = load ptr, ptr %6, align 8, !dbg !2859
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !2859
  store ptr %45, ptr %6, align 8, !dbg !2859
  %46 = load i8, ptr %44, align 1, !dbg !2861
  %47 = sext i8 %46 to i32, !dbg !2861
  %48 = icmp ne i32 %47, 58, !dbg !2862
  br i1 %48, label %49, label %50, !dbg !2863

49:                                               ; preds = %43
  br label %91, !dbg !2864

50:                                               ; preds = %43
  call void @skip_space(ptr noundef %6), !dbg !2865
  %51 = load ptr, ptr %5, align 8, !dbg !2866
  %52 = icmp ne ptr %51, null, !dbg !2866
  br i1 %52, label %53, label %54, !dbg !2866

53:                                               ; preds = %50
  br label %55, !dbg !2866

54:                                               ; preds = %50
  br label %55, !dbg !2866

55:                                               ; preds = %54, %53
  %56 = phi ptr [ %9, %53 ], [ null, %54 ], !dbg !2866
  %57 = call zeroext i1 @parse_value(ptr noundef %6, ptr noundef %56), !dbg !2868
  br i1 %57, label %59, label %58, !dbg !2869

58:                                               ; preds = %55
  br label %91, !dbg !2870

59:                                               ; preds = %55
  call void @skip_space(ptr noundef %6), !dbg !2871
  %60 = load ptr, ptr %5, align 8, !dbg !2872
  %61 = icmp ne ptr %60, null, !dbg !2872
  br i1 %61, label %62, label %66, !dbg !2874

62:                                               ; preds = %59
  %63 = load ptr, ptr %7, align 8, !dbg !2875
  %64 = load ptr, ptr %8, align 8, !dbg !2876
  %65 = load ptr, ptr %9, align 8, !dbg !2877
  call void @append_member(ptr noundef %63, ptr noundef %64, ptr noundef %65), !dbg !2878
  br label %66, !dbg !2878

66:                                               ; preds = %62, %59
  %67 = load ptr, ptr %6, align 8, !dbg !2879
  %68 = load i8, ptr %67, align 1, !dbg !2881
  %69 = sext i8 %68 to i32, !dbg !2881
  %70 = icmp eq i32 %69, 125, !dbg !2882
  br i1 %70, label %71, label %74, !dbg !2883

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 8, !dbg !2884
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !2884
  store ptr %73, ptr %6, align 8, !dbg !2884
  br label %82, !dbg !2886

74:                                               ; preds = %66
  %75 = load ptr, ptr %6, align 8, !dbg !2887
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !2887
  store ptr %76, ptr %6, align 8, !dbg !2887
  %77 = load i8, ptr %75, align 1, !dbg !2889
  %78 = sext i8 %77 to i32, !dbg !2889
  %79 = icmp ne i32 %78, 44, !dbg !2890
  br i1 %79, label %80, label %81, !dbg !2891

80:                                               ; preds = %74
  br label %97, !dbg !2892

81:                                               ; preds = %74
  call void @skip_space(ptr noundef %6), !dbg !2893
  br label %34, !dbg !2894, !llvm.loop !2895

82:                                               ; preds = %71, %30
  call void @llvm.dbg.label(metadata !2898), !dbg !2899
  %83 = load ptr, ptr %6, align 8, !dbg !2900
  %84 = load ptr, ptr %4, align 8, !dbg !2901
  store ptr %83, ptr %84, align 8, !dbg !2902
  %85 = load ptr, ptr %5, align 8, !dbg !2903
  %86 = icmp ne ptr %85, null, !dbg !2903
  br i1 %86, label %87, label %90, !dbg !2905

87:                                               ; preds = %82
  %88 = load ptr, ptr %7, align 8, !dbg !2906
  %89 = load ptr, ptr %5, align 8, !dbg !2907
  store ptr %88, ptr %89, align 8, !dbg !2908
  br label %90, !dbg !2909

90:                                               ; preds = %87, %82
  store i1 true, ptr %3, align 1, !dbg !2910
  br label %99, !dbg !2910

91:                                               ; preds = %58, %49
  call void @llvm.dbg.label(metadata !2911), !dbg !2912
  %92 = load ptr, ptr %5, align 8, !dbg !2913
  %93 = icmp ne ptr %92, null, !dbg !2913
  br i1 %93, label %94, label %96, !dbg !2915

94:                                               ; preds = %91
  %95 = load ptr, ptr %8, align 8, !dbg !2916
  call void @free(ptr noundef %95) #13, !dbg !2917
  br label %96, !dbg !2917

96:                                               ; preds = %94, %91
  br label %97, !dbg !2913

97:                                               ; preds = %96, %80, %42, %24
  call void @llvm.dbg.label(metadata !2918), !dbg !2919
  %98 = load ptr, ptr %7, align 8, !dbg !2920
  call void @json_delete(ptr noundef %98), !dbg !2921
  store i1 false, ptr %3, align 1, !dbg !2922
  br label %99, !dbg !2922

99:                                               ; preds = %97, %90
  %100 = load i1, ptr %3, align 1, !dbg !2923
  ret i1 %100, !dbg !2923
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_number(ptr noundef %0, ptr noundef %1) #0 !dbg !2924 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2928, metadata !DIExpression()), !dbg !2929
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2932, metadata !DIExpression()), !dbg !2933
  %7 = load ptr, ptr %4, align 8, !dbg !2934
  %8 = load ptr, ptr %7, align 8, !dbg !2935
  store ptr %8, ptr %6, align 8, !dbg !2933
  %9 = load ptr, ptr %6, align 8, !dbg !2936
  %10 = load i8, ptr %9, align 1, !dbg !2938
  %11 = sext i8 %10 to i32, !dbg !2938
  %12 = icmp eq i32 %11, 45, !dbg !2939
  br i1 %12, label %13, label %16, !dbg !2940

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 8, !dbg !2941
  %15 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !2941
  store ptr %15, ptr %6, align 8, !dbg !2941
  br label %16, !dbg !2942

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr %6, align 8, !dbg !2943
  %18 = load i8, ptr %17, align 1, !dbg !2945
  %19 = sext i8 %18 to i32, !dbg !2945
  %20 = icmp eq i32 %19, 48, !dbg !2946
  br i1 %20, label %21, label %24, !dbg !2947

21:                                               ; preds = %16
  %22 = load ptr, ptr %6, align 8, !dbg !2948
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !2948
  store ptr %23, ptr %6, align 8, !dbg !2948
  br label %52, !dbg !2950

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !dbg !2951
  %26 = load i8, ptr %25, align 1, !dbg !2951
  %27 = sext i8 %26 to i32, !dbg !2951
  %28 = icmp sge i32 %27, 48, !dbg !2951
  br i1 %28, label %29, label %34, !dbg !2951

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !dbg !2951
  %31 = load i8, ptr %30, align 1, !dbg !2951
  %32 = sext i8 %31 to i32, !dbg !2951
  %33 = icmp sle i32 %32, 57, !dbg !2951
  br i1 %33, label %35, label %34, !dbg !2954

34:                                               ; preds = %29, %24
  store i1 false, ptr %3, align 1, !dbg !2955
  br label %151, !dbg !2955

35:                                               ; preds = %29
  br label %36, !dbg !2956

36:                                               ; preds = %49, %35
  %37 = load ptr, ptr %6, align 8, !dbg !2957
  %38 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !2957
  store ptr %38, ptr %6, align 8, !dbg !2957
  br label %39, !dbg !2959

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8, !dbg !2960
  %41 = load i8, ptr %40, align 1, !dbg !2960
  %42 = sext i8 %41 to i32, !dbg !2960
  %43 = icmp sge i32 %42, 48, !dbg !2960
  br i1 %43, label %44, label %49, !dbg !2960

44:                                               ; preds = %39
  %45 = load ptr, ptr %6, align 8, !dbg !2960
  %46 = load i8, ptr %45, align 1, !dbg !2960
  %47 = sext i8 %46 to i32, !dbg !2960
  %48 = icmp sle i32 %47, 57, !dbg !2960
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ], !dbg !2961
  br i1 %50, label %36, label %51, !dbg !2959, !llvm.loop !2962

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %21
  %53 = load ptr, ptr %6, align 8, !dbg !2964
  %54 = load i8, ptr %53, align 1, !dbg !2966
  %55 = sext i8 %54 to i32, !dbg !2966
  %56 = icmp eq i32 %55, 46, !dbg !2967
  br i1 %56, label %57, label %87, !dbg !2968

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 8, !dbg !2969
  %59 = getelementptr inbounds i8, ptr %58, i32 1, !dbg !2969
  store ptr %59, ptr %6, align 8, !dbg !2969
  %60 = load ptr, ptr %6, align 8, !dbg !2971
  %61 = load i8, ptr %60, align 1, !dbg !2971
  %62 = sext i8 %61 to i32, !dbg !2971
  %63 = icmp sge i32 %62, 48, !dbg !2971
  br i1 %63, label %64, label %69, !dbg !2971

64:                                               ; preds = %57
  %65 = load ptr, ptr %6, align 8, !dbg !2971
  %66 = load i8, ptr %65, align 1, !dbg !2971
  %67 = sext i8 %66 to i32, !dbg !2971
  %68 = icmp sle i32 %67, 57, !dbg !2971
  br i1 %68, label %70, label %69, !dbg !2973

69:                                               ; preds = %64, %57
  store i1 false, ptr %3, align 1, !dbg !2974
  br label %151, !dbg !2974

70:                                               ; preds = %64
  br label %71, !dbg !2975

71:                                               ; preds = %84, %70
  %72 = load ptr, ptr %6, align 8, !dbg !2976
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !2976
  store ptr %73, ptr %6, align 8, !dbg !2976
  br label %74, !dbg !2978

74:                                               ; preds = %71
  %75 = load ptr, ptr %6, align 8, !dbg !2979
  %76 = load i8, ptr %75, align 1, !dbg !2979
  %77 = sext i8 %76 to i32, !dbg !2979
  %78 = icmp sge i32 %77, 48, !dbg !2979
  br i1 %78, label %79, label %84, !dbg !2979

79:                                               ; preds = %74
  %80 = load ptr, ptr %6, align 8, !dbg !2979
  %81 = load i8, ptr %80, align 1, !dbg !2979
  %82 = sext i8 %81 to i32, !dbg !2979
  %83 = icmp sle i32 %82, 57, !dbg !2979
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ], !dbg !2980
  br i1 %85, label %71, label %86, !dbg !2978, !llvm.loop !2981

86:                                               ; preds = %84
  br label %87, !dbg !2983

87:                                               ; preds = %86, %52
  %88 = load ptr, ptr %6, align 8, !dbg !2984
  %89 = load i8, ptr %88, align 1, !dbg !2986
  %90 = sext i8 %89 to i32, !dbg !2986
  %91 = icmp eq i32 %90, 69, !dbg !2987
  br i1 %91, label %97, label %92, !dbg !2988

92:                                               ; preds = %87
  %93 = load ptr, ptr %6, align 8, !dbg !2989
  %94 = load i8, ptr %93, align 1, !dbg !2990
  %95 = sext i8 %94 to i32, !dbg !2990
  %96 = icmp eq i32 %95, 101, !dbg !2991
  br i1 %96, label %97, label %140, !dbg !2992

97:                                               ; preds = %92, %87
  %98 = load ptr, ptr %6, align 8, !dbg !2993
  %99 = getelementptr inbounds i8, ptr %98, i32 1, !dbg !2993
  store ptr %99, ptr %6, align 8, !dbg !2993
  %100 = load ptr, ptr %6, align 8, !dbg !2995
  %101 = load i8, ptr %100, align 1, !dbg !2997
  %102 = sext i8 %101 to i32, !dbg !2997
  %103 = icmp eq i32 %102, 43, !dbg !2998
  br i1 %103, label %109, label %104, !dbg !2999

104:                                              ; preds = %97
  %105 = load ptr, ptr %6, align 8, !dbg !3000
  %106 = load i8, ptr %105, align 1, !dbg !3001
  %107 = sext i8 %106 to i32, !dbg !3001
  %108 = icmp eq i32 %107, 45, !dbg !3002
  br i1 %108, label %109, label %112, !dbg !3003

109:                                              ; preds = %104, %97
  %110 = load ptr, ptr %6, align 8, !dbg !3004
  %111 = getelementptr inbounds i8, ptr %110, i32 1, !dbg !3004
  store ptr %111, ptr %6, align 8, !dbg !3004
  br label %112, !dbg !3005

112:                                              ; preds = %109, %104
  %113 = load ptr, ptr %6, align 8, !dbg !3006
  %114 = load i8, ptr %113, align 1, !dbg !3006
  %115 = sext i8 %114 to i32, !dbg !3006
  %116 = icmp sge i32 %115, 48, !dbg !3006
  br i1 %116, label %117, label %122, !dbg !3006

117:                                              ; preds = %112
  %118 = load ptr, ptr %6, align 8, !dbg !3006
  %119 = load i8, ptr %118, align 1, !dbg !3006
  %120 = sext i8 %119 to i32, !dbg !3006
  %121 = icmp sle i32 %120, 57, !dbg !3006
  br i1 %121, label %123, label %122, !dbg !3008

122:                                              ; preds = %117, %112
  store i1 false, ptr %3, align 1, !dbg !3009
  br label %151, !dbg !3009

123:                                              ; preds = %117
  br label %124, !dbg !3010

124:                                              ; preds = %137, %123
  %125 = load ptr, ptr %6, align 8, !dbg !3011
  %126 = getelementptr inbounds i8, ptr %125, i32 1, !dbg !3011
  store ptr %126, ptr %6, align 8, !dbg !3011
  br label %127, !dbg !3013

127:                                              ; preds = %124
  %128 = load ptr, ptr %6, align 8, !dbg !3014
  %129 = load i8, ptr %128, align 1, !dbg !3014
  %130 = sext i8 %129 to i32, !dbg !3014
  %131 = icmp sge i32 %130, 48, !dbg !3014
  br i1 %131, label %132, label %137, !dbg !3014

132:                                              ; preds = %127
  %133 = load ptr, ptr %6, align 8, !dbg !3014
  %134 = load i8, ptr %133, align 1, !dbg !3014
  %135 = sext i8 %134 to i32, !dbg !3014
  %136 = icmp sle i32 %135, 57, !dbg !3014
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i1 [ false, %127 ], [ %136, %132 ], !dbg !3015
  br i1 %138, label %124, label %139, !dbg !3013, !llvm.loop !3016

139:                                              ; preds = %137
  br label %140, !dbg !3018

140:                                              ; preds = %139, %92
  %141 = load ptr, ptr %5, align 8, !dbg !3019
  %142 = icmp ne ptr %141, null, !dbg !3019
  br i1 %142, label %143, label %148, !dbg !3021

143:                                              ; preds = %140
  %144 = load ptr, ptr %4, align 8, !dbg !3022
  %145 = load ptr, ptr %144, align 8, !dbg !3023
  %146 = call double @strtod(ptr noundef %145, ptr noundef null) #13, !dbg !3024
  %147 = load ptr, ptr %5, align 8, !dbg !3025
  store double %146, ptr %147, align 8, !dbg !3026
  br label %148, !dbg !3027

148:                                              ; preds = %143, %140
  %149 = load ptr, ptr %6, align 8, !dbg !3028
  %150 = load ptr, ptr %4, align 8, !dbg !3029
  store ptr %149, ptr %150, align 8, !dbg !3030
  store i1 true, ptr %3, align 1, !dbg !3031
  br label %151, !dbg !3031

151:                                              ; preds = %148, %122, %69, %34
  %152 = load i1, ptr %3, align 1, !dbg !3032
  ret i1 %152, !dbg !3032
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mknumber(double noundef %0) #0 !dbg !3033 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3036, metadata !DIExpression()), !dbg !3037
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3038, metadata !DIExpression()), !dbg !3039
  %4 = call ptr @mknode(i32 noundef 3), !dbg !3040
  store ptr %4, ptr %3, align 8, !dbg !3039
  %5 = load double, ptr %2, align 8, !dbg !3041
  %6 = load ptr, ptr %3, align 8, !dbg !3042
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 5, !dbg !3043
  store double %5, ptr %7, align 8, !dbg !3044
  %8 = load ptr, ptr %3, align 8, !dbg !3045
  ret ptr %8, !dbg !3046
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mknode(i32 noundef %0) #0 !dbg !3047 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3050, metadata !DIExpression()), !dbg !3051
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3052, metadata !DIExpression()), !dbg !3053
  %4 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #15, !dbg !3054
  store ptr %4, ptr %3, align 8, !dbg !3053
  %5 = load ptr, ptr %3, align 8, !dbg !3055
  %6 = icmp eq ptr %5, null, !dbg !3057
  br i1 %6, label %7, label %12, !dbg !3058

7:                                                ; preds = %1
  br label %8, !dbg !3059

8:                                                ; preds = %7
  %9 = load ptr, ptr @stderr, align 8, !dbg !3060
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.21), !dbg !3060
  call void @exit(i32 noundef 1) #12, !dbg !3060
  unreachable, !dbg !3060

11:                                               ; No predecessors!
  br label %12, !dbg !3060

12:                                               ; preds = %11, %1
  %13 = load i32, ptr %2, align 4, !dbg !3062
  %14 = load ptr, ptr %3, align 8, !dbg !3063
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 4, !dbg !3064
  store i32 %13, ptr %15, align 8, !dbg !3065
  %16 = load ptr, ptr %3, align 8, !dbg !3066
  ret ptr %16, !dbg !3067
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkobject() #0 !dbg !3068 {
  %1 = call ptr @mknode(i32 noundef 5), !dbg !3069
  ret ptr %1, !dbg !3070
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3071 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3074, metadata !DIExpression()), !dbg !3075
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3076, metadata !DIExpression()), !dbg !3077
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3078, metadata !DIExpression()), !dbg !3079
  %7 = load ptr, ptr %5, align 8, !dbg !3080
  %8 = load ptr, ptr %6, align 8, !dbg !3081
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 3, !dbg !3082
  store ptr %7, ptr %9, align 8, !dbg !3083
  %10 = load ptr, ptr %4, align 8, !dbg !3084
  %11 = load ptr, ptr %6, align 8, !dbg !3085
  call void @append_node(ptr noundef %10, ptr noundef %11), !dbg !3086
  ret void, !dbg !3087
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_node(ptr noundef %0, ptr noundef %1) #0 !dbg !3088 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3091, metadata !DIExpression()), !dbg !3092
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3093, metadata !DIExpression()), !dbg !3094
  %5 = load ptr, ptr %3, align 8, !dbg !3095
  %6 = load ptr, ptr %4, align 8, !dbg !3096
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 0, !dbg !3097
  store ptr %5, ptr %7, align 8, !dbg !3098
  %8 = load ptr, ptr %3, align 8, !dbg !3099
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 5, !dbg !3100
  %10 = getelementptr inbounds %struct.db, ptr %9, i32 0, i32 1, !dbg !3101
  %11 = load ptr, ptr %10, align 8, !dbg !3101
  %12 = load ptr, ptr %4, align 8, !dbg !3102
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 1, !dbg !3103
  store ptr %11, ptr %13, align 8, !dbg !3104
  %14 = load ptr, ptr %4, align 8, !dbg !3105
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 2, !dbg !3106
  store ptr null, ptr %15, align 8, !dbg !3107
  %16 = load ptr, ptr %3, align 8, !dbg !3108
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 5, !dbg !3110
  %18 = getelementptr inbounds %struct.db, ptr %17, i32 0, i32 1, !dbg !3111
  %19 = load ptr, ptr %18, align 8, !dbg !3111
  %20 = icmp ne ptr %19, null, !dbg !3112
  br i1 %20, label %21, label %28, !dbg !3113

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !3114
  %23 = load ptr, ptr %3, align 8, !dbg !3115
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !3116
  %25 = getelementptr inbounds %struct.db, ptr %24, i32 0, i32 1, !dbg !3117
  %26 = load ptr, ptr %25, align 8, !dbg !3117
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 2, !dbg !3118
  store ptr %22, ptr %27, align 8, !dbg !3119
  br label %33, !dbg !3115

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8, !dbg !3120
  %30 = load ptr, ptr %3, align 8, !dbg !3121
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 5, !dbg !3122
  %32 = getelementptr inbounds %struct.db, ptr %31, i32 0, i32 0, !dbg !3123
  store ptr %29, ptr %32, align 8, !dbg !3124
  br label %33

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %4, align 8, !dbg !3125
  %35 = load ptr, ptr %3, align 8, !dbg !3126
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 5, !dbg !3127
  %37 = getelementptr inbounds %struct.db, ptr %36, i32 0, i32 1, !dbg !3128
  store ptr %34, ptr %37, align 8, !dbg !3129
  ret void, !dbg !3130
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkarray() #0 !dbg !3131 {
  %1 = call ptr @mknode(i32 noundef 4), !dbg !3132
  ret ptr %1, !dbg !3133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_append_element(ptr noundef %0, ptr noundef %1) #0 !dbg !3134 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3135, metadata !DIExpression()), !dbg !3136
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3137, metadata !DIExpression()), !dbg !3138
  %5 = load ptr, ptr %3, align 8, !dbg !3139
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !3139
  %7 = load i32, ptr %6, align 8, !dbg !3139
  %8 = icmp eq i32 %7, 4, !dbg !3139
  br i1 %8, label %9, label %10, !dbg !3142

9:                                                ; preds = %2
  br label %11, !dbg !3142

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1.4, i32 noundef 581, ptr noundef @__PRETTY_FUNCTION__.json_append_element) #12, !dbg !3139
  unreachable, !dbg !3139

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !3143
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 0, !dbg !3143
  %14 = load ptr, ptr %13, align 8, !dbg !3143
  %15 = icmp eq ptr %14, null, !dbg !3143
  br i1 %15, label %16, label %17, !dbg !3146

16:                                               ; preds = %11
  br label %18, !dbg !3146

17:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.2.5, ptr noundef @.str.1.4, i32 noundef 582, ptr noundef @__PRETTY_FUNCTION__.json_append_element) #12, !dbg !3143
  unreachable, !dbg !3143

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8, !dbg !3147
  %20 = load ptr, ptr %4, align 8, !dbg !3148
  call void @append_node(ptr noundef %19, ptr noundef %20), !dbg !3149
  ret void, !dbg !3150
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_init(ptr noundef %0) #0 !dbg !3151 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3155, metadata !DIExpression()), !dbg !3156
  %3 = call noalias ptr @malloc(i64 noundef 17) #14, !dbg !3157
  %4 = load ptr, ptr %2, align 8, !dbg !3158
  %5 = getelementptr inbounds %struct.db_stmt, ptr %4, i32 0, i32 2, !dbg !3159
  store ptr %3, ptr %5, align 8, !dbg !3160
  %6 = load ptr, ptr %2, align 8, !dbg !3161
  %7 = getelementptr inbounds %struct.db_stmt, ptr %6, i32 0, i32 2, !dbg !3163
  %8 = load ptr, ptr %7, align 8, !dbg !3163
  %9 = icmp eq ptr %8, null, !dbg !3164
  br i1 %9, label %10, label %15, !dbg !3165

10:                                               ; preds = %1
  br label %11, !dbg !3166

11:                                               ; preds = %10
  %12 = load ptr, ptr @stderr, align 8, !dbg !3167
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.21), !dbg !3167
  call void @exit(i32 noundef 1) #12, !dbg !3167
  unreachable, !dbg !3167

14:                                               ; No predecessors!
  br label %15, !dbg !3167

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr %2, align 8, !dbg !3169
  %17 = getelementptr inbounds %struct.db_stmt, ptr %16, i32 0, i32 2, !dbg !3170
  %18 = load ptr, ptr %17, align 8, !dbg !3170
  %19 = load ptr, ptr %2, align 8, !dbg !3171
  %20 = getelementptr inbounds %struct.db_stmt, ptr %19, i32 0, i32 0, !dbg !3172
  store ptr %18, ptr %20, align 8, !dbg !3173
  %21 = load ptr, ptr %2, align 8, !dbg !3174
  %22 = getelementptr inbounds %struct.db_stmt, ptr %21, i32 0, i32 2, !dbg !3175
  %23 = load ptr, ptr %22, align 8, !dbg !3175
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !3176
  %25 = load ptr, ptr %2, align 8, !dbg !3177
  %26 = getelementptr inbounds %struct.db_stmt, ptr %25, i32 0, i32 1, !dbg !3178
  store ptr %24, ptr %26, align 8, !dbg !3179
  ret void, !dbg !3180
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_grow(ptr noundef %0, i64 noundef %1) #0 !dbg !3181 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3184, metadata !DIExpression()), !dbg !3185
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3186, metadata !DIExpression()), !dbg !3187
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3188, metadata !DIExpression()), !dbg !3189
  %7 = load ptr, ptr %3, align 8, !dbg !3190
  %8 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !3191
  %9 = load ptr, ptr %8, align 8, !dbg !3191
  %10 = load ptr, ptr %3, align 8, !dbg !3192
  %11 = getelementptr inbounds %struct.db_stmt, ptr %10, i32 0, i32 2, !dbg !3193
  %12 = load ptr, ptr %11, align 8, !dbg !3193
  %13 = ptrtoint ptr %9 to i64, !dbg !3194
  %14 = ptrtoint ptr %12 to i64, !dbg !3194
  %15 = sub i64 %13, %14, !dbg !3194
  store i64 %15, ptr %5, align 8, !dbg !3189
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3195, metadata !DIExpression()), !dbg !3196
  %16 = load ptr, ptr %3, align 8, !dbg !3197
  %17 = getelementptr inbounds %struct.db_stmt, ptr %16, i32 0, i32 1, !dbg !3198
  %18 = load ptr, ptr %17, align 8, !dbg !3198
  %19 = load ptr, ptr %3, align 8, !dbg !3199
  %20 = getelementptr inbounds %struct.db_stmt, ptr %19, i32 0, i32 2, !dbg !3200
  %21 = load ptr, ptr %20, align 8, !dbg !3200
  %22 = ptrtoint ptr %18 to i64, !dbg !3201
  %23 = ptrtoint ptr %21 to i64, !dbg !3201
  %24 = sub i64 %22, %23, !dbg !3201
  store i64 %24, ptr %6, align 8, !dbg !3196
  br label %25, !dbg !3202

25:                                               ; preds = %28, %2
  %26 = load i64, ptr %6, align 8, !dbg !3203
  %27 = mul i64 %26, 2, !dbg !3203
  store i64 %27, ptr %6, align 8, !dbg !3203
  br label %28, !dbg !3205

28:                                               ; preds = %25
  %29 = load i64, ptr %6, align 8, !dbg !3206
  %30 = load i64, ptr %5, align 8, !dbg !3207
  %31 = load i64, ptr %4, align 8, !dbg !3208
  %32 = add i64 %30, %31, !dbg !3209
  %33 = icmp ult i64 %29, %32, !dbg !3210
  br i1 %33, label %25, label %34, !dbg !3205, !llvm.loop !3211

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8, !dbg !3213
  %36 = getelementptr inbounds %struct.db_stmt, ptr %35, i32 0, i32 2, !dbg !3214
  %37 = load ptr, ptr %36, align 8, !dbg !3214
  %38 = load i64, ptr %6, align 8, !dbg !3215
  %39 = add i64 %38, 1, !dbg !3216
  %40 = call ptr @realloc(ptr noundef %37, i64 noundef %39) #16, !dbg !3217
  %41 = load ptr, ptr %3, align 8, !dbg !3218
  %42 = getelementptr inbounds %struct.db_stmt, ptr %41, i32 0, i32 2, !dbg !3219
  store ptr %40, ptr %42, align 8, !dbg !3220
  %43 = load ptr, ptr %3, align 8, !dbg !3221
  %44 = getelementptr inbounds %struct.db_stmt, ptr %43, i32 0, i32 2, !dbg !3223
  %45 = load ptr, ptr %44, align 8, !dbg !3223
  %46 = icmp eq ptr %45, null, !dbg !3224
  br i1 %46, label %47, label %52, !dbg !3225

47:                                               ; preds = %34
  br label %48, !dbg !3226

48:                                               ; preds = %47
  %49 = load ptr, ptr @stderr, align 8, !dbg !3227
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.21), !dbg !3227
  call void @exit(i32 noundef 1) #12, !dbg !3227
  unreachable, !dbg !3227

51:                                               ; No predecessors!
  br label %52, !dbg !3227

52:                                               ; preds = %51, %34
  %53 = load ptr, ptr %3, align 8, !dbg !3229
  %54 = getelementptr inbounds %struct.db_stmt, ptr %53, i32 0, i32 2, !dbg !3230
  %55 = load ptr, ptr %54, align 8, !dbg !3230
  %56 = load i64, ptr %5, align 8, !dbg !3231
  %57 = getelementptr inbounds i8, ptr %55, i64 %56, !dbg !3232
  %58 = load ptr, ptr %3, align 8, !dbg !3233
  %59 = getelementptr inbounds %struct.db_stmt, ptr %58, i32 0, i32 0, !dbg !3234
  store ptr %57, ptr %59, align 8, !dbg !3235
  %60 = load ptr, ptr %3, align 8, !dbg !3236
  %61 = getelementptr inbounds %struct.db_stmt, ptr %60, i32 0, i32 2, !dbg !3237
  %62 = load ptr, ptr %61, align 8, !dbg !3237
  %63 = load i64, ptr %6, align 8, !dbg !3238
  %64 = getelementptr inbounds i8, ptr %62, i64 %63, !dbg !3239
  %65 = load ptr, ptr %3, align 8, !dbg !3240
  %66 = getelementptr inbounds %struct.db_stmt, ptr %65, i32 0, i32 1, !dbg !3241
  store ptr %64, ptr %66, align 8, !dbg !3242
  ret void, !dbg !3243
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_hex16(ptr noundef %0, ptr noundef %1) #0 !dbg !3244 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3248, metadata !DIExpression()), !dbg !3249
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3250, metadata !DIExpression()), !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3252, metadata !DIExpression()), !dbg !3253
  %11 = load ptr, ptr %4, align 8, !dbg !3254
  %12 = load ptr, ptr %11, align 8, !dbg !3255
  store ptr %12, ptr %6, align 8, !dbg !3253
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3256, metadata !DIExpression()), !dbg !3257
  store i16 0, ptr %7, align 2, !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3258, metadata !DIExpression()), !dbg !3259
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3260, metadata !DIExpression()), !dbg !3261
  store i16 0, ptr %8, align 2, !dbg !3262
  br label %13, !dbg !3264

13:                                               ; preds = %72, %2
  %14 = load i16, ptr %8, align 2, !dbg !3265
  %15 = zext i16 %14 to i32, !dbg !3265
  %16 = icmp slt i32 %15, 4, !dbg !3267
  br i1 %16, label %17, label %75, !dbg !3268

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3269, metadata !DIExpression()), !dbg !3271
  %18 = load ptr, ptr %6, align 8, !dbg !3272
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !3272
  store ptr %19, ptr %6, align 8, !dbg !3272
  %20 = load i8, ptr %18, align 1, !dbg !3273
  store i8 %20, ptr %10, align 1, !dbg !3271
  %21 = load i8, ptr %10, align 1, !dbg !3274
  %22 = sext i8 %21 to i32, !dbg !3274
  %23 = icmp sge i32 %22, 48, !dbg !3276
  br i1 %23, label %24, label %33, !dbg !3277

24:                                               ; preds = %17
  %25 = load i8, ptr %10, align 1, !dbg !3278
  %26 = sext i8 %25 to i32, !dbg !3278
  %27 = icmp sle i32 %26, 57, !dbg !3279
  br i1 %27, label %28, label %33, !dbg !3280

28:                                               ; preds = %24
  %29 = load i8, ptr %10, align 1, !dbg !3281
  %30 = sext i8 %29 to i32, !dbg !3281
  %31 = sub nsw i32 %30, 48, !dbg !3282
  %32 = trunc i32 %31 to i16, !dbg !3283
  store i16 %32, ptr %9, align 2, !dbg !3284
  br label %64, !dbg !3285

33:                                               ; preds = %24, %17
  %34 = load i8, ptr %10, align 1, !dbg !3286
  %35 = sext i8 %34 to i32, !dbg !3286
  %36 = icmp sge i32 %35, 65, !dbg !3288
  br i1 %36, label %37, label %47, !dbg !3289

37:                                               ; preds = %33
  %38 = load i8, ptr %10, align 1, !dbg !3290
  %39 = sext i8 %38 to i32, !dbg !3290
  %40 = icmp sle i32 %39, 70, !dbg !3291
  br i1 %40, label %41, label %47, !dbg !3292

41:                                               ; preds = %37
  %42 = load i8, ptr %10, align 1, !dbg !3293
  %43 = sext i8 %42 to i32, !dbg !3293
  %44 = sub nsw i32 %43, 65, !dbg !3294
  %45 = add nsw i32 %44, 10, !dbg !3295
  %46 = trunc i32 %45 to i16, !dbg !3296
  store i16 %46, ptr %9, align 2, !dbg !3297
  br label %63, !dbg !3298

47:                                               ; preds = %37, %33
  %48 = load i8, ptr %10, align 1, !dbg !3299
  %49 = sext i8 %48 to i32, !dbg !3299
  %50 = icmp sge i32 %49, 97, !dbg !3301
  br i1 %50, label %51, label %61, !dbg !3302

51:                                               ; preds = %47
  %52 = load i8, ptr %10, align 1, !dbg !3303
  %53 = sext i8 %52 to i32, !dbg !3303
  %54 = icmp sle i32 %53, 102, !dbg !3304
  br i1 %54, label %55, label %61, !dbg !3305

55:                                               ; preds = %51
  %56 = load i8, ptr %10, align 1, !dbg !3306
  %57 = sext i8 %56 to i32, !dbg !3306
  %58 = sub nsw i32 %57, 97, !dbg !3307
  %59 = add nsw i32 %58, 10, !dbg !3308
  %60 = trunc i32 %59 to i16, !dbg !3309
  store i16 %60, ptr %9, align 2, !dbg !3310
  br label %62, !dbg !3311

61:                                               ; preds = %51, %47
  store i1 false, ptr %3, align 1, !dbg !3312
  br label %84, !dbg !3312

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i16, ptr %7, align 2, !dbg !3313
  %66 = zext i16 %65 to i32, !dbg !3313
  %67 = shl i32 %66, 4, !dbg !3314
  %68 = load i16, ptr %9, align 2, !dbg !3315
  %69 = zext i16 %68 to i32, !dbg !3315
  %70 = add nsw i32 %67, %69, !dbg !3316
  %71 = trunc i32 %70 to i16, !dbg !3317
  store i16 %71, ptr %7, align 2, !dbg !3318
  br label %72, !dbg !3319

72:                                               ; preds = %64
  %73 = load i16, ptr %8, align 2, !dbg !3320
  %74 = add i16 %73, 1, !dbg !3320
  store i16 %74, ptr %8, align 2, !dbg !3320
  br label %13, !dbg !3321, !llvm.loop !3322

75:                                               ; preds = %13
  %76 = load ptr, ptr %5, align 8, !dbg !3324
  %77 = icmp ne ptr %76, null, !dbg !3324
  br i1 %77, label %78, label %81, !dbg !3326

78:                                               ; preds = %75
  %79 = load i16, ptr %7, align 2, !dbg !3327
  %80 = load ptr, ptr %5, align 8, !dbg !3328
  store i16 %79, ptr %80, align 2, !dbg !3329
  br label %81, !dbg !3330

81:                                               ; preds = %78, %75
  %82 = load ptr, ptr %6, align 8, !dbg !3331
  %83 = load ptr, ptr %4, align 8, !dbg !3332
  store ptr %82, ptr %83, align 8, !dbg !3333
  store i1 true, ptr %3, align 1, !dbg !3334
  br label %84, !dbg !3334

84:                                               ; preds = %81, %61
  %85 = load i1, ptr %3, align 1, !dbg !3335
  ret i1 %85, !dbg !3335
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @from_surrogate_pair(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %2) #0 !dbg !3336 {
  %4 = alloca i1, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  store i16 %0, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3340, metadata !DIExpression()), !dbg !3341
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3342, metadata !DIExpression()), !dbg !3343
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3344, metadata !DIExpression()), !dbg !3345
  %8 = load i16, ptr %5, align 2, !dbg !3346
  %9 = zext i16 %8 to i32, !dbg !3346
  %10 = icmp sge i32 %9, 55296, !dbg !3348
  br i1 %10, label %11, label %34, !dbg !3349

11:                                               ; preds = %3
  %12 = load i16, ptr %5, align 2, !dbg !3350
  %13 = zext i16 %12 to i32, !dbg !3350
  %14 = icmp sle i32 %13, 56319, !dbg !3351
  br i1 %14, label %15, label %34, !dbg !3352

15:                                               ; preds = %11
  %16 = load i16, ptr %6, align 2, !dbg !3353
  %17 = zext i16 %16 to i32, !dbg !3353
  %18 = icmp sge i32 %17, 56320, !dbg !3354
  br i1 %18, label %19, label %34, !dbg !3355

19:                                               ; preds = %15
  %20 = load i16, ptr %6, align 2, !dbg !3356
  %21 = zext i16 %20 to i32, !dbg !3356
  %22 = icmp sle i32 %21, 57343, !dbg !3357
  br i1 %22, label %23, label %34, !dbg !3358

23:                                               ; preds = %19
  %24 = load i16, ptr %5, align 2, !dbg !3359
  %25 = zext i16 %24 to i32, !dbg !3361
  %26 = and i32 %25, 1023, !dbg !3362
  %27 = shl i32 %26, 10, !dbg !3363
  %28 = load i16, ptr %6, align 2, !dbg !3364
  %29 = zext i16 %28 to i32, !dbg !3364
  %30 = and i32 %29, 1023, !dbg !3365
  %31 = or i32 %27, %30, !dbg !3366
  %32 = add i32 65536, %31, !dbg !3367
  %33 = load ptr, ptr %7, align 8, !dbg !3368
  store i32 %32, ptr %33, align 4, !dbg !3369
  store i1 true, ptr %4, align 1, !dbg !3370
  br label %35, !dbg !3370

34:                                               ; preds = %19, %15, %11, %3
  store i1 false, ptr %4, align 1, !dbg !3371
  br label %35, !dbg !3371

35:                                               ; preds = %34, %23
  %36 = load i1, ptr %4, align 1, !dbg !3373
  ret i1 %36, !dbg !3373
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_write_char(i32 noundef %0, ptr noundef %1) #0 !dbg !3374 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3377, metadata !DIExpression()), !dbg !3378
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3379, metadata !DIExpression()), !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3381, metadata !DIExpression()), !dbg !3382
  %7 = load ptr, ptr %5, align 8, !dbg !3383
  store ptr %7, ptr %6, align 8, !dbg !3382
  %8 = load i32, ptr %4, align 4, !dbg !3384
  %9 = icmp ule i32 %8, 1114111, !dbg !3384
  br i1 %9, label %10, label %17, !dbg !3384

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !dbg !3384
  %12 = icmp uge i32 %11, 55296, !dbg !3384
  br i1 %12, label %13, label %16, !dbg !3384

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4, !dbg !3384
  %15 = icmp ule i32 %14, 57343, !dbg !3384
  br i1 %15, label %17, label %16, !dbg !3387

16:                                               ; preds = %13, %10
  br label %18, !dbg !3387

17:                                               ; preds = %13, %2
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.1.4, i32 noundef 267, ptr noundef @__PRETTY_FUNCTION__.utf8_write_char) #12, !dbg !3384
  unreachable, !dbg !3384

18:                                               ; preds = %16
  %19 = load i32, ptr %4, align 4, !dbg !3388
  %20 = icmp ule i32 %19, 127, !dbg !3390
  br i1 %20, label %21, label %26, !dbg !3391

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4, !dbg !3392
  %23 = trunc i32 %22 to i8, !dbg !3394
  %24 = load ptr, ptr %6, align 8, !dbg !3395
  %25 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !3395
  store ptr %25, ptr %6, align 8, !dbg !3395
  store i8 %23, ptr %24, align 1, !dbg !3396
  store i32 1, ptr %3, align 4, !dbg !3397
  br label %92, !dbg !3397

26:                                               ; preds = %18
  %27 = load i32, ptr %4, align 4, !dbg !3398
  %28 = icmp ule i32 %27, 2047, !dbg !3400
  br i1 %28, label %29, label %42, !dbg !3401

29:                                               ; preds = %26
  %30 = load i32, ptr %4, align 4, !dbg !3402
  %31 = lshr i32 %30, 6, !dbg !3404
  %32 = or i32 192, %31, !dbg !3405
  %33 = trunc i32 %32 to i8, !dbg !3406
  %34 = load ptr, ptr %6, align 8, !dbg !3407
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !3407
  store ptr %35, ptr %6, align 8, !dbg !3407
  store i8 %33, ptr %34, align 1, !dbg !3408
  %36 = load i32, ptr %4, align 4, !dbg !3409
  %37 = and i32 %36, 63, !dbg !3410
  %38 = or i32 128, %37, !dbg !3411
  %39 = trunc i32 %38 to i8, !dbg !3412
  %40 = load ptr, ptr %6, align 8, !dbg !3413
  %41 = getelementptr inbounds i8, ptr %40, i32 1, !dbg !3413
  store ptr %41, ptr %6, align 8, !dbg !3413
  store i8 %39, ptr %40, align 1, !dbg !3414
  store i32 2, ptr %3, align 4, !dbg !3415
  br label %92, !dbg !3415

42:                                               ; preds = %26
  %43 = load i32, ptr %4, align 4, !dbg !3416
  %44 = icmp ule i32 %43, 65535, !dbg !3418
  br i1 %44, label %45, label %65, !dbg !3419

45:                                               ; preds = %42
  %46 = load i32, ptr %4, align 4, !dbg !3420
  %47 = lshr i32 %46, 12, !dbg !3422
  %48 = or i32 224, %47, !dbg !3423
  %49 = trunc i32 %48 to i8, !dbg !3424
  %50 = load ptr, ptr %6, align 8, !dbg !3425
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !3425
  store ptr %51, ptr %6, align 8, !dbg !3425
  store i8 %49, ptr %50, align 1, !dbg !3426
  %52 = load i32, ptr %4, align 4, !dbg !3427
  %53 = lshr i32 %52, 6, !dbg !3428
  %54 = and i32 %53, 63, !dbg !3429
  %55 = or i32 128, %54, !dbg !3430
  %56 = trunc i32 %55 to i8, !dbg !3431
  %57 = load ptr, ptr %6, align 8, !dbg !3432
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !3432
  store ptr %58, ptr %6, align 8, !dbg !3432
  store i8 %56, ptr %57, align 1, !dbg !3433
  %59 = load i32, ptr %4, align 4, !dbg !3434
  %60 = and i32 %59, 63, !dbg !3435
  %61 = or i32 128, %60, !dbg !3436
  %62 = trunc i32 %61 to i8, !dbg !3437
  %63 = load ptr, ptr %6, align 8, !dbg !3438
  %64 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !3438
  store ptr %64, ptr %6, align 8, !dbg !3438
  store i8 %62, ptr %63, align 1, !dbg !3439
  store i32 3, ptr %3, align 4, !dbg !3440
  br label %92, !dbg !3440

65:                                               ; preds = %42
  %66 = load i32, ptr %4, align 4, !dbg !3441
  %67 = lshr i32 %66, 18, !dbg !3443
  %68 = or i32 240, %67, !dbg !3444
  %69 = trunc i32 %68 to i8, !dbg !3445
  %70 = load ptr, ptr %6, align 8, !dbg !3446
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !3446
  store ptr %71, ptr %6, align 8, !dbg !3446
  store i8 %69, ptr %70, align 1, !dbg !3447
  %72 = load i32, ptr %4, align 4, !dbg !3448
  %73 = lshr i32 %72, 12, !dbg !3449
  %74 = and i32 %73, 63, !dbg !3450
  %75 = or i32 128, %74, !dbg !3451
  %76 = trunc i32 %75 to i8, !dbg !3452
  %77 = load ptr, ptr %6, align 8, !dbg !3453
  %78 = getelementptr inbounds i8, ptr %77, i32 1, !dbg !3453
  store ptr %78, ptr %6, align 8, !dbg !3453
  store i8 %76, ptr %77, align 1, !dbg !3454
  %79 = load i32, ptr %4, align 4, !dbg !3455
  %80 = lshr i32 %79, 6, !dbg !3456
  %81 = and i32 %80, 63, !dbg !3457
  %82 = or i32 128, %81, !dbg !3458
  %83 = trunc i32 %82 to i8, !dbg !3459
  %84 = load ptr, ptr %6, align 8, !dbg !3460
  %85 = getelementptr inbounds i8, ptr %84, i32 1, !dbg !3460
  store ptr %85, ptr %6, align 8, !dbg !3460
  store i8 %83, ptr %84, align 1, !dbg !3461
  %86 = load i32, ptr %4, align 4, !dbg !3462
  %87 = and i32 %86, 63, !dbg !3463
  %88 = or i32 128, %87, !dbg !3464
  %89 = trunc i32 %88 to i8, !dbg !3465
  %90 = load ptr, ptr %6, align 8, !dbg !3466
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !3466
  store ptr %91, ptr %6, align 8, !dbg !3466
  store i8 %89, ptr %90, align 1, !dbg !3467
  store i32 4, ptr %3, align 4, !dbg !3468
  br label %92, !dbg !3468

92:                                               ; preds = %65, %45, %29, %21
  %93 = load i32, ptr %3, align 4, !dbg !3469
  ret i32 %93, !dbg !3469
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utf8_validate_cz(ptr noundef %0) #0 !dbg !3470 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3473, metadata !DIExpression()), !dbg !3474
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3475, metadata !DIExpression()), !dbg !3476
  %5 = load ptr, ptr %3, align 8, !dbg !3477
  %6 = getelementptr inbounds i8, ptr %5, i32 1, !dbg !3477
  store ptr %6, ptr %3, align 8, !dbg !3477
  %7 = load i8, ptr %5, align 1, !dbg !3478
  store i8 %7, ptr %4, align 1, !dbg !3476
  %8 = load i8, ptr %4, align 1, !dbg !3479
  %9 = zext i8 %8 to i32, !dbg !3479
  %10 = icmp sle i32 %9, 127, !dbg !3481
  br i1 %10, label %11, label %12, !dbg !3482

11:                                               ; preds = %1
  store i64 1, ptr %2, align 8, !dbg !3483
  br label %121, !dbg !3483

12:                                               ; preds = %1
  %13 = load i8, ptr %4, align 1, !dbg !3485
  %14 = zext i8 %13 to i32, !dbg !3485
  %15 = icmp sle i32 %14, 193, !dbg !3487
  br i1 %15, label %16, label %17, !dbg !3488

16:                                               ; preds = %12
  store i64 0, ptr %2, align 8, !dbg !3489
  br label %121, !dbg !3489

17:                                               ; preds = %12
  %18 = load i8, ptr %4, align 1, !dbg !3491
  %19 = zext i8 %18 to i32, !dbg !3491
  %20 = icmp sle i32 %19, 223, !dbg !3493
  br i1 %20, label %21, label %30, !dbg !3494

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8, !dbg !3495
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !3495
  store ptr %23, ptr %3, align 8, !dbg !3495
  %24 = load i8, ptr %22, align 1, !dbg !3498
  %25 = zext i8 %24 to i32, !dbg !3499
  %26 = and i32 %25, 192, !dbg !3500
  %27 = icmp ne i32 %26, 128, !dbg !3501
  br i1 %27, label %28, label %29, !dbg !3502

28:                                               ; preds = %21
  store i64 0, ptr %2, align 8, !dbg !3503
  br label %121, !dbg !3503

29:                                               ; preds = %21
  store i64 2, ptr %2, align 8, !dbg !3504
  br label %121, !dbg !3504

30:                                               ; preds = %17
  %31 = load i8, ptr %4, align 1, !dbg !3505
  %32 = zext i8 %31 to i32, !dbg !3505
  %33 = icmp sle i32 %32, 239, !dbg !3507
  br i1 %33, label %34, label %71, !dbg !3508

34:                                               ; preds = %30
  %35 = load i8, ptr %4, align 1, !dbg !3509
  %36 = zext i8 %35 to i32, !dbg !3509
  %37 = icmp eq i32 %36, 224, !dbg !3512
  br i1 %37, label %38, label %44, !dbg !3513

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 8, !dbg !3514
  %40 = load i8, ptr %39, align 1, !dbg !3515
  %41 = zext i8 %40 to i32, !dbg !3516
  %42 = icmp slt i32 %41, 160, !dbg !3517
  br i1 %42, label %43, label %44, !dbg !3518

43:                                               ; preds = %38
  store i64 0, ptr %2, align 8, !dbg !3519
  br label %121, !dbg !3519

44:                                               ; preds = %38, %34
  %45 = load i8, ptr %4, align 1, !dbg !3520
  %46 = zext i8 %45 to i32, !dbg !3520
  %47 = icmp eq i32 %46, 237, !dbg !3522
  br i1 %47, label %48, label %54, !dbg !3523

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8, !dbg !3524
  %50 = load i8, ptr %49, align 1, !dbg !3525
  %51 = zext i8 %50 to i32, !dbg !3526
  %52 = icmp sgt i32 %51, 159, !dbg !3527
  br i1 %52, label %53, label %54, !dbg !3528

53:                                               ; preds = %48
  store i64 0, ptr %2, align 8, !dbg !3529
  br label %121, !dbg !3529

54:                                               ; preds = %48, %44
  %55 = load ptr, ptr %3, align 8, !dbg !3530
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !3530
  store ptr %56, ptr %3, align 8, !dbg !3530
  %57 = load i8, ptr %55, align 1, !dbg !3532
  %58 = zext i8 %57 to i32, !dbg !3533
  %59 = and i32 %58, 192, !dbg !3534
  %60 = icmp ne i32 %59, 128, !dbg !3535
  br i1 %60, label %61, label %62, !dbg !3536

61:                                               ; preds = %54
  store i64 0, ptr %2, align 8, !dbg !3537
  br label %121, !dbg !3537

62:                                               ; preds = %54
  %63 = load ptr, ptr %3, align 8, !dbg !3538
  %64 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !3538
  store ptr %64, ptr %3, align 8, !dbg !3538
  %65 = load i8, ptr %63, align 1, !dbg !3540
  %66 = zext i8 %65 to i32, !dbg !3541
  %67 = and i32 %66, 192, !dbg !3542
  %68 = icmp ne i32 %67, 128, !dbg !3543
  br i1 %68, label %69, label %70, !dbg !3544

69:                                               ; preds = %62
  store i64 0, ptr %2, align 8, !dbg !3545
  br label %121, !dbg !3545

70:                                               ; preds = %62
  store i64 3, ptr %2, align 8, !dbg !3546
  br label %121, !dbg !3546

71:                                               ; preds = %30
  %72 = load i8, ptr %4, align 1, !dbg !3547
  %73 = zext i8 %72 to i32, !dbg !3547
  %74 = icmp sle i32 %73, 244, !dbg !3549
  br i1 %74, label %75, label %120, !dbg !3550

75:                                               ; preds = %71
  %76 = load i8, ptr %4, align 1, !dbg !3551
  %77 = zext i8 %76 to i32, !dbg !3551
  %78 = icmp eq i32 %77, 240, !dbg !3554
  br i1 %78, label %79, label %85, !dbg !3555

79:                                               ; preds = %75
  %80 = load ptr, ptr %3, align 8, !dbg !3556
  %81 = load i8, ptr %80, align 1, !dbg !3557
  %82 = zext i8 %81 to i32, !dbg !3558
  %83 = icmp slt i32 %82, 144, !dbg !3559
  br i1 %83, label %84, label %85, !dbg !3560

84:                                               ; preds = %79
  store i64 0, ptr %2, align 8, !dbg !3561
  br label %121, !dbg !3561

85:                                               ; preds = %79, %75
  %86 = load i8, ptr %4, align 1, !dbg !3562
  %87 = zext i8 %86 to i32, !dbg !3562
  %88 = icmp eq i32 %87, 244, !dbg !3564
  br i1 %88, label %89, label %95, !dbg !3565

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 8, !dbg !3566
  %91 = load i8, ptr %90, align 1, !dbg !3567
  %92 = zext i8 %91 to i32, !dbg !3568
  %93 = icmp sgt i32 %92, 143, !dbg !3569
  br i1 %93, label %94, label %95, !dbg !3570

94:                                               ; preds = %89
  store i64 0, ptr %2, align 8, !dbg !3571
  br label %121, !dbg !3571

95:                                               ; preds = %89, %85
  %96 = load ptr, ptr %3, align 8, !dbg !3572
  %97 = getelementptr inbounds i8, ptr %96, i32 1, !dbg !3572
  store ptr %97, ptr %3, align 8, !dbg !3572
  %98 = load i8, ptr %96, align 1, !dbg !3574
  %99 = zext i8 %98 to i32, !dbg !3575
  %100 = and i32 %99, 192, !dbg !3576
  %101 = icmp ne i32 %100, 128, !dbg !3577
  br i1 %101, label %102, label %103, !dbg !3578

102:                                              ; preds = %95
  store i64 0, ptr %2, align 8, !dbg !3579
  br label %121, !dbg !3579

103:                                              ; preds = %95
  %104 = load ptr, ptr %3, align 8, !dbg !3580
  %105 = getelementptr inbounds i8, ptr %104, i32 1, !dbg !3580
  store ptr %105, ptr %3, align 8, !dbg !3580
  %106 = load i8, ptr %104, align 1, !dbg !3582
  %107 = zext i8 %106 to i32, !dbg !3583
  %108 = and i32 %107, 192, !dbg !3584
  %109 = icmp ne i32 %108, 128, !dbg !3585
  br i1 %109, label %110, label %111, !dbg !3586

110:                                              ; preds = %103
  store i64 0, ptr %2, align 8, !dbg !3587
  br label %121, !dbg !3587

111:                                              ; preds = %103
  %112 = load ptr, ptr %3, align 8, !dbg !3588
  %113 = getelementptr inbounds i8, ptr %112, i32 1, !dbg !3588
  store ptr %113, ptr %3, align 8, !dbg !3588
  %114 = load i8, ptr %112, align 1, !dbg !3590
  %115 = zext i8 %114 to i32, !dbg !3591
  %116 = and i32 %115, 192, !dbg !3592
  %117 = icmp ne i32 %116, 128, !dbg !3593
  br i1 %117, label %118, label %119, !dbg !3594

118:                                              ; preds = %111
  store i64 0, ptr %2, align 8, !dbg !3595
  br label %121, !dbg !3595

119:                                              ; preds = %111
  store i64 4, ptr %2, align 8, !dbg !3596
  br label %121, !dbg !3596

120:                                              ; preds = %71
  store i64 0, ptr %2, align 8, !dbg !3597
  br label %121, !dbg !3597

121:                                              ; preds = %120, %119, %118, %110, %102, %94, %84, %70, %69, %61, %53, %43, %29, %28, %16, %11
  %122 = load i64, ptr %2, align 8, !dbg !3599
  ret i64 %122, !dbg !3599
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @sb_finish(ptr noundef %0) #0 !dbg !3600 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3603, metadata !DIExpression()), !dbg !3604
  %3 = load ptr, ptr %2, align 8, !dbg !3605
  %4 = getelementptr inbounds %struct.db_stmt, ptr %3, i32 0, i32 0, !dbg !3606
  %5 = load ptr, ptr %4, align 8, !dbg !3606
  store i8 0, ptr %5, align 1, !dbg !3607
  %6 = load ptr, ptr %2, align 8, !dbg !3608
  %7 = getelementptr inbounds %struct.db_stmt, ptr %6, i32 0, i32 2, !dbg !3608
  %8 = load ptr, ptr %7, align 8, !dbg !3608
  %9 = load ptr, ptr %2, align 8, !dbg !3608
  %10 = getelementptr inbounds %struct.db_stmt, ptr %9, i32 0, i32 0, !dbg !3608
  %11 = load ptr, ptr %10, align 8, !dbg !3608
  %12 = icmp ule ptr %8, %11, !dbg !3608
  br i1 %12, label %13, label %29, !dbg !3608

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !3608
  %15 = getelementptr inbounds %struct.db_stmt, ptr %14, i32 0, i32 2, !dbg !3608
  %16 = load ptr, ptr %15, align 8, !dbg !3608
  %17 = call i64 @strlen(ptr noundef %16) #17, !dbg !3608
  %18 = load ptr, ptr %2, align 8, !dbg !3608
  %19 = getelementptr inbounds %struct.db_stmt, ptr %18, i32 0, i32 0, !dbg !3608
  %20 = load ptr, ptr %19, align 8, !dbg !3608
  %21 = load ptr, ptr %2, align 8, !dbg !3608
  %22 = getelementptr inbounds %struct.db_stmt, ptr %21, i32 0, i32 2, !dbg !3608
  %23 = load ptr, ptr %22, align 8, !dbg !3608
  %24 = ptrtoint ptr %20 to i64, !dbg !3608
  %25 = ptrtoint ptr %23 to i64, !dbg !3608
  %26 = sub i64 %24, %25, !dbg !3608
  %27 = icmp eq i64 %17, %26, !dbg !3608
  br i1 %27, label %28, label %29, !dbg !3611

28:                                               ; preds = %13
  br label %30, !dbg !3611

29:                                               ; preds = %13, %1
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1.4, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.sb_finish) #12, !dbg !3608
  unreachable, !dbg !3608

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 8, !dbg !3612
  %32 = getelementptr inbounds %struct.db_stmt, ptr %31, i32 0, i32 2, !dbg !3613
  %33 = load ptr, ptr %32, align 8, !dbg !3613
  ret ptr %33, !dbg !3614
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_free(ptr noundef %0) #0 !dbg !3615 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3616, metadata !DIExpression()), !dbg !3617
  %3 = load ptr, ptr %2, align 8, !dbg !3618
  %4 = getelementptr inbounds %struct.db_stmt, ptr %3, i32 0, i32 2, !dbg !3619
  %5 = load ptr, ptr %4, align 8, !dbg !3619
  call void @free(ptr noundef %5) #13, !dbg !3620
  ret void, !dbg !3621
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #9

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #10

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_encode(ptr noundef %0) #0 !dbg !3622 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3627, metadata !DIExpression()), !dbg !3628
  %3 = load ptr, ptr %2, align 8, !dbg !3629
  %4 = call ptr @json_stringify(ptr noundef %3, ptr noundef null), !dbg !3630
  ret ptr %4, !dbg !3631
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_stringify(ptr noundef %0, ptr noundef %1) #0 !dbg !3632 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.db_stmt, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3635, metadata !DIExpression()), !dbg !3636
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3637, metadata !DIExpression()), !dbg !3638
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3639, metadata !DIExpression()), !dbg !3640
  call void @sb_init(ptr noundef %5), !dbg !3641
  %6 = load ptr, ptr %4, align 8, !dbg !3642
  %7 = icmp ne ptr %6, null, !dbg !3644
  br i1 %7, label %8, label %11, !dbg !3645

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !3646
  %10 = load ptr, ptr %4, align 8, !dbg !3647
  call void @emit_value_indented(ptr noundef %5, ptr noundef %9, ptr noundef %10, i32 noundef 0), !dbg !3648
  br label %13, !dbg !3648

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !3649
  call void @emit_value(ptr noundef %5, ptr noundef %12), !dbg !3650
  br label %13

13:                                               ; preds = %11, %8
  %14 = call ptr @sb_finish(ptr noundef %5), !dbg !3651
  ret ptr %14, !dbg !3652
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_value_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !3653 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3656, metadata !DIExpression()), !dbg !3657
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3658, metadata !DIExpression()), !dbg !3659
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3660, metadata !DIExpression()), !dbg !3661
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3662, metadata !DIExpression()), !dbg !3663
  %9 = load ptr, ptr %6, align 8, !dbg !3664
  %10 = getelementptr inbounds %struct.JsonNode, ptr %9, i32 0, i32 4, !dbg !3664
  %11 = load i32, ptr %10, align 8, !dbg !3664
  %12 = call zeroext i1 @tag_is_valid(i32 noundef %11), !dbg !3664
  br i1 %12, label %13, label %14, !dbg !3667

13:                                               ; preds = %4
  br label %15, !dbg !3667

14:                                               ; preds = %4
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1.4, i32 noundef 1014, ptr noundef @__PRETTY_FUNCTION__.emit_value_indented) #12, !dbg !3664
  unreachable, !dbg !3664

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !dbg !3668
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 4, !dbg !3669
  %18 = load i32, ptr %17, align 8, !dbg !3669
  switch i32 %18, label %49 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %29
    i32 3, label %34
    i32 4, label %39
    i32 5, label %44
  ], !dbg !3670

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !dbg !3671
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.23), !dbg !3673
  br label %50, !dbg !3674

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 8, !dbg !3675
  %23 = load ptr, ptr %6, align 8, !dbg !3676
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !3677
  %25 = load i8, ptr %24, align 8, !dbg !3677
  %26 = trunc i8 %25 to i1, !dbg !3677
  %27 = zext i1 %26 to i64, !dbg !3676
  %28 = select i1 %26, ptr @.str.25, ptr @.str.24, !dbg !3676
  call void @sb_puts(ptr noundef %22, ptr noundef %28), !dbg !3678
  br label %50, !dbg !3679

29:                                               ; preds = %15
  %30 = load ptr, ptr %5, align 8, !dbg !3680
  %31 = load ptr, ptr %6, align 8, !dbg !3681
  %32 = getelementptr inbounds %struct.JsonNode, ptr %31, i32 0, i32 5, !dbg !3682
  %33 = load ptr, ptr %32, align 8, !dbg !3682
  call void @emit_string(ptr noundef %30, ptr noundef %33), !dbg !3683
  br label %50, !dbg !3684

34:                                               ; preds = %15
  %35 = load ptr, ptr %5, align 8, !dbg !3685
  %36 = load ptr, ptr %6, align 8, !dbg !3686
  %37 = getelementptr inbounds %struct.JsonNode, ptr %36, i32 0, i32 5, !dbg !3687
  %38 = load double, ptr %37, align 8, !dbg !3687
  call void @emit_number(ptr noundef %35, double noundef %38), !dbg !3688
  br label %50, !dbg !3689

39:                                               ; preds = %15
  %40 = load ptr, ptr %5, align 8, !dbg !3690
  %41 = load ptr, ptr %6, align 8, !dbg !3691
  %42 = load ptr, ptr %7, align 8, !dbg !3692
  %43 = load i32, ptr %8, align 4, !dbg !3693
  call void @emit_array_indented(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %43), !dbg !3694
  br label %50, !dbg !3695

44:                                               ; preds = %15
  %45 = load ptr, ptr %5, align 8, !dbg !3696
  %46 = load ptr, ptr %6, align 8, !dbg !3697
  %47 = load ptr, ptr %7, align 8, !dbg !3698
  %48 = load i32, ptr %8, align 4, !dbg !3699
  call void @emit_object_indented(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48), !dbg !3700
  br label %50, !dbg !3701

49:                                               ; preds = %15
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1.4, i32 noundef 1035, ptr noundef @__PRETTY_FUNCTION__.emit_value_indented) #12, !dbg !3702
  unreachable, !dbg !3702

50:                                               ; preds = %44, %39, %34, %29, %21, %19
  ret void, !dbg !3705
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_value(ptr noundef %0, ptr noundef %1) #0 !dbg !3706 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3709, metadata !DIExpression()), !dbg !3710
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3711, metadata !DIExpression()), !dbg !3712
  %5 = load ptr, ptr %4, align 8, !dbg !3713
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !3713
  %7 = load i32, ptr %6, align 8, !dbg !3713
  %8 = call zeroext i1 @tag_is_valid(i32 noundef %7), !dbg !3713
  br i1 %8, label %9, label %10, !dbg !3716

9:                                                ; preds = %2
  br label %11, !dbg !3716

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1.4, i32 noundef 987, ptr noundef @__PRETTY_FUNCTION__.emit_value) #12, !dbg !3713
  unreachable, !dbg !3713

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !3717
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 4, !dbg !3718
  %14 = load i32, ptr %13, align 8, !dbg !3718
  switch i32 %14, label %41 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %25
    i32 3, label %30
    i32 4, label %35
    i32 5, label %38
  ], !dbg !3719

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !dbg !3720
  call void @sb_puts(ptr noundef %16, ptr noundef @.str.23), !dbg !3722
  br label %42, !dbg !3723

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8, !dbg !3724
  %19 = load ptr, ptr %4, align 8, !dbg !3725
  %20 = getelementptr inbounds %struct.JsonNode, ptr %19, i32 0, i32 5, !dbg !3726
  %21 = load i8, ptr %20, align 8, !dbg !3726
  %22 = trunc i8 %21 to i1, !dbg !3726
  %23 = zext i1 %22 to i64, !dbg !3725
  %24 = select i1 %22, ptr @.str.25, ptr @.str.24, !dbg !3725
  call void @sb_puts(ptr noundef %18, ptr noundef %24), !dbg !3727
  br label %42, !dbg !3728

25:                                               ; preds = %11
  %26 = load ptr, ptr %3, align 8, !dbg !3729
  %27 = load ptr, ptr %4, align 8, !dbg !3730
  %28 = getelementptr inbounds %struct.JsonNode, ptr %27, i32 0, i32 5, !dbg !3731
  %29 = load ptr, ptr %28, align 8, !dbg !3731
  call void @emit_string(ptr noundef %26, ptr noundef %29), !dbg !3732
  br label %42, !dbg !3733

30:                                               ; preds = %11
  %31 = load ptr, ptr %3, align 8, !dbg !3734
  %32 = load ptr, ptr %4, align 8, !dbg !3735
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 5, !dbg !3736
  %34 = load double, ptr %33, align 8, !dbg !3736
  call void @emit_number(ptr noundef %31, double noundef %34), !dbg !3737
  br label %42, !dbg !3738

35:                                               ; preds = %11
  %36 = load ptr, ptr %3, align 8, !dbg !3739
  %37 = load ptr, ptr %4, align 8, !dbg !3740
  call void @emit_array(ptr noundef %36, ptr noundef %37), !dbg !3741
  br label %42, !dbg !3742

38:                                               ; preds = %11
  %39 = load ptr, ptr %3, align 8, !dbg !3743
  %40 = load ptr, ptr %4, align 8, !dbg !3744
  call void @emit_object(ptr noundef %39, ptr noundef %40), !dbg !3745
  br label %42, !dbg !3746

41:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1.4, i32 noundef 1008, ptr noundef @__PRETTY_FUNCTION__.emit_value) #12, !dbg !3747
  unreachable, !dbg !3747

42:                                               ; preds = %38, %35, %30, %25, %17, %15
  ret void, !dbg !3750
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tag_is_valid(i32 noundef %0) #0 !dbg !3751 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3754, metadata !DIExpression()), !dbg !3755
  %3 = load i32, ptr %2, align 4, !dbg !3756
  %4 = icmp ule i32 %3, 5, !dbg !3757
  ret i1 %4, !dbg !3758
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_puts(ptr noundef %0, ptr noundef %1) #0 !dbg !3759 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3762, metadata !DIExpression()), !dbg !3763
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3764, metadata !DIExpression()), !dbg !3765
  %5 = load ptr, ptr %3, align 8, !dbg !3766
  %6 = load ptr, ptr %4, align 8, !dbg !3767
  %7 = load ptr, ptr %4, align 8, !dbg !3768
  %8 = call i64 @strlen(ptr noundef %7) #17, !dbg !3769
  call void @sb_put(ptr noundef %5, ptr noundef %6, i64 noundef %8), !dbg !3770
  ret void, !dbg !3771
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_string(ptr noundef %0, ptr noundef %1) #0 !dbg !3772 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3773, metadata !DIExpression()), !dbg !3774
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3775, metadata !DIExpression()), !dbg !3776
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3777, metadata !DIExpression()), !dbg !3778
  %12 = load ptr, ptr %4, align 8, !dbg !3779
  store ptr %12, ptr %5, align 8, !dbg !3778
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3780, metadata !DIExpression()), !dbg !3781
  %13 = load ptr, ptr %4, align 8, !dbg !3782
  %14 = call zeroext i1 @utf8_validate(ptr noundef %13), !dbg !3782
  br i1 %14, label %15, label %16, !dbg !3785

15:                                               ; preds = %2
  br label %17, !dbg !3785

16:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.36, ptr noundef @.str.1.4, i32 noundef 1122, ptr noundef @__PRETTY_FUNCTION__.emit_string) #12, !dbg !3782
  unreachable, !dbg !3782

17:                                               ; preds = %15
  br label %18, !dbg !3786

18:                                               ; preds = %17
  %19 = load ptr, ptr %3, align 8, !dbg !3787
  %20 = getelementptr inbounds %struct.db_stmt, ptr %19, i32 0, i32 1, !dbg !3787
  %21 = load ptr, ptr %20, align 8, !dbg !3787
  %22 = load ptr, ptr %3, align 8, !dbg !3787
  %23 = getelementptr inbounds %struct.db_stmt, ptr %22, i32 0, i32 0, !dbg !3787
  %24 = load ptr, ptr %23, align 8, !dbg !3787
  %25 = ptrtoint ptr %21 to i64, !dbg !3787
  %26 = ptrtoint ptr %24 to i64, !dbg !3787
  %27 = sub i64 %25, %26, !dbg !3787
  %28 = icmp ult i64 %27, 14, !dbg !3787
  br i1 %28, label %29, label %31, !dbg !3790

29:                                               ; preds = %18
  %30 = load ptr, ptr %3, align 8, !dbg !3787
  call void @sb_grow(ptr noundef %30, i64 noundef 14), !dbg !3787
  br label %31, !dbg !3787

31:                                               ; preds = %29, %18
  br label %32, !dbg !3790

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 8, !dbg !3791
  %34 = getelementptr inbounds %struct.db_stmt, ptr %33, i32 0, i32 0, !dbg !3792
  %35 = load ptr, ptr %34, align 8, !dbg !3792
  store ptr %35, ptr %6, align 8, !dbg !3793
  %36 = load ptr, ptr %6, align 8, !dbg !3794
  %37 = getelementptr inbounds i8, ptr %36, i32 1, !dbg !3794
  store ptr %37, ptr %6, align 8, !dbg !3794
  store i8 34, ptr %36, align 1, !dbg !3795
  br label %38, !dbg !3796

38:                                               ; preds = %176, %32
  %39 = load ptr, ptr %5, align 8, !dbg !3797
  %40 = load i8, ptr %39, align 1, !dbg !3798
  %41 = sext i8 %40 to i32, !dbg !3798
  %42 = icmp ne i32 %41, 0, !dbg !3799
  br i1 %42, label %43, label %180, !dbg !3796

43:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3800, metadata !DIExpression()), !dbg !3802
  %44 = load ptr, ptr %5, align 8, !dbg !3803
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !3803
  store ptr %45, ptr %5, align 8, !dbg !3803
  %46 = load i8, ptr %44, align 1, !dbg !3804
  store i8 %46, ptr %7, align 1, !dbg !3802
  %47 = load i8, ptr %7, align 1, !dbg !3805
  %48 = sext i8 %47 to i32, !dbg !3805
  switch i32 %48, label %84 [
    i32 34, label %49
    i32 92, label %54
    i32 8, label %59
    i32 12, label %64
    i32 10, label %69
    i32 13, label %74
    i32 9, label %79
  ], !dbg !3806

49:                                               ; preds = %43
  %50 = load ptr, ptr %6, align 8, !dbg !3807
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !3807
  store ptr %51, ptr %6, align 8, !dbg !3807
  store i8 92, ptr %50, align 1, !dbg !3809
  %52 = load ptr, ptr %6, align 8, !dbg !3810
  %53 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !3810
  store ptr %53, ptr %6, align 8, !dbg !3810
  store i8 34, ptr %52, align 1, !dbg !3811
  br label %158, !dbg !3812

54:                                               ; preds = %43
  %55 = load ptr, ptr %6, align 8, !dbg !3813
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !3813
  store ptr %56, ptr %6, align 8, !dbg !3813
  store i8 92, ptr %55, align 1, !dbg !3814
  %57 = load ptr, ptr %6, align 8, !dbg !3815
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !3815
  store ptr %58, ptr %6, align 8, !dbg !3815
  store i8 92, ptr %57, align 1, !dbg !3816
  br label %158, !dbg !3817

59:                                               ; preds = %43
  %60 = load ptr, ptr %6, align 8, !dbg !3818
  %61 = getelementptr inbounds i8, ptr %60, i32 1, !dbg !3818
  store ptr %61, ptr %6, align 8, !dbg !3818
  store i8 92, ptr %60, align 1, !dbg !3819
  %62 = load ptr, ptr %6, align 8, !dbg !3820
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !3820
  store ptr %63, ptr %6, align 8, !dbg !3820
  store i8 98, ptr %62, align 1, !dbg !3821
  br label %158, !dbg !3822

64:                                               ; preds = %43
  %65 = load ptr, ptr %6, align 8, !dbg !3823
  %66 = getelementptr inbounds i8, ptr %65, i32 1, !dbg !3823
  store ptr %66, ptr %6, align 8, !dbg !3823
  store i8 92, ptr %65, align 1, !dbg !3824
  %67 = load ptr, ptr %6, align 8, !dbg !3825
  %68 = getelementptr inbounds i8, ptr %67, i32 1, !dbg !3825
  store ptr %68, ptr %6, align 8, !dbg !3825
  store i8 102, ptr %67, align 1, !dbg !3826
  br label %158, !dbg !3827

69:                                               ; preds = %43
  %70 = load ptr, ptr %6, align 8, !dbg !3828
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !3828
  store ptr %71, ptr %6, align 8, !dbg !3828
  store i8 92, ptr %70, align 1, !dbg !3829
  %72 = load ptr, ptr %6, align 8, !dbg !3830
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !3830
  store ptr %73, ptr %6, align 8, !dbg !3830
  store i8 110, ptr %72, align 1, !dbg !3831
  br label %158, !dbg !3832

74:                                               ; preds = %43
  %75 = load ptr, ptr %6, align 8, !dbg !3833
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !3833
  store ptr %76, ptr %6, align 8, !dbg !3833
  store i8 92, ptr %75, align 1, !dbg !3834
  %77 = load ptr, ptr %6, align 8, !dbg !3835
  %78 = getelementptr inbounds i8, ptr %77, i32 1, !dbg !3835
  store ptr %78, ptr %6, align 8, !dbg !3835
  store i8 114, ptr %77, align 1, !dbg !3836
  br label %158, !dbg !3837

79:                                               ; preds = %43
  %80 = load ptr, ptr %6, align 8, !dbg !3838
  %81 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !3838
  store ptr %81, ptr %6, align 8, !dbg !3838
  store i8 92, ptr %80, align 1, !dbg !3839
  %82 = load ptr, ptr %6, align 8, !dbg !3840
  %83 = getelementptr inbounds i8, ptr %82, i32 1, !dbg !3840
  store ptr %83, ptr %6, align 8, !dbg !3840
  store i8 116, ptr %82, align 1, !dbg !3841
  br label %158, !dbg !3842

84:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3843, metadata !DIExpression()), !dbg !3845
  %85 = load ptr, ptr %5, align 8, !dbg !3846
  %86 = getelementptr inbounds i8, ptr %85, i32 -1, !dbg !3846
  store ptr %86, ptr %5, align 8, !dbg !3846
  %87 = load ptr, ptr %5, align 8, !dbg !3847
  %88 = call i64 @utf8_validate_cz(ptr noundef %87), !dbg !3848
  store i64 %88, ptr %8, align 8, !dbg !3849
  %89 = load i64, ptr %8, align 8, !dbg !3850
  %90 = icmp eq i64 %89, 0, !dbg !3852
  br i1 %90, label %91, label %92, !dbg !3853

91:                                               ; preds = %84
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1.4, i32 noundef 1180, ptr noundef @__PRETTY_FUNCTION__.emit_string) #12, !dbg !3854
  unreachable, !dbg !3854

92:                                               ; preds = %84
  %93 = load i8, ptr %7, align 1, !dbg !3858
  %94 = sext i8 %93 to i32, !dbg !3858
  %95 = icmp slt i32 %94, 31, !dbg !3860
  br i1 %95, label %96, label %144, !dbg !3861

96:                                               ; preds = %92
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3862, metadata !DIExpression()), !dbg !3864
  %97 = load ptr, ptr %5, align 8, !dbg !3865
  %98 = call i32 @utf8_read_char(ptr noundef %97, ptr noundef %9), !dbg !3866
  %99 = load ptr, ptr %5, align 8, !dbg !3867
  %100 = sext i32 %98 to i64, !dbg !3867
  %101 = getelementptr inbounds i8, ptr %99, i64 %100, !dbg !3867
  store ptr %101, ptr %5, align 8, !dbg !3867
  %102 = load i32, ptr %9, align 4, !dbg !3868
  %103 = icmp ule i32 %102, 65535, !dbg !3870
  br i1 %103, label %104, label %116, !dbg !3871

104:                                              ; preds = %96
  %105 = load ptr, ptr %6, align 8, !dbg !3872
  %106 = getelementptr inbounds i8, ptr %105, i32 1, !dbg !3872
  store ptr %106, ptr %6, align 8, !dbg !3872
  store i8 92, ptr %105, align 1, !dbg !3874
  %107 = load ptr, ptr %6, align 8, !dbg !3875
  %108 = getelementptr inbounds i8, ptr %107, i32 1, !dbg !3875
  store ptr %108, ptr %6, align 8, !dbg !3875
  store i8 117, ptr %107, align 1, !dbg !3876
  %109 = load ptr, ptr %6, align 8, !dbg !3877
  %110 = load i32, ptr %9, align 4, !dbg !3878
  %111 = trunc i32 %110 to i16, !dbg !3879
  %112 = call i32 @write_hex16(ptr noundef %109, i16 noundef zeroext %111), !dbg !3880
  %113 = load ptr, ptr %6, align 8, !dbg !3881
  %114 = sext i32 %112 to i64, !dbg !3881
  %115 = getelementptr inbounds i8, ptr %113, i64 %114, !dbg !3881
  store ptr %115, ptr %6, align 8, !dbg !3881
  br label %143, !dbg !3882

116:                                              ; preds = %96
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3883, metadata !DIExpression()), !dbg !3885
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3886, metadata !DIExpression()), !dbg !3887
  %117 = load i32, ptr %9, align 4, !dbg !3888
  %118 = icmp ule i32 %117, 1114111, !dbg !3888
  br i1 %118, label %119, label %120, !dbg !3891

119:                                              ; preds = %116
  br label %121, !dbg !3891

120:                                              ; preds = %116
  call void @__assert_fail(ptr noundef @.str.37, ptr noundef @.str.1.4, i32 noundef 1198, ptr noundef @__PRETTY_FUNCTION__.emit_string) #12, !dbg !3888
  unreachable, !dbg !3888

121:                                              ; preds = %119
  %122 = load i32, ptr %9, align 4, !dbg !3892
  call void @to_surrogate_pair(i32 noundef %122, ptr noundef %10, ptr noundef %11), !dbg !3893
  %123 = load ptr, ptr %6, align 8, !dbg !3894
  %124 = getelementptr inbounds i8, ptr %123, i32 1, !dbg !3894
  store ptr %124, ptr %6, align 8, !dbg !3894
  store i8 92, ptr %123, align 1, !dbg !3895
  %125 = load ptr, ptr %6, align 8, !dbg !3896
  %126 = getelementptr inbounds i8, ptr %125, i32 1, !dbg !3896
  store ptr %126, ptr %6, align 8, !dbg !3896
  store i8 117, ptr %125, align 1, !dbg !3897
  %127 = load ptr, ptr %6, align 8, !dbg !3898
  %128 = load i16, ptr %10, align 2, !dbg !3899
  %129 = call i32 @write_hex16(ptr noundef %127, i16 noundef zeroext %128), !dbg !3900
  %130 = load ptr, ptr %6, align 8, !dbg !3901
  %131 = sext i32 %129 to i64, !dbg !3901
  %132 = getelementptr inbounds i8, ptr %130, i64 %131, !dbg !3901
  store ptr %132, ptr %6, align 8, !dbg !3901
  %133 = load ptr, ptr %6, align 8, !dbg !3902
  %134 = getelementptr inbounds i8, ptr %133, i32 1, !dbg !3902
  store ptr %134, ptr %6, align 8, !dbg !3902
  store i8 92, ptr %133, align 1, !dbg !3903
  %135 = load ptr, ptr %6, align 8, !dbg !3904
  %136 = getelementptr inbounds i8, ptr %135, i32 1, !dbg !3904
  store ptr %136, ptr %6, align 8, !dbg !3904
  store i8 117, ptr %135, align 1, !dbg !3905
  %137 = load ptr, ptr %6, align 8, !dbg !3906
  %138 = load i16, ptr %11, align 2, !dbg !3907
  %139 = call i32 @write_hex16(ptr noundef %137, i16 noundef zeroext %138), !dbg !3908
  %140 = load ptr, ptr %6, align 8, !dbg !3909
  %141 = sext i32 %139 to i64, !dbg !3909
  %142 = getelementptr inbounds i8, ptr %140, i64 %141, !dbg !3909
  store ptr %142, ptr %6, align 8, !dbg !3909
  br label %143

143:                                              ; preds = %121, %104
  br label %156, !dbg !3910

144:                                              ; preds = %92
  br label %145, !dbg !3911

145:                                              ; preds = %149, %144
  %146 = load i64, ptr %8, align 8, !dbg !3913
  %147 = add i64 %146, -1, !dbg !3913
  store i64 %147, ptr %8, align 8, !dbg !3913
  %148 = icmp ne i64 %146, 0, !dbg !3911
  br i1 %148, label %149, label %155, !dbg !3911

149:                                              ; preds = %145
  %150 = load ptr, ptr %5, align 8, !dbg !3914
  %151 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !3914
  store ptr %151, ptr %5, align 8, !dbg !3914
  %152 = load i8, ptr %150, align 1, !dbg !3915
  %153 = load ptr, ptr %6, align 8, !dbg !3916
  %154 = getelementptr inbounds i8, ptr %153, i32 1, !dbg !3916
  store ptr %154, ptr %6, align 8, !dbg !3916
  store i8 %152, ptr %153, align 1, !dbg !3917
  br label %145, !dbg !3911, !llvm.loop !3918

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156
  br label %158, !dbg !3919

158:                                              ; preds = %157, %79, %74, %69, %64, %59, %54, %49
  %159 = load ptr, ptr %6, align 8, !dbg !3920
  %160 = load ptr, ptr %3, align 8, !dbg !3921
  %161 = getelementptr inbounds %struct.db_stmt, ptr %160, i32 0, i32 0, !dbg !3922
  store ptr %159, ptr %161, align 8, !dbg !3923
  br label %162, !dbg !3924

162:                                              ; preds = %158
  %163 = load ptr, ptr %3, align 8, !dbg !3925
  %164 = getelementptr inbounds %struct.db_stmt, ptr %163, i32 0, i32 1, !dbg !3925
  %165 = load ptr, ptr %164, align 8, !dbg !3925
  %166 = load ptr, ptr %3, align 8, !dbg !3925
  %167 = getelementptr inbounds %struct.db_stmt, ptr %166, i32 0, i32 0, !dbg !3925
  %168 = load ptr, ptr %167, align 8, !dbg !3925
  %169 = ptrtoint ptr %165 to i64, !dbg !3925
  %170 = ptrtoint ptr %168 to i64, !dbg !3925
  %171 = sub i64 %169, %170, !dbg !3925
  %172 = icmp ult i64 %171, 14, !dbg !3925
  br i1 %172, label %173, label %175, !dbg !3928

173:                                              ; preds = %162
  %174 = load ptr, ptr %3, align 8, !dbg !3925
  call void @sb_grow(ptr noundef %174, i64 noundef 14), !dbg !3925
  br label %175, !dbg !3925

175:                                              ; preds = %173, %162
  br label %176, !dbg !3928

176:                                              ; preds = %175
  %177 = load ptr, ptr %3, align 8, !dbg !3929
  %178 = getelementptr inbounds %struct.db_stmt, ptr %177, i32 0, i32 0, !dbg !3930
  %179 = load ptr, ptr %178, align 8, !dbg !3930
  store ptr %179, ptr %6, align 8, !dbg !3931
  br label %38, !dbg !3796, !llvm.loop !3932

180:                                              ; preds = %38
  %181 = load ptr, ptr %6, align 8, !dbg !3934
  %182 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !3934
  store ptr %182, ptr %6, align 8, !dbg !3934
  store i8 34, ptr %181, align 1, !dbg !3935
  %183 = load ptr, ptr %6, align 8, !dbg !3936
  %184 = load ptr, ptr %3, align 8, !dbg !3937
  %185 = getelementptr inbounds %struct.db_stmt, ptr %184, i32 0, i32 0, !dbg !3938
  store ptr %183, ptr %185, align 8, !dbg !3939
  ret void, !dbg !3940
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_number(ptr noundef %0, double noundef %1) #0 !dbg !3941 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca [64 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3944, metadata !DIExpression()), !dbg !3945
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3948, metadata !DIExpression()), !dbg !3952
  %6 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !3953
  %7 = load double, ptr %4, align 8, !dbg !3954
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.28, double noundef %7) #13, !dbg !3955
  %9 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !3956
  %10 = call zeroext i1 @number_is_valid(ptr noundef %9), !dbg !3958
  br i1 %10, label %11, label %14, !dbg !3959

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !3960
  %13 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !3961
  call void @sb_puts(ptr noundef %12, ptr noundef %13), !dbg !3962
  br label %16, !dbg !3962

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !3963
  call void @sb_puts(ptr noundef %15, ptr noundef @.str.23), !dbg !3964
  br label %16

16:                                               ; preds = %14, %11
  ret void, !dbg !3965
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_array(ptr noundef %0, ptr noundef %1) #0 !dbg !3966 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3967, metadata !DIExpression()), !dbg !3968
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3969, metadata !DIExpression()), !dbg !3970
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3971, metadata !DIExpression()), !dbg !3972
  br label %6, !dbg !3973

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !dbg !3974
  %8 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !3974
  %9 = load ptr, ptr %8, align 8, !dbg !3974
  %10 = load ptr, ptr %3, align 8, !dbg !3974
  %11 = getelementptr inbounds %struct.db_stmt, ptr %10, i32 0, i32 1, !dbg !3974
  %12 = load ptr, ptr %11, align 8, !dbg !3974
  %13 = icmp uge ptr %9, %12, !dbg !3974
  br i1 %13, label %14, label %16, !dbg !3977

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !dbg !3974
  call void @sb_grow(ptr noundef %15, i64 noundef 1), !dbg !3974
  br label %16, !dbg !3974

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %3, align 8, !dbg !3977
  %18 = getelementptr inbounds %struct.db_stmt, ptr %17, i32 0, i32 0, !dbg !3977
  %19 = load ptr, ptr %18, align 8, !dbg !3977
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !3977
  store ptr %20, ptr %18, align 8, !dbg !3977
  store i8 91, ptr %19, align 1, !dbg !3977
  br label %21, !dbg !3977

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !3978
  %23 = call ptr @json_first_child(ptr noundef %22), !dbg !3978
  store ptr %23, ptr %5, align 8, !dbg !3978
  br label %24, !dbg !3978

24:                                               ; preds = %52, %21
  %25 = load ptr, ptr %5, align 8, !dbg !3980
  %26 = icmp ne ptr %25, null, !dbg !3980
  br i1 %26, label %27, label %56, !dbg !3978

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !dbg !3982
  %29 = load ptr, ptr %5, align 8, !dbg !3984
  call void @emit_value(ptr noundef %28, ptr noundef %29), !dbg !3985
  %30 = load ptr, ptr %5, align 8, !dbg !3986
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 2, !dbg !3988
  %32 = load ptr, ptr %31, align 8, !dbg !3988
  %33 = icmp ne ptr %32, null, !dbg !3989
  br i1 %33, label %34, label %51, !dbg !3990

34:                                               ; preds = %27
  br label %35, !dbg !3991

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 8, !dbg !3992
  %37 = getelementptr inbounds %struct.db_stmt, ptr %36, i32 0, i32 0, !dbg !3992
  %38 = load ptr, ptr %37, align 8, !dbg !3992
  %39 = load ptr, ptr %3, align 8, !dbg !3992
  %40 = getelementptr inbounds %struct.db_stmt, ptr %39, i32 0, i32 1, !dbg !3992
  %41 = load ptr, ptr %40, align 8, !dbg !3992
  %42 = icmp uge ptr %38, %41, !dbg !3992
  br i1 %42, label %43, label %45, !dbg !3995

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !dbg !3992
  call void @sb_grow(ptr noundef %44, i64 noundef 1), !dbg !3992
  br label %45, !dbg !3992

45:                                               ; preds = %43, %35
  %46 = load ptr, ptr %3, align 8, !dbg !3995
  %47 = getelementptr inbounds %struct.db_stmt, ptr %46, i32 0, i32 0, !dbg !3995
  %48 = load ptr, ptr %47, align 8, !dbg !3995
  %49 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !3995
  store ptr %49, ptr %47, align 8, !dbg !3995
  store i8 44, ptr %48, align 1, !dbg !3995
  br label %50, !dbg !3995

50:                                               ; preds = %45
  br label %51, !dbg !3995

51:                                               ; preds = %50, %27
  br label %52, !dbg !3996

52:                                               ; preds = %51
  %53 = load ptr, ptr %5, align 8, !dbg !3980
  %54 = getelementptr inbounds %struct.JsonNode, ptr %53, i32 0, i32 2, !dbg !3980
  %55 = load ptr, ptr %54, align 8, !dbg !3980
  store ptr %55, ptr %5, align 8, !dbg !3980
  br label %24, !dbg !3980, !llvm.loop !3997

56:                                               ; preds = %24
  br label %57, !dbg !3999

57:                                               ; preds = %56
  %58 = load ptr, ptr %3, align 8, !dbg !4000
  %59 = getelementptr inbounds %struct.db_stmt, ptr %58, i32 0, i32 0, !dbg !4000
  %60 = load ptr, ptr %59, align 8, !dbg !4000
  %61 = load ptr, ptr %3, align 8, !dbg !4000
  %62 = getelementptr inbounds %struct.db_stmt, ptr %61, i32 0, i32 1, !dbg !4000
  %63 = load ptr, ptr %62, align 8, !dbg !4000
  %64 = icmp uge ptr %60, %63, !dbg !4000
  br i1 %64, label %65, label %67, !dbg !4003

65:                                               ; preds = %57
  %66 = load ptr, ptr %3, align 8, !dbg !4000
  call void @sb_grow(ptr noundef %66, i64 noundef 1), !dbg !4000
  br label %67, !dbg !4000

67:                                               ; preds = %65, %57
  %68 = load ptr, ptr %3, align 8, !dbg !4003
  %69 = getelementptr inbounds %struct.db_stmt, ptr %68, i32 0, i32 0, !dbg !4003
  %70 = load ptr, ptr %69, align 8, !dbg !4003
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !4003
  store ptr %71, ptr %69, align 8, !dbg !4003
  store i8 93, ptr %70, align 1, !dbg !4003
  br label %72, !dbg !4003

72:                                               ; preds = %67
  ret void, !dbg !4004
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_object(ptr noundef %0, ptr noundef %1) #0 !dbg !4005 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4006, metadata !DIExpression()), !dbg !4007
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4008, metadata !DIExpression()), !dbg !4009
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4010, metadata !DIExpression()), !dbg !4011
  br label %6, !dbg !4012

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !dbg !4013
  %8 = getelementptr inbounds %struct.db_stmt, ptr %7, i32 0, i32 0, !dbg !4013
  %9 = load ptr, ptr %8, align 8, !dbg !4013
  %10 = load ptr, ptr %3, align 8, !dbg !4013
  %11 = getelementptr inbounds %struct.db_stmt, ptr %10, i32 0, i32 1, !dbg !4013
  %12 = load ptr, ptr %11, align 8, !dbg !4013
  %13 = icmp uge ptr %9, %12, !dbg !4013
  br i1 %13, label %14, label %16, !dbg !4016

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !dbg !4013
  call void @sb_grow(ptr noundef %15, i64 noundef 1), !dbg !4013
  br label %16, !dbg !4013

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %3, align 8, !dbg !4016
  %18 = getelementptr inbounds %struct.db_stmt, ptr %17, i32 0, i32 0, !dbg !4016
  %19 = load ptr, ptr %18, align 8, !dbg !4016
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !4016
  store ptr %20, ptr %18, align 8, !dbg !4016
  store i8 123, ptr %19, align 1, !dbg !4016
  br label %21, !dbg !4016

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !4017
  %23 = call ptr @json_first_child(ptr noundef %22), !dbg !4017
  store ptr %23, ptr %5, align 8, !dbg !4017
  br label %24, !dbg !4017

24:                                               ; preds = %72, %21
  %25 = load ptr, ptr %5, align 8, !dbg !4019
  %26 = icmp ne ptr %25, null, !dbg !4019
  br i1 %26, label %27, label %76, !dbg !4017

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !dbg !4021
  %29 = load ptr, ptr %5, align 8, !dbg !4023
  %30 = getelementptr inbounds %struct.JsonNode, ptr %29, i32 0, i32 3, !dbg !4024
  %31 = load ptr, ptr %30, align 8, !dbg !4024
  call void @emit_string(ptr noundef %28, ptr noundef %31), !dbg !4025
  br label %32, !dbg !4026

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8, !dbg !4027
  %34 = getelementptr inbounds %struct.db_stmt, ptr %33, i32 0, i32 0, !dbg !4027
  %35 = load ptr, ptr %34, align 8, !dbg !4027
  %36 = load ptr, ptr %3, align 8, !dbg !4027
  %37 = getelementptr inbounds %struct.db_stmt, ptr %36, i32 0, i32 1, !dbg !4027
  %38 = load ptr, ptr %37, align 8, !dbg !4027
  %39 = icmp uge ptr %35, %38, !dbg !4027
  br i1 %39, label %40, label %42, !dbg !4030

40:                                               ; preds = %32
  %41 = load ptr, ptr %3, align 8, !dbg !4027
  call void @sb_grow(ptr noundef %41, i64 noundef 1), !dbg !4027
  br label %42, !dbg !4027

42:                                               ; preds = %40, %32
  %43 = load ptr, ptr %3, align 8, !dbg !4030
  %44 = getelementptr inbounds %struct.db_stmt, ptr %43, i32 0, i32 0, !dbg !4030
  %45 = load ptr, ptr %44, align 8, !dbg !4030
  %46 = getelementptr inbounds i8, ptr %45, i32 1, !dbg !4030
  store ptr %46, ptr %44, align 8, !dbg !4030
  store i8 58, ptr %45, align 1, !dbg !4030
  br label %47, !dbg !4030

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8, !dbg !4031
  %49 = load ptr, ptr %5, align 8, !dbg !4032
  call void @emit_value(ptr noundef %48, ptr noundef %49), !dbg !4033
  %50 = load ptr, ptr %5, align 8, !dbg !4034
  %51 = getelementptr inbounds %struct.JsonNode, ptr %50, i32 0, i32 2, !dbg !4036
  %52 = load ptr, ptr %51, align 8, !dbg !4036
  %53 = icmp ne ptr %52, null, !dbg !4037
  br i1 %53, label %54, label %71, !dbg !4038

54:                                               ; preds = %47
  br label %55, !dbg !4039

55:                                               ; preds = %54
  %56 = load ptr, ptr %3, align 8, !dbg !4040
  %57 = getelementptr inbounds %struct.db_stmt, ptr %56, i32 0, i32 0, !dbg !4040
  %58 = load ptr, ptr %57, align 8, !dbg !4040
  %59 = load ptr, ptr %3, align 8, !dbg !4040
  %60 = getelementptr inbounds %struct.db_stmt, ptr %59, i32 0, i32 1, !dbg !4040
  %61 = load ptr, ptr %60, align 8, !dbg !4040
  %62 = icmp uge ptr %58, %61, !dbg !4040
  br i1 %62, label %63, label %65, !dbg !4043

63:                                               ; preds = %55
  %64 = load ptr, ptr %3, align 8, !dbg !4040
  call void @sb_grow(ptr noundef %64, i64 noundef 1), !dbg !4040
  br label %65, !dbg !4040

65:                                               ; preds = %63, %55
  %66 = load ptr, ptr %3, align 8, !dbg !4043
  %67 = getelementptr inbounds %struct.db_stmt, ptr %66, i32 0, i32 0, !dbg !4043
  %68 = load ptr, ptr %67, align 8, !dbg !4043
  %69 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !4043
  store ptr %69, ptr %67, align 8, !dbg !4043
  store i8 44, ptr %68, align 1, !dbg !4043
  br label %70, !dbg !4043

70:                                               ; preds = %65
  br label %71, !dbg !4043

71:                                               ; preds = %70, %47
  br label %72, !dbg !4044

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 8, !dbg !4019
  %74 = getelementptr inbounds %struct.JsonNode, ptr %73, i32 0, i32 2, !dbg !4019
  %75 = load ptr, ptr %74, align 8, !dbg !4019
  store ptr %75, ptr %5, align 8, !dbg !4019
  br label %24, !dbg !4019, !llvm.loop !4045

76:                                               ; preds = %24
  br label %77, !dbg !4047

77:                                               ; preds = %76
  %78 = load ptr, ptr %3, align 8, !dbg !4048
  %79 = getelementptr inbounds %struct.db_stmt, ptr %78, i32 0, i32 0, !dbg !4048
  %80 = load ptr, ptr %79, align 8, !dbg !4048
  %81 = load ptr, ptr %3, align 8, !dbg !4048
  %82 = getelementptr inbounds %struct.db_stmt, ptr %81, i32 0, i32 1, !dbg !4048
  %83 = load ptr, ptr %82, align 8, !dbg !4048
  %84 = icmp uge ptr %80, %83, !dbg !4048
  br i1 %84, label %85, label %87, !dbg !4051

85:                                               ; preds = %77
  %86 = load ptr, ptr %3, align 8, !dbg !4048
  call void @sb_grow(ptr noundef %86, i64 noundef 1), !dbg !4048
  br label %87, !dbg !4048

87:                                               ; preds = %85, %77
  %88 = load ptr, ptr %3, align 8, !dbg !4051
  %89 = getelementptr inbounds %struct.db_stmt, ptr %88, i32 0, i32 0, !dbg !4051
  %90 = load ptr, ptr %89, align 8, !dbg !4051
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !4051
  store ptr %91, ptr %89, align 8, !dbg !4051
  store i8 125, ptr %90, align 1, !dbg !4051
  br label %92, !dbg !4051

92:                                               ; preds = %87
  ret void, !dbg !4052
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_first_child(ptr noundef %0) #0 !dbg !4053 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4056, metadata !DIExpression()), !dbg !4057
  %4 = load ptr, ptr %3, align 8, !dbg !4058
  %5 = icmp ne ptr %4, null, !dbg !4060
  br i1 %5, label %6, label %21, !dbg !4061

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !4062
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !4063
  %9 = load i32, ptr %8, align 8, !dbg !4063
  %10 = icmp eq i32 %9, 4, !dbg !4064
  br i1 %10, label %16, label %11, !dbg !4065

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !4066
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 4, !dbg !4067
  %14 = load i32, ptr %13, align 8, !dbg !4067
  %15 = icmp eq i32 %14, 5, !dbg !4068
  br i1 %15, label %16, label %21, !dbg !4069

16:                                               ; preds = %11, %6
  %17 = load ptr, ptr %3, align 8, !dbg !4070
  %18 = getelementptr inbounds %struct.JsonNode, ptr %17, i32 0, i32 5, !dbg !4071
  %19 = getelementptr inbounds %struct.db, ptr %18, i32 0, i32 0, !dbg !4072
  %20 = load ptr, ptr %19, align 8, !dbg !4072
  store ptr %20, ptr %2, align 8, !dbg !4073
  br label %22, !dbg !4073

21:                                               ; preds = %11, %1
  store ptr null, ptr %2, align 8, !dbg !4074
  br label %22, !dbg !4074

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %2, align 8, !dbg !4075
  ret ptr %23, !dbg !4075
}

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @number_is_valid(ptr noundef %0) #0 !dbg !4076 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4079, metadata !DIExpression()), !dbg !4080
  %3 = call zeroext i1 @parse_number(ptr noundef %2, ptr noundef null), !dbg !4081
  br i1 %3, label %4, label %9, !dbg !4082

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !dbg !4083
  %6 = load i8, ptr %5, align 1, !dbg !4084
  %7 = sext i8 %6 to i32, !dbg !4084
  %8 = icmp eq i32 %7, 0, !dbg !4085
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ], !dbg !4086
  ret i1 %10, !dbg !4087
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @utf8_validate(ptr noundef %0) #0 !dbg !4088 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4089, metadata !DIExpression()), !dbg !4090
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4091, metadata !DIExpression()), !dbg !4092
  br label %5, !dbg !4093

5:                                                ; preds = %17, %1
  %6 = load ptr, ptr %3, align 8, !dbg !4094
  %7 = load i8, ptr %6, align 1, !dbg !4097
  %8 = sext i8 %7 to i32, !dbg !4097
  %9 = icmp ne i32 %8, 0, !dbg !4098
  br i1 %9, label %10, label %21, !dbg !4099

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !dbg !4100
  %12 = call i64 @utf8_validate_cz(ptr noundef %11), !dbg !4102
  store i64 %12, ptr %4, align 8, !dbg !4103
  %13 = load i64, ptr %4, align 8, !dbg !4104
  %14 = icmp eq i64 %13, 0, !dbg !4106
  br i1 %14, label %15, label %16, !dbg !4107

15:                                               ; preds = %10
  store i1 false, ptr %2, align 1, !dbg !4108
  br label %22, !dbg !4108

16:                                               ; preds = %10
  br label %17, !dbg !4109

17:                                               ; preds = %16
  %18 = load i64, ptr %4, align 8, !dbg !4110
  %19 = load ptr, ptr %3, align 8, !dbg !4111
  %20 = getelementptr inbounds i8, ptr %19, i64 %18, !dbg !4111
  store ptr %20, ptr %3, align 8, !dbg !4111
  br label %5, !dbg !4112, !llvm.loop !4113

21:                                               ; preds = %5
  store i1 true, ptr %2, align 1, !dbg !4115
  br label %22, !dbg !4115

22:                                               ; preds = %21, %15
  %23 = load i1, ptr %2, align 1, !dbg !4116
  ret i1 %23, !dbg !4116
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_read_char(ptr noundef %0, ptr noundef %1) #0 !dbg !4117 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4120, metadata !DIExpression()), !dbg !4121
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4122, metadata !DIExpression()), !dbg !4123
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4124, metadata !DIExpression()), !dbg !4125
  %7 = load ptr, ptr %4, align 8, !dbg !4126
  store ptr %7, ptr %6, align 8, !dbg !4125
  %8 = load ptr, ptr %4, align 8, !dbg !4127
  %9 = call i64 @utf8_validate_cz(ptr noundef %8), !dbg !4127
  %10 = icmp ne i64 %9, 0, !dbg !4127
  br i1 %10, label %11, label %12, !dbg !4130

11:                                               ; preds = %2
  br label %13, !dbg !4130

12:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.38, ptr noundef @.str.1.4, i32 noundef 228, ptr noundef @__PRETTY_FUNCTION__.utf8_read_char) #12, !dbg !4127
  unreachable, !dbg !4127

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !4131
  %15 = getelementptr inbounds i8, ptr %14, i64 0, !dbg !4131
  %16 = load i8, ptr %15, align 1, !dbg !4131
  %17 = zext i8 %16 to i32, !dbg !4131
  %18 = icmp sle i32 %17, 127, !dbg !4133
  br i1 %18, label %19, label %25, !dbg !4134

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !dbg !4135
  %21 = getelementptr inbounds i8, ptr %20, i64 0, !dbg !4135
  %22 = load i8, ptr %21, align 1, !dbg !4135
  %23 = zext i8 %22 to i32, !dbg !4135
  %24 = load ptr, ptr %5, align 8, !dbg !4137
  store i32 %23, ptr %24, align 4, !dbg !4138
  store i32 1, ptr %3, align 4, !dbg !4139
  br label %100, !dbg !4139

25:                                               ; preds = %13
  %26 = load ptr, ptr %6, align 8, !dbg !4140
  %27 = getelementptr inbounds i8, ptr %26, i64 0, !dbg !4140
  %28 = load i8, ptr %27, align 1, !dbg !4140
  %29 = zext i8 %28 to i32, !dbg !4140
  %30 = icmp sle i32 %29, 223, !dbg !4142
  br i1 %30, label %31, label %45, !dbg !4143

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8, !dbg !4144
  %33 = getelementptr inbounds i8, ptr %32, i64 0, !dbg !4144
  %34 = load i8, ptr %33, align 1, !dbg !4144
  %35 = zext i8 %34 to i32, !dbg !4146
  %36 = and i32 %35, 31, !dbg !4147
  %37 = shl i32 %36, 6, !dbg !4148
  %38 = load ptr, ptr %6, align 8, !dbg !4149
  %39 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !4149
  %40 = load i8, ptr %39, align 1, !dbg !4149
  %41 = zext i8 %40 to i32, !dbg !4150
  %42 = and i32 %41, 63, !dbg !4151
  %43 = or i32 %37, %42, !dbg !4152
  %44 = load ptr, ptr %5, align 8, !dbg !4153
  store i32 %43, ptr %44, align 4, !dbg !4154
  store i32 2, ptr %3, align 4, !dbg !4155
  br label %100, !dbg !4155

45:                                               ; preds = %25
  %46 = load ptr, ptr %6, align 8, !dbg !4156
  %47 = getelementptr inbounds i8, ptr %46, i64 0, !dbg !4156
  %48 = load i8, ptr %47, align 1, !dbg !4156
  %49 = zext i8 %48 to i32, !dbg !4156
  %50 = icmp sle i32 %49, 239, !dbg !4158
  br i1 %50, label %51, label %72, !dbg !4159

51:                                               ; preds = %45
  %52 = load ptr, ptr %6, align 8, !dbg !4160
  %53 = getelementptr inbounds i8, ptr %52, i64 0, !dbg !4160
  %54 = load i8, ptr %53, align 1, !dbg !4160
  %55 = zext i8 %54 to i32, !dbg !4162
  %56 = and i32 %55, 15, !dbg !4163
  %57 = shl i32 %56, 12, !dbg !4164
  %58 = load ptr, ptr %6, align 8, !dbg !4165
  %59 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !4165
  %60 = load i8, ptr %59, align 1, !dbg !4165
  %61 = zext i8 %60 to i32, !dbg !4166
  %62 = and i32 %61, 63, !dbg !4167
  %63 = shl i32 %62, 6, !dbg !4168
  %64 = or i32 %57, %63, !dbg !4169
  %65 = load ptr, ptr %6, align 8, !dbg !4170
  %66 = getelementptr inbounds i8, ptr %65, i64 2, !dbg !4170
  %67 = load i8, ptr %66, align 1, !dbg !4170
  %68 = zext i8 %67 to i32, !dbg !4171
  %69 = and i32 %68, 63, !dbg !4172
  %70 = or i32 %64, %69, !dbg !4173
  %71 = load ptr, ptr %5, align 8, !dbg !4174
  store i32 %70, ptr %71, align 4, !dbg !4175
  store i32 3, ptr %3, align 4, !dbg !4176
  br label %100, !dbg !4176

72:                                               ; preds = %45
  %73 = load ptr, ptr %6, align 8, !dbg !4177
  %74 = getelementptr inbounds i8, ptr %73, i64 0, !dbg !4177
  %75 = load i8, ptr %74, align 1, !dbg !4177
  %76 = zext i8 %75 to i32, !dbg !4179
  %77 = and i32 %76, 7, !dbg !4180
  %78 = shl i32 %77, 18, !dbg !4181
  %79 = load ptr, ptr %6, align 8, !dbg !4182
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !4182
  %81 = load i8, ptr %80, align 1, !dbg !4182
  %82 = zext i8 %81 to i32, !dbg !4183
  %83 = and i32 %82, 63, !dbg !4184
  %84 = shl i32 %83, 12, !dbg !4185
  %85 = or i32 %78, %84, !dbg !4186
  %86 = load ptr, ptr %6, align 8, !dbg !4187
  %87 = getelementptr inbounds i8, ptr %86, i64 2, !dbg !4187
  %88 = load i8, ptr %87, align 1, !dbg !4187
  %89 = zext i8 %88 to i32, !dbg !4188
  %90 = and i32 %89, 63, !dbg !4189
  %91 = shl i32 %90, 6, !dbg !4190
  %92 = or i32 %85, %91, !dbg !4191
  %93 = load ptr, ptr %6, align 8, !dbg !4192
  %94 = getelementptr inbounds i8, ptr %93, i64 3, !dbg !4192
  %95 = load i8, ptr %94, align 1, !dbg !4192
  %96 = zext i8 %95 to i32, !dbg !4193
  %97 = and i32 %96, 63, !dbg !4194
  %98 = or i32 %92, %97, !dbg !4195
  %99 = load ptr, ptr %5, align 8, !dbg !4196
  store i32 %98, ptr %99, align 4, !dbg !4197
  store i32 4, ptr %3, align 4, !dbg !4198
  br label %100, !dbg !4198

100:                                              ; preds = %72, %51, %31, %19
  %101 = load i32, ptr %3, align 4, !dbg !4199
  ret i32 %101, !dbg !4199
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_hex16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !4200 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4203, metadata !DIExpression()), !dbg !4204
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4205, metadata !DIExpression()), !dbg !4206
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4207, metadata !DIExpression()), !dbg !4208
  store ptr @.str.39, ptr %5, align 8, !dbg !4208
  %6 = load ptr, ptr %5, align 8, !dbg !4209
  %7 = load i16, ptr %4, align 2, !dbg !4210
  %8 = zext i16 %7 to i32, !dbg !4210
  %9 = ashr i32 %8, 12, !dbg !4211
  %10 = and i32 %9, 15, !dbg !4212
  %11 = sext i32 %10 to i64, !dbg !4209
  %12 = getelementptr inbounds i8, ptr %6, i64 %11, !dbg !4209
  %13 = load i8, ptr %12, align 1, !dbg !4209
  %14 = load ptr, ptr %3, align 8, !dbg !4213
  %15 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !4213
  store ptr %15, ptr %3, align 8, !dbg !4213
  store i8 %13, ptr %14, align 1, !dbg !4214
  %16 = load ptr, ptr %5, align 8, !dbg !4215
  %17 = load i16, ptr %4, align 2, !dbg !4216
  %18 = zext i16 %17 to i32, !dbg !4216
  %19 = ashr i32 %18, 8, !dbg !4217
  %20 = and i32 %19, 15, !dbg !4218
  %21 = sext i32 %20 to i64, !dbg !4215
  %22 = getelementptr inbounds i8, ptr %16, i64 %21, !dbg !4215
  %23 = load i8, ptr %22, align 1, !dbg !4215
  %24 = load ptr, ptr %3, align 8, !dbg !4219
  %25 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !4219
  store ptr %25, ptr %3, align 8, !dbg !4219
  store i8 %23, ptr %24, align 1, !dbg !4220
  %26 = load ptr, ptr %5, align 8, !dbg !4221
  %27 = load i16, ptr %4, align 2, !dbg !4222
  %28 = zext i16 %27 to i32, !dbg !4222
  %29 = ashr i32 %28, 4, !dbg !4223
  %30 = and i32 %29, 15, !dbg !4224
  %31 = sext i32 %30 to i64, !dbg !4221
  %32 = getelementptr inbounds i8, ptr %26, i64 %31, !dbg !4221
  %33 = load i8, ptr %32, align 1, !dbg !4221
  %34 = load ptr, ptr %3, align 8, !dbg !4225
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !4225
  store ptr %35, ptr %3, align 8, !dbg !4225
  store i8 %33, ptr %34, align 1, !dbg !4226
  %36 = load ptr, ptr %5, align 8, !dbg !4227
  %37 = load i16, ptr %4, align 2, !dbg !4228
  %38 = zext i16 %37 to i32, !dbg !4228
  %39 = and i32 %38, 15, !dbg !4229
  %40 = sext i32 %39 to i64, !dbg !4227
  %41 = getelementptr inbounds i8, ptr %36, i64 %40, !dbg !4227
  %42 = load i8, ptr %41, align 1, !dbg !4227
  %43 = load ptr, ptr %3, align 8, !dbg !4230
  %44 = getelementptr inbounds i8, ptr %43, i32 1, !dbg !4230
  store ptr %44, ptr %3, align 8, !dbg !4230
  store i8 %42, ptr %43, align 1, !dbg !4231
  ret i32 4, !dbg !4232
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_surrogate_pair(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4233 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4236, metadata !DIExpression()), !dbg !4237
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4238, metadata !DIExpression()), !dbg !4239
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4240, metadata !DIExpression()), !dbg !4241
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4242, metadata !DIExpression()), !dbg !4243
  %8 = load i32, ptr %4, align 4, !dbg !4244
  %9 = icmp uge i32 %8, 65536, !dbg !4244
  br i1 %9, label %10, label %14, !dbg !4244

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !4244
  %12 = icmp ule i32 %11, 1114111, !dbg !4244
  br i1 %12, label %13, label %14, !dbg !4247

13:                                               ; preds = %10
  br label %15, !dbg !4247

14:                                               ; preds = %10, %3
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1.4, i32 noundef 319, ptr noundef @__PRETTY_FUNCTION__.to_surrogate_pair) #12, !dbg !4244
  unreachable, !dbg !4244

15:                                               ; preds = %13
  %16 = load i32, ptr %4, align 4, !dbg !4248
  %17 = sub i32 %16, 65536, !dbg !4249
  store i32 %17, ptr %7, align 4, !dbg !4250
  %18 = load i32, ptr %7, align 4, !dbg !4251
  %19 = lshr i32 %18, 10, !dbg !4252
  %20 = and i32 %19, 1023, !dbg !4253
  %21 = or i32 %20, 55296, !dbg !4254
  %22 = trunc i32 %21 to i16, !dbg !4255
  %23 = load ptr, ptr %5, align 8, !dbg !4256
  store i16 %22, ptr %23, align 2, !dbg !4257
  %24 = load i32, ptr %7, align 4, !dbg !4258
  %25 = and i32 %24, 1023, !dbg !4259
  %26 = or i32 %25, 56320, !dbg !4260
  %27 = trunc i32 %26 to i16, !dbg !4261
  %28 = load ptr, ptr %6, align 8, !dbg !4262
  store i16 %27, ptr %28, align 2, !dbg !4263
  ret void, !dbg !4264
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_put(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !4265 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4268, metadata !DIExpression()), !dbg !4269
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4270, metadata !DIExpression()), !dbg !4271
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4272, metadata !DIExpression()), !dbg !4273
  br label %7, !dbg !4274

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !dbg !4275
  %9 = getelementptr inbounds %struct.db_stmt, ptr %8, i32 0, i32 1, !dbg !4275
  %10 = load ptr, ptr %9, align 8, !dbg !4275
  %11 = load ptr, ptr %4, align 8, !dbg !4275
  %12 = getelementptr inbounds %struct.db_stmt, ptr %11, i32 0, i32 0, !dbg !4275
  %13 = load ptr, ptr %12, align 8, !dbg !4275
  %14 = ptrtoint ptr %10 to i64, !dbg !4275
  %15 = ptrtoint ptr %13 to i64, !dbg !4275
  %16 = sub i64 %14, %15, !dbg !4275
  %17 = load i64, ptr %6, align 8, !dbg !4275
  %18 = icmp ult i64 %16, %17, !dbg !4275
  br i1 %18, label %19, label %22, !dbg !4278

19:                                               ; preds = %7
  %20 = load ptr, ptr %4, align 8, !dbg !4275
  %21 = load i64, ptr %6, align 8, !dbg !4275
  call void @sb_grow(ptr noundef %20, i64 noundef %21), !dbg !4275
  br label %22, !dbg !4275

22:                                               ; preds = %19, %7
  br label %23, !dbg !4278

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !dbg !4279
  %25 = getelementptr inbounds %struct.db_stmt, ptr %24, i32 0, i32 0, !dbg !4280
  %26 = load ptr, ptr %25, align 8, !dbg !4280
  %27 = load ptr, ptr %5, align 8, !dbg !4281
  %28 = load i64, ptr %6, align 8, !dbg !4282
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %28, i1 false), !dbg !4283
  %29 = load i64, ptr %6, align 8, !dbg !4284
  %30 = load ptr, ptr %4, align 8, !dbg !4285
  %31 = getelementptr inbounds %struct.db_stmt, ptr %30, i32 0, i32 0, !dbg !4286
  %32 = load ptr, ptr %31, align 8, !dbg !4287
  %33 = getelementptr inbounds i8, ptr %32, i64 %29, !dbg !4287
  store ptr %33, ptr %31, align 8, !dbg !4287
  ret void, !dbg !4288
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_array_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !4289 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4290, metadata !DIExpression()), !dbg !4291
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4292, metadata !DIExpression()), !dbg !4293
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4294, metadata !DIExpression()), !dbg !4295
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4296, metadata !DIExpression()), !dbg !4297
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4298, metadata !DIExpression()), !dbg !4299
  %11 = load ptr, ptr %6, align 8, !dbg !4300
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 5, !dbg !4301
  %13 = getelementptr inbounds %struct.db, ptr %12, i32 0, i32 0, !dbg !4302
  %14 = load ptr, ptr %13, align 8, !dbg !4302
  store ptr %14, ptr %9, align 8, !dbg !4299
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4303, metadata !DIExpression()), !dbg !4304
  %15 = load ptr, ptr %9, align 8, !dbg !4305
  %16 = icmp eq ptr %15, null, !dbg !4307
  br i1 %16, label %17, label %19, !dbg !4308

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !dbg !4309
  call void @sb_puts(ptr noundef %18, ptr noundef @.str.29), !dbg !4311
  br label %77, !dbg !4312

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !dbg !4313
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.30), !dbg !4314
  br label %21, !dbg !4315

21:                                               ; preds = %36, %19
  %22 = load ptr, ptr %9, align 8, !dbg !4316
  %23 = icmp ne ptr %22, null, !dbg !4317
  br i1 %23, label %24, label %50, !dbg !4315

24:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !4318
  br label %25, !dbg !4321

25:                                               ; preds = %33, %24
  %26 = load i32, ptr %10, align 4, !dbg !4322
  %27 = load i32, ptr %8, align 4, !dbg !4324
  %28 = add nsw i32 %27, 1, !dbg !4325
  %29 = icmp slt i32 %26, %28, !dbg !4326
  br i1 %29, label %30, label %36, !dbg !4327

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !dbg !4328
  %32 = load ptr, ptr %7, align 8, !dbg !4329
  call void @sb_puts(ptr noundef %31, ptr noundef %32), !dbg !4330
  br label %33, !dbg !4330

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4, !dbg !4331
  %35 = add nsw i32 %34, 1, !dbg !4331
  store i32 %35, ptr %10, align 4, !dbg !4331
  br label %25, !dbg !4332, !llvm.loop !4333

36:                                               ; preds = %25
  %37 = load ptr, ptr %5, align 8, !dbg !4335
  %38 = load ptr, ptr %9, align 8, !dbg !4336
  %39 = load ptr, ptr %7, align 8, !dbg !4337
  %40 = load i32, ptr %8, align 4, !dbg !4338
  %41 = add nsw i32 %40, 1, !dbg !4339
  call void @emit_value_indented(ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %41), !dbg !4340
  %42 = load ptr, ptr %9, align 8, !dbg !4341
  %43 = getelementptr inbounds %struct.JsonNode, ptr %42, i32 0, i32 2, !dbg !4342
  %44 = load ptr, ptr %43, align 8, !dbg !4342
  store ptr %44, ptr %9, align 8, !dbg !4343
  %45 = load ptr, ptr %5, align 8, !dbg !4344
  %46 = load ptr, ptr %9, align 8, !dbg !4345
  %47 = icmp ne ptr %46, null, !dbg !4346
  %48 = zext i1 %47 to i64, !dbg !4345
  %49 = select i1 %47, ptr @.str.31, ptr @.str.32, !dbg !4345
  call void @sb_puts(ptr noundef %45, ptr noundef %49), !dbg !4347
  br label %21, !dbg !4315, !llvm.loop !4348

50:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !4350
  br label %51, !dbg !4352

51:                                               ; preds = %58, %50
  %52 = load i32, ptr %10, align 4, !dbg !4353
  %53 = load i32, ptr %8, align 4, !dbg !4355
  %54 = icmp slt i32 %52, %53, !dbg !4356
  br i1 %54, label %55, label %61, !dbg !4357

55:                                               ; preds = %51
  %56 = load ptr, ptr %5, align 8, !dbg !4358
  %57 = load ptr, ptr %7, align 8, !dbg !4359
  call void @sb_puts(ptr noundef %56, ptr noundef %57), !dbg !4360
  br label %58, !dbg !4360

58:                                               ; preds = %55
  %59 = load i32, ptr %10, align 4, !dbg !4361
  %60 = add nsw i32 %59, 1, !dbg !4361
  store i32 %60, ptr %10, align 4, !dbg !4361
  br label %51, !dbg !4362, !llvm.loop !4363

61:                                               ; preds = %51
  br label %62, !dbg !4365

62:                                               ; preds = %61
  %63 = load ptr, ptr %5, align 8, !dbg !4366
  %64 = getelementptr inbounds %struct.db_stmt, ptr %63, i32 0, i32 0, !dbg !4366
  %65 = load ptr, ptr %64, align 8, !dbg !4366
  %66 = load ptr, ptr %5, align 8, !dbg !4366
  %67 = getelementptr inbounds %struct.db_stmt, ptr %66, i32 0, i32 1, !dbg !4366
  %68 = load ptr, ptr %67, align 8, !dbg !4366
  %69 = icmp uge ptr %65, %68, !dbg !4366
  br i1 %69, label %70, label %72, !dbg !4369

70:                                               ; preds = %62
  %71 = load ptr, ptr %5, align 8, !dbg !4366
  call void @sb_grow(ptr noundef %71, i64 noundef 1), !dbg !4366
  br label %72, !dbg !4366

72:                                               ; preds = %70, %62
  %73 = load ptr, ptr %5, align 8, !dbg !4369
  %74 = getelementptr inbounds %struct.db_stmt, ptr %73, i32 0, i32 0, !dbg !4369
  %75 = load ptr, ptr %74, align 8, !dbg !4369
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !4369
  store ptr %76, ptr %74, align 8, !dbg !4369
  store i8 93, ptr %75, align 1, !dbg !4369
  br label %77, !dbg !4369

77:                                               ; preds = %72, %17
  ret void, !dbg !4370
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_object_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !4371 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4372, metadata !DIExpression()), !dbg !4373
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4374, metadata !DIExpression()), !dbg !4375
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4376, metadata !DIExpression()), !dbg !4377
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4378, metadata !DIExpression()), !dbg !4379
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4380, metadata !DIExpression()), !dbg !4381
  %11 = load ptr, ptr %6, align 8, !dbg !4382
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 5, !dbg !4383
  %13 = getelementptr inbounds %struct.db, ptr %12, i32 0, i32 0, !dbg !4384
  %14 = load ptr, ptr %13, align 8, !dbg !4384
  store ptr %14, ptr %9, align 8, !dbg !4381
  call void @llvm.dbg.declare(metadata ptr %10, metadata !4385, metadata !DIExpression()), !dbg !4386
  %15 = load ptr, ptr %9, align 8, !dbg !4387
  %16 = icmp eq ptr %15, null, !dbg !4389
  br i1 %16, label %17, label %19, !dbg !4390

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !dbg !4391
  call void @sb_puts(ptr noundef %18, ptr noundef @.str.33), !dbg !4393
  br label %82, !dbg !4394

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !dbg !4395
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.34), !dbg !4396
  br label %21, !dbg !4397

21:                                               ; preds = %36, %19
  %22 = load ptr, ptr %9, align 8, !dbg !4398
  %23 = icmp ne ptr %22, null, !dbg !4399
  br i1 %23, label %24, label %55, !dbg !4397

24:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !4400
  br label %25, !dbg !4403

25:                                               ; preds = %33, %24
  %26 = load i32, ptr %10, align 4, !dbg !4404
  %27 = load i32, ptr %8, align 4, !dbg !4406
  %28 = add nsw i32 %27, 1, !dbg !4407
  %29 = icmp slt i32 %26, %28, !dbg !4408
  br i1 %29, label %30, label %36, !dbg !4409

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !dbg !4410
  %32 = load ptr, ptr %7, align 8, !dbg !4411
  call void @sb_puts(ptr noundef %31, ptr noundef %32), !dbg !4412
  br label %33, !dbg !4412

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4, !dbg !4413
  %35 = add nsw i32 %34, 1, !dbg !4413
  store i32 %35, ptr %10, align 4, !dbg !4413
  br label %25, !dbg !4414, !llvm.loop !4415

36:                                               ; preds = %25
  %37 = load ptr, ptr %5, align 8, !dbg !4417
  %38 = load ptr, ptr %9, align 8, !dbg !4418
  %39 = getelementptr inbounds %struct.JsonNode, ptr %38, i32 0, i32 3, !dbg !4419
  %40 = load ptr, ptr %39, align 8, !dbg !4419
  call void @emit_string(ptr noundef %37, ptr noundef %40), !dbg !4420
  %41 = load ptr, ptr %5, align 8, !dbg !4421
  call void @sb_puts(ptr noundef %41, ptr noundef @.str.35), !dbg !4422
  %42 = load ptr, ptr %5, align 8, !dbg !4423
  %43 = load ptr, ptr %9, align 8, !dbg !4424
  %44 = load ptr, ptr %7, align 8, !dbg !4425
  %45 = load i32, ptr %8, align 4, !dbg !4426
  %46 = add nsw i32 %45, 1, !dbg !4427
  call void @emit_value_indented(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %46), !dbg !4428
  %47 = load ptr, ptr %9, align 8, !dbg !4429
  %48 = getelementptr inbounds %struct.JsonNode, ptr %47, i32 0, i32 2, !dbg !4430
  %49 = load ptr, ptr %48, align 8, !dbg !4430
  store ptr %49, ptr %9, align 8, !dbg !4431
  %50 = load ptr, ptr %5, align 8, !dbg !4432
  %51 = load ptr, ptr %9, align 8, !dbg !4433
  %52 = icmp ne ptr %51, null, !dbg !4434
  %53 = zext i1 %52 to i64, !dbg !4433
  %54 = select i1 %52, ptr @.str.31, ptr @.str.32, !dbg !4433
  call void @sb_puts(ptr noundef %50, ptr noundef %54), !dbg !4435
  br label %21, !dbg !4397, !llvm.loop !4436

55:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !4438
  br label %56, !dbg !4440

56:                                               ; preds = %63, %55
  %57 = load i32, ptr %10, align 4, !dbg !4441
  %58 = load i32, ptr %8, align 4, !dbg !4443
  %59 = icmp slt i32 %57, %58, !dbg !4444
  br i1 %59, label %60, label %66, !dbg !4445

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 8, !dbg !4446
  %62 = load ptr, ptr %7, align 8, !dbg !4447
  call void @sb_puts(ptr noundef %61, ptr noundef %62), !dbg !4448
  br label %63, !dbg !4448

63:                                               ; preds = %60
  %64 = load i32, ptr %10, align 4, !dbg !4449
  %65 = add nsw i32 %64, 1, !dbg !4449
  store i32 %65, ptr %10, align 4, !dbg !4449
  br label %56, !dbg !4450, !llvm.loop !4451

66:                                               ; preds = %56
  br label %67, !dbg !4453

67:                                               ; preds = %66
  %68 = load ptr, ptr %5, align 8, !dbg !4454
  %69 = getelementptr inbounds %struct.db_stmt, ptr %68, i32 0, i32 0, !dbg !4454
  %70 = load ptr, ptr %69, align 8, !dbg !4454
  %71 = load ptr, ptr %5, align 8, !dbg !4454
  %72 = getelementptr inbounds %struct.db_stmt, ptr %71, i32 0, i32 1, !dbg !4454
  %73 = load ptr, ptr %72, align 8, !dbg !4454
  %74 = icmp uge ptr %70, %73, !dbg !4454
  br i1 %74, label %75, label %77, !dbg !4457

75:                                               ; preds = %67
  %76 = load ptr, ptr %5, align 8, !dbg !4454
  call void @sb_grow(ptr noundef %76, i64 noundef 1), !dbg !4454
  br label %77, !dbg !4454

77:                                               ; preds = %75, %67
  %78 = load ptr, ptr %5, align 8, !dbg !4457
  %79 = getelementptr inbounds %struct.db_stmt, ptr %78, i32 0, i32 0, !dbg !4457
  %80 = load ptr, ptr %79, align 8, !dbg !4457
  %81 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !4457
  store ptr %81, ptr %79, align 8, !dbg !4457
  store i8 125, ptr %80, align 1, !dbg !4457
  br label %82, !dbg !4457

82:                                               ; preds = %77, %17
  ret void, !dbg !4458
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_encode_string(ptr noundef %0) #0 !dbg !4459 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.db_stmt, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4462, metadata !DIExpression()), !dbg !4463
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4464, metadata !DIExpression()), !dbg !4465
  call void @sb_init(ptr noundef %3), !dbg !4466
  %4 = load ptr, ptr %2, align 8, !dbg !4467
  call void @emit_string(ptr noundef %3, ptr noundef %4), !dbg !4468
  %5 = call ptr @sb_finish(ptr noundef %3), !dbg !4469
  ret ptr %5, !dbg !4470
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_stringify_length(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4471 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.db_stmt, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4475, metadata !DIExpression()), !dbg !4476
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4477, metadata !DIExpression()), !dbg !4478
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4479, metadata !DIExpression()), !dbg !4480
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4481, metadata !DIExpression()), !dbg !4482
  call void @sb_init(ptr noundef %7), !dbg !4483
  %8 = load ptr, ptr %5, align 8, !dbg !4484
  %9 = icmp ne ptr %8, null, !dbg !4486
  br i1 %9, label %10, label %13, !dbg !4487

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !dbg !4488
  %12 = load ptr, ptr %5, align 8, !dbg !4489
  call void @emit_value_indented(ptr noundef %7, ptr noundef %11, ptr noundef %12, i32 noundef 0), !dbg !4490
  br label %15, !dbg !4490

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !4491
  call void @emit_value(ptr noundef %7, ptr noundef %14), !dbg !4492
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr %6, align 8, !dbg !4493
  %17 = call ptr @sb_finish_length(ptr noundef %7, ptr noundef %16), !dbg !4494
  ret ptr %17, !dbg !4495
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @sb_finish_length(ptr noundef %0, ptr noundef %1) #0 !dbg !4496 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4499, metadata !DIExpression()), !dbg !4500
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4501, metadata !DIExpression()), !dbg !4502
  %5 = load ptr, ptr %3, align 8, !dbg !4503
  %6 = getelementptr inbounds %struct.db_stmt, ptr %5, i32 0, i32 0, !dbg !4504
  %7 = load ptr, ptr %6, align 8, !dbg !4504
  store i8 0, ptr %7, align 1, !dbg !4505
  %8 = load ptr, ptr %3, align 8, !dbg !4506
  %9 = getelementptr inbounds %struct.db_stmt, ptr %8, i32 0, i32 2, !dbg !4506
  %10 = load ptr, ptr %9, align 8, !dbg !4506
  %11 = load ptr, ptr %3, align 8, !dbg !4506
  %12 = getelementptr inbounds %struct.db_stmt, ptr %11, i32 0, i32 0, !dbg !4506
  %13 = load ptr, ptr %12, align 8, !dbg !4506
  %14 = icmp ule ptr %10, %13, !dbg !4506
  br i1 %14, label %15, label %31, !dbg !4506

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !dbg !4506
  %17 = getelementptr inbounds %struct.db_stmt, ptr %16, i32 0, i32 2, !dbg !4506
  %18 = load ptr, ptr %17, align 8, !dbg !4506
  %19 = call i64 @strlen(ptr noundef %18) #17, !dbg !4506
  %20 = load ptr, ptr %3, align 8, !dbg !4506
  %21 = getelementptr inbounds %struct.db_stmt, ptr %20, i32 0, i32 0, !dbg !4506
  %22 = load ptr, ptr %21, align 8, !dbg !4506
  %23 = load ptr, ptr %3, align 8, !dbg !4506
  %24 = getelementptr inbounds %struct.db_stmt, ptr %23, i32 0, i32 2, !dbg !4506
  %25 = load ptr, ptr %24, align 8, !dbg !4506
  %26 = ptrtoint ptr %22 to i64, !dbg !4506
  %27 = ptrtoint ptr %25 to i64, !dbg !4506
  %28 = sub i64 %26, %27, !dbg !4506
  %29 = icmp eq i64 %19, %28, !dbg !4506
  br i1 %29, label %30, label %31, !dbg !4509

30:                                               ; preds = %15
  br label %32, !dbg !4509

31:                                               ; preds = %15, %2
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1.4, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.sb_finish_length) #12, !dbg !4506
  unreachable, !dbg !4506

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8, !dbg !4510
  %34 = getelementptr inbounds %struct.db_stmt, ptr %33, i32 0, i32 0, !dbg !4511
  %35 = load ptr, ptr %34, align 8, !dbg !4511
  %36 = load ptr, ptr %3, align 8, !dbg !4512
  %37 = getelementptr inbounds %struct.db_stmt, ptr %36, i32 0, i32 2, !dbg !4513
  %38 = load ptr, ptr %37, align 8, !dbg !4513
  %39 = ptrtoint ptr %35 to i64, !dbg !4514
  %40 = ptrtoint ptr %38 to i64, !dbg !4514
  %41 = sub i64 %39, %40, !dbg !4514
  %42 = load ptr, ptr %4, align 8, !dbg !4515
  store i64 %41, ptr %42, align 8, !dbg !4516
  %43 = load ptr, ptr %3, align 8, !dbg !4517
  %44 = getelementptr inbounds %struct.db_stmt, ptr %43, i32 0, i32 2, !dbg !4518
  %45 = load ptr, ptr %44, align 8, !dbg !4518
  ret ptr %45, !dbg !4519
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @json_validate(ptr noundef %0) #0 !dbg !4520 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4521, metadata !DIExpression()), !dbg !4522
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4523, metadata !DIExpression()), !dbg !4524
  %5 = load ptr, ptr %3, align 8, !dbg !4525
  store ptr %5, ptr %4, align 8, !dbg !4524
  call void @skip_space(ptr noundef %4), !dbg !4526
  %6 = call zeroext i1 @parse_value(ptr noundef %4, ptr noundef null), !dbg !4527
  br i1 %6, label %8, label %7, !dbg !4529

7:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !4530
  br label %15, !dbg !4530

8:                                                ; preds = %1
  call void @skip_space(ptr noundef %4), !dbg !4531
  %9 = load ptr, ptr %4, align 8, !dbg !4532
  %10 = load i8, ptr %9, align 1, !dbg !4534
  %11 = sext i8 %10 to i32, !dbg !4534
  %12 = icmp ne i32 %11, 0, !dbg !4535
  br i1 %12, label %13, label %14, !dbg !4536

13:                                               ; preds = %8
  store i1 false, ptr %2, align 1, !dbg !4537
  br label %15, !dbg !4537

14:                                               ; preds = %8
  store i1 true, ptr %2, align 1, !dbg !4538
  br label %15, !dbg !4538

15:                                               ; preds = %14, %13, %7
  %16 = load i1, ptr %2, align 1, !dbg !4539
  ret i1 %16, !dbg !4539
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_find_element(ptr noundef %0, i32 noundef %1) #0 !dbg !4540 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4543, metadata !DIExpression()), !dbg !4544
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4549, metadata !DIExpression()), !dbg !4550
  store i32 0, ptr %7, align 4, !dbg !4550
  %8 = load ptr, ptr %4, align 8, !dbg !4551
  %9 = icmp eq ptr %8, null, !dbg !4553
  br i1 %9, label %15, label %10, !dbg !4554

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !4555
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 4, !dbg !4556
  %13 = load i32, ptr %12, align 8, !dbg !4556
  %14 = icmp ne i32 %13, 4, !dbg !4557
  br i1 %14, label %15, label %16, !dbg !4558

15:                                               ; preds = %10, %2
  store ptr null, ptr %3, align 8, !dbg !4559
  br label %36, !dbg !4559

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !dbg !4560
  %18 = call ptr @json_first_child(ptr noundef %17), !dbg !4560
  store ptr %18, ptr %6, align 8, !dbg !4560
  br label %19, !dbg !4560

19:                                               ; preds = %31, %16
  %20 = load ptr, ptr %6, align 8, !dbg !4562
  %21 = icmp ne ptr %20, null, !dbg !4562
  br i1 %21, label %22, label %35, !dbg !4560

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4, !dbg !4564
  %24 = load i32, ptr %5, align 4, !dbg !4567
  %25 = icmp eq i32 %23, %24, !dbg !4568
  br i1 %25, label %26, label %28, !dbg !4569

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !dbg !4570
  store ptr %27, ptr %3, align 8, !dbg !4571
  br label %36, !dbg !4571

28:                                               ; preds = %22
  %29 = load i32, ptr %7, align 4, !dbg !4572
  %30 = add nsw i32 %29, 1, !dbg !4572
  store i32 %30, ptr %7, align 4, !dbg !4572
  br label %31, !dbg !4573

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 8, !dbg !4562
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 2, !dbg !4562
  %34 = load ptr, ptr %33, align 8, !dbg !4562
  store ptr %34, ptr %6, align 8, !dbg !4562
  br label %19, !dbg !4562, !llvm.loop !4574

35:                                               ; preds = %19
  store ptr null, ptr %3, align 8, !dbg !4576
  br label %36, !dbg !4576

36:                                               ; preds = %35, %26, %15
  %37 = load ptr, ptr %3, align 8, !dbg !4577
  ret ptr %37, !dbg !4577
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_find_member(ptr noundef %0, ptr noundef %1) #0 !dbg !4578 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4581, metadata !DIExpression()), !dbg !4582
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4583, metadata !DIExpression()), !dbg !4584
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4585, metadata !DIExpression()), !dbg !4586
  %7 = load ptr, ptr %4, align 8, !dbg !4587
  %8 = icmp eq ptr %7, null, !dbg !4589
  br i1 %8, label %14, label %9, !dbg !4590

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !4591
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 4, !dbg !4592
  %12 = load i32, ptr %11, align 8, !dbg !4592
  %13 = icmp ne i32 %12, 5, !dbg !4593
  br i1 %13, label %14, label %15, !dbg !4594

14:                                               ; preds = %9, %2
  store ptr null, ptr %3, align 8, !dbg !4595
  br label %36, !dbg !4595

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !dbg !4596
  %17 = call ptr @json_first_child(ptr noundef %16), !dbg !4596
  store ptr %17, ptr %6, align 8, !dbg !4596
  br label %18, !dbg !4596

18:                                               ; preds = %31, %15
  %19 = load ptr, ptr %6, align 8, !dbg !4598
  %20 = icmp ne ptr %19, null, !dbg !4598
  br i1 %20, label %21, label %35, !dbg !4596

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !dbg !4600
  %23 = getelementptr inbounds %struct.JsonNode, ptr %22, i32 0, i32 3, !dbg !4602
  %24 = load ptr, ptr %23, align 8, !dbg !4602
  %25 = load ptr, ptr %5, align 8, !dbg !4603
  %26 = call i32 @strcmp(ptr noundef %24, ptr noundef %25) #17, !dbg !4604
  %27 = icmp eq i32 %26, 0, !dbg !4605
  br i1 %27, label %28, label %30, !dbg !4606

28:                                               ; preds = %21
  %29 = load ptr, ptr %6, align 8, !dbg !4607
  store ptr %29, ptr %3, align 8, !dbg !4608
  br label %36, !dbg !4608

30:                                               ; preds = %21
  br label %31, !dbg !4609

31:                                               ; preds = %30
  %32 = load ptr, ptr %6, align 8, !dbg !4598
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 2, !dbg !4598
  %34 = load ptr, ptr %33, align 8, !dbg !4598
  store ptr %34, ptr %6, align 8, !dbg !4598
  br label %18, !dbg !4598, !llvm.loop !4610

35:                                               ; preds = %18
  store ptr null, ptr %3, align 8, !dbg !4612
  br label %36, !dbg !4612

36:                                               ; preds = %35, %28, %14
  %37 = load ptr, ptr %3, align 8, !dbg !4613
  ret ptr %37, !dbg !4613
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #9

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkstring(ptr noundef %0) #0 !dbg !4614 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4615, metadata !DIExpression()), !dbg !4616
  %3 = load ptr, ptr %2, align 8, !dbg !4617
  %4 = call noalias ptr @strdup(ptr noundef %3) #13, !dbg !4618
  %5 = call ptr @mkstring(ptr noundef %4), !dbg !4619
  ret ptr %5, !dbg !4620
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_prepend_element(ptr noundef %0, ptr noundef %1) #0 !dbg !4621 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4622, metadata !DIExpression()), !dbg !4623
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4624, metadata !DIExpression()), !dbg !4625
  %5 = load ptr, ptr %3, align 8, !dbg !4626
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !4626
  %7 = load i32, ptr %6, align 8, !dbg !4626
  %8 = icmp eq i32 %7, 4, !dbg !4626
  br i1 %8, label %9, label %10, !dbg !4629

9:                                                ; preds = %2
  br label %11, !dbg !4629

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1.4, i32 noundef 589, ptr noundef @__PRETTY_FUNCTION__.json_prepend_element) #12, !dbg !4626
  unreachable, !dbg !4626

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !4630
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 0, !dbg !4630
  %14 = load ptr, ptr %13, align 8, !dbg !4630
  %15 = icmp eq ptr %14, null, !dbg !4630
  br i1 %15, label %16, label %17, !dbg !4633

16:                                               ; preds = %11
  br label %18, !dbg !4633

17:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.2.5, ptr noundef @.str.1.4, i32 noundef 590, ptr noundef @__PRETTY_FUNCTION__.json_prepend_element) #12, !dbg !4630
  unreachable, !dbg !4630

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8, !dbg !4634
  %20 = load ptr, ptr %4, align 8, !dbg !4635
  call void @prepend_node(ptr noundef %19, ptr noundef %20), !dbg !4636
  ret void, !dbg !4637
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepend_node(ptr noundef %0, ptr noundef %1) #0 !dbg !4638 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !4639, metadata !DIExpression()), !dbg !4640
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4641, metadata !DIExpression()), !dbg !4642
  %5 = load ptr, ptr %3, align 8, !dbg !4643
  %6 = load ptr, ptr %4, align 8, !dbg !4644
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 0, !dbg !4645
  store ptr %5, ptr %7, align 8, !dbg !4646
  %8 = load ptr, ptr %4, align 8, !dbg !4647
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 1, !dbg !4648
  store ptr null, ptr %9, align 8, !dbg !4649
  %10 = load ptr, ptr %3, align 8, !dbg !4650
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 5, !dbg !4651
  %12 = getelementptr inbounds %struct.db, ptr %11, i32 0, i32 0, !dbg !4652
  %13 = load ptr, ptr %12, align 8, !dbg !4652
  %14 = load ptr, ptr %4, align 8, !dbg !4653
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 2, !dbg !4654
  store ptr %13, ptr %15, align 8, !dbg !4655
  %16 = load ptr, ptr %3, align 8, !dbg !4656
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 5, !dbg !4658
  %18 = getelementptr inbounds %struct.db, ptr %17, i32 0, i32 0, !dbg !4659
  %19 = load ptr, ptr %18, align 8, !dbg !4659
  %20 = icmp ne ptr %19, null, !dbg !4660
  br i1 %20, label %21, label %28, !dbg !4661

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !4662
  %23 = load ptr, ptr %3, align 8, !dbg !4663
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !4664
  %25 = getelementptr inbounds %struct.db, ptr %24, i32 0, i32 0, !dbg !4665
  %26 = load ptr, ptr %25, align 8, !dbg !4665
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 1, !dbg !4666
  store ptr %22, ptr %27, align 8, !dbg !4667
  br label %33, !dbg !4663

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8, !dbg !4668
  %30 = load ptr, ptr %3, align 8, !dbg !4669
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 5, !dbg !4670
  %32 = getelementptr inbounds %struct.db, ptr %31, i32 0, i32 1, !dbg !4671
  store ptr %29, ptr %32, align 8, !dbg !4672
  br label %33

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %4, align 8, !dbg !4673
  %35 = load ptr, ptr %3, align 8, !dbg !4674
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 5, !dbg !4675
  %37 = getelementptr inbounds %struct.db, ptr %36, i32 0, i32 0, !dbg !4676
  store ptr %34, ptr %37, align 8, !dbg !4677
  ret void, !dbg !4678
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_append_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4679 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4682, metadata !DIExpression()), !dbg !4683
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4684, metadata !DIExpression()), !dbg !4685
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4686, metadata !DIExpression()), !dbg !4687
  %7 = load ptr, ptr %4, align 8, !dbg !4688
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !4688
  %9 = load i32, ptr %8, align 8, !dbg !4688
  %10 = icmp eq i32 %9, 5, !dbg !4688
  br i1 %10, label %11, label %12, !dbg !4691

11:                                               ; preds = %3
  br label %13, !dbg !4691

12:                                               ; preds = %3
  call void @__assert_fail(ptr noundef @.str.3.6, ptr noundef @.str.1.4, i32 noundef 597, ptr noundef @__PRETTY_FUNCTION__.json_append_member) #12, !dbg !4688
  unreachable, !dbg !4688

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !4692
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 0, !dbg !4692
  %16 = load ptr, ptr %15, align 8, !dbg !4692
  %17 = icmp eq ptr %16, null, !dbg !4692
  br i1 %17, label %18, label %19, !dbg !4695

18:                                               ; preds = %13
  br label %20, !dbg !4695

19:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1.4, i32 noundef 598, ptr noundef @__PRETTY_FUNCTION__.json_append_member) #12, !dbg !4692
  unreachable, !dbg !4692

20:                                               ; preds = %18
  %21 = load ptr, ptr %4, align 8, !dbg !4696
  %22 = load ptr, ptr %5, align 8, !dbg !4697
  %23 = call noalias ptr @strdup(ptr noundef %22) #13, !dbg !4698
  %24 = load ptr, ptr %6, align 8, !dbg !4699
  call void @append_member(ptr noundef %21, ptr noundef %23, ptr noundef %24), !dbg !4700
  ret void, !dbg !4701
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_prepend_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !4702 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4703, metadata !DIExpression()), !dbg !4704
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4705, metadata !DIExpression()), !dbg !4706
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4707, metadata !DIExpression()), !dbg !4708
  %7 = load ptr, ptr %4, align 8, !dbg !4709
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !4709
  %9 = load i32, ptr %8, align 8, !dbg !4709
  %10 = icmp eq i32 %9, 5, !dbg !4709
  br i1 %10, label %11, label %12, !dbg !4712

11:                                               ; preds = %3
  br label %13, !dbg !4712

12:                                               ; preds = %3
  call void @__assert_fail(ptr noundef @.str.3.6, ptr noundef @.str.1.4, i32 noundef 605, ptr noundef @__PRETTY_FUNCTION__.json_prepend_member) #12, !dbg !4709
  unreachable, !dbg !4709

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !4713
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 0, !dbg !4713
  %16 = load ptr, ptr %15, align 8, !dbg !4713
  %17 = icmp eq ptr %16, null, !dbg !4713
  br i1 %17, label %18, label %19, !dbg !4716

18:                                               ; preds = %13
  br label %20, !dbg !4716

19:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1.4, i32 noundef 606, ptr noundef @__PRETTY_FUNCTION__.json_prepend_member) #12, !dbg !4713
  unreachable, !dbg !4713

20:                                               ; preds = %18
  %21 = load ptr, ptr %5, align 8, !dbg !4717
  %22 = call noalias ptr @strdup(ptr noundef %21) #13, !dbg !4718
  %23 = load ptr, ptr %6, align 8, !dbg !4719
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 3, !dbg !4720
  store ptr %22, ptr %24, align 8, !dbg !4721
  %25 = load ptr, ptr %4, align 8, !dbg !4722
  %26 = load ptr, ptr %6, align 8, !dbg !4723
  call void @prepend_node(ptr noundef %25, ptr noundef %26), !dbg !4724
  ret void, !dbg !4725
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @json_check(ptr noundef %0, ptr noundef %1) #0 !dbg !4726 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !4729, metadata !DIExpression()), !dbg !4730
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !4731, metadata !DIExpression()), !dbg !4732
  %10 = load ptr, ptr %4, align 8, !dbg !4733
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 3, !dbg !4735
  %12 = load ptr, ptr %11, align 8, !dbg !4735
  %13 = icmp ne ptr %12, null, !dbg !4736
  br i1 %13, label %14, label %28, !dbg !4737

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !4738
  %16 = getelementptr inbounds %struct.JsonNode, ptr %15, i32 0, i32 3, !dbg !4739
  %17 = load ptr, ptr %16, align 8, !dbg !4739
  %18 = call zeroext i1 @utf8_validate(ptr noundef %17), !dbg !4740
  br i1 %18, label %28, label %19, !dbg !4741

19:                                               ; preds = %14
  br label %20, !dbg !4742

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 8, !dbg !4743
  %22 = icmp ne ptr %21, null, !dbg !4743
  br i1 %22, label %23, label %26, !dbg !4746

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !4743
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 256, ptr noundef @.str.5) #13, !dbg !4743
  br label %26, !dbg !4743

26:                                               ; preds = %23, %20
  store i1 false, ptr %3, align 1, !dbg !4746
  br label %323, !dbg !4746

27:                                               ; No predecessors!
  br label %28, !dbg !4746

28:                                               ; preds = %27, %14, %2
  %29 = load ptr, ptr %4, align 8, !dbg !4747
  %30 = getelementptr inbounds %struct.JsonNode, ptr %29, i32 0, i32 4, !dbg !4749
  %31 = load i32, ptr %30, align 8, !dbg !4749
  %32 = call zeroext i1 @tag_is_valid(i32 noundef %31), !dbg !4750
  br i1 %32, label %45, label %33, !dbg !4751

33:                                               ; preds = %28
  br label %34, !dbg !4752

34:                                               ; preds = %33
  %35 = load ptr, ptr %5, align 8, !dbg !4753
  %36 = icmp ne ptr %35, null, !dbg !4753
  br i1 %36, label %37, label %43, !dbg !4756

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !dbg !4753
  %39 = load ptr, ptr %4, align 8, !dbg !4753
  %40 = getelementptr inbounds %struct.JsonNode, ptr %39, i32 0, i32 4, !dbg !4753
  %41 = load i32, ptr %40, align 8, !dbg !4753
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %38, i64 noundef 256, ptr noundef @.str.6, i32 noundef %41) #13, !dbg !4753
  br label %43, !dbg !4753

43:                                               ; preds = %37, %34
  store i1 false, ptr %3, align 1, !dbg !4756
  br label %323, !dbg !4756

44:                                               ; No predecessors!
  br label %45, !dbg !4756

45:                                               ; preds = %44, %28
  %46 = load ptr, ptr %4, align 8, !dbg !4757
  %47 = getelementptr inbounds %struct.JsonNode, ptr %46, i32 0, i32 4, !dbg !4759
  %48 = load i32, ptr %47, align 8, !dbg !4759
  %49 = icmp eq i32 %48, 1, !dbg !4760
  br i1 %49, label %50, label %74, !dbg !4761

50:                                               ; preds = %45
  %51 = load ptr, ptr %4, align 8, !dbg !4762
  %52 = getelementptr inbounds %struct.JsonNode, ptr %51, i32 0, i32 5, !dbg !4765
  %53 = load i8, ptr %52, align 8, !dbg !4765
  %54 = trunc i8 %53 to i1, !dbg !4765
  %55 = zext i1 %54 to i32, !dbg !4762
  %56 = icmp ne i32 %55, 0, !dbg !4766
  br i1 %56, label %57, label %73, !dbg !4767

57:                                               ; preds = %50
  %58 = load ptr, ptr %4, align 8, !dbg !4768
  %59 = getelementptr inbounds %struct.JsonNode, ptr %58, i32 0, i32 5, !dbg !4769
  %60 = load i8, ptr %59, align 8, !dbg !4769
  %61 = trunc i8 %60 to i1, !dbg !4769
  %62 = zext i1 %61 to i32, !dbg !4768
  %63 = icmp ne i32 %62, 1, !dbg !4770
  br i1 %63, label %64, label %73, !dbg !4771

64:                                               ; preds = %57
  br label %65, !dbg !4772

65:                                               ; preds = %64
  %66 = load ptr, ptr %5, align 8, !dbg !4773
  %67 = icmp ne ptr %66, null, !dbg !4773
  br i1 %67, label %68, label %71, !dbg !4776

68:                                               ; preds = %65
  %69 = load ptr, ptr %5, align 8, !dbg !4773
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %69, i64 noundef 256, ptr noundef @.str.7, i32 noundef 0, i32 noundef 1) #13, !dbg !4773
  br label %71, !dbg !4773

71:                                               ; preds = %68, %65
  store i1 false, ptr %3, align 1, !dbg !4776
  br label %323, !dbg !4776

72:                                               ; No predecessors!
  br label %73, !dbg !4776

73:                                               ; preds = %72, %57, %50
  br label %322, !dbg !4777

74:                                               ; preds = %45
  %75 = load ptr, ptr %4, align 8, !dbg !4778
  %76 = getelementptr inbounds %struct.JsonNode, ptr %75, i32 0, i32 4, !dbg !4780
  %77 = load i32, ptr %76, align 8, !dbg !4780
  %78 = icmp eq i32 %77, 2, !dbg !4781
  br i1 %78, label %79, label %108, !dbg !4782

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 8, !dbg !4783
  %81 = getelementptr inbounds %struct.JsonNode, ptr %80, i32 0, i32 5, !dbg !4786
  %82 = load ptr, ptr %81, align 8, !dbg !4786
  %83 = icmp eq ptr %82, null, !dbg !4787
  br i1 %83, label %84, label %93, !dbg !4788

84:                                               ; preds = %79
  br label %85, !dbg !4789

85:                                               ; preds = %84
  %86 = load ptr, ptr %5, align 8, !dbg !4790
  %87 = icmp ne ptr %86, null, !dbg !4790
  br i1 %87, label %88, label %91, !dbg !4793

88:                                               ; preds = %85
  %89 = load ptr, ptr %5, align 8, !dbg !4790
  %90 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %89, i64 noundef 256, ptr noundef @.str.8) #13, !dbg !4790
  br label %91, !dbg !4790

91:                                               ; preds = %88, %85
  store i1 false, ptr %3, align 1, !dbg !4793
  br label %323, !dbg !4793

92:                                               ; No predecessors!
  br label %93, !dbg !4793

93:                                               ; preds = %92, %79
  %94 = load ptr, ptr %4, align 8, !dbg !4794
  %95 = getelementptr inbounds %struct.JsonNode, ptr %94, i32 0, i32 5, !dbg !4796
  %96 = load ptr, ptr %95, align 8, !dbg !4796
  %97 = call zeroext i1 @utf8_validate(ptr noundef %96), !dbg !4797
  br i1 %97, label %107, label %98, !dbg !4798

98:                                               ; preds = %93
  br label %99, !dbg !4799

99:                                               ; preds = %98
  %100 = load ptr, ptr %5, align 8, !dbg !4800
  %101 = icmp ne ptr %100, null, !dbg !4800
  br i1 %101, label %102, label %105, !dbg !4803

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 8, !dbg !4800
  %104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %103, i64 noundef 256, ptr noundef @.str.9) #13, !dbg !4800
  br label %105, !dbg !4800

105:                                              ; preds = %102, %99
  store i1 false, ptr %3, align 1, !dbg !4803
  br label %323, !dbg !4803

106:                                              ; No predecessors!
  br label %107, !dbg !4803

107:                                              ; preds = %106, %93
  br label %321, !dbg !4804

108:                                              ; preds = %74
  %109 = load ptr, ptr %4, align 8, !dbg !4805
  %110 = getelementptr inbounds %struct.JsonNode, ptr %109, i32 0, i32 4, !dbg !4807
  %111 = load i32, ptr %110, align 8, !dbg !4807
  %112 = icmp eq i32 %111, 4, !dbg !4808
  br i1 %112, label %118, label %113, !dbg !4809

113:                                              ; preds = %108
  %114 = load ptr, ptr %4, align 8, !dbg !4810
  %115 = getelementptr inbounds %struct.JsonNode, ptr %114, i32 0, i32 4, !dbg !4811
  %116 = load i32, ptr %115, align 8, !dbg !4811
  %117 = icmp eq i32 %116, 5, !dbg !4812
  br i1 %117, label %118, label %320, !dbg !4813

118:                                              ; preds = %113, %108
  call void @llvm.dbg.declare(metadata ptr %6, metadata !4814, metadata !DIExpression()), !dbg !4816
  %119 = load ptr, ptr %4, align 8, !dbg !4817
  %120 = getelementptr inbounds %struct.JsonNode, ptr %119, i32 0, i32 5, !dbg !4818
  %121 = getelementptr inbounds %struct.db, ptr %120, i32 0, i32 0, !dbg !4819
  %122 = load ptr, ptr %121, align 8, !dbg !4819
  store ptr %122, ptr %6, align 8, !dbg !4816
  call void @llvm.dbg.declare(metadata ptr %7, metadata !4820, metadata !DIExpression()), !dbg !4821
  %123 = load ptr, ptr %4, align 8, !dbg !4822
  %124 = getelementptr inbounds %struct.JsonNode, ptr %123, i32 0, i32 5, !dbg !4823
  %125 = getelementptr inbounds %struct.db, ptr %124, i32 0, i32 1, !dbg !4824
  %126 = load ptr, ptr %125, align 8, !dbg !4824
  store ptr %126, ptr %7, align 8, !dbg !4821
  %127 = load ptr, ptr %6, align 8, !dbg !4825
  %128 = icmp eq ptr %127, null, !dbg !4827
  br i1 %128, label %132, label %129, !dbg !4828

129:                                              ; preds = %118
  %130 = load ptr, ptr %7, align 8, !dbg !4829
  %131 = icmp eq ptr %130, null, !dbg !4830
  br i1 %131, label %132, label %157, !dbg !4831

132:                                              ; preds = %129, %118
  %133 = load ptr, ptr %6, align 8, !dbg !4832
  %134 = icmp ne ptr %133, null, !dbg !4835
  br i1 %134, label %135, label %144, !dbg !4836

135:                                              ; preds = %132
  br label %136, !dbg !4837

136:                                              ; preds = %135
  %137 = load ptr, ptr %5, align 8, !dbg !4838
  %138 = icmp ne ptr %137, null, !dbg !4838
  br i1 %138, label %139, label %142, !dbg !4841

139:                                              ; preds = %136
  %140 = load ptr, ptr %5, align 8, !dbg !4838
  %141 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %140, i64 noundef 256, ptr noundef @.str.10) #13, !dbg !4838
  br label %142, !dbg !4838

142:                                              ; preds = %139, %136
  store i1 false, ptr %3, align 1, !dbg !4841
  br label %323, !dbg !4841

143:                                              ; No predecessors!
  br label %144, !dbg !4841

144:                                              ; preds = %143, %132
  %145 = load ptr, ptr %7, align 8, !dbg !4842
  %146 = icmp ne ptr %145, null, !dbg !4844
  br i1 %146, label %147, label %156, !dbg !4845

147:                                              ; preds = %144
  br label %148, !dbg !4846

148:                                              ; preds = %147
  %149 = load ptr, ptr %5, align 8, !dbg !4847
  %150 = icmp ne ptr %149, null, !dbg !4847
  br i1 %150, label %151, label %154, !dbg !4850

151:                                              ; preds = %148
  %152 = load ptr, ptr %5, align 8, !dbg !4847
  %153 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %152, i64 noundef 256, ptr noundef @.str.11) #13, !dbg !4847
  br label %154, !dbg !4847

154:                                              ; preds = %151, %148
  store i1 false, ptr %3, align 1, !dbg !4850
  br label %323, !dbg !4850

155:                                              ; No predecessors!
  br label %156, !dbg !4850

156:                                              ; preds = %155, %144
  br label %319, !dbg !4851

157:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %8, metadata !4852, metadata !DIExpression()), !dbg !4854
  call void @llvm.dbg.declare(metadata ptr %9, metadata !4855, metadata !DIExpression()), !dbg !4856
  store ptr null, ptr %9, align 8, !dbg !4856
  %158 = load ptr, ptr %6, align 8, !dbg !4857
  %159 = getelementptr inbounds %struct.JsonNode, ptr %158, i32 0, i32 1, !dbg !4859
  %160 = load ptr, ptr %159, align 8, !dbg !4859
  %161 = icmp ne ptr %160, null, !dbg !4860
  br i1 %161, label %162, label %171, !dbg !4861

162:                                              ; preds = %157
  br label %163, !dbg !4862

163:                                              ; preds = %162
  %164 = load ptr, ptr %5, align 8, !dbg !4863
  %165 = icmp ne ptr %164, null, !dbg !4863
  br i1 %165, label %166, label %169, !dbg !4866

166:                                              ; preds = %163
  %167 = load ptr, ptr %5, align 8, !dbg !4863
  %168 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %167, i64 noundef 256, ptr noundef @.str.12) #13, !dbg !4863
  br label %169, !dbg !4863

169:                                              ; preds = %166, %163
  store i1 false, ptr %3, align 1, !dbg !4866
  br label %323, !dbg !4866

170:                                              ; No predecessors!
  br label %171, !dbg !4866

171:                                              ; preds = %170, %157
  %172 = load ptr, ptr %6, align 8, !dbg !4867
  store ptr %172, ptr %8, align 8, !dbg !4869
  br label %173, !dbg !4870

173:                                              ; preds = %300, %171
  %174 = load ptr, ptr %8, align 8, !dbg !4871
  %175 = icmp ne ptr %174, null, !dbg !4873
  br i1 %175, label %176, label %305, !dbg !4874

176:                                              ; preds = %173
  %177 = load ptr, ptr %8, align 8, !dbg !4875
  %178 = load ptr, ptr %4, align 8, !dbg !4878
  %179 = icmp eq ptr %177, %178, !dbg !4879
  br i1 %179, label %180, label %189, !dbg !4880

180:                                              ; preds = %176
  br label %181, !dbg !4881

181:                                              ; preds = %180
  %182 = load ptr, ptr %5, align 8, !dbg !4882
  %183 = icmp ne ptr %182, null, !dbg !4882
  br i1 %183, label %184, label %187, !dbg !4885

184:                                              ; preds = %181
  %185 = load ptr, ptr %5, align 8, !dbg !4882
  %186 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %185, i64 noundef 256, ptr noundef @.str.13) #13, !dbg !4882
  br label %187, !dbg !4882

187:                                              ; preds = %184, %181
  store i1 false, ptr %3, align 1, !dbg !4885
  br label %323, !dbg !4885

188:                                              ; No predecessors!
  br label %189, !dbg !4885

189:                                              ; preds = %188, %176
  %190 = load ptr, ptr %8, align 8, !dbg !4886
  %191 = getelementptr inbounds %struct.JsonNode, ptr %190, i32 0, i32 2, !dbg !4888
  %192 = load ptr, ptr %191, align 8, !dbg !4888
  %193 = load ptr, ptr %8, align 8, !dbg !4889
  %194 = icmp eq ptr %192, %193, !dbg !4890
  br i1 %194, label %195, label %204, !dbg !4891

195:                                              ; preds = %189
  br label %196, !dbg !4892

196:                                              ; preds = %195
  %197 = load ptr, ptr %5, align 8, !dbg !4893
  %198 = icmp ne ptr %197, null, !dbg !4893
  br i1 %198, label %199, label %202, !dbg !4896

199:                                              ; preds = %196
  %200 = load ptr, ptr %5, align 8, !dbg !4893
  %201 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %200, i64 noundef 256, ptr noundef @.str.14) #13, !dbg !4893
  br label %202, !dbg !4893

202:                                              ; preds = %199, %196
  store i1 false, ptr %3, align 1, !dbg !4896
  br label %323, !dbg !4896

203:                                              ; No predecessors!
  br label %204, !dbg !4896

204:                                              ; preds = %203, %189
  %205 = load ptr, ptr %8, align 8, !dbg !4897
  %206 = getelementptr inbounds %struct.JsonNode, ptr %205, i32 0, i32 2, !dbg !4899
  %207 = load ptr, ptr %206, align 8, !dbg !4899
  %208 = load ptr, ptr %6, align 8, !dbg !4900
  %209 = icmp eq ptr %207, %208, !dbg !4901
  br i1 %209, label %210, label %219, !dbg !4902

210:                                              ; preds = %204
  br label %211, !dbg !4903

211:                                              ; preds = %210
  %212 = load ptr, ptr %5, align 8, !dbg !4904
  %213 = icmp ne ptr %212, null, !dbg !4904
  br i1 %213, label %214, label %217, !dbg !4907

214:                                              ; preds = %211
  %215 = load ptr, ptr %5, align 8, !dbg !4904
  %216 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %215, i64 noundef 256, ptr noundef @.str.15) #13, !dbg !4904
  br label %217, !dbg !4904

217:                                              ; preds = %214, %211
  store i1 false, ptr %3, align 1, !dbg !4907
  br label %323, !dbg !4907

218:                                              ; No predecessors!
  br label %219, !dbg !4907

219:                                              ; preds = %218, %204
  %220 = load ptr, ptr %8, align 8, !dbg !4908
  %221 = getelementptr inbounds %struct.JsonNode, ptr %220, i32 0, i32 0, !dbg !4910
  %222 = load ptr, ptr %221, align 8, !dbg !4910
  %223 = load ptr, ptr %4, align 8, !dbg !4911
  %224 = icmp ne ptr %222, %223, !dbg !4912
  br i1 %224, label %225, label %234, !dbg !4913

225:                                              ; preds = %219
  br label %226, !dbg !4914

226:                                              ; preds = %225
  %227 = load ptr, ptr %5, align 8, !dbg !4915
  %228 = icmp ne ptr %227, null, !dbg !4915
  br i1 %228, label %229, label %232, !dbg !4918

229:                                              ; preds = %226
  %230 = load ptr, ptr %5, align 8, !dbg !4915
  %231 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %230, i64 noundef 256, ptr noundef @.str.16) #13, !dbg !4915
  br label %232, !dbg !4915

232:                                              ; preds = %229, %226
  store i1 false, ptr %3, align 1, !dbg !4918
  br label %323, !dbg !4918

233:                                              ; No predecessors!
  br label %234, !dbg !4918

234:                                              ; preds = %233, %219
  %235 = load ptr, ptr %8, align 8, !dbg !4919
  %236 = getelementptr inbounds %struct.JsonNode, ptr %235, i32 0, i32 2, !dbg !4921
  %237 = load ptr, ptr %236, align 8, !dbg !4921
  %238 = icmp ne ptr %237, null, !dbg !4922
  br i1 %238, label %239, label %256, !dbg !4923

239:                                              ; preds = %234
  %240 = load ptr, ptr %8, align 8, !dbg !4924
  %241 = getelementptr inbounds %struct.JsonNode, ptr %240, i32 0, i32 2, !dbg !4925
  %242 = load ptr, ptr %241, align 8, !dbg !4925
  %243 = getelementptr inbounds %struct.JsonNode, ptr %242, i32 0, i32 1, !dbg !4926
  %244 = load ptr, ptr %243, align 8, !dbg !4926
  %245 = load ptr, ptr %8, align 8, !dbg !4927
  %246 = icmp ne ptr %244, %245, !dbg !4928
  br i1 %246, label %247, label %256, !dbg !4929

247:                                              ; preds = %239
  br label %248, !dbg !4930

248:                                              ; preds = %247
  %249 = load ptr, ptr %5, align 8, !dbg !4931
  %250 = icmp ne ptr %249, null, !dbg !4931
  br i1 %250, label %251, label %254, !dbg !4934

251:                                              ; preds = %248
  %252 = load ptr, ptr %5, align 8, !dbg !4931
  %253 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %252, i64 noundef 256, ptr noundef @.str.17) #13, !dbg !4931
  br label %254, !dbg !4931

254:                                              ; preds = %251, %248
  store i1 false, ptr %3, align 1, !dbg !4934
  br label %323, !dbg !4934

255:                                              ; No predecessors!
  br label %256, !dbg !4934

256:                                              ; preds = %255, %239, %234
  %257 = load ptr, ptr %4, align 8, !dbg !4935
  %258 = getelementptr inbounds %struct.JsonNode, ptr %257, i32 0, i32 4, !dbg !4937
  %259 = load i32, ptr %258, align 8, !dbg !4937
  %260 = icmp eq i32 %259, 4, !dbg !4938
  br i1 %260, label %261, label %275, !dbg !4939

261:                                              ; preds = %256
  %262 = load ptr, ptr %8, align 8, !dbg !4940
  %263 = getelementptr inbounds %struct.JsonNode, ptr %262, i32 0, i32 3, !dbg !4941
  %264 = load ptr, ptr %263, align 8, !dbg !4941
  %265 = icmp ne ptr %264, null, !dbg !4942
  br i1 %265, label %266, label %275, !dbg !4943

266:                                              ; preds = %261
  br label %267, !dbg !4944

267:                                              ; preds = %266
  %268 = load ptr, ptr %5, align 8, !dbg !4945
  %269 = icmp ne ptr %268, null, !dbg !4945
  br i1 %269, label %270, label %273, !dbg !4948

270:                                              ; preds = %267
  %271 = load ptr, ptr %5, align 8, !dbg !4945
  %272 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %271, i64 noundef 256, ptr noundef @.str.18) #13, !dbg !4945
  br label %273, !dbg !4945

273:                                              ; preds = %270, %267
  store i1 false, ptr %3, align 1, !dbg !4948
  br label %323, !dbg !4948

274:                                              ; No predecessors!
  br label %275, !dbg !4948

275:                                              ; preds = %274, %261, %256
  %276 = load ptr, ptr %4, align 8, !dbg !4949
  %277 = getelementptr inbounds %struct.JsonNode, ptr %276, i32 0, i32 4, !dbg !4951
  %278 = load i32, ptr %277, align 8, !dbg !4951
  %279 = icmp eq i32 %278, 5, !dbg !4952
  br i1 %279, label %280, label %294, !dbg !4953

280:                                              ; preds = %275
  %281 = load ptr, ptr %8, align 8, !dbg !4954
  %282 = getelementptr inbounds %struct.JsonNode, ptr %281, i32 0, i32 3, !dbg !4955
  %283 = load ptr, ptr %282, align 8, !dbg !4955
  %284 = icmp eq ptr %283, null, !dbg !4956
  br i1 %284, label %285, label %294, !dbg !4957

285:                                              ; preds = %280
  br label %286, !dbg !4958

286:                                              ; preds = %285
  %287 = load ptr, ptr %5, align 8, !dbg !4959
  %288 = icmp ne ptr %287, null, !dbg !4959
  br i1 %288, label %289, label %292, !dbg !4962

289:                                              ; preds = %286
  %290 = load ptr, ptr %5, align 8, !dbg !4959
  %291 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %290, i64 noundef 256, ptr noundef @.str.19) #13, !dbg !4959
  br label %292, !dbg !4959

292:                                              ; preds = %289, %286
  store i1 false, ptr %3, align 1, !dbg !4962
  br label %323, !dbg !4962

293:                                              ; No predecessors!
  br label %294, !dbg !4962

294:                                              ; preds = %293, %280, %275
  %295 = load ptr, ptr %8, align 8, !dbg !4963
  %296 = load ptr, ptr %5, align 8, !dbg !4965
  %297 = call zeroext i1 @json_check(ptr noundef %295, ptr noundef %296), !dbg !4966
  br i1 %297, label %299, label %298, !dbg !4967

298:                                              ; preds = %294
  store i1 false, ptr %3, align 1, !dbg !4968
  br label %323, !dbg !4968

299:                                              ; preds = %294
  br label %300, !dbg !4969

300:                                              ; preds = %299
  %301 = load ptr, ptr %8, align 8, !dbg !4970
  store ptr %301, ptr %9, align 8, !dbg !4971
  %302 = load ptr, ptr %8, align 8, !dbg !4972
  %303 = getelementptr inbounds %struct.JsonNode, ptr %302, i32 0, i32 2, !dbg !4973
  %304 = load ptr, ptr %303, align 8, !dbg !4973
  store ptr %304, ptr %8, align 8, !dbg !4974
  br label %173, !dbg !4975, !llvm.loop !4976

305:                                              ; preds = %173
  %306 = load ptr, ptr %9, align 8, !dbg !4978
  %307 = load ptr, ptr %7, align 8, !dbg !4980
  %308 = icmp ne ptr %306, %307, !dbg !4981
  br i1 %308, label %309, label %318, !dbg !4982

309:                                              ; preds = %305
  br label %310, !dbg !4983

310:                                              ; preds = %309
  %311 = load ptr, ptr %5, align 8, !dbg !4984
  %312 = icmp ne ptr %311, null, !dbg !4984
  br i1 %312, label %313, label %316, !dbg !4987

313:                                              ; preds = %310
  %314 = load ptr, ptr %5, align 8, !dbg !4984
  %315 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %314, i64 noundef 256, ptr noundef @.str.20) #13, !dbg !4984
  br label %316, !dbg !4984

316:                                              ; preds = %313, %310
  store i1 false, ptr %3, align 1, !dbg !4987
  br label %323, !dbg !4987

317:                                              ; No predecessors!
  br label %318, !dbg !4987

318:                                              ; preds = %317, %305
  br label %319

319:                                              ; preds = %318, %156
  br label %320, !dbg !4988

320:                                              ; preds = %319, %113
  br label %321

321:                                              ; preds = %320, %107
  br label %322

322:                                              ; preds = %321, %73
  store i1 true, ptr %3, align 1, !dbg !4989
  br label %323, !dbg !4989

323:                                              ; preds = %322, %316, %298, %292, %273, %254, %232, %217, %202, %187, %169, %154, %142, %105, %91, %71, %43, %26
  %324 = load i1, ptr %3, align 1, !dbg !4990
  ret i1 %324, !dbg !4990
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !231 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.lwan_t_, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4 x ptr], align 16
  store i32 0, ptr %1, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !4991, metadata !DIExpression()), !dbg !4992
  call void @lwan_init(ptr noundef %2), !dbg !4993
  %8 = call i64 @time(ptr noundef null) #13, !dbg !4994
  %9 = trunc i64 %8 to i32, !dbg !4995
  call void @srand(i32 noundef %9) #13, !dbg !4996
  %10 = call ptr @getenv(ptr noundef @.str.5.7) #13, !dbg !4997
  %11 = icmp ne ptr %10, null, !dbg !4997
  br i1 %11, label %12, label %38, !dbg !4999

12:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5000, metadata !DIExpression()), !dbg !5002
  %13 = call ptr @getenv(ptr noundef @.str.6.8) #13, !dbg !5003
  store ptr %13, ptr %3, align 8, !dbg !5002
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5004, metadata !DIExpression()), !dbg !5005
  %14 = call ptr @getenv(ptr noundef @.str.7.9) #13, !dbg !5006
  store ptr %14, ptr %4, align 8, !dbg !5005
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5007, metadata !DIExpression()), !dbg !5008
  %15 = call ptr @getenv(ptr noundef @.str.8.10) #13, !dbg !5009
  store ptr %15, ptr %5, align 8, !dbg !5008
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5010, metadata !DIExpression()), !dbg !5011
  %16 = call ptr @getenv(ptr noundef @.str.9.11) #13, !dbg !5012
  store ptr %16, ptr %6, align 8, !dbg !5011
  %17 = load ptr, ptr %3, align 8, !dbg !5013
  %18 = icmp ne ptr %17, null, !dbg !5013
  br i1 %18, label %20, label %19, !dbg !5015

19:                                               ; preds = %12
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 327, ptr noundef @__FUNCTION__.main, ptr noundef @.str.11.13) #18, !dbg !5016
  unreachable, !dbg !5016

20:                                               ; preds = %12
  %21 = load ptr, ptr %4, align 8, !dbg !5017
  %22 = icmp ne ptr %21, null, !dbg !5017
  br i1 %22, label %24, label %23, !dbg !5019

23:                                               ; preds = %20
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 329, ptr noundef @__FUNCTION__.main, ptr noundef @.str.12.14) #18, !dbg !5020
  unreachable, !dbg !5020

24:                                               ; preds = %20
  %25 = load ptr, ptr %5, align 8, !dbg !5021
  %26 = icmp ne ptr %25, null, !dbg !5021
  br i1 %26, label %28, label %27, !dbg !5023

27:                                               ; preds = %24
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 331, ptr noundef @__FUNCTION__.main, ptr noundef @.str.13.15) #18, !dbg !5024
  unreachable, !dbg !5024

28:                                               ; preds = %24
  %29 = load ptr, ptr %6, align 8, !dbg !5025
  %30 = icmp ne ptr %29, null, !dbg !5025
  br i1 %30, label %32, label %31, !dbg !5027

31:                                               ; preds = %28
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 333, ptr noundef @__FUNCTION__.main, ptr noundef @.str.14.16) #18, !dbg !5028
  unreachable, !dbg !5028

32:                                               ; preds = %28
  %33 = load ptr, ptr %5, align 8, !dbg !5029
  %34 = load ptr, ptr %3, align 8, !dbg !5030
  %35 = load ptr, ptr %4, align 8, !dbg !5031
  %36 = load ptr, ptr %6, align 8, !dbg !5032
  %37 = call ptr @db_connect_mysql(ptr noundef %33, ptr noundef %34, ptr noundef %35, ptr noundef %36), !dbg !5033
  store ptr %37, ptr @database, align 8, !dbg !5034
  br label %41, !dbg !5035

38:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5036, metadata !DIExpression()), !dbg !5039
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %7, ptr align 16 @__const.main.pragmas, i64 32, i1 false), !dbg !5039
  %39 = getelementptr inbounds [4 x ptr], ptr %7, i64 0, i64 0, !dbg !5040
  %40 = call ptr @db_connect_sqlite(ptr noundef @.str.18.17, i1 noundef zeroext true, ptr noundef %39), !dbg !5041
  store ptr %40, ptr @database, align 8, !dbg !5042
  br label %41

41:                                               ; preds = %38, %32
  %42 = load ptr, ptr @database, align 8, !dbg !5043
  %43 = icmp ne ptr %42, null, !dbg !5043
  br i1 %43, label %45, label %44, !dbg !5045

44:                                               ; preds = %41
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 347, ptr noundef @__FUNCTION__.main, ptr noundef @.str.19.18) #18, !dbg !5046
  unreachable, !dbg !5046

45:                                               ; preds = %41
  %46 = call ptr @lwan_tpl_compile_string(ptr noundef @fortunes_template_str, ptr noundef @fortune_desc), !dbg !5047
  store ptr %46, ptr @fortune_tpl, align 8, !dbg !5048
  %47 = load ptr, ptr @fortune_tpl, align 8, !dbg !5049
  %48 = icmp ne ptr %47, null, !dbg !5049
  br i1 %48, label %50, label %49, !dbg !5051

49:                                               ; preds = %45
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str.10.12, i32 noundef 351, ptr noundef @__FUNCTION__.main, ptr noundef @.str.20.19) #18, !dbg !5052
  unreachable, !dbg !5052

50:                                               ; preds = %45
  call void @lwan_set_url_map(ptr noundef %2, ptr noundef @main.url_map), !dbg !5053
  call void @lwan_main_loop(ptr noundef %2), !dbg !5054
  %51 = load ptr, ptr @fortune_tpl, align 8, !dbg !5055
  call void @lwan_tpl_free(ptr noundef %51), !dbg !5056
  %52 = load ptr, ptr @database, align 8, !dbg !5057
  call void @db_disconnect(ptr noundef %52), !dbg !5058
  call void @lwan_shutdown(ptr noundef %2), !dbg !5059
  ret i32 0, !dbg !5060
}

declare void @lwan_init(ptr noundef) #4

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #3

; Function Attrs: nounwind
declare void @srand(i32 noundef) #3

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #11

declare ptr @lwan_tpl_compile_string(ptr noundef, ptr noundef) #4

declare void @lwan_set_url_map(ptr noundef, ptr noundef) #4

declare void @lwan_main_loop(ptr noundef) #4

declare void @lwan_tpl_free(ptr noundef) #4

declare void @lwan_shutdown(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5061 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5062, metadata !DIExpression()), !dbg !5063
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5064, metadata !DIExpression()), !dbg !5065
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5066, metadata !DIExpression()), !dbg !5067
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5068, metadata !DIExpression()), !dbg !5089
  %9 = call ptr @json_mkobject(), !dbg !5090
  store ptr %9, ptr %8, align 8, !dbg !5089
  %10 = load ptr, ptr %8, align 8, !dbg !5091
  %11 = icmp ne ptr %10, null, !dbg !5091
  %12 = xor i1 %11, true, !dbg !5091
  %13 = zext i1 %12 to i32, !dbg !5091
  %14 = sext i32 %13 to i64, !dbg !5091
  %15 = icmp ne i64 %14, 0, !dbg !5091
  br i1 %15, label %16, label %17, !dbg !5093

16:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !5094
  br label %23, !dbg !5094

17:                                               ; preds = %3
  %18 = load ptr, ptr %8, align 8, !dbg !5095
  %19 = call ptr @json_mkstring(ptr noundef @hello_world), !dbg !5096
  call void @json_append_member(ptr noundef %18, ptr noundef @.str.21.52, ptr noundef %19), !dbg !5097
  %20 = load ptr, ptr %6, align 8, !dbg !5098
  %21 = load ptr, ptr %8, align 8, !dbg !5099
  %22 = call i32 @json_response(ptr noundef %20, ptr noundef %21), !dbg !5100
  store i32 %22, ptr %4, align 4, !dbg !5101
  br label %23, !dbg !5101

23:                                               ; preds = %17, %16
  %24 = load i32, ptr %4, align 4, !dbg !5102
  ret i32 %24, !dbg !5102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5103 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [1 x %struct.db_row], align 16
  %9 = alloca [2 x %struct.db_row], align 16
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5104, metadata !DIExpression()), !dbg !5105
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5106, metadata !DIExpression()), !dbg !5107
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5108, metadata !DIExpression()), !dbg !5109
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5110, metadata !DIExpression()), !dbg !5123
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %8, ptr align 16 @__const.db.rows, i64 24, i1 false), !dbg !5123
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5124, metadata !DIExpression()), !dbg !5126
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 48, i1 false), !dbg !5126
  %12 = getelementptr inbounds [2 x %struct.db_row], ptr %9, i32 0, i32 0, !dbg !5126
  %13 = getelementptr inbounds %struct.db_row, ptr %12, i32 0, i32 1, !dbg !5126
  store i8 105, ptr %13, align 8, !dbg !5126
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5127, metadata !DIExpression()), !dbg !5130
  %14 = load ptr, ptr @database, align 8, !dbg !5131
  %15 = call ptr @db_prepare_stmt(ptr noundef %14, ptr noundef @random_number_query, i64 noundef 41), !dbg !5132
  store ptr %15, ptr %10, align 8, !dbg !5130
  %16 = load ptr, ptr %10, align 8, !dbg !5133
  %17 = icmp ne ptr %16, null, !dbg !5133
  %18 = xor i1 %17, true, !dbg !5133
  %19 = zext i1 %18 to i32, !dbg !5133
  %20 = sext i32 %19 to i64, !dbg !5133
  %21 = icmp ne i64 %20, 0, !dbg !5133
  br i1 %21, label %22, label %23, !dbg !5135

22:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !5136
  br label %40, !dbg !5136

23:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5137, metadata !DIExpression()), !dbg !5138
  %24 = load ptr, ptr %10, align 8, !dbg !5139
  %25 = getelementptr inbounds [1 x %struct.db_row], ptr %8, i64 0, i64 0, !dbg !5140
  %26 = getelementptr inbounds [2 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !5141
  %27 = call ptr @db_query(ptr noundef %24, ptr noundef %25, ptr noundef %26), !dbg !5142
  store ptr %27, ptr %11, align 8, !dbg !5138
  %28 = load ptr, ptr %10, align 8, !dbg !5143
  call void @db_stmt_finalize(ptr noundef %28), !dbg !5144
  %29 = load ptr, ptr %11, align 8, !dbg !5145
  %30 = icmp ne ptr %29, null, !dbg !5145
  %31 = xor i1 %30, true, !dbg !5145
  %32 = zext i1 %31 to i32, !dbg !5145
  %33 = sext i32 %32 to i64, !dbg !5145
  %34 = icmp ne i64 %33, 0, !dbg !5145
  br i1 %34, label %35, label %36, !dbg !5147

35:                                               ; preds = %23
  store i32 500, ptr %4, align 4, !dbg !5148
  br label %40, !dbg !5148

36:                                               ; preds = %23
  %37 = load ptr, ptr %6, align 8, !dbg !5149
  %38 = load ptr, ptr %11, align 8, !dbg !5150
  %39 = call i32 @json_response(ptr noundef %37, ptr noundef %38), !dbg !5151
  store i32 %39, ptr %4, align 4, !dbg !5152
  br label %40, !dbg !5152

40:                                               ; preds = %36, %35, %22
  %41 = load i32, ptr %4, align 4, !dbg !5153
  ret i32 %41, !dbg !5153
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queries(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5154 {
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
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5155, metadata !DIExpression()), !dbg !5156
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5157, metadata !DIExpression()), !dbg !5158
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5159, metadata !DIExpression()), !dbg !5160
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5161, metadata !DIExpression()), !dbg !5162
  %15 = load ptr, ptr %5, align 8, !dbg !5163
  %16 = call ptr @lwan_request_get_query_param(ptr noundef %15, ptr noundef @.str.25.48), !dbg !5164
  store ptr %16, ptr %8, align 8, !dbg !5162
  %17 = load ptr, ptr %8, align 8, !dbg !5165
  %18 = icmp ne ptr %17, null, !dbg !5165
  %19 = xor i1 %18, true, !dbg !5165
  %20 = zext i1 %19 to i32, !dbg !5165
  %21 = sext i32 %20 to i64, !dbg !5165
  %22 = icmp ne i64 %21, 0, !dbg !5165
  br i1 %22, label %23, label %24, !dbg !5167

23:                                               ; preds = %3
  store i32 400, ptr %4, align 4, !dbg !5168
  br label %91, !dbg !5168

24:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5169, metadata !DIExpression()), !dbg !5170
  %25 = load ptr, ptr %8, align 8, !dbg !5171
  %26 = call i64 @parse_long(ptr noundef %25, i64 noundef -1), !dbg !5172
  store i64 %26, ptr %9, align 8, !dbg !5170
  %27 = load i64, ptr %9, align 8, !dbg !5173
  %28 = icmp sle i64 %27, 0, !dbg !5173
  %29 = zext i1 %28 to i32, !dbg !5173
  %30 = sext i32 %29 to i64, !dbg !5173
  %31 = icmp ne i64 %30, 0, !dbg !5173
  br i1 %31, label %32, label %33, !dbg !5175

32:                                               ; preds = %24
  store i64 1, ptr %9, align 8, !dbg !5176
  br label %41, !dbg !5177

33:                                               ; preds = %24
  %34 = load i64, ptr %9, align 8, !dbg !5178
  %35 = icmp sgt i64 %34, 500, !dbg !5178
  %36 = zext i1 %35 to i32, !dbg !5178
  %37 = sext i32 %36 to i64, !dbg !5178
  %38 = icmp ne i64 %37, 0, !dbg !5178
  br i1 %38, label %39, label %40, !dbg !5180

39:                                               ; preds = %33
  store i64 500, ptr %9, align 8, !dbg !5181
  br label %40, !dbg !5182

40:                                               ; preds = %39, %33
  br label %41

41:                                               ; preds = %40, %32
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5183, metadata !DIExpression()), !dbg !5184
  %42 = load ptr, ptr @database, align 8, !dbg !5185
  %43 = call ptr @db_prepare_stmt(ptr noundef %42, ptr noundef @random_number_query, i64 noundef 41), !dbg !5186
  store ptr %43, ptr %10, align 8, !dbg !5184
  %44 = load ptr, ptr %10, align 8, !dbg !5187
  %45 = icmp ne ptr %44, null, !dbg !5187
  %46 = xor i1 %45, true, !dbg !5187
  %47 = zext i1 %46 to i32, !dbg !5187
  %48 = sext i32 %47 to i64, !dbg !5187
  %49 = icmp ne i64 %48, 0, !dbg !5187
  br i1 %49, label %50, label %51, !dbg !5189

50:                                               ; preds = %41
  store i32 500, ptr %4, align 4, !dbg !5190
  br label %91, !dbg !5190

51:                                               ; preds = %41
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5191, metadata !DIExpression()), !dbg !5192
  %52 = call ptr @json_mkarray(), !dbg !5193
  store ptr %52, ptr %11, align 8, !dbg !5192
  %53 = load ptr, ptr %11, align 8, !dbg !5194
  %54 = icmp ne ptr %53, null, !dbg !5194
  %55 = xor i1 %54, true, !dbg !5194
  %56 = zext i1 %55 to i32, !dbg !5194
  %57 = sext i32 %56 to i64, !dbg !5194
  %58 = icmp ne i64 %57, 0, !dbg !5194
  br i1 %58, label %59, label %60, !dbg !5196

59:                                               ; preds = %51
  br label %89, !dbg !5197

60:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %12, metadata !5198, metadata !DIExpression()), !dbg !5199
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %12, ptr align 16 @__const.queries.rows, i64 24, i1 false), !dbg !5199
  call void @llvm.dbg.declare(metadata ptr %13, metadata !5200, metadata !DIExpression()), !dbg !5201
  call void @llvm.memset.p0.i64(ptr align 16 %13, i8 0, i64 48, i1 false), !dbg !5201
  %61 = getelementptr inbounds [2 x %struct.db_row], ptr %13, i32 0, i32 0, !dbg !5201
  %62 = getelementptr inbounds %struct.db_row, ptr %61, i32 0, i32 1, !dbg !5201
  store i8 105, ptr %62, align 8, !dbg !5201
  br label %63, !dbg !5202

63:                                               ; preds = %79, %60
  %64 = load i64, ptr %9, align 8, !dbg !5203
  %65 = add nsw i64 %64, -1, !dbg !5203
  store i64 %65, ptr %9, align 8, !dbg !5203
  %66 = icmp ne i64 %64, 0, !dbg !5202
  br i1 %66, label %67, label %82, !dbg !5202

67:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %14, metadata !5204, metadata !DIExpression()), !dbg !5206
  %68 = load ptr, ptr %10, align 8, !dbg !5207
  %69 = getelementptr inbounds [1 x %struct.db_row], ptr %12, i64 0, i64 0, !dbg !5208
  %70 = getelementptr inbounds [2 x %struct.db_row], ptr %13, i64 0, i64 0, !dbg !5209
  %71 = call ptr @db_query(ptr noundef %68, ptr noundef %69, ptr noundef %70), !dbg !5210
  store ptr %71, ptr %14, align 8, !dbg !5206
  %72 = load ptr, ptr %14, align 8, !dbg !5211
  %73 = icmp ne ptr %72, null, !dbg !5211
  %74 = xor i1 %73, true, !dbg !5211
  %75 = zext i1 %74 to i32, !dbg !5211
  %76 = sext i32 %75 to i64, !dbg !5211
  %77 = icmp ne i64 %76, 0, !dbg !5211
  br i1 %77, label %78, label %79, !dbg !5213

78:                                               ; preds = %67
  br label %87, !dbg !5214

79:                                               ; preds = %67
  %80 = load ptr, ptr %11, align 8, !dbg !5215
  %81 = load ptr, ptr %14, align 8, !dbg !5216
  call void @json_append_element(ptr noundef %80, ptr noundef %81), !dbg !5217
  br label %63, !dbg !5202, !llvm.loop !5218

82:                                               ; preds = %63
  %83 = load ptr, ptr %10, align 8, !dbg !5220
  call void @db_stmt_finalize(ptr noundef %83), !dbg !5221
  %84 = load ptr, ptr %6, align 8, !dbg !5222
  %85 = load ptr, ptr %11, align 8, !dbg !5223
  %86 = call i32 @json_response(ptr noundef %84, ptr noundef %85), !dbg !5224
  store i32 %86, ptr %4, align 4, !dbg !5225
  br label %91, !dbg !5225

87:                                               ; preds = %78
  call void @llvm.dbg.label(metadata !5226), !dbg !5227
  %88 = load ptr, ptr %11, align 8, !dbg !5228
  call void @json_delete(ptr noundef %88), !dbg !5229
  br label %89, !dbg !5229

89:                                               ; preds = %87, %59
  call void @llvm.dbg.label(metadata !5230), !dbg !5231
  %90 = load ptr, ptr %10, align 8, !dbg !5232
  call void @db_stmt_finalize(ptr noundef %90), !dbg !5233
  store i32 500, ptr %4, align 4, !dbg !5234
  br label %91, !dbg !5234

91:                                               ; preds = %89, %82, %50, %23
  %92 = load i32, ptr %4, align 4, !dbg !5235
  ret i32 %92, !dbg !5235
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plaintext(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5236 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5237, metadata !DIExpression()), !dbg !5238
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5239, metadata !DIExpression()), !dbg !5240
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5241, metadata !DIExpression()), !dbg !5242
  %7 = load ptr, ptr %5, align 8, !dbg !5243
  %8 = getelementptr inbounds %struct.lwan_response_t_, ptr %7, i32 0, i32 0, !dbg !5244
  %9 = load ptr, ptr %8, align 8, !dbg !5244
  %10 = call zeroext i1 @strbuf_set_static(ptr noundef %9, ptr noundef @hello_world, i64 noundef 13), !dbg !5245
  %11 = load ptr, ptr %5, align 8, !dbg !5246
  %12 = getelementptr inbounds %struct.lwan_response_t_, ptr %11, i32 0, i32 1, !dbg !5247
  store ptr @.str.26.47, ptr %12, align 8, !dbg !5248
  ret i32 200, !dbg !5249
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortunes(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5250 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.Fortune, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5251, metadata !DIExpression()), !dbg !5252
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5253, metadata !DIExpression()), !dbg !5254
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5255, metadata !DIExpression()), !dbg !5256
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5257, metadata !DIExpression()), !dbg !5258
  %9 = load ptr, ptr @fortune_tpl, align 8, !dbg !5259
  %10 = load ptr, ptr %6, align 8, !dbg !5259
  %11 = getelementptr inbounds %struct.lwan_response_t_, ptr %10, i32 0, i32 0, !dbg !5259
  %12 = load ptr, ptr %11, align 8, !dbg !5259
  %13 = call ptr @lwan_tpl_apply_with_buffer(ptr noundef %9, ptr noundef %12, ptr noundef %8), !dbg !5259
  %14 = icmp ne ptr %13, null, !dbg !5259
  %15 = xor i1 %14, true, !dbg !5259
  %16 = zext i1 %15 to i32, !dbg !5259
  %17 = sext i32 %16 to i64, !dbg !5259
  %18 = icmp ne i64 %17, 0, !dbg !5259
  br i1 %18, label %19, label %20, !dbg !5261

19:                                               ; preds = %3
  store i32 500, ptr %4, align 4, !dbg !5262
  br label %23, !dbg !5262

20:                                               ; preds = %3
  %21 = load ptr, ptr %6, align 8, !dbg !5263
  %22 = getelementptr inbounds %struct.lwan_response_t_, ptr %21, i32 0, i32 1, !dbg !5264
  store ptr @.str.27.46, ptr %22, align 8, !dbg !5265
  store i32 200, ptr %4, align 4, !dbg !5266
  br label %23, !dbg !5266

23:                                               ; preds = %20, %19
  %24 = load i32, ptr %4, align 4, !dbg !5267
  ret i32 %24, !dbg !5267
}

declare ptr @lwan_tpl_apply_with_buffer(ptr noundef, ptr noundef, ptr noundef) #4

declare zeroext i1 @strbuf_set_static(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @lwan_request_get_query_param(ptr noundef, ptr noundef) #4

declare i64 @parse_long(ptr noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @db_query(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !5268 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5272, metadata !DIExpression()), !dbg !5273
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5274, metadata !DIExpression()), !dbg !5275
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5276, metadata !DIExpression()), !dbg !5277
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5278, metadata !DIExpression()), !dbg !5279
  store ptr null, ptr %7, align 8, !dbg !5279
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5280, metadata !DIExpression()), !dbg !5281
  %9 = call i32 @rand() #13, !dbg !5282
  %10 = srem i32 %9, 10000, !dbg !5283
  store i32 %10, ptr %8, align 4, !dbg !5281
  %11 = load i32, ptr %8, align 4, !dbg !5284
  %12 = load ptr, ptr %5, align 8, !dbg !5285
  %13 = getelementptr inbounds %struct.db_row, ptr %12, i64 0, !dbg !5285
  %14 = getelementptr inbounds %struct.db_row, ptr %13, i32 0, i32 0, !dbg !5286
  store i32 %11, ptr %14, align 8, !dbg !5287
  %15 = load ptr, ptr %4, align 8, !dbg !5288
  %16 = load ptr, ptr %5, align 8, !dbg !5288
  %17 = call zeroext i1 @db_stmt_bind(ptr noundef %15, ptr noundef %16, i64 noundef 1), !dbg !5288
  %18 = xor i1 %17, true, !dbg !5288
  %19 = zext i1 %18 to i32, !dbg !5288
  %20 = sext i32 %19 to i64, !dbg !5288
  %21 = icmp ne i64 %20, 0, !dbg !5288
  br i1 %21, label %22, label %23, !dbg !5290

22:                                               ; preds = %3
  br label %53, !dbg !5291

23:                                               ; preds = %3
  %24 = load ptr, ptr %4, align 8, !dbg !5292
  %25 = load ptr, ptr %6, align 8, !dbg !5292
  %26 = call zeroext i1 @db_stmt_step(ptr noundef %24, ptr noundef %25), !dbg !5292
  %27 = xor i1 %26, true, !dbg !5292
  %28 = zext i1 %27 to i32, !dbg !5292
  %29 = sext i32 %28 to i64, !dbg !5292
  %30 = icmp ne i64 %29, 0, !dbg !5292
  br i1 %30, label %31, label %32, !dbg !5294

31:                                               ; preds = %23
  br label %53, !dbg !5295

32:                                               ; preds = %23
  %33 = call ptr @json_mkobject(), !dbg !5296
  store ptr %33, ptr %7, align 8, !dbg !5297
  %34 = load ptr, ptr %7, align 8, !dbg !5298
  %35 = icmp ne ptr %34, null, !dbg !5298
  %36 = xor i1 %35, true, !dbg !5298
  %37 = zext i1 %36 to i32, !dbg !5298
  %38 = sext i32 %37 to i64, !dbg !5298
  %39 = icmp ne i64 %38, 0, !dbg !5298
  br i1 %39, label %40, label %41, !dbg !5300

40:                                               ; preds = %32
  br label %53, !dbg !5301

41:                                               ; preds = %32
  %42 = load ptr, ptr %7, align 8, !dbg !5302
  %43 = load i32, ptr %8, align 4, !dbg !5303
  %44 = sitofp i32 %43 to double, !dbg !5303
  %45 = call ptr @json_mknumber(double noundef %44), !dbg !5304
  call void @json_append_member(ptr noundef %42, ptr noundef @.str.23.50, ptr noundef %45), !dbg !5305
  %46 = load ptr, ptr %7, align 8, !dbg !5306
  %47 = load ptr, ptr %6, align 8, !dbg !5307
  %48 = getelementptr inbounds %struct.db_row, ptr %47, i64 0, !dbg !5307
  %49 = getelementptr inbounds %struct.db_row, ptr %48, i32 0, i32 0, !dbg !5308
  %50 = load i32, ptr %49, align 8, !dbg !5309
  %51 = sitofp i32 %50 to double, !dbg !5307
  %52 = call ptr @json_mknumber(double noundef %51), !dbg !5310
  call void @json_append_member(ptr noundef %46, ptr noundef @.str.24.51, ptr noundef %52), !dbg !5311
  br label %53, !dbg !5311

53:                                               ; preds = %41, %40, %31, %22
  call void @llvm.dbg.label(metadata !5312), !dbg !5313
  %54 = load ptr, ptr %7, align 8, !dbg !5314
  ret ptr %54, !dbg !5315
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @json_response(ptr noundef %0, ptr noundef %1) #0 !dbg !5316 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5319, metadata !DIExpression()), !dbg !5320
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5321, metadata !DIExpression()), !dbg !5322
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5323, metadata !DIExpression()), !dbg !5324
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5325, metadata !DIExpression()), !dbg !5326
  %8 = load ptr, ptr %5, align 8, !dbg !5327
  %9 = call ptr @json_stringify_length(ptr noundef %8, ptr noundef null, ptr noundef %6), !dbg !5328
  store ptr %9, ptr %7, align 8, !dbg !5329
  %10 = load ptr, ptr %5, align 8, !dbg !5330
  call void @json_delete(ptr noundef %10), !dbg !5331
  %11 = load ptr, ptr %7, align 8, !dbg !5332
  %12 = icmp ne ptr %11, null, !dbg !5332
  %13 = xor i1 %12, true, !dbg !5332
  %14 = zext i1 %13 to i32, !dbg !5332
  %15 = sext i32 %14 to i64, !dbg !5332
  %16 = icmp ne i64 %15, 0, !dbg !5332
  br i1 %16, label %17, label %18, !dbg !5334

17:                                               ; preds = %2
  store i32 500, ptr %3, align 4, !dbg !5335
  br label %28, !dbg !5335

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !5336
  %20 = getelementptr inbounds %struct.lwan_response_t_, ptr %19, i32 0, i32 0, !dbg !5337
  %21 = load ptr, ptr %20, align 8, !dbg !5337
  %22 = load ptr, ptr %7, align 8, !dbg !5338
  %23 = load i64, ptr %6, align 8, !dbg !5339
  %24 = call zeroext i1 @strbuf_set(ptr noundef %21, ptr noundef %22, i64 noundef %23), !dbg !5340
  %25 = load ptr, ptr %7, align 8, !dbg !5341
  call void @free(ptr noundef %25) #13, !dbg !5342
  %26 = load ptr, ptr %4, align 8, !dbg !5343
  %27 = getelementptr inbounds %struct.lwan_response_t_, ptr %26, i32 0, i32 1, !dbg !5344
  store ptr @.str.22.49, ptr %27, align 8, !dbg !5345
  store i32 200, ptr %3, align 4, !dbg !5346
  br label %28, !dbg !5346

28:                                               ; preds = %18, %17
  %29 = load i32, ptr %3, align 4, !dbg !5347
  ret i32 %29, !dbg !5347
}

declare zeroext i1 @strbuf_set(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @rand() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_list_generator(ptr noundef %0) #0 !dbg !479 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !5348, metadata !DIExpression()), !dbg !5349
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5350, metadata !DIExpression()), !dbg !5354
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5355, metadata !DIExpression()), !dbg !5357
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5358, metadata !DIExpression()), !dbg !5365
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5366, metadata !DIExpression()), !dbg !5367
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5368, metadata !DIExpression()), !dbg !5369
  %11 = load ptr, ptr @database, align 8, !dbg !5370
  %12 = call ptr @db_prepare_stmt(ptr noundef %11, ptr noundef @fortune_list_generator.fortune_query, i64 noundef 21), !dbg !5371
  store ptr %12, ptr %7, align 8, !dbg !5372
  %13 = load ptr, ptr %7, align 8, !dbg !5373
  %14 = icmp ne ptr %13, null, !dbg !5373
  %15 = xor i1 %14, true, !dbg !5373
  %16 = zext i1 %15 to i32, !dbg !5373
  %17 = sext i32 %16 to i64, !dbg !5373
  %18 = icmp ne i64 %17, 0, !dbg !5373
  br i1 %18, label %19, label %20, !dbg !5375

19:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !5376
  br label %84, !dbg !5376

20:                                               ; preds = %1
  call void @array_init(ptr noundef %6, i64 noundef 16), !dbg !5377
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5378, metadata !DIExpression()), !dbg !5380
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 72, i1 false), !dbg !5380
  %21 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !5381
  %22 = getelementptr inbounds %struct.db_row, ptr %21, i32 0, i32 1, !dbg !5382
  store i8 105, ptr %22, align 8, !dbg !5382
  %23 = getelementptr inbounds %struct.db_row, ptr %21, i64 1, !dbg !5381
  %24 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 0, !dbg !5383
  %25 = getelementptr inbounds [256 x i8], ptr %4, i64 0, i64 0, !dbg !5384
  store ptr %25, ptr %24, align 8, !dbg !5385
  %26 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 1, !dbg !5383
  store i8 115, ptr %26, align 8, !dbg !5383
  %27 = getelementptr inbounds %struct.db_row, ptr %23, i32 0, i32 2, !dbg !5383
  store i64 256, ptr %27, align 8, !dbg !5383
  %28 = getelementptr inbounds %struct.db_row, ptr %23, i64 1, !dbg !5381
  br label %29, !dbg !5386

29:                                               ; preds = %43, %20
  %30 = load ptr, ptr %7, align 8, !dbg !5387
  %31 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !5388
  %32 = call zeroext i1 @db_stmt_step(ptr noundef %30, ptr noundef %31), !dbg !5389
  br i1 %32, label %33, label %44, !dbg !5386

33:                                               ; preds = %29
  %34 = load ptr, ptr %3, align 8, !dbg !5390
  %35 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 0, !dbg !5393
  %36 = getelementptr inbounds %struct.db_row, ptr %35, i32 0, i32 0, !dbg !5394
  %37 = load i32, ptr %36, align 16, !dbg !5395
  %38 = getelementptr inbounds [3 x %struct.db_row], ptr %9, i64 0, i64 1, !dbg !5396
  %39 = getelementptr inbounds %struct.db_row, ptr %38, i32 0, i32 0, !dbg !5397
  %40 = load ptr, ptr %39, align 8, !dbg !5398
  %41 = call zeroext i1 @append_fortune(ptr noundef %34, ptr noundef %6, i32 noundef %37, ptr noundef %40), !dbg !5399
  br i1 %41, label %43, label %42, !dbg !5400

42:                                               ; preds = %33
  br label %82, !dbg !5401

43:                                               ; preds = %33
  br label %29, !dbg !5386, !llvm.loop !5402

44:                                               ; preds = %29
  %45 = load ptr, ptr %3, align 8, !dbg !5404
  %46 = call zeroext i1 @append_fortune(ptr noundef %45, ptr noundef %6, i32 noundef 0, ptr noundef @.str.29.56), !dbg !5406
  br i1 %46, label %48, label %47, !dbg !5407

47:                                               ; preds = %44
  br label %82, !dbg !5408

48:                                               ; preds = %44
  call void @array_sort(ptr noundef %6, ptr noundef @fortune_compare), !dbg !5409
  %49 = load ptr, ptr %3, align 8, !dbg !5410
  %50 = call ptr @coro_get_data(ptr noundef %49), !dbg !5411
  store ptr %50, ptr %5, align 8, !dbg !5412
  store i64 0, ptr %8, align 8, !dbg !5413
  br label %51, !dbg !5415

51:                                               ; preds = %78, %48
  %52 = load i64, ptr %8, align 8, !dbg !5416
  %53 = getelementptr inbounds %struct.array, ptr %6, i32 0, i32 1, !dbg !5418
  %54 = load i64, ptr %53, align 8, !dbg !5418
  %55 = icmp ult i64 %52, %54, !dbg !5419
  br i1 %55, label %56, label %81, !dbg !5420

56:                                               ; preds = %51
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5421, metadata !DIExpression()), !dbg !5423
  %57 = getelementptr inbounds %struct.array, ptr %6, i32 0, i32 0, !dbg !5424
  %58 = load ptr, ptr %57, align 8, !dbg !5424
  %59 = load i64, ptr %8, align 8, !dbg !5425
  %60 = getelementptr inbounds ptr, ptr %58, i64 %59, !dbg !5426
  %61 = load ptr, ptr %60, align 8, !dbg !5426
  store ptr %61, ptr %10, align 8, !dbg !5423
  %62 = load ptr, ptr %10, align 8, !dbg !5427
  %63 = getelementptr inbounds %struct.Fortune, ptr %62, i32 0, i32 0, !dbg !5428
  %64 = getelementptr inbounds %struct.anon.10, ptr %63, i32 0, i32 1, !dbg !5429
  %65 = load i32, ptr %64, align 8, !dbg !5429
  %66 = load ptr, ptr %5, align 8, !dbg !5430
  %67 = getelementptr inbounds %struct.Fortune, ptr %66, i32 0, i32 0, !dbg !5431
  %68 = getelementptr inbounds %struct.anon.10, ptr %67, i32 0, i32 1, !dbg !5432
  store i32 %65, ptr %68, align 8, !dbg !5433
  %69 = load ptr, ptr %10, align 8, !dbg !5434
  %70 = getelementptr inbounds %struct.Fortune, ptr %69, i32 0, i32 0, !dbg !5435
  %71 = getelementptr inbounds %struct.anon.10, ptr %70, i32 0, i32 2, !dbg !5436
  %72 = load ptr, ptr %71, align 8, !dbg !5436
  %73 = load ptr, ptr %5, align 8, !dbg !5437
  %74 = getelementptr inbounds %struct.Fortune, ptr %73, i32 0, i32 0, !dbg !5438
  %75 = getelementptr inbounds %struct.anon.10, ptr %74, i32 0, i32 2, !dbg !5439
  store ptr %72, ptr %75, align 8, !dbg !5440
  %76 = load ptr, ptr %3, align 8, !dbg !5441
  %77 = call i32 @coro_yield(ptr noundef %76, i32 noundef 1), !dbg !5442
  br label %78, !dbg !5443

78:                                               ; preds = %56
  %79 = load i64, ptr %8, align 8, !dbg !5444
  %80 = add i64 %79, 1, !dbg !5444
  store i64 %80, ptr %8, align 8, !dbg !5444
  br label %51, !dbg !5445, !llvm.loop !5446

81:                                               ; preds = %51
  br label %82, !dbg !5447

82:                                               ; preds = %81, %47, %42
  call void @llvm.dbg.label(metadata !5448), !dbg !5449
  call void @array_free_array(ptr noundef %6), !dbg !5450
  %83 = load ptr, ptr %7, align 8, !dbg !5451
  call void @db_stmt_finalize(ptr noundef %83), !dbg !5452
  store i32 0, ptr %2, align 4, !dbg !5453
  br label %84, !dbg !5453

84:                                               ; preds = %82, %19
  %85 = load i32, ptr %2, align 4, !dbg !5454
  ret i32 %85, !dbg !5454
}

declare void @lwan_append_int_to_strbuf(ptr noundef, ptr noundef) #4

declare zeroext i1 @lwan_tpl_int_is_empty(ptr noundef) #4

declare void @lwan_append_str_escaped_to_strbuf(ptr noundef, ptr noundef) #4

declare zeroext i1 @lwan_tpl_str_is_empty(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @append_fortune(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !5455 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5459, metadata !DIExpression()), !dbg !5460
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5461, metadata !DIExpression()), !dbg !5462
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5463, metadata !DIExpression()), !dbg !5464
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5465, metadata !DIExpression()), !dbg !5466
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5467, metadata !DIExpression()), !dbg !5468
  %11 = load ptr, ptr %6, align 8, !dbg !5469
  %12 = call ptr @coro_malloc(ptr noundef %11, i64 noundef 24), !dbg !5470
  store ptr %12, ptr %10, align 8, !dbg !5471
  %13 = load ptr, ptr %10, align 8, !dbg !5472
  %14 = icmp ne ptr %13, null, !dbg !5472
  %15 = xor i1 %14, true, !dbg !5472
  %16 = zext i1 %15 to i32, !dbg !5472
  %17 = sext i32 %16 to i64, !dbg !5472
  %18 = icmp ne i64 %17, 0, !dbg !5472
  br i1 %18, label %19, label %20, !dbg !5474

19:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !5475
  br label %46, !dbg !5475

20:                                               ; preds = %4
  %21 = load i32, ptr %8, align 4, !dbg !5476
  %22 = load ptr, ptr %10, align 8, !dbg !5477
  %23 = getelementptr inbounds %struct.Fortune, ptr %22, i32 0, i32 0, !dbg !5478
  %24 = getelementptr inbounds %struct.anon.10, ptr %23, i32 0, i32 1, !dbg !5479
  store i32 %21, ptr %24, align 8, !dbg !5480
  %25 = load ptr, ptr %6, align 8, !dbg !5481
  %26 = load ptr, ptr %9, align 8, !dbg !5482
  %27 = call ptr @coro_strdup(ptr noundef %25, ptr noundef %26), !dbg !5483
  %28 = load ptr, ptr %10, align 8, !dbg !5484
  %29 = getelementptr inbounds %struct.Fortune, ptr %28, i32 0, i32 0, !dbg !5485
  %30 = getelementptr inbounds %struct.anon.10, ptr %29, i32 0, i32 2, !dbg !5486
  store ptr %27, ptr %30, align 8, !dbg !5487
  %31 = load ptr, ptr %10, align 8, !dbg !5488
  %32 = getelementptr inbounds %struct.Fortune, ptr %31, i32 0, i32 0, !dbg !5488
  %33 = getelementptr inbounds %struct.anon.10, ptr %32, i32 0, i32 2, !dbg !5488
  %34 = load ptr, ptr %33, align 8, !dbg !5488
  %35 = icmp ne ptr %34, null, !dbg !5488
  %36 = xor i1 %35, true, !dbg !5488
  %37 = zext i1 %36 to i32, !dbg !5488
  %38 = sext i32 %37 to i64, !dbg !5488
  %39 = icmp ne i64 %38, 0, !dbg !5488
  br i1 %39, label %40, label %41, !dbg !5490

40:                                               ; preds = %20
  store i1 false, ptr %5, align 1, !dbg !5491
  br label %46, !dbg !5491

41:                                               ; preds = %20
  %42 = load ptr, ptr %7, align 8, !dbg !5492
  %43 = load ptr, ptr %10, align 8, !dbg !5493
  %44 = call i32 @array_append(ptr noundef %42, ptr noundef %43), !dbg !5494
  %45 = icmp sge i32 %44, 0, !dbg !5495
  store i1 %45, ptr %5, align 1, !dbg !5496
  br label %46, !dbg !5496

46:                                               ; preds = %41, %40, %19
  %47 = load i1, ptr %5, align 1, !dbg !5497
  ret i1 %47, !dbg !5497
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fortune_compare(ptr noundef %0, ptr noundef %1) #0 !dbg !5498 {
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
  call void @llvm.dbg.declare(metadata ptr %4, metadata !5499, metadata !DIExpression()), !dbg !5500
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !5501, metadata !DIExpression()), !dbg !5502
  call void @llvm.dbg.declare(metadata ptr %6, metadata !5503, metadata !DIExpression()), !dbg !5504
  %12 = load ptr, ptr %4, align 8, !dbg !5505
  %13 = load ptr, ptr %12, align 8, !dbg !5506
  store ptr %13, ptr %6, align 8, !dbg !5504
  call void @llvm.dbg.declare(metadata ptr %7, metadata !5507, metadata !DIExpression()), !dbg !5508
  %14 = load ptr, ptr %5, align 8, !dbg !5509
  %15 = load ptr, ptr %14, align 8, !dbg !5510
  store ptr %15, ptr %7, align 8, !dbg !5508
  call void @llvm.dbg.declare(metadata ptr %8, metadata !5511, metadata !DIExpression()), !dbg !5512
  %16 = load ptr, ptr %6, align 8, !dbg !5513
  %17 = getelementptr inbounds %struct.Fortune, ptr %16, i32 0, i32 0, !dbg !5514
  %18 = getelementptr inbounds %struct.anon.10, ptr %17, i32 0, i32 2, !dbg !5515
  %19 = load ptr, ptr %18, align 8, !dbg !5515
  %20 = call i64 @strlen(ptr noundef %19) #17, !dbg !5516
  store i64 %20, ptr %8, align 8, !dbg !5512
  call void @llvm.dbg.declare(metadata ptr %9, metadata !5517, metadata !DIExpression()), !dbg !5518
  %21 = load ptr, ptr %7, align 8, !dbg !5519
  %22 = getelementptr inbounds %struct.Fortune, ptr %21, i32 0, i32 0, !dbg !5520
  %23 = getelementptr inbounds %struct.anon.10, ptr %22, i32 0, i32 2, !dbg !5521
  %24 = load ptr, ptr %23, align 8, !dbg !5521
  %25 = call i64 @strlen(ptr noundef %24) #17, !dbg !5522
  store i64 %25, ptr %9, align 8, !dbg !5518
  %26 = load i64, ptr %8, align 8, !dbg !5523
  %27 = icmp ne i64 %26, 0, !dbg !5523
  br i1 %27, label %28, label %31, !dbg !5525

28:                                               ; preds = %2
  %29 = load i64, ptr %9, align 8, !dbg !5526
  %30 = icmp ne i64 %29, 0, !dbg !5526
  br i1 %30, label %36, label %31, !dbg !5527

31:                                               ; preds = %28, %2
  %32 = load i64, ptr %8, align 8, !dbg !5528
  %33 = load i64, ptr %9, align 8, !dbg !5529
  %34 = icmp ugt i64 %32, %33, !dbg !5530
  %35 = zext i1 %34 to i32, !dbg !5530
  store i32 %35, ptr %3, align 4, !dbg !5531
  br label %67, !dbg !5531

36:                                               ; preds = %28
  call void @llvm.dbg.declare(metadata ptr %10, metadata !5532, metadata !DIExpression()), !dbg !5533
  %37 = load i64, ptr %8, align 8, !dbg !5534
  %38 = load i64, ptr %9, align 8, !dbg !5535
  %39 = icmp ult i64 %37, %38, !dbg !5536
  br i1 %39, label %40, label %42, !dbg !5534

40:                                               ; preds = %36
  %41 = load i64, ptr %8, align 8, !dbg !5537
  br label %44, !dbg !5534

42:                                               ; preds = %36
  %43 = load i64, ptr %9, align 8, !dbg !5538
  br label %44, !dbg !5534

44:                                               ; preds = %42, %40
  %45 = phi i64 [ %41, %40 ], [ %43, %42 ], !dbg !5534
  store i64 %45, ptr %10, align 8, !dbg !5533
  call void @llvm.dbg.declare(metadata ptr %11, metadata !5539, metadata !DIExpression()), !dbg !5540
  %46 = load ptr, ptr %6, align 8, !dbg !5541
  %47 = getelementptr inbounds %struct.Fortune, ptr %46, i32 0, i32 0, !dbg !5542
  %48 = getelementptr inbounds %struct.anon.10, ptr %47, i32 0, i32 2, !dbg !5543
  %49 = load ptr, ptr %48, align 8, !dbg !5543
  %50 = load ptr, ptr %7, align 8, !dbg !5544
  %51 = getelementptr inbounds %struct.Fortune, ptr %50, i32 0, i32 0, !dbg !5545
  %52 = getelementptr inbounds %struct.anon.10, ptr %51, i32 0, i32 2, !dbg !5546
  %53 = load ptr, ptr %52, align 8, !dbg !5546
  %54 = load i64, ptr %10, align 8, !dbg !5547
  %55 = call i32 @memcmp(ptr noundef %49, ptr noundef %53, i64 noundef %54) #17, !dbg !5548
  store i32 %55, ptr %11, align 4, !dbg !5540
  %56 = load i32, ptr %11, align 4, !dbg !5549
  %57 = icmp eq i32 %56, 0, !dbg !5551
  br i1 %57, label %58, label %63, !dbg !5552

58:                                               ; preds = %44
  %59 = load i64, ptr %8, align 8, !dbg !5553
  %60 = load i64, ptr %9, align 8, !dbg !5554
  %61 = icmp ugt i64 %59, %60, !dbg !5555
  %62 = zext i1 %61 to i32, !dbg !5555
  store i32 %62, ptr %3, align 4, !dbg !5556
  br label %67, !dbg !5556

63:                                               ; preds = %44
  %64 = load i32, ptr %11, align 4, !dbg !5557
  %65 = icmp sgt i32 %64, 0, !dbg !5558
  %66 = zext i1 %65 to i32, !dbg !5558
  store i32 %66, ptr %3, align 4, !dbg !5559
  br label %67, !dbg !5559

67:                                               ; preds = %63, %58, %31
  %68 = load i32, ptr %3, align 4, !dbg !5560
  ret i32 %68, !dbg !5560
}

declare ptr @coro_get_data(ptr noundef) #4

declare i32 @coro_yield(ptr noundef, i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #9

declare ptr @coro_malloc(ptr noundef, i64 noundef) #4

declare ptr @coro_strdup(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(1) }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn }

!llvm.dbg.cu = !{!668, !672, !1070, !236}
!llvm.ident = !{!1104, !1104, !1104, !1104}
!llvm.module.flags = !{!1105, !1106, !1107, !1108, !1109, !1110, !1111}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "techempower/array.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "79cde9f1ffc1fe5a96c4d9e5d598c54f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 9)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 35)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 40)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !20, line: 203, type: !21, isLocal: true, isDefinition: true)
!20 = !DIFile(filename: "techempower/database.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b1863d3de4d8cddd800a4bd2ab6539b0")
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 5)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !26, line: 581, type: !27, isLocal: true, isDefinition: true)
!26 = !DIFile(filename: "techempower/json.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "d64628e550f4ff405dab1a8e75d14b8c")
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !28)
!28 = !{!29}
!29 = !DISubrange(count: 25)
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !26, line: 581, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 34)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(scope: null, file: !26, line: 581, type: !37, isLocal: true, isDefinition: true)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 392, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 49)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(scope: null, file: !26, line: 582, type: !42, isLocal: true, isDefinition: true)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: 24)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !26, line: 589, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 400, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 50)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !26, line: 597, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 27)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !26, line: 597, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 496, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 62)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !26, line: 598, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 22)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !26, line: 605, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 504, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 63)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1325, type: !52, isLocal: true, isDefinition: true)
!72 = !DIGlobalVariableExpression(var: !73, expr: !DIExpression())
!73 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1328, type: !74, isLocal: true, isDefinition: true)
!74 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !75)
!75 = !{!76}
!76 = !DISubrange(count: 20)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1332, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 42)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1335, type: !84, isLocal: true, isDefinition: true)
!84 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !85)
!85 = !{!86}
!86 = !DISubrange(count: 16)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1337, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 31)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1344, type: !94, isLocal: true, isDefinition: true)
!94 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !95)
!95 = !{!96}
!96 = !DISubrange(count: 30)
!97 = !DIGlobalVariableExpression(var: !98, expr: !DIExpression())
!98 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1346, type: !94, isLocal: true, isDefinition: true)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1352, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 39)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1356, type: !62, isLocal: true, isDefinition: true)
!106 = !DIGlobalVariableExpression(var: !107, expr: !DIExpression())
!107 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1358, type: !108, isLocal: true, isDefinition: true)
!108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !109)
!109 = !{!110}
!110 = !DISubrange(count: 29)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1360, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 28)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1363, type: !118, isLocal: true, isDefinition: true)
!118 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !119)
!119 = !{!120}
!120 = !DISubrange(count: 36)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1365, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 41)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1368, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 32)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1370, type: !113, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1377, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 79)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !26, line: 50, type: !84, isLocal: true, isDefinition: true)
!140 = !DIGlobalVariableExpression(var: !141, expr: !DIExpression())
!141 = distinct !DIGlobalVariable(scope: null, file: !26, line: 98, type: !142, isLocal: true, isDefinition: true)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 75)
!145 = !DIGlobalVariableExpression(var: !146, expr: !DIExpression())
!146 = distinct !DIGlobalVariable(scope: null, file: !26, line: 98, type: !147, isLocal: true, isDefinition: true)
!147 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !63)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !26, line: 105, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 312, elements: !102)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !26, line: 640, type: !21, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !26, line: 649, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 6)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !26, line: 658, type: !21, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !26, line: 267, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 65)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !26, line: 267, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 37)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !26, line: 987, type: !42, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !26, line: 987, type: !14, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1239, type: !155, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1014, type: !178, isLocal: true, isDefinition: true)
!178 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 544, elements: !179)
!179 = !{!180}
!180 = !DISubrange(count: 68)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1058, type: !183, isLocal: true, isDefinition: true)
!183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !184)
!184 = !{!185}
!185 = !DISubrange(count: 3)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1062, type: !183, isLocal: true, isDefinition: true)
!188 = !DIGlobalVariableExpression(var: !189, expr: !DIExpression())
!189 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1069, type: !183, isLocal: true, isDefinition: true)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1069, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 2)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1097, type: !183, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1101, type: !183, isLocal: true, isDefinition: true)
!199 = !DIGlobalVariableExpression(var: !200, expr: !DIExpression())
!200 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1106, type: !183, isLocal: true, isDefinition: true)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1122, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 19)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1122, type: !167, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1198, type: !74, isLocal: true, isDefinition: true)
!210 = !DIGlobalVariableExpression(var: !211, expr: !DIExpression())
!211 = distinct !DIGlobalVariable(scope: null, file: !26, line: 228, type: !74, isLocal: true, isDefinition: true)
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(scope: null, file: !26, line: 228, type: !214, isLocal: true, isDefinition: true)
!214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 352, elements: !215)
!215 = !{!216}
!216 = !DISubrange(count: 44)
!217 = !DIGlobalVariableExpression(var: !218, expr: !DIExpression())
!218 = distinct !DIGlobalVariable(scope: null, file: !26, line: 1306, type: !219, isLocal: true, isDefinition: true)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 17)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !26, line: 319, type: !79, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !26, line: 319, type: !226, isLocal: true, isDefinition: true)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 448, elements: !227)
!227 = !{!228}
!228 = !DISubrange(count: 56)
!229 = !DIGlobalVariableExpression(var: !230, expr: !DIExpression())
!230 = distinct !DIGlobalVariable(name: "url_map", scope: !231, file: !232, line: 306, type: !490, isLocal: true, isDefinition: true)
!231 = distinct !DISubprogram(name: "main", scope: !232, file: !232, line: 304, type: !233, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !236, retainedNodes: !480)
!232 = !DIFile(filename: "techempower/techempower.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "862c10ebb5d5d09bd221596387c59720")
!233 = !DISubroutineType(types: !234)
!234 = !{!235}
!235 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!236 = distinct !DICompileUnit(language: DW_LANG_C11, file: !237, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !238, retainedTypes: !298, globals: !320, splitDebugInlining: false, nameTableKind: None)
!237 = !DIFile(filename: "/home/raj/lwan/techempower/techempower.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "862c10ebb5d5d09bd221596387c59720")
!238 = !{!239, !259, !271, !279, !289}
!239 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 114, baseType: !241, size: 32, elements: !242)
!240 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!241 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!242 = !{!243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258}
!243 = !DIEnumerator(name: "HTTP_OK", value: 200)
!244 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!245 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!246 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!247 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!248 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!249 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!250 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!251 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!252 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!253 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!254 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!255 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!256 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!257 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!258 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!259 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 145, baseType: !235, size: 32, elements: !260)
!260 = !{!261, !262, !263, !264, !265, !266, !267, !268, !269, !270}
!261 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!262 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!263 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!264 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!265 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!266 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!267 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!268 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!269 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!270 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!271 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 158, baseType: !235, size: 32, elements: !272)
!272 = !{!273, !274, !275, !276, !277, !278}
!273 = !DIEnumerator(name: "CONN_MASK", value: -1)
!274 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!275 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!276 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!277 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!278 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!279 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !240, line: 133, baseType: !241, size: 32, elements: !280)
!280 = !{!281, !282, !283, !284, !285, !286, !287, !288}
!281 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!282 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!283 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!284 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!285 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!286 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!287 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!288 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!289 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !290, line: 29, baseType: !241, size: 32, elements: !291)
!290 = !DIFile(filename: "techempower/json.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "90532975aa76ecb9e0e0525c7677d9b7")
!291 = !{!292, !293, !294, !295, !296, !297}
!292 = !DIEnumerator(name: "JSON_NULL", value: 0)
!293 = !DIEnumerator(name: "JSON_BOOL", value: 1)
!294 = !DIEnumerator(name: "JSON_STRING", value: 2)
!295 = !DIEnumerator(name: "JSON_NUMBER", value: 3)
!296 = !DIEnumerator(name: "JSON_ARRAY", value: 4)
!297 = !DIEnumerator(name: "JSON_OBJECT", value: 5)
!298 = !{!241, !299}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "Fortune", file: !232, line: 34, size: 192, elements: !303)
!303 = !{!304}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !302, file: !232, line: 40, baseType: !305, size: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !302, file: !232, line: 35, size: 192, elements: !306)
!306 = !{!307, !317, !318}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !305, file: !232, line: 36, baseType: !308, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !309, line: 28, baseType: !310)
!309 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!235, !313}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !315, line: 34, baseType: !316)
!315 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!316 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !315, line: 34, flags: DIFlagFwdDecl)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !305, file: !232, line: 38, baseType: !235, size: 32, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "message", scope: !305, file: !232, line: 39, baseType: !319, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!320 = !{!321, !323, !328, !330, !335, !229, !340, !342, !344, !346, !348, !350, !352, !355, !360, !362, !364, !366, !371, !373, !375, !380, !382, !384, !389, !394, !399, !404, !406, !409, !411, !416, !418, !420, !422, !427, !429, !477, !481, !483, !485, !487}
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !232, line: 307, type: !155, isLocal: true, isDefinition: true)
!323 = !DIGlobalVariableExpression(var: !324, expr: !DIExpression())
!324 = distinct !DIGlobalVariable(scope: null, file: !232, line: 308, type: !325, isLocal: true, isDefinition: true)
!325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !326)
!326 = !{!327}
!327 = !DISubrange(count: 4)
!328 = !DIGlobalVariableExpression(var: !329, expr: !DIExpression())
!329 = distinct !DIGlobalVariable(scope: null, file: !232, line: 309, type: !3, isLocal: true, isDefinition: true)
!330 = !DIGlobalVariableExpression(var: !331, expr: !DIExpression())
!331 = distinct !DIGlobalVariable(scope: null, file: !232, line: 310, type: !332, isLocal: true, isDefinition: true)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 11)
!335 = !DIGlobalVariableExpression(var: !336, expr: !DIExpression())
!336 = distinct !DIGlobalVariable(scope: null, file: !232, line: 311, type: !337, isLocal: true, isDefinition: true)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 10)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !232, line: 320, type: !337, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !232, line: 321, type: !332, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !232, line: 322, type: !332, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !232, line: 323, type: !332, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(scope: null, file: !232, line: 324, type: !3, isLocal: true, isDefinition: true)
!350 = !DIGlobalVariableExpression(var: !351, expr: !DIExpression())
!351 = distinct !DIGlobalVariable(scope: null, file: !232, line: 327, type: !123, isLocal: true, isDefinition: true)
!352 = !DIGlobalVariableExpression(var: !353, expr: !DIExpression())
!353 = distinct !DIGlobalVariable(scope: null, file: !232, line: 327, type: !354, isLocal: true, isDefinition: true)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 40, elements: !22)
!355 = !DIGlobalVariableExpression(var: !356, expr: !DIExpression())
!356 = distinct !DIGlobalVariable(scope: null, file: !232, line: 327, type: !357, isLocal: true, isDefinition: true)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 23)
!360 = !DIGlobalVariableExpression(var: !361, expr: !DIExpression())
!361 = distinct !DIGlobalVariable(scope: null, file: !232, line: 329, type: !52, isLocal: true, isDefinition: true)
!362 = !DIGlobalVariableExpression(var: !363, expr: !DIExpression())
!363 = distinct !DIGlobalVariable(scope: null, file: !232, line: 331, type: !52, isLocal: true, isDefinition: true)
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !232, line: 333, type: !52, isLocal: true, isDefinition: true)
!366 = !DIGlobalVariableExpression(var: !367, expr: !DIExpression())
!367 = distinct !DIGlobalVariable(scope: null, file: !232, line: 338, type: !368, isLocal: true, isDefinition: true)
!368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !369)
!369 = !{!370}
!370 = !DISubrange(count: 26)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !232, line: 339, type: !42, isLocal: true, isDefinition: true)
!373 = !DIGlobalVariableExpression(var: !374, expr: !DIExpression())
!374 = distinct !DIGlobalVariable(scope: null, file: !232, line: 340, type: !94, isLocal: true, isDefinition: true)
!375 = !DIGlobalVariableExpression(var: !376, expr: !DIExpression())
!376 = distinct !DIGlobalVariable(scope: null, file: !232, line: 343, type: !377, isLocal: true, isDefinition: true)
!377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !378)
!378 = !{!379}
!379 = !DISubrange(count: 15)
!380 = !DIGlobalVariableExpression(var: !381, expr: !DIExpression())
!381 = distinct !DIGlobalVariable(scope: null, file: !232, line: 347, type: !32, isLocal: true, isDefinition: true)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !232, line: 351, type: !118, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(name: "database", scope: !236, file: !232, line: 70, type: !386, isLocal: true, isDefinition: true)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DICompositeType(tag: DW_TAG_structure_type, name: "db", file: !388, line: 24, flags: DIFlagFwdDecl)
!388 = !DIFile(filename: "techempower/database.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b5199ce24ba11b1ee7482ccc6d0952b7")
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(name: "fortune_tpl", scope: !236, file: !232, line: 71, type: !391, isLocal: true, isDefinition: true)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !309, line: 25, baseType: !393)
!393 = !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !309, line: 25, flags: DIFlagFwdDecl)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !232, line: 100, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 8)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(name: "hello_world", scope: !236, file: !232, line: 31, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 14)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !232, line: 87, type: !219, isLocal: true, isDefinition: true)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(name: "random_number_query", scope: !236, file: !232, line: 32, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 336, elements: !80)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !232, line: 123, type: !183, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !232, line: 124, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 13)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !232, line: 156, type: !396, isLocal: true, isDefinition: true)
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !232, line: 204, type: !332, isLocal: true, isDefinition: true)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !232, line: 299, type: !27, isLocal: true, isDefinition: true)
!422 = !DIGlobalVariableExpression(var: !423, expr: !DIExpression())
!423 = distinct !DIGlobalVariable(name: "fortunes_template_str", scope: !236, file: !232, line: 43, type: !424, isLocal: true, isDefinition: true)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 1608, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 201)
!427 = !DIGlobalVariableExpression(var: !428, expr: !DIExpression())
!428 = distinct !DIGlobalVariable(scope: null, file: !232, line: 65, type: !21, isLocal: true, isDefinition: true)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(name: "fortune_desc", scope: !236, file: !232, line: 64, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 768, elements: !193)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !309, line: 26, baseType: !434)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !309, line: 30, size: 384, elements: !435)
!435 = !{!436, !438, !445, !469, !474, !475}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !434, file: !309, line: 31, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !434, file: !309, line: 32, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !441, line: 85, baseType: !442)
!441 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!442 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !443, line: 152, baseType: !444)
!443 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!444 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !434, file: !309, line: 34, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{null, !449, !468}
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !451, line: 25, baseType: !452)
!451 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !451, line: 27, size: 256, elements: !453)
!453 = !{!454, !459, !467}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !452, file: !451, line: 31, baseType: !455, size: 64)
!455 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !452, file: !451, line: 28, size: 64, elements: !456)
!456 = !{!457, !458}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !455, file: !451, line: 29, baseType: !319, size: 64)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !455, file: !451, line: 30, baseType: !437, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !452, file: !451, line: 34, baseType: !460, size: 128, offset: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !452, file: !451, line: 32, size: 128, elements: !461)
!461 = !{!462, !466}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !460, file: !451, line: 33, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !464, line: 46, baseType: !465)
!464 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!465 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !460, file: !451, line: 33, baseType: !463, size: 64, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !452, file: !451, line: 35, baseType: !241, size: 32, offset: 192)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !434, file: !309, line: 35, baseType: !470, size: 64, offset: 192)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!473, !468}
!473 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !434, file: !309, line: 37, baseType: !308, size: 64, offset: 256)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !434, file: !309, line: 38, baseType: !476, size: 64, offset: 320)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(name: "fortune_query", scope: !479, file: !232, line: 245, type: !147, isLocal: true, isDefinition: true)
!479 = distinct !DISubprogram(name: "fortune_list_generator", scope: !232, file: !232, line: 243, type: !311, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!480 = !{}
!481 = !DIGlobalVariableExpression(var: !482, expr: !DIExpression())
!482 = distinct !DIGlobalVariable(scope: null, file: !232, line: 269, type: !79, isLocal: true, isDefinition: true)
!483 = !DIGlobalVariableExpression(var: !484, expr: !DIExpression())
!484 = distinct !DIGlobalVariable(scope: null, file: !232, line: 59, type: !396, isLocal: true, isDefinition: true)
!485 = !DIGlobalVariableExpression(var: !486, expr: !DIExpression())
!486 = distinct !DIGlobalVariable(scope: null, file: !232, line: 60, type: !413, isLocal: true, isDefinition: true)
!487 = !DIGlobalVariableExpression(var: !488, expr: !DIExpression())
!488 = distinct !DIGlobalVariable(name: "fortune_item_desc", scope: !236, file: !232, line: 58, type: !489, isLocal: true, isDefinition: true)
!489 = !DICompositeType(tag: DW_TAG_array_type, baseType: !432, size: 1152, elements: !184)
!490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !491, size: 3456, elements: !156)
!491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_url_map_t", file: !240, line: 109, baseType: !493)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_url_map_t_", file: !240, line: 236, size: 576, elements: !494)
!494 = !{!495, !637, !638, !639, !640, !642, !662, !663}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !493, file: !240, line: 237, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!499, !500, !636, !468}
!499 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !240, line: 131, baseType: !239)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !240, line: 106, baseType: !502)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !240, line: 206, size: 1280, elements: !503)
!503 = !{!504, !506, !507, !513, !514, !598, !609, !610, !619}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !240, line: 207, baseType: !505, size: 32)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !240, line: 156, baseType: !259)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !502, file: !240, line: 208, baseType: !235, size: 32, offset: 32)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !502, file: !240, line: 209, baseType: !508, size: 128, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !240, line: 110, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !240, line: 191, size: 128, elements: !510)
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !509, file: !240, line: 192, baseType: !319, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !509, file: !240, line: 193, baseType: !463, size: 64, offset: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !502, file: !240, line: 210, baseType: !508, size: 128, offset: 192)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !502, file: !240, line: 211, baseType: !515, size: 64, offset: 320)
!515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !240, line: 112, baseType: !517)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !240, line: 196, size: 256, elements: !518)
!518 = !{!519, !521, !522, !523, !596, !597}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !240, line: 199, baseType: !520, size: 32)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !240, line: 165, baseType: !271)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !517, file: !240, line: 200, baseType: !241, size: 32, offset: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !517, file: !240, line: 201, baseType: !313, size: 64, offset: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !517, file: !240, line: 202, baseType: !524, size: 64, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !240, line: 108, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !240, line: 253, size: 832, elements: !527)
!527 = !{!528, !581, !590, !591, !593}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !526, file: !240, line: 254, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !240, line: 103, baseType: !531)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !240, line: 275, size: 640, elements: !532)
!532 = !{!533, !558, !559, !566, !570, !580}
!533 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !531, file: !240, line: 276, baseType: !534, size: 128)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !535, line: 25, baseType: !536)
!535 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !535, line: 41, size: 128, elements: !537)
!537 = !{!538, !554}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !536, file: !535, line: 42, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !535, line: 26, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !535, line: 29, size: 640, elements: !542)
!542 = !{!543, !545, !553}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !541, file: !535, line: 30, baseType: !544, size: 512)
!544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !539, size: 512, elements: !397)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !541, file: !535, line: 31, baseType: !546, size: 64, offset: 512)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !535, line: 27, baseType: !548)
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !535, line: 35, size: 192, elements: !549)
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !548, file: !535, line: 36, baseType: !319, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !548, file: !535, line: 37, baseType: !468, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !548, file: !535, line: 38, baseType: !546, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !541, file: !535, line: 32, baseType: !235, size: 32, offset: 576)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !536, file: !535, line: 43, baseType: !555, size: 64, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !468}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !531, file: !240, line: 277, baseType: !515, size: 64, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !531, file: !240, line: 283, baseType: !560, size: 128, offset: 192)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !240, line: 279, size: 128, elements: !561)
!561 = !{!562, !563, !564}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !560, file: !240, line: 280, baseType: !524, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !560, file: !240, line: 281, baseType: !241, size: 32, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !560, file: !240, line: 282, baseType: !565, size: 16, offset: 96)
!565 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !531, file: !240, line: 285, baseType: !567, size: 64, offset: 320)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !569, line: 6, flags: DIFlagFwdDecl)
!569 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!570 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !531, file: !240, line: 286, baseType: !571, size: 192, offset: 384)
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !240, line: 111, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !240, line: 266, size: 192, elements: !573)
!573 = !{!574, !575, !576, !577, !578, !579}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !572, file: !240, line: 267, baseType: !319, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !572, file: !240, line: 268, baseType: !565, size: 16, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !572, file: !240, line: 269, baseType: !473, size: 8, offset: 80)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !572, file: !240, line: 270, baseType: !473, size: 8, offset: 88)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !572, file: !240, line: 271, baseType: !241, size: 32, offset: 96)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !572, file: !240, line: 272, baseType: !565, size: 16, offset: 128)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !531, file: !240, line: 287, baseType: !235, size: 32, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !526, file: !240, line: 259, baseType: !582, size: 576, offset: 64)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !526, file: !240, line: 255, size: 576, elements: !583)
!583 = !{!584, !585, !586}
!584 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !582, file: !240, line: 256, baseType: !94, size: 240)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !582, file: !240, line: 257, baseType: !94, size: 240, offset: 240)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !582, file: !240, line: 258, baseType: !587, size: 64, offset: 512)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !588, line: 10, baseType: !589)
!588 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !443, line: 160, baseType: !444)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !526, file: !240, line: 261, baseType: !235, size: 32, offset: 640)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !526, file: !240, line: 262, baseType: !592, size: 64, offset: 672)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !235, size: 64, elements: !193)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !526, file: !240, line: 263, baseType: !594, size: 64, offset: 768)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !595, line: 27, baseType: !465)
!595 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!596 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !517, file: !240, line: 203, baseType: !235, size: 32, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !517, file: !240, line: 203, baseType: !235, size: 32, offset: 224)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !502, file: !240, line: 216, baseType: !599, size: 128, offset: 384)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !240, line: 213, size: 128, elements: !600)
!600 = !{!601, !608}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !599, file: !240, line: 214, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !240, line: 105, baseType: !604)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !240, line: 173, size: 128, elements: !605)
!605 = !{!606, !607}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !604, file: !240, line: 174, baseType: !319, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !604, file: !240, line: 175, baseType: !319, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !599, file: !240, line: 215, baseType: !463, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !502, file: !240, line: 216, baseType: !599, size: 128, offset: 512)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !502, file: !240, line: 223, baseType: !611, size: 192, offset: 640)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !240, line: 217, size: 192, elements: !612)
!612 = !{!613, !614}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !611, file: !240, line: 218, baseType: !587, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !611, file: !240, line: 222, baseType: !615, size: 128, offset: 64)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !611, file: !240, line: 219, size: 128, elements: !616)
!616 = !{!617, !618}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !615, file: !240, line: 220, baseType: !440, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !615, file: !240, line: 221, baseType: !440, size: 64, offset: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !502, file: !240, line: 224, baseType: !620, size: 448, offset: 832)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !240, line: 107, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !240, line: 178, size: 448, elements: !622)
!622 = !{!623, !624, !625, !626, !627}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !621, file: !240, line: 179, baseType: !449, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !621, file: !240, line: 180, baseType: !437, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !621, file: !240, line: 181, baseType: !463, size: 64, offset: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !621, file: !240, line: 182, baseType: !602, size: 64, offset: 192)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !621, file: !240, line: 188, baseType: !628, size: 192, offset: 256)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !621, file: !240, line: 184, size: 192, elements: !629)
!629 = !{!630, !634, !635}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !628, file: !240, line: 185, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{!499, !500, !468}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !628, file: !240, line: 186, baseType: !468, size: 64, offset: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !628, file: !240, line: 187, baseType: !468, size: 64, offset: 128)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !493, file: !240, line: 238, baseType: !468, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !493, file: !240, line: 240, baseType: !437, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !493, file: !240, line: 241, baseType: !463, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !240, line: 242, baseType: !641, size: 32, offset: 256)
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !240, line: 143, baseType: !279)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !493, file: !240, line: 244, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !240, line: 104, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !240, line: 227, size: 384, elements: !647)
!647 = !{!648, !649, !653, !659, !660, !661}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !646, file: !240, line: 228, baseType: !437, size: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !646, file: !240, line: 229, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!468, !468}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !646, file: !240, line: 230, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!468, !657}
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !646, file: !240, line: 231, baseType: !555, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !646, file: !240, line: 232, baseType: !496, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !646, file: !240, line: 233, baseType: !641, size: 32, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !493, file: !240, line: 245, baseType: !468, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !493, file: !240, line: 250, baseType: !664, size: 128, offset: 448)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !493, file: !240, line: 247, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !664, file: !240, line: 248, baseType: !319, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !664, file: !240, line: 249, baseType: !319, size: 64, offset: 64)
!668 = distinct !DICompileUnit(language: DW_LANG_C11, file: !669, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !670, globals: !671, splitDebugInlining: false, nameTableKind: None)
!669 = !DIFile(filename: "/home/raj/lwan/techempower/array.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "79cde9f1ffc1fe5a96c4d9e5d598c54f")
!670 = !{!468, !235}
!671 = !{!0, !7, !12}
!672 = distinct !DICompileUnit(language: DW_LANG_C11, file: !673, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !674, retainedTypes: !730, globals: !1069, splitDebugInlining: false, nameTableKind: None)
!673 = !DIFile(filename: "/home/raj/lwan/techempower/database.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "b1863d3de4d8cddd800a4bd2ab6539b0")
!674 = !{!675, !712, !719, !724}
!675 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_field_types", file: !676, line: 53, baseType: !241, size: 32, elements: !677)
!676 = !DIFile(filename: "/usr/include/mysql/field_types.h", directory: "", checksumkind: CSK_MD5, checksum: "1dac89ddf305112c87b3c4620861815a")
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!678 = !DIEnumerator(name: "MYSQL_TYPE_DECIMAL", value: 0)
!679 = !DIEnumerator(name: "MYSQL_TYPE_TINY", value: 1)
!680 = !DIEnumerator(name: "MYSQL_TYPE_SHORT", value: 2)
!681 = !DIEnumerator(name: "MYSQL_TYPE_LONG", value: 3)
!682 = !DIEnumerator(name: "MYSQL_TYPE_FLOAT", value: 4)
!683 = !DIEnumerator(name: "MYSQL_TYPE_DOUBLE", value: 5)
!684 = !DIEnumerator(name: "MYSQL_TYPE_NULL", value: 6)
!685 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP", value: 7)
!686 = !DIEnumerator(name: "MYSQL_TYPE_LONGLONG", value: 8)
!687 = !DIEnumerator(name: "MYSQL_TYPE_INT24", value: 9)
!688 = !DIEnumerator(name: "MYSQL_TYPE_DATE", value: 10)
!689 = !DIEnumerator(name: "MYSQL_TYPE_TIME", value: 11)
!690 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME", value: 12)
!691 = !DIEnumerator(name: "MYSQL_TYPE_YEAR", value: 13)
!692 = !DIEnumerator(name: "MYSQL_TYPE_NEWDATE", value: 14)
!693 = !DIEnumerator(name: "MYSQL_TYPE_VARCHAR", value: 15)
!694 = !DIEnumerator(name: "MYSQL_TYPE_BIT", value: 16)
!695 = !DIEnumerator(name: "MYSQL_TYPE_TIMESTAMP2", value: 17)
!696 = !DIEnumerator(name: "MYSQL_TYPE_DATETIME2", value: 18)
!697 = !DIEnumerator(name: "MYSQL_TYPE_TIME2", value: 19)
!698 = !DIEnumerator(name: "MYSQL_TYPE_TYPED_ARRAY", value: 20)
!699 = !DIEnumerator(name: "MYSQL_TYPE_INVALID", value: 243)
!700 = !DIEnumerator(name: "MYSQL_TYPE_BOOL", value: 244)
!701 = !DIEnumerator(name: "MYSQL_TYPE_JSON", value: 245)
!702 = !DIEnumerator(name: "MYSQL_TYPE_NEWDECIMAL", value: 246)
!703 = !DIEnumerator(name: "MYSQL_TYPE_ENUM", value: 247)
!704 = !DIEnumerator(name: "MYSQL_TYPE_SET", value: 248)
!705 = !DIEnumerator(name: "MYSQL_TYPE_TINY_BLOB", value: 249)
!706 = !DIEnumerator(name: "MYSQL_TYPE_MEDIUM_BLOB", value: 250)
!707 = !DIEnumerator(name: "MYSQL_TYPE_LONG_BLOB", value: 251)
!708 = !DIEnumerator(name: "MYSQL_TYPE_BLOB", value: 252)
!709 = !DIEnumerator(name: "MYSQL_TYPE_VAR_STRING", value: 253)
!710 = !DIEnumerator(name: "MYSQL_TYPE_STRING", value: 254)
!711 = !DIEnumerator(name: "MYSQL_TYPE_GEOMETRY", value: 255)
!712 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "mysql_status", file: !713, line: 256, baseType: !241, size: 32, elements: !714)
!713 = !DIFile(filename: "/usr/include/mysql/mysql.h", directory: "", checksumkind: CSK_MD5, checksum: "1247b3d6239b685fabf3391bf8ffe6e9")
!714 = !{!715, !716, !717, !718}
!715 = !DIEnumerator(name: "MYSQL_STATUS_READY", value: 0)
!716 = !DIEnumerator(name: "MYSQL_STATUS_GET_RESULT", value: 1)
!717 = !DIEnumerator(name: "MYSQL_STATUS_USE_RESULT", value: 2)
!718 = !DIEnumerator(name: "MYSQL_STATUS_STATEMENT_GET_RESULT", value: 3)
!719 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_resultset_metadata", file: !720, line: 1024, baseType: !241, size: 32, elements: !721)
!720 = !DIFile(filename: "/usr/include/mysql/mysql_com.h", directory: "", checksumkind: CSK_MD5, checksum: "948b54ebe3c9fc7d454d9a6494ddab54")
!721 = !{!722, !723}
!722 = !DIEnumerator(name: "RESULTSET_METADATA_NONE", value: 0)
!723 = !DIEnumerator(name: "RESULTSET_METADATA_FULL", value: 1)
!724 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "enum_mysql_stmt_state", file: !713, line: 586, baseType: !241, size: 32, elements: !725)
!725 = !{!726, !727, !728, !729}
!726 = !DIEnumerator(name: "MYSQL_STMT_INIT_DONE", value: 1)
!727 = !DIEnumerator(name: "MYSQL_STMT_PREPARE_DONE", value: 2)
!728 = !DIEnumerator(name: "MYSQL_STMT_EXECUTE_DONE", value: 3)
!729 = !DIEnumerator(name: "MYSQL_STMT_FETCH_DONE", value: 4)
!730 = !{!731, !468, !772, !951, !742, !953, !1048, !1057, !235, !1059, !319, !1068}
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db", file: !20, line: 33, size: 128, elements: !733)
!733 = !{!734, !738}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !732, file: !20, line: 34, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{null, !731}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !732, file: !20, line: 35, baseType: !739, size: 64, offset: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!742, !769, !437, !771}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt", file: !20, line: 27, size: 192, elements: !744)
!744 = !{!745, !761, !765}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !743, file: !20, line: 28, baseType: !746, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!473, !749, !751, !463}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !743)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_row", file: !388, line: 27, size: 192, elements: !753)
!753 = !{!754, !759, !760}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !752, file: !388, line: 31, baseType: !755, size: 64)
!755 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !752, file: !388, line: 28, size: 64, elements: !756)
!756 = !{!757, !758}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !755, file: !388, line: 29, baseType: !319, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !755, file: !388, line: 30, baseType: !235, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !752, file: !388, line: 32, baseType: !4, size: 8, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !752, file: !388, line: 33, baseType: !463, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !743, file: !20, line: 29, baseType: !762, size: 64, offset: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!473, !749, !751}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "finalize", scope: !743, file: !20, line: 30, baseType: !766, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !742}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_mysql", file: !20, line: 40, size: 192, elements: !774)
!774 = !{!775, !776}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !773, file: !20, line: 41, baseType: !732, size: 128)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "con", scope: !773, file: !20, line: 42, baseType: !777, size: 64, offset: 128)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL", file: !713, line: 337, baseType: !779)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL", file: !713, line: 299, size: 9280, elements: !780)
!780 = !{!781, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !833, !859, !862, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !925, !926, !927, !928, !929, !933, !943, !947, !948, !950}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "net", scope: !779, file: !713, line: 300, baseType: !782, size: 5312)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "NET", file: !720, line: 947, baseType: !783)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "NET", file: !720, line: 914, size: 5312, elements: !784)
!784 = !{!785, !788, !791, !792, !793, !794, !796, !797, !798, !799, !800, !801, !802, !803, !804, !805, !806, !807, !808, !810, !811, !812, !813, !814, !815, !819, !820}
!785 = !DIDerivedType(tag: DW_TAG_member, name: "vio", scope: !783, file: !720, line: 915, baseType: !786, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "Vio", file: !720, line: 894, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "buff", scope: !783, file: !720, line: 916, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "buff_end", scope: !783, file: !720, line: 916, baseType: !789, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "write_pos", scope: !783, file: !720, line: 916, baseType: !789, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "read_pos", scope: !783, file: !720, line: 916, baseType: !789, size: 64, offset: 256)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !783, file: !720, line: 917, baseType: !795, size: 32, offset: 320)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "my_socket", file: !713, line: 65, baseType: !235)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "remain_in_buf", scope: !783, file: !720, line: 923, baseType: !465, size: 64, offset: 384)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !783, file: !720, line: 923, baseType: !465, size: 64, offset: 448)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "buf_length", scope: !783, file: !720, line: 923, baseType: !465, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "where_b", scope: !783, file: !720, line: 923, baseType: !465, size: 64, offset: 576)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet", scope: !783, file: !720, line: 924, baseType: !465, size: 64, offset: 640)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "max_packet_size", scope: !783, file: !720, line: 924, baseType: !465, size: 64, offset: 704)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "pkt_nr", scope: !783, file: !720, line: 925, baseType: !241, size: 32, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "compress_pkt_nr", scope: !783, file: !720, line: 925, baseType: !241, size: 32, offset: 800)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !783, file: !720, line: 926, baseType: !241, size: 32, offset: 832)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !783, file: !720, line: 926, baseType: !241, size: 32, offset: 864)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "retry_count", scope: !783, file: !720, line: 926, baseType: !241, size: 32, offset: 896)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "fcntl", scope: !783, file: !720, line: 927, baseType: !235, size: 32, offset: 928)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "return_status", scope: !783, file: !720, line: 928, baseType: !809, size: 64, offset: 960)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "reading_or_writing", scope: !783, file: !720, line: 929, baseType: !790, size: 8, offset: 1024)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "save_char", scope: !783, file: !720, line: 930, baseType: !790, size: 8, offset: 1032)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !783, file: !720, line: 931, baseType: !473, size: 8, offset: 1040)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !783, file: !720, line: 932, baseType: !241, size: 32, offset: 1056)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !783, file: !720, line: 933, baseType: !790, size: 8, offset: 1088)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !783, file: !720, line: 935, baseType: !816, size: 4096, offset: 1096)
!816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 4096, elements: !817)
!817 = !{!818}
!818 = !DISubrange(count: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sqlstate", scope: !783, file: !720, line: 937, baseType: !155, size: 48, offset: 5192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !783, file: !720, line: 946, baseType: !468, size: 64, offset: 5248)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "connector_fd", scope: !779, file: !713, line: 301, baseType: !789, size: 64, offset: 5312)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5376)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5440)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "passwd", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5504)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5568)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "server_version", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5632)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "host_info", scope: !779, file: !713, line: 302, baseType: !319, size: 64, offset: 5696)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !779, file: !713, line: 303, baseType: !319, size: 64, offset: 5760)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !779, file: !713, line: 303, baseType: !319, size: 64, offset: 5824)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "charset", scope: !779, file: !713, line: 304, baseType: !831, size: 64, offset: 5888)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DICompositeType(tag: DW_TAG_structure_type, name: "CHARSET_INFO", file: !713, line: 304, flags: DIFlagFwdDecl)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !779, file: !713, line: 305, baseType: !834, size: 64, offset: 5952)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_FIELD", file: !713, line: 143, baseType: !836)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_FIELD", file: !713, line: 121, size: 1024, elements: !837)
!837 = !{!838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !836, file: !713, line: 122, baseType: !319, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "org_name", scope: !836, file: !713, line: 123, baseType: !319, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "table", scope: !836, file: !713, line: 124, baseType: !319, size: 64, offset: 128)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "org_table", scope: !836, file: !713, line: 125, baseType: !319, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !836, file: !713, line: 126, baseType: !319, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "catalog", scope: !836, file: !713, line: 127, baseType: !319, size: 64, offset: 320)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "def", scope: !836, file: !713, line: 128, baseType: !319, size: 64, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !836, file: !713, line: 129, baseType: !465, size: 64, offset: 448)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "max_length", scope: !836, file: !713, line: 130, baseType: !465, size: 64, offset: 512)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "name_length", scope: !836, file: !713, line: 131, baseType: !241, size: 32, offset: 576)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "org_name_length", scope: !836, file: !713, line: 132, baseType: !241, size: 32, offset: 608)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "table_length", scope: !836, file: !713, line: 133, baseType: !241, size: 32, offset: 640)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "org_table_length", scope: !836, file: !713, line: 134, baseType: !241, size: 32, offset: 672)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "db_length", scope: !836, file: !713, line: 135, baseType: !241, size: 32, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "catalog_length", scope: !836, file: !713, line: 136, baseType: !241, size: 32, offset: 736)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "def_length", scope: !836, file: !713, line: 137, baseType: !241, size: 32, offset: 768)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !713, line: 138, baseType: !241, size: 32, offset: 800)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "decimals", scope: !836, file: !713, line: 139, baseType: !241, size: 32, offset: 832)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "charsetnr", scope: !836, file: !713, line: 140, baseType: !241, size: 32, offset: 864)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !836, file: !713, line: 141, baseType: !675, size: 32, offset: 896)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !836, file: !713, line: 142, baseType: !468, size: 64, offset: 960)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "field_alloc", scope: !779, file: !713, line: 306, baseType: !860, size: 64, offset: 6016)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DICompositeType(tag: DW_TAG_structure_type, name: "MEM_ROOT", file: !713, line: 161, flags: DIFlagFwdDecl)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "affected_rows", scope: !779, file: !713, line: 307, baseType: !863, size: 64, offset: 6080)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !864, line: 27, baseType: !865)
!864 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !443, line: 45, baseType: !465)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "insert_id", scope: !779, file: !713, line: 308, baseType: !863, size: 64, offset: 6144)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "extra_info", scope: !779, file: !713, line: 309, baseType: !863, size: 64, offset: 6208)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_id", scope: !779, file: !713, line: 310, baseType: !465, size: 64, offset: 6272)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "packet_length", scope: !779, file: !713, line: 311, baseType: !465, size: 64, offset: 6336)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !779, file: !713, line: 312, baseType: !241, size: 32, offset: 6400)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !779, file: !713, line: 313, baseType: !465, size: 64, offset: 6464)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "server_capabilities", scope: !779, file: !713, line: 313, baseType: !465, size: 64, offset: 6528)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_version", scope: !779, file: !713, line: 314, baseType: !241, size: 32, offset: 6592)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !779, file: !713, line: 315, baseType: !241, size: 32, offset: 6624)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "server_status", scope: !779, file: !713, line: 316, baseType: !241, size: 32, offset: 6656)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "server_language", scope: !779, file: !713, line: 317, baseType: !241, size: 32, offset: 6688)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "warning_count", scope: !779, file: !713, line: 318, baseType: !241, size: 32, offset: 6720)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !779, file: !713, line: 319, baseType: !879, size: 1920, offset: 6784)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options", file: !713, line: 225, size: 1920, elements: !880)
!880 = !{!881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !915, !919, !920, !921, !922}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "connect_timeout", scope: !879, file: !713, line: 226, baseType: !241, size: 32)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "read_timeout", scope: !879, file: !713, line: 226, baseType: !241, size: 32, offset: 32)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "write_timeout", scope: !879, file: !713, line: 226, baseType: !241, size: 32, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !879, file: !713, line: 227, baseType: !241, size: 32, offset: 96)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !879, file: !713, line: 227, baseType: !241, size: 32, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "client_flag", scope: !879, file: !713, line: 228, baseType: !465, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "host", scope: !879, file: !713, line: 229, baseType: !319, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "user", scope: !879, file: !713, line: 229, baseType: !319, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "password", scope: !879, file: !713, line: 229, baseType: !319, size: 64, offset: 384)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "unix_socket", scope: !879, file: !713, line: 229, baseType: !319, size: 64, offset: 448)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "db", scope: !879, file: !713, line: 229, baseType: !319, size: 64, offset: 512)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "init_commands", scope: !879, file: !713, line: 230, baseType: !893, size: 64, offset: 576)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DICompositeType(tag: DW_TAG_structure_type, name: "Init_commands_array", file: !713, line: 230, flags: DIFlagFwdDecl)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_file", scope: !879, file: !713, line: 231, baseType: !319, size: 64, offset: 640)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "my_cnf_group", scope: !879, file: !713, line: 231, baseType: !319, size: 64, offset: 704)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "charset_dir", scope: !879, file: !713, line: 231, baseType: !319, size: 64, offset: 768)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "charset_name", scope: !879, file: !713, line: 231, baseType: !319, size: 64, offset: 832)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_key", scope: !879, file: !713, line: 232, baseType: !319, size: 64, offset: 896)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cert", scope: !879, file: !713, line: 233, baseType: !319, size: 64, offset: 960)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_ca", scope: !879, file: !713, line: 234, baseType: !319, size: 64, offset: 1024)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_capath", scope: !879, file: !713, line: 235, baseType: !319, size: 64, offset: 1088)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ssl_cipher", scope: !879, file: !713, line: 236, baseType: !319, size: 64, offset: 1152)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "shared_memory_base_name", scope: !879, file: !713, line: 237, baseType: !319, size: 64, offset: 1216)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "max_allowed_packet", scope: !879, file: !713, line: 238, baseType: !465, size: 64, offset: 1280)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "compress", scope: !879, file: !713, line: 239, baseType: !473, size: 8, offset: 1344)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "named_pipe", scope: !879, file: !713, line: 239, baseType: !473, size: 8, offset: 1352)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "bind_address", scope: !879, file: !713, line: 243, baseType: !319, size: 64, offset: 1408)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "report_data_truncation", scope: !879, file: !713, line: 245, baseType: !473, size: 8, offset: 1472)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_init", scope: !879, file: !713, line: 248, baseType: !911, size: 64, offset: 1536)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = !DISubroutineType(types: !913)
!913 = !{!235, !914, !437, !468}
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_read", scope: !879, file: !713, line: 249, baseType: !916, size: 64, offset: 1600)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DISubroutineType(types: !918)
!918 = !{!235, !468, !319, !241}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_end", scope: !879, file: !713, line: 250, baseType: !555, size: 64, offset: 1664)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_error", scope: !879, file: !713, line: 251, baseType: !916, size: 64, offset: 1728)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "local_infile_userdata", scope: !879, file: !713, line: 252, baseType: !468, size: 64, offset: 1792)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !879, file: !713, line: 253, baseType: !923, size: 64, offset: 1856)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DICompositeType(tag: DW_TAG_structure_type, name: "st_mysql_options_extention", file: !713, line: 223, flags: DIFlagFwdDecl)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !779, file: !713, line: 320, baseType: !712, size: 32, offset: 8704)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "resultset_metadata", scope: !779, file: !713, line: 321, baseType: !719, size: 32, offset: 8736)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "free_me", scope: !779, file: !713, line: 322, baseType: !473, size: 8, offset: 8768)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !779, file: !713, line: 323, baseType: !473, size: 8, offset: 8776)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "scramble", scope: !779, file: !713, line: 326, baseType: !930, size: 168, offset: 8784)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 21)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "stmts", scope: !779, file: !713, line: 328, baseType: !934, size: 64, offset: 8960)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "LIST", file: !936, line: 39, baseType: !937)
!936 = !DIFile(filename: "/usr/include/mysql/my_list.h", directory: "", checksumkind: CSK_MD5, checksum: "2c916b19e4f514cea577a95404bf2fb6")
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "LIST", file: !936, line: 36, size: 192, elements: !938)
!938 = !{!939, !941, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !937, file: !936, line: 37, baseType: !940, size: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !937, file: !936, line: 37, baseType: !940, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !937, file: !936, line: 38, baseType: !468, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "methods", scope: !779, file: !713, line: 329, baseType: !944, size: 64, offset: 9024)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_METHODS", file: !713, line: 296, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thd", scope: !779, file: !713, line: 330, baseType: !468, size: 64, offset: 9088)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_owner", scope: !779, file: !713, line: 335, baseType: !949, size: 64, offset: 9152)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !779, file: !713, line: 336, baseType: !468, size: 64, offset: 9216)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !773)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt_mysql", file: !20, line: 45, size: 448, elements: !955)
!955 = !{!956, !957, !1045, !1046, !1047}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !954, file: !20, line: 46, baseType: !743, size: 192)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "stmt", scope: !954, file: !20, line: 47, baseType: !958, size: 64, offset: 192)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_STMT", file: !713, line: 726, baseType: !960)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_STMT", file: !713, line: 683, size: 5632, elements: !961)
!961 = !{!962, !963, !964, !965, !999, !1000, !1001, !1019, !1020, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1038, !1039, !1040, !1041, !1042}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "mem_root", scope: !960, file: !713, line: 684, baseType: !860, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !960, file: !713, line: 685, baseType: !935, size: 192, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "mysql", scope: !960, file: !713, line: 686, baseType: !777, size: 64, offset: 256)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "params", scope: !960, file: !713, line: 687, baseType: !966, size: 64, offset: 320)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_BIND", file: !713, line: 678, baseType: !968)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_BIND", file: !713, line: 656, size: 896, elements: !969)
!969 = !{!970, !972, !973, !974, !975, !976, !982, !987, !988, !989, !990, !991, !992, !993, !994, !995, !996, !997, !998}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !968, file: !713, line: 657, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "is_null", scope: !968, file: !713, line: 658, baseType: !949, size: 64, offset: 64)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !968, file: !713, line: 659, baseType: !468, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !968, file: !713, line: 661, baseType: !949, size: 64, offset: 192)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "row_ptr", scope: !968, file: !713, line: 662, baseType: !789, size: 64, offset: 256)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "store_param_func", scope: !968, file: !713, line: 663, baseType: !977, size: 64, offset: 320)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DISubroutineType(types: !979)
!979 = !{null, !980, !981}
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "fetch_result", scope: !968, file: !713, line: 664, baseType: !983, size: 64, offset: 384)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !981, !834, !986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "skip_result", scope: !968, file: !713, line: 665, baseType: !983, size: 64, offset: 448)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !968, file: !713, line: 667, baseType: !465, size: 64, offset: 512)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !968, file: !713, line: 668, baseType: !465, size: 64, offset: 576)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "length_value", scope: !968, file: !713, line: 669, baseType: !465, size: 64, offset: 640)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "param_number", scope: !968, file: !713, line: 670, baseType: !241, size: 32, offset: 704)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "pack_length", scope: !968, file: !713, line: 671, baseType: !241, size: 32, offset: 736)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_type", scope: !968, file: !713, line: 672, baseType: !675, size: 32, offset: 768)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "error_value", scope: !968, file: !713, line: 673, baseType: !473, size: 8, offset: 800)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "is_unsigned", scope: !968, file: !713, line: 674, baseType: !473, size: 8, offset: 808)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "long_data_used", scope: !968, file: !713, line: 675, baseType: !473, size: 8, offset: 816)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "is_null_value", scope: !968, file: !713, line: 676, baseType: !473, size: 8, offset: 824)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !968, file: !713, line: 677, baseType: !468, size: 64, offset: 832)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !960, file: !713, line: 688, baseType: !966, size: 64, offset: 384)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !960, file: !713, line: 689, baseType: !834, size: 64, offset: 448)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !960, file: !713, line: 690, baseType: !1002, size: 256, offset: 512)
!1002 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_DATA", file: !713, line: 168, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_DATA", file: !713, line: 163, size: 256, elements: !1004)
!1004 = !{!1005, !1016, !1017, !1018}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1003, file: !713, line: 164, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROWS", file: !713, line: 157, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_ROWS", file: !713, line: 153, size: 192, elements: !1009)
!1009 = !{!1010, !1012, !1015}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1008, file: !713, line: 154, baseType: !1011, size: 64)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1008, file: !713, line: 155, baseType: !1013, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_typedef, name: "MYSQL_ROW", file: !713, line: 145, baseType: !1014)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1008, file: !713, line: 156, baseType: !465, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1003, file: !713, line: 165, baseType: !860, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "rows", scope: !1003, file: !713, line: 166, baseType: !863, size: 64, offset: 128)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "fields", scope: !1003, file: !713, line: 167, baseType: !241, size: 32, offset: 192)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "data_cursor", scope: !960, file: !713, line: 691, baseType: !1006, size: 64, offset: 768)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "read_row_func", scope: !960, file: !713, line: 696, baseType: !1021, size: 64, offset: 832)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DISubroutineType(types: !1023)
!1023 = !{!235, !1024, !986}
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "affected_rows", scope: !960, file: !713, line: 698, baseType: !863, size: 64, offset: 896)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "insert_id", scope: !960, file: !713, line: 699, baseType: !863, size: 64, offset: 960)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "stmt_id", scope: !960, file: !713, line: 700, baseType: !465, size: 64, offset: 1024)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !960, file: !713, line: 701, baseType: !465, size: 64, offset: 1088)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "prefetch_rows", scope: !960, file: !713, line: 702, baseType: !465, size: 64, offset: 1152)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "server_status", scope: !960, file: !713, line: 707, baseType: !241, size: 32, offset: 1216)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "last_errno", scope: !960, file: !713, line: 708, baseType: !241, size: 32, offset: 1248)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !960, file: !713, line: 709, baseType: !241, size: 32, offset: 1280)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "field_count", scope: !960, file: !713, line: 710, baseType: !241, size: 32, offset: 1312)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !960, file: !713, line: 711, baseType: !724, size: 32, offset: 1344)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "last_error", scope: !960, file: !713, line: 712, baseType: !816, size: 4096, offset: 1376)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sqlstate", scope: !960, file: !713, line: 713, baseType: !155, size: 48, offset: 5472)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "send_types_to_server", scope: !960, file: !713, line: 715, baseType: !473, size: 8, offset: 5520)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "bind_param_done", scope: !960, file: !713, line: 716, baseType: !473, size: 8, offset: 5528)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "bind_result_done", scope: !960, file: !713, line: 717, baseType: !790, size: 8, offset: 5536)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "unbuffered_fetch_cancelled", scope: !960, file: !713, line: 719, baseType: !473, size: 8, offset: 5544)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "update_max_length", scope: !960, file: !713, line: 724, baseType: !473, size: 8, offset: 5552)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "extension", scope: !960, file: !713, line: 725, baseType: !1043, size: 64, offset: 5568)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "MYSQL_STMT_EXT", file: !713, line: 680, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "param_bind", scope: !954, file: !20, line: 48, baseType: !966, size: 64, offset: 256)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "result_bind", scope: !954, file: !20, line: 49, baseType: !966, size: 64, offset: 320)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "must_execute_again", scope: !954, file: !20, line: 50, baseType: !473, size: 8, offset: 384)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_sqlite", file: !20, line: 219, size: 192, elements: !1050)
!1050 = !{!1051, !1052}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1049, file: !20, line: 220, baseType: !732, size: 128)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "sqlite", scope: !1049, file: !20, line: 221, baseType: !1053, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3", file: !1055, line: 272, baseType: !1056)
!1055 = !DIFile(filename: "/usr/include/sqlite3.h", directory: "", checksumkind: CSK_MD5, checksum: "a588c4681dc2c3e9f3424818d7f39d50")
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3", file: !1055, line: 272, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1061)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt_sqlite", file: !20, line: 224, size: 256, elements: !1062)
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1061, file: !20, line: 225, baseType: !743, size: 192)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sqlite", scope: !1061, file: !20, line: 226, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_typedef, name: "sqlite3_stmt", file: !1055, line: 3892, baseType: !1067)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "sqlite3_stmt", file: !1055, line: 3892, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1069 = !{!18}
!1070 = distinct !DICompileUnit(language: DW_LANG_C11, file: !1071, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !1072, retainedTypes: !1073, globals: !1103, splitDebugInlining: false, nameTableKind: None)
!1071 = !DIFile(filename: "/home/raj/lwan/techempower/json.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "d64628e550f4ff405dab1a8e75d14b8c")
!1072 = !{!289}
!1073 = !{!468, !235, !319, !463, !1074, !4, !1096, !1098, !789, !790, !1101}
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonNode", file: !290, line: 38, baseType: !1076)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "JsonNode", file: !290, line: 40, size: 448, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1084}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1076, file: !290, line: 43, baseType: !1074, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !1076, file: !290, line: 44, baseType: !1074, size: 64, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1076, file: !290, line: 44, baseType: !1074, size: 64, offset: 128)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1076, file: !290, line: 47, baseType: !319, size: 64, offset: 192)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !1076, file: !290, line: 49, baseType: !1083, size: 32, offset: 256)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonTag", file: !290, line: 36, baseType: !289)
!1084 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !290, line: 50, baseType: !1085, size: 128, offset: 320)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1076, file: !290, line: 50, size: 128, elements: !1086)
!1086 = !{!1087, !1088, !1089, !1091}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "bool_", scope: !1085, file: !290, line: 52, baseType: !473, size: 8)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "string_", scope: !1085, file: !290, line: 55, baseType: !319, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "number_", scope: !1085, file: !290, line: 58, baseType: !1090, size: 64)
!1090 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1085, file: !290, line: 64, baseType: !1092, size: 128)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1085, file: !290, line: 62, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1092, file: !290, line: 63, baseType: !1074, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !1092, file: !290, line: 63, baseType: !1074, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !864, line: 25, baseType: !1097)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !443, line: 40, baseType: !565)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar_t", file: !26, line: 127, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !864, line: 26, baseType: !1100)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !443, line: 42, baseType: !241)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !790)
!1103 = !{!24, !30, !35, !40, !45, !50, !55, !60, !65, !70, !72, !77, !82, !87, !92, !97, !99, !104, !106, !111, !116, !121, !126, !131, !133, !138, !140, !145, !148, !151, !153, !158, !160, !165, !170, !172, !174, !176, !181, !186, !188, !190, !195, !197, !199, !201, !206, !208, !210, !212, !217, !222, !224}
!1104 = !{!"clang version 16.0.0"}
!1105 = !{i32 7, !"Dwarf Version", i32 5}
!1106 = !{i32 2, !"Debug Info Version", i32 3}
!1107 = !{i32 1, !"wchar_size", i32 4}
!1108 = !{i32 8, !"PIC Level", i32 2}
!1109 = !{i32 7, !"PIE Level", i32 2}
!1110 = !{i32 7, !"uwtable", i32 2}
!1111 = !{i32 7, !"frame-pointer", i32 2}
!1112 = distinct !DISubprogram(name: "array_init", scope: !2, file: !2, line: 43, type: !1113, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1113 = !DISubroutineType(types: !1114)
!1114 = !{null, !1115, !463}
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array", file: !1117, line: 9, size: 256, elements: !1118)
!1117 = !DIFile(filename: "techempower/array.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "e322a465531025820950d0b6769ca0f7")
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !1116, file: !1117, line: 10, baseType: !914, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1116, file: !1117, line: 11, baseType: !463, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !1116, file: !1117, line: 12, baseType: !463, size: 64, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !1116, file: !1117, line: 13, baseType: !463, size: 64, offset: 192)
!1123 = !DILocalVariable(name: "array", arg: 1, scope: !1112, file: !2, line: 43, type: !1115)
!1124 = !DILocation(line: 43, column: 31, scope: !1112)
!1125 = !DILocalVariable(name: "step", arg: 2, scope: !1112, file: !2, line: 43, type: !463)
!1126 = !DILocation(line: 43, column: 45, scope: !1112)
!1127 = !DILocation(line: 45, column: 2, scope: !1128)
!1128 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 45, column: 2)
!1129 = distinct !DILexicalBlock(scope: !1112, file: !2, line: 45, column: 2)
!1130 = !DILocation(line: 45, column: 2, scope: !1129)
!1131 = !DILocation(line: 46, column: 2, scope: !1112)
!1132 = !DILocation(line: 46, column: 9, scope: !1112)
!1133 = !DILocation(line: 46, column: 15, scope: !1112)
!1134 = !DILocation(line: 47, column: 2, scope: !1112)
!1135 = !DILocation(line: 47, column: 9, scope: !1112)
!1136 = !DILocation(line: 47, column: 15, scope: !1112)
!1137 = !DILocation(line: 48, column: 2, scope: !1112)
!1138 = !DILocation(line: 48, column: 9, scope: !1112)
!1139 = !DILocation(line: 48, column: 15, scope: !1112)
!1140 = !DILocation(line: 49, column: 16, scope: !1112)
!1141 = !DILocation(line: 49, column: 2, scope: !1112)
!1142 = !DILocation(line: 49, column: 9, scope: !1112)
!1143 = !DILocation(line: 49, column: 14, scope: !1112)
!1144 = !DILocation(line: 50, column: 1, scope: !1112)
!1145 = distinct !DISubprogram(name: "array_append", scope: !2, file: !2, line: 52, type: !1146, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1146 = !DISubroutineType(types: !1147)
!1147 = !{!235, !1115, !1148}
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1150 = !DILocalVariable(name: "array", arg: 1, scope: !1145, file: !2, line: 52, type: !1115)
!1151 = !DILocation(line: 52, column: 32, scope: !1145)
!1152 = !DILocalVariable(name: "element", arg: 2, scope: !1145, file: !2, line: 52, type: !1148)
!1153 = !DILocation(line: 52, column: 51, scope: !1145)
!1154 = !DILocalVariable(name: "idx", scope: !1145, file: !2, line: 54, type: !463)
!1155 = !DILocation(line: 54, column: 9, scope: !1145)
!1156 = !DILocation(line: 56, column: 6, scope: !1157)
!1157 = distinct !DILexicalBlock(scope: !1145, file: !2, line: 56, column: 6)
!1158 = !DILocation(line: 56, column: 13, scope: !1157)
!1159 = !DILocation(line: 56, column: 19, scope: !1157)
!1160 = !DILocation(line: 56, column: 26, scope: !1157)
!1161 = !DILocation(line: 56, column: 33, scope: !1157)
!1162 = !DILocation(line: 56, column: 23, scope: !1157)
!1163 = !DILocation(line: 56, column: 6, scope: !1145)
!1164 = !DILocalVariable(name: "r", scope: !1165, file: !2, line: 57, type: !235)
!1165 = distinct !DILexicalBlock(scope: !1157, file: !2, line: 56, column: 40)
!1166 = !DILocation(line: 57, column: 7, scope: !1165)
!1167 = !DILocation(line: 57, column: 25, scope: !1165)
!1168 = !DILocation(line: 57, column: 32, scope: !1165)
!1169 = !DILocation(line: 57, column: 39, scope: !1165)
!1170 = !DILocation(line: 57, column: 47, scope: !1165)
!1171 = !DILocation(line: 57, column: 54, scope: !1165)
!1172 = !DILocation(line: 57, column: 45, scope: !1165)
!1173 = !DILocation(line: 57, column: 11, scope: !1165)
!1174 = !DILocation(line: 58, column: 7, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1165, file: !2, line: 58, column: 7)
!1176 = !DILocation(line: 58, column: 9, scope: !1175)
!1177 = !DILocation(line: 58, column: 7, scope: !1165)
!1178 = !DILocation(line: 59, column: 11, scope: !1175)
!1179 = !DILocation(line: 59, column: 4, scope: !1175)
!1180 = !DILocation(line: 60, column: 2, scope: !1165)
!1181 = !DILocation(line: 61, column: 8, scope: !1145)
!1182 = !DILocation(line: 61, column: 15, scope: !1145)
!1183 = !DILocation(line: 61, column: 6, scope: !1145)
!1184 = !DILocation(line: 62, column: 30, scope: !1145)
!1185 = !DILocation(line: 62, column: 2, scope: !1145)
!1186 = !DILocation(line: 62, column: 9, scope: !1145)
!1187 = !DILocation(line: 62, column: 15, scope: !1145)
!1188 = !DILocation(line: 62, column: 20, scope: !1145)
!1189 = !DILocation(line: 63, column: 2, scope: !1145)
!1190 = !DILocation(line: 63, column: 9, scope: !1145)
!1191 = !DILocation(line: 63, column: 14, scope: !1145)
!1192 = !DILocation(line: 64, column: 14, scope: !1145)
!1193 = !DILocation(line: 64, column: 9, scope: !1145)
!1194 = !DILocation(line: 64, column: 2, scope: !1145)
!1195 = !DILocation(line: 65, column: 1, scope: !1145)
!1196 = distinct !DISubprogram(name: "array_realloc", scope: !2, file: !2, line: 33, type: !1197, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!235, !1115, !463}
!1199 = !DILocalVariable(name: "array", arg: 1, scope: !1196, file: !2, line: 33, type: !1115)
!1200 = !DILocation(line: 33, column: 40, scope: !1196)
!1201 = !DILocalVariable(name: "new_total", arg: 2, scope: !1196, file: !2, line: 33, type: !463)
!1202 = !DILocation(line: 33, column: 54, scope: !1196)
!1203 = !DILocalVariable(name: "tmp", scope: !1196, file: !2, line: 35, type: !468)
!1204 = !DILocation(line: 35, column: 8, scope: !1196)
!1205 = !DILocation(line: 35, column: 27, scope: !1196)
!1206 = !DILocation(line: 35, column: 34, scope: !1196)
!1207 = !DILocation(line: 35, column: 57, scope: !1196)
!1208 = !DILocation(line: 35, column: 14, scope: !1196)
!1209 = !DILocation(line: 36, column: 6, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1196, file: !2, line: 36, column: 6)
!1211 = !DILocation(line: 36, column: 10, scope: !1210)
!1212 = !DILocation(line: 36, column: 6, scope: !1196)
!1213 = !DILocation(line: 37, column: 3, scope: !1210)
!1214 = !DILocation(line: 38, column: 17, scope: !1196)
!1215 = !DILocation(line: 38, column: 2, scope: !1196)
!1216 = !DILocation(line: 38, column: 9, scope: !1196)
!1217 = !DILocation(line: 38, column: 15, scope: !1196)
!1218 = !DILocation(line: 39, column: 17, scope: !1196)
!1219 = !DILocation(line: 39, column: 2, scope: !1196)
!1220 = !DILocation(line: 39, column: 9, scope: !1196)
!1221 = !DILocation(line: 39, column: 15, scope: !1196)
!1222 = !DILocation(line: 40, column: 2, scope: !1196)
!1223 = !DILocation(line: 41, column: 1, scope: !1196)
!1224 = distinct !DISubprogram(name: "array_append_unique", scope: !2, file: !2, line: 67, type: !1146, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1225 = !DILocalVariable(name: "array", arg: 1, scope: !1224, file: !2, line: 67, type: !1115)
!1226 = !DILocation(line: 67, column: 39, scope: !1224)
!1227 = !DILocalVariable(name: "element", arg: 2, scope: !1224, file: !2, line: 67, type: !1148)
!1228 = !DILocation(line: 67, column: 58, scope: !1224)
!1229 = !DILocalVariable(name: "itr", scope: !1224, file: !2, line: 69, type: !914)
!1230 = !DILocation(line: 69, column: 9, scope: !1224)
!1231 = !DILocation(line: 69, column: 15, scope: !1224)
!1232 = !DILocation(line: 69, column: 22, scope: !1224)
!1233 = !DILocalVariable(name: "itr_end", scope: !1224, file: !2, line: 70, type: !914)
!1234 = !DILocation(line: 70, column: 9, scope: !1224)
!1235 = !DILocation(line: 70, column: 19, scope: !1224)
!1236 = !DILocation(line: 70, column: 25, scope: !1224)
!1237 = !DILocation(line: 70, column: 32, scope: !1224)
!1238 = !DILocation(line: 70, column: 23, scope: !1224)
!1239 = !DILocation(line: 71, column: 2, scope: !1224)
!1240 = !DILocation(line: 71, column: 9, scope: !1241)
!1241 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 71, column: 2)
!1242 = distinct !DILexicalBlock(scope: !1224, file: !2, line: 71, column: 2)
!1243 = !DILocation(line: 71, column: 15, scope: !1241)
!1244 = !DILocation(line: 71, column: 13, scope: !1241)
!1245 = !DILocation(line: 71, column: 2, scope: !1242)
!1246 = !DILocation(line: 72, column: 8, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 72, column: 7)
!1248 = !DILocation(line: 72, column: 7, scope: !1247)
!1249 = !DILocation(line: 72, column: 15, scope: !1247)
!1250 = !DILocation(line: 72, column: 12, scope: !1247)
!1251 = !DILocation(line: 72, column: 7, scope: !1241)
!1252 = !DILocation(line: 73, column: 4, scope: !1247)
!1253 = !DILocation(line: 71, column: 27, scope: !1241)
!1254 = !DILocation(line: 71, column: 2, scope: !1241)
!1255 = distinct !{!1255, !1245, !1256, !1257}
!1256 = !DILocation(line: 73, column: 12, scope: !1242)
!1257 = !{!"llvm.loop.mustprogress"}
!1258 = !DILocation(line: 74, column: 22, scope: !1224)
!1259 = !DILocation(line: 74, column: 29, scope: !1224)
!1260 = !DILocation(line: 74, column: 9, scope: !1224)
!1261 = !DILocation(line: 74, column: 2, scope: !1224)
!1262 = !DILocation(line: 75, column: 1, scope: !1224)
!1263 = distinct !DISubprogram(name: "array_pop", scope: !2, file: !2, line: 77, type: !1264, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1264 = !DISubroutineType(types: !1265)
!1265 = !{null, !1115}
!1266 = !DILocalVariable(name: "array", arg: 1, scope: !1263, file: !2, line: 77, type: !1115)
!1267 = !DILocation(line: 77, column: 30, scope: !1263)
!1268 = !DILocation(line: 78, column: 2, scope: !1263)
!1269 = !DILocation(line: 78, column: 9, scope: !1263)
!1270 = !DILocation(line: 78, column: 14, scope: !1263)
!1271 = !DILocation(line: 79, column: 6, scope: !1272)
!1272 = distinct !DILexicalBlock(scope: !1263, file: !2, line: 79, column: 6)
!1273 = !DILocation(line: 79, column: 13, scope: !1272)
!1274 = !DILocation(line: 79, column: 21, scope: !1272)
!1275 = !DILocation(line: 79, column: 28, scope: !1272)
!1276 = !DILocation(line: 79, column: 19, scope: !1272)
!1277 = !DILocation(line: 79, column: 35, scope: !1272)
!1278 = !DILocation(line: 79, column: 42, scope: !1272)
!1279 = !DILocation(line: 79, column: 33, scope: !1272)
!1280 = !DILocation(line: 79, column: 6, scope: !1263)
!1281 = !DILocalVariable(name: "r", scope: !1282, file: !2, line: 80, type: !235)
!1282 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 79, column: 49)
!1283 = !DILocation(line: 80, column: 7, scope: !1282)
!1284 = !DILocation(line: 80, column: 25, scope: !1282)
!1285 = !DILocation(line: 80, column: 32, scope: !1282)
!1286 = !DILocation(line: 80, column: 39, scope: !1282)
!1287 = !DILocation(line: 80, column: 47, scope: !1282)
!1288 = !DILocation(line: 80, column: 54, scope: !1282)
!1289 = !DILocation(line: 80, column: 45, scope: !1282)
!1290 = !DILocation(line: 80, column: 11, scope: !1282)
!1291 = !DILocation(line: 81, column: 7, scope: !1292)
!1292 = distinct !DILexicalBlock(scope: !1282, file: !2, line: 81, column: 7)
!1293 = !DILocation(line: 81, column: 9, scope: !1292)
!1294 = !DILocation(line: 81, column: 7, scope: !1282)
!1295 = !DILocation(line: 82, column: 4, scope: !1292)
!1296 = !DILocation(line: 83, column: 2, scope: !1282)
!1297 = !DILocation(line: 84, column: 1, scope: !1263)
!1298 = distinct !DISubprogram(name: "array_free_array", scope: !2, file: !2, line: 86, type: !1264, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1299 = !DILocalVariable(name: "array", arg: 1, scope: !1298, file: !2, line: 86, type: !1115)
!1300 = !DILocation(line: 86, column: 37, scope: !1298)
!1301 = !DILocation(line: 87, column: 7, scope: !1298)
!1302 = !DILocation(line: 87, column: 14, scope: !1298)
!1303 = !DILocation(line: 87, column: 2, scope: !1298)
!1304 = !DILocation(line: 88, column: 2, scope: !1298)
!1305 = !DILocation(line: 88, column: 9, scope: !1298)
!1306 = !DILocation(line: 88, column: 15, scope: !1298)
!1307 = !DILocation(line: 89, column: 2, scope: !1298)
!1308 = !DILocation(line: 89, column: 9, scope: !1298)
!1309 = !DILocation(line: 89, column: 15, scope: !1298)
!1310 = !DILocation(line: 90, column: 1, scope: !1298)
!1311 = distinct !DISubprogram(name: "array_sort", scope: !2, file: !2, line: 93, type: !1312, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1312 = !DISubroutineType(types: !1313)
!1313 = !{null, !1115, !1314}
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!235, !1148, !1148}
!1317 = !DILocalVariable(name: "array", arg: 1, scope: !1311, file: !2, line: 93, type: !1115)
!1318 = !DILocation(line: 93, column: 31, scope: !1311)
!1319 = !DILocalVariable(name: "cmp", arg: 2, scope: !1311, file: !2, line: 93, type: !1314)
!1320 = !DILocation(line: 93, column: 44, scope: !1311)
!1321 = !DILocation(line: 95, column: 8, scope: !1311)
!1322 = !DILocation(line: 95, column: 15, scope: !1311)
!1323 = !DILocation(line: 95, column: 22, scope: !1311)
!1324 = !DILocation(line: 95, column: 29, scope: !1311)
!1325 = !DILocation(line: 95, column: 52, scope: !1311)
!1326 = !DILocation(line: 95, column: 2, scope: !1311)
!1327 = !DILocation(line: 96, column: 1, scope: !1311)
!1328 = distinct !DISubprogram(name: "array_remove_at", scope: !2, file: !2, line: 98, type: !1329, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !668, retainedNodes: !480)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!235, !1115, !241}
!1331 = !DILocalVariable(name: "array", arg: 1, scope: !1328, file: !2, line: 98, type: !1115)
!1332 = !DILocation(line: 98, column: 35, scope: !1328)
!1333 = !DILocalVariable(name: "pos", arg: 2, scope: !1328, file: !2, line: 98, type: !241)
!1334 = !DILocation(line: 98, column: 55, scope: !1328)
!1335 = !DILocation(line: 100, column: 6, scope: !1336)
!1336 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 100, column: 6)
!1337 = !DILocation(line: 100, column: 13, scope: !1336)
!1338 = !DILocation(line: 100, column: 22, scope: !1336)
!1339 = !DILocation(line: 100, column: 19, scope: !1336)
!1340 = !DILocation(line: 100, column: 6, scope: !1328)
!1341 = !DILocation(line: 101, column: 3, scope: !1336)
!1342 = !DILocation(line: 103, column: 2, scope: !1328)
!1343 = !DILocation(line: 103, column: 9, scope: !1328)
!1344 = !DILocation(line: 103, column: 14, scope: !1328)
!1345 = !DILocation(line: 104, column: 6, scope: !1346)
!1346 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 104, column: 6)
!1347 = !DILocation(line: 104, column: 12, scope: !1346)
!1348 = !DILocation(line: 104, column: 19, scope: !1346)
!1349 = !DILocation(line: 104, column: 10, scope: !1346)
!1350 = !DILocation(line: 104, column: 6, scope: !1328)
!1351 = !DILocation(line: 105, column: 11, scope: !1346)
!1352 = !DILocation(line: 105, column: 18, scope: !1346)
!1353 = !DILocation(line: 105, column: 26, scope: !1346)
!1354 = !DILocation(line: 105, column: 24, scope: !1346)
!1355 = !DILocation(line: 105, column: 31, scope: !1346)
!1356 = !DILocation(line: 105, column: 38, scope: !1346)
!1357 = !DILocation(line: 105, column: 46, scope: !1346)
!1358 = !DILocation(line: 105, column: 44, scope: !1346)
!1359 = !DILocation(line: 105, column: 50, scope: !1346)
!1360 = !DILocation(line: 106, column: 22, scope: !1346)
!1361 = !DILocation(line: 106, column: 29, scope: !1346)
!1362 = !DILocation(line: 106, column: 37, scope: !1346)
!1363 = !DILocation(line: 106, column: 35, scope: !1346)
!1364 = !DILocation(line: 106, column: 19, scope: !1346)
!1365 = !DILocation(line: 105, column: 3, scope: !1346)
!1366 = !DILocation(line: 108, column: 6, scope: !1367)
!1367 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 108, column: 6)
!1368 = !DILocation(line: 108, column: 13, scope: !1367)
!1369 = !DILocation(line: 108, column: 21, scope: !1367)
!1370 = !DILocation(line: 108, column: 28, scope: !1367)
!1371 = !DILocation(line: 108, column: 19, scope: !1367)
!1372 = !DILocation(line: 108, column: 35, scope: !1367)
!1373 = !DILocation(line: 108, column: 42, scope: !1367)
!1374 = !DILocation(line: 108, column: 33, scope: !1367)
!1375 = !DILocation(line: 108, column: 6, scope: !1328)
!1376 = !DILocalVariable(name: "r", scope: !1377, file: !2, line: 109, type: !235)
!1377 = distinct !DILexicalBlock(scope: !1367, file: !2, line: 108, column: 49)
!1378 = !DILocation(line: 109, column: 7, scope: !1377)
!1379 = !DILocation(line: 109, column: 25, scope: !1377)
!1380 = !DILocation(line: 109, column: 32, scope: !1377)
!1381 = !DILocation(line: 109, column: 39, scope: !1377)
!1382 = !DILocation(line: 109, column: 47, scope: !1377)
!1383 = !DILocation(line: 109, column: 54, scope: !1377)
!1384 = !DILocation(line: 109, column: 45, scope: !1377)
!1385 = !DILocation(line: 109, column: 11, scope: !1377)
!1386 = !DILocation(line: 111, column: 7, scope: !1387)
!1387 = distinct !DILexicalBlock(scope: !1377, file: !2, line: 111, column: 7)
!1388 = !DILocation(line: 111, column: 9, scope: !1387)
!1389 = !DILocation(line: 111, column: 7, scope: !1377)
!1390 = !DILocation(line: 112, column: 4, scope: !1387)
!1391 = !DILocation(line: 113, column: 2, scope: !1377)
!1392 = !DILocation(line: 115, column: 2, scope: !1328)
!1393 = !DILocation(line: 116, column: 1, scope: !1328)
!1394 = distinct !DISubprogram(name: "db_connect_mysql", scope: !20, file: !20, line: 186, type: !1395, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1395 = !DISubroutineType(types: !1396)
!1396 = !{!731, !437, !437, !437, !437}
!1397 = !DILocalVariable(name: "host", arg: 1, scope: !1394, file: !20, line: 186, type: !437)
!1398 = !DILocation(line: 186, column: 41, scope: !1394)
!1399 = !DILocalVariable(name: "user", arg: 2, scope: !1394, file: !20, line: 186, type: !437)
!1400 = !DILocation(line: 186, column: 59, scope: !1394)
!1401 = !DILocalVariable(name: "pass", arg: 3, scope: !1394, file: !20, line: 186, type: !437)
!1402 = !DILocation(line: 186, column: 77, scope: !1394)
!1403 = !DILocalVariable(name: "database", arg: 4, scope: !1394, file: !20, line: 187, type: !437)
!1404 = !DILocation(line: 187, column: 21, scope: !1394)
!1405 = !DILocalVariable(name: "db_mysql", scope: !1394, file: !20, line: 189, type: !772)
!1406 = !DILocation(line: 189, column: 22, scope: !1394)
!1407 = !DILocation(line: 189, column: 33, scope: !1394)
!1408 = !DILocation(line: 191, column: 10, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1394, file: !20, line: 191, column: 9)
!1410 = !DILocation(line: 191, column: 9, scope: !1394)
!1411 = !DILocation(line: 192, column: 9, scope: !1409)
!1412 = !DILocation(line: 194, column: 21, scope: !1394)
!1413 = !DILocation(line: 194, column: 5, scope: !1394)
!1414 = !DILocation(line: 194, column: 15, scope: !1394)
!1415 = !DILocation(line: 194, column: 19, scope: !1394)
!1416 = !DILocation(line: 195, column: 10, scope: !1417)
!1417 = distinct !DILexicalBlock(scope: !1394, file: !20, line: 195, column: 9)
!1418 = !DILocation(line: 195, column: 20, scope: !1417)
!1419 = !DILocation(line: 195, column: 9, scope: !1394)
!1420 = !DILocation(line: 196, column: 14, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1417, file: !20, line: 195, column: 25)
!1422 = !DILocation(line: 196, column: 9, scope: !1421)
!1423 = !DILocation(line: 197, column: 9, scope: !1421)
!1424 = !DILocation(line: 200, column: 29, scope: !1425)
!1425 = distinct !DILexicalBlock(scope: !1394, file: !20, line: 200, column: 9)
!1426 = !DILocation(line: 200, column: 39, scope: !1425)
!1427 = !DILocation(line: 200, column: 44, scope: !1425)
!1428 = !DILocation(line: 200, column: 50, scope: !1425)
!1429 = !DILocation(line: 200, column: 56, scope: !1425)
!1430 = !DILocation(line: 200, column: 62, scope: !1425)
!1431 = !DILocation(line: 200, column: 10, scope: !1425)
!1432 = !DILocation(line: 200, column: 9, scope: !1394)
!1433 = !DILocation(line: 201, column: 9, scope: !1425)
!1434 = !DILocation(line: 203, column: 33, scope: !1435)
!1435 = distinct !DILexicalBlock(scope: !1394, file: !20, line: 203, column: 9)
!1436 = !DILocation(line: 203, column: 43, scope: !1435)
!1437 = !DILocation(line: 203, column: 9, scope: !1435)
!1438 = !DILocation(line: 203, column: 9, scope: !1394)
!1439 = !DILocation(line: 204, column: 9, scope: !1435)
!1440 = !DILocation(line: 206, column: 5, scope: !1394)
!1441 = !DILocation(line: 206, column: 15, scope: !1394)
!1442 = !DILocation(line: 206, column: 20, scope: !1394)
!1443 = !DILocation(line: 206, column: 31, scope: !1394)
!1444 = !DILocation(line: 207, column: 5, scope: !1394)
!1445 = !DILocation(line: 207, column: 15, scope: !1394)
!1446 = !DILocation(line: 207, column: 20, scope: !1394)
!1447 = !DILocation(line: 207, column: 28, scope: !1394)
!1448 = !DILocation(line: 209, column: 25, scope: !1394)
!1449 = !DILocation(line: 209, column: 5, scope: !1394)
!1450 = !DILabel(scope: !1394, name: "error", file: !20, line: 211)
!1451 = !DILocation(line: 211, column: 1, scope: !1394)
!1452 = !DILocation(line: 212, column: 17, scope: !1394)
!1453 = !DILocation(line: 212, column: 27, scope: !1394)
!1454 = !DILocation(line: 212, column: 5, scope: !1394)
!1455 = !DILocation(line: 213, column: 10, scope: !1394)
!1456 = !DILocation(line: 213, column: 5, scope: !1394)
!1457 = !DILocation(line: 214, column: 5, scope: !1394)
!1458 = !DILocation(line: 215, column: 1, scope: !1394)
!1459 = distinct !DISubprogram(name: "db_disconnect_mysql", scope: !20, file: !20, line: 178, type: !736, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1460 = !DILocalVariable(name: "db", arg: 1, scope: !1459, file: !20, line: 178, type: !731)
!1461 = !DILocation(line: 178, column: 44, scope: !1459)
!1462 = !DILocalVariable(name: "db_mysql", scope: !1459, file: !20, line: 180, type: !772)
!1463 = !DILocation(line: 180, column: 22, scope: !1459)
!1464 = !DILocation(line: 180, column: 52, scope: !1459)
!1465 = !DILocation(line: 182, column: 17, scope: !1459)
!1466 = !DILocation(line: 182, column: 27, scope: !1459)
!1467 = !DILocation(line: 182, column: 5, scope: !1459)
!1468 = !DILocation(line: 183, column: 10, scope: !1459)
!1469 = !DILocation(line: 183, column: 5, scope: !1459)
!1470 = !DILocation(line: 184, column: 1, scope: !1459)
!1471 = distinct !DISubprogram(name: "db_prepare_mysql", scope: !20, file: !20, line: 147, type: !740, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1472 = !DILocalVariable(name: "db", arg: 1, scope: !1471, file: !20, line: 147, type: !769)
!1473 = !DILocation(line: 147, column: 58, scope: !1471)
!1474 = !DILocalVariable(name: "sql", arg: 2, scope: !1471, file: !20, line: 147, type: !437)
!1475 = !DILocation(line: 147, column: 74, scope: !1471)
!1476 = !DILocalVariable(name: "sql_len", arg: 3, scope: !1471, file: !20, line: 148, type: !771)
!1477 = !DILocation(line: 148, column: 22, scope: !1471)
!1478 = !DILocalVariable(name: "db_mysql", scope: !1471, file: !20, line: 150, type: !951)
!1479 = !DILocation(line: 150, column: 28, scope: !1471)
!1480 = !DILocation(line: 150, column: 64, scope: !1471)
!1481 = !DILocalVariable(name: "stmt_mysql", scope: !1471, file: !20, line: 151, type: !953)
!1482 = !DILocation(line: 151, column: 27, scope: !1471)
!1483 = !DILocation(line: 151, column: 40, scope: !1471)
!1484 = !DILocation(line: 153, column: 10, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1471, file: !20, line: 153, column: 9)
!1486 = !DILocation(line: 153, column: 9, scope: !1471)
!1487 = !DILocation(line: 154, column: 9, scope: !1485)
!1488 = !DILocation(line: 156, column: 40, scope: !1471)
!1489 = !DILocation(line: 156, column: 50, scope: !1471)
!1490 = !DILocation(line: 156, column: 24, scope: !1471)
!1491 = !DILocation(line: 156, column: 5, scope: !1471)
!1492 = !DILocation(line: 156, column: 17, scope: !1471)
!1493 = !DILocation(line: 156, column: 22, scope: !1471)
!1494 = !DILocation(line: 157, column: 10, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1471, file: !20, line: 157, column: 9)
!1496 = !DILocation(line: 157, column: 22, scope: !1495)
!1497 = !DILocation(line: 157, column: 9, scope: !1471)
!1498 = !DILocation(line: 158, column: 14, scope: !1499)
!1499 = distinct !DILexicalBlock(scope: !1495, file: !20, line: 157, column: 28)
!1500 = !DILocation(line: 158, column: 9, scope: !1499)
!1501 = !DILocation(line: 159, column: 9, scope: !1499)
!1502 = !DILocation(line: 162, column: 28, scope: !1503)
!1503 = distinct !DILexicalBlock(scope: !1471, file: !20, line: 162, column: 9)
!1504 = !DILocation(line: 162, column: 40, scope: !1503)
!1505 = !DILocation(line: 162, column: 46, scope: !1503)
!1506 = !DILocation(line: 162, column: 51, scope: !1503)
!1507 = !DILocation(line: 162, column: 9, scope: !1503)
!1508 = !DILocation(line: 162, column: 9, scope: !1471)
!1509 = !DILocation(line: 163, column: 26, scope: !1510)
!1510 = distinct !DILexicalBlock(scope: !1503, file: !20, line: 162, column: 61)
!1511 = !DILocation(line: 163, column: 38, scope: !1510)
!1512 = !DILocation(line: 163, column: 9, scope: !1510)
!1513 = !DILocation(line: 164, column: 14, scope: !1510)
!1514 = !DILocation(line: 164, column: 9, scope: !1510)
!1515 = !DILocation(line: 165, column: 9, scope: !1510)
!1516 = !DILocation(line: 168, column: 5, scope: !1471)
!1517 = !DILocation(line: 168, column: 17, scope: !1471)
!1518 = !DILocation(line: 168, column: 22, scope: !1471)
!1519 = !DILocation(line: 168, column: 27, scope: !1471)
!1520 = !DILocation(line: 169, column: 5, scope: !1471)
!1521 = !DILocation(line: 169, column: 17, scope: !1471)
!1522 = !DILocation(line: 169, column: 22, scope: !1471)
!1523 = !DILocation(line: 169, column: 27, scope: !1471)
!1524 = !DILocation(line: 170, column: 5, scope: !1471)
!1525 = !DILocation(line: 170, column: 17, scope: !1471)
!1526 = !DILocation(line: 170, column: 22, scope: !1471)
!1527 = !DILocation(line: 170, column: 31, scope: !1471)
!1528 = !DILocation(line: 171, column: 5, scope: !1471)
!1529 = !DILocation(line: 171, column: 17, scope: !1471)
!1530 = !DILocation(line: 171, column: 29, scope: !1471)
!1531 = !DILocation(line: 172, column: 5, scope: !1471)
!1532 = !DILocation(line: 172, column: 17, scope: !1471)
!1533 = !DILocation(line: 172, column: 28, scope: !1471)
!1534 = !DILocation(line: 173, column: 5, scope: !1471)
!1535 = !DILocation(line: 173, column: 17, scope: !1471)
!1536 = !DILocation(line: 173, column: 36, scope: !1471)
!1537 = !DILocation(line: 175, column: 29, scope: !1471)
!1538 = !DILocation(line: 175, column: 5, scope: !1471)
!1539 = !DILocation(line: 176, column: 1, scope: !1471)
!1540 = distinct !DISubprogram(name: "db_stmt_bind_mysql", scope: !20, file: !20, line: 53, type: !747, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1541 = !DILocalVariable(name: "stmt", arg: 1, scope: !1540, file: !20, line: 53, type: !749)
!1542 = !DILocation(line: 53, column: 54, scope: !1540)
!1543 = !DILocalVariable(name: "rows", arg: 2, scope: !1540, file: !20, line: 54, type: !751)
!1544 = !DILocation(line: 54, column: 24, scope: !1540)
!1545 = !DILocalVariable(name: "n_rows", arg: 3, scope: !1540, file: !20, line: 54, type: !463)
!1546 = !DILocation(line: 54, column: 37, scope: !1540)
!1547 = !DILocalVariable(name: "stmt_mysql", scope: !1540, file: !20, line: 56, type: !953)
!1548 = !DILocation(line: 56, column: 27, scope: !1540)
!1549 = !DILocation(line: 56, column: 64, scope: !1540)
!1550 = !DILocation(line: 58, column: 5, scope: !1540)
!1551 = !DILocation(line: 58, column: 17, scope: !1540)
!1552 = !DILocation(line: 58, column: 36, scope: !1540)
!1553 = !DILocation(line: 60, column: 10, scope: !1554)
!1554 = distinct !DILexicalBlock(scope: !1540, file: !20, line: 60, column: 9)
!1555 = !DILocation(line: 60, column: 22, scope: !1554)
!1556 = !DILocation(line: 60, column: 9, scope: !1540)
!1557 = !DILocation(line: 61, column: 41, scope: !1558)
!1558 = distinct !DILexicalBlock(scope: !1554, file: !20, line: 60, column: 34)
!1559 = !DILocation(line: 61, column: 34, scope: !1558)
!1560 = !DILocation(line: 61, column: 9, scope: !1558)
!1561 = !DILocation(line: 61, column: 21, scope: !1558)
!1562 = !DILocation(line: 61, column: 32, scope: !1558)
!1563 = !DILocation(line: 62, column: 14, scope: !1564)
!1564 = distinct !DILexicalBlock(scope: !1558, file: !20, line: 62, column: 13)
!1565 = !DILocation(line: 62, column: 26, scope: !1564)
!1566 = !DILocation(line: 62, column: 13, scope: !1558)
!1567 = !DILocation(line: 63, column: 13, scope: !1564)
!1568 = !DILocation(line: 64, column: 5, scope: !1558)
!1569 = !DILocation(line: 65, column: 26, scope: !1570)
!1570 = distinct !DILexicalBlock(scope: !1554, file: !20, line: 64, column: 12)
!1571 = !DILocation(line: 65, column: 38, scope: !1570)
!1572 = !DILocation(line: 65, column: 9, scope: !1570)
!1573 = !DILocalVariable(name: "row", scope: !1574, file: !20, line: 68, type: !463)
!1574 = distinct !DILexicalBlock(scope: !1540, file: !20, line: 68, column: 5)
!1575 = !DILocation(line: 68, column: 17, scope: !1574)
!1576 = !DILocation(line: 68, column: 10, scope: !1574)
!1577 = !DILocation(line: 68, column: 26, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1574, file: !20, line: 68, column: 5)
!1579 = !DILocation(line: 68, column: 32, scope: !1578)
!1580 = !DILocation(line: 68, column: 30, scope: !1578)
!1581 = !DILocation(line: 68, column: 5, scope: !1574)
!1582 = !DILocation(line: 69, column: 13, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !20, line: 69, column: 13)
!1584 = distinct !DILexicalBlock(scope: !1578, file: !20, line: 68, column: 47)
!1585 = !DILocation(line: 69, column: 18, scope: !1583)
!1586 = !DILocation(line: 69, column: 23, scope: !1583)
!1587 = !DILocation(line: 69, column: 28, scope: !1583)
!1588 = !DILocation(line: 69, column: 13, scope: !1584)
!1589 = !DILocation(line: 69, column: 37, scope: !1583)
!1590 = !DILocalVariable(name: "param", scope: !1584, file: !20, line: 71, type: !966)
!1591 = !DILocation(line: 71, column: 21, scope: !1584)
!1592 = !DILocation(line: 71, column: 30, scope: !1584)
!1593 = !DILocation(line: 71, column: 42, scope: !1584)
!1594 = !DILocation(line: 71, column: 53, scope: !1584)
!1595 = !DILocation(line: 72, column: 13, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1584, file: !20, line: 72, column: 13)
!1597 = !DILocation(line: 72, column: 18, scope: !1596)
!1598 = !DILocation(line: 72, column: 23, scope: !1596)
!1599 = !DILocation(line: 72, column: 28, scope: !1596)
!1600 = !DILocation(line: 72, column: 13, scope: !1584)
!1601 = !DILocation(line: 73, column: 13, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1596, file: !20, line: 72, column: 36)
!1603 = !DILocation(line: 73, column: 20, scope: !1602)
!1604 = !DILocation(line: 73, column: 32, scope: !1602)
!1605 = !DILocation(line: 74, column: 29, scope: !1602)
!1606 = !DILocation(line: 74, column: 34, scope: !1602)
!1607 = !DILocation(line: 74, column: 39, scope: !1602)
!1608 = !DILocation(line: 74, column: 41, scope: !1602)
!1609 = !DILocation(line: 74, column: 13, scope: !1602)
!1610 = !DILocation(line: 74, column: 20, scope: !1602)
!1611 = !DILocation(line: 74, column: 27, scope: !1602)
!1612 = !DILocation(line: 75, column: 9, scope: !1602)
!1613 = !DILocation(line: 75, column: 20, scope: !1614)
!1614 = distinct !DILexicalBlock(scope: !1596, file: !20, line: 75, column: 20)
!1615 = !DILocation(line: 75, column: 25, scope: !1614)
!1616 = !DILocation(line: 75, column: 30, scope: !1614)
!1617 = !DILocation(line: 75, column: 35, scope: !1614)
!1618 = !DILocation(line: 75, column: 20, scope: !1596)
!1619 = !DILocation(line: 76, column: 13, scope: !1620)
!1620 = distinct !DILexicalBlock(scope: !1614, file: !20, line: 75, column: 43)
!1621 = !DILocation(line: 76, column: 20, scope: !1620)
!1622 = !DILocation(line: 76, column: 32, scope: !1620)
!1623 = !DILocation(line: 77, column: 30, scope: !1620)
!1624 = !DILocation(line: 77, column: 35, scope: !1620)
!1625 = !DILocation(line: 77, column: 40, scope: !1620)
!1626 = !DILocation(line: 77, column: 13, scope: !1620)
!1627 = !DILocation(line: 77, column: 20, scope: !1620)
!1628 = !DILocation(line: 77, column: 27, scope: !1620)
!1629 = !DILocation(line: 78, column: 9, scope: !1620)
!1630 = !DILocation(line: 79, column: 9, scope: !1584)
!1631 = !DILocation(line: 79, column: 16, scope: !1584)
!1632 = !DILocation(line: 79, column: 24, scope: !1584)
!1633 = !DILocation(line: 80, column: 9, scope: !1584)
!1634 = !DILocation(line: 80, column: 16, scope: !1584)
!1635 = !DILocation(line: 80, column: 23, scope: !1584)
!1636 = !DILocation(line: 81, column: 5, scope: !1584)
!1637 = !DILocation(line: 68, column: 43, scope: !1578)
!1638 = !DILocation(line: 68, column: 5, scope: !1578)
!1639 = distinct !{!1639, !1581, !1640, !1257}
!1640 = !DILocation(line: 81, column: 5, scope: !1574)
!1641 = !DILocation(line: 83, column: 35, scope: !1540)
!1642 = !DILocation(line: 83, column: 47, scope: !1540)
!1643 = !DILocation(line: 83, column: 53, scope: !1540)
!1644 = !DILocation(line: 83, column: 65, scope: !1540)
!1645 = !DILocation(line: 83, column: 13, scope: !1540)
!1646 = !DILocation(line: 83, column: 12, scope: !1540)
!1647 = !DILocation(line: 83, column: 5, scope: !1540)
!1648 = !DILocation(line: 84, column: 1, scope: !1540)
!1649 = distinct !DISubprogram(name: "db_stmt_step_mysql", scope: !20, file: !20, line: 86, type: !763, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1650 = !DILocalVariable(name: "stmt", arg: 1, scope: !1649, file: !20, line: 86, type: !749)
!1651 = !DILocation(line: 86, column: 54, scope: !1649)
!1652 = !DILocalVariable(name: "row", arg: 2, scope: !1649, file: !20, line: 86, type: !751)
!1653 = !DILocation(line: 86, column: 75, scope: !1649)
!1654 = !DILocalVariable(name: "stmt_mysql", scope: !1649, file: !20, line: 88, type: !953)
!1655 = !DILocation(line: 88, column: 27, scope: !1649)
!1656 = !DILocation(line: 88, column: 64, scope: !1649)
!1657 = !DILocation(line: 90, column: 9, scope: !1658)
!1658 = distinct !DILexicalBlock(scope: !1649, file: !20, line: 90, column: 9)
!1659 = !DILocation(line: 90, column: 21, scope: !1658)
!1660 = !DILocation(line: 90, column: 9, scope: !1649)
!1661 = !DILocation(line: 91, column: 9, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1658, file: !20, line: 90, column: 41)
!1663 = !DILocation(line: 91, column: 21, scope: !1662)
!1664 = !DILocation(line: 91, column: 40, scope: !1662)
!1665 = !DILocation(line: 92, column: 32, scope: !1666)
!1666 = distinct !DILexicalBlock(scope: !1662, file: !20, line: 92, column: 13)
!1667 = !DILocation(line: 92, column: 44, scope: !1666)
!1668 = !DILocation(line: 92, column: 13, scope: !1666)
!1669 = !DILocation(line: 92, column: 13, scope: !1662)
!1670 = !DILocation(line: 93, column: 13, scope: !1666)
!1671 = !DILocation(line: 94, column: 5, scope: !1662)
!1672 = !DILocation(line: 96, column: 10, scope: !1673)
!1673 = distinct !DILexicalBlock(scope: !1649, file: !20, line: 96, column: 9)
!1674 = !DILocation(line: 96, column: 22, scope: !1673)
!1675 = !DILocation(line: 96, column: 9, scope: !1649)
!1676 = !DILocalVariable(name: "n_rows", scope: !1677, file: !20, line: 97, type: !463)
!1677 = distinct !DILexicalBlock(scope: !1673, file: !20, line: 96, column: 35)
!1678 = !DILocation(line: 97, column: 16, scope: !1677)
!1679 = !DILocalVariable(name: "r", scope: !1680, file: !20, line: 98, type: !751)
!1680 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 98, column: 9)
!1681 = !DILocation(line: 98, column: 29, scope: !1680)
!1682 = !DILocation(line: 98, column: 33, scope: !1680)
!1683 = !DILocation(line: 98, column: 14, scope: !1680)
!1684 = !DILocation(line: 98, column: 38, scope: !1685)
!1685 = distinct !DILexicalBlock(scope: !1680, file: !20, line: 98, column: 9)
!1686 = !DILocation(line: 98, column: 41, scope: !1685)
!1687 = !DILocation(line: 98, column: 46, scope: !1685)
!1688 = !DILocation(line: 98, column: 9, scope: !1680)
!1689 = !DILocation(line: 99, column: 19, scope: !1685)
!1690 = !DILocation(line: 99, column: 13, scope: !1685)
!1691 = !DILocation(line: 98, column: 56, scope: !1685)
!1692 = !DILocation(line: 98, column: 9, scope: !1685)
!1693 = distinct !{!1693, !1688, !1694, !1257}
!1694 = !DILocation(line: 99, column: 19, scope: !1680)
!1695 = !DILocation(line: 101, column: 14, scope: !1696)
!1696 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 101, column: 13)
!1697 = !DILocation(line: 101, column: 13, scope: !1677)
!1698 = !DILocation(line: 102, column: 13, scope: !1696)
!1699 = !DILocation(line: 104, column: 42, scope: !1677)
!1700 = !DILocation(line: 104, column: 35, scope: !1677)
!1701 = !DILocation(line: 104, column: 9, scope: !1677)
!1702 = !DILocation(line: 104, column: 21, scope: !1677)
!1703 = !DILocation(line: 104, column: 33, scope: !1677)
!1704 = !DILocation(line: 105, column: 14, scope: !1705)
!1705 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 105, column: 13)
!1706 = !DILocation(line: 105, column: 26, scope: !1705)
!1707 = !DILocation(line: 105, column: 13, scope: !1677)
!1708 = !DILocation(line: 106, column: 13, scope: !1705)
!1709 = !DILocation(line: 108, column: 41, scope: !1677)
!1710 = !DILocation(line: 108, column: 34, scope: !1677)
!1711 = !DILocation(line: 108, column: 9, scope: !1677)
!1712 = !DILocation(line: 108, column: 21, scope: !1677)
!1713 = !DILocation(line: 108, column: 32, scope: !1677)
!1714 = !DILocation(line: 109, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 109, column: 13)
!1716 = !DILocation(line: 109, column: 26, scope: !1715)
!1717 = !DILocation(line: 109, column: 13, scope: !1677)
!1718 = !DILocation(line: 110, column: 18, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !20, line: 109, column: 38)
!1720 = !DILocation(line: 110, column: 30, scope: !1719)
!1721 = !DILocation(line: 110, column: 13, scope: !1719)
!1722 = !DILocation(line: 111, column: 13, scope: !1719)
!1723 = !DILocalVariable(name: "result", scope: !1677, file: !20, line: 114, type: !966)
!1724 = !DILocation(line: 114, column: 21, scope: !1677)
!1725 = !DILocation(line: 114, column: 30, scope: !1677)
!1726 = !DILocation(line: 114, column: 42, scope: !1677)
!1727 = !DILocalVariable(name: "r", scope: !1728, file: !20, line: 115, type: !463)
!1728 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 115, column: 9)
!1729 = !DILocation(line: 115, column: 21, scope: !1728)
!1730 = !DILocation(line: 115, column: 14, scope: !1728)
!1731 = !DILocation(line: 115, column: 28, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1728, file: !20, line: 115, column: 9)
!1733 = !DILocation(line: 115, column: 32, scope: !1732)
!1734 = !DILocation(line: 115, column: 30, scope: !1732)
!1735 = !DILocation(line: 115, column: 9, scope: !1728)
!1736 = !DILocation(line: 116, column: 17, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !1738, file: !20, line: 116, column: 17)
!1738 = distinct !DILexicalBlock(scope: !1732, file: !20, line: 115, column: 45)
!1739 = !DILocation(line: 116, column: 21, scope: !1737)
!1740 = !DILocation(line: 116, column: 24, scope: !1737)
!1741 = !DILocation(line: 116, column: 29, scope: !1737)
!1742 = !DILocation(line: 116, column: 17, scope: !1738)
!1743 = !DILocation(line: 117, column: 17, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1737, file: !20, line: 116, column: 37)
!1745 = !DILocation(line: 117, column: 24, scope: !1744)
!1746 = !DILocation(line: 117, column: 27, scope: !1744)
!1747 = !DILocation(line: 117, column: 39, scope: !1744)
!1748 = !DILocation(line: 118, column: 36, scope: !1744)
!1749 = !DILocation(line: 118, column: 40, scope: !1744)
!1750 = !DILocation(line: 118, column: 43, scope: !1744)
!1751 = !DILocation(line: 118, column: 45, scope: !1744)
!1752 = !DILocation(line: 118, column: 17, scope: !1744)
!1753 = !DILocation(line: 118, column: 24, scope: !1744)
!1754 = !DILocation(line: 118, column: 27, scope: !1744)
!1755 = !DILocation(line: 118, column: 34, scope: !1744)
!1756 = !DILocation(line: 119, column: 13, scope: !1744)
!1757 = !DILocation(line: 119, column: 24, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1737, file: !20, line: 119, column: 24)
!1759 = !DILocation(line: 119, column: 28, scope: !1758)
!1760 = !DILocation(line: 119, column: 31, scope: !1758)
!1761 = !DILocation(line: 119, column: 36, scope: !1758)
!1762 = !DILocation(line: 119, column: 24, scope: !1737)
!1763 = !DILocation(line: 120, column: 17, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1758, file: !20, line: 119, column: 44)
!1765 = !DILocation(line: 120, column: 24, scope: !1764)
!1766 = !DILocation(line: 120, column: 27, scope: !1764)
!1767 = !DILocation(line: 120, column: 39, scope: !1764)
!1768 = !DILocation(line: 121, column: 37, scope: !1764)
!1769 = !DILocation(line: 121, column: 41, scope: !1764)
!1770 = !DILocation(line: 121, column: 44, scope: !1764)
!1771 = !DILocation(line: 121, column: 17, scope: !1764)
!1772 = !DILocation(line: 121, column: 24, scope: !1764)
!1773 = !DILocation(line: 121, column: 27, scope: !1764)
!1774 = !DILocation(line: 121, column: 34, scope: !1764)
!1775 = !DILocation(line: 122, column: 13, scope: !1764)
!1776 = !DILocation(line: 123, column: 17, scope: !1777)
!1777 = distinct !DILexicalBlock(scope: !1758, file: !20, line: 122, column: 20)
!1778 = !DILocation(line: 126, column: 13, scope: !1738)
!1779 = !DILocation(line: 126, column: 20, scope: !1738)
!1780 = !DILocation(line: 126, column: 23, scope: !1738)
!1781 = !DILocation(line: 126, column: 31, scope: !1738)
!1782 = !DILocation(line: 127, column: 39, scope: !1738)
!1783 = !DILocation(line: 127, column: 43, scope: !1738)
!1784 = !DILocation(line: 127, column: 46, scope: !1738)
!1785 = !DILocation(line: 127, column: 13, scope: !1738)
!1786 = !DILocation(line: 127, column: 20, scope: !1738)
!1787 = !DILocation(line: 127, column: 23, scope: !1738)
!1788 = !DILocation(line: 127, column: 37, scope: !1738)
!1789 = !DILocation(line: 128, column: 9, scope: !1738)
!1790 = !DILocation(line: 115, column: 41, scope: !1732)
!1791 = !DILocation(line: 115, column: 9, scope: !1732)
!1792 = distinct !{!1792, !1735, !1793, !1257}
!1793 = !DILocation(line: 128, column: 9, scope: !1728)
!1794 = !DILocation(line: 130, column: 36, scope: !1795)
!1795 = distinct !DILexicalBlock(scope: !1677, file: !20, line: 130, column: 13)
!1796 = !DILocation(line: 130, column: 48, scope: !1795)
!1797 = !DILocation(line: 130, column: 54, scope: !1795)
!1798 = !DILocation(line: 130, column: 13, scope: !1795)
!1799 = !DILocation(line: 130, column: 13, scope: !1677)
!1800 = !DILocation(line: 131, column: 13, scope: !1795)
!1801 = !DILocation(line: 132, column: 5, scope: !1677)
!1802 = !DILocation(line: 134, column: 29, scope: !1649)
!1803 = !DILocation(line: 134, column: 41, scope: !1649)
!1804 = !DILocation(line: 134, column: 12, scope: !1649)
!1805 = !DILocation(line: 134, column: 47, scope: !1649)
!1806 = !DILocation(line: 134, column: 5, scope: !1649)
!1807 = !DILocation(line: 135, column: 1, scope: !1649)
!1808 = distinct !DISubprogram(name: "db_stmt_finalize_mysql", scope: !20, file: !20, line: 137, type: !767, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1809 = !DILocalVariable(name: "stmt", arg: 1, scope: !1808, file: !20, line: 137, type: !742)
!1810 = !DILocation(line: 137, column: 52, scope: !1808)
!1811 = !DILocalVariable(name: "stmt_mysql", scope: !1808, file: !20, line: 139, type: !953)
!1812 = !DILocation(line: 139, column: 27, scope: !1808)
!1813 = !DILocation(line: 139, column: 64, scope: !1808)
!1814 = !DILocation(line: 141, column: 22, scope: !1808)
!1815 = !DILocation(line: 141, column: 34, scope: !1808)
!1816 = !DILocation(line: 141, column: 5, scope: !1808)
!1817 = !DILocation(line: 142, column: 10, scope: !1808)
!1818 = !DILocation(line: 142, column: 22, scope: !1808)
!1819 = !DILocation(line: 142, column: 5, scope: !1808)
!1820 = !DILocation(line: 143, column: 10, scope: !1808)
!1821 = !DILocation(line: 143, column: 22, scope: !1808)
!1822 = !DILocation(line: 143, column: 5, scope: !1808)
!1823 = !DILocation(line: 144, column: 10, scope: !1808)
!1824 = !DILocation(line: 144, column: 5, scope: !1808)
!1825 = !DILocation(line: 145, column: 1, scope: !1808)
!1826 = distinct !DISubprogram(name: "db_connect_sqlite", scope: !20, file: !20, line: 317, type: !1827, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{!731, !437, !473, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!1830 = !DILocalVariable(name: "path", arg: 1, scope: !1826, file: !20, line: 317, type: !437)
!1831 = !DILocation(line: 317, column: 42, scope: !1826)
!1832 = !DILocalVariable(name: "read_only", arg: 2, scope: !1826, file: !20, line: 317, type: !473)
!1833 = !DILocation(line: 317, column: 53, scope: !1826)
!1834 = !DILocalVariable(name: "pragmas", arg: 3, scope: !1826, file: !20, line: 317, type: !1829)
!1835 = !DILocation(line: 317, column: 76, scope: !1826)
!1836 = !DILocalVariable(name: "db_sqlite", scope: !1826, file: !20, line: 319, type: !1048)
!1837 = !DILocation(line: 319, column: 23, scope: !1826)
!1838 = !DILocation(line: 319, column: 35, scope: !1826)
!1839 = !DILocation(line: 321, column: 10, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1826, file: !20, line: 321, column: 9)
!1841 = !DILocation(line: 321, column: 9, scope: !1826)
!1842 = !DILocation(line: 322, column: 9, scope: !1840)
!1843 = !DILocalVariable(name: "flags", scope: !1826, file: !20, line: 324, type: !235)
!1844 = !DILocation(line: 324, column: 9, scope: !1826)
!1845 = !DILocation(line: 324, column: 17, scope: !1826)
!1846 = !DILocalVariable(name: "ret", scope: !1826, file: !20, line: 325, type: !235)
!1847 = !DILocation(line: 325, column: 9, scope: !1826)
!1848 = !DILocation(line: 325, column: 31, scope: !1826)
!1849 = !DILocation(line: 325, column: 38, scope: !1826)
!1850 = !DILocation(line: 325, column: 49, scope: !1826)
!1851 = !DILocation(line: 325, column: 57, scope: !1826)
!1852 = !DILocation(line: 325, column: 15, scope: !1826)
!1853 = !DILocation(line: 326, column: 9, scope: !1854)
!1854 = distinct !DILexicalBlock(scope: !1826, file: !20, line: 326, column: 9)
!1855 = !DILocation(line: 326, column: 13, scope: !1854)
!1856 = !DILocation(line: 326, column: 9, scope: !1826)
!1857 = !DILocation(line: 327, column: 14, scope: !1858)
!1858 = distinct !DILexicalBlock(scope: !1854, file: !20, line: 326, column: 27)
!1859 = !DILocation(line: 327, column: 9, scope: !1858)
!1860 = !DILocation(line: 328, column: 9, scope: !1858)
!1861 = !DILocation(line: 331, column: 9, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1826, file: !20, line: 331, column: 9)
!1863 = !DILocation(line: 331, column: 9, scope: !1826)
!1864 = !DILocalVariable(name: "p", scope: !1865, file: !20, line: 332, type: !463)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !20, line: 332, column: 9)
!1866 = distinct !DILexicalBlock(scope: !1862, file: !20, line: 331, column: 18)
!1867 = !DILocation(line: 332, column: 21, scope: !1865)
!1868 = !DILocation(line: 332, column: 14, scope: !1865)
!1869 = !DILocation(line: 332, column: 28, scope: !1870)
!1870 = distinct !DILexicalBlock(scope: !1865, file: !20, line: 332, column: 9)
!1871 = !DILocation(line: 332, column: 36, scope: !1870)
!1872 = !DILocation(line: 332, column: 9, scope: !1865)
!1873 = !DILocation(line: 333, column: 26, scope: !1870)
!1874 = !DILocation(line: 333, column: 37, scope: !1870)
!1875 = !DILocation(line: 333, column: 45, scope: !1870)
!1876 = !DILocation(line: 333, column: 53, scope: !1870)
!1877 = !DILocation(line: 333, column: 13, scope: !1870)
!1878 = !DILocation(line: 332, column: 41, scope: !1870)
!1879 = !DILocation(line: 332, column: 9, scope: !1870)
!1880 = distinct !{!1880, !1872, !1881, !1257}
!1881 = !DILocation(line: 333, column: 73, scope: !1865)
!1882 = !DILocation(line: 334, column: 5, scope: !1866)
!1883 = !DILocation(line: 336, column: 5, scope: !1826)
!1884 = !DILocation(line: 336, column: 16, scope: !1826)
!1885 = !DILocation(line: 336, column: 21, scope: !1826)
!1886 = !DILocation(line: 336, column: 32, scope: !1826)
!1887 = !DILocation(line: 337, column: 5, scope: !1826)
!1888 = !DILocation(line: 337, column: 16, scope: !1826)
!1889 = !DILocation(line: 337, column: 21, scope: !1826)
!1890 = !DILocation(line: 337, column: 29, scope: !1826)
!1891 = !DILocation(line: 339, column: 25, scope: !1826)
!1892 = !DILocation(line: 339, column: 5, scope: !1826)
!1893 = !DILocation(line: 340, column: 1, scope: !1826)
!1894 = distinct !DISubprogram(name: "db_disconnect_sqlite", scope: !20, file: !20, line: 309, type: !736, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1895 = !DILocalVariable(name: "db", arg: 1, scope: !1894, file: !20, line: 309, type: !731)
!1896 = !DILocation(line: 309, column: 45, scope: !1894)
!1897 = !DILocalVariable(name: "db_sqlite", scope: !1894, file: !20, line: 311, type: !1048)
!1898 = !DILocation(line: 311, column: 23, scope: !1894)
!1899 = !DILocation(line: 311, column: 55, scope: !1894)
!1900 = !DILocation(line: 313, column: 19, scope: !1894)
!1901 = !DILocation(line: 313, column: 30, scope: !1894)
!1902 = !DILocation(line: 313, column: 5, scope: !1894)
!1903 = !DILocation(line: 314, column: 10, scope: !1894)
!1904 = !DILocation(line: 314, column: 5, scope: !1894)
!1905 = !DILocation(line: 315, column: 1, scope: !1894)
!1906 = distinct !DISubprogram(name: "db_prepare_sqlite", scope: !20, file: !20, line: 287, type: !740, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1907 = !DILocalVariable(name: "db", arg: 1, scope: !1906, file: !20, line: 287, type: !769)
!1908 = !DILocation(line: 287, column: 59, scope: !1906)
!1909 = !DILocalVariable(name: "sql", arg: 2, scope: !1906, file: !20, line: 287, type: !437)
!1910 = !DILocation(line: 287, column: 75, scope: !1906)
!1911 = !DILocalVariable(name: "sql_len", arg: 3, scope: !1906, file: !20, line: 288, type: !771)
!1912 = !DILocation(line: 288, column: 22, scope: !1906)
!1913 = !DILocalVariable(name: "db_sqlite", scope: !1906, file: !20, line: 290, type: !1057)
!1914 = !DILocation(line: 290, column: 29, scope: !1906)
!1915 = !DILocation(line: 290, column: 67, scope: !1906)
!1916 = !DILocalVariable(name: "stmt_sqlite", scope: !1906, file: !20, line: 291, type: !1068)
!1917 = !DILocation(line: 291, column: 28, scope: !1906)
!1918 = !DILocation(line: 291, column: 42, scope: !1906)
!1919 = !DILocation(line: 293, column: 10, scope: !1920)
!1920 = distinct !DILexicalBlock(scope: !1906, file: !20, line: 293, column: 9)
!1921 = !DILocation(line: 293, column: 9, scope: !1906)
!1922 = !DILocation(line: 294, column: 9, scope: !1920)
!1923 = !DILocalVariable(name: "ret", scope: !1906, file: !20, line: 296, type: !235)
!1924 = !DILocation(line: 296, column: 9, scope: !1906)
!1925 = !DILocation(line: 296, column: 31, scope: !1906)
!1926 = !DILocation(line: 296, column: 42, scope: !1906)
!1927 = !DILocation(line: 296, column: 50, scope: !1906)
!1928 = !DILocation(line: 296, column: 60, scope: !1906)
!1929 = !DILocation(line: 296, column: 55, scope: !1906)
!1930 = !DILocation(line: 296, column: 70, scope: !1906)
!1931 = !DILocation(line: 296, column: 83, scope: !1906)
!1932 = !DILocation(line: 296, column: 15, scope: !1906)
!1933 = !DILocation(line: 297, column: 9, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1906, file: !20, line: 297, column: 9)
!1935 = !DILocation(line: 297, column: 13, scope: !1934)
!1936 = !DILocation(line: 297, column: 9, scope: !1906)
!1937 = !DILocation(line: 298, column: 14, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1934, file: !20, line: 297, column: 27)
!1939 = !DILocation(line: 298, column: 9, scope: !1938)
!1940 = !DILocation(line: 299, column: 9, scope: !1938)
!1941 = !DILocation(line: 302, column: 5, scope: !1906)
!1942 = !DILocation(line: 302, column: 18, scope: !1906)
!1943 = !DILocation(line: 302, column: 23, scope: !1906)
!1944 = !DILocation(line: 302, column: 28, scope: !1906)
!1945 = !DILocation(line: 303, column: 5, scope: !1906)
!1946 = !DILocation(line: 303, column: 18, scope: !1906)
!1947 = !DILocation(line: 303, column: 23, scope: !1906)
!1948 = !DILocation(line: 303, column: 28, scope: !1906)
!1949 = !DILocation(line: 304, column: 5, scope: !1906)
!1950 = !DILocation(line: 304, column: 18, scope: !1906)
!1951 = !DILocation(line: 304, column: 23, scope: !1906)
!1952 = !DILocation(line: 304, column: 32, scope: !1906)
!1953 = !DILocation(line: 306, column: 30, scope: !1906)
!1954 = !DILocation(line: 306, column: 5, scope: !1906)
!1955 = !DILocation(line: 307, column: 1, scope: !1906)
!1956 = distinct !DISubprogram(name: "db_stmt_bind_sqlite", scope: !20, file: !20, line: 229, type: !747, scopeLine: 230, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!1957 = !DILocalVariable(name: "stmt", arg: 1, scope: !1956, file: !20, line: 229, type: !749)
!1958 = !DILocation(line: 229, column: 55, scope: !1956)
!1959 = !DILocalVariable(name: "rows", arg: 2, scope: !1956, file: !20, line: 229, type: !751)
!1960 = !DILocation(line: 229, column: 76, scope: !1956)
!1961 = !DILocalVariable(name: "n_rows", arg: 3, scope: !1956, file: !20, line: 229, type: !463)
!1962 = !DILocation(line: 229, column: 89, scope: !1956)
!1963 = !DILocalVariable(name: "stmt_sqlite", scope: !1956, file: !20, line: 231, type: !1059)
!1964 = !DILocation(line: 231, column: 34, scope: !1956)
!1965 = !DILocation(line: 231, column: 79, scope: !1956)
!1966 = !DILocalVariable(name: "rows_1_based", scope: !1956, file: !20, line: 232, type: !1967)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!1969 = !DILocation(line: 232, column: 26, scope: !1956)
!1970 = !DILocation(line: 232, column: 41, scope: !1956)
!1971 = !DILocation(line: 232, column: 46, scope: !1956)
!1972 = !DILocalVariable(name: "ret", scope: !1956, file: !20, line: 233, type: !235)
!1973 = !DILocation(line: 233, column: 9, scope: !1956)
!1974 = !DILocation(line: 235, column: 19, scope: !1956)
!1975 = !DILocation(line: 235, column: 32, scope: !1956)
!1976 = !DILocation(line: 235, column: 5, scope: !1956)
!1977 = !DILocation(line: 236, column: 28, scope: !1956)
!1978 = !DILocation(line: 236, column: 41, scope: !1956)
!1979 = !DILocation(line: 236, column: 5, scope: !1956)
!1980 = !DILocalVariable(name: "row", scope: !1981, file: !20, line: 238, type: !463)
!1981 = distinct !DILexicalBlock(scope: !1956, file: !20, line: 238, column: 5)
!1982 = !DILocation(line: 238, column: 17, scope: !1981)
!1983 = !DILocation(line: 238, column: 10, scope: !1981)
!1984 = !DILocation(line: 238, column: 26, scope: !1985)
!1985 = distinct !DILexicalBlock(scope: !1981, file: !20, line: 238, column: 5)
!1986 = !DILocation(line: 238, column: 33, scope: !1985)
!1987 = !DILocation(line: 238, column: 30, scope: !1985)
!1988 = !DILocation(line: 238, column: 5, scope: !1981)
!1989 = !DILocalVariable(name: "r", scope: !1990, file: !20, line: 239, type: !1967)
!1990 = distinct !DILexicalBlock(scope: !1985, file: !20, line: 238, column: 48)
!1991 = !DILocation(line: 239, column: 30, scope: !1990)
!1992 = !DILocation(line: 239, column: 35, scope: !1990)
!1993 = !DILocation(line: 239, column: 48, scope: !1990)
!1994 = !DILocation(line: 240, column: 13, scope: !1995)
!1995 = distinct !DILexicalBlock(scope: !1990, file: !20, line: 240, column: 13)
!1996 = !DILocation(line: 240, column: 16, scope: !1995)
!1997 = !DILocation(line: 240, column: 21, scope: !1995)
!1998 = !DILocation(line: 240, column: 13, scope: !1990)
!1999 = !DILocation(line: 240, column: 30, scope: !1995)
!2000 = !DILocation(line: 242, column: 13, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1990, file: !20, line: 242, column: 13)
!2002 = !DILocation(line: 242, column: 16, scope: !2001)
!2003 = !DILocation(line: 242, column: 21, scope: !2001)
!2004 = !DILocation(line: 242, column: 13, scope: !1990)
!2005 = !DILocation(line: 243, column: 37, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2001, file: !20, line: 242, column: 29)
!2007 = !DILocation(line: 243, column: 50, scope: !2006)
!2008 = !DILocation(line: 243, column: 63, scope: !2006)
!2009 = !DILocation(line: 243, column: 58, scope: !2006)
!2010 = !DILocation(line: 243, column: 68, scope: !2006)
!2011 = !DILocation(line: 243, column: 71, scope: !2006)
!2012 = !DILocation(line: 243, column: 73, scope: !2006)
!2013 = !DILocation(line: 243, column: 19, scope: !2006)
!2014 = !DILocation(line: 243, column: 17, scope: !2006)
!2015 = !DILocation(line: 244, column: 17, scope: !2016)
!2016 = distinct !DILexicalBlock(scope: !2006, file: !20, line: 244, column: 17)
!2017 = !DILocation(line: 244, column: 21, scope: !2016)
!2018 = !DILocation(line: 244, column: 17, scope: !2006)
!2019 = !DILocation(line: 245, column: 17, scope: !2016)
!2020 = !DILocation(line: 246, column: 9, scope: !2006)
!2021 = !DILocation(line: 246, column: 20, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2001, file: !20, line: 246, column: 20)
!2023 = !DILocation(line: 246, column: 23, scope: !2022)
!2024 = !DILocation(line: 246, column: 28, scope: !2022)
!2025 = !DILocation(line: 246, column: 20, scope: !2001)
!2026 = !DILocation(line: 247, column: 36, scope: !2027)
!2027 = distinct !DILexicalBlock(scope: !2022, file: !20, line: 246, column: 36)
!2028 = !DILocation(line: 247, column: 49, scope: !2027)
!2029 = !DILocation(line: 247, column: 62, scope: !2027)
!2030 = !DILocation(line: 247, column: 57, scope: !2027)
!2031 = !DILocation(line: 247, column: 67, scope: !2027)
!2032 = !DILocation(line: 247, column: 70, scope: !2027)
!2033 = !DILocation(line: 247, column: 72, scope: !2027)
!2034 = !DILocation(line: 247, column: 19, scope: !2027)
!2035 = !DILocation(line: 247, column: 17, scope: !2027)
!2036 = !DILocation(line: 248, column: 17, scope: !2037)
!2037 = distinct !DILexicalBlock(scope: !2027, file: !20, line: 248, column: 17)
!2038 = !DILocation(line: 248, column: 21, scope: !2037)
!2039 = !DILocation(line: 248, column: 17, scope: !2027)
!2040 = !DILocation(line: 249, column: 17, scope: !2037)
!2041 = !DILocation(line: 250, column: 9, scope: !2027)
!2042 = !DILocation(line: 251, column: 13, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2022, file: !20, line: 250, column: 16)
!2044 = !DILocation(line: 253, column: 5, scope: !1990)
!2045 = !DILocation(line: 238, column: 44, scope: !1985)
!2046 = !DILocation(line: 238, column: 5, scope: !1985)
!2047 = distinct !{!2047, !1988, !2048, !1257}
!2048 = !DILocation(line: 253, column: 5, scope: !1981)
!2049 = !DILocation(line: 255, column: 5, scope: !1956)
!2050 = !DILocation(line: 256, column: 1, scope: !1956)
!2051 = distinct !DISubprogram(name: "db_stmt_step_sqlite", scope: !20, file: !20, line: 258, type: !763, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2052 = !DILocalVariable(name: "stmt", arg: 1, scope: !2051, file: !20, line: 258, type: !749)
!2053 = !DILocation(line: 258, column: 55, scope: !2051)
!2054 = !DILocalVariable(name: "row", arg: 2, scope: !2051, file: !20, line: 258, type: !751)
!2055 = !DILocation(line: 258, column: 76, scope: !2051)
!2056 = !DILocalVariable(name: "stmt_sqlite", scope: !2051, file: !20, line: 260, type: !1059)
!2057 = !DILocation(line: 260, column: 34, scope: !2051)
!2058 = !DILocation(line: 260, column: 79, scope: !2051)
!2059 = !DILocation(line: 262, column: 22, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2051, file: !20, line: 262, column: 9)
!2061 = !DILocation(line: 262, column: 35, scope: !2060)
!2062 = !DILocation(line: 262, column: 9, scope: !2060)
!2063 = !DILocation(line: 262, column: 43, scope: !2060)
!2064 = !DILocation(line: 262, column: 9, scope: !2051)
!2065 = !DILocation(line: 263, column: 9, scope: !2060)
!2066 = !DILocalVariable(name: "column_id", scope: !2051, file: !20, line: 265, type: !235)
!2067 = !DILocation(line: 265, column: 9, scope: !2051)
!2068 = !DILocalVariable(name: "r", scope: !2069, file: !20, line: 266, type: !751)
!2069 = distinct !DILexicalBlock(scope: !2051, file: !20, line: 266, column: 5)
!2070 = !DILocation(line: 266, column: 25, scope: !2069)
!2071 = !DILocation(line: 266, column: 29, scope: !2069)
!2072 = !DILocation(line: 266, column: 10, scope: !2069)
!2073 = !DILocation(line: 266, column: 34, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !20, line: 266, column: 5)
!2075 = !DILocation(line: 266, column: 37, scope: !2074)
!2076 = !DILocation(line: 266, column: 42, scope: !2074)
!2077 = !DILocation(line: 266, column: 5, scope: !2069)
!2078 = !DILocation(line: 267, column: 13, scope: !2079)
!2079 = distinct !DILexicalBlock(scope: !2080, file: !20, line: 267, column: 13)
!2080 = distinct !DILexicalBlock(scope: !2074, file: !20, line: 266, column: 69)
!2081 = !DILocation(line: 267, column: 16, scope: !2079)
!2082 = !DILocation(line: 267, column: 21, scope: !2079)
!2083 = !DILocation(line: 267, column: 13, scope: !2080)
!2084 = !DILocation(line: 268, column: 41, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2079, file: !20, line: 267, column: 29)
!2086 = !DILocation(line: 268, column: 54, scope: !2085)
!2087 = !DILocation(line: 268, column: 62, scope: !2085)
!2088 = !DILocation(line: 268, column: 22, scope: !2085)
!2089 = !DILocation(line: 268, column: 13, scope: !2085)
!2090 = !DILocation(line: 268, column: 16, scope: !2085)
!2091 = !DILocation(line: 268, column: 20, scope: !2085)
!2092 = !DILocation(line: 269, column: 9, scope: !2085)
!2093 = !DILocation(line: 269, column: 20, scope: !2094)
!2094 = distinct !DILexicalBlock(scope: !2079, file: !20, line: 269, column: 20)
!2095 = !DILocation(line: 269, column: 23, scope: !2094)
!2096 = !DILocation(line: 269, column: 28, scope: !2094)
!2097 = !DILocation(line: 269, column: 20, scope: !2079)
!2098 = !DILocation(line: 270, column: 50, scope: !2099)
!2099 = distinct !DILexicalBlock(scope: !2094, file: !20, line: 269, column: 36)
!2100 = !DILocation(line: 270, column: 63, scope: !2099)
!2101 = !DILocation(line: 270, column: 71, scope: !2099)
!2102 = !DILocation(line: 270, column: 30, scope: !2099)
!2103 = !DILocation(line: 270, column: 13, scope: !2099)
!2104 = !DILocation(line: 270, column: 16, scope: !2099)
!2105 = !DILocation(line: 270, column: 20, scope: !2099)
!2106 = !DILocation(line: 271, column: 9, scope: !2099)
!2107 = !DILocation(line: 272, column: 13, scope: !2108)
!2108 = distinct !DILexicalBlock(scope: !2094, file: !20, line: 271, column: 16)
!2109 = !DILocation(line: 274, column: 5, scope: !2080)
!2110 = !DILocation(line: 266, column: 52, scope: !2074)
!2111 = !DILocation(line: 266, column: 65, scope: !2074)
!2112 = !DILocation(line: 266, column: 5, scope: !2074)
!2113 = distinct !{!2113, !2077, !2114, !1257}
!2114 = !DILocation(line: 274, column: 5, scope: !2069)
!2115 = !DILocation(line: 276, column: 5, scope: !2051)
!2116 = !DILocation(line: 277, column: 1, scope: !2051)
!2117 = distinct !DISubprogram(name: "db_stmt_finalize_sqlite", scope: !20, file: !20, line: 279, type: !767, scopeLine: 280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2118 = !DILocalVariable(name: "stmt", arg: 1, scope: !2117, file: !20, line: 279, type: !742)
!2119 = !DILocation(line: 279, column: 53, scope: !2117)
!2120 = !DILocalVariable(name: "stmt_sqlite", scope: !2117, file: !20, line: 281, type: !1068)
!2121 = !DILocation(line: 281, column: 28, scope: !2117)
!2122 = !DILocation(line: 281, column: 67, scope: !2117)
!2123 = !DILocation(line: 283, column: 22, scope: !2117)
!2124 = !DILocation(line: 283, column: 35, scope: !2117)
!2125 = !DILocation(line: 283, column: 5, scope: !2117)
!2126 = !DILocation(line: 284, column: 10, scope: !2117)
!2127 = !DILocation(line: 284, column: 5, scope: !2117)
!2128 = !DILocation(line: 285, column: 1, scope: !2117)
!2129 = distinct !DISubprogram(name: "db_stmt_bind", scope: !20, file: !20, line: 344, type: !747, scopeLine: 345, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2130 = !DILocalVariable(name: "stmt", arg: 1, scope: !2129, file: !20, line: 344, type: !749)
!2131 = !DILocation(line: 344, column: 48, scope: !2129)
!2132 = !DILocalVariable(name: "rows", arg: 2, scope: !2129, file: !20, line: 344, type: !751)
!2133 = !DILocation(line: 344, column: 69, scope: !2129)
!2134 = !DILocalVariable(name: "n_rows", arg: 3, scope: !2129, file: !20, line: 344, type: !463)
!2135 = !DILocation(line: 344, column: 82, scope: !2129)
!2136 = !DILocation(line: 346, column: 12, scope: !2129)
!2137 = !DILocation(line: 346, column: 18, scope: !2129)
!2138 = !DILocation(line: 346, column: 23, scope: !2129)
!2139 = !DILocation(line: 346, column: 29, scope: !2129)
!2140 = !DILocation(line: 346, column: 35, scope: !2129)
!2141 = !DILocation(line: 346, column: 5, scope: !2129)
!2142 = distinct !DISubprogram(name: "db_stmt_step", scope: !20, file: !20, line: 349, type: !763, scopeLine: 350, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2143 = !DILocalVariable(name: "stmt", arg: 1, scope: !2142, file: !20, line: 349, type: !749)
!2144 = !DILocation(line: 349, column: 48, scope: !2142)
!2145 = !DILocalVariable(name: "row", arg: 2, scope: !2142, file: !20, line: 349, type: !751)
!2146 = !DILocation(line: 349, column: 69, scope: !2142)
!2147 = !DILocation(line: 351, column: 12, scope: !2142)
!2148 = !DILocation(line: 351, column: 18, scope: !2142)
!2149 = !DILocation(line: 351, column: 23, scope: !2142)
!2150 = !DILocation(line: 351, column: 29, scope: !2142)
!2151 = !DILocation(line: 351, column: 5, scope: !2142)
!2152 = distinct !DISubprogram(name: "db_stmt_finalize", scope: !20, file: !20, line: 354, type: !767, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2153 = !DILocalVariable(name: "stmt", arg: 1, scope: !2152, file: !20, line: 354, type: !742)
!2154 = !DILocation(line: 354, column: 46, scope: !2152)
!2155 = !DILocation(line: 356, column: 5, scope: !2152)
!2156 = !DILocation(line: 356, column: 11, scope: !2152)
!2157 = !DILocation(line: 356, column: 20, scope: !2152)
!2158 = !DILocation(line: 357, column: 1, scope: !2152)
!2159 = distinct !DISubprogram(name: "db_disconnect", scope: !20, file: !20, line: 359, type: !736, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2160 = !DILocalVariable(name: "db", arg: 1, scope: !2159, file: !20, line: 359, type: !731)
!2161 = !DILocation(line: 359, column: 38, scope: !2159)
!2162 = !DILocation(line: 361, column: 5, scope: !2159)
!2163 = !DILocation(line: 361, column: 9, scope: !2159)
!2164 = !DILocation(line: 361, column: 20, scope: !2159)
!2165 = !DILocation(line: 362, column: 1, scope: !2159)
!2166 = distinct !DISubprogram(name: "db_prepare_stmt", scope: !20, file: !20, line: 364, type: !740, scopeLine: 366, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !672, retainedNodes: !480)
!2167 = !DILocalVariable(name: "db", arg: 1, scope: !2166, file: !20, line: 364, type: !769)
!2168 = !DILocation(line: 364, column: 57, scope: !2166)
!2169 = !DILocalVariable(name: "sql", arg: 2, scope: !2166, file: !20, line: 364, type: !437)
!2170 = !DILocation(line: 364, column: 73, scope: !2166)
!2171 = !DILocalVariable(name: "sql_len", arg: 3, scope: !2166, file: !20, line: 365, type: !771)
!2172 = !DILocation(line: 365, column: 18, scope: !2166)
!2173 = !DILocation(line: 367, column: 12, scope: !2166)
!2174 = !DILocation(line: 367, column: 16, scope: !2166)
!2175 = !DILocation(line: 367, column: 24, scope: !2166)
!2176 = !DILocation(line: 367, column: 28, scope: !2166)
!2177 = !DILocation(line: 367, column: 33, scope: !2166)
!2178 = !DILocation(line: 367, column: 5, scope: !2166)
!2179 = distinct !DISubprogram(name: "json_decode", scope: !26, file: !26, line: 359, type: !2180, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2180 = !DISubroutineType(types: !2181)
!2181 = !{!1074, !437}
!2182 = !DILocalVariable(name: "json", arg: 1, scope: !2179, file: !26, line: 359, type: !437)
!2183 = !DILocation(line: 359, column: 35, scope: !2179)
!2184 = !DILocalVariable(name: "s", scope: !2179, file: !26, line: 361, type: !437)
!2185 = !DILocation(line: 361, column: 14, scope: !2179)
!2186 = !DILocation(line: 361, column: 18, scope: !2179)
!2187 = !DILocalVariable(name: "ret", scope: !2179, file: !26, line: 362, type: !1074)
!2188 = !DILocation(line: 362, column: 12, scope: !2179)
!2189 = !DILocation(line: 364, column: 2, scope: !2179)
!2190 = !DILocation(line: 365, column: 7, scope: !2191)
!2191 = distinct !DILexicalBlock(scope: !2179, file: !26, line: 365, column: 6)
!2192 = !DILocation(line: 365, column: 6, scope: !2179)
!2193 = !DILocation(line: 366, column: 3, scope: !2191)
!2194 = !DILocation(line: 368, column: 2, scope: !2179)
!2195 = !DILocation(line: 369, column: 7, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2179, file: !26, line: 369, column: 6)
!2197 = !DILocation(line: 369, column: 6, scope: !2196)
!2198 = !DILocation(line: 369, column: 9, scope: !2196)
!2199 = !DILocation(line: 369, column: 6, scope: !2179)
!2200 = !DILocation(line: 370, column: 15, scope: !2201)
!2201 = distinct !DILexicalBlock(scope: !2196, file: !26, line: 369, column: 15)
!2202 = !DILocation(line: 370, column: 3, scope: !2201)
!2203 = !DILocation(line: 371, column: 3, scope: !2201)
!2204 = !DILocation(line: 374, column: 9, scope: !2179)
!2205 = !DILocation(line: 374, column: 2, scope: !2179)
!2206 = !DILocation(line: 375, column: 1, scope: !2179)
!2207 = distinct !DISubprogram(name: "skip_space", scope: !26, file: !26, line: 977, type: !2208, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2208 = !DISubroutineType(types: !2209)
!2209 = !{null, !1829}
!2210 = !DILocalVariable(name: "sp", arg: 1, scope: !2207, file: !26, line: 977, type: !1829)
!2211 = !DILocation(line: 977, column: 37, scope: !2207)
!2212 = !DILocalVariable(name: "s", scope: !2207, file: !26, line: 979, type: !437)
!2213 = !DILocation(line: 979, column: 14, scope: !2207)
!2214 = !DILocation(line: 979, column: 19, scope: !2207)
!2215 = !DILocation(line: 979, column: 18, scope: !2207)
!2216 = !DILocation(line: 980, column: 2, scope: !2207)
!2217 = !DILocation(line: 980, column: 9, scope: !2207)
!2218 = !DILocation(line: 981, column: 4, scope: !2207)
!2219 = distinct !{!2219, !2216, !2218, !1257}
!2220 = !DILocation(line: 982, column: 8, scope: !2207)
!2221 = !DILocation(line: 982, column: 3, scope: !2207)
!2222 = !DILocation(line: 982, column: 6, scope: !2207)
!2223 = !DILocation(line: 983, column: 1, scope: !2207)
!2224 = distinct !DISubprogram(name: "parse_value", scope: !26, file: !26, line: 634, type: !2225, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!473, !1829, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!2228 = !DILocalVariable(name: "sp", arg: 1, scope: !2224, file: !26, line: 634, type: !1829)
!2229 = !DILocation(line: 634, column: 38, scope: !2224)
!2230 = !DILocalVariable(name: "out", arg: 2, scope: !2224, file: !26, line: 634, type: !2227)
!2231 = !DILocation(line: 634, column: 53, scope: !2224)
!2232 = !DILocalVariable(name: "s", scope: !2224, file: !26, line: 636, type: !437)
!2233 = !DILocation(line: 636, column: 14, scope: !2224)
!2234 = !DILocation(line: 636, column: 19, scope: !2224)
!2235 = !DILocation(line: 636, column: 18, scope: !2224)
!2236 = !DILocation(line: 638, column: 11, scope: !2224)
!2237 = !DILocation(line: 638, column: 10, scope: !2224)
!2238 = !DILocation(line: 638, column: 2, scope: !2224)
!2239 = !DILocation(line: 640, column: 8, scope: !2240)
!2240 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 640, column: 8)
!2241 = distinct !DILexicalBlock(scope: !2224, file: !26, line: 638, column: 14)
!2242 = !DILocation(line: 640, column: 8, scope: !2241)
!2243 = !DILocation(line: 641, column: 9, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2245, file: !26, line: 641, column: 9)
!2245 = distinct !DILexicalBlock(scope: !2240, file: !26, line: 640, column: 36)
!2246 = !DILocation(line: 641, column: 9, scope: !2245)
!2247 = !DILocation(line: 642, column: 13, scope: !2244)
!2248 = !DILocation(line: 642, column: 7, scope: !2244)
!2249 = !DILocation(line: 642, column: 11, scope: !2244)
!2250 = !DILocation(line: 642, column: 6, scope: !2244)
!2251 = !DILocation(line: 643, column: 11, scope: !2245)
!2252 = !DILocation(line: 643, column: 6, scope: !2245)
!2253 = !DILocation(line: 643, column: 9, scope: !2245)
!2254 = !DILocation(line: 644, column: 5, scope: !2245)
!2255 = !DILocation(line: 646, column: 4, scope: !2241)
!2256 = !DILocation(line: 649, column: 8, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 649, column: 8)
!2258 = !DILocation(line: 649, column: 8, scope: !2241)
!2259 = !DILocation(line: 650, column: 9, scope: !2260)
!2260 = distinct !DILexicalBlock(scope: !2261, file: !26, line: 650, column: 9)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !26, line: 649, column: 37)
!2262 = !DILocation(line: 650, column: 9, scope: !2261)
!2263 = !DILocation(line: 651, column: 13, scope: !2260)
!2264 = !DILocation(line: 651, column: 7, scope: !2260)
!2265 = !DILocation(line: 651, column: 11, scope: !2260)
!2266 = !DILocation(line: 651, column: 6, scope: !2260)
!2267 = !DILocation(line: 652, column: 11, scope: !2261)
!2268 = !DILocation(line: 652, column: 6, scope: !2261)
!2269 = !DILocation(line: 652, column: 9, scope: !2261)
!2270 = !DILocation(line: 653, column: 5, scope: !2261)
!2271 = !DILocation(line: 655, column: 4, scope: !2241)
!2272 = !DILocation(line: 658, column: 8, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 658, column: 8)
!2274 = !DILocation(line: 658, column: 8, scope: !2241)
!2275 = !DILocation(line: 659, column: 9, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2277, file: !26, line: 659, column: 9)
!2277 = distinct !DILexicalBlock(scope: !2273, file: !26, line: 658, column: 36)
!2278 = !DILocation(line: 659, column: 9, scope: !2277)
!2279 = !DILocation(line: 660, column: 13, scope: !2276)
!2280 = !DILocation(line: 660, column: 7, scope: !2276)
!2281 = !DILocation(line: 660, column: 11, scope: !2276)
!2282 = !DILocation(line: 660, column: 6, scope: !2276)
!2283 = !DILocation(line: 661, column: 11, scope: !2277)
!2284 = !DILocation(line: 661, column: 6, scope: !2277)
!2285 = !DILocation(line: 661, column: 9, scope: !2277)
!2286 = !DILocation(line: 662, column: 5, scope: !2277)
!2287 = !DILocation(line: 664, column: 4, scope: !2241)
!2288 = !DILocalVariable(name: "str", scope: !2289, file: !26, line: 667, type: !319)
!2289 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 666, column: 13)
!2290 = !DILocation(line: 667, column: 10, scope: !2289)
!2291 = !DILocation(line: 668, column: 25, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2289, file: !26, line: 668, column: 8)
!2293 = !DILocation(line: 668, column: 8, scope: !2292)
!2294 = !DILocation(line: 668, column: 8, scope: !2289)
!2295 = !DILocation(line: 669, column: 9, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2297, file: !26, line: 669, column: 9)
!2297 = distinct !DILexicalBlock(scope: !2292, file: !26, line: 668, column: 45)
!2298 = !DILocation(line: 669, column: 9, scope: !2297)
!2299 = !DILocation(line: 670, column: 22, scope: !2296)
!2300 = !DILocation(line: 670, column: 13, scope: !2296)
!2301 = !DILocation(line: 670, column: 7, scope: !2296)
!2302 = !DILocation(line: 670, column: 11, scope: !2296)
!2303 = !DILocation(line: 670, column: 6, scope: !2296)
!2304 = !DILocation(line: 671, column: 11, scope: !2297)
!2305 = !DILocation(line: 671, column: 6, scope: !2297)
!2306 = !DILocation(line: 671, column: 9, scope: !2297)
!2307 = !DILocation(line: 672, column: 5, scope: !2297)
!2308 = !DILocation(line: 674, column: 4, scope: !2289)
!2309 = !DILocation(line: 678, column: 24, scope: !2310)
!2310 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 678, column: 8)
!2311 = !DILocation(line: 678, column: 8, scope: !2310)
!2312 = !DILocation(line: 678, column: 8, scope: !2241)
!2313 = !DILocation(line: 679, column: 11, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2310, file: !26, line: 678, column: 30)
!2315 = !DILocation(line: 679, column: 6, scope: !2314)
!2316 = !DILocation(line: 679, column: 9, scope: !2314)
!2317 = !DILocation(line: 680, column: 5, scope: !2314)
!2318 = !DILocation(line: 682, column: 4, scope: !2241)
!2319 = !DILocation(line: 685, column: 25, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 685, column: 8)
!2321 = !DILocation(line: 685, column: 8, scope: !2320)
!2322 = !DILocation(line: 685, column: 8, scope: !2241)
!2323 = !DILocation(line: 686, column: 11, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2320, file: !26, line: 685, column: 31)
!2325 = !DILocation(line: 686, column: 6, scope: !2324)
!2326 = !DILocation(line: 686, column: 9, scope: !2324)
!2327 = !DILocation(line: 687, column: 5, scope: !2324)
!2328 = !DILocation(line: 689, column: 4, scope: !2241)
!2329 = !DILocalVariable(name: "num", scope: !2330, file: !26, line: 692, type: !1090)
!2330 = distinct !DILexicalBlock(scope: !2241, file: !26, line: 691, column: 12)
!2331 = !DILocation(line: 692, column: 11, scope: !2330)
!2332 = !DILocation(line: 693, column: 25, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2330, file: !26, line: 693, column: 8)
!2334 = !DILocation(line: 693, column: 8, scope: !2333)
!2335 = !DILocation(line: 693, column: 8, scope: !2330)
!2336 = !DILocation(line: 694, column: 9, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2338, file: !26, line: 694, column: 9)
!2338 = distinct !DILexicalBlock(scope: !2333, file: !26, line: 693, column: 45)
!2339 = !DILocation(line: 694, column: 9, scope: !2338)
!2340 = !DILocation(line: 695, column: 27, scope: !2337)
!2341 = !DILocation(line: 695, column: 13, scope: !2337)
!2342 = !DILocation(line: 695, column: 7, scope: !2337)
!2343 = !DILocation(line: 695, column: 11, scope: !2337)
!2344 = !DILocation(line: 695, column: 6, scope: !2337)
!2345 = !DILocation(line: 696, column: 11, scope: !2338)
!2346 = !DILocation(line: 696, column: 6, scope: !2338)
!2347 = !DILocation(line: 696, column: 9, scope: !2338)
!2348 = !DILocation(line: 697, column: 5, scope: !2338)
!2349 = !DILocation(line: 699, column: 4, scope: !2330)
!2350 = !DILocation(line: 702, column: 1, scope: !2224)
!2351 = distinct !DISubprogram(name: "json_delete", scope: !26, file: !26, line: 418, type: !2352, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{null, !1074}
!2354 = !DILocalVariable(name: "node", arg: 1, scope: !2351, file: !26, line: 418, type: !1074)
!2355 = !DILocation(line: 418, column: 28, scope: !2351)
!2356 = !DILocation(line: 420, column: 6, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2351, file: !26, line: 420, column: 6)
!2358 = !DILocation(line: 420, column: 11, scope: !2357)
!2359 = !DILocation(line: 420, column: 6, scope: !2351)
!2360 = !DILocation(line: 421, column: 27, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2357, file: !26, line: 420, column: 20)
!2362 = !DILocation(line: 421, column: 3, scope: !2361)
!2363 = !DILocation(line: 423, column: 11, scope: !2361)
!2364 = !DILocation(line: 423, column: 17, scope: !2361)
!2365 = !DILocation(line: 423, column: 3, scope: !2361)
!2366 = !DILocation(line: 425, column: 10, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !26, line: 423, column: 22)
!2368 = !DILocation(line: 425, column: 16, scope: !2367)
!2369 = !DILocation(line: 425, column: 5, scope: !2367)
!2370 = !DILocation(line: 426, column: 5, scope: !2367)
!2371 = !DILocalVariable(name: "child", scope: !2372, file: !26, line: 430, type: !1074)
!2372 = distinct !DILexicalBlock(scope: !2367, file: !26, line: 429, column: 4)
!2373 = !DILocation(line: 430, column: 15, scope: !2372)
!2374 = !DILocalVariable(name: "next", scope: !2372, file: !26, line: 430, type: !1074)
!2375 = !DILocation(line: 430, column: 23, scope: !2372)
!2376 = !DILocation(line: 431, column: 18, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2372, file: !26, line: 431, column: 5)
!2378 = !DILocation(line: 431, column: 24, scope: !2377)
!2379 = !DILocation(line: 431, column: 33, scope: !2377)
!2380 = !DILocation(line: 431, column: 16, scope: !2377)
!2381 = !DILocation(line: 431, column: 10, scope: !2377)
!2382 = !DILocation(line: 431, column: 39, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2377, file: !26, line: 431, column: 5)
!2384 = !DILocation(line: 431, column: 45, scope: !2383)
!2385 = !DILocation(line: 431, column: 5, scope: !2377)
!2386 = !DILocation(line: 432, column: 13, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2383, file: !26, line: 431, column: 68)
!2388 = !DILocation(line: 432, column: 20, scope: !2387)
!2389 = !DILocation(line: 432, column: 11, scope: !2387)
!2390 = !DILocation(line: 433, column: 18, scope: !2387)
!2391 = !DILocation(line: 433, column: 6, scope: !2387)
!2392 = !DILocation(line: 434, column: 5, scope: !2387)
!2393 = !DILocation(line: 431, column: 62, scope: !2383)
!2394 = !DILocation(line: 431, column: 60, scope: !2383)
!2395 = !DILocation(line: 431, column: 5, scope: !2383)
!2396 = distinct !{!2396, !2385, !2397, !1257}
!2397 = !DILocation(line: 434, column: 5, scope: !2377)
!2398 = !DILocation(line: 435, column: 5, scope: !2372)
!2399 = !DILocation(line: 438, column: 3, scope: !2367)
!2400 = !DILocation(line: 440, column: 8, scope: !2361)
!2401 = !DILocation(line: 440, column: 3, scope: !2361)
!2402 = !DILocation(line: 441, column: 2, scope: !2361)
!2403 = !DILocation(line: 442, column: 1, scope: !2351)
!2404 = distinct !DISubprogram(name: "json_remove_from_parent", scope: !26, file: !26, line: 612, type: !2352, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2405 = !DILocalVariable(name: "node", arg: 1, scope: !2404, file: !26, line: 612, type: !1074)
!2406 = !DILocation(line: 612, column: 40, scope: !2404)
!2407 = !DILocalVariable(name: "parent", scope: !2404, file: !26, line: 614, type: !1074)
!2408 = !DILocation(line: 614, column: 12, scope: !2404)
!2409 = !DILocation(line: 614, column: 21, scope: !2404)
!2410 = !DILocation(line: 614, column: 27, scope: !2404)
!2411 = !DILocation(line: 616, column: 6, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2404, file: !26, line: 616, column: 6)
!2413 = !DILocation(line: 616, column: 13, scope: !2412)
!2414 = !DILocation(line: 616, column: 6, scope: !2404)
!2415 = !DILocation(line: 617, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2417, file: !26, line: 617, column: 7)
!2417 = distinct !DILexicalBlock(scope: !2412, file: !26, line: 616, column: 22)
!2418 = !DILocation(line: 617, column: 13, scope: !2416)
!2419 = !DILocation(line: 617, column: 18, scope: !2416)
!2420 = !DILocation(line: 617, column: 7, scope: !2417)
!2421 = !DILocation(line: 618, column: 23, scope: !2416)
!2422 = !DILocation(line: 618, column: 29, scope: !2416)
!2423 = !DILocation(line: 618, column: 4, scope: !2416)
!2424 = !DILocation(line: 618, column: 10, scope: !2416)
!2425 = !DILocation(line: 618, column: 16, scope: !2416)
!2426 = !DILocation(line: 618, column: 21, scope: !2416)
!2427 = !DILocation(line: 620, column: 28, scope: !2416)
!2428 = !DILocation(line: 620, column: 34, scope: !2416)
!2429 = !DILocation(line: 620, column: 4, scope: !2416)
!2430 = !DILocation(line: 620, column: 12, scope: !2416)
!2431 = !DILocation(line: 620, column: 21, scope: !2416)
!2432 = !DILocation(line: 620, column: 26, scope: !2416)
!2433 = !DILocation(line: 621, column: 7, scope: !2434)
!2434 = distinct !DILexicalBlock(scope: !2417, file: !26, line: 621, column: 7)
!2435 = !DILocation(line: 621, column: 13, scope: !2434)
!2436 = !DILocation(line: 621, column: 18, scope: !2434)
!2437 = !DILocation(line: 621, column: 7, scope: !2417)
!2438 = !DILocation(line: 622, column: 23, scope: !2434)
!2439 = !DILocation(line: 622, column: 29, scope: !2434)
!2440 = !DILocation(line: 622, column: 4, scope: !2434)
!2441 = !DILocation(line: 622, column: 10, scope: !2434)
!2442 = !DILocation(line: 622, column: 16, scope: !2434)
!2443 = !DILocation(line: 622, column: 21, scope: !2434)
!2444 = !DILocation(line: 624, column: 28, scope: !2434)
!2445 = !DILocation(line: 624, column: 34, scope: !2434)
!2446 = !DILocation(line: 624, column: 4, scope: !2434)
!2447 = !DILocation(line: 624, column: 12, scope: !2434)
!2448 = !DILocation(line: 624, column: 21, scope: !2434)
!2449 = !DILocation(line: 624, column: 26, scope: !2434)
!2450 = !DILocation(line: 626, column: 8, scope: !2417)
!2451 = !DILocation(line: 626, column: 14, scope: !2417)
!2452 = !DILocation(line: 626, column: 3, scope: !2417)
!2453 = !DILocation(line: 628, column: 3, scope: !2417)
!2454 = !DILocation(line: 628, column: 9, scope: !2417)
!2455 = !DILocation(line: 628, column: 16, scope: !2417)
!2456 = !DILocation(line: 629, column: 16, scope: !2417)
!2457 = !DILocation(line: 629, column: 22, scope: !2417)
!2458 = !DILocation(line: 629, column: 27, scope: !2417)
!2459 = !DILocation(line: 629, column: 3, scope: !2417)
!2460 = !DILocation(line: 629, column: 9, scope: !2417)
!2461 = !DILocation(line: 629, column: 14, scope: !2417)
!2462 = !DILocation(line: 630, column: 3, scope: !2417)
!2463 = !DILocation(line: 630, column: 9, scope: !2417)
!2464 = !DILocation(line: 630, column: 13, scope: !2417)
!2465 = !DILocation(line: 631, column: 2, scope: !2417)
!2466 = !DILocation(line: 632, column: 1, scope: !2404)
!2467 = distinct !DISubprogram(name: "expect_literal", scope: !26, file: !26, line: 1257, type: !2468, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2468 = !DISubroutineType(types: !2469)
!2469 = !{!473, !1829, !437}
!2470 = !DILocalVariable(name: "sp", arg: 1, scope: !2467, file: !26, line: 1257, type: !1829)
!2471 = !DILocation(line: 1257, column: 41, scope: !2467)
!2472 = !DILocalVariable(name: "str", arg: 2, scope: !2467, file: !26, line: 1257, type: !437)
!2473 = !DILocation(line: 1257, column: 57, scope: !2467)
!2474 = !DILocalVariable(name: "s", scope: !2467, file: !26, line: 1259, type: !437)
!2475 = !DILocation(line: 1259, column: 14, scope: !2467)
!2476 = !DILocation(line: 1259, column: 19, scope: !2467)
!2477 = !DILocation(line: 1259, column: 18, scope: !2467)
!2478 = !DILocation(line: 1261, column: 2, scope: !2467)
!2479 = !DILocation(line: 1261, column: 10, scope: !2467)
!2480 = !DILocation(line: 1261, column: 9, scope: !2467)
!2481 = !DILocation(line: 1261, column: 14, scope: !2467)
!2482 = !DILocation(line: 1262, column: 9, scope: !2483)
!2483 = distinct !DILexicalBlock(scope: !2467, file: !26, line: 1262, column: 7)
!2484 = !DILocation(line: 1262, column: 7, scope: !2483)
!2485 = !DILocation(line: 1262, column: 19, scope: !2483)
!2486 = !DILocation(line: 1262, column: 15, scope: !2483)
!2487 = !DILocation(line: 1262, column: 12, scope: !2483)
!2488 = !DILocation(line: 1262, column: 7, scope: !2467)
!2489 = !DILocation(line: 1263, column: 4, scope: !2483)
!2490 = distinct !{!2490, !2478, !2491, !1257}
!2491 = !DILocation(line: 1263, column: 11, scope: !2467)
!2492 = !DILocation(line: 1265, column: 8, scope: !2467)
!2493 = !DILocation(line: 1265, column: 3, scope: !2467)
!2494 = !DILocation(line: 1265, column: 6, scope: !2467)
!2495 = !DILocation(line: 1266, column: 2, scope: !2467)
!2496 = !DILocation(line: 1267, column: 1, scope: !2467)
!2497 = distinct !DISubprogram(name: "json_mknull", scope: !26, file: !26, line: 506, type: !2498, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{!1074}
!2500 = !DILocation(line: 508, column: 9, scope: !2497)
!2501 = !DILocation(line: 508, column: 2, scope: !2497)
!2502 = distinct !DISubprogram(name: "json_mkbool", scope: !26, file: !26, line: 511, type: !2503, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2503 = !DISubroutineType(types: !2504)
!2504 = !{!1074, !473}
!2505 = !DILocalVariable(name: "b", arg: 1, scope: !2502, file: !26, line: 511, type: !473)
!2506 = !DILocation(line: 511, column: 28, scope: !2502)
!2507 = !DILocalVariable(name: "ret", scope: !2502, file: !26, line: 513, type: !1074)
!2508 = !DILocation(line: 513, column: 12, scope: !2502)
!2509 = !DILocation(line: 513, column: 18, scope: !2502)
!2510 = !DILocation(line: 514, column: 15, scope: !2502)
!2511 = !DILocation(line: 514, column: 2, scope: !2502)
!2512 = !DILocation(line: 514, column: 7, scope: !2502)
!2513 = !DILocation(line: 514, column: 13, scope: !2502)
!2514 = !DILocation(line: 515, column: 9, scope: !2502)
!2515 = !DILocation(line: 515, column: 2, scope: !2502)
!2516 = distinct !DISubprogram(name: "parse_string", scope: !26, file: !26, line: 804, type: !2517, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!473, !1829, !1014}
!2519 = !DILocalVariable(name: "sp", arg: 1, scope: !2516, file: !26, line: 804, type: !1829)
!2520 = !DILocation(line: 804, column: 32, scope: !2516)
!2521 = !DILocalVariable(name: "out", arg: 2, scope: !2516, file: !26, line: 804, type: !1014)
!2522 = !DILocation(line: 804, column: 43, scope: !2516)
!2523 = !DILocalVariable(name: "s", scope: !2516, file: !26, line: 806, type: !437)
!2524 = !DILocation(line: 806, column: 14, scope: !2516)
!2525 = !DILocation(line: 806, column: 27, scope: !2516)
!2526 = !DILocation(line: 806, column: 26, scope: !2516)
!2527 = !DILocalVariable(name: "sb", scope: !2516, file: !26, line: 807, type: !2528)
!2528 = !DIDerivedType(tag: DW_TAG_typedef, name: "SB", file: !26, line: 44, baseType: !2529)
!2529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !26, line: 39, size: 192, elements: !2530)
!2530 = !{!2531, !2532, !2533}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !2529, file: !26, line: 41, baseType: !319, size: 64)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2529, file: !26, line: 42, baseType: !319, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2529, file: !26, line: 43, baseType: !319, size: 64, offset: 128)
!2534 = !DILocation(line: 807, column: 5, scope: !2516)
!2535 = !DILocalVariable(name: "throwaway_buffer", scope: !2516, file: !26, line: 808, type: !325)
!2536 = !DILocation(line: 808, column: 7, scope: !2516)
!2537 = !DILocalVariable(name: "b", scope: !2516, file: !26, line: 810, type: !319)
!2538 = !DILocation(line: 810, column: 8, scope: !2516)
!2539 = !DILocation(line: 812, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2516, file: !26, line: 812, column: 6)
!2541 = !DILocation(line: 812, column: 6, scope: !2540)
!2542 = !DILocation(line: 812, column: 11, scope: !2540)
!2543 = !DILocation(line: 812, column: 6, scope: !2516)
!2544 = !DILocation(line: 813, column: 3, scope: !2540)
!2545 = !DILocation(line: 815, column: 6, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2516, file: !26, line: 815, column: 6)
!2547 = !DILocation(line: 815, column: 6, scope: !2516)
!2548 = !DILocation(line: 816, column: 3, scope: !2549)
!2549 = distinct !DILexicalBlock(scope: !2546, file: !26, line: 815, column: 11)
!2550 = !DILocation(line: 817, column: 3, scope: !2549)
!2551 = !DILocation(line: 817, column: 3, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !26, line: 817, column: 3)
!2553 = distinct !DILexicalBlock(scope: !2549, file: !26, line: 817, column: 3)
!2554 = !DILocation(line: 817, column: 3, scope: !2553)
!2555 = !DILocation(line: 818, column: 10, scope: !2549)
!2556 = !DILocation(line: 818, column: 5, scope: !2549)
!2557 = !DILocation(line: 819, column: 2, scope: !2549)
!2558 = !DILocation(line: 820, column: 7, scope: !2559)
!2559 = distinct !DILexicalBlock(scope: !2546, file: !26, line: 819, column: 9)
!2560 = !DILocation(line: 820, column: 5, scope: !2559)
!2561 = !DILocation(line: 823, column: 2, scope: !2516)
!2562 = !DILocation(line: 823, column: 10, scope: !2516)
!2563 = !DILocation(line: 823, column: 9, scope: !2516)
!2564 = !DILocation(line: 823, column: 12, scope: !2516)
!2565 = !DILocalVariable(name: "c", scope: !2566, file: !26, line: 824, type: !4)
!2566 = distinct !DILexicalBlock(scope: !2516, file: !26, line: 823, column: 20)
!2567 = !DILocation(line: 824, column: 8, scope: !2566)
!2568 = !DILocation(line: 824, column: 14, scope: !2566)
!2569 = !DILocation(line: 824, column: 12, scope: !2566)
!2570 = !DILocation(line: 827, column: 7, scope: !2571)
!2571 = distinct !DILexicalBlock(scope: !2566, file: !26, line: 827, column: 7)
!2572 = !DILocation(line: 827, column: 9, scope: !2571)
!2573 = !DILocation(line: 827, column: 7, scope: !2566)
!2574 = !DILocation(line: 828, column: 10, scope: !2575)
!2575 = distinct !DILexicalBlock(scope: !2571, file: !26, line: 827, column: 18)
!2576 = !DILocation(line: 828, column: 8, scope: !2575)
!2577 = !DILocation(line: 828, column: 6, scope: !2575)
!2578 = !DILocation(line: 829, column: 12, scope: !2575)
!2579 = !DILocation(line: 829, column: 4, scope: !2575)
!2580 = !DILocation(line: 833, column: 19, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2575, file: !26, line: 829, column: 15)
!2582 = !DILocation(line: 833, column: 8, scope: !2581)
!2583 = !DILocation(line: 833, column: 11, scope: !2581)
!2584 = !DILocation(line: 834, column: 6, scope: !2581)
!2585 = !DILocation(line: 836, column: 8, scope: !2581)
!2586 = !DILocation(line: 836, column: 11, scope: !2581)
!2587 = !DILocation(line: 837, column: 6, scope: !2581)
!2588 = !DILocation(line: 839, column: 8, scope: !2581)
!2589 = !DILocation(line: 839, column: 11, scope: !2581)
!2590 = !DILocation(line: 840, column: 6, scope: !2581)
!2591 = !DILocation(line: 842, column: 8, scope: !2581)
!2592 = !DILocation(line: 842, column: 11, scope: !2581)
!2593 = !DILocation(line: 843, column: 6, scope: !2581)
!2594 = !DILocation(line: 845, column: 8, scope: !2581)
!2595 = !DILocation(line: 845, column: 11, scope: !2581)
!2596 = !DILocation(line: 846, column: 6, scope: !2581)
!2597 = !DILocation(line: 848, column: 8, scope: !2581)
!2598 = !DILocation(line: 848, column: 11, scope: !2581)
!2599 = !DILocation(line: 849, column: 6, scope: !2581)
!2600 = !DILocalVariable(name: "uc", scope: !2601, file: !26, line: 852, type: !1096)
!2601 = distinct !DILexicalBlock(scope: !2581, file: !26, line: 851, column: 5)
!2602 = !DILocation(line: 852, column: 15, scope: !2601)
!2603 = !DILocalVariable(name: "lc", scope: !2601, file: !26, line: 852, type: !1096)
!2604 = !DILocation(line: 852, column: 19, scope: !2601)
!2605 = !DILocalVariable(name: "unicode", scope: !2601, file: !26, line: 853, type: !1098)
!2606 = !DILocation(line: 853, column: 14, scope: !2601)
!2607 = !DILocation(line: 855, column: 11, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2601, file: !26, line: 855, column: 10)
!2609 = !DILocation(line: 855, column: 10, scope: !2601)
!2610 = !DILocation(line: 856, column: 7, scope: !2608)
!2611 = !DILocation(line: 858, column: 10, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2601, file: !26, line: 858, column: 10)
!2613 = !DILocation(line: 858, column: 13, scope: !2612)
!2614 = !DILocation(line: 858, column: 23, scope: !2612)
!2615 = !DILocation(line: 858, column: 26, scope: !2612)
!2616 = !DILocation(line: 858, column: 29, scope: !2612)
!2617 = !DILocation(line: 858, column: 10, scope: !2601)
!2618 = !DILocation(line: 860, column: 13, scope: !2619)
!2619 = distinct !DILexicalBlock(scope: !2620, file: !26, line: 860, column: 11)
!2620 = distinct !DILexicalBlock(scope: !2612, file: !26, line: 858, column: 40)
!2621 = !DILocation(line: 860, column: 11, scope: !2619)
!2622 = !DILocation(line: 860, column: 16, scope: !2619)
!2623 = !DILocation(line: 860, column: 24, scope: !2619)
!2624 = !DILocation(line: 860, column: 29, scope: !2619)
!2625 = !DILocation(line: 860, column: 27, scope: !2619)
!2626 = !DILocation(line: 860, column: 32, scope: !2619)
!2627 = !DILocation(line: 860, column: 39, scope: !2619)
!2628 = !DILocation(line: 860, column: 43, scope: !2619)
!2629 = !DILocation(line: 860, column: 11, scope: !2620)
!2630 = !DILocation(line: 861, column: 8, scope: !2619)
!2631 = !DILocation(line: 862, column: 32, scope: !2632)
!2632 = distinct !DILexicalBlock(scope: !2620, file: !26, line: 862, column: 11)
!2633 = !DILocation(line: 862, column: 36, scope: !2632)
!2634 = !DILocation(line: 862, column: 12, scope: !2632)
!2635 = !DILocation(line: 862, column: 11, scope: !2620)
!2636 = !DILocation(line: 863, column: 8, scope: !2632)
!2637 = !DILocation(line: 864, column: 6, scope: !2620)
!2638 = !DILocation(line: 864, column: 17, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2612, file: !26, line: 864, column: 17)
!2640 = !DILocation(line: 864, column: 20, scope: !2639)
!2641 = !DILocation(line: 864, column: 17, scope: !2612)
!2642 = !DILocation(line: 866, column: 7, scope: !2643)
!2643 = distinct !DILexicalBlock(scope: !2639, file: !26, line: 864, column: 26)
!2644 = !DILocation(line: 868, column: 17, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2639, file: !26, line: 867, column: 13)
!2646 = !DILocation(line: 868, column: 15, scope: !2645)
!2647 = !DILocation(line: 871, column: 27, scope: !2601)
!2648 = !DILocation(line: 871, column: 36, scope: !2601)
!2649 = !DILocation(line: 871, column: 11, scope: !2601)
!2650 = !DILocation(line: 871, column: 8, scope: !2601)
!2651 = !DILocation(line: 872, column: 6, scope: !2601)
!2652 = !DILocation(line: 876, column: 6, scope: !2581)
!2653 = !DILocation(line: 878, column: 3, scope: !2575)
!2654 = !DILocation(line: 878, column: 14, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2571, file: !26, line: 878, column: 14)
!2656 = !DILocation(line: 878, column: 16, scope: !2655)
!2657 = !DILocation(line: 878, column: 14, scope: !2571)
!2658 = !DILocation(line: 880, column: 4, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2655, file: !26, line: 878, column: 25)
!2660 = !DILocalVariable(name: "len", scope: !2661, file: !26, line: 883, type: !463)
!2661 = distinct !DILexicalBlock(scope: !2655, file: !26, line: 881, column: 10)
!2662 = !DILocation(line: 883, column: 11, scope: !2661)
!2663 = !DILocation(line: 885, column: 5, scope: !2661)
!2664 = !DILocation(line: 886, column: 27, scope: !2661)
!2665 = !DILocation(line: 886, column: 10, scope: !2661)
!2666 = !DILocation(line: 886, column: 8, scope: !2661)
!2667 = !DILocation(line: 887, column: 8, scope: !2668)
!2668 = distinct !DILexicalBlock(scope: !2661, file: !26, line: 887, column: 8)
!2669 = !DILocation(line: 887, column: 12, scope: !2668)
!2670 = !DILocation(line: 887, column: 8, scope: !2661)
!2671 = !DILocation(line: 888, column: 5, scope: !2668)
!2672 = !DILocation(line: 890, column: 4, scope: !2661)
!2673 = !DILocation(line: 890, column: 14, scope: !2661)
!2674 = !DILocation(line: 891, column: 14, scope: !2661)
!2675 = !DILocation(line: 891, column: 12, scope: !2661)
!2676 = !DILocation(line: 891, column: 7, scope: !2661)
!2677 = !DILocation(line: 891, column: 10, scope: !2661)
!2678 = distinct !{!2678, !2672, !2674, !1257}
!2679 = !DILocation(line: 898, column: 7, scope: !2680)
!2680 = distinct !DILexicalBlock(scope: !2566, file: !26, line: 898, column: 7)
!2681 = !DILocation(line: 898, column: 7, scope: !2566)
!2682 = !DILocation(line: 899, column: 13, scope: !2683)
!2683 = distinct !DILexicalBlock(scope: !2680, file: !26, line: 898, column: 12)
!2684 = !DILocation(line: 899, column: 7, scope: !2683)
!2685 = !DILocation(line: 899, column: 11, scope: !2683)
!2686 = !DILocation(line: 900, column: 4, scope: !2683)
!2687 = !DILocation(line: 900, column: 4, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !2689, file: !26, line: 900, column: 4)
!2689 = distinct !DILexicalBlock(scope: !2683, file: !26, line: 900, column: 4)
!2690 = !DILocation(line: 900, column: 4, scope: !2689)
!2691 = !DILocation(line: 901, column: 11, scope: !2683)
!2692 = !DILocation(line: 901, column: 6, scope: !2683)
!2693 = !DILocation(line: 902, column: 3, scope: !2683)
!2694 = !DILocation(line: 903, column: 8, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2680, file: !26, line: 902, column: 10)
!2696 = !DILocation(line: 903, column: 6, scope: !2695)
!2697 = distinct !{!2697, !2561, !2698, !1257}
!2698 = !DILocation(line: 905, column: 2, scope: !2516)
!2699 = !DILocation(line: 906, column: 3, scope: !2516)
!2700 = !DILocation(line: 908, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2516, file: !26, line: 908, column: 6)
!2702 = !DILocation(line: 908, column: 6, scope: !2516)
!2703 = !DILocation(line: 909, column: 10, scope: !2701)
!2704 = !DILocation(line: 909, column: 4, scope: !2701)
!2705 = !DILocation(line: 909, column: 8, scope: !2701)
!2706 = !DILocation(line: 909, column: 3, scope: !2701)
!2707 = !DILocation(line: 910, column: 8, scope: !2516)
!2708 = !DILocation(line: 910, column: 3, scope: !2516)
!2709 = !DILocation(line: 910, column: 6, scope: !2516)
!2710 = !DILocation(line: 911, column: 2, scope: !2516)
!2711 = !DILabel(scope: !2516, name: "failed", file: !26, line: 913)
!2712 = !DILocation(line: 913, column: 1, scope: !2516)
!2713 = !DILocation(line: 914, column: 6, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2516, file: !26, line: 914, column: 6)
!2715 = !DILocation(line: 914, column: 6, scope: !2516)
!2716 = !DILocation(line: 915, column: 3, scope: !2714)
!2717 = !DILocation(line: 916, column: 2, scope: !2516)
!2718 = !DILocation(line: 917, column: 1, scope: !2516)
!2719 = distinct !DISubprogram(name: "mkstring", scope: !26, file: !26, line: 518, type: !2720, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!1074, !319}
!2722 = !DILocalVariable(name: "s", arg: 1, scope: !2719, file: !26, line: 518, type: !319)
!2723 = !DILocation(line: 518, column: 33, scope: !2719)
!2724 = !DILocalVariable(name: "ret", scope: !2719, file: !26, line: 520, type: !1074)
!2725 = !DILocation(line: 520, column: 12, scope: !2719)
!2726 = !DILocation(line: 520, column: 18, scope: !2719)
!2727 = !DILocation(line: 521, column: 17, scope: !2719)
!2728 = !DILocation(line: 521, column: 2, scope: !2719)
!2729 = !DILocation(line: 521, column: 7, scope: !2719)
!2730 = !DILocation(line: 521, column: 15, scope: !2719)
!2731 = !DILocation(line: 522, column: 9, scope: !2719)
!2732 = !DILocation(line: 522, column: 2, scope: !2719)
!2733 = distinct !DISubprogram(name: "parse_array", scope: !26, file: !26, line: 704, type: !2225, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2734 = !DILocalVariable(name: "sp", arg: 1, scope: !2733, file: !26, line: 704, type: !1829)
!2735 = !DILocation(line: 704, column: 38, scope: !2733)
!2736 = !DILocalVariable(name: "out", arg: 2, scope: !2733, file: !26, line: 704, type: !2227)
!2737 = !DILocation(line: 704, column: 53, scope: !2733)
!2738 = !DILocalVariable(name: "s", scope: !2733, file: !26, line: 706, type: !437)
!2739 = !DILocation(line: 706, column: 14, scope: !2733)
!2740 = !DILocation(line: 706, column: 19, scope: !2733)
!2741 = !DILocation(line: 706, column: 18, scope: !2733)
!2742 = !DILocalVariable(name: "ret", scope: !2733, file: !26, line: 707, type: !1074)
!2743 = !DILocation(line: 707, column: 12, scope: !2733)
!2744 = !DILocation(line: 707, column: 18, scope: !2733)
!2745 = !DILocation(line: 707, column: 24, scope: !2733)
!2746 = !DILocalVariable(name: "element", scope: !2733, file: !26, line: 708, type: !1074)
!2747 = !DILocation(line: 708, column: 12, scope: !2733)
!2748 = !DILocation(line: 710, column: 8, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2733, file: !26, line: 710, column: 6)
!2750 = !DILocation(line: 710, column: 6, scope: !2749)
!2751 = !DILocation(line: 710, column: 11, scope: !2749)
!2752 = !DILocation(line: 710, column: 6, scope: !2733)
!2753 = !DILocation(line: 711, column: 3, scope: !2749)
!2754 = !DILocation(line: 712, column: 2, scope: !2733)
!2755 = !DILocation(line: 714, column: 7, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2733, file: !26, line: 714, column: 6)
!2757 = !DILocation(line: 714, column: 6, scope: !2756)
!2758 = !DILocation(line: 714, column: 9, scope: !2756)
!2759 = !DILocation(line: 714, column: 6, scope: !2733)
!2760 = !DILocation(line: 715, column: 4, scope: !2761)
!2761 = distinct !DILexicalBlock(scope: !2756, file: !26, line: 714, column: 17)
!2762 = !DILocation(line: 716, column: 3, scope: !2761)
!2763 = !DILocation(line: 719, column: 2, scope: !2733)
!2764 = !DILocation(line: 720, column: 24, scope: !2765)
!2765 = distinct !DILexicalBlock(scope: !2766, file: !26, line: 720, column: 7)
!2766 = distinct !DILexicalBlock(scope: !2767, file: !26, line: 719, column: 11)
!2767 = distinct !DILexicalBlock(scope: !2768, file: !26, line: 719, column: 2)
!2768 = distinct !DILexicalBlock(scope: !2733, file: !26, line: 719, column: 2)
!2769 = !DILocation(line: 720, column: 8, scope: !2765)
!2770 = !DILocation(line: 720, column: 7, scope: !2766)
!2771 = !DILocation(line: 721, column: 4, scope: !2765)
!2772 = !DILocation(line: 722, column: 3, scope: !2766)
!2773 = !DILocation(line: 724, column: 7, scope: !2774)
!2774 = distinct !DILexicalBlock(scope: !2766, file: !26, line: 724, column: 7)
!2775 = !DILocation(line: 724, column: 7, scope: !2766)
!2776 = !DILocation(line: 725, column: 24, scope: !2774)
!2777 = !DILocation(line: 725, column: 29, scope: !2774)
!2778 = !DILocation(line: 725, column: 4, scope: !2774)
!2779 = !DILocation(line: 727, column: 8, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2766, file: !26, line: 727, column: 7)
!2781 = !DILocation(line: 727, column: 7, scope: !2780)
!2782 = !DILocation(line: 727, column: 10, scope: !2780)
!2783 = !DILocation(line: 727, column: 7, scope: !2766)
!2784 = !DILocation(line: 728, column: 5, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2780, file: !26, line: 727, column: 18)
!2786 = !DILocation(line: 729, column: 4, scope: !2785)
!2787 = !DILocation(line: 732, column: 9, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2766, file: !26, line: 732, column: 7)
!2789 = !DILocation(line: 732, column: 7, scope: !2788)
!2790 = !DILocation(line: 732, column: 12, scope: !2788)
!2791 = !DILocation(line: 732, column: 7, scope: !2766)
!2792 = !DILocation(line: 733, column: 4, scope: !2788)
!2793 = !DILocation(line: 734, column: 3, scope: !2766)
!2794 = !DILocation(line: 719, column: 2, scope: !2767)
!2795 = distinct !{!2795, !2796, !2797}
!2796 = !DILocation(line: 719, column: 2, scope: !2768)
!2797 = !DILocation(line: 735, column: 2, scope: !2768)
!2798 = !DILabel(scope: !2733, name: "success", file: !26, line: 737)
!2799 = !DILocation(line: 737, column: 1, scope: !2733)
!2800 = !DILocation(line: 738, column: 8, scope: !2733)
!2801 = !DILocation(line: 738, column: 3, scope: !2733)
!2802 = !DILocation(line: 738, column: 6, scope: !2733)
!2803 = !DILocation(line: 739, column: 6, scope: !2804)
!2804 = distinct !DILexicalBlock(scope: !2733, file: !26, line: 739, column: 6)
!2805 = !DILocation(line: 739, column: 6, scope: !2733)
!2806 = !DILocation(line: 740, column: 10, scope: !2804)
!2807 = !DILocation(line: 740, column: 4, scope: !2804)
!2808 = !DILocation(line: 740, column: 8, scope: !2804)
!2809 = !DILocation(line: 740, column: 3, scope: !2804)
!2810 = !DILocation(line: 741, column: 2, scope: !2733)
!2811 = !DILabel(scope: !2733, name: "failure", file: !26, line: 743)
!2812 = !DILocation(line: 743, column: 1, scope: !2733)
!2813 = !DILocation(line: 744, column: 14, scope: !2733)
!2814 = !DILocation(line: 744, column: 2, scope: !2733)
!2815 = !DILocation(line: 745, column: 2, scope: !2733)
!2816 = !DILocation(line: 746, column: 1, scope: !2733)
!2817 = distinct !DISubprogram(name: "parse_object", scope: !26, file: !26, line: 748, type: !2225, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2818 = !DILocalVariable(name: "sp", arg: 1, scope: !2817, file: !26, line: 748, type: !1829)
!2819 = !DILocation(line: 748, column: 39, scope: !2817)
!2820 = !DILocalVariable(name: "out", arg: 2, scope: !2817, file: !26, line: 748, type: !2227)
!2821 = !DILocation(line: 748, column: 54, scope: !2817)
!2822 = !DILocalVariable(name: "s", scope: !2817, file: !26, line: 750, type: !437)
!2823 = !DILocation(line: 750, column: 14, scope: !2817)
!2824 = !DILocation(line: 750, column: 19, scope: !2817)
!2825 = !DILocation(line: 750, column: 18, scope: !2817)
!2826 = !DILocalVariable(name: "ret", scope: !2817, file: !26, line: 751, type: !1074)
!2827 = !DILocation(line: 751, column: 12, scope: !2817)
!2828 = !DILocation(line: 751, column: 18, scope: !2817)
!2829 = !DILocation(line: 751, column: 24, scope: !2817)
!2830 = !DILocalVariable(name: "key", scope: !2817, file: !26, line: 752, type: !319)
!2831 = !DILocation(line: 752, column: 8, scope: !2817)
!2832 = !DILocalVariable(name: "value", scope: !2817, file: !26, line: 753, type: !1074)
!2833 = !DILocation(line: 753, column: 12, scope: !2817)
!2834 = !DILocation(line: 755, column: 8, scope: !2835)
!2835 = distinct !DILexicalBlock(scope: !2817, file: !26, line: 755, column: 6)
!2836 = !DILocation(line: 755, column: 6, scope: !2835)
!2837 = !DILocation(line: 755, column: 11, scope: !2835)
!2838 = !DILocation(line: 755, column: 6, scope: !2817)
!2839 = !DILocation(line: 756, column: 3, scope: !2835)
!2840 = !DILocation(line: 757, column: 2, scope: !2817)
!2841 = !DILocation(line: 759, column: 7, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2817, file: !26, line: 759, column: 6)
!2843 = !DILocation(line: 759, column: 6, scope: !2842)
!2844 = !DILocation(line: 759, column: 9, scope: !2842)
!2845 = !DILocation(line: 759, column: 6, scope: !2817)
!2846 = !DILocation(line: 760, column: 4, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2842, file: !26, line: 759, column: 17)
!2848 = !DILocation(line: 761, column: 3, scope: !2847)
!2849 = !DILocation(line: 764, column: 2, scope: !2817)
!2850 = !DILocation(line: 765, column: 25, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 765, column: 7)
!2852 = distinct !DILexicalBlock(scope: !2853, file: !26, line: 764, column: 11)
!2853 = distinct !DILexicalBlock(scope: !2854, file: !26, line: 764, column: 2)
!2854 = distinct !DILexicalBlock(scope: !2817, file: !26, line: 764, column: 2)
!2855 = !DILocation(line: 765, column: 8, scope: !2851)
!2856 = !DILocation(line: 765, column: 7, scope: !2852)
!2857 = !DILocation(line: 766, column: 4, scope: !2851)
!2858 = !DILocation(line: 767, column: 3, scope: !2852)
!2859 = !DILocation(line: 769, column: 9, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 769, column: 7)
!2861 = !DILocation(line: 769, column: 7, scope: !2860)
!2862 = !DILocation(line: 769, column: 12, scope: !2860)
!2863 = !DILocation(line: 769, column: 7, scope: !2852)
!2864 = !DILocation(line: 770, column: 4, scope: !2860)
!2865 = !DILocation(line: 771, column: 3, scope: !2852)
!2866 = !DILocation(line: 773, column: 24, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 773, column: 7)
!2868 = !DILocation(line: 773, column: 8, scope: !2867)
!2869 = !DILocation(line: 773, column: 7, scope: !2852)
!2870 = !DILocation(line: 774, column: 4, scope: !2867)
!2871 = !DILocation(line: 775, column: 3, scope: !2852)
!2872 = !DILocation(line: 777, column: 7, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 777, column: 7)
!2874 = !DILocation(line: 777, column: 7, scope: !2852)
!2875 = !DILocation(line: 778, column: 18, scope: !2873)
!2876 = !DILocation(line: 778, column: 23, scope: !2873)
!2877 = !DILocation(line: 778, column: 28, scope: !2873)
!2878 = !DILocation(line: 778, column: 4, scope: !2873)
!2879 = !DILocation(line: 780, column: 8, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 780, column: 7)
!2881 = !DILocation(line: 780, column: 7, scope: !2880)
!2882 = !DILocation(line: 780, column: 10, scope: !2880)
!2883 = !DILocation(line: 780, column: 7, scope: !2852)
!2884 = !DILocation(line: 781, column: 5, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2880, file: !26, line: 780, column: 18)
!2886 = !DILocation(line: 782, column: 4, scope: !2885)
!2887 = !DILocation(line: 785, column: 9, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2852, file: !26, line: 785, column: 7)
!2889 = !DILocation(line: 785, column: 7, scope: !2888)
!2890 = !DILocation(line: 785, column: 12, scope: !2888)
!2891 = !DILocation(line: 785, column: 7, scope: !2852)
!2892 = !DILocation(line: 786, column: 4, scope: !2888)
!2893 = !DILocation(line: 787, column: 3, scope: !2852)
!2894 = !DILocation(line: 764, column: 2, scope: !2853)
!2895 = distinct !{!2895, !2896, !2897}
!2896 = !DILocation(line: 764, column: 2, scope: !2854)
!2897 = !DILocation(line: 788, column: 2, scope: !2854)
!2898 = !DILabel(scope: !2817, name: "success", file: !26, line: 790)
!2899 = !DILocation(line: 790, column: 1, scope: !2817)
!2900 = !DILocation(line: 791, column: 8, scope: !2817)
!2901 = !DILocation(line: 791, column: 3, scope: !2817)
!2902 = !DILocation(line: 791, column: 6, scope: !2817)
!2903 = !DILocation(line: 792, column: 6, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2817, file: !26, line: 792, column: 6)
!2905 = !DILocation(line: 792, column: 6, scope: !2817)
!2906 = !DILocation(line: 793, column: 10, scope: !2904)
!2907 = !DILocation(line: 793, column: 4, scope: !2904)
!2908 = !DILocation(line: 793, column: 8, scope: !2904)
!2909 = !DILocation(line: 793, column: 3, scope: !2904)
!2910 = !DILocation(line: 794, column: 2, scope: !2817)
!2911 = !DILabel(scope: !2817, name: "failure_free_key", file: !26, line: 796)
!2912 = !DILocation(line: 796, column: 1, scope: !2817)
!2913 = !DILocation(line: 797, column: 6, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2817, file: !26, line: 797, column: 6)
!2915 = !DILocation(line: 797, column: 6, scope: !2817)
!2916 = !DILocation(line: 798, column: 8, scope: !2914)
!2917 = !DILocation(line: 798, column: 3, scope: !2914)
!2918 = !DILabel(scope: !2817, name: "failure", file: !26, line: 799)
!2919 = !DILocation(line: 799, column: 1, scope: !2817)
!2920 = !DILocation(line: 800, column: 14, scope: !2817)
!2921 = !DILocation(line: 800, column: 2, scope: !2817)
!2922 = !DILocation(line: 801, column: 2, scope: !2817)
!2923 = !DILocation(line: 802, column: 1, scope: !2817)
!2924 = distinct !DISubprogram(name: "parse_number", scope: !26, file: !26, line: 929, type: !2925, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!473, !1829, !2927}
!2927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!2928 = !DILocalVariable(name: "sp", arg: 1, scope: !2924, file: !26, line: 929, type: !1829)
!2929 = !DILocation(line: 929, column: 32, scope: !2924)
!2930 = !DILocalVariable(name: "out", arg: 2, scope: !2924, file: !26, line: 929, type: !2927)
!2931 = !DILocation(line: 929, column: 44, scope: !2924)
!2932 = !DILocalVariable(name: "s", scope: !2924, file: !26, line: 931, type: !437)
!2933 = !DILocation(line: 931, column: 14, scope: !2924)
!2934 = !DILocation(line: 931, column: 19, scope: !2924)
!2935 = !DILocation(line: 931, column: 18, scope: !2924)
!2936 = !DILocation(line: 934, column: 7, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2924, file: !26, line: 934, column: 6)
!2938 = !DILocation(line: 934, column: 6, scope: !2937)
!2939 = !DILocation(line: 934, column: 9, scope: !2937)
!2940 = !DILocation(line: 934, column: 6, scope: !2924)
!2941 = !DILocation(line: 935, column: 4, scope: !2937)
!2942 = !DILocation(line: 935, column: 3, scope: !2937)
!2943 = !DILocation(line: 938, column: 7, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2924, file: !26, line: 938, column: 6)
!2945 = !DILocation(line: 938, column: 6, scope: !2944)
!2946 = !DILocation(line: 938, column: 9, scope: !2944)
!2947 = !DILocation(line: 938, column: 6, scope: !2924)
!2948 = !DILocation(line: 939, column: 4, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2944, file: !26, line: 938, column: 17)
!2950 = !DILocation(line: 940, column: 2, scope: !2949)
!2951 = !DILocation(line: 941, column: 8, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2953, file: !26, line: 941, column: 7)
!2953 = distinct !DILexicalBlock(scope: !2944, file: !26, line: 940, column: 9)
!2954 = !DILocation(line: 941, column: 7, scope: !2953)
!2955 = !DILocation(line: 942, column: 4, scope: !2952)
!2956 = !DILocation(line: 943, column: 3, scope: !2953)
!2957 = !DILocation(line: 944, column: 5, scope: !2958)
!2958 = distinct !DILexicalBlock(scope: !2953, file: !26, line: 943, column: 6)
!2959 = !DILocation(line: 945, column: 3, scope: !2958)
!2960 = !DILocation(line: 945, column: 12, scope: !2953)
!2961 = !DILocation(line: 0, scope: !2953)
!2962 = distinct !{!2962, !2956, !2963, !1257}
!2963 = !DILocation(line: 945, column: 24, scope: !2953)
!2964 = !DILocation(line: 949, column: 7, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2924, file: !26, line: 949, column: 6)
!2966 = !DILocation(line: 949, column: 6, scope: !2965)
!2967 = !DILocation(line: 949, column: 9, scope: !2965)
!2968 = !DILocation(line: 949, column: 6, scope: !2924)
!2969 = !DILocation(line: 950, column: 4, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2965, file: !26, line: 949, column: 17)
!2971 = !DILocation(line: 951, column: 8, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2970, file: !26, line: 951, column: 7)
!2973 = !DILocation(line: 951, column: 7, scope: !2970)
!2974 = !DILocation(line: 952, column: 4, scope: !2972)
!2975 = !DILocation(line: 953, column: 3, scope: !2970)
!2976 = !DILocation(line: 954, column: 5, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2970, file: !26, line: 953, column: 6)
!2978 = !DILocation(line: 955, column: 3, scope: !2977)
!2979 = !DILocation(line: 955, column: 12, scope: !2970)
!2980 = !DILocation(line: 0, scope: !2970)
!2981 = distinct !{!2981, !2975, !2982, !1257}
!2982 = !DILocation(line: 955, column: 24, scope: !2970)
!2983 = !DILocation(line: 956, column: 2, scope: !2970)
!2984 = !DILocation(line: 959, column: 7, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2924, file: !26, line: 959, column: 6)
!2986 = !DILocation(line: 959, column: 6, scope: !2985)
!2987 = !DILocation(line: 959, column: 9, scope: !2985)
!2988 = !DILocation(line: 959, column: 16, scope: !2985)
!2989 = !DILocation(line: 959, column: 20, scope: !2985)
!2990 = !DILocation(line: 959, column: 19, scope: !2985)
!2991 = !DILocation(line: 959, column: 22, scope: !2985)
!2992 = !DILocation(line: 959, column: 6, scope: !2924)
!2993 = !DILocation(line: 960, column: 4, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2985, file: !26, line: 959, column: 30)
!2995 = !DILocation(line: 961, column: 8, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2994, file: !26, line: 961, column: 7)
!2997 = !DILocation(line: 961, column: 7, scope: !2996)
!2998 = !DILocation(line: 961, column: 10, scope: !2996)
!2999 = !DILocation(line: 961, column: 17, scope: !2996)
!3000 = !DILocation(line: 961, column: 21, scope: !2996)
!3001 = !DILocation(line: 961, column: 20, scope: !2996)
!3002 = !DILocation(line: 961, column: 23, scope: !2996)
!3003 = !DILocation(line: 961, column: 7, scope: !2994)
!3004 = !DILocation(line: 962, column: 5, scope: !2996)
!3005 = !DILocation(line: 962, column: 4, scope: !2996)
!3006 = !DILocation(line: 963, column: 8, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2994, file: !26, line: 963, column: 7)
!3008 = !DILocation(line: 963, column: 7, scope: !2994)
!3009 = !DILocation(line: 964, column: 4, scope: !3007)
!3010 = !DILocation(line: 965, column: 3, scope: !2994)
!3011 = !DILocation(line: 966, column: 5, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2994, file: !26, line: 965, column: 6)
!3013 = !DILocation(line: 967, column: 3, scope: !3012)
!3014 = !DILocation(line: 967, column: 12, scope: !2994)
!3015 = !DILocation(line: 0, scope: !2994)
!3016 = distinct !{!3016, !3010, !3017, !1257}
!3017 = !DILocation(line: 967, column: 24, scope: !2994)
!3018 = !DILocation(line: 968, column: 2, scope: !2994)
!3019 = !DILocation(line: 970, column: 6, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2924, file: !26, line: 970, column: 6)
!3021 = !DILocation(line: 970, column: 6, scope: !2924)
!3022 = !DILocation(line: 971, column: 18, scope: !3020)
!3023 = !DILocation(line: 971, column: 17, scope: !3020)
!3024 = !DILocation(line: 971, column: 10, scope: !3020)
!3025 = !DILocation(line: 971, column: 4, scope: !3020)
!3026 = !DILocation(line: 971, column: 8, scope: !3020)
!3027 = !DILocation(line: 971, column: 3, scope: !3020)
!3028 = !DILocation(line: 973, column: 8, scope: !2924)
!3029 = !DILocation(line: 973, column: 3, scope: !2924)
!3030 = !DILocation(line: 973, column: 6, scope: !2924)
!3031 = !DILocation(line: 974, column: 2, scope: !2924)
!3032 = !DILocation(line: 975, column: 1, scope: !2924)
!3033 = distinct !DISubprogram(name: "json_mknumber", scope: !26, file: !26, line: 530, type: !3034, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3034 = !DISubroutineType(types: !3035)
!3035 = !{!1074, !1090}
!3036 = !DILocalVariable(name: "n", arg: 1, scope: !3033, file: !26, line: 530, type: !1090)
!3037 = !DILocation(line: 530, column: 32, scope: !3033)
!3038 = !DILocalVariable(name: "node", scope: !3033, file: !26, line: 532, type: !1074)
!3039 = !DILocation(line: 532, column: 12, scope: !3033)
!3040 = !DILocation(line: 532, column: 19, scope: !3033)
!3041 = !DILocation(line: 533, column: 18, scope: !3033)
!3042 = !DILocation(line: 533, column: 2, scope: !3033)
!3043 = !DILocation(line: 533, column: 8, scope: !3033)
!3044 = !DILocation(line: 533, column: 16, scope: !3033)
!3045 = !DILocation(line: 534, column: 9, scope: !3033)
!3046 = !DILocation(line: 534, column: 2, scope: !3033)
!3047 = distinct !DISubprogram(name: "mknode", scope: !26, file: !26, line: 497, type: !3048, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!1074, !1083}
!3050 = !DILocalVariable(name: "tag", arg: 1, scope: !3047, file: !26, line: 497, type: !1083)
!3051 = !DILocation(line: 497, column: 33, scope: !3047)
!3052 = !DILocalVariable(name: "ret", scope: !3047, file: !26, line: 499, type: !1074)
!3053 = !DILocation(line: 499, column: 12, scope: !3047)
!3054 = !DILocation(line: 499, column: 30, scope: !3047)
!3055 = !DILocation(line: 500, column: 6, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !3047, file: !26, line: 500, column: 6)
!3057 = !DILocation(line: 500, column: 10, scope: !3056)
!3058 = !DILocation(line: 500, column: 6, scope: !3047)
!3059 = !DILocation(line: 501, column: 3, scope: !3056)
!3060 = !DILocation(line: 501, column: 3, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3056, file: !26, line: 501, column: 3)
!3062 = !DILocation(line: 502, column: 13, scope: !3047)
!3063 = !DILocation(line: 502, column: 2, scope: !3047)
!3064 = !DILocation(line: 502, column: 7, scope: !3047)
!3065 = !DILocation(line: 502, column: 11, scope: !3047)
!3066 = !DILocation(line: 503, column: 9, scope: !3047)
!3067 = !DILocation(line: 503, column: 2, scope: !3047)
!3068 = distinct !DISubprogram(name: "json_mkobject", scope: !26, file: !26, line: 542, type: !2498, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3069 = !DILocation(line: 544, column: 9, scope: !3068)
!3070 = !DILocation(line: 544, column: 2, scope: !3068)
!3071 = distinct !DISubprogram(name: "append_member", scope: !26, file: !26, line: 573, type: !3072, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3072 = !DISubroutineType(types: !3073)
!3073 = !{null, !1074, !319, !1074}
!3074 = !DILocalVariable(name: "object", arg: 1, scope: !3071, file: !26, line: 573, type: !1074)
!3075 = !DILocation(line: 573, column: 37, scope: !3071)
!3076 = !DILocalVariable(name: "key", arg: 2, scope: !3071, file: !26, line: 573, type: !319)
!3077 = !DILocation(line: 573, column: 51, scope: !3071)
!3078 = !DILocalVariable(name: "value", arg: 3, scope: !3071, file: !26, line: 573, type: !1074)
!3079 = !DILocation(line: 573, column: 66, scope: !3071)
!3080 = !DILocation(line: 575, column: 15, scope: !3071)
!3081 = !DILocation(line: 575, column: 2, scope: !3071)
!3082 = !DILocation(line: 575, column: 9, scope: !3071)
!3083 = !DILocation(line: 575, column: 13, scope: !3071)
!3084 = !DILocation(line: 576, column: 14, scope: !3071)
!3085 = !DILocation(line: 576, column: 22, scope: !3071)
!3086 = !DILocation(line: 576, column: 2, scope: !3071)
!3087 = !DILocation(line: 577, column: 1, scope: !3071)
!3088 = distinct !DISubprogram(name: "append_node", scope: !26, file: !26, line: 547, type: !3089, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3089 = !DISubroutineType(types: !3090)
!3090 = !{null, !1074, !1074}
!3091 = !DILocalVariable(name: "parent", arg: 1, scope: !3088, file: !26, line: 547, type: !1074)
!3092 = !DILocation(line: 547, column: 35, scope: !3088)
!3093 = !DILocalVariable(name: "child", arg: 2, scope: !3088, file: !26, line: 547, type: !1074)
!3094 = !DILocation(line: 547, column: 53, scope: !3088)
!3095 = !DILocation(line: 549, column: 18, scope: !3088)
!3096 = !DILocation(line: 549, column: 2, scope: !3088)
!3097 = !DILocation(line: 549, column: 9, scope: !3088)
!3098 = !DILocation(line: 549, column: 16, scope: !3088)
!3099 = !DILocation(line: 550, column: 16, scope: !3088)
!3100 = !DILocation(line: 550, column: 24, scope: !3088)
!3101 = !DILocation(line: 550, column: 33, scope: !3088)
!3102 = !DILocation(line: 550, column: 2, scope: !3088)
!3103 = !DILocation(line: 550, column: 9, scope: !3088)
!3104 = !DILocation(line: 550, column: 14, scope: !3088)
!3105 = !DILocation(line: 551, column: 2, scope: !3088)
!3106 = !DILocation(line: 551, column: 9, scope: !3088)
!3107 = !DILocation(line: 551, column: 14, scope: !3088)
!3108 = !DILocation(line: 553, column: 6, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3088, file: !26, line: 553, column: 6)
!3110 = !DILocation(line: 553, column: 14, scope: !3109)
!3111 = !DILocation(line: 553, column: 23, scope: !3109)
!3112 = !DILocation(line: 553, column: 28, scope: !3109)
!3113 = !DILocation(line: 553, column: 6, scope: !3088)
!3114 = !DILocation(line: 554, column: 33, scope: !3109)
!3115 = !DILocation(line: 554, column: 3, scope: !3109)
!3116 = !DILocation(line: 554, column: 11, scope: !3109)
!3117 = !DILocation(line: 554, column: 20, scope: !3109)
!3118 = !DILocation(line: 554, column: 26, scope: !3109)
!3119 = !DILocation(line: 554, column: 31, scope: !3109)
!3120 = !DILocation(line: 556, column: 27, scope: !3109)
!3121 = !DILocation(line: 556, column: 3, scope: !3109)
!3122 = !DILocation(line: 556, column: 11, scope: !3109)
!3123 = !DILocation(line: 556, column: 20, scope: !3109)
!3124 = !DILocation(line: 556, column: 25, scope: !3109)
!3125 = !DILocation(line: 557, column: 26, scope: !3088)
!3126 = !DILocation(line: 557, column: 2, scope: !3088)
!3127 = !DILocation(line: 557, column: 10, scope: !3088)
!3128 = !DILocation(line: 557, column: 19, scope: !3088)
!3129 = !DILocation(line: 557, column: 24, scope: !3088)
!3130 = !DILocation(line: 558, column: 1, scope: !3088)
!3131 = distinct !DISubprogram(name: "json_mkarray", scope: !26, file: !26, line: 537, type: !2498, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3132 = !DILocation(line: 539, column: 9, scope: !3131)
!3133 = !DILocation(line: 539, column: 2, scope: !3131)
!3134 = distinct !DISubprogram(name: "json_append_element", scope: !26, file: !26, line: 579, type: !3089, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3135 = !DILocalVariable(name: "array", arg: 1, scope: !3134, file: !26, line: 579, type: !1074)
!3136 = !DILocation(line: 579, column: 36, scope: !3134)
!3137 = !DILocalVariable(name: "element", arg: 2, scope: !3134, file: !26, line: 579, type: !1074)
!3138 = !DILocation(line: 579, column: 53, scope: !3134)
!3139 = !DILocation(line: 581, column: 2, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3141, file: !26, line: 581, column: 2)
!3141 = distinct !DILexicalBlock(scope: !3134, file: !26, line: 581, column: 2)
!3142 = !DILocation(line: 581, column: 2, scope: !3141)
!3143 = !DILocation(line: 582, column: 2, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3145, file: !26, line: 582, column: 2)
!3145 = distinct !DILexicalBlock(scope: !3134, file: !26, line: 582, column: 2)
!3146 = !DILocation(line: 582, column: 2, scope: !3145)
!3147 = !DILocation(line: 584, column: 14, scope: !3134)
!3148 = !DILocation(line: 584, column: 21, scope: !3134)
!3149 = !DILocation(line: 584, column: 2, scope: !3134)
!3150 = !DILocation(line: 585, column: 1, scope: !3134)
!3151 = distinct !DISubprogram(name: "sb_init", scope: !26, file: !26, line: 46, type: !3152, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{null, !3154}
!3154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!3155 = !DILocalVariable(name: "sb", arg: 1, scope: !3151, file: !26, line: 46, type: !3154)
!3156 = !DILocation(line: 46, column: 25, scope: !3151)
!3157 = !DILocation(line: 48, column: 22, scope: !3151)
!3158 = !DILocation(line: 48, column: 2, scope: !3151)
!3159 = !DILocation(line: 48, column: 6, scope: !3151)
!3160 = !DILocation(line: 48, column: 12, scope: !3151)
!3161 = !DILocation(line: 49, column: 6, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3151, file: !26, line: 49, column: 6)
!3163 = !DILocation(line: 49, column: 10, scope: !3162)
!3164 = !DILocation(line: 49, column: 16, scope: !3162)
!3165 = !DILocation(line: 49, column: 6, scope: !3151)
!3166 = !DILocation(line: 50, column: 3, scope: !3162)
!3167 = !DILocation(line: 50, column: 3, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3162, file: !26, line: 50, column: 3)
!3169 = !DILocation(line: 51, column: 12, scope: !3151)
!3170 = !DILocation(line: 51, column: 16, scope: !3151)
!3171 = !DILocation(line: 51, column: 2, scope: !3151)
!3172 = !DILocation(line: 51, column: 6, scope: !3151)
!3173 = !DILocation(line: 51, column: 10, scope: !3151)
!3174 = !DILocation(line: 52, column: 12, scope: !3151)
!3175 = !DILocation(line: 52, column: 16, scope: !3151)
!3176 = !DILocation(line: 52, column: 22, scope: !3151)
!3177 = !DILocation(line: 52, column: 2, scope: !3151)
!3178 = !DILocation(line: 52, column: 6, scope: !3151)
!3179 = !DILocation(line: 52, column: 10, scope: !3151)
!3180 = !DILocation(line: 53, column: 1, scope: !3151)
!3181 = distinct !DISubprogram(name: "sb_grow", scope: !26, file: !26, line: 61, type: !3182, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3182 = !DISubroutineType(types: !3183)
!3183 = !{null, !3154, !463}
!3184 = !DILocalVariable(name: "sb", arg: 1, scope: !3181, file: !26, line: 61, type: !3154)
!3185 = !DILocation(line: 61, column: 25, scope: !3181)
!3186 = !DILocalVariable(name: "need", arg: 2, scope: !3181, file: !26, line: 61, type: !463)
!3187 = !DILocation(line: 61, column: 36, scope: !3181)
!3188 = !DILocalVariable(name: "length", scope: !3181, file: !26, line: 63, type: !463)
!3189 = !DILocation(line: 63, column: 9, scope: !3181)
!3190 = !DILocation(line: 63, column: 27, scope: !3181)
!3191 = !DILocation(line: 63, column: 31, scope: !3181)
!3192 = !DILocation(line: 63, column: 37, scope: !3181)
!3193 = !DILocation(line: 63, column: 41, scope: !3181)
!3194 = !DILocation(line: 63, column: 35, scope: !3181)
!3195 = !DILocalVariable(name: "alloc", scope: !3181, file: !26, line: 64, type: !463)
!3196 = !DILocation(line: 64, column: 9, scope: !3181)
!3197 = !DILocation(line: 64, column: 26, scope: !3181)
!3198 = !DILocation(line: 64, column: 30, scope: !3181)
!3199 = !DILocation(line: 64, column: 36, scope: !3181)
!3200 = !DILocation(line: 64, column: 40, scope: !3181)
!3201 = !DILocation(line: 64, column: 34, scope: !3181)
!3202 = !DILocation(line: 66, column: 2, scope: !3181)
!3203 = !DILocation(line: 67, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3181, file: !26, line: 66, column: 5)
!3205 = !DILocation(line: 68, column: 2, scope: !3204)
!3206 = !DILocation(line: 68, column: 11, scope: !3181)
!3207 = !DILocation(line: 68, column: 19, scope: !3181)
!3208 = !DILocation(line: 68, column: 28, scope: !3181)
!3209 = !DILocation(line: 68, column: 26, scope: !3181)
!3210 = !DILocation(line: 68, column: 17, scope: !3181)
!3211 = distinct !{!3211, !3202, !3212, !1257}
!3212 = !DILocation(line: 68, column: 32, scope: !3181)
!3213 = !DILocation(line: 70, column: 30, scope: !3181)
!3214 = !DILocation(line: 70, column: 34, scope: !3181)
!3215 = !DILocation(line: 70, column: 41, scope: !3181)
!3216 = !DILocation(line: 70, column: 47, scope: !3181)
!3217 = !DILocation(line: 70, column: 22, scope: !3181)
!3218 = !DILocation(line: 70, column: 2, scope: !3181)
!3219 = !DILocation(line: 70, column: 6, scope: !3181)
!3220 = !DILocation(line: 70, column: 12, scope: !3181)
!3221 = !DILocation(line: 71, column: 6, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3181, file: !26, line: 71, column: 6)
!3223 = !DILocation(line: 71, column: 10, scope: !3222)
!3224 = !DILocation(line: 71, column: 16, scope: !3222)
!3225 = !DILocation(line: 71, column: 6, scope: !3181)
!3226 = !DILocation(line: 72, column: 3, scope: !3222)
!3227 = !DILocation(line: 72, column: 3, scope: !3228)
!3228 = distinct !DILexicalBlock(scope: !3222, file: !26, line: 72, column: 3)
!3229 = !DILocation(line: 73, column: 12, scope: !3181)
!3230 = !DILocation(line: 73, column: 16, scope: !3181)
!3231 = !DILocation(line: 73, column: 24, scope: !3181)
!3232 = !DILocation(line: 73, column: 22, scope: !3181)
!3233 = !DILocation(line: 73, column: 2, scope: !3181)
!3234 = !DILocation(line: 73, column: 6, scope: !3181)
!3235 = !DILocation(line: 73, column: 10, scope: !3181)
!3236 = !DILocation(line: 74, column: 12, scope: !3181)
!3237 = !DILocation(line: 74, column: 16, scope: !3181)
!3238 = !DILocation(line: 74, column: 24, scope: !3181)
!3239 = !DILocation(line: 74, column: 22, scope: !3181)
!3240 = !DILocation(line: 74, column: 2, scope: !3181)
!3241 = !DILocation(line: 74, column: 6, scope: !3181)
!3242 = !DILocation(line: 74, column: 10, scope: !3181)
!3243 = !DILocation(line: 75, column: 1, scope: !3181)
!3244 = distinct !DISubprogram(name: "parse_hex16", scope: !26, file: !26, line: 1273, type: !3245, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!473, !1829, !3247}
!3247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!3248 = !DILocalVariable(name: "sp", arg: 1, scope: !3244, file: !26, line: 1273, type: !1829)
!3249 = !DILocation(line: 1273, column: 38, scope: !3244)
!3250 = !DILocalVariable(name: "out", arg: 2, scope: !3244, file: !26, line: 1273, type: !3247)
!3251 = !DILocation(line: 1273, column: 52, scope: !3244)
!3252 = !DILocalVariable(name: "s", scope: !3244, file: !26, line: 1275, type: !437)
!3253 = !DILocation(line: 1275, column: 14, scope: !3244)
!3254 = !DILocation(line: 1275, column: 19, scope: !3244)
!3255 = !DILocation(line: 1275, column: 18, scope: !3244)
!3256 = !DILocalVariable(name: "ret", scope: !3244, file: !26, line: 1276, type: !1096)
!3257 = !DILocation(line: 1276, column: 11, scope: !3244)
!3258 = !DILocalVariable(name: "i", scope: !3244, file: !26, line: 1277, type: !1096)
!3259 = !DILocation(line: 1277, column: 11, scope: !3244)
!3260 = !DILocalVariable(name: "tmp", scope: !3244, file: !26, line: 1278, type: !1096)
!3261 = !DILocation(line: 1278, column: 11, scope: !3244)
!3262 = !DILocation(line: 1280, column: 9, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3244, file: !26, line: 1280, column: 2)
!3264 = !DILocation(line: 1280, column: 7, scope: !3263)
!3265 = !DILocation(line: 1280, column: 14, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3263, file: !26, line: 1280, column: 2)
!3267 = !DILocation(line: 1280, column: 16, scope: !3266)
!3268 = !DILocation(line: 1280, column: 2, scope: !3263)
!3269 = !DILocalVariable(name: "c", scope: !3270, file: !26, line: 1281, type: !4)
!3270 = distinct !DILexicalBlock(scope: !3266, file: !26, line: 1280, column: 26)
!3271 = !DILocation(line: 1281, column: 8, scope: !3270)
!3272 = !DILocation(line: 1281, column: 14, scope: !3270)
!3273 = !DILocation(line: 1281, column: 12, scope: !3270)
!3274 = !DILocation(line: 1282, column: 7, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3270, file: !26, line: 1282, column: 7)
!3276 = !DILocation(line: 1282, column: 9, scope: !3275)
!3277 = !DILocation(line: 1282, column: 16, scope: !3275)
!3278 = !DILocation(line: 1282, column: 19, scope: !3275)
!3279 = !DILocation(line: 1282, column: 21, scope: !3275)
!3280 = !DILocation(line: 1282, column: 7, scope: !3270)
!3281 = !DILocation(line: 1283, column: 21, scope: !3275)
!3282 = !DILocation(line: 1283, column: 23, scope: !3275)
!3283 = !DILocation(line: 1283, column: 10, scope: !3275)
!3284 = !DILocation(line: 1283, column: 8, scope: !3275)
!3285 = !DILocation(line: 1283, column: 4, scope: !3275)
!3286 = !DILocation(line: 1284, column: 12, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3275, file: !26, line: 1284, column: 12)
!3288 = !DILocation(line: 1284, column: 14, scope: !3287)
!3289 = !DILocation(line: 1284, column: 21, scope: !3287)
!3290 = !DILocation(line: 1284, column: 24, scope: !3287)
!3291 = !DILocation(line: 1284, column: 26, scope: !3287)
!3292 = !DILocation(line: 1284, column: 12, scope: !3275)
!3293 = !DILocation(line: 1285, column: 21, scope: !3287)
!3294 = !DILocation(line: 1285, column: 23, scope: !3287)
!3295 = !DILocation(line: 1285, column: 29, scope: !3287)
!3296 = !DILocation(line: 1285, column: 10, scope: !3287)
!3297 = !DILocation(line: 1285, column: 8, scope: !3287)
!3298 = !DILocation(line: 1285, column: 4, scope: !3287)
!3299 = !DILocation(line: 1286, column: 12, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3287, file: !26, line: 1286, column: 12)
!3301 = !DILocation(line: 1286, column: 14, scope: !3300)
!3302 = !DILocation(line: 1286, column: 21, scope: !3300)
!3303 = !DILocation(line: 1286, column: 24, scope: !3300)
!3304 = !DILocation(line: 1286, column: 26, scope: !3300)
!3305 = !DILocation(line: 1286, column: 12, scope: !3287)
!3306 = !DILocation(line: 1287, column: 21, scope: !3300)
!3307 = !DILocation(line: 1287, column: 23, scope: !3300)
!3308 = !DILocation(line: 1287, column: 29, scope: !3300)
!3309 = !DILocation(line: 1287, column: 10, scope: !3300)
!3310 = !DILocation(line: 1287, column: 8, scope: !3300)
!3311 = !DILocation(line: 1287, column: 4, scope: !3300)
!3312 = !DILocation(line: 1289, column: 4, scope: !3300)
!3313 = !DILocation(line: 1291, column: 21, scope: !3270)
!3314 = !DILocation(line: 1291, column: 25, scope: !3270)
!3315 = !DILocation(line: 1291, column: 33, scope: !3270)
!3316 = !DILocation(line: 1291, column: 31, scope: !3270)
!3317 = !DILocation(line: 1291, column: 9, scope: !3270)
!3318 = !DILocation(line: 1291, column: 7, scope: !3270)
!3319 = !DILocation(line: 1292, column: 2, scope: !3270)
!3320 = !DILocation(line: 1280, column: 22, scope: !3266)
!3321 = !DILocation(line: 1280, column: 2, scope: !3266)
!3322 = distinct !{!3322, !3268, !3323, !1257}
!3323 = !DILocation(line: 1292, column: 2, scope: !3263)
!3324 = !DILocation(line: 1294, column: 6, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3244, file: !26, line: 1294, column: 6)
!3326 = !DILocation(line: 1294, column: 6, scope: !3244)
!3327 = !DILocation(line: 1295, column: 10, scope: !3325)
!3328 = !DILocation(line: 1295, column: 4, scope: !3325)
!3329 = !DILocation(line: 1295, column: 8, scope: !3325)
!3330 = !DILocation(line: 1295, column: 3, scope: !3325)
!3331 = !DILocation(line: 1296, column: 8, scope: !3244)
!3332 = !DILocation(line: 1296, column: 3, scope: !3244)
!3333 = !DILocation(line: 1296, column: 6, scope: !3244)
!3334 = !DILocation(line: 1297, column: 2, scope: !3244)
!3335 = !DILocation(line: 1298, column: 1, scope: !3244)
!3336 = distinct !DISubprogram(name: "from_surrogate_pair", scope: !26, file: !26, line: 300, type: !3337, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3337 = !DISubroutineType(types: !3338)
!3338 = !{!473, !1096, !1096, !3339}
!3339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!3340 = !DILocalVariable(name: "uc", arg: 1, scope: !3336, file: !26, line: 300, type: !1096)
!3341 = !DILocation(line: 300, column: 42, scope: !3336)
!3342 = !DILocalVariable(name: "lc", arg: 2, scope: !3336, file: !26, line: 300, type: !1096)
!3343 = !DILocation(line: 300, column: 55, scope: !3336)
!3344 = !DILocalVariable(name: "unicode", arg: 3, scope: !3336, file: !26, line: 300, type: !3339)
!3345 = !DILocation(line: 300, column: 68, scope: !3336)
!3346 = !DILocation(line: 302, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3336, file: !26, line: 302, column: 6)
!3348 = !DILocation(line: 302, column: 9, scope: !3347)
!3349 = !DILocation(line: 302, column: 19, scope: !3347)
!3350 = !DILocation(line: 302, column: 22, scope: !3347)
!3351 = !DILocation(line: 302, column: 25, scope: !3347)
!3352 = !DILocation(line: 302, column: 35, scope: !3347)
!3353 = !DILocation(line: 302, column: 38, scope: !3347)
!3354 = !DILocation(line: 302, column: 41, scope: !3347)
!3355 = !DILocation(line: 302, column: 51, scope: !3347)
!3356 = !DILocation(line: 302, column: 54, scope: !3347)
!3357 = !DILocation(line: 302, column: 57, scope: !3347)
!3358 = !DILocation(line: 302, column: 6, scope: !3336)
!3359 = !DILocation(line: 303, column: 36, scope: !3360)
!3360 = distinct !DILexicalBlock(scope: !3347, file: !26, line: 302, column: 68)
!3361 = !DILocation(line: 303, column: 27, scope: !3360)
!3362 = !DILocation(line: 303, column: 39, scope: !3360)
!3363 = !DILocation(line: 303, column: 48, scope: !3360)
!3364 = !DILocation(line: 303, column: 58, scope: !3360)
!3365 = !DILocation(line: 303, column: 61, scope: !3360)
!3366 = !DILocation(line: 303, column: 55, scope: !3360)
!3367 = !DILocation(line: 303, column: 22, scope: !3360)
!3368 = !DILocation(line: 303, column: 4, scope: !3360)
!3369 = !DILocation(line: 303, column: 12, scope: !3360)
!3370 = !DILocation(line: 304, column: 3, scope: !3360)
!3371 = !DILocation(line: 306, column: 3, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3347, file: !26, line: 305, column: 9)
!3373 = !DILocation(line: 308, column: 1, scope: !3336)
!3374 = distinct !DISubprogram(name: "utf8_write_char", scope: !26, file: !26, line: 263, type: !3375, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!235, !1098, !319}
!3377 = !DILocalVariable(name: "unicode", arg: 1, scope: !3374, file: !26, line: 263, type: !1098)
!3378 = !DILocation(line: 263, column: 36, scope: !3374)
!3379 = !DILocalVariable(name: "out", arg: 2, scope: !3374, file: !26, line: 263, type: !319)
!3380 = !DILocation(line: 263, column: 51, scope: !3374)
!3381 = !DILocalVariable(name: "o", scope: !3374, file: !26, line: 265, type: !789)
!3382 = !DILocation(line: 265, column: 17, scope: !3374)
!3383 = !DILocation(line: 265, column: 38, scope: !3374)
!3384 = !DILocation(line: 267, column: 2, scope: !3385)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !26, line: 267, column: 2)
!3386 = distinct !DILexicalBlock(scope: !3374, file: !26, line: 267, column: 2)
!3387 = !DILocation(line: 267, column: 2, scope: !3386)
!3388 = !DILocation(line: 269, column: 6, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3374, file: !26, line: 269, column: 6)
!3390 = !DILocation(line: 269, column: 14, scope: !3389)
!3391 = !DILocation(line: 269, column: 6, scope: !3374)
!3392 = !DILocation(line: 271, column: 25, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !26, line: 269, column: 23)
!3394 = !DILocation(line: 271, column: 10, scope: !3393)
!3395 = !DILocation(line: 271, column: 5, scope: !3393)
!3396 = !DILocation(line: 271, column: 8, scope: !3393)
!3397 = !DILocation(line: 272, column: 3, scope: !3393)
!3398 = !DILocation(line: 273, column: 13, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3389, file: !26, line: 273, column: 13)
!3400 = !DILocation(line: 273, column: 21, scope: !3399)
!3401 = !DILocation(line: 273, column: 13, scope: !3389)
!3402 = !DILocation(line: 275, column: 33, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !26, line: 273, column: 31)
!3404 = !DILocation(line: 275, column: 41, scope: !3403)
!3405 = !DILocation(line: 275, column: 31, scope: !3403)
!3406 = !DILocation(line: 275, column: 10, scope: !3403)
!3407 = !DILocation(line: 275, column: 5, scope: !3403)
!3408 = !DILocation(line: 275, column: 8, scope: !3403)
!3409 = !DILocation(line: 276, column: 34, scope: !3403)
!3410 = !DILocation(line: 276, column: 42, scope: !3403)
!3411 = !DILocation(line: 276, column: 31, scope: !3403)
!3412 = !DILocation(line: 276, column: 10, scope: !3403)
!3413 = !DILocation(line: 276, column: 5, scope: !3403)
!3414 = !DILocation(line: 276, column: 8, scope: !3403)
!3415 = !DILocation(line: 277, column: 3, scope: !3403)
!3416 = !DILocation(line: 278, column: 13, scope: !3417)
!3417 = distinct !DILexicalBlock(scope: !3399, file: !26, line: 278, column: 13)
!3418 = !DILocation(line: 278, column: 21, scope: !3417)
!3419 = !DILocation(line: 278, column: 13, scope: !3399)
!3420 = !DILocation(line: 280, column: 33, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3417, file: !26, line: 278, column: 32)
!3422 = !DILocation(line: 280, column: 41, scope: !3421)
!3423 = !DILocation(line: 280, column: 31, scope: !3421)
!3424 = !DILocation(line: 280, column: 10, scope: !3421)
!3425 = !DILocation(line: 280, column: 5, scope: !3421)
!3426 = !DILocation(line: 280, column: 8, scope: !3421)
!3427 = !DILocation(line: 281, column: 34, scope: !3421)
!3428 = !DILocation(line: 281, column: 42, scope: !3421)
!3429 = !DILocation(line: 281, column: 47, scope: !3421)
!3430 = !DILocation(line: 281, column: 31, scope: !3421)
!3431 = !DILocation(line: 281, column: 10, scope: !3421)
!3432 = !DILocation(line: 281, column: 5, scope: !3421)
!3433 = !DILocation(line: 281, column: 8, scope: !3421)
!3434 = !DILocation(line: 282, column: 34, scope: !3421)
!3435 = !DILocation(line: 282, column: 42, scope: !3421)
!3436 = !DILocation(line: 282, column: 31, scope: !3421)
!3437 = !DILocation(line: 282, column: 10, scope: !3421)
!3438 = !DILocation(line: 282, column: 5, scope: !3421)
!3439 = !DILocation(line: 282, column: 8, scope: !3421)
!3440 = !DILocation(line: 283, column: 3, scope: !3421)
!3441 = !DILocation(line: 286, column: 33, scope: !3442)
!3442 = distinct !DILexicalBlock(scope: !3417, file: !26, line: 284, column: 9)
!3443 = !DILocation(line: 286, column: 41, scope: !3442)
!3444 = !DILocation(line: 286, column: 31, scope: !3442)
!3445 = !DILocation(line: 286, column: 10, scope: !3442)
!3446 = !DILocation(line: 286, column: 5, scope: !3442)
!3447 = !DILocation(line: 286, column: 8, scope: !3442)
!3448 = !DILocation(line: 287, column: 34, scope: !3442)
!3449 = !DILocation(line: 287, column: 42, scope: !3442)
!3450 = !DILocation(line: 287, column: 48, scope: !3442)
!3451 = !DILocation(line: 287, column: 31, scope: !3442)
!3452 = !DILocation(line: 287, column: 10, scope: !3442)
!3453 = !DILocation(line: 287, column: 5, scope: !3442)
!3454 = !DILocation(line: 287, column: 8, scope: !3442)
!3455 = !DILocation(line: 288, column: 34, scope: !3442)
!3456 = !DILocation(line: 288, column: 42, scope: !3442)
!3457 = !DILocation(line: 288, column: 47, scope: !3442)
!3458 = !DILocation(line: 288, column: 31, scope: !3442)
!3459 = !DILocation(line: 288, column: 10, scope: !3442)
!3460 = !DILocation(line: 288, column: 5, scope: !3442)
!3461 = !DILocation(line: 288, column: 8, scope: !3442)
!3462 = !DILocation(line: 289, column: 34, scope: !3442)
!3463 = !DILocation(line: 289, column: 42, scope: !3442)
!3464 = !DILocation(line: 289, column: 31, scope: !3442)
!3465 = !DILocation(line: 289, column: 10, scope: !3442)
!3466 = !DILocation(line: 289, column: 5, scope: !3442)
!3467 = !DILocation(line: 289, column: 8, scope: !3442)
!3468 = !DILocation(line: 290, column: 3, scope: !3442)
!3469 = !DILocation(line: 292, column: 1, scope: !3374)
!3470 = distinct !DISubprogram(name: "utf8_validate_cz", scope: !26, file: !26, line: 149, type: !3471, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!463, !437}
!3473 = !DILocalVariable(name: "s", arg: 1, scope: !3470, file: !26, line: 149, type: !437)
!3474 = !DILocation(line: 149, column: 44, scope: !3470)
!3475 = !DILocalVariable(name: "c", scope: !3470, file: !26, line: 151, type: !790)
!3476 = !DILocation(line: 151, column: 16, scope: !3470)
!3477 = !DILocation(line: 151, column: 37, scope: !3470)
!3478 = !DILocation(line: 151, column: 35, scope: !3470)
!3479 = !DILocation(line: 153, column: 6, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3470, file: !26, line: 153, column: 6)
!3481 = !DILocation(line: 153, column: 8, scope: !3480)
!3482 = !DILocation(line: 153, column: 6, scope: !3470)
!3483 = !DILocation(line: 154, column: 3, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3480, file: !26, line: 153, column: 17)
!3485 = !DILocation(line: 155, column: 13, scope: !3486)
!3486 = distinct !DILexicalBlock(scope: !3480, file: !26, line: 155, column: 13)
!3487 = !DILocation(line: 155, column: 15, scope: !3486)
!3488 = !DILocation(line: 155, column: 13, scope: !3480)
!3489 = !DILocation(line: 157, column: 3, scope: !3490)
!3490 = distinct !DILexicalBlock(scope: !3486, file: !26, line: 155, column: 24)
!3491 = !DILocation(line: 158, column: 13, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3486, file: !26, line: 158, column: 13)
!3493 = !DILocation(line: 158, column: 15, scope: !3492)
!3494 = !DILocation(line: 158, column: 13, scope: !3486)
!3495 = !DILocation(line: 160, column: 25, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3497, file: !26, line: 160, column: 7)
!3497 = distinct !DILexicalBlock(scope: !3492, file: !26, line: 158, column: 24)
!3498 = !DILocation(line: 160, column: 23, scope: !3496)
!3499 = !DILocation(line: 160, column: 8, scope: !3496)
!3500 = !DILocation(line: 160, column: 28, scope: !3496)
!3501 = !DILocation(line: 160, column: 36, scope: !3496)
!3502 = !DILocation(line: 160, column: 7, scope: !3497)
!3503 = !DILocation(line: 161, column: 4, scope: !3496)
!3504 = !DILocation(line: 163, column: 3, scope: !3497)
!3505 = !DILocation(line: 164, column: 13, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3492, file: !26, line: 164, column: 13)
!3507 = !DILocation(line: 164, column: 15, scope: !3506)
!3508 = !DILocation(line: 164, column: 13, scope: !3492)
!3509 = !DILocation(line: 166, column: 7, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !26, line: 166, column: 7)
!3511 = distinct !DILexicalBlock(scope: !3506, file: !26, line: 164, column: 24)
!3512 = !DILocation(line: 166, column: 9, scope: !3510)
!3513 = !DILocation(line: 166, column: 17, scope: !3510)
!3514 = !DILocation(line: 166, column: 36, scope: !3510)
!3515 = !DILocation(line: 166, column: 35, scope: !3510)
!3516 = !DILocation(line: 166, column: 20, scope: !3510)
!3517 = !DILocation(line: 166, column: 38, scope: !3510)
!3518 = !DILocation(line: 166, column: 7, scope: !3511)
!3519 = !DILocation(line: 167, column: 4, scope: !3510)
!3520 = !DILocation(line: 170, column: 7, scope: !3521)
!3521 = distinct !DILexicalBlock(scope: !3511, file: !26, line: 170, column: 7)
!3522 = !DILocation(line: 170, column: 9, scope: !3521)
!3523 = !DILocation(line: 170, column: 17, scope: !3521)
!3524 = !DILocation(line: 170, column: 36, scope: !3521)
!3525 = !DILocation(line: 170, column: 35, scope: !3521)
!3526 = !DILocation(line: 170, column: 20, scope: !3521)
!3527 = !DILocation(line: 170, column: 38, scope: !3521)
!3528 = !DILocation(line: 170, column: 7, scope: !3511)
!3529 = !DILocation(line: 171, column: 4, scope: !3521)
!3530 = !DILocation(line: 174, column: 25, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3511, file: !26, line: 174, column: 7)
!3532 = !DILocation(line: 174, column: 23, scope: !3531)
!3533 = !DILocation(line: 174, column: 8, scope: !3531)
!3534 = !DILocation(line: 174, column: 28, scope: !3531)
!3535 = !DILocation(line: 174, column: 36, scope: !3531)
!3536 = !DILocation(line: 174, column: 7, scope: !3511)
!3537 = !DILocation(line: 175, column: 4, scope: !3531)
!3538 = !DILocation(line: 176, column: 25, scope: !3539)
!3539 = distinct !DILexicalBlock(scope: !3511, file: !26, line: 176, column: 7)
!3540 = !DILocation(line: 176, column: 23, scope: !3539)
!3541 = !DILocation(line: 176, column: 8, scope: !3539)
!3542 = !DILocation(line: 176, column: 28, scope: !3539)
!3543 = !DILocation(line: 176, column: 36, scope: !3539)
!3544 = !DILocation(line: 176, column: 7, scope: !3511)
!3545 = !DILocation(line: 177, column: 4, scope: !3539)
!3546 = !DILocation(line: 179, column: 3, scope: !3511)
!3547 = !DILocation(line: 180, column: 13, scope: !3548)
!3548 = distinct !DILexicalBlock(scope: !3506, file: !26, line: 180, column: 13)
!3549 = !DILocation(line: 180, column: 15, scope: !3548)
!3550 = !DILocation(line: 180, column: 13, scope: !3506)
!3551 = !DILocation(line: 182, column: 7, scope: !3552)
!3552 = distinct !DILexicalBlock(scope: !3553, file: !26, line: 182, column: 7)
!3553 = distinct !DILexicalBlock(scope: !3548, file: !26, line: 180, column: 24)
!3554 = !DILocation(line: 182, column: 9, scope: !3552)
!3555 = !DILocation(line: 182, column: 17, scope: !3552)
!3556 = !DILocation(line: 182, column: 36, scope: !3552)
!3557 = !DILocation(line: 182, column: 35, scope: !3552)
!3558 = !DILocation(line: 182, column: 20, scope: !3552)
!3559 = !DILocation(line: 182, column: 38, scope: !3552)
!3560 = !DILocation(line: 182, column: 7, scope: !3553)
!3561 = !DILocation(line: 183, column: 4, scope: !3552)
!3562 = !DILocation(line: 186, column: 7, scope: !3563)
!3563 = distinct !DILexicalBlock(scope: !3553, file: !26, line: 186, column: 7)
!3564 = !DILocation(line: 186, column: 9, scope: !3563)
!3565 = !DILocation(line: 186, column: 17, scope: !3563)
!3566 = !DILocation(line: 186, column: 36, scope: !3563)
!3567 = !DILocation(line: 186, column: 35, scope: !3563)
!3568 = !DILocation(line: 186, column: 20, scope: !3563)
!3569 = !DILocation(line: 186, column: 38, scope: !3563)
!3570 = !DILocation(line: 186, column: 7, scope: !3553)
!3571 = !DILocation(line: 187, column: 4, scope: !3563)
!3572 = !DILocation(line: 190, column: 25, scope: !3573)
!3573 = distinct !DILexicalBlock(scope: !3553, file: !26, line: 190, column: 7)
!3574 = !DILocation(line: 190, column: 23, scope: !3573)
!3575 = !DILocation(line: 190, column: 8, scope: !3573)
!3576 = !DILocation(line: 190, column: 28, scope: !3573)
!3577 = !DILocation(line: 190, column: 36, scope: !3573)
!3578 = !DILocation(line: 190, column: 7, scope: !3553)
!3579 = !DILocation(line: 191, column: 4, scope: !3573)
!3580 = !DILocation(line: 192, column: 25, scope: !3581)
!3581 = distinct !DILexicalBlock(scope: !3553, file: !26, line: 192, column: 7)
!3582 = !DILocation(line: 192, column: 23, scope: !3581)
!3583 = !DILocation(line: 192, column: 8, scope: !3581)
!3584 = !DILocation(line: 192, column: 28, scope: !3581)
!3585 = !DILocation(line: 192, column: 36, scope: !3581)
!3586 = !DILocation(line: 192, column: 7, scope: !3553)
!3587 = !DILocation(line: 193, column: 4, scope: !3581)
!3588 = !DILocation(line: 194, column: 25, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3553, file: !26, line: 194, column: 7)
!3590 = !DILocation(line: 194, column: 23, scope: !3589)
!3591 = !DILocation(line: 194, column: 8, scope: !3589)
!3592 = !DILocation(line: 194, column: 28, scope: !3589)
!3593 = !DILocation(line: 194, column: 36, scope: !3589)
!3594 = !DILocation(line: 194, column: 7, scope: !3553)
!3595 = !DILocation(line: 195, column: 4, scope: !3589)
!3596 = !DILocation(line: 197, column: 3, scope: !3553)
!3597 = !DILocation(line: 199, column: 3, scope: !3598)
!3598 = distinct !DILexicalBlock(scope: !3548, file: !26, line: 198, column: 9)
!3599 = !DILocation(line: 201, column: 1, scope: !3470)
!3600 = distinct !DISubprogram(name: "sb_finish", scope: !26, file: !26, line: 95, type: !3601, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3601 = !DISubroutineType(types: !3602)
!3602 = !{!319, !3154}
!3603 = !DILocalVariable(name: "sb", arg: 1, scope: !3600, file: !26, line: 95, type: !3154)
!3604 = !DILocation(line: 95, column: 28, scope: !3600)
!3605 = !DILocation(line: 97, column: 3, scope: !3600)
!3606 = !DILocation(line: 97, column: 7, scope: !3600)
!3607 = !DILocation(line: 97, column: 11, scope: !3600)
!3608 = !DILocation(line: 98, column: 2, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3610, file: !26, line: 98, column: 2)
!3610 = distinct !DILexicalBlock(scope: !3600, file: !26, line: 98, column: 2)
!3611 = !DILocation(line: 98, column: 2, scope: !3610)
!3612 = !DILocation(line: 99, column: 9, scope: !3600)
!3613 = !DILocation(line: 99, column: 13, scope: !3600)
!3614 = !DILocation(line: 99, column: 2, scope: !3600)
!3615 = distinct !DISubprogram(name: "sb_free", scope: !26, file: !26, line: 110, type: !3152, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3616 = !DILocalVariable(name: "sb", arg: 1, scope: !3615, file: !26, line: 110, type: !3154)
!3617 = !DILocation(line: 110, column: 25, scope: !3615)
!3618 = !DILocation(line: 112, column: 7, scope: !3615)
!3619 = !DILocation(line: 112, column: 11, scope: !3615)
!3620 = !DILocation(line: 112, column: 2, scope: !3615)
!3621 = !DILocation(line: 113, column: 1, scope: !3615)
!3622 = distinct !DISubprogram(name: "json_encode", scope: !26, file: !26, line: 377, type: !3623, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3623 = !DISubroutineType(types: !3624)
!3624 = !{!319, !3625}
!3625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3626, size: 64)
!3626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1075)
!3627 = !DILocalVariable(name: "node", arg: 1, scope: !3622, file: !26, line: 377, type: !3625)
!3628 = !DILocation(line: 377, column: 35, scope: !3622)
!3629 = !DILocation(line: 379, column: 24, scope: !3622)
!3630 = !DILocation(line: 379, column: 9, scope: !3622)
!3631 = !DILocation(line: 379, column: 2, scope: !3622)
!3632 = distinct !DISubprogram(name: "json_stringify", scope: !26, file: !26, line: 392, type: !3633, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3633 = !DISubroutineType(types: !3634)
!3634 = !{!319, !3625, !437}
!3635 = !DILocalVariable(name: "node", arg: 1, scope: !3632, file: !26, line: 392, type: !3625)
!3636 = !DILocation(line: 392, column: 38, scope: !3632)
!3637 = !DILocalVariable(name: "space", arg: 2, scope: !3632, file: !26, line: 392, type: !437)
!3638 = !DILocation(line: 392, column: 56, scope: !3632)
!3639 = !DILocalVariable(name: "sb", scope: !3632, file: !26, line: 394, type: !2528)
!3640 = !DILocation(line: 394, column: 5, scope: !3632)
!3641 = !DILocation(line: 395, column: 2, scope: !3632)
!3642 = !DILocation(line: 397, column: 6, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3632, file: !26, line: 397, column: 6)
!3644 = !DILocation(line: 397, column: 12, scope: !3643)
!3645 = !DILocation(line: 397, column: 6, scope: !3632)
!3646 = !DILocation(line: 398, column: 28, scope: !3643)
!3647 = !DILocation(line: 398, column: 34, scope: !3643)
!3648 = !DILocation(line: 398, column: 3, scope: !3643)
!3649 = !DILocation(line: 400, column: 19, scope: !3643)
!3650 = !DILocation(line: 400, column: 3, scope: !3643)
!3651 = !DILocation(line: 402, column: 9, scope: !3632)
!3652 = !DILocation(line: 402, column: 2, scope: !3632)
!3653 = distinct !DISubprogram(name: "emit_value_indented", scope: !26, file: !26, line: 1012, type: !3654, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3654 = !DISubroutineType(types: !3655)
!3655 = !{null, !3154, !3625, !437, !235}
!3656 = !DILocalVariable(name: "out", arg: 1, scope: !3653, file: !26, line: 1012, type: !3154)
!3657 = !DILocation(line: 1012, column: 30, scope: !3653)
!3658 = !DILocalVariable(name: "node", arg: 2, scope: !3653, file: !26, line: 1012, type: !3625)
!3659 = !DILocation(line: 1012, column: 51, scope: !3653)
!3660 = !DILocalVariable(name: "space", arg: 3, scope: !3653, file: !26, line: 1012, type: !437)
!3661 = !DILocation(line: 1012, column: 69, scope: !3653)
!3662 = !DILocalVariable(name: "indent_level", arg: 4, scope: !3653, file: !26, line: 1012, type: !235)
!3663 = !DILocation(line: 1012, column: 80, scope: !3653)
!3664 = !DILocation(line: 1014, column: 2, scope: !3665)
!3665 = distinct !DILexicalBlock(scope: !3666, file: !26, line: 1014, column: 2)
!3666 = distinct !DILexicalBlock(scope: !3653, file: !26, line: 1014, column: 2)
!3667 = !DILocation(line: 1014, column: 2, scope: !3666)
!3668 = !DILocation(line: 1015, column: 10, scope: !3653)
!3669 = !DILocation(line: 1015, column: 16, scope: !3653)
!3670 = !DILocation(line: 1015, column: 2, scope: !3653)
!3671 = !DILocation(line: 1017, column: 12, scope: !3672)
!3672 = distinct !DILexicalBlock(scope: !3653, file: !26, line: 1015, column: 21)
!3673 = !DILocation(line: 1017, column: 4, scope: !3672)
!3674 = !DILocation(line: 1018, column: 4, scope: !3672)
!3675 = !DILocation(line: 1020, column: 12, scope: !3672)
!3676 = !DILocation(line: 1020, column: 17, scope: !3672)
!3677 = !DILocation(line: 1020, column: 23, scope: !3672)
!3678 = !DILocation(line: 1020, column: 4, scope: !3672)
!3679 = !DILocation(line: 1021, column: 4, scope: !3672)
!3680 = !DILocation(line: 1023, column: 16, scope: !3672)
!3681 = !DILocation(line: 1023, column: 21, scope: !3672)
!3682 = !DILocation(line: 1023, column: 27, scope: !3672)
!3683 = !DILocation(line: 1023, column: 4, scope: !3672)
!3684 = !DILocation(line: 1024, column: 4, scope: !3672)
!3685 = !DILocation(line: 1026, column: 16, scope: !3672)
!3686 = !DILocation(line: 1026, column: 21, scope: !3672)
!3687 = !DILocation(line: 1026, column: 27, scope: !3672)
!3688 = !DILocation(line: 1026, column: 4, scope: !3672)
!3689 = !DILocation(line: 1027, column: 4, scope: !3672)
!3690 = !DILocation(line: 1029, column: 24, scope: !3672)
!3691 = !DILocation(line: 1029, column: 29, scope: !3672)
!3692 = !DILocation(line: 1029, column: 35, scope: !3672)
!3693 = !DILocation(line: 1029, column: 42, scope: !3672)
!3694 = !DILocation(line: 1029, column: 4, scope: !3672)
!3695 = !DILocation(line: 1030, column: 4, scope: !3672)
!3696 = !DILocation(line: 1032, column: 25, scope: !3672)
!3697 = !DILocation(line: 1032, column: 30, scope: !3672)
!3698 = !DILocation(line: 1032, column: 36, scope: !3672)
!3699 = !DILocation(line: 1032, column: 43, scope: !3672)
!3700 = !DILocation(line: 1032, column: 4, scope: !3672)
!3701 = !DILocation(line: 1033, column: 4, scope: !3672)
!3702 = !DILocation(line: 1035, column: 4, scope: !3703)
!3703 = distinct !DILexicalBlock(scope: !3704, file: !26, line: 1035, column: 4)
!3704 = distinct !DILexicalBlock(scope: !3672, file: !26, line: 1035, column: 4)
!3705 = !DILocation(line: 1037, column: 1, scope: !3653)
!3706 = distinct !DISubprogram(name: "emit_value", scope: !26, file: !26, line: 985, type: !3707, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3707 = !DISubroutineType(types: !3708)
!3708 = !{null, !3154, !3625}
!3709 = !DILocalVariable(name: "out", arg: 1, scope: !3706, file: !26, line: 985, type: !3154)
!3710 = !DILocation(line: 985, column: 28, scope: !3706)
!3711 = !DILocalVariable(name: "node", arg: 2, scope: !3706, file: !26, line: 985, type: !3625)
!3712 = !DILocation(line: 985, column: 49, scope: !3706)
!3713 = !DILocation(line: 987, column: 2, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3715, file: !26, line: 987, column: 2)
!3715 = distinct !DILexicalBlock(scope: !3706, file: !26, line: 987, column: 2)
!3716 = !DILocation(line: 987, column: 2, scope: !3715)
!3717 = !DILocation(line: 988, column: 10, scope: !3706)
!3718 = !DILocation(line: 988, column: 16, scope: !3706)
!3719 = !DILocation(line: 988, column: 2, scope: !3706)
!3720 = !DILocation(line: 990, column: 12, scope: !3721)
!3721 = distinct !DILexicalBlock(scope: !3706, file: !26, line: 988, column: 21)
!3722 = !DILocation(line: 990, column: 4, scope: !3721)
!3723 = !DILocation(line: 991, column: 4, scope: !3721)
!3724 = !DILocation(line: 993, column: 12, scope: !3721)
!3725 = !DILocation(line: 993, column: 17, scope: !3721)
!3726 = !DILocation(line: 993, column: 23, scope: !3721)
!3727 = !DILocation(line: 993, column: 4, scope: !3721)
!3728 = !DILocation(line: 994, column: 4, scope: !3721)
!3729 = !DILocation(line: 996, column: 16, scope: !3721)
!3730 = !DILocation(line: 996, column: 21, scope: !3721)
!3731 = !DILocation(line: 996, column: 27, scope: !3721)
!3732 = !DILocation(line: 996, column: 4, scope: !3721)
!3733 = !DILocation(line: 997, column: 4, scope: !3721)
!3734 = !DILocation(line: 999, column: 16, scope: !3721)
!3735 = !DILocation(line: 999, column: 21, scope: !3721)
!3736 = !DILocation(line: 999, column: 27, scope: !3721)
!3737 = !DILocation(line: 999, column: 4, scope: !3721)
!3738 = !DILocation(line: 1000, column: 4, scope: !3721)
!3739 = !DILocation(line: 1002, column: 15, scope: !3721)
!3740 = !DILocation(line: 1002, column: 20, scope: !3721)
!3741 = !DILocation(line: 1002, column: 4, scope: !3721)
!3742 = !DILocation(line: 1003, column: 4, scope: !3721)
!3743 = !DILocation(line: 1005, column: 16, scope: !3721)
!3744 = !DILocation(line: 1005, column: 21, scope: !3721)
!3745 = !DILocation(line: 1005, column: 4, scope: !3721)
!3746 = !DILocation(line: 1006, column: 4, scope: !3721)
!3747 = !DILocation(line: 1008, column: 4, scope: !3748)
!3748 = distinct !DILexicalBlock(scope: !3749, file: !26, line: 1008, column: 4)
!3749 = distinct !DILexicalBlock(scope: !3721, file: !26, line: 1008, column: 4)
!3750 = !DILocation(line: 1010, column: 1, scope: !3706)
!3751 = distinct !DISubprogram(name: "tag_is_valid", scope: !26, file: !26, line: 1247, type: !3752, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3752 = !DISubroutineType(types: !3753)
!3753 = !{!473, !241}
!3754 = !DILocalVariable(name: "tag", arg: 1, scope: !3751, file: !26, line: 1247, type: !241)
!3755 = !DILocation(line: 1247, column: 39, scope: !3751)
!3756 = !DILocation(line: 1249, column: 36, scope: !3751)
!3757 = !DILocation(line: 1249, column: 40, scope: !3751)
!3758 = !DILocation(line: 1249, column: 2, scope: !3751)
!3759 = distinct !DISubprogram(name: "sb_puts", scope: !26, file: !26, line: 90, type: !3760, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3760 = !DISubroutineType(types: !3761)
!3761 = !{null, !3154, !437}
!3762 = !DILocalVariable(name: "sb", arg: 1, scope: !3759, file: !26, line: 90, type: !3154)
!3763 = !DILocation(line: 90, column: 25, scope: !3759)
!3764 = !DILocalVariable(name: "str", arg: 2, scope: !3759, file: !26, line: 90, type: !437)
!3765 = !DILocation(line: 90, column: 41, scope: !3759)
!3766 = !DILocation(line: 92, column: 9, scope: !3759)
!3767 = !DILocation(line: 92, column: 13, scope: !3759)
!3768 = !DILocation(line: 92, column: 25, scope: !3759)
!3769 = !DILocation(line: 92, column: 18, scope: !3759)
!3770 = !DILocation(line: 92, column: 2, scope: !3759)
!3771 = !DILocation(line: 93, column: 1, scope: !3759)
!3772 = distinct !DISubprogram(name: "emit_string", scope: !26, file: !26, line: 1117, type: !3760, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3773 = !DILocalVariable(name: "out", arg: 1, scope: !3772, file: !26, line: 1117, type: !3154)
!3774 = !DILocation(line: 1117, column: 22, scope: !3772)
!3775 = !DILocalVariable(name: "str", arg: 2, scope: !3772, file: !26, line: 1117, type: !437)
!3776 = !DILocation(line: 1117, column: 39, scope: !3772)
!3777 = !DILocalVariable(name: "s", scope: !3772, file: !26, line: 1119, type: !437)
!3778 = !DILocation(line: 1119, column: 14, scope: !3772)
!3779 = !DILocation(line: 1119, column: 18, scope: !3772)
!3780 = !DILocalVariable(name: "b", scope: !3772, file: !26, line: 1120, type: !319)
!3781 = !DILocation(line: 1120, column: 8, scope: !3772)
!3782 = !DILocation(line: 1122, column: 2, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3784, file: !26, line: 1122, column: 2)
!3784 = distinct !DILexicalBlock(scope: !3772, file: !26, line: 1122, column: 2)
!3785 = !DILocation(line: 1122, column: 2, scope: !3784)
!3786 = !DILocation(line: 1128, column: 2, scope: !3772)
!3787 = !DILocation(line: 1128, column: 2, scope: !3788)
!3788 = distinct !DILexicalBlock(scope: !3789, file: !26, line: 1128, column: 2)
!3789 = distinct !DILexicalBlock(scope: !3772, file: !26, line: 1128, column: 2)
!3790 = !DILocation(line: 1128, column: 2, scope: !3789)
!3791 = !DILocation(line: 1129, column: 6, scope: !3772)
!3792 = !DILocation(line: 1129, column: 11, scope: !3772)
!3793 = !DILocation(line: 1129, column: 4, scope: !3772)
!3794 = !DILocation(line: 1131, column: 4, scope: !3772)
!3795 = !DILocation(line: 1131, column: 7, scope: !3772)
!3796 = !DILocation(line: 1132, column: 2, scope: !3772)
!3797 = !DILocation(line: 1132, column: 10, scope: !3772)
!3798 = !DILocation(line: 1132, column: 9, scope: !3772)
!3799 = !DILocation(line: 1132, column: 12, scope: !3772)
!3800 = !DILocalVariable(name: "c", scope: !3801, file: !26, line: 1133, type: !4)
!3801 = distinct !DILexicalBlock(scope: !3772, file: !26, line: 1132, column: 18)
!3802 = !DILocation(line: 1133, column: 8, scope: !3801)
!3803 = !DILocation(line: 1133, column: 14, scope: !3801)
!3804 = !DILocation(line: 1133, column: 12, scope: !3801)
!3805 = !DILocation(line: 1136, column: 11, scope: !3801)
!3806 = !DILocation(line: 1136, column: 3, scope: !3801)
!3807 = !DILocation(line: 1138, column: 7, scope: !3808)
!3808 = distinct !DILexicalBlock(scope: !3801, file: !26, line: 1136, column: 14)
!3809 = !DILocation(line: 1138, column: 10, scope: !3808)
!3810 = !DILocation(line: 1139, column: 7, scope: !3808)
!3811 = !DILocation(line: 1139, column: 10, scope: !3808)
!3812 = !DILocation(line: 1140, column: 5, scope: !3808)
!3813 = !DILocation(line: 1142, column: 7, scope: !3808)
!3814 = !DILocation(line: 1142, column: 10, scope: !3808)
!3815 = !DILocation(line: 1143, column: 7, scope: !3808)
!3816 = !DILocation(line: 1143, column: 10, scope: !3808)
!3817 = !DILocation(line: 1144, column: 5, scope: !3808)
!3818 = !DILocation(line: 1146, column: 7, scope: !3808)
!3819 = !DILocation(line: 1146, column: 10, scope: !3808)
!3820 = !DILocation(line: 1147, column: 7, scope: !3808)
!3821 = !DILocation(line: 1147, column: 10, scope: !3808)
!3822 = !DILocation(line: 1148, column: 5, scope: !3808)
!3823 = !DILocation(line: 1150, column: 7, scope: !3808)
!3824 = !DILocation(line: 1150, column: 10, scope: !3808)
!3825 = !DILocation(line: 1151, column: 7, scope: !3808)
!3826 = !DILocation(line: 1151, column: 10, scope: !3808)
!3827 = !DILocation(line: 1152, column: 5, scope: !3808)
!3828 = !DILocation(line: 1154, column: 7, scope: !3808)
!3829 = !DILocation(line: 1154, column: 10, scope: !3808)
!3830 = !DILocation(line: 1155, column: 7, scope: !3808)
!3831 = !DILocation(line: 1155, column: 10, scope: !3808)
!3832 = !DILocation(line: 1156, column: 5, scope: !3808)
!3833 = !DILocation(line: 1158, column: 7, scope: !3808)
!3834 = !DILocation(line: 1158, column: 10, scope: !3808)
!3835 = !DILocation(line: 1159, column: 7, scope: !3808)
!3836 = !DILocation(line: 1159, column: 10, scope: !3808)
!3837 = !DILocation(line: 1160, column: 5, scope: !3808)
!3838 = !DILocation(line: 1162, column: 7, scope: !3808)
!3839 = !DILocation(line: 1162, column: 10, scope: !3808)
!3840 = !DILocation(line: 1163, column: 7, scope: !3808)
!3841 = !DILocation(line: 1163, column: 10, scope: !3808)
!3842 = !DILocation(line: 1164, column: 5, scope: !3808)
!3843 = !DILocalVariable(name: "len", scope: !3844, file: !26, line: 1166, type: !463)
!3844 = distinct !DILexicalBlock(scope: !3808, file: !26, line: 1165, column: 13)
!3845 = !DILocation(line: 1166, column: 12, scope: !3844)
!3846 = !DILocation(line: 1168, column: 6, scope: !3844)
!3847 = !DILocation(line: 1169, column: 28, scope: !3844)
!3848 = !DILocation(line: 1169, column: 11, scope: !3844)
!3849 = !DILocation(line: 1169, column: 9, scope: !3844)
!3850 = !DILocation(line: 1171, column: 9, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3844, file: !26, line: 1171, column: 9)
!3852 = !DILocation(line: 1171, column: 13, scope: !3851)
!3853 = !DILocation(line: 1171, column: 9, scope: !3844)
!3854 = !DILocation(line: 1180, column: 6, scope: !3855)
!3855 = distinct !DILexicalBlock(scope: !3856, file: !26, line: 1180, column: 6)
!3856 = distinct !DILexicalBlock(scope: !3857, file: !26, line: 1180, column: 6)
!3857 = distinct !DILexicalBlock(scope: !3851, file: !26, line: 1171, column: 19)
!3858 = !DILocation(line: 1185, column: 16, scope: !3859)
!3859 = distinct !DILexicalBlock(scope: !3851, file: !26, line: 1185, column: 16)
!3860 = !DILocation(line: 1185, column: 18, scope: !3859)
!3861 = !DILocation(line: 1185, column: 16, scope: !3851)
!3862 = !DILocalVariable(name: "unicode", scope: !3863, file: !26, line: 1187, type: !1099)
!3863 = distinct !DILexicalBlock(scope: !3859, file: !26, line: 1185, column: 26)
!3864 = !DILocation(line: 1187, column: 15, scope: !3863)
!3865 = !DILocation(line: 1189, column: 26, scope: !3863)
!3866 = !DILocation(line: 1189, column: 11, scope: !3863)
!3867 = !DILocation(line: 1189, column: 8, scope: !3863)
!3868 = !DILocation(line: 1191, column: 10, scope: !3869)
!3869 = distinct !DILexicalBlock(scope: !3863, file: !26, line: 1191, column: 10)
!3870 = !DILocation(line: 1191, column: 18, scope: !3869)
!3871 = !DILocation(line: 1191, column: 10, scope: !3863)
!3872 = !DILocation(line: 1192, column: 9, scope: !3873)
!3873 = distinct !DILexicalBlock(scope: !3869, file: !26, line: 1191, column: 29)
!3874 = !DILocation(line: 1192, column: 12, scope: !3873)
!3875 = !DILocation(line: 1193, column: 9, scope: !3873)
!3876 = !DILocation(line: 1193, column: 12, scope: !3873)
!3877 = !DILocation(line: 1194, column: 24, scope: !3873)
!3878 = !DILocation(line: 1194, column: 37, scope: !3873)
!3879 = !DILocation(line: 1194, column: 27, scope: !3873)
!3880 = !DILocation(line: 1194, column: 12, scope: !3873)
!3881 = !DILocation(line: 1194, column: 9, scope: !3873)
!3882 = !DILocation(line: 1195, column: 6, scope: !3873)
!3883 = !DILocalVariable(name: "uc", scope: !3884, file: !26, line: 1197, type: !1096)
!3884 = distinct !DILexicalBlock(scope: !3869, file: !26, line: 1195, column: 13)
!3885 = !DILocation(line: 1197, column: 16, scope: !3884)
!3886 = !DILocalVariable(name: "lc", scope: !3884, file: !26, line: 1197, type: !1096)
!3887 = !DILocation(line: 1197, column: 20, scope: !3884)
!3888 = !DILocation(line: 1198, column: 7, scope: !3889)
!3889 = distinct !DILexicalBlock(scope: !3890, file: !26, line: 1198, column: 7)
!3890 = distinct !DILexicalBlock(scope: !3884, file: !26, line: 1198, column: 7)
!3891 = !DILocation(line: 1198, column: 7, scope: !3890)
!3892 = !DILocation(line: 1199, column: 25, scope: !3884)
!3893 = !DILocation(line: 1199, column: 7, scope: !3884)
!3894 = !DILocation(line: 1200, column: 9, scope: !3884)
!3895 = !DILocation(line: 1200, column: 12, scope: !3884)
!3896 = !DILocation(line: 1201, column: 9, scope: !3884)
!3897 = !DILocation(line: 1201, column: 12, scope: !3884)
!3898 = !DILocation(line: 1202, column: 24, scope: !3884)
!3899 = !DILocation(line: 1202, column: 27, scope: !3884)
!3900 = !DILocation(line: 1202, column: 12, scope: !3884)
!3901 = !DILocation(line: 1202, column: 9, scope: !3884)
!3902 = !DILocation(line: 1203, column: 9, scope: !3884)
!3903 = !DILocation(line: 1203, column: 12, scope: !3884)
!3904 = !DILocation(line: 1204, column: 9, scope: !3884)
!3905 = !DILocation(line: 1204, column: 12, scope: !3884)
!3906 = !DILocation(line: 1205, column: 24, scope: !3884)
!3907 = !DILocation(line: 1205, column: 27, scope: !3884)
!3908 = !DILocation(line: 1205, column: 12, scope: !3884)
!3909 = !DILocation(line: 1205, column: 9, scope: !3884)
!3910 = !DILocation(line: 1207, column: 5, scope: !3863)
!3911 = !DILocation(line: 1209, column: 6, scope: !3912)
!3912 = distinct !DILexicalBlock(scope: !3859, file: !26, line: 1207, column: 12)
!3913 = !DILocation(line: 1209, column: 16, scope: !3912)
!3914 = !DILocation(line: 1210, column: 16, scope: !3912)
!3915 = !DILocation(line: 1210, column: 14, scope: !3912)
!3916 = !DILocation(line: 1210, column: 9, scope: !3912)
!3917 = !DILocation(line: 1210, column: 12, scope: !3912)
!3918 = distinct !{!3918, !3911, !3914, !1257}
!3919 = !DILocation(line: 1213, column: 5, scope: !3844)
!3920 = !DILocation(line: 1221, column: 14, scope: !3801)
!3921 = !DILocation(line: 1221, column: 3, scope: !3801)
!3922 = !DILocation(line: 1221, column: 8, scope: !3801)
!3923 = !DILocation(line: 1221, column: 12, scope: !3801)
!3924 = !DILocation(line: 1222, column: 3, scope: !3801)
!3925 = !DILocation(line: 1222, column: 3, scope: !3926)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !26, line: 1222, column: 3)
!3927 = distinct !DILexicalBlock(scope: !3801, file: !26, line: 1222, column: 3)
!3928 = !DILocation(line: 1222, column: 3, scope: !3927)
!3929 = !DILocation(line: 1223, column: 7, scope: !3801)
!3930 = !DILocation(line: 1223, column: 12, scope: !3801)
!3931 = !DILocation(line: 1223, column: 5, scope: !3801)
!3932 = distinct !{!3932, !3796, !3933, !1257}
!3933 = !DILocation(line: 1224, column: 2, scope: !3772)
!3934 = !DILocation(line: 1225, column: 4, scope: !3772)
!3935 = !DILocation(line: 1225, column: 7, scope: !3772)
!3936 = !DILocation(line: 1227, column: 13, scope: !3772)
!3937 = !DILocation(line: 1227, column: 2, scope: !3772)
!3938 = !DILocation(line: 1227, column: 7, scope: !3772)
!3939 = !DILocation(line: 1227, column: 11, scope: !3772)
!3940 = !DILocation(line: 1228, column: 1, scope: !3772)
!3941 = distinct !DISubprogram(name: "emit_number", scope: !26, file: !26, line: 1230, type: !3942, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3942 = !DISubroutineType(types: !3943)
!3943 = !{null, !3154, !1090}
!3944 = !DILocalVariable(name: "out", arg: 1, scope: !3941, file: !26, line: 1230, type: !3154)
!3945 = !DILocation(line: 1230, column: 29, scope: !3941)
!3946 = !DILocalVariable(name: "num", arg: 2, scope: !3941, file: !26, line: 1230, type: !1090)
!3947 = !DILocation(line: 1230, column: 41, scope: !3941)
!3948 = !DILocalVariable(name: "buf", scope: !3941, file: !26, line: 1238, type: !3949)
!3949 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !3950)
!3950 = !{!3951}
!3951 = !DISubrange(count: 64)
!3952 = !DILocation(line: 1238, column: 7, scope: !3941)
!3953 = !DILocation(line: 1239, column: 10, scope: !3941)
!3954 = !DILocation(line: 1239, column: 24, scope: !3941)
!3955 = !DILocation(line: 1239, column: 2, scope: !3941)
!3956 = !DILocation(line: 1241, column: 22, scope: !3957)
!3957 = distinct !DILexicalBlock(scope: !3941, file: !26, line: 1241, column: 6)
!3958 = !DILocation(line: 1241, column: 6, scope: !3957)
!3959 = !DILocation(line: 1241, column: 6, scope: !3941)
!3960 = !DILocation(line: 1242, column: 11, scope: !3957)
!3961 = !DILocation(line: 1242, column: 16, scope: !3957)
!3962 = !DILocation(line: 1242, column: 3, scope: !3957)
!3963 = !DILocation(line: 1244, column: 11, scope: !3957)
!3964 = !DILocation(line: 1244, column: 3, scope: !3957)
!3965 = !DILocation(line: 1245, column: 1, scope: !3941)
!3966 = distinct !DISubprogram(name: "emit_array", scope: !26, file: !26, line: 1039, type: !3707, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!3967 = !DILocalVariable(name: "out", arg: 1, scope: !3966, file: !26, line: 1039, type: !3154)
!3968 = !DILocation(line: 1039, column: 28, scope: !3966)
!3969 = !DILocalVariable(name: "array", arg: 2, scope: !3966, file: !26, line: 1039, type: !3625)
!3970 = !DILocation(line: 1039, column: 49, scope: !3966)
!3971 = !DILocalVariable(name: "element", scope: !3966, file: !26, line: 1041, type: !3625)
!3972 = !DILocation(line: 1041, column: 18, scope: !3966)
!3973 = !DILocation(line: 1043, column: 2, scope: !3966)
!3974 = !DILocation(line: 1043, column: 2, scope: !3975)
!3975 = distinct !DILexicalBlock(scope: !3976, file: !26, line: 1043, column: 2)
!3976 = distinct !DILexicalBlock(scope: !3966, file: !26, line: 1043, column: 2)
!3977 = !DILocation(line: 1043, column: 2, scope: !3976)
!3978 = !DILocation(line: 1044, column: 2, scope: !3979)
!3979 = distinct !DILexicalBlock(scope: !3966, file: !26, line: 1044, column: 2)
!3980 = !DILocation(line: 1044, column: 2, scope: !3981)
!3981 = distinct !DILexicalBlock(scope: !3979, file: !26, line: 1044, column: 2)
!3982 = !DILocation(line: 1045, column: 14, scope: !3983)
!3983 = distinct !DILexicalBlock(scope: !3981, file: !26, line: 1044, column: 31)
!3984 = !DILocation(line: 1045, column: 19, scope: !3983)
!3985 = !DILocation(line: 1045, column: 3, scope: !3983)
!3986 = !DILocation(line: 1046, column: 7, scope: !3987)
!3987 = distinct !DILexicalBlock(scope: !3983, file: !26, line: 1046, column: 7)
!3988 = !DILocation(line: 1046, column: 16, scope: !3987)
!3989 = !DILocation(line: 1046, column: 21, scope: !3987)
!3990 = !DILocation(line: 1046, column: 7, scope: !3983)
!3991 = !DILocation(line: 1047, column: 4, scope: !3987)
!3992 = !DILocation(line: 1047, column: 4, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3994, file: !26, line: 1047, column: 4)
!3994 = distinct !DILexicalBlock(scope: !3987, file: !26, line: 1047, column: 4)
!3995 = !DILocation(line: 1047, column: 4, scope: !3994)
!3996 = !DILocation(line: 1048, column: 2, scope: !3983)
!3997 = distinct !{!3997, !3978, !3998, !1257}
!3998 = !DILocation(line: 1048, column: 2, scope: !3979)
!3999 = !DILocation(line: 1049, column: 2, scope: !3966)
!4000 = !DILocation(line: 1049, column: 2, scope: !4001)
!4001 = distinct !DILexicalBlock(scope: !4002, file: !26, line: 1049, column: 2)
!4002 = distinct !DILexicalBlock(scope: !3966, file: !26, line: 1049, column: 2)
!4003 = !DILocation(line: 1049, column: 2, scope: !4002)
!4004 = !DILocation(line: 1050, column: 1, scope: !3966)
!4005 = distinct !DISubprogram(name: "emit_object", scope: !26, file: !26, line: 1076, type: !3707, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4006 = !DILocalVariable(name: "out", arg: 1, scope: !4005, file: !26, line: 1076, type: !3154)
!4007 = !DILocation(line: 1076, column: 29, scope: !4005)
!4008 = !DILocalVariable(name: "object", arg: 2, scope: !4005, file: !26, line: 1076, type: !3625)
!4009 = !DILocation(line: 1076, column: 50, scope: !4005)
!4010 = !DILocalVariable(name: "member", scope: !4005, file: !26, line: 1078, type: !3625)
!4011 = !DILocation(line: 1078, column: 18, scope: !4005)
!4012 = !DILocation(line: 1080, column: 2, scope: !4005)
!4013 = !DILocation(line: 1080, column: 2, scope: !4014)
!4014 = distinct !DILexicalBlock(scope: !4015, file: !26, line: 1080, column: 2)
!4015 = distinct !DILexicalBlock(scope: !4005, file: !26, line: 1080, column: 2)
!4016 = !DILocation(line: 1080, column: 2, scope: !4015)
!4017 = !DILocation(line: 1081, column: 2, scope: !4018)
!4018 = distinct !DILexicalBlock(scope: !4005, file: !26, line: 1081, column: 2)
!4019 = !DILocation(line: 1081, column: 2, scope: !4020)
!4020 = distinct !DILexicalBlock(scope: !4018, file: !26, line: 1081, column: 2)
!4021 = !DILocation(line: 1082, column: 15, scope: !4022)
!4022 = distinct !DILexicalBlock(scope: !4020, file: !26, line: 1081, column: 31)
!4023 = !DILocation(line: 1082, column: 20, scope: !4022)
!4024 = !DILocation(line: 1082, column: 28, scope: !4022)
!4025 = !DILocation(line: 1082, column: 3, scope: !4022)
!4026 = !DILocation(line: 1083, column: 3, scope: !4022)
!4027 = !DILocation(line: 1083, column: 3, scope: !4028)
!4028 = distinct !DILexicalBlock(scope: !4029, file: !26, line: 1083, column: 3)
!4029 = distinct !DILexicalBlock(scope: !4022, file: !26, line: 1083, column: 3)
!4030 = !DILocation(line: 1083, column: 3, scope: !4029)
!4031 = !DILocation(line: 1084, column: 14, scope: !4022)
!4032 = !DILocation(line: 1084, column: 19, scope: !4022)
!4033 = !DILocation(line: 1084, column: 3, scope: !4022)
!4034 = !DILocation(line: 1085, column: 7, scope: !4035)
!4035 = distinct !DILexicalBlock(scope: !4022, file: !26, line: 1085, column: 7)
!4036 = !DILocation(line: 1085, column: 15, scope: !4035)
!4037 = !DILocation(line: 1085, column: 20, scope: !4035)
!4038 = !DILocation(line: 1085, column: 7, scope: !4022)
!4039 = !DILocation(line: 1086, column: 4, scope: !4035)
!4040 = !DILocation(line: 1086, column: 4, scope: !4041)
!4041 = distinct !DILexicalBlock(scope: !4042, file: !26, line: 1086, column: 4)
!4042 = distinct !DILexicalBlock(scope: !4035, file: !26, line: 1086, column: 4)
!4043 = !DILocation(line: 1086, column: 4, scope: !4042)
!4044 = !DILocation(line: 1087, column: 2, scope: !4022)
!4045 = distinct !{!4045, !4017, !4046, !1257}
!4046 = !DILocation(line: 1087, column: 2, scope: !4018)
!4047 = !DILocation(line: 1088, column: 2, scope: !4005)
!4048 = !DILocation(line: 1088, column: 2, scope: !4049)
!4049 = distinct !DILexicalBlock(scope: !4050, file: !26, line: 1088, column: 2)
!4050 = distinct !DILexicalBlock(scope: !4005, file: !26, line: 1088, column: 2)
!4051 = !DILocation(line: 1088, column: 2, scope: !4050)
!4052 = !DILocation(line: 1089, column: 1, scope: !4005)
!4053 = distinct !DISubprogram(name: "json_first_child", scope: !26, file: !26, line: 490, type: !4054, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4054 = !DISubroutineType(types: !4055)
!4055 = !{!1074, !3625}
!4056 = !DILocalVariable(name: "node", arg: 1, scope: !4053, file: !26, line: 490, type: !3625)
!4057 = !DILocation(line: 490, column: 44, scope: !4053)
!4058 = !DILocation(line: 492, column: 6, scope: !4059)
!4059 = distinct !DILexicalBlock(scope: !4053, file: !26, line: 492, column: 6)
!4060 = !DILocation(line: 492, column: 11, scope: !4059)
!4061 = !DILocation(line: 492, column: 19, scope: !4059)
!4062 = !DILocation(line: 492, column: 23, scope: !4059)
!4063 = !DILocation(line: 492, column: 29, scope: !4059)
!4064 = !DILocation(line: 492, column: 33, scope: !4059)
!4065 = !DILocation(line: 492, column: 47, scope: !4059)
!4066 = !DILocation(line: 492, column: 50, scope: !4059)
!4067 = !DILocation(line: 492, column: 56, scope: !4059)
!4068 = !DILocation(line: 492, column: 60, scope: !4059)
!4069 = !DILocation(line: 492, column: 6, scope: !4053)
!4070 = !DILocation(line: 493, column: 10, scope: !4059)
!4071 = !DILocation(line: 493, column: 16, scope: !4059)
!4072 = !DILocation(line: 493, column: 25, scope: !4059)
!4073 = !DILocation(line: 493, column: 3, scope: !4059)
!4074 = !DILocation(line: 494, column: 2, scope: !4053)
!4075 = !DILocation(line: 495, column: 1, scope: !4053)
!4076 = distinct !DISubprogram(name: "number_is_valid", scope: !26, file: !26, line: 1252, type: !4077, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4077 = !DISubroutineType(types: !4078)
!4078 = !{!473, !437}
!4079 = !DILocalVariable(name: "num", arg: 1, scope: !4076, file: !26, line: 1252, type: !437)
!4080 = !DILocation(line: 1252, column: 41, scope: !4076)
!4081 = !DILocation(line: 1254, column: 10, scope: !4076)
!4082 = !DILocation(line: 1254, column: 35, scope: !4076)
!4083 = !DILocation(line: 1254, column: 39, scope: !4076)
!4084 = !DILocation(line: 1254, column: 38, scope: !4076)
!4085 = !DILocation(line: 1254, column: 43, scope: !4076)
!4086 = !DILocation(line: 0, scope: !4076)
!4087 = !DILocation(line: 1254, column: 2, scope: !4076)
!4088 = distinct !DISubprogram(name: "utf8_validate", scope: !26, file: !26, line: 204, type: !4077, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4089 = !DILocalVariable(name: "s", arg: 1, scope: !4088, file: !26, line: 204, type: !437)
!4090 = !DILocation(line: 204, column: 39, scope: !4088)
!4091 = !DILocalVariable(name: "len", scope: !4088, file: !26, line: 206, type: !463)
!4092 = !DILocation(line: 206, column: 9, scope: !4088)
!4093 = !DILocation(line: 208, column: 2, scope: !4088)
!4094 = !DILocation(line: 208, column: 10, scope: !4095)
!4095 = distinct !DILexicalBlock(scope: !4096, file: !26, line: 208, column: 2)
!4096 = distinct !DILexicalBlock(scope: !4088, file: !26, line: 208, column: 2)
!4097 = !DILocation(line: 208, column: 9, scope: !4095)
!4098 = !DILocation(line: 208, column: 12, scope: !4095)
!4099 = !DILocation(line: 208, column: 2, scope: !4096)
!4100 = !DILocation(line: 209, column: 26, scope: !4101)
!4101 = distinct !DILexicalBlock(scope: !4095, file: !26, line: 208, column: 28)
!4102 = !DILocation(line: 209, column: 9, scope: !4101)
!4103 = !DILocation(line: 209, column: 7, scope: !4101)
!4104 = !DILocation(line: 210, column: 7, scope: !4105)
!4105 = distinct !DILexicalBlock(scope: !4101, file: !26, line: 210, column: 7)
!4106 = !DILocation(line: 210, column: 11, scope: !4105)
!4107 = !DILocation(line: 210, column: 7, scope: !4101)
!4108 = !DILocation(line: 211, column: 4, scope: !4105)
!4109 = !DILocation(line: 212, column: 2, scope: !4101)
!4110 = !DILocation(line: 208, column: 23, scope: !4095)
!4111 = !DILocation(line: 208, column: 20, scope: !4095)
!4112 = !DILocation(line: 208, column: 2, scope: !4095)
!4113 = distinct !{!4113, !4099, !4114, !1257}
!4114 = !DILocation(line: 212, column: 2, scope: !4096)
!4115 = !DILocation(line: 214, column: 2, scope: !4088)
!4116 = !DILocation(line: 215, column: 1, scope: !4088)
!4117 = distinct !DISubprogram(name: "utf8_read_char", scope: !26, file: !26, line: 224, type: !4118, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4118 = !DISubroutineType(types: !4119)
!4119 = !{!235, !437, !3339}
!4120 = !DILocalVariable(name: "s", arg: 1, scope: !4117, file: !26, line: 224, type: !437)
!4121 = !DILocation(line: 224, column: 39, scope: !4117)
!4122 = !DILocalVariable(name: "out", arg: 2, scope: !4117, file: !26, line: 224, type: !3339)
!4123 = !DILocation(line: 224, column: 51, scope: !4117)
!4124 = !DILocalVariable(name: "c", scope: !4117, file: !26, line: 226, type: !1101)
!4125 = !DILocation(line: 226, column: 23, scope: !4117)
!4126 = !DILocation(line: 226, column: 50, scope: !4117)
!4127 = !DILocation(line: 228, column: 2, scope: !4128)
!4128 = distinct !DILexicalBlock(scope: !4129, file: !26, line: 228, column: 2)
!4129 = distinct !DILexicalBlock(scope: !4117, file: !26, line: 228, column: 2)
!4130 = !DILocation(line: 228, column: 2, scope: !4129)
!4131 = !DILocation(line: 230, column: 6, scope: !4132)
!4132 = distinct !DILexicalBlock(scope: !4117, file: !26, line: 230, column: 6)
!4133 = !DILocation(line: 230, column: 11, scope: !4132)
!4134 = !DILocation(line: 230, column: 6, scope: !4117)
!4135 = !DILocation(line: 232, column: 10, scope: !4136)
!4136 = distinct !DILexicalBlock(scope: !4132, file: !26, line: 230, column: 20)
!4137 = !DILocation(line: 232, column: 4, scope: !4136)
!4138 = !DILocation(line: 232, column: 8, scope: !4136)
!4139 = !DILocation(line: 233, column: 3, scope: !4136)
!4140 = !DILocation(line: 234, column: 13, scope: !4141)
!4141 = distinct !DILexicalBlock(scope: !4132, file: !26, line: 234, column: 13)
!4142 = !DILocation(line: 234, column: 18, scope: !4141)
!4143 = !DILocation(line: 234, column: 13, scope: !4132)
!4144 = !DILocation(line: 236, column: 20, scope: !4145)
!4145 = distinct !DILexicalBlock(scope: !4141, file: !26, line: 234, column: 27)
!4146 = !DILocation(line: 236, column: 11, scope: !4145)
!4147 = !DILocation(line: 236, column: 25, scope: !4145)
!4148 = !DILocation(line: 236, column: 33, scope: !4145)
!4149 = !DILocation(line: 237, column: 20, scope: !4145)
!4150 = !DILocation(line: 237, column: 11, scope: !4145)
!4151 = !DILocation(line: 237, column: 25, scope: !4145)
!4152 = !DILocation(line: 236, column: 38, scope: !4145)
!4153 = !DILocation(line: 236, column: 4, scope: !4145)
!4154 = !DILocation(line: 236, column: 8, scope: !4145)
!4155 = !DILocation(line: 238, column: 3, scope: !4145)
!4156 = !DILocation(line: 239, column: 13, scope: !4157)
!4157 = distinct !DILexicalBlock(scope: !4141, file: !26, line: 239, column: 13)
!4158 = !DILocation(line: 239, column: 18, scope: !4157)
!4159 = !DILocation(line: 239, column: 13, scope: !4141)
!4160 = !DILocation(line: 241, column: 20, scope: !4161)
!4161 = distinct !DILexicalBlock(scope: !4157, file: !26, line: 239, column: 27)
!4162 = !DILocation(line: 241, column: 11, scope: !4161)
!4163 = !DILocation(line: 241, column: 25, scope: !4161)
!4164 = !DILocation(line: 241, column: 33, scope: !4161)
!4165 = !DILocation(line: 242, column: 20, scope: !4161)
!4166 = !DILocation(line: 242, column: 11, scope: !4161)
!4167 = !DILocation(line: 242, column: 25, scope: !4161)
!4168 = !DILocation(line: 242, column: 33, scope: !4161)
!4169 = !DILocation(line: 241, column: 39, scope: !4161)
!4170 = !DILocation(line: 243, column: 20, scope: !4161)
!4171 = !DILocation(line: 243, column: 11, scope: !4161)
!4172 = !DILocation(line: 243, column: 25, scope: !4161)
!4173 = !DILocation(line: 242, column: 39, scope: !4161)
!4174 = !DILocation(line: 241, column: 4, scope: !4161)
!4175 = !DILocation(line: 241, column: 8, scope: !4161)
!4176 = !DILocation(line: 244, column: 3, scope: !4161)
!4177 = !DILocation(line: 247, column: 20, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !4157, file: !26, line: 245, column: 9)
!4179 = !DILocation(line: 247, column: 11, scope: !4178)
!4180 = !DILocation(line: 247, column: 25, scope: !4178)
!4181 = !DILocation(line: 247, column: 33, scope: !4178)
!4182 = !DILocation(line: 248, column: 20, scope: !4178)
!4183 = !DILocation(line: 248, column: 11, scope: !4178)
!4184 = !DILocation(line: 248, column: 25, scope: !4178)
!4185 = !DILocation(line: 248, column: 33, scope: !4178)
!4186 = !DILocation(line: 247, column: 39, scope: !4178)
!4187 = !DILocation(line: 249, column: 20, scope: !4178)
!4188 = !DILocation(line: 249, column: 11, scope: !4178)
!4189 = !DILocation(line: 249, column: 25, scope: !4178)
!4190 = !DILocation(line: 249, column: 33, scope: !4178)
!4191 = !DILocation(line: 248, column: 39, scope: !4178)
!4192 = !DILocation(line: 250, column: 20, scope: !4178)
!4193 = !DILocation(line: 250, column: 11, scope: !4178)
!4194 = !DILocation(line: 250, column: 25, scope: !4178)
!4195 = !DILocation(line: 249, column: 39, scope: !4178)
!4196 = !DILocation(line: 247, column: 4, scope: !4178)
!4197 = !DILocation(line: 247, column: 8, scope: !4178)
!4198 = !DILocation(line: 251, column: 3, scope: !4178)
!4199 = !DILocation(line: 253, column: 1, scope: !4117)
!4200 = distinct !DISubprogram(name: "write_hex16", scope: !26, file: !26, line: 1304, type: !4201, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4201 = !DISubroutineType(types: !4202)
!4202 = !{!235, !319, !1096}
!4203 = !DILocalVariable(name: "out", arg: 1, scope: !4200, file: !26, line: 1304, type: !319)
!4204 = !DILocation(line: 1304, column: 30, scope: !4200)
!4205 = !DILocalVariable(name: "val", arg: 2, scope: !4200, file: !26, line: 1304, type: !1096)
!4206 = !DILocation(line: 1304, column: 44, scope: !4200)
!4207 = !DILocalVariable(name: "hex", scope: !4200, file: !26, line: 1306, type: !437)
!4208 = !DILocation(line: 1306, column: 14, scope: !4200)
!4209 = !DILocation(line: 1308, column: 11, scope: !4200)
!4210 = !DILocation(line: 1308, column: 16, scope: !4200)
!4211 = !DILocation(line: 1308, column: 20, scope: !4200)
!4212 = !DILocation(line: 1308, column: 27, scope: !4200)
!4213 = !DILocation(line: 1308, column: 6, scope: !4200)
!4214 = !DILocation(line: 1308, column: 9, scope: !4200)
!4215 = !DILocation(line: 1309, column: 11, scope: !4200)
!4216 = !DILocation(line: 1309, column: 16, scope: !4200)
!4217 = !DILocation(line: 1309, column: 20, scope: !4200)
!4218 = !DILocation(line: 1309, column: 27, scope: !4200)
!4219 = !DILocation(line: 1309, column: 6, scope: !4200)
!4220 = !DILocation(line: 1309, column: 9, scope: !4200)
!4221 = !DILocation(line: 1310, column: 11, scope: !4200)
!4222 = !DILocation(line: 1310, column: 16, scope: !4200)
!4223 = !DILocation(line: 1310, column: 20, scope: !4200)
!4224 = !DILocation(line: 1310, column: 27, scope: !4200)
!4225 = !DILocation(line: 1310, column: 6, scope: !4200)
!4226 = !DILocation(line: 1310, column: 9, scope: !4200)
!4227 = !DILocation(line: 1311, column: 11, scope: !4200)
!4228 = !DILocation(line: 1311, column: 16, scope: !4200)
!4229 = !DILocation(line: 1311, column: 27, scope: !4200)
!4230 = !DILocation(line: 1311, column: 6, scope: !4200)
!4231 = !DILocation(line: 1311, column: 9, scope: !4200)
!4232 = !DILocation(line: 1313, column: 2, scope: !4200)
!4233 = distinct !DISubprogram(name: "to_surrogate_pair", scope: !26, file: !26, line: 315, type: !4234, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4234 = !DISubroutineType(types: !4235)
!4235 = !{null, !1098, !3247, !3247}
!4236 = !DILocalVariable(name: "unicode", arg: 1, scope: !4233, file: !26, line: 315, type: !1098)
!4237 = !DILocation(line: 315, column: 39, scope: !4233)
!4238 = !DILocalVariable(name: "uc", arg: 2, scope: !4233, file: !26, line: 315, type: !3247)
!4239 = !DILocation(line: 315, column: 58, scope: !4233)
!4240 = !DILocalVariable(name: "lc", arg: 3, scope: !4233, file: !26, line: 315, type: !3247)
!4241 = !DILocation(line: 315, column: 72, scope: !4233)
!4242 = !DILocalVariable(name: "n", scope: !4233, file: !26, line: 317, type: !1098)
!4243 = !DILocation(line: 317, column: 10, scope: !4233)
!4244 = !DILocation(line: 319, column: 2, scope: !4245)
!4245 = distinct !DILexicalBlock(scope: !4246, file: !26, line: 319, column: 2)
!4246 = distinct !DILexicalBlock(scope: !4233, file: !26, line: 319, column: 2)
!4247 = !DILocation(line: 319, column: 2, scope: !4246)
!4248 = !DILocation(line: 321, column: 6, scope: !4233)
!4249 = !DILocation(line: 321, column: 14, scope: !4233)
!4250 = !DILocation(line: 321, column: 4, scope: !4233)
!4251 = !DILocation(line: 322, column: 21, scope: !4233)
!4252 = !DILocation(line: 322, column: 23, scope: !4233)
!4253 = !DILocation(line: 322, column: 30, scope: !4233)
!4254 = !DILocation(line: 322, column: 39, scope: !4233)
!4255 = !DILocation(line: 322, column: 8, scope: !4233)
!4256 = !DILocation(line: 322, column: 3, scope: !4233)
!4257 = !DILocation(line: 322, column: 6, scope: !4233)
!4258 = !DILocation(line: 323, column: 20, scope: !4233)
!4259 = !DILocation(line: 323, column: 22, scope: !4233)
!4260 = !DILocation(line: 323, column: 31, scope: !4233)
!4261 = !DILocation(line: 323, column: 8, scope: !4233)
!4262 = !DILocation(line: 323, column: 3, scope: !4233)
!4263 = !DILocation(line: 323, column: 6, scope: !4233)
!4264 = !DILocation(line: 324, column: 1, scope: !4233)
!4265 = distinct !DISubprogram(name: "sb_put", scope: !26, file: !26, line: 77, type: !4266, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4266 = !DISubroutineType(types: !4267)
!4267 = !{null, !3154, !437, !463}
!4268 = !DILocalVariable(name: "sb", arg: 1, scope: !4265, file: !26, line: 77, type: !3154)
!4269 = !DILocation(line: 77, column: 24, scope: !4265)
!4270 = !DILocalVariable(name: "bytes", arg: 2, scope: !4265, file: !26, line: 77, type: !437)
!4271 = !DILocation(line: 77, column: 40, scope: !4265)
!4272 = !DILocalVariable(name: "count", arg: 3, scope: !4265, file: !26, line: 77, type: !463)
!4273 = !DILocation(line: 77, column: 54, scope: !4265)
!4274 = !DILocation(line: 79, column: 2, scope: !4265)
!4275 = !DILocation(line: 79, column: 2, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !26, line: 79, column: 2)
!4277 = distinct !DILexicalBlock(scope: !4265, file: !26, line: 79, column: 2)
!4278 = !DILocation(line: 79, column: 2, scope: !4277)
!4279 = !DILocation(line: 80, column: 9, scope: !4265)
!4280 = !DILocation(line: 80, column: 13, scope: !4265)
!4281 = !DILocation(line: 80, column: 18, scope: !4265)
!4282 = !DILocation(line: 80, column: 25, scope: !4265)
!4283 = !DILocation(line: 80, column: 2, scope: !4265)
!4284 = !DILocation(line: 81, column: 13, scope: !4265)
!4285 = !DILocation(line: 81, column: 2, scope: !4265)
!4286 = !DILocation(line: 81, column: 6, scope: !4265)
!4287 = !DILocation(line: 81, column: 10, scope: !4265)
!4288 = !DILocation(line: 82, column: 1, scope: !4265)
!4289 = distinct !DISubprogram(name: "emit_array_indented", scope: !26, file: !26, line: 1052, type: !3654, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4290 = !DILocalVariable(name: "out", arg: 1, scope: !4289, file: !26, line: 1052, type: !3154)
!4291 = !DILocation(line: 1052, column: 37, scope: !4289)
!4292 = !DILocalVariable(name: "array", arg: 2, scope: !4289, file: !26, line: 1052, type: !3625)
!4293 = !DILocation(line: 1052, column: 58, scope: !4289)
!4294 = !DILocalVariable(name: "space", arg: 3, scope: !4289, file: !26, line: 1052, type: !437)
!4295 = !DILocation(line: 1052, column: 77, scope: !4289)
!4296 = !DILocalVariable(name: "indent_level", arg: 4, scope: !4289, file: !26, line: 1052, type: !235)
!4297 = !DILocation(line: 1052, column: 88, scope: !4289)
!4298 = !DILocalVariable(name: "element", scope: !4289, file: !26, line: 1054, type: !3625)
!4299 = !DILocation(line: 1054, column: 18, scope: !4289)
!4300 = !DILocation(line: 1054, column: 28, scope: !4289)
!4301 = !DILocation(line: 1054, column: 35, scope: !4289)
!4302 = !DILocation(line: 1054, column: 44, scope: !4289)
!4303 = !DILocalVariable(name: "i", scope: !4289, file: !26, line: 1055, type: !235)
!4304 = !DILocation(line: 1055, column: 6, scope: !4289)
!4305 = !DILocation(line: 1057, column: 6, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4289, file: !26, line: 1057, column: 6)
!4307 = !DILocation(line: 1057, column: 14, scope: !4306)
!4308 = !DILocation(line: 1057, column: 6, scope: !4289)
!4309 = !DILocation(line: 1058, column: 11, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4306, file: !26, line: 1057, column: 23)
!4311 = !DILocation(line: 1058, column: 3, scope: !4310)
!4312 = !DILocation(line: 1059, column: 3, scope: !4310)
!4313 = !DILocation(line: 1062, column: 10, scope: !4289)
!4314 = !DILocation(line: 1062, column: 2, scope: !4289)
!4315 = !DILocation(line: 1063, column: 2, scope: !4289)
!4316 = !DILocation(line: 1063, column: 9, scope: !4289)
!4317 = !DILocation(line: 1063, column: 17, scope: !4289)
!4318 = !DILocation(line: 1064, column: 10, scope: !4319)
!4319 = distinct !DILexicalBlock(scope: !4320, file: !26, line: 1064, column: 3)
!4320 = distinct !DILexicalBlock(scope: !4289, file: !26, line: 1063, column: 26)
!4321 = !DILocation(line: 1064, column: 8, scope: !4319)
!4322 = !DILocation(line: 1064, column: 15, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4319, file: !26, line: 1064, column: 3)
!4324 = !DILocation(line: 1064, column: 19, scope: !4323)
!4325 = !DILocation(line: 1064, column: 32, scope: !4323)
!4326 = !DILocation(line: 1064, column: 17, scope: !4323)
!4327 = !DILocation(line: 1064, column: 3, scope: !4319)
!4328 = !DILocation(line: 1065, column: 12, scope: !4323)
!4329 = !DILocation(line: 1065, column: 17, scope: !4323)
!4330 = !DILocation(line: 1065, column: 4, scope: !4323)
!4331 = !DILocation(line: 1064, column: 38, scope: !4323)
!4332 = !DILocation(line: 1064, column: 3, scope: !4323)
!4333 = distinct !{!4333, !4327, !4334, !1257}
!4334 = !DILocation(line: 1065, column: 22, scope: !4319)
!4335 = !DILocation(line: 1066, column: 23, scope: !4320)
!4336 = !DILocation(line: 1066, column: 28, scope: !4320)
!4337 = !DILocation(line: 1066, column: 37, scope: !4320)
!4338 = !DILocation(line: 1066, column: 44, scope: !4320)
!4339 = !DILocation(line: 1066, column: 57, scope: !4320)
!4340 = !DILocation(line: 1066, column: 3, scope: !4320)
!4341 = !DILocation(line: 1068, column: 13, scope: !4320)
!4342 = !DILocation(line: 1068, column: 22, scope: !4320)
!4343 = !DILocation(line: 1068, column: 11, scope: !4320)
!4344 = !DILocation(line: 1069, column: 11, scope: !4320)
!4345 = !DILocation(line: 1069, column: 16, scope: !4320)
!4346 = !DILocation(line: 1069, column: 24, scope: !4320)
!4347 = !DILocation(line: 1069, column: 3, scope: !4320)
!4348 = distinct !{!4348, !4315, !4349, !1257}
!4349 = !DILocation(line: 1070, column: 2, scope: !4289)
!4350 = !DILocation(line: 1071, column: 9, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4289, file: !26, line: 1071, column: 2)
!4352 = !DILocation(line: 1071, column: 7, scope: !4351)
!4353 = !DILocation(line: 1071, column: 14, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !26, line: 1071, column: 2)
!4355 = !DILocation(line: 1071, column: 18, scope: !4354)
!4356 = !DILocation(line: 1071, column: 16, scope: !4354)
!4357 = !DILocation(line: 1071, column: 2, scope: !4351)
!4358 = !DILocation(line: 1072, column: 11, scope: !4354)
!4359 = !DILocation(line: 1072, column: 16, scope: !4354)
!4360 = !DILocation(line: 1072, column: 3, scope: !4354)
!4361 = !DILocation(line: 1071, column: 33, scope: !4354)
!4362 = !DILocation(line: 1071, column: 2, scope: !4354)
!4363 = distinct !{!4363, !4357, !4364, !1257}
!4364 = !DILocation(line: 1072, column: 21, scope: !4351)
!4365 = !DILocation(line: 1073, column: 2, scope: !4289)
!4366 = !DILocation(line: 1073, column: 2, scope: !4367)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !26, line: 1073, column: 2)
!4368 = distinct !DILexicalBlock(scope: !4289, file: !26, line: 1073, column: 2)
!4369 = !DILocation(line: 1073, column: 2, scope: !4368)
!4370 = !DILocation(line: 1074, column: 1, scope: !4289)
!4371 = distinct !DISubprogram(name: "emit_object_indented", scope: !26, file: !26, line: 1091, type: !3654, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4372 = !DILocalVariable(name: "out", arg: 1, scope: !4371, file: !26, line: 1091, type: !3154)
!4373 = !DILocation(line: 1091, column: 38, scope: !4371)
!4374 = !DILocalVariable(name: "object", arg: 2, scope: !4371, file: !26, line: 1091, type: !3625)
!4375 = !DILocation(line: 1091, column: 59, scope: !4371)
!4376 = !DILocalVariable(name: "space", arg: 3, scope: !4371, file: !26, line: 1091, type: !437)
!4377 = !DILocation(line: 1091, column: 79, scope: !4371)
!4378 = !DILocalVariable(name: "indent_level", arg: 4, scope: !4371, file: !26, line: 1091, type: !235)
!4379 = !DILocation(line: 1091, column: 90, scope: !4371)
!4380 = !DILocalVariable(name: "member", scope: !4371, file: !26, line: 1093, type: !3625)
!4381 = !DILocation(line: 1093, column: 18, scope: !4371)
!4382 = !DILocation(line: 1093, column: 27, scope: !4371)
!4383 = !DILocation(line: 1093, column: 35, scope: !4371)
!4384 = !DILocation(line: 1093, column: 44, scope: !4371)
!4385 = !DILocalVariable(name: "i", scope: !4371, file: !26, line: 1094, type: !235)
!4386 = !DILocation(line: 1094, column: 6, scope: !4371)
!4387 = !DILocation(line: 1096, column: 6, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4371, file: !26, line: 1096, column: 6)
!4389 = !DILocation(line: 1096, column: 13, scope: !4388)
!4390 = !DILocation(line: 1096, column: 6, scope: !4371)
!4391 = !DILocation(line: 1097, column: 11, scope: !4392)
!4392 = distinct !DILexicalBlock(scope: !4388, file: !26, line: 1096, column: 22)
!4393 = !DILocation(line: 1097, column: 3, scope: !4392)
!4394 = !DILocation(line: 1098, column: 3, scope: !4392)
!4395 = !DILocation(line: 1101, column: 10, scope: !4371)
!4396 = !DILocation(line: 1101, column: 2, scope: !4371)
!4397 = !DILocation(line: 1102, column: 2, scope: !4371)
!4398 = !DILocation(line: 1102, column: 9, scope: !4371)
!4399 = !DILocation(line: 1102, column: 16, scope: !4371)
!4400 = !DILocation(line: 1103, column: 10, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4402, file: !26, line: 1103, column: 3)
!4402 = distinct !DILexicalBlock(scope: !4371, file: !26, line: 1102, column: 25)
!4403 = !DILocation(line: 1103, column: 8, scope: !4401)
!4404 = !DILocation(line: 1103, column: 15, scope: !4405)
!4405 = distinct !DILexicalBlock(scope: !4401, file: !26, line: 1103, column: 3)
!4406 = !DILocation(line: 1103, column: 19, scope: !4405)
!4407 = !DILocation(line: 1103, column: 32, scope: !4405)
!4408 = !DILocation(line: 1103, column: 17, scope: !4405)
!4409 = !DILocation(line: 1103, column: 3, scope: !4401)
!4410 = !DILocation(line: 1104, column: 12, scope: !4405)
!4411 = !DILocation(line: 1104, column: 17, scope: !4405)
!4412 = !DILocation(line: 1104, column: 4, scope: !4405)
!4413 = !DILocation(line: 1103, column: 38, scope: !4405)
!4414 = !DILocation(line: 1103, column: 3, scope: !4405)
!4415 = distinct !{!4415, !4409, !4416, !1257}
!4416 = !DILocation(line: 1104, column: 22, scope: !4401)
!4417 = !DILocation(line: 1105, column: 15, scope: !4402)
!4418 = !DILocation(line: 1105, column: 20, scope: !4402)
!4419 = !DILocation(line: 1105, column: 28, scope: !4402)
!4420 = !DILocation(line: 1105, column: 3, scope: !4402)
!4421 = !DILocation(line: 1106, column: 11, scope: !4402)
!4422 = !DILocation(line: 1106, column: 3, scope: !4402)
!4423 = !DILocation(line: 1107, column: 23, scope: !4402)
!4424 = !DILocation(line: 1107, column: 28, scope: !4402)
!4425 = !DILocation(line: 1107, column: 36, scope: !4402)
!4426 = !DILocation(line: 1107, column: 43, scope: !4402)
!4427 = !DILocation(line: 1107, column: 56, scope: !4402)
!4428 = !DILocation(line: 1107, column: 3, scope: !4402)
!4429 = !DILocation(line: 1109, column: 12, scope: !4402)
!4430 = !DILocation(line: 1109, column: 20, scope: !4402)
!4431 = !DILocation(line: 1109, column: 10, scope: !4402)
!4432 = !DILocation(line: 1110, column: 11, scope: !4402)
!4433 = !DILocation(line: 1110, column: 16, scope: !4402)
!4434 = !DILocation(line: 1110, column: 23, scope: !4402)
!4435 = !DILocation(line: 1110, column: 3, scope: !4402)
!4436 = distinct !{!4436, !4397, !4437, !1257}
!4437 = !DILocation(line: 1111, column: 2, scope: !4371)
!4438 = !DILocation(line: 1112, column: 9, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4371, file: !26, line: 1112, column: 2)
!4440 = !DILocation(line: 1112, column: 7, scope: !4439)
!4441 = !DILocation(line: 1112, column: 14, scope: !4442)
!4442 = distinct !DILexicalBlock(scope: !4439, file: !26, line: 1112, column: 2)
!4443 = !DILocation(line: 1112, column: 18, scope: !4442)
!4444 = !DILocation(line: 1112, column: 16, scope: !4442)
!4445 = !DILocation(line: 1112, column: 2, scope: !4439)
!4446 = !DILocation(line: 1113, column: 11, scope: !4442)
!4447 = !DILocation(line: 1113, column: 16, scope: !4442)
!4448 = !DILocation(line: 1113, column: 3, scope: !4442)
!4449 = !DILocation(line: 1112, column: 33, scope: !4442)
!4450 = !DILocation(line: 1112, column: 2, scope: !4442)
!4451 = distinct !{!4451, !4445, !4452, !1257}
!4452 = !DILocation(line: 1113, column: 21, scope: !4439)
!4453 = !DILocation(line: 1114, column: 2, scope: !4371)
!4454 = !DILocation(line: 1114, column: 2, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4456, file: !26, line: 1114, column: 2)
!4456 = distinct !DILexicalBlock(scope: !4371, file: !26, line: 1114, column: 2)
!4457 = !DILocation(line: 1114, column: 2, scope: !4456)
!4458 = !DILocation(line: 1115, column: 1, scope: !4371)
!4459 = distinct !DISubprogram(name: "json_encode_string", scope: !26, file: !26, line: 382, type: !4460, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4460 = !DISubroutineType(types: !4461)
!4461 = !{!319, !437}
!4462 = !DILocalVariable(name: "str", arg: 1, scope: !4459, file: !26, line: 382, type: !437)
!4463 = !DILocation(line: 382, column: 38, scope: !4459)
!4464 = !DILocalVariable(name: "sb", scope: !4459, file: !26, line: 384, type: !2528)
!4465 = !DILocation(line: 384, column: 5, scope: !4459)
!4466 = !DILocation(line: 385, column: 2, scope: !4459)
!4467 = !DILocation(line: 387, column: 19, scope: !4459)
!4468 = !DILocation(line: 387, column: 2, scope: !4459)
!4469 = !DILocation(line: 389, column: 9, scope: !4459)
!4470 = !DILocation(line: 389, column: 2, scope: !4459)
!4471 = distinct !DISubprogram(name: "json_stringify_length", scope: !26, file: !26, line: 405, type: !4472, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4472 = !DISubroutineType(types: !4473)
!4473 = !{!319, !3625, !437, !4474}
!4474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!4475 = !DILocalVariable(name: "node", arg: 1, scope: !4471, file: !26, line: 405, type: !3625)
!4476 = !DILocation(line: 405, column: 45, scope: !4471)
!4477 = !DILocalVariable(name: "space", arg: 2, scope: !4471, file: !26, line: 405, type: !437)
!4478 = !DILocation(line: 405, column: 63, scope: !4471)
!4479 = !DILocalVariable(name: "length", arg: 3, scope: !4471, file: !26, line: 405, type: !4474)
!4480 = !DILocation(line: 405, column: 78, scope: !4471)
!4481 = !DILocalVariable(name: "sb", scope: !4471, file: !26, line: 407, type: !2528)
!4482 = !DILocation(line: 407, column: 5, scope: !4471)
!4483 = !DILocation(line: 408, column: 2, scope: !4471)
!4484 = !DILocation(line: 410, column: 6, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4471, file: !26, line: 410, column: 6)
!4486 = !DILocation(line: 410, column: 12, scope: !4485)
!4487 = !DILocation(line: 410, column: 6, scope: !4471)
!4488 = !DILocation(line: 411, column: 28, scope: !4485)
!4489 = !DILocation(line: 411, column: 34, scope: !4485)
!4490 = !DILocation(line: 411, column: 3, scope: !4485)
!4491 = !DILocation(line: 413, column: 19, scope: !4485)
!4492 = !DILocation(line: 413, column: 3, scope: !4485)
!4493 = !DILocation(line: 415, column: 31, scope: !4471)
!4494 = !DILocation(line: 415, column: 9, scope: !4471)
!4495 = !DILocation(line: 415, column: 2, scope: !4471)
!4496 = distinct !DISubprogram(name: "sb_finish_length", scope: !26, file: !26, line: 102, type: !4497, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4497 = !DISubroutineType(types: !4498)
!4498 = !{!319, !3154, !4474}
!4499 = !DILocalVariable(name: "sb", arg: 1, scope: !4496, file: !26, line: 102, type: !3154)
!4500 = !DILocation(line: 102, column: 35, scope: !4496)
!4501 = !DILocalVariable(name: "length", arg: 2, scope: !4496, file: !26, line: 102, type: !4474)
!4502 = !DILocation(line: 102, column: 47, scope: !4496)
!4503 = !DILocation(line: 104, column: 3, scope: !4496)
!4504 = !DILocation(line: 104, column: 7, scope: !4496)
!4505 = !DILocation(line: 104, column: 11, scope: !4496)
!4506 = !DILocation(line: 105, column: 2, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4508, file: !26, line: 105, column: 2)
!4508 = distinct !DILexicalBlock(scope: !4496, file: !26, line: 105, column: 2)
!4509 = !DILocation(line: 105, column: 2, scope: !4508)
!4510 = !DILocation(line: 106, column: 21, scope: !4496)
!4511 = !DILocation(line: 106, column: 25, scope: !4496)
!4512 = !DILocation(line: 106, column: 31, scope: !4496)
!4513 = !DILocation(line: 106, column: 35, scope: !4496)
!4514 = !DILocation(line: 106, column: 29, scope: !4496)
!4515 = !DILocation(line: 106, column: 3, scope: !4496)
!4516 = !DILocation(line: 106, column: 10, scope: !4496)
!4517 = !DILocation(line: 107, column: 9, scope: !4496)
!4518 = !DILocation(line: 107, column: 13, scope: !4496)
!4519 = !DILocation(line: 107, column: 2, scope: !4496)
!4520 = distinct !DISubprogram(name: "json_validate", scope: !26, file: !26, line: 444, type: !4077, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4521 = !DILocalVariable(name: "json", arg: 1, scope: !4520, file: !26, line: 444, type: !437)
!4522 = !DILocation(line: 444, column: 32, scope: !4520)
!4523 = !DILocalVariable(name: "s", scope: !4520, file: !26, line: 446, type: !437)
!4524 = !DILocation(line: 446, column: 14, scope: !4520)
!4525 = !DILocation(line: 446, column: 18, scope: !4520)
!4526 = !DILocation(line: 448, column: 2, scope: !4520)
!4527 = !DILocation(line: 449, column: 7, scope: !4528)
!4528 = distinct !DILexicalBlock(scope: !4520, file: !26, line: 449, column: 6)
!4529 = !DILocation(line: 449, column: 6, scope: !4520)
!4530 = !DILocation(line: 450, column: 3, scope: !4528)
!4531 = !DILocation(line: 452, column: 2, scope: !4520)
!4532 = !DILocation(line: 453, column: 7, scope: !4533)
!4533 = distinct !DILexicalBlock(scope: !4520, file: !26, line: 453, column: 6)
!4534 = !DILocation(line: 453, column: 6, scope: !4533)
!4535 = !DILocation(line: 453, column: 9, scope: !4533)
!4536 = !DILocation(line: 453, column: 6, scope: !4520)
!4537 = !DILocation(line: 454, column: 3, scope: !4533)
!4538 = !DILocation(line: 456, column: 2, scope: !4520)
!4539 = !DILocation(line: 457, column: 1, scope: !4520)
!4540 = distinct !DISubprogram(name: "json_find_element", scope: !26, file: !26, line: 459, type: !4541, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4541 = !DISubroutineType(types: !4542)
!4542 = !{!1074, !1074, !235}
!4543 = !DILocalVariable(name: "array", arg: 1, scope: !4540, file: !26, line: 459, type: !1074)
!4544 = !DILocation(line: 459, column: 39, scope: !4540)
!4545 = !DILocalVariable(name: "index", arg: 2, scope: !4540, file: !26, line: 459, type: !235)
!4546 = !DILocation(line: 459, column: 50, scope: !4540)
!4547 = !DILocalVariable(name: "element", scope: !4540, file: !26, line: 461, type: !1074)
!4548 = !DILocation(line: 461, column: 12, scope: !4540)
!4549 = !DILocalVariable(name: "i", scope: !4540, file: !26, line: 462, type: !235)
!4550 = !DILocation(line: 462, column: 6, scope: !4540)
!4551 = !DILocation(line: 464, column: 6, scope: !4552)
!4552 = distinct !DILexicalBlock(scope: !4540, file: !26, line: 464, column: 6)
!4553 = !DILocation(line: 464, column: 12, scope: !4552)
!4554 = !DILocation(line: 464, column: 20, scope: !4552)
!4555 = !DILocation(line: 464, column: 23, scope: !4552)
!4556 = !DILocation(line: 464, column: 30, scope: !4552)
!4557 = !DILocation(line: 464, column: 34, scope: !4552)
!4558 = !DILocation(line: 464, column: 6, scope: !4540)
!4559 = !DILocation(line: 465, column: 3, scope: !4552)
!4560 = !DILocation(line: 467, column: 2, scope: !4561)
!4561 = distinct !DILexicalBlock(scope: !4540, file: !26, line: 467, column: 2)
!4562 = !DILocation(line: 467, column: 2, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4561, file: !26, line: 467, column: 2)
!4564 = !DILocation(line: 468, column: 7, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4566, file: !26, line: 468, column: 7)
!4566 = distinct !DILexicalBlock(scope: !4563, file: !26, line: 467, column: 31)
!4567 = !DILocation(line: 468, column: 12, scope: !4565)
!4568 = !DILocation(line: 468, column: 9, scope: !4565)
!4569 = !DILocation(line: 468, column: 7, scope: !4566)
!4570 = !DILocation(line: 469, column: 11, scope: !4565)
!4571 = !DILocation(line: 469, column: 4, scope: !4565)
!4572 = !DILocation(line: 470, column: 4, scope: !4566)
!4573 = !DILocation(line: 471, column: 2, scope: !4566)
!4574 = distinct !{!4574, !4560, !4575, !1257}
!4575 = !DILocation(line: 471, column: 2, scope: !4561)
!4576 = !DILocation(line: 473, column: 2, scope: !4540)
!4577 = !DILocation(line: 474, column: 1, scope: !4540)
!4578 = distinct !DISubprogram(name: "json_find_member", scope: !26, file: !26, line: 476, type: !4579, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4579 = !DISubroutineType(types: !4580)
!4580 = !{!1074, !1074, !437}
!4581 = !DILocalVariable(name: "object", arg: 1, scope: !4578, file: !26, line: 476, type: !1074)
!4582 = !DILocation(line: 476, column: 38, scope: !4578)
!4583 = !DILocalVariable(name: "name", arg: 2, scope: !4578, file: !26, line: 476, type: !437)
!4584 = !DILocation(line: 476, column: 58, scope: !4578)
!4585 = !DILocalVariable(name: "member", scope: !4578, file: !26, line: 478, type: !1074)
!4586 = !DILocation(line: 478, column: 12, scope: !4578)
!4587 = !DILocation(line: 480, column: 6, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4578, file: !26, line: 480, column: 6)
!4589 = !DILocation(line: 480, column: 13, scope: !4588)
!4590 = !DILocation(line: 480, column: 21, scope: !4588)
!4591 = !DILocation(line: 480, column: 24, scope: !4588)
!4592 = !DILocation(line: 480, column: 32, scope: !4588)
!4593 = !DILocation(line: 480, column: 36, scope: !4588)
!4594 = !DILocation(line: 480, column: 6, scope: !4578)
!4595 = !DILocation(line: 481, column: 3, scope: !4588)
!4596 = !DILocation(line: 483, column: 2, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4578, file: !26, line: 483, column: 2)
!4598 = !DILocation(line: 483, column: 2, scope: !4599)
!4599 = distinct !DILexicalBlock(scope: !4597, file: !26, line: 483, column: 2)
!4600 = !DILocation(line: 484, column: 14, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4599, file: !26, line: 484, column: 7)
!4602 = !DILocation(line: 484, column: 22, scope: !4601)
!4603 = !DILocation(line: 484, column: 27, scope: !4601)
!4604 = !DILocation(line: 484, column: 7, scope: !4601)
!4605 = !DILocation(line: 484, column: 33, scope: !4601)
!4606 = !DILocation(line: 484, column: 7, scope: !4599)
!4607 = !DILocation(line: 485, column: 11, scope: !4601)
!4608 = !DILocation(line: 485, column: 4, scope: !4601)
!4609 = !DILocation(line: 484, column: 36, scope: !4601)
!4610 = distinct !{!4610, !4596, !4611, !1257}
!4611 = !DILocation(line: 485, column: 11, scope: !4597)
!4612 = !DILocation(line: 487, column: 2, scope: !4578)
!4613 = !DILocation(line: 488, column: 1, scope: !4578)
!4614 = distinct !DISubprogram(name: "json_mkstring", scope: !26, file: !26, line: 525, type: !2180, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4615 = !DILocalVariable(name: "s", arg: 1, scope: !4614, file: !26, line: 525, type: !437)
!4616 = !DILocation(line: 525, column: 37, scope: !4614)
!4617 = !DILocation(line: 527, column: 25, scope: !4614)
!4618 = !DILocation(line: 527, column: 18, scope: !4614)
!4619 = !DILocation(line: 527, column: 9, scope: !4614)
!4620 = !DILocation(line: 527, column: 2, scope: !4614)
!4621 = distinct !DISubprogram(name: "json_prepend_element", scope: !26, file: !26, line: 587, type: !3089, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4622 = !DILocalVariable(name: "array", arg: 1, scope: !4621, file: !26, line: 587, type: !1074)
!4623 = !DILocation(line: 587, column: 37, scope: !4621)
!4624 = !DILocalVariable(name: "element", arg: 2, scope: !4621, file: !26, line: 587, type: !1074)
!4625 = !DILocation(line: 587, column: 54, scope: !4621)
!4626 = !DILocation(line: 589, column: 2, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4628, file: !26, line: 589, column: 2)
!4628 = distinct !DILexicalBlock(scope: !4621, file: !26, line: 589, column: 2)
!4629 = !DILocation(line: 589, column: 2, scope: !4628)
!4630 = !DILocation(line: 590, column: 2, scope: !4631)
!4631 = distinct !DILexicalBlock(scope: !4632, file: !26, line: 590, column: 2)
!4632 = distinct !DILexicalBlock(scope: !4621, file: !26, line: 590, column: 2)
!4633 = !DILocation(line: 590, column: 2, scope: !4632)
!4634 = !DILocation(line: 592, column: 15, scope: !4621)
!4635 = !DILocation(line: 592, column: 22, scope: !4621)
!4636 = !DILocation(line: 592, column: 2, scope: !4621)
!4637 = !DILocation(line: 593, column: 1, scope: !4621)
!4638 = distinct !DISubprogram(name: "prepend_node", scope: !26, file: !26, line: 560, type: !3089, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4639 = !DILocalVariable(name: "parent", arg: 1, scope: !4638, file: !26, line: 560, type: !1074)
!4640 = !DILocation(line: 560, column: 36, scope: !4638)
!4641 = !DILocalVariable(name: "child", arg: 2, scope: !4638, file: !26, line: 560, type: !1074)
!4642 = !DILocation(line: 560, column: 54, scope: !4638)
!4643 = !DILocation(line: 562, column: 18, scope: !4638)
!4644 = !DILocation(line: 562, column: 2, scope: !4638)
!4645 = !DILocation(line: 562, column: 9, scope: !4638)
!4646 = !DILocation(line: 562, column: 16, scope: !4638)
!4647 = !DILocation(line: 563, column: 2, scope: !4638)
!4648 = !DILocation(line: 563, column: 9, scope: !4638)
!4649 = !DILocation(line: 563, column: 14, scope: !4638)
!4650 = !DILocation(line: 564, column: 16, scope: !4638)
!4651 = !DILocation(line: 564, column: 24, scope: !4638)
!4652 = !DILocation(line: 564, column: 33, scope: !4638)
!4653 = !DILocation(line: 564, column: 2, scope: !4638)
!4654 = !DILocation(line: 564, column: 9, scope: !4638)
!4655 = !DILocation(line: 564, column: 14, scope: !4638)
!4656 = !DILocation(line: 566, column: 6, scope: !4657)
!4657 = distinct !DILexicalBlock(scope: !4638, file: !26, line: 566, column: 6)
!4658 = !DILocation(line: 566, column: 14, scope: !4657)
!4659 = !DILocation(line: 566, column: 23, scope: !4657)
!4660 = !DILocation(line: 566, column: 28, scope: !4657)
!4661 = !DILocation(line: 566, column: 6, scope: !4638)
!4662 = !DILocation(line: 567, column: 33, scope: !4657)
!4663 = !DILocation(line: 567, column: 3, scope: !4657)
!4664 = !DILocation(line: 567, column: 11, scope: !4657)
!4665 = !DILocation(line: 567, column: 20, scope: !4657)
!4666 = !DILocation(line: 567, column: 26, scope: !4657)
!4667 = !DILocation(line: 567, column: 31, scope: !4657)
!4668 = !DILocation(line: 569, column: 27, scope: !4657)
!4669 = !DILocation(line: 569, column: 3, scope: !4657)
!4670 = !DILocation(line: 569, column: 11, scope: !4657)
!4671 = !DILocation(line: 569, column: 20, scope: !4657)
!4672 = !DILocation(line: 569, column: 25, scope: !4657)
!4673 = !DILocation(line: 570, column: 26, scope: !4638)
!4674 = !DILocation(line: 570, column: 2, scope: !4638)
!4675 = !DILocation(line: 570, column: 10, scope: !4638)
!4676 = !DILocation(line: 570, column: 19, scope: !4638)
!4677 = !DILocation(line: 570, column: 24, scope: !4638)
!4678 = !DILocation(line: 571, column: 1, scope: !4638)
!4679 = distinct !DISubprogram(name: "json_append_member", scope: !26, file: !26, line: 595, type: !4680, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4680 = !DISubroutineType(types: !4681)
!4681 = !{null, !1074, !437, !1074}
!4682 = !DILocalVariable(name: "object", arg: 1, scope: !4679, file: !26, line: 595, type: !1074)
!4683 = !DILocation(line: 595, column: 35, scope: !4679)
!4684 = !DILocalVariable(name: "key", arg: 2, scope: !4679, file: !26, line: 595, type: !437)
!4685 = !DILocation(line: 595, column: 55, scope: !4679)
!4686 = !DILocalVariable(name: "value", arg: 3, scope: !4679, file: !26, line: 595, type: !1074)
!4687 = !DILocation(line: 595, column: 70, scope: !4679)
!4688 = !DILocation(line: 597, column: 2, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4690, file: !26, line: 597, column: 2)
!4690 = distinct !DILexicalBlock(scope: !4679, file: !26, line: 597, column: 2)
!4691 = !DILocation(line: 597, column: 2, scope: !4690)
!4692 = !DILocation(line: 598, column: 2, scope: !4693)
!4693 = distinct !DILexicalBlock(scope: !4694, file: !26, line: 598, column: 2)
!4694 = distinct !DILexicalBlock(scope: !4679, file: !26, line: 598, column: 2)
!4695 = !DILocation(line: 598, column: 2, scope: !4694)
!4696 = !DILocation(line: 600, column: 16, scope: !4679)
!4697 = !DILocation(line: 600, column: 31, scope: !4679)
!4698 = !DILocation(line: 600, column: 24, scope: !4679)
!4699 = !DILocation(line: 600, column: 37, scope: !4679)
!4700 = !DILocation(line: 600, column: 2, scope: !4679)
!4701 = !DILocation(line: 601, column: 1, scope: !4679)
!4702 = distinct !DISubprogram(name: "json_prepend_member", scope: !26, file: !26, line: 603, type: !4680, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4703 = !DILocalVariable(name: "object", arg: 1, scope: !4702, file: !26, line: 603, type: !1074)
!4704 = !DILocation(line: 603, column: 36, scope: !4702)
!4705 = !DILocalVariable(name: "key", arg: 2, scope: !4702, file: !26, line: 603, type: !437)
!4706 = !DILocation(line: 603, column: 56, scope: !4702)
!4707 = !DILocalVariable(name: "value", arg: 3, scope: !4702, file: !26, line: 603, type: !1074)
!4708 = !DILocation(line: 603, column: 71, scope: !4702)
!4709 = !DILocation(line: 605, column: 2, scope: !4710)
!4710 = distinct !DILexicalBlock(scope: !4711, file: !26, line: 605, column: 2)
!4711 = distinct !DILexicalBlock(scope: !4702, file: !26, line: 605, column: 2)
!4712 = !DILocation(line: 605, column: 2, scope: !4711)
!4713 = !DILocation(line: 606, column: 2, scope: !4714)
!4714 = distinct !DILexicalBlock(scope: !4715, file: !26, line: 606, column: 2)
!4715 = distinct !DILexicalBlock(scope: !4702, file: !26, line: 606, column: 2)
!4716 = !DILocation(line: 606, column: 2, scope: !4715)
!4717 = !DILocation(line: 608, column: 22, scope: !4702)
!4718 = !DILocation(line: 608, column: 15, scope: !4702)
!4719 = !DILocation(line: 608, column: 2, scope: !4702)
!4720 = !DILocation(line: 608, column: 9, scope: !4702)
!4721 = !DILocation(line: 608, column: 13, scope: !4702)
!4722 = !DILocation(line: 609, column: 15, scope: !4702)
!4723 = !DILocation(line: 609, column: 23, scope: !4702)
!4724 = !DILocation(line: 609, column: 2, scope: !4702)
!4725 = !DILocation(line: 610, column: 1, scope: !4702)
!4726 = distinct !DISubprogram(name: "json_check", scope: !26, file: !26, line: 1316, type: !4727, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !1070, retainedNodes: !480)
!4727 = !DISubroutineType(types: !4728)
!4728 = !{!473, !3625, !319}
!4729 = !DILocalVariable(name: "node", arg: 1, scope: !4726, file: !26, line: 1316, type: !3625)
!4730 = !DILocation(line: 1316, column: 33, scope: !4726)
!4731 = !DILocalVariable(name: "errmsg", arg: 2, scope: !4726, file: !26, line: 1316, type: !319)
!4732 = !DILocation(line: 1316, column: 44, scope: !4726)
!4733 = !DILocation(line: 1324, column: 6, scope: !4734)
!4734 = distinct !DILexicalBlock(scope: !4726, file: !26, line: 1324, column: 6)
!4735 = !DILocation(line: 1324, column: 12, scope: !4734)
!4736 = !DILocation(line: 1324, column: 16, scope: !4734)
!4737 = !DILocation(line: 1324, column: 24, scope: !4734)
!4738 = !DILocation(line: 1324, column: 42, scope: !4734)
!4739 = !DILocation(line: 1324, column: 48, scope: !4734)
!4740 = !DILocation(line: 1324, column: 28, scope: !4734)
!4741 = !DILocation(line: 1324, column: 6, scope: !4726)
!4742 = !DILocation(line: 1325, column: 3, scope: !4734)
!4743 = !DILocation(line: 1325, column: 3, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4745, file: !26, line: 1325, column: 3)
!4745 = distinct !DILexicalBlock(scope: !4734, file: !26, line: 1325, column: 3)
!4746 = !DILocation(line: 1325, column: 3, scope: !4745)
!4747 = !DILocation(line: 1327, column: 20, scope: !4748)
!4748 = distinct !DILexicalBlock(scope: !4726, file: !26, line: 1327, column: 6)
!4749 = !DILocation(line: 1327, column: 26, scope: !4748)
!4750 = !DILocation(line: 1327, column: 7, scope: !4748)
!4751 = !DILocation(line: 1327, column: 6, scope: !4726)
!4752 = !DILocation(line: 1328, column: 3, scope: !4748)
!4753 = !DILocation(line: 1328, column: 3, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4755, file: !26, line: 1328, column: 3)
!4755 = distinct !DILexicalBlock(scope: !4748, file: !26, line: 1328, column: 3)
!4756 = !DILocation(line: 1328, column: 3, scope: !4755)
!4757 = !DILocation(line: 1330, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4726, file: !26, line: 1330, column: 6)
!4759 = !DILocation(line: 1330, column: 12, scope: !4758)
!4760 = !DILocation(line: 1330, column: 16, scope: !4758)
!4761 = !DILocation(line: 1330, column: 6, scope: !4726)
!4762 = !DILocation(line: 1331, column: 7, scope: !4763)
!4763 = distinct !DILexicalBlock(scope: !4764, file: !26, line: 1331, column: 7)
!4764 = distinct !DILexicalBlock(scope: !4758, file: !26, line: 1330, column: 30)
!4765 = !DILocation(line: 1331, column: 13, scope: !4763)
!4766 = !DILocation(line: 1331, column: 19, scope: !4763)
!4767 = !DILocation(line: 1331, column: 28, scope: !4763)
!4768 = !DILocation(line: 1331, column: 31, scope: !4763)
!4769 = !DILocation(line: 1331, column: 37, scope: !4763)
!4770 = !DILocation(line: 1331, column: 43, scope: !4763)
!4771 = !DILocation(line: 1331, column: 7, scope: !4764)
!4772 = !DILocation(line: 1332, column: 4, scope: !4763)
!4773 = !DILocation(line: 1332, column: 4, scope: !4774)
!4774 = distinct !DILexicalBlock(scope: !4775, file: !26, line: 1332, column: 4)
!4775 = distinct !DILexicalBlock(scope: !4763, file: !26, line: 1332, column: 4)
!4776 = !DILocation(line: 1332, column: 4, scope: !4775)
!4777 = !DILocation(line: 1333, column: 2, scope: !4764)
!4778 = !DILocation(line: 1333, column: 13, scope: !4779)
!4779 = distinct !DILexicalBlock(scope: !4758, file: !26, line: 1333, column: 13)
!4780 = !DILocation(line: 1333, column: 19, scope: !4779)
!4781 = !DILocation(line: 1333, column: 23, scope: !4779)
!4782 = !DILocation(line: 1333, column: 13, scope: !4758)
!4783 = !DILocation(line: 1334, column: 7, scope: !4784)
!4784 = distinct !DILexicalBlock(scope: !4785, file: !26, line: 1334, column: 7)
!4785 = distinct !DILexicalBlock(scope: !4779, file: !26, line: 1333, column: 39)
!4786 = !DILocation(line: 1334, column: 13, scope: !4784)
!4787 = !DILocation(line: 1334, column: 21, scope: !4784)
!4788 = !DILocation(line: 1334, column: 7, scope: !4785)
!4789 = !DILocation(line: 1335, column: 4, scope: !4784)
!4790 = !DILocation(line: 1335, column: 4, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4792, file: !26, line: 1335, column: 4)
!4792 = distinct !DILexicalBlock(scope: !4784, file: !26, line: 1335, column: 4)
!4793 = !DILocation(line: 1335, column: 4, scope: !4792)
!4794 = !DILocation(line: 1336, column: 22, scope: !4795)
!4795 = distinct !DILexicalBlock(scope: !4785, file: !26, line: 1336, column: 7)
!4796 = !DILocation(line: 1336, column: 28, scope: !4795)
!4797 = !DILocation(line: 1336, column: 8, scope: !4795)
!4798 = !DILocation(line: 1336, column: 7, scope: !4785)
!4799 = !DILocation(line: 1337, column: 4, scope: !4795)
!4800 = !DILocation(line: 1337, column: 4, scope: !4801)
!4801 = distinct !DILexicalBlock(scope: !4802, file: !26, line: 1337, column: 4)
!4802 = distinct !DILexicalBlock(scope: !4795, file: !26, line: 1337, column: 4)
!4803 = !DILocation(line: 1337, column: 4, scope: !4802)
!4804 = !DILocation(line: 1338, column: 2, scope: !4785)
!4805 = !DILocation(line: 1338, column: 13, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4779, file: !26, line: 1338, column: 13)
!4807 = !DILocation(line: 1338, column: 19, scope: !4806)
!4808 = !DILocation(line: 1338, column: 23, scope: !4806)
!4809 = !DILocation(line: 1338, column: 37, scope: !4806)
!4810 = !DILocation(line: 1338, column: 40, scope: !4806)
!4811 = !DILocation(line: 1338, column: 46, scope: !4806)
!4812 = !DILocation(line: 1338, column: 50, scope: !4806)
!4813 = !DILocation(line: 1338, column: 13, scope: !4779)
!4814 = !DILocalVariable(name: "head", scope: !4815, file: !26, line: 1339, type: !1074)
!4815 = distinct !DILexicalBlock(scope: !4806, file: !26, line: 1338, column: 66)
!4816 = !DILocation(line: 1339, column: 13, scope: !4815)
!4817 = !DILocation(line: 1339, column: 20, scope: !4815)
!4818 = !DILocation(line: 1339, column: 26, scope: !4815)
!4819 = !DILocation(line: 1339, column: 35, scope: !4815)
!4820 = !DILocalVariable(name: "tail", scope: !4815, file: !26, line: 1340, type: !1074)
!4821 = !DILocation(line: 1340, column: 13, scope: !4815)
!4822 = !DILocation(line: 1340, column: 20, scope: !4815)
!4823 = !DILocation(line: 1340, column: 26, scope: !4815)
!4824 = !DILocation(line: 1340, column: 35, scope: !4815)
!4825 = !DILocation(line: 1342, column: 7, scope: !4826)
!4826 = distinct !DILexicalBlock(scope: !4815, file: !26, line: 1342, column: 7)
!4827 = !DILocation(line: 1342, column: 12, scope: !4826)
!4828 = !DILocation(line: 1342, column: 20, scope: !4826)
!4829 = !DILocation(line: 1342, column: 23, scope: !4826)
!4830 = !DILocation(line: 1342, column: 28, scope: !4826)
!4831 = !DILocation(line: 1342, column: 7, scope: !4815)
!4832 = !DILocation(line: 1343, column: 8, scope: !4833)
!4833 = distinct !DILexicalBlock(scope: !4834, file: !26, line: 1343, column: 8)
!4834 = distinct !DILexicalBlock(scope: !4826, file: !26, line: 1342, column: 37)
!4835 = !DILocation(line: 1343, column: 13, scope: !4833)
!4836 = !DILocation(line: 1343, column: 8, scope: !4834)
!4837 = !DILocation(line: 1344, column: 5, scope: !4833)
!4838 = !DILocation(line: 1344, column: 5, scope: !4839)
!4839 = distinct !DILexicalBlock(scope: !4840, file: !26, line: 1344, column: 5)
!4840 = distinct !DILexicalBlock(scope: !4833, file: !26, line: 1344, column: 5)
!4841 = !DILocation(line: 1344, column: 5, scope: !4840)
!4842 = !DILocation(line: 1345, column: 8, scope: !4843)
!4843 = distinct !DILexicalBlock(scope: !4834, file: !26, line: 1345, column: 8)
!4844 = !DILocation(line: 1345, column: 13, scope: !4843)
!4845 = !DILocation(line: 1345, column: 8, scope: !4834)
!4846 = !DILocation(line: 1346, column: 5, scope: !4843)
!4847 = !DILocation(line: 1346, column: 5, scope: !4848)
!4848 = distinct !DILexicalBlock(scope: !4849, file: !26, line: 1346, column: 5)
!4849 = distinct !DILexicalBlock(scope: !4843, file: !26, line: 1346, column: 5)
!4850 = !DILocation(line: 1346, column: 5, scope: !4849)
!4851 = !DILocation(line: 1347, column: 3, scope: !4834)
!4852 = !DILocalVariable(name: "child", scope: !4853, file: !26, line: 1348, type: !1074)
!4853 = distinct !DILexicalBlock(scope: !4826, file: !26, line: 1347, column: 10)
!4854 = !DILocation(line: 1348, column: 14, scope: !4853)
!4855 = !DILocalVariable(name: "last", scope: !4853, file: !26, line: 1349, type: !1074)
!4856 = !DILocation(line: 1349, column: 14, scope: !4853)
!4857 = !DILocation(line: 1351, column: 8, scope: !4858)
!4858 = distinct !DILexicalBlock(scope: !4853, file: !26, line: 1351, column: 8)
!4859 = !DILocation(line: 1351, column: 14, scope: !4858)
!4860 = !DILocation(line: 1351, column: 19, scope: !4858)
!4861 = !DILocation(line: 1351, column: 8, scope: !4853)
!4862 = !DILocation(line: 1352, column: 5, scope: !4858)
!4863 = !DILocation(line: 1352, column: 5, scope: !4864)
!4864 = distinct !DILexicalBlock(scope: !4865, file: !26, line: 1352, column: 5)
!4865 = distinct !DILexicalBlock(scope: !4858, file: !26, line: 1352, column: 5)
!4866 = !DILocation(line: 1352, column: 5, scope: !4865)
!4867 = !DILocation(line: 1354, column: 17, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4853, file: !26, line: 1354, column: 4)
!4869 = !DILocation(line: 1354, column: 15, scope: !4868)
!4870 = !DILocation(line: 1354, column: 9, scope: !4868)
!4871 = !DILocation(line: 1354, column: 23, scope: !4872)
!4872 = distinct !DILexicalBlock(scope: !4868, file: !26, line: 1354, column: 4)
!4873 = !DILocation(line: 1354, column: 29, scope: !4872)
!4874 = !DILocation(line: 1354, column: 4, scope: !4868)
!4875 = !DILocation(line: 1355, column: 9, scope: !4876)
!4876 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1355, column: 9)
!4877 = distinct !DILexicalBlock(scope: !4872, file: !26, line: 1354, column: 73)
!4878 = !DILocation(line: 1355, column: 18, scope: !4876)
!4879 = !DILocation(line: 1355, column: 15, scope: !4876)
!4880 = !DILocation(line: 1355, column: 9, scope: !4877)
!4881 = !DILocation(line: 1356, column: 6, scope: !4876)
!4882 = !DILocation(line: 1356, column: 6, scope: !4883)
!4883 = distinct !DILexicalBlock(scope: !4884, file: !26, line: 1356, column: 6)
!4884 = distinct !DILexicalBlock(scope: !4876, file: !26, line: 1356, column: 6)
!4885 = !DILocation(line: 1356, column: 6, scope: !4884)
!4886 = !DILocation(line: 1357, column: 9, scope: !4887)
!4887 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1357, column: 9)
!4888 = !DILocation(line: 1357, column: 16, scope: !4887)
!4889 = !DILocation(line: 1357, column: 24, scope: !4887)
!4890 = !DILocation(line: 1357, column: 21, scope: !4887)
!4891 = !DILocation(line: 1357, column: 9, scope: !4877)
!4892 = !DILocation(line: 1358, column: 6, scope: !4887)
!4893 = !DILocation(line: 1358, column: 6, scope: !4894)
!4894 = distinct !DILexicalBlock(scope: !4895, file: !26, line: 1358, column: 6)
!4895 = distinct !DILexicalBlock(scope: !4887, file: !26, line: 1358, column: 6)
!4896 = !DILocation(line: 1358, column: 6, scope: !4895)
!4897 = !DILocation(line: 1359, column: 9, scope: !4898)
!4898 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1359, column: 9)
!4899 = !DILocation(line: 1359, column: 16, scope: !4898)
!4900 = !DILocation(line: 1359, column: 24, scope: !4898)
!4901 = !DILocation(line: 1359, column: 21, scope: !4898)
!4902 = !DILocation(line: 1359, column: 9, scope: !4877)
!4903 = !DILocation(line: 1360, column: 6, scope: !4898)
!4904 = !DILocation(line: 1360, column: 6, scope: !4905)
!4905 = distinct !DILexicalBlock(scope: !4906, file: !26, line: 1360, column: 6)
!4906 = distinct !DILexicalBlock(scope: !4898, file: !26, line: 1360, column: 6)
!4907 = !DILocation(line: 1360, column: 6, scope: !4906)
!4908 = !DILocation(line: 1362, column: 9, scope: !4909)
!4909 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1362, column: 9)
!4910 = !DILocation(line: 1362, column: 16, scope: !4909)
!4911 = !DILocation(line: 1362, column: 26, scope: !4909)
!4912 = !DILocation(line: 1362, column: 23, scope: !4909)
!4913 = !DILocation(line: 1362, column: 9, scope: !4877)
!4914 = !DILocation(line: 1363, column: 6, scope: !4909)
!4915 = !DILocation(line: 1363, column: 6, scope: !4916)
!4916 = distinct !DILexicalBlock(scope: !4917, file: !26, line: 1363, column: 6)
!4917 = distinct !DILexicalBlock(scope: !4909, file: !26, line: 1363, column: 6)
!4918 = !DILocation(line: 1363, column: 6, scope: !4917)
!4919 = !DILocation(line: 1364, column: 9, scope: !4920)
!4920 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1364, column: 9)
!4921 = !DILocation(line: 1364, column: 16, scope: !4920)
!4922 = !DILocation(line: 1364, column: 21, scope: !4920)
!4923 = !DILocation(line: 1364, column: 29, scope: !4920)
!4924 = !DILocation(line: 1364, column: 32, scope: !4920)
!4925 = !DILocation(line: 1364, column: 39, scope: !4920)
!4926 = !DILocation(line: 1364, column: 45, scope: !4920)
!4927 = !DILocation(line: 1364, column: 53, scope: !4920)
!4928 = !DILocation(line: 1364, column: 50, scope: !4920)
!4929 = !DILocation(line: 1364, column: 9, scope: !4877)
!4930 = !DILocation(line: 1365, column: 6, scope: !4920)
!4931 = !DILocation(line: 1365, column: 6, scope: !4932)
!4932 = distinct !DILexicalBlock(scope: !4933, file: !26, line: 1365, column: 6)
!4933 = distinct !DILexicalBlock(scope: !4920, file: !26, line: 1365, column: 6)
!4934 = !DILocation(line: 1365, column: 6, scope: !4933)
!4935 = !DILocation(line: 1367, column: 9, scope: !4936)
!4936 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1367, column: 9)
!4937 = !DILocation(line: 1367, column: 15, scope: !4936)
!4938 = !DILocation(line: 1367, column: 19, scope: !4936)
!4939 = !DILocation(line: 1367, column: 33, scope: !4936)
!4940 = !DILocation(line: 1367, column: 36, scope: !4936)
!4941 = !DILocation(line: 1367, column: 43, scope: !4936)
!4942 = !DILocation(line: 1367, column: 47, scope: !4936)
!4943 = !DILocation(line: 1367, column: 9, scope: !4877)
!4944 = !DILocation(line: 1368, column: 6, scope: !4936)
!4945 = !DILocation(line: 1368, column: 6, scope: !4946)
!4946 = distinct !DILexicalBlock(scope: !4947, file: !26, line: 1368, column: 6)
!4947 = distinct !DILexicalBlock(scope: !4936, file: !26, line: 1368, column: 6)
!4948 = !DILocation(line: 1368, column: 6, scope: !4947)
!4949 = !DILocation(line: 1369, column: 9, scope: !4950)
!4950 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1369, column: 9)
!4951 = !DILocation(line: 1369, column: 15, scope: !4950)
!4952 = !DILocation(line: 1369, column: 19, scope: !4950)
!4953 = !DILocation(line: 1369, column: 34, scope: !4950)
!4954 = !DILocation(line: 1369, column: 37, scope: !4950)
!4955 = !DILocation(line: 1369, column: 44, scope: !4950)
!4956 = !DILocation(line: 1369, column: 48, scope: !4950)
!4957 = !DILocation(line: 1369, column: 9, scope: !4877)
!4958 = !DILocation(line: 1370, column: 6, scope: !4950)
!4959 = !DILocation(line: 1370, column: 6, scope: !4960)
!4960 = distinct !DILexicalBlock(scope: !4961, file: !26, line: 1370, column: 6)
!4961 = distinct !DILexicalBlock(scope: !4950, file: !26, line: 1370, column: 6)
!4962 = !DILocation(line: 1370, column: 6, scope: !4961)
!4963 = !DILocation(line: 1372, column: 21, scope: !4964)
!4964 = distinct !DILexicalBlock(scope: !4877, file: !26, line: 1372, column: 9)
!4965 = !DILocation(line: 1372, column: 28, scope: !4964)
!4966 = !DILocation(line: 1372, column: 10, scope: !4964)
!4967 = !DILocation(line: 1372, column: 9, scope: !4877)
!4968 = !DILocation(line: 1373, column: 6, scope: !4964)
!4969 = !DILocation(line: 1374, column: 4, scope: !4877)
!4970 = !DILocation(line: 1354, column: 45, scope: !4872)
!4971 = !DILocation(line: 1354, column: 43, scope: !4872)
!4972 = !DILocation(line: 1354, column: 60, scope: !4872)
!4973 = !DILocation(line: 1354, column: 67, scope: !4872)
!4974 = !DILocation(line: 1354, column: 58, scope: !4872)
!4975 = !DILocation(line: 1354, column: 4, scope: !4872)
!4976 = distinct !{!4976, !4874, !4977, !1257}
!4977 = !DILocation(line: 1374, column: 4, scope: !4868)
!4978 = !DILocation(line: 1376, column: 8, scope: !4979)
!4979 = distinct !DILexicalBlock(scope: !4853, file: !26, line: 1376, column: 8)
!4980 = !DILocation(line: 1376, column: 16, scope: !4979)
!4981 = !DILocation(line: 1376, column: 13, scope: !4979)
!4982 = !DILocation(line: 1376, column: 8, scope: !4853)
!4983 = !DILocation(line: 1377, column: 5, scope: !4979)
!4984 = !DILocation(line: 1377, column: 5, scope: !4985)
!4985 = distinct !DILexicalBlock(scope: !4986, file: !26, line: 1377, column: 5)
!4986 = distinct !DILexicalBlock(scope: !4979, file: !26, line: 1377, column: 5)
!4987 = !DILocation(line: 1377, column: 5, scope: !4986)
!4988 = !DILocation(line: 1379, column: 2, scope: !4815)
!4989 = !DILocation(line: 1381, column: 2, scope: !4726)
!4990 = !DILocation(line: 1384, column: 1, scope: !4726)
!4991 = !DILocalVariable(name: "l", scope: !231, file: !232, line: 314, type: !530)
!4992 = !DILocation(line: 314, column: 12, scope: !231)
!4993 = !DILocation(line: 316, column: 5, scope: !231)
!4994 = !DILocation(line: 318, column: 25, scope: !231)
!4995 = !DILocation(line: 318, column: 11, scope: !231)
!4996 = !DILocation(line: 318, column: 5, scope: !231)
!4997 = !DILocation(line: 320, column: 9, scope: !4998)
!4998 = distinct !DILexicalBlock(scope: !231, file: !232, line: 320, column: 9)
!4999 = !DILocation(line: 320, column: 9, scope: !231)
!5000 = !DILocalVariable(name: "user", scope: !5001, file: !232, line: 321, type: !437)
!5001 = distinct !DILexicalBlock(scope: !4998, file: !232, line: 320, column: 30)
!5002 = !DILocation(line: 321, column: 21, scope: !5001)
!5003 = !DILocation(line: 321, column: 28, scope: !5001)
!5004 = !DILocalVariable(name: "password", scope: !5001, file: !232, line: 322, type: !437)
!5005 = !DILocation(line: 322, column: 21, scope: !5001)
!5006 = !DILocation(line: 322, column: 32, scope: !5001)
!5007 = !DILocalVariable(name: "hostname", scope: !5001, file: !232, line: 323, type: !437)
!5008 = !DILocation(line: 323, column: 21, scope: !5001)
!5009 = !DILocation(line: 323, column: 32, scope: !5001)
!5010 = !DILocalVariable(name: "db", scope: !5001, file: !232, line: 324, type: !437)
!5011 = !DILocation(line: 324, column: 21, scope: !5001)
!5012 = !DILocation(line: 324, column: 26, scope: !5001)
!5013 = !DILocation(line: 326, column: 14, scope: !5014)
!5014 = distinct !DILexicalBlock(scope: !5001, file: !232, line: 326, column: 13)
!5015 = !DILocation(line: 326, column: 13, scope: !5001)
!5016 = !DILocation(line: 327, column: 13, scope: !5014)
!5017 = !DILocation(line: 328, column: 14, scope: !5018)
!5018 = distinct !DILexicalBlock(scope: !5001, file: !232, line: 328, column: 13)
!5019 = !DILocation(line: 328, column: 13, scope: !5001)
!5020 = !DILocation(line: 329, column: 13, scope: !5018)
!5021 = !DILocation(line: 330, column: 14, scope: !5022)
!5022 = distinct !DILexicalBlock(scope: !5001, file: !232, line: 330, column: 13)
!5023 = !DILocation(line: 330, column: 13, scope: !5001)
!5024 = !DILocation(line: 331, column: 13, scope: !5022)
!5025 = !DILocation(line: 332, column: 14, scope: !5026)
!5026 = distinct !DILexicalBlock(scope: !5001, file: !232, line: 332, column: 13)
!5027 = !DILocation(line: 332, column: 13, scope: !5001)
!5028 = !DILocation(line: 333, column: 13, scope: !5026)
!5029 = !DILocation(line: 335, column: 37, scope: !5001)
!5030 = !DILocation(line: 335, column: 47, scope: !5001)
!5031 = !DILocation(line: 335, column: 53, scope: !5001)
!5032 = !DILocation(line: 335, column: 63, scope: !5001)
!5033 = !DILocation(line: 335, column: 20, scope: !5001)
!5034 = !DILocation(line: 335, column: 18, scope: !5001)
!5035 = !DILocation(line: 336, column: 5, scope: !5001)
!5036 = !DILocalVariable(name: "pragmas", scope: !5037, file: !232, line: 337, type: !5038)
!5037 = distinct !DILexicalBlock(scope: !4998, file: !232, line: 336, column: 12)
!5038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !326)
!5039 = !DILocation(line: 337, column: 21, scope: !5037)
!5040 = !DILocation(line: 343, column: 62, scope: !5037)
!5041 = !DILocation(line: 343, column: 20, scope: !5037)
!5042 = !DILocation(line: 343, column: 18, scope: !5037)
!5043 = !DILocation(line: 346, column: 10, scope: !5044)
!5044 = distinct !DILexicalBlock(scope: !231, file: !232, line: 346, column: 9)
!5045 = !DILocation(line: 346, column: 9, scope: !231)
!5046 = !DILocation(line: 347, column: 9, scope: !5044)
!5047 = !DILocation(line: 349, column: 19, scope: !231)
!5048 = !DILocation(line: 349, column: 17, scope: !231)
!5049 = !DILocation(line: 350, column: 10, scope: !5050)
!5050 = distinct !DILexicalBlock(scope: !231, file: !232, line: 350, column: 9)
!5051 = !DILocation(line: 350, column: 9, scope: !231)
!5052 = !DILocation(line: 351, column: 9, scope: !5050)
!5053 = !DILocation(line: 353, column: 5, scope: !231)
!5054 = !DILocation(line: 354, column: 5, scope: !231)
!5055 = !DILocation(line: 356, column: 19, scope: !231)
!5056 = !DILocation(line: 356, column: 5, scope: !231)
!5057 = !DILocation(line: 357, column: 19, scope: !231)
!5058 = !DILocation(line: 357, column: 5, scope: !231)
!5059 = !DILocation(line: 358, column: 5, scope: !231)
!5060 = !DILocation(line: 360, column: 5, scope: !231)
!5061 = distinct !DISubprogram(name: "json", scope: !232, file: !232, line: 92, type: !497, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5062 = !DILocalVariable(name: "request", arg: 1, scope: !5061, file: !232, line: 92, type: !500)
!5063 = !DILocation(line: 92, column: 22, scope: !5061)
!5064 = !DILocalVariable(name: "response", arg: 2, scope: !5061, file: !232, line: 93, type: !636)
!5065 = !DILocation(line: 93, column: 23, scope: !5061)
!5066 = !DILocalVariable(name: "data", arg: 3, scope: !5061, file: !232, line: 94, type: !468)
!5067 = !DILocation(line: 94, column: 12, scope: !5061)
!5068 = !DILocalVariable(name: "hello", scope: !5061, file: !232, line: 96, type: !5069)
!5069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5070, size: 64)
!5070 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonNode", file: !290, line: 38, baseType: !5071)
!5071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "JsonNode", file: !290, line: 40, size: 448, elements: !5072)
!5072 = !{!5073, !5074, !5075, !5076, !5077, !5078}
!5073 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !5071, file: !290, line: 43, baseType: !5069, size: 64)
!5074 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !5071, file: !290, line: 44, baseType: !5069, size: 64, offset: 64)
!5075 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5071, file: !290, line: 44, baseType: !5069, size: 64, offset: 128)
!5076 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !5071, file: !290, line: 47, baseType: !319, size: 64, offset: 192)
!5077 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !5071, file: !290, line: 49, baseType: !1083, size: 32, offset: 256)
!5078 = !DIDerivedType(tag: DW_TAG_member, scope: !5071, file: !290, line: 50, baseType: !5079, size: 128, offset: 320)
!5079 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5071, file: !290, line: 50, size: 128, elements: !5080)
!5080 = !{!5081, !5082, !5083, !5084}
!5081 = !DIDerivedType(tag: DW_TAG_member, name: "bool_", scope: !5079, file: !290, line: 52, baseType: !473, size: 8)
!5082 = !DIDerivedType(tag: DW_TAG_member, name: "string_", scope: !5079, file: !290, line: 55, baseType: !319, size: 64)
!5083 = !DIDerivedType(tag: DW_TAG_member, name: "number_", scope: !5079, file: !290, line: 58, baseType: !1090, size: 64)
!5084 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !5079, file: !290, line: 64, baseType: !5085, size: 128)
!5085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !5079, file: !290, line: 62, size: 128, elements: !5086)
!5086 = !{!5087, !5088}
!5087 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !5085, file: !290, line: 63, baseType: !5069, size: 64)
!5088 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !5085, file: !290, line: 63, baseType: !5069, size: 64, offset: 64)
!5089 = !DILocation(line: 96, column: 15, scope: !5061)
!5090 = !DILocation(line: 96, column: 23, scope: !5061)
!5091 = !DILocation(line: 97, column: 9, scope: !5092)
!5092 = distinct !DILexicalBlock(scope: !5061, file: !232, line: 97, column: 9)
!5093 = !DILocation(line: 97, column: 9, scope: !5061)
!5094 = !DILocation(line: 98, column: 9, scope: !5092)
!5095 = !DILocation(line: 100, column: 24, scope: !5061)
!5096 = !DILocation(line: 100, column: 42, scope: !5061)
!5097 = !DILocation(line: 100, column: 5, scope: !5061)
!5098 = !DILocation(line: 102, column: 26, scope: !5061)
!5099 = !DILocation(line: 102, column: 36, scope: !5061)
!5100 = !DILocation(line: 102, column: 12, scope: !5061)
!5101 = !DILocation(line: 102, column: 5, scope: !5061)
!5102 = !DILocation(line: 103, column: 1, scope: !5061)
!5103 = distinct !DISubprogram(name: "db", scope: !232, file: !232, line: 131, type: !497, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5104 = !DILocalVariable(name: "request", arg: 1, scope: !5103, file: !232, line: 131, type: !500)
!5105 = !DILocation(line: 131, column: 20, scope: !5103)
!5106 = !DILocalVariable(name: "response", arg: 2, scope: !5103, file: !232, line: 132, type: !636)
!5107 = !DILocation(line: 132, column: 21, scope: !5103)
!5108 = !DILocalVariable(name: "data", arg: 3, scope: !5103, file: !232, line: 133, type: !468)
!5109 = !DILocation(line: 133, column: 10, scope: !5103)
!5110 = !DILocalVariable(name: "rows", scope: !5103, file: !232, line: 135, type: !5111)
!5111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5112, size: 192, elements: !5121)
!5112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "db_row", file: !388, line: 27, size: 192, elements: !5113)
!5113 = !{!5114, !5119, !5120}
!5114 = !DIDerivedType(tag: DW_TAG_member, name: "u", scope: !5112, file: !388, line: 31, baseType: !5115, size: 64)
!5115 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !5112, file: !388, line: 28, size: 64, elements: !5116)
!5116 = !{!5117, !5118}
!5117 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !5115, file: !388, line: 29, baseType: !319, size: 64)
!5118 = !DIDerivedType(tag: DW_TAG_member, name: "i", scope: !5115, file: !388, line: 30, baseType: !235, size: 32)
!5119 = !DIDerivedType(tag: DW_TAG_member, name: "kind", scope: !5112, file: !388, line: 32, baseType: !4, size: 8, offset: 64)
!5120 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_length", scope: !5112, file: !388, line: 33, baseType: !463, size: 64, offset: 128)
!5121 = !{!5122}
!5122 = !DISubrange(count: 1)
!5123 = !DILocation(line: 135, column: 19, scope: !5103)
!5124 = !DILocalVariable(name: "results", scope: !5103, file: !232, line: 136, type: !5125)
!5125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5112, size: 384, elements: !193)
!5126 = !DILocation(line: 136, column: 19, scope: !5103)
!5127 = !DILocalVariable(name: "stmt", scope: !5103, file: !232, line: 137, type: !5128)
!5128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5129, size: 64)
!5129 = !DICompositeType(tag: DW_TAG_structure_type, name: "db_stmt", file: !388, line: 25, flags: DIFlagFwdDecl)
!5130 = !DILocation(line: 137, column: 21, scope: !5103)
!5131 = !DILocation(line: 137, column: 44, scope: !5103)
!5132 = !DILocation(line: 137, column: 28, scope: !5103)
!5133 = !DILocation(line: 139, column: 9, scope: !5134)
!5134 = distinct !DILexicalBlock(scope: !5103, file: !232, line: 139, column: 9)
!5135 = !DILocation(line: 139, column: 9, scope: !5103)
!5136 = !DILocation(line: 140, column: 9, scope: !5134)
!5137 = !DILocalVariable(name: "object", scope: !5103, file: !232, line: 142, type: !5069)
!5138 = !DILocation(line: 142, column: 15, scope: !5103)
!5139 = !DILocation(line: 142, column: 33, scope: !5103)
!5140 = !DILocation(line: 142, column: 39, scope: !5103)
!5141 = !DILocation(line: 142, column: 45, scope: !5103)
!5142 = !DILocation(line: 142, column: 24, scope: !5103)
!5143 = !DILocation(line: 143, column: 22, scope: !5103)
!5144 = !DILocation(line: 143, column: 5, scope: !5103)
!5145 = !DILocation(line: 145, column: 9, scope: !5146)
!5146 = distinct !DILexicalBlock(scope: !5103, file: !232, line: 145, column: 9)
!5147 = !DILocation(line: 145, column: 9, scope: !5103)
!5148 = !DILocation(line: 146, column: 9, scope: !5146)
!5149 = !DILocation(line: 148, column: 26, scope: !5103)
!5150 = !DILocation(line: 148, column: 36, scope: !5103)
!5151 = !DILocation(line: 148, column: 12, scope: !5103)
!5152 = !DILocation(line: 148, column: 5, scope: !5103)
!5153 = !DILocation(line: 149, column: 1, scope: !5103)
!5154 = distinct !DISubprogram(name: "queries", scope: !232, file: !232, line: 152, type: !497, scopeLine: 155, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5155 = !DILocalVariable(name: "request", arg: 1, scope: !5154, file: !232, line: 152, type: !500)
!5156 = !DILocation(line: 152, column: 25, scope: !5154)
!5157 = !DILocalVariable(name: "response", arg: 2, scope: !5154, file: !232, line: 153, type: !636)
!5158 = !DILocation(line: 153, column: 26, scope: !5154)
!5159 = !DILocalVariable(name: "data", arg: 3, scope: !5154, file: !232, line: 154, type: !468)
!5160 = !DILocation(line: 154, column: 15, scope: !5154)
!5161 = !DILocalVariable(name: "queries_str", scope: !5154, file: !232, line: 156, type: !437)
!5162 = !DILocation(line: 156, column: 17, scope: !5154)
!5163 = !DILocation(line: 156, column: 60, scope: !5154)
!5164 = !DILocation(line: 156, column: 31, scope: !5154)
!5165 = !DILocation(line: 158, column: 9, scope: !5166)
!5166 = distinct !DILexicalBlock(scope: !5154, file: !232, line: 158, column: 9)
!5167 = !DILocation(line: 158, column: 9, scope: !5154)
!5168 = !DILocation(line: 159, column: 9, scope: !5166)
!5169 = !DILocalVariable(name: "queries", scope: !5154, file: !232, line: 161, type: !444)
!5170 = !DILocation(line: 161, column: 10, scope: !5154)
!5171 = !DILocation(line: 161, column: 31, scope: !5154)
!5172 = !DILocation(line: 161, column: 20, scope: !5154)
!5173 = !DILocation(line: 162, column: 9, scope: !5174)
!5174 = distinct !DILexicalBlock(scope: !5154, file: !232, line: 162, column: 9)
!5175 = !DILocation(line: 162, column: 9, scope: !5154)
!5176 = !DILocation(line: 163, column: 17, scope: !5174)
!5177 = !DILocation(line: 163, column: 9, scope: !5174)
!5178 = !DILocation(line: 164, column: 14, scope: !5179)
!5179 = distinct !DILexicalBlock(scope: !5174, file: !232, line: 164, column: 14)
!5180 = !DILocation(line: 164, column: 14, scope: !5174)
!5181 = !DILocation(line: 165, column: 17, scope: !5179)
!5182 = !DILocation(line: 165, column: 9, scope: !5179)
!5183 = !DILocalVariable(name: "stmt", scope: !5154, file: !232, line: 167, type: !5128)
!5184 = !DILocation(line: 167, column: 21, scope: !5154)
!5185 = !DILocation(line: 167, column: 44, scope: !5154)
!5186 = !DILocation(line: 167, column: 28, scope: !5154)
!5187 = !DILocation(line: 169, column: 9, scope: !5188)
!5188 = distinct !DILexicalBlock(scope: !5154, file: !232, line: 169, column: 9)
!5189 = !DILocation(line: 169, column: 9, scope: !5154)
!5190 = !DILocation(line: 170, column: 9, scope: !5188)
!5191 = !DILocalVariable(name: "array", scope: !5154, file: !232, line: 172, type: !5069)
!5192 = !DILocation(line: 172, column: 15, scope: !5154)
!5193 = !DILocation(line: 172, column: 23, scope: !5154)
!5194 = !DILocation(line: 173, column: 9, scope: !5195)
!5195 = distinct !DILexicalBlock(scope: !5154, file: !232, line: 173, column: 9)
!5196 = !DILocation(line: 173, column: 9, scope: !5154)
!5197 = !DILocation(line: 174, column: 9, scope: !5195)
!5198 = !DILocalVariable(name: "rows", scope: !5154, file: !232, line: 176, type: !5111)
!5199 = !DILocation(line: 176, column: 19, scope: !5154)
!5200 = !DILocalVariable(name: "results", scope: !5154, file: !232, line: 177, type: !5125)
!5201 = !DILocation(line: 177, column: 19, scope: !5154)
!5202 = !DILocation(line: 178, column: 5, scope: !5154)
!5203 = !DILocation(line: 178, column: 19, scope: !5154)
!5204 = !DILocalVariable(name: "object", scope: !5205, file: !232, line: 179, type: !5069)
!5205 = distinct !DILexicalBlock(scope: !5154, file: !232, line: 178, column: 23)
!5206 = !DILocation(line: 179, column: 19, scope: !5205)
!5207 = !DILocation(line: 179, column: 37, scope: !5205)
!5208 = !DILocation(line: 179, column: 43, scope: !5205)
!5209 = !DILocation(line: 179, column: 49, scope: !5205)
!5210 = !DILocation(line: 179, column: 28, scope: !5205)
!5211 = !DILocation(line: 181, column: 13, scope: !5212)
!5212 = distinct !DILexicalBlock(scope: !5205, file: !232, line: 181, column: 13)
!5213 = !DILocation(line: 181, column: 13, scope: !5205)
!5214 = !DILocation(line: 182, column: 13, scope: !5212)
!5215 = !DILocation(line: 184, column: 29, scope: !5205)
!5216 = !DILocation(line: 184, column: 36, scope: !5205)
!5217 = !DILocation(line: 184, column: 9, scope: !5205)
!5218 = distinct !{!5218, !5202, !5219, !1257}
!5219 = !DILocation(line: 185, column: 5, scope: !5154)
!5220 = !DILocation(line: 187, column: 22, scope: !5154)
!5221 = !DILocation(line: 187, column: 5, scope: !5154)
!5222 = !DILocation(line: 188, column: 26, scope: !5154)
!5223 = !DILocation(line: 188, column: 36, scope: !5154)
!5224 = !DILocation(line: 188, column: 12, scope: !5154)
!5225 = !DILocation(line: 188, column: 5, scope: !5154)
!5226 = !DILabel(scope: !5154, name: "out_array", file: !232, line: 190)
!5227 = !DILocation(line: 190, column: 1, scope: !5154)
!5228 = !DILocation(line: 191, column: 17, scope: !5154)
!5229 = !DILocation(line: 191, column: 5, scope: !5154)
!5230 = !DILabel(scope: !5154, name: "out_no_array", file: !232, line: 192)
!5231 = !DILocation(line: 192, column: 1, scope: !5154)
!5232 = !DILocation(line: 193, column: 22, scope: !5154)
!5233 = !DILocation(line: 193, column: 5, scope: !5154)
!5234 = !DILocation(line: 194, column: 5, scope: !5154)
!5235 = !DILocation(line: 195, column: 1, scope: !5154)
!5236 = distinct !DISubprogram(name: "plaintext", scope: !232, file: !232, line: 198, type: !497, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5237 = !DILocalVariable(name: "request", arg: 1, scope: !5236, file: !232, line: 198, type: !500)
!5238 = !DILocation(line: 198, column: 27, scope: !5236)
!5239 = !DILocalVariable(name: "response", arg: 2, scope: !5236, file: !232, line: 199, type: !636)
!5240 = !DILocation(line: 199, column: 28, scope: !5236)
!5241 = !DILocalVariable(name: "data", arg: 3, scope: !5236, file: !232, line: 200, type: !468)
!5242 = !DILocation(line: 200, column: 17, scope: !5236)
!5243 = !DILocation(line: 202, column: 23, scope: !5236)
!5244 = !DILocation(line: 202, column: 33, scope: !5236)
!5245 = !DILocation(line: 202, column: 5, scope: !5236)
!5246 = !DILocation(line: 204, column: 5, scope: !5236)
!5247 = !DILocation(line: 204, column: 15, scope: !5236)
!5248 = !DILocation(line: 204, column: 25, scope: !5236)
!5249 = !DILocation(line: 205, column: 5, scope: !5236)
!5250 = distinct !DISubprogram(name: "fortunes", scope: !232, file: !232, line: 289, type: !497, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5251 = !DILocalVariable(name: "request", arg: 1, scope: !5250, file: !232, line: 289, type: !500)
!5252 = !DILocation(line: 289, column: 26, scope: !5250)
!5253 = !DILocalVariable(name: "response", arg: 2, scope: !5250, file: !232, line: 290, type: !636)
!5254 = !DILocation(line: 290, column: 27, scope: !5250)
!5255 = !DILocalVariable(name: "data", arg: 3, scope: !5250, file: !232, line: 291, type: !468)
!5256 = !DILocation(line: 291, column: 16, scope: !5250)
!5257 = !DILocalVariable(name: "fortune", scope: !5250, file: !232, line: 293, type: !302)
!5258 = !DILocation(line: 293, column: 20, scope: !5250)
!5259 = !DILocation(line: 295, column: 9, scope: !5260)
!5260 = distinct !DILexicalBlock(scope: !5250, file: !232, line: 295, column: 9)
!5261 = !DILocation(line: 295, column: 9, scope: !5250)
!5262 = !DILocation(line: 297, column: 8, scope: !5260)
!5263 = !DILocation(line: 299, column: 5, scope: !5250)
!5264 = !DILocation(line: 299, column: 15, scope: !5250)
!5265 = !DILocation(line: 299, column: 25, scope: !5250)
!5266 = !DILocation(line: 300, column: 5, scope: !5250)
!5267 = !DILocation(line: 301, column: 1, scope: !5250)
!5268 = distinct !DISubprogram(name: "db_query", scope: !232, file: !232, line: 106, type: !5269, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5269 = !DISubroutineType(types: !5270)
!5270 = !{!5069, !5128, !5271, !5271}
!5271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5112, size: 64)
!5272 = !DILocalVariable(name: "stmt", arg: 1, scope: !5268, file: !232, line: 106, type: !5128)
!5273 = !DILocation(line: 106, column: 26, scope: !5268)
!5274 = !DILocalVariable(name: "rows", arg: 2, scope: !5268, file: !232, line: 106, type: !5271)
!5275 = !DILocation(line: 106, column: 46, scope: !5268)
!5276 = !DILocalVariable(name: "results", arg: 3, scope: !5268, file: !232, line: 106, type: !5271)
!5277 = !DILocation(line: 106, column: 68, scope: !5268)
!5278 = !DILocalVariable(name: "object", scope: !5268, file: !232, line: 108, type: !5069)
!5279 = !DILocation(line: 108, column: 15, scope: !5268)
!5280 = !DILocalVariable(name: "id", scope: !5268, file: !232, line: 109, type: !235)
!5281 = !DILocation(line: 109, column: 9, scope: !5268)
!5282 = !DILocation(line: 109, column: 14, scope: !5268)
!5283 = !DILocation(line: 109, column: 21, scope: !5268)
!5284 = !DILocation(line: 111, column: 19, scope: !5268)
!5285 = !DILocation(line: 111, column: 5, scope: !5268)
!5286 = !DILocation(line: 111, column: 13, scope: !5268)
!5287 = !DILocation(line: 111, column: 17, scope: !5268)
!5288 = !DILocation(line: 113, column: 9, scope: !5289)
!5289 = distinct !DILexicalBlock(scope: !5268, file: !232, line: 113, column: 9)
!5290 = !DILocation(line: 113, column: 9, scope: !5268)
!5291 = !DILocation(line: 114, column: 9, scope: !5289)
!5292 = !DILocation(line: 116, column: 9, scope: !5293)
!5293 = distinct !DILexicalBlock(scope: !5268, file: !232, line: 116, column: 9)
!5294 = !DILocation(line: 116, column: 9, scope: !5268)
!5295 = !DILocation(line: 117, column: 9, scope: !5293)
!5296 = !DILocation(line: 119, column: 14, scope: !5268)
!5297 = !DILocation(line: 119, column: 12, scope: !5268)
!5298 = !DILocation(line: 120, column: 9, scope: !5299)
!5299 = distinct !DILexicalBlock(scope: !5268, file: !232, line: 120, column: 9)
!5300 = !DILocation(line: 120, column: 9, scope: !5268)
!5301 = !DILocation(line: 121, column: 9, scope: !5299)
!5302 = !DILocation(line: 123, column: 24, scope: !5268)
!5303 = !DILocation(line: 123, column: 52, scope: !5268)
!5304 = !DILocation(line: 123, column: 38, scope: !5268)
!5305 = !DILocation(line: 123, column: 5, scope: !5268)
!5306 = !DILocation(line: 124, column: 24, scope: !5268)
!5307 = !DILocation(line: 124, column: 62, scope: !5268)
!5308 = !DILocation(line: 124, column: 73, scope: !5268)
!5309 = !DILocation(line: 124, column: 75, scope: !5268)
!5310 = !DILocation(line: 124, column: 48, scope: !5268)
!5311 = !DILocation(line: 124, column: 5, scope: !5268)
!5312 = !DILabel(scope: !5268, name: "out", file: !232, line: 126)
!5313 = !DILocation(line: 126, column: 1, scope: !5268)
!5314 = !DILocation(line: 127, column: 12, scope: !5268)
!5315 = !DILocation(line: 127, column: 5, scope: !5268)
!5316 = distinct !DISubprogram(name: "json_response", scope: !232, file: !232, line: 74, type: !5317, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5317 = !DISubroutineType(types: !5318)
!5318 = !{!499, !636, !5069}
!5319 = !DILocalVariable(name: "response", arg: 1, scope: !5316, file: !232, line: 74, type: !636)
!5320 = !DILocation(line: 74, column: 32, scope: !5316)
!5321 = !DILocalVariable(name: "node", arg: 2, scope: !5316, file: !232, line: 74, type: !5069)
!5322 = !DILocation(line: 74, column: 52, scope: !5316)
!5323 = !DILocalVariable(name: "length", scope: !5316, file: !232, line: 76, type: !463)
!5324 = !DILocation(line: 76, column: 12, scope: !5316)
!5325 = !DILocalVariable(name: "serialized", scope: !5316, file: !232, line: 77, type: !319)
!5326 = !DILocation(line: 77, column: 11, scope: !5316)
!5327 = !DILocation(line: 79, column: 40, scope: !5316)
!5328 = !DILocation(line: 79, column: 18, scope: !5316)
!5329 = !DILocation(line: 79, column: 16, scope: !5316)
!5330 = !DILocation(line: 80, column: 17, scope: !5316)
!5331 = !DILocation(line: 80, column: 5, scope: !5316)
!5332 = !DILocation(line: 81, column: 9, scope: !5333)
!5333 = distinct !DILexicalBlock(scope: !5316, file: !232, line: 81, column: 9)
!5334 = !DILocation(line: 81, column: 9, scope: !5316)
!5335 = !DILocation(line: 82, column: 9, scope: !5333)
!5336 = !DILocation(line: 84, column: 16, scope: !5316)
!5337 = !DILocation(line: 84, column: 26, scope: !5316)
!5338 = !DILocation(line: 84, column: 34, scope: !5316)
!5339 = !DILocation(line: 84, column: 46, scope: !5316)
!5340 = !DILocation(line: 84, column: 5, scope: !5316)
!5341 = !DILocation(line: 85, column: 10, scope: !5316)
!5342 = !DILocation(line: 85, column: 5, scope: !5316)
!5343 = !DILocation(line: 87, column: 5, scope: !5316)
!5344 = !DILocation(line: 87, column: 15, scope: !5316)
!5345 = !DILocation(line: 87, column: 25, scope: !5316)
!5346 = !DILocation(line: 88, column: 5, scope: !5316)
!5347 = !DILocation(line: 89, column: 1, scope: !5316)
!5348 = !DILocalVariable(name: "coro", arg: 1, scope: !479, file: !232, line: 243, type: !313)
!5349 = !DILocation(line: 243, column: 43, scope: !479)
!5350 = !DILocalVariable(name: "fortune_buffer", scope: !479, file: !232, line: 246, type: !5351)
!5351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !5352)
!5352 = !{!5353}
!5353 = !DISubrange(count: 256)
!5354 = !DILocation(line: 246, column: 10, scope: !479)
!5355 = !DILocalVariable(name: "fortune", scope: !479, file: !232, line: 247, type: !5356)
!5356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!5357 = !DILocation(line: 247, column: 21, scope: !479)
!5358 = !DILocalVariable(name: "fortunes", scope: !479, file: !232, line: 248, type: !5359)
!5359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "array", file: !1117, line: 9, size: 256, elements: !5360)
!5360 = !{!5361, !5362, !5363, !5364}
!5361 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !5359, file: !1117, line: 10, baseType: !914, size: 64)
!5362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !5359, file: !1117, line: 11, baseType: !463, size: 64, offset: 64)
!5363 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !5359, file: !1117, line: 12, baseType: !463, size: 64, offset: 128)
!5364 = !DIDerivedType(tag: DW_TAG_member, name: "step", scope: !5359, file: !1117, line: 13, baseType: !463, size: 64, offset: 192)
!5365 = !DILocation(line: 248, column: 18, scope: !479)
!5366 = !DILocalVariable(name: "stmt", scope: !479, file: !232, line: 249, type: !5128)
!5367 = !DILocation(line: 249, column: 21, scope: !479)
!5368 = !DILocalVariable(name: "i", scope: !479, file: !232, line: 250, type: !463)
!5369 = !DILocation(line: 250, column: 12, scope: !479)
!5370 = !DILocation(line: 252, column: 28, scope: !479)
!5371 = !DILocation(line: 252, column: 12, scope: !479)
!5372 = !DILocation(line: 252, column: 10, scope: !479)
!5373 = !DILocation(line: 253, column: 9, scope: !5374)
!5374 = distinct !DILexicalBlock(scope: !479, file: !232, line: 253, column: 9)
!5375 = !DILocation(line: 253, column: 9, scope: !479)
!5376 = !DILocation(line: 254, column: 9, scope: !5374)
!5377 = !DILocation(line: 256, column: 5, scope: !479)
!5378 = !DILocalVariable(name: "results", scope: !479, file: !232, line: 258, type: !5379)
!5379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5112, size: 576, elements: !184)
!5380 = !DILocation(line: 258, column: 19, scope: !479)
!5381 = !DILocation(line: 258, column: 31, scope: !479)
!5382 = !DILocation(line: 259, column: 9, scope: !479)
!5383 = !DILocation(line: 260, column: 9, scope: !479)
!5384 = !DILocation(line: 260, column: 31, scope: !479)
!5385 = !DILocation(line: 260, column: 26, scope: !479)
!5386 = !DILocation(line: 263, column: 5, scope: !479)
!5387 = !DILocation(line: 263, column: 25, scope: !479)
!5388 = !DILocation(line: 263, column: 31, scope: !479)
!5389 = !DILocation(line: 263, column: 12, scope: !479)
!5390 = !DILocation(line: 264, column: 29, scope: !5391)
!5391 = distinct !DILexicalBlock(scope: !5392, file: !232, line: 264, column: 13)
!5392 = distinct !DILexicalBlock(scope: !479, file: !232, line: 263, column: 41)
!5393 = !DILocation(line: 264, column: 46, scope: !5391)
!5394 = !DILocation(line: 264, column: 57, scope: !5391)
!5395 = !DILocation(line: 264, column: 59, scope: !5391)
!5396 = !DILocation(line: 264, column: 62, scope: !5391)
!5397 = !DILocation(line: 264, column: 73, scope: !5391)
!5398 = !DILocation(line: 264, column: 75, scope: !5391)
!5399 = !DILocation(line: 264, column: 14, scope: !5391)
!5400 = !DILocation(line: 264, column: 13, scope: !5392)
!5401 = !DILocation(line: 265, column: 13, scope: !5391)
!5402 = distinct !{!5402, !5386, !5403, !1257}
!5403 = !DILocation(line: 266, column: 5, scope: !479)
!5404 = !DILocation(line: 268, column: 25, scope: !5405)
!5405 = distinct !DILexicalBlock(scope: !479, file: !232, line: 268, column: 9)
!5406 = !DILocation(line: 268, column: 10, scope: !5405)
!5407 = !DILocation(line: 268, column: 9, scope: !479)
!5408 = !DILocation(line: 270, column: 9, scope: !5405)
!5409 = !DILocation(line: 272, column: 5, scope: !479)
!5410 = !DILocation(line: 274, column: 29, scope: !479)
!5411 = !DILocation(line: 274, column: 15, scope: !479)
!5412 = !DILocation(line: 274, column: 13, scope: !479)
!5413 = !DILocation(line: 275, column: 12, scope: !5414)
!5414 = distinct !DILexicalBlock(scope: !479, file: !232, line: 275, column: 5)
!5415 = !DILocation(line: 275, column: 10, scope: !5414)
!5416 = !DILocation(line: 275, column: 17, scope: !5417)
!5417 = distinct !DILexicalBlock(scope: !5414, file: !232, line: 275, column: 5)
!5418 = !DILocation(line: 275, column: 30, scope: !5417)
!5419 = !DILocation(line: 275, column: 19, scope: !5417)
!5420 = !DILocation(line: 275, column: 5, scope: !5414)
!5421 = !DILocalVariable(name: "f", scope: !5422, file: !232, line: 276, type: !5356)
!5422 = distinct !DILexicalBlock(scope: !5417, file: !232, line: 275, column: 42)
!5423 = !DILocation(line: 276, column: 25, scope: !5422)
!5424 = !DILocation(line: 276, column: 38, scope: !5422)
!5425 = !DILocation(line: 276, column: 44, scope: !5422)
!5426 = !DILocation(line: 276, column: 29, scope: !5422)
!5427 = !DILocation(line: 277, column: 28, scope: !5422)
!5428 = !DILocation(line: 277, column: 31, scope: !5422)
!5429 = !DILocation(line: 277, column: 36, scope: !5422)
!5430 = !DILocation(line: 277, column: 9, scope: !5422)
!5431 = !DILocation(line: 277, column: 18, scope: !5422)
!5432 = !DILocation(line: 277, column: 23, scope: !5422)
!5433 = !DILocation(line: 277, column: 26, scope: !5422)
!5434 = !DILocation(line: 278, column: 33, scope: !5422)
!5435 = !DILocation(line: 278, column: 36, scope: !5422)
!5436 = !DILocation(line: 278, column: 41, scope: !5422)
!5437 = !DILocation(line: 278, column: 9, scope: !5422)
!5438 = !DILocation(line: 278, column: 18, scope: !5422)
!5439 = !DILocation(line: 278, column: 23, scope: !5422)
!5440 = !DILocation(line: 278, column: 31, scope: !5422)
!5441 = !DILocation(line: 279, column: 20, scope: !5422)
!5442 = !DILocation(line: 279, column: 9, scope: !5422)
!5443 = !DILocation(line: 280, column: 5, scope: !5422)
!5444 = !DILocation(line: 275, column: 38, scope: !5417)
!5445 = !DILocation(line: 275, column: 5, scope: !5417)
!5446 = distinct !{!5446, !5420, !5447, !1257}
!5447 = !DILocation(line: 280, column: 5, scope: !5414)
!5448 = !DILabel(scope: !479, name: "out", file: !232, line: 282)
!5449 = !DILocation(line: 282, column: 1, scope: !479)
!5450 = !DILocation(line: 283, column: 5, scope: !479)
!5451 = !DILocation(line: 284, column: 22, scope: !479)
!5452 = !DILocation(line: 284, column: 5, scope: !479)
!5453 = !DILocation(line: 285, column: 5, scope: !479)
!5454 = !DILocation(line: 286, column: 1, scope: !479)
!5455 = distinct !DISubprogram(name: "append_fortune", scope: !232, file: !232, line: 226, type: !5456, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5456 = !DISubroutineType(types: !5457)
!5457 = !{!473, !313, !5458, !235, !437}
!5458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5359, size: 64)
!5459 = !DILocalVariable(name: "coro", arg: 1, scope: !5455, file: !232, line: 226, type: !313)
!5460 = !DILocation(line: 226, column: 36, scope: !5455)
!5461 = !DILocalVariable(name: "fortunes", arg: 2, scope: !5455, file: !232, line: 226, type: !5458)
!5462 = !DILocation(line: 226, column: 56, scope: !5455)
!5463 = !DILocalVariable(name: "id", arg: 3, scope: !5455, file: !232, line: 227, type: !235)
!5464 = !DILocation(line: 227, column: 32, scope: !5455)
!5465 = !DILocalVariable(name: "message", arg: 4, scope: !5455, file: !232, line: 227, type: !437)
!5466 = !DILocation(line: 227, column: 48, scope: !5455)
!5467 = !DILocalVariable(name: "fortune", scope: !5455, file: !232, line: 229, type: !5356)
!5468 = !DILocation(line: 229, column: 21, scope: !5455)
!5469 = !DILocation(line: 231, column: 27, scope: !5455)
!5470 = !DILocation(line: 231, column: 15, scope: !5455)
!5471 = !DILocation(line: 231, column: 13, scope: !5455)
!5472 = !DILocation(line: 232, column: 9, scope: !5473)
!5473 = distinct !DILexicalBlock(scope: !5455, file: !232, line: 232, column: 9)
!5474 = !DILocation(line: 232, column: 9, scope: !5455)
!5475 = !DILocation(line: 233, column: 9, scope: !5473)
!5476 = !DILocation(line: 235, column: 24, scope: !5455)
!5477 = !DILocation(line: 235, column: 5, scope: !5455)
!5478 = !DILocation(line: 235, column: 14, scope: !5455)
!5479 = !DILocation(line: 235, column: 19, scope: !5455)
!5480 = !DILocation(line: 235, column: 22, scope: !5455)
!5481 = !DILocation(line: 236, column: 41, scope: !5455)
!5482 = !DILocation(line: 236, column: 47, scope: !5455)
!5483 = !DILocation(line: 236, column: 29, scope: !5455)
!5484 = !DILocation(line: 236, column: 5, scope: !5455)
!5485 = !DILocation(line: 236, column: 14, scope: !5455)
!5486 = !DILocation(line: 236, column: 19, scope: !5455)
!5487 = !DILocation(line: 236, column: 27, scope: !5455)
!5488 = !DILocation(line: 237, column: 9, scope: !5489)
!5489 = distinct !DILexicalBlock(scope: !5455, file: !232, line: 237, column: 9)
!5490 = !DILocation(line: 237, column: 9, scope: !5455)
!5491 = !DILocation(line: 238, column: 9, scope: !5489)
!5492 = !DILocation(line: 240, column: 25, scope: !5455)
!5493 = !DILocation(line: 240, column: 35, scope: !5455)
!5494 = !DILocation(line: 240, column: 12, scope: !5455)
!5495 = !DILocation(line: 240, column: 44, scope: !5455)
!5496 = !DILocation(line: 240, column: 5, scope: !5455)
!5497 = !DILocation(line: 241, column: 1, scope: !5455)
!5498 = distinct !DISubprogram(name: "fortune_compare", scope: !232, file: !232, line: 208, type: !1315, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !236, retainedNodes: !480)
!5499 = !DILocalVariable(name: "a", arg: 1, scope: !5498, file: !232, line: 208, type: !1148)
!5500 = !DILocation(line: 208, column: 40, scope: !5498)
!5501 = !DILocalVariable(name: "b", arg: 2, scope: !5498, file: !232, line: 208, type: !1148)
!5502 = !DILocation(line: 208, column: 55, scope: !5498)
!5503 = !DILocalVariable(name: "fortune_a", scope: !5498, file: !232, line: 210, type: !300)
!5504 = !DILocation(line: 210, column: 27, scope: !5498)
!5505 = !DILocation(line: 210, column: 65, scope: !5498)
!5506 = !DILocation(line: 210, column: 39, scope: !5498)
!5507 = !DILocalVariable(name: "fortune_b", scope: !5498, file: !232, line: 211, type: !300)
!5508 = !DILocation(line: 211, column: 27, scope: !5498)
!5509 = !DILocation(line: 211, column: 65, scope: !5498)
!5510 = !DILocation(line: 211, column: 39, scope: !5498)
!5511 = !DILocalVariable(name: "a_len", scope: !5498, file: !232, line: 212, type: !463)
!5512 = !DILocation(line: 212, column: 12, scope: !5498)
!5513 = !DILocation(line: 212, column: 27, scope: !5498)
!5514 = !DILocation(line: 212, column: 38, scope: !5498)
!5515 = !DILocation(line: 212, column: 43, scope: !5498)
!5516 = !DILocation(line: 212, column: 20, scope: !5498)
!5517 = !DILocalVariable(name: "b_len", scope: !5498, file: !232, line: 213, type: !463)
!5518 = !DILocation(line: 213, column: 12, scope: !5498)
!5519 = !DILocation(line: 213, column: 27, scope: !5498)
!5520 = !DILocation(line: 213, column: 38, scope: !5498)
!5521 = !DILocation(line: 213, column: 43, scope: !5498)
!5522 = !DILocation(line: 213, column: 20, scope: !5498)
!5523 = !DILocation(line: 215, column: 10, scope: !5524)
!5524 = distinct !DILexicalBlock(scope: !5498, file: !232, line: 215, column: 9)
!5525 = !DILocation(line: 215, column: 16, scope: !5524)
!5526 = !DILocation(line: 215, column: 20, scope: !5524)
!5527 = !DILocation(line: 215, column: 9, scope: !5498)
!5528 = !DILocation(line: 216, column: 16, scope: !5524)
!5529 = !DILocation(line: 216, column: 24, scope: !5524)
!5530 = !DILocation(line: 216, column: 22, scope: !5524)
!5531 = !DILocation(line: 216, column: 9, scope: !5524)
!5532 = !DILocalVariable(name: "min_len", scope: !5498, file: !232, line: 218, type: !463)
!5533 = !DILocation(line: 218, column: 12, scope: !5498)
!5534 = !DILocation(line: 218, column: 22, scope: !5498)
!5535 = !DILocation(line: 218, column: 30, scope: !5498)
!5536 = !DILocation(line: 218, column: 28, scope: !5498)
!5537 = !DILocation(line: 218, column: 38, scope: !5498)
!5538 = !DILocation(line: 218, column: 46, scope: !5498)
!5539 = !DILocalVariable(name: "cmp", scope: !5498, file: !232, line: 219, type: !235)
!5540 = !DILocation(line: 219, column: 9, scope: !5498)
!5541 = !DILocation(line: 219, column: 22, scope: !5498)
!5542 = !DILocation(line: 219, column: 33, scope: !5498)
!5543 = !DILocation(line: 219, column: 38, scope: !5498)
!5544 = !DILocation(line: 219, column: 47, scope: !5498)
!5545 = !DILocation(line: 219, column: 58, scope: !5498)
!5546 = !DILocation(line: 219, column: 63, scope: !5498)
!5547 = !DILocation(line: 219, column: 72, scope: !5498)
!5548 = !DILocation(line: 219, column: 15, scope: !5498)
!5549 = !DILocation(line: 220, column: 9, scope: !5550)
!5550 = distinct !DILexicalBlock(scope: !5498, file: !232, line: 220, column: 9)
!5551 = !DILocation(line: 220, column: 13, scope: !5550)
!5552 = !DILocation(line: 220, column: 9, scope: !5498)
!5553 = !DILocation(line: 221, column: 16, scope: !5550)
!5554 = !DILocation(line: 221, column: 24, scope: !5550)
!5555 = !DILocation(line: 221, column: 22, scope: !5550)
!5556 = !DILocation(line: 221, column: 9, scope: !5550)
!5557 = !DILocation(line: 223, column: 12, scope: !5498)
!5558 = !DILocation(line: 223, column: 16, scope: !5498)
!5559 = !DILocation(line: 223, column: 5, scope: !5498)
!5560 = !DILocation(line: 224, column: 1, scope: !5498)
