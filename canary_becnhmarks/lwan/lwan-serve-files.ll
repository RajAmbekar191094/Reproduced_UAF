; ModuleID = '/home/raj/lwan/common/lwan-serve-files.c'
source_filename = "/home/raj/lwan/common/lwan-serve-files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_module_t_ = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lwan_var_descriptor_t_ = type { ptr, i64, ptr, ptr, ptr, ptr }
%struct.cache_funcs_t_ = type { ptr, ptr, ptr, i64 }
%struct.lwan_serve_files_settings_t = type { ptr, ptr, i8 }
%struct.serve_files_priv_t_ = type { ptr, %struct.anon.6, i32, ptr, ptr, i8 }
%struct.anon.6 = type { ptr, i64, i32 }
%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.1, %struct.anon.1, %struct.anon.2, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.1 = type { ptr, i64 }
%struct.anon.2 = type { i64, %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%struct.file_cache_entry_t_ = type { %struct.cache_entry_t, %struct.anon.7, ptr, ptr }
%struct.cache_entry_t = type { %struct.list_node, ptr, i32, i32, i64 }
%struct.list_node = type { ptr, ptr }
%struct.anon.7 = type { [31 x i8], i64 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.lwan_key_value_t_ = type { ptr, ptr }
%struct.iovec = type { ptr, i64 }
%struct.redir_cache_data_t_ = type { ptr }
%struct.dir_list_cache_data_t_ = type { ptr }
%struct.strbuf_t_ = type { %union.anon, %struct.anon.4, i32 }
%union.anon = type { ptr }
%struct.anon.4 = type { i64, i64 }
%struct.file_list_t = type { ptr, ptr, %struct.anon.8 }
%struct.anon.8 = type { ptr, ptr, ptr, ptr, ptr, i32, ptr }
%struct.mmap_cache_data_t_ = type { %struct.anon.9, %struct.anon.9 }
%struct.anon.9 = type { ptr, i64 }
%struct.sendfile_cache_data_t_ = type { %struct.anon.10, %struct.anon.10 }
%struct.anon.10 = type { ptr, i64 }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }

@lwan_module_serve_files.serve_files = internal constant %struct.lwan_module_t_ { ptr @.str, ptr @serve_files_init, ptr @serve_files_init_from_hash, ptr @serve_files_shutdown, ptr @serve_files_handle_cb, i32 78 }, align 8, !dbg !0
@.str = private unnamed_addr constant [12 x i8] c"serve_files\00", align 1, !dbg !418
@.str.1 = private unnamed_addr constant [41 x i8] c"/home/raj/lwan/common/lwan-serve-files.c\00", align 1, !dbg !423
@__FUNCTION__.serve_files_init = private unnamed_addr constant [17 x i8] c"serve_files_init\00", align 1, !dbg !428
@.str.2 = private unnamed_addr constant [24 x i8] c"root_path not specified\00", align 1, !dbg !433
@.str.3 = private unnamed_addr constant [35 x i8] c"Could not obtain real path of \22%s\22\00", align 1, !dbg !438
@.str.4 = private unnamed_addr constant [30 x i8] c"Could not open directory \22%s\22\00", align 1, !dbg !443
@.str.5 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1, !dbg !445
@.str.6 = private unnamed_addr constant [22 x i8] c"Couldn't create cache\00", align 1, !dbg !450
@directory_list_tpl_str = internal global ptr @.str.20, align 8, !dbg !536
@file_list_desc = internal constant [4 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.21, i64 0, ptr @lwan_append_str_escaped_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.22, i64 8, ptr @lwan_append_str_escaped_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.23, i64 16, ptr null, ptr null, ptr @directory_list_generator, ptr @file_list_item_desc }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !544
@.str.7 = private unnamed_addr constant [42 x i8] c"Could not compile directory list template\00", align 1, !dbg !455
@.str.8 = private unnamed_addr constant [11 x i8] c"index.html\00", align 1, !dbg !460
@redir_funcs = internal constant %struct.cache_funcs_t_ { ptr @redir_serve, ptr @redir_init, ptr @redir_free, i64 8 }, align 8, !dbg !470
@.str.9 = private unnamed_addr constant [5 x i8] c"%s%s\00", align 1, !dbg !465
@dirlist_funcs = internal constant %struct.cache_funcs_t_ { ptr @dirlist_serve, ptr @dirlist_init, ptr @dirlist_free, i64 8 }, align 8, !dbg !484
@mmap_funcs = internal constant %struct.cache_funcs_t_ { ptr @mmap_serve, ptr @mmap_init, ptr @mmap_free, i64 32 }, align 8, !dbg !501
@sendfile_funcs = internal constant %struct.cache_funcs_t_ { ptr @sendfile_serve, ptr @sendfile_init, ptr @sendfile_free, i64 32 }, align 8, !dbg !520
@.str.10 = private unnamed_addr constant [9 x i8] c"Location\00", align 1, !dbg !472
@.str.11 = private unnamed_addr constant [4 x i8] c"%s/\00", align 1, !dbg !477
@.str.12 = private unnamed_addr constant [11 x i8] c"text/plain\00", align 1, !dbg !482
@compression_none = internal global ptr null, align 8, !dbg !494
@.str.13 = private unnamed_addr constant [14 x i8] c"Last-Modified\00", align 1, !dbg !486
@.str.14 = private unnamed_addr constant [17 x i8] c"Content-Encoding\00", align 1, !dbg !491
@.str.15 = private unnamed_addr constant [10 x i8] c"text/html\00", align 1, !dbg !496
@compression_deflate = internal global ptr @.str.16, align 8, !dbg !506
@.str.16 = private unnamed_addr constant [8 x i8] c"deflate\00", align 1, !dbg !503
@__FUNCTION__.mmap_init = private unnamed_addr constant [10 x i8] c"mmap_init\00", align 1, !dbg !508
@.str.17 = private unnamed_addr constant [8 x i8] c"madvise\00", align 1, !dbg !511
@is_compression_worthy.deflated_header_size = internal constant i64 27, align 8, !dbg !513
@compression_gzip = internal global ptr @.str.18, align 8, !dbg !524
@.str.18 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1, !dbg !522
@.str.19 = private unnamed_addr constant [6 x i8] c"%s.gz\00", align 1, !dbg !526
@.str.20 = private unnamed_addr constant [763 x i8] c"<html>\0A<head>\0A  <title>Index of {{rel_path}}</title>\0A</head>\0A<body>\0A  <h1>Index of {{rel_path}}</h1>\0A  <table>\0A    <tr>\0A      <td>&nbsp;</td>\0A      <td>File name</td>\0A      <td>Type</td>\0A      <td>Size</td>\0A    </tr>\0A    <tr>\0A      <td><img src=\22/icons/back.png\22></td>\0A      <td colspan=\223\22><a href=\22..\22>Parent directory</a></td>\0A    </tr>\0A{{#file_list}}    <tr>\0A      <td><img src=\22/icons/{{file_list.icon}}.png\22 alt=\22{{file_list.icon_alt}}\22></td>\0A      <td><a href=\22{{rel_path}}/{{{file_list.name}}}\22>{{{file_list.name}}}</a></td>\0A      <td>{{file_list.type}}</td>\0A      <td>{{file_list.size}}{{file_list.unit}}</td>\0A    </tr>\0A{{/file_list}}{{^#file_list}}    <tr>\0A      <td colspan=\224\22>Empty directory.</td>\0A    </tr>\0A{{/file_list}}  </table>\0A</body>\0A</html>\0A\00", align 1, !dbg !531
@.str.21 = private unnamed_addr constant [10 x i8] c"full_path\00", align 1, !dbg !538
@.str.22 = private unnamed_addr constant [9 x i8] c"rel_path\00", align 1, !dbg !540
@.str.23 = private unnamed_addr constant [10 x i8] c"file_list\00", align 1, !dbg !542
@file_list_item_desc = internal constant [7 x %struct.lwan_var_descriptor_t_] [%struct.lwan_var_descriptor_t_ { ptr @.str.33, i64 24, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.34, i64 32, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.35, i64 40, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.36, i64 48, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.37, i64 56, ptr @lwan_append_int_to_strbuf, ptr @lwan_tpl_int_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ { ptr @.str.38, i64 64, ptr @lwan_append_str_to_strbuf, ptr @lwan_tpl_str_is_empty, ptr null, ptr null }, %struct.lwan_var_descriptor_t_ zeroinitializer], align 16, !dbg !606
@.str.24 = private unnamed_addr constant [7 x i8] c"folder\00", align 1, !dbg !569
@.str.25 = private unnamed_addr constant [4 x i8] c"DIR\00", align 1, !dbg !571
@.str.26 = private unnamed_addr constant [10 x i8] c"directory\00", align 1, !dbg !573
@.str.27 = private unnamed_addr constant [5 x i8] c"file\00", align 1, !dbg !575
@.str.28 = private unnamed_addr constant [5 x i8] c"FILE\00", align 1, !dbg !577
@.str.29 = private unnamed_addr constant [2 x i8] c"B\00", align 1, !dbg !579
@.str.30 = private unnamed_addr constant [4 x i8] c"KiB\00", align 1, !dbg !582
@.str.31 = private unnamed_addr constant [4 x i8] c"MiB\00", align 1, !dbg !584
@.str.32 = private unnamed_addr constant [4 x i8] c"GiB\00", align 1, !dbg !586
@.str.33 = private unnamed_addr constant [15 x i8] c"file_list.icon\00", align 1, !dbg !588
@.str.34 = private unnamed_addr constant [19 x i8] c"file_list.icon_alt\00", align 1, !dbg !593
@.str.35 = private unnamed_addr constant [15 x i8] c"file_list.name\00", align 1, !dbg !598
@.str.36 = private unnamed_addr constant [15 x i8] c"file_list.type\00", align 1, !dbg !600
@.str.37 = private unnamed_addr constant [15 x i8] c"file_list.size\00", align 1, !dbg !602
@.str.38 = private unnamed_addr constant [15 x i8] c"file_list.unit\00", align 1, !dbg !604
@.str.39 = private unnamed_addr constant [5 x i8] c"path\00", align 1, !dbg !609
@.str.40 = private unnamed_addr constant [11 x i8] c"index path\00", align 1, !dbg !611
@.str.41 = private unnamed_addr constant [26 x i8] c"serve precompressed files\00", align 1, !dbg !613
@__FUNCTION__.serve_files_shutdown = private unnamed_addr constant [21 x i8] c"serve_files_shutdown\00", align 1, !dbg !618
@.str.42 = private unnamed_addr constant [20 x i8] c"Nothing to shutdown\00", align 1, !dbg !623

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @lwan_module_serve_files() #0 !dbg !2 {
  ret ptr @lwan_module_serve_files.serve_files, !dbg !636
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @serve_files_init(ptr noundef %0) #0 !dbg !637 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !638, metadata !DIExpression()), !dbg !639
  call void @llvm.dbg.declare(metadata ptr %4, metadata !640, metadata !DIExpression()), !dbg !648
  %9 = load ptr, ptr %3, align 8, !dbg !649
  store ptr %9, ptr %4, align 8, !dbg !648
  call void @llvm.dbg.declare(metadata ptr %5, metadata !650, metadata !DIExpression()), !dbg !651
  call void @llvm.dbg.declare(metadata ptr %6, metadata !652, metadata !DIExpression()), !dbg !653
  call void @llvm.dbg.declare(metadata ptr %7, metadata !654, metadata !DIExpression()), !dbg !655
  call void @llvm.dbg.declare(metadata ptr %8, metadata !656, metadata !DIExpression()), !dbg !657
  %10 = load ptr, ptr %4, align 8, !dbg !658
  %11 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %10, i32 0, i32 0, !dbg !660
  %12 = load ptr, ptr %11, align 8, !dbg !660
  %13 = icmp ne ptr %12, null, !dbg !658
  br i1 %13, label %15, label %14, !dbg !661

14:                                               ; preds = %1
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.1, i32 noundef 646, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.2), !dbg !662
  store ptr null, ptr %2, align 8, !dbg !664
  br label %108, !dbg !664

15:                                               ; preds = %1
  %16 = load ptr, ptr %4, align 8, !dbg !665
  %17 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %16, i32 0, i32 0, !dbg !666
  %18 = load ptr, ptr %17, align 8, !dbg !666
  %19 = call ptr @realpath(ptr noundef %18, ptr noundef null) #8, !dbg !667
  store ptr %19, ptr %5, align 8, !dbg !668
  %20 = load ptr, ptr %5, align 8, !dbg !669
  %21 = icmp ne ptr %20, null, !dbg !669
  br i1 %21, label %26, label %22, !dbg !671

22:                                               ; preds = %15
  %23 = load ptr, ptr %4, align 8, !dbg !672
  %24 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %23, i32 0, i32 0, !dbg !672
  %25 = load ptr, ptr %24, align 8, !dbg !672
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 653, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.3, ptr noundef %25), !dbg !672
  br label %107, !dbg !674

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 8, !dbg !675
  %28 = call i32 @try_open_directory(ptr noundef %27, ptr noundef %8), !dbg !676
  store i32 %28, ptr %6, align 4, !dbg !677
  %29 = load i32, ptr %6, align 4, !dbg !678
  %30 = icmp slt i32 %29, 0, !dbg !680
  br i1 %30, label %31, label %33, !dbg !681

31:                                               ; preds = %26
  %32 = load ptr, ptr %5, align 8, !dbg !682
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 660, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.4, ptr noundef %32), !dbg !682
  br label %105, !dbg !684

33:                                               ; preds = %26
  %34 = call noalias ptr @malloc(i64 noundef 64) #9, !dbg !685
  store ptr %34, ptr %7, align 8, !dbg !686
  %35 = load ptr, ptr %7, align 8, !dbg !687
  %36 = icmp ne ptr %35, null, !dbg !687
  br i1 %36, label %38, label %37, !dbg !689

37:                                               ; preds = %33
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 666, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.5), !dbg !690
  br label %102, !dbg !692

38:                                               ; preds = %33
  %39 = load ptr, ptr %7, align 8, !dbg !693
  %40 = call ptr @cache_create(ptr noundef @create_cache_entry, ptr noundef @destroy_cache_entry, ptr noundef %39, i64 noundef 5), !dbg !694
  %41 = load ptr, ptr %7, align 8, !dbg !695
  %42 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %41, i32 0, i32 0, !dbg !696
  store ptr %40, ptr %42, align 8, !dbg !697
  %43 = load ptr, ptr %7, align 8, !dbg !698
  %44 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %43, i32 0, i32 0, !dbg !700
  %45 = load ptr, ptr %44, align 8, !dbg !700
  %46 = icmp ne ptr %45, null, !dbg !698
  br i1 %46, label %48, label %47, !dbg !701

47:                                               ; preds = %38
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.1, i32 noundef 673, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.6), !dbg !702
  br label %100, !dbg !704

48:                                               ; preds = %38
  %49 = load ptr, ptr @directory_list_tpl_str, align 8, !dbg !705
  %50 = call ptr @lwan_tpl_compile_string(ptr noundef %49, ptr noundef @file_list_desc), !dbg !706
  %51 = load ptr, ptr %7, align 8, !dbg !707
  %52 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %51, i32 0, i32 4, !dbg !708
  store ptr %50, ptr %52, align 8, !dbg !709
  %53 = load ptr, ptr %7, align 8, !dbg !710
  %54 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %53, i32 0, i32 4, !dbg !712
  %55 = load ptr, ptr %54, align 8, !dbg !712
  %56 = icmp ne ptr %55, null, !dbg !710
  br i1 %56, label %58, label %57, !dbg !713

57:                                               ; preds = %48
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_error_debug(ptr noundef @.str.1, i32 noundef 680, ptr noundef @__FUNCTION__.serve_files_init, ptr noundef @.str.7), !dbg !714
  br label %96, !dbg !716

58:                                               ; preds = %48
  %59 = load ptr, ptr %5, align 8, !dbg !717
  %60 = load ptr, ptr %7, align 8, !dbg !718
  %61 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %60, i32 0, i32 1, !dbg !719
  %62 = getelementptr inbounds %struct.anon.6, ptr %61, i32 0, i32 0, !dbg !720
  store ptr %59, ptr %62, align 8, !dbg !721
  %63 = load ptr, ptr %5, align 8, !dbg !722
  %64 = call i64 @strlen(ptr noundef %63) #10, !dbg !723
  %65 = load ptr, ptr %7, align 8, !dbg !724
  %66 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %65, i32 0, i32 1, !dbg !725
  %67 = getelementptr inbounds %struct.anon.6, ptr %66, i32 0, i32 1, !dbg !726
  store i64 %64, ptr %67, align 8, !dbg !727
  %68 = load i32, ptr %6, align 4, !dbg !728
  %69 = load ptr, ptr %7, align 8, !dbg !729
  %70 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %69, i32 0, i32 1, !dbg !730
  %71 = getelementptr inbounds %struct.anon.6, ptr %70, i32 0, i32 2, !dbg !731
  store i32 %68, ptr %71, align 8, !dbg !732
  %72 = load i32, ptr %8, align 4, !dbg !733
  %73 = load ptr, ptr %7, align 8, !dbg !734
  %74 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %73, i32 0, i32 2, !dbg !735
  store i32 %72, ptr %74, align 8, !dbg !736
  %75 = load ptr, ptr %4, align 8, !dbg !737
  %76 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %75, i32 0, i32 1, !dbg !738
  %77 = load ptr, ptr %76, align 8, !dbg !738
  %78 = icmp ne ptr %77, null, !dbg !737
  br i1 %78, label %79, label %83, !dbg !737

79:                                               ; preds = %58
  %80 = load ptr, ptr %4, align 8, !dbg !739
  %81 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %80, i32 0, i32 1, !dbg !740
  %82 = load ptr, ptr %81, align 8, !dbg !740
  br label %84, !dbg !737

83:                                               ; preds = %58
  br label %84, !dbg !737

84:                                               ; preds = %83, %79
  %85 = phi ptr [ %82, %79 ], [ @.str.8, %83 ], !dbg !737
  %86 = load ptr, ptr %7, align 8, !dbg !741
  %87 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %86, i32 0, i32 3, !dbg !742
  store ptr %85, ptr %87, align 8, !dbg !743
  %88 = load ptr, ptr %4, align 8, !dbg !744
  %89 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %88, i32 0, i32 2, !dbg !745
  %90 = load i8, ptr %89, align 8, !dbg !745
  %91 = trunc i8 %90 to i1, !dbg !745
  %92 = load ptr, ptr %7, align 8, !dbg !746
  %93 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %92, i32 0, i32 5, !dbg !747
  %94 = zext i1 %91 to i8, !dbg !748
  store i8 %94, ptr %93, align 8, !dbg !748
  %95 = load ptr, ptr %7, align 8, !dbg !749
  store ptr %95, ptr %2, align 8, !dbg !750
  br label %108, !dbg !750

96:                                               ; preds = %57
  call void @llvm.dbg.label(metadata !751), !dbg !752
  %97 = load ptr, ptr %7, align 8, !dbg !753
  %98 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %97, i32 0, i32 0, !dbg !754
  %99 = load ptr, ptr %98, align 8, !dbg !754
  call void @cache_destroy(ptr noundef %99), !dbg !755
  br label %100, !dbg !755

100:                                              ; preds = %96, %47
  call void @llvm.dbg.label(metadata !756), !dbg !757
  %101 = load ptr, ptr %7, align 8, !dbg !758
  call void @free(ptr noundef %101) #8, !dbg !759
  br label %102, !dbg !759

102:                                              ; preds = %100, %37
  call void @llvm.dbg.label(metadata !760), !dbg !761
  %103 = load i32, ptr %6, align 4, !dbg !762
  %104 = call i32 @close(i32 noundef %103), !dbg !763
  br label %105, !dbg !763

105:                                              ; preds = %102, %31
  call void @llvm.dbg.label(metadata !764), !dbg !765
  %106 = load ptr, ptr %5, align 8, !dbg !766
  call void @free(ptr noundef %106) #8, !dbg !767
  br label %107, !dbg !767

107:                                              ; preds = %105, %22
  call void @llvm.dbg.label(metadata !768), !dbg !769
  store ptr null, ptr %2, align 8, !dbg !770
  br label %108, !dbg !770

108:                                              ; preds = %107, %84, %14
  %109 = load ptr, ptr %2, align 8, !dbg !771
  ret ptr %109, !dbg !771
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @serve_files_init_from_hash(ptr noundef %0) #0 !dbg !772 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.lwan_serve_files_settings_t, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !773, metadata !DIExpression()), !dbg !774
  call void @llvm.dbg.declare(metadata ptr %3, metadata !775, metadata !DIExpression()), !dbg !776
  %4 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %3, i32 0, i32 0, !dbg !777
  %5 = load ptr, ptr %2, align 8, !dbg !778
  %6 = call ptr @hash_find(ptr noundef %5, ptr noundef @.str.39), !dbg !779
  store ptr %6, ptr %4, align 8, !dbg !777
  %7 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %3, i32 0, i32 1, !dbg !777
  %8 = load ptr, ptr %2, align 8, !dbg !780
  %9 = call ptr @hash_find(ptr noundef %8, ptr noundef @.str.40), !dbg !781
  store ptr %9, ptr %7, align 8, !dbg !777
  %10 = getelementptr inbounds %struct.lwan_serve_files_settings_t, ptr %3, i32 0, i32 2, !dbg !777
  %11 = load ptr, ptr %2, align 8, !dbg !782
  %12 = call ptr @hash_find(ptr noundef %11, ptr noundef @.str.41), !dbg !783
  %13 = call zeroext i1 @parse_bool(ptr noundef %12, i1 noundef zeroext true), !dbg !784
  %14 = zext i1 %13 to i8, !dbg !777
  store i8 %14, ptr %10, align 8, !dbg !777
  %15 = call ptr @serve_files_init(ptr noundef %3), !dbg !785
  ret ptr %15, !dbg !786
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serve_files_shutdown(ptr noundef %0) #0 !dbg !787 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !788, metadata !DIExpression()), !dbg !789
  call void @llvm.dbg.declare(metadata ptr %3, metadata !790, metadata !DIExpression()), !dbg !791
  %4 = load ptr, ptr %2, align 8, !dbg !792
  store ptr %4, ptr %3, align 8, !dbg !791
  %5 = load ptr, ptr %3, align 8, !dbg !793
  %6 = icmp ne ptr %5, null, !dbg !793
  br i1 %6, label %8, label %7, !dbg !795

7:                                                ; preds = %1
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.1, i32 noundef 723, ptr noundef @__FUNCTION__.serve_files_shutdown, ptr noundef @.str.42), !dbg !796
  br label %25, !dbg !798

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !799
  %10 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %9, i32 0, i32 4, !dbg !800
  %11 = load ptr, ptr %10, align 8, !dbg !800
  call void @lwan_tpl_free(ptr noundef %11), !dbg !801
  %12 = load ptr, ptr %3, align 8, !dbg !802
  %13 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %12, i32 0, i32 0, !dbg !803
  %14 = load ptr, ptr %13, align 8, !dbg !803
  call void @cache_destroy(ptr noundef %14), !dbg !804
  %15 = load ptr, ptr %3, align 8, !dbg !805
  %16 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %15, i32 0, i32 1, !dbg !806
  %17 = getelementptr inbounds %struct.anon.6, ptr %16, i32 0, i32 2, !dbg !807
  %18 = load i32, ptr %17, align 8, !dbg !807
  %19 = call i32 @close(i32 noundef %18), !dbg !808
  %20 = load ptr, ptr %3, align 8, !dbg !809
  %21 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %20, i32 0, i32 1, !dbg !810
  %22 = getelementptr inbounds %struct.anon.6, ptr %21, i32 0, i32 0, !dbg !811
  %23 = load ptr, ptr %22, align 8, !dbg !811
  call void @free(ptr noundef %23) #8, !dbg !812
  %24 = load ptr, ptr %3, align 8, !dbg !813
  call void @free(ptr noundef %24) #8, !dbg !814
  br label %25, !dbg !815

25:                                               ; preds = %8, %7
  ret void, !dbg !815
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serve_files_handle_cb(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !816 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !817, metadata !DIExpression()), !dbg !818
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !819, metadata !DIExpression()), !dbg !820
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !821, metadata !DIExpression()), !dbg !822
  call void @llvm.dbg.declare(metadata ptr %8, metadata !823, metadata !DIExpression()), !dbg !824
  store i32 404, ptr %8, align 4, !dbg !824
  call void @llvm.dbg.declare(metadata ptr %9, metadata !825, metadata !DIExpression()), !dbg !826
  %12 = load ptr, ptr %7, align 8, !dbg !827
  store ptr %12, ptr %9, align 8, !dbg !826
  call void @llvm.dbg.declare(metadata ptr %10, metadata !828, metadata !DIExpression()), !dbg !829
  %13 = load ptr, ptr %9, align 8, !dbg !830
  %14 = icmp ne ptr %13, null, !dbg !830
  %15 = xor i1 %14, true, !dbg !830
  %16 = zext i1 %15 to i32, !dbg !830
  %17 = sext i32 %16 to i64, !dbg !830
  %18 = icmp ne i64 %17, 0, !dbg !830
  br i1 %18, label %19, label %20, !dbg !832

19:                                               ; preds = %3
  store i32 500, ptr %8, align 4, !dbg !833
  br label %65, !dbg !835

20:                                               ; preds = %3
  %21 = load ptr, ptr %9, align 8, !dbg !836
  %22 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %21, i32 0, i32 0, !dbg !837
  %23 = load ptr, ptr %22, align 8, !dbg !837
  %24 = load ptr, ptr %5, align 8, !dbg !838
  %25 = getelementptr inbounds %struct.lwan_request_t_, ptr %24, i32 0, i32 4, !dbg !839
  %26 = load ptr, ptr %25, align 8, !dbg !839
  %27 = getelementptr inbounds %struct.lwan_connection_t_, ptr %26, i32 0, i32 2, !dbg !840
  %28 = load ptr, ptr %27, align 8, !dbg !840
  %29 = load ptr, ptr %5, align 8, !dbg !841
  %30 = getelementptr inbounds %struct.lwan_request_t_, ptr %29, i32 0, i32 2, !dbg !842
  %31 = getelementptr inbounds %struct.lwan_value_t_, ptr %30, i32 0, i32 0, !dbg !843
  %32 = load ptr, ptr %31, align 8, !dbg !843
  %33 = call ptr @cache_coro_get_and_ref_entry(ptr noundef %23, ptr noundef %28, ptr noundef %32), !dbg !844
  store ptr %33, ptr %10, align 8, !dbg !845
  %34 = load ptr, ptr %10, align 8, !dbg !846
  %35 = icmp ne ptr %34, null, !dbg !846
  %36 = xor i1 %35, true, !dbg !846
  %37 = xor i1 %36, true, !dbg !846
  %38 = zext i1 %37 to i32, !dbg !846
  %39 = sext i32 %38 to i64, !dbg !846
  %40 = icmp ne i64 %39, 0, !dbg !846
  br i1 %40, label %41, label %64, !dbg !848

41:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %11, metadata !849, metadata !DIExpression()), !dbg !851
  %42 = load ptr, ptr %10, align 8, !dbg !852
  store ptr %42, ptr %11, align 8, !dbg !851
  %43 = load ptr, ptr %11, align 8, !dbg !853
  %44 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %43, i32 0, i32 2, !dbg !854
  %45 = load ptr, ptr %44, align 8, !dbg !854
  %46 = load ptr, ptr %6, align 8, !dbg !855
  %47 = getelementptr inbounds %struct.lwan_response_t_, ptr %46, i32 0, i32 1, !dbg !856
  store ptr %45, ptr %47, align 8, !dbg !857
  %48 = load ptr, ptr %11, align 8, !dbg !858
  %49 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %48, i32 0, i32 3, !dbg !859
  %50 = load ptr, ptr %49, align 8, !dbg !859
  %51 = getelementptr inbounds %struct.cache_funcs_t_, ptr %50, i32 0, i32 0, !dbg !860
  %52 = load ptr, ptr %51, align 8, !dbg !860
  %53 = load ptr, ptr %6, align 8, !dbg !861
  %54 = getelementptr inbounds %struct.lwan_response_t_, ptr %53, i32 0, i32 4, !dbg !862
  %55 = getelementptr inbounds %struct.anon.5, ptr %54, i32 0, i32 0, !dbg !863
  store ptr %52, ptr %55, align 8, !dbg !864
  %56 = load ptr, ptr %10, align 8, !dbg !865
  %57 = load ptr, ptr %6, align 8, !dbg !866
  %58 = getelementptr inbounds %struct.lwan_response_t_, ptr %57, i32 0, i32 4, !dbg !867
  %59 = getelementptr inbounds %struct.anon.5, ptr %58, i32 0, i32 1, !dbg !868
  store ptr %56, ptr %59, align 8, !dbg !869
  %60 = load ptr, ptr %9, align 8, !dbg !870
  %61 = load ptr, ptr %6, align 8, !dbg !871
  %62 = getelementptr inbounds %struct.lwan_response_t_, ptr %61, i32 0, i32 4, !dbg !872
  %63 = getelementptr inbounds %struct.anon.5, ptr %62, i32 0, i32 2, !dbg !873
  store ptr %60, ptr %63, align 8, !dbg !874
  store i32 200, ptr %4, align 4, !dbg !875
  br label %70, !dbg !875

64:                                               ; preds = %20
  br label %65, !dbg !846

65:                                               ; preds = %64, %19
  call void @llvm.dbg.label(metadata !876), !dbg !877
  %66 = load ptr, ptr %6, align 8, !dbg !878
  %67 = getelementptr inbounds %struct.lwan_response_t_, ptr %66, i32 0, i32 4, !dbg !879
  %68 = getelementptr inbounds %struct.anon.5, ptr %67, i32 0, i32 0, !dbg !880
  store ptr null, ptr %68, align 8, !dbg !881
  %69 = load i32, ptr %8, align 4, !dbg !882
  store i32 %69, ptr %4, align 4, !dbg !883
  br label %70, !dbg !883

70:                                               ; preds = %65, %41
  %71 = load i32, ptr %4, align 4, !dbg !884
  ret i32 %71, !dbg !884
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @lwan_status_error_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare ptr @realpath(ptr noundef, ptr noundef) #3

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_open_directory(ptr noundef %0, ptr noundef %1) #0 !dbg !885 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !889, metadata !DIExpression()), !dbg !890
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !891, metadata !DIExpression()), !dbg !892
  call void @llvm.dbg.declare(metadata ptr %6, metadata !893, metadata !DIExpression()), !dbg !894
  %7 = load ptr, ptr %5, align 8, !dbg !895
  store i32 788480, ptr %7, align 4, !dbg !896
  %8 = load ptr, ptr %4, align 8, !dbg !897
  %9 = load ptr, ptr %5, align 8, !dbg !898
  %10 = load i32, ptr %9, align 4, !dbg !899
  %11 = or i32 %10, 65536, !dbg !900
  %12 = call i32 (ptr, i32, ...) @open(ptr noundef %8, i32 noundef %11), !dbg !901
  store i32 %12, ptr %6, align 4, !dbg !902
  %13 = load i32, ptr %6, align 4, !dbg !903
  %14 = icmp slt i32 %13, 0, !dbg !905
  br i1 %14, label %15, label %36, !dbg !906

15:                                               ; preds = %2
  %16 = load ptr, ptr %5, align 8, !dbg !907
  %17 = load i32, ptr %16, align 4, !dbg !909
  %18 = and i32 %17, -262145, !dbg !909
  store i32 %18, ptr %16, align 4, !dbg !909
  %19 = load ptr, ptr %4, align 8, !dbg !910
  %20 = load ptr, ptr %5, align 8, !dbg !911
  %21 = load i32, ptr %20, align 4, !dbg !912
  %22 = or i32 %21, 65536, !dbg !913
  %23 = call i32 (ptr, i32, ...) @open(ptr noundef %19, i32 noundef %22), !dbg !914
  store i32 %23, ptr %6, align 4, !dbg !915
  %24 = load i32, ptr %6, align 4, !dbg !916
  %25 = icmp slt i32 %24, 0, !dbg !918
  br i1 %25, label %26, label %35, !dbg !919

26:                                               ; preds = %15
  %27 = load ptr, ptr %5, align 8, !dbg !920
  %28 = load i32, ptr %27, align 4, !dbg !922
  %29 = and i32 %28, -2049, !dbg !922
  store i32 %29, ptr %27, align 4, !dbg !922
  %30 = load ptr, ptr %4, align 8, !dbg !923
  %31 = load ptr, ptr %5, align 8, !dbg !924
  %32 = load i32, ptr %31, align 4, !dbg !925
  %33 = or i32 %32, 65536, !dbg !926
  %34 = call i32 (ptr, i32, ...) @open(ptr noundef %30, i32 noundef %33), !dbg !927
  store i32 %34, ptr %6, align 4, !dbg !928
  br label %35, !dbg !929

35:                                               ; preds = %26, %15
  br label %36, !dbg !930

36:                                               ; preds = %35, %2
  %37 = load i32, ptr %6, align 4, !dbg !931
  %38 = icmp slt i32 %37, 0, !dbg !933
  br i1 %38, label %39, label %40, !dbg !934

39:                                               ; preds = %36
  store i32 -1, ptr %3, align 4, !dbg !935
  br label %49, !dbg !935

40:                                               ; preds = %36
  %41 = load i32, ptr %6, align 4, !dbg !936
  %42 = call i32 @close(i32 noundef %41), !dbg !937
  %43 = load ptr, ptr %4, align 8, !dbg !938
  %44 = load ptr, ptr %5, align 8, !dbg !939
  %45 = load i32, ptr %44, align 4, !dbg !940
  %46 = or i32 %45, 65536, !dbg !941
  %47 = or i32 %46, 2097152, !dbg !942
  %48 = call i32 (ptr, i32, ...) @open(ptr noundef %43, i32 noundef %47), !dbg !943
  store i32 %48, ptr %3, align 4, !dbg !944
  br label %49, !dbg !944

49:                                               ; preds = %40, %39
  %50 = load i32, ptr %3, align 4, !dbg !945
  ret i32 %50, !dbg !945
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

declare ptr @cache_create(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_cache_entry(ptr noundef %0, ptr noundef %1) #0 !dbg !946 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.stat, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [4096 x i8], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !949, metadata !DIExpression()), !dbg !950
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !951, metadata !DIExpression()), !dbg !952
  call void @llvm.dbg.declare(metadata ptr %6, metadata !953, metadata !DIExpression()), !dbg !954
  %11 = load ptr, ptr %5, align 8, !dbg !955
  store ptr %11, ptr %6, align 8, !dbg !954
  call void @llvm.dbg.declare(metadata ptr %7, metadata !956, metadata !DIExpression()), !dbg !957
  call void @llvm.dbg.declare(metadata ptr %8, metadata !958, metadata !DIExpression()), !dbg !959
  call void @llvm.dbg.declare(metadata ptr %9, metadata !960, metadata !DIExpression()), !dbg !961
  call void @llvm.dbg.declare(metadata ptr %10, metadata !962, metadata !DIExpression()), !dbg !966
  %12 = load ptr, ptr %6, align 8, !dbg !967
  %13 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %12, i32 0, i32 1, !dbg !967
  %14 = getelementptr inbounds %struct.anon.6, ptr %13, i32 0, i32 2, !dbg !967
  %15 = load i32, ptr %14, align 8, !dbg !967
  %16 = load ptr, ptr %6, align 8, !dbg !967
  %17 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %16, i32 0, i32 1, !dbg !967
  %18 = getelementptr inbounds %struct.anon.6, ptr %17, i32 0, i32 0, !dbg !967
  %19 = load ptr, ptr %18, align 8, !dbg !967
  %20 = load ptr, ptr %4, align 8, !dbg !967
  %21 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0, !dbg !967
  %22 = call ptr @realpathat2(i32 noundef %15, ptr noundef %19, ptr noundef %20, ptr noundef %21, ptr noundef %8), !dbg !967
  %23 = icmp ne ptr %22, null, !dbg !967
  %24 = xor i1 %23, true, !dbg !967
  %25 = zext i1 %24 to i32, !dbg !967
  %26 = sext i32 %25 to i64, !dbg !967
  %27 = icmp ne i64 %26, 0, !dbg !967
  br i1 %27, label %28, label %29, !dbg !969

28:                                               ; preds = %2
  store ptr null, ptr %3, align 8, !dbg !970
  br label %82, !dbg !970

29:                                               ; preds = %2
  %30 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0, !dbg !971
  %31 = load ptr, ptr %6, align 8, !dbg !971
  %32 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %31, i32 0, i32 1, !dbg !971
  %33 = getelementptr inbounds %struct.anon.6, ptr %32, i32 0, i32 0, !dbg !971
  %34 = load ptr, ptr %33, align 8, !dbg !971
  %35 = load ptr, ptr %6, align 8, !dbg !971
  %36 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %35, i32 0, i32 1, !dbg !971
  %37 = getelementptr inbounds %struct.anon.6, ptr %36, i32 0, i32 1, !dbg !971
  %38 = load i64, ptr %37, align 8, !dbg !971
  %39 = call i32 @strncmp(ptr noundef %30, ptr noundef %34, i64 noundef %38) #10, !dbg !971
  %40 = sext i32 %39 to i64, !dbg !971
  %41 = icmp ne i64 %40, 0, !dbg !971
  br i1 %41, label %42, label %43, !dbg !973

42:                                               ; preds = %29
  store ptr null, ptr %3, align 8, !dbg !974
  br label %82, !dbg !974

43:                                               ; preds = %29
  %44 = load ptr, ptr %6, align 8, !dbg !975
  %45 = load ptr, ptr %4, align 8, !dbg !976
  %46 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0, !dbg !977
  %47 = call ptr @get_funcs(ptr noundef %44, ptr noundef %45, ptr noundef %46, ptr noundef %8), !dbg !978
  store ptr %47, ptr %9, align 8, !dbg !979
  %48 = load ptr, ptr %9, align 8, !dbg !980
  %49 = icmp ne ptr %48, null, !dbg !980
  %50 = xor i1 %49, true, !dbg !980
  %51 = zext i1 %50 to i32, !dbg !980
  %52 = sext i32 %51 to i64, !dbg !980
  %53 = icmp ne i64 %52, 0, !dbg !980
  br i1 %53, label %54, label %55, !dbg !982

54:                                               ; preds = %43
  store ptr null, ptr %3, align 8, !dbg !983
  br label %82, !dbg !983

