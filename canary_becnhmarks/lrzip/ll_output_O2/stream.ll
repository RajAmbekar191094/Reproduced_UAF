; ModuleID = './stream.c'
source_filename = "./stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.compress_thread = type { ptr, i8, i64, i64, %union.sem_t, ptr, i32, [8 x i8] }
%struct.stream_info = type { ptr, i8, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i8 }
%struct.stream = type { i64, ptr, i64, i64, i8, i64, i64, i64, i32, i64 }
%struct.stream_thread_struct = type { i32, ptr }
%struct.uncomp_thread = type { ptr, i64, i64, i64, i8, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"./stream.c\00", align 1
@__func__.init_mutex = private unnamed_addr constant [11 x i8] c"init_mutex\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"pthread_mutex_init failed\00", align 1
@__func__.unlock_mutex = private unnamed_addr constant [13 x i8] c"unlock_mutex\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"pthread_mutex_unlock failed\00", align 1
@__func__.lock_mutex = private unnamed_addr constant [11 x i8] c"lock_mutex\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"pthread_mutex_lock failed\00", align 1
@__func__.create_pthread = private unnamed_addr constant [15 x i8] c"create_pthread\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1
@__func__.detach_pthread = private unnamed_addr constant [15 x i8] c"detach_pthread\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"pthread_detach\00", align 1
@__func__.join_pthread = private unnamed_addr constant [13 x i8] c"join_pthread\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1
@__func__.put_fdout = private unnamed_addr constant [10 x i8] c"put_fdout\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"Unable to decompress entirely in ram, will use physical files\0A\00", align 1
@.str.8 = private unnamed_addr constant [86 x i8] c"Was unable to decompress entirely in ram and no temporary file creation was possible\0A\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"Unable to write_fdout tmpoutbuf in put_fdout\0A\00", align 1
@.str.10 = private unnamed_addr constant [47 x i8] c"Unable to write_fdout offset_buf in put_fdout\0A\00", align 1
@__func__.read_1g = private unnamed_addr constant [8 x i8] c"read_1g\00", align 1
@.str.11 = private unnamed_addr constant [71 x i8] c"Inadequate ram to %compress from STDIN and unable to create in tmpfile\00", align 1
@.str.12 = private unnamed_addr constant [44 x i8] c"Trying to read beyond out_ofs in tmpoutbuf\0A\00", align 1
@__func__.get_readseek = private unnamed_addr constant [13 x i8] c"get_readseek\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"Failed to lseek in get_seek\0A\00", align 1
@threads = internal unnamed_addr global ptr null, align 8
@__func__.prepare_streamout_threads = private unnamed_addr constant [26 x i8] c"prepare_streamout_threads\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Unable to calloc threads in prepare_streamout_threads\0A\00", align 1
@cthread = internal unnamed_addr global ptr null, align 8
@.str.15 = private unnamed_addr constant [55 x i8] c"Unable to calloc cthread in prepare_streamout_threads\0A\00", align 1
@output_thread = internal unnamed_addr global i64 0, align 8
@__func__.open_stream_out = private unnamed_addr constant [16 x i8] c"open_stream_out\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Succeeded in testing %lld sized malloc for back end compression\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Using up to %d threads to compress up to %lld bytes each.\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Using only 1 thread to compress up to %lld bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Unable to malloc buffer of size %lld in open_stream_out\0A\00", align 1
@ucthread = internal unnamed_addr global ptr null, align 8
@__func__.open_stream_in = private unnamed_addr constant [15 x i8] c"open_stream_in\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"Unable to calloc cthread in open_stream_in\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"Reading eof flag at %lld\0A\00", align 1
@.str.22 = private unnamed_addr constant [43 x i8] c"Failed to read eof flag in open_stream_in\0A\00", align 1
@.str.23 = private unnamed_addr constant [9 x i8] c"EOF: %d\0A\00", align 1
@.str.24 = private unnamed_addr constant [36 x i8] c"Reading expected chunksize at %lld\0A\00", align 1
@.str.25 = private unnamed_addr constant [48 x i8] c"Failed to read in chunk size in open_stream_in\0A\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"Chunk size: %lld\0A\00", align 1
@.str.27 = private unnamed_addr constant [34 x i8] c"Reading stream %d header at %lld\0A\00", align 1
@.str.28 = private unnamed_addr constant [34 x i8] c"Enabling stream close workaround\0A\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"Unexpected initial tag %d in streams\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"Wrong password?\0A\00", align 1
@.str.31 = private unnamed_addr constant [47 x i8] c"Unexpected initial c_len %lld in streams %lld\0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"Unexpected initial u_len %lld in streams\0A\00", align 1
@__func__.close_stream_out = private unnamed_addr constant [17 x i8] c"close_stream_out\00", align 1
@.str.33 = private unnamed_addr constant [50 x i8] c"Failed to calloc sinfo_queue in close_stream_out\0A\00", align 1
@.str.34 = private unnamed_addr constant [51 x i8] c"Failed to realloc sinfo_queue in close_stream_out\0A\00", align 1
@__func__.close_stream_in = private unnamed_addr constant [16 x i8] c"close_stream_in\00", align 1
@.str.35 = private unnamed_addr constant [46 x i8] c"Closing stream at %lld, want to seek to %lld\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@__func__.read_fdin = private unnamed_addr constant [10 x i8] c"read_fdin\00", align 1
@.str.36 = private unnamed_addr constant [80 x i8] c"Reached end of file on STDIN prematurely on read_fdin, asked for %lld got %lld\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [9 x i8] c"./util.h\00", align 1
@__func__.cksem_init = private unnamed_addr constant [11 x i8] c"cksem_init\00", align 1
@.str.38 = private unnamed_addr constant [35 x i8] c"Failed to sem_init ret=%d errno=%d\00", align 1
@__func__.cksem_post = private unnamed_addr constant [11 x i8] c"cksem_post\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Failed to sem_post errno=%d cksem=0x%p\00", align 1
@__func__.cksem_wait = private unnamed_addr constant [11 x i8] c"cksem_wait\00", align 1
@.str.40 = private unnamed_addr constant [39 x i8] c"Failed to sem_wait errno=%d cksem=0x%p\00", align 1
@__func__.read_buf = private unnamed_addr constant [9 x i8] c"read_buf\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Read of length %lld failed - %s\0A\00", align 1
@.str.42 = private unnamed_addr constant [50 x i8] c"Partial read!? asked for %lld bytes but got %lld\0A\00", align 1
@clear_buffer.i = internal unnamed_addr global i32 0, align 4
@__func__.clear_buffer = private unnamed_addr constant [13 x i8] c"clear_buffer\00", align 1
@.str.43 = private unnamed_addr constant [59 x i8] c"Starting thread %ld to compress %lld bytes from stream %d\0A\00", align 1
@.str.44 = private unnamed_addr constant [33 x i8] c"Unable to malloc in clear_buffer\00", align 1
@.str.45 = private unnamed_addr constant [44 x i8] c"Unable to create compthread in clear_buffer\00", align 1
@.str.46 = private unnamed_addr constant [54 x i8] c"Unable to malloc buffer of size %lld in flush_buffer\0A\00", align 1
@__func__.compthread = private unnamed_addr constant [11 x i8] c"compthread\00", align 1
@.str.47 = private unnamed_addr constant [45 x i8] c"Warning, unable to set nice value on thread\0A\00", align 1
@.str.48 = private unnamed_addr constant [31 x i8] c"Dunno wtf compression to use!\0A\00", align 1
@.str.49 = private unnamed_addr constant [39 x i8] c"Failed to realloc s_buf in compthread\0A\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"Failed to compress in compthread\0A\00", align 1
@output_lock = internal global %union.pthread_mutex_t zeroinitializer, align 8
@output_cond = internal global %union.pthread_cond_t zeroinitializer, align 8
@.str.51 = private unnamed_addr constant [93 x i8] c"Unable to compress in parallel, waiting for previous thread to complete before trying again\0A\00", align 1
@.str.52 = private unnamed_addr constant [41 x i8] c"Failed to flush_tmpoutbuf in compthread\0A\00", align 1
@.str.53 = private unnamed_addr constant [46 x i8] c"Writing initial chunk bytes value %d at %lld\0A\00", align 1
@.str.54 = private unnamed_addr constant [24 x i8] c"Writing EOF flag as %d\0A\00", align 1
@.str.55 = private unnamed_addr constant [32 x i8] c"Writing initial header at %lld\0A\00", align 1
@.str.56 = private unnamed_addr constant [49 x i8] c"Failed to write_buf blank salt in compthread %d\0A\00", align 1
@.str.57 = private unnamed_addr constant [51 x i8] c"Compthread %ld seeking to %lld to store length %d\0A\00", align 1
@.str.58 = private unnamed_addr constant [35 x i8] c"Failed to seekto in compthread %d\0A\00", align 1
@.str.59 = private unnamed_addr constant [46 x i8] c"Failed to write_val cur_pos in compthread %d\0A\00", align 1
@.str.60 = private unnamed_addr constant [48 x i8] c"Compthread %ld seeking to %lld to write header\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"Failed to seekto cur_pos in compthread %d\0A\00", align 1
@.str.62 = private unnamed_addr constant [57 x i8] c"Thread %ld writing %lld compressed bytes from stream %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [50 x i8] c"Failed to write_buf header salt in compthread %d\0A\00", align 1
@.str.64 = private unnamed_addr constant [31 x i8] c"Failed write in compthread %d\0A\00", align 1
@.str.65 = private unnamed_addr constant [49 x i8] c"Failed to write_buf block salt in compthread %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [37 x i8] c"Compthread %ld writing data at %lld\0A\00", align 1
@.str.67 = private unnamed_addr constant [44 x i8] c"Failed to write_buf s_buf in compthread %d\0A\00", align 1
@__func__.lzma_compress_buf = private unnamed_addr constant [18 x i8] c"lzma_compress_buf\00", align 1
@.str.68 = private unnamed_addr constant [46 x i8] c"Starting lzma back end compression thread...\0A\00", align 1
@.str.69 = private unnamed_addr constant [47 x i8] c"Unable to allocate c_buf in lzma_compress_buf\0A\00", align 1
@.str.70 = private unnamed_addr constant [51 x i8] c"LZMA Parameter ERROR: %d. This should not happen.\0A\00", align 1
@.str.71 = private unnamed_addr constant [71 x i8] c"Harmless LZMA Output Buffer Overflow error: %d. Incompressible block.\0A\00", align 1
@.str.72 = private unnamed_addr constant [54 x i8] c"LZMA Multi Thread ERROR: %d. This should not happen.\0A\00", align 1
@.str.73 = private unnamed_addr constant [54 x i8] c"Unidentified LZMA ERROR: %d. This should not happen.\0A\00", align 1
@.str.74 = private unnamed_addr constant [85 x i8] c"LZMA Warning: %d. Can't allocate enough RAM for compression window, trying smaller.\0A\00", align 1
@.str.75 = private unnamed_addr constant [100 x i8] c"Unable to allocate enough RAM for any sized compression window, falling back to bzip2 compression.\0A\00", align 1
@.str.76 = private unnamed_addr constant [22 x i8] c"Incompressible block\0A\00", align 1
@__func__.lzo_compresses = private unnamed_addr constant [15 x i8] c"lzo_compresses\00", align 1
@.str.77 = private unnamed_addr constant [45 x i8] c"Unable to allocate wrkmem in lzo_compresses\0A\00", align 1
@.str.78 = private unnamed_addr constant [44 x i8] c"Unable to allocate c_buf in lzo_compresses\0A\00", align 1
@.str.79 = private unnamed_addr constant [77 x i8] c"lzo testing %s for chunk %ld. Compressed size = %5.2F%% of chunk, %d Passes\0A\00", align 1
@.str.80 = private unnamed_addr constant [7 x i8] c"FAILED\00", align 1
@.str.81 = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@__func__.lzo_compress_buf = private unnamed_addr constant [17 x i8] c"lzo_compress_buf\00", align 1
@.str.82 = private unnamed_addr constant [24 x i8] c"Failed to malloc wkmem\0A\00", align 1
@.str.83 = private unnamed_addr constant [45 x i8] c"Unable to allocate c_buf in lzo_compress_buf\00", align 1
@__func__.bzip2_compress_buf = private unnamed_addr constant [19 x i8] c"bzip2_compress_buf\00", align 1
@.str.84 = private unnamed_addr constant [48 x i8] c"Unable to allocate c_buf in bzip2_compress_buf\0A\00", align 1
@.str.85 = private unnamed_addr constant [21 x i8] c"BZ2 compress failed\0A\00", align 1
@__func__.gzip_compress_buf = private unnamed_addr constant [18 x i8] c"gzip_compress_buf\00", align 1
@.str.86 = private unnamed_addr constant [47 x i8] c"Unable to allocate c_buf in gzip_compress_buf\0A\00", align 1
@.str.87 = private unnamed_addr constant [18 x i8] c"compress2 failed\0A\00", align 1
@__func__.zpaq_compress_buf = private unnamed_addr constant [18 x i8] c"zpaq_compress_buf\00", align 1
@.str.88 = private unnamed_addr constant [47 x i8] c"Unable to allocate c_buf in zpaq_compress_buf\0A\00", align 1
@__func__.cond_wait = private unnamed_addr constant [10 x i8] c"cond_wait\00", align 1
@.str.89 = private unnamed_addr constant [25 x i8] c"pthread_cond_wait failed\00", align 1
@__func__.get_seek = private unnamed_addr constant [9 x i8] c"get_seek\00", align 1
@__func__.seekto = private unnamed_addr constant [7 x i8] c"seekto\00", align 1
@.str.90 = private unnamed_addr constant [53 x i8] c"Trying to seek to %lld outside tmp outbuf in seekto\0A\00", align 1
@__func__.fd_seekto = private unnamed_addr constant [10 x i8] c"fd_seekto\00", align 1
@.str.91 = private unnamed_addr constant [34 x i8] c"Failed to seek to %lld in stream\0A\00", align 1
@__func__.write_buf = private unnamed_addr constant [10 x i8] c"write_buf\00", align 1
@.str.92 = private unnamed_addr constant [34 x i8] c"Write of length %lld failed - %s\0A\00", align 1
@.str.93 = private unnamed_addr constant [51 x i8] c"Partial write!? asked for %lld bytes but got %lld\0A\00", align 1
@__func__.cond_broadcast = private unnamed_addr constant [15 x i8] c"cond_broadcast\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"pthread_cond_broadcast failed\00", align 1
@__func__.fill_buffer = private unnamed_addr constant [12 x i8] c"fill_buffer\00", align 1
@.str.95 = private unnamed_addr constant [55 x i8] c"Trying to start a busy thread, this shouldn't happen!\0A\00", align 1
@.str.96 = private unnamed_addr constant [30 x i8] c"Reading ucomp header at %lld\0A\00", align 1
@.str.97 = private unnamed_addr constant [60 x i8] c"Fill_buffer stream %d c_len %lld u_len %lld last_head %lld\0A\00", align 1
@.str.98 = private unnamed_addr constant [58 x i8] c"Unable to malloc buffer of size %lld in this environment\0A\00", align 1
@.str.99 = private unnamed_addr constant [53 x i8] c"Unable to malloc buffer of size %lld in fill_buffer\0A\00", align 1
@.str.100 = private unnamed_addr constant [61 x i8] c"Starting thread %ld to decompress %lld bytes from stream %d\0A\00", align 1
@.str.101 = private unnamed_addr constant [32 x i8] c"Unable to malloc in fill_buffer\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"Taking decompressed data from thread %ld\0A\00", align 1
@__func__.ucompthread = private unnamed_addr constant [12 x i8] c"ucompthread\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"Dunno wtf decompression type to use!\0A\00", align 1
@.str.104 = private unnamed_addr constant [37 x i8] c"Failed to decompress in ucompthread\0A\00", align 1
@.str.105 = private unnamed_addr constant [95 x i8] c"Unable to decompress in parallel, waiting for previous thread to complete before trying again\0A\00", align 1
@.str.106 = private unnamed_addr constant [51 x i8] c"Thread %ld decompressed %lld bytes from stream %d\0A\00", align 1
@__func__.lzma_decompress_buf = private unnamed_addr constant [20 x i8] c"lzma_decompress_buf\00", align 1
@.str.107 = private unnamed_addr constant [49 x i8] c"Failed to allocate %lld bytes for decompression\0A\00", align 1
@.str.108 = private unnamed_addr constant [42 x i8] c"Failed to decompress buffer - lzmaerr=%d\0A\00", align 1
@.str.109 = private unnamed_addr constant [72 x i8] c"Inconsistent length after decompression. Got %lld bytes, expected %lld\0A\00", align 1
@__func__.lzo_decompress_buf = private unnamed_addr constant [19 x i8] c"lzo_decompress_buf\00", align 1
@.str.110 = private unnamed_addr constant [48 x i8] c"Failed to allocate %lu bytes for decompression\0A\00", align 1
@.str.111 = private unnamed_addr constant [40 x i8] c"Failed to decompress buffer - lzerr=%d\0A\00", align 1
@.str.112 = private unnamed_addr constant [71 x i8] c"Inconsistent length after decompression. Got %lu bytes, expected %lld\0A\00", align 1
@__func__.bzip2_decompress_buf = private unnamed_addr constant [21 x i8] c"bzip2_decompress_buf\00", align 1
@.str.113 = private unnamed_addr constant [47 x i8] c"Failed to allocate %d bytes for decompression\0A\00", align 1
@.str.114 = private unnamed_addr constant [40 x i8] c"Failed to decompress buffer - bzerr=%d\0A\00", align 1
@.str.115 = private unnamed_addr constant [70 x i8] c"Inconsistent length after decompression. Got %d bytes, expected %lld\0A\00", align 1
@__func__.gzip_decompress_buf = private unnamed_addr constant [20 x i8] c"gzip_decompress_buf\00", align 1
@.str.116 = private unnamed_addr constant [48 x i8] c"Failed to allocate %ld bytes for decompression\0A\00", align 1
@.str.117 = private unnamed_addr constant [40 x i8] c"Failed to decompress buffer - gzerr=%d\0A\00", align 1
@.str.118 = private unnamed_addr constant [71 x i8] c"Inconsistent length after decompression. Got %ld bytes, expected %lld\0A\00", align 1
@__func__.zpaq_decompress_buf = private unnamed_addr constant [20 x i8] c"zpaq_decompress_buf\00", align 1
@__func__.rewrite_encrypted = private unnamed_addr constant [18 x i8] c"rewrite_encrypted\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"Failed to malloc head in rewrite_encrypted\0A\00", align 1
@.str.120 = private unnamed_addr constant [47 x i8] c"Failed to seekto buf ofs in rewrite_encrypted\0A\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"Failed to write_buf head in rewrite_encrypted\0A\00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"Failed to read_buf buf in rewrite_encrypted\0A\00", align 1
@.str.123 = private unnamed_addr constant [49 x i8] c"Failed to seek back to ofs in rewrite_encrypted\0A\00", align 1
@.str.124 = private unnamed_addr constant [56 x i8] c"Failed to write_buf encrypted buf in rewrite_encrypted\0A\00", align 1
@__func__.read_seekto = private unnamed_addr constant [12 x i8] c"read_seekto\00", align 1
@.str.125 = private unnamed_addr constant [57 x i8] c"Trying to seek to %lld outside tmp inbuf in read_seekto\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @init_mutex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @pthread_mutex_init(ptr noundef %1, ptr noundef null) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !5

5:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 98, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.init_mutex, ptr noundef nonnull @.str.1)
  br label %6

6:                                                ; preds = %2, %5
  ret i1 %4
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #2 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !17
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #17
  call void @perror(ptr noundef null) #17
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @unlock_mutex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @pthread_mutex_unlock(ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !5

5:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %6

6:                                                ; preds = %2, %5
  ret i1 %4
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lock_mutex(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = tail call i32 @pthread_mutex_lock(ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !5

5:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %6

6:                                                ; preds = %2, %5
  ret i1 %4
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @create_pthread(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
  %6 = tail call i32 @pthread_create(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #16
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %9, label %8, !prof !5

8:                                                ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 134, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.create_pthread, ptr noundef nonnull @.str.4)
  br label %9

9:                                                ; preds = %5, %8
  ret i1 %7
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @detach_pthread(ptr noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 {
  %3 = load i64, ptr %1, align 8, !tbaa !20
  %4 = tail call i32 @pthread_detach(i64 noundef %3) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6, !prof !5

6:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 141, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.detach_pthread, ptr noundef nonnull @.str.5)
  br label %7

7:                                                ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @join_pthread(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
  %4 = tail call i32 @pthread_join(i64 noundef %1, ptr noundef %2) #16
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 148, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.join_pthread, ptr noundef nonnull @.str.6)
  br label %7

7:                                                ; preds = %3, %6
  ret i1 %5
}

declare i32 @pthread_join(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i64 @put_fdout(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %5 = load i64, ptr %4, align 8, !tbaa !21
  %6 = and i64 %5, 2097152
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %12

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %10 = load i32, ptr %9, align 4, !tbaa !22
  %11 = tail call i64 @write(i32 noundef %10, ptr noundef %1, i64 noundef %2) #16
  br label %48

12:                                               ; preds = %3
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  %14 = load i64, ptr %13, align 8, !tbaa !23
  %15 = add nsw i64 %14, %2
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 11
  %17 = load i64, ptr %16, align 8, !tbaa !24
  %18 = icmp sgt i64 %15, %17
  br i1 %18, label %19, label %38, !prof !25

19:                                               ; preds = %12
  %20 = and i64 %5, 3072
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 623, ptr nonnull poison, ptr noundef nonnull @__func__.put_fdout, ptr noundef nonnull @.str.7)
  br label %23

23:                                               ; preds = %19, %22
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %28, !prof !25

27:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 625, ptr nonnull poison, ptr noundef nonnull @__func__.put_fdout, ptr noundef nonnull @.str.8)
  br label %28

28:                                               ; preds = %27, %23
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !26
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %32 = load i64, ptr %31, align 8, !tbaa !27
  %33 = tail call zeroext i1 @write_fdout(ptr noundef nonnull %0, ptr noundef %30, i64 noundef %32) #16
  br i1 %33, label %35, label %34, !prof !5

34:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 627, ptr nonnull poison, ptr noundef nonnull @__func__.put_fdout, ptr noundef nonnull @.str.9)
  br label %48

35:                                               ; preds = %28
  tail call void @close_tmpoutbuf(ptr noundef nonnull %0) #16
  %36 = tail call zeroext i1 @write_fdout(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %2) #16
  br i1 %36, label %48, label %37, !prof !5

37:                                               ; preds = %35
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 632, ptr nonnull poison, ptr noundef nonnull @__func__.put_fdout, ptr noundef nonnull @.str.10)
  br label %48

38:                                               ; preds = %12
  %39 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !26
  %41 = getelementptr inbounds i8, ptr %40, i64 %14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %1, i64 %2, i1 false)
  %42 = load i64, ptr %13, align 8, !tbaa !23
  %43 = add nsw i64 %42, %2
  store i64 %43, ptr %13, align 8, !tbaa !23
  %44 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %45 = load i64, ptr %44, align 8, !tbaa !27
  %46 = icmp sgt i64 %43, %45
  br i1 %46, label %47, label %48, !prof !5

47:                                               ; preds = %38
  store i64 %43, ptr %44, align 8, !tbaa !27
  br label %48

48:                                               ; preds = %38, %47, %35, %37, %34, %8
  %49 = phi i64 [ -1, %34 ], [ -1, %37 ], [ %11, %8 ], [ %2, %35 ], [ %2, %47 ], [ %2, %38 ]
  ret i64 %49
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #2 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !19
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !6
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !28
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !6
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !18
  call void %20(ptr noundef %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #16
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !29
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !29
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #2 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !6
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !17
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #17
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !19
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

declare zeroext i1 @write_fdout(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #2 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !19
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !6
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !28
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !6
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !18
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #16
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !30
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !30
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

declare void @close_tmpoutbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define dso_local i64 @write_1g(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %17

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ 0, %3 ]
  %7 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ %2, %3 ]
  %9 = tail call i64 @llvm.smin.i64(i64 %8, i64 1048576000)
  %10 = tail call i64 @put_fdout(ptr noundef %0, ptr noundef %7, i64 noundef %9)
  %11 = icmp slt i64 %10, 1
  br i1 %11, label %17, label %12, !prof !25

12:                                               ; preds = %5
  %13 = sub nsw i64 %8, %10
  %14 = getelementptr inbounds i8, ptr %7, i64 %10
  %15 = add nsw i64 %10, %6
  %16 = icmp sgt i64 %13, 0
  br i1 %16, label %5, label %17, !llvm.loop !31

17:                                               ; preds = %5, %12, %3
  %18 = phi i64 [ 0, %3 ], [ %15, %12 ], [ %10, %5 ]
  ret i64 %18
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: nounwind uwtable
define dso_local i64 @read_1g(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !21
  %7 = and i64 %6, 4194304
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %66, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %11 = load i32, ptr %10, align 8, !tbaa !33
  %12 = icmp eq i32 %11, %1
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %15 = load i64, ptr %14, align 8, !tbaa !34
  %16 = add nsw i64 %15, %3
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 16
  %18 = load i64, ptr %17, align 8, !tbaa !35
  %19 = icmp sgt i64 %16, %18
  br i1 %19, label %20, label %24, !prof !25

20:                                               ; preds = %13
  %21 = tail call fastcc i32 @dump_stdin(ptr noundef nonnull %0)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %87, label %23

23:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 707, ptr nonnull poison, ptr noundef nonnull @__func__.read_1g, ptr noundef nonnull @.str.11)
  br label %102

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 15
  %26 = load i64, ptr %25, align 8, !tbaa !36
  %27 = icmp sgt i64 %16, %26
  br i1 %27, label %28, label %59

28:                                               ; preds = %24
  %29 = sub nsw i64 %16, %26
  %30 = icmp slt i64 %29, 1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = add nsw i64 %15, %29
  store i64 %32, ptr %25, align 8, !tbaa !36
  br label %59

33:                                               ; preds = %28
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %35 = load ptr, ptr @stdin, align 8, !tbaa !17
  %36 = tail call i32 @getc(ptr noundef %35)
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %101, label %42, !prof !25

38:                                               ; preds = %42
  %39 = load ptr, ptr @stdin, align 8, !tbaa !17
  %40 = tail call i32 @getc(ptr noundef %39)
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %55, label %42, !prof !25, !llvm.loop !37

42:                                               ; preds = %33, %38
  %43 = phi i32 [ %40, %38 ], [ %36, %33 ]
  %44 = phi i64 [ %50, %38 ], [ 0, %33 ]
  %45 = trunc i32 %43 to i8
  %46 = load ptr, ptr %34, align 8, !tbaa !38
  %47 = load i64, ptr %14, align 8, !tbaa !34
  %48 = add nsw i64 %47, %44
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  store i8 %45, ptr %49, align 1, !tbaa !39
  %50 = add nuw nsw i64 %44, 1
  %51 = icmp eq i64 %50, %29
  br i1 %51, label %52, label %38, !llvm.loop !37

52:                                               ; preds = %42
  %53 = load i64, ptr %14, align 8, !tbaa !34
  %54 = add nsw i64 %53, %29
  store i64 %54, ptr %25, align 8, !tbaa !36
  br label %59

55:                                               ; preds = %38
  %56 = icmp slt i64 %50, %29
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 677, ptr nonnull poison, ptr noundef nonnull @__func__.read_fdin, ptr noundef nonnull @.str.36, i64 noundef %29, i64 noundef %50)
  br i1 %56, label %102, label %57, !prof !25

57:                                               ; preds = %55
  %58 = load i64, ptr %14, align 8, !tbaa !34
  br label %59

59:                                               ; preds = %57, %52, %31, %24
  %60 = phi i64 [ %58, %57 ], [ %53, %52 ], [ %15, %31 ], [ %15, %24 ]
  %61 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !38
  %63 = getelementptr inbounds i8, ptr %62, i64 %60
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %63, i64 %3, i1 false)
  %64 = load i64, ptr %14, align 8, !tbaa !34
  %65 = add nsw i64 %64, %3
  store i64 %65, ptr %14, align 8, !tbaa !34
  br label %102

