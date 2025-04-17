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
@threads = internal global ptr null, align 8
@__func__.prepare_streamout_threads = private unnamed_addr constant [26 x i8] c"prepare_streamout_threads\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Unable to calloc threads in prepare_streamout_threads\0A\00", align 1
@cthread = internal global ptr null, align 8
@.str.15 = private unnamed_addr constant [55 x i8] c"Unable to calloc cthread in prepare_streamout_threads\0A\00", align 1
@output_thread = internal global i64 0, align 8
@__func__.open_stream_out = private unnamed_addr constant [16 x i8] c"open_stream_out\00", align 1
@.str.16 = private unnamed_addr constant [65 x i8] c"Succeeded in testing %lld sized malloc for back end compression\0A\00", align 1
@.str.17 = private unnamed_addr constant [59 x i8] c"Using up to %d threads to compress up to %lld bytes each.\0A\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Using only 1 thread to compress up to %lld bytes\0A\00", align 1
@.str.19 = private unnamed_addr constant [57 x i8] c"Unable to malloc buffer of size %lld in open_stream_out\0A\00", align 1
@ucthread = internal global ptr null, align 8
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
@stderr = external global ptr, align 8
@__func__.read_fdin = private unnamed_addr constant [10 x i8] c"read_fdin\00", align 1
@.str.36 = private unnamed_addr constant [80 x i8] c"Reached end of file on STDIN prematurely on read_fdin, asked for %lld got %lld\0A\00", align 1
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
@clear_buffer.i = internal global i32 0, align 4
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @init_mutex(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @pthread_mutex_init(ptr noundef %6, ptr noundef null) #10
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %16, i32 noundef 98, ptr noundef @.str, ptr noundef @__func__.init_mutex, ptr noundef @.str.1)
  store i1 false, ptr %3, align 1
  br label %19

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %2
  store i1 true, ptr %3, align 1
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i1, ptr %3, align 1
  ret i1 %20
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) #1

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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @unlock_mutex(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @pthread_mutex_unlock(ptr noundef %6) #10
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %16, i32 noundef 105, ptr noundef @.str, ptr noundef @__func__.unlock_mutex, ptr noundef @.str.2)
  store i1 false, ptr %3, align 1
  br label %19

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %2
  store i1 true, ptr %3, align 1
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i1, ptr %3, align 1
  ret i1 %20
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @lock_mutex(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @pthread_mutex_lock(ptr noundef %6) #10
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %16, i32 noundef 112, ptr noundef @.str, ptr noundef @__func__.lock_mutex, ptr noundef @.str.3)
  store i1 false, ptr %3, align 1
  br label %19

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %2
  store i1 true, ptr %3, align 1
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i1, ptr %3, align 1
  ret i1 %20
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @create_pthread(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #0 {
  %6 = alloca i1, align 1
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store ptr %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store ptr %4, ptr %11, align 8
  %12 = load ptr, ptr %8, align 8
  %13 = load ptr, ptr %9, align 8
  %14 = load ptr, ptr %10, align 8
  %15 = load ptr, ptr %11, align 8
  %16 = call i32 @pthread_create(ptr noundef %12, ptr noundef %13, ptr noundef %14, ptr noundef %15) #10
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %5
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %25, i32 noundef 134, ptr noundef @.str, ptr noundef @__func__.create_pthread, ptr noundef @.str.4)
  store i1 false, ptr %6, align 1
  br label %28

26:                                               ; No predecessors!
  br label %27

27:                                               ; preds = %26, %5
  store i1 true, ptr %6, align 1
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i1, ptr %6, align 1
  ret i1 %29
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @detach_pthread(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = load i64, ptr %6, align 8
  %8 = call i32 @pthread_detach(i64 noundef %7) #10
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %17, i32 noundef 141, ptr noundef @.str, ptr noundef @__func__.detach_pthread, ptr noundef @.str.5)
  store i1 false, ptr %3, align 1
  br label %20

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %2
  store i1 true, ptr %3, align 1
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i1, ptr %3, align 1
  ret i1 %21
}

; Function Attrs: nounwind
declare i32 @pthread_detach(i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @join_pthread(ptr noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store i64 %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load i64, ptr %6, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = call i32 @pthread_join(i64 noundef %8, ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %3
  br label %13

13:                                               ; preds = %12
  %14 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %14, i32 noundef 148, ptr noundef @.str, ptr noundef @__func__.join_pthread, ptr noundef @.str.6)
  store i1 false, ptr %4, align 1
  br label %17

15:                                               ; No predecessors!
  br label %16

16:                                               ; preds = %15, %3
  store i1 true, ptr %4, align 1
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i1, ptr %4, align 1
  ret i1 %18
}

declare i32 @pthread_join(i64 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @put_fdout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 26
  %10 = load i64, ptr %9, align 8
  %11 = and i64 %10, 2097152
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 37
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %6, align 8
  %18 = load i64, ptr %7, align 8
  %19 = call i64 @write(i32 noundef %16, ptr noundef %17, i64 noundef %18)
  store i64 %19, ptr %4, align 8
  br label %131

20:                                               ; preds = %3
  %21 = load ptr, ptr %5, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 8
  %23 = load i64, ptr %22, align 8
  %24 = load i64, ptr %7, align 8
  %25 = add nsw i64 %23, %24
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 11
  %28 = load i64, ptr %27, align 8
  %29 = icmp sgt i64 %25, %28
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %96

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 26
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 3072
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %5, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %44, i32 noundef 3, i32 noundef 623, ptr noundef @.str, ptr noundef @__func__.put_fdout, ptr noundef @.str.7)
  br label %45

45:                                               ; preds = %43
  br label %46

46:                                               ; preds = %45, %36
  br label %47

47:                                               ; preds = %46
  %48 = load ptr, ptr %5, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 37
  %50 = load i32, ptr %49, align 4
  %51 = icmp eq i32 %50, -1
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %47
  %58 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %58, i32 noundef 625, ptr noundef @.str, ptr noundef @__func__.put_fdout, ptr noundef @.str.8)
  br label %59

59:                                               ; preds = %57, %47
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 7
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.rzip_control, ptr %64, i32 0, i32 10
  %66 = load i64, ptr %65, align 8
  %67 = call zeroext i1 @write_fdout(ptr noundef %60, ptr noundef %63, i64 noundef %66)
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = zext i1 %70 to i32
  %72 = sext i32 %71 to i64
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %76, i32 noundef 627, ptr noundef @.str, ptr noundef @__func__.put_fdout, ptr noundef @.str.9)
  br label %77

77:                                               ; preds = %75
  store i64 -1, ptr %4, align 8
  br label %131

78:                                               ; preds = %59
  %79 = load ptr, ptr %5, align 8
  call void @close_tmpoutbuf(ptr noundef %79)
  %80 = load ptr, ptr %5, align 8
  %81 = load ptr, ptr %6, align 8
  %82 = load i64, ptr %7, align 8
  %83 = call zeroext i1 @write_fdout(ptr noundef %80, ptr noundef %81, i64 noundef %82)
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = xor i1 %85, true
  %87 = zext i1 %86 to i32
  %88 = sext i32 %87 to i64
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %78
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %92, i32 noundef 632, ptr noundef @.str, ptr noundef @__func__.put_fdout, ptr noundef @.str.10)
  br label %93

93:                                               ; preds = %91
  store i64 -1, ptr %4, align 8
  br label %131

94:                                               ; preds = %78
  %95 = load i64, ptr %7, align 8
  store i64 %95, ptr %4, align 8
  br label %131

96:                                               ; preds = %20
  %97 = load ptr, ptr %5, align 8
  %98 = getelementptr inbounds %struct.rzip_control, ptr %97, i32 0, i32 7
  %99 = load ptr, ptr %98, align 8
  %100 = load ptr, ptr %5, align 8
  %101 = getelementptr inbounds %struct.rzip_control, ptr %100, i32 0, i32 8
  %102 = load i64, ptr %101, align 8
  %103 = getelementptr inbounds i8, ptr %99, i64 %102
  %104 = load ptr, ptr %6, align 8
  %105 = load i64, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %103, ptr align 1 %104, i64 %105, i1 false)
  %106 = load i64, ptr %7, align 8
  %107 = load ptr, ptr %5, align 8
  %108 = getelementptr inbounds %struct.rzip_control, ptr %107, i32 0, i32 8
  %109 = load i64, ptr %108, align 8
  %110 = add nsw i64 %109, %106
  store i64 %110, ptr %108, align 8
  %111 = load ptr, ptr %5, align 8
  %112 = getelementptr inbounds %struct.rzip_control, ptr %111, i32 0, i32 8
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %5, align 8
  %115 = getelementptr inbounds %struct.rzip_control, ptr %114, i32 0, i32 10
  %116 = load i64, ptr %115, align 8
  %117 = icmp sgt i64 %113, %116
  %118 = xor i1 %117, true
  %119 = xor i1 %118, true
  %120 = zext i1 %119 to i32
  %121 = sext i32 %120 to i64
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %129

123:                                              ; preds = %96
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.rzip_control, ptr %124, i32 0, i32 8
  %126 = load i64, ptr %125, align 8
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.rzip_control, ptr %127, i32 0, i32 10
  store i64 %126, ptr %128, align 8
  br label %129

129:                                              ; preds = %123, %96
  %130 = load i64, ptr %7, align 8
  store i64 %130, ptr %4, align 8
  br label %131

131:                                              ; preds = %129, %94, %93, %77, %13
  %132 = load i64, ptr %4, align 8
  ret i64 %132
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

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

declare zeroext i1 @write_fdout(ptr noundef, ptr noundef, i64 noundef) #2

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

declare void @close_tmpoutbuf(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @write_1g(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  store ptr %11, ptr %8, align 8
  store i64 0, ptr %10, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load i64, ptr %7, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %46

15:                                               ; preds = %12
  %16 = load i64, ptr %7, align 8
  %17 = icmp slt i64 %16, 1048576000
  br i1 %17, label %18, label %20

18:                                               ; preds = %15
  %19 = load i64, ptr %7, align 8
  br label %21

20:                                               ; preds = %15
  br label %21

21:                                               ; preds = %20, %18
  %22 = phi i64 [ %19, %18 ], [ 1048576000, %20 ]
  store i64 %22, ptr %9, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = load ptr, ptr %8, align 8
  %25 = load i64, ptr %9, align 8
  %26 = call i64 @put_fdout(ptr noundef %23, ptr noundef %24, i64 noundef %25)
  store i64 %26, ptr %9, align 8
  %27 = load i64, ptr %9, align 8
  %28 = icmp sle i64 %27, 0
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = sext i32 %31 to i64
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %21
  %35 = load i64, ptr %9, align 8
  store i64 %35, ptr %4, align 8
  br label %48

36:                                               ; preds = %21
  %37 = load i64, ptr %9, align 8
  %38 = load i64, ptr %7, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, ptr %7, align 8
  %40 = load i64, ptr %9, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = getelementptr inbounds i8, ptr %41, i64 %40
  store ptr %42, ptr %8, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load i64, ptr %10, align 8
  %45 = add nsw i64 %44, %43
  store i64 %45, ptr %10, align 8
  br label %12, !llvm.loop !6

46:                                               ; preds = %12
  %47 = load i64, ptr %10, align 8
  store i64 %47, ptr %4, align 8
  br label %48

48:                                               ; preds = %46, %34
  %49 = load i64, ptr %4, align 8
  ret i64 %49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_1g(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %13 = load ptr, ptr %8, align 8
  store ptr %13, ptr %10, align 8
  %14 = load ptr, ptr %6, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 26
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 4194304
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %95

19:                                               ; preds = %4
  %20 = load i32, ptr %7, align 4
  %21 = load ptr, ptr %6, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 36
  %23 = load i32, ptr %22, align 8
  %24 = icmp eq i32 %20, %23
  br i1 %24, label %25, label %95

25:                                               ; preds = %19
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 14
  %28 = load i64, ptr %27, align 8
  %29 = load i64, ptr %9, align 8
  %30 = add nsw i64 %28, %29
  %31 = load ptr, ptr %6, align 8
  %32 = getelementptr inbounds %struct.rzip_control, ptr %31, i32 0, i32 16
  %33 = load i64, ptr %32, align 8
  %34 = icmp sgt i64 %30, %33
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load ptr, ptr %6, align 8
  %42 = call i32 @dump_stdin(ptr noundef %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %46, i32 noundef 707, ptr noundef @.str, ptr noundef @__func__.read_1g, ptr noundef @.str.11)
  store i64 -1, ptr %5, align 8
  br label %180

47:                                               ; No predecessors!
  br label %48

48:                                               ; preds = %47, %40
  br label %143

49:                                               ; preds = %25
  %50 = load ptr, ptr %6, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 14
  %52 = load i64, ptr %51, align 8
  %53 = load i64, ptr %9, align 8
  %54 = add nsw i64 %52, %53
  %55 = load ptr, ptr %6, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 15
  %57 = load i64, ptr %56, align 8
  %58 = icmp sgt i64 %54, %57
  br i1 %58, label %59, label %79

59:                                               ; preds = %49
  %60 = load ptr, ptr %6, align 8
  %61 = load ptr, ptr %6, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 14
  %63 = load i64, ptr %62, align 8
  %64 = load i64, ptr %9, align 8
  %65 = add nsw i64 %63, %64
  %66 = load ptr, ptr %6, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 15
  %68 = load i64, ptr %67, align 8
  %69 = sub nsw i64 %65, %68
  %70 = call zeroext i1 @read_fdin(ptr noundef %60, i64 noundef %69)
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %59
  store i64 0, ptr %5, align 8
  br label %180

78:                                               ; preds = %59
  br label %79

79:                                               ; preds = %78, %49
  %80 = load ptr, ptr %8, align 8
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 13
  %83 = load ptr, ptr %82, align 8
  %84 = load ptr, ptr %6, align 8
  %85 = getelementptr inbounds %struct.rzip_control, ptr %84, i32 0, i32 14
  %86 = load i64, ptr %85, align 8
  %87 = getelementptr inbounds i8, ptr %83, i64 %86
  %88 = load i64, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %80, ptr align 1 %87, i64 %88, i1 false)
  %89 = load i64, ptr %9, align 8
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 14
  %92 = load i64, ptr %91, align 8
  %93 = add nsw i64 %92, %89
  store i64 %93, ptr %91, align 8
  %94 = load i64, ptr %9, align 8
  store i64 %94, ptr %5, align 8
  br label %180

95:                                               ; preds = %19, %4
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.rzip_control, ptr %96, i32 0, i32 26
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 2097152
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %142

101:                                              ; preds = %95
  %102 = load i32, ptr %7, align 4
  %103 = load ptr, ptr %6, align 8
  %104 = getelementptr inbounds %struct.rzip_control, ptr %103, i32 0, i32 37
  %105 = load i32, ptr %104, align 4
  %106 = icmp eq i32 %102, %105
  br i1 %106, label %107, label %142

107:                                              ; preds = %101
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.rzip_control, ptr %108, i32 0, i32 8
  %110 = load i64, ptr %109, align 8
  %111 = load i64, ptr %9, align 8
  %112 = add nsw i64 %110, %111
  %113 = load ptr, ptr %6, align 8
  %114 = getelementptr inbounds %struct.rzip_control, ptr %113, i32 0, i32 11
  %115 = load i64, ptr %114, align 8
  %116 = icmp sgt i64 %112, %115
  %117 = xor i1 %116, true
  %118 = xor i1 %117, true
  %119 = zext i1 %118 to i32
  %120 = sext i32 %119 to i64
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %107
  br label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %124, i32 noundef 721, ptr noundef @.str, ptr noundef @__func__.read_1g, ptr noundef @.str.12)
  store i64 -1, ptr %5, align 8
  br label %180

125:                                              ; No predecessors!
  br label %126

126:                                              ; preds = %125, %107
  %127 = load ptr, ptr %8, align 8
  %128 = load ptr, ptr %6, align 8
  %129 = getelementptr inbounds %struct.rzip_control, ptr %128, i32 0, i32 7
  %130 = load ptr, ptr %129, align 8
  %131 = load ptr, ptr %6, align 8
  %132 = getelementptr inbounds %struct.rzip_control, ptr %131, i32 0, i32 8
  %133 = load i64, ptr %132, align 8
  %134 = getelementptr inbounds i8, ptr %130, i64 %133
  %135 = load i64, ptr %9, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %127, ptr align 1 %134, i64 %135, i1 false)
  %136 = load i64, ptr %9, align 8
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds %struct.rzip_control, ptr %137, i32 0, i32 8
  %139 = load i64, ptr %138, align 8
  %140 = add nsw i64 %139, %136
  store i64 %140, ptr %138, align 8
  %141 = load i64, ptr %9, align 8
  store i64 %141, ptr %5, align 8
  br label %180

142:                                              ; preds = %101, %95
  br label %143

143:                                              ; preds = %142, %48
  store i64 0, ptr %12, align 8
  br label %144

144:                                              ; preds = %168, %143
  %145 = load i64, ptr %9, align 8
  %146 = icmp sgt i64 %145, 0
  br i1 %146, label %147, label %178

147:                                              ; preds = %144
  %148 = load i64, ptr %9, align 8
  %149 = icmp slt i64 %148, 1048576000
  br i1 %149, label %150, label %152

150:                                              ; preds = %147
  %151 = load i64, ptr %9, align 8
  br label %153

152:                                              ; preds = %147
  br label %153

153:                                              ; preds = %152, %150
  %154 = phi i64 [ %151, %150 ], [ 1048576000, %152 ]
  store i64 %154, ptr %11, align 8
  %155 = load i32, ptr %7, align 4
  %156 = load ptr, ptr %10, align 8
  %157 = load i64, ptr %11, align 8
  %158 = call i64 @read(i32 noundef %155, ptr noundef %156, i64 noundef %157)
  store i64 %158, ptr %11, align 8
  %159 = load i64, ptr %11, align 8
  %160 = icmp sle i64 %159, 0
  %161 = xor i1 %160, true
  %162 = xor i1 %161, true
  %163 = zext i1 %162 to i32
  %164 = sext i32 %163 to i64
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %153
  %167 = load i64, ptr %11, align 8
  store i64 %167, ptr %5, align 8
  br label %180

168:                                              ; preds = %153
  %169 = load i64, ptr %11, align 8
  %170 = load i64, ptr %9, align 8
  %171 = sub nsw i64 %170, %169
  store i64 %171, ptr %9, align 8
  %172 = load i64, ptr %11, align 8
  %173 = load ptr, ptr %10, align 8
  %174 = getelementptr inbounds i8, ptr %173, i64 %172
  store ptr %174, ptr %10, align 8
  %175 = load i64, ptr %11, align 8
  %176 = load i64, ptr %12, align 8
  %177 = add nsw i64 %176, %175
  store i64 %177, ptr %12, align 8
  br label %144, !llvm.loop !8

178:                                              ; preds = %144
  %179 = load i64, ptr %12, align 8
  store i64 %179, ptr %5, align 8
  br label %180

180:                                              ; preds = %178, %166, %126, %123, %79, %77, %45
  %181 = load i64, ptr %5, align 8
  ret i64 %181
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_stdin(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = call zeroext i1 @write_fdin(ptr noundef %4)
  %6 = xor i1 %5, true
  %7 = xor i1 %6, true
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = sext i32 %9 to i64
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, ptr %2, align 4
  br label %28

13:                                               ; preds = %1
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 36
  %17 = load i32, ptr %16, align 8
  %18 = call zeroext i1 @read_tmpinfile(ptr noundef %14, i32 noundef %17)
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 -1, ptr %2, align 4
  br label %28

26:                                               ; preds = %13
  %27 = load ptr, ptr %3, align 8
  call void @close_tmpinbuf(ptr noundef %27)
  store i32 0, ptr %2, align 4
  br label %28

28:                                               ; preds = %26, %25, %12
  %29 = load i32, ptr %2, align 4
  ret i32 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @read_fdin(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i64 0, ptr %7, align 8
  br label %8

8:                                                ; preds = %39, %2
  %9 = load i64, ptr %7, align 8
  %10 = load i64, ptr %5, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %42

12:                                               ; preds = %8
  %13 = call i32 @getchar()
  store i32 %13, ptr %6, align 4
  %14 = load i32, ptr %6, align 4
  %15 = icmp eq i32 %14, -1
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %4, align 8
  %24 = load i64, ptr %5, align 8
  %25 = load i64, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %23, i32 noundef 677, ptr noundef @.str, ptr noundef @__func__.read_fdin, ptr noundef @.str.36, i64 noundef %24, i64 noundef %25)
  store i1 false, ptr %3, align 1
  br label %50

26:                                               ; No predecessors!
  br label %27

27:                                               ; preds = %26, %12
  %28 = load i32, ptr %6, align 4
  %29 = trunc i32 %28 to i8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 13
  %32 = load ptr, ptr %31, align 8
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 14
  %35 = load i64, ptr %34, align 8
  %36 = load i64, ptr %7, align 8
  %37 = add nsw i64 %35, %36
  %38 = getelementptr inbounds i8, ptr %32, i64 %37
  store i8 %29, ptr %38, align 1
  br label %39

39:                                               ; preds = %27
  %40 = load i64, ptr %7, align 8
  %41 = add nsw i64 %40, 1
  store i64 %41, ptr %7, align 8
  br label %8, !llvm.loop !9

42:                                               ; preds = %8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 14
  %45 = load i64, ptr %44, align 8
  %46 = load i64, ptr %5, align 8
  %47 = add nsw i64 %45, %46
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 15
  store i64 %47, ptr %49, align 8
  store i1 true, ptr %3, align 1
  br label %50

50:                                               ; preds = %42, %22
  %51 = load i1, ptr %3, align 1
  ret i1 %51
}

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_readseek(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 26
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 4194304
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 14
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %3, align 8
  br label %32

16:                                               ; preds = %2
  %17 = load i32, ptr %5, align 4
  %18 = call i64 @lseek64(i32 noundef %17, i64 noundef 0, i32 noundef 1) #10
  store i64 %18, ptr %6, align 8
  %19 = load i64, ptr %6, align 8
  %20 = icmp eq i64 %19, -1
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = sext i32 %23 to i64
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %16
  br label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %28, i32 noundef 884, ptr noundef @.str, ptr noundef @__func__.get_readseek, ptr noundef @.str.13)
  store i64 -1, ptr %3, align 8
  br label %32

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i64, ptr %6, align 8
  store i64 %31, ptr %3, align 8
  br label %32

32:                                               ; preds = %30, %27, %12
  %33 = load i64, ptr %3, align 8
  ret i64 %33
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @prepare_streamout_threads(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 30
  %7 = load i32, ptr %6, align 8
  %8 = icmp sgt i32 %7, 1
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 30
  %12 = load i32, ptr %11, align 8
  %13 = add nsw i32 %12, 1
  store i32 %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %9, %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 26
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 32
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 30
  store i32 1, ptr %22, align 8
  br label %23

23:                                               ; preds = %20, %14
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 30
  %26 = load i32, ptr %25, align 8
  %27 = sext i32 %26 to i64
  %28 = call noalias ptr @calloc(i64 noundef 8, i64 noundef %27) #11
  store ptr %28, ptr @threads, align 8
  %29 = load ptr, ptr @threads, align 8
  %30 = icmp ne ptr %29, null
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %39, i32 noundef 902, ptr noundef @.str, ptr noundef @__func__.prepare_streamout_threads, ptr noundef @.str.14)
  store i1 false, ptr %2, align 1
  br label %86

40:                                               ; No predecessors!
  br label %41

41:                                               ; preds = %40, %23
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 30
  %44 = load i32, ptr %43, align 8
  %45 = sext i32 %44 to i64
  %46 = call noalias ptr @calloc(i64 noundef 88, i64 noundef %45) #11
  store ptr %46, ptr @cthread, align 8
  %47 = load ptr, ptr @cthread, align 8
  %48 = icmp ne ptr %47, null
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr @threads, align 8
  call void @free(ptr noundef %57) #10
  store ptr null, ptr @threads, align 8
  br label %58

58:                                               ; preds = %56
  br label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %60, i32 noundef 907, ptr noundef @.str, ptr noundef @__func__.prepare_streamout_threads, ptr noundef @.str.15)
  store i1 false, ptr %2, align 1
  br label %86

61:                                               ; No predecessors!
  br label %62

62:                                               ; preds = %61, %41
  store i32 0, ptr %4, align 4
  br label %63

63:                                               ; preds = %82, %62
  %64 = load i32, ptr %4, align 4
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.rzip_control, ptr %65, i32 0, i32 30
  %67 = load i32, ptr %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %85

69:                                               ; preds = %63
  %70 = load ptr, ptr %3, align 8
  %71 = load ptr, ptr @cthread, align 8
  %72 = load i32, ptr %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.compress_thread, ptr %71, i64 %73
  %75 = getelementptr inbounds %struct.compress_thread, ptr %74, i32 0, i32 4
  call void @cksem_init(ptr noundef %70, ptr noundef %75)
  %76 = load ptr, ptr %3, align 8
  %77 = load ptr, ptr @cthread, align 8
  %78 = load i32, ptr %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.compress_thread, ptr %77, i64 %79
  %81 = getelementptr inbounds %struct.compress_thread, ptr %80, i32 0, i32 4
  call void @cksem_post(ptr noundef %76, ptr noundef %81)
  br label %82

82:                                               ; preds = %69
  %83 = load i32, ptr %4, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, ptr %4, align 4
  br label %63, !llvm.loop !10

85:                                               ; preds = %63
  store i1 true, ptr %2, align 1
  br label %86

86:                                               ; preds = %85, %59, %38
  %87 = load i1, ptr %2, align 1
  ret i1 %87
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cksem_init(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = call i32 @sem_init(ptr noundef %6, i32 noundef 0, i32 noundef 0) #10
  store i32 %7, ptr %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8
  %11 = load i32, ptr %5, align 4
  %12 = call ptr @__errno_location() #12
  %13 = load i32, ptr %12, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %10, i32 noundef 155, ptr noundef @.str.37, ptr noundef @__func__.cksem_init, ptr noundef @.str.38, i32 noundef %11, i32 noundef %13)
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
  %6 = call i32 @sem_post(ptr noundef %5) #10
  %7 = icmp ne i32 %6, 0
  %8 = xor i1 %7, true
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = sext i32 %10 to i64
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load ptr, ptr %3, align 8
  %15 = call ptr @__errno_location() #12
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %14, i32 noundef 161, ptr noundef @.str.37, ptr noundef @__func__.cksem_post, ptr noundef @.str.39, i32 noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @close_streamout_threads(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %5 = load i64, ptr @output_thread, align 8
  %6 = trunc i64 %5 to i32
  store i32 %6, ptr %4, align 4
  store i32 0, ptr %3, align 4
  br label %7

7:                                                ; preds = %28, %1
  %8 = load i32, ptr %3, align 4
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 30
  %11 = load i32, ptr %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = load ptr, ptr @cthread, align 8
  %16 = load i32, ptr %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.compress_thread, ptr %15, i64 %17
  %19 = getelementptr inbounds %struct.compress_thread, ptr %18, i32 0, i32 4
  call void @cksem_wait(ptr noundef %14, ptr noundef %19)
  %20 = load i32, ptr %4, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, ptr %4, align 4
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 30
  %24 = load i32, ptr %23, align 8
  %25 = icmp eq i32 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %13
  store i32 0, ptr %4, align 4
  br label %27

27:                                               ; preds = %26, %13
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %3, align 4
  br label %7, !llvm.loop !11

31:                                               ; preds = %7
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr @cthread, align 8
  call void @free(ptr noundef %33) #10
  store ptr null, ptr @cthread, align 8
  br label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @threads, align 8
  call void @free(ptr noundef %36) #10
  store ptr null, ptr @threads, align 8
  br label %37

37:                                               ; preds = %35
  ret i1 true
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
  %15 = call ptr @__errno_location() #12
  %16 = load i32, ptr %15, align 4
  %17 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %14, i32 noundef 167, ptr noundef @.str.37, ptr noundef @__func__.cksem_wait, ptr noundef @.str.40, i32 noundef %16, ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @open_stream_out(ptr noundef %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i8 noundef signext %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i64 %3, ptr %10, align 8
  store i8 %4, ptr %11, align 1
  %19 = call noalias ptr @calloc(i64 noundef 88, i64 noundef 1) #11
  store ptr %19, ptr %12, align 8
  %20 = load ptr, ptr %12, align 8
  %21 = icmp ne ptr %20, null
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %5
  store ptr null, ptr %6, align 8
  br label %397

29:                                               ; preds = %5
  %30 = load i64, ptr %10, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = getelementptr inbounds %struct.rzip_control, ptr %31, i32 0, i32 35
  %33 = load i64, ptr %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 35
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %10, align 8
  br label %39

39:                                               ; preds = %35, %29
  %40 = load i64, ptr %10, align 8
  store i64 %40, ptr %14, align 8
  %41 = load ptr, ptr %12, align 8
  %42 = getelementptr inbounds %struct.stream_info, ptr %41, i32 0, i32 8
  store i64 %40, ptr %42, align 8
  %43 = load ptr, ptr %12, align 8
  %44 = getelementptr inbounds %struct.stream_info, ptr %43, i32 0, i32 3
  store i64 %40, ptr %44, align 8
  %45 = load i8, ptr %11, align 1
  %46 = load ptr, ptr %12, align 8
  %47 = getelementptr inbounds %struct.stream_info, ptr %46, i32 0, i32 12
  store i8 %45, ptr %47, align 4
  %48 = load i32, ptr %9, align 4
  %49 = trunc i32 %48 to i8
  %50 = load ptr, ptr %12, align 8
  %51 = getelementptr inbounds %struct.stream_info, ptr %50, i32 0, i32 1
  store i8 %49, ptr %51, align 8
  %52 = load i32, ptr %8, align 4
  %53 = load ptr, ptr %12, align 8
  %54 = getelementptr inbounds %struct.stream_info, ptr %53, i32 0, i32 2
  store i32 %52, ptr %54, align 4
  %55 = load i32, ptr %9, align 4
  %56 = zext i32 %55 to i64
  %57 = call noalias ptr @calloc(i64 noundef 80, i64 noundef %56) #11
  %58 = load ptr, ptr %12, align 8
  %59 = getelementptr inbounds %struct.stream_info, ptr %58, i32 0, i32 0
  store ptr %57, ptr %59, align 8
  %60 = load ptr, ptr %12, align 8
  %61 = getelementptr inbounds %struct.stream_info, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8
  %63 = icmp ne ptr %62, null
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %39
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %72) #10
  store ptr null, ptr %12, align 8
  br label %73

73:                                               ; preds = %71
  store ptr null, ptr %6, align 8
  br label %397

74:                                               ; preds = %39
  %75 = load ptr, ptr %7, align 8
  %76 = getelementptr inbounds %struct.rzip_control, ptr %75, i32 0, i32 26
  %77 = load i64, ptr %76, align 8
  %78 = and i64 %77, 32
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, ptr %17, align 4
  br label %82

81:                                               ; preds = %74
  store i32 2, ptr %17, align 4
  br label %82

82:                                               ; preds = %81, %80
  %83 = load i64, ptr %14, align 8
  %84 = load i32, ptr %17, align 4
  %85 = zext i32 %84 to i64
  %86 = mul nsw i64 %83, %85
  %87 = load ptr, ptr %7, align 8
  %88 = getelementptr inbounds %struct.rzip_control, ptr %87, i32 0, i32 21
  %89 = load i64, ptr %88, align 8
  %90 = load ptr, ptr %7, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 30
  %92 = load i32, ptr %91, align 8
  %93 = sext i32 %92 to i64
  %94 = mul nsw i64 %89, %93
  %95 = add nsw i64 %86, %94
  store i64 %95, ptr %13, align 8
  %96 = load i64, ptr %13, align 8
  %97 = load ptr, ptr %7, align 8
  %98 = getelementptr inbounds %struct.rzip_control, ptr %97, i32 0, i32 22
  %99 = load i64, ptr %98, align 8
  %100 = icmp sgt i64 %96, %99
  br i1 %100, label %101, label %117

101:                                              ; preds = %82
  %102 = load ptr, ptr %7, align 8
  %103 = getelementptr inbounds %struct.rzip_control, ptr %102, i32 0, i32 22
  %104 = load i64, ptr %103, align 8
  %105 = load ptr, ptr %7, align 8
  %106 = getelementptr inbounds %struct.rzip_control, ptr %105, i32 0, i32 21
  %107 = load i64, ptr %106, align 8
  %108 = load ptr, ptr %7, align 8
  %109 = getelementptr inbounds %struct.rzip_control, ptr %108, i32 0, i32 30
  %110 = load i32, ptr %109, align 8
  %111 = sext i32 %110 to i64
  %112 = mul nsw i64 %107, %111
  %113 = sub nsw i64 %104, %112
  %114 = load i32, ptr %17, align 4
  %115 = zext i32 %114 to i64
  %116 = sdiv i64 %113, %115
  store i64 %116, ptr %14, align 8
  br label %117

117:                                              ; preds = %101, %82
  br label %118

118:                                              ; preds = %161, %117
  %119 = load i64, ptr %14, align 8
  %120 = icmp slt i64 %119, 10485760
  br i1 %120, label %121, label %125

121:                                              ; preds = %118
  %122 = load i64, ptr %14, align 8
  %123 = load i64, ptr %10, align 8
  %124 = icmp slt i64 %122, %123
  br label %125

125:                                              ; preds = %121, %118
  %126 = phi i1 [ false, %118 ], [ %124, %121 ]
  br i1 %126, label %127, label %163

127:                                              ; preds = %125
  %128 = load ptr, ptr %7, align 8
  %129 = getelementptr inbounds %struct.rzip_control, ptr %128, i32 0, i32 30
  %130 = load i32, ptr %129, align 8
  %131 = icmp sgt i32 %130, 1
  br i1 %131, label %132, label %137

132:                                              ; preds = %127
  %133 = load ptr, ptr %7, align 8
  %134 = getelementptr inbounds %struct.rzip_control, ptr %133, i32 0, i32 30
  %135 = load i32, ptr %134, align 8
  %136 = add nsw i32 %135, -1
  store i32 %136, ptr %134, align 8
  br label %138

137:                                              ; preds = %127
  br label %163

138:                                              ; preds = %132
  %139 = load ptr, ptr %7, align 8
  %140 = getelementptr inbounds %struct.rzip_control, ptr %139, i32 0, i32 22
  %141 = load i64, ptr %140, align 8
  %142 = load ptr, ptr %7, align 8
  %143 = getelementptr inbounds %struct.rzip_control, ptr %142, i32 0, i32 21
  %144 = load i64, ptr %143, align 8
  %145 = load ptr, ptr %7, align 8
  %146 = getelementptr inbounds %struct.rzip_control, ptr %145, i32 0, i32 30
  %147 = load i32, ptr %146, align 8
  %148 = sext i32 %147 to i64
  %149 = mul nsw i64 %144, %148
  %150 = sub nsw i64 %141, %149
  %151 = load i32, ptr %17, align 4
  %152 = zext i32 %151 to i64
  %153 = sdiv i64 %150, %152
  store i64 %153, ptr %14, align 8
  %154 = load i64, ptr %14, align 8
  %155 = load i64, ptr %10, align 8
  %156 = icmp slt i64 %154, %155
  br i1 %156, label %157, label %159

157:                                              ; preds = %138
  %158 = load i64, ptr %14, align 8
  br label %161

159:                                              ; preds = %138
  %160 = load i64, ptr %10, align 8
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i64 [ %158, %157 ], [ %160, %159 ]
  store i64 %162, ptr %14, align 8
  br label %118, !llvm.loop !12

163:                                              ; preds = %137, %125
  %164 = load i64, ptr %14, align 8
  %165 = icmp sgt i64 %164, 10485760
  br i1 %165, label %166, label %168

166:                                              ; preds = %163
  %167 = load i64, ptr %14, align 8
  br label %169

168:                                              ; preds = %163
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i64 [ %167, %166 ], [ 10485760, %168 ]
  store i64 %170, ptr %14, align 8
  %171 = load i64, ptr %14, align 8
  %172 = load i64, ptr %10, align 8
  %173 = icmp slt i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %169
  %175 = load i64, ptr %14, align 8
  br label %178

176:                                              ; preds = %169
  %177 = load i64, ptr %10, align 8
  br label %178

178:                                              ; preds = %176, %174
  %179 = phi i64 [ %175, %174 ], [ %177, %176 ]
  store i64 %179, ptr %14, align 8
  br label %180

180:                                              ; preds = %213, %195, %178
  %181 = load i64, ptr %14, align 8
  %182 = load ptr, ptr %7, align 8
  %183 = getelementptr inbounds %struct.rzip_control, ptr %182, i32 0, i32 21
  %184 = load i64, ptr %183, align 8
  %185 = load ptr, ptr %7, align 8
  %186 = getelementptr inbounds %struct.rzip_control, ptr %185, i32 0, i32 30
  %187 = load i32, ptr %186, align 8
  %188 = sext i32 %187 to i64
  %189 = mul nsw i64 %184, %188
  %190 = add nsw i64 %181, %189
  store i64 %190, ptr %13, align 8
  %191 = load i64, ptr %13, align 8
  %192 = call noalias ptr @malloc(i64 noundef %191) #13
  store ptr %192, ptr %15, align 8
  %193 = load ptr, ptr %15, align 8
  %194 = icmp ne ptr %193, null
  br i1 %194, label %199, label %195

195:                                              ; preds = %180
  %196 = load i64, ptr %14, align 8
  %197 = sdiv i64 %196, 10
  %198 = mul nsw i64 %197, 9
  store i64 %198, ptr %14, align 8
  br label %180

199:                                              ; preds = %180
  %200 = load ptr, ptr %7, align 8
  %201 = getelementptr inbounds %struct.rzip_control, ptr %200, i32 0, i32 26
  %202 = load i64, ptr %201, align 8
  %203 = and i64 %202, 32
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %221, label %205

205:                                              ; preds = %199
  %206 = load i64, ptr %14, align 8
  %207 = call noalias ptr @malloc(i64 noundef %206) #13
  store ptr %207, ptr %18, align 8
  %208 = load ptr, ptr %18, align 8
  %209 = icmp ne ptr %208, null
  br i1 %209, label %217, label %210

210:                                              ; preds = %205
  br label %211

211:                                              ; preds = %210
  %212 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %212) #10
  store ptr null, ptr %15, align 8
  br label %213

