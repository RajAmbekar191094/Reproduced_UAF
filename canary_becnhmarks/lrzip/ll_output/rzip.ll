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
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stream_info = type { ptr, i8, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.anon.0 = type { i64, i64, i64 }
%struct.hash_entry = type { i64, i64 }
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
@stderr = external global ptr, align 8
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
@insert_hash.victim_round = internal global i64 0, align 8
@__func__.clean_one_from_hash = private unnamed_addr constant [20 x i8] c"clean_one_from_hash\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"Starting sweep for mask %u\0A\00", align 1
@__func__.cksem_wait = private unnamed_addr constant [11 x i8] c"cksem_wait\00", align 1
@.str.58 = private unnamed_addr constant [39 x i8] c"Failed to sem_wait errno=%d cksem=0x%p\00", align 1
@__func__.show_distrib = private unnamed_addr constant [13 x i8] c"show_distrib\00", align 1
@.str.59 = private unnamed_addr constant [37 x i8] c"WARNING: hash_count says total %lld\0A\00", align 1
@.str.60 = private unnamed_addr constant [16 x i8] c"0 total hashes\0A\00", align 1
@.str.61 = private unnamed_addr constant [56 x i8] c"%lld total hashes -- %lld in primary bucket (%-2.3f%%)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rzip_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca %struct.timeval, align 8
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca double, align 8
  %17 = alloca double, align 8
  %18 = alloca ptr, align 8
  %19 = alloca %struct.statvfs, align 8
  %20 = alloca %struct.stat, align 8
  %21 = alloca %struct.stat, align 8
  %22 = alloca i64, align 8
  %23 = alloca double, align 8
  %24 = alloca double, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store i32 %2, ptr %6, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 71
  store ptr %37, ptr %7, align 8
  store i64 0, ptr %11, align 8
  store i64 0, ptr %12, align 8
  store i32 0, ptr %13, align 4
  %38 = load ptr, ptr %4, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.rzip_control, ptr %39, i32 0, i32 47
  %41 = call zeroext i1 @init_mutex(ptr noundef %38, ptr noundef %40)
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 26
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 65536
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %3
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 26
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 131072
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %47, %3
  %54 = load ptr, ptr %4, align 8
  %55 = getelementptr inbounds %struct.rzip_control, ptr %54, i32 0, i32 52
  call void @md5_init_ctx(ptr noundef %55) #9
  br label %56

56:                                               ; preds = %53, %47
  %57 = load ptr, ptr %4, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 51
  call void @cksem_init(ptr noundef %57, ptr noundef %59)
  %60 = load ptr, ptr %4, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 51
  call void @cksem_post(ptr noundef %60, ptr noundef %62)
  %63 = call noalias ptr @calloc(i64 noundef 2216, i64 noundef 1) #10
  store ptr %63, ptr %18, align 8
  %64 = load ptr, ptr %18, align 8
  %65 = icmp ne ptr %64, null
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %56
  %73 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %73, i32 noundef 936, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.1)
  br label %74

74:                                               ; preds = %72, %56
  %75 = load ptr, ptr %4, align 8
  %76 = getelementptr inbounds %struct.rzip_control, ptr %75, i32 0, i32 26
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %94

80:                                               ; preds = %74
  %81 = call i32 @__lzo_init_v2(i32 noundef 8352, i32 noundef 2, i32 noundef 4, i32 noundef 8, i32 noundef 4, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 8, i32 noundef 48)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %80
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %90) #9
  store ptr null, ptr %18, align 8
  br label %91

91:                                               ; preds = %89
  %92 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %92, i32 noundef 941, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.2)
  br label %93

93:                                               ; preds = %91, %80
  br label %94

94:                                               ; preds = %93, %74
  %95 = load i32, ptr %5, align 4
  %96 = call i32 @fstat64(i32 noundef %95, ptr noundef %20) #9
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = sext i32 %100 to i64
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  br label %104

104:                                              ; preds = %103
  %105 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %105) #9
  store ptr null, ptr %18, align 8
  br label %106

106:                                              ; preds = %104
  %107 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %107, i32 noundef 947, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.3)
  br label %108

108:                                              ; preds = %106, %94
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds %struct.rzip_control, ptr %109, i32 0, i32 26
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 4096
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %132, label %114

114:                                              ; preds = %108
  %115 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %116 = load i64, ptr %115, align 8
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.rzip_control, ptr %117, i32 0, i32 34
  store i64 %116, ptr %118, align 8
  store i64 %116, ptr %11, align 8
  br label %119

119:                                              ; preds = %114
  %120 = load ptr, ptr %4, align 8
  %121 = getelementptr inbounds %struct.rzip_control, ptr %120, i32 0, i32 26
  %122 = load i64, ptr %121, align 8
  %123 = and i64 %122, 3072
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %119
  br label %126

126:                                              ; preds = %125
  %127 = load ptr, ptr %4, align 8
  %128 = load i64, ptr %11, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %127, i32 noundef 3, i32 noundef 952, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.4, i64 noundef %128)
  br label %129

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %119
  br label %131

131:                                              ; preds = %130
  br label %135

132:                                              ; preds = %108
  %133 = load ptr, ptr %4, align 8
  %134 = getelementptr inbounds %struct.rzip_control, ptr %133, i32 0, i32 34
  store i64 0, ptr %134, align 8
  br label %135

135:                                              ; preds = %132, %131
  %136 = load ptr, ptr %4, align 8
  %137 = getelementptr inbounds %struct.rzip_control, ptr %136, i32 0, i32 26
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 8192
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %183, label %141

141:                                              ; preds = %135
  %142 = load i32, ptr %6, align 4
  %143 = call i32 @fstatvfs64(i32 noundef %142, ptr noundef %19) #9
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %141
  br label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %152) #9
  store ptr null, ptr %18, align 8
  br label %153

153:                                              ; preds = %151
  %154 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %154, i32 noundef 962, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.5)
  br label %155

155:                                              ; preds = %153, %141
  %156 = getelementptr inbounds %struct.statvfs, ptr %19, i32 0, i32 0
  %157 = load i64, ptr %156, align 8
  %158 = getelementptr inbounds %struct.statvfs, ptr %19, i32 0, i32 4
  %159 = load i64, ptr %158, align 8
  %160 = mul nsw i64 %157, %159
  store i64 %160, ptr %22, align 8
  %161 = load i64, ptr %22, align 8
  %162 = load ptr, ptr %4, align 8
  %163 = getelementptr inbounds %struct.rzip_control, ptr %162, i32 0, i32 34
  %164 = load i64, ptr %163, align 8
  %165 = icmp slt i64 %161, %164
  br i1 %165, label %166, label %182

166:                                              ; preds = %155
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds %struct.rzip_control, ptr %167, i32 0, i32 26
  %169 = load i64, ptr %168, align 8
  %170 = and i64 %169, 8
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %166
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %174, i32 noundef 967, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.6)
  br label %175

175:                                              ; preds = %173
  br label %181

176:                                              ; preds = %166
  br label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %178) #9
  store ptr null, ptr %18, align 8
  br label %179

179:                                              ; preds = %177
  %180 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %180, i32 noundef 970, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.7)
  br label %181

181:                                              ; preds = %179, %175
  br label %182

182:                                              ; preds = %181, %155
  br label %183

183:                                              ; preds = %182, %135
  %184 = load ptr, ptr %4, align 8
  %185 = getelementptr inbounds %struct.rzip_control, ptr %184, i32 0, i32 23
  %186 = load i64, ptr %185, align 8
  %187 = load ptr, ptr %4, align 8
  %188 = getelementptr inbounds %struct.rzip_control, ptr %187, i32 0, i32 29
  store i64 %186, ptr %188, align 8
  %189 = load ptr, ptr %4, align 8
  %190 = getelementptr inbounds %struct.rzip_control, ptr %189, i32 0, i32 29
  call void @round_to_page(ptr noundef %190)
  %191 = load ptr, ptr %4, align 8
  %192 = getelementptr inbounds %struct.rzip_control, ptr %191, i32 0, i32 26
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 32768
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %202

196:                                              ; preds = %183
  %197 = load ptr, ptr %4, align 8
  %198 = getelementptr inbounds %struct.rzip_control, ptr %197, i32 0, i32 34
  %199 = load i64, ptr %198, align 8
  %200 = load ptr, ptr %4, align 8
  %201 = getelementptr inbounds %struct.rzip_control, ptr %200, i32 0, i32 28
  store i64 %199, ptr %201, align 8
  br label %223

202:                                              ; preds = %183
  %203 = load ptr, ptr %4, align 8
  %204 = getelementptr inbounds %struct.rzip_control, ptr %203, i32 0, i32 25
  %205 = load i64, ptr %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %214

207:                                              ; preds = %202
  %208 = load ptr, ptr %4, align 8
  %209 = getelementptr inbounds %struct.rzip_control, ptr %208, i32 0, i32 25
  %210 = load i64, ptr %209, align 8
  %211 = mul nsw i64 %210, 104857600
  %212 = load ptr, ptr %4, align 8
  %213 = getelementptr inbounds %struct.rzip_control, ptr %212, i32 0, i32 28
  store i64 %211, ptr %213, align 8
  br label %222

214:                                              ; preds = %202
  %215 = load ptr, ptr %4, align 8
  %216 = getelementptr inbounds %struct.rzip_control, ptr %215, i32 0, i32 27
  %217 = load i64, ptr %216, align 8
  %218 = sdiv i64 %217, 3
  %219 = mul nsw i64 %218, 2
  %220 = load ptr, ptr %4, align 8
  %221 = getelementptr inbounds %struct.rzip_control, ptr %220, i32 0, i32 28
  store i64 %219, ptr %221, align 8
  br label %222

222:                                              ; preds = %214, %207
  br label %223

223:                                              ; preds = %222, %196
  %224 = load ptr, ptr %4, align 8
  %225 = getelementptr inbounds %struct.rzip_control, ptr %224, i32 0, i32 29
  %226 = load i64, ptr %225, align 8
  %227 = load ptr, ptr %4, align 8
  %228 = getelementptr inbounds %struct.rzip_control, ptr %227, i32 0, i32 28
  %229 = load i64, ptr %228, align 8
  %230 = icmp slt i64 %226, %229
  br i1 %230, label %231, label %235

231:                                              ; preds = %223
  %232 = load ptr, ptr %4, align 8
  %233 = getelementptr inbounds %struct.rzip_control, ptr %232, i32 0, i32 29
  %234 = load i64, ptr %233, align 8
  br label %239

235:                                              ; preds = %223
  %236 = load ptr, ptr %4, align 8
  %237 = getelementptr inbounds %struct.rzip_control, ptr %236, i32 0, i32 28
  %238 = load i64, ptr %237, align 8
  br label %239

239:                                              ; preds = %235, %231
  %240 = phi i64 [ %234, %231 ], [ %238, %235 ]
  %241 = load ptr, ptr %4, align 8
  %242 = getelementptr inbounds %struct.rzip_control, ptr %241, i32 0, i32 29
  store i64 %240, ptr %242, align 8
  %243 = load ptr, ptr %4, align 8
  %244 = getelementptr inbounds %struct.rzip_control, ptr %243, i32 0, i32 28
  %245 = load i64, ptr %244, align 8
  %246 = load ptr, ptr %4, align 8
  %247 = getelementptr inbounds %struct.rzip_control, ptr %246, i32 0, i32 34
  %248 = load i64, ptr %247, align 8
  %249 = icmp slt i64 %245, %248
  br i1 %249, label %250, label %253

250:                                              ; preds = %239
  %251 = load ptr, ptr %4, align 8
  %252 = getelementptr inbounds %struct.rzip_control, ptr %251, i32 0, i32 28
  call void @round_to_page(ptr noundef %252)
  br label %253

253:                                              ; preds = %250, %239
  %254 = load ptr, ptr %4, align 8
  %255 = getelementptr inbounds %struct.rzip_control, ptr %254, i32 0, i32 26
  %256 = load i64, ptr %255, align 8
  %257 = and i64 %256, 4096
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %275, label %259

259:                                              ; preds = %253
  %260 = load ptr, ptr %4, align 8
  %261 = getelementptr inbounds %struct.rzip_control, ptr %260, i32 0, i32 28
  %262 = load i64, ptr %261, align 8
  %263 = load i64, ptr %11, align 8
  %264 = icmp slt i64 %262, %263
  br i1 %264, label %265, label %269

265:                                              ; preds = %259
  %266 = load ptr, ptr %4, align 8
  %267 = getelementptr inbounds %struct.rzip_control, ptr %266, i32 0, i32 28
  %268 = load i64, ptr %267, align 8
  br label %271

269:                                              ; preds = %259
  %270 = load i64, ptr %11, align 8
  br label %271

271:                                              ; preds = %269, %265
  %272 = phi i64 [ %268, %265 ], [ %270, %269 ]
  %273 = load ptr, ptr %18, align 8
  %274 = getelementptr inbounds %struct.rzip_state, ptr %273, i32 0, i32 10
  store i64 %272, ptr %274, align 8
  br label %281

275:                                              ; preds = %253
  %276 = load ptr, ptr %4, align 8
  %277 = getelementptr inbounds %struct.rzip_control, ptr %276, i32 0, i32 29
  %278 = load i64, ptr %277, align 8
  %279 = load ptr, ptr %18, align 8
  %280 = getelementptr inbounds %struct.rzip_state, ptr %279, i32 0, i32 10
  store i64 %278, ptr %280, align 8
  br label %281

281:                                              ; preds = %275, %271
  %282 = load ptr, ptr %18, align 8
  %283 = getelementptr inbounds %struct.rzip_state, ptr %282, i32 0, i32 10
  %284 = load i64, ptr %283, align 8
  %285 = load i64, ptr %11, align 8
  %286 = icmp slt i64 %284, %285
  br i1 %286, label %287, label %290

287:                                              ; preds = %281
  %288 = load ptr, ptr %18, align 8
  %289 = getelementptr inbounds %struct.rzip_state, ptr %288, i32 0, i32 10
  call void @round_to_page(ptr noundef %289)
  br label %290

290:                                              ; preds = %287, %281
  %291 = load ptr, ptr %4, align 8
  %292 = getelementptr inbounds %struct.rzip_control, ptr %291, i32 0, i32 20
  %293 = load i8, ptr %292, align 8
  %294 = zext i8 %293 to i64
  %295 = getelementptr inbounds [10 x %struct.level], ptr @levels, i64 0, i64 %294
  %296 = load ptr, ptr %18, align 8
  %297 = getelementptr inbounds %struct.rzip_state, ptr %296, i32 0, i32 1
  store ptr %295, ptr %297, align 8
  %298 = load i32, ptr %5, align 4
  %299 = load ptr, ptr %18, align 8
  %300 = getelementptr inbounds %struct.rzip_state, ptr %299, i32 0, i32 14
  store i32 %298, ptr %300, align 8
  %301 = load i32, ptr %6, align 4
  %302 = load ptr, ptr %18, align 8
  %303 = getelementptr inbounds %struct.rzip_state, ptr %302, i32 0, i32 15
  store i32 %301, ptr %303, align 4
  %304 = load ptr, ptr %18, align 8
  %305 = getelementptr inbounds %struct.rzip_state, ptr %304, i32 0, i32 16
  store i8 0, ptr %305, align 8
  %306 = load ptr, ptr %18, align 8
  call void @init_hash_indexes(ptr noundef %306)
  store i32 0, ptr %14, align 4
  %307 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 1
  store i64 0, ptr %307, align 8
  %308 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0
  store i64 0, ptr %308, align 8
  %309 = call i32 @gettimeofday(ptr noundef %9, ptr noundef null) #9
  %310 = load ptr, ptr %4, align 8
  %311 = call zeroext i1 @prepare_streamout_threads(ptr noundef %310)
  %312 = load ptr, ptr %4, align 8
  %313 = getelementptr inbounds %struct.rzip_control, ptr %312, i32 0, i32 72
  store ptr @single_mcpy, ptr %313, align 8
  %314 = load ptr, ptr %4, align 8
  %315 = getelementptr inbounds %struct.rzip_control, ptr %314, i32 0, i32 73
  store ptr @single_next_tag, ptr %315, align 8
  %316 = load ptr, ptr %4, align 8
  %317 = getelementptr inbounds %struct.rzip_control, ptr %316, i32 0, i32 74
  store ptr @single_full_tag, ptr %317, align 8
  %318 = load ptr, ptr %4, align 8
  %319 = getelementptr inbounds %struct.rzip_control, ptr %318, i32 0, i32 75
  store ptr @single_match_len, ptr %319, align 8
  br label %320

320:                                              ; preds = %981, %290
  %321 = load i32, ptr %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %340

323:                                              ; preds = %320
  %324 = load i64, ptr %11, align 8
  %325 = icmp sgt i64 %324, 0
  br i1 %325, label %340, label %326

326:                                              ; preds = %323
  %327 = load ptr, ptr %4, align 8
  %328 = getelementptr inbounds %struct.rzip_control, ptr %327, i32 0, i32 26
  %329 = load i64, ptr %328, align 8
  %330 = and i64 %329, 4096
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %338

332:                                              ; preds = %326
  %333 = load ptr, ptr %18, align 8
  %334 = getelementptr inbounds %struct.rzip_state, ptr %333, i32 0, i32 16
  %335 = load i8, ptr %334, align 8
  %336 = icmp ne i8 %335, 0
  %337 = xor i1 %336, true
  br label %338

338:                                              ; preds = %332, %326
  %339 = phi i1 [ false, %326 ], [ %337, %332 ]
  br label %340

340:                                              ; preds = %338, %323, %320
  %341 = phi i1 [ true, %323 ], [ true, %320 ], [ %339, %338 ]
  br i1 %341, label %342, label %982

342:                                              ; preds = %340
  %343 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %344 = load i64, ptr %343, align 8
  %345 = load i64, ptr %11, align 8
  %346 = sub nsw i64 %344, %345
  store i64 %346, ptr %25, align 8
  store i32 8, ptr %26, align 4
  %347 = load ptr, ptr %4, align 8
  %348 = getelementptr inbounds %struct.rzip_control, ptr %347, i32 0, i32 28
  %349 = load i64, ptr %348, align 8
  %350 = load ptr, ptr %18, align 8
  %351 = getelementptr inbounds %struct.rzip_state, ptr %350, i32 0, i32 10
  store i64 %349, ptr %351, align 8
  %352 = load ptr, ptr %4, align 8
  %353 = getelementptr inbounds %struct.rzip_control, ptr %352, i32 0, i32 29
  %354 = load i64, ptr %353, align 8
  %355 = load ptr, ptr %18, align 8
  %356 = getelementptr inbounds %struct.rzip_state, ptr %355, i32 0, i32 11
  store i64 %354, ptr %356, align 8
  %357 = load ptr, ptr %4, align 8
  %358 = getelementptr inbounds %struct.rzip_control, ptr %357, i32 0, i32 26
  %359 = load i64, ptr %358, align 8
  %360 = and i64 %359, 4096
  %361 = icmp ne i64 %360, 0
  br i1 %361, label %410, label %362

362:                                              ; preds = %342
  %363 = load ptr, ptr %18, align 8
  %364 = getelementptr inbounds %struct.rzip_state, ptr %363, i32 0, i32 10
  %365 = load i64, ptr %364, align 8
  %366 = load i64, ptr %11, align 8
  %367 = icmp slt i64 %365, %366
  br i1 %367, label %368, label %372

368:                                              ; preds = %362
  %369 = load ptr, ptr %18, align 8
  %370 = getelementptr inbounds %struct.rzip_state, ptr %369, i32 0, i32 10
  %371 = load i64, ptr %370, align 8
  br label %374

372:                                              ; preds = %362
  %373 = load i64, ptr %11, align 8
  br label %374

374:                                              ; preds = %372, %368
  %375 = phi i64 [ %371, %368 ], [ %373, %372 ]
  %376 = load ptr, ptr %18, align 8
  %377 = getelementptr inbounds %struct.rzip_state, ptr %376, i32 0, i32 10
  store i64 %375, ptr %377, align 8
  %378 = load ptr, ptr %18, align 8
  %379 = getelementptr inbounds %struct.rzip_state, ptr %378, i32 0, i32 10
  %380 = load i64, ptr %379, align 8
  %381 = icmp ne i64 %380, 0
  %382 = xor i1 %381, true
  %383 = xor i1 %382, true
  %384 = zext i1 %383 to i32
  %385 = sext i32 %384 to i64
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %403

387:                                              ; preds = %374
  %388 = load ptr, ptr %18, align 8
  %389 = getelementptr inbounds %struct.rzip_state, ptr %388, i32 0, i32 11
  %390 = load i64, ptr %389, align 8
  %391 = load i64, ptr %11, align 8
  %392 = icmp slt i64 %390, %391
  br i1 %392, label %393, label %397

393:                                              ; preds = %387
  %394 = load ptr, ptr %18, align 8
  %395 = getelementptr inbounds %struct.rzip_state, ptr %394, i32 0, i32 11
  %396 = load i64, ptr %395, align 8
  br label %399

397:                                              ; preds = %387
  %398 = load i64, ptr %11, align 8
  br label %399

399:                                              ; preds = %397, %393
  %400 = phi i64 [ %396, %393 ], [ %398, %397 ]
  %401 = load ptr, ptr %18, align 8
  %402 = getelementptr inbounds %struct.rzip_state, ptr %401, i32 0, i32 11
  store i64 %400, ptr %402, align 8
  br label %409

403:                                              ; preds = %374
  %404 = load ptr, ptr %4, align 8
  %405 = getelementptr inbounds %struct.rzip_control, ptr %404, i32 0, i32 35
  %406 = load i64, ptr %405, align 8
  %407 = load ptr, ptr %18, align 8
  %408 = getelementptr inbounds %struct.rzip_state, ptr %407, i32 0, i32 11
  store i64 %406, ptr %408, align 8
  br label %409

409:                                              ; preds = %403, %399
  br label %410

410:                                              ; preds = %409, %342
  br label %411

411:                                              ; preds = %576, %488, %410
  %412 = load ptr, ptr %4, align 8
  %413 = getelementptr inbounds %struct.rzip_control, ptr %412, i32 0, i32 26
  %414 = load i64, ptr %413, align 8
  %415 = and i64 %414, 4096
  %416 = icmp ne i64 %415, 0
  br i1 %416, label %417, label %500

417:                                              ; preds = %411
  %418 = load ptr, ptr %18, align 8
  %419 = getelementptr inbounds %struct.rzip_state, ptr %418, i32 0, i32 11
  %420 = load i64, ptr %419, align 8
  %421 = call ptr @mmap64(ptr noundef null, i64 noundef %420, i32 noundef 3, i32 noundef 34, i32 noundef -1, i64 noundef 0) #9
  %422 = load ptr, ptr %7, align 8
  %423 = getelementptr inbounds %struct.sliding_buffer, ptr %422, i32 0, i32 0
  store ptr %421, ptr %423, align 8
  %424 = load ptr, ptr %7, align 8
  %425 = getelementptr inbounds %struct.sliding_buffer, ptr %424, i32 0, i32 0
  %426 = load ptr, ptr %425, align 8
  %427 = icmp eq ptr %426, inttoptr (i64 -1 to ptr)
  br i1 %427, label %428, label %489

428:                                              ; preds = %417
  %429 = call ptr @__errno_location() #11
  %430 = load i32, ptr %429, align 4
  %431 = icmp ne i32 %430, 12
  %432 = xor i1 %431, true
  %433 = xor i1 %432, true
  %434 = zext i1 %433 to i32
  %435 = sext i32 %434 to i64
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %454

437:                                              ; preds = %428
  %438 = load ptr, ptr %4, align 8
  %439 = call zeroext i1 @close_streamout_threads(ptr noundef %438)
  br label %440

440:                                              ; preds = %437
  %441 = load ptr, ptr %18, align 8
  %442 = getelementptr inbounds %struct.rzip_state, ptr %441, i32 0, i32 3
  %443 = load ptr, ptr %442, align 8
  call void @free(ptr noundef %443) #9
  %444 = load ptr, ptr %18, align 8
  %445 = getelementptr inbounds %struct.rzip_state, ptr %444, i32 0, i32 3
  store ptr null, ptr %445, align 8
  br label %446

446:                                              ; preds = %440
  br label %447

447:                                              ; preds = %446
  %448 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %448) #9
  store ptr null, ptr %18, align 8
  br label %449

449:                                              ; preds = %447
  %450 = load ptr, ptr %4, align 8
  %451 = load ptr, ptr %4, align 8
  %452 = getelementptr inbounds %struct.rzip_control, ptr %451, i32 0, i32 0
  %453 = load ptr, ptr %452, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %450, i32 noundef 1046, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.8, ptr noundef %453)
  br label %454

454:                                              ; preds = %449, %428
  %455 = load ptr, ptr %18, align 8
  %456 = getelementptr inbounds %struct.rzip_state, ptr %455, i32 0, i32 11
  %457 = load i64, ptr %456, align 8
  %458 = sdiv i64 %457, 10
  %459 = mul nsw i64 %458, 9
  %460 = load ptr, ptr %18, align 8
  %461 = getelementptr inbounds %struct.rzip_state, ptr %460, i32 0, i32 11
  store i64 %459, ptr %461, align 8
  %462 = load ptr, ptr %18, align 8
  %463 = getelementptr inbounds %struct.rzip_state, ptr %462, i32 0, i32 11
  call void @round_to_page(ptr noundef %463)
  %464 = load ptr, ptr %18, align 8
  %465 = getelementptr inbounds %struct.rzip_state, ptr %464, i32 0, i32 11
  %466 = load i64, ptr %465, align 8
  %467 = icmp ne i64 %466, 0
  %468 = xor i1 %467, true
  %469 = xor i1 %468, true
  %470 = xor i1 %469, true
  %471 = zext i1 %470 to i32
  %472 = sext i32 %471 to i64
  %473 = icmp ne i64 %472, 0
  br i1 %473, label %474, label %488

474:                                              ; preds = %454
  %475 = load ptr, ptr %4, align 8
  %476 = call zeroext i1 @close_streamout_threads(ptr noundef %475)
  br label %477