66:                                               ; preds = %9, %4
  %67 = and i64 %6, 2097152
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %87, label %69

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %71 = load i32, ptr %70, align 4, !tbaa !22
  %72 = icmp eq i32 %71, %1
  br i1 %72, label %73, label %87

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  %75 = load i64, ptr %74, align 8, !tbaa !23
  %76 = add nsw i64 %75, %3
  %77 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 11
  %78 = load i64, ptr %77, align 8, !tbaa !24
  %79 = icmp sgt i64 %76, %78
  br i1 %79, label %80, label %81, !prof !25

80:                                               ; preds = %73
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 721, ptr nonnull poison, ptr noundef nonnull @__func__.read_1g, ptr noundef nonnull @.str.12)
  br label %102

81:                                               ; preds = %73
  %82 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !26
  %84 = getelementptr inbounds i8, ptr %83, i64 %75
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr align 1 %84, i64 %3, i1 false)
  %85 = load i64, ptr %74, align 8, !tbaa !23
  %86 = add nsw i64 %85, %3
  store i64 %86, ptr %74, align 8, !tbaa !23
  br label %102

87:                                               ; preds = %66, %69, %20
  %88 = icmp sgt i64 %3, 0
  br i1 %88, label %89, label %102

89:                                               ; preds = %87, %96
  %90 = phi i64 [ %99, %96 ], [ 0, %87 ]
  %91 = phi ptr [ %98, %96 ], [ %2, %87 ]
  %92 = phi i64 [ %97, %96 ], [ %3, %87 ]
  %93 = tail call i64 @llvm.smin.i64(i64 %92, i64 1048576000)
  %94 = tail call i64 @read(i32 noundef %1, ptr noundef %91, i64 noundef %93) #16
  %95 = icmp slt i64 %94, 1
  br i1 %95, label %102, label %96, !prof !25

96:                                               ; preds = %89
  %97 = sub nsw i64 %92, %94
  %98 = getelementptr inbounds i8, ptr %91, i64 %94
  %99 = add nsw i64 %94, %90
  %100 = icmp sgt i64 %97, 0
  br i1 %100, label %89, label %102, !llvm.loop !40

101:                                              ; preds = %33
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 677, ptr nonnull poison, ptr noundef nonnull @__func__.read_fdin, ptr noundef nonnull @.str.36, i64 noundef %29, i64 noundef 0)
  br label %102

102:                                              ; preds = %89, %96, %87, %101, %55, %81, %80, %59, %23
  %103 = phi i64 [ -1, %23 ], [ %3, %59 ], [ -1, %80 ], [ %3, %81 ], [ 0, %55 ], [ 0, %101 ], [ 0, %87 ], [ %94, %89 ], [ %99, %96 ]
  ret i64 %103
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @dump_stdin(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call zeroext i1 @write_fdin(ptr noundef %0) #16
  br i1 %2, label %3, label %8, !prof !5

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %5 = load i32, ptr %4, align 8, !tbaa !33
  %6 = tail call zeroext i1 @read_tmpinfile(ptr noundef %0, i32 noundef %5) #16
  br i1 %6, label %7, label %8, !prof !5

7:                                                ; preds = %3
  tail call void @close_tmpinbuf(ptr noundef nonnull %0) #16
  br label %8

8:                                                ; preds = %3, %1, %7
  %9 = phi i32 [ 0, %7 ], [ -1, %1 ], [ -1, %3 ]
  ret i32 %9
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local i64 @get_readseek(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !21
  %5 = and i64 %4, 4194304
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %9 = load i64, ptr %8, align 8, !tbaa !34
  br label %14

10:                                               ; preds = %2
  %11 = tail call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 1) #16
  %12 = icmp eq i64 %11, -1
  br i1 %12, label %13, label %14, !prof !25

13:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %14

14:                                               ; preds = %10, %13, %7
  %15 = phi i64 [ %9, %7 ], [ -1, %13 ], [ %11, %10 ]
  ret i64 %15
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @prepare_streamout_threads(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp sgt i32 %3, 1
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = add nuw nsw i32 %3, 1
  store i32 %6, ptr %2, align 8, !tbaa !41
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi i32 [ %6, %5 ], [ %3, %1 ]
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %10 = load i64, ptr %9, align 8, !tbaa !21
  %11 = and i64 %10, 32
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  store i32 1, ptr %2, align 8, !tbaa !41
  br label %14

14:                                               ; preds = %13, %7
  %15 = phi i32 [ 1, %13 ], [ %8, %7 ]
  %16 = sext i32 %15 to i64
  %17 = tail call noalias ptr @calloc(i64 noundef 8, i64 noundef %16) #18
  store ptr %17, ptr @threads, align 8, !tbaa !17
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %20, !prof !25

19:                                               ; preds = %14
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 902, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prepare_streamout_threads, ptr noundef nonnull @.str.14)
  br label %48

20:                                               ; preds = %14
  %21 = tail call noalias ptr @calloc(i64 noundef 88, i64 noundef %16) #18
  store ptr %21, ptr @cthread, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %25, label %23, !prof !25

23:                                               ; preds = %20
  %24 = icmp sgt i32 %15, 0
  br i1 %24, label %26, label %48

25:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %17) #16
  store ptr null, ptr @threads, align 8, !tbaa !17
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 907, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.prepare_streamout_threads, ptr noundef nonnull @.str.15)
  br label %48

26:                                               ; preds = %23, %43
  %27 = phi i64 [ %44, %43 ], [ 0, %23 ]
  %28 = load ptr, ptr @cthread, align 8, !tbaa !17
  %29 = getelementptr inbounds %struct.compress_thread, ptr %28, i64 %27, i32 4
  %30 = tail call i32 @sem_init(ptr noundef nonnull %29, i32 noundef 0, i32 noundef 0) #16
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = tail call ptr @__errno_location() #19
  %34 = load i32, ptr %33, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 155, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_init, ptr noundef nonnull @.str.38, i32 noundef %30, i32 noundef %34)
  br label %35

35:                                               ; preds = %26, %32
  %36 = load ptr, ptr @cthread, align 8, !tbaa !17
  %37 = getelementptr inbounds %struct.compress_thread, ptr %36, i64 %27, i32 4
  %38 = tail call i32 @sem_post(ptr noundef nonnull %37) #16
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40, !prof !5

40:                                               ; preds = %35
  %41 = tail call ptr @__errno_location() #19
  %42 = load i32, ptr %41, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 161, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.39, i32 noundef %42, ptr noundef nonnull %37)
  br label %43

43:                                               ; preds = %35, %40
  %44 = add nuw nsw i64 %27, 1
  %45 = load i32, ptr %2, align 8, !tbaa !41
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %44, %46
  br i1 %47, label %26, label %48, !llvm.loop !43

48:                                               ; preds = %43, %23, %25, %19
  %49 = phi i1 [ false, %19 ], [ false, %25 ], [ true, %23 ], [ true, %43 ]
  ret i1 %49
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @cksem_post(ptr noundef %0, ptr noundef %1) unnamed_addr #2 {
  %3 = tail call i32 @sem_post(ptr noundef %1) #16
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5, !prof !5

5:                                                ; preds = %2
  %6 = tail call ptr @__errno_location() #19
  %7 = load i32, ptr %6, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 161, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.39, i32 noundef %7, ptr noundef %1)
  br label %8

8:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @close_streamout_threads(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %3 = load i32, ptr %2, align 8, !tbaa !41
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %5, label %26

5:                                                ; preds = %1
  %6 = load i64, ptr @output_thread, align 8, !tbaa !20
  %7 = trunc i64 %6 to i32
  br label %8

8:                                                ; preds = %5, %19
  %9 = phi i32 [ %23, %19 ], [ %7, %5 ]
  %10 = phi i32 [ %24, %19 ], [ 0, %5 ]
  %11 = load ptr, ptr @cthread, align 8, !tbaa !17
  %12 = sext i32 %9 to i64
  %13 = getelementptr inbounds %struct.compress_thread, ptr %11, i64 %12, i32 4
  %14 = tail call i32 @sem_wait(ptr noundef nonnull %13) #16
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16, !prof !5

16:                                               ; preds = %8
  %17 = tail call ptr @__errno_location() #19
  %18 = load i32, ptr %17, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 167, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.40, i32 noundef %18, ptr noundef nonnull %13)
  br label %19

19:                                               ; preds = %8, %16
  %20 = add nsw i32 %9, 1
  %21 = load i32, ptr %2, align 8, !tbaa !41
  %22 = icmp eq i32 %20, %21
  %23 = select i1 %22, i32 0, i32 %20
  %24 = add nuw nsw i32 %10, 1
  %25 = icmp slt i32 %24, %21
  br i1 %25, label %8, label %26, !llvm.loop !44

26:                                               ; preds = %19, %1
  %27 = load ptr, ptr @cthread, align 8, !tbaa !17
  tail call void @free(ptr noundef %27) #16
  store ptr null, ptr @cthread, align 8, !tbaa !17
  %28 = load ptr, ptr @threads, align 8, !tbaa !17
  tail call void @free(ptr noundef %28) #16
  store ptr null, ptr @threads, align 8, !tbaa !17
  ret i1 true
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @open_stream_out(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i8 noundef signext %4) local_unnamed_addr #0 {
  %6 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 88, i64 noundef 1) #18
  %7 = icmp eq ptr %6, null
  br i1 %7, label %107, label %8, !prof !25

8:                                                ; preds = %5
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %10 = load i64, ptr %9, align 8, !tbaa !45
  %11 = tail call i64 @llvm.smax.i64(i64 %10, i64 %3)
  %12 = getelementptr inbounds %struct.stream_info, ptr %6, i64 0, i32 8
  store i64 %11, ptr %12, align 8, !tbaa !46
  %13 = getelementptr inbounds %struct.stream_info, ptr %6, i64 0, i32 3
  store i64 %11, ptr %13, align 8, !tbaa !48
  %14 = getelementptr inbounds %struct.stream_info, ptr %6, i64 0, i32 12
  store i8 %4, ptr %14, align 4, !tbaa !49
  %15 = trunc i32 %2 to i8
  %16 = getelementptr inbounds %struct.stream_info, ptr %6, i64 0, i32 1
  store i8 %15, ptr %16, align 8, !tbaa !50
  %17 = getelementptr inbounds %struct.stream_info, ptr %6, i64 0, i32 2
  store i32 %1, ptr %17, align 4, !tbaa !51
  %18 = zext i32 %2 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef 80, i64 noundef %18) #18
  store ptr %19, ptr %6, align 8, !tbaa !52
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !25

21:                                               ; preds = %8
  tail call void @free(ptr noundef nonnull %6) #16
  br label %107

22:                                               ; preds = %8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %24 = load i64, ptr %23, align 8, !tbaa !21
  %25 = and i64 %24, 32
  %26 = icmp eq i64 %25, 0
  %27 = select i1 %26, i64 2, i64 1
  %28 = mul nsw i64 %27, %11
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 21
  %30 = load i64, ptr %29, align 8, !tbaa !53
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %32 = load i32, ptr %31, align 8, !tbaa !41
  %33 = sext i32 %32 to i64
  %34 = mul nsw i64 %30, %33
  %35 = add nsw i64 %28, %34
  %36 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 22
  %37 = load i64, ptr %36, align 8, !tbaa !54
  %38 = icmp sgt i64 %35, %37
  br i1 %38, label %39, label %68

39:                                               ; preds = %22
  %40 = sub nsw i64 %37, %34
  %41 = sdiv i64 %40, %27
  %42 = icmp slt i64 %41, 10485760
  %43 = icmp slt i64 %41, %11
  %44 = select i1 %42, i1 %43, i1 false
  %45 = icmp sgt i32 %32, 1
  %46 = select i1 %44, i1 %45, i1 false
  br i1 %46, label %47, label %68

47:                                               ; preds = %39
  %48 = zext i32 %32 to i64
  br label %51

49:                                               ; preds = %51
  %50 = icmp sgt i32 %63, 1
  br i1 %50, label %51, label %66, !llvm.loop !55

51:                                               ; preds = %47, %49
  %52 = phi i64 [ %48, %47 ], [ %53, %49 ]
  %53 = add nsw i64 %52, -1
  %54 = trunc i64 %53 to i32
  %55 = and i64 %53, 4294967295
  %56 = mul nsw i64 %30, %55
  %57 = sub nsw i64 %37, %56
  %58 = sdiv i64 %57, %27
  %59 = tail call i64 @llvm.smin.i64(i64 %58, i64 %11)
  %60 = icmp slt i64 %59, 10485760
  %61 = icmp sgt i64 %11, %58
  %62 = select i1 %60, i1 %61, i1 false
  %63 = trunc i64 %53 to i32
  br i1 %62, label %49, label %64, !llvm.loop !55

64:                                               ; preds = %51
  store i32 %54, ptr %31, align 8, !tbaa !41
  %65 = trunc i64 %53 to i32
  br label %68

66:                                               ; preds = %49
  store i32 %54, ptr %31, align 8, !tbaa !41
  %67 = trunc i64 %53 to i32
  br label %68

68:                                               ; preds = %64, %66, %22, %39
  %69 = phi i32 [ %32, %39 ], [ %32, %22 ], [ %65, %64 ], [ %67, %66 ]
  %70 = phi i64 [ %41, %39 ], [ %11, %22 ], [ %59, %66 ], [ %59, %64 ]
  %71 = tail call i64 @llvm.smax.i64(i64 %70, i64 10485760)
  %72 = tail call i64 @llvm.smin.i64(i64 %71, i64 %11)
  %73 = and i64 %24, 2048
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = sext i32 %69 to i64
  %77 = mul nsw i64 %30, %76
  %78 = add nsw i64 %77, %72
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1011, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_out, ptr noundef nonnull @.str.16, i64 noundef %78)
  %79 = load i32, ptr %31, align 8, !tbaa !41
  br label %80

80:                                               ; preds = %75, %68
  %81 = phi i32 [ %79, %75 ], [ %69, %68 ]
  %82 = sext i32 %81 to i64
  %83 = add i64 %72, -1
  %84 = add i64 %83, %82
  %85 = sdiv i64 %84, %82
  %86 = tail call i64 @llvm.smax.i64(i64 %85, i64 10485760)
  %87 = tail call i64 @llvm.smin.i64(i64 %72, i64 %86)
  store i64 %87, ptr %13, align 8, !tbaa !48
  %88 = icmp sgt i32 %81, 1
  %89 = load i64, ptr %23, align 8, !tbaa !21
  %90 = and i64 %89, 2048
  %91 = icmp eq i64 %90, 0
  br i1 %88, label %92, label %94

92:                                               ; preds = %80
  br i1 %91, label %96, label %93

93:                                               ; preds = %92
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1020, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_out, ptr noundef nonnull @.str.17, i32 noundef %81, i64 noundef %87)
  br label %96

94:                                               ; preds = %80
  br i1 %91, label %96, label %95

95:                                               ; preds = %94
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1023, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_out, ptr noundef nonnull @.str.18, i64 noundef %87)
  br label %96

96:                                               ; preds = %94, %95, %92, %93
  %97 = icmp eq i32 %2, 0
  br i1 %97, label %107, label %101

98:                                               ; preds = %101
  %99 = add nuw nsw i64 %102, 1
  %100 = icmp eq i64 %99, %18
  br i1 %100, label %107, label %101, !llvm.loop !56

101:                                              ; preds = %96, %98
  %102 = phi i64 [ %99, %98 ], [ 0, %96 ]
  %103 = tail call noalias ptr @calloc(i64 noundef %87, i64 noundef 1) #18
  %104 = getelementptr inbounds %struct.stream, ptr %19, i64 %102, i32 1
  store ptr %103, ptr %104, align 8, !tbaa !57
  %105 = icmp eq ptr %103, null
  br i1 %105, label %106, label %98, !prof !25

106:                                              ; preds = %101
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 1028, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.open_stream_out, ptr noundef nonnull @.str.19, i64 noundef %87)
  tail call void @free(ptr noundef nonnull %19) #16
  tail call void @free(ptr noundef %6) #16
  br label %107

107:                                              ; preds = %98, %96, %5, %106, %21
  %108 = phi ptr [ null, %21 ], [ null, %106 ], [ null, %5 ], [ %6, %96 ], [ %6, %98 ]
  ret ptr %108
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @open_stream_in(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) local_unnamed_addr #0 {
  %5 = alloca i8, align 1
  %6 = alloca [33 x i8], align 16
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 88, i64 noundef 1) #18
  %13 = icmp eq ptr %12, null
  br i1 %13, label %336, label %14, !prof !25

14:                                               ; preds = %4
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %16 = load i32, ptr %15, align 8, !tbaa !41
  %17 = icmp sgt i32 %16, 1
  %18 = select i1 %17, i32 2, i32 1
  %19 = add nsw i32 %18, %16
  %20 = sext i32 %19 to i64
  %21 = tail call noalias ptr @calloc(i64 noundef 8, i64 noundef %20) #18
  store ptr %21, ptr @threads, align 8, !tbaa !17
  %22 = icmp eq ptr %21, null
  br i1 %22, label %336, label %23, !prof !25

23:                                               ; preds = %14
  %24 = tail call noalias ptr @calloc(i64 noundef 48, i64 noundef %20) #18
  store ptr %24, ptr @ucthread, align 8, !tbaa !17
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27, !prof !25

26:                                               ; preds = %23
  tail call void @free(ptr noundef nonnull %12) #16
  tail call void @free(ptr noundef nonnull %21) #16
  store ptr null, ptr @threads, align 8, !tbaa !17
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1086, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.20)
  br label %336

27:                                               ; preds = %23
  %28 = trunc i32 %2 to i8
  %29 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 1
  store i8 %28, ptr %29, align 8, !tbaa !50
  %30 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 2
  store i32 %1, ptr %30, align 4, !tbaa !51
  %31 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 12
  store i8 %3, ptr %31, align 4, !tbaa !49
  %32 = sext i32 %2 to i64
  %33 = tail call noalias ptr @calloc(i64 noundef 80, i64 noundef %32) #18
  store ptr %33, ptr %12, align 8, !tbaa !52
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36, !prof !25

35:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %12) #16
  br label %336

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.stream, ptr %33, i64 0, i32 8
  store i32 1, ptr %37, align 8, !tbaa !59
  %38 = add nsw i32 %19, -1
  %39 = getelementptr inbounds %struct.stream, ptr %33, i64 1, i32 8
  store i32 %38, ptr %39, align 8, !tbaa !59
  %40 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %41 = load i8, ptr %40, align 1, !tbaa !60
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %43, label %123

43:                                               ; preds = %36
  %44 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %45 = load i8, ptr %44, align 2, !tbaa !61
  %46 = icmp sgt i8 %45, 5
  br i1 %46, label %47, label %123

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %49 = load i64, ptr %48, align 8, !tbaa !21
  %50 = and i64 %49, 2048
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %64, label %52

52:                                               ; preds = %47
  %53 = and i64 %49, 4194304
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %57 = load i64, ptr %56, align 8, !tbaa !34
  br label %62

58:                                               ; preds = %52
  %59 = tail call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 1) #16
  %60 = icmp eq i64 %59, -1
  br i1 %60, label %61, label %62, !prof !25

61:                                               ; preds = %58
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %62

62:                                               ; preds = %55, %58, %61
  %63 = phi i64 [ %57, %55 ], [ -1, %61 ], [ %59, %58 ]
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1105, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.21, i64 noundef %63)
  br label %64

64:                                               ; preds = %62, %47
  %65 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  %66 = tail call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %65, i64 noundef 1)
  switch i64 %66, label %71 [
    i64 -1, label %67
    i64 1, label %73
  ], !prof !62

67:                                               ; preds = %64
  %68 = tail call ptr @__errno_location() #19
  %69 = load i32, ptr %68, align 4, !tbaa !42
  %70 = tail call ptr @strerror(i32 noundef %69) #16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 1, ptr noundef %70)
  br label %72

71:                                               ; preds = %64
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 1, i64 noundef %66)
  br label %72

72:                                               ; preds = %67, %71
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1107, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.22)
  br label %334

73:                                               ; preds = %64
  %74 = load i64, ptr %48, align 8, !tbaa !21
  %75 = and i64 %74, 2048
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %73
  %78 = load i8, ptr %65, align 8, !tbaa !63
  %79 = zext i8 %78 to i32
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1110, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.23, i32 noundef %79)
  %80 = load i64, ptr %48, align 8, !tbaa !21
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i64 [ %80, %77 ], [ %74, %73 ]
  %83 = and i64 %82, 8388608
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %85, label %123

85:                                               ; preds = %81
  %86 = and i64 %82, 2048
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %100, label %88

88:                                               ; preds = %85
  %89 = and i64 %82, 4194304
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %88
  %92 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %93 = load i64, ptr %92, align 8, !tbaa !34
  br label %98

94:                                               ; preds = %88
  %95 = tail call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 1) #16
  %96 = icmp eq i64 %95, -1
  br i1 %96, label %97, label %98, !prof !25

97:                                               ; preds = %94
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %98

98:                                               ; preds = %91, %94, %97
  %99 = phi i64 [ %93, %91 ], [ -1, %97 ], [ %95, %94 ]
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1114, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.24, i64 noundef %99)
  br label %100

100:                                              ; preds = %98, %85
  %101 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 8
  %102 = sext i8 %3 to i64
  %103 = tail call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %101, i64 noundef %102)
  %104 = icmp eq i64 %103, -1
  br i1 %104, label %105, label %109, !prof !25

