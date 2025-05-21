; ModuleID = './rzip.c'
source_filename = "./rzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.level = type { i64, i32, i32 }
%struct.timeval = type { i64, i64 }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.rzip_state = type { ptr, ptr, [256 x i64], ptr, i8, i64, i64, i64, i64, i64, i64, i64, i8, i32, i32, i32, i8, %struct.anon }
%struct.anon = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.hash_entry = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stream_info = type { ptr, i8, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.stream = type { i64, ptr, i64, i64, i8, i64, i64, i64, i32, i64 }

@.str = private unnamed_addr constant [9 x i8] c"./rzip.c\00", align 1
@__func__.rzip_fd = private unnamed_addr constant [8 x i8] c"rzip_fd\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Failed to allocate control state in rzip_fd\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"lzo_init() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Failed to stat fd_in in rzip_fd\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"File size: %lld\0A\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"Failed to fstatvfs in compress_file\0A\00", align 1
@.str.6 = private unnamed_addr constant [107 x i8] c"Warning, possibly inadequate free space detected, but attempting to compress due to -f option being used.\0A\00", align 1
@.str.7 = private unnamed_addr constant [70 x i8] c"Possibly inadequate free space to compress file, use -f to override.\0A\00", align 1
@levels = internal global [10 x %struct.level] [%struct.level { i64 1, i32 4, i32 1 }, %struct.level { i64 2, i32 4, i32 2 }, %struct.level { i64 4, i32 4, i32 2 }, %struct.level { i64 8, i32 4, i32 2 }, %struct.level { i64 16, i32 4, i32 3 }, %struct.level { i64 32, i32 4, i32 4 }, %struct.level { i64 32, i32 2, i32 6 }, %struct.level { i64 64, i32 1, i32 16 }, %struct.level { i64 64, i32 1, i32 32 }, %struct.level { i64 64, i32 1, i32 128 }], align 16
@.str.8 = private unnamed_addr constant [19 x i8] c"Failed to mmap %s\0A\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"Unable to mmap any ram\0A\00", align 1
@.str.10 = private unnamed_addr constant [83 x i8] c"Enabling sliding mmap mode and using mmap of %lld bytes with window of %lld bytes\0A\00", align 1
@.str.11 = private unnamed_addr constant [62 x i8] c"Succeeded in testing %lld sized mmap for rzip pre-processing\0A\00", align 1
@.str.12 = private unnamed_addr constant [94 x i8] c"Compression window is larger than ram, will proceed with unlimited mode possibly much slower\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"Will take 1 pass\0A\00", align 1
@.str.14 = private unnamed_addr constant [21 x i8] c"Will take %d passes\0A\00", align 1
@.str.15 = private unnamed_addr constant [18 x i8] c"Chunk size: %lld\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"Byte width: %d\0A\00", align 1
@.str.17 = private unnamed_addr constant [96 x i8] c"\0APass %d / %d -- Elapsed Time: %02d:%02d:%02d. ETA: %02d:%02d:%02d. Compress Speed: %3.3fMB/s.\0A\00", align 1
@.str.18 = private unnamed_addr constant [70 x i8] c"\0APass %d -- Elapsed Time: %02d:%02d:%02d. Compress Speed: %3.3fMB/s.\0A\00", align 1
@.str.19 = private unnamed_addr constant [66 x i8] c"Wrote EOF to file yet chunk_size was shrunk, corrupting archive.\0A\00", align 1
@.str.20 = private unnamed_addr constant [46 x i8] c"Failed to close_streamout_threads in rzip_fd\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"MD5: \00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.24 = private unnamed_addr constant [34 x i8] c"Failed to lrz_encrypt in rzip_fd\0A\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"Failed to write md5 in rzip_fd\0A\00", align 1
@.str.26 = private unnamed_addr constant [38 x i8] c"Failed to flush_tmpoutbuf in rzip_fd\0A\00", align 1
@.str.27 = private unnamed_addr constant [27 x i8] c"matches=%u match_bytes=%u\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"literals=%u literal_bytes=%u\0A\00", align 1
@.str.29 = private unnamed_addr constant [46 x i8] c"true_tag_positives=%u false_tag_positives=%u\0A\00", align 1
@.str.30 = private unnamed_addr constant [23 x i8] c"inserts=%u match %.3f\0A\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%s - \00", align 1
@.str.32 = private unnamed_addr constant [64 x i8] c"Compression Ratio: %.3f. Average Compression Speed: %6.3fMB/s.\0A\00", align 1
@.str.33 = private unnamed_addr constant [9 x i8] c"./util.h\00", align 1
@__func__.cksem_init = private unnamed_addr constant [11 x i8] c"cksem_init\00", align 1
@.str.34 = private unnamed_addr constant [35 x i8] c"Failed to sem_init ret=%d errno=%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@__func__.cksem_post = private unnamed_addr constant [11 x i8] c"cksem_post\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"Failed to sem_post errno=%d cksem=0x%p\00", align 1
@__func__.mmap_stdin = private unnamed_addr constant [11 x i8] c"mmap_stdin\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"Failed to read in mmap_stdin\0A\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"Shrinking chunk to %lld\0A\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"Failed to remap to smaller buf in mmap_stdin\0A\00", align 1
@__func__.remap_high_sb = private unnamed_addr constant [14 x i8] c"remap_high_sb\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"Failed to munmap in remap_high_sb\0A\00", align 1
@.str.40 = private unnamed_addr constant [36 x i8] c"Failed to re mmap in remap_high_sb\0A\00", align 1
@__func__.sliding_get_sb_range = private unnamed_addr constant [21 x i8] c"sliding_get_sb_range\00", align 1
@.str.41 = private unnamed_addr constant [51 x i8] c"sliding_get_sb_range: the pointer is out of range\0A\00", align 1
@__func__.rzip_chunk = private unnamed_addr constant [11 x i8] c"rzip_chunk\00", align 1
@.str.42 = private unnamed_addr constant [38 x i8] c"Failed to open streams in rzip_chunk\0A\00", align 1
@.str.43 = private unnamed_addr constant [37 x i8] c"Beginning rzip pre-processing phase\0A\00", align 1
@.str.44 = private unnamed_addr constant [32 x i8] c"Failed to munmap in rzip_chunk\0A\00", align 1
@.str.45 = private unnamed_addr constant [45 x i8] c"Failed to flush/close streams in rzip_chunk\0A\00", align 1
@__func__.init_sliding_mmap = private unnamed_addr constant [18 x i8] c"init_sliding_mmap\00", align 1
@.str.46 = private unnamed_addr constant [46 x i8] c"Unable to mmap buf_high in init_sliding_mmap\0A\00", align 1
@__func__.hash_search = private unnamed_addr constant [12 x i8] c"hash_search\00", align 1
@.str.47 = private unnamed_addr constant [38 x i8] c"hashsize = %lld.  bits = %lld. %luMB\0A\00", align 1
@.str.48 = private unnamed_addr constant [46 x i8] c"Failed to allocate hash table in hash_search\0A\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"Total: %2d%%  \00", align 1
@.str.50 = private unnamed_addr constant [14 x i8] c"Chunk: %2d%%\0D\00", align 1
@.str.51 = private unnamed_addr constant [39 x i8] c"Failed to malloc ckbuf in hash_search\0A\00", align 1
@.str.52 = private unnamed_addr constant [33 x i8] c"Malloced %ld for checksum ckbuf\0A\00", align 1
@.str.53 = private unnamed_addr constant [45 x i8] c"Failed to malloc any ram for checksum ckbuf\0A\00", align 1
@__func__.remap_low_sb = private unnamed_addr constant [13 x i8] c"remap_low_sb\00", align 1
@.str.54 = private unnamed_addr constant [36 x i8] c"Sliding main buffer to offset %lld\0A\00", align 1
@.str.55 = private unnamed_addr constant [34 x i8] c"Failed to munmap in remap_low_sb\0A\00", align 1
@.str.56 = private unnamed_addr constant [35 x i8] c"Failed to re mmap in remap_low_sb\0A\00", align 1
@insert_hash.victim_round = internal unnamed_addr global i64 0, align 8
@__func__.clean_one_from_hash = private unnamed_addr constant [20 x i8] c"clean_one_from_hash\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"Starting sweep for mask %u\0A\00", align 1
@__func__.cksem_wait = private unnamed_addr constant [11 x i8] c"cksem_wait\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Failed to sem_wait errno=%d cksem=0x%p\00", align 1
@__func__.show_distrib = private unnamed_addr constant [13 x i8] c"show_distrib\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"WARNING: hash_count says total %lld\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"0 total hashes\0A\00", align 1
@.str.61 = private unnamed_addr constant [56 x i8] c"%lld total hashes -- %lld in primary bucket (%-2.3f%%)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @rzip_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca %struct.statvfs, align 8
  %16 = alloca %struct.stat, align 8
  %17 = alloca %struct.stat, align 8
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #20
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %15) #20
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %16) #20
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %17) #20
  %19 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 47
  %20 = tail call zeroext i1 @init_mutex(ptr noundef %0, ptr noundef nonnull %19) #20
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %22 = load i64, ptr %21, align 8, !tbaa !5
  %23 = and i64 %22, 196608
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 52
  tail call void @md5_init_ctx(ptr noundef nonnull %26) #20
  br label %27

27:                                               ; preds = %3, %25
  %28 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 51
  %29 = tail call i32 @sem_init(ptr noundef nonnull %28, i32 noundef 0, i32 noundef 0) #20
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @__errno_location() #21
  %33 = load i32, ptr %32, align 4, !tbaa !16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 155, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_init, ptr noundef nonnull @.str.34, i32 noundef %29, i32 noundef %33)
  br label %34

34:                                               ; preds = %27, %31
  %35 = tail call i32 @sem_post(ptr noundef nonnull %28) #20
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37, !prof !17

37:                                               ; preds = %34
  %38 = tail call ptr @__errno_location() #21
  %39 = load i32, ptr %38, align 4, !tbaa !16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 161, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.35, i32 noundef %39, ptr noundef nonnull %28)
  br label %40

40:                                               ; preds = %34, %37
  %41 = tail call noalias dereferenceable_or_null(2216) ptr @calloc(i64 noundef 2216, i64 noundef 1) #22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %44, !prof !18

43:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 936, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.1)
  br label %44

44:                                               ; preds = %43, %40
  %45 = load i64, ptr %21, align 8, !tbaa !5
  %46 = and i64 %45, 64
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = tail call i32 @__lzo_init_v2(i32 noundef 8352, i32 noundef 2, i32 noundef 4, i32 noundef 8, i32 noundef 4, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 48) #20
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51, !prof !17

51:                                               ; preds = %48
  tail call void @free(ptr noundef %41) #20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 941, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.2)
  br label %52

52:                                               ; preds = %48, %51, %44
  %53 = phi ptr [ null, %51 ], [ %41, %48 ], [ %41, %44 ]
  %54 = call i32 @fstat64(i32 noundef %1, ptr noundef nonnull %16) #20
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %57, label %56, !prof !17

56:                                               ; preds = %52
  tail call void @free(ptr noundef %53) #20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 947, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.3)
  br label %57

57:                                               ; preds = %56, %52
  %58 = phi ptr [ null, %56 ], [ %53, %52 ]
  %59 = load i64, ptr %21, align 8, !tbaa !5
  %60 = and i64 %59, 4096
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.stat, ptr %16, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !19
  %65 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 %64, ptr %65, align 8, !tbaa !22
  %66 = and i64 %59, 3072
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 952, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.4, i64 noundef %64)
  %69 = load i64, ptr %21, align 8, !tbaa !5
  br label %72

70:                                               ; preds = %57
  %71 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 0, ptr %71, align 8, !tbaa !22
  br label %72

72:                                               ; preds = %62, %68, %70
  %73 = phi i64 [ %59, %70 ], [ %69, %68 ], [ %59, %62 ]
  %74 = phi i64 [ 0, %70 ], [ %64, %68 ], [ %64, %62 ]
  %75 = and i64 %73, 8192
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %77, label %96

77:                                               ; preds = %72
  %78 = call i32 @fstatvfs64(i32 noundef %2, ptr noundef nonnull %15) #20
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80, !prof !17

80:                                               ; preds = %77
  tail call void @free(ptr noundef %58) #20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 962, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.5)
  br label %81

81:                                               ; preds = %80, %77
  %82 = phi ptr [ null, %80 ], [ %58, %77 ]
  %83 = load i64, ptr %15, align 8, !tbaa !23
  %84 = getelementptr inbounds %struct.statvfs, ptr %15, i64 0, i32 4
  %85 = load i64, ptr %84, align 8, !tbaa !25
  %86 = mul nsw i64 %85, %83
  %87 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %88 = load i64, ptr %87, align 8, !tbaa !22
  %89 = icmp slt i64 %86, %88
  br i1 %89, label %90, label %96

90:                                               ; preds = %81
  %91 = load i64, ptr %21, align 8, !tbaa !5
  %92 = and i64 %91, 8
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %95, label %94

94:                                               ; preds = %90
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 967, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.6)
  br label %96

95:                                               ; preds = %90
  tail call void @free(ptr noundef %82) #20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 970, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.7)
  br label %96

96:                                               ; preds = %81, %95, %94, %72
  %97 = phi ptr [ %58, %72 ], [ %82, %94 ], [ null, %95 ], [ %82, %81 ]
  %98 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %99 = load i64, ptr %98, align 8, !tbaa !26
  %100 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 29
  store i64 %99, ptr %100, align 8, !tbaa !27
  tail call void @round_to_page(ptr noundef nonnull %100) #20
  %101 = load i64, ptr %21, align 8, !tbaa !5
  %102 = and i64 %101, 32768
  %103 = icmp eq i64 %102, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %96
  %105 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %106 = load i64, ptr %105, align 8, !tbaa !22
  br label %118

107:                                              ; preds = %96
  %108 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 25
  %109 = load i64, ptr %108, align 8, !tbaa !28
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %113, label %111

111:                                              ; preds = %107
  %112 = mul nsw i64 %109, 104857600
  br label %118

113:                                              ; preds = %107
  %114 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %115 = load i64, ptr %114, align 8, !tbaa !29
  %116 = sdiv i64 %115, 3
  %117 = shl nsw i64 %116, 1
  br label %118

118:                                              ; preds = %111, %113, %104
  %119 = phi i64 [ %112, %111 ], [ %117, %113 ], [ %106, %104 ]
  %120 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 28
  store i64 %119, ptr %120, align 8, !tbaa !30
  %121 = load i64, ptr %100, align 8, !tbaa !27
  %122 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 28
  %123 = tail call i64 @llvm.smin.i64(i64 %121, i64 %119)
  store i64 %123, ptr %100, align 8, !tbaa !27
  %124 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %125 = load i64, ptr %124, align 8, !tbaa !22
  %126 = icmp slt i64 %119, %125
  br i1 %126, label %127, label %129

127:                                              ; preds = %118
  tail call void @round_to_page(ptr noundef nonnull %122) #20
  %128 = load i64, ptr %21, align 8, !tbaa !5
  br label %129

129:                                              ; preds = %127, %118
  %130 = phi i64 [ %128, %127 ], [ %101, %118 ]
  %131 = and i64 %130, 4096
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i64, ptr %122, align 8, !tbaa !30
  %135 = tail call i64 @llvm.smin.i64(i64 %134, i64 %74)
  br label %138

136:                                              ; preds = %129
  %137 = load i64, ptr %100, align 8, !tbaa !27
  br label %138

138:                                              ; preds = %136, %133
  %139 = phi i64 [ %135, %133 ], [ %137, %136 ]
  %140 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 10
  store i64 %139, ptr %140, align 8
  %141 = icmp slt i64 %139, %74
  br i1 %141, label %142, label %143

142:                                              ; preds = %138
  tail call void @round_to_page(ptr noundef nonnull %140) #20
  br label %143

143:                                              ; preds = %142, %138
  %144 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %145 = load i8, ptr %144, align 8, !tbaa !31
  %146 = zext i8 %145 to i64
  %147 = getelementptr inbounds [10 x %struct.level], ptr @levels, i64 0, i64 %146
  %148 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 1
  store ptr %147, ptr %148, align 8, !tbaa !32
  %149 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 14
  store i32 %1, ptr %149, align 8, !tbaa !35
  %150 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 15
  store i32 %2, ptr %150, align 4, !tbaa !36
  %151 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 16
  store i8 0, ptr %151, align 8, !tbaa !37
  br label %152