477:                                              ; preds = %474
  %478 = load ptr, ptr %18, align 8
  %479 = getelementptr inbounds %struct.rzip_state, ptr %478, i32 0, i32 3
  %480 = load ptr, ptr %479, align 8
  call void @free(ptr noundef %480) #9
  %481 = load ptr, ptr %18, align 8
  %482 = getelementptr inbounds %struct.rzip_state, ptr %481, i32 0, i32 3
  store ptr null, ptr %482, align 8
  br label %483

483:                                              ; preds = %477
  br label %484

484:                                              ; preds = %483
  %485 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %485) #9
  store ptr null, ptr %18, align 8
  br label %486

486:                                              ; preds = %484
  %487 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %487, i32 noundef 1054, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.9)
  br label %488

488:                                              ; preds = %486, %454
  br label %411

489:                                              ; preds = %417
  %490 = load ptr, ptr %18, align 8
  %491 = getelementptr inbounds %struct.rzip_state, ptr %490, i32 0, i32 11
  %492 = load i64, ptr %491, align 8
  %493 = load ptr, ptr %18, align 8
  %494 = getelementptr inbounds %struct.rzip_state, ptr %493, i32 0, i32 10
  store i64 %492, ptr %494, align 8
  %495 = load ptr, ptr %4, align 8
  %496 = load ptr, ptr %7, align 8
  %497 = getelementptr inbounds %struct.sliding_buffer, ptr %496, i32 0, i32 0
  %498 = load ptr, ptr %497, align 8
  %499 = load ptr, ptr %18, align 8
  call void @mmap_stdin(ptr noundef %495, ptr noundef %498, ptr noundef %499)
  br label %613

500:                                              ; preds = %411
  %501 = load ptr, ptr %7, align 8
  %502 = getelementptr inbounds %struct.sliding_buffer, ptr %501, i32 0, i32 0
  %503 = load ptr, ptr %502, align 8
  %504 = load ptr, ptr %18, align 8
  %505 = getelementptr inbounds %struct.rzip_state, ptr %504, i32 0, i32 11
  %506 = load i64, ptr %505, align 8
  %507 = load i32, ptr %5, align 4
  %508 = load i64, ptr %25, align 8
  %509 = call ptr @mmap64(ptr noundef %503, i64 noundef %506, i32 noundef 1, i32 noundef 1, i32 noundef %507, i64 noundef %508) #9
  %510 = load ptr, ptr %7, align 8
  %511 = getelementptr inbounds %struct.sliding_buffer, ptr %510, i32 0, i32 0
  store ptr %509, ptr %511, align 8
  %512 = load ptr, ptr %7, align 8
  %513 = getelementptr inbounds %struct.sliding_buffer, ptr %512, i32 0, i32 0
  %514 = load ptr, ptr %513, align 8
  %515 = icmp eq ptr %514, inttoptr (i64 -1 to ptr)
  br i1 %515, label %516, label %577

516:                                              ; preds = %500
  %517 = call ptr @__errno_location() #11
  %518 = load i32, ptr %517, align 4
  %519 = icmp ne i32 %518, 12
  %520 = xor i1 %519, true
  %521 = xor i1 %520, true
  %522 = zext i1 %521 to i32
  %523 = sext i32 %522 to i64
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %525, label %542

525:                                              ; preds = %516
  %526 = load ptr, ptr %4, align 8
  %527 = call zeroext i1 @close_streamout_threads(ptr noundef %526)
  br label %528

528:                                              ; preds = %525
  %529 = load ptr, ptr %18, align 8
  %530 = getelementptr inbounds %struct.rzip_state, ptr %529, i32 0, i32 3
  %531 = load ptr, ptr %530, align 8
  call void @free(ptr noundef %531) #9
  %532 = load ptr, ptr %18, align 8
  %533 = getelementptr inbounds %struct.rzip_state, ptr %532, i32 0, i32 3
  store ptr null, ptr %533, align 8
  br label %534

534:                                              ; preds = %528
  br label %535

535:                                              ; preds = %534
  %536 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %536) #9
  store ptr null, ptr %18, align 8
  br label %537

537:                                              ; preds = %535
  %538 = load ptr, ptr %4, align 8
  %539 = load ptr, ptr %4, align 8
  %540 = getelementptr inbounds %struct.rzip_control, ptr %539, i32 0, i32 0
  %541 = load ptr, ptr %540, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %538, i32 noundef 1068, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.8, ptr noundef %541)
  br label %542

542:                                              ; preds = %537, %516
  %543 = load ptr, ptr %18, align 8
  %544 = getelementptr inbounds %struct.rzip_state, ptr %543, i32 0, i32 11
  %545 = load i64, ptr %544, align 8
  %546 = sdiv i64 %545, 10
  %547 = mul nsw i64 %546, 9
  %548 = load ptr, ptr %18, align 8
  %549 = getelementptr inbounds %struct.rzip_state, ptr %548, i32 0, i32 11
  store i64 %547, ptr %549, align 8
  %550 = load ptr, ptr %18, align 8
  %551 = getelementptr inbounds %struct.rzip_state, ptr %550, i32 0, i32 11
  call void @round_to_page(ptr noundef %551)
  %552 = load ptr, ptr %18, align 8
  %553 = getelementptr inbounds %struct.rzip_state, ptr %552, i32 0, i32 11
  %554 = load i64, ptr %553, align 8
  %555 = icmp ne i64 %554, 0
  %556 = xor i1 %555, true
  %557 = xor i1 %556, true
  %558 = xor i1 %557, true
  %559 = zext i1 %558 to i32
  %560 = sext i32 %559 to i64
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %576

562:                                              ; preds = %542
  %563 = load ptr, ptr %4, align 8
  %564 = call zeroext i1 @close_streamout_threads(ptr noundef %563)
  br label %565

565:                                              ; preds = %562
  %566 = load ptr, ptr %18, align 8
  %567 = getelementptr inbounds %struct.rzip_state, ptr %566, i32 0, i32 3
  %568 = load ptr, ptr %567, align 8
  call void @free(ptr noundef %568) #9
  %569 = load ptr, ptr %18, align 8
  %570 = getelementptr inbounds %struct.rzip_state, ptr %569, i32 0, i32 3
  store ptr null, ptr %570, align 8
  br label %571

571:                                              ; preds = %565
  br label %572

572:                                              ; preds = %571
  %573 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %573) #9
  store ptr null, ptr %18, align 8
  br label %574

574:                                              ; preds = %572
  %575 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %575, i32 noundef 1076, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.9)
  br label %576

576:                                              ; preds = %574, %542
  br label %411

577:                                              ; preds = %500
  %578 = load ptr, ptr %18, align 8
  %579 = getelementptr inbounds %struct.rzip_state, ptr %578, i32 0, i32 11
  %580 = load i64, ptr %579, align 8
  %581 = load ptr, ptr %18, align 8
  %582 = getelementptr inbounds %struct.rzip_state, ptr %581, i32 0, i32 10
  %583 = load i64, ptr %582, align 8
  %584 = icmp slt i64 %580, %583
  br i1 %584, label %585, label %612

585:                                              ; preds = %577
  br label %586

586:                                              ; preds = %585
  %587 = load ptr, ptr %4, align 8
  %588 = getelementptr inbounds %struct.rzip_control, ptr %587, i32 0, i32 26
  %589 = load i64, ptr %588, align 8
  %590 = and i64 %589, 2048
  %591 = icmp ne i64 %590, 0
  br i1 %591, label %592, label %602

592:                                              ; preds = %586
  br label %593

593:                                              ; preds = %592
  %594 = load ptr, ptr %4, align 8
  %595 = load ptr, ptr %18, align 8
  %596 = getelementptr inbounds %struct.rzip_state, ptr %595, i32 0, i32 11
  %597 = load i64, ptr %596, align 8
  %598 = load ptr, ptr %18, align 8
  %599 = getelementptr inbounds %struct.rzip_state, ptr %598, i32 0, i32 10
  %600 = load i64, ptr %599, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %594, i32 noundef 4, i32 noundef 1081, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.10, i64 noundef %597, i64 noundef %600)
  br label %601

601:                                              ; preds = %593
  br label %602

602:                                              ; preds = %601, %586
  br label %603

603:                                              ; preds = %602
  %604 = load ptr, ptr %4, align 8
  %605 = getelementptr inbounds %struct.rzip_control, ptr %604, i32 0, i32 72
  store ptr @sliding_mcpy, ptr %605, align 8
  %606 = load ptr, ptr %4, align 8
  %607 = getelementptr inbounds %struct.rzip_control, ptr %606, i32 0, i32 73
  store ptr @sliding_next_tag, ptr %607, align 8
  %608 = load ptr, ptr %4, align 8
  %609 = getelementptr inbounds %struct.rzip_control, ptr %608, i32 0, i32 74
  store ptr @sliding_full_tag, ptr %609, align 8
  %610 = load ptr, ptr %4, align 8
  %611 = getelementptr inbounds %struct.rzip_control, ptr %610, i32 0, i32 75
  store ptr @sliding_match_len, ptr %611, align 8
  br label %612

612:                                              ; preds = %603, %577
  br label %613

613:                                              ; preds = %612, %489
  br label %614

614:                                              ; preds = %613
  %615 = load ptr, ptr %4, align 8
  %616 = getelementptr inbounds %struct.rzip_control, ptr %615, i32 0, i32 26
  %617 = load i64, ptr %616, align 8
  %618 = and i64 %617, 2048
  %619 = icmp ne i64 %618, 0
  br i1 %619, label %620, label %627

620:                                              ; preds = %614
  br label %621

621:                                              ; preds = %620
  %622 = load ptr, ptr %4, align 8
  %623 = load ptr, ptr %18, align 8
  %624 = getelementptr inbounds %struct.rzip_state, ptr %623, i32 0, i32 11
  %625 = load i64, ptr %624, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %622, i32 noundef 4, i32 noundef 1088, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.11, i64 noundef %625)
  br label %626

626:                                              ; preds = %621
  br label %627

627:                                              ; preds = %626, %614
  br label %628

628:                                              ; preds = %627
  %629 = load ptr, ptr %18, align 8
  %630 = getelementptr inbounds %struct.rzip_state, ptr %629, i32 0, i32 10
  %631 = load i64, ptr %630, align 8
  %632 = load ptr, ptr %4, align 8
  %633 = getelementptr inbounds %struct.rzip_control, ptr %632, i32 0, i32 27
  %634 = load i64, ptr %633, align 8
  %635 = icmp sgt i64 %631, %634
  br i1 %635, label %636, label %649

636:                                              ; preds = %628
  br label %637

637:                                              ; preds = %636
  %638 = load ptr, ptr %4, align 8
  %639 = getelementptr inbounds %struct.rzip_control, ptr %638, i32 0, i32 26
  %640 = load i64, ptr %639, align 8
  %641 = and i64 %640, 3072
  %642 = icmp ne i64 %641, 0
  br i1 %642, label %643, label %647

643:                                              ; preds = %637
  br label %644

644:                                              ; preds = %643
  %645 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %645, i32 noundef 3, i32 noundef 1091, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.12)
  br label %646

646:                                              ; preds = %644
  br label %647

647:                                              ; preds = %646, %637
  br label %648

648:                                              ; preds = %647
  br label %649

649:                                              ; preds = %648, %628
  %650 = load i32, ptr %14, align 4
  %651 = icmp ne i32 %650, 0
  br i1 %651, label %713, label %652

652:                                              ; preds = %649
  %653 = load ptr, ptr %4, align 8
  %654 = getelementptr inbounds %struct.rzip_control, ptr %653, i32 0, i32 26
  %655 = load i64, ptr %654, align 8
  %656 = and i64 %655, 4096
  %657 = icmp ne i64 %656, 0
  br i1 %657, label %713, label %658

658:                                              ; preds = %652
  %659 = load ptr, ptr %18, align 8
  %660 = getelementptr inbounds %struct.rzip_state, ptr %659, i32 0, i32 10
  %661 = load i64, ptr %660, align 8
  %662 = icmp ne i64 %661, 0
  br i1 %662, label %663, label %713

663:                                              ; preds = %658
  %664 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %665 = load i64, ptr %664, align 8
  %666 = load ptr, ptr %18, align 8
  %667 = getelementptr inbounds %struct.rzip_state, ptr %666, i32 0, i32 10
  %668 = load i64, ptr %667, align 8
  %669 = sdiv i64 %665, %668
  %670 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %671 = load i64, ptr %670, align 8
  %672 = load ptr, ptr %18, align 8
  %673 = getelementptr inbounds %struct.rzip_state, ptr %672, i32 0, i32 10
  %674 = load i64, ptr %673, align 8
  %675 = srem i64 %671, %674
  %676 = icmp ne i64 %675, 0
  %677 = xor i1 %676, true
  %678 = xor i1 %677, true
  %679 = zext i1 %678 to i32
  %680 = sext i32 %679 to i64
  %681 = add nsw i64 %669, %680
  %682 = trunc i64 %681 to i32
  store i32 %682, ptr %14, align 4
  %683 = load i32, ptr %14, align 4
  %684 = icmp eq i32 %683, 1
  br i1 %684, label %685, label %698

685:                                              ; preds = %663
  br label %686

686:                                              ; preds = %685
  %687 = load ptr, ptr %4, align 8
  %688 = getelementptr inbounds %struct.rzip_control, ptr %687, i32 0, i32 26
  %689 = load i64, ptr %688, align 8
  %690 = and i64 %689, 3072
  %691 = icmp ne i64 %690, 0
  br i1 %691, label %692, label %696

692:                                              ; preds = %686
  br label %693

693:                                              ; preds = %692
  %694 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %694, i32 noundef 3, i32 noundef 1096, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.13)
  br label %695

695:                                              ; preds = %693
  br label %696

696:                                              ; preds = %695, %686
  br label %697

697:                                              ; preds = %696
  br label %712

698:                                              ; preds = %663
  br label %699

699:                                              ; preds = %698
  %700 = load ptr, ptr %4, align 8
  %701 = getelementptr inbounds %struct.rzip_control, ptr %700, i32 0, i32 26
  %702 = load i64, ptr %701, align 8
  %703 = and i64 %702, 3072
  %704 = icmp ne i64 %703, 0
  br i1 %704, label %705, label %710

705:                                              ; preds = %699
  br label %706

706:                                              ; preds = %705
  %707 = load ptr, ptr %4, align 8
  %708 = load i32, ptr %14, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %707, i32 noundef 3, i32 noundef 1098, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.14, i32 noundef %708)
  br label %709

709:                                              ; preds = %706
  br label %710

710:                                              ; preds = %709, %699
  br label %711

711:                                              ; preds = %710
  br label %712

712:                                              ; preds = %711, %697
  br label %713

713:                                              ; preds = %712, %658, %652, %649
  %714 = load i64, ptr %25, align 8
  %715 = load ptr, ptr %7, align 8
  %716 = getelementptr inbounds %struct.sliding_buffer, ptr %715, i32 0, i32 2
  store i64 %714, ptr %716, align 8
  br label %717

717:                                              ; preds = %713
  %718 = load ptr, ptr %4, align 8
  %719 = getelementptr inbounds %struct.rzip_control, ptr %718, i32 0, i32 26
  %720 = load i64, ptr %719, align 8
  %721 = and i64 %720, 2048
  %722 = icmp ne i64 %721, 0
  br i1 %722, label %723, label %730

723:                                              ; preds = %717
  br label %724

724:                                              ; preds = %723
  %725 = load ptr, ptr %4, align 8
  %726 = load ptr, ptr %18, align 8
  %727 = getelementptr inbounds %struct.rzip_state, ptr %726, i32 0, i32 10
  %728 = load i64, ptr %727, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %725, i32 noundef 4, i32 noundef 1102, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.15, i64 noundef %728)
  br label %729

729:                                              ; preds = %724
  br label %730

730:                                              ; preds = %729, %717
  br label %731

731:                                              ; preds = %730
  br label %732

732:                                              ; preds = %740, %731
  %733 = load ptr, ptr %18, align 8
  %734 = getelementptr inbounds %struct.rzip_state, ptr %733, i32 0, i32 10
  %735 = load i64, ptr %734, align 8
  %736 = load i32, ptr %26, align 4
  %737 = zext i32 %736 to i64
  %738 = ashr i64 %735, %737
  %739 = icmp sgt i64 %738, 0
  br i1 %739, label %740, label %743

740:                                              ; preds = %732
  %741 = load i32, ptr %26, align 4
  %742 = add nsw i32 %741, 1
  store i32 %742, ptr %26, align 4
  br label %732, !llvm.loop !6

743:                                              ; preds = %732
  %744 = load i32, ptr %26, align 4
  %745 = sdiv i32 %744, 8
  %746 = trunc i32 %745 to i8
  %747 = load ptr, ptr %18, align 8
  %748 = getelementptr inbounds %struct.rzip_state, ptr %747, i32 0, i32 12
  store i8 %746, ptr %748, align 8
  %749 = load i32, ptr %26, align 4
  %750 = srem i32 %749, 8
  %751 = icmp ne i32 %750, 0
  br i1 %751, label %752, label %757

752:                                              ; preds = %743
  %753 = load ptr, ptr %18, align 8
  %754 = getelementptr inbounds %struct.rzip_state, ptr %753, i32 0, i32 12
  %755 = load i8, ptr %754, align 8
  %756 = add i8 %755, 1
  store i8 %756, ptr %754, align 8
  br label %757

757:                                              ; preds = %752, %743
  br label %758

758:                                              ; preds = %757
  %759 = load ptr, ptr %4, align 8
  %760 = getelementptr inbounds %struct.rzip_control, ptr %759, i32 0, i32 26
  %761 = load i64, ptr %760, align 8
  %762 = and i64 %761, 2048
  %763 = icmp ne i64 %762, 0
  br i1 %763, label %764, label %772

764:                                              ; preds = %758
  br label %765

765:                                              ; preds = %764
  %766 = load ptr, ptr %4, align 8
  %767 = load ptr, ptr %18, align 8
  %768 = getelementptr inbounds %struct.rzip_state, ptr %767, i32 0, i32 12
  %769 = load i8, ptr %768, align 8
  %770 = sext i8 %769 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %766, i32 noundef 4, i32 noundef 1114, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.16, i32 noundef %770)
  br label %771

771:                                              ; preds = %765
  br label %772

772:                                              ; preds = %771, %758
  br label %773

773:                                              ; preds = %772
  %774 = load ptr, ptr %4, align 8
  %775 = getelementptr inbounds %struct.rzip_control, ptr %774, i32 0, i32 26
  %776 = load i64, ptr %775, align 8
  %777 = and i64 %776, 4096
  %778 = icmp ne i64 %777, 0
  br i1 %778, label %779, label %789

779:                                              ; preds = %773
  %780 = load i64, ptr %11, align 8
  %781 = sub nsw i64 0, %780
  %782 = sitofp i64 %781 to double
  %783 = fmul double 1.000000e+02, %782
  %784 = load ptr, ptr %4, align 8
  %785 = getelementptr inbounds %struct.rzip_control, ptr %784, i32 0, i32 34
  %786 = load i64, ptr %785, align 8
  %787 = sitofp i64 %786 to double
  %788 = fdiv double %783, %787
  store double %788, ptr %23, align 8
  br label %802

789:                                              ; preds = %773
  %790 = load ptr, ptr %4, align 8
  %791 = getelementptr inbounds %struct.rzip_control, ptr %790, i32 0, i32 34
  %792 = load i64, ptr %791, align 8
  %793 = load i64, ptr %11, align 8
  %794 = sub nsw i64 %792, %793
  %795 = sitofp i64 %794 to double
  %796 = fmul double 1.000000e+02, %795
  %797 = load ptr, ptr %4, align 8
  %798 = getelementptr inbounds %struct.rzip_control, ptr %797, i32 0, i32 34
  %799 = load i64, ptr %798, align 8
  %800 = sitofp i64 %799 to double
  %801 = fdiv double %796, %800
  store double %801, ptr %23, align 8
  br label %802

802:                                              ; preds = %789, %779
  %803 = load ptr, ptr %18, align 8
  %804 = getelementptr inbounds %struct.rzip_state, ptr %803, i32 0, i32 10
  %805 = load i64, ptr %804, align 8
  %806 = sitofp i64 %805 to double
  %807 = load ptr, ptr %4, align 8
  %808 = getelementptr inbounds %struct.rzip_control, ptr %807, i32 0, i32 34
  %809 = load i64, ptr %808, align 8
  %810 = sitofp i64 %809 to double
  %811 = fdiv double %806, %810
  store double %811, ptr %24, align 8
  %812 = load i32, ptr %13, align 4
  %813 = add nsw i32 %812, 1
  store i32 %813, ptr %13, align 4
  %814 = load ptr, ptr %18, align 8
  %815 = getelementptr inbounds %struct.rzip_state, ptr %814, i32 0, i32 16
  %816 = load i8, ptr %815, align 8
  %817 = icmp ne i8 %816, 0
  br i1 %817, label %818, label %820

818:                                              ; preds = %802
  %819 = load i32, ptr %13, align 4
  store i32 %819, ptr %14, align 4
  br label %820

820:                                              ; preds = %818, %802
  %821 = call i32 @gettimeofday(ptr noundef %8, ptr noundef null) #9
  %822 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0
  %823 = load i64, ptr %822, align 8
  %824 = icmp sgt i64 %823, 0
  br i1 %824, label %825, label %921

825:                                              ; preds = %820
  %826 = load double, ptr %23, align 8
  %827 = fcmp ogt double %826, 1.000000e+02
  br i1 %827, label %828, label %921

828:                                              ; preds = %825
  %829 = getelementptr inbounds %struct.timeval, ptr %8, i32 0, i32 0
  %830 = load i64, ptr %829, align 8
  %831 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0
  %832 = load i64, ptr %831, align 8
  %833 = sub nsw i64 %830, %832
  %834 = trunc i64 %833 to i32
  store i32 %834, ptr %30, align 4
  %835 = load i32, ptr %30, align 4
  %836 = uitofp i32 %835 to double
  %837 = load double, ptr %23, align 8
  %838 = fdiv double %837, 1.000000e+02
  %839 = fdiv double %836, %838
  %840 = fptoui double %839 to i32
  store i32 %840, ptr %31, align 4
  %841 = load i32, ptr %30, align 4
  %842 = udiv i32 %841, 3600
  store i32 %842, ptr %32, align 4
  %843 = load i32, ptr %30, align 4
  %844 = udiv i32 %843, 60
  %845 = urem i32 %844, 60
  store i32 %845, ptr %33, align 4
  %846 = load i32, ptr %30, align 4
  %847 = urem i32 %846, 60
  store i32 %847, ptr %34, align 4
  %848 = load i32, ptr %31, align 4
  %849 = load i32, ptr %30, align 4
  %850 = sub i32 %848, %849
  store i32 %850, ptr %35, align 4
  %851 = load i32, ptr %35, align 4
  %852 = udiv i32 %851, 3600
  store i32 %852, ptr %27, align 4
  %853 = load i32, ptr %35, align 4
  %854 = udiv i32 %853, 60
  %855 = urem i32 %854, 60
  store i32 %855, ptr %28, align 4
  %856 = load i32, ptr %35, align 4
  %857 = urem i32 %856, 60
  store i32 %857, ptr %29, align 4
  %858 = load i64, ptr %12, align 8
  %859 = sdiv i64 %858, 1024
  %860 = sdiv i64 %859, 1024
  %861 = sitofp i64 %860 to double
  %862 = getelementptr inbounds %struct.timeval, ptr %8, i32 0, i32 0
  %863 = load i64, ptr %862, align 8
  %864 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0
  %865 = load i64, ptr %864, align 8
  %866 = sub nsw i64 %863, %865
  %867 = sitofp i64 %866 to double
  %868 = fdiv double %861, %867
  store double %868, ptr %16, align 8
  %869 = load ptr, ptr %4, align 8
  %870 = getelementptr inbounds %struct.rzip_control, ptr %869, i32 0, i32 26
  %871 = load i64, ptr %870, align 8
  %872 = and i64 %871, 4096
  %873 = icmp ne i64 %872, 0
  br i1 %873, label %874, label %880

874:                                              ; preds = %828
  %875 = load ptr, ptr %18, align 8
  %876 = getelementptr inbounds %struct.rzip_state, ptr %875, i32 0, i32 16
  %877 = load i8, ptr %876, align 8
  %878 = sext i8 %877 to i32
  %879 = icmp ne i32 %878, 0
  br i1 %879, label %880, label %902

880:                                              ; preds = %874, %828
  br label %881

881:                                              ; preds = %880
  %882 = load ptr, ptr %4, align 8
  %883 = getelementptr inbounds %struct.rzip_control, ptr %882, i32 0, i32 26
  %884 = load i64, ptr %883, align 8
  %885 = and i64 %884, 3072
  %886 = icmp ne i64 %885, 0
  br i1 %886, label %887, label %900

887:                                              ; preds = %881
  br label %888

888:                                              ; preds = %887
  %889 = load ptr, ptr %4, align 8
  %890 = load i32, ptr %13, align 4
  %891 = load i32, ptr %14, align 4
  %892 = load i32, ptr %32, align 4
  %893 = load i32, ptr %33, align 4
  %894 = load i32, ptr %34, align 4
  %895 = load i32, ptr %27, align 4
  %896 = load i32, ptr %28, align 4
  %897 = load i32, ptr %29, align 4
  %898 = load double, ptr %16, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %889, i32 noundef 3, i32 noundef 1145, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.17, i32 noundef %890, i32 noundef %891, i32 noundef %892, i32 noundef %893, i32 noundef %894, i32 noundef %895, i32 noundef %896, i32 noundef %897, double noundef %898)
  br label %899

899:                                              ; preds = %888
  br label %900

900:                                              ; preds = %899, %881
  br label %901

901:                                              ; preds = %900
  br label %920

902:                                              ; preds = %874
  br label %903

903:                                              ; preds = %902
  %904 = load ptr, ptr %4, align 8
  %905 = getelementptr inbounds %struct.rzip_control, ptr %904, i32 0, i32 26
  %906 = load i64, ptr %905, align 8
  %907 = and i64 %906, 3072
  %908 = icmp ne i64 %907, 0
  br i1 %908, label %909, label %918

