; ModuleID = '/home/raj/lwan/common/lwan.c'
source_filename = "/home/raj/lwan/common/lwan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_config_t_ = type { ptr, i16, i8, i8, i32, i16 }
%struct.lwan_t_ = type { %struct.lwan_trie_t_, ptr, %struct.anon.0, ptr, %struct.lwan_config_t_, i32 }
%struct.lwan_trie_t_ = type { ptr, ptr }
%struct.anon.0 = type { ptr, i32, i16 }
%struct.lwan_url_map_t_ = type { ptr, ptr, ptr, i64, i32, ptr, ptr, %struct.anon.6 }
%struct.anon.6 = type { ptr, ptr }
%struct.lwan_module_t_ = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.config_t_ = type { ptr, i32, ptr }
%struct.config_line_t_ = type { %union.anon.8, i32, [1024 x i8] }
%union.anon.8 = type { %struct.anon.9 }
%struct.anon.9 = type { ptr, ptr }
%struct.anon.10 = type { ptr, ptr }
%struct.rlimit = type { i64, i64 }
%union.__SOCKADDR_ARG = type { ptr }
%struct.lwan_thread_t_ = type { ptr, %struct.anon, i32, [2 x i32], i64 }
%struct.anon = type { [30 x i8], [30 x i8], i64 }

@.str = private unnamed_addr constant [29 x i8] c"/home/raj/lwan/common/lwan.c\00", align 1, !dbg !0
@__FUNCTION__.lwan_set_url_map = private unnamed_addr constant [17 x i8] c"lwan_set_url_map\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [26 x i8] c"Could not initialize trie\00", align 1, !dbg !13
@.str.2 = private unnamed_addr constant [15 x i8] c"/proc/self/exe\00", align 1, !dbg !18
@.str.3 = private unnamed_addr constant [8 x i8] c"%s.conf\00", align 1, !dbg !23
@.str.4 = private unnamed_addr constant [10 x i8] c"lwan.conf\00", align 1, !dbg !28
@default_config = internal constant %struct.lwan_config_t_ { ptr @.str.17, i16 15, i8 0, i8 0, i32 604800, i16 0 }, align 8, !dbg !33
@__FUNCTION__.lwan_init_with_config = private unnamed_addr constant [22 x i8] c"lwan_init_with_config\00", align 1, !dbg !364
@.str.5 = private unnamed_addr constant [43 x i8] c"Could not read config file, using defaults\00", align 1, !dbg !369
@.str.6 = private unnamed_addr constant [29 x i8] c"Initializing lwan web server\00", align 1, !dbg !374
@.str.7 = private unnamed_addr constant [48 x i8] c"Using %d threads, maximum %d sockets per thread\00", align 1, !dbg !376
@__FUNCTION__.lwan_shutdown = private unnamed_addr constant [14 x i8] c"lwan_shutdown\00", align 1, !dbg !381
@.str.8 = private unnamed_addr constant [14 x i8] c"Shutting down\00", align 1, !dbg !386
@.str.9 = private unnamed_addr constant [27 x i8] c"Shutting down URL handlers\00", align 1, !dbg !389
@main_socket = internal global i32 -1, align 4, !dbg !580
@.str.10 = private unnamed_addr constant [18 x i8] c"main_socket == -1\00", align 1, !dbg !394
@__PRETTY_FUNCTION__.lwan_main_loop = private unnamed_addr constant [30 x i8] c"void lwan_main_loop(lwan_t *)\00", align 1, !dbg !399
@__FUNCTION__.lwan_main_loop = private unnamed_addr constant [15 x i8] c"lwan_main_loop\00", align 1, !dbg !404
@.str.11 = private unnamed_addr constant [29 x i8] c"Could not set signal handler\00", align 1, !dbg !407
@.str.12 = private unnamed_addr constant [15 x i8] c"Ready to serve\00", align 1, !dbg !409
@.str.13 = private unnamed_addr constant [7 x i8] c"accept\00", align 1, !dbg !411
@.str.14 = private unnamed_addr constant [30 x i8] c"Signal 2 (Interrupt) received\00", align 1, !dbg !416
@.str.15 = private unnamed_addr constant [39 x i8] c"Main socket closed for unknown reasons\00", align 1, !dbg !419
@__FUNCTION__.add_url_map = private unnamed_addr constant [12 x i8] c"add_url_map\00", align 1, !dbg !424
@.str.16 = private unnamed_addr constant [23 x i8] c"Could not copy URL map\00", align 1, !dbg !429
@.str.17 = private unnamed_addr constant [15 x i8] c"localhost:8080\00", align 1, !dbg !434
@__FUNCTION__.lwan_module_init = private unnamed_addr constant [17 x i8] c"lwan_module_init\00", align 1, !dbg !436
@.str.18 = private unnamed_addr constant [29 x i8] c"Initializing module registry\00", align 1, !dbg !438
@__FUNCTION__.lwan_module_register = private unnamed_addr constant [21 x i8] c"lwan_module_register\00", align 1, !dbg !440
@.str.19 = private unnamed_addr constant [25 x i8] c"Module at %p has no name\00", align 1, !dbg !445
@.str.20 = private unnamed_addr constant [24 x i8] c"Registering module \22%s\22\00", align 1, !dbg !450
@__FUNCTION__.setup_from_config = private unnamed_addr constant [18 x i8] c"setup_from_config\00", align 1, !dbg !455
@.str.21 = private unnamed_addr constant [31 x i8] c"Loading configuration file: %s\00", align 1, !dbg !458
@.str.22 = private unnamed_addr constant [19 x i8] c"keep_alive_timeout\00", align 1, !dbg !463
@.str.23 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1, !dbg !468
@.str.24 = private unnamed_addr constant [11 x i8] c"reuse_port\00", align 1, !dbg !473
@.str.25 = private unnamed_addr constant [8 x i8] c"expires\00", align 1, !dbg !478
@.str.26 = private unnamed_addr constant [8 x i8] c"threads\00", align 1, !dbg !480
@.str.27 = private unnamed_addr constant [30 x i8] c"Invalid number of threads: %d\00", align 1, !dbg !482
@.str.28 = private unnamed_addr constant [23 x i8] c"Unknown config key: %s\00", align 1, !dbg !484
@.str.29 = private unnamed_addr constant [9 x i8] c"listener\00", align 1, !dbg !486
@.str.30 = private unnamed_addr constant [25 x i8] c"Unknown section type: %s\00", align 1, !dbg !491
@.str.31 = private unnamed_addr constant [28 x i8] c"Only one listener supported\00", align 1, !dbg !493
@.str.32 = private unnamed_addr constant [23 x i8] c"Unexpected section end\00", align 1, !dbg !498
@.str.33 = private unnamed_addr constant [39 x i8] c"Error on config file \22%s\22, line %d: %s\00", align 1, !dbg !500
@.str.34 = private unnamed_addr constant [25 x i8] c"Expecting prefix section\00", align 1, !dbg !502
@.str.35 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1, !dbg !504
@.str.36 = private unnamed_addr constant [45 x i8] c"Invalid section name or module not found: %s\00", align 1, !dbg !506
@.str.37 = private unnamed_addr constant [45 x i8] c"Expecting section end while parsing listener\00", align 1, !dbg !511
@.str.38 = private unnamed_addr constant [7 x i8] c"module\00", align 1, !dbg !513
@.str.39 = private unnamed_addr constant [25 x i8] c"Module already specified\00", align 1, !dbg !515
@.str.40 = private unnamed_addr constant [27 x i8] c"Could not find module \22%s\22\00", align 1, !dbg !517
@.str.41 = private unnamed_addr constant [8 x i8] c"handler\00", align 1, !dbg !519
@.str.42 = private unnamed_addr constant [28 x i8] c"Could not find handler \22%s\22\00", align 1, !dbg !521
@.str.43 = private unnamed_addr constant [14 x i8] c"authorization\00", align 1, !dbg !523
@.str.44 = private unnamed_addr constant [27 x i8] c"Unknown section type: \22%s\22\00", align 1, !dbg !525
@.str.45 = private unnamed_addr constant [43 x i8] c"Expecting section end while parsing prefix\00", align 1, !dbg !527
@.str.46 = private unnamed_addr constant [26 x i8] c"Missing module or handler\00", align 1, !dbg !529
@.str.47 = private unnamed_addr constant [42 x i8] c"Handler and module are mutually exclusive\00", align 1, !dbg !531
@.str.48 = private unnamed_addr constant [16 x i8] c"Invalid handler\00", align 1, !dbg !536
@.str.49 = private unnamed_addr constant [6 x i8] c"basic\00", align 1, !dbg !541
@.str.50 = private unnamed_addr constant [35 x i8] c"Only basic authorization supported\00", align 1, !dbg !543
@.str.51 = private unnamed_addr constant [6 x i8] c"realm\00", align 1, !dbg !548
@.str.52 = private unnamed_addr constant [14 x i8] c"password file\00", align 1, !dbg !550
@.str.53 = private unnamed_addr constant [23 x i8] c"Unexpected section: %s\00", align 1, !dbg !552
@.str.54 = private unnamed_addr constant [5 x i8] c"Lwan\00", align 1, !dbg !554
@.str.55 = private unnamed_addr constant [9 x i8] c"htpasswd\00", align 1, !dbg !559
@__FUNCTION__.get_number_of_cpus = private unnamed_addr constant [19 x i8] c"get_number_of_cpus\00", align 1, !dbg !561
@.str.56 = private unnamed_addr constant [52 x i8] c"Could not get number of online CPUs, assuming 1 CPU\00", align 1, !dbg !564
@__FUNCTION__.setup_open_file_count_limits = private unnamed_addr constant [29 x i8] c"setup_open_file_count_limits\00", align 1, !dbg !569
@.str.57 = private unnamed_addr constant [10 x i8] c"getrlimit\00", align 1, !dbg !572
@.str.58 = private unnamed_addr constant [10 x i8] c"setrlimit\00", align 1, !dbg !574
@__FUNCTION__.allocate_connections = private unnamed_addr constant [21 x i8] c"allocate_connections\00", align 1, !dbg !576
@.str.59 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1, !dbg !578

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_set_url_map(ptr noundef %0, ptr noundef %1) #0 !dbg !605 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !804, metadata !DIExpression()), !dbg !805
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !806, metadata !DIExpression()), !dbg !807
  %6 = load ptr, ptr %3, align 8, !dbg !808
  %7 = getelementptr inbounds %struct.lwan_t_, ptr %6, i32 0, i32 0, !dbg !809
  call void @lwan_trie_destroy(ptr noundef %7), !dbg !810
  %8 = load ptr, ptr %3, align 8, !dbg !811
  %9 = getelementptr inbounds %struct.lwan_t_, ptr %8, i32 0, i32 0, !dbg !811
  %10 = call zeroext i1 @lwan_trie_init(ptr noundef %9, ptr noundef @destroy_urlmap), !dbg !811
  %11 = xor i1 %10, true, !dbg !811
  %12 = zext i1 %11 to i32, !dbg !811
  %13 = sext i32 %12 to i64, !dbg !811
  %14 = icmp ne i64 %13, 0, !dbg !811
  br i1 %14, label %15, label %16, !dbg !813

15:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 253, ptr noundef @__FUNCTION__.lwan_set_url_map, ptr noundef @.str.1) #12, !dbg !814
  unreachable, !dbg !814

16:                                               ; preds = %2
  br label %17, !dbg !815

17:                                               ; preds = %76, %16
  %18 = load ptr, ptr %4, align 8, !dbg !816
  %19 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %18, i32 0, i32 2, !dbg !819
  %20 = load ptr, ptr %19, align 8, !dbg !819
  %21 = icmp ne ptr %20, null, !dbg !820
  br i1 %21, label %22, label %79, !dbg !820

22:                                               ; preds = %17
  call void @llvm.dbg.declare(metadata ptr %5, metadata !821, metadata !DIExpression()), !dbg !824
  %23 = load ptr, ptr %3, align 8, !dbg !825
  %24 = getelementptr inbounds %struct.lwan_t_, ptr %23, i32 0, i32 0, !dbg !826
  %25 = load ptr, ptr %4, align 8, !dbg !827
  %26 = call ptr @add_url_map(ptr noundef %24, ptr noundef null, ptr noundef %25), !dbg !828
  store ptr %26, ptr %5, align 8, !dbg !824
  %27 = load ptr, ptr %5, align 8, !dbg !829
  %28 = icmp ne ptr %27, null, !dbg !829
  %29 = xor i1 %28, true, !dbg !829
  %30 = zext i1 %29 to i32, !dbg !829
  %31 = sext i32 %30 to i64, !dbg !829
  %32 = icmp ne i64 %31, 0, !dbg !829
  br i1 %32, label %33, label %34, !dbg !831

33:                                               ; preds = %22
  br label %76, !dbg !832

34:                                               ; preds = %22
  %35 = load ptr, ptr %5, align 8, !dbg !833
  %36 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %35, i32 0, i32 5, !dbg !835
  %37 = load ptr, ptr %36, align 8, !dbg !835
  %38 = icmp ne ptr %37, null, !dbg !833
  br i1 %38, label %39, label %72, !dbg !836

39:                                               ; preds = %34
  %40 = load ptr, ptr %5, align 8, !dbg !837
  %41 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %40, i32 0, i32 5, !dbg !838
  %42 = load ptr, ptr %41, align 8, !dbg !838
  %43 = getelementptr inbounds %struct.lwan_module_t_, ptr %42, i32 0, i32 1, !dbg !839
  %44 = load ptr, ptr %43, align 8, !dbg !839
  %45 = icmp ne ptr %44, null, !dbg !837
  br i1 %45, label %46, label %72, !dbg !840

46:                                               ; preds = %39
  %47 = load ptr, ptr %5, align 8, !dbg !841
  %48 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %47, i32 0, i32 5, !dbg !843
  %49 = load ptr, ptr %48, align 8, !dbg !843
  %50 = getelementptr inbounds %struct.lwan_module_t_, ptr %49, i32 0, i32 1, !dbg !844
  %51 = load ptr, ptr %50, align 8, !dbg !844
  %52 = load ptr, ptr %5, align 8, !dbg !845
  %53 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %52, i32 0, i32 6, !dbg !846
  %54 = load ptr, ptr %53, align 8, !dbg !846
  %55 = call ptr %51(ptr noundef %54), !dbg !841
  %56 = load ptr, ptr %5, align 8, !dbg !847
  %57 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %56, i32 0, i32 1, !dbg !848
  store ptr %55, ptr %57, align 8, !dbg !849
  %58 = load ptr, ptr %5, align 8, !dbg !850
  %59 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %58, i32 0, i32 5, !dbg !851
  %60 = load ptr, ptr %59, align 8, !dbg !851
  %61 = getelementptr inbounds %struct.lwan_module_t_, ptr %60, i32 0, i32 5, !dbg !852
  %62 = load i32, ptr %61, align 8, !dbg !852
  %63 = load ptr, ptr %5, align 8, !dbg !853
  %64 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %63, i32 0, i32 4, !dbg !854
  store i32 %62, ptr %64, align 8, !dbg !855
  %65 = load ptr, ptr %5, align 8, !dbg !856
  %66 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %65, i32 0, i32 5, !dbg !857
  %67 = load ptr, ptr %66, align 8, !dbg !857
  %68 = getelementptr inbounds %struct.lwan_module_t_, ptr %67, i32 0, i32 4, !dbg !858
  %69 = load ptr, ptr %68, align 8, !dbg !858
  %70 = load ptr, ptr %5, align 8, !dbg !859
  %71 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %70, i32 0, i32 0, !dbg !860
  store ptr %69, ptr %71, align 8, !dbg !861
  br label %75, !dbg !862

72:                                               ; preds = %39, %34
  %73 = load ptr, ptr %5, align 8, !dbg !863
  %74 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %73, i32 0, i32 4, !dbg !865
  store i32 31, ptr %74, align 8, !dbg !866
  br label %75

75:                                               ; preds = %72, %46
  br label %76, !dbg !867

76:                                               ; preds = %75, %33
  %77 = load ptr, ptr %4, align 8, !dbg !868
  %78 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %77, i32 1, !dbg !868
  store ptr %78, ptr %4, align 8, !dbg !868
  br label %17, !dbg !869, !llvm.loop !870

79:                                               ; preds = %17
  ret void, !dbg !873
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @lwan_trie_destroy(ptr noundef) #2

declare zeroext i1 @lwan_trie_init(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_urlmap(ptr noundef %0) #0 !dbg !874 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !875, metadata !DIExpression()), !dbg !876
  call void @llvm.dbg.declare(metadata ptr %3, metadata !877, metadata !DIExpression()), !dbg !878
  %5 = load ptr, ptr %2, align 8, !dbg !879
  store ptr %5, ptr %3, align 8, !dbg !878
  %6 = load ptr, ptr %3, align 8, !dbg !880
  %7 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %6, i32 0, i32 5, !dbg !882
  %8 = load ptr, ptr %7, align 8, !dbg !882
  %9 = icmp ne ptr %8, null, !dbg !880
  br i1 %9, label %10, label %26, !dbg !883

10:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %4, metadata !884, metadata !DIExpression()), !dbg !886
  %11 = load ptr, ptr %3, align 8, !dbg !887
  %12 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %11, i32 0, i32 5, !dbg !888
  %13 = load ptr, ptr %12, align 8, !dbg !888
  store ptr %13, ptr %4, align 8, !dbg !886
  %14 = load ptr, ptr %4, align 8, !dbg !889
  %15 = getelementptr inbounds %struct.lwan_module_t_, ptr %14, i32 0, i32 3, !dbg !891
  %16 = load ptr, ptr %15, align 8, !dbg !891
  %17 = icmp ne ptr %16, null, !dbg !889
  br i1 %17, label %18, label %25, !dbg !892

18:                                               ; preds = %10
  %19 = load ptr, ptr %4, align 8, !dbg !893
  %20 = getelementptr inbounds %struct.lwan_module_t_, ptr %19, i32 0, i32 3, !dbg !894
  %21 = load ptr, ptr %20, align 8, !dbg !894
  %22 = load ptr, ptr %3, align 8, !dbg !895
  %23 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %22, i32 0, i32 1, !dbg !896
  %24 = load ptr, ptr %23, align 8, !dbg !896
  call void %21(ptr noundef %24), !dbg !893
  br label %25, !dbg !893

25:                                               ; preds = %18, %10
  br label %36, !dbg !897

26:                                               ; preds = %1
  %27 = load ptr, ptr %3, align 8, !dbg !898
  %28 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %27, i32 0, i32 1, !dbg !900
  %29 = load ptr, ptr %28, align 8, !dbg !900
  %30 = icmp ne ptr %29, null, !dbg !898
  br i1 %30, label %31, label %35, !dbg !901

31:                                               ; preds = %26
  %32 = load ptr, ptr %3, align 8, !dbg !902
  %33 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %32, i32 0, i32 1, !dbg !904
  %34 = load ptr, ptr %33, align 8, !dbg !904
  call void @hash_free(ptr noundef %34), !dbg !905
  br label %35, !dbg !906

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %25
  %37 = load ptr, ptr %3, align 8, !dbg !907
  %38 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %37, i32 0, i32 7, !dbg !908
  %39 = getelementptr inbounds %struct.anon.6, ptr %38, i32 0, i32 0, !dbg !909
  %40 = load ptr, ptr %39, align 8, !dbg !909
  call void @free(ptr noundef %40) #13, !dbg !910
  %41 = load ptr, ptr %3, align 8, !dbg !911
  %42 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %41, i32 0, i32 7, !dbg !912
  %43 = getelementptr inbounds %struct.anon.6, ptr %42, i32 0, i32 1, !dbg !913
  %44 = load ptr, ptr %43, align 8, !dbg !913
  call void @free(ptr noundef %44) #13, !dbg !914
  %45 = load ptr, ptr %3, align 8, !dbg !915
  %46 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %45, i32 0, i32 2, !dbg !916
  %47 = load ptr, ptr %46, align 8, !dbg !916
  call void @free(ptr noundef %47) #13, !dbg !917
  %48 = load ptr, ptr %3, align 8, !dbg !918
  call void @free(ptr noundef %48) #13, !dbg !919
  ret void, !dbg !920
}

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @add_url_map(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !921 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !925, metadata !DIExpression()), !dbg !926
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !927, metadata !DIExpression()), !dbg !928
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !929, metadata !DIExpression()), !dbg !930
  call void @llvm.dbg.declare(metadata ptr %7, metadata !931, metadata !DIExpression()), !dbg !932
  %8 = call noalias ptr @malloc(i64 noundef 72) #14, !dbg !933
  store ptr %8, ptr %7, align 8, !dbg !932
  %9 = load ptr, ptr %7, align 8, !dbg !934
  %10 = icmp ne ptr %9, null, !dbg !934
  br i1 %10, label %12, label %11, !dbg !936

11:                                               ; preds = %3
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 111, ptr noundef @__FUNCTION__.add_url_map, ptr noundef @.str.16) #12, !dbg !937
  unreachable, !dbg !937

12:                                               ; preds = %3
  %13 = load ptr, ptr %7, align 8, !dbg !938
  %14 = load ptr, ptr %6, align 8, !dbg !939
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %13, ptr align 8 %14, i64 72, i1 false), !dbg !940
  %15 = load ptr, ptr %5, align 8, !dbg !941
  %16 = icmp ne ptr %15, null, !dbg !941
  br i1 %16, label %17, label %19, !dbg !941

17:                                               ; preds = %12
  %18 = load ptr, ptr %5, align 8, !dbg !942
  br label %23, !dbg !941

19:                                               ; preds = %12
  %20 = load ptr, ptr %7, align 8, !dbg !943
  %21 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %20, i32 0, i32 2, !dbg !944
  %22 = load ptr, ptr %21, align 8, !dbg !944
  br label %23, !dbg !941

23:                                               ; preds = %19, %17
  %24 = phi ptr [ %18, %17 ], [ %22, %19 ], !dbg !941
  %25 = call noalias ptr @strdup(ptr noundef %24) #13, !dbg !945
  %26 = load ptr, ptr %7, align 8, !dbg !946
  %27 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %26, i32 0, i32 2, !dbg !947
  store ptr %25, ptr %27, align 8, !dbg !948
  %28 = load ptr, ptr %7, align 8, !dbg !949
  %29 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %28, i32 0, i32 2, !dbg !950
  %30 = load ptr, ptr %29, align 8, !dbg !950
  %31 = call i64 @strlen(ptr noundef %30) #15, !dbg !951
  %32 = load ptr, ptr %7, align 8, !dbg !952
  %33 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %32, i32 0, i32 3, !dbg !953
  store i64 %31, ptr %33, align 8, !dbg !954
  %34 = load ptr, ptr %4, align 8, !dbg !955
  %35 = load ptr, ptr %7, align 8, !dbg !956
  %36 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %35, i32 0, i32 2, !dbg !957
  %37 = load ptr, ptr %36, align 8, !dbg !957
  %38 = load ptr, ptr %7, align 8, !dbg !958
  call void @lwan_trie_add(ptr noundef %34, ptr noundef %37, ptr noundef %38), !dbg !959
  %39 = load ptr, ptr %7, align 8, !dbg !960
  ret ptr %39, !dbg !961
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @get_config_path(ptr noundef %0) #0 !dbg !962 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !965, metadata !DIExpression()), !dbg !966
  call void @llvm.dbg.declare(metadata ptr %4, metadata !967, metadata !DIExpression()), !dbg !968
  store ptr null, ptr %4, align 8, !dbg !968
  call void @llvm.dbg.declare(metadata ptr %5, metadata !969, metadata !DIExpression()), !dbg !972
  %7 = load ptr, ptr %3, align 8, !dbg !973
  %8 = call i64 @readlink(ptr noundef @.str.2, ptr noundef %7, i64 noundef 4096) #13, !dbg !974
  store i64 %8, ptr %5, align 8, !dbg !975
  %9 = load i64, ptr %5, align 8, !dbg !976
  %10 = icmp slt i64 %9, 0, !dbg !978
  br i1 %10, label %11, label %12, !dbg !979

11:                                               ; preds = %1
  br label %34, !dbg !980

12:                                               ; preds = %1
  %13 = load ptr, ptr %3, align 8, !dbg !981
  %14 = load i64, ptr %5, align 8, !dbg !982
  %15 = getelementptr inbounds i8, ptr %13, i64 %14, !dbg !981
  store i8 0, ptr %15, align 1, !dbg !983
  %16 = load ptr, ptr %3, align 8, !dbg !984
  %17 = call ptr @strrchr(ptr noundef %16, i32 noundef 47) #15, !dbg !985
  store ptr %17, ptr %4, align 8, !dbg !986
  %18 = load ptr, ptr %4, align 8, !dbg !987
  %19 = icmp ne ptr %18, null, !dbg !987
  br i1 %19, label %21, label %20, !dbg !989

20:                                               ; preds = %12
  br label %34, !dbg !990

21:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %6, metadata !991, metadata !DIExpression()), !dbg !992
  %22 = load ptr, ptr %3, align 8, !dbg !993
  %23 = load ptr, ptr %4, align 8, !dbg !994
  %24 = getelementptr inbounds i8, ptr %23, i64 1, !dbg !995
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %22, i64 noundef 4096, ptr noundef @.str.3, ptr noundef %24) #13, !dbg !996
  store i32 %25, ptr %6, align 4, !dbg !992
  %26 = load i32, ptr %6, align 4, !dbg !997
  %27 = icmp slt i32 %26, 0, !dbg !999
  br i1 %27, label %31, label %28, !dbg !1000

28:                                               ; preds = %21
  %29 = load i32, ptr %6, align 4, !dbg !1001
  %30 = icmp sge i32 %29, 4096, !dbg !1002
  br i1 %30, label %31, label %32, !dbg !1003

31:                                               ; preds = %28, %21
  br label %34, !dbg !1004

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !dbg !1005
  store ptr %33, ptr %2, align 8, !dbg !1006
  br label %35, !dbg !1006

34:                                               ; preds = %31, %20, %11
  call void @llvm.dbg.label(metadata !1007), !dbg !1008
  store ptr @.str.4, ptr %2, align 8, !dbg !1009
  br label %35, !dbg !1009

35:                                               ; preds = %34, %32
  %36 = load ptr, ptr %2, align 8, !dbg !1010
  ret ptr %36, !dbg !1010
}

; Function Attrs: nounwind
declare i64 @readlink(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_init(ptr noundef %0) #0 !dbg !1011 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1014, metadata !DIExpression()), !dbg !1015
  %3 = load ptr, ptr %2, align 8, !dbg !1016
  call void @lwan_init_with_config(ptr noundef %3, ptr noundef @default_config), !dbg !1017
  ret void, !dbg !1018
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_init_with_config(ptr noundef %0, ptr noundef %1) #0 !dbg !1019 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1023, metadata !DIExpression()), !dbg !1024
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1025, metadata !DIExpression()), !dbg !1026
  %6 = load ptr, ptr %3, align 8, !dbg !1027
  call void @llvm.memset.p0.i64(ptr align 8 %6, i8 0, i64 80, i1 false), !dbg !1028
  %7 = load ptr, ptr %3, align 8, !dbg !1029
  %8 = getelementptr inbounds %struct.lwan_t_, ptr %7, i32 0, i32 4, !dbg !1030
  %9 = load ptr, ptr %4, align 8, !dbg !1031
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %8, ptr align 8 %9, i64 24, i1 false), !dbg !1032
  %10 = load ptr, ptr %3, align 8, !dbg !1033
  call void @lwan_status_init(ptr noundef %10), !dbg !1034
  call void @lwan_job_thread_init(), !dbg !1035
  call void @lwan_response_init(), !dbg !1036
  call void @lwan_tables_init(), !dbg !1037
  %11 = load ptr, ptr %3, align 8, !dbg !1038
  call void @lwan_module_init(ptr noundef %11), !dbg !1039
  %12 = load ptr, ptr %3, align 8, !dbg !1040
  %13 = call ptr @lwan_module_serve_files(), !dbg !1041
  call void @lwan_module_register(ptr noundef %12, ptr noundef %13), !dbg !1042
  %14 = load ptr, ptr %3, align 8, !dbg !1043
  %15 = call ptr @lwan_module_redirect(), !dbg !1044
  call void @lwan_module_register(ptr noundef %14, ptr noundef %15), !dbg !1045
  %16 = load ptr, ptr %4, align 8, !dbg !1046
  %17 = icmp eq ptr %16, @default_config, !dbg !1048
  br i1 %17, label %18, label %23, !dbg !1049

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 8, !dbg !1050
  %20 = call zeroext i1 @setup_from_config(ptr noundef %19), !dbg !1053
  br i1 %20, label %22, label %21, !dbg !1054

21:                                               ; preds = %18
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str, i32 noundef 473, ptr noundef @__FUNCTION__.lwan_init_with_config, ptr noundef @.str.5), !dbg !1055
  br label %22, !dbg !1055

22:                                               ; preds = %21, %18
  br label %23, !dbg !1056

23:                                               ; preds = %22, %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 477, ptr noundef @__FUNCTION__.lwan_init_with_config, ptr noundef @.str.6), !dbg !1057
  %24 = load ptr, ptr %3, align 8, !dbg !1058
  %25 = getelementptr inbounds %struct.lwan_t_, ptr %24, i32 0, i32 4, !dbg !1060
  %26 = getelementptr inbounds %struct.lwan_config_t_, ptr %25, i32 0, i32 5, !dbg !1061
  %27 = load i16, ptr %26, align 8, !dbg !1061
  %28 = icmp ne i16 %27, 0, !dbg !1058
  br i1 %28, label %45, label %29, !dbg !1062