105:                                              ; preds = %100
  %106 = tail call ptr @__errno_location() #19
  %107 = load i32, ptr %106, align 4, !tbaa !42
  %108 = tail call ptr @strerror(i32 noundef %107) #16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %102, ptr noundef %108)
  br label %112

109:                                              ; preds = %100
  %110 = icmp eq i64 %103, %102
  br i1 %110, label %113, label %111, !prof !5

111:                                              ; preds = %109
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %102, i64 noundef %103)
  br label %112

112:                                              ; preds = %105, %111
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1116, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.25)
  br label %334

113:                                              ; preds = %109
  %114 = load i64, ptr %101, align 8, !tbaa !46
  %115 = load i64, ptr %48, align 8, !tbaa !21
  %116 = and i64 %115, 2048
  %117 = icmp eq i64 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %113
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1120, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.26, i64 noundef %114)
  br label %119

119:                                              ; preds = %118, %113
  %120 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %121 = load i64, ptr %120, align 8, !tbaa !64
  %122 = add nsw i64 %121, %114
  store i64 %122, ptr %120, align 8, !tbaa !64
  br label %123

123:                                              ; preds = %81, %119, %43, %36
  %124 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %125 = load i64, ptr %124, align 8, !tbaa !21
  %126 = and i64 %125, 4194304
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %123
  %129 = tail call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 1) #16
  %130 = icmp eq i64 %129, -1
  br i1 %130, label %133, label %131, !prof !25

131:                                              ; preds = %128
  %132 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 5
  store i64 %129, ptr %132, align 8, !tbaa !65
  br label %139

133:                                              ; preds = %128
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %334

134:                                              ; preds = %123
  %135 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %136 = load i64, ptr %135, align 8, !tbaa !34
  %137 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 5
  store i64 %136, ptr %137, align 8, !tbaa !65
  %138 = icmp eq i64 %136, -1
  br i1 %138, label %334, label %139, !prof !25

139:                                              ; preds = %131, %134
  %140 = phi ptr [ %132, %131 ], [ %137, %134 ]
  %141 = icmp sgt i32 %2, 0
  br i1 %141, label %142, label %336

142:                                              ; preds = %139
  %143 = load ptr, ptr %12, align 8, !tbaa !52
  %144 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %145 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %146 = getelementptr inbounds %struct.stream_info, ptr %12, i64 0, i32 6
  %147 = getelementptr inbounds i8, ptr %6, i64 8
  %148 = getelementptr inbounds i8, ptr %6, i64 9
  %149 = getelementptr inbounds i8, ptr %6, i64 17
  %150 = getelementptr inbounds i8, ptr %6, i64 25
  %151 = zext i32 %2 to i64
  br label %152

152:                                              ; preds = %142, %331
  %153 = phi i64 [ 0, %142 ], [ %332, %331 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  %154 = getelementptr inbounds %struct.stream, ptr %143, i64 %153, i32 7
  store i64 %153, ptr %154, align 8, !tbaa !66
  %155 = getelementptr inbounds %struct.stream, ptr %143, i64 %153, i32 5
  store i64 %153, ptr %155, align 8, !tbaa !67
  %156 = getelementptr inbounds %struct.stream, ptr %143, i64 %153, i32 6
  store i64 %153, ptr %156, align 8, !tbaa !68
  %157 = load i64, ptr %124, align 8, !tbaa !21
  %158 = and i64 %157, 8388608
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %162, label %160

160:                                              ; preds = %152
  %161 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %6, i64 noundef 8)
  switch i64 %161, label %173 [
    i64 -1, label %169
    i64 8, label %162
  ], !prof !62

162:                                              ; preds = %152, %160
  %163 = icmp eq i64 %153, 0
  %164 = trunc i64 %153 to i32
  %165 = getelementptr inbounds %struct.stream, ptr %143, i64 %153
  %166 = getelementptr inbounds %struct.stream, ptr %143, i64 %153
  %167 = getelementptr inbounds %struct.stream, ptr %143, i64 %153
  %168 = getelementptr inbounds %struct.stream, ptr %143, i64 %153
  br label %174

169:                                              ; preds = %160
  %170 = tail call ptr @__errno_location() #19
  %171 = load i32, ptr %170, align 4, !tbaa !42
  %172 = call ptr @strerror(i32 noundef %171) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 8, ptr noundef %172)
  br label %330

173:                                              ; preds = %160
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 8, i64 noundef %161)
  br label %330

174:                                              ; preds = %162, %316
  %175 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %5, i64 noundef 1)
  switch i64 %175, label %180 [
    i64 -1, label %176
    i64 1, label %181
  ], !prof !62

176:                                              ; preds = %174
  %177 = tail call ptr @__errno_location() #19
  %178 = load i32, ptr %177, align 4, !tbaa !42
  %179 = call ptr @strerror(i32 noundef %178) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 1, ptr noundef %179)
  br label %330

180:                                              ; preds = %174
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 1, i64 noundef %175)
  br label %330

181:                                              ; preds = %174
  %182 = load i8, ptr %40, align 1, !tbaa !60
  %183 = icmp eq i8 %182, 0
  br i1 %183, label %184, label %216

184:                                              ; preds = %181
  %185 = load i8, ptr %144, align 2, !tbaa !61
  %186 = icmp slt i8 %185, 4
  br i1 %186, label %187, label %216

187:                                              ; preds = %184
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #16
  %188 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %9, i64 noundef 4)
  switch i64 %188, label %193 [
    i64 -1, label %189
    i64 4, label %194
  ], !prof !62

189:                                              ; preds = %187
  %190 = tail call ptr @__errno_location() #19
  %191 = load i32, ptr %190, align 4, !tbaa !42
  %192 = call ptr @strerror(i32 noundef %191) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %192)
  br label %208

193:                                              ; preds = %187
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %188)
  br label %208

194:                                              ; preds = %187
  %195 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %10, i64 noundef 4)
  switch i64 %195, label %200 [
    i64 -1, label %196
    i64 4, label %201
  ], !prof !62

196:                                              ; preds = %194
  %197 = tail call ptr @__errno_location() #19
  %198 = load i32, ptr %197, align 4, !tbaa !42
  %199 = call ptr @strerror(i32 noundef %198) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %199)
  br label %208

200:                                              ; preds = %194
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %195)
  br label %208

201:                                              ; preds = %194
  %202 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %11, i64 noundef 4)
  switch i64 %202, label %207 [
    i64 -1, label %203
    i64 4, label %209
  ], !prof !62

203:                                              ; preds = %201
  %204 = tail call ptr @__errno_location() #19
  %205 = load i32, ptr %204, align 4, !tbaa !42
  %206 = call ptr @strerror(i32 noundef %205) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %206)
  br label %208

207:                                              ; preds = %201
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %202)
  br label %208

208:                                              ; preds = %189, %193, %196, %200, %203, %207
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %330

209:                                              ; preds = %201
  %210 = load i32, ptr %9, align 4, !tbaa !42
  %211 = zext i32 %210 to i64
  store i64 %211, ptr %7, align 8, !tbaa !20
  %212 = load i32, ptr %10, align 4, !tbaa !42
  %213 = zext i32 %212 to i64
  store i64 %213, ptr %8, align 8, !tbaa !20
  %214 = load i32, ptr %11, align 4, !tbaa !42
  %215 = zext i32 %214 to i64
  store i64 %215, ptr %166, align 8, !tbaa !69
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #16
  br label %281

216:                                              ; preds = %184, %181
  %217 = load i64, ptr %124, align 8, !tbaa !21
  %218 = and i64 %217, 2048
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %232, label %220

220:                                              ; preds = %216
  %221 = and i64 %217, 4194304
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %225, label %223

223:                                              ; preds = %220
  %224 = load i64, ptr %145, align 8, !tbaa !34
  br label %229

225:                                              ; preds = %220
  %226 = call i64 @lseek64(i32 noundef %1, i64 noundef 0, i32 noundef 1) #16
  %227 = icmp eq i64 %226, -1
  br i1 %227, label %228, label %229, !prof !25

228:                                              ; preds = %225
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %229

229:                                              ; preds = %223, %225, %228
  %230 = phi i64 [ %224, %223 ], [ -1, %228 ], [ %226, %225 ]
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1160, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.27, i32 noundef %164, i64 noundef %230)
  %231 = load i8, ptr %40, align 1, !tbaa !60
  br label %232

232:                                              ; preds = %229, %216
  %233 = phi i8 [ %231, %229 ], [ %182, %216 ]
  %234 = icmp eq i8 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %232
  %236 = load i8, ptr %144, align 2, !tbaa !61
  %237 = icmp slt i8 %236, 6
  br i1 %237, label %245, label %238

238:                                              ; preds = %235, %232
  %239 = load i64, ptr %124, align 8, !tbaa !21
  %240 = and i64 %239, 8388608
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %238
  %243 = load i8, ptr %31, align 4, !tbaa !49
  %244 = sext i8 %243 to i32
  br label %245

245:                                              ; preds = %235, %238, %242
  %246 = phi i32 [ %244, %242 ], [ 8, %238 ], [ 8, %235 ]
  store i64 0, ptr %7, align 8, !tbaa !20
  %247 = sext i32 %246 to i64
  %248 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %7, i64 noundef %247)
  %249 = icmp eq i64 %248, -1
  br i1 %249, label %250, label %254, !prof !25

250:                                              ; preds = %245
  %251 = tail call ptr @__errno_location() #19
  %252 = load i32, ptr %251, align 4, !tbaa !42
  %253 = call ptr @strerror(i32 noundef %252) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %247, ptr noundef %253)
  br label %330

254:                                              ; preds = %245
  %255 = icmp eq i64 %248, %247
  br i1 %255, label %257, label %256, !prof !5

256:                                              ; preds = %254
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %247, i64 noundef %248)
  br label %330

257:                                              ; preds = %254
  store i64 0, ptr %8, align 8, !tbaa !20
  %258 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %8, i64 noundef %247)
  %259 = icmp eq i64 %258, -1
  br i1 %259, label %260, label %264, !prof !25

260:                                              ; preds = %257
  %261 = tail call ptr @__errno_location() #19
  %262 = load i32, ptr %261, align 4, !tbaa !42
  %263 = call ptr @strerror(i32 noundef %262) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %247, ptr noundef %263)
  br label %330

264:                                              ; preds = %257
  %265 = icmp eq i64 %258, %247
  br i1 %265, label %267, label %266, !prof !5

266:                                              ; preds = %264
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %247, i64 noundef %258)
  br label %330

267:                                              ; preds = %264
  store i64 0, ptr %165, align 8, !tbaa !20
  %268 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %165, i64 noundef %247)
  %269 = icmp eq i64 %268, -1
  br i1 %269, label %270, label %274, !prof !25

270:                                              ; preds = %267
  %271 = tail call ptr @__errno_location() #19
  %272 = load i32, ptr %271, align 4, !tbaa !42
  %273 = call ptr @strerror(i32 noundef %272) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %247, ptr noundef %273)
  br label %330

274:                                              ; preds = %267
  %275 = icmp eq i64 %268, %247
  br i1 %275, label %277, label %276, !prof !5

276:                                              ; preds = %274
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %247, i64 noundef %268)
  br label %330

277:                                              ; preds = %274
  %278 = mul nsw i32 %246, 3
  %279 = add nsw i32 %278, 1
  %280 = sext i32 %279 to i64
  br label %281

281:                                              ; preds = %277, %209
  %282 = phi i64 [ 13, %209 ], [ %280, %277 ]
  %283 = load i64, ptr %146, align 8, !tbaa !70
  %284 = add nsw i64 %283, %282
  store i64 %284, ptr %146, align 8, !tbaa !70
  %285 = load i64, ptr %124, align 8, !tbaa !21
  %286 = and i64 %285, 8388608
  %287 = icmp eq i64 %286, 0
  br i1 %287, label %300, label %288

288:                                              ; preds = %281
  %289 = load i8, ptr %5, align 1
  store i8 %289, ptr %147, align 8
  %290 = load i64, ptr %7, align 8
  store i64 %290, ptr %148, align 1
  %291 = load i64, ptr %8, align 8
  store i64 %291, ptr %149, align 1
  %292 = load i64, ptr %167, align 8
  store i64 %292, ptr %150, align 1
  %293 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef nonnull %147, i64 noundef 25, ptr noundef nonnull %6, i32 noundef 0) #16
  br i1 %293, label %294, label %330, !prof !5

294:                                              ; preds = %288
  %295 = load i8, ptr %147, align 8
  store i8 %295, ptr %5, align 1
  %296 = load i64, ptr %148, align 1
  store i64 %296, ptr %7, align 8
  %297 = load i64, ptr %149, align 1
  store i64 %297, ptr %8, align 8
  %298 = load i64, ptr %150, align 1
  store i64 %298, ptr %167, align 8
  %299 = add nsw i64 %284, 8
  store i64 %299, ptr %146, align 8, !tbaa !70
  br label %303

300:                                              ; preds = %281
  %301 = load i64, ptr %8, align 8, !tbaa !20
  %302 = load i8, ptr %5, align 1, !tbaa !39
  br label %303

303:                                              ; preds = %300, %294
  %304 = phi i8 [ %302, %300 ], [ %295, %294 ]
  %305 = phi i64 [ %301, %300 ], [ %297, %294 ]
  %306 = load i64, ptr %7, align 8, !tbaa !20
  %307 = icmp eq i8 %304, 3
  %308 = icmp eq i64 %306, 0
  %309 = select i1 %307, i1 %308, i1 false
  %310 = icmp eq i64 %305, 0
  %311 = select i1 %309, i1 %310, i1 false
  br i1 %311, label %312, label %319

312:                                              ; preds = %303
  %313 = load i64, ptr %168, align 8, !tbaa !69
  %314 = icmp eq i64 %313, 0
  %315 = select i1 %314, i1 %163, i1 false
  br i1 %315, label %316, label %331, !prof !25

316:                                              ; preds = %312
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1187, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.28)
  %317 = load i64, ptr %140, align 8, !tbaa !65
  %318 = add nsw i64 %317, %282
  store i64 %318, ptr %140, align 8, !tbaa !65
  br label %174

319:                                              ; preds = %303
  br i1 %307, label %326, label %320, !prof !5

320:                                              ; preds = %319
  %321 = zext i8 %304 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1193, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.29, i32 noundef %321)
  %322 = load i64, ptr %124, align 8, !tbaa !21
  %323 = and i64 %322, 8388608
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %330, label %325

325:                                              ; preds = %320
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1195, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.30)
  br label %330

326:                                              ; preds = %319
  br i1 %308, label %328, label %327, !prof !5

327:                                              ; preds = %326
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1199, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.31, i64 noundef %306, i64 noundef %305)
  br label %330

328:                                              ; preds = %326
  br i1 %310, label %331, label %329, !prof !5

329:                                              ; preds = %328
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1203, ptr nonnull poison, ptr noundef nonnull @__func__.open_stream_in, ptr noundef nonnull @.str.32, i64 noundef %305)
  br label %330

330:                                              ; preds = %288, %327, %329, %325, %320, %208, %169, %173, %176, %180, %250, %256, %260, %266, %270, %276
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  br label %334

331:                                              ; preds = %312, %328
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #16
  %332 = add nuw nsw i64 %153, 1
  %333 = icmp eq i64 %332, %151
  br i1 %333, label %336, label %152, !llvm.loop !71

334:                                              ; preds = %330, %133, %72, %112, %134
  %335 = load ptr, ptr %12, align 8, !tbaa !52
  call void @free(ptr noundef %335) #16
  call void @free(ptr noundef nonnull %12) #16
  br label %336

336:                                              ; preds = %331, %139, %14, %4, %334, %35, %26
  %337 = phi ptr [ null, %26 ], [ null, %35 ], [ null, %334 ], [ null, %4 ], [ null, %14 ], [ %12, %139 ], [ %12, %331 ]
  ret ptr %337
}

; Function Attrs: nounwind uwtable
define dso_local void @flush_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
  tail call fastcc void @clear_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef 1)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @clear_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr @cthread, align 8, !tbaa !17
  %6 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds %struct.compress_thread, ptr %5, i64 %7, i32 4
  %9 = tail call i32 @sem_wait(ptr noundef nonnull %8) #16
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %14, label %11, !prof !5

11:                                               ; preds = %4
  %12 = tail call ptr @__errno_location() #19
  %13 = load i32, ptr %12, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 167, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.40, i32 noundef %13, ptr noundef nonnull %8)
  br label %14

14:                                               ; preds = %4, %11
  %15 = load ptr, ptr @cthread, align 8, !tbaa !17
  %16 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.compress_thread, ptr %15, i64 %17, i32 5
  store ptr %1, ptr %18, align 8, !tbaa !72
  %19 = getelementptr inbounds %struct.compress_thread, ptr %15, i64 %17, i32 6
  store i32 %2, ptr %19, align 8, !tbaa !74
  %20 = load ptr, ptr %1, align 8, !tbaa !52
  %21 = sext i32 %2 to i64
  %22 = getelementptr inbounds %struct.stream, ptr %20, i64 %21, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !57
  %24 = getelementptr inbounds %struct.compress_thread, ptr %15, i64 %17
  store ptr %23, ptr %24, align 8, !tbaa !75
  %25 = getelementptr inbounds %struct.stream, ptr %20, i64 %21, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !76
  %27 = getelementptr inbounds %struct.compress_thread, ptr %15, i64 %17, i32 2
  store i64 %26, ptr %27, align 8, !tbaa !77
  %28 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %29 = load i64, ptr %28, align 8, !tbaa !21
  %30 = and i64 %29, 2048
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %14
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1472, ptr nonnull poison, ptr noundef nonnull @__func__.clear_buffer, ptr noundef nonnull @.str.43, i32 noundef %16, i64 noundef %26, i32 noundef %2)
  br label %33

33:                                               ; preds = %32, %14
  %34 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41, !prof !25

36:                                               ; preds = %33
  %37 = load ptr, ptr @cthread, align 8, !tbaa !17
  %38 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.compress_thread, ptr %37, i64 %39, i32 4
  tail call fastcc void @cksem_post(ptr noundef nonnull %0, ptr noundef nonnull %40)
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1477, ptr nonnull poison, ptr noundef nonnull @__func__.clear_buffer, ptr noundef nonnull @.str.44)
  br label %41

41:                                               ; preds = %36, %33
  %42 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  store i32 %42, ptr %34, align 8, !tbaa !78
  %43 = getelementptr inbounds %struct.stream_thread_struct, ptr %34, i64 0, i32 1
  store ptr %0, ptr %43, align 8, !tbaa !80
  %44 = load ptr, ptr @threads, align 8, !tbaa !17
  %45 = sext i32 %42 to i64
  %46 = getelementptr inbounds i64, ptr %44, i64 %45
  %47 = tail call i32 @pthread_create(ptr noundef %46, ptr noundef null, ptr noundef nonnull @compthread, ptr noundef nonnull %34) #16
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %50, label %49, !prof !5

49:                                               ; preds = %41
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 134, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.create_pthread, ptr noundef nonnull @.str.4)
  br label %59

50:                                               ; preds = %41
  %51 = load ptr, ptr @threads, align 8, !tbaa !17
  %52 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, ptr %51, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !20
  %56 = tail call i32 @pthread_detach(i64 noundef %55) #16
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %60, label %58, !prof !5

58:                                               ; preds = %50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 141, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.detach_pthread, ptr noundef nonnull @.str.5)
  br label %59

59:                                               ; preds = %58, %49
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1483, ptr nonnull poison, ptr noundef nonnull @__func__.clear_buffer, ptr noundef nonnull @.str.45)
  br label %60

60:                                               ; preds = %50, %59
  %61 = icmp eq i32 %3, 0
  br i1 %61, label %74, label %62

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !48
  %65 = tail call noalias ptr @malloc(i64 noundef %64) #20
  %66 = load ptr, ptr %1, align 8, !tbaa !52
  %67 = getelementptr inbounds %struct.stream, ptr %66, i64 %21, i32 1
  store ptr %65, ptr %67, align 8, !tbaa !57
  %68 = icmp eq ptr %65, null
  br i1 %68, label %69, label %71, !prof !25

69:                                               ; preds = %62
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1490, ptr nonnull poison, ptr noundef nonnull @__func__.clear_buffer, ptr noundef nonnull @.str.46, i64 noundef %64)
  %70 = load ptr, ptr %1, align 8, !tbaa !52
  br label %71

71:                                               ; preds = %69, %62
  %72 = phi ptr [ %70, %69 ], [ %66, %62 ]
  %73 = getelementptr inbounds %struct.stream, ptr %72, i64 %21, i32 2
  store i64 0, ptr %73, align 8, !tbaa !76
  br label %74

74:                                               ; preds = %71, %60
  %75 = load i32, ptr @clear_buffer.i, align 4, !tbaa !42
  %76 = add nsw i32 %75, 1
  %77 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %78 = load i32, ptr %77, align 8, !tbaa !41
  %79 = icmp eq i32 %76, %78
  %80 = select i1 %79, i32 0, i32 %76
  store i32 %80, ptr @clear_buffer.i, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @write_stream(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = icmp eq i64 %4, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 3
  %9 = sext i32 %2 to i64
  br label %10

10:                                               ; preds = %7, %31
  %11 = phi ptr [ %3, %7 ], [ %26, %31 ]
  %12 = phi i64 [ %4, %7 ], [ %27, %31 ]
  %13 = load i64, ptr %8, align 8, !tbaa !48
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = getelementptr inbounds %struct.stream, ptr %14, i64 %9, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !76
  %17 = sub nsw i64 %13, %16
  %18 = tail call i64 @llvm.smin.i64(i64 %17, i64 %12)
  %19 = getelementptr inbounds %struct.stream, ptr %14, i64 %9, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !57
  %21 = getelementptr inbounds i8, ptr %20, i64 %16
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %21, ptr align 1 %11, i64 %18, i1 false)
  %22 = load ptr, ptr %1, align 8, !tbaa !52
  %23 = getelementptr inbounds %struct.stream, ptr %22, i64 %9, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !76
  %25 = add nsw i64 %24, %18
  store i64 %25, ptr %23, align 8, !tbaa !76
  %26 = getelementptr inbounds i8, ptr %11, i64 %18
  %27 = sub nsw i64 %12, %18
  %28 = load i64, ptr %8, align 8, !tbaa !48
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  tail call fastcc void @clear_buffer(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef 1)
  br label %31

31:                                               ; preds = %30, %10
  %32 = icmp eq i64 %27, 0
  br i1 %32, label %33, label %10, !llvm.loop !81

33:                                               ; preds = %31, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i64 @read_stream(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca [33 x i8], align 16
  %10 = alloca [8 x i8], align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = icmp eq i64 %4, 0
  br i1 %15, label %424, label %16

16:                                               ; preds = %5
  %17 = sext i32 %2 to i64
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %19 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 2
  %20 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 6
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %22 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %24 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 12
  %25 = getelementptr inbounds i8, ptr %9, i64 8
  %26 = getelementptr inbounds i8, ptr %9, i64 9
  %27 = getelementptr inbounds i8, ptr %9, i64 17
  %28 = getelementptr inbounds i8, ptr %9, i64 25
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %30 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %31 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 7
  %32 = load ptr, ptr %1, align 8, !tbaa !52
  br label %33

33:                                               ; preds = %16, %421
  %34 = phi ptr [ %32, %16 ], [ %422, %421 ]
  %35 = phi i64 [ 0, %16 ], [ %64, %421 ]
  %36 = phi ptr [ %3, %16 ], [ %65, %421 ]
  %37 = phi i64 [ %4, %16 ], [ %66, %421 ]
  %38 = getelementptr inbounds %struct.stream, ptr %34, i64 %17, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = getelementptr inbounds %struct.stream, ptr %34, i64 %17, i32 3
  %41 = load i64, ptr %40, align 8, !tbaa !82
  %42 = sub nsw i64 %39, %41
  %43 = call i64 @llvm.smin.i64(i64 %42, i64 %37)
  %44 = icmp sgt i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %33
  %46 = getelementptr inbounds %struct.stream, ptr %34, i64 %17, i32 1
  %47 = load ptr, ptr %46, align 8, !tbaa !57
  %48 = getelementptr inbounds i8, ptr %47, i64 %41
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %36, ptr align 1 %48, i64 %43, i1 false)
  %49 = load ptr, ptr %1, align 8, !tbaa !52
  %50 = getelementptr inbounds %struct.stream, ptr %49, i64 %17, i32 3
  %51 = load i64, ptr %50, align 8, !tbaa !82
  %52 = add nsw i64 %51, %43
  store i64 %52, ptr %50, align 8, !tbaa !82
  %53 = sub nsw i64 %37, %43
  %54 = add nsw i64 %43, %35
  %55 = icmp eq i64 %53, 0
  br i1 %55, label %424, label %56

56:                                               ; preds = %45
  %57 = getelementptr inbounds i8, ptr %36, i64 %43
  %58 = getelementptr inbounds %struct.stream, ptr %49, i64 %17, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !76
  br label %60