55:                                               ; preds = %43
  %56 = load ptr, ptr %6, align 8, !dbg !984
  %57 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0, !dbg !985
  %58 = load ptr, ptr %9, align 8, !dbg !986
  %59 = call ptr @create_cache_entry_from_funcs(ptr noundef %56, ptr noundef %57, ptr noundef %8, ptr noundef %58), !dbg !987
  store ptr %59, ptr %7, align 8, !dbg !988
  %60 = load ptr, ptr %7, align 8, !dbg !989
  %61 = icmp ne ptr %60, null, !dbg !989
  %62 = xor i1 %61, true, !dbg !989
  %63 = zext i1 %62 to i32, !dbg !989
  %64 = sext i32 %63 to i64, !dbg !989
  %65 = icmp ne i64 %64, 0, !dbg !989
  br i1 %65, label %66, label %67, !dbg !991

66:                                               ; preds = %55
  store ptr null, ptr %3, align 8, !dbg !992
  br label %82, !dbg !992

67:                                               ; preds = %55
  %68 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 12, !dbg !993
  %69 = getelementptr inbounds %struct.timespec, ptr %68, i32 0, i32 0, !dbg !993
  %70 = load i64, ptr %69, align 8, !dbg !993
  %71 = load ptr, ptr %7, align 8, !dbg !994
  %72 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %71, i32 0, i32 1, !dbg !995
  %73 = getelementptr inbounds %struct.anon.7, ptr %72, i32 0, i32 0, !dbg !996
  %74 = getelementptr inbounds [31 x i8], ptr %73, i64 0, i64 0, !dbg !994
  call void @lwan_format_rfc_time(i64 noundef %70, ptr noundef %74), !dbg !997
  %75 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 12, !dbg !998
  %76 = getelementptr inbounds %struct.timespec, ptr %75, i32 0, i32 0, !dbg !998
  %77 = load i64, ptr %76, align 8, !dbg !998
  %78 = load ptr, ptr %7, align 8, !dbg !999
  %79 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %78, i32 0, i32 1, !dbg !1000
  %80 = getelementptr inbounds %struct.anon.7, ptr %79, i32 0, i32 1, !dbg !1001
  store i64 %77, ptr %80, align 8, !dbg !1002
  %81 = load ptr, ptr %7, align 8, !dbg !1003
  store ptr %81, ptr %3, align 8, !dbg !1004
  br label %82, !dbg !1004

82:                                               ; preds = %67, %66, %54, %42, %28
  %83 = load ptr, ptr %3, align 8, !dbg !1005
  ret ptr %83, !dbg !1005
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cache_entry(ptr noundef %0, ptr noundef %1) #0 !dbg !1006 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1009, metadata !DIExpression()), !dbg !1010
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1011, metadata !DIExpression()), !dbg !1012
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1013, metadata !DIExpression()), !dbg !1014
  %6 = load ptr, ptr %3, align 8, !dbg !1015
  store ptr %6, ptr %5, align 8, !dbg !1014
  %7 = load ptr, ptr %5, align 8, !dbg !1016
  %8 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %7, i32 0, i32 3, !dbg !1017
  %9 = load ptr, ptr %8, align 8, !dbg !1017
  %10 = getelementptr inbounds %struct.cache_funcs_t_, ptr %9, i32 0, i32 2, !dbg !1018
  %11 = load ptr, ptr %10, align 8, !dbg !1018
  %12 = load ptr, ptr %5, align 8, !dbg !1019
  %13 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %12, i64 1, !dbg !1020
  call void %11(ptr noundef %13), !dbg !1016
  %14 = load ptr, ptr %5, align 8, !dbg !1021
  call void @free(ptr noundef %14) #8, !dbg !1022
  ret void, !dbg !1023
}

declare ptr @lwan_tpl_compile_string(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @cache_destroy(ptr noundef) #2

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

declare i32 @close(i32 noundef) #2

declare i32 @open(ptr noundef, i32 noundef, ...) #2

declare ptr @realpathat2(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_funcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1024 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca [4096 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1027, metadata !DIExpression()), !dbg !1028
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1029, metadata !DIExpression()), !dbg !1030
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1031, metadata !DIExpression()), !dbg !1032
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1033, metadata !DIExpression()), !dbg !1034
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1035, metadata !DIExpression()), !dbg !1036
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1037, metadata !DIExpression()), !dbg !1038
  %14 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0, !dbg !1039
  store ptr %14, ptr %11, align 8, !dbg !1038
  %15 = load ptr, ptr %9, align 8, !dbg !1040
  %16 = getelementptr inbounds %struct.stat, ptr %15, i32 0, i32 3, !dbg !1040
  %17 = load i32, ptr %16, align 8, !dbg !1040
  %18 = and i32 %17, 61440, !dbg !1040
  %19 = icmp eq i32 %18, 16384, !dbg !1040
  br i1 %19, label %20, label %112, !dbg !1042

20:                                               ; preds = %4
  %21 = load ptr, ptr %7, align 8, !dbg !1043
  %22 = load i8, ptr %21, align 1, !dbg !1046
  %23 = sext i8 %22 to i32, !dbg !1046
  %24 = icmp eq i32 %23, 0, !dbg !1047
  br i1 %24, label %25, label %29, !dbg !1048

25:                                               ; preds = %20
  %26 = load ptr, ptr %6, align 8, !dbg !1049
  %27 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %26, i32 0, i32 3, !dbg !1051
  %28 = load ptr, ptr %27, align 8, !dbg !1051
  store ptr %28, ptr %11, align 8, !dbg !1052
  br label %57, !dbg !1053

29:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1054, metadata !DIExpression()), !dbg !1056
  %30 = load ptr, ptr %7, align 8, !dbg !1057
  %31 = call ptr @rawmemchr(ptr noundef %30, i32 noundef 0) #10, !dbg !1058
  store ptr %31, ptr %12, align 8, !dbg !1056
  %32 = load ptr, ptr %12, align 8, !dbg !1059
  %33 = getelementptr inbounds i8, ptr %32, i64 -1, !dbg !1061
  %34 = load i8, ptr %33, align 1, !dbg !1062
  %35 = sext i8 %34 to i32, !dbg !1062
  %36 = icmp ne i32 %35, 47, !dbg !1063
  br i1 %36, label %37, label %38, !dbg !1064

37:                                               ; preds = %29
  store ptr @redir_funcs, ptr %5, align 8, !dbg !1065
  br label %119, !dbg !1065

38:                                               ; preds = %29
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1066, metadata !DIExpression()), !dbg !1067
  %39 = load ptr, ptr %11, align 8, !dbg !1068
  %40 = load ptr, ptr %7, align 8, !dbg !1069
  %41 = load ptr, ptr %6, align 8, !dbg !1070
  %42 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %41, i32 0, i32 3, !dbg !1071
  %43 = load ptr, ptr %42, align 8, !dbg !1071
  %44 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %39, i64 noundef 4096, ptr noundef @.str.9, ptr noundef %40, ptr noundef %43) #8, !dbg !1072
  store i32 %44, ptr %13, align 4, !dbg !1067
  %45 = load i32, ptr %13, align 4, !dbg !1073
  %46 = icmp slt i32 %45, 0, !dbg !1073
  br i1 %46, label %50, label %47, !dbg !1073

47:                                               ; preds = %38
  %48 = load i32, ptr %13, align 4, !dbg !1073
  %49 = icmp sge i32 %48, 4096, !dbg !1073
  br label %50, !dbg !1073

50:                                               ; preds = %47, %38
  %51 = phi i1 [ true, %38 ], [ %49, %47 ]
  %52 = zext i1 %51 to i32, !dbg !1073
  %53 = sext i32 %52 to i64, !dbg !1073
  %54 = icmp ne i64 %53, 0, !dbg !1073
  br i1 %54, label %55, label %56, !dbg !1075

55:                                               ; preds = %50
  store ptr null, ptr %5, align 8, !dbg !1076
  br label %119, !dbg !1076

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56, %25
  %58 = load ptr, ptr %6, align 8, !dbg !1077
  %59 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %58, i32 0, i32 1, !dbg !1079
  %60 = getelementptr inbounds %struct.anon.6, ptr %59, i32 0, i32 2, !dbg !1080
  %61 = load i32, ptr %60, align 8, !dbg !1080
  %62 = load ptr, ptr %11, align 8, !dbg !1081
  %63 = load ptr, ptr %9, align 8, !dbg !1082
  %64 = call i32 @fstatat(i32 noundef %61, ptr noundef %62, ptr noundef %63, i32 noundef 0) #8, !dbg !1083
  %65 = icmp slt i32 %64, 0, !dbg !1084
  br i1 %65, label %66, label %75, !dbg !1085

66:                                               ; preds = %57
  %67 = call ptr @__errno_location() #11, !dbg !1086
  %68 = load i32, ptr %67, align 4, !dbg !1086
  %69 = icmp ne i32 %68, 2, !dbg !1086
  %70 = zext i1 %69 to i32, !dbg !1086
  %71 = sext i32 %70 to i64, !dbg !1086
  %72 = icmp ne i64 %71, 0, !dbg !1086
  br i1 %72, label %73, label %74, !dbg !1089

73:                                               ; preds = %66
  store ptr null, ptr %5, align 8, !dbg !1090
  br label %119, !dbg !1090

74:                                               ; preds = %66
  store ptr @dirlist_funcs, ptr %5, align 8, !dbg !1091
  br label %119, !dbg !1091

75:                                               ; preds = %57
  %76 = load ptr, ptr %6, align 8, !dbg !1092
  %77 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %76, i32 0, i32 1, !dbg !1092
  %78 = getelementptr inbounds %struct.anon.6, ptr %77, i32 0, i32 1, !dbg !1092
  %79 = load i64, ptr %78, align 8, !dbg !1092
  %80 = add i64 %79, 1, !dbg !1092
  %81 = load ptr, ptr %11, align 8, !dbg !1092
  %82 = call i64 @strlen(ptr noundef %81) #10, !dbg !1092
  %83 = add i64 %80, %82, !dbg !1092
  %84 = add i64 %83, 1, !dbg !1092
  %85 = icmp uge i64 %84, 4096, !dbg !1092
  %86 = zext i1 %85 to i32, !dbg !1092
  %87 = sext i32 %86 to i64, !dbg !1092
  %88 = icmp ne i64 %87, 0, !dbg !1092
  br i1 %88, label %89, label %90, !dbg !1094

89:                                               ; preds = %75
  store ptr null, ptr %5, align 8, !dbg !1095
  br label %119, !dbg !1095

90:                                               ; preds = %75
  %91 = load ptr, ptr %8, align 8, !dbg !1096
  %92 = load ptr, ptr %6, align 8, !dbg !1097
  %93 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %92, i32 0, i32 1, !dbg !1098
  %94 = getelementptr inbounds %struct.anon.6, ptr %93, i32 0, i32 1, !dbg !1099
  %95 = load i64, ptr %94, align 8, !dbg !1099
  %96 = getelementptr inbounds i8, ptr %91, i64 %95, !dbg !1096
  store i8 47, ptr %96, align 1, !dbg !1100
  %97 = load ptr, ptr %8, align 8, !dbg !1101
  %98 = load ptr, ptr %6, align 8, !dbg !1102
  %99 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %98, i32 0, i32 1, !dbg !1103
  %100 = getelementptr inbounds %struct.anon.6, ptr %99, i32 0, i32 1, !dbg !1104
  %101 = load i64, ptr %100, align 8, !dbg !1104
  %102 = getelementptr inbounds i8, ptr %97, i64 %101, !dbg !1105
  %103 = getelementptr inbounds i8, ptr %102, i64 1, !dbg !1106
  %104 = load ptr, ptr %11, align 8, !dbg !1107
  %105 = load ptr, ptr %6, align 8, !dbg !1108
  %106 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %105, i32 0, i32 1, !dbg !1109
  %107 = getelementptr inbounds %struct.anon.6, ptr %106, i32 0, i32 1, !dbg !1110
  %108 = load i64, ptr %107, align 8, !dbg !1110
  %109 = sub i64 4096, %108, !dbg !1111
  %110 = sub i64 %109, 1, !dbg !1112
  %111 = call ptr @strncpy(ptr noundef %103, ptr noundef %104, i64 noundef %110) #8, !dbg !1113
  br label %112, !dbg !1114

112:                                              ; preds = %90, %4
  %113 = load ptr, ptr %9, align 8, !dbg !1115
  %114 = getelementptr inbounds %struct.stat, ptr %113, i32 0, i32 8, !dbg !1117
  %115 = load i64, ptr %114, align 8, !dbg !1117
  %116 = icmp slt i64 %115, 16384, !dbg !1118
  br i1 %116, label %117, label %118, !dbg !1119

117:                                              ; preds = %112
  store ptr @mmap_funcs, ptr %5, align 8, !dbg !1120
  br label %119, !dbg !1120

118:                                              ; preds = %112
  store ptr @sendfile_funcs, ptr %5, align 8, !dbg !1121
  br label %119, !dbg !1121

119:                                              ; preds = %118, %117, %89, %74, %73, %55, %37
  %120 = load ptr, ptr %5, align 8, !dbg !1122
  ret ptr %120, !dbg !1122
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @create_cache_entry_from_funcs(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1123 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1126, metadata !DIExpression()), !dbg !1127
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1128, metadata !DIExpression()), !dbg !1129
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1130, metadata !DIExpression()), !dbg !1131
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1132, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1134, metadata !DIExpression()), !dbg !1135
  %11 = load ptr, ptr %9, align 8, !dbg !1136
  %12 = getelementptr inbounds %struct.cache_funcs_t_, ptr %11, i32 0, i32 3, !dbg !1137
  %13 = load i64, ptr %12, align 8, !dbg !1137
  %14 = add i64 96, %13, !dbg !1138
  %15 = call noalias ptr @malloc(i64 noundef %14) #9, !dbg !1139
  store ptr %15, ptr %10, align 8, !dbg !1140
  %16 = load ptr, ptr %10, align 8, !dbg !1141
  %17 = icmp ne ptr %16, null, !dbg !1141
  %18 = xor i1 %17, true, !dbg !1141
  %19 = zext i1 %18 to i32, !dbg !1141
  %20 = sext i32 %19 to i64, !dbg !1141
  %21 = icmp ne i64 %20, 0, !dbg !1141
  br i1 %21, label %22, label %23, !dbg !1143

22:                                               ; preds = %4
  store ptr null, ptr %5, align 8, !dbg !1144
  br label %52, !dbg !1144

23:                                               ; preds = %4
  %24 = load ptr, ptr %9, align 8, !dbg !1145
  %25 = getelementptr inbounds %struct.cache_funcs_t_, ptr %24, i32 0, i32 1, !dbg !1145
  %26 = load ptr, ptr %25, align 8, !dbg !1145
  %27 = load ptr, ptr %10, align 8, !dbg !1145
  %28 = load ptr, ptr %6, align 8, !dbg !1145
  %29 = load ptr, ptr %7, align 8, !dbg !1145
  %30 = load ptr, ptr %8, align 8, !dbg !1145
  %31 = call zeroext i1 %26(ptr noundef %27, ptr noundef %28, ptr noundef %29, ptr noundef %30), !dbg !1145
  %32 = xor i1 %31, true, !dbg !1145
  %33 = xor i1 %32, true, !dbg !1145
  %34 = zext i1 %33 to i32, !dbg !1145
  %35 = sext i32 %34 to i64, !dbg !1145
  %36 = icmp ne i64 %35, 0, !dbg !1145
  br i1 %36, label %37, label %42, !dbg !1147

37:                                               ; preds = %23
  %38 = load ptr, ptr %9, align 8, !dbg !1148
  %39 = load ptr, ptr %10, align 8, !dbg !1150
  %40 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %39, i32 0, i32 3, !dbg !1151
  store ptr %38, ptr %40, align 8, !dbg !1152
  %41 = load ptr, ptr %10, align 8, !dbg !1153
  store ptr %41, ptr %5, align 8, !dbg !1154
  br label %52, !dbg !1154

42:                                               ; preds = %23
  %43 = load ptr, ptr %10, align 8, !dbg !1155
  call void @free(ptr noundef %43) #8, !dbg !1156
  %44 = load ptr, ptr %9, align 8, !dbg !1157
  %45 = icmp ne ptr %44, @mmap_funcs, !dbg !1159
  br i1 %45, label %46, label %47, !dbg !1160

46:                                               ; preds = %42
  store ptr null, ptr %5, align 8, !dbg !1161
  br label %52, !dbg !1161

47:                                               ; preds = %42
  %48 = load ptr, ptr %6, align 8, !dbg !1162
  %49 = load ptr, ptr %7, align 8, !dbg !1163
  %50 = load ptr, ptr %8, align 8, !dbg !1164
  %51 = call ptr @create_cache_entry_from_funcs(ptr noundef %48, ptr noundef %49, ptr noundef %50, ptr noundef @sendfile_funcs), !dbg !1165
  store ptr %51, ptr %5, align 8, !dbg !1166
  br label %52, !dbg !1166

52:                                               ; preds = %47, %46, %37, %22
  %53 = load ptr, ptr %5, align 8, !dbg !1167
  ret ptr %53, !dbg !1167
}

declare void @lwan_format_rfc_time(i64 noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare ptr @rawmemchr(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nounwind
declare i32 @fstatat(i32 noundef, ptr noundef, ptr noundef, i32 noundef) #3

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: nounwind
declare ptr @strncpy(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @redir_serve(ptr noundef %0, ptr noundef %1) #0 !dbg !1168 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca [4096 x i8], align 16
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.lwan_key_value_t_], align 16
  %11 = alloca [2 x %struct.iovec], align 16
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1169, metadata !DIExpression()), !dbg !1170
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1171, metadata !DIExpression()), !dbg !1172
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1173, metadata !DIExpression()), !dbg !1174
  %12 = load ptr, ptr %5, align 8, !dbg !1175
  store ptr %12, ptr %6, align 8, !dbg !1174
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1176, metadata !DIExpression()), !dbg !1177
  %13 = load ptr, ptr %6, align 8, !dbg !1178
  %14 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %13, i64 1, !dbg !1179
  store ptr %14, ptr %7, align 8, !dbg !1177
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1180, metadata !DIExpression()), !dbg !1181
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1182, metadata !DIExpression()), !dbg !1183
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1184, metadata !DIExpression()), !dbg !1186
  %15 = getelementptr inbounds [2 x %struct.lwan_key_value_t_], ptr %10, i64 0, i64 0, !dbg !1187
  %16 = load ptr, ptr %4, align 8, !dbg !1188
  %17 = getelementptr inbounds %struct.lwan_request_t_, ptr %16, i32 0, i32 8, !dbg !1189
  %18 = getelementptr inbounds %struct.lwan_response_t_, ptr %17, i32 0, i32 3, !dbg !1190
  store ptr %15, ptr %18, align 8, !dbg !1191
  %19 = load ptr, ptr %7, align 8, !dbg !1192
  %20 = getelementptr inbounds %struct.redir_cache_data_t_, ptr %19, i32 0, i32 0, !dbg !1193
  %21 = load ptr, ptr %20, align 8, !dbg !1193
  %22 = call i64 @strlen(ptr noundef %21) #10, !dbg !1194
  %23 = load ptr, ptr %4, align 8, !dbg !1195
  %24 = getelementptr inbounds %struct.lwan_request_t_, ptr %23, i32 0, i32 8, !dbg !1196
  %25 = getelementptr inbounds %struct.lwan_response_t_, ptr %24, i32 0, i32 2, !dbg !1197
  store i64 %22, ptr %25, align 8, !dbg !1198
  br label %26, !dbg !1199

26:                                               ; preds = %2
  %27 = getelementptr inbounds [2 x %struct.lwan_key_value_t_], ptr %10, i64 0, i64 0, !dbg !1200
  %28 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %27, i32 0, i32 0, !dbg !1200
  store ptr @.str.10, ptr %28, align 16, !dbg !1200
  %29 = load ptr, ptr %7, align 8, !dbg !1200
  %30 = getelementptr inbounds %struct.redir_cache_data_t_, ptr %29, i32 0, i32 0, !dbg !1200
  %31 = load ptr, ptr %30, align 8, !dbg !1200
  %32 = getelementptr inbounds [2 x %struct.lwan_key_value_t_], ptr %10, i64 0, i64 0, !dbg !1200
  %33 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %32, i32 0, i32 1, !dbg !1200
  store ptr %31, ptr %33, align 8, !dbg !1200
  br label %34, !dbg !1200

34:                                               ; preds = %26
  br label %35, !dbg !1202

35:                                               ; preds = %34
  %36 = getelementptr inbounds [2 x %struct.lwan_key_value_t_], ptr %10, i64 0, i64 1, !dbg !1203
  %37 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %36, i32 0, i32 0, !dbg !1203
  store ptr null, ptr %37, align 16, !dbg !1203
  %38 = getelementptr inbounds [2 x %struct.lwan_key_value_t_], ptr %10, i64 0, i64 1, !dbg !1203
  %39 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %38, i32 0, i32 1, !dbg !1203
  store ptr null, ptr %39, align 8, !dbg !1203
  br label %40, !dbg !1203

40:                                               ; preds = %35
  %41 = load ptr, ptr %4, align 8, !dbg !1205
  %42 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0, !dbg !1206
  %43 = call i64 @lwan_prepare_response_header(ptr noundef %41, i32 noundef 301, ptr noundef %42, i64 noundef 4096), !dbg !1207
  store i64 %43, ptr %9, align 8, !dbg !1208
  %44 = load i64, ptr %9, align 8, !dbg !1209
  %45 = icmp ne i64 %44, 0, !dbg !1209
  %46 = xor i1 %45, true, !dbg !1209
  %47 = zext i1 %46 to i32, !dbg !1209
  %48 = sext i32 %47 to i64, !dbg !1209
  %49 = icmp ne i64 %48, 0, !dbg !1209
  br i1 %49, label %50, label %51, !dbg !1211

50:                                               ; preds = %40
  store i32 500, ptr %3, align 4, !dbg !1212
  br label %70, !dbg !1212

51:                                               ; preds = %40
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1213, metadata !DIExpression()), !dbg !1220
  %52 = getelementptr inbounds [2 x %struct.iovec], ptr %11, i64 0, i64 0, !dbg !1221
  %53 = getelementptr inbounds %struct.iovec, ptr %52, i32 0, i32 0, !dbg !1222
  %54 = getelementptr inbounds [4096 x i8], ptr %8, i64 0, i64 0, !dbg !1223
  store ptr %54, ptr %53, align 16, !dbg !1222
  %55 = getelementptr inbounds %struct.iovec, ptr %52, i32 0, i32 1, !dbg !1222
  %56 = load i64, ptr %9, align 8, !dbg !1224
  store i64 %56, ptr %55, align 8, !dbg !1222
  %57 = getelementptr inbounds %struct.iovec, ptr %52, i64 1, !dbg !1221
  %58 = getelementptr inbounds %struct.iovec, ptr %57, i32 0, i32 0, !dbg !1225
  %59 = load ptr, ptr %7, align 8, !dbg !1226
  %60 = getelementptr inbounds %struct.redir_cache_data_t_, ptr %59, i32 0, i32 0, !dbg !1227
  %61 = load ptr, ptr %60, align 8, !dbg !1227
  store ptr %61, ptr %58, align 16, !dbg !1225
  %62 = getelementptr inbounds %struct.iovec, ptr %57, i32 0, i32 1, !dbg !1225
  %63 = load ptr, ptr %4, align 8, !dbg !1228
  %64 = getelementptr inbounds %struct.lwan_request_t_, ptr %63, i32 0, i32 8, !dbg !1229
  %65 = getelementptr inbounds %struct.lwan_response_t_, ptr %64, i32 0, i32 2, !dbg !1230
  %66 = load i64, ptr %65, align 8, !dbg !1230
  store i64 %66, ptr %62, align 8, !dbg !1225
  %67 = load ptr, ptr %4, align 8, !dbg !1231
  %68 = getelementptr inbounds [2 x %struct.iovec], ptr %11, i64 0, i64 0, !dbg !1232
  %69 = call i64 @lwan_writev(ptr noundef %67, ptr noundef %68, i32 noundef 2), !dbg !1233
  store i32 301, ptr %3, align 4, !dbg !1234
  br label %70, !dbg !1234

70:                                               ; preds = %51, %50
  %71 = load i32, ptr %3, align 4, !dbg !1235
  ret i32 %71, !dbg !1235
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @redir_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1236 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1237, metadata !DIExpression()), !dbg !1238
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1239, metadata !DIExpression()), !dbg !1240
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1241, metadata !DIExpression()), !dbg !1242
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1243, metadata !DIExpression()), !dbg !1244
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1245, metadata !DIExpression()), !dbg !1246
  %11 = load ptr, ptr %6, align 8, !dbg !1247
  %12 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %11, i64 1, !dbg !1248
  store ptr %12, ptr %10, align 8, !dbg !1246
  %13 = load ptr, ptr %10, align 8, !dbg !1249
  %14 = getelementptr inbounds %struct.redir_cache_data_t_, ptr %13, i32 0, i32 0, !dbg !1251
  %15 = load ptr, ptr %8, align 8, !dbg !1252
  %16 = load ptr, ptr %7, align 8, !dbg !1253
  %17 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %16, i32 0, i32 1, !dbg !1254
  %18 = getelementptr inbounds %struct.anon.6, ptr %17, i32 0, i32 1, !dbg !1255
  %19 = load i64, ptr %18, align 8, !dbg !1255
  %20 = getelementptr inbounds i8, ptr %15, i64 %19, !dbg !1256
  %21 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %14, ptr noundef @.str.11, ptr noundef %20) #8, !dbg !1257
  %22 = icmp slt i32 %21, 0, !dbg !1258
  br i1 %22, label %23, label %24, !dbg !1259

23:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !1260
  br label %27, !dbg !1260

24:                                               ; preds = %4
  %25 = load ptr, ptr %6, align 8, !dbg !1261
  %26 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %25, i32 0, i32 2, !dbg !1262
  store ptr @.str.12, ptr %26, align 8, !dbg !1263
  store i1 true, ptr %5, align 1, !dbg !1264
  br label %27, !dbg !1264

27:                                               ; preds = %24, %23
  %28 = load i1, ptr %5, align 1, !dbg !1265
  ret i1 %28, !dbg !1265
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redir_free(ptr noundef %0) #0 !dbg !1266 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1267, metadata !DIExpression()), !dbg !1268
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1269, metadata !DIExpression()), !dbg !1270
  %4 = load ptr, ptr %2, align 8, !dbg !1271
  store ptr %4, ptr %3, align 8, !dbg !1270
  %5 = load ptr, ptr %3, align 8, !dbg !1272
  %6 = getelementptr inbounds %struct.redir_cache_data_t_, ptr %5, i32 0, i32 0, !dbg !1273
  %7 = load ptr, ptr %6, align 8, !dbg !1273
  call void @free(ptr noundef %7) #8, !dbg !1274
  ret void, !dbg !1275
}

declare i64 @lwan_prepare_response_header(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

declare i64 @lwan_writev(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @asprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dirlist_serve(ptr noundef %0, ptr noundef %1) #0 !dbg !1276 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1277, metadata !DIExpression()), !dbg !1278
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1279, metadata !DIExpression()), !dbg !1280
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1281, metadata !DIExpression()), !dbg !1282
  %7 = load ptr, ptr %4, align 8, !dbg !1283
  store ptr %7, ptr %5, align 8, !dbg !1282
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1284, metadata !DIExpression()), !dbg !1285
  %8 = load ptr, ptr %5, align 8, !dbg !1286
  %9 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %8, i64 1, !dbg !1287
  store ptr %9, ptr %6, align 8, !dbg !1285
  %10 = load ptr, ptr %3, align 8, !dbg !1288
  %11 = load ptr, ptr %5, align 8, !dbg !1289
  %12 = load ptr, ptr @compression_none, align 8, !dbg !1290
  %13 = load ptr, ptr %6, align 8, !dbg !1291
  %14 = getelementptr inbounds %struct.dir_list_cache_data_t_, ptr %13, i32 0, i32 0, !dbg !1291
  %15 = load ptr, ptr %14, align 8, !dbg !1291
  %16 = getelementptr inbounds %struct.strbuf_t_, ptr %15, i32 0, i32 0, !dbg !1291
  %17 = load ptr, ptr %16, align 8, !dbg !1291
  %18 = load ptr, ptr %6, align 8, !dbg !1292
  %19 = getelementptr inbounds %struct.dir_list_cache_data_t_, ptr %18, i32 0, i32 0, !dbg !1292
  %20 = load ptr, ptr %19, align 8, !dbg !1292
  %21 = getelementptr inbounds %struct.strbuf_t_, ptr %20, i32 0, i32 1, !dbg !1292
  %22 = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1, !dbg !1292
  %23 = load i64, ptr %22, align 8, !dbg !1292
  %24 = call i32 @serve_contents_and_size(ptr noundef %10, ptr noundef %11, ptr noundef %12, ptr noundef %17, i64 noundef %23), !dbg !1293
  ret i32 %24, !dbg !1294
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @dirlist_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1295 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca %struct.file_list_t, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1296, metadata !DIExpression()), !dbg !1297
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1298, metadata !DIExpression()), !dbg !1299
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1300, metadata !DIExpression()), !dbg !1301
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1302, metadata !DIExpression()), !dbg !1303
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1304, metadata !DIExpression()), !dbg !1305
  %11 = load ptr, ptr %5, align 8, !dbg !1306
  %12 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %11, i64 1, !dbg !1307
  store ptr %12, ptr %9, align 8, !dbg !1305
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1308, metadata !DIExpression()), !dbg !1323
  call void @llvm.memset.p0.i64(ptr align 8 %10, i8 0, i64 72, i1 false), !dbg !1323
  %13 = getelementptr inbounds %struct.file_list_t, ptr %10, i32 0, i32 0, !dbg !1324
  %14 = load ptr, ptr %7, align 8, !dbg !1325
  store ptr %14, ptr %13, align 8, !dbg !1324
  %15 = getelementptr inbounds %struct.file_list_t, ptr %10, i32 0, i32 1, !dbg !1324
  %16 = load ptr, ptr %7, align 8, !dbg !1326
  %17 = load ptr, ptr %6, align 8, !dbg !1327
  %18 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %17, i32 0, i32 1, !dbg !1328
  %19 = getelementptr inbounds %struct.anon.6, ptr %18, i32 0, i32 1, !dbg !1329
  %20 = load i64, ptr %19, align 8, !dbg !1329
  %21 = getelementptr inbounds i8, ptr %16, i64 %20, !dbg !1330
  store ptr %21, ptr %15, align 8, !dbg !1324
  %22 = load ptr, ptr %6, align 8, !dbg !1331
  %23 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %22, i32 0, i32 4, !dbg !1332
  %24 = load ptr, ptr %23, align 8, !dbg !1332
  %25 = call ptr @lwan_tpl_apply(ptr noundef %24, ptr noundef %10), !dbg !1333
  %26 = load ptr, ptr %9, align 8, !dbg !1334
  %27 = getelementptr inbounds %struct.dir_list_cache_data_t_, ptr %26, i32 0, i32 0, !dbg !1335
  store ptr %25, ptr %27, align 8, !dbg !1336
  %28 = load ptr, ptr %5, align 8, !dbg !1337
  %29 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %28, i32 0, i32 2, !dbg !1338
  store ptr @.str.15, ptr %29, align 8, !dbg !1339
  %30 = load ptr, ptr %9, align 8, !dbg !1340
  %31 = getelementptr inbounds %struct.dir_list_cache_data_t_, ptr %30, i32 0, i32 0, !dbg !1341
  %32 = load ptr, ptr %31, align 8, !dbg !1341
  %33 = icmp ne ptr %32, null, !dbg !1342
  %34 = xor i1 %33, true, !dbg !1342
  %35 = xor i1 %34, true, !dbg !1343
  ret i1 %35, !dbg !1344
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dirlist_free(ptr noundef %0) #0 !dbg !1345 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1346, metadata !DIExpression()), !dbg !1347
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1348, metadata !DIExpression()), !dbg !1349
  %4 = load ptr, ptr %2, align 8, !dbg !1350
  store ptr %4, ptr %3, align 8, !dbg !1349
  %5 = load ptr, ptr %3, align 8, !dbg !1351
  %6 = getelementptr inbounds %struct.dir_list_cache_data_t_, ptr %5, i32 0, i32 0, !dbg !1352
  %7 = load ptr, ptr %6, align 8, !dbg !1352
  call void @strbuf_free(ptr noundef %7), !dbg !1353
  ret void, !dbg !1354
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serve_contents_and_size(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1355 {
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca [4096 x i8], align 16
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca [2 x %struct.iovec], align 16
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1358, metadata !DIExpression()), !dbg !1359
  store ptr %1, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1360, metadata !DIExpression()), !dbg !1361
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1362, metadata !DIExpression()), !dbg !1363
  store ptr %3, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1364, metadata !DIExpression()), !dbg !1365
  store i64 %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1366, metadata !DIExpression()), !dbg !1367
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1368, metadata !DIExpression()), !dbg !1369
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1370, metadata !DIExpression()), !dbg !1371
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1372, metadata !DIExpression()), !dbg !1373
  store i32 200, ptr %16, align 4, !dbg !1373
  %18 = load ptr, ptr %9, align 8, !dbg !1374
  %19 = load ptr, ptr %10, align 8, !dbg !1376
  %20 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %19, i32 0, i32 1, !dbg !1377
  %21 = getelementptr inbounds %struct.anon.7, ptr %20, i32 0, i32 1, !dbg !1378
  %22 = load i64, ptr %21, align 8, !dbg !1378
  store ptr %18, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1379, metadata !DIExpression()), !dbg !1383
  store i64 %22, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1385, metadata !DIExpression()), !dbg !1386
  %23 = load ptr, ptr %6, align 8, !dbg !1387
  %24 = getelementptr inbounds %struct.lwan_request_t_, ptr %23, i32 0, i32 7, !dbg !1388
  %25 = load i64, ptr %24, align 8, !dbg !1389
  %26 = icmp ne i64 %25, 0, !dbg !1387
  br i1 %26, label %27, label %33, !dbg !1390

27:                                               ; preds = %5
  %28 = load i64, ptr %7, align 8, !dbg !1391
  %29 = load ptr, ptr %6, align 8, !dbg !1392
  %30 = getelementptr inbounds %struct.lwan_request_t_, ptr %29, i32 0, i32 7, !dbg !1393
  %31 = load i64, ptr %30, align 8, !dbg !1394
  %32 = icmp sle i64 %28, %31, !dbg !1395
  br label %33

33:                                               ; preds = %5, %27
  %34 = phi i1 [ false, %5 ], [ %32, %27 ], !dbg !1396
  br i1 %34, label %35, label %36, !dbg !1397

35:                                               ; preds = %33
  store i32 304, ptr %16, align 4, !dbg !1398
  br label %36, !dbg !1399

36:                                               ; preds = %35, %33
  %37 = load ptr, ptr %9, align 8, !dbg !1400
  %38 = load i32, ptr %16, align 4, !dbg !1401
  %39 = load ptr, ptr %10, align 8, !dbg !1402
  %40 = load i64, ptr %13, align 8, !dbg !1403
  %41 = load ptr, ptr %11, align 8, !dbg !1404
  %42 = getelementptr inbounds [4096 x i8], ptr %14, i64 0, i64 0, !dbg !1405
  %43 = call i64 @prepare_headers(ptr noundef %37, i32 noundef %38, ptr noundef %39, i64 noundef %40, ptr noundef %41, ptr noundef %42, i64 noundef 512), !dbg !1406
  store i64 %43, ptr %15, align 8, !dbg !1407
  %44 = load i64, ptr %15, align 8, !dbg !1408
  %45 = icmp ne i64 %44, 0, !dbg !1408
  %46 = xor i1 %45, true, !dbg !1408
  %47 = zext i1 %46 to i32, !dbg !1408
  %48 = sext i32 %47 to i64, !dbg !1408
  %49 = icmp ne i64 %48, 0, !dbg !1408
  br i1 %49, label %50, label %51, !dbg !1410

50:                                               ; preds = %36
  store i32 500, ptr %8, align 4, !dbg !1411
  br label %81, !dbg !1411

51:                                               ; preds = %36
  %52 = load ptr, ptr %9, align 8, !dbg !1412
  %53 = getelementptr inbounds %struct.lwan_request_t_, ptr %52, i32 0, i32 0, !dbg !1414
  %54 = load i32, ptr %53, align 8, !dbg !1414
  %55 = and i32 %54, 2, !dbg !1415
  %56 = icmp ne i32 %55, 0, !dbg !1415
  br i1 %56, label %60, label %57, !dbg !1416

57:                                               ; preds = %51
  %58 = load i32, ptr %16, align 4, !dbg !1417
  %59 = icmp eq i32 %58, 304, !dbg !1418
  br i1 %59, label %60, label %65, !dbg !1419

60:                                               ; preds = %57, %51
  %61 = load ptr, ptr %9, align 8, !dbg !1420
  %62 = getelementptr inbounds [4096 x i8], ptr %14, i64 0, i64 0, !dbg !1422
  %63 = load i64, ptr %15, align 8, !dbg !1423
  %64 = call i64 @lwan_write(ptr noundef %61, ptr noundef %62, i64 noundef %63), !dbg !1424
  br label %79, !dbg !1425

65:                                               ; preds = %57
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1426, metadata !DIExpression()), !dbg !1428
  %66 = getelementptr inbounds [2 x %struct.iovec], ptr %17, i64 0, i64 0, !dbg !1429
  %67 = getelementptr inbounds %struct.iovec, ptr %66, i32 0, i32 0, !dbg !1430
  %68 = getelementptr inbounds [4096 x i8], ptr %14, i64 0, i64 0, !dbg !1431
  store ptr %68, ptr %67, align 16, !dbg !1430
  %69 = getelementptr inbounds %struct.iovec, ptr %66, i32 0, i32 1, !dbg !1430
  %70 = load i64, ptr %15, align 8, !dbg !1432
  store i64 %70, ptr %69, align 8, !dbg !1430
  %71 = getelementptr inbounds %struct.iovec, ptr %66, i64 1, !dbg !1429
  %72 = getelementptr inbounds %struct.iovec, ptr %71, i32 0, i32 0, !dbg !1433
  %73 = load ptr, ptr %12, align 8, !dbg !1434
  store ptr %73, ptr %72, align 16, !dbg !1433
  %74 = getelementptr inbounds %struct.iovec, ptr %71, i32 0, i32 1, !dbg !1433
  %75 = load i64, ptr %13, align 8, !dbg !1435
  store i64 %75, ptr %74, align 8, !dbg !1433
  %76 = load ptr, ptr %9, align 8, !dbg !1436
  %77 = getelementptr inbounds [2 x %struct.iovec], ptr %17, i64 0, i64 0, !dbg !1437
  %78 = call i64 @lwan_writev(ptr noundef %76, ptr noundef %77, i32 noundef 2), !dbg !1438
  br label %79