29:                                               ; preds = %23
  %30 = call zeroext i16 @get_number_of_cpus(), !dbg !1063
  %31 = load ptr, ptr %3, align 8, !dbg !1065
  %32 = getelementptr inbounds %struct.lwan_t_, ptr %31, i32 0, i32 2, !dbg !1066
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i32 0, i32 2, !dbg !1067
  store i16 %30, ptr %33, align 4, !dbg !1068
  %34 = load ptr, ptr %3, align 8, !dbg !1069
  %35 = getelementptr inbounds %struct.lwan_t_, ptr %34, i32 0, i32 2, !dbg !1071
  %36 = getelementptr inbounds %struct.anon.0, ptr %35, i32 0, i32 2, !dbg !1072
  %37 = load i16, ptr %36, align 4, !dbg !1072
  %38 = zext i16 %37 to i32, !dbg !1069
  %39 = icmp eq i32 %38, 1, !dbg !1073
  br i1 %39, label %40, label %44, !dbg !1074

40:                                               ; preds = %29
  %41 = load ptr, ptr %3, align 8, !dbg !1075
  %42 = getelementptr inbounds %struct.lwan_t_, ptr %41, i32 0, i32 2, !dbg !1076
  %43 = getelementptr inbounds %struct.anon.0, ptr %42, i32 0, i32 2, !dbg !1077
  store i16 2, ptr %43, align 4, !dbg !1078
  br label %44, !dbg !1075

44:                                               ; preds = %40, %29
  br label %53, !dbg !1079

45:                                               ; preds = %23
  %46 = load ptr, ptr %3, align 8, !dbg !1080
  %47 = getelementptr inbounds %struct.lwan_t_, ptr %46, i32 0, i32 4, !dbg !1082
  %48 = getelementptr inbounds %struct.lwan_config_t_, ptr %47, i32 0, i32 5, !dbg !1083
  %49 = load i16, ptr %48, align 8, !dbg !1083
  %50 = load ptr, ptr %3, align 8, !dbg !1084
  %51 = getelementptr inbounds %struct.lwan_t_, ptr %50, i32 0, i32 2, !dbg !1085
  %52 = getelementptr inbounds %struct.anon.0, ptr %51, i32 0, i32 2, !dbg !1086
  store i16 %49, ptr %52, align 4, !dbg !1087
  br label %53

53:                                               ; preds = %45, %44
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1088, metadata !DIExpression()), !dbg !1090
  %54 = call i64 @setup_open_file_count_limits(), !dbg !1091
  store i64 %54, ptr %5, align 8, !dbg !1090
  %55 = load ptr, ptr %3, align 8, !dbg !1092
  %56 = load i64, ptr %5, align 8, !dbg !1093
  call void @allocate_connections(ptr noundef %55, i64 noundef %56), !dbg !1094
  %57 = load i64, ptr %5, align 8, !dbg !1095
  %58 = trunc i64 %57 to i32, !dbg !1096
  %59 = load ptr, ptr %3, align 8, !dbg !1097
  %60 = getelementptr inbounds %struct.lwan_t_, ptr %59, i32 0, i32 2, !dbg !1098
  %61 = getelementptr inbounds %struct.anon.0, ptr %60, i32 0, i32 2, !dbg !1099
  %62 = load i16, ptr %61, align 4, !dbg !1099
  %63 = zext i16 %62 to i32, !dbg !1100
  %64 = udiv i32 %58, %63, !dbg !1101
  %65 = load ptr, ptr %3, align 8, !dbg !1102
  %66 = getelementptr inbounds %struct.lwan_t_, ptr %65, i32 0, i32 2, !dbg !1103
  %67 = getelementptr inbounds %struct.anon.0, ptr %66, i32 0, i32 1, !dbg !1104
  store i32 %64, ptr %67, align 8, !dbg !1105
  %68 = load ptr, ptr %3, align 8, !dbg !1106
  %69 = getelementptr inbounds %struct.lwan_t_, ptr %68, i32 0, i32 2, !dbg !1106
  %70 = getelementptr inbounds %struct.anon.0, ptr %69, i32 0, i32 2, !dbg !1106
  %71 = load i16, ptr %70, align 4, !dbg !1106
  %72 = zext i16 %71 to i32, !dbg !1106
  %73 = load ptr, ptr %3, align 8, !dbg !1106
  %74 = getelementptr inbounds %struct.lwan_t_, ptr %73, i32 0, i32 2, !dbg !1106
  %75 = getelementptr inbounds %struct.anon.0, ptr %74, i32 0, i32 1, !dbg !1106
  %76 = load i32, ptr %75, align 8, !dbg !1106
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 492, ptr noundef @__FUNCTION__.lwan_init_with_config, ptr noundef @.str.7, i32 noundef %72, i32 noundef %76), !dbg !1106
  %77 = call ptr @signal(i32 noundef 13, ptr noundef inttoptr (i64 1 to ptr)) #13, !dbg !1107
  %78 = call i32 @close(i32 noundef 0), !dbg !1108
  %79 = load ptr, ptr %3, align 8, !dbg !1109
  call void @lwan_thread_init(ptr noundef %79), !dbg !1110
  %80 = load ptr, ptr %3, align 8, !dbg !1111
  call void @lwan_socket_init(ptr noundef %80), !dbg !1112
  %81 = call zeroext i1 @lwan_http_authorize_init(), !dbg !1113
  ret void, !dbg !1114
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_get_default_config() #0 !dbg !1115 {
  ret ptr @default_config, !dbg !1118
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #7

declare void @lwan_status_init(ptr noundef) #2

declare void @lwan_job_thread_init() #2

declare void @lwan_response_init() #2

declare void @lwan_tables_init() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwan_module_init(ptr noundef %0) #0 !dbg !1119 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1120, metadata !DIExpression()), !dbg !1121
  %3 = load ptr, ptr %2, align 8, !dbg !1122
  %4 = getelementptr inbounds %struct.lwan_t_, ptr %3, i32 0, i32 3, !dbg !1124
  %5 = load ptr, ptr %4, align 8, !dbg !1124
  %6 = icmp ne ptr %5, null, !dbg !1122
  br i1 %6, label %11, label %7, !dbg !1125

7:                                                ; preds = %1
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 56, ptr noundef @__FUNCTION__.lwan_module_init, ptr noundef @.str.18), !dbg !1126
  %8 = call ptr @hash_str_new(ptr noundef null, ptr noundef null), !dbg !1128
  %9 = load ptr, ptr %2, align 8, !dbg !1129
  %10 = getelementptr inbounds %struct.lwan_t_, ptr %9, i32 0, i32 3, !dbg !1130
  store ptr %8, ptr %10, align 8, !dbg !1131
  br label %11, !dbg !1132

11:                                               ; preds = %7, %1
  ret void, !dbg !1133
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwan_module_register(ptr noundef %0, ptr noundef %1) #0 !dbg !1134 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1137, metadata !DIExpression()), !dbg !1138
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1139, metadata !DIExpression()), !dbg !1140
  %5 = load ptr, ptr %4, align 8, !dbg !1141
  %6 = getelementptr inbounds %struct.lwan_module_t_, ptr %5, i32 0, i32 0, !dbg !1143
  %7 = load ptr, ptr %6, align 8, !dbg !1143
  %8 = icmp ne ptr %7, null, !dbg !1141
  br i1 %8, label %11, label %9, !dbg !1144

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !1145
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 69, ptr noundef @__FUNCTION__.lwan_module_register, ptr noundef @.str.19, ptr noundef %10) #12, !dbg !1145
  unreachable, !dbg !1145

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8, !dbg !1146
  %13 = getelementptr inbounds %struct.lwan_module_t_, ptr %12, i32 0, i32 0, !dbg !1146
  %14 = load ptr, ptr %13, align 8, !dbg !1146
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 71, ptr noundef @__FUNCTION__.lwan_module_register, ptr noundef @.str.20, ptr noundef %14), !dbg !1146
  %15 = load ptr, ptr %3, align 8, !dbg !1147
  %16 = getelementptr inbounds %struct.lwan_t_, ptr %15, i32 0, i32 3, !dbg !1148
  %17 = load ptr, ptr %16, align 8, !dbg !1148
  %18 = load ptr, ptr %4, align 8, !dbg !1149
  %19 = getelementptr inbounds %struct.lwan_module_t_, ptr %18, i32 0, i32 0, !dbg !1150
  %20 = load ptr, ptr %19, align 8, !dbg !1150
  %21 = load ptr, ptr %4, align 8, !dbg !1151
  %22 = call i32 @hash_add(ptr noundef %17, ptr noundef %20, ptr noundef %21), !dbg !1152
  ret void, !dbg !1153
}

declare ptr @lwan_module_serve_files() #2

declare ptr @lwan_module_redirect() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @setup_from_config(ptr noundef %0) #0 !dbg !1154 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca %struct.config_t_, align 8
  %5 = alloca %struct.config_line_t_, align 8
  %6 = alloca i8, align 1
  %7 = alloca [4096 x i8], align 16
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1157, metadata !DIExpression()), !dbg !1158
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1159, metadata !DIExpression()), !dbg !1218
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1219, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1243, metadata !DIExpression()), !dbg !1244
  store i8 0, ptr %6, align 1, !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1245, metadata !DIExpression()), !dbg !1249
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1250, metadata !DIExpression()), !dbg !1251
  %10 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0, !dbg !1252
  %11 = call ptr @get_config_path(ptr noundef %10), !dbg !1253
  store ptr %11, ptr %8, align 8, !dbg !1254
  %12 = load ptr, ptr %8, align 8, !dbg !1255
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 334, ptr noundef @__FUNCTION__.setup_from_config, ptr noundef @.str.21, ptr noundef %12), !dbg !1255
  %13 = load ptr, ptr %3, align 8, !dbg !1256
  %14 = getelementptr inbounds %struct.lwan_t_, ptr %13, i32 0, i32 0, !dbg !1258
  %15 = call zeroext i1 @lwan_trie_init(ptr noundef %14, ptr noundef @destroy_urlmap), !dbg !1259
  br i1 %15, label %17, label %16, !dbg !1260

16:                                               ; preds = %1
  store i1 false, ptr %2, align 1, !dbg !1261
  br label %161, !dbg !1261

17:                                               ; preds = %1
  %18 = load ptr, ptr %8, align 8, !dbg !1262
  %19 = call zeroext i1 @config_open(ptr noundef %4, ptr noundef %18), !dbg !1264
  br i1 %19, label %21, label %20, !dbg !1265

20:                                               ; preds = %17
  store i1 false, ptr %2, align 1, !dbg !1266
  br label %161, !dbg !1266

21:                                               ; preds = %17
  br label %22, !dbg !1267

22:                                               ; preds = %149, %21
  %23 = call zeroext i1 @config_read_line(ptr noundef %4, ptr noundef %5), !dbg !1268
  br i1 %23, label %24, label %150, !dbg !1267

24:                                               ; preds = %22
  %25 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 1, !dbg !1269
  %26 = load i32, ptr %25, align 8, !dbg !1269
  switch i32 %26, label %149 [
    i32 0, label %27
    i32 1, label %127
    i32 2, label %147
  ], !dbg !1271

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1272
  %29 = getelementptr inbounds %struct.anon.10, ptr %28, i32 0, i32 0, !dbg !1275
  %30 = load ptr, ptr %29, align 8, !dbg !1275
  %31 = call i32 @strcmp(ptr noundef %30, ptr noundef @.str.22) #15, !dbg !1276
  %32 = icmp ne i32 %31, 0, !dbg !1276
  br i1 %32, label %44, label %33, !dbg !1277

33:                                               ; preds = %27
  %34 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1278
  %35 = getelementptr inbounds %struct.anon.10, ptr %34, i32 0, i32 1, !dbg !1279
  %36 = load ptr, ptr %35, align 8, !dbg !1279
  %37 = load i16, ptr getelementptr inbounds (%struct.lwan_config_t_, ptr @default_config, i32 0, i32 1), align 8, !dbg !1280
  %38 = zext i16 %37 to i64, !dbg !1281
  %39 = call i64 @parse_long(ptr noundef %36, i64 noundef %38), !dbg !1282
  %40 = trunc i64 %39 to i16, !dbg !1283
  %41 = load ptr, ptr %3, align 8, !dbg !1284
  %42 = getelementptr inbounds %struct.lwan_t_, ptr %41, i32 0, i32 4, !dbg !1285
  %43 = getelementptr inbounds %struct.lwan_config_t_, ptr %42, i32 0, i32 1, !dbg !1286
  store i16 %40, ptr %43, align 8, !dbg !1287
  br label %126, !dbg !1284

44:                                               ; preds = %27
  %45 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1288
  %46 = getelementptr inbounds %struct.anon.10, ptr %45, i32 0, i32 0, !dbg !1290
  %47 = load ptr, ptr %46, align 8, !dbg !1290
  %48 = call i32 @strcmp(ptr noundef %47, ptr noundef @.str.23) #15, !dbg !1291
  %49 = icmp ne i32 %48, 0, !dbg !1291
  br i1 %49, label %61, label %50, !dbg !1292

50:                                               ; preds = %44
  %51 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1293
  %52 = getelementptr inbounds %struct.anon.10, ptr %51, i32 0, i32 1, !dbg !1294
  %53 = load ptr, ptr %52, align 8, !dbg !1294
  %54 = load i8, ptr getelementptr inbounds (%struct.lwan_config_t_, ptr @default_config, i32 0, i32 2), align 2, !dbg !1295
  %55 = trunc i8 %54 to i1, !dbg !1295
  %56 = call zeroext i1 @parse_bool(ptr noundef %53, i1 noundef zeroext %55), !dbg !1296
  %57 = load ptr, ptr %3, align 8, !dbg !1297
  %58 = getelementptr inbounds %struct.lwan_t_, ptr %57, i32 0, i32 4, !dbg !1298
  %59 = getelementptr inbounds %struct.lwan_config_t_, ptr %58, i32 0, i32 2, !dbg !1299
  %60 = zext i1 %56 to i8, !dbg !1300
  store i8 %60, ptr %59, align 2, !dbg !1300
  br label %125, !dbg !1297

61:                                               ; preds = %44
  %62 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1301
  %63 = getelementptr inbounds %struct.anon.10, ptr %62, i32 0, i32 0, !dbg !1303
  %64 = load ptr, ptr %63, align 8, !dbg !1303
  %65 = call i32 @strcmp(ptr noundef %64, ptr noundef @.str.24) #15, !dbg !1304
  %66 = icmp ne i32 %65, 0, !dbg !1304
  br i1 %66, label %78, label %67, !dbg !1305

67:                                               ; preds = %61
  %68 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1306
  %69 = getelementptr inbounds %struct.anon.10, ptr %68, i32 0, i32 1, !dbg !1307
  %70 = load ptr, ptr %69, align 8, !dbg !1307
  %71 = load i8, ptr getelementptr inbounds (%struct.lwan_config_t_, ptr @default_config, i32 0, i32 3), align 1, !dbg !1308
  %72 = trunc i8 %71 to i1, !dbg !1308
  %73 = call zeroext i1 @parse_bool(ptr noundef %70, i1 noundef zeroext %72), !dbg !1309
  %74 = load ptr, ptr %3, align 8, !dbg !1310
  %75 = getelementptr inbounds %struct.lwan_t_, ptr %74, i32 0, i32 4, !dbg !1311
  %76 = getelementptr inbounds %struct.lwan_config_t_, ptr %75, i32 0, i32 3, !dbg !1312
  %77 = zext i1 %73 to i8, !dbg !1313
  store i8 %77, ptr %76, align 1, !dbg !1313
  br label %124, !dbg !1310

78:                                               ; preds = %61
  %79 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1314
  %80 = getelementptr inbounds %struct.anon.10, ptr %79, i32 0, i32 0, !dbg !1316
  %81 = load ptr, ptr %80, align 8, !dbg !1316
  %82 = call i32 @strcmp(ptr noundef %81, ptr noundef @.str.25) #15, !dbg !1317
  %83 = icmp ne i32 %82, 0, !dbg !1317
  br i1 %83, label %93, label %84, !dbg !1318

84:                                               ; preds = %78
  %85 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1319
  %86 = getelementptr inbounds %struct.anon.10, ptr %85, i32 0, i32 1, !dbg !1320
  %87 = load ptr, ptr %86, align 8, !dbg !1320
  %88 = load i32, ptr getelementptr inbounds (%struct.lwan_config_t_, ptr @default_config, i32 0, i32 4), align 4, !dbg !1321
  %89 = call i32 @parse_time_period(ptr noundef %87, i32 noundef %88), !dbg !1322
  %90 = load ptr, ptr %3, align 8, !dbg !1323
  %91 = getelementptr inbounds %struct.lwan_t_, ptr %90, i32 0, i32 4, !dbg !1324
  %92 = getelementptr inbounds %struct.lwan_config_t_, ptr %91, i32 0, i32 4, !dbg !1325
  store i32 %89, ptr %92, align 4, !dbg !1326
  br label %123, !dbg !1323

93:                                               ; preds = %78
  %94 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1327
  %95 = getelementptr inbounds %struct.anon.10, ptr %94, i32 0, i32 0, !dbg !1329
  %96 = load ptr, ptr %95, align 8, !dbg !1329
  %97 = call i32 @strcmp(ptr noundef %96, ptr noundef @.str.26) #15, !dbg !1330
  %98 = icmp ne i32 %97, 0, !dbg !1330
  br i1 %98, label %117, label %99, !dbg !1331

99:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1332, metadata !DIExpression()), !dbg !1334
  %100 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1335
  %101 = getelementptr inbounds %struct.anon.10, ptr %100, i32 0, i32 1, !dbg !1336
  %102 = load ptr, ptr %101, align 8, !dbg !1336
  %103 = load i16, ptr getelementptr inbounds (%struct.lwan_config_t_, ptr @default_config, i32 0, i32 5), align 8, !dbg !1337
  %104 = zext i16 %103 to i64, !dbg !1338
  %105 = call i64 @parse_long(ptr noundef %102, i64 noundef %104), !dbg !1339
  store i64 %105, ptr %9, align 8, !dbg !1334
  %106 = load i64, ptr %9, align 8, !dbg !1340
  %107 = icmp slt i64 %106, 0, !dbg !1342
  br i1 %107, label %108, label %111, !dbg !1343

108:                                              ; preds = %99
  %109 = load i64, ptr %9, align 8, !dbg !1344
  %110 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %4, ptr noundef @.str.27, i64 noundef %109), !dbg !1345
  br label %111, !dbg !1345

111:                                              ; preds = %108, %99
  %112 = load i64, ptr %9, align 8, !dbg !1346
  %113 = trunc i64 %112 to i16, !dbg !1347
  %114 = load ptr, ptr %3, align 8, !dbg !1348
  %115 = getelementptr inbounds %struct.lwan_t_, ptr %114, i32 0, i32 4, !dbg !1349
  %116 = getelementptr inbounds %struct.lwan_config_t_, ptr %115, i32 0, i32 5, !dbg !1350
  store i16 %113, ptr %116, align 8, !dbg !1351
  br label %122, !dbg !1352

117:                                              ; preds = %93
  %118 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1353
  %119 = getelementptr inbounds %struct.anon.10, ptr %118, i32 0, i32 0, !dbg !1354
  %120 = load ptr, ptr %119, align 8, !dbg !1354
  %121 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %4, ptr noundef @.str.28, ptr noundef %120), !dbg !1355
  br label %122

122:                                              ; preds = %117, %111
  br label %123

123:                                              ; preds = %122, %84
  br label %124

124:                                              ; preds = %123, %67
  br label %125

125:                                              ; preds = %124, %50
  br label %126

126:                                              ; preds = %125, %33
  br label %149, !dbg !1356

127:                                              ; preds = %24
  %128 = load i8, ptr %6, align 1, !dbg !1357
  %129 = trunc i8 %128 to i1, !dbg !1357
  br i1 %129, label %144, label %130, !dbg !1359

130:                                              ; preds = %127
  store i8 1, ptr %6, align 1, !dbg !1360
  %131 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1362
  %132 = getelementptr inbounds %struct.anon.9, ptr %131, i32 0, i32 0, !dbg !1364
  %133 = load ptr, ptr %132, align 8, !dbg !1364
  %134 = call i32 @strcmp(ptr noundef %133, ptr noundef @.str.29) #15, !dbg !1365
  %135 = icmp ne i32 %134, 0, !dbg !1365
  br i1 %135, label %138, label %136, !dbg !1366

136:                                              ; preds = %130
  %137 = load ptr, ptr %3, align 8, !dbg !1367
  call void @parse_listener(ptr noundef %4, ptr noundef %5, ptr noundef %137), !dbg !1368
  br label %143, !dbg !1368

138:                                              ; preds = %130
  %139 = getelementptr inbounds %struct.config_line_t_, ptr %5, i32 0, i32 0, !dbg !1369
  %140 = getelementptr inbounds %struct.anon.9, ptr %139, i32 0, i32 0, !dbg !1370
  %141 = load ptr, ptr %140, align 8, !dbg !1370
  %142 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %4, ptr noundef @.str.30, ptr noundef %141), !dbg !1371
  br label %143

143:                                              ; preds = %138, %136
  br label %146, !dbg !1372

144:                                              ; preds = %127
  %145 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %4, ptr noundef @.str.31), !dbg !1373
  br label %146

146:                                              ; preds = %144, %143
  br label %149, !dbg !1375

147:                                              ; preds = %24
  %148 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %4, ptr noundef @.str.32), !dbg !1376
  br label %149, !dbg !1377

149:                                              ; preds = %147, %24, %146, %126
  br label %22, !dbg !1267, !llvm.loop !1378

150:                                              ; preds = %22
  %151 = getelementptr inbounds %struct.config_t_, ptr %4, i32 0, i32 2, !dbg !1380
  %152 = load ptr, ptr %151, align 8, !dbg !1380
  %153 = icmp ne ptr %152, null, !dbg !1382
  br i1 %153, label %154, label %160, !dbg !1383

154:                                              ; preds = %150
  %155 = load ptr, ptr %8, align 8, !dbg !1384
  %156 = getelementptr inbounds %struct.config_t_, ptr %4, i32 0, i32 1, !dbg !1384
  %157 = load i32, ptr %156, align 8, !dbg !1384
  %158 = getelementptr inbounds %struct.config_t_, ptr %4, i32 0, i32 2, !dbg !1384
  %159 = load ptr, ptr %158, align 8, !dbg !1384
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 384, ptr noundef @__FUNCTION__.setup_from_config, ptr noundef @.str.33, ptr noundef %155, i32 noundef %157, ptr noundef %159) #12, !dbg !1384
  unreachable, !dbg !1384

160:                                              ; preds = %150
  call void @config_close(ptr noundef %4), !dbg !1386
  store i1 true, ptr %2, align 1, !dbg !1387
  br label %161, !dbg !1387

161:                                              ; preds = %160, %20, %16
  %162 = load i1, ptr %2, align 1, !dbg !1388
  ret i1 %162, !dbg !1388
}

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @get_number_of_cpus() #0 !dbg !1389 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1392, metadata !DIExpression()), !dbg !1393
  %3 = call i64 @sysconf(i32 noundef 84) #13, !dbg !1394
  store i64 %3, ptr %2, align 8, !dbg !1393
  %4 = load i64, ptr %2, align 8, !dbg !1395
  %5 = icmp slt i64 %4, 0, !dbg !1395
  %6 = zext i1 %5 to i32, !dbg !1395
  %7 = sext i32 %6 to i64, !dbg !1395
  %8 = icmp ne i64 %7, 0, !dbg !1395
  br i1 %8, label %9, label %10, !dbg !1397

9:                                                ; preds = %0
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str, i32 noundef 427, ptr noundef @__FUNCTION__.get_number_of_cpus, ptr noundef @.str.56), !dbg !1398
  store i16 1, ptr %1, align 2, !dbg !1400
  br label %13, !dbg !1400

10:                                               ; preds = %0
  %11 = load i64, ptr %2, align 8, !dbg !1401
  %12 = trunc i64 %11 to i16, !dbg !1402
  store i16 %12, ptr %1, align 2, !dbg !1403
  br label %13, !dbg !1403

13:                                               ; preds = %10, %9
  %14 = load i16, ptr %1, align 2, !dbg !1404
  ret i16 %14, !dbg !1404
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @setup_open_file_count_limits() #0 !dbg !1405 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.rlimit, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1408, metadata !DIExpression()), !dbg !1413
  %3 = call i32 @getrlimit(i32 noundef 7, ptr noundef %2) #13, !dbg !1414
  %4 = icmp slt i32 %3, 0, !dbg !1416
  br i1 %4, label %5, label %6, !dbg !1417

5:                                                ; preds = %0
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 398, ptr noundef @__FUNCTION__.setup_open_file_count_limits, ptr noundef @.str.57) #12, !dbg !1418
  unreachable, !dbg !1418

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1, !dbg !1419
  %8 = load i64, ptr %7, align 8, !dbg !1419
  %9 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1421
  %10 = load i64, ptr %9, align 8, !dbg !1421
  %11 = icmp eq i64 %8, %10, !dbg !1422
  br i1 %11, label %12, label %15, !dbg !1423

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1424
  %14 = load i64, ptr %13, align 8, !dbg !1424
  store i64 %14, ptr %1, align 8, !dbg !1425
  br label %41, !dbg !1425

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1, !dbg !1426
  %17 = load i64, ptr %16, align 8, !dbg !1426
  %18 = icmp eq i64 %17, -1, !dbg !1428
  br i1 %18, label %19, label %23, !dbg !1429

19:                                               ; preds = %15
  %20 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1430
  %21 = load i64, ptr %20, align 8, !dbg !1431
  %22 = mul i64 %21, 8, !dbg !1431
  store i64 %22, ptr %20, align 8, !dbg !1431
  br label %34, !dbg !1432

23:                                               ; preds = %15
  %24 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1433
  %25 = load i64, ptr %24, align 8, !dbg !1433
  %26 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1, !dbg !1435
  %27 = load i64, ptr %26, align 8, !dbg !1435
  %28 = icmp ult i64 %25, %27, !dbg !1436
  br i1 %28, label %29, label %33, !dbg !1437

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 1, !dbg !1438
  %31 = load i64, ptr %30, align 8, !dbg !1438
  %32 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1439
  store i64 %31, ptr %32, align 8, !dbg !1440
  br label %33, !dbg !1441

33:                                               ; preds = %29, %23
  br label %34

34:                                               ; preds = %33, %19
  %35 = call i32 @setrlimit(i32 noundef 7, ptr noundef %2) #13, !dbg !1442
  %36 = icmp slt i32 %35, 0, !dbg !1444
  br i1 %36, label %37, label %38, !dbg !1445

37:                                               ; preds = %34
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 409, ptr noundef @__FUNCTION__.setup_open_file_count_limits, ptr noundef @.str.58) #12, !dbg !1446
  unreachable, !dbg !1446

38:                                               ; preds = %34
  %39 = getelementptr inbounds %struct.rlimit, ptr %2, i32 0, i32 0, !dbg !1447
  %40 = load i64, ptr %39, align 8, !dbg !1447
  store i64 %40, ptr %1, align 8, !dbg !1448
  br label %41, !dbg !1448

41:                                               ; preds = %38, %12
  %42 = load i64, ptr %1, align 8, !dbg !1449
  ret i64 %42, !dbg !1449
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @allocate_connections(ptr noundef %0, i64 noundef %1) #0 !dbg !1450 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1453, metadata !DIExpression()), !dbg !1454
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1455, metadata !DIExpression()), !dbg !1456
  %5 = load i64, ptr %4, align 8, !dbg !1457
  %6 = call noalias ptr @calloc(i64 noundef %5, i64 noundef 32) #16, !dbg !1458
  %7 = load ptr, ptr %3, align 8, !dbg !1459
  %8 = getelementptr inbounds %struct.lwan_t_, ptr %7, i32 0, i32 1, !dbg !1460
  store ptr %6, ptr %8, align 8, !dbg !1461
  %9 = load ptr, ptr %3, align 8, !dbg !1462
  %10 = getelementptr inbounds %struct.lwan_t_, ptr %9, i32 0, i32 1, !dbg !1464
  %11 = load ptr, ptr %10, align 8, !dbg !1464
  %12 = icmp ne ptr %11, null, !dbg !1462
  br i1 %12, label %14, label %13, !dbg !1465

13:                                               ; preds = %2
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str, i32 noundef 419, ptr noundef @__FUNCTION__.allocate_connections, ptr noundef @.str.59) #12, !dbg !1466
  unreachable, !dbg !1466

14:                                               ; preds = %2
  ret void, !dbg !1467
}

declare void @lwan_status_info_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @signal(i32 noundef, ptr noundef) #4

declare i32 @close(i32 noundef) #2

declare void @lwan_thread_init(ptr noundef) #2

declare void @lwan_socket_init(ptr noundef) #2

declare zeroext i1 @lwan_http_authorize_init() #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_shutdown(ptr noundef %0) #0 !dbg !1468 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1469, metadata !DIExpression()), !dbg !1470
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 505, ptr noundef @__FUNCTION__.lwan_shutdown, ptr noundef @.str.8), !dbg !1471
  %3 = load ptr, ptr %2, align 8, !dbg !1472
  %4 = getelementptr inbounds %struct.lwan_t_, ptr %3, i32 0, i32 4, !dbg !1474
  %5 = getelementptr inbounds %struct.lwan_config_t_, ptr %4, i32 0, i32 0, !dbg !1475
  %6 = load ptr, ptr %5, align 8, !dbg !1475
  %7 = load ptr, ptr @default_config, align 8, !dbg !1476
  %8 = icmp ne ptr %6, %7, !dbg !1477
  br i1 %8, label %9, label %14, !dbg !1478

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !dbg !1479
  %11 = getelementptr inbounds %struct.lwan_t_, ptr %10, i32 0, i32 4, !dbg !1480
  %12 = getelementptr inbounds %struct.lwan_config_t_, ptr %11, i32 0, i32 0, !dbg !1481
  %13 = load ptr, ptr %12, align 8, !dbg !1481
  call void @free(ptr noundef %13) #13, !dbg !1482
  br label %14, !dbg !1482