60:                                               ; preds = %33, %56
  %61 = phi i64 [ %59, %56 ], [ %39, %33 ]
  %62 = phi i64 [ %52, %56 ], [ %41, %33 ]
  %63 = phi ptr [ %49, %56 ], [ %34, %33 ]
  %64 = phi i64 [ %54, %56 ], [ %35, %33 ]
  %65 = phi ptr [ %57, %56 ], [ %36, %33 ]
  %66 = phi i64 [ %53, %56 ], [ %37, %33 ]
  %67 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 3
  %68 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 2
  %69 = icmp eq i64 %62, %61
  br i1 %69, label %70, label %421

70:                                               ; preds = %60
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %9) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #16
  %71 = getelementptr inbounds %struct.stream, ptr %63, i64 %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #16
  %72 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !57
  %74 = icmp eq ptr %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  call void @free(ptr noundef nonnull %73) #16
  store ptr null, ptr %72, align 8, !tbaa !57
  br label %76

76:                                               ; preds = %75, %70
  %77 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 4
  %78 = load i8, ptr %77, align 8, !tbaa !83
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %80, label %364

80:                                               ; preds = %76
  %81 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 5
  %82 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 7
  %83 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 8
  %84 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 6
  %85 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %86 = load i64, ptr %81, align 8, !tbaa !67
  %87 = getelementptr inbounds %struct.uncomp_thread, ptr %85, i64 %86, i32 5
  %88 = load i32, ptr %87, align 4, !tbaa !84
  br label %89

89:                                               ; preds = %360, %80
  %90 = phi i32 [ %88, %80 ], [ 0, %360 ]
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %93, label %92, !prof !5

92:                                               ; preds = %89
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 1579, ptr nonnull poison, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.95)
  br label %396

93:                                               ; preds = %89
  %94 = load i64, ptr %71, align 8, !tbaa !69
  %95 = call fastcc i32 @read_seekto(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %94)
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %396, !prof !5

97:                                               ; preds = %93
  %98 = load i64, ptr %18, align 8, !tbaa !21
  %99 = and i64 %98, 8388608
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %97
  %102 = load i32, ptr %19, align 4, !tbaa !51
  %103 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %102, ptr noundef nonnull %9, i64 noundef 8)
  switch i64 %103, label %108 [
    i64 -1, label %104
    i64 8, label %109
  ], !prof !62

104:                                              ; preds = %101
  %105 = tail call ptr @__errno_location() #19
  %106 = load i32, ptr %105, align 4, !tbaa !42
  %107 = call ptr @strerror(i32 noundef %106) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 8, ptr noundef %107)
  br label %396

108:                                              ; preds = %101
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 8, i64 noundef %103)
  br label %396

109:                                              ; preds = %101
  %110 = load i64, ptr %20, align 8, !tbaa !70
  %111 = add nsw i64 %110, 8
  store i64 %111, ptr %20, align 8, !tbaa !70
  br label %112

112:                                              ; preds = %109, %97
  %113 = load i32, ptr %19, align 4, !tbaa !51
  %114 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %113, ptr noundef nonnull %11, i64 noundef 1)
  switch i64 %114, label %119 [
    i64 -1, label %115
    i64 1, label %120
  ], !prof !62

115:                                              ; preds = %112
  %116 = tail call ptr @__errno_location() #19
  %117 = load i32, ptr %116, align 4, !tbaa !42
  %118 = call ptr @strerror(i32 noundef %117) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 1, ptr noundef %118)
  br label %396

119:                                              ; preds = %112
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 1, i64 noundef %114)
  br label %396

120:                                              ; preds = %112
  %121 = load i8, ptr %21, align 1, !tbaa !60
  %122 = icmp eq i8 %121, 0
  br i1 %122, label %123, label %158

123:                                              ; preds = %120
  %124 = load i8, ptr %22, align 2, !tbaa !61
  %125 = icmp slt i8 %124, 4
  br i1 %125, label %126, label %158

126:                                              ; preds = %123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #16
  %127 = load i32, ptr %19, align 4, !tbaa !51
  %128 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %127, ptr noundef nonnull %12, i64 noundef 4)
  switch i64 %128, label %133 [
    i64 -1, label %129
    i64 4, label %134
  ], !prof !62

129:                                              ; preds = %126
  %130 = tail call ptr @__errno_location() #19
  %131 = load i32, ptr %130, align 4, !tbaa !42
  %132 = call ptr @strerror(i32 noundef %131) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %132)
  br label %150

133:                                              ; preds = %126
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %128)
  br label %150

134:                                              ; preds = %126
  %135 = load i32, ptr %19, align 4, !tbaa !51
  %136 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %135, ptr noundef nonnull %13, i64 noundef 4)
  switch i64 %136, label %141 [
    i64 -1, label %137
    i64 4, label %142
  ], !prof !62

137:                                              ; preds = %134
  %138 = tail call ptr @__errno_location() #19
  %139 = load i32, ptr %138, align 4, !tbaa !42
  %140 = call ptr @strerror(i32 noundef %139) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %140)
  br label %150

141:                                              ; preds = %134
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %136)
  br label %150

142:                                              ; preds = %134
  %143 = load i32, ptr %19, align 4, !tbaa !51
  %144 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %143, ptr noundef nonnull %14, i64 noundef 4)
  switch i64 %144, label %149 [
    i64 -1, label %145
    i64 4, label %151
  ], !prof !62

145:                                              ; preds = %142
  %146 = tail call ptr @__errno_location() #19
  %147 = load i32, ptr %146, align 4, !tbaa !42
  %148 = call ptr @strerror(i32 noundef %147) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 4, ptr noundef %148)
  br label %150

149:                                              ; preds = %142
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 4, i64 noundef %144)
  br label %150

150:                                              ; preds = %149, %145, %141, %137, %133, %129
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br label %396

151:                                              ; preds = %142
  %152 = load i32, ptr %12, align 4, !tbaa !42
  %153 = zext i32 %152 to i64
  store i64 %153, ptr %7, align 8, !tbaa !20
  %154 = load i32, ptr %13, align 4, !tbaa !42
  %155 = zext i32 %154 to i64
  store i64 %155, ptr %6, align 8, !tbaa !20
  %156 = load i32, ptr %14, align 4, !tbaa !42
  %157 = zext i32 %156 to i64
  store i64 %157, ptr %8, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #16
  br label %227

158:                                              ; preds = %123, %120
  %159 = load i64, ptr %18, align 8, !tbaa !21
  %160 = and i64 %159, 2048
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %175, label %162

162:                                              ; preds = %158
  %163 = and i64 %159, 4194304
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %162
  %166 = load i64, ptr %23, align 8, !tbaa !34
  br label %172

167:                                              ; preds = %162
  %168 = load i32, ptr %19, align 4, !tbaa !51
  %169 = call i64 @lseek64(i32 noundef %168, i64 noundef 0, i32 noundef 1) #16
  %170 = icmp eq i64 %169, -1
  br i1 %170, label %171, label %172, !prof !25

171:                                              ; preds = %167
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %172

172:                                              ; preds = %171, %167, %165
  %173 = phi i64 [ %166, %165 ], [ -1, %171 ], [ %169, %167 ]
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1610, ptr nonnull poison, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.96, i64 noundef %173)
  %174 = load i8, ptr %21, align 1, !tbaa !60
  br label %175

175:                                              ; preds = %172, %158
  %176 = phi i8 [ %174, %172 ], [ %121, %158 ]
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %178, label %181

178:                                              ; preds = %175
  %179 = load i8, ptr %22, align 2, !tbaa !61
  %180 = icmp slt i8 %179, 6
  br i1 %180, label %188, label %181

181:                                              ; preds = %178, %175
  %182 = load i64, ptr %18, align 8, !tbaa !21
  %183 = and i64 %182, 8388608
  %184 = icmp eq i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %181
  %186 = load i8, ptr %24, align 4, !tbaa !49
  %187 = sext i8 %186 to i32
  br label %188

188:                                              ; preds = %185, %181, %178
  %189 = phi i32 [ %187, %185 ], [ 8, %181 ], [ 8, %178 ]
  %190 = load i32, ptr %19, align 4, !tbaa !51
  store i64 0, ptr %7, align 8, !tbaa !20
  %191 = sext i32 %189 to i64
  %192 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %190, ptr noundef nonnull %7, i64 noundef %191)
  %193 = icmp eq i64 %192, -1
  br i1 %193, label %194, label %198, !prof !25

194:                                              ; preds = %188
  %195 = tail call ptr @__errno_location() #19
  %196 = load i32, ptr %195, align 4, !tbaa !42
  %197 = call ptr @strerror(i32 noundef %196) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %191, ptr noundef %197)
  br label %396

198:                                              ; preds = %188
  %199 = icmp eq i64 %192, %191
  br i1 %199, label %201, label %200, !prof !5

200:                                              ; preds = %198
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %191, i64 noundef %192)
  br label %396

201:                                              ; preds = %198
  %202 = load i32, ptr %19, align 4, !tbaa !51
  store i64 0, ptr %6, align 8, !tbaa !20
  %203 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %202, ptr noundef nonnull %6, i64 noundef %191)
  %204 = icmp eq i64 %203, -1
  br i1 %204, label %205, label %209, !prof !25

205:                                              ; preds = %201
  %206 = tail call ptr @__errno_location() #19
  %207 = load i32, ptr %206, align 4, !tbaa !42
  %208 = call ptr @strerror(i32 noundef %207) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %191, ptr noundef %208)
  br label %396

209:                                              ; preds = %201
  %210 = icmp eq i64 %203, %191
  br i1 %210, label %212, label %211, !prof !5

211:                                              ; preds = %209
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %191, i64 noundef %203)
  br label %396

212:                                              ; preds = %209
  %213 = load i32, ptr %19, align 4, !tbaa !51
  store i64 0, ptr %8, align 8, !tbaa !20
  %214 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %213, ptr noundef nonnull %8, i64 noundef %191)
  %215 = icmp eq i64 %214, -1
  br i1 %215, label %216, label %220, !prof !25

216:                                              ; preds = %212
  %217 = tail call ptr @__errno_location() #19
  %218 = load i32, ptr %217, align 4, !tbaa !42
  %219 = call ptr @strerror(i32 noundef %218) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %191, ptr noundef %219)
  br label %396

220:                                              ; preds = %212
  %221 = icmp eq i64 %214, %191
  br i1 %221, label %223, label %222, !prof !5

222:                                              ; preds = %220
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %191, i64 noundef %214)
  br label %396

223:                                              ; preds = %220
  %224 = mul nsw i32 %189, 3
  %225 = add nsw i32 %224, 1
  %226 = sext i32 %225 to i64
  br label %227

227:                                              ; preds = %223, %151
  %228 = phi i64 [ 13, %151 ], [ %226, %223 ]
  %229 = load i64, ptr %20, align 8, !tbaa !70
  %230 = add nsw i64 %229, %228
  store i64 %230, ptr %20, align 8, !tbaa !70
  %231 = load i64, ptr %18, align 8, !tbaa !21
  %232 = and i64 %231, 8388608
  %233 = icmp eq i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %227
  %235 = load i64, ptr %7, align 8, !tbaa !20
  %236 = load i64, ptr %6, align 8, !tbaa !20
  %237 = load i64, ptr %8, align 8, !tbaa !20
  br label %260

238:                                              ; preds = %227
  %239 = load i8, ptr %11, align 1
  store i8 %239, ptr %25, align 8
  %240 = load i64, ptr %7, align 8
  store i64 %240, ptr %26, align 1
  %241 = load i64, ptr %6, align 8
  store i64 %241, ptr %27, align 1
  %242 = load i64, ptr %8, align 8
  store i64 %242, ptr %28, align 1
  %243 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef nonnull %25, i64 noundef 25, ptr noundef nonnull %9, i32 noundef 0) #16
  br i1 %243, label %244, label %396, !prof !5

244:                                              ; preds = %238
  %245 = load i8, ptr %25, align 8
  store i8 %245, ptr %11, align 1
  %246 = load i64, ptr %26, align 1
  store i64 %246, ptr %7, align 8
  %247 = load i64, ptr %27, align 1
  store i64 %247, ptr %6, align 8
  %248 = load i64, ptr %28, align 1
  store i64 %248, ptr %8, align 8
  %249 = load i32, ptr %19, align 4, !tbaa !51
  %250 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %249, ptr noundef nonnull %10, i64 noundef 8)
  switch i64 %250, label %255 [
    i64 -1, label %251
    i64 8, label %256
  ], !prof !62

251:                                              ; preds = %244
  %252 = tail call ptr @__errno_location() #19
  %253 = load i32, ptr %252, align 4, !tbaa !42
  %254 = call ptr @strerror(i32 noundef %253) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 8, ptr noundef %254)
  br label %396

255:                                              ; preds = %244
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 8, i64 noundef %250)
  br label %396

256:                                              ; preds = %244
  %257 = load i64, ptr %20, align 8, !tbaa !70
  %258 = add nsw i64 %257, 8
  store i64 %258, ptr %20, align 8, !tbaa !70
  %259 = load i64, ptr %18, align 8, !tbaa !21
  br label %260

260:                                              ; preds = %256, %234
  %261 = phi i64 [ %230, %234 ], [ %258, %256 ]
  %262 = phi i64 [ %231, %234 ], [ %259, %256 ]
  %263 = phi i64 [ %237, %234 ], [ %248, %256 ]
  %264 = phi i64 [ %236, %234 ], [ %247, %256 ]
  %265 = phi i64 [ %235, %234 ], [ %246, %256 ]
  %266 = and i64 %262, 2048
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %271, label %268

268:                                              ; preds = %260
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1635, ptr nonnull poison, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.97, i32 noundef %2, i64 noundef %265, i64 noundef %264, i64 noundef %263)
  %269 = load i64, ptr %18, align 8, !tbaa !21
  %270 = load i64, ptr %20, align 8, !tbaa !70
  br label %271

271:                                              ; preds = %268, %260
  %272 = phi i64 [ %270, %268 ], [ %261, %260 ]
  %273 = phi i64 [ %269, %268 ], [ %262, %260 ]
  %274 = lshr i64 %273, 19
  %275 = and i64 %274, 16
  %276 = call i64 @llvm.smax.i64(i64 %265, i64 %275)
  %277 = add nsw i64 %276, %272
  store i64 %277, ptr %20, align 8, !tbaa !70
  %278 = load i32, ptr %29, align 4, !tbaa !22
  %279 = call i32 @fsync(i32 noundef %278) #16
  %280 = load i64, ptr %30, align 8, !tbaa !86
  %281 = icmp sgt i64 %264, %280
  br i1 %281, label %282, label %283, !prof !25

282:                                              ; preds = %271
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1642, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.98, i64 noundef %264)
  br label %396

283:                                              ; preds = %271
  %284 = load i64, ptr %18, align 8, !tbaa !21
  %285 = lshr i64 %284, 19
  %286 = and i64 %285, 16
  %287 = call i64 @llvm.smax.i64(i64 %264, i64 %286)
  %288 = call noalias ptr @malloc(i64 noundef %287) #20
  %289 = icmp ne i64 %264, 0
  %290 = icmp eq ptr %288, null
  %291 = and i1 %289, %290
  br i1 %291, label %292, label %293, !prof !25

292:                                              ; preds = %283
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1645, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.99, i64 noundef %264)
  br label %396

293:                                              ; preds = %283
  %294 = load i64, ptr %31, align 8, !tbaa !87
  %295 = add nsw i64 %294, %264
  store i64 %295, ptr %31, align 8, !tbaa !87
  %296 = load i32, ptr %19, align 4, !tbaa !51
  %297 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %296, ptr noundef %288, i64 noundef %276)
  %298 = icmp eq i64 %297, -1
  br i1 %298, label %299, label %303, !prof !25

299:                                              ; preds = %293
  %300 = tail call ptr @__errno_location() #19
  %301 = load i32, ptr %300, align 4, !tbaa !42
  %302 = call ptr @strerror(i32 noundef %301) #16
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef %276, ptr noundef %302)
  br label %396

303:                                              ; preds = %293
  %304 = icmp eq i64 %297, %276
  br i1 %304, label %306, label %305, !prof !5

305:                                              ; preds = %303
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef %276, i64 noundef %297)
  br label %396

306:                                              ; preds = %303
  %307 = load i64, ptr %18, align 8, !tbaa !21
  %308 = and i64 %307, 8388608
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %314, label %310

310:                                              ; preds = %306
  %311 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef %288, i64 noundef %276, ptr noundef nonnull %10, i32 noundef 0) #16
  br i1 %311, label %312, label %396, !prof !5

312:                                              ; preds = %310
  %313 = load i64, ptr %18, align 8, !tbaa !21
  br label %314

314:                                              ; preds = %312, %306
  %315 = phi i64 [ %313, %312 ], [ %307, %306 ]
  %316 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %317 = load i64, ptr %81, align 8, !tbaa !67
  %318 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317
  store ptr %288, ptr %318, align 8, !tbaa !88
  %319 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317, i32 2
  store i64 %265, ptr %319, align 8, !tbaa !89
  %320 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317, i32 1
  store i64 %264, ptr %320, align 8, !tbaa !90
  %321 = load i8, ptr %11, align 1, !tbaa !39
  %322 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317, i32 4
  store i8 %321, ptr %322, align 8, !tbaa !91
  %323 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317, i32 6
  store i32 %2, ptr %323, align 8, !tbaa !92
  store i64 %263, ptr %71, align 8, !tbaa !69
  %324 = getelementptr inbounds %struct.uncomp_thread, ptr %316, i64 %317, i32 5
  store i32 1, ptr %324, align 4, !tbaa !84
  %325 = and i64 %315, 2048
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %328, label %327

327:                                              ; preds = %314
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1666, ptr nonnull poison, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.100, i64 noundef %317, i64 noundef %276, i32 noundef %2)
  br label %328

328:                                              ; preds = %327, %314
  %329 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #20
  %330 = icmp eq ptr %329, null
  br i1 %330, label %331, label %332, !prof !25

331:                                              ; preds = %328
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1670, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.101)
  br label %396

332:                                              ; preds = %328
  %333 = load i64, ptr %81, align 8, !tbaa !67
  %334 = trunc i64 %333 to i32
  store i32 %334, ptr %329, align 8, !tbaa !78
  %335 = getelementptr inbounds %struct.stream_thread_struct, ptr %329, i64 0, i32 1
  store ptr %0, ptr %335, align 8, !tbaa !80
  %336 = load ptr, ptr @threads, align 8, !tbaa !17
  %337 = getelementptr inbounds i64, ptr %336, i64 %333
  %338 = call i32 @pthread_create(ptr noundef %337, ptr noundef null, ptr noundef nonnull @ucompthread, ptr noundef nonnull %329) #16
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %341, label %340, !prof !5

340:                                              ; preds = %332
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 134, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.create_pthread, ptr noundef nonnull @.str.4)
  call void @free(ptr noundef nonnull %329) #16
  br label %396

341:                                              ; preds = %332
  %342 = load i64, ptr %81, align 8, !tbaa !67
  %343 = add nsw i64 %342, 1
  %344 = load i64, ptr %82, align 8, !tbaa !66
  %345 = load i32, ptr %83, align 8, !tbaa !59
  %346 = sext i32 %345 to i64
  %347 = add nsw i64 %344, %346
  %348 = icmp eq i64 %343, %347
  %349 = select i1 %348, i64 %344, i64 %343
  store i64 %349, ptr %81, align 8
  %350 = icmp eq i64 %263, 0
  br i1 %350, label %351, label %352

351:                                              ; preds = %341
  store i8 1, ptr %77, align 8, !tbaa !83
  br label %364

352:                                              ; preds = %341
  %353 = load i64, ptr %84, align 8, !tbaa !68
  %354 = icmp eq i64 %349, %353
  br i1 %354, label %364, label %355

355:                                              ; preds = %352
  %356 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %357 = getelementptr inbounds %struct.uncomp_thread, ptr %356, i64 %349, i32 5
  %358 = load i32, ptr %357, align 4, !tbaa !84
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %364

360:                                              ; preds = %355
  %361 = load i64, ptr %31, align 8, !tbaa !87
  %362 = load i64, ptr %30, align 8, !tbaa !86
  %363 = icmp slt i64 %361, %362
  br i1 %363, label %89, label %364

364:                                              ; preds = %360, %355, %352, %351, %76
  %365 = call i32 @pthread_mutex_lock(ptr noundef nonnull @output_lock) #16
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %368, label %367, !prof !5

367:                                              ; preds = %364
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %368

368:                                              ; preds = %367, %364
  %369 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 6
  %370 = load i64, ptr %369, align 8, !tbaa !68
  store i64 %370, ptr @output_thread, align 8, !tbaa !20
  %371 = call i32 @pthread_cond_broadcast(ptr noundef nonnull @output_cond) #16
  %372 = icmp eq i32 %371, 0
  br i1 %372, label %374, label %373, !prof !5

373:                                              ; preds = %368
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 126, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cond_broadcast, ptr noundef nonnull @.str.94)
  br label %374

374:                                              ; preds = %373, %368
  %375 = call i32 @pthread_mutex_unlock(ptr noundef nonnull @output_lock) #16
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %378, label %377, !prof !5

377:                                              ; preds = %374
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %378

378:                                              ; preds = %377, %374
  %379 = load ptr, ptr @threads, align 8, !tbaa !17
  %380 = load i64, ptr %369, align 8, !tbaa !68
  %381 = getelementptr inbounds i64, ptr %379, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !20
  %383 = call i32 @pthread_join(i64 noundef %382, ptr noundef null) #16
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %386, label %385

385:                                              ; preds = %378
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 148, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.join_pthread, ptr noundef nonnull @.str.6)
  br label %396

386:                                              ; preds = %378
  %387 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %388 = load i64, ptr %369, align 8, !tbaa !68
  %389 = getelementptr inbounds %struct.uncomp_thread, ptr %387, i64 %388, i32 5
  store i32 0, ptr %389, align 4, !tbaa !84
  %390 = load i64, ptr %18, align 8, !tbaa !21
  %391 = and i64 %390, 2048
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %397, label %393

393:                                              ; preds = %386
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1701, ptr nonnull poison, ptr noundef nonnull @__func__.fill_buffer, ptr noundef nonnull @.str.102, i64 noundef %388)
  %394 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %395 = load i64, ptr %369, align 8, !tbaa !68
  br label %397

396:                                              ; preds = %238, %310, %93, %305, %299, %255, %251, %222, %216, %211, %205, %200, %194, %119, %115, %108, %104, %150, %385, %340, %331, %292, %282, %92
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %424

397:                                              ; preds = %393, %386
  %398 = phi i64 [ %395, %393 ], [ %388, %386 ]
  %399 = phi ptr [ %394, %393 ], [ %387, %386 ]
  %400 = getelementptr inbounds %struct.uncomp_thread, ptr %399, i64 %398
  %401 = load ptr, ptr %400, align 8, !tbaa !88
  store ptr %401, ptr %72, align 8, !tbaa !57
  %402 = getelementptr inbounds %struct.uncomp_thread, ptr %399, i64 %398, i32 1
  %403 = load i64, ptr %402, align 8, !tbaa !90
  store i64 %403, ptr %68, align 8, !tbaa !76
  %404 = load i64, ptr %31, align 8, !tbaa !87
  %405 = sub nsw i64 %404, %403
  store i64 %405, ptr %31, align 8, !tbaa !87
  store i64 0, ptr %67, align 8, !tbaa !82
  %406 = add nsw i64 %398, 1
  %407 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 7
  %408 = load i64, ptr %407, align 8, !tbaa !66
  %409 = getelementptr inbounds %struct.stream, ptr %63, i64 %17, i32 8
  %410 = load i32, ptr %409, align 8, !tbaa !59
  %411 = sext i32 %410 to i64
  %412 = add nsw i64 %408, %411
  %413 = icmp eq i64 %406, %412
  %414 = select i1 %413, i64 %408, i64 %406
  store i64 %414, ptr %369, align 8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #16
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %9) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  %415 = load ptr, ptr %1, align 8, !tbaa !52
  %416 = getelementptr inbounds %struct.stream, ptr %415, i64 %17, i32 3
  %417 = load i64, ptr %416, align 8, !tbaa !82
  %418 = getelementptr inbounds %struct.stream, ptr %415, i64 %17, i32 2
  %419 = load i64, ptr %418, align 8, !tbaa !76
  %420 = icmp eq i64 %417, %419
  br i1 %420, label %424, label %421

421:                                              ; preds = %60, %397
  %422 = phi ptr [ %415, %397 ], [ %63, %60 ]
  %423 = icmp eq i64 %66, 0
  br i1 %423, label %424, label %33