213:                                              ; preds = %211
  %214 = load i64, ptr %14, align 8
  %215 = sdiv i64 %214, 10
  %216 = mul nsw i64 %215, 9
  store i64 %216, ptr %14, align 8
  br label %180

217:                                              ; preds = %205
  br label %218

218:                                              ; preds = %217
  %219 = load ptr, ptr %18, align 8
  call void @free(ptr noundef %219) #10
  store ptr null, ptr %18, align 8
  br label %220

220:                                              ; preds = %218
  br label %221

221:                                              ; preds = %220, %199
  br label %222

222:                                              ; preds = %221
  %223 = load ptr, ptr %15, align 8
  call void @free(ptr noundef %223) #10
  store ptr null, ptr %15, align 8
  br label %224

224:                                              ; preds = %222
  br label %225

225:                                              ; preds = %224
  %226 = load ptr, ptr %7, align 8
  %227 = getelementptr inbounds %struct.rzip_control, ptr %226, i32 0, i32 26
  %228 = load i64, ptr %227, align 8
  %229 = and i64 %228, 2048
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %231, label %236

231:                                              ; preds = %225
  br label %232

232:                                              ; preds = %231
  %233 = load ptr, ptr %7, align 8
  %234 = load i64, ptr %13, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %233, i32 noundef 4, i32 noundef 1011, ptr noundef @.str, ptr noundef @__func__.open_stream_out, ptr noundef @.str.16, i64 noundef %234)
  br label %235

235:                                              ; preds = %232
  br label %236

236:                                              ; preds = %235, %225
  br label %237

237:                                              ; preds = %236
  %238 = load i64, ptr %14, align 8
  %239 = load i64, ptr %14, align 8
  %240 = load ptr, ptr %7, align 8
  %241 = getelementptr inbounds %struct.rzip_control, ptr %240, i32 0, i32 30
  %242 = load i32, ptr %241, align 8
  %243 = sext i32 %242 to i64
  %244 = add nsw i64 %239, %243
  %245 = sub nsw i64 %244, 1
  %246 = load ptr, ptr %7, align 8
  %247 = getelementptr inbounds %struct.rzip_control, ptr %246, i32 0, i32 30
  %248 = load i32, ptr %247, align 8
  %249 = sext i32 %248 to i64
  %250 = sdiv i64 %245, %249
  %251 = icmp sgt i64 %250, 10485760
  br i1 %251, label %252, label %265

252:                                              ; preds = %237
  %253 = load i64, ptr %14, align 8
  %254 = load ptr, ptr %7, align 8
  %255 = getelementptr inbounds %struct.rzip_control, ptr %254, i32 0, i32 30
  %256 = load i32, ptr %255, align 8
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %253, %257
  %259 = sub nsw i64 %258, 1
  %260 = load ptr, ptr %7, align 8
  %261 = getelementptr inbounds %struct.rzip_control, ptr %260, i32 0, i32 30
  %262 = load i32, ptr %261, align 8
  %263 = sext i32 %262 to i64
  %264 = sdiv i64 %259, %263
  br label %266

265:                                              ; preds = %237
  br label %266

266:                                              ; preds = %265, %252
  %267 = phi i64 [ %264, %252 ], [ 10485760, %265 ]
  %268 = icmp slt i64 %238, %267
  br i1 %268, label %269, label %271

269:                                              ; preds = %266
  %270 = load i64, ptr %14, align 8
  br label %301

271:                                              ; preds = %266
  %272 = load i64, ptr %14, align 8
  %273 = load ptr, ptr %7, align 8
  %274 = getelementptr inbounds %struct.rzip_control, ptr %273, i32 0, i32 30
  %275 = load i32, ptr %274, align 8
  %276 = sext i32 %275 to i64
  %277 = add nsw i64 %272, %276
  %278 = sub nsw i64 %277, 1
  %279 = load ptr, ptr %7, align 8
  %280 = getelementptr inbounds %struct.rzip_control, ptr %279, i32 0, i32 30
  %281 = load i32, ptr %280, align 8
  %282 = sext i32 %281 to i64
  %283 = sdiv i64 %278, %282
  %284 = icmp sgt i64 %283, 10485760
  br i1 %284, label %285, label %298

285:                                              ; preds = %271
  %286 = load i64, ptr %14, align 8
  %287 = load ptr, ptr %7, align 8
  %288 = getelementptr inbounds %struct.rzip_control, ptr %287, i32 0, i32 30
  %289 = load i32, ptr %288, align 8
  %290 = sext i32 %289 to i64
  %291 = add nsw i64 %286, %290
  %292 = sub nsw i64 %291, 1
  %293 = load ptr, ptr %7, align 8
  %294 = getelementptr inbounds %struct.rzip_control, ptr %293, i32 0, i32 30
  %295 = load i32, ptr %294, align 8
  %296 = sext i32 %295 to i64
  %297 = sdiv i64 %292, %296
  br label %299

298:                                              ; preds = %271
  br label %299

299:                                              ; preds = %298, %285
  %300 = phi i64 [ %297, %285 ], [ 10485760, %298 ]
  br label %301

301:                                              ; preds = %299, %269
  %302 = phi i64 [ %270, %269 ], [ %300, %299 ]
  %303 = load ptr, ptr %12, align 8
  %304 = getelementptr inbounds %struct.stream_info, ptr %303, i32 0, i32 3
  store i64 %302, ptr %304, align 8
  %305 = load ptr, ptr %7, align 8
  %306 = getelementptr inbounds %struct.rzip_control, ptr %305, i32 0, i32 30
  %307 = load i32, ptr %306, align 8
  %308 = icmp sgt i32 %307, 1
  br i1 %308, label %309, label %328

309:                                              ; preds = %301
  br label %310

310:                                              ; preds = %309
  %311 = load ptr, ptr %7, align 8
  %312 = getelementptr inbounds %struct.rzip_control, ptr %311, i32 0, i32 26
  %313 = load i64, ptr %312, align 8
  %314 = and i64 %313, 2048
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %326

316:                                              ; preds = %310
  br label %317

317:                                              ; preds = %316
  %318 = load ptr, ptr %7, align 8
  %319 = load ptr, ptr %7, align 8
  %320 = getelementptr inbounds %struct.rzip_control, ptr %319, i32 0, i32 30
  %321 = load i32, ptr %320, align 8
  %322 = load ptr, ptr %12, align 8
  %323 = getelementptr inbounds %struct.stream_info, ptr %322, i32 0, i32 3
  %324 = load i64, ptr %323, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %318, i32 noundef 4, i32 noundef 1020, ptr noundef @.str, ptr noundef @__func__.open_stream_out, ptr noundef @.str.17, i32 noundef %321, i64 noundef %324)
  br label %325

325:                                              ; preds = %317
  br label %326

326:                                              ; preds = %325, %310
  br label %327

327:                                              ; preds = %326
  br label %344

328:                                              ; preds = %301
  br label %329

329:                                              ; preds = %328
  %330 = load ptr, ptr %7, align 8
  %331 = getelementptr inbounds %struct.rzip_control, ptr %330, i32 0, i32 26
  %332 = load i64, ptr %331, align 8
  %333 = and i64 %332, 2048
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %342

335:                                              ; preds = %329
  br label %336

336:                                              ; preds = %335
  %337 = load ptr, ptr %7, align 8
  %338 = load ptr, ptr %12, align 8
  %339 = getelementptr inbounds %struct.stream_info, ptr %338, i32 0, i32 3
  %340 = load i64, ptr %339, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %337, i32 noundef 4, i32 noundef 1023, ptr noundef @.str, ptr noundef @__func__.open_stream_out, ptr noundef @.str.18, i64 noundef %340)
  br label %341

341:                                              ; preds = %336
  br label %342

342:                                              ; preds = %341, %329
  br label %343

343:                                              ; preds = %342
  br label %344

344:                                              ; preds = %343, %327
  store i32 0, ptr %16, align 4
  br label %345

345:                                              ; preds = %392, %344
  %346 = load i32, ptr %16, align 4
  %347 = load i32, ptr %9, align 4
  %348 = icmp ult i32 %346, %347
  br i1 %348, label %349, label %395

349:                                              ; preds = %345
  %350 = load ptr, ptr %12, align 8
  %351 = getelementptr inbounds %struct.stream_info, ptr %350, i32 0, i32 3
  %352 = load i64, ptr %351, align 8
  %353 = call noalias ptr @calloc(i64 noundef %352, i64 noundef 1) #11
  %354 = load ptr, ptr %12, align 8
  %355 = getelementptr inbounds %struct.stream_info, ptr %354, i32 0, i32 0
  %356 = load ptr, ptr %355, align 8
  %357 = load i32, ptr %16, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.stream, ptr %356, i64 %358
  %360 = getelementptr inbounds %struct.stream, ptr %359, i32 0, i32 1
  store ptr %353, ptr %360, align 8
  %361 = load ptr, ptr %12, align 8
  %362 = getelementptr inbounds %struct.stream_info, ptr %361, i32 0, i32 0
  %363 = load ptr, ptr %362, align 8
  %364 = load i32, ptr %16, align 4
  %365 = zext i32 %364 to i64
  %366 = getelementptr inbounds %struct.stream, ptr %363, i64 %365
  %367 = getelementptr inbounds %struct.stream, ptr %366, i32 0, i32 1
  %368 = load ptr, ptr %367, align 8
  %369 = icmp ne ptr %368, null
  %370 = xor i1 %369, true
  %371 = xor i1 %370, true
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = sext i32 %373 to i64
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %391

376:                                              ; preds = %349
  %377 = load ptr, ptr %7, align 8
  %378 = load ptr, ptr %12, align 8
  %379 = getelementptr inbounds %struct.stream_info, ptr %378, i32 0, i32 3
  %380 = load i64, ptr %379, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %377, i32 noundef 1028, ptr noundef @.str, ptr noundef @__func__.open_stream_out, ptr noundef @.str.19, i64 noundef %380)
  br label %381

381:                                              ; preds = %376
  %382 = load ptr, ptr %12, align 8
  %383 = getelementptr inbounds %struct.stream_info, ptr %382, i32 0, i32 0
  %384 = load ptr, ptr %383, align 8
  call void @free(ptr noundef %384) #10
  %385 = load ptr, ptr %12, align 8
  %386 = getelementptr inbounds %struct.stream_info, ptr %385, i32 0, i32 0
  store ptr null, ptr %386, align 8
  br label %387

387:                                              ; preds = %381
  br label %388

388:                                              ; preds = %387
  %389 = load ptr, ptr %12, align 8
  call void @free(ptr noundef %389) #10
  store ptr null, ptr %12, align 8
  br label %390

390:                                              ; preds = %388
  store ptr null, ptr %6, align 8
  br label %397

391:                                              ; preds = %349
  br label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %16, align 4
  %394 = add i32 %393, 1
  store i32 %394, ptr %16, align 4
  br label %345, !llvm.loop !13

395:                                              ; preds = %345
  %396 = load ptr, ptr %12, align 8
  store ptr %396, ptr %6, align 8
  br label %397

397:                                              ; preds = %395, %390, %73, %28
  %398 = load ptr, ptr %6, align 8
  ret ptr %398
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @open_stream_in(ptr noundef %0, i32 noundef %1, i32 noundef %2, i8 noundef signext %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i8, align 1
  %15 = alloca [33 x i8], align 16
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i32 %2, ptr %8, align 4
  store i8 %3, ptr %9, align 1
  %22 = call noalias ptr @calloc(i64 noundef 88, i64 noundef 1) #11
  store ptr %22, ptr %10, align 8
  %23 = load ptr, ptr %10, align 8
  %24 = icmp ne ptr %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %4
  store ptr null, ptr %5, align 8
  br label %655

32:                                               ; preds = %4
  %33 = load ptr, ptr %6, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 30
  %35 = load i32, ptr %34, align 8
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.rzip_control, ptr %38, i32 0, i32 30
  %40 = load i32, ptr %39, align 8
  %41 = add nsw i32 %40, 2
  store i32 %41, ptr %11, align 4
  br label %47

42:                                               ; preds = %32
  %43 = load ptr, ptr %6, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 30
  %45 = load i32, ptr %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, ptr %11, align 4
  br label %47

47:                                               ; preds = %42, %37
  %48 = load i32, ptr %11, align 4
  %49 = sext i32 %48 to i64
  %50 = call noalias ptr @calloc(i64 noundef 8, i64 noundef %49) #11
  store ptr %50, ptr @threads, align 8
  %51 = load ptr, ptr @threads, align 8
  %52 = icmp ne ptr %51, null
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  store ptr null, ptr %5, align 8
  br label %655

60:                                               ; preds = %47
  %61 = load i32, ptr %11, align 4
  %62 = sext i32 %61 to i64
  %63 = call noalias ptr @calloc(i64 noundef 48, i64 noundef %62) #11
  store ptr %63, ptr @ucthread, align 8
  %64 = load ptr, ptr @ucthread, align 8
  %65 = icmp ne ptr %64, null
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %74) #10
  store ptr null, ptr %10, align 8
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr @threads, align 8
  call void @free(ptr noundef %77) #10
  store ptr null, ptr @threads, align 8
  br label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %80, i32 noundef 1086, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.20)
  store ptr null, ptr %5, align 8
  br label %655

81:                                               ; No predecessors!
  br label %82

82:                                               ; preds = %81, %60
  %83 = load i32, ptr %8, align 4
  %84 = trunc i32 %83 to i8
  %85 = load ptr, ptr %10, align 8
  %86 = getelementptr inbounds %struct.stream_info, ptr %85, i32 0, i32 1
  store i8 %84, ptr %86, align 8
  %87 = load i32, ptr %7, align 4
  %88 = load ptr, ptr %10, align 8
  %89 = getelementptr inbounds %struct.stream_info, ptr %88, i32 0, i32 2
  store i32 %87, ptr %89, align 4
  %90 = load i8, ptr %9, align 1
  %91 = load ptr, ptr %10, align 8
  %92 = getelementptr inbounds %struct.stream_info, ptr %91, i32 0, i32 12
  store i8 %90, ptr %92, align 4
  %93 = load i32, ptr %8, align 4
  %94 = sext i32 %93 to i64
  %95 = call noalias ptr @calloc(i64 noundef 80, i64 noundef %94) #11
  %96 = load ptr, ptr %10, align 8
  %97 = getelementptr inbounds %struct.stream_info, ptr %96, i32 0, i32 0
  store ptr %95, ptr %97, align 8
  %98 = load ptr, ptr %10, align 8
  %99 = getelementptr inbounds %struct.stream_info, ptr %98, i32 0, i32 0
  %100 = load ptr, ptr %99, align 8
  %101 = icmp ne ptr %100, null
  %102 = xor i1 %101, true
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %110) #10
  store ptr null, ptr %10, align 8
  br label %111

111:                                              ; preds = %109
  store ptr null, ptr %5, align 8
  br label %655

112:                                              ; preds = %82
  %113 = load ptr, ptr %10, align 8
  %114 = getelementptr inbounds %struct.stream_info, ptr %113, i32 0, i32 0
  %115 = load ptr, ptr %114, align 8
  %116 = getelementptr inbounds %struct.stream, ptr %115, i64 0
  %117 = getelementptr inbounds %struct.stream, ptr %116, i32 0, i32 8
  store i32 1, ptr %117, align 8
  %118 = load i32, ptr %11, align 4
  %119 = sub nsw i32 %118, 1
  %120 = load ptr, ptr %10, align 8
  %121 = getelementptr inbounds %struct.stream_info, ptr %120, i32 0, i32 0
  %122 = load ptr, ptr %121, align 8
  %123 = getelementptr inbounds %struct.stream, ptr %122, i64 1
  %124 = getelementptr inbounds %struct.stream, ptr %123, i32 0, i32 8
  store i32 %119, ptr %124, align 8
  %125 = load ptr, ptr %6, align 8
  %126 = getelementptr inbounds %struct.rzip_control, ptr %125, i32 0, i32 32
  %127 = load i8, ptr %126, align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %254

130:                                              ; preds = %112
  %131 = load ptr, ptr %6, align 8
  %132 = getelementptr inbounds %struct.rzip_control, ptr %131, i32 0, i32 33
  %133 = load i8, ptr %132, align 2
  %134 = sext i8 %133 to i32
  %135 = icmp sgt i32 %134, 5
  br i1 %135, label %136, label %254

136:                                              ; preds = %130
  br label %137

137:                                              ; preds = %136
  %138 = load ptr, ptr %6, align 8
  %139 = getelementptr inbounds %struct.rzip_control, ptr %138, i32 0, i32 26
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 2048
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %150

143:                                              ; preds = %137
  br label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %6, align 8
  %146 = load ptr, ptr %6, align 8
  %147 = load i32, ptr %7, align 4
  %148 = call i64 @get_readseek(ptr noundef %146, i32 noundef %147)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %145, i32 noundef 4, i32 noundef 1105, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.21, i64 noundef %148)
  br label %149

149:                                              ; preds = %144
  br label %150

150:                                              ; preds = %149, %137
  br label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %6, align 8
  %153 = load i32, ptr %7, align 4
  %154 = load ptr, ptr %6, align 8
  %155 = getelementptr inbounds %struct.rzip_control, ptr %154, i32 0, i32 48
  %156 = call i32 @read_u8(ptr noundef %152, i32 noundef %153, ptr noundef %155)
  %157 = icmp ne i32 %156, 0
  %158 = xor i1 %157, true
  %159 = xor i1 %158, true
  %160 = zext i1 %159 to i32
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %167

163:                                              ; preds = %151
  br label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %165, i32 noundef 1107, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.22)
  br label %166

166:                                              ; preds = %164
  br label %644

167:                                              ; preds = %151
  br label %168

168:                                              ; preds = %167
  %169 = load ptr, ptr %6, align 8
  %170 = getelementptr inbounds %struct.rzip_control, ptr %169, i32 0, i32 26
  %171 = load i64, ptr %170, align 8
  %172 = and i64 %171, 2048
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %182

174:                                              ; preds = %168
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr %6, align 8
  %177 = load ptr, ptr %6, align 8
  %178 = getelementptr inbounds %struct.rzip_control, ptr %177, i32 0, i32 48
  %179 = load i8, ptr %178, align 8
  %180 = zext i8 %179 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %176, i32 noundef 4, i32 noundef 1110, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.23, i32 noundef %180)
  br label %181

181:                                              ; preds = %175
  br label %182

182:                                              ; preds = %181, %168
  br label %183

183:                                              ; preds = %182
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds %struct.rzip_control, ptr %184, i32 0, i32 26
  %186 = load i64, ptr %185, align 8
  %187 = and i64 %186, 8388608
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %253, label %189

189:                                              ; preds = %183
  br label %190

190:                                              ; preds = %189
  %191 = load ptr, ptr %6, align 8
  %192 = getelementptr inbounds %struct.rzip_control, ptr %191, i32 0, i32 26
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 2048
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %203

196:                                              ; preds = %190
  br label %197

197:                                              ; preds = %196
  %198 = load ptr, ptr %6, align 8
  %199 = load ptr, ptr %6, align 8
  %200 = load i32, ptr %7, align 4
  %201 = call i64 @get_readseek(ptr noundef %199, i32 noundef %200)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %198, i32 noundef 4, i32 noundef 1114, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.24, i64 noundef %201)
  br label %202

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202, %190
  br label %204

204:                                              ; preds = %203
  %205 = load ptr, ptr %6, align 8
  %206 = load i32, ptr %7, align 4
  %207 = load ptr, ptr %10, align 8
  %208 = getelementptr inbounds %struct.stream_info, ptr %207, i32 0, i32 8
  %209 = load ptr, ptr %10, align 8
  %210 = getelementptr inbounds %struct.stream_info, ptr %209, i32 0, i32 12
  %211 = load i8, ptr %210, align 4
  %212 = sext i8 %211 to i32
  %213 = call i32 @read_val(ptr noundef %205, i32 noundef %206, ptr noundef %208, i32 noundef %212)
  %214 = icmp ne i32 %213, 0
  %215 = xor i1 %214, true
  %216 = xor i1 %215, true
  %217 = zext i1 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %220, label %224

220:                                              ; preds = %204
  br label %221

221:                                              ; preds = %220
  %222 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %222, i32 noundef 1116, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.25)
  br label %223

223:                                              ; preds = %221
  br label %644

224:                                              ; preds = %204
  %225 = load ptr, ptr %10, align 8
  %226 = getelementptr inbounds %struct.stream_info, ptr %225, i32 0, i32 8
  %227 = load i64, ptr %226, align 8
  %228 = call i64 @__uint64_identity(i64 noundef %227)
  %229 = load ptr, ptr %10, align 8
  %230 = getelementptr inbounds %struct.stream_info, ptr %229, i32 0, i32 8
  store i64 %228, ptr %230, align 8
  br label %231

231:                                              ; preds = %224
  %232 = load ptr, ptr %6, align 8
  %233 = getelementptr inbounds %struct.rzip_control, ptr %232, i32 0, i32 26
  %234 = load i64, ptr %233, align 8
  %235 = and i64 %234, 2048
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %231
  br label %238

238:                                              ; preds = %237
  %239 = load ptr, ptr %6, align 8
  %240 = load ptr, ptr %10, align 8
  %241 = getelementptr inbounds %struct.stream_info, ptr %240, i32 0, i32 8
  %242 = load i64, ptr %241, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %239, i32 noundef 4, i32 noundef 1120, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.26, i64 noundef %242)
  br label %243

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243, %231
  br label %245

245:                                              ; preds = %244
  %246 = load ptr, ptr %10, align 8
  %247 = getelementptr inbounds %struct.stream_info, ptr %246, i32 0, i32 8
  %248 = load i64, ptr %247, align 8
  %249 = load ptr, ptr %6, align 8
  %250 = getelementptr inbounds %struct.rzip_control, ptr %249, i32 0, i32 34
  %251 = load i64, ptr %250, align 8
  %252 = add nsw i64 %251, %248
  store i64 %252, ptr %250, align 8
  br label %253

253:                                              ; preds = %245, %183
  br label %254

254:                                              ; preds = %253, %130, %112
  %255 = load ptr, ptr %6, align 8
  %256 = load i32, ptr %7, align 4
  %257 = call i64 @get_readseek(ptr noundef %255, i32 noundef %256)
  %258 = load ptr, ptr %10, align 8
  %259 = getelementptr inbounds %struct.stream_info, ptr %258, i32 0, i32 5
  store i64 %257, ptr %259, align 8
  %260 = load ptr, ptr %10, align 8
  %261 = getelementptr inbounds %struct.stream_info, ptr %260, i32 0, i32 5
  %262 = load i64, ptr %261, align 8
  %263 = icmp eq i64 %262, -1
  %264 = xor i1 %263, true
  %265 = xor i1 %264, true
  %266 = zext i1 %265 to i32
  %267 = sext i32 %266 to i64
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %270

269:                                              ; preds = %254
  br label %644

270:                                              ; preds = %254
  store i32 0, ptr %12, align 4
  br label %271

271:                                              ; preds = %639, %270
  %272 = load i32, ptr %12, align 4
  %273 = load i32, ptr %8, align 4
  %274 = icmp slt i32 %272, %273
  br i1 %274, label %275, label %642

275:                                              ; preds = %271
  %276 = load i32, ptr %12, align 4
  %277 = sext i32 %276 to i64
  %278 = load ptr, ptr %10, align 8
  %279 = getelementptr inbounds %struct.stream_info, ptr %278, i32 0, i32 0
  %280 = load ptr, ptr %279, align 8
  %281 = load i32, ptr %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.stream, ptr %280, i64 %282
  %284 = getelementptr inbounds %struct.stream, ptr %283, i32 0, i32 7
  store i64 %277, ptr %284, align 8
  %285 = load ptr, ptr %10, align 8
  %286 = getelementptr inbounds %struct.stream_info, ptr %285, i32 0, i32 0
  %287 = load ptr, ptr %286, align 8
  %288 = load i32, ptr %12, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.stream, ptr %287, i64 %289
  %291 = getelementptr inbounds %struct.stream, ptr %290, i32 0, i32 7
  %292 = load i64, ptr %291, align 8
  %293 = load ptr, ptr %10, align 8
  %294 = getelementptr inbounds %struct.stream_info, ptr %293, i32 0, i32 0
  %295 = load ptr, ptr %294, align 8
  %296 = load i32, ptr %12, align 4
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds %struct.stream, ptr %295, i64 %297
  %299 = getelementptr inbounds %struct.stream, ptr %298, i32 0, i32 5
  store i64 %292, ptr %299, align 8
  %300 = load ptr, ptr %10, align 8
  %301 = getelementptr inbounds %struct.stream_info, ptr %300, i32 0, i32 0
  %302 = load ptr, ptr %301, align 8
  %303 = load i32, ptr %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds %struct.stream, ptr %302, i64 %304
  %306 = getelementptr inbounds %struct.stream, ptr %305, i32 0, i32 7
  %307 = load i64, ptr %306, align 8
  %308 = load ptr, ptr %10, align 8
  %309 = getelementptr inbounds %struct.stream_info, ptr %308, i32 0, i32 0
  %310 = load ptr, ptr %309, align 8
  %311 = load i32, ptr %12, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.stream, ptr %310, i64 %312
  %314 = getelementptr inbounds %struct.stream, ptr %313, i32 0, i32 6
  store i64 %307, ptr %314, align 8
  %315 = load ptr, ptr %6, align 8
  %316 = getelementptr inbounds %struct.rzip_control, ptr %315, i32 0, i32 26
  %317 = load i64, ptr %316, align 8
  %318 = and i64 %317, 8388608
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %326

320:                                              ; preds = %275
  %321 = load ptr, ptr %6, align 8
  %322 = load i32, ptr %7, align 4
  %323 = getelementptr inbounds [33 x i8], ptr %15, i64 0, i64 0
  %324 = call i32 @read_buf(ptr noundef %321, i32 noundef %322, ptr noundef %323, i64 noundef 8)
  %325 = icmp ne i32 %324, 0
  br label %326

326:                                              ; preds = %320, %275
  %327 = phi i1 [ false, %275 ], [ %325, %320 ]
  %328 = xor i1 %327, true
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %334

333:                                              ; preds = %326
  br label %644

334:                                              ; preds = %326
  br label %335

335:                                              ; preds = %580, %334
  %336 = load ptr, ptr %6, align 8
  %337 = load i32, ptr %7, align 4
  %338 = call i32 @read_u8(ptr noundef %336, i32 noundef %337, ptr noundef %14)
  %339 = icmp ne i32 %338, 0
  %340 = xor i1 %339, true
  %341 = xor i1 %340, true
  %342 = zext i1 %341 to i32
  %343 = sext i32 %342 to i64
  %344 = icmp ne i64 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %335
  br label %644

346:                                              ; preds = %335
  %347 = load ptr, ptr %6, align 8
  %348 = getelementptr inbounds %struct.rzip_control, ptr %347, i32 0, i32 32
  %349 = load i8, ptr %348, align 1
  %350 = sext i8 %349 to i32
  %351 = icmp eq i32 %350, 0
  br i1 %351, label %352, label %405

352:                                              ; preds = %346
  %353 = load ptr, ptr %6, align 8
  %354 = getelementptr inbounds %struct.rzip_control, ptr %353, i32 0, i32 33
  %355 = load i8, ptr %354, align 2
  %356 = sext i8 %355 to i32
  %357 = icmp slt i32 %356, 4
  br i1 %357, label %358, label %405

358:                                              ; preds = %352
  %359 = load ptr, ptr %6, align 8
  %360 = load i32, ptr %7, align 4
  %361 = call i32 @read_u32(ptr noundef %359, i32 noundef %360, ptr noundef %18)
  %362 = icmp ne i32 %361, 0
  %363 = xor i1 %362, true
  %364 = xor i1 %363, true
  %365 = zext i1 %364 to i32
  %366 = sext i32 %365 to i64
  %367 = icmp ne i64 %366, 0
  br i1 %367, label %368, label %369

368:                                              ; preds = %358
  br label %644

369:                                              ; preds = %358
  %370 = load ptr, ptr %6, align 8
  %371 = load i32, ptr %7, align 4
  %372 = call i32 @read_u32(ptr noundef %370, i32 noundef %371, ptr noundef %19)
  %373 = icmp ne i32 %372, 0
  %374 = xor i1 %373, true
  %375 = xor i1 %374, true
  %376 = zext i1 %375 to i32
  %377 = sext i32 %376 to i64
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %380

379:                                              ; preds = %369
  br label %644

380:                                              ; preds = %369
  %381 = load ptr, ptr %6, align 8
  %382 = load i32, ptr %7, align 4
  %383 = call i32 @read_u32(ptr noundef %381, i32 noundef %382, ptr noundef %20)
  %384 = icmp ne i32 %383, 0
  %385 = xor i1 %384, true
  %386 = xor i1 %385, true
  %387 = zext i1 %386 to i32
  %388 = sext i32 %387 to i64
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %391

390:                                              ; preds = %380
  br label %644

391:                                              ; preds = %380
  %392 = load i32, ptr %18, align 4
  %393 = zext i32 %392 to i64
  store i64 %393, ptr %16, align 8
  %394 = load i32, ptr %19, align 4
  %395 = zext i32 %394 to i64
  store i64 %395, ptr %17, align 8
  %396 = load i32, ptr %20, align 4
  %397 = zext i32 %396 to i64
  %398 = load ptr, ptr %10, align 8
  %399 = getelementptr inbounds %struct.stream_info, ptr %398, i32 0, i32 0
  %400 = load ptr, ptr %399, align 8
  %401 = load i32, ptr %12, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.stream, ptr %400, i64 %402
  %404 = getelementptr inbounds %struct.stream, ptr %403, i32 0, i32 0
  store i64 %397, ptr %404, align 8
  store i64 13, ptr %13, align 8
  br label %493

405:                                              ; preds = %352, %346
  br label %406

406:                                              ; preds = %405
  %407 = load ptr, ptr %6, align 8
  %408 = getelementptr inbounds %struct.rzip_control, ptr %407, i32 0, i32 26
  %409 = load i64, ptr %408, align 8
  %410 = and i64 %409, 2048
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %420

412:                                              ; preds = %406
  br label %413

413:                                              ; preds = %412
  %414 = load ptr, ptr %6, align 8
  %415 = load i32, ptr %12, align 4
  %416 = load ptr, ptr %6, align 8
  %417 = load i32, ptr %7, align 4
  %418 = call i64 @get_readseek(ptr noundef %416, i32 noundef %417)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %414, i32 noundef 4, i32 noundef 1160, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.27, i32 noundef %415, i64 noundef %418)
  br label %419

419:                                              ; preds = %413
  br label %420

420:                                              ; preds = %419, %406
  br label %421

421:                                              ; preds = %420
  %422 = load ptr, ptr %6, align 8
  %423 = getelementptr inbounds %struct.rzip_control, ptr %422, i32 0, i32 32
  %424 = load i8, ptr %423, align 1
  %425 = sext i8 %424 to i32
  %426 = icmp eq i32 %425, 0
  br i1 %426, label %427, label %433

427:                                              ; preds = %421
  %428 = load ptr, ptr %6, align 8
  %429 = getelementptr inbounds %struct.rzip_control, ptr %428, i32 0, i32 33
  %430 = load i8, ptr %429, align 2
  %431 = sext i8 %430 to i32
  %432 = icmp slt i32 %431, 6
  br i1 %432, label %439, label %433

433:                                              ; preds = %427, %421
  %434 = load ptr, ptr %6, align 8
  %435 = getelementptr inbounds %struct.rzip_control, ptr %434, i32 0, i32 26
  %436 = load i64, ptr %435, align 8
  %437 = and i64 %436, 8388608
  %438 = icmp ne i64 %437, 0
  br i1 %438, label %439, label %440

439:                                              ; preds = %433, %427
  store i32 8, ptr %21, align 4
  br label %445

440:                                              ; preds = %433
  %441 = load ptr, ptr %10, align 8
  %442 = getelementptr inbounds %struct.stream_info, ptr %441, i32 0, i32 12
  %443 = load i8, ptr %442, align 4
  %444 = sext i8 %443 to i32
  store i32 %444, ptr %21, align 4
  br label %445