152:                                              ; preds = %152, %143
  %153 = phi i64 [ 0, %143 ], [ %159, %152 ]
  %154 = tail call i64 @random() #20
  %155 = shl i64 %154, 16
  %156 = tail call i64 @random() #20
  %157 = xor i64 %155, %156
  %158 = getelementptr inbounds %struct.rzip_state, ptr %97, i64 0, i32 2, i64 %153
  store i64 %157, ptr %158, align 8, !tbaa !38
  %159 = add nuw nsw i64 %153, 1
  %160 = icmp eq i64 %159, 256
  br i1 %160, label %161, label %152, !llvm.loop !39

161:                                              ; preds = %152
  %162 = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #20
  %163 = tail call zeroext i1 @prepare_streamout_threads(ptr noundef %0) #20
  %164 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 72
  store ptr @single_mcpy, ptr %164, align 8, !tbaa !41
  %165 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 73
  store ptr @single_next_tag, ptr %165, align 8, !tbaa !42
  %166 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 74
  store ptr @single_full_tag, ptr %166, align 8, !tbaa !43
  %167 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 75
  store ptr @single_match_len, ptr %167, align 8, !tbaa !44
  %168 = getelementptr inbounds %struct.stat, ptr %16, i64 0, i32 8
  %169 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %170 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 1
  %171 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  %172 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %173 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 2
  %174 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 9
  %175 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 1
  %176 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 8
  %177 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 4
  %178 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 3
  %179 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 5
  %180 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 7
  %181 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 6
  %182 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 10
  %183 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 66
  %184 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 67
  %185 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55
  %186 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55, i32 2
  %187 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55, i32 1
  %188 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 52
  br label %189

189:                                              ; preds = %1070, %161
  %190 = phi ptr [ %97, %161 ], [ %1071, %1070 ]
  %191 = phi i32 [ 0, %161 ], [ %443, %1070 ]
  %192 = phi i32 [ 0, %161 ], [ %439, %1070 ]
  %193 = phi i64 [ 0, %161 ], [ %1067, %1070 ]
  %194 = phi i64 [ %74, %161 ], [ %1068, %1070 ]
  %195 = phi i64 [ 0, %161 ], [ %448, %1070 ]
  %196 = icmp eq i32 %192, 0
  %197 = icmp sgt i64 %194, 0
  %198 = select i1 %196, i1 true, i1 %197
  %199 = load i64, ptr %21, align 8, !tbaa !5
  br i1 %198, label %207, label %200

200:                                              ; preds = %189
  %201 = and i64 %199, 4096
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %1078, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.rzip_state, ptr %190, i64 0, i32 16
  %205 = load i8, ptr %204, align 8, !tbaa !37
  %206 = icmp eq i8 %205, 0
  br i1 %206, label %207, label %1078

207:                                              ; preds = %189, %203
  %208 = load i64, ptr %168, align 8, !tbaa !19
  %209 = sub nsw i64 %208, %194
  %210 = load i64, ptr %122, align 8, !tbaa !30
  %211 = getelementptr inbounds %struct.rzip_state, ptr %190, i64 0, i32 10
  store i64 %210, ptr %211, align 8, !tbaa !45
  %212 = load i64, ptr %100, align 8, !tbaa !27
  %213 = getelementptr inbounds %struct.rzip_state, ptr %190, i64 0, i32 11
  store i64 %212, ptr %213, align 8, !tbaa !46
  %214 = and i64 %199, 4096
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %216, label %225

216:                                              ; preds = %207
  %217 = call i64 @llvm.smin.i64(i64 %210, i64 %194)
  store i64 %217, ptr %211, align 8, !tbaa !45
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %221, label %219, !prof !18

219:                                              ; preds = %216
  %220 = call i64 @llvm.smin.i64(i64 %212, i64 %194)
  br label %223

221:                                              ; preds = %216
  %222 = load i64, ptr %169, align 8, !tbaa !47
  br label %223

223:                                              ; preds = %221, %219
  %224 = phi i64 [ %220, %219 ], [ %222, %221 ]
  store i64 %224, ptr %213, align 8, !tbaa !46
  br label %225

225:                                              ; preds = %223, %207
  br label %226

226:                                              ; preds = %225, %259
  %227 = phi i64 [ %261, %259 ], [ %199, %225 ]
  %228 = phi ptr [ %260, %259 ], [ %190, %225 ]
  %229 = and i64 %227, 4096
  %230 = icmp eq i64 %229, 0
  br i1 %230, label %311, label %231

231:                                              ; preds = %226
  %232 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %233 = load i64, ptr %232, align 8, !tbaa !46
  %234 = call ptr @mmap64(ptr noundef null, i64 noundef %233, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #20
  store ptr %234, ptr %18, align 8, !tbaa !48
  %235 = icmp eq ptr %234, inttoptr (i64 -1 to ptr)
  br i1 %235, label %236, label %262

236:                                              ; preds = %231
  %237 = tail call ptr @__errno_location() #21
  %238 = load i32, ptr %237, align 4, !tbaa !16
  %239 = icmp eq i32 %238, 12
  br i1 %239, label %245, label %240, !prof !17

240:                                              ; preds = %236
  %241 = call zeroext i1 @close_streamout_threads(ptr noundef nonnull %0) #20
  %242 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 3
  %243 = load ptr, ptr %242, align 8, !tbaa !49
  call void @free(ptr noundef %243) #20
  call void @free(ptr noundef nonnull %228) #20
  %244 = load ptr, ptr %0, align 8, !tbaa !50
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1046, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.8, ptr noundef %244)
  br label %245

245:                                              ; preds = %240, %236
  %246 = phi ptr [ null, %240 ], [ %228, %236 ]
  %247 = getelementptr inbounds %struct.rzip_state, ptr %246, i64 0, i32 11
  %248 = load i64, ptr %247, align 8, !tbaa !46
  %249 = sdiv i64 %248, 10
  %250 = mul nsw i64 %249, 9
  store i64 %250, ptr %247, align 8, !tbaa !46
  call void @round_to_page(ptr noundef nonnull %247) #20
  %251 = load i64, ptr %247, align 8, !tbaa !46
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %259, !prof !18

253:                                              ; preds = %245, %326
  %254 = phi ptr [ %327, %326 ], [ %246, %245 ]
  %255 = phi i32 [ 1076, %326 ], [ 1054, %245 ]
  %256 = call zeroext i1 @close_streamout_threads(ptr noundef nonnull %0) #20
  %257 = getelementptr inbounds %struct.rzip_state, ptr %254, i64 0, i32 3
  %258 = load ptr, ptr %257, align 8, !tbaa !49
  call void @free(ptr noundef %258) #20
  call void @free(ptr noundef nonnull %254) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef %255, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.9)
  br label %259

259:                                              ; preds = %253, %326, %245
  %260 = phi ptr [ %246, %245 ], [ %327, %326 ], [ null, %253 ]
  %261 = load i64, ptr %21, align 8, !tbaa !5
  br label %226

262:                                              ; preds = %231
  %263 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %264 = load i64, ptr %263, align 8, !tbaa !46
  %265 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 10
  store i64 %264, ptr %265, align 8, !tbaa !45
  %266 = icmp sgt i64 %264, 0
  br i1 %266, label %267, label %307

267:                                              ; preds = %262, %302
  %268 = phi i64 [ %303, %302 ], [ 0, %262 ]
  %269 = phi ptr [ %304, %302 ], [ %234, %262 ]
  %270 = phi i64 [ %305, %302 ], [ %264, %262 ]
  %271 = call i64 @llvm.smin.i64(i64 %270, i64 1048576000)
  %272 = load ptr, ptr %170, align 8, !tbaa !51
  %273 = call i32 @fileno(ptr noundef %272) #20
  %274 = call i64 @read(i32 noundef %273, ptr noundef %269, i64 noundef %271) #20
  %275 = icmp slt i64 %274, 0
  br i1 %275, label %276, label %278, !prof !18

276:                                              ; preds = %267
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 828, ptr nonnull poison, ptr noundef nonnull @__func__.mmap_stdin, ptr noundef nonnull @.str.36)
  %277 = add nsw i64 %274, %268
  br label %302

278:                                              ; preds = %267
  %279 = add nsw i64 %274, %268
  %280 = icmp eq i64 %274, 0
  br i1 %280, label %281, label %302

281:                                              ; preds = %278
  %282 = load i64, ptr %21, align 8, !tbaa !5
  %283 = and i64 %282, 2048
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %281
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 832, ptr nonnull poison, ptr noundef nonnull @__func__.mmap_stdin, ptr noundef nonnull @.str.37, i64 noundef %279)
  br label %286

286:                                              ; preds = %285, %281
  %287 = icmp eq i64 %279, 0
  %288 = load i64, ptr %265, align 8, !tbaa !45
  br i1 %287, label %291, label %289, !prof !18

289:                                              ; preds = %286
  %290 = call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef %234, i64 noundef %288, i64 noundef %279, i32 noundef 0) #20
  br label %295

291:                                              ; preds = %286
  %292 = load i64, ptr %169, align 8, !tbaa !47
  %293 = call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef %234, i64 noundef %288, i64 noundef %292, i32 noundef 0) #20
  %294 = load i64, ptr %169, align 8, !tbaa !47
  br label %295

295:                                              ; preds = %291, %289
  %296 = phi i64 [ %294, %291 ], [ %279, %289 ]
  %297 = phi ptr [ %293, %291 ], [ %290, %289 ]
  store i64 %296, ptr %263, align 8
  store i64 %279, ptr %265, align 8
  %298 = icmp eq ptr %297, inttoptr (i64 -1 to ptr)
  br i1 %298, label %299, label %300, !prof !18

299:                                              ; preds = %295
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 843, ptr nonnull poison, ptr noundef nonnull @__func__.mmap_stdin, ptr noundef nonnull @.str.38)
  br label %300

300:                                              ; preds = %299, %295
  %301 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 16
  store i8 1, ptr %301, align 8, !tbaa !37
  store i8 1, ptr %171, align 8, !tbaa !52
  br label %307

302:                                              ; preds = %278, %276
  %303 = phi i64 [ %277, %276 ], [ %279, %278 ]
  %304 = getelementptr inbounds i8, ptr %269, i64 %274
  %305 = sub nsw i64 %270, %274
  %306 = icmp sgt i64 %305, 0
  br i1 %306, label %267, label %307, !llvm.loop !53

307:                                              ; preds = %302, %262, %300
  %308 = phi i64 [ %279, %300 ], [ 0, %262 ], [ %303, %302 ]
  %309 = load i64, ptr %124, align 8, !tbaa !22
  %310 = add nsw i64 %309, %308
  store i64 %310, ptr %124, align 8, !tbaa !22
  br label %346

311:                                              ; preds = %226
  %312 = load ptr, ptr %18, align 8, !tbaa !48
  %313 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %314 = load i64, ptr %313, align 8, !tbaa !46
  %315 = call ptr @mmap64(ptr noundef %312, i64 noundef %314, i32 noundef 1, i32 noundef 1, i32 noundef %1, i64 noundef %209) #20
  store ptr %315, ptr %18, align 8, !tbaa !48
  %316 = icmp eq ptr %315, inttoptr (i64 -1 to ptr)
  br i1 %316, label %317, label %334

317:                                              ; preds = %311
  %318 = tail call ptr @__errno_location() #21
  %319 = load i32, ptr %318, align 4, !tbaa !16
  %320 = icmp eq i32 %319, 12
  br i1 %320, label %326, label %321, !prof !17

321:                                              ; preds = %317
  %322 = call zeroext i1 @close_streamout_threads(ptr noundef nonnull %0) #20
  %323 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 3
  %324 = load ptr, ptr %323, align 8, !tbaa !49
  call void @free(ptr noundef %324) #20
  call void @free(ptr noundef nonnull %228) #20
  %325 = load ptr, ptr %0, align 8, !tbaa !50
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1068, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.8, ptr noundef %325)
  br label %326

326:                                              ; preds = %321, %317
  %327 = phi ptr [ null, %321 ], [ %228, %317 ]
  %328 = getelementptr inbounds %struct.rzip_state, ptr %327, i64 0, i32 11
  %329 = load i64, ptr %328, align 8, !tbaa !46
  %330 = sdiv i64 %329, 10
  %331 = mul nsw i64 %330, 9
  store i64 %331, ptr %328, align 8, !tbaa !46
  call void @round_to_page(ptr noundef nonnull %328) #20
  %332 = load i64, ptr %328, align 8, !tbaa !46
  %333 = icmp eq i64 %332, 0
  br i1 %333, label %253, label %259, !prof !18

334:                                              ; preds = %311
  %335 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %336 = load i64, ptr %335, align 8, !tbaa !46
  %337 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 10
  %338 = load i64, ptr %337, align 8, !tbaa !45
  %339 = icmp slt i64 %336, %338
  br i1 %339, label %340, label %346

340:                                              ; preds = %334
  %341 = load i64, ptr %21, align 8, !tbaa !5
  %342 = and i64 %341, 2048
  %343 = icmp eq i64 %342, 0
  br i1 %343, label %345, label %344

344:                                              ; preds = %340
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1081, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.10, i64 noundef %336, i64 noundef %338)
  br label %345

345:                                              ; preds = %344, %340
  store ptr @sliding_mcpy, ptr %164, align 8, !tbaa !41
  store ptr @sliding_next_tag, ptr %165, align 8, !tbaa !42
  store ptr @sliding_full_tag, ptr %166, align 8, !tbaa !43
  store ptr @sliding_match_len, ptr %167, align 8, !tbaa !44
  br label %346

346:                                              ; preds = %307, %345, %334
  %347 = load i64, ptr %21, align 8, !tbaa !5
  %348 = and i64 %347, 2048
  %349 = icmp eq i64 %348, 0
  br i1 %349, label %353, label %350

350:                                              ; preds = %346
  %351 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %352 = load i64, ptr %351, align 8, !tbaa !46
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1088, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.11, i64 noundef %352)
  br label %353

353:                                              ; preds = %350, %346
  %354 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 10
  %355 = load i64, ptr %354, align 8, !tbaa !45
  %356 = load i64, ptr %172, align 8, !tbaa !29
  %357 = icmp sgt i64 %355, %356
  br i1 %357, label %358, label %363

358:                                              ; preds = %353
  %359 = load i64, ptr %21, align 8, !tbaa !5
  %360 = and i64 %359, 3072
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %363, label %362

362:                                              ; preds = %358
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1091, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.12)
  br label %363

363:                                              ; preds = %358, %362, %353
  %364 = icmp eq i32 %191, 0
  br i1 %364, label %365, label %387

365:                                              ; preds = %363
  %366 = load i64, ptr %21, align 8, !tbaa !5
  %367 = and i64 %366, 4096
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %369, label %387

369:                                              ; preds = %365
  %370 = load i64, ptr %354, align 8, !tbaa !45
  %371 = icmp eq i64 %370, 0
  br i1 %371, label %387, label %372

372:                                              ; preds = %369
  %373 = load i64, ptr %168, align 8, !tbaa !19
  %374 = sdiv i64 %373, %370
  %375 = srem i64 %373, %370
  %376 = icmp ne i64 %375, 0
  %377 = zext i1 %376 to i64
  %378 = add nsw i64 %374, %377
  %379 = trunc i64 %378 to i32
  %380 = icmp eq i32 %379, 1
  %381 = and i64 %366, 3072
  %382 = icmp eq i64 %381, 0
  br i1 %380, label %383, label %385

383:                                              ; preds = %372
  br i1 %382, label %387, label %384

384:                                              ; preds = %383
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1096, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.13)
  br label %387

385:                                              ; preds = %372
  br i1 %382, label %387, label %386

386:                                              ; preds = %385
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1098, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.14, i32 noundef %379)
  br label %387

387:                                              ; preds = %384, %383, %386, %385, %369, %365, %363
  %388 = phi i32 [ %191, %363 ], [ 0, %365 ], [ 1, %384 ], [ 1, %383 ], [ %379, %386 ], [ %379, %385 ], [ 0, %369 ]
  store i64 %209, ptr %173, align 8, !tbaa !54
  %389 = load i64, ptr %21, align 8, !tbaa !5
  %390 = and i64 %389, 2048
  %391 = icmp eq i64 %390, 0
  br i1 %391, label %394, label %392

392:                                              ; preds = %387
  %393 = load i64, ptr %354, align 8, !tbaa !45
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1102, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.15, i64 noundef %393)
  br label %394

394:                                              ; preds = %392, %387
  %395 = load i64, ptr %354, align 8, !tbaa !45
  br label %396