14:                                               ; preds = %9, %1
  call void @lwan_job_thread_shutdown(), !dbg !1483
  %15 = load ptr, ptr %2, align 8, !dbg !1484
  call void @lwan_thread_shutdown(ptr noundef %15), !dbg !1485
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str, i32 noundef 513, ptr noundef @__FUNCTION__.lwan_shutdown, ptr noundef @.str.9), !dbg !1486
  %16 = load ptr, ptr %2, align 8, !dbg !1487
  %17 = getelementptr inbounds %struct.lwan_t_, ptr %16, i32 0, i32 0, !dbg !1488
  call void @lwan_trie_destroy(ptr noundef %17), !dbg !1489
  %18 = load ptr, ptr %2, align 8, !dbg !1490
  %19 = getelementptr inbounds %struct.lwan_t_, ptr %18, i32 0, i32 1, !dbg !1491
  %20 = load ptr, ptr %19, align 8, !dbg !1491
  call void @free(ptr noundef %20) #13, !dbg !1492
  call void @lwan_response_shutdown(), !dbg !1493
  call void @lwan_tables_shutdown(), !dbg !1494
  %21 = load ptr, ptr %2, align 8, !dbg !1495
  call void @lwan_status_shutdown(ptr noundef %21), !dbg !1496
  call void @lwan_http_authorize_shutdown(), !dbg !1497
  %22 = load ptr, ptr %2, align 8, !dbg !1498
  call void @lwan_module_shutdown(ptr noundef %22), !dbg !1499
  ret void, !dbg !1500
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #4

declare void @lwan_job_thread_shutdown() #2

declare void @lwan_thread_shutdown(ptr noundef) #2

declare void @lwan_response_shutdown() #2

declare void @lwan_tables_shutdown() #2

declare void @lwan_status_shutdown(ptr noundef) #2

declare void @lwan_http_authorize_shutdown() #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lwan_module_shutdown(ptr noundef %0) #0 !dbg !1501 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1502, metadata !DIExpression()), !dbg !1503
  %3 = load ptr, ptr %2, align 8, !dbg !1504
  %4 = getelementptr inbounds %struct.lwan_t_, ptr %3, i32 0, i32 3, !dbg !1505
  %5 = load ptr, ptr %4, align 8, !dbg !1505
  call void @hash_free(ptr noundef %5), !dbg !1506
  ret void, !dbg !1507
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_main_loop(ptr noundef %0) #0 !dbg !1508 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca %union.__SOCKADDR_ARG, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1509, metadata !DIExpression()), !dbg !1510
  %9 = load volatile i32, ptr @main_socket, align 4, !dbg !1511
  %10 = icmp eq i32 %9, -1, !dbg !1511
  br i1 %10, label %11, label %12, !dbg !1514

11:                                               ; preds = %1
  br label %13, !dbg !1514

12:                                               ; preds = %1
  call void @__assert_fail(ptr noundef @.str.10, ptr noundef @.str, i32 noundef 561, ptr noundef @__PRETTY_FUNCTION__.lwan_main_loop) #17, !dbg !1511
  unreachable, !dbg !1511

13:                                               ; preds = %11
  %14 = load ptr, ptr %6, align 8, !dbg !1515
  %15 = getelementptr inbounds %struct.lwan_t_, ptr %14, i32 0, i32 5, !dbg !1516
  %16 = load i32, ptr %15, align 8, !dbg !1516
  store volatile i32 %16, ptr @main_socket, align 4, !dbg !1517
  %17 = call ptr @signal(i32 noundef 2, ptr noundef @sigint_handler) #13, !dbg !1518
  %18 = icmp eq ptr %17, inttoptr (i64 -1 to ptr), !dbg !1520
  br i1 %18, label %19, label %20, !dbg !1521

19:                                               ; preds = %13
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_debug(ptr noundef @.str, i32 noundef 564, ptr noundef @__FUNCTION__.lwan_main_loop, ptr noundef @.str.11) #12, !dbg !1522
  unreachable, !dbg !1522

20:                                               ; preds = %13
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 566, ptr noundef @__FUNCTION__.lwan_main_loop, ptr noundef @.str.12), !dbg !1523
  br label %21, !dbg !1524

21:                                               ; preds = %42, %35, %20
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1525, metadata !DIExpression()), !dbg !1529
  %22 = load volatile i32, ptr @main_socket, align 4, !dbg !1530
  store ptr null, ptr %8, align 8, !dbg !1531
  %23 = getelementptr inbounds %union.__SOCKADDR_ARG, ptr %8, i32 0, i32 0, !dbg !1532
  %24 = load ptr, ptr %23, align 8, !dbg !1532
  %25 = call i32 @accept4(i32 noundef %22, ptr %24, ptr noundef null, i32 noundef 526336), !dbg !1532
  store i32 %25, ptr %7, align 4, !dbg !1529
  %26 = load i32, ptr %7, align 4, !dbg !1533
  %27 = icmp slt i32 %26, 0, !dbg !1533
  %28 = zext i1 %27 to i32, !dbg !1533
  %29 = sext i32 %28 to i64, !dbg !1533
  %30 = icmp ne i64 %29, 0, !dbg !1533
  br i1 %30, label %31, label %42, !dbg !1535

31:                                               ; preds = %21
  %32 = call ptr @__errno_location() #18, !dbg !1536
  %33 = load i32, ptr %32, align 4, !dbg !1536
  %34 = icmp ne i32 %33, 9, !dbg !1539
  br i1 %34, label %35, label %36, !dbg !1540

35:                                               ; preds = %31
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 572, ptr noundef @__FUNCTION__.lwan_main_loop, ptr noundef @.str.13), !dbg !1541
  br label %21, !dbg !1543, !llvm.loop !1544

36:                                               ; preds = %31
  %37 = load volatile i32, ptr @main_socket, align 4, !dbg !1547
  %38 = icmp slt i32 %37, 0, !dbg !1549
  br i1 %38, label %39, label %40, !dbg !1550

39:                                               ; preds = %36
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 577, ptr noundef @__FUNCTION__.lwan_main_loop, ptr noundef @.str.14), !dbg !1551
  br label %41, !dbg !1553

40:                                               ; preds = %36
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_info_debug(ptr noundef @.str, i32 noundef 579, ptr noundef @__FUNCTION__.lwan_main_loop, ptr noundef @.str.15), !dbg !1554
  br label %41

41:                                               ; preds = %40, %39
  br label %62, !dbg !1556

42:                                               ; preds = %21
  %43 = load ptr, ptr %6, align 8, !dbg !1557
  %44 = load i32, ptr %7, align 4, !dbg !1558
  store ptr %43, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1559, metadata !DIExpression()), !dbg !1563
  store i32 %44, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1567, metadata !DIExpression()), !dbg !1568
  %45 = load i32, ptr %3, align 4, !dbg !1569
  %46 = sub nsw i32 %45, 1, !dbg !1570
  %47 = sdiv i32 %46, 2, !dbg !1571
  %48 = load ptr, ptr %2, align 8, !dbg !1572
  %49 = getelementptr inbounds %struct.lwan_t_, ptr %48, i32 0, i32 2, !dbg !1573
  %50 = getelementptr inbounds %struct.anon.0, ptr %49, i32 0, i32 2, !dbg !1574
  %51 = load i16, ptr %50, align 4, !dbg !1574
  %52 = zext i16 %51 to i32, !dbg !1572
  %53 = srem i32 %47, %52, !dbg !1575
  store i32 %53, ptr %4, align 4, !dbg !1576
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1577, metadata !DIExpression()), !dbg !1578
  %54 = load ptr, ptr %2, align 8, !dbg !1579
  %55 = getelementptr inbounds %struct.lwan_t_, ptr %54, i32 0, i32 2, !dbg !1580
  %56 = load ptr, ptr %55, align 8, !dbg !1581
  %57 = load i32, ptr %4, align 4, !dbg !1582
  %58 = sext i32 %57 to i64, !dbg !1579
  %59 = getelementptr inbounds %struct.lwan_thread_t_, ptr %56, i64 %58, !dbg !1579
  store ptr %59, ptr %5, align 8, !dbg !1578
  %60 = load ptr, ptr %5, align 8, !dbg !1583
  %61 = load i32, ptr %3, align 4, !dbg !1584
  call void @lwan_thread_add_client(ptr noundef %60, i32 noundef %61) #13, !dbg !1585
  br label %21, !dbg !1586, !llvm.loop !1544

62:                                               ; preds = %41
  ret void, !dbg !1587
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sigint_handler(i32 noundef %0) #0 !dbg !1588 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1589, metadata !DIExpression()), !dbg !1590
  %3 = load volatile i32, ptr @main_socket, align 4, !dbg !1591
  %4 = icmp slt i32 %3, 0, !dbg !1593
  br i1 %4, label %5, label %6, !dbg !1594

5:                                                ; preds = %1
  br label %9, !dbg !1595

6:                                                ; preds = %1
  %7 = load volatile i32, ptr @main_socket, align 4, !dbg !1596
  %8 = call i32 @close(i32 noundef %7), !dbg !1597
  store volatile i32 -1, ptr @main_socket, align 4, !dbg !1598
  br label %9, !dbg !1599

9:                                                ; preds = %6, %5
  ret void, !dbg !1599
}

; Function Attrs: noreturn
declare void @lwan_status_critical_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #3

declare i32 @accept4(i32 noundef, ptr, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @hash_free(ptr noundef) #2

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #10

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare void @lwan_trie_add(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @hash_str_new(ptr noundef, ptr noundef) #2

declare i32 @hash_add(ptr noundef, ptr noundef, ptr noundef) #2

declare zeroext i1 @config_open(ptr noundef, ptr noundef) #2

declare zeroext i1 @config_read_line(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare i64 @parse_long(ptr noundef, i64 noundef) #2

declare zeroext i1 @parse_bool(ptr noundef, i1 noundef zeroext) #2

declare i32 @parse_time_period(ptr noundef, i32 noundef) #2

declare zeroext i1 @config_error(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1600 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1605, metadata !DIExpression()), !dbg !1606
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1607, metadata !DIExpression()), !dbg !1608
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1609, metadata !DIExpression()), !dbg !1610
  %8 = load ptr, ptr %5, align 8, !dbg !1611
  %9 = getelementptr inbounds %struct.config_line_t_, ptr %8, i32 0, i32 0, !dbg !1612
  %10 = getelementptr inbounds %struct.anon.9, ptr %9, i32 0, i32 1, !dbg !1613
  %11 = load ptr, ptr %10, align 8, !dbg !1613
  %12 = call noalias ptr @strdup(ptr noundef %11) #13, !dbg !1614
  %13 = load ptr, ptr %6, align 8, !dbg !1615
  %14 = getelementptr inbounds %struct.lwan_t_, ptr %13, i32 0, i32 4, !dbg !1616
  %15 = getelementptr inbounds %struct.lwan_config_t_, ptr %14, i32 0, i32 0, !dbg !1617
  store ptr %12, ptr %15, align 8, !dbg !1618
  br label %16, !dbg !1619

16:                                               ; preds = %62, %3
  %17 = load ptr, ptr %4, align 8, !dbg !1620
  %18 = load ptr, ptr %5, align 8, !dbg !1621
  %19 = call zeroext i1 @config_read_line(ptr noundef %17, ptr noundef %18), !dbg !1622
  br i1 %19, label %20, label %63, !dbg !1619

20:                                               ; preds = %16
  %21 = load ptr, ptr %5, align 8, !dbg !1623
  %22 = getelementptr inbounds %struct.config_line_t_, ptr %21, i32 0, i32 1, !dbg !1625
  %23 = load i32, ptr %22, align 8, !dbg !1625
  switch i32 %23, label %62 [
    i32 0, label %24
    i32 1, label %27
    i32 2, label %61
  ], !dbg !1626

24:                                               ; preds = %20
  %25 = load ptr, ptr %4, align 8, !dbg !1627
  %26 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %25, ptr noundef @.str.34), !dbg !1629
  br label %66, !dbg !1630

27:                                               ; preds = %20
  %28 = load ptr, ptr %5, align 8, !dbg !1631
  %29 = getelementptr inbounds %struct.config_line_t_, ptr %28, i32 0, i32 0, !dbg !1633
  %30 = getelementptr inbounds %struct.anon.9, ptr %29, i32 0, i32 0, !dbg !1634
  %31 = load ptr, ptr %30, align 8, !dbg !1634
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.35) #15, !dbg !1635
  %33 = icmp ne i32 %32, 0, !dbg !1635
  br i1 %33, label %38, label %34, !dbg !1636

34:                                               ; preds = %27
  %35 = load ptr, ptr %4, align 8, !dbg !1637
  %36 = load ptr, ptr %5, align 8, !dbg !1639
  %37 = load ptr, ptr %6, align 8, !dbg !1640
  call void @parse_listener_prefix(ptr noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef null), !dbg !1641
  br label %60, !dbg !1642

38:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1643, metadata !DIExpression()), !dbg !1645
  %39 = load ptr, ptr %6, align 8, !dbg !1646
  %40 = load ptr, ptr %5, align 8, !dbg !1647
  %41 = getelementptr inbounds %struct.config_line_t_, ptr %40, i32 0, i32 0, !dbg !1648
  %42 = getelementptr inbounds %struct.anon.9, ptr %41, i32 0, i32 0, !dbg !1649
  %43 = load ptr, ptr %42, align 8, !dbg !1649
  %44 = call ptr @lwan_module_find(ptr noundef %39, ptr noundef %43), !dbg !1650
  store ptr %44, ptr %7, align 8, !dbg !1645
  %45 = load ptr, ptr %7, align 8, !dbg !1651
  %46 = icmp ne ptr %45, null, !dbg !1651
  br i1 %46, label %54, label %47, !dbg !1653

47:                                               ; preds = %38
  %48 = load ptr, ptr %4, align 8, !dbg !1654
  %49 = load ptr, ptr %5, align 8, !dbg !1656
  %50 = getelementptr inbounds %struct.config_line_t_, ptr %49, i32 0, i32 0, !dbg !1657
  %51 = getelementptr inbounds %struct.anon.9, ptr %50, i32 0, i32 0, !dbg !1658
  %52 = load ptr, ptr %51, align 8, !dbg !1658
  %53 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %48, ptr noundef @.str.36, ptr noundef %52), !dbg !1659
  br label %59, !dbg !1660

54:                                               ; preds = %38
  %55 = load ptr, ptr %4, align 8, !dbg !1661
  %56 = load ptr, ptr %5, align 8, !dbg !1663
  %57 = load ptr, ptr %6, align 8, !dbg !1664
  %58 = load ptr, ptr %7, align 8, !dbg !1665
  call void @parse_listener_prefix(ptr noundef %55, ptr noundef %56, ptr noundef %57, ptr noundef %58), !dbg !1666
  br label %59

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %34
  br label %62, !dbg !1667

61:                                               ; preds = %20
  br label %66, !dbg !1668

62:                                               ; preds = %20, %60
  br label %16, !dbg !1619, !llvm.loop !1669

63:                                               ; preds = %16
  %64 = load ptr, ptr %4, align 8, !dbg !1671
  %65 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %64, ptr noundef @.str.37), !dbg !1672
  br label %66, !dbg !1673

66:                                               ; preds = %63, %61, %24
  ret void, !dbg !1673
}

declare void @config_close(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener_prefix(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1674 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca %struct.lwan_url_map_t_, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1677, metadata !DIExpression()), !dbg !1678
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1679, metadata !DIExpression()), !dbg !1680
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1681, metadata !DIExpression()), !dbg !1682
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1683, metadata !DIExpression()), !dbg !1684
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1685, metadata !DIExpression()), !dbg !1686
  call void @llvm.memset.p0.i64(ptr align 8 %9, i8 0, i64 72, i1 false), !dbg !1686
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1687, metadata !DIExpression()), !dbg !1688
  %17 = call ptr @hash_str_new(ptr noundef @free, ptr noundef @free), !dbg !1689
  store ptr %17, ptr %10, align 8, !dbg !1688
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1690, metadata !DIExpression()), !dbg !1691
  store ptr null, ptr %11, align 8, !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1694, metadata !DIExpression()), !dbg !1696
  %18 = load ptr, ptr %6, align 8, !dbg !1696
  %19 = getelementptr inbounds %struct.config_line_t_, ptr %18, i32 0, i32 0, !dbg !1696
  %20 = getelementptr inbounds %struct.anon.10, ptr %19, i32 0, i32 1, !dbg !1696
  %21 = load ptr, ptr %20, align 8, !dbg !1696
  store ptr %21, ptr %13, align 8, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1697, metadata !DIExpression()), !dbg !1696
  %22 = load ptr, ptr %13, align 8, !dbg !1696
  %23 = call i64 @strlen(ptr noundef %22) #15, !dbg !1696
  %24 = add i64 %23, 1, !dbg !1696
  store i64 %24, ptr %14, align 8, !dbg !1696
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1698, metadata !DIExpression()), !dbg !1696
  %25 = load i64, ptr %14, align 8, !dbg !1696
  %26 = alloca i8, i64 %25, align 16, !dbg !1696
  store ptr %26, ptr %15, align 8, !dbg !1696
  %27 = load ptr, ptr %15, align 8, !dbg !1696
  %28 = load ptr, ptr %13, align 8, !dbg !1696
  %29 = load i64, ptr %14, align 8, !dbg !1696
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %27, ptr align 1 %28, i64 %29, i1 false), !dbg !1696
  store ptr %27, ptr %16, align 8, !dbg !1696
  %30 = load ptr, ptr %16, align 8, !dbg !1696
  store ptr %30, ptr %12, align 8, !dbg !1693
  br label %31, !dbg !1699

31:                                               ; preds = %126, %4
  %32 = load ptr, ptr %5, align 8, !dbg !1700
  %33 = load ptr, ptr %6, align 8, !dbg !1701
  %34 = call zeroext i1 @config_read_line(ptr noundef %32, ptr noundef %33), !dbg !1702
  br i1 %34, label %35, label %127, !dbg !1699

35:                                               ; preds = %31
  %36 = load ptr, ptr %6, align 8, !dbg !1703
  %37 = getelementptr inbounds %struct.config_line_t_, ptr %36, i32 0, i32 1, !dbg !1705
  %38 = load i32, ptr %37, align 8, !dbg !1705
  switch i32 %38, label %126 [
    i32 0, label %39
    i32 1, label %107
    i32 2, label %125
  ], !dbg !1706

39:                                               ; preds = %35
  %40 = load ptr, ptr %6, align 8, !dbg !1707
  %41 = getelementptr inbounds %struct.config_line_t_, ptr %40, i32 0, i32 0, !dbg !1710
  %42 = getelementptr inbounds %struct.anon.10, ptr %41, i32 0, i32 0, !dbg !1711
  %43 = load ptr, ptr %42, align 8, !dbg !1711
  %44 = call i32 @strcmp(ptr noundef %43, ptr noundef @.str.38) #15, !dbg !1712
  %45 = icmp ne i32 %44, 0, !dbg !1712
  br i1 %45, label %69, label %46, !dbg !1713

46:                                               ; preds = %39
  %47 = load ptr, ptr %8, align 8, !dbg !1714
  %48 = icmp ne ptr %47, null, !dbg !1714
  br i1 %48, label %49, label %52, !dbg !1717

49:                                               ; preds = %46
  %50 = load ptr, ptr %5, align 8, !dbg !1718
  %51 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %50, ptr noundef @.str.39), !dbg !1720
  br label %202, !dbg !1721

52:                                               ; preds = %46
  %53 = load ptr, ptr %7, align 8, !dbg !1722
  %54 = load ptr, ptr %6, align 8, !dbg !1723
  %55 = getelementptr inbounds %struct.config_line_t_, ptr %54, i32 0, i32 0, !dbg !1724
  %56 = getelementptr inbounds %struct.anon.10, ptr %55, i32 0, i32 1, !dbg !1725
  %57 = load ptr, ptr %56, align 8, !dbg !1725
  %58 = call ptr @lwan_module_find(ptr noundef %53, ptr noundef %57), !dbg !1726
  store ptr %58, ptr %8, align 8, !dbg !1727
  %59 = load ptr, ptr %8, align 8, !dbg !1728
  %60 = icmp ne ptr %59, null, !dbg !1728
  br i1 %60, label %68, label %61, !dbg !1730

61:                                               ; preds = %52
  %62 = load ptr, ptr %5, align 8, !dbg !1731
  %63 = load ptr, ptr %6, align 8, !dbg !1733
  %64 = getelementptr inbounds %struct.config_line_t_, ptr %63, i32 0, i32 0, !dbg !1734
  %65 = getelementptr inbounds %struct.anon.10, ptr %64, i32 0, i32 1, !dbg !1735
  %66 = load ptr, ptr %65, align 8, !dbg !1735
  %67 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %62, ptr noundef @.str.40, ptr noundef %66), !dbg !1736
  br label %202, !dbg !1737

68:                                               ; preds = %52
  br label %106, !dbg !1738

69:                                               ; preds = %39
  %70 = load ptr, ptr %6, align 8, !dbg !1739
  %71 = getelementptr inbounds %struct.config_line_t_, ptr %70, i32 0, i32 0, !dbg !1741
  %72 = getelementptr inbounds %struct.anon.10, ptr %71, i32 0, i32 0, !dbg !1742
  %73 = load ptr, ptr %72, align 8, !dbg !1742
  %74 = call i32 @strcmp(ptr noundef %73, ptr noundef @.str.41) #15, !dbg !1743
  %75 = icmp ne i32 %74, 0, !dbg !1743
  br i1 %75, label %92, label %76, !dbg !1744

76:                                               ; preds = %69
  %77 = load ptr, ptr %6, align 8, !dbg !1745
  %78 = getelementptr inbounds %struct.config_line_t_, ptr %77, i32 0, i32 0, !dbg !1747
  %79 = getelementptr inbounds %struct.anon.10, ptr %78, i32 0, i32 1, !dbg !1748
  %80 = load ptr, ptr %79, align 8, !dbg !1748
  %81 = call ptr @find_handler_symbol(ptr noundef %80), !dbg !1749
  store ptr %81, ptr %11, align 8, !dbg !1750
  %82 = load ptr, ptr %11, align 8, !dbg !1751
  %83 = icmp ne ptr %82, null, !dbg !1751
  br i1 %83, label %91, label %84, !dbg !1753

84:                                               ; preds = %76
  %85 = load ptr, ptr %5, align 8, !dbg !1754
  %86 = load ptr, ptr %6, align 8, !dbg !1756
  %87 = getelementptr inbounds %struct.config_line_t_, ptr %86, i32 0, i32 0, !dbg !1757
  %88 = getelementptr inbounds %struct.anon.10, ptr %87, i32 0, i32 1, !dbg !1758
  %89 = load ptr, ptr %88, align 8, !dbg !1758
  %90 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %85, ptr noundef @.str.42, ptr noundef %89), !dbg !1759
  br label %202, !dbg !1760

91:                                               ; preds = %76
  br label %105, !dbg !1761

92:                                               ; preds = %69
  %93 = load ptr, ptr %10, align 8, !dbg !1762
  %94 = load ptr, ptr %6, align 8, !dbg !1764
  %95 = getelementptr inbounds %struct.config_line_t_, ptr %94, i32 0, i32 0, !dbg !1765
  %96 = getelementptr inbounds %struct.anon.10, ptr %95, i32 0, i32 0, !dbg !1766
  %97 = load ptr, ptr %96, align 8, !dbg !1766
  %98 = call noalias ptr @strdup(ptr noundef %97) #13, !dbg !1767
  %99 = load ptr, ptr %6, align 8, !dbg !1768
  %100 = getelementptr inbounds %struct.config_line_t_, ptr %99, i32 0, i32 0, !dbg !1769
  %101 = getelementptr inbounds %struct.anon.10, ptr %100, i32 0, i32 1, !dbg !1770
  %102 = load ptr, ptr %101, align 8, !dbg !1770
  %103 = call noalias ptr @strdup(ptr noundef %102) #13, !dbg !1771
  %104 = call i32 @hash_add(ptr noundef %93, ptr noundef %98, ptr noundef %103), !dbg !1772
  br label %105

105:                                              ; preds = %92, %91
  br label %106

106:                                              ; preds = %105, %68
  br label %126, !dbg !1773

107:                                              ; preds = %35
  %108 = load ptr, ptr %6, align 8, !dbg !1774
  %109 = getelementptr inbounds %struct.config_line_t_, ptr %108, i32 0, i32 0, !dbg !1776
  %110 = getelementptr inbounds %struct.anon.9, ptr %109, i32 0, i32 0, !dbg !1777
  %111 = load ptr, ptr %110, align 8, !dbg !1777
  %112 = call i32 @strcmp(ptr noundef %111, ptr noundef @.str.43) #15, !dbg !1778
  %113 = icmp ne i32 %112, 0, !dbg !1778
  br i1 %113, label %117, label %114, !dbg !1779

114:                                              ; preds = %107
  %115 = load ptr, ptr %5, align 8, !dbg !1780
  %116 = load ptr, ptr %6, align 8, !dbg !1782
  call void @parse_listener_prefix_authorization(ptr noundef %115, ptr noundef %116, ptr noundef %9), !dbg !1783
  br label %124, !dbg !1784

117:                                              ; preds = %107
  %118 = load ptr, ptr %5, align 8, !dbg !1785
  %119 = load ptr, ptr %6, align 8, !dbg !1787
  %120 = getelementptr inbounds %struct.config_line_t_, ptr %119, i32 0, i32 0, !dbg !1788
  %121 = getelementptr inbounds %struct.anon.9, ptr %120, i32 0, i32 0, !dbg !1789
  %122 = load ptr, ptr %121, align 8, !dbg !1789
  %123 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %118, ptr noundef @.str.44, ptr noundef %122), !dbg !1790
  br label %202, !dbg !1791

124:                                              ; preds = %114
  br label %126, !dbg !1792

125:                                              ; preds = %35
  br label %130, !dbg !1793

126:                                              ; preds = %35, %124, %106
  br label %31, !dbg !1699, !llvm.loop !1794

127:                                              ; preds = %31
  %128 = load ptr, ptr %5, align 8, !dbg !1796
  %129 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %128, ptr noundef @.str.45), !dbg !1797
  br label %202, !dbg !1798

130:                                              ; preds = %125
  call void @llvm.dbg.label(metadata !1799), !dbg !1800
  %131 = load ptr, ptr %8, align 8, !dbg !1801
  %132 = load ptr, ptr %11, align 8, !dbg !1803
  %133 = icmp eq ptr %131, %132, !dbg !1804
  br i1 %133, label %134, label %140, !dbg !1805

134:                                              ; preds = %130
  %135 = load ptr, ptr %11, align 8, !dbg !1806
  %136 = icmp ne ptr %135, null, !dbg !1806
  br i1 %136, label %140, label %137, !dbg !1807

137:                                              ; preds = %134
  %138 = load ptr, ptr %5, align 8, !dbg !1808
  %139 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %138, ptr noundef @.str.46), !dbg !1810
  br label %202, !dbg !1811

140:                                              ; preds = %134, %130
  %141 = load ptr, ptr %8, align 8, !dbg !1812
  %142 = icmp ne ptr %141, null, !dbg !1812
  br i1 %142, label %143, label %149, !dbg !1814

143:                                              ; preds = %140
  %144 = load ptr, ptr %11, align 8, !dbg !1815
  %145 = icmp ne ptr %144, null, !dbg !1815
  br i1 %145, label %146, label %149, !dbg !1816

146:                                              ; preds = %143
  %147 = load ptr, ptr %5, align 8, !dbg !1817
  %148 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %147, ptr noundef @.str.47), !dbg !1819
  br label %202, !dbg !1820

149:                                              ; preds = %143, %140
  %150 = load ptr, ptr %11, align 8, !dbg !1821
  %151 = icmp ne ptr %150, null, !dbg !1821
  br i1 %151, label %152, label %161, !dbg !1823

152:                                              ; preds = %149
  %153 = load ptr, ptr %11, align 8, !dbg !1824
  %154 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 0, !dbg !1826
  store ptr %153, ptr %154, align 8, !dbg !1827
  %155 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 4, !dbg !1828
  %156 = load i32, ptr %155, align 8, !dbg !1829
  %157 = or i32 %156, 31, !dbg !1829
  store i32 %157, ptr %155, align 8, !dbg !1829
  %158 = load ptr, ptr %10, align 8, !dbg !1830
  %159 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 1, !dbg !1831
  store ptr %158, ptr %159, align 8, !dbg !1832
  %160 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 5, !dbg !1833
  store ptr null, ptr %160, align 8, !dbg !1834
  store ptr null, ptr %10, align 8, !dbg !1835
  br label %197, !dbg !1836

161:                                              ; preds = %149
  %162 = load ptr, ptr %8, align 8, !dbg !1837
  %163 = icmp ne ptr %162, null, !dbg !1837
  br i1 %163, label %164, label %193, !dbg !1839

164:                                              ; preds = %161
  %165 = load ptr, ptr %8, align 8, !dbg !1840
  %166 = getelementptr inbounds %struct.lwan_module_t_, ptr %165, i32 0, i32 2, !dbg !1841
  %167 = load ptr, ptr %166, align 8, !dbg !1841
  %168 = icmp ne ptr %167, null, !dbg !1840
  br i1 %168, label %169, label %193, !dbg !1842

169:                                              ; preds = %164
  %170 = load ptr, ptr %8, align 8, !dbg !1843
  %171 = getelementptr inbounds %struct.lwan_module_t_, ptr %170, i32 0, i32 4, !dbg !1844
  %172 = load ptr, ptr %171, align 8, !dbg !1844
  %173 = icmp ne ptr %172, null, !dbg !1843
  br i1 %173, label %174, label %193, !dbg !1845

