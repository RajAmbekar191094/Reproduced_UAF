; ModuleID = '/home/raj/lwan/lwan/main.c'
source_filename = "/home/raj/lwan/lwan/main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_key_value_t_ = type { ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.1, %struct.anon.1, %struct.anon.2, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.1 = type { ptr, i64 }
%struct.anon.2 = type { i64, %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon = type { ptr, i32, i16 }
%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_url_map_t_ = type { ptr, ptr, ptr, i64, i32, ptr, ptr, %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.lwan_serve_files_settings_t = type { ptr, ptr, i8 }

@gif_beacon.gif_beacon_data = internal constant [41 x i8] c"GIF89a\01\00\01\00\90\00\00\FF\00\00\00\00\00!\F9\04\05\10\00\00\00,\00\00\00\00\01\00\01\00\00\02\02\04\01", align 16, !dbg !0
@.str = private unnamed_addr constant [10 x i8] c"image/gif\00", align 1, !dbg !246
@.str.1 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1, !dbg !251
@.str.2 = private unnamed_addr constant [39 x i8] c"Testing chunked encoding! First chunk\0A\00", align 1, !dbg !256
@.str.3 = private unnamed_addr constant [20 x i8] c"*This is chunk %d*\0A\00", align 1, !dbg !261
@.str.4 = private unnamed_addr constant [12 x i8] c"Last chunk\0A\00", align 1, !dbg !266
@.str.5 = private unnamed_addr constant [20 x i8] c"Current value is %d\00", align 1, !dbg !271
@.str.6 = private unnamed_addr constant [8 x i8] c"currval\00", align 1, !dbg !273
@hello_world.headers = internal global [2 x %struct.lwan_key_value_t_] [%struct.lwan_key_value_t_ { ptr @.str.7, ptr @.str.8 }, %struct.lwan_key_value_t_ zeroinitializer], align 16, !dbg !283
@.str.7 = private unnamed_addr constant [39 x i8] c"X-The-Answer-To-The-Universal-Question\00", align 1, !dbg !276
@.str.8 = private unnamed_addr constant [3 x i8] c"42\00", align 1, !dbg !278
@.str.9 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !288
@.str.10 = private unnamed_addr constant [11 x i8] c"Hello, %s!\00", align 1, !dbg !293
@.str.11 = private unnamed_addr constant [14 x i8] c"Hello, world!\00", align 1, !dbg !295
@.str.12 = private unnamed_addr constant [10 x i8] c"dump_vars\00", align 1, !dbg !300
@.str.13 = private unnamed_addr constant [26 x i8] c"\0A\0AQuery String Variables\0A\00", align 1, !dbg !302
@.str.14 = private unnamed_addr constant [25 x i8] c"----------------------\0A\0A\00", align 1, !dbg !307
@.str.15 = private unnamed_addr constant [26 x i8] c"Key = \22%s\22; Value = \22%s\22\0A\00", align 1, !dbg !312
@.str.16 = private unnamed_addr constant [13 x i8] c"\0A\0APOST data\0A\00", align 1, !dbg !314
@.str.17 = private unnamed_addr constant [12 x i8] c"---------\0A\0A\00", align 1, !dbg !319
@.str.18 = private unnamed_addr constant [7 x i8] c"*:8080\00", align 1, !dbg !321
@.str.19 = private unnamed_addr constant [27 x i8] c"/home/raj/lwan/lwan/main.c\00", align 1, !dbg !326
@__FUNCTION__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1, !dbg !331
@.str.20 = private unnamed_addr constant [22 x i8] c"Serving files from %s\00", align 1, !dbg !334
@.str.21 = private unnamed_addr constant [2 x i8] c"/\00", align 1, !dbg !339
@parse_args.opts = internal constant [4 x %struct.option] [%struct.option { ptr @.str.22, i32 1, ptr null, i32 114 }, %struct.option { ptr @.str.23, i32 1, ptr null, i32 108 }, %struct.option { ptr @.str.24, i32 0, ptr null, i32 104 }, %struct.option zeroinitializer], align 16, !dbg !348
@.str.22 = private unnamed_addr constant [5 x i8] c"root\00", align 1, !dbg !342
@.str.23 = private unnamed_addr constant [7 x i8] c"listen\00", align 1, !dbg !344
@.str.24 = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !346
@.str.25 = private unnamed_addr constant [6 x i8] c"hr:l:\00", align 1, !dbg !367
@optarg = external global ptr, align 8
@.str.26 = private unnamed_addr constant [38 x i8] c"Run %s --help for usage information.\0A\00", align 1, !dbg !372
@.str.27 = private unnamed_addr constant [61 x i8] c"Usage: %s [--root /path/to/root/dir] [--listener addr:port]\0A\00", align 1, !dbg !377
@.str.28 = private unnamed_addr constant [13 x i8] c"\09[--config]\0A\00", align 1, !dbg !382
@.str.29 = private unnamed_addr constant [28 x i8] c"Serve files through HTTP.\0A\0A\00", align 1, !dbg !384
@.str.30 = private unnamed_addr constant [81 x i8] c"Defaults to listening on all interfaces, port 8080, serving current directory.\0A\0A\00", align 1, !dbg !389
@.str.31 = private unnamed_addr constant [10 x i8] c"Options:\0A\00", align 1, !dbg !394
@.str.32 = private unnamed_addr constant [67 x i8] c"\09-r, --root      Path to serve files from (default: current dir).\0A\00", align 1, !dbg !396
@.str.33 = private unnamed_addr constant [42 x i8] c"\09-l, --listener  Listener (default: %s).\0A\00", align 1, !dbg !401
@.str.34 = private unnamed_addr constant [24 x i8] c"\09-h, --help      This.\0A\00", align 1, !dbg !406
@.str.35 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !411
@.str.36 = private unnamed_addr constant [11 x i8] c"Examples:\0A\00", align 1, !dbg !413
@.str.37 = private unnamed_addr constant [57 x i8] c"  Serve system-wide documentation: %s -r /usr/share/doc\0A\00", align 1, !dbg !415
@.str.38 = private unnamed_addr constant [51 x i8] c"        Serve on a different port: %s -l '*:1337'\0A\00", align 1, !dbg !420
@.str.39 = private unnamed_addr constant [52 x i8] c"Report bugs at <https://github.com/lpereira/lwan>.\0A\00", align 1, !dbg !425

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gif_beacon(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !2 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !443, metadata !DIExpression()), !dbg !444
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !445, metadata !DIExpression()), !dbg !446
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !447, metadata !DIExpression()), !dbg !448
  %7 = load ptr, ptr %5, align 8, !dbg !449
  %8 = getelementptr inbounds %struct.lwan_response_t_, ptr %7, i32 0, i32 1, !dbg !450
  store ptr @.str, ptr %8, align 8, !dbg !451
  %9 = load ptr, ptr %5, align 8, !dbg !452
  %10 = getelementptr inbounds %struct.lwan_response_t_, ptr %9, i32 0, i32 0, !dbg !453
  %11 = load ptr, ptr %10, align 8, !dbg !453
  %12 = call zeroext i1 @strbuf_set_static(ptr noundef %11, ptr noundef @gif_beacon.gif_beacon_data, i64 noundef 41), !dbg !454
  ret i32 200, !dbg !455
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare zeroext i1 @strbuf_set_static(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_chunked_encoding(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !456 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !457, metadata !DIExpression()), !dbg !458
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !459, metadata !DIExpression()), !dbg !460
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !461, metadata !DIExpression()), !dbg !462
  call void @llvm.dbg.declare(metadata ptr %7, metadata !463, metadata !DIExpression()), !dbg !464
  %8 = load ptr, ptr %5, align 8, !dbg !465
  %9 = getelementptr inbounds %struct.lwan_response_t_, ptr %8, i32 0, i32 1, !dbg !466
  store ptr @.str.1, ptr %9, align 8, !dbg !467
  %10 = load ptr, ptr %5, align 8, !dbg !468
  %11 = getelementptr inbounds %struct.lwan_response_t_, ptr %10, i32 0, i32 0, !dbg !469
  %12 = load ptr, ptr %11, align 8, !dbg !469
  %13 = call zeroext i1 (ptr, ptr, ...) @strbuf_printf(ptr noundef %12, ptr noundef @.str.2), !dbg !470
  %14 = load ptr, ptr %4, align 8, !dbg !471
  call void @lwan_response_send_chunk(ptr noundef %14), !dbg !472
  store i32 0, ptr %7, align 4, !dbg !473
  br label %15, !dbg !475

15:                                               ; preds = %25, %3
  %16 = load i32, ptr %7, align 4, !dbg !476
  %17 = icmp sle i32 %16, 10, !dbg !478
  br i1 %17, label %18, label %28, !dbg !479

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !dbg !480
  %20 = getelementptr inbounds %struct.lwan_response_t_, ptr %19, i32 0, i32 0, !dbg !482
  %21 = load ptr, ptr %20, align 8, !dbg !482
  %22 = load i32, ptr %7, align 4, !dbg !483
  %23 = call zeroext i1 (ptr, ptr, ...) @strbuf_printf(ptr noundef %21, ptr noundef @.str.3, i32 noundef %22), !dbg !484
  %24 = load ptr, ptr %4, align 8, !dbg !485
  call void @lwan_response_send_chunk(ptr noundef %24), !dbg !486
  br label %25, !dbg !487

25:                                               ; preds = %18
  %26 = load i32, ptr %7, align 4, !dbg !488
  %27 = add nsw i32 %26, 1, !dbg !488
  store i32 %27, ptr %7, align 4, !dbg !488
  br label %15, !dbg !489, !llvm.loop !490