396:                                              ; preds = %396, %394
  %397 = phi i64 [ %400, %396 ], [ 8, %394 ]
  %398 = ashr i64 %395, %397
  %399 = icmp sgt i64 %398, 0
  %400 = add nuw i64 %397, 1
  br i1 %399, label %396, label %401, !llvm.loop !55

401:                                              ; preds = %396
  %402 = lshr i64 %397, 3
  %403 = trunc i64 %402 to i8
  %404 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 12
  %405 = and i64 %397, 7
  %406 = icmp ne i64 %405, 0
  %407 = zext i1 %406 to i8
  %408 = add i8 %407, %403
  store i8 %408, ptr %404, align 8, !tbaa !56
  %409 = load i64, ptr %21, align 8, !tbaa !5
  %410 = and i64 %409, 2048
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %415, label %412

412:                                              ; preds = %401
  %413 = sext i8 %408 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1114, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.16, i32 noundef %413)
  %414 = load i64, ptr %21, align 8, !tbaa !5
  br label %415

415:                                              ; preds = %412, %401
  %416 = phi i64 [ %414, %412 ], [ %409, %401 ]
  %417 = and i64 %416, 4096
  %418 = icmp eq i64 %417, 0
  br i1 %418, label %426, label %419

419:                                              ; preds = %415
  %420 = sub nsw i64 0, %194
  %421 = sitofp i64 %420 to double
  %422 = fmul double %421, 1.000000e+02
  %423 = load i64, ptr %124, align 8, !tbaa !22
  %424 = sitofp i64 %423 to double
  %425 = fdiv double %422, %424
  br label %433

426:                                              ; preds = %415
  %427 = load i64, ptr %124, align 8, !tbaa !22
  %428 = sub nsw i64 %427, %194
  %429 = sitofp i64 %428 to double
  %430 = fmul double %429, 1.000000e+02
  %431 = sitofp i64 %427 to double
  %432 = fdiv double %430, %431
  br label %433

433:                                              ; preds = %426, %419
  %434 = phi double [ %431, %426 ], [ %424, %419 ]
  %435 = phi double [ %432, %426 ], [ %425, %419 ]
  %436 = load i64, ptr %354, align 8, !tbaa !45
  %437 = sitofp i64 %436 to double
  %438 = fdiv double %437, %434
  %439 = add nuw nsw i32 %192, 1
  %440 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 16
  %441 = load i8, ptr %440, align 8, !tbaa !37
  %442 = icmp eq i8 %441, 0
  %443 = select i1 %442, i32 %388, i32 %439
  %444 = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #20
  %445 = icmp sgt i64 %195, 0
  %446 = fcmp ogt double %435, 1.000000e+02
  %447 = select i1 %445, i1 %446, i1 false
  %448 = load i64, ptr %13, align 8, !tbaa !57
  br i1 %447, label %449, label %485

449:                                              ; preds = %433
  %450 = load i64, ptr %14, align 8, !tbaa !57
  %451 = sub nsw i64 %448, %450
  %452 = trunc i64 %451 to i32
  %453 = uitofp i32 %452 to double
  %454 = fdiv double %435, 1.000000e+02
  %455 = fdiv double %453, %454
  %456 = fptoui double %455 to i32
  %457 = udiv i32 %452, 3600
  %458 = udiv i32 %452, 60
  %459 = urem i32 %458, 60
  %460 = urem i32 %452, 60
  %461 = sub i32 %456, %452
  %462 = udiv i32 %461, 3600
  %463 = udiv i32 %461, 60
  %464 = urem i32 %463, 60
  %465 = urem i32 %461, 60
  %466 = sdiv i64 %193, 1048576
  %467 = sitofp i64 %466 to double
  %468 = sub nsw i64 %448, %195
  %469 = sitofp i64 %468 to double
  %470 = fdiv double %467, %469
  %471 = load i64, ptr %21, align 8, !tbaa !5
  %472 = and i64 %471, 4096
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %477, label %474

474:                                              ; preds = %449
  %475 = load i8, ptr %440, align 8, !tbaa !37
  %476 = icmp eq i8 %475, 0
  br i1 %476, label %481, label %477

477:                                              ; preds = %449, %474
  %478 = and i64 %471, 3072
  %479 = icmp eq i64 %478, 0
  br i1 %479, label %485, label %480

480:                                              ; preds = %477
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1145, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.17, i32 noundef %439, i32 noundef %443, i32 noundef %457, i32 noundef %459, i32 noundef %460, i32 noundef %462, i32 noundef %464, i32 noundef %465, double noundef %470)
  br label %485

481:                                              ; preds = %474
  %482 = and i64 %471, 3072
  %483 = icmp eq i64 %482, 0
  br i1 %483, label %485, label %484

484:                                              ; preds = %481
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1148, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.18, i32 noundef %439, i32 noundef %457, i32 noundef %459, i32 noundef %460, double noundef %470)
  br label %485

485:                                              ; preds = %433, %480, %477, %484, %481
  %486 = load i64, ptr %354, align 8, !tbaa !45
  %487 = icmp eq i64 %486, %194
  br i1 %487, label %488, label %489

488:                                              ; preds = %485
  store i8 1, ptr %171, align 8, !tbaa !52
  br label %489

489:                                              ; preds = %488, %485
  %490 = load i64, ptr %21, align 8, !tbaa !5
  %491 = and i64 %490, 4096
  %492 = icmp eq i64 %491, 0
  br i1 %492, label %493, label %501

493:                                              ; preds = %489
  %494 = load i64, ptr %169, align 8, !tbaa !47
  store i64 %494, ptr %174, align 8, !tbaa !59
  %495 = call ptr @mmap64(ptr noundef null, i64 noundef %494, i32 noundef 1, i32 noundef 1, i32 noundef %1, i64 noundef %209) #20
  store ptr %495, ptr %175, align 8, !tbaa !60
  %496 = icmp eq ptr %495, inttoptr (i64 -1 to ptr)
  br i1 %496, label %497, label %498, !prof !18

497:                                              ; preds = %493
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 864, ptr nonnull poison, ptr noundef nonnull @__func__.init_sliding_mmap, ptr noundef nonnull @.str.46)
  br label %498

498:                                              ; preds = %497, %493
  %499 = load i64, ptr %174, align 8, !tbaa !59
  store i64 %499, ptr %176, align 8, !tbaa !61
  store i64 0, ptr %177, align 8, !tbaa !62
  %500 = load i64, ptr %354, align 8, !tbaa !45
  br label %501

501:                                              ; preds = %498, %489
  %502 = phi i64 [ %500, %498 ], [ %486, %489 ]
  store i64 0, ptr %178, align 8, !tbaa !63
  store i64 0, ptr %179, align 8, !tbaa !64
  %503 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 11
  %504 = load i64, ptr %503, align 8, !tbaa !46
  store i64 %504, ptr %180, align 8, !tbaa !65
  store i64 %502, ptr %181, align 8, !tbaa !66
  store i32 %1, ptr %182, align 8, !tbaa !67
  %505 = load i8, ptr %404, align 8, !tbaa !56
  %506 = call ptr @open_stream_out(ptr noundef nonnull %0, i32 noundef %2, i32 noundef 2, i64 noundef %502, i8 noundef signext %505) #20
  store ptr %506, ptr %228, align 8, !tbaa !68
  %507 = icmp eq ptr %506, null
  br i1 %507, label %508, label %509, !prof !18

508:                                              ; preds = %501
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 887, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_chunk, ptr noundef nonnull @.str.42)
  br label %509

509:                                              ; preds = %508, %501
  %510 = load i64, ptr %21, align 8, !tbaa !5
  %511 = and i64 %510, 3072
  %512 = icmp eq i64 %511, 0
  br i1 %512, label %514, label %513

513:                                              ; preds = %509
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 889, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_chunk, ptr noundef nonnull @.str.43)
  br label %514

514:                                              ; preds = %513, %509
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #20
  store i64 0, ptr %11, align 8, !tbaa !38
  %515 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 1
  %516 = load ptr, ptr %515, align 8, !tbaa !32
  %517 = getelementptr inbounds %struct.level, ptr %516, i64 0, i32 1
  %518 = load i32, ptr %517, align 8, !tbaa !69
  %519 = shl nsw i32 -1, %518
  %520 = xor i32 %519, -1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 3
  %523 = load ptr, ptr %522, align 8, !tbaa !49
  %524 = icmp eq ptr %523, null
  br i1 %524, label %532, label %525

525:                                              ; preds = %514
  %526 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 4
  %527 = load i8, ptr %526, align 8, !tbaa !71
  %528 = zext i8 %527 to i32
  %529 = shl nuw i32 1, %528
  %530 = sext i32 %529 to i64
  %531 = shl nsw i64 %530, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %523, i8 0, i64 %531, i1 false)
  br label %561

532:                                              ; preds = %514
  %533 = load i64, ptr %516, align 8, !tbaa !72
  %534 = shl i64 %533, 16
  br label %535

535:                                              ; preds = %535, %532
  %536 = phi i8 [ 0, %532 ], [ %541, %535 ]
  %537 = sext i8 %536 to i32
  %538 = shl nuw i32 1, %537
  %539 = zext i32 %538 to i64
  %540 = icmp sgt i64 %534, %539
  %541 = add i8 %536, 1
  br i1 %540, label %535, label %542, !llvm.loop !73

542:                                              ; preds = %535
  %543 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 4
  store i8 %536, ptr %543, align 8, !tbaa !71
  %544 = load i64, ptr %21, align 8, !tbaa !5
  %545 = and i64 %544, 2048
  %546 = icmp eq i64 %545, 0
  br i1 %546, label %549, label %547

547:                                              ; preds = %542
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 624, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.47, i64 noundef %534, i32 noundef %537, i64 noundef %533)
  %548 = load i8, ptr %543, align 8, !tbaa !71
  br label %549

549:                                              ; preds = %547, %542
  %550 = phi i8 [ %548, %547 ], [ %536, %542 ]
  %551 = zext i8 %550 to i32
  %552 = shl nuw i32 1, %551
  %553 = sdiv i32 %552, 3
  %554 = shl nsw i32 %553, 1
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 6
  store i64 %555, ptr %556, align 8, !tbaa !74
  %557 = sext i32 %552 to i64
  %558 = call noalias ptr @calloc(i64 noundef 16, i64 noundef %557) #22
  store ptr %558, ptr %522, align 8, !tbaa !49
  %559 = icmp eq ptr %558, null
  br i1 %559, label %560, label %561, !prof !18

560:                                              ; preds = %549
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 630, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.48)
  br label %561

561:                                              ; preds = %560, %549, %525
  %562 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 7
  store i64 %521, ptr %562, align 8, !tbaa !75
  %563 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 8
  store i64 0, ptr %563, align 8, !tbaa !76
  %564 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 13
  store i32 0, ptr %564, align 4, !tbaa !77
  %565 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 5
  store i64 0, ptr %565, align 8, !tbaa !78
  %566 = load i64, ptr %354, align 8, !tbaa !45
  %567 = add nsw i64 %566, -31
  %568 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 9
  store i64 0, ptr %568, align 8, !tbaa !79
  %569 = icmp sgt i64 %566, 31
  br i1 %569, label %570, label %892, !prof !17

570:                                              ; preds = %561
  %571 = load ptr, ptr %166, align 8, !tbaa !43
  %572 = call i64 %571(ptr noundef nonnull %0, ptr noundef nonnull %228, i64 noundef 0) #20
  store i64 %572, ptr %11, align 8, !tbaa !38
  %573 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 4
  %574 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 17, i32 5
  %575 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 17, i32 6
  %576 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 17
  %577 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 6
  %578 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 17, i32 3
  br label %579

579:                                              ; preds = %884, %570
  %580 = phi i64 [ 0, %570 ], [ %890, %884 ]
  %581 = phi i64 [ 0, %570 ], [ %889, %884 ]
  %582 = phi i64 [ %521, %570 ], [ %888, %884 ]
  %583 = phi i32 [ 0, %570 ], [ %682, %884 ]
  %584 = phi i64 [ 0, %570 ], [ %887, %884 ]
  %585 = phi i64 [ 0, %570 ], [ %886, %884 ]
  %586 = phi i64 [ 0, %570 ], [ %885, %884 ]
  %587 = phi i32 [ 0, %570 ], [ %681, %884 ]
  %588 = add nsw i64 %581, 1
  store i64 %588, ptr %179, align 8, !tbaa !64
  %589 = load i64, ptr %178, align 8, !tbaa !63
  %590 = load i64, ptr %180, align 8, !tbaa !65
  %591 = add nsw i64 %590, %589
  %592 = icmp slt i64 %581, %591
  br i1 %592, label %623, label %593, !prof !17

593:                                              ; preds = %579
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #20
  store i64 %588, ptr %4, align 8, !tbaa !38
  call void @round_to_page(ptr noundef nonnull %4) #20
  %594 = load i64, ptr %21, align 8, !tbaa !5
  %595 = and i64 %594, 2048
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %599, label %597

597:                                              ; preds = %593
  %598 = load i64, ptr %4, align 8, !tbaa !38
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 108, ptr nonnull poison, ptr noundef nonnull @__func__.remap_low_sb, ptr noundef nonnull @.str.54, i64 noundef %598)
  br label %599

599:                                              ; preds = %597, %593
  %600 = load ptr, ptr %18, align 8, !tbaa !48
  %601 = load i64, ptr %180, align 8, !tbaa !65
  %602 = call i32 @munmap(ptr noundef %600, i64 noundef %601) #20
  %603 = icmp eq i32 %602, 0
  br i1 %603, label %605, label %604, !prof !17

604:                                              ; preds = %599
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 110, ptr nonnull poison, ptr noundef nonnull @__func__.remap_low_sb, ptr noundef nonnull @.str.55)
  br label %605

605:                                              ; preds = %604, %599
  %606 = load i64, ptr %4, align 8, !tbaa !38
  %607 = load i64, ptr %180, align 8, !tbaa !65
  %608 = add nsw i64 %607, %606
  %609 = load i64, ptr %181, align 8, !tbaa !66
  %610 = icmp sgt i64 %608, %609
  br i1 %610, label %611, label %613

611:                                              ; preds = %605
  %612 = sub nsw i64 %609, %606
  store i64 %612, ptr %180, align 8, !tbaa !65
  br label %613

613:                                              ; preds = %611, %605
  %614 = phi i64 [ %612, %611 ], [ %607, %605 ]
  store i64 %606, ptr %178, align 8, !tbaa !63
  %615 = load ptr, ptr %18, align 8, !tbaa !48
  %616 = load i32, ptr %182, align 8, !tbaa !67
  %617 = load i64, ptr %173, align 8, !tbaa !54
  %618 = add nsw i64 %617, %606
  %619 = call ptr @mmap64(ptr noundef %615, i64 noundef %614, i32 noundef 1, i32 noundef 1, i32 noundef %616, i64 noundef %618) #20
  store ptr %619, ptr %18, align 8, !tbaa !48
  %620 = icmp eq ptr %619, inttoptr (i64 -1 to ptr)
  br i1 %620, label %621, label %622, !prof !18

621:                                              ; preds = %613
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 116, ptr nonnull poison, ptr noundef nonnull @__func__.remap_low_sb, ptr noundef nonnull @.str.56)
  br label %622

622:                                              ; preds = %613, %621
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #20
  br label %623

623:                                              ; preds = %622, %579
  %624 = and i64 %588, 127
  %625 = icmp eq i64 %624, 0
  br i1 %625, label %626, label %680

626:                                              ; preds = %623
  %627 = load i64, ptr %354, align 8, !tbaa !45
  %628 = icmp eq i64 %627, 0
  br i1 %628, label %680, label %629, !prof !17

629:                                              ; preds = %626
  %630 = sitofp i64 %588 to double
  %631 = fmul double %630, 1.000000e+02
  %632 = fmul double %438, %631
  %633 = sitofp i64 %627 to double
  %634 = fdiv double %632, %633
  %635 = fadd double %435, %634
  %636 = fptosi double %635 to i32
  %637 = mul nsw i64 %588, 100
  %638 = sdiv i64 %637, %567
  %639 = icmp eq i32 %583, %636
  %640 = sext i32 %587 to i64
  %641 = icmp eq i64 %638, %640
  %642 = select i1 %639, i1 %641, i1 false
  br i1 %642, label %680, label %643

