; ModuleID = './lrzip.c'
source_filename = "./lrzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.statvfs = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.utimbuf = type { i64, i64 }

@.str = private unnamed_addr constant [14 x i8] c"/proc/meminfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"./lrzip.c\00", align 1
@__func__.get_ram = private unnamed_addr constant [8 x i8] c"get_ram\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"fopen\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"MemTotal: %ld kB\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"Failed to fgets in get_ram\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"fclose\00", align 1
@__const.write_magic.magic = private unnamed_addr constant <{ i8, i8, i8, i8, i8, i8, [18 x i8] }> <{ i8 76, i8 82, i8 90, i8 73, i8 0, i8 6, [18 x i8] zeroinitializer }>, align 16
@__func__.write_magic = private unnamed_addr constant [12 x i8] c"write_magic\00", align 1
@.str.7 = private unnamed_addr constant [45 x i8] c"Failed to seek to BOF to write Magic Header\0A\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"Failed to write magic header\0A\00", align 1
@__func__.read_magic = private unnamed_addr constant [11 x i8] c"read_magic\00", align 1
@.str.9 = private unnamed_addr constant [29 x i8] c"Failed to read magic header\0A\00", align 1
@__func__.open_tmpoutfile = private unnamed_addr constant [16 x i8] c"open_tmpoutfile\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"Outputting to stdout.\0A\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"Failed to allocate outfile name\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"lrzipout.XXXXXX\00", align 1
@.str.13 = private unnamed_addr constant [102 x i8] c"WARNING: Failed to create out tmpfile: %s, will fail if cannot perform %scompression entirely in ram\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"de\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.write_fdout = private unnamed_addr constant [12 x i8] c"write_fdout\00", align 1
@.str.16 = private unnamed_addr constant [42 x i8] c"Failed to write to fd_out in write_fdout\0A\00", align 1
@__func__.flush_tmpoutbuf = private unnamed_addr constant [16 x i8] c"flush_tmpoutbuf\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Dumping buffer to physical file.\0A\00", align 1
@__func__.dump_tmpoutfile = private unnamed_addr constant [16 x i8] c"dump_tmpoutfile\00", align 1
@.str.18 = private unnamed_addr constant [59 x i8] c"Failed: No temporary outfile created, unable to do in ram\0A\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Failed to fdopen out tmpfile\0A\00", align 1
@.str.20 = private unnamed_addr constant [45 x i8] c"Dumping temporary file to control->outFILE.\0A\00", align 1
@.str.21 = private unnamed_addr constant [47 x i8] c"Failed to ftruncate fd_out in dump_tmpoutfile\0A\00", align 1
@__func__.write_fdin = private unnamed_addr constant [11 x i8] c"write_fdin\00", align 1
@.str.22 = private unnamed_addr constant [40 x i8] c"Failed to write to fd_in in write_fdin\0A\00", align 1
@__func__.open_tmpinfile = private unnamed_addr constant [15 x i8] c"open_tmpinfile\00", align 1
@.str.23 = private unnamed_addr constant [32 x i8] c"Failed to allocate infile name\0A\00", align 1
@.str.24 = private unnamed_addr constant [15 x i8] c"lrzipin.XXXXXX\00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"/tmp/lrzipin.XXXXXX\00", align 1
@.str.26 = private unnamed_addr constant [101 x i8] c"WARNING: Failed to create in tmpfile: %s, will fail if cannot perform %scompression entirely in ram\0A\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Failed to unlink tmpfile: %s\0A\00", align 1
@.str.28 = private unnamed_addr constant [21 x i8] c"Copying from stdin.\0A\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"w+\00", align 1
@__func__.read_tmpinfile = private unnamed_addr constant [15 x i8] c"read_tmpinfile\00", align 1
@.str.30 = private unnamed_addr constant [29 x i8] c"Failed to fdopen in tmpfile\0A\00", align 1
@__func__.clear_tmpinfile = private unnamed_addr constant [16 x i8] c"clear_tmpinfile\00", align 1
@.str.31 = private unnamed_addr constant [45 x i8] c"Failed to lseek on fd_in in clear_tmpinfile\0A\00", align 1
@.str.32 = private unnamed_addr constant [45 x i8] c"Failed to truncate fd_in in clear_tmpinfile\0A\00", align 1
@__func__.decompress_file = private unnamed_addr constant [16 x i8] c"decompress_file\00", align 1
@.str.33 = private unnamed_addr constant [24 x i8] c"Output filename is: %s\0A\00", align 1
@.str.34 = private unnamed_addr constant [45 x i8] c"Cannot decompress encrypted file from STDIN\0A\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Failed to open %s\0A\00", align 1
@.str.36 = private unnamed_addr constant [39 x i8] c"Failed to unlink an existing file: %s\0A\00", align 1
@.str.37 = private unnamed_addr constant [21 x i8] c"Failed to create %s\0A\00", align 1
@.str.38 = private unnamed_addr constant [32 x i8] c"Failed to open history file %s\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"Failed to fstatvfs in decompress_file\0A\00", align 1
@.str.40 = private unnamed_addr constant [100 x i8] c"Warning, inadequate free space detected, but attempting to decompress due to -f option being used.\0A\00", align 1
@.str.41 = private unnamed_addr constant [63 x i8] c"Inadequate free space to decompress file, use -f to override.\0A\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"Not performing MD5 hash check\0A\00", align 1
@.str.43 = private unnamed_addr constant [5 x i8] c"MD5 \00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"CRC32 \00", align 1
@.str.45 = private unnamed_addr constant [35 x i8] c"being used for integrity testing.\0A\00", align 1
@.str.46 = private unnamed_addr constant [18 x i8] c"Decompressing...\0A\00", align 1
@.str.47 = private unnamed_addr constant [2 x i8] c"\0D\00", align 1
@.str.48 = private unnamed_addr constant [25 x i8] c"Output filename is: %s: \00", align 1
@.str.49 = private unnamed_addr constant [51 x i8] c"[OK] - %lld bytes                                \0A\00", align 1
@.str.50 = private unnamed_addr constant [51 x i8] c"[OK]                                             \0A\00", align 1
@.str.51 = private unnamed_addr constant [23 x i8] c"Failed to close files\0A\00", align 1
@.str.52 = private unnamed_addr constant [21 x i8] c"Failed to unlink %s\0A\00", align 1
@__func__.get_header_info = private unnamed_addr constant [16 x i8] c"get_header_info\00", align 1
@.str.53 = private unnamed_addr constant [35 x i8] c"Failed to read in get_header_info\0A\00", align 1
@.str.54 = private unnamed_addr constant [34 x i8] c"Failed to read in get_header_info\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"Failed to read_i64 in get_header_info\00", align 1
@__func__.get_fileinfo = private unnamed_addr constant [13 x i8] c"get_fileinfo\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"bad magic file descriptor!?\0A\00", align 1
@.str.57 = private unnamed_addr constant [59 x i8] c"Encrypted lrzip archive. No further information available\0A\00", align 1
@.str.58 = private unnamed_addr constant [43 x i8] c"Failed to read chunk_byte in get_fileinfo\0A\00", align 1
@.str.59 = private unnamed_addr constant [36 x i8] c"Failed to read eof in get_fileinfo\0A\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"Failed to read chunk_size in get_fileinfo\0A\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Rzip chunk %d:\0A\00", align 1
@.str.62 = private unnamed_addr constant [22 x i8] c"Chunk byte width: %d\0A\00", align 1
@.str.63 = private unnamed_addr constant [18 x i8] c"Chunk size: %lld\0A\00", align 1
@.str.64 = private unnamed_addr constant [47 x i8] c"Failed to seek to header data in get_fileinfo\0A\00", align 1
@.str.65 = private unnamed_addr constant [12 x i8] c"Stream: %d\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"Offset: %lld\0A\00", align 1
@.str.67 = private unnamed_addr constant [25 x i8] c"Block\09Comp\09Percent\09Size\0A\00", align 1
@.str.68 = private unnamed_addr constant [71 x i8] c"Offset greater than archive size, likely corrupted/truncated archive.\0A\00", align 1
@.str.69 = private unnamed_addr constant [43 x i8] c"Entry negative, likely corrupted archive.\0A\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"%d\09\00", align 1
@.str.71 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"Dunno wtf\00", align 1
@.str.78 = private unnamed_addr constant [20 x i8] c"\09%.1f%%\09%lld / %lld\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"\09Offset: %lld\09Head: %lld\00", align 1
@.str.80 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.81 = private unnamed_addr constant [39 x i8] c"Failed to lseek c_len in get_fileinfo\0A\00", align 1
@.str.82 = private unnamed_addr constant [38 x i8] c"Rzip compression: %.1f%% %lld / %lld\0A\00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"Back end compression: %.1f%% %lld / %lld\0A\00", align 1
@.str.84 = private unnamed_addr constant [41 x i8] c"Overall compression: %.1f%% %lld / %lld\0A\00", align 1
@.str.85 = private unnamed_addr constant [31 x i8] c"%s:\0Alrzip version: %d.%d file\0A\00", align 1
@.str.86 = private unnamed_addr constant [14 x i8] c"Compression: \00", align 1
@.str.87 = private unnamed_addr constant [12 x i8] c"rzip alone\0A\00", align 1
@.str.88 = private unnamed_addr constant [14 x i8] c"rzip + bzip2\0A\00", align 1
@.str.89 = private unnamed_addr constant [12 x i8] c"rzip + lzo\0A\00", align 1
@.str.90 = private unnamed_addr constant [13 x i8] c"rzip + lzma\0A\00", align 1
@.str.91 = private unnamed_addr constant [13 x i8] c"rzip + gzip\0A\00", align 1
@.str.92 = private unnamed_addr constant [13 x i8] c"rzip + zpaq\0A\00", align 1
@.str.93 = private unnamed_addr constant [11 x i8] c"Dunno wtf\0A\00", align 1
@.str.94 = private unnamed_addr constant [30 x i8] c"Decompressed file size: %llu\0A\00", align 1
@.str.95 = private unnamed_addr constant [28 x i8] c"Compressed file size: %llu\0A\00", align 1
@.str.96 = private unnamed_addr constant [26 x i8] c"Compression ratio: %.3Lf\0A\00", align 1
@.str.97 = private unnamed_addr constant [32 x i8] c"MD5 used for integrity testing\0A\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"Failed to seek to md5 data in runzip_fd\0A\00", align 1
@.str.99 = private unnamed_addr constant [38 x i8] c"Failed to read md5 data in runzip_fd\0A\00", align 1
@.str.100 = private unnamed_addr constant [6 x i8] c"MD5: \00", align 1
@.str.101 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.102 = private unnamed_addr constant [34 x i8] c"CRC32 used for integrity testing\0A\00", align 1
@.str.103 = private unnamed_addr constant [39 x i8] c"Failed to close fd_in in get_fileinfo\0A\00", align 1
@__func__.compress_file = private unnamed_addr constant [14 x i8] c"compress_file\00", align 1
@.str.104 = private unnamed_addr constant [40 x i8] c"%s: already has %s suffix. Skipping...\0A\00", align 1
@.str.105 = private unnamed_addr constant [42 x i8] c"Suffix added to %s.\0AFull pathname is: %s\0A\00", align 1
@.str.106 = private unnamed_addr constant [26 x i8] c"Cannot write file header\0A\00", align 1
@.str.107 = private unnamed_addr constant [41 x i8] c"Failed to preserve times on output file\0A\00", align 1
@.str.108 = private unnamed_addr constant [23 x i8] c"Failed to close fd_in\0A\00", align 1
@.str.109 = private unnamed_addr constant [24 x i8] c"Failed to close fd_out\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.110 = private unnamed_addr constant [5 x i8] c".lrz\00", align 1
@__func__.initialise_control = private unnamed_addr constant [19 x i8] c"initialise_control\00", align 1
@.str.111 = private unnamed_addr constant [29 x i8] c"Failed to call time in main\0A\00", align 1
@.str.112 = private unnamed_addr constant [71 x i8] c"Warning your time reads before the year 2011, check your system clock\0A\00", align 1
@.str.113 = private unnamed_addr constant [7 x i8] c"TMPDIR\00", align 1
@.str.114 = private unnamed_addr constant [4 x i8] c"TMP\00", align 1
@.str.115 = private unnamed_addr constant [8 x i8] c"TEMPDIR\00", align 1
@.str.116 = private unnamed_addr constant [5 x i8] c"TEMP\00", align 1
@.str.117 = private unnamed_addr constant [29 x i8] c"Failed to allocate for eptr\0A\00", align 1
@.str.118 = private unnamed_addr constant [3 x i8] c"./\00", align 1
@.str.119 = private unnamed_addr constant [31 x i8] c"Failed to allocate for tmpdir\0A\00", align 1
@__func__.fdout_seekto = private unnamed_addr constant [13 x i8] c"fdout_seekto\00", align 1
@.str.120 = private unnamed_addr constant [59 x i8] c"Trying to seek to %lld outside tmp outbuf in fdout_seekto\0A\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"LRZI\00", align 1
@__func__.get_magic = private unnamed_addr constant [10 x i8] c"get_magic\00", align 1
@.str.122 = private unnamed_addr constant [19 x i8] c"Not an lrzip file\0A\00", align 1
@.str.123 = private unnamed_addr constant [36 x i8] c"Detected lrzip version %d.%d file.\0A\00", align 1
@.str.124 = private unnamed_addr constant [74 x i8] c"Attempting to work with file produced by newer lrzip version %d.%d file.\0A\00", align 1
@.str.125 = private unnamed_addr constant [35 x i8] c"Unknown hash, falling back to CRC\0A\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"Unknown encryption\0A\00", align 1
@.str.127 = private unnamed_addr constant [28 x i8] c"Encryption hash loops %lld\0A\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"Asked to decrypt a non-encrypted archive. Bypassing decryption.\0A\00", align 1
@__func__.fwrite_stdout = private unnamed_addr constant [14 x i8] c"fwrite_stdout\00", align 1
@.str.129 = private unnamed_addr constant [35 x i8] c"Failed to fwrite in fwrite_stdout\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@__func__.read_tmpinmagic = private unnamed_addr constant [16 x i8] c"read_tmpinmagic\00", align 1
@.str.130 = private unnamed_addr constant [60 x i8] c"Reached end of file on STDIN prematurely on v05 magic read\0A\00", align 1
@__func__.open_tmpinbuf = private unnamed_addr constant [14 x i8] c"open_tmpinbuf\00", align 1
@.str.131 = private unnamed_addr constant [45 x i8] c"Failed to malloc tmp_inbuf in open_tmpinbuf\0A\00", align 1
@__func__.preserve_perms = private unnamed_addr constant [15 x i8] c"preserve_perms\00", align 1
@.str.132 = private unnamed_addr constant [28 x i8] c"Failed to fstat input file\0A\00", align 1
@.str.133 = private unnamed_addr constant [42 x i8] c"Warning, unable to set permissions on %s\0A\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"Warning, unable to set owner on %s\0A\00", align 1
@__func__.open_tmpoutbuf = private unnamed_addr constant [15 x i8] c"open_tmpoutbuf\00", align 1
@.str.135 = private unnamed_addr constant [29 x i8] c"Malloced %ld for tmp_outbuf\0A\00", align 1
@.str.136 = private unnamed_addr constant [44 x i8] c"Unable to even malloc 100MB for tmp_outbuf\0A\00", align 1
@__func__.get_hash = private unnamed_addr constant [9 x i8] c"get_hash\00", align 1
@.str.137 = private unnamed_addr constant [51 x i8] c"Failed to calloc encrypt buffers in compress_file\0A\00", align 1
@.str.138 = private unnamed_addr constant [28 x i8] c"Supplied password was null!\00", align 1
@.str.139 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"Re-enter passphrase: \00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"Passwords do not match. Try again.\0A\00", align 1
@__func__.get_pass = private unnamed_addr constant [9 x i8] c"get_pass\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"Failed to retrieve passphrase\0A\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"Empty passphrase\0A\00", align 1
@__func__.preserve_times = private unnamed_addr constant [15 x i8] c"preserve_times\00", align 1
@.str.144 = private unnamed_addr constant [35 x i8] c"Warning, unable to set time on %s\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @get_ram(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca i64, align 8
  %3 = alloca [256 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %4 = tail call i64 @sysconf(i32 noundef 85) #23
  %5 = tail call i64 @sysconf(i32 noundef 30) #23
  %6 = mul nsw i64 %5, %4
  store i64 %6, ptr %2, align 8, !tbaa !5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %30, label %8

8:                                                ; preds = %1
  %9 = tail call noalias ptr @fopen64(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 106, ptr nonnull poison, ptr noundef nonnull @__func__.get_ram, ptr noundef nonnull @.str.3)
  br label %30

12:                                               ; preds = %8, %18
  %13 = call i32 @feof(ptr noundef nonnull %9) #23
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %9, ptr noundef nonnull @.str.4, ptr noundef nonnull %2) #23
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %15
  %19 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 256, ptr noundef nonnull %9)
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %12, !prof !9, !llvm.loop !10

21:                                               ; preds = %18
  %22 = call i32 @fclose(ptr noundef nonnull %9)
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 111, ptr nonnull poison, ptr noundef nonnull @__func__.get_ram, ptr noundef nonnull @.str.5)
  br label %30

23:                                               ; preds = %12, %15
  %24 = call i32 @fclose(ptr noundef nonnull %9)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 115, ptr nonnull poison, ptr noundef nonnull @__func__.get_ram, ptr noundef nonnull @.str.6)
  br label %30

27:                                               ; preds = %23
  %28 = load i64, ptr %2, align 8, !tbaa !5
  %29 = mul nsw i64 %28, 1000
  br label %30

