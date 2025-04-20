; ModuleID = '/home/raj/lwan/techempower/json.c'
source_filename = "/home/raj/lwan/techempower/json.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.JsonNode = type { ptr, ptr, ptr, ptr, i32, %union.anon }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr }
%struct.SB = type { ptr, ptr, ptr }

@.str = private unnamed_addr constant [25 x i8] c"array->tag == JSON_ARRAY\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"/home/raj/lwan/techempower/json.c\00", align 1, !dbg !7
@__PRETTY_FUNCTION__.json_append_element = private unnamed_addr constant [49 x i8] c"void json_append_element(JsonNode *, JsonNode *)\00", align 1, !dbg !12
@.str.2 = private unnamed_addr constant [24 x i8] c"element->parent == NULL\00", align 1, !dbg !18
@__PRETTY_FUNCTION__.json_prepend_element = private unnamed_addr constant [50 x i8] c"void json_prepend_element(JsonNode *, JsonNode *)\00", align 1, !dbg !23
@.str.3 = private unnamed_addr constant [27 x i8] c"object->tag == JSON_OBJECT\00", align 1, !dbg !28
@__PRETTY_FUNCTION__.json_append_member = private unnamed_addr constant [62 x i8] c"void json_append_member(JsonNode *, const char *, JsonNode *)\00", align 1, !dbg !33
@.str.4 = private unnamed_addr constant [22 x i8] c"value->parent == NULL\00", align 1, !dbg !38
@__PRETTY_FUNCTION__.json_prepend_member = private unnamed_addr constant [63 x i8] c"void json_prepend_member(JsonNode *, const char *, JsonNode *)\00", align 1, !dbg !43
@.str.5 = private unnamed_addr constant [27 x i8] c"key contains invalid UTF-8\00", align 1, !dbg !48
@.str.6 = private unnamed_addr constant [20 x i8] c"tag is invalid (%u)\00", align 1, !dbg !50
@.str.7 = private unnamed_addr constant [42 x i8] c"bool_ is neither false (%d) nor true (%d)\00", align 1, !dbg !55
@.str.8 = private unnamed_addr constant [16 x i8] c"string_ is NULL\00", align 1, !dbg !60
@.str.9 = private unnamed_addr constant [31 x i8] c"string_ contains invalid UTF-8\00", align 1, !dbg !65
@.str.10 = private unnamed_addr constant [30 x i8] c"tail is NULL, but head is not\00", align 1, !dbg !70
@.str.11 = private unnamed_addr constant [30 x i8] c"head is NULL, but tail is not\00", align 1, !dbg !75
@.str.12 = private unnamed_addr constant [39 x i8] c"First child's prev pointer is not NULL\00", align 1, !dbg !77
@.str.13 = private unnamed_addr constant [22 x i8] c"node is its own child\00", align 1, !dbg !82
@.str.14 = private unnamed_addr constant [29 x i8] c"child->next == child (cycle)\00", align 1, !dbg !84
@.str.15 = private unnamed_addr constant [28 x i8] c"child->next == head (cycle)\00", align 1, !dbg !89
@.str.16 = private unnamed_addr constant [36 x i8] c"child does not point back to parent\00", align 1, !dbg !94
@.str.17 = private unnamed_addr constant [41 x i8] c"child->next does not point back to child\00", align 1, !dbg !99
@.str.18 = private unnamed_addr constant [32 x i8] c"Array element's key is not NULL\00", align 1, !dbg !104
@.str.19 = private unnamed_addr constant [28 x i8] c"Object member's key is NULL\00", align 1, !dbg !109
@.str.20 = private unnamed_addr constant [79 x i8] c"tail does not match pointer found by starting at head and following next links\00", align 1, !dbg !111
@stderr = external global ptr, align 8
@.str.21 = private unnamed_addr constant [16 x i8] c"Out of memory.\0A\00", align 1, !dbg !116
@.str.22 = private unnamed_addr constant [75 x i8] c"sb->start <= sb->cur && strlen(sb->start) == (size_t)(sb->cur - sb->start)\00", align 1, !dbg !118
@__PRETTY_FUNCTION__.sb_finish = private unnamed_addr constant [22 x i8] c"char *sb_finish(SB *)\00", align 1, !dbg !123
@__PRETTY_FUNCTION__.sb_finish_length = private unnamed_addr constant [39 x i8] c"char *sb_finish_length(SB *, size_t *)\00", align 1, !dbg !126
@.str.23 = private unnamed_addr constant [5 x i8] c"null\00", align 1, !dbg !129
@.str.24 = private unnamed_addr constant [6 x i8] c"false\00", align 1, !dbg !134
@.str.25 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !139
@.str.26 = private unnamed_addr constant [65 x i8] c"unicode <= 0x10FFFF && !(unicode >= 0xD800 && unicode <= 0xDFFF)\00", align 1, !dbg !141
@__PRETTY_FUNCTION__.utf8_write_char = private unnamed_addr constant [37 x i8] c"int utf8_write_char(uchar_t, char *)\00", align 1, !dbg !146
@.str.27 = private unnamed_addr constant [24 x i8] c"tag_is_valid(node->tag)\00", align 1, !dbg !151
@__PRETTY_FUNCTION__.emit_value = private unnamed_addr constant [40 x i8] c"void emit_value(SB *, const JsonNode *)\00", align 1, !dbg !153
@.str.28 = private unnamed_addr constant [6 x i8] c"%.16g\00", align 1, !dbg !158
@__PRETTY_FUNCTION__.emit_value_indented = private unnamed_addr constant [68 x i8] c"void emit_value_indented(SB *, const JsonNode *, const char *, int)\00", align 1, !dbg !160
@.str.29 = private unnamed_addr constant [3 x i8] c"[]\00", align 1, !dbg !165
@.str.30 = private unnamed_addr constant [3 x i8] c"[\0A\00", align 1, !dbg !170
@.str.31 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1, !dbg !172
@.str.32 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !174
@.str.33 = private unnamed_addr constant [3 x i8] c"{}\00", align 1, !dbg !179
@.str.34 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1, !dbg !181
@.str.35 = private unnamed_addr constant [3 x i8] c": \00", align 1, !dbg !183
@.str.36 = private unnamed_addr constant [19 x i8] c"utf8_validate(str)\00", align 1, !dbg !185
@__PRETTY_FUNCTION__.emit_string = private unnamed_addr constant [37 x i8] c"void emit_string(SB *, const char *)\00", align 1, !dbg !190
@.str.37 = private unnamed_addr constant [20 x i8] c"unicode <= 0x10FFFF\00", align 1, !dbg !192
@.str.38 = private unnamed_addr constant [20 x i8] c"utf8_validate_cz(s)\00", align 1, !dbg !194
@__PRETTY_FUNCTION__.utf8_read_char = private unnamed_addr constant [44 x i8] c"int utf8_read_char(const char *, uchar_t *)\00", align 1, !dbg !196
@.str.39 = private unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 1, !dbg !201
@.str.40 = private unnamed_addr constant [42 x i8] c"unicode >= 0x10000 && unicode <= 0x10FFFF\00", align 1, !dbg !206
@__PRETTY_FUNCTION__.to_surrogate_pair = private unnamed_addr constant [56 x i8] c"void to_surrogate_pair(uchar_t, uint16_t *, uint16_t *)\00", align 1, !dbg !208

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_decode(ptr noundef %0) #0 !dbg !277 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %4, metadata !284, metadata !DIExpression()), !dbg !285
  %6 = load ptr, ptr %3, align 8, !dbg !286
  store ptr %6, ptr %4, align 8, !dbg !285
  call void @llvm.dbg.declare(metadata ptr %5, metadata !287, metadata !DIExpression()), !dbg !288
  call void @skip_space(ptr noundef %4), !dbg !289
  %7 = call zeroext i1 @parse_value(ptr noundef %4, ptr noundef %5), !dbg !290
  br i1 %7, label %9, label %8, !dbg !292

8:                                                ; preds = %1
  store ptr null, ptr %2, align 8, !dbg !293
  br label %18, !dbg !293

9:                                                ; preds = %1
  call void @skip_space(ptr noundef %4), !dbg !294
  %10 = load ptr, ptr %4, align 8, !dbg !295
  %11 = load i8, ptr %10, align 1, !dbg !297
  %12 = sext i8 %11 to i32, !dbg !297
  %13 = icmp ne i32 %12, 0, !dbg !298
  br i1 %13, label %14, label %16, !dbg !299

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8, !dbg !300
  call void @json_delete(ptr noundef %15), !dbg !302
  store ptr null, ptr %2, align 8, !dbg !303
  br label %18, !dbg !303

16:                                               ; preds = %9
  %17 = load ptr, ptr %5, align 8, !dbg !304
  store ptr %17, ptr %2, align 8, !dbg !305
  br label %18, !dbg !305

18:                                               ; preds = %16, %14, %8
  %19 = load ptr, ptr %2, align 8, !dbg !306
  ret ptr %19, !dbg !306
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skip_space(ptr noundef %0) #0 !dbg !307 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !311, metadata !DIExpression()), !dbg !312
  call void @llvm.dbg.declare(metadata ptr %3, metadata !313, metadata !DIExpression()), !dbg !314
  %4 = load ptr, ptr %2, align 8, !dbg !315
  %5 = load ptr, ptr %4, align 8, !dbg !316
  store ptr %5, ptr %3, align 8, !dbg !314
  br label %6, !dbg !317

6:                                                ; preds = %28, %1
  %7 = load ptr, ptr %3, align 8, !dbg !318
  %8 = load i8, ptr %7, align 1, !dbg !318
  %9 = sext i8 %8 to i32, !dbg !318
  %10 = icmp eq i32 %9, 9, !dbg !318
  br i1 %10, label %26, label %11, !dbg !318

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !318
  %13 = load i8, ptr %12, align 1, !dbg !318
  %14 = sext i8 %13 to i32, !dbg !318
  %15 = icmp eq i32 %14, 10, !dbg !318
  br i1 %15, label %26, label %16, !dbg !318

16:                                               ; preds = %11
  %17 = load ptr, ptr %3, align 8, !dbg !318
  %18 = load i8, ptr %17, align 1, !dbg !318
  %19 = sext i8 %18 to i32, !dbg !318
  %20 = icmp eq i32 %19, 13, !dbg !318
  br i1 %20, label %26, label %21, !dbg !318

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !dbg !318
  %23 = load i8, ptr %22, align 1, !dbg !318
  %24 = sext i8 %23 to i32, !dbg !318
  %25 = icmp eq i32 %24, 32, !dbg !318
  br label %26, !dbg !318

26:                                               ; preds = %21, %16, %11, %6
  %27 = phi i1 [ true, %16 ], [ true, %11 ], [ true, %6 ], [ %25, %21 ]
  br i1 %27, label %28, label %31, !dbg !317

28:                                               ; preds = %26
  %29 = load ptr, ptr %3, align 8, !dbg !319
  %30 = getelementptr inbounds i8, ptr %29, i32 1, !dbg !319
  store ptr %30, ptr %3, align 8, !dbg !319
  br label %6, !dbg !317, !llvm.loop !320

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8, !dbg !322
  %33 = load ptr, ptr %2, align 8, !dbg !323
  store ptr %32, ptr %33, align 8, !dbg !324
  ret void, !dbg !325
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_value(ptr noundef %0, ptr noundef %1) #0 !dbg !326 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca double, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !330, metadata !DIExpression()), !dbg !331
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !332, metadata !DIExpression()), !dbg !333
  call void @llvm.dbg.declare(metadata ptr %6, metadata !334, metadata !DIExpression()), !dbg !335
  %9 = load ptr, ptr %4, align 8, !dbg !336
  %10 = load ptr, ptr %9, align 8, !dbg !337
  store ptr %10, ptr %6, align 8, !dbg !335
  %11 = load ptr, ptr %6, align 8, !dbg !338
  %12 = load i8, ptr %11, align 1, !dbg !339
  %13 = sext i8 %12 to i32, !dbg !339
  switch i32 %13, label %83 [
    i32 110, label %14
    i32 102, label %26
    i32 116, label %38
    i32 34, label %50
    i32 91, label %69
    i32 123, label %76
  ], !dbg !340

14:                                               ; preds = %2
  %15 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.23), !dbg !341
  br i1 %15, label %16, label %25, !dbg !344

16:                                               ; preds = %14
  %17 = load ptr, ptr %5, align 8, !dbg !345
  %18 = icmp ne ptr %17, null, !dbg !345
  br i1 %18, label %19, label %22, !dbg !348

19:                                               ; preds = %16
  %20 = call ptr @json_mknull(), !dbg !349
  %21 = load ptr, ptr %5, align 8, !dbg !350
  store ptr %20, ptr %21, align 8, !dbg !351
  br label %22, !dbg !352

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %6, align 8, !dbg !353
  %24 = load ptr, ptr %4, align 8, !dbg !354
  store ptr %23, ptr %24, align 8, !dbg !355
  store i1 true, ptr %3, align 1, !dbg !356
  br label %102, !dbg !356

25:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !357
  br label %102, !dbg !357

26:                                               ; preds = %2
  %27 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.24), !dbg !358
  br i1 %27, label %28, label %37, !dbg !360

28:                                               ; preds = %26
  %29 = load ptr, ptr %5, align 8, !dbg !361
  %30 = icmp ne ptr %29, null, !dbg !361
  br i1 %30, label %31, label %34, !dbg !364

31:                                               ; preds = %28
  %32 = call ptr @json_mkbool(i1 noundef zeroext false), !dbg !365
  %33 = load ptr, ptr %5, align 8, !dbg !366
  store ptr %32, ptr %33, align 8, !dbg !367
  br label %34, !dbg !368

34:                                               ; preds = %31, %28
  %35 = load ptr, ptr %6, align 8, !dbg !369
  %36 = load ptr, ptr %4, align 8, !dbg !370
  store ptr %35, ptr %36, align 8, !dbg !371
  store i1 true, ptr %3, align 1, !dbg !372
  br label %102, !dbg !372

37:                                               ; preds = %26
  store i1 false, ptr %3, align 1, !dbg !373
  br label %102, !dbg !373

38:                                               ; preds = %2
  %39 = call zeroext i1 @expect_literal(ptr noundef %6, ptr noundef @.str.25), !dbg !374
  br i1 %39, label %40, label %49, !dbg !376

40:                                               ; preds = %38
  %41 = load ptr, ptr %5, align 8, !dbg !377
  %42 = icmp ne ptr %41, null, !dbg !377
  br i1 %42, label %43, label %46, !dbg !380

43:                                               ; preds = %40
  %44 = call ptr @json_mkbool(i1 noundef zeroext true), !dbg !381
  %45 = load ptr, ptr %5, align 8, !dbg !382
  store ptr %44, ptr %45, align 8, !dbg !383
  br label %46, !dbg !384

46:                                               ; preds = %43, %40
  %47 = load ptr, ptr %6, align 8, !dbg !385
  %48 = load ptr, ptr %4, align 8, !dbg !386
  store ptr %47, ptr %48, align 8, !dbg !387
  store i1 true, ptr %3, align 1, !dbg !388
  br label %102, !dbg !388

49:                                               ; preds = %38
  store i1 false, ptr %3, align 1, !dbg !389
  br label %102, !dbg !389

50:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !390, metadata !DIExpression()), !dbg !392
  %51 = load ptr, ptr %5, align 8, !dbg !393
  %52 = icmp ne ptr %51, null, !dbg !393
  br i1 %52, label %53, label %54, !dbg !393

53:                                               ; preds = %50
  br label %55, !dbg !393

54:                                               ; preds = %50
  br label %55, !dbg !393

55:                                               ; preds = %54, %53
  %56 = phi ptr [ %7, %53 ], [ null, %54 ], !dbg !393
  %57 = call zeroext i1 @parse_string(ptr noundef %6, ptr noundef %56), !dbg !395
  br i1 %57, label %58, label %68, !dbg !396

58:                                               ; preds = %55
  %59 = load ptr, ptr %5, align 8, !dbg !397
  %60 = icmp ne ptr %59, null, !dbg !397
  br i1 %60, label %61, label %65, !dbg !400

61:                                               ; preds = %58
  %62 = load ptr, ptr %7, align 8, !dbg !401
  %63 = call ptr @mkstring(ptr noundef %62), !dbg !402
  %64 = load ptr, ptr %5, align 8, !dbg !403
  store ptr %63, ptr %64, align 8, !dbg !404
  br label %65, !dbg !405

65:                                               ; preds = %61, %58
  %66 = load ptr, ptr %6, align 8, !dbg !406
  %67 = load ptr, ptr %4, align 8, !dbg !407
  store ptr %66, ptr %67, align 8, !dbg !408
  store i1 true, ptr %3, align 1, !dbg !409
  br label %102, !dbg !409

68:                                               ; preds = %55
  store i1 false, ptr %3, align 1, !dbg !410
  br label %102, !dbg !410

69:                                               ; preds = %2
  %70 = load ptr, ptr %5, align 8, !dbg !411
  %71 = call zeroext i1 @parse_array(ptr noundef %6, ptr noundef %70), !dbg !413
  br i1 %71, label %72, label %75, !dbg !414

72:                                               ; preds = %69
  %73 = load ptr, ptr %6, align 8, !dbg !415
  %74 = load ptr, ptr %4, align 8, !dbg !417
  store ptr %73, ptr %74, align 8, !dbg !418
  store i1 true, ptr %3, align 1, !dbg !419
  br label %102, !dbg !419

75:                                               ; preds = %69
  store i1 false, ptr %3, align 1, !dbg !420
  br label %102, !dbg !420

76:                                               ; preds = %2
  %77 = load ptr, ptr %5, align 8, !dbg !421
  %78 = call zeroext i1 @parse_object(ptr noundef %6, ptr noundef %77), !dbg !423
  br i1 %78, label %79, label %82, !dbg !424

79:                                               ; preds = %76
  %80 = load ptr, ptr %6, align 8, !dbg !425
  %81 = load ptr, ptr %4, align 8, !dbg !427
  store ptr %80, ptr %81, align 8, !dbg !428
  store i1 true, ptr %3, align 1, !dbg !429
  br label %102, !dbg !429

82:                                               ; preds = %76
  store i1 false, ptr %3, align 1, !dbg !430
  br label %102, !dbg !430

83:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !431, metadata !DIExpression()), !dbg !433
  %84 = load ptr, ptr %5, align 8, !dbg !434
  %85 = icmp ne ptr %84, null, !dbg !434
  br i1 %85, label %86, label %87, !dbg !434

86:                                               ; preds = %83
  br label %88, !dbg !434

87:                                               ; preds = %83
  br label %88, !dbg !434

88:                                               ; preds = %87, %86
  %89 = phi ptr [ %8, %86 ], [ null, %87 ], !dbg !434
  %90 = call zeroext i1 @parse_number(ptr noundef %6, ptr noundef %89), !dbg !436
  br i1 %90, label %91, label %101, !dbg !437

91:                                               ; preds = %88
  %92 = load ptr, ptr %5, align 8, !dbg !438
  %93 = icmp ne ptr %92, null, !dbg !438
  br i1 %93, label %94, label %98, !dbg !441

94:                                               ; preds = %91
  %95 = load double, ptr %8, align 8, !dbg !442
  %96 = call ptr @json_mknumber(double noundef %95), !dbg !443
  %97 = load ptr, ptr %5, align 8, !dbg !444
  store ptr %96, ptr %97, align 8, !dbg !445
  br label %98, !dbg !446

98:                                               ; preds = %94, %91
  %99 = load ptr, ptr %6, align 8, !dbg !447
  %100 = load ptr, ptr %4, align 8, !dbg !448
  store ptr %99, ptr %100, align 8, !dbg !449
  store i1 true, ptr %3, align 1, !dbg !450
  br label %102, !dbg !450

101:                                              ; preds = %88
  store i1 false, ptr %3, align 1, !dbg !451
  br label %102, !dbg !451

102:                                              ; preds = %101, %98, %82, %79, %75, %72, %68, %65, %49, %46, %37, %34, %25, %22
  %103 = load i1, ptr %3, align 1, !dbg !452
  ret i1 %103, !dbg !452
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_delete(ptr noundef %0) #0 !dbg !453 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !456, metadata !DIExpression()), !dbg !457
  %5 = load ptr, ptr %2, align 8, !dbg !458
  %6 = icmp ne ptr %5, null, !dbg !460
  br i1 %6, label %7, label %35, !dbg !461

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !462
  call void @json_remove_from_parent(ptr noundef %8), !dbg !464
  %9 = load ptr, ptr %2, align 8, !dbg !465
  %10 = getelementptr inbounds %struct.JsonNode, ptr %9, i32 0, i32 4, !dbg !466
  %11 = load i32, ptr %10, align 8, !dbg !466
  switch i32 %11, label %32 [
    i32 2, label %12
    i32 4, label %16
    i32 5, label %16
  ], !dbg !467

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !468
  %14 = getelementptr inbounds %struct.JsonNode, ptr %13, i32 0, i32 5, !dbg !470
  %15 = load ptr, ptr %14, align 8, !dbg !470
  call void @free(ptr noundef %15) #11, !dbg !471
  br label %33, !dbg !472

16:                                               ; preds = %7, %7
  call void @llvm.dbg.declare(metadata ptr %3, metadata !473, metadata !DIExpression()), !dbg !475
  call void @llvm.dbg.declare(metadata ptr %4, metadata !476, metadata !DIExpression()), !dbg !477
  %17 = load ptr, ptr %2, align 8, !dbg !478
  %18 = getelementptr inbounds %struct.JsonNode, ptr %17, i32 0, i32 5, !dbg !480
  %19 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 0, !dbg !481
  %20 = load ptr, ptr %19, align 8, !dbg !481
  store ptr %20, ptr %3, align 8, !dbg !482
  br label %21, !dbg !483

21:                                               ; preds = %29, %16
  %22 = load ptr, ptr %3, align 8, !dbg !484
  %23 = icmp ne ptr %22, null, !dbg !486
  br i1 %23, label %24, label %31, !dbg !487

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !dbg !488
  %26 = getelementptr inbounds %struct.JsonNode, ptr %25, i32 0, i32 2, !dbg !490
  %27 = load ptr, ptr %26, align 8, !dbg !490
  store ptr %27, ptr %4, align 8, !dbg !491
  %28 = load ptr, ptr %3, align 8, !dbg !492
  call void @json_delete(ptr noundef %28), !dbg !493
  br label %29, !dbg !494

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !dbg !495
  store ptr %30, ptr %3, align 8, !dbg !496
  br label %21, !dbg !497, !llvm.loop !498

31:                                               ; preds = %21
  br label %33, !dbg !500

32:                                               ; preds = %7
  br label %33, !dbg !501

33:                                               ; preds = %32, %31, %12
  %34 = load ptr, ptr %2, align 8, !dbg !502
  call void @free(ptr noundef %34) #11, !dbg !503
  br label %35, !dbg !504

35:                                               ; preds = %33, %1
  ret void, !dbg !505
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_encode(ptr noundef %0) #0 !dbg !506 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !511, metadata !DIExpression()), !dbg !512
  %3 = load ptr, ptr %2, align 8, !dbg !513
  %4 = call ptr @json_stringify(ptr noundef %3, ptr noundef null), !dbg !514
  ret ptr %4, !dbg !515
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_stringify(ptr noundef %0, ptr noundef %1) #0 !dbg !516 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.SB, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !519, metadata !DIExpression()), !dbg !520
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !521, metadata !DIExpression()), !dbg !522
  call void @llvm.dbg.declare(metadata ptr %5, metadata !523, metadata !DIExpression()), !dbg !530
  call void @sb_init(ptr noundef %5), !dbg !531
  %6 = load ptr, ptr %4, align 8, !dbg !532
  %7 = icmp ne ptr %6, null, !dbg !534
  br i1 %7, label %8, label %11, !dbg !535

8:                                                ; preds = %2
  %9 = load ptr, ptr %3, align 8, !dbg !536
  %10 = load ptr, ptr %4, align 8, !dbg !537
  call void @emit_value_indented(ptr noundef %5, ptr noundef %9, ptr noundef %10, i32 noundef 0), !dbg !538
  br label %13, !dbg !538

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !539
  call void @emit_value(ptr noundef %5, ptr noundef %12), !dbg !540
  br label %13

13:                                               ; preds = %11, %8
  %14 = call ptr @sb_finish(ptr noundef %5), !dbg !541
  ret ptr %14, !dbg !542
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_encode_string(ptr noundef %0) #0 !dbg !543 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.SB, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !546, metadata !DIExpression()), !dbg !547
  call void @llvm.dbg.declare(metadata ptr %3, metadata !548, metadata !DIExpression()), !dbg !549
  call void @sb_init(ptr noundef %3), !dbg !550
  %4 = load ptr, ptr %2, align 8, !dbg !551
  call void @emit_string(ptr noundef %3, ptr noundef %4), !dbg !552
  %5 = call ptr @sb_finish(ptr noundef %3), !dbg !553
  ret ptr %5, !dbg !554
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_init(ptr noundef %0) #0 !dbg !555 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !559, metadata !DIExpression()), !dbg !560
  %3 = call noalias ptr @malloc(i64 noundef 17) #12, !dbg !561
  %4 = load ptr, ptr %2, align 8, !dbg !562
  %5 = getelementptr inbounds %struct.SB, ptr %4, i32 0, i32 2, !dbg !563
  store ptr %3, ptr %5, align 8, !dbg !564
  %6 = load ptr, ptr %2, align 8, !dbg !565
  %7 = getelementptr inbounds %struct.SB, ptr %6, i32 0, i32 2, !dbg !567
  %8 = load ptr, ptr %7, align 8, !dbg !567
  %9 = icmp eq ptr %8, null, !dbg !568
  br i1 %9, label %10, label %15, !dbg !569

10:                                               ; preds = %1
  br label %11, !dbg !570

11:                                               ; preds = %10
  %12 = load ptr, ptr @stderr, align 8, !dbg !571
  %13 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %12, ptr noundef @.str.21), !dbg !571
  call void @exit(i32 noundef 1) #13, !dbg !571
  unreachable, !dbg !571

14:                                               ; No predecessors!
  br label %15, !dbg !571

15:                                               ; preds = %14, %1
  %16 = load ptr, ptr %2, align 8, !dbg !573
  %17 = getelementptr inbounds %struct.SB, ptr %16, i32 0, i32 2, !dbg !574
  %18 = load ptr, ptr %17, align 8, !dbg !574
  %19 = load ptr, ptr %2, align 8, !dbg !575
  %20 = getelementptr inbounds %struct.SB, ptr %19, i32 0, i32 0, !dbg !576
  store ptr %18, ptr %20, align 8, !dbg !577
  %21 = load ptr, ptr %2, align 8, !dbg !578
  %22 = getelementptr inbounds %struct.SB, ptr %21, i32 0, i32 2, !dbg !579
  %23 = load ptr, ptr %22, align 8, !dbg !579
  %24 = getelementptr inbounds i8, ptr %23, i64 16, !dbg !580
  %25 = load ptr, ptr %2, align 8, !dbg !581
  %26 = getelementptr inbounds %struct.SB, ptr %25, i32 0, i32 1, !dbg !582
  store ptr %24, ptr %26, align 8, !dbg !583
  ret void, !dbg !584
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_string(ptr noundef %0, ptr noundef %1) #0 !dbg !585 {
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
  call void @llvm.dbg.declare(metadata ptr %3, metadata !588, metadata !DIExpression()), !dbg !589
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !590, metadata !DIExpression()), !dbg !591
  call void @llvm.dbg.declare(metadata ptr %5, metadata !592, metadata !DIExpression()), !dbg !593
  %12 = load ptr, ptr %4, align 8, !dbg !594
  store ptr %12, ptr %5, align 8, !dbg !593
  call void @llvm.dbg.declare(metadata ptr %6, metadata !595, metadata !DIExpression()), !dbg !596
  %13 = load ptr, ptr %4, align 8, !dbg !597
  %14 = call zeroext i1 @utf8_validate(ptr noundef %13), !dbg !597
  br i1 %14, label %15, label %16, !dbg !600

15:                                               ; preds = %2
  br label %17, !dbg !600

16:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.36, ptr noundef @.str.1, i32 noundef 1122, ptr noundef @__PRETTY_FUNCTION__.emit_string) #13, !dbg !597
  unreachable, !dbg !597

17:                                               ; preds = %15
  br label %18, !dbg !601

18:                                               ; preds = %17
  %19 = load ptr, ptr %3, align 8, !dbg !602
  %20 = getelementptr inbounds %struct.SB, ptr %19, i32 0, i32 1, !dbg !602
  %21 = load ptr, ptr %20, align 8, !dbg !602
  %22 = load ptr, ptr %3, align 8, !dbg !602
  %23 = getelementptr inbounds %struct.SB, ptr %22, i32 0, i32 0, !dbg !602
  %24 = load ptr, ptr %23, align 8, !dbg !602
  %25 = ptrtoint ptr %21 to i64, !dbg !602
  %26 = ptrtoint ptr %24 to i64, !dbg !602
  %27 = sub i64 %25, %26, !dbg !602
  %28 = icmp ult i64 %27, 14, !dbg !602
  br i1 %28, label %29, label %31, !dbg !605

29:                                               ; preds = %18
  %30 = load ptr, ptr %3, align 8, !dbg !602
  call void @sb_grow(ptr noundef %30, i64 noundef 14), !dbg !602
  br label %31, !dbg !602

31:                                               ; preds = %29, %18
  br label %32, !dbg !605

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 8, !dbg !606
  %34 = getelementptr inbounds %struct.SB, ptr %33, i32 0, i32 0, !dbg !607
  %35 = load ptr, ptr %34, align 8, !dbg !607
  store ptr %35, ptr %6, align 8, !dbg !608
  %36 = load ptr, ptr %6, align 8, !dbg !609
  %37 = getelementptr inbounds i8, ptr %36, i32 1, !dbg !609
  store ptr %37, ptr %6, align 8, !dbg !609
  store i8 34, ptr %36, align 1, !dbg !610
  br label %38, !dbg !611

38:                                               ; preds = %176, %32
  %39 = load ptr, ptr %5, align 8, !dbg !612
  %40 = load i8, ptr %39, align 1, !dbg !613
  %41 = sext i8 %40 to i32, !dbg !613
  %42 = icmp ne i32 %41, 0, !dbg !614
  br i1 %42, label %43, label %180, !dbg !611

43:                                               ; preds = %38
  call void @llvm.dbg.declare(metadata ptr %7, metadata !615, metadata !DIExpression()), !dbg !617
  %44 = load ptr, ptr %5, align 8, !dbg !618
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !618
  store ptr %45, ptr %5, align 8, !dbg !618
  %46 = load i8, ptr %44, align 1, !dbg !619
  store i8 %46, ptr %7, align 1, !dbg !617
  %47 = load i8, ptr %7, align 1, !dbg !620
  %48 = sext i8 %47 to i32, !dbg !620
  switch i32 %48, label %84 [
    i32 34, label %49
    i32 92, label %54
    i32 8, label %59
    i32 12, label %64
    i32 10, label %69
    i32 13, label %74
    i32 9, label %79
  ], !dbg !621

49:                                               ; preds = %43
  %50 = load ptr, ptr %6, align 8, !dbg !622
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !622
  store ptr %51, ptr %6, align 8, !dbg !622
  store i8 92, ptr %50, align 1, !dbg !624
  %52 = load ptr, ptr %6, align 8, !dbg !625
  %53 = getelementptr inbounds i8, ptr %52, i32 1, !dbg !625
  store ptr %53, ptr %6, align 8, !dbg !625
  store i8 34, ptr %52, align 1, !dbg !626
  br label %158, !dbg !627

54:                                               ; preds = %43
  %55 = load ptr, ptr %6, align 8, !dbg !628
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !628
  store ptr %56, ptr %6, align 8, !dbg !628
  store i8 92, ptr %55, align 1, !dbg !629
  %57 = load ptr, ptr %6, align 8, !dbg !630
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !630
  store ptr %58, ptr %6, align 8, !dbg !630
  store i8 92, ptr %57, align 1, !dbg !631
  br label %158, !dbg !632

59:                                               ; preds = %43
  %60 = load ptr, ptr %6, align 8, !dbg !633
  %61 = getelementptr inbounds i8, ptr %60, i32 1, !dbg !633
  store ptr %61, ptr %6, align 8, !dbg !633
  store i8 92, ptr %60, align 1, !dbg !634
  %62 = load ptr, ptr %6, align 8, !dbg !635
  %63 = getelementptr inbounds i8, ptr %62, i32 1, !dbg !635
  store ptr %63, ptr %6, align 8, !dbg !635
  store i8 98, ptr %62, align 1, !dbg !636
  br label %158, !dbg !637

64:                                               ; preds = %43
  %65 = load ptr, ptr %6, align 8, !dbg !638
  %66 = getelementptr inbounds i8, ptr %65, i32 1, !dbg !638
  store ptr %66, ptr %6, align 8, !dbg !638
  store i8 92, ptr %65, align 1, !dbg !639
  %67 = load ptr, ptr %6, align 8, !dbg !640
  %68 = getelementptr inbounds i8, ptr %67, i32 1, !dbg !640
  store ptr %68, ptr %6, align 8, !dbg !640
  store i8 102, ptr %67, align 1, !dbg !641
  br label %158, !dbg !642

69:                                               ; preds = %43
  %70 = load ptr, ptr %6, align 8, !dbg !643
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !643
  store ptr %71, ptr %6, align 8, !dbg !643
  store i8 92, ptr %70, align 1, !dbg !644
  %72 = load ptr, ptr %6, align 8, !dbg !645
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !645
  store ptr %73, ptr %6, align 8, !dbg !645
  store i8 110, ptr %72, align 1, !dbg !646
  br label %158, !dbg !647

74:                                               ; preds = %43
  %75 = load ptr, ptr %6, align 8, !dbg !648
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !648
  store ptr %76, ptr %6, align 8, !dbg !648
  store i8 92, ptr %75, align 1, !dbg !649
  %77 = load ptr, ptr %6, align 8, !dbg !650
  %78 = getelementptr inbounds i8, ptr %77, i32 1, !dbg !650
  store ptr %78, ptr %6, align 8, !dbg !650
  store i8 114, ptr %77, align 1, !dbg !651
  br label %158, !dbg !652

79:                                               ; preds = %43
  %80 = load ptr, ptr %6, align 8, !dbg !653
  %81 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !653
  store ptr %81, ptr %6, align 8, !dbg !653
  store i8 92, ptr %80, align 1, !dbg !654
  %82 = load ptr, ptr %6, align 8, !dbg !655
  %83 = getelementptr inbounds i8, ptr %82, i32 1, !dbg !655
  store ptr %83, ptr %6, align 8, !dbg !655
  store i8 116, ptr %82, align 1, !dbg !656
  br label %158, !dbg !657

84:                                               ; preds = %43
  call void @llvm.dbg.declare(metadata ptr %8, metadata !658, metadata !DIExpression()), !dbg !660
  %85 = load ptr, ptr %5, align 8, !dbg !661
  %86 = getelementptr inbounds i8, ptr %85, i32 -1, !dbg !661
  store ptr %86, ptr %5, align 8, !dbg !661
  %87 = load ptr, ptr %5, align 8, !dbg !662
  %88 = call i64 @utf8_validate_cz(ptr noundef %87), !dbg !663
  store i64 %88, ptr %8, align 8, !dbg !664
  %89 = load i64, ptr %8, align 8, !dbg !665
  %90 = icmp eq i64 %89, 0, !dbg !667
  br i1 %90, label %91, label %92, !dbg !668

91:                                               ; preds = %84
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1, i32 noundef 1180, ptr noundef @__PRETTY_FUNCTION__.emit_string) #13, !dbg !669
  unreachable, !dbg !669

92:                                               ; preds = %84
  %93 = load i8, ptr %7, align 1, !dbg !673
  %94 = sext i8 %93 to i32, !dbg !673
  %95 = icmp slt i32 %94, 31, !dbg !675
  br i1 %95, label %96, label %144, !dbg !676

96:                                               ; preds = %92
  call void @llvm.dbg.declare(metadata ptr %9, metadata !677, metadata !DIExpression()), !dbg !679
  %97 = load ptr, ptr %5, align 8, !dbg !680
  %98 = call i32 @utf8_read_char(ptr noundef %97, ptr noundef %9), !dbg !681
  %99 = load ptr, ptr %5, align 8, !dbg !682
  %100 = sext i32 %98 to i64, !dbg !682
  %101 = getelementptr inbounds i8, ptr %99, i64 %100, !dbg !682
  store ptr %101, ptr %5, align 8, !dbg !682
  %102 = load i32, ptr %9, align 4, !dbg !683
  %103 = icmp ule i32 %102, 65535, !dbg !685
  br i1 %103, label %104, label %116, !dbg !686

104:                                              ; preds = %96
  %105 = load ptr, ptr %6, align 8, !dbg !687
  %106 = getelementptr inbounds i8, ptr %105, i32 1, !dbg !687
  store ptr %106, ptr %6, align 8, !dbg !687
  store i8 92, ptr %105, align 1, !dbg !689
  %107 = load ptr, ptr %6, align 8, !dbg !690
  %108 = getelementptr inbounds i8, ptr %107, i32 1, !dbg !690
  store ptr %108, ptr %6, align 8, !dbg !690
  store i8 117, ptr %107, align 1, !dbg !691
  %109 = load ptr, ptr %6, align 8, !dbg !692
  %110 = load i32, ptr %9, align 4, !dbg !693
  %111 = trunc i32 %110 to i16, !dbg !694
  %112 = call i32 @write_hex16(ptr noundef %109, i16 noundef zeroext %111), !dbg !695
  %113 = load ptr, ptr %6, align 8, !dbg !696
  %114 = sext i32 %112 to i64, !dbg !696
  %115 = getelementptr inbounds i8, ptr %113, i64 %114, !dbg !696
  store ptr %115, ptr %6, align 8, !dbg !696
  br label %143, !dbg !697

116:                                              ; preds = %96
  call void @llvm.dbg.declare(metadata ptr %10, metadata !698, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata ptr %11, metadata !701, metadata !DIExpression()), !dbg !702
  %117 = load i32, ptr %9, align 4, !dbg !703
  %118 = icmp ule i32 %117, 1114111, !dbg !703
  br i1 %118, label %119, label %120, !dbg !706

119:                                              ; preds = %116
  br label %121, !dbg !706

120:                                              ; preds = %116
  call void @__assert_fail(ptr noundef @.str.37, ptr noundef @.str.1, i32 noundef 1198, ptr noundef @__PRETTY_FUNCTION__.emit_string) #13, !dbg !703
  unreachable, !dbg !703

121:                                              ; preds = %119
  %122 = load i32, ptr %9, align 4, !dbg !707
  call void @to_surrogate_pair(i32 noundef %122, ptr noundef %10, ptr noundef %11), !dbg !708
  %123 = load ptr, ptr %6, align 8, !dbg !709
  %124 = getelementptr inbounds i8, ptr %123, i32 1, !dbg !709
  store ptr %124, ptr %6, align 8, !dbg !709
  store i8 92, ptr %123, align 1, !dbg !710
  %125 = load ptr, ptr %6, align 8, !dbg !711
  %126 = getelementptr inbounds i8, ptr %125, i32 1, !dbg !711
  store ptr %126, ptr %6, align 8, !dbg !711
  store i8 117, ptr %125, align 1, !dbg !712
  %127 = load ptr, ptr %6, align 8, !dbg !713
  %128 = load i16, ptr %10, align 2, !dbg !714
  %129 = call i32 @write_hex16(ptr noundef %127, i16 noundef zeroext %128), !dbg !715
  %130 = load ptr, ptr %6, align 8, !dbg !716
  %131 = sext i32 %129 to i64, !dbg !716
  %132 = getelementptr inbounds i8, ptr %130, i64 %131, !dbg !716
  store ptr %132, ptr %6, align 8, !dbg !716
  %133 = load ptr, ptr %6, align 8, !dbg !717
  %134 = getelementptr inbounds i8, ptr %133, i32 1, !dbg !717
  store ptr %134, ptr %6, align 8, !dbg !717
  store i8 92, ptr %133, align 1, !dbg !718
  %135 = load ptr, ptr %6, align 8, !dbg !719
  %136 = getelementptr inbounds i8, ptr %135, i32 1, !dbg !719
  store ptr %136, ptr %6, align 8, !dbg !719
  store i8 117, ptr %135, align 1, !dbg !720
  %137 = load ptr, ptr %6, align 8, !dbg !721
  %138 = load i16, ptr %11, align 2, !dbg !722
  %139 = call i32 @write_hex16(ptr noundef %137, i16 noundef zeroext %138), !dbg !723
  %140 = load ptr, ptr %6, align 8, !dbg !724
  %141 = sext i32 %139 to i64, !dbg !724
  %142 = getelementptr inbounds i8, ptr %140, i64 %141, !dbg !724
  store ptr %142, ptr %6, align 8, !dbg !724
  br label %143

143:                                              ; preds = %121, %104
  br label %156, !dbg !725

144:                                              ; preds = %92
  br label %145, !dbg !726

145:                                              ; preds = %149, %144
  %146 = load i64, ptr %8, align 8, !dbg !728
  %147 = add i64 %146, -1, !dbg !728
  store i64 %147, ptr %8, align 8, !dbg !728
  %148 = icmp ne i64 %146, 0, !dbg !726
  br i1 %148, label %149, label %155, !dbg !726

149:                                              ; preds = %145
  %150 = load ptr, ptr %5, align 8, !dbg !729
  %151 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !729
  store ptr %151, ptr %5, align 8, !dbg !729
  %152 = load i8, ptr %150, align 1, !dbg !730
  %153 = load ptr, ptr %6, align 8, !dbg !731
  %154 = getelementptr inbounds i8, ptr %153, i32 1, !dbg !731
  store ptr %154, ptr %6, align 8, !dbg !731
  store i8 %152, ptr %153, align 1, !dbg !732
  br label %145, !dbg !726, !llvm.loop !733

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155, %143
  br label %157

157:                                              ; preds = %156
  br label %158, !dbg !734

158:                                              ; preds = %157, %79, %74, %69, %64, %59, %54, %49
  %159 = load ptr, ptr %6, align 8, !dbg !735
  %160 = load ptr, ptr %3, align 8, !dbg !736
  %161 = getelementptr inbounds %struct.SB, ptr %160, i32 0, i32 0, !dbg !737
  store ptr %159, ptr %161, align 8, !dbg !738
  br label %162, !dbg !739

162:                                              ; preds = %158
  %163 = load ptr, ptr %3, align 8, !dbg !740
  %164 = getelementptr inbounds %struct.SB, ptr %163, i32 0, i32 1, !dbg !740
  %165 = load ptr, ptr %164, align 8, !dbg !740
  %166 = load ptr, ptr %3, align 8, !dbg !740
  %167 = getelementptr inbounds %struct.SB, ptr %166, i32 0, i32 0, !dbg !740
  %168 = load ptr, ptr %167, align 8, !dbg !740
  %169 = ptrtoint ptr %165 to i64, !dbg !740
  %170 = ptrtoint ptr %168 to i64, !dbg !740
  %171 = sub i64 %169, %170, !dbg !740
  %172 = icmp ult i64 %171, 14, !dbg !740
  br i1 %172, label %173, label %175, !dbg !743

173:                                              ; preds = %162
  %174 = load ptr, ptr %3, align 8, !dbg !740
  call void @sb_grow(ptr noundef %174, i64 noundef 14), !dbg !740
  br label %175, !dbg !740

175:                                              ; preds = %173, %162
  br label %176, !dbg !743

176:                                              ; preds = %175
  %177 = load ptr, ptr %3, align 8, !dbg !744
  %178 = getelementptr inbounds %struct.SB, ptr %177, i32 0, i32 0, !dbg !745
  %179 = load ptr, ptr %178, align 8, !dbg !745
  store ptr %179, ptr %6, align 8, !dbg !746
  br label %38, !dbg !611, !llvm.loop !747

180:                                              ; preds = %38
  %181 = load ptr, ptr %6, align 8, !dbg !749
  %182 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !749
  store ptr %182, ptr %6, align 8, !dbg !749
  store i8 34, ptr %181, align 1, !dbg !750
  %183 = load ptr, ptr %6, align 8, !dbg !751
  %184 = load ptr, ptr %3, align 8, !dbg !752
  %185 = getelementptr inbounds %struct.SB, ptr %184, i32 0, i32 0, !dbg !753
  store ptr %183, ptr %185, align 8, !dbg !754
  ret void, !dbg !755
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @sb_finish(ptr noundef %0) #0 !dbg !756 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !759, metadata !DIExpression()), !dbg !760
  %3 = load ptr, ptr %2, align 8, !dbg !761
  %4 = getelementptr inbounds %struct.SB, ptr %3, i32 0, i32 0, !dbg !762
  %5 = load ptr, ptr %4, align 8, !dbg !762
  store i8 0, ptr %5, align 1, !dbg !763
  %6 = load ptr, ptr %2, align 8, !dbg !764
  %7 = getelementptr inbounds %struct.SB, ptr %6, i32 0, i32 2, !dbg !764
  %8 = load ptr, ptr %7, align 8, !dbg !764
  %9 = load ptr, ptr %2, align 8, !dbg !764
  %10 = getelementptr inbounds %struct.SB, ptr %9, i32 0, i32 0, !dbg !764
  %11 = load ptr, ptr %10, align 8, !dbg !764
  %12 = icmp ule ptr %8, %11, !dbg !764
  br i1 %12, label %13, label %29, !dbg !764

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !764
  %15 = getelementptr inbounds %struct.SB, ptr %14, i32 0, i32 2, !dbg !764
  %16 = load ptr, ptr %15, align 8, !dbg !764
  %17 = call i64 @strlen(ptr noundef %16) #14, !dbg !764
  %18 = load ptr, ptr %2, align 8, !dbg !764
  %19 = getelementptr inbounds %struct.SB, ptr %18, i32 0, i32 0, !dbg !764
  %20 = load ptr, ptr %19, align 8, !dbg !764
  %21 = load ptr, ptr %2, align 8, !dbg !764
  %22 = getelementptr inbounds %struct.SB, ptr %21, i32 0, i32 2, !dbg !764
  %23 = load ptr, ptr %22, align 8, !dbg !764
  %24 = ptrtoint ptr %20 to i64, !dbg !764
  %25 = ptrtoint ptr %23 to i64, !dbg !764
  %26 = sub i64 %24, %25, !dbg !764
  %27 = icmp eq i64 %17, %26, !dbg !764
  br i1 %27, label %28, label %29, !dbg !767

28:                                               ; preds = %13
  br label %30, !dbg !767

29:                                               ; preds = %13, %1
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1, i32 noundef 98, ptr noundef @__PRETTY_FUNCTION__.sb_finish) #13, !dbg !764
  unreachable, !dbg !764

30:                                               ; preds = %28
  %31 = load ptr, ptr %2, align 8, !dbg !768
  %32 = getelementptr inbounds %struct.SB, ptr %31, i32 0, i32 2, !dbg !769
  %33 = load ptr, ptr %32, align 8, !dbg !769
  ret ptr %33, !dbg !770
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_value_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !771 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !774, metadata !DIExpression()), !dbg !775
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !776, metadata !DIExpression()), !dbg !777
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !778, metadata !DIExpression()), !dbg !779
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !780, metadata !DIExpression()), !dbg !781
  %9 = load ptr, ptr %6, align 8, !dbg !782
  %10 = getelementptr inbounds %struct.JsonNode, ptr %9, i32 0, i32 4, !dbg !782
  %11 = load i32, ptr %10, align 8, !dbg !782
  %12 = call zeroext i1 @tag_is_valid(i32 noundef %11), !dbg !782
  br i1 %12, label %13, label %14, !dbg !785

13:                                               ; preds = %4
  br label %15, !dbg !785

14:                                               ; preds = %4
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1, i32 noundef 1014, ptr noundef @__PRETTY_FUNCTION__.emit_value_indented) #13, !dbg !782
  unreachable, !dbg !782

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !dbg !786
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 4, !dbg !787
  %18 = load i32, ptr %17, align 8, !dbg !787
  switch i32 %18, label %49 [
    i32 0, label %19
    i32 1, label %21
    i32 2, label %29
    i32 3, label %34
    i32 4, label %39
    i32 5, label %44
  ], !dbg !788

19:                                               ; preds = %15
  %20 = load ptr, ptr %5, align 8, !dbg !789
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.23), !dbg !791
  br label %50, !dbg !792

21:                                               ; preds = %15
  %22 = load ptr, ptr %5, align 8, !dbg !793
  %23 = load ptr, ptr %6, align 8, !dbg !794
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !795
  %25 = load i8, ptr %24, align 8, !dbg !795
  %26 = trunc i8 %25 to i1, !dbg !795
  %27 = zext i1 %26 to i64, !dbg !794
  %28 = select i1 %26, ptr @.str.25, ptr @.str.24, !dbg !794
  call void @sb_puts(ptr noundef %22, ptr noundef %28), !dbg !796
  br label %50, !dbg !797

29:                                               ; preds = %15
  %30 = load ptr, ptr %5, align 8, !dbg !798
  %31 = load ptr, ptr %6, align 8, !dbg !799
  %32 = getelementptr inbounds %struct.JsonNode, ptr %31, i32 0, i32 5, !dbg !800
  %33 = load ptr, ptr %32, align 8, !dbg !800
  call void @emit_string(ptr noundef %30, ptr noundef %33), !dbg !801
  br label %50, !dbg !802

34:                                               ; preds = %15
  %35 = load ptr, ptr %5, align 8, !dbg !803
  %36 = load ptr, ptr %6, align 8, !dbg !804
  %37 = getelementptr inbounds %struct.JsonNode, ptr %36, i32 0, i32 5, !dbg !805
  %38 = load double, ptr %37, align 8, !dbg !805
  call void @emit_number(ptr noundef %35, double noundef %38), !dbg !806
  br label %50, !dbg !807

39:                                               ; preds = %15
  %40 = load ptr, ptr %5, align 8, !dbg !808
  %41 = load ptr, ptr %6, align 8, !dbg !809
  %42 = load ptr, ptr %7, align 8, !dbg !810
  %43 = load i32, ptr %8, align 4, !dbg !811
  call void @emit_array_indented(ptr noundef %40, ptr noundef %41, ptr noundef %42, i32 noundef %43), !dbg !812
  br label %50, !dbg !813

44:                                               ; preds = %15
  %45 = load ptr, ptr %5, align 8, !dbg !814
  %46 = load ptr, ptr %6, align 8, !dbg !815
  %47 = load ptr, ptr %7, align 8, !dbg !816
  %48 = load i32, ptr %8, align 4, !dbg !817
  call void @emit_object_indented(ptr noundef %45, ptr noundef %46, ptr noundef %47, i32 noundef %48), !dbg !818
  br label %50, !dbg !819

49:                                               ; preds = %15
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1, i32 noundef 1035, ptr noundef @__PRETTY_FUNCTION__.emit_value_indented) #13, !dbg !820
  unreachable, !dbg !820

50:                                               ; preds = %44, %39, %34, %29, %21, %19
  ret void, !dbg !823
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_value(ptr noundef %0, ptr noundef %1) #0 !dbg !824 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !827, metadata !DIExpression()), !dbg !828
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !829, metadata !DIExpression()), !dbg !830
  %5 = load ptr, ptr %4, align 8, !dbg !831
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !831
  %7 = load i32, ptr %6, align 8, !dbg !831
  %8 = call zeroext i1 @tag_is_valid(i32 noundef %7), !dbg !831
  br i1 %8, label %9, label %10, !dbg !834

9:                                                ; preds = %2
  br label %11, !dbg !834

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.27, ptr noundef @.str.1, i32 noundef 987, ptr noundef @__PRETTY_FUNCTION__.emit_value) #13, !dbg !831
  unreachable, !dbg !831

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !835
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 4, !dbg !836
  %14 = load i32, ptr %13, align 8, !dbg !836
  switch i32 %14, label %41 [
    i32 0, label %15
    i32 1, label %17
    i32 2, label %25
    i32 3, label %30
    i32 4, label %35
    i32 5, label %38
  ], !dbg !837

15:                                               ; preds = %11
  %16 = load ptr, ptr %3, align 8, !dbg !838
  call void @sb_puts(ptr noundef %16, ptr noundef @.str.23), !dbg !840
  br label %42, !dbg !841

17:                                               ; preds = %11
  %18 = load ptr, ptr %3, align 8, !dbg !842
  %19 = load ptr, ptr %4, align 8, !dbg !843
  %20 = getelementptr inbounds %struct.JsonNode, ptr %19, i32 0, i32 5, !dbg !844
  %21 = load i8, ptr %20, align 8, !dbg !844
  %22 = trunc i8 %21 to i1, !dbg !844
  %23 = zext i1 %22 to i64, !dbg !843
  %24 = select i1 %22, ptr @.str.25, ptr @.str.24, !dbg !843
  call void @sb_puts(ptr noundef %18, ptr noundef %24), !dbg !845
  br label %42, !dbg !846

25:                                               ; preds = %11
  %26 = load ptr, ptr %3, align 8, !dbg !847
  %27 = load ptr, ptr %4, align 8, !dbg !848
  %28 = getelementptr inbounds %struct.JsonNode, ptr %27, i32 0, i32 5, !dbg !849
  %29 = load ptr, ptr %28, align 8, !dbg !849
  call void @emit_string(ptr noundef %26, ptr noundef %29), !dbg !850
  br label %42, !dbg !851

30:                                               ; preds = %11
  %31 = load ptr, ptr %3, align 8, !dbg !852
  %32 = load ptr, ptr %4, align 8, !dbg !853
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 5, !dbg !854
  %34 = load double, ptr %33, align 8, !dbg !854
  call void @emit_number(ptr noundef %31, double noundef %34), !dbg !855
  br label %42, !dbg !856

35:                                               ; preds = %11
  %36 = load ptr, ptr %3, align 8, !dbg !857
  %37 = load ptr, ptr %4, align 8, !dbg !858
  call void @emit_array(ptr noundef %36, ptr noundef %37), !dbg !859
  br label %42, !dbg !860

38:                                               ; preds = %11
  %39 = load ptr, ptr %3, align 8, !dbg !861
  %40 = load ptr, ptr %4, align 8, !dbg !862
  call void @emit_object(ptr noundef %39, ptr noundef %40), !dbg !863
  br label %42, !dbg !864

41:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.24, ptr noundef @.str.1, i32 noundef 1008, ptr noundef @__PRETTY_FUNCTION__.emit_value) #13, !dbg !865
  unreachable, !dbg !865

42:                                               ; preds = %38, %35, %30, %25, %17, %15
  ret void, !dbg !868
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_stringify_length(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !869 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.SB, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !873, metadata !DIExpression()), !dbg !874
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !875, metadata !DIExpression()), !dbg !876
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !877, metadata !DIExpression()), !dbg !878
  call void @llvm.dbg.declare(metadata ptr %7, metadata !879, metadata !DIExpression()), !dbg !880
  call void @sb_init(ptr noundef %7), !dbg !881
  %8 = load ptr, ptr %5, align 8, !dbg !882
  %9 = icmp ne ptr %8, null, !dbg !884
  br i1 %9, label %10, label %13, !dbg !885

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !dbg !886
  %12 = load ptr, ptr %5, align 8, !dbg !887
  call void @emit_value_indented(ptr noundef %7, ptr noundef %11, ptr noundef %12, i32 noundef 0), !dbg !888
  br label %15, !dbg !888

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !889
  call void @emit_value(ptr noundef %7, ptr noundef %14), !dbg !890
  br label %15

15:                                               ; preds = %13, %10
  %16 = load ptr, ptr %6, align 8, !dbg !891
  %17 = call ptr @sb_finish_length(ptr noundef %7, ptr noundef %16), !dbg !892
  ret ptr %17, !dbg !893
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @sb_finish_length(ptr noundef %0, ptr noundef %1) #0 !dbg !894 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !897, metadata !DIExpression()), !dbg !898
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !899, metadata !DIExpression()), !dbg !900
  %5 = load ptr, ptr %3, align 8, !dbg !901
  %6 = getelementptr inbounds %struct.SB, ptr %5, i32 0, i32 0, !dbg !902
  %7 = load ptr, ptr %6, align 8, !dbg !902
  store i8 0, ptr %7, align 1, !dbg !903
  %8 = load ptr, ptr %3, align 8, !dbg !904
  %9 = getelementptr inbounds %struct.SB, ptr %8, i32 0, i32 2, !dbg !904
  %10 = load ptr, ptr %9, align 8, !dbg !904
  %11 = load ptr, ptr %3, align 8, !dbg !904
  %12 = getelementptr inbounds %struct.SB, ptr %11, i32 0, i32 0, !dbg !904
  %13 = load ptr, ptr %12, align 8, !dbg !904
  %14 = icmp ule ptr %10, %13, !dbg !904
  br i1 %14, label %15, label %31, !dbg !904

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !dbg !904
  %17 = getelementptr inbounds %struct.SB, ptr %16, i32 0, i32 2, !dbg !904
  %18 = load ptr, ptr %17, align 8, !dbg !904
  %19 = call i64 @strlen(ptr noundef %18) #14, !dbg !904
  %20 = load ptr, ptr %3, align 8, !dbg !904
  %21 = getelementptr inbounds %struct.SB, ptr %20, i32 0, i32 0, !dbg !904
  %22 = load ptr, ptr %21, align 8, !dbg !904
  %23 = load ptr, ptr %3, align 8, !dbg !904
  %24 = getelementptr inbounds %struct.SB, ptr %23, i32 0, i32 2, !dbg !904
  %25 = load ptr, ptr %24, align 8, !dbg !904
  %26 = ptrtoint ptr %22 to i64, !dbg !904
  %27 = ptrtoint ptr %25 to i64, !dbg !904
  %28 = sub i64 %26, %27, !dbg !904
  %29 = icmp eq i64 %19, %28, !dbg !904
  br i1 %29, label %30, label %31, !dbg !907

30:                                               ; preds = %15
  br label %32, !dbg !907

31:                                               ; preds = %15, %2
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1, i32 noundef 105, ptr noundef @__PRETTY_FUNCTION__.sb_finish_length) #13, !dbg !904
  unreachable, !dbg !904

32:                                               ; preds = %30
  %33 = load ptr, ptr %3, align 8, !dbg !908
  %34 = getelementptr inbounds %struct.SB, ptr %33, i32 0, i32 0, !dbg !909
  %35 = load ptr, ptr %34, align 8, !dbg !909
  %36 = load ptr, ptr %3, align 8, !dbg !910
  %37 = getelementptr inbounds %struct.SB, ptr %36, i32 0, i32 2, !dbg !911
  %38 = load ptr, ptr %37, align 8, !dbg !911
  %39 = ptrtoint ptr %35 to i64, !dbg !912
  %40 = ptrtoint ptr %38 to i64, !dbg !912
  %41 = sub i64 %39, %40, !dbg !912
  %42 = load ptr, ptr %4, align 8, !dbg !913
  store i64 %41, ptr %42, align 8, !dbg !914
  %43 = load ptr, ptr %3, align 8, !dbg !915
  %44 = getelementptr inbounds %struct.SB, ptr %43, i32 0, i32 2, !dbg !916
  %45 = load ptr, ptr %44, align 8, !dbg !916
  ret ptr %45, !dbg !917
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_remove_from_parent(ptr noundef %0) #0 !dbg !918 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !919, metadata !DIExpression()), !dbg !920
  call void @llvm.dbg.declare(metadata ptr %3, metadata !921, metadata !DIExpression()), !dbg !922
  %4 = load ptr, ptr %2, align 8, !dbg !923
  %5 = getelementptr inbounds %struct.JsonNode, ptr %4, i32 0, i32 0, !dbg !924
  %6 = load ptr, ptr %5, align 8, !dbg !924
  store ptr %6, ptr %3, align 8, !dbg !922
  %7 = load ptr, ptr %3, align 8, !dbg !925
  %8 = icmp ne ptr %7, null, !dbg !927
  br i1 %8, label %9, label %61, !dbg !928

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !929
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 1, !dbg !932
  %12 = load ptr, ptr %11, align 8, !dbg !932
  %13 = icmp ne ptr %12, null, !dbg !933
  br i1 %13, label %14, label %22, !dbg !934

14:                                               ; preds = %9
  %15 = load ptr, ptr %2, align 8, !dbg !935
  %16 = getelementptr inbounds %struct.JsonNode, ptr %15, i32 0, i32 2, !dbg !936
  %17 = load ptr, ptr %16, align 8, !dbg !936
  %18 = load ptr, ptr %2, align 8, !dbg !937
  %19 = getelementptr inbounds %struct.JsonNode, ptr %18, i32 0, i32 1, !dbg !938
  %20 = load ptr, ptr %19, align 8, !dbg !938
  %21 = getelementptr inbounds %struct.JsonNode, ptr %20, i32 0, i32 2, !dbg !939
  store ptr %17, ptr %21, align 8, !dbg !940
  br label %29, !dbg !937

22:                                               ; preds = %9
  %23 = load ptr, ptr %2, align 8, !dbg !941
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 2, !dbg !942
  %25 = load ptr, ptr %24, align 8, !dbg !942
  %26 = load ptr, ptr %3, align 8, !dbg !943
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 5, !dbg !944
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 0, !dbg !945
  store ptr %25, ptr %28, align 8, !dbg !946
  br label %29

29:                                               ; preds = %22, %14
  %30 = load ptr, ptr %2, align 8, !dbg !947
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 2, !dbg !949
  %32 = load ptr, ptr %31, align 8, !dbg !949
  %33 = icmp ne ptr %32, null, !dbg !950
  br i1 %33, label %34, label %42, !dbg !951

34:                                               ; preds = %29
  %35 = load ptr, ptr %2, align 8, !dbg !952
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 1, !dbg !953
  %37 = load ptr, ptr %36, align 8, !dbg !953
  %38 = load ptr, ptr %2, align 8, !dbg !954
  %39 = getelementptr inbounds %struct.JsonNode, ptr %38, i32 0, i32 2, !dbg !955
  %40 = load ptr, ptr %39, align 8, !dbg !955
  %41 = getelementptr inbounds %struct.JsonNode, ptr %40, i32 0, i32 1, !dbg !956
  store ptr %37, ptr %41, align 8, !dbg !957
  br label %49, !dbg !954

42:                                               ; preds = %29
  %43 = load ptr, ptr %2, align 8, !dbg !958
  %44 = getelementptr inbounds %struct.JsonNode, ptr %43, i32 0, i32 1, !dbg !959
  %45 = load ptr, ptr %44, align 8, !dbg !959
  %46 = load ptr, ptr %3, align 8, !dbg !960
  %47 = getelementptr inbounds %struct.JsonNode, ptr %46, i32 0, i32 5, !dbg !961
  %48 = getelementptr inbounds %struct.anon, ptr %47, i32 0, i32 1, !dbg !962
  store ptr %45, ptr %48, align 8, !dbg !963
  br label %49

49:                                               ; preds = %42, %34
  %50 = load ptr, ptr %2, align 8, !dbg !964
  %51 = getelementptr inbounds %struct.JsonNode, ptr %50, i32 0, i32 3, !dbg !965
  %52 = load ptr, ptr %51, align 8, !dbg !965
  call void @free(ptr noundef %52) #11, !dbg !966
  %53 = load ptr, ptr %2, align 8, !dbg !967
  %54 = getelementptr inbounds %struct.JsonNode, ptr %53, i32 0, i32 0, !dbg !968
  store ptr null, ptr %54, align 8, !dbg !969
  %55 = load ptr, ptr %2, align 8, !dbg !970
  %56 = getelementptr inbounds %struct.JsonNode, ptr %55, i32 0, i32 2, !dbg !971
  store ptr null, ptr %56, align 8, !dbg !972
  %57 = load ptr, ptr %2, align 8, !dbg !973
  %58 = getelementptr inbounds %struct.JsonNode, ptr %57, i32 0, i32 1, !dbg !974
  store ptr null, ptr %58, align 8, !dbg !975
  %59 = load ptr, ptr %2, align 8, !dbg !976
  %60 = getelementptr inbounds %struct.JsonNode, ptr %59, i32 0, i32 3, !dbg !977
  store ptr null, ptr %60, align 8, !dbg !978
  br label %61, !dbg !979

61:                                               ; preds = %49, %1
  ret void, !dbg !980
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @json_validate(ptr noundef %0) #0 !dbg !981 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata ptr %4, metadata !986, metadata !DIExpression()), !dbg !987
  %5 = load ptr, ptr %3, align 8, !dbg !988
  store ptr %5, ptr %4, align 8, !dbg !987
  call void @skip_space(ptr noundef %4), !dbg !989
  %6 = call zeroext i1 @parse_value(ptr noundef %4, ptr noundef null), !dbg !990
  br i1 %6, label %8, label %7, !dbg !992

7:                                                ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !993
  br label %15, !dbg !993

8:                                                ; preds = %1
  call void @skip_space(ptr noundef %4), !dbg !994
  %9 = load ptr, ptr %4, align 8, !dbg !995
  %10 = load i8, ptr %9, align 1, !dbg !997
  %11 = sext i8 %10 to i32, !dbg !997
  %12 = icmp ne i32 %11, 0, !dbg !998
  br i1 %12, label %13, label %14, !dbg !999

13:                                               ; preds = %8
  store i1 false, ptr %2, align 1, !dbg !1000
  br label %15, !dbg !1000

14:                                               ; preds = %8
  store i1 true, ptr %2, align 1, !dbg !1001
  br label %15, !dbg !1001

15:                                               ; preds = %14, %13, %7
  %16 = load i1, ptr %2, align 1, !dbg !1002
  ret i1 %16, !dbg !1002
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_find_element(ptr noundef %0, i32 noundef %1) #0 !dbg !1003 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1006, metadata !DIExpression()), !dbg !1007
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1008, metadata !DIExpression()), !dbg !1009
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1010, metadata !DIExpression()), !dbg !1011
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1012, metadata !DIExpression()), !dbg !1013
  store i32 0, ptr %7, align 4, !dbg !1013
  %8 = load ptr, ptr %4, align 8, !dbg !1014
  %9 = icmp eq ptr %8, null, !dbg !1016
  br i1 %9, label %15, label %10, !dbg !1017

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !1018
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 4, !dbg !1019
  %13 = load i32, ptr %12, align 8, !dbg !1019
  %14 = icmp ne i32 %13, 4, !dbg !1020
  br i1 %14, label %15, label %16, !dbg !1021

15:                                               ; preds = %10, %2
  store ptr null, ptr %3, align 8, !dbg !1022
  br label %36, !dbg !1022

16:                                               ; preds = %10
  %17 = load ptr, ptr %4, align 8, !dbg !1023
  %18 = call ptr @json_first_child(ptr noundef %17), !dbg !1023
  store ptr %18, ptr %6, align 8, !dbg !1023
  br label %19, !dbg !1023

19:                                               ; preds = %31, %16
  %20 = load ptr, ptr %6, align 8, !dbg !1025
  %21 = icmp ne ptr %20, null, !dbg !1025
  br i1 %21, label %22, label %35, !dbg !1023

22:                                               ; preds = %19
  %23 = load i32, ptr %7, align 4, !dbg !1027
  %24 = load i32, ptr %5, align 4, !dbg !1030
  %25 = icmp eq i32 %23, %24, !dbg !1031
  br i1 %25, label %26, label %28, !dbg !1032

26:                                               ; preds = %22
  %27 = load ptr, ptr %6, align 8, !dbg !1033
  store ptr %27, ptr %3, align 8, !dbg !1034
  br label %36, !dbg !1034

28:                                               ; preds = %22
  %29 = load i32, ptr %7, align 4, !dbg !1035
  %30 = add nsw i32 %29, 1, !dbg !1035
  store i32 %30, ptr %7, align 4, !dbg !1035
  br label %31, !dbg !1036

31:                                               ; preds = %28
  %32 = load ptr, ptr %6, align 8, !dbg !1025
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 2, !dbg !1025
  %34 = load ptr, ptr %33, align 8, !dbg !1025
  store ptr %34, ptr %6, align 8, !dbg !1025
  br label %19, !dbg !1025, !llvm.loop !1037

35:                                               ; preds = %19
  store ptr null, ptr %3, align 8, !dbg !1039
  br label %36, !dbg !1039

36:                                               ; preds = %35, %26, %15
  %37 = load ptr, ptr %3, align 8, !dbg !1040
  ret ptr %37, !dbg !1040
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_first_child(ptr noundef %0) #0 !dbg !1041 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1044, metadata !DIExpression()), !dbg !1045
  %4 = load ptr, ptr %3, align 8, !dbg !1046
  %5 = icmp ne ptr %4, null, !dbg !1048
  br i1 %5, label %6, label %21, !dbg !1049

6:                                                ; preds = %1
  %7 = load ptr, ptr %3, align 8, !dbg !1050
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !1051
  %9 = load i32, ptr %8, align 8, !dbg !1051
  %10 = icmp eq i32 %9, 4, !dbg !1052
  br i1 %10, label %16, label %11, !dbg !1053

11:                                               ; preds = %6
  %12 = load ptr, ptr %3, align 8, !dbg !1054
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 4, !dbg !1055
  %14 = load i32, ptr %13, align 8, !dbg !1055
  %15 = icmp eq i32 %14, 5, !dbg !1056
  br i1 %15, label %16, label %21, !dbg !1057

16:                                               ; preds = %11, %6
  %17 = load ptr, ptr %3, align 8, !dbg !1058
  %18 = getelementptr inbounds %struct.JsonNode, ptr %17, i32 0, i32 5, !dbg !1059
  %19 = getelementptr inbounds %struct.anon, ptr %18, i32 0, i32 0, !dbg !1060
  %20 = load ptr, ptr %19, align 8, !dbg !1060
  store ptr %20, ptr %2, align 8, !dbg !1061
  br label %22, !dbg !1061

21:                                               ; preds = %11, %1
  store ptr null, ptr %2, align 8, !dbg !1062
  br label %22, !dbg !1062

22:                                               ; preds = %21, %16
  %23 = load ptr, ptr %2, align 8, !dbg !1063
  ret ptr %23, !dbg !1063
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_find_member(ptr noundef %0, ptr noundef %1) #0 !dbg !1064 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1067, metadata !DIExpression()), !dbg !1068
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1069, metadata !DIExpression()), !dbg !1070
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1071, metadata !DIExpression()), !dbg !1072
  %7 = load ptr, ptr %4, align 8, !dbg !1073
  %8 = icmp eq ptr %7, null, !dbg !1075
  br i1 %8, label %14, label %9, !dbg !1076

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1077
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 4, !dbg !1078
  %12 = load i32, ptr %11, align 8, !dbg !1078
  %13 = icmp ne i32 %12, 5, !dbg !1079
  br i1 %13, label %14, label %15, !dbg !1080

14:                                               ; preds = %9, %2
  store ptr null, ptr %3, align 8, !dbg !1081
  br label %36, !dbg !1081

15:                                               ; preds = %9
  %16 = load ptr, ptr %4, align 8, !dbg !1082
  %17 = call ptr @json_first_child(ptr noundef %16), !dbg !1082
  store ptr %17, ptr %6, align 8, !dbg !1082
  br label %18, !dbg !1082

18:                                               ; preds = %31, %15
  %19 = load ptr, ptr %6, align 8, !dbg !1084
  %20 = icmp ne ptr %19, null, !dbg !1084
  br i1 %20, label %21, label %35, !dbg !1082

21:                                               ; preds = %18
  %22 = load ptr, ptr %6, align 8, !dbg !1086
  %23 = getelementptr inbounds %struct.JsonNode, ptr %22, i32 0, i32 3, !dbg !1088
  %24 = load ptr, ptr %23, align 8, !dbg !1088
  %25 = load ptr, ptr %5, align 8, !dbg !1089
  %26 = call i32 @strcmp(ptr noundef %24, ptr noundef %25) #14, !dbg !1090
  %27 = icmp eq i32 %26, 0, !dbg !1091
  br i1 %27, label %28, label %30, !dbg !1092

28:                                               ; preds = %21
  %29 = load ptr, ptr %6, align 8, !dbg !1093
  store ptr %29, ptr %3, align 8, !dbg !1094
  br label %36, !dbg !1094

30:                                               ; preds = %21
  br label %31, !dbg !1095

31:                                               ; preds = %30
  %32 = load ptr, ptr %6, align 8, !dbg !1084
  %33 = getelementptr inbounds %struct.JsonNode, ptr %32, i32 0, i32 2, !dbg !1084
  %34 = load ptr, ptr %33, align 8, !dbg !1084
  store ptr %34, ptr %6, align 8, !dbg !1084
  br label %18, !dbg !1084, !llvm.loop !1096

35:                                               ; preds = %18
  store ptr null, ptr %3, align 8, !dbg !1098
  br label %36, !dbg !1098

36:                                               ; preds = %35, %28, %14
  %37 = load ptr, ptr %3, align 8, !dbg !1099
  ret ptr %37, !dbg !1099
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mknull() #0 !dbg !1100 {
  %1 = call ptr @mknode(i32 noundef 0), !dbg !1103
  ret ptr %1, !dbg !1104
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mknode(i32 noundef %0) #0 !dbg !1105 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1108, metadata !DIExpression()), !dbg !1109
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1110, metadata !DIExpression()), !dbg !1111
  %4 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 56) #15, !dbg !1112
  store ptr %4, ptr %3, align 8, !dbg !1111
  %5 = load ptr, ptr %3, align 8, !dbg !1113
  %6 = icmp eq ptr %5, null, !dbg !1115
  br i1 %6, label %7, label %12, !dbg !1116

7:                                                ; preds = %1
  br label %8, !dbg !1117

8:                                                ; preds = %7
  %9 = load ptr, ptr @stderr, align 8, !dbg !1118
  %10 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef @.str.21), !dbg !1118
  call void @exit(i32 noundef 1) #13, !dbg !1118
  unreachable, !dbg !1118

11:                                               ; No predecessors!
  br label %12, !dbg !1118

12:                                               ; preds = %11, %1
  %13 = load i32, ptr %2, align 4, !dbg !1120
  %14 = load ptr, ptr %3, align 8, !dbg !1121
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 4, !dbg !1122
  store i32 %13, ptr %15, align 8, !dbg !1123
  %16 = load ptr, ptr %3, align 8, !dbg !1124
  ret ptr %16, !dbg !1125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkbool(i1 noundef zeroext %0) #0 !dbg !1126 {
  %2 = alloca i8, align 1
  %3 = alloca ptr, align 8
  %4 = zext i1 %0 to i8
  store i8 %4, ptr %2, align 1
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1129, metadata !DIExpression()), !dbg !1130
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1131, metadata !DIExpression()), !dbg !1132
  %5 = call ptr @mknode(i32 noundef 1), !dbg !1133
  store ptr %5, ptr %3, align 8, !dbg !1132
  %6 = load i8, ptr %2, align 1, !dbg !1134
  %7 = trunc i8 %6 to i1, !dbg !1134
  %8 = load ptr, ptr %3, align 8, !dbg !1135
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 5, !dbg !1136
  %10 = zext i1 %7 to i8, !dbg !1137
  store i8 %10, ptr %9, align 8, !dbg !1137
  %11 = load ptr, ptr %3, align 8, !dbg !1138
  ret ptr %11, !dbg !1139
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkstring(ptr noundef %0) #0 !dbg !1140 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1141, metadata !DIExpression()), !dbg !1142
  %3 = load ptr, ptr %2, align 8, !dbg !1143
  %4 = call noalias ptr @strdup(ptr noundef %3) #11, !dbg !1144
  %5 = call ptr @mkstring(ptr noundef %4), !dbg !1145
  ret ptr %5, !dbg !1146
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @mkstring(ptr noundef %0) #0 !dbg !1147 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1150, metadata !DIExpression()), !dbg !1151
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1152, metadata !DIExpression()), !dbg !1153
  %4 = call ptr @mknode(i32 noundef 2), !dbg !1154
  store ptr %4, ptr %3, align 8, !dbg !1153
  %5 = load ptr, ptr %2, align 8, !dbg !1155
  %6 = load ptr, ptr %3, align 8, !dbg !1156
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 5, !dbg !1157
  store ptr %5, ptr %7, align 8, !dbg !1158
  %8 = load ptr, ptr %3, align 8, !dbg !1159
  ret ptr %8, !dbg !1160
}

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mknumber(double noundef %0) #0 !dbg !1161 {
  %2 = alloca double, align 8
  %3 = alloca ptr, align 8
  store double %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1164, metadata !DIExpression()), !dbg !1165
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1166, metadata !DIExpression()), !dbg !1167
  %4 = call ptr @mknode(i32 noundef 3), !dbg !1168
  store ptr %4, ptr %3, align 8, !dbg !1167
  %5 = load double, ptr %2, align 8, !dbg !1169
  %6 = load ptr, ptr %3, align 8, !dbg !1170
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 5, !dbg !1171
  store double %5, ptr %7, align 8, !dbg !1172
  %8 = load ptr, ptr %3, align 8, !dbg !1173
  ret ptr %8, !dbg !1174
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkarray() #0 !dbg !1175 {
  %1 = call ptr @mknode(i32 noundef 4), !dbg !1176
  ret ptr %1, !dbg !1177
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @json_mkobject() #0 !dbg !1178 {
  %1 = call ptr @mknode(i32 noundef 5), !dbg !1179
  ret ptr %1, !dbg !1180
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_append_element(ptr noundef %0, ptr noundef %1) #0 !dbg !1181 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1184, metadata !DIExpression()), !dbg !1185
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1186, metadata !DIExpression()), !dbg !1187
  %5 = load ptr, ptr %3, align 8, !dbg !1188
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !1188
  %7 = load i32, ptr %6, align 8, !dbg !1188
  %8 = icmp eq i32 %7, 4, !dbg !1188
  br i1 %8, label %9, label %10, !dbg !1191

9:                                                ; preds = %2
  br label %11, !dbg !1191

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 581, ptr noundef @__PRETTY_FUNCTION__.json_append_element) #13, !dbg !1188
  unreachable, !dbg !1188

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !1192
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 0, !dbg !1192
  %14 = load ptr, ptr %13, align 8, !dbg !1192
  %15 = icmp eq ptr %14, null, !dbg !1192
  br i1 %15, label %16, label %17, !dbg !1195

16:                                               ; preds = %11
  br label %18, !dbg !1195

17:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 582, ptr noundef @__PRETTY_FUNCTION__.json_append_element) #13, !dbg !1192
  unreachable, !dbg !1192

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8, !dbg !1196
  %20 = load ptr, ptr %4, align 8, !dbg !1197
  call void @append_node(ptr noundef %19, ptr noundef %20), !dbg !1198
  ret void, !dbg !1199
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_node(ptr noundef %0, ptr noundef %1) #0 !dbg !1200 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1201, metadata !DIExpression()), !dbg !1202
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1203, metadata !DIExpression()), !dbg !1204
  %5 = load ptr, ptr %3, align 8, !dbg !1205
  %6 = load ptr, ptr %4, align 8, !dbg !1206
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 0, !dbg !1207
  store ptr %5, ptr %7, align 8, !dbg !1208
  %8 = load ptr, ptr %3, align 8, !dbg !1209
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 5, !dbg !1210
  %10 = getelementptr inbounds %struct.anon, ptr %9, i32 0, i32 1, !dbg !1211
  %11 = load ptr, ptr %10, align 8, !dbg !1211
  %12 = load ptr, ptr %4, align 8, !dbg !1212
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 1, !dbg !1213
  store ptr %11, ptr %13, align 8, !dbg !1214
  %14 = load ptr, ptr %4, align 8, !dbg !1215
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 2, !dbg !1216
  store ptr null, ptr %15, align 8, !dbg !1217
  %16 = load ptr, ptr %3, align 8, !dbg !1218
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 5, !dbg !1220
  %18 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 1, !dbg !1221
  %19 = load ptr, ptr %18, align 8, !dbg !1221
  %20 = icmp ne ptr %19, null, !dbg !1222
  br i1 %20, label %21, label %28, !dbg !1223

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !1224
  %23 = load ptr, ptr %3, align 8, !dbg !1225
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !1226
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 1, !dbg !1227
  %26 = load ptr, ptr %25, align 8, !dbg !1227
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 2, !dbg !1228
  store ptr %22, ptr %27, align 8, !dbg !1229
  br label %33, !dbg !1225

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8, !dbg !1230
  %30 = load ptr, ptr %3, align 8, !dbg !1231
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 5, !dbg !1232
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 0, !dbg !1233
  store ptr %29, ptr %32, align 8, !dbg !1234
  br label %33

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %4, align 8, !dbg !1235
  %35 = load ptr, ptr %3, align 8, !dbg !1236
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 5, !dbg !1237
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 1, !dbg !1238
  store ptr %34, ptr %37, align 8, !dbg !1239
  ret void, !dbg !1240
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_prepend_element(ptr noundef %0, ptr noundef %1) #0 !dbg !1241 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1242, metadata !DIExpression()), !dbg !1243
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1244, metadata !DIExpression()), !dbg !1245
  %5 = load ptr, ptr %3, align 8, !dbg !1246
  %6 = getelementptr inbounds %struct.JsonNode, ptr %5, i32 0, i32 4, !dbg !1246
  %7 = load i32, ptr %6, align 8, !dbg !1246
  %8 = icmp eq i32 %7, 4, !dbg !1246
  br i1 %8, label %9, label %10, !dbg !1249

9:                                                ; preds = %2
  br label %11, !dbg !1249

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 589, ptr noundef @__PRETTY_FUNCTION__.json_prepend_element) #13, !dbg !1246
  unreachable, !dbg !1246

11:                                               ; preds = %9
  %12 = load ptr, ptr %4, align 8, !dbg !1250
  %13 = getelementptr inbounds %struct.JsonNode, ptr %12, i32 0, i32 0, !dbg !1250
  %14 = load ptr, ptr %13, align 8, !dbg !1250
  %15 = icmp eq ptr %14, null, !dbg !1250
  br i1 %15, label %16, label %17, !dbg !1253

16:                                               ; preds = %11
  br label %18, !dbg !1253

17:                                               ; preds = %11
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.1, i32 noundef 590, ptr noundef @__PRETTY_FUNCTION__.json_prepend_element) #13, !dbg !1250
  unreachable, !dbg !1250

18:                                               ; preds = %16
  %19 = load ptr, ptr %3, align 8, !dbg !1254
  %20 = load ptr, ptr %4, align 8, !dbg !1255
  call void @prepend_node(ptr noundef %19, ptr noundef %20), !dbg !1256
  ret void, !dbg !1257
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prepend_node(ptr noundef %0, ptr noundef %1) #0 !dbg !1258 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1259, metadata !DIExpression()), !dbg !1260
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1261, metadata !DIExpression()), !dbg !1262
  %5 = load ptr, ptr %3, align 8, !dbg !1263
  %6 = load ptr, ptr %4, align 8, !dbg !1264
  %7 = getelementptr inbounds %struct.JsonNode, ptr %6, i32 0, i32 0, !dbg !1265
  store ptr %5, ptr %7, align 8, !dbg !1266
  %8 = load ptr, ptr %4, align 8, !dbg !1267
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 1, !dbg !1268
  store ptr null, ptr %9, align 8, !dbg !1269
  %10 = load ptr, ptr %3, align 8, !dbg !1270
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 5, !dbg !1271
  %12 = getelementptr inbounds %struct.anon, ptr %11, i32 0, i32 0, !dbg !1272
  %13 = load ptr, ptr %12, align 8, !dbg !1272
  %14 = load ptr, ptr %4, align 8, !dbg !1273
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 2, !dbg !1274
  store ptr %13, ptr %15, align 8, !dbg !1275
  %16 = load ptr, ptr %3, align 8, !dbg !1276
  %17 = getelementptr inbounds %struct.JsonNode, ptr %16, i32 0, i32 5, !dbg !1278
  %18 = getelementptr inbounds %struct.anon, ptr %17, i32 0, i32 0, !dbg !1279
  %19 = load ptr, ptr %18, align 8, !dbg !1279
  %20 = icmp ne ptr %19, null, !dbg !1280
  br i1 %20, label %21, label %28, !dbg !1281

21:                                               ; preds = %2
  %22 = load ptr, ptr %4, align 8, !dbg !1282
  %23 = load ptr, ptr %3, align 8, !dbg !1283
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 5, !dbg !1284
  %25 = getelementptr inbounds %struct.anon, ptr %24, i32 0, i32 0, !dbg !1285
  %26 = load ptr, ptr %25, align 8, !dbg !1285
  %27 = getelementptr inbounds %struct.JsonNode, ptr %26, i32 0, i32 1, !dbg !1286
  store ptr %22, ptr %27, align 8, !dbg !1287
  br label %33, !dbg !1283

28:                                               ; preds = %2
  %29 = load ptr, ptr %4, align 8, !dbg !1288
  %30 = load ptr, ptr %3, align 8, !dbg !1289
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 5, !dbg !1290
  %32 = getelementptr inbounds %struct.anon, ptr %31, i32 0, i32 1, !dbg !1291
  store ptr %29, ptr %32, align 8, !dbg !1292
  br label %33

33:                                               ; preds = %28, %21
  %34 = load ptr, ptr %4, align 8, !dbg !1293
  %35 = load ptr, ptr %3, align 8, !dbg !1294
  %36 = getelementptr inbounds %struct.JsonNode, ptr %35, i32 0, i32 5, !dbg !1295
  %37 = getelementptr inbounds %struct.anon, ptr %36, i32 0, i32 0, !dbg !1296
  store ptr %34, ptr %37, align 8, !dbg !1297
  ret void, !dbg !1298
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_append_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1299 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1302, metadata !DIExpression()), !dbg !1303
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1304, metadata !DIExpression()), !dbg !1305
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1306, metadata !DIExpression()), !dbg !1307
  %7 = load ptr, ptr %4, align 8, !dbg !1308
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !1308
  %9 = load i32, ptr %8, align 8, !dbg !1308
  %10 = icmp eq i32 %9, 5, !dbg !1308
  br i1 %10, label %11, label %12, !dbg !1311

11:                                               ; preds = %3
  br label %13, !dbg !1311

12:                                               ; preds = %3
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 597, ptr noundef @__PRETTY_FUNCTION__.json_append_member) #13, !dbg !1308
  unreachable, !dbg !1308

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !1312
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 0, !dbg !1312
  %16 = load ptr, ptr %15, align 8, !dbg !1312
  %17 = icmp eq ptr %16, null, !dbg !1312
  br i1 %17, label %18, label %19, !dbg !1315

18:                                               ; preds = %13
  br label %20, !dbg !1315

19:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 598, ptr noundef @__PRETTY_FUNCTION__.json_append_member) #13, !dbg !1312
  unreachable, !dbg !1312

20:                                               ; preds = %18
  %21 = load ptr, ptr %4, align 8, !dbg !1316
  %22 = load ptr, ptr %5, align 8, !dbg !1317
  %23 = call noalias ptr @strdup(ptr noundef %22) #11, !dbg !1318
  %24 = load ptr, ptr %6, align 8, !dbg !1319
  call void @append_member(ptr noundef %21, ptr noundef %23, ptr noundef %24), !dbg !1320
  ret void, !dbg !1321
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @append_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1322 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1325, metadata !DIExpression()), !dbg !1326
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1327, metadata !DIExpression()), !dbg !1328
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1329, metadata !DIExpression()), !dbg !1330
  %7 = load ptr, ptr %5, align 8, !dbg !1331
  %8 = load ptr, ptr %6, align 8, !dbg !1332
  %9 = getelementptr inbounds %struct.JsonNode, ptr %8, i32 0, i32 3, !dbg !1333
  store ptr %7, ptr %9, align 8, !dbg !1334
  %10 = load ptr, ptr %4, align 8, !dbg !1335
  %11 = load ptr, ptr %6, align 8, !dbg !1336
  call void @append_node(ptr noundef %10, ptr noundef %11), !dbg !1337
  ret void, !dbg !1338
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @json_prepend_member(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1339 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1340, metadata !DIExpression()), !dbg !1341
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1342, metadata !DIExpression()), !dbg !1343
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1344, metadata !DIExpression()), !dbg !1345
  %7 = load ptr, ptr %4, align 8, !dbg !1346
  %8 = getelementptr inbounds %struct.JsonNode, ptr %7, i32 0, i32 4, !dbg !1346
  %9 = load i32, ptr %8, align 8, !dbg !1346
  %10 = icmp eq i32 %9, 5, !dbg !1346
  br i1 %10, label %11, label %12, !dbg !1349

11:                                               ; preds = %3
  br label %13, !dbg !1349

12:                                               ; preds = %3
  call void @__assert_fail(ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 605, ptr noundef @__PRETTY_FUNCTION__.json_prepend_member) #13, !dbg !1346
  unreachable, !dbg !1346

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !1350
  %15 = getelementptr inbounds %struct.JsonNode, ptr %14, i32 0, i32 0, !dbg !1350
  %16 = load ptr, ptr %15, align 8, !dbg !1350
  %17 = icmp eq ptr %16, null, !dbg !1350
  br i1 %17, label %18, label %19, !dbg !1353

18:                                               ; preds = %13
  br label %20, !dbg !1353

19:                                               ; preds = %13
  call void @__assert_fail(ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 606, ptr noundef @__PRETTY_FUNCTION__.json_prepend_member) #13, !dbg !1350
  unreachable, !dbg !1350

20:                                               ; preds = %18
  %21 = load ptr, ptr %5, align 8, !dbg !1354
  %22 = call noalias ptr @strdup(ptr noundef %21) #11, !dbg !1355
  %23 = load ptr, ptr %6, align 8, !dbg !1356
  %24 = getelementptr inbounds %struct.JsonNode, ptr %23, i32 0, i32 3, !dbg !1357
  store ptr %22, ptr %24, align 8, !dbg !1358
  %25 = load ptr, ptr %4, align 8, !dbg !1359
  %26 = load ptr, ptr %6, align 8, !dbg !1360
  call void @prepend_node(ptr noundef %25, ptr noundef %26), !dbg !1361
  ret void, !dbg !1362
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @json_check(ptr noundef %0, ptr noundef %1) #0 !dbg !1363 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1366, metadata !DIExpression()), !dbg !1367
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1368, metadata !DIExpression()), !dbg !1369
  %10 = load ptr, ptr %4, align 8, !dbg !1370
  %11 = getelementptr inbounds %struct.JsonNode, ptr %10, i32 0, i32 3, !dbg !1372
  %12 = load ptr, ptr %11, align 8, !dbg !1372
  %13 = icmp ne ptr %12, null, !dbg !1373
  br i1 %13, label %14, label %28, !dbg !1374

14:                                               ; preds = %2
  %15 = load ptr, ptr %4, align 8, !dbg !1375
  %16 = getelementptr inbounds %struct.JsonNode, ptr %15, i32 0, i32 3, !dbg !1376
  %17 = load ptr, ptr %16, align 8, !dbg !1376
  %18 = call zeroext i1 @utf8_validate(ptr noundef %17), !dbg !1377
  br i1 %18, label %28, label %19, !dbg !1378

19:                                               ; preds = %14
  br label %20, !dbg !1379

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 8, !dbg !1380
  %22 = icmp ne ptr %21, null, !dbg !1380
  br i1 %22, label %23, label %26, !dbg !1383

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !1380
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %24, i64 noundef 256, ptr noundef @.str.5) #11, !dbg !1380
  br label %26, !dbg !1380

26:                                               ; preds = %23, %20
  store i1 false, ptr %3, align 1, !dbg !1383
  br label %323, !dbg !1383

27:                                               ; No predecessors!
  br label %28, !dbg !1383

28:                                               ; preds = %27, %14, %2
  %29 = load ptr, ptr %4, align 8, !dbg !1384
  %30 = getelementptr inbounds %struct.JsonNode, ptr %29, i32 0, i32 4, !dbg !1386
  %31 = load i32, ptr %30, align 8, !dbg !1386
  %32 = call zeroext i1 @tag_is_valid(i32 noundef %31), !dbg !1387
  br i1 %32, label %45, label %33, !dbg !1388

33:                                               ; preds = %28
  br label %34, !dbg !1389

34:                                               ; preds = %33
  %35 = load ptr, ptr %5, align 8, !dbg !1390
  %36 = icmp ne ptr %35, null, !dbg !1390
  br i1 %36, label %37, label %43, !dbg !1393

37:                                               ; preds = %34
  %38 = load ptr, ptr %5, align 8, !dbg !1390
  %39 = load ptr, ptr %4, align 8, !dbg !1390
  %40 = getelementptr inbounds %struct.JsonNode, ptr %39, i32 0, i32 4, !dbg !1390
  %41 = load i32, ptr %40, align 8, !dbg !1390
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %38, i64 noundef 256, ptr noundef @.str.6, i32 noundef %41) #11, !dbg !1390
  br label %43, !dbg !1390

43:                                               ; preds = %37, %34
  store i1 false, ptr %3, align 1, !dbg !1393
  br label %323, !dbg !1393

44:                                               ; No predecessors!
  br label %45, !dbg !1393

45:                                               ; preds = %44, %28
  %46 = load ptr, ptr %4, align 8, !dbg !1394
  %47 = getelementptr inbounds %struct.JsonNode, ptr %46, i32 0, i32 4, !dbg !1396
  %48 = load i32, ptr %47, align 8, !dbg !1396
  %49 = icmp eq i32 %48, 1, !dbg !1397
  br i1 %49, label %50, label %74, !dbg !1398

50:                                               ; preds = %45
  %51 = load ptr, ptr %4, align 8, !dbg !1399
  %52 = getelementptr inbounds %struct.JsonNode, ptr %51, i32 0, i32 5, !dbg !1402
  %53 = load i8, ptr %52, align 8, !dbg !1402
  %54 = trunc i8 %53 to i1, !dbg !1402
  %55 = zext i1 %54 to i32, !dbg !1399
  %56 = icmp ne i32 %55, 0, !dbg !1403
  br i1 %56, label %57, label %73, !dbg !1404

57:                                               ; preds = %50
  %58 = load ptr, ptr %4, align 8, !dbg !1405
  %59 = getelementptr inbounds %struct.JsonNode, ptr %58, i32 0, i32 5, !dbg !1406
  %60 = load i8, ptr %59, align 8, !dbg !1406
  %61 = trunc i8 %60 to i1, !dbg !1406
  %62 = zext i1 %61 to i32, !dbg !1405
  %63 = icmp ne i32 %62, 1, !dbg !1407
  br i1 %63, label %64, label %73, !dbg !1408

64:                                               ; preds = %57
  br label %65, !dbg !1409

65:                                               ; preds = %64
  %66 = load ptr, ptr %5, align 8, !dbg !1410
  %67 = icmp ne ptr %66, null, !dbg !1410
  br i1 %67, label %68, label %71, !dbg !1413

68:                                               ; preds = %65
  %69 = load ptr, ptr %5, align 8, !dbg !1410
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %69, i64 noundef 256, ptr noundef @.str.7, i32 noundef 0, i32 noundef 1) #11, !dbg !1410
  br label %71, !dbg !1410

71:                                               ; preds = %68, %65
  store i1 false, ptr %3, align 1, !dbg !1413
  br label %323, !dbg !1413

72:                                               ; No predecessors!
  br label %73, !dbg !1413

73:                                               ; preds = %72, %57, %50
  br label %322, !dbg !1414

74:                                               ; preds = %45
  %75 = load ptr, ptr %4, align 8, !dbg !1415
  %76 = getelementptr inbounds %struct.JsonNode, ptr %75, i32 0, i32 4, !dbg !1417
  %77 = load i32, ptr %76, align 8, !dbg !1417
  %78 = icmp eq i32 %77, 2, !dbg !1418
  br i1 %78, label %79, label %108, !dbg !1419

79:                                               ; preds = %74
  %80 = load ptr, ptr %4, align 8, !dbg !1420
  %81 = getelementptr inbounds %struct.JsonNode, ptr %80, i32 0, i32 5, !dbg !1423
  %82 = load ptr, ptr %81, align 8, !dbg !1423
  %83 = icmp eq ptr %82, null, !dbg !1424
  br i1 %83, label %84, label %93, !dbg !1425

84:                                               ; preds = %79
  br label %85, !dbg !1426

85:                                               ; preds = %84
  %86 = load ptr, ptr %5, align 8, !dbg !1427
  %87 = icmp ne ptr %86, null, !dbg !1427
  br i1 %87, label %88, label %91, !dbg !1430

88:                                               ; preds = %85
  %89 = load ptr, ptr %5, align 8, !dbg !1427
  %90 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %89, i64 noundef 256, ptr noundef @.str.8) #11, !dbg !1427
  br label %91, !dbg !1427

91:                                               ; preds = %88, %85
  store i1 false, ptr %3, align 1, !dbg !1430
  br label %323, !dbg !1430

92:                                               ; No predecessors!
  br label %93, !dbg !1430

93:                                               ; preds = %92, %79
  %94 = load ptr, ptr %4, align 8, !dbg !1431
  %95 = getelementptr inbounds %struct.JsonNode, ptr %94, i32 0, i32 5, !dbg !1433
  %96 = load ptr, ptr %95, align 8, !dbg !1433
  %97 = call zeroext i1 @utf8_validate(ptr noundef %96), !dbg !1434
  br i1 %97, label %107, label %98, !dbg !1435

98:                                               ; preds = %93
  br label %99, !dbg !1436

99:                                               ; preds = %98
  %100 = load ptr, ptr %5, align 8, !dbg !1437
  %101 = icmp ne ptr %100, null, !dbg !1437
  br i1 %101, label %102, label %105, !dbg !1440

102:                                              ; preds = %99
  %103 = load ptr, ptr %5, align 8, !dbg !1437
  %104 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %103, i64 noundef 256, ptr noundef @.str.9) #11, !dbg !1437
  br label %105, !dbg !1437

105:                                              ; preds = %102, %99
  store i1 false, ptr %3, align 1, !dbg !1440
  br label %323, !dbg !1440

106:                                              ; No predecessors!
  br label %107, !dbg !1440

107:                                              ; preds = %106, %93
  br label %321, !dbg !1441

108:                                              ; preds = %74
  %109 = load ptr, ptr %4, align 8, !dbg !1442
  %110 = getelementptr inbounds %struct.JsonNode, ptr %109, i32 0, i32 4, !dbg !1444
  %111 = load i32, ptr %110, align 8, !dbg !1444
  %112 = icmp eq i32 %111, 4, !dbg !1445
  br i1 %112, label %118, label %113, !dbg !1446

113:                                              ; preds = %108
  %114 = load ptr, ptr %4, align 8, !dbg !1447
  %115 = getelementptr inbounds %struct.JsonNode, ptr %114, i32 0, i32 4, !dbg !1448
  %116 = load i32, ptr %115, align 8, !dbg !1448
  %117 = icmp eq i32 %116, 5, !dbg !1449
  br i1 %117, label %118, label %320, !dbg !1450

118:                                              ; preds = %113, %108
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1451, metadata !DIExpression()), !dbg !1453
  %119 = load ptr, ptr %4, align 8, !dbg !1454
  %120 = getelementptr inbounds %struct.JsonNode, ptr %119, i32 0, i32 5, !dbg !1455
  %121 = getelementptr inbounds %struct.anon, ptr %120, i32 0, i32 0, !dbg !1456
  %122 = load ptr, ptr %121, align 8, !dbg !1456
  store ptr %122, ptr %6, align 8, !dbg !1453
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1457, metadata !DIExpression()), !dbg !1458
  %123 = load ptr, ptr %4, align 8, !dbg !1459
  %124 = getelementptr inbounds %struct.JsonNode, ptr %123, i32 0, i32 5, !dbg !1460
  %125 = getelementptr inbounds %struct.anon, ptr %124, i32 0, i32 1, !dbg !1461
  %126 = load ptr, ptr %125, align 8, !dbg !1461
  store ptr %126, ptr %7, align 8, !dbg !1458
  %127 = load ptr, ptr %6, align 8, !dbg !1462
  %128 = icmp eq ptr %127, null, !dbg !1464
  br i1 %128, label %132, label %129, !dbg !1465

129:                                              ; preds = %118
  %130 = load ptr, ptr %7, align 8, !dbg !1466
  %131 = icmp eq ptr %130, null, !dbg !1467
  br i1 %131, label %132, label %157, !dbg !1468

132:                                              ; preds = %129, %118
  %133 = load ptr, ptr %6, align 8, !dbg !1469
  %134 = icmp ne ptr %133, null, !dbg !1472
  br i1 %134, label %135, label %144, !dbg !1473

135:                                              ; preds = %132
  br label %136, !dbg !1474

136:                                              ; preds = %135
  %137 = load ptr, ptr %5, align 8, !dbg !1475
  %138 = icmp ne ptr %137, null, !dbg !1475
  br i1 %138, label %139, label %142, !dbg !1478

139:                                              ; preds = %136
  %140 = load ptr, ptr %5, align 8, !dbg !1475
  %141 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %140, i64 noundef 256, ptr noundef @.str.10) #11, !dbg !1475
  br label %142, !dbg !1475

142:                                              ; preds = %139, %136
  store i1 false, ptr %3, align 1, !dbg !1478
  br label %323, !dbg !1478

143:                                              ; No predecessors!
  br label %144, !dbg !1478

144:                                              ; preds = %143, %132
  %145 = load ptr, ptr %7, align 8, !dbg !1479
  %146 = icmp ne ptr %145, null, !dbg !1481
  br i1 %146, label %147, label %156, !dbg !1482

147:                                              ; preds = %144
  br label %148, !dbg !1483

148:                                              ; preds = %147
  %149 = load ptr, ptr %5, align 8, !dbg !1484
  %150 = icmp ne ptr %149, null, !dbg !1484
  br i1 %150, label %151, label %154, !dbg !1487

151:                                              ; preds = %148
  %152 = load ptr, ptr %5, align 8, !dbg !1484
  %153 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %152, i64 noundef 256, ptr noundef @.str.11) #11, !dbg !1484
  br label %154, !dbg !1484

154:                                              ; preds = %151, %148
  store i1 false, ptr %3, align 1, !dbg !1487
  br label %323, !dbg !1487

155:                                              ; No predecessors!
  br label %156, !dbg !1487

156:                                              ; preds = %155, %144
  br label %319, !dbg !1488

157:                                              ; preds = %129
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1489, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1492, metadata !DIExpression()), !dbg !1493
  store ptr null, ptr %9, align 8, !dbg !1493
  %158 = load ptr, ptr %6, align 8, !dbg !1494
  %159 = getelementptr inbounds %struct.JsonNode, ptr %158, i32 0, i32 1, !dbg !1496
  %160 = load ptr, ptr %159, align 8, !dbg !1496
  %161 = icmp ne ptr %160, null, !dbg !1497
  br i1 %161, label %162, label %171, !dbg !1498

162:                                              ; preds = %157
  br label %163, !dbg !1499

163:                                              ; preds = %162
  %164 = load ptr, ptr %5, align 8, !dbg !1500
  %165 = icmp ne ptr %164, null, !dbg !1500
  br i1 %165, label %166, label %169, !dbg !1503

166:                                              ; preds = %163
  %167 = load ptr, ptr %5, align 8, !dbg !1500
  %168 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %167, i64 noundef 256, ptr noundef @.str.12) #11, !dbg !1500
  br label %169, !dbg !1500

169:                                              ; preds = %166, %163
  store i1 false, ptr %3, align 1, !dbg !1503
  br label %323, !dbg !1503

170:                                              ; No predecessors!
  br label %171, !dbg !1503

171:                                              ; preds = %170, %157
  %172 = load ptr, ptr %6, align 8, !dbg !1504
  store ptr %172, ptr %8, align 8, !dbg !1506
  br label %173, !dbg !1507

173:                                              ; preds = %300, %171
  %174 = load ptr, ptr %8, align 8, !dbg !1508
  %175 = icmp ne ptr %174, null, !dbg !1510
  br i1 %175, label %176, label %305, !dbg !1511

176:                                              ; preds = %173
  %177 = load ptr, ptr %8, align 8, !dbg !1512
  %178 = load ptr, ptr %4, align 8, !dbg !1515
  %179 = icmp eq ptr %177, %178, !dbg !1516
  br i1 %179, label %180, label %189, !dbg !1517

180:                                              ; preds = %176
  br label %181, !dbg !1518

181:                                              ; preds = %180
  %182 = load ptr, ptr %5, align 8, !dbg !1519
  %183 = icmp ne ptr %182, null, !dbg !1519
  br i1 %183, label %184, label %187, !dbg !1522

184:                                              ; preds = %181
  %185 = load ptr, ptr %5, align 8, !dbg !1519
  %186 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %185, i64 noundef 256, ptr noundef @.str.13) #11, !dbg !1519
  br label %187, !dbg !1519

187:                                              ; preds = %184, %181
  store i1 false, ptr %3, align 1, !dbg !1522
  br label %323, !dbg !1522

188:                                              ; No predecessors!
  br label %189, !dbg !1522

189:                                              ; preds = %188, %176
  %190 = load ptr, ptr %8, align 8, !dbg !1523
  %191 = getelementptr inbounds %struct.JsonNode, ptr %190, i32 0, i32 2, !dbg !1525
  %192 = load ptr, ptr %191, align 8, !dbg !1525
  %193 = load ptr, ptr %8, align 8, !dbg !1526
  %194 = icmp eq ptr %192, %193, !dbg !1527
  br i1 %194, label %195, label %204, !dbg !1528

195:                                              ; preds = %189
  br label %196, !dbg !1529

196:                                              ; preds = %195
  %197 = load ptr, ptr %5, align 8, !dbg !1530
  %198 = icmp ne ptr %197, null, !dbg !1530
  br i1 %198, label %199, label %202, !dbg !1533

199:                                              ; preds = %196
  %200 = load ptr, ptr %5, align 8, !dbg !1530
  %201 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %200, i64 noundef 256, ptr noundef @.str.14) #11, !dbg !1530
  br label %202, !dbg !1530

202:                                              ; preds = %199, %196
  store i1 false, ptr %3, align 1, !dbg !1533
  br label %323, !dbg !1533

203:                                              ; No predecessors!
  br label %204, !dbg !1533

204:                                              ; preds = %203, %189
  %205 = load ptr, ptr %8, align 8, !dbg !1534
  %206 = getelementptr inbounds %struct.JsonNode, ptr %205, i32 0, i32 2, !dbg !1536
  %207 = load ptr, ptr %206, align 8, !dbg !1536
  %208 = load ptr, ptr %6, align 8, !dbg !1537
  %209 = icmp eq ptr %207, %208, !dbg !1538
  br i1 %209, label %210, label %219, !dbg !1539

210:                                              ; preds = %204
  br label %211, !dbg !1540

211:                                              ; preds = %210
  %212 = load ptr, ptr %5, align 8, !dbg !1541
  %213 = icmp ne ptr %212, null, !dbg !1541
  br i1 %213, label %214, label %217, !dbg !1544

214:                                              ; preds = %211
  %215 = load ptr, ptr %5, align 8, !dbg !1541
  %216 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %215, i64 noundef 256, ptr noundef @.str.15) #11, !dbg !1541
  br label %217, !dbg !1541

217:                                              ; preds = %214, %211
  store i1 false, ptr %3, align 1, !dbg !1544
  br label %323, !dbg !1544

218:                                              ; No predecessors!
  br label %219, !dbg !1544

219:                                              ; preds = %218, %204
  %220 = load ptr, ptr %8, align 8, !dbg !1545
  %221 = getelementptr inbounds %struct.JsonNode, ptr %220, i32 0, i32 0, !dbg !1547
  %222 = load ptr, ptr %221, align 8, !dbg !1547
  %223 = load ptr, ptr %4, align 8, !dbg !1548
  %224 = icmp ne ptr %222, %223, !dbg !1549
  br i1 %224, label %225, label %234, !dbg !1550

225:                                              ; preds = %219
  br label %226, !dbg !1551

226:                                              ; preds = %225
  %227 = load ptr, ptr %5, align 8, !dbg !1552
  %228 = icmp ne ptr %227, null, !dbg !1552
  br i1 %228, label %229, label %232, !dbg !1555

229:                                              ; preds = %226
  %230 = load ptr, ptr %5, align 8, !dbg !1552
  %231 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %230, i64 noundef 256, ptr noundef @.str.16) #11, !dbg !1552
  br label %232, !dbg !1552

232:                                              ; preds = %229, %226
  store i1 false, ptr %3, align 1, !dbg !1555
  br label %323, !dbg !1555

233:                                              ; No predecessors!
  br label %234, !dbg !1555

234:                                              ; preds = %233, %219
  %235 = load ptr, ptr %8, align 8, !dbg !1556
  %236 = getelementptr inbounds %struct.JsonNode, ptr %235, i32 0, i32 2, !dbg !1558
  %237 = load ptr, ptr %236, align 8, !dbg !1558
  %238 = icmp ne ptr %237, null, !dbg !1559
  br i1 %238, label %239, label %256, !dbg !1560

239:                                              ; preds = %234
  %240 = load ptr, ptr %8, align 8, !dbg !1561
  %241 = getelementptr inbounds %struct.JsonNode, ptr %240, i32 0, i32 2, !dbg !1562
  %242 = load ptr, ptr %241, align 8, !dbg !1562
  %243 = getelementptr inbounds %struct.JsonNode, ptr %242, i32 0, i32 1, !dbg !1563
  %244 = load ptr, ptr %243, align 8, !dbg !1563
  %245 = load ptr, ptr %8, align 8, !dbg !1564
  %246 = icmp ne ptr %244, %245, !dbg !1565
  br i1 %246, label %247, label %256, !dbg !1566

247:                                              ; preds = %239
  br label %248, !dbg !1567

248:                                              ; preds = %247
  %249 = load ptr, ptr %5, align 8, !dbg !1568
  %250 = icmp ne ptr %249, null, !dbg !1568
  br i1 %250, label %251, label %254, !dbg !1571

251:                                              ; preds = %248
  %252 = load ptr, ptr %5, align 8, !dbg !1568
  %253 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %252, i64 noundef 256, ptr noundef @.str.17) #11, !dbg !1568
  br label %254, !dbg !1568

254:                                              ; preds = %251, %248
  store i1 false, ptr %3, align 1, !dbg !1571
  br label %323, !dbg !1571

255:                                              ; No predecessors!
  br label %256, !dbg !1571

256:                                              ; preds = %255, %239, %234
  %257 = load ptr, ptr %4, align 8, !dbg !1572
  %258 = getelementptr inbounds %struct.JsonNode, ptr %257, i32 0, i32 4, !dbg !1574
  %259 = load i32, ptr %258, align 8, !dbg !1574
  %260 = icmp eq i32 %259, 4, !dbg !1575
  br i1 %260, label %261, label %275, !dbg !1576

261:                                              ; preds = %256
  %262 = load ptr, ptr %8, align 8, !dbg !1577
  %263 = getelementptr inbounds %struct.JsonNode, ptr %262, i32 0, i32 3, !dbg !1578
  %264 = load ptr, ptr %263, align 8, !dbg !1578
  %265 = icmp ne ptr %264, null, !dbg !1579
  br i1 %265, label %266, label %275, !dbg !1580

266:                                              ; preds = %261
  br label %267, !dbg !1581

267:                                              ; preds = %266
  %268 = load ptr, ptr %5, align 8, !dbg !1582
  %269 = icmp ne ptr %268, null, !dbg !1582
  br i1 %269, label %270, label %273, !dbg !1585

270:                                              ; preds = %267
  %271 = load ptr, ptr %5, align 8, !dbg !1582
  %272 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %271, i64 noundef 256, ptr noundef @.str.18) #11, !dbg !1582
  br label %273, !dbg !1582

273:                                              ; preds = %270, %267
  store i1 false, ptr %3, align 1, !dbg !1585
  br label %323, !dbg !1585

274:                                              ; No predecessors!
  br label %275, !dbg !1585

275:                                              ; preds = %274, %261, %256
  %276 = load ptr, ptr %4, align 8, !dbg !1586
  %277 = getelementptr inbounds %struct.JsonNode, ptr %276, i32 0, i32 4, !dbg !1588
  %278 = load i32, ptr %277, align 8, !dbg !1588
  %279 = icmp eq i32 %278, 5, !dbg !1589
  br i1 %279, label %280, label %294, !dbg !1590

280:                                              ; preds = %275
  %281 = load ptr, ptr %8, align 8, !dbg !1591
  %282 = getelementptr inbounds %struct.JsonNode, ptr %281, i32 0, i32 3, !dbg !1592
  %283 = load ptr, ptr %282, align 8, !dbg !1592
  %284 = icmp eq ptr %283, null, !dbg !1593
  br i1 %284, label %285, label %294, !dbg !1594

285:                                              ; preds = %280
  br label %286, !dbg !1595

286:                                              ; preds = %285
  %287 = load ptr, ptr %5, align 8, !dbg !1596
  %288 = icmp ne ptr %287, null, !dbg !1596
  br i1 %288, label %289, label %292, !dbg !1599

289:                                              ; preds = %286
  %290 = load ptr, ptr %5, align 8, !dbg !1596
  %291 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %290, i64 noundef 256, ptr noundef @.str.19) #11, !dbg !1596
  br label %292, !dbg !1596

292:                                              ; preds = %289, %286
  store i1 false, ptr %3, align 1, !dbg !1599
  br label %323, !dbg !1599

293:                                              ; No predecessors!
  br label %294, !dbg !1599

294:                                              ; preds = %293, %280, %275
  %295 = load ptr, ptr %8, align 8, !dbg !1600
  %296 = load ptr, ptr %5, align 8, !dbg !1602
  %297 = call zeroext i1 @json_check(ptr noundef %295, ptr noundef %296), !dbg !1603
  br i1 %297, label %299, label %298, !dbg !1604

298:                                              ; preds = %294
  store i1 false, ptr %3, align 1, !dbg !1605
  br label %323, !dbg !1605

299:                                              ; preds = %294
  br label %300, !dbg !1606

300:                                              ; preds = %299
  %301 = load ptr, ptr %8, align 8, !dbg !1607
  store ptr %301, ptr %9, align 8, !dbg !1608
  %302 = load ptr, ptr %8, align 8, !dbg !1609
  %303 = getelementptr inbounds %struct.JsonNode, ptr %302, i32 0, i32 2, !dbg !1610
  %304 = load ptr, ptr %303, align 8, !dbg !1610
  store ptr %304, ptr %8, align 8, !dbg !1611
  br label %173, !dbg !1612, !llvm.loop !1613

305:                                              ; preds = %173
  %306 = load ptr, ptr %9, align 8, !dbg !1615
  %307 = load ptr, ptr %7, align 8, !dbg !1617
  %308 = icmp ne ptr %306, %307, !dbg !1618
  br i1 %308, label %309, label %318, !dbg !1619

309:                                              ; preds = %305
  br label %310, !dbg !1620

310:                                              ; preds = %309
  %311 = load ptr, ptr %5, align 8, !dbg !1621
  %312 = icmp ne ptr %311, null, !dbg !1621
  br i1 %312, label %313, label %316, !dbg !1624

313:                                              ; preds = %310
  %314 = load ptr, ptr %5, align 8, !dbg !1621
  %315 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %314, i64 noundef 256, ptr noundef @.str.20) #11, !dbg !1621
  br label %316, !dbg !1621

316:                                              ; preds = %313, %310
  store i1 false, ptr %3, align 1, !dbg !1624
  br label %323, !dbg !1624

317:                                              ; No predecessors!
  br label %318, !dbg !1624

318:                                              ; preds = %317, %305
  br label %319

319:                                              ; preds = %318, %156
  br label %320, !dbg !1625

320:                                              ; preds = %319, %113
  br label %321

321:                                              ; preds = %320, %107
  br label %322

322:                                              ; preds = %321, %73
  store i1 true, ptr %3, align 1, !dbg !1626
  br label %323, !dbg !1626

323:                                              ; preds = %322, %316, %298, %292, %273, %254, %232, %217, %202, %187, %169, %154, %142, %105, %91, %71, %43, %26
  %324 = load i1, ptr %3, align 1, !dbg !1627
  ret i1 %324, !dbg !1627
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @utf8_validate(ptr noundef %0) #0 !dbg !1628 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1629, metadata !DIExpression()), !dbg !1630
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1631, metadata !DIExpression()), !dbg !1632
  br label %5, !dbg !1633

5:                                                ; preds = %17, %1
  %6 = load ptr, ptr %3, align 8, !dbg !1634
  %7 = load i8, ptr %6, align 1, !dbg !1637
  %8 = sext i8 %7 to i32, !dbg !1637
  %9 = icmp ne i32 %8, 0, !dbg !1638
  br i1 %9, label %10, label %21, !dbg !1639

10:                                               ; preds = %5
  %11 = load ptr, ptr %3, align 8, !dbg !1640
  %12 = call i64 @utf8_validate_cz(ptr noundef %11), !dbg !1642
  store i64 %12, ptr %4, align 8, !dbg !1643
  %13 = load i64, ptr %4, align 8, !dbg !1644
  %14 = icmp eq i64 %13, 0, !dbg !1646
  br i1 %14, label %15, label %16, !dbg !1647

15:                                               ; preds = %10
  store i1 false, ptr %2, align 1, !dbg !1648
  br label %22, !dbg !1648

16:                                               ; preds = %10
  br label %17, !dbg !1649

17:                                               ; preds = %16
  %18 = load i64, ptr %4, align 8, !dbg !1650
  %19 = load ptr, ptr %3, align 8, !dbg !1651
  %20 = getelementptr inbounds i8, ptr %19, i64 %18, !dbg !1651
  store ptr %20, ptr %3, align 8, !dbg !1651
  br label %5, !dbg !1652, !llvm.loop !1653

21:                                               ; preds = %5
  store i1 true, ptr %2, align 1, !dbg !1655
  br label %22, !dbg !1655

22:                                               ; preds = %21, %15
  %23 = load i1, ptr %2, align 1, !dbg !1656
  ret i1 %23, !dbg !1656
}

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @tag_is_valid(i32 noundef %0) #0 !dbg !1657 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1660, metadata !DIExpression()), !dbg !1661
  %3 = load i32, ptr %2, align 4, !dbg !1662
  %4 = icmp ule i32 %3, 5, !dbg !1663
  ret i1 %4, !dbg !1664
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #6

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @expect_literal(ptr noundef %0, ptr noundef %1) #0 !dbg !1665 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1668, metadata !DIExpression()), !dbg !1669
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1670, metadata !DIExpression()), !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1672, metadata !DIExpression()), !dbg !1673
  %7 = load ptr, ptr %4, align 8, !dbg !1674
  %8 = load ptr, ptr %7, align 8, !dbg !1675
  store ptr %8, ptr %6, align 8, !dbg !1673
  br label %9, !dbg !1676

9:                                                ; preds = %25, %2
  %10 = load ptr, ptr %5, align 8, !dbg !1677
  %11 = load i8, ptr %10, align 1, !dbg !1678
  %12 = sext i8 %11 to i32, !dbg !1678
  %13 = icmp ne i32 %12, 0, !dbg !1679
  br i1 %13, label %14, label %26, !dbg !1676

14:                                               ; preds = %9
  %15 = load ptr, ptr %6, align 8, !dbg !1680
  %16 = getelementptr inbounds i8, ptr %15, i32 1, !dbg !1680
  store ptr %16, ptr %6, align 8, !dbg !1680
  %17 = load i8, ptr %15, align 1, !dbg !1682
  %18 = sext i8 %17 to i32, !dbg !1682
  %19 = load ptr, ptr %5, align 8, !dbg !1683
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !1683
  store ptr %20, ptr %5, align 8, !dbg !1683
  %21 = load i8, ptr %19, align 1, !dbg !1684
  %22 = sext i8 %21 to i32, !dbg !1684
  %23 = icmp ne i32 %18, %22, !dbg !1685
  br i1 %23, label %24, label %25, !dbg !1686

24:                                               ; preds = %14
  store i1 false, ptr %3, align 1, !dbg !1687
  br label %29, !dbg !1687

25:                                               ; preds = %14
  br label %9, !dbg !1676, !llvm.loop !1688

26:                                               ; preds = %9
  %27 = load ptr, ptr %6, align 8, !dbg !1690
  %28 = load ptr, ptr %4, align 8, !dbg !1691
  store ptr %27, ptr %28, align 8, !dbg !1692
  store i1 true, ptr %3, align 1, !dbg !1693
  br label %29, !dbg !1693

29:                                               ; preds = %26, %24
  %30 = load i1, ptr %3, align 1, !dbg !1694
  ret i1 %30, !dbg !1694
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_string(ptr noundef %0, ptr noundef %1) #0 !dbg !1695 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca %struct.SB, align 8
  %8 = alloca [4 x i8], align 1
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  %11 = alloca i16, align 2
  %12 = alloca i16, align 2
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1699, metadata !DIExpression()), !dbg !1700
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1701, metadata !DIExpression()), !dbg !1702
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1703, metadata !DIExpression()), !dbg !1704
  %15 = load ptr, ptr %4, align 8, !dbg !1705
  %16 = load ptr, ptr %15, align 8, !dbg !1706
  store ptr %16, ptr %6, align 8, !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1707, metadata !DIExpression()), !dbg !1708
  call void @llvm.memset.p0.i64(ptr align 8 %7, i8 0, i64 24, i1 false), !dbg !1708
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1709, metadata !DIExpression()), !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1714, metadata !DIExpression()), !dbg !1715
  %17 = load ptr, ptr %6, align 8, !dbg !1716
  %18 = getelementptr inbounds i8, ptr %17, i32 1, !dbg !1716
  store ptr %18, ptr %6, align 8, !dbg !1716
  %19 = load i8, ptr %17, align 1, !dbg !1718
  %20 = sext i8 %19 to i32, !dbg !1718
  %21 = icmp ne i32 %20, 34, !dbg !1719
  br i1 %21, label %22, label %23, !dbg !1720

22:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !1721
  br label %196, !dbg !1721

23:                                               ; preds = %2
  %24 = load ptr, ptr %5, align 8, !dbg !1722
  %25 = icmp ne ptr %24, null, !dbg !1722
  br i1 %25, label %26, label %41, !dbg !1724

26:                                               ; preds = %23
  call void @sb_init(ptr noundef %7), !dbg !1725
  br label %27, !dbg !1727

27:                                               ; preds = %26
  %28 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 1, !dbg !1728
  %29 = load ptr, ptr %28, align 8, !dbg !1728
  %30 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !1728
  %31 = load ptr, ptr %30, align 8, !dbg !1728
  %32 = ptrtoint ptr %29 to i64, !dbg !1728
  %33 = ptrtoint ptr %31 to i64, !dbg !1728
  %34 = sub i64 %32, %33, !dbg !1728
  %35 = icmp ult i64 %34, 4, !dbg !1728
  br i1 %35, label %36, label %37, !dbg !1731

36:                                               ; preds = %27
  call void @sb_grow(ptr noundef %7, i64 noundef 4), !dbg !1728
  br label %37, !dbg !1728

37:                                               ; preds = %36, %27
  br label %38, !dbg !1731

38:                                               ; preds = %37
  %39 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !1732
  %40 = load ptr, ptr %39, align 8, !dbg !1732
  store ptr %40, ptr %9, align 8, !dbg !1733
  br label %43, !dbg !1734

41:                                               ; preds = %23
  %42 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !1735
  store ptr %42, ptr %9, align 8, !dbg !1737
  br label %43

43:                                               ; preds = %41, %38
  br label %44, !dbg !1738

44:                                               ; preds = %179, %43
  %45 = load ptr, ptr %6, align 8, !dbg !1739
  %46 = load i8, ptr %45, align 1, !dbg !1740
  %47 = sext i8 %46 to i32, !dbg !1740
  %48 = icmp ne i32 %47, 34, !dbg !1741
  br i1 %48, label %49, label %180, !dbg !1738

49:                                               ; preds = %44
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1742, metadata !DIExpression()), !dbg !1744
  %50 = load ptr, ptr %6, align 8, !dbg !1745
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !1745
  store ptr %51, ptr %6, align 8, !dbg !1745
  %52 = load i8, ptr %50, align 1, !dbg !1746
  store i8 %52, ptr %10, align 1, !dbg !1744
  %53 = load i8, ptr %10, align 1, !dbg !1747
  %54 = sext i8 %53 to i32, !dbg !1747
  %55 = icmp eq i32 %54, 92, !dbg !1749
  br i1 %55, label %56, label %131, !dbg !1750

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 8, !dbg !1751
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !1751
  store ptr %58, ptr %6, align 8, !dbg !1751
  %59 = load i8, ptr %57, align 1, !dbg !1753
  store i8 %59, ptr %10, align 1, !dbg !1754
  %60 = load i8, ptr %10, align 1, !dbg !1755
  %61 = sext i8 %60 to i32, !dbg !1755
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
  ], !dbg !1756

62:                                               ; preds = %56, %56, %56
  %63 = load i8, ptr %10, align 1, !dbg !1757
  %64 = load ptr, ptr %9, align 8, !dbg !1759
  %65 = getelementptr inbounds i8, ptr %64, i32 1, !dbg !1759
  store ptr %65, ptr %9, align 8, !dbg !1759
  store i8 %63, ptr %64, align 1, !dbg !1760
  br label %130, !dbg !1761

66:                                               ; preds = %56
  %67 = load ptr, ptr %9, align 8, !dbg !1762
  %68 = getelementptr inbounds i8, ptr %67, i32 1, !dbg !1762
  store ptr %68, ptr %9, align 8, !dbg !1762
  store i8 8, ptr %67, align 1, !dbg !1763
  br label %130, !dbg !1764

69:                                               ; preds = %56
  %70 = load ptr, ptr %9, align 8, !dbg !1765
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !1765
  store ptr %71, ptr %9, align 8, !dbg !1765
  store i8 12, ptr %70, align 1, !dbg !1766
  br label %130, !dbg !1767

72:                                               ; preds = %56
  %73 = load ptr, ptr %9, align 8, !dbg !1768
  %74 = getelementptr inbounds i8, ptr %73, i32 1, !dbg !1768
  store ptr %74, ptr %9, align 8, !dbg !1768
  store i8 10, ptr %73, align 1, !dbg !1769
  br label %130, !dbg !1770

75:                                               ; preds = %56
  %76 = load ptr, ptr %9, align 8, !dbg !1771
  %77 = getelementptr inbounds i8, ptr %76, i32 1, !dbg !1771
  store ptr %77, ptr %9, align 8, !dbg !1771
  store i8 13, ptr %76, align 1, !dbg !1772
  br label %130, !dbg !1773

78:                                               ; preds = %56
  %79 = load ptr, ptr %9, align 8, !dbg !1774
  %80 = getelementptr inbounds i8, ptr %79, i32 1, !dbg !1774
  store ptr %80, ptr %9, align 8, !dbg !1774
  store i8 9, ptr %79, align 1, !dbg !1775
  br label %130, !dbg !1776

81:                                               ; preds = %56
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1777, metadata !DIExpression()), !dbg !1779
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1780, metadata !DIExpression()), !dbg !1781
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1782, metadata !DIExpression()), !dbg !1783
  %82 = call zeroext i1 @parse_hex16(ptr noundef %6, ptr noundef %11), !dbg !1784
  br i1 %82, label %84, label %83, !dbg !1786

83:                                               ; preds = %81
  br label %191, !dbg !1787

84:                                               ; preds = %81
  %85 = load i16, ptr %11, align 2, !dbg !1788
  %86 = zext i16 %85 to i32, !dbg !1788
  %87 = icmp sge i32 %86, 55296, !dbg !1790
  br i1 %87, label %88, label %113, !dbg !1791

88:                                               ; preds = %84
  %89 = load i16, ptr %11, align 2, !dbg !1792
  %90 = zext i16 %89 to i32, !dbg !1792
  %91 = icmp sle i32 %90, 57343, !dbg !1793
  br i1 %91, label %92, label %113, !dbg !1794

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 8, !dbg !1795
  %94 = getelementptr inbounds i8, ptr %93, i32 1, !dbg !1795
  store ptr %94, ptr %6, align 8, !dbg !1795
  %95 = load i8, ptr %93, align 1, !dbg !1798
  %96 = sext i8 %95 to i32, !dbg !1798
  %97 = icmp ne i32 %96, 92, !dbg !1799
  br i1 %97, label %106, label %98, !dbg !1800

98:                                               ; preds = %92
  %99 = load ptr, ptr %6, align 8, !dbg !1801
  %100 = getelementptr inbounds i8, ptr %99, i32 1, !dbg !1801
  store ptr %100, ptr %6, align 8, !dbg !1801
  %101 = load i8, ptr %99, align 1, !dbg !1802
  %102 = sext i8 %101 to i32, !dbg !1802
  %103 = icmp ne i32 %102, 117, !dbg !1803
  br i1 %103, label %106, label %104, !dbg !1804

104:                                              ; preds = %98
  %105 = call zeroext i1 @parse_hex16(ptr noundef %6, ptr noundef %12), !dbg !1805
  br i1 %105, label %107, label %106, !dbg !1806

106:                                              ; preds = %104, %98, %92
  br label %191, !dbg !1807

107:                                              ; preds = %104
  %108 = load i16, ptr %11, align 2, !dbg !1808
  %109 = load i16, ptr %12, align 2, !dbg !1810
  %110 = call zeroext i1 @from_surrogate_pair(i16 noundef zeroext %108, i16 noundef zeroext %109, ptr noundef %13), !dbg !1811
  br i1 %110, label %112, label %111, !dbg !1812

111:                                              ; preds = %107
  br label %191, !dbg !1813

112:                                              ; preds = %107
  br label %122, !dbg !1814

113:                                              ; preds = %88, %84
  %114 = load i16, ptr %11, align 2, !dbg !1815
  %115 = zext i16 %114 to i32, !dbg !1815
  %116 = icmp eq i32 %115, 0, !dbg !1817
  br i1 %116, label %117, label %118, !dbg !1818

117:                                              ; preds = %113
  br label %191, !dbg !1819

118:                                              ; preds = %113
  %119 = load i16, ptr %11, align 2, !dbg !1821
  %120 = zext i16 %119 to i32, !dbg !1821
  store i32 %120, ptr %13, align 4, !dbg !1823
  br label %121

121:                                              ; preds = %118
  br label %122

122:                                              ; preds = %121, %112
  %123 = load i32, ptr %13, align 4, !dbg !1824
  %124 = load ptr, ptr %9, align 8, !dbg !1825
  %125 = call i32 @utf8_write_char(i32 noundef %123, ptr noundef %124), !dbg !1826
  %126 = load ptr, ptr %9, align 8, !dbg !1827
  %127 = sext i32 %125 to i64, !dbg !1827
  %128 = getelementptr inbounds i8, ptr %126, i64 %127, !dbg !1827
  store ptr %128, ptr %9, align 8, !dbg !1827
  br label %130, !dbg !1828

129:                                              ; preds = %56
  br label %191, !dbg !1829

130:                                              ; preds = %122, %78, %75, %72, %69, %66, %62
  br label %157, !dbg !1830

131:                                              ; preds = %49
  %132 = load i8, ptr %10, align 1, !dbg !1831
  %133 = sext i8 %132 to i32, !dbg !1831
  %134 = icmp sle i32 %133, 31, !dbg !1833
  br i1 %134, label %135, label %136, !dbg !1834

135:                                              ; preds = %131
  br label %191, !dbg !1835

136:                                              ; preds = %131
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1837, metadata !DIExpression()), !dbg !1839
  %137 = load ptr, ptr %6, align 8, !dbg !1840
  %138 = getelementptr inbounds i8, ptr %137, i32 -1, !dbg !1840
  store ptr %138, ptr %6, align 8, !dbg !1840
  %139 = load ptr, ptr %6, align 8, !dbg !1841
  %140 = call i64 @utf8_validate_cz(ptr noundef %139), !dbg !1842
  store i64 %140, ptr %14, align 8, !dbg !1843
  %141 = load i64, ptr %14, align 8, !dbg !1844
  %142 = icmp eq i64 %141, 0, !dbg !1846
  br i1 %142, label %143, label %144, !dbg !1847

143:                                              ; preds = %136
  br label %191, !dbg !1848

144:                                              ; preds = %136
  br label %145, !dbg !1849

145:                                              ; preds = %149, %144
  %146 = load i64, ptr %14, align 8, !dbg !1850
  %147 = add i64 %146, -1, !dbg !1850
  store i64 %147, ptr %14, align 8, !dbg !1850
  %148 = icmp ne i64 %146, 0, !dbg !1849
  br i1 %148, label %149, label %155, !dbg !1849

149:                                              ; preds = %145
  %150 = load ptr, ptr %6, align 8, !dbg !1851
  %151 = getelementptr inbounds i8, ptr %150, i32 1, !dbg !1851
  store ptr %151, ptr %6, align 8, !dbg !1851
  %152 = load i8, ptr %150, align 1, !dbg !1852
  %153 = load ptr, ptr %9, align 8, !dbg !1853
  %154 = getelementptr inbounds i8, ptr %153, i32 1, !dbg !1853
  store ptr %154, ptr %9, align 8, !dbg !1853
  store i8 %152, ptr %153, align 1, !dbg !1854
  br label %145, !dbg !1849, !llvm.loop !1855

155:                                              ; preds = %145
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156, %130
  %158 = load ptr, ptr %5, align 8, !dbg !1856
  %159 = icmp ne ptr %158, null, !dbg !1856
  br i1 %159, label %160, label %177, !dbg !1858

160:                                              ; preds = %157
  %161 = load ptr, ptr %9, align 8, !dbg !1859
  %162 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !1861
  store ptr %161, ptr %162, align 8, !dbg !1862
  br label %163, !dbg !1863

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 1, !dbg !1864
  %165 = load ptr, ptr %164, align 8, !dbg !1864
  %166 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !1864
  %167 = load ptr, ptr %166, align 8, !dbg !1864
  %168 = ptrtoint ptr %165 to i64, !dbg !1864
  %169 = ptrtoint ptr %167 to i64, !dbg !1864
  %170 = sub i64 %168, %169, !dbg !1864
  %171 = icmp ult i64 %170, 4, !dbg !1864
  br i1 %171, label %172, label %173, !dbg !1867

172:                                              ; preds = %163
  call void @sb_grow(ptr noundef %7, i64 noundef 4), !dbg !1864
  br label %173, !dbg !1864

173:                                              ; preds = %172, %163
  br label %174, !dbg !1867

174:                                              ; preds = %173
  %175 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !1868
  %176 = load ptr, ptr %175, align 8, !dbg !1868
  store ptr %176, ptr %9, align 8, !dbg !1869
  br label %179, !dbg !1870

177:                                              ; preds = %157
  %178 = getelementptr inbounds [4 x i8], ptr %8, i64 0, i64 0, !dbg !1871
  store ptr %178, ptr %9, align 8, !dbg !1873
  br label %179

179:                                              ; preds = %177, %174
  br label %44, !dbg !1738, !llvm.loop !1874

180:                                              ; preds = %44
  %181 = load ptr, ptr %6, align 8, !dbg !1876
  %182 = getelementptr inbounds i8, ptr %181, i32 1, !dbg !1876
  store ptr %182, ptr %6, align 8, !dbg !1876
  %183 = load ptr, ptr %5, align 8, !dbg !1877
  %184 = icmp ne ptr %183, null, !dbg !1877
  br i1 %184, label %185, label %188, !dbg !1879

185:                                              ; preds = %180
  %186 = call ptr @sb_finish(ptr noundef %7), !dbg !1880
  %187 = load ptr, ptr %5, align 8, !dbg !1881
  store ptr %186, ptr %187, align 8, !dbg !1882
  br label %188, !dbg !1883

188:                                              ; preds = %185, %180
  %189 = load ptr, ptr %6, align 8, !dbg !1884
  %190 = load ptr, ptr %4, align 8, !dbg !1885
  store ptr %189, ptr %190, align 8, !dbg !1886
  store i1 true, ptr %3, align 1, !dbg !1887
  br label %196, !dbg !1887

191:                                              ; preds = %143, %135, %129, %117, %111, %106, %83
  call void @llvm.dbg.label(metadata !1888), !dbg !1889
  %192 = load ptr, ptr %5, align 8, !dbg !1890
  %193 = icmp ne ptr %192, null, !dbg !1890
  br i1 %193, label %194, label %195, !dbg !1892

194:                                              ; preds = %191
  call void @sb_free(ptr noundef %7), !dbg !1893
  br label %195, !dbg !1893

195:                                              ; preds = %194, %191
  store i1 false, ptr %3, align 1, !dbg !1894
  br label %196, !dbg !1894

196:                                              ; preds = %195, %188, %22
  %197 = load i1, ptr %3, align 1, !dbg !1895
  ret i1 %197, !dbg !1895
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_array(ptr noundef %0, ptr noundef %1) #0 !dbg !1896 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1897, metadata !DIExpression()), !dbg !1898
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1899, metadata !DIExpression()), !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1901, metadata !DIExpression()), !dbg !1902
  %9 = load ptr, ptr %4, align 8, !dbg !1903
  %10 = load ptr, ptr %9, align 8, !dbg !1904
  store ptr %10, ptr %6, align 8, !dbg !1902
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1905, metadata !DIExpression()), !dbg !1906
  %11 = load ptr, ptr %5, align 8, !dbg !1907
  %12 = icmp ne ptr %11, null, !dbg !1907
  br i1 %12, label %13, label %15, !dbg !1907

13:                                               ; preds = %2
  %14 = call ptr @json_mkarray(), !dbg !1908
  br label %16, !dbg !1907

15:                                               ; preds = %2
  br label %16, !dbg !1907

16:                                               ; preds = %15, %13
  %17 = phi ptr [ %14, %13 ], [ null, %15 ], !dbg !1907
  store ptr %17, ptr %7, align 8, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1909, metadata !DIExpression()), !dbg !1910
  %18 = load ptr, ptr %6, align 8, !dbg !1911
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !1911
  store ptr %19, ptr %6, align 8, !dbg !1911
  %20 = load i8, ptr %18, align 1, !dbg !1913
  %21 = sext i8 %20 to i32, !dbg !1913
  %22 = icmp ne i32 %21, 91, !dbg !1914
  br i1 %22, label %23, label %24, !dbg !1915

23:                                               ; preds = %16
  br label %73, !dbg !1916

24:                                               ; preds = %16
  call void @skip_space(ptr noundef %6), !dbg !1917
  %25 = load ptr, ptr %6, align 8, !dbg !1918
  %26 = load i8, ptr %25, align 1, !dbg !1920
  %27 = sext i8 %26 to i32, !dbg !1920
  %28 = icmp eq i32 %27, 93, !dbg !1921
  br i1 %28, label %29, label %32, !dbg !1922

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !dbg !1923
  %31 = getelementptr inbounds i8, ptr %30, i32 1, !dbg !1923
  store ptr %31, ptr %6, align 8, !dbg !1923
  br label %64, !dbg !1925

32:                                               ; preds = %24
  br label %33, !dbg !1926

33:                                               ; preds = %63, %32
  %34 = load ptr, ptr %5, align 8, !dbg !1927
  %35 = icmp ne ptr %34, null, !dbg !1927
  br i1 %35, label %36, label %37, !dbg !1927

36:                                               ; preds = %33
  br label %38, !dbg !1927

37:                                               ; preds = %33
  br label %38, !dbg !1927

38:                                               ; preds = %37, %36
  %39 = phi ptr [ %8, %36 ], [ null, %37 ], !dbg !1927
  %40 = call zeroext i1 @parse_value(ptr noundef %6, ptr noundef %39), !dbg !1932
  br i1 %40, label %42, label %41, !dbg !1933

41:                                               ; preds = %38
  br label %73, !dbg !1934

42:                                               ; preds = %38
  call void @skip_space(ptr noundef %6), !dbg !1935
  %43 = load ptr, ptr %5, align 8, !dbg !1936
  %44 = icmp ne ptr %43, null, !dbg !1936
  br i1 %44, label %45, label %48, !dbg !1938

45:                                               ; preds = %42
  %46 = load ptr, ptr %7, align 8, !dbg !1939
  %47 = load ptr, ptr %8, align 8, !dbg !1940
  call void @json_append_element(ptr noundef %46, ptr noundef %47), !dbg !1941
  br label %48, !dbg !1941

48:                                               ; preds = %45, %42
  %49 = load ptr, ptr %6, align 8, !dbg !1942
  %50 = load i8, ptr %49, align 1, !dbg !1944
  %51 = sext i8 %50 to i32, !dbg !1944
  %52 = icmp eq i32 %51, 93, !dbg !1945
  br i1 %52, label %53, label %56, !dbg !1946

53:                                               ; preds = %48
  %54 = load ptr, ptr %6, align 8, !dbg !1947
  %55 = getelementptr inbounds i8, ptr %54, i32 1, !dbg !1947
  store ptr %55, ptr %6, align 8, !dbg !1947
  br label %64, !dbg !1949

56:                                               ; preds = %48
  %57 = load ptr, ptr %6, align 8, !dbg !1950
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !1950
  store ptr %58, ptr %6, align 8, !dbg !1950
  %59 = load i8, ptr %57, align 1, !dbg !1952
  %60 = sext i8 %59 to i32, !dbg !1952
  %61 = icmp ne i32 %60, 44, !dbg !1953
  br i1 %61, label %62, label %63, !dbg !1954

62:                                               ; preds = %56
  br label %73, !dbg !1955

63:                                               ; preds = %56
  call void @skip_space(ptr noundef %6), !dbg !1956
  br label %33, !dbg !1957, !llvm.loop !1958

64:                                               ; preds = %53, %29
  call void @llvm.dbg.label(metadata !1961), !dbg !1962
  %65 = load ptr, ptr %6, align 8, !dbg !1963
  %66 = load ptr, ptr %4, align 8, !dbg !1964
  store ptr %65, ptr %66, align 8, !dbg !1965
  %67 = load ptr, ptr %5, align 8, !dbg !1966
  %68 = icmp ne ptr %67, null, !dbg !1966
  br i1 %68, label %69, label %72, !dbg !1968

69:                                               ; preds = %64
  %70 = load ptr, ptr %7, align 8, !dbg !1969
  %71 = load ptr, ptr %5, align 8, !dbg !1970
  store ptr %70, ptr %71, align 8, !dbg !1971
  br label %72, !dbg !1972

72:                                               ; preds = %69, %64
  store i1 true, ptr %3, align 1, !dbg !1973
  br label %75, !dbg !1973

73:                                               ; preds = %62, %41, %23
  call void @llvm.dbg.label(metadata !1974), !dbg !1975
  %74 = load ptr, ptr %7, align 8, !dbg !1976
  call void @json_delete(ptr noundef %74), !dbg !1977
  store i1 false, ptr %3, align 1, !dbg !1978
  br label %75, !dbg !1978

75:                                               ; preds = %73, %72
  %76 = load i1, ptr %3, align 1, !dbg !1979
  ret i1 %76, !dbg !1979
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_object(ptr noundef %0, ptr noundef %1) #0 !dbg !1980 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1981, metadata !DIExpression()), !dbg !1982
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1983, metadata !DIExpression()), !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1985, metadata !DIExpression()), !dbg !1986
  %10 = load ptr, ptr %4, align 8, !dbg !1987
  %11 = load ptr, ptr %10, align 8, !dbg !1988
  store ptr %11, ptr %6, align 8, !dbg !1986
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1989, metadata !DIExpression()), !dbg !1990
  %12 = load ptr, ptr %5, align 8, !dbg !1991
  %13 = icmp ne ptr %12, null, !dbg !1991
  br i1 %13, label %14, label %16, !dbg !1991

14:                                               ; preds = %2
  %15 = call ptr @json_mkobject(), !dbg !1992
  br label %17, !dbg !1991

16:                                               ; preds = %2
  br label %17, !dbg !1991

17:                                               ; preds = %16, %14
  %18 = phi ptr [ %15, %14 ], [ null, %16 ], !dbg !1991
  store ptr %18, ptr %7, align 8, !dbg !1990
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1993, metadata !DIExpression()), !dbg !1994
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1995, metadata !DIExpression()), !dbg !1996
  %19 = load ptr, ptr %6, align 8, !dbg !1997
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !1997
  store ptr %20, ptr %6, align 8, !dbg !1997
  %21 = load i8, ptr %19, align 1, !dbg !1999
  %22 = sext i8 %21 to i32, !dbg !1999
  %23 = icmp ne i32 %22, 123, !dbg !2000
  br i1 %23, label %24, label %25, !dbg !2001

24:                                               ; preds = %17
  br label %97, !dbg !2002

25:                                               ; preds = %17
  call void @skip_space(ptr noundef %6), !dbg !2003
  %26 = load ptr, ptr %6, align 8, !dbg !2004
  %27 = load i8, ptr %26, align 1, !dbg !2006
  %28 = sext i8 %27 to i32, !dbg !2006
  %29 = icmp eq i32 %28, 125, !dbg !2007
  br i1 %29, label %30, label %33, !dbg !2008

30:                                               ; preds = %25
  %31 = load ptr, ptr %6, align 8, !dbg !2009
  %32 = getelementptr inbounds i8, ptr %31, i32 1, !dbg !2009
  store ptr %32, ptr %6, align 8, !dbg !2009
  br label %82, !dbg !2011

33:                                               ; preds = %25
  br label %34, !dbg !2012

34:                                               ; preds = %81, %33
  %35 = load ptr, ptr %5, align 8, !dbg !2013
  %36 = icmp ne ptr %35, null, !dbg !2013
  br i1 %36, label %37, label %38, !dbg !2013

37:                                               ; preds = %34
  br label %39, !dbg !2013

38:                                               ; preds = %34
  br label %39, !dbg !2013

39:                                               ; preds = %38, %37
  %40 = phi ptr [ %8, %37 ], [ null, %38 ], !dbg !2013
  %41 = call zeroext i1 @parse_string(ptr noundef %6, ptr noundef %40), !dbg !2018
  br i1 %41, label %43, label %42, !dbg !2019

42:                                               ; preds = %39
  br label %97, !dbg !2020

43:                                               ; preds = %39
  call void @skip_space(ptr noundef %6), !dbg !2021
  %44 = load ptr, ptr %6, align 8, !dbg !2022
  %45 = getelementptr inbounds i8, ptr %44, i32 1, !dbg !2022
  store ptr %45, ptr %6, align 8, !dbg !2022
  %46 = load i8, ptr %44, align 1, !dbg !2024
  %47 = sext i8 %46 to i32, !dbg !2024
  %48 = icmp ne i32 %47, 58, !dbg !2025
  br i1 %48, label %49, label %50, !dbg !2026

49:                                               ; preds = %43
  br label %91, !dbg !2027

50:                                               ; preds = %43
  call void @skip_space(ptr noundef %6), !dbg !2028
  %51 = load ptr, ptr %5, align 8, !dbg !2029
  %52 = icmp ne ptr %51, null, !dbg !2029
  br i1 %52, label %53, label %54, !dbg !2029

53:                                               ; preds = %50
  br label %55, !dbg !2029

54:                                               ; preds = %50
  br label %55, !dbg !2029

55:                                               ; preds = %54, %53
  %56 = phi ptr [ %9, %53 ], [ null, %54 ], !dbg !2029
  %57 = call zeroext i1 @parse_value(ptr noundef %6, ptr noundef %56), !dbg !2031
  br i1 %57, label %59, label %58, !dbg !2032

58:                                               ; preds = %55
  br label %91, !dbg !2033

59:                                               ; preds = %55
  call void @skip_space(ptr noundef %6), !dbg !2034
  %60 = load ptr, ptr %5, align 8, !dbg !2035
  %61 = icmp ne ptr %60, null, !dbg !2035
  br i1 %61, label %62, label %66, !dbg !2037

62:                                               ; preds = %59
  %63 = load ptr, ptr %7, align 8, !dbg !2038
  %64 = load ptr, ptr %8, align 8, !dbg !2039
  %65 = load ptr, ptr %9, align 8, !dbg !2040
  call void @append_member(ptr noundef %63, ptr noundef %64, ptr noundef %65), !dbg !2041
  br label %66, !dbg !2041

66:                                               ; preds = %62, %59
  %67 = load ptr, ptr %6, align 8, !dbg !2042
  %68 = load i8, ptr %67, align 1, !dbg !2044
  %69 = sext i8 %68 to i32, !dbg !2044
  %70 = icmp eq i32 %69, 125, !dbg !2045
  br i1 %70, label %71, label %74, !dbg !2046

71:                                               ; preds = %66
  %72 = load ptr, ptr %6, align 8, !dbg !2047
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !2047
  store ptr %73, ptr %6, align 8, !dbg !2047
  br label %82, !dbg !2049

74:                                               ; preds = %66
  %75 = load ptr, ptr %6, align 8, !dbg !2050
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !2050
  store ptr %76, ptr %6, align 8, !dbg !2050
  %77 = load i8, ptr %75, align 1, !dbg !2052
  %78 = sext i8 %77 to i32, !dbg !2052
  %79 = icmp ne i32 %78, 44, !dbg !2053
  br i1 %79, label %80, label %81, !dbg !2054

80:                                               ; preds = %74
  br label %97, !dbg !2055

81:                                               ; preds = %74
  call void @skip_space(ptr noundef %6), !dbg !2056
  br label %34, !dbg !2057, !llvm.loop !2058

82:                                               ; preds = %71, %30
  call void @llvm.dbg.label(metadata !2061), !dbg !2062
  %83 = load ptr, ptr %6, align 8, !dbg !2063
  %84 = load ptr, ptr %4, align 8, !dbg !2064
  store ptr %83, ptr %84, align 8, !dbg !2065
  %85 = load ptr, ptr %5, align 8, !dbg !2066
  %86 = icmp ne ptr %85, null, !dbg !2066
  br i1 %86, label %87, label %90, !dbg !2068

87:                                               ; preds = %82
  %88 = load ptr, ptr %7, align 8, !dbg !2069
  %89 = load ptr, ptr %5, align 8, !dbg !2070
  store ptr %88, ptr %89, align 8, !dbg !2071
  br label %90, !dbg !2072

90:                                               ; preds = %87, %82
  store i1 true, ptr %3, align 1, !dbg !2073
  br label %99, !dbg !2073

91:                                               ; preds = %58, %49
  call void @llvm.dbg.label(metadata !2074), !dbg !2075
  %92 = load ptr, ptr %5, align 8, !dbg !2076
  %93 = icmp ne ptr %92, null, !dbg !2076
  br i1 %93, label %94, label %96, !dbg !2078

94:                                               ; preds = %91
  %95 = load ptr, ptr %8, align 8, !dbg !2079
  call void @free(ptr noundef %95) #11, !dbg !2080
  br label %96, !dbg !2080

96:                                               ; preds = %94, %91
  br label %97, !dbg !2076

97:                                               ; preds = %96, %80, %42, %24
  call void @llvm.dbg.label(metadata !2081), !dbg !2082
  %98 = load ptr, ptr %7, align 8, !dbg !2083
  call void @json_delete(ptr noundef %98), !dbg !2084
  store i1 false, ptr %3, align 1, !dbg !2085
  br label %99, !dbg !2085

99:                                               ; preds = %97, %90
  %100 = load i1, ptr %3, align 1, !dbg !2086
  ret i1 %100, !dbg !2086
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_number(ptr noundef %0, ptr noundef %1) #0 !dbg !2087 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2091, metadata !DIExpression()), !dbg !2092
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2093, metadata !DIExpression()), !dbg !2094
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2095, metadata !DIExpression()), !dbg !2096
  %7 = load ptr, ptr %4, align 8, !dbg !2097
  %8 = load ptr, ptr %7, align 8, !dbg !2098
  store ptr %8, ptr %6, align 8, !dbg !2096
  %9 = load ptr, ptr %6, align 8, !dbg !2099
  %10 = load i8, ptr %9, align 1, !dbg !2101
  %11 = sext i8 %10 to i32, !dbg !2101
  %12 = icmp eq i32 %11, 45, !dbg !2102
  br i1 %12, label %13, label %16, !dbg !2103

13:                                               ; preds = %2
  %14 = load ptr, ptr %6, align 8, !dbg !2104
  %15 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !2104
  store ptr %15, ptr %6, align 8, !dbg !2104
  br label %16, !dbg !2105

16:                                               ; preds = %13, %2
  %17 = load ptr, ptr %6, align 8, !dbg !2106
  %18 = load i8, ptr %17, align 1, !dbg !2108
  %19 = sext i8 %18 to i32, !dbg !2108
  %20 = icmp eq i32 %19, 48, !dbg !2109
  br i1 %20, label %21, label %24, !dbg !2110

21:                                               ; preds = %16
  %22 = load ptr, ptr %6, align 8, !dbg !2111
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !2111
  store ptr %23, ptr %6, align 8, !dbg !2111
  br label %52, !dbg !2113

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8, !dbg !2114
  %26 = load i8, ptr %25, align 1, !dbg !2114
  %27 = sext i8 %26 to i32, !dbg !2114
  %28 = icmp sge i32 %27, 48, !dbg !2114
  br i1 %28, label %29, label %34, !dbg !2114

29:                                               ; preds = %24
  %30 = load ptr, ptr %6, align 8, !dbg !2114
  %31 = load i8, ptr %30, align 1, !dbg !2114
  %32 = sext i8 %31 to i32, !dbg !2114
  %33 = icmp sle i32 %32, 57, !dbg !2114
  br i1 %33, label %35, label %34, !dbg !2117

34:                                               ; preds = %29, %24
  store i1 false, ptr %3, align 1, !dbg !2118
  br label %151, !dbg !2118

35:                                               ; preds = %29
  br label %36, !dbg !2119

36:                                               ; preds = %49, %35
  %37 = load ptr, ptr %6, align 8, !dbg !2120
  %38 = getelementptr inbounds i8, ptr %37, i32 1, !dbg !2120
  store ptr %38, ptr %6, align 8, !dbg !2120
  br label %39, !dbg !2122

39:                                               ; preds = %36
  %40 = load ptr, ptr %6, align 8, !dbg !2123
  %41 = load i8, ptr %40, align 1, !dbg !2123
  %42 = sext i8 %41 to i32, !dbg !2123
  %43 = icmp sge i32 %42, 48, !dbg !2123
  br i1 %43, label %44, label %49, !dbg !2123

44:                                               ; preds = %39
  %45 = load ptr, ptr %6, align 8, !dbg !2123
  %46 = load i8, ptr %45, align 1, !dbg !2123
  %47 = sext i8 %46 to i32, !dbg !2123
  %48 = icmp sle i32 %47, 57, !dbg !2123
  br label %49

49:                                               ; preds = %44, %39
  %50 = phi i1 [ false, %39 ], [ %48, %44 ], !dbg !2124
  br i1 %50, label %36, label %51, !dbg !2122, !llvm.loop !2125

51:                                               ; preds = %49
  br label %52

52:                                               ; preds = %51, %21
  %53 = load ptr, ptr %6, align 8, !dbg !2127
  %54 = load i8, ptr %53, align 1, !dbg !2129
  %55 = sext i8 %54 to i32, !dbg !2129
  %56 = icmp eq i32 %55, 46, !dbg !2130
  br i1 %56, label %57, label %87, !dbg !2131

57:                                               ; preds = %52
  %58 = load ptr, ptr %6, align 8, !dbg !2132
  %59 = getelementptr inbounds i8, ptr %58, i32 1, !dbg !2132
  store ptr %59, ptr %6, align 8, !dbg !2132
  %60 = load ptr, ptr %6, align 8, !dbg !2134
  %61 = load i8, ptr %60, align 1, !dbg !2134
  %62 = sext i8 %61 to i32, !dbg !2134
  %63 = icmp sge i32 %62, 48, !dbg !2134
  br i1 %63, label %64, label %69, !dbg !2134

64:                                               ; preds = %57
  %65 = load ptr, ptr %6, align 8, !dbg !2134
  %66 = load i8, ptr %65, align 1, !dbg !2134
  %67 = sext i8 %66 to i32, !dbg !2134
  %68 = icmp sle i32 %67, 57, !dbg !2134
  br i1 %68, label %70, label %69, !dbg !2136

69:                                               ; preds = %64, %57
  store i1 false, ptr %3, align 1, !dbg !2137
  br label %151, !dbg !2137

70:                                               ; preds = %64
  br label %71, !dbg !2138

71:                                               ; preds = %84, %70
  %72 = load ptr, ptr %6, align 8, !dbg !2139
  %73 = getelementptr inbounds i8, ptr %72, i32 1, !dbg !2139
  store ptr %73, ptr %6, align 8, !dbg !2139
  br label %74, !dbg !2141

74:                                               ; preds = %71
  %75 = load ptr, ptr %6, align 8, !dbg !2142
  %76 = load i8, ptr %75, align 1, !dbg !2142
  %77 = sext i8 %76 to i32, !dbg !2142
  %78 = icmp sge i32 %77, 48, !dbg !2142
  br i1 %78, label %79, label %84, !dbg !2142

79:                                               ; preds = %74
  %80 = load ptr, ptr %6, align 8, !dbg !2142
  %81 = load i8, ptr %80, align 1, !dbg !2142
  %82 = sext i8 %81 to i32, !dbg !2142
  %83 = icmp sle i32 %82, 57, !dbg !2142
  br label %84

84:                                               ; preds = %79, %74
  %85 = phi i1 [ false, %74 ], [ %83, %79 ], !dbg !2143
  br i1 %85, label %71, label %86, !dbg !2141, !llvm.loop !2144

86:                                               ; preds = %84
  br label %87, !dbg !2146

87:                                               ; preds = %86, %52
  %88 = load ptr, ptr %6, align 8, !dbg !2147
  %89 = load i8, ptr %88, align 1, !dbg !2149
  %90 = sext i8 %89 to i32, !dbg !2149
  %91 = icmp eq i32 %90, 69, !dbg !2150
  br i1 %91, label %97, label %92, !dbg !2151

92:                                               ; preds = %87
  %93 = load ptr, ptr %6, align 8, !dbg !2152
  %94 = load i8, ptr %93, align 1, !dbg !2153
  %95 = sext i8 %94 to i32, !dbg !2153
  %96 = icmp eq i32 %95, 101, !dbg !2154
  br i1 %96, label %97, label %140, !dbg !2155

97:                                               ; preds = %92, %87
  %98 = load ptr, ptr %6, align 8, !dbg !2156
  %99 = getelementptr inbounds i8, ptr %98, i32 1, !dbg !2156
  store ptr %99, ptr %6, align 8, !dbg !2156
  %100 = load ptr, ptr %6, align 8, !dbg !2158
  %101 = load i8, ptr %100, align 1, !dbg !2160
  %102 = sext i8 %101 to i32, !dbg !2160
  %103 = icmp eq i32 %102, 43, !dbg !2161
  br i1 %103, label %109, label %104, !dbg !2162

104:                                              ; preds = %97
  %105 = load ptr, ptr %6, align 8, !dbg !2163
  %106 = load i8, ptr %105, align 1, !dbg !2164
  %107 = sext i8 %106 to i32, !dbg !2164
  %108 = icmp eq i32 %107, 45, !dbg !2165
  br i1 %108, label %109, label %112, !dbg !2166

109:                                              ; preds = %104, %97
  %110 = load ptr, ptr %6, align 8, !dbg !2167
  %111 = getelementptr inbounds i8, ptr %110, i32 1, !dbg !2167
  store ptr %111, ptr %6, align 8, !dbg !2167
  br label %112, !dbg !2168

112:                                              ; preds = %109, %104
  %113 = load ptr, ptr %6, align 8, !dbg !2169
  %114 = load i8, ptr %113, align 1, !dbg !2169
  %115 = sext i8 %114 to i32, !dbg !2169
  %116 = icmp sge i32 %115, 48, !dbg !2169
  br i1 %116, label %117, label %122, !dbg !2169

117:                                              ; preds = %112
  %118 = load ptr, ptr %6, align 8, !dbg !2169
  %119 = load i8, ptr %118, align 1, !dbg !2169
  %120 = sext i8 %119 to i32, !dbg !2169
  %121 = icmp sle i32 %120, 57, !dbg !2169
  br i1 %121, label %123, label %122, !dbg !2171

122:                                              ; preds = %117, %112
  store i1 false, ptr %3, align 1, !dbg !2172
  br label %151, !dbg !2172

123:                                              ; preds = %117
  br label %124, !dbg !2173

124:                                              ; preds = %137, %123
  %125 = load ptr, ptr %6, align 8, !dbg !2174
  %126 = getelementptr inbounds i8, ptr %125, i32 1, !dbg !2174
  store ptr %126, ptr %6, align 8, !dbg !2174
  br label %127, !dbg !2176

127:                                              ; preds = %124
  %128 = load ptr, ptr %6, align 8, !dbg !2177
  %129 = load i8, ptr %128, align 1, !dbg !2177
  %130 = sext i8 %129 to i32, !dbg !2177
  %131 = icmp sge i32 %130, 48, !dbg !2177
  br i1 %131, label %132, label %137, !dbg !2177

132:                                              ; preds = %127
  %133 = load ptr, ptr %6, align 8, !dbg !2177
  %134 = load i8, ptr %133, align 1, !dbg !2177
  %135 = sext i8 %134 to i32, !dbg !2177
  %136 = icmp sle i32 %135, 57, !dbg !2177
  br label %137

137:                                              ; preds = %132, %127
  %138 = phi i1 [ false, %127 ], [ %136, %132 ], !dbg !2178
  br i1 %138, label %124, label %139, !dbg !2176, !llvm.loop !2179

139:                                              ; preds = %137
  br label %140, !dbg !2181

140:                                              ; preds = %139, %92
  %141 = load ptr, ptr %5, align 8, !dbg !2182
  %142 = icmp ne ptr %141, null, !dbg !2182
  br i1 %142, label %143, label %148, !dbg !2184

143:                                              ; preds = %140
  %144 = load ptr, ptr %4, align 8, !dbg !2185
  %145 = load ptr, ptr %144, align 8, !dbg !2186
  %146 = call double @strtod(ptr noundef %145, ptr noundef null) #11, !dbg !2187
  %147 = load ptr, ptr %5, align 8, !dbg !2188
  store double %146, ptr %147, align 8, !dbg !2189
  br label %148, !dbg !2190

148:                                              ; preds = %143, %140
  %149 = load ptr, ptr %6, align 8, !dbg !2191
  %150 = load ptr, ptr %4, align 8, !dbg !2192
  store ptr %149, ptr %150, align 8, !dbg !2193
  store i1 true, ptr %3, align 1, !dbg !2194
  br label %151, !dbg !2194

151:                                              ; preds = %148, %122, %69, %34
  %152 = load i1, ptr %3, align 1, !dbg !2195
  ret i1 %152, !dbg !2195
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_grow(ptr noundef %0, i64 noundef %1) #0 !dbg !2196 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2199, metadata !DIExpression()), !dbg !2200
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2201, metadata !DIExpression()), !dbg !2202
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2203, metadata !DIExpression()), !dbg !2204
  %7 = load ptr, ptr %3, align 8, !dbg !2205
  %8 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !2206
  %9 = load ptr, ptr %8, align 8, !dbg !2206
  %10 = load ptr, ptr %3, align 8, !dbg !2207
  %11 = getelementptr inbounds %struct.SB, ptr %10, i32 0, i32 2, !dbg !2208
  %12 = load ptr, ptr %11, align 8, !dbg !2208
  %13 = ptrtoint ptr %9 to i64, !dbg !2209
  %14 = ptrtoint ptr %12 to i64, !dbg !2209
  %15 = sub i64 %13, %14, !dbg !2209
  store i64 %15, ptr %5, align 8, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2210, metadata !DIExpression()), !dbg !2211
  %16 = load ptr, ptr %3, align 8, !dbg !2212
  %17 = getelementptr inbounds %struct.SB, ptr %16, i32 0, i32 1, !dbg !2213
  %18 = load ptr, ptr %17, align 8, !dbg !2213
  %19 = load ptr, ptr %3, align 8, !dbg !2214
  %20 = getelementptr inbounds %struct.SB, ptr %19, i32 0, i32 2, !dbg !2215
  %21 = load ptr, ptr %20, align 8, !dbg !2215
  %22 = ptrtoint ptr %18 to i64, !dbg !2216
  %23 = ptrtoint ptr %21 to i64, !dbg !2216
  %24 = sub i64 %22, %23, !dbg !2216
  store i64 %24, ptr %6, align 8, !dbg !2211
  br label %25, !dbg !2217

25:                                               ; preds = %28, %2
  %26 = load i64, ptr %6, align 8, !dbg !2218
  %27 = mul i64 %26, 2, !dbg !2218
  store i64 %27, ptr %6, align 8, !dbg !2218
  br label %28, !dbg !2220

28:                                               ; preds = %25
  %29 = load i64, ptr %6, align 8, !dbg !2221
  %30 = load i64, ptr %5, align 8, !dbg !2222
  %31 = load i64, ptr %4, align 8, !dbg !2223
  %32 = add i64 %30, %31, !dbg !2224
  %33 = icmp ult i64 %29, %32, !dbg !2225
  br i1 %33, label %25, label %34, !dbg !2220, !llvm.loop !2226

34:                                               ; preds = %28
  %35 = load ptr, ptr %3, align 8, !dbg !2228
  %36 = getelementptr inbounds %struct.SB, ptr %35, i32 0, i32 2, !dbg !2229
  %37 = load ptr, ptr %36, align 8, !dbg !2229
  %38 = load i64, ptr %6, align 8, !dbg !2230
  %39 = add i64 %38, 1, !dbg !2231
  %40 = call ptr @realloc(ptr noundef %37, i64 noundef %39) #16, !dbg !2232
  %41 = load ptr, ptr %3, align 8, !dbg !2233
  %42 = getelementptr inbounds %struct.SB, ptr %41, i32 0, i32 2, !dbg !2234
  store ptr %40, ptr %42, align 8, !dbg !2235
  %43 = load ptr, ptr %3, align 8, !dbg !2236
  %44 = getelementptr inbounds %struct.SB, ptr %43, i32 0, i32 2, !dbg !2238
  %45 = load ptr, ptr %44, align 8, !dbg !2238
  %46 = icmp eq ptr %45, null, !dbg !2239
  br i1 %46, label %47, label %52, !dbg !2240

47:                                               ; preds = %34
  br label %48, !dbg !2241

48:                                               ; preds = %47
  %49 = load ptr, ptr @stderr, align 8, !dbg !2242
  %50 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %49, ptr noundef @.str.21), !dbg !2242
  call void @exit(i32 noundef 1) #13, !dbg !2242
  unreachable, !dbg !2242

51:                                               ; No predecessors!
  br label %52, !dbg !2242

52:                                               ; preds = %51, %34
  %53 = load ptr, ptr %3, align 8, !dbg !2244
  %54 = getelementptr inbounds %struct.SB, ptr %53, i32 0, i32 2, !dbg !2245
  %55 = load ptr, ptr %54, align 8, !dbg !2245
  %56 = load i64, ptr %5, align 8, !dbg !2246
  %57 = getelementptr inbounds i8, ptr %55, i64 %56, !dbg !2247
  %58 = load ptr, ptr %3, align 8, !dbg !2248
  %59 = getelementptr inbounds %struct.SB, ptr %58, i32 0, i32 0, !dbg !2249
  store ptr %57, ptr %59, align 8, !dbg !2250
  %60 = load ptr, ptr %3, align 8, !dbg !2251
  %61 = getelementptr inbounds %struct.SB, ptr %60, i32 0, i32 2, !dbg !2252
  %62 = load ptr, ptr %61, align 8, !dbg !2252
  %63 = load i64, ptr %6, align 8, !dbg !2253
  %64 = getelementptr inbounds i8, ptr %62, i64 %63, !dbg !2254
  %65 = load ptr, ptr %3, align 8, !dbg !2255
  %66 = getelementptr inbounds %struct.SB, ptr %65, i32 0, i32 1, !dbg !2256
  store ptr %64, ptr %66, align 8, !dbg !2257
  ret void, !dbg !2258
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_hex16(ptr noundef %0, ptr noundef %1) #0 !dbg !2259 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2263, metadata !DIExpression()), !dbg !2264
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2265, metadata !DIExpression()), !dbg !2266
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2267, metadata !DIExpression()), !dbg !2268
  %11 = load ptr, ptr %4, align 8, !dbg !2269
  %12 = load ptr, ptr %11, align 8, !dbg !2270
  store ptr %12, ptr %6, align 8, !dbg !2268
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2271, metadata !DIExpression()), !dbg !2272
  store i16 0, ptr %7, align 2, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2273, metadata !DIExpression()), !dbg !2274
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2275, metadata !DIExpression()), !dbg !2276
  store i16 0, ptr %8, align 2, !dbg !2277
  br label %13, !dbg !2279

13:                                               ; preds = %72, %2
  %14 = load i16, ptr %8, align 2, !dbg !2280
  %15 = zext i16 %14 to i32, !dbg !2280
  %16 = icmp slt i32 %15, 4, !dbg !2282
  br i1 %16, label %17, label %75, !dbg !2283

17:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2284, metadata !DIExpression()), !dbg !2286
  %18 = load ptr, ptr %6, align 8, !dbg !2287
  %19 = getelementptr inbounds i8, ptr %18, i32 1, !dbg !2287
  store ptr %19, ptr %6, align 8, !dbg !2287
  %20 = load i8, ptr %18, align 1, !dbg !2288
  store i8 %20, ptr %10, align 1, !dbg !2286
  %21 = load i8, ptr %10, align 1, !dbg !2289
  %22 = sext i8 %21 to i32, !dbg !2289
  %23 = icmp sge i32 %22, 48, !dbg !2291
  br i1 %23, label %24, label %33, !dbg !2292

24:                                               ; preds = %17
  %25 = load i8, ptr %10, align 1, !dbg !2293
  %26 = sext i8 %25 to i32, !dbg !2293
  %27 = icmp sle i32 %26, 57, !dbg !2294
  br i1 %27, label %28, label %33, !dbg !2295

28:                                               ; preds = %24
  %29 = load i8, ptr %10, align 1, !dbg !2296
  %30 = sext i8 %29 to i32, !dbg !2296
  %31 = sub nsw i32 %30, 48, !dbg !2297
  %32 = trunc i32 %31 to i16, !dbg !2298
  store i16 %32, ptr %9, align 2, !dbg !2299
  br label %64, !dbg !2300

33:                                               ; preds = %24, %17
  %34 = load i8, ptr %10, align 1, !dbg !2301
  %35 = sext i8 %34 to i32, !dbg !2301
  %36 = icmp sge i32 %35, 65, !dbg !2303
  br i1 %36, label %37, label %47, !dbg !2304

37:                                               ; preds = %33
  %38 = load i8, ptr %10, align 1, !dbg !2305
  %39 = sext i8 %38 to i32, !dbg !2305
  %40 = icmp sle i32 %39, 70, !dbg !2306
  br i1 %40, label %41, label %47, !dbg !2307

41:                                               ; preds = %37
  %42 = load i8, ptr %10, align 1, !dbg !2308
  %43 = sext i8 %42 to i32, !dbg !2308
  %44 = sub nsw i32 %43, 65, !dbg !2309
  %45 = add nsw i32 %44, 10, !dbg !2310
  %46 = trunc i32 %45 to i16, !dbg !2311
  store i16 %46, ptr %9, align 2, !dbg !2312
  br label %63, !dbg !2313

47:                                               ; preds = %37, %33
  %48 = load i8, ptr %10, align 1, !dbg !2314
  %49 = sext i8 %48 to i32, !dbg !2314
  %50 = icmp sge i32 %49, 97, !dbg !2316
  br i1 %50, label %51, label %61, !dbg !2317

51:                                               ; preds = %47
  %52 = load i8, ptr %10, align 1, !dbg !2318
  %53 = sext i8 %52 to i32, !dbg !2318
  %54 = icmp sle i32 %53, 102, !dbg !2319
  br i1 %54, label %55, label %61, !dbg !2320

55:                                               ; preds = %51
  %56 = load i8, ptr %10, align 1, !dbg !2321
  %57 = sext i8 %56 to i32, !dbg !2321
  %58 = sub nsw i32 %57, 97, !dbg !2322
  %59 = add nsw i32 %58, 10, !dbg !2323
  %60 = trunc i32 %59 to i16, !dbg !2324
  store i16 %60, ptr %9, align 2, !dbg !2325
  br label %62, !dbg !2326

61:                                               ; preds = %51, %47
  store i1 false, ptr %3, align 1, !dbg !2327
  br label %84, !dbg !2327

62:                                               ; preds = %55
  br label %63

63:                                               ; preds = %62, %41
  br label %64

64:                                               ; preds = %63, %28
  %65 = load i16, ptr %7, align 2, !dbg !2328
  %66 = zext i16 %65 to i32, !dbg !2328
  %67 = shl i32 %66, 4, !dbg !2329
  %68 = load i16, ptr %9, align 2, !dbg !2330
  %69 = zext i16 %68 to i32, !dbg !2330
  %70 = add nsw i32 %67, %69, !dbg !2331
  %71 = trunc i32 %70 to i16, !dbg !2332
  store i16 %71, ptr %7, align 2, !dbg !2333
  br label %72, !dbg !2334

72:                                               ; preds = %64
  %73 = load i16, ptr %8, align 2, !dbg !2335
  %74 = add i16 %73, 1, !dbg !2335
  store i16 %74, ptr %8, align 2, !dbg !2335
  br label %13, !dbg !2336, !llvm.loop !2337

75:                                               ; preds = %13
  %76 = load ptr, ptr %5, align 8, !dbg !2339
  %77 = icmp ne ptr %76, null, !dbg !2339
  br i1 %77, label %78, label %81, !dbg !2341

78:                                               ; preds = %75
  %79 = load i16, ptr %7, align 2, !dbg !2342
  %80 = load ptr, ptr %5, align 8, !dbg !2343
  store i16 %79, ptr %80, align 2, !dbg !2344
  br label %81, !dbg !2345

81:                                               ; preds = %78, %75
  %82 = load ptr, ptr %6, align 8, !dbg !2346
  %83 = load ptr, ptr %4, align 8, !dbg !2347
  store ptr %82, ptr %83, align 8, !dbg !2348
  store i1 true, ptr %3, align 1, !dbg !2349
  br label %84, !dbg !2349

84:                                               ; preds = %81, %61
  %85 = load i1, ptr %3, align 1, !dbg !2350
  ret i1 %85, !dbg !2350
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @from_surrogate_pair(i16 noundef zeroext %0, i16 noundef zeroext %1, ptr noundef %2) #0 !dbg !2351 {
  %4 = alloca i1, align 1
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  store i16 %0, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2355, metadata !DIExpression()), !dbg !2356
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2357, metadata !DIExpression()), !dbg !2358
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2359, metadata !DIExpression()), !dbg !2360
  %8 = load i16, ptr %5, align 2, !dbg !2361
  %9 = zext i16 %8 to i32, !dbg !2361
  %10 = icmp sge i32 %9, 55296, !dbg !2363
  br i1 %10, label %11, label %34, !dbg !2364

11:                                               ; preds = %3
  %12 = load i16, ptr %5, align 2, !dbg !2365
  %13 = zext i16 %12 to i32, !dbg !2365
  %14 = icmp sle i32 %13, 56319, !dbg !2366
  br i1 %14, label %15, label %34, !dbg !2367

15:                                               ; preds = %11
  %16 = load i16, ptr %6, align 2, !dbg !2368
  %17 = zext i16 %16 to i32, !dbg !2368
  %18 = icmp sge i32 %17, 56320, !dbg !2369
  br i1 %18, label %19, label %34, !dbg !2370

19:                                               ; preds = %15
  %20 = load i16, ptr %6, align 2, !dbg !2371
  %21 = zext i16 %20 to i32, !dbg !2371
  %22 = icmp sle i32 %21, 57343, !dbg !2372
  br i1 %22, label %23, label %34, !dbg !2373

23:                                               ; preds = %19
  %24 = load i16, ptr %5, align 2, !dbg !2374
  %25 = zext i16 %24 to i32, !dbg !2376
  %26 = and i32 %25, 1023, !dbg !2377
  %27 = shl i32 %26, 10, !dbg !2378
  %28 = load i16, ptr %6, align 2, !dbg !2379
  %29 = zext i16 %28 to i32, !dbg !2379
  %30 = and i32 %29, 1023, !dbg !2380
  %31 = or i32 %27, %30, !dbg !2381
  %32 = add i32 65536, %31, !dbg !2382
  %33 = load ptr, ptr %7, align 8, !dbg !2383
  store i32 %32, ptr %33, align 4, !dbg !2384
  store i1 true, ptr %4, align 1, !dbg !2385
  br label %35, !dbg !2385

34:                                               ; preds = %19, %15, %11, %3
  store i1 false, ptr %4, align 1, !dbg !2386
  br label %35, !dbg !2386

35:                                               ; preds = %34, %23
  %36 = load i1, ptr %4, align 1, !dbg !2388
  ret i1 %36, !dbg !2388
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_write_char(i32 noundef %0, ptr noundef %1) #0 !dbg !2389 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2392, metadata !DIExpression()), !dbg !2393
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2394, metadata !DIExpression()), !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2396, metadata !DIExpression()), !dbg !2397
  %7 = load ptr, ptr %5, align 8, !dbg !2398
  store ptr %7, ptr %6, align 8, !dbg !2397
  %8 = load i32, ptr %4, align 4, !dbg !2399
  %9 = icmp ule i32 %8, 1114111, !dbg !2399
  br i1 %9, label %10, label %17, !dbg !2399

10:                                               ; preds = %2
  %11 = load i32, ptr %4, align 4, !dbg !2399
  %12 = icmp uge i32 %11, 55296, !dbg !2399
  br i1 %12, label %13, label %16, !dbg !2399

13:                                               ; preds = %10
  %14 = load i32, ptr %4, align 4, !dbg !2399
  %15 = icmp ule i32 %14, 57343, !dbg !2399
  br i1 %15, label %17, label %16, !dbg !2402

16:                                               ; preds = %13, %10
  br label %18, !dbg !2402

17:                                               ; preds = %13, %2
  call void @__assert_fail(ptr noundef @.str.26, ptr noundef @.str.1, i32 noundef 267, ptr noundef @__PRETTY_FUNCTION__.utf8_write_char) #13, !dbg !2399
  unreachable, !dbg !2399

18:                                               ; preds = %16
  %19 = load i32, ptr %4, align 4, !dbg !2403
  %20 = icmp ule i32 %19, 127, !dbg !2405
  br i1 %20, label %21, label %26, !dbg !2406

21:                                               ; preds = %18
  %22 = load i32, ptr %4, align 4, !dbg !2407
  %23 = trunc i32 %22 to i8, !dbg !2409
  %24 = load ptr, ptr %6, align 8, !dbg !2410
  %25 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !2410
  store ptr %25, ptr %6, align 8, !dbg !2410
  store i8 %23, ptr %24, align 1, !dbg !2411
  store i32 1, ptr %3, align 4, !dbg !2412
  br label %92, !dbg !2412

26:                                               ; preds = %18
  %27 = load i32, ptr %4, align 4, !dbg !2413
  %28 = icmp ule i32 %27, 2047, !dbg !2415
  br i1 %28, label %29, label %42, !dbg !2416

29:                                               ; preds = %26
  %30 = load i32, ptr %4, align 4, !dbg !2417
  %31 = lshr i32 %30, 6, !dbg !2419
  %32 = or i32 192, %31, !dbg !2420
  %33 = trunc i32 %32 to i8, !dbg !2421
  %34 = load ptr, ptr %6, align 8, !dbg !2422
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !2422
  store ptr %35, ptr %6, align 8, !dbg !2422
  store i8 %33, ptr %34, align 1, !dbg !2423
  %36 = load i32, ptr %4, align 4, !dbg !2424
  %37 = and i32 %36, 63, !dbg !2425
  %38 = or i32 128, %37, !dbg !2426
  %39 = trunc i32 %38 to i8, !dbg !2427
  %40 = load ptr, ptr %6, align 8, !dbg !2428
  %41 = getelementptr inbounds i8, ptr %40, i32 1, !dbg !2428
  store ptr %41, ptr %6, align 8, !dbg !2428
  store i8 %39, ptr %40, align 1, !dbg !2429
  store i32 2, ptr %3, align 4, !dbg !2430
  br label %92, !dbg !2430

42:                                               ; preds = %26
  %43 = load i32, ptr %4, align 4, !dbg !2431
  %44 = icmp ule i32 %43, 65535, !dbg !2433
  br i1 %44, label %45, label %65, !dbg !2434

45:                                               ; preds = %42
  %46 = load i32, ptr %4, align 4, !dbg !2435
  %47 = lshr i32 %46, 12, !dbg !2437
  %48 = or i32 224, %47, !dbg !2438
  %49 = trunc i32 %48 to i8, !dbg !2439
  %50 = load ptr, ptr %6, align 8, !dbg !2440
  %51 = getelementptr inbounds i8, ptr %50, i32 1, !dbg !2440
  store ptr %51, ptr %6, align 8, !dbg !2440
  store i8 %49, ptr %50, align 1, !dbg !2441
  %52 = load i32, ptr %4, align 4, !dbg !2442
  %53 = lshr i32 %52, 6, !dbg !2443
  %54 = and i32 %53, 63, !dbg !2444
  %55 = or i32 128, %54, !dbg !2445
  %56 = trunc i32 %55 to i8, !dbg !2446
  %57 = load ptr, ptr %6, align 8, !dbg !2447
  %58 = getelementptr inbounds i8, ptr %57, i32 1, !dbg !2447
  store ptr %58, ptr %6, align 8, !dbg !2447
  store i8 %56, ptr %57, align 1, !dbg !2448
  %59 = load i32, ptr %4, align 4, !dbg !2449
  %60 = and i32 %59, 63, !dbg !2450
  %61 = or i32 128, %60, !dbg !2451
  %62 = trunc i32 %61 to i8, !dbg !2452
  %63 = load ptr, ptr %6, align 8, !dbg !2453
  %64 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !2453
  store ptr %64, ptr %6, align 8, !dbg !2453
  store i8 %62, ptr %63, align 1, !dbg !2454
  store i32 3, ptr %3, align 4, !dbg !2455
  br label %92, !dbg !2455

65:                                               ; preds = %42
  %66 = load i32, ptr %4, align 4, !dbg !2456
  %67 = lshr i32 %66, 18, !dbg !2458
  %68 = or i32 240, %67, !dbg !2459
  %69 = trunc i32 %68 to i8, !dbg !2460
  %70 = load ptr, ptr %6, align 8, !dbg !2461
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !2461
  store ptr %71, ptr %6, align 8, !dbg !2461
  store i8 %69, ptr %70, align 1, !dbg !2462
  %72 = load i32, ptr %4, align 4, !dbg !2463
  %73 = lshr i32 %72, 12, !dbg !2464
  %74 = and i32 %73, 63, !dbg !2465
  %75 = or i32 128, %74, !dbg !2466
  %76 = trunc i32 %75 to i8, !dbg !2467
  %77 = load ptr, ptr %6, align 8, !dbg !2468
  %78 = getelementptr inbounds i8, ptr %77, i32 1, !dbg !2468
  store ptr %78, ptr %6, align 8, !dbg !2468
  store i8 %76, ptr %77, align 1, !dbg !2469
  %79 = load i32, ptr %4, align 4, !dbg !2470
  %80 = lshr i32 %79, 6, !dbg !2471
  %81 = and i32 %80, 63, !dbg !2472
  %82 = or i32 128, %81, !dbg !2473
  %83 = trunc i32 %82 to i8, !dbg !2474
  %84 = load ptr, ptr %6, align 8, !dbg !2475
  %85 = getelementptr inbounds i8, ptr %84, i32 1, !dbg !2475
  store ptr %85, ptr %6, align 8, !dbg !2475
  store i8 %83, ptr %84, align 1, !dbg !2476
  %86 = load i32, ptr %4, align 4, !dbg !2477
  %87 = and i32 %86, 63, !dbg !2478
  %88 = or i32 128, %87, !dbg !2479
  %89 = trunc i32 %88 to i8, !dbg !2480
  %90 = load ptr, ptr %6, align 8, !dbg !2481
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !2481
  store ptr %91, ptr %6, align 8, !dbg !2481
  store i8 %89, ptr %90, align 1, !dbg !2482
  store i32 4, ptr %3, align 4, !dbg !2483
  br label %92, !dbg !2483

92:                                               ; preds = %65, %45, %29, %21
  %93 = load i32, ptr %3, align 4, !dbg !2484
  ret i32 %93, !dbg !2484
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @utf8_validate_cz(ptr noundef %0) #0 !dbg !2485 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2488, metadata !DIExpression()), !dbg !2489
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2490, metadata !DIExpression()), !dbg !2491
  %5 = load ptr, ptr %3, align 8, !dbg !2492
  %6 = getelementptr inbounds i8, ptr %5, i32 1, !dbg !2492
  store ptr %6, ptr %3, align 8, !dbg !2492
  %7 = load i8, ptr %5, align 1, !dbg !2493
  store i8 %7, ptr %4, align 1, !dbg !2491
  %8 = load i8, ptr %4, align 1, !dbg !2494
  %9 = zext i8 %8 to i32, !dbg !2494
  %10 = icmp sle i32 %9, 127, !dbg !2496
  br i1 %10, label %11, label %12, !dbg !2497

11:                                               ; preds = %1
  store i64 1, ptr %2, align 8, !dbg !2498
  br label %121, !dbg !2498

12:                                               ; preds = %1
  %13 = load i8, ptr %4, align 1, !dbg !2500
  %14 = zext i8 %13 to i32, !dbg !2500
  %15 = icmp sle i32 %14, 193, !dbg !2502
  br i1 %15, label %16, label %17, !dbg !2503

16:                                               ; preds = %12
  store i64 0, ptr %2, align 8, !dbg !2504
  br label %121, !dbg !2504

17:                                               ; preds = %12
  %18 = load i8, ptr %4, align 1, !dbg !2506
  %19 = zext i8 %18 to i32, !dbg !2506
  %20 = icmp sle i32 %19, 223, !dbg !2508
  br i1 %20, label %21, label %30, !dbg !2509

21:                                               ; preds = %17
  %22 = load ptr, ptr %3, align 8, !dbg !2510
  %23 = getelementptr inbounds i8, ptr %22, i32 1, !dbg !2510
  store ptr %23, ptr %3, align 8, !dbg !2510
  %24 = load i8, ptr %22, align 1, !dbg !2513
  %25 = zext i8 %24 to i32, !dbg !2514
  %26 = and i32 %25, 192, !dbg !2515
  %27 = icmp ne i32 %26, 128, !dbg !2516
  br i1 %27, label %28, label %29, !dbg !2517

28:                                               ; preds = %21
  store i64 0, ptr %2, align 8, !dbg !2518
  br label %121, !dbg !2518

29:                                               ; preds = %21
  store i64 2, ptr %2, align 8, !dbg !2519
  br label %121, !dbg !2519

30:                                               ; preds = %17
  %31 = load i8, ptr %4, align 1, !dbg !2520
  %32 = zext i8 %31 to i32, !dbg !2520
  %33 = icmp sle i32 %32, 239, !dbg !2522
  br i1 %33, label %34, label %71, !dbg !2523

34:                                               ; preds = %30
  %35 = load i8, ptr %4, align 1, !dbg !2524
  %36 = zext i8 %35 to i32, !dbg !2524
  %37 = icmp eq i32 %36, 224, !dbg !2527
  br i1 %37, label %38, label %44, !dbg !2528

38:                                               ; preds = %34
  %39 = load ptr, ptr %3, align 8, !dbg !2529
  %40 = load i8, ptr %39, align 1, !dbg !2530
  %41 = zext i8 %40 to i32, !dbg !2531
  %42 = icmp slt i32 %41, 160, !dbg !2532
  br i1 %42, label %43, label %44, !dbg !2533

43:                                               ; preds = %38
  store i64 0, ptr %2, align 8, !dbg !2534
  br label %121, !dbg !2534

44:                                               ; preds = %38, %34
  %45 = load i8, ptr %4, align 1, !dbg !2535
  %46 = zext i8 %45 to i32, !dbg !2535
  %47 = icmp eq i32 %46, 237, !dbg !2537
  br i1 %47, label %48, label %54, !dbg !2538

48:                                               ; preds = %44
  %49 = load ptr, ptr %3, align 8, !dbg !2539
  %50 = load i8, ptr %49, align 1, !dbg !2540
  %51 = zext i8 %50 to i32, !dbg !2541
  %52 = icmp sgt i32 %51, 159, !dbg !2542
  br i1 %52, label %53, label %54, !dbg !2543

53:                                               ; preds = %48
  store i64 0, ptr %2, align 8, !dbg !2544
  br label %121, !dbg !2544

54:                                               ; preds = %48, %44
  %55 = load ptr, ptr %3, align 8, !dbg !2545
  %56 = getelementptr inbounds i8, ptr %55, i32 1, !dbg !2545
  store ptr %56, ptr %3, align 8, !dbg !2545
  %57 = load i8, ptr %55, align 1, !dbg !2547
  %58 = zext i8 %57 to i32, !dbg !2548
  %59 = and i32 %58, 192, !dbg !2549
  %60 = icmp ne i32 %59, 128, !dbg !2550
  br i1 %60, label %61, label %62, !dbg !2551

61:                                               ; preds = %54
  store i64 0, ptr %2, align 8, !dbg !2552
  br label %121, !dbg !2552

62:                                               ; preds = %54
  %63 = load ptr, ptr %3, align 8, !dbg !2553
  %64 = getelementptr inbounds i8, ptr %63, i32 1, !dbg !2553
  store ptr %64, ptr %3, align 8, !dbg !2553
  %65 = load i8, ptr %63, align 1, !dbg !2555
  %66 = zext i8 %65 to i32, !dbg !2556
  %67 = and i32 %66, 192, !dbg !2557
  %68 = icmp ne i32 %67, 128, !dbg !2558
  br i1 %68, label %69, label %70, !dbg !2559

69:                                               ; preds = %62
  store i64 0, ptr %2, align 8, !dbg !2560
  br label %121, !dbg !2560

70:                                               ; preds = %62
  store i64 3, ptr %2, align 8, !dbg !2561
  br label %121, !dbg !2561

71:                                               ; preds = %30
  %72 = load i8, ptr %4, align 1, !dbg !2562
  %73 = zext i8 %72 to i32, !dbg !2562
  %74 = icmp sle i32 %73, 244, !dbg !2564
  br i1 %74, label %75, label %120, !dbg !2565

75:                                               ; preds = %71
  %76 = load i8, ptr %4, align 1, !dbg !2566
  %77 = zext i8 %76 to i32, !dbg !2566
  %78 = icmp eq i32 %77, 240, !dbg !2569
  br i1 %78, label %79, label %85, !dbg !2570

79:                                               ; preds = %75
  %80 = load ptr, ptr %3, align 8, !dbg !2571
  %81 = load i8, ptr %80, align 1, !dbg !2572
  %82 = zext i8 %81 to i32, !dbg !2573
  %83 = icmp slt i32 %82, 144, !dbg !2574
  br i1 %83, label %84, label %85, !dbg !2575

84:                                               ; preds = %79
  store i64 0, ptr %2, align 8, !dbg !2576
  br label %121, !dbg !2576

85:                                               ; preds = %79, %75
  %86 = load i8, ptr %4, align 1, !dbg !2577
  %87 = zext i8 %86 to i32, !dbg !2577
  %88 = icmp eq i32 %87, 244, !dbg !2579
  br i1 %88, label %89, label %95, !dbg !2580

89:                                               ; preds = %85
  %90 = load ptr, ptr %3, align 8, !dbg !2581
  %91 = load i8, ptr %90, align 1, !dbg !2582
  %92 = zext i8 %91 to i32, !dbg !2583
  %93 = icmp sgt i32 %92, 143, !dbg !2584
  br i1 %93, label %94, label %95, !dbg !2585

94:                                               ; preds = %89
  store i64 0, ptr %2, align 8, !dbg !2586
  br label %121, !dbg !2586

95:                                               ; preds = %89, %85
  %96 = load ptr, ptr %3, align 8, !dbg !2587
  %97 = getelementptr inbounds i8, ptr %96, i32 1, !dbg !2587
  store ptr %97, ptr %3, align 8, !dbg !2587
  %98 = load i8, ptr %96, align 1, !dbg !2589
  %99 = zext i8 %98 to i32, !dbg !2590
  %100 = and i32 %99, 192, !dbg !2591
  %101 = icmp ne i32 %100, 128, !dbg !2592
  br i1 %101, label %102, label %103, !dbg !2593

102:                                              ; preds = %95
  store i64 0, ptr %2, align 8, !dbg !2594
  br label %121, !dbg !2594

103:                                              ; preds = %95
  %104 = load ptr, ptr %3, align 8, !dbg !2595
  %105 = getelementptr inbounds i8, ptr %104, i32 1, !dbg !2595
  store ptr %105, ptr %3, align 8, !dbg !2595
  %106 = load i8, ptr %104, align 1, !dbg !2597
  %107 = zext i8 %106 to i32, !dbg !2598
  %108 = and i32 %107, 192, !dbg !2599
  %109 = icmp ne i32 %108, 128, !dbg !2600
  br i1 %109, label %110, label %111, !dbg !2601

110:                                              ; preds = %103
  store i64 0, ptr %2, align 8, !dbg !2602
  br label %121, !dbg !2602

111:                                              ; preds = %103
  %112 = load ptr, ptr %3, align 8, !dbg !2603
  %113 = getelementptr inbounds i8, ptr %112, i32 1, !dbg !2603
  store ptr %113, ptr %3, align 8, !dbg !2603
  %114 = load i8, ptr %112, align 1, !dbg !2605
  %115 = zext i8 %114 to i32, !dbg !2606
  %116 = and i32 %115, 192, !dbg !2607
  %117 = icmp ne i32 %116, 128, !dbg !2608
  br i1 %117, label %118, label %119, !dbg !2609

118:                                              ; preds = %111
  store i64 0, ptr %2, align 8, !dbg !2610
  br label %121, !dbg !2610

119:                                              ; preds = %111
  store i64 4, ptr %2, align 8, !dbg !2611
  br label %121, !dbg !2611

120:                                              ; preds = %71
  store i64 0, ptr %2, align 8, !dbg !2612
  br label %121, !dbg !2612

121:                                              ; preds = %120, %119, %118, %110, %102, %94, %84, %70, %69, %61, %53, %43, %29, %28, %16, %11
  %122 = load i64, ptr %2, align 8, !dbg !2614
  ret i64 %122, !dbg !2614
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_free(ptr noundef %0) #0 !dbg !2615 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2616, metadata !DIExpression()), !dbg !2617
  %3 = load ptr, ptr %2, align 8, !dbg !2618
  %4 = getelementptr inbounds %struct.SB, ptr %3, i32 0, i32 2, !dbg !2619
  %5 = load ptr, ptr %4, align 8, !dbg !2619
  call void @free(ptr noundef %5) #11, !dbg !2620
  ret void, !dbg !2621
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #9

; Function Attrs: nounwind
declare double @strtod(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_puts(ptr noundef %0, ptr noundef %1) #0 !dbg !2622 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2623, metadata !DIExpression()), !dbg !2624
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2625, metadata !DIExpression()), !dbg !2626
  %5 = load ptr, ptr %3, align 8, !dbg !2627
  %6 = load ptr, ptr %4, align 8, !dbg !2628
  %7 = load ptr, ptr %4, align 8, !dbg !2629
  %8 = call i64 @strlen(ptr noundef %7) #14, !dbg !2630
  call void @sb_put(ptr noundef %5, ptr noundef %6, i64 noundef %8), !dbg !2631
  ret void, !dbg !2632
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_number(ptr noundef %0, double noundef %1) #0 !dbg !2633 {
  %3 = alloca ptr, align 8
  %4 = alloca double, align 8
  %5 = alloca [64 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2636, metadata !DIExpression()), !dbg !2637
  store double %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2638, metadata !DIExpression()), !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2640, metadata !DIExpression()), !dbg !2644
  %6 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !2645
  %7 = load double, ptr %4, align 8, !dbg !2646
  %8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.28, double noundef %7) #11, !dbg !2647
  %9 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !2648
  %10 = call zeroext i1 @number_is_valid(ptr noundef %9), !dbg !2650
  br i1 %10, label %11, label %14, !dbg !2651

11:                                               ; preds = %2
  %12 = load ptr, ptr %3, align 8, !dbg !2652
  %13 = getelementptr inbounds [64 x i8], ptr %5, i64 0, i64 0, !dbg !2653
  call void @sb_puts(ptr noundef %12, ptr noundef %13), !dbg !2654
  br label %16, !dbg !2654

14:                                               ; preds = %2
  %15 = load ptr, ptr %3, align 8, !dbg !2655
  call void @sb_puts(ptr noundef %15, ptr noundef @.str.23), !dbg !2656
  br label %16

16:                                               ; preds = %14, %11
  ret void, !dbg !2657
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_array(ptr noundef %0, ptr noundef %1) #0 !dbg !2658 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2659, metadata !DIExpression()), !dbg !2660
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2663, metadata !DIExpression()), !dbg !2664
  br label %6, !dbg !2665

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !dbg !2666
  %8 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !2666
  %9 = load ptr, ptr %8, align 8, !dbg !2666
  %10 = load ptr, ptr %3, align 8, !dbg !2666
  %11 = getelementptr inbounds %struct.SB, ptr %10, i32 0, i32 1, !dbg !2666
  %12 = load ptr, ptr %11, align 8, !dbg !2666
  %13 = icmp uge ptr %9, %12, !dbg !2666
  br i1 %13, label %14, label %16, !dbg !2669

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !dbg !2666
  call void @sb_grow(ptr noundef %15, i64 noundef 1), !dbg !2666
  br label %16, !dbg !2666

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %3, align 8, !dbg !2669
  %18 = getelementptr inbounds %struct.SB, ptr %17, i32 0, i32 0, !dbg !2669
  %19 = load ptr, ptr %18, align 8, !dbg !2669
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !2669
  store ptr %20, ptr %18, align 8, !dbg !2669
  store i8 91, ptr %19, align 1, !dbg !2669
  br label %21, !dbg !2669

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !2670
  %23 = call ptr @json_first_child(ptr noundef %22), !dbg !2670
  store ptr %23, ptr %5, align 8, !dbg !2670
  br label %24, !dbg !2670

24:                                               ; preds = %52, %21
  %25 = load ptr, ptr %5, align 8, !dbg !2672
  %26 = icmp ne ptr %25, null, !dbg !2672
  br i1 %26, label %27, label %56, !dbg !2670

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !dbg !2674
  %29 = load ptr, ptr %5, align 8, !dbg !2676
  call void @emit_value(ptr noundef %28, ptr noundef %29), !dbg !2677
  %30 = load ptr, ptr %5, align 8, !dbg !2678
  %31 = getelementptr inbounds %struct.JsonNode, ptr %30, i32 0, i32 2, !dbg !2680
  %32 = load ptr, ptr %31, align 8, !dbg !2680
  %33 = icmp ne ptr %32, null, !dbg !2681
  br i1 %33, label %34, label %51, !dbg !2682

34:                                               ; preds = %27
  br label %35, !dbg !2683

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 8, !dbg !2684
  %37 = getelementptr inbounds %struct.SB, ptr %36, i32 0, i32 0, !dbg !2684
  %38 = load ptr, ptr %37, align 8, !dbg !2684
  %39 = load ptr, ptr %3, align 8, !dbg !2684
  %40 = getelementptr inbounds %struct.SB, ptr %39, i32 0, i32 1, !dbg !2684
  %41 = load ptr, ptr %40, align 8, !dbg !2684
  %42 = icmp uge ptr %38, %41, !dbg !2684
  br i1 %42, label %43, label %45, !dbg !2687

43:                                               ; preds = %35
  %44 = load ptr, ptr %3, align 8, !dbg !2684
  call void @sb_grow(ptr noundef %44, i64 noundef 1), !dbg !2684
  br label %45, !dbg !2684

45:                                               ; preds = %43, %35
  %46 = load ptr, ptr %3, align 8, !dbg !2687
  %47 = getelementptr inbounds %struct.SB, ptr %46, i32 0, i32 0, !dbg !2687
  %48 = load ptr, ptr %47, align 8, !dbg !2687
  %49 = getelementptr inbounds i8, ptr %48, i32 1, !dbg !2687
  store ptr %49, ptr %47, align 8, !dbg !2687
  store i8 44, ptr %48, align 1, !dbg !2687
  br label %50, !dbg !2687

50:                                               ; preds = %45
  br label %51, !dbg !2687

51:                                               ; preds = %50, %27
  br label %52, !dbg !2688

52:                                               ; preds = %51
  %53 = load ptr, ptr %5, align 8, !dbg !2672
  %54 = getelementptr inbounds %struct.JsonNode, ptr %53, i32 0, i32 2, !dbg !2672
  %55 = load ptr, ptr %54, align 8, !dbg !2672
  store ptr %55, ptr %5, align 8, !dbg !2672
  br label %24, !dbg !2672, !llvm.loop !2689

56:                                               ; preds = %24
  br label %57, !dbg !2691

57:                                               ; preds = %56
  %58 = load ptr, ptr %3, align 8, !dbg !2692
  %59 = getelementptr inbounds %struct.SB, ptr %58, i32 0, i32 0, !dbg !2692
  %60 = load ptr, ptr %59, align 8, !dbg !2692
  %61 = load ptr, ptr %3, align 8, !dbg !2692
  %62 = getelementptr inbounds %struct.SB, ptr %61, i32 0, i32 1, !dbg !2692
  %63 = load ptr, ptr %62, align 8, !dbg !2692
  %64 = icmp uge ptr %60, %63, !dbg !2692
  br i1 %64, label %65, label %67, !dbg !2695

65:                                               ; preds = %57
  %66 = load ptr, ptr %3, align 8, !dbg !2692
  call void @sb_grow(ptr noundef %66, i64 noundef 1), !dbg !2692
  br label %67, !dbg !2692

67:                                               ; preds = %65, %57
  %68 = load ptr, ptr %3, align 8, !dbg !2695
  %69 = getelementptr inbounds %struct.SB, ptr %68, i32 0, i32 0, !dbg !2695
  %70 = load ptr, ptr %69, align 8, !dbg !2695
  %71 = getelementptr inbounds i8, ptr %70, i32 1, !dbg !2695
  store ptr %71, ptr %69, align 8, !dbg !2695
  store i8 93, ptr %70, align 1, !dbg !2695
  br label %72, !dbg !2695

72:                                               ; preds = %67
  ret void, !dbg !2696
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_object(ptr noundef %0, ptr noundef %1) #0 !dbg !2697 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2698, metadata !DIExpression()), !dbg !2699
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2702, metadata !DIExpression()), !dbg !2703
  br label %6, !dbg !2704

6:                                                ; preds = %2
  %7 = load ptr, ptr %3, align 8, !dbg !2705
  %8 = getelementptr inbounds %struct.SB, ptr %7, i32 0, i32 0, !dbg !2705
  %9 = load ptr, ptr %8, align 8, !dbg !2705
  %10 = load ptr, ptr %3, align 8, !dbg !2705
  %11 = getelementptr inbounds %struct.SB, ptr %10, i32 0, i32 1, !dbg !2705
  %12 = load ptr, ptr %11, align 8, !dbg !2705
  %13 = icmp uge ptr %9, %12, !dbg !2705
  br i1 %13, label %14, label %16, !dbg !2708

14:                                               ; preds = %6
  %15 = load ptr, ptr %3, align 8, !dbg !2705
  call void @sb_grow(ptr noundef %15, i64 noundef 1), !dbg !2705
  br label %16, !dbg !2705

16:                                               ; preds = %14, %6
  %17 = load ptr, ptr %3, align 8, !dbg !2708
  %18 = getelementptr inbounds %struct.SB, ptr %17, i32 0, i32 0, !dbg !2708
  %19 = load ptr, ptr %18, align 8, !dbg !2708
  %20 = getelementptr inbounds i8, ptr %19, i32 1, !dbg !2708
  store ptr %20, ptr %18, align 8, !dbg !2708
  store i8 123, ptr %19, align 1, !dbg !2708
  br label %21, !dbg !2708

21:                                               ; preds = %16
  %22 = load ptr, ptr %4, align 8, !dbg !2709
  %23 = call ptr @json_first_child(ptr noundef %22), !dbg !2709
  store ptr %23, ptr %5, align 8, !dbg !2709
  br label %24, !dbg !2709

24:                                               ; preds = %72, %21
  %25 = load ptr, ptr %5, align 8, !dbg !2711
  %26 = icmp ne ptr %25, null, !dbg !2711
  br i1 %26, label %27, label %76, !dbg !2709

27:                                               ; preds = %24
  %28 = load ptr, ptr %3, align 8, !dbg !2713
  %29 = load ptr, ptr %5, align 8, !dbg !2715
  %30 = getelementptr inbounds %struct.JsonNode, ptr %29, i32 0, i32 3, !dbg !2716
  %31 = load ptr, ptr %30, align 8, !dbg !2716
  call void @emit_string(ptr noundef %28, ptr noundef %31), !dbg !2717
  br label %32, !dbg !2718

32:                                               ; preds = %27
  %33 = load ptr, ptr %3, align 8, !dbg !2719
  %34 = getelementptr inbounds %struct.SB, ptr %33, i32 0, i32 0, !dbg !2719
  %35 = load ptr, ptr %34, align 8, !dbg !2719
  %36 = load ptr, ptr %3, align 8, !dbg !2719
  %37 = getelementptr inbounds %struct.SB, ptr %36, i32 0, i32 1, !dbg !2719
  %38 = load ptr, ptr %37, align 8, !dbg !2719
  %39 = icmp uge ptr %35, %38, !dbg !2719
  br i1 %39, label %40, label %42, !dbg !2722

40:                                               ; preds = %32
  %41 = load ptr, ptr %3, align 8, !dbg !2719
  call void @sb_grow(ptr noundef %41, i64 noundef 1), !dbg !2719
  br label %42, !dbg !2719

42:                                               ; preds = %40, %32
  %43 = load ptr, ptr %3, align 8, !dbg !2722
  %44 = getelementptr inbounds %struct.SB, ptr %43, i32 0, i32 0, !dbg !2722
  %45 = load ptr, ptr %44, align 8, !dbg !2722
  %46 = getelementptr inbounds i8, ptr %45, i32 1, !dbg !2722
  store ptr %46, ptr %44, align 8, !dbg !2722
  store i8 58, ptr %45, align 1, !dbg !2722
  br label %47, !dbg !2722

47:                                               ; preds = %42
  %48 = load ptr, ptr %3, align 8, !dbg !2723
  %49 = load ptr, ptr %5, align 8, !dbg !2724
  call void @emit_value(ptr noundef %48, ptr noundef %49), !dbg !2725
  %50 = load ptr, ptr %5, align 8, !dbg !2726
  %51 = getelementptr inbounds %struct.JsonNode, ptr %50, i32 0, i32 2, !dbg !2728
  %52 = load ptr, ptr %51, align 8, !dbg !2728
  %53 = icmp ne ptr %52, null, !dbg !2729
  br i1 %53, label %54, label %71, !dbg !2730

54:                                               ; preds = %47
  br label %55, !dbg !2731

55:                                               ; preds = %54
  %56 = load ptr, ptr %3, align 8, !dbg !2732
  %57 = getelementptr inbounds %struct.SB, ptr %56, i32 0, i32 0, !dbg !2732
  %58 = load ptr, ptr %57, align 8, !dbg !2732
  %59 = load ptr, ptr %3, align 8, !dbg !2732
  %60 = getelementptr inbounds %struct.SB, ptr %59, i32 0, i32 1, !dbg !2732
  %61 = load ptr, ptr %60, align 8, !dbg !2732
  %62 = icmp uge ptr %58, %61, !dbg !2732
  br i1 %62, label %63, label %65, !dbg !2735

63:                                               ; preds = %55
  %64 = load ptr, ptr %3, align 8, !dbg !2732
  call void @sb_grow(ptr noundef %64, i64 noundef 1), !dbg !2732
  br label %65, !dbg !2732

65:                                               ; preds = %63, %55
  %66 = load ptr, ptr %3, align 8, !dbg !2735
  %67 = getelementptr inbounds %struct.SB, ptr %66, i32 0, i32 0, !dbg !2735
  %68 = load ptr, ptr %67, align 8, !dbg !2735
  %69 = getelementptr inbounds i8, ptr %68, i32 1, !dbg !2735
  store ptr %69, ptr %67, align 8, !dbg !2735
  store i8 44, ptr %68, align 1, !dbg !2735
  br label %70, !dbg !2735

70:                                               ; preds = %65
  br label %71, !dbg !2735

71:                                               ; preds = %70, %47
  br label %72, !dbg !2736

72:                                               ; preds = %71
  %73 = load ptr, ptr %5, align 8, !dbg !2711
  %74 = getelementptr inbounds %struct.JsonNode, ptr %73, i32 0, i32 2, !dbg !2711
  %75 = load ptr, ptr %74, align 8, !dbg !2711
  store ptr %75, ptr %5, align 8, !dbg !2711
  br label %24, !dbg !2711, !llvm.loop !2737

76:                                               ; preds = %24
  br label %77, !dbg !2739

77:                                               ; preds = %76
  %78 = load ptr, ptr %3, align 8, !dbg !2740
  %79 = getelementptr inbounds %struct.SB, ptr %78, i32 0, i32 0, !dbg !2740
  %80 = load ptr, ptr %79, align 8, !dbg !2740
  %81 = load ptr, ptr %3, align 8, !dbg !2740
  %82 = getelementptr inbounds %struct.SB, ptr %81, i32 0, i32 1, !dbg !2740
  %83 = load ptr, ptr %82, align 8, !dbg !2740
  %84 = icmp uge ptr %80, %83, !dbg !2740
  br i1 %84, label %85, label %87, !dbg !2743

85:                                               ; preds = %77
  %86 = load ptr, ptr %3, align 8, !dbg !2740
  call void @sb_grow(ptr noundef %86, i64 noundef 1), !dbg !2740
  br label %87, !dbg !2740

87:                                               ; preds = %85, %77
  %88 = load ptr, ptr %3, align 8, !dbg !2743
  %89 = getelementptr inbounds %struct.SB, ptr %88, i32 0, i32 0, !dbg !2743
  %90 = load ptr, ptr %89, align 8, !dbg !2743
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !2743
  store ptr %91, ptr %89, align 8, !dbg !2743
  store i8 125, ptr %90, align 1, !dbg !2743
  br label %92, !dbg !2743

92:                                               ; preds = %87
  ret void, !dbg !2744
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sb_put(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !2745 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2748, metadata !DIExpression()), !dbg !2749
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2750, metadata !DIExpression()), !dbg !2751
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2752, metadata !DIExpression()), !dbg !2753
  br label %7, !dbg !2754

7:                                                ; preds = %3
  %8 = load ptr, ptr %4, align 8, !dbg !2755
  %9 = getelementptr inbounds %struct.SB, ptr %8, i32 0, i32 1, !dbg !2755
  %10 = load ptr, ptr %9, align 8, !dbg !2755
  %11 = load ptr, ptr %4, align 8, !dbg !2755
  %12 = getelementptr inbounds %struct.SB, ptr %11, i32 0, i32 0, !dbg !2755
  %13 = load ptr, ptr %12, align 8, !dbg !2755
  %14 = ptrtoint ptr %10 to i64, !dbg !2755
  %15 = ptrtoint ptr %13 to i64, !dbg !2755
  %16 = sub i64 %14, %15, !dbg !2755
  %17 = load i64, ptr %6, align 8, !dbg !2755
  %18 = icmp ult i64 %16, %17, !dbg !2755
  br i1 %18, label %19, label %22, !dbg !2758

19:                                               ; preds = %7
  %20 = load ptr, ptr %4, align 8, !dbg !2755
  %21 = load i64, ptr %6, align 8, !dbg !2755
  call void @sb_grow(ptr noundef %20, i64 noundef %21), !dbg !2755
  br label %22, !dbg !2755

22:                                               ; preds = %19, %7
  br label %23, !dbg !2758

23:                                               ; preds = %22
  %24 = load ptr, ptr %4, align 8, !dbg !2759
  %25 = getelementptr inbounds %struct.SB, ptr %24, i32 0, i32 0, !dbg !2760
  %26 = load ptr, ptr %25, align 8, !dbg !2760
  %27 = load ptr, ptr %5, align 8, !dbg !2761
  %28 = load i64, ptr %6, align 8, !dbg !2762
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 1 %27, i64 %28, i1 false), !dbg !2763
  %29 = load i64, ptr %6, align 8, !dbg !2764
  %30 = load ptr, ptr %4, align 8, !dbg !2765
  %31 = getelementptr inbounds %struct.SB, ptr %30, i32 0, i32 0, !dbg !2766
  %32 = load ptr, ptr %31, align 8, !dbg !2767
  %33 = getelementptr inbounds i8, ptr %32, i64 %29, !dbg !2767
  store ptr %33, ptr %31, align 8, !dbg !2767
  ret void, !dbg !2768
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @number_is_valid(ptr noundef %0) #0 !dbg !2769 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2770, metadata !DIExpression()), !dbg !2771
  %3 = call zeroext i1 @parse_number(ptr noundef %2, ptr noundef null), !dbg !2772
  br i1 %3, label %4, label %9, !dbg !2773

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !dbg !2774
  %6 = load i8, ptr %5, align 1, !dbg !2775
  %7 = sext i8 %6 to i32, !dbg !2775
  %8 = icmp eq i32 %7, 0, !dbg !2776
  br label %9

9:                                                ; preds = %4, %1
  %10 = phi i1 [ false, %1 ], [ %8, %4 ], !dbg !2777
  ret i1 %10, !dbg !2778
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_array_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2779 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2780, metadata !DIExpression()), !dbg !2781
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2782, metadata !DIExpression()), !dbg !2783
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2786, metadata !DIExpression()), !dbg !2787
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2788, metadata !DIExpression()), !dbg !2789
  %11 = load ptr, ptr %6, align 8, !dbg !2790
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 5, !dbg !2791
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 0, !dbg !2792
  %14 = load ptr, ptr %13, align 8, !dbg !2792
  store ptr %14, ptr %9, align 8, !dbg !2789
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2793, metadata !DIExpression()), !dbg !2794
  %15 = load ptr, ptr %9, align 8, !dbg !2795
  %16 = icmp eq ptr %15, null, !dbg !2797
  br i1 %16, label %17, label %19, !dbg !2798

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !dbg !2799
  call void @sb_puts(ptr noundef %18, ptr noundef @.str.29), !dbg !2801
  br label %77, !dbg !2802

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !dbg !2803
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.30), !dbg !2804
  br label %21, !dbg !2805

21:                                               ; preds = %36, %19
  %22 = load ptr, ptr %9, align 8, !dbg !2806
  %23 = icmp ne ptr %22, null, !dbg !2807
  br i1 %23, label %24, label %50, !dbg !2805

24:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !2808
  br label %25, !dbg !2811

25:                                               ; preds = %33, %24
  %26 = load i32, ptr %10, align 4, !dbg !2812
  %27 = load i32, ptr %8, align 4, !dbg !2814
  %28 = add nsw i32 %27, 1, !dbg !2815
  %29 = icmp slt i32 %26, %28, !dbg !2816
  br i1 %29, label %30, label %36, !dbg !2817

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !dbg !2818
  %32 = load ptr, ptr %7, align 8, !dbg !2819
  call void @sb_puts(ptr noundef %31, ptr noundef %32), !dbg !2820
  br label %33, !dbg !2820

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4, !dbg !2821
  %35 = add nsw i32 %34, 1, !dbg !2821
  store i32 %35, ptr %10, align 4, !dbg !2821
  br label %25, !dbg !2822, !llvm.loop !2823

36:                                               ; preds = %25
  %37 = load ptr, ptr %5, align 8, !dbg !2825
  %38 = load ptr, ptr %9, align 8, !dbg !2826
  %39 = load ptr, ptr %7, align 8, !dbg !2827
  %40 = load i32, ptr %8, align 4, !dbg !2828
  %41 = add nsw i32 %40, 1, !dbg !2829
  call void @emit_value_indented(ptr noundef %37, ptr noundef %38, ptr noundef %39, i32 noundef %41), !dbg !2830
  %42 = load ptr, ptr %9, align 8, !dbg !2831
  %43 = getelementptr inbounds %struct.JsonNode, ptr %42, i32 0, i32 2, !dbg !2832
  %44 = load ptr, ptr %43, align 8, !dbg !2832
  store ptr %44, ptr %9, align 8, !dbg !2833
  %45 = load ptr, ptr %5, align 8, !dbg !2834
  %46 = load ptr, ptr %9, align 8, !dbg !2835
  %47 = icmp ne ptr %46, null, !dbg !2836
  %48 = zext i1 %47 to i64, !dbg !2835
  %49 = select i1 %47, ptr @.str.31, ptr @.str.32, !dbg !2835
  call void @sb_puts(ptr noundef %45, ptr noundef %49), !dbg !2837
  br label %21, !dbg !2805, !llvm.loop !2838

50:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !2840
  br label %51, !dbg !2842

51:                                               ; preds = %58, %50
  %52 = load i32, ptr %10, align 4, !dbg !2843
  %53 = load i32, ptr %8, align 4, !dbg !2845
  %54 = icmp slt i32 %52, %53, !dbg !2846
  br i1 %54, label %55, label %61, !dbg !2847

55:                                               ; preds = %51
  %56 = load ptr, ptr %5, align 8, !dbg !2848
  %57 = load ptr, ptr %7, align 8, !dbg !2849
  call void @sb_puts(ptr noundef %56, ptr noundef %57), !dbg !2850
  br label %58, !dbg !2850

58:                                               ; preds = %55
  %59 = load i32, ptr %10, align 4, !dbg !2851
  %60 = add nsw i32 %59, 1, !dbg !2851
  store i32 %60, ptr %10, align 4, !dbg !2851
  br label %51, !dbg !2852, !llvm.loop !2853

61:                                               ; preds = %51
  br label %62, !dbg !2855

62:                                               ; preds = %61
  %63 = load ptr, ptr %5, align 8, !dbg !2856
  %64 = getelementptr inbounds %struct.SB, ptr %63, i32 0, i32 0, !dbg !2856
  %65 = load ptr, ptr %64, align 8, !dbg !2856
  %66 = load ptr, ptr %5, align 8, !dbg !2856
  %67 = getelementptr inbounds %struct.SB, ptr %66, i32 0, i32 1, !dbg !2856
  %68 = load ptr, ptr %67, align 8, !dbg !2856
  %69 = icmp uge ptr %65, %68, !dbg !2856
  br i1 %69, label %70, label %72, !dbg !2859

70:                                               ; preds = %62
  %71 = load ptr, ptr %5, align 8, !dbg !2856
  call void @sb_grow(ptr noundef %71, i64 noundef 1), !dbg !2856
  br label %72, !dbg !2856

72:                                               ; preds = %70, %62
  %73 = load ptr, ptr %5, align 8, !dbg !2859
  %74 = getelementptr inbounds %struct.SB, ptr %73, i32 0, i32 0, !dbg !2859
  %75 = load ptr, ptr %74, align 8, !dbg !2859
  %76 = getelementptr inbounds i8, ptr %75, i32 1, !dbg !2859
  store ptr %76, ptr %74, align 8, !dbg !2859
  store i8 93, ptr %75, align 1, !dbg !2859
  br label %77, !dbg !2859

77:                                               ; preds = %17, %72
  ret void, !dbg !2860
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_object_indented(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !2861 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2862, metadata !DIExpression()), !dbg !2863
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2864, metadata !DIExpression()), !dbg !2865
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2866, metadata !DIExpression()), !dbg !2867
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2868, metadata !DIExpression()), !dbg !2869
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2870, metadata !DIExpression()), !dbg !2871
  %11 = load ptr, ptr %6, align 8, !dbg !2872
  %12 = getelementptr inbounds %struct.JsonNode, ptr %11, i32 0, i32 5, !dbg !2873
  %13 = getelementptr inbounds %struct.anon, ptr %12, i32 0, i32 0, !dbg !2874
  %14 = load ptr, ptr %13, align 8, !dbg !2874
  store ptr %14, ptr %9, align 8, !dbg !2871
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2875, metadata !DIExpression()), !dbg !2876
  %15 = load ptr, ptr %9, align 8, !dbg !2877
  %16 = icmp eq ptr %15, null, !dbg !2879
  br i1 %16, label %17, label %19, !dbg !2880

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8, !dbg !2881
  call void @sb_puts(ptr noundef %18, ptr noundef @.str.33), !dbg !2883
  br label %82, !dbg !2884

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !dbg !2885
  call void @sb_puts(ptr noundef %20, ptr noundef @.str.34), !dbg !2886
  br label %21, !dbg !2887

21:                                               ; preds = %36, %19
  %22 = load ptr, ptr %9, align 8, !dbg !2888
  %23 = icmp ne ptr %22, null, !dbg !2889
  br i1 %23, label %24, label %55, !dbg !2887

24:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !2890
  br label %25, !dbg !2893

25:                                               ; preds = %33, %24
  %26 = load i32, ptr %10, align 4, !dbg !2894
  %27 = load i32, ptr %8, align 4, !dbg !2896
  %28 = add nsw i32 %27, 1, !dbg !2897
  %29 = icmp slt i32 %26, %28, !dbg !2898
  br i1 %29, label %30, label %36, !dbg !2899

30:                                               ; preds = %25
  %31 = load ptr, ptr %5, align 8, !dbg !2900
  %32 = load ptr, ptr %7, align 8, !dbg !2901
  call void @sb_puts(ptr noundef %31, ptr noundef %32), !dbg !2902
  br label %33, !dbg !2902

33:                                               ; preds = %30
  %34 = load i32, ptr %10, align 4, !dbg !2903
  %35 = add nsw i32 %34, 1, !dbg !2903
  store i32 %35, ptr %10, align 4, !dbg !2903
  br label %25, !dbg !2904, !llvm.loop !2905

36:                                               ; preds = %25
  %37 = load ptr, ptr %5, align 8, !dbg !2907
  %38 = load ptr, ptr %9, align 8, !dbg !2908
  %39 = getelementptr inbounds %struct.JsonNode, ptr %38, i32 0, i32 3, !dbg !2909
  %40 = load ptr, ptr %39, align 8, !dbg !2909
  call void @emit_string(ptr noundef %37, ptr noundef %40), !dbg !2910
  %41 = load ptr, ptr %5, align 8, !dbg !2911
  call void @sb_puts(ptr noundef %41, ptr noundef @.str.35), !dbg !2912
  %42 = load ptr, ptr %5, align 8, !dbg !2913
  %43 = load ptr, ptr %9, align 8, !dbg !2914
  %44 = load ptr, ptr %7, align 8, !dbg !2915
  %45 = load i32, ptr %8, align 4, !dbg !2916
  %46 = add nsw i32 %45, 1, !dbg !2917
  call void @emit_value_indented(ptr noundef %42, ptr noundef %43, ptr noundef %44, i32 noundef %46), !dbg !2918
  %47 = load ptr, ptr %9, align 8, !dbg !2919
  %48 = getelementptr inbounds %struct.JsonNode, ptr %47, i32 0, i32 2, !dbg !2920
  %49 = load ptr, ptr %48, align 8, !dbg !2920
  store ptr %49, ptr %9, align 8, !dbg !2921
  %50 = load ptr, ptr %5, align 8, !dbg !2922
  %51 = load ptr, ptr %9, align 8, !dbg !2923
  %52 = icmp ne ptr %51, null, !dbg !2924
  %53 = zext i1 %52 to i64, !dbg !2923
  %54 = select i1 %52, ptr @.str.31, ptr @.str.32, !dbg !2923
  call void @sb_puts(ptr noundef %50, ptr noundef %54), !dbg !2925
  br label %21, !dbg !2887, !llvm.loop !2926

55:                                               ; preds = %21
  store i32 0, ptr %10, align 4, !dbg !2928
  br label %56, !dbg !2930

56:                                               ; preds = %63, %55
  %57 = load i32, ptr %10, align 4, !dbg !2931
  %58 = load i32, ptr %8, align 4, !dbg !2933
  %59 = icmp slt i32 %57, %58, !dbg !2934
  br i1 %59, label %60, label %66, !dbg !2935

60:                                               ; preds = %56
  %61 = load ptr, ptr %5, align 8, !dbg !2936
  %62 = load ptr, ptr %7, align 8, !dbg !2937
  call void @sb_puts(ptr noundef %61, ptr noundef %62), !dbg !2938
  br label %63, !dbg !2938

63:                                               ; preds = %60
  %64 = load i32, ptr %10, align 4, !dbg !2939
  %65 = add nsw i32 %64, 1, !dbg !2939
  store i32 %65, ptr %10, align 4, !dbg !2939
  br label %56, !dbg !2940, !llvm.loop !2941

66:                                               ; preds = %56
  br label %67, !dbg !2943

67:                                               ; preds = %66
  %68 = load ptr, ptr %5, align 8, !dbg !2944
  %69 = getelementptr inbounds %struct.SB, ptr %68, i32 0, i32 0, !dbg !2944
  %70 = load ptr, ptr %69, align 8, !dbg !2944
  %71 = load ptr, ptr %5, align 8, !dbg !2944
  %72 = getelementptr inbounds %struct.SB, ptr %71, i32 0, i32 1, !dbg !2944
  %73 = load ptr, ptr %72, align 8, !dbg !2944
  %74 = icmp uge ptr %70, %73, !dbg !2944
  br i1 %74, label %75, label %77, !dbg !2947

75:                                               ; preds = %67
  %76 = load ptr, ptr %5, align 8, !dbg !2944
  call void @sb_grow(ptr noundef %76, i64 noundef 1), !dbg !2944
  br label %77, !dbg !2944

77:                                               ; preds = %75, %67
  %78 = load ptr, ptr %5, align 8, !dbg !2947
  %79 = getelementptr inbounds %struct.SB, ptr %78, i32 0, i32 0, !dbg !2947
  %80 = load ptr, ptr %79, align 8, !dbg !2947
  %81 = getelementptr inbounds i8, ptr %80, i32 1, !dbg !2947
  store ptr %81, ptr %79, align 8, !dbg !2947
  store i8 125, ptr %80, align 1, !dbg !2947
  br label %82, !dbg !2947

82:                                               ; preds = %17, %77
  ret void, !dbg !2948
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @utf8_read_char(ptr noundef %0, ptr noundef %1) #0 !dbg !2949 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2952, metadata !DIExpression()), !dbg !2953
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2954, metadata !DIExpression()), !dbg !2955
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2956, metadata !DIExpression()), !dbg !2957
  %7 = load ptr, ptr %4, align 8, !dbg !2958
  store ptr %7, ptr %6, align 8, !dbg !2957
  %8 = load ptr, ptr %4, align 8, !dbg !2959
  %9 = call i64 @utf8_validate_cz(ptr noundef %8), !dbg !2959
  %10 = icmp ne i64 %9, 0, !dbg !2959
  br i1 %10, label %11, label %12, !dbg !2962

11:                                               ; preds = %2
  br label %13, !dbg !2962

12:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.38, ptr noundef @.str.1, i32 noundef 228, ptr noundef @__PRETTY_FUNCTION__.utf8_read_char) #13, !dbg !2959
  unreachable, !dbg !2959

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !2963
  %15 = getelementptr inbounds i8, ptr %14, i64 0, !dbg !2963
  %16 = load i8, ptr %15, align 1, !dbg !2963
  %17 = zext i8 %16 to i32, !dbg !2963
  %18 = icmp sle i32 %17, 127, !dbg !2965
  br i1 %18, label %19, label %25, !dbg !2966

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !dbg !2967
  %21 = getelementptr inbounds i8, ptr %20, i64 0, !dbg !2967
  %22 = load i8, ptr %21, align 1, !dbg !2967
  %23 = zext i8 %22 to i32, !dbg !2967
  %24 = load ptr, ptr %5, align 8, !dbg !2969
  store i32 %23, ptr %24, align 4, !dbg !2970
  store i32 1, ptr %3, align 4, !dbg !2971
  br label %100, !dbg !2971

25:                                               ; preds = %13
  %26 = load ptr, ptr %6, align 8, !dbg !2972
  %27 = getelementptr inbounds i8, ptr %26, i64 0, !dbg !2972
  %28 = load i8, ptr %27, align 1, !dbg !2972
  %29 = zext i8 %28 to i32, !dbg !2972
  %30 = icmp sle i32 %29, 223, !dbg !2974
  br i1 %30, label %31, label %45, !dbg !2975

31:                                               ; preds = %25
  %32 = load ptr, ptr %6, align 8, !dbg !2976
  %33 = getelementptr inbounds i8, ptr %32, i64 0, !dbg !2976
  %34 = load i8, ptr %33, align 1, !dbg !2976
  %35 = zext i8 %34 to i32, !dbg !2978
  %36 = and i32 %35, 31, !dbg !2979
  %37 = shl i32 %36, 6, !dbg !2980
  %38 = load ptr, ptr %6, align 8, !dbg !2981
  %39 = getelementptr inbounds i8, ptr %38, i64 1, !dbg !2981
  %40 = load i8, ptr %39, align 1, !dbg !2981
  %41 = zext i8 %40 to i32, !dbg !2982
  %42 = and i32 %41, 63, !dbg !2983
  %43 = or i32 %37, %42, !dbg !2984
  %44 = load ptr, ptr %5, align 8, !dbg !2985
  store i32 %43, ptr %44, align 4, !dbg !2986
  store i32 2, ptr %3, align 4, !dbg !2987
  br label %100, !dbg !2987

45:                                               ; preds = %25
  %46 = load ptr, ptr %6, align 8, !dbg !2988
  %47 = getelementptr inbounds i8, ptr %46, i64 0, !dbg !2988
  %48 = load i8, ptr %47, align 1, !dbg !2988
  %49 = zext i8 %48 to i32, !dbg !2988
  %50 = icmp sle i32 %49, 239, !dbg !2990
  br i1 %50, label %51, label %72, !dbg !2991

51:                                               ; preds = %45
  %52 = load ptr, ptr %6, align 8, !dbg !2992
  %53 = getelementptr inbounds i8, ptr %52, i64 0, !dbg !2992
  %54 = load i8, ptr %53, align 1, !dbg !2992
  %55 = zext i8 %54 to i32, !dbg !2994
  %56 = and i32 %55, 15, !dbg !2995
  %57 = shl i32 %56, 12, !dbg !2996
  %58 = load ptr, ptr %6, align 8, !dbg !2997
  %59 = getelementptr inbounds i8, ptr %58, i64 1, !dbg !2997
  %60 = load i8, ptr %59, align 1, !dbg !2997
  %61 = zext i8 %60 to i32, !dbg !2998
  %62 = and i32 %61, 63, !dbg !2999
  %63 = shl i32 %62, 6, !dbg !3000
  %64 = or i32 %57, %63, !dbg !3001
  %65 = load ptr, ptr %6, align 8, !dbg !3002
  %66 = getelementptr inbounds i8, ptr %65, i64 2, !dbg !3002
  %67 = load i8, ptr %66, align 1, !dbg !3002
  %68 = zext i8 %67 to i32, !dbg !3003
  %69 = and i32 %68, 63, !dbg !3004
  %70 = or i32 %64, %69, !dbg !3005
  %71 = load ptr, ptr %5, align 8, !dbg !3006
  store i32 %70, ptr %71, align 4, !dbg !3007
  store i32 3, ptr %3, align 4, !dbg !3008
  br label %100, !dbg !3008

72:                                               ; preds = %45
  %73 = load ptr, ptr %6, align 8, !dbg !3009
  %74 = getelementptr inbounds i8, ptr %73, i64 0, !dbg !3009
  %75 = load i8, ptr %74, align 1, !dbg !3009
  %76 = zext i8 %75 to i32, !dbg !3011
  %77 = and i32 %76, 7, !dbg !3012
  %78 = shl i32 %77, 18, !dbg !3013
  %79 = load ptr, ptr %6, align 8, !dbg !3014
  %80 = getelementptr inbounds i8, ptr %79, i64 1, !dbg !3014
  %81 = load i8, ptr %80, align 1, !dbg !3014
  %82 = zext i8 %81 to i32, !dbg !3015
  %83 = and i32 %82, 63, !dbg !3016
  %84 = shl i32 %83, 12, !dbg !3017
  %85 = or i32 %78, %84, !dbg !3018
  %86 = load ptr, ptr %6, align 8, !dbg !3019
  %87 = getelementptr inbounds i8, ptr %86, i64 2, !dbg !3019
  %88 = load i8, ptr %87, align 1, !dbg !3019
  %89 = zext i8 %88 to i32, !dbg !3020
  %90 = and i32 %89, 63, !dbg !3021
  %91 = shl i32 %90, 6, !dbg !3022
  %92 = or i32 %85, %91, !dbg !3023
  %93 = load ptr, ptr %6, align 8, !dbg !3024
  %94 = getelementptr inbounds i8, ptr %93, i64 3, !dbg !3024
  %95 = load i8, ptr %94, align 1, !dbg !3024
  %96 = zext i8 %95 to i32, !dbg !3025
  %97 = and i32 %96, 63, !dbg !3026
  %98 = or i32 %92, %97, !dbg !3027
  %99 = load ptr, ptr %5, align 8, !dbg !3028
  store i32 %98, ptr %99, align 4, !dbg !3029
  store i32 4, ptr %3, align 4, !dbg !3030
  br label %100, !dbg !3030

100:                                              ; preds = %72, %51, %31, %19
  %101 = load i32, ptr %3, align 4, !dbg !3031
  ret i32 %101, !dbg !3031
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_hex16(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !3032 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3035, metadata !DIExpression()), !dbg !3036
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3037, metadata !DIExpression()), !dbg !3038
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3039, metadata !DIExpression()), !dbg !3040
  store ptr @.str.39, ptr %5, align 8, !dbg !3040
  %6 = load ptr, ptr %5, align 8, !dbg !3041
  %7 = load i16, ptr %4, align 2, !dbg !3042
  %8 = zext i16 %7 to i32, !dbg !3042
  %9 = ashr i32 %8, 12, !dbg !3043
  %10 = and i32 %9, 15, !dbg !3044
  %11 = sext i32 %10 to i64, !dbg !3041
  %12 = getelementptr inbounds i8, ptr %6, i64 %11, !dbg !3041
  %13 = load i8, ptr %12, align 1, !dbg !3041
  %14 = load ptr, ptr %3, align 8, !dbg !3045
  %15 = getelementptr inbounds i8, ptr %14, i32 1, !dbg !3045
  store ptr %15, ptr %3, align 8, !dbg !3045
  store i8 %13, ptr %14, align 1, !dbg !3046
  %16 = load ptr, ptr %5, align 8, !dbg !3047
  %17 = load i16, ptr %4, align 2, !dbg !3048
  %18 = zext i16 %17 to i32, !dbg !3048
  %19 = ashr i32 %18, 8, !dbg !3049
  %20 = and i32 %19, 15, !dbg !3050
  %21 = sext i32 %20 to i64, !dbg !3047
  %22 = getelementptr inbounds i8, ptr %16, i64 %21, !dbg !3047
  %23 = load i8, ptr %22, align 1, !dbg !3047
  %24 = load ptr, ptr %3, align 8, !dbg !3051
  %25 = getelementptr inbounds i8, ptr %24, i32 1, !dbg !3051
  store ptr %25, ptr %3, align 8, !dbg !3051
  store i8 %23, ptr %24, align 1, !dbg !3052
  %26 = load ptr, ptr %5, align 8, !dbg !3053
  %27 = load i16, ptr %4, align 2, !dbg !3054
  %28 = zext i16 %27 to i32, !dbg !3054
  %29 = ashr i32 %28, 4, !dbg !3055
  %30 = and i32 %29, 15, !dbg !3056
  %31 = sext i32 %30 to i64, !dbg !3053
  %32 = getelementptr inbounds i8, ptr %26, i64 %31, !dbg !3053
  %33 = load i8, ptr %32, align 1, !dbg !3053
  %34 = load ptr, ptr %3, align 8, !dbg !3057
  %35 = getelementptr inbounds i8, ptr %34, i32 1, !dbg !3057
  store ptr %35, ptr %3, align 8, !dbg !3057
  store i8 %33, ptr %34, align 1, !dbg !3058
  %36 = load ptr, ptr %5, align 8, !dbg !3059
  %37 = load i16, ptr %4, align 2, !dbg !3060
  %38 = zext i16 %37 to i32, !dbg !3060
  %39 = and i32 %38, 15, !dbg !3061
  %40 = sext i32 %39 to i64, !dbg !3059
  %41 = getelementptr inbounds i8, ptr %36, i64 %40, !dbg !3059
  %42 = load i8, ptr %41, align 1, !dbg !3059
  %43 = load ptr, ptr %3, align 8, !dbg !3062
  %44 = getelementptr inbounds i8, ptr %43, i32 1, !dbg !3062
  store ptr %44, ptr %3, align 8, !dbg !3062
  store i8 %42, ptr %43, align 1, !dbg !3063
  ret i32 4, !dbg !3064
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @to_surrogate_pair(i32 noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !3065 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3068, metadata !DIExpression()), !dbg !3069
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3070, metadata !DIExpression()), !dbg !3071
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3072, metadata !DIExpression()), !dbg !3073
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3074, metadata !DIExpression()), !dbg !3075
  %8 = load i32, ptr %4, align 4, !dbg !3076
  %9 = icmp uge i32 %8, 65536, !dbg !3076
  br i1 %9, label %10, label %14, !dbg !3076

10:                                               ; preds = %3
  %11 = load i32, ptr %4, align 4, !dbg !3076
  %12 = icmp ule i32 %11, 1114111, !dbg !3076
  br i1 %12, label %13, label %14, !dbg !3079

13:                                               ; preds = %10
  br label %15, !dbg !3079

14:                                               ; preds = %10, %3
  call void @__assert_fail(ptr noundef @.str.40, ptr noundef @.str.1, i32 noundef 319, ptr noundef @__PRETTY_FUNCTION__.to_surrogate_pair) #13, !dbg !3076
  unreachable, !dbg !3076

15:                                               ; preds = %13
  %16 = load i32, ptr %4, align 4, !dbg !3080
  %17 = sub i32 %16, 65536, !dbg !3081
  store i32 %17, ptr %7, align 4, !dbg !3082
  %18 = load i32, ptr %7, align 4, !dbg !3083
  %19 = lshr i32 %18, 10, !dbg !3084
  %20 = and i32 %19, 1023, !dbg !3085
  %21 = or i32 %20, 55296, !dbg !3086
  %22 = trunc i32 %21 to i16, !dbg !3087
  %23 = load ptr, ptr %5, align 8, !dbg !3088
  store i16 %22, ptr %23, align 2, !dbg !3089
  %24 = load i32, ptr %7, align 4, !dbg !3090
  %25 = and i32 %24, 1023, !dbg !3091
  %26 = or i32 %25, 56320, !dbg !3092
  %27 = trunc i32 %26 to i16, !dbg !3093
  %28 = load ptr, ptr %6, align 8, !dbg !3094
  store i16 %27, ptr %28, align 2, !dbg !3095
  ret void, !dbg !3096
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #9 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { noreturn nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0,1) }
attributes #16 = { nounwind allocsize(1) }

!llvm.dbg.cu = !{!213}
!llvm.module.flags = !{!269, !270, !271, !272, !273, !274, !275}
!llvm.ident = !{!276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "techempower/json.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "d64628e550f4ff405dab1a8e75d14b8c")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 25)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 581, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 392, elements: !16)
!15 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!16 = !{!17}
!17 = !DISubrange(count: 49)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 582, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 24)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 589, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 400, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 50)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 27)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 597, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 496, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 62)
!38 = !DIGlobalVariableExpression(var: !39, expr: !DIExpression())
!39 = distinct !DIGlobalVariable(scope: null, file: !2, line: 598, type: !40, isLocal: true, isDefinition: true)
!40 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !41)
!41 = !{!42}
!42 = !DISubrange(count: 22)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 605, type: !45, isLocal: true, isDefinition: true)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 504, elements: !46)
!46 = !{!47}
!47 = !DISubrange(count: 63)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1325, type: !30, isLocal: true, isDefinition: true)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1328, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 20)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1332, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 42)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1335, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 16)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1337, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 31)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1344, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 30)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1346, type: !72, isLocal: true, isDefinition: true)
!77 = !DIGlobalVariableExpression(var: !78, expr: !DIExpression())
!78 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1352, type: !79, isLocal: true, isDefinition: true)
!79 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !80)
!80 = !{!81}
!81 = !DISubrange(count: 39)
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1356, type: !40, isLocal: true, isDefinition: true)
!84 = !DIGlobalVariableExpression(var: !85, expr: !DIExpression())
!85 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1358, type: !86, isLocal: true, isDefinition: true)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: 29)
!89 = !DIGlobalVariableExpression(var: !90, expr: !DIExpression())
!90 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1360, type: !91, isLocal: true, isDefinition: true)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 28)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1363, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 36)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1365, type: !101, isLocal: true, isDefinition: true)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 41)
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1368, type: !106, isLocal: true, isDefinition: true)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 32)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1370, type: !91, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1377, type: !113, isLocal: true, isDefinition: true)
!113 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 632, elements: !114)
!114 = !{!115}
!115 = !DISubrange(count: 79)
!116 = !DIGlobalVariableExpression(var: !117, expr: !DIExpression())
!117 = distinct !DIGlobalVariable(scope: null, file: !2, line: 50, type: !62, isLocal: true, isDefinition: true)
!118 = !DIGlobalVariableExpression(var: !119, expr: !DIExpression())
!119 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !120, isLocal: true, isDefinition: true)
!120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !121)
!121 = !{!122}
!122 = !DISubrange(count: 75)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !41)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 312, elements: !80)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(scope: null, file: !2, line: 640, type: !131, isLocal: true, isDefinition: true)
!131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !132)
!132 = !{!133}
!133 = !DISubrange(count: 5)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !2, line: 649, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 6)
!139 = !DIGlobalVariableExpression(var: !140, expr: !DIExpression())
!140 = distinct !DIGlobalVariable(scope: null, file: !2, line: 658, type: !131, isLocal: true, isDefinition: true)
!141 = !DIGlobalVariableExpression(var: !142, expr: !DIExpression())
!142 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !143, isLocal: true, isDefinition: true)
!143 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 520, elements: !144)
!144 = !{!145}
!145 = !DISubrange(count: 65)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !148, isLocal: true, isDefinition: true)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 296, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 37)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !2, line: 987, type: !20, isLocal: true, isDefinition: true)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 987, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 320, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 40)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1239, type: !136, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1014, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 544, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 68)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1058, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 3)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1062, type: !167, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1069, type: !167, isLocal: true, isDefinition: true)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1069, type: !176, isLocal: true, isDefinition: true)
!176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !177)
!177 = !{!178}
!178 = !DISubrange(count: 2)
!179 = !DIGlobalVariableExpression(var: !180, expr: !DIExpression())
!180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1097, type: !167, isLocal: true, isDefinition: true)
!181 = !DIGlobalVariableExpression(var: !182, expr: !DIExpression())
!182 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1101, type: !167, isLocal: true, isDefinition: true)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1106, type: !167, isLocal: true, isDefinition: true)
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1122, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 19)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1122, type: !148, isLocal: true, isDefinition: true)
!192 = !DIGlobalVariableExpression(var: !193, expr: !DIExpression())
!193 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1198, type: !52, isLocal: true, isDefinition: true)
!194 = !DIGlobalVariableExpression(var: !195, expr: !DIExpression())
!195 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !52, isLocal: true, isDefinition: true)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !2, line: 228, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 352, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 44)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1306, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 17)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !57, isLocal: true, isDefinition: true)
!208 = !DIGlobalVariableExpression(var: !209, expr: !DIExpression())
!209 = distinct !DIGlobalVariable(scope: null, file: !2, line: 319, type: !210, isLocal: true, isDefinition: true)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 448, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 56)
!213 = distinct !DICompileUnit(language: DW_LANG_C11, file: !214, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !215, retainedTypes: !226, globals: !268, splitDebugInlining: false, nameTableKind: None)
!214 = !DIFile(filename: "/home/raj/lwan/techempower/json.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "d64628e550f4ff405dab1a8e75d14b8c")
!215 = !{!216}
!216 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !217, line: 29, baseType: !218, size: 32, elements: !219)
!217 = !DIFile(filename: "techempower/json.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "90532975aa76ecb9e0e0525c7677d9b7")
!218 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DIEnumerator(name: "JSON_NULL", value: 0)
!221 = !DIEnumerator(name: "JSON_BOOL", value: 1)
!222 = !DIEnumerator(name: "JSON_STRING", value: 2)
!223 = !DIEnumerator(name: "JSON_NUMBER", value: 3)
!224 = !DIEnumerator(name: "JSON_ARRAY", value: 4)
!225 = !DIEnumerator(name: "JSON_OBJECT", value: 5)
!226 = !{!227, !228, !229, !230, !233, !4, !256, !261, !264, !265, !266}
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!228 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !231, line: 46, baseType: !232)
!231 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!232 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonNode", file: !217, line: 38, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "JsonNode", file: !217, line: 40, size: 448, elements: !236)
!236 = !{!237, !238, !239, !240, !241, !243}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !235, file: !217, line: 43, baseType: !233, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !235, file: !217, line: 44, baseType: !233, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !235, file: !217, line: 44, baseType: !233, size: 64, offset: 128)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !235, file: !217, line: 47, baseType: !229, size: 64, offset: 192)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "tag", scope: !235, file: !217, line: 49, baseType: !242, size: 32, offset: 256)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "JsonTag", file: !217, line: 36, baseType: !216)
!243 = !DIDerivedType(tag: DW_TAG_member, scope: !235, file: !217, line: 50, baseType: !244, size: 128, offset: 320)
!244 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !235, file: !217, line: 50, size: 128, elements: !245)
!245 = !{!246, !248, !249, !251}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "bool_", scope: !244, file: !217, line: 52, baseType: !247, size: 8)
!247 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "string_", scope: !244, file: !217, line: 55, baseType: !229, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "number_", scope: !244, file: !217, line: 58, baseType: !250, size: 64)
!250 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !244, file: !217, line: 64, baseType: !252, size: 128)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !244, file: !217, line: 62, size: 128, elements: !253)
!253 = !{!254, !255}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !252, file: !217, line: 63, baseType: !233, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !252, file: !217, line: 63, baseType: !233, size: 64, offset: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !257, line: 25, baseType: !258)
!257 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !259, line: 40, baseType: !260)
!259 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uchar_t", file: !2, line: 127, baseType: !262)
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !257, line: 26, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !259, line: 42, baseType: !218)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!268 = !{!0, !7, !12, !18, !23, !28, !33, !38, !43, !48, !50, !55, !60, !65, !70, !75, !77, !82, !84, !89, !94, !99, !104, !109, !111, !116, !118, !123, !126, !129, !134, !139, !141, !146, !151, !153, !158, !160, !165, !170, !172, !174, !179, !181, !183, !185, !190, !192, !194, !196, !201, !206, !208}
!269 = !{i32 7, !"Dwarf Version", i32 5}
!270 = !{i32 2, !"Debug Info Version", i32 3}
!271 = !{i32 1, !"wchar_size", i32 4}
!272 = !{i32 8, !"PIC Level", i32 2}
!273 = !{i32 7, !"PIE Level", i32 2}
!274 = !{i32 7, !"uwtable", i32 2}
!275 = !{i32 7, !"frame-pointer", i32 2}
!276 = !{!"clang version 16.0.0"}
!277 = distinct !DISubprogram(name: "json_decode", scope: !2, file: !2, line: 359, type: !278, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!278 = !DISubroutineType(types: !279)
!279 = !{!233, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!281 = !{}
!282 = !DILocalVariable(name: "json", arg: 1, scope: !277, file: !2, line: 359, type: !280)
!283 = !DILocation(line: 359, column: 35, scope: !277)
!284 = !DILocalVariable(name: "s", scope: !277, file: !2, line: 361, type: !280)
!285 = !DILocation(line: 361, column: 14, scope: !277)
!286 = !DILocation(line: 361, column: 18, scope: !277)
!287 = !DILocalVariable(name: "ret", scope: !277, file: !2, line: 362, type: !233)
!288 = !DILocation(line: 362, column: 12, scope: !277)
!289 = !DILocation(line: 364, column: 2, scope: !277)
!290 = !DILocation(line: 365, column: 7, scope: !291)
!291 = distinct !DILexicalBlock(scope: !277, file: !2, line: 365, column: 6)
!292 = !DILocation(line: 365, column: 6, scope: !277)
!293 = !DILocation(line: 366, column: 3, scope: !291)
!294 = !DILocation(line: 368, column: 2, scope: !277)
!295 = !DILocation(line: 369, column: 7, scope: !296)
!296 = distinct !DILexicalBlock(scope: !277, file: !2, line: 369, column: 6)
!297 = !DILocation(line: 369, column: 6, scope: !296)
!298 = !DILocation(line: 369, column: 9, scope: !296)
!299 = !DILocation(line: 369, column: 6, scope: !277)
!300 = !DILocation(line: 370, column: 15, scope: !301)
!301 = distinct !DILexicalBlock(scope: !296, file: !2, line: 369, column: 15)
!302 = !DILocation(line: 370, column: 3, scope: !301)
!303 = !DILocation(line: 371, column: 3, scope: !301)
!304 = !DILocation(line: 374, column: 9, scope: !277)
!305 = !DILocation(line: 374, column: 2, scope: !277)
!306 = !DILocation(line: 375, column: 1, scope: !277)
!307 = distinct !DISubprogram(name: "skip_space", scope: !2, file: !2, line: 977, type: !308, scopeLine: 978, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!308 = !DISubroutineType(types: !309)
!309 = !{null, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!311 = !DILocalVariable(name: "sp", arg: 1, scope: !307, file: !2, line: 977, type: !310)
!312 = !DILocation(line: 977, column: 37, scope: !307)
!313 = !DILocalVariable(name: "s", scope: !307, file: !2, line: 979, type: !280)
!314 = !DILocation(line: 979, column: 14, scope: !307)
!315 = !DILocation(line: 979, column: 19, scope: !307)
!316 = !DILocation(line: 979, column: 18, scope: !307)
!317 = !DILocation(line: 980, column: 2, scope: !307)
!318 = !DILocation(line: 980, column: 9, scope: !307)
!319 = !DILocation(line: 981, column: 4, scope: !307)
!320 = distinct !{!320, !317, !319, !321}
!321 = !{!"llvm.loop.mustprogress"}
!322 = !DILocation(line: 982, column: 8, scope: !307)
!323 = !DILocation(line: 982, column: 3, scope: !307)
!324 = !DILocation(line: 982, column: 6, scope: !307)
!325 = !DILocation(line: 983, column: 1, scope: !307)
!326 = distinct !DISubprogram(name: "parse_value", scope: !2, file: !2, line: 634, type: !327, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!327 = !DISubroutineType(types: !328)
!328 = !{!247, !310, !329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!330 = !DILocalVariable(name: "sp", arg: 1, scope: !326, file: !2, line: 634, type: !310)
!331 = !DILocation(line: 634, column: 38, scope: !326)
!332 = !DILocalVariable(name: "out", arg: 2, scope: !326, file: !2, line: 634, type: !329)
!333 = !DILocation(line: 634, column: 53, scope: !326)
!334 = !DILocalVariable(name: "s", scope: !326, file: !2, line: 636, type: !280)
!335 = !DILocation(line: 636, column: 14, scope: !326)
!336 = !DILocation(line: 636, column: 19, scope: !326)
!337 = !DILocation(line: 636, column: 18, scope: !326)
!338 = !DILocation(line: 638, column: 11, scope: !326)
!339 = !DILocation(line: 638, column: 10, scope: !326)
!340 = !DILocation(line: 638, column: 2, scope: !326)
!341 = !DILocation(line: 640, column: 8, scope: !342)
!342 = distinct !DILexicalBlock(scope: !343, file: !2, line: 640, column: 8)
!343 = distinct !DILexicalBlock(scope: !326, file: !2, line: 638, column: 14)
!344 = !DILocation(line: 640, column: 8, scope: !343)
!345 = !DILocation(line: 641, column: 9, scope: !346)
!346 = distinct !DILexicalBlock(scope: !347, file: !2, line: 641, column: 9)
!347 = distinct !DILexicalBlock(scope: !342, file: !2, line: 640, column: 36)
!348 = !DILocation(line: 641, column: 9, scope: !347)
!349 = !DILocation(line: 642, column: 13, scope: !346)
!350 = !DILocation(line: 642, column: 7, scope: !346)
!351 = !DILocation(line: 642, column: 11, scope: !346)
!352 = !DILocation(line: 642, column: 6, scope: !346)
!353 = !DILocation(line: 643, column: 11, scope: !347)
!354 = !DILocation(line: 643, column: 6, scope: !347)
!355 = !DILocation(line: 643, column: 9, scope: !347)
!356 = !DILocation(line: 644, column: 5, scope: !347)
!357 = !DILocation(line: 646, column: 4, scope: !343)
!358 = !DILocation(line: 649, column: 8, scope: !359)
!359 = distinct !DILexicalBlock(scope: !343, file: !2, line: 649, column: 8)
!360 = !DILocation(line: 649, column: 8, scope: !343)
!361 = !DILocation(line: 650, column: 9, scope: !362)
!362 = distinct !DILexicalBlock(scope: !363, file: !2, line: 650, column: 9)
!363 = distinct !DILexicalBlock(scope: !359, file: !2, line: 649, column: 37)
!364 = !DILocation(line: 650, column: 9, scope: !363)
!365 = !DILocation(line: 651, column: 13, scope: !362)
!366 = !DILocation(line: 651, column: 7, scope: !362)
!367 = !DILocation(line: 651, column: 11, scope: !362)
!368 = !DILocation(line: 651, column: 6, scope: !362)
!369 = !DILocation(line: 652, column: 11, scope: !363)
!370 = !DILocation(line: 652, column: 6, scope: !363)
!371 = !DILocation(line: 652, column: 9, scope: !363)
!372 = !DILocation(line: 653, column: 5, scope: !363)
!373 = !DILocation(line: 655, column: 4, scope: !343)
!374 = !DILocation(line: 658, column: 8, scope: !375)
!375 = distinct !DILexicalBlock(scope: !343, file: !2, line: 658, column: 8)
!376 = !DILocation(line: 658, column: 8, scope: !343)
!377 = !DILocation(line: 659, column: 9, scope: !378)
!378 = distinct !DILexicalBlock(scope: !379, file: !2, line: 659, column: 9)
!379 = distinct !DILexicalBlock(scope: !375, file: !2, line: 658, column: 36)
!380 = !DILocation(line: 659, column: 9, scope: !379)
!381 = !DILocation(line: 660, column: 13, scope: !378)
!382 = !DILocation(line: 660, column: 7, scope: !378)
!383 = !DILocation(line: 660, column: 11, scope: !378)
!384 = !DILocation(line: 660, column: 6, scope: !378)
!385 = !DILocation(line: 661, column: 11, scope: !379)
!386 = !DILocation(line: 661, column: 6, scope: !379)
!387 = !DILocation(line: 661, column: 9, scope: !379)
!388 = !DILocation(line: 662, column: 5, scope: !379)
!389 = !DILocation(line: 664, column: 4, scope: !343)
!390 = !DILocalVariable(name: "str", scope: !391, file: !2, line: 667, type: !229)
!391 = distinct !DILexicalBlock(scope: !343, file: !2, line: 666, column: 13)
!392 = !DILocation(line: 667, column: 10, scope: !391)
!393 = !DILocation(line: 668, column: 25, scope: !394)
!394 = distinct !DILexicalBlock(scope: !391, file: !2, line: 668, column: 8)
!395 = !DILocation(line: 668, column: 8, scope: !394)
!396 = !DILocation(line: 668, column: 8, scope: !391)
!397 = !DILocation(line: 669, column: 9, scope: !398)
!398 = distinct !DILexicalBlock(scope: !399, file: !2, line: 669, column: 9)
!399 = distinct !DILexicalBlock(scope: !394, file: !2, line: 668, column: 45)
!400 = !DILocation(line: 669, column: 9, scope: !399)
!401 = !DILocation(line: 670, column: 22, scope: !398)
!402 = !DILocation(line: 670, column: 13, scope: !398)
!403 = !DILocation(line: 670, column: 7, scope: !398)
!404 = !DILocation(line: 670, column: 11, scope: !398)
!405 = !DILocation(line: 670, column: 6, scope: !398)
!406 = !DILocation(line: 671, column: 11, scope: !399)
!407 = !DILocation(line: 671, column: 6, scope: !399)
!408 = !DILocation(line: 671, column: 9, scope: !399)
!409 = !DILocation(line: 672, column: 5, scope: !399)
!410 = !DILocation(line: 674, column: 4, scope: !391)
!411 = !DILocation(line: 678, column: 24, scope: !412)
!412 = distinct !DILexicalBlock(scope: !343, file: !2, line: 678, column: 8)
!413 = !DILocation(line: 678, column: 8, scope: !412)
!414 = !DILocation(line: 678, column: 8, scope: !343)
!415 = !DILocation(line: 679, column: 11, scope: !416)
!416 = distinct !DILexicalBlock(scope: !412, file: !2, line: 678, column: 30)
!417 = !DILocation(line: 679, column: 6, scope: !416)
!418 = !DILocation(line: 679, column: 9, scope: !416)
!419 = !DILocation(line: 680, column: 5, scope: !416)
!420 = !DILocation(line: 682, column: 4, scope: !343)
!421 = !DILocation(line: 685, column: 25, scope: !422)
!422 = distinct !DILexicalBlock(scope: !343, file: !2, line: 685, column: 8)
!423 = !DILocation(line: 685, column: 8, scope: !422)
!424 = !DILocation(line: 685, column: 8, scope: !343)
!425 = !DILocation(line: 686, column: 11, scope: !426)
!426 = distinct !DILexicalBlock(scope: !422, file: !2, line: 685, column: 31)
!427 = !DILocation(line: 686, column: 6, scope: !426)
!428 = !DILocation(line: 686, column: 9, scope: !426)
!429 = !DILocation(line: 687, column: 5, scope: !426)
!430 = !DILocation(line: 689, column: 4, scope: !343)
!431 = !DILocalVariable(name: "num", scope: !432, file: !2, line: 692, type: !250)
!432 = distinct !DILexicalBlock(scope: !343, file: !2, line: 691, column: 12)
!433 = !DILocation(line: 692, column: 11, scope: !432)
!434 = !DILocation(line: 693, column: 25, scope: !435)
!435 = distinct !DILexicalBlock(scope: !432, file: !2, line: 693, column: 8)
!436 = !DILocation(line: 693, column: 8, scope: !435)
!437 = !DILocation(line: 693, column: 8, scope: !432)
!438 = !DILocation(line: 694, column: 9, scope: !439)
!439 = distinct !DILexicalBlock(scope: !440, file: !2, line: 694, column: 9)
!440 = distinct !DILexicalBlock(scope: !435, file: !2, line: 693, column: 45)
!441 = !DILocation(line: 694, column: 9, scope: !440)
!442 = !DILocation(line: 695, column: 27, scope: !439)
!443 = !DILocation(line: 695, column: 13, scope: !439)
!444 = !DILocation(line: 695, column: 7, scope: !439)
!445 = !DILocation(line: 695, column: 11, scope: !439)
!446 = !DILocation(line: 695, column: 6, scope: !439)
!447 = !DILocation(line: 696, column: 11, scope: !440)
!448 = !DILocation(line: 696, column: 6, scope: !440)
!449 = !DILocation(line: 696, column: 9, scope: !440)
!450 = !DILocation(line: 697, column: 5, scope: !440)
!451 = !DILocation(line: 699, column: 4, scope: !432)
!452 = !DILocation(line: 702, column: 1, scope: !326)
!453 = distinct !DISubprogram(name: "json_delete", scope: !2, file: !2, line: 418, type: !454, scopeLine: 419, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!454 = !DISubroutineType(types: !455)
!455 = !{null, !233}
!456 = !DILocalVariable(name: "node", arg: 1, scope: !453, file: !2, line: 418, type: !233)
!457 = !DILocation(line: 418, column: 28, scope: !453)
!458 = !DILocation(line: 420, column: 6, scope: !459)
!459 = distinct !DILexicalBlock(scope: !453, file: !2, line: 420, column: 6)
!460 = !DILocation(line: 420, column: 11, scope: !459)
!461 = !DILocation(line: 420, column: 6, scope: !453)
!462 = !DILocation(line: 421, column: 27, scope: !463)
!463 = distinct !DILexicalBlock(scope: !459, file: !2, line: 420, column: 20)
!464 = !DILocation(line: 421, column: 3, scope: !463)
!465 = !DILocation(line: 423, column: 11, scope: !463)
!466 = !DILocation(line: 423, column: 17, scope: !463)
!467 = !DILocation(line: 423, column: 3, scope: !463)
!468 = !DILocation(line: 425, column: 10, scope: !469)
!469 = distinct !DILexicalBlock(scope: !463, file: !2, line: 423, column: 22)
!470 = !DILocation(line: 425, column: 16, scope: !469)
!471 = !DILocation(line: 425, column: 5, scope: !469)
!472 = !DILocation(line: 426, column: 5, scope: !469)
!473 = !DILocalVariable(name: "child", scope: !474, file: !2, line: 430, type: !233)
!474 = distinct !DILexicalBlock(scope: !469, file: !2, line: 429, column: 4)
!475 = !DILocation(line: 430, column: 15, scope: !474)
!476 = !DILocalVariable(name: "next", scope: !474, file: !2, line: 430, type: !233)
!477 = !DILocation(line: 430, column: 23, scope: !474)
!478 = !DILocation(line: 431, column: 18, scope: !479)
!479 = distinct !DILexicalBlock(scope: !474, file: !2, line: 431, column: 5)
!480 = !DILocation(line: 431, column: 24, scope: !479)
!481 = !DILocation(line: 431, column: 33, scope: !479)
!482 = !DILocation(line: 431, column: 16, scope: !479)
!483 = !DILocation(line: 431, column: 10, scope: !479)
!484 = !DILocation(line: 431, column: 39, scope: !485)
!485 = distinct !DILexicalBlock(scope: !479, file: !2, line: 431, column: 5)
!486 = !DILocation(line: 431, column: 45, scope: !485)
!487 = !DILocation(line: 431, column: 5, scope: !479)
!488 = !DILocation(line: 432, column: 13, scope: !489)
!489 = distinct !DILexicalBlock(scope: !485, file: !2, line: 431, column: 68)
!490 = !DILocation(line: 432, column: 20, scope: !489)
!491 = !DILocation(line: 432, column: 11, scope: !489)
!492 = !DILocation(line: 433, column: 18, scope: !489)
!493 = !DILocation(line: 433, column: 6, scope: !489)
!494 = !DILocation(line: 434, column: 5, scope: !489)
!495 = !DILocation(line: 431, column: 62, scope: !485)
!496 = !DILocation(line: 431, column: 60, scope: !485)
!497 = !DILocation(line: 431, column: 5, scope: !485)
!498 = distinct !{!498, !487, !499, !321}
!499 = !DILocation(line: 434, column: 5, scope: !479)
!500 = !DILocation(line: 435, column: 5, scope: !474)
!501 = !DILocation(line: 438, column: 3, scope: !469)
!502 = !DILocation(line: 440, column: 8, scope: !463)
!503 = !DILocation(line: 440, column: 3, scope: !463)
!504 = !DILocation(line: 441, column: 2, scope: !463)
!505 = !DILocation(line: 442, column: 1, scope: !453)
!506 = distinct !DISubprogram(name: "json_encode", scope: !2, file: !2, line: 377, type: !507, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!507 = !DISubroutineType(types: !508)
!508 = !{!229, !509}
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!511 = !DILocalVariable(name: "node", arg: 1, scope: !506, file: !2, line: 377, type: !509)
!512 = !DILocation(line: 377, column: 35, scope: !506)
!513 = !DILocation(line: 379, column: 24, scope: !506)
!514 = !DILocation(line: 379, column: 9, scope: !506)
!515 = !DILocation(line: 379, column: 2, scope: !506)
!516 = distinct !DISubprogram(name: "json_stringify", scope: !2, file: !2, line: 392, type: !517, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!517 = !DISubroutineType(types: !518)
!518 = !{!229, !509, !280}
!519 = !DILocalVariable(name: "node", arg: 1, scope: !516, file: !2, line: 392, type: !509)
!520 = !DILocation(line: 392, column: 38, scope: !516)
!521 = !DILocalVariable(name: "space", arg: 2, scope: !516, file: !2, line: 392, type: !280)
!522 = !DILocation(line: 392, column: 56, scope: !516)
!523 = !DILocalVariable(name: "sb", scope: !516, file: !2, line: 394, type: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "SB", file: !2, line: 44, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !2, line: 39, size: 192, elements: !526)
!526 = !{!527, !528, !529}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "cur", scope: !525, file: !2, line: 41, baseType: !229, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !525, file: !2, line: 42, baseType: !229, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !525, file: !2, line: 43, baseType: !229, size: 64, offset: 128)
!530 = !DILocation(line: 394, column: 5, scope: !516)
!531 = !DILocation(line: 395, column: 2, scope: !516)
!532 = !DILocation(line: 397, column: 6, scope: !533)
!533 = distinct !DILexicalBlock(scope: !516, file: !2, line: 397, column: 6)
!534 = !DILocation(line: 397, column: 12, scope: !533)
!535 = !DILocation(line: 397, column: 6, scope: !516)
!536 = !DILocation(line: 398, column: 28, scope: !533)
!537 = !DILocation(line: 398, column: 34, scope: !533)
!538 = !DILocation(line: 398, column: 3, scope: !533)
!539 = !DILocation(line: 400, column: 19, scope: !533)
!540 = !DILocation(line: 400, column: 3, scope: !533)
!541 = !DILocation(line: 402, column: 9, scope: !516)
!542 = !DILocation(line: 402, column: 2, scope: !516)
!543 = distinct !DISubprogram(name: "json_encode_string", scope: !2, file: !2, line: 382, type: !544, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!544 = !DISubroutineType(types: !545)
!545 = !{!229, !280}
!546 = !DILocalVariable(name: "str", arg: 1, scope: !543, file: !2, line: 382, type: !280)
!547 = !DILocation(line: 382, column: 38, scope: !543)
!548 = !DILocalVariable(name: "sb", scope: !543, file: !2, line: 384, type: !524)
!549 = !DILocation(line: 384, column: 5, scope: !543)
!550 = !DILocation(line: 385, column: 2, scope: !543)
!551 = !DILocation(line: 387, column: 19, scope: !543)
!552 = !DILocation(line: 387, column: 2, scope: !543)
!553 = !DILocation(line: 389, column: 9, scope: !543)
!554 = !DILocation(line: 389, column: 2, scope: !543)
!555 = distinct !DISubprogram(name: "sb_init", scope: !2, file: !2, line: 46, type: !556, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !558}
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!559 = !DILocalVariable(name: "sb", arg: 1, scope: !555, file: !2, line: 46, type: !558)
!560 = !DILocation(line: 46, column: 25, scope: !555)
!561 = !DILocation(line: 48, column: 22, scope: !555)
!562 = !DILocation(line: 48, column: 2, scope: !555)
!563 = !DILocation(line: 48, column: 6, scope: !555)
!564 = !DILocation(line: 48, column: 12, scope: !555)
!565 = !DILocation(line: 49, column: 6, scope: !566)
!566 = distinct !DILexicalBlock(scope: !555, file: !2, line: 49, column: 6)
!567 = !DILocation(line: 49, column: 10, scope: !566)
!568 = !DILocation(line: 49, column: 16, scope: !566)
!569 = !DILocation(line: 49, column: 6, scope: !555)
!570 = !DILocation(line: 50, column: 3, scope: !566)
!571 = !DILocation(line: 50, column: 3, scope: !572)
!572 = distinct !DILexicalBlock(scope: !566, file: !2, line: 50, column: 3)
!573 = !DILocation(line: 51, column: 12, scope: !555)
!574 = !DILocation(line: 51, column: 16, scope: !555)
!575 = !DILocation(line: 51, column: 2, scope: !555)
!576 = !DILocation(line: 51, column: 6, scope: !555)
!577 = !DILocation(line: 51, column: 10, scope: !555)
!578 = !DILocation(line: 52, column: 12, scope: !555)
!579 = !DILocation(line: 52, column: 16, scope: !555)
!580 = !DILocation(line: 52, column: 22, scope: !555)
!581 = !DILocation(line: 52, column: 2, scope: !555)
!582 = !DILocation(line: 52, column: 6, scope: !555)
!583 = !DILocation(line: 52, column: 10, scope: !555)
!584 = !DILocation(line: 53, column: 1, scope: !555)
!585 = distinct !DISubprogram(name: "emit_string", scope: !2, file: !2, line: 1117, type: !586, scopeLine: 1118, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!586 = !DISubroutineType(types: !587)
!587 = !{null, !558, !280}
!588 = !DILocalVariable(name: "out", arg: 1, scope: !585, file: !2, line: 1117, type: !558)
!589 = !DILocation(line: 1117, column: 22, scope: !585)
!590 = !DILocalVariable(name: "str", arg: 2, scope: !585, file: !2, line: 1117, type: !280)
!591 = !DILocation(line: 1117, column: 39, scope: !585)
!592 = !DILocalVariable(name: "s", scope: !585, file: !2, line: 1119, type: !280)
!593 = !DILocation(line: 1119, column: 14, scope: !585)
!594 = !DILocation(line: 1119, column: 18, scope: !585)
!595 = !DILocalVariable(name: "b", scope: !585, file: !2, line: 1120, type: !229)
!596 = !DILocation(line: 1120, column: 8, scope: !585)
!597 = !DILocation(line: 1122, column: 2, scope: !598)
!598 = distinct !DILexicalBlock(scope: !599, file: !2, line: 1122, column: 2)
!599 = distinct !DILexicalBlock(scope: !585, file: !2, line: 1122, column: 2)
!600 = !DILocation(line: 1122, column: 2, scope: !599)
!601 = !DILocation(line: 1128, column: 2, scope: !585)
!602 = !DILocation(line: 1128, column: 2, scope: !603)
!603 = distinct !DILexicalBlock(scope: !604, file: !2, line: 1128, column: 2)
!604 = distinct !DILexicalBlock(scope: !585, file: !2, line: 1128, column: 2)
!605 = !DILocation(line: 1128, column: 2, scope: !604)
!606 = !DILocation(line: 1129, column: 6, scope: !585)
!607 = !DILocation(line: 1129, column: 11, scope: !585)
!608 = !DILocation(line: 1129, column: 4, scope: !585)
!609 = !DILocation(line: 1131, column: 4, scope: !585)
!610 = !DILocation(line: 1131, column: 7, scope: !585)
!611 = !DILocation(line: 1132, column: 2, scope: !585)
!612 = !DILocation(line: 1132, column: 10, scope: !585)
!613 = !DILocation(line: 1132, column: 9, scope: !585)
!614 = !DILocation(line: 1132, column: 12, scope: !585)
!615 = !DILocalVariable(name: "c", scope: !616, file: !2, line: 1133, type: !4)
!616 = distinct !DILexicalBlock(scope: !585, file: !2, line: 1132, column: 18)
!617 = !DILocation(line: 1133, column: 8, scope: !616)
!618 = !DILocation(line: 1133, column: 14, scope: !616)
!619 = !DILocation(line: 1133, column: 12, scope: !616)
!620 = !DILocation(line: 1136, column: 11, scope: !616)
!621 = !DILocation(line: 1136, column: 3, scope: !616)
!622 = !DILocation(line: 1138, column: 7, scope: !623)
!623 = distinct !DILexicalBlock(scope: !616, file: !2, line: 1136, column: 14)
!624 = !DILocation(line: 1138, column: 10, scope: !623)
!625 = !DILocation(line: 1139, column: 7, scope: !623)
!626 = !DILocation(line: 1139, column: 10, scope: !623)
!627 = !DILocation(line: 1140, column: 5, scope: !623)
!628 = !DILocation(line: 1142, column: 7, scope: !623)
!629 = !DILocation(line: 1142, column: 10, scope: !623)
!630 = !DILocation(line: 1143, column: 7, scope: !623)
!631 = !DILocation(line: 1143, column: 10, scope: !623)
!632 = !DILocation(line: 1144, column: 5, scope: !623)
!633 = !DILocation(line: 1146, column: 7, scope: !623)
!634 = !DILocation(line: 1146, column: 10, scope: !623)
!635 = !DILocation(line: 1147, column: 7, scope: !623)
!636 = !DILocation(line: 1147, column: 10, scope: !623)
!637 = !DILocation(line: 1148, column: 5, scope: !623)
!638 = !DILocation(line: 1150, column: 7, scope: !623)
!639 = !DILocation(line: 1150, column: 10, scope: !623)
!640 = !DILocation(line: 1151, column: 7, scope: !623)
!641 = !DILocation(line: 1151, column: 10, scope: !623)
!642 = !DILocation(line: 1152, column: 5, scope: !623)
!643 = !DILocation(line: 1154, column: 7, scope: !623)
!644 = !DILocation(line: 1154, column: 10, scope: !623)
!645 = !DILocation(line: 1155, column: 7, scope: !623)
!646 = !DILocation(line: 1155, column: 10, scope: !623)
!647 = !DILocation(line: 1156, column: 5, scope: !623)
!648 = !DILocation(line: 1158, column: 7, scope: !623)
!649 = !DILocation(line: 1158, column: 10, scope: !623)
!650 = !DILocation(line: 1159, column: 7, scope: !623)
!651 = !DILocation(line: 1159, column: 10, scope: !623)
!652 = !DILocation(line: 1160, column: 5, scope: !623)
!653 = !DILocation(line: 1162, column: 7, scope: !623)
!654 = !DILocation(line: 1162, column: 10, scope: !623)
!655 = !DILocation(line: 1163, column: 7, scope: !623)
!656 = !DILocation(line: 1163, column: 10, scope: !623)
!657 = !DILocation(line: 1164, column: 5, scope: !623)
!658 = !DILocalVariable(name: "len", scope: !659, file: !2, line: 1166, type: !230)
!659 = distinct !DILexicalBlock(scope: !623, file: !2, line: 1165, column: 13)
!660 = !DILocation(line: 1166, column: 12, scope: !659)
!661 = !DILocation(line: 1168, column: 6, scope: !659)
!662 = !DILocation(line: 1169, column: 28, scope: !659)
!663 = !DILocation(line: 1169, column: 11, scope: !659)
!664 = !DILocation(line: 1169, column: 9, scope: !659)
!665 = !DILocation(line: 1171, column: 9, scope: !666)
!666 = distinct !DILexicalBlock(scope: !659, file: !2, line: 1171, column: 9)
!667 = !DILocation(line: 1171, column: 13, scope: !666)
!668 = !DILocation(line: 1171, column: 9, scope: !659)
!669 = !DILocation(line: 1180, column: 6, scope: !670)
!670 = distinct !DILexicalBlock(scope: !671, file: !2, line: 1180, column: 6)
!671 = distinct !DILexicalBlock(scope: !672, file: !2, line: 1180, column: 6)
!672 = distinct !DILexicalBlock(scope: !666, file: !2, line: 1171, column: 19)
!673 = !DILocation(line: 1185, column: 16, scope: !674)
!674 = distinct !DILexicalBlock(scope: !666, file: !2, line: 1185, column: 16)
!675 = !DILocation(line: 1185, column: 18, scope: !674)
!676 = !DILocation(line: 1185, column: 16, scope: !666)
!677 = !DILocalVariable(name: "unicode", scope: !678, file: !2, line: 1187, type: !262)
!678 = distinct !DILexicalBlock(scope: !674, file: !2, line: 1185, column: 26)
!679 = !DILocation(line: 1187, column: 15, scope: !678)
!680 = !DILocation(line: 1189, column: 26, scope: !678)
!681 = !DILocation(line: 1189, column: 11, scope: !678)
!682 = !DILocation(line: 1189, column: 8, scope: !678)
!683 = !DILocation(line: 1191, column: 10, scope: !684)
!684 = distinct !DILexicalBlock(scope: !678, file: !2, line: 1191, column: 10)
!685 = !DILocation(line: 1191, column: 18, scope: !684)
!686 = !DILocation(line: 1191, column: 10, scope: !678)
!687 = !DILocation(line: 1192, column: 9, scope: !688)
!688 = distinct !DILexicalBlock(scope: !684, file: !2, line: 1191, column: 29)
!689 = !DILocation(line: 1192, column: 12, scope: !688)
!690 = !DILocation(line: 1193, column: 9, scope: !688)
!691 = !DILocation(line: 1193, column: 12, scope: !688)
!692 = !DILocation(line: 1194, column: 24, scope: !688)
!693 = !DILocation(line: 1194, column: 37, scope: !688)
!694 = !DILocation(line: 1194, column: 27, scope: !688)
!695 = !DILocation(line: 1194, column: 12, scope: !688)
!696 = !DILocation(line: 1194, column: 9, scope: !688)
!697 = !DILocation(line: 1195, column: 6, scope: !688)
!698 = !DILocalVariable(name: "uc", scope: !699, file: !2, line: 1197, type: !256)
!699 = distinct !DILexicalBlock(scope: !684, file: !2, line: 1195, column: 13)
!700 = !DILocation(line: 1197, column: 16, scope: !699)
!701 = !DILocalVariable(name: "lc", scope: !699, file: !2, line: 1197, type: !256)
!702 = !DILocation(line: 1197, column: 20, scope: !699)
!703 = !DILocation(line: 1198, column: 7, scope: !704)
!704 = distinct !DILexicalBlock(scope: !705, file: !2, line: 1198, column: 7)
!705 = distinct !DILexicalBlock(scope: !699, file: !2, line: 1198, column: 7)
!706 = !DILocation(line: 1198, column: 7, scope: !705)
!707 = !DILocation(line: 1199, column: 25, scope: !699)
!708 = !DILocation(line: 1199, column: 7, scope: !699)
!709 = !DILocation(line: 1200, column: 9, scope: !699)
!710 = !DILocation(line: 1200, column: 12, scope: !699)
!711 = !DILocation(line: 1201, column: 9, scope: !699)
!712 = !DILocation(line: 1201, column: 12, scope: !699)
!713 = !DILocation(line: 1202, column: 24, scope: !699)
!714 = !DILocation(line: 1202, column: 27, scope: !699)
!715 = !DILocation(line: 1202, column: 12, scope: !699)
!716 = !DILocation(line: 1202, column: 9, scope: !699)
!717 = !DILocation(line: 1203, column: 9, scope: !699)
!718 = !DILocation(line: 1203, column: 12, scope: !699)
!719 = !DILocation(line: 1204, column: 9, scope: !699)
!720 = !DILocation(line: 1204, column: 12, scope: !699)
!721 = !DILocation(line: 1205, column: 24, scope: !699)
!722 = !DILocation(line: 1205, column: 27, scope: !699)
!723 = !DILocation(line: 1205, column: 12, scope: !699)
!724 = !DILocation(line: 1205, column: 9, scope: !699)
!725 = !DILocation(line: 1207, column: 5, scope: !678)
!726 = !DILocation(line: 1209, column: 6, scope: !727)
!727 = distinct !DILexicalBlock(scope: !674, file: !2, line: 1207, column: 12)
!728 = !DILocation(line: 1209, column: 16, scope: !727)
!729 = !DILocation(line: 1210, column: 16, scope: !727)
!730 = !DILocation(line: 1210, column: 14, scope: !727)
!731 = !DILocation(line: 1210, column: 9, scope: !727)
!732 = !DILocation(line: 1210, column: 12, scope: !727)
!733 = distinct !{!733, !726, !729, !321}
!734 = !DILocation(line: 1213, column: 5, scope: !659)
!735 = !DILocation(line: 1221, column: 14, scope: !616)
!736 = !DILocation(line: 1221, column: 3, scope: !616)
!737 = !DILocation(line: 1221, column: 8, scope: !616)
!738 = !DILocation(line: 1221, column: 12, scope: !616)
!739 = !DILocation(line: 1222, column: 3, scope: !616)
!740 = !DILocation(line: 1222, column: 3, scope: !741)
!741 = distinct !DILexicalBlock(scope: !742, file: !2, line: 1222, column: 3)
!742 = distinct !DILexicalBlock(scope: !616, file: !2, line: 1222, column: 3)
!743 = !DILocation(line: 1222, column: 3, scope: !742)
!744 = !DILocation(line: 1223, column: 7, scope: !616)
!745 = !DILocation(line: 1223, column: 12, scope: !616)
!746 = !DILocation(line: 1223, column: 5, scope: !616)
!747 = distinct !{!747, !611, !748, !321}
!748 = !DILocation(line: 1224, column: 2, scope: !585)
!749 = !DILocation(line: 1225, column: 4, scope: !585)
!750 = !DILocation(line: 1225, column: 7, scope: !585)
!751 = !DILocation(line: 1227, column: 13, scope: !585)
!752 = !DILocation(line: 1227, column: 2, scope: !585)
!753 = !DILocation(line: 1227, column: 7, scope: !585)
!754 = !DILocation(line: 1227, column: 11, scope: !585)
!755 = !DILocation(line: 1228, column: 1, scope: !585)
!756 = distinct !DISubprogram(name: "sb_finish", scope: !2, file: !2, line: 95, type: !757, scopeLine: 96, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!757 = !DISubroutineType(types: !758)
!758 = !{!229, !558}
!759 = !DILocalVariable(name: "sb", arg: 1, scope: !756, file: !2, line: 95, type: !558)
!760 = !DILocation(line: 95, column: 28, scope: !756)
!761 = !DILocation(line: 97, column: 3, scope: !756)
!762 = !DILocation(line: 97, column: 7, scope: !756)
!763 = !DILocation(line: 97, column: 11, scope: !756)
!764 = !DILocation(line: 98, column: 2, scope: !765)
!765 = distinct !DILexicalBlock(scope: !766, file: !2, line: 98, column: 2)
!766 = distinct !DILexicalBlock(scope: !756, file: !2, line: 98, column: 2)
!767 = !DILocation(line: 98, column: 2, scope: !766)
!768 = !DILocation(line: 99, column: 9, scope: !756)
!769 = !DILocation(line: 99, column: 13, scope: !756)
!770 = !DILocation(line: 99, column: 2, scope: !756)
!771 = distinct !DISubprogram(name: "emit_value_indented", scope: !2, file: !2, line: 1012, type: !772, scopeLine: 1013, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!772 = !DISubroutineType(types: !773)
!773 = !{null, !558, !509, !280, !228}
!774 = !DILocalVariable(name: "out", arg: 1, scope: !771, file: !2, line: 1012, type: !558)
!775 = !DILocation(line: 1012, column: 30, scope: !771)
!776 = !DILocalVariable(name: "node", arg: 2, scope: !771, file: !2, line: 1012, type: !509)
!777 = !DILocation(line: 1012, column: 51, scope: !771)
!778 = !DILocalVariable(name: "space", arg: 3, scope: !771, file: !2, line: 1012, type: !280)
!779 = !DILocation(line: 1012, column: 69, scope: !771)
!780 = !DILocalVariable(name: "indent_level", arg: 4, scope: !771, file: !2, line: 1012, type: !228)
!781 = !DILocation(line: 1012, column: 80, scope: !771)
!782 = !DILocation(line: 1014, column: 2, scope: !783)
!783 = distinct !DILexicalBlock(scope: !784, file: !2, line: 1014, column: 2)
!784 = distinct !DILexicalBlock(scope: !771, file: !2, line: 1014, column: 2)
!785 = !DILocation(line: 1014, column: 2, scope: !784)
!786 = !DILocation(line: 1015, column: 10, scope: !771)
!787 = !DILocation(line: 1015, column: 16, scope: !771)
!788 = !DILocation(line: 1015, column: 2, scope: !771)
!789 = !DILocation(line: 1017, column: 12, scope: !790)
!790 = distinct !DILexicalBlock(scope: !771, file: !2, line: 1015, column: 21)
!791 = !DILocation(line: 1017, column: 4, scope: !790)
!792 = !DILocation(line: 1018, column: 4, scope: !790)
!793 = !DILocation(line: 1020, column: 12, scope: !790)
!794 = !DILocation(line: 1020, column: 17, scope: !790)
!795 = !DILocation(line: 1020, column: 23, scope: !790)
!796 = !DILocation(line: 1020, column: 4, scope: !790)
!797 = !DILocation(line: 1021, column: 4, scope: !790)
!798 = !DILocation(line: 1023, column: 16, scope: !790)
!799 = !DILocation(line: 1023, column: 21, scope: !790)
!800 = !DILocation(line: 1023, column: 27, scope: !790)
!801 = !DILocation(line: 1023, column: 4, scope: !790)
!802 = !DILocation(line: 1024, column: 4, scope: !790)
!803 = !DILocation(line: 1026, column: 16, scope: !790)
!804 = !DILocation(line: 1026, column: 21, scope: !790)
!805 = !DILocation(line: 1026, column: 27, scope: !790)
!806 = !DILocation(line: 1026, column: 4, scope: !790)
!807 = !DILocation(line: 1027, column: 4, scope: !790)
!808 = !DILocation(line: 1029, column: 24, scope: !790)
!809 = !DILocation(line: 1029, column: 29, scope: !790)
!810 = !DILocation(line: 1029, column: 35, scope: !790)
!811 = !DILocation(line: 1029, column: 42, scope: !790)
!812 = !DILocation(line: 1029, column: 4, scope: !790)
!813 = !DILocation(line: 1030, column: 4, scope: !790)
!814 = !DILocation(line: 1032, column: 25, scope: !790)
!815 = !DILocation(line: 1032, column: 30, scope: !790)
!816 = !DILocation(line: 1032, column: 36, scope: !790)
!817 = !DILocation(line: 1032, column: 43, scope: !790)
!818 = !DILocation(line: 1032, column: 4, scope: !790)
!819 = !DILocation(line: 1033, column: 4, scope: !790)
!820 = !DILocation(line: 1035, column: 4, scope: !821)
!821 = distinct !DILexicalBlock(scope: !822, file: !2, line: 1035, column: 4)
!822 = distinct !DILexicalBlock(scope: !790, file: !2, line: 1035, column: 4)
!823 = !DILocation(line: 1037, column: 1, scope: !771)
!824 = distinct !DISubprogram(name: "emit_value", scope: !2, file: !2, line: 985, type: !825, scopeLine: 986, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!825 = !DISubroutineType(types: !826)
!826 = !{null, !558, !509}
!827 = !DILocalVariable(name: "out", arg: 1, scope: !824, file: !2, line: 985, type: !558)
!828 = !DILocation(line: 985, column: 28, scope: !824)
!829 = !DILocalVariable(name: "node", arg: 2, scope: !824, file: !2, line: 985, type: !509)
!830 = !DILocation(line: 985, column: 49, scope: !824)
!831 = !DILocation(line: 987, column: 2, scope: !832)
!832 = distinct !DILexicalBlock(scope: !833, file: !2, line: 987, column: 2)
!833 = distinct !DILexicalBlock(scope: !824, file: !2, line: 987, column: 2)
!834 = !DILocation(line: 987, column: 2, scope: !833)
!835 = !DILocation(line: 988, column: 10, scope: !824)
!836 = !DILocation(line: 988, column: 16, scope: !824)
!837 = !DILocation(line: 988, column: 2, scope: !824)
!838 = !DILocation(line: 990, column: 12, scope: !839)
!839 = distinct !DILexicalBlock(scope: !824, file: !2, line: 988, column: 21)
!840 = !DILocation(line: 990, column: 4, scope: !839)
!841 = !DILocation(line: 991, column: 4, scope: !839)
!842 = !DILocation(line: 993, column: 12, scope: !839)
!843 = !DILocation(line: 993, column: 17, scope: !839)
!844 = !DILocation(line: 993, column: 23, scope: !839)
!845 = !DILocation(line: 993, column: 4, scope: !839)
!846 = !DILocation(line: 994, column: 4, scope: !839)
!847 = !DILocation(line: 996, column: 16, scope: !839)
!848 = !DILocation(line: 996, column: 21, scope: !839)
!849 = !DILocation(line: 996, column: 27, scope: !839)
!850 = !DILocation(line: 996, column: 4, scope: !839)
!851 = !DILocation(line: 997, column: 4, scope: !839)
!852 = !DILocation(line: 999, column: 16, scope: !839)
!853 = !DILocation(line: 999, column: 21, scope: !839)
!854 = !DILocation(line: 999, column: 27, scope: !839)
!855 = !DILocation(line: 999, column: 4, scope: !839)
!856 = !DILocation(line: 1000, column: 4, scope: !839)
!857 = !DILocation(line: 1002, column: 15, scope: !839)
!858 = !DILocation(line: 1002, column: 20, scope: !839)
!859 = !DILocation(line: 1002, column: 4, scope: !839)
!860 = !DILocation(line: 1003, column: 4, scope: !839)
!861 = !DILocation(line: 1005, column: 16, scope: !839)
!862 = !DILocation(line: 1005, column: 21, scope: !839)
!863 = !DILocation(line: 1005, column: 4, scope: !839)
!864 = !DILocation(line: 1006, column: 4, scope: !839)
!865 = !DILocation(line: 1008, column: 4, scope: !866)
!866 = distinct !DILexicalBlock(scope: !867, file: !2, line: 1008, column: 4)
!867 = distinct !DILexicalBlock(scope: !839, file: !2, line: 1008, column: 4)
!868 = !DILocation(line: 1010, column: 1, scope: !824)
!869 = distinct !DISubprogram(name: "json_stringify_length", scope: !2, file: !2, line: 405, type: !870, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!870 = !DISubroutineType(types: !871)
!871 = !{!229, !509, !280, !872}
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!873 = !DILocalVariable(name: "node", arg: 1, scope: !869, file: !2, line: 405, type: !509)
!874 = !DILocation(line: 405, column: 45, scope: !869)
!875 = !DILocalVariable(name: "space", arg: 2, scope: !869, file: !2, line: 405, type: !280)
!876 = !DILocation(line: 405, column: 63, scope: !869)
!877 = !DILocalVariable(name: "length", arg: 3, scope: !869, file: !2, line: 405, type: !872)
!878 = !DILocation(line: 405, column: 78, scope: !869)
!879 = !DILocalVariable(name: "sb", scope: !869, file: !2, line: 407, type: !524)
!880 = !DILocation(line: 407, column: 5, scope: !869)
!881 = !DILocation(line: 408, column: 2, scope: !869)
!882 = !DILocation(line: 410, column: 6, scope: !883)
!883 = distinct !DILexicalBlock(scope: !869, file: !2, line: 410, column: 6)
!884 = !DILocation(line: 410, column: 12, scope: !883)
!885 = !DILocation(line: 410, column: 6, scope: !869)
!886 = !DILocation(line: 411, column: 28, scope: !883)
!887 = !DILocation(line: 411, column: 34, scope: !883)
!888 = !DILocation(line: 411, column: 3, scope: !883)
!889 = !DILocation(line: 413, column: 19, scope: !883)
!890 = !DILocation(line: 413, column: 3, scope: !883)
!891 = !DILocation(line: 415, column: 31, scope: !869)
!892 = !DILocation(line: 415, column: 9, scope: !869)
!893 = !DILocation(line: 415, column: 2, scope: !869)
!894 = distinct !DISubprogram(name: "sb_finish_length", scope: !2, file: !2, line: 102, type: !895, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!895 = !DISubroutineType(types: !896)
!896 = !{!229, !558, !872}
!897 = !DILocalVariable(name: "sb", arg: 1, scope: !894, file: !2, line: 102, type: !558)
!898 = !DILocation(line: 102, column: 35, scope: !894)
!899 = !DILocalVariable(name: "length", arg: 2, scope: !894, file: !2, line: 102, type: !872)
!900 = !DILocation(line: 102, column: 47, scope: !894)
!901 = !DILocation(line: 104, column: 3, scope: !894)
!902 = !DILocation(line: 104, column: 7, scope: !894)
!903 = !DILocation(line: 104, column: 11, scope: !894)
!904 = !DILocation(line: 105, column: 2, scope: !905)
!905 = distinct !DILexicalBlock(scope: !906, file: !2, line: 105, column: 2)
!906 = distinct !DILexicalBlock(scope: !894, file: !2, line: 105, column: 2)
!907 = !DILocation(line: 105, column: 2, scope: !906)
!908 = !DILocation(line: 106, column: 21, scope: !894)
!909 = !DILocation(line: 106, column: 25, scope: !894)
!910 = !DILocation(line: 106, column: 31, scope: !894)
!911 = !DILocation(line: 106, column: 35, scope: !894)
!912 = !DILocation(line: 106, column: 29, scope: !894)
!913 = !DILocation(line: 106, column: 3, scope: !894)
!914 = !DILocation(line: 106, column: 10, scope: !894)
!915 = !DILocation(line: 107, column: 9, scope: !894)
!916 = !DILocation(line: 107, column: 13, scope: !894)
!917 = !DILocation(line: 107, column: 2, scope: !894)
!918 = distinct !DISubprogram(name: "json_remove_from_parent", scope: !2, file: !2, line: 612, type: !454, scopeLine: 613, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!919 = !DILocalVariable(name: "node", arg: 1, scope: !918, file: !2, line: 612, type: !233)
!920 = !DILocation(line: 612, column: 40, scope: !918)
!921 = !DILocalVariable(name: "parent", scope: !918, file: !2, line: 614, type: !233)
!922 = !DILocation(line: 614, column: 12, scope: !918)
!923 = !DILocation(line: 614, column: 21, scope: !918)
!924 = !DILocation(line: 614, column: 27, scope: !918)
!925 = !DILocation(line: 616, column: 6, scope: !926)
!926 = distinct !DILexicalBlock(scope: !918, file: !2, line: 616, column: 6)
!927 = !DILocation(line: 616, column: 13, scope: !926)
!928 = !DILocation(line: 616, column: 6, scope: !918)
!929 = !DILocation(line: 617, column: 7, scope: !930)
!930 = distinct !DILexicalBlock(scope: !931, file: !2, line: 617, column: 7)
!931 = distinct !DILexicalBlock(scope: !926, file: !2, line: 616, column: 22)
!932 = !DILocation(line: 617, column: 13, scope: !930)
!933 = !DILocation(line: 617, column: 18, scope: !930)
!934 = !DILocation(line: 617, column: 7, scope: !931)
!935 = !DILocation(line: 618, column: 23, scope: !930)
!936 = !DILocation(line: 618, column: 29, scope: !930)
!937 = !DILocation(line: 618, column: 4, scope: !930)
!938 = !DILocation(line: 618, column: 10, scope: !930)
!939 = !DILocation(line: 618, column: 16, scope: !930)
!940 = !DILocation(line: 618, column: 21, scope: !930)
!941 = !DILocation(line: 620, column: 28, scope: !930)
!942 = !DILocation(line: 620, column: 34, scope: !930)
!943 = !DILocation(line: 620, column: 4, scope: !930)
!944 = !DILocation(line: 620, column: 12, scope: !930)
!945 = !DILocation(line: 620, column: 21, scope: !930)
!946 = !DILocation(line: 620, column: 26, scope: !930)
!947 = !DILocation(line: 621, column: 7, scope: !948)
!948 = distinct !DILexicalBlock(scope: !931, file: !2, line: 621, column: 7)
!949 = !DILocation(line: 621, column: 13, scope: !948)
!950 = !DILocation(line: 621, column: 18, scope: !948)
!951 = !DILocation(line: 621, column: 7, scope: !931)
!952 = !DILocation(line: 622, column: 23, scope: !948)
!953 = !DILocation(line: 622, column: 29, scope: !948)
!954 = !DILocation(line: 622, column: 4, scope: !948)
!955 = !DILocation(line: 622, column: 10, scope: !948)
!956 = !DILocation(line: 622, column: 16, scope: !948)
!957 = !DILocation(line: 622, column: 21, scope: !948)
!958 = !DILocation(line: 624, column: 28, scope: !948)
!959 = !DILocation(line: 624, column: 34, scope: !948)
!960 = !DILocation(line: 624, column: 4, scope: !948)
!961 = !DILocation(line: 624, column: 12, scope: !948)
!962 = !DILocation(line: 624, column: 21, scope: !948)
!963 = !DILocation(line: 624, column: 26, scope: !948)
!964 = !DILocation(line: 626, column: 8, scope: !931)
!965 = !DILocation(line: 626, column: 14, scope: !931)
!966 = !DILocation(line: 626, column: 3, scope: !931)
!967 = !DILocation(line: 628, column: 3, scope: !931)
!968 = !DILocation(line: 628, column: 9, scope: !931)
!969 = !DILocation(line: 628, column: 16, scope: !931)
!970 = !DILocation(line: 629, column: 16, scope: !931)
!971 = !DILocation(line: 629, column: 22, scope: !931)
!972 = !DILocation(line: 629, column: 27, scope: !931)
!973 = !DILocation(line: 629, column: 3, scope: !931)
!974 = !DILocation(line: 629, column: 9, scope: !931)
!975 = !DILocation(line: 629, column: 14, scope: !931)
!976 = !DILocation(line: 630, column: 3, scope: !931)
!977 = !DILocation(line: 630, column: 9, scope: !931)
!978 = !DILocation(line: 630, column: 13, scope: !931)
!979 = !DILocation(line: 631, column: 2, scope: !931)
!980 = !DILocation(line: 632, column: 1, scope: !918)
!981 = distinct !DISubprogram(name: "json_validate", scope: !2, file: !2, line: 444, type: !982, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!982 = !DISubroutineType(types: !983)
!983 = !{!247, !280}
!984 = !DILocalVariable(name: "json", arg: 1, scope: !981, file: !2, line: 444, type: !280)
!985 = !DILocation(line: 444, column: 32, scope: !981)
!986 = !DILocalVariable(name: "s", scope: !981, file: !2, line: 446, type: !280)
!987 = !DILocation(line: 446, column: 14, scope: !981)
!988 = !DILocation(line: 446, column: 18, scope: !981)
!989 = !DILocation(line: 448, column: 2, scope: !981)
!990 = !DILocation(line: 449, column: 7, scope: !991)
!991 = distinct !DILexicalBlock(scope: !981, file: !2, line: 449, column: 6)
!992 = !DILocation(line: 449, column: 6, scope: !981)
!993 = !DILocation(line: 450, column: 3, scope: !991)
!994 = !DILocation(line: 452, column: 2, scope: !981)
!995 = !DILocation(line: 453, column: 7, scope: !996)
!996 = distinct !DILexicalBlock(scope: !981, file: !2, line: 453, column: 6)
!997 = !DILocation(line: 453, column: 6, scope: !996)
!998 = !DILocation(line: 453, column: 9, scope: !996)
!999 = !DILocation(line: 453, column: 6, scope: !981)
!1000 = !DILocation(line: 454, column: 3, scope: !996)
!1001 = !DILocation(line: 456, column: 2, scope: !981)
!1002 = !DILocation(line: 457, column: 1, scope: !981)
!1003 = distinct !DISubprogram(name: "json_find_element", scope: !2, file: !2, line: 459, type: !1004, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1004 = !DISubroutineType(types: !1005)
!1005 = !{!233, !233, !228}
!1006 = !DILocalVariable(name: "array", arg: 1, scope: !1003, file: !2, line: 459, type: !233)
!1007 = !DILocation(line: 459, column: 39, scope: !1003)
!1008 = !DILocalVariable(name: "index", arg: 2, scope: !1003, file: !2, line: 459, type: !228)
!1009 = !DILocation(line: 459, column: 50, scope: !1003)
!1010 = !DILocalVariable(name: "element", scope: !1003, file: !2, line: 461, type: !233)
!1011 = !DILocation(line: 461, column: 12, scope: !1003)
!1012 = !DILocalVariable(name: "i", scope: !1003, file: !2, line: 462, type: !228)
!1013 = !DILocation(line: 462, column: 6, scope: !1003)
!1014 = !DILocation(line: 464, column: 6, scope: !1015)
!1015 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 464, column: 6)
!1016 = !DILocation(line: 464, column: 12, scope: !1015)
!1017 = !DILocation(line: 464, column: 20, scope: !1015)
!1018 = !DILocation(line: 464, column: 23, scope: !1015)
!1019 = !DILocation(line: 464, column: 30, scope: !1015)
!1020 = !DILocation(line: 464, column: 34, scope: !1015)
!1021 = !DILocation(line: 464, column: 6, scope: !1003)
!1022 = !DILocation(line: 465, column: 3, scope: !1015)
!1023 = !DILocation(line: 467, column: 2, scope: !1024)
!1024 = distinct !DILexicalBlock(scope: !1003, file: !2, line: 467, column: 2)
!1025 = !DILocation(line: 467, column: 2, scope: !1026)
!1026 = distinct !DILexicalBlock(scope: !1024, file: !2, line: 467, column: 2)
!1027 = !DILocation(line: 468, column: 7, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1029, file: !2, line: 468, column: 7)
!1029 = distinct !DILexicalBlock(scope: !1026, file: !2, line: 467, column: 31)
!1030 = !DILocation(line: 468, column: 12, scope: !1028)
!1031 = !DILocation(line: 468, column: 9, scope: !1028)
!1032 = !DILocation(line: 468, column: 7, scope: !1029)
!1033 = !DILocation(line: 469, column: 11, scope: !1028)
!1034 = !DILocation(line: 469, column: 4, scope: !1028)
!1035 = !DILocation(line: 470, column: 4, scope: !1029)
!1036 = !DILocation(line: 471, column: 2, scope: !1029)
!1037 = distinct !{!1037, !1023, !1038, !321}
!1038 = !DILocation(line: 471, column: 2, scope: !1024)
!1039 = !DILocation(line: 473, column: 2, scope: !1003)
!1040 = !DILocation(line: 474, column: 1, scope: !1003)
!1041 = distinct !DISubprogram(name: "json_first_child", scope: !2, file: !2, line: 490, type: !1042, scopeLine: 491, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!233, !509}
!1044 = !DILocalVariable(name: "node", arg: 1, scope: !1041, file: !2, line: 490, type: !509)
!1045 = !DILocation(line: 490, column: 44, scope: !1041)
!1046 = !DILocation(line: 492, column: 6, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1041, file: !2, line: 492, column: 6)
!1048 = !DILocation(line: 492, column: 11, scope: !1047)
!1049 = !DILocation(line: 492, column: 19, scope: !1047)
!1050 = !DILocation(line: 492, column: 23, scope: !1047)
!1051 = !DILocation(line: 492, column: 29, scope: !1047)
!1052 = !DILocation(line: 492, column: 33, scope: !1047)
!1053 = !DILocation(line: 492, column: 47, scope: !1047)
!1054 = !DILocation(line: 492, column: 50, scope: !1047)
!1055 = !DILocation(line: 492, column: 56, scope: !1047)
!1056 = !DILocation(line: 492, column: 60, scope: !1047)
!1057 = !DILocation(line: 492, column: 6, scope: !1041)
!1058 = !DILocation(line: 493, column: 10, scope: !1047)
!1059 = !DILocation(line: 493, column: 16, scope: !1047)
!1060 = !DILocation(line: 493, column: 25, scope: !1047)
!1061 = !DILocation(line: 493, column: 3, scope: !1047)
!1062 = !DILocation(line: 494, column: 2, scope: !1041)
!1063 = !DILocation(line: 495, column: 1, scope: !1041)
!1064 = distinct !DISubprogram(name: "json_find_member", scope: !2, file: !2, line: 476, type: !1065, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!233, !233, !280}
!1067 = !DILocalVariable(name: "object", arg: 1, scope: !1064, file: !2, line: 476, type: !233)
!1068 = !DILocation(line: 476, column: 38, scope: !1064)
!1069 = !DILocalVariable(name: "name", arg: 2, scope: !1064, file: !2, line: 476, type: !280)
!1070 = !DILocation(line: 476, column: 58, scope: !1064)
!1071 = !DILocalVariable(name: "member", scope: !1064, file: !2, line: 478, type: !233)
!1072 = !DILocation(line: 478, column: 12, scope: !1064)
!1073 = !DILocation(line: 480, column: 6, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 480, column: 6)
!1075 = !DILocation(line: 480, column: 13, scope: !1074)
!1076 = !DILocation(line: 480, column: 21, scope: !1074)
!1077 = !DILocation(line: 480, column: 24, scope: !1074)
!1078 = !DILocation(line: 480, column: 32, scope: !1074)
!1079 = !DILocation(line: 480, column: 36, scope: !1074)
!1080 = !DILocation(line: 480, column: 6, scope: !1064)
!1081 = !DILocation(line: 481, column: 3, scope: !1074)
!1082 = !DILocation(line: 483, column: 2, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 483, column: 2)
!1084 = !DILocation(line: 483, column: 2, scope: !1085)
!1085 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 483, column: 2)
!1086 = !DILocation(line: 484, column: 14, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 484, column: 7)
!1088 = !DILocation(line: 484, column: 22, scope: !1087)
!1089 = !DILocation(line: 484, column: 27, scope: !1087)
!1090 = !DILocation(line: 484, column: 7, scope: !1087)
!1091 = !DILocation(line: 484, column: 33, scope: !1087)
!1092 = !DILocation(line: 484, column: 7, scope: !1085)
!1093 = !DILocation(line: 485, column: 11, scope: !1087)
!1094 = !DILocation(line: 485, column: 4, scope: !1087)
!1095 = !DILocation(line: 484, column: 36, scope: !1087)
!1096 = distinct !{!1096, !1082, !1097, !321}
!1097 = !DILocation(line: 485, column: 11, scope: !1083)
!1098 = !DILocation(line: 487, column: 2, scope: !1064)
!1099 = !DILocation(line: 488, column: 1, scope: !1064)
!1100 = distinct !DISubprogram(name: "json_mknull", scope: !2, file: !2, line: 506, type: !1101, scopeLine: 507, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1101 = !DISubroutineType(types: !1102)
!1102 = !{!233}
!1103 = !DILocation(line: 508, column: 9, scope: !1100)
!1104 = !DILocation(line: 508, column: 2, scope: !1100)
!1105 = distinct !DISubprogram(name: "mknode", scope: !2, file: !2, line: 497, type: !1106, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1106 = !DISubroutineType(types: !1107)
!1107 = !{!233, !242}
!1108 = !DILocalVariable(name: "tag", arg: 1, scope: !1105, file: !2, line: 497, type: !242)
!1109 = !DILocation(line: 497, column: 33, scope: !1105)
!1110 = !DILocalVariable(name: "ret", scope: !1105, file: !2, line: 499, type: !233)
!1111 = !DILocation(line: 499, column: 12, scope: !1105)
!1112 = !DILocation(line: 499, column: 30, scope: !1105)
!1113 = !DILocation(line: 500, column: 6, scope: !1114)
!1114 = distinct !DILexicalBlock(scope: !1105, file: !2, line: 500, column: 6)
!1115 = !DILocation(line: 500, column: 10, scope: !1114)
!1116 = !DILocation(line: 500, column: 6, scope: !1105)
!1117 = !DILocation(line: 501, column: 3, scope: !1114)
!1118 = !DILocation(line: 501, column: 3, scope: !1119)
!1119 = distinct !DILexicalBlock(scope: !1114, file: !2, line: 501, column: 3)
!1120 = !DILocation(line: 502, column: 13, scope: !1105)
!1121 = !DILocation(line: 502, column: 2, scope: !1105)
!1122 = !DILocation(line: 502, column: 7, scope: !1105)
!1123 = !DILocation(line: 502, column: 11, scope: !1105)
!1124 = !DILocation(line: 503, column: 9, scope: !1105)
!1125 = !DILocation(line: 503, column: 2, scope: !1105)
!1126 = distinct !DISubprogram(name: "json_mkbool", scope: !2, file: !2, line: 511, type: !1127, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1127 = !DISubroutineType(types: !1128)
!1128 = !{!233, !247}
!1129 = !DILocalVariable(name: "b", arg: 1, scope: !1126, file: !2, line: 511, type: !247)
!1130 = !DILocation(line: 511, column: 28, scope: !1126)
!1131 = !DILocalVariable(name: "ret", scope: !1126, file: !2, line: 513, type: !233)
!1132 = !DILocation(line: 513, column: 12, scope: !1126)
!1133 = !DILocation(line: 513, column: 18, scope: !1126)
!1134 = !DILocation(line: 514, column: 15, scope: !1126)
!1135 = !DILocation(line: 514, column: 2, scope: !1126)
!1136 = !DILocation(line: 514, column: 7, scope: !1126)
!1137 = !DILocation(line: 514, column: 13, scope: !1126)
!1138 = !DILocation(line: 515, column: 9, scope: !1126)
!1139 = !DILocation(line: 515, column: 2, scope: !1126)
!1140 = distinct !DISubprogram(name: "json_mkstring", scope: !2, file: !2, line: 525, type: !278, scopeLine: 526, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1141 = !DILocalVariable(name: "s", arg: 1, scope: !1140, file: !2, line: 525, type: !280)
!1142 = !DILocation(line: 525, column: 37, scope: !1140)
!1143 = !DILocation(line: 527, column: 25, scope: !1140)
!1144 = !DILocation(line: 527, column: 18, scope: !1140)
!1145 = !DILocation(line: 527, column: 9, scope: !1140)
!1146 = !DILocation(line: 527, column: 2, scope: !1140)
!1147 = distinct !DISubprogram(name: "mkstring", scope: !2, file: !2, line: 518, type: !1148, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1148 = !DISubroutineType(types: !1149)
!1149 = !{!233, !229}
!1150 = !DILocalVariable(name: "s", arg: 1, scope: !1147, file: !2, line: 518, type: !229)
!1151 = !DILocation(line: 518, column: 33, scope: !1147)
!1152 = !DILocalVariable(name: "ret", scope: !1147, file: !2, line: 520, type: !233)
!1153 = !DILocation(line: 520, column: 12, scope: !1147)
!1154 = !DILocation(line: 520, column: 18, scope: !1147)
!1155 = !DILocation(line: 521, column: 17, scope: !1147)
!1156 = !DILocation(line: 521, column: 2, scope: !1147)
!1157 = !DILocation(line: 521, column: 7, scope: !1147)
!1158 = !DILocation(line: 521, column: 15, scope: !1147)
!1159 = !DILocation(line: 522, column: 9, scope: !1147)
!1160 = !DILocation(line: 522, column: 2, scope: !1147)
!1161 = distinct !DISubprogram(name: "json_mknumber", scope: !2, file: !2, line: 530, type: !1162, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1162 = !DISubroutineType(types: !1163)
!1163 = !{!233, !250}
!1164 = !DILocalVariable(name: "n", arg: 1, scope: !1161, file: !2, line: 530, type: !250)
!1165 = !DILocation(line: 530, column: 32, scope: !1161)
!1166 = !DILocalVariable(name: "node", scope: !1161, file: !2, line: 532, type: !233)
!1167 = !DILocation(line: 532, column: 12, scope: !1161)
!1168 = !DILocation(line: 532, column: 19, scope: !1161)
!1169 = !DILocation(line: 533, column: 18, scope: !1161)
!1170 = !DILocation(line: 533, column: 2, scope: !1161)
!1171 = !DILocation(line: 533, column: 8, scope: !1161)
!1172 = !DILocation(line: 533, column: 16, scope: !1161)
!1173 = !DILocation(line: 534, column: 9, scope: !1161)
!1174 = !DILocation(line: 534, column: 2, scope: !1161)
!1175 = distinct !DISubprogram(name: "json_mkarray", scope: !2, file: !2, line: 537, type: !1101, scopeLine: 538, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1176 = !DILocation(line: 539, column: 9, scope: !1175)
!1177 = !DILocation(line: 539, column: 2, scope: !1175)
!1178 = distinct !DISubprogram(name: "json_mkobject", scope: !2, file: !2, line: 542, type: !1101, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1179 = !DILocation(line: 544, column: 9, scope: !1178)
!1180 = !DILocation(line: 544, column: 2, scope: !1178)
!1181 = distinct !DISubprogram(name: "json_append_element", scope: !2, file: !2, line: 579, type: !1182, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !233, !233}
!1184 = !DILocalVariable(name: "array", arg: 1, scope: !1181, file: !2, line: 579, type: !233)
!1185 = !DILocation(line: 579, column: 36, scope: !1181)
!1186 = !DILocalVariable(name: "element", arg: 2, scope: !1181, file: !2, line: 579, type: !233)
!1187 = !DILocation(line: 579, column: 53, scope: !1181)
!1188 = !DILocation(line: 581, column: 2, scope: !1189)
!1189 = distinct !DILexicalBlock(scope: !1190, file: !2, line: 581, column: 2)
!1190 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 581, column: 2)
!1191 = !DILocation(line: 581, column: 2, scope: !1190)
!1192 = !DILocation(line: 582, column: 2, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1194, file: !2, line: 582, column: 2)
!1194 = distinct !DILexicalBlock(scope: !1181, file: !2, line: 582, column: 2)
!1195 = !DILocation(line: 582, column: 2, scope: !1194)
!1196 = !DILocation(line: 584, column: 14, scope: !1181)
!1197 = !DILocation(line: 584, column: 21, scope: !1181)
!1198 = !DILocation(line: 584, column: 2, scope: !1181)
!1199 = !DILocation(line: 585, column: 1, scope: !1181)
!1200 = distinct !DISubprogram(name: "append_node", scope: !2, file: !2, line: 547, type: !1182, scopeLine: 548, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1201 = !DILocalVariable(name: "parent", arg: 1, scope: !1200, file: !2, line: 547, type: !233)
!1202 = !DILocation(line: 547, column: 35, scope: !1200)
!1203 = !DILocalVariable(name: "child", arg: 2, scope: !1200, file: !2, line: 547, type: !233)
!1204 = !DILocation(line: 547, column: 53, scope: !1200)
!1205 = !DILocation(line: 549, column: 18, scope: !1200)
!1206 = !DILocation(line: 549, column: 2, scope: !1200)
!1207 = !DILocation(line: 549, column: 9, scope: !1200)
!1208 = !DILocation(line: 549, column: 16, scope: !1200)
!1209 = !DILocation(line: 550, column: 16, scope: !1200)
!1210 = !DILocation(line: 550, column: 24, scope: !1200)
!1211 = !DILocation(line: 550, column: 33, scope: !1200)
!1212 = !DILocation(line: 550, column: 2, scope: !1200)
!1213 = !DILocation(line: 550, column: 9, scope: !1200)
!1214 = !DILocation(line: 550, column: 14, scope: !1200)
!1215 = !DILocation(line: 551, column: 2, scope: !1200)
!1216 = !DILocation(line: 551, column: 9, scope: !1200)
!1217 = !DILocation(line: 551, column: 14, scope: !1200)
!1218 = !DILocation(line: 553, column: 6, scope: !1219)
!1219 = distinct !DILexicalBlock(scope: !1200, file: !2, line: 553, column: 6)
!1220 = !DILocation(line: 553, column: 14, scope: !1219)
!1221 = !DILocation(line: 553, column: 23, scope: !1219)
!1222 = !DILocation(line: 553, column: 28, scope: !1219)
!1223 = !DILocation(line: 553, column: 6, scope: !1200)
!1224 = !DILocation(line: 554, column: 33, scope: !1219)
!1225 = !DILocation(line: 554, column: 3, scope: !1219)
!1226 = !DILocation(line: 554, column: 11, scope: !1219)
!1227 = !DILocation(line: 554, column: 20, scope: !1219)
!1228 = !DILocation(line: 554, column: 26, scope: !1219)
!1229 = !DILocation(line: 554, column: 31, scope: !1219)
!1230 = !DILocation(line: 556, column: 27, scope: !1219)
!1231 = !DILocation(line: 556, column: 3, scope: !1219)
!1232 = !DILocation(line: 556, column: 11, scope: !1219)
!1233 = !DILocation(line: 556, column: 20, scope: !1219)
!1234 = !DILocation(line: 556, column: 25, scope: !1219)
!1235 = !DILocation(line: 557, column: 26, scope: !1200)
!1236 = !DILocation(line: 557, column: 2, scope: !1200)
!1237 = !DILocation(line: 557, column: 10, scope: !1200)
!1238 = !DILocation(line: 557, column: 19, scope: !1200)
!1239 = !DILocation(line: 557, column: 24, scope: !1200)
!1240 = !DILocation(line: 558, column: 1, scope: !1200)
!1241 = distinct !DISubprogram(name: "json_prepend_element", scope: !2, file: !2, line: 587, type: !1182, scopeLine: 588, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1242 = !DILocalVariable(name: "array", arg: 1, scope: !1241, file: !2, line: 587, type: !233)
!1243 = !DILocation(line: 587, column: 37, scope: !1241)
!1244 = !DILocalVariable(name: "element", arg: 2, scope: !1241, file: !2, line: 587, type: !233)
!1245 = !DILocation(line: 587, column: 54, scope: !1241)
!1246 = !DILocation(line: 589, column: 2, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 589, column: 2)
!1248 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 589, column: 2)
!1249 = !DILocation(line: 589, column: 2, scope: !1248)
!1250 = !DILocation(line: 590, column: 2, scope: !1251)
!1251 = distinct !DILexicalBlock(scope: !1252, file: !2, line: 590, column: 2)
!1252 = distinct !DILexicalBlock(scope: !1241, file: !2, line: 590, column: 2)
!1253 = !DILocation(line: 590, column: 2, scope: !1252)
!1254 = !DILocation(line: 592, column: 15, scope: !1241)
!1255 = !DILocation(line: 592, column: 22, scope: !1241)
!1256 = !DILocation(line: 592, column: 2, scope: !1241)
!1257 = !DILocation(line: 593, column: 1, scope: !1241)
!1258 = distinct !DISubprogram(name: "prepend_node", scope: !2, file: !2, line: 560, type: !1182, scopeLine: 561, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1259 = !DILocalVariable(name: "parent", arg: 1, scope: !1258, file: !2, line: 560, type: !233)
!1260 = !DILocation(line: 560, column: 36, scope: !1258)
!1261 = !DILocalVariable(name: "child", arg: 2, scope: !1258, file: !2, line: 560, type: !233)
!1262 = !DILocation(line: 560, column: 54, scope: !1258)
!1263 = !DILocation(line: 562, column: 18, scope: !1258)
!1264 = !DILocation(line: 562, column: 2, scope: !1258)
!1265 = !DILocation(line: 562, column: 9, scope: !1258)
!1266 = !DILocation(line: 562, column: 16, scope: !1258)
!1267 = !DILocation(line: 563, column: 2, scope: !1258)
!1268 = !DILocation(line: 563, column: 9, scope: !1258)
!1269 = !DILocation(line: 563, column: 14, scope: !1258)
!1270 = !DILocation(line: 564, column: 16, scope: !1258)
!1271 = !DILocation(line: 564, column: 24, scope: !1258)
!1272 = !DILocation(line: 564, column: 33, scope: !1258)
!1273 = !DILocation(line: 564, column: 2, scope: !1258)
!1274 = !DILocation(line: 564, column: 9, scope: !1258)
!1275 = !DILocation(line: 564, column: 14, scope: !1258)
!1276 = !DILocation(line: 566, column: 6, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1258, file: !2, line: 566, column: 6)
!1278 = !DILocation(line: 566, column: 14, scope: !1277)
!1279 = !DILocation(line: 566, column: 23, scope: !1277)
!1280 = !DILocation(line: 566, column: 28, scope: !1277)
!1281 = !DILocation(line: 566, column: 6, scope: !1258)
!1282 = !DILocation(line: 567, column: 33, scope: !1277)
!1283 = !DILocation(line: 567, column: 3, scope: !1277)
!1284 = !DILocation(line: 567, column: 11, scope: !1277)
!1285 = !DILocation(line: 567, column: 20, scope: !1277)
!1286 = !DILocation(line: 567, column: 26, scope: !1277)
!1287 = !DILocation(line: 567, column: 31, scope: !1277)
!1288 = !DILocation(line: 569, column: 27, scope: !1277)
!1289 = !DILocation(line: 569, column: 3, scope: !1277)
!1290 = !DILocation(line: 569, column: 11, scope: !1277)
!1291 = !DILocation(line: 569, column: 20, scope: !1277)
!1292 = !DILocation(line: 569, column: 25, scope: !1277)
!1293 = !DILocation(line: 570, column: 26, scope: !1258)
!1294 = !DILocation(line: 570, column: 2, scope: !1258)
!1295 = !DILocation(line: 570, column: 10, scope: !1258)
!1296 = !DILocation(line: 570, column: 19, scope: !1258)
!1297 = !DILocation(line: 570, column: 24, scope: !1258)
!1298 = !DILocation(line: 571, column: 1, scope: !1258)
!1299 = distinct !DISubprogram(name: "json_append_member", scope: !2, file: !2, line: 595, type: !1300, scopeLine: 596, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1300 = !DISubroutineType(types: !1301)
!1301 = !{null, !233, !280, !233}
!1302 = !DILocalVariable(name: "object", arg: 1, scope: !1299, file: !2, line: 595, type: !233)
!1303 = !DILocation(line: 595, column: 35, scope: !1299)
!1304 = !DILocalVariable(name: "key", arg: 2, scope: !1299, file: !2, line: 595, type: !280)
!1305 = !DILocation(line: 595, column: 55, scope: !1299)
!1306 = !DILocalVariable(name: "value", arg: 3, scope: !1299, file: !2, line: 595, type: !233)
!1307 = !DILocation(line: 595, column: 70, scope: !1299)
!1308 = !DILocation(line: 597, column: 2, scope: !1309)
!1309 = distinct !DILexicalBlock(scope: !1310, file: !2, line: 597, column: 2)
!1310 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 597, column: 2)
!1311 = !DILocation(line: 597, column: 2, scope: !1310)
!1312 = !DILocation(line: 598, column: 2, scope: !1313)
!1313 = distinct !DILexicalBlock(scope: !1314, file: !2, line: 598, column: 2)
!1314 = distinct !DILexicalBlock(scope: !1299, file: !2, line: 598, column: 2)
!1315 = !DILocation(line: 598, column: 2, scope: !1314)
!1316 = !DILocation(line: 600, column: 16, scope: !1299)
!1317 = !DILocation(line: 600, column: 31, scope: !1299)
!1318 = !DILocation(line: 600, column: 24, scope: !1299)
!1319 = !DILocation(line: 600, column: 37, scope: !1299)
!1320 = !DILocation(line: 600, column: 2, scope: !1299)
!1321 = !DILocation(line: 601, column: 1, scope: !1299)
!1322 = distinct !DISubprogram(name: "append_member", scope: !2, file: !2, line: 573, type: !1323, scopeLine: 574, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1323 = !DISubroutineType(types: !1324)
!1324 = !{null, !233, !229, !233}
!1325 = !DILocalVariable(name: "object", arg: 1, scope: !1322, file: !2, line: 573, type: !233)
!1326 = !DILocation(line: 573, column: 37, scope: !1322)
!1327 = !DILocalVariable(name: "key", arg: 2, scope: !1322, file: !2, line: 573, type: !229)
!1328 = !DILocation(line: 573, column: 51, scope: !1322)
!1329 = !DILocalVariable(name: "value", arg: 3, scope: !1322, file: !2, line: 573, type: !233)
!1330 = !DILocation(line: 573, column: 66, scope: !1322)
!1331 = !DILocation(line: 575, column: 15, scope: !1322)
!1332 = !DILocation(line: 575, column: 2, scope: !1322)
!1333 = !DILocation(line: 575, column: 9, scope: !1322)
!1334 = !DILocation(line: 575, column: 13, scope: !1322)
!1335 = !DILocation(line: 576, column: 14, scope: !1322)
!1336 = !DILocation(line: 576, column: 22, scope: !1322)
!1337 = !DILocation(line: 576, column: 2, scope: !1322)
!1338 = !DILocation(line: 577, column: 1, scope: !1322)
!1339 = distinct !DISubprogram(name: "json_prepend_member", scope: !2, file: !2, line: 603, type: !1300, scopeLine: 604, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1340 = !DILocalVariable(name: "object", arg: 1, scope: !1339, file: !2, line: 603, type: !233)
!1341 = !DILocation(line: 603, column: 36, scope: !1339)
!1342 = !DILocalVariable(name: "key", arg: 2, scope: !1339, file: !2, line: 603, type: !280)
!1343 = !DILocation(line: 603, column: 56, scope: !1339)
!1344 = !DILocalVariable(name: "value", arg: 3, scope: !1339, file: !2, line: 603, type: !233)
!1345 = !DILocation(line: 603, column: 71, scope: !1339)
!1346 = !DILocation(line: 605, column: 2, scope: !1347)
!1347 = distinct !DILexicalBlock(scope: !1348, file: !2, line: 605, column: 2)
!1348 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 605, column: 2)
!1349 = !DILocation(line: 605, column: 2, scope: !1348)
!1350 = !DILocation(line: 606, column: 2, scope: !1351)
!1351 = distinct !DILexicalBlock(scope: !1352, file: !2, line: 606, column: 2)
!1352 = distinct !DILexicalBlock(scope: !1339, file: !2, line: 606, column: 2)
!1353 = !DILocation(line: 606, column: 2, scope: !1352)
!1354 = !DILocation(line: 608, column: 22, scope: !1339)
!1355 = !DILocation(line: 608, column: 15, scope: !1339)
!1356 = !DILocation(line: 608, column: 2, scope: !1339)
!1357 = !DILocation(line: 608, column: 9, scope: !1339)
!1358 = !DILocation(line: 608, column: 13, scope: !1339)
!1359 = !DILocation(line: 609, column: 15, scope: !1339)
!1360 = !DILocation(line: 609, column: 23, scope: !1339)
!1361 = !DILocation(line: 609, column: 2, scope: !1339)
!1362 = !DILocation(line: 610, column: 1, scope: !1339)
!1363 = distinct !DISubprogram(name: "json_check", scope: !2, file: !2, line: 1316, type: !1364, scopeLine: 1317, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1364 = !DISubroutineType(types: !1365)
!1365 = !{!247, !509, !229}
!1366 = !DILocalVariable(name: "node", arg: 1, scope: !1363, file: !2, line: 1316, type: !509)
!1367 = !DILocation(line: 1316, column: 33, scope: !1363)
!1368 = !DILocalVariable(name: "errmsg", arg: 2, scope: !1363, file: !2, line: 1316, type: !229)
!1369 = !DILocation(line: 1316, column: 44, scope: !1363)
!1370 = !DILocation(line: 1324, column: 6, scope: !1371)
!1371 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 1324, column: 6)
!1372 = !DILocation(line: 1324, column: 12, scope: !1371)
!1373 = !DILocation(line: 1324, column: 16, scope: !1371)
!1374 = !DILocation(line: 1324, column: 24, scope: !1371)
!1375 = !DILocation(line: 1324, column: 42, scope: !1371)
!1376 = !DILocation(line: 1324, column: 48, scope: !1371)
!1377 = !DILocation(line: 1324, column: 28, scope: !1371)
!1378 = !DILocation(line: 1324, column: 6, scope: !1363)
!1379 = !DILocation(line: 1325, column: 3, scope: !1371)
!1380 = !DILocation(line: 1325, column: 3, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1382, file: !2, line: 1325, column: 3)
!1382 = distinct !DILexicalBlock(scope: !1371, file: !2, line: 1325, column: 3)
!1383 = !DILocation(line: 1325, column: 3, scope: !1382)
!1384 = !DILocation(line: 1327, column: 20, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 1327, column: 6)
!1386 = !DILocation(line: 1327, column: 26, scope: !1385)
!1387 = !DILocation(line: 1327, column: 7, scope: !1385)
!1388 = !DILocation(line: 1327, column: 6, scope: !1363)
!1389 = !DILocation(line: 1328, column: 3, scope: !1385)
!1390 = !DILocation(line: 1328, column: 3, scope: !1391)
!1391 = distinct !DILexicalBlock(scope: !1392, file: !2, line: 1328, column: 3)
!1392 = distinct !DILexicalBlock(scope: !1385, file: !2, line: 1328, column: 3)
!1393 = !DILocation(line: 1328, column: 3, scope: !1392)
!1394 = !DILocation(line: 1330, column: 6, scope: !1395)
!1395 = distinct !DILexicalBlock(scope: !1363, file: !2, line: 1330, column: 6)
!1396 = !DILocation(line: 1330, column: 12, scope: !1395)
!1397 = !DILocation(line: 1330, column: 16, scope: !1395)
!1398 = !DILocation(line: 1330, column: 6, scope: !1363)
!1399 = !DILocation(line: 1331, column: 7, scope: !1400)
!1400 = distinct !DILexicalBlock(scope: !1401, file: !2, line: 1331, column: 7)
!1401 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 1330, column: 30)
!1402 = !DILocation(line: 1331, column: 13, scope: !1400)
!1403 = !DILocation(line: 1331, column: 19, scope: !1400)
!1404 = !DILocation(line: 1331, column: 28, scope: !1400)
!1405 = !DILocation(line: 1331, column: 31, scope: !1400)
!1406 = !DILocation(line: 1331, column: 37, scope: !1400)
!1407 = !DILocation(line: 1331, column: 43, scope: !1400)
!1408 = !DILocation(line: 1331, column: 7, scope: !1401)
!1409 = !DILocation(line: 1332, column: 4, scope: !1400)
!1410 = !DILocation(line: 1332, column: 4, scope: !1411)
!1411 = distinct !DILexicalBlock(scope: !1412, file: !2, line: 1332, column: 4)
!1412 = distinct !DILexicalBlock(scope: !1400, file: !2, line: 1332, column: 4)
!1413 = !DILocation(line: 1332, column: 4, scope: !1412)
!1414 = !DILocation(line: 1333, column: 2, scope: !1401)
!1415 = !DILocation(line: 1333, column: 13, scope: !1416)
!1416 = distinct !DILexicalBlock(scope: !1395, file: !2, line: 1333, column: 13)
!1417 = !DILocation(line: 1333, column: 19, scope: !1416)
!1418 = !DILocation(line: 1333, column: 23, scope: !1416)
!1419 = !DILocation(line: 1333, column: 13, scope: !1395)
!1420 = !DILocation(line: 1334, column: 7, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 1334, column: 7)
!1422 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 1333, column: 39)
!1423 = !DILocation(line: 1334, column: 13, scope: !1421)
!1424 = !DILocation(line: 1334, column: 21, scope: !1421)
!1425 = !DILocation(line: 1334, column: 7, scope: !1422)
!1426 = !DILocation(line: 1335, column: 4, scope: !1421)
!1427 = !DILocation(line: 1335, column: 4, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1429, file: !2, line: 1335, column: 4)
!1429 = distinct !DILexicalBlock(scope: !1421, file: !2, line: 1335, column: 4)
!1430 = !DILocation(line: 1335, column: 4, scope: !1429)
!1431 = !DILocation(line: 1336, column: 22, scope: !1432)
!1432 = distinct !DILexicalBlock(scope: !1422, file: !2, line: 1336, column: 7)
!1433 = !DILocation(line: 1336, column: 28, scope: !1432)
!1434 = !DILocation(line: 1336, column: 8, scope: !1432)
!1435 = !DILocation(line: 1336, column: 7, scope: !1422)
!1436 = !DILocation(line: 1337, column: 4, scope: !1432)
!1437 = !DILocation(line: 1337, column: 4, scope: !1438)
!1438 = distinct !DILexicalBlock(scope: !1439, file: !2, line: 1337, column: 4)
!1439 = distinct !DILexicalBlock(scope: !1432, file: !2, line: 1337, column: 4)
!1440 = !DILocation(line: 1337, column: 4, scope: !1439)
!1441 = !DILocation(line: 1338, column: 2, scope: !1422)
!1442 = !DILocation(line: 1338, column: 13, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1416, file: !2, line: 1338, column: 13)
!1444 = !DILocation(line: 1338, column: 19, scope: !1443)
!1445 = !DILocation(line: 1338, column: 23, scope: !1443)
!1446 = !DILocation(line: 1338, column: 37, scope: !1443)
!1447 = !DILocation(line: 1338, column: 40, scope: !1443)
!1448 = !DILocation(line: 1338, column: 46, scope: !1443)
!1449 = !DILocation(line: 1338, column: 50, scope: !1443)
!1450 = !DILocation(line: 1338, column: 13, scope: !1416)
!1451 = !DILocalVariable(name: "head", scope: !1452, file: !2, line: 1339, type: !233)
!1452 = distinct !DILexicalBlock(scope: !1443, file: !2, line: 1338, column: 66)
!1453 = !DILocation(line: 1339, column: 13, scope: !1452)
!1454 = !DILocation(line: 1339, column: 20, scope: !1452)
!1455 = !DILocation(line: 1339, column: 26, scope: !1452)
!1456 = !DILocation(line: 1339, column: 35, scope: !1452)
!1457 = !DILocalVariable(name: "tail", scope: !1452, file: !2, line: 1340, type: !233)
!1458 = !DILocation(line: 1340, column: 13, scope: !1452)
!1459 = !DILocation(line: 1340, column: 20, scope: !1452)
!1460 = !DILocation(line: 1340, column: 26, scope: !1452)
!1461 = !DILocation(line: 1340, column: 35, scope: !1452)
!1462 = !DILocation(line: 1342, column: 7, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1452, file: !2, line: 1342, column: 7)
!1464 = !DILocation(line: 1342, column: 12, scope: !1463)
!1465 = !DILocation(line: 1342, column: 20, scope: !1463)
!1466 = !DILocation(line: 1342, column: 23, scope: !1463)
!1467 = !DILocation(line: 1342, column: 28, scope: !1463)
!1468 = !DILocation(line: 1342, column: 7, scope: !1452)
!1469 = !DILocation(line: 1343, column: 8, scope: !1470)
!1470 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 1343, column: 8)
!1471 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 1342, column: 37)
!1472 = !DILocation(line: 1343, column: 13, scope: !1470)
!1473 = !DILocation(line: 1343, column: 8, scope: !1471)
!1474 = !DILocation(line: 1344, column: 5, scope: !1470)
!1475 = !DILocation(line: 1344, column: 5, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1477, file: !2, line: 1344, column: 5)
!1477 = distinct !DILexicalBlock(scope: !1470, file: !2, line: 1344, column: 5)
!1478 = !DILocation(line: 1344, column: 5, scope: !1477)
!1479 = !DILocation(line: 1345, column: 8, scope: !1480)
!1480 = distinct !DILexicalBlock(scope: !1471, file: !2, line: 1345, column: 8)
!1481 = !DILocation(line: 1345, column: 13, scope: !1480)
!1482 = !DILocation(line: 1345, column: 8, scope: !1471)
!1483 = !DILocation(line: 1346, column: 5, scope: !1480)
!1484 = !DILocation(line: 1346, column: 5, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1486, file: !2, line: 1346, column: 5)
!1486 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 1346, column: 5)
!1487 = !DILocation(line: 1346, column: 5, scope: !1486)
!1488 = !DILocation(line: 1347, column: 3, scope: !1471)
!1489 = !DILocalVariable(name: "child", scope: !1490, file: !2, line: 1348, type: !233)
!1490 = distinct !DILexicalBlock(scope: !1463, file: !2, line: 1347, column: 10)
!1491 = !DILocation(line: 1348, column: 14, scope: !1490)
!1492 = !DILocalVariable(name: "last", scope: !1490, file: !2, line: 1349, type: !233)
!1493 = !DILocation(line: 1349, column: 14, scope: !1490)
!1494 = !DILocation(line: 1351, column: 8, scope: !1495)
!1495 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1351, column: 8)
!1496 = !DILocation(line: 1351, column: 14, scope: !1495)
!1497 = !DILocation(line: 1351, column: 19, scope: !1495)
!1498 = !DILocation(line: 1351, column: 8, scope: !1490)
!1499 = !DILocation(line: 1352, column: 5, scope: !1495)
!1500 = !DILocation(line: 1352, column: 5, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1502, file: !2, line: 1352, column: 5)
!1502 = distinct !DILexicalBlock(scope: !1495, file: !2, line: 1352, column: 5)
!1503 = !DILocation(line: 1352, column: 5, scope: !1502)
!1504 = !DILocation(line: 1354, column: 17, scope: !1505)
!1505 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1354, column: 4)
!1506 = !DILocation(line: 1354, column: 15, scope: !1505)
!1507 = !DILocation(line: 1354, column: 9, scope: !1505)
!1508 = !DILocation(line: 1354, column: 23, scope: !1509)
!1509 = distinct !DILexicalBlock(scope: !1505, file: !2, line: 1354, column: 4)
!1510 = !DILocation(line: 1354, column: 29, scope: !1509)
!1511 = !DILocation(line: 1354, column: 4, scope: !1505)
!1512 = !DILocation(line: 1355, column: 9, scope: !1513)
!1513 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1355, column: 9)
!1514 = distinct !DILexicalBlock(scope: !1509, file: !2, line: 1354, column: 73)
!1515 = !DILocation(line: 1355, column: 18, scope: !1513)
!1516 = !DILocation(line: 1355, column: 15, scope: !1513)
!1517 = !DILocation(line: 1355, column: 9, scope: !1514)
!1518 = !DILocation(line: 1356, column: 6, scope: !1513)
!1519 = !DILocation(line: 1356, column: 6, scope: !1520)
!1520 = distinct !DILexicalBlock(scope: !1521, file: !2, line: 1356, column: 6)
!1521 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 1356, column: 6)
!1522 = !DILocation(line: 1356, column: 6, scope: !1521)
!1523 = !DILocation(line: 1357, column: 9, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1357, column: 9)
!1525 = !DILocation(line: 1357, column: 16, scope: !1524)
!1526 = !DILocation(line: 1357, column: 24, scope: !1524)
!1527 = !DILocation(line: 1357, column: 21, scope: !1524)
!1528 = !DILocation(line: 1357, column: 9, scope: !1514)
!1529 = !DILocation(line: 1358, column: 6, scope: !1524)
!1530 = !DILocation(line: 1358, column: 6, scope: !1531)
!1531 = distinct !DILexicalBlock(scope: !1532, file: !2, line: 1358, column: 6)
!1532 = distinct !DILexicalBlock(scope: !1524, file: !2, line: 1358, column: 6)
!1533 = !DILocation(line: 1358, column: 6, scope: !1532)
!1534 = !DILocation(line: 1359, column: 9, scope: !1535)
!1535 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1359, column: 9)
!1536 = !DILocation(line: 1359, column: 16, scope: !1535)
!1537 = !DILocation(line: 1359, column: 24, scope: !1535)
!1538 = !DILocation(line: 1359, column: 21, scope: !1535)
!1539 = !DILocation(line: 1359, column: 9, scope: !1514)
!1540 = !DILocation(line: 1360, column: 6, scope: !1535)
!1541 = !DILocation(line: 1360, column: 6, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1543, file: !2, line: 1360, column: 6)
!1543 = distinct !DILexicalBlock(scope: !1535, file: !2, line: 1360, column: 6)
!1544 = !DILocation(line: 1360, column: 6, scope: !1543)
!1545 = !DILocation(line: 1362, column: 9, scope: !1546)
!1546 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1362, column: 9)
!1547 = !DILocation(line: 1362, column: 16, scope: !1546)
!1548 = !DILocation(line: 1362, column: 26, scope: !1546)
!1549 = !DILocation(line: 1362, column: 23, scope: !1546)
!1550 = !DILocation(line: 1362, column: 9, scope: !1514)
!1551 = !DILocation(line: 1363, column: 6, scope: !1546)
!1552 = !DILocation(line: 1363, column: 6, scope: !1553)
!1553 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 1363, column: 6)
!1554 = distinct !DILexicalBlock(scope: !1546, file: !2, line: 1363, column: 6)
!1555 = !DILocation(line: 1363, column: 6, scope: !1554)
!1556 = !DILocation(line: 1364, column: 9, scope: !1557)
!1557 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1364, column: 9)
!1558 = !DILocation(line: 1364, column: 16, scope: !1557)
!1559 = !DILocation(line: 1364, column: 21, scope: !1557)
!1560 = !DILocation(line: 1364, column: 29, scope: !1557)
!1561 = !DILocation(line: 1364, column: 32, scope: !1557)
!1562 = !DILocation(line: 1364, column: 39, scope: !1557)
!1563 = !DILocation(line: 1364, column: 45, scope: !1557)
!1564 = !DILocation(line: 1364, column: 53, scope: !1557)
!1565 = !DILocation(line: 1364, column: 50, scope: !1557)
!1566 = !DILocation(line: 1364, column: 9, scope: !1514)
!1567 = !DILocation(line: 1365, column: 6, scope: !1557)
!1568 = !DILocation(line: 1365, column: 6, scope: !1569)
!1569 = distinct !DILexicalBlock(scope: !1570, file: !2, line: 1365, column: 6)
!1570 = distinct !DILexicalBlock(scope: !1557, file: !2, line: 1365, column: 6)
!1571 = !DILocation(line: 1365, column: 6, scope: !1570)
!1572 = !DILocation(line: 1367, column: 9, scope: !1573)
!1573 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1367, column: 9)
!1574 = !DILocation(line: 1367, column: 15, scope: !1573)
!1575 = !DILocation(line: 1367, column: 19, scope: !1573)
!1576 = !DILocation(line: 1367, column: 33, scope: !1573)
!1577 = !DILocation(line: 1367, column: 36, scope: !1573)
!1578 = !DILocation(line: 1367, column: 43, scope: !1573)
!1579 = !DILocation(line: 1367, column: 47, scope: !1573)
!1580 = !DILocation(line: 1367, column: 9, scope: !1514)
!1581 = !DILocation(line: 1368, column: 6, scope: !1573)
!1582 = !DILocation(line: 1368, column: 6, scope: !1583)
!1583 = distinct !DILexicalBlock(scope: !1584, file: !2, line: 1368, column: 6)
!1584 = distinct !DILexicalBlock(scope: !1573, file: !2, line: 1368, column: 6)
!1585 = !DILocation(line: 1368, column: 6, scope: !1584)
!1586 = !DILocation(line: 1369, column: 9, scope: !1587)
!1587 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1369, column: 9)
!1588 = !DILocation(line: 1369, column: 15, scope: !1587)
!1589 = !DILocation(line: 1369, column: 19, scope: !1587)
!1590 = !DILocation(line: 1369, column: 34, scope: !1587)
!1591 = !DILocation(line: 1369, column: 37, scope: !1587)
!1592 = !DILocation(line: 1369, column: 44, scope: !1587)
!1593 = !DILocation(line: 1369, column: 48, scope: !1587)
!1594 = !DILocation(line: 1369, column: 9, scope: !1514)
!1595 = !DILocation(line: 1370, column: 6, scope: !1587)
!1596 = !DILocation(line: 1370, column: 6, scope: !1597)
!1597 = distinct !DILexicalBlock(scope: !1598, file: !2, line: 1370, column: 6)
!1598 = distinct !DILexicalBlock(scope: !1587, file: !2, line: 1370, column: 6)
!1599 = !DILocation(line: 1370, column: 6, scope: !1598)
!1600 = !DILocation(line: 1372, column: 21, scope: !1601)
!1601 = distinct !DILexicalBlock(scope: !1514, file: !2, line: 1372, column: 9)
!1602 = !DILocation(line: 1372, column: 28, scope: !1601)
!1603 = !DILocation(line: 1372, column: 10, scope: !1601)
!1604 = !DILocation(line: 1372, column: 9, scope: !1514)
!1605 = !DILocation(line: 1373, column: 6, scope: !1601)
!1606 = !DILocation(line: 1374, column: 4, scope: !1514)
!1607 = !DILocation(line: 1354, column: 45, scope: !1509)
!1608 = !DILocation(line: 1354, column: 43, scope: !1509)
!1609 = !DILocation(line: 1354, column: 60, scope: !1509)
!1610 = !DILocation(line: 1354, column: 67, scope: !1509)
!1611 = !DILocation(line: 1354, column: 58, scope: !1509)
!1612 = !DILocation(line: 1354, column: 4, scope: !1509)
!1613 = distinct !{!1613, !1511, !1614, !321}
!1614 = !DILocation(line: 1374, column: 4, scope: !1505)
!1615 = !DILocation(line: 1376, column: 8, scope: !1616)
!1616 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 1376, column: 8)
!1617 = !DILocation(line: 1376, column: 16, scope: !1616)
!1618 = !DILocation(line: 1376, column: 13, scope: !1616)
!1619 = !DILocation(line: 1376, column: 8, scope: !1490)
!1620 = !DILocation(line: 1377, column: 5, scope: !1616)
!1621 = !DILocation(line: 1377, column: 5, scope: !1622)
!1622 = distinct !DILexicalBlock(scope: !1623, file: !2, line: 1377, column: 5)
!1623 = distinct !DILexicalBlock(scope: !1616, file: !2, line: 1377, column: 5)
!1624 = !DILocation(line: 1377, column: 5, scope: !1623)
!1625 = !DILocation(line: 1379, column: 2, scope: !1452)
!1626 = !DILocation(line: 1381, column: 2, scope: !1363)
!1627 = !DILocation(line: 1384, column: 1, scope: !1363)
!1628 = distinct !DISubprogram(name: "utf8_validate", scope: !2, file: !2, line: 204, type: !982, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1629 = !DILocalVariable(name: "s", arg: 1, scope: !1628, file: !2, line: 204, type: !280)
!1630 = !DILocation(line: 204, column: 39, scope: !1628)
!1631 = !DILocalVariable(name: "len", scope: !1628, file: !2, line: 206, type: !230)
!1632 = !DILocation(line: 206, column: 9, scope: !1628)
!1633 = !DILocation(line: 208, column: 2, scope: !1628)
!1634 = !DILocation(line: 208, column: 10, scope: !1635)
!1635 = distinct !DILexicalBlock(scope: !1636, file: !2, line: 208, column: 2)
!1636 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 208, column: 2)
!1637 = !DILocation(line: 208, column: 9, scope: !1635)
!1638 = !DILocation(line: 208, column: 12, scope: !1635)
!1639 = !DILocation(line: 208, column: 2, scope: !1636)
!1640 = !DILocation(line: 209, column: 26, scope: !1641)
!1641 = distinct !DILexicalBlock(scope: !1635, file: !2, line: 208, column: 28)
!1642 = !DILocation(line: 209, column: 9, scope: !1641)
!1643 = !DILocation(line: 209, column: 7, scope: !1641)
!1644 = !DILocation(line: 210, column: 7, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1641, file: !2, line: 210, column: 7)
!1646 = !DILocation(line: 210, column: 11, scope: !1645)
!1647 = !DILocation(line: 210, column: 7, scope: !1641)
!1648 = !DILocation(line: 211, column: 4, scope: !1645)
!1649 = !DILocation(line: 212, column: 2, scope: !1641)
!1650 = !DILocation(line: 208, column: 23, scope: !1635)
!1651 = !DILocation(line: 208, column: 20, scope: !1635)
!1652 = !DILocation(line: 208, column: 2, scope: !1635)
!1653 = distinct !{!1653, !1639, !1654, !321}
!1654 = !DILocation(line: 212, column: 2, scope: !1636)
!1655 = !DILocation(line: 214, column: 2, scope: !1628)
!1656 = !DILocation(line: 215, column: 1, scope: !1628)
!1657 = distinct !DISubprogram(name: "tag_is_valid", scope: !2, file: !2, line: 1247, type: !1658, scopeLine: 1248, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!247, !218}
!1660 = !DILocalVariable(name: "tag", arg: 1, scope: !1657, file: !2, line: 1247, type: !218)
!1661 = !DILocation(line: 1247, column: 39, scope: !1657)
!1662 = !DILocation(line: 1249, column: 36, scope: !1657)
!1663 = !DILocation(line: 1249, column: 40, scope: !1657)
!1664 = !DILocation(line: 1249, column: 2, scope: !1657)
!1665 = distinct !DISubprogram(name: "expect_literal", scope: !2, file: !2, line: 1257, type: !1666, scopeLine: 1258, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!247, !310, !280}
!1668 = !DILocalVariable(name: "sp", arg: 1, scope: !1665, file: !2, line: 1257, type: !310)
!1669 = !DILocation(line: 1257, column: 41, scope: !1665)
!1670 = !DILocalVariable(name: "str", arg: 2, scope: !1665, file: !2, line: 1257, type: !280)
!1671 = !DILocation(line: 1257, column: 57, scope: !1665)
!1672 = !DILocalVariable(name: "s", scope: !1665, file: !2, line: 1259, type: !280)
!1673 = !DILocation(line: 1259, column: 14, scope: !1665)
!1674 = !DILocation(line: 1259, column: 19, scope: !1665)
!1675 = !DILocation(line: 1259, column: 18, scope: !1665)
!1676 = !DILocation(line: 1261, column: 2, scope: !1665)
!1677 = !DILocation(line: 1261, column: 10, scope: !1665)
!1678 = !DILocation(line: 1261, column: 9, scope: !1665)
!1679 = !DILocation(line: 1261, column: 14, scope: !1665)
!1680 = !DILocation(line: 1262, column: 9, scope: !1681)
!1681 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 1262, column: 7)
!1682 = !DILocation(line: 1262, column: 7, scope: !1681)
!1683 = !DILocation(line: 1262, column: 19, scope: !1681)
!1684 = !DILocation(line: 1262, column: 15, scope: !1681)
!1685 = !DILocation(line: 1262, column: 12, scope: !1681)
!1686 = !DILocation(line: 1262, column: 7, scope: !1665)
!1687 = !DILocation(line: 1263, column: 4, scope: !1681)
!1688 = distinct !{!1688, !1676, !1689, !321}
!1689 = !DILocation(line: 1263, column: 11, scope: !1665)
!1690 = !DILocation(line: 1265, column: 8, scope: !1665)
!1691 = !DILocation(line: 1265, column: 3, scope: !1665)
!1692 = !DILocation(line: 1265, column: 6, scope: !1665)
!1693 = !DILocation(line: 1266, column: 2, scope: !1665)
!1694 = !DILocation(line: 1267, column: 1, scope: !1665)
!1695 = distinct !DISubprogram(name: "parse_string", scope: !2, file: !2, line: 804, type: !1696, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!247, !310, !1698}
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!1699 = !DILocalVariable(name: "sp", arg: 1, scope: !1695, file: !2, line: 804, type: !310)
!1700 = !DILocation(line: 804, column: 32, scope: !1695)
!1701 = !DILocalVariable(name: "out", arg: 2, scope: !1695, file: !2, line: 804, type: !1698)
!1702 = !DILocation(line: 804, column: 43, scope: !1695)
!1703 = !DILocalVariable(name: "s", scope: !1695, file: !2, line: 806, type: !280)
!1704 = !DILocation(line: 806, column: 14, scope: !1695)
!1705 = !DILocation(line: 806, column: 27, scope: !1695)
!1706 = !DILocation(line: 806, column: 26, scope: !1695)
!1707 = !DILocalVariable(name: "sb", scope: !1695, file: !2, line: 807, type: !524)
!1708 = !DILocation(line: 807, column: 5, scope: !1695)
!1709 = !DILocalVariable(name: "throwaway_buffer", scope: !1695, file: !2, line: 808, type: !1710)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !1711)
!1711 = !{!1712}
!1712 = !DISubrange(count: 4)
!1713 = !DILocation(line: 808, column: 7, scope: !1695)
!1714 = !DILocalVariable(name: "b", scope: !1695, file: !2, line: 810, type: !229)
!1715 = !DILocation(line: 810, column: 8, scope: !1695)
!1716 = !DILocation(line: 812, column: 8, scope: !1717)
!1717 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 812, column: 6)
!1718 = !DILocation(line: 812, column: 6, scope: !1717)
!1719 = !DILocation(line: 812, column: 11, scope: !1717)
!1720 = !DILocation(line: 812, column: 6, scope: !1695)
!1721 = !DILocation(line: 813, column: 3, scope: !1717)
!1722 = !DILocation(line: 815, column: 6, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 815, column: 6)
!1724 = !DILocation(line: 815, column: 6, scope: !1695)
!1725 = !DILocation(line: 816, column: 3, scope: !1726)
!1726 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 815, column: 11)
!1727 = !DILocation(line: 817, column: 3, scope: !1726)
!1728 = !DILocation(line: 817, column: 3, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1730, file: !2, line: 817, column: 3)
!1730 = distinct !DILexicalBlock(scope: !1726, file: !2, line: 817, column: 3)
!1731 = !DILocation(line: 817, column: 3, scope: !1730)
!1732 = !DILocation(line: 818, column: 10, scope: !1726)
!1733 = !DILocation(line: 818, column: 5, scope: !1726)
!1734 = !DILocation(line: 819, column: 2, scope: !1726)
!1735 = !DILocation(line: 820, column: 7, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 819, column: 9)
!1737 = !DILocation(line: 820, column: 5, scope: !1736)
!1738 = !DILocation(line: 823, column: 2, scope: !1695)
!1739 = !DILocation(line: 823, column: 10, scope: !1695)
!1740 = !DILocation(line: 823, column: 9, scope: !1695)
!1741 = !DILocation(line: 823, column: 12, scope: !1695)
!1742 = !DILocalVariable(name: "c", scope: !1743, file: !2, line: 824, type: !4)
!1743 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 823, column: 20)
!1744 = !DILocation(line: 824, column: 8, scope: !1743)
!1745 = !DILocation(line: 824, column: 14, scope: !1743)
!1746 = !DILocation(line: 824, column: 12, scope: !1743)
!1747 = !DILocation(line: 827, column: 7, scope: !1748)
!1748 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 827, column: 7)
!1749 = !DILocation(line: 827, column: 9, scope: !1748)
!1750 = !DILocation(line: 827, column: 7, scope: !1743)
!1751 = !DILocation(line: 828, column: 10, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 827, column: 18)
!1753 = !DILocation(line: 828, column: 8, scope: !1752)
!1754 = !DILocation(line: 828, column: 6, scope: !1752)
!1755 = !DILocation(line: 829, column: 12, scope: !1752)
!1756 = !DILocation(line: 829, column: 4, scope: !1752)
!1757 = !DILocation(line: 833, column: 19, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 829, column: 15)
!1759 = !DILocation(line: 833, column: 8, scope: !1758)
!1760 = !DILocation(line: 833, column: 11, scope: !1758)
!1761 = !DILocation(line: 834, column: 6, scope: !1758)
!1762 = !DILocation(line: 836, column: 8, scope: !1758)
!1763 = !DILocation(line: 836, column: 11, scope: !1758)
!1764 = !DILocation(line: 837, column: 6, scope: !1758)
!1765 = !DILocation(line: 839, column: 8, scope: !1758)
!1766 = !DILocation(line: 839, column: 11, scope: !1758)
!1767 = !DILocation(line: 840, column: 6, scope: !1758)
!1768 = !DILocation(line: 842, column: 8, scope: !1758)
!1769 = !DILocation(line: 842, column: 11, scope: !1758)
!1770 = !DILocation(line: 843, column: 6, scope: !1758)
!1771 = !DILocation(line: 845, column: 8, scope: !1758)
!1772 = !DILocation(line: 845, column: 11, scope: !1758)
!1773 = !DILocation(line: 846, column: 6, scope: !1758)
!1774 = !DILocation(line: 848, column: 8, scope: !1758)
!1775 = !DILocation(line: 848, column: 11, scope: !1758)
!1776 = !DILocation(line: 849, column: 6, scope: !1758)
!1777 = !DILocalVariable(name: "uc", scope: !1778, file: !2, line: 852, type: !256)
!1778 = distinct !DILexicalBlock(scope: !1758, file: !2, line: 851, column: 5)
!1779 = !DILocation(line: 852, column: 15, scope: !1778)
!1780 = !DILocalVariable(name: "lc", scope: !1778, file: !2, line: 852, type: !256)
!1781 = !DILocation(line: 852, column: 19, scope: !1778)
!1782 = !DILocalVariable(name: "unicode", scope: !1778, file: !2, line: 853, type: !261)
!1783 = !DILocation(line: 853, column: 14, scope: !1778)
!1784 = !DILocation(line: 855, column: 11, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 855, column: 10)
!1786 = !DILocation(line: 855, column: 10, scope: !1778)
!1787 = !DILocation(line: 856, column: 7, scope: !1785)
!1788 = !DILocation(line: 858, column: 10, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1778, file: !2, line: 858, column: 10)
!1790 = !DILocation(line: 858, column: 13, scope: !1789)
!1791 = !DILocation(line: 858, column: 23, scope: !1789)
!1792 = !DILocation(line: 858, column: 26, scope: !1789)
!1793 = !DILocation(line: 858, column: 29, scope: !1789)
!1794 = !DILocation(line: 858, column: 10, scope: !1778)
!1795 = !DILocation(line: 860, column: 13, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 860, column: 11)
!1797 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 858, column: 40)
!1798 = !DILocation(line: 860, column: 11, scope: !1796)
!1799 = !DILocation(line: 860, column: 16, scope: !1796)
!1800 = !DILocation(line: 860, column: 24, scope: !1796)
!1801 = !DILocation(line: 860, column: 29, scope: !1796)
!1802 = !DILocation(line: 860, column: 27, scope: !1796)
!1803 = !DILocation(line: 860, column: 32, scope: !1796)
!1804 = !DILocation(line: 860, column: 39, scope: !1796)
!1805 = !DILocation(line: 860, column: 43, scope: !1796)
!1806 = !DILocation(line: 860, column: 11, scope: !1797)
!1807 = !DILocation(line: 861, column: 8, scope: !1796)
!1808 = !DILocation(line: 862, column: 32, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 862, column: 11)
!1810 = !DILocation(line: 862, column: 36, scope: !1809)
!1811 = !DILocation(line: 862, column: 12, scope: !1809)
!1812 = !DILocation(line: 862, column: 11, scope: !1797)
!1813 = !DILocation(line: 863, column: 8, scope: !1809)
!1814 = !DILocation(line: 864, column: 6, scope: !1797)
!1815 = !DILocation(line: 864, column: 17, scope: !1816)
!1816 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 864, column: 17)
!1817 = !DILocation(line: 864, column: 20, scope: !1816)
!1818 = !DILocation(line: 864, column: 17, scope: !1789)
!1819 = !DILocation(line: 866, column: 7, scope: !1820)
!1820 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 864, column: 26)
!1821 = !DILocation(line: 868, column: 17, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1816, file: !2, line: 867, column: 13)
!1823 = !DILocation(line: 868, column: 15, scope: !1822)
!1824 = !DILocation(line: 871, column: 27, scope: !1778)
!1825 = !DILocation(line: 871, column: 36, scope: !1778)
!1826 = !DILocation(line: 871, column: 11, scope: !1778)
!1827 = !DILocation(line: 871, column: 8, scope: !1778)
!1828 = !DILocation(line: 872, column: 6, scope: !1778)
!1829 = !DILocation(line: 876, column: 6, scope: !1758)
!1830 = !DILocation(line: 878, column: 3, scope: !1752)
!1831 = !DILocation(line: 878, column: 14, scope: !1832)
!1832 = distinct !DILexicalBlock(scope: !1748, file: !2, line: 878, column: 14)
!1833 = !DILocation(line: 878, column: 16, scope: !1832)
!1834 = !DILocation(line: 878, column: 14, scope: !1748)
!1835 = !DILocation(line: 880, column: 4, scope: !1836)
!1836 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 878, column: 25)
!1837 = !DILocalVariable(name: "len", scope: !1838, file: !2, line: 883, type: !230)
!1838 = distinct !DILexicalBlock(scope: !1832, file: !2, line: 881, column: 10)
!1839 = !DILocation(line: 883, column: 11, scope: !1838)
!1840 = !DILocation(line: 885, column: 5, scope: !1838)
!1841 = !DILocation(line: 886, column: 27, scope: !1838)
!1842 = !DILocation(line: 886, column: 10, scope: !1838)
!1843 = !DILocation(line: 886, column: 8, scope: !1838)
!1844 = !DILocation(line: 887, column: 8, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 887, column: 8)
!1846 = !DILocation(line: 887, column: 12, scope: !1845)
!1847 = !DILocation(line: 887, column: 8, scope: !1838)
!1848 = !DILocation(line: 888, column: 5, scope: !1845)
!1849 = !DILocation(line: 890, column: 4, scope: !1838)
!1850 = !DILocation(line: 890, column: 14, scope: !1838)
!1851 = !DILocation(line: 891, column: 14, scope: !1838)
!1852 = !DILocation(line: 891, column: 12, scope: !1838)
!1853 = !DILocation(line: 891, column: 7, scope: !1838)
!1854 = !DILocation(line: 891, column: 10, scope: !1838)
!1855 = distinct !{!1855, !1849, !1851, !321}
!1856 = !DILocation(line: 898, column: 7, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1743, file: !2, line: 898, column: 7)
!1858 = !DILocation(line: 898, column: 7, scope: !1743)
!1859 = !DILocation(line: 899, column: 13, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 898, column: 12)
!1861 = !DILocation(line: 899, column: 7, scope: !1860)
!1862 = !DILocation(line: 899, column: 11, scope: !1860)
!1863 = !DILocation(line: 900, column: 4, scope: !1860)
!1864 = !DILocation(line: 900, column: 4, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 900, column: 4)
!1866 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 900, column: 4)
!1867 = !DILocation(line: 900, column: 4, scope: !1866)
!1868 = !DILocation(line: 901, column: 11, scope: !1860)
!1869 = !DILocation(line: 901, column: 6, scope: !1860)
!1870 = !DILocation(line: 902, column: 3, scope: !1860)
!1871 = !DILocation(line: 903, column: 8, scope: !1872)
!1872 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 902, column: 10)
!1873 = !DILocation(line: 903, column: 6, scope: !1872)
!1874 = distinct !{!1874, !1738, !1875, !321}
!1875 = !DILocation(line: 905, column: 2, scope: !1695)
!1876 = !DILocation(line: 906, column: 3, scope: !1695)
!1877 = !DILocation(line: 908, column: 6, scope: !1878)
!1878 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 908, column: 6)
!1879 = !DILocation(line: 908, column: 6, scope: !1695)
!1880 = !DILocation(line: 909, column: 10, scope: !1878)
!1881 = !DILocation(line: 909, column: 4, scope: !1878)
!1882 = !DILocation(line: 909, column: 8, scope: !1878)
!1883 = !DILocation(line: 909, column: 3, scope: !1878)
!1884 = !DILocation(line: 910, column: 8, scope: !1695)
!1885 = !DILocation(line: 910, column: 3, scope: !1695)
!1886 = !DILocation(line: 910, column: 6, scope: !1695)
!1887 = !DILocation(line: 911, column: 2, scope: !1695)
!1888 = !DILabel(scope: !1695, name: "failed", file: !2, line: 913)
!1889 = !DILocation(line: 913, column: 1, scope: !1695)
!1890 = !DILocation(line: 914, column: 6, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1695, file: !2, line: 914, column: 6)
!1892 = !DILocation(line: 914, column: 6, scope: !1695)
!1893 = !DILocation(line: 915, column: 3, scope: !1891)
!1894 = !DILocation(line: 916, column: 2, scope: !1695)
!1895 = !DILocation(line: 917, column: 1, scope: !1695)
!1896 = distinct !DISubprogram(name: "parse_array", scope: !2, file: !2, line: 704, type: !327, scopeLine: 705, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1897 = !DILocalVariable(name: "sp", arg: 1, scope: !1896, file: !2, line: 704, type: !310)
!1898 = !DILocation(line: 704, column: 38, scope: !1896)
!1899 = !DILocalVariable(name: "out", arg: 2, scope: !1896, file: !2, line: 704, type: !329)
!1900 = !DILocation(line: 704, column: 53, scope: !1896)
!1901 = !DILocalVariable(name: "s", scope: !1896, file: !2, line: 706, type: !280)
!1902 = !DILocation(line: 706, column: 14, scope: !1896)
!1903 = !DILocation(line: 706, column: 19, scope: !1896)
!1904 = !DILocation(line: 706, column: 18, scope: !1896)
!1905 = !DILocalVariable(name: "ret", scope: !1896, file: !2, line: 707, type: !233)
!1906 = !DILocation(line: 707, column: 12, scope: !1896)
!1907 = !DILocation(line: 707, column: 18, scope: !1896)
!1908 = !DILocation(line: 707, column: 24, scope: !1896)
!1909 = !DILocalVariable(name: "element", scope: !1896, file: !2, line: 708, type: !233)
!1910 = !DILocation(line: 708, column: 12, scope: !1896)
!1911 = !DILocation(line: 710, column: 8, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 710, column: 6)
!1913 = !DILocation(line: 710, column: 6, scope: !1912)
!1914 = !DILocation(line: 710, column: 11, scope: !1912)
!1915 = !DILocation(line: 710, column: 6, scope: !1896)
!1916 = !DILocation(line: 711, column: 3, scope: !1912)
!1917 = !DILocation(line: 712, column: 2, scope: !1896)
!1918 = !DILocation(line: 714, column: 7, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 714, column: 6)
!1920 = !DILocation(line: 714, column: 6, scope: !1919)
!1921 = !DILocation(line: 714, column: 9, scope: !1919)
!1922 = !DILocation(line: 714, column: 6, scope: !1896)
!1923 = !DILocation(line: 715, column: 4, scope: !1924)
!1924 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 714, column: 17)
!1925 = !DILocation(line: 716, column: 3, scope: !1924)
!1926 = !DILocation(line: 719, column: 2, scope: !1896)
!1927 = !DILocation(line: 720, column: 24, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 720, column: 7)
!1929 = distinct !DILexicalBlock(scope: !1930, file: !2, line: 719, column: 11)
!1930 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 719, column: 2)
!1931 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 719, column: 2)
!1932 = !DILocation(line: 720, column: 8, scope: !1928)
!1933 = !DILocation(line: 720, column: 7, scope: !1929)
!1934 = !DILocation(line: 721, column: 4, scope: !1928)
!1935 = !DILocation(line: 722, column: 3, scope: !1929)
!1936 = !DILocation(line: 724, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 724, column: 7)
!1938 = !DILocation(line: 724, column: 7, scope: !1929)
!1939 = !DILocation(line: 725, column: 24, scope: !1937)
!1940 = !DILocation(line: 725, column: 29, scope: !1937)
!1941 = !DILocation(line: 725, column: 4, scope: !1937)
!1942 = !DILocation(line: 727, column: 8, scope: !1943)
!1943 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 727, column: 7)
!1944 = !DILocation(line: 727, column: 7, scope: !1943)
!1945 = !DILocation(line: 727, column: 10, scope: !1943)
!1946 = !DILocation(line: 727, column: 7, scope: !1929)
!1947 = !DILocation(line: 728, column: 5, scope: !1948)
!1948 = distinct !DILexicalBlock(scope: !1943, file: !2, line: 727, column: 18)
!1949 = !DILocation(line: 729, column: 4, scope: !1948)
!1950 = !DILocation(line: 732, column: 9, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1929, file: !2, line: 732, column: 7)
!1952 = !DILocation(line: 732, column: 7, scope: !1951)
!1953 = !DILocation(line: 732, column: 12, scope: !1951)
!1954 = !DILocation(line: 732, column: 7, scope: !1929)
!1955 = !DILocation(line: 733, column: 4, scope: !1951)
!1956 = !DILocation(line: 734, column: 3, scope: !1929)
!1957 = !DILocation(line: 719, column: 2, scope: !1930)
!1958 = distinct !{!1958, !1959, !1960}
!1959 = !DILocation(line: 719, column: 2, scope: !1931)
!1960 = !DILocation(line: 735, column: 2, scope: !1931)
!1961 = !DILabel(scope: !1896, name: "success", file: !2, line: 737)
!1962 = !DILocation(line: 737, column: 1, scope: !1896)
!1963 = !DILocation(line: 738, column: 8, scope: !1896)
!1964 = !DILocation(line: 738, column: 3, scope: !1896)
!1965 = !DILocation(line: 738, column: 6, scope: !1896)
!1966 = !DILocation(line: 739, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1896, file: !2, line: 739, column: 6)
!1968 = !DILocation(line: 739, column: 6, scope: !1896)
!1969 = !DILocation(line: 740, column: 10, scope: !1967)
!1970 = !DILocation(line: 740, column: 4, scope: !1967)
!1971 = !DILocation(line: 740, column: 8, scope: !1967)
!1972 = !DILocation(line: 740, column: 3, scope: !1967)
!1973 = !DILocation(line: 741, column: 2, scope: !1896)
!1974 = !DILabel(scope: !1896, name: "failure", file: !2, line: 743)
!1975 = !DILocation(line: 743, column: 1, scope: !1896)
!1976 = !DILocation(line: 744, column: 14, scope: !1896)
!1977 = !DILocation(line: 744, column: 2, scope: !1896)
!1978 = !DILocation(line: 745, column: 2, scope: !1896)
!1979 = !DILocation(line: 746, column: 1, scope: !1896)
!1980 = distinct !DISubprogram(name: "parse_object", scope: !2, file: !2, line: 748, type: !327, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!1981 = !DILocalVariable(name: "sp", arg: 1, scope: !1980, file: !2, line: 748, type: !310)
!1982 = !DILocation(line: 748, column: 39, scope: !1980)
!1983 = !DILocalVariable(name: "out", arg: 2, scope: !1980, file: !2, line: 748, type: !329)
!1984 = !DILocation(line: 748, column: 54, scope: !1980)
!1985 = !DILocalVariable(name: "s", scope: !1980, file: !2, line: 750, type: !280)
!1986 = !DILocation(line: 750, column: 14, scope: !1980)
!1987 = !DILocation(line: 750, column: 19, scope: !1980)
!1988 = !DILocation(line: 750, column: 18, scope: !1980)
!1989 = !DILocalVariable(name: "ret", scope: !1980, file: !2, line: 751, type: !233)
!1990 = !DILocation(line: 751, column: 12, scope: !1980)
!1991 = !DILocation(line: 751, column: 18, scope: !1980)
!1992 = !DILocation(line: 751, column: 24, scope: !1980)
!1993 = !DILocalVariable(name: "key", scope: !1980, file: !2, line: 752, type: !229)
!1994 = !DILocation(line: 752, column: 8, scope: !1980)
!1995 = !DILocalVariable(name: "value", scope: !1980, file: !2, line: 753, type: !233)
!1996 = !DILocation(line: 753, column: 12, scope: !1980)
!1997 = !DILocation(line: 755, column: 8, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 755, column: 6)
!1999 = !DILocation(line: 755, column: 6, scope: !1998)
!2000 = !DILocation(line: 755, column: 11, scope: !1998)
!2001 = !DILocation(line: 755, column: 6, scope: !1980)
!2002 = !DILocation(line: 756, column: 3, scope: !1998)
!2003 = !DILocation(line: 757, column: 2, scope: !1980)
!2004 = !DILocation(line: 759, column: 7, scope: !2005)
!2005 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 759, column: 6)
!2006 = !DILocation(line: 759, column: 6, scope: !2005)
!2007 = !DILocation(line: 759, column: 9, scope: !2005)
!2008 = !DILocation(line: 759, column: 6, scope: !1980)
!2009 = !DILocation(line: 760, column: 4, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 759, column: 17)
!2011 = !DILocation(line: 761, column: 3, scope: !2010)
!2012 = !DILocation(line: 764, column: 2, scope: !1980)
!2013 = !DILocation(line: 765, column: 25, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 765, column: 7)
!2015 = distinct !DILexicalBlock(scope: !2016, file: !2, line: 764, column: 11)
!2016 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 764, column: 2)
!2017 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 764, column: 2)
!2018 = !DILocation(line: 765, column: 8, scope: !2014)
!2019 = !DILocation(line: 765, column: 7, scope: !2015)
!2020 = !DILocation(line: 766, column: 4, scope: !2014)
!2021 = !DILocation(line: 767, column: 3, scope: !2015)
!2022 = !DILocation(line: 769, column: 9, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 769, column: 7)
!2024 = !DILocation(line: 769, column: 7, scope: !2023)
!2025 = !DILocation(line: 769, column: 12, scope: !2023)
!2026 = !DILocation(line: 769, column: 7, scope: !2015)
!2027 = !DILocation(line: 770, column: 4, scope: !2023)
!2028 = !DILocation(line: 771, column: 3, scope: !2015)
!2029 = !DILocation(line: 773, column: 24, scope: !2030)
!2030 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 773, column: 7)
!2031 = !DILocation(line: 773, column: 8, scope: !2030)
!2032 = !DILocation(line: 773, column: 7, scope: !2015)
!2033 = !DILocation(line: 774, column: 4, scope: !2030)
!2034 = !DILocation(line: 775, column: 3, scope: !2015)
!2035 = !DILocation(line: 777, column: 7, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 777, column: 7)
!2037 = !DILocation(line: 777, column: 7, scope: !2015)
!2038 = !DILocation(line: 778, column: 18, scope: !2036)
!2039 = !DILocation(line: 778, column: 23, scope: !2036)
!2040 = !DILocation(line: 778, column: 28, scope: !2036)
!2041 = !DILocation(line: 778, column: 4, scope: !2036)
!2042 = !DILocation(line: 780, column: 8, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 780, column: 7)
!2044 = !DILocation(line: 780, column: 7, scope: !2043)
!2045 = !DILocation(line: 780, column: 10, scope: !2043)
!2046 = !DILocation(line: 780, column: 7, scope: !2015)
!2047 = !DILocation(line: 781, column: 5, scope: !2048)
!2048 = distinct !DILexicalBlock(scope: !2043, file: !2, line: 780, column: 18)
!2049 = !DILocation(line: 782, column: 4, scope: !2048)
!2050 = !DILocation(line: 785, column: 9, scope: !2051)
!2051 = distinct !DILexicalBlock(scope: !2015, file: !2, line: 785, column: 7)
!2052 = !DILocation(line: 785, column: 7, scope: !2051)
!2053 = !DILocation(line: 785, column: 12, scope: !2051)
!2054 = !DILocation(line: 785, column: 7, scope: !2015)
!2055 = !DILocation(line: 786, column: 4, scope: !2051)
!2056 = !DILocation(line: 787, column: 3, scope: !2015)
!2057 = !DILocation(line: 764, column: 2, scope: !2016)
!2058 = distinct !{!2058, !2059, !2060}
!2059 = !DILocation(line: 764, column: 2, scope: !2017)
!2060 = !DILocation(line: 788, column: 2, scope: !2017)
!2061 = !DILabel(scope: !1980, name: "success", file: !2, line: 790)
!2062 = !DILocation(line: 790, column: 1, scope: !1980)
!2063 = !DILocation(line: 791, column: 8, scope: !1980)
!2064 = !DILocation(line: 791, column: 3, scope: !1980)
!2065 = !DILocation(line: 791, column: 6, scope: !1980)
!2066 = !DILocation(line: 792, column: 6, scope: !2067)
!2067 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 792, column: 6)
!2068 = !DILocation(line: 792, column: 6, scope: !1980)
!2069 = !DILocation(line: 793, column: 10, scope: !2067)
!2070 = !DILocation(line: 793, column: 4, scope: !2067)
!2071 = !DILocation(line: 793, column: 8, scope: !2067)
!2072 = !DILocation(line: 793, column: 3, scope: !2067)
!2073 = !DILocation(line: 794, column: 2, scope: !1980)
!2074 = !DILabel(scope: !1980, name: "failure_free_key", file: !2, line: 796)
!2075 = !DILocation(line: 796, column: 1, scope: !1980)
!2076 = !DILocation(line: 797, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !1980, file: !2, line: 797, column: 6)
!2078 = !DILocation(line: 797, column: 6, scope: !1980)
!2079 = !DILocation(line: 798, column: 8, scope: !2077)
!2080 = !DILocation(line: 798, column: 3, scope: !2077)
!2081 = !DILabel(scope: !1980, name: "failure", file: !2, line: 799)
!2082 = !DILocation(line: 799, column: 1, scope: !1980)
!2083 = !DILocation(line: 800, column: 14, scope: !1980)
!2084 = !DILocation(line: 800, column: 2, scope: !1980)
!2085 = !DILocation(line: 801, column: 2, scope: !1980)
!2086 = !DILocation(line: 802, column: 1, scope: !1980)
!2087 = distinct !DISubprogram(name: "parse_number", scope: !2, file: !2, line: 929, type: !2088, scopeLine: 930, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!247, !310, !2090}
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!2091 = !DILocalVariable(name: "sp", arg: 1, scope: !2087, file: !2, line: 929, type: !310)
!2092 = !DILocation(line: 929, column: 32, scope: !2087)
!2093 = !DILocalVariable(name: "out", arg: 2, scope: !2087, file: !2, line: 929, type: !2090)
!2094 = !DILocation(line: 929, column: 44, scope: !2087)
!2095 = !DILocalVariable(name: "s", scope: !2087, file: !2, line: 931, type: !280)
!2096 = !DILocation(line: 931, column: 14, scope: !2087)
!2097 = !DILocation(line: 931, column: 19, scope: !2087)
!2098 = !DILocation(line: 931, column: 18, scope: !2087)
!2099 = !DILocation(line: 934, column: 7, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 934, column: 6)
!2101 = !DILocation(line: 934, column: 6, scope: !2100)
!2102 = !DILocation(line: 934, column: 9, scope: !2100)
!2103 = !DILocation(line: 934, column: 6, scope: !2087)
!2104 = !DILocation(line: 935, column: 4, scope: !2100)
!2105 = !DILocation(line: 935, column: 3, scope: !2100)
!2106 = !DILocation(line: 938, column: 7, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 938, column: 6)
!2108 = !DILocation(line: 938, column: 6, scope: !2107)
!2109 = !DILocation(line: 938, column: 9, scope: !2107)
!2110 = !DILocation(line: 938, column: 6, scope: !2087)
!2111 = !DILocation(line: 939, column: 4, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 938, column: 17)
!2113 = !DILocation(line: 940, column: 2, scope: !2112)
!2114 = !DILocation(line: 941, column: 8, scope: !2115)
!2115 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 941, column: 7)
!2116 = distinct !DILexicalBlock(scope: !2107, file: !2, line: 940, column: 9)
!2117 = !DILocation(line: 941, column: 7, scope: !2116)
!2118 = !DILocation(line: 942, column: 4, scope: !2115)
!2119 = !DILocation(line: 943, column: 3, scope: !2116)
!2120 = !DILocation(line: 944, column: 5, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2116, file: !2, line: 943, column: 6)
!2122 = !DILocation(line: 945, column: 3, scope: !2121)
!2123 = !DILocation(line: 945, column: 12, scope: !2116)
!2124 = !DILocation(line: 0, scope: !2116)
!2125 = distinct !{!2125, !2119, !2126, !321}
!2126 = !DILocation(line: 945, column: 24, scope: !2116)
!2127 = !DILocation(line: 949, column: 7, scope: !2128)
!2128 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 949, column: 6)
!2129 = !DILocation(line: 949, column: 6, scope: !2128)
!2130 = !DILocation(line: 949, column: 9, scope: !2128)
!2131 = !DILocation(line: 949, column: 6, scope: !2087)
!2132 = !DILocation(line: 950, column: 4, scope: !2133)
!2133 = distinct !DILexicalBlock(scope: !2128, file: !2, line: 949, column: 17)
!2134 = !DILocation(line: 951, column: 8, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 951, column: 7)
!2136 = !DILocation(line: 951, column: 7, scope: !2133)
!2137 = !DILocation(line: 952, column: 4, scope: !2135)
!2138 = !DILocation(line: 953, column: 3, scope: !2133)
!2139 = !DILocation(line: 954, column: 5, scope: !2140)
!2140 = distinct !DILexicalBlock(scope: !2133, file: !2, line: 953, column: 6)
!2141 = !DILocation(line: 955, column: 3, scope: !2140)
!2142 = !DILocation(line: 955, column: 12, scope: !2133)
!2143 = !DILocation(line: 0, scope: !2133)
!2144 = distinct !{!2144, !2138, !2145, !321}
!2145 = !DILocation(line: 955, column: 24, scope: !2133)
!2146 = !DILocation(line: 956, column: 2, scope: !2133)
!2147 = !DILocation(line: 959, column: 7, scope: !2148)
!2148 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 959, column: 6)
!2149 = !DILocation(line: 959, column: 6, scope: !2148)
!2150 = !DILocation(line: 959, column: 9, scope: !2148)
!2151 = !DILocation(line: 959, column: 16, scope: !2148)
!2152 = !DILocation(line: 959, column: 20, scope: !2148)
!2153 = !DILocation(line: 959, column: 19, scope: !2148)
!2154 = !DILocation(line: 959, column: 22, scope: !2148)
!2155 = !DILocation(line: 959, column: 6, scope: !2087)
!2156 = !DILocation(line: 960, column: 4, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2148, file: !2, line: 959, column: 30)
!2158 = !DILocation(line: 961, column: 8, scope: !2159)
!2159 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 961, column: 7)
!2160 = !DILocation(line: 961, column: 7, scope: !2159)
!2161 = !DILocation(line: 961, column: 10, scope: !2159)
!2162 = !DILocation(line: 961, column: 17, scope: !2159)
!2163 = !DILocation(line: 961, column: 21, scope: !2159)
!2164 = !DILocation(line: 961, column: 20, scope: !2159)
!2165 = !DILocation(line: 961, column: 23, scope: !2159)
!2166 = !DILocation(line: 961, column: 7, scope: !2157)
!2167 = !DILocation(line: 962, column: 5, scope: !2159)
!2168 = !DILocation(line: 962, column: 4, scope: !2159)
!2169 = !DILocation(line: 963, column: 8, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 963, column: 7)
!2171 = !DILocation(line: 963, column: 7, scope: !2157)
!2172 = !DILocation(line: 964, column: 4, scope: !2170)
!2173 = !DILocation(line: 965, column: 3, scope: !2157)
!2174 = !DILocation(line: 966, column: 5, scope: !2175)
!2175 = distinct !DILexicalBlock(scope: !2157, file: !2, line: 965, column: 6)
!2176 = !DILocation(line: 967, column: 3, scope: !2175)
!2177 = !DILocation(line: 967, column: 12, scope: !2157)
!2178 = !DILocation(line: 0, scope: !2157)
!2179 = distinct !{!2179, !2173, !2180, !321}
!2180 = !DILocation(line: 967, column: 24, scope: !2157)
!2181 = !DILocation(line: 968, column: 2, scope: !2157)
!2182 = !DILocation(line: 970, column: 6, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2087, file: !2, line: 970, column: 6)
!2184 = !DILocation(line: 970, column: 6, scope: !2087)
!2185 = !DILocation(line: 971, column: 18, scope: !2183)
!2186 = !DILocation(line: 971, column: 17, scope: !2183)
!2187 = !DILocation(line: 971, column: 10, scope: !2183)
!2188 = !DILocation(line: 971, column: 4, scope: !2183)
!2189 = !DILocation(line: 971, column: 8, scope: !2183)
!2190 = !DILocation(line: 971, column: 3, scope: !2183)
!2191 = !DILocation(line: 973, column: 8, scope: !2087)
!2192 = !DILocation(line: 973, column: 3, scope: !2087)
!2193 = !DILocation(line: 973, column: 6, scope: !2087)
!2194 = !DILocation(line: 974, column: 2, scope: !2087)
!2195 = !DILocation(line: 975, column: 1, scope: !2087)
!2196 = distinct !DISubprogram(name: "sb_grow", scope: !2, file: !2, line: 61, type: !2197, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !558, !230}
!2199 = !DILocalVariable(name: "sb", arg: 1, scope: !2196, file: !2, line: 61, type: !558)
!2200 = !DILocation(line: 61, column: 25, scope: !2196)
!2201 = !DILocalVariable(name: "need", arg: 2, scope: !2196, file: !2, line: 61, type: !230)
!2202 = !DILocation(line: 61, column: 36, scope: !2196)
!2203 = !DILocalVariable(name: "length", scope: !2196, file: !2, line: 63, type: !230)
!2204 = !DILocation(line: 63, column: 9, scope: !2196)
!2205 = !DILocation(line: 63, column: 27, scope: !2196)
!2206 = !DILocation(line: 63, column: 31, scope: !2196)
!2207 = !DILocation(line: 63, column: 37, scope: !2196)
!2208 = !DILocation(line: 63, column: 41, scope: !2196)
!2209 = !DILocation(line: 63, column: 35, scope: !2196)
!2210 = !DILocalVariable(name: "alloc", scope: !2196, file: !2, line: 64, type: !230)
!2211 = !DILocation(line: 64, column: 9, scope: !2196)
!2212 = !DILocation(line: 64, column: 26, scope: !2196)
!2213 = !DILocation(line: 64, column: 30, scope: !2196)
!2214 = !DILocation(line: 64, column: 36, scope: !2196)
!2215 = !DILocation(line: 64, column: 40, scope: !2196)
!2216 = !DILocation(line: 64, column: 34, scope: !2196)
!2217 = !DILocation(line: 66, column: 2, scope: !2196)
!2218 = !DILocation(line: 67, column: 9, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 66, column: 5)
!2220 = !DILocation(line: 68, column: 2, scope: !2219)
!2221 = !DILocation(line: 68, column: 11, scope: !2196)
!2222 = !DILocation(line: 68, column: 19, scope: !2196)
!2223 = !DILocation(line: 68, column: 28, scope: !2196)
!2224 = !DILocation(line: 68, column: 26, scope: !2196)
!2225 = !DILocation(line: 68, column: 17, scope: !2196)
!2226 = distinct !{!2226, !2217, !2227, !321}
!2227 = !DILocation(line: 68, column: 32, scope: !2196)
!2228 = !DILocation(line: 70, column: 30, scope: !2196)
!2229 = !DILocation(line: 70, column: 34, scope: !2196)
!2230 = !DILocation(line: 70, column: 41, scope: !2196)
!2231 = !DILocation(line: 70, column: 47, scope: !2196)
!2232 = !DILocation(line: 70, column: 22, scope: !2196)
!2233 = !DILocation(line: 70, column: 2, scope: !2196)
!2234 = !DILocation(line: 70, column: 6, scope: !2196)
!2235 = !DILocation(line: 70, column: 12, scope: !2196)
!2236 = !DILocation(line: 71, column: 6, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2196, file: !2, line: 71, column: 6)
!2238 = !DILocation(line: 71, column: 10, scope: !2237)
!2239 = !DILocation(line: 71, column: 16, scope: !2237)
!2240 = !DILocation(line: 71, column: 6, scope: !2196)
!2241 = !DILocation(line: 72, column: 3, scope: !2237)
!2242 = !DILocation(line: 72, column: 3, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2237, file: !2, line: 72, column: 3)
!2244 = !DILocation(line: 73, column: 12, scope: !2196)
!2245 = !DILocation(line: 73, column: 16, scope: !2196)
!2246 = !DILocation(line: 73, column: 24, scope: !2196)
!2247 = !DILocation(line: 73, column: 22, scope: !2196)
!2248 = !DILocation(line: 73, column: 2, scope: !2196)
!2249 = !DILocation(line: 73, column: 6, scope: !2196)
!2250 = !DILocation(line: 73, column: 10, scope: !2196)
!2251 = !DILocation(line: 74, column: 12, scope: !2196)
!2252 = !DILocation(line: 74, column: 16, scope: !2196)
!2253 = !DILocation(line: 74, column: 24, scope: !2196)
!2254 = !DILocation(line: 74, column: 22, scope: !2196)
!2255 = !DILocation(line: 74, column: 2, scope: !2196)
!2256 = !DILocation(line: 74, column: 6, scope: !2196)
!2257 = !DILocation(line: 74, column: 10, scope: !2196)
!2258 = !DILocation(line: 75, column: 1, scope: !2196)
!2259 = distinct !DISubprogram(name: "parse_hex16", scope: !2, file: !2, line: 1273, type: !2260, scopeLine: 1274, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!247, !310, !2262}
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!2263 = !DILocalVariable(name: "sp", arg: 1, scope: !2259, file: !2, line: 1273, type: !310)
!2264 = !DILocation(line: 1273, column: 38, scope: !2259)
!2265 = !DILocalVariable(name: "out", arg: 2, scope: !2259, file: !2, line: 1273, type: !2262)
!2266 = !DILocation(line: 1273, column: 52, scope: !2259)
!2267 = !DILocalVariable(name: "s", scope: !2259, file: !2, line: 1275, type: !280)
!2268 = !DILocation(line: 1275, column: 14, scope: !2259)
!2269 = !DILocation(line: 1275, column: 19, scope: !2259)
!2270 = !DILocation(line: 1275, column: 18, scope: !2259)
!2271 = !DILocalVariable(name: "ret", scope: !2259, file: !2, line: 1276, type: !256)
!2272 = !DILocation(line: 1276, column: 11, scope: !2259)
!2273 = !DILocalVariable(name: "i", scope: !2259, file: !2, line: 1277, type: !256)
!2274 = !DILocation(line: 1277, column: 11, scope: !2259)
!2275 = !DILocalVariable(name: "tmp", scope: !2259, file: !2, line: 1278, type: !256)
!2276 = !DILocation(line: 1278, column: 11, scope: !2259)
!2277 = !DILocation(line: 1280, column: 9, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1280, column: 2)
!2279 = !DILocation(line: 1280, column: 7, scope: !2278)
!2280 = !DILocation(line: 1280, column: 14, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2278, file: !2, line: 1280, column: 2)
!2282 = !DILocation(line: 1280, column: 16, scope: !2281)
!2283 = !DILocation(line: 1280, column: 2, scope: !2278)
!2284 = !DILocalVariable(name: "c", scope: !2285, file: !2, line: 1281, type: !4)
!2285 = distinct !DILexicalBlock(scope: !2281, file: !2, line: 1280, column: 26)
!2286 = !DILocation(line: 1281, column: 8, scope: !2285)
!2287 = !DILocation(line: 1281, column: 14, scope: !2285)
!2288 = !DILocation(line: 1281, column: 12, scope: !2285)
!2289 = !DILocation(line: 1282, column: 7, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !2, line: 1282, column: 7)
!2291 = !DILocation(line: 1282, column: 9, scope: !2290)
!2292 = !DILocation(line: 1282, column: 16, scope: !2290)
!2293 = !DILocation(line: 1282, column: 19, scope: !2290)
!2294 = !DILocation(line: 1282, column: 21, scope: !2290)
!2295 = !DILocation(line: 1282, column: 7, scope: !2285)
!2296 = !DILocation(line: 1283, column: 21, scope: !2290)
!2297 = !DILocation(line: 1283, column: 23, scope: !2290)
!2298 = !DILocation(line: 1283, column: 10, scope: !2290)
!2299 = !DILocation(line: 1283, column: 8, scope: !2290)
!2300 = !DILocation(line: 1283, column: 4, scope: !2290)
!2301 = !DILocation(line: 1284, column: 12, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2290, file: !2, line: 1284, column: 12)
!2303 = !DILocation(line: 1284, column: 14, scope: !2302)
!2304 = !DILocation(line: 1284, column: 21, scope: !2302)
!2305 = !DILocation(line: 1284, column: 24, scope: !2302)
!2306 = !DILocation(line: 1284, column: 26, scope: !2302)
!2307 = !DILocation(line: 1284, column: 12, scope: !2290)
!2308 = !DILocation(line: 1285, column: 21, scope: !2302)
!2309 = !DILocation(line: 1285, column: 23, scope: !2302)
!2310 = !DILocation(line: 1285, column: 29, scope: !2302)
!2311 = !DILocation(line: 1285, column: 10, scope: !2302)
!2312 = !DILocation(line: 1285, column: 8, scope: !2302)
!2313 = !DILocation(line: 1285, column: 4, scope: !2302)
!2314 = !DILocation(line: 1286, column: 12, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 1286, column: 12)
!2316 = !DILocation(line: 1286, column: 14, scope: !2315)
!2317 = !DILocation(line: 1286, column: 21, scope: !2315)
!2318 = !DILocation(line: 1286, column: 24, scope: !2315)
!2319 = !DILocation(line: 1286, column: 26, scope: !2315)
!2320 = !DILocation(line: 1286, column: 12, scope: !2302)
!2321 = !DILocation(line: 1287, column: 21, scope: !2315)
!2322 = !DILocation(line: 1287, column: 23, scope: !2315)
!2323 = !DILocation(line: 1287, column: 29, scope: !2315)
!2324 = !DILocation(line: 1287, column: 10, scope: !2315)
!2325 = !DILocation(line: 1287, column: 8, scope: !2315)
!2326 = !DILocation(line: 1287, column: 4, scope: !2315)
!2327 = !DILocation(line: 1289, column: 4, scope: !2315)
!2328 = !DILocation(line: 1291, column: 21, scope: !2285)
!2329 = !DILocation(line: 1291, column: 25, scope: !2285)
!2330 = !DILocation(line: 1291, column: 33, scope: !2285)
!2331 = !DILocation(line: 1291, column: 31, scope: !2285)
!2332 = !DILocation(line: 1291, column: 9, scope: !2285)
!2333 = !DILocation(line: 1291, column: 7, scope: !2285)
!2334 = !DILocation(line: 1292, column: 2, scope: !2285)
!2335 = !DILocation(line: 1280, column: 22, scope: !2281)
!2336 = !DILocation(line: 1280, column: 2, scope: !2281)
!2337 = distinct !{!2337, !2283, !2338, !321}
!2338 = !DILocation(line: 1292, column: 2, scope: !2278)
!2339 = !DILocation(line: 1294, column: 6, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2259, file: !2, line: 1294, column: 6)
!2341 = !DILocation(line: 1294, column: 6, scope: !2259)
!2342 = !DILocation(line: 1295, column: 10, scope: !2340)
!2343 = !DILocation(line: 1295, column: 4, scope: !2340)
!2344 = !DILocation(line: 1295, column: 8, scope: !2340)
!2345 = !DILocation(line: 1295, column: 3, scope: !2340)
!2346 = !DILocation(line: 1296, column: 8, scope: !2259)
!2347 = !DILocation(line: 1296, column: 3, scope: !2259)
!2348 = !DILocation(line: 1296, column: 6, scope: !2259)
!2349 = !DILocation(line: 1297, column: 2, scope: !2259)
!2350 = !DILocation(line: 1298, column: 1, scope: !2259)
!2351 = distinct !DISubprogram(name: "from_surrogate_pair", scope: !2, file: !2, line: 300, type: !2352, scopeLine: 301, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!247, !256, !256, !2354}
!2354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!2355 = !DILocalVariable(name: "uc", arg: 1, scope: !2351, file: !2, line: 300, type: !256)
!2356 = !DILocation(line: 300, column: 42, scope: !2351)
!2357 = !DILocalVariable(name: "lc", arg: 2, scope: !2351, file: !2, line: 300, type: !256)
!2358 = !DILocation(line: 300, column: 55, scope: !2351)
!2359 = !DILocalVariable(name: "unicode", arg: 3, scope: !2351, file: !2, line: 300, type: !2354)
!2360 = !DILocation(line: 300, column: 68, scope: !2351)
!2361 = !DILocation(line: 302, column: 6, scope: !2362)
!2362 = distinct !DILexicalBlock(scope: !2351, file: !2, line: 302, column: 6)
!2363 = !DILocation(line: 302, column: 9, scope: !2362)
!2364 = !DILocation(line: 302, column: 19, scope: !2362)
!2365 = !DILocation(line: 302, column: 22, scope: !2362)
!2366 = !DILocation(line: 302, column: 25, scope: !2362)
!2367 = !DILocation(line: 302, column: 35, scope: !2362)
!2368 = !DILocation(line: 302, column: 38, scope: !2362)
!2369 = !DILocation(line: 302, column: 41, scope: !2362)
!2370 = !DILocation(line: 302, column: 51, scope: !2362)
!2371 = !DILocation(line: 302, column: 54, scope: !2362)
!2372 = !DILocation(line: 302, column: 57, scope: !2362)
!2373 = !DILocation(line: 302, column: 6, scope: !2351)
!2374 = !DILocation(line: 303, column: 36, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 302, column: 68)
!2376 = !DILocation(line: 303, column: 27, scope: !2375)
!2377 = !DILocation(line: 303, column: 39, scope: !2375)
!2378 = !DILocation(line: 303, column: 48, scope: !2375)
!2379 = !DILocation(line: 303, column: 58, scope: !2375)
!2380 = !DILocation(line: 303, column: 61, scope: !2375)
!2381 = !DILocation(line: 303, column: 55, scope: !2375)
!2382 = !DILocation(line: 303, column: 22, scope: !2375)
!2383 = !DILocation(line: 303, column: 4, scope: !2375)
!2384 = !DILocation(line: 303, column: 12, scope: !2375)
!2385 = !DILocation(line: 304, column: 3, scope: !2375)
!2386 = !DILocation(line: 306, column: 3, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 305, column: 9)
!2388 = !DILocation(line: 308, column: 1, scope: !2351)
!2389 = distinct !DISubprogram(name: "utf8_write_char", scope: !2, file: !2, line: 263, type: !2390, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2390 = !DISubroutineType(types: !2391)
!2391 = !{!228, !261, !229}
!2392 = !DILocalVariable(name: "unicode", arg: 1, scope: !2389, file: !2, line: 263, type: !261)
!2393 = !DILocation(line: 263, column: 36, scope: !2389)
!2394 = !DILocalVariable(name: "out", arg: 2, scope: !2389, file: !2, line: 263, type: !229)
!2395 = !DILocation(line: 263, column: 51, scope: !2389)
!2396 = !DILocalVariable(name: "o", scope: !2389, file: !2, line: 265, type: !264)
!2397 = !DILocation(line: 265, column: 17, scope: !2389)
!2398 = !DILocation(line: 265, column: 38, scope: !2389)
!2399 = !DILocation(line: 267, column: 2, scope: !2400)
!2400 = distinct !DILexicalBlock(scope: !2401, file: !2, line: 267, column: 2)
!2401 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 267, column: 2)
!2402 = !DILocation(line: 267, column: 2, scope: !2401)
!2403 = !DILocation(line: 269, column: 6, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 269, column: 6)
!2405 = !DILocation(line: 269, column: 14, scope: !2404)
!2406 = !DILocation(line: 269, column: 6, scope: !2389)
!2407 = !DILocation(line: 271, column: 25, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 269, column: 23)
!2409 = !DILocation(line: 271, column: 10, scope: !2408)
!2410 = !DILocation(line: 271, column: 5, scope: !2408)
!2411 = !DILocation(line: 271, column: 8, scope: !2408)
!2412 = !DILocation(line: 272, column: 3, scope: !2408)
!2413 = !DILocation(line: 273, column: 13, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 273, column: 13)
!2415 = !DILocation(line: 273, column: 21, scope: !2414)
!2416 = !DILocation(line: 273, column: 13, scope: !2404)
!2417 = !DILocation(line: 275, column: 33, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 273, column: 31)
!2419 = !DILocation(line: 275, column: 41, scope: !2418)
!2420 = !DILocation(line: 275, column: 31, scope: !2418)
!2421 = !DILocation(line: 275, column: 10, scope: !2418)
!2422 = !DILocation(line: 275, column: 5, scope: !2418)
!2423 = !DILocation(line: 275, column: 8, scope: !2418)
!2424 = !DILocation(line: 276, column: 34, scope: !2418)
!2425 = !DILocation(line: 276, column: 42, scope: !2418)
!2426 = !DILocation(line: 276, column: 31, scope: !2418)
!2427 = !DILocation(line: 276, column: 10, scope: !2418)
!2428 = !DILocation(line: 276, column: 5, scope: !2418)
!2429 = !DILocation(line: 276, column: 8, scope: !2418)
!2430 = !DILocation(line: 277, column: 3, scope: !2418)
!2431 = !DILocation(line: 278, column: 13, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2414, file: !2, line: 278, column: 13)
!2433 = !DILocation(line: 278, column: 21, scope: !2432)
!2434 = !DILocation(line: 278, column: 13, scope: !2414)
!2435 = !DILocation(line: 280, column: 33, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 278, column: 32)
!2437 = !DILocation(line: 280, column: 41, scope: !2436)
!2438 = !DILocation(line: 280, column: 31, scope: !2436)
!2439 = !DILocation(line: 280, column: 10, scope: !2436)
!2440 = !DILocation(line: 280, column: 5, scope: !2436)
!2441 = !DILocation(line: 280, column: 8, scope: !2436)
!2442 = !DILocation(line: 281, column: 34, scope: !2436)
!2443 = !DILocation(line: 281, column: 42, scope: !2436)
!2444 = !DILocation(line: 281, column: 47, scope: !2436)
!2445 = !DILocation(line: 281, column: 31, scope: !2436)
!2446 = !DILocation(line: 281, column: 10, scope: !2436)
!2447 = !DILocation(line: 281, column: 5, scope: !2436)
!2448 = !DILocation(line: 281, column: 8, scope: !2436)
!2449 = !DILocation(line: 282, column: 34, scope: !2436)
!2450 = !DILocation(line: 282, column: 42, scope: !2436)
!2451 = !DILocation(line: 282, column: 31, scope: !2436)
!2452 = !DILocation(line: 282, column: 10, scope: !2436)
!2453 = !DILocation(line: 282, column: 5, scope: !2436)
!2454 = !DILocation(line: 282, column: 8, scope: !2436)
!2455 = !DILocation(line: 283, column: 3, scope: !2436)
!2456 = !DILocation(line: 286, column: 33, scope: !2457)
!2457 = distinct !DILexicalBlock(scope: !2432, file: !2, line: 284, column: 9)
!2458 = !DILocation(line: 286, column: 41, scope: !2457)
!2459 = !DILocation(line: 286, column: 31, scope: !2457)
!2460 = !DILocation(line: 286, column: 10, scope: !2457)
!2461 = !DILocation(line: 286, column: 5, scope: !2457)
!2462 = !DILocation(line: 286, column: 8, scope: !2457)
!2463 = !DILocation(line: 287, column: 34, scope: !2457)
!2464 = !DILocation(line: 287, column: 42, scope: !2457)
!2465 = !DILocation(line: 287, column: 48, scope: !2457)
!2466 = !DILocation(line: 287, column: 31, scope: !2457)
!2467 = !DILocation(line: 287, column: 10, scope: !2457)
!2468 = !DILocation(line: 287, column: 5, scope: !2457)
!2469 = !DILocation(line: 287, column: 8, scope: !2457)
!2470 = !DILocation(line: 288, column: 34, scope: !2457)
!2471 = !DILocation(line: 288, column: 42, scope: !2457)
!2472 = !DILocation(line: 288, column: 47, scope: !2457)
!2473 = !DILocation(line: 288, column: 31, scope: !2457)
!2474 = !DILocation(line: 288, column: 10, scope: !2457)
!2475 = !DILocation(line: 288, column: 5, scope: !2457)
!2476 = !DILocation(line: 288, column: 8, scope: !2457)
!2477 = !DILocation(line: 289, column: 34, scope: !2457)
!2478 = !DILocation(line: 289, column: 42, scope: !2457)
!2479 = !DILocation(line: 289, column: 31, scope: !2457)
!2480 = !DILocation(line: 289, column: 10, scope: !2457)
!2481 = !DILocation(line: 289, column: 5, scope: !2457)
!2482 = !DILocation(line: 289, column: 8, scope: !2457)
!2483 = !DILocation(line: 290, column: 3, scope: !2457)
!2484 = !DILocation(line: 292, column: 1, scope: !2389)
!2485 = distinct !DISubprogram(name: "utf8_validate_cz", scope: !2, file: !2, line: 149, type: !2486, scopeLine: 150, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!230, !280}
!2488 = !DILocalVariable(name: "s", arg: 1, scope: !2485, file: !2, line: 149, type: !280)
!2489 = !DILocation(line: 149, column: 44, scope: !2485)
!2490 = !DILocalVariable(name: "c", scope: !2485, file: !2, line: 151, type: !265)
!2491 = !DILocation(line: 151, column: 16, scope: !2485)
!2492 = !DILocation(line: 151, column: 37, scope: !2485)
!2493 = !DILocation(line: 151, column: 35, scope: !2485)
!2494 = !DILocation(line: 153, column: 6, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2485, file: !2, line: 153, column: 6)
!2496 = !DILocation(line: 153, column: 8, scope: !2495)
!2497 = !DILocation(line: 153, column: 6, scope: !2485)
!2498 = !DILocation(line: 154, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 153, column: 17)
!2500 = !DILocation(line: 155, column: 13, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2495, file: !2, line: 155, column: 13)
!2502 = !DILocation(line: 155, column: 15, scope: !2501)
!2503 = !DILocation(line: 155, column: 13, scope: !2495)
!2504 = !DILocation(line: 157, column: 3, scope: !2505)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 155, column: 24)
!2506 = !DILocation(line: 158, column: 13, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 158, column: 13)
!2508 = !DILocation(line: 158, column: 15, scope: !2507)
!2509 = !DILocation(line: 158, column: 13, scope: !2501)
!2510 = !DILocation(line: 160, column: 25, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2512, file: !2, line: 160, column: 7)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 158, column: 24)
!2513 = !DILocation(line: 160, column: 23, scope: !2511)
!2514 = !DILocation(line: 160, column: 8, scope: !2511)
!2515 = !DILocation(line: 160, column: 28, scope: !2511)
!2516 = !DILocation(line: 160, column: 36, scope: !2511)
!2517 = !DILocation(line: 160, column: 7, scope: !2512)
!2518 = !DILocation(line: 161, column: 4, scope: !2511)
!2519 = !DILocation(line: 163, column: 3, scope: !2512)
!2520 = !DILocation(line: 164, column: 13, scope: !2521)
!2521 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 164, column: 13)
!2522 = !DILocation(line: 164, column: 15, scope: !2521)
!2523 = !DILocation(line: 164, column: 13, scope: !2507)
!2524 = !DILocation(line: 166, column: 7, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 166, column: 7)
!2526 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 164, column: 24)
!2527 = !DILocation(line: 166, column: 9, scope: !2525)
!2528 = !DILocation(line: 166, column: 17, scope: !2525)
!2529 = !DILocation(line: 166, column: 36, scope: !2525)
!2530 = !DILocation(line: 166, column: 35, scope: !2525)
!2531 = !DILocation(line: 166, column: 20, scope: !2525)
!2532 = !DILocation(line: 166, column: 38, scope: !2525)
!2533 = !DILocation(line: 166, column: 7, scope: !2526)
!2534 = !DILocation(line: 167, column: 4, scope: !2525)
!2535 = !DILocation(line: 170, column: 7, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 170, column: 7)
!2537 = !DILocation(line: 170, column: 9, scope: !2536)
!2538 = !DILocation(line: 170, column: 17, scope: !2536)
!2539 = !DILocation(line: 170, column: 36, scope: !2536)
!2540 = !DILocation(line: 170, column: 35, scope: !2536)
!2541 = !DILocation(line: 170, column: 20, scope: !2536)
!2542 = !DILocation(line: 170, column: 38, scope: !2536)
!2543 = !DILocation(line: 170, column: 7, scope: !2526)
!2544 = !DILocation(line: 171, column: 4, scope: !2536)
!2545 = !DILocation(line: 174, column: 25, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 174, column: 7)
!2547 = !DILocation(line: 174, column: 23, scope: !2546)
!2548 = !DILocation(line: 174, column: 8, scope: !2546)
!2549 = !DILocation(line: 174, column: 28, scope: !2546)
!2550 = !DILocation(line: 174, column: 36, scope: !2546)
!2551 = !DILocation(line: 174, column: 7, scope: !2526)
!2552 = !DILocation(line: 175, column: 4, scope: !2546)
!2553 = !DILocation(line: 176, column: 25, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2526, file: !2, line: 176, column: 7)
!2555 = !DILocation(line: 176, column: 23, scope: !2554)
!2556 = !DILocation(line: 176, column: 8, scope: !2554)
!2557 = !DILocation(line: 176, column: 28, scope: !2554)
!2558 = !DILocation(line: 176, column: 36, scope: !2554)
!2559 = !DILocation(line: 176, column: 7, scope: !2526)
!2560 = !DILocation(line: 177, column: 4, scope: !2554)
!2561 = !DILocation(line: 179, column: 3, scope: !2526)
!2562 = !DILocation(line: 180, column: 13, scope: !2563)
!2563 = distinct !DILexicalBlock(scope: !2521, file: !2, line: 180, column: 13)
!2564 = !DILocation(line: 180, column: 15, scope: !2563)
!2565 = !DILocation(line: 180, column: 13, scope: !2521)
!2566 = !DILocation(line: 182, column: 7, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 182, column: 7)
!2568 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 180, column: 24)
!2569 = !DILocation(line: 182, column: 9, scope: !2567)
!2570 = !DILocation(line: 182, column: 17, scope: !2567)
!2571 = !DILocation(line: 182, column: 36, scope: !2567)
!2572 = !DILocation(line: 182, column: 35, scope: !2567)
!2573 = !DILocation(line: 182, column: 20, scope: !2567)
!2574 = !DILocation(line: 182, column: 38, scope: !2567)
!2575 = !DILocation(line: 182, column: 7, scope: !2568)
!2576 = !DILocation(line: 183, column: 4, scope: !2567)
!2577 = !DILocation(line: 186, column: 7, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 186, column: 7)
!2579 = !DILocation(line: 186, column: 9, scope: !2578)
!2580 = !DILocation(line: 186, column: 17, scope: !2578)
!2581 = !DILocation(line: 186, column: 36, scope: !2578)
!2582 = !DILocation(line: 186, column: 35, scope: !2578)
!2583 = !DILocation(line: 186, column: 20, scope: !2578)
!2584 = !DILocation(line: 186, column: 38, scope: !2578)
!2585 = !DILocation(line: 186, column: 7, scope: !2568)
!2586 = !DILocation(line: 187, column: 4, scope: !2578)
!2587 = !DILocation(line: 190, column: 25, scope: !2588)
!2588 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 190, column: 7)
!2589 = !DILocation(line: 190, column: 23, scope: !2588)
!2590 = !DILocation(line: 190, column: 8, scope: !2588)
!2591 = !DILocation(line: 190, column: 28, scope: !2588)
!2592 = !DILocation(line: 190, column: 36, scope: !2588)
!2593 = !DILocation(line: 190, column: 7, scope: !2568)
!2594 = !DILocation(line: 191, column: 4, scope: !2588)
!2595 = !DILocation(line: 192, column: 25, scope: !2596)
!2596 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 192, column: 7)
!2597 = !DILocation(line: 192, column: 23, scope: !2596)
!2598 = !DILocation(line: 192, column: 8, scope: !2596)
!2599 = !DILocation(line: 192, column: 28, scope: !2596)
!2600 = !DILocation(line: 192, column: 36, scope: !2596)
!2601 = !DILocation(line: 192, column: 7, scope: !2568)
!2602 = !DILocation(line: 193, column: 4, scope: !2596)
!2603 = !DILocation(line: 194, column: 25, scope: !2604)
!2604 = distinct !DILexicalBlock(scope: !2568, file: !2, line: 194, column: 7)
!2605 = !DILocation(line: 194, column: 23, scope: !2604)
!2606 = !DILocation(line: 194, column: 8, scope: !2604)
!2607 = !DILocation(line: 194, column: 28, scope: !2604)
!2608 = !DILocation(line: 194, column: 36, scope: !2604)
!2609 = !DILocation(line: 194, column: 7, scope: !2568)
!2610 = !DILocation(line: 195, column: 4, scope: !2604)
!2611 = !DILocation(line: 197, column: 3, scope: !2568)
!2612 = !DILocation(line: 199, column: 3, scope: !2613)
!2613 = distinct !DILexicalBlock(scope: !2563, file: !2, line: 198, column: 9)
!2614 = !DILocation(line: 201, column: 1, scope: !2485)
!2615 = distinct !DISubprogram(name: "sb_free", scope: !2, file: !2, line: 110, type: !556, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2616 = !DILocalVariable(name: "sb", arg: 1, scope: !2615, file: !2, line: 110, type: !558)
!2617 = !DILocation(line: 110, column: 25, scope: !2615)
!2618 = !DILocation(line: 112, column: 7, scope: !2615)
!2619 = !DILocation(line: 112, column: 11, scope: !2615)
!2620 = !DILocation(line: 112, column: 2, scope: !2615)
!2621 = !DILocation(line: 113, column: 1, scope: !2615)
!2622 = distinct !DISubprogram(name: "sb_puts", scope: !2, file: !2, line: 90, type: !586, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2623 = !DILocalVariable(name: "sb", arg: 1, scope: !2622, file: !2, line: 90, type: !558)
!2624 = !DILocation(line: 90, column: 25, scope: !2622)
!2625 = !DILocalVariable(name: "str", arg: 2, scope: !2622, file: !2, line: 90, type: !280)
!2626 = !DILocation(line: 90, column: 41, scope: !2622)
!2627 = !DILocation(line: 92, column: 9, scope: !2622)
!2628 = !DILocation(line: 92, column: 13, scope: !2622)
!2629 = !DILocation(line: 92, column: 25, scope: !2622)
!2630 = !DILocation(line: 92, column: 18, scope: !2622)
!2631 = !DILocation(line: 92, column: 2, scope: !2622)
!2632 = !DILocation(line: 93, column: 1, scope: !2622)
!2633 = distinct !DISubprogram(name: "emit_number", scope: !2, file: !2, line: 1230, type: !2634, scopeLine: 1231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !558, !250}
!2636 = !DILocalVariable(name: "out", arg: 1, scope: !2633, file: !2, line: 1230, type: !558)
!2637 = !DILocation(line: 1230, column: 29, scope: !2633)
!2638 = !DILocalVariable(name: "num", arg: 2, scope: !2633, file: !2, line: 1230, type: !250)
!2639 = !DILocation(line: 1230, column: 41, scope: !2633)
!2640 = !DILocalVariable(name: "buf", scope: !2633, file: !2, line: 1238, type: !2641)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 512, elements: !2642)
!2642 = !{!2643}
!2643 = !DISubrange(count: 64)
!2644 = !DILocation(line: 1238, column: 7, scope: !2633)
!2645 = !DILocation(line: 1239, column: 10, scope: !2633)
!2646 = !DILocation(line: 1239, column: 24, scope: !2633)
!2647 = !DILocation(line: 1239, column: 2, scope: !2633)
!2648 = !DILocation(line: 1241, column: 22, scope: !2649)
!2649 = distinct !DILexicalBlock(scope: !2633, file: !2, line: 1241, column: 6)
!2650 = !DILocation(line: 1241, column: 6, scope: !2649)
!2651 = !DILocation(line: 1241, column: 6, scope: !2633)
!2652 = !DILocation(line: 1242, column: 11, scope: !2649)
!2653 = !DILocation(line: 1242, column: 16, scope: !2649)
!2654 = !DILocation(line: 1242, column: 3, scope: !2649)
!2655 = !DILocation(line: 1244, column: 11, scope: !2649)
!2656 = !DILocation(line: 1244, column: 3, scope: !2649)
!2657 = !DILocation(line: 1245, column: 1, scope: !2633)
!2658 = distinct !DISubprogram(name: "emit_array", scope: !2, file: !2, line: 1039, type: !825, scopeLine: 1040, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2659 = !DILocalVariable(name: "out", arg: 1, scope: !2658, file: !2, line: 1039, type: !558)
!2660 = !DILocation(line: 1039, column: 28, scope: !2658)
!2661 = !DILocalVariable(name: "array", arg: 2, scope: !2658, file: !2, line: 1039, type: !509)
!2662 = !DILocation(line: 1039, column: 49, scope: !2658)
!2663 = !DILocalVariable(name: "element", scope: !2658, file: !2, line: 1041, type: !509)
!2664 = !DILocation(line: 1041, column: 18, scope: !2658)
!2665 = !DILocation(line: 1043, column: 2, scope: !2658)
!2666 = !DILocation(line: 1043, column: 2, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2668, file: !2, line: 1043, column: 2)
!2668 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 1043, column: 2)
!2669 = !DILocation(line: 1043, column: 2, scope: !2668)
!2670 = !DILocation(line: 1044, column: 2, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 1044, column: 2)
!2672 = !DILocation(line: 1044, column: 2, scope: !2673)
!2673 = distinct !DILexicalBlock(scope: !2671, file: !2, line: 1044, column: 2)
!2674 = !DILocation(line: 1045, column: 14, scope: !2675)
!2675 = distinct !DILexicalBlock(scope: !2673, file: !2, line: 1044, column: 31)
!2676 = !DILocation(line: 1045, column: 19, scope: !2675)
!2677 = !DILocation(line: 1045, column: 3, scope: !2675)
!2678 = !DILocation(line: 1046, column: 7, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2675, file: !2, line: 1046, column: 7)
!2680 = !DILocation(line: 1046, column: 16, scope: !2679)
!2681 = !DILocation(line: 1046, column: 21, scope: !2679)
!2682 = !DILocation(line: 1046, column: 7, scope: !2675)
!2683 = !DILocation(line: 1047, column: 4, scope: !2679)
!2684 = !DILocation(line: 1047, column: 4, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2686, file: !2, line: 1047, column: 4)
!2686 = distinct !DILexicalBlock(scope: !2679, file: !2, line: 1047, column: 4)
!2687 = !DILocation(line: 1047, column: 4, scope: !2686)
!2688 = !DILocation(line: 1048, column: 2, scope: !2675)
!2689 = distinct !{!2689, !2670, !2690, !321}
!2690 = !DILocation(line: 1048, column: 2, scope: !2671)
!2691 = !DILocation(line: 1049, column: 2, scope: !2658)
!2692 = !DILocation(line: 1049, column: 2, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2694, file: !2, line: 1049, column: 2)
!2694 = distinct !DILexicalBlock(scope: !2658, file: !2, line: 1049, column: 2)
!2695 = !DILocation(line: 1049, column: 2, scope: !2694)
!2696 = !DILocation(line: 1050, column: 1, scope: !2658)
!2697 = distinct !DISubprogram(name: "emit_object", scope: !2, file: !2, line: 1076, type: !825, scopeLine: 1077, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2698 = !DILocalVariable(name: "out", arg: 1, scope: !2697, file: !2, line: 1076, type: !558)
!2699 = !DILocation(line: 1076, column: 29, scope: !2697)
!2700 = !DILocalVariable(name: "object", arg: 2, scope: !2697, file: !2, line: 1076, type: !509)
!2701 = !DILocation(line: 1076, column: 50, scope: !2697)
!2702 = !DILocalVariable(name: "member", scope: !2697, file: !2, line: 1078, type: !509)
!2703 = !DILocation(line: 1078, column: 18, scope: !2697)
!2704 = !DILocation(line: 1080, column: 2, scope: !2697)
!2705 = !DILocation(line: 1080, column: 2, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2707, file: !2, line: 1080, column: 2)
!2707 = distinct !DILexicalBlock(scope: !2697, file: !2, line: 1080, column: 2)
!2708 = !DILocation(line: 1080, column: 2, scope: !2707)
!2709 = !DILocation(line: 1081, column: 2, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2697, file: !2, line: 1081, column: 2)
!2711 = !DILocation(line: 1081, column: 2, scope: !2712)
!2712 = distinct !DILexicalBlock(scope: !2710, file: !2, line: 1081, column: 2)
!2713 = !DILocation(line: 1082, column: 15, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2712, file: !2, line: 1081, column: 31)
!2715 = !DILocation(line: 1082, column: 20, scope: !2714)
!2716 = !DILocation(line: 1082, column: 28, scope: !2714)
!2717 = !DILocation(line: 1082, column: 3, scope: !2714)
!2718 = !DILocation(line: 1083, column: 3, scope: !2714)
!2719 = !DILocation(line: 1083, column: 3, scope: !2720)
!2720 = distinct !DILexicalBlock(scope: !2721, file: !2, line: 1083, column: 3)
!2721 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 1083, column: 3)
!2722 = !DILocation(line: 1083, column: 3, scope: !2721)
!2723 = !DILocation(line: 1084, column: 14, scope: !2714)
!2724 = !DILocation(line: 1084, column: 19, scope: !2714)
!2725 = !DILocation(line: 1084, column: 3, scope: !2714)
!2726 = !DILocation(line: 1085, column: 7, scope: !2727)
!2727 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 1085, column: 7)
!2728 = !DILocation(line: 1085, column: 15, scope: !2727)
!2729 = !DILocation(line: 1085, column: 20, scope: !2727)
!2730 = !DILocation(line: 1085, column: 7, scope: !2714)
!2731 = !DILocation(line: 1086, column: 4, scope: !2727)
!2732 = !DILocation(line: 1086, column: 4, scope: !2733)
!2733 = distinct !DILexicalBlock(scope: !2734, file: !2, line: 1086, column: 4)
!2734 = distinct !DILexicalBlock(scope: !2727, file: !2, line: 1086, column: 4)
!2735 = !DILocation(line: 1086, column: 4, scope: !2734)
!2736 = !DILocation(line: 1087, column: 2, scope: !2714)
!2737 = distinct !{!2737, !2709, !2738, !321}
!2738 = !DILocation(line: 1087, column: 2, scope: !2710)
!2739 = !DILocation(line: 1088, column: 2, scope: !2697)
!2740 = !DILocation(line: 1088, column: 2, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2742, file: !2, line: 1088, column: 2)
!2742 = distinct !DILexicalBlock(scope: !2697, file: !2, line: 1088, column: 2)
!2743 = !DILocation(line: 1088, column: 2, scope: !2742)
!2744 = !DILocation(line: 1089, column: 1, scope: !2697)
!2745 = distinct !DISubprogram(name: "sb_put", scope: !2, file: !2, line: 77, type: !2746, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2746 = !DISubroutineType(types: !2747)
!2747 = !{null, !558, !280, !230}
!2748 = !DILocalVariable(name: "sb", arg: 1, scope: !2745, file: !2, line: 77, type: !558)
!2749 = !DILocation(line: 77, column: 24, scope: !2745)
!2750 = !DILocalVariable(name: "bytes", arg: 2, scope: !2745, file: !2, line: 77, type: !280)
!2751 = !DILocation(line: 77, column: 40, scope: !2745)
!2752 = !DILocalVariable(name: "count", arg: 3, scope: !2745, file: !2, line: 77, type: !230)
!2753 = !DILocation(line: 77, column: 54, scope: !2745)
!2754 = !DILocation(line: 79, column: 2, scope: !2745)
!2755 = !DILocation(line: 79, column: 2, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2757, file: !2, line: 79, column: 2)
!2757 = distinct !DILexicalBlock(scope: !2745, file: !2, line: 79, column: 2)
!2758 = !DILocation(line: 79, column: 2, scope: !2757)
!2759 = !DILocation(line: 80, column: 9, scope: !2745)
!2760 = !DILocation(line: 80, column: 13, scope: !2745)
!2761 = !DILocation(line: 80, column: 18, scope: !2745)
!2762 = !DILocation(line: 80, column: 25, scope: !2745)
!2763 = !DILocation(line: 80, column: 2, scope: !2745)
!2764 = !DILocation(line: 81, column: 13, scope: !2745)
!2765 = !DILocation(line: 81, column: 2, scope: !2745)
!2766 = !DILocation(line: 81, column: 6, scope: !2745)
!2767 = !DILocation(line: 81, column: 10, scope: !2745)
!2768 = !DILocation(line: 82, column: 1, scope: !2745)
!2769 = distinct !DISubprogram(name: "number_is_valid", scope: !2, file: !2, line: 1252, type: !982, scopeLine: 1253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2770 = !DILocalVariable(name: "num", arg: 1, scope: !2769, file: !2, line: 1252, type: !280)
!2771 = !DILocation(line: 1252, column: 41, scope: !2769)
!2772 = !DILocation(line: 1254, column: 10, scope: !2769)
!2773 = !DILocation(line: 1254, column: 35, scope: !2769)
!2774 = !DILocation(line: 1254, column: 39, scope: !2769)
!2775 = !DILocation(line: 1254, column: 38, scope: !2769)
!2776 = !DILocation(line: 1254, column: 43, scope: !2769)
!2777 = !DILocation(line: 0, scope: !2769)
!2778 = !DILocation(line: 1254, column: 2, scope: !2769)
!2779 = distinct !DISubprogram(name: "emit_array_indented", scope: !2, file: !2, line: 1052, type: !772, scopeLine: 1053, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2780 = !DILocalVariable(name: "out", arg: 1, scope: !2779, file: !2, line: 1052, type: !558)
!2781 = !DILocation(line: 1052, column: 37, scope: !2779)
!2782 = !DILocalVariable(name: "array", arg: 2, scope: !2779, file: !2, line: 1052, type: !509)
!2783 = !DILocation(line: 1052, column: 58, scope: !2779)
!2784 = !DILocalVariable(name: "space", arg: 3, scope: !2779, file: !2, line: 1052, type: !280)
!2785 = !DILocation(line: 1052, column: 77, scope: !2779)
!2786 = !DILocalVariable(name: "indent_level", arg: 4, scope: !2779, file: !2, line: 1052, type: !228)
!2787 = !DILocation(line: 1052, column: 88, scope: !2779)
!2788 = !DILocalVariable(name: "element", scope: !2779, file: !2, line: 1054, type: !509)
!2789 = !DILocation(line: 1054, column: 18, scope: !2779)
!2790 = !DILocation(line: 1054, column: 28, scope: !2779)
!2791 = !DILocation(line: 1054, column: 35, scope: !2779)
!2792 = !DILocation(line: 1054, column: 44, scope: !2779)
!2793 = !DILocalVariable(name: "i", scope: !2779, file: !2, line: 1055, type: !228)
!2794 = !DILocation(line: 1055, column: 6, scope: !2779)
!2795 = !DILocation(line: 1057, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1057, column: 6)
!2797 = !DILocation(line: 1057, column: 14, scope: !2796)
!2798 = !DILocation(line: 1057, column: 6, scope: !2779)
!2799 = !DILocation(line: 1058, column: 11, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2796, file: !2, line: 1057, column: 23)
!2801 = !DILocation(line: 1058, column: 3, scope: !2800)
!2802 = !DILocation(line: 1059, column: 3, scope: !2800)
!2803 = !DILocation(line: 1062, column: 10, scope: !2779)
!2804 = !DILocation(line: 1062, column: 2, scope: !2779)
!2805 = !DILocation(line: 1063, column: 2, scope: !2779)
!2806 = !DILocation(line: 1063, column: 9, scope: !2779)
!2807 = !DILocation(line: 1063, column: 17, scope: !2779)
!2808 = !DILocation(line: 1064, column: 10, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2810, file: !2, line: 1064, column: 3)
!2810 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1063, column: 26)
!2811 = !DILocation(line: 1064, column: 8, scope: !2809)
!2812 = !DILocation(line: 1064, column: 15, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 1064, column: 3)
!2814 = !DILocation(line: 1064, column: 19, scope: !2813)
!2815 = !DILocation(line: 1064, column: 32, scope: !2813)
!2816 = !DILocation(line: 1064, column: 17, scope: !2813)
!2817 = !DILocation(line: 1064, column: 3, scope: !2809)
!2818 = !DILocation(line: 1065, column: 12, scope: !2813)
!2819 = !DILocation(line: 1065, column: 17, scope: !2813)
!2820 = !DILocation(line: 1065, column: 4, scope: !2813)
!2821 = !DILocation(line: 1064, column: 38, scope: !2813)
!2822 = !DILocation(line: 1064, column: 3, scope: !2813)
!2823 = distinct !{!2823, !2817, !2824, !321}
!2824 = !DILocation(line: 1065, column: 22, scope: !2809)
!2825 = !DILocation(line: 1066, column: 23, scope: !2810)
!2826 = !DILocation(line: 1066, column: 28, scope: !2810)
!2827 = !DILocation(line: 1066, column: 37, scope: !2810)
!2828 = !DILocation(line: 1066, column: 44, scope: !2810)
!2829 = !DILocation(line: 1066, column: 57, scope: !2810)
!2830 = !DILocation(line: 1066, column: 3, scope: !2810)
!2831 = !DILocation(line: 1068, column: 13, scope: !2810)
!2832 = !DILocation(line: 1068, column: 22, scope: !2810)
!2833 = !DILocation(line: 1068, column: 11, scope: !2810)
!2834 = !DILocation(line: 1069, column: 11, scope: !2810)
!2835 = !DILocation(line: 1069, column: 16, scope: !2810)
!2836 = !DILocation(line: 1069, column: 24, scope: !2810)
!2837 = !DILocation(line: 1069, column: 3, scope: !2810)
!2838 = distinct !{!2838, !2805, !2839, !321}
!2839 = !DILocation(line: 1070, column: 2, scope: !2779)
!2840 = !DILocation(line: 1071, column: 9, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1071, column: 2)
!2842 = !DILocation(line: 1071, column: 7, scope: !2841)
!2843 = !DILocation(line: 1071, column: 14, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 1071, column: 2)
!2845 = !DILocation(line: 1071, column: 18, scope: !2844)
!2846 = !DILocation(line: 1071, column: 16, scope: !2844)
!2847 = !DILocation(line: 1071, column: 2, scope: !2841)
!2848 = !DILocation(line: 1072, column: 11, scope: !2844)
!2849 = !DILocation(line: 1072, column: 16, scope: !2844)
!2850 = !DILocation(line: 1072, column: 3, scope: !2844)
!2851 = !DILocation(line: 1071, column: 33, scope: !2844)
!2852 = !DILocation(line: 1071, column: 2, scope: !2844)
!2853 = distinct !{!2853, !2847, !2854, !321}
!2854 = !DILocation(line: 1072, column: 21, scope: !2841)
!2855 = !DILocation(line: 1073, column: 2, scope: !2779)
!2856 = !DILocation(line: 1073, column: 2, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2858, file: !2, line: 1073, column: 2)
!2858 = distinct !DILexicalBlock(scope: !2779, file: !2, line: 1073, column: 2)
!2859 = !DILocation(line: 1073, column: 2, scope: !2858)
!2860 = !DILocation(line: 1074, column: 1, scope: !2779)
!2861 = distinct !DISubprogram(name: "emit_object_indented", scope: !2, file: !2, line: 1091, type: !772, scopeLine: 1092, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2862 = !DILocalVariable(name: "out", arg: 1, scope: !2861, file: !2, line: 1091, type: !558)
!2863 = !DILocation(line: 1091, column: 38, scope: !2861)
!2864 = !DILocalVariable(name: "object", arg: 2, scope: !2861, file: !2, line: 1091, type: !509)
!2865 = !DILocation(line: 1091, column: 59, scope: !2861)
!2866 = !DILocalVariable(name: "space", arg: 3, scope: !2861, file: !2, line: 1091, type: !280)
!2867 = !DILocation(line: 1091, column: 79, scope: !2861)
!2868 = !DILocalVariable(name: "indent_level", arg: 4, scope: !2861, file: !2, line: 1091, type: !228)
!2869 = !DILocation(line: 1091, column: 90, scope: !2861)
!2870 = !DILocalVariable(name: "member", scope: !2861, file: !2, line: 1093, type: !509)
!2871 = !DILocation(line: 1093, column: 18, scope: !2861)
!2872 = !DILocation(line: 1093, column: 27, scope: !2861)
!2873 = !DILocation(line: 1093, column: 35, scope: !2861)
!2874 = !DILocation(line: 1093, column: 44, scope: !2861)
!2875 = !DILocalVariable(name: "i", scope: !2861, file: !2, line: 1094, type: !228)
!2876 = !DILocation(line: 1094, column: 6, scope: !2861)
!2877 = !DILocation(line: 1096, column: 6, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 1096, column: 6)
!2879 = !DILocation(line: 1096, column: 13, scope: !2878)
!2880 = !DILocation(line: 1096, column: 6, scope: !2861)
!2881 = !DILocation(line: 1097, column: 11, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2878, file: !2, line: 1096, column: 22)
!2883 = !DILocation(line: 1097, column: 3, scope: !2882)
!2884 = !DILocation(line: 1098, column: 3, scope: !2882)
!2885 = !DILocation(line: 1101, column: 10, scope: !2861)
!2886 = !DILocation(line: 1101, column: 2, scope: !2861)
!2887 = !DILocation(line: 1102, column: 2, scope: !2861)
!2888 = !DILocation(line: 1102, column: 9, scope: !2861)
!2889 = !DILocation(line: 1102, column: 16, scope: !2861)
!2890 = !DILocation(line: 1103, column: 10, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2892, file: !2, line: 1103, column: 3)
!2892 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 1102, column: 25)
!2893 = !DILocation(line: 1103, column: 8, scope: !2891)
!2894 = !DILocation(line: 1103, column: 15, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2891, file: !2, line: 1103, column: 3)
!2896 = !DILocation(line: 1103, column: 19, scope: !2895)
!2897 = !DILocation(line: 1103, column: 32, scope: !2895)
!2898 = !DILocation(line: 1103, column: 17, scope: !2895)
!2899 = !DILocation(line: 1103, column: 3, scope: !2891)
!2900 = !DILocation(line: 1104, column: 12, scope: !2895)
!2901 = !DILocation(line: 1104, column: 17, scope: !2895)
!2902 = !DILocation(line: 1104, column: 4, scope: !2895)
!2903 = !DILocation(line: 1103, column: 38, scope: !2895)
!2904 = !DILocation(line: 1103, column: 3, scope: !2895)
!2905 = distinct !{!2905, !2899, !2906, !321}
!2906 = !DILocation(line: 1104, column: 22, scope: !2891)
!2907 = !DILocation(line: 1105, column: 15, scope: !2892)
!2908 = !DILocation(line: 1105, column: 20, scope: !2892)
!2909 = !DILocation(line: 1105, column: 28, scope: !2892)
!2910 = !DILocation(line: 1105, column: 3, scope: !2892)
!2911 = !DILocation(line: 1106, column: 11, scope: !2892)
!2912 = !DILocation(line: 1106, column: 3, scope: !2892)
!2913 = !DILocation(line: 1107, column: 23, scope: !2892)
!2914 = !DILocation(line: 1107, column: 28, scope: !2892)
!2915 = !DILocation(line: 1107, column: 36, scope: !2892)
!2916 = !DILocation(line: 1107, column: 43, scope: !2892)
!2917 = !DILocation(line: 1107, column: 56, scope: !2892)
!2918 = !DILocation(line: 1107, column: 3, scope: !2892)
!2919 = !DILocation(line: 1109, column: 12, scope: !2892)
!2920 = !DILocation(line: 1109, column: 20, scope: !2892)
!2921 = !DILocation(line: 1109, column: 10, scope: !2892)
!2922 = !DILocation(line: 1110, column: 11, scope: !2892)
!2923 = !DILocation(line: 1110, column: 16, scope: !2892)
!2924 = !DILocation(line: 1110, column: 23, scope: !2892)
!2925 = !DILocation(line: 1110, column: 3, scope: !2892)
!2926 = distinct !{!2926, !2887, !2927, !321}
!2927 = !DILocation(line: 1111, column: 2, scope: !2861)
!2928 = !DILocation(line: 1112, column: 9, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 1112, column: 2)
!2930 = !DILocation(line: 1112, column: 7, scope: !2929)
!2931 = !DILocation(line: 1112, column: 14, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 1112, column: 2)
!2933 = !DILocation(line: 1112, column: 18, scope: !2932)
!2934 = !DILocation(line: 1112, column: 16, scope: !2932)
!2935 = !DILocation(line: 1112, column: 2, scope: !2929)
!2936 = !DILocation(line: 1113, column: 11, scope: !2932)
!2937 = !DILocation(line: 1113, column: 16, scope: !2932)
!2938 = !DILocation(line: 1113, column: 3, scope: !2932)
!2939 = !DILocation(line: 1112, column: 33, scope: !2932)
!2940 = !DILocation(line: 1112, column: 2, scope: !2932)
!2941 = distinct !{!2941, !2935, !2942, !321}
!2942 = !DILocation(line: 1113, column: 21, scope: !2929)
!2943 = !DILocation(line: 1114, column: 2, scope: !2861)
!2944 = !DILocation(line: 1114, column: 2, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2946, file: !2, line: 1114, column: 2)
!2946 = distinct !DILexicalBlock(scope: !2861, file: !2, line: 1114, column: 2)
!2947 = !DILocation(line: 1114, column: 2, scope: !2946)
!2948 = !DILocation(line: 1115, column: 1, scope: !2861)
!2949 = distinct !DISubprogram(name: "utf8_read_char", scope: !2, file: !2, line: 224, type: !2950, scopeLine: 225, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!2950 = !DISubroutineType(types: !2951)
!2951 = !{!228, !280, !2354}
!2952 = !DILocalVariable(name: "s", arg: 1, scope: !2949, file: !2, line: 224, type: !280)
!2953 = !DILocation(line: 224, column: 39, scope: !2949)
!2954 = !DILocalVariable(name: "out", arg: 2, scope: !2949, file: !2, line: 224, type: !2354)
!2955 = !DILocation(line: 224, column: 51, scope: !2949)
!2956 = !DILocalVariable(name: "c", scope: !2949, file: !2, line: 226, type: !266)
!2957 = !DILocation(line: 226, column: 23, scope: !2949)
!2958 = !DILocation(line: 226, column: 50, scope: !2949)
!2959 = !DILocation(line: 228, column: 2, scope: !2960)
!2960 = distinct !DILexicalBlock(scope: !2961, file: !2, line: 228, column: 2)
!2961 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 228, column: 2)
!2962 = !DILocation(line: 228, column: 2, scope: !2961)
!2963 = !DILocation(line: 230, column: 6, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2949, file: !2, line: 230, column: 6)
!2965 = !DILocation(line: 230, column: 11, scope: !2964)
!2966 = !DILocation(line: 230, column: 6, scope: !2949)
!2967 = !DILocation(line: 232, column: 10, scope: !2968)
!2968 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 230, column: 20)
!2969 = !DILocation(line: 232, column: 4, scope: !2968)
!2970 = !DILocation(line: 232, column: 8, scope: !2968)
!2971 = !DILocation(line: 233, column: 3, scope: !2968)
!2972 = !DILocation(line: 234, column: 13, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2964, file: !2, line: 234, column: 13)
!2974 = !DILocation(line: 234, column: 18, scope: !2973)
!2975 = !DILocation(line: 234, column: 13, scope: !2964)
!2976 = !DILocation(line: 236, column: 20, scope: !2977)
!2977 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 234, column: 27)
!2978 = !DILocation(line: 236, column: 11, scope: !2977)
!2979 = !DILocation(line: 236, column: 25, scope: !2977)
!2980 = !DILocation(line: 236, column: 33, scope: !2977)
!2981 = !DILocation(line: 237, column: 20, scope: !2977)
!2982 = !DILocation(line: 237, column: 11, scope: !2977)
!2983 = !DILocation(line: 237, column: 25, scope: !2977)
!2984 = !DILocation(line: 236, column: 38, scope: !2977)
!2985 = !DILocation(line: 236, column: 4, scope: !2977)
!2986 = !DILocation(line: 236, column: 8, scope: !2977)
!2987 = !DILocation(line: 238, column: 3, scope: !2977)
!2988 = !DILocation(line: 239, column: 13, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2973, file: !2, line: 239, column: 13)
!2990 = !DILocation(line: 239, column: 18, scope: !2989)
!2991 = !DILocation(line: 239, column: 13, scope: !2973)
!2992 = !DILocation(line: 241, column: 20, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 239, column: 27)
!2994 = !DILocation(line: 241, column: 11, scope: !2993)
!2995 = !DILocation(line: 241, column: 25, scope: !2993)
!2996 = !DILocation(line: 241, column: 33, scope: !2993)
!2997 = !DILocation(line: 242, column: 20, scope: !2993)
!2998 = !DILocation(line: 242, column: 11, scope: !2993)
!2999 = !DILocation(line: 242, column: 25, scope: !2993)
!3000 = !DILocation(line: 242, column: 33, scope: !2993)
!3001 = !DILocation(line: 241, column: 39, scope: !2993)
!3002 = !DILocation(line: 243, column: 20, scope: !2993)
!3003 = !DILocation(line: 243, column: 11, scope: !2993)
!3004 = !DILocation(line: 243, column: 25, scope: !2993)
!3005 = !DILocation(line: 242, column: 39, scope: !2993)
!3006 = !DILocation(line: 241, column: 4, scope: !2993)
!3007 = !DILocation(line: 241, column: 8, scope: !2993)
!3008 = !DILocation(line: 244, column: 3, scope: !2993)
!3009 = !DILocation(line: 247, column: 20, scope: !3010)
!3010 = distinct !DILexicalBlock(scope: !2989, file: !2, line: 245, column: 9)
!3011 = !DILocation(line: 247, column: 11, scope: !3010)
!3012 = !DILocation(line: 247, column: 25, scope: !3010)
!3013 = !DILocation(line: 247, column: 33, scope: !3010)
!3014 = !DILocation(line: 248, column: 20, scope: !3010)
!3015 = !DILocation(line: 248, column: 11, scope: !3010)
!3016 = !DILocation(line: 248, column: 25, scope: !3010)
!3017 = !DILocation(line: 248, column: 33, scope: !3010)
!3018 = !DILocation(line: 247, column: 39, scope: !3010)
!3019 = !DILocation(line: 249, column: 20, scope: !3010)
!3020 = !DILocation(line: 249, column: 11, scope: !3010)
!3021 = !DILocation(line: 249, column: 25, scope: !3010)
!3022 = !DILocation(line: 249, column: 33, scope: !3010)
!3023 = !DILocation(line: 248, column: 39, scope: !3010)
!3024 = !DILocation(line: 250, column: 20, scope: !3010)
!3025 = !DILocation(line: 250, column: 11, scope: !3010)
!3026 = !DILocation(line: 250, column: 25, scope: !3010)
!3027 = !DILocation(line: 249, column: 39, scope: !3010)
!3028 = !DILocation(line: 247, column: 4, scope: !3010)
!3029 = !DILocation(line: 247, column: 8, scope: !3010)
!3030 = !DILocation(line: 251, column: 3, scope: !3010)
!3031 = !DILocation(line: 253, column: 1, scope: !2949)
!3032 = distinct !DISubprogram(name: "write_hex16", scope: !2, file: !2, line: 1304, type: !3033, scopeLine: 1305, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!3033 = !DISubroutineType(types: !3034)
!3034 = !{!228, !229, !256}
!3035 = !DILocalVariable(name: "out", arg: 1, scope: !3032, file: !2, line: 1304, type: !229)
!3036 = !DILocation(line: 1304, column: 30, scope: !3032)
!3037 = !DILocalVariable(name: "val", arg: 2, scope: !3032, file: !2, line: 1304, type: !256)
!3038 = !DILocation(line: 1304, column: 44, scope: !3032)
!3039 = !DILocalVariable(name: "hex", scope: !3032, file: !2, line: 1306, type: !280)
!3040 = !DILocation(line: 1306, column: 14, scope: !3032)
!3041 = !DILocation(line: 1308, column: 11, scope: !3032)
!3042 = !DILocation(line: 1308, column: 16, scope: !3032)
!3043 = !DILocation(line: 1308, column: 20, scope: !3032)
!3044 = !DILocation(line: 1308, column: 27, scope: !3032)
!3045 = !DILocation(line: 1308, column: 6, scope: !3032)
!3046 = !DILocation(line: 1308, column: 9, scope: !3032)
!3047 = !DILocation(line: 1309, column: 11, scope: !3032)
!3048 = !DILocation(line: 1309, column: 16, scope: !3032)
!3049 = !DILocation(line: 1309, column: 20, scope: !3032)
!3050 = !DILocation(line: 1309, column: 27, scope: !3032)
!3051 = !DILocation(line: 1309, column: 6, scope: !3032)
!3052 = !DILocation(line: 1309, column: 9, scope: !3032)
!3053 = !DILocation(line: 1310, column: 11, scope: !3032)
!3054 = !DILocation(line: 1310, column: 16, scope: !3032)
!3055 = !DILocation(line: 1310, column: 20, scope: !3032)
!3056 = !DILocation(line: 1310, column: 27, scope: !3032)
!3057 = !DILocation(line: 1310, column: 6, scope: !3032)
!3058 = !DILocation(line: 1310, column: 9, scope: !3032)
!3059 = !DILocation(line: 1311, column: 11, scope: !3032)
!3060 = !DILocation(line: 1311, column: 16, scope: !3032)
!3061 = !DILocation(line: 1311, column: 27, scope: !3032)
!3062 = !DILocation(line: 1311, column: 6, scope: !3032)
!3063 = !DILocation(line: 1311, column: 9, scope: !3032)
!3064 = !DILocation(line: 1313, column: 2, scope: !3032)
!3065 = distinct !DISubprogram(name: "to_surrogate_pair", scope: !2, file: !2, line: 315, type: !3066, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !213, retainedNodes: !281)
!3066 = !DISubroutineType(types: !3067)
!3067 = !{null, !261, !2262, !2262}
!3068 = !DILocalVariable(name: "unicode", arg: 1, scope: !3065, file: !2, line: 315, type: !261)
!3069 = !DILocation(line: 315, column: 39, scope: !3065)
!3070 = !DILocalVariable(name: "uc", arg: 2, scope: !3065, file: !2, line: 315, type: !2262)
!3071 = !DILocation(line: 315, column: 58, scope: !3065)
!3072 = !DILocalVariable(name: "lc", arg: 3, scope: !3065, file: !2, line: 315, type: !2262)
!3073 = !DILocation(line: 315, column: 72, scope: !3065)
!3074 = !DILocalVariable(name: "n", scope: !3065, file: !2, line: 317, type: !261)
!3075 = !DILocation(line: 317, column: 10, scope: !3065)
!3076 = !DILocation(line: 319, column: 2, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3078, file: !2, line: 319, column: 2)
!3078 = distinct !DILexicalBlock(scope: !3065, file: !2, line: 319, column: 2)
!3079 = !DILocation(line: 319, column: 2, scope: !3078)
!3080 = !DILocation(line: 321, column: 6, scope: !3065)
!3081 = !DILocation(line: 321, column: 14, scope: !3065)
!3082 = !DILocation(line: 321, column: 4, scope: !3065)
!3083 = !DILocation(line: 322, column: 21, scope: !3065)
!3084 = !DILocation(line: 322, column: 23, scope: !3065)
!3085 = !DILocation(line: 322, column: 30, scope: !3065)
!3086 = !DILocation(line: 322, column: 39, scope: !3065)
!3087 = !DILocation(line: 322, column: 8, scope: !3065)
!3088 = !DILocation(line: 322, column: 3, scope: !3065)
!3089 = !DILocation(line: 322, column: 6, scope: !3065)
!3090 = !DILocation(line: 323, column: 20, scope: !3065)
!3091 = !DILocation(line: 323, column: 22, scope: !3065)
!3092 = !DILocation(line: 323, column: 31, scope: !3065)
!3093 = !DILocation(line: 323, column: 8, scope: !3065)
!3094 = !DILocation(line: 323, column: 3, scope: !3065)
!3095 = !DILocation(line: 323, column: 6, scope: !3065)
!3096 = !DILocation(line: 324, column: 1, scope: !3065)