643:                                              ; preds = %629
  %644 = load i64, ptr %21, align 8, !tbaa !5
  %645 = and i64 %644, 4096
  %646 = icmp eq i64 %645, 0
  br i1 %646, label %653, label %647

647:                                              ; preds = %643
  %648 = load i8, ptr %440, align 8, !tbaa !37
  %649 = icmp eq i8 %648, 0
  %650 = and i64 %644, 1
  %651 = icmp eq i64 %650, 0
  %652 = select i1 %649, i1 true, i1 %651
  br i1 %652, label %659, label %656

653:                                              ; preds = %643
  %654 = and i64 %644, 1
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %663, label %656

656:                                              ; preds = %653, %647
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 663, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.49, i32 noundef %636)
  %657 = load i64, ptr %21, align 8, !tbaa !5
  %658 = and i64 %657, 1
  br label %659

659:                                              ; preds = %656, %647
  %660 = phi i64 [ %650, %647 ], [ %658, %656 ]
  %661 = icmp eq i64 %660, 0
  br i1 %661, label %663, label %662

662:                                              ; preds = %659
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 664, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.50, i64 noundef %638)
  br label %663

663:                                              ; preds = %662, %659, %653
  %664 = load ptr, ptr %183, align 8, !tbaa !80
  %665 = icmp eq ptr %664, null
  br i1 %665, label %666, label %668

666:                                              ; preds = %663
  %667 = trunc i64 %638 to i32
  br label %680

668:                                              ; preds = %663
  %669 = load ptr, ptr %184, align 8, !tbaa !81
  %670 = load i64, ptr %21, align 8, !tbaa !5
  %671 = and i64 %670, 4096
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %668
  %674 = load i8, ptr %440, align 8, !tbaa !37
  %675 = icmp eq i8 %674, 0
  br i1 %675, label %677, label %676

676:                                              ; preds = %673, %668
  br label %677

677:                                              ; preds = %676, %673
  %678 = phi i32 [ %636, %676 ], [ -1, %673 ]
  %679 = trunc i64 %638 to i32
  call void %664(ptr noundef %669, i32 noundef %678, i32 noundef %679) #20
  br label %680

680:                                              ; preds = %677, %666, %629, %626, %623
  %681 = phi i32 [ %587, %626 ], [ %587, %629 ], [ %587, %623 ], [ %667, %666 ], [ %679, %677 ]
  %682 = phi i32 [ %583, %626 ], [ %583, %629 ], [ %583, %623 ], [ %636, %666 ], [ %636, %677 ]
  %683 = load ptr, ptr %165, align 8, !tbaa !42
  call void %683(ptr noundef nonnull %0, ptr noundef nonnull %228, i64 noundef %588, ptr noundef nonnull %11) #20
  %684 = load i64, ptr %11, align 8, !tbaa !38
  %685 = load i64, ptr %562, align 8, !tbaa !75
  %686 = and i64 %685, %684
  %687 = icmp eq i64 %686, %685
  br i1 %687, label %688, label %884, !llvm.loop !82

688:                                              ; preds = %680
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #20
  store i64 0, ptr %10, align 8, !tbaa !38
  %689 = load i8, ptr %573, align 8, !tbaa !71
  %690 = zext i8 %689 to i32
  %691 = shl nsw i32 -1, %690
  %692 = xor i32 %691, -1
  %693 = sext i32 %692 to i64
  %694 = and i64 %684, %693
  %695 = load ptr, ptr %522, align 8, !tbaa !49
  %696 = getelementptr inbounds %struct.hash_entry, ptr %695, i64 %694
  %697 = load i64, ptr %696, align 8, !tbaa !83
  %698 = getelementptr inbounds %struct.hash_entry, ptr %695, i64 %694, i32 1
  %699 = load i64, ptr %698, align 8, !tbaa !85
  %700 = or i64 %699, %697
  %701 = icmp eq i64 %700, 0
  br i1 %701, label %752, label %702

702:                                              ; preds = %688, %732
  %703 = phi ptr [ %733, %732 ], [ %695, %688 ]
  %704 = phi i8 [ %734, %732 ], [ %689, %688 ]
  %705 = phi i64 [ %735, %732 ], [ 0, %688 ]
  %706 = phi i64 [ %736, %732 ], [ 0, %688 ]
  %707 = phi i64 [ %747, %732 ], [ %699, %688 ]
  %708 = phi i64 [ %745, %732 ], [ %697, %688 ]
  %709 = phi ptr [ %744, %732 ], [ %696, %688 ]
  %710 = phi i64 [ %743, %732 ], [ %694, %688 ]
  %711 = phi i64 [ %737, %732 ], [ 0, %688 ]
  %712 = icmp eq i64 %707, %684
  br i1 %712, label %713, label %732

713:                                              ; preds = %702
  %714 = load ptr, ptr %167, align 8, !tbaa !44
  %715 = call i64 %714(ptr noundef %0, ptr noundef nonnull %228, i64 noundef %588, i64 noundef %708, i64 noundef %567, ptr noundef nonnull %10) #20
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %723, label %717

717:                                              ; preds = %713
  %718 = icmp sgt i64 %715, %711
  br i1 %718, label %719, label %723

719:                                              ; preds = %717
  %720 = load i64, ptr %709, align 8, !tbaa !83
  %721 = load i64, ptr %10, align 8, !tbaa !38
  %722 = sub nsw i64 %720, %721
  br label %723

723:                                              ; preds = %719, %717, %713
  %724 = phi i64 [ %705, %713 ], [ %721, %719 ], [ %705, %717 ]
  %725 = phi i64 [ %706, %713 ], [ %722, %719 ], [ %706, %717 ]
  %726 = phi ptr [ %575, %713 ], [ %574, %719 ], [ %574, %717 ]
  %727 = phi i64 [ %711, %713 ], [ %715, %719 ], [ %711, %717 ]
  %728 = load i64, ptr %726, align 8, !tbaa !38
  %729 = add nsw i64 %728, 1
  store i64 %729, ptr %726, align 8, !tbaa !38
  %730 = load i8, ptr %573, align 8, !tbaa !71
  %731 = load ptr, ptr %522, align 8, !tbaa !49
  br label %732

732:                                              ; preds = %723, %702
  %733 = phi ptr [ %731, %723 ], [ %703, %702 ]
  %734 = phi i8 [ %730, %723 ], [ %704, %702 ]
  %735 = phi i64 [ %724, %723 ], [ %705, %702 ]
  %736 = phi i64 [ %725, %723 ], [ %706, %702 ]
  %737 = phi i64 [ %727, %723 ], [ %711, %702 ]
  %738 = add nsw i64 %710, 1
  %739 = zext i8 %734 to i32
  %740 = shl nsw i32 -1, %739
  %741 = xor i32 %740, -1
  %742 = sext i32 %741 to i64
  %743 = and i64 %738, %742
  %744 = getelementptr inbounds %struct.hash_entry, ptr %733, i64 %743
  %745 = load i64, ptr %744, align 8, !tbaa !83
  %746 = getelementptr inbounds %struct.hash_entry, ptr %733, i64 %743, i32 1
  %747 = load i64, ptr %746, align 8, !tbaa !85
  %748 = or i64 %747, %745
  %749 = icmp eq i64 %748, 0
  br i1 %749, label %750, label %702, !llvm.loop !86

750:                                              ; preds = %732
  %751 = load i64, ptr %11, align 8, !tbaa !38
  br label %752

752:                                              ; preds = %750, %688
  %753 = phi i64 [ %684, %688 ], [ %751, %750 ]
  %754 = phi i64 [ 0, %688 ], [ %735, %750 ]
  %755 = phi i64 [ 0, %688 ], [ %736, %750 ]
  %756 = phi i64 [ 0, %688 ], [ %737, %750 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #20
  %757 = and i64 %753, %582
  %758 = icmp eq i64 %757, %582
  br i1 %758, label %759, label %817

759:                                              ; preds = %752
  %760 = load i64, ptr %576, align 8, !tbaa !87
  %761 = add nsw i64 %760, 1
  store i64 %761, ptr %576, align 8, !tbaa !87
  %762 = load i64, ptr %565, align 8, !tbaa !78
  %763 = add nsw i64 %762, 1
  store i64 %763, ptr %565, align 8, !tbaa !78
  call fastcc void @insert_hash(ptr noundef nonnull %228, i64 noundef %753, i64 noundef %588)
  %764 = load i64, ptr %565, align 8, !tbaa !78
  %765 = load i64, ptr %577, align 8, !tbaa !74
  %766 = icmp sgt i64 %764, %765
  br i1 %766, label %767, label %817

767:                                              ; preds = %759
  %768 = load i64, ptr %562, align 8, !tbaa !75
  %769 = load i64, ptr %563, align 8, !tbaa !76
  br label %770

770:                                              ; preds = %813, %767
  %771 = phi i64 [ 0, %813 ], [ %769, %767 ]
  %772 = phi i64 [ %774, %813 ], [ %768, %767 ]
  %773 = shl i64 %772, 1
  %774 = or i64 %773, 1
  %775 = icmp eq i64 %771, 0
  br i1 %775, label %776, label %788

776:                                              ; preds = %770
  %777 = load i64, ptr %21, align 8, !tbaa !5
  %778 = and i64 %777, 2048
  %779 = icmp eq i64 %778, 0
  br i1 %779, label %780, label %785

780:                                              ; preds = %776
  %781 = load i8, ptr %573, align 8, !tbaa !71
  %782 = zext i8 %781 to i32
  %783 = shl nuw i32 1, %782
  %784 = zext i32 %783 to i64
  br label %795

785:                                              ; preds = %776
  %786 = trunc i64 %772 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 383, ptr nonnull poison, ptr noundef nonnull @__func__.clean_one_from_hash, ptr noundef nonnull @.str.57, i32 noundef %786)
  %787 = load i64, ptr %563, align 8, !tbaa !76
  br label %788

788:                                              ; preds = %785, %770
  %789 = phi i64 [ %787, %785 ], [ %771, %770 ]
  %790 = load i8, ptr %573, align 8, !tbaa !71
  %791 = zext i8 %790 to i32
  %792 = shl nuw i32 1, %791
  %793 = zext i32 %792 to i64
  %794 = icmp slt i64 %789, %793
  br i1 %794, label %795, label %813

795:                                              ; preds = %788, %780
  %796 = phi i64 [ %784, %780 ], [ %793, %788 ]
  %797 = phi i64 [ 0, %780 ], [ %789, %788 ]
  %798 = load ptr, ptr %522, align 8, !tbaa !49
  br label %799

799:                                              ; preds = %810, %795
  %800 = phi i64 [ %797, %795 ], [ %811, %810 ]
  %801 = getelementptr inbounds %struct.hash_entry, ptr %798, i64 %800
  %802 = load i64, ptr %801, align 8, !tbaa !83
  %803 = getelementptr inbounds %struct.hash_entry, ptr %798, i64 %800, i32 1
  %804 = load i64, ptr %803, align 8, !tbaa !85
  %805 = or i64 %804, %802
  %806 = icmp eq i64 %805, 0
  %807 = and i64 %804, %774
  %808 = icmp eq i64 %807, %774
  %809 = select i1 %806, i1 true, i1 %808
  br i1 %809, label %810, label %814

810:                                              ; preds = %799
  %811 = add i64 %800, 1
  store i64 %811, ptr %563, align 8, !tbaa !76
  %812 = icmp eq i64 %811, %796
  br i1 %812, label %813, label %799, !llvm.loop !88

813:                                              ; preds = %810, %788
  store i64 %774, ptr %562, align 8, !tbaa !75
  store i64 0, ptr %563, align 8, !tbaa !76
  br label %770

814:                                              ; preds = %799
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %801, i8 0, i64 16, i1 false)
  %815 = load i64, ptr %565, align 8, !tbaa !78
  %816 = add nsw i64 %815, -1
  store i64 %816, ptr %565, align 8, !tbaa !78
  br label %817

817:                                              ; preds = %814, %759, %752
  %818 = phi i64 [ %774, %814 ], [ %582, %759 ], [ %582, %752 ]
  %819 = icmp sgt i64 %756, %586
  %820 = sub nsw i64 %588, %754
  %821 = call i64 @llvm.smax.i64(i64 %756, i64 %586)
  %822 = select i1 %819, i64 %755, i64 %585
  %823 = select i1 %819, i64 %820, i64 %584
  %824 = icmp sgt i64 %821, 1023
  br i1 %824, label %830, label %825

825:                                              ; preds = %817
  %826 = add nsw i64 %823, 30
  %827 = icmp sge i64 %581, %826
  %828 = icmp sgt i64 %821, 30
  %829 = select i1 %827, i1 %828, i1 false
  br i1 %829, label %830, label %856

830:                                              ; preds = %825, %817
  %831 = load i64, ptr %568, align 8, !tbaa !79
  %832 = icmp slt i64 %831, %823
  br i1 %832, label %833, label %834

833:                                              ; preds = %830
  call fastcc void @put_literal(ptr noundef %0, ptr noundef nonnull %228, i64 noundef %831, i64 noundef %823)
  br label %834

834:                                              ; preds = %833, %830
  br label %835

835:                                              ; preds = %834, %835
  %836 = phi i64 [ %848, %835 ], [ %821, %834 ]
  %837 = phi i64 [ %850, %835 ], [ %822, %834 ]
  %838 = phi i64 [ %849, %835 ], [ %823, %834 ]
  %839 = call i64 @llvm.smin.i64(i64 %836, i64 65535)
  %840 = sub nsw i64 %838, %837
  %841 = load ptr, ptr %228, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9)
  store i8 1, ptr %9, align 1, !tbaa !89
  call void @write_stream(ptr noundef %0, ptr noundef %841, i32 noundef 0, ptr noundef nonnull %9, i64 noundef 1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store i64 %839, ptr %8, align 8, !tbaa !38
  call void @write_stream(ptr noundef %0, ptr noundef %841, i32 noundef 0, ptr noundef nonnull %8, i64 noundef 2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %842 = load ptr, ptr %228, align 8, !tbaa !68
  %843 = load i8, ptr %404, align 8, !tbaa !56
  %844 = sext i8 %843 to i64
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store i64 %840, ptr %7, align 8, !tbaa !38
  call void @write_stream(ptr noundef %0, ptr noundef %842, i32 noundef 0, ptr noundef nonnull %7, i64 noundef %844) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %845 = load <2 x i64>, ptr %578, align 8, !tbaa !38
  %846 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %839, i64 1
  %847 = add nsw <2 x i64> %845, %846
  store <2 x i64> %847, ptr %578, align 8, !tbaa !38
  %848 = sub nsw i64 %836, %839
  %849 = add nsw i64 %838, %839
  %850 = add nsw i64 %837, %839
  %851 = icmp eq i64 %848, 0
  br i1 %851, label %852, label %835, !llvm.loop !90

852:                                              ; preds = %835
  %853 = add nsw i64 %823, %821
  store i64 %853, ptr %568, align 8, !tbaa !79
  %854 = load ptr, ptr %166, align 8, !tbaa !43
  %855 = call i64 %854(ptr noundef %0, ptr noundef nonnull %228, i64 noundef %853) #20
  store i64 %855, ptr %11, align 8, !tbaa !38
  br label %856

856:                                              ; preds = %852, %825
  %857 = phi i64 [ 0, %852 ], [ %821, %825 ]
  %858 = phi i64 [ %853, %852 ], [ %823, %825 ]
  %859 = phi i64 [ %853, %852 ], [ %588, %825 ]
  %860 = icmp sgt i64 %859, %580
  br i1 %860, label %861, label %884

861:                                              ; preds = %856
  %862 = call i32 @sem_wait(ptr noundef nonnull %28) #20
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %867, label %864, !prof !17

864:                                              ; preds = %861
  %865 = tail call ptr @__errno_location() #21
  %866 = load i32, ptr %865, align 4, !tbaa !16
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 167, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.58, i32 noundef %866, ptr noundef nonnull %28)
  br label %867

867:                                              ; preds = %864, %861
  %868 = load i64, ptr %354, align 8, !tbaa !45
  %869 = sub nsw i64 %868, %859
  %870 = load i64, ptr %169, align 8, !tbaa !47
  %871 = call i64 @llvm.smin.i64(i64 %869, i64 %870)
  store i64 %871, ptr %186, align 8, !tbaa !91
  %872 = call noalias ptr @malloc(i64 noundef %871) #23
  store ptr %872, ptr %187, align 8, !tbaa !92
  %873 = icmp eq ptr %872, null
  br i1 %873, label %874, label %877, !prof !18

874:                                              ; preds = %867
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 718, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.51)
  %875 = load ptr, ptr %187, align 8, !tbaa !92
  %876 = load i64, ptr %186, align 8, !tbaa !91
  br label %877