30:                                               ; preds = %1, %27, %26, %21, %11
  %31 = phi i64 [ -1, %26 ], [ %29, %27 ], [ -1, %21 ], [ -1, %11 ], [ %6, %1 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i64 %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !20
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #24
  call void @perror(ptr noundef null) #24
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #23
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind memory(write) uwtable
define dso_local i64 @nloops(i64 noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #6 {
  %4 = sitofp i64 %0 to double
  %5 = tail call double @pow(double noundef 0x3FF00000052ACC77, double noundef %4) #23
  %6 = fmul double %5, 0x3EF001AE61119F24
  %7 = fptosi double %6 to i64
  %8 = tail call i64 @llvm.smax.i64(i64 %7, i64 1000000)
  br label %9

9:                                                ; preds = %3, %9
  %10 = phi i32 [ 0, %3 ], [ %13, %9 ]
  %11 = phi i64 [ %8, %3 ], [ %12, %9 ]
  %12 = lshr i64 %11, 1
  %13 = add nuw nsw i32 %10, 1
  %14 = icmp ugt i64 %11, 511
  br i1 %14, label %9, label %15, !llvm.loop !23

15:                                               ; preds = %9
  %16 = trunc i32 %13 to i8
  store i8 %16, ptr %1, align 1, !tbaa !24
  %17 = trunc i64 %12 to i8
  store i8 %17, ptr %2, align 1, !tbaa !24
  %18 = zext i32 %13 to i64
  %19 = shl i64 %12, %18
  ret i64 %19
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @write_magic(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, ptr noundef nonnull align 16 dereferenceable(24) @__const.write_magic.magic, i64 24, i1 false)
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !25
  %5 = and i64 %4, 8388608
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 6
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43
  %10 = load i64, ptr %9, align 8
  store i64 %10, ptr %8, align 2
  br label %22

11:                                               ; preds = %1
  %12 = and i64 %4, 12288
  %13 = icmp eq i64 %12, 12288
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  %16 = load i8, ptr %15, align 8, !tbaa !26
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %11
  %19 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %20 = load i64, ptr %19, align 8, !tbaa !27
  %21 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 6
  store i64 %20, ptr %21, align 2
  br label %22

22:                                               ; preds = %14, %18, %7
  %23 = and i64 %4, 992
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = getelementptr inbounds i8, ptr %2, i64 16
  %27 = getelementptr i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) %26, ptr noundef nonnull align 1 dereferenceable(5) %27, i64 5, i1 false), !tbaa !24
  br label %28

28:                                               ; preds = %25, %22
  %29 = and i64 %4, 196608
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %28
  %32 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 21
  store i8 1, ptr %32, align 1, !tbaa !24
  br label %33

33:                                               ; preds = %28, %31
  br i1 %6, label %36, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds [24 x i8], ptr %2, i64 0, i64 22
  store i8 1, ptr %35, align 2, !tbaa !24
  br label %36

36:                                               ; preds = %34, %33
  %37 = and i64 %4, 2097152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36
  %40 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %41 = load i64, ptr %40, align 8, !tbaa !28
  %42 = sub nsw i64 0, %41
  %43 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 %42, ptr %43, align 8, !tbaa !29
  %44 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %45 = load i64, ptr %44, align 8, !tbaa !30
  %46 = icmp slt i64 %45, %42
  %47 = icmp sgt i64 %41, 0
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %56, !prof !9

49:                                               ; preds = %39
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 68, ptr nonnull poison, ptr noundef nonnull @__func__.fdout_seekto, ptr noundef nonnull @.str.120, i64 noundef %42)
  br label %55

50:                                               ; preds = %36
  %51 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %52 = load i32, ptr %51, align 4, !tbaa !31
  %53 = tail call i64 @lseek64(i32 noundef %52, i64 noundef 0, i32 noundef 0) #23
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %56, label %55, !prof !32

55:                                               ; preds = %49, %50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 173, ptr nonnull poison, ptr noundef nonnull @__func__.write_magic, ptr noundef nonnull @.str.7)
  br label %62

56:                                               ; preds = %39, %50
  %57 = call i64 @put_fdout(ptr noundef nonnull %0, ptr noundef nonnull %2, i64 noundef 24) #23
  %58 = icmp eq i64 %57, 24
  br i1 %58, label %60, label %59, !prof !32

59:                                               ; preds = %56
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 176, ptr nonnull poison, ptr noundef nonnull @__func__.write_magic, ptr noundef nonnull @.str.8)
  br label %62

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 49
  store i8 1, ptr %61, align 1, !tbaa !33
  br label %62

62:                                               ; preds = %60, %59, %55
  %63 = phi i1 [ false, %55 ], [ false, %59 ], [ true, %60 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret i1 %63
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare i64 @put_fdout(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @read_magic(ptr noundef %0, i32 noundef %1, ptr nocapture noundef writeonly %2) local_unnamed_addr #0 {
  %4 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %5 = call i64 @read(i32 noundef %1, ptr noundef nonnull %4, i64 noundef 24) #23
  %6 = icmp eq i64 %5, 24
  br i1 %6, label %8, label %7, !prof !32

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 258, ptr nonnull poison, ptr noundef nonnull @__func__.read_magic, ptr noundef nonnull @.str.9)
  br label %13

8:                                                ; preds = %3
  %9 = call fastcc zeroext i1 @get_magic(ptr noundef %0, ptr noundef nonnull %4)
  br i1 %9, label %10, label %13, !prof !32

10:                                               ; preds = %8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %12 = load i64, ptr %11, align 8, !tbaa !27
  store i64 %12, ptr %2, align 8, !tbaa !5
  br label %13

13:                                               ; preds = %8, %10, %7
  %14 = phi i1 [ false, %7 ], [ true, %10 ], [ false, %8 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #23
  ret i1 %14
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #9

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @get_magic(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.121, i64 noundef 4) #25
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %6, label %5, !prof !32

5:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 193, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.122)
  br label %125

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %8 = getelementptr inbounds i8, ptr %1, i64 4
  %9 = load i8, ptr %8, align 1
  store i8 %9, ptr %7, align 1
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %11 = getelementptr inbounds i8, ptr %1, i64 5
  %12 = load i8, ptr %11, align 1
  store i8 %12, ptr %10, align 2
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa !25
  %15 = and i64 %14, 3072
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %21, label %17

17:                                               ; preds = %6
  %18 = sext i8 %9 to i32
  %19 = sext i8 %12 to i32
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 198, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.123, i32 noundef %18, i32 noundef %19)
  %20 = load i8, ptr %7, align 1, !tbaa !34
  br label %21

21:                                               ; preds = %17, %6
  %22 = phi i8 [ %20, %17 ], [ %9, %6 ]
  %23 = icmp sgt i8 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i8, ptr %10, align 2, !tbaa !35
  br label %31

26:                                               ; preds = %21
  %27 = icmp eq i8 %22, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %26
  %29 = load i8, ptr %10, align 2, !tbaa !35
  %30 = icmp sgt i8 %29, 6
  br i1 %30, label %31, label %43

31:                                               ; preds = %28, %24
  %32 = phi i8 [ %25, %24 ], [ %29, %28 ]
  %33 = zext i8 %22 to i32
  %34 = sext i8 %32 to i32
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 201, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.124, i32 noundef %33, i32 noundef %34)
  %35 = load i8, ptr %7, align 1, !tbaa !34
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds i8, ptr %1, i64 6
  %39 = load i64, ptr %38, align 1
  %40 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 %39, ptr %40, align 8, !tbaa !27
  br label %68

41:                                               ; preds = %31
  %42 = load i8, ptr %10, align 2, !tbaa !35
  br label %43

43:                                               ; preds = %28, %41
  %44 = phi i8 [ %42, %41 ], [ %29, %28 ]
  %45 = icmp slt i8 %44, 4
  %46 = getelementptr inbounds i8, ptr %1, i64 6
  br i1 %45, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32, ptr %46, align 1
  %49 = getelementptr inbounds i8, ptr %1, i64 10
  %50 = load i32, ptr %49, align 1
  %51 = zext i32 %50 to i64
  %52 = zext i32 %48 to i64
  %53 = shl nuw i64 %52, 32
  %54 = or i64 %53, %51
  %55 = tail call i64 @llvm.bswap.i64(i64 %54)
  %56 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 %55, ptr %56, align 8, !tbaa !27
  br label %65

57:                                               ; preds = %26
  %58 = getelementptr inbounds i8, ptr %1, i64 6
  %59 = load i64, ptr %58, align 1
  %60 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 %59, ptr %60, align 8, !tbaa !27
  br label %68

61:                                               ; preds = %43
  %62 = load i64, ptr %46, align 1
  %63 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  store i64 %62, ptr %63, align 8, !tbaa !27
  %64 = icmp ult i8 %44, 6
  br i1 %64, label %65, label %68

65:                                               ; preds = %47, %61
  %66 = phi ptr [ %56, %47 ], [ %63, %61 ]
  %67 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  store i8 1, ptr %67, align 8, !tbaa !26
  br label %68

68:                                               ; preds = %57, %37, %65, %61
  %69 = phi ptr [ %66, %65 ], [ %63, %61 ], [ %60, %57 ], [ %40, %37 ]
  %70 = getelementptr inbounds i8, ptr %1, i64 16
  %71 = load i8, ptr %70, align 1, !tbaa !24
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %87, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 24, i64 0
  store i8 %71, ptr %74, align 1, !tbaa !24
  %75 = getelementptr inbounds i8, ptr %1, i64 17
  %76 = load i8, ptr %75, align 1, !tbaa !24
  %77 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 24, i64 1
  store i8 %76, ptr %77, align 1, !tbaa !24
  %78 = getelementptr inbounds i8, ptr %1, i64 18
  %79 = load i8, ptr %78, align 1, !tbaa !24
  %80 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 24, i64 2
  store i8 %79, ptr %80, align 1, !tbaa !24
  %81 = getelementptr inbounds i8, ptr %1, i64 19
  %82 = load i8, ptr %81, align 1, !tbaa !24
  %83 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 24, i64 3
  store i8 %82, ptr %83, align 1, !tbaa !24
  %84 = getelementptr inbounds i8, ptr %1, i64 20
  %85 = load i8, ptr %84, align 1, !tbaa !24
  %86 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 24, i64 4
  store i8 %85, ptr %86, align 1, !tbaa !24
  br label %87

87:                                               ; preds = %73, %68
  %88 = getelementptr inbounds i8, ptr %1, i64 21
  %89 = load i8, ptr %88, align 1, !tbaa !24
  switch i8 %89, label %93 [
    i8 0, label %98
    i8 1, label %90
  ]

90:                                               ; preds = %87
  %91 = load i64, ptr %13, align 8, !tbaa !25
  %92 = or i64 %91, 131072
  store i64 %92, ptr %13, align 8, !tbaa !25
  br label %98

93:                                               ; preds = %87
  %94 = load i64, ptr %13, align 8, !tbaa !25
  %95 = and i64 %94, 3072
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %93
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 229, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.125)
  br label %98

98:                                               ; preds = %87, %90, %97, %93
  %99 = getelementptr inbounds i8, ptr %1, i64 22
  %100 = load i8, ptr %99, align 1, !tbaa !24
  switch i8 %100, label %116 [
    i8 0, label %118
    i8 1, label %101
  ]

101:                                              ; preds = %98
  %102 = load i64, ptr %13, align 8, !tbaa !25
  %103 = or i64 %102, 8388608
  store i64 %103, ptr %13, align 8, !tbaa !25
  %104 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43
  %105 = getelementptr inbounds i8, ptr %1, i64 6
  %106 = load i64, ptr %105, align 1
  store i64 %106, ptr %104, align 8
  store i64 0, ptr %69, align 8, !tbaa !27
  %107 = load i8, ptr %104, align 8, !tbaa !24
  %108 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43, i64 1
  %109 = load i8, ptr %108, align 1, !tbaa !24
  %110 = zext i8 %109 to i64
  %111 = zext i8 %107 to i64
  %112 = shl i64 %110, %111
  %113 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 39
  store i64 %112, ptr %113, align 8, !tbaa !36
  %114 = and i64 %102, 2048
  %115 = icmp eq i64 %114, 0
  br i1 %115, label %125, label %117

116:                                              ; preds = %98
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 236, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.126)
  br label %125

117:                                              ; preds = %101
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 243, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.127, i64 noundef %112)
  br label %125

118:                                              ; preds = %98
  %119 = load i64, ptr %13, align 8, !tbaa !25
  %120 = and i64 %119, 8388608
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %118
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 245, ptr nonnull poison, ptr noundef nonnull @__func__.get_magic, ptr noundef nonnull @.str.128)
  %123 = load i64, ptr %13, align 8, !tbaa !25
  %124 = and i64 %123, -8388609
  store i64 %124, ptr %13, align 8, !tbaa !25
  br label %125

125:                                              ; preds = %117, %101, %122, %118, %116, %5
  %126 = phi i1 [ false, %5 ], [ false, %116 ], [ true, %118 ], [ true, %122 ], [ true, %101 ], [ true, %117 ]
  ret i1 %126
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_tmpoutfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !25
  %4 = and i64 %3, 8196
  %5 = icmp ne i64 %4, 8192
  %6 = and i64 %3, 3072
  %7 = icmp eq i64 %6, 0
  %8 = or i1 %5, %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 303, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpoutfile, ptr noundef nonnull @.str.10)
  br label %10

10:                                               ; preds = %9, %1
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !37
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  br label %28

17:                                               ; preds = %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #25
  %19 = add i64 %18, 16
  %20 = tail call ptr @malloc(i64 %19)
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !38
  %22 = icmp eq ptr %20, null
  br i1 %22, label %23, label %24, !prof !9

23:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 307, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpoutfile, ptr noundef nonnull @.str.11)
  br label %48

24:                                               ; preds = %17
  %25 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %12) #23
  %26 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %20)
  %27 = getelementptr inbounds i8, ptr %20, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %27, ptr noundef nonnull align 1 dereferenceable(16) @.str.12, i64 16, i1 false)
  br label %28

28:                                               ; preds = %14, %24
  %29 = phi ptr [ %16, %14 ], [ %20, %24 ]
  %30 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %31 = tail call i32 @mkstemp64(ptr noundef %29) #23
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %42

33:                                               ; preds = %28
  %34 = load i64, ptr %2, align 8, !tbaa !25
  %35 = and i64 %34, 1
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %33
  %38 = load ptr, ptr %30, align 8, !tbaa !38
  %39 = and i64 %34, 16
  %40 = icmp eq i64 %39, 0
  %41 = select i1 %40, ptr @.str.15, ptr @.str.14
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 315, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpoutfile, ptr noundef nonnull @.str.13, ptr noundef %38, ptr noundef nonnull %41)
  br label %48

42:                                               ; preds = %28
  %43 = load ptr, ptr %30, align 8, !tbaa !38
  %44 = load i64, ptr %2, align 8, !tbaa !25
  %45 = and i64 %44, 532484
  %46 = icmp ne i64 %45, 524288
  %47 = zext i1 %46 to i8
  tail call void @register_outfile(ptr noundef nonnull %0, ptr noundef %43, i8 noundef signext %47) #23
  br label %48

48:                                               ; preds = %42, %37, %33, %23
  %49 = phi i32 [ -1, %23 ], [ -1, %33 ], [ -1, %37 ], [ %31, %42 ]
  ret i32 %49
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #4 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !22
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !12
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !39
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !12
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !21
  call void %20(ptr noundef %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.2, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #23
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !40
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !40
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !40
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #12

declare i32 @mkstemp64(ptr noundef) local_unnamed_addr #5

declare void @register_outfile(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @write_fdout(ptr noundef %0, ptr nocapture noundef readonly %1, i64 noundef %2) local_unnamed_addr #0 {
  %4 = icmp slt i64 %2, 1
  br i1 %4, label %19, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  br label %7

7:                                                ; preds = %5, %15
  %8 = phi ptr [ %1, %5 ], [ %17, %15 ]
  %9 = phi i64 [ %2, %5 ], [ %16, %15 ]
  %10 = tail call i64 @llvm.smin.i64(i64 %9, i64 1048576000)
  %11 = load i32, ptr %6, align 4, !tbaa !31
  %12 = tail call i64 @write(i32 noundef %11, ptr noundef %8, i64 noundef %10) #23
  %13 = icmp slt i64 %12, 1
  br i1 %13, label %14, label %15, !prof !9

14:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 353, ptr nonnull poison, ptr noundef nonnull @__func__.write_fdout, ptr noundef nonnull @.str.16)
  br label %19

15:                                               ; preds = %7
  %16 = sub nsw i64 %9, %12
  %17 = getelementptr inbounds i8, ptr %8, i64 %12
  %18 = icmp slt i64 %16, 1
  br i1 %18, label %19, label %7, !llvm.loop !41

19:                                               ; preds = %15, %3, %14
  %20 = phi i1 [ false, %14 ], [ true, %3 ], [ true, %15 ]
  ret i1 %20
}

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr nocapture noundef readonly, i64 noundef) local_unnamed_addr #10

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @flush_tmpoutbuf(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !25
  %4 = and i64 %3, 4
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %56

6:                                                ; preds = %1
  %7 = and i64 %3, 2048
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 363, ptr nonnull poison, ptr noundef nonnull @__func__.flush_tmpoutbuf, ptr noundef nonnull @.str.17)
  %10 = load i64, ptr %2, align 8, !tbaa !25
  br label %11

11:                                               ; preds = %6, %9
  %12 = phi i64 [ %3, %6 ], [ %10, %9 ]
  %13 = and i64 %12, 8192
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %16 = load i64, ptr %15, align 8, !tbaa !30
  %17 = icmp slt i64 %16, 1
  br i1 %14, label %39, label %18

18:                                               ; preds = %11
  br i1 %17, label %34, label %19

19:                                               ; preds = %18
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %21 = load ptr, ptr %20, align 8, !tbaa !42
  %22 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 4
  br label %23

23:                                               ; preds = %30, %19
  %24 = phi ptr [ %21, %19 ], [ %32, %30 ]
  %25 = phi i64 [ %16, %19 ], [ %31, %30 ]
  %26 = tail call i64 @llvm.umin.i64(i64 %25, i64 1048576000)
  %27 = load ptr, ptr %22, align 8, !tbaa !43
  %28 = tail call i64 @fwrite(ptr noundef %24, i64 noundef 1, i64 noundef %26, ptr noundef %27)
  %29 = icmp slt i64 %28, 1
  br i1 %29, label %38, label %30, !prof !9

30:                                               ; preds = %23
  %31 = sub nsw i64 %25, %28
  %32 = getelementptr inbounds i8, ptr %24, i64 %28
  %33 = icmp slt i64 %31, 1
  br i1 %33, label %34, label %23, !llvm.loop !44

34:                                               ; preds = %30, %18
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !43
  %37 = tail call i32 @fflush(ptr noundef %36)
  br label %56

38:                                               ; preds = %23
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 335, ptr nonnull poison, ptr noundef nonnull @__func__.fwrite_stdout, ptr noundef nonnull @.str.129)
  br label %63

39:                                               ; preds = %11
  br i1 %17, label %56, label %40

40:                                               ; preds = %39
  %41 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %42 = load ptr, ptr %41, align 8, !tbaa !42
  %43 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  br label %44