28:                                               ; preds = %15
  %29 = load ptr, ptr %5, align 8, !dbg !493
  %30 = getelementptr inbounds %struct.lwan_response_t_, ptr %29, i32 0, i32 0, !dbg !494
  %31 = load ptr, ptr %30, align 8, !dbg !494
  %32 = call zeroext i1 (ptr, ptr, ...) @strbuf_printf(ptr noundef %31, ptr noundef @.str.4), !dbg !495
  %33 = load ptr, ptr %4, align 8, !dbg !496
  call void @lwan_response_send_chunk(ptr noundef %33), !dbg !497
  ret i32 200, !dbg !498
}

declare zeroext i1 @strbuf_printf(ptr noundef, ptr noundef, ...) #2

declare void @lwan_response_send_chunk(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_server_sent_event(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !499 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !500, metadata !DIExpression()), !dbg !501
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !502, metadata !DIExpression()), !dbg !503
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !504, metadata !DIExpression()), !dbg !505
  call void @llvm.dbg.declare(metadata ptr %7, metadata !506, metadata !DIExpression()), !dbg !507
  store i32 0, ptr %7, align 4, !dbg !508
  br label %8, !dbg !510

8:                                                ; preds = %18, %3
  %9 = load i32, ptr %7, align 4, !dbg !511
  %10 = icmp sle i32 %9, 10, !dbg !513
  br i1 %10, label %11, label %21, !dbg !514

11:                                               ; preds = %8
  %12 = load ptr, ptr %5, align 8, !dbg !515
  %13 = getelementptr inbounds %struct.lwan_response_t_, ptr %12, i32 0, i32 0, !dbg !517
  %14 = load ptr, ptr %13, align 8, !dbg !517
  %15 = load i32, ptr %7, align 4, !dbg !518
  %16 = call zeroext i1 (ptr, ptr, ...) @strbuf_printf(ptr noundef %14, ptr noundef @.str.5, i32 noundef %15), !dbg !519
  %17 = load ptr, ptr %4, align 8, !dbg !520
  call void @lwan_response_send_event(ptr noundef %17, ptr noundef @.str.6), !dbg !521
  br label %18, !dbg !522

18:                                               ; preds = %11
  %19 = load i32, ptr %7, align 4, !dbg !523
  %20 = add nsw i32 %19, 1, !dbg !523
  store i32 %20, ptr %7, align 4, !dbg !523
  br label %8, !dbg !524, !llvm.loop !525

21:                                               ; preds = %8
  ret i32 200, !dbg !527
}

declare void @lwan_response_send_event(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hello_world(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !285 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !528, metadata !DIExpression()), !dbg !529
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !530, metadata !DIExpression()), !dbg !531
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !532, metadata !DIExpression()), !dbg !533
  %10 = load ptr, ptr %5, align 8, !dbg !534
  %11 = getelementptr inbounds %struct.lwan_response_t_, ptr %10, i32 0, i32 3, !dbg !535
  store ptr @hello_world.headers, ptr %11, align 8, !dbg !536
  %12 = load ptr, ptr %5, align 8, !dbg !537
  %13 = getelementptr inbounds %struct.lwan_response_t_, ptr %12, i32 0, i32 1, !dbg !538
  store ptr @.str.1, ptr %13, align 8, !dbg !539
  call void @llvm.dbg.declare(metadata ptr %7, metadata !540, metadata !DIExpression()), !dbg !541
  %14 = load ptr, ptr %4, align 8, !dbg !542
  %15 = call ptr @lwan_request_get_query_param(ptr noundef %14, ptr noundef @.str.9), !dbg !543
  store ptr %15, ptr %7, align 8, !dbg !541
  %16 = load ptr, ptr %7, align 8, !dbg !544
  %17 = icmp ne ptr %16, null, !dbg !544
  br i1 %17, label %18, label %24, !dbg !546

18:                                               ; preds = %3
  %19 = load ptr, ptr %5, align 8, !dbg !547
  %20 = getelementptr inbounds %struct.lwan_response_t_, ptr %19, i32 0, i32 0, !dbg !548
  %21 = load ptr, ptr %20, align 8, !dbg !548
  %22 = load ptr, ptr %7, align 8, !dbg !549
  %23 = call zeroext i1 (ptr, ptr, ...) @strbuf_printf(ptr noundef %21, ptr noundef @.str.10, ptr noundef %22), !dbg !550
  br label %29, !dbg !550

24:                                               ; preds = %3
  %25 = load ptr, ptr %5, align 8, !dbg !551
  %26 = getelementptr inbounds %struct.lwan_response_t_, ptr %25, i32 0, i32 0, !dbg !552
  %27 = load ptr, ptr %26, align 8, !dbg !552
  %28 = call zeroext i1 @strbuf_set_static(ptr noundef %27, ptr noundef @.str.11, i64 noundef 13), !dbg !553
  br label %29

29:                                               ; preds = %24, %18
  call void @llvm.dbg.declare(metadata ptr %8, metadata !554, metadata !DIExpression()), !dbg !555
  %30 = load ptr, ptr %4, align 8, !dbg !556
  %31 = call ptr @lwan_request_get_query_param(ptr noundef %30, ptr noundef @.str.12), !dbg !557
  store ptr %31, ptr %8, align 8, !dbg !555
  %32 = load ptr, ptr %8, align 8, !dbg !558
  %33 = icmp ne ptr %32, null, !dbg !558
  br i1 %33, label %35, label %34, !dbg !560

34:                                               ; preds = %29
  br label %107, !dbg !561

35:                                               ; preds = %29
  %36 = load ptr, ptr %5, align 8, !dbg !562
  %37 = getelementptr inbounds %struct.lwan_response_t_, ptr %36, i32 0, i32 0, !dbg !563
  %38 = load ptr, ptr %37, align 8, !dbg !563
  %39 = call zeroext i1 @strbuf_append_str(ptr noundef %38, ptr noundef @.str.13, i64 noundef 0), !dbg !564
  %40 = load ptr, ptr %5, align 8, !dbg !565
  %41 = getelementptr inbounds %struct.lwan_response_t_, ptr %40, i32 0, i32 0, !dbg !566
  %42 = load ptr, ptr %41, align 8, !dbg !566
  %43 = call zeroext i1 @strbuf_append_str(ptr noundef %42, ptr noundef @.str.14, i64 noundef 0), !dbg !567
  call void @llvm.dbg.declare(metadata ptr %9, metadata !568, metadata !DIExpression()), !dbg !569
  %44 = load ptr, ptr %4, align 8, !dbg !570
  %45 = getelementptr inbounds %struct.lwan_request_t_, ptr %44, i32 0, i32 5, !dbg !571
  %46 = getelementptr inbounds %struct.anon.1, ptr %45, i32 0, i32 0, !dbg !572
  %47 = load ptr, ptr %46, align 8, !dbg !572
  store ptr %47, ptr %9, align 8, !dbg !569
  br label %48, !dbg !573

48:                                               ; preds = %64, %35
  %49 = load ptr, ptr %9, align 8, !dbg !574
  %50 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %49, i32 0, i32 0, !dbg !577
  %51 = load ptr, ptr %50, align 8, !dbg !577
  %52 = icmp ne ptr %51, null, !dbg !578
  br i1 %52, label %53, label %67, !dbg !578

53:                                               ; preds = %48
  %54 = load ptr, ptr %5, align 8, !dbg !579
  %55 = getelementptr inbounds %struct.lwan_response_t_, ptr %54, i32 0, i32 0, !dbg !580
  %56 = load ptr, ptr %55, align 8, !dbg !580
  %57 = load ptr, ptr %9, align 8, !dbg !581
  %58 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %57, i32 0, i32 0, !dbg !582
  %59 = load ptr, ptr %58, align 8, !dbg !582
  %60 = load ptr, ptr %9, align 8, !dbg !583
  %61 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %60, i32 0, i32 1, !dbg !584
  %62 = load ptr, ptr %61, align 8, !dbg !584
  %63 = call zeroext i1 (ptr, ptr, ...) @strbuf_append_printf(ptr noundef %56, ptr noundef @.str.15, ptr noundef %59, ptr noundef %62), !dbg !585
  br label %64, !dbg !585

64:                                               ; preds = %53
  %65 = load ptr, ptr %9, align 8, !dbg !586
  %66 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %65, i32 1, !dbg !586
  store ptr %66, ptr %9, align 8, !dbg !586
  br label %48, !dbg !587, !llvm.loop !588

67:                                               ; preds = %48
  %68 = load ptr, ptr %4, align 8, !dbg !590
  %69 = getelementptr inbounds %struct.lwan_request_t_, ptr %68, i32 0, i32 0, !dbg !592
  %70 = load i32, ptr %69, align 8, !dbg !592
  %71 = and i32 %70, 4, !dbg !593
  %72 = icmp ne i32 %71, 0, !dbg !593
  br i1 %72, label %74, label %73, !dbg !594

73:                                               ; preds = %67
  br label %107, !dbg !595

74:                                               ; preds = %67
  %75 = load ptr, ptr %5, align 8, !dbg !596
  %76 = getelementptr inbounds %struct.lwan_response_t_, ptr %75, i32 0, i32 0, !dbg !597
  %77 = load ptr, ptr %76, align 8, !dbg !597
  %78 = call zeroext i1 @strbuf_append_str(ptr noundef %77, ptr noundef @.str.16, i64 noundef 0), !dbg !598
  %79 = load ptr, ptr %5, align 8, !dbg !599
  %80 = getelementptr inbounds %struct.lwan_response_t_, ptr %79, i32 0, i32 0, !dbg !600
  %81 = load ptr, ptr %80, align 8, !dbg !600
  %82 = call zeroext i1 @strbuf_append_str(ptr noundef %81, ptr noundef @.str.17, i64 noundef 0), !dbg !601
  %83 = load ptr, ptr %4, align 8, !dbg !602
  %84 = getelementptr inbounds %struct.lwan_request_t_, ptr %83, i32 0, i32 6, !dbg !604
  %85 = getelementptr inbounds %struct.anon.1, ptr %84, i32 0, i32 0, !dbg !605
  %86 = load ptr, ptr %85, align 8, !dbg !605
  store ptr %86, ptr %9, align 8, !dbg !606
  br label %87, !dbg !607