877:                                              ; preds = %874, %867
  %878 = phi i64 [ %876, %874 ], [ %871, %867 ]
  %879 = phi ptr [ %875, %874 ], [ %872, %867 ]
  %880 = load ptr, ptr %164, align 8, !tbaa !41
  call void %880(ptr noundef nonnull %0, ptr noundef %879, i64 noundef %580, i64 noundef %878) #20
  store ptr %564, ptr %185, align 8, !tbaa !93
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #20
  %881 = call zeroext i1 @create_pthread(ptr noundef nonnull %0, ptr noundef nonnull %6, ptr noundef null, ptr noundef nonnull @cksumthread, ptr noundef nonnull %0) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #20
  %882 = load i64, ptr %186, align 8, !tbaa !91
  %883 = add nsw i64 %882, %580
  br label %884

884:                                              ; preds = %877, %856, %680
  %885 = phi i64 [ %586, %680 ], [ %857, %877 ], [ %857, %856 ]
  %886 = phi i64 [ %585, %680 ], [ %822, %877 ], [ %822, %856 ]
  %887 = phi i64 [ %584, %680 ], [ %858, %877 ], [ %858, %856 ]
  %888 = phi i64 [ %582, %680 ], [ %818, %877 ], [ %818, %856 ]
  %889 = phi i64 [ %588, %680 ], [ %859, %877 ], [ %859, %856 ]
  %890 = phi i64 [ %580, %680 ], [ %883, %877 ], [ %580, %856 ]
  %891 = icmp slt i64 %889, %567
  br i1 %891, label %579, label %892

892:                                              ; preds = %884, %561
  %893 = phi i64 [ 0, %561 ], [ %890, %884 ]
  %894 = load i64, ptr %21, align 8, !tbaa !5
  %895 = and i64 %894, 2048
  %896 = icmp eq i64 %895, 0
  br i1 %896, label %940, label %897

897:                                              ; preds = %892
  %898 = getelementptr inbounds %struct.rzip_state, ptr %228, i64 0, i32 4
  %899 = load i8, ptr %898, align 8, !tbaa !71
  %900 = zext i8 %899 to i32
  %901 = shl nuw i32 1, %900
  %902 = zext i32 %901 to i64
  %903 = load ptr, ptr %522, align 8, !tbaa !49
  %904 = shl nsw i32 -1, %900
  %905 = xor i32 %904, -1
  %906 = sext i32 %905 to i64
  br label %907

907:                                              ; preds = %923, %897
  %908 = phi i64 [ 0, %897 ], [ %926, %923 ]
  %909 = phi i64 [ 0, %897 ], [ %925, %923 ]
  %910 = phi i64 [ 0, %897 ], [ %924, %923 ]
  %911 = getelementptr inbounds %struct.hash_entry, ptr %903, i64 %908
  %912 = load i64, ptr %911, align 8, !tbaa !83
  %913 = getelementptr inbounds %struct.hash_entry, ptr %903, i64 %908, i32 1
  %914 = load i64, ptr %913, align 8, !tbaa !85
  %915 = or i64 %914, %912
  %916 = icmp eq i64 %915, 0
  br i1 %916, label %923, label %917

917:                                              ; preds = %907
  %918 = add nsw i64 %909, 1
  %919 = and i64 %914, %906
  %920 = icmp eq i64 %919, %908
  %921 = zext i1 %920 to i64
  %922 = add nsw i64 %910, %921
  br label %923

923:                                              ; preds = %917, %907
  %924 = phi i64 [ %910, %907 ], [ %922, %917 ]
  %925 = phi i64 [ %909, %907 ], [ %918, %917 ]
  %926 = add nuw nsw i64 %908, 1
  %927 = icmp eq i64 %926, %902
  br i1 %927, label %928, label %907, !llvm.loop !94

928:                                              ; preds = %923
  %929 = load i64, ptr %565, align 8, !tbaa !78
  %930 = icmp eq i64 %925, %929
  br i1 %930, label %932, label %931

931:                                              ; preds = %928
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 571, ptr nonnull poison, ptr noundef nonnull @__func__.show_distrib, ptr noundef nonnull @.str.59, i64 noundef %929)
  br label %932

932:                                              ; preds = %931, %928
  %933 = icmp eq i64 %925, 0
  br i1 %933, label %934, label %935

934:                                              ; preds = %932
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %0, i32 noundef 1, i32 noundef 574, ptr nonnull poison, ptr noundef nonnull @__func__.show_distrib, ptr noundef nonnull @.str.60)
  br label %940

935:                                              ; preds = %932
  %936 = sitofp i64 %924 to double
  %937 = fmul double %936, 1.000000e+02
  %938 = sitofp i64 %925 to double
  %939 = fdiv double %937, %938
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %0, i32 noundef 1, i32 noundef 577, ptr nonnull poison, ptr noundef nonnull @__func__.show_distrib, ptr noundef nonnull @.str.61, i64 noundef %925, i64 noundef %924, double noundef %939)
  br label %940

940:                                              ; preds = %935, %934, %892
  %941 = load i64, ptr %568, align 8, !tbaa !79
  %942 = load i64, ptr %354, align 8, !tbaa !45
  %943 = icmp slt i64 %941, %942
  br i1 %943, label %944, label %946

944:                                              ; preds = %940
  call fastcc void @put_literal(ptr noundef %0, ptr noundef nonnull %228, i64 noundef %941, i64 noundef %942)
  %945 = load i64, ptr %354, align 8, !tbaa !45
  br label %946

946:                                              ; preds = %944, %940
  %947 = phi i64 [ %945, %944 ], [ %942, %940 ]
  %948 = icmp sgt i64 %947, %893
  br i1 %948, label %949, label %1027

949:                                              ; preds = %946
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #20
  %950 = load i64, ptr %98, align 8, !tbaa !26
  store i64 %950, ptr %12, align 8, !tbaa !38
  call void @round_to_page(ptr noundef nonnull %12) #20
  %951 = load i64, ptr %12, align 8, !tbaa !38
  %952 = call noalias ptr @malloc(i64 noundef %951) #23
  %953 = icmp eq ptr %952, null
  br i1 %953, label %961, label %954

954:                                              ; preds = %968, %949
  %955 = phi i64 [ %951, %949 ], [ %969, %968 ]
  %956 = phi ptr [ %952, %949 ], [ %970, %968 ]
  %957 = load i64, ptr %21, align 8, !tbaa !5
  %958 = and i64 %957, 2048
  %959 = icmp eq i64 %958, 0
  br i1 %959, label %972, label %960

960:                                              ; preds = %954
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 740, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.52, i64 noundef %955)
  br label %972

961:                                              ; preds = %949, %968
  %962 = phi i64 [ %969, %968 ], [ %951, %949 ]
  %963 = sdiv i64 %962, 3
  %964 = shl nsw i64 %963, 1
  store i64 %964, ptr %12, align 8, !tbaa !38
  %965 = load i64, ptr %169, align 8, !tbaa !47
  %966 = icmp slt i64 %964, %965
  br i1 %966, label %967, label %968

967:                                              ; preds = %961
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 745, ptr nonnull poison, ptr noundef nonnull @__func__.hash_search, ptr noundef nonnull @.str.53)
  br label %968

968:                                              ; preds = %967, %961
  call void @round_to_page(ptr noundef nonnull %12) #20
  %969 = load i64, ptr %12, align 8, !tbaa !38
  %970 = call noalias ptr @malloc(i64 noundef %969) #23
  %971 = icmp eq ptr %970, null
  br i1 %971, label %961, label %954

972:                                              ; preds = %960, %954
  %973 = call i32 @sem_wait(ptr noundef nonnull %28) #20
  %974 = icmp eq i32 %973, 0
  br i1 %974, label %978, label %975, !prof !17

975:                                              ; preds = %972
  %976 = tail call ptr @__errno_location() #21
  %977 = load i32, ptr %976, align 4, !tbaa !16
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 167, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.58, i32 noundef %977, ptr noundef nonnull %28)
  br label %978

978:                                              ; preds = %975, %972
  store ptr %956, ptr %187, align 8, !tbaa !92
  %979 = load i64, ptr %354, align 8, !tbaa !45
  %980 = sub nsw i64 %979, %893
  store i64 %980, ptr %186, align 8, !tbaa !91
  %981 = load i64, ptr %12, align 8, !tbaa !38
  %982 = sdiv i64 %980, %981
  %983 = srem i64 %980, %981
  %984 = icmp sgt i64 %982, 0
  br i1 %984, label %985, label %1007

985:                                              ; preds = %978, %1002
  %986 = phi i64 [ %992, %1002 ], [ %893, %978 ]
  %987 = phi i64 [ %1003, %1002 ], [ 0, %978 ]
  %988 = load ptr, ptr %164, align 8, !tbaa !41
  %989 = load ptr, ptr %187, align 8, !tbaa !92
  %990 = load i64, ptr %12, align 8, !tbaa !38
  call void %988(ptr noundef nonnull %0, ptr noundef %989, i64 noundef %986, i64 noundef %990) #20
  %991 = load i64, ptr %12, align 8, !tbaa !38
  %992 = add nsw i64 %991, %986
  %993 = load i32, ptr %564, align 4, !tbaa !77
  %994 = load ptr, ptr %187, align 8, !tbaa !92
  %995 = call i32 @CrcUpdate(i32 noundef %993, ptr noundef %994, i64 noundef %991) #20
  store i32 %995, ptr %564, align 4, !tbaa !77
  %996 = load i64, ptr %21, align 8, !tbaa !5
  %997 = and i64 %996, 196608
  %998 = icmp eq i64 %997, 0
  br i1 %998, label %1002, label %999

999:                                              ; preds = %985
  %1000 = load ptr, ptr %187, align 8, !tbaa !92
  %1001 = load i64, ptr %12, align 8, !tbaa !38
  call void @md5_process_bytes(ptr noundef %1000, i64 noundef %1001, ptr noundef nonnull %188) #20
  br label %1002

1002:                                             ; preds = %999, %985
  %1003 = add nuw nsw i64 %987, 1
  %1004 = icmp eq i64 %1003, %982
  br i1 %1004, label %1005, label %985, !llvm.loop !95

1005:                                             ; preds = %1002
  %1006 = load ptr, ptr %187, align 8, !tbaa !92
  br label %1007

1007:                                             ; preds = %1005, %978
  %1008 = phi ptr [ %956, %978 ], [ %1006, %1005 ]
  %1009 = phi i64 [ %893, %978 ], [ %992, %1005 ]
  %1010 = load ptr, ptr %164, align 8, !tbaa !41
  call void %1010(ptr noundef nonnull %0, ptr noundef %1008, i64 noundef %1009, i64 noundef %983) #20
  %1011 = load i32, ptr %564, align 4, !tbaa !77
  %1012 = load ptr, ptr %187, align 8, !tbaa !92
  %1013 = call i32 @CrcUpdate(i32 noundef %1011, ptr noundef %1012, i64 noundef %983) #20
  store i32 %1013, ptr %564, align 4, !tbaa !77
  %1014 = load i64, ptr %21, align 8, !tbaa !5
  %1015 = and i64 %1014, 196608
  %1016 = icmp eq i64 %1015, 0
  br i1 %1016, label %1019, label %1017

1017:                                             ; preds = %1007
  %1018 = load ptr, ptr %187, align 8, !tbaa !92
  call void @md5_process_bytes(ptr noundef %1018, i64 noundef %983, ptr noundef nonnull %188) #20
  br label %1019

1019:                                             ; preds = %1017, %1007
  %1020 = load ptr, ptr %187, align 8, !tbaa !92
  call void @free(ptr noundef %1020) #20
  store ptr null, ptr %187, align 8, !tbaa !92
  %1021 = call i32 @sem_post(ptr noundef nonnull %28) #20
  %1022 = icmp eq i32 %1021, 0
  br i1 %1022, label %1026, label %1023, !prof !17

1023:                                             ; preds = %1019
  %1024 = tail call ptr @__errno_location() #21
  %1025 = load i32, ptr %1024, align 4, !tbaa !16
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 161, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.35, i32 noundef %1025, ptr noundef nonnull %28)
  br label %1026

1026:                                             ; preds = %1023, %1019
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #20
  br label %1039

1027:                                             ; preds = %946
  %1028 = call i32 @sem_wait(ptr noundef nonnull %28) #20
  %1029 = icmp eq i32 %1028, 0
  br i1 %1029, label %1033, label %1030, !prof !17

1030:                                             ; preds = %1027
  %1031 = tail call ptr @__errno_location() #21
  %1032 = load i32, ptr %1031, align 4, !tbaa !16
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 167, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.58, i32 noundef %1032, ptr noundef nonnull %28)
  br label %1033

1033:                                             ; preds = %1030, %1027
  %1034 = call i32 @sem_post(ptr noundef nonnull %28) #20
  %1035 = icmp eq i32 %1034, 0
  br i1 %1035, label %1039, label %1036, !prof !17

1036:                                             ; preds = %1033
  %1037 = tail call ptr @__errno_location() #21
  %1038 = load i32, ptr %1037, align 4, !tbaa !16
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 161, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.35, i32 noundef %1038, ptr noundef nonnull %28)
  br label %1039

1039:                                             ; preds = %1036, %1033, %1026
  call fastcc void @put_literal(ptr noundef %0, ptr noundef nonnull %228, i64 noundef 0, i64 noundef 0)
  %1040 = load ptr, ptr %228, align 8, !tbaa !68
  %1041 = load i32, ptr %564, align 4, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5)
  store i32 %1041, ptr %5, align 4, !tbaa !16
  call void @write_stream(ptr noundef %0, ptr noundef %1040, i32 noundef 0, ptr noundef nonnull %5, i64 noundef 4) #20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #20
  %1042 = load ptr, ptr %18, align 8, !tbaa !48
  %1043 = load i64, ptr %180, align 8, !tbaa !65
  %1044 = call i32 @munmap(ptr noundef %1042, i64 noundef %1043) #20
  %1045 = icmp eq i32 %1044, 0
  br i1 %1045, label %1049, label %1046, !prof !17

1046:                                             ; preds = %1039
  %1047 = load ptr, ptr %228, align 8, !tbaa !68
  %1048 = call i32 @close_stream_out(ptr noundef nonnull %0, ptr noundef %1047) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 895, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_chunk, ptr noundef nonnull @.str.44)
  br label %1049

1049:                                             ; preds = %1046, %1039
  %1050 = load i64, ptr %21, align 8, !tbaa !5
  %1051 = and i64 %1050, 4096
  %1052 = icmp eq i64 %1051, 0
  br i1 %1052, label %1053, label %1061

1053:                                             ; preds = %1049
  %1054 = load ptr, ptr %175, align 8, !tbaa !60
  %1055 = load i64, ptr %176, align 8, !tbaa !61
  %1056 = call i32 @munmap(ptr noundef %1054, i64 noundef %1055) #20
  %1057 = icmp eq i32 %1056, 0
  br i1 %1057, label %1061, label %1058, !prof !17

1058:                                             ; preds = %1053
  %1059 = load ptr, ptr %228, align 8, !tbaa !68
  %1060 = call i32 @close_stream_out(ptr noundef nonnull %0, ptr noundef %1059) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 900, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_chunk, ptr noundef nonnull @.str.44)
  br label %1061

1061:                                             ; preds = %1058, %1053, %1049
  %1062 = load ptr, ptr %228, align 8, !tbaa !68
  %1063 = call i32 @close_stream_out(ptr noundef nonnull %0, ptr noundef %1062) #20
  %1064 = icmp eq i32 %1063, 0
  br i1 %1064, label %1066, label %1065, !prof !17

1065:                                             ; preds = %1061
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 905, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_chunk, ptr noundef nonnull @.str.45)
  br label %1066

1066:                                             ; preds = %1061, %1065
  %1067 = load i64, ptr %354, align 8, !tbaa !45
  %1068 = sub nsw i64 %194, %1067
  %1069 = icmp sgt i64 %1068, 0
  br i1 %1069, label %1072, label %1070

1070:                                             ; preds = %1066, %1075, %1072
  %1071 = phi ptr [ null, %1075 ], [ %228, %1072 ], [ %228, %1066 ]
  br label %189, !llvm.loop !96