44:                                               ; preds = %51, %40
  %45 = phi ptr [ %42, %40 ], [ %53, %51 ]
  %46 = phi i64 [ %16, %40 ], [ %52, %51 ]
  %47 = tail call i64 @llvm.smin.i64(i64 %46, i64 1048576000)
  %48 = load i32, ptr %43, align 4, !tbaa !31
  %49 = tail call i64 @write(i32 noundef %48, ptr noundef %45, i64 noundef %47) #23
  %50 = icmp slt i64 %49, 1
  br i1 %50, label %55, label %51, !prof !9

51:                                               ; preds = %44
  %52 = sub nsw i64 %46, %49
  %53 = getelementptr inbounds i8, ptr %45, i64 %49
  %54 = icmp slt i64 %52, 1
  br i1 %54, label %56, label %44, !llvm.loop !41

55:                                               ; preds = %44
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 353, ptr nonnull poison, ptr noundef nonnull @__func__.write_fdout, ptr noundef nonnull @.str.16)
  br label %63

56:                                               ; preds = %51, %39, %34, %1
  %57 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %58 = load i64, ptr %57, align 8, !tbaa !30
  %59 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %60 = load i64, ptr %59, align 8, !tbaa !28
  %61 = add nsw i64 %60, %58
  store i64 %61, ptr %59, align 8, !tbaa !28
  store i64 0, ptr %57, align 8, !tbaa !30
  %62 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 0, ptr %62, align 8, !tbaa !29
  br label %63

63:                                               ; preds = %55, %38, %56
  %64 = phi i1 [ true, %56 ], [ false, %38 ], [ false, %55 ]
  ret i1 %64
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @dump_tmpoutfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %4, label %5, !prof !9

4:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 384, ptr nonnull poison, ptr noundef nonnull @__func__.dump_tmpoutfile, ptr noundef nonnull @.str.18)
  br label %36

5:                                                ; preds = %2
  %6 = tail call i32 @fsync(i32 noundef %1) #23
  %7 = tail call noalias ptr @fdopen(i32 noundef %1, ptr noundef nonnull @.str.1) #23
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10, !prof !9

9:                                                ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 389, ptr nonnull poison, ptr noundef nonnull @__func__.dump_tmpoutfile, ptr noundef nonnull @.str.19)
  br label %36

10:                                               ; preds = %5
  tail call void @rewind(ptr noundef nonnull %7)
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %12 = load i64, ptr %11, align 8, !tbaa !25
  %13 = and i64 %12, 4
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = and i64 %12, 3072
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 393, ptr nonnull poison, ptr noundef nonnull @__func__.dump_tmpoutfile, ptr noundef nonnull @.str.20)
  br label %19

19:                                               ; preds = %18, %15
  %20 = tail call i32 @fgetc(ptr noundef nonnull %7)
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %22
  %23 = phi i32 [ %26, %22 ], [ %20, %19 ]
  %24 = load ptr, ptr @stdout, align 8, !tbaa !20
  %25 = tail call i32 @putc(i32 noundef %23, ptr noundef %24)
  %26 = tail call i32 @fgetc(ptr noundef nonnull %7)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %22, !llvm.loop !45

28:                                               ; preds = %22, %19
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !43
  %31 = tail call i32 @fflush(ptr noundef %30)
  tail call void @rewind(ptr noundef nonnull %7)
  br label %32

32:                                               ; preds = %28, %10
  %33 = tail call i32 @ftruncate64(i32 noundef %1, i64 noundef 0) #23
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35, !prof !32

35:                                               ; preds = %32
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 401, ptr nonnull poison, ptr noundef nonnull @__func__.dump_tmpoutfile, ptr noundef nonnull @.str.21)
  br label %36

36:                                               ; preds = %32, %35, %9, %4
  %37 = phi i1 [ false, %4 ], [ false, %9 ], [ false, %35 ], [ true, %32 ]
  ret i1 %37
}

declare i32 @fsync(i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @rewind(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fgetc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @write_fdin(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 15
  %3 = load i64, ptr %2, align 8, !tbaa !46
  %4 = icmp slt i64 %3, 1
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %7 = load ptr, ptr %6, align 8, !tbaa !47
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  br label %9

9:                                                ; preds = %5, %17
  %10 = phi i64 [ %3, %5 ], [ %18, %17 ]
  %11 = phi ptr [ %7, %5 ], [ %19, %17 ]
  %12 = tail call i64 @llvm.smin.i64(i64 %10, i64 1048576000)
  %13 = load i32, ptr %8, align 8, !tbaa !48
  %14 = tail call i64 @write(i32 noundef %13, ptr noundef %11, i64 noundef %12) #23
  %15 = icmp slt i64 %14, 1
  br i1 %15, label %16, label %17, !prof !9

16:                                               ; preds = %9
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 417, ptr nonnull poison, ptr noundef nonnull @__func__.write_fdin, ptr noundef nonnull @.str.22)
  br label %21

17:                                               ; preds = %9
  %18 = sub nsw i64 %10, %14
  %19 = getelementptr inbounds i8, ptr %11, i64 %14
  %20 = icmp slt i64 %18, 1
  br i1 %20, label %21, label %9, !llvm.loop !49

21:                                               ; preds = %17, %1, %16
  %22 = phi i1 [ false, %16 ], [ true, %1 ], [ true, %17 ]
  ret i1 %22
}

; Function Attrs: nounwind uwtable
define dso_local i32 @open_tmpinfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = icmp eq ptr %3, null
  br i1 %4, label %17, label %5

5:                                                ; preds = %1
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #25
  %7 = add i64 %6, 15
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #26
  store ptr %8, ptr %0, align 8, !tbaa !50
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11, !prof !9

10:                                               ; preds = %5
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 433, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinfile, ptr noundef nonnull @.str.23)
  br label %60

11:                                               ; preds = %5
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %3) #23
  %13 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %8)
  %14 = getelementptr inbounds i8, ptr %8, i64 %13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %14, ptr noundef nonnull align 1 dereferenceable(15) @.str.24, i64 15, i1 false)
  %15 = tail call i32 @mkstemp64(ptr noundef nonnull %8) #23
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %43

17:                                               ; preds = %1, %11
  %18 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %18) #23
  %19 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #26
  store ptr %19, ptr %0, align 8, !tbaa !50
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 444, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinfile, ptr noundef nonnull @.str.23)
  br label %60

22:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %19, ptr noundef nonnull align 1 dereferenceable(15) @.str.24, i64 15, i1 false) #23
  %23 = tail call i32 @mkstemp64(ptr noundef nonnull %19) #23
  %24 = icmp eq i32 %23, -1
  br i1 %24, label %25, label %43

25:                                               ; preds = %22
  %26 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void @free(ptr noundef %26) #23
  %27 = tail call noalias dereferenceable_or_null(20) ptr @malloc(i64 noundef 20) #26
  store ptr %27, ptr %0, align 8, !tbaa !50
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 454, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinfile, ptr noundef nonnull @.str.23)
  br label %60

30:                                               ; preds = %25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %27, ptr noundef nonnull align 1 dereferenceable(20) @.str.25, i64 20, i1 false) #23
  %31 = tail call i32 @mkstemp64(ptr noundef nonnull %27) #23
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %43

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %35 = load i64, ptr %34, align 8, !tbaa !25
  %36 = and i64 %35, 1
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %60, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 8, !tbaa !50
  %40 = and i64 %35, 16
  %41 = icmp eq i64 %40, 0
  %42 = select i1 %41, ptr @.str.15, ptr @.str.14
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 461, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinfile, ptr noundef nonnull @.str.26, ptr noundef %39, ptr noundef nonnull %42)
  br label %60

43:                                               ; preds = %11, %22, %30
  %44 = phi i32 [ %31, %30 ], [ %23, %22 ], [ %15, %11 ]
  %45 = load ptr, ptr %0, align 8, !tbaa !50
  %46 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %47 = load i64, ptr %46, align 8, !tbaa !25
  %48 = and i64 %47, 20
  %49 = icmp eq i64 %48, 0
  %50 = lshr i64 %47, 12
  %51 = trunc i64 %50 to i8
  %52 = and i8 %51, 1
  %53 = select i1 %49, i8 0, i8 %52
  tail call void @register_infile(ptr noundef nonnull %0, ptr noundef %45, i8 noundef signext %53) #23
  %54 = load ptr, ptr %0, align 8, !tbaa !50
  %55 = tail call i32 @unlink(ptr noundef %54) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57, !prof !32

57:                                               ; preds = %43
  %58 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 467, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinfile, ptr noundef nonnull @.str.27, ptr noundef %58)
  %59 = tail call i32 @close(i32 noundef %44) #23
  br label %60

60:                                               ; preds = %38, %33, %43, %57, %29, %21, %10
  %61 = phi i32 [ -1, %10 ], [ -1, %21 ], [ -1, %29 ], [ -1, %57 ], [ %44, %43 ], [ -1, %33 ], [ -1, %38 ]
  ret i32 %61
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #14

declare void @register_infile(ptr noundef, ptr noundef, i8 noundef signext) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @read_tmpinfile(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
  %3 = icmp eq i32 %1, -1
  br i1 %3, label %29, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %6 = load i64, ptr %5, align 8, !tbaa !25
  %7 = and i64 %6, 1
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %11 = load ptr, ptr %10, align 8, !tbaa !40
  %12 = tail call i64 @fwrite(ptr nonnull @.str.28, i64 20, i64 1, ptr %11)
  br label %13

13:                                               ; preds = %9, %4
  %14 = tail call noalias ptr @fdopen(i32 noundef %1, ptr noundef nonnull @.str.29) #23
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16, !prof !9

16:                                               ; preds = %13
  %17 = load ptr, ptr @stdin, align 8, !tbaa !20
  %18 = tail call i32 @getc(ptr noundef %17)
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %27, label %21

20:                                               ; preds = %13
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 502, ptr nonnull poison, ptr noundef nonnull @__func__.read_tmpinfile, ptr noundef nonnull @.str.30)
  br label %29

21:                                               ; preds = %16, %21
  %22 = phi i32 [ %25, %21 ], [ %18, %16 ]
  %23 = tail call i32 @fputc(i32 noundef %22, ptr noundef nonnull %14)
  %24 = load ptr, ptr @stdin, align 8, !tbaa !20
  %25 = tail call i32 @getc(ptr noundef %24)
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %21, !llvm.loop !51

27:                                               ; preds = %21, %16
  %28 = tail call i32 @fflush(ptr noundef nonnull %14)
  tail call void @rewind(ptr noundef nonnull %14)
  br label %29

29:                                               ; preds = %2, %27, %20
  %30 = phi i1 [ false, %20 ], [ true, %27 ], [ false, %2 ]
  ret i1 %30
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @close_tmpoutbuf(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !25
  %4 = and i64 %3, -2097153
  store i64 %4, ptr %2, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !42
  tail call void @free(ptr noundef %6) #23
  store ptr null, ptr %5, align 8, !tbaa !42
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %8 = load i64, ptr %7, align 8, !tbaa !52
  %9 = sdiv i64 %8, 18
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = add nsw i64 %11, %9
  store i64 %12, ptr %10, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 22
  store i64 %12, ptr %13, align 8, !tbaa !54
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @clear_tmpinbuf(ptr nocapture noundef writeonly %0) local_unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @clear_tmpinfile(ptr noundef %0) local_unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %3 = load i32, ptr %2, align 8, !tbaa !48
  %4 = tail call i64 @lseek64(i32 noundef %3, i64 noundef 0, i32 noundef 0) #23
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %7, label %6, !prof !32

6:                                                ; preds = %1
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 569, ptr nonnull poison, ptr noundef nonnull @__func__.clear_tmpinfile, ptr noundef nonnull @.str.31)
  br label %12

7:                                                ; preds = %1
  %8 = load i32, ptr %2, align 8, !tbaa !48
  %9 = tail call i32 @ftruncate64(i32 noundef %8, i64 noundef 0) #23
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %12, label %11, !prof !32

11:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 571, ptr nonnull poison, ptr noundef nonnull @__func__.clear_tmpinfile, ptr noundef nonnull @.str.32)
  br label %12

12:                                               ; preds = %7, %11, %6
  %13 = phi i1 [ false, %6 ], [ false, %11 ], [ true, %7 ]
  ret i1 %13
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @close_tmpinbuf(ptr nocapture noundef %0) local_unnamed_addr #15 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !25
  %4 = and i64 %3, -4194305
  store i64 %4, ptr %2, align 8, !tbaa !25
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  tail call void @free(ptr noundef %6) #23
  store ptr null, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %8 = load i64, ptr %7, align 8, !tbaa !52
  %9 = sdiv i64 %8, 18
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %11 = load i64, ptr %10, align 8, !tbaa !53
  %12 = add nsw i64 %11, %9
  store i64 %12, ptr %10, align 8, !tbaa !53
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 22
  store i64 %12, ptr %13, align 8, !tbaa !54
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @decompress_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [24 x i8], align 16
  %3 = alloca [24 x i8], align 16
  %4 = alloca %struct.statvfs, align 8
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  %6 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %7 = load i64, ptr %6, align 8, !tbaa !25
  %8 = and i64 %7, 4096
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %41

10:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #23
  %11 = load ptr, ptr %0, align 8, !tbaa !50
  %12 = call i32 @stat64(ptr noundef %11, ptr noundef nonnull %5) #23
  %13 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !55
  %15 = and i32 %14, 61440
  %16 = icmp eq i32 %15, 32768
  %17 = load ptr, ptr %0, align 8, !tbaa !50
  br i1 %16, label %34, label %18

18:                                               ; preds = %10
  %19 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef 46) #25
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %23 = load ptr, ptr %22, align 8, !tbaa !58
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %23) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %21
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #25
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %23) #25
  %29 = add i64 %27, 1
  %30 = add i64 %29, %28
  %31 = alloca i8, i64 %30, align 16
  %32 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %17) #23
  %33 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %31, ptr noundef nonnull dereferenceable(1) %23) #23
  br label %38

34:                                               ; preds = %10, %21, %18
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %17) #25
  %36 = add i64 %35, 1
  %37 = alloca i8, i64 %36, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %37, ptr align 1 %17, i64 %36, i1 false)
  br label %38

38:                                               ; preds = %34, %26
  %39 = phi ptr [ %37, %34 ], [ %31, %26 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #23
  %40 = load i64, ptr %6, align 8, !tbaa !25
  br label %41

41:                                               ; preds = %38, %1
  %42 = phi i64 [ %7, %1 ], [ %40, %38 ]
  %43 = phi ptr [ null, %1 ], [ %39, %38 ]
  %44 = and i64 %42, 8196
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %107

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 2
  %48 = load ptr, ptr %47, align 8, !tbaa !59
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %46
  %51 = call noalias ptr @strdup(ptr noundef nonnull %48) #23
  %52 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %51, ptr %52, align 8, !tbaa !38
  br label %100

53:                                               ; preds = %46
  %54 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 5
  %55 = load ptr, ptr %54, align 8, !tbaa !60
  %56 = icmp eq ptr %55, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %53
  %58 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %43, i32 noundef 47) #25
  %59 = icmp eq ptr %58, null
  br i1 %59, label %65, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds i8, ptr %58, i64 1
  %62 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %61) #25
  %63 = add i64 %62, 1
  %64 = alloca i8, i64 %63, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %64, ptr nonnull align 1 %61, i64 %63, i1 false)
  br label %69

65:                                               ; preds = %57, %53
  %66 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %43) #25
  %67 = add i64 %66, 1
  %68 = alloca i8, i64 %67, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %68, ptr align 1 %43, i64 %67, i1 false)
  br label %69

69:                                               ; preds = %65, %60
  %70 = phi ptr [ %64, %60 ], [ %68, %65 ]
  %71 = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %70, i32 noundef 46) #25
  %72 = icmp eq ptr %71, null
  br i1 %72, label %80, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %75 = load ptr, ptr %74, align 8, !tbaa !58
  %76 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %71, ptr noundef nonnull dereferenceable(1) %75) #25
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  store i8 0, ptr %71, align 1, !tbaa !24
  %79 = load ptr, ptr %54, align 8, !tbaa !60
  br label %80

80:                                               ; preds = %78, %73, %69
  %81 = phi ptr [ %79, %78 ], [ %55, %73 ], [ %55, %69 ]
  %82 = icmp eq ptr %81, null
  br i1 %82, label %85, label %83

83:                                               ; preds = %80
  %84 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %81) #25
  br label %85

85:                                               ; preds = %80, %83
  %86 = phi i64 [ %84, %83 ], [ 0, %80 ]
  %87 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #25
  %88 = add i64 %86, 1
  %89 = add i64 %88, %87
  %90 = call noalias ptr @malloc(i64 noundef %89) #26
  %91 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %90, ptr %91, align 8, !tbaa !38
  %92 = icmp eq ptr %90, null
  br i1 %92, label %93, label %94, !prof !9

93:                                               ; preds = %85
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 724, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.11)
  br label %380

94:                                               ; preds = %85
  br i1 %82, label %98, label %95

95:                                               ; preds = %94
  %96 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) %81) #23
  %97 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) %70) #23
  br label %100

98:                                               ; preds = %94
  %99 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %90, ptr noundef nonnull dereferenceable(1) %70) #23
  br label %100

100:                                              ; preds = %95, %98, %50
  %101 = phi ptr [ %90, %95 ], [ %90, %98 ], [ %51, %50 ]
  %102 = load i64, ptr %6, align 8, !tbaa !25
  %103 = and i64 %102, 8193
  %104 = icmp eq i64 %103, 1
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 734, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.33, ptr noundef %101)
  %106 = load i64, ptr %6, align 8, !tbaa !25
  br label %107

107:                                              ; preds = %100, %105, %41
  %108 = phi i64 [ %102, %100 ], [ %106, %105 ], [ %42, %41 ]
  %109 = and i64 %108, 4096
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %145, label %111

111:                                              ; preds = %107
  %112 = call i32 @open_tmpinfile(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  br label %113

113:                                              ; preds = %119, %111
  %114 = phi i64 [ 0, %111 ], [ %122, %119 ]
  %115 = load ptr, ptr @stdin, align 8, !tbaa !20
  %116 = call i32 @getc(ptr noundef %115)
  %117 = icmp eq i32 %116, -1
  br i1 %117, label %118, label %119, !prof !9

118:                                              ; preds = %113
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 484, ptr nonnull poison, ptr noundef nonnull @__func__.read_tmpinmagic, ptr noundef nonnull @.str.130)
  br label %126

119:                                              ; preds = %113
  %120 = trunc i32 %116 to i8
  %121 = getelementptr inbounds [24 x i8], ptr %3, i64 0, i64 %114
  store i8 %120, ptr %121, align 1, !tbaa !24
  %122 = add nuw nsw i64 %114, 1
  %123 = icmp eq i64 %122, 24
  br i1 %123, label %124, label %113, !llvm.loop !61