424:                                              ; preds = %45, %421, %397, %5, %396
  %425 = phi i64 [ -1, %396 ], [ 0, %5 ], [ %54, %45 ], [ %64, %421 ], [ %64, %397 ]
  ret i64 %425
}

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream_out(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 1
  %4 = load i8, ptr %3, align 8, !tbaa !50
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %2, %6
  %7 = phi i32 [ %8, %6 ], [ 0, %2 ]
  tail call fastcc void @clear_buffer(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %7, i32 noundef 0)
  %8 = add nuw nsw i32 %7, 1
  %9 = load i8, ptr %3, align 8, !tbaa !50
  %10 = zext i8 %9 to i32
  %11 = icmp ult i32 %8, %10
  br i1 %11, label %6, label %12, !llvm.loop !93

12:                                               ; preds = %6, %2
  %13 = phi i8 [ 0, %2 ], [ %9, %6 ]
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %15 = load i64, ptr %14, align 8, !tbaa !21
  %16 = and i64 %15, 8388608
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %65, label %18

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  %20 = load i32, ptr %19, align 8, !tbaa !41
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %18
  %23 = load i64, ptr @output_thread, align 8, !tbaa !20
  %24 = trunc i64 %23 to i32
  br label %30

25:                                               ; preds = %49
  %26 = load i8, ptr %3, align 8, !tbaa !50
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i8 [ %26, %25 ], [ %13, %18 ]
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %65, label %56

30:                                               ; preds = %22, %49
  %31 = phi i32 [ %53, %49 ], [ %24, %22 ]
  %32 = phi i32 [ %54, %49 ], [ 0, %22 ]
  %33 = load ptr, ptr @cthread, align 8, !tbaa !17
  %34 = sext i32 %31 to i64
  %35 = getelementptr inbounds %struct.compress_thread, ptr %33, i64 %34, i32 4
  %36 = tail call i32 @sem_wait(ptr noundef nonnull %35) #16
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38, !prof !5

38:                                               ; preds = %30
  %39 = tail call ptr @__errno_location() #19
  %40 = load i32, ptr %39, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 167, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_wait, ptr noundef nonnull @.str.40, i32 noundef %40, ptr noundef nonnull %35)
  br label %41

41:                                               ; preds = %30, %38
  %42 = load ptr, ptr @cthread, align 8, !tbaa !17
  %43 = getelementptr inbounds %struct.compress_thread, ptr %42, i64 %34, i32 4
  %44 = tail call i32 @sem_post(ptr noundef nonnull %43) #16
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %49, label %46, !prof !5

46:                                               ; preds = %41
  %47 = tail call ptr @__errno_location() #19
  %48 = load i32, ptr %47, align 4, !tbaa !42
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 161, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.39, i32 noundef %48, ptr noundef nonnull %43)
  br label %49

49:                                               ; preds = %41, %46
  %50 = add nsw i32 %31, 1
  %51 = load i32, ptr %19, align 8, !tbaa !41
  %52 = icmp eq i32 %50, %51
  %53 = select i1 %52, i32 0, i32 %50
  %54 = add nuw nsw i32 %32, 1
  %55 = icmp slt i32 %54, %51
  br i1 %55, label %30, label %25, !llvm.loop !94

56:                                               ; preds = %27, %56
  %57 = phi i64 [ %61, %56 ], [ 0, %27 ]
  %58 = load ptr, ptr %1, align 8, !tbaa !52
  %59 = getelementptr inbounds %struct.stream, ptr %58, i64 %57, i32 9
  %60 = load i64, ptr %59, align 8, !tbaa !95
  tail call fastcc void @rewrite_encrypted(ptr noundef %0, ptr noundef nonnull %1, i64 noundef %60)
  %61 = add nuw nsw i64 %57, 1
  %62 = load i8, ptr %3, align 8, !tbaa !50
  %63 = zext i8 %62 to i64
  %64 = icmp ult i64 %61, %63
  br i1 %64, label %56, label %65, !llvm.loop !96

65:                                               ; preds = %56, %27, %12
  %66 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %67 = load i8, ptr %66, align 8, !tbaa !19
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %110, label %69

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 59
  %71 = load i64, ptr %70, align 8, !tbaa !97
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %69
  %74 = tail call noalias dereferenceable_or_null(168) ptr @calloc(i64 noundef 21, i64 noundef 8) #18
  %75 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 61
  store ptr %74, ptr %75, align 8, !tbaa !98
  %76 = icmp eq ptr %74, null
  br i1 %76, label %77, label %78

77:                                               ; preds = %73
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1794, ptr nonnull poison, ptr noundef nonnull @__func__.close_stream_out, ptr noundef nonnull @.str.33)
  br label %110

78:                                               ; preds = %73
  store i64 1, ptr %70, align 8, !tbaa !97
  %79 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 60
  %80 = load i64, ptr %79, align 8, !tbaa !99
  br label %104

81:                                               ; preds = %69
  %82 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 60
  %83 = load i64, ptr %82, align 8, !tbaa !99
  %84 = mul i64 %71, 20
  %85 = or i64 %84, 1
  %86 = icmp eq i64 %83, %85
  %87 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 61
  %88 = load ptr, ptr %87, align 8, !tbaa !98
  br i1 %86, label %89, label %104

89:                                               ; preds = %81
  %90 = add i64 %71, 1
  store i64 %90, ptr %70, align 8, !tbaa !97
  %91 = mul i64 %90, 160
  %92 = or i64 %91, 8
  %93 = tail call ptr @realloc(ptr noundef %88, i64 noundef %92) #21
  %94 = icmp eq ptr %93, null
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1804, ptr nonnull poison, ptr noundef nonnull @__func__.close_stream_out, ptr noundef nonnull @.str.34)
  br label %110

96:                                               ; preds = %89
  store ptr %93, ptr %87, align 8, !tbaa !98
  %97 = load i64, ptr %82, align 8, !tbaa !99
  %98 = getelementptr inbounds ptr, ptr %93, i64 %97
  %99 = load i64, ptr %70, align 8, !tbaa !97
  %100 = mul i64 %99, 20
  %101 = sub i64 1, %97
  %102 = add i64 %101, %100
  %103 = shl i64 %102, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %98, i8 0, i64 %103, i1 false)
  br label %104

104:                                              ; preds = %81, %96, %78
  %105 = phi i64 [ %97, %96 ], [ %80, %78 ], [ %83, %81 ]
  %106 = phi ptr [ %93, %96 ], [ %74, %78 ], [ %88, %81 ]
  %107 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 60
  %108 = add i64 %105, 1
  store i64 %108, ptr %107, align 8, !tbaa !99
  %109 = getelementptr inbounds ptr, ptr %106, i64 %105
  store ptr %1, ptr %109, align 8, !tbaa !17
  br label %110

110:                                              ; preds = %95, %65, %104, %77
  %111 = phi i32 [ -1, %77 ], [ 0, %104 ], [ 0, %65 ], [ -1, %95 ]
  ret i32 %111
}

; Function Attrs: nounwind uwtable
define internal fastcc void @rewrite_encrypted(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 2
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !21
  %7 = and i64 %6, 2097152
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %11 = load i64, ptr %10, align 8, !tbaa !100
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  %13 = load i64, ptr %12, align 8, !tbaa !23
  %14 = add nsw i64 %13, %11
  br label %20

15:                                               ; preds = %3
  %16 = load i32, ptr %4, align 4, !tbaa !51
  %17 = tail call i64 @lseek64(i32 noundef %16, i64 noundef 0, i32 noundef 1) #16
  %18 = icmp eq i64 %17, -1
  br i1 %18, label %19, label %20, !prof !25

19:                                               ; preds = %15
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 872, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_seek, ptr noundef nonnull @.str.13)
  br label %20

20:                                               ; preds = %9, %15, %19
  %21 = phi i64 [ %14, %9 ], [ -1, %19 ], [ %17, %15 ]
  %22 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !65
  %24 = sub nsw i64 %21, %23
  %25 = icmp eq i64 %24, -1
  br i1 %25, label %122, label %26, !prof !25

26:                                               ; preds = %20
  %27 = tail call noalias dereferenceable_or_null(33) ptr @malloc(i64 noundef 33) #20
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !25

29:                                               ; preds = %26
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1233, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.119)
  br label %122

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %27, i64 8
  %32 = tail call zeroext i1 @get_rand(ptr noundef nonnull %0, ptr noundef nonnull %27, i32 noundef 8) #16
  br i1 %32, label %33, label %121, !prof !5

33:                                               ; preds = %30
  %34 = add nsw i64 %2, -8
  %35 = load i64, ptr %22, align 8, !tbaa !65
  %36 = add nsw i64 %35, %34
  %37 = load i64, ptr %5, align 8, !tbaa !21
  %38 = and i64 %37, 2097152
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %33
  %41 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %42 = load i64, ptr %41, align 8, !tbaa !100
  %43 = sub nsw i64 %36, %42
  %44 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 %43, ptr %44, align 8, !tbaa !23
  %45 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %46 = load i64, ptr %45, align 8, !tbaa !27
  %47 = icmp sgt i64 %43, %46
  %48 = icmp slt i64 %43, 0
  %49 = or i1 %48, %47
  br i1 %49, label %50, label %57, !prof !25

50:                                               ; preds = %40
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 827, ptr nonnull poison, ptr noundef nonnull @__func__.seekto, ptr noundef nonnull @.str.90, i64 noundef %43)
  br label %56

51:                                               ; preds = %33
  %52 = load i32, ptr %4, align 4, !tbaa !51
  %53 = tail call i64 @lseek64(i32 noundef %52, i64 noundef %36, i32 noundef 0) #16
  %54 = icmp eq i64 %53, %36
  br i1 %54, label %57, label %55, !prof !5

55:                                               ; preds = %51
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %34)
  br label %56

56:                                               ; preds = %55, %50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1238, ptr nonnull poison, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.120)
  br label %121

57:                                               ; preds = %40, %51
  %58 = tail call fastcc i32 @write_buf(ptr noundef nonnull %0, ptr noundef nonnull %27, i64 noundef 8)
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !5

60:                                               ; preds = %57
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1240, ptr nonnull poison, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.121)
  br label %121

61:                                               ; preds = %57
  %62 = load i32, ptr %4, align 4, !tbaa !51
  %63 = tail call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %62, ptr noundef nonnull %31, i64 noundef 25)
  switch i64 %63, label %68 [
    i64 -1, label %64
    i64 25, label %70
  ], !prof !62

64:                                               ; preds = %61
  %65 = tail call ptr @__errno_location() #19
  %66 = load i32, ptr %65, align 4, !tbaa !42
  %67 = tail call ptr @strerror(i32 noundef %66) #16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 776, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.41, i64 noundef 25, ptr noundef %67)
  br label %69

68:                                               ; preds = %61
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 780, ptr nonnull poison, ptr noundef nonnull @__func__.read_buf, ptr noundef nonnull @.str.42, i64 noundef 25, i64 noundef %63)
  br label %69

69:                                               ; preds = %64, %68
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1242, ptr nonnull poison, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.122)
  br label %121

70:                                               ; preds = %61
  %71 = tail call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef nonnull %31, i64 noundef 25, ptr noundef nonnull %27, i32 noundef 1) #16
  br i1 %71, label %72, label %121, !prof !5

72:                                               ; preds = %70
  %73 = load i64, ptr %22, align 8, !tbaa !65
  %74 = add nsw i64 %73, %2
  %75 = load i64, ptr %5, align 8, !tbaa !21
  %76 = and i64 %75, 2097152
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %89, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %80 = load i64, ptr %79, align 8, !tbaa !100
  %81 = sub nsw i64 %74, %80
  %82 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 %81, ptr %82, align 8, !tbaa !23
  %83 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %84 = load i64, ptr %83, align 8, !tbaa !27
  %85 = icmp sgt i64 %81, %84
  %86 = icmp slt i64 %81, 0
  %87 = or i1 %86, %85
  br i1 %87, label %88, label %95, !prof !25

88:                                               ; preds = %78
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 827, ptr nonnull poison, ptr noundef nonnull @__func__.seekto, ptr noundef nonnull @.str.90, i64 noundef %81)
  br label %94

89:                                               ; preds = %72
  %90 = load i32, ptr %4, align 4, !tbaa !51
  %91 = tail call i64 @lseek64(i32 noundef %90, i64 noundef %74, i32 noundef 0) #16
  %92 = icmp eq i64 %91, %74
  br i1 %92, label %95, label %93, !prof !5

93:                                               ; preds = %89
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %2)
  br label %94

94:                                               ; preds = %93, %88
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1248, ptr nonnull poison, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.123)
  br label %121

95:                                               ; preds = %78, %89
  %96 = tail call fastcc i32 @write_buf(ptr noundef nonnull %0, ptr noundef nonnull %31, i64 noundef 25)
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %99, label %98, !prof !5

98:                                               ; preds = %95
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1250, ptr nonnull poison, ptr noundef nonnull @__func__.rewrite_encrypted, ptr noundef nonnull @.str.124)
  br label %121

99:                                               ; preds = %95
  tail call void @free(ptr noundef nonnull %27) #16
  %100 = load i64, ptr %22, align 8, !tbaa !65
  %101 = add nsw i64 %100, %24
  %102 = load i64, ptr %5, align 8, !tbaa !21
  %103 = and i64 %102, 2097152
  %104 = icmp eq i64 %103, 0
  br i1 %104, label %116, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %107 = load i64, ptr %106, align 8, !tbaa !100
  %108 = sub nsw i64 %101, %107
  %109 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 %108, ptr %109, align 8, !tbaa !23
  %110 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %111 = load i64, ptr %110, align 8, !tbaa !27
  %112 = icmp sgt i64 %108, %111
  %113 = icmp slt i64 %108, 0
  %114 = or i1 %113, %112
  br i1 %114, label %115, label %122, !prof !25

115:                                              ; preds = %105
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 827, ptr nonnull poison, ptr noundef nonnull @__func__.seekto, ptr noundef nonnull @.str.90, i64 noundef %108)
  br label %122

116:                                              ; preds = %99
  %117 = load i32, ptr %4, align 4, !tbaa !51
  %118 = tail call i64 @lseek64(i32 noundef %117, i64 noundef %101, i32 noundef 0) #16
  %119 = icmp eq i64 %118, %101
  br i1 %119, label %122, label %120, !prof !5

120:                                              ; preds = %116
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %24)
  br label %122

121:                                              ; preds = %56, %60, %69, %94, %98, %30, %70
  tail call void @free(ptr noundef nonnull %27) #16
  br label %122

122:                                              ; preds = %120, %116, %115, %105, %20, %121, %29
  ret void
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: nounwind uwtable
define dso_local i32 @close_stream_in(ptr noundef %0, ptr nocapture noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !21
  %5 = and i64 %4, 2048
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %2
  %8 = and i64 %4, 4194304
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %12 = load i64, ptr %11, align 8, !tbaa !34
  br label %19

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %15 = load i32, ptr %14, align 8, !tbaa !33
  %16 = tail call i64 @lseek64(i32 noundef %15, i64 noundef 0, i32 noundef 1) #16
  %17 = icmp eq i64 %16, -1
  br i1 %17, label %18, label %19, !prof !25

18:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 884, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_readseek, ptr noundef nonnull @.str.13)
  br label %19

19:                                               ; preds = %10, %13, %18
  %20 = phi i64 [ %12, %10 ], [ -1, %18 ], [ %16, %13 ]
  %21 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 5
  %22 = load i64, ptr %21, align 8, !tbaa !65
  %23 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 6
  %24 = load i64, ptr %23, align 8, !tbaa !70
  %25 = add nsw i64 %24, %22
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1831, ptr nonnull poison, ptr noundef nonnull @__func__.close_stream_in, ptr noundef nonnull @.str.35, i64 noundef %20, i64 noundef %25)
  br label %26

26:                                               ; preds = %19, %2
  %27 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 6
  %28 = load i64, ptr %27, align 8, !tbaa !70
  %29 = tail call fastcc i32 @read_seekto(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %28)
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %52, !prof !5

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 1
  %33 = load i8, ptr %32, align 8, !tbaa !50
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %48, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %1, align 8, !tbaa !52
  br label %37

37:                                               ; preds = %35, %37
  %38 = phi ptr [ %36, %35 ], [ %42, %37 ]
  %39 = phi i64 [ 0, %35 ], [ %44, %37 ]
  %40 = getelementptr inbounds %struct.stream, ptr %38, i64 %39, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !57
  tail call void @free(ptr noundef %41) #16
  %42 = load ptr, ptr %1, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct.stream, ptr %42, i64 %39, i32 1
  store ptr null, ptr %43, align 8, !tbaa !57
  %44 = add nuw nsw i64 %39, 1
  %45 = load i8, ptr %32, align 8, !tbaa !50
  %46 = zext i8 %45 to i64
  %47 = icmp ult i64 %44, %46
  br i1 %47, label %37, label %48, !llvm.loop !101

48:                                               ; preds = %37, %31
  store i64 0, ptr @output_thread, align 8, !tbaa !20
  %49 = load ptr, ptr @ucthread, align 8, !tbaa !17
  tail call void @free(ptr noundef %49) #16
  store ptr null, ptr @ucthread, align 8, !tbaa !17
  %50 = load ptr, ptr @threads, align 8, !tbaa !17
  tail call void @free(ptr noundef %50) #16
  store ptr null, ptr @threads, align 8, !tbaa !17
  %51 = load ptr, ptr %1, align 8, !tbaa !52
  tail call void @free(ptr noundef %51) #16
  tail call void @free(ptr noundef nonnull %1) #16
  br label %52

52:                                               ; preds = %26, %48
  %53 = phi i32 [ 0, %48 ], [ -1, %26 ]
  ret i32 %53
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @read_seekto(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !65
  %6 = add nsw i64 %5, %2
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = and i64 %8, 4194304
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %62, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 15
  %13 = load i64, ptr %12, align 8, !tbaa !36
  %14 = icmp sgt i64 %6, %13
  br i1 %14, label %15, label %58

15:                                               ; preds = %11
  %16 = sub nsw i64 %6, %13
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %18 = load i64, ptr %17, align 8, !tbaa !34
  %19 = add nsw i64 %18, %16
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 16
  %21 = load i64, ptr %20, align 8, !tbaa !35
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = tail call zeroext i1 @write_fdin(ptr noundef nonnull %0) #16
  br i1 %24, label %25, label %69, !prof !5

25:                                               ; preds = %23
  %26 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %27 = load i32, ptr %26, align 8, !tbaa !33
  %28 = tail call zeroext i1 @read_tmpinfile(ptr noundef nonnull %0, i32 noundef %27) #16
  br i1 %28, label %55, label %69, !prof !5

29:                                               ; preds = %15
  %30 = icmp slt i64 %16, 1
  br i1 %30, label %56, label %31

31:                                               ; preds = %29
  %32 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %33 = load ptr, ptr @stdin, align 8, !tbaa !17
  %34 = tail call i32 @getc(ptr noundef %33)
  %35 = icmp eq i32 %34, -1
  br i1 %35, label %68, label %40, !prof !25

36:                                               ; preds = %40
  %37 = load ptr, ptr @stdin, align 8, !tbaa !17
  %38 = tail call i32 @getc(ptr noundef %37)
  %39 = icmp eq i32 %38, -1
  br i1 %39, label %53, label %40, !prof !25, !llvm.loop !37

40:                                               ; preds = %31, %36
  %41 = phi i32 [ %38, %36 ], [ %34, %31 ]
  %42 = phi i64 [ %48, %36 ], [ 0, %31 ]
  %43 = trunc i32 %41 to i8
  %44 = load ptr, ptr %32, align 8, !tbaa !38
  %45 = load i64, ptr %17, align 8, !tbaa !34
  %46 = add nsw i64 %45, %42
  %47 = getelementptr inbounds i8, ptr %44, i64 %46
  store i8 %43, ptr %47, align 1, !tbaa !39
  %48 = add nuw nsw i64 %42, 1
  %49 = icmp eq i64 %48, %16
  br i1 %49, label %50, label %36, !llvm.loop !37

50:                                               ; preds = %40
  %51 = load i64, ptr %17, align 8, !tbaa !34
  %52 = add nsw i64 %51, %16
  br label %56

53:                                               ; preds = %36
  %54 = icmp slt i64 %48, %16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 677, ptr nonnull poison, ptr noundef nonnull @__func__.read_fdin, ptr noundef nonnull @.str.36, i64 noundef %16, i64 noundef %48)
  br i1 %54, label %69, label %58, !prof !25

55:                                               ; preds = %25
  tail call void @close_tmpinbuf(ptr noundef nonnull %0) #16
  br label %62

56:                                               ; preds = %29, %50
  %57 = phi i64 [ %52, %50 ], [ %19, %29 ]
  store i64 %57, ptr %12, align 8, !tbaa !36
  br label %58

58:                                               ; preds = %56, %53, %11
  %59 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  store i64 %6, ptr %59, align 8, !tbaa !34
  %60 = icmp slt i64 %6, 0
  br i1 %60, label %61, label %69, !prof !25

61:                                               ; preds = %58
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 855, ptr nonnull poison, ptr noundef nonnull @__func__.read_seekto, ptr noundef nonnull @.str.125, i64 noundef %6)
  br label %69

62:                                               ; preds = %55, %3
  %63 = getelementptr inbounds %struct.stream_info, ptr %1, i64 0, i32 2
  %64 = load i32, ptr %63, align 4, !tbaa !51
  %65 = tail call i64 @lseek64(i32 noundef %64, i64 noundef %6, i32 noundef 0) #16
  %66 = icmp eq i64 %65, %6
  br i1 %66, label %69, label %67, !prof !5

67:                                               ; preds = %62
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %2)
  br label %69

68:                                               ; preds = %31
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 677, ptr nonnull poison, ptr noundef nonnull @__func__.read_fdin, ptr noundef nonnull @.str.36, i64 noundef %16, i64 noundef 0)
  br label %69

69:                                               ; preds = %68, %25, %23, %53, %67, %62, %58, %61
  %70 = phi i32 [ -1, %61 ], [ 0, %58 ], [ -1, %67 ], [ 0, %62 ], [ -1, %53 ], [ -1, %23 ], [ -1, %25 ], [ -1, %68 ]
  ret i32 %70
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #12

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #12

declare void @fatal_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #13

declare zeroext i1 @write_fdin(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @read_tmpinfile(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @close_tmpinbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #14

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #1

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #1

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal noalias ptr @compthread(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i64, align 8
  %17 = alloca [5 x i8], align 1
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = getelementptr inbounds %struct.stream_thread_struct, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !80
  %22 = load i32, ptr %0, align 8, !tbaa !78
  %23 = sext i32 %22 to i64
  tail call void @free(ptr noundef %0) #16
  %24 = load ptr, ptr @cthread, align 8, !tbaa !17
  %25 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23
  %26 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !72
  %28 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 31
  %29 = load i8, ptr %28, align 4, !tbaa !102
  %30 = sext i8 %29 to i32
  %31 = tail call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %30) #16
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34, !prof !25

33:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 1279, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.47)
  br label %34

34:                                               ; preds = %33, %1
  %35 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 1
  store i8 3, ptr %35, align 8, !tbaa !103
  %36 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !77
  %38 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 3
  store i64 %37, ptr %38, align 8, !tbaa !104
  %39 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 2
  %40 = load i32, ptr %39, align 4, !tbaa !51
  %41 = tail call i32 @fsync(i32 noundef %40) #16
  %42 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 26
  %43 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 20
  %44 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 30
  %45 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 47
  %46 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 50
  %47 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 24
  %48 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 49
  br label %49

49:                                               ; preds = %258, %34
  %50 = phi i1 [ false, %34 ], [ true, %258 ]
  %51 = phi i32 [ 0, %34 ], [ -1, %258 ]
  %52 = load i64, ptr %42, align 8, !tbaa !21
  %53 = and i64 %52, 32
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %206

55:                                               ; preds = %49
  %56 = load i64, ptr %38, align 8, !tbaa !104
  %57 = icmp sgt i64 %56, 63
  br i1 %57, label %58, label %206

58:                                               ; preds = %55
  %59 = and i64 %52, 992
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %153

61:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %17) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #16
  store i64 5, ptr %18, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #16
  %62 = load ptr, ptr %25, align 8, !tbaa !75
  %63 = load i64, ptr %36, align 8, !tbaa !77
  %64 = call fastcc i32 @lzo_compresses(ptr noundef nonnull %21, ptr noundef %62, i64 noundef %63)
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %151, label %66

66:                                               ; preds = %61
  %67 = load i8, ptr %43, align 8, !tbaa !105
  %68 = zext i8 %67 to i32
  %69 = mul nuw nsw i32 %68, 7
  %70 = trunc i32 %69 to i16
  %71 = udiv i16 %70, 9
  %72 = zext i16 %71 to i32
  %73 = icmp ult i32 %69, 9
  %74 = select i1 %73, i32 1, i32 %72
  %75 = load i64, ptr %42, align 8, !tbaa !21
  %76 = and i64 %75, 2048
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %66
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 311, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.68)
  br label %79