1072:                                             ; preds = %1066
  %1073 = load i8, ptr %171, align 8, !tbaa !52
  %1074 = icmp eq i8 %1073, 0
  br i1 %1074, label %1070, label %1075, !prof !17

1075:                                             ; preds = %1072
  %1076 = call zeroext i1 @close_streamout_threads(ptr noundef nonnull %0) #20
  %1077 = load ptr, ptr %522, align 8, !tbaa !49
  call void @free(ptr noundef %1077) #20
  call void @free(ptr noundef nonnull %228) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1164, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.19)
  br label %1070

1078:                                             ; preds = %200, %203
  %1079 = getelementptr inbounds %struct.rzip_state, ptr %190, i64 0, i32 3
  %1080 = load ptr, ptr %1079, align 8, !tbaa !49
  %1081 = icmp eq ptr %1080, null
  br i1 %1081, label %1083, label %1082, !prof !18

1082:                                             ; preds = %1078
  call void @free(ptr noundef nonnull %1080) #20
  store ptr null, ptr %1079, align 8, !tbaa !49
  br label %1083

1083:                                             ; preds = %1082, %1078
  %1084 = call zeroext i1 @close_streamout_threads(ptr noundef nonnull %0) #20
  br i1 %1084, label %1086, label %1085, !prof !17

1085:                                             ; preds = %1083
  call void @free(ptr noundef nonnull %190) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1172, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.20)
  br label %1086

1086:                                             ; preds = %1085, %1083
  %1087 = phi ptr [ null, %1085 ], [ %190, %1083 ]
  %1088 = load i64, ptr %21, align 8, !tbaa !5
  %1089 = and i64 %1088, 196608
  %1090 = icmp eq i64 %1089, 0
  br i1 %1090, label %1160, label %1091

1091:                                             ; preds = %1086
  %1092 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53
  %1093 = call ptr @md5_finish_ctx(ptr noundef nonnull %188, ptr noundef nonnull %1092) #20
  %1094 = load i64, ptr %21, align 8, !tbaa !5
  %1095 = and i64 %1094, 67584
  %1096 = icmp eq i64 %1095, 0
  br i1 %1096, label %1146, label %1097

1097:                                             ; preds = %1091
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1179, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.21)
  %1098 = load i8, ptr %1092, align 1, !tbaa !89
  %1099 = zext i8 %1098 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1099)
  %1100 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %1101 = load i8, ptr %1100, align 1, !tbaa !89
  %1102 = zext i8 %1101 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1102)
  %1103 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %1104 = load i8, ptr %1103, align 1, !tbaa !89
  %1105 = zext i8 %1104 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1105)
  %1106 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %1107 = load i8, ptr %1106, align 1, !tbaa !89
  %1108 = zext i8 %1107 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1108)
  %1109 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %1110 = load i8, ptr %1109, align 1, !tbaa !89
  %1111 = zext i8 %1110 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1111)
  %1112 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %1113 = load i8, ptr %1112, align 1, !tbaa !89
  %1114 = zext i8 %1113 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1114)
  %1115 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %1116 = load i8, ptr %1115, align 1, !tbaa !89
  %1117 = zext i8 %1116 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1117)
  %1118 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %1119 = load i8, ptr %1118, align 1, !tbaa !89
  %1120 = zext i8 %1119 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1120)
  %1121 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %1122 = load i8, ptr %1121, align 1, !tbaa !89
  %1123 = zext i8 %1122 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1123)
  %1124 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %1125 = load i8, ptr %1124, align 1, !tbaa !89
  %1126 = zext i8 %1125 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1126)
  %1127 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %1128 = load i8, ptr %1127, align 1, !tbaa !89
  %1129 = zext i8 %1128 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1129)
  %1130 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %1131 = load i8, ptr %1130, align 1, !tbaa !89
  %1132 = zext i8 %1131 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1132)
  %1133 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %1134 = load i8, ptr %1133, align 1, !tbaa !89
  %1135 = zext i8 %1134 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1135)
  %1136 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %1137 = load i8, ptr %1136, align 1, !tbaa !89
  %1138 = zext i8 %1137 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1138)
  %1139 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %1140 = load i8, ptr %1139, align 1, !tbaa !89
  %1141 = zext i8 %1140 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1141)
  %1142 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %1143 = load i8, ptr %1142, align 1, !tbaa !89
  %1144 = zext i8 %1143 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1181, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.22, i32 noundef %1144)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1182, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.23)
  %1145 = load i64, ptr %21, align 8, !tbaa !5
  br label %1146

1146:                                             ; preds = %1091, %1097
  %1147 = phi i64 [ %1094, %1091 ], [ %1145, %1097 ]
  %1148 = and i64 %1147, 8388608
  %1149 = icmp eq i64 %1148, 0
  br i1 %1149, label %1155, label %1150

1150:                                             ; preds = %1146
  %1151 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  %1152 = load ptr, ptr %1151, align 8, !tbaa !97
  %1153 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef nonnull %1092, i64 noundef 16, ptr noundef %1152, i32 noundef 1) #20
  br i1 %1153, label %1155, label %1154, !prof !17

1154:                                             ; preds = %1150
  call void @free(ptr noundef %1087) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1188, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.24)
  br label %1155

1155:                                             ; preds = %1150, %1154, %1146
  %1156 = phi ptr [ null, %1154 ], [ %1087, %1150 ], [ %1087, %1146 ]
  %1157 = call i64 @write_1g(ptr noundef nonnull %0, ptr noundef nonnull %1092, i64 noundef 16) #20
  %1158 = icmp eq i64 %1157, 16
  br i1 %1158, label %1160, label %1159, !prof !17

1159:                                             ; preds = %1155
  call void @free(ptr noundef %1156) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1192, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.25)
  br label %1160

1160:                                             ; preds = %1086, %1155, %1159
  %1161 = phi ptr [ null, %1159 ], [ %1156, %1155 ], [ %1087, %1086 ]
  %1162 = load i64, ptr %21, align 8, !tbaa !5
  %1163 = and i64 %1162, 2097152
  %1164 = icmp eq i64 %1163, 0
  br i1 %1164, label %1168, label %1165

1165:                                             ; preds = %1160
  %1166 = call zeroext i1 @flush_tmpoutbuf(ptr noundef nonnull %0) #20
  br i1 %1166, label %1168, label %1167, !prof !17

1167:                                             ; preds = %1165
  call void @free(ptr noundef %1161) #20
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1199, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.26)
  br label %1168

1168:                                             ; preds = %1165, %1167, %1160
  %1169 = phi ptr [ null, %1167 ], [ %1161, %1165 ], [ %1161, %1160 ]
  %1170 = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #20
  %1171 = load i64, ptr %21, align 8, !tbaa !5
  %1172 = and i64 %1171, 4096
  %1173 = icmp eq i64 %1172, 0
  br i1 %1173, label %1174, label %1176

1174:                                             ; preds = %1168
  %1175 = load i64, ptr %168, align 8, !tbaa !19
  br label %1178

1176:                                             ; preds = %1168
  %1177 = load i64, ptr %124, align 8, !tbaa !22
  store i64 %1177, ptr %168, align 8, !tbaa !19
  br label %1178

1178:                                             ; preds = %1174, %1176
  %1179 = phi i64 [ %1175, %1174 ], [ %1177, %1176 ]
  %1180 = load i64, ptr %13, align 8, !tbaa !57
  %1181 = load i64, ptr %14, align 8, !tbaa !57
  %1182 = sub nsw i64 %1180, %1181
  %1183 = sitofp i64 %1182 to double
  %1184 = icmp eq i64 %1180, %1181
  %1185 = select i1 %1184, double 1.000000e+00, double %1183
  %1186 = sdiv i64 %1179, 1048576
  %1187 = sitofp i64 %1186 to double
  %1188 = fdiv double %1187, %1185
  %1189 = call i32 @fstat64(i32 noundef %2, ptr noundef nonnull %17) #20
  %1190 = load i64, ptr %21, align 8, !tbaa !5
  %1191 = and i64 %1190, 2048
  %1192 = icmp eq i64 %1191, 0
  br i1 %1192, label %1236, label %1193

1193:                                             ; preds = %1178
  %1194 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 3
  %1195 = load i64, ptr %1194, align 8, !tbaa !98
  %1196 = trunc i64 %1195 to i32
  %1197 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 4
  %1198 = load i64, ptr %1197, align 8, !tbaa !99
  %1199 = trunc i64 %1198 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1214, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.27, i32 noundef %1196, i32 noundef %1199)
  %1200 = load i64, ptr %21, align 8, !tbaa !5
  %1201 = and i64 %1200, 2048
  %1202 = icmp eq i64 %1201, 0
  br i1 %1202, label %1236, label %1203

1203:                                             ; preds = %1193
  %1204 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 1
  %1205 = load i64, ptr %1204, align 8, !tbaa !100
  %1206 = trunc i64 %1205 to i32
  %1207 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 2
  %1208 = load i64, ptr %1207, align 8, !tbaa !101
  %1209 = trunc i64 %1208 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1216, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.28, i32 noundef %1206, i32 noundef %1209)
  %1210 = load i64, ptr %21, align 8, !tbaa !5
  %1211 = and i64 %1210, 2048
  %1212 = icmp eq i64 %1211, 0
  br i1 %1212, label %1236, label %1213

1213:                                             ; preds = %1203
  %1214 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 5
  %1215 = load i64, ptr %1214, align 8, !tbaa !102
  %1216 = trunc i64 %1215 to i32
  %1217 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 6
  %1218 = load i64, ptr %1217, align 8, !tbaa !103
  %1219 = trunc i64 %1218 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1218, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.29, i32 noundef %1216, i32 noundef %1219)
  %1220 = load i64, ptr %21, align 8, !tbaa !5
  %1221 = and i64 %1220, 2048
  %1222 = icmp eq i64 %1221, 0
  br i1 %1222, label %1236, label %1223

1223:                                             ; preds = %1213
  %1224 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17
  %1225 = load i64, ptr %1224, align 8, !tbaa !87
  %1226 = trunc i64 %1225 to i32
  %1227 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 4
  %1228 = load i64, ptr %1227, align 8, !tbaa !99
  %1229 = sitofp i64 %1228 to double
  %1230 = fadd double %1229, 1.000000e+00
  %1231 = getelementptr inbounds %struct.rzip_state, ptr %1169, i64 0, i32 17, i32 2
  %1232 = load i64, ptr %1231, align 8, !tbaa !101
  %1233 = sitofp i64 %1232 to double
  %1234 = fdiv double %1230, %1233
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1221, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.30, i32 noundef %1226, double noundef %1234)
  %1235 = load i64, ptr %21, align 8, !tbaa !5
  br label %1236

1236:                                             ; preds = %1178, %1193, %1203, %1223, %1213
  %1237 = phi i64 [ %1235, %1223 ], [ %1220, %1213 ], [ %1210, %1203 ], [ %1200, %1193 ], [ %1190, %1178 ]
  %1238 = and i64 %1237, 4097
  %1239 = icmp eq i64 %1238, 1
  br i1 %1239, label %1240, label %1243

1240:                                             ; preds = %1236
  %1241 = load ptr, ptr %0, align 8, !tbaa !50
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 1224, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.31, ptr noundef %1241)
  %1242 = load i64, ptr %21, align 8, !tbaa !5
  br label %1243

1243:                                             ; preds = %1236, %1240
  %1244 = phi i64 [ %1237, %1236 ], [ %1242, %1240 ]
  %1245 = and i64 %1244, 1
  %1246 = icmp eq i64 %1245, 0
  br i1 %1246, label %1253, label %1247

1247:                                             ; preds = %1243
  %1248 = sitofp i64 %1179 to double
  %1249 = getelementptr inbounds %struct.stat, ptr %17, i64 0, i32 8
  %1250 = load i64, ptr %1249, align 8, !tbaa !19
  %1251 = sitofp i64 %1250 to double
  %1252 = fdiv double %1248, %1251
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 1226, ptr nonnull poison, ptr noundef nonnull @__func__.rzip_fd, ptr noundef nonnull @.str.32, double noundef %1252, double noundef %1188)
  br label %1253