124:                                              ; preds = %119
  %125 = call fastcc zeroext i1 @get_magic(ptr noundef %0, ptr noundef nonnull %3)
  br label %126

126:                                              ; preds = %118, %124
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #23
  %127 = load i64, ptr %6, align 8, !tbaa !25
  %128 = and i64 %127, 8388608
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %126
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 741, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.34)
  br label %380

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %133 = load i64, ptr %132, align 8, !tbaa !27
  %134 = or i64 %127, 4194304
  store i64 %134, ptr %6, align 8, !tbaa !25
  %135 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %136 = load i64, ptr %135, align 8, !tbaa !53
  %137 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 16
  store i64 %136, ptr %137, align 8, !tbaa !62
  %138 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %139 = load i64, ptr %138, align 8, !tbaa !63
  %140 = add nsw i64 %139, %136
  %141 = call noalias ptr @malloc(i64 noundef %140) #26
  %142 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  store ptr %141, ptr %142, align 8, !tbaa !47
  %143 = icmp eq ptr %141, null
  br i1 %143, label %144, label %151, !prof !9

144:                                              ; preds = %131
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 557, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpinbuf, ptr noundef nonnull @.str.131)
  br label %380

145:                                              ; preds = %107
  %146 = call i32 (ptr, i32, ...) @open64(ptr noundef %43, i32 noundef 0) #23
  %147 = icmp eq i32 %146, -1
  br i1 %147, label %150, label %148, !prof !9

148:                                              ; preds = %145
  %149 = load i64, ptr %6, align 8, !tbaa !25
  br label %151

150:                                              ; preds = %145
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 748, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.35, ptr noundef %43)
  br label %380

151:                                              ; preds = %148, %131
  %152 = phi i64 [ %149, %148 ], [ %134, %131 ]
  %153 = phi i64 [ 0, %148 ], [ %133, %131 ]
  %154 = phi i32 [ %146, %148 ], [ %112, %131 ]
  %155 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  store i32 %154, ptr %155, align 8, !tbaa !48
  %156 = and i64 %152, 8196
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %158, label %200

158:                                              ; preds = %151
  %159 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %160 = load ptr, ptr %159, align 8, !tbaa !38
  %161 = call i32 (ptr, i32, ...) @open64(ptr noundef %160, i32 noundef 193, i32 noundef 438) #23
  %162 = load i64, ptr %6, align 8, !tbaa !25
  %163 = and i64 %162, 8
  %164 = icmp ne i64 %163, 0
  %165 = icmp eq i32 %161, -1
  %166 = and i1 %165, %164
  br i1 %166, label %167, label %179

167:                                              ; preds = %158
  %168 = tail call ptr @__errno_location() #27
  %169 = load i32, ptr %168, align 4, !tbaa !64
  %170 = icmp eq i32 %169, 17
  br i1 %170, label %171, label %184

171:                                              ; preds = %167
  %172 = load ptr, ptr %159, align 8, !tbaa !38
  %173 = call i32 @unlink(ptr noundef %172) #23
  %174 = icmp eq i32 %173, 0
  %175 = load ptr, ptr %159, align 8, !tbaa !38
  br i1 %174, label %177, label %176, !prof !32

176:                                              ; preds = %171
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 757, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.36, ptr noundef %175)
  br label %380

177:                                              ; preds = %171
  %178 = call i32 (ptr, i32, ...) @open64(ptr noundef %175, i32 noundef 193, i32 noundef 438) #23
  br label %179

179:                                              ; preds = %177, %158
  %180 = phi i32 [ %178, %177 ], [ %161, %158 ]
  %181 = icmp eq i32 %180, -1
  br i1 %181, label %182, label %188, !prof !9

182:                                              ; preds = %179
  %183 = load i64, ptr %6, align 8, !tbaa !25
  br label %184

184:                                              ; preds = %182, %167
  %185 = phi i64 [ %183, %182 ], [ %162, %167 ]
  %186 = or i64 %185, 524288
  store i64 %186, ptr %6, align 8, !tbaa !25
  %187 = load ptr, ptr %159, align 8, !tbaa !38
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 764, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.37, ptr noundef %187)
  br label %380

188:                                              ; preds = %179
  %189 = load ptr, ptr %159, align 8, !tbaa !38
  %190 = call i32 (ptr, i32, ...) @open64(ptr noundef %189, i32 noundef 0) #23
  %191 = icmp eq i32 %190, -1
  br i1 %191, label %192, label %194, !prof !9

192:                                              ; preds = %188
  %193 = load ptr, ptr %159, align 8, !tbaa !38
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 768, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.38, ptr noundef %193)
  br label %380

194:                                              ; preds = %188
  %195 = load i64, ptr %6, align 8, !tbaa !25
  %196 = and i64 %195, 4096
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %215

198:                                              ; preds = %194
  %199 = call fastcc zeroext i1 @preserve_perms(ptr noundef nonnull %0, i32 noundef %154, i32 noundef %180)
  br i1 %199, label %215, label %380, !prof !32

200:                                              ; preds = %151
  %201 = call i32 @open_tmpoutfile(ptr noundef nonnull %0)
  %202 = icmp eq i32 %201, -1
  br i1 %202, label %215, label %203

203:                                              ; preds = %200
  %204 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %205 = load ptr, ptr %204, align 8, !tbaa !38
  %206 = call i32 (ptr, i32, ...) @open64(ptr noundef %205, i32 noundef 0) #23
  %207 = icmp eq i32 %206, -1
  %208 = load ptr, ptr %204, align 8, !tbaa !38
  br i1 %207, label %209, label %210, !prof !9

209:                                              ; preds = %203
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 781, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.38, ptr noundef %208)
  br label %380

210:                                              ; preds = %203
  %211 = call i32 @unlink(ptr noundef %208) #23
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %215, label %213, !prof !32

213:                                              ; preds = %210
  %214 = load ptr, ptr %204, align 8, !tbaa !38
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 784, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.27, ptr noundef %214)
  br label %380

215:                                              ; preds = %200, %210, %194, %198
  %216 = phi i32 [ %206, %210 ], [ %190, %194 ], [ %190, %198 ], [ -1, %200 ]
  %217 = phi i32 [ %201, %210 ], [ %180, %194 ], [ %180, %198 ], [ -1, %200 ]
  %218 = call fastcc zeroext i1 @open_tmpoutbuf(ptr noundef nonnull %0)
  br i1 %218, label %219, label %380, !prof !32

219:                                              ; preds = %215
  %220 = load i64, ptr %6, align 8, !tbaa !25
  %221 = and i64 %220, 4096
  %222 = icmp eq i64 %221, 0
  br i1 %222, label %223, label %234

223:                                              ; preds = %219
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %224 = call i64 @read(i32 noundef %154, ptr noundef nonnull %2, i64 noundef 24) #23
  %225 = icmp eq i64 %224, 24
  br i1 %225, label %227, label %226, !prof !32

226:                                              ; preds = %223
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 258, ptr nonnull poison, ptr noundef nonnull @__func__.read_magic, ptr noundef nonnull @.str.9)
  br label %229

227:                                              ; preds = %223
  %228 = call fastcc zeroext i1 @get_magic(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br i1 %228, label %230, label %229, !prof !32

229:                                              ; preds = %226, %227
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %380

230:                                              ; preds = %227
  %231 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %232 = load i64, ptr %231, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  %233 = load i64, ptr %6, align 8, !tbaa !25
  br label %234

234:                                              ; preds = %230, %219
  %235 = phi i64 [ %233, %230 ], [ %220, %219 ]
  %236 = phi i64 [ %232, %230 ], [ %153, %219 ]
  %237 = and i64 %235, 8196
  %238 = icmp eq i64 %237, 0
  br i1 %238, label %239, label %255

239:                                              ; preds = %234
  %240 = call i32 @fstatvfs64(i32 noundef %217, ptr noundef nonnull %4) #23
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %243, label %242, !prof !32

242:                                              ; preds = %239
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 800, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.39)
  br label %380

243:                                              ; preds = %239
  %244 = load i64, ptr %4, align 8, !tbaa !65
  %245 = getelementptr inbounds %struct.statvfs, ptr %4, i64 0, i32 4
  %246 = load i64, ptr %245, align 8, !tbaa !67
  %247 = mul nsw i64 %246, %244
  %248 = icmp slt i64 %247, %236
  br i1 %248, label %249, label %255

249:                                              ; preds = %243
  %250 = load i64, ptr %6, align 8, !tbaa !25
  %251 = and i64 %250, 8
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %254, label %253

253:                                              ; preds = %249
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 804, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.40)
  br label %255

254:                                              ; preds = %249
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 806, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.41)
  br label %380

255:                                              ; preds = %243, %253, %234
  %256 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  store i32 %217, ptr %256, align 4, !tbaa !31
  %257 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 38
  store i32 %216, ptr %257, align 8, !tbaa !68
  %258 = load i64, ptr %6, align 8, !tbaa !25
  %259 = and i64 %258, 196608
  %260 = icmp ne i64 %259, 0
  %261 = and i64 %258, 3072
  %262 = icmp eq i64 %261, 0
  %263 = or i1 %260, %262
  br i1 %263, label %266, label %264

264:                                              ; preds = %255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 813, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.42)
  %265 = load i64, ptr %6, align 8, !tbaa !25
  br label %266

266:                                              ; preds = %264, %255
  %267 = phi i64 [ %265, %264 ], [ %258, %255 ]
  %268 = and i64 %267, 131072
  %269 = icmp eq i64 %268, 0
  %270 = and i64 %267, 3072
  %271 = icmp eq i64 %270, 0
  br i1 %269, label %274, label %272

272:                                              ; preds = %266
  br i1 %271, label %276, label %273

273:                                              ; preds = %272
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 815, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.43)
  br label %276

274:                                              ; preds = %266
  br i1 %271, label %276, label %275

275:                                              ; preds = %274
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 817, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.44)
  br label %276

276:                                              ; preds = %273, %272, %275, %274
  %277 = load i64, ptr %6, align 8, !tbaa !25
  %278 = and i64 %277, 3072
  %279 = icmp eq i64 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %276
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 818, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.45)
  %281 = load i64, ptr %6, align 8, !tbaa !25
  br label %282

282:                                              ; preds = %280, %276
  %283 = phi i64 [ %281, %280 ], [ %277, %276 ]
  %284 = and i64 %283, 8388608
  %285 = icmp eq i64 %284, 0
  br i1 %285, label %290, label %286

286:                                              ; preds = %282
  %287 = call fastcc zeroext i1 @get_hash(ptr noundef nonnull %0, i32 noundef 0)
  br i1 %287, label %288, label %380, !prof !32

288:                                              ; preds = %286
  %289 = load i64, ptr %6, align 8, !tbaa !25
  br label %290

290:                                              ; preds = %288, %282
  %291 = phi i64 [ %289, %288 ], [ %283, %282 ]
  %292 = and i64 %291, 1
  %293 = icmp eq i64 %292, 0
  br i1 %293, label %295, label %294

294:                                              ; preds = %290
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 824, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.46)
  br label %295

295:                                              ; preds = %294, %290
  %296 = call i64 @runzip_fd(ptr noundef nonnull %0, i32 noundef %154, i32 noundef %217, i32 noundef %216, i64 noundef %236) #23
  %297 = icmp slt i64 %296, 0
  br i1 %297, label %380, label %298, !prof !9

298:                                              ; preds = %295
  %299 = load i64, ptr %6, align 8, !tbaa !25
  %300 = and i64 %299, 2105344
  %301 = icmp eq i64 %300, 8192
  br i1 %301, label %302, label %306

302:                                              ; preds = %298
  %303 = call zeroext i1 @dump_tmpoutfile(ptr noundef nonnull %0, i32 noundef %217)
  br i1 %303, label %304, label %380, !prof !32

304:                                              ; preds = %302
  %305 = load i64, ptr %6, align 8, !tbaa !25
  br label %306

306:                                              ; preds = %304, %298
  %307 = phi i64 [ %305, %304 ], [ %299, %298 ]
  %308 = and i64 %307, 1
  %309 = icmp eq i64 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %306
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 835, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.47)
  %311 = load i64, ptr %6, align 8, !tbaa !25
  br label %312

312:                                              ; preds = %310, %306
  %313 = phi i64 [ %311, %310 ], [ %307, %306 ]
  %314 = and i64 %313, 8197
  %315 = icmp eq i64 %314, 1
  br i1 %315, label %316, label %319

316:                                              ; preds = %312
  %317 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %318 = load ptr, ptr %317, align 8, !tbaa !38
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 837, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.48, ptr noundef %318)
  br label %319

319:                                              ; preds = %316, %312
  %320 = icmp eq i64 %236, 0
  br i1 %320, label %321, label %324

321:                                              ; preds = %319
  %322 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %323 = load i64, ptr %322, align 8, !tbaa !27
  br label %324

324:                                              ; preds = %321, %319
  %325 = phi i64 [ %323, %321 ], [ %236, %319 ]
  %326 = load i64, ptr %6, align 8, !tbaa !25
  %327 = and i64 %326, 8388608
  %328 = icmp eq i64 %327, 0
  %329 = and i64 %326, 1
  %330 = icmp eq i64 %329, 0
  br i1 %328, label %331, label %333

331:                                              ; preds = %324
  br i1 %330, label %335, label %332

332:                                              ; preds = %331
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 841, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.49, i64 noundef %325)
  br label %335

333:                                              ; preds = %324
  br i1 %330, label %335, label %334

334:                                              ; preds = %333
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 843, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.50)
  br label %335

335:                                              ; preds = %333, %334, %331, %332
  %336 = icmp sgt i32 %217, 0
  br i1 %336, label %337, label %344

337:                                              ; preds = %335
  %338 = call i32 @close(i32 noundef %216) #23
  %339 = icmp eq i32 %338, 0
  br i1 %339, label %340, label %343, !prof !32

340:                                              ; preds = %337
  %341 = call i32 @close(i32 noundef %217) #23
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %344, label %343, !prof !32

343:                                              ; preds = %337, %340
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 847, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.51)
  br label %380

344:                                              ; preds = %340, %335
  %345 = load i64, ptr %6, align 8, !tbaa !25
  %346 = and i64 %345, 12292
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %348, label %350

348:                                              ; preds = %344
  %349 = call fastcc zeroext i1 @preserve_times(ptr noundef nonnull %0, i32 noundef %154)
  br i1 %349, label %350, label %380, !prof !32

350:                                              ; preds = %344, %348
  %351 = call i32 @close(i32 noundef %154) #23
  %352 = load i64, ptr %6, align 8, !tbaa !25
  %353 = and i64 %352, 4098
  %354 = icmp eq i64 %353, 0
  br i1 %354, label %355, label %362

355:                                              ; preds = %350
  %356 = load ptr, ptr %0, align 8, !tbaa !50
  %357 = call i32 @unlink(ptr noundef %356) #23
  %358 = icmp eq i32 %357, 0
  br i1 %358, label %359, label %361, !prof !32

359:                                              ; preds = %355
  %360 = load i64, ptr %6, align 8, !tbaa !25
  br label %362

361:                                              ; preds = %355
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 857, ptr nonnull poison, ptr noundef nonnull @__func__.decompress_file, ptr noundef nonnull @.str.52, ptr noundef %43)
  br label %380

362:                                              ; preds = %359, %350
  %363 = phi i64 [ %360, %359 ], [ %352, %350 ]
  %364 = and i64 %363, 8388608
  %365 = icmp eq i64 %364, 0
  br i1 %365, label %377, label %366

366:                                              ; preds = %362
  %367 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  %368 = load ptr, ptr %367, align 8, !tbaa !69
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %368, i8 0, i64 512, i1 false)
  %369 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 46
  %370 = load ptr, ptr %369, align 8, !tbaa !70
  store i64 0, ptr %370, align 1
  %371 = load ptr, ptr %367, align 8, !tbaa !69
  %372 = call i32 @munlock(ptr noundef %371, i64 noundef 512) #23
  %373 = load ptr, ptr %369, align 8, !tbaa !70
  %374 = call i32 @munlock(ptr noundef %373, i64 noundef 64) #23
  %375 = load ptr, ptr %367, align 8, !tbaa !69
  call void @free(ptr noundef %375) #23
  store ptr null, ptr %367, align 8, !tbaa !69
  %376 = load ptr, ptr %369, align 8, !tbaa !70
  call void @free(ptr noundef %376) #23
  store ptr null, ptr %369, align 8, !tbaa !70
  br label %377

377:                                              ; preds = %362, %366
  %378 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %379 = load ptr, ptr %378, align 8, !tbaa !38
  call void @free(ptr noundef %379) #23
  store ptr null, ptr %378, align 8, !tbaa !38
  br label %380

380:                                              ; preds = %229, %144, %348, %302, %295, %286, %215, %198, %377, %361, %343, %254, %242, %213, %209, %192, %184, %176, %150, %130, %93
  %381 = phi i1 [ false, %130 ], [ false, %343 ], [ true, %377 ], [ false, %361 ], [ false, %242 ], [ false, %254 ], [ false, %209 ], [ false, %213 ], [ false, %176 ], [ false, %184 ], [ false, %192 ], [ false, %150 ], [ false, %93 ], [ false, %144 ], [ false, %198 ], [ false, %215 ], [ false, %286 ], [ false, %295 ], [ false, %302 ], [ false, %348 ], [ false, %229 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  ret i1 %381
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !12
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !20
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #24
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !21
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #23
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !22
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #23
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret void
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #18

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @preserve_perms(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #23
  %5 = call i32 @fstat64(i32 noundef %1, ptr noundef nonnull %4) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !32

7:                                                ; preds = %3
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 272, ptr nonnull poison, ptr noundef nonnull @__func__.preserve_perms, ptr noundef nonnull @.str.132)
  br label %37

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 3
  %10 = load i32, ptr %9, align 8, !tbaa !55
  %11 = and i32 %10, 438
  %12 = tail call i32 @fchmod(i32 noundef %2, i32 noundef %11) #23
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %22, label %14, !prof !32

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %16 = load i64, ptr %15, align 8, !tbaa !25
  %17 = and i64 %16, 3072
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !38
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 274, ptr nonnull poison, ptr noundef nonnull @__func__.preserve_perms, ptr noundef nonnull @.str.133, ptr noundef %21)
  br label %22

22:                                               ; preds = %14, %19, %8
  %23 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 4
  %24 = load i32, ptr %23, align 4, !tbaa !71
  %25 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 5
  %26 = load i32, ptr %25, align 8, !tbaa !72
  %27 = tail call i32 @fchown(i32 noundef %2, i32 noundef %24, i32 noundef %26) #23
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %37, label %29, !prof !32

