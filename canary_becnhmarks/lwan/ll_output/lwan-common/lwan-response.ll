; ModuleID = '/home/raj/lwan/common/lwan-response.c'
source_filename = "/home/raj/lwan/common/lwan-response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.iovec = type { ptr, i64 }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.2, %struct.anon.2, %struct.anon.3, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.2 = type { ptr, i64 }
%struct.anon.3 = type { i64, %struct.anon.4 }
%struct.anon.4 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%struct.strbuf_t_ = type { %union.anon, %struct.anon, i32 }
%union.anon = type { ptr }
%struct.anon = type { i64, i64 }
%struct.lwan_key_value_t_ = type { ptr, ptr }
%struct.lwan_thread_t_ = type { ptr, %struct.anon.1, i32, [2 x i32], i64 }
%struct.anon.1 = type { [30 x i8], [30 x i8], i64 }
%struct.error_template_t = type { ptr, ptr }

@lwan_response_init.error_descriptor = internal global [3 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str, i64 0, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.1, i64 8, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"short_message\00", align 1, !dbg !105
@.str.1 = private unnamed_addr constant [13 x i8] c"long_message\00", align 1, !dbg !110
@error_template = internal global ptr null, align 8, !dbg !413
@.str.2 = private unnamed_addr constant [16 x i8] c"!error_template\00", align 1, !dbg !115
@.str.3 = private unnamed_addr constant [38 x i8] c"/home/raj/lwan/common/lwan-response.c\00", align 1, !dbg !120
@__PRETTY_FUNCTION__.lwan_response_init = private unnamed_addr constant [30 x i8] c"void lwan_response_init(void)\00", align 1, !dbg !125
@__FUNCTION__.lwan_response_init = private unnamed_addr constant [19 x i8] c"lwan_response_init\00", align 1, !dbg !130
@.str.4 = private unnamed_addr constant [30 x i8] c"Initializing default response\00", align 1, !dbg !135
@error_template_str = internal global ptr @.str.31, align 8, !dbg !424
@.str.5 = private unnamed_addr constant [24 x i8] c"lwan_tpl_compile_string\00", align 1, !dbg !138
@__FUNCTION__.lwan_response_shutdown = private unnamed_addr constant [23 x i8] c"lwan_response_shutdown\00", align 1, !dbg !143
@.str.6 = private unnamed_addr constant [23 x i8] c"Shutting down response\00", align 1, !dbg !148
@.str.7 = private unnamed_addr constant [15 x i8] c"error_template\00", align 1, !dbg !151
@__PRETTY_FUNCTION__.lwan_response_shutdown = private unnamed_addr constant [34 x i8] c"void lwan_response_shutdown(void)\00", align 1, !dbg !156
@__FUNCTION__.lwan_response = private unnamed_addr constant [14 x i8] c"lwan_response\00", align 1, !dbg !161
@.str.8 = private unnamed_addr constant [36 x i8] c"Headers already sent, ignoring call\00", align 1, !dbg !164
@.str.9 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1, !dbg !169
@.str.10 = private unnamed_addr constant [10 x i8] c"HTTP/1.0 \00", align 1, !dbg !174
@.str.11 = private unnamed_addr constant [10 x i8] c"HTTP/1.1 \00", align 1, !dbg !176
@.str.12 = private unnamed_addr constant [29 x i8] c"\0D\0ATransfer-Encoding: chunked\00", align 1, !dbg !178
@.str.13 = private unnamed_addr constant [19 x i8] c"\0D\0AContent-Length: \00", align 1, !dbg !183
@.str.14 = private unnamed_addr constant [17 x i8] c"\0D\0AContent-Type: \00", align 1, !dbg !186
@.str.15 = private unnamed_addr constant [25 x i8] c"\0D\0AConnection: keep-alive\00", align 1, !dbg !191
@.str.16 = private unnamed_addr constant [20 x i8] c"\0D\0AConnection: close\00", align 1, !dbg !196
@.str.17 = private unnamed_addr constant [7 x i8] c"Server\00", align 1, !dbg !201
@.str.18 = private unnamed_addr constant [5 x i8] c"Date\00", align 1, !dbg !206
@.str.19 = private unnamed_addr constant [8 x i8] c"Expires\00", align 1, !dbg !211
@.str.20 = private unnamed_addr constant [17 x i8] c"WWW-Authenticate\00", align 1, !dbg !216
@.str.21 = private unnamed_addr constant [21 x i8] c"\0D\0AWWW-Authenticate: \00", align 1, !dbg !218
@.str.22 = private unnamed_addr constant [9 x i8] c"\0D\0ADate: \00", align 1, !dbg !223
@.str.23 = private unnamed_addr constant [12 x i8] c"\0D\0AExpires: \00", align 1, !dbg !228
@.str.24 = private unnamed_addr constant [20 x i8] c"\0D\0AServer: lwan\0D\0A\0D\0A\00\00", align 1, !dbg !233
@lwan_response_send_chunk.last_chunk = internal constant [6 x i8] c"0\0D\0A\0D\0A\00", align 1, !dbg !235
@.str.25 = private unnamed_addr constant [6 x i8] c"%zx\0D\0A\00", align 1, !dbg !394
@.str.26 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1, !dbg !397
@.str.27 = private unnamed_addr constant [18 x i8] c"text/event-stream\00", align 1, !dbg !402
@.str.28 = private unnamed_addr constant [8 x i8] c"event: \00", align 1, !dbg !407
@.str.29 = private unnamed_addr constant [7 x i8] c"data: \00", align 1, !dbg !409
@.str.30 = private unnamed_addr constant [5 x i8] c"\0D\0A\0D\0A\00", align 1, !dbg !411
@.str.31 = private unnamed_addr constant [1111 x i8] c"<html><head><style>body{background:#627d4d;background:-moz-radial-gradient(center,ellipse cover,#627d4d 15%,#1f3b08 100%);background:-webkit-gradient(radial,center center,0px,center center,100%,color-stop(15%,#627d4d),color-stop(100%,#1f3b08));background:-webkit-radial-gradient(center,ellipse cover,#627d4d 15%,#1f3b08 100%);background:-o-radial-gradient(center,ellipse cover,#627d4d 15%,#1f3b08 100%);background:-ms-radial-gradient(center,ellipse cover,#627d4d 15%,#1f3b08 100%);background:radial-gradient(center,ellipse cover,#627d4d 15%,#1f3b08 100%);height:100%;font-family:Arial,'Helvetica Neue',Helvetica,sans-serif;text-align:center;border:0;letter-spacing:-1px;margin:0;padding:0}.sorry{color:#244837;font-size:18px;line-height:24px;text-shadow:01px 1px rgba(255,255,255,0.33)}h1{color:#fff;font-size:30px;font-weight:700;text-shadow:0 1px 4px rgba(0,0,0,0.68);letter-spacing:-1px;margin:0}</style></head><body><table height=\22100%\22 width=\22100%\22><tr><td align=\22center\22 valign=\22middle\22><div><h1>{{short_message}}</h1><div class=\22sorry\22><p>{{long_message}}</p></div></div></td></tr></table></body></html>\00", align 1, !dbg !419
@__FUNCTION__.log_request = private unnamed_addr constant [12 x i8] c"log_request\00", align 1, !dbg !426
@.str.32 = private unnamed_addr constant [30 x i8] c"%s [%s] \22%s %s HTTP/%s\22 %d %s\00", align 1, !dbg !429
@.str.33 = private unnamed_addr constant [4 x i8] c"1.0\00", align 1, !dbg !431
@.str.34 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1, !dbg !436
@.str.35 = private unnamed_addr constant [4 x i8] c"GET\00", align 1, !dbg !438
@.str.36 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1, !dbg !440
@.str.37 = private unnamed_addr constant [5 x i8] c"POST\00", align 1, !dbg !442
@.str.38 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1, !dbg !444

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response_init() #0 !dbg !2 {
  %1 = load ptr, ptr @error_template, align 8, !dbg !477
  %2 = icmp ne ptr %1, null, !dbg !477
  br i1 %2, label %4, label %3, !dbg !480

3:                                                ; preds = %0
  br label %5, !dbg !480

4:                                                ; preds = %0
  call void @__assert_fail(ptr noundef @.str.2, ptr noundef @.str.3, i32 noundef 73, ptr noundef @__PRETTY_FUNCTION__.lwan_response_init) #9, !dbg !477
  unreachable, !dbg !477

5:                                                ; preds = %3
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.3, i32 noundef 75, ptr noundef @__FUNCTION__.lwan_response_init, ptr noundef @.str.4), !dbg !481
  %6 = load ptr, ptr @error_template_str, align 8, !dbg !482
  %7 = call ptr @lwan_tpl_compile_string(ptr noundef %6, ptr noundef @lwan_response_init.error_descriptor), !dbg !483
  store ptr %7, ptr @error_template, align 8, !dbg !484
  %8 = load ptr, ptr @error_template, align 8, !dbg !485
  %9 = icmp ne ptr %8, null, !dbg !485
  %10 = xor i1 %9, true, !dbg !485
  %11 = zext i1 %10 to i32, !dbg !485
  %12 = sext i32 %11 to i64, !dbg !485
  %13 = icmp ne i64 %12, 0, !dbg !485
  br i1 %13, label %14, label %15, !dbg !487

14:                                               ; preds = %5
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.3, i32 noundef 79, ptr noundef @__FUNCTION__.lwan_response_init, ptr noundef @.str.5) #10, !dbg !488
  unreachable, !dbg !488

15:                                               ; preds = %5
  ret void, !dbg !489
}

declare void @lwan_append_str_to_strbuf(ptr noundef, ptr noundef) #1

declare zeroext i1 @lwan_tpl_str_is_empty(ptr noundef) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #1

declare ptr @lwan_tpl_compile_string(ptr noundef, ptr noundef) #1

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response_shutdown() #0 !dbg !490 {
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.3, i32 noundef 85, ptr noundef @__FUNCTION__.lwan_response_shutdown, ptr noundef @.str.6), !dbg !491
  %1 = load ptr, ptr @error_template, align 8, !dbg !492
  %2 = icmp ne ptr %1, null, !dbg !492
  br i1 %2, label %3, label %4, !dbg !495

3:                                                ; preds = %0
  br label %5, !dbg !495

4:                                                ; preds = %0
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.3, i32 noundef 86, ptr noundef @__PRETTY_FUNCTION__.lwan_response_shutdown) #9, !dbg !492
  unreachable, !dbg !492

5:                                                ; preds = %3
  %6 = load ptr, ptr @error_template, align 8, !dbg !496
  call void @lwan_tpl_free(ptr noundef %6), !dbg !497
  ret void, !dbg !498
}

declare void @lwan_tpl_free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response(ptr noundef %0, i32 noundef %1) #0 !dbg !499 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [25 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca [512 x i8], align 16
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca [2 x %struct.iovec], align 16
  store ptr %0, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !502, metadata !DIExpression()), !dbg !503
  store i32 %1, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata ptr %26, metadata !506, metadata !DIExpression()), !dbg !510
  %30 = load ptr, ptr %24, align 8, !dbg !511
  %31 = getelementptr inbounds %struct.lwan_request_t_, ptr %30, i32 0, i32 0, !dbg !513
  %32 = load i32, ptr %31, align 8, !dbg !513
  %33 = and i32 %32, 128, !dbg !514
  %34 = icmp ne i32 %33, 0, !dbg !514
  br i1 %34, label %35, label %56, !dbg !515

35:                                               ; preds = %2
  %36 = load ptr, ptr %24, align 8, !dbg !516
  %37 = getelementptr inbounds %struct.lwan_request_t_, ptr %36, i32 0, i32 8, !dbg !516
  %38 = getelementptr inbounds %struct.lwan_response_t_, ptr %37, i32 0, i32 0, !dbg !516
  %39 = load ptr, ptr %38, align 8, !dbg !516
  %40 = call zeroext i1 @strbuf_reset_length(ptr noundef %39), !dbg !516
  %41 = xor i1 %40, true, !dbg !516
  %42 = zext i1 %41 to i32, !dbg !516
  %43 = sext i32 %42 to i64, !dbg !516
  %44 = icmp ne i64 %43, 0, !dbg !516
  br i1 %44, label %45, label %52, !dbg !519

45:                                               ; preds = %35
  %46 = load ptr, ptr %24, align 8, !dbg !520
  %47 = getelementptr inbounds %struct.lwan_request_t_, ptr %46, i32 0, i32 4, !dbg !521
  %48 = load ptr, ptr %47, align 8, !dbg !521
  %49 = getelementptr inbounds %struct.lwan_connection_t_, ptr %48, i32 0, i32 2, !dbg !522
  %50 = load ptr, ptr %49, align 8, !dbg !522
  %51 = call i32 @coro_yield(ptr noundef %50, i32 noundef -1), !dbg !523
  br label %52, !dbg !523

52:                                               ; preds = %45, %35
  %53 = load ptr, ptr %24, align 8, !dbg !524
  call void @lwan_response_send_chunk(ptr noundef %53), !dbg !525
  %54 = load ptr, ptr %24, align 8, !dbg !526
  %55 = load i32, ptr %25, align 4, !dbg !527
  call void @log_request(ptr noundef %54, i32 noundef %55), !dbg !528
  br label %604, !dbg !529

56:                                               ; preds = %2
  %57 = load ptr, ptr %24, align 8, !dbg !530
  %58 = getelementptr inbounds %struct.lwan_request_t_, ptr %57, i32 0, i32 0, !dbg !530
  %59 = load i32, ptr %58, align 8, !dbg !530
  %60 = and i32 %59, 64, !dbg !530
  %61 = sext i32 %60 to i64, !dbg !530
  %62 = icmp ne i64 %61, 0, !dbg !530
  br i1 %62, label %63, label %64, !dbg !532

63:                                               ; preds = %56
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.3, i32 noundef 136, ptr noundef @__FUNCTION__.lwan_response, ptr noundef @.str.8), !dbg !533
  br label %604, !dbg !535

64:                                               ; preds = %56
  %65 = load ptr, ptr %24, align 8, !dbg !536
  %66 = getelementptr inbounds %struct.lwan_request_t_, ptr %65, i32 0, i32 8, !dbg !536
  %67 = getelementptr inbounds %struct.lwan_response_t_, ptr %66, i32 0, i32 1, !dbg !536
  %68 = load ptr, ptr %67, align 8, !dbg !536
  %69 = icmp ne ptr %68, null, !dbg !536
  %70 = xor i1 %69, true, !dbg !536
  %71 = zext i1 %70 to i32, !dbg !536
  %72 = sext i32 %71 to i64, !dbg !536
  %73 = icmp ne i64 %72, 0, !dbg !536
  br i1 %73, label %74, label %77, !dbg !538

74:                                               ; preds = %64
  %75 = load ptr, ptr %24, align 8, !dbg !539
  %76 = load i32, ptr %25, align 4, !dbg !541
  call void @lwan_default_response(ptr noundef %75, i32 noundef %76), !dbg !542
  br label %604, !dbg !543

77:                                               ; preds = %64
  %78 = load ptr, ptr %24, align 8, !dbg !544
  %79 = load i32, ptr %25, align 4, !dbg !545
  call void @log_request(ptr noundef %78, i32 noundef %79), !dbg !546
  %80 = load ptr, ptr %24, align 8, !dbg !547
  %81 = getelementptr inbounds %struct.lwan_request_t_, ptr %80, i32 0, i32 8, !dbg !549
  %82 = getelementptr inbounds %struct.lwan_response_t_, ptr %81, i32 0, i32 4, !dbg !550
  %83 = getelementptr inbounds %struct.anon.5, ptr %82, i32 0, i32 0, !dbg !551
  %84 = load ptr, ptr %83, align 8, !dbg !551
  %85 = icmp ne ptr %84, null, !dbg !547
  br i1 %85, label %86, label %109, !dbg !552

86:                                               ; preds = %77
  call void @llvm.dbg.declare(metadata ptr %27, metadata !553, metadata !DIExpression()), !dbg !555
  %87 = load ptr, ptr %24, align 8, !dbg !556
  %88 = getelementptr inbounds %struct.lwan_request_t_, ptr %87, i32 0, i32 8, !dbg !557
  %89 = getelementptr inbounds %struct.lwan_response_t_, ptr %88, i32 0, i32 4, !dbg !558
  %90 = getelementptr inbounds %struct.anon.5, ptr %89, i32 0, i32 0, !dbg !559
  %91 = load ptr, ptr %90, align 8, !dbg !559
  %92 = load ptr, ptr %24, align 8, !dbg !560
  %93 = load ptr, ptr %24, align 8, !dbg !561
  %94 = getelementptr inbounds %struct.lwan_request_t_, ptr %93, i32 0, i32 8, !dbg !562
  %95 = getelementptr inbounds %struct.lwan_response_t_, ptr %94, i32 0, i32 4, !dbg !563
  %96 = getelementptr inbounds %struct.anon.5, ptr %95, i32 0, i32 1, !dbg !564
  %97 = load ptr, ptr %96, align 8, !dbg !564
  %98 = call i32 %91(ptr noundef %92, ptr noundef %97), !dbg !556
  store i32 %98, ptr %27, align 4, !dbg !565
  %99 = load ptr, ptr %24, align 8, !dbg !566
  %100 = getelementptr inbounds %struct.lwan_request_t_, ptr %99, i32 0, i32 8, !dbg !567
  %101 = getelementptr inbounds %struct.lwan_response_t_, ptr %100, i32 0, i32 4, !dbg !568
  %102 = getelementptr inbounds %struct.anon.5, ptr %101, i32 0, i32 0, !dbg !569
  store ptr null, ptr %102, align 8, !dbg !570
  %103 = load i32, ptr %27, align 4, !dbg !571
  %104 = icmp uge i32 %103, 400, !dbg !573
  br i1 %104, label %105, label %108, !dbg !574

105:                                              ; preds = %86
  %106 = load ptr, ptr %24, align 8, !dbg !575
  %107 = load i32, ptr %27, align 4, !dbg !576
  call void @lwan_default_response(ptr noundef %106, i32 noundef %107), !dbg !577
  br label %108, !dbg !577

108:                                              ; preds = %105, %86
  br label %604, !dbg !578

109:                                              ; preds = %77
  call void @llvm.dbg.declare(metadata ptr %28, metadata !579, metadata !DIExpression()), !dbg !580
  %110 = load ptr, ptr %24, align 8, !dbg !581
  %111 = load i32, ptr %25, align 4, !dbg !582
  %112 = getelementptr inbounds [512 x i8], ptr %26, i64 0, i64 0, !dbg !583
  store ptr %110, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !584, metadata !DIExpression()), !dbg !588
  store i32 %111, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !591
  store ptr %112, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !592, metadata !DIExpression()), !dbg !593
  store i64 512, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !594, metadata !DIExpression()), !dbg !595
  call void @llvm.dbg.declare(metadata ptr %8, metadata !596, metadata !DIExpression()), !dbg !597
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !599
  %113 = load ptr, ptr %6, align 8, !dbg !600
  %114 = load i64, ptr %7, align 8, !dbg !601
  %115 = getelementptr inbounds i8, ptr %113, i64 %114, !dbg !602
  store ptr %115, ptr %9, align 8, !dbg !599
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !604
  call void @llvm.dbg.declare(metadata ptr %11, metadata !605, metadata !DIExpression()), !dbg !606
  store i8 0, ptr %11, align 1, !dbg !606
  call void @llvm.dbg.declare(metadata ptr %12, metadata !607, metadata !DIExpression()), !dbg !608
  store i8 0, ptr %12, align 1, !dbg !608
  %116 = load ptr, ptr %6, align 8, !dbg !609
  store ptr %116, ptr %8, align 8, !dbg !610
  %117 = load ptr, ptr %4, align 8, !dbg !611
  %118 = load i32, ptr %117, align 8, !dbg !613
  %119 = and i32 %118, 32, !dbg !614
  %120 = icmp ne i32 %119, 0, !dbg !614
  br i1 %120, label %121, label %132, !dbg !615

121:                                              ; preds = %109
  %122 = load ptr, ptr %8, align 8, !dbg !616
  %123 = getelementptr inbounds i8, ptr %122, i64 9, !dbg !616
  %124 = load ptr, ptr %9, align 8, !dbg !616
  %125 = icmp uge ptr %123, %124, !dbg !616
  %126 = zext i1 %125 to i32, !dbg !616
  %127 = sext i32 %126 to i64, !dbg !616
  br i1 %125, label %128, label %129, !dbg !619

128:                                              ; preds = %121
  store i64 0, ptr %3, align 8, !dbg !616
  br label %558, !dbg !616

129:                                              ; preds = %121
  %130 = load ptr, ptr %8, align 8, !dbg !619
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 @.str.10, i64 9, i1 false), !dbg !619
  %131 = getelementptr inbounds i8, ptr %130, i64 9, !dbg !619
  store ptr %131, ptr %8, align 8, !dbg !619
  br label %143, !dbg !619

132:                                              ; preds = %109
  %133 = load ptr, ptr %8, align 8, !dbg !620
  %134 = getelementptr inbounds i8, ptr %133, i64 9, !dbg !620
  %135 = load ptr, ptr %9, align 8, !dbg !620
  %136 = icmp uge ptr %134, %135, !dbg !620
  %137 = zext i1 %136 to i32, !dbg !620
  %138 = sext i32 %137 to i64, !dbg !620
  br i1 %136, label %139, label %140, !dbg !623

139:                                              ; preds = %132
  store i64 0, ptr %3, align 8, !dbg !620
  br label %558, !dbg !620

140:                                              ; preds = %132
  %141 = load ptr, ptr %8, align 8, !dbg !623
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 @.str.11, i64 9, i1 false), !dbg !623
  %142 = getelementptr inbounds i8, ptr %141, i64 9, !dbg !623
  store ptr %142, ptr %8, align 8, !dbg !623
  br label %143

143:                                              ; preds = %140, %129
  call void @llvm.dbg.declare(metadata ptr %13, metadata !624, metadata !DIExpression()), !dbg !626
  %144 = load i32, ptr %5, align 4, !dbg !626
  %145 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %144) #11, !dbg !626
  %146 = call i64 @strlen(ptr noundef %145) #11, !dbg !626
  store i64 %146, ptr %13, align 8, !dbg !626
  %147 = load ptr, ptr %8, align 8, !dbg !627
  %148 = load i64, ptr %13, align 8, !dbg !627
  %149 = getelementptr inbounds i8, ptr %147, i64 %148, !dbg !627
  %150 = load ptr, ptr %9, align 8, !dbg !627
  %151 = icmp uge ptr %149, %150, !dbg !627
  %152 = zext i1 %151 to i32, !dbg !627
  %153 = sext i32 %152 to i64, !dbg !627
  br i1 %151, label %154, label %155, !dbg !630

154:                                              ; preds = %143
  store i64 0, ptr %3, align 8, !dbg !627
  br label %558, !dbg !627

155:                                              ; preds = %143
  %156 = load ptr, ptr %8, align 8, !dbg !630
  %157 = load i32, ptr %5, align 4, !dbg !630
  %158 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %157) #11, !dbg !630
  %159 = load i64, ptr %13, align 8, !dbg !630
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %156, ptr align 1 %158, i64 %159, i1 false), !dbg !630
  %160 = getelementptr inbounds i8, ptr %156, i64 %159, !dbg !630
  store ptr %160, ptr %8, align 8, !dbg !630
  %161 = load ptr, ptr %4, align 8, !dbg !631
  %162 = load i32, ptr %161, align 8, !dbg !633
  %163 = and i32 %162, 128, !dbg !634
  %164 = icmp ne i32 %163, 0, !dbg !634
  br i1 %164, label %165, label %176, !dbg !635

165:                                              ; preds = %155
  %166 = load ptr, ptr %8, align 8, !dbg !636
  %167 = getelementptr inbounds i8, ptr %166, i64 28, !dbg !636
  %168 = load ptr, ptr %9, align 8, !dbg !636
  %169 = icmp uge ptr %167, %168, !dbg !636
  %170 = zext i1 %169 to i32, !dbg !636
  %171 = sext i32 %170 to i64, !dbg !636
  br i1 %169, label %172, label %173, !dbg !640

172:                                              ; preds = %165
  store i64 0, ptr %3, align 8, !dbg !636
  br label %558, !dbg !636

173:                                              ; preds = %165
  %174 = load ptr, ptr %8, align 8, !dbg !640
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %174, ptr align 1 @.str.12, i64 28, i1 false), !dbg !640
  %175 = getelementptr inbounds i8, ptr %174, i64 28, !dbg !640
  store ptr %175, ptr %8, align 8, !dbg !640
  br label %258, !dbg !641

176:                                              ; preds = %155
  %177 = load ptr, ptr %4, align 8, !dbg !642
  %178 = load i32, ptr %177, align 8, !dbg !644
  %179 = and i32 %178, 256, !dbg !645
  %180 = icmp ne i32 %179, 0, !dbg !645
  br i1 %180, label %181, label %182, !dbg !646

181:                                              ; preds = %176
  br label %257, !dbg !647

182:                                              ; preds = %176
  %183 = load ptr, ptr %8, align 8, !dbg !649
  %184 = getelementptr inbounds i8, ptr %183, i64 18, !dbg !649
  %185 = load ptr, ptr %9, align 8, !dbg !649
  %186 = icmp uge ptr %184, %185, !dbg !649
  %187 = zext i1 %186 to i32, !dbg !649
  %188 = sext i32 %187 to i64, !dbg !649
  br i1 %186, label %189, label %190, !dbg !653

189:                                              ; preds = %182
  store i64 0, ptr %3, align 8, !dbg !649
  br label %558, !dbg !649

190:                                              ; preds = %182
  %191 = load ptr, ptr %8, align 8, !dbg !653
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %191, ptr align 1 @.str.13, i64 18, i1 false), !dbg !653
  %192 = getelementptr inbounds i8, ptr %191, i64 18, !dbg !653
  store ptr %192, ptr %8, align 8, !dbg !653
  %193 = load ptr, ptr %4, align 8, !dbg !654
  %194 = getelementptr inbounds %struct.lwan_request_t_, ptr %193, i32 0, i32 8, !dbg !656
  %195 = getelementptr inbounds %struct.lwan_response_t_, ptr %194, i32 0, i32 4, !dbg !657
  %196 = load ptr, ptr %195, align 8, !dbg !658
  %197 = icmp ne ptr %196, null, !dbg !654
  br i1 %197, label %198, label %226, !dbg !659

198:                                              ; preds = %190
  call void @llvm.dbg.declare(metadata ptr %14, metadata !660, metadata !DIExpression()), !dbg !662
  call void @llvm.dbg.declare(metadata ptr %15, metadata !663, metadata !DIExpression()), !dbg !662
  %199 = load ptr, ptr %4, align 8, !dbg !662
  %200 = getelementptr inbounds %struct.lwan_request_t_, ptr %199, i32 0, i32 8, !dbg !662
  %201 = getelementptr inbounds %struct.lwan_response_t_, ptr %200, i32 0, i32 2, !dbg !662
  %202 = load i64, ptr %201, align 8, !dbg !662
  %203 = call ptr @uint_to_string(i64 noundef %202, ptr noundef %10, ptr noundef %14) #12, !dbg !662
  store ptr %203, ptr %15, align 8, !dbg !662
  %204 = load ptr, ptr %8, align 8, !dbg !664
  %205 = load i64, ptr %14, align 8, !dbg !664
  %206 = getelementptr inbounds i8, ptr %204, i64 %205, !dbg !664
  %207 = load ptr, ptr %9, align 8, !dbg !664
  %208 = icmp uge ptr %206, %207, !dbg !664
  %209 = zext i1 %208 to i32, !dbg !664
  %210 = sext i32 %209 to i64, !dbg !664
  br i1 %208, label %211, label %212, !dbg !662

211:                                              ; preds = %198
  store i64 0, ptr %3, align 8, !dbg !664
  br label %558, !dbg !664

212:                                              ; preds = %198
  %213 = load ptr, ptr %8, align 8, !dbg !666
  %214 = load i64, ptr %14, align 8, !dbg !666
  %215 = getelementptr inbounds i8, ptr %213, i64 %214, !dbg !666
  %216 = load ptr, ptr %9, align 8, !dbg !666
  %217 = icmp uge ptr %215, %216, !dbg !666
  %218 = zext i1 %217 to i32, !dbg !666
  %219 = sext i32 %218 to i64, !dbg !666
  br i1 %217, label %220, label %221, !dbg !669

220:                                              ; preds = %212
  store i64 0, ptr %3, align 8, !dbg !666
  br label %558, !dbg !666

221:                                              ; preds = %212
  %222 = load ptr, ptr %8, align 8, !dbg !669
  %223 = load ptr, ptr %15, align 8, !dbg !669
  %224 = load i64, ptr %14, align 8, !dbg !669
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %222, ptr align 1 %223, i64 %224, i1 false), !dbg !669
  %225 = getelementptr inbounds i8, ptr %222, i64 %224, !dbg !669
  store ptr %225, ptr %8, align 8, !dbg !669
  br label %256, !dbg !662

226:                                              ; preds = %190
  call void @llvm.dbg.declare(metadata ptr %16, metadata !670, metadata !DIExpression()), !dbg !672
  call void @llvm.dbg.declare(metadata ptr %17, metadata !673, metadata !DIExpression()), !dbg !672
  %227 = load ptr, ptr %4, align 8, !dbg !672
  %228 = getelementptr inbounds %struct.lwan_request_t_, ptr %227, i32 0, i32 8, !dbg !672
  %229 = load ptr, ptr %228, align 8, !dbg !672
  %230 = getelementptr inbounds %struct.strbuf_t_, ptr %229, i32 0, i32 1, !dbg !672
  %231 = getelementptr inbounds %struct.anon, ptr %230, i32 0, i32 1, !dbg !672
  %232 = load i64, ptr %231, align 8, !dbg !672
  %233 = call ptr @uint_to_string(i64 noundef %232, ptr noundef %10, ptr noundef %16) #12, !dbg !672
  store ptr %233, ptr %17, align 8, !dbg !672
  %234 = load ptr, ptr %8, align 8, !dbg !674
  %235 = load i64, ptr %16, align 8, !dbg !674
  %236 = getelementptr inbounds i8, ptr %234, i64 %235, !dbg !674
  %237 = load ptr, ptr %9, align 8, !dbg !674
  %238 = icmp uge ptr %236, %237, !dbg !674
  %239 = zext i1 %238 to i32, !dbg !674
  %240 = sext i32 %239 to i64, !dbg !674
  br i1 %238, label %241, label %242, !dbg !672

241:                                              ; preds = %226
  store i64 0, ptr %3, align 8, !dbg !674
  br label %558, !dbg !674

242:                                              ; preds = %226
  %243 = load ptr, ptr %8, align 8, !dbg !676
  %244 = load i64, ptr %16, align 8, !dbg !676
  %245 = getelementptr inbounds i8, ptr %243, i64 %244, !dbg !676
  %246 = load ptr, ptr %9, align 8, !dbg !676
  %247 = icmp uge ptr %245, %246, !dbg !676
  %248 = zext i1 %247 to i32, !dbg !676
  %249 = sext i32 %248 to i64, !dbg !676
  br i1 %247, label %250, label %251, !dbg !679

250:                                              ; preds = %242
  store i64 0, ptr %3, align 8, !dbg !676
  br label %558, !dbg !676

251:                                              ; preds = %242
  %252 = load ptr, ptr %8, align 8, !dbg !679
  %253 = load ptr, ptr %17, align 8, !dbg !679
  %254 = load i64, ptr %16, align 8, !dbg !679
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %252, ptr align 1 %253, i64 %254, i1 false), !dbg !679
  %255 = getelementptr inbounds i8, ptr %252, i64 %254, !dbg !679
  store ptr %255, ptr %8, align 8, !dbg !679
  br label %256

256:                                              ; preds = %251, %221
  br label %257

257:                                              ; preds = %256, %181
  br label %258

258:                                              ; preds = %257, %173
  %259 = load ptr, ptr %8, align 8, !dbg !680
  %260 = getelementptr inbounds i8, ptr %259, i64 16, !dbg !680
  %261 = load ptr, ptr %9, align 8, !dbg !680
  %262 = icmp uge ptr %260, %261, !dbg !680
  %263 = zext i1 %262 to i32, !dbg !680
  %264 = sext i32 %263 to i64, !dbg !680
  br i1 %262, label %265, label %266, !dbg !683

265:                                              ; preds = %258
  store i64 0, ptr %3, align 8, !dbg !680
  br label %558, !dbg !680

266:                                              ; preds = %258
  %267 = load ptr, ptr %8, align 8, !dbg !683
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %267, ptr align 1 @.str.14, i64 16, i1 false), !dbg !683
  %268 = getelementptr inbounds i8, ptr %267, i64 16, !dbg !683
  store ptr %268, ptr %8, align 8, !dbg !683
  call void @llvm.dbg.declare(metadata ptr %18, metadata !684, metadata !DIExpression()), !dbg !686
  %269 = load ptr, ptr %4, align 8, !dbg !686
  %270 = getelementptr inbounds %struct.lwan_request_t_, ptr %269, i32 0, i32 8, !dbg !686
  %271 = getelementptr inbounds %struct.lwan_response_t_, ptr %270, i32 0, i32 1, !dbg !686
  %272 = load ptr, ptr %271, align 8, !dbg !686
  %273 = call i64 @strlen(ptr noundef %272) #11, !dbg !686
  store i64 %273, ptr %18, align 8, !dbg !686
  %274 = load ptr, ptr %8, align 8, !dbg !687
  %275 = load i64, ptr %18, align 8, !dbg !687
  %276 = getelementptr inbounds i8, ptr %274, i64 %275, !dbg !687
  %277 = load ptr, ptr %9, align 8, !dbg !687
  %278 = icmp uge ptr %276, %277, !dbg !687
  %279 = zext i1 %278 to i32, !dbg !687
  %280 = sext i32 %279 to i64, !dbg !687
  br i1 %278, label %281, label %282, !dbg !690

281:                                              ; preds = %266
  store i64 0, ptr %3, align 8, !dbg !687
  br label %558, !dbg !687

282:                                              ; preds = %266
  %283 = load ptr, ptr %8, align 8, !dbg !690
  %284 = load ptr, ptr %4, align 8, !dbg !690
  %285 = getelementptr inbounds %struct.lwan_request_t_, ptr %284, i32 0, i32 8, !dbg !690
  %286 = getelementptr inbounds %struct.lwan_response_t_, ptr %285, i32 0, i32 1, !dbg !690
  %287 = load ptr, ptr %286, align 8, !dbg !690
  %288 = load i64, ptr %18, align 8, !dbg !690
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %283, ptr align 1 %287, i64 %288, i1 false), !dbg !690
  %289 = getelementptr inbounds i8, ptr %283, i64 %288, !dbg !690
  store ptr %289, ptr %8, align 8, !dbg !690
  %290 = load ptr, ptr %4, align 8, !dbg !691
  %291 = getelementptr inbounds %struct.lwan_request_t_, ptr %290, i32 0, i32 4, !dbg !693
  %292 = load ptr, ptr %291, align 8, !dbg !693
  %293 = load i32, ptr %292, align 8, !dbg !694
  %294 = and i32 %293, 1, !dbg !695
  %295 = icmp ne i32 %294, 0, !dbg !695
  br i1 %295, label %296, label %307, !dbg !696

296:                                              ; preds = %282
  %297 = load ptr, ptr %8, align 8, !dbg !697
  %298 = getelementptr inbounds i8, ptr %297, i64 24, !dbg !697
  %299 = load ptr, ptr %9, align 8, !dbg !697
  %300 = icmp uge ptr %298, %299, !dbg !697
  %301 = zext i1 %300 to i32, !dbg !697
  %302 = sext i32 %301 to i64, !dbg !697
  br i1 %300, label %303, label %304, !dbg !700

303:                                              ; preds = %296
  store i64 0, ptr %3, align 8, !dbg !697
  br label %558, !dbg !697

304:                                              ; preds = %296
  %305 = load ptr, ptr %8, align 8, !dbg !700
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %305, ptr align 1 @.str.15, i64 24, i1 false), !dbg !700
  %306 = getelementptr inbounds i8, ptr %305, i64 24, !dbg !700
  store ptr %306, ptr %8, align 8, !dbg !700
  br label %318, !dbg !700

307:                                              ; preds = %282
  %308 = load ptr, ptr %8, align 8, !dbg !701
  %309 = getelementptr inbounds i8, ptr %308, i64 19, !dbg !701
  %310 = load ptr, ptr %9, align 8, !dbg !701
  %311 = icmp uge ptr %309, %310, !dbg !701
  %312 = zext i1 %311 to i32, !dbg !701
  %313 = sext i32 %312 to i64, !dbg !701
  br i1 %311, label %314, label %315, !dbg !704

314:                                              ; preds = %307
  store i64 0, ptr %3, align 8, !dbg !701
  br label %558, !dbg !701

315:                                              ; preds = %307
  %316 = load ptr, ptr %8, align 8, !dbg !704
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %316, ptr align 1 @.str.16, i64 19, i1 false), !dbg !704
  %317 = getelementptr inbounds i8, ptr %316, i64 19, !dbg !704
  store ptr %317, ptr %8, align 8, !dbg !704
  br label %318

318:                                              ; preds = %315, %304
  %319 = load i32, ptr %5, align 4, !dbg !705
  %320 = icmp ult i32 %319, 400, !dbg !707
  br i1 %320, label %321, label %420, !dbg !708

321:                                              ; preds = %318
  %322 = load ptr, ptr %4, align 8, !dbg !709
  %323 = getelementptr inbounds %struct.lwan_request_t_, ptr %322, i32 0, i32 8, !dbg !710
  %324 = getelementptr inbounds %struct.lwan_response_t_, ptr %323, i32 0, i32 3, !dbg !711
  %325 = load ptr, ptr %324, align 8, !dbg !711
  %326 = icmp ne ptr %325, null, !dbg !709
  br i1 %326, label %327, label %420, !dbg !712

327:                                              ; preds = %321
  call void @llvm.dbg.declare(metadata ptr %19, metadata !713, metadata !DIExpression()), !dbg !715
  %328 = load ptr, ptr %4, align 8, !dbg !716
  %329 = getelementptr inbounds %struct.lwan_request_t_, ptr %328, i32 0, i32 8, !dbg !718
  %330 = getelementptr inbounds %struct.lwan_response_t_, ptr %329, i32 0, i32 3, !dbg !719
  %331 = load ptr, ptr %330, align 8, !dbg !719
  store ptr %331, ptr %19, align 8, !dbg !720
  br label %332, !dbg !721

332:                                              ; preds = %416, %327
  %333 = load ptr, ptr %19, align 8, !dbg !722
  %334 = load ptr, ptr %333, align 8, !dbg !724
  %335 = icmp ne ptr %334, null, !dbg !725
  br i1 %335, label %336, label %419, !dbg !725

336:                                              ; preds = %332
  %337 = load ptr, ptr %19, align 8, !dbg !726
  %338 = load ptr, ptr %337, align 8, !dbg !726
  %339 = call i32 @strcmp(ptr noundef %338, ptr noundef @.str.17) #11, !dbg !726
  %340 = icmp ne i32 %339, 0, !dbg !726
  %341 = xor i1 %340, true, !dbg !726
  %342 = zext i1 %341 to i32, !dbg !726
  %343 = sext i32 %342 to i64, !dbg !726
  br i1 %341, label %344, label %345, !dbg !729

344:                                              ; preds = %336
  br label %416, !dbg !730

345:                                              ; preds = %336
  %346 = load ptr, ptr %19, align 8, !dbg !731
  %347 = load ptr, ptr %346, align 8, !dbg !731
  %348 = call i32 @strcmp(ptr noundef %347, ptr noundef @.str.18) #11, !dbg !731
  %349 = icmp ne i32 %348, 0, !dbg !731
  %350 = xor i1 %349, true, !dbg !731
  %351 = zext i1 %350 to i32, !dbg !731
  %352 = sext i32 %351 to i64, !dbg !731
  br i1 %350, label %353, label %354, !dbg !733

353:                                              ; preds = %345
  store i8 1, ptr %11, align 1, !dbg !734
  br label %354, !dbg !735

354:                                              ; preds = %353, %345
  %355 = load ptr, ptr %19, align 8, !dbg !736
  %356 = load ptr, ptr %355, align 8, !dbg !736
  %357 = call i32 @strcmp(ptr noundef %356, ptr noundef @.str.19) #11, !dbg !736
  %358 = icmp ne i32 %357, 0, !dbg !736
  %359 = xor i1 %358, true, !dbg !736
  %360 = zext i1 %359 to i32, !dbg !736
  %361 = sext i32 %360 to i64, !dbg !736
  br i1 %359, label %362, label %363, !dbg !738

362:                                              ; preds = %354
  store i8 1, ptr %12, align 1, !dbg !739
  br label %363, !dbg !740

363:                                              ; preds = %362, %354
  %364 = load ptr, ptr %8, align 8, !dbg !741
  %365 = getelementptr inbounds i8, ptr %364, i64 4, !dbg !741
  %366 = load ptr, ptr %9, align 8, !dbg !741
  %367 = icmp uge ptr %365, %366, !dbg !741
  %368 = zext i1 %367 to i32, !dbg !741
  %369 = sext i32 %368 to i64, !dbg !741
  br i1 %367, label %370, label %371, !dbg !743

370:                                              ; preds = %363
  store i64 0, ptr %3, align 8, !dbg !741
  br label %558, !dbg !741

371:                                              ; preds = %363
  %372 = load ptr, ptr %8, align 8, !dbg !744
  %373 = getelementptr inbounds i8, ptr %372, i32 1, !dbg !744
  store ptr %373, ptr %8, align 8, !dbg !744
  store i8 13, ptr %372, align 1, !dbg !744
  %374 = load ptr, ptr %8, align 8, !dbg !745
  %375 = getelementptr inbounds i8, ptr %374, i32 1, !dbg !745
  store ptr %375, ptr %8, align 8, !dbg !745
  store i8 10, ptr %374, align 1, !dbg !745
  call void @llvm.dbg.declare(metadata ptr %20, metadata !746, metadata !DIExpression()), !dbg !748
  %376 = load ptr, ptr %19, align 8, !dbg !748
  %377 = load ptr, ptr %376, align 8, !dbg !748
  %378 = call i64 @strlen(ptr noundef %377) #11, !dbg !748
  store i64 %378, ptr %20, align 8, !dbg !748
  %379 = load ptr, ptr %8, align 8, !dbg !749
  %380 = load i64, ptr %20, align 8, !dbg !749
  %381 = getelementptr inbounds i8, ptr %379, i64 %380, !dbg !749
  %382 = load ptr, ptr %9, align 8, !dbg !749
  %383 = icmp uge ptr %381, %382, !dbg !749
  %384 = zext i1 %383 to i32, !dbg !749
  %385 = sext i32 %384 to i64, !dbg !749
  br i1 %383, label %386, label %387, !dbg !752

386:                                              ; preds = %371
  store i64 0, ptr %3, align 8, !dbg !749
  br label %558, !dbg !749

387:                                              ; preds = %371
  %388 = load ptr, ptr %8, align 8, !dbg !752
  %389 = load ptr, ptr %19, align 8, !dbg !752
  %390 = load ptr, ptr %389, align 8, !dbg !752
  %391 = load i64, ptr %20, align 8, !dbg !752
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %388, ptr align 1 %390, i64 %391, i1 false), !dbg !752
  %392 = getelementptr inbounds i8, ptr %388, i64 %391, !dbg !752
  store ptr %392, ptr %8, align 8, !dbg !752
  %393 = load ptr, ptr %8, align 8, !dbg !753
  %394 = getelementptr inbounds i8, ptr %393, i32 1, !dbg !753
  store ptr %394, ptr %8, align 8, !dbg !753
  store i8 58, ptr %393, align 1, !dbg !753
  %395 = load ptr, ptr %8, align 8, !dbg !754
  %396 = getelementptr inbounds i8, ptr %395, i32 1, !dbg !754
  store ptr %396, ptr %8, align 8, !dbg !754
  store i8 32, ptr %395, align 1, !dbg !754
  call void @llvm.dbg.declare(metadata ptr %21, metadata !755, metadata !DIExpression()), !dbg !757
  %397 = load ptr, ptr %19, align 8, !dbg !757
  %398 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %397, i32 0, i32 1, !dbg !757
  %399 = load ptr, ptr %398, align 8, !dbg !757
  %400 = call i64 @strlen(ptr noundef %399) #11, !dbg !757
  store i64 %400, ptr %21, align 8, !dbg !757
  %401 = load ptr, ptr %8, align 8, !dbg !758
  %402 = load i64, ptr %21, align 8, !dbg !758
  %403 = getelementptr inbounds i8, ptr %401, i64 %402, !dbg !758
  %404 = load ptr, ptr %9, align 8, !dbg !758
  %405 = icmp uge ptr %403, %404, !dbg !758
  %406 = zext i1 %405 to i32, !dbg !758
  %407 = sext i32 %406 to i64, !dbg !758
  br i1 %405, label %408, label %409, !dbg !761

408:                                              ; preds = %387
  store i64 0, ptr %3, align 8, !dbg !758
  br label %558, !dbg !758

409:                                              ; preds = %387
  %410 = load ptr, ptr %8, align 8, !dbg !761
  %411 = load ptr, ptr %19, align 8, !dbg !761
  %412 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %411, i32 0, i32 1, !dbg !761
  %413 = load ptr, ptr %412, align 8, !dbg !761
  %414 = load i64, ptr %21, align 8, !dbg !761
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %410, ptr align 1 %413, i64 %414, i1 false), !dbg !761
  %415 = getelementptr inbounds i8, ptr %410, i64 %414, !dbg !761
  store ptr %415, ptr %8, align 8, !dbg !761
  br label %416, !dbg !762

416:                                              ; preds = %409, %344
  %417 = load ptr, ptr %19, align 8, !dbg !763
  %418 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %417, i32 1, !dbg !763
  store ptr %418, ptr %19, align 8, !dbg !763
  br label %332, !dbg !764, !llvm.loop !765

419:                                              ; preds = %332
  br label %472, !dbg !768

420:                                              ; preds = %321, %318
  %421 = load i32, ptr %5, align 4, !dbg !769
  %422 = icmp eq i32 %421, 401, !dbg !771
  br i1 %422, label %423, label %471, !dbg !772

423:                                              ; preds = %420
  call void @llvm.dbg.declare(metadata ptr %22, metadata !773, metadata !DIExpression()), !dbg !775
  %424 = load ptr, ptr %4, align 8, !dbg !776
  %425 = getelementptr inbounds %struct.lwan_request_t_, ptr %424, i32 0, i32 8, !dbg !778
  %426 = getelementptr inbounds %struct.lwan_response_t_, ptr %425, i32 0, i32 3, !dbg !779
  %427 = load ptr, ptr %426, align 8, !dbg !779
  store ptr %427, ptr %22, align 8, !dbg !780
  br label %428, !dbg !781

428:                                              ; preds = %467, %423
  %429 = load ptr, ptr %22, align 8, !dbg !782
  %430 = load ptr, ptr %429, align 8, !dbg !784
  %431 = icmp ne ptr %430, null, !dbg !785
  br i1 %431, label %432, label %470, !dbg !785

432:                                              ; preds = %428
  %433 = load ptr, ptr %22, align 8, !dbg !786
  %434 = load ptr, ptr %433, align 8, !dbg !789
  %435 = call i32 @strcmp(ptr noundef %434, ptr noundef @.str.20) #11, !dbg !790
  %436 = icmp ne i32 %435, 0, !dbg !790
  br i1 %436, label %467, label %437, !dbg !791

437:                                              ; preds = %432
  %438 = load ptr, ptr %8, align 8, !dbg !792
  %439 = getelementptr inbounds i8, ptr %438, i64 20, !dbg !792
  %440 = load ptr, ptr %9, align 8, !dbg !792
  %441 = icmp uge ptr %439, %440, !dbg !792
  %442 = zext i1 %441 to i32, !dbg !792
  %443 = sext i32 %442 to i64, !dbg !792
  br i1 %441, label %444, label %445, !dbg !796

444:                                              ; preds = %437
  store i64 0, ptr %3, align 8, !dbg !792
  br label %558, !dbg !792

445:                                              ; preds = %437
  %446 = load ptr, ptr %8, align 8, !dbg !796
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %446, ptr align 1 @.str.21, i64 20, i1 false), !dbg !796
  %447 = getelementptr inbounds i8, ptr %446, i64 20, !dbg !796
  store ptr %447, ptr %8, align 8, !dbg !796
  call void @llvm.dbg.declare(metadata ptr %23, metadata !797, metadata !DIExpression()), !dbg !799
  %448 = load ptr, ptr %22, align 8, !dbg !799
  %449 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %448, i32 0, i32 1, !dbg !799
  %450 = load ptr, ptr %449, align 8, !dbg !799
  %451 = call i64 @strlen(ptr noundef %450) #11, !dbg !799
  store i64 %451, ptr %23, align 8, !dbg !799
  %452 = load ptr, ptr %8, align 8, !dbg !800
  %453 = load i64, ptr %23, align 8, !dbg !800
  %454 = getelementptr inbounds i8, ptr %452, i64 %453, !dbg !800
  %455 = load ptr, ptr %9, align 8, !dbg !800
  %456 = icmp uge ptr %454, %455, !dbg !800
  %457 = zext i1 %456 to i32, !dbg !800
  %458 = sext i32 %457 to i64, !dbg !800
  br i1 %456, label %459, label %460, !dbg !803

459:                                              ; preds = %445
  store i64 0, ptr %3, align 8, !dbg !800
  br label %558, !dbg !800

460:                                              ; preds = %445
  %461 = load ptr, ptr %8, align 8, !dbg !803
  %462 = load ptr, ptr %22, align 8, !dbg !803
  %463 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %462, i32 0, i32 1, !dbg !803
  %464 = load ptr, ptr %463, align 8, !dbg !803
  %465 = load i64, ptr %23, align 8, !dbg !803
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %461, ptr align 1 %464, i64 %465, i1 false), !dbg !803
  %466 = getelementptr inbounds i8, ptr %461, i64 %465, !dbg !803
  store ptr %466, ptr %8, align 8, !dbg !803
  br label %470, !dbg !804

467:                                              ; preds = %432
  %468 = load ptr, ptr %22, align 8, !dbg !805
  %469 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %468, i32 1, !dbg !805
  store ptr %469, ptr %22, align 8, !dbg !805
  br label %428, !dbg !806, !llvm.loop !807

470:                                              ; preds = %460, %428
  br label %471, !dbg !809

471:                                              ; preds = %470, %420
  br label %472

472:                                              ; preds = %471, %419
  %473 = load i8, ptr %11, align 1, !dbg !810
  %474 = trunc i8 %473 to i1, !dbg !810
  %475 = xor i1 %474, true, !dbg !810
  %476 = xor i1 %474, true, !dbg !810
  %477 = zext i1 %476 to i32, !dbg !810
  %478 = sext i32 %477 to i64, !dbg !810
  br i1 %476, label %479, label %506, !dbg !812

479:                                              ; preds = %472
  %480 = load ptr, ptr %8, align 8, !dbg !813
  %481 = getelementptr inbounds i8, ptr %480, i64 8, !dbg !813
  %482 = load ptr, ptr %9, align 8, !dbg !813
  %483 = icmp uge ptr %481, %482, !dbg !813
  %484 = zext i1 %483 to i32, !dbg !813
  %485 = sext i32 %484 to i64, !dbg !813
  br i1 %483, label %486, label %487, !dbg !817

486:                                              ; preds = %479
  store i64 0, ptr %3, align 8, !dbg !813
  br label %558, !dbg !813

487:                                              ; preds = %479
  %488 = load ptr, ptr %8, align 8, !dbg !817
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %488, ptr align 1 @.str.22, i64 8, i1 false), !dbg !817
  %489 = getelementptr inbounds i8, ptr %488, i64 8, !dbg !817
  store ptr %489, ptr %8, align 8, !dbg !817
  %490 = load ptr, ptr %8, align 8, !dbg !818
  %491 = getelementptr inbounds i8, ptr %490, i64 29, !dbg !818
  %492 = load ptr, ptr %9, align 8, !dbg !818
  %493 = icmp uge ptr %491, %492, !dbg !818
  %494 = zext i1 %493 to i32, !dbg !818
  %495 = sext i32 %494 to i64, !dbg !818
  br i1 %493, label %496, label %497, !dbg !821

496:                                              ; preds = %487
  store i64 0, ptr %3, align 8, !dbg !818
  br label %558, !dbg !818

497:                                              ; preds = %487
  %498 = load ptr, ptr %8, align 8, !dbg !821
  %499 = load ptr, ptr %4, align 8, !dbg !821
  %500 = getelementptr inbounds %struct.lwan_request_t_, ptr %499, i32 0, i32 4, !dbg !821
  %501 = load ptr, ptr %500, align 8, !dbg !821
  %502 = getelementptr inbounds %struct.lwan_connection_t_, ptr %501, i32 0, i32 3, !dbg !821
  %503 = load ptr, ptr %502, align 8, !dbg !821
  %504 = getelementptr inbounds %struct.lwan_thread_t_, ptr %503, i32 0, i32 1, !dbg !821
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %498, ptr align 8 %504, i64 29, i1 false), !dbg !821
  %505 = getelementptr inbounds i8, ptr %498, i64 29, !dbg !821
  store ptr %505, ptr %8, align 8, !dbg !821
  br label %506, !dbg !822

506:                                              ; preds = %497, %472
  %507 = load i8, ptr %12, align 1, !dbg !823
  %508 = trunc i8 %507 to i1, !dbg !823
  %509 = xor i1 %508, true, !dbg !823
  %510 = xor i1 %508, true, !dbg !823
  %511 = zext i1 %510 to i32, !dbg !823
  %512 = sext i32 %511 to i64, !dbg !823
  br i1 %510, label %513, label %541, !dbg !825

513:                                              ; preds = %506
  %514 = load ptr, ptr %8, align 8, !dbg !826
  %515 = getelementptr inbounds i8, ptr %514, i64 11, !dbg !826
  %516 = load ptr, ptr %9, align 8, !dbg !826
  %517 = icmp uge ptr %515, %516, !dbg !826
  %518 = zext i1 %517 to i32, !dbg !826
  %519 = sext i32 %518 to i64, !dbg !826
  br i1 %517, label %520, label %521, !dbg !830

520:                                              ; preds = %513
  store i64 0, ptr %3, align 8, !dbg !826
  br label %558, !dbg !826

521:                                              ; preds = %513
  %522 = load ptr, ptr %8, align 8, !dbg !830
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %522, ptr align 1 @.str.23, i64 11, i1 false), !dbg !830
  %523 = getelementptr inbounds i8, ptr %522, i64 11, !dbg !830
  store ptr %523, ptr %8, align 8, !dbg !830
  %524 = load ptr, ptr %8, align 8, !dbg !831
  %525 = getelementptr inbounds i8, ptr %524, i64 29, !dbg !831
  %526 = load ptr, ptr %9, align 8, !dbg !831
  %527 = icmp uge ptr %525, %526, !dbg !831
  %528 = zext i1 %527 to i32, !dbg !831
  %529 = sext i32 %528 to i64, !dbg !831
  br i1 %527, label %530, label %531, !dbg !834

530:                                              ; preds = %521
  store i64 0, ptr %3, align 8, !dbg !831
  br label %558, !dbg !831

531:                                              ; preds = %521
  %532 = load ptr, ptr %8, align 8, !dbg !834
  %533 = load ptr, ptr %4, align 8, !dbg !834
  %534 = getelementptr inbounds %struct.lwan_request_t_, ptr %533, i32 0, i32 4, !dbg !834
  %535 = load ptr, ptr %534, align 8, !dbg !834
  %536 = getelementptr inbounds %struct.lwan_connection_t_, ptr %535, i32 0, i32 3, !dbg !834
  %537 = load ptr, ptr %536, align 8, !dbg !834
  %538 = getelementptr inbounds %struct.lwan_thread_t_, ptr %537, i32 0, i32 1, !dbg !834
  %539 = getelementptr inbounds %struct.anon.1, ptr %538, i32 0, i32 1, !dbg !834
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %532, ptr align 2 %539, i64 29, i1 false), !dbg !834
  %540 = getelementptr inbounds i8, ptr %532, i64 29, !dbg !834
  store ptr %540, ptr %8, align 8, !dbg !834
  br label %541, !dbg !835

541:                                              ; preds = %531, %506
  %542 = load ptr, ptr %8, align 8, !dbg !836
  %543 = getelementptr inbounds i8, ptr %542, i64 19, !dbg !836
  %544 = load ptr, ptr %9, align 8, !dbg !836
  %545 = icmp uge ptr %543, %544, !dbg !836
  %546 = zext i1 %545 to i32, !dbg !836
  %547 = sext i32 %546 to i64, !dbg !836
  br i1 %545, label %548, label %549, !dbg !839

548:                                              ; preds = %541
  store i64 0, ptr %3, align 8, !dbg !836
  br label %558, !dbg !836

549:                                              ; preds = %541
  %550 = load ptr, ptr %8, align 8, !dbg !839
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %550, ptr align 1 @.str.24, i64 19, i1 false), !dbg !839
  %551 = getelementptr inbounds i8, ptr %550, i64 19, !dbg !839
  store ptr %551, ptr %8, align 8, !dbg !839
  %552 = load ptr, ptr %8, align 8, !dbg !840
  %553 = load ptr, ptr %6, align 8, !dbg !841
  %554 = ptrtoint ptr %552 to i64, !dbg !842
  %555 = ptrtoint ptr %553 to i64, !dbg !842
  %556 = sub i64 %554, %555, !dbg !842
  %557 = sub nsw i64 %556, 1, !dbg !843
  store i64 %557, ptr %3, align 8, !dbg !844
  br label %558, !dbg !844

558:                                              ; preds = %128, %139, %154, %172, %189, %211, %220, %241, %250, %265, %281, %303, %314, %370, %386, %408, %444, %459, %486, %496, %520, %530, %548, %549
  %559 = load i64, ptr %3, align 8, !dbg !845
  store i64 %559, ptr %28, align 8, !dbg !580
  %560 = load i64, ptr %28, align 8, !dbg !846
  %561 = icmp ne i64 %560, 0, !dbg !846
  %562 = xor i1 %561, true, !dbg !846
  %563 = zext i1 %562 to i32, !dbg !846
  %564 = sext i32 %563 to i64, !dbg !846
  %565 = icmp ne i64 %564, 0, !dbg !846
  br i1 %565, label %566, label %568, !dbg !848

566:                                              ; preds = %558
  %567 = load ptr, ptr %24, align 8, !dbg !849
  call void @lwan_default_response(ptr noundef %567, i32 noundef 500), !dbg !851
  br label %604, !dbg !852

568:                                              ; preds = %558
  %569 = load ptr, ptr %24, align 8, !dbg !853
  %570 = getelementptr inbounds %struct.lwan_request_t_, ptr %569, i32 0, i32 0, !dbg !855
  %571 = load i32, ptr %570, align 8, !dbg !855
  %572 = and i32 %571, 2, !dbg !856
  %573 = icmp ne i32 %572, 0, !dbg !856
  br i1 %573, label %574, label %579, !dbg !857

574:                                              ; preds = %568
  %575 = load ptr, ptr %24, align 8, !dbg !858
  %576 = getelementptr inbounds [512 x i8], ptr %26, i64 0, i64 0, !dbg !860
  %577 = load i64, ptr %28, align 8, !dbg !861
  %578 = call i64 @lwan_write(ptr noundef %575, ptr noundef %576, i64 noundef %577), !dbg !862
  br label %604, !dbg !863

579:                                              ; preds = %568
  call void @llvm.dbg.declare(metadata ptr %29, metadata !864, metadata !DIExpression()), !dbg !871
  %580 = getelementptr inbounds [2 x %struct.iovec], ptr %29, i64 0, i64 0, !dbg !872
  %581 = getelementptr inbounds %struct.iovec, ptr %580, i32 0, i32 0, !dbg !873
  %582 = getelementptr inbounds [512 x i8], ptr %26, i64 0, i64 0, !dbg !874
  store ptr %582, ptr %581, align 16, !dbg !873
  %583 = getelementptr inbounds %struct.iovec, ptr %580, i32 0, i32 1, !dbg !873
  %584 = load i64, ptr %28, align 8, !dbg !875
  store i64 %584, ptr %583, align 8, !dbg !873
  %585 = getelementptr inbounds %struct.iovec, ptr %580, i64 1, !dbg !872
  %586 = getelementptr inbounds %struct.iovec, ptr %585, i32 0, i32 0, !dbg !876
  %587 = load ptr, ptr %24, align 8, !dbg !877
  %588 = getelementptr inbounds %struct.lwan_request_t_, ptr %587, i32 0, i32 8, !dbg !877
  %589 = getelementptr inbounds %struct.lwan_response_t_, ptr %588, i32 0, i32 0, !dbg !877
  %590 = load ptr, ptr %589, align 8, !dbg !877
  %591 = getelementptr inbounds %struct.strbuf_t_, ptr %590, i32 0, i32 0, !dbg !877
  %592 = load ptr, ptr %591, align 8, !dbg !877
  store ptr %592, ptr %586, align 16, !dbg !876
  %593 = getelementptr inbounds %struct.iovec, ptr %585, i32 0, i32 1, !dbg !876
  %594 = load ptr, ptr %24, align 8, !dbg !878
  %595 = getelementptr inbounds %struct.lwan_request_t_, ptr %594, i32 0, i32 8, !dbg !878
  %596 = getelementptr inbounds %struct.lwan_response_t_, ptr %595, i32 0, i32 0, !dbg !878
  %597 = load ptr, ptr %596, align 8, !dbg !878
  %598 = getelementptr inbounds %struct.strbuf_t_, ptr %597, i32 0, i32 1, !dbg !878
  %599 = getelementptr inbounds %struct.anon, ptr %598, i32 0, i32 1, !dbg !878
  %600 = load i64, ptr %599, align 8, !dbg !878
  store i64 %600, ptr %593, align 8, !dbg !876
  %601 = load ptr, ptr %24, align 8, !dbg !879
  %602 = getelementptr inbounds [2 x %struct.iovec], ptr %29, i64 0, i64 0, !dbg !880
  %603 = call i64 @lwan_writev(ptr noundef %601, ptr noundef %602, i32 noundef 2), !dbg !881
  br label %604, !dbg !882

604:                                              ; preds = %579, %574, %566, %108, %74, %63, %52
  ret void, !dbg !882
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #4

declare zeroext i1 @strbuf_reset_length(ptr noundef) #1

declare i32 @coro_yield(ptr noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response_send_chunk(ptr noundef %0) #0 !dbg !237 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  %4 = alloca [26 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [3 x %struct.iovec], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !883, metadata !DIExpression()), !dbg !884
  %8 = load ptr, ptr %2, align 8, !dbg !885
  %9 = getelementptr inbounds %struct.lwan_request_t_, ptr %8, i32 0, i32 0, !dbg !887
  %10 = load i32, ptr %9, align 8, !dbg !887
  %11 = and i32 %10, 64, !dbg !888
  %12 = icmp ne i32 %11, 0, !dbg !888
  br i1 %12, label %22, label %13, !dbg !889

13:                                               ; preds = %1
  %14 = load ptr, ptr %2, align 8, !dbg !890
  %15 = call zeroext i1 @lwan_response_set_chunked(ptr noundef %14, i32 noundef 200), !dbg !890
  %16 = xor i1 %15, true, !dbg !890
  %17 = zext i1 %16 to i32, !dbg !890
  %18 = sext i32 %17 to i64, !dbg !890
  %19 = icmp ne i64 %18, 0, !dbg !890
  br i1 %19, label %20, label %21, !dbg !893

20:                                               ; preds = %13
  br label %98, !dbg !894

21:                                               ; preds = %13
  br label %22, !dbg !895

22:                                               ; preds = %21, %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !896, metadata !DIExpression()), !dbg !897
  %23 = load ptr, ptr %2, align 8, !dbg !898
  %24 = getelementptr inbounds %struct.lwan_request_t_, ptr %23, i32 0, i32 8, !dbg !898
  %25 = getelementptr inbounds %struct.lwan_response_t_, ptr %24, i32 0, i32 0, !dbg !898
  %26 = load ptr, ptr %25, align 8, !dbg !898
  %27 = getelementptr inbounds %struct.strbuf_t_, ptr %26, i32 0, i32 1, !dbg !898
  %28 = getelementptr inbounds %struct.anon, ptr %27, i32 0, i32 1, !dbg !898
  %29 = load i64, ptr %28, align 8, !dbg !898
  store i64 %29, ptr %3, align 8, !dbg !897
  %30 = load i64, ptr %3, align 8, !dbg !899
  %31 = icmp ne i64 %30, 0, !dbg !899
  %32 = xor i1 %31, true, !dbg !899
  %33 = zext i1 %32 to i32, !dbg !899
  %34 = sext i32 %33 to i64, !dbg !899
  %35 = icmp ne i64 %34, 0, !dbg !899
  br i1 %35, label %36, label %39, !dbg !901

36:                                               ; preds = %22
  %37 = load ptr, ptr %2, align 8, !dbg !902
  %38 = call i64 @lwan_send(ptr noundef %37, ptr noundef @lwan_response_send_chunk.last_chunk, i64 noundef 5, i32 noundef 0), !dbg !904
  br label %98, !dbg !905

39:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %4, metadata !906, metadata !DIExpression()), !dbg !910
  call void @llvm.dbg.declare(metadata ptr %5, metadata !911, metadata !DIExpression()), !dbg !912
  %40 = getelementptr inbounds [26 x i8], ptr %4, i64 0, i64 0, !dbg !913
  %41 = load i64, ptr %3, align 8, !dbg !914
  %42 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %40, i64 noundef 26, ptr noundef @.str.25, i64 noundef %41) #12, !dbg !915
  store i32 %42, ptr %5, align 4, !dbg !912
  %43 = load i32, ptr %5, align 4, !dbg !916
  %44 = icmp slt i32 %43, 0, !dbg !916
  %45 = zext i1 %44 to i32, !dbg !916
  %46 = sext i32 %45 to i64, !dbg !916
  %47 = icmp ne i64 %46, 0, !dbg !916
  br i1 %47, label %48, label %49, !dbg !918

48:                                               ; preds = %39
  br label %91, !dbg !919

49:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata ptr %6, metadata !920, metadata !DIExpression()), !dbg !921
  %50 = load i32, ptr %5, align 4, !dbg !922
  %51 = sext i32 %50 to i64, !dbg !923
  store i64 %51, ptr %6, align 8, !dbg !921
  call void @llvm.dbg.declare(metadata ptr %7, metadata !924, metadata !DIExpression()), !dbg !926
  %52 = getelementptr inbounds [3 x %struct.iovec], ptr %7, i64 0, i64 0, !dbg !927
  %53 = getelementptr inbounds %struct.iovec, ptr %52, i32 0, i32 0, !dbg !928
  %54 = getelementptr inbounds [26 x i8], ptr %4, i64 0, i64 0, !dbg !929
  store ptr %54, ptr %53, align 16, !dbg !928
  %55 = getelementptr inbounds %struct.iovec, ptr %52, i32 0, i32 1, !dbg !928
  %56 = load i64, ptr %6, align 8, !dbg !930
  store i64 %56, ptr %55, align 8, !dbg !928
  %57 = getelementptr inbounds %struct.iovec, ptr %52, i64 1, !dbg !927
  %58 = getelementptr inbounds %struct.iovec, ptr %57, i32 0, i32 0, !dbg !931
  %59 = load ptr, ptr %2, align 8, !dbg !932
  %60 = getelementptr inbounds %struct.lwan_request_t_, ptr %59, i32 0, i32 8, !dbg !932
  %61 = getelementptr inbounds %struct.lwan_response_t_, ptr %60, i32 0, i32 0, !dbg !932
  %62 = load ptr, ptr %61, align 8, !dbg !932
  %63 = getelementptr inbounds %struct.strbuf_t_, ptr %62, i32 0, i32 0, !dbg !932
  %64 = load ptr, ptr %63, align 8, !dbg !932
  store ptr %64, ptr %58, align 16, !dbg !931
  %65 = getelementptr inbounds %struct.iovec, ptr %57, i32 0, i32 1, !dbg !931
  %66 = load i64, ptr %3, align 8, !dbg !933
  store i64 %66, ptr %65, align 8, !dbg !931
  %67 = getelementptr inbounds %struct.iovec, ptr %57, i64 1, !dbg !927
  %68 = getelementptr inbounds %struct.iovec, ptr %67, i32 0, i32 0, !dbg !934
  store ptr @.str.26, ptr %68, align 16, !dbg !934
  %69 = getelementptr inbounds %struct.iovec, ptr %67, i32 0, i32 1, !dbg !934
  store i64 2, ptr %69, align 8, !dbg !934
  %70 = load ptr, ptr %2, align 8, !dbg !935
  %71 = getelementptr inbounds [3 x %struct.iovec], ptr %7, i64 0, i64 0, !dbg !936
  %72 = call i64 @lwan_writev(ptr noundef %70, ptr noundef %71, i32 noundef 3), !dbg !937
  %73 = load ptr, ptr %2, align 8, !dbg !938
  %74 = getelementptr inbounds %struct.lwan_request_t_, ptr %73, i32 0, i32 8, !dbg !938
  %75 = getelementptr inbounds %struct.lwan_response_t_, ptr %74, i32 0, i32 0, !dbg !938
  %76 = load ptr, ptr %75, align 8, !dbg !938
  %77 = call zeroext i1 @strbuf_reset_length(ptr noundef %76), !dbg !938
  %78 = xor i1 %77, true, !dbg !938
  %79 = xor i1 %78, true, !dbg !938
  %80 = zext i1 %79 to i32, !dbg !938
  %81 = sext i32 %80 to i64, !dbg !938
  %82 = icmp ne i64 %81, 0, !dbg !938
  br i1 %82, label %83, label %90, !dbg !940

83:                                               ; preds = %49
  %84 = load ptr, ptr %2, align 8, !dbg !941
  %85 = getelementptr inbounds %struct.lwan_request_t_, ptr %84, i32 0, i32 4, !dbg !943
  %86 = load ptr, ptr %85, align 8, !dbg !943
  %87 = getelementptr inbounds %struct.lwan_connection_t_, ptr %86, i32 0, i32 2, !dbg !944
  %88 = load ptr, ptr %87, align 8, !dbg !944
  %89 = call i32 @coro_yield(ptr noundef %88, i32 noundef 0), !dbg !945
  br label %98, !dbg !946

90:                                               ; preds = %49
  br label %91, !dbg !938

91:                                               ; preds = %90, %48
  call void @llvm.dbg.label(metadata !947), !dbg !948
  %92 = load ptr, ptr %2, align 8, !dbg !949
  %93 = getelementptr inbounds %struct.lwan_request_t_, ptr %92, i32 0, i32 4, !dbg !950
  %94 = load ptr, ptr %93, align 8, !dbg !950
  %95 = getelementptr inbounds %struct.lwan_connection_t_, ptr %94, i32 0, i32 2, !dbg !951
  %96 = load ptr, ptr %95, align 8, !dbg !951
  %97 = call i32 @coro_yield(ptr noundef %96, i32 noundef -1), !dbg !952
  unreachable, !dbg !953

98:                                               ; preds = %83, %36, %20
  ret void, !dbg !954
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @log_request(ptr noundef %0, i32 noundef %1) #0 !dbg !955 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [46 x i8], align 16
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !956, metadata !DIExpression()), !dbg !957
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata ptr %5, metadata !960, metadata !DIExpression()), !dbg !964
  %6 = load ptr, ptr %3, align 8, !dbg !965
  %7 = getelementptr inbounds [46 x i8], ptr %5, i64 0, i64 0, !dbg !965
  %8 = call ptr @lwan_request_get_remote_address(ptr noundef %6, ptr noundef %7), !dbg !965
  %9 = load ptr, ptr %3, align 8, !dbg !965
  %10 = getelementptr inbounds %struct.lwan_request_t_, ptr %9, i32 0, i32 4, !dbg !965
  %11 = load ptr, ptr %10, align 8, !dbg !965
  %12 = getelementptr inbounds %struct.lwan_connection_t_, ptr %11, i32 0, i32 3, !dbg !965
  %13 = load ptr, ptr %12, align 8, !dbg !965
  %14 = getelementptr inbounds %struct.lwan_thread_t_, ptr %13, i32 0, i32 1, !dbg !965
  %15 = getelementptr inbounds %struct.anon.1, ptr %14, i32 0, i32 0, !dbg !965
  %16 = getelementptr inbounds [30 x i8], ptr %15, i64 0, i64 0, !dbg !965
  %17 = load ptr, ptr %3, align 8, !dbg !965
  %18 = call ptr @get_request_method(ptr noundef %17), !dbg !965
  %19 = load ptr, ptr %3, align 8, !dbg !965
  %20 = getelementptr inbounds %struct.lwan_request_t_, ptr %19, i32 0, i32 3, !dbg !965
  %21 = getelementptr inbounds %struct.lwan_value_t_, ptr %20, i32 0, i32 0, !dbg !965
  %22 = load ptr, ptr %21, align 8, !dbg !965
  %23 = load ptr, ptr %3, align 8, !dbg !965
  %24 = getelementptr inbounds %struct.lwan_request_t_, ptr %23, i32 0, i32 0, !dbg !965
  %25 = load i32, ptr %24, align 8, !dbg !965
  %26 = and i32 %25, 32, !dbg !965
  %27 = icmp ne i32 %26, 0, !dbg !965
  %28 = zext i1 %27 to i64, !dbg !965
  %29 = select i1 %27, ptr @.str.33, ptr @.str.34, !dbg !965
  %30 = load i32, ptr %4, align 4, !dbg !965
  %31 = load ptr, ptr %3, align 8, !dbg !965
  %32 = getelementptr inbounds %struct.lwan_request_t_, ptr %31, i32 0, i32 8, !dbg !965
  %33 = getelementptr inbounds %struct.lwan_response_t_, ptr %32, i32 0, i32 1, !dbg !965
  %34 = load ptr, ptr %33, align 8, !dbg !965
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.3, i32 noundef 115, ptr noundef @__FUNCTION__.log_request, ptr noundef @.str.32, ptr noundef %8, ptr noundef %16, ptr noundef %18, ptr noundef %22, ptr noundef %29, i32 noundef %30, ptr noundef %34), !dbg !965
  ret void, !dbg !966
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_default_response(ptr noundef %0, i32 noundef %1) #0 !dbg !967 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.error_template_t, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !968, metadata !DIExpression()), !dbg !969
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !970, metadata !DIExpression()), !dbg !971
  %6 = load ptr, ptr %3, align 8, !dbg !972
  %7 = getelementptr inbounds %struct.lwan_request_t_, ptr %6, i32 0, i32 8, !dbg !973
  %8 = getelementptr inbounds %struct.lwan_response_t_, ptr %7, i32 0, i32 1, !dbg !974
  store ptr @.str.9, ptr %8, align 8, !dbg !975
  %9 = load ptr, ptr @error_template, align 8, !dbg !976
  %10 = load ptr, ptr %3, align 8, !dbg !977
  %11 = getelementptr inbounds %struct.lwan_request_t_, ptr %10, i32 0, i32 8, !dbg !978
  %12 = getelementptr inbounds %struct.lwan_response_t_, ptr %11, i32 0, i32 0, !dbg !979
  %13 = load ptr, ptr %12, align 8, !dbg !979
  %14 = getelementptr inbounds %struct.error_template_t, ptr %5, i32 0, i32 0, !dbg !980
  %15 = load i32, ptr %4, align 4, !dbg !981
  %16 = call ptr @lwan_http_status_as_string(i32 noundef %15) #11, !dbg !982
  store ptr %16, ptr %14, align 8, !dbg !980
  %17 = getelementptr inbounds %struct.error_template_t, ptr %5, i32 0, i32 1, !dbg !980
  %18 = load i32, ptr %4, align 4, !dbg !983
  %19 = call ptr @lwan_http_status_as_descriptive_string(i32 noundef %18) #11, !dbg !984
  store ptr %19, ptr %17, align 8, !dbg !980
  %20 = call ptr @lwan_tpl_apply_with_buffer(ptr noundef %9, ptr noundef %13, ptr noundef %5), !dbg !985
  %21 = load ptr, ptr %3, align 8, !dbg !986
  %22 = load i32, ptr %4, align 4, !dbg !987
  call void @lwan_response(ptr noundef %21, i32 noundef %22), !dbg !988
  ret void, !dbg !989
}

; Function Attrs: alwaysinline nounwind uwtable
define dso_local i64 @lwan_prepare_response_header(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #5 !dbg !585 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca [25 x i8], align 16
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !584, metadata !DIExpression()), !dbg !990
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !590, metadata !DIExpression()), !dbg !991
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !592, metadata !DIExpression()), !dbg !992
  store i64 %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !594, metadata !DIExpression()), !dbg !993
  call void @llvm.dbg.declare(metadata ptr %10, metadata !596, metadata !DIExpression()), !dbg !994
  call void @llvm.dbg.declare(metadata ptr %11, metadata !598, metadata !DIExpression()), !dbg !995
  %26 = load ptr, ptr %8, align 8, !dbg !996
  %27 = load i64, ptr %9, align 8, !dbg !997
  %28 = getelementptr inbounds i8, ptr %26, i64 %27, !dbg !998
  store ptr %28, ptr %11, align 8, !dbg !995
  call void @llvm.dbg.declare(metadata ptr %12, metadata !603, metadata !DIExpression()), !dbg !999
  call void @llvm.dbg.declare(metadata ptr %13, metadata !605, metadata !DIExpression()), !dbg !1000
  store i8 0, ptr %13, align 1, !dbg !1000
  call void @llvm.dbg.declare(metadata ptr %14, metadata !607, metadata !DIExpression()), !dbg !1001
  store i8 0, ptr %14, align 1, !dbg !1001
  %29 = load ptr, ptr %8, align 8, !dbg !1002
  store ptr %29, ptr %10, align 8, !dbg !1003
  %30 = load ptr, ptr %6, align 8, !dbg !1004
  %31 = getelementptr inbounds %struct.lwan_request_t_, ptr %30, i32 0, i32 0, !dbg !1005
  %32 = load i32, ptr %31, align 8, !dbg !1005
  %33 = and i32 %32, 32, !dbg !1006
  %34 = icmp ne i32 %33, 0, !dbg !1006
  br i1 %34, label %35, label %49, !dbg !1007

35:                                               ; preds = %4
  br label %36, !dbg !1008

36:                                               ; preds = %35
  %37 = load ptr, ptr %10, align 8, !dbg !1009
  %38 = getelementptr inbounds i8, ptr %37, i64 9, !dbg !1009
  %39 = load ptr, ptr %11, align 8, !dbg !1009
  %40 = icmp uge ptr %38, %39, !dbg !1009
  %41 = zext i1 %40 to i32, !dbg !1009
  %42 = sext i32 %41 to i64, !dbg !1009
  %43 = icmp ne i64 %42, 0, !dbg !1009
  br i1 %43, label %44, label %45, !dbg !1010

44:                                               ; preds = %36
  store i64 0, ptr %5, align 8, !dbg !1009
  br label %575, !dbg !1009

45:                                               ; preds = %36
  %46 = load ptr, ptr %10, align 8, !dbg !1010
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %46, ptr align 1 @.str.10, i64 9, i1 false), !dbg !1010
  %47 = getelementptr inbounds i8, ptr %46, i64 9, !dbg !1010
  store ptr %47, ptr %10, align 8, !dbg !1010
  br label %48, !dbg !1010

48:                                               ; preds = %45
  br label %63, !dbg !1010

49:                                               ; preds = %4
  br label %50, !dbg !1011

50:                                               ; preds = %49
  %51 = load ptr, ptr %10, align 8, !dbg !1012
  %52 = getelementptr inbounds i8, ptr %51, i64 9, !dbg !1012
  %53 = load ptr, ptr %11, align 8, !dbg !1012
  %54 = icmp uge ptr %52, %53, !dbg !1012
  %55 = zext i1 %54 to i32, !dbg !1012
  %56 = sext i32 %55 to i64, !dbg !1012
  %57 = icmp ne i64 %56, 0, !dbg !1012
  br i1 %57, label %58, label %59, !dbg !1013

58:                                               ; preds = %50
  store i64 0, ptr %5, align 8, !dbg !1012
  br label %575, !dbg !1012

59:                                               ; preds = %50
  %60 = load ptr, ptr %10, align 8, !dbg !1013
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 @.str.11, i64 9, i1 false), !dbg !1013
  %61 = getelementptr inbounds i8, ptr %60, i64 9, !dbg !1013
  store ptr %61, ptr %10, align 8, !dbg !1013
  br label %62, !dbg !1013

62:                                               ; preds = %59
  br label %63

63:                                               ; preds = %62, %48
  br label %64, !dbg !1014

64:                                               ; preds = %63
  call void @llvm.dbg.declare(metadata ptr %15, metadata !624, metadata !DIExpression()), !dbg !1015
  %65 = load i32, ptr %7, align 4, !dbg !1015
  %66 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %65) #11, !dbg !1015
  %67 = call i64 @strlen(ptr noundef %66) #11, !dbg !1015
  store i64 %67, ptr %15, align 8, !dbg !1015
  br label %68, !dbg !1015

68:                                               ; preds = %64
  %69 = load ptr, ptr %10, align 8, !dbg !1016
  %70 = load i64, ptr %15, align 8, !dbg !1016
  %71 = getelementptr inbounds i8, ptr %69, i64 %70, !dbg !1016
  %72 = load ptr, ptr %11, align 8, !dbg !1016
  %73 = icmp uge ptr %71, %72, !dbg !1016
  %74 = zext i1 %73 to i32, !dbg !1016
  %75 = sext i32 %74 to i64, !dbg !1016
  %76 = icmp ne i64 %75, 0, !dbg !1016
  br i1 %76, label %77, label %78, !dbg !1017

77:                                               ; preds = %68
  store i64 0, ptr %5, align 8, !dbg !1016
  br label %575, !dbg !1016

78:                                               ; preds = %68
  %79 = load ptr, ptr %10, align 8, !dbg !1017
  %80 = load i32, ptr %7, align 4, !dbg !1017
  %81 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %80) #11, !dbg !1017
  %82 = load i64, ptr %15, align 8, !dbg !1017
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %79, ptr align 1 %81, i64 %82, i1 false), !dbg !1017
  %83 = getelementptr inbounds i8, ptr %79, i64 %82, !dbg !1017
  store ptr %83, ptr %10, align 8, !dbg !1017
  br label %84, !dbg !1017

84:                                               ; preds = %78
  br label %85, !dbg !1015

85:                                               ; preds = %84
  %86 = load ptr, ptr %6, align 8, !dbg !1018
  %87 = getelementptr inbounds %struct.lwan_request_t_, ptr %86, i32 0, i32 0, !dbg !1019
  %88 = load i32, ptr %87, align 8, !dbg !1019
  %89 = and i32 %88, 128, !dbg !1020
  %90 = icmp ne i32 %89, 0, !dbg !1020
  br i1 %90, label %91, label %105, !dbg !1021

91:                                               ; preds = %85
  br label %92, !dbg !1022

92:                                               ; preds = %91
  %93 = load ptr, ptr %10, align 8, !dbg !1023
  %94 = getelementptr inbounds i8, ptr %93, i64 28, !dbg !1023
  %95 = load ptr, ptr %11, align 8, !dbg !1023
  %96 = icmp uge ptr %94, %95, !dbg !1023
  %97 = zext i1 %96 to i32, !dbg !1023
  %98 = sext i32 %97 to i64, !dbg !1023
  %99 = icmp ne i64 %98, 0, !dbg !1023
  br i1 %99, label %100, label %101, !dbg !1024

100:                                              ; preds = %92
  store i64 0, ptr %5, align 8, !dbg !1023
  br label %575, !dbg !1023

101:                                              ; preds = %92
  %102 = load ptr, ptr %10, align 8, !dbg !1024
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %102, ptr align 1 @.str.12, i64 28, i1 false), !dbg !1024
  %103 = getelementptr inbounds i8, ptr %102, i64 28, !dbg !1024
  store ptr %103, ptr %10, align 8, !dbg !1024
  br label %104, !dbg !1024

104:                                              ; preds = %101
  br label %207, !dbg !1025

105:                                              ; preds = %85
  %106 = load ptr, ptr %6, align 8, !dbg !1026
  %107 = getelementptr inbounds %struct.lwan_request_t_, ptr %106, i32 0, i32 0, !dbg !1027
  %108 = load i32, ptr %107, align 8, !dbg !1027
  %109 = and i32 %108, 256, !dbg !1028
  %110 = icmp ne i32 %109, 0, !dbg !1028
  br i1 %110, label %111, label %112, !dbg !1029

111:                                              ; preds = %105
  br label %206, !dbg !1030

112:                                              ; preds = %105
  br label %113, !dbg !1031

113:                                              ; preds = %112
  %114 = load ptr, ptr %10, align 8, !dbg !1032
  %115 = getelementptr inbounds i8, ptr %114, i64 18, !dbg !1032
  %116 = load ptr, ptr %11, align 8, !dbg !1032
  %117 = icmp uge ptr %115, %116, !dbg !1032
  %118 = zext i1 %117 to i32, !dbg !1032
  %119 = sext i32 %118 to i64, !dbg !1032
  %120 = icmp ne i64 %119, 0, !dbg !1032
  br i1 %120, label %121, label %122, !dbg !1033

121:                                              ; preds = %113
  store i64 0, ptr %5, align 8, !dbg !1032
  br label %575, !dbg !1032

122:                                              ; preds = %113
  %123 = load ptr, ptr %10, align 8, !dbg !1033
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %123, ptr align 1 @.str.13, i64 18, i1 false), !dbg !1033
  %124 = getelementptr inbounds i8, ptr %123, i64 18, !dbg !1033
  store ptr %124, ptr %10, align 8, !dbg !1033
  br label %125, !dbg !1033

125:                                              ; preds = %122
  %126 = load ptr, ptr %6, align 8, !dbg !1034
  %127 = getelementptr inbounds %struct.lwan_request_t_, ptr %126, i32 0, i32 8, !dbg !1035
  %128 = getelementptr inbounds %struct.lwan_response_t_, ptr %127, i32 0, i32 4, !dbg !1036
  %129 = getelementptr inbounds %struct.anon.5, ptr %128, i32 0, i32 0, !dbg !1037
  %130 = load ptr, ptr %129, align 8, !dbg !1037
  %131 = icmp ne ptr %130, null, !dbg !1034
  br i1 %131, label %132, label %167, !dbg !1038

132:                                              ; preds = %125
  br label %133, !dbg !1039

133:                                              ; preds = %132
  call void @llvm.dbg.declare(metadata ptr %16, metadata !660, metadata !DIExpression()), !dbg !1040
  call void @llvm.dbg.declare(metadata ptr %17, metadata !663, metadata !DIExpression()), !dbg !1040
  %134 = load ptr, ptr %6, align 8, !dbg !1040
  %135 = getelementptr inbounds %struct.lwan_request_t_, ptr %134, i32 0, i32 8, !dbg !1040
  %136 = getelementptr inbounds %struct.lwan_response_t_, ptr %135, i32 0, i32 2, !dbg !1040
  %137 = load i64, ptr %136, align 8, !dbg !1040
  %138 = getelementptr inbounds [25 x i8], ptr %12, i64 0, i64 0, !dbg !1040
  %139 = call ptr @uint_to_string(i64 noundef %137, ptr noundef %138, ptr noundef %16), !dbg !1040
  store ptr %139, ptr %17, align 8, !dbg !1040
  %140 = load ptr, ptr %10, align 8, !dbg !1041
  %141 = load i64, ptr %16, align 8, !dbg !1041
  %142 = getelementptr inbounds i8, ptr %140, i64 %141, !dbg !1041
  %143 = load ptr, ptr %11, align 8, !dbg !1041
  %144 = icmp uge ptr %142, %143, !dbg !1041
  %145 = zext i1 %144 to i32, !dbg !1041
  %146 = sext i32 %145 to i64, !dbg !1041
  %147 = icmp ne i64 %146, 0, !dbg !1041
  br i1 %147, label %148, label %149, !dbg !1040

148:                                              ; preds = %133
  store i64 0, ptr %5, align 8, !dbg !1041
  br label %575, !dbg !1041

149:                                              ; preds = %133
  br label %150, !dbg !1040

150:                                              ; preds = %149
  %151 = load ptr, ptr %10, align 8, !dbg !1042
  %152 = load i64, ptr %16, align 8, !dbg !1042
  %153 = getelementptr inbounds i8, ptr %151, i64 %152, !dbg !1042
  %154 = load ptr, ptr %11, align 8, !dbg !1042
  %155 = icmp uge ptr %153, %154, !dbg !1042
  %156 = zext i1 %155 to i32, !dbg !1042
  %157 = sext i32 %156 to i64, !dbg !1042
  %158 = icmp ne i64 %157, 0, !dbg !1042
  br i1 %158, label %159, label %160, !dbg !1043

159:                                              ; preds = %150
  store i64 0, ptr %5, align 8, !dbg !1042
  br label %575, !dbg !1042

160:                                              ; preds = %150
  %161 = load ptr, ptr %10, align 8, !dbg !1043
  %162 = load ptr, ptr %17, align 8, !dbg !1043
  %163 = load i64, ptr %16, align 8, !dbg !1043
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %161, ptr align 1 %162, i64 %163, i1 false), !dbg !1043
  %164 = getelementptr inbounds i8, ptr %161, i64 %163, !dbg !1043
  store ptr %164, ptr %10, align 8, !dbg !1043
  br label %165, !dbg !1043

165:                                              ; preds = %160
  br label %166, !dbg !1040

166:                                              ; preds = %165
  br label %205, !dbg !1040

167:                                              ; preds = %125
  br label %168, !dbg !1044

168:                                              ; preds = %167
  call void @llvm.dbg.declare(metadata ptr %18, metadata !670, metadata !DIExpression()), !dbg !1045
  call void @llvm.dbg.declare(metadata ptr %19, metadata !673, metadata !DIExpression()), !dbg !1045
  %169 = load ptr, ptr %6, align 8, !dbg !1045
  %170 = getelementptr inbounds %struct.lwan_request_t_, ptr %169, i32 0, i32 8, !dbg !1045
  %171 = getelementptr inbounds %struct.lwan_response_t_, ptr %170, i32 0, i32 0, !dbg !1045
  %172 = load ptr, ptr %171, align 8, !dbg !1045
  %173 = getelementptr inbounds %struct.strbuf_t_, ptr %172, i32 0, i32 1, !dbg !1045
  %174 = getelementptr inbounds %struct.anon, ptr %173, i32 0, i32 1, !dbg !1045
  %175 = load i64, ptr %174, align 8, !dbg !1045
  %176 = getelementptr inbounds [25 x i8], ptr %12, i64 0, i64 0, !dbg !1045
  %177 = call ptr @uint_to_string(i64 noundef %175, ptr noundef %176, ptr noundef %18), !dbg !1045
  store ptr %177, ptr %19, align 8, !dbg !1045
  %178 = load ptr, ptr %10, align 8, !dbg !1046
  %179 = load i64, ptr %18, align 8, !dbg !1046
  %180 = getelementptr inbounds i8, ptr %178, i64 %179, !dbg !1046
  %181 = load ptr, ptr %11, align 8, !dbg !1046
  %182 = icmp uge ptr %180, %181, !dbg !1046
  %183 = zext i1 %182 to i32, !dbg !1046
  %184 = sext i32 %183 to i64, !dbg !1046
  %185 = icmp ne i64 %184, 0, !dbg !1046
  br i1 %185, label %186, label %187, !dbg !1045

186:                                              ; preds = %168
  store i64 0, ptr %5, align 8, !dbg !1046
  br label %575, !dbg !1046

187:                                              ; preds = %168
  br label %188, !dbg !1045

188:                                              ; preds = %187
  %189 = load ptr, ptr %10, align 8, !dbg !1047
  %190 = load i64, ptr %18, align 8, !dbg !1047
  %191 = getelementptr inbounds i8, ptr %189, i64 %190, !dbg !1047
  %192 = load ptr, ptr %11, align 8, !dbg !1047
  %193 = icmp uge ptr %191, %192, !dbg !1047
  %194 = zext i1 %193 to i32, !dbg !1047
  %195 = sext i32 %194 to i64, !dbg !1047
  %196 = icmp ne i64 %195, 0, !dbg !1047
  br i1 %196, label %197, label %198, !dbg !1048

197:                                              ; preds = %188
  store i64 0, ptr %5, align 8, !dbg !1047
  br label %575, !dbg !1047

198:                                              ; preds = %188
  %199 = load ptr, ptr %10, align 8, !dbg !1048
  %200 = load ptr, ptr %19, align 8, !dbg !1048
  %201 = load i64, ptr %18, align 8, !dbg !1048
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %199, ptr align 1 %200, i64 %201, i1 false), !dbg !1048
  %202 = getelementptr inbounds i8, ptr %199, i64 %201, !dbg !1048
  store ptr %202, ptr %10, align 8, !dbg !1048
  br label %203, !dbg !1048

203:                                              ; preds = %198
  br label %204, !dbg !1045

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204, %166
  br label %206

206:                                              ; preds = %205, %111
  br label %207

207:                                              ; preds = %206, %104
  br label %208, !dbg !1049

208:                                              ; preds = %207
  %209 = load ptr, ptr %10, align 8, !dbg !1050
  %210 = getelementptr inbounds i8, ptr %209, i64 16, !dbg !1050
  %211 = load ptr, ptr %11, align 8, !dbg !1050
  %212 = icmp uge ptr %210, %211, !dbg !1050
  %213 = zext i1 %212 to i32, !dbg !1050
  %214 = sext i32 %213 to i64, !dbg !1050
  %215 = icmp ne i64 %214, 0, !dbg !1050
  br i1 %215, label %216, label %217, !dbg !1051

216:                                              ; preds = %208
  store i64 0, ptr %5, align 8, !dbg !1050
  br label %575, !dbg !1050

217:                                              ; preds = %208
  %218 = load ptr, ptr %10, align 8, !dbg !1051
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %218, ptr align 1 @.str.14, i64 16, i1 false), !dbg !1051
  %219 = getelementptr inbounds i8, ptr %218, i64 16, !dbg !1051
  store ptr %219, ptr %10, align 8, !dbg !1051
  br label %220, !dbg !1051

220:                                              ; preds = %217
  br label %221, !dbg !1052

221:                                              ; preds = %220
  call void @llvm.dbg.declare(metadata ptr %20, metadata !684, metadata !DIExpression()), !dbg !1053
  %222 = load ptr, ptr %6, align 8, !dbg !1053
  %223 = getelementptr inbounds %struct.lwan_request_t_, ptr %222, i32 0, i32 8, !dbg !1053
  %224 = getelementptr inbounds %struct.lwan_response_t_, ptr %223, i32 0, i32 1, !dbg !1053
  %225 = load ptr, ptr %224, align 8, !dbg !1053
  %226 = call i64 @strlen(ptr noundef %225) #11, !dbg !1053
  store i64 %226, ptr %20, align 8, !dbg !1053
  br label %227, !dbg !1053

227:                                              ; preds = %221
  %228 = load ptr, ptr %10, align 8, !dbg !1054
  %229 = load i64, ptr %20, align 8, !dbg !1054
  %230 = getelementptr inbounds i8, ptr %228, i64 %229, !dbg !1054
  %231 = load ptr, ptr %11, align 8, !dbg !1054
  %232 = icmp uge ptr %230, %231, !dbg !1054
  %233 = zext i1 %232 to i32, !dbg !1054
  %234 = sext i32 %233 to i64, !dbg !1054
  %235 = icmp ne i64 %234, 0, !dbg !1054
  br i1 %235, label %236, label %237, !dbg !1055

236:                                              ; preds = %227
  store i64 0, ptr %5, align 8, !dbg !1054
  br label %575, !dbg !1054

237:                                              ; preds = %227
  %238 = load ptr, ptr %10, align 8, !dbg !1055
  %239 = load ptr, ptr %6, align 8, !dbg !1055
  %240 = getelementptr inbounds %struct.lwan_request_t_, ptr %239, i32 0, i32 8, !dbg !1055
  %241 = getelementptr inbounds %struct.lwan_response_t_, ptr %240, i32 0, i32 1, !dbg !1055
  %242 = load ptr, ptr %241, align 8, !dbg !1055
  %243 = load i64, ptr %20, align 8, !dbg !1055
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %238, ptr align 1 %242, i64 %243, i1 false), !dbg !1055
  %244 = getelementptr inbounds i8, ptr %238, i64 %243, !dbg !1055
  store ptr %244, ptr %10, align 8, !dbg !1055
  br label %245, !dbg !1055

245:                                              ; preds = %237
  br label %246, !dbg !1053

246:                                              ; preds = %245
  %247 = load ptr, ptr %6, align 8, !dbg !1056
  %248 = getelementptr inbounds %struct.lwan_request_t_, ptr %247, i32 0, i32 4, !dbg !1057
  %249 = load ptr, ptr %248, align 8, !dbg !1057
  %250 = getelementptr inbounds %struct.lwan_connection_t_, ptr %249, i32 0, i32 0, !dbg !1058
  %251 = load i32, ptr %250, align 8, !dbg !1058
  %252 = and i32 %251, 1, !dbg !1059
  %253 = icmp ne i32 %252, 0, !dbg !1059
  br i1 %253, label %254, label %268, !dbg !1060

254:                                              ; preds = %246
  br label %255, !dbg !1061

255:                                              ; preds = %254
  %256 = load ptr, ptr %10, align 8, !dbg !1062
  %257 = getelementptr inbounds i8, ptr %256, i64 24, !dbg !1062
  %258 = load ptr, ptr %11, align 8, !dbg !1062
  %259 = icmp uge ptr %257, %258, !dbg !1062
  %260 = zext i1 %259 to i32, !dbg !1062
  %261 = sext i32 %260 to i64, !dbg !1062
  %262 = icmp ne i64 %261, 0, !dbg !1062
  br i1 %262, label %263, label %264, !dbg !1063

263:                                              ; preds = %255
  store i64 0, ptr %5, align 8, !dbg !1062
  br label %575, !dbg !1062

264:                                              ; preds = %255
  %265 = load ptr, ptr %10, align 8, !dbg !1063
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %265, ptr align 1 @.str.15, i64 24, i1 false), !dbg !1063
  %266 = getelementptr inbounds i8, ptr %265, i64 24, !dbg !1063
  store ptr %266, ptr %10, align 8, !dbg !1063
  br label %267, !dbg !1063

267:                                              ; preds = %264
  br label %282, !dbg !1063

268:                                              ; preds = %246
  br label %269, !dbg !1064

269:                                              ; preds = %268
  %270 = load ptr, ptr %10, align 8, !dbg !1065
  %271 = getelementptr inbounds i8, ptr %270, i64 19, !dbg !1065
  %272 = load ptr, ptr %11, align 8, !dbg !1065
  %273 = icmp uge ptr %271, %272, !dbg !1065
  %274 = zext i1 %273 to i32, !dbg !1065
  %275 = sext i32 %274 to i64, !dbg !1065
  %276 = icmp ne i64 %275, 0, !dbg !1065
  br i1 %276, label %277, label %278, !dbg !1066

277:                                              ; preds = %269
  store i64 0, ptr %5, align 8, !dbg !1065
  br label %575, !dbg !1065

278:                                              ; preds = %269
  %279 = load ptr, ptr %10, align 8, !dbg !1066
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %279, ptr align 1 @.str.16, i64 19, i1 false), !dbg !1066
  %280 = getelementptr inbounds i8, ptr %279, i64 19, !dbg !1066
  store ptr %280, ptr %10, align 8, !dbg !1066
  br label %281, !dbg !1066

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %281, %267
  %283 = load i32, ptr %7, align 4, !dbg !1067
  %284 = icmp ult i32 %283, 400, !dbg !1068
  br i1 %284, label %285, label %404, !dbg !1069

285:                                              ; preds = %282
  %286 = load ptr, ptr %6, align 8, !dbg !1070
  %287 = getelementptr inbounds %struct.lwan_request_t_, ptr %286, i32 0, i32 8, !dbg !1071
  %288 = getelementptr inbounds %struct.lwan_response_t_, ptr %287, i32 0, i32 3, !dbg !1072
  %289 = load ptr, ptr %288, align 8, !dbg !1072
  %290 = icmp ne ptr %289, null, !dbg !1070
  br i1 %290, label %291, label %404, !dbg !1073

291:                                              ; preds = %285
  call void @llvm.dbg.declare(metadata ptr %21, metadata !713, metadata !DIExpression()), !dbg !1074
  %292 = load ptr, ptr %6, align 8, !dbg !1075
  %293 = getelementptr inbounds %struct.lwan_request_t_, ptr %292, i32 0, i32 8, !dbg !1076
  %294 = getelementptr inbounds %struct.lwan_response_t_, ptr %293, i32 0, i32 3, !dbg !1077
  %295 = load ptr, ptr %294, align 8, !dbg !1077
  store ptr %295, ptr %21, align 8, !dbg !1078
  br label %296, !dbg !1079

296:                                              ; preds = %400, %291
  %297 = load ptr, ptr %21, align 8, !dbg !1080
  %298 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %297, i32 0, i32 0, !dbg !1081
  %299 = load ptr, ptr %298, align 8, !dbg !1081
  %300 = icmp ne ptr %299, null, !dbg !1082
  br i1 %300, label %301, label %403, !dbg !1082

301:                                              ; preds = %296
  %302 = load ptr, ptr %21, align 8, !dbg !1083
  %303 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %302, i32 0, i32 0, !dbg !1083
  %304 = load ptr, ptr %303, align 8, !dbg !1083
  %305 = call i32 @strcmp(ptr noundef %304, ptr noundef @.str.17) #11, !dbg !1083
  %306 = icmp ne i32 %305, 0, !dbg !1083
  %307 = xor i1 %306, true, !dbg !1083
  %308 = zext i1 %307 to i32, !dbg !1083
  %309 = sext i32 %308 to i64, !dbg !1083
  %310 = icmp ne i64 %309, 0, !dbg !1083
  br i1 %310, label %311, label %312, !dbg !1084

311:                                              ; preds = %301
  br label %400, !dbg !1085

312:                                              ; preds = %301
  %313 = load ptr, ptr %21, align 8, !dbg !1086
  %314 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %313, i32 0, i32 0, !dbg !1086
  %315 = load ptr, ptr %314, align 8, !dbg !1086
  %316 = call i32 @strcmp(ptr noundef %315, ptr noundef @.str.18) #11, !dbg !1086
  %317 = icmp ne i32 %316, 0, !dbg !1086
  %318 = xor i1 %317, true, !dbg !1086
  %319 = zext i1 %318 to i32, !dbg !1086
  %320 = sext i32 %319 to i64, !dbg !1086
  %321 = icmp ne i64 %320, 0, !dbg !1086
  br i1 %321, label %322, label %323, !dbg !1087

322:                                              ; preds = %312
  store i8 1, ptr %13, align 1, !dbg !1088
  br label %323, !dbg !1089

323:                                              ; preds = %322, %312
  %324 = load ptr, ptr %21, align 8, !dbg !1090
  %325 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %324, i32 0, i32 0, !dbg !1090
  %326 = load ptr, ptr %325, align 8, !dbg !1090
  %327 = call i32 @strcmp(ptr noundef %326, ptr noundef @.str.19) #11, !dbg !1090
  %328 = icmp ne i32 %327, 0, !dbg !1090
  %329 = xor i1 %328, true, !dbg !1090
  %330 = zext i1 %329 to i32, !dbg !1090
  %331 = sext i32 %330 to i64, !dbg !1090
  %332 = icmp ne i64 %331, 0, !dbg !1090
  br i1 %332, label %333, label %334, !dbg !1091

333:                                              ; preds = %323
  store i8 1, ptr %14, align 1, !dbg !1092
  br label %334, !dbg !1093

334:                                              ; preds = %333, %323
  %335 = load ptr, ptr %10, align 8, !dbg !1094
  %336 = getelementptr inbounds i8, ptr %335, i64 4, !dbg !1094
  %337 = load ptr, ptr %11, align 8, !dbg !1094
  %338 = icmp uge ptr %336, %337, !dbg !1094
  %339 = zext i1 %338 to i32, !dbg !1094
  %340 = sext i32 %339 to i64, !dbg !1094
  %341 = icmp ne i64 %340, 0, !dbg !1094
  br i1 %341, label %342, label %343, !dbg !1095

342:                                              ; preds = %334
  store i64 0, ptr %5, align 8, !dbg !1094
  br label %575, !dbg !1094

343:                                              ; preds = %334
  %344 = load ptr, ptr %10, align 8, !dbg !1096
  %345 = getelementptr inbounds i8, ptr %344, i32 1, !dbg !1096
  store ptr %345, ptr %10, align 8, !dbg !1096
  store i8 13, ptr %344, align 1, !dbg !1096
  %346 = load ptr, ptr %10, align 8, !dbg !1097
  %347 = getelementptr inbounds i8, ptr %346, i32 1, !dbg !1097
  store ptr %347, ptr %10, align 8, !dbg !1097
  store i8 10, ptr %346, align 1, !dbg !1097
  br label %348, !dbg !1098

348:                                              ; preds = %343
  call void @llvm.dbg.declare(metadata ptr %22, metadata !746, metadata !DIExpression()), !dbg !1099
  %349 = load ptr, ptr %21, align 8, !dbg !1099
  %350 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %349, i32 0, i32 0, !dbg !1099
  %351 = load ptr, ptr %350, align 8, !dbg !1099
  %352 = call i64 @strlen(ptr noundef %351) #11, !dbg !1099
  store i64 %352, ptr %22, align 8, !dbg !1099
  br label %353, !dbg !1099

353:                                              ; preds = %348
  %354 = load ptr, ptr %10, align 8, !dbg !1100
  %355 = load i64, ptr %22, align 8, !dbg !1100
  %356 = getelementptr inbounds i8, ptr %354, i64 %355, !dbg !1100
  %357 = load ptr, ptr %11, align 8, !dbg !1100
  %358 = icmp uge ptr %356, %357, !dbg !1100
  %359 = zext i1 %358 to i32, !dbg !1100
  %360 = sext i32 %359 to i64, !dbg !1100
  %361 = icmp ne i64 %360, 0, !dbg !1100
  br i1 %361, label %362, label %363, !dbg !1101

362:                                              ; preds = %353
  store i64 0, ptr %5, align 8, !dbg !1100
  br label %575, !dbg !1100

363:                                              ; preds = %353
  %364 = load ptr, ptr %10, align 8, !dbg !1101
  %365 = load ptr, ptr %21, align 8, !dbg !1101
  %366 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %365, i32 0, i32 0, !dbg !1101
  %367 = load ptr, ptr %366, align 8, !dbg !1101
  %368 = load i64, ptr %22, align 8, !dbg !1101
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %364, ptr align 1 %367, i64 %368, i1 false), !dbg !1101
  %369 = getelementptr inbounds i8, ptr %364, i64 %368, !dbg !1101
  store ptr %369, ptr %10, align 8, !dbg !1101
  br label %370, !dbg !1101

370:                                              ; preds = %363
  br label %371, !dbg !1099

371:                                              ; preds = %370
  %372 = load ptr, ptr %10, align 8, !dbg !1102
  %373 = getelementptr inbounds i8, ptr %372, i32 1, !dbg !1102
  store ptr %373, ptr %10, align 8, !dbg !1102
  store i8 58, ptr %372, align 1, !dbg !1102
  %374 = load ptr, ptr %10, align 8, !dbg !1103
  %375 = getelementptr inbounds i8, ptr %374, i32 1, !dbg !1103
  store ptr %375, ptr %10, align 8, !dbg !1103
  store i8 32, ptr %374, align 1, !dbg !1103
  br label %376, !dbg !1104

376:                                              ; preds = %371
  call void @llvm.dbg.declare(metadata ptr %23, metadata !755, metadata !DIExpression()), !dbg !1105
  %377 = load ptr, ptr %21, align 8, !dbg !1105
  %378 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %377, i32 0, i32 1, !dbg !1105
  %379 = load ptr, ptr %378, align 8, !dbg !1105
  %380 = call i64 @strlen(ptr noundef %379) #11, !dbg !1105
  store i64 %380, ptr %23, align 8, !dbg !1105
  br label %381, !dbg !1105

381:                                              ; preds = %376
  %382 = load ptr, ptr %10, align 8, !dbg !1106
  %383 = load i64, ptr %23, align 8, !dbg !1106
  %384 = getelementptr inbounds i8, ptr %382, i64 %383, !dbg !1106
  %385 = load ptr, ptr %11, align 8, !dbg !1106
  %386 = icmp uge ptr %384, %385, !dbg !1106
  %387 = zext i1 %386 to i32, !dbg !1106
  %388 = sext i32 %387 to i64, !dbg !1106
  %389 = icmp ne i64 %388, 0, !dbg !1106
  br i1 %389, label %390, label %391, !dbg !1107

390:                                              ; preds = %381
  store i64 0, ptr %5, align 8, !dbg !1106
  br label %575, !dbg !1106

391:                                              ; preds = %381
  %392 = load ptr, ptr %10, align 8, !dbg !1107
  %393 = load ptr, ptr %21, align 8, !dbg !1107
  %394 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %393, i32 0, i32 1, !dbg !1107
  %395 = load ptr, ptr %394, align 8, !dbg !1107
  %396 = load i64, ptr %23, align 8, !dbg !1107
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %392, ptr align 1 %395, i64 %396, i1 false), !dbg !1107
  %397 = getelementptr inbounds i8, ptr %392, i64 %396, !dbg !1107
  store ptr %397, ptr %10, align 8, !dbg !1107
  br label %398, !dbg !1107

398:                                              ; preds = %391
  br label %399, !dbg !1105

399:                                              ; preds = %398
  br label %400, !dbg !1108

400:                                              ; preds = %399, %311
  %401 = load ptr, ptr %21, align 8, !dbg !1109
  %402 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %401, i32 1, !dbg !1109
  store ptr %402, ptr %21, align 8, !dbg !1109
  br label %296, !dbg !1110, !llvm.loop !1111

403:                                              ; preds = %296
  br label %467, !dbg !1113

404:                                              ; preds = %285, %282
  %405 = load i32, ptr %7, align 4, !dbg !1114
  %406 = icmp eq i32 %405, 401, !dbg !1115
  br i1 %406, label %407, label %466, !dbg !1116

407:                                              ; preds = %404
  call void @llvm.dbg.declare(metadata ptr %24, metadata !773, metadata !DIExpression()), !dbg !1117
  %408 = load ptr, ptr %6, align 8, !dbg !1118
  %409 = getelementptr inbounds %struct.lwan_request_t_, ptr %408, i32 0, i32 8, !dbg !1119
  %410 = getelementptr inbounds %struct.lwan_response_t_, ptr %409, i32 0, i32 3, !dbg !1120
  %411 = load ptr, ptr %410, align 8, !dbg !1120
  store ptr %411, ptr %24, align 8, !dbg !1121
  br label %412, !dbg !1122

412:                                              ; preds = %462, %407
  %413 = load ptr, ptr %24, align 8, !dbg !1123
  %414 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %413, i32 0, i32 0, !dbg !1124
  %415 = load ptr, ptr %414, align 8, !dbg !1124
  %416 = icmp ne ptr %415, null, !dbg !1125
  br i1 %416, label %417, label %465, !dbg !1125

417:                                              ; preds = %412
  %418 = load ptr, ptr %24, align 8, !dbg !1126
  %419 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %418, i32 0, i32 0, !dbg !1127
  %420 = load ptr, ptr %419, align 8, !dbg !1127
  %421 = call i32 @strcmp(ptr noundef %420, ptr noundef @.str.20) #11, !dbg !1128
  %422 = icmp ne i32 %421, 0, !dbg !1128
  br i1 %422, label %461, label %423, !dbg !1129

423:                                              ; preds = %417
  br label %424, !dbg !1130

424:                                              ; preds = %423
  %425 = load ptr, ptr %10, align 8, !dbg !1131
  %426 = getelementptr inbounds i8, ptr %425, i64 20, !dbg !1131
  %427 = load ptr, ptr %11, align 8, !dbg !1131
  %428 = icmp uge ptr %426, %427, !dbg !1131
  %429 = zext i1 %428 to i32, !dbg !1131
  %430 = sext i32 %429 to i64, !dbg !1131
  %431 = icmp ne i64 %430, 0, !dbg !1131
  br i1 %431, label %432, label %433, !dbg !1132

432:                                              ; preds = %424
  store i64 0, ptr %5, align 8, !dbg !1131
  br label %575, !dbg !1131

433:                                              ; preds = %424
  %434 = load ptr, ptr %10, align 8, !dbg !1132
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %434, ptr align 1 @.str.21, i64 20, i1 false), !dbg !1132
  %435 = getelementptr inbounds i8, ptr %434, i64 20, !dbg !1132
  store ptr %435, ptr %10, align 8, !dbg !1132
  br label %436, !dbg !1132

436:                                              ; preds = %433
  br label %437, !dbg !1133

437:                                              ; preds = %436
  call void @llvm.dbg.declare(metadata ptr %25, metadata !797, metadata !DIExpression()), !dbg !1134
  %438 = load ptr, ptr %24, align 8, !dbg !1134
  %439 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %438, i32 0, i32 1, !dbg !1134
  %440 = load ptr, ptr %439, align 8, !dbg !1134
  %441 = call i64 @strlen(ptr noundef %440) #11, !dbg !1134
  store i64 %441, ptr %25, align 8, !dbg !1134
  br label %442, !dbg !1134

442:                                              ; preds = %437
  %443 = load ptr, ptr %10, align 8, !dbg !1135
  %444 = load i64, ptr %25, align 8, !dbg !1135
  %445 = getelementptr inbounds i8, ptr %443, i64 %444, !dbg !1135
  %446 = load ptr, ptr %11, align 8, !dbg !1135
  %447 = icmp uge ptr %445, %446, !dbg !1135
  %448 = zext i1 %447 to i32, !dbg !1135
  %449 = sext i32 %448 to i64, !dbg !1135
  %450 = icmp ne i64 %449, 0, !dbg !1135
  br i1 %450, label %451, label %452, !dbg !1136

451:                                              ; preds = %442
  store i64 0, ptr %5, align 8, !dbg !1135
  br label %575, !dbg !1135

452:                                              ; preds = %442
  %453 = load ptr, ptr %10, align 8, !dbg !1136
  %454 = load ptr, ptr %24, align 8, !dbg !1136
  %455 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %454, i32 0, i32 1, !dbg !1136
  %456 = load ptr, ptr %455, align 8, !dbg !1136
  %457 = load i64, ptr %25, align 8, !dbg !1136
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %453, ptr align 1 %456, i64 %457, i1 false), !dbg !1136
  %458 = getelementptr inbounds i8, ptr %453, i64 %457, !dbg !1136
  store ptr %458, ptr %10, align 8, !dbg !1136
  br label %459, !dbg !1136

459:                                              ; preds = %452
  br label %460, !dbg !1134

460:                                              ; preds = %459
  br label %465, !dbg !1137

461:                                              ; preds = %417
  br label %462, !dbg !1138

462:                                              ; preds = %461
  %463 = load ptr, ptr %24, align 8, !dbg !1139
  %464 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %463, i32 1, !dbg !1139
  store ptr %464, ptr %24, align 8, !dbg !1139
  br label %412, !dbg !1140, !llvm.loop !1141

465:                                              ; preds = %460, %412
  br label %466, !dbg !1143

466:                                              ; preds = %465, %404
  br label %467

467:                                              ; preds = %466, %403
  %468 = load i8, ptr %13, align 1, !dbg !1144
  %469 = trunc i8 %468 to i1, !dbg !1144
  %470 = xor i1 %469, true, !dbg !1144
  %471 = xor i1 %470, true, !dbg !1144
  %472 = xor i1 %471, true, !dbg !1144
  %473 = zext i1 %472 to i32, !dbg !1144
  %474 = sext i32 %473 to i64, !dbg !1144
  %475 = icmp ne i64 %474, 0, !dbg !1144
  br i1 %475, label %476, label %511, !dbg !1145

476:                                              ; preds = %467
  br label %477, !dbg !1146

477:                                              ; preds = %476
  %478 = load ptr, ptr %10, align 8, !dbg !1147
  %479 = getelementptr inbounds i8, ptr %478, i64 8, !dbg !1147
  %480 = load ptr, ptr %11, align 8, !dbg !1147
  %481 = icmp uge ptr %479, %480, !dbg !1147
  %482 = zext i1 %481 to i32, !dbg !1147
  %483 = sext i32 %482 to i64, !dbg !1147
  %484 = icmp ne i64 %483, 0, !dbg !1147
  br i1 %484, label %485, label %486, !dbg !1148

485:                                              ; preds = %477
  store i64 0, ptr %5, align 8, !dbg !1147
  br label %575, !dbg !1147

486:                                              ; preds = %477
  %487 = load ptr, ptr %10, align 8, !dbg !1148
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %487, ptr align 1 @.str.22, i64 8, i1 false), !dbg !1148
  %488 = getelementptr inbounds i8, ptr %487, i64 8, !dbg !1148
  store ptr %488, ptr %10, align 8, !dbg !1148
  br label %489, !dbg !1148

489:                                              ; preds = %486
  br label %490, !dbg !1149

490:                                              ; preds = %489
  %491 = load ptr, ptr %10, align 8, !dbg !1150
  %492 = getelementptr inbounds i8, ptr %491, i64 29, !dbg !1150
  %493 = load ptr, ptr %11, align 8, !dbg !1150
  %494 = icmp uge ptr %492, %493, !dbg !1150
  %495 = zext i1 %494 to i32, !dbg !1150
  %496 = sext i32 %495 to i64, !dbg !1150
  %497 = icmp ne i64 %496, 0, !dbg !1150
  br i1 %497, label %498, label %499, !dbg !1151

498:                                              ; preds = %490
  store i64 0, ptr %5, align 8, !dbg !1150
  br label %575, !dbg !1150

499:                                              ; preds = %490
  %500 = load ptr, ptr %10, align 8, !dbg !1151
  %501 = load ptr, ptr %6, align 8, !dbg !1151
  %502 = getelementptr inbounds %struct.lwan_request_t_, ptr %501, i32 0, i32 4, !dbg !1151
  %503 = load ptr, ptr %502, align 8, !dbg !1151
  %504 = getelementptr inbounds %struct.lwan_connection_t_, ptr %503, i32 0, i32 3, !dbg !1151
  %505 = load ptr, ptr %504, align 8, !dbg !1151
  %506 = getelementptr inbounds %struct.lwan_thread_t_, ptr %505, i32 0, i32 1, !dbg !1151
  %507 = getelementptr inbounds %struct.anon.1, ptr %506, i32 0, i32 0, !dbg !1151
  %508 = getelementptr inbounds [30 x i8], ptr %507, i64 0, i64 0, !dbg !1151
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %500, ptr align 8 %508, i64 29, i1 false), !dbg !1151
  %509 = getelementptr inbounds i8, ptr %500, i64 29, !dbg !1151
  store ptr %509, ptr %10, align 8, !dbg !1151
  br label %510, !dbg !1151

510:                                              ; preds = %499
  br label %511, !dbg !1152

511:                                              ; preds = %510, %467
  %512 = load i8, ptr %14, align 1, !dbg !1153
  %513 = trunc i8 %512 to i1, !dbg !1153
  %514 = xor i1 %513, true, !dbg !1153
  %515 = xor i1 %514, true, !dbg !1153
  %516 = xor i1 %515, true, !dbg !1153
  %517 = zext i1 %516 to i32, !dbg !1153
  %518 = sext i32 %517 to i64, !dbg !1153
  %519 = icmp ne i64 %518, 0, !dbg !1153
  br i1 %519, label %520, label %555, !dbg !1154

520:                                              ; preds = %511
  br label %521, !dbg !1155

521:                                              ; preds = %520
  %522 = load ptr, ptr %10, align 8, !dbg !1156
  %523 = getelementptr inbounds i8, ptr %522, i64 11, !dbg !1156
  %524 = load ptr, ptr %11, align 8, !dbg !1156
  %525 = icmp uge ptr %523, %524, !dbg !1156
  %526 = zext i1 %525 to i32, !dbg !1156
  %527 = sext i32 %526 to i64, !dbg !1156
  %528 = icmp ne i64 %527, 0, !dbg !1156
  br i1 %528, label %529, label %530, !dbg !1157

529:                                              ; preds = %521
  store i64 0, ptr %5, align 8, !dbg !1156
  br label %575, !dbg !1156

530:                                              ; preds = %521
  %531 = load ptr, ptr %10, align 8, !dbg !1157
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %531, ptr align 1 @.str.23, i64 11, i1 false), !dbg !1157
  %532 = getelementptr inbounds i8, ptr %531, i64 11, !dbg !1157
  store ptr %532, ptr %10, align 8, !dbg !1157
  br label %533, !dbg !1157

533:                                              ; preds = %530
  br label %534, !dbg !1158

534:                                              ; preds = %533
  %535 = load ptr, ptr %10, align 8, !dbg !1159
  %536 = getelementptr inbounds i8, ptr %535, i64 29, !dbg !1159
  %537 = load ptr, ptr %11, align 8, !dbg !1159
  %538 = icmp uge ptr %536, %537, !dbg !1159
  %539 = zext i1 %538 to i32, !dbg !1159
  %540 = sext i32 %539 to i64, !dbg !1159
  %541 = icmp ne i64 %540, 0, !dbg !1159
  br i1 %541, label %542, label %543, !dbg !1160

542:                                              ; preds = %534
  store i64 0, ptr %5, align 8, !dbg !1159
  br label %575, !dbg !1159

543:                                              ; preds = %534
  %544 = load ptr, ptr %10, align 8, !dbg !1160
  %545 = load ptr, ptr %6, align 8, !dbg !1160
  %546 = getelementptr inbounds %struct.lwan_request_t_, ptr %545, i32 0, i32 4, !dbg !1160
  %547 = load ptr, ptr %546, align 8, !dbg !1160
  %548 = getelementptr inbounds %struct.lwan_connection_t_, ptr %547, i32 0, i32 3, !dbg !1160
  %549 = load ptr, ptr %548, align 8, !dbg !1160
  %550 = getelementptr inbounds %struct.lwan_thread_t_, ptr %549, i32 0, i32 1, !dbg !1160
  %551 = getelementptr inbounds %struct.anon.1, ptr %550, i32 0, i32 1, !dbg !1160
  %552 = getelementptr inbounds [30 x i8], ptr %551, i64 0, i64 0, !dbg !1160
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %544, ptr align 2 %552, i64 29, i1 false), !dbg !1160
  %553 = getelementptr inbounds i8, ptr %544, i64 29, !dbg !1160
  store ptr %553, ptr %10, align 8, !dbg !1160
  br label %554, !dbg !1160

554:                                              ; preds = %543
  br label %555, !dbg !1161

555:                                              ; preds = %554, %511
  br label %556, !dbg !1162

556:                                              ; preds = %555
  %557 = load ptr, ptr %10, align 8, !dbg !1163
  %558 = getelementptr inbounds i8, ptr %557, i64 19, !dbg !1163
  %559 = load ptr, ptr %11, align 8, !dbg !1163
  %560 = icmp uge ptr %558, %559, !dbg !1163
  %561 = zext i1 %560 to i32, !dbg !1163
  %562 = sext i32 %561 to i64, !dbg !1163
  %563 = icmp ne i64 %562, 0, !dbg !1163
  br i1 %563, label %564, label %565, !dbg !1164

564:                                              ; preds = %556
  store i64 0, ptr %5, align 8, !dbg !1163
  br label %575, !dbg !1163

565:                                              ; preds = %556
  %566 = load ptr, ptr %10, align 8, !dbg !1164
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %566, ptr align 1 @.str.24, i64 19, i1 false), !dbg !1164
  %567 = getelementptr inbounds i8, ptr %566, i64 19, !dbg !1164
  store ptr %567, ptr %10, align 8, !dbg !1164
  br label %568, !dbg !1164

568:                                              ; preds = %565
  %569 = load ptr, ptr %10, align 8, !dbg !1165
  %570 = load ptr, ptr %8, align 8, !dbg !1166
  %571 = ptrtoint ptr %569 to i64, !dbg !1167
  %572 = ptrtoint ptr %570 to i64, !dbg !1167
  %573 = sub i64 %571, %572, !dbg !1167
  %574 = sub nsw i64 %573, 1, !dbg !1168
  store i64 %574, ptr %5, align 8, !dbg !1169
  br label %575, !dbg !1169

575:                                              ; preds = %568, %564, %542, %529, %498, %485, %451, %432, %390, %362, %342, %277, %263, %236, %216, %197, %186, %159, %148, %121, %100, %77, %58, %44
  %576 = load i64, ptr %5, align 8, !dbg !1170
  ret i64 %576, !dbg !1170
}

declare i64 @lwan_write(ptr noundef, ptr noundef, i64 noundef) #1

declare i64 @lwan_writev(ptr noundef, ptr noundef, i32 noundef) #1

declare ptr @lwan_tpl_apply_with_buffer(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @lwan_http_status_as_string(i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @lwan_http_status_as_descriptive_string(i32 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare ptr @lwan_http_status_as_string_with_code(i32 noundef) #6

declare ptr @uint_to_string(i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_response_set_chunked(ptr noundef %0, i32 noundef %1) #0 !dbg !1171 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [25 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca i1, align 1
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca [4096 x i8], align 16
  %28 = alloca i64, align 8
  store ptr %0, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1174, metadata !DIExpression()), !dbg !1175
  store i32 %1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1176, metadata !DIExpression()), !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1178, metadata !DIExpression()), !dbg !1182
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1183, metadata !DIExpression()), !dbg !1184
  %29 = load ptr, ptr %25, align 8, !dbg !1185
  %30 = getelementptr inbounds %struct.lwan_request_t_, ptr %29, i32 0, i32 0, !dbg !1187
  %31 = load i32, ptr %30, align 8, !dbg !1187
  %32 = and i32 %31, 64, !dbg !1188
  %33 = icmp ne i32 %32, 0, !dbg !1188
  br i1 %33, label %34, label %35, !dbg !1189

34:                                               ; preds = %2
  store i1 false, ptr %24, align 1, !dbg !1190
  br label %506, !dbg !1190

35:                                               ; preds = %2
  %36 = load ptr, ptr %25, align 8, !dbg !1191
  %37 = getelementptr inbounds %struct.lwan_request_t_, ptr %36, i32 0, i32 0, !dbg !1192
  %38 = load i32, ptr %37, align 8, !dbg !1193
  %39 = or i32 %38, 128, !dbg !1193
  store i32 %39, ptr %37, align 8, !dbg !1193
  %40 = load ptr, ptr %25, align 8, !dbg !1194
  %41 = load i32, ptr %26, align 4, !dbg !1195
  %42 = getelementptr inbounds [4096 x i8], ptr %27, i64 0, i64 0, !dbg !1196
  store ptr %40, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !584, metadata !DIExpression()), !dbg !1197
  store i32 %41, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !1199
  store ptr %42, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !592, metadata !DIExpression()), !dbg !1200
  store i64 4096, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !594, metadata !DIExpression()), !dbg !1201
  call void @llvm.dbg.declare(metadata ptr %8, metadata !596, metadata !DIExpression()), !dbg !1202
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !1203
  %43 = load ptr, ptr %6, align 8, !dbg !1204
  %44 = load i64, ptr %7, align 8, !dbg !1205
  %45 = getelementptr inbounds i8, ptr %43, i64 %44, !dbg !1206
  store ptr %45, ptr %9, align 8, !dbg !1203
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !1207
  call void @llvm.dbg.declare(metadata ptr %11, metadata !605, metadata !DIExpression()), !dbg !1208
  store i8 0, ptr %11, align 1, !dbg !1208
  call void @llvm.dbg.declare(metadata ptr %12, metadata !607, metadata !DIExpression()), !dbg !1209
  store i8 0, ptr %12, align 1, !dbg !1209
  %46 = load ptr, ptr %6, align 8, !dbg !1210
  store ptr %46, ptr %8, align 8, !dbg !1211
  %47 = load ptr, ptr %4, align 8, !dbg !1212
  %48 = load i32, ptr %47, align 8, !dbg !1213
  %49 = and i32 %48, 32, !dbg !1214
  %50 = icmp ne i32 %49, 0, !dbg !1214
  br i1 %50, label %51, label %62, !dbg !1215

51:                                               ; preds = %35
  %52 = load ptr, ptr %8, align 8, !dbg !1216
  %53 = getelementptr inbounds i8, ptr %52, i64 9, !dbg !1216
  %54 = load ptr, ptr %9, align 8, !dbg !1216
  %55 = icmp uge ptr %53, %54, !dbg !1216
  %56 = zext i1 %55 to i32, !dbg !1216
  %57 = sext i32 %56 to i64, !dbg !1216
  br i1 %55, label %58, label %59, !dbg !1217

58:                                               ; preds = %51
  store i64 0, ptr %3, align 8, !dbg !1216
  br label %488, !dbg !1216

59:                                               ; preds = %51
  %60 = load ptr, ptr %8, align 8, !dbg !1217
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %60, ptr align 1 @.str.10, i64 9, i1 false), !dbg !1217
  %61 = getelementptr inbounds i8, ptr %60, i64 9, !dbg !1217
  store ptr %61, ptr %8, align 8, !dbg !1217
  br label %73, !dbg !1217

62:                                               ; preds = %35
  %63 = load ptr, ptr %8, align 8, !dbg !1218
  %64 = getelementptr inbounds i8, ptr %63, i64 9, !dbg !1218
  %65 = load ptr, ptr %9, align 8, !dbg !1218
  %66 = icmp uge ptr %64, %65, !dbg !1218
  %67 = zext i1 %66 to i32, !dbg !1218
  %68 = sext i32 %67 to i64, !dbg !1218
  br i1 %66, label %69, label %70, !dbg !1219

69:                                               ; preds = %62
  store i64 0, ptr %3, align 8, !dbg !1218
  br label %488, !dbg !1218

70:                                               ; preds = %62
  %71 = load ptr, ptr %8, align 8, !dbg !1219
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %71, ptr align 1 @.str.11, i64 9, i1 false), !dbg !1219
  %72 = getelementptr inbounds i8, ptr %71, i64 9, !dbg !1219
  store ptr %72, ptr %8, align 8, !dbg !1219
  br label %73

73:                                               ; preds = %70, %59
  call void @llvm.dbg.declare(metadata ptr %13, metadata !624, metadata !DIExpression()), !dbg !1220
  %74 = load i32, ptr %5, align 4, !dbg !1220
  %75 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %74) #11, !dbg !1220
  %76 = call i64 @strlen(ptr noundef %75) #11, !dbg !1220
  store i64 %76, ptr %13, align 8, !dbg !1220
  %77 = load ptr, ptr %8, align 8, !dbg !1221
  %78 = load i64, ptr %13, align 8, !dbg !1221
  %79 = getelementptr inbounds i8, ptr %77, i64 %78, !dbg !1221
  %80 = load ptr, ptr %9, align 8, !dbg !1221
  %81 = icmp uge ptr %79, %80, !dbg !1221
  %82 = zext i1 %81 to i32, !dbg !1221
  %83 = sext i32 %82 to i64, !dbg !1221
  br i1 %81, label %84, label %85, !dbg !1222

84:                                               ; preds = %73
  store i64 0, ptr %3, align 8, !dbg !1221
  br label %488, !dbg !1221

85:                                               ; preds = %73
  %86 = load ptr, ptr %8, align 8, !dbg !1222
  %87 = load i32, ptr %5, align 4, !dbg !1222
  %88 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %87) #11, !dbg !1222
  %89 = load i64, ptr %13, align 8, !dbg !1222
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %86, ptr align 1 %88, i64 %89, i1 false), !dbg !1222
  %90 = getelementptr inbounds i8, ptr %86, i64 %89, !dbg !1222
  store ptr %90, ptr %8, align 8, !dbg !1222
  %91 = load ptr, ptr %4, align 8, !dbg !1223
  %92 = load i32, ptr %91, align 8, !dbg !1224
  %93 = and i32 %92, 128, !dbg !1225
  %94 = icmp ne i32 %93, 0, !dbg !1225
  br i1 %94, label %95, label %106, !dbg !1226

95:                                               ; preds = %85
  %96 = load ptr, ptr %8, align 8, !dbg !1227
  %97 = getelementptr inbounds i8, ptr %96, i64 28, !dbg !1227
  %98 = load ptr, ptr %9, align 8, !dbg !1227
  %99 = icmp uge ptr %97, %98, !dbg !1227
  %100 = zext i1 %99 to i32, !dbg !1227
  %101 = sext i32 %100 to i64, !dbg !1227
  br i1 %99, label %102, label %103, !dbg !1228

102:                                              ; preds = %95
  store i64 0, ptr %3, align 8, !dbg !1227
  br label %488, !dbg !1227

103:                                              ; preds = %95
  %104 = load ptr, ptr %8, align 8, !dbg !1228
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %104, ptr align 1 @.str.12, i64 28, i1 false), !dbg !1228
  %105 = getelementptr inbounds i8, ptr %104, i64 28, !dbg !1228
  store ptr %105, ptr %8, align 8, !dbg !1228
  br label %188, !dbg !1229

106:                                              ; preds = %85
  %107 = load ptr, ptr %4, align 8, !dbg !1230
  %108 = load i32, ptr %107, align 8, !dbg !1231
  %109 = and i32 %108, 256, !dbg !1232
  %110 = icmp ne i32 %109, 0, !dbg !1232
  br i1 %110, label %111, label %112, !dbg !1233

111:                                              ; preds = %106
  br label %187, !dbg !1234

112:                                              ; preds = %106
  %113 = load ptr, ptr %8, align 8, !dbg !1235
  %114 = getelementptr inbounds i8, ptr %113, i64 18, !dbg !1235
  %115 = load ptr, ptr %9, align 8, !dbg !1235
  %116 = icmp uge ptr %114, %115, !dbg !1235
  %117 = zext i1 %116 to i32, !dbg !1235
  %118 = sext i32 %117 to i64, !dbg !1235
  br i1 %116, label %119, label %120, !dbg !1236

119:                                              ; preds = %112
  store i64 0, ptr %3, align 8, !dbg !1235
  br label %488, !dbg !1235

120:                                              ; preds = %112
  %121 = load ptr, ptr %8, align 8, !dbg !1236
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %121, ptr align 1 @.str.13, i64 18, i1 false), !dbg !1236
  %122 = getelementptr inbounds i8, ptr %121, i64 18, !dbg !1236
  store ptr %122, ptr %8, align 8, !dbg !1236
  %123 = load ptr, ptr %4, align 8, !dbg !1237
  %124 = getelementptr inbounds %struct.lwan_request_t_, ptr %123, i32 0, i32 8, !dbg !1238
  %125 = getelementptr inbounds %struct.lwan_response_t_, ptr %124, i32 0, i32 4, !dbg !1239
  %126 = load ptr, ptr %125, align 8, !dbg !1240
  %127 = icmp ne ptr %126, null, !dbg !1237
  br i1 %127, label %128, label %156, !dbg !1241

128:                                              ; preds = %120
  call void @llvm.dbg.declare(metadata ptr %14, metadata !660, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %15, metadata !663, metadata !DIExpression()), !dbg !1242
  %129 = load ptr, ptr %4, align 8, !dbg !1242
  %130 = getelementptr inbounds %struct.lwan_request_t_, ptr %129, i32 0, i32 8, !dbg !1242
  %131 = getelementptr inbounds %struct.lwan_response_t_, ptr %130, i32 0, i32 2, !dbg !1242
  %132 = load i64, ptr %131, align 8, !dbg !1242
  %133 = call ptr @uint_to_string(i64 noundef %132, ptr noundef %10, ptr noundef %14) #12, !dbg !1242
  store ptr %133, ptr %15, align 8, !dbg !1242
  %134 = load ptr, ptr %8, align 8, !dbg !1243
  %135 = load i64, ptr %14, align 8, !dbg !1243
  %136 = getelementptr inbounds i8, ptr %134, i64 %135, !dbg !1243
  %137 = load ptr, ptr %9, align 8, !dbg !1243
  %138 = icmp uge ptr %136, %137, !dbg !1243
  %139 = zext i1 %138 to i32, !dbg !1243
  %140 = sext i32 %139 to i64, !dbg !1243
  br i1 %138, label %141, label %142, !dbg !1242

141:                                              ; preds = %128
  store i64 0, ptr %3, align 8, !dbg !1243
  br label %488, !dbg !1243

142:                                              ; preds = %128
  %143 = load ptr, ptr %8, align 8, !dbg !1244
  %144 = load i64, ptr %14, align 8, !dbg !1244
  %145 = getelementptr inbounds i8, ptr %143, i64 %144, !dbg !1244
  %146 = load ptr, ptr %9, align 8, !dbg !1244
  %147 = icmp uge ptr %145, %146, !dbg !1244
  %148 = zext i1 %147 to i32, !dbg !1244
  %149 = sext i32 %148 to i64, !dbg !1244
  br i1 %147, label %150, label %151, !dbg !1245

150:                                              ; preds = %142
  store i64 0, ptr %3, align 8, !dbg !1244
  br label %488, !dbg !1244

151:                                              ; preds = %142
  %152 = load ptr, ptr %8, align 8, !dbg !1245
  %153 = load ptr, ptr %15, align 8, !dbg !1245
  %154 = load i64, ptr %14, align 8, !dbg !1245
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %152, ptr align 1 %153, i64 %154, i1 false), !dbg !1245
  %155 = getelementptr inbounds i8, ptr %152, i64 %154, !dbg !1245
  store ptr %155, ptr %8, align 8, !dbg !1245
  br label %186, !dbg !1242

156:                                              ; preds = %120
  call void @llvm.dbg.declare(metadata ptr %16, metadata !670, metadata !DIExpression()), !dbg !1246
  call void @llvm.dbg.declare(metadata ptr %17, metadata !673, metadata !DIExpression()), !dbg !1246
  %157 = load ptr, ptr %4, align 8, !dbg !1246
  %158 = getelementptr inbounds %struct.lwan_request_t_, ptr %157, i32 0, i32 8, !dbg !1246
  %159 = load ptr, ptr %158, align 8, !dbg !1246
  %160 = getelementptr inbounds %struct.strbuf_t_, ptr %159, i32 0, i32 1, !dbg !1246
  %161 = getelementptr inbounds %struct.anon, ptr %160, i32 0, i32 1, !dbg !1246
  %162 = load i64, ptr %161, align 8, !dbg !1246
  %163 = call ptr @uint_to_string(i64 noundef %162, ptr noundef %10, ptr noundef %16) #12, !dbg !1246
  store ptr %163, ptr %17, align 8, !dbg !1246
  %164 = load ptr, ptr %8, align 8, !dbg !1247
  %165 = load i64, ptr %16, align 8, !dbg !1247
  %166 = getelementptr inbounds i8, ptr %164, i64 %165, !dbg !1247
  %167 = load ptr, ptr %9, align 8, !dbg !1247
  %168 = icmp uge ptr %166, %167, !dbg !1247
  %169 = zext i1 %168 to i32, !dbg !1247
  %170 = sext i32 %169 to i64, !dbg !1247
  br i1 %168, label %171, label %172, !dbg !1246

171:                                              ; preds = %156
  store i64 0, ptr %3, align 8, !dbg !1247
  br label %488, !dbg !1247

172:                                              ; preds = %156
  %173 = load ptr, ptr %8, align 8, !dbg !1248
  %174 = load i64, ptr %16, align 8, !dbg !1248
  %175 = getelementptr inbounds i8, ptr %173, i64 %174, !dbg !1248
  %176 = load ptr, ptr %9, align 8, !dbg !1248
  %177 = icmp uge ptr %175, %176, !dbg !1248
  %178 = zext i1 %177 to i32, !dbg !1248
  %179 = sext i32 %178 to i64, !dbg !1248
  br i1 %177, label %180, label %181, !dbg !1249

180:                                              ; preds = %172
  store i64 0, ptr %3, align 8, !dbg !1248
  br label %488, !dbg !1248

181:                                              ; preds = %172
  %182 = load ptr, ptr %8, align 8, !dbg !1249
  %183 = load ptr, ptr %17, align 8, !dbg !1249
  %184 = load i64, ptr %16, align 8, !dbg !1249
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %182, ptr align 1 %183, i64 %184, i1 false), !dbg !1249
  %185 = getelementptr inbounds i8, ptr %182, i64 %184, !dbg !1249
  store ptr %185, ptr %8, align 8, !dbg !1249
  br label %186

186:                                              ; preds = %181, %151
  br label %187

187:                                              ; preds = %186, %111
  br label %188

188:                                              ; preds = %187, %103
  %189 = load ptr, ptr %8, align 8, !dbg !1250
  %190 = getelementptr inbounds i8, ptr %189, i64 16, !dbg !1250
  %191 = load ptr, ptr %9, align 8, !dbg !1250
  %192 = icmp uge ptr %190, %191, !dbg !1250
  %193 = zext i1 %192 to i32, !dbg !1250
  %194 = sext i32 %193 to i64, !dbg !1250
  br i1 %192, label %195, label %196, !dbg !1251

195:                                              ; preds = %188
  store i64 0, ptr %3, align 8, !dbg !1250
  br label %488, !dbg !1250

196:                                              ; preds = %188
  %197 = load ptr, ptr %8, align 8, !dbg !1251
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %197, ptr align 1 @.str.14, i64 16, i1 false), !dbg !1251
  %198 = getelementptr inbounds i8, ptr %197, i64 16, !dbg !1251
  store ptr %198, ptr %8, align 8, !dbg !1251
  call void @llvm.dbg.declare(metadata ptr %18, metadata !684, metadata !DIExpression()), !dbg !1252
  %199 = load ptr, ptr %4, align 8, !dbg !1252
  %200 = getelementptr inbounds %struct.lwan_request_t_, ptr %199, i32 0, i32 8, !dbg !1252
  %201 = getelementptr inbounds %struct.lwan_response_t_, ptr %200, i32 0, i32 1, !dbg !1252
  %202 = load ptr, ptr %201, align 8, !dbg !1252
  %203 = call i64 @strlen(ptr noundef %202) #11, !dbg !1252
  store i64 %203, ptr %18, align 8, !dbg !1252
  %204 = load ptr, ptr %8, align 8, !dbg !1253
  %205 = load i64, ptr %18, align 8, !dbg !1253
  %206 = getelementptr inbounds i8, ptr %204, i64 %205, !dbg !1253
  %207 = load ptr, ptr %9, align 8, !dbg !1253
  %208 = icmp uge ptr %206, %207, !dbg !1253
  %209 = zext i1 %208 to i32, !dbg !1253
  %210 = sext i32 %209 to i64, !dbg !1253
  br i1 %208, label %211, label %212, !dbg !1254

211:                                              ; preds = %196
  store i64 0, ptr %3, align 8, !dbg !1253
  br label %488, !dbg !1253

212:                                              ; preds = %196
  %213 = load ptr, ptr %8, align 8, !dbg !1254
  %214 = load ptr, ptr %4, align 8, !dbg !1254
  %215 = getelementptr inbounds %struct.lwan_request_t_, ptr %214, i32 0, i32 8, !dbg !1254
  %216 = getelementptr inbounds %struct.lwan_response_t_, ptr %215, i32 0, i32 1, !dbg !1254
  %217 = load ptr, ptr %216, align 8, !dbg !1254
  %218 = load i64, ptr %18, align 8, !dbg !1254
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %213, ptr align 1 %217, i64 %218, i1 false), !dbg !1254
  %219 = getelementptr inbounds i8, ptr %213, i64 %218, !dbg !1254
  store ptr %219, ptr %8, align 8, !dbg !1254
  %220 = load ptr, ptr %4, align 8, !dbg !1255
  %221 = getelementptr inbounds %struct.lwan_request_t_, ptr %220, i32 0, i32 4, !dbg !1256
  %222 = load ptr, ptr %221, align 8, !dbg !1256
  %223 = load i32, ptr %222, align 8, !dbg !1257
  %224 = and i32 %223, 1, !dbg !1258
  %225 = icmp ne i32 %224, 0, !dbg !1258
  br i1 %225, label %226, label %237, !dbg !1259

226:                                              ; preds = %212
  %227 = load ptr, ptr %8, align 8, !dbg !1260
  %228 = getelementptr inbounds i8, ptr %227, i64 24, !dbg !1260
  %229 = load ptr, ptr %9, align 8, !dbg !1260
  %230 = icmp uge ptr %228, %229, !dbg !1260
  %231 = zext i1 %230 to i32, !dbg !1260
  %232 = sext i32 %231 to i64, !dbg !1260
  br i1 %230, label %233, label %234, !dbg !1261

233:                                              ; preds = %226
  store i64 0, ptr %3, align 8, !dbg !1260
  br label %488, !dbg !1260

234:                                              ; preds = %226
  %235 = load ptr, ptr %8, align 8, !dbg !1261
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %235, ptr align 1 @.str.15, i64 24, i1 false), !dbg !1261
  %236 = getelementptr inbounds i8, ptr %235, i64 24, !dbg !1261
  store ptr %236, ptr %8, align 8, !dbg !1261
  br label %248, !dbg !1261

237:                                              ; preds = %212
  %238 = load ptr, ptr %8, align 8, !dbg !1262
  %239 = getelementptr inbounds i8, ptr %238, i64 19, !dbg !1262
  %240 = load ptr, ptr %9, align 8, !dbg !1262
  %241 = icmp uge ptr %239, %240, !dbg !1262
  %242 = zext i1 %241 to i32, !dbg !1262
  %243 = sext i32 %242 to i64, !dbg !1262
  br i1 %241, label %244, label %245, !dbg !1263

244:                                              ; preds = %237
  store i64 0, ptr %3, align 8, !dbg !1262
  br label %488, !dbg !1262

245:                                              ; preds = %237
  %246 = load ptr, ptr %8, align 8, !dbg !1263
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %246, ptr align 1 @.str.16, i64 19, i1 false), !dbg !1263
  %247 = getelementptr inbounds i8, ptr %246, i64 19, !dbg !1263
  store ptr %247, ptr %8, align 8, !dbg !1263
  br label %248

248:                                              ; preds = %245, %234
  %249 = load i32, ptr %5, align 4, !dbg !1264
  %250 = icmp ult i32 %249, 400, !dbg !1265
  br i1 %250, label %251, label %350, !dbg !1266

251:                                              ; preds = %248
  %252 = load ptr, ptr %4, align 8, !dbg !1267
  %253 = getelementptr inbounds %struct.lwan_request_t_, ptr %252, i32 0, i32 8, !dbg !1268
  %254 = getelementptr inbounds %struct.lwan_response_t_, ptr %253, i32 0, i32 3, !dbg !1269
  %255 = load ptr, ptr %254, align 8, !dbg !1269
  %256 = icmp ne ptr %255, null, !dbg !1267
  br i1 %256, label %257, label %350, !dbg !1270

257:                                              ; preds = %251
  call void @llvm.dbg.declare(metadata ptr %19, metadata !713, metadata !DIExpression()), !dbg !1271
  %258 = load ptr, ptr %4, align 8, !dbg !1272
  %259 = getelementptr inbounds %struct.lwan_request_t_, ptr %258, i32 0, i32 8, !dbg !1273
  %260 = getelementptr inbounds %struct.lwan_response_t_, ptr %259, i32 0, i32 3, !dbg !1274
  %261 = load ptr, ptr %260, align 8, !dbg !1274
  store ptr %261, ptr %19, align 8, !dbg !1275
  br label %262, !dbg !1276

262:                                              ; preds = %346, %257
  %263 = load ptr, ptr %19, align 8, !dbg !1277
  %264 = load ptr, ptr %263, align 8, !dbg !1278
  %265 = icmp ne ptr %264, null, !dbg !1279
  br i1 %265, label %266, label %349, !dbg !1279

266:                                              ; preds = %262
  %267 = load ptr, ptr %19, align 8, !dbg !1280
  %268 = load ptr, ptr %267, align 8, !dbg !1280
  %269 = call i32 @strcmp(ptr noundef %268, ptr noundef @.str.17) #11, !dbg !1280
  %270 = icmp ne i32 %269, 0, !dbg !1280
  %271 = xor i1 %270, true, !dbg !1280
  %272 = zext i1 %271 to i32, !dbg !1280
  %273 = sext i32 %272 to i64, !dbg !1280
  br i1 %271, label %274, label %275, !dbg !1281

274:                                              ; preds = %266
  br label %346, !dbg !1282

275:                                              ; preds = %266
  %276 = load ptr, ptr %19, align 8, !dbg !1283
  %277 = load ptr, ptr %276, align 8, !dbg !1283
  %278 = call i32 @strcmp(ptr noundef %277, ptr noundef @.str.18) #11, !dbg !1283
  %279 = icmp ne i32 %278, 0, !dbg !1283
  %280 = xor i1 %279, true, !dbg !1283
  %281 = zext i1 %280 to i32, !dbg !1283
  %282 = sext i32 %281 to i64, !dbg !1283
  br i1 %280, label %283, label %284, !dbg !1284

283:                                              ; preds = %275
  store i8 1, ptr %11, align 1, !dbg !1285
  br label %284, !dbg !1286

284:                                              ; preds = %283, %275
  %285 = load ptr, ptr %19, align 8, !dbg !1287
  %286 = load ptr, ptr %285, align 8, !dbg !1287
  %287 = call i32 @strcmp(ptr noundef %286, ptr noundef @.str.19) #11, !dbg !1287
  %288 = icmp ne i32 %287, 0, !dbg !1287
  %289 = xor i1 %288, true, !dbg !1287
  %290 = zext i1 %289 to i32, !dbg !1287
  %291 = sext i32 %290 to i64, !dbg !1287
  br i1 %289, label %292, label %293, !dbg !1288

292:                                              ; preds = %284
  store i8 1, ptr %12, align 1, !dbg !1289
  br label %293, !dbg !1290

293:                                              ; preds = %292, %284
  %294 = load ptr, ptr %8, align 8, !dbg !1291
  %295 = getelementptr inbounds i8, ptr %294, i64 4, !dbg !1291
  %296 = load ptr, ptr %9, align 8, !dbg !1291
  %297 = icmp uge ptr %295, %296, !dbg !1291
  %298 = zext i1 %297 to i32, !dbg !1291
  %299 = sext i32 %298 to i64, !dbg !1291
  br i1 %297, label %300, label %301, !dbg !1292

300:                                              ; preds = %293
  store i64 0, ptr %3, align 8, !dbg !1291
  br label %488, !dbg !1291

301:                                              ; preds = %293
  %302 = load ptr, ptr %8, align 8, !dbg !1293
  %303 = getelementptr inbounds i8, ptr %302, i32 1, !dbg !1293
  store ptr %303, ptr %8, align 8, !dbg !1293
  store i8 13, ptr %302, align 1, !dbg !1293
  %304 = load ptr, ptr %8, align 8, !dbg !1294
  %305 = getelementptr inbounds i8, ptr %304, i32 1, !dbg !1294
  store ptr %305, ptr %8, align 8, !dbg !1294
  store i8 10, ptr %304, align 1, !dbg !1294
  call void @llvm.dbg.declare(metadata ptr %20, metadata !746, metadata !DIExpression()), !dbg !1295
  %306 = load ptr, ptr %19, align 8, !dbg !1295
  %307 = load ptr, ptr %306, align 8, !dbg !1295
  %308 = call i64 @strlen(ptr noundef %307) #11, !dbg !1295
  store i64 %308, ptr %20, align 8, !dbg !1295
  %309 = load ptr, ptr %8, align 8, !dbg !1296
  %310 = load i64, ptr %20, align 8, !dbg !1296
  %311 = getelementptr inbounds i8, ptr %309, i64 %310, !dbg !1296
  %312 = load ptr, ptr %9, align 8, !dbg !1296
  %313 = icmp uge ptr %311, %312, !dbg !1296
  %314 = zext i1 %313 to i32, !dbg !1296
  %315 = sext i32 %314 to i64, !dbg !1296
  br i1 %313, label %316, label %317, !dbg !1297

316:                                              ; preds = %301
  store i64 0, ptr %3, align 8, !dbg !1296
  br label %488, !dbg !1296

317:                                              ; preds = %301
  %318 = load ptr, ptr %8, align 8, !dbg !1297
  %319 = load ptr, ptr %19, align 8, !dbg !1297
  %320 = load ptr, ptr %319, align 8, !dbg !1297
  %321 = load i64, ptr %20, align 8, !dbg !1297
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %318, ptr align 1 %320, i64 %321, i1 false), !dbg !1297
  %322 = getelementptr inbounds i8, ptr %318, i64 %321, !dbg !1297
  store ptr %322, ptr %8, align 8, !dbg !1297
  %323 = load ptr, ptr %8, align 8, !dbg !1298
  %324 = getelementptr inbounds i8, ptr %323, i32 1, !dbg !1298
  store ptr %324, ptr %8, align 8, !dbg !1298
  store i8 58, ptr %323, align 1, !dbg !1298
  %325 = load ptr, ptr %8, align 8, !dbg !1299
  %326 = getelementptr inbounds i8, ptr %325, i32 1, !dbg !1299
  store ptr %326, ptr %8, align 8, !dbg !1299
  store i8 32, ptr %325, align 1, !dbg !1299
  call void @llvm.dbg.declare(metadata ptr %21, metadata !755, metadata !DIExpression()), !dbg !1300
  %327 = load ptr, ptr %19, align 8, !dbg !1300
  %328 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %327, i32 0, i32 1, !dbg !1300
  %329 = load ptr, ptr %328, align 8, !dbg !1300
  %330 = call i64 @strlen(ptr noundef %329) #11, !dbg !1300
  store i64 %330, ptr %21, align 8, !dbg !1300
  %331 = load ptr, ptr %8, align 8, !dbg !1301
  %332 = load i64, ptr %21, align 8, !dbg !1301
  %333 = getelementptr inbounds i8, ptr %331, i64 %332, !dbg !1301
  %334 = load ptr, ptr %9, align 8, !dbg !1301
  %335 = icmp uge ptr %333, %334, !dbg !1301
  %336 = zext i1 %335 to i32, !dbg !1301
  %337 = sext i32 %336 to i64, !dbg !1301
  br i1 %335, label %338, label %339, !dbg !1302

338:                                              ; preds = %317
  store i64 0, ptr %3, align 8, !dbg !1301
  br label %488, !dbg !1301

339:                                              ; preds = %317
  %340 = load ptr, ptr %8, align 8, !dbg !1302
  %341 = load ptr, ptr %19, align 8, !dbg !1302
  %342 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %341, i32 0, i32 1, !dbg !1302
  %343 = load ptr, ptr %342, align 8, !dbg !1302
  %344 = load i64, ptr %21, align 8, !dbg !1302
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %340, ptr align 1 %343, i64 %344, i1 false), !dbg !1302
  %345 = getelementptr inbounds i8, ptr %340, i64 %344, !dbg !1302
  store ptr %345, ptr %8, align 8, !dbg !1302
  br label %346, !dbg !1303

346:                                              ; preds = %339, %274
  %347 = load ptr, ptr %19, align 8, !dbg !1304
  %348 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %347, i32 1, !dbg !1304
  store ptr %348, ptr %19, align 8, !dbg !1304
  br label %262, !dbg !1305, !llvm.loop !1306

349:                                              ; preds = %262
  br label %402, !dbg !1308

350:                                              ; preds = %251, %248
  %351 = load i32, ptr %5, align 4, !dbg !1309
  %352 = icmp eq i32 %351, 401, !dbg !1310
  br i1 %352, label %353, label %401, !dbg !1311

353:                                              ; preds = %350
  call void @llvm.dbg.declare(metadata ptr %22, metadata !773, metadata !DIExpression()), !dbg !1312
  %354 = load ptr, ptr %4, align 8, !dbg !1313
  %355 = getelementptr inbounds %struct.lwan_request_t_, ptr %354, i32 0, i32 8, !dbg !1314
  %356 = getelementptr inbounds %struct.lwan_response_t_, ptr %355, i32 0, i32 3, !dbg !1315
  %357 = load ptr, ptr %356, align 8, !dbg !1315
  store ptr %357, ptr %22, align 8, !dbg !1316
  br label %358, !dbg !1317

358:                                              ; preds = %397, %353
  %359 = load ptr, ptr %22, align 8, !dbg !1318
  %360 = load ptr, ptr %359, align 8, !dbg !1319
  %361 = icmp ne ptr %360, null, !dbg !1320
  br i1 %361, label %362, label %400, !dbg !1320

362:                                              ; preds = %358
  %363 = load ptr, ptr %22, align 8, !dbg !1321
  %364 = load ptr, ptr %363, align 8, !dbg !1322
  %365 = call i32 @strcmp(ptr noundef %364, ptr noundef @.str.20) #11, !dbg !1323
  %366 = icmp ne i32 %365, 0, !dbg !1323
  br i1 %366, label %397, label %367, !dbg !1324

367:                                              ; preds = %362
  %368 = load ptr, ptr %8, align 8, !dbg !1325
  %369 = getelementptr inbounds i8, ptr %368, i64 20, !dbg !1325
  %370 = load ptr, ptr %9, align 8, !dbg !1325
  %371 = icmp uge ptr %369, %370, !dbg !1325
  %372 = zext i1 %371 to i32, !dbg !1325
  %373 = sext i32 %372 to i64, !dbg !1325
  br i1 %371, label %374, label %375, !dbg !1326

374:                                              ; preds = %367
  store i64 0, ptr %3, align 8, !dbg !1325
  br label %488, !dbg !1325

375:                                              ; preds = %367
  %376 = load ptr, ptr %8, align 8, !dbg !1326
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %376, ptr align 1 @.str.21, i64 20, i1 false), !dbg !1326
  %377 = getelementptr inbounds i8, ptr %376, i64 20, !dbg !1326
  store ptr %377, ptr %8, align 8, !dbg !1326
  call void @llvm.dbg.declare(metadata ptr %23, metadata !797, metadata !DIExpression()), !dbg !1327
  %378 = load ptr, ptr %22, align 8, !dbg !1327
  %379 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %378, i32 0, i32 1, !dbg !1327
  %380 = load ptr, ptr %379, align 8, !dbg !1327
  %381 = call i64 @strlen(ptr noundef %380) #11, !dbg !1327
  store i64 %381, ptr %23, align 8, !dbg !1327
  %382 = load ptr, ptr %8, align 8, !dbg !1328
  %383 = load i64, ptr %23, align 8, !dbg !1328
  %384 = getelementptr inbounds i8, ptr %382, i64 %383, !dbg !1328
  %385 = load ptr, ptr %9, align 8, !dbg !1328
  %386 = icmp uge ptr %384, %385, !dbg !1328
  %387 = zext i1 %386 to i32, !dbg !1328
  %388 = sext i32 %387 to i64, !dbg !1328
  br i1 %386, label %389, label %390, !dbg !1329

389:                                              ; preds = %375
  store i64 0, ptr %3, align 8, !dbg !1328
  br label %488, !dbg !1328

390:                                              ; preds = %375
  %391 = load ptr, ptr %8, align 8, !dbg !1329
  %392 = load ptr, ptr %22, align 8, !dbg !1329
  %393 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %392, i32 0, i32 1, !dbg !1329
  %394 = load ptr, ptr %393, align 8, !dbg !1329
  %395 = load i64, ptr %23, align 8, !dbg !1329
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %391, ptr align 1 %394, i64 %395, i1 false), !dbg !1329
  %396 = getelementptr inbounds i8, ptr %391, i64 %395, !dbg !1329
  store ptr %396, ptr %8, align 8, !dbg !1329
  br label %400, !dbg !1330

397:                                              ; preds = %362
  %398 = load ptr, ptr %22, align 8, !dbg !1331
  %399 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %398, i32 1, !dbg !1331
  store ptr %399, ptr %22, align 8, !dbg !1331
  br label %358, !dbg !1332, !llvm.loop !1333

400:                                              ; preds = %390, %358
  br label %401, !dbg !1335

401:                                              ; preds = %400, %350
  br label %402

402:                                              ; preds = %401, %349
  %403 = load i8, ptr %11, align 1, !dbg !1336
  %404 = trunc i8 %403 to i1, !dbg !1336
  %405 = xor i1 %404, true, !dbg !1336
  %406 = xor i1 %404, true, !dbg !1336
  %407 = zext i1 %406 to i32, !dbg !1336
  %408 = sext i32 %407 to i64, !dbg !1336
  br i1 %406, label %409, label %436, !dbg !1337

409:                                              ; preds = %402
  %410 = load ptr, ptr %8, align 8, !dbg !1338
  %411 = getelementptr inbounds i8, ptr %410, i64 8, !dbg !1338
  %412 = load ptr, ptr %9, align 8, !dbg !1338
  %413 = icmp uge ptr %411, %412, !dbg !1338
  %414 = zext i1 %413 to i32, !dbg !1338
  %415 = sext i32 %414 to i64, !dbg !1338
  br i1 %413, label %416, label %417, !dbg !1339

416:                                              ; preds = %409
  store i64 0, ptr %3, align 8, !dbg !1338
  br label %488, !dbg !1338

417:                                              ; preds = %409
  %418 = load ptr, ptr %8, align 8, !dbg !1339
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %418, ptr align 1 @.str.22, i64 8, i1 false), !dbg !1339
  %419 = getelementptr inbounds i8, ptr %418, i64 8, !dbg !1339
  store ptr %419, ptr %8, align 8, !dbg !1339
  %420 = load ptr, ptr %8, align 8, !dbg !1340
  %421 = getelementptr inbounds i8, ptr %420, i64 29, !dbg !1340
  %422 = load ptr, ptr %9, align 8, !dbg !1340
  %423 = icmp uge ptr %421, %422, !dbg !1340
  %424 = zext i1 %423 to i32, !dbg !1340
  %425 = sext i32 %424 to i64, !dbg !1340
  br i1 %423, label %426, label %427, !dbg !1341

426:                                              ; preds = %417
  store i64 0, ptr %3, align 8, !dbg !1340
  br label %488, !dbg !1340

427:                                              ; preds = %417
  %428 = load ptr, ptr %8, align 8, !dbg !1341
  %429 = load ptr, ptr %4, align 8, !dbg !1341
  %430 = getelementptr inbounds %struct.lwan_request_t_, ptr %429, i32 0, i32 4, !dbg !1341
  %431 = load ptr, ptr %430, align 8, !dbg !1341
  %432 = getelementptr inbounds %struct.lwan_connection_t_, ptr %431, i32 0, i32 3, !dbg !1341
  %433 = load ptr, ptr %432, align 8, !dbg !1341
  %434 = getelementptr inbounds %struct.lwan_thread_t_, ptr %433, i32 0, i32 1, !dbg !1341
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %428, ptr align 8 %434, i64 29, i1 false), !dbg !1341
  %435 = getelementptr inbounds i8, ptr %428, i64 29, !dbg !1341
  store ptr %435, ptr %8, align 8, !dbg !1341
  br label %436, !dbg !1342

436:                                              ; preds = %427, %402
  %437 = load i8, ptr %12, align 1, !dbg !1343
  %438 = trunc i8 %437 to i1, !dbg !1343
  %439 = xor i1 %438, true, !dbg !1343
  %440 = xor i1 %438, true, !dbg !1343
  %441 = zext i1 %440 to i32, !dbg !1343
  %442 = sext i32 %441 to i64, !dbg !1343
  br i1 %440, label %443, label %471, !dbg !1344

443:                                              ; preds = %436
  %444 = load ptr, ptr %8, align 8, !dbg !1345
  %445 = getelementptr inbounds i8, ptr %444, i64 11, !dbg !1345
  %446 = load ptr, ptr %9, align 8, !dbg !1345
  %447 = icmp uge ptr %445, %446, !dbg !1345
  %448 = zext i1 %447 to i32, !dbg !1345
  %449 = sext i32 %448 to i64, !dbg !1345
  br i1 %447, label %450, label %451, !dbg !1346

450:                                              ; preds = %443
  store i64 0, ptr %3, align 8, !dbg !1345
  br label %488, !dbg !1345

451:                                              ; preds = %443
  %452 = load ptr, ptr %8, align 8, !dbg !1346
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %452, ptr align 1 @.str.23, i64 11, i1 false), !dbg !1346
  %453 = getelementptr inbounds i8, ptr %452, i64 11, !dbg !1346
  store ptr %453, ptr %8, align 8, !dbg !1346
  %454 = load ptr, ptr %8, align 8, !dbg !1347
  %455 = getelementptr inbounds i8, ptr %454, i64 29, !dbg !1347
  %456 = load ptr, ptr %9, align 8, !dbg !1347
  %457 = icmp uge ptr %455, %456, !dbg !1347
  %458 = zext i1 %457 to i32, !dbg !1347
  %459 = sext i32 %458 to i64, !dbg !1347
  br i1 %457, label %460, label %461, !dbg !1348

460:                                              ; preds = %451
  store i64 0, ptr %3, align 8, !dbg !1347
  br label %488, !dbg !1347

461:                                              ; preds = %451
  %462 = load ptr, ptr %8, align 8, !dbg !1348
  %463 = load ptr, ptr %4, align 8, !dbg !1348
  %464 = getelementptr inbounds %struct.lwan_request_t_, ptr %463, i32 0, i32 4, !dbg !1348
  %465 = load ptr, ptr %464, align 8, !dbg !1348
  %466 = getelementptr inbounds %struct.lwan_connection_t_, ptr %465, i32 0, i32 3, !dbg !1348
  %467 = load ptr, ptr %466, align 8, !dbg !1348
  %468 = getelementptr inbounds %struct.lwan_thread_t_, ptr %467, i32 0, i32 1, !dbg !1348
  %469 = getelementptr inbounds %struct.anon.1, ptr %468, i32 0, i32 1, !dbg !1348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %462, ptr align 2 %469, i64 29, i1 false), !dbg !1348
  %470 = getelementptr inbounds i8, ptr %462, i64 29, !dbg !1348
  store ptr %470, ptr %8, align 8, !dbg !1348
  br label %471, !dbg !1349

471:                                              ; preds = %461, %436
  %472 = load ptr, ptr %8, align 8, !dbg !1350
  %473 = getelementptr inbounds i8, ptr %472, i64 19, !dbg !1350
  %474 = load ptr, ptr %9, align 8, !dbg !1350
  %475 = icmp uge ptr %473, %474, !dbg !1350
  %476 = zext i1 %475 to i32, !dbg !1350
  %477 = sext i32 %476 to i64, !dbg !1350
  br i1 %475, label %478, label %479, !dbg !1351

478:                                              ; preds = %471
  store i64 0, ptr %3, align 8, !dbg !1350
  br label %488, !dbg !1350

479:                                              ; preds = %471
  %480 = load ptr, ptr %8, align 8, !dbg !1351
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %480, ptr align 1 @.str.24, i64 19, i1 false), !dbg !1351
  %481 = getelementptr inbounds i8, ptr %480, i64 19, !dbg !1351
  store ptr %481, ptr %8, align 8, !dbg !1351
  %482 = load ptr, ptr %8, align 8, !dbg !1352
  %483 = load ptr, ptr %6, align 8, !dbg !1353
  %484 = ptrtoint ptr %482 to i64, !dbg !1354
  %485 = ptrtoint ptr %483 to i64, !dbg !1354
  %486 = sub i64 %484, %485, !dbg !1354
  %487 = sub nsw i64 %486, 1, !dbg !1355
  store i64 %487, ptr %3, align 8, !dbg !1356
  br label %488, !dbg !1356

488:                                              ; preds = %58, %69, %84, %102, %119, %141, %150, %171, %180, %195, %211, %233, %244, %300, %316, %338, %374, %389, %416, %426, %450, %460, %478, %479
  %489 = load i64, ptr %3, align 8, !dbg !1357
  store i64 %489, ptr %28, align 8, !dbg !1358
  %490 = load i64, ptr %28, align 8, !dbg !1359
  %491 = icmp ne i64 %490, 0, !dbg !1359
  %492 = xor i1 %491, true, !dbg !1359
  %493 = zext i1 %492 to i32, !dbg !1359
  %494 = sext i32 %493 to i64, !dbg !1359
  %495 = icmp ne i64 %494, 0, !dbg !1359
  br i1 %495, label %496, label %497, !dbg !1361

496:                                              ; preds = %488
  store i1 false, ptr %24, align 1, !dbg !1362
  br label %506, !dbg !1362

497:                                              ; preds = %488
  %498 = load ptr, ptr %25, align 8, !dbg !1363
  %499 = getelementptr inbounds %struct.lwan_request_t_, ptr %498, i32 0, i32 0, !dbg !1364
  %500 = load i32, ptr %499, align 8, !dbg !1365
  %501 = or i32 %500, 64, !dbg !1365
  store i32 %501, ptr %499, align 8, !dbg !1365
  %502 = load ptr, ptr %25, align 8, !dbg !1366
  %503 = getelementptr inbounds [4096 x i8], ptr %27, i64 0, i64 0, !dbg !1367
  %504 = load i64, ptr %28, align 8, !dbg !1368
  %505 = call i64 @lwan_send(ptr noundef %502, ptr noundef %503, i64 noundef %504, i32 noundef 32768), !dbg !1369
  store i1 true, ptr %24, align 1, !dbg !1370
  br label %506, !dbg !1370

506:                                              ; preds = %497, %496, %34
  %507 = load i1, ptr %24, align 1, !dbg !1371
  ret i1 %507, !dbg !1371
}

declare i64 @lwan_send(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lwan_response_set_event_stream(ptr noundef %0, i32 noundef %1) #0 !dbg !1372 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [25 x i8], align 16
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i64, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca i1, align 1
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  %27 = alloca [4096 x i8], align 16
  %28 = alloca i64, align 8
  store ptr %0, ptr %25, align 8
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1373, metadata !DIExpression()), !dbg !1374
  store i32 %1, ptr %26, align 4
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1375, metadata !DIExpression()), !dbg !1376
  call void @llvm.dbg.declare(metadata ptr %27, metadata !1377, metadata !DIExpression()), !dbg !1378
  call void @llvm.dbg.declare(metadata ptr %28, metadata !1379, metadata !DIExpression()), !dbg !1380
  %29 = load ptr, ptr %25, align 8, !dbg !1381
  %30 = getelementptr inbounds %struct.lwan_request_t_, ptr %29, i32 0, i32 0, !dbg !1383
  %31 = load i32, ptr %30, align 8, !dbg !1383
  %32 = and i32 %31, 64, !dbg !1384
  %33 = icmp ne i32 %32, 0, !dbg !1384
  br i1 %33, label %34, label %35, !dbg !1385

34:                                               ; preds = %2
  store i1 false, ptr %24, align 1, !dbg !1386
  br label %509, !dbg !1386

35:                                               ; preds = %2
  %36 = load ptr, ptr %25, align 8, !dbg !1387
  %37 = getelementptr inbounds %struct.lwan_request_t_, ptr %36, i32 0, i32 8, !dbg !1388
  %38 = getelementptr inbounds %struct.lwan_response_t_, ptr %37, i32 0, i32 1, !dbg !1389
  store ptr @.str.27, ptr %38, align 8, !dbg !1390
  %39 = load ptr, ptr %25, align 8, !dbg !1391
  %40 = getelementptr inbounds %struct.lwan_request_t_, ptr %39, i32 0, i32 0, !dbg !1392
  %41 = load i32, ptr %40, align 8, !dbg !1393
  %42 = or i32 %41, 256, !dbg !1393
  store i32 %42, ptr %40, align 8, !dbg !1393
  %43 = load ptr, ptr %25, align 8, !dbg !1394
  %44 = load i32, ptr %26, align 4, !dbg !1395
  %45 = getelementptr inbounds [4096 x i8], ptr %27, i64 0, i64 0, !dbg !1396
  store ptr %43, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !584, metadata !DIExpression()), !dbg !1397
  store i32 %44, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !590, metadata !DIExpression()), !dbg !1399
  store ptr %45, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !592, metadata !DIExpression()), !dbg !1400
  store i64 4096, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !594, metadata !DIExpression()), !dbg !1401
  call void @llvm.dbg.declare(metadata ptr %8, metadata !596, metadata !DIExpression()), !dbg !1402
  call void @llvm.dbg.declare(metadata ptr %9, metadata !598, metadata !DIExpression()), !dbg !1403
  %46 = load ptr, ptr %6, align 8, !dbg !1404
  %47 = load i64, ptr %7, align 8, !dbg !1405
  %48 = getelementptr inbounds i8, ptr %46, i64 %47, !dbg !1406
  store ptr %48, ptr %9, align 8, !dbg !1403
  call void @llvm.dbg.declare(metadata ptr %10, metadata !603, metadata !DIExpression()), !dbg !1407
  call void @llvm.dbg.declare(metadata ptr %11, metadata !605, metadata !DIExpression()), !dbg !1408
  store i8 0, ptr %11, align 1, !dbg !1408
  call void @llvm.dbg.declare(metadata ptr %12, metadata !607, metadata !DIExpression()), !dbg !1409
  store i8 0, ptr %12, align 1, !dbg !1409
  %49 = load ptr, ptr %6, align 8, !dbg !1410
  store ptr %49, ptr %8, align 8, !dbg !1411
  %50 = load ptr, ptr %4, align 8, !dbg !1412
  %51 = load i32, ptr %50, align 8, !dbg !1413
  %52 = and i32 %51, 32, !dbg !1414
  %53 = icmp ne i32 %52, 0, !dbg !1414
  br i1 %53, label %54, label %65, !dbg !1415

54:                                               ; preds = %35
  %55 = load ptr, ptr %8, align 8, !dbg !1416
  %56 = getelementptr inbounds i8, ptr %55, i64 9, !dbg !1416
  %57 = load ptr, ptr %9, align 8, !dbg !1416
  %58 = icmp uge ptr %56, %57, !dbg !1416
  %59 = zext i1 %58 to i32, !dbg !1416
  %60 = sext i32 %59 to i64, !dbg !1416
  br i1 %58, label %61, label %62, !dbg !1417

61:                                               ; preds = %54
  store i64 0, ptr %3, align 8, !dbg !1416
  br label %491, !dbg !1416

62:                                               ; preds = %54
  %63 = load ptr, ptr %8, align 8, !dbg !1417
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %63, ptr align 1 @.str.10, i64 9, i1 false), !dbg !1417
  %64 = getelementptr inbounds i8, ptr %63, i64 9, !dbg !1417
  store ptr %64, ptr %8, align 8, !dbg !1417
  br label %76, !dbg !1417

65:                                               ; preds = %35
  %66 = load ptr, ptr %8, align 8, !dbg !1418
  %67 = getelementptr inbounds i8, ptr %66, i64 9, !dbg !1418
  %68 = load ptr, ptr %9, align 8, !dbg !1418
  %69 = icmp uge ptr %67, %68, !dbg !1418
  %70 = zext i1 %69 to i32, !dbg !1418
  %71 = sext i32 %70 to i64, !dbg !1418
  br i1 %69, label %72, label %73, !dbg !1419

72:                                               ; preds = %65
  store i64 0, ptr %3, align 8, !dbg !1418
  br label %491, !dbg !1418

73:                                               ; preds = %65
  %74 = load ptr, ptr %8, align 8, !dbg !1419
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %74, ptr align 1 @.str.11, i64 9, i1 false), !dbg !1419
  %75 = getelementptr inbounds i8, ptr %74, i64 9, !dbg !1419
  store ptr %75, ptr %8, align 8, !dbg !1419
  br label %76

76:                                               ; preds = %73, %62
  call void @llvm.dbg.declare(metadata ptr %13, metadata !624, metadata !DIExpression()), !dbg !1420
  %77 = load i32, ptr %5, align 4, !dbg !1420
  %78 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %77) #11, !dbg !1420
  %79 = call i64 @strlen(ptr noundef %78) #11, !dbg !1420
  store i64 %79, ptr %13, align 8, !dbg !1420
  %80 = load ptr, ptr %8, align 8, !dbg !1421
  %81 = load i64, ptr %13, align 8, !dbg !1421
  %82 = getelementptr inbounds i8, ptr %80, i64 %81, !dbg !1421
  %83 = load ptr, ptr %9, align 8, !dbg !1421
  %84 = icmp uge ptr %82, %83, !dbg !1421
  %85 = zext i1 %84 to i32, !dbg !1421
  %86 = sext i32 %85 to i64, !dbg !1421
  br i1 %84, label %87, label %88, !dbg !1422

87:                                               ; preds = %76
  store i64 0, ptr %3, align 8, !dbg !1421
  br label %491, !dbg !1421

88:                                               ; preds = %76
  %89 = load ptr, ptr %8, align 8, !dbg !1422
  %90 = load i32, ptr %5, align 4, !dbg !1422
  %91 = call ptr @lwan_http_status_as_string_with_code(i32 noundef %90) #11, !dbg !1422
  %92 = load i64, ptr %13, align 8, !dbg !1422
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %89, ptr align 1 %91, i64 %92, i1 false), !dbg !1422
  %93 = getelementptr inbounds i8, ptr %89, i64 %92, !dbg !1422
  store ptr %93, ptr %8, align 8, !dbg !1422
  %94 = load ptr, ptr %4, align 8, !dbg !1423
  %95 = load i32, ptr %94, align 8, !dbg !1424
  %96 = and i32 %95, 128, !dbg !1425
  %97 = icmp ne i32 %96, 0, !dbg !1425
  br i1 %97, label %98, label %109, !dbg !1426

98:                                               ; preds = %88
  %99 = load ptr, ptr %8, align 8, !dbg !1427
  %100 = getelementptr inbounds i8, ptr %99, i64 28, !dbg !1427
  %101 = load ptr, ptr %9, align 8, !dbg !1427
  %102 = icmp uge ptr %100, %101, !dbg !1427
  %103 = zext i1 %102 to i32, !dbg !1427
  %104 = sext i32 %103 to i64, !dbg !1427
  br i1 %102, label %105, label %106, !dbg !1428

105:                                              ; preds = %98
  store i64 0, ptr %3, align 8, !dbg !1427
  br label %491, !dbg !1427

106:                                              ; preds = %98
  %107 = load ptr, ptr %8, align 8, !dbg !1428
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %107, ptr align 1 @.str.12, i64 28, i1 false), !dbg !1428
  %108 = getelementptr inbounds i8, ptr %107, i64 28, !dbg !1428
  store ptr %108, ptr %8, align 8, !dbg !1428
  br label %191, !dbg !1429

109:                                              ; preds = %88
  %110 = load ptr, ptr %4, align 8, !dbg !1430
  %111 = load i32, ptr %110, align 8, !dbg !1431
  %112 = and i32 %111, 256, !dbg !1432
  %113 = icmp ne i32 %112, 0, !dbg !1432
  br i1 %113, label %114, label %115, !dbg !1433

114:                                              ; preds = %109
  br label %190, !dbg !1434

115:                                              ; preds = %109
  %116 = load ptr, ptr %8, align 8, !dbg !1435
  %117 = getelementptr inbounds i8, ptr %116, i64 18, !dbg !1435
  %118 = load ptr, ptr %9, align 8, !dbg !1435
  %119 = icmp uge ptr %117, %118, !dbg !1435
  %120 = zext i1 %119 to i32, !dbg !1435
  %121 = sext i32 %120 to i64, !dbg !1435
  br i1 %119, label %122, label %123, !dbg !1436

122:                                              ; preds = %115
  store i64 0, ptr %3, align 8, !dbg !1435
  br label %491, !dbg !1435

123:                                              ; preds = %115
  %124 = load ptr, ptr %8, align 8, !dbg !1436
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %124, ptr align 1 @.str.13, i64 18, i1 false), !dbg !1436
  %125 = getelementptr inbounds i8, ptr %124, i64 18, !dbg !1436
  store ptr %125, ptr %8, align 8, !dbg !1436
  %126 = load ptr, ptr %4, align 8, !dbg !1437
  %127 = getelementptr inbounds %struct.lwan_request_t_, ptr %126, i32 0, i32 8, !dbg !1438
  %128 = getelementptr inbounds %struct.lwan_response_t_, ptr %127, i32 0, i32 4, !dbg !1439
  %129 = load ptr, ptr %128, align 8, !dbg !1440
  %130 = icmp ne ptr %129, null, !dbg !1437
  br i1 %130, label %131, label %159, !dbg !1441

131:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata ptr %14, metadata !660, metadata !DIExpression()), !dbg !1442
  call void @llvm.dbg.declare(metadata ptr %15, metadata !663, metadata !DIExpression()), !dbg !1442
  %132 = load ptr, ptr %4, align 8, !dbg !1442
  %133 = getelementptr inbounds %struct.lwan_request_t_, ptr %132, i32 0, i32 8, !dbg !1442
  %134 = getelementptr inbounds %struct.lwan_response_t_, ptr %133, i32 0, i32 2, !dbg !1442
  %135 = load i64, ptr %134, align 8, !dbg !1442
  %136 = call ptr @uint_to_string(i64 noundef %135, ptr noundef %10, ptr noundef %14) #12, !dbg !1442
  store ptr %136, ptr %15, align 8, !dbg !1442
  %137 = load ptr, ptr %8, align 8, !dbg !1443
  %138 = load i64, ptr %14, align 8, !dbg !1443
  %139 = getelementptr inbounds i8, ptr %137, i64 %138, !dbg !1443
  %140 = load ptr, ptr %9, align 8, !dbg !1443
  %141 = icmp uge ptr %139, %140, !dbg !1443
  %142 = zext i1 %141 to i32, !dbg !1443
  %143 = sext i32 %142 to i64, !dbg !1443
  br i1 %141, label %144, label %145, !dbg !1442

144:                                              ; preds = %131
  store i64 0, ptr %3, align 8, !dbg !1443
  br label %491, !dbg !1443

145:                                              ; preds = %131
  %146 = load ptr, ptr %8, align 8, !dbg !1444
  %147 = load i64, ptr %14, align 8, !dbg !1444
  %148 = getelementptr inbounds i8, ptr %146, i64 %147, !dbg !1444
  %149 = load ptr, ptr %9, align 8, !dbg !1444
  %150 = icmp uge ptr %148, %149, !dbg !1444
  %151 = zext i1 %150 to i32, !dbg !1444
  %152 = sext i32 %151 to i64, !dbg !1444
  br i1 %150, label %153, label %154, !dbg !1445

153:                                              ; preds = %145
  store i64 0, ptr %3, align 8, !dbg !1444
  br label %491, !dbg !1444

154:                                              ; preds = %145
  %155 = load ptr, ptr %8, align 8, !dbg !1445
  %156 = load ptr, ptr %15, align 8, !dbg !1445
  %157 = load i64, ptr %14, align 8, !dbg !1445
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %155, ptr align 1 %156, i64 %157, i1 false), !dbg !1445
  %158 = getelementptr inbounds i8, ptr %155, i64 %157, !dbg !1445
  store ptr %158, ptr %8, align 8, !dbg !1445
  br label %189, !dbg !1442

159:                                              ; preds = %123
  call void @llvm.dbg.declare(metadata ptr %16, metadata !670, metadata !DIExpression()), !dbg !1446
  call void @llvm.dbg.declare(metadata ptr %17, metadata !673, metadata !DIExpression()), !dbg !1446
  %160 = load ptr, ptr %4, align 8, !dbg !1446
  %161 = getelementptr inbounds %struct.lwan_request_t_, ptr %160, i32 0, i32 8, !dbg !1446
  %162 = load ptr, ptr %161, align 8, !dbg !1446
  %163 = getelementptr inbounds %struct.strbuf_t_, ptr %162, i32 0, i32 1, !dbg !1446
  %164 = getelementptr inbounds %struct.anon, ptr %163, i32 0, i32 1, !dbg !1446
  %165 = load i64, ptr %164, align 8, !dbg !1446
  %166 = call ptr @uint_to_string(i64 noundef %165, ptr noundef %10, ptr noundef %16) #12, !dbg !1446
  store ptr %166, ptr %17, align 8, !dbg !1446
  %167 = load ptr, ptr %8, align 8, !dbg !1447
  %168 = load i64, ptr %16, align 8, !dbg !1447
  %169 = getelementptr inbounds i8, ptr %167, i64 %168, !dbg !1447
  %170 = load ptr, ptr %9, align 8, !dbg !1447
  %171 = icmp uge ptr %169, %170, !dbg !1447
  %172 = zext i1 %171 to i32, !dbg !1447
  %173 = sext i32 %172 to i64, !dbg !1447
  br i1 %171, label %174, label %175, !dbg !1446

174:                                              ; preds = %159
  store i64 0, ptr %3, align 8, !dbg !1447
  br label %491, !dbg !1447

175:                                              ; preds = %159
  %176 = load ptr, ptr %8, align 8, !dbg !1448
  %177 = load i64, ptr %16, align 8, !dbg !1448
  %178 = getelementptr inbounds i8, ptr %176, i64 %177, !dbg !1448
  %179 = load ptr, ptr %9, align 8, !dbg !1448
  %180 = icmp uge ptr %178, %179, !dbg !1448
  %181 = zext i1 %180 to i32, !dbg !1448
  %182 = sext i32 %181 to i64, !dbg !1448
  br i1 %180, label %183, label %184, !dbg !1449

183:                                              ; preds = %175
  store i64 0, ptr %3, align 8, !dbg !1448
  br label %491, !dbg !1448

184:                                              ; preds = %175
  %185 = load ptr, ptr %8, align 8, !dbg !1449
  %186 = load ptr, ptr %17, align 8, !dbg !1449
  %187 = load i64, ptr %16, align 8, !dbg !1449
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %185, ptr align 1 %186, i64 %187, i1 false), !dbg !1449
  %188 = getelementptr inbounds i8, ptr %185, i64 %187, !dbg !1449
  store ptr %188, ptr %8, align 8, !dbg !1449
  br label %189

189:                                              ; preds = %184, %154
  br label %190

190:                                              ; preds = %189, %114
  br label %191

191:                                              ; preds = %190, %106
  %192 = load ptr, ptr %8, align 8, !dbg !1450
  %193 = getelementptr inbounds i8, ptr %192, i64 16, !dbg !1450
  %194 = load ptr, ptr %9, align 8, !dbg !1450
  %195 = icmp uge ptr %193, %194, !dbg !1450
  %196 = zext i1 %195 to i32, !dbg !1450
  %197 = sext i32 %196 to i64, !dbg !1450
  br i1 %195, label %198, label %199, !dbg !1451

198:                                              ; preds = %191
  store i64 0, ptr %3, align 8, !dbg !1450
  br label %491, !dbg !1450

199:                                              ; preds = %191
  %200 = load ptr, ptr %8, align 8, !dbg !1451
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %200, ptr align 1 @.str.14, i64 16, i1 false), !dbg !1451
  %201 = getelementptr inbounds i8, ptr %200, i64 16, !dbg !1451
  store ptr %201, ptr %8, align 8, !dbg !1451
  call void @llvm.dbg.declare(metadata ptr %18, metadata !684, metadata !DIExpression()), !dbg !1452
  %202 = load ptr, ptr %4, align 8, !dbg !1452
  %203 = getelementptr inbounds %struct.lwan_request_t_, ptr %202, i32 0, i32 8, !dbg !1452
  %204 = getelementptr inbounds %struct.lwan_response_t_, ptr %203, i32 0, i32 1, !dbg !1452
  %205 = load ptr, ptr %204, align 8, !dbg !1452
  %206 = call i64 @strlen(ptr noundef %205) #11, !dbg !1452
  store i64 %206, ptr %18, align 8, !dbg !1452
  %207 = load ptr, ptr %8, align 8, !dbg !1453
  %208 = load i64, ptr %18, align 8, !dbg !1453
  %209 = getelementptr inbounds i8, ptr %207, i64 %208, !dbg !1453
  %210 = load ptr, ptr %9, align 8, !dbg !1453
  %211 = icmp uge ptr %209, %210, !dbg !1453
  %212 = zext i1 %211 to i32, !dbg !1453
  %213 = sext i32 %212 to i64, !dbg !1453
  br i1 %211, label %214, label %215, !dbg !1454

214:                                              ; preds = %199
  store i64 0, ptr %3, align 8, !dbg !1453
  br label %491, !dbg !1453

215:                                              ; preds = %199
  %216 = load ptr, ptr %8, align 8, !dbg !1454
  %217 = load ptr, ptr %4, align 8, !dbg !1454
  %218 = getelementptr inbounds %struct.lwan_request_t_, ptr %217, i32 0, i32 8, !dbg !1454
  %219 = getelementptr inbounds %struct.lwan_response_t_, ptr %218, i32 0, i32 1, !dbg !1454
  %220 = load ptr, ptr %219, align 8, !dbg !1454
  %221 = load i64, ptr %18, align 8, !dbg !1454
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %216, ptr align 1 %220, i64 %221, i1 false), !dbg !1454
  %222 = getelementptr inbounds i8, ptr %216, i64 %221, !dbg !1454
  store ptr %222, ptr %8, align 8, !dbg !1454
  %223 = load ptr, ptr %4, align 8, !dbg !1455
  %224 = getelementptr inbounds %struct.lwan_request_t_, ptr %223, i32 0, i32 4, !dbg !1456
  %225 = load ptr, ptr %224, align 8, !dbg !1456
  %226 = load i32, ptr %225, align 8, !dbg !1457
  %227 = and i32 %226, 1, !dbg !1458
  %228 = icmp ne i32 %227, 0, !dbg !1458
  br i1 %228, label %229, label %240, !dbg !1459

229:                                              ; preds = %215
  %230 = load ptr, ptr %8, align 8, !dbg !1460
  %231 = getelementptr inbounds i8, ptr %230, i64 24, !dbg !1460
  %232 = load ptr, ptr %9, align 8, !dbg !1460
  %233 = icmp uge ptr %231, %232, !dbg !1460
  %234 = zext i1 %233 to i32, !dbg !1460
  %235 = sext i32 %234 to i64, !dbg !1460
  br i1 %233, label %236, label %237, !dbg !1461

236:                                              ; preds = %229
  store i64 0, ptr %3, align 8, !dbg !1460
  br label %491, !dbg !1460

237:                                              ; preds = %229
  %238 = load ptr, ptr %8, align 8, !dbg !1461
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %238, ptr align 1 @.str.15, i64 24, i1 false), !dbg !1461
  %239 = getelementptr inbounds i8, ptr %238, i64 24, !dbg !1461
  store ptr %239, ptr %8, align 8, !dbg !1461
  br label %251, !dbg !1461

240:                                              ; preds = %215
  %241 = load ptr, ptr %8, align 8, !dbg !1462
  %242 = getelementptr inbounds i8, ptr %241, i64 19, !dbg !1462
  %243 = load ptr, ptr %9, align 8, !dbg !1462
  %244 = icmp uge ptr %242, %243, !dbg !1462
  %245 = zext i1 %244 to i32, !dbg !1462
  %246 = sext i32 %245 to i64, !dbg !1462
  br i1 %244, label %247, label %248, !dbg !1463

247:                                              ; preds = %240
  store i64 0, ptr %3, align 8, !dbg !1462
  br label %491, !dbg !1462

248:                                              ; preds = %240
  %249 = load ptr, ptr %8, align 8, !dbg !1463
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %249, ptr align 1 @.str.16, i64 19, i1 false), !dbg !1463
  %250 = getelementptr inbounds i8, ptr %249, i64 19, !dbg !1463
  store ptr %250, ptr %8, align 8, !dbg !1463
  br label %251

251:                                              ; preds = %248, %237
  %252 = load i32, ptr %5, align 4, !dbg !1464
  %253 = icmp ult i32 %252, 400, !dbg !1465
  br i1 %253, label %254, label %353, !dbg !1466

254:                                              ; preds = %251
  %255 = load ptr, ptr %4, align 8, !dbg !1467
  %256 = getelementptr inbounds %struct.lwan_request_t_, ptr %255, i32 0, i32 8, !dbg !1468
  %257 = getelementptr inbounds %struct.lwan_response_t_, ptr %256, i32 0, i32 3, !dbg !1469
  %258 = load ptr, ptr %257, align 8, !dbg !1469
  %259 = icmp ne ptr %258, null, !dbg !1467
  br i1 %259, label %260, label %353, !dbg !1470

260:                                              ; preds = %254
  call void @llvm.dbg.declare(metadata ptr %19, metadata !713, metadata !DIExpression()), !dbg !1471
  %261 = load ptr, ptr %4, align 8, !dbg !1472
  %262 = getelementptr inbounds %struct.lwan_request_t_, ptr %261, i32 0, i32 8, !dbg !1473
  %263 = getelementptr inbounds %struct.lwan_response_t_, ptr %262, i32 0, i32 3, !dbg !1474
  %264 = load ptr, ptr %263, align 8, !dbg !1474
  store ptr %264, ptr %19, align 8, !dbg !1475
  br label %265, !dbg !1476

265:                                              ; preds = %349, %260
  %266 = load ptr, ptr %19, align 8, !dbg !1477
  %267 = load ptr, ptr %266, align 8, !dbg !1478
  %268 = icmp ne ptr %267, null, !dbg !1479
  br i1 %268, label %269, label %352, !dbg !1479

269:                                              ; preds = %265
  %270 = load ptr, ptr %19, align 8, !dbg !1480
  %271 = load ptr, ptr %270, align 8, !dbg !1480
  %272 = call i32 @strcmp(ptr noundef %271, ptr noundef @.str.17) #11, !dbg !1480
  %273 = icmp ne i32 %272, 0, !dbg !1480
  %274 = xor i1 %273, true, !dbg !1480
  %275 = zext i1 %274 to i32, !dbg !1480
  %276 = sext i32 %275 to i64, !dbg !1480
  br i1 %274, label %277, label %278, !dbg !1481

277:                                              ; preds = %269
  br label %349, !dbg !1482

278:                                              ; preds = %269
  %279 = load ptr, ptr %19, align 8, !dbg !1483
  %280 = load ptr, ptr %279, align 8, !dbg !1483
  %281 = call i32 @strcmp(ptr noundef %280, ptr noundef @.str.18) #11, !dbg !1483
  %282 = icmp ne i32 %281, 0, !dbg !1483
  %283 = xor i1 %282, true, !dbg !1483
  %284 = zext i1 %283 to i32, !dbg !1483
  %285 = sext i32 %284 to i64, !dbg !1483
  br i1 %283, label %286, label %287, !dbg !1484

286:                                              ; preds = %278
  store i8 1, ptr %11, align 1, !dbg !1485
  br label %287, !dbg !1486

287:                                              ; preds = %286, %278
  %288 = load ptr, ptr %19, align 8, !dbg !1487
  %289 = load ptr, ptr %288, align 8, !dbg !1487
  %290 = call i32 @strcmp(ptr noundef %289, ptr noundef @.str.19) #11, !dbg !1487
  %291 = icmp ne i32 %290, 0, !dbg !1487
  %292 = xor i1 %291, true, !dbg !1487
  %293 = zext i1 %292 to i32, !dbg !1487
  %294 = sext i32 %293 to i64, !dbg !1487
  br i1 %292, label %295, label %296, !dbg !1488

295:                                              ; preds = %287
  store i8 1, ptr %12, align 1, !dbg !1489
  br label %296, !dbg !1490

296:                                              ; preds = %295, %287
  %297 = load ptr, ptr %8, align 8, !dbg !1491
  %298 = getelementptr inbounds i8, ptr %297, i64 4, !dbg !1491
  %299 = load ptr, ptr %9, align 8, !dbg !1491
  %300 = icmp uge ptr %298, %299, !dbg !1491
  %301 = zext i1 %300 to i32, !dbg !1491
  %302 = sext i32 %301 to i64, !dbg !1491
  br i1 %300, label %303, label %304, !dbg !1492

303:                                              ; preds = %296
  store i64 0, ptr %3, align 8, !dbg !1491
  br label %491, !dbg !1491

304:                                              ; preds = %296
  %305 = load ptr, ptr %8, align 8, !dbg !1493
  %306 = getelementptr inbounds i8, ptr %305, i32 1, !dbg !1493
  store ptr %306, ptr %8, align 8, !dbg !1493
  store i8 13, ptr %305, align 1, !dbg !1493
  %307 = load ptr, ptr %8, align 8, !dbg !1494
  %308 = getelementptr inbounds i8, ptr %307, i32 1, !dbg !1494
  store ptr %308, ptr %8, align 8, !dbg !1494
  store i8 10, ptr %307, align 1, !dbg !1494
  call void @llvm.dbg.declare(metadata ptr %20, metadata !746, metadata !DIExpression()), !dbg !1495
  %309 = load ptr, ptr %19, align 8, !dbg !1495
  %310 = load ptr, ptr %309, align 8, !dbg !1495
  %311 = call i64 @strlen(ptr noundef %310) #11, !dbg !1495
  store i64 %311, ptr %20, align 8, !dbg !1495
  %312 = load ptr, ptr %8, align 8, !dbg !1496
  %313 = load i64, ptr %20, align 8, !dbg !1496
  %314 = getelementptr inbounds i8, ptr %312, i64 %313, !dbg !1496
  %315 = load ptr, ptr %9, align 8, !dbg !1496
  %316 = icmp uge ptr %314, %315, !dbg !1496
  %317 = zext i1 %316 to i32, !dbg !1496
  %318 = sext i32 %317 to i64, !dbg !1496
  br i1 %316, label %319, label %320, !dbg !1497

319:                                              ; preds = %304
  store i64 0, ptr %3, align 8, !dbg !1496
  br label %491, !dbg !1496

320:                                              ; preds = %304
  %321 = load ptr, ptr %8, align 8, !dbg !1497
  %322 = load ptr, ptr %19, align 8, !dbg !1497
  %323 = load ptr, ptr %322, align 8, !dbg !1497
  %324 = load i64, ptr %20, align 8, !dbg !1497
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %321, ptr align 1 %323, i64 %324, i1 false), !dbg !1497
  %325 = getelementptr inbounds i8, ptr %321, i64 %324, !dbg !1497
  store ptr %325, ptr %8, align 8, !dbg !1497
  %326 = load ptr, ptr %8, align 8, !dbg !1498
  %327 = getelementptr inbounds i8, ptr %326, i32 1, !dbg !1498
  store ptr %327, ptr %8, align 8, !dbg !1498
  store i8 58, ptr %326, align 1, !dbg !1498
  %328 = load ptr, ptr %8, align 8, !dbg !1499
  %329 = getelementptr inbounds i8, ptr %328, i32 1, !dbg !1499
  store ptr %329, ptr %8, align 8, !dbg !1499
  store i8 32, ptr %328, align 1, !dbg !1499
  call void @llvm.dbg.declare(metadata ptr %21, metadata !755, metadata !DIExpression()), !dbg !1500
  %330 = load ptr, ptr %19, align 8, !dbg !1500
  %331 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %330, i32 0, i32 1, !dbg !1500
  %332 = load ptr, ptr %331, align 8, !dbg !1500
  %333 = call i64 @strlen(ptr noundef %332) #11, !dbg !1500
  store i64 %333, ptr %21, align 8, !dbg !1500
  %334 = load ptr, ptr %8, align 8, !dbg !1501
  %335 = load i64, ptr %21, align 8, !dbg !1501
  %336 = getelementptr inbounds i8, ptr %334, i64 %335, !dbg !1501
  %337 = load ptr, ptr %9, align 8, !dbg !1501
  %338 = icmp uge ptr %336, %337, !dbg !1501
  %339 = zext i1 %338 to i32, !dbg !1501
  %340 = sext i32 %339 to i64, !dbg !1501
  br i1 %338, label %341, label %342, !dbg !1502

341:                                              ; preds = %320
  store i64 0, ptr %3, align 8, !dbg !1501
  br label %491, !dbg !1501

342:                                              ; preds = %320
  %343 = load ptr, ptr %8, align 8, !dbg !1502
  %344 = load ptr, ptr %19, align 8, !dbg !1502
  %345 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %344, i32 0, i32 1, !dbg !1502
  %346 = load ptr, ptr %345, align 8, !dbg !1502
  %347 = load i64, ptr %21, align 8, !dbg !1502
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %343, ptr align 1 %346, i64 %347, i1 false), !dbg !1502
  %348 = getelementptr inbounds i8, ptr %343, i64 %347, !dbg !1502
  store ptr %348, ptr %8, align 8, !dbg !1502
  br label %349, !dbg !1503

349:                                              ; preds = %342, %277
  %350 = load ptr, ptr %19, align 8, !dbg !1504
  %351 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %350, i32 1, !dbg !1504
  store ptr %351, ptr %19, align 8, !dbg !1504
  br label %265, !dbg !1505, !llvm.loop !1506

352:                                              ; preds = %265
  br label %405, !dbg !1508

353:                                              ; preds = %254, %251
  %354 = load i32, ptr %5, align 4, !dbg !1509
  %355 = icmp eq i32 %354, 401, !dbg !1510
  br i1 %355, label %356, label %404, !dbg !1511

356:                                              ; preds = %353
  call void @llvm.dbg.declare(metadata ptr %22, metadata !773, metadata !DIExpression()), !dbg !1512
  %357 = load ptr, ptr %4, align 8, !dbg !1513
  %358 = getelementptr inbounds %struct.lwan_request_t_, ptr %357, i32 0, i32 8, !dbg !1514
  %359 = getelementptr inbounds %struct.lwan_response_t_, ptr %358, i32 0, i32 3, !dbg !1515
  %360 = load ptr, ptr %359, align 8, !dbg !1515
  store ptr %360, ptr %22, align 8, !dbg !1516
  br label %361, !dbg !1517

361:                                              ; preds = %400, %356
  %362 = load ptr, ptr %22, align 8, !dbg !1518
  %363 = load ptr, ptr %362, align 8, !dbg !1519
  %364 = icmp ne ptr %363, null, !dbg !1520
  br i1 %364, label %365, label %403, !dbg !1520

365:                                              ; preds = %361
  %366 = load ptr, ptr %22, align 8, !dbg !1521
  %367 = load ptr, ptr %366, align 8, !dbg !1522
  %368 = call i32 @strcmp(ptr noundef %367, ptr noundef @.str.20) #11, !dbg !1523
  %369 = icmp ne i32 %368, 0, !dbg !1523
  br i1 %369, label %400, label %370, !dbg !1524

370:                                              ; preds = %365
  %371 = load ptr, ptr %8, align 8, !dbg !1525
  %372 = getelementptr inbounds i8, ptr %371, i64 20, !dbg !1525
  %373 = load ptr, ptr %9, align 8, !dbg !1525
  %374 = icmp uge ptr %372, %373, !dbg !1525
  %375 = zext i1 %374 to i32, !dbg !1525
  %376 = sext i32 %375 to i64, !dbg !1525
  br i1 %374, label %377, label %378, !dbg !1526

377:                                              ; preds = %370
  store i64 0, ptr %3, align 8, !dbg !1525
  br label %491, !dbg !1525

378:                                              ; preds = %370
  %379 = load ptr, ptr %8, align 8, !dbg !1526
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %379, ptr align 1 @.str.21, i64 20, i1 false), !dbg !1526
  %380 = getelementptr inbounds i8, ptr %379, i64 20, !dbg !1526
  store ptr %380, ptr %8, align 8, !dbg !1526
  call void @llvm.dbg.declare(metadata ptr %23, metadata !797, metadata !DIExpression()), !dbg !1527
  %381 = load ptr, ptr %22, align 8, !dbg !1527
  %382 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %381, i32 0, i32 1, !dbg !1527
  %383 = load ptr, ptr %382, align 8, !dbg !1527
  %384 = call i64 @strlen(ptr noundef %383) #11, !dbg !1527
  store i64 %384, ptr %23, align 8, !dbg !1527
  %385 = load ptr, ptr %8, align 8, !dbg !1528
  %386 = load i64, ptr %23, align 8, !dbg !1528
  %387 = getelementptr inbounds i8, ptr %385, i64 %386, !dbg !1528
  %388 = load ptr, ptr %9, align 8, !dbg !1528
  %389 = icmp uge ptr %387, %388, !dbg !1528
  %390 = zext i1 %389 to i32, !dbg !1528
  %391 = sext i32 %390 to i64, !dbg !1528
  br i1 %389, label %392, label %393, !dbg !1529

392:                                              ; preds = %378
  store i64 0, ptr %3, align 8, !dbg !1528
  br label %491, !dbg !1528

393:                                              ; preds = %378
  %394 = load ptr, ptr %8, align 8, !dbg !1529
  %395 = load ptr, ptr %22, align 8, !dbg !1529
  %396 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %395, i32 0, i32 1, !dbg !1529
  %397 = load ptr, ptr %396, align 8, !dbg !1529
  %398 = load i64, ptr %23, align 8, !dbg !1529
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %394, ptr align 1 %397, i64 %398, i1 false), !dbg !1529
  %399 = getelementptr inbounds i8, ptr %394, i64 %398, !dbg !1529
  store ptr %399, ptr %8, align 8, !dbg !1529
  br label %403, !dbg !1530

400:                                              ; preds = %365
  %401 = load ptr, ptr %22, align 8, !dbg !1531
  %402 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %401, i32 1, !dbg !1531
  store ptr %402, ptr %22, align 8, !dbg !1531
  br label %361, !dbg !1532, !llvm.loop !1533

403:                                              ; preds = %393, %361
  br label %404, !dbg !1535

404:                                              ; preds = %403, %353
  br label %405

405:                                              ; preds = %404, %352
  %406 = load i8, ptr %11, align 1, !dbg !1536
  %407 = trunc i8 %406 to i1, !dbg !1536
  %408 = xor i1 %407, true, !dbg !1536
  %409 = xor i1 %407, true, !dbg !1536
  %410 = zext i1 %409 to i32, !dbg !1536
  %411 = sext i32 %410 to i64, !dbg !1536
  br i1 %409, label %412, label %439, !dbg !1537

412:                                              ; preds = %405
  %413 = load ptr, ptr %8, align 8, !dbg !1538
  %414 = getelementptr inbounds i8, ptr %413, i64 8, !dbg !1538
  %415 = load ptr, ptr %9, align 8, !dbg !1538
  %416 = icmp uge ptr %414, %415, !dbg !1538
  %417 = zext i1 %416 to i32, !dbg !1538
  %418 = sext i32 %417 to i64, !dbg !1538
  br i1 %416, label %419, label %420, !dbg !1539

419:                                              ; preds = %412
  store i64 0, ptr %3, align 8, !dbg !1538
  br label %491, !dbg !1538

420:                                              ; preds = %412
  %421 = load ptr, ptr %8, align 8, !dbg !1539
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %421, ptr align 1 @.str.22, i64 8, i1 false), !dbg !1539
  %422 = getelementptr inbounds i8, ptr %421, i64 8, !dbg !1539
  store ptr %422, ptr %8, align 8, !dbg !1539
  %423 = load ptr, ptr %8, align 8, !dbg !1540
  %424 = getelementptr inbounds i8, ptr %423, i64 29, !dbg !1540
  %425 = load ptr, ptr %9, align 8, !dbg !1540
  %426 = icmp uge ptr %424, %425, !dbg !1540
  %427 = zext i1 %426 to i32, !dbg !1540
  %428 = sext i32 %427 to i64, !dbg !1540
  br i1 %426, label %429, label %430, !dbg !1541

429:                                              ; preds = %420
  store i64 0, ptr %3, align 8, !dbg !1540
  br label %491, !dbg !1540

430:                                              ; preds = %420
  %431 = load ptr, ptr %8, align 8, !dbg !1541
  %432 = load ptr, ptr %4, align 8, !dbg !1541
  %433 = getelementptr inbounds %struct.lwan_request_t_, ptr %432, i32 0, i32 4, !dbg !1541
  %434 = load ptr, ptr %433, align 8, !dbg !1541
  %435 = getelementptr inbounds %struct.lwan_connection_t_, ptr %434, i32 0, i32 3, !dbg !1541
  %436 = load ptr, ptr %435, align 8, !dbg !1541
  %437 = getelementptr inbounds %struct.lwan_thread_t_, ptr %436, i32 0, i32 1, !dbg !1541
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %431, ptr align 8 %437, i64 29, i1 false), !dbg !1541
  %438 = getelementptr inbounds i8, ptr %431, i64 29, !dbg !1541
  store ptr %438, ptr %8, align 8, !dbg !1541
  br label %439, !dbg !1542

439:                                              ; preds = %430, %405
  %440 = load i8, ptr %12, align 1, !dbg !1543
  %441 = trunc i8 %440 to i1, !dbg !1543
  %442 = xor i1 %441, true, !dbg !1543
  %443 = xor i1 %441, true, !dbg !1543
  %444 = zext i1 %443 to i32, !dbg !1543
  %445 = sext i32 %444 to i64, !dbg !1543
  br i1 %443, label %446, label %474, !dbg !1544

446:                                              ; preds = %439
  %447 = load ptr, ptr %8, align 8, !dbg !1545
  %448 = getelementptr inbounds i8, ptr %447, i64 11, !dbg !1545
  %449 = load ptr, ptr %9, align 8, !dbg !1545
  %450 = icmp uge ptr %448, %449, !dbg !1545
  %451 = zext i1 %450 to i32, !dbg !1545
  %452 = sext i32 %451 to i64, !dbg !1545
  br i1 %450, label %453, label %454, !dbg !1546

453:                                              ; preds = %446
  store i64 0, ptr %3, align 8, !dbg !1545
  br label %491, !dbg !1545

454:                                              ; preds = %446
  %455 = load ptr, ptr %8, align 8, !dbg !1546
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %455, ptr align 1 @.str.23, i64 11, i1 false), !dbg !1546
  %456 = getelementptr inbounds i8, ptr %455, i64 11, !dbg !1546
  store ptr %456, ptr %8, align 8, !dbg !1546
  %457 = load ptr, ptr %8, align 8, !dbg !1547
  %458 = getelementptr inbounds i8, ptr %457, i64 29, !dbg !1547
  %459 = load ptr, ptr %9, align 8, !dbg !1547
  %460 = icmp uge ptr %458, %459, !dbg !1547
  %461 = zext i1 %460 to i32, !dbg !1547
  %462 = sext i32 %461 to i64, !dbg !1547
  br i1 %460, label %463, label %464, !dbg !1548

463:                                              ; preds = %454
  store i64 0, ptr %3, align 8, !dbg !1547
  br label %491, !dbg !1547

464:                                              ; preds = %454
  %465 = load ptr, ptr %8, align 8, !dbg !1548
  %466 = load ptr, ptr %4, align 8, !dbg !1548
  %467 = getelementptr inbounds %struct.lwan_request_t_, ptr %466, i32 0, i32 4, !dbg !1548
  %468 = load ptr, ptr %467, align 8, !dbg !1548
  %469 = getelementptr inbounds %struct.lwan_connection_t_, ptr %468, i32 0, i32 3, !dbg !1548
  %470 = load ptr, ptr %469, align 8, !dbg !1548
  %471 = getelementptr inbounds %struct.lwan_thread_t_, ptr %470, i32 0, i32 1, !dbg !1548
  %472 = getelementptr inbounds %struct.anon.1, ptr %471, i32 0, i32 1, !dbg !1548
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %465, ptr align 2 %472, i64 29, i1 false), !dbg !1548
  %473 = getelementptr inbounds i8, ptr %465, i64 29, !dbg !1548
  store ptr %473, ptr %8, align 8, !dbg !1548
  br label %474, !dbg !1549

474:                                              ; preds = %464, %439
  %475 = load ptr, ptr %8, align 8, !dbg !1550
  %476 = getelementptr inbounds i8, ptr %475, i64 19, !dbg !1550
  %477 = load ptr, ptr %9, align 8, !dbg !1550
  %478 = icmp uge ptr %476, %477, !dbg !1550
  %479 = zext i1 %478 to i32, !dbg !1550
  %480 = sext i32 %479 to i64, !dbg !1550
  br i1 %478, label %481, label %482, !dbg !1551

481:                                              ; preds = %474
  store i64 0, ptr %3, align 8, !dbg !1550
  br label %491, !dbg !1550

482:                                              ; preds = %474
  %483 = load ptr, ptr %8, align 8, !dbg !1551
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %483, ptr align 1 @.str.24, i64 19, i1 false), !dbg !1551
  %484 = getelementptr inbounds i8, ptr %483, i64 19, !dbg !1551
  store ptr %484, ptr %8, align 8, !dbg !1551
  %485 = load ptr, ptr %8, align 8, !dbg !1552
  %486 = load ptr, ptr %6, align 8, !dbg !1553
  %487 = ptrtoint ptr %485 to i64, !dbg !1554
  %488 = ptrtoint ptr %486 to i64, !dbg !1554
  %489 = sub i64 %487, %488, !dbg !1554
  %490 = sub nsw i64 %489, 1, !dbg !1555
  store i64 %490, ptr %3, align 8, !dbg !1556
  br label %491, !dbg !1556

491:                                              ; preds = %61, %72, %87, %105, %122, %144, %153, %174, %183, %198, %214, %236, %247, %303, %319, %341, %377, %392, %419, %429, %453, %463, %481, %482
  %492 = load i64, ptr %3, align 8, !dbg !1557
  store i64 %492, ptr %28, align 8, !dbg !1558
  %493 = load i64, ptr %28, align 8, !dbg !1559
  %494 = icmp ne i64 %493, 0, !dbg !1559
  %495 = xor i1 %494, true, !dbg !1559
  %496 = zext i1 %495 to i32, !dbg !1559
  %497 = sext i32 %496 to i64, !dbg !1559
  %498 = icmp ne i64 %497, 0, !dbg !1559
  br i1 %498, label %499, label %500, !dbg !1561

499:                                              ; preds = %491
  store i1 false, ptr %24, align 1, !dbg !1562
  br label %509, !dbg !1562

500:                                              ; preds = %491
  %501 = load ptr, ptr %25, align 8, !dbg !1563
  %502 = getelementptr inbounds %struct.lwan_request_t_, ptr %501, i32 0, i32 0, !dbg !1564
  %503 = load i32, ptr %502, align 8, !dbg !1565
  %504 = or i32 %503, 64, !dbg !1565
  store i32 %504, ptr %502, align 8, !dbg !1565
  %505 = load ptr, ptr %25, align 8, !dbg !1566
  %506 = getelementptr inbounds [4096 x i8], ptr %27, i64 0, i64 0, !dbg !1567
  %507 = load i64, ptr %28, align 8, !dbg !1568
  %508 = call i64 @lwan_send(ptr noundef %505, ptr noundef %506, i64 noundef %507, i32 noundef 32768), !dbg !1569
  store i1 true, ptr %24, align 1, !dbg !1570
  br label %509, !dbg !1570

509:                                              ; preds = %500, %499, %34
  %510 = load i1, ptr %24, align 1, !dbg !1571
  ret i1 %510, !dbg !1571
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_response_send_event(ptr noundef %0, ptr noundef %1) #0 !dbg !1572 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [6 x %struct.iovec], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1575, metadata !DIExpression()), !dbg !1576
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1577, metadata !DIExpression()), !dbg !1578
  %8 = load ptr, ptr %3, align 8, !dbg !1579
  %9 = getelementptr inbounds %struct.lwan_request_t_, ptr %8, i32 0, i32 0, !dbg !1581
  %10 = load i32, ptr %9, align 8, !dbg !1581
  %11 = and i32 %10, 64, !dbg !1582
  %12 = icmp ne i32 %11, 0, !dbg !1582
  br i1 %12, label %22, label %13, !dbg !1583

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8, !dbg !1584
  %15 = call zeroext i1 @lwan_response_set_event_stream(ptr noundef %14, i32 noundef 200), !dbg !1584
  %16 = xor i1 %15, true, !dbg !1584
  %17 = zext i1 %16 to i32, !dbg !1584
  %18 = sext i32 %17 to i64, !dbg !1584
  %19 = icmp ne i64 %18, 0, !dbg !1584
  br i1 %19, label %20, label %21, !dbg !1587

20:                                               ; preds = %13
  br label %135, !dbg !1588

21:                                               ; preds = %13
  br label %22, !dbg !1589

22:                                               ; preds = %21, %2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1590, metadata !DIExpression()), !dbg !1592
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1593, metadata !DIExpression()), !dbg !1594
  store i32 0, ptr %6, align 4, !dbg !1594
  %23 = load ptr, ptr %4, align 8, !dbg !1595
  %24 = icmp ne ptr %23, null, !dbg !1595
  br i1 %24, label %25, label %59, !dbg !1597

25:                                               ; preds = %22
  %26 = load i32, ptr %6, align 4, !dbg !1598
  %27 = sext i32 %26 to i64, !dbg !1600
  %28 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %27, !dbg !1600
  %29 = getelementptr inbounds %struct.iovec, ptr %28, i32 0, i32 0, !dbg !1601
  store ptr @.str.28, ptr %29, align 16, !dbg !1602
  %30 = load i32, ptr %6, align 4, !dbg !1603
  %31 = sext i32 %30 to i64, !dbg !1604
  %32 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %31, !dbg !1604
  %33 = getelementptr inbounds %struct.iovec, ptr %32, i32 0, i32 1, !dbg !1605
  store i64 7, ptr %33, align 8, !dbg !1606
  %34 = load i32, ptr %6, align 4, !dbg !1607
  %35 = add nsw i32 %34, 1, !dbg !1607
  store i32 %35, ptr %6, align 4, !dbg !1607
  %36 = load ptr, ptr %4, align 8, !dbg !1608
  %37 = load i32, ptr %6, align 4, !dbg !1609
  %38 = sext i32 %37 to i64, !dbg !1610
  %39 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %38, !dbg !1610
  %40 = getelementptr inbounds %struct.iovec, ptr %39, i32 0, i32 0, !dbg !1611
  store ptr %36, ptr %40, align 16, !dbg !1612
  %41 = load ptr, ptr %4, align 8, !dbg !1613
  %42 = call i64 @strlen(ptr noundef %41) #11, !dbg !1614
  %43 = load i32, ptr %6, align 4, !dbg !1615
  %44 = sext i32 %43 to i64, !dbg !1616
  %45 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %44, !dbg !1616
  %46 = getelementptr inbounds %struct.iovec, ptr %45, i32 0, i32 1, !dbg !1617
  store i64 %42, ptr %46, align 8, !dbg !1618
  %47 = load i32, ptr %6, align 4, !dbg !1619
  %48 = add nsw i32 %47, 1, !dbg !1619
  store i32 %48, ptr %6, align 4, !dbg !1619
  %49 = load i32, ptr %6, align 4, !dbg !1620
  %50 = sext i32 %49 to i64, !dbg !1621
  %51 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %50, !dbg !1621
  %52 = getelementptr inbounds %struct.iovec, ptr %51, i32 0, i32 0, !dbg !1622
  store ptr @.str.26, ptr %52, align 16, !dbg !1623
  %53 = load i32, ptr %6, align 4, !dbg !1624
  %54 = sext i32 %53 to i64, !dbg !1625
  %55 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %54, !dbg !1625
  %56 = getelementptr inbounds %struct.iovec, ptr %55, i32 0, i32 1, !dbg !1626
  store i64 2, ptr %56, align 8, !dbg !1627
  %57 = load i32, ptr %6, align 4, !dbg !1628
  %58 = add nsw i32 %57, 1, !dbg !1628
  store i32 %58, ptr %6, align 4, !dbg !1628
  br label %59, !dbg !1629

59:                                               ; preds = %25, %22
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1630, metadata !DIExpression()), !dbg !1631
  %60 = load ptr, ptr %3, align 8, !dbg !1632
  %61 = getelementptr inbounds %struct.lwan_request_t_, ptr %60, i32 0, i32 8, !dbg !1632
  %62 = getelementptr inbounds %struct.lwan_response_t_, ptr %61, i32 0, i32 0, !dbg !1632
  %63 = load ptr, ptr %62, align 8, !dbg !1632
  %64 = getelementptr inbounds %struct.strbuf_t_, ptr %63, i32 0, i32 1, !dbg !1632
  %65 = getelementptr inbounds %struct.anon, ptr %64, i32 0, i32 1, !dbg !1632
  %66 = load i64, ptr %65, align 8, !dbg !1632
  store i64 %66, ptr %7, align 8, !dbg !1631
  %67 = load i64, ptr %7, align 8, !dbg !1633
  %68 = icmp ne i64 %67, 0, !dbg !1633
  br i1 %68, label %69, label %97, !dbg !1635

69:                                               ; preds = %59
  %70 = load i32, ptr %6, align 4, !dbg !1636
  %71 = sext i32 %70 to i64, !dbg !1638
  %72 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %71, !dbg !1638
  %73 = getelementptr inbounds %struct.iovec, ptr %72, i32 0, i32 0, !dbg !1639
  store ptr @.str.29, ptr %73, align 16, !dbg !1640
  %74 = load i32, ptr %6, align 4, !dbg !1641
  %75 = sext i32 %74 to i64, !dbg !1642
  %76 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %75, !dbg !1642
  %77 = getelementptr inbounds %struct.iovec, ptr %76, i32 0, i32 1, !dbg !1643
  store i64 6, ptr %77, align 8, !dbg !1644
  %78 = load i32, ptr %6, align 4, !dbg !1645
  %79 = add nsw i32 %78, 1, !dbg !1645
  store i32 %79, ptr %6, align 4, !dbg !1645
  %80 = load ptr, ptr %3, align 8, !dbg !1646
  %81 = getelementptr inbounds %struct.lwan_request_t_, ptr %80, i32 0, i32 8, !dbg !1646
  %82 = getelementptr inbounds %struct.lwan_response_t_, ptr %81, i32 0, i32 0, !dbg !1646
  %83 = load ptr, ptr %82, align 8, !dbg !1646
  %84 = getelementptr inbounds %struct.strbuf_t_, ptr %83, i32 0, i32 0, !dbg !1646
  %85 = load ptr, ptr %84, align 8, !dbg !1646
  %86 = load i32, ptr %6, align 4, !dbg !1647
  %87 = sext i32 %86 to i64, !dbg !1648
  %88 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %87, !dbg !1648
  %89 = getelementptr inbounds %struct.iovec, ptr %88, i32 0, i32 0, !dbg !1649
  store ptr %85, ptr %89, align 16, !dbg !1650
  %90 = load i64, ptr %7, align 8, !dbg !1651
  %91 = load i32, ptr %6, align 4, !dbg !1652
  %92 = sext i32 %91 to i64, !dbg !1653
  %93 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %92, !dbg !1653
  %94 = getelementptr inbounds %struct.iovec, ptr %93, i32 0, i32 1, !dbg !1654
  store i64 %90, ptr %94, align 8, !dbg !1655
  %95 = load i32, ptr %6, align 4, !dbg !1656
  %96 = add nsw i32 %95, 1, !dbg !1656
  store i32 %96, ptr %6, align 4, !dbg !1656
  br label %97, !dbg !1657

97:                                               ; preds = %69, %59
  %98 = load i32, ptr %6, align 4, !dbg !1658
  %99 = sext i32 %98 to i64, !dbg !1659
  %100 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %99, !dbg !1659
  %101 = getelementptr inbounds %struct.iovec, ptr %100, i32 0, i32 0, !dbg !1660
  store ptr @.str.30, ptr %101, align 16, !dbg !1661
  %102 = load i32, ptr %6, align 4, !dbg !1662
  %103 = sext i32 %102 to i64, !dbg !1663
  %104 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 %103, !dbg !1663
  %105 = getelementptr inbounds %struct.iovec, ptr %104, i32 0, i32 1, !dbg !1664
  store i64 4, ptr %105, align 8, !dbg !1665
  %106 = load i32, ptr %6, align 4, !dbg !1666
  %107 = add nsw i32 %106, 1, !dbg !1666
  store i32 %107, ptr %6, align 4, !dbg !1666
  %108 = load ptr, ptr %3, align 8, !dbg !1667
  %109 = getelementptr inbounds [6 x %struct.iovec], ptr %5, i64 0, i64 0, !dbg !1668
  %110 = load i32, ptr %6, align 4, !dbg !1669
  %111 = call i64 @lwan_writev(ptr noundef %108, ptr noundef %109, i32 noundef %110), !dbg !1670
  %112 = load ptr, ptr %3, align 8, !dbg !1671
  %113 = getelementptr inbounds %struct.lwan_request_t_, ptr %112, i32 0, i32 8, !dbg !1671
  %114 = getelementptr inbounds %struct.lwan_response_t_, ptr %113, i32 0, i32 0, !dbg !1671
  %115 = load ptr, ptr %114, align 8, !dbg !1671
  %116 = call zeroext i1 @strbuf_reset_length(ptr noundef %115), !dbg !1671
  %117 = xor i1 %116, true, !dbg !1671
  %118 = zext i1 %117 to i32, !dbg !1671
  %119 = sext i32 %118 to i64, !dbg !1671
  %120 = icmp ne i64 %119, 0, !dbg !1671
  br i1 %120, label %121, label %128, !dbg !1673

121:                                              ; preds = %97
  %122 = load ptr, ptr %3, align 8, !dbg !1674
  %123 = getelementptr inbounds %struct.lwan_request_t_, ptr %122, i32 0, i32 4, !dbg !1676
  %124 = load ptr, ptr %123, align 8, !dbg !1676
  %125 = getelementptr inbounds %struct.lwan_connection_t_, ptr %124, i32 0, i32 2, !dbg !1677
  %126 = load ptr, ptr %125, align 8, !dbg !1677
  %127 = call i32 @coro_yield(ptr noundef %126, i32 noundef -1), !dbg !1678
  unreachable, !dbg !1679

128:                                              ; preds = %97
  %129 = load ptr, ptr %3, align 8, !dbg !1680
  %130 = getelementptr inbounds %struct.lwan_request_t_, ptr %129, i32 0, i32 4, !dbg !1681
  %131 = load ptr, ptr %130, align 8, !dbg !1681
  %132 = getelementptr inbounds %struct.lwan_connection_t_, ptr %131, i32 0, i32 2, !dbg !1682
  %133 = load ptr, ptr %132, align 8, !dbg !1682
  %134 = call i32 @coro_yield(ptr noundef %133, i32 noundef 0), !dbg !1683
  br label %135, !dbg !1684

135:                                              ; preds = %128, %20
  ret void, !dbg !1684
}

declare ptr @lwan_request_get_remote_address(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_request_method(ptr noundef %0) #0 !dbg !1685 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1688, metadata !DIExpression()), !dbg !1689
  %4 = load ptr, ptr %3, align 8, !dbg !1690
  %5 = getelementptr inbounds %struct.lwan_request_t_, ptr %4, i32 0, i32 0, !dbg !1692
  %6 = load i32, ptr %5, align 8, !dbg !1692
  %7 = and i32 %6, 1, !dbg !1693
  %8 = icmp ne i32 %7, 0, !dbg !1693
  br i1 %8, label %9, label %10, !dbg !1694

9:                                                ; preds = %1
  store ptr @.str.35, ptr %2, align 8, !dbg !1695
  br label %25, !dbg !1695

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8, !dbg !1696
  %12 = getelementptr inbounds %struct.lwan_request_t_, ptr %11, i32 0, i32 0, !dbg !1698
  %13 = load i32, ptr %12, align 8, !dbg !1698
  %14 = and i32 %13, 2, !dbg !1699
  %15 = icmp ne i32 %14, 0, !dbg !1699
  br i1 %15, label %16, label %17, !dbg !1700

16:                                               ; preds = %10
  store ptr @.str.36, ptr %2, align 8, !dbg !1701
  br label %25, !dbg !1701

17:                                               ; preds = %10
  %18 = load ptr, ptr %3, align 8, !dbg !1702
  %19 = getelementptr inbounds %struct.lwan_request_t_, ptr %18, i32 0, i32 0, !dbg !1704
  %20 = load i32, ptr %19, align 8, !dbg !1704
  %21 = and i32 %20, 4, !dbg !1705
  %22 = icmp ne i32 %21, 0, !dbg !1705
  br i1 %22, label %23, label %24, !dbg !1706

23:                                               ; preds = %17
  store ptr @.str.37, ptr %2, align 8, !dbg !1707
  br label %25, !dbg !1707

24:                                               ; preds = %17
  store ptr @.str.38, ptr %2, align 8, !dbg !1708
  br label %25, !dbg !1708

25:                                               ; preds = %24, %23, %16, %9
  %26 = load ptr, ptr %2, align 8, !dbg !1709
  ret ptr %26, !dbg !1709
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { alwaysinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind }
attributes #10 = { noreturn }
attributes #11 = { nounwind willreturn memory(read) }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!469, !470, !471, !472, !473, !474, !475}
!llvm.ident = !{!476}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "error_descriptor", scope: !2, file: !3, line: 67, type: !446, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lwan_response_init", scope: !3, file: !3, line: 65, type: !4, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!3 = !DIFile(filename: "common/lwan-response.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "01cc1c0717cf554caf1186c7b49ddf10")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C11, file: !7, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !8, retainedTypes: !80, globals: !104, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/raj/lwan/common/lwan-response.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "01cc1c0717cf554caf1186c7b49ddf10")
!8 = !{!9, !23, !31, !50, !55}
!9 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 145, baseType: !11, size: 32, elements: !12)
!10 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22}
!13 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!14 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!15 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!16 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!17 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!18 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!19 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!20 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!21 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!22 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 158, baseType: !11, size: 32, elements: !24)
!24 = !{!25, !26, !27, !28, !29, !30}
!25 = !DIEnumerator(name: "CONN_MASK", value: -1)
!26 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!27 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!28 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!29 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!30 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 114, baseType: !32, size: 32, elements: !33)
!32 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!33 = !{!34, !35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49}
!34 = !DIEnumerator(name: "HTTP_OK", value: 200)
!35 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!36 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!37 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!38 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!39 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!40 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!41 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!42 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!43 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!44 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!45 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!46 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!47 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!48 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!49 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !10, line: 167, baseType: !11, size: 32, elements: !51)
!51 = !{!52, !53, !54}
!52 = !DIEnumerator(name: "CONN_CORO_ABORT", value: -1)
!53 = !DIEnumerator(name: "CONN_CORO_MAY_RESUME", value: 0)
!54 = !DIEnumerator(name: "CONN_CORO_FINISHED", value: 1)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !56, line: 202, baseType: !32, size: 32, elements: !57)
!56 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!57 = !{!58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!58 = !DIEnumerator(name: "MSG_OOB", value: 1)
!59 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!60 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!61 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!62 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!63 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!64 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!65 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!66 = !DIEnumerator(name: "MSG_EOR", value: 128)
!67 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!68 = !DIEnumerator(name: "MSG_FIN", value: 512)
!69 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!70 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!71 = !DIEnumerator(name: "MSG_RST", value: 4096)
!72 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!73 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!74 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!75 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!76 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!77 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!78 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!79 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!80 = !{!81, !99, !90}
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !83, line: 25, baseType: !84)
!83 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !83, line: 27, size: 256, elements: !85)
!85 = !{!86, !95, !103}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !84, file: !83, line: 31, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !84, file: !83, line: 28, size: 64, elements: !88)
!88 = !{!89, !92}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !87, file: !83, line: 29, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !87, file: !83, line: 30, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !84, file: !83, line: 34, baseType: !96, size: 128, offset: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !84, file: !83, line: 32, size: 128, elements: !97)
!97 = !{!98, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !96, file: !83, line: 33, baseType: !99, size: 64)
!99 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !100, line: 46, baseType: !101)
!100 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!101 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !96, file: !83, line: 33, baseType: !99, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !84, file: !83, line: 35, baseType: !32, size: 32, offset: 192)
!104 = !{!105, !110, !0, !115, !120, !125, !130, !135, !138, !143, !148, !151, !156, !161, !164, !169, !174, !176, !178, !183, !186, !191, !196, !201, !206, !211, !216, !218, !223, !228, !233, !235, !394, !397, !402, !407, !409, !411, !413, !419, !424, !426, !429, !431, !436, !438, !440, !442, !444}
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(scope: null, file: !3, line: 68, type: !107, isLocal: true, isDefinition: true)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 112, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 14)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !112, isLocal: true, isDefinition: true)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 104, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 13)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 16)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !122, isLocal: true, isDefinition: true)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 304, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: 38)
!125 = !DIGlobalVariableExpression(var: !126, expr: !DIExpression())
!126 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !127, isLocal: true, isDefinition: true)
!127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 240, elements: !128)
!128 = !{!129}
!129 = !DISubrange(count: 30)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 152, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 19)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 75, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 240, elements: !128)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !3, line: 79, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 24)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 184, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 23)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !3, line: 85, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 184, elements: !146)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !153, isLocal: true, isDefinition: true)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 120, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 15)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(scope: null, file: !3, line: 86, type: !158, isLocal: true, isDefinition: true)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 272, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 34)
!161 = !DIGlobalVariableExpression(var: !162, expr: !DIExpression())
!162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !163, isLocal: true, isDefinition: true)
!163 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 112, elements: !108)
!164 = !DIGlobalVariableExpression(var: !165, expr: !DIExpression())
!165 = distinct !DIGlobalVariable(scope: null, file: !3, line: 136, type: !166, isLocal: true, isDefinition: true)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 288, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 36)
!169 = !DIGlobalVariableExpression(var: !170, expr: !DIExpression())
!170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 184, type: !171, isLocal: true, isDefinition: true)
!171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 80, elements: !172)
!172 = !{!173}
!173 = !DISubrange(count: 10)
!174 = !DIGlobalVariableExpression(var: !175, expr: !DIExpression())
!175 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !171, isLocal: true, isDefinition: true)
!176 = !DIGlobalVariableExpression(var: !177, expr: !DIExpression())
!177 = distinct !DIGlobalVariable(scope: null, file: !3, line: 244, type: !171, isLocal: true, isDefinition: true)
!178 = !DIGlobalVariableExpression(var: !179, expr: !DIExpression())
!179 = distinct !DIGlobalVariable(scope: null, file: !3, line: 248, type: !180, isLocal: true, isDefinition: true)
!180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 232, elements: !181)
!181 = !{!182}
!182 = !DISubrange(count: 29)
!183 = !DIGlobalVariableExpression(var: !184, expr: !DIExpression())
!184 = distinct !DIGlobalVariable(scope: null, file: !3, line: 252, type: !185, isLocal: true, isDefinition: true)
!185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 152, elements: !133)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 259, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 136, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 17)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !3, line: 263, type: !193, isLocal: true, isDefinition: true)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 200, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 25)
!196 = !DIGlobalVariableExpression(var: !197, expr: !DIExpression())
!197 = distinct !DIGlobalVariable(scope: null, file: !3, line: 265, type: !198, isLocal: true, isDefinition: true)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 160, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 20)
!201 = !DIGlobalVariableExpression(var: !202, expr: !DIExpression())
!202 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !203, isLocal: true, isDefinition: true)
!203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 56, elements: !204)
!204 = !{!205}
!205 = !DISubrange(count: 7)
!206 = !DIGlobalVariableExpression(var: !207, expr: !DIExpression())
!207 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !208, isLocal: true, isDefinition: true)
!208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 40, elements: !209)
!209 = !{!210}
!210 = !DISubrange(count: 5)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 8)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !188, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !220, isLocal: true, isDefinition: true)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 168, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 21)
!223 = !DIGlobalVariableExpression(var: !224, expr: !DIExpression())
!224 = distinct !DIGlobalVariable(scope: null, file: !3, line: 299, type: !225, isLocal: true, isDefinition: true)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 72, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 9)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !3, line: 304, type: !230, isLocal: true, isDefinition: true)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 96, elements: !231)
!231 = !{!232}
!232 = !DISubrange(count: 12)
!233 = !DIGlobalVariableExpression(var: !234, expr: !DIExpression())
!234 = distinct !DIGlobalVariable(scope: null, file: !3, line: 308, type: !198, isLocal: true, isDefinition: true)
!235 = !DIGlobalVariableExpression(var: !236, expr: !DIExpression())
!236 = distinct !DIGlobalVariable(name: "last_chunk", scope: !237, file: !3, line: 352, type: !391, isLocal: true, isDefinition: true)
!237 = distinct !DISubprogram(name: "lwan_response_send_chunk", scope: !3, file: !3, line: 343, type: !238, scopeLine: 344, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!238 = !DISubroutineType(types: !239)
!239 = !{null, !240}
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !10, line: 106, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !10, line: 206, size: 1280, elements: !243)
!243 = !{!244, !246, !247, !253, !254, !348, !359, !360, !372}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !242, file: !10, line: 207, baseType: !245, size: 32)
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !10, line: 156, baseType: !9)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !242, file: !10, line: 208, baseType: !11, size: 32, offset: 32)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !242, file: !10, line: 209, baseType: !248, size: 128, offset: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !10, line: 110, baseType: !249)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !10, line: 191, size: 128, elements: !250)
!250 = !{!251, !252}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !249, file: !10, line: 192, baseType: !90, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !249, file: !10, line: 193, baseType: !99, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !242, file: !10, line: 210, baseType: !248, size: 128, offset: 192)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !242, file: !10, line: 211, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !10, line: 112, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !10, line: 196, size: 256, elements: !258)
!258 = !{!259, !261, !262, !267, !346, !347}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !10, line: 199, baseType: !260, size: 32)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !10, line: 165, baseType: !23)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !257, file: !10, line: 200, baseType: !32, size: 32, offset: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !257, file: !10, line: 201, baseType: !263, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !265, line: 34, baseType: !266)
!265 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!266 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !265, line: 34, flags: DIFlagFwdDecl)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !257, file: !10, line: 202, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !10, line: 108, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !10, line: 253, size: 832, elements: !271)
!271 = !{!272, !327, !338, !339, !343}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !270, file: !10, line: 254, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !10, line: 103, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !10, line: 275, size: 640, elements: !276)
!276 = !{!277, !303, !304, !311, !315, !326}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !275, file: !10, line: 276, baseType: !278, size: 128)
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !279, line: 25, baseType: !280)
!279 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !279, line: 41, size: 128, elements: !281)
!281 = !{!282, !299}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !280, file: !279, line: 42, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !279, line: 26, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !279, line: 29, size: 640, elements: !286)
!286 = !{!287, !289, !298}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !285, file: !279, line: 30, baseType: !288, size: 512)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !214)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !285, file: !279, line: 31, baseType: !290, size: 64, offset: 512)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !279, line: 27, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !279, line: 35, size: 192, elements: !293)
!293 = !{!294, !295, !297}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !292, file: !279, line: 36, baseType: !90, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !292, file: !279, line: 37, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !292, file: !279, line: 38, baseType: !290, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !285, file: !279, line: 32, baseType: !11, size: 32, offset: 576)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !280, file: !279, line: 43, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{null, !296}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !275, file: !10, line: 277, baseType: !255, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !275, file: !10, line: 283, baseType: !305, size: 128, offset: 192)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !275, file: !10, line: 279, size: 128, elements: !306)
!306 = !{!307, !308, !309}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !305, file: !10, line: 280, baseType: !268, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !305, file: !10, line: 281, baseType: !32, size: 32, offset: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !305, file: !10, line: 282, baseType: !310, size: 16, offset: 96)
!310 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !275, file: !10, line: 285, baseType: !312, size: 64, offset: 320)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !314, line: 6, flags: DIFlagFwdDecl)
!314 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!315 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !275, file: !10, line: 286, baseType: !316, size: 192, offset: 384)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !10, line: 111, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !10, line: 266, size: 192, elements: !318)
!318 = !{!319, !320, !321, !323, !324, !325}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !317, file: !10, line: 267, baseType: !90, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !317, file: !10, line: 268, baseType: !310, size: 16, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !317, file: !10, line: 269, baseType: !322, size: 8, offset: 80)
!322 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !317, file: !10, line: 270, baseType: !322, size: 8, offset: 88)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !317, file: !10, line: 271, baseType: !32, size: 32, offset: 96)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !317, file: !10, line: 272, baseType: !310, size: 16, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !275, file: !10, line: 287, baseType: !11, size: 32, offset: 576)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !270, file: !10, line: 259, baseType: !328, size: 576, offset: 64)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !270, file: !10, line: 255, size: 576, elements: !329)
!329 = !{!330, !331, !332}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !328, file: !10, line: 256, baseType: !137, size: 240)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !328, file: !10, line: 257, baseType: !137, size: 240, offset: 240)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !328, file: !10, line: 258, baseType: !333, size: 64, offset: 512)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !334, line: 10, baseType: !335)
!334 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !336, line: 160, baseType: !337)
!336 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!337 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !270, file: !10, line: 261, baseType: !11, size: 32, offset: 640)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !270, file: !10, line: 262, baseType: !340, size: 64, offset: 672)
!340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 64, elements: !341)
!341 = !{!342}
!342 = !DISubrange(count: 2)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !270, file: !10, line: 263, baseType: !344, size: 64, offset: 768)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !345, line: 27, baseType: !101)
!345 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!346 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !257, file: !10, line: 203, baseType: !11, size: 32, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !257, file: !10, line: 203, baseType: !11, size: 32, offset: 224)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !242, file: !10, line: 216, baseType: !349, size: 128, offset: 384)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !10, line: 213, size: 128, elements: !350)
!350 = !{!351, !358}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !10, line: 214, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !10, line: 105, baseType: !354)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !10, line: 173, size: 128, elements: !355)
!355 = !{!356, !357}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !354, file: !10, line: 174, baseType: !90, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !354, file: !10, line: 175, baseType: !90, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !349, file: !10, line: 215, baseType: !99, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !242, file: !10, line: 216, baseType: !349, size: 128, offset: 512)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !242, file: !10, line: 223, baseType: !361, size: 192, offset: 640)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !10, line: 217, size: 192, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !361, file: !10, line: 218, baseType: !333, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !361, file: !10, line: 222, baseType: !365, size: 128, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !361, file: !10, line: 219, size: 128, elements: !366)
!366 = !{!367, !371}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !365, file: !10, line: 220, baseType: !368, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !369, line: 85, baseType: !370)
!369 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !336, line: 152, baseType: !337)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !365, file: !10, line: 221, baseType: !368, size: 64, offset: 64)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !242, file: !10, line: 224, baseType: !373, size: 448, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !10, line: 107, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !10, line: 178, size: 448, elements: !375)
!375 = !{!376, !377, !378, !379, !380}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !374, file: !10, line: 179, baseType: !81, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !374, file: !10, line: 180, baseType: !93, size: 64, offset: 64)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !374, file: !10, line: 181, baseType: !99, size: 64, offset: 128)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !374, file: !10, line: 182, baseType: !352, size: 64, offset: 192)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !374, file: !10, line: 188, baseType: !381, size: 192, offset: 256)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !374, file: !10, line: 184, size: 192, elements: !382)
!382 = !{!383, !388, !389}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !381, file: !10, line: 185, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!387, !240, !296}
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !10, line: 131, baseType: !31)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !381, file: !10, line: 186, baseType: !296, size: 64, offset: 64)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !381, file: !10, line: 187, baseType: !296, size: 64, offset: 128)
!390 = !{}
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 48, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 6)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 358, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 48, elements: !392)
!397 = !DIGlobalVariableExpression(var: !398, expr: !DIExpression())
!398 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !399, isLocal: true, isDefinition: true)
!399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 24, elements: !400)
!400 = !{!401}
!401 = !DISubrange(count: 3)
!402 = !DIGlobalVariableExpression(var: !403, expr: !DIExpression())
!403 = distinct !DIGlobalVariable(scope: null, file: !3, line: 391, type: !404, isLocal: true, isDefinition: true)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 144, elements: !405)
!405 = !{!406}
!406 = !DISubrange(count: 18)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !3, line: 416, type: !213, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !3, line: 431, type: !203, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 441, type: !208, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(name: "error_template", scope: !6, file: !3, line: 32, type: !415, isLocal: true, isDefinition: true)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !417, line: 25, baseType: !418)
!417 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!418 = !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !417, line: 25, flags: DIFlagFwdDecl)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 8888, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 1111)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(name: "error_template_str", scope: !6, file: !3, line: 34, type: !93, isLocal: true, isDefinition: true)
!426 = !DIGlobalVariableExpression(var: !427, expr: !DIExpression())
!427 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !428, isLocal: true, isDefinition: true)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 96, elements: !231)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !137, isLocal: true, isDefinition: true)
!431 = !DIGlobalVariableExpression(var: !432, expr: !DIExpression())
!432 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !433, isLocal: true, isDefinition: true)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32, elements: !434)
!434 = !{!435}
!435 = !DISubrange(count: 4)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !433, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 95, type: !433, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !3, line: 97, type: !208, isLocal: true, isDefinition: true)
!442 = !DIGlobalVariableExpression(var: !443, expr: !DIExpression())
!443 = distinct !DIGlobalVariable(scope: null, file: !3, line: 99, type: !208, isLocal: true, isDefinition: true)
!444 = !DIGlobalVariableExpression(var: !445, expr: !DIExpression())
!445 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !213, isLocal: true, isDefinition: true)
!446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 1152, elements: !400)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !417, line: 26, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !417, line: 30, size: 384, elements: !449)
!449 = !{!450, !451, !453, !457, !461, !466}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !417, line: 31, baseType: !93, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !448, file: !417, line: 32, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !368)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !448, file: !417, line: 34, baseType: !454, size: 64, offset: 128)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DISubroutineType(types: !456)
!456 = !{null, !81, !296}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !448, file: !417, line: 35, baseType: !458, size: 64, offset: 192)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = !DISubroutineType(types: !460)
!460 = !{!322, !296}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !448, file: !417, line: 37, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !417, line: 28, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = !DISubroutineType(types: !465)
!465 = !{!11, !263}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !448, file: !417, line: 38, baseType: !467, size: 64, offset: 320)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !447)
!469 = !{i32 7, !"Dwarf Version", i32 5}
!470 = !{i32 2, !"Debug Info Version", i32 3}
!471 = !{i32 1, !"wchar_size", i32 4}
!472 = !{i32 8, !"PIC Level", i32 2}
!473 = !{i32 7, !"PIE Level", i32 2}
!474 = !{i32 7, !"uwtable", i32 2}
!475 = !{i32 7, !"frame-pointer", i32 2}
!476 = !{!"clang version 16.0.0"}
!477 = !DILocation(line: 73, column: 5, scope: !478)
!478 = distinct !DILexicalBlock(scope: !479, file: !3, line: 73, column: 5)
!479 = distinct !DILexicalBlock(scope: !2, file: !3, line: 73, column: 5)
!480 = !DILocation(line: 73, column: 5, scope: !479)
!481 = !DILocation(line: 75, column: 5, scope: !2)
!482 = !DILocation(line: 77, column: 46, scope: !2)
!483 = !DILocation(line: 77, column: 22, scope: !2)
!484 = !DILocation(line: 77, column: 20, scope: !2)
!485 = !DILocation(line: 78, column: 9, scope: !486)
!486 = distinct !DILexicalBlock(scope: !2, file: !3, line: 78, column: 9)
!487 = !DILocation(line: 78, column: 9, scope: !2)
!488 = !DILocation(line: 79, column: 9, scope: !486)
!489 = !DILocation(line: 80, column: 1, scope: !2)
!490 = distinct !DISubprogram(name: "lwan_response_shutdown", scope: !3, file: !3, line: 83, type: !4, scopeLine: 84, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!491 = !DILocation(line: 85, column: 5, scope: !490)
!492 = !DILocation(line: 86, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !494, file: !3, line: 86, column: 5)
!494 = distinct !DILexicalBlock(scope: !490, file: !3, line: 86, column: 5)
!495 = !DILocation(line: 86, column: 5, scope: !494)
!496 = !DILocation(line: 87, column: 19, scope: !490)
!497 = !DILocation(line: 87, column: 5, scope: !490)
!498 = !DILocation(line: 88, column: 1, scope: !490)
!499 = distinct !DISubprogram(name: "lwan_response", scope: !3, file: !3, line: 122, type: !500, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!500 = !DISubroutineType(types: !501)
!501 = !{null, !240, !387}
!502 = !DILocalVariable(name: "request", arg: 1, scope: !499, file: !3, line: 122, type: !240)
!503 = !DILocation(line: 122, column: 31, scope: !499)
!504 = !DILocalVariable(name: "status", arg: 2, scope: !499, file: !3, line: 122, type: !387)
!505 = !DILocation(line: 122, column: 59, scope: !499)
!506 = !DILocalVariable(name: "headers", scope: !499, file: !3, line: 124, type: !507)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 4096, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 512)
!510 = !DILocation(line: 124, column: 10, scope: !499)
!511 = !DILocation(line: 126, column: 9, scope: !512)
!512 = distinct !DILexicalBlock(scope: !499, file: !3, line: 126, column: 9)
!513 = !DILocation(line: 126, column: 18, scope: !512)
!514 = !DILocation(line: 126, column: 24, scope: !512)
!515 = !DILocation(line: 126, column: 9, scope: !499)
!516 = !DILocation(line: 128, column: 13, scope: !517)
!517 = distinct !DILexicalBlock(scope: !518, file: !3, line: 128, column: 13)
!518 = distinct !DILexicalBlock(scope: !512, file: !3, line: 126, column: 53)
!519 = !DILocation(line: 128, column: 13, scope: !518)
!520 = !DILocation(line: 129, column: 24, scope: !517)
!521 = !DILocation(line: 129, column: 33, scope: !517)
!522 = !DILocation(line: 129, column: 39, scope: !517)
!523 = !DILocation(line: 129, column: 13, scope: !517)
!524 = !DILocation(line: 130, column: 34, scope: !518)
!525 = !DILocation(line: 130, column: 9, scope: !518)
!526 = !DILocation(line: 131, column: 21, scope: !518)
!527 = !DILocation(line: 131, column: 30, scope: !518)
!528 = !DILocation(line: 131, column: 9, scope: !518)
!529 = !DILocation(line: 132, column: 9, scope: !518)
!530 = !DILocation(line: 135, column: 9, scope: !531)
!531 = distinct !DILexicalBlock(scope: !499, file: !3, line: 135, column: 9)
!532 = !DILocation(line: 135, column: 9, scope: !499)
!533 = !DILocation(line: 136, column: 9, scope: !534)
!534 = distinct !DILexicalBlock(scope: !531, file: !3, line: 135, column: 59)
!535 = !DILocation(line: 137, column: 9, scope: !534)
!536 = !DILocation(line: 142, column: 9, scope: !537)
!537 = distinct !DILexicalBlock(scope: !499, file: !3, line: 142, column: 9)
!538 = !DILocation(line: 142, column: 9, scope: !499)
!539 = !DILocation(line: 143, column: 31, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !3, line: 142, column: 49)
!541 = !DILocation(line: 143, column: 40, scope: !540)
!542 = !DILocation(line: 143, column: 9, scope: !540)
!543 = !DILocation(line: 144, column: 9, scope: !540)
!544 = !DILocation(line: 147, column: 17, scope: !499)
!545 = !DILocation(line: 147, column: 26, scope: !499)
!546 = !DILocation(line: 147, column: 5, scope: !499)
!547 = !DILocation(line: 149, column: 9, scope: !548)
!548 = distinct !DILexicalBlock(scope: !499, file: !3, line: 149, column: 9)
!549 = !DILocation(line: 149, column: 18, scope: !548)
!550 = !DILocation(line: 149, column: 27, scope: !548)
!551 = !DILocation(line: 149, column: 34, scope: !548)
!552 = !DILocation(line: 149, column: 9, scope: !499)
!553 = !DILocalVariable(name: "callback_status", scope: !554, file: !3, line: 150, type: !387)
!554 = distinct !DILexicalBlock(scope: !548, file: !3, line: 149, column: 44)
!555 = !DILocation(line: 150, column: 28, scope: !554)
!556 = !DILocation(line: 152, column: 27, scope: !554)
!557 = !DILocation(line: 152, column: 36, scope: !554)
!558 = !DILocation(line: 152, column: 45, scope: !554)
!559 = !DILocation(line: 152, column: 52, scope: !554)
!560 = !DILocation(line: 152, column: 61, scope: !554)
!561 = !DILocation(line: 153, column: 21, scope: !554)
!562 = !DILocation(line: 153, column: 30, scope: !554)
!563 = !DILocation(line: 153, column: 39, scope: !554)
!564 = !DILocation(line: 153, column: 46, scope: !554)
!565 = !DILocation(line: 152, column: 25, scope: !554)
!566 = !DILocation(line: 155, column: 9, scope: !554)
!567 = !DILocation(line: 155, column: 18, scope: !554)
!568 = !DILocation(line: 155, column: 27, scope: !554)
!569 = !DILocation(line: 155, column: 34, scope: !554)
!570 = !DILocation(line: 155, column: 43, scope: !554)
!571 = !DILocation(line: 157, column: 13, scope: !572)
!572 = distinct !DILexicalBlock(scope: !554, file: !3, line: 157, column: 13)
!573 = !DILocation(line: 157, column: 29, scope: !572)
!574 = !DILocation(line: 157, column: 13, scope: !554)
!575 = !DILocation(line: 158, column: 35, scope: !572)
!576 = !DILocation(line: 158, column: 44, scope: !572)
!577 = !DILocation(line: 158, column: 13, scope: !572)
!578 = !DILocation(line: 159, column: 9, scope: !554)
!579 = !DILocalVariable(name: "header_len", scope: !499, file: !3, line: 162, type: !99)
!580 = !DILocation(line: 162, column: 12, scope: !499)
!581 = !DILocation(line: 162, column: 54, scope: !499)
!582 = !DILocation(line: 162, column: 63, scope: !499)
!583 = !DILocation(line: 162, column: 71, scope: !499)
!584 = !DILocalVariable(name: "request", arg: 1, scope: !585, file: !3, line: 231, type: !240)
!585 = distinct !DISubprogram(name: "lwan_prepare_response_header", scope: !3, file: !3, line: 231, type: !586, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!586 = !DISubroutineType(types: !587)
!587 = !{!99, !240, !387, !90, !99}
!588 = !DILocation(line: 231, column: 46, scope: !585, inlinedAt: !589)
!589 = distinct !DILocation(line: 162, column: 25, scope: !499)
!590 = !DILocalVariable(name: "status", arg: 2, scope: !585, file: !3, line: 231, type: !387)
!591 = !DILocation(line: 231, column: 74, scope: !585, inlinedAt: !589)
!592 = !DILocalVariable(name: "headers", arg: 3, scope: !585, file: !3, line: 231, type: !90)
!593 = !DILocation(line: 231, column: 87, scope: !585, inlinedAt: !589)
!594 = !DILocalVariable(name: "headers_buf_size", arg: 4, scope: !585, file: !3, line: 231, type: !99)
!595 = !DILocation(line: 231, column: 105, scope: !585, inlinedAt: !589)
!596 = !DILocalVariable(name: "p_headers", scope: !585, file: !3, line: 233, type: !90)
!597 = !DILocation(line: 233, column: 11, scope: !585, inlinedAt: !589)
!598 = !DILocalVariable(name: "p_headers_end", scope: !585, file: !3, line: 234, type: !90)
!599 = !DILocation(line: 234, column: 11, scope: !585, inlinedAt: !589)
!600 = !DILocation(line: 234, column: 27, scope: !585, inlinedAt: !589)
!601 = !DILocation(line: 234, column: 37, scope: !585, inlinedAt: !589)
!602 = !DILocation(line: 234, column: 35, scope: !585, inlinedAt: !589)
!603 = !DILocalVariable(name: "buffer", scope: !585, file: !3, line: 235, type: !193)
!604 = !DILocation(line: 235, column: 10, scope: !585, inlinedAt: !589)
!605 = !DILocalVariable(name: "date_overridden", scope: !585, file: !3, line: 236, type: !322)
!606 = !DILocation(line: 236, column: 10, scope: !585, inlinedAt: !589)
!607 = !DILocalVariable(name: "expires_overridden", scope: !585, file: !3, line: 237, type: !322)
!608 = !DILocation(line: 237, column: 10, scope: !585, inlinedAt: !589)
!609 = !DILocation(line: 239, column: 17, scope: !585, inlinedAt: !589)
!610 = !DILocation(line: 239, column: 15, scope: !585, inlinedAt: !589)
!611 = !DILocation(line: 241, column: 9, scope: !612, inlinedAt: !589)
!612 = distinct !DILexicalBlock(scope: !585, file: !3, line: 241, column: 9)
!613 = !DILocation(line: 241, column: 18, scope: !612, inlinedAt: !589)
!614 = !DILocation(line: 241, column: 24, scope: !612, inlinedAt: !589)
!615 = !DILocation(line: 241, column: 9, scope: !585, inlinedAt: !589)
!616 = !DILocation(line: 242, column: 9, scope: !617, inlinedAt: !589)
!617 = distinct !DILexicalBlock(scope: !618, file: !3, line: 242, column: 9)
!618 = distinct !DILexicalBlock(scope: !612, file: !3, line: 242, column: 9)
!619 = !DILocation(line: 242, column: 9, scope: !618, inlinedAt: !589)
!620 = !DILocation(line: 244, column: 9, scope: !621, inlinedAt: !589)
!621 = distinct !DILexicalBlock(scope: !622, file: !3, line: 244, column: 9)
!622 = distinct !DILexicalBlock(scope: !612, file: !3, line: 244, column: 9)
!623 = !DILocation(line: 244, column: 9, scope: !622, inlinedAt: !589)
!624 = !DILocalVariable(name: "len", scope: !625, file: !3, line: 245, type: !99)
!625 = distinct !DILexicalBlock(scope: !585, file: !3, line: 245, column: 5)
!626 = !DILocation(line: 245, column: 5, scope: !625, inlinedAt: !589)
!627 = !DILocation(line: 245, column: 5, scope: !628, inlinedAt: !589)
!628 = distinct !DILexicalBlock(scope: !629, file: !3, line: 245, column: 5)
!629 = distinct !DILexicalBlock(scope: !625, file: !3, line: 245, column: 5)
!630 = !DILocation(line: 245, column: 5, scope: !629, inlinedAt: !589)
!631 = !DILocation(line: 247, column: 9, scope: !632, inlinedAt: !589)
!632 = distinct !DILexicalBlock(scope: !585, file: !3, line: 247, column: 9)
!633 = !DILocation(line: 247, column: 18, scope: !632, inlinedAt: !589)
!634 = !DILocation(line: 247, column: 24, scope: !632, inlinedAt: !589)
!635 = !DILocation(line: 247, column: 9, scope: !585, inlinedAt: !589)
!636 = !DILocation(line: 248, column: 9, scope: !637, inlinedAt: !589)
!637 = distinct !DILexicalBlock(scope: !638, file: !3, line: 248, column: 9)
!638 = distinct !DILexicalBlock(scope: !639, file: !3, line: 248, column: 9)
!639 = distinct !DILexicalBlock(scope: !632, file: !3, line: 247, column: 53)
!640 = !DILocation(line: 248, column: 9, scope: !638, inlinedAt: !589)
!641 = !DILocation(line: 249, column: 5, scope: !639, inlinedAt: !589)
!642 = !DILocation(line: 249, column: 16, scope: !643, inlinedAt: !589)
!643 = distinct !DILexicalBlock(scope: !632, file: !3, line: 249, column: 16)
!644 = !DILocation(line: 249, column: 25, scope: !643, inlinedAt: !589)
!645 = !DILocation(line: 249, column: 31, scope: !643, inlinedAt: !589)
!646 = !DILocation(line: 249, column: 16, scope: !632, inlinedAt: !589)
!647 = !DILocation(line: 251, column: 5, scope: !648, inlinedAt: !589)
!648 = distinct !DILexicalBlock(scope: !643, file: !3, line: 249, column: 61)
!649 = !DILocation(line: 252, column: 9, scope: !650, inlinedAt: !589)
!650 = distinct !DILexicalBlock(scope: !651, file: !3, line: 252, column: 9)
!651 = distinct !DILexicalBlock(scope: !652, file: !3, line: 252, column: 9)
!652 = distinct !DILexicalBlock(scope: !643, file: !3, line: 251, column: 12)
!653 = !DILocation(line: 252, column: 9, scope: !651, inlinedAt: !589)
!654 = !DILocation(line: 253, column: 13, scope: !655, inlinedAt: !589)
!655 = distinct !DILexicalBlock(scope: !652, file: !3, line: 253, column: 13)
!656 = !DILocation(line: 253, column: 22, scope: !655, inlinedAt: !589)
!657 = !DILocation(line: 253, column: 31, scope: !655, inlinedAt: !589)
!658 = !DILocation(line: 253, column: 38, scope: !655, inlinedAt: !589)
!659 = !DILocation(line: 253, column: 13, scope: !652, inlinedAt: !589)
!660 = !DILocalVariable(name: "len", scope: !661, file: !3, line: 254, type: !99)
!661 = distinct !DILexicalBlock(scope: !655, file: !3, line: 254, column: 13)
!662 = !DILocation(line: 254, column: 13, scope: !661, inlinedAt: !589)
!663 = !DILocalVariable(name: "tmp", scope: !661, file: !3, line: 254, type: !90)
!664 = !DILocation(line: 254, column: 13, scope: !665, inlinedAt: !589)
!665 = distinct !DILexicalBlock(scope: !661, file: !3, line: 254, column: 13)
!666 = !DILocation(line: 254, column: 13, scope: !667, inlinedAt: !589)
!667 = distinct !DILexicalBlock(scope: !668, file: !3, line: 254, column: 13)
!668 = distinct !DILexicalBlock(scope: !661, file: !3, line: 254, column: 13)
!669 = !DILocation(line: 254, column: 13, scope: !668, inlinedAt: !589)
!670 = !DILocalVariable(name: "len", scope: !671, file: !3, line: 256, type: !99)
!671 = distinct !DILexicalBlock(scope: !655, file: !3, line: 256, column: 13)
!672 = !DILocation(line: 256, column: 13, scope: !671, inlinedAt: !589)
!673 = !DILocalVariable(name: "tmp", scope: !671, file: !3, line: 256, type: !90)
!674 = !DILocation(line: 256, column: 13, scope: !675, inlinedAt: !589)
!675 = distinct !DILexicalBlock(scope: !671, file: !3, line: 256, column: 13)
!676 = !DILocation(line: 256, column: 13, scope: !677, inlinedAt: !589)
!677 = distinct !DILexicalBlock(scope: !678, file: !3, line: 256, column: 13)
!678 = distinct !DILexicalBlock(scope: !671, file: !3, line: 256, column: 13)
!679 = !DILocation(line: 256, column: 13, scope: !678, inlinedAt: !589)
!680 = !DILocation(line: 259, column: 5, scope: !681, inlinedAt: !589)
!681 = distinct !DILexicalBlock(scope: !682, file: !3, line: 259, column: 5)
!682 = distinct !DILexicalBlock(scope: !585, file: !3, line: 259, column: 5)
!683 = !DILocation(line: 259, column: 5, scope: !682, inlinedAt: !589)
!684 = !DILocalVariable(name: "len", scope: !685, file: !3, line: 260, type: !99)
!685 = distinct !DILexicalBlock(scope: !585, file: !3, line: 260, column: 5)
!686 = !DILocation(line: 260, column: 5, scope: !685, inlinedAt: !589)
!687 = !DILocation(line: 260, column: 5, scope: !688, inlinedAt: !589)
!688 = distinct !DILexicalBlock(scope: !689, file: !3, line: 260, column: 5)
!689 = distinct !DILexicalBlock(scope: !685, file: !3, line: 260, column: 5)
!690 = !DILocation(line: 260, column: 5, scope: !689, inlinedAt: !589)
!691 = !DILocation(line: 262, column: 9, scope: !692, inlinedAt: !589)
!692 = distinct !DILexicalBlock(scope: !585, file: !3, line: 262, column: 9)
!693 = !DILocation(line: 262, column: 18, scope: !692, inlinedAt: !589)
!694 = !DILocation(line: 262, column: 24, scope: !692, inlinedAt: !589)
!695 = !DILocation(line: 262, column: 30, scope: !692, inlinedAt: !589)
!696 = !DILocation(line: 262, column: 9, scope: !585, inlinedAt: !589)
!697 = !DILocation(line: 263, column: 9, scope: !698, inlinedAt: !589)
!698 = distinct !DILexicalBlock(scope: !699, file: !3, line: 263, column: 9)
!699 = distinct !DILexicalBlock(scope: !692, file: !3, line: 263, column: 9)
!700 = !DILocation(line: 263, column: 9, scope: !699, inlinedAt: !589)
!701 = !DILocation(line: 265, column: 9, scope: !702, inlinedAt: !589)
!702 = distinct !DILexicalBlock(scope: !703, file: !3, line: 265, column: 9)
!703 = distinct !DILexicalBlock(scope: !692, file: !3, line: 265, column: 9)
!704 = !DILocation(line: 265, column: 9, scope: !703, inlinedAt: !589)
!705 = !DILocation(line: 267, column: 10, scope: !706, inlinedAt: !589)
!706 = distinct !DILexicalBlock(scope: !585, file: !3, line: 267, column: 9)
!707 = !DILocation(line: 267, column: 17, scope: !706, inlinedAt: !589)
!708 = !DILocation(line: 267, column: 36, scope: !706, inlinedAt: !589)
!709 = !DILocation(line: 267, column: 39, scope: !706, inlinedAt: !589)
!710 = !DILocation(line: 267, column: 48, scope: !706, inlinedAt: !589)
!711 = !DILocation(line: 267, column: 57, scope: !706, inlinedAt: !589)
!712 = !DILocation(line: 267, column: 9, scope: !585, inlinedAt: !589)
!713 = !DILocalVariable(name: "header", scope: !714, file: !3, line: 268, type: !352)
!714 = distinct !DILexicalBlock(scope: !706, file: !3, line: 267, column: 67)
!715 = !DILocation(line: 268, column: 27, scope: !714, inlinedAt: !589)
!716 = !DILocation(line: 270, column: 23, scope: !717, inlinedAt: !589)
!717 = distinct !DILexicalBlock(scope: !714, file: !3, line: 270, column: 9)
!718 = !DILocation(line: 270, column: 32, scope: !717, inlinedAt: !589)
!719 = !DILocation(line: 270, column: 41, scope: !717, inlinedAt: !589)
!720 = !DILocation(line: 270, column: 21, scope: !717, inlinedAt: !589)
!721 = !DILocation(line: 270, column: 14, scope: !717, inlinedAt: !589)
!722 = !DILocation(line: 270, column: 50, scope: !723, inlinedAt: !589)
!723 = distinct !DILexicalBlock(scope: !717, file: !3, line: 270, column: 9)
!724 = !DILocation(line: 270, column: 58, scope: !723, inlinedAt: !589)
!725 = !DILocation(line: 270, column: 9, scope: !717, inlinedAt: !589)
!726 = !DILocation(line: 271, column: 17, scope: !727, inlinedAt: !589)
!727 = distinct !DILexicalBlock(scope: !728, file: !3, line: 271, column: 17)
!728 = distinct !DILexicalBlock(scope: !723, file: !3, line: 270, column: 73)
!729 = !DILocation(line: 271, column: 17, scope: !728, inlinedAt: !589)
!730 = !DILocation(line: 272, column: 17, scope: !727, inlinedAt: !589)
!731 = !DILocation(line: 273, column: 17, scope: !732, inlinedAt: !589)
!732 = distinct !DILexicalBlock(scope: !728, file: !3, line: 273, column: 17)
!733 = !DILocation(line: 273, column: 17, scope: !728, inlinedAt: !589)
!734 = !DILocation(line: 274, column: 33, scope: !732, inlinedAt: !589)
!735 = !DILocation(line: 274, column: 17, scope: !732, inlinedAt: !589)
!736 = !DILocation(line: 275, column: 17, scope: !737, inlinedAt: !589)
!737 = distinct !DILexicalBlock(scope: !728, file: !3, line: 275, column: 17)
!738 = !DILocation(line: 275, column: 17, scope: !728, inlinedAt: !589)
!739 = !DILocation(line: 276, column: 36, scope: !737, inlinedAt: !589)
!740 = !DILocation(line: 276, column: 17, scope: !737, inlinedAt: !589)
!741 = !DILocation(line: 278, column: 13, scope: !742, inlinedAt: !589)
!742 = distinct !DILexicalBlock(scope: !728, file: !3, line: 278, column: 13)
!743 = !DILocation(line: 278, column: 13, scope: !728, inlinedAt: !589)
!744 = !DILocation(line: 279, column: 13, scope: !728, inlinedAt: !589)
!745 = !DILocation(line: 280, column: 13, scope: !728, inlinedAt: !589)
!746 = !DILocalVariable(name: "len", scope: !747, file: !3, line: 281, type: !99)
!747 = distinct !DILexicalBlock(scope: !728, file: !3, line: 281, column: 13)
!748 = !DILocation(line: 281, column: 13, scope: !747, inlinedAt: !589)
!749 = !DILocation(line: 281, column: 13, scope: !750, inlinedAt: !589)
!750 = distinct !DILexicalBlock(scope: !751, file: !3, line: 281, column: 13)
!751 = distinct !DILexicalBlock(scope: !747, file: !3, line: 281, column: 13)
!752 = !DILocation(line: 281, column: 13, scope: !751, inlinedAt: !589)
!753 = !DILocation(line: 282, column: 13, scope: !728, inlinedAt: !589)
!754 = !DILocation(line: 283, column: 13, scope: !728, inlinedAt: !589)
!755 = !DILocalVariable(name: "len", scope: !756, file: !3, line: 284, type: !99)
!756 = distinct !DILexicalBlock(scope: !728, file: !3, line: 284, column: 13)
!757 = !DILocation(line: 284, column: 13, scope: !756, inlinedAt: !589)
!758 = !DILocation(line: 284, column: 13, scope: !759, inlinedAt: !589)
!759 = distinct !DILexicalBlock(scope: !760, file: !3, line: 284, column: 13)
!760 = distinct !DILexicalBlock(scope: !756, file: !3, line: 284, column: 13)
!761 = !DILocation(line: 284, column: 13, scope: !760, inlinedAt: !589)
!762 = !DILocation(line: 285, column: 9, scope: !728, inlinedAt: !589)
!763 = !DILocation(line: 270, column: 69, scope: !723, inlinedAt: !589)
!764 = !DILocation(line: 270, column: 9, scope: !723, inlinedAt: !589)
!765 = distinct !{!765, !725, !766, !767}
!766 = !DILocation(line: 285, column: 9, scope: !717, inlinedAt: !589)
!767 = !{!"llvm.loop.mustprogress"}
!768 = !DILocation(line: 286, column: 5, scope: !714, inlinedAt: !589)
!769 = !DILocation(line: 286, column: 16, scope: !770, inlinedAt: !589)
!770 = distinct !DILexicalBlock(scope: !706, file: !3, line: 286, column: 16)
!771 = !DILocation(line: 286, column: 23, scope: !770, inlinedAt: !589)
!772 = !DILocation(line: 286, column: 16, scope: !706, inlinedAt: !589)
!773 = !DILocalVariable(name: "header", scope: !774, file: !3, line: 287, type: !352)
!774 = distinct !DILexicalBlock(scope: !770, file: !3, line: 286, column: 47)
!775 = !DILocation(line: 287, column: 27, scope: !774, inlinedAt: !589)
!776 = !DILocation(line: 289, column: 23, scope: !777, inlinedAt: !589)
!777 = distinct !DILexicalBlock(scope: !774, file: !3, line: 289, column: 9)
!778 = !DILocation(line: 289, column: 32, scope: !777, inlinedAt: !589)
!779 = !DILocation(line: 289, column: 41, scope: !777, inlinedAt: !589)
!780 = !DILocation(line: 289, column: 21, scope: !777, inlinedAt: !589)
!781 = !DILocation(line: 289, column: 14, scope: !777, inlinedAt: !589)
!782 = !DILocation(line: 289, column: 50, scope: !783, inlinedAt: !589)
!783 = distinct !DILexicalBlock(scope: !777, file: !3, line: 289, column: 9)
!784 = !DILocation(line: 289, column: 58, scope: !783, inlinedAt: !589)
!785 = !DILocation(line: 289, column: 9, scope: !777, inlinedAt: !589)
!786 = !DILocation(line: 290, column: 25, scope: !787, inlinedAt: !589)
!787 = distinct !DILexicalBlock(scope: !788, file: !3, line: 290, column: 17)
!788 = distinct !DILexicalBlock(scope: !783, file: !3, line: 289, column: 73)
!789 = !DILocation(line: 290, column: 33, scope: !787, inlinedAt: !589)
!790 = !DILocation(line: 290, column: 18, scope: !787, inlinedAt: !589)
!791 = !DILocation(line: 290, column: 17, scope: !788, inlinedAt: !589)
!792 = !DILocation(line: 291, column: 17, scope: !793, inlinedAt: !589)
!793 = distinct !DILexicalBlock(scope: !794, file: !3, line: 291, column: 17)
!794 = distinct !DILexicalBlock(scope: !795, file: !3, line: 291, column: 17)
!795 = distinct !DILexicalBlock(scope: !787, file: !3, line: 290, column: 59)
!796 = !DILocation(line: 291, column: 17, scope: !794, inlinedAt: !589)
!797 = !DILocalVariable(name: "len", scope: !798, file: !3, line: 292, type: !99)
!798 = distinct !DILexicalBlock(scope: !795, file: !3, line: 292, column: 17)
!799 = !DILocation(line: 292, column: 17, scope: !798, inlinedAt: !589)
!800 = !DILocation(line: 292, column: 17, scope: !801, inlinedAt: !589)
!801 = distinct !DILexicalBlock(scope: !802, file: !3, line: 292, column: 17)
!802 = distinct !DILexicalBlock(scope: !798, file: !3, line: 292, column: 17)
!803 = !DILocation(line: 292, column: 17, scope: !802, inlinedAt: !589)
!804 = !DILocation(line: 293, column: 17, scope: !795, inlinedAt: !589)
!805 = !DILocation(line: 289, column: 69, scope: !783, inlinedAt: !589)
!806 = !DILocation(line: 289, column: 9, scope: !783, inlinedAt: !589)
!807 = distinct !{!807, !785, !808, !767}
!808 = !DILocation(line: 295, column: 9, scope: !777, inlinedAt: !589)
!809 = !DILocation(line: 296, column: 5, scope: !774, inlinedAt: !589)
!810 = !DILocation(line: 298, column: 9, scope: !811, inlinedAt: !589)
!811 = distinct !DILexicalBlock(scope: !585, file: !3, line: 298, column: 9)
!812 = !DILocation(line: 298, column: 9, scope: !585, inlinedAt: !589)
!813 = !DILocation(line: 299, column: 9, scope: !814, inlinedAt: !589)
!814 = distinct !DILexicalBlock(scope: !815, file: !3, line: 299, column: 9)
!815 = distinct !DILexicalBlock(scope: !816, file: !3, line: 299, column: 9)
!816 = distinct !DILexicalBlock(scope: !811, file: !3, line: 298, column: 35)
!817 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !589)
!818 = !DILocation(line: 300, column: 9, scope: !819, inlinedAt: !589)
!819 = distinct !DILexicalBlock(scope: !820, file: !3, line: 300, column: 9)
!820 = distinct !DILexicalBlock(scope: !816, file: !3, line: 300, column: 9)
!821 = !DILocation(line: 300, column: 9, scope: !820, inlinedAt: !589)
!822 = !DILocation(line: 301, column: 5, scope: !816, inlinedAt: !589)
!823 = !DILocation(line: 303, column: 9, scope: !824, inlinedAt: !589)
!824 = distinct !DILexicalBlock(scope: !585, file: !3, line: 303, column: 9)
!825 = !DILocation(line: 303, column: 9, scope: !585, inlinedAt: !589)
!826 = !DILocation(line: 304, column: 9, scope: !827, inlinedAt: !589)
!827 = distinct !DILexicalBlock(scope: !828, file: !3, line: 304, column: 9)
!828 = distinct !DILexicalBlock(scope: !829, file: !3, line: 304, column: 9)
!829 = distinct !DILexicalBlock(scope: !824, file: !3, line: 303, column: 38)
!830 = !DILocation(line: 304, column: 9, scope: !828, inlinedAt: !589)
!831 = !DILocation(line: 305, column: 9, scope: !832, inlinedAt: !589)
!832 = distinct !DILexicalBlock(scope: !833, file: !3, line: 305, column: 9)
!833 = distinct !DILexicalBlock(scope: !829, file: !3, line: 305, column: 9)
!834 = !DILocation(line: 305, column: 9, scope: !833, inlinedAt: !589)
!835 = !DILocation(line: 306, column: 5, scope: !829, inlinedAt: !589)
!836 = !DILocation(line: 308, column: 5, scope: !837, inlinedAt: !589)
!837 = distinct !DILexicalBlock(scope: !838, file: !3, line: 308, column: 5)
!838 = distinct !DILexicalBlock(scope: !585, file: !3, line: 308, column: 5)
!839 = !DILocation(line: 308, column: 5, scope: !838, inlinedAt: !589)
!840 = !DILocation(line: 310, column: 21, scope: !585, inlinedAt: !589)
!841 = !DILocation(line: 310, column: 33, scope: !585, inlinedAt: !589)
!842 = !DILocation(line: 310, column: 31, scope: !585, inlinedAt: !589)
!843 = !DILocation(line: 310, column: 41, scope: !585, inlinedAt: !589)
!844 = !DILocation(line: 310, column: 5, scope: !585, inlinedAt: !589)
!845 = !DILocation(line: 311, column: 1, scope: !585, inlinedAt: !589)
!846 = !DILocation(line: 163, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !499, file: !3, line: 163, column: 9)
!848 = !DILocation(line: 163, column: 9, scope: !499)
!849 = !DILocation(line: 164, column: 31, scope: !850)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 163, column: 32)
!851 = !DILocation(line: 164, column: 9, scope: !850)
!852 = !DILocation(line: 165, column: 9, scope: !850)
!853 = !DILocation(line: 168, column: 9, scope: !854)
!854 = distinct !DILexicalBlock(scope: !499, file: !3, line: 168, column: 9)
!855 = !DILocation(line: 168, column: 18, scope: !854)
!856 = !DILocation(line: 168, column: 24, scope: !854)
!857 = !DILocation(line: 168, column: 9, scope: !499)
!858 = !DILocation(line: 169, column: 20, scope: !859)
!859 = distinct !DILexicalBlock(scope: !854, file: !3, line: 168, column: 47)
!860 = !DILocation(line: 169, column: 29, scope: !859)
!861 = !DILocation(line: 169, column: 38, scope: !859)
!862 = !DILocation(line: 169, column: 9, scope: !859)
!863 = !DILocation(line: 170, column: 9, scope: !859)
!864 = !DILocalVariable(name: "response_vec", scope: !499, file: !3, line: 173, type: !865)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 256, elements: !341)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !867, line: 26, size: 128, elements: !868)
!867 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !866, file: !867, line: 28, baseType: !296, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !866, file: !867, line: 29, baseType: !99, size: 64, offset: 64)
!871 = !DILocation(line: 173, column: 18, scope: !499)
!872 = !DILocation(line: 173, column: 35, scope: !499)
!873 = !DILocation(line: 174, column: 9, scope: !499)
!874 = !DILocation(line: 174, column: 23, scope: !499)
!875 = !DILocation(line: 174, column: 43, scope: !499)
!876 = !DILocation(line: 175, column: 9, scope: !499)
!877 = !DILocation(line: 175, column: 23, scope: !499)
!878 = !DILocation(line: 175, column: 79, scope: !499)
!879 = !DILocation(line: 178, column: 17, scope: !499)
!880 = !DILocation(line: 178, column: 26, scope: !499)
!881 = !DILocation(line: 178, column: 5, scope: !499)
!882 = !DILocation(line: 179, column: 1, scope: !499)
!883 = !DILocalVariable(name: "request", arg: 1, scope: !237, file: !3, line: 343, type: !240)
!884 = !DILocation(line: 343, column: 42, scope: !237)
!885 = !DILocation(line: 345, column: 11, scope: !886)
!886 = distinct !DILexicalBlock(scope: !237, file: !3, line: 345, column: 9)
!887 = !DILocation(line: 345, column: 20, scope: !886)
!888 = !DILocation(line: 345, column: 26, scope: !886)
!889 = !DILocation(line: 345, column: 9, scope: !237)
!890 = !DILocation(line: 346, column: 13, scope: !891)
!891 = distinct !DILexicalBlock(scope: !892, file: !3, line: 346, column: 13)
!892 = distinct !DILexicalBlock(scope: !886, file: !3, line: 345, column: 52)
!893 = !DILocation(line: 346, column: 13, scope: !892)
!894 = !DILocation(line: 347, column: 13, scope: !891)
!895 = !DILocation(line: 348, column: 5, scope: !892)
!896 = !DILocalVariable(name: "buffer_len", scope: !237, file: !3, line: 350, type: !99)
!897 = !DILocation(line: 350, column: 12, scope: !237)
!898 = !DILocation(line: 350, column: 25, scope: !237)
!899 = !DILocation(line: 351, column: 9, scope: !900)
!900 = distinct !DILexicalBlock(scope: !237, file: !3, line: 351, column: 9)
!901 = !DILocation(line: 351, column: 9, scope: !237)
!902 = !DILocation(line: 353, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !900, file: !3, line: 351, column: 32)
!904 = !DILocation(line: 353, column: 9, scope: !903)
!905 = !DILocation(line: 354, column: 9, scope: !903)
!906 = !DILocalVariable(name: "chunk_size", scope: !237, file: !3, line: 357, type: !907)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 208, elements: !908)
!908 = !{!909}
!909 = !DISubrange(count: 26)
!910 = !DILocation(line: 357, column: 10, scope: !237)
!911 = !DILocalVariable(name: "converted_len", scope: !237, file: !3, line: 358, type: !11)
!912 = !DILocation(line: 358, column: 9, scope: !237)
!913 = !DILocation(line: 358, column: 34, scope: !237)
!914 = !DILocation(line: 358, column: 77, scope: !237)
!915 = !DILocation(line: 358, column: 25, scope: !237)
!916 = !DILocation(line: 359, column: 9, scope: !917)
!917 = distinct !DILexicalBlock(scope: !237, file: !3, line: 359, column: 9)
!918 = !DILocation(line: 359, column: 9, scope: !237)
!919 = !DILocation(line: 360, column: 9, scope: !917)
!920 = !DILocalVariable(name: "chunk_size_len", scope: !237, file: !3, line: 361, type: !99)
!921 = !DILocation(line: 361, column: 12, scope: !237)
!922 = !DILocation(line: 361, column: 37, scope: !237)
!923 = !DILocation(line: 361, column: 29, scope: !237)
!924 = !DILocalVariable(name: "chunk_vec", scope: !237, file: !3, line: 363, type: !925)
!925 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 384, elements: !400)
!926 = !DILocation(line: 363, column: 18, scope: !237)
!927 = !DILocation(line: 363, column: 32, scope: !237)
!928 = !DILocation(line: 364, column: 9, scope: !237)
!929 = !DILocation(line: 364, column: 23, scope: !237)
!930 = !DILocation(line: 364, column: 46, scope: !237)
!931 = !DILocation(line: 365, column: 9, scope: !237)
!932 = !DILocation(line: 365, column: 23, scope: !237)
!933 = !DILocation(line: 365, column: 79, scope: !237)
!934 = !DILocation(line: 366, column: 9, scope: !237)
!935 = !DILocation(line: 369, column: 17, scope: !237)
!936 = !DILocation(line: 369, column: 26, scope: !237)
!937 = !DILocation(line: 369, column: 5, scope: !237)
!938 = !DILocation(line: 371, column: 9, scope: !939)
!939 = distinct !DILexicalBlock(scope: !237, file: !3, line: 371, column: 9)
!940 = !DILocation(line: 371, column: 9, scope: !237)
!941 = !DILocation(line: 372, column: 20, scope: !942)
!942 = distinct !DILexicalBlock(scope: !939, file: !3, line: 371, column: 64)
!943 = !DILocation(line: 372, column: 29, scope: !942)
!944 = !DILocation(line: 372, column: 35, scope: !942)
!945 = !DILocation(line: 372, column: 9, scope: !942)
!946 = !DILocation(line: 373, column: 9, scope: !942)
!947 = !DILabel(scope: !237, name: "abort_coro", file: !3, line: 376)
!948 = !DILocation(line: 376, column: 1, scope: !237)
!949 = !DILocation(line: 377, column: 16, scope: !237)
!950 = !DILocation(line: 377, column: 25, scope: !237)
!951 = !DILocation(line: 377, column: 31, scope: !237)
!952 = !DILocation(line: 377, column: 5, scope: !237)
!953 = !DILocation(line: 378, column: 5, scope: !237)
!954 = !DILocation(line: 379, column: 1, scope: !237)
!955 = distinct !DISubprogram(name: "log_request", scope: !3, file: !3, line: 104, type: !500, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, retainedNodes: !390)
!956 = !DILocalVariable(name: "request", arg: 1, scope: !955, file: !3, line: 104, type: !240)
!957 = !DILocation(line: 104, column: 29, scope: !955)
!958 = !DILocalVariable(name: "status", arg: 2, scope: !955, file: !3, line: 104, type: !387)
!959 = !DILocation(line: 104, column: 57, scope: !955)
!960 = !DILocalVariable(name: "ip_buffer", scope: !955, file: !3, line: 106, type: !961)
!961 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 368, elements: !962)
!962 = !{!963}
!963 = !DISubrange(count: 46)
!964 = !DILocation(line: 106, column: 10, scope: !955)
!965 = !DILocation(line: 108, column: 5, scope: !955)
!966 = !DILocation(line: 116, column: 1, scope: !955)
!967 = distinct !DISubprogram(name: "lwan_default_response", scope: !3, file: !3, line: 182, type: !500, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!968 = !DILocalVariable(name: "request", arg: 1, scope: !967, file: !3, line: 182, type: !240)
!969 = !DILocation(line: 182, column: 39, scope: !967)
!970 = !DILocalVariable(name: "status", arg: 2, scope: !967, file: !3, line: 182, type: !387)
!971 = !DILocation(line: 182, column: 67, scope: !967)
!972 = !DILocation(line: 184, column: 5, scope: !967)
!973 = !DILocation(line: 184, column: 14, scope: !967)
!974 = !DILocation(line: 184, column: 23, scope: !967)
!975 = !DILocation(line: 184, column: 33, scope: !967)
!976 = !DILocation(line: 186, column: 32, scope: !967)
!977 = !DILocation(line: 186, column: 48, scope: !967)
!978 = !DILocation(line: 186, column: 57, scope: !967)
!979 = !DILocation(line: 186, column: 66, scope: !967)
!980 = !DILocation(line: 187, column: 36, scope: !967)
!981 = !DILocation(line: 188, column: 57, scope: !967)
!982 = !DILocation(line: 188, column: 30, scope: !967)
!983 = !DILocation(line: 189, column: 68, scope: !967)
!984 = !DILocation(line: 189, column: 29, scope: !967)
!985 = !DILocation(line: 186, column: 5, scope: !967)
!986 = !DILocation(line: 192, column: 19, scope: !967)
!987 = !DILocation(line: 192, column: 28, scope: !967)
!988 = !DILocation(line: 192, column: 5, scope: !967)
!989 = !DILocation(line: 193, column: 1, scope: !967)
!990 = !DILocation(line: 231, column: 46, scope: !585)
!991 = !DILocation(line: 231, column: 74, scope: !585)
!992 = !DILocation(line: 231, column: 87, scope: !585)
!993 = !DILocation(line: 231, column: 105, scope: !585)
!994 = !DILocation(line: 233, column: 11, scope: !585)
!995 = !DILocation(line: 234, column: 11, scope: !585)
!996 = !DILocation(line: 234, column: 27, scope: !585)
!997 = !DILocation(line: 234, column: 37, scope: !585)
!998 = !DILocation(line: 234, column: 35, scope: !585)
!999 = !DILocation(line: 235, column: 10, scope: !585)
!1000 = !DILocation(line: 236, column: 10, scope: !585)
!1001 = !DILocation(line: 237, column: 10, scope: !585)
!1002 = !DILocation(line: 239, column: 17, scope: !585)
!1003 = !DILocation(line: 239, column: 15, scope: !585)
!1004 = !DILocation(line: 241, column: 9, scope: !612)
!1005 = !DILocation(line: 241, column: 18, scope: !612)
!1006 = !DILocation(line: 241, column: 24, scope: !612)
!1007 = !DILocation(line: 241, column: 9, scope: !585)
!1008 = !DILocation(line: 242, column: 9, scope: !612)
!1009 = !DILocation(line: 242, column: 9, scope: !617)
!1010 = !DILocation(line: 242, column: 9, scope: !618)
!1011 = !DILocation(line: 244, column: 9, scope: !612)
!1012 = !DILocation(line: 244, column: 9, scope: !621)
!1013 = !DILocation(line: 244, column: 9, scope: !622)
!1014 = !DILocation(line: 245, column: 5, scope: !585)
!1015 = !DILocation(line: 245, column: 5, scope: !625)
!1016 = !DILocation(line: 245, column: 5, scope: !628)
!1017 = !DILocation(line: 245, column: 5, scope: !629)
!1018 = !DILocation(line: 247, column: 9, scope: !632)
!1019 = !DILocation(line: 247, column: 18, scope: !632)
!1020 = !DILocation(line: 247, column: 24, scope: !632)
!1021 = !DILocation(line: 247, column: 9, scope: !585)
!1022 = !DILocation(line: 248, column: 9, scope: !639)
!1023 = !DILocation(line: 248, column: 9, scope: !637)
!1024 = !DILocation(line: 248, column: 9, scope: !638)
!1025 = !DILocation(line: 249, column: 5, scope: !639)
!1026 = !DILocation(line: 249, column: 16, scope: !643)
!1027 = !DILocation(line: 249, column: 25, scope: !643)
!1028 = !DILocation(line: 249, column: 31, scope: !643)
!1029 = !DILocation(line: 249, column: 16, scope: !632)
!1030 = !DILocation(line: 251, column: 5, scope: !648)
!1031 = !DILocation(line: 252, column: 9, scope: !652)
!1032 = !DILocation(line: 252, column: 9, scope: !650)
!1033 = !DILocation(line: 252, column: 9, scope: !651)
!1034 = !DILocation(line: 253, column: 13, scope: !655)
!1035 = !DILocation(line: 253, column: 22, scope: !655)
!1036 = !DILocation(line: 253, column: 31, scope: !655)
!1037 = !DILocation(line: 253, column: 38, scope: !655)
!1038 = !DILocation(line: 253, column: 13, scope: !652)
!1039 = !DILocation(line: 254, column: 13, scope: !655)
!1040 = !DILocation(line: 254, column: 13, scope: !661)
!1041 = !DILocation(line: 254, column: 13, scope: !665)
!1042 = !DILocation(line: 254, column: 13, scope: !667)
!1043 = !DILocation(line: 254, column: 13, scope: !668)
!1044 = !DILocation(line: 256, column: 13, scope: !655)
!1045 = !DILocation(line: 256, column: 13, scope: !671)
!1046 = !DILocation(line: 256, column: 13, scope: !675)
!1047 = !DILocation(line: 256, column: 13, scope: !677)
!1048 = !DILocation(line: 256, column: 13, scope: !678)
!1049 = !DILocation(line: 259, column: 5, scope: !585)
!1050 = !DILocation(line: 259, column: 5, scope: !681)
!1051 = !DILocation(line: 259, column: 5, scope: !682)
!1052 = !DILocation(line: 260, column: 5, scope: !585)
!1053 = !DILocation(line: 260, column: 5, scope: !685)
!1054 = !DILocation(line: 260, column: 5, scope: !688)
!1055 = !DILocation(line: 260, column: 5, scope: !689)
!1056 = !DILocation(line: 262, column: 9, scope: !692)
!1057 = !DILocation(line: 262, column: 18, scope: !692)
!1058 = !DILocation(line: 262, column: 24, scope: !692)
!1059 = !DILocation(line: 262, column: 30, scope: !692)
!1060 = !DILocation(line: 262, column: 9, scope: !585)
!1061 = !DILocation(line: 263, column: 9, scope: !692)
!1062 = !DILocation(line: 263, column: 9, scope: !698)
!1063 = !DILocation(line: 263, column: 9, scope: !699)
!1064 = !DILocation(line: 265, column: 9, scope: !692)
!1065 = !DILocation(line: 265, column: 9, scope: !702)
!1066 = !DILocation(line: 265, column: 9, scope: !703)
!1067 = !DILocation(line: 267, column: 10, scope: !706)
!1068 = !DILocation(line: 267, column: 17, scope: !706)
!1069 = !DILocation(line: 267, column: 36, scope: !706)
!1070 = !DILocation(line: 267, column: 39, scope: !706)
!1071 = !DILocation(line: 267, column: 48, scope: !706)
!1072 = !DILocation(line: 267, column: 57, scope: !706)
!1073 = !DILocation(line: 267, column: 9, scope: !585)
!1074 = !DILocation(line: 268, column: 27, scope: !714)
!1075 = !DILocation(line: 270, column: 23, scope: !717)
!1076 = !DILocation(line: 270, column: 32, scope: !717)
!1077 = !DILocation(line: 270, column: 41, scope: !717)
!1078 = !DILocation(line: 270, column: 21, scope: !717)
!1079 = !DILocation(line: 270, column: 14, scope: !717)
!1080 = !DILocation(line: 270, column: 50, scope: !723)
!1081 = !DILocation(line: 270, column: 58, scope: !723)
!1082 = !DILocation(line: 270, column: 9, scope: !717)
!1083 = !DILocation(line: 271, column: 17, scope: !727)
!1084 = !DILocation(line: 271, column: 17, scope: !728)
!1085 = !DILocation(line: 272, column: 17, scope: !727)
!1086 = !DILocation(line: 273, column: 17, scope: !732)
!1087 = !DILocation(line: 273, column: 17, scope: !728)
!1088 = !DILocation(line: 274, column: 33, scope: !732)
!1089 = !DILocation(line: 274, column: 17, scope: !732)
!1090 = !DILocation(line: 275, column: 17, scope: !737)
!1091 = !DILocation(line: 275, column: 17, scope: !728)
!1092 = !DILocation(line: 276, column: 36, scope: !737)
!1093 = !DILocation(line: 276, column: 17, scope: !737)
!1094 = !DILocation(line: 278, column: 13, scope: !742)
!1095 = !DILocation(line: 278, column: 13, scope: !728)
!1096 = !DILocation(line: 279, column: 13, scope: !728)
!1097 = !DILocation(line: 280, column: 13, scope: !728)
!1098 = !DILocation(line: 281, column: 13, scope: !728)
!1099 = !DILocation(line: 281, column: 13, scope: !747)
!1100 = !DILocation(line: 281, column: 13, scope: !750)
!1101 = !DILocation(line: 281, column: 13, scope: !751)
!1102 = !DILocation(line: 282, column: 13, scope: !728)
!1103 = !DILocation(line: 283, column: 13, scope: !728)
!1104 = !DILocation(line: 284, column: 13, scope: !728)
!1105 = !DILocation(line: 284, column: 13, scope: !756)
!1106 = !DILocation(line: 284, column: 13, scope: !759)
!1107 = !DILocation(line: 284, column: 13, scope: !760)
!1108 = !DILocation(line: 285, column: 9, scope: !728)
!1109 = !DILocation(line: 270, column: 69, scope: !723)
!1110 = !DILocation(line: 270, column: 9, scope: !723)
!1111 = distinct !{!1111, !1082, !1112, !767}
!1112 = !DILocation(line: 285, column: 9, scope: !717)
!1113 = !DILocation(line: 286, column: 5, scope: !714)
!1114 = !DILocation(line: 286, column: 16, scope: !770)
!1115 = !DILocation(line: 286, column: 23, scope: !770)
!1116 = !DILocation(line: 286, column: 16, scope: !706)
!1117 = !DILocation(line: 287, column: 27, scope: !774)
!1118 = !DILocation(line: 289, column: 23, scope: !777)
!1119 = !DILocation(line: 289, column: 32, scope: !777)
!1120 = !DILocation(line: 289, column: 41, scope: !777)
!1121 = !DILocation(line: 289, column: 21, scope: !777)
!1122 = !DILocation(line: 289, column: 14, scope: !777)
!1123 = !DILocation(line: 289, column: 50, scope: !783)
!1124 = !DILocation(line: 289, column: 58, scope: !783)
!1125 = !DILocation(line: 289, column: 9, scope: !777)
!1126 = !DILocation(line: 290, column: 25, scope: !787)
!1127 = !DILocation(line: 290, column: 33, scope: !787)
!1128 = !DILocation(line: 290, column: 18, scope: !787)
!1129 = !DILocation(line: 290, column: 17, scope: !788)
!1130 = !DILocation(line: 291, column: 17, scope: !795)
!1131 = !DILocation(line: 291, column: 17, scope: !793)
!1132 = !DILocation(line: 291, column: 17, scope: !794)
!1133 = !DILocation(line: 292, column: 17, scope: !795)
!1134 = !DILocation(line: 292, column: 17, scope: !798)
!1135 = !DILocation(line: 292, column: 17, scope: !801)
!1136 = !DILocation(line: 292, column: 17, scope: !802)
!1137 = !DILocation(line: 293, column: 17, scope: !795)
!1138 = !DILocation(line: 295, column: 9, scope: !788)
!1139 = !DILocation(line: 289, column: 69, scope: !783)
!1140 = !DILocation(line: 289, column: 9, scope: !783)
!1141 = distinct !{!1141, !1125, !1142, !767}
!1142 = !DILocation(line: 295, column: 9, scope: !777)
!1143 = !DILocation(line: 296, column: 5, scope: !774)
!1144 = !DILocation(line: 298, column: 9, scope: !811)
!1145 = !DILocation(line: 298, column: 9, scope: !585)
!1146 = !DILocation(line: 299, column: 9, scope: !816)
!1147 = !DILocation(line: 299, column: 9, scope: !814)
!1148 = !DILocation(line: 299, column: 9, scope: !815)
!1149 = !DILocation(line: 300, column: 9, scope: !816)
!1150 = !DILocation(line: 300, column: 9, scope: !819)
!1151 = !DILocation(line: 300, column: 9, scope: !820)
!1152 = !DILocation(line: 301, column: 5, scope: !816)
!1153 = !DILocation(line: 303, column: 9, scope: !824)
!1154 = !DILocation(line: 303, column: 9, scope: !585)
!1155 = !DILocation(line: 304, column: 9, scope: !829)
!1156 = !DILocation(line: 304, column: 9, scope: !827)
!1157 = !DILocation(line: 304, column: 9, scope: !828)
!1158 = !DILocation(line: 305, column: 9, scope: !829)
!1159 = !DILocation(line: 305, column: 9, scope: !832)
!1160 = !DILocation(line: 305, column: 9, scope: !833)
!1161 = !DILocation(line: 306, column: 5, scope: !829)
!1162 = !DILocation(line: 308, column: 5, scope: !585)
!1163 = !DILocation(line: 308, column: 5, scope: !837)
!1164 = !DILocation(line: 308, column: 5, scope: !838)
!1165 = !DILocation(line: 310, column: 21, scope: !585)
!1166 = !DILocation(line: 310, column: 33, scope: !585)
!1167 = !DILocation(line: 310, column: 31, scope: !585)
!1168 = !DILocation(line: 310, column: 41, scope: !585)
!1169 = !DILocation(line: 310, column: 5, scope: !585)
!1170 = !DILocation(line: 311, column: 1, scope: !585)
!1171 = distinct !DISubprogram(name: "lwan_response_set_chunked", scope: !3, file: !3, line: 322, type: !1172, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!1172 = !DISubroutineType(types: !1173)
!1173 = !{!322, !240, !387}
!1174 = !DILocalVariable(name: "request", arg: 1, scope: !1171, file: !3, line: 322, type: !240)
!1175 = !DILocation(line: 322, column: 43, scope: !1171)
!1176 = !DILocalVariable(name: "status", arg: 2, scope: !1171, file: !3, line: 322, type: !387)
!1177 = !DILocation(line: 322, column: 71, scope: !1171)
!1178 = !DILocalVariable(name: "buffer", scope: !1171, file: !3, line: 324, type: !1179)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 32768, elements: !1180)
!1180 = !{!1181}
!1181 = !DISubrange(count: 4096)
!1182 = !DILocation(line: 324, column: 10, scope: !1171)
!1183 = !DILocalVariable(name: "buffer_len", scope: !1171, file: !3, line: 325, type: !99)
!1184 = !DILocation(line: 325, column: 12, scope: !1171)
!1185 = !DILocation(line: 327, column: 9, scope: !1186)
!1186 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 327, column: 9)
!1187 = !DILocation(line: 327, column: 18, scope: !1186)
!1188 = !DILocation(line: 327, column: 24, scope: !1186)
!1189 = !DILocation(line: 327, column: 9, scope: !1171)
!1190 = !DILocation(line: 328, column: 9, scope: !1186)
!1191 = !DILocation(line: 330, column: 5, scope: !1171)
!1192 = !DILocation(line: 330, column: 14, scope: !1171)
!1193 = !DILocation(line: 330, column: 20, scope: !1171)
!1194 = !DILocation(line: 331, column: 47, scope: !1171)
!1195 = !DILocation(line: 331, column: 56, scope: !1171)
!1196 = !DILocation(line: 332, column: 49, scope: !1171)
!1197 = !DILocation(line: 231, column: 46, scope: !585, inlinedAt: !1198)
!1198 = distinct !DILocation(line: 331, column: 18, scope: !1171)
!1199 = !DILocation(line: 231, column: 74, scope: !585, inlinedAt: !1198)
!1200 = !DILocation(line: 231, column: 87, scope: !585, inlinedAt: !1198)
!1201 = !DILocation(line: 231, column: 105, scope: !585, inlinedAt: !1198)
!1202 = !DILocation(line: 233, column: 11, scope: !585, inlinedAt: !1198)
!1203 = !DILocation(line: 234, column: 11, scope: !585, inlinedAt: !1198)
!1204 = !DILocation(line: 234, column: 27, scope: !585, inlinedAt: !1198)
!1205 = !DILocation(line: 234, column: 37, scope: !585, inlinedAt: !1198)
!1206 = !DILocation(line: 234, column: 35, scope: !585, inlinedAt: !1198)
!1207 = !DILocation(line: 235, column: 10, scope: !585, inlinedAt: !1198)
!1208 = !DILocation(line: 236, column: 10, scope: !585, inlinedAt: !1198)
!1209 = !DILocation(line: 237, column: 10, scope: !585, inlinedAt: !1198)
!1210 = !DILocation(line: 239, column: 17, scope: !585, inlinedAt: !1198)
!1211 = !DILocation(line: 239, column: 15, scope: !585, inlinedAt: !1198)
!1212 = !DILocation(line: 241, column: 9, scope: !612, inlinedAt: !1198)
!1213 = !DILocation(line: 241, column: 18, scope: !612, inlinedAt: !1198)
!1214 = !DILocation(line: 241, column: 24, scope: !612, inlinedAt: !1198)
!1215 = !DILocation(line: 241, column: 9, scope: !585, inlinedAt: !1198)
!1216 = !DILocation(line: 242, column: 9, scope: !617, inlinedAt: !1198)
!1217 = !DILocation(line: 242, column: 9, scope: !618, inlinedAt: !1198)
!1218 = !DILocation(line: 244, column: 9, scope: !621, inlinedAt: !1198)
!1219 = !DILocation(line: 244, column: 9, scope: !622, inlinedAt: !1198)
!1220 = !DILocation(line: 245, column: 5, scope: !625, inlinedAt: !1198)
!1221 = !DILocation(line: 245, column: 5, scope: !628, inlinedAt: !1198)
!1222 = !DILocation(line: 245, column: 5, scope: !629, inlinedAt: !1198)
!1223 = !DILocation(line: 247, column: 9, scope: !632, inlinedAt: !1198)
!1224 = !DILocation(line: 247, column: 18, scope: !632, inlinedAt: !1198)
!1225 = !DILocation(line: 247, column: 24, scope: !632, inlinedAt: !1198)
!1226 = !DILocation(line: 247, column: 9, scope: !585, inlinedAt: !1198)
!1227 = !DILocation(line: 248, column: 9, scope: !637, inlinedAt: !1198)
!1228 = !DILocation(line: 248, column: 9, scope: !638, inlinedAt: !1198)
!1229 = !DILocation(line: 249, column: 5, scope: !639, inlinedAt: !1198)
!1230 = !DILocation(line: 249, column: 16, scope: !643, inlinedAt: !1198)
!1231 = !DILocation(line: 249, column: 25, scope: !643, inlinedAt: !1198)
!1232 = !DILocation(line: 249, column: 31, scope: !643, inlinedAt: !1198)
!1233 = !DILocation(line: 249, column: 16, scope: !632, inlinedAt: !1198)
!1234 = !DILocation(line: 251, column: 5, scope: !648, inlinedAt: !1198)
!1235 = !DILocation(line: 252, column: 9, scope: !650, inlinedAt: !1198)
!1236 = !DILocation(line: 252, column: 9, scope: !651, inlinedAt: !1198)
!1237 = !DILocation(line: 253, column: 13, scope: !655, inlinedAt: !1198)
!1238 = !DILocation(line: 253, column: 22, scope: !655, inlinedAt: !1198)
!1239 = !DILocation(line: 253, column: 31, scope: !655, inlinedAt: !1198)
!1240 = !DILocation(line: 253, column: 38, scope: !655, inlinedAt: !1198)
!1241 = !DILocation(line: 253, column: 13, scope: !652, inlinedAt: !1198)
!1242 = !DILocation(line: 254, column: 13, scope: !661, inlinedAt: !1198)
!1243 = !DILocation(line: 254, column: 13, scope: !665, inlinedAt: !1198)
!1244 = !DILocation(line: 254, column: 13, scope: !667, inlinedAt: !1198)
!1245 = !DILocation(line: 254, column: 13, scope: !668, inlinedAt: !1198)
!1246 = !DILocation(line: 256, column: 13, scope: !671, inlinedAt: !1198)
!1247 = !DILocation(line: 256, column: 13, scope: !675, inlinedAt: !1198)
!1248 = !DILocation(line: 256, column: 13, scope: !677, inlinedAt: !1198)
!1249 = !DILocation(line: 256, column: 13, scope: !678, inlinedAt: !1198)
!1250 = !DILocation(line: 259, column: 5, scope: !681, inlinedAt: !1198)
!1251 = !DILocation(line: 259, column: 5, scope: !682, inlinedAt: !1198)
!1252 = !DILocation(line: 260, column: 5, scope: !685, inlinedAt: !1198)
!1253 = !DILocation(line: 260, column: 5, scope: !688, inlinedAt: !1198)
!1254 = !DILocation(line: 260, column: 5, scope: !689, inlinedAt: !1198)
!1255 = !DILocation(line: 262, column: 9, scope: !692, inlinedAt: !1198)
!1256 = !DILocation(line: 262, column: 18, scope: !692, inlinedAt: !1198)
!1257 = !DILocation(line: 262, column: 24, scope: !692, inlinedAt: !1198)
!1258 = !DILocation(line: 262, column: 30, scope: !692, inlinedAt: !1198)
!1259 = !DILocation(line: 262, column: 9, scope: !585, inlinedAt: !1198)
!1260 = !DILocation(line: 263, column: 9, scope: !698, inlinedAt: !1198)
!1261 = !DILocation(line: 263, column: 9, scope: !699, inlinedAt: !1198)
!1262 = !DILocation(line: 265, column: 9, scope: !702, inlinedAt: !1198)
!1263 = !DILocation(line: 265, column: 9, scope: !703, inlinedAt: !1198)
!1264 = !DILocation(line: 267, column: 10, scope: !706, inlinedAt: !1198)
!1265 = !DILocation(line: 267, column: 17, scope: !706, inlinedAt: !1198)
!1266 = !DILocation(line: 267, column: 36, scope: !706, inlinedAt: !1198)
!1267 = !DILocation(line: 267, column: 39, scope: !706, inlinedAt: !1198)
!1268 = !DILocation(line: 267, column: 48, scope: !706, inlinedAt: !1198)
!1269 = !DILocation(line: 267, column: 57, scope: !706, inlinedAt: !1198)
!1270 = !DILocation(line: 267, column: 9, scope: !585, inlinedAt: !1198)
!1271 = !DILocation(line: 268, column: 27, scope: !714, inlinedAt: !1198)
!1272 = !DILocation(line: 270, column: 23, scope: !717, inlinedAt: !1198)
!1273 = !DILocation(line: 270, column: 32, scope: !717, inlinedAt: !1198)
!1274 = !DILocation(line: 270, column: 41, scope: !717, inlinedAt: !1198)
!1275 = !DILocation(line: 270, column: 21, scope: !717, inlinedAt: !1198)
!1276 = !DILocation(line: 270, column: 14, scope: !717, inlinedAt: !1198)
!1277 = !DILocation(line: 270, column: 50, scope: !723, inlinedAt: !1198)
!1278 = !DILocation(line: 270, column: 58, scope: !723, inlinedAt: !1198)
!1279 = !DILocation(line: 270, column: 9, scope: !717, inlinedAt: !1198)
!1280 = !DILocation(line: 271, column: 17, scope: !727, inlinedAt: !1198)
!1281 = !DILocation(line: 271, column: 17, scope: !728, inlinedAt: !1198)
!1282 = !DILocation(line: 272, column: 17, scope: !727, inlinedAt: !1198)
!1283 = !DILocation(line: 273, column: 17, scope: !732, inlinedAt: !1198)
!1284 = !DILocation(line: 273, column: 17, scope: !728, inlinedAt: !1198)
!1285 = !DILocation(line: 274, column: 33, scope: !732, inlinedAt: !1198)
!1286 = !DILocation(line: 274, column: 17, scope: !732, inlinedAt: !1198)
!1287 = !DILocation(line: 275, column: 17, scope: !737, inlinedAt: !1198)
!1288 = !DILocation(line: 275, column: 17, scope: !728, inlinedAt: !1198)
!1289 = !DILocation(line: 276, column: 36, scope: !737, inlinedAt: !1198)
!1290 = !DILocation(line: 276, column: 17, scope: !737, inlinedAt: !1198)
!1291 = !DILocation(line: 278, column: 13, scope: !742, inlinedAt: !1198)
!1292 = !DILocation(line: 278, column: 13, scope: !728, inlinedAt: !1198)
!1293 = !DILocation(line: 279, column: 13, scope: !728, inlinedAt: !1198)
!1294 = !DILocation(line: 280, column: 13, scope: !728, inlinedAt: !1198)
!1295 = !DILocation(line: 281, column: 13, scope: !747, inlinedAt: !1198)
!1296 = !DILocation(line: 281, column: 13, scope: !750, inlinedAt: !1198)
!1297 = !DILocation(line: 281, column: 13, scope: !751, inlinedAt: !1198)
!1298 = !DILocation(line: 282, column: 13, scope: !728, inlinedAt: !1198)
!1299 = !DILocation(line: 283, column: 13, scope: !728, inlinedAt: !1198)
!1300 = !DILocation(line: 284, column: 13, scope: !756, inlinedAt: !1198)
!1301 = !DILocation(line: 284, column: 13, scope: !759, inlinedAt: !1198)
!1302 = !DILocation(line: 284, column: 13, scope: !760, inlinedAt: !1198)
!1303 = !DILocation(line: 285, column: 9, scope: !728, inlinedAt: !1198)
!1304 = !DILocation(line: 270, column: 69, scope: !723, inlinedAt: !1198)
!1305 = !DILocation(line: 270, column: 9, scope: !723, inlinedAt: !1198)
!1306 = distinct !{!1306, !1279, !1307, !767}
!1307 = !DILocation(line: 285, column: 9, scope: !717, inlinedAt: !1198)
!1308 = !DILocation(line: 286, column: 5, scope: !714, inlinedAt: !1198)
!1309 = !DILocation(line: 286, column: 16, scope: !770, inlinedAt: !1198)
!1310 = !DILocation(line: 286, column: 23, scope: !770, inlinedAt: !1198)
!1311 = !DILocation(line: 286, column: 16, scope: !706, inlinedAt: !1198)
!1312 = !DILocation(line: 287, column: 27, scope: !774, inlinedAt: !1198)
!1313 = !DILocation(line: 289, column: 23, scope: !777, inlinedAt: !1198)
!1314 = !DILocation(line: 289, column: 32, scope: !777, inlinedAt: !1198)
!1315 = !DILocation(line: 289, column: 41, scope: !777, inlinedAt: !1198)
!1316 = !DILocation(line: 289, column: 21, scope: !777, inlinedAt: !1198)
!1317 = !DILocation(line: 289, column: 14, scope: !777, inlinedAt: !1198)
!1318 = !DILocation(line: 289, column: 50, scope: !783, inlinedAt: !1198)
!1319 = !DILocation(line: 289, column: 58, scope: !783, inlinedAt: !1198)
!1320 = !DILocation(line: 289, column: 9, scope: !777, inlinedAt: !1198)
!1321 = !DILocation(line: 290, column: 25, scope: !787, inlinedAt: !1198)
!1322 = !DILocation(line: 290, column: 33, scope: !787, inlinedAt: !1198)
!1323 = !DILocation(line: 290, column: 18, scope: !787, inlinedAt: !1198)
!1324 = !DILocation(line: 290, column: 17, scope: !788, inlinedAt: !1198)
!1325 = !DILocation(line: 291, column: 17, scope: !793, inlinedAt: !1198)
!1326 = !DILocation(line: 291, column: 17, scope: !794, inlinedAt: !1198)
!1327 = !DILocation(line: 292, column: 17, scope: !798, inlinedAt: !1198)
!1328 = !DILocation(line: 292, column: 17, scope: !801, inlinedAt: !1198)
!1329 = !DILocation(line: 292, column: 17, scope: !802, inlinedAt: !1198)
!1330 = !DILocation(line: 293, column: 17, scope: !795, inlinedAt: !1198)
!1331 = !DILocation(line: 289, column: 69, scope: !783, inlinedAt: !1198)
!1332 = !DILocation(line: 289, column: 9, scope: !783, inlinedAt: !1198)
!1333 = distinct !{!1333, !1320, !1334, !767}
!1334 = !DILocation(line: 295, column: 9, scope: !777, inlinedAt: !1198)
!1335 = !DILocation(line: 296, column: 5, scope: !774, inlinedAt: !1198)
!1336 = !DILocation(line: 298, column: 9, scope: !811, inlinedAt: !1198)
!1337 = !DILocation(line: 298, column: 9, scope: !585, inlinedAt: !1198)
!1338 = !DILocation(line: 299, column: 9, scope: !814, inlinedAt: !1198)
!1339 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !1198)
!1340 = !DILocation(line: 300, column: 9, scope: !819, inlinedAt: !1198)
!1341 = !DILocation(line: 300, column: 9, scope: !820, inlinedAt: !1198)
!1342 = !DILocation(line: 301, column: 5, scope: !816, inlinedAt: !1198)
!1343 = !DILocation(line: 303, column: 9, scope: !824, inlinedAt: !1198)
!1344 = !DILocation(line: 303, column: 9, scope: !585, inlinedAt: !1198)
!1345 = !DILocation(line: 304, column: 9, scope: !827, inlinedAt: !1198)
!1346 = !DILocation(line: 304, column: 9, scope: !828, inlinedAt: !1198)
!1347 = !DILocation(line: 305, column: 9, scope: !832, inlinedAt: !1198)
!1348 = !DILocation(line: 305, column: 9, scope: !833, inlinedAt: !1198)
!1349 = !DILocation(line: 306, column: 5, scope: !829, inlinedAt: !1198)
!1350 = !DILocation(line: 308, column: 5, scope: !837, inlinedAt: !1198)
!1351 = !DILocation(line: 308, column: 5, scope: !838, inlinedAt: !1198)
!1352 = !DILocation(line: 310, column: 21, scope: !585, inlinedAt: !1198)
!1353 = !DILocation(line: 310, column: 33, scope: !585, inlinedAt: !1198)
!1354 = !DILocation(line: 310, column: 31, scope: !585, inlinedAt: !1198)
!1355 = !DILocation(line: 310, column: 41, scope: !585, inlinedAt: !1198)
!1356 = !DILocation(line: 310, column: 5, scope: !585, inlinedAt: !1198)
!1357 = !DILocation(line: 311, column: 1, scope: !585, inlinedAt: !1198)
!1358 = !DILocation(line: 331, column: 16, scope: !1171)
!1359 = !DILocation(line: 333, column: 9, scope: !1360)
!1360 = distinct !DILexicalBlock(scope: !1171, file: !3, line: 333, column: 9)
!1361 = !DILocation(line: 333, column: 9, scope: !1171)
!1362 = !DILocation(line: 334, column: 9, scope: !1360)
!1363 = !DILocation(line: 336, column: 5, scope: !1171)
!1364 = !DILocation(line: 336, column: 14, scope: !1171)
!1365 = !DILocation(line: 336, column: 20, scope: !1171)
!1366 = !DILocation(line: 337, column: 15, scope: !1171)
!1367 = !DILocation(line: 337, column: 24, scope: !1171)
!1368 = !DILocation(line: 337, column: 32, scope: !1171)
!1369 = !DILocation(line: 337, column: 5, scope: !1171)
!1370 = !DILocation(line: 339, column: 5, scope: !1171)
!1371 = !DILocation(line: 340, column: 1, scope: !1171)
!1372 = distinct !DISubprogram(name: "lwan_response_set_event_stream", scope: !3, file: !3, line: 382, type: !1172, scopeLine: 384, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!1373 = !DILocalVariable(name: "request", arg: 1, scope: !1372, file: !3, line: 382, type: !240)
!1374 = !DILocation(line: 382, column: 48, scope: !1372)
!1375 = !DILocalVariable(name: "status", arg: 2, scope: !1372, file: !3, line: 383, type: !387)
!1376 = !DILocation(line: 383, column: 51, scope: !1372)
!1377 = !DILocalVariable(name: "buffer", scope: !1372, file: !3, line: 385, type: !1179)
!1378 = !DILocation(line: 385, column: 10, scope: !1372)
!1379 = !DILocalVariable(name: "buffer_len", scope: !1372, file: !3, line: 386, type: !99)
!1380 = !DILocation(line: 386, column: 12, scope: !1372)
!1381 = !DILocation(line: 388, column: 9, scope: !1382)
!1382 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 388, column: 9)
!1383 = !DILocation(line: 388, column: 18, scope: !1382)
!1384 = !DILocation(line: 388, column: 24, scope: !1382)
!1385 = !DILocation(line: 388, column: 9, scope: !1372)
!1386 = !DILocation(line: 389, column: 9, scope: !1382)
!1387 = !DILocation(line: 391, column: 5, scope: !1372)
!1388 = !DILocation(line: 391, column: 14, scope: !1372)
!1389 = !DILocation(line: 391, column: 23, scope: !1372)
!1390 = !DILocation(line: 391, column: 33, scope: !1372)
!1391 = !DILocation(line: 392, column: 5, scope: !1372)
!1392 = !DILocation(line: 392, column: 14, scope: !1372)
!1393 = !DILocation(line: 392, column: 20, scope: !1372)
!1394 = !DILocation(line: 393, column: 47, scope: !1372)
!1395 = !DILocation(line: 393, column: 56, scope: !1372)
!1396 = !DILocation(line: 394, column: 49, scope: !1372)
!1397 = !DILocation(line: 231, column: 46, scope: !585, inlinedAt: !1398)
!1398 = distinct !DILocation(line: 393, column: 18, scope: !1372)
!1399 = !DILocation(line: 231, column: 74, scope: !585, inlinedAt: !1398)
!1400 = !DILocation(line: 231, column: 87, scope: !585, inlinedAt: !1398)
!1401 = !DILocation(line: 231, column: 105, scope: !585, inlinedAt: !1398)
!1402 = !DILocation(line: 233, column: 11, scope: !585, inlinedAt: !1398)
!1403 = !DILocation(line: 234, column: 11, scope: !585, inlinedAt: !1398)
!1404 = !DILocation(line: 234, column: 27, scope: !585, inlinedAt: !1398)
!1405 = !DILocation(line: 234, column: 37, scope: !585, inlinedAt: !1398)
!1406 = !DILocation(line: 234, column: 35, scope: !585, inlinedAt: !1398)
!1407 = !DILocation(line: 235, column: 10, scope: !585, inlinedAt: !1398)
!1408 = !DILocation(line: 236, column: 10, scope: !585, inlinedAt: !1398)
!1409 = !DILocation(line: 237, column: 10, scope: !585, inlinedAt: !1398)
!1410 = !DILocation(line: 239, column: 17, scope: !585, inlinedAt: !1398)
!1411 = !DILocation(line: 239, column: 15, scope: !585, inlinedAt: !1398)
!1412 = !DILocation(line: 241, column: 9, scope: !612, inlinedAt: !1398)
!1413 = !DILocation(line: 241, column: 18, scope: !612, inlinedAt: !1398)
!1414 = !DILocation(line: 241, column: 24, scope: !612, inlinedAt: !1398)
!1415 = !DILocation(line: 241, column: 9, scope: !585, inlinedAt: !1398)
!1416 = !DILocation(line: 242, column: 9, scope: !617, inlinedAt: !1398)
!1417 = !DILocation(line: 242, column: 9, scope: !618, inlinedAt: !1398)
!1418 = !DILocation(line: 244, column: 9, scope: !621, inlinedAt: !1398)
!1419 = !DILocation(line: 244, column: 9, scope: !622, inlinedAt: !1398)
!1420 = !DILocation(line: 245, column: 5, scope: !625, inlinedAt: !1398)
!1421 = !DILocation(line: 245, column: 5, scope: !628, inlinedAt: !1398)
!1422 = !DILocation(line: 245, column: 5, scope: !629, inlinedAt: !1398)
!1423 = !DILocation(line: 247, column: 9, scope: !632, inlinedAt: !1398)
!1424 = !DILocation(line: 247, column: 18, scope: !632, inlinedAt: !1398)
!1425 = !DILocation(line: 247, column: 24, scope: !632, inlinedAt: !1398)
!1426 = !DILocation(line: 247, column: 9, scope: !585, inlinedAt: !1398)
!1427 = !DILocation(line: 248, column: 9, scope: !637, inlinedAt: !1398)
!1428 = !DILocation(line: 248, column: 9, scope: !638, inlinedAt: !1398)
!1429 = !DILocation(line: 249, column: 5, scope: !639, inlinedAt: !1398)
!1430 = !DILocation(line: 249, column: 16, scope: !643, inlinedAt: !1398)
!1431 = !DILocation(line: 249, column: 25, scope: !643, inlinedAt: !1398)
!1432 = !DILocation(line: 249, column: 31, scope: !643, inlinedAt: !1398)
!1433 = !DILocation(line: 249, column: 16, scope: !632, inlinedAt: !1398)
!1434 = !DILocation(line: 251, column: 5, scope: !648, inlinedAt: !1398)
!1435 = !DILocation(line: 252, column: 9, scope: !650, inlinedAt: !1398)
!1436 = !DILocation(line: 252, column: 9, scope: !651, inlinedAt: !1398)
!1437 = !DILocation(line: 253, column: 13, scope: !655, inlinedAt: !1398)
!1438 = !DILocation(line: 253, column: 22, scope: !655, inlinedAt: !1398)
!1439 = !DILocation(line: 253, column: 31, scope: !655, inlinedAt: !1398)
!1440 = !DILocation(line: 253, column: 38, scope: !655, inlinedAt: !1398)
!1441 = !DILocation(line: 253, column: 13, scope: !652, inlinedAt: !1398)
!1442 = !DILocation(line: 254, column: 13, scope: !661, inlinedAt: !1398)
!1443 = !DILocation(line: 254, column: 13, scope: !665, inlinedAt: !1398)
!1444 = !DILocation(line: 254, column: 13, scope: !667, inlinedAt: !1398)
!1445 = !DILocation(line: 254, column: 13, scope: !668, inlinedAt: !1398)
!1446 = !DILocation(line: 256, column: 13, scope: !671, inlinedAt: !1398)
!1447 = !DILocation(line: 256, column: 13, scope: !675, inlinedAt: !1398)
!1448 = !DILocation(line: 256, column: 13, scope: !677, inlinedAt: !1398)
!1449 = !DILocation(line: 256, column: 13, scope: !678, inlinedAt: !1398)
!1450 = !DILocation(line: 259, column: 5, scope: !681, inlinedAt: !1398)
!1451 = !DILocation(line: 259, column: 5, scope: !682, inlinedAt: !1398)
!1452 = !DILocation(line: 260, column: 5, scope: !685, inlinedAt: !1398)
!1453 = !DILocation(line: 260, column: 5, scope: !688, inlinedAt: !1398)
!1454 = !DILocation(line: 260, column: 5, scope: !689, inlinedAt: !1398)
!1455 = !DILocation(line: 262, column: 9, scope: !692, inlinedAt: !1398)
!1456 = !DILocation(line: 262, column: 18, scope: !692, inlinedAt: !1398)
!1457 = !DILocation(line: 262, column: 24, scope: !692, inlinedAt: !1398)
!1458 = !DILocation(line: 262, column: 30, scope: !692, inlinedAt: !1398)
!1459 = !DILocation(line: 262, column: 9, scope: !585, inlinedAt: !1398)
!1460 = !DILocation(line: 263, column: 9, scope: !698, inlinedAt: !1398)
!1461 = !DILocation(line: 263, column: 9, scope: !699, inlinedAt: !1398)
!1462 = !DILocation(line: 265, column: 9, scope: !702, inlinedAt: !1398)
!1463 = !DILocation(line: 265, column: 9, scope: !703, inlinedAt: !1398)
!1464 = !DILocation(line: 267, column: 10, scope: !706, inlinedAt: !1398)
!1465 = !DILocation(line: 267, column: 17, scope: !706, inlinedAt: !1398)
!1466 = !DILocation(line: 267, column: 36, scope: !706, inlinedAt: !1398)
!1467 = !DILocation(line: 267, column: 39, scope: !706, inlinedAt: !1398)
!1468 = !DILocation(line: 267, column: 48, scope: !706, inlinedAt: !1398)
!1469 = !DILocation(line: 267, column: 57, scope: !706, inlinedAt: !1398)
!1470 = !DILocation(line: 267, column: 9, scope: !585, inlinedAt: !1398)
!1471 = !DILocation(line: 268, column: 27, scope: !714, inlinedAt: !1398)
!1472 = !DILocation(line: 270, column: 23, scope: !717, inlinedAt: !1398)
!1473 = !DILocation(line: 270, column: 32, scope: !717, inlinedAt: !1398)
!1474 = !DILocation(line: 270, column: 41, scope: !717, inlinedAt: !1398)
!1475 = !DILocation(line: 270, column: 21, scope: !717, inlinedAt: !1398)
!1476 = !DILocation(line: 270, column: 14, scope: !717, inlinedAt: !1398)
!1477 = !DILocation(line: 270, column: 50, scope: !723, inlinedAt: !1398)
!1478 = !DILocation(line: 270, column: 58, scope: !723, inlinedAt: !1398)
!1479 = !DILocation(line: 270, column: 9, scope: !717, inlinedAt: !1398)
!1480 = !DILocation(line: 271, column: 17, scope: !727, inlinedAt: !1398)
!1481 = !DILocation(line: 271, column: 17, scope: !728, inlinedAt: !1398)
!1482 = !DILocation(line: 272, column: 17, scope: !727, inlinedAt: !1398)
!1483 = !DILocation(line: 273, column: 17, scope: !732, inlinedAt: !1398)
!1484 = !DILocation(line: 273, column: 17, scope: !728, inlinedAt: !1398)
!1485 = !DILocation(line: 274, column: 33, scope: !732, inlinedAt: !1398)
!1486 = !DILocation(line: 274, column: 17, scope: !732, inlinedAt: !1398)
!1487 = !DILocation(line: 275, column: 17, scope: !737, inlinedAt: !1398)
!1488 = !DILocation(line: 275, column: 17, scope: !728, inlinedAt: !1398)
!1489 = !DILocation(line: 276, column: 36, scope: !737, inlinedAt: !1398)
!1490 = !DILocation(line: 276, column: 17, scope: !737, inlinedAt: !1398)
!1491 = !DILocation(line: 278, column: 13, scope: !742, inlinedAt: !1398)
!1492 = !DILocation(line: 278, column: 13, scope: !728, inlinedAt: !1398)
!1493 = !DILocation(line: 279, column: 13, scope: !728, inlinedAt: !1398)
!1494 = !DILocation(line: 280, column: 13, scope: !728, inlinedAt: !1398)
!1495 = !DILocation(line: 281, column: 13, scope: !747, inlinedAt: !1398)
!1496 = !DILocation(line: 281, column: 13, scope: !750, inlinedAt: !1398)
!1497 = !DILocation(line: 281, column: 13, scope: !751, inlinedAt: !1398)
!1498 = !DILocation(line: 282, column: 13, scope: !728, inlinedAt: !1398)
!1499 = !DILocation(line: 283, column: 13, scope: !728, inlinedAt: !1398)
!1500 = !DILocation(line: 284, column: 13, scope: !756, inlinedAt: !1398)
!1501 = !DILocation(line: 284, column: 13, scope: !759, inlinedAt: !1398)
!1502 = !DILocation(line: 284, column: 13, scope: !760, inlinedAt: !1398)
!1503 = !DILocation(line: 285, column: 9, scope: !728, inlinedAt: !1398)
!1504 = !DILocation(line: 270, column: 69, scope: !723, inlinedAt: !1398)
!1505 = !DILocation(line: 270, column: 9, scope: !723, inlinedAt: !1398)
!1506 = distinct !{!1506, !1479, !1507, !767}
!1507 = !DILocation(line: 285, column: 9, scope: !717, inlinedAt: !1398)
!1508 = !DILocation(line: 286, column: 5, scope: !714, inlinedAt: !1398)
!1509 = !DILocation(line: 286, column: 16, scope: !770, inlinedAt: !1398)
!1510 = !DILocation(line: 286, column: 23, scope: !770, inlinedAt: !1398)
!1511 = !DILocation(line: 286, column: 16, scope: !706, inlinedAt: !1398)
!1512 = !DILocation(line: 287, column: 27, scope: !774, inlinedAt: !1398)
!1513 = !DILocation(line: 289, column: 23, scope: !777, inlinedAt: !1398)
!1514 = !DILocation(line: 289, column: 32, scope: !777, inlinedAt: !1398)
!1515 = !DILocation(line: 289, column: 41, scope: !777, inlinedAt: !1398)
!1516 = !DILocation(line: 289, column: 21, scope: !777, inlinedAt: !1398)
!1517 = !DILocation(line: 289, column: 14, scope: !777, inlinedAt: !1398)
!1518 = !DILocation(line: 289, column: 50, scope: !783, inlinedAt: !1398)
!1519 = !DILocation(line: 289, column: 58, scope: !783, inlinedAt: !1398)
!1520 = !DILocation(line: 289, column: 9, scope: !777, inlinedAt: !1398)
!1521 = !DILocation(line: 290, column: 25, scope: !787, inlinedAt: !1398)
!1522 = !DILocation(line: 290, column: 33, scope: !787, inlinedAt: !1398)
!1523 = !DILocation(line: 290, column: 18, scope: !787, inlinedAt: !1398)
!1524 = !DILocation(line: 290, column: 17, scope: !788, inlinedAt: !1398)
!1525 = !DILocation(line: 291, column: 17, scope: !793, inlinedAt: !1398)
!1526 = !DILocation(line: 291, column: 17, scope: !794, inlinedAt: !1398)
!1527 = !DILocation(line: 292, column: 17, scope: !798, inlinedAt: !1398)
!1528 = !DILocation(line: 292, column: 17, scope: !801, inlinedAt: !1398)
!1529 = !DILocation(line: 292, column: 17, scope: !802, inlinedAt: !1398)
!1530 = !DILocation(line: 293, column: 17, scope: !795, inlinedAt: !1398)
!1531 = !DILocation(line: 289, column: 69, scope: !783, inlinedAt: !1398)
!1532 = !DILocation(line: 289, column: 9, scope: !783, inlinedAt: !1398)
!1533 = distinct !{!1533, !1520, !1534, !767}
!1534 = !DILocation(line: 295, column: 9, scope: !777, inlinedAt: !1398)
!1535 = !DILocation(line: 296, column: 5, scope: !774, inlinedAt: !1398)
!1536 = !DILocation(line: 298, column: 9, scope: !811, inlinedAt: !1398)
!1537 = !DILocation(line: 298, column: 9, scope: !585, inlinedAt: !1398)
!1538 = !DILocation(line: 299, column: 9, scope: !814, inlinedAt: !1398)
!1539 = !DILocation(line: 299, column: 9, scope: !815, inlinedAt: !1398)
!1540 = !DILocation(line: 300, column: 9, scope: !819, inlinedAt: !1398)
!1541 = !DILocation(line: 300, column: 9, scope: !820, inlinedAt: !1398)
!1542 = !DILocation(line: 301, column: 5, scope: !816, inlinedAt: !1398)
!1543 = !DILocation(line: 303, column: 9, scope: !824, inlinedAt: !1398)
!1544 = !DILocation(line: 303, column: 9, scope: !585, inlinedAt: !1398)
!1545 = !DILocation(line: 304, column: 9, scope: !827, inlinedAt: !1398)
!1546 = !DILocation(line: 304, column: 9, scope: !828, inlinedAt: !1398)
!1547 = !DILocation(line: 305, column: 9, scope: !832, inlinedAt: !1398)
!1548 = !DILocation(line: 305, column: 9, scope: !833, inlinedAt: !1398)
!1549 = !DILocation(line: 306, column: 5, scope: !829, inlinedAt: !1398)
!1550 = !DILocation(line: 308, column: 5, scope: !837, inlinedAt: !1398)
!1551 = !DILocation(line: 308, column: 5, scope: !838, inlinedAt: !1398)
!1552 = !DILocation(line: 310, column: 21, scope: !585, inlinedAt: !1398)
!1553 = !DILocation(line: 310, column: 33, scope: !585, inlinedAt: !1398)
!1554 = !DILocation(line: 310, column: 31, scope: !585, inlinedAt: !1398)
!1555 = !DILocation(line: 310, column: 41, scope: !585, inlinedAt: !1398)
!1556 = !DILocation(line: 310, column: 5, scope: !585, inlinedAt: !1398)
!1557 = !DILocation(line: 311, column: 1, scope: !585, inlinedAt: !1398)
!1558 = !DILocation(line: 393, column: 16, scope: !1372)
!1559 = !DILocation(line: 395, column: 9, scope: !1560)
!1560 = distinct !DILexicalBlock(scope: !1372, file: !3, line: 395, column: 9)
!1561 = !DILocation(line: 395, column: 9, scope: !1372)
!1562 = !DILocation(line: 396, column: 9, scope: !1560)
!1563 = !DILocation(line: 398, column: 5, scope: !1372)
!1564 = !DILocation(line: 398, column: 14, scope: !1372)
!1565 = !DILocation(line: 398, column: 20, scope: !1372)
!1566 = !DILocation(line: 399, column: 15, scope: !1372)
!1567 = !DILocation(line: 399, column: 24, scope: !1372)
!1568 = !DILocation(line: 399, column: 32, scope: !1372)
!1569 = !DILocation(line: 399, column: 5, scope: !1372)
!1570 = !DILocation(line: 401, column: 5, scope: !1372)
!1571 = !DILocation(line: 402, column: 1, scope: !1372)
!1572 = distinct !DISubprogram(name: "lwan_response_send_event", scope: !3, file: !3, line: 405, type: !1573, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !390)
!1573 = !DISubroutineType(types: !1574)
!1574 = !{null, !240, !93}
!1575 = !DILocalVariable(name: "request", arg: 1, scope: !1572, file: !3, line: 405, type: !240)
!1576 = !DILocation(line: 405, column: 42, scope: !1572)
!1577 = !DILocalVariable(name: "event", arg: 2, scope: !1572, file: !3, line: 405, type: !93)
!1578 = !DILocation(line: 405, column: 63, scope: !1572)
!1579 = !DILocation(line: 407, column: 11, scope: !1580)
!1580 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 407, column: 9)
!1581 = !DILocation(line: 407, column: 20, scope: !1580)
!1582 = !DILocation(line: 407, column: 26, scope: !1580)
!1583 = !DILocation(line: 407, column: 9, scope: !1572)
!1584 = !DILocation(line: 408, column: 13, scope: !1585)
!1585 = distinct !DILexicalBlock(scope: !1586, file: !3, line: 408, column: 13)
!1586 = distinct !DILexicalBlock(scope: !1580, file: !3, line: 407, column: 52)
!1587 = !DILocation(line: 408, column: 13, scope: !1586)
!1588 = !DILocation(line: 409, column: 13, scope: !1585)
!1589 = !DILocation(line: 410, column: 5, scope: !1586)
!1590 = !DILocalVariable(name: "vec", scope: !1572, file: !3, line: 412, type: !1591)
!1591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !866, size: 768, elements: !392)
!1592 = !DILocation(line: 412, column: 18, scope: !1572)
!1593 = !DILocalVariable(name: "last", scope: !1572, file: !3, line: 413, type: !11)
!1594 = !DILocation(line: 413, column: 9, scope: !1572)
!1595 = !DILocation(line: 415, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 415, column: 9)
!1597 = !DILocation(line: 415, column: 9, scope: !1572)
!1598 = !DILocation(line: 416, column: 13, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 415, column: 16)
!1600 = !DILocation(line: 416, column: 9, scope: !1599)
!1601 = !DILocation(line: 416, column: 19, scope: !1599)
!1602 = !DILocation(line: 416, column: 28, scope: !1599)
!1603 = !DILocation(line: 417, column: 13, scope: !1599)
!1604 = !DILocation(line: 417, column: 9, scope: !1599)
!1605 = !DILocation(line: 417, column: 19, scope: !1599)
!1606 = !DILocation(line: 417, column: 27, scope: !1599)
!1607 = !DILocation(line: 418, column: 13, scope: !1599)
!1608 = !DILocation(line: 420, column: 38, scope: !1599)
!1609 = !DILocation(line: 420, column: 13, scope: !1599)
!1610 = !DILocation(line: 420, column: 9, scope: !1599)
!1611 = !DILocation(line: 420, column: 19, scope: !1599)
!1612 = !DILocation(line: 420, column: 28, scope: !1599)
!1613 = !DILocation(line: 421, column: 36, scope: !1599)
!1614 = !DILocation(line: 421, column: 29, scope: !1599)
!1615 = !DILocation(line: 421, column: 13, scope: !1599)
!1616 = !DILocation(line: 421, column: 9, scope: !1599)
!1617 = !DILocation(line: 421, column: 19, scope: !1599)
!1618 = !DILocation(line: 421, column: 27, scope: !1599)
!1619 = !DILocation(line: 422, column: 13, scope: !1599)
!1620 = !DILocation(line: 424, column: 13, scope: !1599)
!1621 = !DILocation(line: 424, column: 9, scope: !1599)
!1622 = !DILocation(line: 424, column: 19, scope: !1599)
!1623 = !DILocation(line: 424, column: 28, scope: !1599)
!1624 = !DILocation(line: 425, column: 13, scope: !1599)
!1625 = !DILocation(line: 425, column: 9, scope: !1599)
!1626 = !DILocation(line: 425, column: 19, scope: !1599)
!1627 = !DILocation(line: 425, column: 27, scope: !1599)
!1628 = !DILocation(line: 426, column: 13, scope: !1599)
!1629 = !DILocation(line: 427, column: 5, scope: !1599)
!1630 = !DILocalVariable(name: "buffer_len", scope: !1572, file: !3, line: 429, type: !99)
!1631 = !DILocation(line: 429, column: 12, scope: !1572)
!1632 = !DILocation(line: 429, column: 25, scope: !1572)
!1633 = !DILocation(line: 430, column: 9, scope: !1634)
!1634 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 430, column: 9)
!1635 = !DILocation(line: 430, column: 9, scope: !1572)
!1636 = !DILocation(line: 431, column: 13, scope: !1637)
!1637 = distinct !DILexicalBlock(scope: !1634, file: !3, line: 430, column: 21)
!1638 = !DILocation(line: 431, column: 9, scope: !1637)
!1639 = !DILocation(line: 431, column: 19, scope: !1637)
!1640 = !DILocation(line: 431, column: 28, scope: !1637)
!1641 = !DILocation(line: 432, column: 13, scope: !1637)
!1642 = !DILocation(line: 432, column: 9, scope: !1637)
!1643 = !DILocation(line: 432, column: 19, scope: !1637)
!1644 = !DILocation(line: 432, column: 27, scope: !1637)
!1645 = !DILocation(line: 433, column: 13, scope: !1637)
!1646 = !DILocation(line: 435, column: 30, scope: !1637)
!1647 = !DILocation(line: 435, column: 13, scope: !1637)
!1648 = !DILocation(line: 435, column: 9, scope: !1637)
!1649 = !DILocation(line: 435, column: 19, scope: !1637)
!1650 = !DILocation(line: 435, column: 28, scope: !1637)
!1651 = !DILocation(line: 436, column: 29, scope: !1637)
!1652 = !DILocation(line: 436, column: 13, scope: !1637)
!1653 = !DILocation(line: 436, column: 9, scope: !1637)
!1654 = !DILocation(line: 436, column: 19, scope: !1637)
!1655 = !DILocation(line: 436, column: 27, scope: !1637)
!1656 = !DILocation(line: 437, column: 13, scope: !1637)
!1657 = !DILocation(line: 439, column: 5, scope: !1637)
!1658 = !DILocation(line: 441, column: 9, scope: !1572)
!1659 = !DILocation(line: 441, column: 5, scope: !1572)
!1660 = !DILocation(line: 441, column: 15, scope: !1572)
!1661 = !DILocation(line: 441, column: 24, scope: !1572)
!1662 = !DILocation(line: 442, column: 9, scope: !1572)
!1663 = !DILocation(line: 442, column: 5, scope: !1572)
!1664 = !DILocation(line: 442, column: 15, scope: !1572)
!1665 = !DILocation(line: 442, column: 23, scope: !1572)
!1666 = !DILocation(line: 443, column: 9, scope: !1572)
!1667 = !DILocation(line: 445, column: 17, scope: !1572)
!1668 = !DILocation(line: 445, column: 26, scope: !1572)
!1669 = !DILocation(line: 445, column: 31, scope: !1572)
!1670 = !DILocation(line: 445, column: 5, scope: !1572)
!1671 = !DILocation(line: 447, column: 9, scope: !1672)
!1672 = distinct !DILexicalBlock(scope: !1572, file: !3, line: 447, column: 9)
!1673 = !DILocation(line: 447, column: 9, scope: !1572)
!1674 = !DILocation(line: 448, column: 20, scope: !1675)
!1675 = distinct !DILexicalBlock(scope: !1672, file: !3, line: 447, column: 67)
!1676 = !DILocation(line: 448, column: 29, scope: !1675)
!1677 = !DILocation(line: 448, column: 35, scope: !1675)
!1678 = !DILocation(line: 448, column: 9, scope: !1675)
!1679 = !DILocation(line: 449, column: 9, scope: !1675)
!1680 = !DILocation(line: 452, column: 16, scope: !1572)
!1681 = !DILocation(line: 452, column: 25, scope: !1572)
!1682 = !DILocation(line: 452, column: 31, scope: !1572)
!1683 = !DILocation(line: 452, column: 5, scope: !1572)
!1684 = !DILocation(line: 453, column: 1, scope: !1572)
!1685 = distinct !DISubprogram(name: "get_request_method", scope: !3, file: !3, line: 92, type: !1686, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !6, retainedNodes: !390)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!93, !240}
!1688 = !DILocalVariable(name: "request", arg: 1, scope: !1685, file: !3, line: 92, type: !240)
!1689 = !DILocation(line: 92, column: 36, scope: !1685)
!1690 = !DILocation(line: 94, column: 9, scope: !1691)
!1691 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 94, column: 9)
!1692 = !DILocation(line: 94, column: 18, scope: !1691)
!1693 = !DILocation(line: 94, column: 24, scope: !1691)
!1694 = !DILocation(line: 94, column: 9, scope: !1685)
!1695 = !DILocation(line: 95, column: 9, scope: !1691)
!1696 = !DILocation(line: 96, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 96, column: 9)
!1698 = !DILocation(line: 96, column: 18, scope: !1697)
!1699 = !DILocation(line: 96, column: 24, scope: !1697)
!1700 = !DILocation(line: 96, column: 9, scope: !1685)
!1701 = !DILocation(line: 97, column: 9, scope: !1697)
!1702 = !DILocation(line: 98, column: 9, scope: !1703)
!1703 = distinct !DILexicalBlock(scope: !1685, file: !3, line: 98, column: 9)
!1704 = !DILocation(line: 98, column: 18, scope: !1703)
!1705 = !DILocation(line: 98, column: 24, scope: !1703)
!1706 = !DILocation(line: 98, column: 9, scope: !1685)
!1707 = !DILocation(line: 99, column: 9, scope: !1703)
!1708 = !DILocation(line: 100, column: 5, scope: !1685)
!1709 = !DILocation(line: 101, column: 1, scope: !1685)