79:                                               ; preds = %78, %66
  %80 = load i64, ptr %36, align 8, !tbaa !77
  %81 = call i64 @round_up_page(ptr noundef nonnull %21, i64 noundef %80) #16
  store i64 %81, ptr %19, align 8, !tbaa !20
  %82 = call noalias ptr @malloc(i64 noundef %81) #20
  %83 = icmp eq ptr %82, null
  br i1 %83, label %84, label %85

84:                                               ; preds = %110, %79
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 316, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.69)
  br label %151

85:                                               ; preds = %79, %110
  %86 = phi ptr [ %113, %110 ], [ %82, %79 ]
  %87 = phi i32 [ %105, %110 ], [ %74, %79 ]
  %88 = load ptr, ptr %25, align 8, !tbaa !75
  %89 = load i64, ptr %36, align 8, !tbaa !77
  %90 = load i32, ptr %44, align 8, !tbaa !41
  %91 = call i32 @LzmaCompress(ptr noundef nonnull %86, ptr noundef nonnull %19, ptr noundef %88, i64 noundef %89, ptr noundef nonnull %17, ptr noundef nonnull %18, i32 noundef %87, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef %90) #16
  switch i32 %91, label %103 [
    i32 0, label %122
    i32 2, label %92
    i32 5, label %94
    i32 7, label %95
    i32 12, label %100
  ]

92:                                               ; preds = %85
  call void @free(ptr noundef nonnull %86) #16
  %93 = icmp sgt i32 %87, 1
  br i1 %93, label %104, label %115

94:                                               ; preds = %85
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 334, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.70, i32 noundef 5)
  br label %101

95:                                               ; preds = %85
  %96 = load i64, ptr %42, align 8, !tbaa !21
  %97 = and i64 %96, 2048
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %95
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 337, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.71, i32 noundef 7)
  br label %102

100:                                              ; preds = %85
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 340, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.72, i32 noundef 12)
  br label %101

101:                                              ; preds = %100, %94
  call void @free(ptr noundef nonnull %86) #16
  br label %151

102:                                              ; preds = %99, %95
  call void @free(ptr noundef nonnull %86) #16
  br label %151

103:                                              ; preds = %85
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 343, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.73, i32 noundef %91)
  call void @free(ptr noundef nonnull %86) #16
  br label %151

104:                                              ; preds = %92
  %105 = add nsw i32 %87, -1
  %106 = load i64, ptr %42, align 8, !tbaa !21
  %107 = and i64 %106, 3072
  %108 = icmp eq i64 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %104
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 3, i32 noundef 351, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.74, i32 noundef 2)
  br label %110

110:                                              ; preds = %109, %104
  %111 = load i64, ptr %36, align 8, !tbaa !77
  %112 = call i64 @round_up_page(ptr noundef nonnull %21, i64 noundef %111) #16
  store i64 %112, ptr %19, align 8, !tbaa !20
  %113 = call noalias ptr @malloc(i64 noundef %112) #20
  %114 = icmp eq ptr %113, null
  br i1 %114, label %84, label %85

115:                                              ; preds = %92
  %116 = load i64, ptr %42, align 8, !tbaa !21
  %117 = and i64 %116, 3072
  %118 = icmp eq i64 %117, 0
  br i1 %118, label %120, label %119

119:                                              ; preds = %115
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 3, i32 noundef 357, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.75)
  br label %120

120:                                              ; preds = %119, %115
  %121 = call fastcc i32 @bzip2_compress_buf(ptr noundef nonnull %21, ptr noundef nonnull %25)
  br label %151

122:                                              ; preds = %85
  %123 = load i64, ptr %19, align 8, !tbaa !20
  %124 = load i64, ptr %38, align 8, !tbaa !104
  %125 = icmp slt i64 %123, %124
  br i1 %125, label %132, label %126, !prof !5

126:                                              ; preds = %122
  %127 = load i64, ptr %42, align 8, !tbaa !21
  %128 = and i64 %127, 2048
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 366, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_compress_buf, ptr noundef nonnull @.str.76)
  br label %131

131:                                              ; preds = %130, %126
  call void @free(ptr noundef nonnull %86) #16
  br label %151

132:                                              ; preds = %122
  %133 = call i32 @pthread_mutex_lock(ptr noundef nonnull %45) #16
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %136, label %135, !prof !5

135:                                              ; preds = %132
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %136

136:                                              ; preds = %135, %132
  %137 = load i8, ptr %46, align 2, !tbaa !106, !range !107, !noundef !108
  %138 = icmp eq i8 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %47, ptr noundef nonnull align 1 dereferenceable(5) %17, i64 5, i1 false)
  store i8 1, ptr %46, align 2, !tbaa !106
  %140 = load i64, ptr %42, align 8, !tbaa !21
  %141 = and i64 %140, 2097152
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %144, label %143

143:                                              ; preds = %139
  store i8 0, ptr %48, align 1, !tbaa !109
  br label %144

144:                                              ; preds = %143, %139, %136
  %145 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %45) #16
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %148, label %147, !prof !5

147:                                              ; preds = %144
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %148

148:                                              ; preds = %147, %144
  %149 = load i64, ptr %19, align 8, !tbaa !20
  store i64 %149, ptr %38, align 8, !tbaa !104
  %150 = load ptr, ptr %25, align 8, !tbaa !75
  call void @free(ptr noundef %150) #16
  store ptr %86, ptr %25, align 8, !tbaa !75
  store i8 6, ptr %35, align 8, !tbaa !103
  br label %151

151:                                              ; preds = %61, %84, %101, %102, %103, %120, %131, %148
  %152 = phi i32 [ %121, %120 ], [ 0, %131 ], [ 0, %148 ], [ -1, %84 ], [ 0, %61 ], [ 0, %102 ], [ -1, %103 ], [ -1, %101 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #16
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %17) #16
  br label %206

153:                                              ; preds = %58
  %154 = and i64 %52, 64
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %190, label %156

156:                                              ; preds = %153
  %157 = load i64, ptr %36, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #16
  %158 = lshr i64 %157, 4
  %159 = add i64 %157, 67
  %160 = add i64 %159, %158
  %161 = call i64 @round_up_page(ptr noundef nonnull %21, i64 noundef %160) #16
  store i64 %161, ptr %16, align 8, !tbaa !20
  %162 = call noalias dereferenceable_or_null(131072) ptr @calloc(i64 noundef 1, i64 noundef 131072) #18
  %163 = icmp eq ptr %162, null
  br i1 %163, label %164, label %169, !prof !25

164:                                              ; preds = %156
  %165 = load i64, ptr %42, align 8, !tbaa !21
  %166 = and i64 %165, 2048
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %188, label %168

168:                                              ; preds = %164
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 400, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_compress_buf, ptr noundef nonnull @.str.82)
  br label %188

169:                                              ; preds = %156
  %170 = call noalias ptr @malloc(i64 noundef %161) #20
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 406, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_compress_buf, ptr noundef nonnull @.str.83)
  br label %186

173:                                              ; preds = %169
  %174 = load ptr, ptr %25, align 8, !tbaa !75
  %175 = call i32 @lzo1x_1_compress(ptr noundef %174, i64 noundef %157, ptr noundef nonnull %170, ptr noundef nonnull %16, ptr noundef nonnull %162) #16
  %176 = load i64, ptr %16, align 8, !tbaa !20
  %177 = icmp ult i64 %176, %157
  br i1 %177, label %184, label %178

178:                                              ; preds = %173
  %179 = load i64, ptr %42, align 8, !tbaa !21
  %180 = and i64 %179, 2048
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 417, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_compress_buf, ptr noundef nonnull @.str.76)
  br label %183

183:                                              ; preds = %182, %178
  call void @free(ptr noundef nonnull %170) #16
  br label %186

184:                                              ; preds = %173
  store i64 %176, ptr %38, align 8, !tbaa !104
  %185 = load ptr, ptr %25, align 8, !tbaa !75
  call void @free(ptr noundef %185) #16
  store ptr %170, ptr %25, align 8, !tbaa !75
  store i8 5, ptr %35, align 8, !tbaa !103
  br label %186

186:                                              ; preds = %184, %183, %172
  %187 = phi i32 [ 0, %183 ], [ 0, %184 ], [ -1, %172 ]
  call void @free(ptr noundef nonnull %162) #16
  br label %188

188:                                              ; preds = %164, %168, %186
  %189 = phi i32 [ %187, %186 ], [ -1, %168 ], [ -1, %164 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #16
  br label %206

190:                                              ; preds = %153
  %191 = and i64 %52, 128
  %192 = icmp eq i64 %191, 0
  br i1 %192, label %195, label %193

193:                                              ; preds = %190
  %194 = call fastcc i32 @bzip2_compress_buf(ptr noundef nonnull %21, ptr noundef nonnull %25)
  br label %206

195:                                              ; preds = %190
  %196 = and i64 %52, 256
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %195
  %199 = call fastcc i32 @gzip_compress_buf(ptr noundef nonnull %21, ptr noundef nonnull %25)
  br label %206

200:                                              ; preds = %195
  %201 = and i64 %52, 512
  %202 = icmp eq i64 %201, 0
  br i1 %202, label %205, label %203

203:                                              ; preds = %200
  %204 = call fastcc i32 @zpaq_compress_buf(ptr noundef nonnull %21, ptr noundef nonnull %25, i64 noundef %23)
  br label %206

205:                                              ; preds = %200
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %21, i32 noundef 1303, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.48)
  br label %611

206:                                              ; preds = %151, %193, %203, %198, %188, %55, %49
  %207 = phi i32 [ %51, %49 ], [ %189, %188 ], [ %194, %193 ], [ %199, %198 ], [ %204, %203 ], [ %152, %151 ], [ %51, %55 ]
  %208 = load i64, ptr %38, align 8, !tbaa !104
  %209 = icmp eq i32 %207, 0
  br i1 %209, label %210, label %229

210:                                              ; preds = %206
  %211 = load i64, ptr %42, align 8, !tbaa !21
  %212 = lshr i64 %211, 19
  %213 = and i64 %212, 16
  %214 = icmp slt i64 %208, %213
  br i1 %214, label %215, label %231

215:                                              ; preds = %210
  %216 = load ptr, ptr %25, align 8, !tbaa !75
  %217 = call ptr @realloc(ptr noundef %216, i64 noundef %213) #21
  store ptr %217, ptr %25, align 8, !tbaa !75
  %218 = icmp eq ptr %217, null
  br i1 %218, label %219, label %220, !prof !25

219:                                              ; preds = %215
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1314, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.49)
  br label %611

220:                                              ; preds = %215
  %221 = load i64, ptr %38, align 8, !tbaa !104
  %222 = getelementptr inbounds i8, ptr %217, i64 %221
  %223 = load i64, ptr %42, align 8, !tbaa !21
  %224 = lshr i64 %223, 19
  %225 = and i64 %224, 16
  %226 = sub nsw i64 %225, %221
  %227 = trunc i64 %226 to i32
  %228 = call zeroext i1 @get_rand(ptr noundef nonnull %21, ptr noundef nonnull %222, i32 noundef %227) #16
  br i1 %228, label %231, label %611, !prof !5

229:                                              ; preds = %206
  br i1 %50, label %230, label %233, !prof !25

230:                                              ; preds = %229
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %21, i32 noundef 1323, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.50)
  br label %611

231:                                              ; preds = %210, %220
  %232 = phi i64 [ %208, %210 ], [ %213, %220 ]
  br i1 %50, label %259, label %233

233:                                              ; preds = %229, %231
  %234 = phi i64 [ %232, %231 ], [ %208, %229 ]
  %235 = call i32 @pthread_mutex_lock(ptr noundef nonnull @output_lock) #16
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %238, label %237, !prof !5

237:                                              ; preds = %233
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %238

238:                                              ; preds = %233, %237
  %239 = load i64, ptr @output_thread, align 8, !tbaa !20
  %240 = icmp eq i64 %239, %23
  br i1 %240, label %248, label %241

241:                                              ; preds = %238, %245
  %242 = call i32 @pthread_cond_wait(ptr noundef nonnull @output_cond, ptr noundef nonnull @output_lock) #16
  %243 = icmp eq i32 %242, 0
  br i1 %243, label %245, label %244, !prof !5

244:                                              ; preds = %241
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %21, i32 noundef 119, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cond_wait, ptr noundef nonnull @.str.89)
  br label %245

245:                                              ; preds = %241, %244
  %246 = load i64, ptr @output_thread, align 8, !tbaa !20
  %247 = icmp eq i64 %246, %23
  br i1 %247, label %248, label %241, !llvm.loop !110

248:                                              ; preds = %245, %238
  %249 = call i32 @pthread_mutex_unlock(ptr noundef nonnull @output_lock) #16
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %252, label %251, !prof !5

251:                                              ; preds = %248
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %21, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %252

252:                                              ; preds = %251, %248
  br i1 %209, label %259, label %253, !prof !5

253:                                              ; preds = %252
  %254 = load i64, ptr %42, align 8, !tbaa !21
  %255 = and i64 %254, 2048
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1333, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.51)
  br label %258

258:                                              ; preds = %257, %253
  br label %49

259:                                              ; preds = %231, %252
  %260 = phi i64 [ %234, %252 ], [ %232, %231 ]
  %261 = load i64, ptr %42, align 8, !tbaa !21
  %262 = and i64 %261, 8388608
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %264, label %268

264:                                              ; preds = %259
  %265 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 12
  %266 = load i8, ptr %265, align 4, !tbaa !49
  %267 = sext i8 %266 to i32
  br label %268

268:                                              ; preds = %259, %264
  %269 = phi i32 [ %267, %264 ], [ 8, %259 ]
  %270 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 11
  %271 = load i32, ptr %270, align 8, !tbaa !111
  %272 = add nsw i32 %271, 1
  store i32 %272, ptr %270, align 8, !tbaa !111
  %273 = icmp eq i32 %271, 0
  br i1 %273, label %274, label %412

274:                                              ; preds = %268
  %275 = and i64 %261, 2097152
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %295, label %277

277:                                              ; preds = %274
  %278 = call i32 @pthread_mutex_lock(ptr noundef nonnull %45) #16
  %279 = icmp eq i32 %278, 0
  br i1 %279, label %281, label %280, !prof !5

280:                                              ; preds = %277
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %281

281:                                              ; preds = %277, %280
  %282 = load i8, ptr %48, align 1, !tbaa !109
  %283 = icmp eq i8 %282, 0
  br i1 %283, label %284, label %286

284:                                              ; preds = %281
  %285 = call zeroext i1 @write_magic(ptr noundef nonnull %21) #16
  br label %286

286:                                              ; preds = %284, %281
  %287 = call i32 @pthread_mutex_unlock(ptr noundef nonnull %45) #16
  %288 = icmp eq i32 %287, 0
  br i1 %288, label %290, label %289, !prof !5

289:                                              ; preds = %286
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %290

290:                                              ; preds = %286, %289
  %291 = call zeroext i1 @flush_tmpoutbuf(ptr noundef nonnull %21) #16
  br i1 %291, label %292, label %294, !prof !5

292:                                              ; preds = %290
  %293 = load i64, ptr %42, align 8, !tbaa !21
  br label %295

294:                                              ; preds = %290
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 1353, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.52)
  br label %611

295:                                              ; preds = %292, %274
  %296 = phi i64 [ %293, %292 ], [ %261, %274 ]
  %297 = and i64 %296, 2048
  %298 = icmp eq i64 %297, 0
  br i1 %298, label %318, label %299

299:                                              ; preds = %295
  %300 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 12
  %301 = load i8, ptr %300, align 4, !tbaa !49
  %302 = sext i8 %301 to i32
  %303 = and i64 %296, 2097152
  %304 = icmp eq i64 %303, 0
  br i1 %304, label %311, label %305

305:                                              ; preds = %299
  %306 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 12
  %307 = load i64, ptr %306, align 8, !tbaa !100
  %308 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 8
  %309 = load i64, ptr %308, align 8, !tbaa !23
  %310 = add nsw i64 %309, %307
  br label %316

311:                                              ; preds = %299
  %312 = load i32, ptr %39, align 4, !tbaa !51
  %313 = call i64 @lseek64(i32 noundef %312, i64 noundef 0, i32 noundef 1) #16
  %314 = icmp eq i64 %313, -1
  br i1 %314, label %315, label %316, !prof !25

315:                                              ; preds = %311
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 872, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_seek, ptr noundef nonnull @.str.13)
  br label %316

316:                                              ; preds = %305, %311, %315
  %317 = phi i64 [ %310, %305 ], [ -1, %315 ], [ %313, %311 ]
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1359, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.53, i32 noundef %302, i64 noundef %317)
  br label %318

318:                                              ; preds = %316, %295
  %319 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 12
  %320 = load i8, ptr %319, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %15)
  store i8 %320, ptr %15, align 1, !tbaa !39
  %321 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %15, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %15)
  %322 = load i64, ptr %42, align 8, !tbaa !21
  %323 = and i64 %322, 2048
  %324 = icmp eq i64 %323, 0
  br i1 %324, label %329, label %325

325:                                              ; preds = %318
  %326 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 48
  %327 = load i8, ptr %326, align 8, !tbaa !63
  %328 = zext i8 %327 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1365, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.54, i32 noundef %328)
  br label %329

329:                                              ; preds = %325, %318
  %330 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 48
  %331 = load i8, ptr %330, align 8, !tbaa !63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %14)
  store i8 %331, ptr %14, align 1, !tbaa !39
  %332 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %14, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %14)
  %333 = load i64, ptr %42, align 8, !tbaa !21
  %334 = and i64 %333, 8388608
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %336, label %343

336:                                              ; preds = %329
  %337 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 8
  %338 = load i64, ptr %337, align 8, !tbaa !46
  %339 = load i8, ptr %319, align 4, !tbaa !49
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13)
  store i64 %338, ptr %13, align 8, !tbaa !20
  %340 = sext i8 %339 to i64
  %341 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %13, i64 noundef %340)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13)
  %342 = load i64, ptr %42, align 8, !tbaa !21
  br label %343

343:                                              ; preds = %336, %329
  %344 = phi i64 [ %342, %336 ], [ %333, %329 ]
  %345 = and i64 %344, 2097152
  %346 = icmp eq i64 %345, 0
  br i1 %346, label %347, label %356

347:                                              ; preds = %343
  %348 = load i32, ptr %39, align 4, !tbaa !51
  %349 = call i64 @lseek64(i32 noundef %348, i64 noundef 0, i32 noundef 1) #16
  %350 = icmp eq i64 %349, -1
  br i1 %350, label %354, label %351, !prof !25

351:                                              ; preds = %347
  %352 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 5
  store i64 %349, ptr %352, align 8, !tbaa !65
  %353 = load i64, ptr %42, align 8, !tbaa !21
  br label %364

354:                                              ; preds = %347
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 872, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.get_seek, ptr noundef nonnull @.str.13)
  %355 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 5
  store i64 -1, ptr %355, align 8, !tbaa !65
  br label %611

356:                                              ; preds = %343
  %357 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 12
  %358 = load i64, ptr %357, align 8, !tbaa !100
  %359 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 8
  %360 = load i64, ptr %359, align 8, !tbaa !23
  %361 = add nsw i64 %360, %358
  %362 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 5
  store i64 %361, ptr %362, align 8, !tbaa !65
  %363 = icmp eq i64 %361, -1
  br i1 %363, label %611, label %364, !prof !25

364:                                              ; preds = %351, %356
  %365 = phi i64 [ %353, %351 ], [ %344, %356 ]
  %366 = phi i64 [ %349, %351 ], [ %361, %356 ]
  %367 = and i64 %365, 2048
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %364
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1375, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.55, i64 noundef %366)
  br label %370

370:                                              ; preds = %369, %364
  %371 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 1
  %372 = load i8, ptr %371, align 8, !tbaa !50
  %373 = icmp eq i8 %372, 0
  br i1 %373, label %412, label %374

374:                                              ; preds = %370
  %375 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 4
  %376 = shl nsw i32 %269, 1
  %377 = or i32 %376, 1
  %378 = sext i32 %377 to i64
  %379 = sext i32 %269 to i64
  %380 = mul nsw i32 %269, 3
  %381 = add nsw i32 %380, 1
  %382 = sext i32 %381 to i64
  br label %383

383:                                              ; preds = %374, %397
  %384 = phi i64 [ 0, %374 ], [ %408, %397 ]
  %385 = load i64, ptr %42, align 8, !tbaa !21
  %386 = and i64 %385, 8388608
  %387 = icmp eq i64 %386, 0
  br i1 %387, label %388, label %390

388:                                              ; preds = %383
  %389 = load i64, ptr %375, align 8, !tbaa !112
  br label %397

390:                                              ; preds = %383
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12)
  store i64 0, ptr %12, align 8, !tbaa !20
  %391 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %12, i64 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12)
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %394, label %393, !prof !5

393:                                              ; preds = %390
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1381, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.56, i64 noundef %23)
  br label %611

394:                                              ; preds = %390
  %395 = load i64, ptr %375, align 8, !tbaa !112
  %396 = add nsw i64 %395, 8
  store i64 %396, ptr %375, align 8, !tbaa !112
  br label %397

397:                                              ; preds = %388, %394
  %398 = phi i64 [ %389, %388 ], [ %396, %394 ]
  %399 = add i64 %398, %378
  %400 = load ptr, ptr %27, align 8, !tbaa !52
  %401 = getelementptr inbounds %struct.stream, ptr %400, i64 %384
  store i64 %399, ptr %401, align 8, !tbaa !69
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11)
  store i8 3, ptr %11, align 1, !tbaa !39
  %402 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %11, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10)
  store i64 0, ptr %10, align 8, !tbaa !20
  %403 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %10, i64 noundef %379)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9)
  store i64 0, ptr %9, align 8, !tbaa !20
  %404 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %9, i64 noundef %379)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8)
  store i64 0, ptr %8, align 8, !tbaa !20
  %405 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %8, i64 noundef %379)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8)
  %406 = load i64, ptr %375, align 8, !tbaa !112
  %407 = add nsw i64 %406, %382
  store i64 %407, ptr %375, align 8, !tbaa !112
  %408 = add nuw nsw i64 %384, 1
  %409 = load i8, ptr %371, align 8, !tbaa !50
  %410 = zext i8 %409 to i64
  %411 = icmp ult i64 %408, %410
  br i1 %411, label %383, label %412, !llvm.loop !113

412:                                              ; preds = %397, %370, %268
  %413 = load i64, ptr %42, align 8, !tbaa !21
  %414 = and i64 %413, 2048
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %424, label %416

416:                                              ; preds = %412
  %417 = load ptr, ptr %27, align 8, !tbaa !52
  %418 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 6
  %419 = load i32, ptr %418, align 8, !tbaa !74
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds %struct.stream, ptr %417, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !69
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1393, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.57, i64 noundef %23, i64 noundef %422, i32 noundef %269)
  %423 = load i64, ptr %42, align 8, !tbaa !21
  br label %424

424:                                              ; preds = %416, %412
  %425 = phi i64 [ %423, %416 ], [ %413, %412 ]
  %426 = load ptr, ptr %27, align 8, !tbaa !52
  %427 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 6
  %428 = load i32, ptr %427, align 8, !tbaa !74
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds %struct.stream, ptr %426, i64 %429
  %431 = load i64, ptr %430, align 8, !tbaa !69
  %432 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 5
  %433 = load i64, ptr %432, align 8, !tbaa !65
  %434 = add nsw i64 %433, %431
  %435 = and i64 %425, 2097152
  %436 = icmp eq i64 %435, 0
  br i1 %436, label %448, label %437

437:                                              ; preds = %424
  %438 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 12
  %439 = load i64, ptr %438, align 8, !tbaa !100
  %440 = sub nsw i64 %434, %439
  %441 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 8
  store i64 %440, ptr %441, align 8, !tbaa !23
  %442 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 10
  %443 = load i64, ptr %442, align 8, !tbaa !27
  %444 = icmp sgt i64 %440, %443
  %445 = icmp slt i64 %440, 0
  %446 = or i1 %445, %444
  br i1 %446, label %447, label %454, !prof !25

447:                                              ; preds = %437
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 827, ptr nonnull poison, ptr noundef nonnull @__func__.seekto, ptr noundef nonnull @.str.90, i64 noundef %440)
  br label %453

448:                                              ; preds = %424
  %449 = load i32, ptr %39, align 4, !tbaa !51
  %450 = call i64 @lseek64(i32 noundef %449, i64 noundef %434, i32 noundef 0) #16
  %451 = icmp eq i64 %450, %434
  br i1 %451, label %454, label %452, !prof !5

452:                                              ; preds = %448
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %431)
  br label %453

453:                                              ; preds = %452, %447
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1396, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.58, i64 noundef %23)
  br label %611