445:                                              ; preds = %440, %439
  %446 = load ptr, ptr %6, align 8
  %447 = load i32, ptr %7, align 4
  %448 = load i32, ptr %21, align 4
  %449 = call i32 @read_val(ptr noundef %446, i32 noundef %447, ptr noundef %16, i32 noundef %448)
  %450 = icmp ne i32 %449, 0
  %451 = xor i1 %450, true
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %445
  br label %644

457:                                              ; preds = %445
  %458 = load ptr, ptr %6, align 8
  %459 = load i32, ptr %7, align 4
  %460 = load i32, ptr %21, align 4
  %461 = call i32 @read_val(ptr noundef %458, i32 noundef %459, ptr noundef %17, i32 noundef %460)
  %462 = icmp ne i32 %461, 0
  %463 = xor i1 %462, true
  %464 = xor i1 %463, true
  %465 = zext i1 %464 to i32
  %466 = sext i32 %465 to i64
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %469

468:                                              ; preds = %457
  br label %644

469:                                              ; preds = %457
  %470 = load ptr, ptr %6, align 8
  %471 = load i32, ptr %7, align 4
  %472 = load ptr, ptr %10, align 8
  %473 = getelementptr inbounds %struct.stream_info, ptr %472, i32 0, i32 0
  %474 = load ptr, ptr %473, align 8
  %475 = load i32, ptr %12, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds %struct.stream, ptr %474, i64 %476
  %478 = getelementptr inbounds %struct.stream, ptr %477, i32 0, i32 0
  %479 = load i32, ptr %21, align 4
  %480 = call i32 @read_val(ptr noundef %470, i32 noundef %471, ptr noundef %478, i32 noundef %479)
  %481 = icmp ne i32 %480, 0
  %482 = xor i1 %481, true
  %483 = xor i1 %482, true
  %484 = zext i1 %483 to i32
  %485 = sext i32 %484 to i64
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %469
  br label %644

488:                                              ; preds = %469
  %489 = load i32, ptr %21, align 4
  %490 = mul nsw i32 %489, 3
  %491 = add nsw i32 1, %490
  %492 = sext i32 %491 to i64
  store i64 %492, ptr %13, align 8
  br label %493

493:                                              ; preds = %488, %391
  %494 = load i64, ptr %13, align 8
  %495 = load ptr, ptr %10, align 8
  %496 = getelementptr inbounds %struct.stream_info, ptr %495, i32 0, i32 6
  %497 = load i64, ptr %496, align 8
  %498 = add nsw i64 %497, %494
  store i64 %498, ptr %496, align 8
  %499 = load ptr, ptr %6, align 8
  %500 = getelementptr inbounds %struct.rzip_control, ptr %499, i32 0, i32 26
  %501 = load i64, ptr %500, align 8
  %502 = and i64 %501, 8388608
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %527

504:                                              ; preds = %493
  %505 = load ptr, ptr %6, align 8
  %506 = getelementptr inbounds [33 x i8], ptr %15, i64 0, i64 0
  %507 = load ptr, ptr %10, align 8
  %508 = getelementptr inbounds %struct.stream_info, ptr %507, i32 0, i32 0
  %509 = load ptr, ptr %508, align 8
  %510 = load i32, ptr %12, align 4
  %511 = sext i32 %510 to i64
  %512 = getelementptr inbounds %struct.stream, ptr %509, i64 %511
  %513 = getelementptr inbounds %struct.stream, ptr %512, i32 0, i32 0
  %514 = call zeroext i1 @decrypt_header(ptr noundef %505, ptr noundef %506, ptr noundef %14, ptr noundef %16, ptr noundef %17, ptr noundef %513)
  %515 = xor i1 %514, true
  %516 = xor i1 %515, true
  %517 = xor i1 %516, true
  %518 = zext i1 %517 to i32
  %519 = sext i32 %518 to i64
  %520 = icmp ne i64 %519, 0
  br i1 %520, label %521, label %522

521:                                              ; preds = %504
  br label %644

522:                                              ; preds = %504
  %523 = load ptr, ptr %10, align 8
  %524 = getelementptr inbounds %struct.stream_info, ptr %523, i32 0, i32 6
  %525 = load i64, ptr %524, align 8
  %526 = add nsw i64 %525, 8
  store i64 %526, ptr %524, align 8
  br label %527

527:                                              ; preds = %522, %493
  %528 = load i64, ptr %16, align 8
  %529 = call i64 @__uint64_identity(i64 noundef %528)
  store i64 %529, ptr %16, align 8
  %530 = load i64, ptr %17, align 8
  %531 = call i64 @__uint64_identity(i64 noundef %530)
  store i64 %531, ptr %17, align 8
  %532 = load ptr, ptr %10, align 8
  %533 = getelementptr inbounds %struct.stream_info, ptr %532, i32 0, i32 0
  %534 = load ptr, ptr %533, align 8
  %535 = load i32, ptr %12, align 4
  %536 = sext i32 %535 to i64
  %537 = getelementptr inbounds %struct.stream, ptr %534, i64 %536
  %538 = getelementptr inbounds %struct.stream, ptr %537, i32 0, i32 0
  %539 = load i64, ptr %538, align 8
  %540 = call i64 @__uint64_identity(i64 noundef %539)
  %541 = load ptr, ptr %10, align 8
  %542 = getelementptr inbounds %struct.stream_info, ptr %541, i32 0, i32 0
  %543 = load ptr, ptr %542, align 8
  %544 = load i32, ptr %12, align 4
  %545 = sext i32 %544 to i64
  %546 = getelementptr inbounds %struct.stream, ptr %543, i64 %545
  %547 = getelementptr inbounds %struct.stream, ptr %546, i32 0, i32 0
  store i64 %540, ptr %547, align 8
  %548 = load i8, ptr %14, align 1
  %549 = zext i8 %548 to i32
  %550 = icmp eq i32 %549, 3
  br i1 %550, label %551, label %570

551:                                              ; preds = %527
  %552 = load i64, ptr %16, align 8
  %553 = icmp eq i64 %552, 0
  br i1 %553, label %554, label %570

554:                                              ; preds = %551
  %555 = load i64, ptr %17, align 8
  %556 = icmp eq i64 %555, 0
  br i1 %556, label %557, label %570

557:                                              ; preds = %554
  %558 = load ptr, ptr %10, align 8
  %559 = getelementptr inbounds %struct.stream_info, ptr %558, i32 0, i32 0
  %560 = load ptr, ptr %559, align 8
  %561 = load i32, ptr %12, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds %struct.stream, ptr %560, i64 %562
  %564 = getelementptr inbounds %struct.stream, ptr %563, i32 0, i32 0
  %565 = load i64, ptr %564, align 8
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %567, label %570

567:                                              ; preds = %557
  %568 = load i32, ptr %12, align 4
  %569 = icmp eq i32 %568, 0
  br label %570

570:                                              ; preds = %567, %557, %554, %551, %527
  %571 = phi i1 [ false, %557 ], [ false, %554 ], [ false, %551 ], [ false, %527 ], [ %569, %567 ]
  %572 = xor i1 %571, true
  %573 = xor i1 %572, true
  %574 = zext i1 %573 to i32
  %575 = sext i32 %574 to i64
  %576 = icmp ne i64 %575, 0
  br i1 %576, label %577, label %586

577:                                              ; preds = %570
  br label %578

578:                                              ; preds = %577
  %579 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %579, i32 noundef 1187, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.28)
  br label %580

580:                                              ; preds = %578
  %581 = load i64, ptr %13, align 8
  %582 = load ptr, ptr %10, align 8
  %583 = getelementptr inbounds %struct.stream_info, ptr %582, i32 0, i32 5
  %584 = load i64, ptr %583, align 8
  %585 = add nsw i64 %584, %581
  store i64 %585, ptr %583, align 8
  br label %335

586:                                              ; preds = %570
  %587 = load i8, ptr %14, align 1
  %588 = zext i8 %587 to i32
  %589 = icmp ne i32 %588, 3
  %590 = xor i1 %589, true
  %591 = xor i1 %590, true
  %592 = zext i1 %591 to i32
  %593 = sext i32 %592 to i64
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %611

595:                                              ; preds = %586
  br label %596

596:                                              ; preds = %595
  %597 = load ptr, ptr %6, align 8
  %598 = load i8, ptr %14, align 1
  %599 = zext i8 %598 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %597, i32 noundef 1193, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.29, i32 noundef %599)
  br label %600

600:                                              ; preds = %596
  %601 = load ptr, ptr %6, align 8
  %602 = getelementptr inbounds %struct.rzip_control, ptr %601, i32 0, i32 26
  %603 = load i64, ptr %602, align 8
  %604 = and i64 %603, 8388608
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %610

606:                                              ; preds = %600
  br label %607

607:                                              ; preds = %606
  %608 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %608, i32 noundef 1195, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.30)
  br label %609

609:                                              ; preds = %607
  br label %610

610:                                              ; preds = %609, %600
  br label %644

611:                                              ; preds = %586
  %612 = load i64, ptr %16, align 8
  %613 = icmp ne i64 %612, 0
  %614 = xor i1 %613, true
  %615 = xor i1 %614, true
  %616 = zext i1 %615 to i32
  %617 = sext i32 %616 to i64
  %618 = icmp ne i64 %617, 0
  br i1 %618, label %619, label %625

619:                                              ; preds = %611
  br label %620

620:                                              ; preds = %619
  %621 = load ptr, ptr %6, align 8
  %622 = load i64, ptr %16, align 8
  %623 = load i64, ptr %17, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %621, i32 noundef 1199, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.31, i64 noundef %622, i64 noundef %623)
  br label %624

624:                                              ; preds = %620
  br label %644

625:                                              ; preds = %611
  %626 = load i64, ptr %17, align 8
  %627 = icmp ne i64 %626, 0
  %628 = xor i1 %627, true
  %629 = xor i1 %628, true
  %630 = zext i1 %629 to i32
  %631 = sext i32 %630 to i64
  %632 = icmp ne i64 %631, 0
  br i1 %632, label %633, label %638

633:                                              ; preds = %625
  br label %634

634:                                              ; preds = %633
  %635 = load ptr, ptr %6, align 8
  %636 = load i64, ptr %17, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %635, i32 noundef 1203, ptr noundef @.str, ptr noundef @__func__.open_stream_in, ptr noundef @.str.32, i64 noundef %636)
  br label %637

637:                                              ; preds = %634
  br label %644

638:                                              ; preds = %625
  br label %639

639:                                              ; preds = %638
  %640 = load i32, ptr %12, align 4
  %641 = add nsw i32 %640, 1
  store i32 %641, ptr %12, align 4
  br label %271, !llvm.loop !14

642:                                              ; preds = %271
  %643 = load ptr, ptr %10, align 8
  store ptr %643, ptr %5, align 8
  br label %655

644:                                              ; preds = %637, %624, %610, %521, %487, %468, %456, %390, %379, %368, %345, %333, %269, %223, %166
  br label %645

645:                                              ; preds = %644
  %646 = load ptr, ptr %10, align 8
  %647 = getelementptr inbounds %struct.stream_info, ptr %646, i32 0, i32 0
  %648 = load ptr, ptr %647, align 8
  call void @free(ptr noundef %648) #10
  %649 = load ptr, ptr %10, align 8
  %650 = getelementptr inbounds %struct.stream_info, ptr %649, i32 0, i32 0
  store ptr null, ptr %650, align 8
  br label %651

651:                                              ; preds = %645
  br label %652

652:                                              ; preds = %651
  %653 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %653) #10
  store ptr null, ptr %10, align 8
  br label %654

654:                                              ; preds = %652
  store ptr null, ptr %5, align 8
  br label %655

655:                                              ; preds = %654, %642, %111, %79, %59, %31
  %656 = load ptr, ptr %5, align 8
  ret ptr %656
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_u8(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i32, ptr %5, align 4
  %9 = load ptr, ptr %6, align 8
  %10 = call i32 @read_buf(ptr noundef %7, i32 noundef %8, ptr noundef %9, i64 noundef 1)
  ret i32 %10
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_val(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  store i32 %3, ptr %8, align 4
  %10 = load ptr, ptr %7, align 8
  store i64 0, ptr %10, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load i32, ptr %6, align 4
  %13 = load ptr, ptr %7, align 8
  %14 = load i32, ptr %8, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @read_buf(ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %15)
  store i32 %16, ptr %9, align 4
  %17 = load i32, ptr %9, align 4
  ret i32 %17
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_buf(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store ptr %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load i32, ptr %7, align 4
  %13 = load ptr, ptr %8, align 8
  %14 = load i64, ptr %9, align 8
  %15 = call i64 @read_1g(ptr noundef %11, i32 noundef %12, ptr noundef %13, i64 noundef %14)
  store i64 %15, ptr %10, align 8
  %16 = load i64, ptr %10, align 8
  %17 = icmp eq i64 %16, -1
  %18 = xor i1 %17, true
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = sext i32 %20 to i64
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %6, align 8
  %26 = load i64, ptr %9, align 8
  %27 = call ptr @__errno_location() #12
  %28 = load i32, ptr %27, align 4
  %29 = call ptr @strerror(i32 noundef %28) #10
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %25, i32 noundef 776, ptr noundef @.str, ptr noundef @__func__.read_buf, ptr noundef @.str.41, i64 noundef %26, ptr noundef %29)
  br label %30

30:                                               ; preds = %24
  store i32 -1, ptr %5, align 4
  br label %47

31:                                               ; preds = %4
  %32 = load i64, ptr %10, align 8
  %33 = load i64, ptr %9, align 8
  %34 = icmp ne i64 %32, %33
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %31
  br label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %6, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load i64, ptr %10, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %42, i32 noundef 780, ptr noundef @.str, ptr noundef @__func__.read_buf, ptr noundef @.str.42, i64 noundef %43, i64 noundef %44)
  br label %45

45:                                               ; preds = %41
  store i32 -1, ptr %5, align 4
  br label %47

46:                                               ; preds = %31
  store i32 0, ptr %5, align 4
  br label %47

47:                                               ; preds = %46, %45, %30
  %48 = load i32, ptr %5, align 4
  ret i32 %48
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_u32(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  store ptr %2, ptr %6, align 8
  %8 = load ptr, ptr %4, align 8
  %9 = load i32, ptr %5, align 4
  %10 = load ptr, ptr %6, align 8
  %11 = call i32 @read_buf(ptr noundef %8, i32 noundef %9, ptr noundef %10, i64 noundef 4)
  store i32 %11, ptr %7, align 4
  %12 = load ptr, ptr %6, align 8
  %13 = load i32, ptr %12, align 4
  %14 = call i32 @__uint32_identity(i32 noundef %13)
  %15 = load ptr, ptr %6, align 8
  store i32 %14, ptr %15, align 4
  %16 = load i32, ptr %7, align 4
  ret i32 %16
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @decrypt_header(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
  %7 = alloca i1, align 1
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  store ptr %0, ptr %8, align 8
  store ptr %1, ptr %9, align 8
  store ptr %2, ptr %10, align 8
  store ptr %3, ptr %11, align 8
  store ptr %4, ptr %12, align 8
  store ptr %5, ptr %13, align 8
  %15 = load ptr, ptr %9, align 8
  %16 = getelementptr inbounds i8, ptr %15, i64 8
  store ptr %16, ptr %14, align 8
  %17 = load ptr, ptr %14, align 8
  %18 = load ptr, ptr %10, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %17, ptr align 1 %18, i64 1, i1 false)
  %19 = load ptr, ptr %14, align 8
  %20 = getelementptr inbounds i8, ptr %19, i64 1
  %21 = load ptr, ptr %11, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %20, ptr align 8 %21, i64 8, i1 false)
  %22 = load ptr, ptr %14, align 8
  %23 = getelementptr inbounds i8, ptr %22, i64 9
  %24 = load ptr, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %23, ptr align 8 %24, i64 8, i1 false)
  %25 = load ptr, ptr %14, align 8
  %26 = getelementptr inbounds i8, ptr %25, i64 17
  %27 = load ptr, ptr %13, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %26, ptr align 8 %27, i64 8, i1 false)
  %28 = load ptr, ptr %8, align 8
  %29 = load ptr, ptr %14, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = call zeroext i1 @lrz_decrypt(ptr noundef %28, ptr noundef %29, i64 noundef 25, ptr noundef %30)
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %6
  store i1 false, ptr %7, align 1
  br label %51

39:                                               ; preds = %6
  %40 = load ptr, ptr %10, align 8
  %41 = load ptr, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %40, ptr align 1 %41, i64 1, i1 false)
  %42 = load ptr, ptr %11, align 8
  %43 = load ptr, ptr %14, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %42, ptr align 1 %44, i64 8, i1 false)
  %45 = load ptr, ptr %12, align 8
  %46 = load ptr, ptr %14, align 8
  %47 = getelementptr inbounds i8, ptr %46, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %45, ptr align 1 %47, i64 8, i1 false)
  %48 = load ptr, ptr %13, align 8
  %49 = load ptr, ptr %14, align 8
  %50 = getelementptr inbounds i8, ptr %49, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %48, ptr align 1 %50, i64 8, i1 false)
  store i1 true, ptr %7, align 1
  br label %51

51:                                               ; preds = %39, %38
  %52 = load i1, ptr %7, align 1
  ret i1 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = load ptr, ptr %5, align 8
  %9 = load i32, ptr %6, align 4
  call void @clear_buffer(ptr noundef %7, ptr noundef %8, i32 noundef %9, i32 noundef 1)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  store i32 %3, ptr %8, align 4
  %10 = load ptr, ptr %5, align 8
  %11 = load ptr, ptr @cthread, align 8
  %12 = load i32, ptr @clear_buffer.i, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.compress_thread, ptr %11, i64 %13
  %15 = getelementptr inbounds %struct.compress_thread, ptr %14, i32 0, i32 4
  call void @cksem_wait(ptr noundef %10, ptr noundef %15)
  %16 = load ptr, ptr %6, align 8
  %17 = load ptr, ptr @cthread, align 8
  %18 = load i32, ptr @clear_buffer.i, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.compress_thread, ptr %17, i64 %19
  %21 = getelementptr inbounds %struct.compress_thread, ptr %20, i32 0, i32 5
  store ptr %16, ptr %21, align 8
  %22 = load i32, ptr %7, align 4
  %23 = load ptr, ptr @cthread, align 8
  %24 = load i32, ptr @clear_buffer.i, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.compress_thread, ptr %23, i64 %25
  %27 = getelementptr inbounds %struct.compress_thread, ptr %26, i32 0, i32 6
  store i32 %22, ptr %27, align 8
  %28 = load ptr, ptr %6, align 8
  %29 = getelementptr inbounds %struct.stream_info, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = load i32, ptr %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.stream, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.stream, ptr %33, i32 0, i32 1
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr @cthread, align 8
  %37 = load i32, ptr @clear_buffer.i, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.compress_thread, ptr %36, i64 %38
  %40 = getelementptr inbounds %struct.compress_thread, ptr %39, i32 0, i32 0
  store ptr %35, ptr %40, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.stream_info, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = load i32, ptr %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.stream, ptr %43, i64 %45
  %47 = getelementptr inbounds %struct.stream, ptr %46, i32 0, i32 2
  %48 = load i64, ptr %47, align 8
  %49 = load ptr, ptr @cthread, align 8
  %50 = load i32, ptr @clear_buffer.i, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.compress_thread, ptr %49, i64 %51
  %53 = getelementptr inbounds %struct.compress_thread, ptr %52, i32 0, i32 2
  store i64 %48, ptr %53, align 8
  br label %54

54:                                               ; preds = %4
  %55 = load ptr, ptr %5, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 26
  %57 = load i64, ptr %56, align 8
  %58 = and i64 %57, 2048
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %72

60:                                               ; preds = %54
  br label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %5, align 8
  %63 = load i32, ptr @clear_buffer.i, align 4
  %64 = load ptr, ptr @cthread, align 8
  %65 = load i32, ptr @clear_buffer.i, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.compress_thread, ptr %64, i64 %66
  %68 = getelementptr inbounds %struct.compress_thread, ptr %67, i32 0, i32 2
  %69 = load i64, ptr %68, align 8
  %70 = load i32, ptr %7, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %62, i32 noundef 4, i32 noundef 1472, ptr noundef @.str, ptr noundef @__func__.clear_buffer, ptr noundef @.str.43, i32 noundef %63, i64 noundef %69, i32 noundef %70)
  br label %71

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %54
  br label %73

73:                                               ; preds = %72
  %74 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %74, ptr %9, align 8
  %75 = load ptr, ptr %9, align 8
  %76 = icmp ne ptr %75, null
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %73
  %84 = load ptr, ptr %5, align 8
  %85 = load ptr, ptr @cthread, align 8
  %86 = load i32, ptr @clear_buffer.i, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.compress_thread, ptr %85, i64 %87
  %89 = getelementptr inbounds %struct.compress_thread, ptr %88, i32 0, i32 4
  call void @cksem_post(ptr noundef %84, ptr noundef %89)
  %90 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %90, i32 noundef 1477, ptr noundef @.str, ptr noundef @__func__.clear_buffer, ptr noundef @.str.44)
  br label %91

91:                                               ; preds = %83, %73
  %92 = load i32, ptr @clear_buffer.i, align 4
  %93 = load ptr, ptr %9, align 8
  %94 = getelementptr inbounds %struct.stream_thread_struct, ptr %93, i32 0, i32 0
  store i32 %92, ptr %94, align 8
  %95 = load ptr, ptr %5, align 8
  %96 = load ptr, ptr %9, align 8
  %97 = getelementptr inbounds %struct.stream_thread_struct, ptr %96, i32 0, i32 1
  store ptr %95, ptr %97, align 8
  %98 = load ptr, ptr %5, align 8
  %99 = load ptr, ptr @threads, align 8
  %100 = load i32, ptr @clear_buffer.i, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i64, ptr %99, i64 %101
  %103 = load ptr, ptr %9, align 8
  %104 = call zeroext i1 @create_pthread(ptr noundef %98, ptr noundef %102, ptr noundef null, ptr noundef @compthread, ptr noundef %103)
  br i1 %104, label %105, label %113

105:                                              ; preds = %91
  %106 = load ptr, ptr %5, align 8
  %107 = load ptr, ptr @threads, align 8
  %108 = load i32, ptr @clear_buffer.i, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, ptr %107, i64 %109
  %111 = call zeroext i1 @detach_pthread(ptr noundef %106, ptr noundef %110)
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %105, %91
  %114 = phi i1 [ true, %91 ], [ %112, %105 ]
  %115 = xor i1 %114, true
  %116 = xor i1 %115, true
  %117 = zext i1 %116 to i32
  %118 = sext i32 %117 to i64
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %113
  %121 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %121, i32 noundef 1483, ptr noundef @.str, ptr noundef @__func__.clear_buffer, ptr noundef @.str.45)
  br label %122

122:                                              ; preds = %120, %113
  %123 = load i32, ptr %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %165

125:                                              ; preds = %122
  %126 = load ptr, ptr %6, align 8
  %127 = getelementptr inbounds %struct.stream_info, ptr %126, i32 0, i32 3
  %128 = load i64, ptr %127, align 8
  %129 = call noalias ptr @malloc(i64 noundef %128) #13
  %130 = load ptr, ptr %6, align 8
  %131 = getelementptr inbounds %struct.stream_info, ptr %130, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8
  %133 = load i32, ptr %7, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.stream, ptr %132, i64 %134
  %136 = getelementptr inbounds %struct.stream, ptr %135, i32 0, i32 1
  store ptr %129, ptr %136, align 8
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds %struct.stream_info, ptr %137, i32 0, i32 0
  %139 = load ptr, ptr %138, align 8
  %140 = load i32, ptr %7, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.stream, ptr %139, i64 %141
  %143 = getelementptr inbounds %struct.stream, ptr %142, i32 0, i32 1
  %144 = load ptr, ptr %143, align 8
  %145 = icmp ne ptr %144, null
  %146 = xor i1 %145, true
  %147 = xor i1 %146, true
  %148 = xor i1 %147, true
  %149 = zext i1 %148 to i32
  %150 = sext i32 %149 to i64
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %157

152:                                              ; preds = %125
  %153 = load ptr, ptr %5, align 8
  %154 = load ptr, ptr %6, align 8
  %155 = getelementptr inbounds %struct.stream_info, ptr %154, i32 0, i32 3
  %156 = load i64, ptr %155, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %153, i32 noundef 1490, ptr noundef @.str, ptr noundef @__func__.clear_buffer, ptr noundef @.str.46, i64 noundef %156)
  br label %157

157:                                              ; preds = %152, %125
  %158 = load ptr, ptr %6, align 8
  %159 = getelementptr inbounds %struct.stream_info, ptr %158, i32 0, i32 0
  %160 = load ptr, ptr %159, align 8
  %161 = load i32, ptr %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.stream, ptr %160, i64 %162
  %164 = getelementptr inbounds %struct.stream, ptr %163, i32 0, i32 2
  store i64 0, ptr %164, align 8
  br label %165

165:                                              ; preds = %157, %122
  %166 = load i32, ptr @clear_buffer.i, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, ptr @clear_buffer.i, align 4
  %168 = load ptr, ptr %5, align 8
  %169 = getelementptr inbounds %struct.rzip_control, ptr %168, i32 0, i32 30
  %170 = load i32, ptr %169, align 8
  %171 = icmp eq i32 %167, %170
  br i1 %171, label %172, label %173

172:                                              ; preds = %165
  store i32 0, ptr @clear_buffer.i, align 4
  br label %173

173:                                              ; preds = %172, %165
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @write_stream(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  store i64 %4, ptr %10, align 8
  %13 = load ptr, ptr %7, align 8
  store ptr %13, ptr %11, align 8
  br label %14

14:                                               ; preds = %100, %5
  %15 = load i64, ptr %10, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %101

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
  %49 = load ptr, ptr %11, align 8
  %50 = getelementptr inbounds %struct.stream_info, ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8
  %52 = load i32, ptr %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.stream, ptr %51, i64 %53
  %55 = getelementptr inbounds %struct.stream, ptr %54, i32 0, i32 1
  %56 = load ptr, ptr %55, align 8
  %57 = load ptr, ptr %11, align 8
  %58 = getelementptr inbounds %struct.stream_info, ptr %57, i32 0, i32 0
  %59 = load ptr, ptr %58, align 8
  %60 = load i32, ptr %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.stream, ptr %59, i64 %61
  %63 = getelementptr inbounds %struct.stream, ptr %62, i32 0, i32 2
  %64 = load i64, ptr %63, align 8
  %65 = getelementptr inbounds i8, ptr %56, i64 %64
  %66 = load ptr, ptr %9, align 8
  %67 = load i64, ptr %12, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %65, ptr align 1 %66, i64 %67, i1 false)
  %68 = load i64, ptr %12, align 8
  %69 = load ptr, ptr %11, align 8
  %70 = getelementptr inbounds %struct.stream_info, ptr %69, i32 0, i32 0
  %71 = load ptr, ptr %70, align 8
  %72 = load i32, ptr %8, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.stream, ptr %71, i64 %73
  %75 = getelementptr inbounds %struct.stream, ptr %74, i32 0, i32 2
  %76 = load i64, ptr %75, align 8
  %77 = add nsw i64 %76, %68
  store i64 %77, ptr %75, align 8
  %78 = load i64, ptr %12, align 8
  %79 = load ptr, ptr %9, align 8
  %80 = getelementptr inbounds i8, ptr %79, i64 %78
  store ptr %80, ptr %9, align 8
  %81 = load i64, ptr %12, align 8
  %82 = load i64, ptr %10, align 8
  %83 = sub nsw i64 %82, %81
  store i64 %83, ptr %10, align 8
  %84 = load ptr, ptr %11, align 8
  %85 = getelementptr inbounds %struct.stream_info, ptr %84, i32 0, i32 0
  %86 = load ptr, ptr %85, align 8
  %87 = load i32, ptr %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.stream, ptr %86, i64 %88
  %90 = getelementptr inbounds %struct.stream, ptr %89, i32 0, i32 2
  %91 = load i64, ptr %90, align 8
  %92 = load ptr, ptr %11, align 8
  %93 = getelementptr inbounds %struct.stream_info, ptr %92, i32 0, i32 3
  %94 = load i64, ptr %93, align 8
  %95 = icmp eq i64 %91, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %47
  %97 = load ptr, ptr %6, align 8
  %98 = load ptr, ptr %11, align 8
  %99 = load i32, ptr %8, align 4
  call void @flush_buffer(ptr noundef %97, ptr noundef %98, i32 noundef %99)
  br label %100

100:                                              ; preds = %96, %47
  br label %14, !llvm.loop !15

101:                                              ; preds = %14
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @read_stream(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i32 %2, ptr %9, align 4
  store ptr %3, ptr %10, align 8
  store i64 %4, ptr %11, align 8
  %15 = load ptr, ptr %8, align 8
  store ptr %15, ptr %12, align 8
  store i64 0, ptr %13, align 8
  br label %16

16:                                               ; preds = %155, %5
  %17 = load i64, ptr %11, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %156

19:                                               ; preds = %16
  %20 = load ptr, ptr %12, align 8
  %21 = getelementptr inbounds %struct.stream_info, ptr %20, i32 0, i32 0
  %22 = load ptr, ptr %21, align 8
  %23 = load i32, ptr %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.stream, ptr %22, i64 %24
  %26 = getelementptr inbounds %struct.stream, ptr %25, i32 0, i32 2
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr %12, align 8
  %29 = getelementptr inbounds %struct.stream_info, ptr %28, i32 0, i32 0
  %30 = load ptr, ptr %29, align 8
  %31 = load i32, ptr %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.stream, ptr %30, i64 %32
  %34 = getelementptr inbounds %struct.stream, ptr %33, i32 0, i32 3
  %35 = load i64, ptr %34, align 8
  %36 = sub nsw i64 %27, %35
  %37 = load i64, ptr %11, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %57

39:                                               ; preds = %19
  %40 = load ptr, ptr %12, align 8
  %41 = getelementptr inbounds %struct.stream_info, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = load i32, ptr %9, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.stream, ptr %42, i64 %44
  %46 = getelementptr inbounds %struct.stream, ptr %45, i32 0, i32 2
  %47 = load i64, ptr %46, align 8
  %48 = load ptr, ptr %12, align 8
  %49 = getelementptr inbounds %struct.stream_info, ptr %48, i32 0, i32 0
  %50 = load ptr, ptr %49, align 8
  %51 = load i32, ptr %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.stream, ptr %50, i64 %52
  %54 = getelementptr inbounds %struct.stream, ptr %53, i32 0, i32 3
  %55 = load i64, ptr %54, align 8
  %56 = sub nsw i64 %47, %55
  br label %59

57:                                               ; preds = %19
  %58 = load i64, ptr %11, align 8
  br label %59

59:                                               ; preds = %57, %39
  %60 = phi i64 [ %56, %39 ], [ %58, %57 ]
  store i64 %60, ptr %14, align 8
  %61 = load i64, ptr %14, align 8
  %62 = icmp sgt i64 %61, 0
  br i1 %62, label %63, label %102

63:                                               ; preds = %59
  %64 = load ptr, ptr %10, align 8
  %65 = load ptr, ptr %12, align 8
  %66 = getelementptr inbounds %struct.stream_info, ptr %65, i32 0, i32 0
  %67 = load ptr, ptr %66, align 8
  %68 = load i32, ptr %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.stream, ptr %67, i64 %69
  %71 = getelementptr inbounds %struct.stream, ptr %70, i32 0, i32 1
  %72 = load ptr, ptr %71, align 8
  %73 = load ptr, ptr %12, align 8
  %74 = getelementptr inbounds %struct.stream_info, ptr %73, i32 0, i32 0
  %75 = load ptr, ptr %74, align 8
  %76 = load i32, ptr %9, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.stream, ptr %75, i64 %77
  %79 = getelementptr inbounds %struct.stream, ptr %78, i32 0, i32 3
  %80 = load i64, ptr %79, align 8
  %81 = getelementptr inbounds i8, ptr %72, i64 %80
  %82 = load i64, ptr %14, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %81, i64 %82, i1 false)
  %83 = load i64, ptr %14, align 8
  %84 = load ptr, ptr %12, align 8
  %85 = getelementptr inbounds %struct.stream_info, ptr %84, i32 0, i32 0
  %86 = load ptr, ptr %85, align 8
  %87 = load i32, ptr %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.stream, ptr %86, i64 %88
  %90 = getelementptr inbounds %struct.stream, ptr %89, i32 0, i32 3
  %91 = load i64, ptr %90, align 8
  %92 = add nsw i64 %91, %83
  store i64 %92, ptr %90, align 8
  %93 = load i64, ptr %14, align 8
  %94 = load ptr, ptr %10, align 8
  %95 = getelementptr inbounds i8, ptr %94, i64 %93
  store ptr %95, ptr %10, align 8
  %96 = load i64, ptr %14, align 8
  %97 = load i64, ptr %11, align 8
  %98 = sub nsw i64 %97, %96
  store i64 %98, ptr %11, align 8
  %99 = load i64, ptr %14, align 8
  %100 = load i64, ptr %13, align 8
  %101 = add nsw i64 %100, %99
  store i64 %101, ptr %13, align 8
  br label %102

102:                                              ; preds = %63, %59
  %103 = load i64, ptr %11, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %155

105:                                              ; preds = %102
  %106 = load ptr, ptr %12, align 8
  %107 = getelementptr inbounds %struct.stream_info, ptr %106, i32 0, i32 0
  %108 = load ptr, ptr %107, align 8
  %109 = load i32, ptr %9, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.stream, ptr %108, i64 %110
  %112 = getelementptr inbounds %struct.stream, ptr %111, i32 0, i32 3
  %113 = load i64, ptr %112, align 8
  %114 = load ptr, ptr %12, align 8
  %115 = getelementptr inbounds %struct.stream_info, ptr %114, i32 0, i32 0
  %116 = load ptr, ptr %115, align 8
  %117 = load i32, ptr %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.stream, ptr %116, i64 %118
  %120 = getelementptr inbounds %struct.stream, ptr %119, i32 0, i32 2
  %121 = load i64, ptr %120, align 8
  %122 = icmp eq i64 %113, %121
  br i1 %122, label %123, label %155

123:                                              ; preds = %105
  %124 = load ptr, ptr %7, align 8
  %125 = load ptr, ptr %12, align 8
  %126 = load i32, ptr %9, align 4
  %127 = call i32 @fill_buffer(ptr noundef %124, ptr noundef %125, i32 noundef %126)
  %128 = icmp ne i32 %127, 0
  %129 = xor i1 %128, true
  %130 = xor i1 %129, true
  %131 = zext i1 %130 to i32
  %132 = sext i32 %131 to i64
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %123
  store i64 -1, ptr %6, align 8
  br label %158