29:                                               ; preds = %22
  %30 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %31 = load i64, ptr %30, align 8, !tbaa !25
  %32 = and i64 %31, 3072
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !38
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 278, ptr nonnull poison, ptr noundef nonnull @__func__.preserve_perms, ptr noundef nonnull @.str.134, ptr noundef %36)
  br label %37

37:                                               ; preds = %22, %34, %29, %7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #23
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @open_tmpoutbuf(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %4 = load i64, ptr %3, align 8, !tbaa !53
  store i64 %4, ptr %2, align 8, !tbaa !5
  br label %5

5:                                                ; preds = %17, %1
  call void @round_to_page(ptr noundef nonnull %2) #23
  %6 = load i64, ptr %2, align 8, !tbaa !5
  %7 = call noalias ptr @malloc(i64 noundef %6) #26
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %11 = load i64, ptr %10, align 8, !tbaa !25
  %12 = and i64 %11, 2048
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %9
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 523, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpoutbuf, ptr noundef nonnull @.str.135, i64 noundef %6)
  %15 = load i64, ptr %10, align 8, !tbaa !25
  %16 = load i64, ptr %2, align 8, !tbaa !5
  br label %22

17:                                               ; preds = %5
  %18 = sdiv i64 %6, 3
  %19 = shl nsw i64 %18, 1
  store i64 %19, ptr %2, align 8, !tbaa !5
  %20 = icmp slt i64 %6, 150000000
  br i1 %20, label %21, label %5

21:                                               ; preds = %17
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 528, ptr nonnull poison, ptr noundef nonnull @__func__.open_tmpoutbuf, ptr noundef nonnull @.str.136)
  br label %36

22:                                               ; preds = %9, %14
  %23 = phi i64 [ %6, %9 ], [ %16, %14 ]
  %24 = phi i64 [ %11, %9 ], [ %15, %14 ]
  %25 = or i64 %24, 2097152
  store i64 %25, ptr %10, align 8, !tbaa !25
  %26 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %27 = load i64, ptr %26, align 8, !tbaa !63
  %28 = sub nsw i64 %23, %27
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 11
  store i64 %28, ptr %29, align 8, !tbaa !73
  %30 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  store ptr %7, ptr %30, align 8, !tbaa !42
  %31 = and i64 %24, 20
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  store i64 24, ptr %34, align 8, !tbaa !30
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  store i64 24, ptr %35, align 8, !tbaa !29
  br label %36

36:                                               ; preds = %22, %33, %21
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #23
  ret i1 %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstatvfs64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !22
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !12
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !21
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #23
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !74
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !74
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !74
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @get_hash(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.termios, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %3) #23
  %4 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 512, i64 noundef 1) #28
  %5 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 512, i64 noundef 1) #28
  %6 = tail call noalias dereferenceable_or_null(512) ptr @calloc(i64 noundef 512, i64 noundef 1) #28
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  store ptr %6, ptr %7, align 8, !tbaa !69
  %8 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 64, i64 noundef 1) #28
  %9 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 46
  store ptr %8, ptr %9, align 8, !tbaa !70
  %10 = icmp ne ptr %4, null
  %11 = icmp ne ptr %5, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %17, !prof !75

13:                                               ; preds = %2
  %14 = icmp eq ptr %6, null
  %15 = icmp eq ptr %8, null
  %16 = or i1 %14, %15
  br i1 %16, label %17, label %18, !prof !9

17:                                               ; preds = %2, %13
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 612, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.137)
  tail call void @free(ptr noundef %5) #23
  tail call void @free(ptr noundef %4) #23
  br label %83

18:                                               ; preds = %13
  %19 = tail call i32 @mlock(ptr noundef nonnull %4, i64 noundef 512) #23
  %20 = tail call i32 @mlock(ptr noundef nonnull %5, i64 noundef 512) #23
  %21 = load ptr, ptr %7, align 8, !tbaa !69
  %22 = tail call i32 @mlock(ptr noundef %21, i64 noundef 512) #23
  %23 = load ptr, ptr %9, align 8, !tbaa !70
  %24 = tail call i32 @mlock(ptr noundef %23, i64 noundef 64) #23
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 41
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  %27 = icmp eq ptr %26, null
  br i1 %27, label %49, label %28

28:                                               ; preds = %18
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 42
  %30 = load ptr, ptr %29, align 8, !tbaa !77
  tail call void %26(ptr noundef %30, ptr noundef nonnull %4, i64 noundef 504) #23
  %31 = load i8, ptr %4, align 1, !tbaa !24
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 625, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.138)
  %34 = tail call i32 @munlock(ptr noundef nonnull %4, i64 noundef 512) #23
  %35 = tail call i32 @munlock(ptr noundef nonnull %5, i64 noundef 512) #23
  tail call void @free(ptr noundef nonnull %5) #23
  tail call void @free(ptr noundef nonnull %4) #23
  %36 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %36, i8 0, i64 512, i1 false)
  %37 = load ptr, ptr %9, align 8, !tbaa !70
  store i64 0, ptr %37, align 1
  %38 = load ptr, ptr %7, align 8, !tbaa !69
  %39 = tail call i32 @munlock(ptr noundef %38, i64 noundef 512) #23
  %40 = load ptr, ptr %9, align 8, !tbaa !70
  %41 = tail call i32 @munlock(ptr noundef %40, i64 noundef 64) #23
  %42 = load ptr, ptr %7, align 8, !tbaa !69
  tail call void @free(ptr noundef %42) #23
  store ptr null, ptr %7, align 8, !tbaa !69
  %43 = load ptr, ptr %9, align 8, !tbaa !70
  tail call void @free(ptr noundef %43) #23
  store ptr null, ptr %9, align 8, !tbaa !70
  br label %83

44:                                               ; preds = %28
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #25
  %46 = trunc i64 %45 to i32
  %47 = add i32 %46, 8
  %48 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 45
  store i32 %47, ptr %48, align 8, !tbaa !78
  br label %75

49:                                               ; preds = %18
  %50 = load ptr, ptr @stdin, align 8, !tbaa !20
  %51 = tail call i32 @fileno(ptr noundef %50) #23
  %52 = call i32 @tcgetattr(i32 noundef %51, ptr noundef nonnull %3) #23
  %53 = getelementptr inbounds %struct.termios, ptr %3, i64 0, i32 3
  %54 = load i32, ptr %53, align 4, !tbaa !79
  %55 = and i32 %54, -9
  store i32 %55, ptr %53, align 4, !tbaa !79
  %56 = load ptr, ptr @stdin, align 8, !tbaa !20
  %57 = call i32 @fileno(ptr noundef %56) #23
  %58 = call i32 @tcsetattr(i32 noundef %57, i32 noundef 0, ptr noundef nonnull %3) #23
  %59 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 45
  %60 = icmp eq i32 %1, 0
  br label %61

61:                                               ; preds = %68, %49
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 640, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.139)
  %62 = call fastcc i32 @get_pass(ptr noundef nonnull %0, ptr noundef nonnull %4)
  %63 = add nsw i32 %62, 8
  store i32 %63, ptr %59, align 8, !tbaa !78
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 642, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.80)
  br i1 %60, label %69, label %64

64:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 644, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.140)
  %65 = call fastcc i32 @get_pass(ptr noundef nonnull %0, ptr noundef nonnull %5)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 646, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.80)
  %66 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %5) #25
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %64
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 648, ptr nonnull poison, ptr noundef nonnull @__func__.get_hash, ptr noundef nonnull @.str.141)
  br label %61

69:                                               ; preds = %64, %61
  %70 = load i32, ptr %53, align 4, !tbaa !79
  %71 = or i32 %70, 8
  store i32 %71, ptr %53, align 4, !tbaa !79
  %72 = load ptr, ptr @stdin, align 8, !tbaa !20
  %73 = call i32 @fileno(ptr noundef %72) #23
  %74 = call i32 @tcsetattr(i32 noundef %73, i32 noundef 0, ptr noundef nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %5, i8 0, i64 512, i1 false)
  br label %75

75:                                               ; preds = %69, %44
  %76 = load ptr, ptr %7, align 8, !tbaa !69
  %77 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43
  %78 = load i64, ptr %77, align 8
  store i64 %78, ptr %76, align 1
  %79 = load ptr, ptr %7, align 8, !tbaa !69
  %80 = getelementptr inbounds i8, ptr %79, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(504) %80, ptr noundef nonnull align 1 dereferenceable(504) %4, i64 504, i1 false)
  call void @lrz_stretch(ptr noundef nonnull %0) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %4, i8 0, i64 512, i1 false)
  %81 = call i32 @munlock(ptr noundef nonnull %4, i64 noundef 512) #23
  %82 = call i32 @munlock(ptr noundef nonnull %5, i64 noundef 512) #23
  call void @free(ptr noundef nonnull %5) #23
  call void @free(ptr noundef %4) #23
  br label %83

83:                                               ; preds = %75, %33, %17
  %84 = phi i1 [ false, %17 ], [ true, %75 ], [ false, %33 ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %3) #23
  ret i1 %84
}

declare i64 @runzip_fd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define internal fastcc zeroext i1 @preserve_times(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca %struct.utimbuf, align 8
  %4 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #23
  %5 = call i32 @fstat64(i32 noundef %1, ptr noundef nonnull %4) #23
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %8, label %7, !prof !32

7:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 288, ptr nonnull poison, ptr noundef nonnull @__func__.preserve_times, ptr noundef nonnull @.str.132)
  br label %23

8:                                                ; preds = %2
  store i64 0, ptr %3, align 8, !tbaa !81
  %9 = getelementptr inbounds %struct.stat, ptr %4, i64 0, i32 12
  %10 = load i64, ptr %9, align 8, !tbaa !83
  %11 = getelementptr inbounds %struct.utimbuf, ptr %3, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !84
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !38
  %14 = call i32 @utime(ptr noundef %13, ptr noundef nonnull %3) #23
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %23, label %16, !prof !32

16:                                               ; preds = %8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %18 = load i64, ptr %17, align 8, !tbaa !25
  %19 = and i64 %18, 3072
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %16
  %22 = load ptr, ptr %12, align 8, !tbaa !38
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 292, ptr nonnull poison, ptr noundef nonnull @__func__.preserve_times, ptr noundef nonnull @.str.144, ptr noundef %22)
  br label %23

23:                                               ; preds = %8, %21, %16, %7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  ret i1 %6
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @get_header_info(ptr noundef %0, i32 noundef %1, ptr nocapture noundef %2, ptr nocapture noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6) local_unnamed_addr #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = tail call i64 @read(i32 noundef %1, ptr noundef %2, i64 noundef 1) #23
  %12 = icmp eq i64 %11, 1
  br i1 %12, label %14, label %13, !prof !32

13:                                               ; preds = %7
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 871, ptr nonnull poison, ptr noundef nonnull @__func__.get_header_info, ptr noundef nonnull @.str.53)
  br label %57

14:                                               ; preds = %7
  store i64 0, ptr %5, align 8, !tbaa !5
  store i64 0, ptr %4, align 8, !tbaa !5
  store i64 0, ptr %3, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %16 = load i8, ptr %15, align 1, !tbaa !34
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %42

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %20 = load i8, ptr %19, align 2, !tbaa !35
  %21 = icmp slt i8 %20, 4
  br i1 %21, label %22, label %40

22:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10) #23
  %23 = call i64 @read(i32 noundef %1, ptr noundef nonnull %8, i64 noundef 4) #23
  %24 = icmp eq i64 %23, 4
  br i1 %24, label %25, label %31, !prof !32

25:                                               ; preds = %22
  %26 = call i64 @read(i32 noundef %1, ptr noundef nonnull %9, i64 noundef 4) #23
  %27 = icmp eq i64 %26, 4
  br i1 %27, label %28, label %31, !prof !32

28:                                               ; preds = %25
  %29 = call i64 @read(i32 noundef %1, ptr noundef nonnull %10, i64 noundef 4) #23
  %30 = icmp eq i64 %29, 4
  br i1 %30, label %33, label %31, !prof !32

31:                                               ; preds = %28, %25, %22
  %32 = phi i32 [ 878, %22 ], [ 880, %25 ], [ 882, %28 ]
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef %32, ptr nonnull poison, ptr noundef nonnull @__func__.get_header_info, ptr noundef nonnull @.str.54)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  br label %57

33:                                               ; preds = %28
  %34 = load i32, ptr %8, align 4, !tbaa !64
  %35 = load i32, ptr %9, align 4, !tbaa !64
  %36 = load i32, ptr %10, align 4, !tbaa !64
  %37 = zext i32 %34 to i64
  store i64 %37, ptr %3, align 8, !tbaa !5
  %38 = zext i32 %35 to i64
  store i64 %38, ptr %4, align 8, !tbaa !5
  %39 = zext i32 %36 to i64
  store i64 %39, ptr %5, align 8, !tbaa !5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  br label %57

40:                                               ; preds = %18
  %41 = icmp eq i8 %20, 5
  br i1 %41, label %44, label %42

42:                                               ; preds = %14, %40
  %43 = sext i32 %6 to i64
  br label %44

44:                                               ; preds = %40, %42
  %45 = phi i64 [ %43, %42 ], [ 8, %40 ]
  %46 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %3, i64 noundef %45) #23
  %47 = icmp eq i64 %46, %45
  br i1 %47, label %49, label %48, !prof !32

48:                                               ; preds = %44
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 897, ptr nonnull poison, ptr noundef nonnull @__func__.get_header_info, ptr noundef nonnull @.str.54)
  br label %57

49:                                               ; preds = %44
  %50 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %4, i64 noundef %45) #23
  %51 = icmp eq i64 %50, %45
  br i1 %51, label %53, label %52, !prof !32

52:                                               ; preds = %49
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 899, ptr nonnull poison, ptr noundef nonnull @__func__.get_header_info, ptr noundef nonnull @.str.54)
  br label %57

53:                                               ; preds = %49
  %54 = tail call i64 @read(i32 noundef %1, ptr noundef nonnull %5, i64 noundef %45) #23
  %55 = icmp eq i64 %54, %45
  br i1 %55, label %57, label %56, !prof !32

56:                                               ; preds = %53
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 901, ptr nonnull poison, ptr noundef nonnull @__func__.get_header_info, ptr noundef nonnull @.str.55)
  br label %57

57:                                               ; preds = %53, %56, %52, %48, %33, %31, %13
  %58 = phi i1 [ false, %13 ], [ false, %31 ], [ true, %33 ], [ false, %48 ], [ false, %52 ], [ false, %56 ], [ true, %53 ]
  ret i1 %58
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @get_fileinfo(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [24 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca %struct.stat, align 8
  %11 = alloca %struct.stat, align 8
  %12 = alloca [16 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #23
  store i64 0, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %8) #23
  store i8 0, ptr %8, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #23
  store i8 0, ptr %9, align 1, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %10) #23
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa !25
  %15 = and i64 %14, 4096
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %48

17:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #23
  %18 = load ptr, ptr %0, align 8, !tbaa !50
  %19 = call i32 @stat64(ptr noundef %18, ptr noundef nonnull %11) #23
  %20 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 3
  %21 = load i32, ptr %20, align 8, !tbaa !55
  %22 = and i32 %21, 61440
  %23 = icmp eq i32 %22, 32768
  %24 = load ptr, ptr %0, align 8, !tbaa !50
  br i1 %23, label %41, label %25

25:                                               ; preds = %17
  %26 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %24, i32 noundef 46) #25
  %27 = icmp eq ptr %26, null
  br i1 %27, label %41, label %28

28:                                               ; preds = %25
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %30 = load ptr, ptr %29, align 8, !tbaa !58
  %31 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %30) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %28
  %34 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #25
  %35 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %30) #25
  %36 = add i64 %34, 1
  %37 = add i64 %36, %35
  %38 = alloca i8, i64 %37, align 16
  %39 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %24) #23
  %40 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %38, ptr noundef nonnull dereferenceable(1) %30) #23
  br label %45

41:                                               ; preds = %17, %28, %25
  %42 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %24) #25
  %43 = add i64 %42, 1
  %44 = alloca i8, i64 %43, align 16
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %44, ptr align 1 %24, i64 %43, i1 false)
  br label %45

45:                                               ; preds = %41, %33
  %46 = phi ptr [ %44, %41 ], [ %38, %33 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #23
  %47 = load i64, ptr %13, align 8, !tbaa !25
  br label %48

48:                                               ; preds = %45, %1
  %49 = phi i64 [ %14, %1 ], [ %47, %45 ]
  %50 = phi ptr [ null, %1 ], [ %46, %45 ]
  %51 = and i64 %49, 4096
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = call i32 (ptr, i32, ...) @open64(ptr noundef %50, i32 noundef 0) #23
  %55 = icmp eq i32 %54, -1
  br i1 %55, label %56, label %57, !prof !9

56:                                               ; preds = %53
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 955, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.35, ptr noundef %50)
  br label %522

57:                                               ; preds = %48, %53
  %58 = phi i32 [ %54, %53 ], [ 0, %48 ]
  %59 = call i32 @fstat64(i32 noundef %58, ptr noundef nonnull %10) #23
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %62, label %61, !prof !32

61:                                               ; preds = %57
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 960, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.56)
  br label %516

62:                                               ; preds = %57
  %63 = getelementptr inbounds %struct.stat, ptr %10, i64 0, i32 8
  %64 = load i64, ptr %63, align 8, !tbaa !85
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %65 = call i64 @read(i32 noundef %58, ptr noundef nonnull %2, i64 noundef 24) #23
  %66 = icmp eq i64 %65, 24
  br i1 %66, label %68, label %67, !prof !32

67:                                               ; preds = %62
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 258, ptr nonnull poison, ptr noundef nonnull @__func__.read_magic, ptr noundef nonnull @.str.9)
  br label %70

68:                                               ; preds = %62
  %69 = call fastcc zeroext i1 @get_magic(ptr noundef nonnull %0, ptr noundef nonnull %2)
  br i1 %69, label %71, label %70, !prof !32

70:                                               ; preds = %67, %68
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  br label %516

71:                                               ; preds = %68
  %72 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 34
  %73 = load i64, ptr %72, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  %74 = load i64, ptr %13, align 8, !tbaa !25
  %75 = and i64 %74, 8388608
  %76 = icmp eq i64 %75, 0
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 968, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.57)
  %78 = load i64, ptr %13, align 8, !tbaa !25
  %79 = and i64 %78, 4096
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %81, label %513