909:                                              ; preds = %903
  br label %910

910:                                              ; preds = %909
  %911 = load ptr, ptr %4, align 8
  %912 = load i32, ptr %13, align 4
  %913 = load i32, ptr %32, align 4
  %914 = load i32, ptr %33, align 4
  %915 = load i32, ptr %34, align 4
  %916 = load double, ptr %16, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %911, i32 noundef 3, i32 noundef 1148, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.18, i32 noundef %912, i32 noundef %913, i32 noundef %914, i32 noundef %915, double noundef %916)
  br label %917

917:                                              ; preds = %910
  br label %918

918:                                              ; preds = %917, %903
  br label %919

919:                                              ; preds = %918
  br label %920

920:                                              ; preds = %919, %901
  br label %921

921:                                              ; preds = %920, %825, %820
  %922 = getelementptr inbounds %struct.timeval, ptr %8, i32 0, i32 0
  %923 = load i64, ptr %922, align 8
  %924 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0
  store i64 %923, ptr %924, align 8
  %925 = getelementptr inbounds %struct.timeval, ptr %8, i32 0, i32 1
  %926 = load i64, ptr %925, align 8
  %927 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 1
  store i64 %926, ptr %927, align 8
  %928 = load ptr, ptr %18, align 8
  %929 = getelementptr inbounds %struct.rzip_state, ptr %928, i32 0, i32 10
  %930 = load i64, ptr %929, align 8
  %931 = load i64, ptr %11, align 8
  %932 = icmp eq i64 %930, %931
  br i1 %932, label %933, label %936

933:                                              ; preds = %921
  %934 = load ptr, ptr %4, align 8
  %935 = getelementptr inbounds %struct.rzip_control, ptr %934, i32 0, i32 48
  store i8 1, ptr %935, align 8
  br label %936

936:                                              ; preds = %933, %921
  %937 = load ptr, ptr %4, align 8
  %938 = load ptr, ptr %18, align 8
  %939 = load i32, ptr %5, align 4
  %940 = load i32, ptr %6, align 4
  %941 = load i64, ptr %25, align 8
  %942 = load double, ptr %23, align 8
  %943 = load double, ptr %24, align 8
  call void @rzip_chunk(ptr noundef %937, ptr noundef %938, i32 noundef %939, i32 noundef %940, i64 noundef %941, double noundef %942, double noundef %943)
  %944 = load ptr, ptr %18, align 8
  %945 = getelementptr inbounds %struct.rzip_state, ptr %944, i32 0, i32 10
  %946 = load i64, ptr %945, align 8
  store i64 %946, ptr %12, align 8
  %947 = load ptr, ptr %18, align 8
  %948 = getelementptr inbounds %struct.rzip_state, ptr %947, i32 0, i32 10
  %949 = load i64, ptr %948, align 8
  %950 = load i64, ptr %11, align 8
  %951 = sub nsw i64 %950, %949
  store i64 %951, ptr %11, align 8
  %952 = load i64, ptr %11, align 8
  %953 = icmp sgt i64 %952, 0
  br i1 %953, label %954, label %960

954:                                              ; preds = %936
  %955 = load ptr, ptr %4, align 8
  %956 = getelementptr inbounds %struct.rzip_control, ptr %955, i32 0, i32 48
  %957 = load i8, ptr %956, align 8
  %958 = zext i8 %957 to i32
  %959 = icmp ne i32 %958, 0
  br label %960

960:                                              ; preds = %954, %936
  %961 = phi i1 [ false, %936 ], [ %959, %954 ]
  %962 = xor i1 %961, true
  %963 = xor i1 %962, true
  %964 = zext i1 %963 to i32
  %965 = sext i32 %964 to i64
  %966 = icmp ne i64 %965, 0
  br i1 %966, label %967, label %981

967:                                              ; preds = %960
  %968 = load ptr, ptr %4, align 8
  %969 = call zeroext i1 @close_streamout_threads(ptr noundef %968)
  br label %970

970:                                              ; preds = %967
  %971 = load ptr, ptr %18, align 8
  %972 = getelementptr inbounds %struct.rzip_state, ptr %971, i32 0, i32 3
  %973 = load ptr, ptr %972, align 8
  call void @free(ptr noundef %973) #9
  %974 = load ptr, ptr %18, align 8
  %975 = getelementptr inbounds %struct.rzip_state, ptr %974, i32 0, i32 3
  store ptr null, ptr %975, align 8
  br label %976

976:                                              ; preds = %970
  br label %977

977:                                              ; preds = %976
  %978 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %978) #9
  store ptr null, ptr %18, align 8
  br label %979

979:                                              ; preds = %977
  %980 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %980, i32 noundef 1164, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.19)
  br label %981

981:                                              ; preds = %979, %960
  br label %320, !llvm.loop !8

982:                                              ; preds = %340
  %983 = load ptr, ptr %18, align 8
  %984 = getelementptr inbounds %struct.rzip_state, ptr %983, i32 0, i32 3
  %985 = load ptr, ptr %984, align 8
  %986 = icmp ne ptr %985, null
  %987 = xor i1 %986, true
  %988 = xor i1 %987, true
  %989 = zext i1 %988 to i32
  %990 = sext i32 %989 to i64
  %991 = icmp ne i64 %990, 0
  br i1 %991, label %992, label %1000

992:                                              ; preds = %982
  br label %993

993:                                              ; preds = %992
  %994 = load ptr, ptr %18, align 8
  %995 = getelementptr inbounds %struct.rzip_state, ptr %994, i32 0, i32 3
  %996 = load ptr, ptr %995, align 8
  call void @free(ptr noundef %996) #9
  %997 = load ptr, ptr %18, align 8
  %998 = getelementptr inbounds %struct.rzip_state, ptr %997, i32 0, i32 3
  store ptr null, ptr %998, align 8
  br label %999

999:                                              ; preds = %993
  br label %1000

1000:                                             ; preds = %999, %982
  %1001 = load ptr, ptr %4, align 8
  %1002 = call zeroext i1 @close_streamout_threads(ptr noundef %1001)
  %1003 = xor i1 %1002, true
  %1004 = xor i1 %1003, true
  %1005 = xor i1 %1004, true
  %1006 = zext i1 %1005 to i32
  %1007 = sext i32 %1006 to i64
  %1008 = icmp ne i64 %1007, 0
  br i1 %1008, label %1009, label %1014

1009:                                             ; preds = %1000
  br label %1010

1010:                                             ; preds = %1009
  %1011 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %1011) #9
  store ptr null, ptr %18, align 8
  br label %1012

1012:                                             ; preds = %1010
  %1013 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %1013, i32 noundef 1172, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.20)
  br label %1014

1014:                                             ; preds = %1012, %1000
  %1015 = load ptr, ptr %4, align 8
  %1016 = getelementptr inbounds %struct.rzip_control, ptr %1015, i32 0, i32 26
  %1017 = load i64, ptr %1016, align 8
  %1018 = and i64 %1017, 65536
  %1019 = icmp ne i64 %1018, 0
  br i1 %1019, label %1026, label %1020

1020:                                             ; preds = %1014
  %1021 = load ptr, ptr %4, align 8
  %1022 = getelementptr inbounds %struct.rzip_control, ptr %1021, i32 0, i32 26
  %1023 = load i64, ptr %1022, align 8
  %1024 = and i64 %1023, 131072
  %1025 = icmp ne i64 %1024, 0
  br i1 %1025, label %1026, label %1121

1026:                                             ; preds = %1020, %1014
  %1027 = load ptr, ptr %4, align 8
  %1028 = getelementptr inbounds %struct.rzip_control, ptr %1027, i32 0, i32 52
  %1029 = load ptr, ptr %4, align 8
  %1030 = getelementptr inbounds %struct.rzip_control, ptr %1029, i32 0, i32 53
  %1031 = getelementptr inbounds [16 x i8], ptr %1030, i64 0, i64 0
  %1032 = call ptr @md5_finish_ctx(ptr noundef %1028, ptr noundef %1031) #9
  %1033 = load ptr, ptr %4, align 8
  %1034 = getelementptr inbounds %struct.rzip_control, ptr %1033, i32 0, i32 26
  %1035 = load i64, ptr %1034, align 8
  %1036 = and i64 %1035, 65536
  %1037 = icmp ne i64 %1036, 0
  br i1 %1037, label %1044, label %1038

1038:                                             ; preds = %1026
  %1039 = load ptr, ptr %4, align 8
  %1040 = getelementptr inbounds %struct.rzip_control, ptr %1039, i32 0, i32 26
  %1041 = load i64, ptr %1040, align 8
  %1042 = and i64 %1041, 2048
  %1043 = icmp ne i64 %1042, 0
  br i1 %1043, label %1044, label %1076

1044:                                             ; preds = %1038, %1026
  br label %1045

1045:                                             ; preds = %1044
  br label %1046

1046:                                             ; preds = %1045
  %1047 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1047, i32 noundef 1, i32 noundef 1179, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.21)
  br label %1048

1048:                                             ; preds = %1046
  br label %1049

1049:                                             ; preds = %1048
  store i32 0, ptr %15, align 4
  br label %1050

1050:                                             ; preds = %1067, %1049
  %1051 = load i32, ptr %15, align 4
  %1052 = icmp slt i32 %1051, 16
  br i1 %1052, label %1053, label %1070

1053:                                             ; preds = %1050
  br label %1054

1054:                                             ; preds = %1053
  br label %1055

1055:                                             ; preds = %1054
  %1056 = load ptr, ptr %4, align 8
  %1057 = load ptr, ptr %4, align 8
  %1058 = getelementptr inbounds %struct.rzip_control, ptr %1057, i32 0, i32 53
  %1059 = load i32, ptr %15, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = getelementptr inbounds [16 x i8], ptr %1058, i64 0, i64 %1060
  %1062 = load i8, ptr %1061, align 1
  %1063 = zext i8 %1062 to i32
  %1064 = and i32 %1063, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1056, i32 noundef 1, i32 noundef 1181, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.22, i32 noundef %1064)
  br label %1065

1065:                                             ; preds = %1055
  br label %1066

1066:                                             ; preds = %1065
  br label %1067

1067:                                             ; preds = %1066
  %1068 = load i32, ptr %15, align 4
  %1069 = add nsw i32 %1068, 1
  store i32 %1069, ptr %15, align 4
  br label %1050, !llvm.loop !9

1070:                                             ; preds = %1050
  br label %1071

1071:                                             ; preds = %1070
  br label %1072

1072:                                             ; preds = %1071
  %1073 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1073, i32 noundef 1, i32 noundef 1182, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.23)
  br label %1074

1074:                                             ; preds = %1072
  br label %1075

1075:                                             ; preds = %1074
  br label %1076

1076:                                             ; preds = %1075, %1038
  %1077 = load ptr, ptr %4, align 8
  %1078 = getelementptr inbounds %struct.rzip_control, ptr %1077, i32 0, i32 26
  %1079 = load i64, ptr %1078, align 8
  %1080 = and i64 %1079, 8388608
  %1081 = icmp ne i64 %1080, 0
  br i1 %1081, label %1082, label %1103

1082:                                             ; preds = %1076
  %1083 = load ptr, ptr %4, align 8
  %1084 = load ptr, ptr %4, align 8
  %1085 = getelementptr inbounds %struct.rzip_control, ptr %1084, i32 0, i32 53
  %1086 = getelementptr inbounds [16 x i8], ptr %1085, i64 0, i64 0
  %1087 = load ptr, ptr %4, align 8
  %1088 = getelementptr inbounds %struct.rzip_control, ptr %1087, i32 0, i32 44
  %1089 = load ptr, ptr %1088, align 8
  %1090 = call zeroext i1 @lrz_encrypt(ptr noundef %1083, ptr noundef %1086, i64 noundef 16, ptr noundef %1089)
  %1091 = xor i1 %1090, true
  %1092 = xor i1 %1091, true
  %1093 = xor i1 %1092, true
  %1094 = zext i1 %1093 to i32
  %1095 = sext i32 %1094 to i64
  %1096 = icmp ne i64 %1095, 0
  br i1 %1096, label %1097, label %1102

1097:                                             ; preds = %1082
  br label %1098

1098:                                             ; preds = %1097
  %1099 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %1099) #9
  store ptr null, ptr %18, align 8
  br label %1100

1100:                                             ; preds = %1098
  %1101 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %1101, i32 noundef 1188, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.24)
  br label %1102

1102:                                             ; preds = %1100, %1082
  br label %1103

1103:                                             ; preds = %1102, %1076
  %1104 = load ptr, ptr %4, align 8
  %1105 = load ptr, ptr %4, align 8
  %1106 = getelementptr inbounds %struct.rzip_control, ptr %1105, i32 0, i32 53
  %1107 = getelementptr inbounds [16 x i8], ptr %1106, i64 0, i64 0
  %1108 = call i64 @write_1g(ptr noundef %1104, ptr noundef %1107, i64 noundef 16)
  %1109 = icmp ne i64 %1108, 16
  %1110 = xor i1 %1109, true
  %1111 = xor i1 %1110, true
  %1112 = zext i1 %1111 to i32
  %1113 = sext i32 %1112 to i64
  %1114 = icmp ne i64 %1113, 0
  br i1 %1114, label %1115, label %1120

1115:                                             ; preds = %1103
  br label %1116

1116:                                             ; preds = %1115
  %1117 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %1117) #9
  store ptr null, ptr %18, align 8
  br label %1118

1118:                                             ; preds = %1116
  %1119 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %1119, i32 noundef 1192, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.25)
  br label %1120

1120:                                             ; preds = %1118, %1103
  br label %1121

1121:                                             ; preds = %1120, %1020
  %1122 = load ptr, ptr %4, align 8
  %1123 = getelementptr inbounds %struct.rzip_control, ptr %1122, i32 0, i32 26
  %1124 = load i64, ptr %1123, align 8
  %1125 = and i64 %1124, 2097152
  %1126 = icmp ne i64 %1125, 0
  br i1 %1126, label %1127, label %1142

1127:                                             ; preds = %1121
  %1128 = load ptr, ptr %4, align 8
  %1129 = call zeroext i1 @flush_tmpoutbuf(ptr noundef %1128)
  %1130 = xor i1 %1129, true
  %1131 = xor i1 %1130, true
  %1132 = xor i1 %1131, true
  %1133 = zext i1 %1132 to i32
  %1134 = sext i32 %1133 to i64
  %1135 = icmp ne i64 %1134, 0
  br i1 %1135, label %1136, label %1141

1136:                                             ; preds = %1127
  br label %1137

1137:                                             ; preds = %1136
  %1138 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %1138) #9
  store ptr null, ptr %18, align 8
  br label %1139

1139:                                             ; preds = %1137
  %1140 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %1140, i32 noundef 1199, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.26)
  br label %1141

1141:                                             ; preds = %1139, %1127
  br label %1142

1142:                                             ; preds = %1141, %1121
  %1143 = call i32 @gettimeofday(ptr noundef %8, ptr noundef null) #9
  %1144 = load ptr, ptr %4, align 8
  %1145 = getelementptr inbounds %struct.rzip_control, ptr %1144, i32 0, i32 26
  %1146 = load i64, ptr %1145, align 8
  %1147 = and i64 %1146, 4096
  %1148 = icmp ne i64 %1147, 0
  br i1 %1148, label %1149, label %1154

1149:                                             ; preds = %1142
  %1150 = load ptr, ptr %4, align 8
  %1151 = getelementptr inbounds %struct.rzip_control, ptr %1150, i32 0, i32 34
  %1152 = load i64, ptr %1151, align 8
  %1153 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  store i64 %1152, ptr %1153, align 8
  br label %1154

1154:                                             ; preds = %1149, %1142
  %1155 = getelementptr inbounds %struct.timeval, ptr %8, i32 0, i32 0
  %1156 = load i64, ptr %1155, align 8
  %1157 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0
  %1158 = load i64, ptr %1157, align 8
  %1159 = sub nsw i64 %1156, %1158
  %1160 = sitofp i64 %1159 to double
  store double %1160, ptr %17, align 8
  %1161 = load double, ptr %17, align 8
  %1162 = fcmp une double %1161, 0.000000e+00
  br i1 %1162, label %1164, label %1163

1163:                                             ; preds = %1154
  store double 1.000000e+00, ptr %17, align 8
  br label %1164

1164:                                             ; preds = %1163, %1154
  %1165 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %1166 = load i64, ptr %1165, align 8
  %1167 = sdiv i64 %1166, 1024
  %1168 = sdiv i64 %1167, 1024
  %1169 = sitofp i64 %1168 to double
  %1170 = load double, ptr %17, align 8
  %1171 = fdiv double %1169, %1170
  store double %1171, ptr %16, align 8
  %1172 = load i32, ptr %6, align 4
  %1173 = call i32 @fstat64(i32 noundef %1172, ptr noundef %21) #9
  br label %1174

1174:                                             ; preds = %1164
  %1175 = load ptr, ptr %4, align 8
  %1176 = getelementptr inbounds %struct.rzip_control, ptr %1175, i32 0, i32 26
  %1177 = load i64, ptr %1176, align 8
  %1178 = and i64 %1177, 2048
  %1179 = icmp ne i64 %1178, 0
  br i1 %1179, label %1180, label %1194

1180:                                             ; preds = %1174
  br label %1181

1181:                                             ; preds = %1180
  %1182 = load ptr, ptr %4, align 8
  %1183 = load ptr, ptr %18, align 8
  %1184 = getelementptr inbounds %struct.rzip_state, ptr %1183, i32 0, i32 17
  %1185 = getelementptr inbounds %struct.anon, ptr %1184, i32 0, i32 3
  %1186 = load i64, ptr %1185, align 8
  %1187 = trunc i64 %1186 to i32
  %1188 = load ptr, ptr %18, align 8
  %1189 = getelementptr inbounds %struct.rzip_state, ptr %1188, i32 0, i32 17
  %1190 = getelementptr inbounds %struct.anon, ptr %1189, i32 0, i32 4
  %1191 = load i64, ptr %1190, align 8
  %1192 = trunc i64 %1191 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1182, i32 noundef 4, i32 noundef 1214, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.27, i32 noundef %1187, i32 noundef %1192)
  br label %1193

1193:                                             ; preds = %1181
  br label %1194

1194:                                             ; preds = %1193, %1174
  br label %1195

1195:                                             ; preds = %1194
  br label %1196

1196:                                             ; preds = %1195
  %1197 = load ptr, ptr %4, align 8
  %1198 = getelementptr inbounds %struct.rzip_control, ptr %1197, i32 0, i32 26
  %1199 = load i64, ptr %1198, align 8
  %1200 = and i64 %1199, 2048
  %1201 = icmp ne i64 %1200, 0
  br i1 %1201, label %1202, label %1216

1202:                                             ; preds = %1196
  br label %1203

1203:                                             ; preds = %1202
  %1204 = load ptr, ptr %4, align 8
  %1205 = load ptr, ptr %18, align 8
  %1206 = getelementptr inbounds %struct.rzip_state, ptr %1205, i32 0, i32 17
  %1207 = getelementptr inbounds %struct.anon, ptr %1206, i32 0, i32 1
  %1208 = load i64, ptr %1207, align 8
  %1209 = trunc i64 %1208 to i32
  %1210 = load ptr, ptr %18, align 8
  %1211 = getelementptr inbounds %struct.rzip_state, ptr %1210, i32 0, i32 17
  %1212 = getelementptr inbounds %struct.anon, ptr %1211, i32 0, i32 2
  %1213 = load i64, ptr %1212, align 8
  %1214 = trunc i64 %1213 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1204, i32 noundef 4, i32 noundef 1216, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.28, i32 noundef %1209, i32 noundef %1214)
  br label %1215

1215:                                             ; preds = %1203
  br label %1216

1216:                                             ; preds = %1215, %1196
  br label %1217

1217:                                             ; preds = %1216
  br label %1218

1218:                                             ; preds = %1217
  %1219 = load ptr, ptr %4, align 8
  %1220 = getelementptr inbounds %struct.rzip_control, ptr %1219, i32 0, i32 26
  %1221 = load i64, ptr %1220, align 8
  %1222 = and i64 %1221, 2048
  %1223 = icmp ne i64 %1222, 0
  br i1 %1223, label %1224, label %1238

1224:                                             ; preds = %1218
  br label %1225

1225:                                             ; preds = %1224
  %1226 = load ptr, ptr %4, align 8
  %1227 = load ptr, ptr %18, align 8
  %1228 = getelementptr inbounds %struct.rzip_state, ptr %1227, i32 0, i32 17
  %1229 = getelementptr inbounds %struct.anon, ptr %1228, i32 0, i32 5
  %1230 = load i64, ptr %1229, align 8
  %1231 = trunc i64 %1230 to i32
  %1232 = load ptr, ptr %18, align 8
  %1233 = getelementptr inbounds %struct.rzip_state, ptr %1232, i32 0, i32 17
  %1234 = getelementptr inbounds %struct.anon, ptr %1233, i32 0, i32 6
  %1235 = load i64, ptr %1234, align 8
  %1236 = trunc i64 %1235 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1226, i32 noundef 4, i32 noundef 1218, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.29, i32 noundef %1231, i32 noundef %1236)
  br label %1237

1237:                                             ; preds = %1225
  br label %1238

1238:                                             ; preds = %1237, %1218
  br label %1239

1239:                                             ; preds = %1238
  br label %1240

1240:                                             ; preds = %1239
  %1241 = load ptr, ptr %4, align 8
  %1242 = getelementptr inbounds %struct.rzip_control, ptr %1241, i32 0, i32 26
  %1243 = load i64, ptr %1242, align 8
  %1244 = and i64 %1243, 2048
  %1245 = icmp ne i64 %1244, 0
  br i1 %1245, label %1246, label %1267

1246:                                             ; preds = %1240
  br label %1247

1247:                                             ; preds = %1246
  %1248 = load ptr, ptr %4, align 8
  %1249 = load ptr, ptr %18, align 8
  %1250 = getelementptr inbounds %struct.rzip_state, ptr %1249, i32 0, i32 17
  %1251 = getelementptr inbounds %struct.anon, ptr %1250, i32 0, i32 0
  %1252 = load i64, ptr %1251, align 8
  %1253 = trunc i64 %1252 to i32
  %1254 = load ptr, ptr %18, align 8
  %1255 = getelementptr inbounds %struct.rzip_state, ptr %1254, i32 0, i32 17
  %1256 = getelementptr inbounds %struct.anon, ptr %1255, i32 0, i32 4
  %1257 = load i64, ptr %1256, align 8
  %1258 = sitofp i64 %1257 to double
  %1259 = fadd double 1.000000e+00, %1258
  %1260 = load ptr, ptr %18, align 8
  %1261 = getelementptr inbounds %struct.rzip_state, ptr %1260, i32 0, i32 17
  %1262 = getelementptr inbounds %struct.anon, ptr %1261, i32 0, i32 2
  %1263 = load i64, ptr %1262, align 8
  %1264 = sitofp i64 %1263 to double
  %1265 = fdiv double %1259, %1264
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1248, i32 noundef 4, i32 noundef 1221, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.30, i32 noundef %1253, double noundef %1265)
  br label %1266

1266:                                             ; preds = %1247
  br label %1267

1267:                                             ; preds = %1266, %1240
  br label %1268

1268:                                             ; preds = %1267
  %1269 = load ptr, ptr %4, align 8
  %1270 = getelementptr inbounds %struct.rzip_control, ptr %1269, i32 0, i32 26
  %1271 = load i64, ptr %1270, align 8
  %1272 = and i64 %1271, 4096
  %1273 = icmp ne i64 %1272, 0
  br i1 %1273, label %1290, label %1274

1274:                                             ; preds = %1268
  br label %1275

1275:                                             ; preds = %1274
  %1276 = load ptr, ptr %4, align 8
  %1277 = getelementptr inbounds %struct.rzip_control, ptr %1276, i32 0, i32 26
  %1278 = load i64, ptr %1277, align 8
  %1279 = and i64 %1278, 1
  %1280 = icmp ne i64 %1279, 0
  br i1 %1280, label %1281, label %1288

1281:                                             ; preds = %1275
  br label %1282

1282:                                             ; preds = %1281
  %1283 = load ptr, ptr %4, align 8
  %1284 = load ptr, ptr %4, align 8
  %1285 = getelementptr inbounds %struct.rzip_control, ptr %1284, i32 0, i32 0
  %1286 = load ptr, ptr %1285, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1283, i32 noundef 2, i32 noundef 1224, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.31, ptr noundef %1286)
  br label %1287

1287:                                             ; preds = %1282
  br label %1288

1288:                                             ; preds = %1287, %1275
  br label %1289

1289:                                             ; preds = %1288
  br label %1290

1290:                                             ; preds = %1289, %1268
  br label %1291

1291:                                             ; preds = %1290
  %1292 = load ptr, ptr %4, align 8
  %1293 = getelementptr inbounds %struct.rzip_control, ptr %1292, i32 0, i32 26
  %1294 = load i64, ptr %1293, align 8
  %1295 = and i64 %1294, 1
  %1296 = icmp ne i64 %1295, 0
  br i1 %1296, label %1297, label %1310

1297:                                             ; preds = %1291
  br label %1298

1298:                                             ; preds = %1297
  %1299 = load ptr, ptr %4, align 8
  %1300 = getelementptr inbounds %struct.stat, ptr %20, i32 0, i32 8
  %1301 = load i64, ptr %1300, align 8
  %1302 = sitofp i64 %1301 to double
  %1303 = fmul double 1.000000e+00, %1302
  %1304 = getelementptr inbounds %struct.stat, ptr %21, i32 0, i32 8
  %1305 = load i64, ptr %1304, align 8
  %1306 = sitofp i64 %1305 to double
  %1307 = fdiv double %1303, %1306
  %1308 = load double, ptr %16, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1299, i32 noundef 2, i32 noundef 1226, ptr noundef @.str, ptr noundef @__func__.rzip_fd, ptr noundef @.str.32, double noundef %1307, double noundef %1308)
  br label %1309

1309:                                             ; preds = %1298
  br label %1310

1310:                                             ; preds = %1309, %1291
  br label %1311

1311:                                             ; preds = %1310
  br label %1312