135:                                              ; preds = %123
  %136 = load ptr, ptr %12, align 8
  %137 = getelementptr inbounds %struct.stream_info, ptr %136, i32 0, i32 0
  %138 = load ptr, ptr %137, align 8
  %139 = load i32, ptr %9, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.stream, ptr %138, i64 %140
  %142 = getelementptr inbounds %struct.stream, ptr %141, i32 0, i32 3
  %143 = load i64, ptr %142, align 8
  %144 = load ptr, ptr %12, align 8
  %145 = getelementptr inbounds %struct.stream_info, ptr %144, i32 0, i32 0
  %146 = load ptr, ptr %145, align 8
  %147 = load i32, ptr %9, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.stream, ptr %146, i64 %148
  %150 = getelementptr inbounds %struct.stream, ptr %149, i32 0, i32 2
  %151 = load i64, ptr %150, align 8
  %152 = icmp eq i64 %143, %151
  br i1 %152, label %153, label %154

153:                                              ; preds = %135
  br label %156

154:                                              ; preds = %135
  br label %155

155:                                              ; preds = %154, %105, %102
  br label %16, !llvm.loop !16

156:                                              ; preds = %153, %16
  %157 = load i64, ptr %13, align 8
  store i64 %157, ptr %6, align 8
  br label %158

158:                                              ; preds = %156, %134
  %159 = load i64, ptr %6, align 8
  ret i64 %159
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_buffer(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca [33 x i8], align 16
  %14 = alloca [8 x i8], align 1
  %15 = alloca ptr, align 8
  %16 = alloca ptr, align 8
  %17 = alloca i8, align 1
  %18 = alloca ptr, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i32 %2, ptr %7, align 4
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.stream_info, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = load i32, ptr %7, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.stream, ptr %25, i64 %27
  store ptr %28, ptr %15, align 8
  %29 = load ptr, ptr %15, align 8
  %30 = getelementptr inbounds %struct.stream, ptr %29, i32 0, i32 1
  %31 = load ptr, ptr %30, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %3
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %15, align 8
  %36 = getelementptr inbounds %struct.stream, ptr %35, i32 0, i32 1
  %37 = load ptr, ptr %36, align 8
  call void @free(ptr noundef %37) #10
  %38 = load ptr, ptr %15, align 8
  %39 = getelementptr inbounds %struct.stream, ptr %38, i32 0, i32 1
  store ptr null, ptr %39, align 8
  br label %40

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40, %3
  %42 = load ptr, ptr %15, align 8
  %43 = getelementptr inbounds %struct.stream, ptr %42, i32 0, i32 4
  %44 = load i8, ptr %43, align 8
  %45 = icmp ne i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %615

47:                                               ; preds = %41
  br label %48

48:                                               ; preds = %612, %47
  %49 = load ptr, ptr @ucthread, align 8
  %50 = load ptr, ptr %15, align 8
  %51 = getelementptr inbounds %struct.stream, ptr %50, i32 0, i32 5
  %52 = load i64, ptr %51, align 8
  %53 = getelementptr inbounds %struct.uncomp_thread, ptr %49, i64 %52
  %54 = getelementptr inbounds %struct.uncomp_thread, ptr %53, i32 0, i32 5
  %55 = load i32, ptr %54, align 4
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %64, i32 noundef 1579, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.95)
  store i32 -1, ptr %4, align 4
  br label %709

65:                                               ; No predecessors!
  br label %66

66:                                               ; preds = %65, %48
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %6, align 8
  %69 = load ptr, ptr %15, align 8
  %70 = getelementptr inbounds %struct.stream, ptr %69, i32 0, i32 0
  %71 = load i64, ptr %70, align 8
  %72 = call i32 @read_seekto(ptr noundef %67, ptr noundef %68, i64 noundef %71)
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = xor i1 %74, true
  %76 = zext i1 %75 to i32
  %77 = sext i32 %76 to i64
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %66
  store i32 -1, ptr %4, align 4
  br label %709

80:                                               ; preds = %66
  %81 = load ptr, ptr %5, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 8388608
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load ptr, ptr %5, align 8
  %88 = load ptr, ptr %6, align 8
  %89 = getelementptr inbounds %struct.stream_info, ptr %88, i32 0, i32 2
  %90 = load i32, ptr %89, align 4
  %91 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0
  %92 = call i32 @read_buf(ptr noundef %87, i32 noundef %90, ptr noundef %91, i64 noundef 8)
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  %95 = xor i1 %94, true
  %96 = zext i1 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %86
  store i32 -1, ptr %4, align 4
  br label %709

100:                                              ; preds = %86
  %101 = load ptr, ptr %6, align 8
  %102 = getelementptr inbounds %struct.stream_info, ptr %101, i32 0, i32 6
  %103 = load i64, ptr %102, align 8
  %104 = add nsw i64 %103, 8
  store i64 %104, ptr %102, align 8
  br label %105

105:                                              ; preds = %100, %80
  %106 = load ptr, ptr %5, align 8
  %107 = load ptr, ptr %6, align 8
  %108 = getelementptr inbounds %struct.stream_info, ptr %107, i32 0, i32 2
  %109 = load i32, ptr %108, align 4
  %110 = call i32 @read_u8(ptr noundef %106, i32 noundef %109, ptr noundef %17)
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i32 -1, ptr %4, align 4
  br label %709

118:                                              ; preds = %105
  %119 = load ptr, ptr %5, align 8
  %120 = getelementptr inbounds %struct.rzip_control, ptr %119, i32 0, i32 32
  %121 = load i8, ptr %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %176

124:                                              ; preds = %118
  %125 = load ptr, ptr %5, align 8
  %126 = getelementptr inbounds %struct.rzip_control, ptr %125, i32 0, i32 33
  %127 = load i8, ptr %126, align 2
  %128 = sext i8 %127 to i32
  %129 = icmp slt i32 %128, 4
  br i1 %129, label %130, label %176

130:                                              ; preds = %124
  %131 = load ptr, ptr %5, align 8
  %132 = load ptr, ptr %6, align 8
  %133 = getelementptr inbounds %struct.stream_info, ptr %132, i32 0, i32 2
  %134 = load i32, ptr %133, align 4
  %135 = call i32 @read_u32(ptr noundef %131, i32 noundef %134, ptr noundef %19)
  %136 = icmp ne i32 %135, 0
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %130
  store i32 -1, ptr %4, align 4
  br label %709

143:                                              ; preds = %130
  %144 = load ptr, ptr %5, align 8
  %145 = load ptr, ptr %6, align 8
  %146 = getelementptr inbounds %struct.stream_info, ptr %145, i32 0, i32 2
  %147 = load i32, ptr %146, align 4
  %148 = call i32 @read_u32(ptr noundef %144, i32 noundef %147, ptr noundef %20)
  %149 = icmp ne i32 %148, 0
  %150 = xor i1 %149, true
  %151 = xor i1 %150, true
  %152 = zext i1 %151 to i32
  %153 = sext i32 %152 to i64
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %143
  store i32 -1, ptr %4, align 4
  br label %709

156:                                              ; preds = %143
  %157 = load ptr, ptr %5, align 8
  %158 = load ptr, ptr %6, align 8
  %159 = getelementptr inbounds %struct.stream_info, ptr %158, i32 0, i32 2
  %160 = load i32, ptr %159, align 4
  %161 = call i32 @read_u32(ptr noundef %157, i32 noundef %160, ptr noundef %21)
  %162 = icmp ne i32 %161, 0
  %163 = xor i1 %162, true
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %156
  store i32 -1, ptr %4, align 4
  br label %709

169:                                              ; preds = %156
  %170 = load i32, ptr %19, align 4
  %171 = zext i32 %170 to i64
  store i64 %171, ptr %9, align 8
  %172 = load i32, ptr %20, align 4
  %173 = zext i32 %172 to i64
  store i64 %173, ptr %8, align 8
  %174 = load i32, ptr %21, align 4
  %175 = zext i32 %174 to i64
  store i64 %175, ptr %10, align 8
  store i64 13, ptr %12, align 8
  br label %264

176:                                              ; preds = %124, %118
  br label %177

177:                                              ; preds = %176
  %178 = load ptr, ptr %5, align 8
  %179 = getelementptr inbounds %struct.rzip_control, ptr %178, i32 0, i32 26
  %180 = load i64, ptr %179, align 8
  %181 = and i64 %180, 2048
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %192

183:                                              ; preds = %177
  br label %184

184:                                              ; preds = %183
  %185 = load ptr, ptr %5, align 8
  %186 = load ptr, ptr %5, align 8
  %187 = load ptr, ptr %6, align 8
  %188 = getelementptr inbounds %struct.stream_info, ptr %187, i32 0, i32 2
  %189 = load i32, ptr %188, align 4
  %190 = call i64 @get_readseek(ptr noundef %186, i32 noundef %189)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %185, i32 noundef 4, i32 noundef 1610, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.96, i64 noundef %190)
  br label %191

191:                                              ; preds = %184
  br label %192

192:                                              ; preds = %191, %177
  br label %193

193:                                              ; preds = %192
  %194 = load ptr, ptr %5, align 8
  %195 = getelementptr inbounds %struct.rzip_control, ptr %194, i32 0, i32 32
  %196 = load i8, ptr %195, align 1
  %197 = sext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %193
  %200 = load ptr, ptr %5, align 8
  %201 = getelementptr inbounds %struct.rzip_control, ptr %200, i32 0, i32 33
  %202 = load i8, ptr %201, align 2
  %203 = sext i8 %202 to i32
  %204 = icmp slt i32 %203, 6
  br i1 %204, label %211, label %205

205:                                              ; preds = %199, %193
  %206 = load ptr, ptr %5, align 8
  %207 = getelementptr inbounds %struct.rzip_control, ptr %206, i32 0, i32 26
  %208 = load i64, ptr %207, align 8
  %209 = and i64 %208, 8388608
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205, %199
  store i32 8, ptr %22, align 4
  br label %217

212:                                              ; preds = %205
  %213 = load ptr, ptr %6, align 8
  %214 = getelementptr inbounds %struct.stream_info, ptr %213, i32 0, i32 12
  %215 = load i8, ptr %214, align 4
  %216 = sext i8 %215 to i32
  store i32 %216, ptr %22, align 4
  br label %217

217:                                              ; preds = %212, %211
  %218 = load ptr, ptr %5, align 8
  %219 = load ptr, ptr %6, align 8
  %220 = getelementptr inbounds %struct.stream_info, ptr %219, i32 0, i32 2
  %221 = load i32, ptr %220, align 4
  %222 = load i32, ptr %22, align 4
  %223 = call i32 @read_val(ptr noundef %218, i32 noundef %221, ptr noundef %9, i32 noundef %222)
  %224 = icmp ne i32 %223, 0
  %225 = xor i1 %224, true
  %226 = xor i1 %225, true
  %227 = zext i1 %226 to i32
  %228 = sext i32 %227 to i64
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %231

230:                                              ; preds = %217
  store i32 -1, ptr %4, align 4
  br label %709

231:                                              ; preds = %217
  %232 = load ptr, ptr %5, align 8
  %233 = load ptr, ptr %6, align 8
  %234 = getelementptr inbounds %struct.stream_info, ptr %233, i32 0, i32 2
  %235 = load i32, ptr %234, align 4
  %236 = load i32, ptr %22, align 4
  %237 = call i32 @read_val(ptr noundef %232, i32 noundef %235, ptr noundef %8, i32 noundef %236)
  %238 = icmp ne i32 %237, 0
  %239 = xor i1 %238, true
  %240 = xor i1 %239, true
  %241 = zext i1 %240 to i32
  %242 = sext i32 %241 to i64
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %231
  store i32 -1, ptr %4, align 4
  br label %709

245:                                              ; preds = %231
  %246 = load ptr, ptr %5, align 8
  %247 = load ptr, ptr %6, align 8
  %248 = getelementptr inbounds %struct.stream_info, ptr %247, i32 0, i32 2
  %249 = load i32, ptr %248, align 4
  %250 = load i32, ptr %22, align 4
  %251 = call i32 @read_val(ptr noundef %246, i32 noundef %249, ptr noundef %10, i32 noundef %250)
  %252 = icmp ne i32 %251, 0
  %253 = xor i1 %252, true
  %254 = xor i1 %253, true
  %255 = zext i1 %254 to i32
  %256 = sext i32 %255 to i64
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %245
  store i32 -1, ptr %4, align 4
  br label %709

259:                                              ; preds = %245
  %260 = load i32, ptr %22, align 4
  %261 = mul nsw i32 %260, 3
  %262 = add nsw i32 1, %261
  %263 = sext i32 %262 to i64
  store i64 %263, ptr %12, align 8
  br label %264

264:                                              ; preds = %259, %169
  %265 = load i64, ptr %12, align 8
  %266 = load ptr, ptr %6, align 8
  %267 = getelementptr inbounds %struct.stream_info, ptr %266, i32 0, i32 6
  %268 = load i64, ptr %267, align 8
  %269 = add nsw i64 %268, %265
  store i64 %269, ptr %267, align 8
  %270 = load ptr, ptr %5, align 8
  %271 = getelementptr inbounds %struct.rzip_control, ptr %270, i32 0, i32 26
  %272 = load i64, ptr %271, align 8
  %273 = and i64 %272, 8388608
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %305

275:                                              ; preds = %264
  %276 = load ptr, ptr %5, align 8
  %277 = getelementptr inbounds [33 x i8], ptr %13, i64 0, i64 0
  %278 = call zeroext i1 @decrypt_header(ptr noundef %276, ptr noundef %277, ptr noundef %17, ptr noundef %9, ptr noundef %8, ptr noundef %10)
  %279 = xor i1 %278, true
  %280 = xor i1 %279, true
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = sext i32 %282 to i64
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %286

285:                                              ; preds = %275
  store i32 -1, ptr %4, align 4
  br label %709

286:                                              ; preds = %275
  %287 = load ptr, ptr %5, align 8
  %288 = load ptr, ptr %6, align 8
  %289 = getelementptr inbounds %struct.stream_info, ptr %288, i32 0, i32 2
  %290 = load i32, ptr %289, align 4
  %291 = getelementptr inbounds [8 x i8], ptr %14, i64 0, i64 0
  %292 = call i32 @read_buf(ptr noundef %287, i32 noundef %290, ptr noundef %291, i64 noundef 8)
  %293 = icmp ne i32 %292, 0
  %294 = xor i1 %293, true
  %295 = xor i1 %294, true
  %296 = zext i1 %295 to i32
  %297 = sext i32 %296 to i64
  %298 = icmp ne i64 %297, 0
  br i1 %298, label %299, label %300

299:                                              ; preds = %286
  store i32 -1, ptr %4, align 4
  br label %709

300:                                              ; preds = %286
  %301 = load ptr, ptr %6, align 8
  %302 = getelementptr inbounds %struct.stream_info, ptr %301, i32 0, i32 6
  %303 = load i64, ptr %302, align 8
  %304 = add nsw i64 %303, 8
  store i64 %304, ptr %302, align 8
  br label %305

305:                                              ; preds = %300, %264
  %306 = load i64, ptr %9, align 8
  %307 = call i64 @__uint64_identity(i64 noundef %306)
  store i64 %307, ptr %9, align 8
  %308 = load i64, ptr %8, align 8
  %309 = call i64 @__uint64_identity(i64 noundef %308)
  store i64 %309, ptr %8, align 8
  %310 = load i64, ptr %10, align 8
  %311 = call i64 @__uint64_identity(i64 noundef %310)
  store i64 %311, ptr %10, align 8
  br label %312

312:                                              ; preds = %305
  %313 = load ptr, ptr %5, align 8
  %314 = getelementptr inbounds %struct.rzip_control, ptr %313, i32 0, i32 26
  %315 = load i64, ptr %314, align 8
  %316 = and i64 %315, 2048
  %317 = icmp ne i64 %316, 0
  br i1 %317, label %318, label %326

318:                                              ; preds = %312
  br label %319

319:                                              ; preds = %318
  %320 = load ptr, ptr %5, align 8
  %321 = load i32, ptr %7, align 4
  %322 = load i64, ptr %9, align 8
  %323 = load i64, ptr %8, align 8
  %324 = load i64, ptr %10, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %320, i32 noundef 4, i32 noundef 1635, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.97, i32 noundef %321, i64 noundef %322, i64 noundef %323, i64 noundef %324)
  br label %325

325:                                              ; preds = %319
  br label %326

326:                                              ; preds = %325, %312
  br label %327

327:                                              ; preds = %326
  %328 = load i64, ptr %9, align 8
  %329 = load ptr, ptr %5, align 8
  %330 = getelementptr inbounds %struct.rzip_control, ptr %329, i32 0, i32 26
  %331 = load i64, ptr %330, align 8
  %332 = and i64 %331, 8388608
  %333 = icmp ne i64 %332, 0
  %334 = zext i1 %333 to i64
  %335 = select i1 %333, i32 16, i32 0
  %336 = sext i32 %335 to i64
  %337 = icmp sgt i64 %328, %336
  br i1 %337, label %338, label %340

338:                                              ; preds = %327
  %339 = load i64, ptr %9, align 8
  br label %349

340:                                              ; preds = %327
  %341 = load ptr, ptr %5, align 8
  %342 = getelementptr inbounds %struct.rzip_control, ptr %341, i32 0, i32 26
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 8388608
  %345 = icmp ne i64 %344, 0
  %346 = zext i1 %345 to i64
  %347 = select i1 %345, i32 16, i32 0
  %348 = sext i32 %347 to i64
  br label %349

349:                                              ; preds = %340, %338
  %350 = phi i64 [ %339, %338 ], [ %348, %340 ]
  store i64 %350, ptr %11, align 8
  %351 = load i64, ptr %11, align 8
  %352 = load ptr, ptr %6, align 8
  %353 = getelementptr inbounds %struct.stream_info, ptr %352, i32 0, i32 6
  %354 = load i64, ptr %353, align 8
  %355 = add nsw i64 %354, %351
  store i64 %355, ptr %353, align 8
  %356 = load ptr, ptr %5, align 8
  %357 = getelementptr inbounds %struct.rzip_control, ptr %356, i32 0, i32 37
  %358 = load i32, ptr %357, align 4
  %359 = call i32 @fsync(i32 noundef %358)
  %360 = load i64, ptr %8, align 8
  %361 = load ptr, ptr %5, align 8
  %362 = getelementptr inbounds %struct.rzip_control, ptr %361, i32 0, i32 23
  %363 = load i64, ptr %362, align 8
  %364 = icmp sgt i64 %360, %363
  %365 = xor i1 %364, true
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %375

370:                                              ; preds = %349
  br label %371

371:                                              ; preds = %370
  %372 = load ptr, ptr %5, align 8
  %373 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %372, i32 noundef 1642, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.98, i64 noundef %373)
  store i32 -1, ptr %4, align 4
  br label %709

374:                                              ; No predecessors!
  br label %375

375:                                              ; preds = %374, %349
  %376 = load i64, ptr %8, align 8
  %377 = load ptr, ptr %5, align 8
  %378 = getelementptr inbounds %struct.rzip_control, ptr %377, i32 0, i32 26
  %379 = load i64, ptr %378, align 8
  %380 = and i64 %379, 8388608
  %381 = icmp ne i64 %380, 0
  %382 = zext i1 %381 to i64
  %383 = select i1 %381, i32 16, i32 0
  %384 = sext i32 %383 to i64
  %385 = icmp sgt i64 %376, %384
  br i1 %385, label %386, label %388

386:                                              ; preds = %375
  %387 = load i64, ptr %8, align 8
  br label %397

388:                                              ; preds = %375
  %389 = load ptr, ptr %5, align 8
  %390 = getelementptr inbounds %struct.rzip_control, ptr %389, i32 0, i32 26
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 8388608
  %393 = icmp ne i64 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, i32 16, i32 0
  %396 = sext i32 %395 to i64
  br label %397

397:                                              ; preds = %388, %386
  %398 = phi i64 [ %387, %386 ], [ %396, %388 ]
  %399 = call noalias ptr @malloc(i64 noundef %398) #13
  store ptr %399, ptr %18, align 8
  %400 = load i64, ptr %8, align 8
  %401 = icmp ne i64 %400, 0
  br i1 %401, label %402, label %406

402:                                              ; preds = %397
  %403 = load ptr, ptr %18, align 8
  %404 = icmp ne ptr %403, null
  %405 = xor i1 %404, true
  br label %406

406:                                              ; preds = %402, %397
  %407 = phi i1 [ false, %397 ], [ %405, %402 ]
  %408 = xor i1 %407, true
  %409 = xor i1 %408, true
  %410 = zext i1 %409 to i32
  %411 = sext i32 %410 to i64
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %418

413:                                              ; preds = %406
  br label %414

414:                                              ; preds = %413
  %415 = load ptr, ptr %5, align 8
  %416 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %415, i32 noundef 1645, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.99, i64 noundef %416)
  store i32 -1, ptr %4, align 4
  br label %709

417:                                              ; No predecessors!
  br label %418

418:                                              ; preds = %417, %406
  %419 = load i64, ptr %8, align 8
  %420 = load ptr, ptr %6, align 8
  %421 = getelementptr inbounds %struct.stream_info, ptr %420, i32 0, i32 7
  %422 = load i64, ptr %421, align 8
  %423 = add nsw i64 %422, %419
  store i64 %423, ptr %421, align 8
  %424 = load ptr, ptr %5, align 8
  %425 = load ptr, ptr %6, align 8
  %426 = getelementptr inbounds %struct.stream_info, ptr %425, i32 0, i32 2
  %427 = load i32, ptr %426, align 4
  %428 = load ptr, ptr %18, align 8
  %429 = load i64, ptr %11, align 8
  %430 = call i32 @read_buf(ptr noundef %424, i32 noundef %427, ptr noundef %428, i64 noundef %429)
  %431 = icmp ne i32 %430, 0
  %432 = xor i1 %431, true
  %433 = xor i1 %432, true
  %434 = zext i1 %433 to i32
  %435 = sext i32 %434 to i64
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %438

437:                                              ; preds = %418
  store i32 -1, ptr %4, align 4
  br label %709

438:                                              ; preds = %418
  %439 = load ptr, ptr %5, align 8
  %440 = getelementptr inbounds %struct.rzip_control, ptr %439, i32 0, i32 26
  %441 = load i64, ptr %440, align 8
  %442 = and i64 %441, 8388608
  %443 = icmp ne i64 %442, 0
  br i1 %443, label %444, label %458

444:                                              ; preds = %438
  %445 = load ptr, ptr %5, align 8
  %446 = load ptr, ptr %18, align 8
  %447 = load i64, ptr %11, align 8
  %448 = getelementptr inbounds [8 x i8], ptr %14, i64 0, i64 0
  %449 = call zeroext i1 @lrz_decrypt(ptr noundef %445, ptr noundef %446, i64 noundef %447, ptr noundef %448)
  %450 = xor i1 %449, true
  %451 = xor i1 %450, true
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %444
  store i32 -1, ptr %4, align 4
  br label %709

457:                                              ; preds = %444
  br label %458

458:                                              ; preds = %457, %438
  %459 = load ptr, ptr %18, align 8
  %460 = load ptr, ptr @ucthread, align 8
  %461 = load ptr, ptr %15, align 8
  %462 = getelementptr inbounds %struct.stream, ptr %461, i32 0, i32 5
  %463 = load i64, ptr %462, align 8
  %464 = getelementptr inbounds %struct.uncomp_thread, ptr %460, i64 %463
  %465 = getelementptr inbounds %struct.uncomp_thread, ptr %464, i32 0, i32 0
  store ptr %459, ptr %465, align 8
  %466 = load i64, ptr %9, align 8
  %467 = load ptr, ptr @ucthread, align 8
  %468 = load ptr, ptr %15, align 8
  %469 = getelementptr inbounds %struct.stream, ptr %468, i32 0, i32 5
  %470 = load i64, ptr %469, align 8
  %471 = getelementptr inbounds %struct.uncomp_thread, ptr %467, i64 %470
  %472 = getelementptr inbounds %struct.uncomp_thread, ptr %471, i32 0, i32 2
  store i64 %466, ptr %472, align 8
  %473 = load i64, ptr %8, align 8
  %474 = load ptr, ptr @ucthread, align 8
  %475 = load ptr, ptr %15, align 8
  %476 = getelementptr inbounds %struct.stream, ptr %475, i32 0, i32 5
  %477 = load i64, ptr %476, align 8
  %478 = getelementptr inbounds %struct.uncomp_thread, ptr %474, i64 %477
  %479 = getelementptr inbounds %struct.uncomp_thread, ptr %478, i32 0, i32 1
  store i64 %473, ptr %479, align 8
  %480 = load i8, ptr %17, align 1
  %481 = load ptr, ptr @ucthread, align 8
  %482 = load ptr, ptr %15, align 8
  %483 = getelementptr inbounds %struct.stream, ptr %482, i32 0, i32 5
  %484 = load i64, ptr %483, align 8
  %485 = getelementptr inbounds %struct.uncomp_thread, ptr %481, i64 %484
  %486 = getelementptr inbounds %struct.uncomp_thread, ptr %485, i32 0, i32 4
  store i8 %480, ptr %486, align 8
  %487 = load i32, ptr %7, align 4
  %488 = load ptr, ptr @ucthread, align 8
  %489 = load ptr, ptr %15, align 8
  %490 = getelementptr inbounds %struct.stream, ptr %489, i32 0, i32 5
  %491 = load i64, ptr %490, align 8
  %492 = getelementptr inbounds %struct.uncomp_thread, ptr %488, i64 %491
  %493 = getelementptr inbounds %struct.uncomp_thread, ptr %492, i32 0, i32 6
  store i32 %487, ptr %493, align 8
  %494 = load i64, ptr %10, align 8
  %495 = load ptr, ptr %15, align 8
  %496 = getelementptr inbounds %struct.stream, ptr %495, i32 0, i32 0
  store i64 %494, ptr %496, align 8
  %497 = load ptr, ptr @ucthread, align 8
  %498 = load ptr, ptr %15, align 8
  %499 = getelementptr inbounds %struct.stream, ptr %498, i32 0, i32 5
  %500 = load i64, ptr %499, align 8
  %501 = getelementptr inbounds %struct.uncomp_thread, ptr %497, i64 %500
  %502 = getelementptr inbounds %struct.uncomp_thread, ptr %501, i32 0, i32 5
  store i32 1, ptr %502, align 4
  br label %503

503:                                              ; preds = %458
  %504 = load ptr, ptr %5, align 8
  %505 = getelementptr inbounds %struct.rzip_control, ptr %504, i32 0, i32 26
  %506 = load i64, ptr %505, align 8
  %507 = and i64 %506, 2048
  %508 = icmp ne i64 %507, 0
  br i1 %508, label %509, label %518

509:                                              ; preds = %503
  br label %510

510:                                              ; preds = %509
  %511 = load ptr, ptr %5, align 8
  %512 = load ptr, ptr %15, align 8
  %513 = getelementptr inbounds %struct.stream, ptr %512, i32 0, i32 5
  %514 = load i64, ptr %513, align 8
  %515 = load i64, ptr %11, align 8
  %516 = load i32, ptr %7, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %511, i32 noundef 4, i32 noundef 1666, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.100, i64 noundef %514, i64 noundef %515, i32 noundef %516)
  br label %517

517:                                              ; preds = %510
  br label %518

518:                                              ; preds = %517, %503
  br label %519

519:                                              ; preds = %518
  %520 = call noalias ptr @malloc(i64 noundef 16) #13
  store ptr %520, ptr %16, align 8
  %521 = load ptr, ptr %16, align 8
  %522 = icmp ne ptr %521, null
  %523 = xor i1 %522, true
  %524 = xor i1 %523, true
  %525 = xor i1 %524, true
  %526 = zext i1 %525 to i32
  %527 = sext i32 %526 to i64
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %529, label %533

529:                                              ; preds = %519
  br label %530

530:                                              ; preds = %529
  %531 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %531, i32 noundef 1670, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.101)
  store i32 -1, ptr %4, align 4
  br label %709

532:                                              ; No predecessors!
  br label %533

533:                                              ; preds = %532, %519
  %534 = load ptr, ptr %15, align 8
  %535 = getelementptr inbounds %struct.stream, ptr %534, i32 0, i32 5
  %536 = load i64, ptr %535, align 8
  %537 = trunc i64 %536 to i32
  %538 = load ptr, ptr %16, align 8
  %539 = getelementptr inbounds %struct.stream_thread_struct, ptr %538, i32 0, i32 0
  store i32 %537, ptr %539, align 8
  %540 = load ptr, ptr %5, align 8
  %541 = load ptr, ptr %16, align 8
  %542 = getelementptr inbounds %struct.stream_thread_struct, ptr %541, i32 0, i32 1
  store ptr %540, ptr %542, align 8
  %543 = load ptr, ptr %5, align 8
  %544 = load ptr, ptr @threads, align 8
  %545 = load ptr, ptr %15, align 8
  %546 = getelementptr inbounds %struct.stream, ptr %545, i32 0, i32 5
  %547 = load i64, ptr %546, align 8
  %548 = getelementptr inbounds i64, ptr %544, i64 %547
  %549 = load ptr, ptr %16, align 8
  %550 = call zeroext i1 @create_pthread(ptr noundef %543, ptr noundef %548, ptr noundef null, ptr noundef @ucompthread, ptr noundef %549)
  %551 = xor i1 %550, true
  %552 = xor i1 %551, true
  %553 = xor i1 %552, true
  %554 = zext i1 %553 to i32
  %555 = sext i32 %554 to i64
  %556 = icmp ne i64 %555, 0
  br i1 %556, label %557, label %561

557:                                              ; preds = %533
  br label %558

558:                                              ; preds = %557
  %559 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %559) #10
  store ptr null, ptr %16, align 8
  br label %560

560:                                              ; preds = %558
  store i32 -1, ptr %4, align 4
  br label %709

561:                                              ; preds = %533
  %562 = load ptr, ptr %15, align 8
  %563 = getelementptr inbounds %struct.stream, ptr %562, i32 0, i32 5
  %564 = load i64, ptr %563, align 8
  %565 = add nsw i64 %564, 1
  store i64 %565, ptr %563, align 8
  %566 = load ptr, ptr %15, align 8
  %567 = getelementptr inbounds %struct.stream, ptr %566, i32 0, i32 7
  %568 = load i64, ptr %567, align 8
  %569 = load ptr, ptr %15, align 8
  %570 = getelementptr inbounds %struct.stream, ptr %569, i32 0, i32 8
  %571 = load i32, ptr %570, align 8
  %572 = sext i32 %571 to i64
  %573 = add nsw i64 %568, %572
  %574 = icmp eq i64 %565, %573
  br i1 %574, label %575, label %581

575:                                              ; preds = %561
  %576 = load ptr, ptr %15, align 8
  %577 = getelementptr inbounds %struct.stream, ptr %576, i32 0, i32 7
  %578 = load i64, ptr %577, align 8
  %579 = load ptr, ptr %15, align 8
  %580 = getelementptr inbounds %struct.stream, ptr %579, i32 0, i32 5
  store i64 %578, ptr %580, align 8
  br label %581

581:                                              ; preds = %575, %561
  %582 = load i64, ptr %10, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %587, label %584

584:                                              ; preds = %581
  %585 = load ptr, ptr %15, align 8
  %586 = getelementptr inbounds %struct.stream, ptr %585, i32 0, i32 4
  store i8 1, ptr %586, align 8
  br label %614

587:                                              ; preds = %581
  %588 = load ptr, ptr %15, align 8
  %589 = getelementptr inbounds %struct.stream, ptr %588, i32 0, i32 5
  %590 = load i64, ptr %589, align 8
  %591 = load ptr, ptr %15, align 8
  %592 = getelementptr inbounds %struct.stream, ptr %591, i32 0, i32 6
  %593 = load i64, ptr %592, align 8
  %594 = icmp ne i64 %590, %593
  br i1 %594, label %595, label %613

595:                                              ; preds = %587
  %596 = load ptr, ptr @ucthread, align 8
  %597 = load ptr, ptr %15, align 8
  %598 = getelementptr inbounds %struct.stream, ptr %597, i32 0, i32 5
  %599 = load i64, ptr %598, align 8
  %600 = getelementptr inbounds %struct.uncomp_thread, ptr %596, i64 %599
  %601 = getelementptr inbounds %struct.uncomp_thread, ptr %600, i32 0, i32 5
  %602 = load i32, ptr %601, align 4
  %603 = icmp ne i32 %602, 0
  br i1 %603, label %613, label %604

604:                                              ; preds = %595
  %605 = load ptr, ptr %6, align 8
  %606 = getelementptr inbounds %struct.stream_info, ptr %605, i32 0, i32 7
  %607 = load i64, ptr %606, align 8
  %608 = load ptr, ptr %5, align 8
  %609 = getelementptr inbounds %struct.rzip_control, ptr %608, i32 0, i32 23
  %610 = load i64, ptr %609, align 8
  %611 = icmp slt i64 %607, %610
  br i1 %611, label %612, label %613

612:                                              ; preds = %604
  br label %48

613:                                              ; preds = %604, %595, %587
  br label %614

614:                                              ; preds = %613, %584
  br label %615

615:                                              ; preds = %614, %46
  %616 = load ptr, ptr %5, align 8
  %617 = call zeroext i1 @lock_mutex(ptr noundef %616, ptr noundef @output_lock)
  %618 = load ptr, ptr %15, align 8
  %619 = getelementptr inbounds %struct.stream, ptr %618, i32 0, i32 6
  %620 = load i64, ptr %619, align 8
  store i64 %620, ptr @output_thread, align 8
  %621 = load ptr, ptr %5, align 8
  %622 = call zeroext i1 @cond_broadcast(ptr noundef %621, ptr noundef @output_cond)
  %623 = load ptr, ptr %5, align 8
  %624 = call zeroext i1 @unlock_mutex(ptr noundef %623, ptr noundef @output_lock)
  %625 = load ptr, ptr %5, align 8
  %626 = load ptr, ptr @threads, align 8
  %627 = load ptr, ptr %15, align 8
  %628 = getelementptr inbounds %struct.stream, ptr %627, i32 0, i32 6
  %629 = load i64, ptr %628, align 8
  %630 = getelementptr inbounds i64, ptr %626, i64 %629
  %631 = load i64, ptr %630, align 8
  %632 = call zeroext i1 @join_pthread(ptr noundef %625, i64 noundef %631, ptr noundef null)
  %633 = xor i1 %632, true
  %634 = xor i1 %633, true
  %635 = xor i1 %634, true
  %636 = zext i1 %635 to i32
  %637 = sext i32 %636 to i64
  %638 = icmp ne i64 %637, 0
  br i1 %638, label %639, label %640

639:                                              ; preds = %615
  store i32 -1, ptr %4, align 4
  br label %709

640:                                              ; preds = %615
  %641 = load ptr, ptr @ucthread, align 8
  %642 = load ptr, ptr %15, align 8
  %643 = getelementptr inbounds %struct.stream, ptr %642, i32 0, i32 6
  %644 = load i64, ptr %643, align 8
  %645 = getelementptr inbounds %struct.uncomp_thread, ptr %641, i64 %644
  %646 = getelementptr inbounds %struct.uncomp_thread, ptr %645, i32 0, i32 5
  store i32 0, ptr %646, align 4
  br label %647

647:                                              ; preds = %640
  %648 = load ptr, ptr %5, align 8
  %649 = getelementptr inbounds %struct.rzip_control, ptr %648, i32 0, i32 26
  %650 = load i64, ptr %649, align 8
  %651 = and i64 %650, 2048
  %652 = icmp ne i64 %651, 0
  br i1 %652, label %653, label %660

653:                                              ; preds = %647
  br label %654