454:                                              ; preds = %437, %448
  %455 = getelementptr inbounds %struct.stream_info, ptr %27, i64 0, i32 4
  %456 = load i64, ptr %455, align 8, !tbaa !112
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7)
  store i64 %456, ptr %7, align 8, !tbaa !20
  %457 = sext i32 %269 to i64
  %458 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %7, i64 noundef %457)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7)
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %461, label %460, !prof !5

460:                                              ; preds = %454
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1399, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.59, i64 noundef %23)
  br label %611

461:                                              ; preds = %454
  %462 = load i64, ptr %42, align 8, !tbaa !21
  %463 = and i64 %462, 8388608
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %473, label %465

465:                                              ; preds = %461
  %466 = load ptr, ptr %27, align 8, !tbaa !52
  %467 = load i32, ptr %427, align 8, !tbaa !74
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds %struct.stream, ptr %466, i64 %468
  %470 = load i64, ptr %469, align 8, !tbaa !69
  %471 = add nsw i64 %470, -17
  call fastcc void @rewrite_encrypted(ptr noundef nonnull %21, ptr noundef nonnull %27, i64 noundef %471)
  %472 = load i64, ptr %42, align 8, !tbaa !21
  br label %473

473:                                              ; preds = %465, %461
  %474 = phi i64 [ %472, %465 ], [ %462, %461 ]
  %475 = load i64, ptr %455, align 8, !tbaa !112
  %476 = shl nsw i32 %269, 1
  %477 = lshr i64 %474, 20
  %478 = and i64 %477, 8
  %479 = or i32 %476, 1
  %480 = sext i32 %479 to i64
  %481 = add i64 %475, %480
  %482 = add i64 %481, %478
  %483 = load ptr, ptr %27, align 8, !tbaa !52
  %484 = load i32, ptr %427, align 8, !tbaa !74
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds %struct.stream, ptr %483, i64 %485
  store i64 %482, ptr %486, align 8, !tbaa !69
  %487 = and i64 %474, 2048
  %488 = icmp eq i64 %487, 0
  br i1 %488, label %492, label %489

489:                                              ; preds = %473
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1406, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.60, i64 noundef %23, i64 noundef %475)
  %490 = load i64, ptr %455, align 8, !tbaa !112
  %491 = load i64, ptr %42, align 8, !tbaa !21
  br label %492

492:                                              ; preds = %489, %473
  %493 = phi i64 [ %491, %489 ], [ %474, %473 ]
  %494 = phi i64 [ %490, %489 ], [ %475, %473 ]
  %495 = load i64, ptr %432, align 8, !tbaa !65
  %496 = add nsw i64 %495, %494
  %497 = and i64 %493, 2097152
  %498 = icmp eq i64 %497, 0
  br i1 %498, label %510, label %499

499:                                              ; preds = %492
  %500 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 12
  %501 = load i64, ptr %500, align 8, !tbaa !100
  %502 = sub nsw i64 %496, %501
  %503 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 8
  store i64 %502, ptr %503, align 8, !tbaa !23
  %504 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 10
  %505 = load i64, ptr %504, align 8, !tbaa !27
  %506 = icmp sgt i64 %502, %505
  %507 = icmp slt i64 %502, 0
  %508 = or i1 %507, %506
  br i1 %508, label %509, label %518, !prof !25

509:                                              ; preds = %499
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 827, ptr nonnull poison, ptr noundef nonnull @__func__.seekto, ptr noundef nonnull @.str.90, i64 noundef %502)
  br label %517

510:                                              ; preds = %492
  %511 = load i32, ptr %39, align 4, !tbaa !51
  %512 = call i64 @lseek64(i32 noundef %511, i64 noundef %496, i32 noundef 0) #16
  %513 = icmp eq i64 %512, %496
  br i1 %513, label %514, label %516, !prof !5

514:                                              ; preds = %510
  %515 = load i64, ptr %42, align 8, !tbaa !21
  br label %518

516:                                              ; preds = %510
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %21, i32 noundef 812, ptr nonnull poison, ptr noundef nonnull @__func__.fd_seekto, ptr noundef nonnull @.str.91, i64 noundef %494)
  br label %517

517:                                              ; preds = %516, %509
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1409, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.61, i64 noundef %23)
  br label %611

518:                                              ; preds = %514, %499
  %519 = phi i64 [ %515, %514 ], [ %493, %499 ]
  %520 = and i64 %519, 2048
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %525, label %522

522:                                              ; preds = %518
  %523 = load i32, ptr %427, align 8, !tbaa !74
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1411, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.62, i64 noundef %23, i64 noundef %260, i32 noundef %523)
  %524 = load i64, ptr %42, align 8, !tbaa !21
  br label %525

525:                                              ; preds = %522, %518
  %526 = phi i64 [ %524, %522 ], [ %519, %518 ]
  %527 = and i64 %526, 8388608
  %528 = icmp eq i64 %527, 0
  br i1 %528, label %540, label %529

529:                                              ; preds = %525
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6)
  store i64 0, ptr %6, align 8, !tbaa !20
  %530 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %6, i64 noundef 8)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6)
  %531 = icmp eq i32 %530, 0
  br i1 %531, label %533, label %532, !prof !5

532:                                              ; preds = %529
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1415, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.63, i64 noundef %23)
  br label %611

533:                                              ; preds = %529
  %534 = load i64, ptr %455, align 8, !tbaa !112
  %535 = add nsw i64 %534, 8
  store i64 %535, ptr %455, align 8, !tbaa !112
  %536 = load ptr, ptr %27, align 8, !tbaa !52
  %537 = load i32, ptr %427, align 8, !tbaa !74
  %538 = sext i32 %537 to i64
  %539 = getelementptr inbounds %struct.stream, ptr %536, i64 %538, i32 9
  store i64 %535, ptr %539, align 8, !tbaa !95
  br label %540

540:                                              ; preds = %533, %525
  %541 = load i8, ptr %35, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5)
  store i8 %541, ptr %5, align 1, !tbaa !39
  %542 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %5, i64 noundef 1)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5)
  %543 = icmp eq i32 %542, 0
  br i1 %543, label %544, label %555, !prof !5

544:                                              ; preds = %540
  %545 = load i64, ptr %38, align 8, !tbaa !104
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4)
  store i64 %545, ptr %4, align 8, !tbaa !20
  %546 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %4, i64 noundef %457)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4)
  %547 = icmp eq i32 %546, 0
  br i1 %547, label %548, label %555, !prof !5

548:                                              ; preds = %544
  %549 = load i64, ptr %36, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store i64 %549, ptr %3, align 8, !tbaa !20
  %550 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %3, i64 noundef %457)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  %551 = icmp eq i32 %550, 0
  br i1 %551, label %552, label %555, !prof !5

552:                                              ; preds = %548
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2)
  store i64 0, ptr %2, align 8, !tbaa !20
  %553 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %2, i64 noundef %457)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2)
  %554 = icmp eq i32 %553, 0
  br i1 %554, label %556, label %555, !prof !5

555:                                              ; preds = %548, %544, %540, %552
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1424, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.64, i64 noundef %23)
  br label %611

556:                                              ; preds = %552
  %557 = mul nsw i32 %269, 3
  %558 = add nsw i32 %557, 1
  %559 = sext i32 %558 to i64
  %560 = load i64, ptr %455, align 8, !tbaa !112
  %561 = add nsw i64 %560, %559
  store i64 %561, ptr %455, align 8, !tbaa !112
  %562 = load i64, ptr %42, align 8, !tbaa !21
  %563 = and i64 %562, 8388608
  %564 = icmp eq i64 %563, 0
  br i1 %564, label %579, label %565

565:                                              ; preds = %556
  %566 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 7
  %567 = call zeroext i1 @get_rand(ptr noundef nonnull %21, ptr noundef nonnull %566, i32 noundef 8) #16
  br i1 %567, label %568, label %611, !prof !5

568:                                              ; preds = %565
  %569 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef nonnull %566, i64 noundef 8)
  %570 = icmp eq i32 %569, 0
  br i1 %570, label %572, label %571, !prof !5

571:                                              ; preds = %568
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1432, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.65, i64 noundef %23)
  br label %611

572:                                              ; preds = %568
  %573 = load ptr, ptr %25, align 8, !tbaa !75
  %574 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %21, ptr noundef %573, i64 noundef %260, ptr noundef nonnull %566, i32 noundef 1) #16
  br i1 %574, label %575, label %611, !prof !5

575:                                              ; preds = %572
  %576 = load i64, ptr %455, align 8, !tbaa !112
  %577 = add nsw i64 %576, 8
  store i64 %577, ptr %455, align 8, !tbaa !112
  %578 = load i64, ptr %42, align 8, !tbaa !21
  br label %579

579:                                              ; preds = %556, %575
  %580 = phi i64 [ %561, %556 ], [ %577, %575 ]
  %581 = phi i64 [ %562, %556 ], [ %578, %575 ]
  %582 = and i64 %581, 2048
  %583 = icmp eq i64 %582, 0
  br i1 %583, label %585, label %584

584:                                              ; preds = %579
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %21, i32 noundef 4, i32 noundef 1438, ptr nonnull poison, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.66, i64 noundef %23, i64 noundef %580)
  br label %585

585:                                              ; preds = %584, %579
  %586 = load ptr, ptr %25, align 8, !tbaa !75
  %587 = call fastcc i32 @write_buf(ptr noundef nonnull %21, ptr noundef %586, i64 noundef %260)
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %590, label %589, !prof !5

589:                                              ; preds = %585
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 1441, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.compthread, ptr noundef nonnull @.str.67, i64 noundef %23)
  br label %611

590:                                              ; preds = %585
  %591 = load i64, ptr %455, align 8, !tbaa !112
  %592 = add nsw i64 %591, %260
  store i64 %592, ptr %455, align 8, !tbaa !112
  %593 = load ptr, ptr %25, align 8, !tbaa !75
  call void @free(ptr noundef %593) #16
  store ptr null, ptr %25, align 8, !tbaa !75
  %594 = call i32 @pthread_mutex_lock(ptr noundef nonnull @output_lock) #16
  %595 = icmp eq i32 %594, 0
  br i1 %595, label %597, label %596, !prof !5

596:                                              ; preds = %590
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 112, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lock_mutex, ptr noundef nonnull @.str.3)
  br label %597

597:                                              ; preds = %590, %596
  %598 = load i64, ptr @output_thread, align 8, !tbaa !20
  %599 = add nsw i64 %598, 1
  %600 = load i32, ptr %44, align 8, !tbaa !41
  %601 = sext i32 %600 to i64
  %602 = icmp eq i64 %599, %601
  %603 = select i1 %602, i64 0, i64 %599
  store i64 %603, ptr @output_thread, align 8
  %604 = call i32 @pthread_cond_broadcast(ptr noundef nonnull @output_cond) #16
  %605 = icmp eq i32 %604, 0
  br i1 %605, label %607, label %606, !prof !5

606:                                              ; preds = %597
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 126, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cond_broadcast, ptr noundef nonnull @.str.94)
  br label %607

607:                                              ; preds = %597, %606
  %608 = call i32 @pthread_mutex_unlock(ptr noundef nonnull @output_lock) #16
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %611, label %610, !prof !5

610:                                              ; preds = %607
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 105, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.unlock_mutex, ptr noundef nonnull @.str.2)
  br label %611

611:                                              ; preds = %220, %354, %356, %393, %294, %610, %607, %572, %565, %589, %571, %555, %532, %517, %460, %453, %230, %219, %205
  %612 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %23, i32 4
  %613 = call i32 @sem_post(ptr noundef nonnull %612) #16
  %614 = icmp eq i32 %613, 0
  br i1 %614, label %618, label %615, !prof !5

615:                                              ; preds = %611
  %616 = tail call ptr @__errno_location() #19
  %617 = load i32, ptr %616, align 4, !tbaa !42
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %21, i32 noundef 161, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.cksem_post, ptr noundef nonnull @.str.39, i32 noundef %617, ptr noundef nonnull %612)
  br label %618

618:                                              ; preds = %615, %611
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @fsync(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @bzip2_compress_buf(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !77
  %6 = tail call i64 @round_up_page(ptr noundef %0, i64 noundef %5) #16
  %7 = trunc i64 %6 to i32
  store i32 %7, ptr %3, align 4, !tbaa !42
  %8 = load ptr, ptr %1, align 8, !tbaa !75
  %9 = load i64, ptr %4, align 8, !tbaa !77
  %10 = tail call fastcc i32 @lzo_compresses(ptr noundef %0, ptr noundef %8, i64 noundef %9)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %55, label %12

12:                                               ; preds = %2
  %13 = and i64 %6, 4294967295
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 212, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_compress_buf, ptr noundef nonnull @.str.84)
  br label %55

17:                                               ; preds = %12
  %18 = load ptr, ptr %1, align 8, !tbaa !75
  %19 = load i64, ptr %4, align 8, !tbaa !77
  %20 = trunc i64 %19 to i32
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %22 = load i8, ptr %21, align 8, !tbaa !105
  %23 = zext i8 %22 to i32
  %24 = mul nuw nsw i32 %23, 10
  %25 = call i32 @BZ2_bzBuffToBuffCompress(ptr noundef nonnull %14, ptr noundef nonnull %3, ptr noundef %18, i32 noundef %20, i32 noundef %23, i32 noundef 0, i32 noundef %24) #16
  switch i32 %25, label %33 [
    i32 -8, label %26
    i32 0, label %39
  ], !prof !114

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = and i64 %28, 2048
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %26
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 224, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_compress_buf, ptr noundef nonnull @.str.76)
  br label %32

32:                                               ; preds = %26, %31
  call void @free(ptr noundef nonnull %14) #16
  br label %55

33:                                               ; preds = %17
  call void @free(ptr noundef nonnull %14) #16
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %35 = load i64, ptr %34, align 8, !tbaa !21
  %36 = and i64 %35, 2048
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %55, label %38

38:                                               ; preds = %33
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 232, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_compress_buf, ptr noundef nonnull @.str.85)
  br label %55

39:                                               ; preds = %17
  %40 = load i32, ptr %3, align 4, !tbaa !42
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 3
  %43 = load i64, ptr %42, align 8, !tbaa !104
  %44 = icmp sgt i64 %43, %41
  br i1 %44, label %52, label %45, !prof !5

45:                                               ; preds = %39
  %46 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %47 = load i64, ptr %46, align 8, !tbaa !21
  %48 = and i64 %47, 2048
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %45
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 237, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_compress_buf, ptr noundef nonnull @.str.76)
  br label %51

51:                                               ; preds = %45, %50
  call void @free(ptr noundef nonnull %14) #16
  br label %55

52:                                               ; preds = %39
  store i64 %41, ptr %42, align 8, !tbaa !104
  %53 = load ptr, ptr %1, align 8, !tbaa !75
  call void @free(ptr noundef %53) #16
  store ptr %14, ptr %1, align 8, !tbaa !75
  %54 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 1
  store i8 4, ptr %54, align 8, !tbaa !103
  br label %55

55:                                               ; preds = %33, %38, %2, %52, %51, %32, %16
  %56 = phi i32 [ 0, %32 ], [ 0, %51 ], [ 0, %52 ], [ -1, %16 ], [ 0, %2 ], [ -1, %38 ], [ -1, %33 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #16
  ret i32 %56
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @gzip_compress_buf(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %4 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 2
  %5 = load i64, ptr %4, align 8, !tbaa !77
  %6 = tail call i64 @round_up_page(ptr noundef %0, i64 noundef %5) #16
  store i64 %6, ptr %3, align 8, !tbaa !20
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #20
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 258, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_compress_buf, ptr noundef nonnull @.str.86)
  br label %45

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !75
  %12 = load i64, ptr %4, align 8, !tbaa !77
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %14 = load i8, ptr %13, align 8, !tbaa !105
  %15 = zext i8 %14 to i32
  %16 = call i32 @compress2(ptr noundef nonnull %7, ptr noundef nonnull %3, ptr noundef %11, i64 noundef %12, i32 noundef %15) #16
  switch i32 %16, label %24 [
    i32 -5, label %17
    i32 0, label %30
  ], !prof !114

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %19 = load i64, ptr %18, align 8, !tbaa !21
  %20 = and i64 %19, 2048
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %17
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 269, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_compress_buf, ptr noundef nonnull @.str.76)
  br label %23

23:                                               ; preds = %17, %22
  call void @free(ptr noundef nonnull %7) #16
  br label %45

24:                                               ; preds = %10
  call void @free(ptr noundef nonnull %7) #16
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %26 = load i64, ptr %25, align 8, !tbaa !21
  %27 = and i64 %26, 2048
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %45, label %29

29:                                               ; preds = %24
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 277, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_compress_buf, ptr noundef nonnull @.str.87)
  br label %45

30:                                               ; preds = %10
  %31 = load i64, ptr %3, align 8, !tbaa !20
  %32 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !104
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %42, label %35, !prof !5

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %37 = load i64, ptr %36, align 8, !tbaa !21
  %38 = and i64 %37, 2048
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 282, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_compress_buf, ptr noundef nonnull @.str.76)
  br label %41

41:                                               ; preds = %35, %40
  call void @free(ptr noundef nonnull %7) #16
  br label %45

42:                                               ; preds = %30
  store i64 %31, ptr %32, align 8, !tbaa !104
  %43 = load ptr, ptr %1, align 8, !tbaa !75
  call void @free(ptr noundef %43) #16
  store ptr %7, ptr %1, align 8, !tbaa !75
  %44 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 1
  store i8 7, ptr %44, align 8, !tbaa !103
  br label %45

45:                                               ; preds = %24, %29, %42, %41, %23, %9
  %46 = phi i32 [ 0, %23 ], [ 0, %41 ], [ 0, %42 ], [ -1, %9 ], [ -1, %29 ], [ -1, %24 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  ret i32 %46
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @zpaq_compress_buf(ptr noundef %0, ptr nocapture noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !75
  %6 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !77
  %8 = tail call fastcc i32 @lzo_compresses(ptr noundef %0, ptr noundef %5, i64 noundef %7)
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %44, label %10

10:                                               ; preds = %3
  %11 = load i64, ptr %6, align 8, !tbaa !77
  %12 = add nsw i64 %11, 10000
  %13 = tail call i64 @round_up_page(ptr noundef %0, i64 noundef %12) #16
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #20
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 178, ptr nonnull poison, ptr noundef nonnull @__func__.zpaq_compress_buf, ptr noundef nonnull @.str.88)
  br label %44

17:                                               ; preds = %10
  store i64 0, ptr %4, align 8, !tbaa !20
  %18 = load ptr, ptr %1, align 8, !tbaa !75
  %19 = load i64, ptr %6, align 8, !tbaa !77
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %21 = load i8, ptr %20, align 8, !tbaa !105
  %22 = lshr i8 %21, 2
  %23 = add nuw nsw i8 %22, 1
  %24 = zext i8 %23 to i32
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !29
  %27 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %28 = load i64, ptr %27, align 8, !tbaa !21
  %29 = and i64 %28, 1
  %30 = icmp ne i64 %29, 0
  call void @zpaq_compress(ptr noundef nonnull %14, ptr noundef nonnull %4, ptr noundef %18, i64 noundef %19, i32 noundef %24, ptr noundef %26, i1 noundef zeroext %30, i64 noundef %2) #16
  %31 = load i64, ptr %4, align 8, !tbaa !20
  %32 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 3
  %33 = load i64, ptr %32, align 8, !tbaa !104
  %34 = icmp slt i64 %31, %33
  br i1 %34, label %41, label %35, !prof !5

35:                                               ; preds = %17
  %36 = load i64, ptr %27, align 8, !tbaa !21
  %37 = and i64 %36, 2048
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 188, ptr nonnull poison, ptr noundef nonnull @__func__.zpaq_compress_buf, ptr noundef nonnull @.str.76)
  br label %40

40:                                               ; preds = %35, %39
  call void @free(ptr noundef nonnull %14) #16
  br label %44

41:                                               ; preds = %17
  store i64 %31, ptr %32, align 8, !tbaa !104
  %42 = load ptr, ptr %1, align 8, !tbaa !75
  call void @free(ptr noundef %42) #16
  store ptr %14, ptr %1, align 8, !tbaa !75
  %43 = getelementptr inbounds %struct.compress_thread, ptr %1, i64 0, i32 1
  store i8 8, ptr %43, align 8, !tbaa !103
  br label %44

44:                                               ; preds = %3, %41, %40, %16
  %45 = phi i32 [ 0, %40 ], [ 0, %41 ], [ -1, %16 ], [ 0, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %45
}

declare zeroext i1 @get_rand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @cond_wait(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call i32 @pthread_cond_wait(ptr noundef nonnull @output_cond, ptr noundef nonnull @output_lock) #16
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %5, label %4, !prof !5

4:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 119, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.cond_wait, ptr noundef nonnull @.str.89)
  br label %5

5:                                                ; preds = %1, %4
  ret void
}

declare zeroext i1 @write_magic(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @write_buf(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = icmp sgt i64 %2, 0
  br i1 %4, label %5, label %24

5:                                                ; preds = %3, %12
  %6 = phi i64 [ %15, %12 ], [ 0, %3 ]
  %7 = phi ptr [ %14, %12 ], [ %1, %3 ]
  %8 = phi i64 [ %13, %12 ], [ %2, %3 ]
  %9 = tail call i64 @llvm.smin.i64(i64 %8, i64 1048576000)
  %10 = tail call i64 @put_fdout(ptr noundef %0, ptr noundef %7, i64 noundef %9)
  %11 = icmp slt i64 %10, 1
  br i1 %11, label %17, label %12, !prof !25

12:                                               ; preds = %5
  %13 = sub nsw i64 %8, %10
  %14 = getelementptr inbounds i8, ptr %7, i64 %10
  %15 = add nsw i64 %10, %6
  %16 = icmp sgt i64 %13, 0
  br i1 %16, label %5, label %17, !llvm.loop !31

17:                                               ; preds = %5, %12
  %18 = phi i64 [ %15, %12 ], [ %10, %5 ]
  %19 = icmp eq i64 %18, -1
  br i1 %19, label %20, label %24, !prof !25

20:                                               ; preds = %17
  %21 = tail call ptr @__errno_location() #19
  %22 = load i32, ptr %21, align 4, !tbaa !42
  %23 = tail call ptr @strerror(i32 noundef %22) #16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 748, ptr nonnull poison, ptr noundef nonnull @__func__.write_buf, ptr noundef nonnull @.str.92, i64 noundef %2, ptr noundef %23)
  br label %28

24:                                               ; preds = %3, %17
  %25 = phi i64 [ %18, %17 ], [ 0, %3 ]
  %26 = icmp eq i64 %25, %2
  br i1 %26, label %28, label %27, !prof !5

27:                                               ; preds = %24
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 752, ptr nonnull poison, ptr noundef nonnull @__func__.write_buf, ptr noundef nonnull @.str.93, i64 noundef %2, i64 noundef %25)
  br label %28

28:                                               ; preds = %24, %27, %20
  %29 = phi i32 [ -1, %20 ], [ -1, %27 ], [ 0, %24 ]
  ret i32 %29
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @lzo_compresses(ptr noundef %0, ptr noundef %1, i64 noundef %2) unnamed_addr #0 {
  %4 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %5 = icmp ugt i64 %2, 52428800
  %6 = select i1 %5, i64 10485760, i64 2560
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %8 = load i64, ptr %7, align 8, !tbaa !21
  %9 = and i64 %8, 1048576
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %69, label %11

11:                                               ; preds = %3
  %12 = tail call noalias dereferenceable_or_null(131072) ptr @malloc(i64 noundef 131072) #20
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %15, !prof !25

14:                                               ; preds = %11
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1867, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lzo_compresses, ptr noundef nonnull @.str.77)
  br label %69

15:                                               ; preds = %11
  store i64 11141187, ptr %4, align 8, !tbaa !20
  %16 = tail call noalias dereferenceable_or_null(11141187) ptr @malloc(i64 noundef 11141187) #20
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %18, !prof !25

18:                                               ; preds = %15
  %19 = tail call i64 @llvm.umin.i64(i64 %6, i64 %2)
  %20 = icmp eq i64 %2, 0
  br i1 %20, label %55, label %21

21:                                               ; preds = %18
  %22 = call i32 @lzo1x_1_compress(ptr noundef %1, i64 noundef %19, ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %12) #16
  %23 = load i64, ptr %4, align 8, !tbaa !20
  %24 = call i64 @llvm.umin.i64(i64 %23, i64 4294967295)
  %25 = icmp ult i64 %23, %19
  br i1 %25, label %47, label %27

26:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %12) #16
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1875, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.lzo_compresses, ptr noundef nonnull @.str.78)
  br label %69