1253:                                             ; preds = %1243, %1247
  call void @free(ptr noundef %1169) #20
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %17) #20
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %16) #20
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %15) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #20
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i1 @init_mutex(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @md5_init_ctx(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #5 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !105
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #24
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #20
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !107
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

declare i32 @__lzo_init_v2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #5 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #20
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !107
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !104
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !108
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !104
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  call void %20(ptr noundef %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #20
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !109
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !109
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #20
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstatvfs64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #5 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !107
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !108
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !104
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !106
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #20
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !110
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !110
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !110
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

declare void @round_to_page(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

declare zeroext i1 @prepare_streamout_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @single_mcpy(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i64 noundef %3) #8 {
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = getelementptr inbounds i8, ptr %6, i64 %2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr align 1 %7, i64 %3, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @single_next_tag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #9 {
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  %6 = load ptr, ptr %5, align 8, !tbaa !111
  %7 = add nsw i64 %2, -1
  %8 = getelementptr inbounds i8, ptr %6, i64 %7
  %9 = load i8, ptr %8, align 1, !tbaa !89
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = load i64, ptr %3, align 8, !tbaa !38
  %14 = xor i64 %13, %12
  store i64 %14, ptr %3, align 8, !tbaa !38
  %15 = add nsw i64 %2, 30
  %16 = getelementptr inbounds i8, ptr %6, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !89
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %18
  %20 = load i64, ptr %19, align 8, !tbaa !38
  %21 = xor i64 %20, %14
  store i64 %21, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable
define internal i64 @single_full_tag(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2) #10 {
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  %5 = load ptr, ptr %4, align 8, !tbaa !111
  br label %6

6:                                                ; preds = %34, %3
  %7 = phi i64 [ 0, %3 ], [ %42, %34 ]
  %8 = phi i64 [ 0, %3 ], [ %41, %34 ]
  %9 = add nsw i64 %7, %2
  %10 = getelementptr inbounds i8, ptr %5, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !89
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %12
  %14 = load i64, ptr %13, align 8, !tbaa !38
  %15 = xor i64 %14, %8
  %16 = or i64 %7, 1
  %17 = add nsw i64 %16, %2
  %18 = getelementptr inbounds i8, ptr %5, i64 %17
  %19 = load i8, ptr %18, align 1, !tbaa !89
  %20 = zext i8 %19 to i64
  %21 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %20
  %22 = load i64, ptr %21, align 8, !tbaa !38
  %23 = xor i64 %22, %15
  %24 = or i64 %7, 2
  %25 = add nsw i64 %24, %2
  %26 = getelementptr inbounds i8, ptr %5, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !89
  %28 = zext i8 %27 to i64
  %29 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %28
  %30 = load i64, ptr %29, align 8, !tbaa !38
  %31 = xor i64 %30, %23
  %32 = or i64 %7, 3
  %33 = icmp eq i64 %32, 31
  br i1 %33, label %43, label %34, !llvm.loop !112

34:                                               ; preds = %6
  %35 = add nsw i64 %32, %2
  %36 = getelementptr inbounds i8, ptr %5, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !89
  %38 = zext i8 %37 to i64
  %39 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %38
  %40 = load i64, ptr %39, align 8, !tbaa !38
  %41 = xor i64 %40, %31
  %42 = add nuw nsw i64 %7, 4
  br label %6

43:                                               ; preds = %6
  ret i64 %31
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i64 @single_match_len(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5) #11 {
  %7 = icmp slt i64 %3, %2
  br i1 %7, label %8, label %56

8:                                                ; preds = %6
  %9 = icmp slt i64 %2, %4
  br i1 %9, label %10, label %27

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  %13 = add i64 %4, %3
  %14 = sub i64 %13, %2
  br label %15

15:                                               ; preds = %10, %23
  %16 = phi i64 [ %2, %10 ], [ %24, %23 ]
  %17 = phi i64 [ %3, %10 ], [ %25, %23 ]
  %18 = getelementptr inbounds i8, ptr %12, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !89
  %20 = getelementptr inbounds i8, ptr %12, i64 %17
  %21 = load i8, ptr %20, align 1, !tbaa !89
  %22 = icmp eq i8 %19, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %15
  %24 = add i64 %16, 1
  %25 = add nsw i64 %17, 1
  %26 = icmp eq i64 %24, %4
  br i1 %26, label %27, label %15, !llvm.loop !113

27:                                               ; preds = %15, %23, %8
  %28 = phi i64 [ %3, %8 ], [ %14, %23 ], [ %17, %15 ]
  %29 = phi i64 [ %2, %8 ], [ %4, %23 ], [ %16, %15 ]
  %30 = sub nsw i64 %29, %2
  %31 = sub nsw i64 %28, %30
  %32 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 9
  %33 = load i64, ptr %32, align 8, !tbaa !79
  %34 = tail call i64 @llvm.smax.i64(i64 %33, i64 0)
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  br label %36

36:                                               ; preds = %42, %27
  %37 = phi i64 [ %31, %27 ], [ %44, %42 ]
  %38 = phi i64 [ %2, %27 ], [ %47, %42 ]
  %39 = icmp sgt i64 %38, %34
  %40 = icmp sgt i64 %37, 0
  %41 = select i1 %39, i1 %40, i1 false
  br i1 %41, label %42, label %51

42:                                               ; preds = %36
  %43 = load ptr, ptr %35, align 8, !tbaa !111
  %44 = add nsw i64 %37, -1
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load i8, ptr %45, align 1, !tbaa !89
  %47 = add nsw i64 %38, -1
  %48 = getelementptr inbounds i8, ptr %43, i64 %47
  %49 = load i8, ptr %48, align 1, !tbaa !89
  %50 = icmp eq i8 %46, %49
  br i1 %50, label %36, label %51, !llvm.loop !114

51:                                               ; preds = %36, %42
  %52 = sub nsw i64 %2, %38
  store i64 %52, ptr %5, align 8, !tbaa !38
  %53 = add nsw i64 %52, %30
  %54 = icmp slt i64 %53, 31
  %55 = select i1 %54, i64 0, i64 %53
  br label %56

56:                                               ; preds = %51, %6
  %57 = phi i64 [ 0, %6 ], [ %55, %51 ]
  ret i64 %57
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #12

declare zeroext i1 @close_streamout_threads(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @sliding_mcpy(ptr noundef %0, ptr nocapture noundef writeonly %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = icmp sgt i64 %3, 0
  br i1 %5, label %6, label %65

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 3
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 7
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 4
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 8
  br label %11

11:                                               ; preds = %6, %60
  %12 = phi i64 [ 0, %6 ], [ %63, %60 ]
  %13 = add nsw i64 %12, %2
  %14 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %13)
  %15 = load i64, ptr %7, align 8, !tbaa !63
  %16 = load i64, ptr %8, align 8, !tbaa !65
  %17 = icmp sle i64 %15, %13
  %18 = add nsw i64 %16, %15
  %19 = icmp sgt i64 %18, %13
  %20 = select i1 %17, i1 %19, i1 false
  br i1 %20, label %21, label %24

21:                                               ; preds = %11
  %22 = sub i64 %15, %13
  %23 = add i64 %22, %16
  br label %35

24:                                               ; preds = %11
  %25 = load i64, ptr %9, align 8, !tbaa !62
  %26 = load i64, ptr %10, align 8, !tbaa !61
  %27 = icmp sle i64 %25, %13
  %28 = add nsw i64 %26, %25
  %29 = icmp sgt i64 %28, %13
  %30 = select i1 %27, i1 %29, i1 false
  br i1 %30, label %31, label %34, !prof !17

31:                                               ; preds = %24
  %32 = sub i64 %25, %13
  %33 = add i64 %32, %26
  br label %35

34:                                               ; preds = %24
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 177, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sliding_get_sb_range, ptr noundef nonnull @.str.41)
  br label %35

35:                                               ; preds = %21, %31, %34
  %36 = phi i64 [ %23, %21 ], [ %33, %31 ], [ 0, %34 ]
  %37 = sub nsw i64 %3, %12
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %60

39:                                               ; preds = %35
  %40 = load i64, ptr %7, align 8, !tbaa !63
  %41 = load i64, ptr %8, align 8, !tbaa !65
  %42 = icmp sle i64 %40, %13
  %43 = add nsw i64 %41, %40
  %44 = icmp sgt i64 %43, %13
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = sub i64 %40, %13
  %48 = add i64 %47, %41
  br label %60

49:                                               ; preds = %39
  %50 = load i64, ptr %9, align 8, !tbaa !62
  %51 = load i64, ptr %10, align 8, !tbaa !61
  %52 = icmp sle i64 %50, %13
  %53 = add nsw i64 %51, %50
  %54 = icmp sgt i64 %53, %13
  %55 = select i1 %52, i1 %54, i1 false
  br i1 %55, label %56, label %59, !prof !17

56:                                               ; preds = %49
  %57 = sub i64 %50, %13
  %58 = add i64 %57, %51
  br label %60

59:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 177, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.sliding_get_sb_range, ptr noundef nonnull @.str.41)
  br label %60

60:                                               ; preds = %59, %56, %46, %35
  %61 = phi i64 [ %37, %35 ], [ %48, %46 ], [ %58, %56 ], [ 0, %59 ]
  %62 = getelementptr inbounds i8, ptr %1, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %62, ptr align 1 %14, i64 %61, i1 false)
  %63 = add nsw i64 %61, %12
  %64 = icmp slt i64 %63, %3
  br i1 %64, label %11, label %65, !llvm.loop !115

65:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @sliding_next_tag(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, ptr nocapture noundef %3) #0 {
  %5 = add nsw i64 %2, -1
  %6 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %5)
  %7 = load i8, ptr %6, align 1, !tbaa !89
  %8 = zext i8 %7 to i64
  %9 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %8
  %10 = load i64, ptr %9, align 8, !tbaa !38
  %11 = load i64, ptr %3, align 8, !tbaa !38
  %12 = xor i64 %11, %10
  store i64 %12, ptr %3, align 8, !tbaa !38
  %13 = add nsw i64 %2, 30
  %14 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %13)
  %15 = load i8, ptr %14, align 1, !tbaa !89
  %16 = zext i8 %15 to i64
  %17 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %16
  %18 = load i64, ptr %17, align 8, !tbaa !38
  %19 = load i64, ptr %3, align 8, !tbaa !38
  %20 = xor i64 %19, %18
  store i64 %20, ptr %3, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define internal i64 @sliding_full_tag(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) #0 {
  br label %4

4:                                                ; preds = %3, %4
  %5 = phi i64 [ 0, %3 ], [ %14, %4 ]
  %6 = phi i64 [ 0, %3 ], [ %13, %4 ]
  %7 = add nsw i64 %5, %2
  %8 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %7)
  %9 = load i8, ptr %8, align 1, !tbaa !89
  %10 = zext i8 %9 to i64
  %11 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 2, i64 %10
  %12 = load i64, ptr %11, align 8, !tbaa !38
  %13 = xor i64 %12, %6
  %14 = add nuw nsw i64 %5, 1
  %15 = icmp eq i64 %14, 31
  br i1 %15, label %16, label %4, !llvm.loop !116

16:                                               ; preds = %4
  ret i64 %13
}

; Function Attrs: nounwind uwtable
define internal i64 @sliding_match_len(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = icmp slt i64 %3, %2
  br i1 %7, label %8, label %49

8:                                                ; preds = %6
  %9 = icmp slt i64 %2, %4
  br i1 %9, label %10, label %22

10:                                               ; preds = %8, %18
  %11 = phi i64 [ %19, %18 ], [ %2, %8 ]
  %12 = phi i64 [ %20, %18 ], [ %3, %8 ]
  %13 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %11)
  %14 = load i8, ptr %13, align 1, !tbaa !89
  %15 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %12)
  %16 = load i8, ptr %15, align 1, !tbaa !89
  %17 = icmp eq i8 %14, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %10
  %19 = add i64 %11, 1
  %20 = add nsw i64 %12, 1
  %21 = icmp eq i64 %19, %4
  br i1 %21, label %22, label %10, !llvm.loop !117

22:                                               ; preds = %10, %18, %8
  %23 = phi i64 [ %3, %8 ], [ %20, %18 ], [ %12, %10 ]
  %24 = phi i64 [ %2, %8 ], [ %4, %18 ], [ %11, %10 ]
  %25 = sub nsw i64 %24, %2
  %26 = sub nsw i64 %23, %25
  %27 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 9
  %28 = load i64, ptr %27, align 8, !tbaa !79
  %29 = tail call i64 @llvm.smax.i64(i64 %28, i64 0)
  br label %30

30:                                               ; preds = %36, %22
  %31 = phi i64 [ %26, %22 ], [ %37, %36 ]
  %32 = phi i64 [ %2, %22 ], [ %40, %36 ]
  %33 = icmp sgt i64 %32, %29
  %34 = icmp sgt i64 %31, 0
  %35 = select i1 %33, i1 %34, i1 false
  br i1 %35, label %36, label %44

36:                                               ; preds = %30
  %37 = add nsw i64 %31, -1
  %38 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %37)
  %39 = load i8, ptr %38, align 1, !tbaa !89
  %40 = add nsw i64 %32, -1
  %41 = tail call fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %40)
  %42 = load i8, ptr %41, align 1, !tbaa !89
  %43 = icmp eq i8 %39, %42
  br i1 %43, label %30, label %44, !llvm.loop !118

44:                                               ; preds = %30, %36
  %45 = sub nsw i64 %2, %32
  store i64 %45, ptr %5, align 8, !tbaa !38
  %46 = add nsw i64 %45, %25
  %47 = icmp slt i64 %46, 31
  %48 = select i1 %47, i64 0, i64 %46
  br label %49

49:                                               ; preds = %44, %6
  %50 = phi i64 [ 0, %6 ], [ %48, %44 ]
  ret i64 %50
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare ptr @md5_finish_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i64 @write_1g(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @rzip_control_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %41, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !119
  tail call void @free(ptr noundef %5) #20
  store ptr null, ptr %4, align 8, !tbaa !119
  %6 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  tail call void @free(ptr noundef %7) #20
  store ptr null, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !121
  tail call void @free(ptr noundef %9) #20
  store ptr null, ptr %8, align 8, !tbaa !121
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %11 = load ptr, ptr %10, align 8, !tbaa !122
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i8, ptr %11, align 1, !tbaa !89
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %11) #20
  store ptr null, ptr %10, align 8, !tbaa !122
  br label %17

17:                                               ; preds = %16, %13, %3
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 60
  %19 = load i64, ptr %18, align 8, !tbaa !123
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 61
  br label %23

23:                                               ; preds = %21, %23
  %24 = phi i64 [ 0, %21 ], [ %35, %23 ]
  %25 = load ptr, ptr %22, align 8, !tbaa !124
  %26 = getelementptr inbounds ptr, ptr %25, i64 %24
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  %28 = load ptr, ptr %27, align 8, !tbaa !125
  tail call void @free(ptr noundef %28) #20
  %29 = load ptr, ptr %22, align 8, !tbaa !124
  %30 = getelementptr inbounds ptr, ptr %29, i64 %24
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  store ptr null, ptr %31, align 8, !tbaa !125
  %32 = load ptr, ptr %30, align 8, !tbaa !105
  tail call void @free(ptr noundef %32) #20
  %33 = load ptr, ptr %22, align 8, !tbaa !124
  %34 = getelementptr inbounds ptr, ptr %33, i64 %24
  store ptr null, ptr %34, align 8, !tbaa !105
  %35 = add nuw i64 %24, 1
  %36 = load i64, ptr %18, align 8, !tbaa !123
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %23, label %38, !llvm.loop !127

38:                                               ; preds = %23, %17
  %39 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 61
  %40 = load ptr, ptr %39, align 8, !tbaa !124
  tail call void @free(ptr noundef %40) #20
  tail call void @free(ptr noundef nonnull %0) #20
  br label %41

41:                                               ; preds = %1, %38
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #5 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #20
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !105
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #24
  call void @perror(ptr noundef null) #24
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !106
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #20
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !107
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #20
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #20
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare void @fatal_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #14

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc ptr @sliding_get_sb(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !63
  %6 = icmp sgt i64 %5, %1
  br i1 %6, label %17, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 7
  %9 = load i64, ptr %8, align 8, !tbaa !65
  %10 = add nsw i64 %9, %5
  %11 = icmp sgt i64 %10, %1
  br i1 %11, label %12, label %17

12:                                               ; preds = %7
  %13 = load ptr, ptr %3, align 8, !tbaa !48
  %14 = getelementptr inbounds i8, ptr %13, i64 %1
  %15 = sub i64 0, %5
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  br label %67

17:                                               ; preds = %7, %2
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !62
  %20 = icmp sle i64 %19, %1
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 8
  %22 = load i64, ptr %21, align 8, !tbaa !61
  %23 = add nsw i64 %22, %19
  %24 = icmp sgt i64 %23, %1
  %25 = select i1 %20, i1 %24, i1 false
  %26 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  br i1 %25, label %28, label %31

28:                                               ; preds = %17
  %29 = sub nsw i64 %1, %19
  %30 = getelementptr inbounds i8, ptr %27, i64 %29
  br label %67

31:                                               ; preds = %17
  %32 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 8
  %33 = tail call i32 @munmap(ptr noundef %27, i64 noundef %22) #20
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !17

35:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 122, ptr nonnull poison, ptr noundef nonnull @__func__.remap_high_sb, ptr noundef nonnull @.str.39)
  br label %36

36:                                               ; preds = %35, %31
  %37 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 9
  %38 = load i64, ptr %37, align 8, !tbaa !59
  store i64 %38, ptr %32, align 8, !tbaa !61
  %39 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !54
  %41 = add nsw i64 %40, %1
  %42 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %43 = load i64, ptr %42, align 8, !tbaa !47
  %44 = srem i64 %41, %43
  %45 = sub nsw i64 %1, %44
  store i64 %45, ptr %18, align 8, !tbaa !62
  %46 = add nsw i64 %45, %38
  %47 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 6
  %48 = load i64, ptr %47, align 8, !tbaa !66
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %52, !prof !18

50:                                               ; preds = %36
  %51 = sub nsw i64 %48, %45
  store i64 %51, ptr %32, align 8, !tbaa !61
  br label %52

52:                                               ; preds = %50, %36
  %53 = phi i64 [ %51, %50 ], [ %38, %36 ]
  %54 = load ptr, ptr %26, align 8, !tbaa !60
  %55 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 71, i32 10
  %56 = load i32, ptr %55, align 8, !tbaa !67
  %57 = add nsw i64 %45, %40
  %58 = tail call ptr @mmap64(ptr noundef %54, i64 noundef %53, i32 noundef 1, i32 noundef 1, i32 noundef %56, i64 noundef %57) #20
  store ptr %58, ptr %26, align 8, !tbaa !60
  %59 = icmp eq ptr %58, inttoptr (i64 -1 to ptr)
  br i1 %59, label %60, label %62, !prof !18

60:                                               ; preds = %52
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 131, ptr nonnull poison, ptr noundef nonnull @__func__.remap_high_sb, ptr noundef nonnull @.str.40)
  %61 = load ptr, ptr %26, align 8, !tbaa !60
  br label %62

62:                                               ; preds = %52, %60
  %63 = phi ptr [ %58, %52 ], [ %61, %60 ]
  %64 = load i64, ptr %18, align 8, !tbaa !62
  %65 = sub nsw i64 %1, %64
  %66 = getelementptr inbounds i8, ptr %63, i64 %65
  br label %67

67:                                               ; preds = %62, %28, %12
  %68 = phi ptr [ %16, %12 ], [ %30, %28 ], [ %66, %62 ]
  ret ptr %68
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #3