174:                                              ; preds = %169
  %175 = load ptr, ptr %8, align 8, !dbg !1846
  %176 = getelementptr inbounds %struct.lwan_module_t_, ptr %175, i32 0, i32 2, !dbg !1848
  %177 = load ptr, ptr %176, align 8, !dbg !1848
  %178 = load ptr, ptr %10, align 8, !dbg !1849
  %179 = call ptr %177(ptr noundef %178), !dbg !1846
  %180 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 1, !dbg !1850
  store ptr %179, ptr %180, align 8, !dbg !1851
  %181 = load ptr, ptr %8, align 8, !dbg !1852
  %182 = getelementptr inbounds %struct.lwan_module_t_, ptr %181, i32 0, i32 4, !dbg !1853
  %183 = load ptr, ptr %182, align 8, !dbg !1853
  %184 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 0, !dbg !1854
  store ptr %183, ptr %184, align 8, !dbg !1855
  %185 = load ptr, ptr %8, align 8, !dbg !1856
  %186 = getelementptr inbounds %struct.lwan_module_t_, ptr %185, i32 0, i32 5, !dbg !1857
  %187 = load i32, ptr %186, align 8, !dbg !1857
  %188 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 4, !dbg !1858
  %189 = load i32, ptr %188, align 8, !dbg !1859
  %190 = or i32 %189, %187, !dbg !1859
  store i32 %190, ptr %188, align 8, !dbg !1859
  %191 = load ptr, ptr %8, align 8, !dbg !1860
  %192 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %9, i32 0, i32 5, !dbg !1861
  store ptr %191, ptr %192, align 8, !dbg !1862
  br label %196, !dbg !1863

193:                                              ; preds = %169, %164, %161
  %194 = load ptr, ptr %5, align 8, !dbg !1864
  %195 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %194, ptr noundef @.str.48), !dbg !1866
  br label %202, !dbg !1867

196:                                              ; preds = %174
  br label %197

197:                                              ; preds = %196, %152
  %198 = load ptr, ptr %7, align 8, !dbg !1868
  %199 = getelementptr inbounds %struct.lwan_t_, ptr %198, i32 0, i32 0, !dbg !1869
  %200 = load ptr, ptr %12, align 8, !dbg !1870
  %201 = call ptr @add_url_map(ptr noundef %199, ptr noundef %200, ptr noundef %9), !dbg !1871
  br label %202, !dbg !1871

202:                                              ; preds = %197, %193, %146, %137, %127, %117, %84, %61, %49
  call void @llvm.dbg.label(metadata !1872), !dbg !1873
  %203 = load ptr, ptr %10, align 8, !dbg !1874
  call void @hash_free(ptr noundef %203), !dbg !1875
  ret void, !dbg !1876
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @lwan_module_find(ptr noundef %0, ptr noundef %1) #0 !dbg !1877 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1880, metadata !DIExpression()), !dbg !1881
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1882, metadata !DIExpression()), !dbg !1883
  %5 = load ptr, ptr %3, align 8, !dbg !1884
  %6 = getelementptr inbounds %struct.lwan_t_, ptr %5, i32 0, i32 3, !dbg !1885
  %7 = load ptr, ptr %6, align 8, !dbg !1885
  %8 = load ptr, ptr %4, align 8, !dbg !1886
  %9 = call ptr @hash_find(ptr noundef %7, ptr noundef %8), !dbg !1887
  ret ptr %9, !dbg !1888
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @find_handler_symbol(ptr noundef %0) #0 !dbg !1889 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1892, metadata !DIExpression()), !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1894, metadata !DIExpression()), !dbg !1895
  %4 = load ptr, ptr %2, align 8, !dbg !1896
  %5 = call ptr @dlsym(ptr noundef inttoptr (i64 -1 to ptr), ptr noundef %4) #13, !dbg !1897
  store ptr %5, ptr %3, align 8, !dbg !1895
  %6 = load ptr, ptr %3, align 8, !dbg !1898
  %7 = icmp ne ptr %6, null, !dbg !1898
  br i1 %7, label %11, label %8, !dbg !1900

8:                                                ; preds = %1
  %9 = load ptr, ptr %2, align 8, !dbg !1901
  %10 = call ptr @dlsym(ptr noundef null, ptr noundef %9) #13, !dbg !1902
  store ptr %10, ptr %3, align 8, !dbg !1903
  br label %11, !dbg !1904

11:                                               ; preds = %8, %1
  %12 = load ptr, ptr %3, align 8, !dbg !1905
  ret ptr %12, !dbg !1906
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parse_listener_prefix_authorization(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !1907 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1910, metadata !DIExpression()), !dbg !1911
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1912, metadata !DIExpression()), !dbg !1913
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1914, metadata !DIExpression()), !dbg !1915
  %7 = load ptr, ptr %5, align 8, !dbg !1916
  %8 = getelementptr inbounds %struct.config_line_t_, ptr %7, i32 0, i32 0, !dbg !1918
  %9 = getelementptr inbounds %struct.anon.9, ptr %8, i32 0, i32 1, !dbg !1919
  %10 = load ptr, ptr %9, align 8, !dbg !1919
  %11 = call i32 @strcmp(ptr noundef %10, ptr noundef @.str.49) #15, !dbg !1920
  %12 = icmp ne i32 %11, 0, !dbg !1920
  br i1 %12, label %13, label %16, !dbg !1921

13:                                               ; preds = %3
  %14 = load ptr, ptr %4, align 8, !dbg !1922
  %15 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %14, ptr noundef @.str.50), !dbg !1924
  br label %115, !dbg !1925

16:                                               ; preds = %3
  %17 = load ptr, ptr %6, align 8, !dbg !1926
  %18 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %17, i32 0, i32 7, !dbg !1927
  call void @llvm.memset.p0.i64(ptr align 8 %18, i8 0, i64 16, i1 false), !dbg !1928
  br label %19, !dbg !1929

19:                                               ; preds = %103, %16
  %20 = load ptr, ptr %4, align 8, !dbg !1930
  %21 = load ptr, ptr %5, align 8, !dbg !1931
  %22 = call zeroext i1 @config_read_line(ptr noundef %20, ptr noundef %21), !dbg !1932
  br i1 %22, label %23, label %104, !dbg !1929

23:                                               ; preds = %19
  %24 = load ptr, ptr %5, align 8, !dbg !1933
  %25 = getelementptr inbounds %struct.config_line_t_, ptr %24, i32 0, i32 1, !dbg !1935
  %26 = load i32, ptr %25, align 8, !dbg !1935
  switch i32 %26, label %103 [
    i32 0, label %27
    i32 1, label %69
    i32 2, label %76
  ], !dbg !1936

27:                                               ; preds = %23
  %28 = load ptr, ptr %5, align 8, !dbg !1937
  %29 = getelementptr inbounds %struct.config_line_t_, ptr %28, i32 0, i32 0, !dbg !1940
  %30 = getelementptr inbounds %struct.anon.10, ptr %29, i32 0, i32 0, !dbg !1941
  %31 = load ptr, ptr %30, align 8, !dbg !1941
  %32 = call i32 @strcmp(ptr noundef %31, ptr noundef @.str.51) #15, !dbg !1942
  %33 = icmp ne i32 %32, 0, !dbg !1942
  br i1 %33, label %47, label %34, !dbg !1943

34:                                               ; preds = %27
  %35 = load ptr, ptr %6, align 8, !dbg !1944
  %36 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %35, i32 0, i32 7, !dbg !1946
  %37 = getelementptr inbounds %struct.anon.6, ptr %36, i32 0, i32 0, !dbg !1947
  %38 = load ptr, ptr %37, align 8, !dbg !1947
  call void @free(ptr noundef %38) #13, !dbg !1948
  %39 = load ptr, ptr %5, align 8, !dbg !1949
  %40 = getelementptr inbounds %struct.config_line_t_, ptr %39, i32 0, i32 0, !dbg !1950
  %41 = getelementptr inbounds %struct.anon.10, ptr %40, i32 0, i32 1, !dbg !1951
  %42 = load ptr, ptr %41, align 8, !dbg !1951
  %43 = call noalias ptr @strdup(ptr noundef %42) #13, !dbg !1952
  %44 = load ptr, ptr %6, align 8, !dbg !1953
  %45 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %44, i32 0, i32 7, !dbg !1954
  %46 = getelementptr inbounds %struct.anon.6, ptr %45, i32 0, i32 0, !dbg !1955
  store ptr %43, ptr %46, align 8, !dbg !1956
  br label %68, !dbg !1957

47:                                               ; preds = %27
  %48 = load ptr, ptr %5, align 8, !dbg !1958
  %49 = getelementptr inbounds %struct.config_line_t_, ptr %48, i32 0, i32 0, !dbg !1960
  %50 = getelementptr inbounds %struct.anon.10, ptr %49, i32 0, i32 0, !dbg !1961
  %51 = load ptr, ptr %50, align 8, !dbg !1961
  %52 = call i32 @strcmp(ptr noundef %51, ptr noundef @.str.52) #15, !dbg !1962
  %53 = icmp ne i32 %52, 0, !dbg !1962
  br i1 %53, label %67, label %54, !dbg !1963

54:                                               ; preds = %47
  %55 = load ptr, ptr %6, align 8, !dbg !1964
  %56 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %55, i32 0, i32 7, !dbg !1966
  %57 = getelementptr inbounds %struct.anon.6, ptr %56, i32 0, i32 1, !dbg !1967
  %58 = load ptr, ptr %57, align 8, !dbg !1967
  call void @free(ptr noundef %58) #13, !dbg !1968
  %59 = load ptr, ptr %5, align 8, !dbg !1969
  %60 = getelementptr inbounds %struct.config_line_t_, ptr %59, i32 0, i32 0, !dbg !1970
  %61 = getelementptr inbounds %struct.anon.10, ptr %60, i32 0, i32 1, !dbg !1971
  %62 = load ptr, ptr %61, align 8, !dbg !1971
  %63 = call noalias ptr @strdup(ptr noundef %62) #13, !dbg !1972
  %64 = load ptr, ptr %6, align 8, !dbg !1973
  %65 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %64, i32 0, i32 7, !dbg !1974
  %66 = getelementptr inbounds %struct.anon.6, ptr %65, i32 0, i32 1, !dbg !1975
  store ptr %63, ptr %66, align 8, !dbg !1976
  br label %67, !dbg !1977

67:                                               ; preds = %54, %47
  br label %68

68:                                               ; preds = %67, %34
  br label %103, !dbg !1978

69:                                               ; preds = %23
  %70 = load ptr, ptr %4, align 8, !dbg !1979
  %71 = load ptr, ptr %5, align 8, !dbg !1980
  %72 = getelementptr inbounds %struct.config_line_t_, ptr %71, i32 0, i32 0, !dbg !1981
  %73 = getelementptr inbounds %struct.anon.9, ptr %72, i32 0, i32 0, !dbg !1982
  %74 = load ptr, ptr %73, align 8, !dbg !1982
  %75 = call zeroext i1 (ptr, ptr, ...) @config_error(ptr noundef %70, ptr noundef @.str.53, ptr noundef %74), !dbg !1983
  br label %106, !dbg !1984

76:                                               ; preds = %23
  %77 = load ptr, ptr %6, align 8, !dbg !1985
  %78 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %77, i32 0, i32 7, !dbg !1987
  %79 = getelementptr inbounds %struct.anon.6, ptr %78, i32 0, i32 0, !dbg !1988
  %80 = load ptr, ptr %79, align 8, !dbg !1988
  %81 = icmp ne ptr %80, null, !dbg !1985
  br i1 %81, label %87, label %82, !dbg !1989

82:                                               ; preds = %76
  %83 = call noalias ptr @strdup(ptr noundef @.str.54) #13, !dbg !1990
  %84 = load ptr, ptr %6, align 8, !dbg !1991
  %85 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %84, i32 0, i32 7, !dbg !1992
  %86 = getelementptr inbounds %struct.anon.6, ptr %85, i32 0, i32 0, !dbg !1993
  store ptr %83, ptr %86, align 8, !dbg !1994
  br label %87, !dbg !1991

87:                                               ; preds = %82, %76
  %88 = load ptr, ptr %6, align 8, !dbg !1995
  %89 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %88, i32 0, i32 7, !dbg !1997
  %90 = getelementptr inbounds %struct.anon.6, ptr %89, i32 0, i32 1, !dbg !1998
  %91 = load ptr, ptr %90, align 8, !dbg !1998
  %92 = icmp ne ptr %91, null, !dbg !1995
  br i1 %92, label %98, label %93, !dbg !1999

93:                                               ; preds = %87
  %94 = call noalias ptr @strdup(ptr noundef @.str.55) #13, !dbg !2000
  %95 = load ptr, ptr %6, align 8, !dbg !2001
  %96 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %95, i32 0, i32 7, !dbg !2002
  %97 = getelementptr inbounds %struct.anon.6, ptr %96, i32 0, i32 1, !dbg !2003
  store ptr %94, ptr %97, align 8, !dbg !2004
  br label %98, !dbg !2001

98:                                               ; preds = %93, %87
  %99 = load ptr, ptr %6, align 8, !dbg !2005
  %100 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %99, i32 0, i32 4, !dbg !2006
  %101 = load i32, ptr %100, align 8, !dbg !2007
  %102 = or i32 %101, 32, !dbg !2007
  store i32 %102, ptr %100, align 8, !dbg !2007
  br label %105, !dbg !2008

103:                                              ; preds = %23, %68
  br label %19, !dbg !1929, !llvm.loop !2009

104:                                              ; preds = %19
  br label %105, !dbg !1929

105:                                              ; preds = %104, %98
  call void @llvm.dbg.label(metadata !2011), !dbg !2012
  br label %115, !dbg !2013

106:                                              ; preds = %69
  call void @llvm.dbg.label(metadata !2014), !dbg !2015
  %107 = load ptr, ptr %6, align 8, !dbg !2016
  %108 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %107, i32 0, i32 7, !dbg !2017
  %109 = getelementptr inbounds %struct.anon.6, ptr %108, i32 0, i32 0, !dbg !2018
  %110 = load ptr, ptr %109, align 8, !dbg !2018
  call void @free(ptr noundef %110) #13, !dbg !2019
  %111 = load ptr, ptr %6, align 8, !dbg !2020
  %112 = getelementptr inbounds %struct.lwan_url_map_t_, ptr %111, i32 0, i32 7, !dbg !2021
  %113 = getelementptr inbounds %struct.anon.6, ptr %112, i32 0, i32 1, !dbg !2022
  %114 = load ptr, ptr %113, align 8, !dbg !2022
  call void @free(ptr noundef %114) #13, !dbg !2023
  br label %115, !dbg !2024

115:                                              ; preds = %106, %105, %13
  ret void, !dbg !2024
}

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) #4