1312:                                             ; preds = %1311
  %1313 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %1313) #9
  store ptr null, ptr %18, align 8
  br label %1314

1314:                                             ; preds = %1312
  ret void
}

declare zeroext i1 @init_mutex(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare void @md5_init_ctx(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cksem_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @sem_init(ptr noundef %6, i32 noundef 0, i32 noundef 0) #9
  store i32 %7, ptr %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = call ptr @__errno_location() #11
  %13 = load i32, ptr %12, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %10, i32 noundef 155, ptr noundef @.str.33, ptr noundef @__func__.cksem_init, ptr noundef @.str.34, i32 noundef %11, i32 noundef %13)
  br label %14

14:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cksem_post(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @sem_post(ptr noundef %5) #9
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = call ptr @__errno_location() #11
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %14, i32 noundef 161, ptr noundef @.str.33, ptr noundef @__func__.cksem_post, ptr noundef @.str.35, i32 noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 68
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %21 = call i32 @vfprintf(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  br label %34

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 68
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 69
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %25(ptr noundef %28, i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %22, %17
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %35)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 64
  %38 = load i8, ptr %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %6, align 8
  call void @fatal_exit(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  ret void
}

declare i32 @__lzo_init_v2(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare void @free(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fstat64(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_stuff(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ...) #0 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  store ptr %5, ptr %12, align 8
  %14 = load ptr, ptr %7, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 64
  %16 = load i8, ptr %15, align 8
  %17 = sext i8 %16 to i32
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %45

19:                                               ; preds = %6
  %20 = load ptr, ptr %7, align 8
  %21 = getelementptr inbounds %struct.rzip_control, ptr %20, i32 0, i32 68
  %22 = load ptr, ptr %21, align 8
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %45

24:                                               ; preds = %19
  %25 = load ptr, ptr %7, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 65
  %27 = load i32, ptr %26, align 4
  %28 = load i32, ptr %8, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %24
  %31 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_start(ptr %31)
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 68
  %34 = load ptr, ptr %33, align 8
  %35 = load ptr, ptr %7, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 69
  %37 = load ptr, ptr %36, align 8
  %38 = load i32, ptr %8, align 4
  %39 = load i32, ptr %9, align 4
  %40 = load ptr, ptr %10, align 8
  %41 = load ptr, ptr %11, align 8
  %42 = load ptr, ptr %12, align 8
  %43 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void %34(ptr noundef %37, i32 noundef %38, i32 noundef %39, ptr noundef %40, ptr noundef %41, ptr noundef %42, ptr noundef %43)
  %44 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_end(ptr %44)
  br label %64

45:                                               ; preds = %24, %19, %6
  %46 = load ptr, ptr %7, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 17
  %48 = load ptr, ptr %47, align 8
  %49 = icmp ne ptr %48, null
  br i1 %49, label %50, label %63

50:                                               ; preds = %45
  %51 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_start(ptr %51)
  %52 = load ptr, ptr %7, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 17
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %12, align 8
  %56 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  %57 = call i32 @vfprintf(ptr noundef %54, ptr noundef %55, ptr noundef %56)
  %58 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %13, i64 0, i64 0
  call void @llvm.va_end(ptr %58)
  %59 = load ptr, ptr %7, align 8
  %60 = getelementptr inbounds %struct.rzip_control, ptr %59, i32 0, i32 17
  %61 = load ptr, ptr %60, align 8
  %62 = call i32 @fflush(ptr noundef %61)
  br label %63

63:                                               ; preds = %50, %45
  br label %64

64:                                               ; preds = %63, %30
  ret void
}

; Function Attrs: nounwind
declare i32 @fstatvfs64(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_err(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 64
  %14 = load i8, ptr %13, align 8
  %15 = sext i8 %14 to i32
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %41

17:                                               ; preds = %5
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 68
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %41

22:                                               ; preds = %17
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 65
  %25 = load i32, ptr %24, align 4
  %26 = icmp sge i32 %25, 0
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %28)
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 68
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 69
  %34 = load ptr, ptr %33, align 8
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = load ptr, ptr %10, align 8
  %39 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %31(ptr noundef %34, i32 noundef 0, i32 noundef %35, ptr noundef %36, ptr noundef %37, ptr noundef %38, ptr noundef %39)
  %40 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %40)
  br label %60

41:                                               ; preds = %22, %17, %5
  %42 = load ptr, ptr %6, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 18
  %44 = load ptr, ptr %43, align 8
  %45 = icmp ne ptr %44, null
  br i1 %45, label %46, label %59

46:                                               ; preds = %41
  %47 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %47)
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 18
  %50 = load ptr, ptr %49, align 8
  %51 = load ptr, ptr %10, align 8
  %52 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %53 = call i32 @vfprintf(ptr noundef %50, ptr noundef %51, ptr noundef %52)
  %54 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %54)
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 18
  %57 = load ptr, ptr %56, align 8
  %58 = call i32 @fflush(ptr noundef %57)
  br label %59

59:                                               ; preds = %46, %41
  br label %60

60:                                               ; preds = %59, %27
  ret void
}

declare void @round_to_page(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_hash_indexes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  store i32 0, ptr %3, align 4
  br label %4

4:                                                ; preds = %17, %1
  %5 = load i32, ptr %3, align 4
  %6 = icmp slt i32 %5, 256
  br i1 %6, label %7, label %20

7:                                                ; preds = %4
  %8 = call i64 @random() #9
  %9 = shl i64 %8, 16
  %10 = call i64 @random() #9
  %11 = xor i64 %9, %10
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.rzip_state, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [256 x i64], ptr %13, i64 0, i64 %15
  store i64 %11, ptr %16, align 8
  br label %17

17:                                               ; preds = %7
  %18 = load i32, ptr %3, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4
  br label %4, !llvm.loop !10

20:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

declare zeroext i1 @prepare_streamout_threads(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_mcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load ptr, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 71
  %12 = getelementptr inbounds %struct.sliding_buffer, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %7, align 8
  %15 = getelementptr inbounds i8, ptr %13, i64 %14
  %16 = load i64, ptr %8, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %9, ptr align 1 %15, i64 %16, i1 false)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @single_next_tag(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 71
  %12 = getelementptr inbounds %struct.sliding_buffer, ptr %11, i32 0, i32 0
  %13 = load ptr, ptr %12, align 8
  %14 = load i64, ptr %7, align 8
  %15 = sub nsw i64 %14, 1
  %16 = getelementptr inbounds i8, ptr %13, i64 %15
  %17 = load i8, ptr %16, align 1
  store i8 %17, ptr %9, align 1
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.rzip_state, ptr %18, i32 0, i32 2
  %20 = load i8, ptr %9, align 1
  %21 = zext i8 %20 to i64
  %22 = getelementptr inbounds [256 x i64], ptr %19, i64 0, i64 %21
  %23 = load i64, ptr %22, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i64, ptr %24, align 8
  %26 = xor i64 %25, %23
  store i64 %26, ptr %24, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 71
  %29 = getelementptr inbounds %struct.sliding_buffer, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %7, align 8
  %32 = add nsw i64 %31, 31
  %33 = sub nsw i64 %32, 1
  %34 = getelementptr inbounds i8, ptr %30, i64 %33
  %35 = load i8, ptr %34, align 1
  store i8 %35, ptr %9, align 1
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.rzip_state, ptr %36, i32 0, i32 2
  %38 = load i8, ptr %9, align 1
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds [256 x i64], ptr %37, i64 0, i64 %39
  %41 = load i64, ptr %40, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load i64, ptr %42, align 8
  %44 = xor i64 %43, %41
  store i64 %44, ptr %42, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @single_full_tag(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i64 0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp slt i32 %11, 31
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 71
  %16 = getelementptr inbounds %struct.sliding_buffer, ptr %15, i32 0, i32 0
  %17 = load ptr, ptr %16, align 8
  %18 = load i64, ptr %6, align 8
  %19 = load i32, ptr %8, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %18, %20
  %22 = getelementptr inbounds i8, ptr %17, i64 %21
  %23 = load i8, ptr %22, align 1
  store i8 %23, ptr %9, align 1
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.rzip_state, ptr %24, i32 0, i32 2
  %26 = load i8, ptr %9, align 1
  %27 = zext i8 %26 to i64
  %28 = getelementptr inbounds [256 x i64], ptr %25, i64 0, i64 %27
  %29 = load i64, ptr %28, align 8
  %30 = load i64, ptr %7, align 8
  %31 = xor i64 %30, %29
  store i64 %31, ptr %7, align 8
  br label %32

32:                                               ; preds = %13
  %33 = load i32, ptr %8, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, ptr %8, align 4
  br label %10, !llvm.loop !11

35:                                               ; preds = %10
  %36 = load i64, ptr %7, align 8
  ret i64 %36
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @single_match_len(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %16 = load i64, ptr %11, align 8
  %17 = load i64, ptr %10, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i64 0, ptr %7, align 8
  br label %116

20:                                               ; preds = %6
  %21 = load i64, ptr %10, align 8
  store i64 %21, ptr %14, align 8
  br label %22

22:                                               ; preds = %46, %20
  %23 = load i64, ptr %14, align 8
  %24 = load i64, ptr %12, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 71
  %29 = getelementptr inbounds %struct.sliding_buffer, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %14, align 8
  %32 = getelementptr inbounds i8, ptr %30, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = zext i8 %33 to i32
  %35 = load ptr, ptr %8, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 71
  %37 = getelementptr inbounds %struct.sliding_buffer, ptr %36, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = load i64, ptr %11, align 8
  %40 = getelementptr inbounds i8, ptr %38, i64 %39
  %41 = load i8, ptr %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %34, %42
  br label %44

44:                                               ; preds = %26, %22
  %45 = phi i1 [ false, %22 ], [ %43, %26 ]
  br i1 %45, label %46, label %51

46:                                               ; preds = %44
  %47 = load i64, ptr %14, align 8
  %48 = add nsw i64 %47, 1
  store i64 %48, ptr %14, align 8
  %49 = load i64, ptr %11, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, ptr %11, align 8
  br label %22, !llvm.loop !12

51:                                               ; preds = %44
  %52 = load i64, ptr %14, align 8
  %53 = load i64, ptr %10, align 8
  %54 = sub nsw i64 %52, %53
  store i64 %54, ptr %15, align 8
  %55 = load i64, ptr %10, align 8
  store i64 %55, ptr %14, align 8
  %56 = load i64, ptr %15, align 8
  %57 = load i64, ptr %11, align 8
  %58 = sub nsw i64 %57, %56
  store i64 %58, ptr %11, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds %struct.rzip_state, ptr %59, i32 0, i32 9
  %61 = load i64, ptr %60, align 8
  %62 = icmp sgt i64 0, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %51
  br label %68

64:                                               ; preds = %51
  %65 = load ptr, ptr %9, align 8
  %66 = getelementptr inbounds %struct.rzip_state, ptr %65, i32 0, i32 9
  %67 = load i64, ptr %66, align 8
  br label %68

68:                                               ; preds = %64, %63
  %69 = phi i64 [ 0, %63 ], [ %67, %64 ]
  store i64 %69, ptr %12, align 8
  br label %70

70:                                               ; preds = %99, %68
  %71 = load i64, ptr %14, align 8
  %72 = load i64, ptr %12, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %97

74:                                               ; preds = %70
  %75 = load i64, ptr %11, align 8
  %76 = icmp sgt i64 %75, 0
  br i1 %76, label %77, label %97

77:                                               ; preds = %74
  %78 = load ptr, ptr %8, align 8
  %79 = getelementptr inbounds %struct.rzip_control, ptr %78, i32 0, i32 71
  %80 = getelementptr inbounds %struct.sliding_buffer, ptr %79, i32 0, i32 0
  %81 = load ptr, ptr %80, align 8
  %82 = load i64, ptr %11, align 8
  %83 = sub nsw i64 %82, 1
  %84 = getelementptr inbounds i8, ptr %81, i64 %83
  %85 = load i8, ptr %84, align 1
  %86 = zext i8 %85 to i32
  %87 = load ptr, ptr %8, align 8
  %88 = getelementptr inbounds %struct.rzip_control, ptr %87, i32 0, i32 71
  %89 = getelementptr inbounds %struct.sliding_buffer, ptr %88, i32 0, i32 0
  %90 = load ptr, ptr %89, align 8
  %91 = load i64, ptr %14, align 8
  %92 = sub nsw i64 %91, 1
  %93 = getelementptr inbounds i8, ptr %90, i64 %92
  %94 = load i8, ptr %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %86, %95
  br label %97

97:                                               ; preds = %77, %74, %70
  %98 = phi i1 [ false, %74 ], [ false, %70 ], [ %96, %77 ]
  br i1 %98, label %99, label %104

99:                                               ; preds = %97
  %100 = load i64, ptr %11, align 8
  %101 = add nsw i64 %100, -1
  store i64 %101, ptr %11, align 8
  %102 = load i64, ptr %14, align 8
  %103 = add nsw i64 %102, -1
  store i64 %103, ptr %14, align 8
  br label %70, !llvm.loop !13

104:                                              ; preds = %97
  %105 = load i64, ptr %10, align 8
  %106 = load i64, ptr %14, align 8
  %107 = sub nsw i64 %105, %106
  %108 = load ptr, ptr %13, align 8
  store i64 %107, ptr %108, align 8
  %109 = load i64, ptr %15, align 8
  %110 = add nsw i64 %109, %107
  store i64 %110, ptr %15, align 8
  %111 = load i64, ptr %15, align 8
  %112 = icmp slt i64 %111, 31
  br i1 %112, label %113, label %114

113:                                              ; preds = %104
  store i64 0, ptr %7, align 8
  br label %116

114:                                              ; preds = %104
  %115 = load i64, ptr %15, align 8
  store i64 %115, ptr %7, align 8
  br label %116

116:                                              ; preds = %114, %113, %19
  %117 = load i64, ptr %7, align 8
  ret i64 %117
}

; Function Attrs: nounwind
declare ptr @mmap64(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

declare zeroext i1 @close_streamout_threads(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmap_stdin(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.rzip_state, ptr %11, i32 0, i32 10
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %7, align 8
  %14 = load ptr, ptr %5, align 8
  store ptr %14, ptr %8, align 8
  store i64 0, ptr %10, align 8
  br label %15

15:                                               ; preds = %112, %3
  %16 = load i64, ptr %7, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %119

18:                                               ; preds = %15
  %19 = load i64, ptr %7, align 8
  %20 = icmp slt i64 %19, 1048576000
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i64, ptr %7, align 8
  br label %24

23:                                               ; preds = %18
  br label %24

24:                                               ; preds = %23, %21
  %25 = phi i64 [ %22, %21 ], [ 1048576000, %23 ]
  store i64 %25, ptr %9, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 1
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @fileno(ptr noundef %28) #9
  %30 = load ptr, ptr %8, align 8
  %31 = load i64, ptr %9, align 8
  %32 = call i64 @read(i32 noundef %29, ptr noundef %30, i64 noundef %31)
  store i64 %32, ptr %9, align 8
  %33 = load i64, ptr %9, align 8
  %34 = icmp slt i64 %33, 0
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %24
  %41 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %41, i32 noundef 828, ptr noundef @.str, ptr noundef @__func__.mmap_stdin, ptr noundef @.str.36)
  br label %42

42:                                               ; preds = %40, %24
  %43 = load i64, ptr %9, align 8
  %44 = load i64, ptr %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, ptr %10, align 8
  %46 = load i64, ptr %9, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %112

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48
  %50 = load ptr, ptr %4, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 26
  %52 = load i64, ptr %51, align 8
  %53 = and i64 %52, 2048
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %4, align 8
  %58 = load i64, ptr %10, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %57, i32 noundef 4, i32 noundef 832, ptr noundef @.str, ptr noundef @__func__.mmap_stdin, ptr noundef @.str.37, i64 noundef %58)
  br label %59

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %49
  br label %61

61:                                               ; preds = %60
  %62 = load i64, ptr %10, align 8
  %63 = icmp ne i64 %62, 0
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %61
  %70 = load ptr, ptr %5, align 8
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.rzip_state, ptr %71, i32 0, i32 10
  %73 = load i64, ptr %72, align 8
  %74 = load i64, ptr %10, align 8
  %75 = call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef %70, i64 noundef %73, i64 noundef %74, i32 noundef 0) #9
  store ptr %75, ptr %5, align 8
  %76 = load i64, ptr %10, align 8
  %77 = load ptr, ptr %6, align 8
  %78 = getelementptr inbounds %struct.rzip_state, ptr %77, i32 0, i32 10
  store i64 %76, ptr %78, align 8
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.rzip_state, ptr %79, i32 0, i32 11
  store i64 %76, ptr %80, align 8
  br label %97

81:                                               ; preds = %61
  %82 = load ptr, ptr %5, align 8
  %83 = load ptr, ptr %6, align 8
  %84 = getelementptr inbounds %struct.rzip_state, ptr %83, i32 0, i32 10
  %85 = load i64, ptr %84, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.rzip_control, ptr %86, i32 0, i32 35
  %88 = load i64, ptr %87, align 8
  %89 = call ptr (ptr, i64, i64, i32, ...) @mremap(ptr noundef %82, i64 noundef %85, i64 noundef %88, i32 noundef 0) #9
  store ptr %89, ptr %5, align 8
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 35
  %92 = load i64, ptr %91, align 8
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.rzip_state, ptr %93, i32 0, i32 11
  store i64 %92, ptr %94, align 8
  %95 = load ptr, ptr %6, align 8
  %96 = getelementptr inbounds %struct.rzip_state, ptr %95, i32 0, i32 10
  store i64 0, ptr %96, align 8
  br label %97

97:                                               ; preds = %81, %69
  %98 = load ptr, ptr %5, align 8
  %99 = icmp eq ptr %98, inttoptr (i64 -1 to ptr)
  %100 = xor i1 %99, true
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = sext i32 %102 to i64
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %97
  %106 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %106, i32 noundef 843, ptr noundef @.str, ptr noundef @__func__.mmap_stdin, ptr noundef @.str.38)
  br label %107

107:                                              ; preds = %105, %97
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.rzip_state, ptr %108, i32 0, i32 16
  store i8 1, ptr %109, align 8
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.rzip_control, ptr %110, i32 0, i32 48
  store i8 1, ptr %111, align 8
  br label %119

112:                                              ; preds = %42
  %113 = load i64, ptr %9, align 8
  %114 = load ptr, ptr %8, align 8
  %115 = getelementptr inbounds i8, ptr %114, i64 %113
  store ptr %115, ptr %8, align 8
  %116 = load i64, ptr %9, align 8
  %117 = load i64, ptr %7, align 8
  %118 = sub nsw i64 %117, %116
  store i64 %118, ptr %7, align 8
  br label %15, !llvm.loop !14

119:                                              ; preds = %107, %15
  %120 = load i64, ptr %10, align 8
  %121 = load ptr, ptr %4, align 8
  %122 = getelementptr inbounds %struct.rzip_control, ptr %121, i32 0, i32 34
  %123 = load i64, ptr %122, align 8
  %124 = add nsw i64 %123, %120
  store i64 %124, ptr %122, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sliding_mcpy(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  store i64 0, ptr %9, align 8
  br label %12

12:                                               ; preds = %41, %4
  %13 = load i64, ptr %9, align 8
  %14 = load i64, ptr %8, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load ptr, ptr %5, align 8
  %18 = load i64, ptr %7, align 8
  %19 = load i64, ptr %9, align 8
  %20 = add nsw i64 %18, %19
  %21 = call ptr @sliding_get_sb(ptr noundef %17, i64 noundef %20)
  store ptr %21, ptr %10, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = load i64, ptr %7, align 8
  %24 = load i64, ptr %9, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @sliding_get_sb_range(ptr noundef %22, i64 noundef %25)
  %27 = load i64, ptr %8, align 8
  %28 = load i64, ptr %9, align 8
  %29 = sub nsw i64 %27, %28
  %30 = icmp slt i64 %26, %29
  br i1 %30, label %31, label %37

31:                                               ; preds = %16
  %32 = load ptr, ptr %5, align 8
  %33 = load i64, ptr %7, align 8
  %34 = load i64, ptr %9, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i64 @sliding_get_sb_range(ptr noundef %32, i64 noundef %35)
  br label %41

37:                                               ; preds = %16
  %38 = load i64, ptr %8, align 8
  %39 = load i64, ptr %9, align 8
  %40 = sub nsw i64 %38, %39
  br label %41

41:                                               ; preds = %37, %31
  %42 = phi i64 [ %36, %31 ], [ %40, %37 ]
  store i64 %42, ptr %11, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = load i64, ptr %9, align 8
  %45 = getelementptr inbounds i8, ptr %43, i64 %44
  %46 = load ptr, ptr %10, align 8
  %47 = load i64, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %45, ptr align 1 %46, i64 %47, i1 false)
  %48 = load i64, ptr %11, align 8
  %49 = load i64, ptr %9, align 8
  %50 = add nsw i64 %49, %48
  store i64 %50, ptr %9, align 8
  br label %12, !llvm.loop !15

51:                                               ; preds = %12
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sliding_next_tag(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = load i64, ptr %7, align 8
  %12 = sub nsw i64 %11, 1
  %13 = call ptr @sliding_get_sb(ptr noundef %10, i64 noundef %12)
  store ptr %13, ptr %9, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.rzip_state, ptr %14, i32 0, i32 2
  %16 = load ptr, ptr %9, align 8
  %17 = load i8, ptr %16, align 1
  %18 = zext i8 %17 to i64
  %19 = getelementptr inbounds [256 x i64], ptr %15, i64 0, i64 %18
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %8, align 8
  %22 = load i64, ptr %21, align 8
  %23 = xor i64 %22, %20
  store i64 %23, ptr %21, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = load i64, ptr %7, align 8
  %26 = add nsw i64 %25, 31
  %27 = sub nsw i64 %26, 1
  %28 = call ptr @sliding_get_sb(ptr noundef %24, i64 noundef %27)
  store ptr %28, ptr %9, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.rzip_state, ptr %29, i32 0, i32 2
  %31 = load ptr, ptr %9, align 8
  %32 = load i8, ptr %31, align 1
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds [256 x i64], ptr %30, i64 0, i64 %33
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %8, align 8
  %37 = load i64, ptr %36, align 8
  %38 = xor i64 %37, %35
  store i64 %38, ptr %36, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sliding_full_tag(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i64 0, ptr %7, align 8
  store i32 0, ptr %8, align 4
  br label %10

10:                                               ; preds = %29, %3
  %11 = load i32, ptr %8, align 4
  %12 = icmp slt i32 %11, 31
  br i1 %12, label %13, label %32

13:                                               ; preds = %10
  %14 = load ptr, ptr %4, align 8
  %15 = load i64, ptr %6, align 8
  %16 = load i32, ptr %8, align 4
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  %19 = call ptr @sliding_get_sb(ptr noundef %14, i64 noundef %18)
  store ptr %19, ptr %9, align 8
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.rzip_state, ptr %20, i32 0, i32 2
  %22 = load ptr, ptr %9, align 8
  %23 = load i8, ptr %22, align 1
  %24 = zext i8 %23 to i64
  %25 = getelementptr inbounds [256 x i64], ptr %21, i64 0, i64 %24
  %26 = load i64, ptr %25, align 8
  %27 = load i64, ptr %7, align 8
  %28 = xor i64 %27, %26
  store i64 %28, ptr %7, align 8
  br label %29

29:                                               ; preds = %13
  %30 = load i32, ptr %8, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %8, align 4
  br label %10, !llvm.loop !16

32:                                               ; preds = %10
  %33 = load i64, ptr %7, align 8
  ret i64 %33
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sliding_match_len(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %16 = load i64, ptr %11, align 8
  %17 = load i64, ptr %10, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %6
  store i64 0, ptr %7, align 8
  br label %104

20:                                               ; preds = %6
  %21 = load i64, ptr %10, align 8
  store i64 %21, ptr %14, align 8
  br label %22

22:                                               ; preds = %40, %20
  %23 = load i64, ptr %14, align 8
  %24 = load i64, ptr %12, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %22
  %27 = load ptr, ptr %8, align 8
  %28 = load i64, ptr %14, align 8
  %29 = call ptr @sliding_get_sb(ptr noundef %27, i64 noundef %28)
  %30 = load i8, ptr %29, align 1
  %31 = zext i8 %30 to i32
  %32 = load ptr, ptr %8, align 8
  %33 = load i64, ptr %11, align 8
  %34 = call ptr @sliding_get_sb(ptr noundef %32, i64 noundef %33)
  %35 = load i8, ptr %34, align 1
  %36 = zext i8 %35 to i32
  %37 = icmp eq i32 %31, %36
  br label %38

38:                                               ; preds = %26, %22
  %39 = phi i1 [ false, %22 ], [ %37, %26 ]
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = load i64, ptr %14, align 8
  %42 = add nsw i64 %41, 1
  store i64 %42, ptr %14, align 8
  %43 = load i64, ptr %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, ptr %11, align 8
  br label %22, !llvm.loop !17

45:                                               ; preds = %38
  %46 = load i64, ptr %14, align 8
  %47 = load i64, ptr %10, align 8
  %48 = sub nsw i64 %46, %47
  store i64 %48, ptr %15, align 8
  %49 = load i64, ptr %10, align 8
  store i64 %49, ptr %14, align 8
  %50 = load i64, ptr %15, align 8
  %51 = load i64, ptr %11, align 8
  %52 = sub nsw i64 %51, %50
  store i64 %52, ptr %11, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds %struct.rzip_state, ptr %53, i32 0, i32 9
  %55 = load i64, ptr %54, align 8
  %56 = icmp sgt i64 0, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %45
  br label %62

58:                                               ; preds = %45
  %59 = load ptr, ptr %9, align 8
  %60 = getelementptr inbounds %struct.rzip_state, ptr %59, i32 0, i32 9
  %61 = load i64, ptr %60, align 8
  br label %62

62:                                               ; preds = %58, %57
  %63 = phi i64 [ 0, %57 ], [ %61, %58 ]
  store i64 %63, ptr %12, align 8
  br label %64

64:                                               ; preds = %87, %62
  %65 = load i64, ptr %14, align 8
  %66 = load i64, ptr %12, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %85

68:                                               ; preds = %64
  %69 = load i64, ptr %11, align 8
  %70 = icmp sgt i64 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load ptr, ptr %8, align 8
  %73 = load i64, ptr %11, align 8
  %74 = sub nsw i64 %73, 1
  %75 = call ptr @sliding_get_sb(ptr noundef %72, i64 noundef %74)
  %76 = load i8, ptr %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load ptr, ptr %8, align 8
  %79 = load i64, ptr %14, align 8
  %80 = sub nsw i64 %79, 1
  %81 = call ptr @sliding_get_sb(ptr noundef %78, i64 noundef %80)
  %82 = load i8, ptr %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %77, %83
  br label %85

85:                                               ; preds = %71, %68, %64
  %86 = phi i1 [ false, %68 ], [ false, %64 ], [ %84, %71 ]
  br i1 %86, label %87, label %92

87:                                               ; preds = %85
  %88 = load i64, ptr %11, align 8
  %89 = add nsw i64 %88, -1
  store i64 %89, ptr %11, align 8
  %90 = load i64, ptr %14, align 8
  %91 = add nsw i64 %90, -1
  store i64 %91, ptr %14, align 8
  br label %64, !llvm.loop !18

92:                                               ; preds = %85
  %93 = load i64, ptr %10, align 8
  %94 = load i64, ptr %14, align 8
  %95 = sub nsw i64 %93, %94
  %96 = load ptr, ptr %13, align 8
  store i64 %95, ptr %96, align 8
  %97 = load i64, ptr %15, align 8
  %98 = add nsw i64 %97, %95
  store i64 %98, ptr %15, align 8
  %99 = load i64, ptr %15, align 8
  %100 = icmp slt i64 %99, 31
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  store i64 0, ptr %7, align 8
  br label %104

102:                                              ; preds = %92
  %103 = load i64, ptr %15, align 8
  store i64 %103, ptr %7, align 8
  br label %104

104:                                              ; preds = %102, %101, %19
  %105 = load i64, ptr %7, align 8
  ret i64 %105
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rzip_chunk(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, double noundef %5, double noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i32 %2, ptr %10, align 4
  store i32 %3, ptr %11, align 4
  store i64 %4, ptr %12, align 8
  store double %5, ptr %13, align 8
  store double %6, ptr %14, align 8
  %16 = load ptr, ptr %8, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 71
  store ptr %17, ptr %15, align 8
  %18 = load ptr, ptr %8, align 8
  %19 = load ptr, ptr %9, align 8
  %20 = load i32, ptr %10, align 4
  %21 = load i64, ptr %12, align 8
  call void @init_sliding_mmap(ptr noundef %18, ptr noundef %19, i32 noundef %20, i64 noundef %21)
  %22 = load ptr, ptr %8, align 8
  %23 = load i32, ptr %11, align 4
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds %struct.rzip_state, ptr %24, i32 0, i32 10
  %26 = load i64, ptr %25, align 8
  %27 = load ptr, ptr %9, align 8
  %28 = getelementptr inbounds %struct.rzip_state, ptr %27, i32 0, i32 12
  %29 = load i8, ptr %28, align 8
  %30 = call ptr @open_stream_out(ptr noundef %22, i32 noundef %23, i32 noundef 2, i64 noundef %26, i8 noundef signext %29)
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.rzip_state, ptr %31, i32 0, i32 0
  store ptr %30, ptr %32, align 8
  %33 = load ptr, ptr %9, align 8
  %34 = getelementptr inbounds %struct.rzip_state, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = icmp ne ptr %35, null
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %7
  %44 = load ptr, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %44, i32 noundef 887, ptr noundef @.str, ptr noundef @__func__.rzip_chunk, ptr noundef @.str.42)
  br label %45

45:                                               ; preds = %43, %7
  br label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr %8, align 8
  %48 = getelementptr inbounds %struct.rzip_control, ptr %47, i32 0, i32 26
  %49 = load i64, ptr %48, align 8
  %50 = and i64 %49, 3072
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  br label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %8, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %54, i32 noundef 3, i32 noundef 889, ptr noundef @.str, ptr noundef @__func__.rzip_chunk, ptr noundef @.str.43)
  br label %55

55:                                               ; preds = %53
  br label %56

56:                                               ; preds = %55, %46
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %8, align 8
  %59 = load ptr, ptr %9, align 8
  %60 = load double, ptr %13, align 8
  %61 = load double, ptr %14, align 8
  call void @hash_search(ptr noundef %58, ptr noundef %59, double noundef %60, double noundef %61)
  %62 = load ptr, ptr %15, align 8
  %63 = getelementptr inbounds %struct.sliding_buffer, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8
  %65 = load ptr, ptr %15, align 8
  %66 = getelementptr inbounds %struct.sliding_buffer, ptr %65, i32 0, i32 7
  %67 = load i64, ptr %66, align 8
  %68 = call i32 @munmap(ptr noundef %64, i64 noundef %67) #9
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %57
  %76 = load ptr, ptr %8, align 8
  %77 = load ptr, ptr %9, align 8
  %78 = getelementptr inbounds %struct.rzip_state, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8
  %80 = call i32 @close_stream_out(ptr noundef %76, ptr noundef %79)
  %81 = load ptr, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %81, i32 noundef 895, ptr noundef @.str, ptr noundef @__func__.rzip_chunk, ptr noundef @.str.44)
  br label %82

82:                                               ; preds = %75, %57
  %83 = load ptr, ptr %8, align 8
  %84 = getelementptr inbounds %struct.rzip_control, ptr %83, i32 0, i32 26
  %85 = load i64, ptr %84, align 8
  %86 = and i64 %85, 4096
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %110, label %88

88:                                               ; preds = %82
  %89 = load ptr, ptr %15, align 8
  %90 = getelementptr inbounds %struct.sliding_buffer, ptr %89, i32 0, i32 1
  %91 = load ptr, ptr %90, align 8
  %92 = load ptr, ptr %15, align 8
  %93 = getelementptr inbounds %struct.sliding_buffer, ptr %92, i32 0, i32 8
  %94 = load i64, ptr %93, align 8
  %95 = call i32 @munmap(ptr noundef %91, i64 noundef %94) #9
  %96 = icmp ne i32 %95, 0
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %88
  %103 = load ptr, ptr %8, align 8
  %104 = load ptr, ptr %9, align 8
  %105 = getelementptr inbounds %struct.rzip_state, ptr %104, i32 0, i32 0
  %106 = load ptr, ptr %105, align 8
  %107 = call i32 @close_stream_out(ptr noundef %103, ptr noundef %106)
  %108 = load ptr, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %108, i32 noundef 900, ptr noundef @.str, ptr noundef @__func__.rzip_chunk, ptr noundef @.str.44)
  br label %109

109:                                              ; preds = %102, %88
  br label %110

110:                                              ; preds = %109, %82
  %111 = load ptr, ptr %8, align 8
  %112 = load ptr, ptr %9, align 8
  %113 = getelementptr inbounds %struct.rzip_state, ptr %112, i32 0, i32 0
  %114 = load ptr, ptr %113, align 8
  %115 = call i32 @close_stream_out(ptr noundef %111, ptr noundef %114)
  %116 = icmp ne i32 %115, 0
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %110
  %123 = load ptr, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %123, i32 noundef 905, ptr noundef @.str, ptr noundef @__func__.rzip_chunk, ptr noundef @.str.45)
  br label %124

124:                                              ; preds = %122, %110
  ret void
}

; Function Attrs: nounwind
declare ptr @md5_finish_ctx(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @lrz_encrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = call zeroext i1 @lrz_crypt(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef 1)
  ret i1 %13
}

declare i64 @write_1g(ptr noundef, ptr noundef, i64 noundef) #1

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rzip_control_free(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = icmp ne ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %100

7:                                                ; preds = %1
  br label %8

8:                                                ; preds = %7
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %11) #9
  %12 = load ptr, ptr %2, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 6
  store ptr null, ptr %13, align 8
  br label %14

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %2, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 2
  %18 = load ptr, ptr %17, align 8
  call void @free(ptr noundef %18) #9
  %19 = load ptr, ptr %2, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 2
  store ptr null, ptr %20, align 8
  br label %21

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %2, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 5
  %25 = load ptr, ptr %24, align 8
  call void @free(ptr noundef %25) #9
  %26 = load ptr, ptr %2, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 5
  store ptr null, ptr %27, align 8
  br label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 19
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %49

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8
  %35 = getelementptr inbounds %struct.rzip_control, ptr %34, i32 0, i32 19
  %36 = load ptr, ptr %35, align 8
  %37 = getelementptr inbounds i8, ptr %36, i64 0
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %2, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 19
  %45 = load ptr, ptr %44, align 8
  call void @free(ptr noundef %45) #9
  %46 = load ptr, ptr %2, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 19
  store ptr null, ptr %47, align 8
  br label %48

48:                                               ; preds = %42
  br label %49

49:                                               ; preds = %48, %33, %28
  store i64 0, ptr %3, align 8
  br label %50

50:                                               ; preds = %87, %49
  %51 = load i64, ptr %3, align 8
  %52 = load ptr, ptr %2, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 60
  %54 = load i64, ptr %53, align 8
  %55 = icmp ult i64 %51, %54
  br i1 %55, label %56, label %90

56:                                               ; preds = %50
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %2, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 61
  %60 = load ptr, ptr %59, align 8
  %61 = load i64, ptr %3, align 8
  %62 = getelementptr inbounds ptr, ptr %60, i64 %61
  %63 = load ptr, ptr %62, align 8
  %64 = getelementptr inbounds %struct.stream_info, ptr %63, i32 0, i32 0
  %65 = load ptr, ptr %64, align 8
  call void @free(ptr noundef %65) #9
  %66 = load ptr, ptr %2, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 61
  %68 = load ptr, ptr %67, align 8
  %69 = load i64, ptr %3, align 8
  %70 = getelementptr inbounds ptr, ptr %68, i64 %69
  %71 = load ptr, ptr %70, align 8
  %72 = getelementptr inbounds %struct.stream_info, ptr %71, i32 0, i32 0
  store ptr null, ptr %72, align 8
  br label %73

73:                                               ; preds = %57
  br label %74

74:                                               ; preds = %73
  %75 = load ptr, ptr %2, align 8
  %76 = getelementptr inbounds %struct.rzip_control, ptr %75, i32 0, i32 61
  %77 = load ptr, ptr %76, align 8
  %78 = load i64, ptr %3, align 8
  %79 = getelementptr inbounds ptr, ptr %77, i64 %78
  %80 = load ptr, ptr %79, align 8
  call void @free(ptr noundef %80) #9
  %81 = load ptr, ptr %2, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 61
  %83 = load ptr, ptr %82, align 8
  %84 = load i64, ptr %3, align 8
  %85 = getelementptr inbounds ptr, ptr %83, i64 %84
  store ptr null, ptr %85, align 8
  br label %86

86:                                               ; preds = %74
  br label %87

87:                                               ; preds = %86
  %88 = load i64, ptr %3, align 8
  %89 = add i64 %88, 1
  store i64 %89, ptr %3, align 8
  br label %50, !llvm.loop !19

90:                                               ; preds = %50
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %2, align 8
  %93 = getelementptr inbounds %struct.rzip_control, ptr %92, i32 0, i32 61
  %94 = load ptr, ptr %93, align 8
  call void @free(ptr noundef %94) #9
  %95 = load ptr, ptr %2, align 8
  %96 = getelementptr inbounds %struct.rzip_control, ptr %95, i32 0, i32 61
  store ptr null, ptr %96, align 8
  br label %97

97:                                               ; preds = %91
  br label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %99) #9
  store ptr null, ptr %2, align 8
  br label %100

100:                                              ; preds = %6, %98
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  store ptr %4, ptr %10, align 8
  %12 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_start(ptr %12)
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 68
  %15 = load ptr, ptr %14, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %5
  %18 = load ptr, ptr @stderr, align 8
  %19 = load ptr, ptr %10, align 8
  %20 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  %21 = call i32 @vfprintf(ptr noundef %18, ptr noundef %19, ptr noundef %20)
  call void @perror(ptr noundef null)
  br label %34

22:                                               ; preds = %5
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 68
  %25 = load ptr, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 69
  %28 = load ptr, ptr %27, align 8
  %29 = load i32, ptr %7, align 4
  %30 = load ptr, ptr %8, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = load ptr, ptr %10, align 8
  %33 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void %25(ptr noundef %28, i32 noundef 0, i32 noundef %29, ptr noundef %30, ptr noundef %31, ptr noundef %32, ptr noundef %33)
  br label %34

34:                                               ; preds = %22, %17
  %35 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %11, i64 0, i64 0
  call void @llvm.va_end(ptr %35)
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 64
  %38 = load i8, ptr %37, align 8
  %39 = icmp ne i8 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %6, align 8
  call void @fatal_exit(ptr noundef %41)
  br label %42

42:                                               ; preds = %40, %34
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

declare void @perror(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

declare void @fatal_exit(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) #2

declare i32 @fflush(ptr noundef) #1

; Function Attrs: nounwind
declare i64 @random() #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @mremap(ptr noundef, i64 noundef, i64 noundef, i32 noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @sliding_get_sb(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 71
  store ptr %9, ptr %6, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.sliding_buffer, ptr %10, i32 0, i32 3
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %7, align 8
  %13 = load i64, ptr %5, align 8
  %14 = load i64, ptr %7, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %7, align 8
  %19 = load ptr, ptr %6, align 8
  %20 = getelementptr inbounds %struct.sliding_buffer, ptr %19, i32 0, i32 7
  %21 = load i64, ptr %20, align 8
  %22 = add nsw i64 %18, %21
  %23 = icmp slt i64 %17, %22
  br i1 %23, label %24, label %33

24:                                               ; preds = %16
  %25 = load ptr, ptr %6, align 8
  %26 = getelementptr inbounds %struct.sliding_buffer, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = load i64, ptr %5, align 8
  %29 = getelementptr inbounds i8, ptr %27, i64 %28
  %30 = load i64, ptr %7, align 8
  %31 = sub i64 0, %30
  %32 = getelementptr inbounds i8, ptr %29, i64 %31
  store ptr %32, ptr %3, align 8
  br label %70

33:                                               ; preds = %16, %2
  %34 = load ptr, ptr %6, align 8
  %35 = getelementptr inbounds %struct.sliding_buffer, ptr %34, i32 0, i32 4
  %36 = load i64, ptr %35, align 8
  store i64 %36, ptr %7, align 8
  %37 = load i64, ptr %5, align 8
  %38 = load i64, ptr %7, align 8
  %39 = icmp sge i64 %37, %38
  br i1 %39, label %40, label %56

40:                                               ; preds = %33
  %41 = load i64, ptr %5, align 8
  %42 = load i64, ptr %7, align 8
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.sliding_buffer, ptr %43, i32 0, i32 8
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %42, %45
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %40
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.sliding_buffer, ptr %49, i32 0, i32 1
  %51 = load ptr, ptr %50, align 8
  %52 = load i64, ptr %5, align 8
  %53 = load i64, ptr %7, align 8
  %54 = sub nsw i64 %52, %53
  %55 = getelementptr inbounds i8, ptr %51, i64 %54
  store ptr %55, ptr %3, align 8
  br label %70

56:                                               ; preds = %40, %33
  %57 = load ptr, ptr %4, align 8
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 71
  %60 = load i64, ptr %5, align 8
  call void @remap_high_sb(ptr noundef %57, ptr noundef %59, i64 noundef %60)
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.sliding_buffer, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  %64 = load i64, ptr %5, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.sliding_buffer, ptr %65, i32 0, i32 4
  %67 = load i64, ptr %66, align 8
  %68 = sub nsw i64 %64, %67
  %69 = getelementptr inbounds i8, ptr %63, i64 %68
  store ptr %69, ptr %3, align 8
  br label %70

70:                                               ; preds = %56, %48, %24
  %71 = load ptr, ptr %3, align 8
  ret ptr %71
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sliding_get_sb_range(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 71
  store ptr %10, ptr %6, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.sliding_buffer, ptr %11, i32 0, i32 3
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %7, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.sliding_buffer, ptr %14, i32 0, i32 7
  %16 = load i64, ptr %15, align 8
  store i64 %16, ptr %8, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load i64, ptr %7, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %2
  %21 = load i64, ptr %5, align 8
  %22 = load i64, ptr %7, align 8
  %23 = load i64, ptr %8, align 8
  %24 = add nsw i64 %22, %23
  %25 = icmp slt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load i64, ptr %8, align 8
  %28 = load i64, ptr %5, align 8
  %29 = load i64, ptr %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = sub nsw i64 %27, %30
  store i64 %31, ptr %3, align 8
  br label %64

32:                                               ; preds = %20, %2
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.sliding_buffer, ptr %33, i32 0, i32 4
  %35 = load i64, ptr %34, align 8
  store i64 %35, ptr %7, align 8
  %36 = load ptr, ptr %6, align 8
  %37 = getelementptr inbounds %struct.sliding_buffer, ptr %36, i32 0, i32 8
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %8, align 8
  %39 = load i64, ptr %5, align 8
  %40 = load i64, ptr %7, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %32
  %43 = load i64, ptr %5, align 8
  %44 = load i64, ptr %7, align 8
  %45 = load i64, ptr %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = icmp slt i64 %43, %46
  br label %48

48:                                               ; preds = %42, %32
  %49 = phi i1 [ false, %32 ], [ %47, %42 ]
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %48
  %56 = load i64, ptr %8, align 8
  %57 = load i64, ptr %5, align 8
  %58 = load i64, ptr %7, align 8
  %59 = sub nsw i64 %57, %58
  %60 = sub nsw i64 %56, %59
  store i64 %60, ptr %3, align 8
  br label %64

61:                                               ; preds = %48
  br label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %63, i32 noundef 177, ptr noundef @.str, ptr noundef @__func__.sliding_get_sb_range, ptr noundef @.str.41)
  store i64 0, ptr %3, align 8
  br label %64

64:                                               ; preds = %26, %55, %62
  %65 = load i64, ptr %3, align 8
  ret i64 %65
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_high_sb(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %7 = load ptr, ptr %5, align 8
  %8 = getelementptr inbounds %struct.sliding_buffer, ptr %7, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.sliding_buffer, ptr %10, i32 0, i32 8
  %12 = load i64, ptr %11, align 8
  %13 = call i32 @munmap(ptr noundef %9, i64 noundef %12) #9
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %21, i32 noundef 122, ptr noundef @.str, ptr noundef @__func__.remap_high_sb, ptr noundef @.str.39)
  br label %22

22:                                               ; preds = %20, %3
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.sliding_buffer, ptr %23, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.sliding_buffer, ptr %26, i32 0, i32 8
  store i64 %25, ptr %27, align 8
  %28 = load i64, ptr %6, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.sliding_buffer, ptr %29, i32 0, i32 4
  store i64 %28, ptr %30, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.sliding_buffer, ptr %31, i32 0, i32 4
  %33 = load i64, ptr %32, align 8
  %34 = load ptr, ptr %5, align 8
  %35 = getelementptr inbounds %struct.sliding_buffer, ptr %34, i32 0, i32 2
  %36 = load i64, ptr %35, align 8
  %37 = add nsw i64 %33, %36
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.rzip_control, ptr %38, i32 0, i32 35
  %40 = load i64, ptr %39, align 8
  %41 = srem i64 %37, %40
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.sliding_buffer, ptr %42, i32 0, i32 4
  %44 = load i64, ptr %43, align 8
  %45 = sub nsw i64 %44, %41
  store i64 %45, ptr %43, align 8
  %46 = load ptr, ptr %5, align 8
  %47 = getelementptr inbounds %struct.sliding_buffer, ptr %46, i32 0, i32 4
  %48 = load i64, ptr %47, align 8
  %49 = load ptr, ptr %5, align 8
  %50 = getelementptr inbounds %struct.sliding_buffer, ptr %49, i32 0, i32 8
  %51 = load i64, ptr %50, align 8
  %52 = add nsw i64 %48, %51
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.sliding_buffer, ptr %53, i32 0, i32 6
  %55 = load i64, ptr %54, align 8
  %56 = icmp sgt i64 %52, %55
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %22
  %63 = load ptr, ptr %5, align 8
  %64 = getelementptr inbounds %struct.sliding_buffer, ptr %63, i32 0, i32 6
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %5, align 8
  %67 = getelementptr inbounds %struct.sliding_buffer, ptr %66, i32 0, i32 4
  %68 = load i64, ptr %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = load ptr, ptr %5, align 8
  %71 = getelementptr inbounds %struct.sliding_buffer, ptr %70, i32 0, i32 8
  store i64 %69, ptr %71, align 8
  br label %72

72:                                               ; preds = %62, %22
  %73 = load ptr, ptr %5, align 8
  %74 = getelementptr inbounds %struct.sliding_buffer, ptr %73, i32 0, i32 1
  %75 = load ptr, ptr %74, align 8
  %76 = load ptr, ptr %5, align 8
  %77 = getelementptr inbounds %struct.sliding_buffer, ptr %76, i32 0, i32 8
  %78 = load i64, ptr %77, align 8
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.sliding_buffer, ptr %79, i32 0, i32 10
  %81 = load i32, ptr %80, align 8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds %struct.sliding_buffer, ptr %82, i32 0, i32 2
  %84 = load i64, ptr %83, align 8
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds %struct.sliding_buffer, ptr %85, i32 0, i32 4
  %87 = load i64, ptr %86, align 8
  %88 = add nsw i64 %84, %87
  %89 = call ptr @mmap64(ptr noundef %75, i64 noundef %78, i32 noundef 1, i32 noundef 1, i32 noundef %81, i64 noundef %88) #9
  %90 = load ptr, ptr %5, align 8
  %91 = getelementptr inbounds %struct.sliding_buffer, ptr %90, i32 0, i32 1
  store ptr %89, ptr %91, align 8
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr inbounds %struct.sliding_buffer, ptr %92, i32 0, i32 1
  %94 = load ptr, ptr %93, align 8
  %95 = icmp eq ptr %94, inttoptr (i64 -1 to ptr)
  %96 = xor i1 %95, true
  %97 = xor i1 %96, true
  %98 = zext i1 %97 to i32
  %99 = sext i32 %98 to i64
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %72
  %102 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %102, i32 noundef 131, ptr noundef @.str, ptr noundef @__func__.remap_high_sb, ptr noundef @.str.40)
  br label %103

103:                                              ; preds = %101, %72
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_sliding_mmap(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i64 %3, ptr %8, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 71
  store ptr %11, ptr %9, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 26
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 4096
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %50, label %17

17:                                               ; preds = %4
  %18 = load ptr, ptr %5, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 35
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = getelementptr inbounds %struct.sliding_buffer, ptr %21, i32 0, i32 9
  store i64 %20, ptr %22, align 8
  %23 = load ptr, ptr %9, align 8
  %24 = getelementptr inbounds %struct.sliding_buffer, ptr %23, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = load i32, ptr %7, align 4
  %27 = load i64, ptr %8, align 8
  %28 = call ptr @mmap64(ptr noundef null, i64 noundef %25, i32 noundef 1, i32 noundef 1, i32 noundef %26, i64 noundef %27) #9
  %29 = load ptr, ptr %9, align 8
  %30 = getelementptr inbounds %struct.sliding_buffer, ptr %29, i32 0, i32 1
  store ptr %28, ptr %30, align 8
  %31 = load ptr, ptr %9, align 8
  %32 = getelementptr inbounds %struct.sliding_buffer, ptr %31, i32 0, i32 1
  %33 = load ptr, ptr %32, align 8
  %34 = icmp eq ptr %33, inttoptr (i64 -1 to ptr)
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %17
  %41 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %41, i32 noundef 864, ptr noundef @.str, ptr noundef @__func__.init_sliding_mmap, ptr noundef @.str.46)
  br label %42

42:                                               ; preds = %40, %17
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds %struct.sliding_buffer, ptr %43, i32 0, i32 9
  %45 = load i64, ptr %44, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = getelementptr inbounds %struct.sliding_buffer, ptr %46, i32 0, i32 8
  store i64 %45, ptr %47, align 8
  %48 = load ptr, ptr %9, align 8
  %49 = getelementptr inbounds %struct.sliding_buffer, ptr %48, i32 0, i32 4
  store i64 0, ptr %49, align 8
  br label %50

50:                                               ; preds = %42, %4
  %51 = load ptr, ptr %9, align 8
  %52 = getelementptr inbounds %struct.sliding_buffer, ptr %51, i32 0, i32 3
  store i64 0, ptr %52, align 8
  %53 = load ptr, ptr %9, align 8
  %54 = getelementptr inbounds %struct.sliding_buffer, ptr %53, i32 0, i32 5
  store i64 0, ptr %54, align 8
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.rzip_state, ptr %55, i32 0, i32 11
  %57 = load i64, ptr %56, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = getelementptr inbounds %struct.sliding_buffer, ptr %58, i32 0, i32 7
  store i64 %57, ptr %59, align 8
  %60 = load ptr, ptr %6, align 8
  %61 = getelementptr inbounds %struct.rzip_state, ptr %60, i32 0, i32 10
  %62 = load i64, ptr %61, align 8
  %63 = load ptr, ptr %9, align 8
  %64 = getelementptr inbounds %struct.sliding_buffer, ptr %63, i32 0, i32 6
  store i64 %62, ptr %64, align 8
  %65 = load i32, ptr %7, align 4
  %66 = load ptr, ptr %9, align 8
  %67 = getelementptr inbounds %struct.sliding_buffer, ptr %66, i32 0, i32 10
  store i32 %65, ptr %67, align 8
  ret void
}