declare ptr @open_stream_out(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #2

declare i32 @close_stream_out(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @insert_hash(ptr nocapture noundef %0, i64 noundef %1, i64 noundef %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 4
  %5 = load i8, ptr %4, align 8, !tbaa !71
  %6 = zext i8 %5 to i32
  %7 = shl nsw i32 -1, %6
  %8 = xor i32 %7, -1
  %9 = sext i32 %8 to i64
  %10 = and i64 %9, %1
  %11 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !49
  %13 = getelementptr inbounds %struct.hash_entry, ptr %12, i64 %10
  %14 = load i64, ptr %13, align 8, !tbaa !83
  %15 = getelementptr inbounds %struct.hash_entry, ptr %12, i64 %10, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !85
  %17 = or i64 %16, %14
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %82, label %19

19:                                               ; preds = %3
  %20 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 7
  %21 = load i64, ptr %20, align 8, !tbaa !75
  %22 = shl i64 %21, 1
  %23 = or i64 %22, 1
  %24 = xor i64 %1, -1
  %25 = tail call i64 @llvm.cttz.i64(i64 %24, i1 true), !range !128
  %26 = trunc i64 %25 to i32
  %27 = icmp ne i64 %1, -1
  %28 = load i64, ptr @insert_hash.victim_round, align 8
  %29 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 1
  br label %30

30:                                               ; preds = %19, %71
  %31 = phi i64 [ %16, %19 ], [ %79, %71 ]
  %32 = phi i64 [ %14, %19 ], [ %77, %71 ]
  %33 = phi ptr [ %13, %19 ], [ %76, %71 ]
  %34 = phi i64 [ 0, %19 ], [ %73, %71 ]
  %35 = phi i64 [ 0, %19 ], [ %72, %71 ]
  %36 = phi i64 [ %10, %19 ], [ %75, %71 ]
  %37 = and i64 %23, %31
  %38 = icmp eq i64 %37, %23
  br i1 %38, label %43, label %39

39:                                               ; preds = %30
  %40 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 5
  %41 = load i64, ptr %40, align 8, !tbaa !78
  %42 = add nsw i64 %41, -1
  store i64 %42, ptr %40, align 8, !tbaa !78
  br label %82

43:                                               ; preds = %30
  %44 = xor i64 %31, -1
  %45 = tail call i64 @llvm.cttz.i64(i64 %44, i1 true), !range !128
  %46 = trunc i64 %45 to i32
  %47 = icmp eq i64 %31, -1
  %48 = icmp ult i32 %46, %26
  %49 = select i1 %47, i1 true, i1 %48
  %50 = select i1 %27, i1 %49, i1 false
  br i1 %50, label %51, label %52

51:                                               ; preds = %43
  tail call fastcc void @insert_hash(ptr noundef nonnull %0, i64 noundef %31, i64 noundef %32)
  br label %82

52:                                               ; preds = %43
  %53 = icmp eq i64 %31, %1
  br i1 %53, label %54, label %71

54:                                               ; preds = %52
  %55 = icmp eq i64 %34, %28
  %56 = select i1 %55, i64 %36, i64 %35
  %57 = add nsw i64 %34, 1
  %58 = load ptr, ptr %29, align 8, !tbaa !32
  %59 = getelementptr inbounds %struct.level, ptr %58, i64 0, i32 2
  %60 = load i32, ptr %59, align 4, !tbaa !129
  %61 = zext i32 %60 to i64
  %62 = icmp eq i64 %57, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %54
  %64 = getelementptr inbounds %struct.hash_entry, ptr %12, i64 %56
  %65 = getelementptr inbounds %struct.rzip_state, ptr %0, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !78
  %67 = add nsw i64 %66, -1
  store i64 %67, ptr %65, align 8, !tbaa !78
  %68 = add nsw i64 %28, 1
  %69 = icmp eq i64 %28, %34
  %70 = select i1 %69, i64 0, i64 %68
  store i64 %70, ptr @insert_hash.victim_round, align 8
  br label %82

71:                                               ; preds = %54, %52
  %72 = phi i64 [ %56, %54 ], [ %35, %52 ]
  %73 = phi i64 [ %57, %54 ], [ %34, %52 ]
  %74 = add nsw i64 %36, 1
  %75 = and i64 %74, %9
  %76 = getelementptr inbounds %struct.hash_entry, ptr %12, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !83
  %78 = getelementptr inbounds %struct.hash_entry, ptr %12, i64 %75, i32 1
  %79 = load i64, ptr %78, align 8, !tbaa !85
  %80 = or i64 %79, %77
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %82, label %30, !llvm.loop !130

82:                                               ; preds = %71, %3, %63, %51, %39
  %83 = phi ptr [ %33, %39 ], [ %33, %51 ], [ %64, %63 ], [ %13, %3 ], [ %76, %71 ]
  %84 = getelementptr inbounds %struct.hash_entry, ptr %83, i64 0, i32 1
  store i64 %1, ptr %84, align 8, !tbaa !85
  store i64 %2, ptr %83, align 8, !tbaa !83
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @put_literal(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = getelementptr inbounds %struct.rzip_state, ptr %1, i64 0, i32 17, i32 1
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 72
  br label %9

9:                                                ; preds = %45, %4
  %10 = phi i64 [ %2, %4 ], [ %46, %45 ]
  %11 = sub nsw i64 %3, %10
  %12 = call i64 @llvm.smin.i64(i64 %11, i64 65535)
  %13 = load <2 x i64>, ptr %7, align 8, !tbaa !38
  %14 = insertelement <2 x i64> <i64 1, i64 poison>, i64 %12, i64 1
  %15 = add nsw <2 x i64> %13, %14
  store <2 x i64> %15, ptr %7, align 8, !tbaa !38
  %16 = load ptr, ptr %1, align 8, !tbaa !68
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6)
  store i8 0, ptr %6, align 1, !tbaa !89
  call void @write_stream(ptr noundef %0, ptr noundef %16, i32 noundef 0, ptr noundef nonnull %6, i64 noundef 1) #20
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5)
  store i64 %12, ptr %5, align 8, !tbaa !38
  call void @write_stream(ptr noundef %0, ptr noundef %16, i32 noundef 0, ptr noundef nonnull %5, i64 noundef 2) #20
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5)
  %17 = icmp eq i64 %12, 0
  br i1 %17, label %45, label %18

18:                                               ; preds = %9
  %19 = load ptr, ptr %1, align 8, !tbaa !68
  %20 = getelementptr inbounds %struct.stream_info, ptr %19, i64 0, i32 3
  br label %21

21:                                               ; preds = %43, %18
  %22 = phi i64 [ %10, %18 ], [ %38, %43 ]
  %23 = phi i64 [ %12, %18 ], [ %39, %43 ]
  %24 = load i64, ptr %20, align 8, !tbaa !131
  %25 = load ptr, ptr %19, align 8, !tbaa !125
  %26 = getelementptr inbounds %struct.stream, ptr %25, i64 1, i32 2
  %27 = load i64, ptr %26, align 8, !tbaa !132
  %28 = sub nsw i64 %24, %27
  %29 = call i64 @llvm.smin.i64(i64 %28, i64 %23)
  %30 = load ptr, ptr %8, align 8, !tbaa !41
  %31 = getelementptr inbounds %struct.stream, ptr %25, i64 1, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !134
  %33 = getelementptr inbounds i8, ptr %32, i64 %27
  call void %30(ptr noundef %0, ptr noundef %33, i64 noundef %22, i64 noundef %29) #20
  %34 = load ptr, ptr %19, align 8, !tbaa !125
  %35 = getelementptr inbounds %struct.stream, ptr %34, i64 1, i32 2
  %36 = load i64, ptr %35, align 8, !tbaa !132
  %37 = add nsw i64 %36, %29
  store i64 %37, ptr %35, align 8, !tbaa !132
  %38 = add nsw i64 %29, %22
  %39 = sub nsw i64 %23, %29
  %40 = load i64, ptr %20, align 8, !tbaa !131
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %21
  call void @flush_buffer(ptr noundef nonnull %0, ptr noundef nonnull %19, i32 noundef 1) #20
  br label %43

43:                                               ; preds = %42, %21
  %44 = icmp eq i64 %39, 0
  br i1 %44, label %45, label %21, !llvm.loop !135

45:                                               ; preds = %43, %9
  %46 = add nsw i64 %12, %10
  %47 = icmp slt i64 %46, %3
  br i1 %47, label %9, label %48, !llvm.loop !136

48:                                               ; preds = %45
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @md5_process_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare void @write_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @flush_buffer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @create_pthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias ptr @cksumthread(ptr noundef %0) #0 {
  %2 = tail call i64 @pthread_self() #21
  %3 = tail call i32 @pthread_detach(i64 noundef %2) #20
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = load i32, ptr %5, align 4, !tbaa !16
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !92
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 55, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !91
  %11 = tail call i32 @CrcUpdate(i32 noundef %6, ptr noundef %8, i64 noundef %10) #20
  %12 = load ptr, ptr %4, align 8, !tbaa !93
  store i32 %11, ptr %12, align 4, !tbaa !16
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa !5
  %15 = and i64 %14, 196608
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %7, align 8, !tbaa !92
  %19 = load i64, ptr %9, align 8, !tbaa !91
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 52
  tail call void @md5_process_bytes(ptr noundef %18, i64 noundef %19, ptr noundef nonnull %20) #20
  br label %21

21:                                               ; preds = %1, %17
  %22 = load ptr, ptr %7, align 8, !tbaa !92
  tail call void @free(ptr noundef %22) #20
  store ptr null, ptr %7, align 8, !tbaa !92
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 51
  %24 = tail call i32 @sem_post(ptr noundef nonnull %23) #20
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26, !prof !17

26:                                               ; preds = %21
  %27 = tail call ptr @__errno_location() #21
  %28 = load i32, ptr %27, align 4, !tbaa !16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 161, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.35, i32 noundef %28, ptr noundef nonnull %23)
  br label %29

29:                                               ; preds = %21, %26
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @pthread_self() local_unnamed_addr #12

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.cttz.i64(i64, i1 immarg) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #15 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }
attributes #23 = { nounwind allocsize(0) }
attributes #24 = { cold }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !10, i64 208}
!6 = !{!"rzip_control", !7, i64 0, !7, i64 8, !7, i64 16, !7, i64 24, !7, i64 32, !7, i64 40, !7, i64 48, !7, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !10, i64 88, !10, i64 96, !7, i64 104, !10, i64 112, !10, i64 120, !10, i64 128, !7, i64 136, !7, i64 144, !7, i64 152, !8, i64 160, !10, i64 168, !10, i64 176, !10, i64 184, !8, i64 192, !10, i64 200, !10, i64 208, !10, i64 216, !10, i64 224, !10, i64 232, !11, i64 240, !8, i64 244, !8, i64 245, !8, i64 246, !10, i64 248, !10, i64 256, !11, i64 264, !11, i64 268, !11, i64 272, !10, i64 280, !10, i64 288, !7, i64 296, !7, i64 304, !8, i64 312, !7, i64 320, !11, i64 328, !7, i64 336, !8, i64 344, !8, i64 384, !8, i64 385, !12, i64 386, !8, i64 392, !13, i64 424, !8, i64 580, !10, i64 600, !14, i64 608, !7, i64 632, !8, i64 640, !7, i64 648, !10, i64 656, !10, i64 664, !7, i64 672, !8, i64 680, !7, i64 688, !8, i64 696, !11, i64 700, !7, i64 704, !7, i64 712, !7, i64 720, !7, i64 728, !8, i64 736, !15, i64 744, !7, i64 832, !7, i64 840, !7, i64 848, !7, i64 856}
!7 = !{!"any pointer", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"long", !8, i64 0}
!11 = !{!"int", !8, i64 0}
!12 = !{!"_Bool", !8, i64 0}
!13 = !{!"md5_ctx", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !11, i64 24, !8, i64 28}
!14 = !{!"checksum", !7, i64 0, !7, i64 8, !10, i64 16}
!15 = !{!"sliding_buffer", !7, i64 0, !7, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !11, i64 80}
!16 = !{!11, !11, i64 0}
!17 = !{!"branch_weights", i32 2000, i32 1}
!18 = !{!"branch_weights", i32 1, i32 2000}
!19 = !{!20, !10, i64 48}
!20 = !{!"stat", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !21, i64 72, !21, i64 88, !21, i64 104, !8, i64 120}
!21 = !{!"timespec", !10, i64 0, !10, i64 8}
!22 = !{!6, !10, i64 248}
!23 = !{!24, !10, i64 0}
!24 = !{!"statvfs", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !10, i64 80, !8, i64 88}
!25 = !{!24, !10, i64 32}
!26 = !{!6, !10, i64 184}
!27 = !{!6, !10, i64 232}
!28 = !{!6, !10, i64 200}
!29 = !{!6, !10, i64 216}
!30 = !{!6, !10, i64 224}
!31 = !{!6, !8, i64 160}
!32 = !{!33, !7, i64 8}
!33 = !{!"rzip_state", !7, i64 0, !7, i64 8, !8, i64 16, !7, i64 2064, !8, i64 2072, !10, i64 2080, !10, i64 2088, !10, i64 2096, !10, i64 2104, !10, i64 2112, !10, i64 2120, !10, i64 2128, !8, i64 2136, !11, i64 2140, !11, i64 2144, !11, i64 2148, !8, i64 2152, !34, i64 2160}
!34 = !{!"", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48}
!35 = !{!33, !11, i64 2144}
!36 = !{!33, !11, i64 2148}
!37 = !{!33, !8, i64 2152}
!38 = !{!10, !10, i64 0}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!6, !7, i64 832}
!42 = !{!6, !7, i64 840}
!43 = !{!6, !7, i64 848}
!44 = !{!6, !7, i64 856}
!45 = !{!33, !10, i64 2120}
!46 = !{!33, !10, i64 2128}
!47 = !{!6, !10, i64 256}
!48 = !{!15, !7, i64 0}
!49 = !{!33, !7, i64 2064}
!50 = !{!6, !7, i64 0}
!51 = !{!6, !7, i64 8}
!52 = !{!6, !8, i64 384}
!53 = distinct !{!53, !40}
!54 = !{!15, !10, i64 16}
!55 = distinct !{!55, !40}
!56 = !{!33, !8, i64 2136}
!57 = !{!58, !10, i64 0}
!58 = !{!"timeval", !10, i64 0, !10, i64 8}
!59 = !{!15, !10, i64 72}
!60 = !{!15, !7, i64 8}
!61 = !{!15, !10, i64 64}
!62 = !{!15, !10, i64 32}
!63 = !{!15, !10, i64 24}
!64 = !{!15, !10, i64 40}
!65 = !{!15, !10, i64 56}
!66 = !{!15, !10, i64 48}
!67 = !{!15, !11, i64 80}
!68 = !{!33, !7, i64 0}
!69 = !{!70, !11, i64 8}
!70 = !{!"level", !10, i64 0, !11, i64 8, !11, i64 12}
!71 = !{!33, !8, i64 2072}
!72 = !{!70, !10, i64 0}
!73 = distinct !{!73, !40}
!74 = !{!33, !10, i64 2088}
!75 = !{!33, !10, i64 2096}
!76 = !{!33, !10, i64 2104}
!77 = !{!33, !11, i64 2140}
!78 = !{!33, !10, i64 2080}
!79 = !{!33, !10, i64 2112}
!80 = !{!6, !7, i64 704}
!81 = !{!6, !7, i64 712}
!82 = distinct !{!82, !40}
!83 = !{!84, !10, i64 0}
!84 = !{!"hash_entry", !10, i64 0, !10, i64 8}
!85 = !{!84, !10, i64 8}
!86 = distinct !{!86, !40}
!87 = !{!33, !10, i64 2160}
!88 = distinct !{!88, !40}
!89 = !{!8, !8, i64 0}
!90 = distinct !{!90, !40}
!91 = !{!6, !10, i64 624}
!92 = !{!6, !7, i64 616}
!93 = !{!6, !7, i64 608}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = !{!6, !7, i64 320}
!98 = !{!33, !10, i64 2184}
!99 = !{!33, !10, i64 2192}
!100 = !{!33, !10, i64 2168}
!101 = !{!33, !10, i64 2176}
!102 = !{!33, !10, i64 2200}
!103 = !{!33, !10, i64 2208}
!104 = !{!6, !7, i64 720}
!105 = !{!7, !7, i64 0}
!106 = !{!6, !7, i64 728}
!107 = !{!6, !8, i64 696}
!108 = !{!6, !11, i64 700}
!109 = !{!6, !7, i64 136}
!110 = !{!6, !7, i64 144}
!111 = !{!6, !7, i64 744}
!112 = distinct !{!112, !40}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40}
!115 = distinct !{!115, !40}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40}
!119 = !{!6, !7, i64 48}
!120 = !{!6, !7, i64 16}
!121 = !{!6, !7, i64 40}
!122 = !{!6, !7, i64 152}
!123 = !{!6, !10, i64 664}
!124 = !{!6, !7, i64 672}
!125 = !{!126, !7, i64 0}
!126 = !{!"stream_info", !7, i64 0, !8, i64 8, !11, i64 12, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !10, i64 64, !10, i64 72, !11, i64 80, !8, i64 84}
!127 = distinct !{!127, !40}
!128 = !{i64 0, i64 65}
!129 = !{!70, !11, i64 12}
!130 = distinct !{!130, !40}
!131 = !{!126, !10, i64 16}
!132 = !{!133, !10, i64 16}
!133 = !{!"stream", !10, i64 0, !7, i64 8, !10, i64 16, !10, i64 24, !8, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !11, i64 64, !10, i64 72}
!134 = !{!133, !7, i64 8}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !40}