81:                                               ; preds = %77
  %82 = call i32 @close(i32 noundef %58) #23
  br label %513

83:                                               ; preds = %71
  %84 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %85 = load i8, ptr %84, align 1, !tbaa !34
  %86 = icmp eq i8 %85, 0
  br i1 %86, label %87, label %123

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %89 = load i8, ptr %88, align 2, !tbaa !35
  %90 = icmp sgt i8 %89, 4
  br i1 %90, label %91, label %117

91:                                               ; preds = %87
  %92 = call i64 @read(i32 noundef %58, ptr noundef nonnull %8, i64 noundef 1) #23
  %93 = icmp eq i64 %92, 1
  br i1 %93, label %95, label %94, !prof !32

94:                                               ; preds = %91
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 975, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.58)
  br label %516

95:                                               ; preds = %91
  %96 = load i8, ptr %84, align 1, !tbaa !34
  %97 = icmp eq i8 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %95
  %99 = load i8, ptr %8, align 1, !tbaa !24
  br label %123

100:                                              ; preds = %95
  %101 = load i8, ptr %88, align 2, !tbaa !35
  %102 = icmp sgt i8 %101, 5
  br i1 %102, label %103, label %119

103:                                              ; preds = %100
  %104 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  %105 = call i64 @read(i32 noundef %58, ptr noundef nonnull %104, i64 noundef 1) #23
  %106 = icmp eq i64 %105, 1
  br i1 %106, label %108, label %107, !prof !32

107:                                              ; preds = %103
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 978, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.59)
  br label %516

108:                                              ; preds = %103
  %109 = load i8, ptr %8, align 1, !tbaa !24
  %110 = sext i8 %109 to i64
  %111 = call i64 @read(i32 noundef %58, ptr noundef nonnull %7, i64 noundef %110) #23
  %112 = icmp eq i64 %111, %110
  br i1 %112, label %114, label %113, !prof !32

113:                                              ; preds = %108
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 980, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.60)
  br label %516

114:                                              ; preds = %108
  %115 = load i8, ptr %84, align 1, !tbaa !34
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %87, %114
  %118 = load i8, ptr %88, align 2, !tbaa !35
  br label %119

119:                                              ; preds = %117, %100
  %120 = phi i8 [ %118, %117 ], [ %101, %100 ]
  %121 = icmp slt i8 %120, 4
  br i1 %121, label %138, label %122

122:                                              ; preds = %119
  switch i8 %120, label %130 [
    i8 4, label %138
    i8 5, label %137
  ]

123:                                              ; preds = %98, %83, %114
  %124 = phi i8 [ %99, %98 ], [ 0, %83 ], [ %109, %114 ]
  %125 = sext i8 %124 to i32
  %126 = add nsw i32 %125, 26
  %127 = sext i32 %126 to i64
  %128 = mul nsw i32 %125, 3
  %129 = add nsw i32 %128, 1
  br label %142

130:                                              ; preds = %122
  %131 = load i8, ptr %8, align 1, !tbaa !24
  %132 = sext i8 %131 to i32
  %133 = add nsw i32 %132, 26
  %134 = sext i32 %133 to i64
  %135 = mul nsw i32 %132, 3
  %136 = add nsw i32 %135, 1
  br label %142

137:                                              ; preds = %122
  br label %138

138:                                              ; preds = %122, %137, %119
  %139 = phi i64 [ 24, %122 ], [ 24, %119 ], [ 25, %137 ]
  %140 = phi i32 [ 25, %122 ], [ 13, %119 ], [ 25, %137 ]
  %141 = icmp eq i64 %73, 0
  br i1 %141, label %368, label %142

142:                                              ; preds = %130, %123, %138
  %143 = phi i64 [ %139, %138 ], [ %127, %123 ], [ %134, %130 ]
  %144 = phi i32 [ %140, %138 ], [ %129, %123 ], [ %136, %130 ]
  %145 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  %146 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %147 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  br label %148

148:                                              ; preds = %361, %142
  %149 = phi i32 [ %168, %361 ], [ 0, %142 ]
  %150 = phi i32 [ %367, %361 ], [ %144, %142 ]
  %151 = phi i64 [ %365, %361 ], [ %143, %142 ]
  %152 = phi i64 [ %287, %361 ], [ 0, %142 ]
  %153 = phi i64 [ %286, %361 ], [ 0, %142 ]
  %154 = sext i32 %150 to i64
  %155 = load i64, ptr %7, align 8
  %156 = icmp eq i64 %155, 0
  br label %157

157:                                              ; preds = %346, %148
  %158 = phi i32 [ %149, %148 ], [ %168, %346 ]
  %159 = phi i64 [ %151, %148 ], [ %347, %346 ]
  %160 = phi i64 [ %152, %148 ], [ %287, %346 ]
  %161 = phi i64 [ %153, %148 ], [ %286, %346 ]
  store i64 0, ptr %6, align 16, !tbaa !5
  store i64 %154, ptr %145, align 8, !tbaa !5
  %162 = load i64, ptr %13, align 8, !tbaa !25
  %163 = and i64 %162, 3072
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %167, label %165

165:                                              ; preds = %157
  %166 = add nsw i32 %158, 1
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1006, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.61, i32 noundef %166)
  br label %167

167:                                              ; preds = %165, %157
  %168 = phi i32 [ %166, %165 ], [ %158, %157 ]
  %169 = load i8, ptr %8, align 1, !tbaa !24
  %170 = icmp eq i8 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %167
  %172 = load i64, ptr %13, align 8, !tbaa !25
  %173 = and i64 %172, 3072
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %171
  %176 = sext i8 %169 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1008, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.62, i32 noundef %176)
  br label %177

177:                                              ; preds = %171, %175, %167
  br i1 %156, label %183, label %178

178:                                              ; preds = %177
  %179 = load i64, ptr %13, align 8, !tbaa !25
  %180 = and i64 %179, 3072
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %178
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1011, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.63, i64 noundef %155)
  br label %183

183:                                              ; preds = %178, %182, %177
  %184 = sext i8 %169 to i32
  br label %185

185:                                              ; preds = %183, %321
  %186 = phi i1 [ true, %183 ], [ false, %321 ]
  %187 = phi i64 [ 0, %183 ], [ 1, %321 ]
  %188 = phi i64 [ %161, %183 ], [ %286, %321 ]
  %189 = phi i64 [ %160, %183 ], [ %287, %321 ]
  %190 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 %187
  %191 = load i64, ptr %190, align 8, !tbaa !5
  %192 = add nsw i64 %191, %159
  %193 = call i64 @lseek64(i32 noundef %58, i64 noundef %192, i32 noundef 0) #23
  %194 = icmp eq i64 %193, -1
  br i1 %194, label %195, label %196, !prof !9

195:                                              ; preds = %185
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1017, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.64)
  br label %516

196:                                              ; preds = %185
  %197 = call zeroext i1 @get_header_info(ptr noundef nonnull %0, i32 noundef %58, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %184)
  br i1 %197, label %198, label %522, !prof !32

198:                                              ; preds = %196
  %199 = load i64, ptr %13, align 8, !tbaa !25
  %200 = and i64 %199, 3072
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %205, label %202

202:                                              ; preds = %198
  %203 = trunc i64 %187 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1021, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.65, i32 noundef %203)
  %204 = load i64, ptr %13, align 8, !tbaa !25
  br label %205

205:                                              ; preds = %198, %202
  %206 = phi i64 [ %199, %198 ], [ %204, %202 ]
  %207 = and i64 %206, 2048
  %208 = icmp eq i64 %207, 0
  br i1 %208, label %211, label %209

209:                                              ; preds = %205
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1022, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.66, i64 noundef %159)
  %210 = load i64, ptr %13, align 8, !tbaa !25
  br label %211

211:                                              ; preds = %205, %209
  %212 = phi i64 [ %206, %205 ], [ %210, %209 ]
  %213 = and i64 %212, 3072
  %214 = icmp eq i64 %213, 0
  br i1 %214, label %216, label %215

215:                                              ; preds = %211
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1023, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.67)
  br label %216

216:                                              ; preds = %215, %211
  %217 = load i64, ptr %5, align 8, !tbaa !5
  br label %218

218:                                              ; preds = %318, %216
  %219 = phi i64 [ %217, %216 ], [ %234, %318 ]
  %220 = phi i64 [ %189, %216 ], [ %287, %318 ]
  %221 = phi i64 [ %188, %216 ], [ %286, %318 ]
  %222 = phi i32 [ 1, %216 ], [ %319, %318 ]
  %223 = add nsw i64 %219, %159
  %224 = icmp sgt i64 %223, %64
  br i1 %224, label %225, label %226, !prof !9

225:                                              ; preds = %218
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1028, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.68)
  br label %516

226:                                              ; preds = %218
  %227 = call i64 @lseek64(i32 noundef %58, i64 noundef %223, i32 noundef 0) #23
  %228 = icmp eq i64 %227, -1
  %229 = zext i1 %228 to i64
  br i1 %228, label %230, label %231, !prof !9

230:                                              ; preds = %226
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 1030, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.64)
  br label %516

231:                                              ; preds = %226
  %232 = call zeroext i1 @get_header_info(ptr noundef %0, i32 noundef %58, ptr noundef nonnull %9, ptr noundef nonnull %4, ptr noundef nonnull %3, ptr noundef nonnull %5, i32 noundef %184)
  br i1 %232, label %233, label %522, !prof !32

233:                                              ; preds = %231
  %234 = load i64, ptr %5, align 8, !tbaa !5
  %235 = icmp slt i64 %234, 0
  %236 = load i64, ptr %4, align 8
  %237 = icmp slt i64 %236, 0
  %238 = select i1 %235, i1 true, i1 %237
  %239 = load i64, ptr %3, align 8
  %240 = icmp slt i64 %239, 0
  %241 = select i1 %238, i1 true, i1 %240
  br i1 %241, label %242, label %243, !prof !86

242:                                              ; preds = %233
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 1035, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.69)
  br label %516

243:                                              ; preds = %233
  %244 = load i64, ptr %13, align 8, !tbaa !25
  %245 = and i64 %244, 3072
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %248, label %247

247:                                              ; preds = %243
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1036, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.70, i32 noundef %222)
  br label %248

248:                                              ; preds = %247, %243
  %249 = load i8, ptr %9, align 1, !tbaa !24
  switch i8 %249, label %280 [
    i8 3, label %250
    i8 4, label %255
    i8 5, label %260
    i8 6, label %265
    i8 7, label %270
    i8 8, label %275
  ]

250:                                              ; preds = %248
  %251 = load i64, ptr %13, align 8, !tbaa !25
  %252 = and i64 %251, 3072
  %253 = icmp eq i64 %252, 0
  br i1 %253, label %285, label %254

254:                                              ; preds = %250
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1038, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.71)
  br label %285

255:                                              ; preds = %248
  %256 = load i64, ptr %13, align 8, !tbaa !25
  %257 = and i64 %256, 3072
  %258 = icmp eq i64 %257, 0
  br i1 %258, label %285, label %259

259:                                              ; preds = %255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1040, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.72)
  br label %285

260:                                              ; preds = %248
  %261 = load i64, ptr %13, align 8, !tbaa !25
  %262 = and i64 %261, 3072
  %263 = icmp eq i64 %262, 0
  br i1 %263, label %285, label %264

264:                                              ; preds = %260
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1042, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.73)
  br label %285

265:                                              ; preds = %248
  %266 = load i64, ptr %13, align 8, !tbaa !25
  %267 = and i64 %266, 3072
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %285, label %269

269:                                              ; preds = %265
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1044, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.74)
  br label %285

270:                                              ; preds = %248
  %271 = load i64, ptr %13, align 8, !tbaa !25
  %272 = and i64 %271, 3072
  %273 = icmp eq i64 %272, 0
  br i1 %273, label %285, label %274

274:                                              ; preds = %270
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1046, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.75)
  br label %285

275:                                              ; preds = %248
  %276 = load i64, ptr %13, align 8, !tbaa !25
  %277 = and i64 %276, 3072
  %278 = icmp eq i64 %277, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %275
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1048, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.76)
  br label %285

280:                                              ; preds = %248
  %281 = load i64, ptr %13, align 8, !tbaa !25
  %282 = and i64 %281, 3072
  %283 = icmp eq i64 %282, 0
  br i1 %283, label %285, label %284

284:                                              ; preds = %280
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1050, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.77)
  br label %285

285:                                              ; preds = %259, %255, %269, %265, %279, %275, %284, %280, %270, %274, %260, %264, %250, %254
  %286 = add nsw i64 %239, %221
  %287 = add nsw i64 %236, %220
  %288 = load i64, ptr %13, align 8, !tbaa !25
  %289 = and i64 %288, 3072
  %290 = icmp eq i64 %289, 0
  br i1 %290, label %307, label %291

291:                                              ; preds = %285
  %292 = icmp ult i64 %239, 100
  br i1 %292, label %293, label %298

293:                                              ; preds = %291
  %294 = mul nsw i64 %236, 100
  %295 = sitofp i64 %239 to double
  %296 = icmp eq i64 %239, 0
  br i1 %296, label %297, label %301

297:                                              ; preds = %293
  br label %301

298:                                              ; preds = %291
  %299 = udiv i64 %239, 100
  %300 = sitofp i64 %299 to double
  br label %301

301:                                              ; preds = %293, %297, %298
  %302 = phi i64 [ %294, %293 ], [ %294, %297 ], [ %236, %298 ]
  %303 = phi double [ %295, %293 ], [ 1.000000e+00, %297 ], [ %300, %298 ]
  %304 = sitofp i64 %302 to double
  %305 = fdiv double %304, %303
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1053, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.78, double noundef %305, i64 noundef %236, i64 noundef %239)
  %306 = load i64, ptr %13, align 8, !tbaa !25
  br label %307

307:                                              ; preds = %285, %301
  %308 = phi i64 [ %288, %285 ], [ %306, %301 ]
  %309 = and i64 %308, 2048
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %313, label %311

311:                                              ; preds = %307
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 1054, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.79, i64 noundef %229, i64 noundef %234)
  %312 = load i64, ptr %13, align 8, !tbaa !25
  br label %313

313:                                              ; preds = %307, %311
  %314 = phi i64 [ %308, %307 ], [ %312, %311 ]
  %315 = and i64 %314, 3072
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1055, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.80)
  br label %318

318:                                              ; preds = %317, %313
  %319 = add nuw nsw i32 %222, 1
  %320 = icmp eq i64 %234, 0
  br i1 %320, label %321, label %218, !llvm.loop !87

321:                                              ; preds = %318
  br i1 %186, label %185, label %322

322:                                              ; preds = %321
  %323 = call i64 @lseek64(i32 noundef %58, i64 noundef %236, i32 noundef 1) #23
  %324 = icmp eq i64 %323, -1
  br i1 %324, label %325, label %326, !prof !9

325:                                              ; preds = %322
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1062, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.81)
  br label %516

326:                                              ; preds = %322
  %327 = load i64, ptr %13, align 8, !tbaa !25
  %328 = lshr i64 %327, 13
  %329 = and i64 %328, 16
  %330 = sub nsw i64 %64, %329
  %331 = icmp slt i64 %323, %330
  br i1 %331, label %332, label %368

332:                                              ; preds = %326
  %333 = load i8, ptr %84, align 1, !tbaa !34
  %334 = icmp eq i8 %333, 0
  br i1 %334, label %335, label %346

335:                                              ; preds = %332
  %336 = load i8, ptr %146, align 2, !tbaa !35
  %337 = icmp sgt i8 %336, 4
  br i1 %337, label %338, label %346

338:                                              ; preds = %335
  %339 = call i64 @read(i32 noundef %58, ptr noundef nonnull %8, i64 noundef 1) #23
  %340 = icmp eq i64 %339, 1
  br i1 %340, label %342, label %341, !prof !32

341:                                              ; preds = %338
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1069, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.58)
  br label %516

342:                                              ; preds = %338
  %343 = add nuw nsw i64 %323, 1
  %344 = load i8, ptr %84, align 1, !tbaa !34
  %345 = icmp eq i8 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %342, %348, %335, %332
  %347 = phi i64 [ %343, %342 ], [ %343, %348 ], [ %323, %335 ], [ %323, %332 ]
  br label %157

348:                                              ; preds = %342
  %349 = load i8, ptr %146, align 2, !tbaa !35
  %350 = icmp sgt i8 %349, 5
  br i1 %350, label %351, label %346

351:                                              ; preds = %348
  %352 = call i64 @read(i32 noundef %58, ptr noundef nonnull %147, i64 noundef 1) #23
  %353 = icmp eq i64 %352, 1
  br i1 %353, label %355, label %354, !prof !32

354:                                              ; preds = %351
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1073, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.59)
  br label %516

355:                                              ; preds = %351
  %356 = load i8, ptr %8, align 1, !tbaa !24
  %357 = sext i8 %356 to i64
  %358 = call i64 @read(i32 noundef %58, ptr noundef nonnull %7, i64 noundef %357) #23
  %359 = icmp eq i64 %358, %357
  br i1 %359, label %361, label %360, !prof !32

360:                                              ; preds = %355
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1075, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.60)
  br label %516

361:                                              ; preds = %355
  %362 = sext i8 %356 to i32
  %363 = add nsw i32 %362, 1
  %364 = sext i32 %363 to i64
  %365 = add nsw i64 %343, %364
  %366 = mul nsw i32 %362, 3
  %367 = add nsw i32 %366, 1
  br label %148

368:                                              ; preds = %326, %138
  %369 = phi i8 [ 0, %138 ], [ %249, %326 ]
  %370 = phi i64 [ 0, %138 ], [ %73, %326 ]
  %371 = phi i64 [ %139, %138 ], [ %323, %326 ]
  %372 = phi i64 [ 0, %138 ], [ %287, %326 ]
  %373 = phi i64 [ 0, %138 ], [ %286, %326 ]
  %374 = icmp sgt i64 %371, %64
  br i1 %374, label %375, label %376, !prof !9

375:                                              ; preds = %368
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 1084, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.68)
  br label %516

376:                                              ; preds = %368
  %377 = load i64, ptr %13, align 8, !tbaa !25
  %378 = and i64 %377, 3072
  %379 = icmp eq i64 %378, 0
  br i1 %379, label %431, label %380

380:                                              ; preds = %376
  %381 = icmp slt i64 %370, 100
  br i1 %381, label %382, label %387

382:                                              ; preds = %380
  %383 = mul nsw i64 %373, 100
  %384 = sitofp i64 %370 to double
  %385 = icmp eq i64 %370, 0
  br i1 %385, label %386, label %390