declare ptr @open_stream_out(ptr noundef, i32 noundef, i32 noundef, i64 noundef, i8 noundef signext) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hash_search(ptr noundef %0, ptr noundef %1, double noundef %2, double noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.anon.0, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store double %2, ptr %7, align 8
  store double %3, ptr %8, align 8
  store i64 0, ptr %9, align 8
  store i64 0, ptr %15, align 8
  %29 = load ptr, ptr %6, align 8
  %30 = getelementptr inbounds %struct.rzip_state, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = getelementptr inbounds %struct.level, ptr %31, i32 0, i32 1
  %33 = load i32, ptr %32, align 8
  %34 = shl i32 1, %33
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  store i64 %36, ptr %16, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 71
  store ptr %38, ptr %17, align 8
  store i32 0, ptr %18, align 4
  store i32 0, ptr %19, align 4
  %39 = load ptr, ptr %6, align 8
  %40 = getelementptr inbounds %struct.rzip_state, ptr %39, i32 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = icmp ne ptr %41, null
  br i1 %42, label %43, label %54

43:                                               ; preds = %4
  %44 = load ptr, ptr %6, align 8
  %45 = getelementptr inbounds %struct.rzip_state, ptr %44, i32 0, i32 3
  %46 = load ptr, ptr %45, align 8
  %47 = load ptr, ptr %6, align 8
  %48 = getelementptr inbounds %struct.rzip_state, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %48, align 8
  %50 = sext i8 %49 to i32
  %51 = shl i32 1, %50
  %52 = sext i32 %51 to i64
  %53 = mul i64 16, %52
  call void @llvm.memset.p0.i64(ptr align 8 %46, i8 0, i64 %53, i1 false)
  br label %133

54:                                               ; preds = %4
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.rzip_state, ptr %55, i32 0, i32 1
  %57 = load ptr, ptr %56, align 8
  %58 = getelementptr inbounds %struct.level, ptr %57, i32 0, i32 0
  %59 = load i64, ptr %58, align 8
  %60 = mul i64 %59, 65536
  store i64 %60, ptr %21, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.rzip_state, ptr %61, i32 0, i32 4
  store i8 0, ptr %62, align 8
  br label %63

63:                                               ; preds = %73, %54
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.rzip_state, ptr %64, i32 0, i32 4
  %66 = load i8, ptr %65, align 8
  %67 = sext i8 %66 to i32
  %68 = shl i32 1, %67
  %69 = zext i32 %68 to i64
  %70 = load i64, ptr %21, align 8
  %71 = icmp slt i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %6, align 8
  %75 = getelementptr inbounds %struct.rzip_state, ptr %74, i32 0, i32 4
  %76 = load i8, ptr %75, align 8
  %77 = add i8 %76, 1
  store i8 %77, ptr %75, align 8
  br label %63, !llvm.loop !20

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %5, align 8
  %81 = getelementptr inbounds %struct.rzip_control, ptr %80, i32 0, i32 26
  %82 = load i64, ptr %81, align 8
  %83 = and i64 %82, 2048
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %5, align 8
  %88 = load i64, ptr %21, align 8
  %89 = load ptr, ptr %6, align 8
  %90 = getelementptr inbounds %struct.rzip_state, ptr %89, i32 0, i32 4
  %91 = load i8, ptr %90, align 8
  %92 = sext i8 %91 to i32
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.rzip_state, ptr %93, i32 0, i32 1
  %95 = load ptr, ptr %94, align 8
  %96 = getelementptr inbounds %struct.level, ptr %95, i32 0, i32 0
  %97 = load i64, ptr %96, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %87, i32 noundef 4, i32 noundef 624, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.47, i64 noundef %88, i32 noundef %92, i64 noundef %97)
  br label %98

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98, %79
  br label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr inbounds %struct.rzip_state, ptr %101, i32 0, i32 4
  %103 = load i8, ptr %102, align 8
  %104 = sext i8 %103 to i32
  %105 = shl i32 1, %104
  %106 = sdiv i32 %105, 3
  %107 = mul nsw i32 %106, 2
  %108 = sext i32 %107 to i64
  %109 = load ptr, ptr %6, align 8
  %110 = getelementptr inbounds %struct.rzip_state, ptr %109, i32 0, i32 6
  store i64 %108, ptr %110, align 8
  %111 = load ptr, ptr %6, align 8
  %112 = getelementptr inbounds %struct.rzip_state, ptr %111, i32 0, i32 4
  %113 = load i8, ptr %112, align 8
  %114 = sext i8 %113 to i32
  %115 = shl i32 1, %114
  %116 = sext i32 %115 to i64
  %117 = call noalias ptr @calloc(i64 noundef 16, i64 noundef %116) #10
  %118 = load ptr, ptr %6, align 8
  %119 = getelementptr inbounds %struct.rzip_state, ptr %118, i32 0, i32 3
  store ptr %117, ptr %119, align 8
  %120 = load ptr, ptr %6, align 8
  %121 = getelementptr inbounds %struct.rzip_state, ptr %120, i32 0, i32 3
  %122 = load ptr, ptr %121, align 8
  %123 = icmp ne ptr %122, null
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = sext i32 %127 to i64
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %100
  %131 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %131, i32 noundef 630, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.48)
  br label %132