79:                                               ; preds = %65, %60
  %80 = load i32, ptr %16, align 4, !dbg !1439
  store i32 %80, ptr %8, align 4, !dbg !1440
  br label %81, !dbg !1440

81:                                               ; preds = %79, %50
  %82 = load i32, ptr %8, align 4, !dbg !1441
  ret i32 %82, !dbg !1441
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @prepare_headers(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i64 noundef %6) #0 !dbg !1442 {
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca [3 x %struct.lwan_key_value_t_], align 16
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1445, metadata !DIExpression()), !dbg !1446
  store i32 %1, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1447, metadata !DIExpression()), !dbg !1448
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1449, metadata !DIExpression()), !dbg !1450
  store i64 %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1451, metadata !DIExpression()), !dbg !1452
  store ptr %4, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1453, metadata !DIExpression()), !dbg !1454
  store ptr %5, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1455, metadata !DIExpression()), !dbg !1456
  store i64 %6, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1457, metadata !DIExpression()), !dbg !1458
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1459, metadata !DIExpression()), !dbg !1461
  %16 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 0, !dbg !1462
  %17 = load ptr, ptr %8, align 8, !dbg !1463
  %18 = getelementptr inbounds %struct.lwan_request_t_, ptr %17, i32 0, i32 8, !dbg !1464
  %19 = getelementptr inbounds %struct.lwan_response_t_, ptr %18, i32 0, i32 3, !dbg !1465
  store ptr %16, ptr %19, align 8, !dbg !1466
  %20 = load i64, ptr %11, align 8, !dbg !1467
  %21 = load ptr, ptr %8, align 8, !dbg !1468
  %22 = getelementptr inbounds %struct.lwan_request_t_, ptr %21, i32 0, i32 8, !dbg !1469
  %23 = getelementptr inbounds %struct.lwan_response_t_, ptr %22, i32 0, i32 2, !dbg !1470
  store i64 %20, ptr %23, align 8, !dbg !1471
  br label %24, !dbg !1472

24:                                               ; preds = %7
  %25 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 0, !dbg !1473
  %26 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %25, i32 0, i32 0, !dbg !1473
  store ptr @.str.13, ptr %26, align 16, !dbg !1473
  %27 = load ptr, ptr %10, align 8, !dbg !1473
  %28 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %27, i32 0, i32 1, !dbg !1473
  %29 = getelementptr inbounds %struct.anon.7, ptr %28, i32 0, i32 0, !dbg !1473
  %30 = getelementptr inbounds [31 x i8], ptr %29, i64 0, i64 0, !dbg !1473
  %31 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 0, !dbg !1473
  %32 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %31, i32 0, i32 1, !dbg !1473
  store ptr %30, ptr %32, align 8, !dbg !1473
  br label %33, !dbg !1473

33:                                               ; preds = %24
  %34 = load ptr, ptr %12, align 8, !dbg !1475
  %35 = icmp ne ptr %34, null, !dbg !1475
  br i1 %35, label %36, label %50, !dbg !1477

36:                                               ; preds = %33
  br label %37, !dbg !1478

37:                                               ; preds = %36
  %38 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 1, !dbg !1480
  %39 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %38, i32 0, i32 0, !dbg !1480
  store ptr @.str.14, ptr %39, align 16, !dbg !1480
  %40 = load ptr, ptr %12, align 8, !dbg !1480
  %41 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 1, !dbg !1480
  %42 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %41, i32 0, i32 1, !dbg !1480
  store ptr %40, ptr %42, align 8, !dbg !1480
  br label %43, !dbg !1480

43:                                               ; preds = %37
  br label %44, !dbg !1482

44:                                               ; preds = %43
  %45 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 2, !dbg !1483
  %46 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %45, i32 0, i32 0, !dbg !1483
  store ptr null, ptr %46, align 16, !dbg !1483
  %47 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 2, !dbg !1483
  %48 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %47, i32 0, i32 1, !dbg !1483
  store ptr null, ptr %48, align 8, !dbg !1483
  br label %49, !dbg !1483

49:                                               ; preds = %44
  br label %57, !dbg !1485

50:                                               ; preds = %33
  br label %51, !dbg !1486

51:                                               ; preds = %50
  %52 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 1, !dbg !1488
  %53 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %52, i32 0, i32 0, !dbg !1488
  store ptr null, ptr %53, align 16, !dbg !1488
  %54 = getelementptr inbounds [3 x %struct.lwan_key_value_t_], ptr %15, i64 0, i64 1, !dbg !1488
  %55 = getelementptr inbounds %struct.lwan_key_value_t_, ptr %54, i32 0, i32 1, !dbg !1488
  store ptr null, ptr %55, align 8, !dbg !1488
  br label %56, !dbg !1488

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %49
  %58 = load ptr, ptr %8, align 8, !dbg !1490
  %59 = load i32, ptr %9, align 4, !dbg !1491
  %60 = load ptr, ptr %13, align 8, !dbg !1492
  %61 = load i64, ptr %14, align 8, !dbg !1493
  %62 = call i64 @lwan_prepare_response_header(ptr noundef %58, i32 noundef %59, ptr noundef %60, i64 noundef %61), !dbg !1494
  ret i64 %62, !dbg !1495
}

declare i64 @lwan_write(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

declare ptr @lwan_tpl_apply(ptr noundef, ptr noundef) #2

declare void @strbuf_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_serve(ptr noundef %0, ptr noundef %1) #0 !dbg !1496 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1497, metadata !DIExpression()), !dbg !1498
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1499, metadata !DIExpression()), !dbg !1500
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1501, metadata !DIExpression()), !dbg !1502
  %10 = load ptr, ptr %4, align 8, !dbg !1503
  store ptr %10, ptr %5, align 8, !dbg !1502
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1504, metadata !DIExpression()), !dbg !1505
  %11 = load ptr, ptr %5, align 8, !dbg !1506
  %12 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %11, i64 1, !dbg !1507
  store ptr %12, ptr %6, align 8, !dbg !1505
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1508, metadata !DIExpression()), !dbg !1509
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1510, metadata !DIExpression()), !dbg !1511
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1512, metadata !DIExpression()), !dbg !1513
  %13 = load ptr, ptr %6, align 8, !dbg !1514
  %14 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %13, i32 0, i32 0, !dbg !1516
  %15 = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 1, !dbg !1517
  %16 = load i64, ptr %15, align 8, !dbg !1517
  %17 = icmp ne i64 %16, 0, !dbg !1514
  br i1 %17, label %18, label %34, !dbg !1518

18:                                               ; preds = %2
  %19 = load ptr, ptr %3, align 8, !dbg !1519
  %20 = getelementptr inbounds %struct.lwan_request_t_, ptr %19, i32 0, i32 0, !dbg !1520
  %21 = load i32, ptr %20, align 8, !dbg !1520
  %22 = and i32 %21, 8, !dbg !1521
  %23 = icmp ne i32 %22, 0, !dbg !1521
  br i1 %23, label %24, label %34, !dbg !1522

24:                                               ; preds = %18
  %25 = load ptr, ptr %6, align 8, !dbg !1523
  %26 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %25, i32 0, i32 0, !dbg !1525
  %27 = getelementptr inbounds %struct.anon.9, ptr %26, i32 0, i32 0, !dbg !1526
  %28 = load ptr, ptr %27, align 8, !dbg !1526
  store ptr %28, ptr %7, align 8, !dbg !1527
  %29 = load ptr, ptr %6, align 8, !dbg !1528
  %30 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %29, i32 0, i32 0, !dbg !1529
  %31 = getelementptr inbounds %struct.anon.9, ptr %30, i32 0, i32 1, !dbg !1530
  %32 = load i64, ptr %31, align 8, !dbg !1530
  store i64 %32, ptr %8, align 8, !dbg !1531
  %33 = load ptr, ptr @compression_deflate, align 8, !dbg !1532
  store ptr %33, ptr %9, align 8, !dbg !1533
  br label %44, !dbg !1534

34:                                               ; preds = %18, %2
  %35 = load ptr, ptr %6, align 8, !dbg !1535
  %36 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %35, i32 0, i32 1, !dbg !1537
  %37 = getelementptr inbounds %struct.anon.9, ptr %36, i32 0, i32 0, !dbg !1538
  %38 = load ptr, ptr %37, align 8, !dbg !1538
  store ptr %38, ptr %7, align 8, !dbg !1539
  %39 = load ptr, ptr %6, align 8, !dbg !1540
  %40 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %39, i32 0, i32 1, !dbg !1541
  %41 = getelementptr inbounds %struct.anon.9, ptr %40, i32 0, i32 1, !dbg !1542
  %42 = load i64, ptr %41, align 8, !dbg !1542
  store i64 %42, ptr %8, align 8, !dbg !1543
  %43 = load ptr, ptr @compression_none, align 8, !dbg !1544
  store ptr %43, ptr %9, align 8, !dbg !1545
  br label %44

44:                                               ; preds = %34, %24
  %45 = load ptr, ptr %3, align 8, !dbg !1546
  %46 = load ptr, ptr %5, align 8, !dbg !1547
  %47 = load ptr, ptr %9, align 8, !dbg !1548
  %48 = load ptr, ptr %7, align 8, !dbg !1549
  %49 = load i64, ptr %8, align 8, !dbg !1550
  %50 = call i32 @serve_contents_and_size(ptr noundef %45, ptr noundef %46, ptr noundef %47, ptr noundef %48, i64 noundef %49), !dbg !1551
  ret i32 %50, !dbg !1552
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @mmap_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1553 {
  %5 = alloca i1, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1554, metadata !DIExpression()), !dbg !1555
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1556, metadata !DIExpression()), !dbg !1557
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1558, metadata !DIExpression()), !dbg !1559
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1560, metadata !DIExpression()), !dbg !1561
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1562, metadata !DIExpression()), !dbg !1563
  %13 = load ptr, ptr %6, align 8, !dbg !1564
  %14 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %13, i64 1, !dbg !1565
  store ptr %14, ptr %10, align 8, !dbg !1563
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1566, metadata !DIExpression()), !dbg !1567
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1568, metadata !DIExpression()), !dbg !1569
  %15 = load ptr, ptr %7, align 8, !dbg !1570
  %16 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %15, i32 0, i32 1, !dbg !1571
  %17 = getelementptr inbounds %struct.anon.6, ptr %16, i32 0, i32 2, !dbg !1572
  %18 = load i32, ptr %17, align 8, !dbg !1572
  %19 = load ptr, ptr %8, align 8, !dbg !1573
  %20 = load ptr, ptr %7, align 8, !dbg !1574
  %21 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %20, i32 0, i32 1, !dbg !1575
  %22 = getelementptr inbounds %struct.anon.6, ptr %21, i32 0, i32 1, !dbg !1576
  %23 = load i64, ptr %22, align 8, !dbg !1576
  %24 = getelementptr inbounds i8, ptr %19, i64 %23, !dbg !1577
  %25 = getelementptr inbounds i8, ptr %24, i64 1, !dbg !1578
  %26 = load ptr, ptr %7, align 8, !dbg !1579
  %27 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %26, i32 0, i32 2, !dbg !1580
  %28 = load i32, ptr %27, align 8, !dbg !1580
  %29 = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %18, ptr noundef %25, i32 noundef %28), !dbg !1581
  store i32 %29, ptr %11, align 4, !dbg !1582
  %30 = load i32, ptr %11, align 4, !dbg !1583
  %31 = icmp slt i32 %30, 0, !dbg !1583
  %32 = zext i1 %31 to i32, !dbg !1583
  %33 = sext i32 %32 to i64, !dbg !1583
  %34 = icmp ne i64 %33, 0, !dbg !1583
  br i1 %34, label %35, label %36, !dbg !1585

35:                                               ; preds = %4
  store i1 false, ptr %5, align 1, !dbg !1586
  br label %90, !dbg !1586

36:                                               ; preds = %4
  %37 = load ptr, ptr %9, align 8, !dbg !1587
  %38 = getelementptr inbounds %struct.stat, ptr %37, i32 0, i32 8, !dbg !1588
  %39 = load i64, ptr %38, align 8, !dbg !1588
  %40 = load i32, ptr %11, align 4, !dbg !1589
  %41 = call ptr @mmap(ptr noundef null, i64 noundef %39, i32 noundef 1, i32 noundef 1, i32 noundef %40, i64 noundef 0) #8, !dbg !1590
  %42 = load ptr, ptr %10, align 8, !dbg !1591
  %43 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %42, i32 0, i32 1, !dbg !1592
  %44 = getelementptr inbounds %struct.anon.9, ptr %43, i32 0, i32 0, !dbg !1593
  store ptr %41, ptr %44, align 8, !dbg !1594
  %45 = load ptr, ptr %10, align 8, !dbg !1595
  %46 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %45, i32 0, i32 1, !dbg !1595
  %47 = getelementptr inbounds %struct.anon.9, ptr %46, i32 0, i32 0, !dbg !1595
  %48 = load ptr, ptr %47, align 8, !dbg !1595
  %49 = icmp eq ptr %48, inttoptr (i64 -1 to ptr), !dbg !1595
  %50 = zext i1 %49 to i32, !dbg !1595
  %51 = sext i32 %50 to i64, !dbg !1595
  %52 = icmp ne i64 %51, 0, !dbg !1595
  br i1 %52, label %53, label %54, !dbg !1597

53:                                               ; preds = %36
  store i8 0, ptr %12, align 1, !dbg !1598
  br label %85, !dbg !1600

54:                                               ; preds = %36
  %55 = load ptr, ptr %10, align 8, !dbg !1601
  %56 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %55, i32 0, i32 1, !dbg !1601
  %57 = getelementptr inbounds %struct.anon.9, ptr %56, i32 0, i32 0, !dbg !1601
  %58 = load ptr, ptr %57, align 8, !dbg !1601
  %59 = load ptr, ptr %9, align 8, !dbg !1601
  %60 = getelementptr inbounds %struct.stat, ptr %59, i32 0, i32 8, !dbg !1601
  %61 = load i64, ptr %60, align 8, !dbg !1601
  %62 = call i32 @madvise(ptr noundef %58, i64 noundef %61, i32 noundef 3) #8, !dbg !1601
  %63 = icmp slt i32 %62, 0, !dbg !1601
  %64 = zext i1 %63 to i32, !dbg !1601
  %65 = sext i32 %64 to i64, !dbg !1601
  %66 = icmp ne i64 %65, 0, !dbg !1601
  br i1 %66, label %67, label %68, !dbg !1603

67:                                               ; preds = %54
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 361, ptr noundef @__FUNCTION__.mmap_init, ptr noundef @.str.17), !dbg !1604
  br label %68, !dbg !1604

68:                                               ; preds = %67, %54
  %69 = load ptr, ptr %9, align 8, !dbg !1605
  %70 = getelementptr inbounds %struct.stat, ptr %69, i32 0, i32 8, !dbg !1606
  %71 = load i64, ptr %70, align 8, !dbg !1606
  %72 = load ptr, ptr %10, align 8, !dbg !1607
  %73 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %72, i32 0, i32 1, !dbg !1608
  %74 = getelementptr inbounds %struct.anon.9, ptr %73, i32 0, i32 1, !dbg !1609
  store i64 %71, ptr %74, align 8, !dbg !1610
  %75 = load ptr, ptr %10, align 8, !dbg !1611
  call void @compress_cached_entry(ptr noundef %75), !dbg !1612
  %76 = load ptr, ptr %8, align 8, !dbg !1613
  %77 = load ptr, ptr %7, align 8, !dbg !1614
  %78 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %77, i32 0, i32 1, !dbg !1615
  %79 = getelementptr inbounds %struct.anon.6, ptr %78, i32 0, i32 1, !dbg !1616
  %80 = load i64, ptr %79, align 8, !dbg !1616
  %81 = getelementptr inbounds i8, ptr %76, i64 %80, !dbg !1617
  %82 = call ptr @lwan_determine_mime_type_for_file_name(ptr noundef %81) #10, !dbg !1618
  %83 = load ptr, ptr %6, align 8, !dbg !1619
  %84 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %83, i32 0, i32 2, !dbg !1620
  store ptr %82, ptr %84, align 8, !dbg !1621
  store i8 1, ptr %12, align 1, !dbg !1622
  br label %85, !dbg !1623

85:                                               ; preds = %68, %53
  call void @llvm.dbg.label(metadata !1624), !dbg !1625
  %86 = load i32, ptr %11, align 4, !dbg !1626
  %87 = call i32 @close(i32 noundef %86), !dbg !1627
  %88 = load i8, ptr %12, align 1, !dbg !1628
  %89 = trunc i8 %88 to i1, !dbg !1628
  store i1 %89, ptr %5, align 1, !dbg !1629
  br label %90, !dbg !1629

90:                                               ; preds = %85, %35
  %91 = load i1, ptr %5, align 1, !dbg !1630
  ret i1 %91, !dbg !1630
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_free(ptr noundef %0) #0 !dbg !1631 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1632, metadata !DIExpression()), !dbg !1633
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1634, metadata !DIExpression()), !dbg !1635
  %4 = load ptr, ptr %2, align 8, !dbg !1636
  store ptr %4, ptr %3, align 8, !dbg !1635
  %5 = load ptr, ptr %3, align 8, !dbg !1637
  %6 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %5, i32 0, i32 1, !dbg !1638
  %7 = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 0, !dbg !1639
  %8 = load ptr, ptr %7, align 8, !dbg !1639
  %9 = load ptr, ptr %3, align 8, !dbg !1640
  %10 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %9, i32 0, i32 1, !dbg !1641
  %11 = getelementptr inbounds %struct.anon.9, ptr %10, i32 0, i32 1, !dbg !1642
  %12 = load i64, ptr %11, align 8, !dbg !1642
  %13 = call i32 @munmap(ptr noundef %8, i64 noundef %12) #8, !dbg !1643
  %14 = load ptr, ptr %3, align 8, !dbg !1644
  %15 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %14, i32 0, i32 0, !dbg !1645
  %16 = getelementptr inbounds %struct.anon.9, ptr %15, i32 0, i32 0, !dbg !1646
  %17 = load ptr, ptr %16, align 8, !dbg !1646
  call void @free(ptr noundef %17) #8, !dbg !1647
  ret void, !dbg !1648
}

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @compress_cached_entry(ptr noundef %0) #0 !dbg !1649 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1652, metadata !DIExpression()), !dbg !1653
  %5 = load ptr, ptr %4, align 8, !dbg !1654
  %6 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %5, i32 0, i32 1, !dbg !1655
  %7 = getelementptr inbounds %struct.anon.9, ptr %6, i32 0, i32 1, !dbg !1656
  %8 = load i64, ptr %7, align 8, !dbg !1656
  %9 = call i64 @compressBound(i64 noundef %8), !dbg !1657
  %10 = load ptr, ptr %4, align 8, !dbg !1658
  %11 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %10, i32 0, i32 0, !dbg !1659
  %12 = getelementptr inbounds %struct.anon.9, ptr %11, i32 0, i32 1, !dbg !1660
  store i64 %9, ptr %12, align 8, !dbg !1661
  %13 = load ptr, ptr %4, align 8, !dbg !1662
  %14 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %13, i32 0, i32 0, !dbg !1662
  %15 = getelementptr inbounds %struct.anon.9, ptr %14, i32 0, i32 1, !dbg !1662
  %16 = load i64, ptr %15, align 8, !dbg !1662
  %17 = call noalias ptr @malloc(i64 noundef %16) #9, !dbg !1662
  %18 = load ptr, ptr %4, align 8, !dbg !1662
  %19 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %18, i32 0, i32 0, !dbg !1662
  %20 = getelementptr inbounds %struct.anon.9, ptr %19, i32 0, i32 0, !dbg !1662
  store ptr %17, ptr %20, align 8, !dbg !1662
  %21 = icmp ne ptr %17, null, !dbg !1662
  %22 = xor i1 %21, true, !dbg !1662
  %23 = zext i1 %22 to i32, !dbg !1662
  %24 = sext i32 %23 to i64, !dbg !1662
  %25 = icmp ne i64 %24, 0, !dbg !1662
  br i1 %25, label %26, label %27, !dbg !1664

26:                                               ; preds = %1
  br label %72, !dbg !1665

27:                                               ; preds = %1
  %28 = load ptr, ptr %4, align 8, !dbg !1666
  %29 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %28, i32 0, i32 0, !dbg !1666
  %30 = getelementptr inbounds %struct.anon.9, ptr %29, i32 0, i32 0, !dbg !1666
  %31 = load ptr, ptr %30, align 8, !dbg !1666
  %32 = load ptr, ptr %4, align 8, !dbg !1666
  %33 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %32, i32 0, i32 0, !dbg !1666
  %34 = getelementptr inbounds %struct.anon.9, ptr %33, i32 0, i32 1, !dbg !1666
  %35 = load ptr, ptr %4, align 8, !dbg !1666
  %36 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %35, i32 0, i32 1, !dbg !1666
  %37 = getelementptr inbounds %struct.anon.9, ptr %36, i32 0, i32 0, !dbg !1666
  %38 = load ptr, ptr %37, align 8, !dbg !1666
  %39 = load ptr, ptr %4, align 8, !dbg !1666
  %40 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %39, i32 0, i32 1, !dbg !1666
  %41 = getelementptr inbounds %struct.anon.9, ptr %40, i32 0, i32 1, !dbg !1666
  %42 = load i64, ptr %41, align 8, !dbg !1666
  %43 = call i32 @compress(ptr noundef %31, ptr noundef %34, ptr noundef %38, i64 noundef %42), !dbg !1666
  %44 = icmp ne i32 %43, 0, !dbg !1666
  %45 = zext i1 %44 to i32, !dbg !1666
  %46 = sext i32 %45 to i64, !dbg !1666
  %47 = icmp ne i64 %46, 0, !dbg !1666
  br i1 %47, label %48, label %49, !dbg !1668

48:                                               ; preds = %27
  br label %64, !dbg !1669

49:                                               ; preds = %27
  %50 = load ptr, ptr %4, align 8, !dbg !1670
  %51 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %50, i32 0, i32 0, !dbg !1672
  %52 = getelementptr inbounds %struct.anon.9, ptr %51, i32 0, i32 1, !dbg !1673
  %53 = load i64, ptr %52, align 8, !dbg !1673
  %54 = load ptr, ptr %4, align 8, !dbg !1674
  %55 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %54, i32 0, i32 1, !dbg !1675
  %56 = getelementptr inbounds %struct.anon.9, ptr %55, i32 0, i32 1, !dbg !1676
  %57 = load i64, ptr %56, align 8, !dbg !1676
  store i64 %53, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1677, metadata !DIExpression()), !dbg !1678
  store i64 %57, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1680, metadata !DIExpression()), !dbg !1681
  %58 = load i64, ptr %2, align 8, !dbg !1682
  %59 = add i64 %58, 27, !dbg !1683
  %60 = load i64, ptr %3, align 8, !dbg !1684
  %61 = icmp ult i64 %59, %60, !dbg !1685
  br i1 %61, label %62, label %63, !dbg !1686

62:                                               ; preds = %49
  br label %76, !dbg !1687

63:                                               ; preds = %49
  br label %64, !dbg !1688

64:                                               ; preds = %63, %48
  call void @llvm.dbg.label(metadata !1689), !dbg !1690
  %65 = load ptr, ptr %4, align 8, !dbg !1691
  %66 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %65, i32 0, i32 0, !dbg !1692
  %67 = getelementptr inbounds %struct.anon.9, ptr %66, i32 0, i32 0, !dbg !1693
  %68 = load ptr, ptr %67, align 8, !dbg !1693
  call void @free(ptr noundef %68) #8, !dbg !1694
  %69 = load ptr, ptr %4, align 8, !dbg !1695
  %70 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %69, i32 0, i32 0, !dbg !1696
  %71 = getelementptr inbounds %struct.anon.9, ptr %70, i32 0, i32 0, !dbg !1697
  store ptr null, ptr %71, align 8, !dbg !1698
  br label %72, !dbg !1695

72:                                               ; preds = %64, %26
  call void @llvm.dbg.label(metadata !1699), !dbg !1700
  %73 = load ptr, ptr %4, align 8, !dbg !1701
  %74 = getelementptr inbounds %struct.mmap_cache_data_t_, ptr %73, i32 0, i32 0, !dbg !1702
  %75 = getelementptr inbounds %struct.anon.9, ptr %74, i32 0, i32 1, !dbg !1703
  store i64 0, ptr %75, align 8, !dbg !1704
  br label %76, !dbg !1705

76:                                               ; preds = %72, %62
  ret void, !dbg !1705
}

; Function Attrs: nounwind willreturn memory(read)
declare ptr @lwan_determine_mime_type_for_file_name(ptr noundef) #5

declare i64 @compressBound(i64 noundef) #2

declare i32 @compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sendfile_serve(ptr noundef %0, ptr noundef %1) #0 !dbg !1706 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca [4096 x i8], align 16
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca ptr, align 8
  %23 = alloca ptr, align 8
  %24 = alloca i64, align 8
  %25 = alloca ptr, align 8
  %26 = alloca i32, align 4
  store ptr %0, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1707, metadata !DIExpression()), !dbg !1708
  store ptr %1, ptr %14, align 8
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1709, metadata !DIExpression()), !dbg !1710
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1711, metadata !DIExpression()), !dbg !1712
  %27 = load ptr, ptr %14, align 8, !dbg !1713
  store ptr %27, ptr %15, align 8, !dbg !1712
  call void @llvm.dbg.declare(metadata ptr %16, metadata !1714, metadata !DIExpression()), !dbg !1715
  %28 = load ptr, ptr %15, align 8, !dbg !1716
  %29 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %28, i64 1, !dbg !1717
  store ptr %29, ptr %16, align 8, !dbg !1715
  call void @llvm.dbg.declare(metadata ptr %17, metadata !1718, metadata !DIExpression()), !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %18, metadata !1720, metadata !DIExpression()), !dbg !1721
  call void @llvm.dbg.declare(metadata ptr %19, metadata !1722, metadata !DIExpression()), !dbg !1723
  call void @llvm.dbg.declare(metadata ptr %20, metadata !1724, metadata !DIExpression()), !dbg !1725
  call void @llvm.dbg.declare(metadata ptr %21, metadata !1726, metadata !DIExpression()), !dbg !1727
  call void @llvm.dbg.declare(metadata ptr %22, metadata !1728, metadata !DIExpression()), !dbg !1729
  call void @llvm.dbg.declare(metadata ptr %23, metadata !1730, metadata !DIExpression()), !dbg !1731
  call void @llvm.dbg.declare(metadata ptr %24, metadata !1732, metadata !DIExpression()), !dbg !1733
  %30 = load ptr, ptr %16, align 8, !dbg !1734
  %31 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %30, i32 0, i32 0, !dbg !1736
  %32 = getelementptr inbounds %struct.anon.10, ptr %31, i32 0, i32 1, !dbg !1737
  %33 = load i64, ptr %32, align 8, !dbg !1737
  %34 = icmp ne i64 %33, 0, !dbg !1734
  br i1 %34, label %35, label %55, !dbg !1738

35:                                               ; preds = %2
  %36 = load ptr, ptr %13, align 8, !dbg !1739
  %37 = getelementptr inbounds %struct.lwan_request_t_, ptr %36, i32 0, i32 0, !dbg !1740
  %38 = load i32, ptr %37, align 8, !dbg !1740
  %39 = and i32 %38, 16, !dbg !1741
  %40 = icmp ne i32 %39, 0, !dbg !1741
  br i1 %40, label %41, label %55, !dbg !1742

41:                                               ; preds = %35
  store i64 0, ptr %20, align 8, !dbg !1743
  %42 = load ptr, ptr %16, align 8, !dbg !1745
  %43 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %42, i32 0, i32 0, !dbg !1746
  %44 = getelementptr inbounds %struct.anon.10, ptr %43, i32 0, i32 1, !dbg !1747
  %45 = load i64, ptr %44, align 8, !dbg !1747
  store i64 %45, ptr %21, align 8, !dbg !1748
  %46 = load ptr, ptr @compression_gzip, align 8, !dbg !1749
  store ptr %46, ptr %22, align 8, !dbg !1750
  %47 = load ptr, ptr %16, align 8, !dbg !1751
  %48 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %47, i32 0, i32 0, !dbg !1752
  %49 = getelementptr inbounds %struct.anon.10, ptr %48, i32 0, i32 0, !dbg !1753
  %50 = load ptr, ptr %49, align 8, !dbg !1753
  store ptr %50, ptr %23, align 8, !dbg !1754
  %51 = load ptr, ptr %16, align 8, !dbg !1755
  %52 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %51, i32 0, i32 0, !dbg !1756
  %53 = getelementptr inbounds %struct.anon.10, ptr %52, i32 0, i32 1, !dbg !1757
  %54 = load i64, ptr %53, align 8, !dbg !1757
  store i64 %54, ptr %24, align 8, !dbg !1758
  store i32 200, ptr %19, align 4, !dbg !1759
  br label %144, !dbg !1760

55:                                               ; preds = %35, %2
  %56 = load ptr, ptr %13, align 8, !dbg !1761
  %57 = load ptr, ptr %16, align 8, !dbg !1763
  %58 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %57, i32 0, i32 1, !dbg !1764
  %59 = getelementptr inbounds %struct.anon.10, ptr %58, i32 0, i32 1, !dbg !1765
  %60 = load i64, ptr %59, align 8, !dbg !1765
  store ptr %56, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1766, metadata !DIExpression()), !dbg !1771
  store ptr %20, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1773, metadata !DIExpression()), !dbg !1774
  store ptr %21, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1775, metadata !DIExpression()), !dbg !1776
  store i64 %60, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1777, metadata !DIExpression()), !dbg !1778
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1779, metadata !DIExpression()), !dbg !1780
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1781, metadata !DIExpression()), !dbg !1782
  %61 = load ptr, ptr %4, align 8, !dbg !1783
  %62 = getelementptr inbounds %struct.lwan_request_t_, ptr %61, i32 0, i32 7, !dbg !1784
  %63 = getelementptr inbounds %struct.anon.2, ptr %62, i32 0, i32 1, !dbg !1785
  %64 = load i64, ptr %63, align 8, !dbg !1786
  store i64 %64, ptr %8, align 8, !dbg !1787
  %65 = load ptr, ptr %4, align 8, !dbg !1788
  %66 = getelementptr inbounds %struct.lwan_request_t_, ptr %65, i32 0, i32 7, !dbg !1789
  %67 = getelementptr inbounds %struct.anon.2, ptr %66, i32 0, i32 1, !dbg !1790
  %68 = getelementptr inbounds %struct.anon.3, ptr %67, i32 0, i32 1, !dbg !1791
  %69 = load i64, ptr %68, align 8, !dbg !1791
  store i64 %69, ptr %9, align 8, !dbg !1792
  %70 = load i64, ptr %9, align 8, !dbg !1793
  %71 = icmp sle i64 %70, 0, !dbg !1793
  br i1 %71, label %72, label %75, !dbg !1793

72:                                               ; preds = %55
  %73 = load i64, ptr %8, align 8, !dbg !1793
  %74 = icmp sle i64 %73, 0, !dbg !1793
  br label %75

75:                                               ; preds = %72, %55
  %76 = phi i1 [ false, %55 ], [ %74, %72 ], !dbg !1795
  %77 = xor i1 %76, true, !dbg !1793
  %78 = zext i1 %76 to i32, !dbg !1793
  %79 = sext i32 %78 to i64, !dbg !1793
  br i1 %76, label %80, label %84, !dbg !1796

80:                                               ; preds = %75
  %81 = load ptr, ptr %5, align 8, !dbg !1797
  store i64 0, ptr %81, align 8, !dbg !1799
  %82 = load i64, ptr %7, align 8, !dbg !1800
  %83 = load ptr, ptr %6, align 8, !dbg !1801
  store i64 %82, ptr %83, align 8, !dbg !1802
  store i32 200, ptr %3, align 4, !dbg !1803
  br label %126, !dbg !1803

84:                                               ; preds = %75
  %85 = load i64, ptr %9, align 8, !dbg !1804
  %86 = load i64, ptr %8, align 8, !dbg !1804
  %87 = icmp sge i64 %85, %86, !dbg !1804
  %88 = zext i1 %87 to i32, !dbg !1804
  %89 = sext i32 %88 to i64, !dbg !1804
  br i1 %87, label %90, label %91, !dbg !1806

90:                                               ; preds = %84
  store i32 416, ptr %3, align 4, !dbg !1807
  br label %126, !dbg !1807

91:                                               ; preds = %84
  %92 = load i64, ptr %8, align 8, !dbg !1808
  %93 = load i64, ptr %7, align 8, !dbg !1808
  %94 = icmp sge i64 %92, %93, !dbg !1808
  br i1 %94, label %99, label %95, !dbg !1808

95:                                               ; preds = %91
  %96 = load i64, ptr %9, align 8, !dbg !1808
  %97 = load i64, ptr %7, align 8, !dbg !1808
  %98 = icmp sge i64 %96, %97, !dbg !1808
  br label %99, !dbg !1808

99:                                               ; preds = %95, %91
  %100 = phi i1 [ true, %91 ], [ %98, %95 ]
  %101 = zext i1 %100 to i32, !dbg !1808
  %102 = sext i32 %101 to i64, !dbg !1808
  br i1 %100, label %103, label %104, !dbg !1810

103:                                              ; preds = %99
  store i32 416, ptr %3, align 4, !dbg !1811
  br label %126, !dbg !1811

104:                                              ; preds = %99
  %105 = load i64, ptr %9, align 8, !dbg !1812
  %106 = icmp slt i64 %105, 0, !dbg !1814
  br i1 %106, label %107, label %111, !dbg !1815

107:                                              ; preds = %104
  %108 = load i64, ptr %7, align 8, !dbg !1816
  %109 = load i64, ptr %8, align 8, !dbg !1817
  %110 = sub nsw i64 %108, %109, !dbg !1818
  store i64 %110, ptr %9, align 8, !dbg !1819
  br label %115, !dbg !1820

111:                                              ; preds = %104
  %112 = load i64, ptr %8, align 8, !dbg !1821
  %113 = load i64, ptr %9, align 8, !dbg !1822
  %114 = sub nsw i64 %113, %112, !dbg !1822
  store i64 %114, ptr %9, align 8, !dbg !1822
  br label %115

115:                                              ; preds = %111, %107
  %116 = load i64, ptr %9, align 8, !dbg !1823
  %117 = icmp sle i64 %116, 0, !dbg !1823
  %118 = zext i1 %117 to i32, !dbg !1823
  %119 = sext i32 %118 to i64, !dbg !1823
  br i1 %117, label %120, label %121, !dbg !1825

120:                                              ; preds = %115
  store i32 416, ptr %3, align 4, !dbg !1826
  br label %126, !dbg !1826

121:                                              ; preds = %115
  %122 = load i64, ptr %8, align 8, !dbg !1827
  %123 = load ptr, ptr %5, align 8, !dbg !1828
  store i64 %122, ptr %123, align 8, !dbg !1829
  %124 = load i64, ptr %9, align 8, !dbg !1830
  %125 = load ptr, ptr %6, align 8, !dbg !1831
  store i64 %124, ptr %125, align 8, !dbg !1832
  store i32 206, ptr %3, align 4, !dbg !1833
  br label %126, !dbg !1833

126:                                              ; preds = %80, %90, %103, %120, %121
  %127 = load i32, ptr %3, align 4, !dbg !1834
  store i32 %127, ptr %19, align 4, !dbg !1835
  %128 = load i32, ptr %19, align 4, !dbg !1836
  %129 = icmp eq i32 %128, 416, !dbg !1836
  %130 = zext i1 %129 to i32, !dbg !1836
  %131 = sext i32 %130 to i64, !dbg !1836
  %132 = icmp ne i64 %131, 0, !dbg !1836
  br i1 %132, label %133, label %134, !dbg !1838

133:                                              ; preds = %126
  store i32 416, ptr %12, align 4, !dbg !1839
  br label %230, !dbg !1839

134:                                              ; preds = %126
  %135 = load ptr, ptr @compression_none, align 8, !dbg !1840
  store ptr %135, ptr %22, align 8, !dbg !1841
  %136 = load ptr, ptr %16, align 8, !dbg !1842
  %137 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %136, i32 0, i32 1, !dbg !1843
  %138 = getelementptr inbounds %struct.anon.10, ptr %137, i32 0, i32 0, !dbg !1844
  %139 = load ptr, ptr %138, align 8, !dbg !1844
  store ptr %139, ptr %23, align 8, !dbg !1845
  %140 = load ptr, ptr %16, align 8, !dbg !1846
  %141 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %140, i32 0, i32 1, !dbg !1847
  %142 = getelementptr inbounds %struct.anon.10, ptr %141, i32 0, i32 1, !dbg !1848
  %143 = load i64, ptr %142, align 8, !dbg !1848
  store i64 %143, ptr %24, align 8, !dbg !1849
  br label %144

144:                                              ; preds = %134, %41
  %145 = load ptr, ptr %13, align 8, !dbg !1850
  %146 = load ptr, ptr %15, align 8, !dbg !1852
  %147 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %146, i32 0, i32 1, !dbg !1853
  %148 = getelementptr inbounds %struct.anon.7, ptr %147, i32 0, i32 1, !dbg !1854
  %149 = load i64, ptr %148, align 8, !dbg !1854
  store ptr %145, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1379, metadata !DIExpression()), !dbg !1855
  store i64 %149, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1385, metadata !DIExpression()), !dbg !1857
  %150 = load ptr, ptr %10, align 8, !dbg !1858
  %151 = getelementptr inbounds %struct.lwan_request_t_, ptr %150, i32 0, i32 7, !dbg !1859
  %152 = load i64, ptr %151, align 8, !dbg !1860
  %153 = icmp ne i64 %152, 0, !dbg !1858
  br i1 %153, label %154, label %160, !dbg !1861

154:                                              ; preds = %144
  %155 = load i64, ptr %11, align 8, !dbg !1862
  %156 = load ptr, ptr %10, align 8, !dbg !1863
  %157 = getelementptr inbounds %struct.lwan_request_t_, ptr %156, i32 0, i32 7, !dbg !1864
  %158 = load i64, ptr %157, align 8, !dbg !1865
  %159 = icmp sle i64 %155, %158, !dbg !1866
  br label %160