654:                                              ; preds = %653
  %655 = load ptr, ptr %5, align 8
  %656 = load ptr, ptr %15, align 8
  %657 = getelementptr inbounds %struct.stream, ptr %656, i32 0, i32 6
  %658 = load i64, ptr %657, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %655, i32 noundef 4, i32 noundef 1701, ptr noundef @.str, ptr noundef @__func__.fill_buffer, ptr noundef @.str.102, i64 noundef %658)
  br label %659

659:                                              ; preds = %654
  br label %660

660:                                              ; preds = %659, %647
  br label %661

661:                                              ; preds = %660
  %662 = load ptr, ptr @ucthread, align 8
  %663 = load ptr, ptr %15, align 8
  %664 = getelementptr inbounds %struct.stream, ptr %663, i32 0, i32 6
  %665 = load i64, ptr %664, align 8
  %666 = getelementptr inbounds %struct.uncomp_thread, ptr %662, i64 %665
  %667 = getelementptr inbounds %struct.uncomp_thread, ptr %666, i32 0, i32 0
  %668 = load ptr, ptr %667, align 8
  %669 = load ptr, ptr %15, align 8
  %670 = getelementptr inbounds %struct.stream, ptr %669, i32 0, i32 1
  store ptr %668, ptr %670, align 8
  %671 = load ptr, ptr @ucthread, align 8
  %672 = load ptr, ptr %15, align 8
  %673 = getelementptr inbounds %struct.stream, ptr %672, i32 0, i32 6
  %674 = load i64, ptr %673, align 8
  %675 = getelementptr inbounds %struct.uncomp_thread, ptr %671, i64 %674
  %676 = getelementptr inbounds %struct.uncomp_thread, ptr %675, i32 0, i32 1
  %677 = load i64, ptr %676, align 8
  %678 = load ptr, ptr %15, align 8
  %679 = getelementptr inbounds %struct.stream, ptr %678, i32 0, i32 2
  store i64 %677, ptr %679, align 8
  %680 = load ptr, ptr %15, align 8
  %681 = getelementptr inbounds %struct.stream, ptr %680, i32 0, i32 2
  %682 = load i64, ptr %681, align 8
  %683 = load ptr, ptr %6, align 8
  %684 = getelementptr inbounds %struct.stream_info, ptr %683, i32 0, i32 7
  %685 = load i64, ptr %684, align 8
  %686 = sub nsw i64 %685, %682
  store i64 %686, ptr %684, align 8
  %687 = load ptr, ptr %15, align 8
  %688 = getelementptr inbounds %struct.stream, ptr %687, i32 0, i32 3
  store i64 0, ptr %688, align 8
  %689 = load ptr, ptr %15, align 8
  %690 = getelementptr inbounds %struct.stream, ptr %689, i32 0, i32 6
  %691 = load i64, ptr %690, align 8
  %692 = add nsw i64 %691, 1
  store i64 %692, ptr %690, align 8
  %693 = load ptr, ptr %15, align 8
  %694 = getelementptr inbounds %struct.stream, ptr %693, i32 0, i32 7
  %695 = load i64, ptr %694, align 8
  %696 = load ptr, ptr %15, align 8
  %697 = getelementptr inbounds %struct.stream, ptr %696, i32 0, i32 8
  %698 = load i32, ptr %697, align 8
  %699 = sext i32 %698 to i64
  %700 = add nsw i64 %695, %699
  %701 = icmp eq i64 %692, %700
  br i1 %701, label %702, label %708

702:                                              ; preds = %661
  %703 = load ptr, ptr %15, align 8
  %704 = getelementptr inbounds %struct.stream, ptr %703, i32 0, i32 7
  %705 = load i64, ptr %704, align 8
  %706 = load ptr, ptr %15, align 8
  %707 = getelementptr inbounds %struct.stream, ptr %706, i32 0, i32 6
  store i64 %705, ptr %707, align 8
  br label %708

708:                                              ; preds = %702, %661
  store i32 0, ptr %4, align 4
  br label %709

709:                                              ; preds = %708, %639, %560, %530, %456, %437, %414, %371, %299, %285, %258, %244, %230, %168, %155, %142, %117, %99, %79, %63
  %710 = load i32, ptr %4, align 4
  ret i32 %710
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream_out(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  store ptr %10, ptr %6, align 8
  store i32 0, ptr %7, align 4
  br label %11

11:                                               ; preds = %22, %2
  %12 = load i32, ptr %7, align 4
  %13 = load ptr, ptr %6, align 8
  %14 = getelementptr inbounds %struct.stream_info, ptr %13, i32 0, i32 1
  %15 = load i8, ptr %14, align 8
  %16 = zext i8 %15 to i32
  %17 = icmp slt i32 %12, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %11
  %19 = load ptr, ptr %4, align 8
  %20 = load ptr, ptr %6, align 8
  %21 = load i32, ptr %7, align 4
  call void @clear_buffer(ptr noundef %19, ptr noundef %20, i32 noundef %21, i32 noundef 0)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, ptr %7, align 4
  br label %11, !llvm.loop !17

25:                                               ; preds = %11
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 26
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 8388608
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %88

31:                                               ; preds = %25
  %32 = load i64, ptr @output_thread, align 8
  %33 = trunc i64 %32 to i32
  store i32 %33, ptr %8, align 4
  store i32 0, ptr %7, align 4
  br label %34

34:                                               ; preds = %61, %31
  %35 = load i32, ptr %7, align 4
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 30
  %38 = load i32, ptr %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %34
  %41 = load ptr, ptr %4, align 8
  %42 = load ptr, ptr @cthread, align 8
  %43 = load i32, ptr %8, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.compress_thread, ptr %42, i64 %44
  %46 = getelementptr inbounds %struct.compress_thread, ptr %45, i32 0, i32 4
  call void @cksem_wait(ptr noundef %41, ptr noundef %46)
  %47 = load ptr, ptr %4, align 8
  %48 = load ptr, ptr @cthread, align 8
  %49 = load i32, ptr %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.compress_thread, ptr %48, i64 %50
  %52 = getelementptr inbounds %struct.compress_thread, ptr %51, i32 0, i32 4
  call void @cksem_post(ptr noundef %47, ptr noundef %52)
  %53 = load i32, ptr %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %8, align 4
  %55 = load ptr, ptr %4, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 30
  %57 = load i32, ptr %56, align 8
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %40
  store i32 0, ptr %8, align 4
  br label %60

60:                                               ; preds = %59, %40
  br label %61

61:                                               ; preds = %60
  %62 = load i32, ptr %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, ptr %7, align 4
  br label %34, !llvm.loop !18

64:                                               ; preds = %34
  store i32 0, ptr %7, align 4
  br label %65

65:                                               ; preds = %84, %64
  %66 = load i32, ptr %7, align 4
  %67 = load ptr, ptr %6, align 8
  %68 = getelementptr inbounds %struct.stream_info, ptr %67, i32 0, i32 1
  %69 = load i8, ptr %68, align 8
  %70 = zext i8 %69 to i32
  %71 = icmp slt i32 %66, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %65
  %73 = load ptr, ptr %4, align 8
  %74 = load ptr, ptr %6, align 8
  %75 = load ptr, ptr %6, align 8
  %76 = getelementptr inbounds %struct.stream_info, ptr %75, i32 0, i32 0
  %77 = load ptr, ptr %76, align 8
  %78 = load i32, ptr %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.stream, ptr %77, i64 %79
  %81 = getelementptr inbounds %struct.stream, ptr %80, i32 0, i32 9
  %82 = load i64, ptr %81, align 8
  %83 = call zeroext i1 @rewrite_encrypted(ptr noundef %73, ptr noundef %74, i64 noundef %82)
  br label %84

84:                                               ; preds = %72
  %85 = load i32, ptr %7, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, ptr %7, align 4
  br label %65, !llvm.loop !19

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87, %25
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.rzip_control, ptr %89, i32 0, i32 64
  %91 = load i8, ptr %90, align 8
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %175

93:                                               ; preds = %88
  %94 = load ptr, ptr %4, align 8
  %95 = getelementptr inbounds %struct.rzip_control, ptr %94, i32 0, i32 59
  %96 = load i64, ptr %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %115, label %98

98:                                               ; preds = %93
  %99 = call noalias ptr @calloc(i64 noundef 21, i64 noundef 8) #11
  %100 = load ptr, ptr %4, align 8
  %101 = getelementptr inbounds %struct.rzip_control, ptr %100, i32 0, i32 61
  store ptr %99, ptr %101, align 8
  %102 = load ptr, ptr %4, align 8
  %103 = getelementptr inbounds %struct.rzip_control, ptr %102, i32 0, i32 61
  %104 = load ptr, ptr %103, align 8
  %105 = icmp ne ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106
  %108 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %108, i32 noundef 1794, ptr noundef @.str, ptr noundef @__func__.close_stream_out, ptr noundef @.str.33)
  br label %109

109:                                              ; preds = %107
  store i32 -1, ptr %3, align 4
  br label %176

110:                                              ; preds = %98
  %111 = load ptr, ptr %4, align 8
  %112 = getelementptr inbounds %struct.rzip_control, ptr %111, i32 0, i32 59
  %113 = load i64, ptr %112, align 8
  %114 = add i64 %113, 1
  store i64 %114, ptr %112, align 8
  br label %165

115:                                              ; preds = %93
  %116 = load ptr, ptr %4, align 8
  %117 = getelementptr inbounds %struct.rzip_control, ptr %116, i32 0, i32 60
  %118 = load i64, ptr %117, align 8
  %119 = load ptr, ptr %4, align 8
  %120 = getelementptr inbounds %struct.rzip_control, ptr %119, i32 0, i32 59
  %121 = load i64, ptr %120, align 8
  %122 = mul i64 20, %121
  %123 = add i64 %122, 1
  %124 = icmp eq i64 %118, %123
  br i1 %124, label %125, label %164

125:                                              ; preds = %115
  %126 = load ptr, ptr %4, align 8
  %127 = getelementptr inbounds %struct.rzip_control, ptr %126, i32 0, i32 61
  %128 = load ptr, ptr %127, align 8
  %129 = load ptr, ptr %4, align 8
  %130 = getelementptr inbounds %struct.rzip_control, ptr %129, i32 0, i32 59
  %131 = load i64, ptr %130, align 8
  %132 = add i64 %131, 1
  store i64 %132, ptr %130, align 8
  %133 = mul i64 %132, 20
  %134 = add i64 %133, 1
  %135 = mul i64 %134, 8
  %136 = call ptr @realloc(ptr noundef %128, i64 noundef %135) #14
  store ptr %136, ptr %9, align 8
  %137 = load ptr, ptr %9, align 8
  %138 = icmp ne ptr %137, null
  br i1 %138, label %143, label %139

139:                                              ; preds = %125
  br label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %141, i32 noundef 1804, ptr noundef @.str, ptr noundef @__func__.close_stream_out, ptr noundef @.str.34)
  br label %142

142:                                              ; preds = %140
  store i32 -1, ptr %3, align 4
  br label %176

143:                                              ; preds = %125
  %144 = load ptr, ptr %9, align 8
  %145 = load ptr, ptr %4, align 8
  %146 = getelementptr inbounds %struct.rzip_control, ptr %145, i32 0, i32 61
  store ptr %144, ptr %146, align 8
  %147 = load ptr, ptr %4, align 8
  %148 = getelementptr inbounds %struct.rzip_control, ptr %147, i32 0, i32 61
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %4, align 8
  %151 = getelementptr inbounds %struct.rzip_control, ptr %150, i32 0, i32 60
  %152 = load i64, ptr %151, align 8
  %153 = getelementptr inbounds ptr, ptr %149, i64 %152
  %154 = load ptr, ptr %4, align 8
  %155 = getelementptr inbounds %struct.rzip_control, ptr %154, i32 0, i32 59
  %156 = load i64, ptr %155, align 8
  %157 = mul i64 %156, 20
  %158 = add i64 %157, 1
  %159 = load ptr, ptr %4, align 8
  %160 = getelementptr inbounds %struct.rzip_control, ptr %159, i32 0, i32 60
  %161 = load i64, ptr %160, align 8
  %162 = sub i64 %158, %161
  %163 = mul i64 %162, 8
  call void @llvm.memset.p0.i64(ptr align 8 %153, i8 0, i64 %163, i1 false)
  br label %164

164:                                              ; preds = %143, %115
  br label %165

165:                                              ; preds = %164, %110
  %166 = load ptr, ptr %6, align 8
  %167 = load ptr, ptr %4, align 8
  %168 = getelementptr inbounds %struct.rzip_control, ptr %167, i32 0, i32 61
  %169 = load ptr, ptr %168, align 8
  %170 = load ptr, ptr %4, align 8
  %171 = getelementptr inbounds %struct.rzip_control, ptr %170, i32 0, i32 60
  %172 = load i64, ptr %171, align 8
  %173 = add i64 %172, 1
  store i64 %173, ptr %171, align 8
  %174 = getelementptr inbounds ptr, ptr %169, i64 %172
  store ptr %166, ptr %174, align 8
  br label %175

175:                                              ; preds = %165, %88
  store i32 0, ptr %3, align 4
  br label %176

176:                                              ; preds = %175, %142, %109
  %177 = load i32, ptr %3, align 4
  ret i32 %177
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @rewrite_encrypted(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.stream_info, ptr %12, i32 0, i32 2
  %14 = load i32, ptr %13, align 4
  %15 = call i64 @get_seek(ptr noundef %11, i32 noundef %14)
  %16 = load ptr, ptr %6, align 8
  %17 = getelementptr inbounds %struct.stream_info, ptr %16, i32 0, i32 5
  %18 = load i64, ptr %17, align 8
  %19 = sub nsw i64 %15, %18
  store i64 %19, ptr %10, align 8
  %20 = load i64, ptr %10, align 8
  %21 = icmp eq i64 %20, -1
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  store i1 false, ptr %4, align 1
  br label %155

28:                                               ; preds = %3
  %29 = call noalias ptr @malloc(i64 noundef 33) #13
  store ptr %29, ptr %9, align 8
  %30 = load ptr, ptr %9, align 8
  %31 = icmp ne ptr %30, null
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = sext i32 %35 to i64
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %40, i32 noundef 1233, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.119)
  store i1 false, ptr %4, align 1
  br label %155

41:                                               ; No predecessors!
  br label %42

42:                                               ; preds = %41, %28
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds i8, ptr %43, i64 8
  store ptr %44, ptr %8, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = load ptr, ptr %9, align 8
  %47 = call zeroext i1 @get_rand(ptr noundef %45, ptr noundef %46, i32 noundef 8)
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = xor i1 %49, true
  %51 = zext i1 %50 to i32
  %52 = sext i32 %51 to i64
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %151

55:                                               ; preds = %42
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %6, align 8
  %58 = load i64, ptr %7, align 8
  %59 = sub nsw i64 %58, 8
  %60 = call i32 @seekto(ptr noundef %56, ptr noundef %57, i64 noundef %59)
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %55
  br label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %69, i32 noundef 1238, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.120)
  br label %151

70:                                               ; No predecessors!
  br label %71

71:                                               ; preds = %70, %55
  %72 = load ptr, ptr %5, align 8
  %73 = load ptr, ptr %9, align 8
  %74 = call i32 @write_buf(ptr noundef %72, ptr noundef %73, i64 noundef 8)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = sext i32 %78 to i64
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %83, i32 noundef 1240, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.121)
  br label %151

84:                                               ; No predecessors!
  br label %85

85:                                               ; preds = %84, %71
  %86 = load ptr, ptr %5, align 8
  %87 = load ptr, ptr %6, align 8
  %88 = getelementptr inbounds %struct.stream_info, ptr %87, i32 0, i32 2
  %89 = load i32, ptr %88, align 4
  %90 = load ptr, ptr %8, align 8
  %91 = call i32 @read_buf(ptr noundef %86, i32 noundef %89, ptr noundef %90, i64 noundef 25)
  %92 = icmp ne i32 %91, 0
  %93 = xor i1 %92, true
  %94 = xor i1 %93, true
  %95 = zext i1 %94 to i32
  %96 = sext i32 %95 to i64
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %102

98:                                               ; preds = %85
  br label %99

99:                                               ; preds = %98
  %100 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %100, i32 noundef 1242, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.122)
  br label %151

101:                                              ; No predecessors!
  br label %102

102:                                              ; preds = %101, %85
  %103 = load ptr, ptr %5, align 8
  %104 = load ptr, ptr %8, align 8
  %105 = load ptr, ptr %9, align 8
  %106 = call zeroext i1 @lrz_encrypt(ptr noundef %103, ptr noundef %104, i64 noundef 25, ptr noundef %105)
  %107 = xor i1 %106, true
  %108 = xor i1 %107, true
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = sext i32 %110 to i64
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %151

114:                                              ; preds = %102
  %115 = load ptr, ptr %5, align 8
  %116 = load ptr, ptr %6, align 8
  %117 = load i64, ptr %7, align 8
  %118 = call i32 @seekto(ptr noundef %115, ptr noundef %116, i64 noundef %117)
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = sext i32 %122 to i64
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  br label %126

126:                                              ; preds = %125
  %127 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %127, i32 noundef 1248, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.123)
  br label %151

128:                                              ; No predecessors!
  br label %129

129:                                              ; preds = %128, %114
  %130 = load ptr, ptr %5, align 8
  %131 = load ptr, ptr %8, align 8
  %132 = call i32 @write_buf(ptr noundef %130, ptr noundef %131, i64 noundef 25)
  %133 = icmp ne i32 %132, 0
  %134 = xor i1 %133, true
  %135 = xor i1 %134, true
  %136 = zext i1 %135 to i32
  %137 = sext i32 %136 to i64
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %143

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %141, i32 noundef 1250, ptr noundef @.str, ptr noundef @__func__.rewrite_encrypted, ptr noundef @.str.124)
  br label %151

142:                                              ; No predecessors!
  br label %143

143:                                              ; preds = %142, %129
  br label %144

144:                                              ; preds = %143
  %145 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %145) #10
  store ptr null, ptr %9, align 8
  br label %146

146:                                              ; preds = %144
  %147 = load ptr, ptr %5, align 8
  %148 = load ptr, ptr %6, align 8
  %149 = load i64, ptr %10, align 8
  %150 = call i32 @seekto(ptr noundef %147, ptr noundef %148, i64 noundef %149)
  store i1 true, ptr %4, align 1
  br label %155

151:                                              ; preds = %140, %126, %113, %99, %82, %68, %54
  br label %152

152:                                              ; preds = %151
  %153 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %153) #10
  store ptr null, ptr %9, align 8
  br label %154

154:                                              ; preds = %152
  store i1 false, ptr %4, align 1
  br label %155

155:                                              ; preds = %154, %146, %39, %27
  %156 = load i1, ptr %4, align 1
  ret i1 %156
}

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #6

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @close_stream_in(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %8 = load ptr, ptr %5, align 8
  store ptr %8, ptr %6, align 8
  br label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 26
  %12 = load i64, ptr %11, align 8
  %13 = and i64 %12, 2048
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  br label %16

16:                                               ; preds = %15
  %17 = load ptr, ptr %4, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = call i64 @get_readseek(ptr noundef %18, i32 noundef %21)
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.stream_info, ptr %23, i32 0, i32 5
  %25 = load i64, ptr %24, align 8
  %26 = load ptr, ptr %6, align 8
  %27 = getelementptr inbounds %struct.stream_info, ptr %26, i32 0, i32 6
  %28 = load i64, ptr %27, align 8
  %29 = add nsw i64 %25, %28
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %17, i32 noundef 4, i32 noundef 1831, ptr noundef @.str, ptr noundef @__func__.close_stream_in, ptr noundef @.str.35, i64 noundef %22, i64 noundef %29)
  br label %30

30:                                               ; preds = %16
  br label %31

31:                                               ; preds = %30, %9
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = load ptr, ptr %6, align 8
  %36 = getelementptr inbounds %struct.stream_info, ptr %35, i32 0, i32 6
  %37 = load i64, ptr %36, align 8
  %38 = call i32 @read_seekto(ptr noundef %33, ptr noundef %34, i64 noundef %37)
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = sext i32 %42 to i64
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  store i32 -1, ptr %3, align 4
  br label %92

46:                                               ; preds = %32
  store i32 0, ptr %7, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, ptr %7, align 4
  %49 = load ptr, ptr %6, align 8
  %50 = getelementptr inbounds %struct.stream_info, ptr %49, i32 0, i32 1
  %51 = load i8, ptr %50, align 8
  %52 = zext i8 %51 to i32
  %53 = icmp slt i32 %48, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %6, align 8
  %57 = getelementptr inbounds %struct.stream_info, ptr %56, i32 0, i32 0
  %58 = load ptr, ptr %57, align 8
  %59 = load i32, ptr %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.stream, ptr %58, i64 %60
  %62 = getelementptr inbounds %struct.stream, ptr %61, i32 0, i32 1
  %63 = load ptr, ptr %62, align 8
  call void @free(ptr noundef %63) #10
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.stream_info, ptr %64, i32 0, i32 0
  %66 = load ptr, ptr %65, align 8
  %67 = load i32, ptr %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.stream, ptr %66, i64 %68
  %70 = getelementptr inbounds %struct.stream, ptr %69, i32 0, i32 1
  store ptr null, ptr %70, align 8
  br label %71

71:                                               ; preds = %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, ptr %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %7, align 4
  br label %47, !llvm.loop !20

75:                                               ; preds = %47
  store i64 0, ptr @output_thread, align 8
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr @ucthread, align 8
  call void @free(ptr noundef %77) #10
  store ptr null, ptr @ucthread, align 8
  br label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr @threads, align 8
  call void @free(ptr noundef %80) #10
  store ptr null, ptr @threads, align 8
  br label %81

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %81
  %83 = load ptr, ptr %6, align 8
  %84 = getelementptr inbounds %struct.stream_info, ptr %83, i32 0, i32 0
  %85 = load ptr, ptr %84, align 8
  call void @free(ptr noundef %85) #10
  %86 = load ptr, ptr %6, align 8
  %87 = getelementptr inbounds %struct.stream_info, ptr %86, i32 0, i32 0
  store ptr null, ptr %87, align 8
  br label %88

88:                                               ; preds = %82
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %90) #10
  store ptr null, ptr %6, align 8
  br label %91

91:                                               ; preds = %89
  store i32 0, ptr %3, align 4
  br label %92

92:                                               ; preds = %91, %45
  %93 = load i32, ptr %3, align 4
  ret i32 %93
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_seekto(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %10 = load i64, ptr %7, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = getelementptr inbounds %struct.stream_info, ptr %11, i32 0, i32 5
  %13 = load i64, ptr %12, align 8
  %14 = add nsw i64 %10, %13
  store i64 %14, ptr %8, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 26
  %17 = load i64, ptr %16, align 8
  %18 = and i64 %17, 4194304
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %82

20:                                               ; preds = %3
  %21 = load i64, ptr %8, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 15
  %24 = load i64, ptr %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %20
  %27 = load i64, ptr %8, align 8
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 15
  %30 = load i64, ptr %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, ptr %9, align 8
  %32 = load ptr, ptr %5, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 14
  %34 = load i64, ptr %33, align 8
  %35 = load i64, ptr %9, align 8
  %36 = add nsw i64 %34, %35
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 16
  %39 = load i64, ptr %38, align 8
  %40 = icmp sgt i64 %36, %39
  br i1 %40, label %41, label %52

41:                                               ; preds = %26
  %42 = load ptr, ptr %5, align 8
  %43 = call i32 @dump_stdin(ptr noundef %42)
  %44 = icmp ne i32 %43, 0
  %45 = xor i1 %44, true
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = sext i32 %47 to i64
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  store i32 -1, ptr %4, align 4
  br label %89

51:                                               ; preds = %41
  br label %83

52:                                               ; preds = %26
  %53 = load ptr, ptr %5, align 8
  %54 = load i64, ptr %9, align 8
  %55 = call zeroext i1 @read_fdin(ptr noundef %53, i64 noundef %54)
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %52
  store i32 -1, ptr %4, align 4
  br label %89

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63
  br label %65

65:                                               ; preds = %64, %20
  %66 = load i64, ptr %8, align 8
  %67 = load ptr, ptr %5, align 8
  %68 = getelementptr inbounds %struct.rzip_control, ptr %67, i32 0, i32 14
  store i64 %66, ptr %68, align 8
  %69 = load i64, ptr %8, align 8
  %70 = icmp slt i64 %69, 0
  %71 = xor i1 %70, true
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = sext i32 %73 to i64
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %65
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %5, align 8
  %79 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %78, i32 noundef 855, ptr noundef @.str, ptr noundef @__func__.read_seekto, ptr noundef @.str.125, i64 noundef %79)
  br label %80

80:                                               ; preds = %77
  store i32 -1, ptr %4, align 4
  br label %89

81:                                               ; preds = %65
  store i32 0, ptr %4, align 4
  br label %89

82:                                               ; preds = %3
  br label %83

83:                                               ; preds = %82, %51
  %84 = load ptr, ptr %5, align 8
  %85 = load ptr, ptr %6, align 8
  %86 = load i64, ptr %8, align 8
  %87 = load i64, ptr %7, align 8
  %88 = call i32 @fd_seekto(ptr noundef %84, ptr noundef %85, i64 noundef %86, i64 noundef %87)
  store i32 %88, ptr %4, align 4
  br label %89

89:                                               ; preds = %83, %81, %80, %62, %50
  %90 = load i32, ptr %4, align 4
  ret i32 %90
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare void @perror(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

declare void @fatal_exit(ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

declare zeroext i1 @write_fdin(ptr noundef) #2

declare zeroext i1 @read_tmpinfile(ptr noundef, i32 noundef) #2

declare void @close_tmpinbuf(ptr noundef) #2

declare i32 @getchar() #2

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) #1

declare i32 @sem_wait(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @lrz_decrypt(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
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
  %13 = call zeroext i1 @lrz_crypt(ptr noundef %9, ptr noundef %10, i64 noundef %11, ptr noundef %12, i32 noundef 0)
  ret i1 %13
}

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @compthread(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  %13 = load ptr, ptr %2, align 8
  store ptr %13, ptr %3, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.stream_thread_struct, ptr %14, i32 0, i32 1
  %16 = load ptr, ptr %15, align 8
  store ptr %16, ptr %4, align 8
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.stream_thread_struct, ptr %17, i32 0, i32 0
  %19 = load i32, ptr %18, align 8
  %20 = sext i32 %19 to i64
  store i64 %20, ptr %5, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %21

21:                                               ; preds = %1
  %22 = load ptr, ptr %2, align 8
  call void @free(ptr noundef %22) #10
  store ptr null, ptr %2, align 8
  br label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr @cthread, align 8
  %25 = load i64, ptr %5, align 8
  %26 = getelementptr inbounds %struct.compress_thread, ptr %24, i64 %25
  store ptr %26, ptr %6, align 8
  %27 = load ptr, ptr %6, align 8
  %28 = getelementptr inbounds %struct.compress_thread, ptr %27, i32 0, i32 5
  %29 = load ptr, ptr %28, align 8
  store ptr %29, ptr %7, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 31
  %32 = load i8, ptr %31, align 4
  %33 = sext i8 %32 to i32
  %34 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %33) #10
  %35 = icmp eq i32 %34, -1
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %23
  br label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %43, i32 noundef 1279, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.47)
  br label %44

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44, %23
  %46 = load ptr, ptr %6, align 8
  %47 = getelementptr inbounds %struct.compress_thread, ptr %46, i32 0, i32 1
  store i8 3, ptr %47, align 8
  %48 = load ptr, ptr %6, align 8
  %49 = getelementptr inbounds %struct.compress_thread, ptr %48, i32 0, i32 2
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = getelementptr inbounds %struct.compress_thread, ptr %51, i32 0, i32 3
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = getelementptr inbounds %struct.stream_info, ptr %53, i32 0, i32 2
  %55 = load i32, ptr %54, align 4
  %56 = call i32 @fsync(i32 noundef %55)
  br label %57

57:                                               ; preds = %266, %45
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 26
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 32
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %128, label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %6, align 8
  %65 = getelementptr inbounds %struct.compress_thread, ptr %64, i32 0, i32 3
  %66 = load i64, ptr %65, align 8
  %67 = icmp sge i64 %66, 64
  br i1 %67, label %68, label %128

68:                                               ; preds = %63
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.rzip_control, ptr %69, i32 0, i32 26
  %71 = load i64, ptr %70, align 8
  %72 = and i64 %71, 992
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %68
  %75 = load ptr, ptr %4, align 8
  %76 = load ptr, ptr %6, align 8
  %77 = call i32 @lzma_compress_buf(ptr noundef %75, ptr noundef %76)
  store i32 %77, ptr %9, align 4
  br label %127

78:                                               ; preds = %68
  %79 = load ptr, ptr %4, align 8
  %80 = getelementptr inbounds %struct.rzip_control, ptr %79, i32 0, i32 26
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 64
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load ptr, ptr %4, align 8
  %86 = load ptr, ptr %6, align 8
  %87 = call i32 @lzo_compress_buf(ptr noundef %85, ptr noundef %86)
  store i32 %87, ptr %9, align 4
  br label %126

88:                                               ; preds = %78
  %89 = load ptr, ptr %4, align 8
  %90 = getelementptr inbounds %struct.rzip_control, ptr %89, i32 0, i32 26
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 128
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %88
  %95 = load ptr, ptr %4, align 8
  %96 = load ptr, ptr %6, align 8
  %97 = call i32 @bzip2_compress_buf(ptr noundef %95, ptr noundef %96)
  store i32 %97, ptr %9, align 4
  br label %125

98:                                               ; preds = %88
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds %struct.rzip_control, ptr %99, i32 0, i32 26
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 256
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  %105 = load ptr, ptr %4, align 8
  %106 = load ptr, ptr %6, align 8
  %107 = call i32 @gzip_compress_buf(ptr noundef %105, ptr noundef %106)
  store i32 %107, ptr %9, align 4
  br label %124

108:                                              ; preds = %98
  %109 = load ptr, ptr %4, align 8
  %110 = getelementptr inbounds %struct.rzip_control, ptr %109, i32 0, i32 26
  %111 = load i64, ptr %110, align 8
  %112 = and i64 %111, 512
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load ptr, ptr %4, align 8
  %116 = load ptr, ptr %6, align 8
  %117 = load i64, ptr %5, align 8
  %118 = call i32 @zpaq_compress_buf(ptr noundef %115, ptr noundef %116, i64 noundef %117)
  store i32 %118, ptr %9, align 4
  br label %123

119:                                              ; preds = %108
  br label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %121, i32 noundef 1303, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.48)
  br label %859

122:                                              ; No predecessors!
  br label %123

123:                                              ; preds = %122, %114
  br label %124

124:                                              ; preds = %123, %104
  br label %125

125:                                              ; preds = %124, %94
  br label %126

126:                                              ; preds = %125, %84
  br label %127

127:                                              ; preds = %126, %74
  br label %128

128:                                              ; preds = %127, %63, %57
  %129 = load ptr, ptr %6, align 8
  %130 = getelementptr inbounds %struct.compress_thread, ptr %129, i32 0, i32 3
  %131 = load i64, ptr %130, align 8
  store i64 %131, ptr %10, align 8
  %132 = load i32, ptr %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %213, label %134

134:                                              ; preds = %128
  %135 = load i64, ptr %10, align 8
  %136 = load ptr, ptr %4, align 8
  %137 = getelementptr inbounds %struct.rzip_control, ptr %136, i32 0, i32 26
  %138 = load i64, ptr %137, align 8
  %139 = and i64 %138, 8388608
  %140 = icmp ne i64 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i32 16, i32 0
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %135, %143
  br i1 %144, label %145, label %213

145:                                              ; preds = %134
  %146 = load ptr, ptr %4, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 26
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 8388608
  %150 = icmp ne i64 %149, 0
  %151 = zext i1 %150 to i64
  %152 = select i1 %150, i32 16, i32 0
  %153 = sext i32 %152 to i64
  store i64 %153, ptr %10, align 8
  %154 = load ptr, ptr %6, align 8
  %155 = getelementptr inbounds %struct.compress_thread, ptr %154, i32 0, i32 0
  %156 = load ptr, ptr %155, align 8
  %157 = load ptr, ptr %4, align 8
  %158 = getelementptr inbounds %struct.rzip_control, ptr %157, i32 0, i32 26
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 8388608
  %161 = icmp ne i64 %160, 0
  %162 = zext i1 %161 to i64
  %163 = select i1 %161, i32 16, i32 0
  %164 = sext i32 %163 to i64
  %165 = call ptr @realloc(ptr noundef %156, i64 noundef %164) #14
  %166 = load ptr, ptr %6, align 8
  %167 = getelementptr inbounds %struct.compress_thread, ptr %166, i32 0, i32 0
  store ptr %165, ptr %167, align 8
  %168 = load ptr, ptr %6, align 8
  %169 = getelementptr inbounds %struct.compress_thread, ptr %168, i32 0, i32 0
  %170 = load ptr, ptr %169, align 8
  %171 = icmp ne ptr %170, null
  %172 = xor i1 %171, true
  %173 = xor i1 %172, true
  %174 = xor i1 %173, true
  %175 = zext i1 %174 to i32
  %176 = sext i32 %175 to i64
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %145
  br label %179

179:                                              ; preds = %178
  %180 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %180, i32 noundef 1314, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.49)
  br label %859

181:                                              ; No predecessors!
  br label %182

182:                                              ; preds = %181, %145
  %183 = load ptr, ptr %4, align 8
  %184 = load ptr, ptr %6, align 8
  %185 = getelementptr inbounds %struct.compress_thread, ptr %184, i32 0, i32 0
  %186 = load ptr, ptr %185, align 8
  %187 = load ptr, ptr %6, align 8
  %188 = getelementptr inbounds %struct.compress_thread, ptr %187, i32 0, i32 3
  %189 = load i64, ptr %188, align 8
  %190 = getelementptr inbounds i8, ptr %186, i64 %189
  %191 = load ptr, ptr %4, align 8
  %192 = getelementptr inbounds %struct.rzip_control, ptr %191, i32 0, i32 26
  %193 = load i64, ptr %192, align 8
  %194 = and i64 %193, 8388608
  %195 = icmp ne i64 %194, 0
  %196 = zext i1 %195 to i64
  %197 = select i1 %195, i32 16, i32 0
  %198 = sext i32 %197 to i64
  %199 = load ptr, ptr %6, align 8
  %200 = getelementptr inbounds %struct.compress_thread, ptr %199, i32 0, i32 3
  %201 = load i64, ptr %200, align 8
  %202 = sub nsw i64 %198, %201
  %203 = trunc i64 %202 to i32
  %204 = call zeroext i1 @get_rand(ptr noundef %183, ptr noundef %190, i32 noundef %203)
  %205 = xor i1 %204, true
  %206 = xor i1 %205, true
  %207 = xor i1 %206, true
  %208 = zext i1 %207 to i32
  %209 = sext i32 %208 to i64
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %182
  br label %859

212:                                              ; preds = %182
  br label %213

213:                                              ; preds = %212, %134, %128
  %214 = load i32, ptr %9, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32, ptr %8, align 4
  %218 = icmp ne i32 %217, 0
  br label %219

