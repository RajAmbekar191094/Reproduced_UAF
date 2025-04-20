; ModuleID = '/home/raj/lwan/common/lwan-template.c'
source_filename = "/home/raj/lwan/common/lwan-template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_tpl_t_ = type { ptr, i64 }
%struct.chunk = type { i32, ptr, i32 }
%struct.parser = type { ptr, ptr, ptr, %struct.lexer, i32, %struct.list_head, %struct.anon.2 }
%struct.lexer = type { ptr, ptr, ptr, ptr, %struct.anon.0 }
%struct.anon.0 = type { [4 x %struct.item], i64, i64, i64 }
%struct.item = type { i32, %struct.anon.1 }
%struct.anon.1 = type { ptr, i64 }
%struct.list_head = type { %struct.list_node }
%struct.list_node = type { ptr, ptr }
%struct.anon.2 = type { ptr, i64, i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.coro_switcher_t_ = type { [10 x i64], [10 x i64] }
%struct.strbuf_t_ = type { %union.anon, %struct.anon, i32 }
%union.anon = type { ptr }
%struct.anon = type { i64, i64 }
%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.chunk_descriptor = type { ptr, ptr }
%struct.stacked_item = type { %struct.list_node, %struct.item }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.symtab = type { ptr, ptr }

@.str = private unnamed_addr constant [3 x i8] c"%f\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [5 x i8] c"&lt;\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [5 x i8] c"&gt;\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [6 x i8] c"&amp;\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [7 x i8] c"&quot;\00", align 1, !dbg !19
@.str.5 = private unnamed_addr constant [7 x i8] c"&#x27;\00", align 1, !dbg !24
@.str.6 = private unnamed_addr constant [7 x i8] c"&#x2f;\00", align 1, !dbg !26
@.str.7 = private unnamed_addr constant [38 x i8] c"/home/raj/lwan/common/lwan-template.c\00", align 1, !dbg !28
@__FUNCTION__.lwan_tpl_compile_file = private unnamed_addr constant [22 x i8] c"lwan_tpl_compile_file\00", align 1, !dbg !33
@.str.8 = private unnamed_addr constant [7 x i8] c"munmap\00", align 1, !dbg !39
@.str.9 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1, !dbg !41
@.str.10 = private unnamed_addr constant [24 x i8] c"Expecting closing brace\00", align 1, !dbg !46
@.str.11 = private unnamed_addr constant [23 x i8] c"Unknown variable: %.*s\00", align 1, !dbg !51
@__FUNCTION__.parser_push_item = private unnamed_addr constant [17 x i8] c"parser_push_item\00", align 1, !dbg !56
@.str.12 = private unnamed_addr constant [27 x i8] c"Could not push parser item\00", align 1, !dbg !61
@.str.13 = private unnamed_addr constant [34 x i8] c"Could not compile template ``%s''\00", align 1, !dbg !66
@.str.14 = private unnamed_addr constant [15 x i8] c"expecting `}}'\00", align 1, !dbg !71
@.str.15 = private unnamed_addr constant [43 x i8] c"Couldn't find descriptor for variable `%s'\00", align 1, !dbg !76
@.str.16 = private unnamed_addr constant [44 x i8] c"Could not push symbol table (out of memory)\00", align 1, !dbg !81
@.str.17 = private unnamed_addr constant [44 x i8] c"No chunks were emitted but parsing end iter\00", align 1, !dbg !86
@.str.18 = private unnamed_addr constant [25 x i8] c"Could not find {{#%.*s}}\00", align 1, !dbg !88
@.str.19 = private unnamed_addr constant [21 x i8] c"unexpected {{/%.*s}}\00", align 1, !dbg !93
@.str.20 = private unnamed_addr constant [37 x i8] c"expecting %s `%.*s' but found `%.*s'\00", align 1, !dbg !98
@item_type_str = internal global [13 x ptr] [ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], align 16, !dbg !103
@.str.21 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1, !dbg !226
@.str.22 = private unnamed_addr constant [4 x i8] c"EOF\00", align 1, !dbg !228
@.str.23 = private unnamed_addr constant [11 x i8] c"IDENTIFIER\00", align 1, !dbg !233
@.str.24 = private unnamed_addr constant [10 x i8] c"LEFT_META\00", align 1, !dbg !238
@.str.25 = private unnamed_addr constant [5 x i8] c"HASH\00", align 1, !dbg !243
@.str.26 = private unnamed_addr constant [11 x i8] c"RIGHT_META\00", align 1, !dbg !245
@.str.27 = private unnamed_addr constant [5 x i8] c"TEXT\00", align 1, !dbg !247
@.str.28 = private unnamed_addr constant [6 x i8] c"SLASH\00", align 1, !dbg !249
@.str.29 = private unnamed_addr constant [14 x i8] c"QUESTION_MARK\00", align 1, !dbg !251
@.str.30 = private unnamed_addr constant [4 x i8] c"HAT\00", align 1, !dbg !253
@.str.31 = private unnamed_addr constant [13 x i8] c"GREATER_THAN\00", align 1, !dbg !255
@.str.32 = private unnamed_addr constant [22 x i8] c"ITEM_OPEN_CURLY_BRACE\00", align 1, !dbg !260
@.str.33 = private unnamed_addr constant [23 x i8] c"ITEM_CLOSE_CURLY_BRACE\00", align 1, !dbg !263
@.str.34 = private unnamed_addr constant [4 x i8] c"tab\00", align 1, !dbg !265
@__PRETTY_FUNCTION__.symtab_pop = private unnamed_addr constant [33 x i8] c"void symtab_pop(struct parser *)\00", align 1, !dbg !267
@.str.35 = private unnamed_addr constant [25 x i8] c"Could not find {{%.*s?}}\00", align 1, !dbg !272
@__FUNCTION__.emit_chunk = private unnamed_addr constant [11 x i8] c"emit_chunk\00", align 1, !dbg !274
@.str.36 = private unnamed_addr constant [30 x i8] c"Could not emit template chunk\00", align 1, !dbg !277
@.str.37 = private unnamed_addr constant [29 x i8] c"unexpected lexeme: %s [%.*s]\00", align 1, !dbg !282
@left_meta = internal constant [3 x i8] c"{{\00", align 1, !dbg !290
@right_meta = internal constant [3 x i8] c"}}\00", align 1, !dbg !312
@.str.38 = private unnamed_addr constant [33 x i8] c"unexpected action close sequence\00", align 1, !dbg !287
@.str.39 = private unnamed_addr constant [42 x i8] c"unexpected EOF while scanning comment end\00", align 1, !dbg !293
@.str.40 = private unnamed_addr constant [37 x i8] c"unexpected EOF while scanning action\00", align 1, !dbg !298
@.str.41 = private unnamed_addr constant [35 x i8] c"actions cannot span multiple lines\00", align 1, !dbg !300
@.str.42 = private unnamed_addr constant [25 x i8] c"unexpected character: %c\00", align 1, !dbg !305
@.str.43 = private unnamed_addr constant [26 x i8] c"expecting `}', found `%c'\00", align 1, !dbg !307
@__FUNCTION__.parser_shutdown = private unnamed_addr constant [16 x i8] c"parser_shutdown\00", align 1, !dbg !314
@.str.44 = private unnamed_addr constant [19 x i8] c"Parser error: %.*s\00", align 1, !dbg !319
@.str.45 = private unnamed_addr constant [55 x i8] c"Parser error: EOF while looking for matching {{/%.*s}}\00", align 1, !dbg !324
@.str.46 = private unnamed_addr constant [59 x i8] c"Parser error: Symbol table not empty when finishing parser\00", align 1, !dbg !329
@.str.47 = private unnamed_addr constant [33 x i8] c"Parser error: unmatched negation\00", align 1, !dbg !334
@.str.48 = private unnamed_addr constant [30 x i8] c"Parser error: unmatched quote\00", align 1, !dbg !336
@__FUNCTION__.post_process_template = private unnamed_addr constant [22 x i8] c"post_process_template\00", align 1, !dbg !338
@.str.49 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1, !dbg !340
@.str.50 = private unnamed_addr constant [38 x i8] c"Variable must be string to be escaped\00", align 1, !dbg !342
@.str.51 = private unnamed_addr constant [28 x i8] c"Invalid variable descriptor\00", align 1, !dbg !344
@.str.52 = private unnamed_addr constant [67 x i8] c"Template parsing done, reallocating array from %zu to %zu elements\00", align 1, !dbg !349
@apply_until.dispatch_table = internal constant [11 x ptr] [ptr blockaddress(@apply_until, %39), ptr blockaddress(@apply_until, %65), ptr blockaddress(@apply_until, %85), ptr blockaddress(@apply_until, %110), ptr blockaddress(@apply_until, %130), ptr blockaddress(@apply_until, %259), ptr blockaddress(@apply_until, %358), ptr blockaddress(@apply_until, %150), ptr blockaddress(@apply_until, %208), ptr blockaddress(@apply_until, %231), ptr blockaddress(@apply_until, %429)], align 16, !dbg !354
@__FUNCTION__.apply_until = private unnamed_addr constant [12 x i8] c"apply_until\00", align 1, !dbg !371
@.str.53 = private unnamed_addr constant [46 x i8] c"Coroutine is not NULL when starting iteration\00", align 1, !dbg !376
@.str.54 = private unnamed_addr constant [43 x i8] c"Coroutine is NULL when finishing iteration\00", align 1, !dbg !381

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_int_to_strbuf(ptr noundef %0, ptr noundef %1) #0 !dbg !392 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [25 x i8], align 16
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !395, metadata !DIExpression()), !dbg !396
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !397, metadata !DIExpression()), !dbg !398
  call void @llvm.dbg.declare(metadata ptr %5, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata ptr %6, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata ptr %7, metadata !403, metadata !DIExpression()), !dbg !404
  %8 = load ptr, ptr %4, align 8, !dbg !405
  %9 = load i32, ptr %8, align 4, !dbg !406
  %10 = sext i32 %9 to i64, !dbg !406
  %11 = getelementptr inbounds [25 x i8], ptr %5, i64 0, i64 0, !dbg !407
  %12 = call ptr @int_to_string(i64 noundef %10, ptr noundef %11, ptr noundef %6), !dbg !408
  store ptr %12, ptr %7, align 8, !dbg !409
  %13 = load ptr, ptr %3, align 8, !dbg !410
  %14 = load ptr, ptr %7, align 8, !dbg !411
  %15 = load i64, ptr %6, align 8, !dbg !412
  %16 = call zeroext i1 @strbuf_append_str(ptr noundef %13, ptr noundef %14, i64 noundef %15), !dbg !413
  ret void, !dbg !414
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @int_to_string(i64 noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @strbuf_append_str(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_tpl_int_is_empty(ptr noundef %0) #0 !dbg !415 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !419, metadata !DIExpression()), !dbg !420
  %3 = load ptr, ptr %2, align 8, !dbg !421
  %4 = load i32, ptr %3, align 4, !dbg !422
  %5 = icmp eq i32 %4, 0, !dbg !423
  ret i1 %5, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_double_to_strbuf(ptr noundef %0, ptr noundef %1) #0 !dbg !425 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !426, metadata !DIExpression()), !dbg !427
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !428, metadata !DIExpression()), !dbg !429
  %5 = load ptr, ptr %3, align 8, !dbg !430
  %6 = load ptr, ptr %4, align 8, !dbg !431
  %7 = load double, ptr %6, align 8, !dbg !432
  %8 = call zeroext i1 (ptr, ptr, ...) @strbuf_append_printf(ptr noundef %5, ptr noundef @.str, double noundef %7), !dbg !433
  ret void, !dbg !434
}

declare zeroext i1 @strbuf_append_printf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_tpl_double_is_empty(ptr noundef %0) #0 !dbg !435 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !436, metadata !DIExpression()), !dbg !437
  %3 = load ptr, ptr %2, align 8, !dbg !438
  %4 = load double, ptr %3, align 8, !dbg !439
  %5 = fcmp oeq double %4, 0.000000e+00, !dbg !440
  ret i1 %5, !dbg !441
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_str_to_strbuf(ptr noundef %0, ptr noundef %1) #0 !dbg !442 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !443, metadata !DIExpression()), !dbg !444
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata ptr %5, metadata !447, metadata !DIExpression()), !dbg !448
  %6 = load ptr, ptr %4, align 8, !dbg !449
  %7 = load ptr, ptr %6, align 8, !dbg !450
  store ptr %7, ptr %5, align 8, !dbg !448
  %8 = load ptr, ptr %5, align 8, !dbg !451
  %9 = icmp ne ptr %8, null, !dbg !451
  %10 = xor i1 %9, true, !dbg !451
  %11 = xor i1 %10, true, !dbg !451
  %12 = zext i1 %11 to i32, !dbg !451
  %13 = sext i32 %12 to i64, !dbg !451
  %14 = icmp ne i64 %13, 0, !dbg !451
  br i1 %14, label %15, label %19, !dbg !453

15:                                               ; preds = %2
  %16 = load ptr, ptr %3, align 8, !dbg !454
  %17 = load ptr, ptr %5, align 8, !dbg !455
  %18 = call zeroext i1 @strbuf_append_str(ptr noundef %16, ptr noundef %17, i64 noundef 0), !dbg !456
  br label %19, !dbg !456

19:                                               ; preds = %15, %2
  ret void, !dbg !457
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_append_str_escaped_to_strbuf(ptr noundef %0, ptr noundef %1) #0 !dbg !458 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !459, metadata !DIExpression()), !dbg !460
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !461, metadata !DIExpression()), !dbg !462
  %7 = load ptr, ptr %4, align 8, !dbg !463
  %8 = icmp ne ptr %7, null, !dbg !463
  %9 = xor i1 %8, true, !dbg !463
  %10 = zext i1 %9 to i32, !dbg !463
  %11 = sext i32 %10 to i64, !dbg !463
  %12 = icmp ne i64 %11, 0, !dbg !463
  br i1 %12, label %13, label %14, !dbg !465

13:                                               ; preds = %2
  br label %92, !dbg !466

14:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !467, metadata !DIExpression()), !dbg !468
  %15 = load ptr, ptr %4, align 8, !dbg !469
  %16 = load ptr, ptr %15, align 8, !dbg !470
  store ptr %16, ptr %5, align 8, !dbg !468
  %17 = load ptr, ptr %5, align 8, !dbg !471
  %18 = icmp ne ptr %17, null, !dbg !471
  %19 = xor i1 %18, true, !dbg !471
  %20 = zext i1 %19 to i32, !dbg !471
  %21 = sext i32 %20 to i64, !dbg !471
  %22 = icmp ne i64 %21, 0, !dbg !471
  br i1 %22, label %23, label %24, !dbg !473

23:                                               ; preds = %14
  br label %92, !dbg !474

24:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %6, metadata !475, metadata !DIExpression()), !dbg !477
  %25 = load ptr, ptr %5, align 8, !dbg !478
  store ptr %25, ptr %6, align 8, !dbg !477
  br label %26, !dbg !479

26:                                               ; preds = %89, %24
  %27 = load ptr, ptr %6, align 8, !dbg !480
  %28 = load i8, ptr %27, align 1, !dbg !482
  %29 = icmp ne i8 %28, 0, !dbg !483
  br i1 %29, label %30, label %92, !dbg !483

30:                                               ; preds = %26
  %31 = load ptr, ptr %6, align 8, !dbg !484
  %32 = load i8, ptr %31, align 1, !dbg !487
  %33 = sext i8 %32 to i32, !dbg !487
  %34 = icmp eq i32 %33, 60, !dbg !488
  br i1 %34, label %35, label %38, !dbg !489

35:                                               ; preds = %30
  %36 = load ptr, ptr %3, align 8, !dbg !490
  %37 = call zeroext i1 @strbuf_append_str(ptr noundef %36, ptr noundef @.str.1, i64 noundef 4), !dbg !491
  br label %88, !dbg !491

38:                                               ; preds = %30
  %39 = load ptr, ptr %6, align 8, !dbg !492
  %40 = load i8, ptr %39, align 1, !dbg !494
  %41 = sext i8 %40 to i32, !dbg !494
  %42 = icmp eq i32 %41, 62, !dbg !495
  br i1 %42, label %43, label %46, !dbg !496

43:                                               ; preds = %38
  %44 = load ptr, ptr %3, align 8, !dbg !497
  %45 = call zeroext i1 @strbuf_append_str(ptr noundef %44, ptr noundef @.str.2, i64 noundef 4), !dbg !498
  br label %87, !dbg !498

46:                                               ; preds = %38
  %47 = load ptr, ptr %6, align 8, !dbg !499
  %48 = load i8, ptr %47, align 1, !dbg !501
  %49 = sext i8 %48 to i32, !dbg !501
  %50 = icmp eq i32 %49, 38, !dbg !502
  br i1 %50, label %51, label %54, !dbg !503

51:                                               ; preds = %46
  %52 = load ptr, ptr %3, align 8, !dbg !504
  %53 = call zeroext i1 @strbuf_append_str(ptr noundef %52, ptr noundef @.str.3, i64 noundef 5), !dbg !505
  br label %86, !dbg !505

54:                                               ; preds = %46
  %55 = load ptr, ptr %6, align 8, !dbg !506
  %56 = load i8, ptr %55, align 1, !dbg !508
  %57 = sext i8 %56 to i32, !dbg !508
  %58 = icmp eq i32 %57, 34, !dbg !509
  br i1 %58, label %59, label %62, !dbg !510

59:                                               ; preds = %54
  %60 = load ptr, ptr %3, align 8, !dbg !511
  %61 = call zeroext i1 @strbuf_append_str(ptr noundef %60, ptr noundef @.str.4, i64 noundef 6), !dbg !512
  br label %85, !dbg !512

62:                                               ; preds = %54
  %63 = load ptr, ptr %6, align 8, !dbg !513
  %64 = load i8, ptr %63, align 1, !dbg !515
  %65 = sext i8 %64 to i32, !dbg !515
  %66 = icmp eq i32 %65, 39, !dbg !516
  br i1 %66, label %67, label %70, !dbg !517

67:                                               ; preds = %62
  %68 = load ptr, ptr %3, align 8, !dbg !518
  %69 = call zeroext i1 @strbuf_append_str(ptr noundef %68, ptr noundef @.str.5, i64 noundef 6), !dbg !519
  br label %84, !dbg !519

70:                                               ; preds = %62
  %71 = load ptr, ptr %6, align 8, !dbg !520
  %72 = load i8, ptr %71, align 1, !dbg !522
  %73 = sext i8 %72 to i32, !dbg !522
  %74 = icmp eq i32 %73, 47, !dbg !523
  br i1 %74, label %75, label %78, !dbg !524

75:                                               ; preds = %70
  %76 = load ptr, ptr %3, align 8, !dbg !525
  %77 = call zeroext i1 @strbuf_append_str(ptr noundef %76, ptr noundef @.str.6, i64 noundef 6), !dbg !526
  br label %83, !dbg !526

78:                                               ; preds = %70
  %79 = load ptr, ptr %3, align 8, !dbg !527
  %80 = load ptr, ptr %6, align 8, !dbg !528
  %81 = load i8, ptr %80, align 1, !dbg !529
  %82 = call zeroext i1 @strbuf_append_char(ptr noundef %79, i8 noundef signext %81), !dbg !530
  br label %83

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %59
  br label %86

86:                                               ; preds = %85, %51
  br label %87

87:                                               ; preds = %86, %43
  br label %88

88:                                               ; preds = %87, %35
  br label %89, !dbg !531

89:                                               ; preds = %88
  %90 = load ptr, ptr %6, align 8, !dbg !532
  %91 = getelementptr inbounds i8, ptr %90, i32 1, !dbg !532
  store ptr %91, ptr %6, align 8, !dbg !532
  br label %26, !dbg !533, !llvm.loop !534

92:                                               ; preds = %13, %23, %26
  ret void, !dbg !537
}

declare zeroext i1 @strbuf_append_char(ptr noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_tpl_str_is_empty(ptr noundef %0) #0 !dbg !538 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !539, metadata !DIExpression()), !dbg !540
  %5 = load ptr, ptr %3, align 8, !dbg !541
  %6 = icmp ne ptr %5, null, !dbg !541
  %7 = xor i1 %6, true, !dbg !541
  %8 = zext i1 %7 to i32, !dbg !541
  %9 = sext i32 %8 to i64, !dbg !541
  %10 = icmp ne i64 %9, 0, !dbg !541
  br i1 %10, label %11, label %12, !dbg !543

11:                                               ; preds = %1
  store i1 true, ptr %2, align 1, !dbg !544
  br label %29, !dbg !544

12:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !545, metadata !DIExpression()), !dbg !546
  %13 = load ptr, ptr %3, align 8, !dbg !547
  %14 = load ptr, ptr %13, align 8, !dbg !548
  store ptr %14, ptr %4, align 8, !dbg !546
  %15 = load ptr, ptr %4, align 8, !dbg !549
  %16 = icmp ne ptr %15, null, !dbg !549
  %17 = xor i1 %16, true, !dbg !549
  %18 = xor i1 %17, true, !dbg !549
  %19 = zext i1 %18 to i32, !dbg !549
  %20 = sext i32 %19 to i64, !dbg !549
  %21 = icmp ne i64 %20, 0, !dbg !549
  br i1 %21, label %22, label %27, !dbg !550

22:                                               ; preds = %12
  %23 = load ptr, ptr %4, align 8, !dbg !551
  %24 = load i8, ptr %23, align 1, !dbg !552
  %25 = sext i8 %24 to i32, !dbg !552
  %26 = icmp ne i32 %25, 0, !dbg !550
  br label %27

27:                                               ; preds = %22, %12
  %28 = phi i1 [ false, %12 ], [ %26, %22 ], !dbg !553
  store i1 %28, ptr %2, align 1, !dbg !554
  br label %29, !dbg !554

29:                                               ; preds = %27, %11
  %30 = load i1, ptr %2, align 1, !dbg !555
  ret i1 %30, !dbg !555
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_tpl_free(ptr noundef %0) #0 !dbg !556 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !559, metadata !DIExpression()), !dbg !560
  call void @llvm.dbg.declare(metadata ptr %3, metadata !561, metadata !DIExpression()), !dbg !562
  %4 = load ptr, ptr %2, align 8, !dbg !563
  %5 = icmp ne ptr %4, null, !dbg !563
  br i1 %5, label %7, label %6, !dbg !565

6:                                                ; preds = %1
  br label %32, !dbg !566

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !567
  %9 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %8, i32 0, i32 0, !dbg !569
  %10 = load ptr, ptr %9, align 8, !dbg !569
  %11 = icmp ne ptr %10, null, !dbg !567
  br i1 %11, label %12, label %30, !dbg !570

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8, !dbg !571
  %14 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %13, i32 0, i32 0, !dbg !574
  %15 = load ptr, ptr %14, align 8, !dbg !574
  store ptr %15, ptr %3, align 8, !dbg !575
  br label %16, !dbg !576

16:                                               ; preds = %23, %12
  %17 = load ptr, ptr %3, align 8, !dbg !577
  %18 = getelementptr inbounds %struct.chunk, ptr %17, i32 0, i32 0, !dbg !579
  %19 = load i32, ptr %18, align 8, !dbg !579
  %20 = icmp ne i32 %19, 10, !dbg !580
  br i1 %20, label %21, label %26, !dbg !581

21:                                               ; preds = %16
  %22 = load ptr, ptr %3, align 8, !dbg !582
  call void @free_chunk(ptr noundef %22), !dbg !583
  br label %23, !dbg !583

23:                                               ; preds = %21
  %24 = load ptr, ptr %3, align 8, !dbg !584
  %25 = getelementptr inbounds %struct.chunk, ptr %24, i32 1, !dbg !584
  store ptr %25, ptr %3, align 8, !dbg !584
  br label %16, !dbg !585, !llvm.loop !586

26:                                               ; preds = %16
  %27 = load ptr, ptr %2, align 8, !dbg !588
  %28 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %27, i32 0, i32 0, !dbg !589
  %29 = load ptr, ptr %28, align 8, !dbg !589
  call void @free(ptr noundef %29) #13, !dbg !590
  br label %30, !dbg !591

30:                                               ; preds = %26, %7
  %31 = load ptr, ptr %2, align 8, !dbg !592
  call void @free(ptr noundef %31) #13, !dbg !593
  br label %32, !dbg !594

32:                                               ; preds = %30, %6
  ret void, !dbg !594
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_chunk(ptr noundef %0) #0 !dbg !595 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !599
  %3 = load ptr, ptr %2, align 8, !dbg !600
  %4 = icmp ne ptr %3, null, !dbg !600
  br i1 %4, label %6, label %5, !dbg !602

5:                                                ; preds = %1
  br label %30, !dbg !603

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !604
  %8 = getelementptr inbounds %struct.chunk, ptr %7, i32 0, i32 2, !dbg !606
  %9 = load i32, ptr %8, align 8, !dbg !606
  %10 = and i32 %9, 4, !dbg !607
  %11 = icmp ne i32 %10, 0, !dbg !607
  br i1 %11, label %12, label %13, !dbg !608

12:                                               ; preds = %6
  br label %30, !dbg !609

13:                                               ; preds = %6
  %14 = load ptr, ptr %2, align 8, !dbg !610
  %15 = getelementptr inbounds %struct.chunk, ptr %14, i32 0, i32 0, !dbg !611
  %16 = load i32, ptr %15, align 8, !dbg !611
  switch i32 %16, label %30 [
    i32 10, label %17
    i32 1, label %17
    i32 2, label %17
    i32 3, label %17
    i32 4, label %17
    i32 8, label %17
    i32 6, label %17
    i32 7, label %18
    i32 5, label %18
    i32 0, label %22
    i32 9, label %26
  ], !dbg !612

17:                                               ; preds = %13, %13, %13, %13, %13, %13, %13
  br label %30, !dbg !613

18:                                               ; preds = %13, %13
  %19 = load ptr, ptr %2, align 8, !dbg !615
  %20 = getelementptr inbounds %struct.chunk, ptr %19, i32 0, i32 1, !dbg !616
  %21 = load ptr, ptr %20, align 8, !dbg !616
  call void @free(ptr noundef %21) #13, !dbg !617
  br label %30, !dbg !618

22:                                               ; preds = %13
  %23 = load ptr, ptr %2, align 8, !dbg !619
  %24 = getelementptr inbounds %struct.chunk, ptr %23, i32 0, i32 1, !dbg !620
  %25 = load ptr, ptr %24, align 8, !dbg !620
  call void @strbuf_free(ptr noundef %25), !dbg !621
  br label %30, !dbg !622

26:                                               ; preds = %13
  %27 = load ptr, ptr %2, align 8, !dbg !623
  %28 = getelementptr inbounds %struct.chunk, ptr %27, i32 0, i32 1, !dbg !624
  %29 = load ptr, ptr %28, align 8, !dbg !624
  call void @lwan_tpl_free(ptr noundef %29), !dbg !625
  br label %30, !dbg !626

30:                                               ; preds = %5, %12, %13, %26, %22, %18, %17
  ret void, !dbg !627
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_tpl_compile_string(ptr noundef %0, ptr noundef %1) #0 !dbg !628 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !656, metadata !DIExpression()), !dbg !657
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !658, metadata !DIExpression()), !dbg !659
  call void @llvm.dbg.declare(metadata ptr %6, metadata !660, metadata !DIExpression()), !dbg !661
  %7 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 16) #14, !dbg !662
  store ptr %7, ptr %6, align 8, !dbg !663
  %8 = load ptr, ptr %6, align 8, !dbg !664
  %9 = icmp ne ptr %8, null, !dbg !664
  br i1 %9, label %10, label %18, !dbg !666

10:                                               ; preds = %2
  %11 = load ptr, ptr %6, align 8, !dbg !667
  %12 = load ptr, ptr %4, align 8, !dbg !670
  %13 = load ptr, ptr %5, align 8, !dbg !671
  %14 = call zeroext i1 @parse_string(ptr noundef %11, ptr noundef %12, ptr noundef %13), !dbg !672
  br i1 %14, label %15, label %17, !dbg !673

15:                                               ; preds = %10
  %16 = load ptr, ptr %6, align 8, !dbg !674
  store ptr %16, ptr %3, align 8, !dbg !675
  br label %20, !dbg !675

17:                                               ; preds = %10
  br label %18, !dbg !676

18:                                               ; preds = %17, %2
  %19 = load ptr, ptr %6, align 8, !dbg !677
  call void @lwan_tpl_free(ptr noundef %19), !dbg !678
  store ptr null, ptr %3, align 8, !dbg !679
  br label %20, !dbg !679

20:                                               ; preds = %18, %15
  %21 = load ptr, ptr %3, align 8, !dbg !680
  ret ptr %21, !dbg !680
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parse_string(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !681 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.parser, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !684, metadata !DIExpression()), !dbg !685
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !686, metadata !DIExpression()), !dbg !687
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !688, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata ptr %8, metadata !690, metadata !DIExpression()), !dbg !734
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 224, i1 false), !dbg !734
  %11 = getelementptr inbounds %struct.parser, ptr %8, i32 0, i32 0, !dbg !735
  %12 = load ptr, ptr %5, align 8, !dbg !736
  store ptr %12, ptr %11, align 8, !dbg !735
  %13 = getelementptr inbounds %struct.parser, ptr %8, i32 0, i32 1, !dbg !735
  %14 = load ptr, ptr %7, align 8, !dbg !737
  store ptr %14, ptr %13, align 8, !dbg !735
  %15 = getelementptr inbounds %struct.parser, ptr %8, i32 0, i32 6, !dbg !735
  %16 = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 2, !dbg !738
  store i64 16, ptr %16, align 8, !dbg !738
  call void @llvm.dbg.declare(metadata ptr %9, metadata !739, metadata !DIExpression()), !dbg !745
  store ptr @parser_text, ptr %9, align 8, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %10, metadata !746, metadata !DIExpression()), !dbg !747
  store ptr null, ptr %10, align 8, !dbg !747
  %17 = load ptr, ptr %7, align 8, !dbg !748
  %18 = load ptr, ptr %6, align 8, !dbg !750
  %19 = call zeroext i1 @parser_init(ptr noundef %8, ptr noundef %17, ptr noundef %18), !dbg !751
  br i1 %19, label %21, label %20, !dbg !752

20:                                               ; preds = %3
  store i1 false, ptr %4, align 1, !dbg !753
  br label %42, !dbg !753

21:                                               ; preds = %3
  br label %22, !dbg !754

22:                                               ; preds = %35, %21
  %23 = load ptr, ptr %9, align 8, !dbg !755
  %24 = icmp ne ptr %23, null, !dbg !755
  br i1 %24, label %25, label %33, !dbg !756

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.parser, ptr %8, i32 0, i32 3, !dbg !757
  %27 = call zeroext i1 @lex_next(ptr noundef %26, ptr noundef %10), !dbg !758
  br i1 %27, label %28, label %33, !dbg !759

28:                                               ; preds = %25
  %29 = load ptr, ptr %10, align 8, !dbg !760
  %30 = getelementptr inbounds %struct.item, ptr %29, i32 0, i32 0, !dbg !761
  %31 = load i32, ptr %30, align 8, !dbg !761
  %32 = icmp ne i32 %31, 0, !dbg !762
  br label %33

33:                                               ; preds = %28, %25, %22
  %34 = phi i1 [ false, %25 ], [ false, %22 ], [ %32, %28 ], !dbg !763
  br i1 %34, label %35, label %39, !dbg !754

35:                                               ; preds = %33
  %36 = load ptr, ptr %9, align 8, !dbg !764
  %37 = load ptr, ptr %10, align 8, !dbg !765
  %38 = call ptr %36(ptr noundef %8, ptr noundef %37), !dbg !764
  store ptr %38, ptr %9, align 8, !dbg !766
  br label %22, !dbg !754, !llvm.loop !767

39:                                               ; preds = %33
  %40 = load ptr, ptr %10, align 8, !dbg !769
  %41 = call zeroext i1 @parser_shutdown(ptr noundef %8, ptr noundef %40), !dbg !770
  store i1 %41, ptr %4, align 1, !dbg !771
  br label %42, !dbg !771

42:                                               ; preds = %39, %20
  %43 = load i1, ptr %4, align 1, !dbg !772
  ret i1 %43, !dbg !772
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_tpl_compile_file(ptr noundef %0, ptr noundef %1) #0 !dbg !773 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !774, metadata !DIExpression()), !dbg !775
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !776, metadata !DIExpression()), !dbg !777
  call void @llvm.dbg.declare(metadata ptr %5, metadata !778, metadata !DIExpression()), !dbg !779
  call void @llvm.dbg.declare(metadata ptr %6, metadata !780, metadata !DIExpression()), !dbg !815
  call void @llvm.dbg.declare(metadata ptr %7, metadata !816, metadata !DIExpression()), !dbg !817
  call void @llvm.dbg.declare(metadata ptr %8, metadata !818, metadata !DIExpression()), !dbg !819
  store ptr null, ptr %8, align 8, !dbg !819
  %9 = load ptr, ptr %3, align 8, !dbg !820
  %10 = call i32 (ptr, i32, ...) @open(ptr noundef %9, i32 noundef 524288), !dbg !821
  store i32 %10, ptr %5, align 4, !dbg !822
  %11 = load i32, ptr %5, align 4, !dbg !823
  %12 = icmp slt i32 %11, 0, !dbg !825
  br i1 %12, label %13, label %14, !dbg !826

13:                                               ; preds = %2
  br label %41, !dbg !827

14:                                               ; preds = %2
  %15 = load i32, ptr %5, align 4, !dbg !828
  %16 = call i32 @fstat(i32 noundef %15, ptr noundef %6) #13, !dbg !830
  %17 = icmp slt i32 %16, 0, !dbg !831
  br i1 %17, label %18, label %19, !dbg !832

18:                                               ; preds = %14
  br label %38, !dbg !833

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 8, !dbg !834
  %21 = load i64, ptr %20, align 8, !dbg !834
  %22 = load i32, ptr %5, align 4, !dbg !835
  %23 = call ptr @mmap(ptr noundef null, i64 noundef %21, i32 noundef 1, i32 noundef 1, i32 noundef %22, i64 noundef 0) #13, !dbg !836
  store ptr %23, ptr %7, align 8, !dbg !837
  %24 = load ptr, ptr %7, align 8, !dbg !838
  %25 = icmp eq ptr %24, inttoptr (i64 -1 to ptr), !dbg !840
  br i1 %25, label %26, label %27, !dbg !841

26:                                               ; preds = %19
  br label %38, !dbg !842

27:                                               ; preds = %19
  %28 = load ptr, ptr %7, align 8, !dbg !843
  %29 = load ptr, ptr %4, align 8, !dbg !844
  %30 = call ptr @lwan_tpl_compile_string(ptr noundef %28, ptr noundef %29), !dbg !845
  store ptr %30, ptr %8, align 8, !dbg !846
  %31 = load ptr, ptr %7, align 8, !dbg !847
  %32 = getelementptr inbounds %struct.stat, ptr %6, i32 0, i32 8, !dbg !849
  %33 = load i64, ptr %32, align 8, !dbg !849
  %34 = call i32 @munmap(ptr noundef %31, i64 noundef %33) #13, !dbg !850
  %35 = icmp slt i32 %34, 0, !dbg !851
  br i1 %35, label %36, label %37, !dbg !852

36:                                               ; preds = %27
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.7, i32 noundef 1147, ptr noundef @__FUNCTION__.lwan_tpl_compile_file, ptr noundef @.str.8), !dbg !853
  br label %37, !dbg !853

37:                                               ; preds = %36, %27
  br label %38, !dbg !854

38:                                               ; preds = %37, %26, %18
  call void @llvm.dbg.label(metadata !855), !dbg !856
  %39 = load i32, ptr %5, align 4, !dbg !857
  %40 = call i32 @close(i32 noundef %39), !dbg !858
  br label %41, !dbg !858

41:                                               ; preds = %38, %13
  call void @llvm.dbg.label(metadata !859), !dbg !860
  %42 = load ptr, ptr %8, align 8, !dbg !861
  ret ptr %42, !dbg !862
}

declare i32 @open(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare i32 @fstat(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #3

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_tpl_apply_with_buffer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !863 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !866, metadata !DIExpression()), !dbg !867
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !868, metadata !DIExpression()), !dbg !869
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !870, metadata !DIExpression()), !dbg !871
  %8 = load ptr, ptr %6, align 8, !dbg !872
  %9 = call zeroext i1 @strbuf_reset_length(ptr noundef %8), !dbg !872
  %10 = xor i1 %9, true, !dbg !872
  %11 = zext i1 %10 to i32, !dbg !872
  %12 = sext i32 %11 to i64, !dbg !872
  %13 = icmp ne i64 %12, 0, !dbg !872
  br i1 %13, label %14, label %15, !dbg !874

14:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !875
  br label %35, !dbg !875

15:                                               ; preds = %3
  %16 = load ptr, ptr %6, align 8, !dbg !876
  %17 = load ptr, ptr %5, align 8, !dbg !876
  %18 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %17, i32 0, i32 1, !dbg !876
  %19 = load i64, ptr %18, align 8, !dbg !876
  %20 = call zeroext i1 @strbuf_grow_to(ptr noundef %16, i64 noundef %19), !dbg !876
  %21 = xor i1 %20, true, !dbg !876
  %22 = zext i1 %21 to i32, !dbg !876
  %23 = sext i32 %22 to i64, !dbg !876
  %24 = icmp ne i64 %23, 0, !dbg !876
  br i1 %24, label %25, label %26, !dbg !878

25:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !dbg !879
  br label %35, !dbg !879

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 8, !dbg !880
  %28 = load ptr, ptr %5, align 8, !dbg !881
  %29 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %28, i32 0, i32 0, !dbg !882
  %30 = load ptr, ptr %29, align 8, !dbg !882
  %31 = load ptr, ptr %6, align 8, !dbg !883
  %32 = load ptr, ptr %7, align 8, !dbg !884
  %33 = call ptr @apply_until(ptr noundef %27, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef null), !dbg !885
  %34 = load ptr, ptr %6, align 8, !dbg !886
  store ptr %34, ptr %4, align 8, !dbg !887
  br label %35, !dbg !887

35:                                               ; preds = %26, %25, %14
  %36 = load ptr, ptr %4, align 8, !dbg !888
  ret ptr %36, !dbg !888
}

declare zeroext i1 @strbuf_reset_length(ptr noundef) #2

declare zeroext i1 @strbuf_grow_to(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @apply_until(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !356 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca %struct.coro_switcher_t_, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !889, metadata !DIExpression()), !dbg !890
  store ptr %1, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !891, metadata !DIExpression()), !dbg !892
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !893, metadata !DIExpression()), !dbg !894
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !895, metadata !DIExpression()), !dbg !896
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !897, metadata !DIExpression()), !dbg !898
  call void @llvm.dbg.declare(metadata ptr %12, metadata !899, metadata !DIExpression()), !dbg !907
  call void @llvm.dbg.declare(metadata ptr %13, metadata !908, metadata !DIExpression()), !dbg !909
  store ptr null, ptr %13, align 8, !dbg !909
  call void @llvm.dbg.declare(metadata ptr %14, metadata !910, metadata !DIExpression()), !dbg !911
  %22 = load ptr, ptr %8, align 8, !dbg !912
  store ptr %22, ptr %14, align 8, !dbg !911
  %23 = load ptr, ptr %14, align 8, !dbg !913
  %24 = icmp ne ptr %23, null, !dbg !913
  %25 = xor i1 %24, true, !dbg !913
  %26 = zext i1 %25 to i32, !dbg !913
  %27 = sext i32 %26 to i64, !dbg !913
  %28 = icmp ne i64 %27, 0, !dbg !913
  br i1 %28, label %29, label %30, !dbg !915

29:                                               ; preds = %5
  store ptr null, ptr %6, align 8, !dbg !916
  br label %431, !dbg !916

30:                                               ; preds = %5
  br label %31, !dbg !917

31:                                               ; preds = %30
  %32 = load ptr, ptr %14, align 8, !dbg !918
  %33 = getelementptr inbounds %struct.chunk, ptr %32, i32 0, i32 0, !dbg !918
  %34 = load i32, ptr %33, align 8, !dbg !918
  %35 = zext i32 %34 to i64, !dbg !918
  %36 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %35, !dbg !918
  %37 = load ptr, ptr %36, align 8, !dbg !918
  br label %433, !dbg !918

38:                                               ; No predecessors!
  br label %39, !dbg !918

39:                                               ; preds = %38, %433
  call void @llvm.dbg.label(metadata !920), !dbg !921
  %40 = load ptr, ptr %9, align 8, !dbg !922
  %41 = load ptr, ptr %14, align 8, !dbg !923
  %42 = getelementptr inbounds %struct.chunk, ptr %41, i32 0, i32 1, !dbg !923
  %43 = load ptr, ptr %42, align 8, !dbg !923
  %44 = getelementptr inbounds %struct.strbuf_t_, ptr %43, i32 0, i32 0, !dbg !923
  %45 = load ptr, ptr %44, align 8, !dbg !923
  %46 = load ptr, ptr %14, align 8, !dbg !924
  %47 = getelementptr inbounds %struct.chunk, ptr %46, i32 0, i32 1, !dbg !924
  %48 = load ptr, ptr %47, align 8, !dbg !924
  %49 = getelementptr inbounds %struct.strbuf_t_, ptr %48, i32 0, i32 1, !dbg !924
  %50 = getelementptr inbounds %struct.anon, ptr %49, i32 0, i32 1, !dbg !924
  %51 = load i64, ptr %50, align 8, !dbg !924
  %52 = call zeroext i1 @strbuf_append_str(ptr noundef %40, ptr noundef %45, i64 noundef %51), !dbg !925
  br label %53, !dbg !926

53:                                               ; preds = %39
  %54 = load ptr, ptr %14, align 8, !dbg !927
  %55 = getelementptr inbounds %struct.chunk, ptr %54, i32 1, !dbg !927
  store ptr %55, ptr %14, align 8, !dbg !927
  br label %56, !dbg !927

56:                                               ; preds = %53
  %57 = load ptr, ptr %14, align 8, !dbg !929
  %58 = getelementptr inbounds %struct.chunk, ptr %57, i32 0, i32 0, !dbg !929
  %59 = load i32, ptr %58, align 8, !dbg !929
  %60 = zext i32 %59 to i64, !dbg !929
  %61 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %60, !dbg !929
  %62 = load ptr, ptr %61, align 8, !dbg !929
  br label %433, !dbg !929

63:                                               ; No predecessors!
  br label %64, !dbg !927

64:                                               ; preds = %63
  br label %65, !dbg !927

65:                                               ; preds = %64, %433
  call void @llvm.dbg.label(metadata !931), !dbg !932
  %66 = load ptr, ptr %9, align 8, !dbg !933
  %67 = load ptr, ptr %14, align 8, !dbg !934
  %68 = getelementptr inbounds %struct.chunk, ptr %67, i32 0, i32 1, !dbg !935
  %69 = load ptr, ptr %68, align 8, !dbg !935
  %70 = ptrtoint ptr %69 to i64, !dbg !936
  %71 = trunc i64 %70 to i8, !dbg !937
  %72 = call zeroext i1 @strbuf_append_char(ptr noundef %66, i8 noundef signext %71), !dbg !938
  br label %73, !dbg !939

73:                                               ; preds = %65
  %74 = load ptr, ptr %14, align 8, !dbg !940
  %75 = getelementptr inbounds %struct.chunk, ptr %74, i32 1, !dbg !940
  store ptr %75, ptr %14, align 8, !dbg !940
  br label %76, !dbg !940

76:                                               ; preds = %73
  %77 = load ptr, ptr %14, align 8, !dbg !942
  %78 = getelementptr inbounds %struct.chunk, ptr %77, i32 0, i32 0, !dbg !942
  %79 = load i32, ptr %78, align 8, !dbg !942
  %80 = zext i32 %79 to i64, !dbg !942
  %81 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %80, !dbg !942
  %82 = load ptr, ptr %81, align 8, !dbg !942
  br label %433, !dbg !942

83:                                               ; No predecessors!
  br label %84, !dbg !940

84:                                               ; preds = %83
  br label %85, !dbg !940

85:                                               ; preds = %84, %433
  call void @llvm.dbg.label(metadata !944), !dbg !945
  call void @llvm.dbg.declare(metadata ptr %15, metadata !946, metadata !DIExpression()), !dbg !949
  %86 = load ptr, ptr %14, align 8, !dbg !950
  %87 = getelementptr inbounds %struct.chunk, ptr %86, i32 0, i32 1, !dbg !951
  %88 = load ptr, ptr %87, align 8, !dbg !951
  store ptr %88, ptr %15, align 8, !dbg !949
  %89 = load ptr, ptr %15, align 8, !dbg !952
  %90 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %89, i32 0, i32 2, !dbg !953
  %91 = load ptr, ptr %90, align 8, !dbg !953
  %92 = load ptr, ptr %9, align 8, !dbg !954
  %93 = load ptr, ptr %10, align 8, !dbg !955
  %94 = load ptr, ptr %15, align 8, !dbg !956
  %95 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %94, i32 0, i32 1, !dbg !957
  %96 = load i64, ptr %95, align 8, !dbg !957
  %97 = getelementptr inbounds i8, ptr %93, i64 %96, !dbg !958
  call void %91(ptr noundef %92, ptr noundef %97), !dbg !952
  br label %98, !dbg !959

98:                                               ; preds = %85
  %99 = load ptr, ptr %14, align 8, !dbg !960
  %100 = getelementptr inbounds %struct.chunk, ptr %99, i32 1, !dbg !960
  store ptr %100, ptr %14, align 8, !dbg !960
  br label %101, !dbg !960

101:                                              ; preds = %98
  %102 = load ptr, ptr %14, align 8, !dbg !962
  %103 = getelementptr inbounds %struct.chunk, ptr %102, i32 0, i32 0, !dbg !962
  %104 = load i32, ptr %103, align 8, !dbg !962
  %105 = zext i32 %104 to i64, !dbg !962
  %106 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %105, !dbg !962
  %107 = load ptr, ptr %106, align 8, !dbg !962
  br label %433, !dbg !962

108:                                              ; No predecessors!
  br label %109, !dbg !960

109:                                              ; preds = %108
  br label %110, !dbg !964

110:                                              ; preds = %109, %433
  call void @llvm.dbg.label(metadata !965), !dbg !966
  %111 = load ptr, ptr %9, align 8, !dbg !967
  %112 = load ptr, ptr %10, align 8, !dbg !968
  %113 = load ptr, ptr %14, align 8, !dbg !969
  %114 = getelementptr inbounds %struct.chunk, ptr %113, i32 0, i32 1, !dbg !970
  %115 = load ptr, ptr %114, align 8, !dbg !970
  %116 = ptrtoint ptr %115 to i64, !dbg !971
  %117 = getelementptr inbounds i8, ptr %112, i64 %116, !dbg !972
  call void @lwan_append_str_to_strbuf(ptr noundef %111, ptr noundef %117), !dbg !973
  br label %118, !dbg !974

118:                                              ; preds = %110
  %119 = load ptr, ptr %14, align 8, !dbg !975
  %120 = getelementptr inbounds %struct.chunk, ptr %119, i32 1, !dbg !975
  store ptr %120, ptr %14, align 8, !dbg !975
  br label %121, !dbg !975

121:                                              ; preds = %118
  %122 = load ptr, ptr %14, align 8, !dbg !977
  %123 = getelementptr inbounds %struct.chunk, ptr %122, i32 0, i32 0, !dbg !977
  %124 = load i32, ptr %123, align 8, !dbg !977
  %125 = zext i32 %124 to i64, !dbg !977
  %126 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %125, !dbg !977
  %127 = load ptr, ptr %126, align 8, !dbg !977
  br label %433, !dbg !977

128:                                              ; No predecessors!
  br label %129, !dbg !975

129:                                              ; preds = %128
  br label %130, !dbg !975

130:                                              ; preds = %129, %433
  call void @llvm.dbg.label(metadata !979), !dbg !980
  %131 = load ptr, ptr %9, align 8, !dbg !981
  %132 = load ptr, ptr %10, align 8, !dbg !982
  %133 = load ptr, ptr %14, align 8, !dbg !983
  %134 = getelementptr inbounds %struct.chunk, ptr %133, i32 0, i32 1, !dbg !984
  %135 = load ptr, ptr %134, align 8, !dbg !984
  %136 = ptrtoint ptr %135 to i64, !dbg !985
  %137 = getelementptr inbounds i8, ptr %132, i64 %136, !dbg !986
  call void @lwan_append_str_escaped_to_strbuf(ptr noundef %131, ptr noundef %137), !dbg !987
  br label %138, !dbg !988

138:                                              ; preds = %130
  %139 = load ptr, ptr %14, align 8, !dbg !989
  %140 = getelementptr inbounds %struct.chunk, ptr %139, i32 1, !dbg !989
  store ptr %140, ptr %14, align 8, !dbg !989
  br label %141, !dbg !989

141:                                              ; preds = %138
  %142 = load ptr, ptr %14, align 8, !dbg !991
  %143 = getelementptr inbounds %struct.chunk, ptr %142, i32 0, i32 0, !dbg !991
  %144 = load i32, ptr %143, align 8, !dbg !991
  %145 = zext i32 %144 to i64, !dbg !991
  %146 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %145, !dbg !991
  %147 = load ptr, ptr %146, align 8, !dbg !991
  br label %433, !dbg !991

148:                                              ; No predecessors!
  br label %149, !dbg !989

149:                                              ; preds = %148
  br label %150, !dbg !989

150:                                              ; preds = %149, %433
  call void @llvm.dbg.label(metadata !993), !dbg !994
  call void @llvm.dbg.declare(metadata ptr %16, metadata !995, metadata !DIExpression()), !dbg !1002
  %151 = load ptr, ptr %14, align 8, !dbg !1003
  %152 = getelementptr inbounds %struct.chunk, ptr %151, i32 0, i32 1, !dbg !1004
  %153 = load ptr, ptr %152, align 8, !dbg !1004
  store ptr %153, ptr %16, align 8, !dbg !1002
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1005, metadata !DIExpression()), !dbg !1006
  %154 = load ptr, ptr %16, align 8, !dbg !1007
  %155 = getelementptr inbounds %struct.chunk_descriptor, ptr %154, i32 0, i32 1, !dbg !1008
  %156 = load ptr, ptr %155, align 8, !dbg !1008
  %157 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %156, i32 0, i32 3, !dbg !1009
  %158 = load ptr, ptr %157, align 8, !dbg !1009
  %159 = load ptr, ptr %10, align 8, !dbg !1010
  %160 = load ptr, ptr %16, align 8, !dbg !1011
  %161 = getelementptr inbounds %struct.chunk_descriptor, ptr %160, i32 0, i32 1, !dbg !1012
  %162 = load ptr, ptr %161, align 8, !dbg !1012
  %163 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %162, i32 0, i32 1, !dbg !1013
  %164 = load i64, ptr %163, align 8, !dbg !1013
  %165 = getelementptr inbounds i8, ptr %159, i64 %164, !dbg !1014
  %166 = call zeroext i1 %158(ptr noundef %165), !dbg !1007
  %167 = zext i1 %166 to i8, !dbg !1006
  store i8 %167, ptr %17, align 1, !dbg !1006
  %168 = load ptr, ptr %14, align 8, !dbg !1015
  %169 = getelementptr inbounds %struct.chunk, ptr %168, i32 0, i32 2, !dbg !1017
  %170 = load i32, ptr %169, align 8, !dbg !1017
  %171 = and i32 %170, 1, !dbg !1018
  %172 = icmp ne i32 %171, 0, !dbg !1018
  br i1 %172, label %173, label %178, !dbg !1019

173:                                              ; preds = %150
  %174 = load i8, ptr %17, align 1, !dbg !1020
  %175 = trunc i8 %174 to i1, !dbg !1020
  %176 = xor i1 %175, true, !dbg !1021
  %177 = zext i1 %176 to i8, !dbg !1022
  store i8 %177, ptr %17, align 1, !dbg !1022
  br label %178, !dbg !1023

178:                                              ; preds = %173, %150
  %179 = load i8, ptr %17, align 1, !dbg !1024
  %180 = trunc i8 %179 to i1, !dbg !1024
  br i1 %180, label %181, label %185, !dbg !1026

181:                                              ; preds = %178
  %182 = load ptr, ptr %16, align 8, !dbg !1027
  %183 = getelementptr inbounds %struct.chunk_descriptor, ptr %182, i32 0, i32 0, !dbg !1029
  %184 = load ptr, ptr %183, align 8, !dbg !1029
  store ptr %184, ptr %14, align 8, !dbg !1030
  br label %195, !dbg !1031

185:                                              ; preds = %178
  %186 = load ptr, ptr %7, align 8, !dbg !1032
  %187 = load ptr, ptr %14, align 8, !dbg !1034
  %188 = getelementptr inbounds %struct.chunk, ptr %187, i64 1, !dbg !1035
  %189 = load ptr, ptr %9, align 8, !dbg !1036
  %190 = load ptr, ptr %10, align 8, !dbg !1037
  %191 = load ptr, ptr %16, align 8, !dbg !1038
  %192 = getelementptr inbounds %struct.chunk_descriptor, ptr %191, i32 0, i32 0, !dbg !1039
  %193 = load ptr, ptr %192, align 8, !dbg !1039
  %194 = call ptr @apply_until(ptr noundef %186, ptr noundef %188, ptr noundef %189, ptr noundef %190, ptr noundef %193), !dbg !1040
  store ptr %194, ptr %14, align 8, !dbg !1041
  br label %195

195:                                              ; preds = %185, %181
  br label %196, !dbg !1042

196:                                              ; preds = %195
  %197 = load ptr, ptr %14, align 8, !dbg !1043
  %198 = getelementptr inbounds %struct.chunk, ptr %197, i32 1, !dbg !1043
  store ptr %198, ptr %14, align 8, !dbg !1043
  br label %199, !dbg !1043

199:                                              ; preds = %196
  %200 = load ptr, ptr %14, align 8, !dbg !1045
  %201 = getelementptr inbounds %struct.chunk, ptr %200, i32 0, i32 0, !dbg !1045
  %202 = load i32, ptr %201, align 8, !dbg !1045
  %203 = zext i32 %202 to i64, !dbg !1045
  %204 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %203, !dbg !1045
  %205 = load ptr, ptr %204, align 8, !dbg !1045
  br label %433, !dbg !1045

206:                                              ; No predecessors!
  br label %207, !dbg !1043

207:                                              ; preds = %206
  br label %208, !dbg !1047

208:                                              ; preds = %207, %433
  call void @llvm.dbg.label(metadata !1048), !dbg !1049
  %209 = load ptr, ptr %11, align 8, !dbg !1050
  %210 = load ptr, ptr %14, align 8, !dbg !1050
  %211 = icmp eq ptr %209, %210, !dbg !1050
  %212 = xor i1 %211, true, !dbg !1050
  %213 = xor i1 %212, true, !dbg !1050
  %214 = zext i1 %213 to i32, !dbg !1050
  %215 = sext i32 %214 to i64, !dbg !1050
  %216 = icmp ne i64 %215, 0, !dbg !1050
  br i1 %216, label %217, label %218, !dbg !1052

217:                                              ; preds = %208
  br label %429, !dbg !1053

218:                                              ; preds = %208
  br label %219, !dbg !1054

219:                                              ; preds = %218
  %220 = load ptr, ptr %14, align 8, !dbg !1055
  %221 = getelementptr inbounds %struct.chunk, ptr %220, i32 1, !dbg !1055
  store ptr %221, ptr %14, align 8, !dbg !1055
  br label %222, !dbg !1055

222:                                              ; preds = %219
  %223 = load ptr, ptr %14, align 8, !dbg !1057
  %224 = getelementptr inbounds %struct.chunk, ptr %223, i32 0, i32 0, !dbg !1057
  %225 = load i32, ptr %224, align 8, !dbg !1057
  %226 = zext i32 %225 to i64, !dbg !1057
  %227 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %226, !dbg !1057
  %228 = load ptr, ptr %227, align 8, !dbg !1057
  br label %433, !dbg !1057

229:                                              ; No predecessors!
  br label %230, !dbg !1055

230:                                              ; preds = %229
  br label %231, !dbg !1055

231:                                              ; preds = %230, %433
  call void @llvm.dbg.label(metadata !1059), !dbg !1060
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1061, metadata !DIExpression()), !dbg !1063
  %232 = load ptr, ptr %14, align 8, !dbg !1064
  %233 = getelementptr inbounds %struct.chunk, ptr %232, i32 0, i32 1, !dbg !1065
  %234 = load ptr, ptr %233, align 8, !dbg !1065
  %235 = load ptr, ptr %10, align 8, !dbg !1066
  %236 = call ptr @lwan_tpl_apply(ptr noundef %234, ptr noundef %235), !dbg !1067
  store ptr %236, ptr %18, align 8, !dbg !1063
  %237 = load ptr, ptr %9, align 8, !dbg !1068
  %238 = load ptr, ptr %18, align 8, !dbg !1069
  %239 = getelementptr inbounds %struct.strbuf_t_, ptr %238, i32 0, i32 0, !dbg !1069
  %240 = load ptr, ptr %239, align 8, !dbg !1069
  %241 = load ptr, ptr %18, align 8, !dbg !1070
  %242 = getelementptr inbounds %struct.strbuf_t_, ptr %241, i32 0, i32 1, !dbg !1070
  %243 = getelementptr inbounds %struct.anon, ptr %242, i32 0, i32 1, !dbg !1070
  %244 = load i64, ptr %243, align 8, !dbg !1070
  %245 = call zeroext i1 @strbuf_append_str(ptr noundef %237, ptr noundef %240, i64 noundef %244), !dbg !1071
  %246 = load ptr, ptr %18, align 8, !dbg !1072
  call void @strbuf_free(ptr noundef %246), !dbg !1073
  br label %247, !dbg !1074

247:                                              ; preds = %231
  %248 = load ptr, ptr %14, align 8, !dbg !1075
  %249 = getelementptr inbounds %struct.chunk, ptr %248, i32 1, !dbg !1075
  store ptr %249, ptr %14, align 8, !dbg !1075
  br label %250, !dbg !1075

250:                                              ; preds = %247
  %251 = load ptr, ptr %14, align 8, !dbg !1077
  %252 = getelementptr inbounds %struct.chunk, ptr %251, i32 0, i32 0, !dbg !1077
  %253 = load i32, ptr %252, align 8, !dbg !1077
  %254 = zext i32 %253 to i64, !dbg !1077
  %255 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %254, !dbg !1077
  %256 = load ptr, ptr %255, align 8, !dbg !1077
  br label %433, !dbg !1077

257:                                              ; No predecessors!
  br label %258, !dbg !1075

258:                                              ; preds = %257
  br label %259, !dbg !1079

259:                                              ; preds = %258, %433
  call void @llvm.dbg.label(metadata !1080), !dbg !1081
  %260 = load ptr, ptr %13, align 8, !dbg !1082
  %261 = icmp ne ptr %260, null, !dbg !1082
  %262 = zext i1 %261 to i32, !dbg !1082
  %263 = sext i32 %262 to i64, !dbg !1082
  %264 = icmp ne i64 %263, 0, !dbg !1082
  br i1 %264, label %265, label %278, !dbg !1084

265:                                              ; preds = %259
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.7, i32 noundef 1234, ptr noundef @__FUNCTION__.apply_until, ptr noundef @.str.53), !dbg !1085
  br label %266, !dbg !1087

266:                                              ; preds = %265
  %267 = load ptr, ptr %14, align 8, !dbg !1088
  %268 = getelementptr inbounds %struct.chunk, ptr %267, i32 1, !dbg !1088
  store ptr %268, ptr %14, align 8, !dbg !1088
  br label %269, !dbg !1088

269:                                              ; preds = %266
  %270 = load ptr, ptr %14, align 8, !dbg !1090
  %271 = getelementptr inbounds %struct.chunk, ptr %270, i32 0, i32 0, !dbg !1090
  %272 = load i32, ptr %271, align 8, !dbg !1090
  %273 = zext i32 %272 to i64, !dbg !1090
  %274 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %273, !dbg !1090
  %275 = load ptr, ptr %274, align 8, !dbg !1090
  br label %433, !dbg !1090

276:                                              ; No predecessors!
  br label %277, !dbg !1088

277:                                              ; preds = %276
  br label %278, !dbg !1092

278:                                              ; preds = %277, %259
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1093, metadata !DIExpression()), !dbg !1094
  %279 = load ptr, ptr %14, align 8, !dbg !1095
  %280 = getelementptr inbounds %struct.chunk, ptr %279, i32 0, i32 1, !dbg !1096
  %281 = load ptr, ptr %280, align 8, !dbg !1096
  store ptr %281, ptr %19, align 8, !dbg !1094
  %282 = load ptr, ptr %19, align 8, !dbg !1097
  %283 = getelementptr inbounds %struct.chunk_descriptor, ptr %282, i32 0, i32 1, !dbg !1098
  %284 = load ptr, ptr %283, align 8, !dbg !1098
  %285 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %284, i32 0, i32 4, !dbg !1099
  %286 = load ptr, ptr %285, align 8, !dbg !1099
  %287 = load ptr, ptr %10, align 8, !dbg !1100
  %288 = call ptr @coro_new(ptr noundef %12, ptr noundef %286, ptr noundef %287), !dbg !1101
  store ptr %288, ptr %13, align 8, !dbg !1102
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1103, metadata !DIExpression()), !dbg !1104
  %289 = load ptr, ptr %13, align 8, !dbg !1105
  %290 = call i32 @coro_resume_value(ptr noundef %289, i32 noundef 0), !dbg !1106
  %291 = icmp ne i32 %290, 0, !dbg !1106
  %292 = zext i1 %291 to i8, !dbg !1104
  store i8 %292, ptr %20, align 1, !dbg !1104
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1107, metadata !DIExpression()), !dbg !1108
  %293 = load ptr, ptr %14, align 8, !dbg !1109
  %294 = getelementptr inbounds %struct.chunk, ptr %293, i32 0, i32 2, !dbg !1110
  %295 = load i32, ptr %294, align 8, !dbg !1110
  %296 = and i32 %295, 1, !dbg !1111
  store i32 %296, ptr %21, align 4, !dbg !1108
  %297 = load i32, ptr %21, align 4, !dbg !1112
  %298 = icmp ne i32 %297, 0, !dbg !1112
  br i1 %298, label %299, label %304, !dbg !1114

299:                                              ; preds = %278
  %300 = load i8, ptr %20, align 1, !dbg !1115
  %301 = trunc i8 %300 to i1, !dbg !1115
  %302 = xor i1 %301, true, !dbg !1116
  %303 = zext i1 %302 to i8, !dbg !1117
  store i8 %303, ptr %20, align 1, !dbg !1117
  br label %304, !dbg !1118

304:                                              ; preds = %299, %278
  %305 = load i8, ptr %20, align 1, !dbg !1119
  %306 = trunc i8 %305 to i1, !dbg !1119
  br i1 %306, label %342, label %307, !dbg !1121

307:                                              ; preds = %304
  %308 = load ptr, ptr %19, align 8, !dbg !1122
  %309 = getelementptr inbounds %struct.chunk_descriptor, ptr %308, i32 0, i32 0, !dbg !1124
  %310 = load ptr, ptr %309, align 8, !dbg !1124
  store ptr %310, ptr %14, align 8, !dbg !1125
  %311 = load i32, ptr %21, align 4, !dbg !1126
  %312 = icmp ne i32 %311, 0, !dbg !1126
  br i1 %312, label %313, label %316, !dbg !1128

313:                                              ; preds = %307
  %314 = load ptr, ptr %13, align 8, !dbg !1129
  %315 = call i32 @coro_resume_value(ptr noundef %314, i32 noundef 1), !dbg !1130
  br label %316, !dbg !1130

316:                                              ; preds = %313, %307
  %317 = load ptr, ptr %13, align 8, !dbg !1131
  call void @coro_free(ptr noundef %317), !dbg !1132
  store ptr null, ptr %13, align 8, !dbg !1133
  %318 = load i32, ptr %21, align 4, !dbg !1134
  %319 = icmp ne i32 %318, 0, !dbg !1134
  br i1 %319, label %320, label %329, !dbg !1136

320:                                              ; preds = %316
  br label %321, !dbg !1137

321:                                              ; preds = %320
  %322 = load ptr, ptr %14, align 8, !dbg !1138
  %323 = getelementptr inbounds %struct.chunk, ptr %322, i32 0, i32 0, !dbg !1138
  %324 = load i32, ptr %323, align 8, !dbg !1138
  %325 = zext i32 %324 to i64, !dbg !1138
  %326 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %325, !dbg !1138
  %327 = load ptr, ptr %326, align 8, !dbg !1138
  br label %433, !dbg !1138

328:                                              ; No predecessors!
  br label %329, !dbg !1138

329:                                              ; preds = %328, %316
  br label %330, !dbg !1140

330:                                              ; preds = %329
  %331 = load ptr, ptr %14, align 8, !dbg !1141
  %332 = getelementptr inbounds %struct.chunk, ptr %331, i32 1, !dbg !1141
  store ptr %332, ptr %14, align 8, !dbg !1141
  br label %333, !dbg !1141

333:                                              ; preds = %330
  %334 = load ptr, ptr %14, align 8, !dbg !1143
  %335 = getelementptr inbounds %struct.chunk, ptr %334, i32 0, i32 0, !dbg !1143
  %336 = load i32, ptr %335, align 8, !dbg !1143
  %337 = zext i32 %336 to i64, !dbg !1143
  %338 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %337, !dbg !1143
  %339 = load ptr, ptr %338, align 8, !dbg !1143
  br label %433, !dbg !1143

340:                                              ; No predecessors!
  br label %341, !dbg !1141

341:                                              ; preds = %340
  br label %342, !dbg !1145

342:                                              ; preds = %341, %304
  %343 = load ptr, ptr %7, align 8, !dbg !1146
  %344 = load ptr, ptr %14, align 8, !dbg !1147
  %345 = getelementptr inbounds %struct.chunk, ptr %344, i64 1, !dbg !1148
  %346 = load ptr, ptr %9, align 8, !dbg !1149
  %347 = load ptr, ptr %10, align 8, !dbg !1150
  %348 = load ptr, ptr %14, align 8, !dbg !1151
  %349 = call ptr @apply_until(ptr noundef %343, ptr noundef %345, ptr noundef %346, ptr noundef %347, ptr noundef %348), !dbg !1152
  store ptr %349, ptr %14, align 8, !dbg !1153
  br label %350, !dbg !1154

350:                                              ; preds = %342
  %351 = load ptr, ptr %14, align 8, !dbg !1155
  %352 = getelementptr inbounds %struct.chunk, ptr %351, i32 0, i32 0, !dbg !1155
  %353 = load i32, ptr %352, align 8, !dbg !1155
  %354 = zext i32 %353 to i64, !dbg !1155
  %355 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %354, !dbg !1155
  %356 = load ptr, ptr %355, align 8, !dbg !1155
  br label %433, !dbg !1155

357:                                              ; No predecessors!
  br label %358, !dbg !1155

358:                                              ; preds = %357, %433
  call void @llvm.dbg.label(metadata !1157), !dbg !1158
  %359 = load ptr, ptr %11, align 8, !dbg !1159
  %360 = load ptr, ptr %14, align 8, !dbg !1161
  %361 = getelementptr inbounds %struct.chunk, ptr %360, i32 0, i32 1, !dbg !1162
  %362 = load ptr, ptr %361, align 8, !dbg !1162
  %363 = icmp eq ptr %359, %362, !dbg !1163
  br i1 %363, label %364, label %365, !dbg !1164

364:                                              ; preds = %358
  br label %429, !dbg !1165

365:                                              ; preds = %358
  %366 = load ptr, ptr %13, align 8, !dbg !1166
  %367 = icmp ne ptr %366, null, !dbg !1166
  %368 = xor i1 %367, true, !dbg !1166
  %369 = zext i1 %368 to i32, !dbg !1166
  %370 = sext i32 %369 to i64, !dbg !1166
  %371 = icmp ne i64 %370, 0, !dbg !1166
  br i1 %371, label %372, label %391, !dbg !1168

372:                                              ; preds = %365
  %373 = load ptr, ptr %14, align 8, !dbg !1169
  %374 = getelementptr inbounds %struct.chunk, ptr %373, i32 0, i32 2, !dbg !1172
  %375 = load i32, ptr %374, align 8, !dbg !1172
  %376 = icmp ne i32 %375, 0, !dbg !1169
  br i1 %376, label %378, label %377, !dbg !1173

377:                                              ; preds = %372
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.7, i32 noundef 1268, ptr noundef @__FUNCTION__.apply_until, ptr noundef @.str.54), !dbg !1174
  br label %378, !dbg !1174

378:                                              ; preds = %377, %372
  br label %379, !dbg !1175

379:                                              ; preds = %378
  %380 = load ptr, ptr %14, align 8, !dbg !1176
  %381 = getelementptr inbounds %struct.chunk, ptr %380, i32 1, !dbg !1176
  store ptr %381, ptr %14, align 8, !dbg !1176
  br label %382, !dbg !1176

382:                                              ; preds = %379
  %383 = load ptr, ptr %14, align 8, !dbg !1178
  %384 = getelementptr inbounds %struct.chunk, ptr %383, i32 0, i32 0, !dbg !1178
  %385 = load i32, ptr %384, align 8, !dbg !1178
  %386 = zext i32 %385 to i64, !dbg !1178
  %387 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %386, !dbg !1178
  %388 = load ptr, ptr %387, align 8, !dbg !1178
  br label %433, !dbg !1178

389:                                              ; No predecessors!
  br label %390, !dbg !1176

390:                                              ; preds = %389
  br label %391, !dbg !1180

391:                                              ; preds = %390, %365
  %392 = load ptr, ptr %13, align 8, !dbg !1181
  %393 = call i32 @coro_resume_value(ptr noundef %392, i32 noundef 0), !dbg !1183
  %394 = icmp ne i32 %393, 0, !dbg !1183
  br i1 %394, label %409, label %395, !dbg !1184

395:                                              ; preds = %391
  %396 = load ptr, ptr %13, align 8, !dbg !1185
  call void @coro_free(ptr noundef %396), !dbg !1187
  store ptr null, ptr %13, align 8, !dbg !1188
  br label %397, !dbg !1189

397:                                              ; preds = %395
  %398 = load ptr, ptr %14, align 8, !dbg !1190
  %399 = getelementptr inbounds %struct.chunk, ptr %398, i32 1, !dbg !1190
  store ptr %399, ptr %14, align 8, !dbg !1190
  br label %400, !dbg !1190

400:                                              ; preds = %397
  %401 = load ptr, ptr %14, align 8, !dbg !1192
  %402 = getelementptr inbounds %struct.chunk, ptr %401, i32 0, i32 0, !dbg !1192
  %403 = load i32, ptr %402, align 8, !dbg !1192
  %404 = zext i32 %403 to i64, !dbg !1192
  %405 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %404, !dbg !1192
  %406 = load ptr, ptr %405, align 8, !dbg !1192
  br label %433, !dbg !1192

407:                                              ; No predecessors!
  br label %408, !dbg !1190

408:                                              ; preds = %407
  br label %409, !dbg !1194

409:                                              ; preds = %408, %391
  %410 = load ptr, ptr %7, align 8, !dbg !1195
  %411 = load ptr, ptr %14, align 8, !dbg !1196
  %412 = getelementptr inbounds %struct.chunk, ptr %411, i32 0, i32 1, !dbg !1197
  %413 = load ptr, ptr %412, align 8, !dbg !1197
  %414 = getelementptr inbounds %struct.chunk, ptr %413, i64 1, !dbg !1198
  %415 = load ptr, ptr %9, align 8, !dbg !1199
  %416 = load ptr, ptr %10, align 8, !dbg !1200
  %417 = load ptr, ptr %14, align 8, !dbg !1201
  %418 = getelementptr inbounds %struct.chunk, ptr %417, i32 0, i32 1, !dbg !1202
  %419 = load ptr, ptr %418, align 8, !dbg !1202
  %420 = call ptr @apply_until(ptr noundef %410, ptr noundef %414, ptr noundef %415, ptr noundef %416, ptr noundef %419), !dbg !1203
  store ptr %420, ptr %14, align 8, !dbg !1204
  br label %421, !dbg !1205

421:                                              ; preds = %409
  %422 = load ptr, ptr %14, align 8, !dbg !1206
  %423 = getelementptr inbounds %struct.chunk, ptr %422, i32 0, i32 0, !dbg !1206
  %424 = load i32, ptr %423, align 8, !dbg !1206
  %425 = zext i32 %424 to i64, !dbg !1206
  %426 = getelementptr inbounds [11 x ptr], ptr @apply_until.dispatch_table, i64 0, i64 %425, !dbg !1206
  %427 = load ptr, ptr %426, align 8, !dbg !1206
  br label %433, !dbg !1206

428:                                              ; No predecessors!
  br label %429, !dbg !1206

429:                                              ; preds = %428, %364, %217, %433
  call void @llvm.dbg.label(metadata !1208), !dbg !1209
  %430 = load ptr, ptr %14, align 8, !dbg !1210
  store ptr %430, ptr %6, align 8, !dbg !1211
  br label %431, !dbg !1211

431:                                              ; preds = %429, %29
  %432 = load ptr, ptr %6, align 8, !dbg !1212
  ret ptr %432, !dbg !1212

433:                                              ; preds = %421, %400, %382, %350, %333, %321, %269, %250, %222, %199, %141, %121, %101, %76, %56, %31
  %434 = phi ptr [ %37, %31 ], [ %62, %56 ], [ %82, %76 ], [ %107, %101 ], [ %127, %121 ], [ %147, %141 ], [ %205, %199 ], [ %228, %222 ], [ %256, %250 ], [ %275, %269 ], [ %327, %321 ], [ %339, %333 ], [ %356, %350 ], [ %388, %382 ], [ %406, %400 ], [ %427, %421 ]
  indirectbr ptr %434, [label %39, label %65, label %85, label %110, label %130, label %259, label %358, label %150, label %208, label %231, label %429]
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_tpl_apply(ptr noundef %0, ptr noundef %1) #0 !dbg !1213 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1216, metadata !DIExpression()), !dbg !1217
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1218, metadata !DIExpression()), !dbg !1219
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1220, metadata !DIExpression()), !dbg !1221
  %6 = load ptr, ptr %3, align 8, !dbg !1222
  %7 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %6, i32 0, i32 1, !dbg !1223
  %8 = load i64, ptr %7, align 8, !dbg !1223
  %9 = call ptr @strbuf_new_with_size(i64 noundef %8), !dbg !1224
  store ptr %9, ptr %5, align 8, !dbg !1221
  %10 = load ptr, ptr %3, align 8, !dbg !1225
  %11 = load ptr, ptr %5, align 8, !dbg !1226
  %12 = load ptr, ptr %4, align 8, !dbg !1227
  %13 = call ptr @lwan_tpl_apply_with_buffer(ptr noundef %10, ptr noundef %11, ptr noundef %12), !dbg !1228
  ret ptr %13, !dbg !1229
}

declare ptr @strbuf_new_with_size(i64 noundef) #2

declare void @strbuf_free(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_text(ptr noundef %0, ptr noundef %1) #0 !dbg !1230 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1231, metadata !DIExpression()), !dbg !1232
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1233, metadata !DIExpression()), !dbg !1234
  %7 = load ptr, ptr %5, align 8, !dbg !1235
  %8 = getelementptr inbounds %struct.item, ptr %7, i32 0, i32 0, !dbg !1237
  %9 = load i32, ptr %8, align 8, !dbg !1237
  %10 = icmp eq i32 %9, 3, !dbg !1238
  br i1 %10, label %11, label %12, !dbg !1239

11:                                               ; preds = %2
  store ptr @parser_meta, ptr %3, align 8, !dbg !1240
  br label %77, !dbg !1240

12:                                               ; preds = %2
  %13 = load ptr, ptr %5, align 8, !dbg !1241
  %14 = getelementptr inbounds %struct.item, ptr %13, i32 0, i32 0, !dbg !1243
  %15 = load i32, ptr %14, align 8, !dbg !1243
  %16 = icmp eq i32 %15, 6, !dbg !1244
  br i1 %16, label %17, label %67, !dbg !1245

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !1246
  %19 = getelementptr inbounds %struct.item, ptr %18, i32 0, i32 1, !dbg !1249
  %20 = getelementptr inbounds %struct.anon.1, ptr %19, i32 0, i32 1, !dbg !1250
  %21 = load i64, ptr %20, align 8, !dbg !1250
  %22 = icmp eq i64 %21, 1, !dbg !1251
  br i1 %22, label %23, label %32, !dbg !1252

23:                                               ; preds = %17
  %24 = load ptr, ptr %4, align 8, !dbg !1253
  %25 = load ptr, ptr %5, align 8, !dbg !1255
  %26 = getelementptr inbounds %struct.item, ptr %25, i32 0, i32 1, !dbg !1256
  %27 = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 0, !dbg !1257
  %28 = load ptr, ptr %27, align 8, !dbg !1257
  %29 = load i8, ptr %28, align 1, !dbg !1258
  %30 = sext i8 %29 to i64, !dbg !1259
  %31 = inttoptr i64 %30 to ptr, !dbg !1260
  call void @emit_chunk(ptr noundef %24, i32 noundef 1, i32 noundef 0, ptr noundef %31), !dbg !1261
  br label %56, !dbg !1262

32:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1263, metadata !DIExpression()), !dbg !1265
  %33 = load ptr, ptr %5, align 8, !dbg !1266
  %34 = getelementptr inbounds %struct.item, ptr %33, i32 0, i32 1, !dbg !1267
  %35 = getelementptr inbounds %struct.anon.1, ptr %34, i32 0, i32 1, !dbg !1268
  %36 = load i64, ptr %35, align 8, !dbg !1268
  %37 = call ptr @strbuf_new_with_size(i64 noundef %36), !dbg !1269
  store ptr %37, ptr %6, align 8, !dbg !1265
  %38 = load ptr, ptr %6, align 8, !dbg !1270
  %39 = icmp ne ptr %38, null, !dbg !1270
  br i1 %39, label %43, label %40, !dbg !1272

40:                                               ; preds = %32
  %41 = load ptr, ptr %5, align 8, !dbg !1273
  %42 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %41, ptr noundef @.str.9), !dbg !1274
  store ptr %42, ptr %3, align 8, !dbg !1275
  br label %77, !dbg !1275

43:                                               ; preds = %32
  %44 = load ptr, ptr %6, align 8, !dbg !1276
  %45 = load ptr, ptr %5, align 8, !dbg !1277
  %46 = getelementptr inbounds %struct.item, ptr %45, i32 0, i32 1, !dbg !1278
  %47 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 0, !dbg !1279
  %48 = load ptr, ptr %47, align 8, !dbg !1279
  %49 = load ptr, ptr %5, align 8, !dbg !1280
  %50 = getelementptr inbounds %struct.item, ptr %49, i32 0, i32 1, !dbg !1281
  %51 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 1, !dbg !1282
  %52 = load i64, ptr %51, align 8, !dbg !1282
  %53 = call zeroext i1 @strbuf_set(ptr noundef %44, ptr noundef %48, i64 noundef %52), !dbg !1283
  %54 = load ptr, ptr %4, align 8, !dbg !1284
  %55 = load ptr, ptr %6, align 8, !dbg !1285
  call void @emit_chunk(ptr noundef %54, i32 noundef 0, i32 noundef 0, ptr noundef %55), !dbg !1286
  br label %56

56:                                               ; preds = %43, %23
  %57 = load ptr, ptr %5, align 8, !dbg !1287
  %58 = getelementptr inbounds %struct.item, ptr %57, i32 0, i32 1, !dbg !1288
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1, !dbg !1289
  %60 = load i64, ptr %59, align 8, !dbg !1289
  %61 = load ptr, ptr %4, align 8, !dbg !1290
  %62 = getelementptr inbounds %struct.parser, ptr %61, i32 0, i32 0, !dbg !1291
  %63 = load ptr, ptr %62, align 8, !dbg !1291
  %64 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %63, i32 0, i32 1, !dbg !1292
  %65 = load i64, ptr %64, align 8, !dbg !1293
  %66 = add i64 %65, %60, !dbg !1293
  store i64 %66, ptr %64, align 8, !dbg !1293
  store ptr @parser_text, ptr %3, align 8, !dbg !1294
  br label %77, !dbg !1294

67:                                               ; preds = %12
  %68 = load ptr, ptr %5, align 8, !dbg !1295
  %69 = getelementptr inbounds %struct.item, ptr %68, i32 0, i32 0, !dbg !1297
  %70 = load i32, ptr %69, align 8, !dbg !1297
  %71 = icmp eq i32 %70, 1, !dbg !1298
  br i1 %71, label %72, label %74, !dbg !1299

72:                                               ; preds = %67
  %73 = load ptr, ptr %4, align 8, !dbg !1300
  call void @emit_chunk(ptr noundef %73, i32 noundef 10, i32 noundef 0, ptr noundef null), !dbg !1302
  store ptr null, ptr %3, align 8, !dbg !1303
  br label %77, !dbg !1303

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8, !dbg !1304
  %76 = call ptr @unexpected_lexeme(ptr noundef %75), !dbg !1305
  store ptr %76, ptr %3, align 8, !dbg !1306
  br label %77, !dbg !1306

77:                                               ; preds = %74, %72, %56, %40, %11
  %78 = load ptr, ptr %3, align 8, !dbg !1307
  ret ptr %78, !dbg !1307
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parser_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1308 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1311, metadata !DIExpression()), !dbg !1312
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1313, metadata !DIExpression()), !dbg !1314
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1315, metadata !DIExpression()), !dbg !1316
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1317, metadata !DIExpression()), !dbg !1318
  %9 = load ptr, ptr %5, align 8, !dbg !1319
  %10 = load ptr, ptr %6, align 8, !dbg !1321
  %11 = call i32 @symtab_push(ptr noundef %9, ptr noundef %10), !dbg !1322
  %12 = icmp slt i32 %11, 0, !dbg !1323
  br i1 %12, label %13, label %14, !dbg !1324

13:                                               ; preds = %3
  store i1 false, ptr %4, align 1, !dbg !1325
  br label %38, !dbg !1325

14:                                               ; preds = %3
  %15 = load ptr, ptr %5, align 8, !dbg !1326
  %16 = getelementptr inbounds %struct.parser, ptr %15, i32 0, i32 6, !dbg !1327
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 2, !dbg !1328
  %18 = load i64, ptr %17, align 8, !dbg !1328
  %19 = call ptr @reallocarray(ptr noundef null, i64 noundef %18, i64 noundef 24) #13, !dbg !1329
  store ptr %19, ptr %8, align 8, !dbg !1330
  %20 = load ptr, ptr %8, align 8, !dbg !1331
  %21 = load ptr, ptr %5, align 8, !dbg !1332
  %22 = getelementptr inbounds %struct.parser, ptr %21, i32 0, i32 6, !dbg !1333
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 0, !dbg !1334
  store ptr %20, ptr %23, align 8, !dbg !1335
  %24 = load ptr, ptr %5, align 8, !dbg !1336
  %25 = getelementptr inbounds %struct.parser, ptr %24, i32 0, i32 0, !dbg !1337
  %26 = load ptr, ptr %25, align 8, !dbg !1337
  %27 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %26, i32 0, i32 0, !dbg !1338
  store ptr %20, ptr %27, align 8, !dbg !1339
  %28 = load ptr, ptr %8, align 8, !dbg !1340
  %29 = icmp ne ptr %28, null, !dbg !1340
  br i1 %29, label %32, label %30, !dbg !1342

30:                                               ; preds = %14
  %31 = load ptr, ptr %5, align 8, !dbg !1343
  call void @symtab_pop(ptr noundef %31), !dbg !1345
  store i1 false, ptr %4, align 1, !dbg !1346
  br label %38, !dbg !1346

32:                                               ; preds = %14
  %33 = load ptr, ptr %5, align 8, !dbg !1347
  %34 = getelementptr inbounds %struct.parser, ptr %33, i32 0, i32 3, !dbg !1348
  %35 = load ptr, ptr %7, align 8, !dbg !1349
  call void @lex_init(ptr noundef %34, ptr noundef %35), !dbg !1350
  %36 = load ptr, ptr %5, align 8, !dbg !1351
  %37 = getelementptr inbounds %struct.parser, ptr %36, i32 0, i32 5, !dbg !1352
  call void @list_head_init(ptr noundef %37), !dbg !1353
  store i1 true, ptr %4, align 1, !dbg !1354
  br label %38, !dbg !1354

38:                                               ; preds = %32, %30, %13
  %39 = load i1, ptr %4, align 1, !dbg !1355
  ret i1 %39, !dbg !1355
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @lex_next(ptr noundef %0, ptr noundef %1) #0 !dbg !1356 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1360, metadata !DIExpression()), !dbg !1361
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1362, metadata !DIExpression()), !dbg !1363
  br label %6, !dbg !1364

6:                                                ; preds = %16, %2
  %7 = load ptr, ptr %4, align 8, !dbg !1365
  %8 = getelementptr inbounds %struct.lexer, ptr %7, i32 0, i32 0, !dbg !1366
  %9 = load ptr, ptr %8, align 8, !dbg !1366
  %10 = icmp ne ptr %9, null, !dbg !1364
  br i1 %10, label %11, label %24, !dbg !1364

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8, !dbg !1367
  %13 = load ptr, ptr %5, align 8, !dbg !1370
  %14 = call zeroext i1 @consume_item(ptr noundef %12, ptr noundef %13), !dbg !1371
  br i1 %14, label %15, label %16, !dbg !1372

15:                                               ; preds = %11
  store i1 true, ptr %3, align 1, !dbg !1373
  br label %28, !dbg !1373

16:                                               ; preds = %11
  %17 = load ptr, ptr %4, align 8, !dbg !1374
  %18 = getelementptr inbounds %struct.lexer, ptr %17, i32 0, i32 0, !dbg !1375
  %19 = load ptr, ptr %18, align 8, !dbg !1375
  %20 = load ptr, ptr %4, align 8, !dbg !1376
  %21 = call ptr %19(ptr noundef %20), !dbg !1374
  %22 = load ptr, ptr %4, align 8, !dbg !1377
  %23 = getelementptr inbounds %struct.lexer, ptr %22, i32 0, i32 0, !dbg !1378
  store ptr %21, ptr %23, align 8, !dbg !1379
  br label %6, !dbg !1364, !llvm.loop !1380

24:                                               ; preds = %6
  %25 = load ptr, ptr %4, align 8, !dbg !1382
  %26 = load ptr, ptr %5, align 8, !dbg !1383
  %27 = call zeroext i1 @consume_item(ptr noundef %25, ptr noundef %26), !dbg !1384
  store i1 %27, ptr %3, align 1, !dbg !1385
  br label %28, !dbg !1385

28:                                               ; preds = %24, %15
  %29 = load i1, ptr %3, align 1, !dbg !1386
  ret i1 %29, !dbg !1386
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parser_shutdown(ptr noundef %0, ptr noundef %1) #0 !dbg !1387 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1390, metadata !DIExpression()), !dbg !1391
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1392, metadata !DIExpression()), !dbg !1393
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1394, metadata !DIExpression()), !dbg !1395
  store i8 1, ptr %5, align 1, !dbg !1395
  %8 = load ptr, ptr %4, align 8, !dbg !1396
  %9 = getelementptr inbounds %struct.item, ptr %8, i32 0, i32 0, !dbg !1398
  %10 = load i32, ptr %9, align 8, !dbg !1398
  %11 = icmp eq i32 %10, 0, !dbg !1399
  br i1 %11, label %12, label %32, !dbg !1400

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !1401
  %14 = getelementptr inbounds %struct.item, ptr %13, i32 0, i32 1, !dbg !1402
  %15 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 0, !dbg !1403
  %16 = load ptr, ptr %15, align 8, !dbg !1403
  %17 = icmp ne ptr %16, null, !dbg !1401
  br i1 %17, label %18, label %32, !dbg !1404

18:                                               ; preds = %12
  %19 = load ptr, ptr %4, align 8, !dbg !1405
  %20 = getelementptr inbounds %struct.item, ptr %19, i32 0, i32 1, !dbg !1405
  %21 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 1, !dbg !1405
  %22 = load i64, ptr %21, align 8, !dbg !1405
  %23 = trunc i64 %22 to i32, !dbg !1405
  %24 = load ptr, ptr %4, align 8, !dbg !1405
  %25 = getelementptr inbounds %struct.item, ptr %24, i32 0, i32 1, !dbg !1405
  %26 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 0, !dbg !1405
  %27 = load ptr, ptr %26, align 8, !dbg !1405
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 1041, ptr noundef @__FUNCTION__.parser_shutdown, ptr noundef @.str.44, i32 noundef %23, ptr noundef %27), !dbg !1405
  %28 = load ptr, ptr %4, align 8, !dbg !1407
  %29 = getelementptr inbounds %struct.item, ptr %28, i32 0, i32 1, !dbg !1408
  %30 = getelementptr inbounds %struct.anon.1, ptr %29, i32 0, i32 0, !dbg !1409
  %31 = load ptr, ptr %30, align 8, !dbg !1409
  call void @free(ptr noundef %31) #13, !dbg !1410
  store i8 0, ptr %5, align 1, !dbg !1411
  br label %32, !dbg !1412

32:                                               ; preds = %18, %12, %2
  %33 = load ptr, ptr %3, align 8, !dbg !1413
  %34 = getelementptr inbounds %struct.parser, ptr %33, i32 0, i32 5, !dbg !1415
  %35 = call zeroext i1 @list_empty(ptr noundef %34), !dbg !1416
  br i1 %35, label %78, label %36, !dbg !1417

36:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1418, metadata !DIExpression()), !dbg !1420
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1421, metadata !DIExpression()), !dbg !1422
  %37 = load ptr, ptr %3, align 8, !dbg !1423
  %38 = getelementptr inbounds %struct.parser, ptr %37, i32 0, i32 5, !dbg !1423
  %39 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 0, !dbg !1423
  %40 = getelementptr inbounds %struct.list_node, ptr %39, i32 0, i32 0, !dbg !1423
  %41 = load ptr, ptr %40, align 8, !dbg !1423
  %42 = call ptr @list_node_to_off_(ptr noundef %41, i64 noundef 0), !dbg !1423
  store ptr %42, ptr %6, align 8, !dbg !1423
  %43 = load ptr, ptr %6, align 8, !dbg !1423
  %44 = call ptr @list_node_from_off_(ptr noundef %43, i64 noundef 0), !dbg !1423
  %45 = getelementptr inbounds %struct.list_node, ptr %44, i32 0, i32 0, !dbg !1423
  %46 = load ptr, ptr %45, align 8, !dbg !1423
  %47 = call ptr @list_node_to_off_(ptr noundef %46, i64 noundef 0), !dbg !1423
  store ptr %47, ptr %7, align 8, !dbg !1423
  br label %48, !dbg !1423

48:                                               ; preds = %70, %36
  %49 = load ptr, ptr %6, align 8, !dbg !1425
  %50 = call ptr @list_node_from_off_(ptr noundef %49, i64 noundef 0), !dbg !1425
  %51 = load ptr, ptr %3, align 8, !dbg !1425
  %52 = getelementptr inbounds %struct.parser, ptr %51, i32 0, i32 5, !dbg !1425
  %53 = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 0, !dbg !1425
  %54 = icmp ne ptr %50, %53, !dbg !1425
  br i1 %54, label %55, label %77, !dbg !1423

55:                                               ; preds = %48
  %56 = load ptr, ptr %6, align 8, !dbg !1427
  %57 = getelementptr inbounds %struct.stacked_item, ptr %56, i32 0, i32 1, !dbg !1427
  %58 = getelementptr inbounds %struct.item, ptr %57, i32 0, i32 1, !dbg !1427
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 1, !dbg !1427
  %60 = load i64, ptr %59, align 8, !dbg !1427
  %61 = trunc i64 %60 to i32, !dbg !1427
  %62 = load ptr, ptr %6, align 8, !dbg !1427
  %63 = getelementptr inbounds %struct.stacked_item, ptr %62, i32 0, i32 1, !dbg !1427
  %64 = getelementptr inbounds %struct.item, ptr %63, i32 0, i32 1, !dbg !1427
  %65 = getelementptr inbounds %struct.anon.1, ptr %64, i32 0, i32 0, !dbg !1427
  %66 = load ptr, ptr %65, align 8, !dbg !1427
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 1052, ptr noundef @__FUNCTION__.parser_shutdown, ptr noundef @.str.45, i32 noundef %61, ptr noundef %66), !dbg !1427
  %67 = load ptr, ptr %6, align 8, !dbg !1429
  %68 = getelementptr inbounds %struct.stacked_item, ptr %67, i32 0, i32 0, !dbg !1430
  call void @list_del(ptr noundef %68), !dbg !1431
  %69 = load ptr, ptr %6, align 8, !dbg !1432
  call void @free(ptr noundef %69) #13, !dbg !1433
  br label %70, !dbg !1434

70:                                               ; preds = %55
  %71 = load ptr, ptr %7, align 8, !dbg !1425
  store ptr %71, ptr %6, align 8, !dbg !1425
  %72 = load ptr, ptr %6, align 8, !dbg !1425
  %73 = call ptr @list_node_from_off_(ptr noundef %72, i64 noundef 0), !dbg !1425
  %74 = getelementptr inbounds %struct.list_node, ptr %73, i32 0, i32 0, !dbg !1425
  %75 = load ptr, ptr %74, align 8, !dbg !1425
  %76 = call ptr @list_node_to_off_(ptr noundef %75, i64 noundef 0), !dbg !1425
  store ptr %76, ptr %7, align 8, !dbg !1425
  br label %48, !dbg !1425, !llvm.loop !1435

77:                                               ; preds = %48
  store i8 0, ptr %5, align 1, !dbg !1437
  br label %78, !dbg !1438

78:                                               ; preds = %77, %32
  %79 = load ptr, ptr %3, align 8, !dbg !1439
  call void @symtab_pop(ptr noundef %79), !dbg !1440
  %80 = load ptr, ptr %3, align 8, !dbg !1441
  %81 = getelementptr inbounds %struct.parser, ptr %80, i32 0, i32 2, !dbg !1443
  %82 = load ptr, ptr %81, align 8, !dbg !1443
  %83 = icmp ne ptr %82, null, !dbg !1441
  br i1 %83, label %84, label %93, !dbg !1444

84:                                               ; preds = %78
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 1062, ptr noundef @__FUNCTION__.parser_shutdown, ptr noundef @.str.46), !dbg !1445
  br label %85, !dbg !1447

85:                                               ; preds = %90, %84
  %86 = load ptr, ptr %3, align 8, !dbg !1448
  %87 = getelementptr inbounds %struct.parser, ptr %86, i32 0, i32 2, !dbg !1449
  %88 = load ptr, ptr %87, align 8, !dbg !1449
  %89 = icmp ne ptr %88, null, !dbg !1447
  br i1 %89, label %90, label %92, !dbg !1447

90:                                               ; preds = %85
  %91 = load ptr, ptr %3, align 8, !dbg !1450
  call void @symtab_pop(ptr noundef %91), !dbg !1451
  br label %85, !dbg !1447, !llvm.loop !1452

92:                                               ; preds = %85
  store i8 0, ptr %5, align 1, !dbg !1454
  br label %93, !dbg !1455

93:                                               ; preds = %92, %78
  %94 = load ptr, ptr %3, align 8, !dbg !1456
  %95 = getelementptr inbounds %struct.parser, ptr %94, i32 0, i32 4, !dbg !1458
  %96 = load i32, ptr %95, align 8, !dbg !1458
  %97 = and i32 %96, 1, !dbg !1459
  %98 = icmp ne i32 %97, 0, !dbg !1459
  br i1 %98, label %99, label %100, !dbg !1460

99:                                               ; preds = %93
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 1071, ptr noundef @__FUNCTION__.parser_shutdown, ptr noundef @.str.47), !dbg !1461
  store i8 0, ptr %5, align 1, !dbg !1463
  br label %100, !dbg !1464

100:                                              ; preds = %99, %93
  %101 = load ptr, ptr %3, align 8, !dbg !1465
  %102 = getelementptr inbounds %struct.parser, ptr %101, i32 0, i32 4, !dbg !1467
  %103 = load i32, ptr %102, align 8, !dbg !1467
  %104 = and i32 %103, 2, !dbg !1468
  %105 = icmp ne i32 %104, 0, !dbg !1468
  br i1 %105, label %106, label %107, !dbg !1469

106:                                              ; preds = %100
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 1075, ptr noundef @__FUNCTION__.parser_shutdown, ptr noundef @.str.48), !dbg !1470
  store i8 0, ptr %5, align 1, !dbg !1472
  br label %107, !dbg !1473

107:                                              ; preds = %106, %100
  %108 = load i8, ptr %5, align 1, !dbg !1474
  %109 = trunc i8 %108 to i1, !dbg !1474
  br i1 %109, label %110, label %114, !dbg !1476

110:                                              ; preds = %107
  %111 = load ptr, ptr %3, align 8, !dbg !1477
  %112 = call zeroext i1 @post_process_template(ptr noundef %111), !dbg !1478
  %113 = zext i1 %112 to i8, !dbg !1479
  store i8 %113, ptr %5, align 1, !dbg !1479
  br label %114, !dbg !1480

114:                                              ; preds = %110, %107
  %115 = load i8, ptr %5, align 1, !dbg !1481
  %116 = trunc i8 %115 to i1, !dbg !1481
  br i1 %116, label %119, label %117, !dbg !1483

117:                                              ; preds = %114
  %118 = load ptr, ptr %3, align 8, !dbg !1484
  call void @emit_chunk(ptr noundef %118, i32 noundef 10, i32 noundef 0, ptr noundef null), !dbg !1486
  br label %119, !dbg !1487

119:                                              ; preds = %117, %114
  %120 = load i8, ptr %5, align 1, !dbg !1488
  %121 = trunc i8 %120 to i1, !dbg !1488
  ret i1 %121, !dbg !1489
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_meta(ptr noundef %0, ptr noundef %1) #0 !dbg !1490 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1491, metadata !DIExpression()), !dbg !1492
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1493, metadata !DIExpression()), !dbg !1494
  %6 = load ptr, ptr %5, align 8, !dbg !1495
  %7 = getelementptr inbounds %struct.item, ptr %6, i32 0, i32 0, !dbg !1497
  %8 = load i32, ptr %7, align 8, !dbg !1497
  %9 = icmp eq i32 %8, 11, !dbg !1498
  br i1 %9, label %10, label %15, !dbg !1499

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !1500
  %12 = getelementptr inbounds %struct.parser, ptr %11, i32 0, i32 4, !dbg !1502
  %13 = load i32, ptr %12, align 8, !dbg !1503
  %14 = or i32 %13, 2, !dbg !1503
  store i32 %14, ptr %12, align 8, !dbg !1503
  store ptr @parser_meta, ptr %3, align 8, !dbg !1504
  br label %51, !dbg !1504

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !dbg !1505
  %17 = getelementptr inbounds %struct.item, ptr %16, i32 0, i32 0, !dbg !1507
  %18 = load i32, ptr %17, align 8, !dbg !1507
  %19 = icmp eq i32 %18, 2, !dbg !1508
  br i1 %19, label %20, label %24, !dbg !1509

20:                                               ; preds = %15
  %21 = load ptr, ptr %4, align 8, !dbg !1510
  %22 = load ptr, ptr %5, align 8, !dbg !1511
  %23 = call ptr @parser_identifier(ptr noundef %21, ptr noundef %22), !dbg !1512
  store ptr %23, ptr %3, align 8, !dbg !1513
  br label %51, !dbg !1513

24:                                               ; preds = %15
  %25 = load ptr, ptr %5, align 8, !dbg !1514
  %26 = getelementptr inbounds %struct.item, ptr %25, i32 0, i32 0, !dbg !1516
  %27 = load i32, ptr %26, align 8, !dbg !1516
  %28 = icmp eq i32 %27, 10, !dbg !1517
  br i1 %28, label %29, label %30, !dbg !1518

29:                                               ; preds = %24
  store ptr @parser_partial, ptr %3, align 8, !dbg !1519
  br label %51, !dbg !1519

30:                                               ; preds = %24
  %31 = load ptr, ptr %5, align 8, !dbg !1520
  %32 = getelementptr inbounds %struct.item, ptr %31, i32 0, i32 0, !dbg !1522
  %33 = load i32, ptr %32, align 8, !dbg !1522
  %34 = icmp eq i32 %33, 4, !dbg !1523
  br i1 %34, label %35, label %36, !dbg !1524

35:                                               ; preds = %30
  store ptr @parser_iter, ptr %3, align 8, !dbg !1525
  br label %51, !dbg !1525

36:                                               ; preds = %30
  %37 = load ptr, ptr %5, align 8, !dbg !1526
  %38 = getelementptr inbounds %struct.item, ptr %37, i32 0, i32 0, !dbg !1528
  %39 = load i32, ptr %38, align 8, !dbg !1528
  %40 = icmp eq i32 %39, 9, !dbg !1529
  br i1 %40, label %41, label %42, !dbg !1530

41:                                               ; preds = %36
  store ptr @parser_negate_iter, ptr %3, align 8, !dbg !1531
  br label %51, !dbg !1531

42:                                               ; preds = %36
  %43 = load ptr, ptr %5, align 8, !dbg !1532
  %44 = getelementptr inbounds %struct.item, ptr %43, i32 0, i32 0, !dbg !1534
  %45 = load i32, ptr %44, align 8, !dbg !1534
  %46 = icmp eq i32 %45, 7, !dbg !1535
  br i1 %46, label %47, label %48, !dbg !1536

47:                                               ; preds = %42
  store ptr @parser_slash, ptr %3, align 8, !dbg !1537
  br label %51, !dbg !1537

48:                                               ; preds = %42
  %49 = load ptr, ptr %5, align 8, !dbg !1538
  %50 = call ptr @unexpected_lexeme(ptr noundef %49), !dbg !1539
  store ptr %50, ptr %3, align 8, !dbg !1540
  br label %51, !dbg !1540

51:                                               ; preds = %48, %47, %41, %35, %29, %20, %10
  %52 = load ptr, ptr %3, align 8, !dbg !1541
  ret ptr %52, !dbg !1541
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_chunk(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1542 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1545, metadata !DIExpression()), !dbg !1546
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1547, metadata !DIExpression()), !dbg !1548
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1549, metadata !DIExpression()), !dbg !1550
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1551, metadata !DIExpression()), !dbg !1552
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1553, metadata !DIExpression()), !dbg !1554
  %10 = load ptr, ptr %5, align 8, !dbg !1555
  %11 = getelementptr inbounds %struct.parser, ptr %10, i32 0, i32 6, !dbg !1557
  %12 = getelementptr inbounds %struct.anon.2, ptr %11, i32 0, i32 1, !dbg !1558
  %13 = load i64, ptr %12, align 8, !dbg !1558
  %14 = load ptr, ptr %5, align 8, !dbg !1559
  %15 = getelementptr inbounds %struct.parser, ptr %14, i32 0, i32 6, !dbg !1560
  %16 = getelementptr inbounds %struct.anon.2, ptr %15, i32 0, i32 2, !dbg !1561
  %17 = load i64, ptr %16, align 8, !dbg !1561
  %18 = icmp uge i64 %13, %17, !dbg !1562
  br i1 %18, label %19, label %46, !dbg !1563

19:                                               ; preds = %4
  %20 = load ptr, ptr %5, align 8, !dbg !1564
  %21 = getelementptr inbounds %struct.parser, ptr %20, i32 0, i32 6, !dbg !1566
  %22 = getelementptr inbounds %struct.anon.2, ptr %21, i32 0, i32 2, !dbg !1567
  %23 = load i64, ptr %22, align 8, !dbg !1568
  %24 = add i64 %23, 16, !dbg !1568
  store i64 %24, ptr %22, align 8, !dbg !1568
  %25 = load ptr, ptr %5, align 8, !dbg !1569
  %26 = getelementptr inbounds %struct.parser, ptr %25, i32 0, i32 6, !dbg !1570
  %27 = getelementptr inbounds %struct.anon.2, ptr %26, i32 0, i32 0, !dbg !1571
  %28 = load ptr, ptr %27, align 8, !dbg !1571
  %29 = load ptr, ptr %5, align 8, !dbg !1572
  %30 = getelementptr inbounds %struct.parser, ptr %29, i32 0, i32 6, !dbg !1573
  %31 = getelementptr inbounds %struct.anon.2, ptr %30, i32 0, i32 2, !dbg !1574
  %32 = load i64, ptr %31, align 8, !dbg !1574
  %33 = call ptr @reallocarray(ptr noundef %28, i64 noundef %32, i64 noundef 24) #13, !dbg !1575
  store ptr %33, ptr %9, align 8, !dbg !1576
  %34 = load ptr, ptr %9, align 8, !dbg !1577
  %35 = icmp ne ptr %34, null, !dbg !1577
  br i1 %35, label %37, label %36, !dbg !1579

36:                                               ; preds = %19
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.7, i32 noundef 521, ptr noundef @__FUNCTION__.emit_chunk, ptr noundef @.str.36) #15, !dbg !1580
  unreachable, !dbg !1580

37:                                               ; preds = %19
  %38 = load ptr, ptr %9, align 8, !dbg !1581
  %39 = load ptr, ptr %5, align 8, !dbg !1582
  %40 = getelementptr inbounds %struct.parser, ptr %39, i32 0, i32 6, !dbg !1583
  %41 = getelementptr inbounds %struct.anon.2, ptr %40, i32 0, i32 0, !dbg !1584
  store ptr %38, ptr %41, align 8, !dbg !1585
  %42 = load ptr, ptr %5, align 8, !dbg !1586
  %43 = getelementptr inbounds %struct.parser, ptr %42, i32 0, i32 0, !dbg !1587
  %44 = load ptr, ptr %43, align 8, !dbg !1587
  %45 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %44, i32 0, i32 0, !dbg !1588
  store ptr %38, ptr %45, align 8, !dbg !1589
  br label %46, !dbg !1590

46:                                               ; preds = %37, %4
  %47 = load ptr, ptr %5, align 8, !dbg !1591
  %48 = getelementptr inbounds %struct.parser, ptr %47, i32 0, i32 6, !dbg !1592
  %49 = getelementptr inbounds %struct.anon.2, ptr %48, i32 0, i32 0, !dbg !1593
  %50 = load ptr, ptr %49, align 8, !dbg !1593
  %51 = load ptr, ptr %5, align 8, !dbg !1594
  %52 = getelementptr inbounds %struct.parser, ptr %51, i32 0, i32 6, !dbg !1595
  %53 = getelementptr inbounds %struct.anon.2, ptr %52, i32 0, i32 1, !dbg !1596
  %54 = load i64, ptr %53, align 8, !dbg !1597
  %55 = add i64 %54, 1, !dbg !1597
  store i64 %55, ptr %53, align 8, !dbg !1597
  %56 = getelementptr inbounds %struct.chunk, ptr %50, i64 %54, !dbg !1591
  store ptr %56, ptr %9, align 8, !dbg !1598
  %57 = load i32, ptr %6, align 4, !dbg !1599
  %58 = load ptr, ptr %9, align 8, !dbg !1600
  %59 = getelementptr inbounds %struct.chunk, ptr %58, i32 0, i32 0, !dbg !1601
  store i32 %57, ptr %59, align 8, !dbg !1602
  %60 = load i32, ptr %7, align 4, !dbg !1603
  %61 = load ptr, ptr %9, align 8, !dbg !1604
  %62 = getelementptr inbounds %struct.chunk, ptr %61, i32 0, i32 2, !dbg !1605
  store i32 %60, ptr %62, align 8, !dbg !1606
  %63 = load ptr, ptr %8, align 8, !dbg !1607
  %64 = load ptr, ptr %9, align 8, !dbg !1608
  %65 = getelementptr inbounds %struct.chunk, ptr %64, i32 0, i32 1, !dbg !1609
  store ptr %63, ptr %65, align 8, !dbg !1610
  ret void, !dbg !1611
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @error_item(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !1612 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1615, metadata !DIExpression()), !dbg !1616
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1617, metadata !DIExpression()), !dbg !1618
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1619, metadata !DIExpression()), !dbg !1620
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1621, metadata !DIExpression()), !dbg !1636
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1637
  call void @llvm.va_start(ptr %7), !dbg !1637
  %8 = load ptr, ptr %3, align 8, !dbg !1638
  %9 = load ptr, ptr %4, align 8, !dbg !1639
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1640
  %11 = call ptr @error_vitem(ptr noundef %8, ptr noundef %9, ptr noundef %10), !dbg !1641
  store ptr %11, ptr %5, align 8, !dbg !1642
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !1643
  call void @llvm.va_end(ptr %12), !dbg !1643
  %13 = load ptr, ptr %5, align 8, !dbg !1644
  ret ptr %13, !dbg !1645
}

declare zeroext i1 @strbuf_set(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @unexpected_lexeme(ptr noundef %0) #0 !dbg !1646 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1649, metadata !DIExpression()), !dbg !1650
  %3 = load ptr, ptr %2, align 8, !dbg !1651
  %4 = load ptr, ptr %2, align 8, !dbg !1652
  %5 = getelementptr inbounds %struct.item, ptr %4, i32 0, i32 0, !dbg !1653
  %6 = load i32, ptr %5, align 8, !dbg !1653
  %7 = zext i32 %6 to i64, !dbg !1654
  %8 = getelementptr inbounds [13 x ptr], ptr @item_type_str, i64 0, i64 %7, !dbg !1654
  %9 = load ptr, ptr %8, align 8, !dbg !1654
  %10 = load ptr, ptr %2, align 8, !dbg !1655
  %11 = getelementptr inbounds %struct.item, ptr %10, i32 0, i32 1, !dbg !1656
  %12 = getelementptr inbounds %struct.anon.1, ptr %11, i32 0, i32 1, !dbg !1657
  %13 = load i64, ptr %12, align 8, !dbg !1657
  %14 = trunc i64 %13 to i32, !dbg !1658
  %15 = load ptr, ptr %2, align 8, !dbg !1659
  %16 = getelementptr inbounds %struct.item, ptr %15, i32 0, i32 1, !dbg !1660
  %17 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 0, !dbg !1661
  %18 = load ptr, ptr %17, align 8, !dbg !1661
  %19 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %3, ptr noundef @.str.37, ptr noundef %9, i32 noundef %14, ptr noundef %18), !dbg !1662
  ret ptr %19, !dbg !1663
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_identifier(ptr noundef %0, ptr noundef %1) #0 !dbg !1664 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1665, metadata !DIExpression()), !dbg !1666
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1667, metadata !DIExpression()), !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1669, metadata !DIExpression()), !dbg !1670
  store ptr null, ptr %6, align 8, !dbg !1670
  %17 = load ptr, ptr %4, align 8, !dbg !1671
  %18 = getelementptr inbounds %struct.parser, ptr %17, i32 0, i32 3, !dbg !1673
  %19 = call zeroext i1 @lex_next(ptr noundef %18, ptr noundef %6), !dbg !1674
  br i1 %19, label %27, label %20, !dbg !1675

20:                                               ; preds = %2
  %21 = load ptr, ptr %6, align 8, !dbg !1676
  %22 = icmp ne ptr %21, null, !dbg !1676
  br i1 %22, label %23, label %26, !dbg !1679

23:                                               ; preds = %20
  %24 = load ptr, ptr %5, align 8, !dbg !1680
  %25 = load ptr, ptr %6, align 8, !dbg !1681
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %24, ptr align 8 %25, i64 24, i1 false), !dbg !1682
  br label %26, !dbg !1683

26:                                               ; preds = %23, %20
  store ptr null, ptr %3, align 8, !dbg !1684
  br label %171, !dbg !1684

27:                                               ; preds = %2
  %28 = load ptr, ptr %4, align 8, !dbg !1685
  %29 = getelementptr inbounds %struct.parser, ptr %28, i32 0, i32 4, !dbg !1687
  %30 = load i32, ptr %29, align 8, !dbg !1687
  %31 = and i32 %30, 2, !dbg !1688
  %32 = icmp ne i32 %31, 0, !dbg !1688
  br i1 %32, label %33, label %50, !dbg !1689

33:                                               ; preds = %27
  %34 = load ptr, ptr %6, align 8, !dbg !1690
  %35 = getelementptr inbounds %struct.item, ptr %34, i32 0, i32 0, !dbg !1693
  %36 = load i32, ptr %35, align 8, !dbg !1693
  %37 = icmp ne i32 %36, 12, !dbg !1694
  br i1 %37, label %38, label %41, !dbg !1695

38:                                               ; preds = %33
  %39 = load ptr, ptr %5, align 8, !dbg !1696
  %40 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %39, ptr noundef @.str.10), !dbg !1697
  store ptr %40, ptr %3, align 8, !dbg !1698
  br label %171, !dbg !1698

41:                                               ; preds = %33
  %42 = load ptr, ptr %4, align 8, !dbg !1699
  %43 = getelementptr inbounds %struct.parser, ptr %42, i32 0, i32 3, !dbg !1701
  %44 = call zeroext i1 @lex_next(ptr noundef %43, ptr noundef %6), !dbg !1702
  br i1 %44, label %49, label %45, !dbg !1703

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8, !dbg !1704
  %47 = load ptr, ptr %6, align 8, !dbg !1705
  %48 = call ptr @unexpected_lexeme_or_lex_error(ptr noundef %46, ptr noundef %47), !dbg !1706
  store ptr %48, ptr %3, align 8, !dbg !1707
  br label %171, !dbg !1707

49:                                               ; preds = %41
  br label %50, !dbg !1708

50:                                               ; preds = %49, %27
  %51 = load ptr, ptr %6, align 8, !dbg !1709
  %52 = getelementptr inbounds %struct.item, ptr %51, i32 0, i32 0, !dbg !1711
  %53 = load i32, ptr %52, align 8, !dbg !1711
  %54 = icmp eq i32 %53, 5, !dbg !1712
  br i1 %54, label %55, label %113, !dbg !1713

55:                                               ; preds = %50
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1714, metadata !DIExpression()), !dbg !1716
  %56 = load ptr, ptr %4, align 8, !dbg !1717
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1718, metadata !DIExpression()), !dbg !1720
  %57 = load ptr, ptr %5, align 8, !dbg !1720
  %58 = getelementptr inbounds %struct.item, ptr %57, i32 0, i32 1, !dbg !1720
  %59 = getelementptr inbounds %struct.anon.1, ptr %58, i32 0, i32 0, !dbg !1720
  %60 = load ptr, ptr %59, align 8, !dbg !1720
  store ptr %60, ptr %8, align 8, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1721, metadata !DIExpression()), !dbg !1720
  %61 = load ptr, ptr %8, align 8, !dbg !1720
  %62 = load ptr, ptr %5, align 8, !dbg !1720
  %63 = getelementptr inbounds %struct.item, ptr %62, i32 0, i32 1, !dbg !1720
  %64 = getelementptr inbounds %struct.anon.1, ptr %63, i32 0, i32 1, !dbg !1720
  %65 = load i64, ptr %64, align 8, !dbg !1720
  %66 = call i64 @strnlen(ptr noundef %61, i64 noundef %65) #16, !dbg !1720
  store i64 %66, ptr %9, align 8, !dbg !1720
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1722, metadata !DIExpression()), !dbg !1720
  %67 = load i64, ptr %9, align 8, !dbg !1720
  %68 = add i64 %67, 1, !dbg !1720
  %69 = alloca i8, i64 %68, align 16, !dbg !1720
  store ptr %69, ptr %10, align 8, !dbg !1720
  %70 = load ptr, ptr %10, align 8, !dbg !1720
  %71 = load i64, ptr %9, align 8, !dbg !1720
  %72 = getelementptr inbounds i8, ptr %70, i64 %71, !dbg !1720
  store i8 0, ptr %72, align 1, !dbg !1720
  %73 = load ptr, ptr %10, align 8, !dbg !1720
  %74 = load ptr, ptr %8, align 8, !dbg !1720
  %75 = load i64, ptr %9, align 8, !dbg !1720
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %73, ptr align 1 %74, i64 %75, i1 false), !dbg !1720
  store ptr %73, ptr %11, align 8, !dbg !1720
  %76 = load ptr, ptr %11, align 8, !dbg !1720
  %77 = call ptr @symtab_lookup(ptr noundef %56, ptr noundef %76), !dbg !1723
  store ptr %77, ptr %7, align 8, !dbg !1716
  %78 = load ptr, ptr %7, align 8, !dbg !1724
  %79 = icmp ne ptr %78, null, !dbg !1724
  br i1 %79, label %92, label %80, !dbg !1726

80:                                               ; preds = %55
  %81 = load ptr, ptr %5, align 8, !dbg !1727
  %82 = load ptr, ptr %5, align 8, !dbg !1729
  %83 = getelementptr inbounds %struct.item, ptr %82, i32 0, i32 1, !dbg !1730
  %84 = getelementptr inbounds %struct.anon.1, ptr %83, i32 0, i32 1, !dbg !1731
  %85 = load i64, ptr %84, align 8, !dbg !1731
  %86 = trunc i64 %85 to i32, !dbg !1732
  %87 = load ptr, ptr %5, align 8, !dbg !1733
  %88 = getelementptr inbounds %struct.item, ptr %87, i32 0, i32 1, !dbg !1734
  %89 = getelementptr inbounds %struct.anon.1, ptr %88, i32 0, i32 0, !dbg !1735
  %90 = load ptr, ptr %89, align 8, !dbg !1735
  %91 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %81, ptr noundef @.str.11, i32 noundef %86, ptr noundef %90), !dbg !1736
  store ptr %91, ptr %3, align 8, !dbg !1737
  br label %171, !dbg !1737

92:                                               ; preds = %55
  %93 = load ptr, ptr %4, align 8, !dbg !1738
  %94 = load ptr, ptr %4, align 8, !dbg !1739
  %95 = getelementptr inbounds %struct.parser, ptr %94, i32 0, i32 4, !dbg !1740
  %96 = load i32, ptr %95, align 8, !dbg !1740
  %97 = load ptr, ptr %7, align 8, !dbg !1741
  call void @emit_chunk(ptr noundef %93, i32 noundef 2, i32 noundef %96, ptr noundef %97), !dbg !1742
  %98 = load ptr, ptr %4, align 8, !dbg !1743
  %99 = getelementptr inbounds %struct.parser, ptr %98, i32 0, i32 4, !dbg !1744
  %100 = load i32, ptr %99, align 8, !dbg !1745
  %101 = and i32 %100, -3, !dbg !1745
  store i32 %101, ptr %99, align 8, !dbg !1745
  %102 = load ptr, ptr %5, align 8, !dbg !1746
  %103 = getelementptr inbounds %struct.item, ptr %102, i32 0, i32 1, !dbg !1747
  %104 = getelementptr inbounds %struct.anon.1, ptr %103, i32 0, i32 1, !dbg !1748
  %105 = load i64, ptr %104, align 8, !dbg !1748
  %106 = add i64 %105, 1, !dbg !1749
  %107 = load ptr, ptr %4, align 8, !dbg !1750
  %108 = getelementptr inbounds %struct.parser, ptr %107, i32 0, i32 0, !dbg !1751
  %109 = load ptr, ptr %108, align 8, !dbg !1751
  %110 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %109, i32 0, i32 1, !dbg !1752
  %111 = load i64, ptr %110, align 8, !dbg !1753
  %112 = add i64 %111, %106, !dbg !1753
  store i64 %112, ptr %110, align 8, !dbg !1753
  store ptr @parser_text, ptr %3, align 8, !dbg !1754
  br label %171, !dbg !1754

113:                                              ; preds = %50
  %114 = load ptr, ptr %6, align 8, !dbg !1755
  %115 = getelementptr inbounds %struct.item, ptr %114, i32 0, i32 0, !dbg !1757
  %116 = load i32, ptr %115, align 8, !dbg !1757
  %117 = icmp eq i32 %116, 8, !dbg !1758
  br i1 %117, label %118, label %167, !dbg !1759

118:                                              ; preds = %113
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1760, metadata !DIExpression()), !dbg !1762
  %119 = load ptr, ptr %4, align 8, !dbg !1763
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1764, metadata !DIExpression()), !dbg !1766
  %120 = load ptr, ptr %5, align 8, !dbg !1766
  %121 = getelementptr inbounds %struct.item, ptr %120, i32 0, i32 1, !dbg !1766
  %122 = getelementptr inbounds %struct.anon.1, ptr %121, i32 0, i32 0, !dbg !1766
  %123 = load ptr, ptr %122, align 8, !dbg !1766
  store ptr %123, ptr %13, align 8, !dbg !1766
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1767, metadata !DIExpression()), !dbg !1766
  %124 = load ptr, ptr %13, align 8, !dbg !1766
  %125 = load ptr, ptr %5, align 8, !dbg !1766
  %126 = getelementptr inbounds %struct.item, ptr %125, i32 0, i32 1, !dbg !1766
  %127 = getelementptr inbounds %struct.anon.1, ptr %126, i32 0, i32 1, !dbg !1766
  %128 = load i64, ptr %127, align 8, !dbg !1766
  %129 = call i64 @strnlen(ptr noundef %124, i64 noundef %128) #16, !dbg !1766
  store i64 %129, ptr %14, align 8, !dbg !1766
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1768, metadata !DIExpression()), !dbg !1766
  %130 = load i64, ptr %14, align 8, !dbg !1766
  %131 = add i64 %130, 1, !dbg !1766
  %132 = alloca i8, i64 %131, align 16, !dbg !1766
  store ptr %132, ptr %15, align 8, !dbg !1766
  %133 = load ptr, ptr %15, align 8, !dbg !1766
  %134 = load i64, ptr %14, align 8, !dbg !1766
  %135 = getelementptr inbounds i8, ptr %133, i64 %134, !dbg !1766
  store i8 0, ptr %135, align 1, !dbg !1766
  %136 = load ptr, ptr %15, align 8, !dbg !1766
  %137 = load ptr, ptr %13, align 8, !dbg !1766
  %138 = load i64, ptr %14, align 8, !dbg !1766
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %136, ptr align 1 %137, i64 %138, i1 false), !dbg !1766
  store ptr %136, ptr %16, align 8, !dbg !1766
  %139 = load ptr, ptr %16, align 8, !dbg !1766
  %140 = call ptr @symtab_lookup(ptr noundef %119, ptr noundef %139), !dbg !1769
  store ptr %140, ptr %12, align 8, !dbg !1762
  %141 = load ptr, ptr %12, align 8, !dbg !1770
  %142 = icmp ne ptr %141, null, !dbg !1770
  br i1 %142, label %155, label %143, !dbg !1772

143:                                              ; preds = %118
  %144 = load ptr, ptr %5, align 8, !dbg !1773
  %145 = load ptr, ptr %5, align 8, !dbg !1775
  %146 = getelementptr inbounds %struct.item, ptr %145, i32 0, i32 1, !dbg !1776
  %147 = getelementptr inbounds %struct.anon.1, ptr %146, i32 0, i32 1, !dbg !1777
  %148 = load i64, ptr %147, align 8, !dbg !1777
  %149 = trunc i64 %148 to i32, !dbg !1778
  %150 = load ptr, ptr %5, align 8, !dbg !1779
  %151 = getelementptr inbounds %struct.item, ptr %150, i32 0, i32 1, !dbg !1780
  %152 = getelementptr inbounds %struct.anon.1, ptr %151, i32 0, i32 0, !dbg !1781
  %153 = load ptr, ptr %152, align 8, !dbg !1781
  %154 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %144, ptr noundef @.str.11, i32 noundef %149, ptr noundef %153), !dbg !1782
  store ptr %154, ptr %3, align 8, !dbg !1783
  br label %171, !dbg !1783

155:                                              ; preds = %118
  %156 = load ptr, ptr %4, align 8, !dbg !1784
  %157 = call zeroext i1 @parser_next_is(ptr noundef %156, i32 noundef 5), !dbg !1786
  br i1 %157, label %162, label %158, !dbg !1787

158:                                              ; preds = %155
  %159 = load ptr, ptr %5, align 8, !dbg !1788
  %160 = load ptr, ptr %6, align 8, !dbg !1789
  %161 = call ptr @unexpected_lexeme_or_lex_error(ptr noundef %159, ptr noundef %160), !dbg !1790
  store ptr %161, ptr %3, align 8, !dbg !1791
  br label %171, !dbg !1791

162:                                              ; preds = %155
  %163 = load ptr, ptr %4, align 8, !dbg !1792
  %164 = load ptr, ptr %12, align 8, !dbg !1793
  call void @emit_chunk(ptr noundef %163, i32 noundef 7, i32 noundef 4, ptr noundef %164), !dbg !1794
  %165 = load ptr, ptr %4, align 8, !dbg !1795
  %166 = load ptr, ptr %5, align 8, !dbg !1796
  call void @parser_push_item(ptr noundef %165, ptr noundef %166), !dbg !1797
  store ptr @parser_text, ptr %3, align 8, !dbg !1798
  br label %171, !dbg !1798

167:                                              ; preds = %113
  %168 = load ptr, ptr %5, align 8, !dbg !1799
  %169 = load ptr, ptr %6, align 8, !dbg !1800
  %170 = call ptr @unexpected_lexeme_or_lex_error(ptr noundef %168, ptr noundef %169), !dbg !1801
  store ptr %170, ptr %3, align 8, !dbg !1802
  br label %171, !dbg !1802

171:                                              ; preds = %167, %162, %158, %143, %92, %80, %45, %38, %26
  %172 = load ptr, ptr %3, align 8, !dbg !1803
  ret ptr %172, !dbg !1803
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_partial(ptr noundef %0, ptr noundef %1) #0 !dbg !1804 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1805, metadata !DIExpression()), !dbg !1806
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1807, metadata !DIExpression()), !dbg !1808
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1809, metadata !DIExpression()), !dbg !1810
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1811, metadata !DIExpression()), !dbg !1812
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1813, metadata !DIExpression()), !dbg !1815
  %12 = load ptr, ptr %5, align 8, !dbg !1815
  %13 = getelementptr inbounds %struct.item, ptr %12, i32 0, i32 1, !dbg !1815
  %14 = getelementptr inbounds %struct.anon.1, ptr %13, i32 0, i32 0, !dbg !1815
  %15 = load ptr, ptr %14, align 8, !dbg !1815
  store ptr %15, ptr %8, align 8, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1816, metadata !DIExpression()), !dbg !1815
  %16 = load ptr, ptr %8, align 8, !dbg !1815
  %17 = load ptr, ptr %5, align 8, !dbg !1815
  %18 = getelementptr inbounds %struct.item, ptr %17, i32 0, i32 1, !dbg !1815
  %19 = getelementptr inbounds %struct.anon.1, ptr %18, i32 0, i32 1, !dbg !1815
  %20 = load i64, ptr %19, align 8, !dbg !1815
  %21 = call i64 @strnlen(ptr noundef %16, i64 noundef %20) #16, !dbg !1815
  store i64 %21, ptr %9, align 8, !dbg !1815
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1817, metadata !DIExpression()), !dbg !1815
  %22 = load i64, ptr %9, align 8, !dbg !1815
  %23 = add i64 %22, 1, !dbg !1815
  %24 = alloca i8, i64 %23, align 16, !dbg !1815
  store ptr %24, ptr %10, align 8, !dbg !1815
  %25 = load ptr, ptr %10, align 8, !dbg !1815
  %26 = load i64, ptr %9, align 8, !dbg !1815
  %27 = getelementptr inbounds i8, ptr %25, i64 %26, !dbg !1815
  store i8 0, ptr %27, align 1, !dbg !1815
  %28 = load ptr, ptr %10, align 8, !dbg !1815
  %29 = load ptr, ptr %8, align 8, !dbg !1815
  %30 = load i64, ptr %9, align 8, !dbg !1815
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %28, ptr align 1 %29, i64 %30, i1 false), !dbg !1815
  store ptr %28, ptr %11, align 8, !dbg !1815
  %31 = load ptr, ptr %11, align 8, !dbg !1815
  store ptr %31, ptr %7, align 8, !dbg !1812
  %32 = load ptr, ptr %5, align 8, !dbg !1818
  %33 = getelementptr inbounds %struct.item, ptr %32, i32 0, i32 0, !dbg !1820
  %34 = load i32, ptr %33, align 8, !dbg !1820
  %35 = icmp ne i32 %34, 2, !dbg !1821
  br i1 %35, label %36, label %39, !dbg !1822

36:                                               ; preds = %2
  %37 = load ptr, ptr %5, align 8, !dbg !1823
  %38 = call ptr @unexpected_lexeme(ptr noundef %37), !dbg !1824
  store ptr %38, ptr %3, align 8, !dbg !1825
  br label %60, !dbg !1825

39:                                               ; preds = %2
  %40 = load ptr, ptr %4, align 8, !dbg !1826
  %41 = call zeroext i1 @parser_next_is(ptr noundef %40, i32 noundef 5), !dbg !1828
  br i1 %41, label %45, label %42, !dbg !1829

42:                                               ; preds = %39
  %43 = load ptr, ptr %5, align 8, !dbg !1830
  %44 = call ptr @unexpected_lexeme(ptr noundef %43), !dbg !1831
  store ptr %44, ptr %3, align 8, !dbg !1832
  br label %60, !dbg !1832

45:                                               ; preds = %39
  %46 = load ptr, ptr %7, align 8, !dbg !1833
  %47 = load ptr, ptr %4, align 8, !dbg !1834
  %48 = getelementptr inbounds %struct.parser, ptr %47, i32 0, i32 1, !dbg !1835
  %49 = load ptr, ptr %48, align 8, !dbg !1835
  %50 = call ptr @lwan_tpl_compile_file(ptr noundef %46, ptr noundef %49), !dbg !1836
  store ptr %50, ptr %6, align 8, !dbg !1837
  %51 = load ptr, ptr %6, align 8, !dbg !1838
  %52 = icmp ne ptr %51, null, !dbg !1838
  br i1 %52, label %53, label %56, !dbg !1840

53:                                               ; preds = %45
  %54 = load ptr, ptr %4, align 8, !dbg !1841
  %55 = load ptr, ptr %6, align 8, !dbg !1843
  call void @emit_chunk(ptr noundef %54, i32 noundef 9, i32 noundef 0, ptr noundef %55), !dbg !1844
  store ptr @parser_text, ptr %3, align 8, !dbg !1845
  br label %60, !dbg !1845

56:                                               ; preds = %45
  %57 = load ptr, ptr %5, align 8, !dbg !1846
  %58 = load ptr, ptr %7, align 8, !dbg !1847
  %59 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %57, ptr noundef @.str.13, ptr noundef %58), !dbg !1848
  store ptr %59, ptr %3, align 8, !dbg !1849
  br label %60, !dbg !1849

60:                                               ; preds = %56, %53, %42, %36
  %61 = load ptr, ptr %3, align 8, !dbg !1850
  ret ptr %61, !dbg !1850
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_iter(ptr noundef %0, ptr noundef %1) #0 !dbg !1851 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1852, metadata !DIExpression()), !dbg !1853
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1854, metadata !DIExpression()), !dbg !1855
  %14 = load ptr, ptr %5, align 8, !dbg !1856
  %15 = getelementptr inbounds %struct.item, ptr %14, i32 0, i32 0, !dbg !1858
  %16 = load i32, ptr %15, align 8, !dbg !1858
  %17 = icmp eq i32 %16, 2, !dbg !1859
  br i1 %17, label %18, label %95, !dbg !1860

18:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1861, metadata !DIExpression()), !dbg !1863
  %19 = load ptr, ptr %4, align 8, !dbg !1864
  %20 = getelementptr inbounds %struct.parser, ptr %19, i32 0, i32 4, !dbg !1865
  %21 = load i32, ptr %20, align 8, !dbg !1865
  %22 = and i32 %21, 1, !dbg !1866
  store i32 %22, ptr %6, align 4, !dbg !1863
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1867, metadata !DIExpression()), !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1869, metadata !DIExpression()), !dbg !1871
  %23 = load ptr, ptr %5, align 8, !dbg !1871
  %24 = getelementptr inbounds %struct.item, ptr %23, i32 0, i32 1, !dbg !1871
  %25 = getelementptr inbounds %struct.anon.1, ptr %24, i32 0, i32 0, !dbg !1871
  %26 = load ptr, ptr %25, align 8, !dbg !1871
  store ptr %26, ptr %8, align 8, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1872, metadata !DIExpression()), !dbg !1871
  %27 = load ptr, ptr %8, align 8, !dbg !1871
  %28 = load ptr, ptr %5, align 8, !dbg !1871
  %29 = getelementptr inbounds %struct.item, ptr %28, i32 0, i32 1, !dbg !1871
  %30 = getelementptr inbounds %struct.anon.1, ptr %29, i32 0, i32 1, !dbg !1871
  %31 = load i64, ptr %30, align 8, !dbg !1871
  %32 = call i64 @strnlen(ptr noundef %27, i64 noundef %31) #16, !dbg !1871
  store i64 %32, ptr %9, align 8, !dbg !1871
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1873, metadata !DIExpression()), !dbg !1871
  %33 = load i64, ptr %9, align 8, !dbg !1871
  %34 = add i64 %33, 1, !dbg !1871
  %35 = alloca i8, i64 %34, align 16, !dbg !1871
  store ptr %35, ptr %10, align 8, !dbg !1871
  %36 = load ptr, ptr %10, align 8, !dbg !1871
  %37 = load i64, ptr %9, align 8, !dbg !1871
  %38 = getelementptr inbounds i8, ptr %36, i64 %37, !dbg !1871
  store i8 0, ptr %38, align 1, !dbg !1871
  %39 = load ptr, ptr %10, align 8, !dbg !1871
  %40 = load ptr, ptr %8, align 8, !dbg !1871
  %41 = load i64, ptr %9, align 8, !dbg !1871
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %39, ptr align 1 %40, i64 %41, i1 false), !dbg !1871
  store ptr %39, ptr %11, align 8, !dbg !1871
  %42 = load ptr, ptr %11, align 8, !dbg !1871
  store ptr %42, ptr %7, align 8, !dbg !1868
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1874, metadata !DIExpression()), !dbg !1875
  %43 = load ptr, ptr %4, align 8, !dbg !1876
  %44 = load ptr, ptr %7, align 8, !dbg !1877
  %45 = call ptr @symtab_lookup(ptr noundef %43, ptr noundef %44), !dbg !1878
  store ptr %45, ptr %12, align 8, !dbg !1875
  %46 = load ptr, ptr %12, align 8, !dbg !1879
  %47 = icmp ne ptr %46, null, !dbg !1879
  br i1 %47, label %60, label %48, !dbg !1881

48:                                               ; preds = %18
  %49 = load ptr, ptr %5, align 8, !dbg !1882
  %50 = load ptr, ptr %5, align 8, !dbg !1884
  %51 = getelementptr inbounds %struct.item, ptr %50, i32 0, i32 1, !dbg !1885
  %52 = getelementptr inbounds %struct.anon.1, ptr %51, i32 0, i32 1, !dbg !1886
  %53 = load i64, ptr %52, align 8, !dbg !1886
  %54 = trunc i64 %53 to i32, !dbg !1887
  %55 = load ptr, ptr %5, align 8, !dbg !1888
  %56 = getelementptr inbounds %struct.item, ptr %55, i32 0, i32 1, !dbg !1889
  %57 = getelementptr inbounds %struct.anon.1, ptr %56, i32 0, i32 0, !dbg !1890
  %58 = load ptr, ptr %57, align 8, !dbg !1890
  %59 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %49, ptr noundef @.str.11, i32 noundef %54, ptr noundef %58), !dbg !1891
  store ptr %59, ptr %3, align 8, !dbg !1892
  br label %98, !dbg !1892

60:                                               ; preds = %18
  %61 = load ptr, ptr %4, align 8, !dbg !1893
  %62 = call zeroext i1 @parser_next_is(ptr noundef %61, i32 noundef 5), !dbg !1895
  br i1 %62, label %66, label %63, !dbg !1896

63:                                               ; preds = %60
  %64 = load ptr, ptr %5, align 8, !dbg !1897
  %65 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %64, ptr noundef @.str.14), !dbg !1898
  store ptr %65, ptr %3, align 8, !dbg !1899
  br label %98, !dbg !1899

66:                                               ; preds = %60
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1900, metadata !DIExpression()), !dbg !1901
  %67 = load ptr, ptr %4, align 8, !dbg !1902
  %68 = load ptr, ptr %12, align 8, !dbg !1903
  %69 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %68, i32 0, i32 5, !dbg !1904
  %70 = load ptr, ptr %69, align 8, !dbg !1904
  %71 = call i32 @symtab_push(ptr noundef %67, ptr noundef %70), !dbg !1905
  store i32 %71, ptr %13, align 4, !dbg !1901
  %72 = load i32, ptr %13, align 4, !dbg !1906
  %73 = icmp slt i32 %72, 0, !dbg !1908
  br i1 %73, label %74, label %84, !dbg !1909

74:                                               ; preds = %66
  %75 = load i32, ptr %13, align 4, !dbg !1910
  %76 = icmp eq i32 %75, -19, !dbg !1913
  br i1 %76, label %77, label %81, !dbg !1914

77:                                               ; preds = %74
  %78 = load ptr, ptr %5, align 8, !dbg !1915
  %79 = load ptr, ptr %7, align 8, !dbg !1916
  %80 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %78, ptr noundef @.str.15, ptr noundef %79), !dbg !1917
  store ptr %80, ptr %3, align 8, !dbg !1918
  br label %98, !dbg !1918

81:                                               ; preds = %74
  %82 = load ptr, ptr %5, align 8, !dbg !1919
  %83 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %82, ptr noundef @.str.16), !dbg !1920
  store ptr %83, ptr %3, align 8, !dbg !1921
  br label %98, !dbg !1921

84:                                               ; preds = %66
  %85 = load ptr, ptr %4, align 8, !dbg !1922
  %86 = load i32, ptr %6, align 4, !dbg !1923
  %87 = or i32 %86, 4, !dbg !1924
  %88 = load ptr, ptr %12, align 8, !dbg !1925
  call void @emit_chunk(ptr noundef %85, i32 noundef 5, i32 noundef %87, ptr noundef %88), !dbg !1926
  %89 = load ptr, ptr %4, align 8, !dbg !1927
  %90 = load ptr, ptr %5, align 8, !dbg !1928
  call void @parser_push_item(ptr noundef %89, ptr noundef %90), !dbg !1929
  %91 = load ptr, ptr %4, align 8, !dbg !1930
  %92 = getelementptr inbounds %struct.parser, ptr %91, i32 0, i32 4, !dbg !1931
  %93 = load i32, ptr %92, align 8, !dbg !1932
  %94 = and i32 %93, -2, !dbg !1932
  store i32 %94, ptr %92, align 8, !dbg !1932
  store ptr @parser_text, ptr %3, align 8, !dbg !1933
  br label %98, !dbg !1933

95:                                               ; preds = %2
  %96 = load ptr, ptr %5, align 8, !dbg !1934
  %97 = call ptr @unexpected_lexeme(ptr noundef %96), !dbg !1935
  store ptr %97, ptr %3, align 8, !dbg !1936
  br label %98, !dbg !1936

98:                                               ; preds = %95, %84, %81, %77, %63, %48
  %99 = load ptr, ptr %3, align 8, !dbg !1937
  ret ptr %99, !dbg !1937
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_negate_iter(ptr noundef %0, ptr noundef %1) #0 !dbg !1938 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1939, metadata !DIExpression()), !dbg !1940
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1941, metadata !DIExpression()), !dbg !1942
  %6 = load ptr, ptr %5, align 8, !dbg !1943
  %7 = getelementptr inbounds %struct.item, ptr %6, i32 0, i32 0, !dbg !1945
  %8 = load i32, ptr %7, align 8, !dbg !1945
  %9 = icmp ne i32 %8, 4, !dbg !1946
  br i1 %9, label %10, label %13, !dbg !1947

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !1948
  %12 = call ptr @unexpected_lexeme(ptr noundef %11), !dbg !1949
  store ptr %12, ptr %3, align 8, !dbg !1950
  br label %18, !dbg !1950

13:                                               ; preds = %2
  %14 = load ptr, ptr %4, align 8, !dbg !1951
  %15 = getelementptr inbounds %struct.parser, ptr %14, i32 0, i32 4, !dbg !1952
  %16 = load i32, ptr %15, align 8, !dbg !1953
  %17 = xor i32 %16, 1, !dbg !1953
  store i32 %17, ptr %15, align 8, !dbg !1953
  store ptr @parser_iter, ptr %3, align 8, !dbg !1954
  br label %18, !dbg !1954

18:                                               ; preds = %13, %10
  %19 = load ptr, ptr %3, align 8, !dbg !1955
  ret ptr %19, !dbg !1955
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_slash(ptr noundef %0, ptr noundef %1) #0 !dbg !1956 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1957, metadata !DIExpression()), !dbg !1958
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1959, metadata !DIExpression()), !dbg !1960
  %7 = load ptr, ptr %5, align 8, !dbg !1961
  %8 = getelementptr inbounds %struct.item, ptr %7, i32 0, i32 0, !dbg !1963
  %9 = load i32, ptr %8, align 8, !dbg !1963
  %10 = icmp eq i32 %9, 2, !dbg !1964
  br i1 %10, label %11, label %41, !dbg !1965

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1966, metadata !DIExpression()), !dbg !1968
  store ptr null, ptr %6, align 8, !dbg !1968
  %12 = load ptr, ptr %4, align 8, !dbg !1969
  %13 = getelementptr inbounds %struct.parser, ptr %12, i32 0, i32 3, !dbg !1971
  %14 = call zeroext i1 @lex_next(ptr noundef %13, ptr noundef %6), !dbg !1972
  br i1 %14, label %19, label %15, !dbg !1973

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !1974
  %17 = load ptr, ptr %6, align 8, !dbg !1975
  %18 = call ptr @unexpected_lexeme_or_lex_error(ptr noundef %16, ptr noundef %17), !dbg !1976
  store ptr %18, ptr %3, align 8, !dbg !1977
  br label %44, !dbg !1977

19:                                               ; preds = %11
  %20 = load ptr, ptr %6, align 8, !dbg !1978
  %21 = getelementptr inbounds %struct.item, ptr %20, i32 0, i32 0, !dbg !1980
  %22 = load i32, ptr %21, align 8, !dbg !1980
  %23 = icmp eq i32 %22, 5, !dbg !1981
  br i1 %23, label %24, label %28, !dbg !1982

24:                                               ; preds = %19
  %25 = load ptr, ptr %4, align 8, !dbg !1983
  %26 = load ptr, ptr %5, align 8, !dbg !1984
  %27 = call ptr @parser_end_iter(ptr noundef %25, ptr noundef %26), !dbg !1985
  store ptr %27, ptr %3, align 8, !dbg !1986
  br label %44, !dbg !1986

28:                                               ; preds = %19
  %29 = load ptr, ptr %6, align 8, !dbg !1987
  %30 = getelementptr inbounds %struct.item, ptr %29, i32 0, i32 0, !dbg !1989
  %31 = load i32, ptr %30, align 8, !dbg !1989
  %32 = icmp eq i32 %31, 8, !dbg !1990
  br i1 %32, label %33, label %37, !dbg !1991

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 8, !dbg !1992
  %35 = load ptr, ptr %5, align 8, !dbg !1993
  %36 = call ptr @parser_end_var_not_empty(ptr noundef %34, ptr noundef %35), !dbg !1994
  store ptr %36, ptr %3, align 8, !dbg !1995
  br label %44, !dbg !1995

37:                                               ; preds = %28
  %38 = load ptr, ptr %5, align 8, !dbg !1996
  %39 = load ptr, ptr %6, align 8, !dbg !1997
  %40 = call ptr @unexpected_lexeme_or_lex_error(ptr noundef %38, ptr noundef %39), !dbg !1998
  store ptr %40, ptr %3, align 8, !dbg !1999
  br label %44, !dbg !1999

41:                                               ; preds = %2
  %42 = load ptr, ptr %5, align 8, !dbg !2000
  %43 = call ptr @unexpected_lexeme(ptr noundef %42), !dbg !2001
  store ptr %43, ptr %3, align 8, !dbg !2002
  br label %44, !dbg !2002

44:                                               ; preds = %41, %37, %33, %24, %15
  %45 = load ptr, ptr %3, align 8, !dbg !2003
  ret ptr %45, !dbg !2003
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @unexpected_lexeme_or_lex_error(ptr noundef %0, ptr noundef %1) #0 !dbg !2004 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2007, metadata !DIExpression()), !dbg !2008
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2009, metadata !DIExpression()), !dbg !2010
  %6 = load ptr, ptr %5, align 8, !dbg !2011
  %7 = icmp ne ptr %6, null, !dbg !2011
  br i1 %7, label %8, label %21, !dbg !2013

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !dbg !2014
  %10 = getelementptr inbounds %struct.item, ptr %9, i32 0, i32 0, !dbg !2015
  %11 = load i32, ptr %10, align 8, !dbg !2015
  %12 = icmp eq i32 %11, 0, !dbg !2016
  br i1 %12, label %18, label %13, !dbg !2017

13:                                               ; preds = %8
  %14 = load ptr, ptr %5, align 8, !dbg !2018
  %15 = getelementptr inbounds %struct.item, ptr %14, i32 0, i32 0, !dbg !2019
  %16 = load i32, ptr %15, align 8, !dbg !2019
  %17 = icmp eq i32 %16, 1, !dbg !2020
  br i1 %17, label %18, label %21, !dbg !2021

18:                                               ; preds = %13, %8
  %19 = load ptr, ptr %4, align 8, !dbg !2022
  %20 = load ptr, ptr %5, align 8, !dbg !2024
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %19, ptr align 8 %20, i64 24, i1 false), !dbg !2025
  store ptr null, ptr %3, align 8, !dbg !2026
  br label %24, !dbg !2026

21:                                               ; preds = %13, %2
  %22 = load ptr, ptr %4, align 8, !dbg !2027
  %23 = call ptr @unexpected_lexeme(ptr noundef %22), !dbg !2028
  store ptr %23, ptr %3, align 8, !dbg !2029
  br label %24, !dbg !2029

24:                                               ; preds = %21, %18
  %25 = load ptr, ptr %3, align 8, !dbg !2030
  ret ptr %25, !dbg !2030
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @symtab_lookup(ptr noundef %0, ptr noundef %1) #0 !dbg !2031 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2034, metadata !DIExpression()), !dbg !2035
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2036, metadata !DIExpression()), !dbg !2037
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2038, metadata !DIExpression()), !dbg !2040
  %8 = load ptr, ptr %4, align 8, !dbg !2041
  %9 = getelementptr inbounds %struct.parser, ptr %8, i32 0, i32 2, !dbg !2042
  %10 = load ptr, ptr %9, align 8, !dbg !2042
  store ptr %10, ptr %6, align 8, !dbg !2040
  br label %11, !dbg !2043

11:                                               ; preds = %25, %2
  %12 = load ptr, ptr %6, align 8, !dbg !2044
  %13 = icmp ne ptr %12, null, !dbg !2046
  br i1 %13, label %14, label %29, !dbg !2046

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2047, metadata !DIExpression()), !dbg !2049
  %15 = load ptr, ptr %6, align 8, !dbg !2050
  %16 = getelementptr inbounds %struct.symtab, ptr %15, i32 0, i32 0, !dbg !2051
  %17 = load ptr, ptr %16, align 8, !dbg !2051
  %18 = load ptr, ptr %5, align 8, !dbg !2052
  %19 = call ptr @hash_find(ptr noundef %17, ptr noundef %18), !dbg !2053
  store ptr %19, ptr %7, align 8, !dbg !2049
  %20 = load ptr, ptr %7, align 8, !dbg !2054
  %21 = icmp ne ptr %20, null, !dbg !2054
  br i1 %21, label %22, label %24, !dbg !2056

22:                                               ; preds = %14
  %23 = load ptr, ptr %7, align 8, !dbg !2057
  store ptr %23, ptr %3, align 8, !dbg !2058
  br label %30, !dbg !2058

24:                                               ; preds = %14
  br label %25, !dbg !2059

25:                                               ; preds = %24
  %26 = load ptr, ptr %6, align 8, !dbg !2060
  %27 = getelementptr inbounds %struct.symtab, ptr %26, i32 0, i32 1, !dbg !2061
  %28 = load ptr, ptr %27, align 8, !dbg !2061
  store ptr %28, ptr %6, align 8, !dbg !2062
  br label %11, !dbg !2063, !llvm.loop !2064

29:                                               ; preds = %11
  store ptr null, ptr %3, align 8, !dbg !2066
  br label %30, !dbg !2066

30:                                               ; preds = %29, %22
  %31 = load ptr, ptr %3, align 8, !dbg !2067
  ret ptr %31, !dbg !2067
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strnlen(ptr noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parser_next_is(ptr noundef %0, i32 noundef %1) #0 !dbg !2068 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2071, metadata !DIExpression()), !dbg !2072
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2073, metadata !DIExpression()), !dbg !2074
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2075, metadata !DIExpression()), !dbg !2076
  %6 = load ptr, ptr %3, align 8, !dbg !2077
  %7 = getelementptr inbounds %struct.parser, ptr %6, i32 0, i32 3, !dbg !2078
  %8 = call zeroext i1 @lex_next(ptr noundef %7, ptr noundef %5), !dbg !2079
  br i1 %8, label %9, label %16, !dbg !2079

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !dbg !2080
  %11 = getelementptr inbounds %struct.item, ptr %10, i32 0, i32 0, !dbg !2081
  %12 = load i32, ptr %11, align 8, !dbg !2081
  %13 = load i32, ptr %4, align 4, !dbg !2082
  %14 = icmp eq i32 %12, %13, !dbg !2083
  %15 = zext i1 %14 to i32, !dbg !2083
  br label %17, !dbg !2079

16:                                               ; preds = %2
  br label %17, !dbg !2079

17:                                               ; preds = %16, %9
  %18 = phi i32 [ %15, %9 ], [ 0, %16 ], !dbg !2079
  %19 = icmp ne i32 %18, 0, !dbg !2079
  ret i1 %19, !dbg !2084
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_push_item(ptr noundef %0, ptr noundef %1) #0 !dbg !2085 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2088, metadata !DIExpression()), !dbg !2089
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2090, metadata !DIExpression()), !dbg !2091
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2092, metadata !DIExpression()), !dbg !2093
  %6 = call noalias ptr @malloc(i64 noundef 40) #17, !dbg !2094
  store ptr %6, ptr %5, align 8, !dbg !2093
  %7 = load ptr, ptr %5, align 8, !dbg !2095
  %8 = icmp ne ptr %7, null, !dbg !2095
  br i1 %8, label %10, label %9, !dbg !2097

9:                                                ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.7, i32 noundef 504, ptr noundef @__FUNCTION__.parser_push_item, ptr noundef @.str.12) #15, !dbg !2098
  unreachable, !dbg !2098

10:                                               ; preds = %2
  %11 = load ptr, ptr %5, align 8, !dbg !2099
  %12 = getelementptr inbounds %struct.stacked_item, ptr %11, i32 0, i32 1, !dbg !2100
  %13 = load ptr, ptr %4, align 8, !dbg !2101
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %13, i64 24, i1 false), !dbg !2102
  %14 = load ptr, ptr %3, align 8, !dbg !2103
  %15 = getelementptr inbounds %struct.parser, ptr %14, i32 0, i32 5, !dbg !2104
  %16 = load ptr, ptr %5, align 8, !dbg !2105
  %17 = getelementptr inbounds %struct.stacked_item, ptr %16, i32 0, i32 0, !dbg !2106
  call void @list_add(ptr noundef %15, ptr noundef %17), !dbg !2107
  ret void, !dbg !2108
}

declare ptr @hash_find(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #8

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #9

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add(ptr noundef %0, ptr noundef %1) #0 !dbg !2109 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2113, metadata !DIExpression()), !dbg !2114
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2115, metadata !DIExpression()), !dbg !2116
  %5 = load ptr, ptr %3, align 8, !dbg !2117
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !2118
  %7 = getelementptr inbounds %struct.list_node, ptr %6, i32 0, i32 0, !dbg !2119
  %8 = load ptr, ptr %7, align 8, !dbg !2119
  %9 = load ptr, ptr %4, align 8, !dbg !2120
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 0, !dbg !2121
  store ptr %8, ptr %10, align 8, !dbg !2122
  %11 = load ptr, ptr %3, align 8, !dbg !2123
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !2124
  %13 = load ptr, ptr %4, align 8, !dbg !2125
  %14 = getelementptr inbounds %struct.list_node, ptr %13, i32 0, i32 1, !dbg !2126
  store ptr %12, ptr %14, align 8, !dbg !2127
  %15 = load ptr, ptr %4, align 8, !dbg !2128
  %16 = load ptr, ptr %3, align 8, !dbg !2129
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !2130
  %18 = getelementptr inbounds %struct.list_node, ptr %17, i32 0, i32 0, !dbg !2131
  %19 = load ptr, ptr %18, align 8, !dbg !2131
  %20 = getelementptr inbounds %struct.list_node, ptr %19, i32 0, i32 1, !dbg !2132
  store ptr %15, ptr %20, align 8, !dbg !2133
  %21 = load ptr, ptr %4, align 8, !dbg !2134
  %22 = load ptr, ptr %3, align 8, !dbg !2135
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !2136
  %24 = getelementptr inbounds %struct.list_node, ptr %23, i32 0, i32 0, !dbg !2137
  store ptr %21, ptr %24, align 8, !dbg !2138
  %25 = load ptr, ptr %3, align 8, !dbg !2139
  ret void, !dbg !2140
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @symtab_push(ptr noundef %0, ptr noundef %1) #0 !dbg !2141 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2144, metadata !DIExpression()), !dbg !2145
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2146, metadata !DIExpression()), !dbg !2147
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2148, metadata !DIExpression()), !dbg !2149
  %7 = load ptr, ptr %5, align 8, !dbg !2150
  %8 = icmp ne ptr %7, null, !dbg !2150
  br i1 %8, label %10, label %9, !dbg !2152

9:                                                ; preds = %2
  store i32 -19, ptr %3, align 4, !dbg !2153
  br label %57, !dbg !2153

10:                                               ; preds = %2
  %11 = call noalias ptr @malloc(i64 noundef 16) #17, !dbg !2154
  store ptr %11, ptr %6, align 8, !dbg !2155
  %12 = load ptr, ptr %6, align 8, !dbg !2156
  %13 = icmp ne ptr %12, null, !dbg !2156
  br i1 %13, label %18, label %14, !dbg !2158

14:                                               ; preds = %10
  %15 = call ptr @__errno_location() #18, !dbg !2159
  %16 = load i32, ptr %15, align 4, !dbg !2159
  %17 = sub nsw i32 0, %16, !dbg !2160
  store i32 %17, ptr %3, align 4, !dbg !2161
  br label %57, !dbg !2161

18:                                               ; preds = %10
  %19 = call ptr @hash_str_new(ptr noundef null, ptr noundef null), !dbg !2162
  %20 = load ptr, ptr %6, align 8, !dbg !2163
  %21 = getelementptr inbounds %struct.symtab, ptr %20, i32 0, i32 0, !dbg !2164
  store ptr %19, ptr %21, align 8, !dbg !2165
  %22 = load ptr, ptr %6, align 8, !dbg !2166
  %23 = getelementptr inbounds %struct.symtab, ptr %22, i32 0, i32 0, !dbg !2168
  %24 = load ptr, ptr %23, align 8, !dbg !2168
  %25 = icmp ne ptr %24, null, !dbg !2166
  br i1 %25, label %28, label %26, !dbg !2169

26:                                               ; preds = %18
  %27 = load ptr, ptr %6, align 8, !dbg !2170
  call void @free(ptr noundef %27) #13, !dbg !2172
  store i32 -12, ptr %3, align 4, !dbg !2173
  br label %57, !dbg !2173

28:                                               ; preds = %18
  %29 = load ptr, ptr %4, align 8, !dbg !2174
  %30 = getelementptr inbounds %struct.parser, ptr %29, i32 0, i32 2, !dbg !2175
  %31 = load ptr, ptr %30, align 8, !dbg !2175
  %32 = load ptr, ptr %6, align 8, !dbg !2176
  %33 = getelementptr inbounds %struct.symtab, ptr %32, i32 0, i32 1, !dbg !2177
  store ptr %31, ptr %33, align 8, !dbg !2178
  %34 = load ptr, ptr %6, align 8, !dbg !2179
  %35 = load ptr, ptr %4, align 8, !dbg !2180
  %36 = getelementptr inbounds %struct.parser, ptr %35, i32 0, i32 2, !dbg !2181
  store ptr %34, ptr %36, align 8, !dbg !2182
  br label %37, !dbg !2183

37:                                               ; preds = %53, %28
  %38 = load ptr, ptr %5, align 8, !dbg !2184
  %39 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %38, i32 0, i32 0, !dbg !2187
  %40 = load ptr, ptr %39, align 8, !dbg !2187
  %41 = icmp ne ptr %40, null, !dbg !2188
  br i1 %41, label %42, label %56, !dbg !2188

42:                                               ; preds = %37
  %43 = load ptr, ptr %4, align 8, !dbg !2189
  %44 = getelementptr inbounds %struct.parser, ptr %43, i32 0, i32 2, !dbg !2190
  %45 = load ptr, ptr %44, align 8, !dbg !2190
  %46 = getelementptr inbounds %struct.symtab, ptr %45, i32 0, i32 0, !dbg !2191
  %47 = load ptr, ptr %46, align 8, !dbg !2191
  %48 = load ptr, ptr %5, align 8, !dbg !2192
  %49 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %48, i32 0, i32 0, !dbg !2193
  %50 = load ptr, ptr %49, align 8, !dbg !2193
  %51 = load ptr, ptr %5, align 8, !dbg !2194
  %52 = call i32 @hash_add(ptr noundef %47, ptr noundef %50, ptr noundef %51), !dbg !2195
  br label %53, !dbg !2195

53:                                               ; preds = %42
  %54 = load ptr, ptr %5, align 8, !dbg !2196
  %55 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %54, i32 1, !dbg !2196
  store ptr %55, ptr %5, align 8, !dbg !2196
  br label %37, !dbg !2197, !llvm.loop !2198

56:                                               ; preds = %37
  store i32 0, ptr %3, align 4, !dbg !2200
  br label %57, !dbg !2200

57:                                               ; preds = %56, %26, %14, %9
  %58 = load i32, ptr %3, align 4, !dbg !2201
  ret i32 %58, !dbg !2201
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #10

declare ptr @hash_str_new(ptr noundef, ptr noundef) #2

declare i32 @hash_add(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_end_iter(ptr noundef %0, ptr noundef %1) #0 !dbg !2202 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2203, metadata !DIExpression()), !dbg !2204
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2205, metadata !DIExpression()), !dbg !2206
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2207, metadata !DIExpression()), !dbg !2208
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2209, metadata !DIExpression()), !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2211, metadata !DIExpression()), !dbg !2212
  %13 = load ptr, ptr %4, align 8, !dbg !2213
  %14 = load ptr, ptr %5, align 8, !dbg !2215
  %15 = call zeroext i1 @parser_stack_top_matches(ptr noundef %13, ptr noundef %14, i32 noundef 2), !dbg !2216
  br i1 %15, label %17, label %16, !dbg !2217

16:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !2218
  br label %110, !dbg !2218

17:                                               ; preds = %2
  %18 = load ptr, ptr %4, align 8, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2220, metadata !DIExpression()), !dbg !2222
  %19 = load ptr, ptr %5, align 8, !dbg !2222
  %20 = getelementptr inbounds %struct.item, ptr %19, i32 0, i32 1, !dbg !2222
  %21 = getelementptr inbounds %struct.anon.1, ptr %20, i32 0, i32 0, !dbg !2222
  %22 = load ptr, ptr %21, align 8, !dbg !2222
  store ptr %22, ptr %9, align 8, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2223, metadata !DIExpression()), !dbg !2222
  %23 = load ptr, ptr %9, align 8, !dbg !2222
  %24 = load ptr, ptr %5, align 8, !dbg !2222
  %25 = getelementptr inbounds %struct.item, ptr %24, i32 0, i32 1, !dbg !2222
  %26 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 1, !dbg !2222
  %27 = load i64, ptr %26, align 8, !dbg !2222
  %28 = call i64 @strnlen(ptr noundef %23, i64 noundef %27) #16, !dbg !2222
  store i64 %28, ptr %10, align 8, !dbg !2222
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2224, metadata !DIExpression()), !dbg !2222
  %29 = load i64, ptr %10, align 8, !dbg !2222
  %30 = add i64 %29, 1, !dbg !2222
  %31 = alloca i8, i64 %30, align 16, !dbg !2222
  store ptr %31, ptr %11, align 8, !dbg !2222
  %32 = load ptr, ptr %11, align 8, !dbg !2222
  %33 = load i64, ptr %10, align 8, !dbg !2222
  %34 = getelementptr inbounds i8, ptr %32, i64 %33, !dbg !2222
  store i8 0, ptr %34, align 1, !dbg !2222
  %35 = load ptr, ptr %11, align 8, !dbg !2222
  %36 = load ptr, ptr %9, align 8, !dbg !2222
  %37 = load i64, ptr %10, align 8, !dbg !2222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr align 1 %36, i64 %37, i1 false), !dbg !2222
  store ptr %35, ptr %12, align 8, !dbg !2222
  %38 = load ptr, ptr %12, align 8, !dbg !2222
  %39 = call ptr @symtab_lookup(ptr noundef %18, ptr noundef %38), !dbg !2225
  store ptr %39, ptr %7, align 8, !dbg !2226
  %40 = load ptr, ptr %7, align 8, !dbg !2227
  %41 = icmp ne ptr %40, null, !dbg !2227
  br i1 %41, label %54, label %42, !dbg !2229

42:                                               ; preds = %17
  %43 = load ptr, ptr %5, align 8, !dbg !2230
  %44 = load ptr, ptr %5, align 8, !dbg !2232
  %45 = getelementptr inbounds %struct.item, ptr %44, i32 0, i32 1, !dbg !2233
  %46 = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 1, !dbg !2234
  %47 = load i64, ptr %46, align 8, !dbg !2234
  %48 = trunc i64 %47 to i32, !dbg !2235
  %49 = load ptr, ptr %5, align 8, !dbg !2236
  %50 = getelementptr inbounds %struct.item, ptr %49, i32 0, i32 1, !dbg !2237
  %51 = getelementptr inbounds %struct.anon.1, ptr %50, i32 0, i32 0, !dbg !2238
  %52 = load ptr, ptr %51, align 8, !dbg !2238
  %53 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %43, ptr noundef @.str.11, i32 noundef %48, ptr noundef %52), !dbg !2239
  store ptr %53, ptr %3, align 8, !dbg !2240
  br label %110, !dbg !2240

54:                                               ; preds = %17
  %55 = load ptr, ptr %4, align 8, !dbg !2241
  %56 = getelementptr inbounds %struct.parser, ptr %55, i32 0, i32 6, !dbg !2243
  %57 = getelementptr inbounds %struct.anon.2, ptr %56, i32 0, i32 1, !dbg !2244
  %58 = load i64, ptr %57, align 8, !dbg !2244
  %59 = icmp ne i64 %58, 0, !dbg !2241
  br i1 %59, label %63, label %60, !dbg !2245

60:                                               ; preds = %54
  %61 = load ptr, ptr %5, align 8, !dbg !2246
  %62 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %61, ptr noundef @.str.17), !dbg !2247
  store ptr %62, ptr %3, align 8, !dbg !2248
  br label %110, !dbg !2248

63:                                               ; preds = %54
  %64 = load ptr, ptr %4, align 8, !dbg !2249
  %65 = getelementptr inbounds %struct.parser, ptr %64, i32 0, i32 6, !dbg !2251
  %66 = getelementptr inbounds %struct.anon.2, ptr %65, i32 0, i32 1, !dbg !2252
  %67 = load i64, ptr %66, align 8, !dbg !2252
  %68 = sub nsw i64 %67, 1, !dbg !2253
  store i64 %68, ptr %8, align 8, !dbg !2254
  br label %69, !dbg !2255

69:                                               ; preds = %95, %63
  %70 = load i64, ptr %8, align 8, !dbg !2256
  %71 = icmp sge i64 %70, 0, !dbg !2258
  br i1 %71, label %72, label %98, !dbg !2259

72:                                               ; preds = %69
  %73 = load ptr, ptr %4, align 8, !dbg !2260
  %74 = getelementptr inbounds %struct.parser, ptr %73, i32 0, i32 6, !dbg !2262
  %75 = getelementptr inbounds %struct.anon.2, ptr %74, i32 0, i32 0, !dbg !2263
  %76 = load ptr, ptr %75, align 8, !dbg !2263
  %77 = load i64, ptr %8, align 8, !dbg !2264
  %78 = getelementptr inbounds %struct.chunk, ptr %76, i64 %77, !dbg !2260
  store ptr %78, ptr %6, align 8, !dbg !2265
  %79 = load ptr, ptr %6, align 8, !dbg !2266
  %80 = getelementptr inbounds %struct.chunk, ptr %79, i32 0, i32 0, !dbg !2268
  %81 = load i32, ptr %80, align 8, !dbg !2268
  %82 = icmp ne i32 %81, 5, !dbg !2269
  br i1 %82, label %83, label %84, !dbg !2270

83:                                               ; preds = %72
  br label %95, !dbg !2271

84:                                               ; preds = %72
  %85 = load ptr, ptr %6, align 8, !dbg !2272
  %86 = getelementptr inbounds %struct.chunk, ptr %85, i32 0, i32 1, !dbg !2274
  %87 = load ptr, ptr %86, align 8, !dbg !2274
  %88 = load ptr, ptr %7, align 8, !dbg !2275
  %89 = icmp eq ptr %87, %88, !dbg !2276
  br i1 %89, label %90, label %94, !dbg !2277

90:                                               ; preds = %84
  %91 = load ptr, ptr %4, align 8, !dbg !2278
  %92 = load ptr, ptr %6, align 8, !dbg !2280
  call void @emit_chunk(ptr noundef %91, i32 noundef 6, i32 noundef 0, ptr noundef %92), !dbg !2281
  %93 = load ptr, ptr %4, align 8, !dbg !2282
  call void @symtab_pop(ptr noundef %93), !dbg !2283
  store ptr @parser_text, ptr %3, align 8, !dbg !2284
  br label %110, !dbg !2284

94:                                               ; preds = %84
  br label %95, !dbg !2285

95:                                               ; preds = %94, %83
  %96 = load i64, ptr %8, align 8, !dbg !2286
  %97 = add nsw i64 %96, -1, !dbg !2286
  store i64 %97, ptr %8, align 8, !dbg !2286
  br label %69, !dbg !2287, !llvm.loop !2288

98:                                               ; preds = %69
  %99 = load ptr, ptr %5, align 8, !dbg !2290
  %100 = load ptr, ptr %5, align 8, !dbg !2291
  %101 = getelementptr inbounds %struct.item, ptr %100, i32 0, i32 1, !dbg !2292
  %102 = getelementptr inbounds %struct.anon.1, ptr %101, i32 0, i32 1, !dbg !2293
  %103 = load i64, ptr %102, align 8, !dbg !2293
  %104 = trunc i64 %103 to i32, !dbg !2294
  %105 = load ptr, ptr %5, align 8, !dbg !2295
  %106 = getelementptr inbounds %struct.item, ptr %105, i32 0, i32 1, !dbg !2296
  %107 = getelementptr inbounds %struct.anon.1, ptr %106, i32 0, i32 0, !dbg !2297
  %108 = load ptr, ptr %107, align 8, !dbg !2297
  %109 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %99, ptr noundef @.str.18, i32 noundef %104, ptr noundef %108), !dbg !2298
  store ptr %109, ptr %3, align 8, !dbg !2299
  br label %110, !dbg !2299

110:                                              ; preds = %98, %90, %60, %42, %16
  %111 = load ptr, ptr %3, align 8, !dbg !2300
  ret ptr %111, !dbg !2300
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @parser_end_var_not_empty(ptr noundef %0, ptr noundef %1) #0 !dbg !2301 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2302, metadata !DIExpression()), !dbg !2303
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2306, metadata !DIExpression()), !dbg !2307
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2308, metadata !DIExpression()), !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2310, metadata !DIExpression()), !dbg !2311
  %13 = load ptr, ptr %4, align 8, !dbg !2312
  %14 = call zeroext i1 @parser_next_is(ptr noundef %13, i32 noundef 5), !dbg !2314
  br i1 %14, label %18, label %15, !dbg !2315

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !dbg !2316
  %17 = call ptr @unexpected_lexeme(ptr noundef %16), !dbg !2317
  store ptr %17, ptr %3, align 8, !dbg !2318
  br label %106, !dbg !2318

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8, !dbg !2319
  %20 = load ptr, ptr %5, align 8, !dbg !2321
  %21 = call zeroext i1 @parser_stack_top_matches(ptr noundef %19, ptr noundef %20, i32 noundef 2), !dbg !2322
  br i1 %21, label %23, label %22, !dbg !2323

22:                                               ; preds = %18
  store ptr null, ptr %3, align 8, !dbg !2324
  br label %106, !dbg !2324

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2326, metadata !DIExpression()), !dbg !2328
  %25 = load ptr, ptr %5, align 8, !dbg !2328
  %26 = getelementptr inbounds %struct.item, ptr %25, i32 0, i32 1, !dbg !2328
  %27 = getelementptr inbounds %struct.anon.1, ptr %26, i32 0, i32 0, !dbg !2328
  %28 = load ptr, ptr %27, align 8, !dbg !2328
  store ptr %28, ptr %9, align 8, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %10, metadata !2329, metadata !DIExpression()), !dbg !2328
  %29 = load ptr, ptr %9, align 8, !dbg !2328
  %30 = load ptr, ptr %5, align 8, !dbg !2328
  %31 = getelementptr inbounds %struct.item, ptr %30, i32 0, i32 1, !dbg !2328
  %32 = getelementptr inbounds %struct.anon.1, ptr %31, i32 0, i32 1, !dbg !2328
  %33 = load i64, ptr %32, align 8, !dbg !2328
  %34 = call i64 @strnlen(ptr noundef %29, i64 noundef %33) #16, !dbg !2328
  store i64 %34, ptr %10, align 8, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %11, metadata !2330, metadata !DIExpression()), !dbg !2328
  %35 = load i64, ptr %10, align 8, !dbg !2328
  %36 = add i64 %35, 1, !dbg !2328
  %37 = alloca i8, i64 %36, align 16, !dbg !2328
  store ptr %37, ptr %11, align 8, !dbg !2328
  %38 = load ptr, ptr %11, align 8, !dbg !2328
  %39 = load i64, ptr %10, align 8, !dbg !2328
  %40 = getelementptr inbounds i8, ptr %38, i64 %39, !dbg !2328
  store i8 0, ptr %40, align 1, !dbg !2328
  %41 = load ptr, ptr %11, align 8, !dbg !2328
  %42 = load ptr, ptr %9, align 8, !dbg !2328
  %43 = load i64, ptr %10, align 8, !dbg !2328
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %42, i64 %43, i1 false), !dbg !2328
  store ptr %41, ptr %12, align 8, !dbg !2328
  %44 = load ptr, ptr %12, align 8, !dbg !2328
  %45 = call ptr @symtab_lookup(ptr noundef %24, ptr noundef %44), !dbg !2331
  store ptr %45, ptr %7, align 8, !dbg !2332
  %46 = load ptr, ptr %7, align 8, !dbg !2333
  %47 = icmp ne ptr %46, null, !dbg !2333
  br i1 %47, label %60, label %48, !dbg !2335

48:                                               ; preds = %23
  %49 = load ptr, ptr %5, align 8, !dbg !2336
  %50 = load ptr, ptr %5, align 8, !dbg !2338
  %51 = getelementptr inbounds %struct.item, ptr %50, i32 0, i32 1, !dbg !2339
  %52 = getelementptr inbounds %struct.anon.1, ptr %51, i32 0, i32 1, !dbg !2340
  %53 = load i64, ptr %52, align 8, !dbg !2340
  %54 = trunc i64 %53 to i32, !dbg !2341
  %55 = load ptr, ptr %5, align 8, !dbg !2342
  %56 = getelementptr inbounds %struct.item, ptr %55, i32 0, i32 1, !dbg !2343
  %57 = getelementptr inbounds %struct.anon.1, ptr %56, i32 0, i32 0, !dbg !2344
  %58 = load ptr, ptr %57, align 8, !dbg !2344
  %59 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %49, ptr noundef @.str.11, i32 noundef %54, ptr noundef %58), !dbg !2345
  store ptr %59, ptr %3, align 8, !dbg !2346
  br label %106, !dbg !2346

60:                                               ; preds = %23
  %61 = load ptr, ptr %4, align 8, !dbg !2347
  %62 = getelementptr inbounds %struct.parser, ptr %61, i32 0, i32 6, !dbg !2349
  %63 = getelementptr inbounds %struct.anon.2, ptr %62, i32 0, i32 1, !dbg !2350
  %64 = load i64, ptr %63, align 8, !dbg !2350
  %65 = sub nsw i64 %64, 1, !dbg !2351
  store i64 %65, ptr %8, align 8, !dbg !2352
  br label %66, !dbg !2353

66:                                               ; preds = %91, %60
  %67 = load i64, ptr %8, align 8, !dbg !2354
  %68 = icmp sge i64 %67, 0, !dbg !2356
  br i1 %68, label %69, label %94, !dbg !2357

69:                                               ; preds = %66
  %70 = load ptr, ptr %4, align 8, !dbg !2358
  %71 = getelementptr inbounds %struct.parser, ptr %70, i32 0, i32 6, !dbg !2360
  %72 = getelementptr inbounds %struct.anon.2, ptr %71, i32 0, i32 0, !dbg !2361
  %73 = load ptr, ptr %72, align 8, !dbg !2361
  %74 = load i64, ptr %8, align 8, !dbg !2362
  %75 = getelementptr inbounds %struct.chunk, ptr %73, i64 %74, !dbg !2358
  store ptr %75, ptr %6, align 8, !dbg !2363
  %76 = load ptr, ptr %6, align 8, !dbg !2364
  %77 = getelementptr inbounds %struct.chunk, ptr %76, i32 0, i32 0, !dbg !2366
  %78 = load i32, ptr %77, align 8, !dbg !2366
  %79 = icmp ne i32 %78, 7, !dbg !2367
  br i1 %79, label %80, label %81, !dbg !2368

80:                                               ; preds = %69
  br label %91, !dbg !2369

81:                                               ; preds = %69
  %82 = load ptr, ptr %6, align 8, !dbg !2370
  %83 = getelementptr inbounds %struct.chunk, ptr %82, i32 0, i32 1, !dbg !2372
  %84 = load ptr, ptr %83, align 8, !dbg !2372
  %85 = load ptr, ptr %7, align 8, !dbg !2373
  %86 = icmp eq ptr %84, %85, !dbg !2374
  br i1 %86, label %87, label %90, !dbg !2375

87:                                               ; preds = %81
  %88 = load ptr, ptr %4, align 8, !dbg !2376
  %89 = load ptr, ptr %7, align 8, !dbg !2378
  call void @emit_chunk(ptr noundef %88, i32 noundef 8, i32 noundef 0, ptr noundef %89), !dbg !2379
  store ptr @parser_text, ptr %3, align 8, !dbg !2380
  br label %106, !dbg !2380

90:                                               ; preds = %81
  br label %91, !dbg !2381

91:                                               ; preds = %90, %80
  %92 = load i64, ptr %8, align 8, !dbg !2382
  %93 = add nsw i64 %92, -1, !dbg !2382
  store i64 %93, ptr %8, align 8, !dbg !2382
  br label %66, !dbg !2383, !llvm.loop !2384

94:                                               ; preds = %66
  %95 = load ptr, ptr %5, align 8, !dbg !2386
  %96 = load ptr, ptr %5, align 8, !dbg !2387
  %97 = getelementptr inbounds %struct.item, ptr %96, i32 0, i32 1, !dbg !2388
  %98 = getelementptr inbounds %struct.anon.1, ptr %97, i32 0, i32 1, !dbg !2389
  %99 = load i64, ptr %98, align 8, !dbg !2389
  %100 = trunc i64 %99 to i32, !dbg !2390
  %101 = load ptr, ptr %5, align 8, !dbg !2391
  %102 = getelementptr inbounds %struct.item, ptr %101, i32 0, i32 1, !dbg !2392
  %103 = getelementptr inbounds %struct.anon.1, ptr %102, i32 0, i32 0, !dbg !2393
  %104 = load ptr, ptr %103, align 8, !dbg !2393
  %105 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %95, ptr noundef @.str.35, i32 noundef %100, ptr noundef %104), !dbg !2394
  store ptr %105, ptr %3, align 8, !dbg !2395
  br label %106, !dbg !2395

106:                                              ; preds = %94, %87, %48, %22, %15
  %107 = load ptr, ptr %3, align 8, !dbg !2396
  ret ptr %107, !dbg !2396
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @parser_stack_top_matches(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !2397 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2400, metadata !DIExpression()), !dbg !2401
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2402, metadata !DIExpression()), !dbg !2403
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2404, metadata !DIExpression()), !dbg !2405
  %10 = load ptr, ptr %5, align 8, !dbg !2406
  %11 = getelementptr inbounds %struct.parser, ptr %10, i32 0, i32 5, !dbg !2408
  %12 = call zeroext i1 @list_empty(ptr noundef %11), !dbg !2409
  br i1 %12, label %13, label %25, !dbg !2410

13:                                               ; preds = %3
  %14 = load ptr, ptr %6, align 8, !dbg !2411
  %15 = load ptr, ptr %6, align 8, !dbg !2413
  %16 = getelementptr inbounds %struct.item, ptr %15, i32 0, i32 1, !dbg !2414
  %17 = getelementptr inbounds %struct.anon.1, ptr %16, i32 0, i32 1, !dbg !2415
  %18 = load i64, ptr %17, align 8, !dbg !2415
  %19 = trunc i64 %18 to i32, !dbg !2416
  %20 = load ptr, ptr %6, align 8, !dbg !2417
  %21 = getelementptr inbounds %struct.item, ptr %20, i32 0, i32 1, !dbg !2418
  %22 = getelementptr inbounds %struct.anon.1, ptr %21, i32 0, i32 0, !dbg !2419
  %23 = load ptr, ptr %22, align 8, !dbg !2419
  %24 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %14, ptr noundef @.str.19, i32 noundef %19, ptr noundef %23), !dbg !2420
  store i1 false, ptr %4, align 1, !dbg !2421
  br label %104, !dbg !2421

25:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2422, metadata !DIExpression()), !dbg !2423
  %26 = load ptr, ptr %5, align 8, !dbg !2424
  %27 = getelementptr inbounds %struct.parser, ptr %26, i32 0, i32 5, !dbg !2425
  %28 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 0, !dbg !2426
  %29 = getelementptr inbounds %struct.list_node, ptr %28, i32 0, i32 0, !dbg !2427
  %30 = load ptr, ptr %29, align 8, !dbg !2427
  store ptr %30, ptr %8, align 8, !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2428, metadata !DIExpression()), !dbg !2429
  %31 = load ptr, ptr %8, align 8, !dbg !2430
  %32 = getelementptr inbounds %struct.stacked_item, ptr %31, i32 0, i32 1, !dbg !2431
  %33 = getelementptr inbounds %struct.item, ptr %32, i32 0, i32 0, !dbg !2432
  %34 = load i32, ptr %33, align 8, !dbg !2432
  %35 = load i32, ptr %7, align 4, !dbg !2433
  %36 = icmp eq i32 %34, %35, !dbg !2434
  br i1 %36, label %37, label %65, !dbg !2435

37:                                               ; preds = %25
  %38 = load ptr, ptr %6, align 8, !dbg !2436
  %39 = getelementptr inbounds %struct.item, ptr %38, i32 0, i32 1, !dbg !2437
  %40 = getelementptr inbounds %struct.anon.1, ptr %39, i32 0, i32 1, !dbg !2438
  %41 = load i64, ptr %40, align 8, !dbg !2438
  %42 = load ptr, ptr %8, align 8, !dbg !2439
  %43 = getelementptr inbounds %struct.stacked_item, ptr %42, i32 0, i32 1, !dbg !2440
  %44 = getelementptr inbounds %struct.item, ptr %43, i32 0, i32 1, !dbg !2441
  %45 = getelementptr inbounds %struct.anon.1, ptr %44, i32 0, i32 1, !dbg !2442
  %46 = load i64, ptr %45, align 8, !dbg !2442
  %47 = icmp eq i64 %41, %46, !dbg !2443
  br i1 %47, label %48, label %65, !dbg !2444

48:                                               ; preds = %37
  %49 = load ptr, ptr %8, align 8, !dbg !2445
  %50 = getelementptr inbounds %struct.stacked_item, ptr %49, i32 0, i32 1, !dbg !2446
  %51 = getelementptr inbounds %struct.item, ptr %50, i32 0, i32 1, !dbg !2447
  %52 = getelementptr inbounds %struct.anon.1, ptr %51, i32 0, i32 0, !dbg !2448
  %53 = load ptr, ptr %52, align 8, !dbg !2448
  %54 = load ptr, ptr %6, align 8, !dbg !2449
  %55 = getelementptr inbounds %struct.item, ptr %54, i32 0, i32 1, !dbg !2450
  %56 = getelementptr inbounds %struct.anon.1, ptr %55, i32 0, i32 0, !dbg !2451
  %57 = load ptr, ptr %56, align 8, !dbg !2451
  %58 = load ptr, ptr %6, align 8, !dbg !2452
  %59 = getelementptr inbounds %struct.item, ptr %58, i32 0, i32 1, !dbg !2453
  %60 = getelementptr inbounds %struct.anon.1, ptr %59, i32 0, i32 1, !dbg !2454
  %61 = load i64, ptr %60, align 8, !dbg !2454
  %62 = call i32 @memcmp(ptr noundef %53, ptr noundef %57, i64 noundef %61) #16, !dbg !2455
  %63 = icmp ne i32 %62, 0, !dbg !2456
  %64 = xor i1 %63, true, !dbg !2456
  br label %65

65:                                               ; preds = %48, %37, %25
  %66 = phi i1 [ false, %37 ], [ false, %25 ], [ %64, %48 ], !dbg !2457
  %67 = zext i1 %66 to i8, !dbg !2429
  store i8 %67, ptr %9, align 1, !dbg !2429
  %68 = load i8, ptr %9, align 1, !dbg !2458
  %69 = trunc i8 %68 to i1, !dbg !2458
  br i1 %69, label %70, label %74, !dbg !2460

70:                                               ; preds = %65
  %71 = load ptr, ptr %8, align 8, !dbg !2461
  %72 = getelementptr inbounds %struct.stacked_item, ptr %71, i32 0, i32 0, !dbg !2463
  call void @list_del(ptr noundef %72), !dbg !2464
  %73 = load ptr, ptr %8, align 8, !dbg !2465
  call void @free(ptr noundef %73) #13, !dbg !2466
  store i1 true, ptr %4, align 1, !dbg !2467
  br label %104, !dbg !2467

74:                                               ; preds = %65
  %75 = load ptr, ptr %6, align 8, !dbg !2468
  %76 = load ptr, ptr %8, align 8, !dbg !2469
  %77 = getelementptr inbounds %struct.stacked_item, ptr %76, i32 0, i32 1, !dbg !2470
  %78 = getelementptr inbounds %struct.item, ptr %77, i32 0, i32 0, !dbg !2471
  %79 = load i32, ptr %78, align 8, !dbg !2471
  %80 = zext i32 %79 to i64, !dbg !2472
  %81 = getelementptr inbounds [13 x ptr], ptr @item_type_str, i64 0, i64 %80, !dbg !2472
  %82 = load ptr, ptr %81, align 8, !dbg !2472
  %83 = load ptr, ptr %8, align 8, !dbg !2473
  %84 = getelementptr inbounds %struct.stacked_item, ptr %83, i32 0, i32 1, !dbg !2474
  %85 = getelementptr inbounds %struct.item, ptr %84, i32 0, i32 1, !dbg !2475
  %86 = getelementptr inbounds %struct.anon.1, ptr %85, i32 0, i32 1, !dbg !2476
  %87 = load i64, ptr %86, align 8, !dbg !2476
  %88 = trunc i64 %87 to i32, !dbg !2477
  %89 = load ptr, ptr %8, align 8, !dbg !2478
  %90 = getelementptr inbounds %struct.stacked_item, ptr %89, i32 0, i32 1, !dbg !2479
  %91 = getelementptr inbounds %struct.item, ptr %90, i32 0, i32 1, !dbg !2480
  %92 = getelementptr inbounds %struct.anon.1, ptr %91, i32 0, i32 0, !dbg !2481
  %93 = load ptr, ptr %92, align 8, !dbg !2481
  %94 = load ptr, ptr %6, align 8, !dbg !2482
  %95 = getelementptr inbounds %struct.item, ptr %94, i32 0, i32 1, !dbg !2483
  %96 = getelementptr inbounds %struct.anon.1, ptr %95, i32 0, i32 1, !dbg !2484
  %97 = load i64, ptr %96, align 8, !dbg !2484
  %98 = trunc i64 %97 to i32, !dbg !2485
  %99 = load ptr, ptr %6, align 8, !dbg !2486
  %100 = getelementptr inbounds %struct.item, ptr %99, i32 0, i32 1, !dbg !2487
  %101 = getelementptr inbounds %struct.anon.1, ptr %100, i32 0, i32 0, !dbg !2488
  %102 = load ptr, ptr %101, align 8, !dbg !2488
  %103 = call ptr (ptr, ptr, ...) @error_item(ptr noundef %75, ptr noundef @.str.20, ptr noundef %82, i32 noundef %88, ptr noundef %93, i32 noundef %98, ptr noundef %102), !dbg !2489
  store i1 false, ptr %4, align 1, !dbg !2490
  br label %104, !dbg !2490

104:                                              ; preds = %74, %70, %13
  %105 = load i1, ptr %4, align 1, !dbg !2491
  ret i1 %105, !dbg !2491
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @symtab_pop(ptr noundef %0) #0 !dbg !2492 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2495, metadata !DIExpression()), !dbg !2496
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2497, metadata !DIExpression()), !dbg !2498
  %4 = load ptr, ptr %2, align 8, !dbg !2499
  %5 = getelementptr inbounds %struct.parser, ptr %4, i32 0, i32 2, !dbg !2500
  %6 = load ptr, ptr %5, align 8, !dbg !2500
  store ptr %6, ptr %3, align 8, !dbg !2498
  %7 = load ptr, ptr %3, align 8, !dbg !2501
  %8 = icmp ne ptr %7, null, !dbg !2501
  br i1 %8, label %9, label %10, !dbg !2504

9:                                                ; preds = %1
  br label %11, !dbg !2504

10:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str.34, ptr noundef @.str.7, i32 noundef 236, ptr noundef @__PRETTY_FUNCTION__.symtab_pop) #19, !dbg !2501
  unreachable, !dbg !2501

11:                                               ; preds = %9
  %12 = load ptr, ptr %3, align 8, !dbg !2505
  %13 = getelementptr inbounds %struct.symtab, ptr %12, i32 0, i32 0, !dbg !2506
  %14 = load ptr, ptr %13, align 8, !dbg !2506
  call void @hash_free(ptr noundef %14), !dbg !2507
  %15 = load ptr, ptr %3, align 8, !dbg !2508
  %16 = getelementptr inbounds %struct.symtab, ptr %15, i32 0, i32 1, !dbg !2509
  %17 = load ptr, ptr %16, align 8, !dbg !2509
  %18 = load ptr, ptr %2, align 8, !dbg !2510
  %19 = getelementptr inbounds %struct.parser, ptr %18, i32 0, i32 2, !dbg !2511
  store ptr %17, ptr %19, align 8, !dbg !2512
  %20 = load ptr, ptr %3, align 8, !dbg !2513
  call void @free(ptr noundef %20) #13, !dbg !2514
  ret void, !dbg !2515
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @list_empty(ptr noundef %0) #0 !dbg !2516 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2521, metadata !DIExpression()), !dbg !2522
  %3 = load ptr, ptr %2, align 8, !dbg !2523
  %4 = load ptr, ptr %2, align 8, !dbg !2524
  %5 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !2525
  %6 = getelementptr inbounds %struct.list_node, ptr %5, i32 0, i32 0, !dbg !2526
  %7 = load ptr, ptr %6, align 8, !dbg !2526
  %8 = load ptr, ptr %2, align 8, !dbg !2527
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !2528
  %10 = icmp eq ptr %7, %9, !dbg !2529
  ret i1 %10, !dbg !2530
}

; Function Attrs: nounwind willreturn memory(read)
declare i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del(ptr noundef %0) #0 !dbg !2531 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2534, metadata !DIExpression()), !dbg !2535
  %3 = load ptr, ptr %2, align 8, !dbg !2536
  %4 = load ptr, ptr %2, align 8, !dbg !2537
  %5 = getelementptr inbounds %struct.list_node, ptr %4, i32 0, i32 1, !dbg !2538
  %6 = load ptr, ptr %5, align 8, !dbg !2538
  %7 = load ptr, ptr %2, align 8, !dbg !2539
  %8 = getelementptr inbounds %struct.list_node, ptr %7, i32 0, i32 0, !dbg !2540
  %9 = load ptr, ptr %8, align 8, !dbg !2540
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 1, !dbg !2541
  store ptr %6, ptr %10, align 8, !dbg !2542
  %11 = load ptr, ptr %2, align 8, !dbg !2543
  %12 = getelementptr inbounds %struct.list_node, ptr %11, i32 0, i32 0, !dbg !2544
  %13 = load ptr, ptr %12, align 8, !dbg !2544
  %14 = load ptr, ptr %2, align 8, !dbg !2545
  %15 = getelementptr inbounds %struct.list_node, ptr %14, i32 0, i32 1, !dbg !2546
  %16 = load ptr, ptr %15, align 8, !dbg !2546
  %17 = getelementptr inbounds %struct.list_node, ptr %16, i32 0, i32 0, !dbg !2547
  store ptr %13, ptr %17, align 8, !dbg !2548
  ret void, !dbg !2549
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #11

declare void @hash_free(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @reallocarray(ptr noundef, i64 noundef, i64 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @error_vitem(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2550 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2554, metadata !DIExpression()), !dbg !2555
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2556, metadata !DIExpression()), !dbg !2557
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2558, metadata !DIExpression()), !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2560, metadata !DIExpression()), !dbg !2561
  %9 = load ptr, ptr %5, align 8, !dbg !2562
  %10 = getelementptr inbounds %struct.item, ptr %9, i32 0, i32 0, !dbg !2563
  store i32 0, ptr %10, align 8, !dbg !2564
  %11 = load ptr, ptr %5, align 8, !dbg !2565
  %12 = getelementptr inbounds %struct.item, ptr %11, i32 0, i32 1, !dbg !2566
  %13 = getelementptr inbounds %struct.anon.1, ptr %12, i32 0, i32 0, !dbg !2567
  %14 = load ptr, ptr %6, align 8, !dbg !2568
  %15 = load ptr, ptr %7, align 8, !dbg !2569
  %16 = call i32 @vasprintf(ptr noundef %13, ptr noundef %14, ptr noundef %15) #13, !dbg !2570
  store i32 %16, ptr %8, align 4, !dbg !2571
  %17 = load i32, ptr %8, align 4, !dbg !2572
  %18 = icmp slt i32 %17, 0, !dbg !2574
  br i1 %18, label %19, label %42, !dbg !2575

19:                                               ; preds = %3
  %20 = call ptr @__errno_location() #18, !dbg !2576
  %21 = load i32, ptr %20, align 4, !dbg !2576
  %22 = call ptr @strerror(i32 noundef %21) #13, !dbg !2578
  %23 = call noalias ptr @strdup(ptr noundef %22) #13, !dbg !2579
  %24 = load ptr, ptr %5, align 8, !dbg !2580
  %25 = getelementptr inbounds %struct.item, ptr %24, i32 0, i32 1, !dbg !2581
  %26 = getelementptr inbounds %struct.anon.1, ptr %25, i32 0, i32 0, !dbg !2582
  store ptr %23, ptr %26, align 8, !dbg !2583
  %27 = load ptr, ptr %5, align 8, !dbg !2584
  %28 = getelementptr inbounds %struct.item, ptr %27, i32 0, i32 1, !dbg !2586
  %29 = getelementptr inbounds %struct.anon.1, ptr %28, i32 0, i32 0, !dbg !2587
  %30 = load ptr, ptr %29, align 8, !dbg !2587
  %31 = icmp ne ptr %30, null, !dbg !2584
  br i1 %31, label %33, label %32, !dbg !2588

32:                                               ; preds = %19
  store ptr null, ptr %4, align 8, !dbg !2589
  br label %49, !dbg !2589

33:                                               ; preds = %19
  %34 = load ptr, ptr %5, align 8, !dbg !2590
  %35 = getelementptr inbounds %struct.item, ptr %34, i32 0, i32 1, !dbg !2591
  %36 = getelementptr inbounds %struct.anon.1, ptr %35, i32 0, i32 0, !dbg !2592
  %37 = load ptr, ptr %36, align 8, !dbg !2592
  %38 = call i64 @strlen(ptr noundef %37) #16, !dbg !2593
  %39 = load ptr, ptr %5, align 8, !dbg !2594
  %40 = getelementptr inbounds %struct.item, ptr %39, i32 0, i32 1, !dbg !2595
  %41 = getelementptr inbounds %struct.anon.1, ptr %40, i32 0, i32 1, !dbg !2596
  store i64 %38, ptr %41, align 8, !dbg !2597
  br label %48, !dbg !2598

42:                                               ; preds = %3
  %43 = load i32, ptr %8, align 4, !dbg !2599
  %44 = sext i32 %43 to i64, !dbg !2601
  %45 = load ptr, ptr %5, align 8, !dbg !2602
  %46 = getelementptr inbounds %struct.item, ptr %45, i32 0, i32 1, !dbg !2603
  %47 = getelementptr inbounds %struct.anon.1, ptr %46, i32 0, i32 1, !dbg !2604
  store i64 %44, ptr %47, align 8, !dbg !2605
  br label %48

48:                                               ; preds = %42, %33
  store ptr null, ptr %4, align 8, !dbg !2606
  br label %49, !dbg !2606

49:                                               ; preds = %48, %32
  %50 = load ptr, ptr %4, align 8, !dbg !2607
  ret ptr %50, !dbg !2607
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lex_init(ptr noundef %0, ptr noundef %1) #0 !dbg !2608 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2611, metadata !DIExpression()), !dbg !2612
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2613, metadata !DIExpression()), !dbg !2614
  %5 = load ptr, ptr %3, align 8, !dbg !2615
  %6 = getelementptr inbounds %struct.lexer, ptr %5, i32 0, i32 0, !dbg !2616
  store ptr @lex_text, ptr %6, align 8, !dbg !2617
  %7 = load ptr, ptr %4, align 8, !dbg !2618
  %8 = load ptr, ptr %3, align 8, !dbg !2619
  %9 = getelementptr inbounds %struct.lexer, ptr %8, i32 0, i32 1, !dbg !2620
  store ptr %7, ptr %9, align 8, !dbg !2621
  %10 = load ptr, ptr %3, align 8, !dbg !2622
  %11 = getelementptr inbounds %struct.lexer, ptr %10, i32 0, i32 2, !dbg !2623
  store ptr %7, ptr %11, align 8, !dbg !2624
  %12 = load ptr, ptr %4, align 8, !dbg !2625
  %13 = call ptr @rawmemchr(ptr noundef %12, i32 noundef 0) #16, !dbg !2626
  %14 = load ptr, ptr %3, align 8, !dbg !2627
  %15 = getelementptr inbounds %struct.lexer, ptr %14, i32 0, i32 3, !dbg !2628
  store ptr %13, ptr %15, align 8, !dbg !2629
  ret void, !dbg !2630
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_head_init(ptr noundef %0) #0 !dbg !2631 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2634, metadata !DIExpression()), !dbg !2635
  %3 = load ptr, ptr %2, align 8, !dbg !2636
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !2637
  %5 = load ptr, ptr %2, align 8, !dbg !2638
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !2639
  %7 = getelementptr inbounds %struct.list_node, ptr %6, i32 0, i32 1, !dbg !2640
  store ptr %4, ptr %7, align 8, !dbg !2641
  %8 = load ptr, ptr %2, align 8, !dbg !2642
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !2643
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 0, !dbg !2644
  store ptr %4, ptr %10, align 8, !dbg !2645
  ret void, !dbg !2646
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_text(ptr noundef %0) #0 !dbg !2647 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2648, metadata !DIExpression()), !dbg !2649
  br label %4, !dbg !2650

4:                                                ; preds = %33, %1
  %5 = load ptr, ptr %3, align 8, !dbg !2651
  %6 = getelementptr inbounds %struct.lexer, ptr %5, i32 0, i32 2, !dbg !2654
  %7 = load ptr, ptr %6, align 8, !dbg !2654
  %8 = call i64 @strlen(ptr noundef @left_meta) #16, !dbg !2655
  %9 = call i32 @strncmp(ptr noundef %7, ptr noundef @left_meta, i64 noundef %8) #16, !dbg !2656
  %10 = icmp ne i32 %9, 0, !dbg !2656
  br i1 %10, label %22, label %11, !dbg !2657

11:                                               ; preds = %4
  %12 = load ptr, ptr %3, align 8, !dbg !2658
  %13 = getelementptr inbounds %struct.lexer, ptr %12, i32 0, i32 2, !dbg !2661
  %14 = load ptr, ptr %13, align 8, !dbg !2661
  %15 = load ptr, ptr %3, align 8, !dbg !2662
  %16 = getelementptr inbounds %struct.lexer, ptr %15, i32 0, i32 1, !dbg !2663
  %17 = load ptr, ptr %16, align 8, !dbg !2663
  %18 = icmp ugt ptr %14, %17, !dbg !2664
  br i1 %18, label %19, label %21, !dbg !2665

19:                                               ; preds = %11
  %20 = load ptr, ptr %3, align 8, !dbg !2666
  call void @emit(ptr noundef %20, i32 noundef 6), !dbg !2667
  br label %21, !dbg !2667

21:                                               ; preds = %19, %11
  store ptr @lex_left_meta, ptr %2, align 8, !dbg !2668
  br label %49, !dbg !2668

22:                                               ; preds = %4
  %23 = load ptr, ptr %3, align 8, !dbg !2669
  %24 = getelementptr inbounds %struct.lexer, ptr %23, i32 0, i32 2, !dbg !2671
  %25 = load ptr, ptr %24, align 8, !dbg !2671
  %26 = call i64 @strlen(ptr noundef @right_meta) #16, !dbg !2672
  %27 = call i32 @strncmp(ptr noundef %25, ptr noundef @right_meta, i64 noundef %26) #16, !dbg !2673
  %28 = icmp ne i32 %27, 0, !dbg !2673
  br i1 %28, label %32, label %29, !dbg !2674

29:                                               ; preds = %22
  %30 = load ptr, ptr %3, align 8, !dbg !2675
  %31 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %30, ptr noundef @.str.38), !dbg !2676
  store ptr %31, ptr %2, align 8, !dbg !2677
  br label %49, !dbg !2677

32:                                               ; preds = %22
  br label %33, !dbg !2678

33:                                               ; preds = %32
  %34 = load ptr, ptr %3, align 8, !dbg !2679
  %35 = call i32 @next(ptr noundef %34), !dbg !2680
  %36 = icmp ne i32 %35, -1, !dbg !2681
  br i1 %36, label %4, label %37, !dbg !2678, !llvm.loop !2682

37:                                               ; preds = %33
  %38 = load ptr, ptr %3, align 8, !dbg !2684
  %39 = getelementptr inbounds %struct.lexer, ptr %38, i32 0, i32 2, !dbg !2686
  %40 = load ptr, ptr %39, align 8, !dbg !2686
  %41 = load ptr, ptr %3, align 8, !dbg !2687
  %42 = getelementptr inbounds %struct.lexer, ptr %41, i32 0, i32 1, !dbg !2688
  %43 = load ptr, ptr %42, align 8, !dbg !2688
  %44 = icmp ugt ptr %40, %43, !dbg !2689
  br i1 %44, label %45, label %47, !dbg !2690

45:                                               ; preds = %37
  %46 = load ptr, ptr %3, align 8, !dbg !2691
  call void @emit(ptr noundef %46, i32 noundef 6), !dbg !2692
  br label %47, !dbg !2692

47:                                               ; preds = %45, %37
  %48 = load ptr, ptr %3, align 8, !dbg !2693
  call void @emit(ptr noundef %48, i32 noundef 1), !dbg !2694
  store ptr null, ptr %2, align 8, !dbg !2695
  br label %49, !dbg !2695

49:                                               ; preds = %47, %29, %21
  %50 = load ptr, ptr %2, align 8, !dbg !2696
  ret ptr %50, !dbg !2696
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit(ptr noundef %0, i32 noundef %1) #0 !dbg !2697 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.item, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2700, metadata !DIExpression()), !dbg !2701
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2702, metadata !DIExpression()), !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2704, metadata !DIExpression()), !dbg !2705
  %6 = getelementptr inbounds %struct.item, ptr %5, i32 0, i32 0, !dbg !2706
  %7 = load i32, ptr %4, align 4, !dbg !2707
  store i32 %7, ptr %6, align 8, !dbg !2706
  %8 = getelementptr inbounds %struct.item, ptr %5, i32 0, i32 1, !dbg !2706
  %9 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 0, !dbg !2708
  %10 = load ptr, ptr %3, align 8, !dbg !2709
  %11 = getelementptr inbounds %struct.lexer, ptr %10, i32 0, i32 1, !dbg !2710
  %12 = load ptr, ptr %11, align 8, !dbg !2710
  store ptr %12, ptr %9, align 8, !dbg !2708
  %13 = getelementptr inbounds %struct.anon.1, ptr %8, i32 0, i32 1, !dbg !2708
  %14 = load ptr, ptr %3, align 8, !dbg !2711
  %15 = getelementptr inbounds %struct.lexer, ptr %14, i32 0, i32 2, !dbg !2712
  %16 = load ptr, ptr %15, align 8, !dbg !2712
  %17 = load ptr, ptr %3, align 8, !dbg !2713
  %18 = getelementptr inbounds %struct.lexer, ptr %17, i32 0, i32 1, !dbg !2714
  %19 = load ptr, ptr %18, align 8, !dbg !2714
  %20 = ptrtoint ptr %16 to i64, !dbg !2715
  %21 = ptrtoint ptr %19 to i64, !dbg !2715
  %22 = sub i64 %20, %21, !dbg !2715
  store i64 %22, ptr %13, align 8, !dbg !2708
  %23 = load ptr, ptr %3, align 8, !dbg !2716
  call void @emit_item(ptr noundef %23, ptr noundef %5), !dbg !2717
  ret void, !dbg !2718
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_left_meta(ptr noundef %0) #0 !dbg !2719 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2720, metadata !DIExpression()), !dbg !2721
  %5 = call i64 @strlen(ptr noundef @left_meta) #16, !dbg !2722
  %6 = load ptr, ptr %3, align 8, !dbg !2723
  %7 = getelementptr inbounds %struct.lexer, ptr %6, i32 0, i32 2, !dbg !2724
  %8 = load ptr, ptr %7, align 8, !dbg !2725
  %9 = getelementptr inbounds i8, ptr %8, i64 %5, !dbg !2725
  store ptr %9, ptr %7, align 8, !dbg !2725
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2726, metadata !DIExpression()), !dbg !2727
  %10 = load ptr, ptr %3, align 8, !dbg !2728
  %11 = call i32 @next(ptr noundef %10), !dbg !2729
  store i32 %11, ptr %4, align 4, !dbg !2727
  %12 = load i32, ptr %4, align 4, !dbg !2730
  %13 = icmp eq i32 %12, 33, !dbg !2732
  br i1 %13, label %14, label %15, !dbg !2733

14:                                               ; preds = %1
  store ptr @lex_comment, ptr %2, align 8, !dbg !2734
  br label %18, !dbg !2734

15:                                               ; preds = %1
  %16 = load ptr, ptr %3, align 8, !dbg !2735
  call void @backup(ptr noundef %16), !dbg !2736
  %17 = load ptr, ptr %3, align 8, !dbg !2737
  call void @emit(ptr noundef %17, i32 noundef 3), !dbg !2738
  store ptr @lex_inside_action, ptr %2, align 8, !dbg !2739
  br label %18, !dbg !2739

18:                                               ; preds = %15, %14
  %19 = load ptr, ptr %2, align 8, !dbg !2740
  ret ptr %19, !dbg !2740
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_error(ptr noundef %0, ptr noundef %1, ...) #0 !dbg !2741 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.item, align 8
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2744, metadata !DIExpression()), !dbg !2745
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2748, metadata !DIExpression()), !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2750, metadata !DIExpression()), !dbg !2751
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !2752
  call void @llvm.va_start(ptr %7), !dbg !2752
  %8 = load ptr, ptr %4, align 8, !dbg !2753
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !2754
  %10 = call ptr @error_vitem(ptr noundef %5, ptr noundef %8, ptr noundef %9), !dbg !2755
  %11 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %6, i64 0, i64 0, !dbg !2756
  call void @llvm.va_end(ptr %11), !dbg !2756
  %12 = load ptr, ptr %3, align 8, !dbg !2757
  call void @emit_item(ptr noundef %12, ptr noundef %5), !dbg !2758
  ret ptr null, !dbg !2759
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @next(ptr noundef %0) #0 !dbg !2760 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2763, metadata !DIExpression()), !dbg !2764
  %5 = load ptr, ptr %3, align 8, !dbg !2765
  %6 = getelementptr inbounds %struct.lexer, ptr %5, i32 0, i32 2, !dbg !2767
  %7 = load ptr, ptr %6, align 8, !dbg !2767
  %8 = load ptr, ptr %3, align 8, !dbg !2768
  %9 = getelementptr inbounds %struct.lexer, ptr %8, i32 0, i32 3, !dbg !2769
  %10 = load ptr, ptr %9, align 8, !dbg !2769
  %11 = icmp uge ptr %7, %10, !dbg !2770
  br i1 %11, label %12, label %13, !dbg !2771

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4, !dbg !2772
  br label %24, !dbg !2772

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2773, metadata !DIExpression()), !dbg !2774
  %14 = load ptr, ptr %3, align 8, !dbg !2775
  %15 = getelementptr inbounds %struct.lexer, ptr %14, i32 0, i32 2, !dbg !2776
  %16 = load ptr, ptr %15, align 8, !dbg !2776
  %17 = load i8, ptr %16, align 1, !dbg !2777
  %18 = sext i8 %17 to i32, !dbg !2777
  store i32 %18, ptr %4, align 4, !dbg !2774
  %19 = load ptr, ptr %3, align 8, !dbg !2778
  %20 = getelementptr inbounds %struct.lexer, ptr %19, i32 0, i32 2, !dbg !2779
  %21 = load ptr, ptr %20, align 8, !dbg !2780
  %22 = getelementptr inbounds i8, ptr %21, i32 1, !dbg !2780
  store ptr %22, ptr %20, align 8, !dbg !2780
  %23 = load i32, ptr %4, align 4, !dbg !2781
  store i32 %23, ptr %2, align 4, !dbg !2782
  br label %24, !dbg !2782

24:                                               ; preds = %13, %12
  %25 = load i32, ptr %2, align 4, !dbg !2783
  ret i32 %25, !dbg !2783
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emit_item(ptr noundef %0, ptr noundef %1) #0 !dbg !2784 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2787, metadata !DIExpression()), !dbg !2788
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2789, metadata !DIExpression()), !dbg !2790
  %5 = load ptr, ptr %3, align 8, !dbg !2791
  %6 = getelementptr inbounds %struct.lexer, ptr %5, i32 0, i32 4, !dbg !2792
  %7 = getelementptr inbounds %struct.anon.0, ptr %6, i32 0, i32 0, !dbg !2793
  %8 = load ptr, ptr %3, align 8, !dbg !2794
  %9 = getelementptr inbounds %struct.lexer, ptr %8, i32 0, i32 4, !dbg !2795
  %10 = getelementptr inbounds %struct.anon.0, ptr %9, i32 0, i32 2, !dbg !2796
  %11 = load i64, ptr %10, align 8, !dbg !2796
  %12 = getelementptr inbounds [4 x %struct.item], ptr %7, i64 0, i64 %11, !dbg !2791
  %13 = load ptr, ptr %4, align 8, !dbg !2797
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %12, ptr align 8 %13, i64 24, i1 false), !dbg !2798
  %14 = load ptr, ptr %3, align 8, !dbg !2799
  %15 = getelementptr inbounds %struct.lexer, ptr %14, i32 0, i32 4, !dbg !2800
  %16 = getelementptr inbounds %struct.anon.0, ptr %15, i32 0, i32 2, !dbg !2801
  %17 = load i64, ptr %16, align 8, !dbg !2801
  %18 = add i64 %17, 1, !dbg !2802
  %19 = urem i64 %18, 4, !dbg !2803
  %20 = load ptr, ptr %3, align 8, !dbg !2804
  %21 = getelementptr inbounds %struct.lexer, ptr %20, i32 0, i32 4, !dbg !2805
  %22 = getelementptr inbounds %struct.anon.0, ptr %21, i32 0, i32 2, !dbg !2806
  store i64 %19, ptr %22, align 8, !dbg !2807
  %23 = load ptr, ptr %3, align 8, !dbg !2808
  %24 = getelementptr inbounds %struct.lexer, ptr %23, i32 0, i32 4, !dbg !2809
  %25 = getelementptr inbounds %struct.anon.0, ptr %24, i32 0, i32 3, !dbg !2810
  %26 = load i64, ptr %25, align 8, !dbg !2811
  %27 = add i64 %26, 1, !dbg !2811
  store i64 %27, ptr %25, align 8, !dbg !2811
  %28 = load ptr, ptr %3, align 8, !dbg !2812
  %29 = getelementptr inbounds %struct.lexer, ptr %28, i32 0, i32 2, !dbg !2813
  %30 = load ptr, ptr %29, align 8, !dbg !2813
  %31 = load ptr, ptr %3, align 8, !dbg !2814
  %32 = getelementptr inbounds %struct.lexer, ptr %31, i32 0, i32 1, !dbg !2815
  store ptr %30, ptr %32, align 8, !dbg !2816
  ret void, !dbg !2817
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_comment(ptr noundef %0) #0 !dbg !2818 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2821, metadata !DIExpression()), !dbg !2822
  %6 = call i64 @strlen(ptr noundef @left_meta) #16, !dbg !2823
  store i64 %6, ptr %4, align 8, !dbg !2822
  br label %7, !dbg !2824

7:                                                ; preds = %30, %1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2825, metadata !DIExpression()), !dbg !2827
  %8 = load ptr, ptr %3, align 8, !dbg !2828
  %9 = call i32 @next(ptr noundef %8), !dbg !2829
  store i32 %9, ptr %5, align 4, !dbg !2827
  %10 = load i32, ptr %5, align 4, !dbg !2830
  %11 = icmp eq i32 %10, 123, !dbg !2832
  br i1 %11, label %12, label %15, !dbg !2833

12:                                               ; preds = %7
  %13 = load i64, ptr %4, align 8, !dbg !2834
  %14 = add i64 %13, 1, !dbg !2834
  store i64 %14, ptr %4, align 8, !dbg !2834
  br label %29, !dbg !2835

15:                                               ; preds = %7
  %16 = load i32, ptr %5, align 4, !dbg !2836
  %17 = icmp eq i32 %16, 125, !dbg !2838
  br i1 %17, label %18, label %21, !dbg !2839

18:                                               ; preds = %15
  %19 = load i64, ptr %4, align 8, !dbg !2840
  %20 = add i64 %19, -1, !dbg !2840
  store i64 %20, ptr %4, align 8, !dbg !2840
  br label %28, !dbg !2841

21:                                               ; preds = %15
  %22 = load i32, ptr %5, align 4, !dbg !2842
  %23 = icmp eq i32 %22, -1, !dbg !2844
  br i1 %23, label %24, label %27, !dbg !2845

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !dbg !2846
  %26 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %25, ptr noundef @.str.39), !dbg !2847
  store ptr %26, ptr %2, align 8, !dbg !2848
  br label %35, !dbg !2848

27:                                               ; preds = %21
  br label %28

28:                                               ; preds = %27, %18
  br label %29

29:                                               ; preds = %28, %12
  br label %30, !dbg !2849

30:                                               ; preds = %29
  %31 = load i64, ptr %4, align 8, !dbg !2850
  %32 = icmp ne i64 %31, 0, !dbg !2849
  br i1 %32, label %7, label %33, !dbg !2849, !llvm.loop !2851

33:                                               ; preds = %30
  %34 = load ptr, ptr %3, align 8, !dbg !2853
  call void @ignore(ptr noundef %34), !dbg !2854
  store ptr @lex_text, ptr %2, align 8, !dbg !2855
  br label %35, !dbg !2855

35:                                               ; preds = %33, %24
  %36 = load ptr, ptr %2, align 8, !dbg !2856
  ret ptr %36, !dbg !2856
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @backup(ptr noundef %0) #0 !dbg !2857 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2860, metadata !DIExpression()), !dbg !2861
  %3 = load ptr, ptr %2, align 8, !dbg !2862
  %4 = getelementptr inbounds %struct.lexer, ptr %3, i32 0, i32 2, !dbg !2863
  %5 = load ptr, ptr %4, align 8, !dbg !2864
  %6 = getelementptr inbounds i8, ptr %5, i32 -1, !dbg !2864
  store ptr %6, ptr %4, align 8, !dbg !2864
  ret void, !dbg !2865
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_inside_action(ptr noundef %0) #0 !dbg !2866 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2867, metadata !DIExpression()), !dbg !2868
  br label %5, !dbg !2869

5:                                                ; preds = %1, %92
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2870, metadata !DIExpression()), !dbg !2872
  %6 = load ptr, ptr %3, align 8, !dbg !2873
  %7 = getelementptr inbounds %struct.lexer, ptr %6, i32 0, i32 2, !dbg !2875
  %8 = load ptr, ptr %7, align 8, !dbg !2875
  %9 = call i64 @strlen(ptr noundef @right_meta) #16, !dbg !2876
  %10 = call i32 @strncmp(ptr noundef %8, ptr noundef @right_meta, i64 noundef %9) #16, !dbg !2877
  %11 = icmp ne i32 %10, 0, !dbg !2877
  br i1 %11, label %13, label %12, !dbg !2878

12:                                               ; preds = %5
  store ptr @lex_right_meta, ptr %2, align 8, !dbg !2879
  br label %93, !dbg !2879

13:                                               ; preds = %5
  %14 = load ptr, ptr %3, align 8, !dbg !2880
  %15 = call i32 @next(ptr noundef %14), !dbg !2881
  store i32 %15, ptr %4, align 4, !dbg !2882
  %16 = load i32, ptr %4, align 4, !dbg !2883
  %17 = icmp eq i32 %16, -1, !dbg !2885
  br i1 %17, label %18, label %21, !dbg !2886

18:                                               ; preds = %13
  %19 = load ptr, ptr %3, align 8, !dbg !2887
  %20 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %19, ptr noundef @.str.40), !dbg !2888
  store ptr %20, ptr %2, align 8, !dbg !2889
  br label %93, !dbg !2889

21:                                               ; preds = %13
  %22 = load i32, ptr %4, align 4, !dbg !2890
  %23 = icmp eq i32 %22, 10, !dbg !2892
  br i1 %23, label %24, label %27, !dbg !2893

24:                                               ; preds = %21
  %25 = load ptr, ptr %3, align 8, !dbg !2894
  %26 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %25, ptr noundef @.str.41), !dbg !2895
  store ptr %26, ptr %2, align 8, !dbg !2896
  br label %93, !dbg !2896

27:                                               ; preds = %21
  %28 = call ptr @__ctype_b_loc() #18, !dbg !2897
  %29 = load ptr, ptr %28, align 8, !dbg !2897
  %30 = load i32, ptr %4, align 4, !dbg !2897
  %31 = sext i32 %30 to i64, !dbg !2897
  %32 = getelementptr inbounds i16, ptr %29, i64 %31, !dbg !2897
  %33 = load i16, ptr %32, align 2, !dbg !2897
  %34 = zext i16 %33 to i32, !dbg !2897
  %35 = and i32 %34, 8192, !dbg !2897
  %36 = icmp ne i32 %35, 0, !dbg !2897
  br i1 %36, label %37, label %39, !dbg !2899

37:                                               ; preds = %27
  %38 = load ptr, ptr %3, align 8, !dbg !2900
  call void @ignore(ptr noundef %38), !dbg !2902
  br label %92, !dbg !2903

39:                                               ; preds = %27
  %40 = load i32, ptr %4, align 4, !dbg !2904
  %41 = icmp eq i32 %40, 35, !dbg !2906
  br i1 %41, label %42, label %44, !dbg !2907

42:                                               ; preds = %39
  %43 = load ptr, ptr %3, align 8, !dbg !2908
  call void @emit(ptr noundef %43, i32 noundef 4), !dbg !2910
  br label %91, !dbg !2911

44:                                               ; preds = %39
  %45 = load i32, ptr %4, align 4, !dbg !2912
  %46 = icmp eq i32 %45, 47, !dbg !2914
  br i1 %46, label %47, label %49, !dbg !2915

47:                                               ; preds = %44
  %48 = load ptr, ptr %3, align 8, !dbg !2916
  call void @emit(ptr noundef %48, i32 noundef 7), !dbg !2918
  br label %90, !dbg !2919

49:                                               ; preds = %44
  %50 = load i32, ptr %4, align 4, !dbg !2920
  %51 = icmp eq i32 %50, 63, !dbg !2922
  br i1 %51, label %52, label %54, !dbg !2923

52:                                               ; preds = %49
  %53 = load ptr, ptr %3, align 8, !dbg !2924
  call void @emit(ptr noundef %53, i32 noundef 8), !dbg !2926
  br label %89, !dbg !2927

54:                                               ; preds = %49
  %55 = load i32, ptr %4, align 4, !dbg !2928
  %56 = icmp eq i32 %55, 94, !dbg !2930
  br i1 %56, label %57, label %59, !dbg !2931

57:                                               ; preds = %54
  %58 = load ptr, ptr %3, align 8, !dbg !2932
  call void @emit(ptr noundef %58, i32 noundef 9), !dbg !2934
  br label %88, !dbg !2935

59:                                               ; preds = %54
  %60 = load i32, ptr %4, align 4, !dbg !2936
  %61 = icmp eq i32 %60, 62, !dbg !2938
  br i1 %61, label %62, label %64, !dbg !2939

62:                                               ; preds = %59
  %63 = load ptr, ptr %3, align 8, !dbg !2940
  call void @emit(ptr noundef %63, i32 noundef 10), !dbg !2942
  br label %87, !dbg !2943

64:                                               ; preds = %59
  %65 = load i32, ptr %4, align 4, !dbg !2944
  %66 = icmp eq i32 %65, 123, !dbg !2946
  br i1 %66, label %67, label %68, !dbg !2947

67:                                               ; preds = %64
  store ptr @lex_quoted_identifier, ptr %2, align 8, !dbg !2948
  br label %93, !dbg !2948

68:                                               ; preds = %64
  %69 = call ptr @__ctype_b_loc() #18, !dbg !2950
  %70 = load ptr, ptr %69, align 8, !dbg !2950
  %71 = load i32, ptr %4, align 4, !dbg !2950
  %72 = sext i32 %71 to i64, !dbg !2950
  %73 = getelementptr inbounds i16, ptr %70, i64 %72, !dbg !2950
  %74 = load i16, ptr %73, align 2, !dbg !2950
  %75 = zext i16 %74 to i32, !dbg !2950
  %76 = and i32 %75, 8, !dbg !2950
  %77 = icmp ne i32 %76, 0, !dbg !2950
  br i1 %77, label %81, label %78, !dbg !2952

78:                                               ; preds = %68
  %79 = load i32, ptr %4, align 4, !dbg !2953
  %80 = icmp eq i32 %79, 95, !dbg !2954
  br i1 %80, label %81, label %83, !dbg !2955

81:                                               ; preds = %78, %68
  %82 = load ptr, ptr %3, align 8, !dbg !2956
  call void @backup(ptr noundef %82), !dbg !2958
  store ptr @lex_identifier, ptr %2, align 8, !dbg !2959
  br label %93, !dbg !2959

83:                                               ; preds = %78
  %84 = load ptr, ptr %3, align 8, !dbg !2960
  %85 = load i32, ptr %4, align 4, !dbg !2962
  %86 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %84, ptr noundef @.str.42, i32 noundef %85), !dbg !2963
  store ptr %86, ptr %2, align 8, !dbg !2964
  br label %93, !dbg !2964

87:                                               ; preds = %62
  br label %88

88:                                               ; preds = %87, %57
  br label %89

89:                                               ; preds = %88, %52
  br label %90

90:                                               ; preds = %89, %47
  br label %91

91:                                               ; preds = %90, %42
  br label %92

92:                                               ; preds = %91, %37
  br label %5, !dbg !2869, !llvm.loop !2965

93:                                               ; preds = %83, %81, %67, %24, %18, %12
  %94 = load ptr, ptr %2, align 8, !dbg !2967
  ret ptr %94, !dbg !2967
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ignore(ptr noundef %0) #0 !dbg !2968 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2969, metadata !DIExpression()), !dbg !2970
  %3 = load ptr, ptr %2, align 8, !dbg !2971
  %4 = getelementptr inbounds %struct.lexer, ptr %3, i32 0, i32 2, !dbg !2972
  %5 = load ptr, ptr %4, align 8, !dbg !2972
  %6 = load ptr, ptr %2, align 8, !dbg !2973
  %7 = getelementptr inbounds %struct.lexer, ptr %6, i32 0, i32 1, !dbg !2974
  store ptr %5, ptr %7, align 8, !dbg !2975
  ret void, !dbg !2976
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_right_meta(ptr noundef %0) #0 !dbg !2977 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2978, metadata !DIExpression()), !dbg !2979
  %3 = call i64 @strlen(ptr noundef @right_meta) #16, !dbg !2980
  %4 = load ptr, ptr %2, align 8, !dbg !2981
  %5 = getelementptr inbounds %struct.lexer, ptr %4, i32 0, i32 2, !dbg !2982
  %6 = load ptr, ptr %5, align 8, !dbg !2983
  %7 = getelementptr inbounds i8, ptr %6, i64 %3, !dbg !2983
  store ptr %7, ptr %5, align 8, !dbg !2983
  %8 = load ptr, ptr %2, align 8, !dbg !2984
  call void @emit(ptr noundef %8, i32 noundef 5), !dbg !2985
  ret ptr @lex_text, !dbg !2986
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() #10

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_quoted_identifier(ptr noundef %0) #0 !dbg !2987 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2988, metadata !DIExpression()), !dbg !2989
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2990, metadata !DIExpression()), !dbg !2991
  %5 = load ptr, ptr %3, align 8, !dbg !2992
  call void @emit(ptr noundef %5, i32 noundef 11), !dbg !2993
  %6 = load ptr, ptr %3, align 8, !dbg !2994
  %7 = call ptr @lex_identifier(ptr noundef %6), !dbg !2995
  %8 = load ptr, ptr %3, align 8, !dbg !2996
  %9 = call i32 @next(ptr noundef %8), !dbg !2997
  store i32 %9, ptr %4, align 4, !dbg !2998
  %10 = load i32, ptr %4, align 4, !dbg !2999
  %11 = icmp ne i32 %10, 125, !dbg !3001
  br i1 %11, label %12, label %16, !dbg !3002

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !3003
  %14 = load i32, ptr %4, align 4, !dbg !3004
  %15 = call ptr (ptr, ptr, ...) @lex_error(ptr noundef %13, ptr noundef @.str.43, i32 noundef %14), !dbg !3005
  store ptr %15, ptr %2, align 8, !dbg !3006
  br label %18, !dbg !3006

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8, !dbg !3007
  call void @emit(ptr noundef %17, i32 noundef 12), !dbg !3008
  store ptr @lex_inside_action, ptr %2, align 8, !dbg !3009
  br label %18, !dbg !3009

18:                                               ; preds = %16, %12
  %19 = load ptr, ptr %2, align 8, !dbg !3010
  ret ptr %19, !dbg !3010
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lex_identifier(ptr noundef %0) #0 !dbg !3011 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3012, metadata !DIExpression()), !dbg !3013
  br label %3, !dbg !3014

3:                                                ; preds = %7, %1
  %4 = load ptr, ptr %2, align 8, !dbg !3015
  %5 = call i32 @next(ptr noundef %4), !dbg !3016
  %6 = call zeroext i1 @isident(i32 noundef %5), !dbg !3017
  br i1 %6, label %7, label %8, !dbg !3014

7:                                                ; preds = %3
  br label %3, !dbg !3014, !llvm.loop !3018

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !dbg !3020
  call void @backup(ptr noundef %9), !dbg !3021
  %10 = load ptr, ptr %2, align 8, !dbg !3022
  call void @emit(ptr noundef %10, i32 noundef 2), !dbg !3023
  ret ptr @lex_inside_action, !dbg !3024
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @isident(i32 noundef %0) #0 !dbg !3025 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !3028, metadata !DIExpression()), !dbg !3029
  %3 = call ptr @__ctype_b_loc() #18, !dbg !3030
  %4 = load ptr, ptr %3, align 8, !dbg !3030
  %5 = load i32, ptr %2, align 4, !dbg !3030
  %6 = sext i32 %5 to i64, !dbg !3030
  %7 = getelementptr inbounds i16, ptr %4, i64 %6, !dbg !3030
  %8 = load i16, ptr %7, align 2, !dbg !3030
  %9 = zext i16 %8 to i32, !dbg !3030
  %10 = and i32 %9, 8, !dbg !3030
  %11 = icmp ne i32 %10, 0, !dbg !3030
  br i1 %11, label %18, label %12, !dbg !3031

12:                                               ; preds = %1
  %13 = load i32, ptr %2, align 4, !dbg !3032
  %14 = icmp eq i32 %13, 95, !dbg !3033
  br i1 %14, label %18, label %15, !dbg !3034

15:                                               ; preds = %12
  %16 = load i32, ptr %2, align 4, !dbg !3035
  %17 = icmp eq i32 %16, 46, !dbg !3036
  br label %18, !dbg !3034

18:                                               ; preds = %15, %12, %1
  %19 = phi i1 [ true, %12 ], [ true, %1 ], [ %17, %15 ]
  ret i1 %19, !dbg !3037
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @consume_item(ptr noundef %0, ptr noundef %1) #0 !dbg !3038 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3039, metadata !DIExpression()), !dbg !3040
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3041, metadata !DIExpression()), !dbg !3042
  %6 = load ptr, ptr %4, align 8, !dbg !3043
  %7 = getelementptr inbounds %struct.lexer, ptr %6, i32 0, i32 4, !dbg !3045
  %8 = getelementptr inbounds %struct.anon.0, ptr %7, i32 0, i32 3, !dbg !3046
  %9 = load i64, ptr %8, align 8, !dbg !3046
  %10 = icmp ne i64 %9, 0, !dbg !3043
  br i1 %10, label %12, label %11, !dbg !3047

11:                                               ; preds = %2
  store i1 false, ptr %3, align 1, !dbg !3048
  br label %36, !dbg !3048

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !3049
  %14 = getelementptr inbounds %struct.lexer, ptr %13, i32 0, i32 4, !dbg !3050
  %15 = getelementptr inbounds %struct.anon.0, ptr %14, i32 0, i32 0, !dbg !3051
  %16 = load ptr, ptr %4, align 8, !dbg !3052
  %17 = getelementptr inbounds %struct.lexer, ptr %16, i32 0, i32 4, !dbg !3053
  %18 = getelementptr inbounds %struct.anon.0, ptr %17, i32 0, i32 1, !dbg !3054
  %19 = load i64, ptr %18, align 8, !dbg !3054
  %20 = getelementptr inbounds [4 x %struct.item], ptr %15, i64 0, i64 %19, !dbg !3049
  %21 = load ptr, ptr %5, align 8, !dbg !3055
  store ptr %20, ptr %21, align 8, !dbg !3056
  %22 = load ptr, ptr %4, align 8, !dbg !3057
  %23 = getelementptr inbounds %struct.lexer, ptr %22, i32 0, i32 4, !dbg !3058
  %24 = getelementptr inbounds %struct.anon.0, ptr %23, i32 0, i32 1, !dbg !3059
  %25 = load i64, ptr %24, align 8, !dbg !3059
  %26 = add i64 %25, 1, !dbg !3060
  %27 = urem i64 %26, 4, !dbg !3061
  %28 = load ptr, ptr %4, align 8, !dbg !3062
  %29 = getelementptr inbounds %struct.lexer, ptr %28, i32 0, i32 4, !dbg !3063
  %30 = getelementptr inbounds %struct.anon.0, ptr %29, i32 0, i32 1, !dbg !3064
  store i64 %27, ptr %30, align 8, !dbg !3065
  %31 = load ptr, ptr %4, align 8, !dbg !3066
  %32 = getelementptr inbounds %struct.lexer, ptr %31, i32 0, i32 4, !dbg !3067
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 3, !dbg !3068
  %34 = load i64, ptr %33, align 8, !dbg !3069
  %35 = add i64 %34, -1, !dbg !3069
  store i64 %35, ptr %33, align 8, !dbg !3069
  store i1 true, ptr %3, align 1, !dbg !3070
  br label %36, !dbg !3070

36:                                               ; preds = %12, %11
  %37 = load i1, ptr %3, align 1, !dbg !3071
  ret i1 %37, !dbg !3071
}

declare void @lwan_status_error_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_to_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !3072 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3075, metadata !DIExpression()), !dbg !3076
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3077, metadata !DIExpression()), !dbg !3078
  %5 = load ptr, ptr %3, align 8, !dbg !3079
  %6 = load i64, ptr %4, align 8, !dbg !3080
  %7 = sub i64 0, %6, !dbg !3081
  %8 = getelementptr inbounds i8, ptr %5, i64 %7, !dbg !3081
  ret ptr %8, !dbg !3082
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_from_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !3083 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3088, metadata !DIExpression()), !dbg !3089
  %5 = load ptr, ptr %3, align 8, !dbg !3090
  %6 = load i64, ptr %4, align 8, !dbg !3091
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !3092
  ret ptr %7, !dbg !3093
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @post_process_template(ptr noundef %0) #0 !dbg !3094 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata ptr %4, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.declare(metadata ptr %5, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata ptr %6, metadata !3103, metadata !DIExpression()), !dbg !3104
  store i64 0, ptr %4, align 8, !dbg !3105
  br label %13, !dbg !3107

13:                                               ; preds = %225, %1
  %14 = load i64, ptr %4, align 8, !dbg !3108
  %15 = load ptr, ptr %3, align 8, !dbg !3110
  %16 = getelementptr inbounds %struct.parser, ptr %15, i32 0, i32 6, !dbg !3111
  %17 = getelementptr inbounds %struct.anon.2, ptr %16, i32 0, i32 1, !dbg !3112
  %18 = load i64, ptr %17, align 8, !dbg !3112
  %19 = icmp ult i64 %14, %18, !dbg !3113
  br i1 %19, label %20, label %228, !dbg !3114

20:                                               ; preds = %13
  call void @llvm.dbg.declare(metadata ptr %7, metadata !3115, metadata !DIExpression()), !dbg !3117
  %21 = load ptr, ptr %3, align 8, !dbg !3118
  %22 = getelementptr inbounds %struct.parser, ptr %21, i32 0, i32 6, !dbg !3119
  %23 = getelementptr inbounds %struct.anon.2, ptr %22, i32 0, i32 0, !dbg !3120
  %24 = load ptr, ptr %23, align 8, !dbg !3120
  %25 = load i64, ptr %4, align 8, !dbg !3121
  %26 = getelementptr inbounds %struct.chunk, ptr %24, i64 %25, !dbg !3118
  store ptr %26, ptr %7, align 8, !dbg !3117
  %27 = load ptr, ptr %7, align 8, !dbg !3122
  %28 = getelementptr inbounds %struct.chunk, ptr %27, i32 0, i32 0, !dbg !3124
  %29 = load i32, ptr %28, align 8, !dbg !3124
  %30 = icmp eq i32 %29, 7, !dbg !3125
  br i1 %30, label %31, label %88, !dbg !3126

31:                                               ; preds = %20
  %32 = load ptr, ptr %7, align 8, !dbg !3127
  store ptr %32, ptr %5, align 8, !dbg !3130
  br label %33, !dbg !3131

33:                                               ; preds = %54, %31
  %34 = load ptr, ptr %7, align 8, !dbg !3132
  %35 = getelementptr inbounds %struct.chunk, ptr %34, i32 0, i32 0, !dbg !3136
  %36 = load i32, ptr %35, align 8, !dbg !3136
  %37 = icmp eq i32 %36, 10, !dbg !3137
  br i1 %37, label %38, label %39, !dbg !3138

38:                                               ; preds = %33
  br label %57, !dbg !3139

39:                                               ; preds = %33
  %40 = load ptr, ptr %7, align 8, !dbg !3140
  %41 = getelementptr inbounds %struct.chunk, ptr %40, i32 0, i32 0, !dbg !3142
  %42 = load i32, ptr %41, align 8, !dbg !3142
  %43 = icmp eq i32 %42, 8, !dbg !3143
  br i1 %43, label %44, label %53, !dbg !3144

44:                                               ; preds = %39
  %45 = load ptr, ptr %7, align 8, !dbg !3145
  %46 = getelementptr inbounds %struct.chunk, ptr %45, i32 0, i32 1, !dbg !3146
  %47 = load ptr, ptr %46, align 8, !dbg !3146
  %48 = load ptr, ptr %5, align 8, !dbg !3147
  %49 = getelementptr inbounds %struct.chunk, ptr %48, i32 0, i32 1, !dbg !3148
  %50 = load ptr, ptr %49, align 8, !dbg !3148
  %51 = icmp eq ptr %47, %50, !dbg !3149
  br i1 %51, label %52, label %53, !dbg !3150

52:                                               ; preds = %44
  br label %57, !dbg !3151

53:                                               ; preds = %44, %39
  br label %54, !dbg !3152

54:                                               ; preds = %53
  %55 = load ptr, ptr %7, align 8, !dbg !3153
  %56 = getelementptr inbounds %struct.chunk, ptr %55, i32 1, !dbg !3153
  store ptr %56, ptr %7, align 8, !dbg !3153
  br label %33, !dbg !3154, !llvm.loop !3155

57:                                               ; preds = %52, %38
  call void @llvm.dbg.declare(metadata ptr %8, metadata !3158, metadata !DIExpression()), !dbg !3159
  %58 = call noalias ptr @malloc(i64 noundef 16) #17, !dbg !3160
  store ptr %58, ptr %8, align 8, !dbg !3159
  %59 = load ptr, ptr %8, align 8, !dbg !3161
  %60 = icmp ne ptr %59, null, !dbg !3161
  br i1 %60, label %62, label %61, !dbg !3163

61:                                               ; preds = %57
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.7, i32 noundef 944, ptr noundef @__FUNCTION__.post_process_template, ptr noundef @.str.49) #15, !dbg !3164
  unreachable, !dbg !3164

62:                                               ; preds = %57
  %63 = load ptr, ptr %5, align 8, !dbg !3165
  %64 = getelementptr inbounds %struct.chunk, ptr %63, i32 0, i32 1, !dbg !3166
  %65 = load ptr, ptr %64, align 8, !dbg !3166
  %66 = load ptr, ptr %8, align 8, !dbg !3167
  %67 = getelementptr inbounds %struct.chunk_descriptor, ptr %66, i32 0, i32 1, !dbg !3168
  store ptr %65, ptr %67, align 8, !dbg !3169
  %68 = load ptr, ptr %7, align 8, !dbg !3170
  %69 = load ptr, ptr %8, align 8, !dbg !3171
  %70 = getelementptr inbounds %struct.chunk_descriptor, ptr %69, i32 0, i32 0, !dbg !3172
  store ptr %68, ptr %70, align 8, !dbg !3173
  %71 = load ptr, ptr %8, align 8, !dbg !3174
  %72 = load ptr, ptr %5, align 8, !dbg !3175
  %73 = getelementptr inbounds %struct.chunk, ptr %72, i32 0, i32 1, !dbg !3176
  store ptr %71, ptr %73, align 8, !dbg !3177
  %74 = load ptr, ptr %5, align 8, !dbg !3178
  %75 = getelementptr inbounds %struct.chunk, ptr %74, i32 0, i32 2, !dbg !3179
  %76 = load i32, ptr %75, align 8, !dbg !3180
  %77 = and i32 %76, -5, !dbg !3180
  store i32 %77, ptr %75, align 8, !dbg !3180
  %78 = load ptr, ptr %5, align 8, !dbg !3181
  %79 = load ptr, ptr %3, align 8, !dbg !3181
  %80 = getelementptr inbounds %struct.parser, ptr %79, i32 0, i32 6, !dbg !3181
  %81 = getelementptr inbounds %struct.anon.2, ptr %80, i32 0, i32 0, !dbg !3181
  %82 = load ptr, ptr %81, align 8, !dbg !3181
  %83 = ptrtoint ptr %78 to i64, !dbg !3181
  %84 = ptrtoint ptr %82 to i64, !dbg !3181
  %85 = sub i64 %83, %84, !dbg !3181
  %86 = sdiv exact i64 %85, 24, !dbg !3181
  %87 = add i64 %86, 1, !dbg !3182
  store i64 %87, ptr %4, align 8, !dbg !3183
  br label %224, !dbg !3184

88:                                               ; preds = %20
  %89 = load ptr, ptr %7, align 8, !dbg !3185
  %90 = getelementptr inbounds %struct.chunk, ptr %89, i32 0, i32 0, !dbg !3187
  %91 = load i32, ptr %90, align 8, !dbg !3187
  %92 = icmp eq i32 %91, 5, !dbg !3188
  br i1 %92, label %93, label %167, !dbg !3189

93:                                               ; preds = %88
  call void @llvm.dbg.declare(metadata ptr %9, metadata !3190, metadata !DIExpression()), !dbg !3192
  %94 = load ptr, ptr %7, align 8, !dbg !3193
  %95 = getelementptr inbounds %struct.chunk, ptr %94, i32 0, i32 2, !dbg !3194
  %96 = load i32, ptr %95, align 8, !dbg !3194
  store i32 %96, ptr %9, align 4, !dbg !3192
  %97 = load ptr, ptr %7, align 8, !dbg !3195
  store ptr %97, ptr %5, align 8, !dbg !3197
  br label %98, !dbg !3198

98:                                               ; preds = %122, %93
  %99 = load ptr, ptr %7, align 8, !dbg !3199
  %100 = getelementptr inbounds %struct.chunk, ptr %99, i32 0, i32 0, !dbg !3203
  %101 = load i32, ptr %100, align 8, !dbg !3203
  %102 = icmp eq i32 %101, 10, !dbg !3204
  br i1 %102, label %103, label %104, !dbg !3205

103:                                              ; preds = %98
  br label %125, !dbg !3206

104:                                              ; preds = %98
  %105 = load ptr, ptr %7, align 8, !dbg !3207
  %106 = getelementptr inbounds %struct.chunk, ptr %105, i32 0, i32 0, !dbg !3209
  %107 = load i32, ptr %106, align 8, !dbg !3209
  %108 = icmp eq i32 %107, 6, !dbg !3210
  br i1 %108, label %109, label %121, !dbg !3211

109:                                              ; preds = %104
  %110 = load ptr, ptr %7, align 8, !dbg !3212
  %111 = getelementptr inbounds %struct.chunk, ptr %110, i32 0, i32 1, !dbg !3213
  %112 = load ptr, ptr %111, align 8, !dbg !3213
  %113 = load ptr, ptr %5, align 8, !dbg !3214
  %114 = icmp eq ptr %112, %113, !dbg !3215
  br i1 %114, label %115, label %121, !dbg !3216

115:                                              ; preds = %109
  %116 = load i32, ptr %9, align 4, !dbg !3217
  %117 = load ptr, ptr %7, align 8, !dbg !3219
  %118 = getelementptr inbounds %struct.chunk, ptr %117, i32 0, i32 2, !dbg !3220
  %119 = load i32, ptr %118, align 8, !dbg !3221
  %120 = or i32 %119, %116, !dbg !3221
  store i32 %120, ptr %118, align 8, !dbg !3221
  br label %125, !dbg !3222

121:                                              ; preds = %109, %104
  br label %122, !dbg !3223

122:                                              ; preds = %121
  %123 = load ptr, ptr %7, align 8, !dbg !3224
  %124 = getelementptr inbounds %struct.chunk, ptr %123, i32 1, !dbg !3224
  store ptr %124, ptr %7, align 8, !dbg !3224
  br label %98, !dbg !3225, !llvm.loop !3226

125:                                              ; preds = %115, %103
  call void @llvm.dbg.declare(metadata ptr %10, metadata !3229, metadata !DIExpression()), !dbg !3230
  %126 = call noalias ptr @malloc(i64 noundef 16) #17, !dbg !3231
  store ptr %126, ptr %10, align 8, !dbg !3230
  %127 = load ptr, ptr %10, align 8, !dbg !3232
  %128 = icmp ne ptr %127, null, !dbg !3232
  br i1 %128, label %130, label %129, !dbg !3234

129:                                              ; preds = %125
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.7, i32 noundef 966, ptr noundef @__FUNCTION__.post_process_template, ptr noundef @.str.49) #15, !dbg !3235
  unreachable, !dbg !3235

130:                                              ; preds = %125
  %131 = load ptr, ptr %5, align 8, !dbg !3236
  %132 = getelementptr inbounds %struct.chunk, ptr %131, i32 0, i32 1, !dbg !3237
  %133 = load ptr, ptr %132, align 8, !dbg !3237
  %134 = load ptr, ptr %10, align 8, !dbg !3238
  %135 = getelementptr inbounds %struct.chunk_descriptor, ptr %134, i32 0, i32 1, !dbg !3239
  store ptr %133, ptr %135, align 8, !dbg !3240
  %136 = load ptr, ptr %10, align 8, !dbg !3241
  %137 = load ptr, ptr %5, align 8, !dbg !3242
  %138 = getelementptr inbounds %struct.chunk, ptr %137, i32 0, i32 1, !dbg !3243
  store ptr %136, ptr %138, align 8, !dbg !3244
  %139 = load ptr, ptr %5, align 8, !dbg !3245
  %140 = getelementptr inbounds %struct.chunk, ptr %139, i32 0, i32 2, !dbg !3246
  %141 = load i32, ptr %140, align 8, !dbg !3247
  %142 = and i32 %141, -5, !dbg !3247
  store i32 %142, ptr %140, align 8, !dbg !3247
  %143 = load ptr, ptr %7, align 8, !dbg !3248
  %144 = getelementptr inbounds %struct.chunk, ptr %143, i32 0, i32 0, !dbg !3250
  %145 = load i32, ptr %144, align 8, !dbg !3250
  %146 = icmp eq i32 %145, 10, !dbg !3251
  br i1 %146, label %147, label %151, !dbg !3252

147:                                              ; preds = %130
  %148 = load ptr, ptr %7, align 8, !dbg !3253
  %149 = load ptr, ptr %10, align 8, !dbg !3254
  %150 = getelementptr inbounds %struct.chunk_descriptor, ptr %149, i32 0, i32 0, !dbg !3255
  store ptr %148, ptr %150, align 8, !dbg !3256
  br label %156, !dbg !3254

151:                                              ; preds = %130
  %152 = load ptr, ptr %7, align 8, !dbg !3257
  %153 = getelementptr inbounds %struct.chunk, ptr %152, i64 1, !dbg !3258
  %154 = load ptr, ptr %10, align 8, !dbg !3259
  %155 = getelementptr inbounds %struct.chunk_descriptor, ptr %154, i32 0, i32 0, !dbg !3260
  store ptr %153, ptr %155, align 8, !dbg !3261
  br label %156

156:                                              ; preds = %151, %147
  %157 = load ptr, ptr %5, align 8, !dbg !3262
  %158 = load ptr, ptr %3, align 8, !dbg !3262
  %159 = getelementptr inbounds %struct.parser, ptr %158, i32 0, i32 6, !dbg !3262
  %160 = getelementptr inbounds %struct.anon.2, ptr %159, i32 0, i32 0, !dbg !3262
  %161 = load ptr, ptr %160, align 8, !dbg !3262
  %162 = ptrtoint ptr %157 to i64, !dbg !3262
  %163 = ptrtoint ptr %161 to i64, !dbg !3262
  %164 = sub i64 %162, %163, !dbg !3262
  %165 = sdiv exact i64 %164, 24, !dbg !3262
  %166 = add i64 %165, 1, !dbg !3263
  store i64 %166, ptr %4, align 8, !dbg !3264
  br label %223, !dbg !3265

167:                                              ; preds = %88
  %168 = load ptr, ptr %7, align 8, !dbg !3266
  %169 = getelementptr inbounds %struct.chunk, ptr %168, i32 0, i32 0, !dbg !3268
  %170 = load i32, ptr %169, align 8, !dbg !3268
  %171 = icmp eq i32 %170, 2, !dbg !3269
  br i1 %171, label %172, label %215, !dbg !3270

172:                                              ; preds = %167
  call void @llvm.dbg.declare(metadata ptr %11, metadata !3271, metadata !DIExpression()), !dbg !3273
  %173 = load ptr, ptr %7, align 8, !dbg !3274
  %174 = getelementptr inbounds %struct.chunk, ptr %173, i32 0, i32 1, !dbg !3275
  %175 = load ptr, ptr %174, align 8, !dbg !3275
  store ptr %175, ptr %11, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata ptr %12, metadata !3276, metadata !DIExpression()), !dbg !3277
  %176 = load ptr, ptr %7, align 8, !dbg !3278
  %177 = getelementptr inbounds %struct.chunk, ptr %176, i32 0, i32 2, !dbg !3279
  %178 = load i32, ptr %177, align 8, !dbg !3279
  %179 = and i32 %178, 2, !dbg !3280
  %180 = icmp ne i32 %179, 0, !dbg !3278
  %181 = zext i1 %180 to i8, !dbg !3277
  store i8 %181, ptr %12, align 1, !dbg !3277
  %182 = load ptr, ptr %11, align 8, !dbg !3281
  %183 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %182, i32 0, i32 2, !dbg !3283
  %184 = load ptr, ptr %183, align 8, !dbg !3283
  %185 = icmp eq ptr %184, @lwan_append_str_to_strbuf, !dbg !3284
  br i1 %185, label %186, label %202, !dbg !3285

186:                                              ; preds = %172
  %187 = load i8, ptr %12, align 1, !dbg !3286
  %188 = trunc i8 %187 to i1, !dbg !3286
  br i1 %188, label %189, label %192, !dbg !3289

189:                                              ; preds = %186
  %190 = load ptr, ptr %7, align 8, !dbg !3290
  %191 = getelementptr inbounds %struct.chunk, ptr %190, i32 0, i32 0, !dbg !3291
  store i32 4, ptr %191, align 8, !dbg !3292
  br label %195, !dbg !3290

192:                                              ; preds = %186
  %193 = load ptr, ptr %7, align 8, !dbg !3293
  %194 = getelementptr inbounds %struct.chunk, ptr %193, i32 0, i32 0, !dbg !3294
  store i32 3, ptr %194, align 8, !dbg !3295
  br label %195

195:                                              ; preds = %192, %189
  %196 = load ptr, ptr %11, align 8, !dbg !3296
  %197 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %196, i32 0, i32 1, !dbg !3297
  %198 = load i64, ptr %197, align 8, !dbg !3297
  %199 = inttoptr i64 %198 to ptr, !dbg !3298
  %200 = load ptr, ptr %7, align 8, !dbg !3299
  %201 = getelementptr inbounds %struct.chunk, ptr %200, i32 0, i32 1, !dbg !3300
  store ptr %199, ptr %201, align 8, !dbg !3301
  br label %214, !dbg !3302

202:                                              ; preds = %172
  %203 = load i8, ptr %12, align 1, !dbg !3303
  %204 = trunc i8 %203 to i1, !dbg !3303
  br i1 %204, label %205, label %206, !dbg !3305

205:                                              ; preds = %202
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 989, ptr noundef @__FUNCTION__.post_process_template, ptr noundef @.str.50), !dbg !3306
  store i1 false, ptr %2, align 1, !dbg !3308
  br label %273, !dbg !3308

206:                                              ; preds = %202
  %207 = load ptr, ptr %11, align 8, !dbg !3309
  %208 = getelementptr inbounds %struct.lwan_var_descriptor_t_, ptr %207, i32 0, i32 2, !dbg !3311
  %209 = load ptr, ptr %208, align 8, !dbg !3311
  %210 = icmp ne ptr %209, null, !dbg !3309
  br i1 %210, label %212, label %211, !dbg !3312

211:                                              ; preds = %206
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.7, i32 noundef 992, ptr noundef @__FUNCTION__.post_process_template, ptr noundef @.str.51), !dbg !3313
  store i1 false, ptr %2, align 1, !dbg !3315
  br label %273, !dbg !3315

212:                                              ; preds = %206
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213, %195
  br label %222, !dbg !3316

215:                                              ; preds = %167
  %216 = load ptr, ptr %7, align 8, !dbg !3317
  %217 = getelementptr inbounds %struct.chunk, ptr %216, i32 0, i32 0, !dbg !3319
  %218 = load i32, ptr %217, align 8, !dbg !3319
  %219 = icmp eq i32 %218, 10, !dbg !3320
  br i1 %219, label %220, label %221, !dbg !3321

220:                                              ; preds = %215
  br label %228, !dbg !3322

221:                                              ; preds = %215
  br label %222

222:                                              ; preds = %221, %214
  br label %223

223:                                              ; preds = %222, %156
  br label %224

224:                                              ; preds = %223, %62
  br label %225, !dbg !3324

225:                                              ; preds = %224
  %226 = load i64, ptr %4, align 8, !dbg !3325
  %227 = add i64 %226, 1, !dbg !3325
  store i64 %227, ptr %4, align 8, !dbg !3325
  br label %13, !dbg !3326, !llvm.loop !3327

228:                                              ; preds = %220, %13
  %229 = load ptr, ptr %3, align 8, !dbg !3329
  %230 = getelementptr inbounds %struct.parser, ptr %229, i32 0, i32 6, !dbg !3331
  %231 = getelementptr inbounds %struct.anon.2, ptr %230, i32 0, i32 2, !dbg !3332
  %232 = load i64, ptr %231, align 8, !dbg !3332
  %233 = load ptr, ptr %3, align 8, !dbg !3333
  %234 = getelementptr inbounds %struct.parser, ptr %233, i32 0, i32 6, !dbg !3334
  %235 = getelementptr inbounds %struct.anon.2, ptr %234, i32 0, i32 1, !dbg !3335
  %236 = load i64, ptr %235, align 8, !dbg !3335
  %237 = icmp ne i64 %232, %236, !dbg !3336
  br i1 %237, label %238, label %264, !dbg !3337

238:                                              ; preds = %228
  %239 = load ptr, ptr %3, align 8, !dbg !3338
  %240 = getelementptr inbounds %struct.parser, ptr %239, i32 0, i32 6, !dbg !3338
  %241 = getelementptr inbounds %struct.anon.2, ptr %240, i32 0, i32 2, !dbg !3338
  %242 = load i64, ptr %241, align 8, !dbg !3338
  %243 = load ptr, ptr %3, align 8, !dbg !3338
  %244 = getelementptr inbounds %struct.parser, ptr %243, i32 0, i32 6, !dbg !3338
  %245 = getelementptr inbounds %struct.anon.2, ptr %244, i32 0, i32 1, !dbg !3338
  %246 = load i64, ptr %245, align 8, !dbg !3338
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.7, i32 noundef 1002, ptr noundef @__FUNCTION__.post_process_template, ptr noundef @.str.52, i64 noundef %242, i64 noundef %246), !dbg !3338
  %247 = load ptr, ptr %3, align 8, !dbg !3340
  %248 = getelementptr inbounds %struct.parser, ptr %247, i32 0, i32 6, !dbg !3341
  %249 = getelementptr inbounds %struct.anon.2, ptr %248, i32 0, i32 0, !dbg !3342
  %250 = load ptr, ptr %249, align 8, !dbg !3342
  %251 = load ptr, ptr %3, align 8, !dbg !3343
  %252 = getelementptr inbounds %struct.parser, ptr %251, i32 0, i32 6, !dbg !3344
  %253 = getelementptr inbounds %struct.anon.2, ptr %252, i32 0, i32 1, !dbg !3345
  %254 = load i64, ptr %253, align 8, !dbg !3345
  %255 = call ptr @reallocarray(ptr noundef %250, i64 noundef %254, i64 noundef 24) #13, !dbg !3346
  store ptr %255, ptr %6, align 8, !dbg !3347
  %256 = load ptr, ptr %6, align 8, !dbg !3348
  %257 = icmp ne ptr %256, null, !dbg !3348
  br i1 %257, label %258, label %263, !dbg !3350

258:                                              ; preds = %238
  %259 = load ptr, ptr %6, align 8, !dbg !3351
  %260 = load ptr, ptr %3, align 8, !dbg !3352
  %261 = getelementptr inbounds %struct.parser, ptr %260, i32 0, i32 6, !dbg !3353
  %262 = getelementptr inbounds %struct.anon.2, ptr %261, i32 0, i32 0, !dbg !3354
  store ptr %259, ptr %262, align 8, !dbg !3355
  br label %263, !dbg !3352

263:                                              ; preds = %258, %238
  br label %264, !dbg !3356

264:                                              ; preds = %263, %228
  %265 = load ptr, ptr %3, align 8, !dbg !3357
  %266 = getelementptr inbounds %struct.parser, ptr %265, i32 0, i32 6, !dbg !3358
  %267 = getelementptr inbounds %struct.anon.2, ptr %266, i32 0, i32 0, !dbg !3359
  %268 = load ptr, ptr %267, align 8, !dbg !3359
  %269 = load ptr, ptr %3, align 8, !dbg !3360
  %270 = getelementptr inbounds %struct.parser, ptr %269, i32 0, i32 0, !dbg !3361
  %271 = load ptr, ptr %270, align 8, !dbg !3361
  %272 = getelementptr inbounds %struct.lwan_tpl_t_, ptr %271, i32 0, i32 0, !dbg !3362
  store ptr %268, ptr %272, align 8, !dbg !3363
  store i1 true, ptr %2, align 1, !dbg !3364
  br label %273, !dbg !3364

273:                                              ; preds = %264, %211, %205
  %274 = load i1, ptr %2, align 1, !dbg !3365
  ret i1 %274, !dbg !3365
}

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare ptr @coro_new(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @coro_resume_value(ptr noundef, i32 noundef) #2

declare void @coro_free(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { noreturn }
attributes #16 = { nounwind willreturn memory(read) }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind willreturn memory(none) }
attributes #19 = { noreturn nounwind }

!llvm.dbg.cu = !{!105}
!llvm.module.flags = !{!384, !385, !386, !387, !388, !389, !390}
!llvm.ident = !{!391}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 818, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-template.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "7372188dcf77bb3cf11a46be7f285c7a")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 3)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 848, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 5)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 850, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 852, type: !16, isLocal: true, isDefinition: true)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 6)
!19 = !DIGlobalVariableExpression(var: !20, expr: !DIExpression())
!20 = distinct !DIGlobalVariable(scope: null, file: !2, line: 854, type: !21, isLocal: true, isDefinition: true)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 7)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(scope: null, file: !2, line: 856, type: !21, isLocal: true, isDefinition: true)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !2, line: 858, type: !21, isLocal: true, isDefinition: true)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1147, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 38)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1147, type: !35, isLocal: true, isDefinition: true)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 176, elements: !37)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!37 = !{!38}
!38 = !DISubrange(count: 22)
!39 = !DIGlobalVariableExpression(var: !40, expr: !DIExpression())
!40 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1147, type: !21, isLocal: true, isDefinition: true)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 783, type: !43, isLocal: true, isDefinition: true)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: 14)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(scope: null, file: !2, line: 690, type: !48, isLocal: true, isDefinition: true)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 24)
!51 = !DIGlobalVariableExpression(var: !52, expr: !DIExpression())
!52 = distinct !DIGlobalVariable(scope: null, file: !2, line: 698, type: !53, isLocal: true, isDefinition: true)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: 23)
!56 = !DIGlobalVariableExpression(var: !57, expr: !DIExpression())
!57 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !58, isLocal: true, isDefinition: true)
!58 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 136, elements: !59)
!59 = !{!60}
!60 = !DISubrange(count: 17)
!61 = !DIGlobalVariableExpression(var: !62, expr: !DIExpression())
!62 = distinct !DIGlobalVariable(scope: null, file: !2, line: 504, type: !63, isLocal: true, isDefinition: true)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 27)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(scope: null, file: !2, line: 745, type: !68, isLocal: true, isDefinition: true)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !69)
!69 = !{!70}
!70 = !DISubrange(count: 34)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !2, line: 650, type: !73, isLocal: true, isDefinition: true)
!73 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !74)
!74 = !{!75}
!75 = !DISubrange(count: 15)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(scope: null, file: !2, line: 655, type: !78, isLocal: true, isDefinition: true)
!78 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !79)
!79 = !{!80}
!80 = !DISubrange(count: 43)
!81 = !DIGlobalVariableExpression(var: !82, expr: !DIExpression())
!82 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !83, isLocal: true, isDefinition: true)
!83 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !84)
!84 = !{!85}
!85 = !DISubrange(count: 44)
!86 = !DIGlobalVariableExpression(var: !87, expr: !DIExpression())
!87 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !83, isLocal: true, isDefinition: true)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !2, line: 585, type: !90, isLocal: true, isDefinition: true)
!90 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !91)
!91 = !{!92}
!92 = !DISubrange(count: 25)
!93 = !DIGlobalVariableExpression(var: !94, expr: !DIExpression())
!94 = distinct !DIGlobalVariable(scope: null, file: !2, line: 535, type: !95, isLocal: true, isDefinition: true)
!95 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !96)
!96 = !{!97}
!97 = !DISubrange(count: 21)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression())
!99 = distinct !DIGlobalVariable(scope: null, file: !2, line: 549, type: !100, isLocal: true, isDefinition: true)
!100 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 296, elements: !101)
!101 = !{!102}
!102 = !DISubrange(count: 37)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(name: "item_type_str", scope: !105, file: !2, line: 85, type: !383, isLocal: true, isDefinition: true)
!105 = distinct !DICompileUnit(language: DW_LANG_C11, file: !106, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !107, retainedTypes: !160, globals: !222, splitDebugInlining: false, nameTableKind: None)
!106 = !DIFile(filename: "/home/raj/lwan/common/lwan-template.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "7372188dcf77bb3cf11a46be7f285c7a")
!107 = !{!108, !122, !129, !145}
!108 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "action", file: !2, line: 47, baseType: !109, size: 32, elements: !110)
!109 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!110 = !{!111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121}
!111 = !DIEnumerator(name: "ACTION_APPEND", value: 0)
!112 = !DIEnumerator(name: "ACTION_APPEND_CHAR", value: 1)
!113 = !DIEnumerator(name: "ACTION_VARIABLE", value: 2)
!114 = !DIEnumerator(name: "ACTION_VARIABLE_STR", value: 3)
!115 = !DIEnumerator(name: "ACTION_VARIABLE_STR_ESCAPE", value: 4)
!116 = !DIEnumerator(name: "ACTION_START_ITER", value: 5)
!117 = !DIEnumerator(name: "ACTION_END_ITER", value: 6)
!118 = !DIEnumerator(name: "ACTION_IF_VARIABLE_NOT_EMPTY", value: 7)
!119 = !DIEnumerator(name: "ACTION_END_IF_VARIABLE_NOT_EMPTY", value: 8)
!120 = !DIEnumerator(name: "ACTION_APPLY_TPL", value: 9)
!121 = !DIEnumerator(name: "ACTION_LAST", value: 10)
!122 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "flags", file: !2, line: 61, baseType: !123, size: 32, elements: !124)
!123 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!124 = !{!125, !126, !127, !128}
!125 = !DIEnumerator(name: "FLAGS_ALL", value: -1)
!126 = !DIEnumerator(name: "FLAGS_NEGATE", value: 1)
!127 = !DIEnumerator(name: "FLAGS_QUOTE", value: 2)
!128 = !DIEnumerator(name: "FLAGS_NO_FREE", value: 4)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "item_type", file: !2, line: 68, baseType: !109, size: 32, elements: !130)
!130 = !{!131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144}
!131 = !DIEnumerator(name: "ITEM_ERROR", value: 0)
!132 = !DIEnumerator(name: "ITEM_EOF", value: 1)
!133 = !DIEnumerator(name: "ITEM_IDENTIFIER", value: 2)
!134 = !DIEnumerator(name: "ITEM_LEFT_META", value: 3)
!135 = !DIEnumerator(name: "ITEM_HASH", value: 4)
!136 = !DIEnumerator(name: "ITEM_RIGHT_META", value: 5)
!137 = !DIEnumerator(name: "ITEM_TEXT", value: 6)
!138 = !DIEnumerator(name: "ITEM_SLASH", value: 7)
!139 = !DIEnumerator(name: "ITEM_QUESTION_MARK", value: 8)
!140 = !DIEnumerator(name: "ITEM_HAT", value: 9)
!141 = !DIEnumerator(name: "ITEM_GREATER_THAN", value: 10)
!142 = !DIEnumerator(name: "ITEM_OPEN_CURLY_BRACE", value: 11)
!143 = !DIEnumerator(name: "ITEM_CLOSE_CURLY_BRACE", value: 12)
!144 = !DIEnumerator(name: "TOTAL_ITEMS", value: 13)
!145 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !146, line: 46, baseType: !109, size: 32, elements: !147)
!146 = !DIFile(filename: "/usr/include/ctype.h", directory: "", checksumkind: CSK_MD5, checksum: "3ab3dd7fdf2578005732722ee2393e59")
!147 = !{!148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159}
!148 = !DIEnumerator(name: "_ISupper", value: 256)
!149 = !DIEnumerator(name: "_ISlower", value: 512)
!150 = !DIEnumerator(name: "_ISalpha", value: 1024)
!151 = !DIEnumerator(name: "_ISdigit", value: 2048)
!152 = !DIEnumerator(name: "_ISxdigit", value: 4096)
!153 = !DIEnumerator(name: "_ISspace", value: 8192)
!154 = !DIEnumerator(name: "_ISprint", value: 16384)
!155 = !DIEnumerator(name: "_ISgraph", value: 32768)
!156 = !DIEnumerator(name: "_ISblank", value: 1)
!157 = !DIEnumerator(name: "_IScntrl", value: 2)
!158 = !DIEnumerator(name: "_ISpunct", value: 4)
!159 = !DIEnumerator(name: "_ISalnum", value: 8)
!160 = !{!161, !162, !164, !166, !168, !169, !172, !165, !123, !174, !179, !198, !187, !199, !200, !4, !216}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !170, line: 46, baseType: !171)
!170 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!171 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !173, line: 90, baseType: !171)
!173 = !DIFile(filename: "/usr/include/stdint.h", directory: "", checksumkind: CSK_MD5, checksum: "a48e64edacc5b19f56c99745232c963c")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !175, line: 77, baseType: !176)
!175 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !177, line: 194, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!178 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stacked_item", file: !2, line: 150, size: 320, elements: !181)
!181 = !{!182, !189}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !180, file: !2, line: 151, baseType: !183, size: 128)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !184, line: 191, size: 128, elements: !185)
!184 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!185 = !{!186, !188}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !183, file: !184, line: 193, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !183, file: !184, line: 193, baseType: !187, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !180, file: !2, line: 152, baseType: !190, size: 192, offset: 128)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "item", file: !2, line: 117, size: 192, elements: !191)
!191 = !{!192, !193}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !190, file: !2, line: 118, baseType: !129, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !190, file: !2, line: 122, baseType: !194, size: 128, offset: 64)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !190, file: !2, line: 119, size: 128, elements: !195)
!195 = !{!196, !197}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !194, file: !2, line: 120, baseType: !167, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !194, file: !2, line: 121, baseType: !169, size: 64, offset: 64)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", file: !170, line: 35, baseType: !178)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !202, line: 25, baseType: !203)
!202 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !202, line: 27, size: 256, elements: !204)
!204 = !{!205, !210, !215}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !203, file: !202, line: 31, baseType: !206, size: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !203, file: !202, line: 28, size: 64, elements: !207)
!207 = !{!208, !209}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !206, file: !202, line: 29, baseType: !165, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !206, file: !202, line: 30, baseType: !167, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !203, file: !202, line: 34, baseType: !211, size: 128, offset: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !202, line: 32, size: 128, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !211, file: !202, line: 33, baseType: !169, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !211, file: !202, line: 33, baseType: !169, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !203, file: !202, line: 35, baseType: !109, size: 32, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk", file: !2, line: 101, size: 192, elements: !218)
!218 = !{!219, !220, !221}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "action", scope: !217, file: !2, line: 102, baseType: !108, size: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !2, line: 103, baseType: !168, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !217, file: !2, line: 104, baseType: !122, size: 32, offset: 128)
!222 = !{!0, !7, !12, !14, !19, !24, !26, !28, !33, !39, !223, !41, !46, !51, !56, !61, !66, !71, !76, !81, !86, !88, !93, !98, !226, !228, !233, !238, !243, !245, !247, !249, !251, !253, !255, !260, !263, !103, !265, !267, !272, !274, !277, !282, !287, !290, !293, !298, !300, !305, !307, !312, !314, !319, !324, !329, !334, !336, !338, !340, !342, !344, !349, !354, !371, !376, !381}
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression(DW_OP_constu, 16, DW_OP_stack_value))
!224 = distinct !DIGlobalVariable(name: "array_increment_step", scope: !105, file: !2, line: 160, type: !225, isLocal: true, isDefinition: true)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !16, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 4)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !2, line: 88, type: !235, isLocal: true, isDefinition: true)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 11)
!238 = !DIGlobalVariableExpression(var: !239, expr: !DIExpression())
!239 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !240, isLocal: true, isDefinition: true)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 10)
!243 = !DIGlobalVariableExpression(var: !244, expr: !DIExpression())
!244 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !9, isLocal: true, isDefinition: true)
!245 = !DIGlobalVariableExpression(var: !246, expr: !DIExpression())
!246 = distinct !DIGlobalVariable(scope: null, file: !2, line: 91, type: !235, isLocal: true, isDefinition: true)
!247 = !DIGlobalVariableExpression(var: !248, expr: !DIExpression())
!248 = distinct !DIGlobalVariable(scope: null, file: !2, line: 92, type: !9, isLocal: true, isDefinition: true)
!249 = !DIGlobalVariableExpression(var: !250, expr: !DIExpression())
!250 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !16, isLocal: true, isDefinition: true)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !43, isLocal: true, isDefinition: true)
!253 = !DIGlobalVariableExpression(var: !254, expr: !DIExpression())
!254 = distinct !DIGlobalVariable(scope: null, file: !2, line: 95, type: !230, isLocal: true, isDefinition: true)
!255 = !DIGlobalVariableExpression(var: !256, expr: !DIExpression())
!256 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !257, isLocal: true, isDefinition: true)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 13)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 97, type: !262, isLocal: true, isDefinition: true)
!262 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !37)
!263 = !DIGlobalVariableExpression(var: !264, expr: !DIExpression())
!264 = distinct !DIGlobalVariable(scope: null, file: !2, line: 98, type: !53, isLocal: true, isDefinition: true)
!265 = !DIGlobalVariableExpression(var: !266, expr: !DIExpression())
!266 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !230, isLocal: true, isDefinition: true)
!267 = !DIGlobalVariableExpression(var: !268, expr: !DIExpression())
!268 = distinct !DIGlobalVariable(scope: null, file: !2, line: 236, type: !269, isLocal: true, isDefinition: true)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 264, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 33)
!272 = !DIGlobalVariableExpression(var: !273, expr: !DIExpression())
!273 = distinct !DIGlobalVariable(scope: null, file: !2, line: 615, type: !90, isLocal: true, isDefinition: true)
!274 = !DIGlobalVariableExpression(var: !275, expr: !DIExpression())
!275 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !276, isLocal: true, isDefinition: true)
!276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 88, elements: !236)
!277 = !DIGlobalVariableExpression(var: !278, expr: !DIExpression())
!278 = distinct !DIGlobalVariable(scope: null, file: !2, line: 521, type: !279, isLocal: true, isDefinition: true)
!279 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !280)
!280 = !{!281}
!281 = !DISubrange(count: 30)
!282 = !DIGlobalVariableExpression(var: !283, expr: !DIExpression())
!283 = distinct !DIGlobalVariable(scope: null, file: !2, line: 480, type: !284, isLocal: true, isDefinition: true)
!284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !285)
!285 = !{!286}
!286 = !DISubrange(count: 29)
!287 = !DIGlobalVariableExpression(var: !288, expr: !DIExpression())
!288 = distinct !DIGlobalVariable(scope: null, file: !2, line: 452, type: !289, isLocal: true, isDefinition: true)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !270)
!290 = !DIGlobalVariableExpression(var: !291, expr: !DIExpression())
!291 = distinct !DIGlobalVariable(name: "left_meta", scope: !105, file: !2, line: 162, type: !292, isLocal: true, isDefinition: true)
!292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 24, elements: !5)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !2, line: 380, type: !295, isLocal: true, isDefinition: true)
!295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !296)
!296 = !{!297}
!297 = !DISubrange(count: 42)
!298 = !DIGlobalVariableExpression(var: !299, expr: !DIExpression())
!299 = distinct !DIGlobalVariable(scope: null, file: !2, line: 397, type: !100, isLocal: true, isDefinition: true)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !2, line: 399, type: !302, isLocal: true, isDefinition: true)
!302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !303)
!303 = !{!304}
!304 = !DISubrange(count: 35)
!305 = !DIGlobalVariableExpression(var: !306, expr: !DIExpression())
!306 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !90, isLocal: true, isDefinition: true)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !2, line: 363, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 26)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(name: "right_meta", scope: !105, file: !2, line: 163, type: !292, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1041, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 128, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 16)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1041, type: !321, isLocal: true, isDefinition: true)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 19)
!324 = !DIGlobalVariableExpression(var: !325, expr: !DIExpression())
!325 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1051, type: !326, isLocal: true, isDefinition: true)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 55)
!329 = !DIGlobalVariableExpression(var: !330, expr: !DIExpression())
!330 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1062, type: !331, isLocal: true, isDefinition: true)
!331 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 472, elements: !332)
!332 = !{!333}
!333 = !DISubrange(count: 59)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1071, type: !289, isLocal: true, isDefinition: true)
!336 = !DIGlobalVariableExpression(var: !337, expr: !DIExpression())
!337 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1075, type: !279, isLocal: true, isDefinition: true)
!338 = !DIGlobalVariableExpression(var: !339, expr: !DIExpression())
!339 = distinct !DIGlobalVariable(scope: null, file: !2, line: 944, type: !35, isLocal: true, isDefinition: true)
!340 = !DIGlobalVariableExpression(var: !341, expr: !DIExpression())
!341 = distinct !DIGlobalVariable(scope: null, file: !2, line: 944, type: !21, isLocal: true, isDefinition: true)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !2, line: 989, type: !30, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !2, line: 992, type: !346, isLocal: true, isDefinition: true)
!346 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !347)
!347 = !{!348}
!348 = !DISubrange(count: 28)
!349 = !DIGlobalVariableExpression(var: !350, expr: !DIExpression())
!350 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1001, type: !351, isLocal: true, isDefinition: true)
!351 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 536, elements: !352)
!352 = !{!353}
!353 = !DISubrange(count: 67)
!354 = !DIGlobalVariableExpression(var: !355, expr: !DIExpression())
!355 = distinct !DIGlobalVariable(name: "dispatch_table", scope: !356, file: !2, line: 1159, type: !367, isLocal: true, isDefinition: true)
!356 = distinct !DISubprogram(name: "apply_until", scope: !2, file: !2, line: 1156, type: !357, scopeLine: 1158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!357 = !DISubroutineType(types: !358)
!358 = !{!216, !359, !216, !200, !168, !168}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !361, line: 25, baseType: !362)
!361 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !2, line: 107, size: 128, elements: !363)
!363 = !{!364, !365}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !362, file: !2, line: 108, baseType: !216, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "minimum_size", scope: !362, file: !2, line: 109, baseType: !169, size: 64, offset: 64)
!366 = !{}
!367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !368, size: 704, elements: !236)
!368 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !369)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!371 = !DIGlobalVariableExpression(var: !372, expr: !DIExpression())
!372 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1234, type: !373, isLocal: true, isDefinition: true)
!373 = !DICompositeType(tag: DW_TAG_array_type, baseType: !36, size: 96, elements: !374)
!374 = !{!375}
!375 = !DISubrange(count: 12)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1234, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 368, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 46)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 1268, type: !78, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !167, size: 832, elements: !258)
!384 = !{i32 7, !"Dwarf Version", i32 5}
!385 = !{i32 2, !"Debug Info Version", i32 3}
!386 = !{i32 1, !"wchar_size", i32 4}
!387 = !{i32 8, !"PIC Level", i32 2}
!388 = !{i32 7, !"PIE Level", i32 2}
!389 = !{i32 7, !"uwtable", i32 2}
!390 = !{i32 7, !"frame-pointer", i32 2}
!391 = !{!"clang version 16.0.0"}
!392 = distinct !DISubprogram(name: "lwan_append_int_to_strbuf", scope: !2, file: !2, line: 799, type: !393, scopeLine: 800, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!393 = !DISubroutineType(types: !394)
!394 = !{null, !200, !168}
!395 = !DILocalVariable(name: "buf", arg: 1, scope: !392, file: !2, line: 799, type: !200)
!396 = !DILocation(line: 799, column: 37, scope: !392)
!397 = !DILocalVariable(name: "ptr", arg: 2, scope: !392, file: !2, line: 799, type: !168)
!398 = !DILocation(line: 799, column: 48, scope: !392)
!399 = !DILocalVariable(name: "convertbuf", scope: !392, file: !2, line: 801, type: !90)
!400 = !DILocation(line: 801, column: 10, scope: !392)
!401 = !DILocalVariable(name: "len", scope: !392, file: !2, line: 802, type: !169)
!402 = !DILocation(line: 802, column: 12, scope: !392)
!403 = !DILocalVariable(name: "converted", scope: !392, file: !2, line: 803, type: !165)
!404 = !DILocation(line: 803, column: 11, scope: !392)
!405 = !DILocation(line: 805, column: 39, scope: !392)
!406 = !DILocation(line: 805, column: 31, scope: !392)
!407 = !DILocation(line: 805, column: 44, scope: !392)
!408 = !DILocation(line: 805, column: 17, scope: !392)
!409 = !DILocation(line: 805, column: 15, scope: !392)
!410 = !DILocation(line: 806, column: 23, scope: !392)
!411 = !DILocation(line: 806, column: 28, scope: !392)
!412 = !DILocation(line: 806, column: 39, scope: !392)
!413 = !DILocation(line: 806, column: 5, scope: !392)
!414 = !DILocation(line: 807, column: 1, scope: !392)
!415 = distinct !DISubprogram(name: "lwan_tpl_int_is_empty", scope: !2, file: !2, line: 810, type: !416, scopeLine: 811, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!416 = !DISubroutineType(types: !417)
!417 = !{!418, !168}
!418 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!419 = !DILocalVariable(name: "ptr", arg: 1, scope: !415, file: !2, line: 810, type: !168)
!420 = !DILocation(line: 810, column: 29, scope: !415)
!421 = !DILocation(line: 812, column: 21, scope: !415)
!422 = !DILocation(line: 812, column: 13, scope: !415)
!423 = !DILocation(line: 812, column: 26, scope: !415)
!424 = !DILocation(line: 812, column: 5, scope: !415)
!425 = distinct !DISubprogram(name: "lwan_append_double_to_strbuf", scope: !2, file: !2, line: 816, type: !393, scopeLine: 817, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!426 = !DILocalVariable(name: "buf", arg: 1, scope: !425, file: !2, line: 816, type: !200)
!427 = !DILocation(line: 816, column: 40, scope: !425)
!428 = !DILocalVariable(name: "ptr", arg: 2, scope: !425, file: !2, line: 816, type: !168)
!429 = !DILocation(line: 816, column: 51, scope: !425)
!430 = !DILocation(line: 818, column: 26, scope: !425)
!431 = !DILocation(line: 818, column: 48, scope: !425)
!432 = !DILocation(line: 818, column: 37, scope: !425)
!433 = !DILocation(line: 818, column: 5, scope: !425)
!434 = !DILocation(line: 819, column: 1, scope: !425)
!435 = distinct !DISubprogram(name: "lwan_tpl_double_is_empty", scope: !2, file: !2, line: 822, type: !416, scopeLine: 823, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!436 = !DILocalVariable(name: "ptr", arg: 1, scope: !435, file: !2, line: 822, type: !168)
!437 = !DILocation(line: 822, column: 32, scope: !435)
!438 = !DILocation(line: 824, column: 24, scope: !435)
!439 = !DILocation(line: 824, column: 13, scope: !435)
!440 = !DILocation(line: 824, column: 29, scope: !435)
!441 = !DILocation(line: 824, column: 5, scope: !435)
!442 = distinct !DISubprogram(name: "lwan_append_str_to_strbuf", scope: !2, file: !2, line: 828, type: !393, scopeLine: 829, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!443 = !DILocalVariable(name: "buf", arg: 1, scope: !442, file: !2, line: 828, type: !200)
!444 = !DILocation(line: 828, column: 37, scope: !442)
!445 = !DILocalVariable(name: "ptr", arg: 2, scope: !442, file: !2, line: 828, type: !168)
!446 = !DILocation(line: 828, column: 48, scope: !442)
!447 = !DILocalVariable(name: "str", scope: !442, file: !2, line: 830, type: !167)
!448 = !DILocation(line: 830, column: 17, scope: !442)
!449 = !DILocation(line: 830, column: 33, scope: !442)
!450 = !DILocation(line: 830, column: 23, scope: !442)
!451 = !DILocation(line: 832, column: 9, scope: !452)
!452 = distinct !DILexicalBlock(scope: !442, file: !2, line: 832, column: 9)
!453 = !DILocation(line: 832, column: 9, scope: !442)
!454 = !DILocation(line: 833, column: 27, scope: !452)
!455 = !DILocation(line: 833, column: 32, scope: !452)
!456 = !DILocation(line: 833, column: 9, scope: !452)
!457 = !DILocation(line: 834, column: 1, scope: !442)
!458 = distinct !DISubprogram(name: "lwan_append_str_escaped_to_strbuf", scope: !2, file: !2, line: 837, type: !393, scopeLine: 838, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!459 = !DILocalVariable(name: "buf", arg: 1, scope: !458, file: !2, line: 837, type: !200)
!460 = !DILocation(line: 837, column: 45, scope: !458)
!461 = !DILocalVariable(name: "ptr", arg: 2, scope: !458, file: !2, line: 837, type: !168)
!462 = !DILocation(line: 837, column: 56, scope: !458)
!463 = !DILocation(line: 839, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !458, file: !2, line: 839, column: 9)
!465 = !DILocation(line: 839, column: 9, scope: !458)
!466 = !DILocation(line: 840, column: 9, scope: !464)
!467 = !DILocalVariable(name: "str", scope: !458, file: !2, line: 842, type: !167)
!468 = !DILocation(line: 842, column: 17, scope: !458)
!469 = !DILocation(line: 842, column: 33, scope: !458)
!470 = !DILocation(line: 842, column: 23, scope: !458)
!471 = !DILocation(line: 843, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !458, file: !2, line: 843, column: 9)
!473 = !DILocation(line: 843, column: 9, scope: !458)
!474 = !DILocation(line: 844, column: 9, scope: !472)
!475 = !DILocalVariable(name: "p", scope: !476, file: !2, line: 846, type: !167)
!476 = distinct !DILexicalBlock(scope: !458, file: !2, line: 846, column: 5)
!477 = !DILocation(line: 846, column: 22, scope: !476)
!478 = !DILocation(line: 846, column: 26, scope: !476)
!479 = !DILocation(line: 846, column: 10, scope: !476)
!480 = !DILocation(line: 846, column: 32, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !2, line: 846, column: 5)
!482 = !DILocation(line: 846, column: 31, scope: !481)
!483 = !DILocation(line: 846, column: 5, scope: !476)
!484 = !DILocation(line: 847, column: 14, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !2, line: 847, column: 13)
!486 = distinct !DILexicalBlock(scope: !481, file: !2, line: 846, column: 40)
!487 = !DILocation(line: 847, column: 13, scope: !485)
!488 = !DILocation(line: 847, column: 16, scope: !485)
!489 = !DILocation(line: 847, column: 13, scope: !486)
!490 = !DILocation(line: 848, column: 31, scope: !485)
!491 = !DILocation(line: 848, column: 13, scope: !485)
!492 = !DILocation(line: 849, column: 19, scope: !493)
!493 = distinct !DILexicalBlock(scope: !485, file: !2, line: 849, column: 18)
!494 = !DILocation(line: 849, column: 18, scope: !493)
!495 = !DILocation(line: 849, column: 21, scope: !493)
!496 = !DILocation(line: 849, column: 18, scope: !485)
!497 = !DILocation(line: 850, column: 31, scope: !493)
!498 = !DILocation(line: 850, column: 13, scope: !493)
!499 = !DILocation(line: 851, column: 19, scope: !500)
!500 = distinct !DILexicalBlock(scope: !493, file: !2, line: 851, column: 18)
!501 = !DILocation(line: 851, column: 18, scope: !500)
!502 = !DILocation(line: 851, column: 21, scope: !500)
!503 = !DILocation(line: 851, column: 18, scope: !493)
!504 = !DILocation(line: 852, column: 31, scope: !500)
!505 = !DILocation(line: 852, column: 13, scope: !500)
!506 = !DILocation(line: 853, column: 19, scope: !507)
!507 = distinct !DILexicalBlock(scope: !500, file: !2, line: 853, column: 18)
!508 = !DILocation(line: 853, column: 18, scope: !507)
!509 = !DILocation(line: 853, column: 21, scope: !507)
!510 = !DILocation(line: 853, column: 18, scope: !500)
!511 = !DILocation(line: 854, column: 31, scope: !507)
!512 = !DILocation(line: 854, column: 13, scope: !507)
!513 = !DILocation(line: 855, column: 19, scope: !514)
!514 = distinct !DILexicalBlock(scope: !507, file: !2, line: 855, column: 18)
!515 = !DILocation(line: 855, column: 18, scope: !514)
!516 = !DILocation(line: 855, column: 21, scope: !514)
!517 = !DILocation(line: 855, column: 18, scope: !507)
!518 = !DILocation(line: 856, column: 31, scope: !514)
!519 = !DILocation(line: 856, column: 13, scope: !514)
!520 = !DILocation(line: 857, column: 19, scope: !521)
!521 = distinct !DILexicalBlock(scope: !514, file: !2, line: 857, column: 18)
!522 = !DILocation(line: 857, column: 18, scope: !521)
!523 = !DILocation(line: 857, column: 21, scope: !521)
!524 = !DILocation(line: 857, column: 18, scope: !514)
!525 = !DILocation(line: 858, column: 31, scope: !521)
!526 = !DILocation(line: 858, column: 13, scope: !521)
!527 = !DILocation(line: 860, column: 32, scope: !521)
!528 = !DILocation(line: 860, column: 38, scope: !521)
!529 = !DILocation(line: 860, column: 37, scope: !521)
!530 = !DILocation(line: 860, column: 13, scope: !521)
!531 = !DILocation(line: 861, column: 5, scope: !486)
!532 = !DILocation(line: 846, column: 36, scope: !481)
!533 = !DILocation(line: 846, column: 5, scope: !481)
!534 = distinct !{!534, !483, !535, !536}
!535 = !DILocation(line: 861, column: 5, scope: !476)
!536 = !{!"llvm.loop.mustprogress"}
!537 = !DILocation(line: 862, column: 1, scope: !458)
!538 = distinct !DISubprogram(name: "lwan_tpl_str_is_empty", scope: !2, file: !2, line: 865, type: !416, scopeLine: 866, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!539 = !DILocalVariable(name: "ptr", arg: 1, scope: !538, file: !2, line: 865, type: !168)
!540 = !DILocation(line: 865, column: 29, scope: !538)
!541 = !DILocation(line: 867, column: 9, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !2, line: 867, column: 9)
!543 = !DILocation(line: 867, column: 9, scope: !538)
!544 = !DILocation(line: 868, column: 9, scope: !542)
!545 = !DILocalVariable(name: "str", scope: !538, file: !2, line: 870, type: !167)
!546 = !DILocation(line: 870, column: 17, scope: !538)
!547 = !DILocation(line: 870, column: 39, scope: !538)
!548 = !DILocation(line: 870, column: 23, scope: !538)
!549 = !DILocation(line: 871, column: 12, scope: !538)
!550 = !DILocation(line: 871, column: 24, scope: !538)
!551 = !DILocation(line: 871, column: 28, scope: !538)
!552 = !DILocation(line: 871, column: 27, scope: !538)
!553 = !DILocation(line: 0, scope: !538)
!554 = !DILocation(line: 871, column: 5, scope: !538)
!555 = !DILocation(line: 872, column: 1, scope: !538)
!556 = distinct !DISubprogram(name: "lwan_tpl_free", scope: !2, file: !2, line: 906, type: !557, scopeLine: 907, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!557 = !DISubroutineType(types: !558)
!558 = !{null, !359}
!559 = !DILocalVariable(name: "tpl", arg: 1, scope: !556, file: !2, line: 906, type: !359)
!560 = !DILocation(line: 906, column: 27, scope: !556)
!561 = !DILocalVariable(name: "iter", scope: !556, file: !2, line: 908, type: !216)
!562 = !DILocation(line: 908, column: 19, scope: !556)
!563 = !DILocation(line: 910, column: 10, scope: !564)
!564 = distinct !DILexicalBlock(scope: !556, file: !2, line: 910, column: 9)
!565 = !DILocation(line: 910, column: 9, scope: !556)
!566 = !DILocation(line: 911, column: 9, scope: !564)
!567 = !DILocation(line: 913, column: 9, scope: !568)
!568 = distinct !DILexicalBlock(scope: !556, file: !2, line: 913, column: 9)
!569 = !DILocation(line: 913, column: 14, scope: !568)
!570 = !DILocation(line: 913, column: 9, scope: !556)
!571 = !DILocation(line: 914, column: 21, scope: !572)
!572 = distinct !DILexicalBlock(scope: !573, file: !2, line: 914, column: 9)
!573 = distinct !DILexicalBlock(scope: !568, file: !2, line: 913, column: 22)
!574 = !DILocation(line: 914, column: 26, scope: !572)
!575 = !DILocation(line: 914, column: 19, scope: !572)
!576 = !DILocation(line: 914, column: 14, scope: !572)
!577 = !DILocation(line: 914, column: 34, scope: !578)
!578 = distinct !DILexicalBlock(scope: !572, file: !2, line: 914, column: 9)
!579 = !DILocation(line: 914, column: 40, scope: !578)
!580 = !DILocation(line: 914, column: 47, scope: !578)
!581 = !DILocation(line: 914, column: 9, scope: !572)
!582 = !DILocation(line: 915, column: 24, scope: !578)
!583 = !DILocation(line: 915, column: 13, scope: !578)
!584 = !DILocation(line: 914, column: 67, scope: !578)
!585 = !DILocation(line: 914, column: 9, scope: !578)
!586 = distinct !{!586, !581, !587, !536}
!587 = !DILocation(line: 915, column: 28, scope: !572)
!588 = !DILocation(line: 916, column: 14, scope: !573)
!589 = !DILocation(line: 916, column: 19, scope: !573)
!590 = !DILocation(line: 916, column: 9, scope: !573)
!591 = !DILocation(line: 917, column: 5, scope: !573)
!592 = !DILocation(line: 919, column: 10, scope: !556)
!593 = !DILocation(line: 919, column: 5, scope: !556)
!594 = !DILocation(line: 920, column: 1, scope: !556)
!595 = distinct !DISubprogram(name: "free_chunk", scope: !2, file: !2, line: 875, type: !596, scopeLine: 876, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!596 = !DISubroutineType(types: !597)
!597 = !{null, !216}
!598 = !DILocalVariable(name: "chunk", arg: 1, scope: !595, file: !2, line: 875, type: !216)
!599 = !DILocation(line: 875, column: 26, scope: !595)
!600 = !DILocation(line: 877, column: 10, scope: !601)
!601 = distinct !DILexicalBlock(scope: !595, file: !2, line: 877, column: 9)
!602 = !DILocation(line: 877, column: 9, scope: !595)
!603 = !DILocation(line: 878, column: 9, scope: !601)
!604 = !DILocation(line: 879, column: 9, scope: !605)
!605 = distinct !DILexicalBlock(scope: !595, file: !2, line: 879, column: 9)
!606 = !DILocation(line: 879, column: 16, scope: !605)
!607 = !DILocation(line: 879, column: 22, scope: !605)
!608 = !DILocation(line: 879, column: 9, scope: !595)
!609 = !DILocation(line: 880, column: 9, scope: !605)
!610 = !DILocation(line: 882, column: 13, scope: !595)
!611 = !DILocation(line: 882, column: 20, scope: !595)
!612 = !DILocation(line: 882, column: 5, scope: !595)
!613 = !DILocation(line: 891, column: 9, scope: !614)
!614 = distinct !DILexicalBlock(scope: !595, file: !2, line: 882, column: 28)
!615 = !DILocation(line: 894, column: 14, scope: !614)
!616 = !DILocation(line: 894, column: 21, scope: !614)
!617 = !DILocation(line: 894, column: 9, scope: !614)
!618 = !DILocation(line: 895, column: 9, scope: !614)
!619 = !DILocation(line: 897, column: 21, scope: !614)
!620 = !DILocation(line: 897, column: 28, scope: !614)
!621 = !DILocation(line: 897, column: 9, scope: !614)
!622 = !DILocation(line: 898, column: 9, scope: !614)
!623 = !DILocation(line: 900, column: 23, scope: !614)
!624 = !DILocation(line: 900, column: 30, scope: !614)
!625 = !DILocation(line: 900, column: 9, scope: !614)
!626 = !DILocation(line: 901, column: 9, scope: !614)
!627 = !DILocation(line: 903, column: 1, scope: !595)
!628 = distinct !DISubprogram(name: "lwan_tpl_compile_string", scope: !2, file: !2, line: 1111, type: !629, scopeLine: 1112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!629 = !DISubroutineType(types: !630)
!630 = !{!359, !167, !631}
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !361, line: 26, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !361, line: 30, size: 384, elements: !635)
!635 = !{!636, !637, !642, !644, !646, !655}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !634, file: !361, line: 31, baseType: !167, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !634, file: !361, line: 32, baseType: !638, size: 64, offset: 64)
!638 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !639)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !640, line: 56, baseType: !641)
!640 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!641 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !177, line: 152, baseType: !178)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !634, file: !361, line: 34, baseType: !643, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !634, file: !361, line: 35, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !634, file: !361, line: 37, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !361, line: 28, baseType: !648)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!123, !651}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !653, line: 34, baseType: !654)
!653 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !653, line: 34, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !634, file: !361, line: 38, baseType: !631, size: 64, offset: 320)
!656 = !DILocalVariable(name: "string", arg: 1, scope: !628, file: !2, line: 1111, type: !167)
!657 = !DILocation(line: 1111, column: 37, scope: !628)
!658 = !DILocalVariable(name: "descriptor", arg: 2, scope: !628, file: !2, line: 1111, type: !631)
!659 = !DILocation(line: 1111, column: 74, scope: !628)
!660 = !DILocalVariable(name: "tpl", scope: !628, file: !2, line: 1113, type: !359)
!661 = !DILocation(line: 1113, column: 17, scope: !628)
!662 = !DILocation(line: 1115, column: 11, scope: !628)
!663 = !DILocation(line: 1115, column: 9, scope: !628)
!664 = !DILocation(line: 1116, column: 9, scope: !665)
!665 = distinct !DILexicalBlock(scope: !628, file: !2, line: 1116, column: 9)
!666 = !DILocation(line: 1116, column: 9, scope: !628)
!667 = !DILocation(line: 1117, column: 26, scope: !668)
!668 = distinct !DILexicalBlock(scope: !669, file: !2, line: 1117, column: 13)
!669 = distinct !DILexicalBlock(scope: !665, file: !2, line: 1116, column: 14)
!670 = !DILocation(line: 1117, column: 31, scope: !668)
!671 = !DILocation(line: 1117, column: 39, scope: !668)
!672 = !DILocation(line: 1117, column: 13, scope: !668)
!673 = !DILocation(line: 1117, column: 13, scope: !669)
!674 = !DILocation(line: 1118, column: 20, scope: !668)
!675 = !DILocation(line: 1118, column: 13, scope: !668)
!676 = !DILocation(line: 1119, column: 5, scope: !669)
!677 = !DILocation(line: 1121, column: 19, scope: !628)
!678 = !DILocation(line: 1121, column: 5, scope: !628)
!679 = !DILocation(line: 1122, column: 5, scope: !628)
!680 = !DILocation(line: 1123, column: 1, scope: !628)
!681 = distinct !DISubprogram(name: "parse_string", scope: !2, file: !2, line: 1090, type: !682, scopeLine: 1091, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!682 = !DISubroutineType(types: !683)
!683 = !{!418, !359, !167, !631}
!684 = !DILocalVariable(name: "tpl", arg: 1, scope: !681, file: !2, line: 1090, type: !359)
!685 = !DILocation(line: 1090, column: 38, scope: !681)
!686 = !DILocalVariable(name: "string", arg: 2, scope: !681, file: !2, line: 1090, type: !167)
!687 = !DILocation(line: 1090, column: 55, scope: !681)
!688 = !DILocalVariable(name: "descriptor", arg: 3, scope: !681, file: !2, line: 1090, type: !631)
!689 = !DILocation(line: 1090, column: 92, scope: !681)
!690 = !DILocalVariable(name: "parser", scope: !681, file: !2, line: 1092, type: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "parser", file: !2, line: 137, size: 1792, elements: !692)
!692 = !{!693, !694, !695, !704, !723, !724, !728}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "tpl", scope: !691, file: !2, line: 138, baseType: !359, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !691, file: !2, line: 139, baseType: !631, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !691, file: !2, line: 140, baseType: !696, size: 64, offset: 128)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "symtab", file: !2, line: 112, size: 128, elements: !698)
!698 = !{!699, !703}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !697, file: !2, line: 113, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !702, line: 6, flags: DIFlagFwdDecl)
!702 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!703 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !697, file: !2, line: 114, baseType: !696, size: 64, offset: 64)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "lexer", scope: !691, file: !2, line: 141, baseType: !705, size: 1216, offset: 192)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lexer", file: !2, line: 125, size: 1216, elements: !706)
!706 = !{!707, !712, !713, !714, !715}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !705, file: !2, line: 126, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!168, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !705, file: !2, line: 127, baseType: !167, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !705, file: !2, line: 127, baseType: !167, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !705, file: !2, line: 127, baseType: !167, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "ring_buffer", scope: !705, file: !2, line: 134, baseType: !716, size: 960, offset: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !705, file: !2, line: 129, size: 960, elements: !717)
!717 = !{!718, !720, !721, !722}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "items", scope: !716, file: !2, line: 130, baseType: !719, size: 768)
!719 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 768, elements: !231)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !716, file: !2, line: 131, baseType: !169, size: 64, offset: 768)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !716, file: !2, line: 132, baseType: !169, size: 64, offset: 832)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "population", scope: !716, file: !2, line: 133, baseType: !169, size: 64, offset: 896)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !2, line: 142, baseType: !122, size: 32, offset: 1408)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !691, file: !2, line: 143, baseType: !725, size: 128, offset: 1472)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !184, line: 208, size: 128, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !725, file: !184, line: 210, baseType: !183, size: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "chunks", scope: !691, file: !2, line: 147, baseType: !729, size: 192, offset: 1600)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !2, line: 144, size: 192, elements: !730)
!730 = !{!731, !732, !733}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !729, file: !2, line: 145, baseType: !216, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "used", scope: !729, file: !2, line: 146, baseType: !169, size: 64, offset: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !729, file: !2, line: 146, baseType: !169, size: 64, offset: 128)
!734 = !DILocation(line: 1092, column: 19, scope: !681)
!735 = !DILocation(line: 1092, column: 28, scope: !681)
!736 = !DILocation(line: 1093, column: 16, scope: !681)
!737 = !DILocation(line: 1096, column: 23, scope: !681)
!738 = !DILocation(line: 1095, column: 19, scope: !681)
!739 = !DILocalVariable(name: "state", scope: !681, file: !2, line: 1098, type: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!741 = !DISubroutineType(types: !742)
!742 = !{!168, !743, !744}
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!745 = !DILocation(line: 1098, column: 13, scope: !681)
!746 = !DILocalVariable(name: "item", scope: !681, file: !2, line: 1099, type: !744)
!747 = !DILocation(line: 1099, column: 18, scope: !681)
!748 = !DILocation(line: 1101, column: 31, scope: !749)
!749 = distinct !DILexicalBlock(scope: !681, file: !2, line: 1101, column: 9)
!750 = !DILocation(line: 1101, column: 43, scope: !749)
!751 = !DILocation(line: 1101, column: 10, scope: !749)
!752 = !DILocation(line: 1101, column: 9, scope: !681)
!753 = !DILocation(line: 1102, column: 9, scope: !749)
!754 = !DILocation(line: 1104, column: 5, scope: !681)
!755 = !DILocation(line: 1104, column: 12, scope: !681)
!756 = !DILocation(line: 1104, column: 18, scope: !681)
!757 = !DILocation(line: 1104, column: 38, scope: !681)
!758 = !DILocation(line: 1104, column: 21, scope: !681)
!759 = !DILocation(line: 1104, column: 52, scope: !681)
!760 = !DILocation(line: 1104, column: 55, scope: !681)
!761 = !DILocation(line: 1104, column: 61, scope: !681)
!762 = !DILocation(line: 1104, column: 66, scope: !681)
!763 = !DILocation(line: 0, scope: !681)
!764 = !DILocation(line: 1105, column: 17, scope: !681)
!765 = !DILocation(line: 1105, column: 32, scope: !681)
!766 = !DILocation(line: 1105, column: 15, scope: !681)
!767 = distinct !{!767, !754, !768, !536}
!768 = !DILocation(line: 1105, column: 36, scope: !681)
!769 = !DILocation(line: 1107, column: 37, scope: !681)
!770 = !DILocation(line: 1107, column: 12, scope: !681)
!771 = !DILocation(line: 1107, column: 5, scope: !681)
!772 = !DILocation(line: 1108, column: 1, scope: !681)
!773 = distinct !DISubprogram(name: "lwan_tpl_compile_file", scope: !2, file: !2, line: 1126, type: !629, scopeLine: 1127, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!774 = !DILocalVariable(name: "filename", arg: 1, scope: !773, file: !2, line: 1126, type: !167)
!775 = !DILocation(line: 1126, column: 35, scope: !773)
!776 = !DILocalVariable(name: "descriptor", arg: 2, scope: !773, file: !2, line: 1126, type: !631)
!777 = !DILocation(line: 1126, column: 74, scope: !773)
!778 = !DILocalVariable(name: "fd", scope: !773, file: !2, line: 1128, type: !123)
!779 = !DILocation(line: 1128, column: 9, scope: !773)
!780 = !DILocalVariable(name: "st", scope: !773, file: !2, line: 1129, type: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !782, line: 26, size: 1152, elements: !783)
!782 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!783 = !{!784, !786, !788, !790, !792, !794, !796, !797, !798, !799, !801, !803, !811, !812, !813}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !781, file: !782, line: 31, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !177, line: 145, baseType: !171)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !781, file: !782, line: 36, baseType: !787, size: 64, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !177, line: 148, baseType: !171)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !781, file: !782, line: 44, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !177, line: 151, baseType: !171)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !781, file: !782, line: 45, baseType: !791, size: 32, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !177, line: 150, baseType: !109)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !781, file: !782, line: 47, baseType: !793, size: 32, offset: 224)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !177, line: 146, baseType: !109)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !781, file: !782, line: 48, baseType: !795, size: 32, offset: 256)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !177, line: 147, baseType: !109)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !781, file: !782, line: 50, baseType: !123, size: 32, offset: 288)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !781, file: !782, line: 52, baseType: !785, size: 64, offset: 320)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !781, file: !782, line: 57, baseType: !641, size: 64, offset: 384)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !781, file: !782, line: 61, baseType: !800, size: 64, offset: 448)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !177, line: 175, baseType: !178)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !781, file: !782, line: 63, baseType: !802, size: 64, offset: 512)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !177, line: 180, baseType: !178)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !781, file: !782, line: 74, baseType: !804, size: 128, offset: 576)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !805, line: 11, size: 128, elements: !806)
!805 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!806 = !{!807, !809}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !804, file: !805, line: 16, baseType: !808, size: 64)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !177, line: 160, baseType: !178)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !804, file: !805, line: 21, baseType: !810, size: 64, offset: 64)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !177, line: 197, baseType: !178)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !781, file: !782, line: 75, baseType: !804, size: 128, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !781, file: !782, line: 76, baseType: !804, size: 128, offset: 832)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !781, file: !782, line: 89, baseType: !814, size: 192, offset: 960)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !810, size: 192, elements: !5)
!815 = !DILocation(line: 1129, column: 17, scope: !773)
!816 = !DILocalVariable(name: "mapped", scope: !773, file: !2, line: 1130, type: !165)
!817 = !DILocation(line: 1130, column: 11, scope: !773)
!818 = !DILocalVariable(name: "tpl", scope: !773, file: !2, line: 1131, type: !359)
!819 = !DILocation(line: 1131, column: 17, scope: !773)
!820 = !DILocation(line: 1133, column: 15, scope: !773)
!821 = !DILocation(line: 1133, column: 10, scope: !773)
!822 = !DILocation(line: 1133, column: 8, scope: !773)
!823 = !DILocation(line: 1134, column: 9, scope: !824)
!824 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1134, column: 9)
!825 = !DILocation(line: 1134, column: 12, scope: !824)
!826 = !DILocation(line: 1134, column: 9, scope: !773)
!827 = !DILocation(line: 1135, column: 9, scope: !824)
!828 = !DILocation(line: 1137, column: 15, scope: !829)
!829 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1137, column: 9)
!830 = !DILocation(line: 1137, column: 9, scope: !829)
!831 = !DILocation(line: 1137, column: 24, scope: !829)
!832 = !DILocation(line: 1137, column: 9, scope: !773)
!833 = !DILocation(line: 1138, column: 9, scope: !829)
!834 = !DILocation(line: 1140, column: 36, scope: !773)
!835 = !DILocation(line: 1140, column: 68, scope: !773)
!836 = !DILocation(line: 1140, column: 14, scope: !773)
!837 = !DILocation(line: 1140, column: 12, scope: !773)
!838 = !DILocation(line: 1141, column: 9, scope: !839)
!839 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1141, column: 9)
!840 = !DILocation(line: 1141, column: 16, scope: !839)
!841 = !DILocation(line: 1141, column: 9, scope: !773)
!842 = !DILocation(line: 1142, column: 9, scope: !839)
!843 = !DILocation(line: 1144, column: 35, scope: !773)
!844 = !DILocation(line: 1144, column: 43, scope: !773)
!845 = !DILocation(line: 1144, column: 11, scope: !773)
!846 = !DILocation(line: 1144, column: 9, scope: !773)
!847 = !DILocation(line: 1146, column: 16, scope: !848)
!848 = distinct !DILexicalBlock(scope: !773, file: !2, line: 1146, column: 9)
!849 = !DILocation(line: 1146, column: 35, scope: !848)
!850 = !DILocation(line: 1146, column: 9, scope: !848)
!851 = !DILocation(line: 1146, column: 44, scope: !848)
!852 = !DILocation(line: 1146, column: 9, scope: !773)
!853 = !DILocation(line: 1147, column: 9, scope: !848)
!854 = !DILocation(line: 1146, column: 46, scope: !848)
!855 = !DILabel(scope: !773, name: "close_file", file: !2, line: 1149)
!856 = !DILocation(line: 1149, column: 1, scope: !773)
!857 = !DILocation(line: 1150, column: 11, scope: !773)
!858 = !DILocation(line: 1150, column: 5, scope: !773)
!859 = !DILabel(scope: !773, name: "end", file: !2, line: 1151)
!860 = !DILocation(line: 1151, column: 1, scope: !773)
!861 = !DILocation(line: 1152, column: 12, scope: !773)
!862 = !DILocation(line: 1152, column: 5, scope: !773)
!863 = distinct !DISubprogram(name: "lwan_tpl_apply_with_buffer", scope: !2, file: !2, line: 1288, type: !864, scopeLine: 1289, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!864 = !DISubroutineType(types: !865)
!865 = !{!200, !359, !200, !168}
!866 = !DILocalVariable(name: "tpl", arg: 1, scope: !863, file: !2, line: 1288, type: !359)
!867 = !DILocation(line: 1288, column: 40, scope: !863)
!868 = !DILocalVariable(name: "buf", arg: 2, scope: !863, file: !2, line: 1288, type: !200)
!869 = !DILocation(line: 1288, column: 55, scope: !863)
!870 = !DILocalVariable(name: "variables", arg: 3, scope: !863, file: !2, line: 1288, type: !168)
!871 = !DILocation(line: 1288, column: 66, scope: !863)
!872 = !DILocation(line: 1290, column: 9, scope: !873)
!873 = distinct !DILexicalBlock(scope: !863, file: !2, line: 1290, column: 9)
!874 = !DILocation(line: 1290, column: 9, scope: !863)
!875 = !DILocation(line: 1291, column: 9, scope: !873)
!876 = !DILocation(line: 1293, column: 9, scope: !877)
!877 = distinct !DILexicalBlock(scope: !863, file: !2, line: 1293, column: 9)
!878 = !DILocation(line: 1293, column: 9, scope: !863)
!879 = !DILocation(line: 1294, column: 9, scope: !877)
!880 = !DILocation(line: 1296, column: 17, scope: !863)
!881 = !DILocation(line: 1296, column: 22, scope: !863)
!882 = !DILocation(line: 1296, column: 27, scope: !863)
!883 = !DILocation(line: 1296, column: 35, scope: !863)
!884 = !DILocation(line: 1296, column: 40, scope: !863)
!885 = !DILocation(line: 1296, column: 5, scope: !863)
!886 = !DILocation(line: 1298, column: 12, scope: !863)
!887 = !DILocation(line: 1298, column: 5, scope: !863)
!888 = !DILocation(line: 1299, column: 1, scope: !863)
!889 = !DILocalVariable(name: "tpl", arg: 1, scope: !356, file: !2, line: 1156, type: !359)
!890 = !DILocation(line: 1156, column: 25, scope: !356)
!891 = !DILocalVariable(name: "chunks", arg: 2, scope: !356, file: !2, line: 1156, type: !216)
!892 = !DILocation(line: 1156, column: 44, scope: !356)
!893 = !DILocalVariable(name: "buf", arg: 3, scope: !356, file: !2, line: 1156, type: !200)
!894 = !DILocation(line: 1156, column: 62, scope: !356)
!895 = !DILocalVariable(name: "variables", arg: 4, scope: !356, file: !2, line: 1156, type: !168)
!896 = !DILocation(line: 1156, column: 73, scope: !356)
!897 = !DILocalVariable(name: "until_data", arg: 5, scope: !356, file: !2, line: 1157, type: !168)
!898 = !DILocation(line: 1157, column: 19, scope: !356)
!899 = !DILocalVariable(name: "switcher", scope: !356, file: !2, line: 1172, type: !900)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_switcher_t", file: !653, line: 35, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "coro_switcher_t_", file: !653, line: 39, size: 1280, elements: !902)
!902 = !{!903, !906}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !901, file: !653, line: 40, baseType: !904, size: 640)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_context_t", file: !653, line: 25, baseType: !905)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 640, elements: !241)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "callee", scope: !901, file: !653, line: 41, baseType: !904, size: 640, offset: 640)
!907 = !DILocation(line: 1172, column: 21, scope: !356)
!908 = !DILocalVariable(name: "coro", scope: !356, file: !2, line: 1173, type: !651)
!909 = !DILocation(line: 1173, column: 13, scope: !356)
!910 = !DILocalVariable(name: "chunk", scope: !356, file: !2, line: 1174, type: !216)
!911 = !DILocation(line: 1174, column: 19, scope: !356)
!912 = !DILocation(line: 1174, column: 27, scope: !356)
!913 = !DILocation(line: 1176, column: 9, scope: !914)
!914 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1176, column: 9)
!915 = !DILocation(line: 1176, column: 9, scope: !356)
!916 = !DILocation(line: 1177, column: 9, scope: !914)
!917 = !DILocation(line: 1182, column: 5, scope: !356)
!918 = !DILocation(line: 1182, column: 5, scope: !919)
!919 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1182, column: 5)
!920 = !DILabel(scope: !356, name: "action_append", file: !2, line: 1184)
!921 = !DILocation(line: 1184, column: 1, scope: !356)
!922 = !DILocation(line: 1185, column: 23, scope: !356)
!923 = !DILocation(line: 1185, column: 28, scope: !356)
!924 = !DILocation(line: 1186, column: 17, scope: !356)
!925 = !DILocation(line: 1185, column: 5, scope: !356)
!926 = !DILocation(line: 1187, column: 5, scope: !356)
!927 = !DILocation(line: 1187, column: 5, scope: !928)
!928 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1187, column: 5)
!929 = !DILocation(line: 1187, column: 5, scope: !930)
!930 = distinct !DILexicalBlock(scope: !928, file: !2, line: 1187, column: 5)
!931 = !DILabel(scope: !356, name: "action_append_char", file: !2, line: 1189)
!932 = !DILocation(line: 1189, column: 1, scope: !356)
!933 = !DILocation(line: 1190, column: 24, scope: !356)
!934 = !DILocation(line: 1190, column: 46, scope: !356)
!935 = !DILocation(line: 1190, column: 53, scope: !356)
!936 = !DILocation(line: 1190, column: 35, scope: !356)
!937 = !DILocation(line: 1190, column: 29, scope: !356)
!938 = !DILocation(line: 1190, column: 5, scope: !356)
!939 = !DILocation(line: 1191, column: 5, scope: !356)
!940 = !DILocation(line: 1191, column: 5, scope: !941)
!941 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1191, column: 5)
!942 = !DILocation(line: 1191, column: 5, scope: !943)
!943 = distinct !DILexicalBlock(scope: !941, file: !2, line: 1191, column: 5)
!944 = !DILabel(scope: !356, name: "action_variable", file: !2, line: 1193)
!945 = !DILocation(line: 1193, column: 1, scope: !356)
!946 = !DILocalVariable(name: "descriptor", scope: !947, file: !2, line: 1194, type: !948)
!947 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1193, column: 18)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!949 = !DILocation(line: 1194, column: 32, scope: !947)
!950 = !DILocation(line: 1194, column: 45, scope: !947)
!951 = !DILocation(line: 1194, column: 52, scope: !947)
!952 = !DILocation(line: 1195, column: 9, scope: !947)
!953 = !DILocation(line: 1195, column: 21, scope: !947)
!954 = !DILocation(line: 1195, column: 38, scope: !947)
!955 = !DILocation(line: 1195, column: 51, scope: !947)
!956 = !DILocation(line: 1195, column: 63, scope: !947)
!957 = !DILocation(line: 1195, column: 75, scope: !947)
!958 = !DILocation(line: 1195, column: 61, scope: !947)
!959 = !DILocation(line: 1196, column: 9, scope: !947)
!960 = !DILocation(line: 1196, column: 9, scope: !961)
!961 = distinct !DILexicalBlock(scope: !947, file: !2, line: 1196, column: 9)
!962 = !DILocation(line: 1196, column: 9, scope: !963)
!963 = distinct !DILexicalBlock(scope: !961, file: !2, line: 1196, column: 9)
!964 = !DILocation(line: 1197, column: 5, scope: !947)
!965 = !DILabel(scope: !356, name: "action_variable_str", file: !2, line: 1199)
!966 = !DILocation(line: 1199, column: 1, scope: !356)
!967 = !DILocation(line: 1200, column: 31, scope: !356)
!968 = !DILocation(line: 1200, column: 44, scope: !356)
!969 = !DILocation(line: 1200, column: 67, scope: !356)
!970 = !DILocation(line: 1200, column: 74, scope: !356)
!971 = !DILocation(line: 1200, column: 56, scope: !356)
!972 = !DILocation(line: 1200, column: 54, scope: !356)
!973 = !DILocation(line: 1200, column: 5, scope: !356)
!974 = !DILocation(line: 1201, column: 5, scope: !356)
!975 = !DILocation(line: 1201, column: 5, scope: !976)
!976 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1201, column: 5)
!977 = !DILocation(line: 1201, column: 5, scope: !978)
!978 = distinct !DILexicalBlock(scope: !976, file: !2, line: 1201, column: 5)
!979 = !DILabel(scope: !356, name: "action_variable_str_escape", file: !2, line: 1203)
!980 = !DILocation(line: 1203, column: 1, scope: !356)
!981 = !DILocation(line: 1204, column: 39, scope: !356)
!982 = !DILocation(line: 1204, column: 52, scope: !356)
!983 = !DILocation(line: 1204, column: 75, scope: !356)
!984 = !DILocation(line: 1204, column: 82, scope: !356)
!985 = !DILocation(line: 1204, column: 64, scope: !356)
!986 = !DILocation(line: 1204, column: 62, scope: !356)
!987 = !DILocation(line: 1204, column: 5, scope: !356)
!988 = !DILocation(line: 1205, column: 5, scope: !356)
!989 = !DILocation(line: 1205, column: 5, scope: !990)
!990 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1205, column: 5)
!991 = !DILocation(line: 1205, column: 5, scope: !992)
!992 = distinct !DILexicalBlock(scope: !990, file: !2, line: 1205, column: 5)
!993 = !DILabel(scope: !356, name: "action_if_variable_not_empty", file: !2, line: 1207)
!994 = !DILocation(line: 1207, column: 1, scope: !356)
!995 = !DILocalVariable(name: "cd", scope: !996, file: !2, line: 1208, type: !997)
!996 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1207, column: 31)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "chunk_descriptor", file: !2, line: 155, size: 128, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !998, file: !2, line: 156, baseType: !216, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor", scope: !998, file: !2, line: 157, baseType: !948, size: 64, offset: 64)
!1002 = !DILocation(line: 1208, column: 34, scope: !996)
!1003 = !DILocation(line: 1208, column: 39, scope: !996)
!1004 = !DILocation(line: 1208, column: 46, scope: !996)
!1005 = !DILocalVariable(name: "empty", scope: !996, file: !2, line: 1209, type: !418)
!1006 = !DILocation(line: 1209, column: 14, scope: !996)
!1007 = !DILocation(line: 1209, column: 22, scope: !996)
!1008 = !DILocation(line: 1209, column: 26, scope: !996)
!1009 = !DILocation(line: 1209, column: 38, scope: !996)
!1010 = !DILocation(line: 1209, column: 59, scope: !996)
!1011 = !DILocation(line: 1209, column: 71, scope: !996)
!1012 = !DILocation(line: 1209, column: 75, scope: !996)
!1013 = !DILocation(line: 1209, column: 87, scope: !996)
!1014 = !DILocation(line: 1209, column: 69, scope: !996)
!1015 = !DILocation(line: 1210, column: 13, scope: !1016)
!1016 = distinct !DILexicalBlock(scope: !996, file: !2, line: 1210, column: 13)
!1017 = !DILocation(line: 1210, column: 20, scope: !1016)
!1018 = !DILocation(line: 1210, column: 26, scope: !1016)
!1019 = !DILocation(line: 1210, column: 13, scope: !996)
!1020 = !DILocation(line: 1211, column: 22, scope: !1016)
!1021 = !DILocation(line: 1211, column: 21, scope: !1016)
!1022 = !DILocation(line: 1211, column: 19, scope: !1016)
!1023 = !DILocation(line: 1211, column: 13, scope: !1016)
!1024 = !DILocation(line: 1212, column: 13, scope: !1025)
!1025 = distinct !DILexicalBlock(scope: !996, file: !2, line: 1212, column: 13)
!1026 = !DILocation(line: 1212, column: 13, scope: !996)
!1027 = !DILocation(line: 1213, column: 21, scope: !1028)
!1028 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 1212, column: 20)
!1029 = !DILocation(line: 1213, column: 25, scope: !1028)
!1030 = !DILocation(line: 1213, column: 19, scope: !1028)
!1031 = !DILocation(line: 1214, column: 9, scope: !1028)
!1032 = !DILocation(line: 1215, column: 33, scope: !1033)
!1033 = distinct !DILexicalBlock(scope: !1025, file: !2, line: 1214, column: 16)
!1034 = !DILocation(line: 1215, column: 38, scope: !1033)
!1035 = !DILocation(line: 1215, column: 44, scope: !1033)
!1036 = !DILocation(line: 1215, column: 49, scope: !1033)
!1037 = !DILocation(line: 1215, column: 54, scope: !1033)
!1038 = !DILocation(line: 1215, column: 65, scope: !1033)
!1039 = !DILocation(line: 1215, column: 69, scope: !1033)
!1040 = !DILocation(line: 1215, column: 21, scope: !1033)
!1041 = !DILocation(line: 1215, column: 19, scope: !1033)
!1042 = !DILocation(line: 1217, column: 9, scope: !996)
!1043 = !DILocation(line: 1217, column: 9, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !996, file: !2, line: 1217, column: 9)
!1045 = !DILocation(line: 1217, column: 9, scope: !1046)
!1046 = distinct !DILexicalBlock(scope: !1044, file: !2, line: 1217, column: 9)
!1047 = !DILocation(line: 1218, column: 5, scope: !996)
!1048 = !DILabel(scope: !356, name: "action_end_if_variable_not_empty", file: !2, line: 1220)
!1049 = !DILocation(line: 1220, column: 1, scope: !356)
!1050 = !DILocation(line: 1221, column: 9, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1221, column: 9)
!1052 = !DILocation(line: 1221, column: 9, scope: !356)
!1053 = !DILocation(line: 1222, column: 9, scope: !1051)
!1054 = !DILocation(line: 1223, column: 5, scope: !356)
!1055 = !DILocation(line: 1223, column: 5, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1223, column: 5)
!1057 = !DILocation(line: 1223, column: 5, scope: !1058)
!1058 = distinct !DILexicalBlock(scope: !1056, file: !2, line: 1223, column: 5)
!1059 = !DILabel(scope: !356, name: "action_apply_tpl", file: !2, line: 1225)
!1060 = !DILocation(line: 1225, column: 1, scope: !356)
!1061 = !DILocalVariable(name: "tmp", scope: !1062, file: !2, line: 1226, type: !200)
!1062 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1225, column: 19)
!1063 = !DILocation(line: 1226, column: 19, scope: !1062)
!1064 = !DILocation(line: 1226, column: 40, scope: !1062)
!1065 = !DILocation(line: 1226, column: 47, scope: !1062)
!1066 = !DILocation(line: 1226, column: 53, scope: !1062)
!1067 = !DILocation(line: 1226, column: 25, scope: !1062)
!1068 = !DILocation(line: 1227, column: 27, scope: !1062)
!1069 = !DILocation(line: 1227, column: 32, scope: !1062)
!1070 = !DILocation(line: 1227, column: 56, scope: !1062)
!1071 = !DILocation(line: 1227, column: 9, scope: !1062)
!1072 = !DILocation(line: 1228, column: 21, scope: !1062)
!1073 = !DILocation(line: 1228, column: 9, scope: !1062)
!1074 = !DILocation(line: 1229, column: 9, scope: !1062)
!1075 = !DILocation(line: 1229, column: 9, scope: !1076)
!1076 = distinct !DILexicalBlock(scope: !1062, file: !2, line: 1229, column: 9)
!1077 = !DILocation(line: 1229, column: 9, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1076, file: !2, line: 1229, column: 9)
!1079 = !DILocation(line: 1230, column: 5, scope: !1062)
!1080 = !DILabel(scope: !356, name: "action_start_iter", file: !2, line: 1232)
!1081 = !DILocation(line: 1232, column: 1, scope: !356)
!1082 = !DILocation(line: 1233, column: 9, scope: !1083)
!1083 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1233, column: 9)
!1084 = !DILocation(line: 1233, column: 9, scope: !356)
!1085 = !DILocation(line: 1234, column: 9, scope: !1086)
!1086 = distinct !DILexicalBlock(scope: !1083, file: !2, line: 1233, column: 33)
!1087 = !DILocation(line: 1235, column: 9, scope: !1086)
!1088 = !DILocation(line: 1235, column: 9, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1086, file: !2, line: 1235, column: 9)
!1090 = !DILocation(line: 1235, column: 9, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1089, file: !2, line: 1235, column: 9)
!1092 = !DILocation(line: 1236, column: 5, scope: !1086)
!1093 = !DILocalVariable(name: "cd", scope: !356, file: !2, line: 1238, type: !997)
!1094 = !DILocation(line: 1238, column: 30, scope: !356)
!1095 = !DILocation(line: 1238, column: 35, scope: !356)
!1096 = !DILocation(line: 1238, column: 42, scope: !356)
!1097 = !DILocation(line: 1239, column: 32, scope: !356)
!1098 = !DILocation(line: 1239, column: 36, scope: !356)
!1099 = !DILocation(line: 1239, column: 48, scope: !356)
!1100 = !DILocation(line: 1239, column: 59, scope: !356)
!1101 = !DILocation(line: 1239, column: 12, scope: !356)
!1102 = !DILocation(line: 1239, column: 10, scope: !356)
!1103 = !DILocalVariable(name: "resumed", scope: !356, file: !2, line: 1241, type: !418)
!1104 = !DILocation(line: 1241, column: 10, scope: !356)
!1105 = !DILocation(line: 1241, column: 38, scope: !356)
!1106 = !DILocation(line: 1241, column: 20, scope: !356)
!1107 = !DILocalVariable(name: "negate", scope: !356, file: !2, line: 1242, type: !122)
!1108 = !DILocation(line: 1242, column: 16, scope: !356)
!1109 = !DILocation(line: 1242, column: 25, scope: !356)
!1110 = !DILocation(line: 1242, column: 32, scope: !356)
!1111 = !DILocation(line: 1242, column: 38, scope: !356)
!1112 = !DILocation(line: 1243, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1243, column: 9)
!1114 = !DILocation(line: 1243, column: 9, scope: !356)
!1115 = !DILocation(line: 1244, column: 20, scope: !1113)
!1116 = !DILocation(line: 1244, column: 19, scope: !1113)
!1117 = !DILocation(line: 1244, column: 17, scope: !1113)
!1118 = !DILocation(line: 1244, column: 9, scope: !1113)
!1119 = !DILocation(line: 1245, column: 10, scope: !1120)
!1120 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1245, column: 9)
!1121 = !DILocation(line: 1245, column: 9, scope: !356)
!1122 = !DILocation(line: 1246, column: 17, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1120, file: !2, line: 1245, column: 19)
!1124 = !DILocation(line: 1246, column: 21, scope: !1123)
!1125 = !DILocation(line: 1246, column: 15, scope: !1123)
!1126 = !DILocation(line: 1248, column: 13, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1248, column: 13)
!1128 = !DILocation(line: 1248, column: 13, scope: !1123)
!1129 = !DILocation(line: 1249, column: 31, scope: !1127)
!1130 = !DILocation(line: 1249, column: 13, scope: !1127)
!1131 = !DILocation(line: 1251, column: 19, scope: !1123)
!1132 = !DILocation(line: 1251, column: 9, scope: !1123)
!1133 = !DILocation(line: 1252, column: 14, scope: !1123)
!1134 = !DILocation(line: 1254, column: 13, scope: !1135)
!1135 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1254, column: 13)
!1136 = !DILocation(line: 1254, column: 13, scope: !1123)
!1137 = !DILocation(line: 1255, column: 13, scope: !1135)
!1138 = !DILocation(line: 1255, column: 13, scope: !1139)
!1139 = distinct !DILexicalBlock(scope: !1135, file: !2, line: 1255, column: 13)
!1140 = !DILocation(line: 1256, column: 9, scope: !1123)
!1141 = !DILocation(line: 1256, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 1256, column: 9)
!1143 = !DILocation(line: 1256, column: 9, scope: !1144)
!1144 = distinct !DILexicalBlock(scope: !1142, file: !2, line: 1256, column: 9)
!1145 = !DILocation(line: 1257, column: 5, scope: !1123)
!1146 = !DILocation(line: 1259, column: 25, scope: !356)
!1147 = !DILocation(line: 1259, column: 30, scope: !356)
!1148 = !DILocation(line: 1259, column: 36, scope: !356)
!1149 = !DILocation(line: 1259, column: 41, scope: !356)
!1150 = !DILocation(line: 1259, column: 46, scope: !356)
!1151 = !DILocation(line: 1259, column: 57, scope: !356)
!1152 = !DILocation(line: 1259, column: 13, scope: !356)
!1153 = !DILocation(line: 1259, column: 11, scope: !356)
!1154 = !DILocation(line: 1260, column: 5, scope: !356)
!1155 = !DILocation(line: 1260, column: 5, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1260, column: 5)
!1157 = !DILabel(scope: !356, name: "action_end_iter", file: !2, line: 1262)
!1158 = !DILocation(line: 1262, column: 1, scope: !356)
!1159 = !DILocation(line: 1263, column: 9, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1263, column: 9)
!1161 = !DILocation(line: 1263, column: 23, scope: !1160)
!1162 = !DILocation(line: 1263, column: 30, scope: !1160)
!1163 = !DILocation(line: 1263, column: 20, scope: !1160)
!1164 = !DILocation(line: 1263, column: 9, scope: !356)
!1165 = !DILocation(line: 1264, column: 9, scope: !1160)
!1166 = !DILocation(line: 1266, column: 9, scope: !1167)
!1167 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1266, column: 9)
!1168 = !DILocation(line: 1266, column: 9, scope: !356)
!1169 = !DILocation(line: 1267, column: 14, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 1267, column: 13)
!1171 = distinct !DILexicalBlock(scope: !1167, file: !2, line: 1266, column: 26)
!1172 = !DILocation(line: 1267, column: 21, scope: !1170)
!1173 = !DILocation(line: 1267, column: 13, scope: !1171)
!1174 = !DILocation(line: 1268, column: 13, scope: !1170)
!1175 = !DILocation(line: 1269, column: 9, scope: !1171)
!1176 = !DILocation(line: 1269, column: 9, scope: !1177)
!1177 = distinct !DILexicalBlock(scope: !1171, file: !2, line: 1269, column: 9)
!1178 = !DILocation(line: 1269, column: 9, scope: !1179)
!1179 = distinct !DILexicalBlock(scope: !1177, file: !2, line: 1269, column: 9)
!1180 = !DILocation(line: 1270, column: 5, scope: !1171)
!1181 = !DILocation(line: 1272, column: 28, scope: !1182)
!1182 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1272, column: 9)
!1183 = !DILocation(line: 1272, column: 10, scope: !1182)
!1184 = !DILocation(line: 1272, column: 9, scope: !356)
!1185 = !DILocation(line: 1273, column: 19, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1182, file: !2, line: 1272, column: 38)
!1187 = !DILocation(line: 1273, column: 9, scope: !1186)
!1188 = !DILocation(line: 1274, column: 14, scope: !1186)
!1189 = !DILocation(line: 1275, column: 9, scope: !1186)
!1190 = !DILocation(line: 1275, column: 9, scope: !1191)
!1191 = distinct !DILexicalBlock(scope: !1186, file: !2, line: 1275, column: 9)
!1192 = !DILocation(line: 1275, column: 9, scope: !1193)
!1193 = distinct !DILexicalBlock(scope: !1191, file: !2, line: 1275, column: 9)
!1194 = !DILocation(line: 1276, column: 5, scope: !1186)
!1195 = !DILocation(line: 1278, column: 25, scope: !356)
!1196 = !DILocation(line: 1278, column: 47, scope: !356)
!1197 = !DILocation(line: 1278, column: 54, scope: !356)
!1198 = !DILocation(line: 1278, column: 60, scope: !356)
!1199 = !DILocation(line: 1278, column: 65, scope: !356)
!1200 = !DILocation(line: 1278, column: 70, scope: !356)
!1201 = !DILocation(line: 1278, column: 81, scope: !356)
!1202 = !DILocation(line: 1278, column: 88, scope: !356)
!1203 = !DILocation(line: 1278, column: 13, scope: !356)
!1204 = !DILocation(line: 1278, column: 11, scope: !356)
!1205 = !DILocation(line: 1279, column: 5, scope: !356)
!1206 = !DILocation(line: 1279, column: 5, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !356, file: !2, line: 1279, column: 5)
!1208 = !DILabel(scope: !356, name: "finalize", file: !2, line: 1281)
!1209 = !DILocation(line: 1281, column: 1, scope: !356)
!1210 = !DILocation(line: 1282, column: 12, scope: !356)
!1211 = !DILocation(line: 1282, column: 5, scope: !356)
!1212 = !DILocation(line: 1285, column: 1, scope: !356)
!1213 = distinct !DISubprogram(name: "lwan_tpl_apply", scope: !2, file: !2, line: 1302, type: !1214, scopeLine: 1303, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!200, !359, !168}
!1216 = !DILocalVariable(name: "tpl", arg: 1, scope: !1213, file: !2, line: 1302, type: !359)
!1217 = !DILocation(line: 1302, column: 28, scope: !1213)
!1218 = !DILocalVariable(name: "variables", arg: 2, scope: !1213, file: !2, line: 1302, type: !168)
!1219 = !DILocation(line: 1302, column: 39, scope: !1213)
!1220 = !DILocalVariable(name: "buf", scope: !1213, file: !2, line: 1304, type: !200)
!1221 = !DILocation(line: 1304, column: 15, scope: !1213)
!1222 = !DILocation(line: 1304, column: 42, scope: !1213)
!1223 = !DILocation(line: 1304, column: 47, scope: !1213)
!1224 = !DILocation(line: 1304, column: 21, scope: !1213)
!1225 = !DILocation(line: 1305, column: 39, scope: !1213)
!1226 = !DILocation(line: 1305, column: 44, scope: !1213)
!1227 = !DILocation(line: 1305, column: 49, scope: !1213)
!1228 = !DILocation(line: 1305, column: 12, scope: !1213)
!1229 = !DILocation(line: 1305, column: 5, scope: !1213)
!1230 = distinct !DISubprogram(name: "parser_text", scope: !2, file: !2, line: 773, type: !741, scopeLine: 774, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1231 = !DILocalVariable(name: "parser", arg: 1, scope: !1230, file: !2, line: 773, type: !743)
!1232 = !DILocation(line: 773, column: 41, scope: !1230)
!1233 = !DILocalVariable(name: "item", arg: 2, scope: !1230, file: !2, line: 773, type: !744)
!1234 = !DILocation(line: 773, column: 62, scope: !1230)
!1235 = !DILocation(line: 775, column: 9, scope: !1236)
!1236 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 775, column: 9)
!1237 = !DILocation(line: 775, column: 15, scope: !1236)
!1238 = !DILocation(line: 775, column: 20, scope: !1236)
!1239 = !DILocation(line: 775, column: 9, scope: !1230)
!1240 = !DILocation(line: 776, column: 9, scope: !1236)
!1241 = !DILocation(line: 777, column: 9, scope: !1242)
!1242 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 777, column: 9)
!1243 = !DILocation(line: 777, column: 15, scope: !1242)
!1244 = !DILocation(line: 777, column: 20, scope: !1242)
!1245 = !DILocation(line: 777, column: 9, scope: !1230)
!1246 = !DILocation(line: 778, column: 13, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1248, file: !2, line: 778, column: 13)
!1248 = distinct !DILexicalBlock(scope: !1242, file: !2, line: 777, column: 34)
!1249 = !DILocation(line: 778, column: 19, scope: !1247)
!1250 = !DILocation(line: 778, column: 25, scope: !1247)
!1251 = !DILocation(line: 778, column: 29, scope: !1247)
!1252 = !DILocation(line: 778, column: 13, scope: !1248)
!1253 = !DILocation(line: 779, column: 24, scope: !1254)
!1254 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 778, column: 35)
!1255 = !DILocation(line: 779, column: 75, scope: !1254)
!1256 = !DILocation(line: 779, column: 81, scope: !1254)
!1257 = !DILocation(line: 779, column: 87, scope: !1254)
!1258 = !DILocation(line: 779, column: 74, scope: !1254)
!1259 = !DILocation(line: 779, column: 63, scope: !1254)
!1260 = !DILocation(line: 779, column: 55, scope: !1254)
!1261 = !DILocation(line: 779, column: 13, scope: !1254)
!1262 = !DILocation(line: 780, column: 9, scope: !1254)
!1263 = !DILocalVariable(name: "buf", scope: !1264, file: !2, line: 781, type: !200)
!1264 = distinct !DILexicalBlock(scope: !1247, file: !2, line: 780, column: 16)
!1265 = !DILocation(line: 781, column: 23, scope: !1264)
!1266 = !DILocation(line: 781, column: 50, scope: !1264)
!1267 = !DILocation(line: 781, column: 56, scope: !1264)
!1268 = !DILocation(line: 781, column: 62, scope: !1264)
!1269 = !DILocation(line: 781, column: 29, scope: !1264)
!1270 = !DILocation(line: 782, column: 18, scope: !1271)
!1271 = distinct !DILexicalBlock(scope: !1264, file: !2, line: 782, column: 17)
!1272 = !DILocation(line: 782, column: 17, scope: !1264)
!1273 = !DILocation(line: 783, column: 35, scope: !1271)
!1274 = !DILocation(line: 783, column: 24, scope: !1271)
!1275 = !DILocation(line: 783, column: 17, scope: !1271)
!1276 = !DILocation(line: 784, column: 24, scope: !1264)
!1277 = !DILocation(line: 784, column: 29, scope: !1264)
!1278 = !DILocation(line: 784, column: 35, scope: !1264)
!1279 = !DILocation(line: 784, column: 41, scope: !1264)
!1280 = !DILocation(line: 784, column: 48, scope: !1264)
!1281 = !DILocation(line: 784, column: 54, scope: !1264)
!1282 = !DILocation(line: 784, column: 60, scope: !1264)
!1283 = !DILocation(line: 784, column: 13, scope: !1264)
!1284 = !DILocation(line: 785, column: 24, scope: !1264)
!1285 = !DILocation(line: 785, column: 50, scope: !1264)
!1286 = !DILocation(line: 785, column: 13, scope: !1264)
!1287 = !DILocation(line: 787, column: 38, scope: !1248)
!1288 = !DILocation(line: 787, column: 44, scope: !1248)
!1289 = !DILocation(line: 787, column: 50, scope: !1248)
!1290 = !DILocation(line: 787, column: 9, scope: !1248)
!1291 = !DILocation(line: 787, column: 17, scope: !1248)
!1292 = !DILocation(line: 787, column: 22, scope: !1248)
!1293 = !DILocation(line: 787, column: 35, scope: !1248)
!1294 = !DILocation(line: 788, column: 9, scope: !1248)
!1295 = !DILocation(line: 790, column: 9, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1230, file: !2, line: 790, column: 9)
!1297 = !DILocation(line: 790, column: 15, scope: !1296)
!1298 = !DILocation(line: 790, column: 20, scope: !1296)
!1299 = !DILocation(line: 790, column: 9, scope: !1230)
!1300 = !DILocation(line: 791, column: 20, scope: !1301)
!1301 = distinct !DILexicalBlock(scope: !1296, file: !2, line: 790, column: 33)
!1302 = !DILocation(line: 791, column: 9, scope: !1301)
!1303 = !DILocation(line: 792, column: 9, scope: !1301)
!1304 = !DILocation(line: 795, column: 30, scope: !1230)
!1305 = !DILocation(line: 795, column: 12, scope: !1230)
!1306 = !DILocation(line: 795, column: 5, scope: !1230)
!1307 = !DILocation(line: 796, column: 1, scope: !1230)
!1308 = distinct !DISubprogram(name: "parser_init", scope: !2, file: !2, line: 1015, type: !1309, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1309 = !DISubroutineType(types: !1310)
!1310 = !{!418, !743, !631, !167}
!1311 = !DILocalVariable(name: "parser", arg: 1, scope: !1308, file: !2, line: 1015, type: !743)
!1312 = !DILocation(line: 1015, column: 40, scope: !1308)
!1313 = !DILocalVariable(name: "descriptor", arg: 2, scope: !1308, file: !2, line: 1015, type: !631)
!1314 = !DILocation(line: 1015, column: 77, scope: !1308)
!1315 = !DILocalVariable(name: "string", arg: 3, scope: !1308, file: !2, line: 1016, type: !167)
!1316 = !DILocation(line: 1016, column: 17, scope: !1308)
!1317 = !DILocalVariable(name: "chunks", scope: !1308, file: !2, line: 1018, type: !216)
!1318 = !DILocation(line: 1018, column: 19, scope: !1308)
!1319 = !DILocation(line: 1020, column: 21, scope: !1320)
!1320 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 1020, column: 9)
!1321 = !DILocation(line: 1020, column: 29, scope: !1320)
!1322 = !DILocation(line: 1020, column: 9, scope: !1320)
!1323 = !DILocation(line: 1020, column: 41, scope: !1320)
!1324 = !DILocation(line: 1020, column: 9, scope: !1308)
!1325 = !DILocation(line: 1021, column: 9, scope: !1320)
!1326 = !DILocation(line: 1023, column: 33, scope: !1308)
!1327 = !DILocation(line: 1023, column: 41, scope: !1308)
!1328 = !DILocation(line: 1023, column: 48, scope: !1308)
!1329 = !DILocation(line: 1023, column: 14, scope: !1308)
!1330 = !DILocation(line: 1023, column: 12, scope: !1308)
!1331 = !DILocation(line: 1024, column: 49, scope: !1308)
!1332 = !DILocation(line: 1024, column: 27, scope: !1308)
!1333 = !DILocation(line: 1024, column: 35, scope: !1308)
!1334 = !DILocation(line: 1024, column: 42, scope: !1308)
!1335 = !DILocation(line: 1024, column: 47, scope: !1308)
!1336 = !DILocation(line: 1024, column: 5, scope: !1308)
!1337 = !DILocation(line: 1024, column: 13, scope: !1308)
!1338 = !DILocation(line: 1024, column: 18, scope: !1308)
!1339 = !DILocation(line: 1024, column: 25, scope: !1308)
!1340 = !DILocation(line: 1025, column: 10, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1308, file: !2, line: 1025, column: 9)
!1342 = !DILocation(line: 1025, column: 9, scope: !1308)
!1343 = !DILocation(line: 1026, column: 20, scope: !1344)
!1344 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 1025, column: 18)
!1345 = !DILocation(line: 1026, column: 9, scope: !1344)
!1346 = !DILocation(line: 1027, column: 9, scope: !1344)
!1347 = !DILocation(line: 1030, column: 15, scope: !1308)
!1348 = !DILocation(line: 1030, column: 23, scope: !1308)
!1349 = !DILocation(line: 1030, column: 30, scope: !1308)
!1350 = !DILocation(line: 1030, column: 5, scope: !1308)
!1351 = !DILocation(line: 1031, column: 21, scope: !1308)
!1352 = !DILocation(line: 1031, column: 29, scope: !1308)
!1353 = !DILocation(line: 1031, column: 5, scope: !1308)
!1354 = !DILocation(line: 1033, column: 5, scope: !1308)
!1355 = !DILocation(line: 1034, column: 1, scope: !1308)
!1356 = distinct !DISubprogram(name: "lex_next", scope: !2, file: !2, line: 460, type: !1357, scopeLine: 461, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!418, !711, !1359}
!1359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!1360 = !DILocalVariable(name: "lexer", arg: 1, scope: !1356, file: !2, line: 460, type: !711)
!1361 = !DILocation(line: 460, column: 36, scope: !1356)
!1362 = !DILocalVariable(name: "item", arg: 2, scope: !1356, file: !2, line: 460, type: !1359)
!1363 = !DILocation(line: 460, column: 57, scope: !1356)
!1364 = !DILocation(line: 462, column: 5, scope: !1356)
!1365 = !DILocation(line: 462, column: 12, scope: !1356)
!1366 = !DILocation(line: 462, column: 19, scope: !1356)
!1367 = !DILocation(line: 463, column: 26, scope: !1368)
!1368 = distinct !DILexicalBlock(scope: !1369, file: !2, line: 463, column: 13)
!1369 = distinct !DILexicalBlock(scope: !1356, file: !2, line: 462, column: 26)
!1370 = !DILocation(line: 463, column: 33, scope: !1368)
!1371 = !DILocation(line: 463, column: 13, scope: !1368)
!1372 = !DILocation(line: 463, column: 13, scope: !1369)
!1373 = !DILocation(line: 464, column: 13, scope: !1368)
!1374 = !DILocation(line: 465, column: 24, scope: !1369)
!1375 = !DILocation(line: 465, column: 31, scope: !1369)
!1376 = !DILocation(line: 465, column: 37, scope: !1369)
!1377 = !DILocation(line: 465, column: 9, scope: !1369)
!1378 = !DILocation(line: 465, column: 16, scope: !1369)
!1379 = !DILocation(line: 465, column: 22, scope: !1369)
!1380 = distinct !{!1380, !1364, !1381, !536}
!1381 = !DILocation(line: 466, column: 5, scope: !1356)
!1382 = !DILocation(line: 468, column: 25, scope: !1356)
!1383 = !DILocation(line: 468, column: 32, scope: !1356)
!1384 = !DILocation(line: 468, column: 12, scope: !1356)
!1385 = !DILocation(line: 468, column: 5, scope: !1356)
!1386 = !DILocation(line: 469, column: 1, scope: !1356)
!1387 = distinct !DISubprogram(name: "parser_shutdown", scope: !2, file: !2, line: 1036, type: !1388, scopeLine: 1037, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1388 = !DISubroutineType(types: !1389)
!1389 = !{!418, !743, !744}
!1390 = !DILocalVariable(name: "parser", arg: 1, scope: !1387, file: !2, line: 1036, type: !743)
!1391 = !DILocation(line: 1036, column: 44, scope: !1387)
!1392 = !DILocalVariable(name: "item", arg: 2, scope: !1387, file: !2, line: 1036, type: !744)
!1393 = !DILocation(line: 1036, column: 65, scope: !1387)
!1394 = !DILocalVariable(name: "success", scope: !1387, file: !2, line: 1038, type: !418)
!1395 = !DILocation(line: 1038, column: 10, scope: !1387)
!1396 = !DILocation(line: 1040, column: 9, scope: !1397)
!1397 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1040, column: 9)
!1398 = !DILocation(line: 1040, column: 15, scope: !1397)
!1399 = !DILocation(line: 1040, column: 20, scope: !1397)
!1400 = !DILocation(line: 1040, column: 34, scope: !1397)
!1401 = !DILocation(line: 1040, column: 37, scope: !1397)
!1402 = !DILocation(line: 1040, column: 43, scope: !1397)
!1403 = !DILocation(line: 1040, column: 49, scope: !1397)
!1404 = !DILocation(line: 1040, column: 9, scope: !1387)
!1405 = !DILocation(line: 1041, column: 9, scope: !1406)
!1406 = distinct !DILexicalBlock(scope: !1397, file: !2, line: 1040, column: 56)
!1407 = !DILocation(line: 1042, column: 22, scope: !1406)
!1408 = !DILocation(line: 1042, column: 28, scope: !1406)
!1409 = !DILocation(line: 1042, column: 34, scope: !1406)
!1410 = !DILocation(line: 1042, column: 9, scope: !1406)
!1411 = !DILocation(line: 1044, column: 17, scope: !1406)
!1412 = !DILocation(line: 1045, column: 5, scope: !1406)
!1413 = !DILocation(line: 1047, column: 22, scope: !1414)
!1414 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1047, column: 9)
!1415 = !DILocation(line: 1047, column: 30, scope: !1414)
!1416 = !DILocation(line: 1047, column: 10, scope: !1414)
!1417 = !DILocation(line: 1047, column: 9, scope: !1387)
!1418 = !DILocalVariable(name: "stacked", scope: !1419, file: !2, line: 1048, type: !179)
!1419 = distinct !DILexicalBlock(scope: !1414, file: !2, line: 1047, column: 38)
!1420 = !DILocation(line: 1048, column: 30, scope: !1419)
!1421 = !DILocalVariable(name: "stacked_next", scope: !1419, file: !2, line: 1048, type: !179)
!1422 = !DILocation(line: 1048, column: 40, scope: !1419)
!1423 = !DILocation(line: 1050, column: 9, scope: !1424)
!1424 = distinct !DILexicalBlock(scope: !1419, file: !2, line: 1050, column: 9)
!1425 = !DILocation(line: 1050, column: 9, scope: !1426)
!1426 = distinct !DILexicalBlock(scope: !1424, file: !2, line: 1050, column: 9)
!1427 = !DILocation(line: 1051, column: 13, scope: !1428)
!1428 = distinct !DILexicalBlock(scope: !1426, file: !2, line: 1050, column: 74)
!1429 = !DILocation(line: 1053, column: 23, scope: !1428)
!1430 = !DILocation(line: 1053, column: 32, scope: !1428)
!1431 = !DILocation(line: 1053, column: 13, scope: !1428)
!1432 = !DILocation(line: 1054, column: 18, scope: !1428)
!1433 = !DILocation(line: 1054, column: 13, scope: !1428)
!1434 = !DILocation(line: 1055, column: 9, scope: !1428)
!1435 = distinct !{!1435, !1423, !1436, !536}
!1436 = !DILocation(line: 1055, column: 9, scope: !1424)
!1437 = !DILocation(line: 1057, column: 17, scope: !1419)
!1438 = !DILocation(line: 1058, column: 5, scope: !1419)
!1439 = !DILocation(line: 1060, column: 16, scope: !1387)
!1440 = !DILocation(line: 1060, column: 5, scope: !1387)
!1441 = !DILocation(line: 1061, column: 9, scope: !1442)
!1442 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1061, column: 9)
!1443 = !DILocation(line: 1061, column: 17, scope: !1442)
!1444 = !DILocation(line: 1061, column: 9, scope: !1387)
!1445 = !DILocation(line: 1062, column: 9, scope: !1446)
!1446 = distinct !DILexicalBlock(scope: !1442, file: !2, line: 1061, column: 25)
!1447 = !DILocation(line: 1064, column: 9, scope: !1446)
!1448 = !DILocation(line: 1064, column: 16, scope: !1446)
!1449 = !DILocation(line: 1064, column: 24, scope: !1446)
!1450 = !DILocation(line: 1065, column: 24, scope: !1446)
!1451 = !DILocation(line: 1065, column: 13, scope: !1446)
!1452 = distinct !{!1452, !1447, !1453, !536}
!1453 = !DILocation(line: 1065, column: 30, scope: !1446)
!1454 = !DILocation(line: 1067, column: 17, scope: !1446)
!1455 = !DILocation(line: 1068, column: 5, scope: !1446)
!1456 = !DILocation(line: 1070, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1070, column: 9)
!1458 = !DILocation(line: 1070, column: 17, scope: !1457)
!1459 = !DILocation(line: 1070, column: 23, scope: !1457)
!1460 = !DILocation(line: 1070, column: 9, scope: !1387)
!1461 = !DILocation(line: 1071, column: 9, scope: !1462)
!1462 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 1070, column: 39)
!1463 = !DILocation(line: 1072, column: 17, scope: !1462)
!1464 = !DILocation(line: 1073, column: 5, scope: !1462)
!1465 = !DILocation(line: 1074, column: 9, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1074, column: 9)
!1467 = !DILocation(line: 1074, column: 17, scope: !1466)
!1468 = !DILocation(line: 1074, column: 23, scope: !1466)
!1469 = !DILocation(line: 1074, column: 9, scope: !1387)
!1470 = !DILocation(line: 1075, column: 9, scope: !1471)
!1471 = distinct !DILexicalBlock(scope: !1466, file: !2, line: 1074, column: 38)
!1472 = !DILocation(line: 1076, column: 17, scope: !1471)
!1473 = !DILocation(line: 1077, column: 5, scope: !1471)
!1474 = !DILocation(line: 1079, column: 9, scope: !1475)
!1475 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1079, column: 9)
!1476 = !DILocation(line: 1079, column: 9, scope: !1387)
!1477 = !DILocation(line: 1080, column: 41, scope: !1475)
!1478 = !DILocation(line: 1080, column: 19, scope: !1475)
!1479 = !DILocation(line: 1080, column: 17, scope: !1475)
!1480 = !DILocation(line: 1080, column: 9, scope: !1475)
!1481 = !DILocation(line: 1082, column: 10, scope: !1482)
!1482 = distinct !DILexicalBlock(scope: !1387, file: !2, line: 1082, column: 9)
!1483 = !DILocation(line: 1082, column: 9, scope: !1387)
!1484 = !DILocation(line: 1084, column: 20, scope: !1485)
!1485 = distinct !DILexicalBlock(scope: !1482, file: !2, line: 1082, column: 19)
!1486 = !DILocation(line: 1084, column: 9, scope: !1485)
!1487 = !DILocation(line: 1085, column: 5, scope: !1485)
!1488 = !DILocation(line: 1087, column: 12, scope: !1387)
!1489 = !DILocation(line: 1087, column: 5, scope: !1387)
!1490 = distinct !DISubprogram(name: "parser_meta", scope: !2, file: !2, line: 748, type: !741, scopeLine: 749, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1491 = !DILocalVariable(name: "parser", arg: 1, scope: !1490, file: !2, line: 748, type: !743)
!1492 = !DILocation(line: 748, column: 41, scope: !1490)
!1493 = !DILocalVariable(name: "item", arg: 2, scope: !1490, file: !2, line: 748, type: !744)
!1494 = !DILocation(line: 748, column: 62, scope: !1490)
!1495 = !DILocation(line: 750, column: 9, scope: !1496)
!1496 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 750, column: 9)
!1497 = !DILocation(line: 750, column: 15, scope: !1496)
!1498 = !DILocation(line: 750, column: 20, scope: !1496)
!1499 = !DILocation(line: 750, column: 9, scope: !1490)
!1500 = !DILocation(line: 751, column: 9, scope: !1501)
!1501 = distinct !DILexicalBlock(scope: !1496, file: !2, line: 750, column: 46)
!1502 = !DILocation(line: 751, column: 17, scope: !1501)
!1503 = !DILocation(line: 751, column: 23, scope: !1501)
!1504 = !DILocation(line: 752, column: 9, scope: !1501)
!1505 = !DILocation(line: 755, column: 9, scope: !1506)
!1506 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 755, column: 9)
!1507 = !DILocation(line: 755, column: 15, scope: !1506)
!1508 = !DILocation(line: 755, column: 20, scope: !1506)
!1509 = !DILocation(line: 755, column: 9, scope: !1490)
!1510 = !DILocation(line: 756, column: 34, scope: !1506)
!1511 = !DILocation(line: 756, column: 42, scope: !1506)
!1512 = !DILocation(line: 756, column: 16, scope: !1506)
!1513 = !DILocation(line: 756, column: 9, scope: !1506)
!1514 = !DILocation(line: 758, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 758, column: 9)
!1516 = !DILocation(line: 758, column: 15, scope: !1515)
!1517 = !DILocation(line: 758, column: 20, scope: !1515)
!1518 = !DILocation(line: 758, column: 9, scope: !1490)
!1519 = !DILocation(line: 759, column: 9, scope: !1515)
!1520 = !DILocation(line: 761, column: 9, scope: !1521)
!1521 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 761, column: 9)
!1522 = !DILocation(line: 761, column: 15, scope: !1521)
!1523 = !DILocation(line: 761, column: 20, scope: !1521)
!1524 = !DILocation(line: 761, column: 9, scope: !1490)
!1525 = !DILocation(line: 762, column: 9, scope: !1521)
!1526 = !DILocation(line: 764, column: 9, scope: !1527)
!1527 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 764, column: 9)
!1528 = !DILocation(line: 764, column: 15, scope: !1527)
!1529 = !DILocation(line: 764, column: 20, scope: !1527)
!1530 = !DILocation(line: 764, column: 9, scope: !1490)
!1531 = !DILocation(line: 765, column: 9, scope: !1527)
!1532 = !DILocation(line: 767, column: 9, scope: !1533)
!1533 = distinct !DILexicalBlock(scope: !1490, file: !2, line: 767, column: 9)
!1534 = !DILocation(line: 767, column: 15, scope: !1533)
!1535 = !DILocation(line: 767, column: 20, scope: !1533)
!1536 = !DILocation(line: 767, column: 9, scope: !1490)
!1537 = !DILocation(line: 768, column: 9, scope: !1533)
!1538 = !DILocation(line: 770, column: 30, scope: !1490)
!1539 = !DILocation(line: 770, column: 12, scope: !1490)
!1540 = !DILocation(line: 770, column: 5, scope: !1490)
!1541 = !DILocation(line: 771, column: 1, scope: !1490)
!1542 = distinct !DISubprogram(name: "emit_chunk", scope: !2, file: !2, line: 510, type: !1543, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !743, !108, !122, !168}
!1545 = !DILocalVariable(name: "parser", arg: 1, scope: !1542, file: !2, line: 510, type: !743)
!1546 = !DILocation(line: 510, column: 39, scope: !1542)
!1547 = !DILocalVariable(name: "action", arg: 2, scope: !1542, file: !2, line: 510, type: !108)
!1548 = !DILocation(line: 510, column: 59, scope: !1542)
!1549 = !DILocalVariable(name: "flags", arg: 3, scope: !1542, file: !2, line: 511, type: !122)
!1550 = !DILocation(line: 511, column: 20, scope: !1542)
!1551 = !DILocalVariable(name: "data", arg: 4, scope: !1542, file: !2, line: 511, type: !168)
!1552 = !DILocation(line: 511, column: 33, scope: !1542)
!1553 = !DILocalVariable(name: "chunk", scope: !1542, file: !2, line: 513, type: !216)
!1554 = !DILocation(line: 513, column: 19, scope: !1542)
!1555 = !DILocation(line: 515, column: 9, scope: !1556)
!1556 = distinct !DILexicalBlock(scope: !1542, file: !2, line: 515, column: 9)
!1557 = !DILocation(line: 515, column: 17, scope: !1556)
!1558 = !DILocation(line: 515, column: 24, scope: !1556)
!1559 = !DILocation(line: 515, column: 32, scope: !1556)
!1560 = !DILocation(line: 515, column: 40, scope: !1556)
!1561 = !DILocation(line: 515, column: 47, scope: !1556)
!1562 = !DILocation(line: 515, column: 29, scope: !1556)
!1563 = !DILocation(line: 515, column: 9, scope: !1542)
!1564 = !DILocation(line: 516, column: 9, scope: !1565)
!1565 = distinct !DILexicalBlock(scope: !1556, file: !2, line: 515, column: 57)
!1566 = !DILocation(line: 516, column: 17, scope: !1565)
!1567 = !DILocation(line: 516, column: 24, scope: !1565)
!1568 = !DILocation(line: 516, column: 33, scope: !1565)
!1569 = !DILocation(line: 518, column: 30, scope: !1565)
!1570 = !DILocation(line: 518, column: 38, scope: !1565)
!1571 = !DILocation(line: 518, column: 45, scope: !1565)
!1572 = !DILocation(line: 519, column: 13, scope: !1565)
!1573 = !DILocation(line: 519, column: 21, scope: !1565)
!1574 = !DILocation(line: 519, column: 28, scope: !1565)
!1575 = !DILocation(line: 518, column: 17, scope: !1565)
!1576 = !DILocation(line: 518, column: 15, scope: !1565)
!1577 = !DILocation(line: 520, column: 14, scope: !1578)
!1578 = distinct !DILexicalBlock(scope: !1565, file: !2, line: 520, column: 13)
!1579 = !DILocation(line: 520, column: 13, scope: !1565)
!1580 = !DILocation(line: 521, column: 13, scope: !1578)
!1581 = !DILocation(line: 523, column: 53, scope: !1565)
!1582 = !DILocation(line: 523, column: 31, scope: !1565)
!1583 = !DILocation(line: 523, column: 39, scope: !1565)
!1584 = !DILocation(line: 523, column: 46, scope: !1565)
!1585 = !DILocation(line: 523, column: 51, scope: !1565)
!1586 = !DILocation(line: 523, column: 9, scope: !1565)
!1587 = !DILocation(line: 523, column: 17, scope: !1565)
!1588 = !DILocation(line: 523, column: 22, scope: !1565)
!1589 = !DILocation(line: 523, column: 29, scope: !1565)
!1590 = !DILocation(line: 524, column: 5, scope: !1565)
!1591 = !DILocation(line: 526, column: 14, scope: !1542)
!1592 = !DILocation(line: 526, column: 22, scope: !1542)
!1593 = !DILocation(line: 526, column: 29, scope: !1542)
!1594 = !DILocation(line: 526, column: 34, scope: !1542)
!1595 = !DILocation(line: 526, column: 42, scope: !1542)
!1596 = !DILocation(line: 526, column: 49, scope: !1542)
!1597 = !DILocation(line: 526, column: 53, scope: !1542)
!1598 = !DILocation(line: 526, column: 11, scope: !1542)
!1599 = !DILocation(line: 527, column: 21, scope: !1542)
!1600 = !DILocation(line: 527, column: 5, scope: !1542)
!1601 = !DILocation(line: 527, column: 12, scope: !1542)
!1602 = !DILocation(line: 527, column: 19, scope: !1542)
!1603 = !DILocation(line: 528, column: 20, scope: !1542)
!1604 = !DILocation(line: 528, column: 5, scope: !1542)
!1605 = !DILocation(line: 528, column: 12, scope: !1542)
!1606 = !DILocation(line: 528, column: 18, scope: !1542)
!1607 = !DILocation(line: 529, column: 19, scope: !1542)
!1608 = !DILocation(line: 529, column: 5, scope: !1542)
!1609 = !DILocation(line: 529, column: 12, scope: !1542)
!1610 = !DILocation(line: 529, column: 17, scope: !1542)
!1611 = !DILocation(line: 530, column: 1, scope: !1542)
!1612 = distinct !DISubprogram(name: "error_item", scope: !2, file: !2, line: 315, type: !1613, scopeLine: 316, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!168, !744, !167, null}
!1615 = !DILocalVariable(name: "item", arg: 1, scope: !1612, file: !2, line: 315, type: !744)
!1616 = !DILocation(line: 315, column: 38, scope: !1612)
!1617 = !DILocalVariable(name: "msg", arg: 2, scope: !1612, file: !2, line: 315, type: !167)
!1618 = !DILocation(line: 315, column: 56, scope: !1612)
!1619 = !DILocalVariable(name: "ret", scope: !1612, file: !2, line: 317, type: !168)
!1620 = !DILocation(line: 317, column: 11, scope: !1612)
!1621 = !DILocalVariable(name: "ap", scope: !1612, file: !2, line: 318, type: !1622)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !175, line: 52, baseType: !1623)
!1623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !1624, line: 14, baseType: !1625)
!1624 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !1626, baseType: !1627)
!1626 = !DIFile(filename: "common/lwan-template.c", directory: "/home/raj/lwan")
!1627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1628, size: 192, elements: !1634)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !1629)
!1629 = !{!1630, !1631, !1632, !1633}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !1628, file: !1626, line: 318, baseType: !109, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !1628, file: !1626, line: 318, baseType: !109, size: 32, offset: 32)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !1628, file: !1626, line: 318, baseType: !168, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !1628, file: !1626, line: 318, baseType: !168, size: 64, offset: 128)
!1634 = !{!1635}
!1635 = !DISubrange(count: 1)
!1636 = !DILocation(line: 318, column: 13, scope: !1612)
!1637 = !DILocation(line: 320, column: 5, scope: !1612)
!1638 = !DILocation(line: 321, column: 23, scope: !1612)
!1639 = !DILocation(line: 321, column: 29, scope: !1612)
!1640 = !DILocation(line: 321, column: 34, scope: !1612)
!1641 = !DILocation(line: 321, column: 11, scope: !1612)
!1642 = !DILocation(line: 321, column: 9, scope: !1612)
!1643 = !DILocation(line: 322, column: 5, scope: !1612)
!1644 = !DILocation(line: 324, column: 12, scope: !1612)
!1645 = !DILocation(line: 324, column: 5, scope: !1612)
!1646 = distinct !DISubprogram(name: "unexpected_lexeme", scope: !2, file: !2, line: 478, type: !1647, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!168, !744}
!1649 = !DILocalVariable(name: "item", arg: 1, scope: !1646, file: !2, line: 478, type: !744)
!1650 = !DILocation(line: 478, column: 45, scope: !1646)
!1651 = !DILocation(line: 480, column: 23, scope: !1646)
!1652 = !DILocation(line: 481, column: 23, scope: !1646)
!1653 = !DILocation(line: 481, column: 29, scope: !1646)
!1654 = !DILocation(line: 481, column: 9, scope: !1646)
!1655 = !DILocation(line: 481, column: 41, scope: !1646)
!1656 = !DILocation(line: 481, column: 47, scope: !1646)
!1657 = !DILocation(line: 481, column: 53, scope: !1646)
!1658 = !DILocation(line: 481, column: 36, scope: !1646)
!1659 = !DILocation(line: 481, column: 58, scope: !1646)
!1660 = !DILocation(line: 481, column: 64, scope: !1646)
!1661 = !DILocation(line: 481, column: 70, scope: !1646)
!1662 = !DILocation(line: 480, column: 12, scope: !1646)
!1663 = !DILocation(line: 480, column: 5, scope: !1646)
!1664 = distinct !DISubprogram(name: "parser_identifier", scope: !2, file: !2, line: 678, type: !741, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1665 = !DILocalVariable(name: "parser", arg: 1, scope: !1664, file: !2, line: 678, type: !743)
!1666 = !DILocation(line: 678, column: 47, scope: !1664)
!1667 = !DILocalVariable(name: "item", arg: 2, scope: !1664, file: !2, line: 678, type: !744)
!1668 = !DILocation(line: 678, column: 68, scope: !1664)
!1669 = !DILocalVariable(name: "next", scope: !1664, file: !2, line: 680, type: !744)
!1670 = !DILocation(line: 680, column: 18, scope: !1664)
!1671 = !DILocation(line: 682, column: 20, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 682, column: 9)
!1673 = !DILocation(line: 682, column: 28, scope: !1672)
!1674 = !DILocation(line: 682, column: 10, scope: !1672)
!1675 = !DILocation(line: 682, column: 9, scope: !1664)
!1676 = !DILocation(line: 683, column: 13, scope: !1677)
!1677 = distinct !DILexicalBlock(scope: !1678, file: !2, line: 683, column: 13)
!1678 = distinct !DILexicalBlock(scope: !1672, file: !2, line: 682, column: 43)
!1679 = !DILocation(line: 683, column: 13, scope: !1678)
!1680 = !DILocation(line: 684, column: 14, scope: !1677)
!1681 = !DILocation(line: 684, column: 22, scope: !1677)
!1682 = !DILocation(line: 684, column: 21, scope: !1677)
!1683 = !DILocation(line: 684, column: 13, scope: !1677)
!1684 = !DILocation(line: 685, column: 9, scope: !1678)
!1685 = !DILocation(line: 688, column: 9, scope: !1686)
!1686 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 688, column: 9)
!1687 = !DILocation(line: 688, column: 17, scope: !1686)
!1688 = !DILocation(line: 688, column: 23, scope: !1686)
!1689 = !DILocation(line: 688, column: 9, scope: !1664)
!1690 = !DILocation(line: 689, column: 13, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 689, column: 13)
!1692 = distinct !DILexicalBlock(scope: !1686, file: !2, line: 688, column: 38)
!1693 = !DILocation(line: 689, column: 19, scope: !1691)
!1694 = !DILocation(line: 689, column: 24, scope: !1691)
!1695 = !DILocation(line: 689, column: 13, scope: !1692)
!1696 = !DILocation(line: 690, column: 31, scope: !1691)
!1697 = !DILocation(line: 690, column: 20, scope: !1691)
!1698 = !DILocation(line: 690, column: 13, scope: !1691)
!1699 = !DILocation(line: 691, column: 24, scope: !1700)
!1700 = distinct !DILexicalBlock(scope: !1692, file: !2, line: 691, column: 13)
!1701 = !DILocation(line: 691, column: 32, scope: !1700)
!1702 = !DILocation(line: 691, column: 14, scope: !1700)
!1703 = !DILocation(line: 691, column: 13, scope: !1692)
!1704 = !DILocation(line: 692, column: 51, scope: !1700)
!1705 = !DILocation(line: 692, column: 57, scope: !1700)
!1706 = !DILocation(line: 692, column: 20, scope: !1700)
!1707 = !DILocation(line: 692, column: 13, scope: !1700)
!1708 = !DILocation(line: 693, column: 5, scope: !1692)
!1709 = !DILocation(line: 695, column: 9, scope: !1710)
!1710 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 695, column: 9)
!1711 = !DILocation(line: 695, column: 15, scope: !1710)
!1712 = !DILocation(line: 695, column: 20, scope: !1710)
!1713 = !DILocation(line: 695, column: 9, scope: !1664)
!1714 = !DILocalVariable(name: "symbol", scope: !1715, file: !2, line: 696, type: !948)
!1715 = distinct !DILexicalBlock(scope: !1710, file: !2, line: 695, column: 40)
!1716 = !DILocation(line: 696, column: 32, scope: !1715)
!1717 = !DILocation(line: 696, column: 55, scope: !1715)
!1718 = !DILocalVariable(name: "__old", scope: !1719, file: !2, line: 696, type: !167)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 696, column: 63)
!1720 = !DILocation(line: 696, column: 63, scope: !1719)
!1721 = !DILocalVariable(name: "__len", scope: !1719, file: !2, line: 696, type: !169)
!1722 = !DILocalVariable(name: "__new", scope: !1719, file: !2, line: 696, type: !165)
!1723 = !DILocation(line: 696, column: 41, scope: !1715)
!1724 = !DILocation(line: 697, column: 14, scope: !1725)
!1725 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 697, column: 13)
!1726 = !DILocation(line: 697, column: 13, scope: !1715)
!1727 = !DILocation(line: 698, column: 31, scope: !1728)
!1728 = distinct !DILexicalBlock(scope: !1725, file: !2, line: 697, column: 22)
!1729 = !DILocation(line: 698, column: 68, scope: !1728)
!1730 = !DILocation(line: 698, column: 74, scope: !1728)
!1731 = !DILocation(line: 698, column: 80, scope: !1728)
!1732 = !DILocation(line: 698, column: 63, scope: !1728)
!1733 = !DILocation(line: 699, column: 17, scope: !1728)
!1734 = !DILocation(line: 699, column: 23, scope: !1728)
!1735 = !DILocation(line: 699, column: 29, scope: !1728)
!1736 = !DILocation(line: 698, column: 20, scope: !1728)
!1737 = !DILocation(line: 698, column: 13, scope: !1728)
!1738 = !DILocation(line: 702, column: 20, scope: !1715)
!1739 = !DILocation(line: 702, column: 45, scope: !1715)
!1740 = !DILocation(line: 702, column: 53, scope: !1715)
!1741 = !DILocation(line: 702, column: 60, scope: !1715)
!1742 = !DILocation(line: 702, column: 9, scope: !1715)
!1743 = !DILocation(line: 704, column: 9, scope: !1715)
!1744 = !DILocation(line: 704, column: 17, scope: !1715)
!1745 = !DILocation(line: 704, column: 23, scope: !1715)
!1746 = !DILocation(line: 705, column: 38, scope: !1715)
!1747 = !DILocation(line: 705, column: 44, scope: !1715)
!1748 = !DILocation(line: 705, column: 50, scope: !1715)
!1749 = !DILocation(line: 705, column: 54, scope: !1715)
!1750 = !DILocation(line: 705, column: 9, scope: !1715)
!1751 = !DILocation(line: 705, column: 17, scope: !1715)
!1752 = !DILocation(line: 705, column: 22, scope: !1715)
!1753 = !DILocation(line: 705, column: 35, scope: !1715)
!1754 = !DILocation(line: 706, column: 9, scope: !1715)
!1755 = !DILocation(line: 709, column: 9, scope: !1756)
!1756 = distinct !DILexicalBlock(scope: !1664, file: !2, line: 709, column: 9)
!1757 = !DILocation(line: 709, column: 15, scope: !1756)
!1758 = !DILocation(line: 709, column: 20, scope: !1756)
!1759 = !DILocation(line: 709, column: 9, scope: !1664)
!1760 = !DILocalVariable(name: "symbol", scope: !1761, file: !2, line: 710, type: !948)
!1761 = distinct !DILexicalBlock(scope: !1756, file: !2, line: 709, column: 43)
!1762 = !DILocation(line: 710, column: 32, scope: !1761)
!1763 = !DILocation(line: 710, column: 55, scope: !1761)
!1764 = !DILocalVariable(name: "__old", scope: !1765, file: !2, line: 710, type: !167)
!1765 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 710, column: 63)
!1766 = !DILocation(line: 710, column: 63, scope: !1765)
!1767 = !DILocalVariable(name: "__len", scope: !1765, file: !2, line: 710, type: !169)
!1768 = !DILocalVariable(name: "__new", scope: !1765, file: !2, line: 710, type: !165)
!1769 = !DILocation(line: 710, column: 41, scope: !1761)
!1770 = !DILocation(line: 711, column: 14, scope: !1771)
!1771 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 711, column: 13)
!1772 = !DILocation(line: 711, column: 13, scope: !1761)
!1773 = !DILocation(line: 712, column: 31, scope: !1774)
!1774 = distinct !DILexicalBlock(scope: !1771, file: !2, line: 711, column: 22)
!1775 = !DILocation(line: 712, column: 68, scope: !1774)
!1776 = !DILocation(line: 712, column: 74, scope: !1774)
!1777 = !DILocation(line: 712, column: 80, scope: !1774)
!1778 = !DILocation(line: 712, column: 63, scope: !1774)
!1779 = !DILocation(line: 713, column: 17, scope: !1774)
!1780 = !DILocation(line: 713, column: 23, scope: !1774)
!1781 = !DILocation(line: 713, column: 29, scope: !1774)
!1782 = !DILocation(line: 712, column: 20, scope: !1774)
!1783 = !DILocation(line: 712, column: 13, scope: !1774)
!1784 = !DILocation(line: 716, column: 29, scope: !1785)
!1785 = distinct !DILexicalBlock(scope: !1761, file: !2, line: 716, column: 13)
!1786 = !DILocation(line: 716, column: 14, scope: !1785)
!1787 = !DILocation(line: 716, column: 13, scope: !1761)
!1788 = !DILocation(line: 717, column: 51, scope: !1785)
!1789 = !DILocation(line: 717, column: 57, scope: !1785)
!1790 = !DILocation(line: 717, column: 20, scope: !1785)
!1791 = !DILocation(line: 717, column: 13, scope: !1785)
!1792 = !DILocation(line: 719, column: 20, scope: !1761)
!1793 = !DILocation(line: 719, column: 73, scope: !1761)
!1794 = !DILocation(line: 719, column: 9, scope: !1761)
!1795 = !DILocation(line: 720, column: 26, scope: !1761)
!1796 = !DILocation(line: 720, column: 34, scope: !1761)
!1797 = !DILocation(line: 720, column: 9, scope: !1761)
!1798 = !DILocation(line: 722, column: 9, scope: !1761)
!1799 = !DILocation(line: 725, column: 43, scope: !1664)
!1800 = !DILocation(line: 725, column: 49, scope: !1664)
!1801 = !DILocation(line: 725, column: 12, scope: !1664)
!1802 = !DILocation(line: 725, column: 5, scope: !1664)
!1803 = !DILocation(line: 726, column: 1, scope: !1664)
!1804 = distinct !DISubprogram(name: "parser_partial", scope: !2, file: !2, line: 728, type: !741, scopeLine: 729, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1805 = !DILocalVariable(name: "parser", arg: 1, scope: !1804, file: !2, line: 728, type: !743)
!1806 = !DILocation(line: 728, column: 44, scope: !1804)
!1807 = !DILocalVariable(name: "item", arg: 2, scope: !1804, file: !2, line: 728, type: !744)
!1808 = !DILocation(line: 728, column: 65, scope: !1804)
!1809 = !DILocalVariable(name: "tpl", scope: !1804, file: !2, line: 730, type: !359)
!1810 = !DILocation(line: 730, column: 17, scope: !1804)
!1811 = !DILocalVariable(name: "filename", scope: !1804, file: !2, line: 731, type: !165)
!1812 = !DILocation(line: 731, column: 11, scope: !1804)
!1813 = !DILocalVariable(name: "__old", scope: !1814, file: !2, line: 731, type: !167)
!1814 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 731, column: 22)
!1815 = !DILocation(line: 731, column: 22, scope: !1814)
!1816 = !DILocalVariable(name: "__len", scope: !1814, file: !2, line: 731, type: !169)
!1817 = !DILocalVariable(name: "__new", scope: !1814, file: !2, line: 731, type: !165)
!1818 = !DILocation(line: 733, column: 9, scope: !1819)
!1819 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 733, column: 9)
!1820 = !DILocation(line: 733, column: 15, scope: !1819)
!1821 = !DILocation(line: 733, column: 20, scope: !1819)
!1822 = !DILocation(line: 733, column: 9, scope: !1804)
!1823 = !DILocation(line: 734, column: 34, scope: !1819)
!1824 = !DILocation(line: 734, column: 16, scope: !1819)
!1825 = !DILocation(line: 734, column: 9, scope: !1819)
!1826 = !DILocation(line: 736, column: 25, scope: !1827)
!1827 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 736, column: 9)
!1828 = !DILocation(line: 736, column: 10, scope: !1827)
!1829 = !DILocation(line: 736, column: 9, scope: !1804)
!1830 = !DILocation(line: 737, column: 34, scope: !1827)
!1831 = !DILocation(line: 737, column: 16, scope: !1827)
!1832 = !DILocation(line: 737, column: 9, scope: !1827)
!1833 = !DILocation(line: 739, column: 33, scope: !1804)
!1834 = !DILocation(line: 739, column: 43, scope: !1804)
!1835 = !DILocation(line: 739, column: 51, scope: !1804)
!1836 = !DILocation(line: 739, column: 11, scope: !1804)
!1837 = !DILocation(line: 739, column: 9, scope: !1804)
!1838 = !DILocation(line: 740, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1804, file: !2, line: 740, column: 9)
!1840 = !DILocation(line: 740, column: 9, scope: !1804)
!1841 = !DILocation(line: 741, column: 20, scope: !1842)
!1842 = distinct !DILexicalBlock(scope: !1839, file: !2, line: 740, column: 14)
!1843 = !DILocation(line: 741, column: 49, scope: !1842)
!1844 = !DILocation(line: 741, column: 9, scope: !1842)
!1845 = !DILocation(line: 742, column: 9, scope: !1842)
!1846 = !DILocation(line: 745, column: 23, scope: !1804)
!1847 = !DILocation(line: 745, column: 66, scope: !1804)
!1848 = !DILocation(line: 745, column: 12, scope: !1804)
!1849 = !DILocation(line: 745, column: 5, scope: !1804)
!1850 = !DILocation(line: 746, column: 1, scope: !1804)
!1851 = distinct !DISubprogram(name: "parser_iter", scope: !2, file: !2, line: 638, type: !741, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1852 = !DILocalVariable(name: "parser", arg: 1, scope: !1851, file: !2, line: 638, type: !743)
!1853 = !DILocation(line: 638, column: 41, scope: !1851)
!1854 = !DILocalVariable(name: "item", arg: 2, scope: !1851, file: !2, line: 638, type: !744)
!1855 = !DILocation(line: 638, column: 62, scope: !1851)
!1856 = !DILocation(line: 640, column: 9, scope: !1857)
!1857 = distinct !DILexicalBlock(scope: !1851, file: !2, line: 640, column: 9)
!1858 = !DILocation(line: 640, column: 15, scope: !1857)
!1859 = !DILocation(line: 640, column: 20, scope: !1857)
!1860 = !DILocation(line: 640, column: 9, scope: !1851)
!1861 = !DILocalVariable(name: "negate", scope: !1862, file: !2, line: 641, type: !122)
!1862 = distinct !DILexicalBlock(scope: !1857, file: !2, line: 640, column: 40)
!1863 = !DILocation(line: 641, column: 20, scope: !1862)
!1864 = !DILocation(line: 641, column: 29, scope: !1862)
!1865 = !DILocation(line: 641, column: 37, scope: !1862)
!1866 = !DILocation(line: 641, column: 43, scope: !1862)
!1867 = !DILocalVariable(name: "symname", scope: !1862, file: !2, line: 642, type: !167)
!1868 = !DILocation(line: 642, column: 21, scope: !1862)
!1869 = !DILocalVariable(name: "__old", scope: !1870, file: !2, line: 642, type: !167)
!1870 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 642, column: 31)
!1871 = !DILocation(line: 642, column: 31, scope: !1870)
!1872 = !DILocalVariable(name: "__len", scope: !1870, file: !2, line: 642, type: !169)
!1873 = !DILocalVariable(name: "__new", scope: !1870, file: !2, line: 642, type: !165)
!1874 = !DILocalVariable(name: "symbol", scope: !1862, file: !2, line: 643, type: !948)
!1875 = !DILocation(line: 643, column: 32, scope: !1862)
!1876 = !DILocation(line: 643, column: 55, scope: !1862)
!1877 = !DILocation(line: 643, column: 63, scope: !1862)
!1878 = !DILocation(line: 643, column: 41, scope: !1862)
!1879 = !DILocation(line: 644, column: 14, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 644, column: 13)
!1881 = !DILocation(line: 644, column: 13, scope: !1862)
!1882 = !DILocation(line: 645, column: 31, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 644, column: 22)
!1884 = !DILocation(line: 645, column: 68, scope: !1883)
!1885 = !DILocation(line: 645, column: 74, scope: !1883)
!1886 = !DILocation(line: 645, column: 80, scope: !1883)
!1887 = !DILocation(line: 645, column: 63, scope: !1883)
!1888 = !DILocation(line: 646, column: 17, scope: !1883)
!1889 = !DILocation(line: 646, column: 23, scope: !1883)
!1890 = !DILocation(line: 646, column: 29, scope: !1883)
!1891 = !DILocation(line: 645, column: 20, scope: !1883)
!1892 = !DILocation(line: 645, column: 13, scope: !1883)
!1893 = !DILocation(line: 649, column: 29, scope: !1894)
!1894 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 649, column: 13)
!1895 = !DILocation(line: 649, column: 14, scope: !1894)
!1896 = !DILocation(line: 649, column: 13, scope: !1862)
!1897 = !DILocation(line: 650, column: 31, scope: !1894)
!1898 = !DILocation(line: 650, column: 20, scope: !1894)
!1899 = !DILocation(line: 650, column: 13, scope: !1894)
!1900 = !DILocalVariable(name: "r", scope: !1862, file: !2, line: 652, type: !123)
!1901 = !DILocation(line: 652, column: 13, scope: !1862)
!1902 = !DILocation(line: 652, column: 29, scope: !1862)
!1903 = !DILocation(line: 652, column: 37, scope: !1862)
!1904 = !DILocation(line: 652, column: 45, scope: !1862)
!1905 = !DILocation(line: 652, column: 17, scope: !1862)
!1906 = !DILocation(line: 653, column: 13, scope: !1907)
!1907 = distinct !DILexicalBlock(scope: !1862, file: !2, line: 653, column: 13)
!1908 = !DILocation(line: 653, column: 15, scope: !1907)
!1909 = !DILocation(line: 653, column: 13, scope: !1862)
!1910 = !DILocation(line: 654, column: 17, scope: !1911)
!1911 = distinct !DILexicalBlock(scope: !1912, file: !2, line: 654, column: 17)
!1912 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 653, column: 20)
!1913 = !DILocation(line: 654, column: 19, scope: !1911)
!1914 = !DILocation(line: 654, column: 17, scope: !1912)
!1915 = !DILocation(line: 655, column: 35, scope: !1911)
!1916 = !DILocation(line: 655, column: 87, scope: !1911)
!1917 = !DILocation(line: 655, column: 24, scope: !1911)
!1918 = !DILocation(line: 655, column: 17, scope: !1911)
!1919 = !DILocation(line: 656, column: 31, scope: !1912)
!1920 = !DILocation(line: 656, column: 20, scope: !1912)
!1921 = !DILocation(line: 656, column: 13, scope: !1912)
!1922 = !DILocation(line: 659, column: 20, scope: !1862)
!1923 = !DILocation(line: 659, column: 47, scope: !1862)
!1924 = !DILocation(line: 659, column: 54, scope: !1862)
!1925 = !DILocation(line: 659, column: 71, scope: !1862)
!1926 = !DILocation(line: 659, column: 9, scope: !1862)
!1927 = !DILocation(line: 661, column: 26, scope: !1862)
!1928 = !DILocation(line: 661, column: 34, scope: !1862)
!1929 = !DILocation(line: 661, column: 9, scope: !1862)
!1930 = !DILocation(line: 662, column: 9, scope: !1862)
!1931 = !DILocation(line: 662, column: 17, scope: !1862)
!1932 = !DILocation(line: 662, column: 23, scope: !1862)
!1933 = !DILocation(line: 663, column: 9, scope: !1862)
!1934 = !DILocation(line: 666, column: 30, scope: !1851)
!1935 = !DILocation(line: 666, column: 12, scope: !1851)
!1936 = !DILocation(line: 666, column: 5, scope: !1851)
!1937 = !DILocation(line: 667, column: 1, scope: !1851)
!1938 = distinct !DISubprogram(name: "parser_negate_iter", scope: !2, file: !2, line: 669, type: !741, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1939 = !DILocalVariable(name: "parser", arg: 1, scope: !1938, file: !2, line: 669, type: !743)
!1940 = !DILocation(line: 669, column: 48, scope: !1938)
!1941 = !DILocalVariable(name: "item", arg: 2, scope: !1938, file: !2, line: 669, type: !744)
!1942 = !DILocation(line: 669, column: 69, scope: !1938)
!1943 = !DILocation(line: 671, column: 9, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 671, column: 9)
!1945 = !DILocation(line: 671, column: 15, scope: !1944)
!1946 = !DILocation(line: 671, column: 20, scope: !1944)
!1947 = !DILocation(line: 671, column: 9, scope: !1938)
!1948 = !DILocation(line: 672, column: 34, scope: !1944)
!1949 = !DILocation(line: 672, column: 16, scope: !1944)
!1950 = !DILocation(line: 672, column: 9, scope: !1944)
!1951 = !DILocation(line: 674, column: 5, scope: !1938)
!1952 = !DILocation(line: 674, column: 13, scope: !1938)
!1953 = !DILocation(line: 674, column: 19, scope: !1938)
!1954 = !DILocation(line: 675, column: 5, scope: !1938)
!1955 = !DILocation(line: 676, column: 1, scope: !1938)
!1956 = distinct !DISubprogram(name: "parser_slash", scope: !2, file: !2, line: 618, type: !741, scopeLine: 619, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!1957 = !DILocalVariable(name: "parser", arg: 1, scope: !1956, file: !2, line: 618, type: !743)
!1958 = !DILocation(line: 618, column: 42, scope: !1956)
!1959 = !DILocalVariable(name: "item", arg: 2, scope: !1956, file: !2, line: 618, type: !744)
!1960 = !DILocation(line: 618, column: 63, scope: !1956)
!1961 = !DILocation(line: 620, column: 9, scope: !1962)
!1962 = distinct !DILexicalBlock(scope: !1956, file: !2, line: 620, column: 9)
!1963 = !DILocation(line: 620, column: 15, scope: !1962)
!1964 = !DILocation(line: 620, column: 20, scope: !1962)
!1965 = !DILocation(line: 620, column: 9, scope: !1956)
!1966 = !DILocalVariable(name: "next", scope: !1967, file: !2, line: 621, type: !744)
!1967 = distinct !DILexicalBlock(scope: !1962, file: !2, line: 620, column: 40)
!1968 = !DILocation(line: 621, column: 22, scope: !1967)
!1969 = !DILocation(line: 623, column: 24, scope: !1970)
!1970 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 623, column: 13)
!1971 = !DILocation(line: 623, column: 32, scope: !1970)
!1972 = !DILocation(line: 623, column: 14, scope: !1970)
!1973 = !DILocation(line: 623, column: 13, scope: !1967)
!1974 = !DILocation(line: 624, column: 51, scope: !1970)
!1975 = !DILocation(line: 624, column: 57, scope: !1970)
!1976 = !DILocation(line: 624, column: 20, scope: !1970)
!1977 = !DILocation(line: 624, column: 13, scope: !1970)
!1978 = !DILocation(line: 626, column: 13, scope: !1979)
!1979 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 626, column: 13)
!1980 = !DILocation(line: 626, column: 19, scope: !1979)
!1981 = !DILocation(line: 626, column: 24, scope: !1979)
!1982 = !DILocation(line: 626, column: 13, scope: !1967)
!1983 = !DILocation(line: 627, column: 36, scope: !1979)
!1984 = !DILocation(line: 627, column: 44, scope: !1979)
!1985 = !DILocation(line: 627, column: 20, scope: !1979)
!1986 = !DILocation(line: 627, column: 13, scope: !1979)
!1987 = !DILocation(line: 629, column: 13, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1967, file: !2, line: 629, column: 13)
!1989 = !DILocation(line: 629, column: 19, scope: !1988)
!1990 = !DILocation(line: 629, column: 24, scope: !1988)
!1991 = !DILocation(line: 629, column: 13, scope: !1967)
!1992 = !DILocation(line: 630, column: 45, scope: !1988)
!1993 = !DILocation(line: 630, column: 53, scope: !1988)
!1994 = !DILocation(line: 630, column: 20, scope: !1988)
!1995 = !DILocation(line: 630, column: 13, scope: !1988)
!1996 = !DILocation(line: 632, column: 47, scope: !1967)
!1997 = !DILocation(line: 632, column: 53, scope: !1967)
!1998 = !DILocation(line: 632, column: 16, scope: !1967)
!1999 = !DILocation(line: 632, column: 9, scope: !1967)
!2000 = !DILocation(line: 635, column: 30, scope: !1956)
!2001 = !DILocation(line: 635, column: 12, scope: !1956)
!2002 = !DILocation(line: 635, column: 5, scope: !1956)
!2003 = !DILocation(line: 636, column: 1, scope: !1956)
!2004 = distinct !DISubprogram(name: "unexpected_lexeme_or_lex_error", scope: !2, file: !2, line: 484, type: !2005, scopeLine: 485, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{!168, !744, !744}
!2007 = !DILocalVariable(name: "item", arg: 1, scope: !2004, file: !2, line: 484, type: !744)
!2008 = !DILocation(line: 484, column: 58, scope: !2004)
!2009 = !DILocalVariable(name: "lex_error", arg: 2, scope: !2004, file: !2, line: 484, type: !744)
!2010 = !DILocation(line: 484, column: 77, scope: !2004)
!2011 = !DILocation(line: 486, column: 9, scope: !2012)
!2012 = distinct !DILexicalBlock(scope: !2004, file: !2, line: 486, column: 9)
!2013 = !DILocation(line: 486, column: 19, scope: !2012)
!2014 = !DILocation(line: 486, column: 23, scope: !2012)
!2015 = !DILocation(line: 486, column: 34, scope: !2012)
!2016 = !DILocation(line: 486, column: 39, scope: !2012)
!2017 = !DILocation(line: 486, column: 53, scope: !2012)
!2018 = !DILocation(line: 486, column: 56, scope: !2012)
!2019 = !DILocation(line: 486, column: 67, scope: !2012)
!2020 = !DILocation(line: 486, column: 72, scope: !2012)
!2021 = !DILocation(line: 486, column: 9, scope: !2004)
!2022 = !DILocation(line: 487, column: 10, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 486, column: 86)
!2024 = !DILocation(line: 487, column: 18, scope: !2023)
!2025 = !DILocation(line: 487, column: 17, scope: !2023)
!2026 = !DILocation(line: 488, column: 9, scope: !2023)
!2027 = !DILocation(line: 491, column: 30, scope: !2004)
!2028 = !DILocation(line: 491, column: 12, scope: !2004)
!2029 = !DILocation(line: 491, column: 5, scope: !2004)
!2030 = !DILocation(line: 492, column: 1, scope: !2004)
!2031 = distinct !DISubprogram(name: "symtab_lookup", scope: !2, file: !2, line: 193, type: !2032, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2032 = !DISubroutineType(types: !2033)
!2033 = !{!948, !743, !167}
!2034 = !DILocalVariable(name: "parser", arg: 1, scope: !2031, file: !2, line: 193, type: !743)
!2035 = !DILocation(line: 193, column: 30, scope: !2031)
!2036 = !DILocalVariable(name: "var_name", arg: 2, scope: !2031, file: !2, line: 193, type: !167)
!2037 = !DILocation(line: 193, column: 50, scope: !2031)
!2038 = !DILocalVariable(name: "tab", scope: !2039, file: !2, line: 195, type: !696)
!2039 = distinct !DILexicalBlock(scope: !2031, file: !2, line: 195, column: 5)
!2040 = !DILocation(line: 195, column: 25, scope: !2039)
!2041 = !DILocation(line: 195, column: 31, scope: !2039)
!2042 = !DILocation(line: 195, column: 39, scope: !2039)
!2043 = !DILocation(line: 195, column: 10, scope: !2039)
!2044 = !DILocation(line: 195, column: 47, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2039, file: !2, line: 195, column: 5)
!2046 = !DILocation(line: 195, column: 5, scope: !2039)
!2047 = !DILocalVariable(name: "var", scope: !2048, file: !2, line: 196, type: !948)
!2048 = distinct !DILexicalBlock(scope: !2045, file: !2, line: 195, column: 69)
!2049 = !DILocation(line: 196, column: 32, scope: !2048)
!2050 = !DILocation(line: 196, column: 48, scope: !2048)
!2051 = !DILocation(line: 196, column: 53, scope: !2048)
!2052 = !DILocation(line: 196, column: 59, scope: !2048)
!2053 = !DILocation(line: 196, column: 38, scope: !2048)
!2054 = !DILocation(line: 197, column: 13, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2048, file: !2, line: 197, column: 13)
!2056 = !DILocation(line: 197, column: 13, scope: !2048)
!2057 = !DILocation(line: 198, column: 20, scope: !2055)
!2058 = !DILocation(line: 198, column: 13, scope: !2055)
!2059 = !DILocation(line: 199, column: 5, scope: !2048)
!2060 = !DILocation(line: 195, column: 58, scope: !2045)
!2061 = !DILocation(line: 195, column: 63, scope: !2045)
!2062 = !DILocation(line: 195, column: 56, scope: !2045)
!2063 = !DILocation(line: 195, column: 5, scope: !2045)
!2064 = distinct !{!2064, !2046, !2065, !536}
!2065 = !DILocation(line: 199, column: 5, scope: !2039)
!2066 = !DILocation(line: 201, column: 5, scope: !2031)
!2067 = !DILocation(line: 202, column: 1, scope: !2031)
!2068 = distinct !DISubprogram(name: "parser_next_is", scope: !2, file: !2, line: 494, type: !2069, scopeLine: 495, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2069 = !DISubroutineType(types: !2070)
!2070 = !{!418, !743, !129}
!2071 = !DILocalVariable(name: "parser", arg: 1, scope: !2068, file: !2, line: 494, type: !743)
!2072 = !DILocation(line: 494, column: 43, scope: !2068)
!2073 = !DILocalVariable(name: "type", arg: 2, scope: !2068, file: !2, line: 494, type: !129)
!2074 = !DILocation(line: 494, column: 66, scope: !2068)
!2075 = !DILocalVariable(name: "item", scope: !2068, file: !2, line: 496, type: !744)
!2076 = !DILocation(line: 496, column: 18, scope: !2068)
!2077 = !DILocation(line: 497, column: 22, scope: !2068)
!2078 = !DILocation(line: 497, column: 30, scope: !2068)
!2079 = !DILocation(line: 497, column: 12, scope: !2068)
!2080 = !DILocation(line: 497, column: 46, scope: !2068)
!2081 = !DILocation(line: 497, column: 52, scope: !2068)
!2082 = !DILocation(line: 497, column: 60, scope: !2068)
!2083 = !DILocation(line: 497, column: 57, scope: !2068)
!2084 = !DILocation(line: 497, column: 5, scope: !2068)
!2085 = distinct !DISubprogram(name: "parser_push_item", scope: !2, file: !2, line: 500, type: !2086, scopeLine: 501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{null, !743, !744}
!2088 = !DILocalVariable(name: "parser", arg: 1, scope: !2085, file: !2, line: 500, type: !743)
!2089 = !DILocation(line: 500, column: 45, scope: !2085)
!2090 = !DILocalVariable(name: "item", arg: 2, scope: !2085, file: !2, line: 500, type: !744)
!2091 = !DILocation(line: 500, column: 66, scope: !2085)
!2092 = !DILocalVariable(name: "stacked_item", scope: !2085, file: !2, line: 502, type: !179)
!2093 = !DILocation(line: 502, column: 26, scope: !2085)
!2094 = !DILocation(line: 502, column: 41, scope: !2085)
!2095 = !DILocation(line: 503, column: 10, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2085, file: !2, line: 503, column: 9)
!2097 = !DILocation(line: 503, column: 9, scope: !2085)
!2098 = !DILocation(line: 504, column: 9, scope: !2096)
!2099 = !DILocation(line: 506, column: 5, scope: !2085)
!2100 = !DILocation(line: 506, column: 19, scope: !2085)
!2101 = !DILocation(line: 506, column: 27, scope: !2085)
!2102 = !DILocation(line: 506, column: 26, scope: !2085)
!2103 = !DILocation(line: 507, column: 15, scope: !2085)
!2104 = !DILocation(line: 507, column: 23, scope: !2085)
!2105 = !DILocation(line: 507, column: 31, scope: !2085)
!2106 = !DILocation(line: 507, column: 45, scope: !2085)
!2107 = !DILocation(line: 507, column: 5, scope: !2085)
!2108 = !DILocation(line: 508, column: 1, scope: !2085)
!2109 = distinct !DISubprogram(name: "list_add", scope: !184, file: !184, line: 327, type: !2110, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{null, !2112, !187}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!2113 = !DILocalVariable(name: "h", arg: 1, scope: !2109, file: !184, line: 327, type: !2112)
!2114 = !DILocation(line: 327, column: 47, scope: !2109)
!2115 = !DILocalVariable(name: "n", arg: 2, scope: !2109, file: !184, line: 327, type: !187)
!2116 = !DILocation(line: 327, column: 68, scope: !2109)
!2117 = !DILocation(line: 329, column: 12, scope: !2109)
!2118 = !DILocation(line: 329, column: 15, scope: !2109)
!2119 = !DILocation(line: 329, column: 17, scope: !2109)
!2120 = !DILocation(line: 329, column: 2, scope: !2109)
!2121 = !DILocation(line: 329, column: 5, scope: !2109)
!2122 = !DILocation(line: 329, column: 10, scope: !2109)
!2123 = !DILocation(line: 330, column: 13, scope: !2109)
!2124 = !DILocation(line: 330, column: 16, scope: !2109)
!2125 = !DILocation(line: 330, column: 2, scope: !2109)
!2126 = !DILocation(line: 330, column: 5, scope: !2109)
!2127 = !DILocation(line: 330, column: 10, scope: !2109)
!2128 = !DILocation(line: 331, column: 20, scope: !2109)
!2129 = !DILocation(line: 331, column: 2, scope: !2109)
!2130 = !DILocation(line: 331, column: 5, scope: !2109)
!2131 = !DILocation(line: 331, column: 7, scope: !2109)
!2132 = !DILocation(line: 331, column: 13, scope: !2109)
!2133 = !DILocation(line: 331, column: 18, scope: !2109)
!2134 = !DILocation(line: 332, column: 14, scope: !2109)
!2135 = !DILocation(line: 332, column: 2, scope: !2109)
!2136 = !DILocation(line: 332, column: 5, scope: !2109)
!2137 = !DILocation(line: 332, column: 7, scope: !2109)
!2138 = !DILocation(line: 332, column: 12, scope: !2109)
!2139 = !DILocation(line: 333, column: 8, scope: !2109)
!2140 = !DILocation(line: 334, column: 1, scope: !2109)
!2141 = distinct !DISubprogram(name: "symtab_push", scope: !2, file: !2, line: 205, type: !2142, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!123, !743, !631}
!2144 = !DILocalVariable(name: "parser", arg: 1, scope: !2141, file: !2, line: 205, type: !743)
!2145 = !DILocation(line: 205, column: 28, scope: !2141)
!2146 = !DILocalVariable(name: "descriptor", arg: 2, scope: !2141, file: !2, line: 205, type: !631)
!2147 = !DILocation(line: 205, column: 65, scope: !2141)
!2148 = !DILocalVariable(name: "tab", scope: !2141, file: !2, line: 207, type: !696)
!2149 = !DILocation(line: 207, column: 20, scope: !2141)
!2150 = !DILocation(line: 209, column: 10, scope: !2151)
!2151 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 209, column: 9)
!2152 = !DILocation(line: 209, column: 9, scope: !2141)
!2153 = !DILocation(line: 210, column: 9, scope: !2151)
!2154 = !DILocation(line: 212, column: 11, scope: !2141)
!2155 = !DILocation(line: 212, column: 9, scope: !2141)
!2156 = !DILocation(line: 213, column: 10, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 213, column: 9)
!2158 = !DILocation(line: 213, column: 9, scope: !2141)
!2159 = !DILocation(line: 214, column: 17, scope: !2157)
!2160 = !DILocation(line: 214, column: 16, scope: !2157)
!2161 = !DILocation(line: 214, column: 9, scope: !2157)
!2162 = !DILocation(line: 216, column: 17, scope: !2141)
!2163 = !DILocation(line: 216, column: 5, scope: !2141)
!2164 = !DILocation(line: 216, column: 10, scope: !2141)
!2165 = !DILocation(line: 216, column: 15, scope: !2141)
!2166 = !DILocation(line: 217, column: 10, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 217, column: 9)
!2168 = !DILocation(line: 217, column: 15, scope: !2167)
!2169 = !DILocation(line: 217, column: 9, scope: !2141)
!2170 = !DILocation(line: 218, column: 14, scope: !2171)
!2171 = distinct !DILexicalBlock(scope: !2167, file: !2, line: 217, column: 21)
!2172 = !DILocation(line: 218, column: 9, scope: !2171)
!2173 = !DILocation(line: 219, column: 9, scope: !2171)
!2174 = !DILocation(line: 222, column: 17, scope: !2141)
!2175 = !DILocation(line: 222, column: 25, scope: !2141)
!2176 = !DILocation(line: 222, column: 5, scope: !2141)
!2177 = !DILocation(line: 222, column: 10, scope: !2141)
!2178 = !DILocation(line: 222, column: 15, scope: !2141)
!2179 = !DILocation(line: 223, column: 22, scope: !2141)
!2180 = !DILocation(line: 223, column: 5, scope: !2141)
!2181 = !DILocation(line: 223, column: 13, scope: !2141)
!2182 = !DILocation(line: 223, column: 20, scope: !2141)
!2183 = !DILocation(line: 225, column: 5, scope: !2141)
!2184 = !DILocation(line: 225, column: 12, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2186, file: !2, line: 225, column: 5)
!2186 = distinct !DILexicalBlock(scope: !2141, file: !2, line: 225, column: 5)
!2187 = !DILocation(line: 225, column: 24, scope: !2185)
!2188 = !DILocation(line: 225, column: 5, scope: !2186)
!2189 = !DILocation(line: 226, column: 18, scope: !2185)
!2190 = !DILocation(line: 226, column: 26, scope: !2185)
!2191 = !DILocation(line: 226, column: 34, scope: !2185)
!2192 = !DILocation(line: 226, column: 40, scope: !2185)
!2193 = !DILocation(line: 226, column: 52, scope: !2185)
!2194 = !DILocation(line: 226, column: 58, scope: !2185)
!2195 = !DILocation(line: 226, column: 9, scope: !2185)
!2196 = !DILocation(line: 225, column: 40, scope: !2185)
!2197 = !DILocation(line: 225, column: 5, scope: !2185)
!2198 = distinct !{!2198, !2188, !2199, !536}
!2199 = !DILocation(line: 226, column: 68, scope: !2186)
!2200 = !DILocation(line: 228, column: 5, scope: !2141)
!2201 = !DILocation(line: 229, column: 1, scope: !2141)
!2202 = distinct !DISubprogram(name: "parser_end_iter", scope: !2, file: !2, line: 556, type: !741, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2203 = !DILocalVariable(name: "parser", arg: 1, scope: !2202, file: !2, line: 556, type: !743)
!2204 = !DILocation(line: 556, column: 45, scope: !2202)
!2205 = !DILocalVariable(name: "item", arg: 2, scope: !2202, file: !2, line: 556, type: !744)
!2206 = !DILocation(line: 556, column: 66, scope: !2202)
!2207 = !DILocalVariable(name: "iter", scope: !2202, file: !2, line: 558, type: !216)
!2208 = !DILocation(line: 558, column: 19, scope: !2202)
!2209 = !DILocalVariable(name: "symbol", scope: !2202, file: !2, line: 559, type: !948)
!2210 = !DILocation(line: 559, column: 28, scope: !2202)
!2211 = !DILocalVariable(name: "idx", scope: !2202, file: !2, line: 560, type: !174)
!2212 = !DILocation(line: 560, column: 13, scope: !2202)
!2213 = !DILocation(line: 562, column: 35, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 562, column: 9)
!2215 = !DILocation(line: 562, column: 43, scope: !2214)
!2216 = !DILocation(line: 562, column: 10, scope: !2214)
!2217 = !DILocation(line: 562, column: 9, scope: !2202)
!2218 = !DILocation(line: 563, column: 9, scope: !2214)
!2219 = !DILocation(line: 565, column: 28, scope: !2202)
!2220 = !DILocalVariable(name: "__old", scope: !2221, file: !2, line: 565, type: !167)
!2221 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 565, column: 36)
!2222 = !DILocation(line: 565, column: 36, scope: !2221)
!2223 = !DILocalVariable(name: "__len", scope: !2221, file: !2, line: 565, type: !169)
!2224 = !DILocalVariable(name: "__new", scope: !2221, file: !2, line: 565, type: !165)
!2225 = !DILocation(line: 565, column: 14, scope: !2202)
!2226 = !DILocation(line: 565, column: 12, scope: !2202)
!2227 = !DILocation(line: 566, column: 10, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 566, column: 9)
!2229 = !DILocation(line: 566, column: 9, scope: !2202)
!2230 = !DILocation(line: 567, column: 27, scope: !2231)
!2231 = distinct !DILexicalBlock(scope: !2228, file: !2, line: 566, column: 18)
!2232 = !DILocation(line: 567, column: 64, scope: !2231)
!2233 = !DILocation(line: 567, column: 70, scope: !2231)
!2234 = !DILocation(line: 567, column: 76, scope: !2231)
!2235 = !DILocation(line: 567, column: 59, scope: !2231)
!2236 = !DILocation(line: 568, column: 13, scope: !2231)
!2237 = !DILocation(line: 568, column: 19, scope: !2231)
!2238 = !DILocation(line: 568, column: 25, scope: !2231)
!2239 = !DILocation(line: 567, column: 16, scope: !2231)
!2240 = !DILocation(line: 567, column: 9, scope: !2231)
!2241 = !DILocation(line: 571, column: 10, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 571, column: 9)
!2243 = !DILocation(line: 571, column: 18, scope: !2242)
!2244 = !DILocation(line: 571, column: 25, scope: !2242)
!2245 = !DILocation(line: 571, column: 9, scope: !2202)
!2246 = !DILocation(line: 572, column: 27, scope: !2242)
!2247 = !DILocation(line: 572, column: 16, scope: !2242)
!2248 = !DILocation(line: 572, column: 9, scope: !2242)
!2249 = !DILocation(line: 573, column: 25, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2202, file: !2, line: 573, column: 5)
!2251 = !DILocation(line: 573, column: 33, scope: !2250)
!2252 = !DILocation(line: 573, column: 40, scope: !2250)
!2253 = !DILocation(line: 573, column: 45, scope: !2250)
!2254 = !DILocation(line: 573, column: 14, scope: !2250)
!2255 = !DILocation(line: 573, column: 10, scope: !2250)
!2256 = !DILocation(line: 573, column: 50, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2250, file: !2, line: 573, column: 5)
!2258 = !DILocation(line: 573, column: 54, scope: !2257)
!2259 = !DILocation(line: 573, column: 5, scope: !2250)
!2260 = !DILocation(line: 574, column: 17, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2257, file: !2, line: 573, column: 67)
!2262 = !DILocation(line: 574, column: 25, scope: !2261)
!2263 = !DILocation(line: 574, column: 32, scope: !2261)
!2264 = !DILocation(line: 574, column: 37, scope: !2261)
!2265 = !DILocation(line: 574, column: 14, scope: !2261)
!2266 = !DILocation(line: 576, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 576, column: 13)
!2268 = !DILocation(line: 576, column: 19, scope: !2267)
!2269 = !DILocation(line: 576, column: 26, scope: !2267)
!2270 = !DILocation(line: 576, column: 13, scope: !2261)
!2271 = !DILocation(line: 577, column: 13, scope: !2267)
!2272 = !DILocation(line: 578, column: 13, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2261, file: !2, line: 578, column: 13)
!2274 = !DILocation(line: 578, column: 19, scope: !2273)
!2275 = !DILocation(line: 578, column: 27, scope: !2273)
!2276 = !DILocation(line: 578, column: 24, scope: !2273)
!2277 = !DILocation(line: 578, column: 13, scope: !2261)
!2278 = !DILocation(line: 579, column: 24, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2273, file: !2, line: 578, column: 35)
!2280 = !DILocation(line: 579, column: 52, scope: !2279)
!2281 = !DILocation(line: 579, column: 13, scope: !2279)
!2282 = !DILocation(line: 580, column: 24, scope: !2279)
!2283 = !DILocation(line: 580, column: 13, scope: !2279)
!2284 = !DILocation(line: 581, column: 13, scope: !2279)
!2285 = !DILocation(line: 583, column: 5, scope: !2261)
!2286 = !DILocation(line: 573, column: 63, scope: !2257)
!2287 = !DILocation(line: 573, column: 5, scope: !2257)
!2288 = distinct !{!2288, !2259, !2289, !536}
!2289 = !DILocation(line: 583, column: 5, scope: !2250)
!2290 = !DILocation(line: 585, column: 23, scope: !2202)
!2291 = !DILocation(line: 585, column: 62, scope: !2202)
!2292 = !DILocation(line: 585, column: 68, scope: !2202)
!2293 = !DILocation(line: 585, column: 74, scope: !2202)
!2294 = !DILocation(line: 585, column: 57, scope: !2202)
!2295 = !DILocation(line: 585, column: 79, scope: !2202)
!2296 = !DILocation(line: 585, column: 85, scope: !2202)
!2297 = !DILocation(line: 585, column: 91, scope: !2202)
!2298 = !DILocation(line: 585, column: 12, scope: !2202)
!2299 = !DILocation(line: 585, column: 5, scope: !2202)
!2300 = !DILocation(line: 586, column: 1, scope: !2202)
!2301 = distinct !DISubprogram(name: "parser_end_var_not_empty", scope: !2, file: !2, line: 588, type: !741, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2302 = !DILocalVariable(name: "parser", arg: 1, scope: !2301, file: !2, line: 588, type: !743)
!2303 = !DILocation(line: 588, column: 54, scope: !2301)
!2304 = !DILocalVariable(name: "item", arg: 2, scope: !2301, file: !2, line: 588, type: !744)
!2305 = !DILocation(line: 588, column: 75, scope: !2301)
!2306 = !DILocalVariable(name: "iter", scope: !2301, file: !2, line: 590, type: !216)
!2307 = !DILocation(line: 590, column: 19, scope: !2301)
!2308 = !DILocalVariable(name: "symbol", scope: !2301, file: !2, line: 591, type: !948)
!2309 = !DILocation(line: 591, column: 28, scope: !2301)
!2310 = !DILocalVariable(name: "idx", scope: !2301, file: !2, line: 592, type: !174)
!2311 = !DILocation(line: 592, column: 13, scope: !2301)
!2312 = !DILocation(line: 594, column: 25, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 594, column: 9)
!2314 = !DILocation(line: 594, column: 10, scope: !2313)
!2315 = !DILocation(line: 594, column: 9, scope: !2301)
!2316 = !DILocation(line: 595, column: 34, scope: !2313)
!2317 = !DILocation(line: 595, column: 16, scope: !2313)
!2318 = !DILocation(line: 595, column: 9, scope: !2313)
!2319 = !DILocation(line: 596, column: 35, scope: !2320)
!2320 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 596, column: 9)
!2321 = !DILocation(line: 596, column: 43, scope: !2320)
!2322 = !DILocation(line: 596, column: 10, scope: !2320)
!2323 = !DILocation(line: 596, column: 9, scope: !2301)
!2324 = !DILocation(line: 597, column: 9, scope: !2320)
!2325 = !DILocation(line: 599, column: 28, scope: !2301)
!2326 = !DILocalVariable(name: "__old", scope: !2327, file: !2, line: 599, type: !167)
!2327 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 599, column: 36)
!2328 = !DILocation(line: 599, column: 36, scope: !2327)
!2329 = !DILocalVariable(name: "__len", scope: !2327, file: !2, line: 599, type: !169)
!2330 = !DILocalVariable(name: "__new", scope: !2327, file: !2, line: 599, type: !165)
!2331 = !DILocation(line: 599, column: 14, scope: !2301)
!2332 = !DILocation(line: 599, column: 12, scope: !2301)
!2333 = !DILocation(line: 600, column: 10, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 600, column: 9)
!2335 = !DILocation(line: 600, column: 9, scope: !2301)
!2336 = !DILocation(line: 601, column: 27, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2334, file: !2, line: 600, column: 18)
!2338 = !DILocation(line: 601, column: 64, scope: !2337)
!2339 = !DILocation(line: 601, column: 70, scope: !2337)
!2340 = !DILocation(line: 601, column: 76, scope: !2337)
!2341 = !DILocation(line: 601, column: 59, scope: !2337)
!2342 = !DILocation(line: 602, column: 13, scope: !2337)
!2343 = !DILocation(line: 602, column: 19, scope: !2337)
!2344 = !DILocation(line: 602, column: 25, scope: !2337)
!2345 = !DILocation(line: 601, column: 16, scope: !2337)
!2346 = !DILocation(line: 601, column: 9, scope: !2337)
!2347 = !DILocation(line: 605, column: 25, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2301, file: !2, line: 605, column: 5)
!2349 = !DILocation(line: 605, column: 33, scope: !2348)
!2350 = !DILocation(line: 605, column: 40, scope: !2348)
!2351 = !DILocation(line: 605, column: 45, scope: !2348)
!2352 = !DILocation(line: 605, column: 14, scope: !2348)
!2353 = !DILocation(line: 605, column: 10, scope: !2348)
!2354 = !DILocation(line: 605, column: 50, scope: !2355)
!2355 = distinct !DILexicalBlock(scope: !2348, file: !2, line: 605, column: 5)
!2356 = !DILocation(line: 605, column: 54, scope: !2355)
!2357 = !DILocation(line: 605, column: 5, scope: !2348)
!2358 = !DILocation(line: 606, column: 17, scope: !2359)
!2359 = distinct !DILexicalBlock(scope: !2355, file: !2, line: 605, column: 67)
!2360 = !DILocation(line: 606, column: 25, scope: !2359)
!2361 = !DILocation(line: 606, column: 32, scope: !2359)
!2362 = !DILocation(line: 606, column: 37, scope: !2359)
!2363 = !DILocation(line: 606, column: 14, scope: !2359)
!2364 = !DILocation(line: 607, column: 13, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 607, column: 13)
!2366 = !DILocation(line: 607, column: 19, scope: !2365)
!2367 = !DILocation(line: 607, column: 26, scope: !2365)
!2368 = !DILocation(line: 607, column: 13, scope: !2359)
!2369 = !DILocation(line: 608, column: 13, scope: !2365)
!2370 = !DILocation(line: 609, column: 13, scope: !2371)
!2371 = distinct !DILexicalBlock(scope: !2359, file: !2, line: 609, column: 13)
!2372 = !DILocation(line: 609, column: 19, scope: !2371)
!2373 = !DILocation(line: 609, column: 27, scope: !2371)
!2374 = !DILocation(line: 609, column: 24, scope: !2371)
!2375 = !DILocation(line: 609, column: 13, scope: !2359)
!2376 = !DILocation(line: 610, column: 24, scope: !2377)
!2377 = distinct !DILexicalBlock(scope: !2371, file: !2, line: 609, column: 35)
!2378 = !DILocation(line: 610, column: 69, scope: !2377)
!2379 = !DILocation(line: 610, column: 13, scope: !2377)
!2380 = !DILocation(line: 611, column: 13, scope: !2377)
!2381 = !DILocation(line: 613, column: 5, scope: !2359)
!2382 = !DILocation(line: 605, column: 63, scope: !2355)
!2383 = !DILocation(line: 605, column: 5, scope: !2355)
!2384 = distinct !{!2384, !2357, !2385, !536}
!2385 = !DILocation(line: 613, column: 5, scope: !2348)
!2386 = !DILocation(line: 615, column: 23, scope: !2301)
!2387 = !DILocation(line: 615, column: 62, scope: !2301)
!2388 = !DILocation(line: 615, column: 68, scope: !2301)
!2389 = !DILocation(line: 615, column: 74, scope: !2301)
!2390 = !DILocation(line: 615, column: 57, scope: !2301)
!2391 = !DILocation(line: 615, column: 79, scope: !2301)
!2392 = !DILocation(line: 615, column: 85, scope: !2301)
!2393 = !DILocation(line: 615, column: 91, scope: !2301)
!2394 = !DILocation(line: 615, column: 12, scope: !2301)
!2395 = !DILocation(line: 615, column: 5, scope: !2301)
!2396 = !DILocation(line: 616, column: 1, scope: !2301)
!2397 = distinct !DISubprogram(name: "parser_stack_top_matches", scope: !2, file: !2, line: 532, type: !2398, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2398 = !DISubroutineType(types: !2399)
!2399 = !{!418, !743, !744, !129}
!2400 = !DILocalVariable(name: "parser", arg: 1, scope: !2397, file: !2, line: 532, type: !743)
!2401 = !DILocation(line: 532, column: 53, scope: !2397)
!2402 = !DILocalVariable(name: "item", arg: 2, scope: !2397, file: !2, line: 532, type: !744)
!2403 = !DILocation(line: 532, column: 74, scope: !2397)
!2404 = !DILocalVariable(name: "type", arg: 3, scope: !2397, file: !2, line: 532, type: !129)
!2405 = !DILocation(line: 532, column: 95, scope: !2397)
!2406 = !DILocation(line: 534, column: 21, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 534, column: 9)
!2408 = !DILocation(line: 534, column: 29, scope: !2407)
!2409 = !DILocation(line: 534, column: 9, scope: !2407)
!2410 = !DILocation(line: 534, column: 9, scope: !2397)
!2411 = !DILocation(line: 535, column: 20, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2407, file: !2, line: 534, column: 37)
!2413 = !DILocation(line: 535, column: 55, scope: !2412)
!2414 = !DILocation(line: 535, column: 61, scope: !2412)
!2415 = !DILocation(line: 535, column: 67, scope: !2412)
!2416 = !DILocation(line: 535, column: 50, scope: !2412)
!2417 = !DILocation(line: 535, column: 72, scope: !2412)
!2418 = !DILocation(line: 535, column: 78, scope: !2412)
!2419 = !DILocation(line: 535, column: 84, scope: !2412)
!2420 = !DILocation(line: 535, column: 9, scope: !2412)
!2421 = !DILocation(line: 536, column: 9, scope: !2412)
!2422 = !DILocalVariable(name: "stacked_item", scope: !2397, file: !2, line: 539, type: !179)
!2423 = !DILocation(line: 539, column: 26, scope: !2397)
!2424 = !DILocation(line: 539, column: 64, scope: !2397)
!2425 = !DILocation(line: 539, column: 72, scope: !2397)
!2426 = !DILocation(line: 539, column: 78, scope: !2397)
!2427 = !DILocation(line: 539, column: 80, scope: !2397)
!2428 = !DILocalVariable(name: "matches", scope: !2397, file: !2, line: 540, type: !418)
!2429 = !DILocation(line: 540, column: 10, scope: !2397)
!2430 = !DILocation(line: 540, column: 21, scope: !2397)
!2431 = !DILocation(line: 540, column: 35, scope: !2397)
!2432 = !DILocation(line: 540, column: 40, scope: !2397)
!2433 = !DILocation(line: 540, column: 48, scope: !2397)
!2434 = !DILocation(line: 540, column: 45, scope: !2397)
!2435 = !DILocation(line: 541, column: 13, scope: !2397)
!2436 = !DILocation(line: 541, column: 16, scope: !2397)
!2437 = !DILocation(line: 541, column: 22, scope: !2397)
!2438 = !DILocation(line: 541, column: 28, scope: !2397)
!2439 = !DILocation(line: 541, column: 35, scope: !2397)
!2440 = !DILocation(line: 541, column: 49, scope: !2397)
!2441 = !DILocation(line: 541, column: 54, scope: !2397)
!2442 = !DILocation(line: 541, column: 60, scope: !2397)
!2443 = !DILocation(line: 541, column: 32, scope: !2397)
!2444 = !DILocation(line: 542, column: 13, scope: !2397)
!2445 = !DILocation(line: 542, column: 24, scope: !2397)
!2446 = !DILocation(line: 542, column: 38, scope: !2397)
!2447 = !DILocation(line: 542, column: 43, scope: !2397)
!2448 = !DILocation(line: 542, column: 49, scope: !2397)
!2449 = !DILocation(line: 542, column: 56, scope: !2397)
!2450 = !DILocation(line: 542, column: 62, scope: !2397)
!2451 = !DILocation(line: 542, column: 68, scope: !2397)
!2452 = !DILocation(line: 542, column: 75, scope: !2397)
!2453 = !DILocation(line: 542, column: 81, scope: !2397)
!2454 = !DILocation(line: 542, column: 87, scope: !2397)
!2455 = !DILocation(line: 542, column: 17, scope: !2397)
!2456 = !DILocation(line: 542, column: 16, scope: !2397)
!2457 = !DILocation(line: 0, scope: !2397)
!2458 = !DILocation(line: 543, column: 9, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2397, file: !2, line: 543, column: 9)
!2460 = !DILocation(line: 543, column: 9, scope: !2397)
!2461 = !DILocation(line: 544, column: 19, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2459, file: !2, line: 543, column: 18)
!2463 = !DILocation(line: 544, column: 33, scope: !2462)
!2464 = !DILocation(line: 544, column: 9, scope: !2462)
!2465 = !DILocation(line: 545, column: 14, scope: !2462)
!2466 = !DILocation(line: 545, column: 9, scope: !2462)
!2467 = !DILocation(line: 546, column: 9, scope: !2462)
!2468 = !DILocation(line: 549, column: 16, scope: !2397)
!2469 = !DILocation(line: 550, column: 23, scope: !2397)
!2470 = !DILocation(line: 550, column: 37, scope: !2397)
!2471 = !DILocation(line: 550, column: 42, scope: !2397)
!2472 = !DILocation(line: 550, column: 9, scope: !2397)
!2473 = !DILocation(line: 551, column: 14, scope: !2397)
!2474 = !DILocation(line: 551, column: 28, scope: !2397)
!2475 = !DILocation(line: 551, column: 33, scope: !2397)
!2476 = !DILocation(line: 551, column: 39, scope: !2397)
!2477 = !DILocation(line: 551, column: 9, scope: !2397)
!2478 = !DILocation(line: 551, column: 44, scope: !2397)
!2479 = !DILocation(line: 551, column: 58, scope: !2397)
!2480 = !DILocation(line: 551, column: 63, scope: !2397)
!2481 = !DILocation(line: 551, column: 69, scope: !2397)
!2482 = !DILocation(line: 552, column: 14, scope: !2397)
!2483 = !DILocation(line: 552, column: 20, scope: !2397)
!2484 = !DILocation(line: 552, column: 26, scope: !2397)
!2485 = !DILocation(line: 552, column: 9, scope: !2397)
!2486 = !DILocation(line: 552, column: 31, scope: !2397)
!2487 = !DILocation(line: 552, column: 37, scope: !2397)
!2488 = !DILocation(line: 552, column: 43, scope: !2397)
!2489 = !DILocation(line: 549, column: 5, scope: !2397)
!2490 = !DILocation(line: 553, column: 5, scope: !2397)
!2491 = !DILocation(line: 554, column: 1, scope: !2397)
!2492 = distinct !DISubprogram(name: "symtab_pop", scope: !2, file: !2, line: 232, type: !2493, scopeLine: 233, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2493 = !DISubroutineType(types: !2494)
!2494 = !{null, !743}
!2495 = !DILocalVariable(name: "parser", arg: 1, scope: !2492, file: !2, line: 232, type: !743)
!2496 = !DILocation(line: 232, column: 27, scope: !2492)
!2497 = !DILocalVariable(name: "tab", scope: !2492, file: !2, line: 234, type: !696)
!2498 = !DILocation(line: 234, column: 20, scope: !2492)
!2499 = !DILocation(line: 234, column: 26, scope: !2492)
!2500 = !DILocation(line: 234, column: 34, scope: !2492)
!2501 = !DILocation(line: 236, column: 5, scope: !2502)
!2502 = distinct !DILexicalBlock(scope: !2503, file: !2, line: 236, column: 5)
!2503 = distinct !DILexicalBlock(scope: !2492, file: !2, line: 236, column: 5)
!2504 = !DILocation(line: 236, column: 5, scope: !2503)
!2505 = !DILocation(line: 238, column: 15, scope: !2492)
!2506 = !DILocation(line: 238, column: 20, scope: !2492)
!2507 = !DILocation(line: 238, column: 5, scope: !2492)
!2508 = !DILocation(line: 239, column: 22, scope: !2492)
!2509 = !DILocation(line: 239, column: 27, scope: !2492)
!2510 = !DILocation(line: 239, column: 5, scope: !2492)
!2511 = !DILocation(line: 239, column: 13, scope: !2492)
!2512 = !DILocation(line: 239, column: 20, scope: !2492)
!2513 = !DILocation(line: 240, column: 10, scope: !2492)
!2514 = !DILocation(line: 240, column: 5, scope: !2492)
!2515 = !DILocation(line: 241, column: 1, scope: !2492)
!2516 = distinct !DISubprogram(name: "list_empty", scope: !184, file: !184, line: 364, type: !2517, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2517 = !DISubroutineType(types: !2518)
!2518 = !{!418, !2519}
!2519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2520, size: 64)
!2520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !725)
!2521 = !DILocalVariable(name: "h", arg: 1, scope: !2516, file: !184, line: 364, type: !2519)
!2522 = !DILocation(line: 364, column: 55, scope: !2516)
!2523 = !DILocation(line: 366, column: 8, scope: !2516)
!2524 = !DILocation(line: 367, column: 9, scope: !2516)
!2525 = !DILocation(line: 367, column: 12, scope: !2516)
!2526 = !DILocation(line: 367, column: 14, scope: !2516)
!2527 = !DILocation(line: 367, column: 23, scope: !2516)
!2528 = !DILocation(line: 367, column: 26, scope: !2516)
!2529 = !DILocation(line: 367, column: 19, scope: !2516)
!2530 = !DILocation(line: 367, column: 2, scope: !2516)
!2531 = distinct !DISubprogram(name: "list_del", scope: !184, file: !184, line: 384, type: !2532, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2532 = !DISubroutineType(types: !2533)
!2533 = !{null, !187}
!2534 = !DILocalVariable(name: "n", arg: 1, scope: !2531, file: !184, line: 384, type: !187)
!2535 = !DILocation(line: 384, column: 47, scope: !2531)
!2536 = !DILocation(line: 386, column: 8, scope: !2531)
!2537 = !DILocation(line: 387, column: 18, scope: !2531)
!2538 = !DILocation(line: 387, column: 21, scope: !2531)
!2539 = !DILocation(line: 387, column: 2, scope: !2531)
!2540 = !DILocation(line: 387, column: 5, scope: !2531)
!2541 = !DILocation(line: 387, column: 11, scope: !2531)
!2542 = !DILocation(line: 387, column: 16, scope: !2531)
!2543 = !DILocation(line: 388, column: 18, scope: !2531)
!2544 = !DILocation(line: 388, column: 21, scope: !2531)
!2545 = !DILocation(line: 388, column: 2, scope: !2531)
!2546 = !DILocation(line: 388, column: 5, scope: !2531)
!2547 = !DILocation(line: 388, column: 11, scope: !2531)
!2548 = !DILocation(line: 388, column: 16, scope: !2531)
!2549 = !DILocation(line: 393, column: 1, scope: !2531)
!2550 = distinct !DISubprogram(name: "error_vitem", scope: !2, file: !2, line: 295, type: !2551, scopeLine: 296, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2551 = !DISubroutineType(types: !2552)
!2552 = !{!168, !744, !167, !2553}
!2553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!2554 = !DILocalVariable(name: "item", arg: 1, scope: !2550, file: !2, line: 295, type: !744)
!2555 = !DILocation(line: 295, column: 39, scope: !2550)
!2556 = !DILocalVariable(name: "msg", arg: 2, scope: !2550, file: !2, line: 295, type: !167)
!2557 = !DILocation(line: 295, column: 57, scope: !2550)
!2558 = !DILocalVariable(name: "ap", arg: 3, scope: !2550, file: !2, line: 295, type: !2553)
!2559 = !DILocation(line: 295, column: 70, scope: !2550)
!2560 = !DILocalVariable(name: "r", scope: !2550, file: !2, line: 297, type: !123)
!2561 = !DILocation(line: 297, column: 9, scope: !2550)
!2562 = !DILocation(line: 299, column: 5, scope: !2550)
!2563 = !DILocation(line: 299, column: 11, scope: !2550)
!2564 = !DILocation(line: 299, column: 16, scope: !2550)
!2565 = !DILocation(line: 301, column: 29, scope: !2550)
!2566 = !DILocation(line: 301, column: 35, scope: !2550)
!2567 = !DILocation(line: 301, column: 41, scope: !2550)
!2568 = !DILocation(line: 301, column: 48, scope: !2550)
!2569 = !DILocation(line: 301, column: 53, scope: !2550)
!2570 = !DILocation(line: 301, column: 9, scope: !2550)
!2571 = !DILocation(line: 301, column: 7, scope: !2550)
!2572 = !DILocation(line: 302, column: 9, scope: !2573)
!2573 = distinct !DILexicalBlock(scope: !2550, file: !2, line: 302, column: 9)
!2574 = !DILocation(line: 302, column: 11, scope: !2573)
!2575 = !DILocation(line: 302, column: 9, scope: !2550)
!2576 = !DILocation(line: 303, column: 45, scope: !2577)
!2577 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 302, column: 16)
!2578 = !DILocation(line: 303, column: 36, scope: !2577)
!2579 = !DILocation(line: 303, column: 29, scope: !2577)
!2580 = !DILocation(line: 303, column: 9, scope: !2577)
!2581 = !DILocation(line: 303, column: 15, scope: !2577)
!2582 = !DILocation(line: 303, column: 21, scope: !2577)
!2583 = !DILocation(line: 303, column: 27, scope: !2577)
!2584 = !DILocation(line: 304, column: 14, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2577, file: !2, line: 304, column: 13)
!2586 = !DILocation(line: 304, column: 20, scope: !2585)
!2587 = !DILocation(line: 304, column: 26, scope: !2585)
!2588 = !DILocation(line: 304, column: 13, scope: !2577)
!2589 = !DILocation(line: 305, column: 13, scope: !2585)
!2590 = !DILocation(line: 307, column: 34, scope: !2577)
!2591 = !DILocation(line: 307, column: 40, scope: !2577)
!2592 = !DILocation(line: 307, column: 46, scope: !2577)
!2593 = !DILocation(line: 307, column: 27, scope: !2577)
!2594 = !DILocation(line: 307, column: 9, scope: !2577)
!2595 = !DILocation(line: 307, column: 15, scope: !2577)
!2596 = !DILocation(line: 307, column: 21, scope: !2577)
!2597 = !DILocation(line: 307, column: 25, scope: !2577)
!2598 = !DILocation(line: 308, column: 5, scope: !2577)
!2599 = !DILocation(line: 309, column: 35, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2573, file: !2, line: 308, column: 12)
!2601 = !DILocation(line: 309, column: 27, scope: !2600)
!2602 = !DILocation(line: 309, column: 9, scope: !2600)
!2603 = !DILocation(line: 309, column: 15, scope: !2600)
!2604 = !DILocation(line: 309, column: 21, scope: !2600)
!2605 = !DILocation(line: 309, column: 25, scope: !2600)
!2606 = !DILocation(line: 312, column: 5, scope: !2550)
!2607 = !DILocation(line: 313, column: 1, scope: !2550)
!2608 = distinct !DISubprogram(name: "lex_init", scope: !2, file: !2, line: 471, type: !2609, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2609 = !DISubroutineType(types: !2610)
!2610 = !{null, !711, !167}
!2611 = !DILocalVariable(name: "lexer", arg: 1, scope: !2608, file: !2, line: 471, type: !711)
!2612 = !DILocation(line: 471, column: 36, scope: !2608)
!2613 = !DILocalVariable(name: "input", arg: 2, scope: !2608, file: !2, line: 471, type: !167)
!2614 = !DILocation(line: 471, column: 55, scope: !2608)
!2615 = !DILocation(line: 473, column: 5, scope: !2608)
!2616 = !DILocation(line: 473, column: 12, scope: !2608)
!2617 = !DILocation(line: 473, column: 18, scope: !2608)
!2618 = !DILocation(line: 474, column: 33, scope: !2608)
!2619 = !DILocation(line: 474, column: 18, scope: !2608)
!2620 = !DILocation(line: 474, column: 25, scope: !2608)
!2621 = !DILocation(line: 474, column: 31, scope: !2608)
!2622 = !DILocation(line: 474, column: 5, scope: !2608)
!2623 = !DILocation(line: 474, column: 12, scope: !2608)
!2624 = !DILocation(line: 474, column: 16, scope: !2608)
!2625 = !DILocation(line: 475, column: 28, scope: !2608)
!2626 = !DILocation(line: 475, column: 18, scope: !2608)
!2627 = !DILocation(line: 475, column: 5, scope: !2608)
!2628 = !DILocation(line: 475, column: 12, scope: !2608)
!2629 = !DILocation(line: 475, column: 16, scope: !2608)
!2630 = !DILocation(line: 476, column: 1, scope: !2608)
!2631 = distinct !DISubprogram(name: "list_head_init", scope: !184, file: !184, line: 309, type: !2632, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !2112}
!2634 = !DILocalVariable(name: "h", arg: 1, scope: !2631, file: !184, line: 309, type: !2112)
!2635 = !DILocation(line: 309, column: 53, scope: !2631)
!2636 = !DILocation(line: 311, column: 27, scope: !2631)
!2637 = !DILocation(line: 311, column: 30, scope: !2631)
!2638 = !DILocation(line: 311, column: 14, scope: !2631)
!2639 = !DILocation(line: 311, column: 17, scope: !2631)
!2640 = !DILocation(line: 311, column: 19, scope: !2631)
!2641 = !DILocation(line: 311, column: 24, scope: !2631)
!2642 = !DILocation(line: 311, column: 2, scope: !2631)
!2643 = !DILocation(line: 311, column: 5, scope: !2631)
!2644 = !DILocation(line: 311, column: 7, scope: !2631)
!2645 = !DILocation(line: 311, column: 12, scope: !2631)
!2646 = !DILocation(line: 312, column: 1, scope: !2631)
!2647 = distinct !DISubprogram(name: "lex_text", scope: !2, file: !2, line: 443, type: !709, scopeLine: 444, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2648 = !DILocalVariable(name: "lexer", arg: 1, scope: !2647, file: !2, line: 443, type: !711)
!2649 = !DILocation(line: 443, column: 37, scope: !2647)
!2650 = !DILocation(line: 445, column: 5, scope: !2647)
!2651 = !DILocation(line: 446, column: 22, scope: !2652)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 446, column: 13)
!2653 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 445, column: 8)
!2654 = !DILocation(line: 446, column: 29, scope: !2652)
!2655 = !DILocation(line: 446, column: 45, scope: !2652)
!2656 = !DILocation(line: 446, column: 14, scope: !2652)
!2657 = !DILocation(line: 446, column: 13, scope: !2653)
!2658 = !DILocation(line: 447, column: 17, scope: !2659)
!2659 = distinct !DILexicalBlock(scope: !2660, file: !2, line: 447, column: 17)
!2660 = distinct !DILexicalBlock(scope: !2652, file: !2, line: 446, column: 65)
!2661 = !DILocation(line: 447, column: 24, scope: !2659)
!2662 = !DILocation(line: 447, column: 30, scope: !2659)
!2663 = !DILocation(line: 447, column: 37, scope: !2659)
!2664 = !DILocation(line: 447, column: 28, scope: !2659)
!2665 = !DILocation(line: 447, column: 17, scope: !2660)
!2666 = !DILocation(line: 448, column: 22, scope: !2659)
!2667 = !DILocation(line: 448, column: 17, scope: !2659)
!2668 = !DILocation(line: 449, column: 13, scope: !2660)
!2669 = !DILocation(line: 451, column: 22, scope: !2670)
!2670 = distinct !DILexicalBlock(scope: !2653, file: !2, line: 451, column: 13)
!2671 = !DILocation(line: 451, column: 29, scope: !2670)
!2672 = !DILocation(line: 451, column: 46, scope: !2670)
!2673 = !DILocation(line: 451, column: 14, scope: !2670)
!2674 = !DILocation(line: 451, column: 13, scope: !2653)
!2675 = !DILocation(line: 452, column: 30, scope: !2670)
!2676 = !DILocation(line: 452, column: 20, scope: !2670)
!2677 = !DILocation(line: 452, column: 13, scope: !2670)
!2678 = !DILocation(line: 453, column: 5, scope: !2653)
!2679 = !DILocation(line: 453, column: 19, scope: !2647)
!2680 = !DILocation(line: 453, column: 14, scope: !2647)
!2681 = !DILocation(line: 453, column: 26, scope: !2647)
!2682 = distinct !{!2682, !2650, !2683, !536}
!2683 = !DILocation(line: 453, column: 32, scope: !2647)
!2684 = !DILocation(line: 454, column: 9, scope: !2685)
!2685 = distinct !DILexicalBlock(scope: !2647, file: !2, line: 454, column: 9)
!2686 = !DILocation(line: 454, column: 16, scope: !2685)
!2687 = !DILocation(line: 454, column: 22, scope: !2685)
!2688 = !DILocation(line: 454, column: 29, scope: !2685)
!2689 = !DILocation(line: 454, column: 20, scope: !2685)
!2690 = !DILocation(line: 454, column: 9, scope: !2647)
!2691 = !DILocation(line: 455, column: 14, scope: !2685)
!2692 = !DILocation(line: 455, column: 9, scope: !2685)
!2693 = !DILocation(line: 456, column: 10, scope: !2647)
!2694 = !DILocation(line: 456, column: 5, scope: !2647)
!2695 = !DILocation(line: 457, column: 5, scope: !2647)
!2696 = !DILocation(line: 458, column: 1, scope: !2647)
!2697 = distinct !DISubprogram(name: "emit", scope: !2, file: !2, line: 264, type: !2698, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{null, !711, !129}
!2700 = !DILocalVariable(name: "lexer", arg: 1, scope: !2697, file: !2, line: 264, type: !711)
!2701 = !DILocation(line: 264, column: 32, scope: !2697)
!2702 = !DILocalVariable(name: "item_type", arg: 2, scope: !2697, file: !2, line: 264, type: !129)
!2703 = !DILocation(line: 264, column: 54, scope: !2697)
!2704 = !DILocalVariable(name: "item", scope: !2697, file: !2, line: 266, type: !190)
!2705 = !DILocation(line: 266, column: 17, scope: !2697)
!2706 = !DILocation(line: 266, column: 24, scope: !2697)
!2707 = !DILocation(line: 267, column: 17, scope: !2697)
!2708 = !DILocation(line: 268, column: 18, scope: !2697)
!2709 = !DILocation(line: 269, column: 22, scope: !2697)
!2710 = !DILocation(line: 269, column: 29, scope: !2697)
!2711 = !DILocation(line: 270, column: 29, scope: !2697)
!2712 = !DILocation(line: 270, column: 36, scope: !2697)
!2713 = !DILocation(line: 270, column: 42, scope: !2697)
!2714 = !DILocation(line: 270, column: 49, scope: !2697)
!2715 = !DILocation(line: 270, column: 40, scope: !2697)
!2716 = !DILocation(line: 273, column: 15, scope: !2697)
!2717 = !DILocation(line: 273, column: 5, scope: !2697)
!2718 = !DILocation(line: 274, column: 1, scope: !2697)
!2719 = distinct !DISubprogram(name: "lex_left_meta", scope: !2, file: !2, line: 424, type: !709, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2720 = !DILocalVariable(name: "lexer", arg: 1, scope: !2719, file: !2, line: 424, type: !711)
!2721 = !DILocation(line: 424, column: 42, scope: !2719)
!2722 = !DILocation(line: 426, column: 19, scope: !2719)
!2723 = !DILocation(line: 426, column: 5, scope: !2719)
!2724 = !DILocation(line: 426, column: 12, scope: !2719)
!2725 = !DILocation(line: 426, column: 16, scope: !2719)
!2726 = !DILocalVariable(name: "r", scope: !2719, file: !2, line: 427, type: !123)
!2727 = !DILocation(line: 427, column: 9, scope: !2719)
!2728 = !DILocation(line: 427, column: 18, scope: !2719)
!2729 = !DILocation(line: 427, column: 13, scope: !2719)
!2730 = !DILocation(line: 428, column: 9, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2719, file: !2, line: 428, column: 9)
!2732 = !DILocation(line: 428, column: 11, scope: !2731)
!2733 = !DILocation(line: 428, column: 9, scope: !2719)
!2734 = !DILocation(line: 429, column: 9, scope: !2731)
!2735 = !DILocation(line: 430, column: 12, scope: !2719)
!2736 = !DILocation(line: 430, column: 5, scope: !2719)
!2737 = !DILocation(line: 432, column: 10, scope: !2719)
!2738 = !DILocation(line: 432, column: 5, scope: !2719)
!2739 = !DILocation(line: 433, column: 5, scope: !2719)
!2740 = !DILocation(line: 434, column: 1, scope: !2719)
!2741 = distinct !DISubprogram(name: "lex_error", scope: !2, file: !2, line: 327, type: !2742, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2742 = !DISubroutineType(types: !2743)
!2743 = !{!168, !711, !167, null}
!2744 = !DILocalVariable(name: "lexer", arg: 1, scope: !2741, file: !2, line: 327, type: !711)
!2745 = !DILocation(line: 327, column: 38, scope: !2741)
!2746 = !DILocalVariable(name: "msg", arg: 2, scope: !2741, file: !2, line: 327, type: !167)
!2747 = !DILocation(line: 327, column: 57, scope: !2741)
!2748 = !DILocalVariable(name: "item", scope: !2741, file: !2, line: 329, type: !190)
!2749 = !DILocation(line: 329, column: 17, scope: !2741)
!2750 = !DILocalVariable(name: "ap", scope: !2741, file: !2, line: 330, type: !1622)
!2751 = !DILocation(line: 330, column: 13, scope: !2741)
!2752 = !DILocation(line: 332, column: 5, scope: !2741)
!2753 = !DILocation(line: 333, column: 24, scope: !2741)
!2754 = !DILocation(line: 333, column: 29, scope: !2741)
!2755 = !DILocation(line: 333, column: 5, scope: !2741)
!2756 = !DILocation(line: 334, column: 5, scope: !2741)
!2757 = !DILocation(line: 336, column: 15, scope: !2741)
!2758 = !DILocation(line: 336, column: 5, scope: !2741)
!2759 = !DILocation(line: 337, column: 5, scope: !2741)
!2760 = distinct !DISubprogram(name: "next", scope: !2, file: !2, line: 276, type: !2761, scopeLine: 277, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2761 = !DISubroutineType(types: !2762)
!2762 = !{!123, !711}
!2763 = !DILocalVariable(name: "lexer", arg: 1, scope: !2760, file: !2, line: 276, type: !711)
!2764 = !DILocation(line: 276, column: 31, scope: !2760)
!2765 = !DILocation(line: 278, column: 9, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2760, file: !2, line: 278, column: 9)
!2767 = !DILocation(line: 278, column: 16, scope: !2766)
!2768 = !DILocation(line: 278, column: 23, scope: !2766)
!2769 = !DILocation(line: 278, column: 30, scope: !2766)
!2770 = !DILocation(line: 278, column: 20, scope: !2766)
!2771 = !DILocation(line: 278, column: 9, scope: !2760)
!2772 = !DILocation(line: 279, column: 9, scope: !2766)
!2773 = !DILocalVariable(name: "r", scope: !2760, file: !2, line: 280, type: !123)
!2774 = !DILocation(line: 280, column: 9, scope: !2760)
!2775 = !DILocation(line: 280, column: 14, scope: !2760)
!2776 = !DILocation(line: 280, column: 21, scope: !2760)
!2777 = !DILocation(line: 280, column: 13, scope: !2760)
!2778 = !DILocation(line: 281, column: 5, scope: !2760)
!2779 = !DILocation(line: 281, column: 12, scope: !2760)
!2780 = !DILocation(line: 281, column: 15, scope: !2760)
!2781 = !DILocation(line: 282, column: 12, scope: !2760)
!2782 = !DILocation(line: 282, column: 5, scope: !2760)
!2783 = !DILocation(line: 283, column: 1, scope: !2760)
!2784 = distinct !DISubprogram(name: "emit_item", scope: !2, file: !2, line: 243, type: !2785, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2785 = !DISubroutineType(types: !2786)
!2786 = !{null, !711, !744}
!2787 = !DILocalVariable(name: "lexer", arg: 1, scope: !2784, file: !2, line: 243, type: !711)
!2788 = !DILocation(line: 243, column: 37, scope: !2784)
!2789 = !DILocalVariable(name: "item", arg: 2, scope: !2784, file: !2, line: 243, type: !744)
!2790 = !DILocation(line: 243, column: 57, scope: !2784)
!2791 = !DILocation(line: 245, column: 5, scope: !2784)
!2792 = !DILocation(line: 245, column: 12, scope: !2784)
!2793 = !DILocation(line: 245, column: 24, scope: !2784)
!2794 = !DILocation(line: 245, column: 30, scope: !2784)
!2795 = !DILocation(line: 245, column: 37, scope: !2784)
!2796 = !DILocation(line: 245, column: 49, scope: !2784)
!2797 = !DILocation(line: 245, column: 58, scope: !2784)
!2798 = !DILocation(line: 245, column: 57, scope: !2784)
!2799 = !DILocation(line: 246, column: 32, scope: !2784)
!2800 = !DILocation(line: 246, column: 39, scope: !2784)
!2801 = !DILocation(line: 246, column: 51, scope: !2784)
!2802 = !DILocation(line: 246, column: 56, scope: !2784)
!2803 = !DILocation(line: 246, column: 61, scope: !2784)
!2804 = !DILocation(line: 246, column: 5, scope: !2784)
!2805 = !DILocation(line: 246, column: 12, scope: !2784)
!2806 = !DILocation(line: 246, column: 24, scope: !2784)
!2807 = !DILocation(line: 246, column: 29, scope: !2784)
!2808 = !DILocation(line: 247, column: 5, scope: !2784)
!2809 = !DILocation(line: 247, column: 12, scope: !2784)
!2810 = !DILocation(line: 247, column: 24, scope: !2784)
!2811 = !DILocation(line: 247, column: 34, scope: !2784)
!2812 = !DILocation(line: 249, column: 20, scope: !2784)
!2813 = !DILocation(line: 249, column: 27, scope: !2784)
!2814 = !DILocation(line: 249, column: 5, scope: !2784)
!2815 = !DILocation(line: 249, column: 12, scope: !2784)
!2816 = !DILocation(line: 249, column: 18, scope: !2784)
!2817 = !DILocation(line: 250, column: 1, scope: !2784)
!2818 = distinct !DISubprogram(name: "lex_comment", scope: !2, file: !2, line: 369, type: !709, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2819 = !DILocalVariable(name: "lexer", arg: 1, scope: !2818, file: !2, line: 369, type: !711)
!2820 = !DILocation(line: 369, column: 40, scope: !2818)
!2821 = !DILocalVariable(name: "brackets", scope: !2818, file: !2, line: 371, type: !169)
!2822 = !DILocation(line: 371, column: 12, scope: !2818)
!2823 = !DILocation(line: 371, column: 23, scope: !2818)
!2824 = !DILocation(line: 373, column: 5, scope: !2818)
!2825 = !DILocalVariable(name: "r", scope: !2826, file: !2, line: 374, type: !123)
!2826 = distinct !DILexicalBlock(scope: !2818, file: !2, line: 373, column: 8)
!2827 = !DILocation(line: 374, column: 13, scope: !2826)
!2828 = !DILocation(line: 374, column: 22, scope: !2826)
!2829 = !DILocation(line: 374, column: 17, scope: !2826)
!2830 = !DILocation(line: 375, column: 13, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2826, file: !2, line: 375, column: 13)
!2832 = !DILocation(line: 375, column: 15, scope: !2831)
!2833 = !DILocation(line: 375, column: 13, scope: !2826)
!2834 = !DILocation(line: 376, column: 21, scope: !2831)
!2835 = !DILocation(line: 376, column: 13, scope: !2831)
!2836 = !DILocation(line: 377, column: 18, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2831, file: !2, line: 377, column: 18)
!2838 = !DILocation(line: 377, column: 20, scope: !2837)
!2839 = !DILocation(line: 377, column: 18, scope: !2831)
!2840 = !DILocation(line: 378, column: 21, scope: !2837)
!2841 = !DILocation(line: 378, column: 13, scope: !2837)
!2842 = !DILocation(line: 379, column: 18, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2837, file: !2, line: 379, column: 18)
!2844 = !DILocation(line: 379, column: 20, scope: !2843)
!2845 = !DILocation(line: 379, column: 18, scope: !2837)
!2846 = !DILocation(line: 380, column: 30, scope: !2843)
!2847 = !DILocation(line: 380, column: 20, scope: !2843)
!2848 = !DILocation(line: 380, column: 13, scope: !2843)
!2849 = !DILocation(line: 381, column: 5, scope: !2826)
!2850 = !DILocation(line: 381, column: 14, scope: !2818)
!2851 = distinct !{!2851, !2824, !2852, !536}
!2852 = !DILocation(line: 381, column: 22, scope: !2818)
!2853 = !DILocation(line: 383, column: 12, scope: !2818)
!2854 = !DILocation(line: 383, column: 5, scope: !2818)
!2855 = !DILocation(line: 384, column: 5, scope: !2818)
!2856 = !DILocation(line: 385, column: 1, scope: !2818)
!2857 = distinct !DISubprogram(name: "backup", scope: !2, file: !2, line: 290, type: !2858, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{null, !711}
!2860 = !DILocalVariable(name: "lexer", arg: 1, scope: !2857, file: !2, line: 290, type: !711)
!2861 = !DILocation(line: 290, column: 34, scope: !2857)
!2862 = !DILocation(line: 292, column: 5, scope: !2857)
!2863 = !DILocation(line: 292, column: 12, scope: !2857)
!2864 = !DILocation(line: 292, column: 15, scope: !2857)
!2865 = !DILocation(line: 293, column: 1, scope: !2857)
!2866 = distinct !DISubprogram(name: "lex_inside_action", scope: !2, file: !2, line: 387, type: !709, scopeLine: 388, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2867 = !DILocalVariable(name: "lexer", arg: 1, scope: !2866, file: !2, line: 387, type: !711)
!2868 = !DILocation(line: 387, column: 46, scope: !2866)
!2869 = !DILocation(line: 389, column: 5, scope: !2866)
!2870 = !DILocalVariable(name: "r", scope: !2871, file: !2, line: 390, type: !123)
!2871 = distinct !DILexicalBlock(scope: !2866, file: !2, line: 389, column: 18)
!2872 = !DILocation(line: 390, column: 13, scope: !2871)
!2873 = !DILocation(line: 392, column: 22, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 392, column: 13)
!2875 = !DILocation(line: 392, column: 29, scope: !2874)
!2876 = !DILocation(line: 392, column: 46, scope: !2874)
!2877 = !DILocation(line: 392, column: 14, scope: !2874)
!2878 = !DILocation(line: 392, column: 13, scope: !2871)
!2879 = !DILocation(line: 393, column: 13, scope: !2874)
!2880 = !DILocation(line: 395, column: 18, scope: !2871)
!2881 = !DILocation(line: 395, column: 13, scope: !2871)
!2882 = !DILocation(line: 395, column: 11, scope: !2871)
!2883 = !DILocation(line: 396, column: 13, scope: !2884)
!2884 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 396, column: 13)
!2885 = !DILocation(line: 396, column: 15, scope: !2884)
!2886 = !DILocation(line: 396, column: 13, scope: !2871)
!2887 = !DILocation(line: 397, column: 30, scope: !2884)
!2888 = !DILocation(line: 397, column: 20, scope: !2884)
!2889 = !DILocation(line: 397, column: 13, scope: !2884)
!2890 = !DILocation(line: 398, column: 13, scope: !2891)
!2891 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 398, column: 13)
!2892 = !DILocation(line: 398, column: 15, scope: !2891)
!2893 = !DILocation(line: 398, column: 13, scope: !2871)
!2894 = !DILocation(line: 399, column: 30, scope: !2891)
!2895 = !DILocation(line: 399, column: 20, scope: !2891)
!2896 = !DILocation(line: 399, column: 13, scope: !2891)
!2897 = !DILocation(line: 401, column: 13, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2871, file: !2, line: 401, column: 13)
!2899 = !DILocation(line: 401, column: 13, scope: !2871)
!2900 = !DILocation(line: 402, column: 20, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 401, column: 25)
!2902 = !DILocation(line: 402, column: 13, scope: !2901)
!2903 = !DILocation(line: 403, column: 9, scope: !2901)
!2904 = !DILocation(line: 403, column: 20, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2898, file: !2, line: 403, column: 20)
!2906 = !DILocation(line: 403, column: 22, scope: !2905)
!2907 = !DILocation(line: 403, column: 20, scope: !2898)
!2908 = !DILocation(line: 404, column: 18, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 403, column: 30)
!2910 = !DILocation(line: 404, column: 13, scope: !2909)
!2911 = !DILocation(line: 405, column: 9, scope: !2909)
!2912 = !DILocation(line: 405, column: 20, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2905, file: !2, line: 405, column: 20)
!2914 = !DILocation(line: 405, column: 22, scope: !2913)
!2915 = !DILocation(line: 405, column: 20, scope: !2905)
!2916 = !DILocation(line: 406, column: 18, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 405, column: 30)
!2918 = !DILocation(line: 406, column: 13, scope: !2917)
!2919 = !DILocation(line: 407, column: 9, scope: !2917)
!2920 = !DILocation(line: 407, column: 20, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2913, file: !2, line: 407, column: 20)
!2922 = !DILocation(line: 407, column: 22, scope: !2921)
!2923 = !DILocation(line: 407, column: 20, scope: !2913)
!2924 = !DILocation(line: 408, column: 18, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 407, column: 30)
!2926 = !DILocation(line: 408, column: 13, scope: !2925)
!2927 = !DILocation(line: 409, column: 9, scope: !2925)
!2928 = !DILocation(line: 409, column: 20, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2921, file: !2, line: 409, column: 20)
!2930 = !DILocation(line: 409, column: 22, scope: !2929)
!2931 = !DILocation(line: 409, column: 20, scope: !2921)
!2932 = !DILocation(line: 410, column: 18, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 409, column: 30)
!2934 = !DILocation(line: 410, column: 13, scope: !2933)
!2935 = !DILocation(line: 411, column: 9, scope: !2933)
!2936 = !DILocation(line: 411, column: 20, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2929, file: !2, line: 411, column: 20)
!2938 = !DILocation(line: 411, column: 22, scope: !2937)
!2939 = !DILocation(line: 411, column: 20, scope: !2929)
!2940 = !DILocation(line: 412, column: 18, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 411, column: 30)
!2942 = !DILocation(line: 412, column: 13, scope: !2941)
!2943 = !DILocation(line: 413, column: 9, scope: !2941)
!2944 = !DILocation(line: 413, column: 20, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2937, file: !2, line: 413, column: 20)
!2946 = !DILocation(line: 413, column: 22, scope: !2945)
!2947 = !DILocation(line: 413, column: 20, scope: !2937)
!2948 = !DILocation(line: 414, column: 13, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2945, file: !2, line: 413, column: 30)
!2950 = !DILocation(line: 415, column: 20, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2945, file: !2, line: 415, column: 20)
!2952 = !DILocation(line: 415, column: 31, scope: !2951)
!2953 = !DILocation(line: 415, column: 34, scope: !2951)
!2954 = !DILocation(line: 415, column: 36, scope: !2951)
!2955 = !DILocation(line: 415, column: 20, scope: !2945)
!2956 = !DILocation(line: 416, column: 20, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 415, column: 44)
!2958 = !DILocation(line: 416, column: 13, scope: !2957)
!2959 = !DILocation(line: 417, column: 13, scope: !2957)
!2960 = !DILocation(line: 419, column: 30, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2951, file: !2, line: 418, column: 16)
!2962 = !DILocation(line: 419, column: 65, scope: !2961)
!2963 = !DILocation(line: 419, column: 20, scope: !2961)
!2964 = !DILocation(line: 419, column: 13, scope: !2961)
!2965 = distinct !{!2965, !2869, !2966}
!2966 = !DILocation(line: 421, column: 5, scope: !2866)
!2967 = !DILocation(line: 422, column: 1, scope: !2866)
!2968 = distinct !DISubprogram(name: "ignore", scope: !2, file: !2, line: 285, type: !2858, scopeLine: 286, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2969 = !DILocalVariable(name: "lexer", arg: 1, scope: !2968, file: !2, line: 285, type: !711)
!2970 = !DILocation(line: 285, column: 34, scope: !2968)
!2971 = !DILocation(line: 287, column: 20, scope: !2968)
!2972 = !DILocation(line: 287, column: 27, scope: !2968)
!2973 = !DILocation(line: 287, column: 5, scope: !2968)
!2974 = !DILocation(line: 287, column: 12, scope: !2968)
!2975 = !DILocation(line: 287, column: 18, scope: !2968)
!2976 = !DILocation(line: 288, column: 1, scope: !2968)
!2977 = distinct !DISubprogram(name: "lex_right_meta", scope: !2, file: !2, line: 436, type: !709, scopeLine: 437, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2978 = !DILocalVariable(name: "lexer", arg: 1, scope: !2977, file: !2, line: 436, type: !711)
!2979 = !DILocation(line: 436, column: 43, scope: !2977)
!2980 = !DILocation(line: 438, column: 19, scope: !2977)
!2981 = !DILocation(line: 438, column: 5, scope: !2977)
!2982 = !DILocation(line: 438, column: 12, scope: !2977)
!2983 = !DILocation(line: 438, column: 16, scope: !2977)
!2984 = !DILocation(line: 439, column: 10, scope: !2977)
!2985 = !DILocation(line: 439, column: 5, scope: !2977)
!2986 = !DILocation(line: 440, column: 5, scope: !2977)
!2987 = distinct !DISubprogram(name: "lex_quoted_identifier", scope: !2, file: !2, line: 354, type: !709, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!2988 = !DILocalVariable(name: "lexer", arg: 1, scope: !2987, file: !2, line: 354, type: !711)
!2989 = !DILocation(line: 354, column: 50, scope: !2987)
!2990 = !DILocalVariable(name: "r", scope: !2987, file: !2, line: 356, type: !123)
!2991 = !DILocation(line: 356, column: 9, scope: !2987)
!2992 = !DILocation(line: 358, column: 10, scope: !2987)
!2993 = !DILocation(line: 358, column: 5, scope: !2987)
!2994 = !DILocation(line: 359, column: 20, scope: !2987)
!2995 = !DILocation(line: 359, column: 5, scope: !2987)
!2996 = !DILocation(line: 361, column: 14, scope: !2987)
!2997 = !DILocation(line: 361, column: 9, scope: !2987)
!2998 = !DILocation(line: 361, column: 7, scope: !2987)
!2999 = !DILocation(line: 362, column: 9, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2987, file: !2, line: 362, column: 9)
!3001 = !DILocation(line: 362, column: 11, scope: !3000)
!3002 = !DILocation(line: 362, column: 9, scope: !2987)
!3003 = !DILocation(line: 363, column: 26, scope: !3000)
!3004 = !DILocation(line: 363, column: 62, scope: !3000)
!3005 = !DILocation(line: 363, column: 16, scope: !3000)
!3006 = !DILocation(line: 363, column: 9, scope: !3000)
!3007 = !DILocation(line: 365, column: 10, scope: !2987)
!3008 = !DILocation(line: 365, column: 5, scope: !2987)
!3009 = !DILocation(line: 366, column: 5, scope: !2987)
!3010 = !DILocation(line: 367, column: 1, scope: !2987)
!3011 = distinct !DISubprogram(name: "lex_identifier", scope: !2, file: !2, line: 345, type: !709, scopeLine: 346, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3012 = !DILocalVariable(name: "lexer", arg: 1, scope: !3011, file: !2, line: 345, type: !711)
!3013 = !DILocation(line: 345, column: 43, scope: !3011)
!3014 = !DILocation(line: 347, column: 5, scope: !3011)
!3015 = !DILocation(line: 347, column: 25, scope: !3011)
!3016 = !DILocation(line: 347, column: 20, scope: !3011)
!3017 = !DILocation(line: 347, column: 12, scope: !3011)
!3018 = distinct !{!3018, !3014, !3019, !536}
!3019 = !DILocation(line: 348, column: 9, scope: !3011)
!3020 = !DILocation(line: 349, column: 12, scope: !3011)
!3021 = !DILocation(line: 349, column: 5, scope: !3011)
!3022 = !DILocation(line: 350, column: 10, scope: !3011)
!3023 = !DILocation(line: 350, column: 5, scope: !3011)
!3024 = !DILocation(line: 351, column: 5, scope: !3011)
!3025 = distinct !DISubprogram(name: "isident", scope: !2, file: !2, line: 340, type: !3026, scopeLine: 341, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!418, !123}
!3028 = !DILocalVariable(name: "ch", arg: 1, scope: !3025, file: !2, line: 340, type: !123)
!3029 = !DILocation(line: 340, column: 25, scope: !3025)
!3030 = !DILocation(line: 342, column: 12, scope: !3025)
!3031 = !DILocation(line: 342, column: 24, scope: !3025)
!3032 = !DILocation(line: 342, column: 27, scope: !3025)
!3033 = !DILocation(line: 342, column: 30, scope: !3025)
!3034 = !DILocation(line: 342, column: 37, scope: !3025)
!3035 = !DILocation(line: 342, column: 40, scope: !3025)
!3036 = !DILocation(line: 342, column: 43, scope: !3025)
!3037 = !DILocation(line: 342, column: 5, scope: !3025)
!3038 = distinct !DISubprogram(name: "consume_item", scope: !2, file: !2, line: 252, type: !1357, scopeLine: 253, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3039 = !DILocalVariable(name: "lexer", arg: 1, scope: !3038, file: !2, line: 252, type: !711)
!3040 = !DILocation(line: 252, column: 40, scope: !3038)
!3041 = !DILocalVariable(name: "item", arg: 2, scope: !3038, file: !2, line: 252, type: !1359)
!3042 = !DILocation(line: 252, column: 61, scope: !3038)
!3043 = !DILocation(line: 254, column: 10, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3038, file: !2, line: 254, column: 9)
!3045 = !DILocation(line: 254, column: 17, scope: !3044)
!3046 = !DILocation(line: 254, column: 29, scope: !3044)
!3047 = !DILocation(line: 254, column: 9, scope: !3038)
!3048 = !DILocation(line: 255, column: 9, scope: !3044)
!3049 = !DILocation(line: 257, column: 14, scope: !3038)
!3050 = !DILocation(line: 257, column: 21, scope: !3038)
!3051 = !DILocation(line: 257, column: 33, scope: !3038)
!3052 = !DILocation(line: 257, column: 39, scope: !3038)
!3053 = !DILocation(line: 257, column: 46, scope: !3038)
!3054 = !DILocation(line: 257, column: 58, scope: !3038)
!3055 = !DILocation(line: 257, column: 6, scope: !3038)
!3056 = !DILocation(line: 257, column: 11, scope: !3038)
!3057 = !DILocation(line: 258, column: 33, scope: !3038)
!3058 = !DILocation(line: 258, column: 40, scope: !3038)
!3059 = !DILocation(line: 258, column: 52, scope: !3038)
!3060 = !DILocation(line: 258, column: 58, scope: !3038)
!3061 = !DILocation(line: 258, column: 63, scope: !3038)
!3062 = !DILocation(line: 258, column: 5, scope: !3038)
!3063 = !DILocation(line: 258, column: 12, scope: !3038)
!3064 = !DILocation(line: 258, column: 24, scope: !3038)
!3065 = !DILocation(line: 258, column: 30, scope: !3038)
!3066 = !DILocation(line: 259, column: 5, scope: !3038)
!3067 = !DILocation(line: 259, column: 12, scope: !3038)
!3068 = !DILocation(line: 259, column: 24, scope: !3038)
!3069 = !DILocation(line: 259, column: 34, scope: !3038)
!3070 = !DILocation(line: 261, column: 5, scope: !3038)
!3071 = !DILocation(line: 262, column: 1, scope: !3038)
!3072 = distinct !DISubprogram(name: "list_node_to_off_", scope: !184, file: !184, line: 716, type: !3073, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{!168, !187, !169}
!3075 = !DILocalVariable(name: "node", arg: 1, scope: !3072, file: !184, line: 716, type: !187)
!3076 = !DILocation(line: 716, column: 57, scope: !3072)
!3077 = !DILocalVariable(name: "off", arg: 2, scope: !3072, file: !184, line: 716, type: !169)
!3078 = !DILocation(line: 716, column: 70, scope: !3072)
!3079 = !DILocation(line: 718, column: 26, scope: !3072)
!3080 = !DILocation(line: 718, column: 33, scope: !3072)
!3081 = !DILocation(line: 718, column: 31, scope: !3072)
!3082 = !DILocation(line: 718, column: 2, scope: !3072)
!3083 = distinct !DISubprogram(name: "list_node_from_off_", scope: !184, file: !184, line: 720, type: !3084, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!187, !168, !169}
!3086 = !DILocalVariable(name: "ptr", arg: 1, scope: !3083, file: !184, line: 720, type: !168)
!3087 = !DILocation(line: 720, column: 59, scope: !3083)
!3088 = !DILocalVariable(name: "off", arg: 2, scope: !3083, file: !184, line: 720, type: !169)
!3089 = !DILocation(line: 720, column: 71, scope: !3083)
!3090 = !DILocation(line: 722, column: 38, scope: !3083)
!3091 = !DILocation(line: 722, column: 44, scope: !3083)
!3092 = !DILocation(line: 722, column: 42, scope: !3083)
!3093 = !DILocation(line: 722, column: 2, scope: !3083)
!3094 = distinct !DISubprogram(name: "post_process_template", scope: !2, file: !2, line: 923, type: !3095, scopeLine: 924, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !105, retainedNodes: !366)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!418, !743}
!3097 = !DILocalVariable(name: "parser", arg: 1, scope: !3094, file: !2, line: 923, type: !743)
!3098 = !DILocation(line: 923, column: 38, scope: !3094)
!3099 = !DILocalVariable(name: "idx", scope: !3094, file: !2, line: 925, type: !169)
!3100 = !DILocation(line: 925, column: 12, scope: !3094)
!3101 = !DILocalVariable(name: "prev_chunk", scope: !3094, file: !2, line: 926, type: !216)
!3102 = !DILocation(line: 926, column: 19, scope: !3094)
!3103 = !DILocalVariable(name: "resized", scope: !3094, file: !2, line: 926, type: !216)
!3104 = !DILocation(line: 926, column: 32, scope: !3094)
!3105 = !DILocation(line: 930, column: 14, scope: !3106)
!3106 = distinct !DILexicalBlock(scope: !3094, file: !2, line: 930, column: 5)
!3107 = !DILocation(line: 930, column: 10, scope: !3106)
!3108 = !DILocation(line: 930, column: 19, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3106, file: !2, line: 930, column: 5)
!3110 = !DILocation(line: 930, column: 25, scope: !3109)
!3111 = !DILocation(line: 930, column: 33, scope: !3109)
!3112 = !DILocation(line: 930, column: 40, scope: !3109)
!3113 = !DILocation(line: 930, column: 23, scope: !3109)
!3114 = !DILocation(line: 930, column: 5, scope: !3106)
!3115 = !DILocalVariable(name: "chunk", scope: !3116, file: !2, line: 931, type: !216)
!3116 = distinct !DILexicalBlock(scope: !3109, file: !2, line: 930, column: 53)
!3117 = !DILocation(line: 931, column: 23, scope: !3116)
!3118 = !DILocation(line: 931, column: 32, scope: !3116)
!3119 = !DILocation(line: 931, column: 40, scope: !3116)
!3120 = !DILocation(line: 931, column: 47, scope: !3116)
!3121 = !DILocation(line: 931, column: 52, scope: !3116)
!3122 = !DILocation(line: 933, column: 13, scope: !3123)
!3123 = distinct !DILexicalBlock(scope: !3116, file: !2, line: 933, column: 13)
!3124 = !DILocation(line: 933, column: 20, scope: !3123)
!3125 = !DILocation(line: 933, column: 27, scope: !3123)
!3126 = !DILocation(line: 933, column: 13, scope: !3116)
!3127 = !DILocation(line: 934, column: 31, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 934, column: 13)
!3129 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 933, column: 60)
!3130 = !DILocation(line: 934, column: 29, scope: !3128)
!3131 = !DILocation(line: 934, column: 18, scope: !3128)
!3132 = !DILocation(line: 935, column: 21, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3134, file: !2, line: 935, column: 21)
!3134 = distinct !DILexicalBlock(scope: !3135, file: !2, line: 934, column: 49)
!3135 = distinct !DILexicalBlock(scope: !3128, file: !2, line: 934, column: 13)
!3136 = !DILocation(line: 935, column: 28, scope: !3133)
!3137 = !DILocation(line: 935, column: 35, scope: !3133)
!3138 = !DILocation(line: 935, column: 21, scope: !3134)
!3139 = !DILocation(line: 936, column: 21, scope: !3133)
!3140 = !DILocation(line: 937, column: 21, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3134, file: !2, line: 937, column: 21)
!3142 = !DILocation(line: 937, column: 28, scope: !3141)
!3143 = !DILocation(line: 937, column: 35, scope: !3141)
!3144 = !DILocation(line: 938, column: 29, scope: !3141)
!3145 = !DILocation(line: 938, column: 32, scope: !3141)
!3146 = !DILocation(line: 938, column: 39, scope: !3141)
!3147 = !DILocation(line: 938, column: 47, scope: !3141)
!3148 = !DILocation(line: 938, column: 59, scope: !3141)
!3149 = !DILocation(line: 938, column: 44, scope: !3141)
!3150 = !DILocation(line: 937, column: 21, scope: !3134)
!3151 = !DILocation(line: 939, column: 21, scope: !3141)
!3152 = !DILocation(line: 940, column: 13, scope: !3134)
!3153 = !DILocation(line: 934, column: 45, scope: !3135)
!3154 = !DILocation(line: 934, column: 13, scope: !3135)
!3155 = distinct !{!3155, !3156, !3157}
!3156 = !DILocation(line: 934, column: 13, scope: !3128)
!3157 = !DILocation(line: 940, column: 13, scope: !3128)
!3158 = !DILocalVariable(name: "cd", scope: !3129, file: !2, line: 942, type: !997)
!3159 = !DILocation(line: 942, column: 38, scope: !3129)
!3160 = !DILocation(line: 942, column: 43, scope: !3129)
!3161 = !DILocation(line: 943, column: 18, scope: !3162)
!3162 = distinct !DILexicalBlock(scope: !3129, file: !2, line: 943, column: 17)
!3163 = !DILocation(line: 943, column: 17, scope: !3129)
!3164 = !DILocation(line: 944, column: 17, scope: !3162)
!3165 = !DILocation(line: 946, column: 30, scope: !3129)
!3166 = !DILocation(line: 946, column: 42, scope: !3129)
!3167 = !DILocation(line: 946, column: 13, scope: !3129)
!3168 = !DILocation(line: 946, column: 17, scope: !3129)
!3169 = !DILocation(line: 946, column: 28, scope: !3129)
!3170 = !DILocation(line: 947, column: 25, scope: !3129)
!3171 = !DILocation(line: 947, column: 13, scope: !3129)
!3172 = !DILocation(line: 947, column: 17, scope: !3129)
!3173 = !DILocation(line: 947, column: 23, scope: !3129)
!3174 = !DILocation(line: 948, column: 32, scope: !3129)
!3175 = !DILocation(line: 948, column: 13, scope: !3129)
!3176 = !DILocation(line: 948, column: 25, scope: !3129)
!3177 = !DILocation(line: 948, column: 30, scope: !3129)
!3178 = !DILocation(line: 949, column: 13, scope: !3129)
!3179 = !DILocation(line: 949, column: 25, scope: !3129)
!3180 = !DILocation(line: 949, column: 31, scope: !3129)
!3181 = !DILocation(line: 951, column: 19, scope: !3129)
!3182 = !DILocation(line: 951, column: 41, scope: !3129)
!3183 = !DILocation(line: 951, column: 17, scope: !3129)
!3184 = !DILocation(line: 952, column: 9, scope: !3129)
!3185 = !DILocation(line: 952, column: 20, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3123, file: !2, line: 952, column: 20)
!3187 = !DILocation(line: 952, column: 27, scope: !3186)
!3188 = !DILocation(line: 952, column: 34, scope: !3186)
!3189 = !DILocation(line: 952, column: 20, scope: !3123)
!3190 = !DILocalVariable(name: "flags", scope: !3191, file: !2, line: 953, type: !122)
!3191 = distinct !DILexicalBlock(scope: !3186, file: !2, line: 952, column: 56)
!3192 = !DILocation(line: 953, column: 24, scope: !3191)
!3193 = !DILocation(line: 953, column: 32, scope: !3191)
!3194 = !DILocation(line: 953, column: 39, scope: !3191)
!3195 = !DILocation(line: 955, column: 31, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !2, line: 955, column: 13)
!3197 = !DILocation(line: 955, column: 29, scope: !3196)
!3198 = !DILocation(line: 955, column: 18, scope: !3196)
!3199 = !DILocation(line: 956, column: 21, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 956, column: 21)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 955, column: 49)
!3202 = distinct !DILexicalBlock(scope: !3196, file: !2, line: 955, column: 13)
!3203 = !DILocation(line: 956, column: 28, scope: !3200)
!3204 = !DILocation(line: 956, column: 35, scope: !3200)
!3205 = !DILocation(line: 956, column: 21, scope: !3201)
!3206 = !DILocation(line: 957, column: 21, scope: !3200)
!3207 = !DILocation(line: 958, column: 21, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3201, file: !2, line: 958, column: 21)
!3209 = !DILocation(line: 958, column: 28, scope: !3208)
!3210 = !DILocation(line: 958, column: 35, scope: !3208)
!3211 = !DILocation(line: 958, column: 54, scope: !3208)
!3212 = !DILocation(line: 958, column: 57, scope: !3208)
!3213 = !DILocation(line: 958, column: 64, scope: !3208)
!3214 = !DILocation(line: 958, column: 72, scope: !3208)
!3215 = !DILocation(line: 958, column: 69, scope: !3208)
!3216 = !DILocation(line: 958, column: 21, scope: !3201)
!3217 = !DILocation(line: 959, column: 37, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3208, file: !2, line: 958, column: 84)
!3219 = !DILocation(line: 959, column: 21, scope: !3218)
!3220 = !DILocation(line: 959, column: 28, scope: !3218)
!3221 = !DILocation(line: 959, column: 34, scope: !3218)
!3222 = !DILocation(line: 960, column: 21, scope: !3218)
!3223 = !DILocation(line: 962, column: 13, scope: !3201)
!3224 = !DILocation(line: 955, column: 45, scope: !3202)
!3225 = !DILocation(line: 955, column: 13, scope: !3202)
!3226 = distinct !{!3226, !3227, !3228}
!3227 = !DILocation(line: 955, column: 13, scope: !3196)
!3228 = !DILocation(line: 962, column: 13, scope: !3196)
!3229 = !DILocalVariable(name: "cd", scope: !3191, file: !2, line: 964, type: !997)
!3230 = !DILocation(line: 964, column: 38, scope: !3191)
!3231 = !DILocation(line: 964, column: 43, scope: !3191)
!3232 = !DILocation(line: 965, column: 18, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3191, file: !2, line: 965, column: 17)
!3234 = !DILocation(line: 965, column: 17, scope: !3191)
!3235 = !DILocation(line: 966, column: 17, scope: !3233)
!3236 = !DILocation(line: 968, column: 30, scope: !3191)
!3237 = !DILocation(line: 968, column: 42, scope: !3191)
!3238 = !DILocation(line: 968, column: 13, scope: !3191)
!3239 = !DILocation(line: 968, column: 17, scope: !3191)
!3240 = !DILocation(line: 968, column: 28, scope: !3191)
!3241 = !DILocation(line: 969, column: 32, scope: !3191)
!3242 = !DILocation(line: 969, column: 13, scope: !3191)
!3243 = !DILocation(line: 969, column: 25, scope: !3191)
!3244 = !DILocation(line: 969, column: 30, scope: !3191)
!3245 = !DILocation(line: 970, column: 13, scope: !3191)
!3246 = !DILocation(line: 970, column: 25, scope: !3191)
!3247 = !DILocation(line: 970, column: 31, scope: !3191)
!3248 = !DILocation(line: 972, column: 17, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3191, file: !2, line: 972, column: 17)
!3250 = !DILocation(line: 972, column: 24, scope: !3249)
!3251 = !DILocation(line: 972, column: 31, scope: !3249)
!3252 = !DILocation(line: 972, column: 17, scope: !3191)
!3253 = !DILocation(line: 973, column: 29, scope: !3249)
!3254 = !DILocation(line: 973, column: 17, scope: !3249)
!3255 = !DILocation(line: 973, column: 21, scope: !3249)
!3256 = !DILocation(line: 973, column: 27, scope: !3249)
!3257 = !DILocation(line: 975, column: 29, scope: !3249)
!3258 = !DILocation(line: 975, column: 35, scope: !3249)
!3259 = !DILocation(line: 975, column: 17, scope: !3249)
!3260 = !DILocation(line: 975, column: 21, scope: !3249)
!3261 = !DILocation(line: 975, column: 27, scope: !3249)
!3262 = !DILocation(line: 977, column: 19, scope: !3191)
!3263 = !DILocation(line: 977, column: 41, scope: !3191)
!3264 = !DILocation(line: 977, column: 17, scope: !3191)
!3265 = !DILocation(line: 978, column: 9, scope: !3191)
!3266 = !DILocation(line: 978, column: 20, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3186, file: !2, line: 978, column: 20)
!3268 = !DILocation(line: 978, column: 27, scope: !3267)
!3269 = !DILocation(line: 978, column: 34, scope: !3267)
!3270 = !DILocation(line: 978, column: 20, scope: !3186)
!3271 = !DILocalVariable(name: "descriptor", scope: !3272, file: !2, line: 979, type: !948)
!3272 = distinct !DILexicalBlock(scope: !3267, file: !2, line: 978, column: 54)
!3273 = !DILocation(line: 979, column: 36, scope: !3272)
!3274 = !DILocation(line: 979, column: 49, scope: !3272)
!3275 = !DILocation(line: 979, column: 56, scope: !3272)
!3276 = !DILocalVariable(name: "escape", scope: !3272, file: !2, line: 980, type: !418)
!3277 = !DILocation(line: 980, column: 18, scope: !3272)
!3278 = !DILocation(line: 980, column: 27, scope: !3272)
!3279 = !DILocation(line: 980, column: 34, scope: !3272)
!3280 = !DILocation(line: 980, column: 40, scope: !3272)
!3281 = !DILocation(line: 982, column: 17, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3272, file: !2, line: 982, column: 17)
!3283 = !DILocation(line: 982, column: 29, scope: !3282)
!3284 = !DILocation(line: 982, column: 46, scope: !3282)
!3285 = !DILocation(line: 982, column: 17, scope: !3272)
!3286 = !DILocation(line: 983, column: 21, scope: !3287)
!3287 = distinct !DILexicalBlock(scope: !3288, file: !2, line: 983, column: 21)
!3288 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 982, column: 76)
!3289 = !DILocation(line: 983, column: 21, scope: !3288)
!3290 = !DILocation(line: 984, column: 21, scope: !3287)
!3291 = !DILocation(line: 984, column: 28, scope: !3287)
!3292 = !DILocation(line: 984, column: 35, scope: !3287)
!3293 = !DILocation(line: 986, column: 21, scope: !3287)
!3294 = !DILocation(line: 986, column: 28, scope: !3287)
!3295 = !DILocation(line: 986, column: 35, scope: !3287)
!3296 = !DILocation(line: 987, column: 50, scope: !3288)
!3297 = !DILocation(line: 987, column: 62, scope: !3288)
!3298 = !DILocation(line: 987, column: 31, scope: !3288)
!3299 = !DILocation(line: 987, column: 17, scope: !3288)
!3300 = !DILocation(line: 987, column: 24, scope: !3288)
!3301 = !DILocation(line: 987, column: 29, scope: !3288)
!3302 = !DILocation(line: 988, column: 13, scope: !3288)
!3303 = !DILocation(line: 988, column: 24, scope: !3304)
!3304 = distinct !DILexicalBlock(scope: !3282, file: !2, line: 988, column: 24)
!3305 = !DILocation(line: 988, column: 24, scope: !3282)
!3306 = !DILocation(line: 989, column: 17, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 988, column: 32)
!3308 = !DILocation(line: 990, column: 17, scope: !3307)
!3309 = !DILocation(line: 991, column: 25, scope: !3310)
!3310 = distinct !DILexicalBlock(scope: !3304, file: !2, line: 991, column: 24)
!3311 = !DILocation(line: 991, column: 37, scope: !3310)
!3312 = !DILocation(line: 991, column: 24, scope: !3304)
!3313 = !DILocation(line: 992, column: 17, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3310, file: !2, line: 991, column: 55)
!3315 = !DILocation(line: 993, column: 17, scope: !3314)
!3316 = !DILocation(line: 995, column: 9, scope: !3272)
!3317 = !DILocation(line: 995, column: 20, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3267, file: !2, line: 995, column: 20)
!3319 = !DILocation(line: 995, column: 27, scope: !3318)
!3320 = !DILocation(line: 995, column: 34, scope: !3318)
!3321 = !DILocation(line: 995, column: 20, scope: !3267)
!3322 = !DILocation(line: 996, column: 13, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3318, file: !2, line: 995, column: 50)
!3324 = !DILocation(line: 998, column: 5, scope: !3116)
!3325 = !DILocation(line: 930, column: 49, scope: !3109)
!3326 = !DILocation(line: 930, column: 5, scope: !3109)
!3327 = distinct !{!3327, !3114, !3328, !536}
!3328 = !DILocation(line: 998, column: 5, scope: !3106)
!3329 = !DILocation(line: 1000, column: 9, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3094, file: !2, line: 1000, column: 9)
!3331 = !DILocation(line: 1000, column: 17, scope: !3330)
!3332 = !DILocation(line: 1000, column: 24, scope: !3330)
!3333 = !DILocation(line: 1000, column: 36, scope: !3330)
!3334 = !DILocation(line: 1000, column: 44, scope: !3330)
!3335 = !DILocation(line: 1000, column: 51, scope: !3330)
!3336 = !DILocation(line: 1000, column: 33, scope: !3330)
!3337 = !DILocation(line: 1000, column: 9, scope: !3094)
!3338 = !DILocation(line: 1001, column: 9, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3330, file: !2, line: 1000, column: 57)
!3340 = !DILocation(line: 1003, column: 32, scope: !3339)
!3341 = !DILocation(line: 1003, column: 40, scope: !3339)
!3342 = !DILocation(line: 1003, column: 47, scope: !3339)
!3343 = !DILocation(line: 1003, column: 53, scope: !3339)
!3344 = !DILocation(line: 1003, column: 61, scope: !3339)
!3345 = !DILocation(line: 1003, column: 68, scope: !3339)
!3346 = !DILocation(line: 1003, column: 19, scope: !3339)
!3347 = !DILocation(line: 1003, column: 17, scope: !3339)
!3348 = !DILocation(line: 1004, column: 13, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3339, file: !2, line: 1004, column: 13)
!3350 = !DILocation(line: 1004, column: 13, scope: !3339)
!3351 = !DILocation(line: 1005, column: 35, scope: !3349)
!3352 = !DILocation(line: 1005, column: 13, scope: !3349)
!3353 = !DILocation(line: 1005, column: 21, scope: !3349)
!3354 = !DILocation(line: 1005, column: 28, scope: !3349)
!3355 = !DILocation(line: 1005, column: 33, scope: !3349)
!3356 = !DILocation(line: 1006, column: 5, scope: !3339)
!3357 = !DILocation(line: 1008, column: 27, scope: !3094)
!3358 = !DILocation(line: 1008, column: 35, scope: !3094)
!3359 = !DILocation(line: 1008, column: 42, scope: !3094)
!3360 = !DILocation(line: 1008, column: 5, scope: !3094)
!3361 = !DILocation(line: 1008, column: 13, scope: !3094)
!3362 = !DILocation(line: 1008, column: 18, scope: !3094)
!3363 = !DILocation(line: 1008, column: 25, scope: !3094)
!3364 = !DILocation(line: 1010, column: 5, scope: !3094)
!3365 = !DILocation(line: 1013, column: 1, scope: !3094)