132:                                              ; preds = %130, %100
  br label %133

133:                                              ; preds = %132, %43
  %134 = load i64, ptr %16, align 8
  %135 = load ptr, ptr %6, align 8
  %136 = getelementptr inbounds %struct.rzip_state, ptr %135, i32 0, i32 7
  store i64 %134, ptr %136, align 8
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds %struct.rzip_state, ptr %137, i32 0, i32 8
  store i64 0, ptr %138, align 8
  %139 = load ptr, ptr %6, align 8
  %140 = getelementptr inbounds %struct.rzip_state, ptr %139, i32 0, i32 13
  store i32 0, ptr %140, align 4
  %141 = load ptr, ptr %6, align 8
  %142 = getelementptr inbounds %struct.rzip_state, ptr %141, i32 0, i32 5
  store i64 0, ptr %142, align 8
  store i64 0, ptr %10, align 8
  %143 = load ptr, ptr %6, align 8
  %144 = getelementptr inbounds %struct.rzip_state, ptr %143, i32 0, i32 10
  %145 = load i64, ptr %144, align 8
  %146 = sub nsw i64 %145, 31
  store i64 %146, ptr %11, align 8
  %147 = load i64, ptr %10, align 8
  %148 = load ptr, ptr %6, align 8
  %149 = getelementptr inbounds %struct.rzip_state, ptr %148, i32 0, i32 9
  store i64 %147, ptr %149, align 8
  %150 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  store i64 0, ptr %150, align 8
  %151 = load i64, ptr %10, align 8
  %152 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  store i64 %151, ptr %152, align 8
  %153 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 1
  store i64 0, ptr %153, align 8
  %154 = load i64, ptr %11, align 8
  %155 = icmp sgt i64 %154, 0
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %169

161:                                              ; preds = %133
  %162 = load ptr, ptr %5, align 8
  %163 = getelementptr inbounds %struct.rzip_control, ptr %162, i32 0, i32 74
  %164 = load ptr, ptr %163, align 8
  %165 = load ptr, ptr %5, align 8
  %166 = load ptr, ptr %6, align 8
  %167 = load i64, ptr %10, align 8
  %168 = call i64 %164(ptr noundef %165, ptr noundef %166, i64 noundef %167)
  store i64 %168, ptr %15, align 8
  br label %169

169:                                              ; preds = %161, %133
  br label %170

170:                                              ; preds = %519, %331, %169
  %171 = load i64, ptr %10, align 8
  %172 = load i64, ptr %11, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %520

174:                                              ; preds = %170
  %175 = load i64, ptr %10, align 8
  %176 = add nsw i64 %175, 1
  store i64 %176, ptr %10, align 8
  %177 = load ptr, ptr %17, align 8
  %178 = getelementptr inbounds %struct.sliding_buffer, ptr %177, i32 0, i32 5
  store i64 %176, ptr %178, align 8
  %179 = load ptr, ptr %17, align 8
  %180 = getelementptr inbounds %struct.sliding_buffer, ptr %179, i32 0, i32 5
  %181 = load i64, ptr %180, align 8
  %182 = load ptr, ptr %17, align 8
  %183 = getelementptr inbounds %struct.sliding_buffer, ptr %182, i32 0, i32 3
  %184 = load i64, ptr %183, align 8
  %185 = load ptr, ptr %17, align 8
  %186 = getelementptr inbounds %struct.sliding_buffer, ptr %185, i32 0, i32 7
  %187 = load i64, ptr %186, align 8
  %188 = add nsw i64 %184, %187
  %189 = icmp sgt i64 %181, %188
  %190 = xor i1 %189, true
  %191 = xor i1 %190, true
  %192 = zext i1 %191 to i32
  %193 = sext i32 %192 to i64
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %199

195:                                              ; preds = %174
  %196 = load ptr, ptr %5, align 8
  %197 = load ptr, ptr %5, align 8
  %198 = getelementptr inbounds %struct.rzip_control, ptr %197, i32 0, i32 71
  call void @remap_low_sb(ptr noundef %196, ptr noundef %198)
  br label %199

199:                                              ; preds = %195, %174
  %200 = load i64, ptr %10, align 8
  %201 = srem i64 %200, 128
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %199
  %204 = load ptr, ptr %6, align 8
  %205 = getelementptr inbounds %struct.rzip_state, ptr %204, i32 0, i32 10
  %206 = load i64, ptr %205, align 8
  %207 = icmp ne i64 %206, 0
  br label %208

208:                                              ; preds = %203, %199
  %209 = phi i1 [ false, %199 ], [ %207, %203 ]
  %210 = xor i1 %209, true
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %315

215:                                              ; preds = %208
  %216 = load double, ptr %7, align 8
  %217 = load double, ptr %8, align 8
  %218 = load i64, ptr %10, align 8
  %219 = sitofp i64 %218 to double
  %220 = fmul double 1.000000e+02, %219
  %221 = fmul double %217, %220
  %222 = load ptr, ptr %6, align 8
  %223 = getelementptr inbounds %struct.rzip_state, ptr %222, i32 0, i32 10
  %224 = load i64, ptr %223, align 8
  %225 = sitofp i64 %224 to double
  %226 = fdiv double %221, %225
  %227 = fadd double %216, %226
  %228 = fptosi double %227 to i32
  store i32 %228, ptr %26, align 4
  %229 = load i64, ptr %10, align 8
  %230 = mul nsw i64 %229, 100
  %231 = load i64, ptr %11, align 8
  %232 = sdiv i64 %230, %231
  store i64 %232, ptr %25, align 8
  %233 = load i32, ptr %26, align 4
  %234 = load i32, ptr %18, align 4
  %235 = icmp ne i32 %233, %234
  br i1 %235, label %241, label %236

236:                                              ; preds = %215
  %237 = load i64, ptr %25, align 8
  %238 = load i32, ptr %19, align 4
  %239 = sext i32 %238 to i64
  %240 = icmp ne i64 %237, %239
  br i1 %240, label %241, label %314

241:                                              ; preds = %236, %215
  %242 = load ptr, ptr %5, align 8
  %243 = getelementptr inbounds %struct.rzip_control, ptr %242, i32 0, i32 26
  %244 = load i64, ptr %243, align 8
  %245 = and i64 %244, 4096
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %241
  %248 = load ptr, ptr %6, align 8
  %249 = getelementptr inbounds %struct.rzip_state, ptr %248, i32 0, i32 16
  %250 = load i8, ptr %249, align 8
  %251 = sext i8 %250 to i32
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %267

253:                                              ; preds = %247, %241
  br label %254

254:                                              ; preds = %253
  %255 = load ptr, ptr %5, align 8
  %256 = getelementptr inbounds %struct.rzip_control, ptr %255, i32 0, i32 26
  %257 = load i64, ptr %256, align 8
  %258 = and i64 %257, 1
  %259 = icmp ne i64 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %254
  br label %261

261:                                              ; preds = %260
  %262 = load ptr, ptr %5, align 8
  %263 = load i32, ptr %26, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %262, i32 noundef 2, i32 noundef 663, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.49, i32 noundef %263)
  br label %264

264:                                              ; preds = %261
  br label %265

265:                                              ; preds = %264, %254
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266, %247
  br label %268

268:                                              ; preds = %267
  %269 = load ptr, ptr %5, align 8
  %270 = getelementptr inbounds %struct.rzip_control, ptr %269, i32 0, i32 26
  %271 = load i64, ptr %270, align 8
  %272 = and i64 %271, 1
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %274, label %279

274:                                              ; preds = %268
  br label %275

275:                                              ; preds = %274
  %276 = load ptr, ptr %5, align 8
  %277 = load i64, ptr %25, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %276, i32 noundef 2, i32 noundef 664, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.50, i64 noundef %277)
  br label %278

278:                                              ; preds = %275
  br label %279

279:                                              ; preds = %278, %268
  br label %280

280:                                              ; preds = %279
  %281 = load ptr, ptr %5, align 8
  %282 = getelementptr inbounds %struct.rzip_control, ptr %281, i32 0, i32 66
  %283 = load ptr, ptr %282, align 8
  %284 = icmp ne ptr %283, null
  br i1 %284, label %285, label %310

285:                                              ; preds = %280
  %286 = load ptr, ptr %5, align 8
  %287 = getelementptr inbounds %struct.rzip_control, ptr %286, i32 0, i32 66
  %288 = load ptr, ptr %287, align 8
  %289 = load ptr, ptr %5, align 8
  %290 = getelementptr inbounds %struct.rzip_control, ptr %289, i32 0, i32 67
  %291 = load ptr, ptr %290, align 8
  %292 = load ptr, ptr %5, align 8
  %293 = getelementptr inbounds %struct.rzip_control, ptr %292, i32 0, i32 26
  %294 = load i64, ptr %293, align 8
  %295 = and i64 %294, 4096
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %303

297:                                              ; preds = %285
  %298 = load ptr, ptr %6, align 8
  %299 = getelementptr inbounds %struct.rzip_state, ptr %298, i32 0, i32 16
  %300 = load i8, ptr %299, align 8
  %301 = sext i8 %300 to i32
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %305

303:                                              ; preds = %297, %285
  %304 = load i32, ptr %26, align 4
  br label %306

305:                                              ; preds = %297
  br label %306

306:                                              ; preds = %305, %303
  %307 = phi i32 [ %304, %303 ], [ -1, %305 ]
  %308 = load i64, ptr %25, align 8
  %309 = trunc i64 %308 to i32
  call void %288(ptr noundef %291, i32 noundef %307, i32 noundef %309)
  br label %310

310:                                              ; preds = %306, %280
  %311 = load i32, ptr %26, align 4
  store i32 %311, ptr %18, align 4
  %312 = load i64, ptr %25, align 8
  %313 = trunc i64 %312 to i32
  store i32 %313, ptr %19, align 4
  br label %314

314:                                              ; preds = %310, %236
  br label %315

315:                                              ; preds = %314, %208
  %316 = load ptr, ptr %5, align 8
  %317 = getelementptr inbounds %struct.rzip_control, ptr %316, i32 0, i32 73
  %318 = load ptr, ptr %317, align 8
  %319 = load ptr, ptr %5, align 8
  %320 = load ptr, ptr %6, align 8
  %321 = load i64, ptr %10, align 8
  call void %318(ptr noundef %319, ptr noundef %320, i64 noundef %321, ptr noundef %15)
  %322 = load i64, ptr %15, align 8
  %323 = load ptr, ptr %6, align 8
  %324 = getelementptr inbounds %struct.rzip_state, ptr %323, i32 0, i32 7
  %325 = load i64, ptr %324, align 8
  %326 = and i64 %322, %325
  %327 = load ptr, ptr %6, align 8
  %328 = getelementptr inbounds %struct.rzip_state, ptr %327, i32 0, i32 7
  %329 = load i64, ptr %328, align 8
  %330 = icmp ne i64 %326, %329
  br i1 %330, label %331, label %332

331:                                              ; preds = %315
  br label %170, !llvm.loop !21

332:                                              ; preds = %315
  store i64 0, ptr %24, align 8
  %333 = load ptr, ptr %5, align 8
  %334 = load ptr, ptr %6, align 8
  %335 = load i64, ptr %15, align 8
  %336 = load i64, ptr %10, align 8
  %337 = load i64, ptr %11, align 8
  %338 = call i64 @find_best_match(ptr noundef %333, ptr noundef %334, i64 noundef %335, i64 noundef %336, i64 noundef %337, ptr noundef %24, ptr noundef %22)
  store i64 %338, ptr %23, align 8
  %339 = load i64, ptr %15, align 8
  %340 = load i64, ptr %16, align 8
  %341 = and i64 %339, %340
  %342 = load i64, ptr %16, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %369

344:                                              ; preds = %332
  %345 = load ptr, ptr %6, align 8
  %346 = getelementptr inbounds %struct.rzip_state, ptr %345, i32 0, i32 17
  %347 = getelementptr inbounds %struct.anon, ptr %346, i32 0, i32 0
  %348 = load i64, ptr %347, align 8
  %349 = add nsw i64 %348, 1
  store i64 %349, ptr %347, align 8
  %350 = load ptr, ptr %6, align 8
  %351 = getelementptr inbounds %struct.rzip_state, ptr %350, i32 0, i32 5
  %352 = load i64, ptr %351, align 8
  %353 = add nsw i64 %352, 1
  store i64 %353, ptr %351, align 8
  %354 = load ptr, ptr %6, align 8
  %355 = load i64, ptr %15, align 8
  %356 = load i64, ptr %10, align 8
  call void @insert_hash(ptr noundef %354, i64 noundef %355, i64 noundef %356)
  %357 = load ptr, ptr %6, align 8
  %358 = getelementptr inbounds %struct.rzip_state, ptr %357, i32 0, i32 5
  %359 = load i64, ptr %358, align 8
  %360 = load ptr, ptr %6, align 8
  %361 = getelementptr inbounds %struct.rzip_state, ptr %360, i32 0, i32 6
  %362 = load i64, ptr %361, align 8
  %363 = icmp sgt i64 %359, %362
  br i1 %363, label %364, label %368

364:                                              ; preds = %344
  %365 = load ptr, ptr %5, align 8
  %366 = load ptr, ptr %6, align 8
  %367 = call i64 @clean_one_from_hash(ptr noundef %365, ptr noundef %366)
  store i64 %367, ptr %16, align 8
  br label %368

368:                                              ; preds = %364, %344
  br label %369

369:                                              ; preds = %368, %332
  %370 = load i64, ptr %23, align 8
  %371 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  %372 = load i64, ptr %371, align 8
  %373 = icmp sgt i64 %370, %372
  br i1 %373, label %374, label %383

374:                                              ; preds = %369
  %375 = load i64, ptr %10, align 8
  %376 = load i64, ptr %22, align 8
  %377 = sub nsw i64 %375, %376
  %378 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  store i64 %377, ptr %378, align 8
  %379 = load i64, ptr %23, align 8
  %380 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  store i64 %379, ptr %380, align 8
  %381 = load i64, ptr %24, align 8
  %382 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 1
  store i64 %381, ptr %382, align 8
  br label %383

383:                                              ; preds = %374, %369
  %384 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  %385 = load i64, ptr %384, align 8
  %386 = icmp sge i64 %385, 1024
  br i1 %386, label %393, label %387

387:                                              ; preds = %383
  %388 = load i64, ptr %10, align 8
  %389 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  %390 = load i64, ptr %389, align 8
  %391 = add nsw i64 %390, 31
  %392 = icmp sge i64 %388, %391
  br i1 %392, label %393, label %440

393:                                              ; preds = %387, %383
  %394 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  %395 = load i64, ptr %394, align 8
  %396 = icmp sge i64 %395, 31
  br i1 %396, label %397, label %440

397:                                              ; preds = %393
  %398 = load ptr, ptr %6, align 8
  %399 = getelementptr inbounds %struct.rzip_state, ptr %398, i32 0, i32 9
  %400 = load i64, ptr %399, align 8
  %401 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  %402 = load i64, ptr %401, align 8
  %403 = icmp slt i64 %400, %402
  br i1 %403, label %404, label %412

404:                                              ; preds = %397
  %405 = load ptr, ptr %5, align 8
  %406 = load ptr, ptr %6, align 8
  %407 = load ptr, ptr %6, align 8
  %408 = getelementptr inbounds %struct.rzip_state, ptr %407, i32 0, i32 9
  %409 = load i64, ptr %408, align 8
  %410 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  %411 = load i64, ptr %410, align 8
  call void @put_literal(ptr noundef %405, ptr noundef %406, i64 noundef %409, i64 noundef %411)
  br label %412

412:                                              ; preds = %404, %397
  %413 = load ptr, ptr %5, align 8
  %414 = load ptr, ptr %6, align 8
  %415 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  %416 = load i64, ptr %415, align 8
  %417 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 1
  %418 = load i64, ptr %417, align 8
  %419 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  %420 = load i64, ptr %419, align 8
  call void @put_match(ptr noundef %413, ptr noundef %414, i64 noundef %416, i64 noundef %418, i64 noundef %420)
  %421 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  %422 = load i64, ptr %421, align 8
  %423 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  %424 = load i64, ptr %423, align 8
  %425 = add nsw i64 %422, %424
  %426 = load ptr, ptr %6, align 8
  %427 = getelementptr inbounds %struct.rzip_state, ptr %426, i32 0, i32 9
  store i64 %425, ptr %427, align 8
  %428 = load ptr, ptr %6, align 8
  %429 = getelementptr inbounds %struct.rzip_state, ptr %428, i32 0, i32 9
  %430 = load i64, ptr %429, align 8
  store i64 %430, ptr %10, align 8
  %431 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 0
  store i64 %430, ptr %431, align 8
  %432 = getelementptr inbounds %struct.anon.0, ptr %20, i32 0, i32 2
  store i64 0, ptr %432, align 8
  %433 = load ptr, ptr %5, align 8
  %434 = getelementptr inbounds %struct.rzip_control, ptr %433, i32 0, i32 74
  %435 = load ptr, ptr %434, align 8
  %436 = load ptr, ptr %5, align 8
  %437 = load ptr, ptr %6, align 8
  %438 = load i64, ptr %10, align 8
  %439 = call i64 %435(ptr noundef %436, ptr noundef %437, i64 noundef %438)
  store i64 %439, ptr %15, align 8
  br label %440

440:                                              ; preds = %412, %393, %387
  %441 = load i64, ptr %10, align 8
  %442 = load i64, ptr %9, align 8
  %443 = icmp sgt i64 %441, %442
  br i1 %443, label %444, label %519

444:                                              ; preds = %440
  %445 = load ptr, ptr %5, align 8
  %446 = load ptr, ptr %5, align 8
  %447 = getelementptr inbounds %struct.rzip_control, ptr %446, i32 0, i32 51
  call void @cksem_wait(ptr noundef %445, ptr noundef %447)
  %448 = load ptr, ptr %6, align 8
  %449 = getelementptr inbounds %struct.rzip_state, ptr %448, i32 0, i32 10
  %450 = load i64, ptr %449, align 8
  %451 = load i64, ptr %10, align 8
  %452 = sub nsw i64 %450, %451
  %453 = load ptr, ptr %5, align 8
  %454 = getelementptr inbounds %struct.rzip_control, ptr %453, i32 0, i32 35
  %455 = load i64, ptr %454, align 8
  %456 = icmp slt i64 %452, %455
  br i1 %456, label %457, label %463

457:                                              ; preds = %444
  %458 = load ptr, ptr %6, align 8
  %459 = getelementptr inbounds %struct.rzip_state, ptr %458, i32 0, i32 10
  %460 = load i64, ptr %459, align 8
  %461 = load i64, ptr %10, align 8
  %462 = sub nsw i64 %460, %461
  br label %467

463:                                              ; preds = %444
  %464 = load ptr, ptr %5, align 8
  %465 = getelementptr inbounds %struct.rzip_control, ptr %464, i32 0, i32 35
  %466 = load i64, ptr %465, align 8
  br label %467

467:                                              ; preds = %463, %457
  %468 = phi i64 [ %462, %457 ], [ %466, %463 ]
  %469 = load ptr, ptr %5, align 8
  %470 = getelementptr inbounds %struct.rzip_control, ptr %469, i32 0, i32 55
  %471 = getelementptr inbounds %struct.checksum, ptr %470, i32 0, i32 2
  store i64 %468, ptr %471, align 8
  %472 = load ptr, ptr %5, align 8
  %473 = getelementptr inbounds %struct.rzip_control, ptr %472, i32 0, i32 55
  %474 = getelementptr inbounds %struct.checksum, ptr %473, i32 0, i32 2
  %475 = load i64, ptr %474, align 8
  %476 = call noalias ptr @malloc(i64 noundef %475) #12
  %477 = load ptr, ptr %5, align 8
  %478 = getelementptr inbounds %struct.rzip_control, ptr %477, i32 0, i32 55
  %479 = getelementptr inbounds %struct.checksum, ptr %478, i32 0, i32 1
  store ptr %476, ptr %479, align 8
  %480 = load ptr, ptr %5, align 8
  %481 = getelementptr inbounds %struct.rzip_control, ptr %480, i32 0, i32 55
  %482 = getelementptr inbounds %struct.checksum, ptr %481, i32 0, i32 1
  %483 = load ptr, ptr %482, align 8
  %484 = icmp ne ptr %483, null
  %485 = xor i1 %484, true
  %486 = xor i1 %485, true
  %487 = xor i1 %486, true
  %488 = zext i1 %487 to i32
  %489 = sext i32 %488 to i64
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %493

491:                                              ; preds = %467
  %492 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %492, i32 noundef 718, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.51)
  br label %493