219:                                              ; preds = %216, %213
  %220 = phi i1 [ false, %213 ], [ %218, %216 ]
  %221 = xor i1 %220, true
  %222 = xor i1 %221, true
  %223 = zext i1 %222 to i32
  %224 = sext i32 %223 to i64
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %219
  br label %227

227:                                              ; preds = %226
  %228 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %228, i32 noundef 1323, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.50)
  br label %859

229:                                              ; No predecessors!
  br label %230

230:                                              ; preds = %229, %219
  %231 = load i32, ptr %8, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %246, label %233

233:                                              ; preds = %230
  %234 = load ptr, ptr %4, align 8
  %235 = call zeroext i1 @lock_mutex(ptr noundef %234, ptr noundef @output_lock)
  br label %236

236:                                              ; preds = %240, %233
  %237 = load i64, ptr @output_thread, align 8
  %238 = load i64, ptr %5, align 8
  %239 = icmp ne i64 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load ptr, ptr %4, align 8
  %242 = call zeroext i1 @cond_wait(ptr noundef %241, ptr noundef @output_cond, ptr noundef @output_lock)
  br label %236, !llvm.loop !21

243:                                              ; preds = %236
  %244 = load ptr, ptr %4, align 8
  %245 = call zeroext i1 @unlock_mutex(ptr noundef %244, ptr noundef @output_lock)
  store i32 1, ptr %8, align 4
  br label %246

246:                                              ; preds = %243, %230
  %247 = load i32, ptr %9, align 4
  %248 = icmp ne i32 %247, 0
  %249 = xor i1 %248, true
  %250 = xor i1 %249, true
  %251 = zext i1 %250 to i32
  %252 = sext i32 %251 to i64
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %254, label %267

254:                                              ; preds = %246
  br label %255

255:                                              ; preds = %254
  %256 = load ptr, ptr %4, align 8
  %257 = getelementptr inbounds %struct.rzip_control, ptr %256, i32 0, i32 26
  %258 = load i64, ptr %257, align 8
  %259 = and i64 %258, 2048
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %265

261:                                              ; preds = %255
  br label %262

262:                                              ; preds = %261
  %263 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %263, i32 noundef 4, i32 noundef 1333, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.51)
  br label %264

264:                                              ; preds = %262
  br label %265

265:                                              ; preds = %264, %255
  br label %266

266:                                              ; preds = %265
  br label %57

267:                                              ; preds = %246
  %268 = load ptr, ptr %4, align 8
  %269 = getelementptr inbounds %struct.rzip_control, ptr %268, i32 0, i32 26
  %270 = load i64, ptr %269, align 8
  %271 = and i64 %270, 8388608
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %274

273:                                              ; preds = %267
  store i32 8, ptr %11, align 4
  br label %279

274:                                              ; preds = %267
  %275 = load ptr, ptr %7, align 8
  %276 = getelementptr inbounds %struct.stream_info, ptr %275, i32 0, i32 12
  %277 = load i8, ptr %276, align 4
  %278 = sext i8 %277 to i32
  store i32 %278, ptr %11, align 4
  br label %279

279:                                              ; preds = %274, %273
  %280 = load ptr, ptr %7, align 8
  %281 = getelementptr inbounds %struct.stream_info, ptr %280, i32 0, i32 11
  %282 = load i32, ptr %281, align 8
  %283 = add nsw i32 %282, 1
  store i32 %283, ptr %281, align 8
  %284 = icmp ne i32 %282, 0
  br i1 %284, label %489, label %285

285:                                              ; preds = %279
  %286 = load ptr, ptr %4, align 8
  %287 = getelementptr inbounds %struct.rzip_control, ptr %286, i32 0, i32 26
  %288 = load i64, ptr %287, align 8
  %289 = and i64 %288, 2097152
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %321

291:                                              ; preds = %285
  %292 = load ptr, ptr %4, align 8
  %293 = load ptr, ptr %4, align 8
  %294 = getelementptr inbounds %struct.rzip_control, ptr %293, i32 0, i32 47
  %295 = call zeroext i1 @lock_mutex(ptr noundef %292, ptr noundef %294)
  %296 = load ptr, ptr %4, align 8
  %297 = getelementptr inbounds %struct.rzip_control, ptr %296, i32 0, i32 49
  %298 = load i8, ptr %297, align 1
  %299 = icmp ne i8 %298, 0
  br i1 %299, label %303, label %300

300:                                              ; preds = %291
  %301 = load ptr, ptr %4, align 8
  %302 = call zeroext i1 @write_magic(ptr noundef %301)
  br label %303

303:                                              ; preds = %300, %291
  %304 = load ptr, ptr %4, align 8
  %305 = load ptr, ptr %4, align 8
  %306 = getelementptr inbounds %struct.rzip_control, ptr %305, i32 0, i32 47
  %307 = call zeroext i1 @unlock_mutex(ptr noundef %304, ptr noundef %306)
  %308 = load ptr, ptr %4, align 8
  %309 = call zeroext i1 @flush_tmpoutbuf(ptr noundef %308)
  %310 = xor i1 %309, true
  %311 = xor i1 %310, true
  %312 = xor i1 %311, true
  %313 = zext i1 %312 to i32
  %314 = sext i32 %313 to i64
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %303
  br label %317

317:                                              ; preds = %316
  %318 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %318, i32 noundef 1353, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.52)
  br label %319

319:                                              ; preds = %317
  br label %859

320:                                              ; preds = %303
  br label %321

321:                                              ; preds = %320, %285
  br label %322

322:                                              ; preds = %321
  %323 = load ptr, ptr %4, align 8
  %324 = getelementptr inbounds %struct.rzip_control, ptr %323, i32 0, i32 26
  %325 = load i64, ptr %324, align 8
  %326 = and i64 %325, 2048
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %328, label %341

328:                                              ; preds = %322
  br label %329

329:                                              ; preds = %328
  %330 = load ptr, ptr %4, align 8
  %331 = load ptr, ptr %7, align 8
  %332 = getelementptr inbounds %struct.stream_info, ptr %331, i32 0, i32 12
  %333 = load i8, ptr %332, align 4
  %334 = sext i8 %333 to i32
  %335 = load ptr, ptr %4, align 8
  %336 = load ptr, ptr %7, align 8
  %337 = getelementptr inbounds %struct.stream_info, ptr %336, i32 0, i32 2
  %338 = load i32, ptr %337, align 4
  %339 = call i64 @get_seek(ptr noundef %335, i32 noundef %338)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %330, i32 noundef 4, i32 noundef 1359, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.53, i32 noundef %334, i64 noundef %339)
  br label %340

340:                                              ; preds = %329
  br label %341

341:                                              ; preds = %340, %322
  br label %342

342:                                              ; preds = %341
  %343 = load ptr, ptr %4, align 8
  %344 = load ptr, ptr %7, align 8
  %345 = getelementptr inbounds %struct.stream_info, ptr %344, i32 0, i32 12
  %346 = load i8, ptr %345, align 4
  %347 = call i32 @write_u8(ptr noundef %343, i8 noundef zeroext %346)
  br label %348

348:                                              ; preds = %342
  %349 = load ptr, ptr %4, align 8
  %350 = getelementptr inbounds %struct.rzip_control, ptr %349, i32 0, i32 26
  %351 = load i64, ptr %350, align 8
  %352 = and i64 %351, 2048
  %353 = icmp ne i64 %352, 0
  br i1 %353, label %354, label %362

354:                                              ; preds = %348
  br label %355

355:                                              ; preds = %354
  %356 = load ptr, ptr %4, align 8
  %357 = load ptr, ptr %4, align 8
  %358 = getelementptr inbounds %struct.rzip_control, ptr %357, i32 0, i32 48
  %359 = load i8, ptr %358, align 8
  %360 = zext i8 %359 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %356, i32 noundef 4, i32 noundef 1365, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.54, i32 noundef %360)
  br label %361

361:                                              ; preds = %355
  br label %362

362:                                              ; preds = %361, %348
  br label %363

363:                                              ; preds = %362
  %364 = load ptr, ptr %4, align 8
  %365 = load ptr, ptr %4, align 8
  %366 = getelementptr inbounds %struct.rzip_control, ptr %365, i32 0, i32 48
  %367 = load i8, ptr %366, align 8
  %368 = call i32 @write_u8(ptr noundef %364, i8 noundef zeroext %367)
  %369 = load ptr, ptr %4, align 8
  %370 = getelementptr inbounds %struct.rzip_control, ptr %369, i32 0, i32 26
  %371 = load i64, ptr %370, align 8
  %372 = and i64 %371, 8388608
  %373 = icmp ne i64 %372, 0
  br i1 %373, label %384, label %374

374:                                              ; preds = %363
  %375 = load ptr, ptr %4, align 8
  %376 = load ptr, ptr %7, align 8
  %377 = getelementptr inbounds %struct.stream_info, ptr %376, i32 0, i32 8
  %378 = load i64, ptr %377, align 8
  %379 = load ptr, ptr %7, align 8
  %380 = getelementptr inbounds %struct.stream_info, ptr %379, i32 0, i32 12
  %381 = load i8, ptr %380, align 4
  %382 = sext i8 %381 to i32
  %383 = call i32 @write_val(ptr noundef %375, i64 noundef %378, i32 noundef %382)
  br label %384

384:                                              ; preds = %374, %363
  %385 = load ptr, ptr %4, align 8
  %386 = load ptr, ptr %7, align 8
  %387 = getelementptr inbounds %struct.stream_info, ptr %386, i32 0, i32 2
  %388 = load i32, ptr %387, align 4
  %389 = call i64 @get_seek(ptr noundef %385, i32 noundef %388)
  %390 = load ptr, ptr %7, align 8
  %391 = getelementptr inbounds %struct.stream_info, ptr %390, i32 0, i32 5
  store i64 %389, ptr %391, align 8
  %392 = load ptr, ptr %7, align 8
  %393 = getelementptr inbounds %struct.stream_info, ptr %392, i32 0, i32 5
  %394 = load i64, ptr %393, align 8
  %395 = icmp eq i64 %394, -1
  %396 = xor i1 %395, true
  %397 = xor i1 %396, true
  %398 = zext i1 %397 to i32
  %399 = sext i32 %398 to i64
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %384
  br label %859

402:                                              ; preds = %384
  br label %403

403:                                              ; preds = %402
  %404 = load ptr, ptr %4, align 8
  %405 = getelementptr inbounds %struct.rzip_control, ptr %404, i32 0, i32 26
  %406 = load i64, ptr %405, align 8
  %407 = and i64 %406, 2048
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %416

409:                                              ; preds = %403
  br label %410

410:                                              ; preds = %409
  %411 = load ptr, ptr %4, align 8
  %412 = load ptr, ptr %7, align 8
  %413 = getelementptr inbounds %struct.stream_info, ptr %412, i32 0, i32 5
  %414 = load i64, ptr %413, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %411, i32 noundef 4, i32 noundef 1375, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.55, i64 noundef %414)
  br label %415

415:                                              ; preds = %410
  br label %416

416:                                              ; preds = %415, %403
  br label %417

417:                                              ; preds = %416
  store i32 0, ptr %12, align 4
  br label %418

418:                                              ; preds = %485, %417
  %419 = load i32, ptr %12, align 4
  %420 = load ptr, ptr %7, align 8
  %421 = getelementptr inbounds %struct.stream_info, ptr %420, i32 0, i32 1
  %422 = load i8, ptr %421, align 8
  %423 = zext i8 %422 to i32
  %424 = icmp slt i32 %419, %423
  br i1 %424, label %425, label %488

425:                                              ; preds = %418
  %426 = load ptr, ptr %4, align 8
  %427 = getelementptr inbounds %struct.rzip_control, ptr %426, i32 0, i32 26
  %428 = load i64, ptr %427, align 8
  %429 = and i64 %428, 8388608
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %450

431:                                              ; preds = %425
  %432 = load ptr, ptr %4, align 8
  %433 = call i32 @write_val(ptr noundef %432, i64 noundef 0, i32 noundef 8)
  %434 = icmp ne i32 %433, 0
  %435 = xor i1 %434, true
  %436 = xor i1 %435, true
  %437 = zext i1 %436 to i32
  %438 = sext i32 %437 to i64
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %440, label %445

440:                                              ; preds = %431
  br label %441

441:                                              ; preds = %440
  %442 = load ptr, ptr %4, align 8
  %443 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %442, i32 noundef 1381, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.56, i64 noundef %443)
  br label %859

444:                                              ; No predecessors!
  br label %445

445:                                              ; preds = %444, %431
  %446 = load ptr, ptr %7, align 8
  %447 = getelementptr inbounds %struct.stream_info, ptr %446, i32 0, i32 4
  %448 = load i64, ptr %447, align 8
  %449 = add nsw i64 %448, 8
  store i64 %449, ptr %447, align 8
  br label %450

450:                                              ; preds = %445, %425
  %451 = load ptr, ptr %7, align 8
  %452 = getelementptr inbounds %struct.stream_info, ptr %451, i32 0, i32 4
  %453 = load i64, ptr %452, align 8
  %454 = add nsw i64 %453, 1
  %455 = load i32, ptr %11, align 4
  %456 = mul nsw i32 %455, 2
  %457 = sext i32 %456 to i64
  %458 = add nsw i64 %454, %457
  %459 = load ptr, ptr %7, align 8
  %460 = getelementptr inbounds %struct.stream_info, ptr %459, i32 0, i32 0
  %461 = load ptr, ptr %460, align 8
  %462 = load i32, ptr %12, align 4
  %463 = sext i32 %462 to i64
  %464 = getelementptr inbounds %struct.stream, ptr %461, i64 %463
  %465 = getelementptr inbounds %struct.stream, ptr %464, i32 0, i32 0
  store i64 %458, ptr %465, align 8
  %466 = load ptr, ptr %4, align 8
  %467 = call i32 @write_u8(ptr noundef %466, i8 noundef zeroext 3)
  %468 = load ptr, ptr %4, align 8
  %469 = load i32, ptr %11, align 4
  %470 = call i32 @write_val(ptr noundef %468, i64 noundef 0, i32 noundef %469)
  %471 = load ptr, ptr %4, align 8
  %472 = load i32, ptr %11, align 4
  %473 = call i32 @write_val(ptr noundef %471, i64 noundef 0, i32 noundef %472)
  %474 = load ptr, ptr %4, align 8
  %475 = load i32, ptr %11, align 4
  %476 = call i32 @write_val(ptr noundef %474, i64 noundef 0, i32 noundef %475)
  %477 = load i32, ptr %11, align 4
  %478 = mul nsw i32 %477, 3
  %479 = add nsw i32 1, %478
  %480 = sext i32 %479 to i64
  %481 = load ptr, ptr %7, align 8
  %482 = getelementptr inbounds %struct.stream_info, ptr %481, i32 0, i32 4
  %483 = load i64, ptr %482, align 8
  %484 = add nsw i64 %483, %480
  store i64 %484, ptr %482, align 8
  br label %485

485:                                              ; preds = %450
  %486 = load i32, ptr %12, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, ptr %12, align 4
  br label %418, !llvm.loop !22

488:                                              ; preds = %418
  br label %489

489:                                              ; preds = %488, %279
  br label %490

490:                                              ; preds = %489
  %491 = load ptr, ptr %4, align 8
  %492 = getelementptr inbounds %struct.rzip_control, ptr %491, i32 0, i32 26
  %493 = load i64, ptr %492, align 8
  %494 = and i64 %493, 2048
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %512

496:                                              ; preds = %490
  br label %497

497:                                              ; preds = %496
  %498 = load ptr, ptr %4, align 8
  %499 = load i64, ptr %5, align 8
  %500 = load ptr, ptr %7, align 8
  %501 = getelementptr inbounds %struct.stream_info, ptr %500, i32 0, i32 0
  %502 = load ptr, ptr %501, align 8
  %503 = load ptr, ptr %6, align 8
  %504 = getelementptr inbounds %struct.compress_thread, ptr %503, i32 0, i32 6
  %505 = load i32, ptr %504, align 8
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds %struct.stream, ptr %502, i64 %506
  %508 = getelementptr inbounds %struct.stream, ptr %507, i32 0, i32 0
  %509 = load i64, ptr %508, align 8
  %510 = load i32, ptr %11, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %498, i32 noundef 4, i32 noundef 1393, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.57, i64 noundef %499, i64 noundef %509, i32 noundef %510)
  br label %511

511:                                              ; preds = %497
  br label %512

512:                                              ; preds = %511, %490
  br label %513

513:                                              ; preds = %512
  %514 = load ptr, ptr %4, align 8
  %515 = load ptr, ptr %7, align 8
  %516 = load ptr, ptr %7, align 8
  %517 = getelementptr inbounds %struct.stream_info, ptr %516, i32 0, i32 0
  %518 = load ptr, ptr %517, align 8
  %519 = load ptr, ptr %6, align 8
  %520 = getelementptr inbounds %struct.compress_thread, ptr %519, i32 0, i32 6
  %521 = load i32, ptr %520, align 8
  %522 = sext i32 %521 to i64
  %523 = getelementptr inbounds %struct.stream, ptr %518, i64 %522
  %524 = getelementptr inbounds %struct.stream, ptr %523, i32 0, i32 0
  %525 = load i64, ptr %524, align 8
  %526 = call i32 @seekto(ptr noundef %514, ptr noundef %515, i64 noundef %525)
  %527 = icmp ne i32 %526, 0
  %528 = xor i1 %527, true
  %529 = xor i1 %528, true
  %530 = zext i1 %529 to i32
  %531 = sext i32 %530 to i64
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %538

533:                                              ; preds = %513
  br label %534

534:                                              ; preds = %533
  %535 = load ptr, ptr %4, align 8
  %536 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %535, i32 noundef 1396, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.58, i64 noundef %536)
  br label %859

537:                                              ; No predecessors!
  br label %538

538:                                              ; preds = %537, %513
  %539 = load ptr, ptr %4, align 8
  %540 = load ptr, ptr %7, align 8
  %541 = getelementptr inbounds %struct.stream_info, ptr %540, i32 0, i32 4
  %542 = load i64, ptr %541, align 8
  %543 = load i32, ptr %11, align 4
  %544 = call i32 @write_val(ptr noundef %539, i64 noundef %542, i32 noundef %543)
  %545 = icmp ne i32 %544, 0
  %546 = xor i1 %545, true
  %547 = xor i1 %546, true
  %548 = zext i1 %547 to i32
  %549 = sext i32 %548 to i64
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %551, label %556

551:                                              ; preds = %538
  br label %552

552:                                              ; preds = %551
  %553 = load ptr, ptr %4, align 8
  %554 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %553, i32 noundef 1399, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.59, i64 noundef %554)
  br label %859

555:                                              ; No predecessors!
  br label %556

556:                                              ; preds = %555, %538
  %557 = load ptr, ptr %4, align 8
  %558 = getelementptr inbounds %struct.rzip_control, ptr %557, i32 0, i32 26
  %559 = load i64, ptr %558, align 8
  %560 = and i64 %559, 8388608
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %577

562:                                              ; preds = %556
  %563 = load ptr, ptr %4, align 8
  %564 = load ptr, ptr %7, align 8
  %565 = load ptr, ptr %7, align 8
  %566 = getelementptr inbounds %struct.stream_info, ptr %565, i32 0, i32 0
  %567 = load ptr, ptr %566, align 8
  %568 = load ptr, ptr %6, align 8
  %569 = getelementptr inbounds %struct.compress_thread, ptr %568, i32 0, i32 6
  %570 = load i32, ptr %569, align 8
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds %struct.stream, ptr %567, i64 %571
  %573 = getelementptr inbounds %struct.stream, ptr %572, i32 0, i32 0
  %574 = load i64, ptr %573, align 8
  %575 = sub nsw i64 %574, 17
  %576 = call zeroext i1 @rewrite_encrypted(ptr noundef %563, ptr noundef %564, i64 noundef %575)
  br label %577

577:                                              ; preds = %562, %556
  %578 = load ptr, ptr %7, align 8
  %579 = getelementptr inbounds %struct.stream_info, ptr %578, i32 0, i32 4
  %580 = load i64, ptr %579, align 8
  %581 = add nsw i64 %580, 1
  %582 = load i32, ptr %11, align 4
  %583 = mul nsw i32 %582, 2
  %584 = sext i32 %583 to i64
  %585 = add nsw i64 %581, %584
  %586 = load ptr, ptr %4, align 8
  %587 = getelementptr inbounds %struct.rzip_control, ptr %586, i32 0, i32 26
  %588 = load i64, ptr %587, align 8
  %589 = and i64 %588, 8388608
  %590 = icmp ne i64 %589, 0
  %591 = zext i1 %590 to i64
  %592 = select i1 %590, i32 8, i32 0
  %593 = sext i32 %592 to i64
  %594 = add nsw i64 %585, %593
  %595 = load ptr, ptr %7, align 8
  %596 = getelementptr inbounds %struct.stream_info, ptr %595, i32 0, i32 0
  %597 = load ptr, ptr %596, align 8
  %598 = load ptr, ptr %6, align 8
  %599 = getelementptr inbounds %struct.compress_thread, ptr %598, i32 0, i32 6
  %600 = load i32, ptr %599, align 8
  %601 = sext i32 %600 to i64
  %602 = getelementptr inbounds %struct.stream, ptr %597, i64 %601
  %603 = getelementptr inbounds %struct.stream, ptr %602, i32 0, i32 0
  store i64 %594, ptr %603, align 8
  br label %604

604:                                              ; preds = %577
  %605 = load ptr, ptr %4, align 8
  %606 = getelementptr inbounds %struct.rzip_control, ptr %605, i32 0, i32 26
  %607 = load i64, ptr %606, align 8
  %608 = and i64 %607, 2048
  %609 = icmp ne i64 %608, 0
  br i1 %609, label %610, label %618

610:                                              ; preds = %604
  br label %611

611:                                              ; preds = %610
  %612 = load ptr, ptr %4, align 8
  %613 = load i64, ptr %5, align 8
  %614 = load ptr, ptr %7, align 8
  %615 = getelementptr inbounds %struct.stream_info, ptr %614, i32 0, i32 4
  %616 = load i64, ptr %615, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %612, i32 noundef 4, i32 noundef 1406, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.60, i64 noundef %613, i64 noundef %616)
  br label %617

617:                                              ; preds = %611
  br label %618

618:                                              ; preds = %617, %604
  br label %619

619:                                              ; preds = %618
  %620 = load ptr, ptr %4, align 8
  %621 = load ptr, ptr %7, align 8
  %622 = load ptr, ptr %7, align 8
  %623 = getelementptr inbounds %struct.stream_info, ptr %622, i32 0, i32 4
  %624 = load i64, ptr %623, align 8
  %625 = call i32 @seekto(ptr noundef %620, ptr noundef %621, i64 noundef %624)
  %626 = icmp ne i32 %625, 0
  %627 = xor i1 %626, true
  %628 = xor i1 %627, true
  %629 = zext i1 %628 to i32
  %630 = sext i32 %629 to i64
  %631 = icmp ne i64 %630, 0
  br i1 %631, label %632, label %637

632:                                              ; preds = %619
  br label %633

633:                                              ; preds = %632
  %634 = load ptr, ptr %4, align 8
  %635 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %634, i32 noundef 1409, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.61, i64 noundef %635)
  br label %859

636:                                              ; No predecessors!
  br label %637

637:                                              ; preds = %636, %619
  br label %638

638:                                              ; preds = %637
  %639 = load ptr, ptr %4, align 8
  %640 = getelementptr inbounds %struct.rzip_control, ptr %639, i32 0, i32 26
  %641 = load i64, ptr %640, align 8
  %642 = and i64 %641, 2048
  %643 = icmp ne i64 %642, 0
  br i1 %643, label %644, label %653

644:                                              ; preds = %638
  br label %645

645:                                              ; preds = %644
  %646 = load ptr, ptr %4, align 8
  %647 = load i64, ptr %5, align 8
  %648 = load i64, ptr %10, align 8
  %649 = load ptr, ptr %6, align 8
  %650 = getelementptr inbounds %struct.compress_thread, ptr %649, i32 0, i32 6
  %651 = load i32, ptr %650, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %646, i32 noundef 4, i32 noundef 1411, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.62, i64 noundef %647, i64 noundef %648, i32 noundef %651)
  br label %652

652:                                              ; preds = %645
  br label %653

653:                                              ; preds = %652, %638
  br label %654

654:                                              ; preds = %653
  %655 = load ptr, ptr %4, align 8
  %656 = getelementptr inbounds %struct.rzip_control, ptr %655, i32 0, i32 26
  %657 = load i64, ptr %656, align 8
  %658 = and i64 %657, 8388608
  %659 = icmp ne i64 %658, 0
  br i1 %659, label %660, label %691

660:                                              ; preds = %654
  %661 = load ptr, ptr %4, align 8
  %662 = call i32 @write_val(ptr noundef %661, i64 noundef 0, i32 noundef 8)
  %663 = icmp ne i32 %662, 0
  %664 = xor i1 %663, true
  %665 = xor i1 %664, true
  %666 = zext i1 %665 to i32
  %667 = sext i32 %666 to i64
  %668 = icmp ne i64 %667, 0
  br i1 %668, label %669, label %674

669:                                              ; preds = %660
  br label %670

670:                                              ; preds = %669
  %671 = load ptr, ptr %4, align 8
  %672 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %671, i32 noundef 1415, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.63, i64 noundef %672)
  br label %859

673:                                              ; No predecessors!
  br label %674

674:                                              ; preds = %673, %660
  %675 = load ptr, ptr %7, align 8
  %676 = getelementptr inbounds %struct.stream_info, ptr %675, i32 0, i32 4
  %677 = load i64, ptr %676, align 8
  %678 = add nsw i64 %677, 8
  store i64 %678, ptr %676, align 8
  %679 = load ptr, ptr %7, align 8
  %680 = getelementptr inbounds %struct.stream_info, ptr %679, i32 0, i32 4
  %681 = load i64, ptr %680, align 8
  %682 = load ptr, ptr %7, align 8
  %683 = getelementptr inbounds %struct.stream_info, ptr %682, i32 0, i32 0
  %684 = load ptr, ptr %683, align 8
  %685 = load ptr, ptr %6, align 8
  %686 = getelementptr inbounds %struct.compress_thread, ptr %685, i32 0, i32 6
  %687 = load i32, ptr %686, align 8
  %688 = sext i32 %687 to i64
  %689 = getelementptr inbounds %struct.stream, ptr %684, i64 %688
  %690 = getelementptr inbounds %struct.stream, ptr %689, i32 0, i32 9
  store i64 %681, ptr %690, align 8
  br label %691

691:                                              ; preds = %674, %654
  %692 = load ptr, ptr %4, align 8
  %693 = load ptr, ptr %6, align 8
  %694 = getelementptr inbounds %struct.compress_thread, ptr %693, i32 0, i32 1
  %695 = load i8, ptr %694, align 8
  %696 = call i32 @write_u8(ptr noundef %692, i8 noundef zeroext %695)
  %697 = icmp ne i32 %696, 0
  br i1 %697, label %719, label %698

698:                                              ; preds = %691
  %699 = load ptr, ptr %4, align 8
  %700 = load ptr, ptr %6, align 8
  %701 = getelementptr inbounds %struct.compress_thread, ptr %700, i32 0, i32 3
  %702 = load i64, ptr %701, align 8
  %703 = load i32, ptr %11, align 4
  %704 = call i32 @write_val(ptr noundef %699, i64 noundef %702, i32 noundef %703)
  %705 = icmp ne i32 %704, 0
  br i1 %705, label %719, label %706

706:                                              ; preds = %698
  %707 = load ptr, ptr %4, align 8
  %708 = load ptr, ptr %6, align 8
  %709 = getelementptr inbounds %struct.compress_thread, ptr %708, i32 0, i32 2
  %710 = load i64, ptr %709, align 8
  %711 = load i32, ptr %11, align 4
  %712 = call i32 @write_val(ptr noundef %707, i64 noundef %710, i32 noundef %711)
  %713 = icmp ne i32 %712, 0
  br i1 %713, label %719, label %714

714:                                              ; preds = %706
  %715 = load ptr, ptr %4, align 8
  %716 = load i32, ptr %11, align 4
  %717 = call i32 @write_val(ptr noundef %715, i64 noundef 0, i32 noundef %716)
  %718 = icmp ne i32 %717, 0
  br label %719

719:                                              ; preds = %714, %706, %698, %691
  %720 = phi i1 [ true, %706 ], [ true, %698 ], [ true, %691 ], [ %718, %714 ]
  %721 = xor i1 %720, true
  %722 = xor i1 %721, true
  %723 = zext i1 %722 to i32
  %724 = sext i32 %723 to i64
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %731

726:                                              ; preds = %719
  br label %727

727:                                              ; preds = %726
  %728 = load ptr, ptr %4, align 8
  %729 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %728, i32 noundef 1424, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.64, i64 noundef %729)
  br label %859

730:                                              ; No predecessors!
  br label %731

731:                                              ; preds = %730, %719
  %732 = load i32, ptr %11, align 4
  %733 = mul nsw i32 %732, 3
  %734 = add nsw i32 1, %733
  %735 = sext i32 %734 to i64
  %736 = load ptr, ptr %7, align 8
  %737 = getelementptr inbounds %struct.stream_info, ptr %736, i32 0, i32 4
  %738 = load i64, ptr %737, align 8
  %739 = add nsw i64 %738, %735
  store i64 %739, ptr %737, align 8
  %740 = load ptr, ptr %4, align 8
  %741 = getelementptr inbounds %struct.rzip_control, ptr %740, i32 0, i32 26
  %742 = load i64, ptr %741, align 8
  %743 = and i64 %742, 8388608
  %744 = icmp ne i64 %743, 0
  br i1 %744, label %745, label %797

745:                                              ; preds = %731
  %746 = load ptr, ptr %4, align 8
  %747 = load ptr, ptr %6, align 8
  %748 = getelementptr inbounds %struct.compress_thread, ptr %747, i32 0, i32 7
  %749 = getelementptr inbounds [8 x i8], ptr %748, i64 0, i64 0
  %750 = call zeroext i1 @get_rand(ptr noundef %746, ptr noundef %749, i32 noundef 8)
  %751 = xor i1 %750, true
  %752 = xor i1 %751, true
  %753 = xor i1 %752, true
  %754 = zext i1 %753 to i32
  %755 = sext i32 %754 to i64
  %756 = icmp ne i64 %755, 0
  br i1 %756, label %757, label %758

757:                                              ; preds = %745
  br label %859

758:                                              ; preds = %745
  %759 = load ptr, ptr %4, align 8
  %760 = load ptr, ptr %6, align 8
  %761 = getelementptr inbounds %struct.compress_thread, ptr %760, i32 0, i32 7
  %762 = getelementptr inbounds [8 x i8], ptr %761, i64 0, i64 0
  %763 = call i32 @write_buf(ptr noundef %759, ptr noundef %762, i64 noundef 8)
  %764 = icmp ne i32 %763, 0
  %765 = xor i1 %764, true
  %766 = xor i1 %765, true
  %767 = zext i1 %766 to i32
  %768 = sext i32 %767 to i64
  %769 = icmp ne i64 %768, 0
  br i1 %769, label %770, label %775

770:                                              ; preds = %758
  br label %771

771:                                              ; preds = %770
  %772 = load ptr, ptr %4, align 8
  %773 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %772, i32 noundef 1432, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.65, i64 noundef %773)
  br label %859

774:                                              ; No predecessors!
  br label %775

775:                                              ; preds = %774, %758
  %776 = load ptr, ptr %4, align 8
  %777 = load ptr, ptr %6, align 8
  %778 = getelementptr inbounds %struct.compress_thread, ptr %777, i32 0, i32 0
  %779 = load ptr, ptr %778, align 8
  %780 = load i64, ptr %10, align 8
  %781 = load ptr, ptr %6, align 8
  %782 = getelementptr inbounds %struct.compress_thread, ptr %781, i32 0, i32 7
  %783 = getelementptr inbounds [8 x i8], ptr %782, i64 0, i64 0
  %784 = call zeroext i1 @lrz_encrypt(ptr noundef %776, ptr noundef %779, i64 noundef %780, ptr noundef %783)
  %785 = xor i1 %784, true
  %786 = xor i1 %785, true
  %787 = xor i1 %786, true
  %788 = zext i1 %787 to i32
  %789 = sext i32 %788 to i64
  %790 = icmp ne i64 %789, 0
  br i1 %790, label %791, label %792

791:                                              ; preds = %775
  br label %859

792:                                              ; preds = %775
  %793 = load ptr, ptr %7, align 8
  %794 = getelementptr inbounds %struct.stream_info, ptr %793, i32 0, i32 4
  %795 = load i64, ptr %794, align 8
  %796 = add nsw i64 %795, 8
  store i64 %796, ptr %794, align 8
  br label %797

797:                                              ; preds = %792, %731
  br label %798

798:                                              ; preds = %797
  %799 = load ptr, ptr %4, align 8
  %800 = getelementptr inbounds %struct.rzip_control, ptr %799, i32 0, i32 26
  %801 = load i64, ptr %800, align 8
  %802 = and i64 %801, 2048
  %803 = icmp ne i64 %802, 0
  br i1 %803, label %804, label %812

804:                                              ; preds = %798
  br label %805

805:                                              ; preds = %804
  %806 = load ptr, ptr %4, align 8
  %807 = load i64, ptr %5, align 8
  %808 = load ptr, ptr %7, align 8
  %809 = getelementptr inbounds %struct.stream_info, ptr %808, i32 0, i32 4
  %810 = load i64, ptr %809, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %806, i32 noundef 4, i32 noundef 1438, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.66, i64 noundef %807, i64 noundef %810)
  br label %811

811:                                              ; preds = %805
  br label %812

812:                                              ; preds = %811, %798
  br label %813

813:                                              ; preds = %812
  %814 = load ptr, ptr %4, align 8
  %815 = load ptr, ptr %6, align 8
  %816 = getelementptr inbounds %struct.compress_thread, ptr %815, i32 0, i32 0
  %817 = load ptr, ptr %816, align 8
  %818 = load i64, ptr %10, align 8
  %819 = call i32 @write_buf(ptr noundef %814, ptr noundef %817, i64 noundef %818)
  %820 = icmp ne i32 %819, 0
  %821 = xor i1 %820, true
  %822 = xor i1 %821, true
  %823 = zext i1 %822 to i32
  %824 = sext i32 %823 to i64
  %825 = icmp ne i64 %824, 0
  br i1 %825, label %826, label %831

826:                                              ; preds = %813
  br label %827

827:                                              ; preds = %826
  %828 = load ptr, ptr %4, align 8
  %829 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %828, i32 noundef 1441, ptr noundef @.str, ptr noundef @__func__.compthread, ptr noundef @.str.67, i64 noundef %829)
  br label %859

830:                                              ; No predecessors!
  br label %831

831:                                              ; preds = %830, %813
  %832 = load i64, ptr %10, align 8
  %833 = load ptr, ptr %7, align 8
  %834 = getelementptr inbounds %struct.stream_info, ptr %833, i32 0, i32 4
  %835 = load i64, ptr %834, align 8
  %836 = add nsw i64 %835, %832
  store i64 %836, ptr %834, align 8
  br label %837