386:                                              ; preds = %382
  br label %390

387:                                              ; preds = %380
  %388 = udiv i64 %370, 100
  %389 = sitofp i64 %388 to double
  br label %390

390:                                              ; preds = %387, %386, %382
  %391 = phi i64 [ %383, %382 ], [ %383, %386 ], [ %373, %387 ]
  %392 = phi double [ %384, %382 ], [ 1.000000e+00, %386 ], [ %389, %387 ]
  %393 = sitofp i64 %391 to double
  %394 = fdiv double %393, %392
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1087, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.82, double noundef %394, i64 noundef %373, i64 noundef %370)
  %395 = load i64, ptr %13, align 8, !tbaa !25
  %396 = and i64 %395, 3072
  %397 = icmp eq i64 %396, 0
  br i1 %397, label %431, label %398

398:                                              ; preds = %390
  %399 = icmp slt i64 %373, 100
  br i1 %399, label %400, label %405

400:                                              ; preds = %398
  %401 = mul nsw i64 %372, 100
  %402 = sitofp i64 %373 to double
  %403 = icmp eq i64 %373, 0
  br i1 %403, label %404, label %408

404:                                              ; preds = %400
  br label %408

405:                                              ; preds = %398
  %406 = udiv i64 %373, 100
  %407 = sitofp i64 %406 to double
  br label %408

408:                                              ; preds = %405, %404, %400
  %409 = phi i64 [ %401, %400 ], [ %401, %404 ], [ %372, %405 ]
  %410 = phi double [ %402, %400 ], [ 1.000000e+00, %404 ], [ %407, %405 ]
  %411 = sitofp i64 %409 to double
  %412 = fdiv double %411, %410
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1090, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.83, double noundef %412, i64 noundef %372, i64 noundef %373)
  %413 = load i64, ptr %13, align 8, !tbaa !25
  %414 = and i64 %413, 3072
  %415 = icmp eq i64 %414, 0
  br i1 %415, label %431, label %416

416:                                              ; preds = %408
  %417 = icmp slt i64 %370, 100
  br i1 %417, label %418, label %423

418:                                              ; preds = %416
  %419 = mul nsw i64 %372, 100
  %420 = sitofp i64 %370 to double
  %421 = icmp eq i64 %370, 0
  br i1 %421, label %422, label %426

422:                                              ; preds = %418
  br label %426

423:                                              ; preds = %416
  %424 = udiv i64 %370, 100
  %425 = sitofp i64 %424 to double
  br label %426

426:                                              ; preds = %418, %422, %423
  %427 = phi i64 [ %419, %418 ], [ %419, %422 ], [ %372, %423 ]
  %428 = phi double [ %420, %418 ], [ 1.000000e+00, %422 ], [ %425, %423 ]
  %429 = sitofp i64 %427 to double
  %430 = fdiv double %429, %428
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 3, i32 noundef 1093, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.84, double noundef %430, i64 noundef %372, i64 noundef %370)
  br label %431

431:                                              ; preds = %376, %390, %426, %408
  %432 = sitofp i64 %370 to x86_fp80
  %433 = sitofp i64 %64 to x86_fp80
  %434 = fdiv x86_fp80 %432, %433
  %435 = load i8, ptr %84, align 1, !tbaa !34
  %436 = sext i8 %435 to i32
  %437 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %438 = load i8, ptr %437, align 2, !tbaa !35
  %439 = sext i8 %438 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1097, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.85, ptr noundef %50, i32 noundef %436, i32 noundef %439)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1099, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.86)
  switch i8 %369, label %446 [
    i8 3, label %440
    i8 4, label %441
    i8 5, label %442
    i8 6, label %443
    i8 7, label %444
    i8 8, label %445
  ]

440:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1101, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.87)
  br label %447

441:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1103, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.88)
  br label %447

442:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1105, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.89)
  br label %447

443:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1107, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.90)
  br label %447

444:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1109, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.91)
  br label %447

445:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1111, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.92)
  br label %447

446:                                              ; preds = %431
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1113, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.93)
  br label %447

447:                                              ; preds = %441, %443, %445, %446, %444, %442, %440
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1114, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.94, i64 noundef %370)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1115, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.95, i64 noundef %64)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1116, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.96, x86_fp80 noundef %434)
  %448 = load i64, ptr %13, align 8, !tbaa !25
  %449 = and i64 %448, 131072
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %508, label %451

451:                                              ; preds = %447
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #23
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1122, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.97)
  %452 = call i64 @lseek64(i32 noundef %58, i64 noundef -16, i32 noundef 2) #23
  %453 = icmp eq i64 %452, -1
  br i1 %453, label %454, label %455, !prof !9

454:                                              ; preds = %451
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1124, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.98)
  br label %507

455:                                              ; preds = %451
  %456 = call i64 @read(i32 noundef %58, ptr noundef nonnull %12, i64 noundef 16) #23
  %457 = icmp eq i64 %456, 16
  br i1 %457, label %459, label %458, !prof !32

458:                                              ; preds = %455
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1126, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.99)
  br label %507

459:                                              ; preds = %455
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1127, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.100)
  %460 = load i8, ptr %12, align 16, !tbaa !24
  %461 = zext i8 %460 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %461)
  %462 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 1
  %463 = load i8, ptr %462, align 1, !tbaa !24
  %464 = zext i8 %463 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %464)
  %465 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 2
  %466 = load i8, ptr %465, align 2, !tbaa !24
  %467 = zext i8 %466 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %467)
  %468 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 3
  %469 = load i8, ptr %468, align 1, !tbaa !24
  %470 = zext i8 %469 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %470)
  %471 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 4
  %472 = load i8, ptr %471, align 4, !tbaa !24
  %473 = zext i8 %472 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %473)
  %474 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 5
  %475 = load i8, ptr %474, align 1, !tbaa !24
  %476 = zext i8 %475 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %476)
  %477 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 6
  %478 = load i8, ptr %477, align 2, !tbaa !24
  %479 = zext i8 %478 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %479)
  %480 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 7
  %481 = load i8, ptr %480, align 1, !tbaa !24
  %482 = zext i8 %481 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %482)
  %483 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 8
  %484 = load i8, ptr %483, align 8, !tbaa !24
  %485 = zext i8 %484 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %485)
  %486 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 9
  %487 = load i8, ptr %486, align 1, !tbaa !24
  %488 = zext i8 %487 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %488)
  %489 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 10
  %490 = load i8, ptr %489, align 2, !tbaa !24
  %491 = zext i8 %490 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %491)
  %492 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 11
  %493 = load i8, ptr %492, align 1, !tbaa !24
  %494 = zext i8 %493 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %494)
  %495 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 12
  %496 = load i8, ptr %495, align 4, !tbaa !24
  %497 = zext i8 %496 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %497)
  %498 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 13
  %499 = load i8, ptr %498, align 1, !tbaa !24
  %500 = zext i8 %499 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %500)
  %501 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 14
  %502 = load i8, ptr %501, align 2, !tbaa !24
  %503 = zext i8 %502 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %503)
  %504 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 15
  %505 = load i8, ptr %504, align 1, !tbaa !24
  %506 = zext i8 %505 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1129, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.101, i32 noundef %506)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1130, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.80)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #23
  br label %509

507:                                              ; preds = %454, %458
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #23
  br label %516

508:                                              ; preds = %447
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1132, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.102)
  br label %509

509:                                              ; preds = %459, %508
  %510 = call i32 @close(i32 noundef %58) #23
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %513, label %512, !prof !32

512:                                              ; preds = %509
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1134, ptr nonnull poison, ptr noundef nonnull @__func__.get_fileinfo, ptr noundef nonnull @.str.103)
  br label %522

513:                                              ; preds = %81, %77, %509
  %514 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %515 = load ptr, ptr %514, align 8, !tbaa !38
  call void @free(ptr noundef %515) #23
  store ptr null, ptr %514, align 8, !tbaa !38
  br label %522

516:                                              ; preds = %225, %230, %242, %507, %195, %70, %375, %360, %354, %341, %325, %113, %107, %94, %61
  %517 = load i64, ptr %13, align 8, !tbaa !25
  %518 = and i64 %517, 4096
  %519 = icmp eq i64 %518, 0
  br i1 %519, label %520, label %522

520:                                              ; preds = %516
  %521 = call i32 @close(i32 noundef %58) #23
  br label %522

522:                                              ; preds = %196, %231, %516, %520, %513, %512, %56
  %523 = phi i1 [ true, %513 ], [ false, %512 ], [ false, %56 ], [ false, %520 ], [ false, %516 ], [ false, %231 ], [ false, %196 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #23
  ret i1 %523
}

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @compress_file(ptr noundef %0) local_unnamed_addr #0 {
  %2 = alloca [24 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #23
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %4 = load i64, ptr %3, align 8, !tbaa !25
  %5 = or i64 %4, 131072
  store i64 %5, ptr %3, align 8, !tbaa !25
  %6 = and i64 %4, 8388608
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %1
  %9 = tail call fastcc zeroext i1 @get_hash(ptr noundef nonnull %0, i32 noundef 1)
  br i1 %9, label %10, label %247, !prof !32

10:                                               ; preds = %8
  %11 = load i64, ptr %3, align 8, !tbaa !25
  br label %12

12:                                               ; preds = %10, %1
  %13 = phi i64 [ %11, %10 ], [ %5, %1 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %14 = and i64 %13, 4096
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %12
  %17 = load ptr, ptr %0, align 8, !tbaa !50
  %18 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %17, i32 noundef 46) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %26, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %22 = load ptr, ptr %21, align 8, !tbaa !58
  %23 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(1) %22) #25
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 1165, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.104, ptr noundef %17, ptr noundef %22)
  br label %247

26:                                               ; preds = %20, %16
  %27 = tail call i32 (ptr, i32, ...) @open64(ptr noundef %17, i32 noundef 0) #23
  %28 = icmp eq i32 %27, -1
  br i1 %28, label %31, label %29, !prof !9

29:                                               ; preds = %26
  %30 = load i64, ptr %3, align 8, !tbaa !25
  br label %33

31:                                               ; preds = %26
  %32 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1171, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.35, ptr noundef %32)
  br label %247

33:                                               ; preds = %29, %12
  %34 = phi i64 [ %30, %29 ], [ %13, %12 ]
  %35 = phi i32 [ %27, %29 ], [ 0, %12 ]
  %36 = and i64 %34, 8192
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %144

38:                                               ; preds = %33
  %39 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !59
  %41 = icmp eq ptr %40, null
  br i1 %41, label %71, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %44 = load ptr, ptr %43, align 8, !tbaa !58
  %45 = load i8, ptr %44, align 1, !tbaa !24
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = tail call noalias ptr @strdup(ptr noundef nonnull %40) #23
  %49 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !38
  br label %107

50:                                               ; preds = %42
  %51 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %40, i32 noundef 46) #25
  %52 = icmp eq ptr %51, null
  br i1 %52, label %68, label %53

53:                                               ; preds = %50
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %51, ptr noundef nonnull dereferenceable(1) %44) #25
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %68, label %56

56:                                               ; preds = %53
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #25
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #25
  %59 = add i64 %57, 1
  %60 = add i64 %59, %58
  %61 = tail call noalias ptr @malloc(i64 noundef %60) #26
  %62 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %61, ptr %62, align 8, !tbaa !38
  %63 = icmp eq ptr %61, null
  br i1 %63, label %64, label %65, !prof !9

64:                                               ; preds = %56
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1183, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.11)
  br label %229

65:                                               ; preds = %56
  %66 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(1) %40) #23
  %67 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(1) %44) #23
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1186, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.105, ptr noundef nonnull %40, ptr noundef nonnull %61)
  br label %107

68:                                               ; preds = %53, %50
  %69 = tail call noalias ptr @strdup(ptr noundef nonnull %40) #23
  %70 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %69, ptr %70, align 8, !tbaa !38
  br label %107

71:                                               ; preds = %38
  %72 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  %74 = icmp eq ptr %73, null
  %75 = load ptr, ptr %0, align 8, !tbaa !50
  br i1 %74, label %82, label %76

76:                                               ; preds = %71
  %77 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %75, i32 noundef 47) #25
  %78 = icmp eq ptr %77, null
  %79 = getelementptr inbounds i8, ptr %77, i64 1
  %80 = select i1 %78, ptr %75, ptr %79
  %81 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #25
  br label %82

82:                                               ; preds = %71, %76
  %83 = phi ptr [ %80, %76 ], [ %75, %71 ]
  %84 = phi i64 [ %81, %76 ], [ 0, %71 ]
  %85 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %83) #25
  %86 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  %87 = load ptr, ptr %86, align 8, !tbaa !58
  %88 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %87) #25
  %89 = add i64 %84, 1
  %90 = add i64 %89, %85
  %91 = add i64 %90, %88
  %92 = tail call noalias ptr @malloc(i64 noundef %91) #26
  %93 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  store ptr %92, ptr %93, align 8, !tbaa !38
  %94 = icmp eq ptr %92, null
  br i1 %94, label %95, label %96, !prof !9

95:                                               ; preds = %82
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1201, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.11)
  br label %229

96:                                               ; preds = %82
  br i1 %74, label %100, label %97

97:                                               ; preds = %96
  %98 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %73) #23
  %99 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %83) #23
  br label %102

100:                                              ; preds = %96
  %101 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %83) #23
  br label %102

102:                                              ; preds = %100, %97
  %103 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %92, ptr noundef nonnull dereferenceable(1) %87) #23
  %104 = and i64 %34, 1
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 1209, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.33, ptr noundef nonnull %92)
  br label %107

107:                                              ; preds = %102, %106, %47, %68, %65
  %108 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %109 = load ptr, ptr %108, align 8, !tbaa !38
  %110 = tail call i32 (ptr, i32, ...) @open64(ptr noundef %109, i32 noundef 194, i32 noundef 438) #23
  %111 = load i64, ptr %3, align 8, !tbaa !25
  %112 = and i64 %111, 8
  %113 = icmp ne i64 %112, 0
  %114 = icmp eq i32 %110, -1
  %115 = and i1 %114, %113
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = tail call ptr @__errno_location() #27
  %118 = load i32, ptr %117, align 4, !tbaa !64
  %119 = icmp eq i32 %118, 17
  br i1 %119, label %120, label %133

120:                                              ; preds = %116
  %121 = load ptr, ptr %108, align 8, !tbaa !38
  %122 = tail call i32 @unlink(ptr noundef %121) #23
  %123 = icmp eq i32 %122, 0
  %124 = load ptr, ptr %108, align 8, !tbaa !38
  br i1 %123, label %126, label %125, !prof !32

125:                                              ; preds = %120
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1215, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.36, ptr noundef %124)
  br label %229

126:                                              ; preds = %120
  %127 = tail call i32 (ptr, i32, ...) @open64(ptr noundef %124, i32 noundef 194, i32 noundef 438) #23
  br label %128

128:                                              ; preds = %126, %107
  %129 = phi i32 [ %127, %126 ], [ %110, %107 ]
  %130 = icmp eq i32 %129, -1
  br i1 %130, label %131, label %137, !prof !9

131:                                              ; preds = %128
  %132 = load i64, ptr %3, align 8, !tbaa !25
  br label %133

133:                                              ; preds = %131, %116
  %134 = phi i64 [ %132, %131 ], [ %111, %116 ]
  %135 = or i64 %134, 524288
  store i64 %135, ptr %3, align 8, !tbaa !25
  %136 = load ptr, ptr %108, align 8, !tbaa !38
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1222, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.37, ptr noundef %136)
  br label %229

137:                                              ; preds = %128
  %138 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  store i32 %129, ptr %138, align 4, !tbaa !31
  %139 = load i64, ptr %3, align 8, !tbaa !25
  %140 = and i64 %139, 4096
  %141 = icmp eq i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = tail call fastcc zeroext i1 @preserve_perms(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %129)
  br i1 %143, label %146, label %229, !prof !32

144:                                              ; preds = %33
  %145 = tail call fastcc zeroext i1 @open_tmpoutbuf(ptr noundef nonnull %0)
  br i1 %145, label %146, label %229, !prof !32

146:                                              ; preds = %144, %137, %142
  %147 = phi i32 [ -1, %144 ], [ %129, %137 ], [ %129, %142 ]
  %148 = load i64, ptr %3, align 8, !tbaa !25
  %149 = and i64 %148, 8192
  %150 = icmp eq i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %146
  %152 = call i64 @write(i32 noundef %147, ptr noundef nonnull %2, i64 noundef 24) #23
  %153 = icmp eq i64 %152, 24
  br i1 %153, label %155, label %154, !prof !32

154:                                              ; preds = %151
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1236, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.106)
  br label %229

155:                                              ; preds = %146, %151
  tail call void @rzip_fd(ptr noundef nonnull %0, i32 noundef %35, i32 noundef %147) #23
  %156 = load i64, ptr %3, align 8, !tbaa !25
  %157 = and i64 %156, 8192
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = tail call zeroext i1 @write_magic(ptr noundef nonnull %0)
  br i1 %160, label %161, label %229, !prof !32

161:                                              ; preds = %159
  %162 = load i64, ptr %3, align 8, !tbaa !25
  br label %163

163:                                              ; preds = %161, %155
  %164 = phi i64 [ %162, %161 ], [ %156, %155 ]
  %165 = and i64 %164, 8388608
  %166 = icmp eq i64 %165, 0
  br i1 %166, label %179, label %167

167:                                              ; preds = %163
  %168 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  %169 = load ptr, ptr %168, align 8, !tbaa !69
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(512) %169, i8 0, i64 512, i1 false)
  %170 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 46
  %171 = load ptr, ptr %170, align 8, !tbaa !70
  store i64 0, ptr %171, align 1
  %172 = load ptr, ptr %168, align 8, !tbaa !69
  %173 = tail call i32 @munlock(ptr noundef %172, i64 noundef 512) #23
  %174 = load ptr, ptr %170, align 8, !tbaa !70
  %175 = tail call i32 @munlock(ptr noundef %174, i64 noundef 64) #23
  %176 = load ptr, ptr %168, align 8, !tbaa !69
  tail call void @free(ptr noundef %176) #23
  store ptr null, ptr %168, align 8, !tbaa !69
  %177 = load ptr, ptr %170, align 8, !tbaa !70
  tail call void @free(ptr noundef %177) #23
  store ptr null, ptr %170, align 8, !tbaa !70
  %178 = load i64, ptr %3, align 8, !tbaa !25
  br label %179