493:                                              ; preds = %491, %467
  %494 = load ptr, ptr %5, align 8
  %495 = getelementptr inbounds %struct.rzip_control, ptr %494, i32 0, i32 72
  %496 = load ptr, ptr %495, align 8
  %497 = load ptr, ptr %5, align 8
  %498 = load ptr, ptr %5, align 8
  %499 = getelementptr inbounds %struct.rzip_control, ptr %498, i32 0, i32 55
  %500 = getelementptr inbounds %struct.checksum, ptr %499, i32 0, i32 1
  %501 = load ptr, ptr %500, align 8
  %502 = load i64, ptr %9, align 8
  %503 = load ptr, ptr %5, align 8
  %504 = getelementptr inbounds %struct.rzip_control, ptr %503, i32 0, i32 55
  %505 = getelementptr inbounds %struct.checksum, ptr %504, i32 0, i32 2
  %506 = load i64, ptr %505, align 8
  call void %496(ptr noundef %497, ptr noundef %501, i64 noundef %502, i64 noundef %506)
  %507 = load ptr, ptr %6, align 8
  %508 = getelementptr inbounds %struct.rzip_state, ptr %507, i32 0, i32 13
  %509 = load ptr, ptr %5, align 8
  %510 = getelementptr inbounds %struct.rzip_control, ptr %509, i32 0, i32 55
  %511 = getelementptr inbounds %struct.checksum, ptr %510, i32 0, i32 0
  store ptr %508, ptr %511, align 8
  %512 = load ptr, ptr %5, align 8
  call void @cksum_update(ptr noundef %512)
  %513 = load ptr, ptr %5, align 8
  %514 = getelementptr inbounds %struct.rzip_control, ptr %513, i32 0, i32 55
  %515 = getelementptr inbounds %struct.checksum, ptr %514, i32 0, i32 2
  %516 = load i64, ptr %515, align 8
  %517 = load i64, ptr %9, align 8
  %518 = add nsw i64 %517, %516
  store i64 %518, ptr %9, align 8
  br label %519

519:                                              ; preds = %493, %440
  br label %170, !llvm.loop !21

520:                                              ; preds = %170
  %521 = load ptr, ptr %5, align 8
  %522 = getelementptr inbounds %struct.rzip_control, ptr %521, i32 0, i32 26
  %523 = load i64, ptr %522, align 8
  %524 = and i64 %523, 2048
  %525 = icmp ne i64 %524, 0
  br i1 %525, label %526, label %529

526:                                              ; preds = %520
  %527 = load ptr, ptr %5, align 8
  %528 = load ptr, ptr %6, align 8
  call void @show_distrib(ptr noundef %527, ptr noundef %528)
  br label %529

529:                                              ; preds = %526, %520
  %530 = load ptr, ptr %6, align 8
  %531 = getelementptr inbounds %struct.rzip_state, ptr %530, i32 0, i32 9
  %532 = load i64, ptr %531, align 8
  %533 = load ptr, ptr %6, align 8
  %534 = getelementptr inbounds %struct.rzip_state, ptr %533, i32 0, i32 10
  %535 = load i64, ptr %534, align 8
  %536 = icmp slt i64 %532, %535
  br i1 %536, label %537, label %546

537:                                              ; preds = %529
  %538 = load ptr, ptr %5, align 8
  %539 = load ptr, ptr %6, align 8
  %540 = load ptr, ptr %6, align 8
  %541 = getelementptr inbounds %struct.rzip_state, ptr %540, i32 0, i32 9
  %542 = load i64, ptr %541, align 8
  %543 = load ptr, ptr %6, align 8
  %544 = getelementptr inbounds %struct.rzip_state, ptr %543, i32 0, i32 10
  %545 = load i64, ptr %544, align 8
  call void @put_literal(ptr noundef %538, ptr noundef %539, i64 noundef %542, i64 noundef %545)
  br label %546

546:                                              ; preds = %537, %529
  %547 = load ptr, ptr %6, align 8
  %548 = getelementptr inbounds %struct.rzip_state, ptr %547, i32 0, i32 10
  %549 = load i64, ptr %548, align 8
  %550 = load i64, ptr %9, align 8
  %551 = icmp sgt i64 %549, %550
  br i1 %551, label %552, label %721

552:                                              ; preds = %546
  %553 = load ptr, ptr %5, align 8
  %554 = getelementptr inbounds %struct.rzip_control, ptr %553, i32 0, i32 23
  %555 = load i64, ptr %554, align 8
  store i64 %555, ptr %27, align 8
  br label %556

556:                                              ; preds = %552, %586
  call void @round_to_page(ptr noundef %27)
  %557 = load i64, ptr %27, align 8
  %558 = call noalias ptr @malloc(i64 noundef %557) #12
  store ptr %558, ptr %28, align 8
  %559 = load ptr, ptr %28, align 8
  %560 = icmp ne ptr %559, null
  br i1 %560, label %561, label %575

561:                                              ; preds = %556
  br label %562

562:                                              ; preds = %561
  %563 = load ptr, ptr %5, align 8
  %564 = getelementptr inbounds %struct.rzip_control, ptr %563, i32 0, i32 26
  %565 = load i64, ptr %564, align 8
  %566 = and i64 %565, 2048
  %567 = icmp ne i64 %566, 0
  br i1 %567, label %568, label %573

568:                                              ; preds = %562
  br label %569

569:                                              ; preds = %568
  %570 = load ptr, ptr %5, align 8
  %571 = load i64, ptr %27, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %570, i32 noundef 4, i32 noundef 740, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.52, i64 noundef %571)
  br label %572

572:                                              ; preds = %569
  br label %573

573:                                              ; preds = %572, %562
  br label %574

574:                                              ; preds = %573
  br label %587

575:                                              ; preds = %556
  %576 = load i64, ptr %27, align 8
  %577 = sdiv i64 %576, 3
  %578 = mul nsw i64 %577, 2
  store i64 %578, ptr %27, align 8
  %579 = load i64, ptr %27, align 8
  %580 = load ptr, ptr %5, align 8
  %581 = getelementptr inbounds %struct.rzip_control, ptr %580, i32 0, i32 35
  %582 = load i64, ptr %581, align 8
  %583 = icmp slt i64 %579, %582
  br i1 %583, label %584, label %586

584:                                              ; preds = %575
  %585 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %585, i32 noundef 745, ptr noundef @.str, ptr noundef @__func__.hash_search, ptr noundef @.str.53)
  br label %586

586:                                              ; preds = %584, %575
  br label %556

587:                                              ; preds = %574
  %588 = load ptr, ptr %5, align 8
  %589 = load ptr, ptr %5, align 8
  %590 = getelementptr inbounds %struct.rzip_control, ptr %589, i32 0, i32 51
  call void @cksem_wait(ptr noundef %588, ptr noundef %590)
  %591 = load ptr, ptr %28, align 8
  %592 = load ptr, ptr %5, align 8
  %593 = getelementptr inbounds %struct.rzip_control, ptr %592, i32 0, i32 55
  %594 = getelementptr inbounds %struct.checksum, ptr %593, i32 0, i32 1
  store ptr %591, ptr %594, align 8
  %595 = load ptr, ptr %6, align 8
  %596 = getelementptr inbounds %struct.rzip_state, ptr %595, i32 0, i32 10
  %597 = load i64, ptr %596, align 8
  %598 = load i64, ptr %9, align 8
  %599 = sub nsw i64 %597, %598
  %600 = load ptr, ptr %5, align 8
  %601 = getelementptr inbounds %struct.rzip_control, ptr %600, i32 0, i32 55
  %602 = getelementptr inbounds %struct.checksum, ptr %601, i32 0, i32 2
  store i64 %599, ptr %602, align 8
  %603 = load ptr, ptr %5, align 8
  %604 = getelementptr inbounds %struct.rzip_control, ptr %603, i32 0, i32 55
  %605 = getelementptr inbounds %struct.checksum, ptr %604, i32 0, i32 2
  %606 = load i64, ptr %605, align 8
  %607 = load i64, ptr %27, align 8
  %608 = sdiv i64 %606, %607
  store i64 %608, ptr %12, align 8
  %609 = load ptr, ptr %5, align 8
  %610 = getelementptr inbounds %struct.rzip_control, ptr %609, i32 0, i32 55
  %611 = getelementptr inbounds %struct.checksum, ptr %610, i32 0, i32 2
  %612 = load i64, ptr %611, align 8
  %613 = load i64, ptr %27, align 8
  %614 = srem i64 %612, %613
  store i64 %614, ptr %13, align 8
  store i64 0, ptr %14, align 8
  br label %615

615:                                              ; preds = %664, %587
  %616 = load i64, ptr %14, align 8
  %617 = load i64, ptr %12, align 8
  %618 = icmp slt i64 %616, %617
  br i1 %618, label %619, label %667

619:                                              ; preds = %615
  %620 = load ptr, ptr %5, align 8
  %621 = getelementptr inbounds %struct.rzip_control, ptr %620, i32 0, i32 72
  %622 = load ptr, ptr %621, align 8
  %623 = load ptr, ptr %5, align 8
  %624 = load ptr, ptr %5, align 8
  %625 = getelementptr inbounds %struct.rzip_control, ptr %624, i32 0, i32 55
  %626 = getelementptr inbounds %struct.checksum, ptr %625, i32 0, i32 1
  %627 = load ptr, ptr %626, align 8
  %628 = load i64, ptr %9, align 8
  %629 = load i64, ptr %27, align 8
  call void %622(ptr noundef %623, ptr noundef %627, i64 noundef %628, i64 noundef %629)
  %630 = load i64, ptr %27, align 8
  %631 = load i64, ptr %9, align 8
  %632 = add nsw i64 %631, %630
  store i64 %632, ptr %9, align 8
  %633 = load ptr, ptr %6, align 8
  %634 = getelementptr inbounds %struct.rzip_state, ptr %633, i32 0, i32 13
  %635 = load i32, ptr %634, align 4
  %636 = load ptr, ptr %5, align 8
  %637 = getelementptr inbounds %struct.rzip_control, ptr %636, i32 0, i32 55
  %638 = getelementptr inbounds %struct.checksum, ptr %637, i32 0, i32 1
  %639 = load ptr, ptr %638, align 8
  %640 = load i64, ptr %27, align 8
  %641 = call i32 @CrcUpdate(i32 noundef %635, ptr noundef %639, i64 noundef %640)
  %642 = load ptr, ptr %6, align 8
  %643 = getelementptr inbounds %struct.rzip_state, ptr %642, i32 0, i32 13
  store i32 %641, ptr %643, align 4
  %644 = load ptr, ptr %5, align 8
  %645 = getelementptr inbounds %struct.rzip_control, ptr %644, i32 0, i32 26
  %646 = load i64, ptr %645, align 8
  %647 = and i64 %646, 65536
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %655, label %649

649:                                              ; preds = %619
  %650 = load ptr, ptr %5, align 8
  %651 = getelementptr inbounds %struct.rzip_control, ptr %650, i32 0, i32 26
  %652 = load i64, ptr %651, align 8
  %653 = and i64 %652, 131072
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %655, label %663

655:                                              ; preds = %649, %619
  %656 = load ptr, ptr %5, align 8
  %657 = getelementptr inbounds %struct.rzip_control, ptr %656, i32 0, i32 55
  %658 = getelementptr inbounds %struct.checksum, ptr %657, i32 0, i32 1
  %659 = load ptr, ptr %658, align 8
  %660 = load i64, ptr %27, align 8
  %661 = load ptr, ptr %5, align 8
  %662 = getelementptr inbounds %struct.rzip_control, ptr %661, i32 0, i32 52
  call void @md5_process_bytes(ptr noundef %659, i64 noundef %660, ptr noundef %662) #9
  br label %663

663:                                              ; preds = %655, %649
  br label %664

664:                                              ; preds = %663
  %665 = load i64, ptr %14, align 8
  %666 = add nsw i64 %665, 1
  store i64 %666, ptr %14, align 8
  br label %615, !llvm.loop !22

667:                                              ; preds = %615
  %668 = load ptr, ptr %5, align 8
  %669 = getelementptr inbounds %struct.rzip_control, ptr %668, i32 0, i32 72
  %670 = load ptr, ptr %669, align 8
  %671 = load ptr, ptr %5, align 8
  %672 = load ptr, ptr %5, align 8
  %673 = getelementptr inbounds %struct.rzip_control, ptr %672, i32 0, i32 55
  %674 = getelementptr inbounds %struct.checksum, ptr %673, i32 0, i32 1
  %675 = load ptr, ptr %674, align 8
  %676 = load i64, ptr %9, align 8
  %677 = load i64, ptr %13, align 8
  call void %670(ptr noundef %671, ptr noundef %675, i64 noundef %676, i64 noundef %677)
  %678 = load ptr, ptr %6, align 8
  %679 = getelementptr inbounds %struct.rzip_state, ptr %678, i32 0, i32 13
  %680 = load i32, ptr %679, align 4
  %681 = load ptr, ptr %5, align 8
  %682 = getelementptr inbounds %struct.rzip_control, ptr %681, i32 0, i32 55
  %683 = getelementptr inbounds %struct.checksum, ptr %682, i32 0, i32 1
  %684 = load ptr, ptr %683, align 8
  %685 = load i64, ptr %13, align 8
  %686 = call i32 @CrcUpdate(i32 noundef %680, ptr noundef %684, i64 noundef %685)
  %687 = load ptr, ptr %6, align 8
  %688 = getelementptr inbounds %struct.rzip_state, ptr %687, i32 0, i32 13
  store i32 %686, ptr %688, align 4
  %689 = load ptr, ptr %5, align 8
  %690 = getelementptr inbounds %struct.rzip_control, ptr %689, i32 0, i32 26
  %691 = load i64, ptr %690, align 8
  %692 = and i64 %691, 65536
  %693 = icmp ne i64 %692, 0
  br i1 %693, label %700, label %694

694:                                              ; preds = %667
  %695 = load ptr, ptr %5, align 8
  %696 = getelementptr inbounds %struct.rzip_control, ptr %695, i32 0, i32 26
  %697 = load i64, ptr %696, align 8
  %698 = and i64 %697, 131072
  %699 = icmp ne i64 %698, 0
  br i1 %699, label %700, label %708

700:                                              ; preds = %694, %667
  %701 = load ptr, ptr %5, align 8
  %702 = getelementptr inbounds %struct.rzip_control, ptr %701, i32 0, i32 55
  %703 = getelementptr inbounds %struct.checksum, ptr %702, i32 0, i32 1
  %704 = load ptr, ptr %703, align 8
  %705 = load i64, ptr %13, align 8
  %706 = load ptr, ptr %5, align 8
  %707 = getelementptr inbounds %struct.rzip_control, ptr %706, i32 0, i32 52
  call void @md5_process_bytes(ptr noundef %704, i64 noundef %705, ptr noundef %707) #9
  br label %708

708:                                              ; preds = %700, %694
  br label %709

709:                                              ; preds = %708
  %710 = load ptr, ptr %5, align 8
  %711 = getelementptr inbounds %struct.rzip_control, ptr %710, i32 0, i32 55
  %712 = getelementptr inbounds %struct.checksum, ptr %711, i32 0, i32 1
  %713 = load ptr, ptr %712, align 8
  call void @free(ptr noundef %713) #9
  %714 = load ptr, ptr %5, align 8
  %715 = getelementptr inbounds %struct.rzip_control, ptr %714, i32 0, i32 55
  %716 = getelementptr inbounds %struct.checksum, ptr %715, i32 0, i32 1
  store ptr null, ptr %716, align 8
  br label %717

717:                                              ; preds = %709
  %718 = load ptr, ptr %5, align 8
  %719 = load ptr, ptr %5, align 8
  %720 = getelementptr inbounds %struct.rzip_control, ptr %719, i32 0, i32 51
  call void @cksem_post(ptr noundef %718, ptr noundef %720)
  br label %728

721:                                              ; preds = %546
  %722 = load ptr, ptr %5, align 8
  %723 = load ptr, ptr %5, align 8
  %724 = getelementptr inbounds %struct.rzip_control, ptr %723, i32 0, i32 51
  call void @cksem_wait(ptr noundef %722, ptr noundef %724)
  %725 = load ptr, ptr %5, align 8
  %726 = load ptr, ptr %5, align 8
  %727 = getelementptr inbounds %struct.rzip_control, ptr %726, i32 0, i32 51
  call void @cksem_post(ptr noundef %725, ptr noundef %727)
  br label %728

728:                                              ; preds = %721, %717
  %729 = load ptr, ptr %5, align 8
  %730 = load ptr, ptr %6, align 8
  call void @put_literal(ptr noundef %729, ptr noundef %730, i64 noundef 0, i64 noundef 0)
  %731 = load ptr, ptr %5, align 8
  %732 = load ptr, ptr %6, align 8
  %733 = getelementptr inbounds %struct.rzip_state, ptr %732, i32 0, i32 0
  %734 = load ptr, ptr %733, align 8
  %735 = load ptr, ptr %6, align 8
  %736 = getelementptr inbounds %struct.rzip_state, ptr %735, i32 0, i32 13
  %737 = load i32, ptr %736, align 4
  call void @put_u32(ptr noundef %731, ptr noundef %734, i32 noundef %737)
  ret void
}

declare i32 @close_stream_out(ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remap_low_sb(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.sliding_buffer, ptr %6, i32 0, i32 5
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %5, align 8
  call void @round_to_page(ptr noundef %5)
  br label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 26
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2048
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %3, align 8
  %18 = load i64, ptr %5, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %17, i32 noundef 4, i32 noundef 108, ptr noundef @.str, ptr noundef @__func__.remap_low_sb, ptr noundef @.str.54, i64 noundef %18)
  br label %19

19:                                               ; preds = %16
  br label %20

20:                                               ; preds = %19, %9
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %4, align 8
  %23 = getelementptr inbounds %struct.sliding_buffer, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.sliding_buffer, ptr %25, i32 0, i32 7
  %27 = load i64, ptr %26, align 8
  %28 = call i32 @munmap(ptr noundef %24, i64 noundef %27) #9
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %36, i32 noundef 110, ptr noundef @.str, ptr noundef @__func__.remap_low_sb, ptr noundef @.str.55)
  br label %37

37:                                               ; preds = %35, %21
  %38 = load i64, ptr %5, align 8
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.sliding_buffer, ptr %39, i32 0, i32 7
  %41 = load i64, ptr %40, align 8
  %42 = add nsw i64 %38, %41
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.sliding_buffer, ptr %43, i32 0, i32 6
  %45 = load i64, ptr %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %37
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.sliding_buffer, ptr %48, i32 0, i32 6
  %50 = load i64, ptr %49, align 8
  %51 = load i64, ptr %5, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.sliding_buffer, ptr %53, i32 0, i32 7
  store i64 %52, ptr %54, align 8
  br label %55

55:                                               ; preds = %47, %37
  %56 = load i64, ptr %5, align 8
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.sliding_buffer, ptr %57, i32 0, i32 3
  store i64 %56, ptr %58, align 8
  %59 = load ptr, ptr %4, align 8
  %60 = getelementptr inbounds %struct.sliding_buffer, ptr %59, i32 0, i32 0
  %61 = load ptr, ptr %60, align 8
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.sliding_buffer, ptr %62, i32 0, i32 7
  %64 = load i64, ptr %63, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.sliding_buffer, ptr %65, i32 0, i32 10
  %67 = load i32, ptr %66, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.sliding_buffer, ptr %68, i32 0, i32 2
  %70 = load i64, ptr %69, align 8
  %71 = load ptr, ptr %4, align 8
  %72 = getelementptr inbounds %struct.sliding_buffer, ptr %71, i32 0, i32 3
  %73 = load i64, ptr %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call ptr @mmap64(ptr noundef %61, i64 noundef %64, i32 noundef 1, i32 noundef 1, i32 noundef %67, i64 noundef %74) #9
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.sliding_buffer, ptr %76, i32 0, i32 0
  store ptr %75, ptr %77, align 8
  %78 = load ptr, ptr %4, align 8
  %79 = getelementptr inbounds %struct.sliding_buffer, ptr %78, i32 0, i32 0
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, inttoptr (i64 -1 to ptr)
  %82 = xor i1 %81, true
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  %85 = sext i32 %84 to i64
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %55
  %88 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %88, i32 noundef 116, ptr noundef @.str, ptr noundef @__func__.remap_low_sb, ptr noundef @.str.56)
  br label %89

89:                                               ; preds = %87, %55
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @find_best_match(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, ptr noundef %5, ptr noundef %6) #0 {
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store i64 %2, ptr %10, align 8
  store i64 %3, ptr %11, align 8
  store i64 %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  store ptr %6, ptr %14, align 8
  store i64 0, ptr %16, align 8
  store i64 0, ptr %17, align 8
  %20 = load ptr, ptr %14, align 8
  store i64 0, ptr %20, align 8
  %21 = load ptr, ptr %9, align 8
  %22 = load i64, ptr %10, align 8
  %23 = call i64 @primary_hash(ptr noundef %21, i64 noundef %22)
  store i64 %23, ptr %18, align 8
  %24 = load ptr, ptr %9, align 8
  %25 = getelementptr inbounds %struct.rzip_state, ptr %24, i32 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = load i64, ptr %18, align 8
  %28 = getelementptr inbounds %struct.hash_entry, ptr %26, i64 %27
  store ptr %28, ptr %15, align 8
  br label %29

29:                                               ; preds = %80, %7
  %30 = load ptr, ptr %15, align 8
  %31 = call zeroext i1 @empty_hash(ptr noundef %30)
  %32 = xor i1 %31, true
  br i1 %32, label %33, label %97

33:                                               ; preds = %29
  %34 = load i64, ptr %10, align 8
  %35 = load ptr, ptr %15, align 8
  %36 = getelementptr inbounds %struct.hash_entry, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %80

39:                                               ; preds = %33
  %40 = load ptr, ptr %8, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 75
  %42 = load ptr, ptr %41, align 8
  %43 = load ptr, ptr %8, align 8
  %44 = load ptr, ptr %9, align 8
  %45 = load i64, ptr %11, align 8
  %46 = load ptr, ptr %15, align 8
  %47 = getelementptr inbounds %struct.hash_entry, ptr %46, i32 0, i32 0
  %48 = load i64, ptr %47, align 8
  %49 = load i64, ptr %12, align 8
  %50 = call i64 %42(ptr noundef %43, ptr noundef %44, i64 noundef %45, i64 noundef %48, i64 noundef %49, ptr noundef %17)
  store i64 %50, ptr %19, align 8
  %51 = load i64, ptr %19, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %73

53:                                               ; preds = %39
  %54 = load i64, ptr %19, align 8
  %55 = load i64, ptr %16, align 8
  %56 = icmp sgt i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = load i64, ptr %19, align 8
  store i64 %58, ptr %16, align 8
  %59 = load ptr, ptr %15, align 8
  %60 = getelementptr inbounds %struct.hash_entry, ptr %59, i32 0, i32 0
  %61 = load i64, ptr %60, align 8
  %62 = load i64, ptr %17, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load ptr, ptr %13, align 8
  store i64 %63, ptr %64, align 8
  %65 = load i64, ptr %17, align 8
  %66 = load ptr, ptr %14, align 8
  store i64 %65, ptr %66, align 8
  br label %67

67:                                               ; preds = %57, %53
  %68 = load ptr, ptr %9, align 8
  %69 = getelementptr inbounds %struct.rzip_state, ptr %68, i32 0, i32 17
  %70 = getelementptr inbounds %struct.anon, ptr %69, i32 0, i32 5
  %71 = load i64, ptr %70, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, ptr %70, align 8
  br label %79

73:                                               ; preds = %39
  %74 = load ptr, ptr %9, align 8
  %75 = getelementptr inbounds %struct.rzip_state, ptr %74, i32 0, i32 17
  %76 = getelementptr inbounds %struct.anon, ptr %75, i32 0, i32 6
  %77 = load i64, ptr %76, align 8
  %78 = add nsw i64 %77, 1
  store i64 %78, ptr %76, align 8
  br label %79

79:                                               ; preds = %73, %67
  br label %80

80:                                               ; preds = %79, %33
  %81 = load i64, ptr %18, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, ptr %18, align 8
  %83 = load ptr, ptr %9, align 8
  %84 = getelementptr inbounds %struct.rzip_state, ptr %83, i32 0, i32 4
  %85 = load i8, ptr %84, align 8
  %86 = sext i8 %85 to i32
  %87 = shl i32 1, %86
  %88 = sub nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = load i64, ptr %18, align 8
  %91 = and i64 %90, %89
  store i64 %91, ptr %18, align 8
  %92 = load ptr, ptr %9, align 8
  %93 = getelementptr inbounds %struct.rzip_state, ptr %92, i32 0, i32 3
  %94 = load ptr, ptr %93, align 8
  %95 = load i64, ptr %18, align 8
  %96 = getelementptr inbounds %struct.hash_entry, ptr %94, i64 %95
  store ptr %96, ptr %15, align 8
  br label %29, !llvm.loop !23