87:                                               ; preds = %103, %74
  %88 = load ptr, ptr %9, align 8, !dbg !608
  %89 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %88, i32 0, i32 0, !dbg !610
  %90 = load ptr, ptr %89, align 8, !dbg !610
  %91 = icmp ne ptr %90, null, !dbg !611
  br i1 %91, label %92, label %106, !dbg !611

92:                                               ; preds = %87
  %93 = load ptr, ptr %5, align 8, !dbg !612
  %94 = getelementptr inbounds %struct.lwan_response_t_, ptr %93, i32 0, i32 0, !dbg !613
  %95 = load ptr, ptr %94, align 8, !dbg !613
  %96 = load ptr, ptr %9, align 8, !dbg !614
  %97 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %96, i32 0, i32 0, !dbg !615
  %98 = load ptr, ptr %97, align 8, !dbg !615
  %99 = load ptr, ptr %9, align 8, !dbg !616
  %100 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %99, i32 0, i32 1, !dbg !617
  %101 = load ptr, ptr %100, align 8, !dbg !617
  %102 = call zeroext i1 (ptr, ptr, ...) @strbuf_append_printf(ptr noundef %95, ptr noundef @.str.15, ptr noundef %98, ptr noundef %101), !dbg !618
  br label %103, !dbg !618

103:                                              ; preds = %92
  %104 = load ptr, ptr %9, align 8, !dbg !619
  %105 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %104, i32 1, !dbg !619
  store ptr %105, ptr %9, align 8, !dbg !619
  br label %87, !dbg !620, !llvm.loop !621

106:                                              ; preds = %87
  br label %107, !dbg !622

107:                                              ; preds = %106, %73, %34
  call void @llvm.dbg.label(metadata !623), !dbg !624
  ret i32 200, !dbg !625
}

declare ptr @lwan_request_get_query_param(ptr noundef, ptr noundef) #2

declare zeroext i1 @strbuf_append_str(ptr noundef, ptr noundef, i64 noundef) #2

declare zeroext i1 @strbuf_append_printf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 !dbg !626 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca %struct.lwan_t_, align 8
  %7 = alloca %struct.lwan_config_t_, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca [2 x %struct.lwan_url_map_t_], align 16
  %11 = alloca [1 x %struct.lwan_serve_files_settings_t], align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !629, metadata !DIExpression()), !dbg !630
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !631, metadata !DIExpression()), !dbg !632
  call void @llvm.dbg.declare(metadata ptr %6, metadata !633, metadata !DIExpression()), !dbg !634
  call void @llvm.dbg.declare(metadata ptr %7, metadata !635, metadata !DIExpression()), !dbg !636
  call void @llvm.dbg.declare(metadata ptr %8, metadata !637, metadata !DIExpression()), !dbg !638
  %12 = call ptr @get_current_dir_name() #6, !dbg !639
  store ptr %12, ptr %8, align 8, !dbg !638
  call void @llvm.dbg.declare(metadata ptr %9, metadata !640, metadata !DIExpression()), !dbg !641
  store i32 0, ptr %9, align 4, !dbg !641
  %13 = call ptr @lwan_get_default_config(), !dbg !642
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %7, ptr align 8 %13, i64 24, i1 false), !dbg !643
  %14 = call noalias ptr @strdup(ptr noundef @.str.18) #6, !dbg !644
  %15 = getelementptr inbounds %struct.lwan_config_t_, ptr %7, i32 0, i32 0, !dbg !645
  store ptr %14, ptr %15, align 8, !dbg !646
  %16 = load i32, ptr %4, align 4, !dbg !647
  %17 = load ptr, ptr %5, align 8, !dbg !648
  %18 = call i32 @parse_args(i32 noundef %16, ptr noundef %17, ptr noundef %7, ptr noundef %8), !dbg !649
  switch i32 %18, label %36 [
    i32 2, label %19
    i32 1, label %34
    i32 0, label %35
  ], !dbg !650

19:                                               ; preds = %2
  %20 = load ptr, ptr %8, align 8, !dbg !651
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str.19, i32 noundef 203, ptr noundef @__FUNCTION__.main, ptr noundef @.str.20, ptr noundef %20), !dbg !651
  call void @lwan_init_with_config(ptr noundef %6, ptr noundef %7), !dbg !653
  call void @llvm.dbg.declare(metadata ptr %10, metadata !654, metadata !DIExpression()), !dbg !693
  call void @llvm.memset.p0.i64(ptr align 16 %10, i8 0, i64 144, i1 false), !dbg !693
  %21 = getelementptr inbounds [2 x %struct.lwan_url_map_t_], ptr %10, i64 0, i64 0, !dbg !694
  %22 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %21, i32 0, i32 2, !dbg !695
  store ptr @.str.21, ptr %22, align 8, !dbg !695
  %23 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %21, i32 0, i32 5, !dbg !695
  %24 = call ptr @lwan_module_serve_files(), !dbg !696
  store ptr %24, ptr %23, align 8, !dbg !695
  %25 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %21, i32 0, i32 6, !dbg !695
  %26 = getelementptr inbounds [1 x %struct.lwan_serve_files_settings_t], ptr %11, i64 0, i64 0, !dbg !696
  %27 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %26, i32 0, i32 0, !dbg !696
  %28 = load ptr, ptr %8, align 8, !dbg !696
  store ptr %28, ptr %27, align 8, !dbg !696
  %29 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %26, i32 0, i32 1, !dbg !696
  store ptr null, ptr %29, align 8, !dbg !696
  %30 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %26, i32 0, i32 2, !dbg !696
  store i8 1, ptr %30, align 8, !dbg !696
  %31 = getelementptr inbounds [1 x %struct.lwan_serve_files_settings_t], ptr %11, i64 0, i64 0, !dbg !696
  store ptr %31, ptr %25, align 8, !dbg !695
  %32 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %21, i64 1, !dbg !694
  %33 = getelementptr inbounds [2 x %struct.lwan_url_map_t_], ptr %10, i64 0, i64 0, !dbg !697
  call void @lwan_set_url_map(ptr noundef %6, ptr noundef %33), !dbg !698
  br label %36, !dbg !699

34:                                               ; preds = %2
  call void @lwan_init(ptr noundef %6), !dbg !700
  br label %36, !dbg !701

35:                                               ; preds = %2
  store i32 1, ptr %9, align 4, !dbg !702
  br label %37, !dbg !703

36:                                               ; preds = %2, %34, %19
  call void @lwan_main_loop(ptr noundef %6), !dbg !704
  call void @lwan_shutdown(ptr noundef %6), !dbg !705
  br label %37, !dbg !705

37:                                               ; preds = %36, %35
  call void @llvm.dbg.label(metadata !706), !dbg !707
  %38 = load ptr, ptr %8, align 8, !dbg !708
  call void @free(ptr noundef %38) #6, !dbg !709
  %39 = getelementptr inbounds %struct.lwan_config_t_, ptr %7, i32 0, i32 0, !dbg !710
  %40 = load ptr, ptr %39, align 8, !dbg !710
  call void @free(ptr noundef %40) #6, !dbg !711
  %41 = load i32, ptr %9, align 4, !dbg !712
  ret i32 %41, !dbg !713
}

; Function Attrs: nounwind
declare ptr @get_current_dir_name() #3

declare ptr @lwan_get_default_config() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_args(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !350 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !714, metadata !DIExpression()), !dbg !715
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !716, metadata !DIExpression()), !dbg !717
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !718, metadata !DIExpression()), !dbg !719
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !720, metadata !DIExpression()), !dbg !721
  call void @llvm.dbg.declare(metadata ptr %10, metadata !722, metadata !DIExpression()), !dbg !723
  call void @llvm.dbg.declare(metadata ptr %11, metadata !724, metadata !DIExpression()), !dbg !725
  store i32 0, ptr %11, align 4, !dbg !725
  call void @llvm.dbg.declare(metadata ptr %12, metadata !726, metadata !DIExpression()), !dbg !727
  store i32 1, ptr %12, align 4, !dbg !727
  br label %13, !dbg !728

13:                                               ; preds = %66, %4
  %14 = load i32, ptr %6, align 4, !dbg !729
  %15 = load ptr, ptr %7, align 8, !dbg !730
  %16 = call i32 @getopt_long(i32 noundef %14, ptr noundef %15, ptr noundef @.str.25, ptr noundef @parse_args.opts, ptr noundef %11) #6, !dbg !731
  store i32 %16, ptr %10, align 4, !dbg !732
  %17 = icmp ne i32 %16, -1, !dbg !733
  br i1 %17, label %18, label %67, !dbg !728

18:                                               ; preds = %13
  %19 = load i32, ptr %10, align 4, !dbg !734
  switch i32 %19, label %34 [
    i32 108, label %20
    i32 114, label %28
    i32 104, label %39
  ], !dbg !736

20:                                               ; preds = %18
  %21 = load ptr, ptr %8, align 8, !dbg !737
  %22 = getelementptr inbounds %struct.lwan_config_t_, ptr %21, i32 0, i32 0, !dbg !739
  %23 = load ptr, ptr %22, align 8, !dbg !739
  call void @free(ptr noundef %23) #6, !dbg !740
  %24 = load ptr, ptr @optarg, align 8, !dbg !741
  %25 = call noalias ptr @strdup(ptr noundef %24) #6, !dbg !742
  %26 = load ptr, ptr %8, align 8, !dbg !743
  %27 = getelementptr inbounds %struct.lwan_config_t_, ptr %26, i32 0, i32 0, !dbg !744
  store ptr %25, ptr %27, align 8, !dbg !745
  store i32 2, ptr %12, align 4, !dbg !746
  br label %66, !dbg !747