declare ptr @hash_find(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #4

; Function Attrs: nounwind
declare i32 @getrlimit(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind
declare i32 @setrlimit(i32 noundef, ptr noundef) #4

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #11

declare void @lwan_thread_add_client(ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { noreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { nounwind allocsize(0,1) }
attributes #17 = { noreturn nounwind }
attributes #18 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!35}
!llvm.module.flags = !{!597, !598, !599, !600, !601, !602, !603}
!llvm.ident = !{!604}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "b45b64bdafc0e6707cec9025aee73c17")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 29)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 17)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 253, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 26)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 308, type: !20, isLocal: true, isDefinition: true)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 120, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 15)
!23 = !DIGlobalVariableExpression(var: !24, expr: !DIExpression())
!24 = distinct !DIGlobalVariable(scope: null, file: !2, line: 315, type: !25, isLocal: true, isDefinition: true)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: 8)
!28 = !DIGlobalVariableExpression(var: !29, expr: !DIExpression())
!29 = distinct !DIGlobalVariable(scope: null, file: !2, line: 322, type: !30, isLocal: true, isDefinition: true)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: 10)
!33 = !DIGlobalVariableExpression(var: !34, expr: !DIExpression())
!34 = distinct !DIGlobalVariable(name: "default_config", scope: !35, file: !2, line: 44, type: !586, isLocal: true, isDefinition: true)
!35 = distinct !DICompileUnit(language: DW_LANG_C11, file: !36, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !37, retainedTypes: !349, globals: !363, splitDebugInlining: false, nameTableKind: None)
!36 = !DIFile(filename: "/home/raj/lwan/common/lwan.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "b45b64bdafc0e6707cec9025aee73c17")
!37 = !{!38, !48, !67, !79, !89, !101, !107, !327}
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 158, baseType: !40, size: 32, elements: !41)
!39 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !DIEnumerator(name: "CONN_MASK", value: -1)
!43 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!44 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!45 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!46 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!47 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 114, baseType: !49, size: 32, elements: !50)
!49 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66}
!51 = !DIEnumerator(name: "HTTP_OK", value: 200)
!52 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!53 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!54 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!55 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!56 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!57 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!58 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!59 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!60 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!61 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!62 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!63 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!64 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!65 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!66 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 145, baseType: !40, size: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!69 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!70 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!71 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!72 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!73 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!74 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!75 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!76 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!77 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!78 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !39, line: 133, baseType: !49, size: 32, elements: !80)
!80 = !{!81, !82, !83, !84, !85, !86, !87, !88}
!81 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!82 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!83 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!84 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!85 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!86 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!87 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!88 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !90, line: 24, baseType: !49, size: 32, elements: !91)
!90 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100}
!92 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!93 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!94 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!95 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!96 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!97 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!98 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!99 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!100 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !102, line: 35, baseType: !49, size: 32, elements: !103)
!102 = !DIFile(filename: "common/lwan-config.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "7586af514a363878312816f8ee308270")
!103 = !{!104, !105, !106}
!104 = !DIEnumerator(name: "CONFIG_LINE_TYPE_LINE", value: 0)
!105 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION", value: 1)
!106 = !DIEnumerator(name: "CONFIG_LINE_TYPE_SECTION_END", value: 2)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 71, baseType: !49, size: 32, elements: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/confname.h", directory: "", checksumkind: CSK_MD5, checksum: "78b98c9476f9b4c41f6f4ea6bcb3195f")
!109 = !{!110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326}
!110 = !DIEnumerator(name: "_SC_ARG_MAX", value: 0)
!111 = !DIEnumerator(name: "_SC_CHILD_MAX", value: 1)
!112 = !DIEnumerator(name: "_SC_CLK_TCK", value: 2)
!113 = !DIEnumerator(name: "_SC_NGROUPS_MAX", value: 3)
!114 = !DIEnumerator(name: "_SC_OPEN_MAX", value: 4)
!115 = !DIEnumerator(name: "_SC_STREAM_MAX", value: 5)
!116 = !DIEnumerator(name: "_SC_TZNAME_MAX", value: 6)
!117 = !DIEnumerator(name: "_SC_JOB_CONTROL", value: 7)
!118 = !DIEnumerator(name: "_SC_SAVED_IDS", value: 8)
!119 = !DIEnumerator(name: "_SC_REALTIME_SIGNALS", value: 9)
!120 = !DIEnumerator(name: "_SC_PRIORITY_SCHEDULING", value: 10)
!121 = !DIEnumerator(name: "_SC_TIMERS", value: 11)
!122 = !DIEnumerator(name: "_SC_ASYNCHRONOUS_IO", value: 12)
!123 = !DIEnumerator(name: "_SC_PRIORITIZED_IO", value: 13)
!124 = !DIEnumerator(name: "_SC_SYNCHRONIZED_IO", value: 14)
!125 = !DIEnumerator(name: "_SC_FSYNC", value: 15)
!126 = !DIEnumerator(name: "_SC_MAPPED_FILES", value: 16)
!127 = !DIEnumerator(name: "_SC_MEMLOCK", value: 17)
!128 = !DIEnumerator(name: "_SC_MEMLOCK_RANGE", value: 18)
!129 = !DIEnumerator(name: "_SC_MEMORY_PROTECTION", value: 19)
!130 = !DIEnumerator(name: "_SC_MESSAGE_PASSING", value: 20)
!131 = !DIEnumerator(name: "_SC_SEMAPHORES", value: 21)
!132 = !DIEnumerator(name: "_SC_SHARED_MEMORY_OBJECTS", value: 22)
!133 = !DIEnumerator(name: "_SC_AIO_LISTIO_MAX", value: 23)
!134 = !DIEnumerator(name: "_SC_AIO_MAX", value: 24)
!135 = !DIEnumerator(name: "_SC_AIO_PRIO_DELTA_MAX", value: 25)
!136 = !DIEnumerator(name: "_SC_DELAYTIMER_MAX", value: 26)
!137 = !DIEnumerator(name: "_SC_MQ_OPEN_MAX", value: 27)
!138 = !DIEnumerator(name: "_SC_MQ_PRIO_MAX", value: 28)
!139 = !DIEnumerator(name: "_SC_VERSION", value: 29)
!140 = !DIEnumerator(name: "_SC_PAGESIZE", value: 30)
!141 = !DIEnumerator(name: "_SC_RTSIG_MAX", value: 31)
!142 = !DIEnumerator(name: "_SC_SEM_NSEMS_MAX", value: 32)
!143 = !DIEnumerator(name: "_SC_SEM_VALUE_MAX", value: 33)
!144 = !DIEnumerator(name: "_SC_SIGQUEUE_MAX", value: 34)
!145 = !DIEnumerator(name: "_SC_TIMER_MAX", value: 35)
!146 = !DIEnumerator(name: "_SC_BC_BASE_MAX", value: 36)
!147 = !DIEnumerator(name: "_SC_BC_DIM_MAX", value: 37)
!148 = !DIEnumerator(name: "_SC_BC_SCALE_MAX", value: 38)
!149 = !DIEnumerator(name: "_SC_BC_STRING_MAX", value: 39)
!150 = !DIEnumerator(name: "_SC_COLL_WEIGHTS_MAX", value: 40)
!151 = !DIEnumerator(name: "_SC_EQUIV_CLASS_MAX", value: 41)
!152 = !DIEnumerator(name: "_SC_EXPR_NEST_MAX", value: 42)
!153 = !DIEnumerator(name: "_SC_LINE_MAX", value: 43)
!154 = !DIEnumerator(name: "_SC_RE_DUP_MAX", value: 44)
!155 = !DIEnumerator(name: "_SC_CHARCLASS_NAME_MAX", value: 45)
!156 = !DIEnumerator(name: "_SC_2_VERSION", value: 46)
!157 = !DIEnumerator(name: "_SC_2_C_BIND", value: 47)
!158 = !DIEnumerator(name: "_SC_2_C_DEV", value: 48)
!159 = !DIEnumerator(name: "_SC_2_FORT_DEV", value: 49)
!160 = !DIEnumerator(name: "_SC_2_FORT_RUN", value: 50)
!161 = !DIEnumerator(name: "_SC_2_SW_DEV", value: 51)
!162 = !DIEnumerator(name: "_SC_2_LOCALEDEF", value: 52)
!163 = !DIEnumerator(name: "_SC_PII", value: 53)
!164 = !DIEnumerator(name: "_SC_PII_XTI", value: 54)
!165 = !DIEnumerator(name: "_SC_PII_SOCKET", value: 55)
!166 = !DIEnumerator(name: "_SC_PII_INTERNET", value: 56)
!167 = !DIEnumerator(name: "_SC_PII_OSI", value: 57)
!168 = !DIEnumerator(name: "_SC_POLL", value: 58)
!169 = !DIEnumerator(name: "_SC_SELECT", value: 59)
!170 = !DIEnumerator(name: "_SC_UIO_MAXIOV", value: 60)
!171 = !DIEnumerator(name: "_SC_IOV_MAX", value: 60)
!172 = !DIEnumerator(name: "_SC_PII_INTERNET_STREAM", value: 61)
!173 = !DIEnumerator(name: "_SC_PII_INTERNET_DGRAM", value: 62)
!174 = !DIEnumerator(name: "_SC_PII_OSI_COTS", value: 63)
!175 = !DIEnumerator(name: "_SC_PII_OSI_CLTS", value: 64)
!176 = !DIEnumerator(name: "_SC_PII_OSI_M", value: 65)
!177 = !DIEnumerator(name: "_SC_T_IOV_MAX", value: 66)
!178 = !DIEnumerator(name: "_SC_THREADS", value: 67)
!179 = !DIEnumerator(name: "_SC_THREAD_SAFE_FUNCTIONS", value: 68)
!180 = !DIEnumerator(name: "_SC_GETGR_R_SIZE_MAX", value: 69)
!181 = !DIEnumerator(name: "_SC_GETPW_R_SIZE_MAX", value: 70)
!182 = !DIEnumerator(name: "_SC_LOGIN_NAME_MAX", value: 71)
!183 = !DIEnumerator(name: "_SC_TTY_NAME_MAX", value: 72)
!184 = !DIEnumerator(name: "_SC_THREAD_DESTRUCTOR_ITERATIONS", value: 73)
!185 = !DIEnumerator(name: "_SC_THREAD_KEYS_MAX", value: 74)
!186 = !DIEnumerator(name: "_SC_THREAD_STACK_MIN", value: 75)
!187 = !DIEnumerator(name: "_SC_THREAD_THREADS_MAX", value: 76)
!188 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKADDR", value: 77)
!189 = !DIEnumerator(name: "_SC_THREAD_ATTR_STACKSIZE", value: 78)
!190 = !DIEnumerator(name: "_SC_THREAD_PRIORITY_SCHEDULING", value: 79)
!191 = !DIEnumerator(name: "_SC_THREAD_PRIO_INHERIT", value: 80)
!192 = !DIEnumerator(name: "_SC_THREAD_PRIO_PROTECT", value: 81)
!193 = !DIEnumerator(name: "_SC_THREAD_PROCESS_SHARED", value: 82)
!194 = !DIEnumerator(name: "_SC_NPROCESSORS_CONF", value: 83)
!195 = !DIEnumerator(name: "_SC_NPROCESSORS_ONLN", value: 84)
!196 = !DIEnumerator(name: "_SC_PHYS_PAGES", value: 85)
!197 = !DIEnumerator(name: "_SC_AVPHYS_PAGES", value: 86)
!198 = !DIEnumerator(name: "_SC_ATEXIT_MAX", value: 87)
!199 = !DIEnumerator(name: "_SC_PASS_MAX", value: 88)
!200 = !DIEnumerator(name: "_SC_XOPEN_VERSION", value: 89)
!201 = !DIEnumerator(name: "_SC_XOPEN_XCU_VERSION", value: 90)
!202 = !DIEnumerator(name: "_SC_XOPEN_UNIX", value: 91)
!203 = !DIEnumerator(name: "_SC_XOPEN_CRYPT", value: 92)
!204 = !DIEnumerator(name: "_SC_XOPEN_ENH_I18N", value: 93)
!205 = !DIEnumerator(name: "_SC_XOPEN_SHM", value: 94)
!206 = !DIEnumerator(name: "_SC_2_CHAR_TERM", value: 95)
!207 = !DIEnumerator(name: "_SC_2_C_VERSION", value: 96)
!208 = !DIEnumerator(name: "_SC_2_UPE", value: 97)
!209 = !DIEnumerator(name: "_SC_XOPEN_XPG2", value: 98)
!210 = !DIEnumerator(name: "_SC_XOPEN_XPG3", value: 99)
!211 = !DIEnumerator(name: "_SC_XOPEN_XPG4", value: 100)
!212 = !DIEnumerator(name: "_SC_CHAR_BIT", value: 101)
!213 = !DIEnumerator(name: "_SC_CHAR_MAX", value: 102)
!214 = !DIEnumerator(name: "_SC_CHAR_MIN", value: 103)
!215 = !DIEnumerator(name: "_SC_INT_MAX", value: 104)
!216 = !DIEnumerator(name: "_SC_INT_MIN", value: 105)
!217 = !DIEnumerator(name: "_SC_LONG_BIT", value: 106)
!218 = !DIEnumerator(name: "_SC_WORD_BIT", value: 107)
!219 = !DIEnumerator(name: "_SC_MB_LEN_MAX", value: 108)
!220 = !DIEnumerator(name: "_SC_NZERO", value: 109)
!221 = !DIEnumerator(name: "_SC_SSIZE_MAX", value: 110)
!222 = !DIEnumerator(name: "_SC_SCHAR_MAX", value: 111)
!223 = !DIEnumerator(name: "_SC_SCHAR_MIN", value: 112)
!224 = !DIEnumerator(name: "_SC_SHRT_MAX", value: 113)
!225 = !DIEnumerator(name: "_SC_SHRT_MIN", value: 114)
!226 = !DIEnumerator(name: "_SC_UCHAR_MAX", value: 115)
!227 = !DIEnumerator(name: "_SC_UINT_MAX", value: 116)
!228 = !DIEnumerator(name: "_SC_ULONG_MAX", value: 117)
!229 = !DIEnumerator(name: "_SC_USHRT_MAX", value: 118)
!230 = !DIEnumerator(name: "_SC_NL_ARGMAX", value: 119)
!231 = !DIEnumerator(name: "_SC_NL_LANGMAX", value: 120)
!232 = !DIEnumerator(name: "_SC_NL_MSGMAX", value: 121)
!233 = !DIEnumerator(name: "_SC_NL_NMAX", value: 122)
!234 = !DIEnumerator(name: "_SC_NL_SETMAX", value: 123)
!235 = !DIEnumerator(name: "_SC_NL_TEXTMAX", value: 124)
!236 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFF32", value: 125)
!237 = !DIEnumerator(name: "_SC_XBS5_ILP32_OFFBIG", value: 126)
!238 = !DIEnumerator(name: "_SC_XBS5_LP64_OFF64", value: 127)
!239 = !DIEnumerator(name: "_SC_XBS5_LPBIG_OFFBIG", value: 128)
!240 = !DIEnumerator(name: "_SC_XOPEN_LEGACY", value: 129)
!241 = !DIEnumerator(name: "_SC_XOPEN_REALTIME", value: 130)
!242 = !DIEnumerator(name: "_SC_XOPEN_REALTIME_THREADS", value: 131)
!243 = !DIEnumerator(name: "_SC_ADVISORY_INFO", value: 132)
!244 = !DIEnumerator(name: "_SC_BARRIERS", value: 133)
!245 = !DIEnumerator(name: "_SC_BASE", value: 134)
!246 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT", value: 135)
!247 = !DIEnumerator(name: "_SC_C_LANG_SUPPORT_R", value: 136)
!248 = !DIEnumerator(name: "_SC_CLOCK_SELECTION", value: 137)
!249 = !DIEnumerator(name: "_SC_CPUTIME", value: 138)
!250 = !DIEnumerator(name: "_SC_THREAD_CPUTIME", value: 139)
!251 = !DIEnumerator(name: "_SC_DEVICE_IO", value: 140)
!252 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC", value: 141)
!253 = !DIEnumerator(name: "_SC_DEVICE_SPECIFIC_R", value: 142)
!254 = !DIEnumerator(name: "_SC_FD_MGMT", value: 143)
!255 = !DIEnumerator(name: "_SC_FIFO", value: 144)
!256 = !DIEnumerator(name: "_SC_PIPE", value: 145)
!257 = !DIEnumerator(name: "_SC_FILE_ATTRIBUTES", value: 146)
!258 = !DIEnumerator(name: "_SC_FILE_LOCKING", value: 147)
!259 = !DIEnumerator(name: "_SC_FILE_SYSTEM", value: 148)
!260 = !DIEnumerator(name: "_SC_MONOTONIC_CLOCK", value: 149)
!261 = !DIEnumerator(name: "_SC_MULTI_PROCESS", value: 150)
!262 = !DIEnumerator(name: "_SC_SINGLE_PROCESS", value: 151)
!263 = !DIEnumerator(name: "_SC_NETWORKING", value: 152)
!264 = !DIEnumerator(name: "_SC_READER_WRITER_LOCKS", value: 153)
!265 = !DIEnumerator(name: "_SC_SPIN_LOCKS", value: 154)
!266 = !DIEnumerator(name: "_SC_REGEXP", value: 155)
!267 = !DIEnumerator(name: "_SC_REGEX_VERSION", value: 156)
!268 = !DIEnumerator(name: "_SC_SHELL", value: 157)
!269 = !DIEnumerator(name: "_SC_SIGNALS", value: 158)
!270 = !DIEnumerator(name: "_SC_SPAWN", value: 159)
!271 = !DIEnumerator(name: "_SC_SPORADIC_SERVER", value: 160)
!272 = !DIEnumerator(name: "_SC_THREAD_SPORADIC_SERVER", value: 161)
!273 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE", value: 162)
!274 = !DIEnumerator(name: "_SC_SYSTEM_DATABASE_R", value: 163)
!275 = !DIEnumerator(name: "_SC_TIMEOUTS", value: 164)
!276 = !DIEnumerator(name: "_SC_TYPED_MEMORY_OBJECTS", value: 165)
!277 = !DIEnumerator(name: "_SC_USER_GROUPS", value: 166)
!278 = !DIEnumerator(name: "_SC_USER_GROUPS_R", value: 167)
!279 = !DIEnumerator(name: "_SC_2_PBS", value: 168)
!280 = !DIEnumerator(name: "_SC_2_PBS_ACCOUNTING", value: 169)
!281 = !DIEnumerator(name: "_SC_2_PBS_LOCATE", value: 170)
!282 = !DIEnumerator(name: "_SC_2_PBS_MESSAGE", value: 171)
!283 = !DIEnumerator(name: "_SC_2_PBS_TRACK", value: 172)
!284 = !DIEnumerator(name: "_SC_SYMLOOP_MAX", value: 173)
!285 = !DIEnumerator(name: "_SC_STREAMS", value: 174)
!286 = !DIEnumerator(name: "_SC_2_PBS_CHECKPOINT", value: 175)
!287 = !DIEnumerator(name: "_SC_V6_ILP32_OFF32", value: 176)
!288 = !DIEnumerator(name: "_SC_V6_ILP32_OFFBIG", value: 177)
!289 = !DIEnumerator(name: "_SC_V6_LP64_OFF64", value: 178)
!290 = !DIEnumerator(name: "_SC_V6_LPBIG_OFFBIG", value: 179)
!291 = !DIEnumerator(name: "_SC_HOST_NAME_MAX", value: 180)
!292 = !DIEnumerator(name: "_SC_TRACE", value: 181)
!293 = !DIEnumerator(name: "_SC_TRACE_EVENT_FILTER", value: 182)
!294 = !DIEnumerator(name: "_SC_TRACE_INHERIT", value: 183)
!295 = !DIEnumerator(name: "_SC_TRACE_LOG", value: 184)
!296 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_SIZE", value: 185)
!297 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_ASSOC", value: 186)
!298 = !DIEnumerator(name: "_SC_LEVEL1_ICACHE_LINESIZE", value: 187)
!299 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_SIZE", value: 188)
!300 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_ASSOC", value: 189)
!301 = !DIEnumerator(name: "_SC_LEVEL1_DCACHE_LINESIZE", value: 190)
!302 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_SIZE", value: 191)
!303 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_ASSOC", value: 192)
!304 = !DIEnumerator(name: "_SC_LEVEL2_CACHE_LINESIZE", value: 193)
!305 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_SIZE", value: 194)
!306 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_ASSOC", value: 195)
!307 = !DIEnumerator(name: "_SC_LEVEL3_CACHE_LINESIZE", value: 196)
!308 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_SIZE", value: 197)
!309 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_ASSOC", value: 198)
!310 = !DIEnumerator(name: "_SC_LEVEL4_CACHE_LINESIZE", value: 199)
!311 = !DIEnumerator(name: "_SC_IPV6", value: 235)
!312 = !DIEnumerator(name: "_SC_RAW_SOCKETS", value: 236)
!313 = !DIEnumerator(name: "_SC_V7_ILP32_OFF32", value: 237)
!314 = !DIEnumerator(name: "_SC_V7_ILP32_OFFBIG", value: 238)
!315 = !DIEnumerator(name: "_SC_V7_LP64_OFF64", value: 239)
!316 = !DIEnumerator(name: "_SC_V7_LPBIG_OFFBIG", value: 240)
!317 = !DIEnumerator(name: "_SC_SS_REPL_MAX", value: 241)
!318 = !DIEnumerator(name: "_SC_TRACE_EVENT_NAME_MAX", value: 242)
!319 = !DIEnumerator(name: "_SC_TRACE_NAME_MAX", value: 243)
!320 = !DIEnumerator(name: "_SC_TRACE_SYS_MAX", value: 244)
!321 = !DIEnumerator(name: "_SC_TRACE_USER_EVENT_MAX", value: 245)
!322 = !DIEnumerator(name: "_SC_XOPEN_STREAMS", value: 246)
!323 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_INHERIT", value: 247)
!324 = !DIEnumerator(name: "_SC_THREAD_ROBUST_PRIO_PROTECT", value: 248)
!325 = !DIEnumerator(name: "_SC_MINSIGSTKSZ", value: 249)
!326 = !DIEnumerator(name: "_SC_SIGSTKSZ", value: 250)
!327 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__rlimit_resource", file: !328, line: 31, baseType: !49, size: 32, elements: !329)
!328 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/resource.h", directory: "", checksumkind: CSK_MD5, checksum: "bb0bdc9e7ae341ef435e98e05276a863")
!329 = !{!330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348}
!330 = !DIEnumerator(name: "RLIMIT_CPU", value: 0)
!331 = !DIEnumerator(name: "RLIMIT_FSIZE", value: 1)
!332 = !DIEnumerator(name: "RLIMIT_DATA", value: 2)
!333 = !DIEnumerator(name: "RLIMIT_STACK", value: 3)
!334 = !DIEnumerator(name: "RLIMIT_CORE", value: 4)
!335 = !DIEnumerator(name: "__RLIMIT_RSS", value: 5)
!336 = !DIEnumerator(name: "RLIMIT_NOFILE", value: 7)
!337 = !DIEnumerator(name: "__RLIMIT_OFILE", value: 7)
!338 = !DIEnumerator(name: "RLIMIT_AS", value: 9)
!339 = !DIEnumerator(name: "__RLIMIT_NPROC", value: 6)
!340 = !DIEnumerator(name: "__RLIMIT_MEMLOCK", value: 8)
!341 = !DIEnumerator(name: "__RLIMIT_LOCKS", value: 10)
!342 = !DIEnumerator(name: "__RLIMIT_SIGPENDING", value: 11)
!343 = !DIEnumerator(name: "__RLIMIT_MSGQUEUE", value: 12)
!344 = !DIEnumerator(name: "__RLIMIT_NICE", value: 13)
!345 = !DIEnumerator(name: "__RLIMIT_RTPRIO", value: 14)
!346 = !DIEnumerator(name: "__RLIMIT_RTTIME", value: 15)
!347 = !DIEnumerator(name: "__RLIMIT_NLIMITS", value: 16)
!348 = !DIEnumerator(name: "__RLIM_NLIMITS", value: 16)
!349 = !{!350, !49, !353, !358, !359, !360, !361}
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !351, line: 46, baseType: !352)
!351 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!352 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!353 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sighandler_t", file: !354, line: 72, baseType: !355)
!354 = !DIFile(filename: "/usr/include/signal.h", directory: "", checksumkind: CSK_MD5, checksum: "331e107bf774bb600ec675d0db0b92ce")
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{null, !40}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!360 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__rlim_t", file: !362, line: 157, baseType: !352)
!362 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!363 = !{!0, !7, !13, !18, !23, !28, !364, !369, !374, !376, !381, !386, !389, !394, !399, !404, !407, !409, !411, !416, !419, !424, !429, !434, !33, !436, !438, !440, !445, !450, !455, !458, !463, !468, !473, !478, !480, !482, !484, !486, !491, !493, !498, !500, !502, !504, !506, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !536, !541, !543, !548, !550, !552, !554, !559, !561, !564, !569, !572, !574, !576, !578, !580}
!364 = !DIGlobalVariableExpression(var: !365, expr: !DIExpression())
!365 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !366, isLocal: true, isDefinition: true)
!366 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 176, elements: !367)
!367 = !{!368}
!368 = !DISubrange(count: 22)
!369 = !DIGlobalVariableExpression(var: !370, expr: !DIExpression())
!370 = distinct !DIGlobalVariable(scope: null, file: !2, line: 473, type: !371, isLocal: true, isDefinition: true)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 43)
!374 = !DIGlobalVariableExpression(var: !375, expr: !DIExpression())
!375 = distinct !DIGlobalVariable(scope: null, file: !2, line: 477, type: !3, isLocal: true, isDefinition: true)
!376 = !DIGlobalVariableExpression(var: !377, expr: !DIExpression())
!377 = distinct !DIGlobalVariable(scope: null, file: !2, line: 491, type: !378, isLocal: true, isDefinition: true)
!378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !379)
!379 = !{!380}
!380 = !DISubrange(count: 48)
!381 = !DIGlobalVariableExpression(var: !382, expr: !DIExpression())
!382 = distinct !DIGlobalVariable(scope: null, file: !2, line: 505, type: !383, isLocal: true, isDefinition: true)
!383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !384)
!384 = !{!385}
!385 = !DISubrange(count: 14)
!386 = !DIGlobalVariableExpression(var: !387, expr: !DIExpression())
!387 = distinct !DIGlobalVariable(scope: null, file: !2, line: 505, type: !388, isLocal: true, isDefinition: true)
!388 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !384)
!389 = !DIGlobalVariableExpression(var: !390, expr: !DIExpression())
!390 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !391, isLocal: true, isDefinition: true)
!391 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !392)
!392 = !{!393}
!393 = !DISubrange(count: 27)
!394 = !DIGlobalVariableExpression(var: !395, expr: !DIExpression())
!395 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !396, isLocal: true, isDefinition: true)
!396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !397)
!397 = !{!398}
!398 = !DISubrange(count: 18)
!399 = !DIGlobalVariableExpression(var: !400, expr: !DIExpression())
!400 = distinct !DIGlobalVariable(scope: null, file: !2, line: 561, type: !401, isLocal: true, isDefinition: true)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 240, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 30)
!404 = !DIGlobalVariableExpression(var: !405, expr: !DIExpression())
!405 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !406, isLocal: true, isDefinition: true)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 120, elements: !21)
!407 = !DIGlobalVariableExpression(var: !408, expr: !DIExpression())
!408 = distinct !DIGlobalVariable(scope: null, file: !2, line: 564, type: !3, isLocal: true, isDefinition: true)
!409 = !DIGlobalVariableExpression(var: !410, expr: !DIExpression())
!410 = distinct !DIGlobalVariable(scope: null, file: !2, line: 566, type: !20, isLocal: true, isDefinition: true)
!411 = !DIGlobalVariableExpression(var: !412, expr: !DIExpression())
!412 = distinct !DIGlobalVariable(scope: null, file: !2, line: 572, type: !413, isLocal: true, isDefinition: true)
!413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !414)
!414 = !{!415}
!415 = !DISubrange(count: 7)
!416 = !DIGlobalVariableExpression(var: !417, expr: !DIExpression())
!417 = distinct !DIGlobalVariable(scope: null, file: !2, line: 577, type: !418, isLocal: true, isDefinition: true)
!418 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !402)
!419 = !DIGlobalVariableExpression(var: !420, expr: !DIExpression())
!420 = distinct !DIGlobalVariable(scope: null, file: !2, line: 579, type: !421, isLocal: true, isDefinition: true)
!421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 312, elements: !422)
!422 = !{!423}
!423 = !DISubrange(count: 39)
!424 = !DIGlobalVariableExpression(var: !425, expr: !DIExpression())
!425 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !426, isLocal: true, isDefinition: true)
!426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 96, elements: !427)
!427 = !{!428}
!428 = !DISubrange(count: 12)
!429 = !DIGlobalVariableExpression(var: !430, expr: !DIExpression())
!430 = distinct !DIGlobalVariable(scope: null, file: !2, line: 111, type: !431, isLocal: true, isDefinition: true)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 23)
!434 = !DIGlobalVariableExpression(var: !435, expr: !DIExpression())
!435 = distinct !DIGlobalVariable(scope: null, file: !2, line: 45, type: !20, isLocal: true, isDefinition: true)
!436 = !DIGlobalVariableExpression(var: !437, expr: !DIExpression())
!437 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !9, isLocal: true, isDefinition: true)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !3, isLocal: true, isDefinition: true)
!440 = !DIGlobalVariableExpression(var: !441, expr: !DIExpression())
!441 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !442, isLocal: true, isDefinition: true)
!442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 168, elements: !443)
!443 = !{!444}
!444 = !DISubrange(count: 21)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 25)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 192, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 24)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 144, elements: !397)
!458 = !DIGlobalVariableExpression(var: !459, expr: !DIExpression())
!459 = distinct !DIGlobalVariable(scope: null, file: !2, line: 334, type: !460, isLocal: true, isDefinition: true)
!460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 248, elements: !461)
!461 = !{!462}
!462 = !DISubrange(count: 31)
!463 = !DIGlobalVariableExpression(var: !464, expr: !DIExpression())
!464 = distinct !DIGlobalVariable(scope: null, file: !2, line: 345, type: !465, isLocal: true, isDefinition: true)
!465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !466)
!466 = !{!467}
!467 = !DISubrange(count: 19)
!468 = !DIGlobalVariableExpression(var: !469, expr: !DIExpression())
!469 = distinct !DIGlobalVariable(scope: null, file: !2, line: 348, type: !470, isLocal: true, isDefinition: true)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 6)
!473 = !DIGlobalVariableExpression(var: !474, expr: !DIExpression())
!474 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !475, isLocal: true, isDefinition: true)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 88, elements: !476)
!476 = !{!477}
!477 = !DISubrange(count: 11)
!478 = !DIGlobalVariableExpression(var: !479, expr: !DIExpression())
!479 = distinct !DIGlobalVariable(scope: null, file: !2, line: 354, type: !25, isLocal: true, isDefinition: true)
!480 = !DIGlobalVariableExpression(var: !481, expr: !DIExpression())
!481 = distinct !DIGlobalVariable(scope: null, file: !2, line: 357, type: !25, isLocal: true, isDefinition: true)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !2, line: 360, type: !418, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(scope: null, file: !2, line: 364, type: !431, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 9)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !2, line: 372, type: !447, isLocal: true, isDefinition: true)
!493 = !DIGlobalVariableExpression(var: !494, expr: !DIExpression())
!494 = distinct !DIGlobalVariable(scope: null, file: !2, line: 374, type: !495, isLocal: true, isDefinition: true)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 28)
!498 = !DIGlobalVariableExpression(var: !499, expr: !DIExpression())
!499 = distinct !DIGlobalVariable(scope: null, file: !2, line: 378, type: !431, isLocal: true, isDefinition: true)
!500 = !DIGlobalVariableExpression(var: !501, expr: !DIExpression())
!501 = distinct !DIGlobalVariable(scope: null, file: !2, line: 383, type: !421, isLocal: true, isDefinition: true)
!502 = !DIGlobalVariableExpression(var: !503, expr: !DIExpression())
!503 = distinct !DIGlobalVariable(scope: null, file: !2, line: 278, type: !447, isLocal: true, isDefinition: true)
!504 = !DIGlobalVariableExpression(var: !505, expr: !DIExpression())
!505 = distinct !DIGlobalVariable(scope: null, file: !2, line: 281, type: !413, isLocal: true, isDefinition: true)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(scope: null, file: !2, line: 286, type: !508, isLocal: true, isDefinition: true)
!508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !509)
!509 = !{!510}
!510 = !DISubrange(count: 45)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !2, line: 298, type: !508, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(scope: null, file: !2, line: 178, type: !413, isLocal: true, isDefinition: true)
!515 = !DIGlobalVariableExpression(var: !516, expr: !DIExpression())
!516 = distinct !DIGlobalVariable(scope: null, file: !2, line: 180, type: !447, isLocal: true, isDefinition: true)
!517 = !DIGlobalVariableExpression(var: !518, expr: !DIExpression())
!518 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !391, isLocal: true, isDefinition: true)
!519 = !DIGlobalVariableExpression(var: !520, expr: !DIExpression())
!520 = distinct !DIGlobalVariable(scope: null, file: !2, line: 188, type: !25, isLocal: true, isDefinition: true)
!521 = !DIGlobalVariableExpression(var: !522, expr: !DIExpression())
!522 = distinct !DIGlobalVariable(scope: null, file: !2, line: 191, type: !495, isLocal: true, isDefinition: true)
!523 = !DIGlobalVariableExpression(var: !524, expr: !DIExpression())
!524 = distinct !DIGlobalVariable(scope: null, file: !2, line: 200, type: !388, isLocal: true, isDefinition: true)
!525 = !DIGlobalVariableExpression(var: !526, expr: !DIExpression())
!526 = distinct !DIGlobalVariable(scope: null, file: !2, line: 203, type: !391, isLocal: true, isDefinition: true)
!527 = !DIGlobalVariableExpression(var: !528, expr: !DIExpression())
!528 = distinct !DIGlobalVariable(scope: null, file: !2, line: 213, type: !371, isLocal: true, isDefinition: true)
!529 = !DIGlobalVariableExpression(var: !530, expr: !DIExpression())
!530 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !15, isLocal: true, isDefinition: true)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !2, line: 222, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 42)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(scope: null, file: !2, line: 239, type: !538, isLocal: true, isDefinition: true)
!538 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !539)
!539 = !{!540}
!540 = !DISubrange(count: 16)
!541 = !DIGlobalVariableExpression(var: !542, expr: !DIExpression())
!542 = distinct !DIGlobalVariable(scope: null, file: !2, line: 125, type: !470, isLocal: true, isDefinition: true)
!543 = !DIGlobalVariableExpression(var: !544, expr: !DIExpression())
!544 = distinct !DIGlobalVariable(scope: null, file: !2, line: 126, type: !545, isLocal: true, isDefinition: true)
!545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !546)
!546 = !{!547}
!547 = !DISubrange(count: 35)
!548 = !DIGlobalVariableExpression(var: !549, expr: !DIExpression())
!549 = distinct !DIGlobalVariable(scope: null, file: !2, line: 135, type: !470, isLocal: true, isDefinition: true)
!550 = !DIGlobalVariableExpression(var: !551, expr: !DIExpression())
!551 = distinct !DIGlobalVariable(scope: null, file: !2, line: 138, type: !388, isLocal: true, isDefinition: true)
!552 = !DIGlobalVariableExpression(var: !553, expr: !DIExpression())
!553 = distinct !DIGlobalVariable(scope: null, file: !2, line: 145, type: !431, isLocal: true, isDefinition: true)
!554 = !DIGlobalVariableExpression(var: !555, expr: !DIExpression())
!555 = distinct !DIGlobalVariable(scope: null, file: !2, line: 150, type: !556, isLocal: true, isDefinition: true)
!556 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !557)
!557 = !{!558}
!558 = !DISubrange(count: 5)
!559 = !DIGlobalVariableExpression(var: !560, expr: !DIExpression())
!560 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !488, isLocal: true, isDefinition: true)
!561 = !DIGlobalVariableExpression(var: !562, expr: !DIExpression())
!562 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !563, isLocal: true, isDefinition: true)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !466)
!564 = !DIGlobalVariableExpression(var: !565, expr: !DIExpression())
!565 = distinct !DIGlobalVariable(scope: null, file: !2, line: 427, type: !566, isLocal: true, isDefinition: true)
!566 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 416, elements: !567)
!567 = !{!568}
!568 = !DISubrange(count: 52)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !571, isLocal: true, isDefinition: true)
!571 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 232, elements: !5)
!572 = !DIGlobalVariableExpression(var: !573, expr: !DIExpression())
!573 = distinct !DIGlobalVariable(scope: null, file: !2, line: 398, type: !30, isLocal: true, isDefinition: true)
!574 = !DIGlobalVariableExpression(var: !575, expr: !DIExpression())
!575 = distinct !DIGlobalVariable(scope: null, file: !2, line: 409, type: !30, isLocal: true, isDefinition: true)
!576 = !DIGlobalVariableExpression(var: !577, expr: !DIExpression())
!577 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !442, isLocal: true, isDefinition: true)
!578 = !DIGlobalVariableExpression(var: !579, expr: !DIExpression())
!579 = distinct !DIGlobalVariable(scope: null, file: !2, line: 419, type: !413, isLocal: true, isDefinition: true)
!580 = !DIGlobalVariableExpression(var: !581, expr: !DIExpression())
!581 = distinct !DIGlobalVariable(name: "main_socket", scope: !35, file: !2, line: 547, type: !582, isLocal: true, isDefinition: true)
!582 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "sig_atomic_t", file: !584, line: 8, baseType: !585)
!584 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/sig_atomic_t.h", directory: "", checksumkind: CSK_MD5, checksum: "d9236f7e3e7f10f53aa9d4cd97f503cf")
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__sig_atomic_t", file: !362, line: 215, baseType: !40)
!586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !587)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !39, line: 111, baseType: !588)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !39, line: 266, size: 192, elements: !589)
!589 = !{!590, !591, !592, !594, !595, !596}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !588, file: !39, line: 267, baseType: !359, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !588, file: !39, line: 268, baseType: !360, size: 16, offset: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !588, file: !39, line: 269, baseType: !593, size: 8, offset: 80)
!593 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !588, file: !39, line: 270, baseType: !593, size: 8, offset: 88)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !588, file: !39, line: 271, baseType: !49, size: 32, offset: 96)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !588, file: !39, line: 272, baseType: !360, size: 16, offset: 128)
!597 = !{i32 7, !"Dwarf Version", i32 5}
!598 = !{i32 2, !"Debug Info Version", i32 3}
!599 = !{i32 1, !"wchar_size", i32 4}
!600 = !{i32 8, !"PIC Level", i32 2}
!601 = !{i32 7, !"PIE Level", i32 2}
!602 = !{i32 7, !"uwtable", i32 2}
!603 = !{i32 7, !"frame-pointer", i32 2}
!604 = !{!"clang version 16.0.0"}
!605 = distinct !DISubprogram(name: "lwan_set_url_map", scope: !2, file: !2, line: 249, type: !606, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!606 = !DISubroutineType(types: !607)
!607 = !{null, !608, !688}
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !39, line: 103, baseType: !610)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !39, line: 275, size: 640, elements: !611)
!611 = !{!612, !637, !676, !682, !686, !687}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !610, file: !39, line: 276, baseType: !613, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !614, line: 25, baseType: !615)
!614 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !614, line: 41, size: 128, elements: !616)
!616 = !{!617, !633}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !615, file: !614, line: 42, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !614, line: 26, baseType: !620)
!620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !614, line: 29, size: 640, elements: !621)
!621 = !{!622, !624, !632}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !620, file: !614, line: 30, baseType: !623, size: 512)
!623 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 512, elements: !26)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !620, file: !614, line: 31, baseType: !625, size: 64, offset: 512)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !614, line: 27, baseType: !627)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !614, line: 35, size: 192, elements: !628)
!628 = !{!629, !630, !631}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !627, file: !614, line: 36, baseType: !359, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !627, file: !614, line: 37, baseType: !358, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !614, line: 38, baseType: !625, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !620, file: !614, line: 32, baseType: !40, size: 32, offset: 576)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !615, file: !614, line: 43, baseType: !634, size: 64, offset: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{null, !358}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !610, file: !39, line: 277, baseType: !638, size: 64, offset: 128)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !39, line: 112, baseType: !640)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !39, line: 196, size: 256, elements: !641)
!641 = !{!642, !644, !645, !650, !674, !675}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !39, line: 199, baseType: !643, size: 32)
!643 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !39, line: 165, baseType: !38)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !640, file: !39, line: 200, baseType: !49, size: 32, offset: 32)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !640, file: !39, line: 201, baseType: !646, size: 64, offset: 64)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !648, line: 34, baseType: !649)
!648 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!649 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !648, line: 34, flags: DIFlagFwdDecl)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !640, file: !39, line: 202, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !39, line: 108, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !39, line: 253, size: 832, elements: !654)
!654 = !{!655, !656, !666, !667, !671}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !653, file: !39, line: 254, baseType: !608, size: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !653, file: !39, line: 259, baseType: !657, size: 576, offset: 64)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !653, file: !39, line: 255, size: 576, elements: !658)
!658 = !{!659, !660, !661}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !657, file: !39, line: 256, baseType: !418, size: 240)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !657, file: !39, line: 257, baseType: !418, size: 240, offset: 240)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !657, file: !39, line: 258, baseType: !662, size: 64, offset: 512)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !663, line: 10, baseType: !664)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !362, line: 160, baseType: !665)
!665 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !653, file: !39, line: 261, baseType: !40, size: 32, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !653, file: !39, line: 262, baseType: !668, size: 64, offset: 672)
!668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !40, size: 64, elements: !669)
!669 = !{!670}
!670 = !DISubrange(count: 2)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !653, file: !39, line: 263, baseType: !672, size: 64, offset: 768)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !673, line: 27, baseType: !352)
!673 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !640, file: !39, line: 203, baseType: !40, size: 32, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !640, file: !39, line: 203, baseType: !40, size: 32, offset: 224)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !610, file: !39, line: 283, baseType: !677, size: 128, offset: 192)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !610, file: !39, line: 279, size: 128, elements: !678)
!678 = !{!679, !680, !681}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !677, file: !39, line: 280, baseType: !651, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !677, file: !39, line: 281, baseType: !49, size: 32, offset: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !677, file: !39, line: 282, baseType: !360, size: 16, offset: 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !610, file: !39, line: 285, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !685, line: 6, flags: DIFlagFwdDecl)
!685 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!686 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !610, file: !39, line: 286, baseType: !587, size: 192, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !610, file: !39, line: 287, baseType: !40, size: 32, offset: 576)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !690)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_url_map_t", file: !39, line: 109, baseType: !691)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_url_map_t_", file: !39, line: 236, size: 576, elements: !692)
!692 = !{!693, !772, !773, !774, !775, !777, !797, !798}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !691, file: !39, line: 237, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!697, !698, !771, !358}
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !39, line: 131, baseType: !48)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !39, line: 106, baseType: !700)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !39, line: 206, size: 1280, elements: !701)
!701 = !{!702, !704, !705, !711, !712, !713, !724, !725, !737}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !700, file: !39, line: 207, baseType: !703, size: 32)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !39, line: 156, baseType: !67)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !700, file: !39, line: 208, baseType: !40, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !700, file: !39, line: 209, baseType: !706, size: 128, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !39, line: 110, baseType: !707)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !39, line: 191, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !707, file: !39, line: 192, baseType: !359, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !707, file: !39, line: 193, baseType: !350, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !700, file: !39, line: 210, baseType: !706, size: 128, offset: 192)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !700, file: !39, line: 211, baseType: !638, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !700, file: !39, line: 216, baseType: !714, size: 128, offset: 384)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !39, line: 213, size: 128, elements: !715)
!715 = !{!716, !723}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !714, file: !39, line: 214, baseType: !717, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !39, line: 105, baseType: !719)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !39, line: 173, size: 128, elements: !720)
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !719, file: !39, line: 174, baseType: !359, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !719, file: !39, line: 175, baseType: !359, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !714, file: !39, line: 215, baseType: !350, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !700, file: !39, line: 216, baseType: !714, size: 128, offset: 512)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !700, file: !39, line: 223, baseType: !726, size: 192, offset: 640)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !700, file: !39, line: 217, size: 192, elements: !727)
!727 = !{!728, !729}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !726, file: !39, line: 218, baseType: !662, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !726, file: !39, line: 222, baseType: !730, size: 128, offset: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !726, file: !39, line: 219, size: 128, elements: !731)
!731 = !{!732, !736}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !730, file: !39, line: 220, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !734, line: 243, baseType: !735)
!734 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !362, line: 152, baseType: !665)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !730, file: !39, line: 221, baseType: !733, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !700, file: !39, line: 224, baseType: !738, size: 448, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !39, line: 107, baseType: !739)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !39, line: 178, size: 448, elements: !740)
!740 = !{!741, !759, !760, !761, !762}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !739, file: !39, line: 179, baseType: !742, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !744, line: 25, baseType: !745)
!744 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !744, line: 27, size: 256, elements: !746)
!746 = !{!747, !753, !758}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !745, file: !744, line: 31, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !745, file: !744, line: 28, size: 64, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !748, file: !744, line: 29, baseType: !359, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !748, file: !744, line: 30, baseType: !752, size: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !745, file: !744, line: 34, baseType: !754, size: 128, offset: 64)
!754 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !745, file: !744, line: 32, size: 128, elements: !755)
!755 = !{!756, !757}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !754, file: !744, line: 33, baseType: !350, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !754, file: !744, line: 33, baseType: !350, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !745, file: !744, line: 35, baseType: !49, size: 32, offset: 192)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !739, file: !39, line: 180, baseType: !752, size: 64, offset: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !739, file: !39, line: 181, baseType: !350, size: 64, offset: 128)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !739, file: !39, line: 182, baseType: !717, size: 64, offset: 192)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !739, file: !39, line: 188, baseType: !763, size: 192, offset: 256)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !739, file: !39, line: 184, size: 192, elements: !764)
!764 = !{!765, !769, !770}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !763, file: !39, line: 185, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!697, !698, !358}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !763, file: !39, line: 186, baseType: !358, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !763, file: !39, line: 187, baseType: !358, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !691, file: !39, line: 238, baseType: !358, size: 64, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !691, file: !39, line: 240, baseType: !752, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prefix_len", scope: !691, file: !39, line: 241, baseType: !350, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !39, line: 242, baseType: !776, size: 32, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !39, line: 143, baseType: !79)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !691, file: !39, line: 244, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !780)
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !39, line: 104, baseType: !781)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !39, line: 227, size: 384, elements: !782)
!782 = !{!783, !784, !788, !794, !795, !796}
!783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !781, file: !39, line: 228, baseType: !752, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !781, file: !39, line: 229, baseType: !785, size: 64, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!358, !358}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !781, file: !39, line: 230, baseType: !789, size: 64, offset: 128)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DISubroutineType(types: !791)
!791 = !{!358, !792}
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !684)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !781, file: !39, line: 231, baseType: !634, size: 64, offset: 192)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !781, file: !39, line: 232, baseType: !694, size: 64, offset: 256)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !781, file: !39, line: 233, baseType: !776, size: 32, offset: 320)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !691, file: !39, line: 245, baseType: !358, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "authorization", scope: !691, file: !39, line: 250, baseType: !799, size: 128, offset: 448)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !691, file: !39, line: 247, size: 128, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "realm", scope: !799, file: !39, line: 248, baseType: !359, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "password_file", scope: !799, file: !39, line: 249, baseType: !359, size: 64, offset: 64)
!803 = !{}
!804 = !DILocalVariable(name: "l", arg: 1, scope: !605, file: !2, line: 249, type: !608)
!805 = !DILocation(line: 249, column: 31, scope: !605)
!806 = !DILocalVariable(name: "map", arg: 2, scope: !605, file: !2, line: 249, type: !688)
!807 = !DILocation(line: 249, column: 56, scope: !605)
!808 = !DILocation(line: 251, column: 24, scope: !605)
!809 = !DILocation(line: 251, column: 27, scope: !605)
!810 = !DILocation(line: 251, column: 5, scope: !605)
!811 = !DILocation(line: 252, column: 9, scope: !812)
!812 = distinct !DILexicalBlock(scope: !605, file: !2, line: 252, column: 9)
!813 = !DILocation(line: 252, column: 9, scope: !605)
!814 = !DILocation(line: 253, column: 9, scope: !812)
!815 = !DILocation(line: 255, column: 5, scope: !605)
!816 = !DILocation(line: 255, column: 12, scope: !817)
!817 = distinct !DILexicalBlock(scope: !818, file: !2, line: 255, column: 5)
!818 = distinct !DILexicalBlock(scope: !605, file: !2, line: 255, column: 5)
!819 = !DILocation(line: 255, column: 17, scope: !817)
!820 = !DILocation(line: 255, column: 5, scope: !818)
!821 = !DILocalVariable(name: "copy", scope: !822, file: !2, line: 256, type: !823)
!822 = distinct !DILexicalBlock(scope: !817, file: !2, line: 255, column: 32)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!824 = !DILocation(line: 256, column: 25, scope: !822)
!825 = !DILocation(line: 256, column: 45, scope: !822)
!826 = !DILocation(line: 256, column: 48, scope: !822)
!827 = !DILocation(line: 256, column: 68, scope: !822)
!828 = !DILocation(line: 256, column: 32, scope: !822)
!829 = !DILocation(line: 258, column: 13, scope: !830)
!830 = distinct !DILexicalBlock(scope: !822, file: !2, line: 258, column: 13)
!831 = !DILocation(line: 258, column: 13, scope: !822)
!832 = !DILocation(line: 259, column: 13, scope: !830)
!833 = !DILocation(line: 261, column: 13, scope: !834)
!834 = distinct !DILexicalBlock(scope: !822, file: !2, line: 261, column: 13)
!835 = !DILocation(line: 261, column: 19, scope: !834)
!836 = !DILocation(line: 261, column: 26, scope: !834)
!837 = !DILocation(line: 261, column: 29, scope: !834)
!838 = !DILocation(line: 261, column: 35, scope: !834)
!839 = !DILocation(line: 261, column: 43, scope: !834)
!840 = !DILocation(line: 261, column: 13, scope: !822)
!841 = !DILocation(line: 262, column: 26, scope: !842)
!842 = distinct !DILexicalBlock(scope: !834, file: !2, line: 261, column: 49)
!843 = !DILocation(line: 262, column: 32, scope: !842)
!844 = !DILocation(line: 262, column: 40, scope: !842)
!845 = !DILocation(line: 262, column: 45, scope: !842)
!846 = !DILocation(line: 262, column: 51, scope: !842)
!847 = !DILocation(line: 262, column: 13, scope: !842)
!848 = !DILocation(line: 262, column: 19, scope: !842)
!849 = !DILocation(line: 262, column: 24, scope: !842)
!850 = !DILocation(line: 263, column: 27, scope: !842)
!851 = !DILocation(line: 263, column: 33, scope: !842)
!852 = !DILocation(line: 263, column: 41, scope: !842)
!853 = !DILocation(line: 263, column: 13, scope: !842)
!854 = !DILocation(line: 263, column: 19, scope: !842)
!855 = !DILocation(line: 263, column: 25, scope: !842)
!856 = !DILocation(line: 264, column: 29, scope: !842)
!857 = !DILocation(line: 264, column: 35, scope: !842)
!858 = !DILocation(line: 264, column: 43, scope: !842)
!859 = !DILocation(line: 264, column: 13, scope: !842)
!860 = !DILocation(line: 264, column: 19, scope: !842)
!861 = !DILocation(line: 264, column: 27, scope: !842)
!862 = !DILocation(line: 265, column: 9, scope: !842)
!863 = !DILocation(line: 266, column: 13, scope: !864)
!864 = distinct !DILexicalBlock(scope: !834, file: !2, line: 265, column: 16)
!865 = !DILocation(line: 266, column: 19, scope: !864)
!866 = !DILocation(line: 266, column: 25, scope: !864)
!867 = !DILocation(line: 268, column: 5, scope: !822)
!868 = !DILocation(line: 255, column: 28, scope: !817)
!869 = !DILocation(line: 255, column: 5, scope: !817)
!870 = distinct !{!870, !820, !871, !872}
!871 = !DILocation(line: 268, column: 5, scope: !818)
!872 = !{!"llvm.loop.mustprogress"}
!873 = !DILocation(line: 269, column: 1, scope: !605)
!874 = distinct !DISubprogram(name: "destroy_urlmap", scope: !2, file: !2, line: 88, type: !635, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!875 = !DILocalVariable(name: "data", arg: 1, scope: !874, file: !2, line: 88, type: !358)
!876 = !DILocation(line: 88, column: 34, scope: !874)
!877 = !DILocalVariable(name: "url_map", scope: !874, file: !2, line: 90, type: !823)
!878 = !DILocation(line: 90, column: 21, scope: !874)
!879 = !DILocation(line: 90, column: 31, scope: !874)
!880 = !DILocation(line: 92, column: 9, scope: !881)
!881 = distinct !DILexicalBlock(scope: !874, file: !2, line: 92, column: 9)
!882 = !DILocation(line: 92, column: 18, scope: !881)
!883 = !DILocation(line: 92, column: 9, scope: !874)
!884 = !DILocalVariable(name: "module", scope: !885, file: !2, line: 93, type: !778)
!885 = distinct !DILexicalBlock(scope: !881, file: !2, line: 92, column: 26)
!886 = !DILocation(line: 93, column: 30, scope: !885)
!887 = !DILocation(line: 93, column: 39, scope: !885)
!888 = !DILocation(line: 93, column: 48, scope: !885)
!889 = !DILocation(line: 94, column: 13, scope: !890)
!890 = distinct !DILexicalBlock(scope: !885, file: !2, line: 94, column: 13)
!891 = !DILocation(line: 94, column: 21, scope: !890)
!892 = !DILocation(line: 94, column: 13, scope: !885)
!893 = !DILocation(line: 95, column: 13, scope: !890)
!894 = !DILocation(line: 95, column: 21, scope: !890)
!895 = !DILocation(line: 95, column: 30, scope: !890)
!896 = !DILocation(line: 95, column: 39, scope: !890)
!897 = !DILocation(line: 96, column: 5, scope: !885)
!898 = !DILocation(line: 96, column: 16, scope: !899)
!899 = distinct !DILexicalBlock(scope: !881, file: !2, line: 96, column: 16)
!900 = !DILocation(line: 96, column: 25, scope: !899)
!901 = !DILocation(line: 96, column: 16, scope: !881)
!902 = !DILocation(line: 97, column: 19, scope: !903)
!903 = distinct !DILexicalBlock(scope: !899, file: !2, line: 96, column: 31)
!904 = !DILocation(line: 97, column: 28, scope: !903)
!905 = !DILocation(line: 97, column: 9, scope: !903)
!906 = !DILocation(line: 98, column: 5, scope: !903)
!907 = !DILocation(line: 100, column: 10, scope: !874)
!908 = !DILocation(line: 100, column: 19, scope: !874)
!909 = !DILocation(line: 100, column: 33, scope: !874)
!910 = !DILocation(line: 100, column: 5, scope: !874)
!911 = !DILocation(line: 101, column: 10, scope: !874)
!912 = !DILocation(line: 101, column: 19, scope: !874)
!913 = !DILocation(line: 101, column: 33, scope: !874)
!914 = !DILocation(line: 101, column: 5, scope: !874)
!915 = !DILocation(line: 102, column: 18, scope: !874)
!916 = !DILocation(line: 102, column: 27, scope: !874)
!917 = !DILocation(line: 102, column: 5, scope: !874)
!918 = !DILocation(line: 103, column: 10, scope: !874)
!919 = !DILocation(line: 103, column: 5, scope: !874)
!920 = !DILocation(line: 104, column: 1, scope: !874)
!921 = distinct !DISubprogram(name: "add_url_map", scope: !2, file: !2, line: 106, type: !922, scopeLine: 107, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!922 = !DISubroutineType(types: !923)
!923 = !{!823, !924, !752, !688}
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!925 = !DILocalVariable(name: "t", arg: 1, scope: !921, file: !2, line: 106, type: !924)
!926 = !DILocation(line: 106, column: 49, scope: !921)
!927 = !DILocalVariable(name: "prefix", arg: 2, scope: !921, file: !2, line: 106, type: !752)
!928 = !DILocation(line: 106, column: 64, scope: !921)
!929 = !DILocalVariable(name: "map", arg: 3, scope: !921, file: !2, line: 106, type: !688)
!930 = !DILocation(line: 106, column: 94, scope: !921)
!931 = !DILocalVariable(name: "copy", scope: !921, file: !2, line: 108, type: !823)
!932 = !DILocation(line: 108, column: 21, scope: !921)
!933 = !DILocation(line: 108, column: 28, scope: !921)
!934 = !DILocation(line: 110, column: 10, scope: !935)
!935 = distinct !DILexicalBlock(scope: !921, file: !2, line: 110, column: 9)
!936 = !DILocation(line: 110, column: 9, scope: !921)
!937 = !DILocation(line: 111, column: 9, scope: !935)
!938 = !DILocation(line: 113, column: 12, scope: !921)
!939 = !DILocation(line: 113, column: 18, scope: !921)
!940 = !DILocation(line: 113, column: 5, scope: !921)
!941 = !DILocation(line: 115, column: 27, scope: !921)
!942 = !DILocation(line: 115, column: 36, scope: !921)
!943 = !DILocation(line: 115, column: 45, scope: !921)
!944 = !DILocation(line: 115, column: 51, scope: !921)
!945 = !DILocation(line: 115, column: 20, scope: !921)
!946 = !DILocation(line: 115, column: 5, scope: !921)
!947 = !DILocation(line: 115, column: 11, scope: !921)
!948 = !DILocation(line: 115, column: 18, scope: !921)
!949 = !DILocation(line: 116, column: 31, scope: !921)
!950 = !DILocation(line: 116, column: 37, scope: !921)
!951 = !DILocation(line: 116, column: 24, scope: !921)
!952 = !DILocation(line: 116, column: 5, scope: !921)
!953 = !DILocation(line: 116, column: 11, scope: !921)
!954 = !DILocation(line: 116, column: 22, scope: !921)
!955 = !DILocation(line: 117, column: 19, scope: !921)
!956 = !DILocation(line: 117, column: 22, scope: !921)
!957 = !DILocation(line: 117, column: 28, scope: !921)
!958 = !DILocation(line: 117, column: 36, scope: !921)
!959 = !DILocation(line: 117, column: 5, scope: !921)
!960 = !DILocation(line: 119, column: 12, scope: !921)
!961 = !DILocation(line: 119, column: 5, scope: !921)
!962 = distinct !DISubprogram(name: "get_config_path", scope: !2, file: !2, line: 301, type: !963, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!963 = !DISubroutineType(types: !964)
!964 = !{!752, !359}
!965 = !DILocalVariable(name: "path_buf", arg: 1, scope: !962, file: !2, line: 301, type: !359)
!966 = !DILocation(line: 301, column: 35, scope: !962)
!967 = !DILocalVariable(name: "path", scope: !962, file: !2, line: 303, type: !359)
!968 = !DILocation(line: 303, column: 11, scope: !962)
!969 = !DILocalVariable(name: "path_len", scope: !962, file: !2, line: 304, type: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !734, line: 220, baseType: !971)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !362, line: 194, baseType: !665)
!972 = !DILocation(line: 304, column: 13, scope: !962)
!973 = !DILocation(line: 308, column: 43, scope: !962)
!974 = !DILocation(line: 308, column: 16, scope: !962)
!975 = !DILocation(line: 308, column: 14, scope: !962)
!976 = !DILocation(line: 309, column: 9, scope: !977)
!977 = distinct !DILexicalBlock(scope: !962, file: !2, line: 309, column: 9)
!978 = !DILocation(line: 309, column: 18, scope: !977)
!979 = !DILocation(line: 309, column: 9, scope: !962)
!980 = !DILocation(line: 310, column: 9, scope: !977)
!981 = !DILocation(line: 311, column: 5, scope: !962)
!982 = !DILocation(line: 311, column: 14, scope: !962)
!983 = !DILocation(line: 311, column: 24, scope: !962)
!984 = !DILocation(line: 312, column: 20, scope: !962)
!985 = !DILocation(line: 312, column: 12, scope: !962)
!986 = !DILocation(line: 312, column: 10, scope: !962)
!987 = !DILocation(line: 313, column: 10, scope: !988)
!988 = distinct !DILexicalBlock(scope: !962, file: !2, line: 313, column: 9)
!989 = !DILocation(line: 313, column: 9, scope: !962)
!990 = !DILocation(line: 314, column: 9, scope: !988)
!991 = !DILocalVariable(name: "ret", scope: !962, file: !2, line: 315, type: !40)
!992 = !DILocation(line: 315, column: 9, scope: !962)
!993 = !DILocation(line: 315, column: 24, scope: !962)
!994 = !DILocation(line: 315, column: 55, scope: !962)
!995 = !DILocation(line: 315, column: 60, scope: !962)
!996 = !DILocation(line: 315, column: 15, scope: !962)
!997 = !DILocation(line: 316, column: 9, scope: !998)
!998 = distinct !DILexicalBlock(scope: !962, file: !2, line: 316, column: 9)
!999 = !DILocation(line: 316, column: 13, scope: !998)
!1000 = !DILocation(line: 316, column: 17, scope: !998)
!1001 = !DILocation(line: 316, column: 20, scope: !998)
!1002 = !DILocation(line: 316, column: 24, scope: !998)
!1003 = !DILocation(line: 316, column: 9, scope: !962)
!1004 = !DILocation(line: 317, column: 9, scope: !998)
!1005 = !DILocation(line: 319, column: 12, scope: !962)
!1006 = !DILocation(line: 319, column: 5, scope: !962)
!1007 = !DILabel(scope: !962, name: "out", file: !2, line: 321)
!1008 = !DILocation(line: 321, column: 1, scope: !962)
!1009 = !DILocation(line: 322, column: 5, scope: !962)
!1010 = !DILocation(line: 323, column: 1, scope: !962)
!1011 = distinct !DISubprogram(name: "lwan_init", scope: !2, file: !2, line: 434, type: !1012, scopeLine: 435, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1012 = !DISubroutineType(types: !1013)
!1013 = !{null, !608}
!1014 = !DILocalVariable(name: "l", arg: 1, scope: !1011, file: !2, line: 434, type: !608)
!1015 = !DILocation(line: 434, column: 19, scope: !1011)
!1016 = !DILocation(line: 436, column: 27, scope: !1011)
!1017 = !DILocation(line: 436, column: 5, scope: !1011)
!1018 = !DILocation(line: 437, column: 1, scope: !1011)
!1019 = distinct !DISubprogram(name: "lwan_init_with_config", scope: !2, file: !2, line: 446, type: !1020, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1020 = !DISubroutineType(types: !1021)
!1021 = !{null, !608, !1022}
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!1023 = !DILocalVariable(name: "l", arg: 1, scope: !1019, file: !2, line: 446, type: !608)
!1024 = !DILocation(line: 446, column: 31, scope: !1019)
!1025 = !DILocalVariable(name: "config", arg: 2, scope: !1019, file: !2, line: 446, type: !1022)
!1026 = !DILocation(line: 446, column: 55, scope: !1019)
!1027 = !DILocation(line: 449, column: 12, scope: !1019)
!1028 = !DILocation(line: 449, column: 5, scope: !1019)
!1029 = !DILocation(line: 450, column: 13, scope: !1019)
!1030 = !DILocation(line: 450, column: 16, scope: !1019)
!1031 = !DILocation(line: 450, column: 24, scope: !1019)
!1032 = !DILocation(line: 450, column: 5, scope: !1019)
!1033 = !DILocation(line: 454, column: 22, scope: !1019)
!1034 = !DILocation(line: 454, column: 5, scope: !1019)
!1035 = !DILocation(line: 459, column: 5, scope: !1019)
!1036 = !DILocation(line: 460, column: 5, scope: !1019)
!1037 = !DILocation(line: 461, column: 5, scope: !1019)
!1038 = !DILocation(line: 463, column: 22, scope: !1019)
!1039 = !DILocation(line: 463, column: 5, scope: !1019)
!1040 = !DILocation(line: 464, column: 26, scope: !1019)
!1041 = !DILocation(line: 464, column: 29, scope: !1019)
!1042 = !DILocation(line: 464, column: 5, scope: !1019)
!1043 = !DILocation(line: 465, column: 26, scope: !1019)
!1044 = !DILocation(line: 465, column: 29, scope: !1019)
!1045 = !DILocation(line: 465, column: 5, scope: !1019)
!1046 = !DILocation(line: 471, column: 9, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 471, column: 9)
!1048 = !DILocation(line: 471, column: 16, scope: !1047)
!1049 = !DILocation(line: 471, column: 9, scope: !1019)
!1050 = !DILocation(line: 472, column: 32, scope: !1051)
!1051 = distinct !DILexicalBlock(scope: !1052, file: !2, line: 472, column: 13)
!1052 = distinct !DILexicalBlock(scope: !1047, file: !2, line: 471, column: 36)
!1053 = !DILocation(line: 472, column: 14, scope: !1051)
!1054 = !DILocation(line: 472, column: 13, scope: !1052)
!1055 = !DILocation(line: 473, column: 13, scope: !1051)
!1056 = !DILocation(line: 474, column: 5, scope: !1052)
!1057 = !DILocation(line: 477, column: 5, scope: !1019)
!1058 = !DILocation(line: 479, column: 10, scope: !1059)
!1059 = distinct !DILexicalBlock(scope: !1019, file: !2, line: 479, column: 9)
!1060 = !DILocation(line: 479, column: 13, scope: !1059)
!1061 = !DILocation(line: 479, column: 20, scope: !1059)
!1062 = !DILocation(line: 479, column: 9, scope: !1019)
!1063 = !DILocation(line: 480, column: 27, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 479, column: 31)
!1065 = !DILocation(line: 480, column: 9, scope: !1064)
!1066 = !DILocation(line: 480, column: 12, scope: !1064)
!1067 = !DILocation(line: 480, column: 19, scope: !1064)
!1068 = !DILocation(line: 480, column: 25, scope: !1064)
!1069 = !DILocation(line: 481, column: 13, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1064, file: !2, line: 481, column: 13)
!1071 = !DILocation(line: 481, column: 16, scope: !1070)
!1072 = !DILocation(line: 481, column: 23, scope: !1070)
!1073 = !DILocation(line: 481, column: 29, scope: !1070)
!1074 = !DILocation(line: 481, column: 13, scope: !1064)
!1075 = !DILocation(line: 482, column: 13, scope: !1070)
!1076 = !DILocation(line: 482, column: 16, scope: !1070)
!1077 = !DILocation(line: 482, column: 23, scope: !1070)
!1078 = !DILocation(line: 482, column: 29, scope: !1070)
!1079 = !DILocation(line: 483, column: 5, scope: !1064)
!1080 = !DILocation(line: 484, column: 27, scope: !1081)
!1081 = distinct !DILexicalBlock(scope: !1059, file: !2, line: 483, column: 12)
!1082 = !DILocation(line: 484, column: 30, scope: !1081)
!1083 = !DILocation(line: 484, column: 37, scope: !1081)
!1084 = !DILocation(line: 484, column: 9, scope: !1081)
!1085 = !DILocation(line: 484, column: 12, scope: !1081)
!1086 = !DILocation(line: 484, column: 19, scope: !1081)
!1087 = !DILocation(line: 484, column: 25, scope: !1081)
!1088 = !DILocalVariable(name: "max_open_files", scope: !1019, file: !2, line: 487, type: !1089)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "rlim_t", file: !328, line: 131, baseType: !361)
!1090 = !DILocation(line: 487, column: 12, scope: !1019)
!1091 = !DILocation(line: 487, column: 29, scope: !1019)
!1092 = !DILocation(line: 488, column: 26, scope: !1019)
!1093 = !DILocation(line: 488, column: 37, scope: !1019)
!1094 = !DILocation(line: 488, column: 5, scope: !1019)
!1095 = !DILocation(line: 490, column: 34, scope: !1019)
!1096 = !DILocation(line: 490, column: 24, scope: !1019)
!1097 = !DILocation(line: 490, column: 61, scope: !1019)
!1098 = !DILocation(line: 490, column: 64, scope: !1019)
!1099 = !DILocation(line: 490, column: 71, scope: !1019)
!1100 = !DILocation(line: 490, column: 51, scope: !1019)
!1101 = !DILocation(line: 490, column: 49, scope: !1019)
!1102 = !DILocation(line: 490, column: 5, scope: !1019)
!1103 = !DILocation(line: 490, column: 8, scope: !1019)
!1104 = !DILocation(line: 490, column: 15, scope: !1019)
!1105 = !DILocation(line: 490, column: 22, scope: !1019)
!1106 = !DILocation(line: 491, column: 5, scope: !1019)
!1107 = !DILocation(line: 494, column: 5, scope: !1019)
!1108 = !DILocation(line: 495, column: 5, scope: !1019)
!1109 = !DILocation(line: 497, column: 22, scope: !1019)
!1110 = !DILocation(line: 497, column: 5, scope: !1019)
!1111 = !DILocation(line: 498, column: 22, scope: !1019)
!1112 = !DILocation(line: 498, column: 5, scope: !1019)
!1113 = !DILocation(line: 499, column: 5, scope: !1019)
!1114 = !DILocation(line: 500, column: 1, scope: !1019)
!1115 = distinct !DISubprogram(name: "lwan_get_default_config", scope: !2, file: !2, line: 440, type: !1116, scopeLine: 441, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1116 = !DISubroutineType(types: !1117)
!1117 = !{!1022}
!1118 = !DILocation(line: 442, column: 5, scope: !1115)
!1119 = distinct !DISubprogram(name: "lwan_module_init", scope: !2, file: !2, line: 53, type: !1012, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1120 = !DILocalVariable(name: "l", arg: 1, scope: !1119, file: !2, line: 53, type: !608)
!1121 = !DILocation(line: 53, column: 38, scope: !1119)
!1122 = !DILocation(line: 55, column: 10, scope: !1123)
!1123 = distinct !DILexicalBlock(scope: !1119, file: !2, line: 55, column: 9)
!1124 = !DILocation(line: 55, column: 13, scope: !1123)
!1125 = !DILocation(line: 55, column: 9, scope: !1119)
!1126 = !DILocation(line: 56, column: 9, scope: !1127)
!1127 = distinct !DILexicalBlock(scope: !1123, file: !2, line: 55, column: 30)
!1128 = !DILocation(line: 57, column: 30, scope: !1127)
!1129 = !DILocation(line: 57, column: 9, scope: !1127)
!1130 = !DILocation(line: 57, column: 12, scope: !1127)
!1131 = !DILocation(line: 57, column: 28, scope: !1127)
!1132 = !DILocation(line: 58, column: 5, scope: !1127)
!1133 = !DILocation(line: 59, column: 1, scope: !1119)
!1134 = distinct !DISubprogram(name: "lwan_module_register", scope: !2, file: !2, line: 66, type: !1135, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{null, !608, !778}
!1137 = !DILocalVariable(name: "l", arg: 1, scope: !1134, file: !2, line: 66, type: !608)
!1138 = !DILocation(line: 66, column: 42, scope: !1134)
!1139 = !DILocalVariable(name: "module", arg: 2, scope: !1134, file: !2, line: 66, type: !778)
!1140 = !DILocation(line: 66, column: 66, scope: !1134)
!1141 = !DILocation(line: 68, column: 10, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1134, file: !2, line: 68, column: 9)
!1143 = !DILocation(line: 68, column: 18, scope: !1142)
!1144 = !DILocation(line: 68, column: 9, scope: !1134)
!1145 = !DILocation(line: 69, column: 9, scope: !1142)
!1146 = !DILocation(line: 71, column: 5, scope: !1134)
!1147 = !DILocation(line: 72, column: 14, scope: !1134)
!1148 = !DILocation(line: 72, column: 17, scope: !1134)
!1149 = !DILocation(line: 72, column: 34, scope: !1134)
!1150 = !DILocation(line: 72, column: 42, scope: !1134)
!1151 = !DILocation(line: 72, column: 48, scope: !1134)
!1152 = !DILocation(line: 72, column: 5, scope: !1134)
!1153 = !DILocation(line: 73, column: 1, scope: !1134)
!1154 = distinct !DISubprogram(name: "setup_from_config", scope: !2, file: !2, line: 325, type: !1155, scopeLine: 326, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!593, !608}
!1157 = !DILocalVariable(name: "lwan", arg: 1, scope: !1154, file: !2, line: 325, type: !608)
!1158 = !DILocation(line: 325, column: 39, scope: !1154)
!1159 = !DILocalVariable(name: "conf", scope: !1154, file: !2, line: 327, type: !1160)
!1160 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_t", file: !102, line: 32, baseType: !1161)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_t_", file: !102, line: 41, size: 192, elements: !1162)
!1162 = !{!1163, !1216, !1217}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1161, file: !102, line: 42, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !1166, line: 7, baseType: !1167)
!1166 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !1168, line: 49, size: 1728, elements: !1169)
!1168 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1185, !1187, !1188, !1189, !1190, !1191, !1193, !1197, !1200, !1202, !1205, !1208, !1209, !1210, !1211, !1212}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1167, file: !1168, line: 51, baseType: !40, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !1167, file: !1168, line: 54, baseType: !359, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !1167, file: !1168, line: 55, baseType: !359, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !1167, file: !1168, line: 56, baseType: !359, size: 64, offset: 192)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !1167, file: !1168, line: 57, baseType: !359, size: 64, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !1167, file: !1168, line: 58, baseType: !359, size: 64, offset: 320)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !1167, file: !1168, line: 59, baseType: !359, size: 64, offset: 384)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !1167, file: !1168, line: 60, baseType: !359, size: 64, offset: 448)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !1167, file: !1168, line: 61, baseType: !359, size: 64, offset: 512)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !1167, file: !1168, line: 64, baseType: !359, size: 64, offset: 576)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !1167, file: !1168, line: 65, baseType: !359, size: 64, offset: 640)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !1167, file: !1168, line: 66, baseType: !359, size: 64, offset: 704)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !1167, file: !1168, line: 68, baseType: !1183, size: 64, offset: 768)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !1168, line: 36, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !1167, file: !1168, line: 70, baseType: !1186, size: 64, offset: 832)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !1167, file: !1168, line: 72, baseType: !40, size: 32, offset: 896)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !1167, file: !1168, line: 73, baseType: !40, size: 32, offset: 928)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !1167, file: !1168, line: 74, baseType: !735, size: 64, offset: 960)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !1167, file: !1168, line: 77, baseType: !360, size: 16, offset: 1024)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !1167, file: !1168, line: 78, baseType: !1192, size: 8, offset: 1040)
!1192 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !1167, file: !1168, line: 79, baseType: !1194, size: 8, offset: 1048)
!1194 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !1195)
!1195 = !{!1196}
!1196 = !DISubrange(count: 1)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !1167, file: !1168, line: 81, baseType: !1198, size: 64, offset: 1088)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !1168, line: 43, baseType: null)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !1167, file: !1168, line: 89, baseType: !1201, size: 64, offset: 1152)
!1201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !362, line: 153, baseType: !665)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !1167, file: !1168, line: 91, baseType: !1203, size: 64, offset: 1216)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !1168, line: 37, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !1167, file: !1168, line: 92, baseType: !1206, size: 64, offset: 1280)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !1168, line: 38, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !1167, file: !1168, line: 93, baseType: !1186, size: 64, offset: 1344)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !1167, file: !1168, line: 94, baseType: !358, size: 64, offset: 1408)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !1167, file: !1168, line: 95, baseType: !350, size: 64, offset: 1472)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !1167, file: !1168, line: 96, baseType: !40, size: 32, offset: 1536)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !1167, file: !1168, line: 98, baseType: !1213, size: 160, offset: 1568)
!1213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1214)
!1214 = !{!1215}
!1215 = !DISubrange(count: 20)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1161, file: !102, line: 43, baseType: !40, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "error_message", scope: !1161, file: !102, line: 44, baseType: !359, size: 64, offset: 128)
!1218 = !DILocation(line: 327, column: 14, scope: !1154)
!1219 = !DILocalVariable(name: "line", scope: !1154, file: !2, line: 328, type: !1220)
!1220 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_t", file: !102, line: 33, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "config_line_t_", file: !102, line: 47, size: 8384, elements: !1222)
!1222 = !{!1223, !1236, !1238}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !102, line: 48, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1221, file: !102, line: 48, size: 128, elements: !1225)
!1225 = !{!1226, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "section", scope: !1224, file: !102, line: 51, baseType: !1227, size: 128)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !102, line: 49, size: 128, elements: !1228)
!1228 = !{!1229, !1230}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1227, file: !102, line: 50, baseType: !359, size: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !1227, file: !102, line: 50, baseType: !359, size: 64, offset: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1224, file: !102, line: 54, baseType: !1232, size: 128)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1224, file: !102, line: 52, size: 128, elements: !1233)
!1233 = !{!1234, !1235}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1232, file: !102, line: 53, baseType: !359, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1232, file: !102, line: 53, baseType: !359, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1221, file: !102, line: 56, baseType: !1237, size: 32, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_typedef, name: "config_line_type_t", file: !102, line: 39, baseType: !101)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1221, file: !102, line: 57, baseType: !1239, size: 8192, offset: 160)
!1239 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8192, elements: !1240)
!1240 = !{!1241}
!1241 = !DISubrange(count: 1024)
!1242 = !DILocation(line: 328, column: 19, scope: !1154)
!1243 = !DILocalVariable(name: "has_listener", scope: !1154, file: !2, line: 329, type: !593)
!1244 = !DILocation(line: 329, column: 10, scope: !1154)
!1245 = !DILocalVariable(name: "path_buf", scope: !1154, file: !2, line: 330, type: !1246)
!1246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !1247)
!1247 = !{!1248}
!1248 = !DISubrange(count: 4096)
!1249 = !DILocation(line: 330, column: 10, scope: !1154)
!1250 = !DILocalVariable(name: "path", scope: !1154, file: !2, line: 331, type: !752)
!1251 = !DILocation(line: 331, column: 17, scope: !1154)
!1252 = !DILocation(line: 333, column: 28, scope: !1154)
!1253 = !DILocation(line: 333, column: 12, scope: !1154)
!1254 = !DILocation(line: 333, column: 10, scope: !1154)
!1255 = !DILocation(line: 334, column: 5, scope: !1154)
!1256 = !DILocation(line: 336, column: 26, scope: !1257)
!1257 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 336, column: 9)
!1258 = !DILocation(line: 336, column: 32, scope: !1257)
!1259 = !DILocation(line: 336, column: 10, scope: !1257)
!1260 = !DILocation(line: 336, column: 9, scope: !1154)
!1261 = !DILocation(line: 337, column: 9, scope: !1257)
!1262 = !DILocation(line: 339, column: 29, scope: !1263)
!1263 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 339, column: 9)
!1264 = !DILocation(line: 339, column: 10, scope: !1263)
!1265 = !DILocation(line: 339, column: 9, scope: !1154)
!1266 = !DILocation(line: 340, column: 9, scope: !1263)
!1267 = !DILocation(line: 342, column: 5, scope: !1154)
!1268 = !DILocation(line: 342, column: 12, scope: !1154)
!1269 = !DILocation(line: 343, column: 22, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 342, column: 44)
!1271 = !DILocation(line: 343, column: 9, scope: !1270)
!1272 = !DILocation(line: 345, column: 30, scope: !1273)
!1273 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 345, column: 17)
!1274 = distinct !DILexicalBlock(scope: !1270, file: !2, line: 343, column: 28)
!1275 = !DILocation(line: 345, column: 35, scope: !1273)
!1276 = !DILocation(line: 345, column: 18, scope: !1273)
!1277 = !DILocation(line: 345, column: 17, scope: !1274)
!1278 = !DILocation(line: 346, column: 83, scope: !1273)
!1279 = !DILocation(line: 346, column: 88, scope: !1273)
!1280 = !DILocation(line: 347, column: 44, scope: !1273)
!1281 = !DILocation(line: 347, column: 29, scope: !1273)
!1282 = !DILocation(line: 346, column: 67, scope: !1273)
!1283 = !DILocation(line: 346, column: 51, scope: !1273)
!1284 = !DILocation(line: 346, column: 17, scope: !1273)
!1285 = !DILocation(line: 346, column: 23, scope: !1273)
!1286 = !DILocation(line: 346, column: 30, scope: !1273)
!1287 = !DILocation(line: 346, column: 49, scope: !1273)
!1288 = !DILocation(line: 348, column: 35, scope: !1289)
!1289 = distinct !DILexicalBlock(scope: !1273, file: !2, line: 348, column: 22)
!1290 = !DILocation(line: 348, column: 40, scope: !1289)
!1291 = !DILocation(line: 348, column: 23, scope: !1289)
!1292 = !DILocation(line: 348, column: 22, scope: !1273)
!1293 = !DILocation(line: 349, column: 54, scope: !1289)
!1294 = !DILocation(line: 349, column: 59, scope: !1289)
!1295 = !DILocation(line: 350, column: 44, scope: !1289)
!1296 = !DILocation(line: 349, column: 38, scope: !1289)
!1297 = !DILocation(line: 349, column: 17, scope: !1289)
!1298 = !DILocation(line: 349, column: 23, scope: !1289)
!1299 = !DILocation(line: 349, column: 30, scope: !1289)
!1300 = !DILocation(line: 349, column: 36, scope: !1289)
!1301 = !DILocation(line: 351, column: 35, scope: !1302)
!1302 = distinct !DILexicalBlock(scope: !1289, file: !2, line: 351, column: 22)
!1303 = !DILocation(line: 351, column: 40, scope: !1302)
!1304 = !DILocation(line: 351, column: 23, scope: !1302)
!1305 = !DILocation(line: 351, column: 22, scope: !1289)
!1306 = !DILocation(line: 352, column: 59, scope: !1302)
!1307 = !DILocation(line: 352, column: 64, scope: !1302)
!1308 = !DILocation(line: 353, column: 44, scope: !1302)
!1309 = !DILocation(line: 352, column: 43, scope: !1302)
!1310 = !DILocation(line: 352, column: 17, scope: !1302)
!1311 = !DILocation(line: 352, column: 23, scope: !1302)
!1312 = !DILocation(line: 352, column: 30, scope: !1302)
!1313 = !DILocation(line: 352, column: 41, scope: !1302)
!1314 = !DILocation(line: 354, column: 35, scope: !1315)
!1315 = distinct !DILexicalBlock(scope: !1302, file: !2, line: 354, column: 22)
!1316 = !DILocation(line: 354, column: 40, scope: !1315)
!1317 = !DILocation(line: 354, column: 23, scope: !1315)
!1318 = !DILocation(line: 354, column: 22, scope: !1302)
!1319 = !DILocation(line: 355, column: 63, scope: !1315)
!1320 = !DILocation(line: 355, column: 68, scope: !1315)
!1321 = !DILocation(line: 356, column: 44, scope: !1315)
!1322 = !DILocation(line: 355, column: 40, scope: !1315)
!1323 = !DILocation(line: 355, column: 17, scope: !1315)
!1324 = !DILocation(line: 355, column: 23, scope: !1315)
!1325 = !DILocation(line: 355, column: 30, scope: !1315)
!1326 = !DILocation(line: 355, column: 38, scope: !1315)
!1327 = !DILocation(line: 357, column: 35, scope: !1328)
!1328 = distinct !DILexicalBlock(scope: !1315, file: !2, line: 357, column: 22)
!1329 = !DILocation(line: 357, column: 40, scope: !1328)
!1330 = !DILocation(line: 357, column: 23, scope: !1328)
!1331 = !DILocation(line: 357, column: 22, scope: !1315)
!1332 = !DILocalVariable(name: "n_threads", scope: !1333, file: !2, line: 358, type: !665)
!1333 = distinct !DILexicalBlock(scope: !1328, file: !2, line: 357, column: 57)
!1334 = !DILocation(line: 358, column: 22, scope: !1333)
!1335 = !DILocation(line: 358, column: 50, scope: !1333)
!1336 = !DILocation(line: 358, column: 55, scope: !1333)
!1337 = !DILocation(line: 358, column: 77, scope: !1333)
!1338 = !DILocation(line: 358, column: 62, scope: !1333)
!1339 = !DILocation(line: 358, column: 34, scope: !1333)
!1340 = !DILocation(line: 359, column: 21, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1333, file: !2, line: 359, column: 21)
!1342 = !DILocation(line: 359, column: 31, scope: !1341)
!1343 = !DILocation(line: 359, column: 21, scope: !1333)
!1344 = !DILocation(line: 360, column: 74, scope: !1341)
!1345 = !DILocation(line: 360, column: 21, scope: !1341)
!1346 = !DILocation(line: 361, column: 62, scope: !1333)
!1347 = !DILocation(line: 361, column: 42, scope: !1333)
!1348 = !DILocation(line: 361, column: 17, scope: !1333)
!1349 = !DILocation(line: 361, column: 23, scope: !1333)
!1350 = !DILocation(line: 361, column: 30, scope: !1333)
!1351 = !DILocation(line: 361, column: 40, scope: !1333)
!1352 = !DILocation(line: 362, column: 13, scope: !1333)
!1353 = !DILocation(line: 364, column: 68, scope: !1328)
!1354 = !DILocation(line: 364, column: 73, scope: !1328)
!1355 = !DILocation(line: 364, column: 17, scope: !1328)
!1356 = !DILocation(line: 365, column: 13, scope: !1274)
!1357 = !DILocation(line: 367, column: 18, scope: !1358)
!1358 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 367, column: 17)
!1359 = !DILocation(line: 367, column: 17, scope: !1274)
!1360 = !DILocation(line: 368, column: 30, scope: !1361)
!1361 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 367, column: 32)
!1362 = !DILocation(line: 369, column: 34, scope: !1363)
!1363 = distinct !DILexicalBlock(scope: !1361, file: !2, line: 369, column: 21)
!1364 = !DILocation(line: 369, column: 42, scope: !1363)
!1365 = !DILocation(line: 369, column: 22, scope: !1363)
!1366 = !DILocation(line: 369, column: 21, scope: !1361)
!1367 = !DILocation(line: 370, column: 50, scope: !1363)
!1368 = !DILocation(line: 370, column: 21, scope: !1363)
!1369 = !DILocation(line: 372, column: 74, scope: !1363)
!1370 = !DILocation(line: 372, column: 82, scope: !1363)
!1371 = !DILocation(line: 372, column: 21, scope: !1363)
!1372 = !DILocation(line: 373, column: 13, scope: !1361)
!1373 = !DILocation(line: 374, column: 17, scope: !1374)
!1374 = distinct !DILexicalBlock(scope: !1358, file: !2, line: 373, column: 20)
!1375 = !DILocation(line: 376, column: 13, scope: !1274)
!1376 = !DILocation(line: 378, column: 13, scope: !1274)
!1377 = !DILocation(line: 379, column: 9, scope: !1274)
!1378 = distinct !{!1378, !1267, !1379, !872}
!1379 = !DILocation(line: 380, column: 5, scope: !1154)
!1380 = !DILocation(line: 382, column: 14, scope: !1381)
!1381 = distinct !DILexicalBlock(scope: !1154, file: !2, line: 382, column: 9)
!1382 = !DILocation(line: 382, column: 9, scope: !1381)
!1383 = !DILocation(line: 382, column: 9, scope: !1154)
!1384 = !DILocation(line: 383, column: 9, scope: !1385)
!1385 = distinct !DILexicalBlock(scope: !1381, file: !2, line: 382, column: 29)
!1386 = !DILocation(line: 387, column: 5, scope: !1154)
!1387 = !DILocation(line: 389, column: 5, scope: !1154)
!1388 = !DILocation(line: 390, column: 1, scope: !1154)
!1389 = distinct !DISubprogram(name: "get_number_of_cpus", scope: !2, file: !2, line: 423, type: !1390, scopeLine: 424, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1390 = !DISubroutineType(types: !1391)
!1391 = !{!360}
!1392 = !DILocalVariable(name: "n_online_cpus", scope: !1389, file: !2, line: 425, type: !665)
!1393 = !DILocation(line: 425, column: 10, scope: !1389)
!1394 = !DILocation(line: 425, column: 26, scope: !1389)
!1395 = !DILocation(line: 426, column: 9, scope: !1396)
!1396 = distinct !DILexicalBlock(scope: !1389, file: !2, line: 426, column: 9)
!1397 = !DILocation(line: 426, column: 9, scope: !1389)
!1398 = !DILocation(line: 427, column: 9, scope: !1399)
!1399 = distinct !DILexicalBlock(scope: !1396, file: !2, line: 426, column: 38)
!1400 = !DILocation(line: 428, column: 9, scope: !1399)
!1401 = !DILocation(line: 430, column: 32, scope: !1389)
!1402 = !DILocation(line: 430, column: 12, scope: !1389)
!1403 = !DILocation(line: 430, column: 5, scope: !1389)
!1404 = !DILocation(line: 431, column: 1, scope: !1389)
!1405 = distinct !DISubprogram(name: "setup_open_file_count_limits", scope: !2, file: !2, line: 393, type: !1406, scopeLine: 394, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1406 = !DISubroutineType(types: !1407)
!1407 = !{!1089}
!1408 = !DILocalVariable(name: "r", scope: !1405, file: !2, line: 395, type: !1409)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rlimit", file: !328, line: 139, size: 128, elements: !1410)
!1410 = !{!1411, !1412}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_cur", scope: !1409, file: !328, line: 142, baseType: !1089, size: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rlim_max", scope: !1409, file: !328, line: 144, baseType: !1089, size: 64, offset: 64)
!1413 = !DILocation(line: 395, column: 19, scope: !1405)
!1414 = !DILocation(line: 397, column: 9, scope: !1415)
!1415 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 397, column: 9)
!1416 = !DILocation(line: 397, column: 38, scope: !1415)
!1417 = !DILocation(line: 397, column: 9, scope: !1405)
!1418 = !DILocation(line: 398, column: 9, scope: !1415)
!1419 = !DILocation(line: 400, column: 11, scope: !1420)
!1420 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 400, column: 9)
!1421 = !DILocation(line: 400, column: 25, scope: !1420)
!1422 = !DILocation(line: 400, column: 20, scope: !1420)
!1423 = !DILocation(line: 400, column: 9, scope: !1405)
!1424 = !DILocation(line: 401, column: 18, scope: !1420)
!1425 = !DILocation(line: 401, column: 9, scope: !1420)
!1426 = !DILocation(line: 403, column: 11, scope: !1427)
!1427 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 403, column: 9)
!1428 = !DILocation(line: 403, column: 20, scope: !1427)
!1429 = !DILocation(line: 403, column: 9, scope: !1405)
!1430 = !DILocation(line: 404, column: 11, scope: !1427)
!1431 = !DILocation(line: 404, column: 20, scope: !1427)
!1432 = !DILocation(line: 404, column: 9, scope: !1427)
!1433 = !DILocation(line: 405, column: 16, scope: !1434)
!1434 = distinct !DILexicalBlock(scope: !1427, file: !2, line: 405, column: 14)
!1435 = !DILocation(line: 405, column: 29, scope: !1434)
!1436 = !DILocation(line: 405, column: 25, scope: !1434)
!1437 = !DILocation(line: 405, column: 14, scope: !1427)
!1438 = !DILocation(line: 406, column: 24, scope: !1434)
!1439 = !DILocation(line: 406, column: 11, scope: !1434)
!1440 = !DILocation(line: 406, column: 20, scope: !1434)
!1441 = !DILocation(line: 406, column: 9, scope: !1434)
!1442 = !DILocation(line: 408, column: 9, scope: !1443)
!1443 = distinct !DILexicalBlock(scope: !1405, file: !2, line: 408, column: 9)
!1444 = !DILocation(line: 408, column: 38, scope: !1443)
!1445 = !DILocation(line: 408, column: 9, scope: !1405)
!1446 = !DILocation(line: 409, column: 9, scope: !1443)
!1447 = !DILocation(line: 411, column: 14, scope: !1405)
!1448 = !DILocation(line: 411, column: 5, scope: !1405)
!1449 = !DILocation(line: 412, column: 1, scope: !1405)
!1450 = distinct !DISubprogram(name: "allocate_connections", scope: !2, file: !2, line: 415, type: !1451, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{null, !608, !350}
!1453 = !DILocalVariable(name: "l", arg: 1, scope: !1450, file: !2, line: 415, type: !608)
!1454 = !DILocation(line: 415, column: 30, scope: !1450)
!1455 = !DILocalVariable(name: "max_open_files", arg: 2, scope: !1450, file: !2, line: 415, type: !350)
!1456 = !DILocation(line: 415, column: 40, scope: !1450)
!1457 = !DILocation(line: 417, column: 23, scope: !1450)
!1458 = !DILocation(line: 417, column: 16, scope: !1450)
!1459 = !DILocation(line: 417, column: 5, scope: !1450)
!1460 = !DILocation(line: 417, column: 8, scope: !1450)
!1461 = !DILocation(line: 417, column: 14, scope: !1450)
!1462 = !DILocation(line: 418, column: 10, scope: !1463)
!1463 = distinct !DILexicalBlock(scope: !1450, file: !2, line: 418, column: 9)
!1464 = !DILocation(line: 418, column: 13, scope: !1463)
!1465 = !DILocation(line: 418, column: 9, scope: !1450)
!1466 = !DILocation(line: 419, column: 9, scope: !1463)
!1467 = !DILocation(line: 420, column: 1, scope: !1450)
!1468 = distinct !DISubprogram(name: "lwan_shutdown", scope: !2, file: !2, line: 503, type: !1012, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1469 = !DILocalVariable(name: "l", arg: 1, scope: !1468, file: !2, line: 503, type: !608)
!1470 = !DILocation(line: 503, column: 23, scope: !1468)
!1471 = !DILocation(line: 505, column: 5, scope: !1468)
!1472 = !DILocation(line: 507, column: 9, scope: !1473)
!1473 = distinct !DILexicalBlock(scope: !1468, file: !2, line: 507, column: 9)
!1474 = !DILocation(line: 507, column: 12, scope: !1473)
!1475 = !DILocation(line: 507, column: 19, scope: !1473)
!1476 = !DILocation(line: 507, column: 46, scope: !1473)
!1477 = !DILocation(line: 507, column: 28, scope: !1473)
!1478 = !DILocation(line: 507, column: 9, scope: !1468)
!1479 = !DILocation(line: 508, column: 14, scope: !1473)
!1480 = !DILocation(line: 508, column: 17, scope: !1473)
!1481 = !DILocation(line: 508, column: 24, scope: !1473)
!1482 = !DILocation(line: 508, column: 9, scope: !1473)
!1483 = !DILocation(line: 510, column: 5, scope: !1468)
!1484 = !DILocation(line: 511, column: 26, scope: !1468)
!1485 = !DILocation(line: 511, column: 5, scope: !1468)
!1486 = !DILocation(line: 513, column: 5, scope: !1468)
!1487 = !DILocation(line: 514, column: 24, scope: !1468)
!1488 = !DILocation(line: 514, column: 27, scope: !1468)
!1489 = !DILocation(line: 514, column: 5, scope: !1468)
!1490 = !DILocation(line: 516, column: 10, scope: !1468)
!1491 = !DILocation(line: 516, column: 13, scope: !1468)
!1492 = !DILocation(line: 516, column: 5, scope: !1468)
!1493 = !DILocation(line: 518, column: 5, scope: !1468)
!1494 = !DILocation(line: 519, column: 5, scope: !1468)
!1495 = !DILocation(line: 520, column: 26, scope: !1468)
!1496 = !DILocation(line: 520, column: 5, scope: !1468)
!1497 = !DILocation(line: 521, column: 5, scope: !1468)
!1498 = !DILocation(line: 522, column: 26, scope: !1468)
!1499 = !DILocation(line: 522, column: 5, scope: !1468)
!1500 = !DILocation(line: 523, column: 1, scope: !1468)
!1501 = distinct !DISubprogram(name: "lwan_module_shutdown", scope: !2, file: !2, line: 61, type: !1012, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1502 = !DILocalVariable(name: "l", arg: 1, scope: !1501, file: !2, line: 61, type: !608)
!1503 = !DILocation(line: 61, column: 42, scope: !1501)
!1504 = !DILocation(line: 63, column: 15, scope: !1501)
!1505 = !DILocation(line: 63, column: 18, scope: !1501)
!1506 = !DILocation(line: 63, column: 5, scope: !1501)
!1507 = !DILocation(line: 64, column: 1, scope: !1501)
!1508 = distinct !DISubprogram(name: "lwan_main_loop", scope: !2, file: !2, line: 559, type: !1012, scopeLine: 560, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1509 = !DILocalVariable(name: "l", arg: 1, scope: !1508, file: !2, line: 559, type: !608)
!1510 = !DILocation(line: 559, column: 24, scope: !1508)
!1511 = !DILocation(line: 561, column: 5, scope: !1512)
!1512 = distinct !DILexicalBlock(scope: !1513, file: !2, line: 561, column: 5)
!1513 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 561, column: 5)
!1514 = !DILocation(line: 561, column: 5, scope: !1513)
!1515 = !DILocation(line: 562, column: 19, scope: !1508)
!1516 = !DILocation(line: 562, column: 22, scope: !1508)
!1517 = !DILocation(line: 562, column: 17, scope: !1508)
!1518 = !DILocation(line: 563, column: 9, scope: !1519)
!1519 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 563, column: 9)
!1520 = !DILocation(line: 563, column: 40, scope: !1519)
!1521 = !DILocation(line: 563, column: 9, scope: !1508)
!1522 = !DILocation(line: 564, column: 9, scope: !1519)
!1523 = !DILocation(line: 566, column: 5, scope: !1508)
!1524 = !DILocation(line: 568, column: 5, scope: !1508)
!1525 = !DILocalVariable(name: "client_fd", scope: !1526, file: !2, line: 569, type: !40)
!1526 = distinct !DILexicalBlock(scope: !1527, file: !2, line: 568, column: 14)
!1527 = distinct !DILexicalBlock(scope: !1528, file: !2, line: 568, column: 5)
!1528 = distinct !DILexicalBlock(scope: !1508, file: !2, line: 568, column: 5)
!1529 = !DILocation(line: 569, column: 13, scope: !1526)
!1530 = !DILocation(line: 569, column: 33, scope: !1526)
!1531 = !DILocation(line: 569, column: 46, scope: !1526)
!1532 = !DILocation(line: 569, column: 25, scope: !1526)
!1533 = !DILocation(line: 570, column: 13, scope: !1534)
!1534 = distinct !DILexicalBlock(scope: !1526, file: !2, line: 570, column: 13)
!1535 = !DILocation(line: 570, column: 13, scope: !1526)
!1536 = !DILocation(line: 571, column: 17, scope: !1537)
!1537 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 571, column: 17)
!1538 = distinct !DILexicalBlock(scope: !1534, file: !2, line: 570, column: 38)
!1539 = !DILocation(line: 571, column: 23, scope: !1537)
!1540 = !DILocation(line: 571, column: 17, scope: !1538)
!1541 = !DILocation(line: 572, column: 17, scope: !1542)
!1542 = distinct !DILexicalBlock(scope: !1537, file: !2, line: 571, column: 33)
!1543 = !DILocation(line: 573, column: 17, scope: !1542)
!1544 = distinct !{!1544, !1545, !1546}
!1545 = !DILocation(line: 568, column: 5, scope: !1528)
!1546 = !DILocation(line: 586, column: 5, scope: !1528)
!1547 = !DILocation(line: 576, column: 17, scope: !1548)
!1548 = distinct !DILexicalBlock(scope: !1538, file: !2, line: 576, column: 17)
!1549 = !DILocation(line: 576, column: 29, scope: !1548)
!1550 = !DILocation(line: 576, column: 17, scope: !1538)
!1551 = !DILocation(line: 577, column: 17, scope: !1552)
!1552 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 576, column: 34)
!1553 = !DILocation(line: 578, column: 13, scope: !1552)
!1554 = !DILocation(line: 579, column: 17, scope: !1555)
!1555 = distinct !DILexicalBlock(scope: !1548, file: !2, line: 578, column: 20)
!1556 = !DILocation(line: 582, column: 13, scope: !1538)
!1557 = !DILocation(line: 585, column: 25, scope: !1526)
!1558 = !DILocation(line: 585, column: 28, scope: !1526)
!1559 = !DILocalVariable(name: "l", arg: 1, scope: !1560, file: !2, line: 526, type: !608)
!1560 = distinct !DISubprogram(name: "schedule_client", scope: !2, file: !2, line: 526, type: !1561, scopeLine: 527, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !608, !40}
!1563 = !DILocation(line: 526, column: 25, scope: !1560, inlinedAt: !1564)
!1564 = distinct !DILocation(line: 585, column: 9, scope: !1526)
!1565 = !DILocalVariable(name: "fd", arg: 2, scope: !1560, file: !2, line: 526, type: !40)
!1566 = !DILocation(line: 526, column: 32, scope: !1560, inlinedAt: !1564)
!1567 = !DILocalVariable(name: "thread", scope: !1560, file: !2, line: 528, type: !40)
!1568 = !DILocation(line: 528, column: 9, scope: !1560, inlinedAt: !1564)
!1569 = !DILocation(line: 538, column: 16, scope: !1560, inlinedAt: !1564)
!1570 = !DILocation(line: 538, column: 19, scope: !1560, inlinedAt: !1564)
!1571 = !DILocation(line: 538, column: 24, scope: !1560, inlinedAt: !1564)
!1572 = !DILocation(line: 538, column: 31, scope: !1560, inlinedAt: !1564)
!1573 = !DILocation(line: 538, column: 34, scope: !1560, inlinedAt: !1564)
!1574 = !DILocation(line: 538, column: 41, scope: !1560, inlinedAt: !1564)
!1575 = !DILocation(line: 538, column: 29, scope: !1560, inlinedAt: !1564)
!1576 = !DILocation(line: 538, column: 12, scope: !1560, inlinedAt: !1564)
!1577 = !DILocalVariable(name: "t", scope: !1560, file: !2, line: 543, type: !651)
!1578 = !DILocation(line: 543, column: 20, scope: !1560, inlinedAt: !1564)
!1579 = !DILocation(line: 543, column: 25, scope: !1560, inlinedAt: !1564)
!1580 = !DILocation(line: 543, column: 28, scope: !1560, inlinedAt: !1564)
!1581 = !DILocation(line: 543, column: 35, scope: !1560, inlinedAt: !1564)
!1582 = !DILocation(line: 543, column: 43, scope: !1560, inlinedAt: !1564)
!1583 = !DILocation(line: 544, column: 28, scope: !1560, inlinedAt: !1564)
!1584 = !DILocation(line: 544, column: 31, scope: !1560, inlinedAt: !1564)
!1585 = !DILocation(line: 544, column: 5, scope: !1560, inlinedAt: !1564)
!1586 = !DILocation(line: 568, column: 5, scope: !1527)
!1587 = !DILocation(line: 587, column: 1, scope: !1508)
!1588 = distinct !DISubprogram(name: "sigint_handler", scope: !2, file: !2, line: 550, type: !356, scopeLine: 551, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1589 = !DILocalVariable(name: "signal_number", arg: 1, scope: !1588, file: !2, line: 550, type: !40)
!1590 = !DILocation(line: 550, column: 20, scope: !1588)
!1591 = !DILocation(line: 552, column: 9, scope: !1592)
!1592 = distinct !DILexicalBlock(scope: !1588, file: !2, line: 552, column: 9)
!1593 = !DILocation(line: 552, column: 21, scope: !1592)
!1594 = !DILocation(line: 552, column: 9, scope: !1588)
!1595 = !DILocation(line: 553, column: 9, scope: !1592)
!1596 = !DILocation(line: 554, column: 11, scope: !1588)
!1597 = !DILocation(line: 554, column: 5, scope: !1588)
!1598 = !DILocation(line: 555, column: 17, scope: !1588)
!1599 = !DILocation(line: 556, column: 1, scope: !1588)
!1600 = distinct !DISubprogram(name: "parse_listener", scope: !2, file: !2, line: 271, type: !1601, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{null, !1603, !1604, !608}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1605 = !DILocalVariable(name: "c", arg: 1, scope: !1600, file: !2, line: 271, type: !1603)
!1606 = !DILocation(line: 271, column: 38, scope: !1600)
!1607 = !DILocalVariable(name: "l", arg: 2, scope: !1600, file: !2, line: 271, type: !1604)
!1608 = !DILocation(line: 271, column: 56, scope: !1600)
!1609 = !DILocalVariable(name: "lwan", arg: 3, scope: !1600, file: !2, line: 271, type: !608)
!1610 = !DILocation(line: 271, column: 67, scope: !1600)
!1611 = !DILocation(line: 273, column: 36, scope: !1600)
!1612 = !DILocation(line: 273, column: 39, scope: !1600)
!1613 = !DILocation(line: 273, column: 47, scope: !1600)
!1614 = !DILocation(line: 273, column: 29, scope: !1600)
!1615 = !DILocation(line: 273, column: 5, scope: !1600)
!1616 = !DILocation(line: 273, column: 11, scope: !1600)
!1617 = !DILocation(line: 273, column: 18, scope: !1600)
!1618 = !DILocation(line: 273, column: 27, scope: !1600)
!1619 = !DILocation(line: 275, column: 5, scope: !1600)
!1620 = !DILocation(line: 275, column: 29, scope: !1600)
!1621 = !DILocation(line: 275, column: 32, scope: !1600)
!1622 = !DILocation(line: 275, column: 12, scope: !1600)
!1623 = !DILocation(line: 276, column: 17, scope: !1624)
!1624 = distinct !DILexicalBlock(scope: !1600, file: !2, line: 275, column: 36)
!1625 = !DILocation(line: 276, column: 20, scope: !1624)
!1626 = !DILocation(line: 276, column: 9, scope: !1624)
!1627 = !DILocation(line: 278, column: 26, scope: !1628)
!1628 = distinct !DILexicalBlock(scope: !1624, file: !2, line: 276, column: 26)
!1629 = !DILocation(line: 278, column: 13, scope: !1628)
!1630 = !DILocation(line: 279, column: 13, scope: !1628)
!1631 = !DILocation(line: 281, column: 25, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1628, file: !2, line: 281, column: 17)
!1633 = !DILocation(line: 281, column: 28, scope: !1632)
!1634 = !DILocation(line: 281, column: 36, scope: !1632)
!1635 = !DILocation(line: 281, column: 18, scope: !1632)
!1636 = !DILocation(line: 281, column: 17, scope: !1628)
!1637 = !DILocation(line: 282, column: 39, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 281, column: 53)
!1639 = !DILocation(line: 282, column: 42, scope: !1638)
!1640 = !DILocation(line: 282, column: 45, scope: !1638)
!1641 = !DILocation(line: 282, column: 17, scope: !1638)
!1642 = !DILocation(line: 283, column: 13, scope: !1638)
!1643 = !DILocalVariable(name: "module", scope: !1644, file: !2, line: 284, type: !778)
!1644 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 283, column: 20)
!1645 = !DILocation(line: 284, column: 38, scope: !1644)
!1646 = !DILocation(line: 284, column: 64, scope: !1644)
!1647 = !DILocation(line: 284, column: 70, scope: !1644)
!1648 = !DILocation(line: 284, column: 73, scope: !1644)
!1649 = !DILocation(line: 284, column: 81, scope: !1644)
!1650 = !DILocation(line: 284, column: 47, scope: !1644)
!1651 = !DILocation(line: 285, column: 22, scope: !1652)
!1652 = distinct !DILexicalBlock(scope: !1644, file: !2, line: 285, column: 21)
!1653 = !DILocation(line: 285, column: 21, scope: !1644)
!1654 = !DILocation(line: 286, column: 34, scope: !1655)
!1655 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 285, column: 30)
!1656 = !DILocation(line: 287, column: 25, scope: !1655)
!1657 = !DILocation(line: 287, column: 28, scope: !1655)
!1658 = !DILocation(line: 287, column: 36, scope: !1655)
!1659 = !DILocation(line: 286, column: 21, scope: !1655)
!1660 = !DILocation(line: 288, column: 17, scope: !1655)
!1661 = !DILocation(line: 289, column: 43, scope: !1662)
!1662 = distinct !DILexicalBlock(scope: !1652, file: !2, line: 288, column: 24)
!1663 = !DILocation(line: 289, column: 46, scope: !1662)
!1664 = !DILocation(line: 289, column: 49, scope: !1662)
!1665 = !DILocation(line: 289, column: 55, scope: !1662)
!1666 = !DILocation(line: 289, column: 21, scope: !1662)
!1667 = !DILocation(line: 292, column: 13, scope: !1628)
!1668 = !DILocation(line: 294, column: 13, scope: !1628)
!1669 = distinct !{!1669, !1619, !1670, !872}
!1670 = !DILocation(line: 296, column: 5, scope: !1600)
!1671 = !DILocation(line: 298, column: 18, scope: !1600)
!1672 = !DILocation(line: 298, column: 5, scope: !1600)
!1673 = !DILocation(line: 299, column: 1, scope: !1600)
!1674 = distinct !DISubprogram(name: "parse_listener_prefix", scope: !2, file: !2, line: 167, type: !1675, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !1603, !1604, !608, !778}
!1677 = !DILocalVariable(name: "c", arg: 1, scope: !1674, file: !2, line: 167, type: !1603)
!1678 = !DILocation(line: 167, column: 45, scope: !1674)
!1679 = !DILocalVariable(name: "l", arg: 2, scope: !1674, file: !2, line: 167, type: !1604)
!1680 = !DILocation(line: 167, column: 63, scope: !1674)
!1681 = !DILocalVariable(name: "lwan", arg: 3, scope: !1674, file: !2, line: 167, type: !608)
!1682 = !DILocation(line: 167, column: 74, scope: !1674)
!1683 = !DILocalVariable(name: "module", arg: 4, scope: !1674, file: !2, line: 168, type: !778)
!1684 = !DILocation(line: 168, column: 26, scope: !1674)
!1685 = !DILocalVariable(name: "url_map", scope: !1674, file: !2, line: 170, type: !690)
!1686 = !DILocation(line: 170, column: 20, scope: !1674)
!1687 = !DILocalVariable(name: "hash", scope: !1674, file: !2, line: 171, type: !683)
!1688 = !DILocation(line: 171, column: 18, scope: !1674)
!1689 = !DILocation(line: 171, column: 25, scope: !1674)
!1690 = !DILocalVariable(name: "handler", scope: !1674, file: !2, line: 172, type: !358)
!1691 = !DILocation(line: 172, column: 11, scope: !1674)
!1692 = !DILocalVariable(name: "prefix", scope: !1674, file: !2, line: 173, type: !359)
!1693 = !DILocation(line: 173, column: 11, scope: !1674)
!1694 = !DILocalVariable(name: "__old", scope: !1695, file: !2, line: 173, type: !752)
!1695 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 173, column: 20)
!1696 = !DILocation(line: 173, column: 20, scope: !1695)
!1697 = !DILocalVariable(name: "__len", scope: !1695, file: !2, line: 173, type: !350)
!1698 = !DILocalVariable(name: "__new", scope: !1695, file: !2, line: 173, type: !359)
!1699 = !DILocation(line: 175, column: 5, scope: !1674)
!1700 = !DILocation(line: 175, column: 29, scope: !1674)
!1701 = !DILocation(line: 175, column: 32, scope: !1674)
!1702 = !DILocation(line: 175, column: 12, scope: !1674)
!1703 = !DILocation(line: 176, column: 15, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 175, column: 36)
!1705 = !DILocation(line: 176, column: 18, scope: !1704)
!1706 = !DILocation(line: 176, column: 7, scope: !1704)
!1707 = !DILocation(line: 178, column: 23, scope: !1708)
!1708 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 178, column: 15)
!1709 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 176, column: 24)
!1710 = !DILocation(line: 178, column: 26, scope: !1708)
!1711 = !DILocation(line: 178, column: 31, scope: !1708)
!1712 = !DILocation(line: 178, column: 16, scope: !1708)
!1713 = !DILocation(line: 178, column: 15, scope: !1709)
!1714 = !DILocation(line: 179, column: 19, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 179, column: 19)
!1716 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 178, column: 47)
!1717 = !DILocation(line: 179, column: 19, scope: !1716)
!1718 = !DILocation(line: 180, column: 32, scope: !1719)
!1719 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 179, column: 27)
!1720 = !DILocation(line: 180, column: 19, scope: !1719)
!1721 = !DILocation(line: 181, column: 19, scope: !1719)
!1722 = !DILocation(line: 183, column: 41, scope: !1716)
!1723 = !DILocation(line: 183, column: 47, scope: !1716)
!1724 = !DILocation(line: 183, column: 50, scope: !1716)
!1725 = !DILocation(line: 183, column: 55, scope: !1716)
!1726 = !DILocation(line: 183, column: 24, scope: !1716)
!1727 = !DILocation(line: 183, column: 22, scope: !1716)
!1728 = !DILocation(line: 184, column: 20, scope: !1729)
!1729 = distinct !DILexicalBlock(scope: !1716, file: !2, line: 184, column: 19)
!1730 = !DILocation(line: 184, column: 19, scope: !1716)
!1731 = !DILocation(line: 185, column: 32, scope: !1732)
!1732 = distinct !DILexicalBlock(scope: !1729, file: !2, line: 184, column: 28)
!1733 = !DILocation(line: 185, column: 67, scope: !1732)
!1734 = !DILocation(line: 185, column: 70, scope: !1732)
!1735 = !DILocation(line: 185, column: 75, scope: !1732)
!1736 = !DILocation(line: 185, column: 19, scope: !1732)
!1737 = !DILocation(line: 186, column: 19, scope: !1732)
!1738 = !DILocation(line: 188, column: 11, scope: !1716)
!1739 = !DILocation(line: 188, column: 30, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1708, file: !2, line: 188, column: 22)
!1741 = !DILocation(line: 188, column: 33, scope: !1740)
!1742 = !DILocation(line: 188, column: 38, scope: !1740)
!1743 = !DILocation(line: 188, column: 23, scope: !1740)
!1744 = !DILocation(line: 188, column: 22, scope: !1708)
!1745 = !DILocation(line: 189, column: 45, scope: !1746)
!1746 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 188, column: 55)
!1747 = !DILocation(line: 189, column: 48, scope: !1746)
!1748 = !DILocation(line: 189, column: 53, scope: !1746)
!1749 = !DILocation(line: 189, column: 25, scope: !1746)
!1750 = !DILocation(line: 189, column: 23, scope: !1746)
!1751 = !DILocation(line: 190, column: 20, scope: !1752)
!1752 = distinct !DILexicalBlock(scope: !1746, file: !2, line: 190, column: 19)
!1753 = !DILocation(line: 190, column: 19, scope: !1746)
!1754 = !DILocation(line: 191, column: 32, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1752, file: !2, line: 190, column: 29)
!1756 = !DILocation(line: 191, column: 68, scope: !1755)
!1757 = !DILocation(line: 191, column: 71, scope: !1755)
!1758 = !DILocation(line: 191, column: 76, scope: !1755)
!1759 = !DILocation(line: 191, column: 19, scope: !1755)
!1760 = !DILocation(line: 192, column: 19, scope: !1755)
!1761 = !DILocation(line: 194, column: 11, scope: !1746)
!1762 = !DILocation(line: 195, column: 24, scope: !1763)
!1763 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 194, column: 18)
!1764 = !DILocation(line: 195, column: 37, scope: !1763)
!1765 = !DILocation(line: 195, column: 40, scope: !1763)
!1766 = !DILocation(line: 195, column: 45, scope: !1763)
!1767 = !DILocation(line: 195, column: 30, scope: !1763)
!1768 = !DILocation(line: 195, column: 58, scope: !1763)
!1769 = !DILocation(line: 195, column: 61, scope: !1763)
!1770 = !DILocation(line: 195, column: 66, scope: !1763)
!1771 = !DILocation(line: 195, column: 51, scope: !1763)
!1772 = !DILocation(line: 195, column: 15, scope: !1763)
!1773 = !DILocation(line: 198, column: 11, scope: !1709)
!1774 = !DILocation(line: 200, column: 23, scope: !1775)
!1775 = distinct !DILexicalBlock(scope: !1709, file: !2, line: 200, column: 15)
!1776 = !DILocation(line: 200, column: 26, scope: !1775)
!1777 = !DILocation(line: 200, column: 34, scope: !1775)
!1778 = !DILocation(line: 200, column: 16, scope: !1775)
!1779 = !DILocation(line: 200, column: 15, scope: !1709)
!1780 = !DILocation(line: 201, column: 51, scope: !1781)
!1781 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 200, column: 58)
!1782 = !DILocation(line: 201, column: 54, scope: !1781)
!1783 = !DILocation(line: 201, column: 15, scope: !1781)
!1784 = !DILocation(line: 202, column: 11, scope: !1781)
!1785 = !DILocation(line: 203, column: 28, scope: !1786)
!1786 = distinct !DILexicalBlock(scope: !1775, file: !2, line: 202, column: 18)
!1787 = !DILocation(line: 203, column: 63, scope: !1786)
!1788 = !DILocation(line: 203, column: 66, scope: !1786)
!1789 = !DILocation(line: 203, column: 74, scope: !1786)
!1790 = !DILocation(line: 203, column: 15, scope: !1786)
!1791 = !DILocation(line: 204, column: 15, scope: !1786)
!1792 = !DILocation(line: 207, column: 11, scope: !1709)
!1793 = !DILocation(line: 209, column: 11, scope: !1709)
!1794 = distinct !{!1794, !1699, !1795, !872}
!1795 = !DILocation(line: 211, column: 5, scope: !1674)
!1796 = !DILocation(line: 213, column: 18, scope: !1674)
!1797 = !DILocation(line: 213, column: 5, scope: !1674)
!1798 = !DILocation(line: 214, column: 5, scope: !1674)
!1799 = !DILabel(scope: !1674, name: "add_map", file: !2, line: 216)
!1800 = !DILocation(line: 216, column: 1, scope: !1674)
!1801 = !DILocation(line: 217, column: 9, scope: !1802)
!1802 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 217, column: 9)
!1803 = !DILocation(line: 217, column: 19, scope: !1802)
!1804 = !DILocation(line: 217, column: 16, scope: !1802)
!1805 = !DILocation(line: 217, column: 27, scope: !1802)
!1806 = !DILocation(line: 217, column: 31, scope: !1802)
!1807 = !DILocation(line: 217, column: 9, scope: !1674)
!1808 = !DILocation(line: 218, column: 22, scope: !1809)
!1809 = distinct !DILexicalBlock(scope: !1802, file: !2, line: 217, column: 40)
!1810 = !DILocation(line: 218, column: 9, scope: !1809)
!1811 = !DILocation(line: 219, column: 9, scope: !1809)
!1812 = !DILocation(line: 221, column: 9, scope: !1813)
!1813 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 221, column: 9)
!1814 = !DILocation(line: 221, column: 16, scope: !1813)
!1815 = !DILocation(line: 221, column: 19, scope: !1813)
!1816 = !DILocation(line: 221, column: 9, scope: !1674)
!1817 = !DILocation(line: 222, column: 22, scope: !1818)
!1818 = distinct !DILexicalBlock(scope: !1813, file: !2, line: 221, column: 28)
!1819 = !DILocation(line: 222, column: 9, scope: !1818)
!1820 = !DILocation(line: 223, column: 9, scope: !1818)
!1821 = !DILocation(line: 226, column: 9, scope: !1822)
!1822 = distinct !DILexicalBlock(scope: !1674, file: !2, line: 226, column: 9)
!1823 = !DILocation(line: 226, column: 9, scope: !1674)
!1824 = !DILocation(line: 227, column: 27, scope: !1825)
!1825 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 226, column: 18)
!1826 = !DILocation(line: 227, column: 17, scope: !1825)
!1827 = !DILocation(line: 227, column: 25, scope: !1825)
!1828 = !DILocation(line: 228, column: 17, scope: !1825)
!1829 = !DILocation(line: 228, column: 23, scope: !1825)
!1830 = !DILocation(line: 229, column: 24, scope: !1825)
!1831 = !DILocation(line: 229, column: 17, scope: !1825)
!1832 = !DILocation(line: 229, column: 22, scope: !1825)
!1833 = !DILocation(line: 230, column: 17, scope: !1825)
!1834 = !DILocation(line: 230, column: 24, scope: !1825)
!1835 = !DILocation(line: 232, column: 14, scope: !1825)
!1836 = !DILocation(line: 233, column: 5, scope: !1825)
!1837 = !DILocation(line: 233, column: 16, scope: !1838)
!1838 = distinct !DILexicalBlock(scope: !1822, file: !2, line: 233, column: 16)
!1839 = !DILocation(line: 233, column: 23, scope: !1838)
!1840 = !DILocation(line: 233, column: 26, scope: !1838)
!1841 = !DILocation(line: 233, column: 34, scope: !1838)
!1842 = !DILocation(line: 233, column: 49, scope: !1838)
!1843 = !DILocation(line: 233, column: 52, scope: !1838)
!1844 = !DILocation(line: 233, column: 60, scope: !1838)
!1845 = !DILocation(line: 233, column: 16, scope: !1822)
!1846 = !DILocation(line: 234, column: 24, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 233, column: 68)
!1848 = !DILocation(line: 234, column: 32, scope: !1847)
!1849 = !DILocation(line: 234, column: 47, scope: !1847)
!1850 = !DILocation(line: 234, column: 17, scope: !1847)
!1851 = !DILocation(line: 234, column: 22, scope: !1847)
!1852 = !DILocation(line: 235, column: 27, scope: !1847)
!1853 = !DILocation(line: 235, column: 35, scope: !1847)
!1854 = !DILocation(line: 235, column: 17, scope: !1847)
!1855 = !DILocation(line: 235, column: 25, scope: !1847)
!1856 = !DILocation(line: 236, column: 26, scope: !1847)
!1857 = !DILocation(line: 236, column: 34, scope: !1847)
!1858 = !DILocation(line: 236, column: 17, scope: !1847)
!1859 = !DILocation(line: 236, column: 23, scope: !1847)
!1860 = !DILocation(line: 237, column: 26, scope: !1847)
!1861 = !DILocation(line: 237, column: 17, scope: !1847)
!1862 = !DILocation(line: 237, column: 24, scope: !1847)
!1863 = !DILocation(line: 238, column: 5, scope: !1847)
!1864 = !DILocation(line: 239, column: 22, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1838, file: !2, line: 238, column: 12)
!1866 = !DILocation(line: 239, column: 9, scope: !1865)
!1867 = !DILocation(line: 240, column: 9, scope: !1865)
!1868 = !DILocation(line: 243, column: 18, scope: !1674)
!1869 = !DILocation(line: 243, column: 24, scope: !1674)
!1870 = !DILocation(line: 243, column: 38, scope: !1674)
!1871 = !DILocation(line: 243, column: 5, scope: !1674)
!1872 = !DILabel(scope: !1674, name: "out", file: !2, line: 245)
!1873 = !DILocation(line: 245, column: 1, scope: !1674)
!1874 = !DILocation(line: 246, column: 15, scope: !1674)
!1875 = !DILocation(line: 246, column: 5, scope: !1674)
!1876 = !DILocation(line: 247, column: 1, scope: !1674)
!1877 = distinct !DISubprogram(name: "lwan_module_find", scope: !2, file: !2, line: 75, type: !1878, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{!778, !608, !752}
!1880 = !DILocalVariable(name: "l", arg: 1, scope: !1877, file: !2, line: 75, type: !608)
!1881 = !DILocation(line: 75, column: 54, scope: !1877)
!1882 = !DILocalVariable(name: "name", arg: 2, scope: !1877, file: !2, line: 75, type: !752)
!1883 = !DILocation(line: 75, column: 69, scope: !1877)
!1884 = !DILocation(line: 77, column: 22, scope: !1877)
!1885 = !DILocation(line: 77, column: 25, scope: !1877)
!1886 = !DILocation(line: 77, column: 42, scope: !1877)
!1887 = !DILocation(line: 77, column: 12, scope: !1877)
!1888 = !DILocation(line: 77, column: 5, scope: !1877)
!1889 = distinct !DISubprogram(name: "find_handler_symbol", scope: !2, file: !2, line: 80, type: !1890, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!358, !752}
!1892 = !DILocalVariable(name: "name", arg: 1, scope: !1889, file: !2, line: 80, type: !752)
!1893 = !DILocation(line: 80, column: 46, scope: !1889)
!1894 = !DILocalVariable(name: "symbol", scope: !1889, file: !2, line: 82, type: !358)
!1895 = !DILocation(line: 82, column: 11, scope: !1889)
!1896 = !DILocation(line: 82, column: 37, scope: !1889)
!1897 = !DILocation(line: 82, column: 20, scope: !1889)
!1898 = !DILocation(line: 83, column: 10, scope: !1899)
!1899 = distinct !DILexicalBlock(scope: !1889, file: !2, line: 83, column: 9)
!1900 = !DILocation(line: 83, column: 9, scope: !1889)
!1901 = !DILocation(line: 84, column: 38, scope: !1899)
!1902 = !DILocation(line: 84, column: 18, scope: !1899)
!1903 = !DILocation(line: 84, column: 16, scope: !1899)
!1904 = !DILocation(line: 84, column: 9, scope: !1899)
!1905 = !DILocation(line: 85, column: 12, scope: !1889)
!1906 = !DILocation(line: 85, column: 5, scope: !1889)
!1907 = distinct !DISubprogram(name: "parse_listener_prefix_authorization", scope: !2, file: !2, line: 122, type: !1908, scopeLine: 124, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !35, retainedNodes: !803)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{null, !1603, !1604, !823}
!1910 = !DILocalVariable(name: "c", arg: 1, scope: !1907, file: !2, line: 122, type: !1603)
!1911 = !DILocation(line: 122, column: 59, scope: !1907)
!1912 = !DILocalVariable(name: "l", arg: 2, scope: !1907, file: !2, line: 123, type: !1604)
!1913 = !DILocation(line: 123, column: 36, scope: !1907)
!1914 = !DILocalVariable(name: "url_map", arg: 3, scope: !1907, file: !2, line: 123, type: !823)
!1915 = !DILocation(line: 123, column: 55, scope: !1907)
!1916 = !DILocation(line: 125, column: 16, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 125, column: 9)
!1918 = !DILocation(line: 125, column: 19, scope: !1917)
!1919 = !DILocation(line: 125, column: 27, scope: !1917)
!1920 = !DILocation(line: 125, column: 9, scope: !1917)
!1921 = !DILocation(line: 125, column: 9, scope: !1907)
!1922 = !DILocation(line: 126, column: 22, scope: !1923)
!1923 = distinct !DILexicalBlock(scope: !1917, file: !2, line: 125, column: 44)
!1924 = !DILocation(line: 126, column: 9, scope: !1923)
!1925 = !DILocation(line: 127, column: 9, scope: !1923)
!1926 = !DILocation(line: 130, column: 13, scope: !1907)
!1927 = !DILocation(line: 130, column: 22, scope: !1907)
!1928 = !DILocation(line: 130, column: 5, scope: !1907)
!1929 = !DILocation(line: 132, column: 5, scope: !1907)
!1930 = !DILocation(line: 132, column: 29, scope: !1907)
!1931 = !DILocation(line: 132, column: 32, scope: !1907)
!1932 = !DILocation(line: 132, column: 12, scope: !1907)
!1933 = !DILocation(line: 133, column: 17, scope: !1934)
!1934 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 132, column: 36)
!1935 = !DILocation(line: 133, column: 20, scope: !1934)
!1936 = !DILocation(line: 133, column: 9, scope: !1934)
!1937 = !DILocation(line: 135, column: 25, scope: !1938)
!1938 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 135, column: 17)
!1939 = distinct !DILexicalBlock(scope: !1934, file: !2, line: 133, column: 26)
!1940 = !DILocation(line: 135, column: 28, scope: !1938)
!1941 = !DILocation(line: 135, column: 33, scope: !1938)
!1942 = !DILocation(line: 135, column: 18, scope: !1938)
!1943 = !DILocation(line: 135, column: 17, scope: !1939)
!1944 = !DILocation(line: 136, column: 22, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 135, column: 48)
!1946 = !DILocation(line: 136, column: 31, scope: !1945)
!1947 = !DILocation(line: 136, column: 45, scope: !1945)
!1948 = !DILocation(line: 136, column: 17, scope: !1945)
!1949 = !DILocation(line: 137, column: 55, scope: !1945)
!1950 = !DILocation(line: 137, column: 58, scope: !1945)
!1951 = !DILocation(line: 137, column: 63, scope: !1945)
!1952 = !DILocation(line: 137, column: 48, scope: !1945)
!1953 = !DILocation(line: 137, column: 17, scope: !1945)
!1954 = !DILocation(line: 137, column: 26, scope: !1945)
!1955 = !DILocation(line: 137, column: 40, scope: !1945)
!1956 = !DILocation(line: 137, column: 46, scope: !1945)
!1957 = !DILocation(line: 138, column: 13, scope: !1945)
!1958 = !DILocation(line: 138, column: 32, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1938, file: !2, line: 138, column: 24)
!1960 = !DILocation(line: 138, column: 35, scope: !1959)
!1961 = !DILocation(line: 138, column: 40, scope: !1959)
!1962 = !DILocation(line: 138, column: 25, scope: !1959)
!1963 = !DILocation(line: 138, column: 24, scope: !1938)
!1964 = !DILocation(line: 139, column: 22, scope: !1965)
!1965 = distinct !DILexicalBlock(scope: !1959, file: !2, line: 138, column: 63)
!1966 = !DILocation(line: 139, column: 31, scope: !1965)
!1967 = !DILocation(line: 139, column: 45, scope: !1965)
!1968 = !DILocation(line: 139, column: 17, scope: !1965)
!1969 = !DILocation(line: 140, column: 63, scope: !1965)
!1970 = !DILocation(line: 140, column: 66, scope: !1965)
!1971 = !DILocation(line: 140, column: 71, scope: !1965)
!1972 = !DILocation(line: 140, column: 56, scope: !1965)
!1973 = !DILocation(line: 140, column: 17, scope: !1965)
!1974 = !DILocation(line: 140, column: 26, scope: !1965)
!1975 = !DILocation(line: 140, column: 40, scope: !1965)
!1976 = !DILocation(line: 140, column: 54, scope: !1965)
!1977 = !DILocation(line: 141, column: 13, scope: !1965)
!1978 = !DILocation(line: 142, column: 13, scope: !1939)
!1979 = !DILocation(line: 145, column: 26, scope: !1939)
!1980 = !DILocation(line: 145, column: 55, scope: !1939)
!1981 = !DILocation(line: 145, column: 58, scope: !1939)
!1982 = !DILocation(line: 145, column: 66, scope: !1939)
!1983 = !DILocation(line: 145, column: 13, scope: !1939)
!1984 = !DILocation(line: 146, column: 13, scope: !1939)
!1985 = !DILocation(line: 149, column: 18, scope: !1986)
!1986 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 149, column: 17)
!1987 = !DILocation(line: 149, column: 27, scope: !1986)
!1988 = !DILocation(line: 149, column: 41, scope: !1986)
!1989 = !DILocation(line: 149, column: 17, scope: !1939)
!1990 = !DILocation(line: 150, column: 48, scope: !1986)
!1991 = !DILocation(line: 150, column: 17, scope: !1986)
!1992 = !DILocation(line: 150, column: 26, scope: !1986)
!1993 = !DILocation(line: 150, column: 40, scope: !1986)
!1994 = !DILocation(line: 150, column: 46, scope: !1986)
!1995 = !DILocation(line: 151, column: 18, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1939, file: !2, line: 151, column: 17)
!1997 = !DILocation(line: 151, column: 27, scope: !1996)
!1998 = !DILocation(line: 151, column: 41, scope: !1996)
!1999 = !DILocation(line: 151, column: 17, scope: !1939)
!2000 = !DILocation(line: 152, column: 56, scope: !1996)
!2001 = !DILocation(line: 152, column: 17, scope: !1996)
!2002 = !DILocation(line: 152, column: 26, scope: !1996)
!2003 = !DILocation(line: 152, column: 40, scope: !1996)
!2004 = !DILocation(line: 152, column: 54, scope: !1996)
!2005 = !DILocation(line: 154, column: 13, scope: !1939)
!2006 = !DILocation(line: 154, column: 22, scope: !1939)
!2007 = !DILocation(line: 154, column: 28, scope: !1939)
!2008 = !DILocation(line: 155, column: 13, scope: !1939)
!2009 = distinct !{!2009, !1929, !2010, !872}
!2010 = !DILocation(line: 157, column: 5, scope: !1907)
!2011 = !DILabel(scope: !1907, name: "out", file: !2, line: 159)
!2012 = !DILocation(line: 159, column: 1, scope: !1907)
!2013 = !DILocation(line: 160, column: 5, scope: !1907)
!2014 = !DILabel(scope: !1907, name: "error", file: !2, line: 162)
!2015 = !DILocation(line: 162, column: 1, scope: !1907)
!2016 = !DILocation(line: 163, column: 10, scope: !1907)
!2017 = !DILocation(line: 163, column: 19, scope: !1907)
!2018 = !DILocation(line: 163, column: 33, scope: !1907)
!2019 = !DILocation(line: 163, column: 5, scope: !1907)
!2020 = !DILocation(line: 164, column: 10, scope: !1907)
!2021 = !DILocation(line: 164, column: 19, scope: !1907)
!2022 = !DILocation(line: 164, column: 33, scope: !1907)
!2023 = !DILocation(line: 164, column: 5, scope: !1907)
!2024 = !DILocation(line: 165, column: 1, scope: !1907)