179:                                              ; preds = %167, %163
  %180 = phi i64 [ %178, %167 ], [ %164, %163 ]
  %181 = and i64 %180, 12288
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %179
  %184 = tail call fastcc zeroext i1 @preserve_times(ptr noundef nonnull %0, i32 noundef %35)
  br i1 %184, label %186, label %185, !prof !32

185:                                              ; preds = %183
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1250, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.107)
  br label %229

186:                                              ; preds = %179, %183
  %187 = tail call i32 @close(i32 noundef %35) #23
  %188 = icmp eq i32 %187, 0
  br i1 %188, label %190, label %189, !prof !32

189:                                              ; preds = %186
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1255, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.108)
  br label %238

190:                                              ; preds = %186
  %191 = load i64, ptr %3, align 8, !tbaa !25
  %192 = and i64 %191, 8192
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %190
  %195 = tail call i32 @close(i32 noundef %147) #23
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %199, !prof !32

197:                                              ; preds = %194
  %198 = load i64, ptr %3, align 8, !tbaa !25
  br label %200

199:                                              ; preds = %194
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1260, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.109)
  br label %247

200:                                              ; preds = %197, %190
  %201 = phi i64 [ %198, %197 ], [ %191, %190 ]
  %202 = and i64 %201, 2097152
  %203 = icmp eq i64 %202, 0
  br i1 %203, label %216, label %204

204:                                              ; preds = %200
  %205 = and i64 %201, -2097153
  store i64 %205, ptr %3, align 8, !tbaa !25
  %206 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %207 = load ptr, ptr %206, align 8, !tbaa !42
  tail call void @free(ptr noundef %207) #23
  store ptr null, ptr %206, align 8, !tbaa !42
  %208 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %209 = load i64, ptr %208, align 8, !tbaa !52
  %210 = sdiv i64 %209, 18
  %211 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %212 = load i64, ptr %211, align 8, !tbaa !53
  %213 = add nsw i64 %212, %210
  store i64 %213, ptr %211, align 8, !tbaa !53
  %214 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 22
  store i64 %213, ptr %214, align 8, !tbaa !54
  %215 = load i64, ptr %3, align 8, !tbaa !25
  br label %216

216:                                              ; preds = %204, %200
  %217 = phi i64 [ %215, %204 ], [ %201, %200 ]
  %218 = and i64 %217, 4098
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %216
  %221 = load ptr, ptr %0, align 8, !tbaa !50
  %222 = tail call i32 @unlink(ptr noundef %221) #23
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %226, label %224, !prof !32

224:                                              ; preds = %220
  %225 = load ptr, ptr %0, align 8, !tbaa !50
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1266, ptr nonnull poison, ptr noundef nonnull @__func__.compress_file, ptr noundef nonnull @.str.52, ptr noundef %225)
  br label %247

226:                                              ; preds = %216, %220
  %227 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 3
  %228 = load ptr, ptr %227, align 8, !tbaa !38
  tail call void @free(ptr noundef %228) #23
  store ptr null, ptr %227, align 8, !tbaa !38
  br label %247

229:                                              ; preds = %159, %144, %142, %185, %154, %133, %125, %95, %64
  %230 = phi i32 [ -1, %144 ], [ %147, %154 ], [ %147, %185 ], [ %147, %159 ], [ -1, %125 ], [ -1, %133 ], [ %129, %142 ], [ -1, %64 ], [ -1, %95 ]
  %231 = load i64, ptr %3, align 8, !tbaa !25
  %232 = and i64 %231, 4096
  %233 = icmp ne i64 %232, 0
  %234 = icmp sgt i32 %35, 0
  %235 = and i1 %234, %233
  br i1 %235, label %236, label %238

236:                                              ; preds = %229
  %237 = tail call i32 @close(i32 noundef %35) #23
  br label %238

238:                                              ; preds = %189, %236, %229
  %239 = phi i32 [ %147, %189 ], [ %230, %236 ], [ %230, %229 ]
  %240 = load i64, ptr %3, align 8, !tbaa !25
  %241 = and i64 %240, 8192
  %242 = icmp eq i64 %241, 0
  %243 = icmp sgt i32 %239, 0
  %244 = and i1 %243, %242
  br i1 %244, label %245, label %247

245:                                              ; preds = %238
  %246 = tail call i32 @close(i32 noundef %239) #23
  br label %247

247:                                              ; preds = %238, %245, %8, %226, %224, %199, %31, %25
  %248 = phi i1 [ false, %199 ], [ true, %226 ], [ false, %224 ], [ false, %31 ], [ false, %25 ], [ false, %8 ], [ false, %245 ], [ false, %238 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #23
  ret i1 %248
}

declare void @rzip_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @initialise_control(ptr noundef %0) local_unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(864) %0, i8 0, i64 864, i1 false)
  %2 = load ptr, ptr @stderr, align 8, !tbaa !20
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  store ptr %2, ptr %3, align 8, !tbaa !40
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  store ptr %2, ptr %4, align 8, !tbaa !74
  tail call void @register_outputfile(ptr noundef %0, ptr noundef %2) #23
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  store i64 1048579, ptr %5, align 8, !tbaa !25
  %6 = tail call noalias dereferenceable_or_null(5) ptr @strdup(ptr noundef nonnull @.str.110) #23
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 19
  store ptr %6, ptr %7, align 8, !tbaa !58
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  store i8 7, ptr %8, align 8, !tbaa !88
  %9 = tail call i64 @get_ram(ptr noundef %0)
  %10 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  store i64 %9, ptr %10, align 8, !tbaa !52
  %11 = icmp eq i64 %9, -1
  br i1 %11, label %87, label %12, !prof !9

12:                                               ; preds = %1
  %13 = tail call i64 @sysconf(i32 noundef 84) #23
  %14 = trunc i64 %13 to i32
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 30
  store i32 %14, ptr %15, align 8, !tbaa !89
  %16 = tail call i64 @sysconf(i32 noundef 30) #23
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  store i64 %16, ptr %17, align 8, !tbaa !63
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 31
  store i8 19, ptr %18, align 4, !tbaa !90
  %19 = tail call i64 @time(ptr noundef null) #23
  %20 = icmp eq i64 %19, -1
  br i1 %20, label %21, label %22, !prof !9

21:                                               ; preds = %12
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1303, ptr nonnull poison, ptr noundef nonnull @__func__.initialise_control, ptr noundef nonnull @.str.111)
  br label %87

22:                                               ; preds = %12
  %23 = icmp slt i64 %19, 1293840000
  br i1 %23, label %24, label %25, !prof !9

24:                                               ; preds = %22
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 1305, ptr nonnull poison, ptr noundef nonnull @__func__.initialise_control, ptr noundef nonnull @.str.112)
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i64 [ 1293840000, %24 ], [ %19, %22 ]
  %27 = add nsw i64 %26, -1293840000
  %28 = lshr i64 %27, 2
  %29 = add nuw nsw i64 %28, 1293840000
  %30 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 40
  store i64 %29, ptr %30, align 8, !tbaa !91
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43
  %32 = sitofp i64 %29 to double
  %33 = tail call double @pow(double noundef 0x3FF00000052ACC77, double noundef %32) #23
  %34 = fmul double %33, 0x3EF001AE61119F24
  %35 = fptosi double %34 to i64
  %36 = tail call i64 @llvm.smax.i64(i64 %35, i64 1000000)
  br label %37

37:                                               ; preds = %37, %25
  %38 = phi i32 [ 0, %25 ], [ %41, %37 ]
  %39 = phi i64 [ %36, %25 ], [ %40, %37 ]
  %40 = lshr i64 %39, 1
  %41 = add nuw nsw i32 %38, 1
  %42 = icmp ugt i64 %39, 511
  br i1 %42, label %37, label %43, !llvm.loop !23

43:                                               ; preds = %37
  %44 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43, i64 1
  %45 = trunc i32 %41 to i8
  store i8 %45, ptr %31, align 1, !tbaa !24
  %46 = trunc i64 %40 to i8
  store i8 %46, ptr %44, align 1, !tbaa !24
  %47 = zext i32 %41 to i64
  %48 = shl i64 %40, %47
  %49 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 39
  store i64 %48, ptr %49, align 8, !tbaa !36
  %50 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 43, i64 2
  %51 = tail call zeroext i1 @get_rand(ptr noundef %0, ptr noundef nonnull %50, i32 noundef 6) #23
  br i1 %51, label %52, label %87, !prof !32

52:                                               ; preds = %43
  %53 = tail call ptr @getenv(ptr noundef nonnull @.str.113) #23
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = tail call ptr @getenv(ptr noundef nonnull @.str.114) #23
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %69

58:                                               ; preds = %55
  %59 = tail call ptr @getenv(ptr noundef nonnull @.str.115) #23
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %69

61:                                               ; preds = %58
  %62 = tail call ptr @getenv(ptr noundef nonnull @.str.116) #23
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %69

64:                                               ; preds = %61
  %65 = tail call noalias dereferenceable_or_null(3) ptr @malloc(i64 noundef 3) #26
  %66 = icmp eq ptr %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %64
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1328, ptr nonnull poison, ptr noundef nonnull @__func__.initialise_control, ptr noundef nonnull @.str.117)
  br label %87

68:                                               ; preds = %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %65, ptr noundef nonnull align 1 dereferenceable(3) @.str.118, i64 3, i1 false) #23
  br label %69

69:                                               ; preds = %52, %55, %58, %68, %61
  %70 = phi ptr [ %62, %61 ], [ %65, %68 ], [ %59, %58 ], [ %56, %55 ], [ %53, %52 ]
  %71 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %70) #25
  %72 = add i64 %71, 2
  %73 = tail call noalias ptr @malloc(i64 noundef %72) #26
  %74 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 6
  store ptr %73, ptr %74, align 8, !tbaa !37
  %75 = icmp eq ptr %73, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 1335, ptr nonnull poison, ptr noundef nonnull @__func__.initialise_control, ptr noundef nonnull @.str.119)
  br label %87

77:                                               ; preds = %69
  %78 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %73, ptr noundef nonnull dereferenceable(1) %70) #23
  %79 = add i64 %71, -1
  %80 = getelementptr inbounds i8, ptr %73, i64 %79
  %81 = load i8, ptr %80, align 1, !tbaa !24
  %82 = icmp eq i8 %81, 47
  br i1 %82, label %87, label %83

83:                                               ; preds = %77
  %84 = getelementptr inbounds i8, ptr %73, i64 %71
  store i8 47, ptr %84, align 1, !tbaa !24
  %85 = add i64 %71, 1
  %86 = getelementptr inbounds i8, ptr %73, i64 %85
  store i8 0, ptr %86, align 1, !tbaa !24
  br label %87

87:                                               ; preds = %76, %83, %77, %43, %1, %67, %21
  %88 = phi i1 [ false, %21 ], [ false, %67 ], [ false, %1 ], [ false, %43 ], [ true, %77 ], [ true, %83 ], [ false, %76 ]
  ret i1 %88
}

declare void @register_outputfile(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @time(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @get_rand(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

declare void @fatal_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @round_to_page(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #21

; Function Attrs: nounwind
declare i32 @mlock(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munlock(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i32 @get_pass(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(504) %1, i8 0, i64 504, i1 false)
  %3 = load ptr, ptr @stdin, align 8, !tbaa !20
  %4 = tail call ptr @fgets(ptr noundef %1, i32 noundef 504, ptr noundef %3)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7, !prof !9

6:                                                ; preds = %2
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 590, ptr nonnull poison, ptr noundef nonnull @__func__.get_pass, ptr noundef nonnull @.str.142)
  br label %30

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %9 = trunc i64 %8 to i32
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %25

11:                                               ; preds = %7
  %12 = add i64 %8, 4294967295
  %13 = and i64 %12, 4294967295
  %14 = getelementptr inbounds i8, ptr %1, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !24
  switch i8 %15, label %17 [
    i8 13, label %16
    i8 10, label %16
  ]

16:                                               ; preds = %11, %11
  store i8 0, ptr %14, align 1, !tbaa !24
  br label %17

17:                                               ; preds = %11, %16
  %18 = icmp ugt i32 %9, 1
  br i1 %18, label %19, label %25

19:                                               ; preds = %17
  %20 = add i64 %8, 4294967294
  %21 = and i64 %20, 4294967295
  %22 = getelementptr inbounds i8, ptr %1, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !24
  switch i8 %23, label %25 [
    i8 13, label %24
    i8 10, label %24
  ]

24:                                               ; preds = %19, %19
  store i8 0, ptr %22, align 1, !tbaa !24
  br label %25

25:                                               ; preds = %7, %19, %24, %17
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #25
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30, !prof !9

29:                                               ; preds = %25
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %0, i32 noundef 598, ptr nonnull poison, ptr noundef nonnull @__func__.get_pass, ptr noundef nonnull @.str.143)
  br label %30

30:                                               ; preds = %25, %29, %6
  %31 = phi i32 [ -1, %6 ], [ -1, %29 ], [ %27, %25 ]
  ret i32 %31
}

declare void @lrz_stretch(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @utime(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #22

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #22

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind memory(write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { cold }
attributes #25 = { nounwind willreturn memory(read) }
attributes #26 = { nounwind allocsize(0) }
attributes #27 = { nounwind willreturn memory(none) }
attributes #28 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"long", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"branch_weights", i32 1, i32 2000}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!13, !14, i64 720}
!13 = !{!"rzip_control", !14, i64 0, !14, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48, !14, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !6, i64 88, !6, i64 96, !14, i64 104, !6, i64 112, !6, i64 120, !6, i64 128, !14, i64 136, !14, i64 144, !14, i64 152, !7, i64 160, !6, i64 168, !6, i64 176, !6, i64 184, !7, i64 192, !6, i64 200, !6, i64 208, !6, i64 216, !6, i64 224, !6, i64 232, !15, i64 240, !7, i64 244, !7, i64 245, !7, i64 246, !6, i64 248, !6, i64 256, !15, i64 264, !15, i64 268, !15, i64 272, !6, i64 280, !6, i64 288, !14, i64 296, !14, i64 304, !7, i64 312, !14, i64 320, !15, i64 328, !14, i64 336, !7, i64 344, !7, i64 384, !7, i64 385, !16, i64 386, !7, i64 392, !17, i64 424, !7, i64 580, !6, i64 600, !18, i64 608, !14, i64 632, !7, i64 640, !14, i64 648, !6, i64 656, !6, i64 664, !14, i64 672, !7, i64 680, !14, i64 688, !7, i64 696, !15, i64 700, !14, i64 704, !14, i64 712, !14, i64 720, !14, i64 728, !7, i64 736, !19, i64 744, !14, i64 832, !14, i64 840, !14, i64 848, !14, i64 856}
!14 = !{!"any pointer", !7, i64 0}
!15 = !{!"int", !7, i64 0}
!16 = !{!"_Bool", !7, i64 0}
!17 = !{!"md5_ctx", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !15, i64 24, !7, i64 28}
!18 = !{!"checksum", !14, i64 0, !14, i64 8, !6, i64 16}
!19 = !{!"sliding_buffer", !14, i64 0, !14, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !15, i64 80}
!20 = !{!14, !14, i64 0}
!21 = !{!13, !14, i64 728}
!22 = !{!13, !7, i64 696}
!23 = distinct !{!23, !11}
!24 = !{!7, !7, i64 0}
!25 = !{!13, !6, i64 208}
!26 = !{!13, !7, i64 384}
!27 = !{!13, !6, i64 248}
!28 = !{!13, !6, i64 96}
!29 = !{!13, !6, i64 64}
!30 = !{!13, !6, i64 80}
!31 = !{!13, !15, i64 268}
!32 = !{!"branch_weights", i32 2000, i32 1}
!33 = !{!13, !7, i64 385}
!34 = !{!13, !7, i64 245}
!35 = !{!13, !7, i64 246}
!36 = !{!13, !6, i64 280}
!37 = !{!13, !14, i64 48}
!38 = !{!13, !14, i64 24}
!39 = !{!13, !15, i64 700}
!40 = !{!13, !14, i64 136}
!41 = distinct !{!41, !11}
!42 = !{!13, !14, i64 56}
!43 = !{!13, !14, i64 32}
!44 = distinct !{!44, !11}
!45 = distinct !{!45, !11}
!46 = !{!13, !6, i64 120}
!47 = !{!13, !14, i64 104}
!48 = !{!13, !15, i64 264}
!49 = distinct !{!49, !11}
!50 = !{!13, !14, i64 0}
!51 = distinct !{!51, !11}
!52 = !{!13, !6, i64 216}
!53 = !{!13, !6, i64 184}
!54 = !{!13, !6, i64 176}
!55 = !{!56, !15, i64 24}
!56 = !{!"stat", !6, i64 0, !6, i64 8, !6, i64 16, !15, i64 24, !15, i64 28, !15, i64 32, !15, i64 36, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !57, i64 72, !57, i64 88, !57, i64 104, !7, i64 120}
!57 = !{!"timespec", !6, i64 0, !6, i64 8}
!58 = !{!13, !14, i64 152}
!59 = !{!13, !14, i64 16}
!60 = !{!13, !14, i64 40}
!61 = distinct !{!61, !11}
!62 = !{!13, !6, i64 128}
!63 = !{!13, !6, i64 256}
!64 = !{!15, !15, i64 0}
!65 = !{!66, !6, i64 0}
!66 = !{!"statvfs", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !6, i64 64, !6, i64 72, !6, i64 80, !7, i64 88}
!67 = !{!66, !6, i64 32}
!68 = !{!13, !15, i64 272}
!69 = !{!13, !14, i64 320}
!70 = !{!13, !14, i64 336}
!71 = !{!56, !15, i64 28}
!72 = !{!56, !15, i64 32}
!73 = !{!13, !6, i64 88}
!74 = !{!13, !14, i64 144}
!75 = !{!"branch_weights", i32 4000000, i32 4001}
!76 = !{!13, !14, i64 296}
!77 = !{!13, !14, i64 304}
!78 = !{!13, !15, i64 328}
!79 = !{!80, !15, i64 12}
!80 = !{!"termios", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !7, i64 16, !7, i64 17, !15, i64 52, !15, i64 56}
!81 = !{!82, !6, i64 0}
!82 = !{!"utimbuf", !6, i64 0, !6, i64 8}
!83 = !{!56, !6, i64 88}
!84 = !{!82, !6, i64 8}
!85 = !{!56, !6, i64 48}
!86 = !{!"branch_weights", i32 6003000, i32 -294967296}
!87 = distinct !{!87, !11}
!88 = !{!13, !7, i64 160}
!89 = !{!13, !15, i64 240}
!90 = !{!13, !7, i64 244}
!91 = !{!13, !6, i64 288}