28:                                               ; preds = %18
  %29 = load ptr, ptr %9, align 8, !dbg !748
  %30 = load ptr, ptr %29, align 8, !dbg !749
  call void @free(ptr noundef %30) #6, !dbg !750
  %31 = load ptr, ptr @optarg, align 8, !dbg !751
  %32 = call noalias ptr @strdup(ptr noundef %31) #6, !dbg !752
  %33 = load ptr, ptr %9, align 8, !dbg !753
  store ptr %32, ptr %33, align 8, !dbg !754
  store i32 2, ptr %12, align 4, !dbg !755
  br label %66, !dbg !756

34:                                               ; preds = %18
  %35 = load ptr, ptr %7, align 8, !dbg !757
  %36 = getelementptr inbounds ptr, ptr %35, i64 0, !dbg !757
  %37 = load ptr, ptr %36, align 8, !dbg !757
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.26, ptr noundef %37), !dbg !758
  store i32 0, ptr %5, align 4, !dbg !759
  br label %69, !dbg !759

39:                                               ; preds = %18
  %40 = load ptr, ptr %7, align 8, !dbg !760
  %41 = getelementptr inbounds ptr, ptr %40, i64 0, !dbg !760
  %42 = load ptr, ptr %41, align 8, !dbg !760
  %43 = call i32 (ptr, ...) @printf(ptr noundef @.str.27, ptr noundef %42), !dbg !761
  %44 = call i32 (ptr, ...) @printf(ptr noundef @.str.28), !dbg !762
  %45 = call i32 (ptr, ...) @printf(ptr noundef @.str.29), !dbg !763
  %46 = call i32 (ptr, ...) @printf(ptr noundef @.str.30), !dbg !764
  %47 = call i32 (ptr, ...) @printf(ptr noundef @.str.31), !dbg !765
  %48 = call i32 (ptr, ...) @printf(ptr noundef @.str.32), !dbg !766
  %49 = load ptr, ptr %8, align 8, !dbg !767
  %50 = getelementptr inbounds %struct.lwan_config_t_, ptr %49, i32 0, i32 0, !dbg !768
  %51 = load ptr, ptr %50, align 8, !dbg !768
  %52 = call i32 (ptr, ...) @printf(ptr noundef @.str.33, ptr noundef %51), !dbg !769
  %53 = call i32 (ptr, ...) @printf(ptr noundef @.str.34), !dbg !770
  %54 = call i32 (ptr, ...) @printf(ptr noundef @.str.35), !dbg !771
  %55 = call i32 (ptr, ...) @printf(ptr noundef @.str.36), !dbg !772
  %56 = load ptr, ptr %7, align 8, !dbg !773
  %57 = getelementptr inbounds ptr, ptr %56, i64 0, !dbg !773
  %58 = load ptr, ptr %57, align 8, !dbg !773
  %59 = call i32 (ptr, ...) @printf(ptr noundef @.str.37, ptr noundef %58), !dbg !774
  %60 = load ptr, ptr %7, align 8, !dbg !775
  %61 = getelementptr inbounds ptr, ptr %60, i64 0, !dbg !775
  %62 = load ptr, ptr %61, align 8, !dbg !775
  %63 = call i32 (ptr, ...) @printf(ptr noundef @.str.38, ptr noundef %62), !dbg !776
  %64 = call i32 (ptr, ...) @printf(ptr noundef @.str.35), !dbg !777
  %65 = call i32 (ptr, ...) @printf(ptr noundef @.str.39), !dbg !778
  store i32 0, ptr %5, align 4, !dbg !779
  br label %69, !dbg !779

66:                                               ; preds = %28, %20
  br label %13, !dbg !728, !llvm.loop !780

67:                                               ; preds = %13
  %68 = load i32, ptr %12, align 4, !dbg !782
  store i32 %68, ptr %5, align 4, !dbg !783
  br label %69, !dbg !783

69:                                               ; preds = %67, %39, %34
  %70 = load i32, ptr %5, align 4, !dbg !784
  ret i32 %70, !dbg !784
}