160:                                              ; preds = %144, %154
  %161 = phi i1 [ false, %144 ], [ %159, %154 ], !dbg !1867
  br i1 %161, label %162, label %163, !dbg !1868

162:                                              ; preds = %160
  store i32 304, ptr %19, align 4, !dbg !1869
  br label %163, !dbg !1870

163:                                              ; preds = %162, %160
  %164 = load ptr, ptr %13, align 8, !dbg !1871
  %165 = load i32, ptr %19, align 4, !dbg !1872
  %166 = load ptr, ptr %15, align 8, !dbg !1873
  %167 = load i64, ptr %24, align 8, !dbg !1874
  %168 = load ptr, ptr %22, align 8, !dbg !1875
  %169 = getelementptr inbounds [4096 x i8], ptr %17, i64 0, i64 0, !dbg !1876
  %170 = call i64 @prepare_headers(ptr noundef %164, i32 noundef %165, ptr noundef %166, i64 noundef %167, ptr noundef %168, ptr noundef %169, i64 noundef 512), !dbg !1877
  store i64 %170, ptr %18, align 8, !dbg !1878
  %171 = load i64, ptr %18, align 8, !dbg !1879
  %172 = icmp ne i64 %171, 0, !dbg !1879
  %173 = xor i1 %172, true, !dbg !1879
  %174 = zext i1 %173 to i32, !dbg !1879
  %175 = sext i32 %174 to i64, !dbg !1879
  %176 = icmp ne i64 %175, 0, !dbg !1879
  br i1 %176, label %177, label %178, !dbg !1881

177:                                              ; preds = %163
  store i32 500, ptr %12, align 4, !dbg !1882
  br label %230, !dbg !1882

178:                                              ; preds = %163
  %179 = load ptr, ptr %13, align 8, !dbg !1883
  %180 = getelementptr inbounds %struct.lwan_request_t_, ptr %179, i32 0, i32 0, !dbg !1885
  %181 = load i32, ptr %180, align 8, !dbg !1885
  %182 = and i32 %181, 2, !dbg !1886
  %183 = icmp ne i32 %182, 0, !dbg !1886
  br i1 %183, label %187, label %184, !dbg !1887

184:                                              ; preds = %178
  %185 = load i32, ptr %19, align 4, !dbg !1888
  %186 = icmp eq i32 %185, 304, !dbg !1889
  br i1 %186, label %187, label %192, !dbg !1890

187:                                              ; preds = %184, %178
  %188 = load ptr, ptr %13, align 8, !dbg !1891
  %189 = getelementptr inbounds [4096 x i8], ptr %17, i64 0, i64 0, !dbg !1893
  %190 = load i64, ptr %18, align 8, !dbg !1894
  %191 = call i64 @lwan_write(ptr noundef %188, ptr noundef %189, i64 noundef %190), !dbg !1895
  br label %228, !dbg !1896

192:                                              ; preds = %184
  call void @llvm.dbg.declare(metadata ptr %25, metadata !1897, metadata !DIExpression()), !dbg !1899
  %193 = load ptr, ptr %13, align 8, !dbg !1900
  %194 = getelementptr inbounds %struct.lwan_request_t_, ptr %193, i32 0, i32 8, !dbg !1901
  %195 = getelementptr inbounds %struct.lwan_response_t_, ptr %194, i32 0, i32 4, !dbg !1902
  %196 = getelementptr inbounds %struct.anon.5, ptr %195, i32 0, i32 2, !dbg !1903
  %197 = load ptr, ptr %196, align 8, !dbg !1903
  store ptr %197, ptr %25, align 8, !dbg !1899
  call void @llvm.dbg.declare(metadata ptr %26, metadata !1904, metadata !DIExpression()), !dbg !1905
  %198 = load ptr, ptr %13, align 8, !dbg !1906
  %199 = load ptr, ptr %25, align 8, !dbg !1907
  %200 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %199, i32 0, i32 1, !dbg !1908
  %201 = getelementptr inbounds %struct.anon.6, ptr %200, i32 0, i32 2, !dbg !1909
  %202 = load i32, ptr %201, align 8, !dbg !1909
  %203 = load ptr, ptr %23, align 8, !dbg !1910
  %204 = load ptr, ptr %25, align 8, !dbg !1911
  %205 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %204, i32 0, i32 2, !dbg !1912
  %206 = load i32, ptr %205, align 8, !dbg !1912
  %207 = call i32 @lwan_openat(ptr noundef %198, i32 noundef %202, ptr noundef %203, i32 noundef %206), !dbg !1913
  store i32 %207, ptr %26, align 4, !dbg !1905
  %208 = load i32, ptr %26, align 4, !dbg !1914
  %209 = icmp slt i32 %208, 0, !dbg !1914
  %210 = zext i1 %209 to i32, !dbg !1914
  %211 = sext i32 %210 to i64, !dbg !1914
  %212 = icmp ne i64 %211, 0, !dbg !1914
  br i1 %212, label %213, label %218, !dbg !1916

213:                                              ; preds = %192
  %214 = load i32, ptr %26, align 4, !dbg !1917
  switch i32 %214, label %217 [
    i32 -13, label %215
    i32 -23, label %216
  ], !dbg !1919

215:                                              ; preds = %213
  store i32 403, ptr %12, align 4, !dbg !1920
  br label %230, !dbg !1920

216:                                              ; preds = %213
  store i32 503, ptr %12, align 4, !dbg !1922
  br label %230, !dbg !1922

217:                                              ; preds = %213
  store i32 404, ptr %12, align 4, !dbg !1923
  br label %230, !dbg !1923

218:                                              ; preds = %192
  %219 = load ptr, ptr %13, align 8, !dbg !1924
  %220 = getelementptr inbounds [4096 x i8], ptr %17, i64 0, i64 0, !dbg !1925
  %221 = load i64, ptr %18, align 8, !dbg !1926
  %222 = call i64 @lwan_send(ptr noundef %219, ptr noundef %220, i64 noundef %221, i32 noundef 32768), !dbg !1927
  %223 = load ptr, ptr %13, align 8, !dbg !1928
  %224 = load i32, ptr %26, align 4, !dbg !1929
  %225 = load i64, ptr %20, align 8, !dbg !1930
  %226 = load i64, ptr %21, align 8, !dbg !1931
  %227 = call i64 @lwan_sendfile(ptr noundef %223, i32 noundef %224, i64 noundef %225, i64 noundef %226), !dbg !1932
  br label %228

228:                                              ; preds = %218, %187
  %229 = load i32, ptr %19, align 4, !dbg !1933
  store i32 %229, ptr %12, align 4, !dbg !1934
  br label %230, !dbg !1934

230:                                              ; preds = %228, %217, %216, %215, %177, %133
  %231 = load i32, ptr %12, align 4, !dbg !1935
  ret i32 %231, !dbg !1935
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @sendfile_init(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !1936 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1937, metadata !DIExpression()), !dbg !1938
  store ptr %1, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1939, metadata !DIExpression()), !dbg !1940
  store ptr %2, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1941, metadata !DIExpression()), !dbg !1942
  store ptr %3, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1943, metadata !DIExpression()), !dbg !1944
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1945, metadata !DIExpression()), !dbg !1946
  %16 = load ptr, ptr %8, align 8, !dbg !1947
  %17 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %16, i64 1, !dbg !1948
  store ptr %17, ptr %12, align 8, !dbg !1946
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1949, metadata !DIExpression()), !dbg !1950
  %18 = load ptr, ptr %10, align 8, !dbg !1951
  %19 = load ptr, ptr %9, align 8, !dbg !1952
  %20 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %19, i32 0, i32 1, !dbg !1953
  %21 = getelementptr inbounds %struct.anon.6, ptr %20, i32 0, i32 1, !dbg !1954
  %22 = load i64, ptr %21, align 8, !dbg !1954
  %23 = getelementptr inbounds i8, ptr %18, i64 %22, !dbg !1955
  %24 = call ptr @lwan_determine_mime_type_for_file_name(ptr noundef %23) #10, !dbg !1956
  %25 = load ptr, ptr %8, align 8, !dbg !1957
  %26 = getelementptr inbounds %struct.file_cache_entry_t_, ptr %25, i32 0, i32 2, !dbg !1958
  store ptr %24, ptr %26, align 8, !dbg !1959
  %27 = load ptr, ptr %9, align 8, !dbg !1960
  %28 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %27, i32 0, i32 5, !dbg !1960
  %29 = load i8, ptr %28, align 8, !dbg !1960
  %30 = trunc i8 %29 to i1, !dbg !1960
  %31 = xor i1 %30, true, !dbg !1960
  %32 = zext i1 %31 to i32, !dbg !1960
  %33 = sext i32 %32 to i64, !dbg !1960
  %34 = icmp ne i64 %33, 0, !dbg !1960
  br i1 %34, label %35, label %36, !dbg !1962

35:                                               ; preds = %4
  br label %108, !dbg !1963

36:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1964, metadata !DIExpression()), !dbg !1965
  %37 = load ptr, ptr %12, align 8, !dbg !1966
  %38 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %37, i32 0, i32 0, !dbg !1967
  %39 = getelementptr inbounds %struct.anon.10, ptr %38, i32 0, i32 0, !dbg !1968
  %40 = load ptr, ptr %10, align 8, !dbg !1969
  %41 = load ptr, ptr %9, align 8, !dbg !1970
  %42 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %41, i32 0, i32 1, !dbg !1971
  %43 = getelementptr inbounds %struct.anon.6, ptr %42, i32 0, i32 1, !dbg !1972
  %44 = load i64, ptr %43, align 8, !dbg !1972
  %45 = getelementptr inbounds i8, ptr %40, i64 %44, !dbg !1973
  %46 = getelementptr inbounds i8, ptr %45, i64 1, !dbg !1974
  %47 = call i32 (ptr, ptr, ...) @asprintf(ptr noundef %39, ptr noundef @.str.19, ptr noundef %46) #8, !dbg !1975
  store i32 %47, ptr %14, align 4, !dbg !1965
  %48 = load i32, ptr %14, align 4, !dbg !1976
  %49 = icmp slt i32 %48, 0, !dbg !1976
  br i1 %49, label %53, label %50, !dbg !1976

50:                                               ; preds = %36
  %51 = load i32, ptr %14, align 4, !dbg !1976
  %52 = icmp sge i32 %51, 4096, !dbg !1976
  br label %53, !dbg !1976

53:                                               ; preds = %50, %36
  %54 = phi i1 [ true, %36 ], [ %52, %50 ]
  %55 = zext i1 %54 to i32, !dbg !1976
  %56 = sext i32 %55 to i64, !dbg !1976
  %57 = icmp ne i64 %56, 0, !dbg !1976
  br i1 %57, label %58, label %59, !dbg !1978

58:                                               ; preds = %53
  br label %108, !dbg !1979

59:                                               ; preds = %53
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1980, metadata !DIExpression()), !dbg !1981
  %60 = load ptr, ptr %9, align 8, !dbg !1982
  %61 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %60, i32 0, i32 1, !dbg !1983
  %62 = getelementptr inbounds %struct.anon.6, ptr %61, i32 0, i32 2, !dbg !1984
  %63 = load i32, ptr %62, align 8, !dbg !1984
  %64 = load ptr, ptr %12, align 8, !dbg !1985
  %65 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %64, i32 0, i32 0, !dbg !1986
  %66 = getelementptr inbounds %struct.anon.10, ptr %65, i32 0, i32 0, !dbg !1987
  %67 = load ptr, ptr %66, align 8, !dbg !1987
  %68 = call i32 @fstatat(i32 noundef %63, ptr noundef %67, ptr noundef %13, i32 noundef 0) #8, !dbg !1988
  store i32 %68, ptr %15, align 4, !dbg !1981
  %69 = load i32, ptr %15, align 4, !dbg !1989
  %70 = icmp sge i32 %69, 0, !dbg !1989
  br i1 %70, label %71, label %90, !dbg !1989

71:                                               ; preds = %59
  %72 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 12, !dbg !1989
  %73 = getelementptr inbounds %struct.timespec, ptr %72, i32 0, i32 0, !dbg !1989
  %74 = load i64, ptr %73, align 8, !dbg !1989
  %75 = load ptr, ptr %11, align 8, !dbg !1989
  %76 = getelementptr inbounds %struct.stat, ptr %75, i32 0, i32 12, !dbg !1989
  %77 = getelementptr inbounds %struct.timespec, ptr %76, i32 0, i32 0, !dbg !1989
  %78 = load i64, ptr %77, align 8, !dbg !1989
  %79 = icmp sge i64 %74, %78, !dbg !1989
  br i1 %79, label %80, label %90, !dbg !1989

80:                                               ; preds = %71
  %81 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 8, !dbg !1989
  %82 = load i64, ptr %81, align 8, !dbg !1989
  %83 = load ptr, ptr %11, align 8, !dbg !1989
  %84 = getelementptr inbounds %struct.stat, ptr %83, i32 0, i32 8, !dbg !1989
  %85 = load i64, ptr %84, align 8, !dbg !1989
  store i64 %82, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1677, metadata !DIExpression()), !dbg !1991
  store i64 %85, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1680, metadata !DIExpression()), !dbg !1993
  %86 = load i64, ptr %5, align 8, !dbg !1994
  %87 = add i64 %86, 27, !dbg !1995
  %88 = load i64, ptr %6, align 8, !dbg !1996
  %89 = icmp ult i64 %87, %88, !dbg !1997
  br label %90

90:                                               ; preds = %80, %71, %59
  %91 = phi i1 [ false, %71 ], [ false, %59 ], [ %89, %80 ], !dbg !1998
  %92 = xor i1 %91, true, !dbg !1989
  %93 = xor i1 %92, true, !dbg !1989
  %94 = zext i1 %93 to i32, !dbg !1989
  %95 = sext i32 %94 to i64, !dbg !1989
  %96 = icmp ne i64 %95, 0, !dbg !1989
  br i1 %96, label %97, label %103, !dbg !1999

97:                                               ; preds = %90
  %98 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 8, !dbg !2000
  %99 = load i64, ptr %98, align 8, !dbg !2000
  %100 = load ptr, ptr %12, align 8, !dbg !2002
  %101 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %100, i32 0, i32 0, !dbg !2003
  %102 = getelementptr inbounds %struct.anon.10, ptr %101, i32 0, i32 1, !dbg !2004
  store i64 %99, ptr %102, align 8, !dbg !2005
  br label %115, !dbg !2006

103:                                              ; preds = %90
  %104 = load ptr, ptr %12, align 8, !dbg !2007
  %105 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %104, i32 0, i32 0, !dbg !2009
  %106 = getelementptr inbounds %struct.anon.10, ptr %105, i32 0, i32 0, !dbg !2010
  %107 = load ptr, ptr %106, align 8, !dbg !2010
  call void @free(ptr noundef %107) #8, !dbg !2011
  br label %108, !dbg !2011

108:                                              ; preds = %103, %58, %35
  call void @llvm.dbg.label(metadata !2012), !dbg !2013
  %109 = load ptr, ptr %12, align 8, !dbg !2014
  %110 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %109, i32 0, i32 0, !dbg !2015
  %111 = getelementptr inbounds %struct.anon.10, ptr %110, i32 0, i32 0, !dbg !2016
  store ptr null, ptr %111, align 8, !dbg !2017
  %112 = load ptr, ptr %12, align 8, !dbg !2018
  %113 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %112, i32 0, i32 0, !dbg !2019
  %114 = getelementptr inbounds %struct.anon.10, ptr %113, i32 0, i32 1, !dbg !2020
  store i64 0, ptr %114, align 8, !dbg !2021
  br label %115

115:                                              ; preds = %108, %97
  %116 = load ptr, ptr %11, align 8, !dbg !2022
  %117 = getelementptr inbounds %struct.stat, ptr %116, i32 0, i32 8, !dbg !2023
  %118 = load i64, ptr %117, align 8, !dbg !2023
  %119 = load ptr, ptr %12, align 8, !dbg !2024
  %120 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %119, i32 0, i32 1, !dbg !2025
  %121 = getelementptr inbounds %struct.anon.10, ptr %120, i32 0, i32 1, !dbg !2026
  store i64 %118, ptr %121, align 8, !dbg !2027
  %122 = load ptr, ptr %10, align 8, !dbg !2028
  %123 = load ptr, ptr %9, align 8, !dbg !2029
  %124 = getelementptr inbounds %struct.serve_files_priv_t_, ptr %123, i32 0, i32 1, !dbg !2030
  %125 = getelementptr inbounds %struct.anon.6, ptr %124, i32 0, i32 1, !dbg !2031
  %126 = load i64, ptr %125, align 8, !dbg !2031
  %127 = getelementptr inbounds i8, ptr %122, i64 %126, !dbg !2032
  %128 = getelementptr inbounds i8, ptr %127, i64 1, !dbg !2033
  %129 = call noalias ptr @strdup(ptr noundef %128) #8, !dbg !2034
  %130 = load ptr, ptr %12, align 8, !dbg !2035
  %131 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %130, i32 0, i32 1, !dbg !2036
  %132 = getelementptr inbounds %struct.anon.10, ptr %131, i32 0, i32 0, !dbg !2037
  store ptr %129, ptr %132, align 8, !dbg !2038
  %133 = load ptr, ptr %12, align 8, !dbg !2039
  %134 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %133, i32 0, i32 1, !dbg !2039
  %135 = getelementptr inbounds %struct.anon.10, ptr %134, i32 0, i32 0, !dbg !2039
  %136 = load ptr, ptr %135, align 8, !dbg !2039
  %137 = icmp ne ptr %136, null, !dbg !2039
  %138 = xor i1 %137, true, !dbg !2039
  %139 = zext i1 %138 to i32, !dbg !2039
  %140 = sext i32 %139 to i64, !dbg !2039
  %141 = icmp ne i64 %140, 0, !dbg !2039
  br i1 %141, label %142, label %147, !dbg !2041

142:                                              ; preds = %115
  %143 = load ptr, ptr %12, align 8, !dbg !2042
  %144 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %143, i32 0, i32 0, !dbg !2044
  %145 = getelementptr inbounds %struct.anon.10, ptr %144, i32 0, i32 0, !dbg !2045
  %146 = load ptr, ptr %145, align 8, !dbg !2045
  call void @free(ptr noundef %146) #8, !dbg !2046
  store i1 false, ptr %7, align 1, !dbg !2047
  br label %148, !dbg !2047

147:                                              ; preds = %115
  store i1 true, ptr %7, align 1, !dbg !2048
  br label %148, !dbg !2048

148:                                              ; preds = %147, %142
  %149 = load i1, ptr %7, align 1, !dbg !2049
  ret i1 %149, !dbg !2049
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sendfile_free(ptr noundef %0) #0 !dbg !2050 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !2051, metadata !DIExpression()), !dbg !2052
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2053, metadata !DIExpression()), !dbg !2054
  %4 = load ptr, ptr %2, align 8, !dbg !2055
  store ptr %4, ptr %3, align 8, !dbg !2054
  %5 = load ptr, ptr %3, align 8, !dbg !2056
  %6 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %5, i32 0, i32 0, !dbg !2057
  %7 = getelementptr inbounds %struct.anon.10, ptr %6, i32 0, i32 0, !dbg !2058
  %8 = load ptr, ptr %7, align 8, !dbg !2058
  call void @free(ptr noundef %8) #8, !dbg !2059
  %9 = load ptr, ptr %3, align 8, !dbg !2060
  %10 = getelementptr inbounds %struct.sendfile_cache_data_t_, ptr %9, i32 0, i32 1, !dbg !2061
  %11 = getelementptr inbounds %struct.anon.10, ptr %10, i32 0, i32 0, !dbg !2062
  %12 = load ptr, ptr %11, align 8, !dbg !2062
  call void @free(ptr noundef %12) #8, !dbg !2063
  ret void, !dbg !2064
}

declare i32 @lwan_openat(ptr noundef, i32 noundef, ptr noundef, i32 noundef) #2

declare i64 @lwan_send(ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare i64 @lwan_sendfile(ptr noundef, i32 noundef, i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #3

declare void @lwan_append_str_escaped_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_str_is_empty(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @directory_list_generator(ptr noundef %0) #0 !dbg !2065 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca %struct.dirent, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !2066, metadata !DIExpression()), !dbg !2067
  call void @llvm.dbg.declare(metadata ptr %4, metadata !2068, metadata !DIExpression()), !dbg !2073
  call void @llvm.dbg.declare(metadata ptr %5, metadata !2074, metadata !DIExpression()), !dbg !2087
  call void @llvm.dbg.declare(metadata ptr %6, metadata !2088, metadata !DIExpression()), !dbg !2090
  call void @llvm.dbg.declare(metadata ptr %7, metadata !2091, metadata !DIExpression()), !dbg !2093
  %10 = load ptr, ptr %3, align 8, !dbg !2094
  %11 = call ptr @coro_get_data(ptr noundef %10), !dbg !2095
  store ptr %11, ptr %7, align 8, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %8, metadata !2096, metadata !DIExpression()), !dbg !2097
  %12 = load ptr, ptr %7, align 8, !dbg !2098
  %13 = getelementptr inbounds %struct.file_list_t, ptr %12, i32 0, i32 0, !dbg !2099
  %14 = load ptr, ptr %13, align 8, !dbg !2099
  %15 = call ptr @opendir(ptr noundef %14), !dbg !2100
  store ptr %15, ptr %4, align 8, !dbg !2101
  %16 = load ptr, ptr %4, align 8, !dbg !2102
  %17 = icmp ne ptr %16, null, !dbg !2102
  br i1 %17, label %19, label %18, !dbg !2104

18:                                               ; preds = %1
  store i32 0, ptr %2, align 4, !dbg !2105
  br label %156, !dbg !2105

19:                                               ; preds = %1
  %20 = load ptr, ptr %4, align 8, !dbg !2106
  %21 = call i32 @dirfd(ptr noundef %20) #8, !dbg !2107
  store i32 %21, ptr %8, align 4, !dbg !2108
  %22 = load i32, ptr %8, align 4, !dbg !2109
  %23 = icmp slt i32 %22, 0, !dbg !2111
  br i1 %23, label %24, label %25, !dbg !2112

24:                                               ; preds = %19
  br label %153, !dbg !2113

25:                                               ; preds = %19
  br label %26, !dbg !2114

26:                                               ; preds = %151, %82, %48, %41, %25
  %27 = load ptr, ptr %4, align 8, !dbg !2115
  %28 = call i32 @readdir_r(ptr noundef %27, ptr noundef %5, ptr noundef %6), !dbg !2116
  %29 = icmp ne i32 %28, 0, !dbg !2117
  %30 = xor i1 %29, true, !dbg !2117
  br i1 %30, label %31, label %152, !dbg !2114

31:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %9, metadata !2118, metadata !DIExpression()), !dbg !2120
  %32 = load ptr, ptr %6, align 8, !dbg !2121
  %33 = icmp ne ptr %32, null, !dbg !2121
  br i1 %33, label %35, label %34, !dbg !2123

34:                                               ; preds = %31
  br label %152, !dbg !2124

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.dirent, ptr %5, i32 0, i32 4, !dbg !2125
  %37 = getelementptr inbounds [256 x i8], ptr %36, i64 0, i64 0, !dbg !2127
  %38 = load i8, ptr %37, align 1, !dbg !2127
  %39 = sext i8 %38 to i32, !dbg !2127
  %40 = icmp eq i32 %39, 46, !dbg !2128
  br i1 %40, label %41, label %42, !dbg !2129

41:                                               ; preds = %35
  br label %26, !dbg !2130, !llvm.loop !2131

42:                                               ; preds = %35
  %43 = load i32, ptr %8, align 4, !dbg !2134
  %44 = getelementptr inbounds %struct.dirent, ptr %5, i32 0, i32 4, !dbg !2136
  %45 = getelementptr inbounds [256 x i8], ptr %44, i64 0, i64 0, !dbg !2137
  %46 = call i32 @fstatat(i32 noundef %43, ptr noundef %45, ptr noundef %9, i32 noundef 0) #8, !dbg !2138
  %47 = icmp slt i32 %46, 0, !dbg !2139
  br i1 %47, label %48, label %49, !dbg !2140

48:                                               ; preds = %42
  br label %26, !dbg !2141, !llvm.loop !2131

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 3, !dbg !2142
  %51 = load i32, ptr %50, align 8, !dbg !2142
  %52 = and i32 %51, 61440, !dbg !2142
  %53 = icmp eq i32 %52, 16384, !dbg !2142
  br i1 %53, label %54, label %64, !dbg !2144

54:                                               ; preds = %49
  %55 = load ptr, ptr %7, align 8, !dbg !2145
  %56 = getelementptr inbounds %struct.file_list_t, ptr %55, i32 0, i32 2, !dbg !2147
  %57 = getelementptr inbounds %struct.anon.8, ptr %56, i32 0, i32 1, !dbg !2148
  store ptr @.str.24, ptr %57, align 8, !dbg !2149
  %58 = load ptr, ptr %7, align 8, !dbg !2150
  %59 = getelementptr inbounds %struct.file_list_t, ptr %58, i32 0, i32 2, !dbg !2151
  %60 = getelementptr inbounds %struct.anon.8, ptr %59, i32 0, i32 2, !dbg !2152
  store ptr @.str.25, ptr %60, align 8, !dbg !2153
  %61 = load ptr, ptr %7, align 8, !dbg !2154
  %62 = getelementptr inbounds %struct.file_list_t, ptr %61, i32 0, i32 2, !dbg !2155
  %63 = getelementptr inbounds %struct.anon.8, ptr %62, i32 0, i32 4, !dbg !2156
  store ptr @.str.26, ptr %63, align 8, !dbg !2157
  br label %84, !dbg !2158

64:                                               ; preds = %49
  %65 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 3, !dbg !2159
  %66 = load i32, ptr %65, align 8, !dbg !2159
  %67 = and i32 %66, 61440, !dbg !2159
  %68 = icmp eq i32 %67, 32768, !dbg !2159
  br i1 %68, label %69, label %82, !dbg !2161

69:                                               ; preds = %64
  %70 = load ptr, ptr %7, align 8, !dbg !2162
  %71 = getelementptr inbounds %struct.file_list_t, ptr %70, i32 0, i32 2, !dbg !2164
  %72 = getelementptr inbounds %struct.anon.8, ptr %71, i32 0, i32 1, !dbg !2165
  store ptr @.str.27, ptr %72, align 8, !dbg !2166
  %73 = load ptr, ptr %7, align 8, !dbg !2167
  %74 = getelementptr inbounds %struct.file_list_t, ptr %73, i32 0, i32 2, !dbg !2168
  %75 = getelementptr inbounds %struct.anon.8, ptr %74, i32 0, i32 2, !dbg !2169
  store ptr @.str.28, ptr %75, align 8, !dbg !2170
  %76 = getelementptr inbounds %struct.dirent, ptr %5, i32 0, i32 4, !dbg !2171
  %77 = getelementptr inbounds [256 x i8], ptr %76, i64 0, i64 0, !dbg !2172
  %78 = call ptr @lwan_determine_mime_type_for_file_name(ptr noundef %77) #10, !dbg !2173
  %79 = load ptr, ptr %7, align 8, !dbg !2174
  %80 = getelementptr inbounds %struct.file_list_t, ptr %79, i32 0, i32 2, !dbg !2175
  %81 = getelementptr inbounds %struct.anon.8, ptr %80, i32 0, i32 4, !dbg !2176
  store ptr %78, ptr %81, align 8, !dbg !2177
  br label %83, !dbg !2178

82:                                               ; preds = %64
  br label %26, !dbg !2179, !llvm.loop !2131

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %54
  %85 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2181
  %86 = load i64, ptr %85, align 8, !dbg !2181
  %87 = icmp slt i64 %86, 1024, !dbg !2183
  br i1 %87, label %88, label %98, !dbg !2184

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2185
  %90 = load i64, ptr %89, align 8, !dbg !2185
  %91 = trunc i64 %90 to i32, !dbg !2187
  %92 = load ptr, ptr %7, align 8, !dbg !2188
  %93 = getelementptr inbounds %struct.file_list_t, ptr %92, i32 0, i32 2, !dbg !2189
  %94 = getelementptr inbounds %struct.anon.8, ptr %93, i32 0, i32 5, !dbg !2190
  store i32 %91, ptr %94, align 8, !dbg !2191
  %95 = load ptr, ptr %7, align 8, !dbg !2192
  %96 = getelementptr inbounds %struct.file_list_t, ptr %95, i32 0, i32 2, !dbg !2193
  %97 = getelementptr inbounds %struct.anon.8, ptr %96, i32 0, i32 6, !dbg !2194
  store ptr @.str.29, ptr %97, align 8, !dbg !2195
  br label %141, !dbg !2196

98:                                               ; preds = %84
  %99 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2197
  %100 = load i64, ptr %99, align 8, !dbg !2197
  %101 = icmp slt i64 %100, 1048576, !dbg !2199
  br i1 %101, label %102, label %113, !dbg !2200

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2201
  %104 = load i64, ptr %103, align 8, !dbg !2201
  %105 = sdiv i64 %104, 1024, !dbg !2203
  %106 = trunc i64 %105 to i32, !dbg !2204
  %107 = load ptr, ptr %7, align 8, !dbg !2205
  %108 = getelementptr inbounds %struct.file_list_t, ptr %107, i32 0, i32 2, !dbg !2206
  %109 = getelementptr inbounds %struct.anon.8, ptr %108, i32 0, i32 5, !dbg !2207
  store i32 %106, ptr %109, align 8, !dbg !2208
  %110 = load ptr, ptr %7, align 8, !dbg !2209
  %111 = getelementptr inbounds %struct.file_list_t, ptr %110, i32 0, i32 2, !dbg !2210
  %112 = getelementptr inbounds %struct.anon.8, ptr %111, i32 0, i32 6, !dbg !2211
  store ptr @.str.30, ptr %112, align 8, !dbg !2212
  br label %140, !dbg !2213

113:                                              ; preds = %98
  %114 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2214
  %115 = load i64, ptr %114, align 8, !dbg !2214
  %116 = icmp slt i64 %115, 1073741824, !dbg !2216
  br i1 %116, label %117, label %128, !dbg !2217

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2218
  %119 = load i64, ptr %118, align 8, !dbg !2218
  %120 = sdiv i64 %119, 1048576, !dbg !2220
  %121 = trunc i64 %120 to i32, !dbg !2221
  %122 = load ptr, ptr %7, align 8, !dbg !2222
  %123 = getelementptr inbounds %struct.file_list_t, ptr %122, i32 0, i32 2, !dbg !2223
  %124 = getelementptr inbounds %struct.anon.8, ptr %123, i32 0, i32 5, !dbg !2224
  store i32 %121, ptr %124, align 8, !dbg !2225
  %125 = load ptr, ptr %7, align 8, !dbg !2226
  %126 = getelementptr inbounds %struct.file_list_t, ptr %125, i32 0, i32 2, !dbg !2227
  %127 = getelementptr inbounds %struct.anon.8, ptr %126, i32 0, i32 6, !dbg !2228
  store ptr @.str.31, ptr %127, align 8, !dbg !2229
  br label %139, !dbg !2230

128:                                              ; preds = %113
  %129 = getelementptr inbounds %struct.stat, ptr %9, i32 0, i32 8, !dbg !2231
  %130 = load i64, ptr %129, align 8, !dbg !2231
  %131 = sdiv i64 %130, 1073741824, !dbg !2233
  %132 = trunc i64 %131 to i32, !dbg !2234
  %133 = load ptr, ptr %7, align 8, !dbg !2235
  %134 = getelementptr inbounds %struct.file_list_t, ptr %133, i32 0, i32 2, !dbg !2236
  %135 = getelementptr inbounds %struct.anon.8, ptr %134, i32 0, i32 5, !dbg !2237
  store i32 %132, ptr %135, align 8, !dbg !2238
  %136 = load ptr, ptr %7, align 8, !dbg !2239
  %137 = getelementptr inbounds %struct.file_list_t, ptr %136, i32 0, i32 2, !dbg !2240
  %138 = getelementptr inbounds %struct.anon.8, ptr %137, i32 0, i32 6, !dbg !2241
  store ptr @.str.32, ptr %138, align 8, !dbg !2242
  br label %139

139:                                              ; preds = %128, %117
  br label %140

140:                                              ; preds = %139, %102
  br label %141

141:                                              ; preds = %140, %88
  %142 = getelementptr inbounds %struct.dirent, ptr %5, i32 0, i32 4, !dbg !2243
  %143 = getelementptr inbounds [256 x i8], ptr %142, i64 0, i64 0, !dbg !2244
  %144 = load ptr, ptr %7, align 8, !dbg !2245
  %145 = getelementptr inbounds %struct.file_list_t, ptr %144, i32 0, i32 2, !dbg !2246
  %146 = getelementptr inbounds %struct.anon.8, ptr %145, i32 0, i32 3, !dbg !2247
  store ptr %143, ptr %146, align 8, !dbg !2248
  %147 = load ptr, ptr %3, align 8, !dbg !2249
  %148 = call i32 @coro_yield(ptr noundef %147, i32 noundef 1), !dbg !2251
  %149 = icmp ne i32 %148, 0, !dbg !2251
  br i1 %149, label %150, label %151, !dbg !2252

150:                                              ; preds = %141
  br label %152, !dbg !2253

151:                                              ; preds = %141
  br label %26, !dbg !2114, !llvm.loop !2131

152:                                              ; preds = %150, %34, %26
  br label %153, !dbg !2114

153:                                              ; preds = %152, %24
  call void @llvm.dbg.label(metadata !2254), !dbg !2255
  %154 = load ptr, ptr %4, align 8, !dbg !2256
  %155 = call i32 @closedir(ptr noundef %154), !dbg !2257
  store i32 0, ptr %2, align 4, !dbg !2258
  br label %156, !dbg !2258

156:                                              ; preds = %153, %18
  %157 = load i32, ptr %2, align 4, !dbg !2259
  ret i32 %157, !dbg !2259
}

declare ptr @coro_get_data(ptr noundef) #2