837:                                              ; preds = %831
  %838 = load ptr, ptr %6, align 8
  %839 = getelementptr inbounds %struct.compress_thread, ptr %838, i32 0, i32 0
  %840 = load ptr, ptr %839, align 8
  call void @free(ptr noundef %840) #10
  %841 = load ptr, ptr %6, align 8
  %842 = getelementptr inbounds %struct.compress_thread, ptr %841, i32 0, i32 0
  store ptr null, ptr %842, align 8
  br label %843

843:                                              ; preds = %837
  %844 = load ptr, ptr %4, align 8
  %845 = call zeroext i1 @lock_mutex(ptr noundef %844, ptr noundef @output_lock)
  %846 = load i64, ptr @output_thread, align 8
  %847 = add nsw i64 %846, 1
  store i64 %847, ptr @output_thread, align 8
  %848 = load ptr, ptr %4, align 8
  %849 = getelementptr inbounds %struct.rzip_control, ptr %848, i32 0, i32 30
  %850 = load i32, ptr %849, align 8
  %851 = sext i32 %850 to i64
  %852 = icmp eq i64 %847, %851
  br i1 %852, label %853, label %854

853:                                              ; preds = %843
  store i64 0, ptr @output_thread, align 8
  br label %854

854:                                              ; preds = %853, %843
  %855 = load ptr, ptr %4, align 8
  %856 = call zeroext i1 @cond_broadcast(ptr noundef %855, ptr noundef @output_cond)
  %857 = load ptr, ptr %4, align 8
  %858 = call zeroext i1 @unlock_mutex(ptr noundef %857, ptr noundef @output_lock)
  br label %859

859:                                              ; preds = %854, %827, %791, %771, %757, %727, %670, %633, %552, %534, %441, %401, %319, %227, %211, %179, %120
  %860 = load ptr, ptr %4, align 8
  %861 = load ptr, ptr %6, align 8
  %862 = getelementptr inbounds %struct.compress_thread, ptr %861, i32 0, i32 4
  call void @cksem_post(ptr noundef %860, ptr noundef %862)
  ret ptr null
}

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) #1

declare i32 @fsync(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_compress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [5 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 5, ptr %9, align 8
  %12 = load ptr, ptr %4, align 8
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.compress_thread, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.compress_thread, ptr %16, i32 0, i32 2
  %18 = load i64, ptr %17, align 8
  %19 = call i32 @lzo_compresses(ptr noundef %12, ptr noundef %15, i64 noundef %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %222

22:                                               ; preds = %2
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 20
  %25 = load i8, ptr %24, align 8
  %26 = zext i8 %25 to i32
  %27 = mul nsw i32 %26, 7
  %28 = sdiv i32 %27, 9
  store i32 %28, ptr %7, align 4
  %29 = load i32, ptr %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  store i32 1, ptr %7, align 4
  br label %32

32:                                               ; preds = %31, %22
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %4, align 8
  %35 = getelementptr inbounds %struct.rzip_control, ptr %34, i32 0, i32 26
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 2048
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %33
  br label %40

40:                                               ; preds = %39
  %41 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %41, i32 noundef 4, i32 noundef 311, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.68)
  br label %42

42:                                               ; preds = %40
  br label %43

43:                                               ; preds = %42, %33
  br label %44

44:                                               ; preds = %43
  br label %45

45:                                               ; preds = %127, %44
  %46 = load ptr, ptr %4, align 8
  %47 = load ptr, ptr %5, align 8
  %48 = getelementptr inbounds %struct.compress_thread, ptr %47, i32 0, i32 2
  %49 = load i64, ptr %48, align 8
  %50 = call i64 @round_up_page(ptr noundef %46, i64 noundef %49)
  store i64 %50, ptr %11, align 8
  %51 = load i64, ptr %11, align 8
  %52 = call noalias ptr @malloc(i64 noundef %51) #13
  store ptr %52, ptr %10, align 8
  %53 = load ptr, ptr %10, align 8
  %54 = icmp ne ptr %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %45
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %57, i32 noundef 316, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.69)
  br label %58

58:                                               ; preds = %56
  store i32 -1, ptr %3, align 4
  br label %222

59:                                               ; preds = %45
  %60 = load ptr, ptr %10, align 8
  %61 = load ptr, ptr %5, align 8
  %62 = getelementptr inbounds %struct.compress_thread, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.compress_thread, ptr %64, i32 0, i32 2
  %66 = load i64, ptr %65, align 8
  %67 = getelementptr inbounds [5 x i8], ptr %6, i64 0, i64 0
  %68 = load i32, ptr %7, align 4
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.rzip_control, ptr %69, i32 0, i32 30
  %71 = load i32, ptr %70, align 8
  %72 = call i32 @LzmaCompress(ptr noundef %60, ptr noundef %11, ptr noundef %63, i64 noundef %66, ptr noundef %67, ptr noundef %9, i32 noundef %68, i32 noundef 0, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef -1, i32 noundef %71)
  store i32 %72, ptr %8, align 4
  %73 = load i32, ptr %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %150

75:                                               ; preds = %59
  %76 = load i32, ptr %8, align 4
  switch i32 %76, label %99 [
    i32 2, label %77
    i32 5, label %78
    i32 7, label %82
    i32 12, label %95
  ]

77:                                               ; preds = %75
  br label %104

78:                                               ; preds = %75
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %80, i32 noundef 334, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.70, i32 noundef 5)
  br label %81

81:                                               ; preds = %79
  br label %104

82:                                               ; preds = %75
  br label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.rzip_control, ptr %84, i32 0, i32 26
  %86 = load i64, ptr %85, align 8
  %87 = and i64 %86, 2048
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %91, i32 noundef 4, i32 noundef 337, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.71, i32 noundef 7)
  br label %92

92:                                               ; preds = %90
  br label %93

93:                                               ; preds = %92, %83
  br label %94

94:                                               ; preds = %93
  br label %104

95:                                               ; preds = %75
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %97, i32 noundef 340, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.72, i32 noundef 12)
  br label %98

98:                                               ; preds = %96
  br label %104

99:                                               ; preds = %75
  br label %100

100:                                              ; preds = %99
  %101 = load ptr, ptr %4, align 8
  %102 = load i32, ptr %8, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %101, i32 noundef 343, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.73, i32 noundef %102)
  br label %103

103:                                              ; preds = %100
  br label %104

104:                                              ; preds = %103, %98, %94, %81, %77
  br label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %106) #10
  store ptr null, ptr %10, align 8
  br label %107

107:                                              ; preds = %105
  %108 = load i32, ptr %8, align 4
  %109 = icmp eq i32 %108, 2
  br i1 %109, label %110, label %144

110:                                              ; preds = %107
  %111 = load i32, ptr %7, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %128

113:                                              ; preds = %110
  %114 = load i32, ptr %7, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, ptr %7, align 4
  br label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.rzip_control, ptr %117, i32 0, i32 26
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 3072
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %116
  br label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %124, i32 noundef 3, i32 noundef 351, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.74, i32 noundef 2)
  br label %125

125:                                              ; preds = %123
  br label %126

126:                                              ; preds = %125, %116
  br label %127

127:                                              ; preds = %126
  br label %45

128:                                              ; preds = %110
  br label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds %struct.rzip_control, ptr %130, i32 0, i32 26
  %132 = load i64, ptr %131, align 8
  %133 = and i64 %132, 3072
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  br label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %137, i32 noundef 3, i32 noundef 357, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.75)
  br label %138

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138, %129
  br label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr %4, align 8
  %142 = load ptr, ptr %5, align 8
  %143 = call i32 @bzip2_compress_buf(ptr noundef %141, ptr noundef %142)
  store i32 %143, ptr %3, align 4
  br label %222

144:                                              ; preds = %107
  %145 = load i32, ptr %8, align 4
  %146 = icmp eq i32 %145, 7
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 0, ptr %3, align 4
  br label %222

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148
  store i32 -1, ptr %3, align 4
  br label %222

150:                                              ; preds = %59
  %151 = load i64, ptr %11, align 8
  %152 = load ptr, ptr %5, align 8
  %153 = getelementptr inbounds %struct.compress_thread, ptr %152, i32 0, i32 3
  %154 = load i64, ptr %153, align 8
  %155 = icmp sge i64 %151, %154
  %156 = xor i1 %155, true
  %157 = xor i1 %156, true
  %158 = zext i1 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %150
  br label %162

162:                                              ; preds = %161
  %163 = load ptr, ptr %4, align 8
  %164 = getelementptr inbounds %struct.rzip_control, ptr %163, i32 0, i32 26
  %165 = load i64, ptr %164, align 8
  %166 = and i64 %165, 2048
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %162
  br label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %170, i32 noundef 4, i32 noundef 366, ptr noundef @.str, ptr noundef @__func__.lzma_compress_buf, ptr noundef @.str.76)
  br label %171

171:                                              ; preds = %169
  br label %172

172:                                              ; preds = %171, %162
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %175) #10
  store ptr null, ptr %10, align 8
  br label %176

176:                                              ; preds = %174
  store i32 0, ptr %3, align 4
  br label %222

177:                                              ; preds = %150
  %178 = load ptr, ptr %4, align 8
  %179 = load ptr, ptr %4, align 8
  %180 = getelementptr inbounds %struct.rzip_control, ptr %179, i32 0, i32 47
  %181 = call zeroext i1 @lock_mutex(ptr noundef %178, ptr noundef %180)
  %182 = load ptr, ptr %4, align 8
  %183 = getelementptr inbounds %struct.rzip_control, ptr %182, i32 0, i32 50
  %184 = load i8, ptr %183, align 2
  %185 = trunc i8 %184 to i1
  br i1 %185, label %202, label %186

186:                                              ; preds = %177
  %187 = load ptr, ptr %4, align 8
  %188 = getelementptr inbounds %struct.rzip_control, ptr %187, i32 0, i32 24
  %189 = getelementptr inbounds [5 x i8], ptr %188, i64 0, i64 0
  %190 = getelementptr inbounds [5 x i8], ptr %6, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %189, ptr align 1 %190, i64 5, i1 false)
  %191 = load ptr, ptr %4, align 8
  %192 = getelementptr inbounds %struct.rzip_control, ptr %191, i32 0, i32 50
  store i8 1, ptr %192, align 2
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr inbounds %struct.rzip_control, ptr %193, i32 0, i32 26
  %195 = load i64, ptr %194, align 8
  %196 = and i64 %195, 2097152
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %186
  %199 = load ptr, ptr %4, align 8
  %200 = getelementptr inbounds %struct.rzip_control, ptr %199, i32 0, i32 49
  store i8 0, ptr %200, align 1
  br label %201

201:                                              ; preds = %198, %186
  br label %202

202:                                              ; preds = %201, %177
  %203 = load ptr, ptr %4, align 8
  %204 = load ptr, ptr %4, align 8
  %205 = getelementptr inbounds %struct.rzip_control, ptr %204, i32 0, i32 47
  %206 = call zeroext i1 @unlock_mutex(ptr noundef %203, ptr noundef %205)
  %207 = load i64, ptr %11, align 8
  %208 = load ptr, ptr %5, align 8
  %209 = getelementptr inbounds %struct.compress_thread, ptr %208, i32 0, i32 3
  store i64 %207, ptr %209, align 8
  br label %210

210:                                              ; preds = %202
  %211 = load ptr, ptr %5, align 8
  %212 = getelementptr inbounds %struct.compress_thread, ptr %211, i32 0, i32 0
  %213 = load ptr, ptr %212, align 8
  call void @free(ptr noundef %213) #10
  %214 = load ptr, ptr %5, align 8
  %215 = getelementptr inbounds %struct.compress_thread, ptr %214, i32 0, i32 0
  store ptr null, ptr %215, align 8
  br label %216

216:                                              ; preds = %210
  %217 = load ptr, ptr %10, align 8
  %218 = load ptr, ptr %5, align 8
  %219 = getelementptr inbounds %struct.compress_thread, ptr %218, i32 0, i32 0
  store ptr %217, ptr %219, align 8
  %220 = load ptr, ptr %5, align 8
  %221 = getelementptr inbounds %struct.compress_thread, ptr %220, i32 0, i32 1
  store i8 6, ptr %221, align 8
  store i32 0, ptr %3, align 4
  br label %222

222:                                              ; preds = %216, %176, %149, %147, %140, %58, %21
  %223 = load i32, ptr %3, align 4
  ret i32 %223
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_compress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = getelementptr inbounds %struct.compress_thread, ptr %11, i32 0, i32 2
  %13 = load i64, ptr %12, align 8
  store i64 %13, ptr %6, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = load i64, ptr %6, align 8
  %16 = load i64, ptr %6, align 8
  %17 = udiv i64 %16, 16
  %18 = add i64 %15, %17
  %19 = add i64 %18, 64
  %20 = add i64 %19, 3
  %21 = call i64 @round_up_page(ptr noundef %14, i64 noundef %20)
  store i64 %21, ptr %7, align 8
  store i32 -1, ptr %10, align 4
  %22 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 131072) #11
  store ptr %22, ptr %8, align 8
  %23 = load ptr, ptr %8, align 8
  %24 = icmp eq ptr %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %2
  br label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 26
  %34 = load i64, ptr %33, align 8
  %35 = and i64 %34, 2048
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %39, i32 noundef 4, i32 noundef 400, ptr noundef @.str, ptr noundef @__func__.lzo_compress_buf, ptr noundef @.str.82)
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40, %31
  br label %42

42:                                               ; preds = %41
  %43 = load i32, ptr %10, align 4
  store i32 %43, ptr %3, align 4
  br label %101

44:                                               ; preds = %2
  %45 = load i64, ptr %7, align 8
  %46 = call noalias ptr @malloc(i64 noundef %45) #13
  store ptr %46, ptr %9, align 8
  %47 = load ptr, ptr %9, align 8
  %48 = icmp ne ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %51, i32 noundef 406, ptr noundef @.str, ptr noundef @__func__.lzo_compress_buf, ptr noundef @.str.83)
  br label %52

52:                                               ; preds = %50
  br label %96

53:                                               ; preds = %44
  %54 = load ptr, ptr %5, align 8
  %55 = getelementptr inbounds %struct.compress_thread, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = load i64, ptr %6, align 8
  %58 = load ptr, ptr %9, align 8
  %59 = load ptr, ptr %8, align 8
  %60 = call i32 @lzo1x_1_compress(ptr noundef %56, i64 noundef %57, ptr noundef %58, ptr noundef %7, ptr noundef %59)
  store i32 0, ptr %10, align 4
  %61 = load i64, ptr %7, align 8
  %62 = load i64, ptr %6, align 8
  %63 = icmp uge i64 %61, %62
  br i1 %63, label %64, label %80

64:                                               ; preds = %53
  br label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 26
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 2048
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %73, i32 noundef 4, i32 noundef 417, ptr noundef @.str, ptr noundef @__func__.lzo_compress_buf, ptr noundef @.str.76)
  br label %74

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %78) #10
  store ptr null, ptr %9, align 8
  br label %79

79:                                               ; preds = %77
  br label %96

80:                                               ; preds = %53
  %81 = load i64, ptr %7, align 8
  %82 = load ptr, ptr %5, align 8
  %83 = getelementptr inbounds %struct.compress_thread, ptr %82, i32 0, i32 3
  store i64 %81, ptr %83, align 8
  br label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %5, align 8
  %86 = getelementptr inbounds %struct.compress_thread, ptr %85, i32 0, i32 0
  %87 = load ptr, ptr %86, align 8
  call void @free(ptr noundef %87) #10
  %88 = load ptr, ptr %5, align 8
  %89 = getelementptr inbounds %struct.compress_thread, ptr %88, i32 0, i32 0
  store ptr null, ptr %89, align 8
  br label %90

90:                                               ; preds = %84
  %91 = load ptr, ptr %9, align 8
  %92 = load ptr, ptr %5, align 8
  %93 = getelementptr inbounds %struct.compress_thread, ptr %92, i32 0, i32 0
  store ptr %91, ptr %93, align 8
  %94 = load ptr, ptr %5, align 8
  %95 = getelementptr inbounds %struct.compress_thread, ptr %94, i32 0, i32 1
  store i8 5, ptr %95, align 8
  br label %96

96:                                               ; preds = %90, %79, %52
  br label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %98) #10
  store ptr null, ptr %8, align 8
  br label %99

99:                                               ; preds = %97
  %100 = load i32, ptr %10, align 4
  store i32 %100, ptr %3, align 4
  br label %101

101:                                              ; preds = %99, %42
  %102 = load i32, ptr %3, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzip2_compress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.compress_thread, ptr %10, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = call i64 @round_up_page(ptr noundef %9, i64 noundef %12)
  %14 = trunc i64 %13 to i32
  store i32 %14, ptr %6, align 4
  %15 = load ptr, ptr %4, align 8
  %16 = load ptr, ptr %5, align 8
  %17 = getelementptr inbounds %struct.compress_thread, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.compress_thread, ptr %19, i32 0, i32 2
  %21 = load i64, ptr %20, align 8
  %22 = call i32 @lzo_compresses(ptr noundef %15, ptr noundef %18, i64 noundef %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, ptr %3, align 4
  br label %141

25:                                               ; preds = %2
  %26 = load i32, ptr %6, align 4
  %27 = zext i32 %26 to i64
  %28 = call noalias ptr @malloc(i64 noundef %27) #13
  store ptr %28, ptr %8, align 8
  %29 = load ptr, ptr %8, align 8
  %30 = icmp ne ptr %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %33, i32 noundef 212, ptr noundef @.str, ptr noundef @__func__.bzip2_compress_buf, ptr noundef @.str.84)
  br label %34

34:                                               ; preds = %32
  store i32 -1, ptr %3, align 4
  br label %141

35:                                               ; preds = %25
  %36 = load ptr, ptr %8, align 8
  %37 = load ptr, ptr %5, align 8
  %38 = getelementptr inbounds %struct.compress_thread, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %5, align 8
  %41 = getelementptr inbounds %struct.compress_thread, ptr %40, i32 0, i32 2
  %42 = load i64, ptr %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 20
  %46 = load i8, ptr %45, align 8
  %47 = zext i8 %46 to i32
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 20
  %50 = load i8, ptr %49, align 8
  %51 = zext i8 %50 to i32
  %52 = mul nsw i32 %51, 10
  %53 = call i32 @BZ2_bzBuffToBuffCompress(ptr noundef %36, ptr noundef %6, ptr noundef %39, i32 noundef %43, i32 noundef %47, i32 noundef 0, i32 noundef %52)
  store i32 %53, ptr %7, align 4
  %54 = load i32, ptr %7, align 4
  %55 = icmp eq i32 %54, -8
  br i1 %55, label %56, label %72

56:                                               ; preds = %35
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 26
  %60 = load i64, ptr %59, align 8
  %61 = and i64 %60, 2048
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %65, i32 noundef 4, i32 noundef 224, ptr noundef @.str, ptr noundef @__func__.bzip2_compress_buf, ptr noundef @.str.76)
  br label %66

66:                                               ; preds = %64
  br label %67

67:                                               ; preds = %66, %57
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %68
  %70 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %70) #10
  store ptr null, ptr %8, align 8
  br label %71

71:                                               ; preds = %69
  store i32 0, ptr %3, align 4
  br label %141

72:                                               ; preds = %35
  %73 = load i32, ptr %7, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = sext i32 %77 to i64
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %96

80:                                               ; preds = %72
  br label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %82) #10
  store ptr null, ptr %8, align 8
  br label %83

83:                                               ; preds = %81
  br label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %4, align 8
  %86 = getelementptr inbounds %struct.rzip_control, ptr %85, i32 0, i32 26
  %87 = load i64, ptr %86, align 8
  %88 = and i64 %87, 2048
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %92, i32 noundef 4, i32 noundef 232, ptr noundef @.str, ptr noundef @__func__.bzip2_compress_buf, ptr noundef @.str.85)
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %84
  br label %95

95:                                               ; preds = %94
  store i32 -1, ptr %3, align 4
  br label %141

96:                                               ; preds = %72
  %97 = load i32, ptr %6, align 4
  %98 = zext i32 %97 to i64
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.compress_thread, ptr %99, i32 0, i32 3
  %101 = load i64, ptr %100, align 8
  %102 = icmp sge i64 %98, %101
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = zext i1 %104 to i32
  %106 = sext i32 %105 to i64
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %124

108:                                              ; preds = %96
  br label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %4, align 8
  %111 = getelementptr inbounds %struct.rzip_control, ptr %110, i32 0, i32 26
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 2048
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115
  %117 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %117, i32 noundef 4, i32 noundef 237, ptr noundef @.str, ptr noundef @__func__.bzip2_compress_buf, ptr noundef @.str.76)
  br label %118

118:                                              ; preds = %116
  br label %119

119:                                              ; preds = %118, %109
  br label %120

120:                                              ; preds = %119
  br label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %122) #10
  store ptr null, ptr %8, align 8
  br label %123

123:                                              ; preds = %121
  store i32 0, ptr %3, align 4
  br label %141

124:                                              ; preds = %96
  %125 = load i32, ptr %6, align 4
  %126 = zext i32 %125 to i64
  %127 = load ptr, ptr %5, align 8
  %128 = getelementptr inbounds %struct.compress_thread, ptr %127, i32 0, i32 3
  store i64 %126, ptr %128, align 8
  br label %129

129:                                              ; preds = %124
  %130 = load ptr, ptr %5, align 8
  %131 = getelementptr inbounds %struct.compress_thread, ptr %130, i32 0, i32 0
  %132 = load ptr, ptr %131, align 8
  call void @free(ptr noundef %132) #10
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds %struct.compress_thread, ptr %133, i32 0, i32 0
  store ptr null, ptr %134, align 8
  br label %135

135:                                              ; preds = %129
  %136 = load ptr, ptr %8, align 8
  %137 = load ptr, ptr %5, align 8
  %138 = getelementptr inbounds %struct.compress_thread, ptr %137, i32 0, i32 0
  store ptr %136, ptr %138, align 8
  %139 = load ptr, ptr %5, align 8
  %140 = getelementptr inbounds %struct.compress_thread, ptr %139, i32 0, i32 1
  store i8 4, ptr %140, align 8
  store i32 0, ptr %3, align 4
  br label %141

141:                                              ; preds = %135, %123, %95, %71, %34, %24
  %142 = load i32, ptr %3, align 4
  ret i32 %142
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gzip_compress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.compress_thread, ptr %10, i32 0, i32 2
  %12 = load i64, ptr %11, align 8
  %13 = call i64 @round_up_page(ptr noundef %9, i64 noundef %12)
  store i64 %13, ptr %6, align 8
  %14 = load i64, ptr %6, align 8
  %15 = call noalias ptr @malloc(i64 noundef %14) #13
  store ptr %15, ptr %7, align 8
  %16 = load ptr, ptr %7, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %20, i32 noundef 258, ptr noundef @.str, ptr noundef @__func__.gzip_compress_buf, ptr noundef @.str.86)
  br label %21

21:                                               ; preds = %19
  store i32 -1, ptr %3, align 4
  br label %120

22:                                               ; preds = %2
  %23 = load ptr, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.compress_thread, ptr %24, i32 0, i32 0
  %26 = load ptr, ptr %25, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.compress_thread, ptr %27, i32 0, i32 2
  %29 = load i64, ptr %28, align 8
  %30 = load ptr, ptr %4, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 20
  %32 = load i8, ptr %31, align 8
  %33 = zext i8 %32 to i32
  %34 = call i32 @compress2(ptr noundef %23, ptr noundef %6, ptr noundef %26, i64 noundef %29, i32 noundef %33)
  store i32 %34, ptr %8, align 4
  %35 = load i32, ptr %8, align 4
  %36 = icmp eq i32 %35, -5
  br i1 %36, label %37, label %53

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.rzip_control, ptr %39, i32 0, i32 26
  %41 = load i64, ptr %40, align 8
  %42 = and i64 %41, 2048
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %46, i32 noundef 4, i32 noundef 269, ptr noundef @.str, ptr noundef @__func__.gzip_compress_buf, ptr noundef @.str.76)
  br label %47

47:                                               ; preds = %45
  br label %48

48:                                               ; preds = %47, %38
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %51) #10
  store ptr null, ptr %7, align 8
  br label %52

52:                                               ; preds = %50
  store i32 0, ptr %3, align 4
  br label %120

53:                                               ; preds = %22
  %54 = load i32, ptr %8, align 4
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = sext i32 %58 to i64
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61
  %63 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %63) #10
  store ptr null, ptr %7, align 8
  br label %64

64:                                               ; preds = %62
  br label %65

65:                                               ; preds = %64
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 26
  %68 = load i64, ptr %67, align 8
  %69 = and i64 %68, 2048
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %73, i32 noundef 4, i32 noundef 277, ptr noundef @.str, ptr noundef @__func__.gzip_compress_buf, ptr noundef @.str.87)
  br label %74

74:                                               ; preds = %72
  br label %75

75:                                               ; preds = %74, %65
  br label %76

76:                                               ; preds = %75
  store i32 -1, ptr %3, align 4
  br label %120

77:                                               ; preds = %53
  %78 = load i64, ptr %6, align 8
  %79 = load ptr, ptr %5, align 8
  %80 = getelementptr inbounds %struct.compress_thread, ptr %79, i32 0, i32 3
  %81 = load i64, ptr %80, align 8
  %82 = icmp sge i64 %78, %81
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = sext i32 %85 to i64
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %77
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 26
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 2048
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %89
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %97, i32 noundef 4, i32 noundef 282, ptr noundef @.str, ptr noundef @__func__.gzip_compress_buf, ptr noundef @.str.76)
  br label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98, %89
  br label %100

100:                                              ; preds = %99
  br label %101

101:                                              ; preds = %100
  %102 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %102) #10
  store ptr null, ptr %7, align 8
  br label %103

103:                                              ; preds = %101
  store i32 0, ptr %3, align 4
  br label %120

104:                                              ; preds = %77
  %105 = load i64, ptr %6, align 8
  %106 = load ptr, ptr %5, align 8
  %107 = getelementptr inbounds %struct.compress_thread, ptr %106, i32 0, i32 3
  store i64 %105, ptr %107, align 8
  br label %108

108:                                              ; preds = %104
  %109 = load ptr, ptr %5, align 8
  %110 = getelementptr inbounds %struct.compress_thread, ptr %109, i32 0, i32 0
  %111 = load ptr, ptr %110, align 8
  call void @free(ptr noundef %111) #10
  %112 = load ptr, ptr %5, align 8
  %113 = getelementptr inbounds %struct.compress_thread, ptr %112, i32 0, i32 0
  store ptr null, ptr %113, align 8
  br label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %7, align 8
  %116 = load ptr, ptr %5, align 8
  %117 = getelementptr inbounds %struct.compress_thread, ptr %116, i32 0, i32 0
  store ptr %115, ptr %117, align 8
  %118 = load ptr, ptr %5, align 8
  %119 = getelementptr inbounds %struct.compress_thread, ptr %118, i32 0, i32 1
  store i8 7, ptr %119, align 8
  store i32 0, ptr %3, align 4
  br label %120

120:                                              ; preds = %114, %103, %76, %52, %21
  %121 = load i32, ptr %3, align 4
  ret i32 %121
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpaq_compress_buf(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = load ptr, ptr %6, align 8
  %13 = getelementptr inbounds %struct.compress_thread, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  %15 = load ptr, ptr %6, align 8
  %16 = getelementptr inbounds %struct.compress_thread, ptr %15, i32 0, i32 2
  %17 = load i64, ptr %16, align 8
  %18 = call i32 @lzo_compresses(ptr noundef %11, ptr noundef %14, i64 noundef %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  store i32 0, ptr %4, align 4
  br label %104

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8
  %23 = load ptr, ptr %6, align 8
  %24 = getelementptr inbounds %struct.compress_thread, ptr %23, i32 0, i32 2
  %25 = load i64, ptr %24, align 8
  %26 = add nsw i64 %25, 10000
  %27 = call i64 @round_up_page(ptr noundef %22, i64 noundef %26)
  store i64 %27, ptr %9, align 8
  %28 = load i64, ptr %9, align 8
  %29 = call noalias ptr @malloc(i64 noundef %28) #13
  store ptr %29, ptr %10, align 8
  %30 = load ptr, ptr %10, align 8
  %31 = icmp ne ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %34, i32 noundef 178, ptr noundef @.str, ptr noundef @__func__.zpaq_compress_buf, ptr noundef @.str.88)
  br label %35

35:                                               ; preds = %33
  store i32 -1, ptr %4, align 4
  br label %104

36:                                               ; preds = %21
  store i64 0, ptr %8, align 8
  %37 = load ptr, ptr %10, align 8
  %38 = load ptr, ptr %6, align 8
  %39 = getelementptr inbounds %struct.compress_thread, ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = getelementptr inbounds %struct.compress_thread, ptr %41, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = load ptr, ptr %5, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 20
  %46 = load i8, ptr %45, align 8
  %47 = zext i8 %46 to i32
  %48 = sdiv i32 %47, 4
  %49 = add nsw i32 %48, 1
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 17
  %52 = load ptr, ptr %51, align 8
  %53 = load ptr, ptr %5, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 26
  %55 = load i64, ptr %54, align 8
  %56 = and i64 %55, 1
  %57 = icmp ne i64 %56, 0
  %58 = zext i1 %57 to i64
  %59 = select i1 %57, i32 1, i32 0
  %60 = icmp ne i32 %59, 0
  %61 = load i64, ptr %7, align 8
  call void @zpaq_compress(ptr noundef %37, ptr noundef %8, ptr noundef %40, i64 noundef %43, i32 noundef %49, ptr noundef %52, i1 noundef zeroext %60, i64 noundef %61)
  %62 = load i64, ptr %8, align 8
  %63 = load ptr, ptr %6, align 8
  %64 = getelementptr inbounds %struct.compress_thread, ptr %63, i32 0, i32 3
  %65 = load i64, ptr %64, align 8
  %66 = icmp sge i64 %62, %65
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %36
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %5, align 8
  %75 = getelementptr inbounds %struct.rzip_control, ptr %74, i32 0, i32 26
  %76 = load i64, ptr %75, align 8
  %77 = and i64 %76, 2048
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  br label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr %5, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %81, i32 noundef 4, i32 noundef 188, ptr noundef @.str, ptr noundef @__func__.zpaq_compress_buf, ptr noundef @.str.76)
  br label %82

82:                                               ; preds = %80
  br label %83

83:                                               ; preds = %82, %73
  br label %84

84:                                               ; preds = %83
  br label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %10, align 8
  call void @free(ptr noundef %86) #10
  store ptr null, ptr %10, align 8
  br label %87

87:                                               ; preds = %85
  store i32 0, ptr %4, align 4
  br label %104

88:                                               ; preds = %36
  %89 = load i64, ptr %8, align 8
  %90 = load ptr, ptr %6, align 8
  %91 = getelementptr inbounds %struct.compress_thread, ptr %90, i32 0, i32 3
  store i64 %89, ptr %91, align 8
  br label %92

92:                                               ; preds = %88
  %93 = load ptr, ptr %6, align 8
  %94 = getelementptr inbounds %struct.compress_thread, ptr %93, i32 0, i32 0
  %95 = load ptr, ptr %94, align 8
  call void @free(ptr noundef %95) #10
  %96 = load ptr, ptr %6, align 8
  %97 = getelementptr inbounds %struct.compress_thread, ptr %96, i32 0, i32 0
  store ptr null, ptr %97, align 8
  br label %98

98:                                               ; preds = %92
  %99 = load ptr, ptr %10, align 8
  %100 = load ptr, ptr %6, align 8
  %101 = getelementptr inbounds %struct.compress_thread, ptr %100, i32 0, i32 0
  store ptr %99, ptr %101, align 8
  %102 = load ptr, ptr %6, align 8
  %103 = getelementptr inbounds %struct.compress_thread, ptr %102, i32 0, i32 1
  store i8 8, ptr %103, align 8
  store i32 0, ptr %4, align 4
  br label %104

104:                                              ; preds = %98, %87, %35, %20
  %105 = load i32, ptr %4, align 4
  ret i32 %105
}