declare void @lwan_status_info_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @lwan_init_with_config(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

declare ptr @lwan_module_serve_files() #2

declare void @lwan_set_url_map(ptr noundef, ptr noundef) #2

declare void @lwan_init(ptr noundef) #2

declare void @lwan_main_loop(ptr noundef) #2

declare void @lwan_shutdown(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare i32 @printf(ptr noundef, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!226}
!llvm.module.flags = !{!435, !436, !437, !438, !439, !440, !441}
!llvm.ident = !{!442}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "gif_beacon_data", scope: !2, file: !3, line: 43, type: !430, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "gif_beacon", scope: !3, file: !3, line: 35, type: !4, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !286)
!3 = !DIFile(filename: "lwan/main.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c78d74bc8fb67729c69c747f37941a1b")
!4 = !DISubroutineType(types: !5)
!5 = !{!6, !27, !225, !111}
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !7, line: 131, baseType: !8)
!7 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!8 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 114, baseType: !9, size: 32, elements: !10)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = !{!11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26}
!11 = !DIEnumerator(name: "HTTP_OK", value: 200)
!12 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!13 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!14 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!15 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!16 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!17 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!18 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!19 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!20 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!21 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!22 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!23 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!24 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!25 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!26 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !7, line: 106, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !7, line: 206, size: 1280, elements: !30)
!30 = !{!31, !46, !47, !58, !59, !166, !177, !178, !190}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !29, file: !7, line: 207, baseType: !32, size: 32)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !7, line: 156, baseType: !33)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 145, baseType: !34, size: 32, elements: !35)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
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
!46 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !29, file: !7, line: 208, baseType: !34, size: 32, offset: 32)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !29, file: !7, line: 209, baseType: !48, size: 128, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !7, line: 110, baseType: !49)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !7, line: 191, size: 128, elements: !50)
!50 = !{!51, !54}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !49, file: !7, line: 192, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !49, file: !7, line: 193, baseType: !55, size: 64, offset: 64)
!55 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !56, line: 46, baseType: !57)
!56 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !29, file: !7, line: 210, baseType: !48, size: 128, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !29, file: !7, line: 211, baseType: !60, size: 64, offset: 320)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !7, line: 112, baseType: !62)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !7, line: 196, size: 256, elements: !63)
!63 = !{!64, !74, !75, !80, !164, !165}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !7, line: 199, baseType: !65, size: 32)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !7, line: 165, baseType: !66)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 158, baseType: !34, size: 32, elements: !67)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DIEnumerator(name: "CONN_MASK", value: -1)
!69 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!70 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!71 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!72 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!73 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !62, file: !7, line: 200, baseType: !9, size: 32, offset: 32)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !62, file: !7, line: 201, baseType: !76, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !78, line: 34, baseType: !79)
!78 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!79 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !78, line: 34, flags: DIFlagFwdDecl)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !62, file: !7, line: 202, baseType: !81, size: 64, offset: 128)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !7, line: 108, baseType: !83)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !7, line: 253, size: 832, elements: !84)
!84 = !{!85, !142, !156, !157, !161}
!85 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !83, file: !7, line: 254, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !7, line: 103, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !7, line: 275, size: 640, elements: !89)
!89 = !{!90, !118, !119, !126, !130, !141}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !88, file: !7, line: 276, baseType: !91, size: 128)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !92, line: 25, baseType: !93)
!92 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !92, line: 41, size: 128, elements: !94)
!94 = !{!95, !114}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !93, file: !92, line: 42, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !92, line: 26, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !92, line: 29, size: 640, elements: !99)
!99 = !{!100, !104, !113}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !98, file: !92, line: 30, baseType: !101, size: 512)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 512, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: 8)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !98, file: !92, line: 31, baseType: !105, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !92, line: 27, baseType: !107)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !92, line: 35, size: 192, elements: !108)
!108 = !{!109, !110, !112}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !107, file: !92, line: 36, baseType: !52, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !107, file: !92, line: 37, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !107, file: !92, line: 38, baseType: !105, size: 64, offset: 128)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !98, file: !92, line: 32, baseType: !34, size: 32, offset: 576)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !93, file: !92, line: 43, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !111}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !88, file: !7, line: 277, baseType: !60, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !88, file: !7, line: 283, baseType: !120, size: 128, offset: 192)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !7, line: 279, size: 128, elements: !121)
!121 = !{!122, !123, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !120, file: !7, line: 280, baseType: !81, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !120, file: !7, line: 281, baseType: !9, size: 32, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !120, file: !7, line: 282, baseType: !125, size: 16, offset: 96)
!125 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !88, file: !7, line: 285, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !129, line: 6, flags: DIFlagFwdDecl)
!129 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!130 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !88, file: !7, line: 286, baseType: !131, size: 192, offset: 384)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !7, line: 111, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !7, line: 266, size: 192, elements: !133)
!133 = !{!134, !135, !136, !138, !139, !140}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !132, file: !7, line: 267, baseType: !52, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !132, file: !7, line: 268, baseType: !125, size: 16, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !132, file: !7, line: 269, baseType: !137, size: 8, offset: 80)
!137 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !132, file: !7, line: 270, baseType: !137, size: 8, offset: 88)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !132, file: !7, line: 271, baseType: !9, size: 32, offset: 96)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !132, file: !7, line: 272, baseType: !125, size: 16, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !88, file: !7, line: 287, baseType: !34, size: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !83, file: !7, line: 259, baseType: !143, size: 576, offset: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !83, file: !7, line: 255, size: 576, elements: !144)
!144 = !{!145, !149, !150}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !143, file: !7, line: 256, baseType: !146, size: 240)
!146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 240, elements: !147)
!147 = !{!148}
!148 = !DISubrange(count: 30)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !143, file: !7, line: 257, baseType: !146, size: 240, offset: 240)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !143, file: !7, line: 258, baseType: !151, size: 64, offset: 512)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !152, line: 10, baseType: !153)
!152 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !154, line: 160, baseType: !155)
!154 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!155 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !83, file: !7, line: 261, baseType: !34, size: 32, offset: 640)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !83, file: !7, line: 262, baseType: !158, size: 64, offset: 672)
!158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !34, size: 64, elements: !159)
!159 = !{!160}
!160 = !DISubrange(count: 2)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !83, file: !7, line: 263, baseType: !162, size: 64, offset: 768)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !163, line: 27, baseType: !57)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !62, file: !7, line: 203, baseType: !34, size: 32, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !62, file: !7, line: 203, baseType: !34, size: 32, offset: 224)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !29, file: !7, line: 216, baseType: !167, size: 128, offset: 384)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !7, line: 213, size: 128, elements: !168)
!168 = !{!169, !176}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !167, file: !7, line: 214, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !7, line: 105, baseType: !172)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !7, line: 173, size: 128, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !172, file: !7, line: 174, baseType: !52, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !172, file: !7, line: 175, baseType: !52, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !167, file: !7, line: 215, baseType: !55, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !29, file: !7, line: 216, baseType: !167, size: 128, offset: 512)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !29, file: !7, line: 223, baseType: !179, size: 192, offset: 640)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !7, line: 217, size: 192, elements: !180)
!180 = !{!181, !182}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !179, file: !7, line: 218, baseType: !151, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !179, file: !7, line: 222, baseType: !183, size: 128, offset: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !7, line: 219, size: 128, elements: !184)
!184 = !{!185, !189}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !183, file: !7, line: 220, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !187, line: 85, baseType: !188)
!187 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "", checksumkind: CSK_MD5, checksum: "e62424071ad3f1b4d088c139fd9ccfd1")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !154, line: 152, baseType: !155)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !183, file: !7, line: 221, baseType: !186, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !29, file: !7, line: 224, baseType: !191, size: 448, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !7, line: 107, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !7, line: 178, size: 448, elements: !193)
!193 = !{!194, !213, !214, !215, !216}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !192, file: !7, line: 179, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !197, line: 25, baseType: !198)
!197 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !197, line: 27, size: 256, elements: !199)
!199 = !{!200, !207, !212}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !198, file: !197, line: 31, baseType: !201, size: 64)
!201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !198, file: !197, line: 28, size: 64, elements: !202)
!202 = !{!203, !204}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !201, file: !197, line: 29, baseType: !52, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !201, file: !197, line: 30, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !198, file: !197, line: 34, baseType: !208, size: 128, offset: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !198, file: !197, line: 32, size: 128, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !208, file: !197, line: 33, baseType: !55, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !208, file: !197, line: 33, baseType: !55, size: 64, offset: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !198, file: !197, line: 35, baseType: !9, size: 32, offset: 192)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !192, file: !7, line: 180, baseType: !205, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !192, file: !7, line: 181, baseType: !55, size: 64, offset: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !192, file: !7, line: 182, baseType: !170, size: 64, offset: 192)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !192, file: !7, line: 188, baseType: !217, size: 192, offset: 256)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !192, file: !7, line: 184, size: 192, elements: !218)
!218 = !{!219, !223, !224}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !217, file: !7, line: 185, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!6, !27, !111}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !217, file: !7, line: 186, baseType: !111, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !217, file: !7, line: 187, baseType: !111, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!226 = distinct !DICompileUnit(language: DW_LANG_C11, file: !227, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !228, retainedTypes: !244, globals: !245, splitDebugInlining: false, nameTableKind: None)
!227 = !DIFile(filename: "/home/raj/lwan/lwan/main.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "c78d74bc8fb67729c69c747f37941a1b")
!228 = !{!8, !33, !66, !229, !234}
!229 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "args", file: !3, line: 28, baseType: !9, size: 32, elements: !230)
!230 = !{!231, !232, !233}
!231 = !DIEnumerator(name: "ARGS_FAILED", value: 0)
!232 = !DIEnumerator(name: "ARGS_USE_CONFIG", value: 1)
!233 = !DIEnumerator(name: "ARGS_SERVE_FILES", value: 2)
!234 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !7, line: 133, baseType: !9, size: 32, elements: !235)
!235 = !{!236, !237, !238, !239, !240, !241, !242, !243}
!236 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!237 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!238 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!239 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!240 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!241 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!242 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!243 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!244 = !{!52}
!245 = !{!0, !246, !251, !256, !261, !266, !271, !273, !276, !278, !283, !288, !293, !295, !300, !302, !307, !312, !314, !319, !321, !326, !331, !334, !339, !342, !344, !346, !348, !367, !372, !377, !382, !384, !389, !394, !396, !401, !406, !411, !413, !415, !420, !425}
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !3, line: 50, type: !248, isLocal: true, isDefinition: true)
!248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 80, elements: !249)
!249 = !{!250}
!250 = !DISubrange(count: 10)
!251 = !DIGlobalVariableExpression(var: !252, expr: !DIExpression())
!252 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !253, isLocal: true, isDefinition: true)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 88, elements: !254)
!254 = !{!255}
!255 = !DISubrange(count: 11)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !3, line: 65, type: !258, isLocal: true, isDefinition: true)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 312, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 39)
!261 = !DIGlobalVariableExpression(var: !262, expr: !DIExpression())
!262 = distinct !DIGlobalVariable(scope: null, file: !3, line: 69, type: !263, isLocal: true, isDefinition: true)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 160, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 20)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !3, line: 73, type: !268, isLocal: true, isDefinition: true)
!268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 96, elements: !269)
!269 = !{!270}
!270 = !DISubrange(count: 12)
!271 = !DIGlobalVariableExpression(var: !272, expr: !DIExpression())
!272 = distinct !DIGlobalVariable(scope: null, file: !3, line: 87, type: !263, isLocal: true, isDefinition: true)
!273 = !DIGlobalVariableExpression(var: !274, expr: !DIExpression())
!274 = distinct !DIGlobalVariable(scope: null, file: !3, line: 88, type: !275, isLocal: true, isDefinition: true)
!275 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 64, elements: !102)
!276 = !DIGlobalVariableExpression(var: !277, expr: !DIExpression())
!277 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !258, isLocal: true, isDefinition: true)
!278 = !DIGlobalVariableExpression(var: !279, expr: !DIExpression())
!279 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !280, isLocal: true, isDefinition: true)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 24, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 3)
!283 = !DIGlobalVariableExpression(var: !284, expr: !DIExpression())
!284 = distinct !DIGlobalVariable(name: "headers", scope: !285, file: !3, line: 99, type: !287, isLocal: true, isDefinition: true)
!285 = distinct !DISubprogram(name: "hello_world", scope: !3, file: !3, line: 95, type: !4, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !286)
!286 = !{}
!287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !159)
!288 = !DIGlobalVariableExpression(var: !289, expr: !DIExpression())
!289 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !290, isLocal: true, isDefinition: true)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 40, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 5)
!293 = !DIGlobalVariableExpression(var: !294, expr: !DIExpression())
!294 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !253, isLocal: true, isDefinition: true)
!295 = !DIGlobalVariableExpression(var: !296, expr: !DIExpression())
!296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !297, isLocal: true, isDefinition: true)
!297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 112, elements: !298)
!298 = !{!299}
!299 = !DISubrange(count: 14)
!300 = !DIGlobalVariableExpression(var: !301, expr: !DIExpression())
!301 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !248, isLocal: true, isDefinition: true)
!302 = !DIGlobalVariableExpression(var: !303, expr: !DIExpression())
!303 = distinct !DIGlobalVariable(scope: null, file: !3, line: 116, type: !304, isLocal: true, isDefinition: true)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 208, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 26)
!307 = !DIGlobalVariableExpression(var: !308, expr: !DIExpression())
!308 = distinct !DIGlobalVariable(scope: null, file: !3, line: 117, type: !309, isLocal: true, isDefinition: true)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 200, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 25)
!312 = !DIGlobalVariableExpression(var: !313, expr: !DIExpression())
!313 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !304, isLocal: true, isDefinition: true)
!314 = !DIGlobalVariableExpression(var: !315, expr: !DIExpression())
!315 = distinct !DIGlobalVariable(scope: null, file: !3, line: 127, type: !316, isLocal: true, isDefinition: true)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 104, elements: !317)
!317 = !{!318}
!318 = !DISubrange(count: 13)
!319 = !DIGlobalVariableExpression(var: !320, expr: !DIExpression())
!320 = distinct !DIGlobalVariable(scope: null, file: !3, line: 128, type: !268, isLocal: true, isDefinition: true)
!321 = !DIGlobalVariableExpression(var: !322, expr: !DIExpression())
!322 = distinct !DIGlobalVariable(scope: null, file: !3, line: 199, type: !323, isLocal: true, isDefinition: true)
!323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 56, elements: !324)
!324 = !{!325}
!325 = !DISubrange(count: 7)
!326 = !DIGlobalVariableExpression(var: !327, expr: !DIExpression())
!327 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !328, isLocal: true, isDefinition: true)
!328 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 216, elements: !329)
!329 = !{!330}
!330 = !DISubrange(count: 27)
!331 = !DIGlobalVariableExpression(var: !332, expr: !DIExpression())
!332 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !333, isLocal: true, isDefinition: true)
!333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 40, elements: !291)
!334 = !DIGlobalVariableExpression(var: !335, expr: !DIExpression())
!335 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !336, isLocal: true, isDefinition: true)
!336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 176, elements: !337)
!337 = !{!338}
!338 = !DISubrange(count: 22)
!339 = !DIGlobalVariableExpression(var: !340, expr: !DIExpression())
!340 = distinct !DIGlobalVariable(scope: null, file: !3, line: 207, type: !341, isLocal: true, isDefinition: true)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 16, elements: !159)
!342 = !DIGlobalVariableExpression(var: !343, expr: !DIExpression())
!343 = distinct !DIGlobalVariable(scope: null, file: !3, line: 142, type: !290, isLocal: true, isDefinition: true)
!344 = !DIGlobalVariableExpression(var: !345, expr: !DIExpression())
!345 = distinct !DIGlobalVariable(scope: null, file: !3, line: 143, type: !323, isLocal: true, isDefinition: true)
!346 = !DIGlobalVariableExpression(var: !347, expr: !DIExpression())
!347 = distinct !DIGlobalVariable(scope: null, file: !3, line: 144, type: !290, isLocal: true, isDefinition: true)
!348 = !DIGlobalVariableExpression(var: !349, expr: !DIExpression())
!349 = distinct !DIGlobalVariable(name: "opts", scope: !350, file: !3, line: 141, type: !355, isLocal: true, isDefinition: true)
!350 = distinct !DISubprogram(name: "parse_args", scope: !3, file: !3, line: 139, type: !351, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !226, retainedNodes: !286)
!351 = !DISubroutineType(types: !352)
!352 = !{!229, !34, !353, !354, !353}
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !356, size: 1024, elements: !365)
!356 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !357)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "option", file: !358, line: 50, size: 256, elements: !359)
!358 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/getopt_ext.h", directory: "", checksumkind: CSK_MD5, checksum: "b4f86ba96a508c530fa381ae1dafe9eb")
!359 = !{!360, !361, !362, !364}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !357, file: !358, line: 52, baseType: !205, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "has_arg", scope: !357, file: !358, line: 55, baseType: !34, size: 32, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "flag", scope: !357, file: !358, line: 56, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !357, file: !358, line: 57, baseType: !34, size: 32, offset: 192)
!365 = !{!366}
!366 = !DISubrange(count: 4)
!367 = !DIGlobalVariableExpression(var: !368, expr: !DIExpression())
!368 = distinct !DIGlobalVariable(scope: null, file: !3, line: 150, type: !369, isLocal: true, isDefinition: true)
!369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 48, elements: !370)
!370 = !{!371}
!371 = !DISubrange(count: 6)
!372 = !DIGlobalVariableExpression(var: !373, expr: !DIExpression())
!373 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !374, isLocal: true, isDefinition: true)
!374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 304, elements: !375)
!375 = !{!376}
!376 = !DISubrange(count: 38)
!377 = !DIGlobalVariableExpression(var: !378, expr: !DIExpression())
!378 = distinct !DIGlobalVariable(scope: null, file: !3, line: 169, type: !379, isLocal: true, isDefinition: true)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 488, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 61)
!382 = !DIGlobalVariableExpression(var: !383, expr: !DIExpression())
!383 = distinct !DIGlobalVariable(scope: null, file: !3, line: 170, type: !316, isLocal: true, isDefinition: true)
!384 = !DIGlobalVariableExpression(var: !385, expr: !DIExpression())
!385 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !386, isLocal: true, isDefinition: true)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 224, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 28)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !3, line: 172, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 648, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 81)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !3, line: 173, type: !248, isLocal: true, isDefinition: true)
!396 = !DIGlobalVariableExpression(var: !397, expr: !DIExpression())
!397 = distinct !DIGlobalVariable(scope: null, file: !3, line: 174, type: !398, isLocal: true, isDefinition: true)
!398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 536, elements: !399)
!399 = !{!400}
!400 = !DISubrange(count: 67)
!401 = !DIGlobalVariableExpression(var: !402, expr: !DIExpression())
!402 = distinct !DIGlobalVariable(scope: null, file: !3, line: 175, type: !403, isLocal: true, isDefinition: true)
!403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 336, elements: !404)
!404 = !{!405}
!405 = !DISubrange(count: 42)
!406 = !DIGlobalVariableExpression(var: !407, expr: !DIExpression())
!407 = distinct !DIGlobalVariable(scope: null, file: !3, line: 176, type: !408, isLocal: true, isDefinition: true)
!408 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 192, elements: !409)
!409 = !{!410}
!410 = !DISubrange(count: 24)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !341, isLocal: true, isDefinition: true)
!413 = !DIGlobalVariableExpression(var: !414, expr: !DIExpression())
!414 = distinct !DIGlobalVariable(scope: null, file: !3, line: 178, type: !253, isLocal: true, isDefinition: true)
!415 = !DIGlobalVariableExpression(var: !416, expr: !DIExpression())
!416 = distinct !DIGlobalVariable(scope: null, file: !3, line: 179, type: !417, isLocal: true, isDefinition: true)
!417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 456, elements: !418)
!418 = !{!419}
!419 = !DISubrange(count: 57)
!420 = !DIGlobalVariableExpression(var: !421, expr: !DIExpression())
!421 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !422, isLocal: true, isDefinition: true)
!422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 408, elements: !423)
!423 = !{!424}
!424 = !DISubrange(count: 51)
!425 = !DIGlobalVariableExpression(var: !426, expr: !DIExpression())
!426 = distinct !DIGlobalVariable(scope: null, file: !3, line: 182, type: !427, isLocal: true, isDefinition: true)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !53, size: 416, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 52)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 328, elements: !433)
!431 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !432)
!432 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!433 = !{!434}
!434 = !DISubrange(count: 41)
!435 = !{i32 7, !"Dwarf Version", i32 5}
!436 = !{i32 2, !"Debug Info Version", i32 3}
!437 = !{i32 1, !"wchar_size", i32 4}
!438 = !{i32 8, !"PIC Level", i32 2}
!439 = !{i32 7, !"PIE Level", i32 2}
!440 = !{i32 7, !"uwtable", i32 2}
!441 = !{i32 7, !"frame-pointer", i32 2}
!442 = !{!"clang version 16.0.0"}
!443 = !DILocalVariable(name: "request", arg: 1, scope: !2, file: !3, line: 35, type: !27)
!444 = !DILocation(line: 35, column: 28, scope: !2)
!445 = !DILocalVariable(name: "response", arg: 2, scope: !2, file: !3, line: 36, type: !225)
!446 = !DILocation(line: 36, column: 29, scope: !2)
!447 = !DILocalVariable(name: "data", arg: 3, scope: !2, file: !3, line: 37, type: !111)
!448 = !DILocation(line: 37, column: 18, scope: !2)
!449 = !DILocation(line: 50, column: 5, scope: !2)
!450 = !DILocation(line: 50, column: 15, scope: !2)
!451 = !DILocation(line: 50, column: 25, scope: !2)
!452 = !DILocation(line: 51, column: 23, scope: !2)
!453 = !DILocation(line: 51, column: 33, scope: !2)
!454 = !DILocation(line: 51, column: 5, scope: !2)
!455 = !DILocation(line: 53, column: 5, scope: !2)
!456 = distinct !DISubprogram(name: "test_chunked_encoding", scope: !3, file: !3, line: 57, type: !4, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !286)
!457 = !DILocalVariable(name: "request", arg: 1, scope: !456, file: !3, line: 57, type: !27)
!458 = !DILocation(line: 57, column: 39, scope: !456)
!459 = !DILocalVariable(name: "response", arg: 2, scope: !456, file: !3, line: 58, type: !225)
!460 = !DILocation(line: 58, column: 30, scope: !456)
!461 = !DILocalVariable(name: "data", arg: 3, scope: !456, file: !3, line: 59, type: !111)
!462 = !DILocation(line: 59, column: 19, scope: !456)
!463 = !DILocalVariable(name: "i", scope: !456, file: !3, line: 61, type: !34)
!464 = !DILocation(line: 61, column: 9, scope: !456)
!465 = !DILocation(line: 63, column: 5, scope: !456)
!466 = !DILocation(line: 63, column: 15, scope: !456)
!467 = !DILocation(line: 63, column: 25, scope: !456)
!468 = !DILocation(line: 65, column: 19, scope: !456)
!469 = !DILocation(line: 65, column: 29, scope: !456)
!470 = !DILocation(line: 65, column: 5, scope: !456)
!471 = !DILocation(line: 66, column: 30, scope: !456)
!472 = !DILocation(line: 66, column: 5, scope: !456)
!473 = !DILocation(line: 68, column: 12, scope: !474)
!474 = distinct !DILexicalBlock(scope: !456, file: !3, line: 68, column: 5)
!475 = !DILocation(line: 68, column: 10, scope: !474)
!476 = !DILocation(line: 68, column: 17, scope: !477)
!477 = distinct !DILexicalBlock(scope: !474, file: !3, line: 68, column: 5)
!478 = !DILocation(line: 68, column: 19, scope: !477)
!479 = !DILocation(line: 68, column: 5, scope: !474)
!480 = !DILocation(line: 69, column: 23, scope: !481)
!481 = distinct !DILexicalBlock(scope: !477, file: !3, line: 68, column: 31)
!482 = !DILocation(line: 69, column: 33, scope: !481)
!483 = !DILocation(line: 69, column: 65, scope: !481)
!484 = !DILocation(line: 69, column: 9, scope: !481)
!485 = !DILocation(line: 70, column: 34, scope: !481)
!486 = !DILocation(line: 70, column: 9, scope: !481)
!487 = !DILocation(line: 71, column: 5, scope: !481)
!488 = !DILocation(line: 68, column: 27, scope: !477)
!489 = !DILocation(line: 68, column: 5, scope: !477)
!490 = distinct !{!490, !479, !491, !492}
!491 = !DILocation(line: 71, column: 5, scope: !474)
!492 = !{!"llvm.loop.mustprogress"}
!493 = !DILocation(line: 73, column: 19, scope: !456)
!494 = !DILocation(line: 73, column: 29, scope: !456)
!495 = !DILocation(line: 73, column: 5, scope: !456)
!496 = !DILocation(line: 74, column: 30, scope: !456)
!497 = !DILocation(line: 74, column: 5, scope: !456)
!498 = !DILocation(line: 76, column: 5, scope: !456)
!499 = distinct !DISubprogram(name: "test_server_sent_event", scope: !3, file: !3, line: 80, type: !4, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !286)
!500 = !DILocalVariable(name: "request", arg: 1, scope: !499, file: !3, line: 80, type: !27)
!501 = !DILocation(line: 80, column: 40, scope: !499)
!502 = !DILocalVariable(name: "response", arg: 2, scope: !499, file: !3, line: 81, type: !225)
!503 = !DILocation(line: 81, column: 30, scope: !499)
!504 = !DILocalVariable(name: "data", arg: 3, scope: !499, file: !3, line: 82, type: !111)
!505 = !DILocation(line: 82, column: 19, scope: !499)
!506 = !DILocalVariable(name: "i", scope: !499, file: !3, line: 84, type: !34)
!507 = !DILocation(line: 84, column: 9, scope: !499)
!508 = !DILocation(line: 86, column: 12, scope: !509)
!509 = distinct !DILexicalBlock(scope: !499, file: !3, line: 86, column: 5)
!510 = !DILocation(line: 86, column: 10, scope: !509)
!511 = !DILocation(line: 86, column: 17, scope: !512)
!512 = distinct !DILexicalBlock(scope: !509, file: !3, line: 86, column: 5)
!513 = !DILocation(line: 86, column: 19, scope: !512)
!514 = !DILocation(line: 86, column: 5, scope: !509)
!515 = !DILocation(line: 87, column: 23, scope: !516)
!516 = distinct !DILexicalBlock(scope: !512, file: !3, line: 86, column: 31)
!517 = !DILocation(line: 87, column: 33, scope: !516)
!518 = !DILocation(line: 87, column: 64, scope: !516)
!519 = !DILocation(line: 87, column: 9, scope: !516)
!520 = !DILocation(line: 88, column: 34, scope: !516)
!521 = !DILocation(line: 88, column: 9, scope: !516)
!522 = !DILocation(line: 89, column: 5, scope: !516)
!523 = !DILocation(line: 86, column: 27, scope: !512)
!524 = !DILocation(line: 86, column: 5, scope: !512)
!525 = distinct !{!525, !514, !526, !492}
!526 = !DILocation(line: 89, column: 5, scope: !509)
!527 = !DILocation(line: 91, column: 5, scope: !499)
!528 = !DILocalVariable(name: "request", arg: 1, scope: !285, file: !3, line: 95, type: !27)
!529 = !DILocation(line: 95, column: 29, scope: !285)
!530 = !DILocalVariable(name: "response", arg: 2, scope: !285, file: !3, line: 96, type: !225)
!531 = !DILocation(line: 96, column: 30, scope: !285)
!532 = !DILocalVariable(name: "data", arg: 3, scope: !285, file: !3, line: 97, type: !111)
!533 = !DILocation(line: 97, column: 19, scope: !285)
!534 = !DILocation(line: 103, column: 5, scope: !285)
!535 = !DILocation(line: 103, column: 15, scope: !285)
!536 = !DILocation(line: 103, column: 23, scope: !285)
!537 = !DILocation(line: 104, column: 5, scope: !285)
!538 = !DILocation(line: 104, column: 15, scope: !285)
!539 = !DILocation(line: 104, column: 25, scope: !285)
!540 = !DILocalVariable(name: "name", scope: !285, file: !3, line: 106, type: !205)
!541 = !DILocation(line: 106, column: 17, scope: !285)
!542 = !DILocation(line: 106, column: 53, scope: !285)
!543 = !DILocation(line: 106, column: 24, scope: !285)
!544 = !DILocation(line: 107, column: 9, scope: !545)
!545 = distinct !DILexicalBlock(scope: !285, file: !3, line: 107, column: 9)
!546 = !DILocation(line: 107, column: 9, scope: !285)
!547 = !DILocation(line: 108, column: 23, scope: !545)
!548 = !DILocation(line: 108, column: 33, scope: !545)
!549 = !DILocation(line: 108, column: 55, scope: !545)
!550 = !DILocation(line: 108, column: 9, scope: !545)
!551 = !DILocation(line: 110, column: 27, scope: !545)
!552 = !DILocation(line: 110, column: 37, scope: !545)
!553 = !DILocation(line: 110, column: 9, scope: !545)
!554 = !DILocalVariable(name: "dump_vars", scope: !285, file: !3, line: 112, type: !205)
!555 = !DILocation(line: 112, column: 17, scope: !285)
!556 = !DILocation(line: 112, column: 58, scope: !285)
!557 = !DILocation(line: 112, column: 29, scope: !285)
!558 = !DILocation(line: 113, column: 10, scope: !559)
!559 = distinct !DILexicalBlock(scope: !285, file: !3, line: 113, column: 9)
!560 = !DILocation(line: 113, column: 9, scope: !285)
!561 = !DILocation(line: 114, column: 9, scope: !559)
!562 = !DILocation(line: 116, column: 23, scope: !285)
!563 = !DILocation(line: 116, column: 33, scope: !285)
!564 = !DILocation(line: 116, column: 5, scope: !285)
!565 = !DILocation(line: 117, column: 23, scope: !285)
!566 = !DILocation(line: 117, column: 33, scope: !285)
!567 = !DILocation(line: 117, column: 5, scope: !285)
!568 = !DILocalVariable(name: "qs", scope: !285, file: !3, line: 119, type: !170)
!569 = !DILocation(line: 119, column: 23, scope: !285)
!570 = !DILocation(line: 119, column: 28, scope: !285)
!571 = !DILocation(line: 119, column: 37, scope: !285)
!572 = !DILocation(line: 119, column: 50, scope: !285)
!573 = !DILocation(line: 120, column: 5, scope: !285)
!574 = !DILocation(line: 120, column: 12, scope: !575)
!575 = distinct !DILexicalBlock(scope: !576, file: !3, line: 120, column: 5)
!576 = distinct !DILexicalBlock(scope: !285, file: !3, line: 120, column: 5)
!577 = !DILocation(line: 120, column: 16, scope: !575)
!578 = !DILocation(line: 120, column: 5, scope: !576)
!579 = !DILocation(line: 121, column: 30, scope: !575)
!580 = !DILocation(line: 121, column: 40, scope: !575)
!581 = !DILocation(line: 122, column: 55, scope: !575)
!582 = !DILocation(line: 122, column: 59, scope: !575)
!583 = !DILocation(line: 122, column: 64, scope: !575)
!584 = !DILocation(line: 122, column: 68, scope: !575)
!585 = !DILocation(line: 121, column: 9, scope: !575)
!586 = !DILocation(line: 120, column: 23, scope: !575)
!587 = !DILocation(line: 120, column: 5, scope: !575)
!588 = distinct !{!588, !578, !589, !492}
!589 = !DILocation(line: 122, column: 73, scope: !576)
!590 = !DILocation(line: 124, column: 11, scope: !591)
!591 = distinct !DILexicalBlock(scope: !285, file: !3, line: 124, column: 9)
!592 = !DILocation(line: 124, column: 20, scope: !591)
!593 = !DILocation(line: 124, column: 26, scope: !591)
!594 = !DILocation(line: 124, column: 9, scope: !285)
!595 = !DILocation(line: 125, column: 9, scope: !591)
!596 = !DILocation(line: 127, column: 23, scope: !285)
!597 = !DILocation(line: 127, column: 33, scope: !285)
!598 = !DILocation(line: 127, column: 5, scope: !285)
!599 = !DILocation(line: 128, column: 23, scope: !285)
!600 = !DILocation(line: 128, column: 33, scope: !285)
!601 = !DILocation(line: 128, column: 5, scope: !285)
!602 = !DILocation(line: 130, column: 15, scope: !603)
!603 = distinct !DILexicalBlock(scope: !285, file: !3, line: 130, column: 5)
!604 = !DILocation(line: 130, column: 24, scope: !603)
!605 = !DILocation(line: 130, column: 34, scope: !603)
!606 = !DILocation(line: 130, column: 13, scope: !603)
!607 = !DILocation(line: 130, column: 10, scope: !603)
!608 = !DILocation(line: 130, column: 40, scope: !609)
!609 = distinct !DILexicalBlock(scope: !603, file: !3, line: 130, column: 5)
!610 = !DILocation(line: 130, column: 44, scope: !609)
!611 = !DILocation(line: 130, column: 5, scope: !603)
!612 = !DILocation(line: 131, column: 30, scope: !609)
!613 = !DILocation(line: 131, column: 40, scope: !609)
!614 = !DILocation(line: 132, column: 55, scope: !609)
!615 = !DILocation(line: 132, column: 59, scope: !609)
!616 = !DILocation(line: 132, column: 64, scope: !609)
!617 = !DILocation(line: 132, column: 68, scope: !609)
!618 = !DILocation(line: 131, column: 9, scope: !609)
!619 = !DILocation(line: 130, column: 51, scope: !609)
!620 = !DILocation(line: 130, column: 5, scope: !609)
!621 = distinct !{!621, !611, !622, !492}
!622 = !DILocation(line: 132, column: 73, scope: !603)
!623 = !DILabel(scope: !285, name: "end", file: !3, line: 134)
!624 = !DILocation(line: 134, column: 1, scope: !285)
!625 = !DILocation(line: 135, column: 5, scope: !285)
!626 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 191, type: !627, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !226, retainedNodes: !286)
!627 = !DISubroutineType(types: !628)
!628 = !{!34, !34, !353}
!629 = !DILocalVariable(name: "argc", arg: 1, scope: !626, file: !3, line: 191, type: !34)
!630 = !DILocation(line: 191, column: 10, scope: !626)
!631 = !DILocalVariable(name: "argv", arg: 2, scope: !626, file: !3, line: 191, type: !353)
!632 = !DILocation(line: 191, column: 22, scope: !626)
!633 = !DILocalVariable(name: "l", scope: !626, file: !3, line: 193, type: !87)
!634 = !DILocation(line: 193, column: 12, scope: !626)
!635 = !DILocalVariable(name: "c", scope: !626, file: !3, line: 194, type: !131)
!636 = !DILocation(line: 194, column: 19, scope: !626)
!637 = !DILocalVariable(name: "root", scope: !626, file: !3, line: 195, type: !52)
!638 = !DILocation(line: 195, column: 11, scope: !626)
!639 = !DILocation(line: 195, column: 18, scope: !626)
!640 = !DILocalVariable(name: "exit_status", scope: !626, file: !3, line: 196, type: !34)
!641 = !DILocation(line: 196, column: 9, scope: !626)
!642 = !DILocation(line: 198, column: 10, scope: !626)
!643 = !DILocation(line: 198, column: 9, scope: !626)
!644 = !DILocation(line: 199, column: 18, scope: !626)
!645 = !DILocation(line: 199, column: 7, scope: !626)
!646 = !DILocation(line: 199, column: 16, scope: !626)
!647 = !DILocation(line: 201, column: 24, scope: !626)
!648 = !DILocation(line: 201, column: 30, scope: !626)
!649 = !DILocation(line: 201, column: 13, scope: !626)
!650 = !DILocation(line: 201, column: 5, scope: !626)
!651 = !DILocation(line: 203, column: 9, scope: !652)
!652 = distinct !DILexicalBlock(scope: !626, file: !3, line: 201, column: 48)
!653 = !DILocation(line: 204, column: 9, scope: !652)
!654 = !DILocalVariable(name: "map", scope: !652, file: !3, line: 206, type: !655)
!655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !656, size: 1152, elements: !159)
!656 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_url_map_t", file: !7, line: 109, baseType: !658)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_url_map_t_", file: !7, line: 236, size: 576, elements: !659)
!659 = !{!660, !662, !663, !664, !665, !667, !687, !688}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !658, file: !7, line: 237, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !658, file: !7, line: 238, baseType: !111, size: 64, offset: 64)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !658, file: !7, line: 240, baseType: !205, size: 64, offset: 128)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !658, file: !7, line: 241, baseType: !55, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !658, file: !7, line: 242, baseType: !666, size: 32, offset: 256)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !7, line: 143, baseType: !234)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !658, file: !7, line: 244, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !670)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !7, line: 104, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !7, line: 227, size: 384, elements: !672)
!672 = !{!673, !674, !678, !684, !685, !686}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !671, file: !7, line: 228, baseType: !205, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !671, file: !7, line: 229, baseType: !675, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{!111, !111}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !671, file: !7, line: 230, baseType: !679, size: 64, offset: 128)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!111, !682}
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !671, file: !7, line: 231, baseType: !115, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !671, file: !7, line: 232, baseType: !661, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !671, file: !7, line: 233, baseType: !666, size: 32, offset: 320)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !658, file: !7, line: 245, baseType: !111, size: 64, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !658, file: !7, line: 250, baseType: !689, size: 128, offset: 448)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !658, file: !7, line: 247, size: 128, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !689, file: !7, line: 248, baseType: !52, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !689, file: !7, line: 249, baseType: !52, size: 64, offset: 64)
!693 = !DILocation(line: 206, column: 30, scope: !652)
!694 = !DILocation(line: 206, column: 38, scope: !652)
!695 = !DILocation(line: 207, column: 13, scope: !652)
!696 = !DILocation(line: 207, column: 30, scope: !652)
!697 = !DILocation(line: 210, column: 30, scope: !652)
!698 = !DILocation(line: 210, column: 9, scope: !652)
!699 = !DILocation(line: 211, column: 9, scope: !652)
!700 = !DILocation(line: 213, column: 9, scope: !652)
!701 = !DILocation(line: 214, column: 9, scope: !652)
!702 = !DILocation(line: 216, column: 21, scope: !652)
!703 = !DILocation(line: 217, column: 9, scope: !652)
!704 = !DILocation(line: 220, column: 5, scope: !626)
!705 = !DILocation(line: 221, column: 5, scope: !626)
!706 = !DILabel(scope: !626, name: "out", file: !3, line: 223)
!707 = !DILocation(line: 223, column: 1, scope: !626)
!708 = !DILocation(line: 225, column: 10, scope: !626)
!709 = !DILocation(line: 225, column: 5, scope: !626)
!710 = !DILocation(line: 226, column: 12, scope: !626)
!711 = !DILocation(line: 226, column: 5, scope: !626)
!712 = !DILocation(line: 228, column: 12, scope: !626)
!713 = !DILocation(line: 228, column: 5, scope: !626)
!714 = !DILocalVariable(name: "argc", arg: 1, scope: !350, file: !3, line: 139, type: !34)
!715 = !DILocation(line: 139, column: 16, scope: !350)
!716 = !DILocalVariable(name: "argv", arg: 2, scope: !350, file: !3, line: 139, type: !353)
!717 = !DILocation(line: 139, column: 28, scope: !350)
!718 = !DILocalVariable(name: "config", arg: 3, scope: !350, file: !3, line: 139, type: !354)
!719 = !DILocation(line: 139, column: 51, scope: !350)
!720 = !DILocalVariable(name: "root", arg: 4, scope: !350, file: !3, line: 139, type: !353)
!721 = !DILocation(line: 139, column: 66, scope: !350)
!722 = !DILocalVariable(name: "c", scope: !350, file: !3, line: 147, type: !34)
!723 = !DILocation(line: 147, column: 7, scope: !350)
!724 = !DILocalVariable(name: "optidx", scope: !350, file: !3, line: 147, type: !34)
!725 = !DILocation(line: 147, column: 10, scope: !350)
!726 = !DILocalVariable(name: "result", scope: !350, file: !3, line: 148, type: !229)
!727 = !DILocation(line: 148, column: 13, scope: !350)
!728 = !DILocation(line: 150, column: 3, scope: !350)
!729 = !DILocation(line: 150, column: 27, scope: !350)
!730 = !DILocation(line: 150, column: 33, scope: !350)
!731 = !DILocation(line: 150, column: 15, scope: !350)
!732 = !DILocation(line: 150, column: 13, scope: !350)
!733 = !DILocation(line: 150, column: 64, scope: !350)
!734 = !DILocation(line: 151, column: 13, scope: !735)
!735 = distinct !DILexicalBlock(scope: !350, file: !3, line: 150, column: 71)
!736 = !DILocation(line: 151, column: 5, scope: !735)
!737 = !DILocation(line: 153, column: 12, scope: !738)
!738 = distinct !DILexicalBlock(scope: !735, file: !3, line: 151, column: 16)
!739 = !DILocation(line: 153, column: 20, scope: !738)
!740 = !DILocation(line: 153, column: 7, scope: !738)
!741 = !DILocation(line: 154, column: 33, scope: !738)
!742 = !DILocation(line: 154, column: 26, scope: !738)
!743 = !DILocation(line: 154, column: 7, scope: !738)
!744 = !DILocation(line: 154, column: 15, scope: !738)
!745 = !DILocation(line: 154, column: 24, scope: !738)
!746 = !DILocation(line: 155, column: 14, scope: !738)
!747 = !DILocation(line: 156, column: 7, scope: !738)
!748 = !DILocation(line: 159, column: 13, scope: !738)
!749 = !DILocation(line: 159, column: 12, scope: !738)
!750 = !DILocation(line: 159, column: 7, scope: !738)
!751 = !DILocation(line: 160, column: 22, scope: !738)
!752 = !DILocation(line: 160, column: 15, scope: !738)
!753 = !DILocation(line: 160, column: 8, scope: !738)
!754 = !DILocation(line: 160, column: 13, scope: !738)
!755 = !DILocation(line: 161, column: 14, scope: !738)
!756 = !DILocation(line: 162, column: 7, scope: !738)
!757 = !DILocation(line: 165, column: 56, scope: !738)
!758 = !DILocation(line: 165, column: 7, scope: !738)
!759 = !DILocation(line: 166, column: 7, scope: !738)
!760 = !DILocation(line: 169, column: 79, scope: !738)
!761 = !DILocation(line: 169, column: 7, scope: !738)
!762 = !DILocation(line: 170, column: 7, scope: !738)
!763 = !DILocation(line: 171, column: 7, scope: !738)
!764 = !DILocation(line: 172, column: 7, scope: !738)
!765 = !DILocation(line: 173, column: 7, scope: !738)
!766 = !DILocation(line: 174, column: 7, scope: !738)
!767 = !DILocation(line: 175, column: 61, scope: !738)
!768 = !DILocation(line: 175, column: 69, scope: !738)
!769 = !DILocation(line: 175, column: 7, scope: !738)
!770 = !DILocation(line: 176, column: 7, scope: !738)
!771 = !DILocation(line: 177, column: 7, scope: !738)
!772 = !DILocation(line: 178, column: 7, scope: !738)
!773 = !DILocation(line: 179, column: 75, scope: !738)
!774 = !DILocation(line: 179, column: 7, scope: !738)
!775 = !DILocation(line: 180, column: 69, scope: !738)
!776 = !DILocation(line: 180, column: 7, scope: !738)
!777 = !DILocation(line: 181, column: 7, scope: !738)
!778 = !DILocation(line: 182, column: 7, scope: !738)
!779 = !DILocation(line: 183, column: 7, scope: !738)
!780 = distinct !{!780, !728, !781, !492}
!781 = !DILocation(line: 185, column: 3, scope: !350)
!782 = !DILocation(line: 187, column: 10, scope: !350)
!783 = !DILocation(line: 187, column: 3, scope: !350)
!784 = !DILocation(line: 188, column: 1, scope: !350)