97:                                               ; preds = %29
  %98 = load i64, ptr %16, align 8
  ret i64 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @insert_hash(ptr noundef %0, i64 noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  store i64 0, ptr %8, align 8
  store i64 0, ptr %9, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = load i64, ptr %5, align 8
  %13 = call i64 @primary_hash(ptr noundef %11, i64 noundef %12)
  store i64 %13, ptr %7, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.rzip_state, ptr %14, i32 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = load i64, ptr %7, align 8
  %18 = getelementptr inbounds %struct.hash_entry, ptr %16, i64 %17
  store ptr %18, ptr %10, align 8
  br label %19

19:                                               ; preds = %94, %3
  %20 = load ptr, ptr %10, align 8
  %21 = call zeroext i1 @empty_hash(ptr noundef %20)
  %22 = xor i1 %21, true
  br i1 %22, label %23, label %111

23:                                               ; preds = %19
  %24 = load ptr, ptr %4, align 8
  %25 = load ptr, ptr %10, align 8
  %26 = getelementptr inbounds %struct.hash_entry, ptr %25, i32 0, i32 1
  %27 = load i64, ptr %26, align 8
  %28 = call zeroext i1 @minimum_bitness(ptr noundef %24, i64 noundef %27)
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.rzip_state, ptr %30, i32 0, i32 5
  %32 = load i64, ptr %31, align 8
  %33 = add nsw i64 %32, -1
  store i64 %33, ptr %31, align 8
  br label %111

34:                                               ; preds = %23
  %35 = load ptr, ptr %10, align 8
  %36 = getelementptr inbounds %struct.hash_entry, ptr %35, i32 0, i32 1
  %37 = load i64, ptr %36, align 8
  %38 = load i64, ptr %5, align 8
  %39 = call zeroext i1 @lesser_bitness(i64 noundef %37, i64 noundef %38)
  br i1 %39, label %40, label %48

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr %10, align 8
  %43 = getelementptr inbounds %struct.hash_entry, ptr %42, i32 0, i32 1
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %10, align 8
  %46 = getelementptr inbounds %struct.hash_entry, ptr %45, i32 0, i32 0
  %47 = load i64, ptr %46, align 8
  call void @insert_hash(ptr noundef %41, i64 noundef %44, i64 noundef %47)
  br label %111

48:                                               ; preds = %34
  %49 = load ptr, ptr %10, align 8
  %50 = getelementptr inbounds %struct.hash_entry, ptr %49, i32 0, i32 1
  %51 = load i64, ptr %50, align 8
  %52 = load i64, ptr %5, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %94

54:                                               ; preds = %48
  %55 = load i64, ptr %9, align 8
  %56 = load i64, ptr @insert_hash.victim_round, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %54
  %59 = load i64, ptr %7, align 8
  store i64 %59, ptr %8, align 8
  br label %60

60:                                               ; preds = %58, %54
  %61 = load i64, ptr %9, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, ptr %9, align 8
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.rzip_state, ptr %63, i32 0, i32 1
  %65 = load ptr, ptr %64, align 8
  %66 = getelementptr inbounds %struct.level, ptr %65, i32 0, i32 2
  %67 = load i32, ptr %66, align 4
  %68 = zext i32 %67 to i64
  %69 = icmp eq i64 %62, %68
  br i1 %69, label %70, label %93

70:                                               ; preds = %60
  %71 = load i64, ptr %8, align 8
  store i64 %71, ptr %7, align 8
  %72 = load ptr, ptr %4, align 8
  %73 = getelementptr inbounds %struct.rzip_state, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = load i64, ptr %7, align 8
  %76 = getelementptr inbounds %struct.hash_entry, ptr %74, i64 %75
  store ptr %76, ptr %10, align 8
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.rzip_state, ptr %77, i32 0, i32 5
  %79 = load i64, ptr %78, align 8
  %80 = add nsw i64 %79, -1
  store i64 %80, ptr %78, align 8
  %81 = load i64, ptr @insert_hash.victim_round, align 8
  %82 = add nsw i64 %81, 1
  store i64 %82, ptr @insert_hash.victim_round, align 8
  %83 = load i64, ptr @insert_hash.victim_round, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.rzip_state, ptr %84, i32 0, i32 1
  %86 = load ptr, ptr %85, align 8
  %87 = getelementptr inbounds %struct.level, ptr %86, i32 0, i32 2
  %88 = load i32, ptr %87, align 4
  %89 = zext i32 %88 to i64
  %90 = icmp eq i64 %83, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %70
  store i64 0, ptr @insert_hash.victim_round, align 8
  br label %92

92:                                               ; preds = %91, %70
  br label %111

93:                                               ; preds = %60
  br label %94

94:                                               ; preds = %93, %48
  %95 = load i64, ptr %7, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, ptr %7, align 8
  %97 = load ptr, ptr %4, align 8
  %98 = getelementptr inbounds %struct.rzip_state, ptr %97, i32 0, i32 4
  %99 = load i8, ptr %98, align 8
  %100 = sext i8 %99 to i32
  %101 = shl i32 1, %100
  %102 = sub nsw i32 %101, 1
  %103 = sext i32 %102 to i64
  %104 = load i64, ptr %7, align 8
  %105 = and i64 %104, %103
  store i64 %105, ptr %7, align 8
  %106 = load ptr, ptr %4, align 8
  %107 = getelementptr inbounds %struct.rzip_state, ptr %106, i32 0, i32 3
  %108 = load ptr, ptr %107, align 8
  %109 = load i64, ptr %7, align 8
  %110 = getelementptr inbounds %struct.hash_entry, ptr %108, i64 %109
  store ptr %110, ptr %10, align 8
  br label %19, !llvm.loop !24

111:                                              ; preds = %92, %40, %29, %19
  %112 = load i64, ptr %5, align 8
  %113 = load ptr, ptr %10, align 8
  %114 = getelementptr inbounds %struct.hash_entry, ptr %113, i32 0, i32 1
  store i64 %112, ptr %114, align 8
  %115 = load i64, ptr %6, align 8
  %116 = load ptr, ptr %10, align 8
  %117 = getelementptr inbounds %struct.hash_entry, ptr %116, i32 0, i32 0
  store i64 %115, ptr %117, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @clean_one_from_hash(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  br label %7

7:                                                ; preds = %80, %2
  %8 = load ptr, ptr %4, align 8
  %9 = getelementptr inbounds %struct.rzip_state, ptr %8, i32 0, i32 7
  %10 = load i64, ptr %9, align 8
  %11 = call i64 @increase_mask(i64 noundef %10)
  store i64 %11, ptr %6, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_state, ptr %12, i32 0, i32 8
  %14 = load i64, ptr %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %33, label %16

16:                                               ; preds = %7
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 26
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 2048
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %3, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.rzip_state, ptr %26, i32 0, i32 7
  %28 = load i64, ptr %27, align 8
  %29 = trunc i64 %28 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %25, i32 noundef 4, i32 noundef 383, ptr noundef @.str, ptr noundef @__func__.clean_one_from_hash, ptr noundef @.str.57, i32 noundef %29)
  br label %30

30:                                               ; preds = %24
  br label %31

31:                                               ; preds = %30, %17
  br label %32

32:                                               ; preds = %31
  br label %33

33:                                               ; preds = %32, %7
  br label %34

34:                                               ; preds = %75, %33
  %35 = load ptr, ptr %4, align 8
  %36 = getelementptr inbounds %struct.rzip_state, ptr %35, i32 0, i32 8
  %37 = load i64, ptr %36, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.rzip_state, ptr %38, i32 0, i32 4
  %40 = load i8, ptr %39, align 8
  %41 = sext i8 %40 to i32
  %42 = shl i32 1, %41
  %43 = zext i32 %42 to i64
  %44 = icmp slt i64 %37, %43
  br i1 %44, label %45, label %80

45:                                               ; preds = %34
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.rzip_state, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %4, align 8
  %50 = getelementptr inbounds %struct.rzip_state, ptr %49, i32 0, i32 8
  %51 = load i64, ptr %50, align 8
  %52 = getelementptr inbounds %struct.hash_entry, ptr %48, i64 %51
  store ptr %52, ptr %5, align 8
  %53 = load ptr, ptr %5, align 8
  %54 = call zeroext i1 @empty_hash(ptr noundef %53)
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %75

56:                                               ; preds = %45
  %57 = load ptr, ptr %5, align 8
  %58 = getelementptr inbounds %struct.hash_entry, ptr %57, i32 0, i32 1
  %59 = load i64, ptr %58, align 8
  %60 = load i64, ptr %6, align 8
  %61 = and i64 %59, %60
  %62 = load i64, ptr %6, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %56
  %65 = load ptr, ptr %5, align 8
  %66 = getelementptr inbounds %struct.hash_entry, ptr %65, i32 0, i32 0
  store i64 0, ptr %66, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.hash_entry, ptr %67, i32 0, i32 1
  store i64 0, ptr %68, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.rzip_state, ptr %69, i32 0, i32 5
  %71 = load i64, ptr %70, align 8
  %72 = add nsw i64 %71, -1
  store i64 %72, ptr %70, align 8
  %73 = load i64, ptr %6, align 8
  ret i64 %73

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74, %55
  %76 = load ptr, ptr %4, align 8
  %77 = getelementptr inbounds %struct.rzip_state, ptr %76, i32 0, i32 8
  %78 = load i64, ptr %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, ptr %77, align 8
  br label %34, !llvm.loop !25

80:                                               ; preds = %34
  %81 = load i64, ptr %6, align 8
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.rzip_state, ptr %82, i32 0, i32 7
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.rzip_state, ptr %84, i32 0, i32 8
  store i64 0, ptr %85, align 8
  br label %7
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_literal(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  br label %10

10:                                               ; preds = %47, %4
  %11 = load i64, ptr %8, align 8
  %12 = load i64, ptr %7, align 8
  %13 = sub nsw i64 %11, %12
  store i64 %13, ptr %9, align 8
  %14 = load i64, ptr %9, align 8
  %15 = icmp sgt i64 %14, 65535
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i64 65535, ptr %9, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load ptr, ptr %6, align 8
  %19 = getelementptr inbounds %struct.rzip_state, ptr %18, i32 0, i32 17
  %20 = getelementptr inbounds %struct.anon, ptr %19, i32 0, i32 1
  %21 = load i64, ptr %20, align 8
  %22 = add nsw i64 %21, 1
  store i64 %22, ptr %20, align 8
  %23 = load i64, ptr %9, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = getelementptr inbounds %struct.rzip_state, ptr %24, i32 0, i32 17
  %26 = getelementptr inbounds %struct.anon, ptr %25, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = add nsw i64 %27, %23
  store i64 %28, ptr %26, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = load ptr, ptr %6, align 8
  %31 = getelementptr inbounds %struct.rzip_state, ptr %30, i32 0, i32 0
  %32 = load ptr, ptr %31, align 8
  %33 = load i64, ptr %9, align 8
  call void @put_header(ptr noundef %29, ptr noundef %32, i8 noundef zeroext 0, i64 noundef %33)
  %34 = load i64, ptr %9, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %17
  %37 = load ptr, ptr %5, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.rzip_state, ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = load i64, ptr %7, align 8
  %42 = load i64, ptr %9, align 8
  call void @write_sbstream(ptr noundef %37, ptr noundef %40, i32 noundef 1, i64 noundef %41, i64 noundef %42)
  br label %43

43:                                               ; preds = %36, %17
  %44 = load i64, ptr %9, align 8
  %45 = load i64, ptr %7, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, ptr %7, align 8
  br label %47

47:                                               ; preds = %43
  %48 = load i64, ptr %8, align 8
  %49 = load i64, ptr %7, align 8
  %50 = icmp sgt i64 %48, %49
  br i1 %50, label %10, label %51, !llvm.loop !26

51:                                               ; preds = %47
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_match(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  br label %13

13:                                               ; preds = %56, %5
  %14 = load i64, ptr %10, align 8
  store i64 %14, ptr %12, align 8
  %15 = load i64, ptr %12, align 8
  %16 = icmp sgt i64 %15, 65535
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i64 65535, ptr %12, align 8
  br label %18

18:                                               ; preds = %17, %13
  %19 = load i64, ptr %8, align 8
  %20 = load i64, ptr %9, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, ptr %11, align 8
  %22 = load ptr, ptr %6, align 8
  %23 = load ptr, ptr %7, align 8
  %24 = getelementptr inbounds %struct.rzip_state, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = load i64, ptr %12, align 8
  call void @put_header(ptr noundef %22, ptr noundef %25, i8 noundef zeroext 1, i64 noundef %26)
  %27 = load ptr, ptr %6, align 8
  %28 = load ptr, ptr %7, align 8
  %29 = getelementptr inbounds %struct.rzip_state, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = load i64, ptr %11, align 8
  %32 = load ptr, ptr %7, align 8
  %33 = getelementptr inbounds %struct.rzip_state, ptr %32, i32 0, i32 12
  %34 = load i8, ptr %33, align 8
  %35 = sext i8 %34 to i64
  call void @put_vchars(ptr noundef %27, ptr noundef %30, i64 noundef %31, i64 noundef %35)
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.rzip_state, ptr %36, i32 0, i32 17
  %38 = getelementptr inbounds %struct.anon, ptr %37, i32 0, i32 3
  %39 = load i64, ptr %38, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, ptr %38, align 8
  %41 = load i64, ptr %12, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = getelementptr inbounds %struct.rzip_state, ptr %42, i32 0, i32 17
  %44 = getelementptr inbounds %struct.anon, ptr %43, i32 0, i32 4
  %45 = load i64, ptr %44, align 8
  %46 = add nsw i64 %45, %41
  store i64 %46, ptr %44, align 8
  %47 = load i64, ptr %12, align 8
  %48 = load i64, ptr %10, align 8
  %49 = sub nsw i64 %48, %47
  store i64 %49, ptr %10, align 8
  %50 = load i64, ptr %12, align 8
  %51 = load i64, ptr %8, align 8
  %52 = add nsw i64 %51, %50
  store i64 %52, ptr %8, align 8
  %53 = load i64, ptr %12, align 8
  %54 = load i64, ptr %9, align 8
  %55 = add nsw i64 %54, %53
  store i64 %55, ptr %9, align 8
  br label %56

56:                                               ; preds = %18
  %57 = load i64, ptr %10, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %13, label %59, !llvm.loop !27

59:                                               ; preds = %56
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cksem_wait(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %5 = load ptr, ptr %4, align 8
  %6 = call i32 @sem_wait(ptr noundef %5)
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = call ptr @__errno_location() #11
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %14, i32 noundef 167, ptr noundef @.str.33, ptr noundef @__func__.cksem_wait, ptr noundef @.str.58, i32 noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cksum_update(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = call zeroext i1 @create_pthread(ptr noundef %4, ptr noundef %3, ptr noundef null, ptr noundef @cksumthread, ptr noundef %5)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_distrib(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  store i64 0, ptr %6, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %8, align 8
  br label %9

9:                                                ; preds = %41, %2
  %10 = load i64, ptr %8, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.rzip_state, ptr %11, i32 0, i32 4
  %13 = load i8, ptr %12, align 8
  %14 = sext i8 %13 to i32
  %15 = shl i32 1, %14
  %16 = zext i32 %15 to i64
  %17 = icmp slt i64 %10, %16
  br i1 %17, label %18, label %44

18:                                               ; preds = %9
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.rzip_state, ptr %19, i32 0, i32 3
  %21 = load ptr, ptr %20, align 8
  %22 = load i64, ptr %8, align 8
  %23 = getelementptr inbounds %struct.hash_entry, ptr %21, i64 %22
  store ptr %23, ptr %5, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = call zeroext i1 @empty_hash(ptr noundef %24)
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %41

27:                                               ; preds = %18
  %28 = load i64, ptr %7, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, ptr %7, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = getelementptr inbounds %struct.hash_entry, ptr %31, i32 0, i32 1
  %33 = load i64, ptr %32, align 8
  %34 = call i64 @primary_hash(ptr noundef %30, i64 noundef %33)
  %35 = load i64, ptr %8, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %27
  %38 = load i64, ptr %6, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %6, align 8
  br label %40

40:                                               ; preds = %37, %27
  br label %41

41:                                               ; preds = %40, %26
  %42 = load i64, ptr %8, align 8
  %43 = add nsw i64 %42, 1
  store i64 %43, ptr %8, align 8
  br label %9, !llvm.loop !28

44:                                               ; preds = %9
  %45 = load i64, ptr %7, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.rzip_state, ptr %46, i32 0, i32 5
  %48 = load i64, ptr %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %44
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %3, align 8
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.rzip_state, ptr %53, i32 0, i32 5
  %55 = load i64, ptr %54, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %52, i32 noundef 571, ptr noundef @.str, ptr noundef @__func__.show_distrib, ptr noundef @.str.59, i64 noundef %55)
  br label %56

56:                                               ; preds = %51
  br label %57

57:                                               ; preds = %56, %44
  %58 = load i64, ptr %7, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  br label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %63, i32 noundef 1, i32 noundef 574, ptr noundef @.str, ptr noundef @__func__.show_distrib, ptr noundef @.str.60)
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  br label %80

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %3, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load i64, ptr %6, align 8
  %72 = load i64, ptr %6, align 8
  %73 = sitofp i64 %72 to double
  %74 = fmul double %73, 1.000000e+02
  %75 = load i64, ptr %7, align 8
  %76 = sitofp i64 %75 to double
  %77 = fdiv double %74, %76
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %69, i32 noundef 1, i32 noundef 577, ptr noundef @.str, ptr noundef @__func__.show_distrib, ptr noundef @.str.61, i64 noundef %70, i64 noundef %71, double noundef %77)
  br label %78

78:                                               ; preds = %68
  br label %79

79:                                               ; preds = %78
  br label %80

80:                                               ; preds = %79, %65
  ret void
}

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare void @md5_process_bytes(ptr noundef, i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_u32(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i32, ptr %6, align 4
  %8 = call i32 @__uint32_identity(i32 noundef %7)
  store i32 %8, ptr %6, align 4
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  call void @write_stream(ptr noundef %9, ptr noundef %10, i32 noundef 0, ptr noundef %6, i64 noundef 4)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @primary_hash(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.rzip_state, ptr %6, i32 0, i32 4
  %8 = load i8, ptr %7, align 8
  %9 = sext i8 %8 to i32
  %10 = shl i32 1, %9
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = and i64 %5, %12
  ret i64 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @empty_hash(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.hash_entry, ptr %3, i32 0, i32 0
  %5 = load i64, ptr %4, align 8
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.hash_entry, ptr %6, i32 0, i32 1
  %8 = load i64, ptr %7, align 8
  %9 = or i64 %5, %8
  %10 = icmp ne i64 %9, 0
  %11 = xor i1 %10, true
  ret i1 %11
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @minimum_bitness(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.rzip_state, ptr %7, i32 0, i32 7
  %9 = load i64, ptr %8, align 8
  %10 = call i64 @increase_mask(i64 noundef %9)
  store i64 %10, ptr %6, align 8
  %11 = load i64, ptr %5, align 8
  %12 = load i64, ptr %6, align 8
  %13 = and i64 %11, %12
  %14 = load i64, ptr %6, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i1 true, ptr %3, align 1
  br label %18

17:                                               ; preds = %2
  store i1 false, ptr %3, align 1
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i1, ptr %3, align 1
  ret i1 %19
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @lesser_bitness(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %5 = load i64, ptr %3, align 8
  %6 = xor i64 %5, -1
  store i64 %6, ptr %3, align 8
  %7 = load i64, ptr %4, align 8
  %8 = xor i64 %7, -1
  store i64 %8, ptr %4, align 8
  %9 = load i64, ptr %3, align 8
  %10 = call i32 @ffsll(i64 noundef %9) #11
  %11 = load i64, ptr %4, align 8
  %12 = call i32 @ffsll(i64 noundef %11) #11
  %13 = icmp slt i32 %10, %12
  ret i1 %13
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @increase_mask(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  %4 = shl i64 %3, 1
  %5 = or i64 %4, 1
  ret i64 %5
}

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ffsll(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_header(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i8, align 1
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i8 %2, ptr %7, align 1
  store i64 %3, ptr %8, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i8, ptr %7, align 1
  call void @put_u8(ptr noundef %9, ptr noundef %10, i8 noundef zeroext %11)
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %6, align 8
  %14 = load i64, ptr %8, align 8
  call void @put_vchars(ptr noundef %12, ptr noundef %13, i64 noundef %14, i64 noundef 2)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_sbstream(ptr noundef %0, ptr noundef %1, i32 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i64 %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %104, %5
  %15 = load i64, ptr %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %105

17:                                               ; preds = %14
  %18 = load ptr, ptr %11, align 8
  %19 = getelementptr inbounds %struct.stream_info, ptr %18, i32 0, i32 3
  %20 = load i64, ptr %19, align 8
  %21 = load ptr, ptr %11, align 8
  %22 = getelementptr inbounds %struct.stream_info, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = load i32, ptr %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.stream, ptr %23, i64 %25
  %27 = getelementptr inbounds %struct.stream, ptr %26, i32 0, i32 2
  %28 = load i64, ptr %27, align 8
  %29 = sub nsw i64 %20, %28
  %30 = load i64, ptr %10, align 8
  %31 = icmp slt i64 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %17
  %33 = load ptr, ptr %11, align 8
  %34 = getelementptr inbounds %struct.stream_info, ptr %33, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %11, align 8
  %37 = getelementptr inbounds %struct.stream_info, ptr %36, i32 0, i32 0
  %38 = load ptr, ptr %37, align 8
  %39 = load i32, ptr %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.stream, ptr %38, i64 %40
  %42 = getelementptr inbounds %struct.stream, ptr %41, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = sub nsw i64 %35, %43
  br label %47

45:                                               ; preds = %17
  %46 = load i64, ptr %10, align 8
  br label %47

47:                                               ; preds = %45, %32
  %48 = phi i64 [ %44, %32 ], [ %46, %45 ]
  store i64 %48, ptr %12, align 8
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 72
  %51 = load ptr, ptr %50, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = load ptr, ptr %11, align 8
  %54 = getelementptr inbounds %struct.stream_info, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  %56 = load i32, ptr %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.stream, ptr %55, i64 %57
  %59 = getelementptr inbounds %struct.stream, ptr %58, i32 0, i32 1
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %11, align 8
  %62 = getelementptr inbounds %struct.stream_info, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8
  %64 = load i32, ptr %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.stream, ptr %63, i64 %65
  %67 = getelementptr inbounds %struct.stream, ptr %66, i32 0, i32 2
  %68 = load i64, ptr %67, align 8
  %69 = getelementptr inbounds i8, ptr %60, i64 %68
  %70 = load i64, ptr %9, align 8
  %71 = load i64, ptr %12, align 8
  call void %51(ptr noundef %52, ptr noundef %69, i64 noundef %70, i64 noundef %71)
  %72 = load i64, ptr %12, align 8
  %73 = load ptr, ptr %11, align 8
  %74 = getelementptr inbounds %struct.stream_info, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = load i32, ptr %8, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.stream, ptr %75, i64 %77
  %79 = getelementptr inbounds %struct.stream, ptr %78, i32 0, i32 2
  %80 = load i64, ptr %79, align 8
  %81 = add nsw i64 %80, %72
  store i64 %81, ptr %79, align 8
  %82 = load i64, ptr %12, align 8
  %83 = load i64, ptr %9, align 8
  %84 = add nsw i64 %83, %82
  store i64 %84, ptr %9, align 8
  %85 = load i64, ptr %12, align 8
  %86 = load i64, ptr %10, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, ptr %10, align 8
  %88 = load ptr, ptr %11, align 8
  %89 = getelementptr inbounds %struct.stream_info, ptr %88, i32 0, i32 0
  %90 = load ptr, ptr %89, align 8
  %91 = load i32, ptr %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.stream, ptr %90, i64 %92
  %94 = getelementptr inbounds %struct.stream, ptr %93, i32 0, i32 2
  %95 = load i64, ptr %94, align 8
  %96 = load ptr, ptr %11, align 8
  %97 = getelementptr inbounds %struct.stream_info, ptr %96, i32 0, i32 3
  %98 = load i64, ptr %97, align 8
  %99 = icmp eq i64 %95, %98
  br i1 %99, label %100, label %104

100:                                              ; preds = %47
  %101 = load ptr, ptr %6, align 8
  %102 = load ptr, ptr %11, align 8
  %103 = load i32, ptr %8, align 4
  call void @flush_buffer(ptr noundef %101, ptr noundef %102, i32 noundef %103)
  br label %104

104:                                              ; preds = %100, %47
  br label %14, !llvm.loop !29

105:                                              ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_u8(ptr noundef %0, ptr noundef %1, i8 noundef zeroext %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i8 %2, ptr %6, align 1
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  call void @write_stream(ptr noundef %7, ptr noundef %8, i32 noundef 0, ptr noundef %6, i64 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_vchars(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store i64 %3, ptr %8, align 8
  %9 = load i64, ptr %7, align 8
  %10 = call i64 @__uint64_identity(i64 noundef %9)
  store i64 %10, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = load i64, ptr %8, align 8
  call void @write_stream(ptr noundef %11, ptr noundef %12, i32 noundef 0, ptr noundef %7, i64 noundef %13)
  ret void
}

declare void @write_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

declare void @flush_buffer(ptr noundef, ptr noundef, i32 noundef) #1

declare i32 @sem_wait(ptr noundef) #1

declare zeroext i1 @create_pthread(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @cksumthread(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %4 = load ptr, ptr %2, align 8
  store ptr %4, ptr %3, align 8
  %5 = call i64 @pthread_self() #11
  %6 = call i32 @pthread_detach(i64 noundef %5) #9
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 55
  %9 = getelementptr inbounds %struct.checksum, ptr %8, i32 0, i32 0
  %10 = load ptr, ptr %9, align 8
  %11 = load i32, ptr %10, align 4
  %12 = load ptr, ptr %3, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 55
  %14 = getelementptr inbounds %struct.checksum, ptr %13, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 55
  %18 = getelementptr inbounds %struct.checksum, ptr %17, i32 0, i32 2
  %19 = load i64, ptr %18, align 8
  %20 = call i32 @CrcUpdate(i32 noundef %11, ptr noundef %15, i64 noundef %19)
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 55
  %23 = getelementptr inbounds %struct.checksum, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  store i32 %20, ptr %24, align 4
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 26
  %27 = load i64, ptr %26, align 8
  %28 = and i64 %27, 65536
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.rzip_control, ptr %31, i32 0, i32 26
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 131072
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %30, %1
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 55
  %39 = getelementptr inbounds %struct.checksum, ptr %38, i32 0, i32 1
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 55
  %43 = getelementptr inbounds %struct.checksum, ptr %42, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 52
  call void @md5_process_bytes(ptr noundef %40, i64 noundef %44, ptr noundef %46) #9
  br label %47

47:                                               ; preds = %36, %30
  br label %48

48:                                               ; preds = %47
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 55
  %51 = getelementptr inbounds %struct.checksum, ptr %50, i32 0, i32 1
  %52 = load ptr, ptr %51, align 8
  call void @free(ptr noundef %52) #9
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 55
  %55 = getelementptr inbounds %struct.checksum, ptr %54, i32 0, i32 1
  store ptr null, ptr %55, align 8
  br label %56

56:                                               ; preds = %48
  %57 = load ptr, ptr %3, align 8
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 51
  call void @cksem_post(ptr noundef %57, ptr noundef %59)
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare i64 @pthread_self() #4

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(0,1) }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"clang version 16.0.0"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
!11 = distinct !{!11, !7}
!12 = distinct !{!12, !7}
!13 = distinct !{!13, !7}
!14 = distinct !{!14, !7}
!15 = distinct !{!15, !7}
!16 = distinct !{!16, !7}
!17 = distinct !{!17, !7}
!18 = distinct !{!18, !7}
!19 = distinct !{!19, !7}
!20 = distinct !{!20, !7}
!21 = distinct !{!21, !7}
!22 = distinct !{!22, !7}
!23 = distinct !{!23, !7}
!24 = distinct !{!24, !7}
!25 = distinct !{!25, !7}
!26 = distinct !{!26, !7}
!27 = distinct !{!27, !7}
!28 = distinct !{!28, !7}
!29 = distinct !{!29, !7}