declare zeroext i1 @get_rand(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @cond_wait(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  %8 = load ptr, ptr %6, align 8
  %9 = load ptr, ptr %7, align 8
  %10 = call i32 @pthread_cond_wait(ptr noundef %8, ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  br label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %19, i32 noundef 119, ptr noundef @.str, ptr noundef @__func__.cond_wait, ptr noundef @.str.89)
  store i1 false, ptr %4, align 1
  br label %22

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %3
  store i1 true, ptr %4, align 1
  br label %22

22:                                               ; preds = %21, %18
  %23 = load i1, ptr %4, align 1
  ret i1 %23
}

declare zeroext i1 @write_magic(ptr noundef) #2

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_seek(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %7 = load ptr, ptr %4, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 26
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 2097152
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 12
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 8
  %18 = load i64, ptr %17, align 8
  %19 = add nsw i64 %15, %18
  store i64 %19, ptr %3, align 8
  br label %36

20:                                               ; preds = %2
  %21 = load i32, ptr %5, align 4
  %22 = call i64 @lseek64(i32 noundef %21, i64 noundef 0, i32 noundef 1) #10
  store i64 %22, ptr %6, align 8
  %23 = load i64, ptr %6, align 8
  %24 = icmp eq i64 %23, -1
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = sext i32 %27 to i64
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %20
  br label %31

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %32, i32 noundef 872, ptr noundef @.str, ptr noundef @__func__.get_seek, ptr noundef @.str.13)
  store i64 -1, ptr %3, align 8
  br label %36

33:                                               ; No predecessors!
  br label %34

34:                                               ; preds = %33, %20
  %35 = load i64, ptr %6, align 8
  store i64 %35, ptr %3, align 8
  br label %36

36:                                               ; preds = %34, %31, %12
  %37 = load i64, ptr %3, align 8
  ret i64 %37
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_u8(ptr noundef %0, i8 noundef zeroext %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i8, align 1
  store ptr %0, ptr %3, align 8
  store i8 %1, ptr %4, align 1
  %5 = load ptr, ptr %3, align 8
  %6 = call i32 @write_buf(ptr noundef %5, ptr noundef %4, i64 noundef 1)
  ret i32 %6
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_val(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  store i32 %2, ptr %6, align 4
  %7 = load i64, ptr %5, align 8
  %8 = call i64 @__uint64_identity(i64 noundef %7)
  store i64 %8, ptr %5, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = load i32, ptr %6, align 4
  %11 = sext i32 %10 to i64
  %12 = call i32 @write_buf(ptr noundef %9, ptr noundef %5, i64 noundef %11)
  ret i32 %12
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seekto(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %9 = load i64, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = getelementptr inbounds %struct.stream_info, ptr %10, i32 0, i32 5
  %12 = load i64, ptr %11, align 8
  %13 = add nsw i64 %9, %12
  store i64 %13, ptr %8, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 26
  %16 = load i64, ptr %15, align 8
  %17 = and i64 %16, 2097152
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %49

19:                                               ; preds = %3
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.rzip_control, ptr %20, i32 0, i32 12
  %22 = load i64, ptr %21, align 8
  %23 = load i64, ptr %8, align 8
  %24 = sub nsw i64 %23, %22
  store i64 %24, ptr %8, align 8
  %25 = load i64, ptr %8, align 8
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 8
  store i64 %25, ptr %27, align 8
  %28 = load i64, ptr %8, align 8
  %29 = load ptr, ptr %5, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 10
  %31 = load i64, ptr %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %36, label %33

33:                                               ; preds = %19
  %34 = load i64, ptr %8, align 8
  %35 = icmp slt i64 %34, 0
  br label %36

36:                                               ; preds = %33, %19
  %37 = phi i1 [ true, %19 ], [ %35, %33 ]
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %5, align 8
  %46 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %45, i32 noundef 827, ptr noundef @.str, ptr noundef @__func__.seekto, ptr noundef @.str.90, i64 noundef %46)
  br label %47

47:                                               ; preds = %44
  store i32 -1, ptr %4, align 4
  br label %55

48:                                               ; preds = %36
  store i32 0, ptr %4, align 4
  br label %55

49:                                               ; preds = %3
  %50 = load ptr, ptr %5, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = load i64, ptr %8, align 8
  %53 = load i64, ptr %7, align 8
  %54 = call i32 @fd_seekto(ptr noundef %50, ptr noundef %51, i64 noundef %52, i64 noundef %53)
  store i32 %54, ptr %4, align 4
  br label %55

55:                                               ; preds = %49, %48, %47
  %56 = load i32, ptr %4, align 4
  ret i32 %56
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_buf(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = load i64, ptr %7, align 8
  %12 = call i64 @write_1g(ptr noundef %9, ptr noundef %10, i64 noundef %11)
  store i64 %12, ptr %8, align 8
  %13 = load i64, ptr %8, align 8
  %14 = icmp eq i64 %13, -1
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %3
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %5, align 8
  %23 = load i64, ptr %7, align 8
  %24 = call ptr @__errno_location() #12
  %25 = load i32, ptr %24, align 4
  %26 = call ptr @strerror(i32 noundef %25) #10
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %22, i32 noundef 748, ptr noundef @.str, ptr noundef @__func__.write_buf, ptr noundef @.str.92, i64 noundef %23, ptr noundef %26)
  br label %27

27:                                               ; preds = %21
  store i32 -1, ptr %4, align 4
  br label %44

28:                                               ; preds = %3
  %29 = load i64, ptr %8, align 8
  %30 = load i64, ptr %7, align 8
  %31 = icmp ne i64 %29, %30
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %5, align 8
  %40 = load i64, ptr %7, align 8
  %41 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %39, i32 noundef 752, ptr noundef @.str, ptr noundef @__func__.write_buf, ptr noundef @.str.93, i64 noundef %40, i64 noundef %41)
  br label %42

42:                                               ; preds = %38
  store i32 -1, ptr %4, align 4
  br label %44

43:                                               ; preds = %28
  store i32 0, ptr %4, align 4
  br label %44

44:                                               ; preds = %43, %42, %27
  %45 = load i32, ptr %4, align 4
  ret i32 %45
}

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

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @cond_broadcast(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %6 = load ptr, ptr %5, align 8
  %7 = call i32 @pthread_cond_broadcast(ptr noundef %6) #10
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %16, i32 noundef 126, ptr noundef @.str, ptr noundef @__func__.cond_broadcast, ptr noundef @.str.94)
  store i1 false, ptr %3, align 1
  br label %19

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %2
  store i1 true, ptr %3, align 1
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i1, ptr %3, align 1
  ret i1 %20
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_compresses(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  store ptr null, ptr %8, align 8
  %19 = load i64, ptr %7, align 8
  store i64 %19, ptr %10, align 8
  %20 = load i64, ptr %7, align 8
  store i64 %20, ptr %11, align 8
  store ptr null, ptr %13, align 8
  %21 = load ptr, ptr %6, align 8
  store ptr %21, ptr %14, align 8
  %22 = load i64, ptr %10, align 8
  %23 = icmp ugt i64 %22, 52428800
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 10485760, i32 2560
  %26 = sext i32 %25 to i64
  store i64 %26, ptr %15, align 8
  store i32 0, ptr %16, align 4
  store i32 0, ptr %17, align 4
  store i64 4294967295, ptr %18, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 26
  %29 = load i64, ptr %28, align 8
  %30 = and i64 %29, 1048576
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %3
  store i32 1, ptr %4, align 4
  br label %153

33:                                               ; preds = %3
  %34 = call noalias ptr @malloc(i64 noundef 131072) #13
  store ptr %34, ptr %8, align 8
  %35 = load ptr, ptr %8, align 8
  %36 = icmp eq ptr %35, null
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %44, i32 noundef 1867, ptr noundef @.str, ptr noundef @__func__.lzo_compresses, ptr noundef @.str.77)
  store i32 0, ptr %4, align 4
  br label %153

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %33
  %47 = load i64, ptr %10, align 8
  %48 = load i64, ptr %15, align 8
  %49 = icmp ult i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, ptr %10, align 8
  br label %54

52:                                               ; preds = %46
  %53 = load i64, ptr %15, align 8
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi i64 [ %51, %50 ], [ %53, %52 ]
  store i64 %55, ptr %9, align 8
  store i64 11141187, ptr %12, align 8
  %56 = load i64, ptr %12, align 8
  %57 = call noalias ptr @malloc(i64 noundef %56) #13
  store ptr %57, ptr %13, align 8
  %58 = load ptr, ptr %13, align 8
  %59 = icmp ne ptr %58, null
  %60 = xor i1 %59, true
  %61 = xor i1 %60, true
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = sext i32 %63 to i64
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %68) #10
  store ptr null, ptr %8, align 8
  br label %69

69:                                               ; preds = %67
  br label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %71, i32 noundef 1875, ptr noundef @.str, ptr noundef @__func__.lzo_compresses, ptr noundef @.str.78)
  store i32 0, ptr %4, align 4
  br label %153

72:                                               ; No predecessors!
  br label %73

73:                                               ; preds = %72, %54
  br label %74

74:                                               ; preds = %120, %73
  %75 = load i64, ptr %10, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %74
  %78 = load i32, ptr %17, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, ptr %17, align 4
  %80 = load ptr, ptr %14, align 8
  %81 = load i64, ptr %9, align 8
  %82 = load ptr, ptr %13, align 8
  %83 = load ptr, ptr %8, align 8
  %84 = call i32 @lzo1x_1_compress(ptr noundef %80, i64 noundef %81, ptr noundef %82, ptr noundef %12, ptr noundef %83)
  %85 = load i64, ptr %12, align 8
  %86 = load i64, ptr %18, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %77
  %89 = load i64, ptr %12, align 8
  store i64 %89, ptr %18, align 8
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i64, ptr %12, align 8
  %92 = load i64, ptr %9, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  store i32 1, ptr %16, align 4
  br label %121

95:                                               ; preds = %90
  %96 = load i64, ptr %9, align 8
  %97 = load i64, ptr %10, align 8
  %98 = sub i64 %97, %96
  store i64 %98, ptr %10, align 8
  %99 = load i64, ptr %10, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %120

101:                                              ; preds = %95
  %102 = load i64, ptr %9, align 8
  %103 = load ptr, ptr %14, align 8
  %104 = getelementptr inbounds i8, ptr %103, i64 %102
  store ptr %104, ptr %14, align 8
  %105 = load i64, ptr %15, align 8
  %106 = icmp ult i64 %105, 10485760
  br i1 %106, label %107, label %110

107:                                              ; preds = %101
  %108 = load i64, ptr %15, align 8
  %109 = shl i64 %108, 1
  store i64 %109, ptr %15, align 8
  br label %110

110:                                              ; preds = %107, %101
  %111 = load i64, ptr %10, align 8
  %112 = load i64, ptr %15, align 8
  %113 = icmp ult i64 %111, %112
  br i1 %113, label %114, label %116

114:                                              ; preds = %110
  %115 = load i64, ptr %10, align 8
  br label %118

116:                                              ; preds = %110
  %117 = load i64, ptr %15, align 8
  br label %118

118:                                              ; preds = %116, %114
  %119 = phi i64 [ %115, %114 ], [ %117, %116 ]
  store i64 %119, ptr %9, align 8
  br label %120

120:                                              ; preds = %118, %95
  br label %74, !llvm.loop !23

121:                                              ; preds = %94, %74
  br label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %5, align 8
  %124 = getelementptr inbounds %struct.rzip_control, ptr %123, i32 0, i32 26
  %125 = load i64, ptr %124, align 8
  %126 = and i64 %125, 2048
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %144

128:                                              ; preds = %122
  br label %129

129:                                              ; preds = %128
  %130 = load ptr, ptr %5, align 8
  %131 = load i32, ptr %16, align 4
  %132 = icmp eq i32 %131, 0
  %133 = zext i1 %132 to i64
  %134 = select i1 %132, ptr @.str.80, ptr @.str.81
  %135 = load i64, ptr %11, align 8
  %136 = load i64, ptr %18, align 8
  %137 = uitofp i64 %136 to double
  %138 = load i64, ptr %9, align 8
  %139 = uitofp i64 %138 to double
  %140 = fdiv double %137, %139
  %141 = fmul double 1.000000e+02, %140
  %142 = load i32, ptr %17, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %130, i32 noundef 4, i32 noundef 1902, ptr noundef @.str, ptr noundef @__func__.lzo_compresses, ptr noundef @.str.79, ptr noundef %134, i64 noundef %135, double noundef %141, i32 noundef %142)
  br label %143

143:                                              ; preds = %129
  br label %144

144:                                              ; preds = %143, %122
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %147) #10
  store ptr null, ptr %8, align 8
  br label %148

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  %150 = load ptr, ptr %13, align 8
  call void @free(ptr noundef %150) #10
  store ptr null, ptr %13, align 8
  br label %151

151:                                              ; preds = %149
  %152 = load i32, ptr %16, align 4
  store i32 %152, ptr %4, align 4
  br label %153

153:                                              ; preds = %151, %70, %43, %32
  %154 = load i32, ptr %4, align 4
  ret i32 %154
}

declare i64 @round_up_page(ptr noundef, i64 noundef) #2

declare i32 @LzmaCompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @lzo1x_1_compress(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BZ2_bzBuffToBuffCompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @compress2(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef) #2

declare void @zpaq_compress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i64 noundef) #2

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_seekto(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  %10 = load ptr, ptr %7, align 8
  %11 = getelementptr inbounds %struct.stream_info, ptr %10, i32 0, i32 2
  %12 = load i32, ptr %11, align 4
  %13 = load i64, ptr %8, align 8
  %14 = call i64 @lseek64(i32 noundef %12, i64 noundef %13, i32 noundef 0) #10
  %15 = load i64, ptr %8, align 8
  %16 = icmp ne i64 %14, %15
  %17 = xor i1 %16, true
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22
  %24 = load ptr, ptr %6, align 8
  %25 = load i64, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %24, i32 noundef 812, ptr noundef @.str, ptr noundef @__func__.fd_seekto, ptr noundef @.str.91, i64 noundef %25)
  br label %26

26:                                               ; preds = %23
  store i32 -1, ptr %5, align 4
  br label %28

27:                                               ; preds = %4
  store i32 0, ptr %5, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, ptr %5, align 4
  ret i32 %29
}

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @ucompthread(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %10 = load ptr, ptr %3, align 8
  store ptr %10, ptr %4, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = getelementptr inbounds %struct.stream_thread_struct, ptr %11, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %4, align 8
  %15 = getelementptr inbounds %struct.stream_thread_struct, ptr %14, i32 0, i32 0
  %16 = load i32, ptr %15, align 8
  %17 = sext i32 %16 to i64
  store i64 %17, ptr %6, align 8
  store i32 0, ptr %8, align 4
  store i32 0, ptr %9, align 4
  br label %18

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8
  call void @free(ptr noundef %19) #10
  store ptr null, ptr %3, align 8
  br label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr @ucthread, align 8
  %22 = load i64, ptr %6, align 8
  %23 = getelementptr inbounds %struct.uncomp_thread, ptr %21, i64 %22
  store ptr %23, ptr %7, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 31
  %26 = load i8, ptr %25, align 4
  %27 = sext i8 %26 to i32
  %28 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %27) #10
  %29 = icmp eq i32 %28, -1
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %20
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %37, i32 noundef 1516, ptr noundef @.str, ptr noundef @__func__.ucompthread, ptr noundef @.str.47)
  br label %38

38:                                               ; preds = %36
  br label %39

39:                                               ; preds = %38, %20
  br label %40

40:                                               ; preds = %119, %39
  %41 = load ptr, ptr %7, align 8
  %42 = getelementptr inbounds %struct.uncomp_thread, ptr %41, i32 0, i32 4
  %43 = load i8, ptr %42, align 8
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %77

46:                                               ; preds = %40
  %47 = load ptr, ptr %7, align 8
  %48 = getelementptr inbounds %struct.uncomp_thread, ptr %47, i32 0, i32 4
  %49 = load i8, ptr %48, align 8
  %50 = zext i8 %49 to i32
  switch i32 %50, label %72 [
    i32 6, label %51
    i32 5, label %55
    i32 4, label %59
    i32 7, label %63
    i32 8, label %67
  ]

51:                                               ; preds = %46
  %52 = load ptr, ptr %5, align 8
  %53 = load ptr, ptr %7, align 8
  %54 = call i32 @lzma_decompress_buf(ptr noundef %52, ptr noundef %53)
  store i32 %54, ptr %9, align 4
  br label %76

55:                                               ; preds = %46
  %56 = load ptr, ptr %5, align 8
  %57 = load ptr, ptr %7, align 8
  %58 = call i32 @lzo_decompress_buf(ptr noundef %56, ptr noundef %57)
  store i32 %58, ptr %9, align 4
  br label %76

59:                                               ; preds = %46
  %60 = load ptr, ptr %5, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = call i32 @bzip2_decompress_buf(ptr noundef %60, ptr noundef %61)
  store i32 %62, ptr %9, align 4
  br label %76

63:                                               ; preds = %46
  %64 = load ptr, ptr %5, align 8
  %65 = load ptr, ptr %7, align 8
  %66 = call i32 @gzip_decompress_buf(ptr noundef %64, ptr noundef %65)
  store i32 %66, ptr %9, align 4
  br label %76

67:                                               ; preds = %46
  %68 = load ptr, ptr %5, align 8
  %69 = load ptr, ptr %7, align 8
  %70 = load i64, ptr %6, align 8
  %71 = call i32 @zpaq_decompress_buf(ptr noundef %68, ptr noundef %69, i64 noundef %70)
  store i32 %71, ptr %9, align 4
  br label %76

72:                                               ; preds = %46
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %74, i32 noundef 1537, ptr noundef @.str, ptr noundef @__func__.ucompthread, ptr noundef @.str.103)
  store ptr null, ptr %2, align 8
  br label %142

75:                                               ; No predecessors!
  br label %76

76:                                               ; preds = %75, %67, %63, %59, %55, %51
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32, ptr %9, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = zext i1 %81 to i32
  %83 = sext i32 %82 to i64
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %122

85:                                               ; preds = %77
  %86 = load i32, ptr %8, align 4
  %87 = icmp ne i32 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = sext i32 %90 to i64
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %97

93:                                               ; preds = %85
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %95, i32 noundef 1546, ptr noundef @.str, ptr noundef @__func__.ucompthread, ptr noundef @.str.104)
  store ptr null, ptr %2, align 8
  br label %142

96:                                               ; No predecessors!
  br label %97

97:                                               ; preds = %96, %85
  br label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %5, align 8
  %100 = getelementptr inbounds %struct.rzip_control, ptr %99, i32 0, i32 26
  %101 = load i64, ptr %100, align 8
  %102 = and i64 %101, 2048
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %98
  br label %105

105:                                              ; preds = %104
  %106 = load ptr, ptr %5, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %106, i32 noundef 4, i32 noundef 1547, ptr noundef @.str, ptr noundef @__func__.ucompthread, ptr noundef @.str.105)
  br label %107

107:                                              ; preds = %105
  br label %108

108:                                              ; preds = %107, %98
  br label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %5, align 8
  %111 = call zeroext i1 @lock_mutex(ptr noundef %110, ptr noundef @output_lock)
  br label %112

112:                                              ; preds = %116, %109
  %113 = load i64, ptr @output_thread, align 8
  %114 = load i64, ptr %6, align 8
  %115 = icmp ne i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %112
  %117 = load ptr, ptr %5, align 8
  %118 = call zeroext i1 @cond_wait(ptr noundef %117, ptr noundef @output_cond, ptr noundef @output_lock)
  br label %112, !llvm.loop !24

119:                                              ; preds = %112
  %120 = load ptr, ptr %5, align 8
  %121 = call zeroext i1 @unlock_mutex(ptr noundef %120, ptr noundef @output_lock)
  store i32 1, ptr %8, align 4
  br label %40

122:                                              ; preds = %77
  br label %123

123:                                              ; preds = %122
  %124 = load ptr, ptr %5, align 8
  %125 = getelementptr inbounds %struct.rzip_control, ptr %124, i32 0, i32 26
  %126 = load i64, ptr %125, align 8
  %127 = and i64 %126, 2048
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %123
  br label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %5, align 8
  %132 = load i64, ptr %6, align 8
  %133 = load ptr, ptr %7, align 8
  %134 = getelementptr inbounds %struct.uncomp_thread, ptr %133, i32 0, i32 1
  %135 = load i64, ptr %134, align 8
  %136 = load ptr, ptr %7, align 8
  %137 = getelementptr inbounds %struct.uncomp_thread, ptr %136, i32 0, i32 6
  %138 = load i32, ptr %137, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %131, i32 noundef 4, i32 noundef 1559, ptr noundef @.str, ptr noundef @__func__.ucompthread, ptr noundef @.str.106, i64 noundef %132, i64 noundef %135, i32 noundef %138)
  br label %139

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140
  store ptr null, ptr %2, align 8
  br label %142

142:                                              ; preds = %141, %94, %73
  %143 = load ptr, ptr %2, align 8
  ret ptr %143
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzma_decompress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %10 = load ptr, ptr %4, align 8
  %11 = getelementptr inbounds %struct.uncomp_thread, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.uncomp_thread, ptr %13, i32 0, i32 2
  %15 = load i64, ptr %14, align 8
  store i64 %15, ptr %9, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = getelementptr inbounds %struct.uncomp_thread, ptr %16, i32 0, i32 0
  %18 = load ptr, ptr %17, align 8
  store ptr %18, ptr %8, align 8
  %19 = load ptr, ptr %3, align 8
  %20 = load i64, ptr %5, align 8
  %21 = call i64 @round_up_page(ptr noundef %19, i64 noundef %20)
  %22 = call noalias ptr @malloc(i64 noundef %21) #13
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.uncomp_thread, ptr %23, i32 0, i32 0
  store ptr %22, ptr %24, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.uncomp_thread, ptr %25, i32 0, i32 0
  %27 = load ptr, ptr %26, align 8
  %28 = icmp ne ptr %27, null
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %2
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %3, align 8
  %38 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %37, i32 noundef 548, ptr noundef @.str, ptr noundef @__func__.lzma_decompress_buf, ptr noundef @.str.107, i64 noundef %38)
  br label %39

39:                                               ; preds = %36
  store i32 -1, ptr %6, align 4
  br label %94

40:                                               ; preds = %2
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.uncomp_thread, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 24
  %47 = getelementptr inbounds [5 x i8], ptr %46, i64 0, i64 0
  %48 = call i32 @LzmaUncompress(ptr noundef %43, ptr noundef %5, ptr noundef %44, ptr noundef %9, ptr noundef %47, i64 noundef 5)
  store i32 %48, ptr %7, align 4
  %49 = load i32, ptr %7, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %40
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %3, align 8
  %59 = load i32, ptr %7, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %58, i32 noundef 557, ptr noundef @.str, ptr noundef @__func__.lzma_decompress_buf, ptr noundef @.str.108, i32 noundef %59)
  br label %60

60:                                               ; preds = %57
  br label %61

61:                                               ; preds = %60
  %62 = load ptr, ptr %4, align 8
  %63 = getelementptr inbounds %struct.uncomp_thread, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8
  call void @free(ptr noundef %64) #10
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.uncomp_thread, ptr %65, i32 0, i32 0
  store ptr null, ptr %66, align 8
  br label %67

67:                                               ; preds = %61
  %68 = load ptr, ptr %8, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.uncomp_thread, ptr %69, i32 0, i32 0
  store ptr %68, ptr %70, align 8
  store i32 -1, ptr %6, align 4
  br label %94

71:                                               ; preds = %40
  %72 = load i64, ptr %5, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.uncomp_thread, ptr %73, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = icmp ne i64 %72, %75
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %3, align 8
  %85 = load i64, ptr %5, align 8
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.uncomp_thread, ptr %86, i32 0, i32 1
  %88 = load i64, ptr %87, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %84, i32 noundef 565, ptr noundef @.str, ptr noundef @__func__.lzma_decompress_buf, ptr noundef @.str.109, i64 noundef %85, i64 noundef %88)
  br label %89

89:                                               ; preds = %83
  store i32 -1, ptr %6, align 4
  br label %90

90:                                               ; preds = %89, %71
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %92) #10
  store ptr null, ptr %8, align 8
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %67, %39
  %95 = load i32, ptr %6, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load ptr, ptr %8, align 8
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds %struct.uncomp_thread, ptr %99, i32 0, i32 0
  store ptr %98, ptr %100, align 8
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, ptr %6, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lzo_decompress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.uncomp_thread, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i64, ptr %5, align 8
  %17 = call i64 @round_up_page(ptr noundef %15, i64 noundef %16)
  %18 = call noalias ptr @malloc(i64 noundef %17) #13
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.uncomp_thread, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.uncomp_thread, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 8
  %34 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %33, i32 noundef 585, ptr noundef @.str, ptr noundef @__func__.lzo_decompress_buf, ptr noundef @.str.110, i64 noundef %34)
  br label %35

35:                                               ; preds = %32
  store i32 -1, ptr %6, align 4
  br label %90

36:                                               ; preds = %2
  %37 = load ptr, ptr %8, align 8
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.uncomp_thread, ptr %38, i32 0, i32 2
  %40 = load i64, ptr %39, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.uncomp_thread, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = call i32 @lzo1x_decompress(ptr noundef %37, i64 noundef %40, ptr noundef %43, ptr noundef %5, ptr noundef null)
  store i32 %44, ptr %7, align 4
  %45 = load i32, ptr %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %3, align 8
  %55 = load i32, ptr %7, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %54, i32 noundef 592, ptr noundef @.str, ptr noundef @__func__.lzo_decompress_buf, ptr noundef @.str.111, i32 noundef %55)
  br label %56

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.uncomp_thread, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  call void @free(ptr noundef %60) #10
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.uncomp_thread, ptr %61, i32 0, i32 0
  store ptr null, ptr %62, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %8, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.uncomp_thread, ptr %65, i32 0, i32 0
  store ptr %64, ptr %66, align 8
  store i32 -1, ptr %6, align 4
  br label %90

67:                                               ; preds = %36
  %68 = load i64, ptr %5, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.uncomp_thread, ptr %69, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = icmp ne i64 %68, %71
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %3, align 8
  %81 = load i64, ptr %5, align 8
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.uncomp_thread, ptr %82, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %80, i32 noundef 600, ptr noundef @.str, ptr noundef @__func__.lzo_decompress_buf, ptr noundef @.str.112, i64 noundef %81, i64 noundef %84)
  br label %85

85:                                               ; preds = %79
  store i32 -1, ptr %6, align 4
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %88) #10
  store ptr null, ptr %8, align 8
  br label %89

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %63, %35
  %91 = load i32, ptr %6, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load ptr, ptr %8, align 8
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.uncomp_thread, ptr %95, i32 0, i32 0
  store ptr %94, ptr %96, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, ptr %6, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bzip2_decompress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.uncomp_thread, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, ptr %5, align 4
  store i32 0, ptr %6, align 4
  %13 = load ptr, ptr %4, align 8
  %14 = getelementptr inbounds %struct.uncomp_thread, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %8, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = load i32, ptr %5, align 4
  %18 = zext i32 %17 to i64
  %19 = call i64 @round_up_page(ptr noundef %16, i64 noundef %18)
  %20 = call noalias ptr @malloc(i64 noundef %19) #13
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.uncomp_thread, ptr %21, i32 0, i32 0
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.uncomp_thread, ptr %23, i32 0, i32 0
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %2
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %3, align 8
  %36 = load i32, ptr %5, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %35, i32 noundef 477, ptr noundef @.str, ptr noundef @__func__.bzip2_decompress_buf, ptr noundef @.str.113, i32 noundef %36)
  br label %37

37:                                               ; preds = %34
  store i32 -1, ptr %6, align 4
  br label %94

38:                                               ; preds = %2
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.uncomp_thread, ptr %39, i32 0, i32 0
  %41 = load ptr, ptr %40, align 8
  %42 = load ptr, ptr %8, align 8
  %43 = load ptr, ptr %4, align 8
  %44 = getelementptr inbounds %struct.uncomp_thread, ptr %43, i32 0, i32 2
  %45 = load i64, ptr %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @BZ2_bzBuffToBuffDecompress(ptr noundef %41, ptr noundef %5, ptr noundef %42, i32 noundef %46, i32 noundef 0, i32 noundef 0)
  store i32 %47, ptr %7, align 4
  %48 = load i32, ptr %7, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  %51 = xor i1 %50, true
  %52 = zext i1 %51 to i32
  %53 = sext i32 %52 to i64
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %38
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr %3, align 8
  %58 = load i32, ptr %7, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %57, i32 noundef 484, ptr noundef @.str, ptr noundef @__func__.bzip2_decompress_buf, ptr noundef @.str.114, i32 noundef %58)
  br label %59

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.uncomp_thread, ptr %61, i32 0, i32 0
  %63 = load ptr, ptr %62, align 8
  call void @free(ptr noundef %63) #10
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.uncomp_thread, ptr %64, i32 0, i32 0
  store ptr null, ptr %65, align 8
  br label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %8, align 8
  %68 = load ptr, ptr %4, align 8
  %69 = getelementptr inbounds %struct.uncomp_thread, ptr %68, i32 0, i32 0
  store ptr %67, ptr %69, align 8
  store i32 -1, ptr %6, align 4
  br label %94

70:                                               ; preds = %38
  %71 = load i32, ptr %5, align 4
  %72 = zext i32 %71 to i64
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.uncomp_thread, ptr %73, i32 0, i32 1
  %75 = load i64, ptr %74, align 8
  %76 = icmp ne i64 %72, %75
  %77 = xor i1 %76, true
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %70
  br label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr %3, align 8
  %85 = load i32, ptr %5, align 4
  %86 = load ptr, ptr %4, align 8
  %87 = getelementptr inbounds %struct.uncomp_thread, ptr %86, i32 0, i32 1
  %88 = load i64, ptr %87, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %84, i32 noundef 492, ptr noundef @.str, ptr noundef @__func__.bzip2_decompress_buf, ptr noundef @.str.115, i32 noundef %85, i64 noundef %88)
  br label %89

89:                                               ; preds = %83
  store i32 -1, ptr %6, align 4
  br label %90

90:                                               ; preds = %89, %70
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %92) #10
  store ptr null, ptr %8, align 8
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93, %66, %37
  %95 = load i32, ptr %6, align 4
  %96 = icmp eq i32 %95, -1
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load ptr, ptr %8, align 8
  %99 = load ptr, ptr %4, align 8
  %100 = getelementptr inbounds %struct.uncomp_thread, ptr %99, i32 0, i32 0
  store ptr %98, ptr %100, align 8
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, ptr %6, align 4
  ret i32 %102
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gzip_decompress_buf(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr %1, ptr %4, align 8
  %9 = load ptr, ptr %4, align 8
  %10 = getelementptr inbounds %struct.uncomp_thread, ptr %9, i32 0, i32 1
  %11 = load i64, ptr %10, align 8
  store i64 %11, ptr %5, align 8
  store i32 0, ptr %6, align 4
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.uncomp_thread, ptr %12, i32 0, i32 0
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %8, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load i64, ptr %5, align 8
  %17 = call i64 @round_up_page(ptr noundef %15, i64 noundef %16)
  %18 = call noalias ptr @malloc(i64 noundef %17) #13
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.uncomp_thread, ptr %19, i32 0, i32 0
  store ptr %18, ptr %20, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.uncomp_thread, ptr %21, i32 0, i32 0
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  %25 = xor i1 %24, true
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %2
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %3, align 8
  %34 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %33, i32 noundef 512, ptr noundef @.str, ptr noundef @__func__.gzip_decompress_buf, ptr noundef @.str.116, i64 noundef %34)
  br label %35

35:                                               ; preds = %32
  store i32 -1, ptr %6, align 4
  br label %90

36:                                               ; preds = %2
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.uncomp_thread, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = load ptr, ptr %8, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.uncomp_thread, ptr %41, i32 0, i32 2
  %43 = load i64, ptr %42, align 8
  %44 = call i32 @uncompress(ptr noundef %39, ptr noundef %5, ptr noundef %40, i64 noundef %43)
  store i32 %44, ptr %7, align 4
  %45 = load i32, ptr %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = zext i1 %48 to i32
  %50 = sext i32 %49 to i64
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %67

52:                                               ; preds = %36
  br label %53

53:                                               ; preds = %52
  %54 = load ptr, ptr %3, align 8
  %55 = load i32, ptr %7, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %54, i32 noundef 519, ptr noundef @.str, ptr noundef @__func__.gzip_decompress_buf, ptr noundef @.str.117, i32 noundef %55)
  br label %56

56:                                               ; preds = %53
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.uncomp_thread, ptr %58, i32 0, i32 0
  %60 = load ptr, ptr %59, align 8
  call void @free(ptr noundef %60) #10
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.uncomp_thread, ptr %61, i32 0, i32 0
  store ptr null, ptr %62, align 8
  br label %63

63:                                               ; preds = %57
  %64 = load ptr, ptr %8, align 8
  %65 = load ptr, ptr %4, align 8
  %66 = getelementptr inbounds %struct.uncomp_thread, ptr %65, i32 0, i32 0
  store ptr %64, ptr %66, align 8
  store i32 -1, ptr %6, align 4
  br label %90

67:                                               ; preds = %36
  %68 = load i64, ptr %5, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.uncomp_thread, ptr %69, i32 0, i32 1
  %71 = load i64, ptr %70, align 8
  %72 = icmp ne i64 %68, %71
  %73 = xor i1 %72, true
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = sext i32 %75 to i64
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %67
  br label %79

79:                                               ; preds = %78
  %80 = load ptr, ptr %3, align 8
  %81 = load i64, ptr %5, align 8
  %82 = load ptr, ptr %4, align 8
  %83 = getelementptr inbounds %struct.uncomp_thread, ptr %82, i32 0, i32 1
  %84 = load i64, ptr %83, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %80, i32 noundef 527, ptr noundef @.str, ptr noundef @__func__.gzip_decompress_buf, ptr noundef @.str.118, i64 noundef %81, i64 noundef %84)
  br label %85

85:                                               ; preds = %79
  store i32 -1, ptr %6, align 4
  br label %86

86:                                               ; preds = %85, %67
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %88) #10
  store ptr null, ptr %8, align 8
  br label %89

89:                                               ; preds = %87
  br label %90

90:                                               ; preds = %89, %63, %35
  %91 = load i32, ptr %6, align 4
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load ptr, ptr %8, align 8
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.uncomp_thread, ptr %95, i32 0, i32 0
  store ptr %94, ptr %96, align 8
  br label %97

97:                                               ; preds = %93, %90
  %98 = load i32, ptr %6, align 4
  ret i32 %98
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zpaq_decompress_buf(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = getelementptr inbounds %struct.uncomp_thread, ptr %10, i32 0, i32 1
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %7, align 8
  store i32 0, ptr %9, align 4
  %13 = load ptr, ptr %5, align 8
  %14 = getelementptr inbounds %struct.uncomp_thread, ptr %13, i32 0, i32 0
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %8, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = load i64, ptr %7, align 8
  %18 = call i64 @round_up_page(ptr noundef %16, i64 noundef %17)
  %19 = call noalias ptr @malloc(i64 noundef %18) #13
  %20 = load ptr, ptr %5, align 8
  %21 = getelementptr inbounds %struct.uncomp_thread, ptr %20, i32 0, i32 0
  store ptr %19, ptr %21, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.uncomp_thread, ptr %22, i32 0, i32 0
  %24 = load ptr, ptr %23, align 8
  %25 = icmp ne ptr %24, null
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %4, align 8
  %35 = load i64, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %34, i32 noundef 447, ptr noundef @.str, ptr noundef @__func__.zpaq_decompress_buf, ptr noundef @.str.116, i64 noundef %35)
  br label %36

36:                                               ; preds = %33
  store i32 -1, ptr %9, align 4
  br label %79

37:                                               ; preds = %3
  store i64 0, ptr %7, align 8
  %38 = load ptr, ptr %5, align 8
  %39 = getelementptr inbounds %struct.uncomp_thread, ptr %38, i32 0, i32 0
  %40 = load ptr, ptr %39, align 8
  %41 = load ptr, ptr %8, align 8
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.uncomp_thread, ptr %42, i32 0, i32 2
  %44 = load i64, ptr %43, align 8
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 17
  %47 = load ptr, ptr %46, align 8
  %48 = load ptr, ptr %4, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 26
  %50 = load i64, ptr %49, align 8
  %51 = and i64 %50, 1
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = icmp ne i32 %54, 0
  %56 = load i64, ptr %6, align 8
  call void @zpaq_decompress(ptr noundef %40, ptr noundef %7, ptr noundef %41, i64 noundef %44, ptr noundef %47, i1 noundef zeroext %55, i64 noundef %56)
  %57 = load i64, ptr %7, align 8
  %58 = load ptr, ptr %5, align 8
  %59 = getelementptr inbounds %struct.uncomp_thread, ptr %58, i32 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = icmp ne i64 %57, %60
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %75

67:                                               ; preds = %37
  br label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %4, align 8
  %70 = load i64, ptr %7, align 8
  %71 = load ptr, ptr %5, align 8
  %72 = getelementptr inbounds %struct.uncomp_thread, ptr %71, i32 0, i32 1
  %73 = load i64, ptr %72, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %69, i32 noundef 457, ptr noundef @.str, ptr noundef @__func__.zpaq_decompress_buf, ptr noundef @.str.118, i64 noundef %70, i64 noundef %73)
  br label %74

74:                                               ; preds = %68
  store i32 -1, ptr %9, align 4
  br label %75

75:                                               ; preds = %74, %37
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %8, align 8
  call void @free(ptr noundef %77) #10
  store ptr null, ptr %8, align 8
  br label %78

78:                                               ; preds = %76
  br label %79

79:                                               ; preds = %78, %36
  %80 = load i32, ptr %9, align 4
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load ptr, ptr %8, align 8
  %84 = load ptr, ptr %5, align 8
  %85 = getelementptr inbounds %struct.uncomp_thread, ptr %84, i32 0, i32 0
  store ptr %83, ptr %85, align 8
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, ptr %9, align 4
  ret i32 %87
}

declare i32 @LzmaUncompress(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @lzo1x_decompress(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @BZ2_bzBuffToBuffDecompress(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) #2

declare i32 @uncompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef) #2

declare void @zpaq_decompress(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind allocsize(0,1) }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(1) }

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