declare ptr @opendir(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @dirfd(ptr noundef) #3

declare i32 @readdir_r(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @coro_yield(ptr noundef, i32 noundef) #2

declare i32 @closedir(ptr noundef) #2

declare void @lwan_append_str_to_strbuf(ptr noundef, ptr noundef) #2

declare void @lwan_append_int_to_strbuf(ptr noundef, ptr noundef) #2

declare zeroext i1 @lwan_tpl_int_is_empty(ptr noundef) #2

declare ptr @hash_find(ptr noundef, ptr noundef) #2

declare zeroext i1 @parse_bool(ptr noundef, i1 noundef zeroext) #2

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

declare void @lwan_tpl_free(ptr noundef) #2

declare ptr @cache_coro_get_and_ref_entry(ptr noundef, ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind willreturn memory(none) }

!llvm.dbg.cu = !{!259}
!llvm.module.flags = !{!628, !629, !630, !631, !632, !633, !634}
!llvm.ident = !{!635}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "serve_files", scope: !2, file: !3, line: 1011, type: !7, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "lwan_module_serve_files", scope: !3, file: !3, line: 1009, type: !4, scopeLine: 1010, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !259, retainedNodes: !519)
!3 = !DIFile(filename: "common/lwan-serve-files.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "800b7015121bf02dbd7f42c60f7a26e9")
!4 = !DISubroutineType(types: !5)
!5 = !{!6}
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_module_t", file: !9, line: 104, baseType: !10)
!9 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_module_t_", file: !9, line: 227, size: 384, elements: !11)
!11 = !{!12, !16, !21, !29, !33, !247}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !10, file: !9, line: 228, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !10, file: !9, line: 229, baseType: !17, size: 64, offset: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DISubroutineType(types: !19)
!19 = !{!20, !20}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "init_from_hash", scope: !10, file: !9, line: 230, baseType: !22, size: 64, offset: 128)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DISubroutineType(types: !24)
!24 = !{!20, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !28, line: 6, flags: DIFlagFwdDecl)
!28 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!29 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !10, file: !9, line: 231, baseType: !30, size: 64, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !20}
!33 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !10, file: !9, line: 232, baseType: !34, size: 64, offset: 256)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DISubroutineType(types: !36)
!36 = !{!37, !57, !246, !20}
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !9, line: 131, baseType: !38)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 114, baseType: !39, size: 32, elements: !40)
!39 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!40 = !{!41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56}
!41 = !DIEnumerator(name: "HTTP_OK", value: 200)
!42 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!43 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!44 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!45 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!46 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!47 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!48 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!49 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!50 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!51 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!52 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!53 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!54 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!55 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!56 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !9, line: 106, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !9, line: 206, size: 1280, elements: !60)
!60 = !{!61, !76, !77, !87, !88, !189, !200, !201, !213}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !59, file: !9, line: 207, baseType: !62, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !9, line: 156, baseType: !63)
!63 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 145, baseType: !64, size: 32, elements: !65)
!64 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74, !75}
!66 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!67 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!68 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!69 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!70 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!71 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!72 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!73 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!74 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!75 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !59, file: !9, line: 208, baseType: !64, size: 32, offset: 32)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !59, file: !9, line: 209, baseType: !78, size: 128, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !9, line: 110, baseType: !79)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !9, line: 191, size: 128, elements: !80)
!80 = !{!81, !83}
!81 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !79, file: !9, line: 192, baseType: !82, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !79, file: !9, line: 193, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !85, line: 46, baseType: !86)
!85 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!86 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !59, file: !9, line: 210, baseType: !78, size: 128, offset: 192)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !59, file: !9, line: 211, baseType: !89, size: 64, offset: 320)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !9, line: 112, baseType: !91)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !9, line: 196, size: 256, elements: !92)
!92 = !{!93, !103, !104, !109, !187, !188}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !91, file: !9, line: 199, baseType: !94, size: 32)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !9, line: 165, baseType: !95)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 158, baseType: !64, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DIEnumerator(name: "CONN_MASK", value: -1)
!98 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!99 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!100 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!101 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!102 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !91, file: !9, line: 200, baseType: !39, size: 32, offset: 32)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !91, file: !9, line: 201, baseType: !105, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !107, line: 34, baseType: !108)
!107 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!108 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !107, line: 34, flags: DIFlagFwdDecl)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !91, file: !9, line: 202, baseType: !110, size: 64, offset: 128)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !9, line: 108, baseType: !112)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !9, line: 253, size: 832, elements: !113)
!113 = !{!114, !165, !179, !180, !184}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !112, file: !9, line: 254, baseType: !115, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !9, line: 103, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !9, line: 275, size: 640, elements: !118)
!118 = !{!119, !143, !144, !151, !153, !164}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !117, file: !9, line: 276, baseType: !120, size: 128)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !121, line: 25, baseType: !122)
!121 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !121, line: 41, size: 128, elements: !123)
!123 = !{!124, !142}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !122, file: !121, line: 42, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !121, line: 26, baseType: !127)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !121, line: 29, size: 640, elements: !128)
!128 = !{!129, !133, !141}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !121, line: 30, baseType: !130, size: 512)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !125, size: 512, elements: !131)
!131 = !{!132}
!132 = !DISubrange(count: 8)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !127, file: !121, line: 31, baseType: !134, size: 64, offset: 512)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !121, line: 27, baseType: !136)
!136 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !121, line: 35, size: 192, elements: !137)
!137 = !{!138, !139, !140}
!138 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !136, file: !121, line: 36, baseType: !82, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !136, file: !121, line: 37, baseType: !20, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !136, file: !121, line: 38, baseType: !134, size: 64, offset: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !127, file: !121, line: 32, baseType: !64, size: 32, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !122, file: !121, line: 43, baseType: !30, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !117, file: !9, line: 277, baseType: !89, size: 64, offset: 128)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !117, file: !9, line: 283, baseType: !145, size: 128, offset: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !117, file: !9, line: 279, size: 128, elements: !146)
!146 = !{!147, !148, !149}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !145, file: !9, line: 280, baseType: !110, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !145, file: !9, line: 281, baseType: !39, size: 32, offset: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !145, file: !9, line: 282, baseType: !150, size: 16, offset: 96)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !117, file: !9, line: 285, baseType: !152, size: 64, offset: 320)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !117, file: !9, line: 286, baseType: !154, size: 192, offset: 384)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !9, line: 111, baseType: !155)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !9, line: 266, size: 192, elements: !156)
!156 = !{!157, !158, !159, !161, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !155, file: !9, line: 267, baseType: !82, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !155, file: !9, line: 268, baseType: !150, size: 16, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !155, file: !9, line: 269, baseType: !160, size: 8, offset: 80)
!160 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !155, file: !9, line: 270, baseType: !160, size: 8, offset: 88)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !155, file: !9, line: 271, baseType: !39, size: 32, offset: 96)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !155, file: !9, line: 272, baseType: !150, size: 16, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !117, file: !9, line: 287, baseType: !64, size: 32, offset: 576)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !112, file: !9, line: 259, baseType: !166, size: 576, offset: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !112, file: !9, line: 255, size: 576, elements: !167)
!167 = !{!168, !172, !173}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !166, file: !9, line: 256, baseType: !169, size: 240)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 240, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 30)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !166, file: !9, line: 257, baseType: !169, size: 240, offset: 240)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !166, file: !9, line: 258, baseType: !174, size: 64, offset: 512)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !175, line: 10, baseType: !176)
!175 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !177, line: 160, baseType: !178)
!177 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!178 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !112, file: !9, line: 261, baseType: !64, size: 32, offset: 640)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !112, file: !9, line: 262, baseType: !181, size: 64, offset: 672)
!181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !64, size: 64, elements: !182)
!182 = !{!183}
!183 = !DISubrange(count: 2)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !112, file: !9, line: 263, baseType: !185, size: 64, offset: 768)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !186, line: 27, baseType: !86)
!186 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!187 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !91, file: !9, line: 203, baseType: !64, size: 32, offset: 192)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !91, file: !9, line: 203, baseType: !64, size: 32, offset: 224)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !59, file: !9, line: 216, baseType: !190, size: 128, offset: 384)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !9, line: 213, size: 128, elements: !191)
!191 = !{!192, !199}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !190, file: !9, line: 214, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !9, line: 105, baseType: !195)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !9, line: 173, size: 128, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !195, file: !9, line: 174, baseType: !82, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !195, file: !9, line: 175, baseType: !82, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !190, file: !9, line: 215, baseType: !84, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !59, file: !9, line: 216, baseType: !190, size: 128, offset: 512)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !59, file: !9, line: 223, baseType: !202, size: 192, offset: 640)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !59, file: !9, line: 217, size: 192, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !202, file: !9, line: 218, baseType: !174, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !202, file: !9, line: 222, baseType: !206, size: 128, offset: 64)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !202, file: !9, line: 219, size: 128, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !206, file: !9, line: 220, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !210, line: 56, baseType: !211)
!210 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !177, line: 152, baseType: !178)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !206, file: !9, line: 221, baseType: !209, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !59, file: !9, line: 224, baseType: !214, size: 448, offset: 832)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !9, line: 107, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !9, line: 178, size: 448, elements: !216)
!216 = !{!217, !234, !235, !236, !237}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !215, file: !9, line: 179, baseType: !218, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !220, line: 25, baseType: !221)
!220 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !220, line: 27, size: 256, elements: !222)
!222 = !{!223, !228, !233}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !221, file: !220, line: 31, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !221, file: !220, line: 28, size: 64, elements: !225)
!225 = !{!226, !227}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !224, file: !220, line: 29, baseType: !82, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !224, file: !220, line: 30, baseType: !13, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !221, file: !220, line: 34, baseType: !229, size: 128, offset: 64)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !221, file: !220, line: 32, size: 128, elements: !230)
!230 = !{!231, !232}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !229, file: !220, line: 33, baseType: !84, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !229, file: !220, line: 33, baseType: !84, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !221, file: !220, line: 35, baseType: !39, size: 32, offset: 192)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !215, file: !9, line: 180, baseType: !13, size: 64, offset: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !215, file: !9, line: 181, baseType: !84, size: 64, offset: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !215, file: !9, line: 182, baseType: !193, size: 64, offset: 192)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !215, file: !9, line: 188, baseType: !238, size: 192, offset: 256)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !215, file: !9, line: 184, size: 192, elements: !239)
!239 = !{!240, !244, !245}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !238, file: !9, line: 185, baseType: !241, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!37, !57, !20}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !238, file: !9, line: 186, baseType: !20, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !238, file: !9, line: 187, baseType: !20, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !10, file: !9, line: 233, baseType: !248, size: 32, offset: 320)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_handler_flags_t", file: !9, line: 143, baseType: !249)
!249 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !9, line: 133, baseType: !39, size: 32, elements: !250)
!250 = !{!251, !252, !253, !254, !255, !256, !257, !258}
!251 = !DIEnumerator(name: "HANDLER_PARSE_QUERY_STRING", value: 1)
!252 = !DIEnumerator(name: "HANDLER_PARSE_IF_MODIFIED_SINCE", value: 2)
!253 = !DIEnumerator(name: "HANDLER_PARSE_RANGE", value: 4)
!254 = !DIEnumerator(name: "HANDLER_PARSE_ACCEPT_ENCODING", value: 8)
!255 = !DIEnumerator(name: "HANDLER_PARSE_POST_DATA", value: 16)
!256 = !DIEnumerator(name: "HANDLER_MUST_AUTHORIZE", value: 32)
!257 = !DIEnumerator(name: "HANDLER_REMOVE_LEADING_SLASH", value: 64)
!258 = !DIEnumerator(name: "HANDLER_PARSE_MASK", value: 31)
!259 = distinct !DICompileUnit(language: DW_LANG_C11, file: !260, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !261, retainedTypes: !287, globals: !417, splitDebugInlining: false, nameTableKind: None)
!260 = !DIFile(filename: "/home/raj/lwan/common/lwan-serve-files.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "800b7015121bf02dbd7f42c60f7a26e9")
!261 = !{!38, !63, !95, !249, !262}
!262 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !263, line: 202, baseType: !39, size: 32, elements: !264)
!263 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!264 = !{!265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286}
!265 = !DIEnumerator(name: "MSG_OOB", value: 1)
!266 = !DIEnumerator(name: "MSG_PEEK", value: 2)
!267 = !DIEnumerator(name: "MSG_DONTROUTE", value: 4)
!268 = !DIEnumerator(name: "MSG_TRYHARD", value: 4)
!269 = !DIEnumerator(name: "MSG_CTRUNC", value: 8)
!270 = !DIEnumerator(name: "MSG_PROXY", value: 16)
!271 = !DIEnumerator(name: "MSG_TRUNC", value: 32)
!272 = !DIEnumerator(name: "MSG_DONTWAIT", value: 64)
!273 = !DIEnumerator(name: "MSG_EOR", value: 128)
!274 = !DIEnumerator(name: "MSG_WAITALL", value: 256)
!275 = !DIEnumerator(name: "MSG_FIN", value: 512)
!276 = !DIEnumerator(name: "MSG_SYN", value: 1024)
!277 = !DIEnumerator(name: "MSG_CONFIRM", value: 2048)
!278 = !DIEnumerator(name: "MSG_RST", value: 4096)
!279 = !DIEnumerator(name: "MSG_ERRQUEUE", value: 8192)
!280 = !DIEnumerator(name: "MSG_NOSIGNAL", value: 16384)
!281 = !DIEnumerator(name: "MSG_MORE", value: 32768)
!282 = !DIEnumerator(name: "MSG_WAITFORONE", value: 65536)
!283 = !DIEnumerator(name: "MSG_BATCH", value: 262144)
!284 = !DIEnumerator(name: "MSG_ZEROCOPY", value: 67108864)
!285 = !DIEnumerator(name: "MSG_FASTOPEN", value: 536870912)
!286 = !DIEnumerator(name: "MSG_CMSG_CLOEXEC", value: 1073741824)
!287 = !{!20, !288, !82, !303, !308, !218, !313, !84, !323, !209, !333, !64}
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_entry_t", file: !290, line: 27, size: 320, elements: !291)
!290 = !DIFile(filename: "common/lwan-cache.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "f48e19cadb0735f737f22aa65af51f83")
!291 = !{!292, !299, !300, !301, !302}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !289, file: !290, line: 28, baseType: !293, size: 128)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !294, line: 191, size: 128, elements: !295)
!294 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!295 = !{!296, !298}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !293, file: !294, line: 193, baseType: !297, size: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !293, file: !294, line: 193, baseType: !297, size: 64, offset: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !289, file: !290, line: 29, baseType: !82, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !289, file: !290, line: 30, baseType: !39, size: 32, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !289, file: !290, line: 31, baseType: !39, size: 32, offset: 224)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !289, file: !290, line: 32, baseType: !174, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "redir_cache_data_t", file: !3, line: 55, baseType: !305)
!305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "redir_cache_data_t_", file: !3, line: 110, size: 64, elements: !306)
!306 = !{!307}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "redir_to", scope: !305, file: !3, line: 111, baseType: !82, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "dir_list_cache_data_t", file: !3, line: 54, baseType: !310)
!310 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dir_list_cache_data_t_", file: !3, line: 106, size: 64, elements: !311)
!311 = !{!312}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "rendered", scope: !310, file: !3, line: 107, baseType: !218, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "mmap_cache_data_t", file: !3, line: 52, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mmap_cache_data_t_", file: !3, line: 85, size: 256, elements: !316)
!316 = !{!317, !322}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !315, file: !3, line: 90, baseType: !318, size: 128)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !315, file: !3, line: 86, size: 128, elements: !319)
!319 = !{!320, !321}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "contents", scope: !318, file: !3, line: 87, baseType: !20, size: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !318, file: !3, line: 89, baseType: !86, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !315, file: !3, line: 90, baseType: !318, size: 128, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "sendfile_cache_data_t", file: !3, line: 53, baseType: !325)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sendfile_cache_data_t_", file: !3, line: 93, size: 256, elements: !326)
!326 = !{!327, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "compressed", scope: !325, file: !3, line: 103, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !3, line: 100, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "filename", scope: !328, file: !3, line: 101, baseType: !82, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !328, file: !3, line: 102, baseType: !84, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "uncompressed", scope: !325, file: !3, line: 103, baseType: !328, size: 128, offset: 128)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "file_cache_entry_t", file: !3, line: 50, baseType: !335)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_cache_entry_t_", file: !3, line: 114, size: 768, elements: !336)
!336 = !{!337, !338, !346, !347}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !335, file: !3, line: 115, baseType: !289, size: 320)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "last_modified", scope: !335, file: !3, line: 120, baseType: !339, size: 320, offset: 320)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !3, line: 117, size: 320, elements: !340)
!340 = !{!341, !345}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !339, file: !3, line: 118, baseType: !342, size: 248)
!342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 248, elements: !343)
!343 = !{!344}
!344 = !DISubrange(count: 31)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !339, file: !3, line: 119, baseType: !174, size: 64, offset: 256)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !335, file: !3, line: 122, baseType: !13, size: 64, offset: 640)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "funcs", scope: !335, file: !3, line: 123, baseType: !348, size: 64, offset: 704)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "cache_funcs_t", file: !3, line: 51, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cache_funcs_t_", file: !3, line: 74, size: 256, elements: !352)
!352 = !{!353, !354, !415, !416}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "serve", scope: !351, file: !3, line: 75, baseType: !241, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !351, file: !3, line: 77, baseType: !355, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!356 = !DISubroutineType(types: !357)
!357 = !{!160, !333, !358, !13, !379}
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "serve_files_priv_t", file: !3, line: 49, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "serve_files_priv_t_", file: !3, line: 57, size: 512, elements: !361)
!361 = !{!362, !365, !371, !372, !373, !378}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !360, file: !3, line: 58, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "cache_t", file: !290, line: 40, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !360, file: !3, line: 64, baseType: !366, size: 192, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !3, line: 60, size: 192, elements: !367)
!367 = !{!368, !369, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "path", scope: !366, file: !3, line: 61, baseType: !82, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "path_len", scope: !366, file: !3, line: 62, baseType: !84, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !366, file: !3, line: 63, baseType: !64, size: 32, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "open_mode", scope: !360, file: !3, line: 66, baseType: !64, size: 32, offset: 256)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "index_html", scope: !360, file: !3, line: 67, baseType: !13, size: 64, offset: 320)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "directory_list_tpl", scope: !360, file: !3, line: 69, baseType: !374, size: 64, offset: 384)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_t", file: !376, line: 25, baseType: !377)
!376 = !DIFile(filename: "common/lwan-template.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1f1d0e1deded933cc0657e991f0859fe")
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_tpl_t_", file: !376, line: 25, flags: DIFlagFwdDecl)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "serve_precompressed_files", scope: !360, file: !3, line: 71, baseType: !160, size: 8, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "stat", file: !381, line: 26, size: 1152, elements: !382)
!381 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_stat.h", directory: "", checksumkind: CSK_MD5, checksum: "3ba283bc334370fe631cbc82f5229ed7")
!382 = !{!383, !385, !387, !389, !391, !393, !395, !396, !397, !398, !400, !402, !409, !410, !411}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "st_dev", scope: !380, file: !381, line: 31, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "__dev_t", file: !177, line: 145, baseType: !86)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "st_ino", scope: !380, file: !381, line: 36, baseType: !386, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ino_t", file: !177, line: 148, baseType: !86)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "st_nlink", scope: !380, file: !381, line: 44, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "__nlink_t", file: !177, line: 151, baseType: !86)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "st_mode", scope: !380, file: !381, line: 45, baseType: !390, size: 32, offset: 192)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mode_t", file: !177, line: 150, baseType: !39)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "st_uid", scope: !380, file: !381, line: 47, baseType: !392, size: 32, offset: 224)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uid_t", file: !177, line: 146, baseType: !39)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "st_gid", scope: !380, file: !381, line: 48, baseType: !394, size: 32, offset: 256)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gid_t", file: !177, line: 147, baseType: !39)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "__pad0", scope: !380, file: !381, line: 50, baseType: !64, size: 32, offset: 288)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "st_rdev", scope: !380, file: !381, line: 52, baseType: !384, size: 64, offset: 320)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !380, file: !381, line: 57, baseType: !211, size: 64, offset: 384)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "st_blksize", scope: !380, file: !381, line: 61, baseType: !399, size: 64, offset: 448)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blksize_t", file: !177, line: 175, baseType: !178)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "st_blocks", scope: !380, file: !381, line: 63, baseType: !401, size: 64, offset: 512)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "__blkcnt_t", file: !177, line: 180, baseType: !178)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "st_atim", scope: !380, file: !381, line: 74, baseType: !403, size: 128, offset: 576)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !404, line: 11, size: 128, elements: !405)
!404 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!405 = !{!406, !407}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !403, file: !404, line: 16, baseType: !176, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !403, file: !404, line: 21, baseType: !408, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !177, line: 197, baseType: !178)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "st_mtim", scope: !380, file: !381, line: 75, baseType: !403, size: 128, offset: 704)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "st_ctim", scope: !380, file: !381, line: 76, baseType: !403, size: 128, offset: 832)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "__glibc_reserved", scope: !380, file: !381, line: 89, baseType: !412, size: 192, offset: 960)
!412 = !DICompositeType(tag: DW_TAG_array_type, baseType: !408, size: 192, elements: !413)
!413 = !{!414}
!414 = !DISubrange(count: 3)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !351, file: !3, line: 81, baseType: !30, size: 64, offset: 128)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "struct_size", scope: !351, file: !3, line: 82, baseType: !84, size: 64, offset: 192)
!417 = !{!418, !0, !423, !428, !433, !438, !443, !445, !450, !455, !460, !465, !470, !472, !477, !482, !484, !486, !491, !494, !496, !501, !503, !506, !508, !511, !513, !520, !522, !524, !526, !531, !536, !538, !540, !542, !544, !569, !571, !573, !575, !577, !579, !582, !584, !586, !588, !593, !598, !600, !602, !604, !606, !609, !611, !613, !618, !623}
!418 = !DIGlobalVariableExpression(var: !419, expr: !DIExpression())
!419 = distinct !DIGlobalVariable(scope: null, file: !3, line: 1012, type: !420, isLocal: true, isDefinition: true)
!420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 96, elements: !421)
!421 = !{!422}
!422 = !DISubrange(count: 12)
!423 = !DIGlobalVariableExpression(var: !424, expr: !DIExpression())
!424 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !425, isLocal: true, isDefinition: true)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 328, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 41)
!428 = !DIGlobalVariableExpression(var: !429, expr: !DIExpression())
!429 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !430, isLocal: true, isDefinition: true)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 136, elements: !431)
!431 = !{!432}
!432 = !DISubrange(count: 17)
!433 = !DIGlobalVariableExpression(var: !434, expr: !DIExpression())
!434 = distinct !DIGlobalVariable(scope: null, file: !3, line: 646, type: !435, isLocal: true, isDefinition: true)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 192, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 24)
!438 = !DIGlobalVariableExpression(var: !439, expr: !DIExpression())
!439 = distinct !DIGlobalVariable(scope: null, file: !3, line: 652, type: !440, isLocal: true, isDefinition: true)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 280, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 35)
!443 = !DIGlobalVariableExpression(var: !444, expr: !DIExpression())
!444 = distinct !DIGlobalVariable(scope: null, file: !3, line: 659, type: !169, isLocal: true, isDefinition: true)
!445 = !DIGlobalVariableExpression(var: !446, expr: !DIExpression())
!446 = distinct !DIGlobalVariable(scope: null, file: !3, line: 666, type: !447, isLocal: true, isDefinition: true)
!447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 56, elements: !448)
!448 = !{!449}
!449 = !DISubrange(count: 7)
!450 = !DIGlobalVariableExpression(var: !451, expr: !DIExpression())
!451 = distinct !DIGlobalVariable(scope: null, file: !3, line: 673, type: !452, isLocal: true, isDefinition: true)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 176, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 22)
!455 = !DIGlobalVariableExpression(var: !456, expr: !DIExpression())
!456 = distinct !DIGlobalVariable(scope: null, file: !3, line: 680, type: !457, isLocal: true, isDefinition: true)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 336, elements: !458)
!458 = !{!459}
!459 = !DISubrange(count: 42)
!460 = !DIGlobalVariableExpression(var: !461, expr: !DIExpression())
!461 = distinct !DIGlobalVariable(scope: null, file: !3, line: 688, type: !462, isLocal: true, isDefinition: true)
!462 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 88, elements: !463)
!463 = !{!464}
!464 = !DISubrange(count: 11)
!465 = !DIGlobalVariableExpression(var: !466, expr: !DIExpression())
!466 = distinct !DIGlobalVariable(scope: null, file: !3, line: 474, type: !467, isLocal: true, isDefinition: true)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 40, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 5)
!470 = !DIGlobalVariableExpression(var: !471, expr: !DIExpression())
!471 = distinct !DIGlobalVariable(name: "redir_funcs", scope: !259, file: !3, line: 183, type: !349, isLocal: true, isDefinition: true)
!472 = !DIGlobalVariableExpression(var: !473, expr: !DIExpression())
!473 = distinct !DIGlobalVariable(scope: null, file: !3, line: 962, type: !474, isLocal: true, isDefinition: true)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 72, elements: !475)
!475 = !{!476}
!476 = !DISubrange(count: 9)
!477 = !DIGlobalVariableExpression(var: !478, expr: !DIExpression())
!478 = distinct !DIGlobalVariable(scope: null, file: !3, line: 446, type: !479, isLocal: true, isDefinition: true)
!479 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32, elements: !480)
!480 = !{!481}
!481 = !DISubrange(count: 4)
!482 = !DIGlobalVariableExpression(var: !483, expr: !DIExpression())
!483 = distinct !DIGlobalVariable(scope: null, file: !3, line: 449, type: !462, isLocal: true, isDefinition: true)
!484 = !DIGlobalVariableExpression(var: !485, expr: !DIExpression())
!485 = distinct !DIGlobalVariable(name: "dirlist_funcs", scope: !259, file: !3, line: 176, type: !349, isLocal: true, isDefinition: true)
!486 = !DIGlobalVariableExpression(var: !487, expr: !DIExpression())
!487 = distinct !DIGlobalVariable(scope: null, file: !3, line: 754, type: !488, isLocal: true, isDefinition: true)
!488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 112, elements: !489)
!489 = !{!490}
!490 = !DISubrange(count: 14)
!491 = !DIGlobalVariableExpression(var: !492, expr: !DIExpression())
!492 = distinct !DIGlobalVariable(scope: null, file: !3, line: 757, type: !493, isLocal: true, isDefinition: true)
!493 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 136, elements: !431)
!494 = !DIGlobalVariableExpression(var: !495, expr: !DIExpression())
!495 = distinct !DIGlobalVariable(name: "compression_none", scope: !259, file: !3, line: 45, type: !13, isLocal: true, isDefinition: true)
!496 = !DIGlobalVariableExpression(var: !497, expr: !DIExpression())
!497 = distinct !DIGlobalVariable(scope: null, file: !3, line: 433, type: !498, isLocal: true, isDefinition: true)
!498 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 80, elements: !499)
!499 = !{!500}
!500 = !DISubrange(count: 10)
!501 = !DIGlobalVariableExpression(var: !502, expr: !DIExpression())
!502 = distinct !DIGlobalVariable(name: "mmap_funcs", scope: !259, file: !3, line: 162, type: !349, isLocal: true, isDefinition: true)
!503 = !DIGlobalVariableExpression(var: !504, expr: !DIExpression())
!504 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !505, isLocal: true, isDefinition: true)
!505 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 64, elements: !131)
!506 = !DIGlobalVariableExpression(var: !507, expr: !DIExpression())
!507 = distinct !DIGlobalVariable(name: "compression_deflate", scope: !259, file: !3, line: 47, type: !13, isLocal: true, isDefinition: true)
!508 = !DIGlobalVariableExpression(var: !509, expr: !DIExpression())
!509 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !510, isLocal: true, isDefinition: true)
!510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 80, elements: !499)
!511 = !DIGlobalVariableExpression(var: !512, expr: !DIExpression())
!512 = distinct !DIGlobalVariable(scope: null, file: !3, line: 361, type: !505, isLocal: true, isDefinition: true)
!513 = !DIGlobalVariableExpression(var: !514, expr: !DIExpression())
!514 = distinct !DIGlobalVariable(name: "deflated_header_size", scope: !515, file: !3, line: 311, type: !518, isLocal: true, isDefinition: true)
!515 = distinct !DISubprogram(name: "is_compression_worthy", scope: !3, file: !3, line: 308, type: !516, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!516 = !DISubroutineType(types: !517)
!517 = !{!160, !518, !518}
!518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!519 = !{}
!520 = !DIGlobalVariableExpression(var: !521, expr: !DIExpression())
!521 = distinct !DIGlobalVariable(name: "sendfile_funcs", scope: !259, file: !3, line: 169, type: !349, isLocal: true, isDefinition: true)
!522 = !DIGlobalVariableExpression(var: !523, expr: !DIExpression())
!523 = distinct !DIGlobalVariable(scope: null, file: !3, line: 46, type: !467, isLocal: true, isDefinition: true)
!524 = !DIGlobalVariableExpression(var: !525, expr: !DIExpression())
!525 = distinct !DIGlobalVariable(name: "compression_gzip", scope: !259, file: !3, line: 46, type: !13, isLocal: true, isDefinition: true)
!526 = !DIGlobalVariableExpression(var: !527, expr: !DIExpression())
!527 = distinct !DIGlobalVariable(scope: null, file: !3, line: 393, type: !528, isLocal: true, isDefinition: true)
!528 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 48, elements: !529)
!529 = !{!530}
!530 = !DISubrange(count: 6)
!531 = !DIGlobalVariableExpression(var: !532, expr: !DIExpression())
!532 = distinct !DIGlobalVariable(scope: null, file: !3, line: 208, type: !533, isLocal: true, isDefinition: true)
!533 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 6104, elements: !534)
!534 = !{!535}
!535 = !DISubrange(count: 763)
!536 = !DIGlobalVariableExpression(var: !537, expr: !DIExpression())
!537 = distinct !DIGlobalVariable(name: "directory_list_tpl_str", scope: !259, file: !3, line: 208, type: !13, isLocal: true, isDefinition: true)
!538 = !DIGlobalVariableExpression(var: !539, expr: !DIExpression())
!539 = distinct !DIGlobalVariable(scope: null, file: !3, line: 201, type: !498, isLocal: true, isDefinition: true)
!540 = !DIGlobalVariableExpression(var: !541, expr: !DIExpression())
!541 = distinct !DIGlobalVariable(scope: null, file: !3, line: 202, type: !474, isLocal: true, isDefinition: true)
!542 = !DIGlobalVariableExpression(var: !543, expr: !DIExpression())
!543 = distinct !DIGlobalVariable(scope: null, file: !3, line: 203, type: !498, isLocal: true, isDefinition: true)
!544 = !DIGlobalVariableExpression(var: !545, expr: !DIExpression())
!545 = distinct !DIGlobalVariable(name: "file_list_desc", scope: !259, file: !3, line: 200, type: !546, isLocal: true, isDefinition: true)
!546 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 1536, elements: !480)
!547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_var_descriptor_t", file: !376, line: 26, baseType: !549)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_var_descriptor_t_", file: !376, line: 30, size: 384, elements: !550)
!550 = !{!551, !552, !554, !558, !562, !567}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !549, file: !376, line: 31, baseType: !13, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !549, file: !376, line: 32, baseType: !553, size: 64, offset: 64)
!553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "append_to_strbuf", scope: !549, file: !376, line: 34, baseType: !555, size: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DISubroutineType(types: !557)
!557 = !{null, !218, !20}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "get_is_empty", scope: !549, file: !376, line: 35, baseType: !559, size: 64, offset: 192)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{!160, !20}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !549, file: !376, line: 37, baseType: !563, size: 64, offset: 256)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_tpl_list_generator_t", file: !376, line: 28, baseType: !564)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!64, !105}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "list_desc", scope: !549, file: !376, line: 38, baseType: !568, size: 64, offset: 320)
!568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!569 = !DIGlobalVariableExpression(var: !570, expr: !DIExpression())
!570 = distinct !DIGlobalVariable(scope: null, file: !3, line: 271, type: !447, isLocal: true, isDefinition: true)
!571 = !DIGlobalVariableExpression(var: !572, expr: !DIExpression())
!572 = distinct !DIGlobalVariable(scope: null, file: !3, line: 272, type: !479, isLocal: true, isDefinition: true)
!573 = !DIGlobalVariableExpression(var: !574, expr: !DIExpression())
!574 = distinct !DIGlobalVariable(scope: null, file: !3, line: 273, type: !498, isLocal: true, isDefinition: true)
!575 = !DIGlobalVariableExpression(var: !576, expr: !DIExpression())
!576 = distinct !DIGlobalVariable(scope: null, file: !3, line: 275, type: !467, isLocal: true, isDefinition: true)
!577 = !DIGlobalVariableExpression(var: !578, expr: !DIExpression())
!578 = distinct !DIGlobalVariable(scope: null, file: !3, line: 276, type: !467, isLocal: true, isDefinition: true)
!579 = !DIGlobalVariableExpression(var: !580, expr: !DIExpression())
!580 = distinct !DIGlobalVariable(scope: null, file: !3, line: 284, type: !581, isLocal: true, isDefinition: true)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 16, elements: !182)
!582 = !DIGlobalVariableExpression(var: !583, expr: !DIExpression())
!583 = distinct !DIGlobalVariable(scope: null, file: !3, line: 287, type: !479, isLocal: true, isDefinition: true)
!584 = !DIGlobalVariableExpression(var: !585, expr: !DIExpression())
!585 = distinct !DIGlobalVariable(scope: null, file: !3, line: 290, type: !479, isLocal: true, isDefinition: true)
!586 = !DIGlobalVariableExpression(var: !587, expr: !DIExpression())
!587 = distinct !DIGlobalVariable(scope: null, file: !3, line: 293, type: !479, isLocal: true, isDefinition: true)
!588 = !DIGlobalVariableExpression(var: !589, expr: !DIExpression())
!589 = distinct !DIGlobalVariable(scope: null, file: !3, line: 191, type: !590, isLocal: true, isDefinition: true)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 120, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 15)
!593 = !DIGlobalVariableExpression(var: !594, expr: !DIExpression())
!594 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !595, isLocal: true, isDefinition: true)
!595 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 152, elements: !596)
!596 = !{!597}
!597 = !DISubrange(count: 19)
!598 = !DIGlobalVariableExpression(var: !599, expr: !DIExpression())
!599 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !590, isLocal: true, isDefinition: true)
!600 = !DIGlobalVariableExpression(var: !601, expr: !DIExpression())
!601 = distinct !DIGlobalVariable(scope: null, file: !3, line: 194, type: !590, isLocal: true, isDefinition: true)
!602 = !DIGlobalVariableExpression(var: !603, expr: !DIExpression())
!603 = distinct !DIGlobalVariable(scope: null, file: !3, line: 195, type: !590, isLocal: true, isDefinition: true)
!604 = !DIGlobalVariableExpression(var: !605, expr: !DIExpression())
!605 = distinct !DIGlobalVariable(scope: null, file: !3, line: 196, type: !590, isLocal: true, isDefinition: true)
!606 = !DIGlobalVariableExpression(var: !607, expr: !DIExpression())
!607 = distinct !DIGlobalVariable(name: "file_list_item_desc", scope: !259, file: !3, line: 190, type: !608, isLocal: true, isDefinition: true)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !547, size: 2688, elements: !448)
!609 = !DIGlobalVariableExpression(var: !610, expr: !DIExpression())
!610 = distinct !DIGlobalVariable(scope: null, file: !3, line: 709, type: !467, isLocal: true, isDefinition: true)
!611 = !DIGlobalVariableExpression(var: !612, expr: !DIExpression())
!612 = distinct !DIGlobalVariable(scope: null, file: !3, line: 710, type: !462, isLocal: true, isDefinition: true)
!613 = !DIGlobalVariableExpression(var: !614, expr: !DIExpression())
!614 = distinct !DIGlobalVariable(scope: null, file: !3, line: 712, type: !615, isLocal: true, isDefinition: true)
!615 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 208, elements: !616)
!616 = !{!617}
!617 = !DISubrange(count: 26)
!618 = !DIGlobalVariableExpression(var: !619, expr: !DIExpression())
!619 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !620, isLocal: true, isDefinition: true)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !14, size: 168, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: 21)
!623 = !DIGlobalVariableExpression(var: !624, expr: !DIExpression())
!624 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !625, isLocal: true, isDefinition: true)
!625 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 160, elements: !626)
!626 = !{!627}
!627 = !DISubrange(count: 20)
!628 = !{i32 7, !"Dwarf Version", i32 5}
!629 = !{i32 2, !"Debug Info Version", i32 3}
!630 = !{i32 1, !"wchar_size", i32 4}
!631 = !{i32 8, !"PIC Level", i32 2}
!632 = !{i32 7, !"PIE Level", i32 2}
!633 = !{i32 7, !"uwtable", i32 2}
!634 = !{i32 7, !"frame-pointer", i32 2}
!635 = !{!"clang version 16.0.0"}
!636 = !DILocation(line: 1023, column: 5, scope: !2)
!637 = distinct !DISubprogram(name: "serve_files_init", scope: !3, file: !3, line: 637, type: !18, scopeLine: 638, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!638 = !DILocalVariable(name: "args", arg: 1, scope: !637, file: !3, line: 637, type: !20)
!639 = !DILocation(line: 637, column: 24, scope: !637)
!640 = !DILocalVariable(name: "settings", scope: !637, file: !3, line: 639, type: !641)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_serve_files_settings_t", file: !643, line: 28, size: 192, elements: !644)
!643 = !DIFile(filename: "common/lwan-serve-files.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "605079e730f5b74778523d0897dc40c2")
!644 = !{!645, !646, !647}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "root_path", scope: !642, file: !643, line: 29, baseType: !13, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "index_html", scope: !642, file: !643, line: 30, baseType: !13, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "serve_precompressed_files", scope: !642, file: !643, line: 31, baseType: !160, size: 8, offset: 128)
!648 = !DILocation(line: 639, column: 41, scope: !637)
!649 = !DILocation(line: 639, column: 52, scope: !637)
!650 = !DILocalVariable(name: "canonical_root", scope: !637, file: !3, line: 640, type: !82)
!651 = !DILocation(line: 640, column: 11, scope: !637)
!652 = !DILocalVariable(name: "root_fd", scope: !637, file: !3, line: 641, type: !64)
!653 = !DILocation(line: 641, column: 9, scope: !637)
!654 = !DILocalVariable(name: "priv", scope: !637, file: !3, line: 642, type: !358)
!655 = !DILocation(line: 642, column: 25, scope: !637)
!656 = !DILocalVariable(name: "open_mode", scope: !637, file: !3, line: 643, type: !64)
!657 = !DILocation(line: 643, column: 9, scope: !637)
!658 = !DILocation(line: 645, column: 10, scope: !659)
!659 = distinct !DILexicalBlock(scope: !637, file: !3, line: 645, column: 9)
!660 = !DILocation(line: 645, column: 20, scope: !659)
!661 = !DILocation(line: 645, column: 9, scope: !637)
!662 = !DILocation(line: 646, column: 9, scope: !663)
!663 = distinct !DILexicalBlock(scope: !659, file: !3, line: 645, column: 31)
!664 = !DILocation(line: 647, column: 9, scope: !663)
!665 = !DILocation(line: 650, column: 31, scope: !637)
!666 = !DILocation(line: 650, column: 41, scope: !637)
!667 = !DILocation(line: 650, column: 22, scope: !637)
!668 = !DILocation(line: 650, column: 20, scope: !637)
!669 = !DILocation(line: 651, column: 10, scope: !670)
!670 = distinct !DILexicalBlock(scope: !637, file: !3, line: 651, column: 9)
!671 = !DILocation(line: 651, column: 9, scope: !637)
!672 = !DILocation(line: 652, column: 9, scope: !673)
!673 = distinct !DILexicalBlock(scope: !670, file: !3, line: 651, column: 26)
!674 = !DILocation(line: 654, column: 9, scope: !673)
!675 = !DILocation(line: 657, column: 34, scope: !637)
!676 = !DILocation(line: 657, column: 15, scope: !637)
!677 = !DILocation(line: 657, column: 13, scope: !637)
!678 = !DILocation(line: 658, column: 9, scope: !679)
!679 = distinct !DILexicalBlock(scope: !637, file: !3, line: 658, column: 9)
!680 = !DILocation(line: 658, column: 17, scope: !679)
!681 = !DILocation(line: 658, column: 9, scope: !637)
!682 = !DILocation(line: 659, column: 9, scope: !683)
!683 = distinct !DILexicalBlock(scope: !679, file: !3, line: 658, column: 22)
!684 = !DILocation(line: 661, column: 9, scope: !683)
!685 = !DILocation(line: 664, column: 12, scope: !637)
!686 = !DILocation(line: 664, column: 10, scope: !637)
!687 = !DILocation(line: 665, column: 10, scope: !688)
!688 = distinct !DILexicalBlock(scope: !637, file: !3, line: 665, column: 9)
!689 = !DILocation(line: 665, column: 9, scope: !637)
!690 = !DILocation(line: 666, column: 9, scope: !691)
!691 = distinct !DILexicalBlock(scope: !688, file: !3, line: 665, column: 16)
!692 = !DILocation(line: 667, column: 9, scope: !691)
!693 = !DILocation(line: 671, column: 17, scope: !637)
!694 = !DILocation(line: 670, column: 19, scope: !637)
!695 = !DILocation(line: 670, column: 5, scope: !637)
!696 = !DILocation(line: 670, column: 11, scope: !637)
!697 = !DILocation(line: 670, column: 17, scope: !637)
!698 = !DILocation(line: 672, column: 10, scope: !699)
!699 = distinct !DILexicalBlock(scope: !637, file: !3, line: 672, column: 9)
!700 = !DILocation(line: 672, column: 16, scope: !699)
!701 = !DILocation(line: 672, column: 9, scope: !637)
!702 = !DILocation(line: 673, column: 9, scope: !703)
!703 = distinct !DILexicalBlock(scope: !699, file: !3, line: 672, column: 23)
!704 = !DILocation(line: 674, column: 9, scope: !703)
!705 = !DILocation(line: 678, column: 17, scope: !637)
!706 = !DILocation(line: 677, column: 32, scope: !637)
!707 = !DILocation(line: 677, column: 5, scope: !637)
!708 = !DILocation(line: 677, column: 11, scope: !637)
!709 = !DILocation(line: 677, column: 30, scope: !637)
!710 = !DILocation(line: 679, column: 10, scope: !711)
!711 = distinct !DILexicalBlock(scope: !637, file: !3, line: 679, column: 9)
!712 = !DILocation(line: 679, column: 16, scope: !711)
!713 = !DILocation(line: 679, column: 9, scope: !637)
!714 = !DILocation(line: 680, column: 9, scope: !715)
!715 = distinct !DILexicalBlock(scope: !711, file: !3, line: 679, column: 36)
!716 = !DILocation(line: 681, column: 9, scope: !715)
!717 = !DILocation(line: 684, column: 23, scope: !637)
!718 = !DILocation(line: 684, column: 5, scope: !637)
!719 = !DILocation(line: 684, column: 11, scope: !637)
!720 = !DILocation(line: 684, column: 16, scope: !637)
!721 = !DILocation(line: 684, column: 21, scope: !637)
!722 = !DILocation(line: 685, column: 34, scope: !637)
!723 = !DILocation(line: 685, column: 27, scope: !637)
!724 = !DILocation(line: 685, column: 5, scope: !637)
!725 = !DILocation(line: 685, column: 11, scope: !637)
!726 = !DILocation(line: 685, column: 16, scope: !637)
!727 = !DILocation(line: 685, column: 25, scope: !637)
!728 = !DILocation(line: 686, column: 21, scope: !637)
!729 = !DILocation(line: 686, column: 5, scope: !637)
!730 = !DILocation(line: 686, column: 11, scope: !637)
!731 = !DILocation(line: 686, column: 16, scope: !637)
!732 = !DILocation(line: 686, column: 19, scope: !637)
!733 = !DILocation(line: 687, column: 23, scope: !637)
!734 = !DILocation(line: 687, column: 5, scope: !637)
!735 = !DILocation(line: 687, column: 11, scope: !637)
!736 = !DILocation(line: 687, column: 21, scope: !637)
!737 = !DILocation(line: 688, column: 24, scope: !637)
!738 = !DILocation(line: 688, column: 34, scope: !637)
!739 = !DILocation(line: 688, column: 47, scope: !637)
!740 = !DILocation(line: 688, column: 57, scope: !637)
!741 = !DILocation(line: 688, column: 5, scope: !637)
!742 = !DILocation(line: 688, column: 11, scope: !637)
!743 = !DILocation(line: 688, column: 22, scope: !637)
!744 = !DILocation(line: 689, column: 39, scope: !637)
!745 = !DILocation(line: 689, column: 49, scope: !637)
!746 = !DILocation(line: 689, column: 5, scope: !637)
!747 = !DILocation(line: 689, column: 11, scope: !637)
!748 = !DILocation(line: 689, column: 37, scope: !637)
!749 = !DILocation(line: 691, column: 12, scope: !637)
!750 = !DILocation(line: 691, column: 5, scope: !637)
!751 = !DILabel(scope: !637, name: "out_tpl_compile", file: !3, line: 693)
!752 = !DILocation(line: 693, column: 1, scope: !637)
!753 = !DILocation(line: 694, column: 19, scope: !637)
!754 = !DILocation(line: 694, column: 25, scope: !637)
!755 = !DILocation(line: 694, column: 5, scope: !637)
!756 = !DILabel(scope: !637, name: "out_cache_create", file: !3, line: 695)
!757 = !DILocation(line: 695, column: 1, scope: !637)
!758 = !DILocation(line: 696, column: 10, scope: !637)
!759 = !DILocation(line: 696, column: 5, scope: !637)
!760 = !DILabel(scope: !637, name: "out_malloc", file: !3, line: 697)
!761 = !DILocation(line: 697, column: 1, scope: !637)
!762 = !DILocation(line: 698, column: 11, scope: !637)
!763 = !DILocation(line: 698, column: 5, scope: !637)
!764 = !DILabel(scope: !637, name: "out_open", file: !3, line: 699)
!765 = !DILocation(line: 699, column: 1, scope: !637)
!766 = !DILocation(line: 700, column: 10, scope: !637)
!767 = !DILocation(line: 700, column: 5, scope: !637)
!768 = !DILabel(scope: !637, name: "out_realpath", file: !3, line: 701)
!769 = !DILocation(line: 701, column: 1, scope: !637)
!770 = !DILocation(line: 702, column: 5, scope: !637)
!771 = !DILocation(line: 703, column: 1, scope: !637)
!772 = distinct !DISubprogram(name: "serve_files_init_from_hash", scope: !3, file: !3, line: 706, type: !23, scopeLine: 707, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!773 = !DILocalVariable(name: "hash", arg: 1, scope: !772, file: !3, line: 706, type: !25)
!774 = !DILocation(line: 706, column: 47, scope: !772)
!775 = !DILocalVariable(name: "settings", scope: !772, file: !3, line: 708, type: !642)
!776 = !DILocation(line: 708, column: 40, scope: !772)
!777 = !DILocation(line: 708, column: 51, scope: !772)
!778 = !DILocation(line: 709, column: 32, scope: !772)
!779 = !DILocation(line: 709, column: 22, scope: !772)
!780 = !DILocation(line: 710, column: 33, scope: !772)
!781 = !DILocation(line: 710, column: 23, scope: !772)
!782 = !DILocation(line: 712, column: 34, scope: !772)
!783 = !DILocation(line: 712, column: 24, scope: !772)
!784 = !DILocation(line: 712, column: 13, scope: !772)
!785 = !DILocation(line: 714, column: 12, scope: !772)
!786 = !DILocation(line: 714, column: 5, scope: !772)
!787 = distinct !DISubprogram(name: "serve_files_shutdown", scope: !3, file: !3, line: 718, type: !31, scopeLine: 719, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!788 = !DILocalVariable(name: "data", arg: 1, scope: !787, file: !3, line: 718, type: !20)
!789 = !DILocation(line: 718, column: 28, scope: !787)
!790 = !DILocalVariable(name: "priv", scope: !787, file: !3, line: 720, type: !358)
!791 = !DILocation(line: 720, column: 25, scope: !787)
!792 = !DILocation(line: 720, column: 32, scope: !787)
!793 = !DILocation(line: 722, column: 10, scope: !794)
!794 = distinct !DILexicalBlock(scope: !787, file: !3, line: 722, column: 9)
!795 = !DILocation(line: 722, column: 9, scope: !787)
!796 = !DILocation(line: 723, column: 9, scope: !797)
!797 = distinct !DILexicalBlock(scope: !794, file: !3, line: 722, column: 16)
!798 = !DILocation(line: 724, column: 9, scope: !797)
!799 = !DILocation(line: 727, column: 19, scope: !787)
!800 = !DILocation(line: 727, column: 25, scope: !787)
!801 = !DILocation(line: 727, column: 5, scope: !787)
!802 = !DILocation(line: 728, column: 19, scope: !787)
!803 = !DILocation(line: 728, column: 25, scope: !787)
!804 = !DILocation(line: 728, column: 5, scope: !787)
!805 = !DILocation(line: 729, column: 11, scope: !787)
!806 = !DILocation(line: 729, column: 17, scope: !787)
!807 = !DILocation(line: 729, column: 22, scope: !787)
!808 = !DILocation(line: 729, column: 5, scope: !787)
!809 = !DILocation(line: 730, column: 10, scope: !787)
!810 = !DILocation(line: 730, column: 16, scope: !787)
!811 = !DILocation(line: 730, column: 21, scope: !787)
!812 = !DILocation(line: 730, column: 5, scope: !787)
!813 = !DILocation(line: 731, column: 10, scope: !787)
!814 = !DILocation(line: 731, column: 5, scope: !787)
!815 = !DILocation(line: 732, column: 1, scope: !787)
!816 = distinct !DISubprogram(name: "serve_files_handle_cb", scope: !3, file: !3, line: 981, type: !35, scopeLine: 982, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!817 = !DILocalVariable(name: "request", arg: 1, scope: !816, file: !3, line: 981, type: !57)
!818 = !DILocation(line: 981, column: 39, scope: !816)
!819 = !DILocalVariable(name: "response", arg: 2, scope: !816, file: !3, line: 981, type: !246)
!820 = !DILocation(line: 981, column: 65, scope: !816)
!821 = !DILocalVariable(name: "data", arg: 3, scope: !816, file: !3, line: 981, type: !20)
!822 = !DILocation(line: 981, column: 81, scope: !816)
!823 = !DILocalVariable(name: "return_status", scope: !816, file: !3, line: 983, type: !37)
!824 = !DILocation(line: 983, column: 24, scope: !816)
!825 = !DILocalVariable(name: "priv", scope: !816, file: !3, line: 984, type: !358)
!826 = !DILocation(line: 984, column: 25, scope: !816)
!827 = !DILocation(line: 984, column: 32, scope: !816)
!828 = !DILocalVariable(name: "ce", scope: !816, file: !3, line: 985, type: !288)
!829 = !DILocation(line: 985, column: 27, scope: !816)
!830 = !DILocation(line: 987, column: 9, scope: !831)
!831 = distinct !DILexicalBlock(scope: !816, file: !3, line: 987, column: 9)
!832 = !DILocation(line: 987, column: 9, scope: !816)
!833 = !DILocation(line: 988, column: 23, scope: !834)
!834 = distinct !DILexicalBlock(scope: !831, file: !3, line: 987, column: 26)
!835 = !DILocation(line: 989, column: 9, scope: !834)
!836 = !DILocation(line: 992, column: 39, scope: !816)
!837 = !DILocation(line: 992, column: 45, scope: !816)
!838 = !DILocation(line: 992, column: 52, scope: !816)
!839 = !DILocation(line: 992, column: 61, scope: !816)
!840 = !DILocation(line: 992, column: 67, scope: !816)
!841 = !DILocation(line: 993, column: 17, scope: !816)
!842 = !DILocation(line: 993, column: 26, scope: !816)
!843 = !DILocation(line: 993, column: 30, scope: !816)
!844 = !DILocation(line: 992, column: 10, scope: !816)
!845 = !DILocation(line: 992, column: 8, scope: !816)
!846 = !DILocation(line: 994, column: 9, scope: !847)
!847 = distinct !DILexicalBlock(scope: !816, file: !3, line: 994, column: 9)
!848 = !DILocation(line: 994, column: 9, scope: !816)
!849 = !DILocalVariable(name: "fce", scope: !850, file: !3, line: 995, type: !333)
!850 = distinct !DILexicalBlock(scope: !847, file: !3, line: 994, column: 21)
!851 = !DILocation(line: 995, column: 29, scope: !850)
!852 = !DILocation(line: 995, column: 57, scope: !850)
!853 = !DILocation(line: 996, column: 31, scope: !850)
!854 = !DILocation(line: 996, column: 36, scope: !850)
!855 = !DILocation(line: 996, column: 9, scope: !850)
!856 = !DILocation(line: 996, column: 19, scope: !850)
!857 = !DILocation(line: 996, column: 29, scope: !850)
!858 = !DILocation(line: 997, column: 37, scope: !850)
!859 = !DILocation(line: 997, column: 42, scope: !850)
!860 = !DILocation(line: 997, column: 49, scope: !850)
!861 = !DILocation(line: 997, column: 9, scope: !850)
!862 = !DILocation(line: 997, column: 19, scope: !850)
!863 = !DILocation(line: 997, column: 26, scope: !850)
!864 = !DILocation(line: 997, column: 35, scope: !850)
!865 = !DILocation(line: 998, column: 33, scope: !850)
!866 = !DILocation(line: 998, column: 9, scope: !850)
!867 = !DILocation(line: 998, column: 19, scope: !850)
!868 = !DILocation(line: 998, column: 26, scope: !850)
!869 = !DILocation(line: 998, column: 31, scope: !850)
!870 = !DILocation(line: 999, column: 33, scope: !850)
!871 = !DILocation(line: 999, column: 9, scope: !850)
!872 = !DILocation(line: 999, column: 19, scope: !850)
!873 = !DILocation(line: 999, column: 26, scope: !850)
!874 = !DILocation(line: 999, column: 31, scope: !850)
!875 = !DILocation(line: 1001, column: 9, scope: !850)
!876 = !DILabel(scope: !816, name: "fail", file: !3, line: 1004)
!877 = !DILocation(line: 1004, column: 1, scope: !816)
!878 = !DILocation(line: 1005, column: 5, scope: !816)
!879 = !DILocation(line: 1005, column: 15, scope: !816)
!880 = !DILocation(line: 1005, column: 22, scope: !816)
!881 = !DILocation(line: 1005, column: 31, scope: !816)
!882 = !DILocation(line: 1006, column: 12, scope: !816)
!883 = !DILocation(line: 1006, column: 5, scope: !816)
!884 = !DILocation(line: 1007, column: 1, scope: !816)
!885 = distinct !DISubprogram(name: "try_open_directory", scope: !3, file: !3, line: 605, type: !886, scopeLine: 606, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!886 = !DISubroutineType(types: !887)
!887 = !{!64, !13, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!889 = !DILocalVariable(name: "path", arg: 1, scope: !885, file: !3, line: 605, type: !13)
!890 = !DILocation(line: 605, column: 32, scope: !885)
!891 = !DILocalVariable(name: "open_mode", arg: 2, scope: !885, file: !3, line: 605, type: !888)
!892 = !DILocation(line: 605, column: 43, scope: !885)
!893 = !DILocalVariable(name: "fd", scope: !885, file: !3, line: 607, type: !64)
!894 = !DILocation(line: 607, column: 9, scope: !885)
!895 = !DILocation(line: 609, column: 6, scope: !885)
!896 = !DILocation(line: 609, column: 16, scope: !885)
!897 = !DILocation(line: 611, column: 15, scope: !885)
!898 = !DILocation(line: 611, column: 22, scope: !885)
!899 = !DILocation(line: 611, column: 21, scope: !885)
!900 = !DILocation(line: 611, column: 32, scope: !885)
!901 = !DILocation(line: 611, column: 10, scope: !885)
!902 = !DILocation(line: 611, column: 8, scope: !885)
!903 = !DILocation(line: 612, column: 9, scope: !904)
!904 = distinct !DILexicalBlock(scope: !885, file: !3, line: 612, column: 9)
!905 = !DILocation(line: 612, column: 12, scope: !904)
!906 = !DILocation(line: 612, column: 9, scope: !885)
!907 = !DILocation(line: 614, column: 10, scope: !908)
!908 = distinct !DILexicalBlock(scope: !904, file: !3, line: 612, column: 17)
!909 = !DILocation(line: 614, column: 20, scope: !908)
!910 = !DILocation(line: 616, column: 19, scope: !908)
!911 = !DILocation(line: 616, column: 26, scope: !908)
!912 = !DILocation(line: 616, column: 25, scope: !908)
!913 = !DILocation(line: 616, column: 36, scope: !908)
!914 = !DILocation(line: 616, column: 14, scope: !908)
!915 = !DILocation(line: 616, column: 12, scope: !908)
!916 = !DILocation(line: 617, column: 13, scope: !917)
!917 = distinct !DILexicalBlock(scope: !908, file: !3, line: 617, column: 13)
!918 = !DILocation(line: 617, column: 16, scope: !917)
!919 = !DILocation(line: 617, column: 13, scope: !908)
!920 = !DILocation(line: 619, column: 14, scope: !921)
!921 = distinct !DILexicalBlock(scope: !917, file: !3, line: 617, column: 21)
!922 = !DILocation(line: 619, column: 24, scope: !921)
!923 = !DILocation(line: 621, column: 23, scope: !921)
!924 = !DILocation(line: 621, column: 30, scope: !921)
!925 = !DILocation(line: 621, column: 29, scope: !921)
!926 = !DILocation(line: 621, column: 40, scope: !921)
!927 = !DILocation(line: 621, column: 18, scope: !921)
!928 = !DILocation(line: 621, column: 16, scope: !921)
!929 = !DILocation(line: 622, column: 9, scope: !921)
!930 = !DILocation(line: 623, column: 5, scope: !908)
!931 = !DILocation(line: 625, column: 9, scope: !932)
!932 = distinct !DILexicalBlock(scope: !885, file: !3, line: 625, column: 9)
!933 = !DILocation(line: 625, column: 12, scope: !932)
!934 = !DILocation(line: 625, column: 9, scope: !885)
!935 = !DILocation(line: 626, column: 9, scope: !932)
!936 = !DILocation(line: 632, column: 11, scope: !885)
!937 = !DILocation(line: 632, column: 5, scope: !885)
!938 = !DILocation(line: 633, column: 17, scope: !885)
!939 = !DILocation(line: 633, column: 24, scope: !885)
!940 = !DILocation(line: 633, column: 23, scope: !885)
!941 = !DILocation(line: 633, column: 34, scope: !885)
!942 = !DILocation(line: 633, column: 48, scope: !885)
!943 = !DILocation(line: 633, column: 12, scope: !885)
!944 = !DILocation(line: 633, column: 5, scope: !885)
!945 = !DILocation(line: 634, column: 1, scope: !885)
!946 = distinct !DISubprogram(name: "create_cache_entry", scope: !3, file: !3, line: 532, type: !947, scopeLine: 533, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!947 = !DISubroutineType(types: !948)
!948 = !{!288, !13, !20}
!949 = !DILocalVariable(name: "key", arg: 1, scope: !946, file: !3, line: 532, type: !13)
!950 = !DILocation(line: 532, column: 32, scope: !946)
!951 = !DILocalVariable(name: "context", arg: 2, scope: !946, file: !3, line: 532, type: !20)
!952 = !DILocation(line: 532, column: 43, scope: !946)
!953 = !DILocalVariable(name: "priv", scope: !946, file: !3, line: 534, type: !358)
!954 = !DILocation(line: 534, column: 25, scope: !946)
!955 = !DILocation(line: 534, column: 32, scope: !946)
!956 = !DILocalVariable(name: "fce", scope: !946, file: !3, line: 535, type: !333)
!957 = !DILocation(line: 535, column: 25, scope: !946)
!958 = !DILocalVariable(name: "st", scope: !946, file: !3, line: 536, type: !380)
!959 = !DILocation(line: 536, column: 17, scope: !946)
!960 = !DILocalVariable(name: "funcs", scope: !946, file: !3, line: 537, type: !348)
!961 = !DILocation(line: 537, column: 26, scope: !946)
!962 = !DILocalVariable(name: "full_path", scope: !946, file: !3, line: 538, type: !963)
!963 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 32768, elements: !964)
!964 = !{!965}
!965 = !DISubrange(count: 4096)
!966 = !DILocation(line: 538, column: 10, scope: !946)
!967 = !DILocation(line: 540, column: 9, scope: !968)
!968 = distinct !DILexicalBlock(scope: !946, file: !3, line: 540, column: 9)
!969 = !DILocation(line: 540, column: 9, scope: !946)
!970 = !DILocation(line: 542, column: 9, scope: !968)
!971 = !DILocation(line: 544, column: 9, scope: !972)
!972 = distinct !DILexicalBlock(scope: !946, file: !3, line: 544, column: 9)
!973 = !DILocation(line: 544, column: 9, scope: !946)
!974 = !DILocation(line: 545, column: 9, scope: !972)
!975 = !DILocation(line: 547, column: 23, scope: !946)
!976 = !DILocation(line: 547, column: 29, scope: !946)
!977 = !DILocation(line: 547, column: 34, scope: !946)
!978 = !DILocation(line: 547, column: 13, scope: !946)
!979 = !DILocation(line: 547, column: 11, scope: !946)
!980 = !DILocation(line: 548, column: 9, scope: !981)
!981 = distinct !DILexicalBlock(scope: !946, file: !3, line: 548, column: 9)
!982 = !DILocation(line: 548, column: 9, scope: !946)
!983 = !DILocation(line: 549, column: 9, scope: !981)
!984 = !DILocation(line: 551, column: 41, scope: !946)
!985 = !DILocation(line: 551, column: 47, scope: !946)
!986 = !DILocation(line: 551, column: 63, scope: !946)
!987 = !DILocation(line: 551, column: 11, scope: !946)
!988 = !DILocation(line: 551, column: 9, scope: !946)
!989 = !DILocation(line: 552, column: 9, scope: !990)
!990 = distinct !DILexicalBlock(scope: !946, file: !3, line: 552, column: 9)
!991 = !DILocation(line: 552, column: 9, scope: !946)
!992 = !DILocation(line: 553, column: 9, scope: !990)
!993 = !DILocation(line: 555, column: 29, scope: !946)
!994 = !DILocation(line: 555, column: 39, scope: !946)
!995 = !DILocation(line: 555, column: 44, scope: !946)
!996 = !DILocation(line: 555, column: 58, scope: !946)
!997 = !DILocation(line: 555, column: 5, scope: !946)
!998 = !DILocation(line: 556, column: 37, scope: !946)
!999 = !DILocation(line: 556, column: 5, scope: !946)
!1000 = !DILocation(line: 556, column: 10, scope: !946)
!1001 = !DILocation(line: 556, column: 24, scope: !946)
!1002 = !DILocation(line: 556, column: 32, scope: !946)
!1003 = !DILocation(line: 558, column: 36, scope: !946)
!1004 = !DILocation(line: 558, column: 5, scope: !946)
!1005 = !DILocation(line: 559, column: 1, scope: !946)
!1006 = distinct !DISubprogram(name: "destroy_cache_entry", scope: !3, file: !3, line: 596, type: !1007, scopeLine: 597, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1007 = !DISubroutineType(types: !1008)
!1008 = !{null, !288, !20}
!1009 = !DILocalVariable(name: "entry", arg: 1, scope: !1006, file: !3, line: 596, type: !288)
!1010 = !DILocation(line: 596, column: 43, scope: !1006)
!1011 = !DILocalVariable(name: "context", arg: 2, scope: !1006, file: !3, line: 596, type: !20)
!1012 = !DILocation(line: 596, column: 56, scope: !1006)
!1013 = !DILocalVariable(name: "fce", scope: !1006, file: !3, line: 598, type: !333)
!1014 = !DILocation(line: 598, column: 25, scope: !1006)
!1015 = !DILocation(line: 598, column: 53, scope: !1006)
!1016 = !DILocation(line: 600, column: 5, scope: !1006)
!1017 = !DILocation(line: 600, column: 10, scope: !1006)
!1018 = !DILocation(line: 600, column: 17, scope: !1006)
!1019 = !DILocation(line: 600, column: 22, scope: !1006)
!1020 = !DILocation(line: 600, column: 26, scope: !1006)
!1021 = !DILocation(line: 601, column: 10, scope: !1006)
!1022 = !DILocation(line: 601, column: 5, scope: !1006)
!1023 = !DILocation(line: 602, column: 1, scope: !1006)
!1024 = distinct !DISubprogram(name: "get_funcs", scope: !3, file: !3, line: 454, type: !1025, scopeLine: 456, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{!348, !358, !13, !82, !379}
!1027 = !DILocalVariable(name: "priv", arg: 1, scope: !1024, file: !3, line: 454, type: !358)
!1028 = !DILocation(line: 454, column: 31, scope: !1024)
!1029 = !DILocalVariable(name: "key", arg: 2, scope: !1024, file: !3, line: 454, type: !13)
!1030 = !DILocation(line: 454, column: 49, scope: !1024)
!1031 = !DILocalVariable(name: "full_path", arg: 3, scope: !1024, file: !3, line: 454, type: !82)
!1032 = !DILocation(line: 454, column: 60, scope: !1024)
!1033 = !DILocalVariable(name: "st", arg: 4, scope: !1024, file: !3, line: 455, type: !379)
!1034 = !DILocation(line: 455, column: 18, scope: !1024)
!1035 = !DILocalVariable(name: "index_html_path_buf", scope: !1024, file: !3, line: 457, type: !963)
!1036 = !DILocation(line: 457, column: 10, scope: !1024)
!1037 = !DILocalVariable(name: "index_html_path", scope: !1024, file: !3, line: 458, type: !82)
!1038 = !DILocation(line: 458, column: 11, scope: !1024)
!1039 = !DILocation(line: 458, column: 29, scope: !1024)
!1040 = !DILocation(line: 460, column: 9, scope: !1041)
!1041 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 460, column: 9)
!1042 = !DILocation(line: 460, column: 9, scope: !1024)
!1043 = !DILocation(line: 464, column: 14, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 464, column: 13)
!1045 = distinct !DILexicalBlock(scope: !1041, file: !3, line: 460, column: 31)
!1046 = !DILocation(line: 464, column: 13, scope: !1044)
!1047 = !DILocation(line: 464, column: 18, scope: !1044)
!1048 = !DILocation(line: 464, column: 13, scope: !1045)
!1049 = !DILocation(line: 465, column: 39, scope: !1050)
!1050 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 464, column: 27)
!1051 = !DILocation(line: 465, column: 45, scope: !1050)
!1052 = !DILocation(line: 465, column: 29, scope: !1050)
!1053 = !DILocation(line: 466, column: 9, scope: !1050)
!1054 = !DILocalVariable(name: "key_end", scope: !1055, file: !3, line: 470, type: !13)
!1055 = distinct !DILexicalBlock(scope: !1044, file: !3, line: 466, column: 16)
!1056 = !DILocation(line: 470, column: 25, scope: !1055)
!1057 = !DILocation(line: 470, column: 45, scope: !1055)
!1058 = !DILocation(line: 470, column: 35, scope: !1055)
!1059 = !DILocation(line: 471, column: 19, scope: !1060)
!1060 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 471, column: 17)
!1061 = !DILocation(line: 471, column: 27, scope: !1060)
!1062 = !DILocation(line: 471, column: 17, scope: !1060)
!1063 = !DILocation(line: 471, column: 32, scope: !1060)
!1064 = !DILocation(line: 471, column: 17, scope: !1055)
!1065 = !DILocation(line: 472, column: 17, scope: !1060)
!1066 = !DILocalVariable(name: "ret", scope: !1055, file: !3, line: 474, type: !64)
!1067 = !DILocation(line: 474, column: 17, scope: !1055)
!1068 = !DILocation(line: 474, column: 32, scope: !1055)
!1069 = !DILocation(line: 474, column: 67, scope: !1055)
!1070 = !DILocation(line: 474, column: 72, scope: !1055)
!1071 = !DILocation(line: 474, column: 78, scope: !1055)
!1072 = !DILocation(line: 474, column: 23, scope: !1055)
!1073 = !DILocation(line: 475, column: 17, scope: !1074)
!1074 = distinct !DILexicalBlock(scope: !1055, file: !3, line: 475, column: 17)
!1075 = !DILocation(line: 475, column: 17, scope: !1055)
!1076 = !DILocation(line: 476, column: 17, scope: !1074)
!1077 = !DILocation(line: 480, column: 21, scope: !1078)
!1078 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 480, column: 13)
!1079 = !DILocation(line: 480, column: 27, scope: !1078)
!1080 = !DILocation(line: 480, column: 32, scope: !1078)
!1081 = !DILocation(line: 480, column: 36, scope: !1078)
!1082 = !DILocation(line: 480, column: 53, scope: !1078)
!1083 = !DILocation(line: 480, column: 13, scope: !1078)
!1084 = !DILocation(line: 480, column: 60, scope: !1078)
!1085 = !DILocation(line: 480, column: 13, scope: !1045)
!1086 = !DILocation(line: 481, column: 17, scope: !1087)
!1087 = distinct !DILexicalBlock(scope: !1088, file: !3, line: 481, column: 17)
!1088 = distinct !DILexicalBlock(scope: !1078, file: !3, line: 480, column: 65)
!1089 = !DILocation(line: 481, column: 17, scope: !1088)
!1090 = !DILocation(line: 482, column: 17, scope: !1087)
!1091 = !DILocation(line: 485, column: 13, scope: !1088)
!1092 = !DILocation(line: 491, column: 13, scope: !1093)
!1093 = distinct !DILexicalBlock(scope: !1045, file: !3, line: 491, column: 13)
!1094 = !DILocation(line: 491, column: 13, scope: !1045)
!1095 = !DILocation(line: 493, column: 13, scope: !1093)
!1096 = !DILocation(line: 495, column: 9, scope: !1045)
!1097 = !DILocation(line: 495, column: 19, scope: !1045)
!1098 = !DILocation(line: 495, column: 25, scope: !1045)
!1099 = !DILocation(line: 495, column: 30, scope: !1045)
!1100 = !DILocation(line: 495, column: 40, scope: !1045)
!1101 = !DILocation(line: 496, column: 17, scope: !1045)
!1102 = !DILocation(line: 496, column: 29, scope: !1045)
!1103 = !DILocation(line: 496, column: 35, scope: !1045)
!1104 = !DILocation(line: 496, column: 40, scope: !1045)
!1105 = !DILocation(line: 496, column: 27, scope: !1045)
!1106 = !DILocation(line: 496, column: 49, scope: !1045)
!1107 = !DILocation(line: 496, column: 54, scope: !1045)
!1108 = !DILocation(line: 497, column: 32, scope: !1045)
!1109 = !DILocation(line: 497, column: 38, scope: !1045)
!1110 = !DILocation(line: 497, column: 43, scope: !1045)
!1111 = !DILocation(line: 497, column: 30, scope: !1045)
!1112 = !DILocation(line: 497, column: 52, scope: !1045)
!1113 = !DILocation(line: 496, column: 9, scope: !1045)
!1114 = !DILocation(line: 498, column: 5, scope: !1045)
!1115 = !DILocation(line: 502, column: 9, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1024, file: !3, line: 502, column: 9)
!1117 = !DILocation(line: 502, column: 13, scope: !1116)
!1118 = !DILocation(line: 502, column: 21, scope: !1116)
!1119 = !DILocation(line: 502, column: 9, scope: !1024)
!1120 = !DILocation(line: 503, column: 9, scope: !1116)
!1121 = !DILocation(line: 505, column: 5, scope: !1024)
!1122 = !DILocation(line: 506, column: 1, scope: !1024)
!1123 = distinct !DISubprogram(name: "create_cache_entry_from_funcs", scope: !3, file: !3, line: 509, type: !1124, scopeLine: 511, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1124 = !DISubroutineType(types: !1125)
!1125 = !{!333, !358, !13, !379, !348}
!1126 = !DILocalVariable(name: "priv", arg: 1, scope: !1123, file: !3, line: 509, type: !358)
!1127 = !DILocation(line: 509, column: 51, scope: !1123)
!1128 = !DILocalVariable(name: "full_path", arg: 2, scope: !1123, file: !3, line: 509, type: !13)
!1129 = !DILocation(line: 509, column: 69, scope: !1123)
!1130 = !DILocalVariable(name: "st", arg: 3, scope: !1123, file: !3, line: 510, type: !379)
!1131 = !DILocation(line: 510, column: 18, scope: !1123)
!1132 = !DILocalVariable(name: "funcs", arg: 4, scope: !1123, file: !3, line: 510, type: !348)
!1133 = !DILocation(line: 510, column: 43, scope: !1123)
!1134 = !DILocalVariable(name: "fce", scope: !1123, file: !3, line: 512, type: !333)
!1135 = !DILocation(line: 512, column: 25, scope: !1123)
!1136 = !DILocation(line: 514, column: 33, scope: !1123)
!1137 = !DILocation(line: 514, column: 40, scope: !1123)
!1138 = !DILocation(line: 514, column: 31, scope: !1123)
!1139 = !DILocation(line: 514, column: 11, scope: !1123)
!1140 = !DILocation(line: 514, column: 9, scope: !1123)
!1141 = !DILocation(line: 515, column: 9, scope: !1142)
!1142 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 515, column: 9)
!1143 = !DILocation(line: 515, column: 9, scope: !1123)
!1144 = !DILocation(line: 516, column: 9, scope: !1142)
!1145 = !DILocation(line: 518, column: 9, scope: !1146)
!1146 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 518, column: 9)
!1147 = !DILocation(line: 518, column: 9, scope: !1123)
!1148 = !DILocation(line: 519, column: 22, scope: !1149)
!1149 = distinct !DILexicalBlock(scope: !1146, file: !3, line: 518, column: 56)
!1150 = !DILocation(line: 519, column: 9, scope: !1149)
!1151 = !DILocation(line: 519, column: 14, scope: !1149)
!1152 = !DILocation(line: 519, column: 20, scope: !1149)
!1153 = !DILocation(line: 520, column: 16, scope: !1149)
!1154 = !DILocation(line: 520, column: 9, scope: !1149)
!1155 = !DILocation(line: 523, column: 10, scope: !1123)
!1156 = !DILocation(line: 523, column: 5, scope: !1123)
!1157 = !DILocation(line: 525, column: 9, scope: !1158)
!1158 = distinct !DILexicalBlock(scope: !1123, file: !3, line: 525, column: 9)
!1159 = !DILocation(line: 525, column: 15, scope: !1158)
!1160 = !DILocation(line: 525, column: 9, scope: !1123)
!1161 = !DILocation(line: 526, column: 9, scope: !1158)
!1162 = !DILocation(line: 528, column: 42, scope: !1123)
!1163 = !DILocation(line: 528, column: 48, scope: !1123)
!1164 = !DILocation(line: 528, column: 59, scope: !1123)
!1165 = !DILocation(line: 528, column: 12, scope: !1123)
!1166 = !DILocation(line: 528, column: 5, scope: !1123)
!1167 = !DILocation(line: 529, column: 1, scope: !1123)
!1168 = distinct !DISubprogram(name: "redir_serve", scope: !3, file: !3, line: 951, type: !242, scopeLine: 952, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1169 = !DILocalVariable(name: "request", arg: 1, scope: !1168, file: !3, line: 951, type: !57)
!1170 = !DILocation(line: 951, column: 29, scope: !1168)
!1171 = !DILocalVariable(name: "data", arg: 2, scope: !1168, file: !3, line: 951, type: !20)
!1172 = !DILocation(line: 951, column: 44, scope: !1168)
!1173 = !DILocalVariable(name: "fce", scope: !1168, file: !3, line: 953, type: !333)
!1174 = !DILocation(line: 953, column: 25, scope: !1168)
!1175 = !DILocation(line: 953, column: 31, scope: !1168)
!1176 = !DILocalVariable(name: "rd", scope: !1168, file: !3, line: 954, type: !303)
!1177 = !DILocation(line: 954, column: 25, scope: !1168)
!1178 = !DILocation(line: 954, column: 53, scope: !1168)
!1179 = !DILocation(line: 954, column: 57, scope: !1168)
!1180 = !DILocalVariable(name: "header_buf", scope: !1168, file: !3, line: 955, type: !963)
!1181 = !DILocation(line: 955, column: 10, scope: !1168)
!1182 = !DILocalVariable(name: "header_buf_size", scope: !1168, file: !3, line: 956, type: !84)
!1183 = !DILocation(line: 956, column: 12, scope: !1168)
!1184 = !DILocalVariable(name: "headers", scope: !1168, file: !3, line: 957, type: !1185)
!1185 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 256, elements: !182)
!1186 = !DILocation(line: 957, column: 22, scope: !1168)
!1187 = !DILocation(line: 959, column: 33, scope: !1168)
!1188 = !DILocation(line: 959, column: 5, scope: !1168)
!1189 = !DILocation(line: 959, column: 14, scope: !1168)
!1190 = !DILocation(line: 959, column: 23, scope: !1168)
!1191 = !DILocation(line: 959, column: 31, scope: !1168)
!1192 = !DILocation(line: 960, column: 47, scope: !1168)
!1193 = !DILocation(line: 960, column: 51, scope: !1168)
!1194 = !DILocation(line: 960, column: 40, scope: !1168)
!1195 = !DILocation(line: 960, column: 5, scope: !1168)
!1196 = !DILocation(line: 960, column: 14, scope: !1168)
!1197 = !DILocation(line: 960, column: 23, scope: !1168)
!1198 = !DILocation(line: 960, column: 38, scope: !1168)
!1199 = !DILocation(line: 962, column: 5, scope: !1168)
!1200 = !DILocation(line: 962, column: 5, scope: !1201)
!1201 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 962, column: 5)
!1202 = !DILocation(line: 963, column: 5, scope: !1168)
!1203 = !DILocation(line: 963, column: 5, scope: !1204)
!1204 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 963, column: 5)
!1205 = !DILocation(line: 965, column: 52, scope: !1168)
!1206 = !DILocation(line: 966, column: 41, scope: !1168)
!1207 = !DILocation(line: 965, column: 23, scope: !1168)
!1208 = !DILocation(line: 965, column: 21, scope: !1168)
!1209 = !DILocation(line: 967, column: 9, scope: !1210)
!1210 = distinct !DILexicalBlock(scope: !1168, file: !3, line: 967, column: 9)
!1211 = !DILocation(line: 967, column: 9, scope: !1168)
!1212 = !DILocation(line: 968, column: 9, scope: !1210)
!1213 = !DILocalVariable(name: "response_vec", scope: !1168, file: !3, line: 970, type: !1214)
!1214 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1215, size: 256, elements: !182)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !1216, line: 26, size: 128, elements: !1217)
!1216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !1215, file: !1216, line: 28, baseType: !20, size: 64)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !1215, file: !1216, line: 29, baseType: !84, size: 64, offset: 64)
!1220 = !DILocation(line: 970, column: 18, scope: !1168)
!1221 = !DILocation(line: 970, column: 35, scope: !1168)
!1222 = !DILocation(line: 971, column: 9, scope: !1168)
!1223 = !DILocation(line: 971, column: 23, scope: !1168)
!1224 = !DILocation(line: 971, column: 46, scope: !1168)
!1225 = !DILocation(line: 972, column: 9, scope: !1168)
!1226 = !DILocation(line: 972, column: 23, scope: !1168)
!1227 = !DILocation(line: 972, column: 27, scope: !1168)
!1228 = !DILocation(line: 972, column: 48, scope: !1168)
!1229 = !DILocation(line: 972, column: 57, scope: !1168)
!1230 = !DILocation(line: 972, column: 66, scope: !1168)
!1231 = !DILocation(line: 975, column: 17, scope: !1168)
!1232 = !DILocation(line: 975, column: 26, scope: !1168)
!1233 = !DILocation(line: 975, column: 5, scope: !1168)
!1234 = !DILocation(line: 977, column: 5, scope: !1168)
!1235 = !DILocation(line: 978, column: 1, scope: !1168)
!1236 = distinct !DISubprogram(name: "redir_init", scope: !3, file: !3, line: 439, type: !356, scopeLine: 443, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1237 = !DILocalVariable(name: "ce", arg: 1, scope: !1236, file: !3, line: 439, type: !333)
!1238 = !DILocation(line: 439, column: 32, scope: !1236)
!1239 = !DILocalVariable(name: "priv", arg: 2, scope: !1236, file: !3, line: 440, type: !358)
!1240 = !DILocation(line: 440, column: 33, scope: !1236)
!1241 = !DILocalVariable(name: "full_path", arg: 3, scope: !1236, file: !3, line: 441, type: !13)
!1242 = !DILocation(line: 441, column: 25, scope: !1236)
!1243 = !DILocalVariable(name: "st", arg: 4, scope: !1236, file: !3, line: 442, type: !379)
!1244 = !DILocation(line: 442, column: 26, scope: !1236)
!1245 = !DILocalVariable(name: "rd", scope: !1236, file: !3, line: 444, type: !303)
!1246 = !DILocation(line: 444, column: 25, scope: !1236)
!1247 = !DILocation(line: 444, column: 53, scope: !1236)
!1248 = !DILocation(line: 444, column: 56, scope: !1236)
!1249 = !DILocation(line: 446, column: 19, scope: !1250)
!1250 = distinct !DILexicalBlock(scope: !1236, file: !3, line: 446, column: 9)
!1251 = !DILocation(line: 446, column: 23, scope: !1250)
!1252 = !DILocation(line: 446, column: 40, scope: !1250)
!1253 = !DILocation(line: 446, column: 52, scope: !1250)
!1254 = !DILocation(line: 446, column: 58, scope: !1250)
!1255 = !DILocation(line: 446, column: 63, scope: !1250)
!1256 = !DILocation(line: 446, column: 50, scope: !1250)
!1257 = !DILocation(line: 446, column: 9, scope: !1250)
!1258 = !DILocation(line: 446, column: 73, scope: !1250)
!1259 = !DILocation(line: 446, column: 9, scope: !1236)
!1260 = !DILocation(line: 447, column: 9, scope: !1250)
!1261 = !DILocation(line: 449, column: 5, scope: !1236)
!1262 = !DILocation(line: 449, column: 9, scope: !1236)
!1263 = !DILocation(line: 449, column: 19, scope: !1236)
!1264 = !DILocation(line: 450, column: 5, scope: !1236)
!1265 = !DILocation(line: 451, column: 1, scope: !1236)
!1266 = distinct !DISubprogram(name: "redir_free", scope: !3, file: !3, line: 588, type: !31, scopeLine: 589, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1267 = !DILocalVariable(name: "data", arg: 1, scope: !1266, file: !3, line: 588, type: !20)
!1268 = !DILocation(line: 588, column: 18, scope: !1266)
!1269 = !DILocalVariable(name: "rd", scope: !1266, file: !3, line: 590, type: !303)
!1270 = !DILocation(line: 590, column: 25, scope: !1266)
!1271 = !DILocation(line: 590, column: 30, scope: !1266)
!1272 = !DILocation(line: 592, column: 10, scope: !1266)
!1273 = !DILocation(line: 592, column: 14, scope: !1266)
!1274 = !DILocation(line: 592, column: 5, scope: !1266)
!1275 = !DILocation(line: 593, column: 1, scope: !1266)
!1276 = distinct !DISubprogram(name: "dirlist_serve", scope: !3, file: !3, line: 941, type: !242, scopeLine: 942, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1277 = !DILocalVariable(name: "request", arg: 1, scope: !1276, file: !3, line: 941, type: !57)
!1278 = !DILocation(line: 941, column: 31, scope: !1276)
!1279 = !DILocalVariable(name: "data", arg: 2, scope: !1276, file: !3, line: 941, type: !20)
!1280 = !DILocation(line: 941, column: 46, scope: !1276)
!1281 = !DILocalVariable(name: "fce", scope: !1276, file: !3, line: 943, type: !333)
!1282 = !DILocation(line: 943, column: 25, scope: !1276)
!1283 = !DILocation(line: 943, column: 31, scope: !1276)
!1284 = !DILocalVariable(name: "dd", scope: !1276, file: !3, line: 944, type: !308)
!1285 = !DILocation(line: 944, column: 28, scope: !1276)
!1286 = !DILocation(line: 944, column: 59, scope: !1276)
!1287 = !DILocation(line: 944, column: 63, scope: !1276)
!1288 = !DILocation(line: 946, column: 36, scope: !1276)
!1289 = !DILocation(line: 946, column: 45, scope: !1276)
!1290 = !DILocation(line: 946, column: 50, scope: !1276)
!1291 = !DILocation(line: 947, column: 13, scope: !1276)
!1292 = !DILocation(line: 947, column: 46, scope: !1276)
!1293 = !DILocation(line: 946, column: 12, scope: !1276)
!1294 = !DILocation(line: 946, column: 5, scope: !1276)
!1295 = distinct !DISubprogram(name: "dirlist_init", scope: !3, file: !3, line: 421, type: !356, scopeLine: 425, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1296 = !DILocalVariable(name: "ce", arg: 1, scope: !1295, file: !3, line: 421, type: !333)
!1297 = !DILocation(line: 421, column: 34, scope: !1295)
!1298 = !DILocalVariable(name: "priv", arg: 2, scope: !1295, file: !3, line: 422, type: !358)
!1299 = !DILocation(line: 422, column: 36, scope: !1295)
!1300 = !DILocalVariable(name: "full_path", arg: 3, scope: !1295, file: !3, line: 423, type: !13)
!1301 = !DILocation(line: 423, column: 28, scope: !1295)
!1302 = !DILocalVariable(name: "st", arg: 4, scope: !1295, file: !3, line: 424, type: !379)
!1303 = !DILocation(line: 424, column: 29, scope: !1295)
!1304 = !DILocalVariable(name: "dd", scope: !1295, file: !3, line: 426, type: !308)
!1305 = !DILocation(line: 426, column: 28, scope: !1295)
!1306 = !DILocation(line: 426, column: 59, scope: !1295)
!1307 = !DILocation(line: 426, column: 62, scope: !1295)
!1308 = !DILocalVariable(name: "vars", scope: !1295, file: !3, line: 427, type: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "file_list_t", file: !3, line: 126, size: 576, elements: !1310)
!1310 = !{!1311, !1312, !1313}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "full_path", scope: !1309, file: !3, line: 127, baseType: !13, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "rel_path", scope: !1309, file: !3, line: 128, baseType: !13, size: 64, offset: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "file_list", scope: !1309, file: !3, line: 139, baseType: !1314, size: 448, offset: 128)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1309, file: !3, line: 129, size: 448, elements: !1315)
!1315 = !{!1316, !1317, !1318, !1319, !1320, !1321, !1322}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "generator", scope: !1314, file: !3, line: 130, baseType: !563, size: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "icon", scope: !1314, file: !3, line: 132, baseType: !13, size: 64, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "icon_alt", scope: !1314, file: !3, line: 133, baseType: !13, size: 64, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1314, file: !3, line: 134, baseType: !13, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1314, file: !3, line: 135, baseType: !13, size: 64, offset: 256)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1314, file: !3, line: 137, baseType: !64, size: 32, offset: 320)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "unit", scope: !1314, file: !3, line: 138, baseType: !13, size: 64, offset: 384)
!1323 = !DILocation(line: 427, column: 24, scope: !1295)
!1324 = !DILocation(line: 427, column: 31, scope: !1295)
!1325 = !DILocation(line: 428, column: 22, scope: !1295)
!1326 = !DILocation(line: 429, column: 21, scope: !1295)
!1327 = !DILocation(line: 429, column: 33, scope: !1295)
!1328 = !DILocation(line: 429, column: 39, scope: !1295)
!1329 = !DILocation(line: 429, column: 44, scope: !1295)
!1330 = !DILocation(line: 429, column: 31, scope: !1295)
!1331 = !DILocation(line: 432, column: 35, scope: !1295)
!1332 = !DILocation(line: 432, column: 41, scope: !1295)
!1333 = !DILocation(line: 432, column: 20, scope: !1295)
!1334 = !DILocation(line: 432, column: 5, scope: !1295)
!1335 = !DILocation(line: 432, column: 9, scope: !1295)
!1336 = !DILocation(line: 432, column: 18, scope: !1295)
!1337 = !DILocation(line: 433, column: 5, scope: !1295)
!1338 = !DILocation(line: 433, column: 9, scope: !1295)
!1339 = !DILocation(line: 433, column: 19, scope: !1295)
!1340 = !DILocation(line: 435, column: 14, scope: !1295)
!1341 = !DILocation(line: 435, column: 18, scope: !1295)
!1342 = !DILocation(line: 435, column: 13, scope: !1295)
!1343 = !DILocation(line: 435, column: 12, scope: !1295)
!1344 = !DILocation(line: 435, column: 5, scope: !1295)
!1345 = distinct !DISubprogram(name: "dirlist_free", scope: !3, file: !3, line: 580, type: !31, scopeLine: 581, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1346 = !DILocalVariable(name: "data", arg: 1, scope: !1345, file: !3, line: 580, type: !20)
!1347 = !DILocation(line: 580, column: 20, scope: !1345)
!1348 = !DILocalVariable(name: "dd", scope: !1345, file: !3, line: 582, type: !308)
!1349 = !DILocation(line: 582, column: 28, scope: !1345)
!1350 = !DILocation(line: 582, column: 33, scope: !1345)
!1351 = !DILocation(line: 584, column: 17, scope: !1345)
!1352 = !DILocation(line: 584, column: 21, scope: !1345)
!1353 = !DILocation(line: 584, column: 5, scope: !1345)
!1354 = !DILocation(line: 585, column: 1, scope: !1345)
!1355 = distinct !DISubprogram(name: "serve_contents_and_size", scope: !3, file: !3, line: 888, type: !1356, scopeLine: 890, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!37, !57, !333, !13, !20, !84}
!1358 = !DILocalVariable(name: "request", arg: 1, scope: !1355, file: !3, line: 888, type: !57)
!1359 = !DILocation(line: 888, column: 41, scope: !1355)
!1360 = !DILocalVariable(name: "fce", arg: 2, scope: !1355, file: !3, line: 888, type: !333)
!1361 = !DILocation(line: 888, column: 70, scope: !1355)
!1362 = !DILocalVariable(name: "compression_type", arg: 3, scope: !1355, file: !3, line: 889, type: !13)
!1363 = !DILocation(line: 889, column: 25, scope: !1355)
!1364 = !DILocalVariable(name: "contents", arg: 4, scope: !1355, file: !3, line: 889, type: !20)
!1365 = !DILocation(line: 889, column: 49, scope: !1355)
!1366 = !DILocalVariable(name: "size", arg: 5, scope: !1355, file: !3, line: 889, type: !84)
!1367 = !DILocation(line: 889, column: 66, scope: !1355)
!1368 = !DILocalVariable(name: "headers", scope: !1355, file: !3, line: 891, type: !963)
!1369 = !DILocation(line: 891, column: 10, scope: !1355)
!1370 = !DILocalVariable(name: "header_len", scope: !1355, file: !3, line: 892, type: !84)
!1371 = !DILocation(line: 892, column: 12, scope: !1355)
!1372 = !DILocalVariable(name: "return_status", scope: !1355, file: !3, line: 893, type: !37)
!1373 = !DILocation(line: 893, column: 24, scope: !1355)
!1374 = !DILocation(line: 895, column: 34, scope: !1375)
!1375 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 895, column: 9)
!1376 = !DILocation(line: 895, column: 43, scope: !1375)
!1377 = !DILocation(line: 895, column: 48, scope: !1375)
!1378 = !DILocation(line: 895, column: 62, scope: !1375)
!1379 = !DILocalVariable(name: "request", arg: 1, scope: !1380, file: !3, line: 735, type: !57)
!1380 = distinct !DISubprogram(name: "client_has_fresh_content", scope: !3, file: !3, line: 735, type: !1381, scopeLine: 736, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1381 = !DISubroutineType(types: !1382)
!1382 = !{!160, !57, !174}
!1383 = !DILocation(line: 735, column: 42, scope: !1380, inlinedAt: !1384)
!1384 = distinct !DILocation(line: 895, column: 9, scope: !1375)
!1385 = !DILocalVariable(name: "mtime", arg: 2, scope: !1380, file: !3, line: 735, type: !174)
!1386 = !DILocation(line: 735, column: 58, scope: !1380, inlinedAt: !1384)
!1387 = !DILocation(line: 737, column: 12, scope: !1380, inlinedAt: !1384)
!1388 = !DILocation(line: 737, column: 21, scope: !1380, inlinedAt: !1384)
!1389 = !DILocation(line: 737, column: 28, scope: !1380, inlinedAt: !1384)
!1390 = !DILocation(line: 737, column: 46, scope: !1380, inlinedAt: !1384)
!1391 = !DILocation(line: 737, column: 49, scope: !1380, inlinedAt: !1384)
!1392 = !DILocation(line: 737, column: 58, scope: !1380, inlinedAt: !1384)
!1393 = !DILocation(line: 737, column: 67, scope: !1380, inlinedAt: !1384)
!1394 = !DILocation(line: 737, column: 74, scope: !1380, inlinedAt: !1384)
!1395 = !DILocation(line: 737, column: 55, scope: !1380, inlinedAt: !1384)
!1396 = !DILocation(line: 0, scope: !1380, inlinedAt: !1384)
!1397 = !DILocation(line: 895, column: 9, scope: !1355)
!1398 = !DILocation(line: 896, column: 23, scope: !1375)
!1399 = !DILocation(line: 896, column: 9, scope: !1375)
!1400 = !DILocation(line: 898, column: 34, scope: !1355)
!1401 = !DILocation(line: 898, column: 43, scope: !1355)
!1402 = !DILocation(line: 899, column: 35, scope: !1355)
!1403 = !DILocation(line: 899, column: 40, scope: !1355)
!1404 = !DILocation(line: 899, column: 46, scope: !1355)
!1405 = !DILocation(line: 900, column: 35, scope: !1355)
!1406 = !DILocation(line: 898, column: 18, scope: !1355)
!1407 = !DILocation(line: 898, column: 16, scope: !1355)
!1408 = !DILocation(line: 901, column: 9, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 901, column: 9)
!1410 = !DILocation(line: 901, column: 9, scope: !1355)
!1411 = !DILocation(line: 902, column: 9, scope: !1409)
!1412 = !DILocation(line: 904, column: 9, scope: !1413)
!1413 = distinct !DILexicalBlock(scope: !1355, file: !3, line: 904, column: 9)
!1414 = !DILocation(line: 904, column: 18, scope: !1413)
!1415 = !DILocation(line: 904, column: 24, scope: !1413)
!1416 = !DILocation(line: 904, column: 46, scope: !1413)
!1417 = !DILocation(line: 904, column: 49, scope: !1413)
!1418 = !DILocation(line: 904, column: 63, scope: !1413)
!1419 = !DILocation(line: 904, column: 9, scope: !1355)
!1420 = !DILocation(line: 905, column: 20, scope: !1421)
!1421 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 904, column: 85)
!1422 = !DILocation(line: 905, column: 29, scope: !1421)
!1423 = !DILocation(line: 905, column: 38, scope: !1421)
!1424 = !DILocation(line: 905, column: 9, scope: !1421)
!1425 = !DILocation(line: 906, column: 5, scope: !1421)
!1426 = !DILocalVariable(name: "response_vec", scope: !1427, file: !3, line: 907, type: !1214)
!1427 = distinct !DILexicalBlock(scope: !1413, file: !3, line: 906, column: 12)
!1428 = !DILocation(line: 907, column: 22, scope: !1427)
!1429 = !DILocation(line: 907, column: 39, scope: !1427)
!1430 = !DILocation(line: 908, column: 13, scope: !1427)
!1431 = !DILocation(line: 908, column: 27, scope: !1427)
!1432 = !DILocation(line: 908, column: 47, scope: !1427)
!1433 = !DILocation(line: 909, column: 13, scope: !1427)
!1434 = !DILocation(line: 909, column: 27, scope: !1427)
!1435 = !DILocation(line: 909, column: 48, scope: !1427)
!1436 = !DILocation(line: 912, column: 21, scope: !1427)
!1437 = !DILocation(line: 912, column: 30, scope: !1427)
!1438 = !DILocation(line: 912, column: 9, scope: !1427)
!1439 = !DILocation(line: 915, column: 12, scope: !1355)
!1440 = !DILocation(line: 915, column: 5, scope: !1355)
!1441 = !DILocation(line: 916, column: 1, scope: !1355)
!1442 = distinct !DISubprogram(name: "prepare_headers", scope: !3, file: !3, line: 741, type: !1443, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!84, !57, !37, !333, !84, !13, !82, !84}
!1445 = !DILocalVariable(name: "request", arg: 1, scope: !1442, file: !3, line: 741, type: !57)
!1446 = !DILocation(line: 741, column: 33, scope: !1442)
!1447 = !DILocalVariable(name: "return_status", arg: 2, scope: !1442, file: !3, line: 742, type: !37)
!1448 = !DILocation(line: 742, column: 37, scope: !1442)
!1449 = !DILocalVariable(name: "fce", arg: 3, scope: !1442, file: !3, line: 743, type: !333)
!1450 = !DILocation(line: 743, column: 38, scope: !1442)
!1451 = !DILocalVariable(name: "size", arg: 4, scope: !1442, file: !3, line: 744, type: !84)
!1452 = !DILocation(line: 744, column: 25, scope: !1442)
!1453 = !DILocalVariable(name: "compression_type", arg: 5, scope: !1442, file: !3, line: 745, type: !13)
!1454 = !DILocation(line: 745, column: 30, scope: !1442)
!1455 = !DILocalVariable(name: "header_buf", arg: 6, scope: !1442, file: !3, line: 746, type: !82)
!1456 = !DILocation(line: 746, column: 24, scope: !1442)
!1457 = !DILocalVariable(name: "header_buf_size", arg: 7, scope: !1442, file: !3, line: 747, type: !84)
!1458 = !DILocation(line: 747, column: 25, scope: !1442)
!1459 = !DILocalVariable(name: "headers", scope: !1442, file: !3, line: 749, type: !1460)
!1460 = !DICompositeType(tag: DW_TAG_array_type, baseType: !194, size: 384, elements: !413)
!1461 = !DILocation(line: 749, column: 22, scope: !1442)
!1462 = !DILocation(line: 751, column: 33, scope: !1442)
!1463 = !DILocation(line: 751, column: 5, scope: !1442)
!1464 = !DILocation(line: 751, column: 14, scope: !1442)
!1465 = !DILocation(line: 751, column: 23, scope: !1442)
!1466 = !DILocation(line: 751, column: 31, scope: !1442)
!1467 = !DILocation(line: 752, column: 40, scope: !1442)
!1468 = !DILocation(line: 752, column: 5, scope: !1442)
!1469 = !DILocation(line: 752, column: 14, scope: !1442)
!1470 = !DILocation(line: 752, column: 23, scope: !1442)
!1471 = !DILocation(line: 752, column: 38, scope: !1442)
!1472 = !DILocation(line: 754, column: 5, scope: !1442)
!1473 = !DILocation(line: 754, column: 5, scope: !1474)
!1474 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 754, column: 5)
!1475 = !DILocation(line: 756, column: 9, scope: !1476)
!1476 = distinct !DILexicalBlock(scope: !1442, file: !3, line: 756, column: 9)
!1477 = !DILocation(line: 756, column: 9, scope: !1442)
!1478 = !DILocation(line: 757, column: 9, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 756, column: 27)
!1480 = !DILocation(line: 757, column: 9, scope: !1481)
!1481 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 757, column: 9)
!1482 = !DILocation(line: 758, column: 9, scope: !1479)
!1483 = !DILocation(line: 758, column: 9, scope: !1484)
!1484 = distinct !DILexicalBlock(scope: !1479, file: !3, line: 758, column: 9)
!1485 = !DILocation(line: 759, column: 5, scope: !1479)
!1486 = !DILocation(line: 760, column: 9, scope: !1487)
!1487 = distinct !DILexicalBlock(scope: !1476, file: !3, line: 759, column: 12)
!1488 = !DILocation(line: 760, column: 9, scope: !1489)
!1489 = distinct !DILexicalBlock(scope: !1487, file: !3, line: 760, column: 9)
!1490 = !DILocation(line: 763, column: 41, scope: !1442)
!1491 = !DILocation(line: 763, column: 50, scope: !1442)
!1492 = !DILocation(line: 764, column: 37, scope: !1442)
!1493 = !DILocation(line: 764, column: 49, scope: !1442)
!1494 = !DILocation(line: 763, column: 12, scope: !1442)
!1495 = !DILocation(line: 763, column: 5, scope: !1442)
!1496 = distinct !DISubprogram(name: "mmap_serve", scope: !3, file: !3, line: 919, type: !242, scopeLine: 920, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1497 = !DILocalVariable(name: "request", arg: 1, scope: !1496, file: !3, line: 919, type: !57)
!1498 = !DILocation(line: 919, column: 28, scope: !1496)
!1499 = !DILocalVariable(name: "data", arg: 2, scope: !1496, file: !3, line: 919, type: !20)
!1500 = !DILocation(line: 919, column: 43, scope: !1496)
!1501 = !DILocalVariable(name: "fce", scope: !1496, file: !3, line: 921, type: !333)
!1502 = !DILocation(line: 921, column: 25, scope: !1496)
!1503 = !DILocation(line: 921, column: 31, scope: !1496)
!1504 = !DILocalVariable(name: "md", scope: !1496, file: !3, line: 922, type: !313)
!1505 = !DILocation(line: 922, column: 24, scope: !1496)
!1506 = !DILocation(line: 922, column: 51, scope: !1496)
!1507 = !DILocation(line: 922, column: 55, scope: !1496)
!1508 = !DILocalVariable(name: "contents", scope: !1496, file: !3, line: 923, type: !20)
!1509 = !DILocation(line: 923, column: 11, scope: !1496)
!1510 = !DILocalVariable(name: "size", scope: !1496, file: !3, line: 924, type: !84)
!1511 = !DILocation(line: 924, column: 12, scope: !1496)
!1512 = !DILocalVariable(name: "compressed", scope: !1496, file: !3, line: 925, type: !13)
!1513 = !DILocation(line: 925, column: 17, scope: !1496)
!1514 = !DILocation(line: 927, column: 9, scope: !1515)
!1515 = distinct !DILexicalBlock(scope: !1496, file: !3, line: 927, column: 9)
!1516 = !DILocation(line: 927, column: 13, scope: !1515)
!1517 = !DILocation(line: 927, column: 24, scope: !1515)
!1518 = !DILocation(line: 927, column: 29, scope: !1515)
!1519 = !DILocation(line: 927, column: 33, scope: !1515)
!1520 = !DILocation(line: 927, column: 42, scope: !1515)
!1521 = !DILocation(line: 927, column: 48, scope: !1515)
!1522 = !DILocation(line: 927, column: 9, scope: !1496)
!1523 = !DILocation(line: 928, column: 20, scope: !1524)
!1524 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 927, column: 75)
!1525 = !DILocation(line: 928, column: 24, scope: !1524)
!1526 = !DILocation(line: 928, column: 35, scope: !1524)
!1527 = !DILocation(line: 928, column: 18, scope: !1524)
!1528 = !DILocation(line: 929, column: 16, scope: !1524)
!1529 = !DILocation(line: 929, column: 20, scope: !1524)
!1530 = !DILocation(line: 929, column: 31, scope: !1524)
!1531 = !DILocation(line: 929, column: 14, scope: !1524)
!1532 = !DILocation(line: 930, column: 22, scope: !1524)
!1533 = !DILocation(line: 930, column: 20, scope: !1524)
!1534 = !DILocation(line: 931, column: 5, scope: !1524)
!1535 = !DILocation(line: 932, column: 20, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1515, file: !3, line: 931, column: 12)
!1537 = !DILocation(line: 932, column: 24, scope: !1536)
!1538 = !DILocation(line: 932, column: 37, scope: !1536)
!1539 = !DILocation(line: 932, column: 18, scope: !1536)
!1540 = !DILocation(line: 933, column: 16, scope: !1536)
!1541 = !DILocation(line: 933, column: 20, scope: !1536)
!1542 = !DILocation(line: 933, column: 33, scope: !1536)
!1543 = !DILocation(line: 933, column: 14, scope: !1536)
!1544 = !DILocation(line: 934, column: 22, scope: !1536)
!1545 = !DILocation(line: 934, column: 20, scope: !1536)
!1546 = !DILocation(line: 937, column: 36, scope: !1496)
!1547 = !DILocation(line: 937, column: 45, scope: !1496)
!1548 = !DILocation(line: 937, column: 50, scope: !1496)
!1549 = !DILocation(line: 937, column: 62, scope: !1496)
!1550 = !DILocation(line: 937, column: 72, scope: !1496)
!1551 = !DILocation(line: 937, column: 12, scope: !1496)
!1552 = !DILocation(line: 937, column: 5, scope: !1496)
!1553 = distinct !DISubprogram(name: "mmap_init", scope: !3, file: !3, line: 338, type: !356, scopeLine: 342, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1554 = !DILocalVariable(name: "ce", arg: 1, scope: !1553, file: !3, line: 338, type: !333)
!1555 = !DILocation(line: 338, column: 31, scope: !1553)
!1556 = !DILocalVariable(name: "priv", arg: 2, scope: !1553, file: !3, line: 339, type: !358)
!1557 = !DILocation(line: 339, column: 32, scope: !1553)
!1558 = !DILocalVariable(name: "full_path", arg: 3, scope: !1553, file: !3, line: 340, type: !13)
!1559 = !DILocation(line: 340, column: 24, scope: !1553)
!1560 = !DILocalVariable(name: "st", arg: 4, scope: !1553, file: !3, line: 341, type: !379)
!1561 = !DILocation(line: 341, column: 25, scope: !1553)
!1562 = !DILocalVariable(name: "md", scope: !1553, file: !3, line: 343, type: !313)
!1563 = !DILocation(line: 343, column: 24, scope: !1553)
!1564 = !DILocation(line: 343, column: 51, scope: !1553)
!1565 = !DILocation(line: 343, column: 54, scope: !1553)
!1566 = !DILocalVariable(name: "file_fd", scope: !1553, file: !3, line: 344, type: !64)
!1567 = !DILocation(line: 344, column: 9, scope: !1553)
!1568 = !DILocalVariable(name: "success", scope: !1553, file: !3, line: 345, type: !160)
!1569 = !DILocation(line: 345, column: 10, scope: !1553)
!1570 = !DILocation(line: 347, column: 22, scope: !1553)
!1571 = !DILocation(line: 347, column: 28, scope: !1553)
!1572 = !DILocation(line: 347, column: 33, scope: !1553)
!1573 = !DILocation(line: 347, column: 37, scope: !1553)
!1574 = !DILocation(line: 347, column: 49, scope: !1553)
!1575 = !DILocation(line: 347, column: 55, scope: !1553)
!1576 = !DILocation(line: 347, column: 60, scope: !1553)
!1577 = !DILocation(line: 347, column: 47, scope: !1553)
!1578 = !DILocation(line: 347, column: 69, scope: !1553)
!1579 = !DILocation(line: 348, column: 17, scope: !1553)
!1580 = !DILocation(line: 348, column: 23, scope: !1553)
!1581 = !DILocation(line: 347, column: 15, scope: !1553)
!1582 = !DILocation(line: 347, column: 13, scope: !1553)
!1583 = !DILocation(line: 349, column: 9, scope: !1584)
!1584 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 349, column: 9)
!1585 = !DILocation(line: 349, column: 9, scope: !1553)
!1586 = !DILocation(line: 350, column: 9, scope: !1584)
!1587 = !DILocation(line: 352, column: 52, scope: !1553)
!1588 = !DILocation(line: 352, column: 56, scope: !1553)
!1589 = !DILocation(line: 353, column: 50, scope: !1553)
!1590 = !DILocation(line: 352, column: 33, scope: !1553)
!1591 = !DILocation(line: 352, column: 5, scope: !1553)
!1592 = !DILocation(line: 352, column: 9, scope: !1553)
!1593 = !DILocation(line: 352, column: 22, scope: !1553)
!1594 = !DILocation(line: 352, column: 31, scope: !1553)
!1595 = !DILocation(line: 354, column: 9, scope: !1596)
!1596 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 354, column: 9)
!1597 = !DILocation(line: 354, column: 9, scope: !1553)
!1598 = !DILocation(line: 355, column: 17, scope: !1599)
!1599 = distinct !DILexicalBlock(scope: !1596, file: !3, line: 354, column: 60)
!1600 = !DILocation(line: 356, column: 9, scope: !1599)
!1601 = !DILocation(line: 359, column: 9, scope: !1602)
!1602 = distinct !DILexicalBlock(scope: !1553, file: !3, line: 359, column: 9)
!1603 = !DILocation(line: 359, column: 9, scope: !1553)
!1604 = !DILocation(line: 361, column: 9, scope: !1602)
!1605 = !DILocation(line: 363, column: 37, scope: !1553)
!1606 = !DILocation(line: 363, column: 41, scope: !1553)
!1607 = !DILocation(line: 363, column: 5, scope: !1553)
!1608 = !DILocation(line: 363, column: 9, scope: !1553)
!1609 = !DILocation(line: 363, column: 22, scope: !1553)
!1610 = !DILocation(line: 363, column: 27, scope: !1553)
!1611 = !DILocation(line: 364, column: 27, scope: !1553)
!1612 = !DILocation(line: 364, column: 5, scope: !1553)
!1613 = !DILocation(line: 367, column: 17, scope: !1553)
!1614 = !DILocation(line: 367, column: 29, scope: !1553)
!1615 = !DILocation(line: 367, column: 35, scope: !1553)
!1616 = !DILocation(line: 367, column: 40, scope: !1553)
!1617 = !DILocation(line: 367, column: 27, scope: !1553)
!1618 = !DILocation(line: 366, column: 21, scope: !1553)
!1619 = !DILocation(line: 366, column: 5, scope: !1553)
!1620 = !DILocation(line: 366, column: 9, scope: !1553)
!1621 = !DILocation(line: 366, column: 19, scope: !1553)
!1622 = !DILocation(line: 369, column: 13, scope: !1553)
!1623 = !DILocation(line: 369, column: 5, scope: !1553)
!1624 = !DILabel(scope: !1553, name: "close_file", file: !3, line: 371)
!1625 = !DILocation(line: 371, column: 1, scope: !1553)
!1626 = !DILocation(line: 372, column: 11, scope: !1553)
!1627 = !DILocation(line: 372, column: 5, scope: !1553)
!1628 = !DILocation(line: 374, column: 12, scope: !1553)
!1629 = !DILocation(line: 374, column: 5, scope: !1553)
!1630 = !DILocation(line: 375, column: 1, scope: !1553)
!1631 = distinct !DISubprogram(name: "mmap_free", scope: !3, file: !3, line: 562, type: !31, scopeLine: 563, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1632 = !DILocalVariable(name: "data", arg: 1, scope: !1631, file: !3, line: 562, type: !20)
!1633 = !DILocation(line: 562, column: 17, scope: !1631)
!1634 = !DILocalVariable(name: "md", scope: !1631, file: !3, line: 564, type: !313)
!1635 = !DILocation(line: 564, column: 24, scope: !1631)
!1636 = !DILocation(line: 564, column: 29, scope: !1631)
!1637 = !DILocation(line: 566, column: 12, scope: !1631)
!1638 = !DILocation(line: 566, column: 16, scope: !1631)
!1639 = !DILocation(line: 566, column: 29, scope: !1631)
!1640 = !DILocation(line: 566, column: 39, scope: !1631)
!1641 = !DILocation(line: 566, column: 43, scope: !1631)
!1642 = !DILocation(line: 566, column: 56, scope: !1631)
!1643 = !DILocation(line: 566, column: 5, scope: !1631)
!1644 = !DILocation(line: 567, column: 10, scope: !1631)
!1645 = !DILocation(line: 567, column: 14, scope: !1631)
!1646 = !DILocation(line: 567, column: 25, scope: !1631)
!1647 = !DILocation(line: 567, column: 5, scope: !1631)
!1648 = !DILocation(line: 568, column: 1, scope: !1631)
!1649 = distinct !DISubprogram(name: "compress_cached_entry", scope: !3, file: !3, line: 316, type: !1650, scopeLine: 317, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{null, !313}
!1652 = !DILocalVariable(name: "md", arg: 1, scope: !1649, file: !3, line: 316, type: !313)
!1653 = !DILocation(line: 316, column: 42, scope: !1649)
!1654 = !DILocation(line: 318, column: 41, scope: !1649)
!1655 = !DILocation(line: 318, column: 45, scope: !1649)
!1656 = !DILocation(line: 318, column: 58, scope: !1649)
!1657 = !DILocation(line: 318, column: 27, scope: !1649)
!1658 = !DILocation(line: 318, column: 5, scope: !1649)
!1659 = !DILocation(line: 318, column: 9, scope: !1649)
!1660 = !DILocation(line: 318, column: 20, scope: !1649)
!1661 = !DILocation(line: 318, column: 25, scope: !1649)
!1662 = !DILocation(line: 320, column: 9, scope: !1663)
!1663 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 320, column: 9)
!1664 = !DILocation(line: 320, column: 9, scope: !1649)
!1665 = !DILocation(line: 321, column: 9, scope: !1663)
!1666 = !DILocation(line: 323, column: 9, scope: !1667)
!1667 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 323, column: 9)
!1668 = !DILocation(line: 323, column: 9, scope: !1649)
!1669 = !DILocation(line: 325, column: 9, scope: !1667)
!1670 = !DILocation(line: 327, column: 31, scope: !1671)
!1671 = distinct !DILexicalBlock(scope: !1649, file: !3, line: 327, column: 9)
!1672 = !DILocation(line: 327, column: 35, scope: !1671)
!1673 = !DILocation(line: 327, column: 46, scope: !1671)
!1674 = !DILocation(line: 327, column: 52, scope: !1671)
!1675 = !DILocation(line: 327, column: 56, scope: !1671)
!1676 = !DILocation(line: 327, column: 69, scope: !1671)
!1677 = !DILocalVariable(name: "compressed_sz", arg: 1, scope: !515, file: !3, line: 308, type: !518)
!1678 = !DILocation(line: 308, column: 36, scope: !515, inlinedAt: !1679)
!1679 = distinct !DILocation(line: 327, column: 9, scope: !1671)
!1680 = !DILocalVariable(name: "uncompressed_sz", arg: 2, scope: !515, file: !3, line: 308, type: !518)
!1681 = !DILocation(line: 308, column: 64, scope: !515, inlinedAt: !1679)
!1682 = !DILocation(line: 312, column: 14, scope: !515, inlinedAt: !1679)
!1683 = !DILocation(line: 312, column: 28, scope: !515, inlinedAt: !1679)
!1684 = !DILocation(line: 312, column: 54, scope: !515, inlinedAt: !1679)
!1685 = !DILocation(line: 312, column: 52, scope: !515, inlinedAt: !1679)
!1686 = !DILocation(line: 327, column: 9, scope: !1649)
!1687 = !DILocation(line: 328, column: 9, scope: !1671)
!1688 = !DILocation(line: 327, column: 73, scope: !1671)
!1689 = !DILabel(scope: !1649, name: "error_free_compressed", file: !3, line: 330)
!1690 = !DILocation(line: 330, column: 1, scope: !1649)
!1691 = !DILocation(line: 331, column: 10, scope: !1649)
!1692 = !DILocation(line: 331, column: 14, scope: !1649)
!1693 = !DILocation(line: 331, column: 25, scope: !1649)
!1694 = !DILocation(line: 331, column: 5, scope: !1649)
!1695 = !DILocation(line: 332, column: 5, scope: !1649)
!1696 = !DILocation(line: 332, column: 9, scope: !1649)
!1697 = !DILocation(line: 332, column: 20, scope: !1649)
!1698 = !DILocation(line: 332, column: 29, scope: !1649)
!1699 = !DILabel(scope: !1649, name: "error_zero_out", file: !3, line: 333)
!1700 = !DILocation(line: 333, column: 1, scope: !1649)
!1701 = !DILocation(line: 334, column: 5, scope: !1649)
!1702 = !DILocation(line: 334, column: 9, scope: !1649)
!1703 = !DILocation(line: 334, column: 20, scope: !1649)
!1704 = !DILocation(line: 334, column: 25, scope: !1649)
!1705 = !DILocation(line: 335, column: 1, scope: !1649)
!1706 = distinct !DISubprogram(name: "sendfile_serve", scope: !3, file: !3, line: 818, type: !242, scopeLine: 819, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1707 = !DILocalVariable(name: "request", arg: 1, scope: !1706, file: !3, line: 818, type: !57)
!1708 = !DILocation(line: 818, column: 32, scope: !1706)
!1709 = !DILocalVariable(name: "data", arg: 2, scope: !1706, file: !3, line: 818, type: !20)
!1710 = !DILocation(line: 818, column: 47, scope: !1706)
!1711 = !DILocalVariable(name: "fce", scope: !1706, file: !3, line: 820, type: !333)
!1712 = !DILocation(line: 820, column: 25, scope: !1706)
!1713 = !DILocation(line: 820, column: 31, scope: !1706)
!1714 = !DILocalVariable(name: "sd", scope: !1706, file: !3, line: 821, type: !323)
!1715 = !DILocation(line: 821, column: 28, scope: !1706)
!1716 = !DILocation(line: 821, column: 59, scope: !1706)
!1717 = !DILocation(line: 821, column: 63, scope: !1706)
!1718 = !DILocalVariable(name: "headers", scope: !1706, file: !3, line: 822, type: !963)
!1719 = !DILocation(line: 822, column: 10, scope: !1706)
!1720 = !DILocalVariable(name: "header_len", scope: !1706, file: !3, line: 823, type: !84)
!1721 = !DILocation(line: 823, column: 12, scope: !1706)
!1722 = !DILocalVariable(name: "return_status", scope: !1706, file: !3, line: 824, type: !37)
!1723 = !DILocation(line: 824, column: 24, scope: !1706)
!1724 = !DILocalVariable(name: "from", scope: !1706, file: !3, line: 825, type: !209)
!1725 = !DILocation(line: 825, column: 11, scope: !1706)
!1726 = !DILocalVariable(name: "to", scope: !1706, file: !3, line: 825, type: !209)
!1727 = !DILocation(line: 825, column: 17, scope: !1706)
!1728 = !DILocalVariable(name: "compressed", scope: !1706, file: !3, line: 826, type: !13)
!1729 = !DILocation(line: 826, column: 17, scope: !1706)
!1730 = !DILocalVariable(name: "filename", scope: !1706, file: !3, line: 827, type: !82)
!1731 = !DILocation(line: 827, column: 11, scope: !1706)
!1732 = !DILocalVariable(name: "size", scope: !1706, file: !3, line: 828, type: !84)
!1733 = !DILocation(line: 828, column: 12, scope: !1706)
!1734 = !DILocation(line: 830, column: 9, scope: !1735)
!1735 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 830, column: 9)
!1736 = !DILocation(line: 830, column: 13, scope: !1735)
!1737 = !DILocation(line: 830, column: 24, scope: !1735)
!1738 = !DILocation(line: 830, column: 29, scope: !1735)
!1739 = !DILocation(line: 830, column: 33, scope: !1735)
!1740 = !DILocation(line: 830, column: 42, scope: !1735)
!1741 = !DILocation(line: 830, column: 48, scope: !1735)
!1742 = !DILocation(line: 830, column: 9, scope: !1706)
!1743 = !DILocation(line: 831, column: 14, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 830, column: 72)
!1745 = !DILocation(line: 832, column: 21, scope: !1744)
!1746 = !DILocation(line: 832, column: 25, scope: !1744)
!1747 = !DILocation(line: 832, column: 36, scope: !1744)
!1748 = !DILocation(line: 832, column: 12, scope: !1744)
!1749 = !DILocation(line: 834, column: 22, scope: !1744)
!1750 = !DILocation(line: 834, column: 20, scope: !1744)
!1751 = !DILocation(line: 835, column: 20, scope: !1744)
!1752 = !DILocation(line: 835, column: 24, scope: !1744)
!1753 = !DILocation(line: 835, column: 35, scope: !1744)
!1754 = !DILocation(line: 835, column: 18, scope: !1744)
!1755 = !DILocation(line: 836, column: 16, scope: !1744)
!1756 = !DILocation(line: 836, column: 20, scope: !1744)
!1757 = !DILocation(line: 836, column: 31, scope: !1744)
!1758 = !DILocation(line: 836, column: 14, scope: !1744)
!1759 = !DILocation(line: 838, column: 23, scope: !1744)
!1760 = !DILocation(line: 839, column: 5, scope: !1744)
!1761 = !DILocation(line: 840, column: 39, scope: !1762)
!1762 = distinct !DILexicalBlock(scope: !1735, file: !3, line: 839, column: 12)
!1763 = !DILocation(line: 840, column: 67, scope: !1762)
!1764 = !DILocation(line: 840, column: 71, scope: !1762)
!1765 = !DILocation(line: 840, column: 84, scope: !1762)
!1766 = !DILocalVariable(name: "request", arg: 1, scope: !1767, file: !3, line: 768, type: !57)
!1767 = distinct !DISubprogram(name: "compute_range", scope: !3, file: !3, line: 768, type: !1768, scopeLine: 769, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!37, !57, !1770, !1770, !209}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!1771 = !DILocation(line: 768, column: 31, scope: !1767, inlinedAt: !1772)
!1772 = distinct !DILocation(line: 840, column: 25, scope: !1762)
!1773 = !DILocalVariable(name: "from", arg: 2, scope: !1767, file: !3, line: 768, type: !1770)
!1774 = !DILocation(line: 768, column: 47, scope: !1767, inlinedAt: !1772)
!1775 = !DILocalVariable(name: "to", arg: 3, scope: !1767, file: !3, line: 768, type: !1770)
!1776 = !DILocation(line: 768, column: 60, scope: !1767, inlinedAt: !1772)
!1777 = !DILocalVariable(name: "size", arg: 4, scope: !1767, file: !3, line: 768, type: !209)
!1778 = !DILocation(line: 768, column: 70, scope: !1767, inlinedAt: !1772)
!1779 = !DILocalVariable(name: "f", scope: !1767, file: !3, line: 770, type: !209)
!1780 = !DILocation(line: 770, column: 11, scope: !1767, inlinedAt: !1772)
!1781 = !DILocalVariable(name: "t", scope: !1767, file: !3, line: 770, type: !209)
!1782 = !DILocation(line: 770, column: 14, scope: !1767, inlinedAt: !1772)
!1783 = !DILocation(line: 772, column: 9, scope: !1767, inlinedAt: !1772)
!1784 = !DILocation(line: 772, column: 18, scope: !1767, inlinedAt: !1772)
!1785 = !DILocation(line: 772, column: 25, scope: !1767, inlinedAt: !1772)
!1786 = !DILocation(line: 772, column: 31, scope: !1767, inlinedAt: !1772)
!1787 = !DILocation(line: 772, column: 7, scope: !1767, inlinedAt: !1772)
!1788 = !DILocation(line: 773, column: 9, scope: !1767, inlinedAt: !1772)
!1789 = !DILocation(line: 773, column: 18, scope: !1767, inlinedAt: !1772)
!1790 = !DILocation(line: 773, column: 25, scope: !1767, inlinedAt: !1772)
!1791 = !DILocation(line: 773, column: 31, scope: !1767, inlinedAt: !1772)
!1792 = !DILocation(line: 773, column: 7, scope: !1767, inlinedAt: !1772)
!1793 = !DILocation(line: 778, column: 9, scope: !1794, inlinedAt: !1772)
!1794 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 778, column: 9)
!1795 = !DILocation(line: 0, scope: !1794, inlinedAt: !1772)
!1796 = !DILocation(line: 778, column: 9, scope: !1767, inlinedAt: !1772)
!1797 = !DILocation(line: 779, column: 10, scope: !1798, inlinedAt: !1772)
!1798 = distinct !DILexicalBlock(scope: !1794, file: !3, line: 778, column: 35)
!1799 = !DILocation(line: 779, column: 15, scope: !1798, inlinedAt: !1772)
!1800 = !DILocation(line: 780, column: 15, scope: !1798, inlinedAt: !1772)
!1801 = !DILocation(line: 780, column: 10, scope: !1798, inlinedAt: !1772)
!1802 = !DILocation(line: 780, column: 13, scope: !1798, inlinedAt: !1772)
!1803 = !DILocation(line: 781, column: 9, scope: !1798, inlinedAt: !1772)
!1804 = !DILocation(line: 787, column: 9, scope: !1805, inlinedAt: !1772)
!1805 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 787, column: 9)
!1806 = !DILocation(line: 787, column: 9, scope: !1767, inlinedAt: !1772)
!1807 = !DILocation(line: 788, column: 9, scope: !1805, inlinedAt: !1772)
!1808 = !DILocation(line: 793, column: 9, scope: !1809, inlinedAt: !1772)
!1809 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 793, column: 9)
!1810 = !DILocation(line: 793, column: 9, scope: !1767, inlinedAt: !1772)
!1811 = !DILocation(line: 794, column: 9, scope: !1809, inlinedAt: !1772)
!1812 = !DILocation(line: 799, column: 9, scope: !1813, inlinedAt: !1772)
!1813 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 799, column: 9)
!1814 = !DILocation(line: 799, column: 11, scope: !1813, inlinedAt: !1772)
!1815 = !DILocation(line: 799, column: 9, scope: !1767, inlinedAt: !1772)
!1816 = !DILocation(line: 800, column: 13, scope: !1813, inlinedAt: !1772)
!1817 = !DILocation(line: 800, column: 20, scope: !1813, inlinedAt: !1772)
!1818 = !DILocation(line: 800, column: 18, scope: !1813, inlinedAt: !1772)
!1819 = !DILocation(line: 800, column: 11, scope: !1813, inlinedAt: !1772)
!1820 = !DILocation(line: 800, column: 9, scope: !1813, inlinedAt: !1772)
!1821 = !DILocation(line: 802, column: 14, scope: !1813, inlinedAt: !1772)
!1822 = !DILocation(line: 802, column: 11, scope: !1813, inlinedAt: !1772)
!1823 = !DILocation(line: 808, column: 9, scope: !1824, inlinedAt: !1772)
!1824 = distinct !DILexicalBlock(scope: !1767, file: !3, line: 808, column: 9)
!1825 = !DILocation(line: 808, column: 9, scope: !1767, inlinedAt: !1772)
!1826 = !DILocation(line: 809, column: 9, scope: !1824, inlinedAt: !1772)
!1827 = !DILocation(line: 811, column: 13, scope: !1767, inlinedAt: !1772)
!1828 = !DILocation(line: 811, column: 6, scope: !1767, inlinedAt: !1772)
!1829 = !DILocation(line: 811, column: 11, scope: !1767, inlinedAt: !1772)
!1830 = !DILocation(line: 812, column: 11, scope: !1767, inlinedAt: !1772)
!1831 = !DILocation(line: 812, column: 6, scope: !1767, inlinedAt: !1772)
!1832 = !DILocation(line: 812, column: 9, scope: !1767, inlinedAt: !1772)
!1833 = !DILocation(line: 814, column: 5, scope: !1767, inlinedAt: !1772)
!1834 = !DILocation(line: 815, column: 1, scope: !1767, inlinedAt: !1772)
!1835 = !DILocation(line: 840, column: 23, scope: !1762)
!1836 = !DILocation(line: 841, column: 13, scope: !1837)
!1837 = distinct !DILexicalBlock(scope: !1762, file: !3, line: 841, column: 13)
!1838 = !DILocation(line: 841, column: 13, scope: !1762)
!1839 = !DILocation(line: 842, column: 13, scope: !1837)
!1840 = !DILocation(line: 844, column: 22, scope: !1762)
!1841 = !DILocation(line: 844, column: 20, scope: !1762)
!1842 = !DILocation(line: 845, column: 20, scope: !1762)
!1843 = !DILocation(line: 845, column: 24, scope: !1762)
!1844 = !DILocation(line: 845, column: 37, scope: !1762)
!1845 = !DILocation(line: 845, column: 18, scope: !1762)
!1846 = !DILocation(line: 846, column: 16, scope: !1762)
!1847 = !DILocation(line: 846, column: 20, scope: !1762)
!1848 = !DILocation(line: 846, column: 33, scope: !1762)
!1849 = !DILocation(line: 846, column: 14, scope: !1762)
!1850 = !DILocation(line: 849, column: 34, scope: !1851)
!1851 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 849, column: 9)
!1852 = !DILocation(line: 849, column: 43, scope: !1851)
!1853 = !DILocation(line: 849, column: 48, scope: !1851)
!1854 = !DILocation(line: 849, column: 62, scope: !1851)
!1855 = !DILocation(line: 735, column: 42, scope: !1380, inlinedAt: !1856)
!1856 = distinct !DILocation(line: 849, column: 9, scope: !1851)
!1857 = !DILocation(line: 735, column: 58, scope: !1380, inlinedAt: !1856)
!1858 = !DILocation(line: 737, column: 12, scope: !1380, inlinedAt: !1856)
!1859 = !DILocation(line: 737, column: 21, scope: !1380, inlinedAt: !1856)
!1860 = !DILocation(line: 737, column: 28, scope: !1380, inlinedAt: !1856)
!1861 = !DILocation(line: 737, column: 46, scope: !1380, inlinedAt: !1856)
!1862 = !DILocation(line: 737, column: 49, scope: !1380, inlinedAt: !1856)
!1863 = !DILocation(line: 737, column: 58, scope: !1380, inlinedAt: !1856)
!1864 = !DILocation(line: 737, column: 67, scope: !1380, inlinedAt: !1856)
!1865 = !DILocation(line: 737, column: 74, scope: !1380, inlinedAt: !1856)
!1866 = !DILocation(line: 737, column: 55, scope: !1380, inlinedAt: !1856)
!1867 = !DILocation(line: 0, scope: !1380, inlinedAt: !1856)
!1868 = !DILocation(line: 849, column: 9, scope: !1706)
!1869 = !DILocation(line: 850, column: 23, scope: !1851)
!1870 = !DILocation(line: 850, column: 9, scope: !1851)
!1871 = !DILocation(line: 852, column: 34, scope: !1706)
!1872 = !DILocation(line: 852, column: 43, scope: !1706)
!1873 = !DILocation(line: 852, column: 58, scope: !1706)
!1874 = !DILocation(line: 852, column: 63, scope: !1706)
!1875 = !DILocation(line: 853, column: 17, scope: !1706)
!1876 = !DILocation(line: 853, column: 29, scope: !1706)
!1877 = !DILocation(line: 852, column: 18, scope: !1706)
!1878 = !DILocation(line: 852, column: 16, scope: !1706)
!1879 = !DILocation(line: 854, column: 9, scope: !1880)
!1880 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 854, column: 9)
!1881 = !DILocation(line: 854, column: 9, scope: !1706)
!1882 = !DILocation(line: 855, column: 9, scope: !1880)
!1883 = !DILocation(line: 857, column: 9, scope: !1884)
!1884 = distinct !DILexicalBlock(scope: !1706, file: !3, line: 857, column: 9)
!1885 = !DILocation(line: 857, column: 18, scope: !1884)
!1886 = !DILocation(line: 857, column: 24, scope: !1884)
!1887 = !DILocation(line: 857, column: 46, scope: !1884)
!1888 = !DILocation(line: 857, column: 49, scope: !1884)
!1889 = !DILocation(line: 857, column: 63, scope: !1884)
!1890 = !DILocation(line: 857, column: 9, scope: !1706)
!1891 = !DILocation(line: 858, column: 20, scope: !1892)
!1892 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 857, column: 85)
!1893 = !DILocation(line: 858, column: 29, scope: !1892)
!1894 = !DILocation(line: 858, column: 38, scope: !1892)
!1895 = !DILocation(line: 858, column: 9, scope: !1892)
!1896 = !DILocation(line: 859, column: 5, scope: !1892)
!1897 = !DILocalVariable(name: "priv", scope: !1898, file: !3, line: 860, type: !358)
!1898 = distinct !DILexicalBlock(scope: !1884, file: !3, line: 859, column: 12)
!1899 = !DILocation(line: 860, column: 29, scope: !1898)
!1900 = !DILocation(line: 860, column: 36, scope: !1898)
!1901 = !DILocation(line: 860, column: 45, scope: !1898)
!1902 = !DILocation(line: 860, column: 54, scope: !1898)
!1903 = !DILocation(line: 860, column: 61, scope: !1898)
!1904 = !DILocalVariable(name: "file_fd", scope: !1898, file: !3, line: 868, type: !64)
!1905 = !DILocation(line: 868, column: 13, scope: !1898)
!1906 = !DILocation(line: 868, column: 35, scope: !1898)
!1907 = !DILocation(line: 868, column: 44, scope: !1898)
!1908 = !DILocation(line: 868, column: 50, scope: !1898)
!1909 = !DILocation(line: 868, column: 55, scope: !1898)
!1910 = !DILocation(line: 868, column: 59, scope: !1898)
!1911 = !DILocation(line: 868, column: 69, scope: !1898)
!1912 = !DILocation(line: 868, column: 75, scope: !1898)
!1913 = !DILocation(line: 868, column: 23, scope: !1898)
!1914 = !DILocation(line: 869, column: 13, scope: !1915)
!1915 = distinct !DILexicalBlock(scope: !1898, file: !3, line: 869, column: 13)
!1916 = !DILocation(line: 869, column: 13, scope: !1898)
!1917 = !DILocation(line: 870, column: 21, scope: !1918)
!1918 = distinct !DILexicalBlock(scope: !1915, file: !3, line: 869, column: 36)
!1919 = !DILocation(line: 870, column: 13, scope: !1918)
!1920 = !DILocation(line: 872, column: 17, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1918, file: !3, line: 870, column: 30)
!1922 = !DILocation(line: 874, column: 17, scope: !1921)
!1923 = !DILocation(line: 876, column: 17, scope: !1921)
!1924 = !DILocation(line: 880, column: 19, scope: !1898)
!1925 = !DILocation(line: 880, column: 28, scope: !1898)
!1926 = !DILocation(line: 880, column: 37, scope: !1898)
!1927 = !DILocation(line: 880, column: 9, scope: !1898)
!1928 = !DILocation(line: 881, column: 23, scope: !1898)
!1929 = !DILocation(line: 881, column: 32, scope: !1898)
!1930 = !DILocation(line: 881, column: 41, scope: !1898)
!1931 = !DILocation(line: 881, column: 55, scope: !1898)
!1932 = !DILocation(line: 881, column: 9, scope: !1898)
!1933 = !DILocation(line: 884, column: 12, scope: !1706)
!1934 = !DILocation(line: 884, column: 5, scope: !1706)
!1935 = !DILocation(line: 885, column: 1, scope: !1706)
!1936 = distinct !DISubprogram(name: "sendfile_init", scope: !3, file: !3, line: 378, type: !356, scopeLine: 382, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!1937 = !DILocalVariable(name: "ce", arg: 1, scope: !1936, file: !3, line: 378, type: !333)
!1938 = !DILocation(line: 378, column: 35, scope: !1936)
!1939 = !DILocalVariable(name: "priv", arg: 2, scope: !1936, file: !3, line: 379, type: !358)
!1940 = !DILocation(line: 379, column: 36, scope: !1936)
!1941 = !DILocalVariable(name: "full_path", arg: 3, scope: !1936, file: !3, line: 380, type: !13)
!1942 = !DILocation(line: 380, column: 28, scope: !1936)
!1943 = !DILocalVariable(name: "st", arg: 4, scope: !1936, file: !3, line: 381, type: !379)
!1944 = !DILocation(line: 381, column: 29, scope: !1936)
!1945 = !DILocalVariable(name: "sd", scope: !1936, file: !3, line: 383, type: !323)
!1946 = !DILocation(line: 383, column: 28, scope: !1936)
!1947 = !DILocation(line: 383, column: 59, scope: !1936)
!1948 = !DILocation(line: 383, column: 62, scope: !1936)
!1949 = !DILocalVariable(name: "compressed_st", scope: !1936, file: !3, line: 384, type: !380)
!1950 = !DILocation(line: 384, column: 17, scope: !1936)
!1951 = !DILocation(line: 387, column: 17, scope: !1936)
!1952 = !DILocation(line: 387, column: 29, scope: !1936)
!1953 = !DILocation(line: 387, column: 35, scope: !1936)
!1954 = !DILocation(line: 387, column: 40, scope: !1936)
!1955 = !DILocation(line: 387, column: 27, scope: !1936)
!1956 = !DILocation(line: 386, column: 21, scope: !1936)
!1957 = !DILocation(line: 386, column: 5, scope: !1936)
!1958 = !DILocation(line: 386, column: 9, scope: !1936)
!1959 = !DILocation(line: 386, column: 19, scope: !1936)
!1960 = !DILocation(line: 389, column: 9, scope: !1961)
!1961 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 389, column: 9)
!1962 = !DILocation(line: 389, column: 9, scope: !1936)
!1963 = !DILocation(line: 390, column: 9, scope: !1961)
!1964 = !DILocalVariable(name: "len", scope: !1936, file: !3, line: 393, type: !64)
!1965 = !DILocation(line: 393, column: 9, scope: !1936)
!1966 = !DILocation(line: 393, column: 25, scope: !1936)
!1967 = !DILocation(line: 393, column: 29, scope: !1936)
!1968 = !DILocation(line: 393, column: 40, scope: !1936)
!1969 = !DILocation(line: 393, column: 59, scope: !1936)
!1970 = !DILocation(line: 393, column: 71, scope: !1936)
!1971 = !DILocation(line: 393, column: 77, scope: !1936)
!1972 = !DILocation(line: 393, column: 82, scope: !1936)
!1973 = !DILocation(line: 393, column: 69, scope: !1936)
!1974 = !DILocation(line: 393, column: 91, scope: !1936)
!1975 = !DILocation(line: 393, column: 15, scope: !1936)
!1976 = !DILocation(line: 394, column: 9, scope: !1977)
!1977 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 394, column: 9)
!1978 = !DILocation(line: 394, column: 9, scope: !1936)
!1979 = !DILocation(line: 395, column: 9, scope: !1977)
!1980 = !DILocalVariable(name: "ret", scope: !1936, file: !3, line: 397, type: !64)
!1981 = !DILocation(line: 397, column: 9, scope: !1936)
!1982 = !DILocation(line: 397, column: 23, scope: !1936)
!1983 = !DILocation(line: 397, column: 29, scope: !1936)
!1984 = !DILocation(line: 397, column: 34, scope: !1936)
!1985 = !DILocation(line: 397, column: 38, scope: !1936)
!1986 = !DILocation(line: 397, column: 42, scope: !1936)
!1987 = !DILocation(line: 397, column: 53, scope: !1936)
!1988 = !DILocation(line: 397, column: 15, scope: !1936)
!1989 = !DILocation(line: 398, column: 9, scope: !1990)
!1990 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 398, column: 9)
!1991 = !DILocation(line: 308, column: 36, scope: !515, inlinedAt: !1992)
!1992 = distinct !DILocation(line: 398, column: 9, scope: !1990)
!1993 = !DILocation(line: 308, column: 64, scope: !515, inlinedAt: !1992)
!1994 = !DILocation(line: 312, column: 14, scope: !515, inlinedAt: !1992)
!1995 = !DILocation(line: 312, column: 28, scope: !515, inlinedAt: !1992)
!1996 = !DILocation(line: 312, column: 54, scope: !515, inlinedAt: !1992)
!1997 = !DILocation(line: 312, column: 52, scope: !515, inlinedAt: !1992)
!1998 = !DILocation(line: 0, scope: !1990)
!1999 = !DILocation(line: 398, column: 9, scope: !1936)
!2000 = !DILocation(line: 400, column: 53, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 399, column: 89)
!2002 = !DILocation(line: 400, column: 9, scope: !2001)
!2003 = !DILocation(line: 400, column: 13, scope: !2001)
!2004 = !DILocation(line: 400, column: 24, scope: !2001)
!2005 = !DILocation(line: 400, column: 29, scope: !2001)
!2006 = !DILocation(line: 401, column: 5, scope: !2001)
!2007 = !DILocation(line: 402, column: 14, scope: !2008)
!2008 = distinct !DILexicalBlock(scope: !1990, file: !3, line: 401, column: 12)
!2009 = !DILocation(line: 402, column: 18, scope: !2008)
!2010 = !DILocation(line: 402, column: 29, scope: !2008)
!2011 = !DILocation(line: 402, column: 9, scope: !2008)
!2012 = !DILabel(scope: !2008, name: "only_uncompressed", file: !3, line: 404)
!2013 = !DILocation(line: 404, column: 1, scope: !2008)
!2014 = !DILocation(line: 405, column: 9, scope: !2008)
!2015 = !DILocation(line: 405, column: 13, scope: !2008)
!2016 = !DILocation(line: 405, column: 24, scope: !2008)
!2017 = !DILocation(line: 405, column: 33, scope: !2008)
!2018 = !DILocation(line: 406, column: 9, scope: !2008)
!2019 = !DILocation(line: 406, column: 13, scope: !2008)
!2020 = !DILocation(line: 406, column: 24, scope: !2008)
!2021 = !DILocation(line: 406, column: 29, scope: !2008)
!2022 = !DILocation(line: 410, column: 37, scope: !1936)
!2023 = !DILocation(line: 410, column: 41, scope: !1936)
!2024 = !DILocation(line: 410, column: 5, scope: !1936)
!2025 = !DILocation(line: 410, column: 9, scope: !1936)
!2026 = !DILocation(line: 410, column: 22, scope: !1936)
!2027 = !DILocation(line: 410, column: 27, scope: !1936)
!2028 = !DILocation(line: 411, column: 40, scope: !1936)
!2029 = !DILocation(line: 411, column: 52, scope: !1936)
!2030 = !DILocation(line: 411, column: 58, scope: !1936)
!2031 = !DILocation(line: 411, column: 63, scope: !1936)
!2032 = !DILocation(line: 411, column: 50, scope: !1936)
!2033 = !DILocation(line: 411, column: 72, scope: !1936)
!2034 = !DILocation(line: 411, column: 33, scope: !1936)
!2035 = !DILocation(line: 411, column: 5, scope: !1936)
!2036 = !DILocation(line: 411, column: 9, scope: !1936)
!2037 = !DILocation(line: 411, column: 22, scope: !1936)
!2038 = !DILocation(line: 411, column: 31, scope: !1936)
!2039 = !DILocation(line: 412, column: 9, scope: !2040)
!2040 = distinct !DILexicalBlock(scope: !1936, file: !3, line: 412, column: 9)
!2041 = !DILocation(line: 412, column: 9, scope: !1936)
!2042 = !DILocation(line: 413, column: 14, scope: !2043)
!2043 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 412, column: 47)
!2044 = !DILocation(line: 413, column: 18, scope: !2043)
!2045 = !DILocation(line: 413, column: 29, scope: !2043)
!2046 = !DILocation(line: 413, column: 9, scope: !2043)
!2047 = !DILocation(line: 414, column: 9, scope: !2043)
!2048 = !DILocation(line: 417, column: 5, scope: !1936)
!2049 = !DILocation(line: 418, column: 1, scope: !1936)
!2050 = distinct !DISubprogram(name: "sendfile_free", scope: !3, file: !3, line: 571, type: !31, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!2051 = !DILocalVariable(name: "data", arg: 1, scope: !2050, file: !3, line: 571, type: !20)
!2052 = !DILocation(line: 571, column: 21, scope: !2050)
!2053 = !DILocalVariable(name: "sd", scope: !2050, file: !3, line: 573, type: !323)
!2054 = !DILocation(line: 573, column: 28, scope: !2050)
!2055 = !DILocation(line: 573, column: 33, scope: !2050)
!2056 = !DILocation(line: 575, column: 10, scope: !2050)
!2057 = !DILocation(line: 575, column: 14, scope: !2050)
!2058 = !DILocation(line: 575, column: 25, scope: !2050)
!2059 = !DILocation(line: 575, column: 5, scope: !2050)
!2060 = !DILocation(line: 576, column: 10, scope: !2050)
!2061 = !DILocation(line: 576, column: 14, scope: !2050)
!2062 = !DILocation(line: 576, column: 27, scope: !2050)
!2063 = !DILocation(line: 576, column: 5, scope: !2050)
!2064 = !DILocation(line: 577, column: 1, scope: !2050)
!2065 = distinct !DISubprogram(name: "directory_list_generator", scope: !3, file: !3, line: 243, type: !565, scopeLine: 244, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !259, retainedNodes: !519)
!2066 = !DILocalVariable(name: "coro", arg: 1, scope: !2065, file: !3, line: 243, type: !105)
!2067 = !DILocation(line: 243, column: 34, scope: !2065)
!2068 = !DILocalVariable(name: "dir", scope: !2065, file: !3, line: 245, type: !2069)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DIDerivedType(tag: DW_TAG_typedef, name: "DIR", file: !2071, line: 127, baseType: !2072)
!2071 = !DIFile(filename: "/usr/include/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "6eb1a2faa0cf53b967234cc6c0fe978e")
!2072 = !DICompositeType(tag: DW_TAG_structure_type, name: "__dirstream", file: !2071, line: 127, flags: DIFlagFwdDecl)
!2073 = !DILocation(line: 245, column: 10, scope: !2065)
!2074 = !DILocalVariable(name: "entry", scope: !2065, file: !3, line: 246, type: !2075)
!2075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dirent", file: !2076, line: 22, size: 2240, elements: !2077)
!2076 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/dirent.h", directory: "", checksumkind: CSK_MD5, checksum: "bc8b10a1ddd2747862e3ae7b91dbf464")
!2077 = !{!2078, !2079, !2080, !2081, !2083}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "d_ino", scope: !2075, file: !2076, line: 25, baseType: !386, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "d_off", scope: !2075, file: !2076, line: 26, baseType: !211, size: 64, offset: 64)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "d_reclen", scope: !2075, file: !2076, line: 31, baseType: !150, size: 16, offset: 128)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "d_type", scope: !2075, file: !2076, line: 32, baseType: !2082, size: 8, offset: 144)
!2082 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "d_name", scope: !2075, file: !2076, line: 33, baseType: !2084, size: 2048, offset: 152)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !15, size: 2048, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 256)
!2087 = !DILocation(line: 246, column: 19, scope: !2065)
!2088 = !DILocalVariable(name: "buffer", scope: !2065, file: !3, line: 246, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2090 = !DILocation(line: 246, column: 27, scope: !2065)
!2091 = !DILocalVariable(name: "fl", scope: !2065, file: !3, line: 247, type: !2092)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1309, size: 64)
!2093 = !DILocation(line: 247, column: 25, scope: !2065)
!2094 = !DILocation(line: 247, column: 44, scope: !2065)
!2095 = !DILocation(line: 247, column: 30, scope: !2065)
!2096 = !DILocalVariable(name: "fd", scope: !2065, file: !3, line: 248, type: !64)
!2097 = !DILocation(line: 248, column: 9, scope: !2065)
!2098 = !DILocation(line: 250, column: 19, scope: !2065)
!2099 = !DILocation(line: 250, column: 23, scope: !2065)
!2100 = !DILocation(line: 250, column: 11, scope: !2065)
!2101 = !DILocation(line: 250, column: 9, scope: !2065)
!2102 = !DILocation(line: 251, column: 10, scope: !2103)
!2103 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 251, column: 9)
!2104 = !DILocation(line: 251, column: 9, scope: !2065)
!2105 = !DILocation(line: 252, column: 9, scope: !2103)
!2106 = !DILocation(line: 254, column: 16, scope: !2065)
!2107 = !DILocation(line: 254, column: 10, scope: !2065)
!2108 = !DILocation(line: 254, column: 8, scope: !2065)
!2109 = !DILocation(line: 255, column: 9, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 255, column: 9)
!2111 = !DILocation(line: 255, column: 12, scope: !2110)
!2112 = !DILocation(line: 255, column: 9, scope: !2065)
!2113 = !DILocation(line: 256, column: 9, scope: !2110)
!2114 = !DILocation(line: 258, column: 5, scope: !2065)
!2115 = !DILocation(line: 258, column: 23, scope: !2065)
!2116 = !DILocation(line: 258, column: 13, scope: !2065)
!2117 = !DILocation(line: 258, column: 12, scope: !2065)
!2118 = !DILocalVariable(name: "st", scope: !2119, file: !3, line: 259, type: !380)
!2119 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 258, column: 46)
!2120 = !DILocation(line: 259, column: 21, scope: !2119)
!2121 = !DILocation(line: 261, column: 14, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 261, column: 13)
!2123 = !DILocation(line: 261, column: 13, scope: !2119)
!2124 = !DILocation(line: 262, column: 13, scope: !2122)
!2125 = !DILocation(line: 264, column: 19, scope: !2126)
!2126 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 264, column: 13)
!2127 = !DILocation(line: 264, column: 13, scope: !2126)
!2128 = !DILocation(line: 264, column: 29, scope: !2126)
!2129 = !DILocation(line: 264, column: 13, scope: !2119)
!2130 = !DILocation(line: 265, column: 13, scope: !2126)
!2131 = distinct !{!2131, !2114, !2132, !2133}
!2132 = !DILocation(line: 300, column: 5, scope: !2065)
!2133 = !{!"llvm.loop.mustprogress"}
!2134 = !DILocation(line: 267, column: 21, scope: !2135)
!2135 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 267, column: 13)
!2136 = !DILocation(line: 267, column: 31, scope: !2135)
!2137 = !DILocation(line: 267, column: 25, scope: !2135)
!2138 = !DILocation(line: 267, column: 13, scope: !2135)
!2139 = !DILocation(line: 267, column: 47, scope: !2135)
!2140 = !DILocation(line: 267, column: 13, scope: !2119)
!2141 = !DILocation(line: 268, column: 13, scope: !2135)
!2142 = !DILocation(line: 270, column: 13, scope: !2143)
!2143 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 270, column: 13)
!2144 = !DILocation(line: 270, column: 13, scope: !2119)
!2145 = !DILocation(line: 271, column: 13, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 270, column: 34)
!2147 = !DILocation(line: 271, column: 17, scope: !2146)
!2148 = !DILocation(line: 271, column: 27, scope: !2146)
!2149 = !DILocation(line: 271, column: 32, scope: !2146)
!2150 = !DILocation(line: 272, column: 13, scope: !2146)
!2151 = !DILocation(line: 272, column: 17, scope: !2146)
!2152 = !DILocation(line: 272, column: 27, scope: !2146)
!2153 = !DILocation(line: 272, column: 36, scope: !2146)
!2154 = !DILocation(line: 273, column: 13, scope: !2146)
!2155 = !DILocation(line: 273, column: 17, scope: !2146)
!2156 = !DILocation(line: 273, column: 27, scope: !2146)
!2157 = !DILocation(line: 273, column: 32, scope: !2146)
!2158 = !DILocation(line: 274, column: 9, scope: !2146)
!2159 = !DILocation(line: 274, column: 20, scope: !2160)
!2160 = distinct !DILexicalBlock(scope: !2143, file: !3, line: 274, column: 20)
!2161 = !DILocation(line: 274, column: 20, scope: !2143)
!2162 = !DILocation(line: 275, column: 13, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 274, column: 41)
!2164 = !DILocation(line: 275, column: 17, scope: !2163)
!2165 = !DILocation(line: 275, column: 27, scope: !2163)
!2166 = !DILocation(line: 275, column: 32, scope: !2163)
!2167 = !DILocation(line: 276, column: 13, scope: !2163)
!2168 = !DILocation(line: 276, column: 17, scope: !2163)
!2169 = !DILocation(line: 276, column: 27, scope: !2163)
!2170 = !DILocation(line: 276, column: 36, scope: !2163)
!2171 = !DILocation(line: 277, column: 79, scope: !2163)
!2172 = !DILocation(line: 277, column: 73, scope: !2163)
!2173 = !DILocation(line: 277, column: 34, scope: !2163)
!2174 = !DILocation(line: 277, column: 13, scope: !2163)
!2175 = !DILocation(line: 277, column: 17, scope: !2163)
!2176 = !DILocation(line: 277, column: 27, scope: !2163)
!2177 = !DILocation(line: 277, column: 32, scope: !2163)
!2178 = !DILocation(line: 278, column: 9, scope: !2163)
!2179 = !DILocation(line: 279, column: 13, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 278, column: 16)
!2181 = !DILocation(line: 282, column: 16, scope: !2182)
!2182 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 282, column: 13)
!2183 = !DILocation(line: 282, column: 24, scope: !2182)
!2184 = !DILocation(line: 282, column: 13, scope: !2119)
!2185 = !DILocation(line: 283, column: 42, scope: !2186)
!2186 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 282, column: 32)
!2187 = !DILocation(line: 283, column: 34, scope: !2186)
!2188 = !DILocation(line: 283, column: 13, scope: !2186)
!2189 = !DILocation(line: 283, column: 17, scope: !2186)
!2190 = !DILocation(line: 283, column: 27, scope: !2186)
!2191 = !DILocation(line: 283, column: 32, scope: !2186)
!2192 = !DILocation(line: 284, column: 13, scope: !2186)
!2193 = !DILocation(line: 284, column: 17, scope: !2186)
!2194 = !DILocation(line: 284, column: 27, scope: !2186)
!2195 = !DILocation(line: 284, column: 32, scope: !2186)
!2196 = !DILocation(line: 285, column: 9, scope: !2186)
!2197 = !DILocation(line: 285, column: 23, scope: !2198)
!2198 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 285, column: 20)
!2199 = !DILocation(line: 285, column: 31, scope: !2198)
!2200 = !DILocation(line: 285, column: 20, scope: !2182)
!2201 = !DILocation(line: 286, column: 43, scope: !2202)
!2202 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 285, column: 46)
!2203 = !DILocation(line: 286, column: 51, scope: !2202)
!2204 = !DILocation(line: 286, column: 34, scope: !2202)
!2205 = !DILocation(line: 286, column: 13, scope: !2202)
!2206 = !DILocation(line: 286, column: 17, scope: !2202)
!2207 = !DILocation(line: 286, column: 27, scope: !2202)
!2208 = !DILocation(line: 286, column: 32, scope: !2202)
!2209 = !DILocation(line: 287, column: 13, scope: !2202)
!2210 = !DILocation(line: 287, column: 17, scope: !2202)
!2211 = !DILocation(line: 287, column: 27, scope: !2202)
!2212 = !DILocation(line: 287, column: 32, scope: !2202)
!2213 = !DILocation(line: 288, column: 9, scope: !2202)
!2214 = !DILocation(line: 288, column: 23, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2198, file: !3, line: 288, column: 20)
!2216 = !DILocation(line: 288, column: 31, scope: !2215)
!2217 = !DILocation(line: 288, column: 20, scope: !2198)
!2218 = !DILocation(line: 289, column: 43, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 288, column: 53)
!2220 = !DILocation(line: 289, column: 51, scope: !2219)
!2221 = !DILocation(line: 289, column: 34, scope: !2219)
!2222 = !DILocation(line: 289, column: 13, scope: !2219)
!2223 = !DILocation(line: 289, column: 17, scope: !2219)
!2224 = !DILocation(line: 289, column: 27, scope: !2219)
!2225 = !DILocation(line: 289, column: 32, scope: !2219)
!2226 = !DILocation(line: 290, column: 13, scope: !2219)
!2227 = !DILocation(line: 290, column: 17, scope: !2219)
!2228 = !DILocation(line: 290, column: 27, scope: !2219)
!2229 = !DILocation(line: 290, column: 32, scope: !2219)
!2230 = !DILocation(line: 291, column: 9, scope: !2219)
!2231 = !DILocation(line: 292, column: 43, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2215, file: !3, line: 291, column: 16)
!2233 = !DILocation(line: 292, column: 51, scope: !2232)
!2234 = !DILocation(line: 292, column: 34, scope: !2232)
!2235 = !DILocation(line: 292, column: 13, scope: !2232)
!2236 = !DILocation(line: 292, column: 17, scope: !2232)
!2237 = !DILocation(line: 292, column: 27, scope: !2232)
!2238 = !DILocation(line: 292, column: 32, scope: !2232)
!2239 = !DILocation(line: 293, column: 13, scope: !2232)
!2240 = !DILocation(line: 293, column: 17, scope: !2232)
!2241 = !DILocation(line: 293, column: 27, scope: !2232)
!2242 = !DILocation(line: 293, column: 32, scope: !2232)
!2243 = !DILocation(line: 296, column: 36, scope: !2119)
!2244 = !DILocation(line: 296, column: 30, scope: !2119)
!2245 = !DILocation(line: 296, column: 9, scope: !2119)
!2246 = !DILocation(line: 296, column: 13, scope: !2119)
!2247 = !DILocation(line: 296, column: 23, scope: !2119)
!2248 = !DILocation(line: 296, column: 28, scope: !2119)
!2249 = !DILocation(line: 298, column: 24, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2119, file: !3, line: 298, column: 13)
!2251 = !DILocation(line: 298, column: 13, scope: !2250)
!2252 = !DILocation(line: 298, column: 13, scope: !2119)
!2253 = !DILocation(line: 299, column: 13, scope: !2250)
!2254 = !DILabel(scope: !2065, name: "out", file: !3, line: 302)
!2255 = !DILocation(line: 302, column: 1, scope: !2065)
!2256 = !DILocation(line: 303, column: 14, scope: !2065)
!2257 = !DILocation(line: 303, column: 5, scope: !2065)
!2258 = !DILocation(line: 304, column: 5, scope: !2065)
!2259 = !DILocation(line: 305, column: 1, scope: !2065)