27:                                               ; preds = %21, %36
  %28 = phi i64 [ %45, %36 ], [ %24, %21 ]
  %29 = phi i32 [ %42, %36 ], [ 1, %21 ]
  %30 = phi i64 [ %41, %36 ], [ %19, %21 ]
  %31 = phi i64 [ %34, %36 ], [ %2, %21 ]
  %32 = phi ptr [ %37, %36 ], [ %1, %21 ]
  %33 = phi i64 [ %40, %36 ], [ %6, %21 ]
  %34 = sub i64 %31, %30
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %47, label %36

36:                                               ; preds = %27
  %37 = getelementptr inbounds i8, ptr %32, i64 %30
  %38 = icmp ult i64 %33, 10485760
  %39 = zext i1 %38 to i64
  %40 = shl i64 %33, %39
  %41 = call i64 @llvm.umin.i64(i64 %34, i64 %40)
  %42 = add nuw nsw i32 %29, 1
  %43 = call i32 @lzo1x_1_compress(ptr noundef %37, i64 noundef %41, ptr noundef nonnull %16, ptr noundef nonnull %4, ptr noundef nonnull %12) #16
  %44 = load i64, ptr %4, align 8, !tbaa !20
  %45 = call i64 @llvm.umin.i64(i64 %44, i64 %28)
  %46 = icmp ult i64 %44, %41
  br i1 %46, label %47, label %27, !llvm.loop !115

47:                                               ; preds = %36, %27, %21
  %48 = phi i64 [ %19, %21 ], [ %41, %36 ], [ %30, %27 ]
  %49 = phi i32 [ 1, %21 ], [ %42, %36 ], [ %29, %27 ]
  %50 = phi i64 [ %24, %21 ], [ %45, %36 ], [ %28, %27 ]
  %51 = phi ptr [ @.str.81, %21 ], [ @.str.81, %36 ], [ @.str.80, %27 ]
  %52 = phi i32 [ 1, %21 ], [ 1, %36 ], [ 0, %27 ]
  %53 = load i64, ptr %7, align 8, !tbaa !21
  %54 = uitofp i64 %50 to double
  br label %55

55:                                               ; preds = %47, %18
  %56 = phi i64 [ %8, %18 ], [ %53, %47 ]
  %57 = phi i64 [ %19, %18 ], [ %48, %47 ]
  %58 = phi ptr [ @.str.80, %18 ], [ %51, %47 ]
  %59 = phi i32 [ 0, %18 ], [ %52, %47 ]
  %60 = phi i32 [ 0, %18 ], [ %49, %47 ]
  %61 = phi double [ 0x41EFFFFFFFE00000, %18 ], [ %54, %47 ]
  %62 = and i64 %56, 2048
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %55
  %65 = uitofp i64 %57 to double
  %66 = fdiv double %61, %65
  %67 = fmul double %66, 1.000000e+02
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1902, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_compresses, ptr noundef nonnull @.str.79, ptr noundef nonnull %58, i64 noundef %2, double noundef %67, i32 noundef %60)
  br label %68

68:                                               ; preds = %55, %64
  call void @free(ptr noundef %12) #16
  call void @free(ptr noundef %16) #16
  br label %69

69:                                               ; preds = %3, %68, %26, %14
  %70 = phi i32 [ 0, %14 ], [ 0, %26 ], [ %59, %68 ], [ 1, %3 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  ret i32 %70
}

declare i64 @round_up_page(ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @LzmaCompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @lzo1x_1_compress(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BZ2_bzBuffToBuffCompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @compress2(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

declare void @zpaq_compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noalias ptr @ucompthread(ptr nocapture noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = getelementptr inbounds %struct.stream_thread_struct, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !80
  %10 = load i32, ptr %0, align 8, !tbaa !78
  %11 = sext i32 %10 to i64
  tail call void @free(ptr noundef %0) #16
  %12 = load ptr, ptr @ucthread, align 8, !tbaa !17
  %13 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i64 %11
  %14 = getelementptr inbounds %struct.rzip_control, ptr %9, i64 0, i32 31
  %15 = load i8, ptr %14, align 4, !tbaa !102
  %16 = sext i8 %15 to i32
  %17 = tail call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %16) #16
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %20, !prof !25

19:                                               ; preds = %1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %9, i32 noundef 1516, ptr nonnull poison, ptr noundef nonnull @__func__.ucompthread, ptr noundef nonnull @.str.47)
  br label %20

20:                                               ; preds = %19, %1
  %21 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i64 %11, i32 4
  %22 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i64 %11, i32 1
  %23 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i64 %11, i32 2
  %24 = getelementptr inbounds %struct.rzip_control, ptr %9, i64 0, i32 17
  %25 = getelementptr inbounds %struct.rzip_control, ptr %9, i64 0, i32 26
  %26 = getelementptr inbounds %struct.rzip_control, ptr %9, i64 0, i32 24
  br label %27

27:                                               ; preds = %167, %20
  %28 = phi i1 [ false, %167 ], [ true, %20 ]
  %29 = phi i32 [ -1, %167 ], [ 0, %20 ]
  %30 = load i8, ptr %21, align 8, !tbaa !91
  switch i8 %30, label %149 [
    i8 3, label %150
    i8 6, label %31
    i8 5, label %54
    i8 4, label %77
    i8 7, label %104
    i8 8, label %127
  ]

31:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #16
  %32 = load i64, ptr %22, align 8, !tbaa !90
  store i64 %32, ptr %6, align 8, !tbaa !20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %33 = load i64, ptr %23, align 8, !tbaa !89
  store i64 %33, ptr %7, align 8, !tbaa !20
  %34 = load ptr, ptr %13, align 8, !tbaa !88
  %35 = call i64 @round_up_page(ptr noundef %9, i64 noundef %32) #16
  %36 = call noalias ptr @malloc(i64 noundef %35) #20
  store ptr %36, ptr %13, align 8, !tbaa !88
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %39, !prof !25

38:                                               ; preds = %31
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 548, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_decompress_buf, ptr noundef nonnull @.str.107, i64 noundef %32)
  br label %50

39:                                               ; preds = %31
  %40 = call i32 @LzmaUncompress(ptr noundef nonnull %36, ptr noundef nonnull %6, ptr noundef %34, ptr noundef nonnull %7, ptr noundef nonnull %26, i64 noundef 5) #16
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %44, label %42, !prof !5

42:                                               ; preds = %39
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 557, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_decompress_buf, ptr noundef nonnull @.str.108, i32 noundef %40)
  %43 = load ptr, ptr %13, align 8, !tbaa !88
  call void @free(ptr noundef %43) #16
  br label %50

44:                                               ; preds = %39
  %45 = load i64, ptr %6, align 8, !tbaa !20
  %46 = load i64, ptr %22, align 8, !tbaa !90
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %49, label %48, !prof !5

48:                                               ; preds = %44
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 565, ptr nonnull poison, ptr noundef nonnull @__func__.lzma_decompress_buf, ptr noundef nonnull @.str.109, i64 noundef %45, i64 noundef %46)
  call void @free(ptr noundef %34) #16
  br label %50

49:                                               ; preds = %44
  call void @free(ptr noundef %34) #16
  br label %52

50:                                               ; preds = %48, %42, %38
  %51 = phi ptr [ null, %48 ], [ %34, %38 ], [ %34, %42 ]
  store ptr %51, ptr %13, align 8, !tbaa !88
  br label %52

52:                                               ; preds = %49, %50
  %53 = phi i32 [ -1, %50 ], [ 0, %49 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #16
  br label %150

54:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  %55 = load i64, ptr %22, align 8, !tbaa !90
  store i64 %55, ptr %5, align 8, !tbaa !20
  %56 = load ptr, ptr %13, align 8, !tbaa !88
  %57 = call i64 @round_up_page(ptr noundef %9, i64 noundef %55) #16
  %58 = call noalias ptr @malloc(i64 noundef %57) #20
  store ptr %58, ptr %13, align 8, !tbaa !88
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61, !prof !25

60:                                               ; preds = %54
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 585, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_decompress_buf, ptr noundef nonnull @.str.110, i64 noundef %55)
  br label %73

61:                                               ; preds = %54
  %62 = load i64, ptr %23, align 8, !tbaa !89
  %63 = call i32 @lzo1x_decompress(ptr noundef %56, i64 noundef %62, ptr noundef nonnull %58, ptr noundef nonnull %5, ptr noundef null) #16
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %67, label %65, !prof !5

65:                                               ; preds = %61
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 592, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_decompress_buf, ptr noundef nonnull @.str.111, i32 noundef %63)
  %66 = load ptr, ptr %13, align 8, !tbaa !88
  call void @free(ptr noundef %66) #16
  br label %73

67:                                               ; preds = %61
  %68 = load i64, ptr %5, align 8, !tbaa !20
  %69 = load i64, ptr %22, align 8, !tbaa !90
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %72, label %71, !prof !5

71:                                               ; preds = %67
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 600, ptr nonnull poison, ptr noundef nonnull @__func__.lzo_decompress_buf, ptr noundef nonnull @.str.112, i64 noundef %68, i64 noundef %69)
  call void @free(ptr noundef %56) #16
  br label %73

72:                                               ; preds = %67
  call void @free(ptr noundef %56) #16
  br label %75

73:                                               ; preds = %71, %65, %60
  %74 = phi ptr [ null, %71 ], [ %56, %60 ], [ %56, %65 ]
  store ptr %74, ptr %13, align 8, !tbaa !88
  br label %75

75:                                               ; preds = %72, %73
  %76 = phi i32 [ -1, %73 ], [ 0, %72 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %150

77:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #16
  %78 = load i64, ptr %22, align 8, !tbaa !90
  %79 = trunc i64 %78 to i32
  store i32 %79, ptr %4, align 4, !tbaa !42
  %80 = load ptr, ptr %13, align 8, !tbaa !88
  %81 = and i64 %78, 4294967295
  %82 = call i64 @round_up_page(ptr noundef %9, i64 noundef %81) #16
  %83 = call noalias ptr @malloc(i64 noundef %82) #20
  store ptr %83, ptr %13, align 8, !tbaa !88
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %86, !prof !25

85:                                               ; preds = %77
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 477, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_decompress_buf, ptr noundef nonnull @.str.113, i32 noundef %79)
  br label %100

86:                                               ; preds = %77
  %87 = load i64, ptr %23, align 8, !tbaa !89
  %88 = trunc i64 %87 to i32
  %89 = call i32 @BZ2_bzBuffToBuffDecompress(ptr noundef nonnull %83, ptr noundef nonnull %4, ptr noundef %80, i32 noundef %88, i32 noundef 0, i32 noundef 0) #16
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91, !prof !5

91:                                               ; preds = %86
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 484, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_decompress_buf, ptr noundef nonnull @.str.114, i32 noundef %89)
  %92 = load ptr, ptr %13, align 8, !tbaa !88
  call void @free(ptr noundef %92) #16
  br label %100

93:                                               ; preds = %86
  %94 = load i32, ptr %4, align 4, !tbaa !42
  %95 = zext i32 %94 to i64
  %96 = load i64, ptr %22, align 8, !tbaa !90
  %97 = icmp eq i64 %96, %95
  br i1 %97, label %99, label %98, !prof !5

98:                                               ; preds = %93
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 492, ptr nonnull poison, ptr noundef nonnull @__func__.bzip2_decompress_buf, ptr noundef nonnull @.str.115, i32 noundef %94, i64 noundef %96)
  call void @free(ptr noundef %80) #16
  br label %100

99:                                               ; preds = %93
  call void @free(ptr noundef %80) #16
  br label %102

100:                                              ; preds = %98, %91, %85
  %101 = phi ptr [ null, %98 ], [ %80, %85 ], [ %80, %91 ]
  store ptr %101, ptr %13, align 8, !tbaa !88
  br label %102

102:                                              ; preds = %99, %100
  %103 = phi i32 [ -1, %100 ], [ 0, %99 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #16
  br label %150

104:                                              ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16
  %105 = load i64, ptr %22, align 8, !tbaa !90
  store i64 %105, ptr %3, align 8, !tbaa !20
  %106 = load ptr, ptr %13, align 8, !tbaa !88
  %107 = call i64 @round_up_page(ptr noundef %9, i64 noundef %105) #16
  %108 = call noalias ptr @malloc(i64 noundef %107) #20
  store ptr %108, ptr %13, align 8, !tbaa !88
  %109 = icmp eq ptr %108, null
  br i1 %109, label %110, label %111, !prof !25

110:                                              ; preds = %104
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 512, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_decompress_buf, ptr noundef nonnull @.str.116, i64 noundef %105)
  br label %123

111:                                              ; preds = %104
  %112 = load i64, ptr %23, align 8, !tbaa !89
  %113 = call i32 @uncompress(ptr noundef nonnull %108, ptr noundef nonnull %3, ptr noundef %106, i64 noundef %112) #16
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %117, label %115, !prof !5

115:                                              ; preds = %111
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 519, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_decompress_buf, ptr noundef nonnull @.str.117, i32 noundef %113)
  %116 = load ptr, ptr %13, align 8, !tbaa !88
  call void @free(ptr noundef %116) #16
  br label %123

117:                                              ; preds = %111
  %118 = load i64, ptr %3, align 8, !tbaa !20
  %119 = load i64, ptr %22, align 8, !tbaa !90
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %122, label %121, !prof !5

121:                                              ; preds = %117
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 527, ptr nonnull poison, ptr noundef nonnull @__func__.gzip_decompress_buf, ptr noundef nonnull @.str.118, i64 noundef %118, i64 noundef %119)
  call void @free(ptr noundef %106) #16
  br label %123

122:                                              ; preds = %117
  call void @free(ptr noundef %106) #16
  br label %125

123:                                              ; preds = %121, %115, %110
  %124 = phi ptr [ null, %121 ], [ %106, %110 ], [ %106, %115 ]
  store ptr %124, ptr %13, align 8, !tbaa !88
  br label %125

125:                                              ; preds = %122, %123
  %126 = phi i32 [ -1, %123 ], [ 0, %122 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16
  br label %150

127:                                              ; preds = %27
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  %128 = load i64, ptr %22, align 8, !tbaa !90
  %129 = load ptr, ptr %13, align 8, !tbaa !88
  %130 = call i64 @round_up_page(ptr noundef %9, i64 noundef %128) #16
  %131 = call noalias ptr @malloc(i64 noundef %130) #20
  store ptr %131, ptr %13, align 8, !tbaa !88
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %134, !prof !25

133:                                              ; preds = %127
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %9, i32 noundef 447, ptr nonnull poison, ptr noundef nonnull @__func__.zpaq_decompress_buf, ptr noundef nonnull @.str.116, i64 noundef %128)
  br label %145

134:                                              ; preds = %127
  store i64 0, ptr %2, align 8, !tbaa !20
  %135 = load i64, ptr %23, align 8, !tbaa !89
  %136 = load ptr, ptr %24, align 8, !tbaa !29
  %137 = load i64, ptr %25, align 8, !tbaa !21
  %138 = and i64 %137, 1
  %139 = icmp ne i64 %138, 0
  call void @zpaq_decompress(ptr noundef nonnull %131, ptr noundef nonnull %2, ptr noundef %129, i64 noundef %135, ptr noundef %136, i1 noundef zeroext %139, i64 noundef %11) #16
  %140 = load i64, ptr %2, align 8, !tbaa !20
  %141 = load i64, ptr %22, align 8, !tbaa !90
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %144, label %143, !prof !5

143:                                              ; preds = %134
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %9, i32 noundef 457, ptr nonnull poison, ptr noundef nonnull @__func__.zpaq_decompress_buf, ptr noundef nonnull @.str.118, i64 noundef %140, i64 noundef %141)
  call void @free(ptr noundef %129) #16
  br label %145

144:                                              ; preds = %134
  call void @free(ptr noundef %129) #16
  br label %147

145:                                              ; preds = %143, %133
  %146 = phi ptr [ %129, %133 ], [ null, %143 ]
  store ptr %146, ptr %13, align 8, !tbaa !88
  br label %147

147:                                              ; preds = %144, %145
  %148 = phi i32 [ -1, %145 ], [ 0, %144 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  br label %150

149:                                              ; preds = %27
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %9, i32 noundef 1537, ptr nonnull poison, ptr noundef nonnull @__func__.ucompthread, ptr noundef nonnull @.str.103)
  br label %177

150:                                              ; preds = %27, %52, %75, %102, %125, %147
  %151 = phi i32 [ %148, %147 ], [ %126, %125 ], [ %103, %102 ], [ %76, %75 ], [ %53, %52 ], [ %29, %27 ]
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %169, label %153, !prof !5

153:                                              ; preds = %150
  br i1 %28, label %155, label %154, !prof !5

154:                                              ; preds = %153
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %9, i32 noundef 1546, ptr nonnull poison, ptr noundef nonnull @__func__.ucompthread, ptr noundef nonnull @.str.104)
  br label %177

155:                                              ; preds = %153
  %156 = load i64, ptr %25, align 8, !tbaa !21
  %157 = and i64 %156, 2048
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %155
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %9, i32 noundef 4, i32 noundef 1547, ptr nonnull poison, ptr noundef nonnull @__func__.ucompthread, ptr noundef nonnull @.str.105)
  br label %160

160:                                              ; preds = %159, %155
  %161 = call zeroext i1 @lock_mutex(ptr noundef nonnull %9, ptr noundef nonnull @output_lock)
  %162 = load i64, ptr @output_thread, align 8, !tbaa !20
  %163 = icmp eq i64 %162, %11
  br i1 %163, label %167, label %164

164:                                              ; preds = %160, %164
  call fastcc void @cond_wait(ptr noundef %9)
  %165 = load i64, ptr @output_thread, align 8, !tbaa !20
  %166 = icmp eq i64 %165, %11
  br i1 %166, label %167, label %164, !llvm.loop !116

167:                                              ; preds = %164, %160
  %168 = call zeroext i1 @unlock_mutex(ptr noundef %9, ptr noundef nonnull @output_lock)
  br label %27

169:                                              ; preds = %150
  %170 = load i64, ptr %25, align 8, !tbaa !21
  %171 = and i64 %170, 2048
  %172 = icmp eq i64 %171, 0
  br i1 %172, label %177, label %173

173:                                              ; preds = %169
  %174 = load i64, ptr %22, align 8, !tbaa !90
  %175 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i64 %11, i32 6
  %176 = load i32, ptr %175, align 8, !tbaa !92
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %9, i32 noundef 4, i32 noundef 1559, ptr nonnull poison, ptr noundef nonnull @__func__.ucompthread, ptr noundef nonnull @.str.106, i64 noundef %11, i64 noundef %174, i32 noundef %176)
  br label %177

177:                                              ; preds = %169, %173, %154, %149
  ret ptr null
}

declare i32 @LzmaUncompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare i32 @lzo1x_decompress(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @BZ2_bzBuffToBuffDecompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @zpaq_decompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind }
attributes #17 = { cold }
attributes #18 = { nounwind allocsize(0,1) }
attributes #19 = { nounwind willreturn memory(none) }
attributes #20 = { nounwind allocsize(0) }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!"branch_weights", i32 2000, i32 1}
!6 = !{!7, !8, i64 720}
!7 = !{!"rzip_control", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !8, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !8, i64 136, !8, i64 144, !8, i64 152, !9, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !9, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !12, i64 240, !9, i64 244, !9, i64 245, !9, i64 246, !11, i64 248, !11, i64 256, !12, i64 264, !12, i64 268, !12, i64 272, !11, i64 280, !11, i64 288, !8, i64 296, !8, i64 304, !9, i64 312, !8, i64 320, !12, i64 328, !8, i64 336, !9, i64 344, !9, i64 384, !9, i64 385, !13, i64 386, !9, i64 392, !14, i64 424, !9, i64 580, !11, i64 600, !15, i64 608, !8, i64 632, !9, i64 640, !8, i64 648, !11, i64 656, !11, i64 664, !8, i64 672, !9, i64 680, !8, i64 688, !9, i64 696, !12, i64 700, !8, i64 704, !8, i64 712, !8, i64 720, !8, i64 728, !9, i64 736, !16, i64 744, !8, i64 832, !8, i64 840, !8, i64 848, !8, i64 856}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"long", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!"_Bool", !9, i64 0}
!14 = !{!"md5_ctx", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !9, i64 16, !12, i64 24, !9, i64 28}
!15 = !{!"checksum", !8, i64 0, !8, i64 8, !11, i64 16}
!16 = !{!"sliding_buffer", !8, i64 0, !8, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80}
!17 = !{!8, !8, i64 0}
!18 = !{!7, !8, i64 728}
!19 = !{!7, !9, i64 696}
!20 = !{!11, !11, i64 0}
!21 = !{!7, !11, i64 208}
!22 = !{!7, !12, i64 268}
!23 = !{!7, !11, i64 64}
!24 = !{!7, !11, i64 88}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!7, !8, i64 56}
!27 = !{!7, !11, i64 80}
!28 = !{!7, !12, i64 700}
!29 = !{!7, !8, i64 136}
!30 = !{!7, !8, i64 144}
!31 = distinct !{!31, !32}
!32 = !{!"llvm.loop.mustprogress"}
!33 = !{!7, !12, i64 264}
!34 = !{!7, !11, i64 112}
!35 = !{!7, !11, i64 128}
!36 = !{!7, !11, i64 120}
!37 = distinct !{!37, !32}
!38 = !{!7, !8, i64 104}
!39 = !{!9, !9, i64 0}
!40 = distinct !{!40, !32}
!41 = !{!7, !12, i64 240}
!42 = !{!12, !12, i64 0}
!43 = distinct !{!43, !32}
!44 = distinct !{!44, !32}
!45 = !{!7, !11, i64 256}
!46 = !{!47, !11, i64 56}
!47 = !{!"stream_info", !8, i64 0, !9, i64 8, !12, i64 12, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80, !9, i64 84}
!48 = !{!47, !11, i64 16}
!49 = !{!47, !9, i64 84}
!50 = !{!47, !9, i64 8}
!51 = !{!47, !12, i64 12}
!52 = !{!47, !8, i64 0}
!53 = !{!7, !11, i64 168}
!54 = !{!7, !11, i64 176}
!55 = distinct !{!55, !32}
!56 = distinct !{!56, !32}
!57 = !{!58, !8, i64 8}
!58 = !{!"stream", !11, i64 0, !8, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !12, i64 64, !11, i64 72}
!59 = !{!58, !12, i64 64}
!60 = !{!7, !9, i64 245}
!61 = !{!7, !9, i64 246}
!62 = !{!"branch_weights", i32 2000, i32 2001, i32 4000000}
!63 = !{!7, !9, i64 384}
!64 = !{!7, !11, i64 248}
!65 = !{!47, !11, i64 32}
!66 = !{!58, !11, i64 56}
!67 = !{!58, !11, i64 40}
!68 = !{!58, !11, i64 48}
!69 = !{!58, !11, i64 0}
!70 = !{!47, !11, i64 40}
!71 = distinct !{!71, !32}
!72 = !{!73, !8, i64 64}
!73 = !{!"compress_thread", !8, i64 0, !9, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !8, i64 64, !12, i64 72, !9, i64 76}
!74 = !{!73, !12, i64 72}
!75 = !{!73, !8, i64 0}
!76 = !{!58, !11, i64 16}
!77 = !{!73, !11, i64 16}
!78 = !{!79, !12, i64 0}
!79 = !{!"stream_thread_struct", !12, i64 0, !8, i64 8}
!80 = !{!79, !8, i64 8}
!81 = distinct !{!81, !32}
!82 = !{!58, !11, i64 24}
!83 = !{!58, !9, i64 32}
!84 = !{!85, !12, i64 36}
!85 = !{!"uncomp_thread", !8, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !9, i64 32, !12, i64 36, !12, i64 40}
!86 = !{!7, !11, i64 184}
!87 = !{!47, !11, i64 48}
!88 = !{!85, !8, i64 0}
!89 = !{!85, !11, i64 16}
!90 = !{!85, !11, i64 8}
!91 = !{!85, !9, i64 32}
!92 = !{!85, !12, i64 40}
!93 = distinct !{!93, !32}
!94 = distinct !{!94, !32}
!95 = !{!58, !11, i64 72}
!96 = distinct !{!96, !32}
!97 = !{!7, !11, i64 656}
!98 = !{!7, !8, i64 672}
!99 = !{!7, !11, i64 664}
!100 = !{!7, !11, i64 96}
!101 = distinct !{!101, !32}
!102 = !{!7, !9, i64 244}
!103 = !{!73, !9, i64 8}
!104 = !{!73, !11, i64 24}
!105 = !{!7, !9, i64 160}
!106 = !{!7, !13, i64 386}
!107 = !{i8 0, i8 2}
!108 = !{}
!109 = !{!7, !9, i64 385}
!110 = distinct !{!110, !32}
!111 = !{!47, !12, i64 80}
!112 = !{!47, !11, i64 24}
!113 = distinct !{!113, !32}
!114 = !{!"branch_weights", i32 1, i32 2001, i32 2000}
!115 = distinct !{!115, !32}
!116 = distinct !{!116, !32}
