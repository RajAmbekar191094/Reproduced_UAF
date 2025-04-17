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
@stderr = external global ptr, align 8
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
@stdin = external global ptr, align 8
@.str.139 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@.str.140 = private unnamed_addr constant [22 x i8] c"Re-enter passphrase: \00", align 1
@.str.141 = private unnamed_addr constant [36 x i8] c"Passwords do not match. Try again.\0A\00", align 1
@__func__.get_pass = private unnamed_addr constant [9 x i8] c"get_pass\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"Failed to retrieve passphrase\0A\00", align 1
@.str.143 = private unnamed_addr constant [18 x i8] c"Empty passphrase\0A\00", align 1
@__func__.preserve_times = private unnamed_addr constant [15 x i8] c"preserve_times\00", align 1
@.str.144 = private unnamed_addr constant [35 x i8] c"Warning, unable to set time on %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_ram(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca [256 x i8], align 16
  store ptr %0, ptr %3, align 8
  %7 = call i64 @sysconf(i32 noundef 85) #11
  %8 = call i64 @sysconf(i32 noundef 30) #11
  %9 = mul nsw i64 %7, %8
  store i64 %9, ptr %4, align 8
  %10 = load i64, ptr %4, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i64, ptr %4, align 8
  store i64 %13, ptr %2, align 8
  br label %62

14:                                               ; preds = %1
  %15 = call noalias ptr @fopen64(ptr noundef @.str, ptr noundef @.str.1)
  store ptr %15, ptr %5, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  br label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %19, i32 noundef 106, ptr noundef @.str.2, ptr noundef @__func__.get_ram, ptr noundef @.str.3)
  store i64 -1, ptr %2, align 8
  br label %62

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %14
  br label %22

22:                                               ; preds = %49, %21
  %23 = load ptr, ptr %5, align 8
  %24 = call i32 @feof(ptr noundef %23) #11
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %5, align 8
  %28 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %27, ptr noundef @.str.4, ptr noundef %4)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br label %31

31:                                               ; preds = %26, %22
  %32 = phi i1 [ false, %22 ], [ %30, %26 ]
  br i1 %32, label %33, label %50

33:                                               ; preds = %31
  %34 = getelementptr inbounds [256 x i8], ptr %6, i64 0, i64 0
  %35 = load ptr, ptr %5, align 8
  %36 = call ptr @fgets(ptr noundef %34, i32 noundef 256, ptr noundef %35)
  %37 = icmp eq ptr %36, null
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %33
  %44 = load ptr, ptr %5, align 8
  %45 = call i32 @fclose(ptr noundef %44)
  br label %46

46:                                               ; preds = %43
  %47 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %47, i32 noundef 111, ptr noundef @.str.2, ptr noundef @__func__.get_ram, ptr noundef @.str.5)
  store i64 -1, ptr %2, align 8
  br label %62

48:                                               ; No predecessors!
  br label %49

49:                                               ; preds = %48, %33
  br label %22, !llvm.loop !6

50:                                               ; preds = %31
  %51 = load ptr, ptr %5, align 8
  %52 = call i32 @fclose(ptr noundef %51)
  %53 = icmp eq i32 %52, -1
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %54
  %56 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %56, i32 noundef 115, ptr noundef @.str.2, ptr noundef @__func__.get_ram, ptr noundef @.str.6)
  store i64 -1, ptr %2, align 8
  br label %62

57:                                               ; No predecessors!
  br label %58

58:                                               ; preds = %57, %50
  %59 = load i64, ptr %4, align 8
  %60 = mul nsw i64 %59, 1000
  store i64 %60, ptr %4, align 8
  %61 = load i64, ptr %4, align 8
  store i64 %61, ptr %2, align 8
  br label %62

62:                                               ; preds = %58, %55, %46, %18, %12
  %63 = load i64, ptr %2, align 8
  ret i64 %63
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) #1

declare noalias ptr @fopen64(ptr noundef, ptr noundef) #2

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

; Function Attrs: nounwind
declare i32 @feof(ptr noundef) #1

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @nloops(i64 noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %9 = call double @pow(double noundef 1.835000e+00, double noundef 0x3E6106291EB9624E) #11
  %10 = call double @pow(double noundef %9, double noundef -1.293840e+09) #11
  %11 = fmul double 1.000000e+06, %10
  %12 = call double @pow(double noundef 1.835000e+00, double noundef 0x3E6106291EB9624E) #11
  %13 = load i64, ptr %4, align 8
  %14 = sitofp i64 %13 to double
  %15 = call double @pow(double noundef %12, double noundef %14) #11
  %16 = fmul double %11, %15
  %17 = fptosi double %16 to i64
  store i64 %17, ptr %7, align 8
  %18 = load i64, ptr %7, align 8
  %19 = icmp slt i64 %18, 1000000
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i64 1000000, ptr %7, align 8
  br label %21

21:                                               ; preds = %20, %3
  store i32 0, ptr %8, align 4
  br label %22

22:                                               ; preds = %28, %21
  %23 = load i64, ptr %7, align 8
  %24 = icmp sgt i64 %23, 255
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load i64, ptr %7, align 8
  %27 = ashr i64 %26, 1
  store i64 %27, ptr %7, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i32, ptr %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %8, align 4
  br label %22, !llvm.loop !8

31:                                               ; preds = %22
  %32 = load i32, ptr %8, align 4
  %33 = trunc i32 %32 to i8
  %34 = load ptr, ptr %5, align 8
  store i8 %33, ptr %34, align 1
  %35 = load i64, ptr %7, align 8
  %36 = trunc i64 %35 to i8
  %37 = load ptr, ptr %6, align 8
  store i8 %36, ptr %37, align 1
  %38 = load i64, ptr %7, align 8
  %39 = load i32, ptr %8, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 %38, %40
  ret i64 %41
}

; Function Attrs: nounwind
declare double @pow(double noundef, double noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @write_magic(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca [24 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %4, ptr align 16 @__const.write_magic.magic, i64 24, i1 false)
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 26
  %9 = load i64, ptr %8, align 8
  %10 = and i64 %9, 8388608
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 6
  %14 = load ptr, ptr %3, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 43
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %13, ptr align 8 %15, i64 8, i1 false)
  br label %41

16:                                               ; preds = %1
  %17 = load ptr, ptr %3, align 8
  %18 = getelementptr inbounds %struct.rzip_control, ptr %17, i32 0, i32 26
  %19 = load i64, ptr %18, align 8
  %20 = and i64 %19, 4096
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %16
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 26
  %25 = load i64, ptr %24, align 8
  %26 = and i64 %25, 8192
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 48
  %31 = load i8, ptr %30, align 8
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %28, %22, %16
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 34
  %37 = load i64, ptr %36, align 8
  %38 = call i64 @__uint64_identity(i64 noundef %37)
  store i64 %38, ptr %5, align 8
  %39 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %39, ptr align 8 %5, i64 8, i1 false)
  br label %40

40:                                               ; preds = %34, %28
  br label %41

41:                                               ; preds = %40, %12
  %42 = load ptr, ptr %3, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 26
  %44 = load i64, ptr %43, align 8
  %45 = and i64 %44, 992
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %66, label %47

47:                                               ; preds = %41
  store i32 0, ptr %6, align 4
  br label %48

48:                                               ; preds = %62, %47
  %49 = load i32, ptr %6, align 4
  %50 = icmp slt i32 %49, 5
  br i1 %50, label %51, label %65

51:                                               ; preds = %48
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 24
  %54 = load i32, ptr %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [5 x i8], ptr %53, i64 0, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = load i32, ptr %6, align 4
  %59 = add nsw i32 %58, 16
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 %60
  store i8 %57, ptr %61, align 1
  br label %62

62:                                               ; preds = %51
  %63 = load i32, ptr %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, ptr %6, align 4
  br label %48, !llvm.loop !9

65:                                               ; preds = %48
  br label %66

66:                                               ; preds = %65, %41
  %67 = load ptr, ptr %3, align 8
  %68 = getelementptr inbounds %struct.rzip_control, ptr %67, i32 0, i32 26
  %69 = load i64, ptr %68, align 8
  %70 = and i64 %69, 65536
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %78, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %3, align 8
  %74 = getelementptr inbounds %struct.rzip_control, ptr %73, i32 0, i32 26
  %75 = load i64, ptr %74, align 8
  %76 = and i64 %75, 131072
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %72, %66
  %79 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 21
  store i8 1, ptr %79, align 1
  br label %80

80:                                               ; preds = %78, %72
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 8388608
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 22
  store i8 1, ptr %87, align 2
  br label %88

88:                                               ; preds = %86, %80
  %89 = load ptr, ptr %3, align 8
  %90 = call i64 @fdout_seekto(ptr noundef %89, i64 noundef 0)
  %91 = icmp ne i64 %90, 0
  %92 = xor i1 %91, true
  %93 = xor i1 %92, true
  %94 = zext i1 %93 to i32
  %95 = sext i32 %94 to i64
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %97
  %99 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %99, i32 noundef 173, ptr noundef @.str.2, ptr noundef @__func__.write_magic, ptr noundef @.str.7)
  store i1 false, ptr %2, align 1
  br label %118

100:                                              ; No predecessors!
  br label %101

101:                                              ; preds = %100, %88
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 0
  %104 = call i64 @put_fdout(ptr noundef %102, ptr noundef %103, i64 noundef 24)
  %105 = icmp ne i64 %104, 24
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = sext i32 %108 to i64
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  br label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %113, i32 noundef 176, ptr noundef @.str.2, ptr noundef @__func__.write_magic, ptr noundef @.str.8)
  store i1 false, ptr %2, align 1
  br label %118

114:                                              ; No predecessors!
  br label %115

115:                                              ; preds = %114, %101
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.rzip_control, ptr %116, i32 0, i32 49
  store i8 1, ptr %117, align 1
  store i1 true, ptr %2, align 1
  br label %118

118:                                              ; preds = %115, %112, %98
  %119 = load i1, ptr %2, align 1
  ret i1 %119
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fdout_seekto(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i32 0, i32 26
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 2097152
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 12
  %14 = load i64, ptr %13, align 8
  %15 = load i64, ptr %5, align 8
  %16 = sub nsw i64 %15, %14
  store i64 %16, ptr %5, align 8
  %17 = load i64, ptr %5, align 8
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 8
  store i64 %17, ptr %19, align 8
  %20 = load i64, ptr %5, align 8
  %21 = load ptr, ptr %4, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 10
  %23 = load i64, ptr %22, align 8
  %24 = icmp sgt i64 %20, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %11
  %26 = load i64, ptr %5, align 8
  %27 = icmp slt i64 %26, 0
  br label %28

28:                                               ; preds = %25, %11
  %29 = phi i1 [ true, %11 ], [ %27, %25 ]
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %4, align 8
  %38 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %37, i32 noundef 68, ptr noundef @.str.2, ptr noundef @__func__.fdout_seekto, ptr noundef @.str.120, i64 noundef %38)
  br label %39

39:                                               ; preds = %36
  store i64 -1, ptr %3, align 8
  br label %47

40:                                               ; preds = %28
  store i64 0, ptr %3, align 8
  br label %47

41:                                               ; preds = %2
  %42 = load ptr, ptr %4, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 37
  %44 = load i32, ptr %43, align 4
  %45 = load i64, ptr %5, align 8
  %46 = call i64 @lseek64(i32 noundef %44, i64 noundef %45, i32 noundef 0) #11
  store i64 %46, ptr %3, align 8
  br label %47

47:                                               ; preds = %41, %40, %39
  %48 = load i64, ptr %3, align 8
  ret i64 %48
}

declare i64 @put_fdout(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @read_magic(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca [24 x i8], align 16
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store ptr %2, ptr %7, align 8
  %9 = getelementptr inbounds [24 x i8], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %9, i8 0, i64 24, i1 false)
  %10 = load i32, ptr %6, align 4
  %11 = getelementptr inbounds [24 x i8], ptr %8, i64 0, i64 0
  %12 = call i64 @read(i32 noundef %10, ptr noundef %11, i64 noundef 24)
  %13 = icmp ne i64 %12, 24
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %21, i32 noundef 258, ptr noundef @.str.2, ptr noundef @__func__.read_magic, ptr noundef @.str.9)
  store i1 false, ptr %4, align 1
  br label %39

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %3
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds [24 x i8], ptr %8, i64 0, i64 0
  %26 = call zeroext i1 @get_magic(ptr noundef %24, ptr noundef %25)
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %23
  store i1 false, ptr %4, align 1
  br label %39

34:                                               ; preds = %23
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 34
  %37 = load i64, ptr %36, align 8
  %38 = load ptr, ptr %7, align 8
  store i64 %37, ptr %38, align 8
  store i1 true, ptr %4, align 1
  br label %39

39:                                               ; preds = %34, %33, %20
  %40 = load i1, ptr %4, align 1
  ret i1 %40
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @get_magic(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %11 = load ptr, ptr %5, align 8
  %12 = call i32 @strncmp(ptr noundef %11, ptr noundef @.str.121, i64 noundef 4) #12
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %21, i32 noundef 193, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.122)
  store i1 false, ptr %3, align 1
  br label %257

22:                                               ; No predecessors!
  br label %23

23:                                               ; preds = %22, %2
  %24 = load ptr, ptr %4, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 32
  %26 = load ptr, ptr %5, align 8
  %27 = getelementptr inbounds i8, ptr %26, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %25, ptr align 1 %27, i64 1, i1 false)
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 33
  %30 = load ptr, ptr %5, align 8
  %31 = getelementptr inbounds i8, ptr %30, i64 5
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %29, ptr align 1 %31, i64 1, i1 false)
  br label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 26
  %35 = load i64, ptr %34, align 8
  %36 = and i64 %35, 3072
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %50

38:                                               ; preds = %32
  br label %39

39:                                               ; preds = %38
  %40 = load ptr, ptr %4, align 8
  %41 = load ptr, ptr %4, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 32
  %43 = load i8, ptr %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load ptr, ptr %4, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 33
  %47 = load i8, ptr %46, align 2
  %48 = sext i8 %47 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %40, i32 noundef 3, i32 noundef 198, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.123, i32 noundef %44, i32 noundef %48)
  br label %49

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %32
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr %4, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 32
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %4, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 32
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %83

63:                                               ; preds = %57
  %64 = load ptr, ptr %4, align 8
  %65 = getelementptr inbounds %struct.rzip_control, ptr %64, i32 0, i32 33
  %66 = load i8, ptr %65, align 2
  %67 = sext i8 %66 to i32
  %68 = icmp sgt i32 %67, 6
  br i1 %68, label %69, label %83

69:                                               ; preds = %63, %51
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %4, align 8
  %73 = load ptr, ptr %4, align 8
  %74 = getelementptr inbounds %struct.rzip_control, ptr %73, i32 0, i32 32
  %75 = load i8, ptr %74, align 1
  %76 = sext i8 %75 to i32
  %77 = load ptr, ptr %4, align 8
  %78 = getelementptr inbounds %struct.rzip_control, ptr %77, i32 0, i32 33
  %79 = load i8, ptr %78, align 2
  %80 = sext i8 %79 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %72, i32 noundef 1, i32 noundef 201, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.124, i32 noundef %76, i32 noundef %80)
  br label %81

81:                                               ; preds = %71
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82, %63, %57
  %84 = load ptr, ptr %4, align 8
  %85 = getelementptr inbounds %struct.rzip_control, ptr %84, i32 0, i32 32
  %86 = load i8, ptr %85, align 1
  %87 = sext i8 %86 to i32
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %109

89:                                               ; preds = %83
  %90 = load ptr, ptr %4, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 33
  %92 = load i8, ptr %91, align 2
  %93 = sext i8 %92 to i32
  %94 = icmp slt i32 %93, 4
  br i1 %94, label %95, label %109

95:                                               ; preds = %89
  %96 = load ptr, ptr %5, align 8
  %97 = getelementptr inbounds i8, ptr %96, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 1 %97, i64 4, i1 false)
  %98 = load i32, ptr %10, align 4
  %99 = call i32 @ntohl(i32 noundef %98) #13
  %100 = zext i32 %99 to i64
  store i64 %100, ptr %9, align 8
  %101 = load ptr, ptr %5, align 8
  %102 = getelementptr inbounds i8, ptr %101, i64 10
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %10, ptr align 1 %102, i64 4, i1 false)
  %103 = load i32, ptr %10, align 4
  %104 = call i32 @ntohl(i32 noundef %103) #13
  %105 = zext i32 %104 to i64
  %106 = shl i64 %105, 32
  %107 = load i64, ptr %9, align 8
  %108 = or i64 %107, %106
  store i64 %108, ptr %9, align 8
  br label %114

109:                                              ; preds = %89, %83
  %110 = load ptr, ptr %5, align 8
  %111 = getelementptr inbounds i8, ptr %110, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %9, ptr align 1 %111, i64 8, i1 false)
  %112 = load i64, ptr %9, align 8
  %113 = call i64 @__uint64_identity(i64 noundef %112)
  store i64 %113, ptr %9, align 8
  br label %114

114:                                              ; preds = %109, %95
  %115 = load i64, ptr %9, align 8
  %116 = load ptr, ptr %4, align 8
  %117 = getelementptr inbounds %struct.rzip_control, ptr %116, i32 0, i32 34
  store i64 %115, ptr %117, align 8
  %118 = load ptr, ptr %4, align 8
  %119 = getelementptr inbounds %struct.rzip_control, ptr %118, i32 0, i32 32
  %120 = load i8, ptr %119, align 1
  %121 = sext i8 %120 to i32
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %132

123:                                              ; preds = %114
  %124 = load ptr, ptr %4, align 8
  %125 = getelementptr inbounds %struct.rzip_control, ptr %124, i32 0, i32 33
  %126 = load i8, ptr %125, align 2
  %127 = sext i8 %126 to i32
  %128 = icmp slt i32 %127, 6
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load ptr, ptr %4, align 8
  %131 = getelementptr inbounds %struct.rzip_control, ptr %130, i32 0, i32 48
  store i8 1, ptr %131, align 8
  br label %132

132:                                              ; preds = %129, %123, %114
  %133 = load ptr, ptr %5, align 8
  %134 = getelementptr inbounds i8, ptr %133, i64 16
  %135 = load i8, ptr %134, align 1
  %136 = sext i8 %135 to i32
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %158

138:                                              ; preds = %132
  store i32 0, ptr %8, align 4
  br label %139

139:                                              ; preds = %154, %138
  %140 = load i32, ptr %8, align 4
  %141 = icmp slt i32 %140, 5
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load ptr, ptr %5, align 8
  %144 = load i32, ptr %8, align 4
  %145 = add nsw i32 %144, 16
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i8, ptr %143, i64 %146
  %148 = load i8, ptr %147, align 1
  %149 = load ptr, ptr %4, align 8
  %150 = getelementptr inbounds %struct.rzip_control, ptr %149, i32 0, i32 24
  %151 = load i32, ptr %8, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds [5 x i8], ptr %150, i64 0, i64 %152
  store i8 %148, ptr %153, align 1
  br label %154

154:                                              ; preds = %142
  %155 = load i32, ptr %8, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, ptr %8, align 4
  br label %139, !llvm.loop !10

157:                                              ; preds = %139
  br label %158

158:                                              ; preds = %157, %132
  %159 = load ptr, ptr %5, align 8
  %160 = getelementptr inbounds i8, ptr %159, i64 21
  %161 = load i8, ptr %160, align 1
  %162 = sext i8 %161 to i32
  store i32 %162, ptr %7, align 4
  %163 = load i32, ptr %7, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %187

165:                                              ; preds = %158
  %166 = load i32, ptr %7, align 4
  %167 = icmp eq i32 %166, 1
  br i1 %167, label %168, label %173

168:                                              ; preds = %165
  %169 = load ptr, ptr %4, align 8
  %170 = getelementptr inbounds %struct.rzip_control, ptr %169, i32 0, i32 26
  %171 = load i64, ptr %170, align 8
  %172 = or i64 %171, 131072
  store i64 %172, ptr %170, align 8
  br label %186

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %4, align 8
  %176 = getelementptr inbounds %struct.rzip_control, ptr %175, i32 0, i32 26
  %177 = load i64, ptr %176, align 8
  %178 = and i64 %177, 3072
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %184

180:                                              ; preds = %174
  br label %181

181:                                              ; preds = %180
  %182 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %182, i32 noundef 3, i32 noundef 229, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.125)
  br label %183

183:                                              ; preds = %181
  br label %184

184:                                              ; preds = %183, %174
  br label %185

185:                                              ; preds = %184
  br label %186

186:                                              ; preds = %185, %168
  br label %187

187:                                              ; preds = %186, %158
  %188 = load ptr, ptr %5, align 8
  %189 = getelementptr inbounds i8, ptr %188, i64 22
  %190 = load i8, ptr %189, align 1
  %191 = sext i8 %190 to i32
  store i32 %191, ptr %6, align 4
  %192 = load i32, ptr %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %239

194:                                              ; preds = %187
  %195 = load i32, ptr %6, align 4
  %196 = icmp eq i32 %195, 1
  br i1 %196, label %197, label %202

197:                                              ; preds = %194
  %198 = load ptr, ptr %4, align 8
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i32 0, i32 26
  %200 = load i64, ptr %199, align 8
  %201 = or i64 %200, 8388608
  store i64 %201, ptr %199, align 8
  br label %206

202:                                              ; preds = %194
  br label %203

203:                                              ; preds = %202
  %204 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %204, i32 noundef 236, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.126)
  store i1 false, ptr %3, align 1
  br label %257

205:                                              ; No predecessors!
  br label %206

206:                                              ; preds = %205, %197
  %207 = load ptr, ptr %4, align 8
  %208 = getelementptr inbounds %struct.rzip_control, ptr %207, i32 0, i32 43
  %209 = load ptr, ptr %5, align 8
  %210 = getelementptr inbounds i8, ptr %209, i64 6
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %208, ptr align 1 %210, i64 8, i1 false)
  store i64 0, ptr %9, align 8
  %211 = load ptr, ptr %4, align 8
  %212 = getelementptr inbounds %struct.rzip_control, ptr %211, i32 0, i32 34
  store i64 0, ptr %212, align 8
  %213 = load ptr, ptr %4, align 8
  %214 = getelementptr inbounds %struct.rzip_control, ptr %213, i32 0, i32 43
  %215 = getelementptr inbounds [8 x i8], ptr %214, i64 0, i64 0
  %216 = load i8, ptr %215, align 8
  %217 = load ptr, ptr %4, align 8
  %218 = getelementptr inbounds %struct.rzip_control, ptr %217, i32 0, i32 43
  %219 = getelementptr inbounds [8 x i8], ptr %218, i64 0, i64 1
  %220 = load i8, ptr %219, align 1
  %221 = call i64 @enc_loops(i8 noundef zeroext %216, i8 noundef zeroext %220)
  %222 = load ptr, ptr %4, align 8
  %223 = getelementptr inbounds %struct.rzip_control, ptr %222, i32 0, i32 39
  store i64 %221, ptr %223, align 8
  br label %224

224:                                              ; preds = %206
  %225 = load ptr, ptr %4, align 8
  %226 = getelementptr inbounds %struct.rzip_control, ptr %225, i32 0, i32 26
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 2048
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230
  %232 = load ptr, ptr %4, align 8
  %233 = load ptr, ptr %4, align 8
  %234 = getelementptr inbounds %struct.rzip_control, ptr %233, i32 0, i32 39
  %235 = load i64, ptr %234, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %232, i32 noundef 4, i32 noundef 243, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.127, i64 noundef %235)
  br label %236

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %224
  br label %238

238:                                              ; preds = %237
  br label %256

239:                                              ; preds = %187
  %240 = load ptr, ptr %4, align 8
  %241 = getelementptr inbounds %struct.rzip_control, ptr %240, i32 0, i32 26
  %242 = load i64, ptr %241, align 8
  %243 = and i64 %242, 8388608
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %255

245:                                              ; preds = %239
  br label %246

246:                                              ; preds = %245
  br label %247

247:                                              ; preds = %246
  %248 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %248, i32 noundef 1, i32 noundef 245, ptr noundef @.str.2, ptr noundef @__func__.get_magic, ptr noundef @.str.128)
  br label %249

249:                                              ; preds = %247
  br label %250

250:                                              ; preds = %249
  %251 = load ptr, ptr %4, align 8
  %252 = getelementptr inbounds %struct.rzip_control, ptr %251, i32 0, i32 26
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, -8388609
  store i64 %254, ptr %252, align 8
  br label %255

255:                                              ; preds = %250, %239
  br label %256

256:                                              ; preds = %255, %238
  store i1 true, ptr %3, align 1
  br label %257

257:                                              ; preds = %256, %203, %20
  %258 = load i1, ptr %3, align 1
  ret i1 %258
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_tmpoutfile(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 26
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 8192
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %29

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 26
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 4
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %29, label %16

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 26
  %20 = load i64, ptr %19, align 8
  %21 = and i64 %20, 3072
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %25, i32 noundef 3, i32 noundef 303, ptr noundef @.str.2, ptr noundef @__func__.open_tmpoutfile, ptr noundef @.str.10)
  br label %26

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26, %17
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28, %10, %1
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 6
  %32 = load ptr, ptr %31, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %69

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 6
  %37 = load ptr, ptr %36, align 8
  %38 = call i64 @strlen(ptr noundef %37) #12
  %39 = add i64 %38, 16
  %40 = call ptr @realloc(ptr noundef null, i64 noundef %39) #14
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 3
  store ptr %40, ptr %42, align 8
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  %46 = icmp ne ptr %45, null
  %47 = xor i1 %46, true
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %34
  br label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %55, i32 noundef 307, ptr noundef @.str.2, ptr noundef @__func__.open_tmpoutfile, ptr noundef @.str.11)
  store i32 -1, ptr %2, align 4
  br label %128

56:                                               ; No predecessors!
  br label %57

57:                                               ; preds = %56, %34
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = load ptr, ptr %3, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 6
  %63 = load ptr, ptr %62, align 8
  %64 = call ptr @strcpy(ptr noundef %60, ptr noundef %63) #11
  %65 = load ptr, ptr %3, align 8
  %66 = getelementptr inbounds %struct.rzip_control, ptr %65, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = call ptr @strcat(ptr noundef %67, ptr noundef @.str.12) #11
  br label %69

69:                                               ; preds = %57, %29
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct.rzip_control, ptr %70, i32 0, i32 3
  %72 = load ptr, ptr %71, align 8
  %73 = call i32 @mkstemp64(ptr noundef %72)
  store i32 %73, ptr %4, align 4
  %74 = load i32, ptr %4, align 4
  %75 = icmp eq i32 %74, -1
  br i1 %75, label %76, label %99

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76
  %78 = load ptr, ptr %3, align 8
  %79 = getelementptr inbounds %struct.rzip_control, ptr %78, i32 0, i32 26
  %80 = load i64, ptr %79, align 8
  %81 = and i64 %80, 1
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %77
  br label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %3, align 8
  %86 = load ptr, ptr %3, align 8
  %87 = getelementptr inbounds %struct.rzip_control, ptr %86, i32 0, i32 3
  %88 = load ptr, ptr %87, align 8
  %89 = load ptr, ptr %3, align 8
  %90 = getelementptr inbounds %struct.rzip_control, ptr %89, i32 0, i32 26
  %91 = load i64, ptr %90, align 8
  %92 = and i64 %91, 16
  %93 = icmp ne i64 %92, 0
  %94 = zext i1 %93 to i64
  %95 = select i1 %93, ptr @.str.14, ptr @.str.15
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %85, i32 noundef 2, i32 noundef 315, ptr noundef @.str.2, ptr noundef @__func__.open_tmpoutfile, ptr noundef @.str.13, ptr noundef %88, ptr noundef %95)
  br label %96

96:                                               ; preds = %84
  br label %97

97:                                               ; preds = %96, %77
  br label %98

98:                                               ; preds = %97
  br label %126

99:                                               ; preds = %69
  %100 = load ptr, ptr %3, align 8
  %101 = load ptr, ptr %3, align 8
  %102 = getelementptr inbounds %struct.rzip_control, ptr %101, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8
  %104 = load ptr, ptr %3, align 8
  %105 = getelementptr inbounds %struct.rzip_control, ptr %104, i32 0, i32 26
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 4
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %99
  %110 = load ptr, ptr %3, align 8
  %111 = getelementptr inbounds %struct.rzip_control, ptr %110, i32 0, i32 26
  %112 = load i64, ptr %111, align 8
  %113 = and i64 %112, 8192
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %122, label %115

115:                                              ; preds = %109
  %116 = load ptr, ptr %3, align 8
  %117 = getelementptr inbounds %struct.rzip_control, ptr %116, i32 0, i32 26
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 524288
  %120 = icmp ne i64 %119, 0
  %121 = xor i1 %120, true
  br label %122

122:                                              ; preds = %115, %109, %99
  %123 = phi i1 [ true, %109 ], [ true, %99 ], [ %121, %115 ]
  %124 = zext i1 %123 to i32
  %125 = trunc i32 %124 to i8
  call void @register_outfile(ptr noundef %100, ptr noundef %103, i8 noundef signext %125)
  br label %126

126:                                              ; preds = %122, %98
  %127 = load i32, ptr %4, align 4
  store i32 %127, ptr %2, align 4
  br label %128

128:                                              ; preds = %126, %54
  %129 = load i32, ptr %2, align 4
  ret i32 %129
}

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

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #6

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #1

declare i32 @mkstemp64(ptr noundef) #2

declare void @register_outfile(ptr noundef, ptr noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @write_fdout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store i64 %2, ptr %7, align 8
  %10 = load ptr, ptr %6, align 8
  store ptr %10, ptr %8, align 8
  br label %11

11:                                               ; preds = %39, %3
  %12 = load i64, ptr %7, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %11
  %15 = load i64, ptr %7, align 8
  %16 = icmp slt i64 %15, 1048576000
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = load i64, ptr %7, align 8
  br label %20

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %19, %17
  %21 = phi i64 [ %18, %17 ], [ 1048576000, %19 ]
  store i64 %21, ptr %9, align 8
  %22 = load ptr, ptr %5, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 37
  %24 = load i32, ptr %23, align 4
  %25 = load ptr, ptr %8, align 8
  %26 = load i64, ptr %9, align 8
  %27 = call i64 @write(i32 noundef %24, ptr noundef %25, i64 noundef %26)
  store i64 %27, ptr %9, align 8
  %28 = load i64, ptr %9, align 8
  %29 = icmp sle i64 %28, 0
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
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %37, i32 noundef 353, ptr noundef @.str.2, ptr noundef @__func__.write_fdout, ptr noundef @.str.16)
  store i1 false, ptr %4, align 1
  br label %47

38:                                               ; No predecessors!
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i64, ptr %9, align 8
  %41 = load i64, ptr %7, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, ptr %7, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  store ptr %45, ptr %8, align 8
  br label %11, !llvm.loop !11

46:                                               ; preds = %11
  store i1 true, ptr %4, align 1
  br label %47

47:                                               ; preds = %46, %36
  %48 = load i1, ptr %4, align 1
  ret i1 %48
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @flush_tmpoutbuf(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rzip_control, ptr %4, i32 0, i32 26
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 4
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %62, label %9

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 26
  %13 = load i64, ptr %12, align 8
  %14 = and i64 %13, 2048
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %18, i32 noundef 4, i32 noundef 363, ptr noundef @.str.2, ptr noundef @__func__.flush_tmpoutbuf, ptr noundef @.str.17)
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 26
  %24 = load i64, ptr %23, align 8
  %25 = and i64 %24, 8192
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %21
  %28 = load ptr, ptr %3, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = getelementptr inbounds %struct.rzip_control, ptr %29, i32 0, i32 7
  %31 = load ptr, ptr %30, align 8
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 10
  %34 = load i64, ptr %33, align 8
  %35 = call zeroext i1 @fwrite_stdout(ptr noundef %28, ptr noundef %31, i64 noundef %34)
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %27
  store i1 false, ptr %2, align 1
  br label %74

43:                                               ; preds = %27
  br label %61

44:                                               ; preds = %21
  %45 = load ptr, ptr %3, align 8
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 7
  %48 = load ptr, ptr %47, align 8
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 10
  %51 = load i64, ptr %50, align 8
  %52 = call zeroext i1 @write_fdout(ptr noundef %45, ptr noundef %48, i64 noundef %51)
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = sext i32 %56 to i64
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  store i1 false, ptr %2, align 1
  br label %74

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %1
  %63 = load ptr, ptr %3, align 8
  %64 = getelementptr inbounds %struct.rzip_control, ptr %63, i32 0, i32 10
  %65 = load i64, ptr %64, align 8
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 12
  %68 = load i64, ptr %67, align 8
  %69 = add nsw i64 %68, %65
  store i64 %69, ptr %67, align 8
  %70 = load ptr, ptr %3, align 8
  %71 = getelementptr inbounds %struct.rzip_control, ptr %70, i32 0, i32 10
  store i64 0, ptr %71, align 8
  %72 = load ptr, ptr %3, align 8
  %73 = getelementptr inbounds %struct.rzip_control, ptr %72, i32 0, i32 8
  store i64 0, ptr %73, align 8
  store i1 true, ptr %2, align 1
  br label %74

74:                                               ; preds = %62, %59, %42
  %75 = load i1, ptr %2, align 1
  ret i1 %75
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @fwrite_stdout(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca i1, align 1
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

12:                                               ; preds = %39, %3
  %13 = load i64, ptr %7, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %49

15:                                               ; preds = %12
  %16 = load i64, ptr %7, align 8
  %17 = icmp sgt i64 %16, 1048576000
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i64 1048576000, ptr %9, align 8
  br label %21

19:                                               ; preds = %15
  %20 = load i64, ptr %7, align 8
  store i64 %20, ptr %9, align 8
  br label %21

21:                                               ; preds = %19, %18
  %22 = load ptr, ptr %8, align 8
  %23 = load i64, ptr %9, align 8
  %24 = load ptr, ptr %5, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 4
  %26 = load ptr, ptr %25, align 8
  %27 = call i64 @fwrite(ptr noundef %22, i64 noundef 1, i64 noundef %23, ptr noundef %26)
  store i64 %27, ptr %9, align 8
  %28 = load i64, ptr %9, align 8
  %29 = icmp sle i64 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %37, i32 noundef 335, ptr noundef @.str.2, ptr noundef @__func__.fwrite_stdout, ptr noundef @.str.129)
  store i1 false, ptr %4, align 1
  br label %54

38:                                               ; No predecessors!
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i64, ptr %9, align 8
  %41 = load i64, ptr %7, align 8
  %42 = sub nsw i64 %41, %40
  store i64 %42, ptr %7, align 8
  %43 = load i64, ptr %9, align 8
  %44 = load ptr, ptr %8, align 8
  %45 = getelementptr inbounds i8, ptr %44, i64 %43
  store ptr %45, ptr %8, align 8
  %46 = load i64, ptr %9, align 8
  %47 = load i64, ptr %10, align 8
  %48 = add nsw i64 %47, %46
  store i64 %48, ptr %10, align 8
  br label %12, !llvm.loop !12

49:                                               ; preds = %12
  %50 = load ptr, ptr %5, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 4
  %52 = load ptr, ptr %51, align 8
  %53 = call i32 @fflush(ptr noundef %52)
  store i1 true, ptr %4, align 1
  br label %54

54:                                               ; preds = %49, %36
  %55 = load i1, ptr %4, align 1
  ret i1 %55
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @dump_tmpoutfile(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, -1
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
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %17, i32 noundef 384, ptr noundef @.str.2, ptr noundef @__func__.dump_tmpoutfile, ptr noundef @.str.18)
  store i1 false, ptr %3, align 1
  br label %82

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, ptr %5, align 4
  %21 = call i32 @fsync(i32 noundef %20)
  %22 = load i32, ptr %5, align 4
  %23 = call noalias ptr @fdopen(i32 noundef %22, ptr noundef @.str.1) #11
  store ptr %23, ptr %6, align 8
  %24 = load ptr, ptr %6, align 8
  %25 = icmp eq ptr %24, null
  %26 = xor i1 %25, true
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = sext i32 %28 to i64
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %19
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %33, i32 noundef 389, ptr noundef @.str.2, ptr noundef @__func__.dump_tmpoutfile, ptr noundef @.str.19)
  store i1 false, ptr %3, align 1
  br label %82

34:                                               ; No predecessors!
  br label %35

35:                                               ; preds = %34, %19
  %36 = load ptr, ptr %6, align 8
  call void @rewind(ptr noundef %36)
  %37 = load ptr, ptr %4, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 26
  %39 = load i64, ptr %38, align 8
  %40 = and i64 %39, 4
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %68, label %42

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 26
  %46 = load i64, ptr %45, align 8
  %47 = and i64 %46, 3072
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %43
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %51, i32 noundef 3, i32 noundef 393, ptr noundef @.str.2, ptr noundef @__func__.dump_tmpoutfile, ptr noundef @.str.20)
  br label %52

52:                                               ; preds = %50
  br label %53

53:                                               ; preds = %52, %43
  br label %54

54:                                               ; preds = %53
  br label %55

55:                                               ; preds = %59, %54
  %56 = load ptr, ptr %6, align 8
  %57 = call i32 @fgetc(ptr noundef %56)
  store i32 %57, ptr %7, align 4
  %58 = icmp ne i32 %57, -1
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i32, ptr %7, align 4
  %61 = call i32 @putchar(i32 noundef %60)
  br label %55, !llvm.loop !13

62:                                               ; preds = %55
  %63 = load ptr, ptr %4, align 8
  %64 = getelementptr inbounds %struct.rzip_control, ptr %63, i32 0, i32 4
  %65 = load ptr, ptr %64, align 8
  %66 = call i32 @fflush(ptr noundef %65)
  %67 = load ptr, ptr %6, align 8
  call void @rewind(ptr noundef %67)
  br label %68

68:                                               ; preds = %62, %35
  %69 = load i32, ptr %5, align 4
  %70 = call i32 @ftruncate64(i32 noundef %69, i64 noundef 0) #11
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = xor i1 %72, true
  %74 = zext i1 %73 to i32
  %75 = sext i32 %74 to i64
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %68
  br label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %79, i32 noundef 401, ptr noundef @.str.2, ptr noundef @__func__.dump_tmpoutfile, ptr noundef @.str.21)
  store i1 false, ptr %3, align 1
  br label %82

80:                                               ; No predecessors!
  br label %81

81:                                               ; preds = %80, %68
  store i1 true, ptr %3, align 1
  br label %82

82:                                               ; preds = %81, %78, %32, %16
  %83 = load i1, ptr %3, align 1
  ret i1 %83
}

declare i32 @fsync(i32 noundef) #2

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #1

declare void @rewind(ptr noundef) #2

declare i32 @fgetc(ptr noundef) #2

declare i32 @putchar(i32 noundef) #2

declare i32 @fflush(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @ftruncate64(i32 noundef, i64 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @write_fdin(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %7 = load ptr, ptr %3, align 8
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i32 0, i32 13
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %4, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 15
  %12 = load i64, ptr %11, align 8
  store i64 %12, ptr %5, align 8
  br label %13

13:                                               ; preds = %41, %1
  %14 = load i64, ptr %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load i64, ptr %5, align 8
  %18 = icmp slt i64 %17, 1048576000
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i64, ptr %5, align 8
  br label %22

21:                                               ; preds = %16
  br label %22

22:                                               ; preds = %21, %19
  %23 = phi i64 [ %20, %19 ], [ 1048576000, %21 ]
  store i64 %23, ptr %6, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 36
  %26 = load i32, ptr %25, align 8
  %27 = load ptr, ptr %4, align 8
  %28 = load i64, ptr %6, align 8
  %29 = call i64 @write(i32 noundef %26, ptr noundef %27, i64 noundef %28)
  store i64 %29, ptr %6, align 8
  %30 = load i64, ptr %6, align 8
  %31 = icmp sle i64 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = sext i32 %34 to i64
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %39, i32 noundef 417, ptr noundef @.str.2, ptr noundef @__func__.write_fdin, ptr noundef @.str.22)
  store i1 false, ptr %2, align 1
  br label %49

40:                                               ; No predecessors!
  br label %41

41:                                               ; preds = %40, %22
  %42 = load i64, ptr %6, align 8
  %43 = load i64, ptr %5, align 8
  %44 = sub nsw i64 %43, %42
  store i64 %44, ptr %5, align 8
  %45 = load i64, ptr %6, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  store ptr %47, ptr %4, align 8
  br label %13, !llvm.loop !14

48:                                               ; preds = %13
  store i1 true, ptr %2, align 1
  br label %49

49:                                               ; preds = %48, %38
  %50 = load i1, ptr %2, align 1
  ret i1 %50
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @open_tmpinfile(ptr noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 -1, ptr %4, align 4
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 6
  %7 = load ptr, ptr %6, align 8
  %8 = icmp ne ptr %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 6
  %12 = load ptr, ptr %11, align 8
  %13 = call i64 @strlen(ptr noundef %12) #12
  %14 = add i64 %13, 15
  %15 = call noalias ptr @malloc(i64 noundef %14) #15
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 0
  store ptr %15, ptr %17, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 0
  %20 = load ptr, ptr %19, align 8
  %21 = icmp ne ptr %20, null
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = sext i32 %25 to i64
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %9
  br label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %30, i32 noundef 433, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinfile, ptr noundef @.str.23)
  store i32 -1, ptr %2, align 4
  br label %194

31:                                               ; No predecessors!
  br label %32

32:                                               ; preds = %31, %9
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 0
  %35 = load ptr, ptr %34, align 8
  %36 = load ptr, ptr %3, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 6
  %38 = load ptr, ptr %37, align 8
  %39 = call ptr @strcpy(ptr noundef %35, ptr noundef %38) #11
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = call ptr @strcat(ptr noundef %42, ptr noundef @.str.24) #11
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 0
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @mkstemp64(ptr noundef %46)
  store i32 %47, ptr %4, align 4
  br label %48

48:                                               ; preds = %32, %1
  %49 = load i32, ptr %4, align 4
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %51, label %85

51:                                               ; preds = %48
  br label %52

52:                                               ; preds = %51
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 0
  %55 = load ptr, ptr %54, align 8
  call void @free(ptr noundef %55) #11
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.rzip_control, ptr %56, i32 0, i32 0
  store ptr null, ptr %57, align 8
  br label %58

58:                                               ; preds = %52
  %59 = call noalias ptr @malloc(i64 noundef 16) #15
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.rzip_control, ptr %60, i32 0, i32 0
  store ptr %59, ptr %61, align 8
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.rzip_control, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8
  %65 = icmp ne ptr %64, null
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %74, i32 noundef 444, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinfile, ptr noundef @.str.23)
  store i32 -1, ptr %2, align 4
  br label %194

75:                                               ; No predecessors!
  br label %76

76:                                               ; preds = %75, %58
  %77 = load ptr, ptr %3, align 8
  %78 = getelementptr inbounds %struct.rzip_control, ptr %77, i32 0, i32 0
  %79 = load ptr, ptr %78, align 8
  %80 = call ptr @strcpy(ptr noundef %79, ptr noundef @.str.24) #11
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 0
  %83 = load ptr, ptr %82, align 8
  %84 = call i32 @mkstemp64(ptr noundef %83)
  store i32 %84, ptr %4, align 4
  br label %85

85:                                               ; preds = %76, %48
  %86 = load i32, ptr %4, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  br label %89

89:                                               ; preds = %88
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 0
  %92 = load ptr, ptr %91, align 8
  call void @free(ptr noundef %92) #11
  %93 = load ptr, ptr %3, align 8
  %94 = getelementptr inbounds %struct.rzip_control, ptr %93, i32 0, i32 0
  store ptr null, ptr %94, align 8
  br label %95

95:                                               ; preds = %89
  %96 = call noalias ptr @malloc(i64 noundef 20) #15
  %97 = load ptr, ptr %3, align 8
  %98 = getelementptr inbounds %struct.rzip_control, ptr %97, i32 0, i32 0
  store ptr %96, ptr %98, align 8
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct.rzip_control, ptr %99, i32 0, i32 0
  %101 = load ptr, ptr %100, align 8
  %102 = icmp ne ptr %101, null
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %95
  br label %110

110:                                              ; preds = %109
  %111 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %111, i32 noundef 454, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinfile, ptr noundef @.str.23)
  store i32 -1, ptr %2, align 4
  br label %194

112:                                              ; No predecessors!
  br label %113

113:                                              ; preds = %112, %95
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.rzip_control, ptr %114, i32 0, i32 0
  %116 = load ptr, ptr %115, align 8
  %117 = call ptr @strcpy(ptr noundef %116, ptr noundef @.str.25) #11
  %118 = load ptr, ptr %3, align 8
  %119 = getelementptr inbounds %struct.rzip_control, ptr %118, i32 0, i32 0
  %120 = load ptr, ptr %119, align 8
  %121 = call i32 @mkstemp64(ptr noundef %120)
  store i32 %121, ptr %4, align 4
  br label %122

122:                                              ; preds = %113, %85
  %123 = load i32, ptr %4, align 4
  %124 = icmp eq i32 %123, -1
  br i1 %124, label %125, label %148

125:                                              ; preds = %122
  br label %126

126:                                              ; preds = %125
  %127 = load ptr, ptr %3, align 8
  %128 = getelementptr inbounds %struct.rzip_control, ptr %127, i32 0, i32 26
  %129 = load i64, ptr %128, align 8
  %130 = and i64 %129, 1
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %126
  br label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %3, align 8
  %135 = load ptr, ptr %3, align 8
  %136 = getelementptr inbounds %struct.rzip_control, ptr %135, i32 0, i32 0
  %137 = load ptr, ptr %136, align 8
  %138 = load ptr, ptr %3, align 8
  %139 = getelementptr inbounds %struct.rzip_control, ptr %138, i32 0, i32 26
  %140 = load i64, ptr %139, align 8
  %141 = and i64 %140, 16
  %142 = icmp ne i64 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, ptr @.str.14, ptr @.str.15
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %134, i32 noundef 2, i32 noundef 461, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinfile, ptr noundef @.str.26, ptr noundef %137, ptr noundef %144)
  br label %145

145:                                              ; preds = %133
  br label %146

146:                                              ; preds = %145, %126
  br label %147

147:                                              ; preds = %146
  br label %192

148:                                              ; preds = %122
  %149 = load ptr, ptr %3, align 8
  %150 = load ptr, ptr %3, align 8
  %151 = getelementptr inbounds %struct.rzip_control, ptr %150, i32 0, i32 0
  %152 = load ptr, ptr %151, align 8
  %153 = load ptr, ptr %3, align 8
  %154 = getelementptr inbounds %struct.rzip_control, ptr %153, i32 0, i32 26
  %155 = load i64, ptr %154, align 8
  %156 = and i64 %155, 16
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %164, label %158

158:                                              ; preds = %148
  %159 = load ptr, ptr %3, align 8
  %160 = getelementptr inbounds %struct.rzip_control, ptr %159, i32 0, i32 26
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 4
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %158, %148
  %165 = load ptr, ptr %3, align 8
  %166 = getelementptr inbounds %struct.rzip_control, ptr %165, i32 0, i32 26
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 4096
  %169 = icmp ne i64 %168, 0
  br label %170

170:                                              ; preds = %164, %158
  %171 = phi i1 [ false, %158 ], [ %169, %164 ]
  %172 = zext i1 %171 to i32
  %173 = trunc i32 %172 to i8
  call void @register_infile(ptr noundef %149, ptr noundef %152, i8 noundef signext %173)
  %174 = load ptr, ptr %3, align 8
  %175 = getelementptr inbounds %struct.rzip_control, ptr %174, i32 0, i32 0
  %176 = load ptr, ptr %175, align 8
  %177 = call i32 @unlink(ptr noundef %176) #11
  %178 = icmp ne i32 %177, 0
  %179 = xor i1 %178, true
  %180 = xor i1 %179, true
  %181 = zext i1 %180 to i32
  %182 = sext i32 %181 to i64
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %170
  %185 = load ptr, ptr %3, align 8
  %186 = load ptr, ptr %3, align 8
  %187 = getelementptr inbounds %struct.rzip_control, ptr %186, i32 0, i32 0
  %188 = load ptr, ptr %187, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %185, i32 noundef 467, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinfile, ptr noundef @.str.27, ptr noundef %188)
  %189 = load i32, ptr %4, align 4
  %190 = call i32 @close(i32 noundef %189)
  store i32 -1, ptr %2, align 4
  br label %194

191:                                              ; preds = %170
  br label %192

192:                                              ; preds = %191, %147
  %193 = load i32, ptr %4, align 4
  store i32 %193, ptr %2, align 4
  br label %194

194:                                              ; preds = %192, %184, %110, %73, %29
  %195 = load i32, ptr %2, align 4
  ret i32 %195
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare void @register_infile(ptr noundef, ptr noundef, i8 noundef signext) #2

; Function Attrs: nounwind
declare i32 @unlink(ptr noundef) #1

declare i32 @close(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @read_tmpinfile(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %8 = load i32, ptr %5, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i1 false, ptr %3, align 1
  br label %48

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 26
  %14 = load i64, ptr %13, align 8
  %15 = and i64 %14, 1
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 17
  %20 = load ptr, ptr %19, align 8
  %21 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef @.str.28)
  br label %22

22:                                               ; preds = %17, %11
  %23 = load i32, ptr %5, align 4
  %24 = call noalias ptr @fdopen(i32 noundef %23, ptr noundef @.str.29) #11
  store ptr %24, ptr %6, align 8
  %25 = load ptr, ptr %6, align 8
  %26 = icmp eq ptr %25, null
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = sext i32 %29 to i64
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %22
  br label %33

33:                                               ; preds = %32
  %34 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %34, i32 noundef 502, ptr noundef @.str.2, ptr noundef @__func__.read_tmpinfile, ptr noundef @.str.30)
  store i1 false, ptr %3, align 1
  br label %48

35:                                               ; No predecessors!
  br label %36

36:                                               ; preds = %35, %22
  br label %37

37:                                               ; preds = %40, %36
  %38 = call i32 @getchar()
  store i32 %38, ptr %7, align 4
  %39 = icmp ne i32 %38, -1
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, ptr %7, align 4
  %42 = load ptr, ptr %6, align 8
  %43 = call i32 @fputc(i32 noundef %41, ptr noundef %42)
  br label %37, !llvm.loop !15

44:                                               ; preds = %37
  %45 = load ptr, ptr %6, align 8
  %46 = call i32 @fflush(ptr noundef %45)
  %47 = load ptr, ptr %6, align 8
  call void @rewind(ptr noundef %47)
  store i1 true, ptr %3, align 1
  br label %48

48:                                               ; preds = %44, %33, %10
  %49 = load i1, ptr %3, align 1
  ret i1 %49
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

declare i32 @getchar() #2

declare i32 @fputc(i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_tmpoutbuf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 26
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -2097153
  store i64 %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 7
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10) #11
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 7
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 27
  %16 = load i64, ptr %15, align 8
  %17 = sdiv i64 %16, 18
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 23
  %20 = load i64, ptr %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 22
  store i64 %21, ptr %23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_tmpinbuf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 14
  store i64 0, ptr %4, align 8
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 15
  store i64 0, ptr %6, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @clear_tmpinfile(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rzip_control, ptr %4, i32 0, i32 36
  %6 = load i32, ptr %5, align 8
  %7 = call i64 @lseek64(i32 noundef %6, i64 noundef 0, i32 noundef 0) #11
  %8 = icmp ne i64 %7, 0
  %9 = xor i1 %8, true
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = sext i32 %11 to i64
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %1
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %16, i32 noundef 569, ptr noundef @.str.2, ptr noundef @__func__.clear_tmpinfile, ptr noundef @.str.31)
  store i1 false, ptr %2, align 1
  br label %34

17:                                               ; No predecessors!
  br label %18

18:                                               ; preds = %17, %1
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 36
  %21 = load i32, ptr %20, align 8
  %22 = call i32 @ftruncate64(i32 noundef %21, i64 noundef 0) #11
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  br label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %31, i32 noundef 571, ptr noundef @.str.2, ptr noundef @__func__.clear_tmpinfile, ptr noundef @.str.32)
  store i1 false, ptr %2, align 1
  br label %34

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %18
  store i1 true, ptr %2, align 1
  br label %34

34:                                               ; preds = %33, %30, %15
  %35 = load i1, ptr %2, align 1
  ret i1 %35
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @close_tmpinbuf(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 26
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, -4194305
  store i64 %6, ptr %4, align 8
  br label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 13
  %10 = load ptr, ptr %9, align 8
  call void @free(ptr noundef %10) #11
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 13
  store ptr null, ptr %12, align 8
  br label %13

13:                                               ; preds = %7
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 27
  %16 = load i64, ptr %15, align 8
  %17 = sdiv i64 %16, 18
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 23
  %20 = load i64, ptr %19, align 8
  %21 = add nsw i64 %20, %17
  store i64 %21, ptr %19, align 8
  %22 = load ptr, ptr %2, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 22
  store i64 %21, ptr %23, align 8
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @decompress_file(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.statvfs, align 8
  %13 = alloca %struct.stat, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca ptr, align 8
  %19 = alloca i64, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca ptr, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  store ptr null, ptr %6, align 8
  store i32 -1, ptr %8, align 4
  store i32 -1, ptr %9, align 4
  store i64 0, ptr %10, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 26
  %28 = load i64, ptr %27, align 8
  %29 = and i64 %28, 4096
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %89, label %31

31:                                               ; preds = %1
  %32 = load ptr, ptr %3, align 8
  %33 = getelementptr inbounds %struct.rzip_control, ptr %32, i32 0, i32 0
  %34 = load ptr, ptr %33, align 8
  %35 = call i32 @stat64(ptr noundef %34, ptr noundef %13) #11
  %36 = getelementptr inbounds %struct.stat, ptr %13, i32 0, i32 3
  %37 = load i32, ptr %36, align 8
  %38 = and i32 %37, 61440
  %39 = icmp eq i32 %38, 32768
  br i1 %39, label %75, label %40

40:                                               ; preds = %31
  %41 = load ptr, ptr %3, align 8
  %42 = getelementptr inbounds %struct.rzip_control, ptr %41, i32 0, i32 0
  %43 = load ptr, ptr %42, align 8
  %44 = call ptr @strrchr(ptr noundef %43, i32 noundef 46) #12
  store ptr %44, ptr %4, align 8
  %45 = icmp ne ptr %44, null
  br i1 %45, label %46, label %75

46:                                               ; preds = %40
  %47 = load ptr, ptr %4, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 19
  %50 = load ptr, ptr %49, align 8
  %51 = call i32 @strcmp(ptr noundef %47, ptr noundef %50) #12
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %75

53:                                               ; preds = %46
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.rzip_control, ptr %54, i32 0, i32 0
  %56 = load ptr, ptr %55, align 8
  %57 = call i64 @strlen(ptr noundef %56) #12
  %58 = load ptr, ptr %3, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 19
  %60 = load ptr, ptr %59, align 8
  %61 = call i64 @strlen(ptr noundef %60) #12
  %62 = add i64 %57, %61
  %63 = add i64 %62, 1
  %64 = alloca i8, i64 %63, align 16
  store ptr %64, ptr %6, align 8
  %65 = load ptr, ptr %6, align 8
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 0
  %68 = load ptr, ptr %67, align 8
  %69 = call ptr @strcpy(ptr noundef %65, ptr noundef %68) #11
  %70 = load ptr, ptr %6, align 8
  %71 = load ptr, ptr %3, align 8
  %72 = getelementptr inbounds %struct.rzip_control, ptr %71, i32 0, i32 19
  %73 = load ptr, ptr %72, align 8
  %74 = call ptr @strcat(ptr noundef %70, ptr noundef %73) #11
  br label %88

75:                                               ; preds = %46, %40, %31
  %76 = load ptr, ptr %3, align 8
  %77 = getelementptr inbounds %struct.rzip_control, ptr %76, i32 0, i32 0
  %78 = load ptr, ptr %77, align 8
  store ptr %78, ptr %14, align 8
  %79 = load ptr, ptr %14, align 8
  %80 = call i64 @strlen(ptr noundef %79) #12
  %81 = add i64 %80, 1
  store i64 %81, ptr %15, align 8
  %82 = load i64, ptr %15, align 8
  %83 = alloca i8, i64 %82, align 16
  store ptr %83, ptr %16, align 8
  %84 = load ptr, ptr %16, align 8
  %85 = load ptr, ptr %14, align 8
  %86 = load i64, ptr %15, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %84, ptr align 1 %85, i64 %86, i1 false)
  store ptr %84, ptr %17, align 8
  %87 = load ptr, ptr %17, align 8
  store ptr %87, ptr %6, align 8
  br label %88

88:                                               ; preds = %75, %53
  br label %89

89:                                               ; preds = %88, %1
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 26
  %92 = load i64, ptr %91, align 8
  %93 = and i64 %92, 8192
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %240, label %95

95:                                               ; preds = %89
  %96 = load ptr, ptr %3, align 8
  %97 = getelementptr inbounds %struct.rzip_control, ptr %96, i32 0, i32 26
  %98 = load i64, ptr %97, align 8
  %99 = and i64 %98, 4
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %240, label %101

101:                                              ; preds = %95
  %102 = load ptr, ptr %3, align 8
  %103 = getelementptr inbounds %struct.rzip_control, ptr %102, i32 0, i32 2
  %104 = load ptr, ptr %103, align 8
  %105 = icmp ne ptr %104, null
  br i1 %105, label %106, label %113

106:                                              ; preds = %101
  %107 = load ptr, ptr %3, align 8
  %108 = getelementptr inbounds %struct.rzip_control, ptr %107, i32 0, i32 2
  %109 = load ptr, ptr %108, align 8
  %110 = call noalias ptr @strdup(ptr noundef %109) #11
  %111 = load ptr, ptr %3, align 8
  %112 = getelementptr inbounds %struct.rzip_control, ptr %111, i32 0, i32 3
  store ptr %110, ptr %112, align 8
  br label %217

113:                                              ; preds = %101
  %114 = load ptr, ptr %3, align 8
  %115 = getelementptr inbounds %struct.rzip_control, ptr %114, i32 0, i32 5
  %116 = load ptr, ptr %115, align 8
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %134

118:                                              ; preds = %113
  %119 = load ptr, ptr %6, align 8
  %120 = call ptr @strrchr(ptr noundef %119, i32 noundef 47) #12
  store ptr %120, ptr %4, align 8
  %121 = icmp ne ptr %120, null
  br i1 %121, label %122, label %134

122:                                              ; preds = %118
  %123 = load ptr, ptr %4, align 8
  %124 = getelementptr inbounds i8, ptr %123, i64 1
  store ptr %124, ptr %18, align 8
  %125 = load ptr, ptr %18, align 8
  %126 = call i64 @strlen(ptr noundef %125) #12
  %127 = add i64 %126, 1
  store i64 %127, ptr %19, align 8
  %128 = load i64, ptr %19, align 8
  %129 = alloca i8, i64 %128, align 16
  store ptr %129, ptr %20, align 8
  %130 = load ptr, ptr %20, align 8
  %131 = load ptr, ptr %18, align 8
  %132 = load i64, ptr %19, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %130, ptr align 1 %131, i64 %132, i1 false)
  store ptr %130, ptr %21, align 8
  %133 = load ptr, ptr %21, align 8
  store ptr %133, ptr %5, align 8
  br label %145

134:                                              ; preds = %118, %113
  %135 = load ptr, ptr %6, align 8
  store ptr %135, ptr %22, align 8
  %136 = load ptr, ptr %22, align 8
  %137 = call i64 @strlen(ptr noundef %136) #12
  %138 = add i64 %137, 1
  store i64 %138, ptr %23, align 8
  %139 = load i64, ptr %23, align 8
  %140 = alloca i8, i64 %139, align 16
  store ptr %140, ptr %24, align 8
  %141 = load ptr, ptr %24, align 8
  %142 = load ptr, ptr %22, align 8
  %143 = load i64, ptr %23, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %141, ptr align 1 %142, i64 %143, i1 false)
  store ptr %141, ptr %25, align 8
  %144 = load ptr, ptr %25, align 8
  store ptr %144, ptr %5, align 8
  br label %145

145:                                              ; preds = %134, %122
  %146 = load ptr, ptr %5, align 8
  %147 = call ptr @strrchr(ptr noundef %146, i32 noundef 46) #12
  store ptr %147, ptr %4, align 8
  %148 = icmp ne ptr %147, null
  br i1 %148, label %149, label %158

149:                                              ; preds = %145
  %150 = load ptr, ptr %4, align 8
  %151 = load ptr, ptr %3, align 8
  %152 = getelementptr inbounds %struct.rzip_control, ptr %151, i32 0, i32 19
  %153 = load ptr, ptr %152, align 8
  %154 = call i32 @strcmp(ptr noundef %150, ptr noundef %153) #12
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %149
  %157 = load ptr, ptr %4, align 8
  store i8 0, ptr %157, align 1
  br label %158

158:                                              ; preds = %156, %149, %145
  %159 = load ptr, ptr %3, align 8
  %160 = getelementptr inbounds %struct.rzip_control, ptr %159, i32 0, i32 5
  %161 = load ptr, ptr %160, align 8
  %162 = icmp eq ptr %161, null
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %169

164:                                              ; preds = %158
  %165 = load ptr, ptr %3, align 8
  %166 = getelementptr inbounds %struct.rzip_control, ptr %165, i32 0, i32 5
  %167 = load ptr, ptr %166, align 8
  %168 = call i64 @strlen(ptr noundef %167) #12
  br label %169

169:                                              ; preds = %164, %163
  %170 = phi i64 [ 0, %163 ], [ %168, %164 ]
  %171 = load ptr, ptr %5, align 8
  %172 = call i64 @strlen(ptr noundef %171) #12
  %173 = add i64 %170, %172
  %174 = add i64 %173, 1
  %175 = call noalias ptr @malloc(i64 noundef %174) #15
  %176 = load ptr, ptr %3, align 8
  %177 = getelementptr inbounds %struct.rzip_control, ptr %176, i32 0, i32 3
  store ptr %175, ptr %177, align 8
  %178 = load ptr, ptr %3, align 8
  %179 = getelementptr inbounds %struct.rzip_control, ptr %178, i32 0, i32 3
  %180 = load ptr, ptr %179, align 8
  %181 = icmp ne ptr %180, null
  %182 = xor i1 %181, true
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = sext i32 %185 to i64
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %169
  br label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %190, i32 noundef 724, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.11)
  store i1 false, ptr %2, align 1
  br label %847

191:                                              ; No predecessors!
  br label %192

192:                                              ; preds = %191, %169
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds %struct.rzip_control, ptr %193, i32 0, i32 5
  %195 = load ptr, ptr %194, align 8
  %196 = icmp ne ptr %195, null
  br i1 %196, label %197, label %210

197:                                              ; preds = %192
  %198 = load ptr, ptr %3, align 8
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i32 0, i32 3
  %200 = load ptr, ptr %199, align 8
  %201 = load ptr, ptr %3, align 8
  %202 = getelementptr inbounds %struct.rzip_control, ptr %201, i32 0, i32 5
  %203 = load ptr, ptr %202, align 8
  %204 = call ptr @strcpy(ptr noundef %200, ptr noundef %203) #11
  %205 = load ptr, ptr %3, align 8
  %206 = getelementptr inbounds %struct.rzip_control, ptr %205, i32 0, i32 3
  %207 = load ptr, ptr %206, align 8
  %208 = load ptr, ptr %5, align 8
  %209 = call ptr @strcat(ptr noundef %207, ptr noundef %208) #11
  br label %216

210:                                              ; preds = %192
  %211 = load ptr, ptr %3, align 8
  %212 = getelementptr inbounds %struct.rzip_control, ptr %211, i32 0, i32 3
  %213 = load ptr, ptr %212, align 8
  %214 = load ptr, ptr %5, align 8
  %215 = call ptr @strcpy(ptr noundef %213, ptr noundef %214) #11
  br label %216

216:                                              ; preds = %210, %197
  br label %217

217:                                              ; preds = %216, %106
  %218 = load ptr, ptr %3, align 8
  %219 = getelementptr inbounds %struct.rzip_control, ptr %218, i32 0, i32 26
  %220 = load i64, ptr %219, align 8
  %221 = and i64 %220, 8192
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %239, label %223

223:                                              ; preds = %217
  br label %224

224:                                              ; preds = %223
  %225 = load ptr, ptr %3, align 8
  %226 = getelementptr inbounds %struct.rzip_control, ptr %225, i32 0, i32 26
  %227 = load i64, ptr %226, align 8
  %228 = and i64 %227, 1
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %237

230:                                              ; preds = %224
  br label %231

231:                                              ; preds = %230
  %232 = load ptr, ptr %3, align 8
  %233 = load ptr, ptr %3, align 8
  %234 = getelementptr inbounds %struct.rzip_control, ptr %233, i32 0, i32 3
  %235 = load ptr, ptr %234, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %232, i32 noundef 2, i32 noundef 734, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.33, ptr noundef %235)
  br label %236

236:                                              ; preds = %231
  br label %237

237:                                              ; preds = %236, %224
  br label %238

238:                                              ; preds = %237
  br label %239

239:                                              ; preds = %238, %217
  br label %240

240:                                              ; preds = %239, %95, %89
  %241 = load ptr, ptr %3, align 8
  %242 = getelementptr inbounds %struct.rzip_control, ptr %241, i32 0, i32 26
  %243 = load i64, ptr %242, align 8
  %244 = and i64 %243, 4096
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %274

246:                                              ; preds = %240
  %247 = load ptr, ptr %3, align 8
  %248 = call i32 @open_tmpinfile(ptr noundef %247)
  store i32 %248, ptr %7, align 4
  %249 = load ptr, ptr %3, align 8
  %250 = call zeroext i1 @read_tmpinmagic(ptr noundef %249)
  %251 = load ptr, ptr %3, align 8
  %252 = getelementptr inbounds %struct.rzip_control, ptr %251, i32 0, i32 26
  %253 = load i64, ptr %252, align 8
  %254 = and i64 %253, 8388608
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %246
  br label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %258, i32 noundef 741, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.34)
  store i1 false, ptr %2, align 1
  br label %847

259:                                              ; No predecessors!
  br label %260

260:                                              ; preds = %259, %246
  %261 = load ptr, ptr %3, align 8
  %262 = getelementptr inbounds %struct.rzip_control, ptr %261, i32 0, i32 34
  %263 = load i64, ptr %262, align 8
  store i64 %263, ptr %10, align 8
  %264 = load ptr, ptr %3, align 8
  %265 = call zeroext i1 @open_tmpinbuf(ptr noundef %264)
  %266 = xor i1 %265, true
  %267 = xor i1 %266, true
  %268 = xor i1 %267, true
  %269 = zext i1 %268 to i32
  %270 = sext i32 %269 to i64
  %271 = icmp ne i64 %270, 0
  br i1 %271, label %272, label %273

272:                                              ; preds = %260
  store i1 false, ptr %2, align 1
  br label %847

273:                                              ; preds = %260
  br label %290

274:                                              ; preds = %240
  %275 = load ptr, ptr %6, align 8
  %276 = call i32 (ptr, i32, ...) @open64(ptr noundef %275, i32 noundef 0)
  store i32 %276, ptr %7, align 4
  %277 = load i32, ptr %7, align 4
  %278 = icmp eq i32 %277, -1
  %279 = xor i1 %278, true
  %280 = xor i1 %279, true
  %281 = zext i1 %280 to i32
  %282 = sext i32 %281 to i64
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %284, label %289

284:                                              ; preds = %274
  br label %285

285:                                              ; preds = %284
  %286 = load ptr, ptr %3, align 8
  %287 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %286, i32 noundef 748, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.35, ptr noundef %287)
  store i1 false, ptr %2, align 1
  br label %847

288:                                              ; No predecessors!
  br label %289

289:                                              ; preds = %288, %274
  br label %290

290:                                              ; preds = %289, %273
  %291 = load i32, ptr %7, align 4
  %292 = load ptr, ptr %3, align 8
  %293 = getelementptr inbounds %struct.rzip_control, ptr %292, i32 0, i32 36
  store i32 %291, ptr %293, align 8
  %294 = load ptr, ptr %3, align 8
  %295 = getelementptr inbounds %struct.rzip_control, ptr %294, i32 0, i32 26
  %296 = load i64, ptr %295, align 8
  %297 = and i64 %296, 4
  %298 = load ptr, ptr %3, align 8
  %299 = getelementptr inbounds %struct.rzip_control, ptr %298, i32 0, i32 26
  %300 = load i64, ptr %299, align 8
  %301 = and i64 %300, 8192
  %302 = or i64 %297, %301
  %303 = icmp ne i64 %302, 0
  br i1 %303, label %402, label %304

304:                                              ; preds = %290
  %305 = load ptr, ptr %3, align 8
  %306 = getelementptr inbounds %struct.rzip_control, ptr %305, i32 0, i32 3
  %307 = load ptr, ptr %306, align 8
  %308 = call i32 (ptr, i32, ...) @open64(ptr noundef %307, i32 noundef 193, i32 noundef 438)
  store i32 %308, ptr %8, align 4
  %309 = load ptr, ptr %3, align 8
  %310 = getelementptr inbounds %struct.rzip_control, ptr %309, i32 0, i32 26
  %311 = load i64, ptr %310, align 8
  %312 = and i64 %311, 8
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %344

314:                                              ; preds = %304
  %315 = load i32, ptr %8, align 4
  %316 = icmp eq i32 -1, %315
  br i1 %316, label %317, label %344

317:                                              ; preds = %314
  %318 = call ptr @__errno_location() #13
  %319 = load i32, ptr %318, align 4
  %320 = icmp eq i32 17, %319
  br i1 %320, label %321, label %344

321:                                              ; preds = %317
  %322 = load ptr, ptr %3, align 8
  %323 = getelementptr inbounds %struct.rzip_control, ptr %322, i32 0, i32 3
  %324 = load ptr, ptr %323, align 8
  %325 = call i32 @unlink(ptr noundef %324) #11
  %326 = icmp ne i32 %325, 0
  %327 = xor i1 %326, true
  %328 = xor i1 %327, true
  %329 = zext i1 %328 to i32
  %330 = sext i32 %329 to i64
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %339

332:                                              ; preds = %321
  br label %333

333:                                              ; preds = %332
  %334 = load ptr, ptr %3, align 8
  %335 = load ptr, ptr %3, align 8
  %336 = getelementptr inbounds %struct.rzip_control, ptr %335, i32 0, i32 3
  %337 = load ptr, ptr %336, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %334, i32 noundef 757, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.36, ptr noundef %337)
  store i1 false, ptr %2, align 1
  br label %847

338:                                              ; No predecessors!
  br label %339

339:                                              ; preds = %338, %321
  %340 = load ptr, ptr %3, align 8
  %341 = getelementptr inbounds %struct.rzip_control, ptr %340, i32 0, i32 3
  %342 = load ptr, ptr %341, align 8
  %343 = call i32 (ptr, i32, ...) @open64(ptr noundef %342, i32 noundef 193, i32 noundef 438)
  store i32 %343, ptr %8, align 4
  br label %344

344:                                              ; preds = %339, %317, %314, %304
  %345 = load i32, ptr %8, align 4
  %346 = icmp eq i32 %345, -1
  %347 = xor i1 %346, true
  %348 = xor i1 %347, true
  %349 = zext i1 %348 to i32
  %350 = sext i32 %349 to i64
  %351 = icmp ne i64 %350, 0
  br i1 %351, label %352, label %363

352:                                              ; preds = %344
  %353 = load ptr, ptr %3, align 8
  %354 = getelementptr inbounds %struct.rzip_control, ptr %353, i32 0, i32 26
  %355 = load i64, ptr %354, align 8
  %356 = or i64 %355, 524288
  store i64 %356, ptr %354, align 8
  br label %357

357:                                              ; preds = %352
  %358 = load ptr, ptr %3, align 8
  %359 = load ptr, ptr %3, align 8
  %360 = getelementptr inbounds %struct.rzip_control, ptr %359, i32 0, i32 3
  %361 = load ptr, ptr %360, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %358, i32 noundef 764, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.37, ptr noundef %361)
  store i1 false, ptr %2, align 1
  br label %847

362:                                              ; No predecessors!
  br label %363

363:                                              ; preds = %362, %344
  %364 = load ptr, ptr %3, align 8
  %365 = getelementptr inbounds %struct.rzip_control, ptr %364, i32 0, i32 3
  %366 = load ptr, ptr %365, align 8
  %367 = call i32 (ptr, i32, ...) @open64(ptr noundef %366, i32 noundef 0)
  store i32 %367, ptr %9, align 4
  %368 = load i32, ptr %9, align 4
  %369 = icmp eq i32 %368, -1
  %370 = xor i1 %369, true
  %371 = xor i1 %370, true
  %372 = zext i1 %371 to i32
  %373 = sext i32 %372 to i64
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %363
  br label %376

376:                                              ; preds = %375
  %377 = load ptr, ptr %3, align 8
  %378 = load ptr, ptr %3, align 8
  %379 = getelementptr inbounds %struct.rzip_control, ptr %378, i32 0, i32 3
  %380 = load ptr, ptr %379, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %377, i32 noundef 768, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.38, ptr noundef %380)
  store i1 false, ptr %2, align 1
  br label %847

381:                                              ; No predecessors!
  br label %382

382:                                              ; preds = %381, %363
  %383 = load ptr, ptr %3, align 8
  %384 = getelementptr inbounds %struct.rzip_control, ptr %383, i32 0, i32 26
  %385 = load i64, ptr %384, align 8
  %386 = and i64 %385, 4096
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %401, label %388

388:                                              ; preds = %382
  %389 = load ptr, ptr %3, align 8
  %390 = load i32, ptr %7, align 4
  %391 = load i32, ptr %8, align 4
  %392 = call zeroext i1 @preserve_perms(ptr noundef %389, i32 noundef %390, i32 noundef %391)
  %393 = xor i1 %392, true
  %394 = xor i1 %393, true
  %395 = xor i1 %394, true
  %396 = zext i1 %395 to i32
  %397 = sext i32 %396 to i64
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %388
  store i1 false, ptr %2, align 1
  br label %847

400:                                              ; preds = %388
  br label %401

401:                                              ; preds = %400, %382
  br label %447

402:                                              ; preds = %290
  %403 = load ptr, ptr %3, align 8
  %404 = call i32 @open_tmpoutfile(ptr noundef %403)
  store i32 %404, ptr %8, align 4
  %405 = load i32, ptr %8, align 4
  %406 = icmp eq i32 %405, -1
  br i1 %406, label %407, label %408

407:                                              ; preds = %402
  store i32 -1, ptr %9, align 4
  br label %446

408:                                              ; preds = %402
  %409 = load ptr, ptr %3, align 8
  %410 = getelementptr inbounds %struct.rzip_control, ptr %409, i32 0, i32 3
  %411 = load ptr, ptr %410, align 8
  %412 = call i32 (ptr, i32, ...) @open64(ptr noundef %411, i32 noundef 0)
  store i32 %412, ptr %9, align 4
  %413 = load i32, ptr %9, align 4
  %414 = icmp eq i32 %413, -1
  %415 = xor i1 %414, true
  %416 = xor i1 %415, true
  %417 = zext i1 %416 to i32
  %418 = sext i32 %417 to i64
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %427

420:                                              ; preds = %408
  br label %421

421:                                              ; preds = %420
  %422 = load ptr, ptr %3, align 8
  %423 = load ptr, ptr %3, align 8
  %424 = getelementptr inbounds %struct.rzip_control, ptr %423, i32 0, i32 3
  %425 = load ptr, ptr %424, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %422, i32 noundef 781, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.38, ptr noundef %425)
  store i1 false, ptr %2, align 1
  br label %847

426:                                              ; No predecessors!
  br label %427

427:                                              ; preds = %426, %408
  %428 = load ptr, ptr %3, align 8
  %429 = getelementptr inbounds %struct.rzip_control, ptr %428, i32 0, i32 3
  %430 = load ptr, ptr %429, align 8
  %431 = call i32 @unlink(ptr noundef %430) #11
  %432 = icmp ne i32 %431, 0
  %433 = xor i1 %432, true
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i32
  %436 = sext i32 %435 to i64
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %445

438:                                              ; preds = %427
  br label %439

439:                                              ; preds = %438
  %440 = load ptr, ptr %3, align 8
  %441 = load ptr, ptr %3, align 8
  %442 = getelementptr inbounds %struct.rzip_control, ptr %441, i32 0, i32 3
  %443 = load ptr, ptr %442, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %440, i32 noundef 784, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.27, ptr noundef %443)
  store i1 false, ptr %2, align 1
  br label %847

444:                                              ; No predecessors!
  br label %445

445:                                              ; preds = %444, %427
  br label %446

446:                                              ; preds = %445, %407
  br label %447

447:                                              ; preds = %446, %401
  %448 = load ptr, ptr %3, align 8
  %449 = call zeroext i1 @open_tmpoutbuf(ptr noundef %448)
  %450 = xor i1 %449, true
  %451 = xor i1 %450, true
  %452 = xor i1 %451, true
  %453 = zext i1 %452 to i32
  %454 = sext i32 %453 to i64
  %455 = icmp ne i64 %454, 0
  br i1 %455, label %456, label %457

456:                                              ; preds = %447
  store i1 false, ptr %2, align 1
  br label %847

457:                                              ; preds = %447
  %458 = load ptr, ptr %3, align 8
  %459 = getelementptr inbounds %struct.rzip_control, ptr %458, i32 0, i32 26
  %460 = load i64, ptr %459, align 8
  %461 = and i64 %460, 4096
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %475, label %463

463:                                              ; preds = %457
  %464 = load ptr, ptr %3, align 8
  %465 = load i32, ptr %7, align 4
  %466 = call zeroext i1 @read_magic(ptr noundef %464, i32 noundef %465, ptr noundef %10)
  %467 = xor i1 %466, true
  %468 = xor i1 %467, true
  %469 = xor i1 %468, true
  %470 = zext i1 %469 to i32
  %471 = sext i32 %470 to i64
  %472 = icmp ne i64 %471, 0
  br i1 %472, label %473, label %474

473:                                              ; preds = %463
  store i1 false, ptr %2, align 1
  br label %847

474:                                              ; preds = %463
  br label %475

475:                                              ; preds = %474, %457
  %476 = load ptr, ptr %3, align 8
  %477 = getelementptr inbounds %struct.rzip_control, ptr %476, i32 0, i32 26
  %478 = load i64, ptr %477, align 8
  %479 = and i64 %478, 8192
  %480 = icmp ne i64 %479, 0
  br i1 %480, label %525, label %481

481:                                              ; preds = %475
  %482 = load ptr, ptr %3, align 8
  %483 = getelementptr inbounds %struct.rzip_control, ptr %482, i32 0, i32 26
  %484 = load i64, ptr %483, align 8
  %485 = and i64 %484, 4
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %525, label %487

487:                                              ; preds = %481
  %488 = load i32, ptr %8, align 4
  %489 = call i32 @fstatvfs64(i32 noundef %488, ptr noundef %12) #11
  %490 = icmp ne i32 %489, 0
  %491 = xor i1 %490, true
  %492 = xor i1 %491, true
  %493 = zext i1 %492 to i32
  %494 = sext i32 %493 to i64
  %495 = icmp ne i64 %494, 0
  br i1 %495, label %496, label %500

496:                                              ; preds = %487
  br label %497

497:                                              ; preds = %496
  %498 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %498, i32 noundef 800, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.39)
  store i1 false, ptr %2, align 1
  br label %847

499:                                              ; No predecessors!
  br label %500

500:                                              ; preds = %499, %487
  %501 = getelementptr inbounds %struct.statvfs, ptr %12, i32 0, i32 0
  %502 = load i64, ptr %501, align 8
  %503 = getelementptr inbounds %struct.statvfs, ptr %12, i32 0, i32 4
  %504 = load i64, ptr %503, align 8
  %505 = mul nsw i64 %502, %504
  store i64 %505, ptr %11, align 8
  %506 = load i64, ptr %11, align 8
  %507 = load i64, ptr %10, align 8
  %508 = icmp slt i64 %506, %507
  br i1 %508, label %509, label %524

509:                                              ; preds = %500
  %510 = load ptr, ptr %3, align 8
  %511 = getelementptr inbounds %struct.rzip_control, ptr %510, i32 0, i32 26
  %512 = load i64, ptr %511, align 8
  %513 = and i64 %512, 8
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %519

515:                                              ; preds = %509
  br label %516

516:                                              ; preds = %515
  %517 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %517, i32 noundef 804, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.40)
  br label %518

518:                                              ; preds = %516
  br label %523

519:                                              ; preds = %509
  br label %520

520:                                              ; preds = %519
  %521 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %521, i32 noundef 806, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.41)
  store i1 false, ptr %2, align 1
  br label %847

522:                                              ; No predecessors!
  br label %523

523:                                              ; preds = %522, %518
  br label %524

524:                                              ; preds = %523, %500
  br label %525

525:                                              ; preds = %524, %481, %475
  %526 = load i32, ptr %8, align 4
  %527 = load ptr, ptr %3, align 8
  %528 = getelementptr inbounds %struct.rzip_control, ptr %527, i32 0, i32 37
  store i32 %526, ptr %528, align 4
  %529 = load i32, ptr %9, align 4
  %530 = load ptr, ptr %3, align 8
  %531 = getelementptr inbounds %struct.rzip_control, ptr %530, i32 0, i32 38
  store i32 %529, ptr %531, align 8
  %532 = load ptr, ptr %3, align 8
  %533 = getelementptr inbounds %struct.rzip_control, ptr %532, i32 0, i32 26
  %534 = load i64, ptr %533, align 8
  %535 = and i64 %534, 65536
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %556, label %537

537:                                              ; preds = %525
  %538 = load ptr, ptr %3, align 8
  %539 = getelementptr inbounds %struct.rzip_control, ptr %538, i32 0, i32 26
  %540 = load i64, ptr %539, align 8
  %541 = and i64 %540, 131072
  %542 = icmp ne i64 %541, 0
  br i1 %542, label %556, label %543

543:                                              ; preds = %537
  br label %544

544:                                              ; preds = %543
  %545 = load ptr, ptr %3, align 8
  %546 = getelementptr inbounds %struct.rzip_control, ptr %545, i32 0, i32 26
  %547 = load i64, ptr %546, align 8
  %548 = and i64 %547, 3072
  %549 = icmp ne i64 %548, 0
  br i1 %549, label %550, label %554

550:                                              ; preds = %544
  br label %551

551:                                              ; preds = %550
  %552 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %552, i32 noundef 3, i32 noundef 813, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.42)
  br label %553

553:                                              ; preds = %551
  br label %554

554:                                              ; preds = %553, %544
  br label %555

555:                                              ; preds = %554
  br label %556

556:                                              ; preds = %555, %537, %525
  %557 = load ptr, ptr %3, align 8
  %558 = getelementptr inbounds %struct.rzip_control, ptr %557, i32 0, i32 26
  %559 = load i64, ptr %558, align 8
  %560 = and i64 %559, 131072
  %561 = icmp ne i64 %560, 0
  br i1 %561, label %562, label %575

562:                                              ; preds = %556
  br label %563

563:                                              ; preds = %562
  %564 = load ptr, ptr %3, align 8
  %565 = getelementptr inbounds %struct.rzip_control, ptr %564, i32 0, i32 26
  %566 = load i64, ptr %565, align 8
  %567 = and i64 %566, 3072
  %568 = icmp ne i64 %567, 0
  br i1 %568, label %569, label %573

569:                                              ; preds = %563
  br label %570

570:                                              ; preds = %569
  %571 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %571, i32 noundef 3, i32 noundef 815, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.43)
  br label %572

572:                                              ; preds = %570
  br label %573

573:                                              ; preds = %572, %563
  br label %574

574:                                              ; preds = %573
  br label %588

575:                                              ; preds = %556
  br label %576

576:                                              ; preds = %575
  %577 = load ptr, ptr %3, align 8
  %578 = getelementptr inbounds %struct.rzip_control, ptr %577, i32 0, i32 26
  %579 = load i64, ptr %578, align 8
  %580 = and i64 %579, 3072
  %581 = icmp ne i64 %580, 0
  br i1 %581, label %582, label %586

582:                                              ; preds = %576
  br label %583

583:                                              ; preds = %582
  %584 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %584, i32 noundef 3, i32 noundef 817, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.44)
  br label %585

585:                                              ; preds = %583
  br label %586

586:                                              ; preds = %585, %576
  br label %587

587:                                              ; preds = %586
  br label %588

588:                                              ; preds = %587, %574
  br label %589

589:                                              ; preds = %588
  %590 = load ptr, ptr %3, align 8
  %591 = getelementptr inbounds %struct.rzip_control, ptr %590, i32 0, i32 26
  %592 = load i64, ptr %591, align 8
  %593 = and i64 %592, 3072
  %594 = icmp ne i64 %593, 0
  br i1 %594, label %595, label %599

595:                                              ; preds = %589
  br label %596

596:                                              ; preds = %595
  %597 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %597, i32 noundef 3, i32 noundef 818, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.45)
  br label %598

598:                                              ; preds = %596
  br label %599

599:                                              ; preds = %598, %589
  br label %600

600:                                              ; preds = %599
  %601 = load ptr, ptr %3, align 8
  %602 = getelementptr inbounds %struct.rzip_control, ptr %601, i32 0, i32 26
  %603 = load i64, ptr %602, align 8
  %604 = and i64 %603, 8388608
  %605 = icmp ne i64 %604, 0
  br i1 %605, label %606, label %617

606:                                              ; preds = %600
  %607 = load ptr, ptr %3, align 8
  %608 = call zeroext i1 @get_hash(ptr noundef %607, i32 noundef 0)
  %609 = xor i1 %608, true
  %610 = xor i1 %609, true
  %611 = xor i1 %610, true
  %612 = zext i1 %611 to i32
  %613 = sext i32 %612 to i64
  %614 = icmp ne i64 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %606
  store i1 false, ptr %2, align 1
  br label %847

616:                                              ; preds = %606
  br label %617

617:                                              ; preds = %616, %600
  br label %618

618:                                              ; preds = %617
  %619 = load ptr, ptr %3, align 8
  %620 = getelementptr inbounds %struct.rzip_control, ptr %619, i32 0, i32 26
  %621 = load i64, ptr %620, align 8
  %622 = and i64 %621, 1
  %623 = icmp ne i64 %622, 0
  br i1 %623, label %624, label %628

624:                                              ; preds = %618
  br label %625

625:                                              ; preds = %624
  %626 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %626, i32 noundef 2, i32 noundef 824, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.46)
  br label %627

627:                                              ; preds = %625
  br label %628

628:                                              ; preds = %627, %618
  br label %629

629:                                              ; preds = %628
  %630 = load ptr, ptr %3, align 8
  %631 = load i32, ptr %7, align 4
  %632 = load i32, ptr %8, align 4
  %633 = load i32, ptr %9, align 4
  %634 = load i64, ptr %10, align 8
  %635 = call i64 @runzip_fd(ptr noundef %630, i32 noundef %631, i32 noundef %632, i32 noundef %633, i64 noundef %634)
  %636 = icmp slt i64 %635, 0
  %637 = xor i1 %636, true
  %638 = xor i1 %637, true
  %639 = zext i1 %638 to i32
  %640 = sext i32 %639 to i64
  %641 = icmp ne i64 %640, 0
  br i1 %641, label %642, label %643

642:                                              ; preds = %629
  store i1 false, ptr %2, align 1
  br label %847

643:                                              ; preds = %629
  %644 = load ptr, ptr %3, align 8
  %645 = getelementptr inbounds %struct.rzip_control, ptr %644, i32 0, i32 26
  %646 = load i64, ptr %645, align 8
  %647 = and i64 %646, 8192
  %648 = icmp ne i64 %647, 0
  br i1 %648, label %649, label %667

649:                                              ; preds = %643
  %650 = load ptr, ptr %3, align 8
  %651 = getelementptr inbounds %struct.rzip_control, ptr %650, i32 0, i32 26
  %652 = load i64, ptr %651, align 8
  %653 = and i64 %652, 2097152
  %654 = icmp ne i64 %653, 0
  br i1 %654, label %667, label %655

655:                                              ; preds = %649
  %656 = load ptr, ptr %3, align 8
  %657 = load i32, ptr %8, align 4
  %658 = call zeroext i1 @dump_tmpoutfile(ptr noundef %656, i32 noundef %657)
  %659 = xor i1 %658, true
  %660 = xor i1 %659, true
  %661 = xor i1 %660, true
  %662 = zext i1 %661 to i32
  %663 = sext i32 %662 to i64
  %664 = icmp ne i64 %663, 0
  br i1 %664, label %665, label %666

665:                                              ; preds = %655
  store i1 false, ptr %2, align 1
  br label %847

666:                                              ; preds = %655
  br label %667

667:                                              ; preds = %666, %649, %643
  br label %668

668:                                              ; preds = %667
  %669 = load ptr, ptr %3, align 8
  %670 = getelementptr inbounds %struct.rzip_control, ptr %669, i32 0, i32 26
  %671 = load i64, ptr %670, align 8
  %672 = and i64 %671, 1
  %673 = icmp ne i64 %672, 0
  br i1 %673, label %674, label %678

674:                                              ; preds = %668
  br label %675

675:                                              ; preds = %674
  %676 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %676, i32 noundef 2, i32 noundef 835, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.47)
  br label %677

677:                                              ; preds = %675
  br label %678

678:                                              ; preds = %677, %668
  br label %679

679:                                              ; preds = %678
  %680 = load ptr, ptr %3, align 8
  %681 = getelementptr inbounds %struct.rzip_control, ptr %680, i32 0, i32 26
  %682 = load i64, ptr %681, align 8
  %683 = and i64 %682, 8192
  %684 = load ptr, ptr %3, align 8
  %685 = getelementptr inbounds %struct.rzip_control, ptr %684, i32 0, i32 26
  %686 = load i64, ptr %685, align 8
  %687 = and i64 %686, 4
  %688 = or i64 %683, %687
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %706, label %690

690:                                              ; preds = %679
  br label %691

691:                                              ; preds = %690
  %692 = load ptr, ptr %3, align 8
  %693 = getelementptr inbounds %struct.rzip_control, ptr %692, i32 0, i32 26
  %694 = load i64, ptr %693, align 8
  %695 = and i64 %694, 1
  %696 = icmp ne i64 %695, 0
  br i1 %696, label %697, label %704

697:                                              ; preds = %691
  br label %698

698:                                              ; preds = %697
  %699 = load ptr, ptr %3, align 8
  %700 = load ptr, ptr %3, align 8
  %701 = getelementptr inbounds %struct.rzip_control, ptr %700, i32 0, i32 3
  %702 = load ptr, ptr %701, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %699, i32 noundef 2, i32 noundef 837, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.48, ptr noundef %702)
  br label %703

703:                                              ; preds = %698
  br label %704

704:                                              ; preds = %703, %691
  br label %705

705:                                              ; preds = %704
  br label %706

706:                                              ; preds = %705, %679
  %707 = load i64, ptr %10, align 8
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %713, label %709

709:                                              ; preds = %706
  %710 = load ptr, ptr %3, align 8
  %711 = getelementptr inbounds %struct.rzip_control, ptr %710, i32 0, i32 34
  %712 = load i64, ptr %711, align 8
  store i64 %712, ptr %10, align 8
  br label %713

713:                                              ; preds = %709, %706
  %714 = load ptr, ptr %3, align 8
  %715 = getelementptr inbounds %struct.rzip_control, ptr %714, i32 0, i32 26
  %716 = load i64, ptr %715, align 8
  %717 = and i64 %716, 8388608
  %718 = icmp ne i64 %717, 0
  br i1 %718, label %733, label %719

719:                                              ; preds = %713
  br label %720

720:                                              ; preds = %719
  %721 = load ptr, ptr %3, align 8
  %722 = getelementptr inbounds %struct.rzip_control, ptr %721, i32 0, i32 26
  %723 = load i64, ptr %722, align 8
  %724 = and i64 %723, 1
  %725 = icmp ne i64 %724, 0
  br i1 %725, label %726, label %731

726:                                              ; preds = %720
  br label %727

727:                                              ; preds = %726
  %728 = load ptr, ptr %3, align 8
  %729 = load i64, ptr %10, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %728, i32 noundef 2, i32 noundef 841, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.49, i64 noundef %729)
  br label %730

730:                                              ; preds = %727
  br label %731

731:                                              ; preds = %730, %720
  br label %732

732:                                              ; preds = %731
  br label %746

733:                                              ; preds = %713
  br label %734

734:                                              ; preds = %733
  %735 = load ptr, ptr %3, align 8
  %736 = getelementptr inbounds %struct.rzip_control, ptr %735, i32 0, i32 26
  %737 = load i64, ptr %736, align 8
  %738 = and i64 %737, 1
  %739 = icmp ne i64 %738, 0
  br i1 %739, label %740, label %744

740:                                              ; preds = %734
  br label %741

741:                                              ; preds = %740
  %742 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %742, i32 noundef 2, i32 noundef 843, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.50)
  br label %743

743:                                              ; preds = %741
  br label %744

744:                                              ; preds = %743, %734
  br label %745

745:                                              ; preds = %744
  br label %746

746:                                              ; preds = %745, %732
  %747 = load i32, ptr %8, align 4
  %748 = icmp sgt i32 %747, 0
  br i1 %748, label %749, label %769

749:                                              ; preds = %746
  %750 = load i32, ptr %9, align 4
  %751 = call i32 @close(i32 noundef %750)
  %752 = icmp ne i32 %751, 0
  br i1 %752, label %757, label %753

753:                                              ; preds = %749
  %754 = load i32, ptr %8, align 4
  %755 = call i32 @close(i32 noundef %754)
  %756 = icmp ne i32 %755, 0
  br label %757

757:                                              ; preds = %753, %749
  %758 = phi i1 [ true, %749 ], [ %756, %753 ]
  %759 = xor i1 %758, true
  %760 = xor i1 %759, true
  %761 = zext i1 %760 to i32
  %762 = sext i32 %761 to i64
  %763 = icmp ne i64 %762, 0
  br i1 %763, label %764, label %768

764:                                              ; preds = %757
  br label %765

765:                                              ; preds = %764
  %766 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %766, i32 noundef 847, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.51)
  store i1 false, ptr %2, align 1
  br label %847

767:                                              ; No predecessors!
  br label %768

768:                                              ; preds = %767, %757
  br label %769

769:                                              ; preds = %768, %746
  %770 = load ptr, ptr %3, align 8
  %771 = getelementptr inbounds %struct.rzip_control, ptr %770, i32 0, i32 26
  %772 = load i64, ptr %771, align 8
  %773 = and i64 %772, 4096
  %774 = icmp ne i64 %773, 0
  br i1 %774, label %792, label %775

775:                                              ; preds = %769
  %776 = load ptr, ptr %3, align 8
  %777 = getelementptr inbounds %struct.rzip_control, ptr %776, i32 0, i32 26
  %778 = load i64, ptr %777, align 8
  %779 = and i64 %778, 8192
  %780 = icmp ne i64 %779, 0
  br i1 %780, label %792, label %781

781:                                              ; preds = %775
  %782 = load ptr, ptr %3, align 8
  %783 = getelementptr inbounds %struct.rzip_control, ptr %782, i32 0, i32 26
  %784 = load i64, ptr %783, align 8
  %785 = and i64 %784, 4
  %786 = icmp ne i64 %785, 0
  br i1 %786, label %792, label %787

787:                                              ; preds = %781
  %788 = load ptr, ptr %3, align 8
  %789 = load i32, ptr %7, align 4
  %790 = call zeroext i1 @preserve_times(ptr noundef %788, i32 noundef %789)
  %791 = xor i1 %790, true
  br label %792

792:                                              ; preds = %787, %781, %775, %769
  %793 = phi i1 [ false, %781 ], [ false, %775 ], [ false, %769 ], [ %791, %787 ]
  %794 = xor i1 %793, true
  %795 = xor i1 %794, true
  %796 = zext i1 %795 to i32
  %797 = sext i32 %796 to i64
  %798 = icmp ne i64 %797, 0
  br i1 %798, label %799, label %800

799:                                              ; preds = %792
  store i1 false, ptr %2, align 1
  br label %847

800:                                              ; preds = %792
  %801 = load i32, ptr %7, align 4
  %802 = call i32 @close(i32 noundef %801)
  %803 = load ptr, ptr %3, align 8
  %804 = getelementptr inbounds %struct.rzip_control, ptr %803, i32 0, i32 26
  %805 = load i64, ptr %804, align 8
  %806 = and i64 %805, 2
  %807 = icmp ne i64 %806, 0
  br i1 %807, label %831, label %808

808:                                              ; preds = %800
  %809 = load ptr, ptr %3, align 8
  %810 = getelementptr inbounds %struct.rzip_control, ptr %809, i32 0, i32 26
  %811 = load i64, ptr %810, align 8
  %812 = and i64 %811, 4096
  %813 = icmp ne i64 %812, 0
  br i1 %813, label %831, label %814

814:                                              ; preds = %808
  %815 = load ptr, ptr %3, align 8
  %816 = getelementptr inbounds %struct.rzip_control, ptr %815, i32 0, i32 0
  %817 = load ptr, ptr %816, align 8
  %818 = call i32 @unlink(ptr noundef %817) #11
  %819 = icmp ne i32 %818, 0
  %820 = xor i1 %819, true
  %821 = xor i1 %820, true
  %822 = zext i1 %821 to i32
  %823 = sext i32 %822 to i64
  %824 = icmp ne i64 %823, 0
  br i1 %824, label %825, label %830

825:                                              ; preds = %814
  br label %826

826:                                              ; preds = %825
  %827 = load ptr, ptr %3, align 8
  %828 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %827, i32 noundef 857, ptr noundef @.str.2, ptr noundef @__func__.decompress_file, ptr noundef @.str.52, ptr noundef %828)
  store i1 false, ptr %2, align 1
  br label %847

829:                                              ; No predecessors!
  br label %830

830:                                              ; preds = %829, %814
  br label %831

831:                                              ; preds = %830, %808, %800
  %832 = load ptr, ptr %3, align 8
  %833 = getelementptr inbounds %struct.rzip_control, ptr %832, i32 0, i32 26
  %834 = load i64, ptr %833, align 8
  %835 = and i64 %834, 8388608
  %836 = icmp ne i64 %835, 0
  br i1 %836, label %837, label %839

837:                                              ; preds = %831
  %838 = load ptr, ptr %3, align 8
  call void @release_hashes(ptr noundef %838)
  br label %839

839:                                              ; preds = %837, %831
  br label %840

840:                                              ; preds = %839
  %841 = load ptr, ptr %3, align 8
  %842 = getelementptr inbounds %struct.rzip_control, ptr %841, i32 0, i32 3
  %843 = load ptr, ptr %842, align 8
  call void @free(ptr noundef %843) #11
  %844 = load ptr, ptr %3, align 8
  %845 = getelementptr inbounds %struct.rzip_control, ptr %844, i32 0, i32 3
  store ptr null, ptr %845, align 8
  br label %846

846:                                              ; preds = %840
  store i1 true, ptr %2, align 1
  br label %847

847:                                              ; preds = %846, %826, %799, %765, %665, %642, %615, %520, %497, %473, %456, %439, %421, %399, %376, %357, %333, %285, %272, %257, %189
  %848 = load i1, ptr %2, align 1
  ret i1 %848
}

; Function Attrs: nounwind
declare i32 @stat64(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strrchr(ptr noundef, i32 noundef) #6

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #6

; Function Attrs: nounwind
declare noalias ptr @strdup(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @read_tmpinmagic(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca [24 x i8], align 16
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %7 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 24, i1 false)
  store i32 0, ptr %5, align 4
  br label %8

8:                                                ; preds = %30, %1
  %9 = load i32, ptr %5, align 4
  %10 = icmp slt i32 %9, 24
  br i1 %10, label %11, label %33

11:                                               ; preds = %8
  %12 = call i32 @getchar()
  store i32 %12, ptr %6, align 4
  %13 = load i32, ptr %6, align 4
  %14 = icmp eq i32 %13, -1
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %11
  br label %21

21:                                               ; preds = %20
  %22 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %22, i32 noundef 484, ptr noundef @.str.2, ptr noundef @__func__.read_tmpinmagic, ptr noundef @.str.130)
  store i1 false, ptr %2, align 1
  br label %37

23:                                               ; No predecessors!
  br label %24

24:                                               ; preds = %23, %11
  %25 = load i32, ptr %6, align 4
  %26 = trunc i32 %25 to i8
  %27 = load i32, ptr %5, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 %28
  store i8 %26, ptr %29, align 1
  br label %30

30:                                               ; preds = %24
  %31 = load i32, ptr %5, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, ptr %5, align 4
  br label %8, !llvm.loop !16

33:                                               ; preds = %8
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds [24 x i8], ptr %4, i64 0, i64 0
  %36 = call zeroext i1 @get_magic(ptr noundef %34, ptr noundef %35)
  store i1 %36, ptr %2, align 1
  br label %37

37:                                               ; preds = %33, %21
  %38 = load i1, ptr %2, align 1
  ret i1 %38
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

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @open_tmpinbuf(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rzip_control, ptr %4, i32 0, i32 26
  %6 = load i64, ptr %5, align 8
  %7 = or i64 %6, 4194304
  store i64 %7, ptr %5, align 8
  %8 = load ptr, ptr %3, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 23
  %10 = load i64, ptr %9, align 8
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 16
  store i64 %10, ptr %12, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 23
  %15 = load i64, ptr %14, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 35
  %18 = load i64, ptr %17, align 8
  %19 = add nsw i64 %15, %18
  %20 = call noalias ptr @malloc(i64 noundef %19) #15
  %21 = load ptr, ptr %3, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 13
  store ptr %20, ptr %22, align 8
  %23 = load ptr, ptr %3, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 13
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %1
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %35, i32 noundef 557, ptr noundef @.str.2, ptr noundef @__func__.open_tmpinbuf, ptr noundef @.str.131)
  store i1 false, ptr %2, align 1
  br label %38

36:                                               ; No predecessors!
  br label %37

37:                                               ; preds = %36, %1
  store i1 true, ptr %2, align 1
  br label %38

38:                                               ; preds = %37, %34
  %39 = load i1, ptr %2, align 1
  ret i1 %39
}

declare i32 @open64(ptr noundef, i32 noundef, ...) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #8

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @preserve_perms(ptr noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = alloca i1, align 1
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stat, align 8
  store ptr %0, ptr %5, align 8
  store i32 %1, ptr %6, align 4
  store i32 %2, ptr %7, align 4
  %9 = load i32, ptr %6, align 4
  %10 = call i32 @fstat64(i32 noundef %9, ptr noundef %8) #11
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
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %19, i32 noundef 272, ptr noundef @.str.2, ptr noundef @__func__.preserve_perms, ptr noundef @.str.132)
  store i1 false, ptr %4, align 1
  br label %79

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, ptr %7, align 4
  %23 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 3
  %24 = load i32, ptr %23, align 8
  %25 = and i32 %24, 438
  %26 = call i32 @fchmod(i32 noundef %22, i32 noundef %25) #11
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %5, align 8
  %36 = getelementptr inbounds %struct.rzip_control, ptr %35, i32 0, i32 26
  %37 = load i64, ptr %36, align 8
  %38 = and i64 %37, 3072
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %5, align 8
  %43 = load ptr, ptr %5, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 3
  %45 = load ptr, ptr %44, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %42, i32 noundef 3, i32 noundef 274, ptr noundef @.str.2, ptr noundef @__func__.preserve_perms, ptr noundef @.str.133, ptr noundef %45)
  br label %46

46:                                               ; preds = %41
  br label %47

47:                                               ; preds = %46, %34
  br label %48

48:                                               ; preds = %47
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, ptr %7, align 4
  %51 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 4
  %52 = load i32, ptr %51, align 4
  %53 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 5
  %54 = load i32, ptr %53, align 8
  %55 = call i32 @fchown(i32 noundef %50, i32 noundef %52, i32 noundef %54) #11
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = sext i32 %59 to i64
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr %5, align 8
  %65 = getelementptr inbounds %struct.rzip_control, ptr %64, i32 0, i32 26
  %66 = load i64, ptr %65, align 8
  %67 = and i64 %66, 3072
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  br label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %5, align 8
  %72 = load ptr, ptr %5, align 8
  %73 = getelementptr inbounds %struct.rzip_control, ptr %72, i32 0, i32 3
  %74 = load ptr, ptr %73, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %71, i32 noundef 3, i32 noundef 278, ptr noundef @.str.2, ptr noundef @__func__.preserve_perms, ptr noundef @.str.134, ptr noundef %74)
  br label %75

75:                                               ; preds = %70
  br label %76

76:                                               ; preds = %75, %63
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77, %49
  store i1 true, ptr %4, align 1
  br label %79

79:                                               ; preds = %78, %18
  %80 = load i1, ptr %4, align 1
  ret i1 %80
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @open_tmpoutbuf(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %6 = load ptr, ptr %3, align 8
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i32 0, i32 23
  %8 = load i64, ptr %7, align 8
  store i64 %8, ptr %4, align 8
  br label %9

9:                                                ; preds = %1, %38
  call void @round_to_page(ptr noundef %4)
  %10 = load i64, ptr %4, align 8
  %11 = call noalias ptr @malloc(i64 noundef %10) #15
  store ptr %11, ptr %5, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = icmp ne ptr %12, null
  br i1 %13, label %14, label %28

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 26
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 2048
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr %3, align 8
  %24 = load i64, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %23, i32 noundef 4, i32 noundef 523, ptr noundef @.str.2, ptr noundef @__func__.open_tmpoutbuf, ptr noundef @.str.135, i64 noundef %24)
  br label %25

25:                                               ; preds = %22
  br label %26

26:                                               ; preds = %25, %15
  br label %27

27:                                               ; preds = %26
  br label %39

28:                                               ; preds = %9
  %29 = load i64, ptr %4, align 8
  %30 = sdiv i64 %29, 3
  %31 = mul nsw i64 %30, 2
  store i64 %31, ptr %4, align 8
  %32 = load i64, ptr %4, align 8
  %33 = icmp slt i64 %32, 100000000
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  br label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %36, i32 noundef 528, ptr noundef @.str.2, ptr noundef @__func__.open_tmpoutbuf, ptr noundef @.str.136)
  store i1 false, ptr %2, align 1
  br label %71

37:                                               ; No predecessors!
  br label %38

38:                                               ; preds = %37, %28
  br label %9

39:                                               ; preds = %27
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 26
  %42 = load i64, ptr %41, align 8
  %43 = or i64 %42, 2097152
  store i64 %43, ptr %41, align 8
  %44 = load i64, ptr %4, align 8
  %45 = load ptr, ptr %3, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 35
  %47 = load i64, ptr %46, align 8
  %48 = sub nsw i64 %44, %47
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 11
  store i64 %48, ptr %50, align 8
  %51 = load ptr, ptr %5, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 7
  store ptr %51, ptr %53, align 8
  %54 = load ptr, ptr %3, align 8
  %55 = getelementptr inbounds %struct.rzip_control, ptr %54, i32 0, i32 26
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, 16
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %39
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.rzip_control, ptr %60, i32 0, i32 26
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, 4
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 10
  store i64 24, ptr %67, align 8
  %68 = load ptr, ptr %3, align 8
  %69 = getelementptr inbounds %struct.rzip_control, ptr %68, i32 0, i32 8
  store i64 24, ptr %69, align 8
  br label %70

70:                                               ; preds = %65, %59, %39
  store i1 true, ptr %2, align 1
  br label %71

71:                                               ; preds = %70, %35
  %72 = load i1, ptr %2, align 1
  ret i1 %72
}

; Function Attrs: nounwind
declare i32 @fstatvfs64(i32 noundef, ptr noundef) #1

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

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @get_hash(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca %struct.termios, align 4
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %9 = call noalias ptr @calloc(i64 noundef 512, i64 noundef 1) #16
  store ptr %9, ptr %6, align 8
  %10 = call noalias ptr @calloc(i64 noundef 512, i64 noundef 1) #16
  store ptr %10, ptr %7, align 8
  %11 = call noalias ptr @calloc(i64 noundef 512, i64 noundef 1) #16
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 44
  store ptr %11, ptr %13, align 8
  %14 = call noalias ptr @calloc(i64 noundef 64, i64 noundef 1) #16
  %15 = load ptr, ptr %4, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 46
  store ptr %14, ptr %16, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = icmp ne ptr %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %2
  %20 = load ptr, ptr %7, align 8
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %19
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 44
  %25 = load ptr, ptr %24, align 8
  %26 = icmp ne ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 46
  %30 = load ptr, ptr %29, align 8
  %31 = icmp ne ptr %30, null
  %32 = xor i1 %31, true
  br label %33

33:                                               ; preds = %27, %22, %19, %2
  %34 = phi i1 [ true, %22 ], [ true, %19 ], [ true, %2 ], [ %32, %27 ]
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %41, i32 noundef 612, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.137)
  br label %42

42:                                               ; preds = %40
  %43 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %43) #11
  store ptr null, ptr %7, align 8
  br label %44

44:                                               ; preds = %42
  br label %45

45:                                               ; preds = %44
  %46 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %46) #11
  store ptr null, ptr %6, align 8
  br label %47

47:                                               ; preds = %45
  store i1 false, ptr %3, align 1
  br label %183

48:                                               ; preds = %33
  %49 = load ptr, ptr %6, align 8
  %50 = call i32 @mlock(ptr noundef %49, i64 noundef 512) #11
  %51 = load ptr, ptr %7, align 8
  %52 = call i32 @mlock(ptr noundef %51, i64 noundef 512) #11
  %53 = load ptr, ptr %4, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 44
  %55 = load ptr, ptr %54, align 8
  %56 = call i32 @mlock(ptr noundef %55, i64 noundef 512) #11
  %57 = load ptr, ptr %4, align 8
  %58 = getelementptr inbounds %struct.rzip_control, ptr %57, i32 0, i32 46
  %59 = load ptr, ptr %58, align 8
  %60 = call i32 @mlock(ptr noundef %59, i64 noundef 64) #11
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 41
  %63 = load ptr, ptr %62, align 8
  %64 = icmp ne ptr %63, null
  br i1 %64, label %65, label %97

65:                                               ; preds = %48
  %66 = load ptr, ptr %4, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 41
  %68 = load ptr, ptr %67, align 8
  %69 = load ptr, ptr %4, align 8
  %70 = getelementptr inbounds %struct.rzip_control, ptr %69, i32 0, i32 42
  %71 = load ptr, ptr %70, align 8
  %72 = load ptr, ptr %6, align 8
  call void %68(ptr noundef %71, ptr noundef %72, i64 noundef 504)
  %73 = load ptr, ptr %6, align 8
  %74 = getelementptr inbounds i8, ptr %73, i64 0
  %75 = load i8, ptr %74, align 1
  %76 = icmp ne i8 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %65
  %78 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %78, i32 noundef 625, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.138)
  %79 = load ptr, ptr %6, align 8
  %80 = call i32 @munlock(ptr noundef %79, i64 noundef 512) #11
  %81 = load ptr, ptr %7, align 8
  %82 = call i32 @munlock(ptr noundef %81, i64 noundef 512) #11
  br label %83

83:                                               ; preds = %77
  %84 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %84) #11
  store ptr null, ptr %7, align 8
  br label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %87) #11
  store ptr null, ptr %6, align 8
  br label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %4, align 8
  call void @release_hashes(ptr noundef %89)
  store i1 false, ptr %3, align 1
  br label %183

90:                                               ; preds = %65
  %91 = load ptr, ptr %6, align 8
  %92 = call i64 @strlen(ptr noundef %91) #12
  %93 = add i64 %92, 8
  %94 = trunc i64 %93 to i32
  %95 = load ptr, ptr %4, align 8
  %96 = getelementptr inbounds %struct.rzip_control, ptr %95, i32 0, i32 45
  store i32 %94, ptr %96, align 8
  br label %159

97:                                               ; preds = %48
  %98 = load ptr, ptr @stdin, align 8
  %99 = call i32 @fileno(ptr noundef %98) #11
  %100 = call i32 @tcgetattr(i32 noundef %99, ptr noundef %8) #11
  %101 = getelementptr inbounds %struct.termios, ptr %8, i32 0, i32 3
  %102 = load i32, ptr %101, align 4
  %103 = and i32 %102, -9
  store i32 %103, ptr %101, align 4
  %104 = load ptr, ptr @stdin, align 8
  %105 = call i32 @fileno(ptr noundef %104) #11
  %106 = call i32 @tcsetattr(i32 noundef %105, i32 noundef 0, ptr noundef %8) #11
  br label %107

107:                                              ; preds = %149, %97
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108
  %110 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %110, i32 noundef 1, i32 noundef 640, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.139)
  br label %111

111:                                              ; preds = %109
  br label %112

112:                                              ; preds = %111
  %113 = load ptr, ptr %4, align 8
  %114 = load ptr, ptr %6, align 8
  %115 = call i32 @get_pass(ptr noundef %113, ptr noundef %114)
  %116 = add nsw i32 %115, 8
  %117 = load ptr, ptr %4, align 8
  %118 = getelementptr inbounds %struct.rzip_control, ptr %117, i32 0, i32 45
  store i32 %116, ptr %118, align 8
  br label %119

119:                                              ; preds = %112
  br label %120

120:                                              ; preds = %119
  %121 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %121, i32 noundef 1, i32 noundef 642, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.80)
  br label %122

122:                                              ; preds = %120
  br label %123

123:                                              ; preds = %122
  %124 = load i32, ptr %5, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %151

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126
  br label %128

128:                                              ; preds = %127
  %129 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %129, i32 noundef 1, i32 noundef 644, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.140)
  br label %130

130:                                              ; preds = %128
  br label %131

131:                                              ; preds = %130
  %132 = load ptr, ptr %4, align 8
  %133 = load ptr, ptr %7, align 8
  %134 = call i32 @get_pass(ptr noundef %132, ptr noundef %133)
  br label %135

135:                                              ; preds = %131
  br label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %137, i32 noundef 1, i32 noundef 646, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.80)
  br label %138

138:                                              ; preds = %136
  br label %139

139:                                              ; preds = %138
  %140 = load ptr, ptr %6, align 8
  %141 = load ptr, ptr %7, align 8
  %142 = call i32 @strcmp(ptr noundef %140, ptr noundef %141) #12
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %150

144:                                              ; preds = %139
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %147, i32 noundef 1, i32 noundef 648, ptr noundef @.str.2, ptr noundef @__func__.get_hash, ptr noundef @.str.141)
  br label %148

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  br label %107

150:                                              ; preds = %139
  br label %151

151:                                              ; preds = %150, %123
  %152 = getelementptr inbounds %struct.termios, ptr %8, i32 0, i32 3
  %153 = load i32, ptr %152, align 4
  %154 = or i32 %153, 8
  store i32 %154, ptr %152, align 4
  %155 = load ptr, ptr @stdin, align 8
  %156 = call i32 @fileno(ptr noundef %155) #11
  %157 = call i32 @tcsetattr(i32 noundef %156, i32 noundef 0, ptr noundef %8) #11
  %158 = load ptr, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %158, i8 0, i64 512, i1 false)
  br label %159

159:                                              ; preds = %151, %90
  %160 = load ptr, ptr %4, align 8
  %161 = getelementptr inbounds %struct.rzip_control, ptr %160, i32 0, i32 44
  %162 = load ptr, ptr %161, align 8
  %163 = load ptr, ptr %4, align 8
  %164 = getelementptr inbounds %struct.rzip_control, ptr %163, i32 0, i32 43
  %165 = getelementptr inbounds [8 x i8], ptr %164, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %162, ptr align 8 %165, i64 8, i1 false)
  %166 = load ptr, ptr %4, align 8
  %167 = getelementptr inbounds %struct.rzip_control, ptr %166, i32 0, i32 44
  %168 = load ptr, ptr %167, align 8
  %169 = getelementptr inbounds i8, ptr %168, i64 8
  %170 = load ptr, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %169, ptr align 1 %170, i64 504, i1 false)
  %171 = load ptr, ptr %4, align 8
  call void @lrz_stretch(ptr noundef %171)
  %172 = load ptr, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %172, i8 0, i64 512, i1 false)
  %173 = load ptr, ptr %6, align 8
  %174 = call i32 @munlock(ptr noundef %173, i64 noundef 512) #11
  %175 = load ptr, ptr %7, align 8
  %176 = call i32 @munlock(ptr noundef %175, i64 noundef 512) #11
  br label %177

177:                                              ; preds = %159
  %178 = load ptr, ptr %7, align 8
  call void @free(ptr noundef %178) #11
  store ptr null, ptr %7, align 8
  br label %179

179:                                              ; preds = %177
  br label %180

180:                                              ; preds = %179
  %181 = load ptr, ptr %6, align 8
  call void @free(ptr noundef %181) #11
  store ptr null, ptr %6, align 8
  br label %182

182:                                              ; preds = %180
  store i1 true, ptr %3, align 1
  br label %183

183:                                              ; preds = %182, %88, %47
  %184 = load i1, ptr %3, align 1
  ret i1 %184
}

declare i64 @runzip_fd(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i1 @preserve_times(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca i1, align 1
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.utimbuf, align 8
  %7 = alloca %struct.stat, align 8
  store ptr %0, ptr %4, align 8
  store i32 %1, ptr %5, align 4
  %8 = load i32, ptr %5, align 4
  %9 = call i32 @fstat64(i32 noundef %8, ptr noundef %7) #11
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %18, i32 noundef 288, ptr noundef @.str.2, ptr noundef @__func__.preserve_times, ptr noundef @.str.132)
  store i1 false, ptr %3, align 1
  br label %53

19:                                               ; No predecessors!
  br label %20

20:                                               ; preds = %19, %2
  %21 = getelementptr inbounds %struct.utimbuf, ptr %6, i32 0, i32 0
  store i64 0, ptr %21, align 8
  %22 = getelementptr inbounds %struct.stat, ptr %7, i32 0, i32 12
  %23 = getelementptr inbounds %struct.timespec, ptr %22, i32 0, i32 0
  %24 = load i64, ptr %23, align 8
  %25 = getelementptr inbounds %struct.utimbuf, ptr %6, i32 0, i32 1
  store i64 %24, ptr %25, align 8
  %26 = load ptr, ptr %4, align 8
  %27 = getelementptr inbounds %struct.rzip_control, ptr %26, i32 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = call i32 @utime(ptr noundef %28, ptr noundef %6) #11
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %20
  br label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %4, align 8
  %39 = getelementptr inbounds %struct.rzip_control, ptr %38, i32 0, i32 26
  %40 = load i64, ptr %39, align 8
  %41 = and i64 %40, 3072
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %37
  br label %44

44:                                               ; preds = %43
  %45 = load ptr, ptr %4, align 8
  %46 = load ptr, ptr %4, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %45, i32 noundef 3, i32 noundef 292, ptr noundef @.str.2, ptr noundef @__func__.preserve_times, ptr noundef @.str.144, ptr noundef %48)
  br label %49

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49, %37
  br label %51

51:                                               ; preds = %50
  br label %52

52:                                               ; preds = %51, %20
  store i1 true, ptr %3, align 1
  br label %53

53:                                               ; preds = %52, %17
  %54 = load i1, ptr %3, align 1
  ret i1 %54
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_hashes(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 44
  %5 = load ptr, ptr %4, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %5, i8 0, i64 512, i1 false)
  %6 = load ptr, ptr %2, align 8
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i32 0, i32 46
  %8 = load ptr, ptr %7, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %8, i8 0, i64 8, i1 false)
  %9 = load ptr, ptr %2, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 44
  %11 = load ptr, ptr %10, align 8
  %12 = call i32 @munlock(ptr noundef %11, i64 noundef 512) #11
  %13 = load ptr, ptr %2, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 46
  %15 = load ptr, ptr %14, align 8
  %16 = call i32 @munlock(ptr noundef %15, i64 noundef 64) #11
  br label %17

17:                                               ; preds = %1
  %18 = load ptr, ptr %2, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 44
  %20 = load ptr, ptr %19, align 8
  call void @free(ptr noundef %20) #11
  %21 = load ptr, ptr %2, align 8
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i32 0, i32 44
  store ptr null, ptr %22, align 8
  br label %23

23:                                               ; preds = %17
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr %2, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 46
  %27 = load ptr, ptr %26, align 8
  call void @free(ptr noundef %27) #11
  %28 = load ptr, ptr %2, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 46
  store ptr null, ptr %29, align 8
  br label %30

30:                                               ; preds = %24
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @get_header_info(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6) #0 {
  %8 = alloca i1, align 1
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  store i32 %1, ptr %10, align 4
  store ptr %2, ptr %11, align 8
  store ptr %3, ptr %12, align 8
  store ptr %4, ptr %13, align 8
  store ptr %5, ptr %14, align 8
  store i32 %6, ptr %15, align 4
  %20 = load i32, ptr %10, align 4
  %21 = load ptr, ptr %11, align 8
  %22 = call i64 @read(i32 noundef %20, ptr noundef %21, i64 noundef 1)
  %23 = icmp ne i64 %22, 1
  %24 = xor i1 %23, true
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = sext i32 %26 to i64
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %7
  br label %30

30:                                               ; preds = %29
  %31 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %31, i32 noundef 871, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.53)
  store i1 false, ptr %8, align 1
  br label %186

32:                                               ; No predecessors!
  br label %33

33:                                               ; preds = %32, %7
  %34 = load ptr, ptr %14, align 8
  store i64 0, ptr %34, align 8
  %35 = load ptr, ptr %13, align 8
  store i64 0, ptr %35, align 8
  %36 = load ptr, ptr %12, align 8
  store i64 0, ptr %36, align 8
  %37 = load ptr, ptr %9, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 32
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %103

42:                                               ; preds = %33
  %43 = load ptr, ptr %9, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 33
  %45 = load i8, ptr %44, align 2
  %46 = sext i8 %45 to i32
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %103

48:                                               ; preds = %42
  %49 = load i32, ptr %10, align 4
  %50 = call i64 @read(i32 noundef %49, ptr noundef %16, i64 noundef 4)
  %51 = icmp ne i64 %50, 4
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %59, i32 noundef 878, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.54)
  store i1 false, ptr %8, align 1
  br label %186

60:                                               ; No predecessors!
  br label %61

61:                                               ; preds = %60, %48
  %62 = load i32, ptr %10, align 4
  %63 = call i64 @read(i32 noundef %62, ptr noundef %17, i64 noundef 4)
  %64 = icmp ne i64 %63, 4
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = sext i32 %67 to i64
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %61
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %72, i32 noundef 880, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.54)
  store i1 false, ptr %8, align 1
  br label %186

73:                                               ; No predecessors!
  br label %74

74:                                               ; preds = %73, %61
  %75 = load i32, ptr %10, align 4
  %76 = call i64 @read(i32 noundef %75, ptr noundef %18, i64 noundef 4)
  %77 = icmp ne i64 %76, 4
  %78 = xor i1 %77, true
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = sext i32 %80 to i64
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %74
  br label %84

84:                                               ; preds = %83
  %85 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %85, i32 noundef 882, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.54)
  store i1 false, ptr %8, align 1
  br label %186

86:                                               ; No predecessors!
  br label %87

87:                                               ; preds = %86, %74
  %88 = load i32, ptr %16, align 4
  %89 = call i32 @__uint32_identity(i32 noundef %88)
  store i32 %89, ptr %16, align 4
  %90 = load i32, ptr %17, align 4
  %91 = call i32 @__uint32_identity(i32 noundef %90)
  store i32 %91, ptr %17, align 4
  %92 = load i32, ptr %18, align 4
  %93 = call i32 @__uint32_identity(i32 noundef %92)
  store i32 %93, ptr %18, align 4
  %94 = load i32, ptr %16, align 4
  %95 = zext i32 %94 to i64
  %96 = load ptr, ptr %12, align 8
  store i64 %95, ptr %96, align 8
  %97 = load i32, ptr %17, align 4
  %98 = zext i32 %97 to i64
  %99 = load ptr, ptr %13, align 8
  store i64 %98, ptr %99, align 8
  %100 = load i32, ptr %18, align 4
  %101 = zext i32 %100 to i64
  %102 = load ptr, ptr %14, align 8
  store i64 %101, ptr %102, align 8
  br label %185

103:                                              ; preds = %42, %33
  %104 = load ptr, ptr %9, align 8
  %105 = getelementptr inbounds %struct.rzip_control, ptr %104, i32 0, i32 32
  %106 = load i8, ptr %105, align 1
  %107 = sext i8 %106 to i32
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load ptr, ptr %9, align 8
  %111 = getelementptr inbounds %struct.rzip_control, ptr %110, i32 0, i32 33
  %112 = load i8, ptr %111, align 2
  %113 = sext i8 %112 to i32
  %114 = icmp eq i32 %113, 5
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  store i32 8, ptr %19, align 4
  br label %118

116:                                              ; preds = %109, %103
  %117 = load i32, ptr %15, align 4
  store i32 %117, ptr %19, align 4
  br label %118

118:                                              ; preds = %116, %115
  %119 = load i32, ptr %10, align 4
  %120 = load ptr, ptr %12, align 8
  %121 = load i32, ptr %19, align 4
  %122 = sext i32 %121 to i64
  %123 = call i64 @read(i32 noundef %119, ptr noundef %120, i64 noundef %122)
  %124 = load i32, ptr %19, align 4
  %125 = sext i32 %124 to i64
  %126 = icmp ne i64 %123, %125
  %127 = xor i1 %126, true
  %128 = xor i1 %127, true
  %129 = zext i1 %128 to i32
  %130 = sext i32 %129 to i64
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %118
  br label %133

133:                                              ; preds = %132
  %134 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %134, i32 noundef 897, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.54)
  store i1 false, ptr %8, align 1
  br label %186

135:                                              ; No predecessors!
  br label %136

136:                                              ; preds = %135, %118
  %137 = load i32, ptr %10, align 4
  %138 = load ptr, ptr %13, align 8
  %139 = load i32, ptr %19, align 4
  %140 = sext i32 %139 to i64
  %141 = call i64 @read(i32 noundef %137, ptr noundef %138, i64 noundef %140)
  %142 = load i32, ptr %19, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %141, %143
  %145 = xor i1 %144, true
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = sext i32 %147 to i64
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %154

150:                                              ; preds = %136
  br label %151

151:                                              ; preds = %150
  %152 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %152, i32 noundef 899, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.54)
  store i1 false, ptr %8, align 1
  br label %186

153:                                              ; No predecessors!
  br label %154

154:                                              ; preds = %153, %136
  %155 = load i32, ptr %10, align 4
  %156 = load ptr, ptr %14, align 8
  %157 = load i32, ptr %19, align 4
  %158 = sext i32 %157 to i64
  %159 = call i64 @read(i32 noundef %155, ptr noundef %156, i64 noundef %158)
  %160 = load i32, ptr %19, align 4
  %161 = sext i32 %160 to i64
  %162 = icmp ne i64 %159, %161
  %163 = xor i1 %162, true
  %164 = xor i1 %163, true
  %165 = zext i1 %164 to i32
  %166 = sext i32 %165 to i64
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %154
  br label %169

169:                                              ; preds = %168
  %170 = load ptr, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %170, i32 noundef 901, ptr noundef @.str.2, ptr noundef @__func__.get_header_info, ptr noundef @.str.55)
  store i1 false, ptr %8, align 1
  br label %186

171:                                              ; No predecessors!
  br label %172

172:                                              ; preds = %171, %154
  %173 = load ptr, ptr %12, align 8
  %174 = load i64, ptr %173, align 8
  %175 = call i64 @__uint64_identity(i64 noundef %174)
  %176 = load ptr, ptr %12, align 8
  store i64 %175, ptr %176, align 8
  %177 = load ptr, ptr %13, align 8
  %178 = load i64, ptr %177, align 8
  %179 = call i64 @__uint64_identity(i64 noundef %178)
  %180 = load ptr, ptr %13, align 8
  store i64 %179, ptr %180, align 8
  %181 = load ptr, ptr %14, align 8
  %182 = load i64, ptr %181, align 8
  %183 = call i64 @__uint64_identity(i64 noundef %182)
  %184 = load ptr, ptr %14, align 8
  store i64 %183, ptr %184, align 8
  br label %185

185:                                              ; preds = %172, %87
  store i1 true, ptr %8, align 1
  br label %186

186:                                              ; preds = %185, %169, %151, %133, %84, %71, %58, %30
  %187 = load i1, ptr %8, align 1
  ret i1 %187
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @get_fileinfo(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x i64], align 16
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca i8, align 1
  %21 = alloca x86_fp80, align 16
  %22 = alloca i8, align 1
  %23 = alloca %struct.stat, align 8
  %24 = alloca i32, align 4
  %25 = alloca %struct.stat, align 8
  %26 = alloca ptr, align 8
  %27 = alloca i64, align 8
  %28 = alloca ptr, align 8
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i64, align 8
  %32 = alloca [16 x i8], align 16
  %33 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i64 0, ptr %7, align 8
  store i64 0, ptr %8, align 8
  store i64 25, ptr %9, align 8
  store i64 0, ptr %13, align 8
  store i64 0, ptr %14, align 8
  store i32 0, ptr %16, align 4
  store i32 0, ptr %17, align 4
  store ptr null, ptr %19, align 8
  store i8 0, ptr %20, align 1
  store i8 0, ptr %22, align 1
  %34 = load ptr, ptr %3, align 8
  %35 = getelementptr inbounds %struct.rzip_control, ptr %34, i32 0, i32 26
  %36 = load i64, ptr %35, align 8
  %37 = and i64 %36, 4096
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %97, label %39

39:                                               ; preds = %1
  %40 = load ptr, ptr %3, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 0
  %42 = load ptr, ptr %41, align 8
  %43 = call i32 @stat64(ptr noundef %42, ptr noundef %25) #11
  %44 = getelementptr inbounds %struct.stat, ptr %25, i32 0, i32 3
  %45 = load i32, ptr %44, align 8
  %46 = and i32 %45, 61440
  %47 = icmp eq i32 %46, 32768
  br i1 %47, label %83, label %48

48:                                               ; preds = %39
  %49 = load ptr, ptr %3, align 8
  %50 = getelementptr inbounds %struct.rzip_control, ptr %49, i32 0, i32 0
  %51 = load ptr, ptr %50, align 8
  %52 = call ptr @strrchr(ptr noundef %51, i32 noundef 46) #12
  store ptr %52, ptr %18, align 8
  %53 = icmp ne ptr %52, null
  br i1 %53, label %54, label %83

54:                                               ; preds = %48
  %55 = load ptr, ptr %18, align 8
  %56 = load ptr, ptr %3, align 8
  %57 = getelementptr inbounds %struct.rzip_control, ptr %56, i32 0, i32 19
  %58 = load ptr, ptr %57, align 8
  %59 = call i32 @strcmp(ptr noundef %55, ptr noundef %58) #12
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %83

61:                                               ; preds = %54
  %62 = load ptr, ptr %3, align 8
  %63 = getelementptr inbounds %struct.rzip_control, ptr %62, i32 0, i32 0
  %64 = load ptr, ptr %63, align 8
  %65 = call i64 @strlen(ptr noundef %64) #12
  %66 = load ptr, ptr %3, align 8
  %67 = getelementptr inbounds %struct.rzip_control, ptr %66, i32 0, i32 19
  %68 = load ptr, ptr %67, align 8
  %69 = call i64 @strlen(ptr noundef %68) #12
  %70 = add i64 %65, %69
  %71 = add i64 %70, 1
  %72 = alloca i8, i64 %71, align 16
  store ptr %72, ptr %19, align 8
  %73 = load ptr, ptr %19, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.rzip_control, ptr %74, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8
  %77 = call ptr @strcpy(ptr noundef %73, ptr noundef %76) #11
  %78 = load ptr, ptr %19, align 8
  %79 = load ptr, ptr %3, align 8
  %80 = getelementptr inbounds %struct.rzip_control, ptr %79, i32 0, i32 19
  %81 = load ptr, ptr %80, align 8
  %82 = call ptr @strcat(ptr noundef %78, ptr noundef %81) #11
  br label %96

83:                                               ; preds = %54, %48, %39
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct.rzip_control, ptr %84, i32 0, i32 0
  %86 = load ptr, ptr %85, align 8
  store ptr %86, ptr %26, align 8
  %87 = load ptr, ptr %26, align 8
  %88 = call i64 @strlen(ptr noundef %87) #12
  %89 = add i64 %88, 1
  store i64 %89, ptr %27, align 8
  %90 = load i64, ptr %27, align 8
  %91 = alloca i8, i64 %90, align 16
  store ptr %91, ptr %28, align 8
  %92 = load ptr, ptr %28, align 8
  %93 = load ptr, ptr %26, align 8
  %94 = load i64, ptr %27, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %92, ptr align 1 %93, i64 %94, i1 false)
  store ptr %92, ptr %29, align 8
  %95 = load ptr, ptr %29, align 8
  store ptr %95, ptr %19, align 8
  br label %96

96:                                               ; preds = %83, %61
  br label %97

97:                                               ; preds = %96, %1
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.rzip_control, ptr %98, i32 0, i32 26
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 4096
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  store i32 0, ptr %24, align 4
  br label %120

104:                                              ; preds = %97
  %105 = load ptr, ptr %19, align 8
  %106 = call i32 (ptr, i32, ...) @open64(ptr noundef %105, i32 noundef 0)
  store i32 %106, ptr %24, align 4
  %107 = load i32, ptr %24, align 4
  %108 = icmp eq i32 %107, -1
  %109 = xor i1 %108, true
  %110 = xor i1 %109, true
  %111 = zext i1 %110 to i32
  %112 = sext i32 %111 to i64
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %104
  br label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr %3, align 8
  %117 = load ptr, ptr %19, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %116, i32 noundef 955, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.35, ptr noundef %117)
  store i1 false, ptr %2, align 1
  br label %1096

118:                                              ; No predecessors!
  br label %119

119:                                              ; preds = %118, %104
  br label %120

120:                                              ; preds = %119, %103
  %121 = load i32, ptr %24, align 4
  %122 = call i32 @fstat64(i32 noundef %121, ptr noundef %23) #11
  %123 = icmp ne i32 %122, 0
  %124 = xor i1 %123, true
  %125 = xor i1 %124, true
  %126 = zext i1 %125 to i32
  %127 = sext i32 %126 to i64
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129
  %131 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %131, i32 noundef 960, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.56)
  br label %1086

132:                                              ; No predecessors!
  br label %133

133:                                              ; preds = %132, %120
  %134 = getelementptr inbounds %struct.stat, ptr %23, i32 0, i32 8
  %135 = load i64, ptr %134, align 8
  store i64 %135, ptr %12, align 8
  %136 = load ptr, ptr %3, align 8
  %137 = load i32, ptr %24, align 4
  %138 = call zeroext i1 @read_magic(ptr noundef %136, i32 noundef %137, ptr noundef %11)
  %139 = xor i1 %138, true
  %140 = xor i1 %139, true
  %141 = xor i1 %140, true
  %142 = zext i1 %141 to i32
  %143 = sext i32 %142 to i64
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %133
  br label %1086

146:                                              ; preds = %133
  %147 = load ptr, ptr %3, align 8
  %148 = getelementptr inbounds %struct.rzip_control, ptr %147, i32 0, i32 26
  %149 = load i64, ptr %148, align 8
  %150 = and i64 %149, 8388608
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %167

152:                                              ; preds = %146
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %155, i32 noundef 1, i32 noundef 968, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.57)
  br label %156

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %156
  %158 = load ptr, ptr %3, align 8
  %159 = getelementptr inbounds %struct.rzip_control, ptr %158, i32 0, i32 26
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 4096
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %166, label %163

163:                                              ; preds = %157
  %164 = load i32, ptr %24, align 4
  %165 = call i32 @close(i32 noundef %164)
  br label %166

166:                                              ; preds = %163, %157
  br label %1078

167:                                              ; preds = %146
  %168 = load ptr, ptr %3, align 8
  %169 = getelementptr inbounds %struct.rzip_control, ptr %168, i32 0, i32 32
  %170 = load i8, ptr %169, align 1
  %171 = sext i8 %170 to i32
  %172 = icmp eq i32 %171, 0
  br i1 %172, label %173, label %240

173:                                              ; preds = %167
  %174 = load ptr, ptr %3, align 8
  %175 = getelementptr inbounds %struct.rzip_control, ptr %174, i32 0, i32 33
  %176 = load i8, ptr %175, align 2
  %177 = sext i8 %176 to i32
  %178 = icmp sgt i32 %177, 4
  br i1 %178, label %179, label %240

179:                                              ; preds = %173
  %180 = load i32, ptr %24, align 4
  %181 = call i64 @read(i32 noundef %180, ptr noundef %20, i64 noundef 1)
  %182 = icmp ne i64 %181, 1
  %183 = xor i1 %182, true
  %184 = xor i1 %183, true
  %185 = zext i1 %184 to i32
  %186 = sext i32 %185 to i64
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %192

188:                                              ; preds = %179
  br label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %190, i32 noundef 975, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.58)
  br label %1086

191:                                              ; No predecessors!
  br label %192

192:                                              ; preds = %191, %179
  %193 = load ptr, ptr %3, align 8
  %194 = getelementptr inbounds %struct.rzip_control, ptr %193, i32 0, i32 32
  %195 = load i8, ptr %194, align 1
  %196 = sext i8 %195 to i32
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %239

198:                                              ; preds = %192
  %199 = load ptr, ptr %3, align 8
  %200 = getelementptr inbounds %struct.rzip_control, ptr %199, i32 0, i32 33
  %201 = load i8, ptr %200, align 2
  %202 = sext i8 %201 to i32
  %203 = icmp sgt i32 %202, 5
  br i1 %203, label %204, label %239

204:                                              ; preds = %198
  %205 = load i32, ptr %24, align 4
  %206 = load ptr, ptr %3, align 8
  %207 = getelementptr inbounds %struct.rzip_control, ptr %206, i32 0, i32 48
  %208 = call i64 @read(i32 noundef %205, ptr noundef %207, i64 noundef 1)
  %209 = icmp ne i64 %208, 1
  %210 = xor i1 %209, true
  %211 = xor i1 %210, true
  %212 = zext i1 %211 to i32
  %213 = sext i32 %212 to i64
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %219

215:                                              ; preds = %204
  br label %216

216:                                              ; preds = %215
  %217 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %217, i32 noundef 978, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.59)
  br label %1086

218:                                              ; No predecessors!
  br label %219

219:                                              ; preds = %218, %204
  %220 = load i32, ptr %24, align 4
  %221 = load i8, ptr %20, align 1
  %222 = sext i8 %221 to i64
  %223 = call i64 @read(i32 noundef %220, ptr noundef %13, i64 noundef %222)
  %224 = load i8, ptr %20, align 1
  %225 = sext i8 %224 to i64
  %226 = icmp ne i64 %223, %225
  %227 = xor i1 %226, true
  %228 = xor i1 %227, true
  %229 = zext i1 %228 to i32
  %230 = sext i32 %229 to i64
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %219
  br label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %234, i32 noundef 980, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.60)
  br label %1086

235:                                              ; No predecessors!
  br label %236

236:                                              ; preds = %235, %219
  %237 = load i64, ptr %13, align 8
  %238 = call i64 @__uint64_identity(i64 noundef %237)
  store i64 %238, ptr %13, align 8
  br label %239

239:                                              ; preds = %236, %198, %192
  br label %240

240:                                              ; preds = %239, %173, %167
  %241 = load ptr, ptr %3, align 8
  %242 = getelementptr inbounds %struct.rzip_control, ptr %241, i32 0, i32 32
  %243 = load i8, ptr %242, align 1
  %244 = sext i8 %243 to i32
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %246, label %253

246:                                              ; preds = %240
  %247 = load ptr, ptr %3, align 8
  %248 = getelementptr inbounds %struct.rzip_control, ptr %247, i32 0, i32 33
  %249 = load i8, ptr %248, align 2
  %250 = sext i8 %249 to i32
  %251 = icmp slt i32 %250, 4
  br i1 %251, label %252, label %253

252:                                              ; preds = %246
  store i64 24, ptr %9, align 8
  store i32 13, ptr %15, align 4
  br label %290

253:                                              ; preds = %246, %240
  %254 = load ptr, ptr %3, align 8
  %255 = getelementptr inbounds %struct.rzip_control, ptr %254, i32 0, i32 32
  %256 = load i8, ptr %255, align 1
  %257 = sext i8 %256 to i32
  %258 = icmp eq i32 %257, 0
  br i1 %258, label %259, label %266

259:                                              ; preds = %253
  %260 = load ptr, ptr %3, align 8
  %261 = getelementptr inbounds %struct.rzip_control, ptr %260, i32 0, i32 33
  %262 = load i8, ptr %261, align 2
  %263 = sext i8 %262 to i32
  %264 = icmp eq i32 %263, 4
  br i1 %264, label %265, label %266

265:                                              ; preds = %259
  store i64 24, ptr %9, align 8
  store i32 25, ptr %15, align 4
  br label %289

266:                                              ; preds = %259, %253
  %267 = load ptr, ptr %3, align 8
  %268 = getelementptr inbounds %struct.rzip_control, ptr %267, i32 0, i32 32
  %269 = load i8, ptr %268, align 1
  %270 = sext i8 %269 to i32
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load ptr, ptr %3, align 8
  %274 = getelementptr inbounds %struct.rzip_control, ptr %273, i32 0, i32 33
  %275 = load i8, ptr %274, align 2
  %276 = sext i8 %275 to i32
  %277 = icmp eq i32 %276, 5
  br i1 %277, label %278, label %279

278:                                              ; preds = %272
  store i64 25, ptr %9, align 8
  store i32 25, ptr %15, align 4
  br label %288

279:                                              ; preds = %272, %266
  %280 = load i8, ptr %20, align 1
  %281 = sext i8 %280 to i32
  %282 = add nsw i32 26, %281
  %283 = sext i32 %282 to i64
  store i64 %283, ptr %9, align 8
  %284 = load i8, ptr %20, align 1
  %285 = sext i8 %284 to i32
  %286 = mul nsw i32 %285, 3
  %287 = add nsw i32 1, %286
  store i32 %287, ptr %15, align 4
  br label %288

288:                                              ; preds = %279, %278
  br label %289

289:                                              ; preds = %288, %265
  br label %290

290:                                              ; preds = %289, %252
  %291 = load ptr, ptr %3, align 8
  %292 = getelementptr inbounds %struct.rzip_control, ptr %291, i32 0, i32 32
  %293 = load i8, ptr %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp eq i32 %294, 0
  br i1 %295, label %296, label %306

296:                                              ; preds = %290
  %297 = load ptr, ptr %3, align 8
  %298 = getelementptr inbounds %struct.rzip_control, ptr %297, i32 0, i32 33
  %299 = load i8, ptr %298, align 2
  %300 = sext i8 %299 to i32
  %301 = icmp slt i32 %300, 6
  br i1 %301, label %302, label %306

302:                                              ; preds = %296
  %303 = load i64, ptr %11, align 8
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %306, label %305

305:                                              ; preds = %302
  br label %813

306:                                              ; preds = %302, %296, %290
  br label %307

307:                                              ; preds = %812, %306
  store i32 0, ptr %16, align 4
  %308 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  store i64 0, ptr %308, align 16
  %309 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 0
  %310 = load i64, ptr %309, align 16
  %311 = load i32, ptr %15, align 4
  %312 = sext i32 %311 to i64
  %313 = add nsw i64 %310, %312
  %314 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 1
  store i64 %313, ptr %314, align 8
  br label %315

315:                                              ; preds = %307
  %316 = load ptr, ptr %3, align 8
  %317 = getelementptr inbounds %struct.rzip_control, ptr %316, i32 0, i32 26
  %318 = load i64, ptr %317, align 8
  %319 = and i64 %318, 3072
  %320 = icmp ne i64 %319, 0
  br i1 %320, label %321, label %327

321:                                              ; preds = %315
  br label %322

322:                                              ; preds = %321
  %323 = load ptr, ptr %3, align 8
  %324 = load i32, ptr %17, align 4
  %325 = add nsw i32 %324, 1
  store i32 %325, ptr %17, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %323, i32 noundef 3, i32 noundef 1006, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.61, i32 noundef %325)
  br label %326

326:                                              ; preds = %322
  br label %327

327:                                              ; preds = %326, %315
  br label %328

328:                                              ; preds = %327
  %329 = load i8, ptr %20, align 1
  %330 = icmp ne i8 %329, 0
  br i1 %330, label %331, label %346

331:                                              ; preds = %328
  br label %332

332:                                              ; preds = %331
  %333 = load ptr, ptr %3, align 8
  %334 = getelementptr inbounds %struct.rzip_control, ptr %333, i32 0, i32 26
  %335 = load i64, ptr %334, align 8
  %336 = and i64 %335, 3072
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %338, label %344

338:                                              ; preds = %332
  br label %339

339:                                              ; preds = %338
  %340 = load ptr, ptr %3, align 8
  %341 = load i8, ptr %20, align 1
  %342 = sext i8 %341 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %340, i32 noundef 3, i32 noundef 1008, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.62, i32 noundef %342)
  br label %343

343:                                              ; preds = %339
  br label %344

344:                                              ; preds = %343, %332
  br label %345

345:                                              ; preds = %344
  br label %346

346:                                              ; preds = %345, %328
  %347 = load i64, ptr %13, align 8
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %366

349:                                              ; preds = %346
  %350 = load i64, ptr %13, align 8
  %351 = load i64, ptr %14, align 8
  %352 = add nsw i64 %351, %350
  store i64 %352, ptr %14, align 8
  br label %353

353:                                              ; preds = %349
  %354 = load ptr, ptr %3, align 8
  %355 = getelementptr inbounds %struct.rzip_control, ptr %354, i32 0, i32 26
  %356 = load i64, ptr %355, align 8
  %357 = and i64 %356, 3072
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %364

359:                                              ; preds = %353
  br label %360

360:                                              ; preds = %359
  %361 = load ptr, ptr %3, align 8
  %362 = load i64, ptr %13, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %361, i32 noundef 3, i32 noundef 1011, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.63, i64 noundef %362)
  br label %363

363:                                              ; preds = %360
  br label %364

364:                                              ; preds = %363, %353
  br label %365

365:                                              ; preds = %364
  br label %366

366:                                              ; preds = %365, %346
  br label %367

367:                                              ; preds = %696, %366
  %368 = load i32, ptr %16, align 4
  %369 = icmp slt i32 %368, 2
  br i1 %369, label %370, label %699

370:                                              ; preds = %367
  store i32 1, ptr %30, align 4
  %371 = load i32, ptr %24, align 4
  %372 = load i32, ptr %16, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds [2 x i64], ptr %10, i64 0, i64 %373
  %375 = load i64, ptr %374, align 8
  %376 = load i64, ptr %9, align 8
  %377 = add nsw i64 %375, %376
  %378 = call i64 @lseek64(i32 noundef %371, i64 noundef %377, i32 noundef 0) #11
  %379 = icmp eq i64 %378, -1
  %380 = xor i1 %379, true
  %381 = xor i1 %380, true
  %382 = zext i1 %381 to i32
  %383 = sext i32 %382 to i64
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %389

385:                                              ; preds = %370
  br label %386

386:                                              ; preds = %385
  %387 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %387, i32 noundef 1017, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.64)
  br label %1086

388:                                              ; No predecessors!
  br label %389

389:                                              ; preds = %388, %370
  %390 = load ptr, ptr %3, align 8
  %391 = load i32, ptr %24, align 4
  %392 = load i8, ptr %20, align 1
  %393 = sext i8 %392 to i32
  %394 = call zeroext i1 @get_header_info(ptr noundef %390, i32 noundef %391, ptr noundef %22, ptr noundef %5, ptr noundef %4, ptr noundef %6, i32 noundef %393)
  %395 = xor i1 %394, true
  %396 = xor i1 %395, true
  %397 = xor i1 %396, true
  %398 = zext i1 %397 to i32
  %399 = sext i32 %398 to i64
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %402

401:                                              ; preds = %389
  store i1 false, ptr %2, align 1
  br label %1096

402:                                              ; preds = %389
  br label %403

403:                                              ; preds = %402
  %404 = load ptr, ptr %3, align 8
  %405 = getelementptr inbounds %struct.rzip_control, ptr %404, i32 0, i32 26
  %406 = load i64, ptr %405, align 8
  %407 = and i64 %406, 3072
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %414

409:                                              ; preds = %403
  br label %410

410:                                              ; preds = %409
  %411 = load ptr, ptr %3, align 8
  %412 = load i32, ptr %16, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %411, i32 noundef 3, i32 noundef 1021, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.65, i32 noundef %412)
  br label %413

413:                                              ; preds = %410
  br label %414

414:                                              ; preds = %413, %403
  br label %415

415:                                              ; preds = %414
  br label %416

416:                                              ; preds = %415
  %417 = load ptr, ptr %3, align 8
  %418 = getelementptr inbounds %struct.rzip_control, ptr %417, i32 0, i32 26
  %419 = load i64, ptr %418, align 8
  %420 = and i64 %419, 2048
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %422, label %427

422:                                              ; preds = %416
  br label %423

423:                                              ; preds = %422
  %424 = load ptr, ptr %3, align 8
  %425 = load i64, ptr %9, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %424, i32 noundef 4, i32 noundef 1022, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.66, i64 noundef %425)
  br label %426

426:                                              ; preds = %423
  br label %427

427:                                              ; preds = %426, %416
  br label %428

428:                                              ; preds = %427
  br label %429

429:                                              ; preds = %428
  %430 = load ptr, ptr %3, align 8
  %431 = getelementptr inbounds %struct.rzip_control, ptr %430, i32 0, i32 26
  %432 = load i64, ptr %431, align 8
  %433 = and i64 %432, 3072
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %439

435:                                              ; preds = %429
  br label %436

436:                                              ; preds = %435
  %437 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %437, i32 noundef 3, i32 noundef 1023, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.67)
  br label %438

438:                                              ; preds = %436
  br label %439

439:                                              ; preds = %438, %429
  br label %440

440:                                              ; preds = %439
  br label %441

441:                                              ; preds = %693, %440
  %442 = load i64, ptr %6, align 8
  %443 = load i64, ptr %9, align 8
  %444 = add nsw i64 %442, %443
  %445 = load i64, ptr %12, align 8
  %446 = icmp sgt i64 %444, %445
  %447 = xor i1 %446, true
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = sext i32 %449 to i64
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %456

452:                                              ; preds = %441
  br label %453

453:                                              ; preds = %452
  %454 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %454, i32 noundef 1028, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.68)
  br label %1086

455:                                              ; No predecessors!
  br label %456

456:                                              ; preds = %455, %441
  %457 = load i32, ptr %24, align 4
  %458 = load i64, ptr %6, align 8
  %459 = load i64, ptr %9, align 8
  %460 = add nsw i64 %458, %459
  %461 = call i64 @lseek64(i32 noundef %457, i64 noundef %460, i32 noundef 0) #11
  %462 = icmp eq i64 %461, -1
  %463 = zext i1 %462 to i32
  %464 = sext i32 %463 to i64
  store i64 %464, ptr %31, align 8
  %465 = icmp ne i64 %464, 0
  %466 = xor i1 %465, true
  %467 = xor i1 %466, true
  %468 = zext i1 %467 to i32
  %469 = sext i32 %468 to i64
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %456
  br label %472

472:                                              ; preds = %471
  %473 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %473, i32 noundef 1030, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.64)
  br label %1086

474:                                              ; No predecessors!
  br label %475

475:                                              ; preds = %474, %456
  %476 = load ptr, ptr %3, align 8
  %477 = load i32, ptr %24, align 4
  %478 = load i8, ptr %20, align 1
  %479 = sext i8 %478 to i32
  %480 = call zeroext i1 @get_header_info(ptr noundef %476, i32 noundef %477, ptr noundef %22, ptr noundef %5, ptr noundef %4, ptr noundef %6, i32 noundef %479)
  %481 = xor i1 %480, true
  %482 = xor i1 %481, true
  %483 = xor i1 %482, true
  %484 = zext i1 %483 to i32
  %485 = sext i32 %484 to i64
  %486 = icmp ne i64 %485, 0
  br i1 %486, label %487, label %488

487:                                              ; preds = %475
  store i1 false, ptr %2, align 1
  br label %1096

488:                                              ; preds = %475
  %489 = load i64, ptr %6, align 8
  %490 = icmp slt i64 %489, 0
  br i1 %490, label %497, label %491

491:                                              ; preds = %488
  %492 = load i64, ptr %5, align 8
  %493 = icmp slt i64 %492, 0
  br i1 %493, label %497, label %494

494:                                              ; preds = %491
  %495 = load i64, ptr %4, align 8
  %496 = icmp slt i64 %495, 0
  br label %497

497:                                              ; preds = %494, %491, %488
  %498 = phi i1 [ true, %491 ], [ true, %488 ], [ %496, %494 ]
  %499 = xor i1 %498, true
  %500 = xor i1 %499, true
  %501 = zext i1 %500 to i32
  %502 = sext i32 %501 to i64
  %503 = icmp ne i64 %502, 0
  br i1 %503, label %504, label %508

504:                                              ; preds = %497
  br label %505

505:                                              ; preds = %504
  %506 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %506, i32 noundef 1035, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.69)
  br label %1086

507:                                              ; No predecessors!
  br label %508

508:                                              ; preds = %507, %497
  br label %509

509:                                              ; preds = %508
  %510 = load ptr, ptr %3, align 8
  %511 = getelementptr inbounds %struct.rzip_control, ptr %510, i32 0, i32 26
  %512 = load i64, ptr %511, align 8
  %513 = and i64 %512, 3072
  %514 = icmp ne i64 %513, 0
  br i1 %514, label %515, label %520

515:                                              ; preds = %509
  br label %516

516:                                              ; preds = %515
  %517 = load ptr, ptr %3, align 8
  %518 = load i32, ptr %30, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %517, i32 noundef 3, i32 noundef 1036, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.70, i32 noundef %518)
  br label %519

519:                                              ; preds = %516
  br label %520

520:                                              ; preds = %519, %509
  br label %521

521:                                              ; preds = %520
  %522 = load i8, ptr %22, align 1
  %523 = zext i8 %522 to i32
  %524 = icmp eq i32 %523, 3
  br i1 %524, label %525, label %538

525:                                              ; preds = %521
  br label %526

526:                                              ; preds = %525
  %527 = load ptr, ptr %3, align 8
  %528 = getelementptr inbounds %struct.rzip_control, ptr %527, i32 0, i32 26
  %529 = load i64, ptr %528, align 8
  %530 = and i64 %529, 3072
  %531 = icmp ne i64 %530, 0
  br i1 %531, label %532, label %536

532:                                              ; preds = %526
  br label %533

533:                                              ; preds = %532
  %534 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %534, i32 noundef 3, i32 noundef 1038, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.71)
  br label %535

535:                                              ; preds = %533
  br label %536

536:                                              ; preds = %535, %526
  br label %537

537:                                              ; preds = %536
  br label %641

538:                                              ; preds = %521
  %539 = load i8, ptr %22, align 1
  %540 = zext i8 %539 to i32
  %541 = icmp eq i32 %540, 4
  br i1 %541, label %542, label %555

542:                                              ; preds = %538
  br label %543

543:                                              ; preds = %542
  %544 = load ptr, ptr %3, align 8
  %545 = getelementptr inbounds %struct.rzip_control, ptr %544, i32 0, i32 26
  %546 = load i64, ptr %545, align 8
  %547 = and i64 %546, 3072
  %548 = icmp ne i64 %547, 0
  br i1 %548, label %549, label %553

549:                                              ; preds = %543
  br label %550

550:                                              ; preds = %549
  %551 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %551, i32 noundef 3, i32 noundef 1040, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.72)
  br label %552

552:                                              ; preds = %550
  br label %553

553:                                              ; preds = %552, %543
  br label %554

554:                                              ; preds = %553
  br label %640

555:                                              ; preds = %538
  %556 = load i8, ptr %22, align 1
  %557 = zext i8 %556 to i32
  %558 = icmp eq i32 %557, 5
  br i1 %558, label %559, label %572

559:                                              ; preds = %555
  br label %560

560:                                              ; preds = %559
  %561 = load ptr, ptr %3, align 8
  %562 = getelementptr inbounds %struct.rzip_control, ptr %561, i32 0, i32 26
  %563 = load i64, ptr %562, align 8
  %564 = and i64 %563, 3072
  %565 = icmp ne i64 %564, 0
  br i1 %565, label %566, label %570

566:                                              ; preds = %560
  br label %567

567:                                              ; preds = %566
  %568 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %568, i32 noundef 3, i32 noundef 1042, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.73)
  br label %569

569:                                              ; preds = %567
  br label %570

570:                                              ; preds = %569, %560
  br label %571

571:                                              ; preds = %570
  br label %639

572:                                              ; preds = %555
  %573 = load i8, ptr %22, align 1
  %574 = zext i8 %573 to i32
  %575 = icmp eq i32 %574, 6
  br i1 %575, label %576, label %589

576:                                              ; preds = %572
  br label %577

577:                                              ; preds = %576
  %578 = load ptr, ptr %3, align 8
  %579 = getelementptr inbounds %struct.rzip_control, ptr %578, i32 0, i32 26
  %580 = load i64, ptr %579, align 8
  %581 = and i64 %580, 3072
  %582 = icmp ne i64 %581, 0
  br i1 %582, label %583, label %587

583:                                              ; preds = %577
  br label %584

584:                                              ; preds = %583
  %585 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %585, i32 noundef 3, i32 noundef 1044, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.74)
  br label %586

586:                                              ; preds = %584
  br label %587

587:                                              ; preds = %586, %577
  br label %588

588:                                              ; preds = %587
  br label %638

589:                                              ; preds = %572
  %590 = load i8, ptr %22, align 1
  %591 = zext i8 %590 to i32
  %592 = icmp eq i32 %591, 7
  br i1 %592, label %593, label %606

593:                                              ; preds = %589
  br label %594

594:                                              ; preds = %593
  %595 = load ptr, ptr %3, align 8
  %596 = getelementptr inbounds %struct.rzip_control, ptr %595, i32 0, i32 26
  %597 = load i64, ptr %596, align 8
  %598 = and i64 %597, 3072
  %599 = icmp ne i64 %598, 0
  br i1 %599, label %600, label %604

600:                                              ; preds = %594
  br label %601

601:                                              ; preds = %600
  %602 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %602, i32 noundef 3, i32 noundef 1046, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.75)
  br label %603

603:                                              ; preds = %601
  br label %604

604:                                              ; preds = %603, %594
  br label %605

605:                                              ; preds = %604
  br label %637

606:                                              ; preds = %589
  %607 = load i8, ptr %22, align 1
  %608 = zext i8 %607 to i32
  %609 = icmp eq i32 %608, 8
  br i1 %609, label %610, label %623

610:                                              ; preds = %606
  br label %611

611:                                              ; preds = %610
  %612 = load ptr, ptr %3, align 8
  %613 = getelementptr inbounds %struct.rzip_control, ptr %612, i32 0, i32 26
  %614 = load i64, ptr %613, align 8
  %615 = and i64 %614, 3072
  %616 = icmp ne i64 %615, 0
  br i1 %616, label %617, label %621

617:                                              ; preds = %611
  br label %618

618:                                              ; preds = %617
  %619 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %619, i32 noundef 3, i32 noundef 1048, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.76)
  br label %620

620:                                              ; preds = %618
  br label %621

621:                                              ; preds = %620, %611
  br label %622

622:                                              ; preds = %621
  br label %636

623:                                              ; preds = %606
  br label %624

624:                                              ; preds = %623
  %625 = load ptr, ptr %3, align 8
  %626 = getelementptr inbounds %struct.rzip_control, ptr %625, i32 0, i32 26
  %627 = load i64, ptr %626, align 8
  %628 = and i64 %627, 3072
  %629 = icmp ne i64 %628, 0
  br i1 %629, label %630, label %634

630:                                              ; preds = %624
  br label %631

631:                                              ; preds = %630
  %632 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %632, i32 noundef 3, i32 noundef 1050, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.77)
  br label %633

633:                                              ; preds = %631
  br label %634

634:                                              ; preds = %633, %624
  br label %635

635:                                              ; preds = %634
  br label %636

636:                                              ; preds = %635, %622
  br label %637

637:                                              ; preds = %636, %605
  br label %638

638:                                              ; preds = %637, %588
  br label %639

639:                                              ; preds = %638, %571
  br label %640

640:                                              ; preds = %639, %554
  br label %641

641:                                              ; preds = %640, %537
  %642 = load i64, ptr %4, align 8
  %643 = load i64, ptr %7, align 8
  %644 = add nsw i64 %643, %642
  store i64 %644, ptr %7, align 8
  %645 = load i64, ptr %5, align 8
  %646 = load i64, ptr %8, align 8
  %647 = add nsw i64 %646, %645
  store i64 %647, ptr %8, align 8
  br label %648

648:                                              ; preds = %641
  %649 = load ptr, ptr %3, align 8
  %650 = getelementptr inbounds %struct.rzip_control, ptr %649, i32 0, i32 26
  %651 = load i64, ptr %650, align 8
  %652 = and i64 %651, 3072
  %653 = icmp ne i64 %652, 0
  br i1 %653, label %654, label %663

654:                                              ; preds = %648
  br label %655

655:                                              ; preds = %654
  %656 = load ptr, ptr %3, align 8
  %657 = load i64, ptr %5, align 8
  %658 = load i64, ptr %4, align 8
  %659 = call double @percentage(i64 noundef %657, i64 noundef %658)
  %660 = load i64, ptr %5, align 8
  %661 = load i64, ptr %4, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %656, i32 noundef 3, i32 noundef 1053, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.78, double noundef %659, i64 noundef %660, i64 noundef %661)
  br label %662

662:                                              ; preds = %655
  br label %663

663:                                              ; preds = %662, %648
  br label %664

664:                                              ; preds = %663
  br label %665

665:                                              ; preds = %664
  %666 = load ptr, ptr %3, align 8
  %667 = getelementptr inbounds %struct.rzip_control, ptr %666, i32 0, i32 26
  %668 = load i64, ptr %667, align 8
  %669 = and i64 %668, 2048
  %670 = icmp ne i64 %669, 0
  br i1 %670, label %671, label %677

671:                                              ; preds = %665
  br label %672

672:                                              ; preds = %671
  %673 = load ptr, ptr %3, align 8
  %674 = load i64, ptr %31, align 8
  %675 = load i64, ptr %6, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %673, i32 noundef 4, i32 noundef 1054, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.79, i64 noundef %674, i64 noundef %675)
  br label %676

676:                                              ; preds = %672
  br label %677

677:                                              ; preds = %676, %665
  br label %678

678:                                              ; preds = %677
  br label %679

679:                                              ; preds = %678
  %680 = load ptr, ptr %3, align 8
  %681 = getelementptr inbounds %struct.rzip_control, ptr %680, i32 0, i32 26
  %682 = load i64, ptr %681, align 8
  %683 = and i64 %682, 3072
  %684 = icmp ne i64 %683, 0
  br i1 %684, label %685, label %689

685:                                              ; preds = %679
  br label %686

686:                                              ; preds = %685
  %687 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %687, i32 noundef 3, i32 noundef 1055, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.80)
  br label %688

688:                                              ; preds = %686
  br label %689

689:                                              ; preds = %688, %679
  br label %690

690:                                              ; preds = %689
  %691 = load i32, ptr %30, align 4
  %692 = add nsw i32 %691, 1
  store i32 %692, ptr %30, align 4
  br label %693

693:                                              ; preds = %690
  %694 = load i64, ptr %6, align 8
  %695 = icmp ne i64 %694, 0
  br i1 %695, label %441, label %696, !llvm.loop !17

696:                                              ; preds = %693
  %697 = load i32, ptr %16, align 4
  %698 = add nsw i32 %697, 1
  store i32 %698, ptr %16, align 4
  br label %367, !llvm.loop !18

699:                                              ; preds = %367
  %700 = load i32, ptr %24, align 4
  %701 = load i64, ptr %5, align 8
  %702 = call i64 @lseek64(i32 noundef %700, i64 noundef %701, i32 noundef 1) #11
  store i64 %702, ptr %9, align 8
  %703 = icmp eq i64 %702, -1
  %704 = xor i1 %703, true
  %705 = xor i1 %704, true
  %706 = zext i1 %705 to i32
  %707 = sext i32 %706 to i64
  %708 = icmp ne i64 %707, 0
  br i1 %708, label %709, label %713

709:                                              ; preds = %699
  br label %710

710:                                              ; preds = %709
  %711 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %711, i32 noundef 1062, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.81)
  br label %1086

712:                                              ; No predecessors!
  br label %713

713:                                              ; preds = %712, %699
  %714 = load i64, ptr %9, align 8
  %715 = load i64, ptr %12, align 8
  %716 = load ptr, ptr %3, align 8
  %717 = getelementptr inbounds %struct.rzip_control, ptr %716, i32 0, i32 26
  %718 = load i64, ptr %717, align 8
  %719 = and i64 %718, 131072
  %720 = icmp ne i64 %719, 0
  %721 = zext i1 %720 to i64
  %722 = select i1 %720, i32 16, i32 0
  %723 = sext i32 %722 to i64
  %724 = sub nsw i64 %715, %723
  %725 = icmp sge i64 %714, %724
  br i1 %725, label %726, label %727

726:                                              ; preds = %713
  br label %813

727:                                              ; preds = %713
  %728 = load ptr, ptr %3, align 8
  %729 = getelementptr inbounds %struct.rzip_control, ptr %728, i32 0, i32 32
  %730 = load i8, ptr %729, align 1
  %731 = sext i8 %730 to i32
  %732 = icmp eq i32 %731, 0
  br i1 %732, label %733, label %812

733:                                              ; preds = %727
  %734 = load ptr, ptr %3, align 8
  %735 = getelementptr inbounds %struct.rzip_control, ptr %734, i32 0, i32 33
  %736 = load i8, ptr %735, align 2
  %737 = sext i8 %736 to i32
  %738 = icmp sgt i32 %737, 4
  br i1 %738, label %739, label %812

739:                                              ; preds = %733
  %740 = load i32, ptr %24, align 4
  %741 = call i64 @read(i32 noundef %740, ptr noundef %20, i64 noundef 1)
  %742 = icmp ne i64 %741, 1
  %743 = xor i1 %742, true
  %744 = xor i1 %743, true
  %745 = zext i1 %744 to i32
  %746 = sext i32 %745 to i64
  %747 = icmp ne i64 %746, 0
  br i1 %747, label %748, label %752

748:                                              ; preds = %739
  br label %749

749:                                              ; preds = %748
  %750 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %750, i32 noundef 1069, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.58)
  br label %1086

751:                                              ; No predecessors!
  br label %752

752:                                              ; preds = %751, %739
  %753 = load i64, ptr %9, align 8
  %754 = add nsw i64 %753, 1
  store i64 %754, ptr %9, align 8
  %755 = load ptr, ptr %3, align 8
  %756 = getelementptr inbounds %struct.rzip_control, ptr %755, i32 0, i32 32
  %757 = load i8, ptr %756, align 1
  %758 = sext i8 %757 to i32
  %759 = icmp eq i32 %758, 0
  br i1 %759, label %760, label %811

760:                                              ; preds = %752
  %761 = load ptr, ptr %3, align 8
  %762 = getelementptr inbounds %struct.rzip_control, ptr %761, i32 0, i32 33
  %763 = load i8, ptr %762, align 2
  %764 = sext i8 %763 to i32
  %765 = icmp sgt i32 %764, 5
  br i1 %765, label %766, label %811

766:                                              ; preds = %760
  %767 = load i32, ptr %24, align 4
  %768 = load ptr, ptr %3, align 8
  %769 = getelementptr inbounds %struct.rzip_control, ptr %768, i32 0, i32 48
  %770 = call i64 @read(i32 noundef %767, ptr noundef %769, i64 noundef 1)
  %771 = icmp ne i64 %770, 1
  %772 = xor i1 %771, true
  %773 = xor i1 %772, true
  %774 = zext i1 %773 to i32
  %775 = sext i32 %774 to i64
  %776 = icmp ne i64 %775, 0
  br i1 %776, label %777, label %781

777:                                              ; preds = %766
  br label %778

778:                                              ; preds = %777
  %779 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %779, i32 noundef 1073, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.59)
  br label %1086

780:                                              ; No predecessors!
  br label %781

781:                                              ; preds = %780, %766
  %782 = load i32, ptr %24, align 4
  %783 = load i8, ptr %20, align 1
  %784 = sext i8 %783 to i64
  %785 = call i64 @read(i32 noundef %782, ptr noundef %13, i64 noundef %784)
  %786 = load i8, ptr %20, align 1
  %787 = sext i8 %786 to i64
  %788 = icmp ne i64 %785, %787
  %789 = xor i1 %788, true
  %790 = xor i1 %789, true
  %791 = zext i1 %790 to i32
  %792 = sext i32 %791 to i64
  %793 = icmp ne i64 %792, 0
  br i1 %793, label %794, label %798

794:                                              ; preds = %781
  br label %795

795:                                              ; preds = %794
  %796 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %796, i32 noundef 1075, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.60)
  br label %1086

797:                                              ; No predecessors!
  br label %798

798:                                              ; preds = %797, %781
  %799 = load i64, ptr %13, align 8
  %800 = call i64 @__uint64_identity(i64 noundef %799)
  store i64 %800, ptr %13, align 8
  %801 = load i8, ptr %20, align 1
  %802 = sext i8 %801 to i32
  %803 = add nsw i32 1, %802
  %804 = sext i32 %803 to i64
  %805 = load i64, ptr %9, align 8
  %806 = add nsw i64 %805, %804
  store i64 %806, ptr %9, align 8
  %807 = load i8, ptr %20, align 1
  %808 = sext i8 %807 to i32
  %809 = mul nsw i32 %808, 3
  %810 = add nsw i32 1, %809
  store i32 %810, ptr %15, align 4
  br label %811

811:                                              ; preds = %798, %760, %752
  br label %812

812:                                              ; preds = %811, %733, %727
  br label %307

813:                                              ; preds = %726, %305
  %814 = load i64, ptr %9, align 8
  %815 = load i64, ptr %12, align 8
  %816 = icmp sgt i64 %814, %815
  %817 = xor i1 %816, true
  %818 = xor i1 %817, true
  %819 = zext i1 %818 to i32
  %820 = sext i32 %819 to i64
  %821 = icmp ne i64 %820, 0
  br i1 %821, label %822, label %826

822:                                              ; preds = %813
  br label %823

823:                                              ; preds = %822
  %824 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %824, i32 noundef 1084, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.68)
  br label %1086

825:                                              ; No predecessors!
  br label %826

826:                                              ; preds = %825, %813
  br label %827

827:                                              ; preds = %826
  %828 = load ptr, ptr %3, align 8
  %829 = getelementptr inbounds %struct.rzip_control, ptr %828, i32 0, i32 26
  %830 = load i64, ptr %829, align 8
  %831 = and i64 %830, 3072
  %832 = icmp ne i64 %831, 0
  br i1 %832, label %833, label %842

833:                                              ; preds = %827
  br label %834

834:                                              ; preds = %833
  %835 = load ptr, ptr %3, align 8
  %836 = load i64, ptr %7, align 8
  %837 = load i64, ptr %11, align 8
  %838 = call double @percentage(i64 noundef %836, i64 noundef %837)
  %839 = load i64, ptr %7, align 8
  %840 = load i64, ptr %11, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %835, i32 noundef 3, i32 noundef 1087, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.82, double noundef %838, i64 noundef %839, i64 noundef %840)
  br label %841

841:                                              ; preds = %834
  br label %842

842:                                              ; preds = %841, %827
  br label %843

843:                                              ; preds = %842
  br label %844

844:                                              ; preds = %843
  %845 = load ptr, ptr %3, align 8
  %846 = getelementptr inbounds %struct.rzip_control, ptr %845, i32 0, i32 26
  %847 = load i64, ptr %846, align 8
  %848 = and i64 %847, 3072
  %849 = icmp ne i64 %848, 0
  br i1 %849, label %850, label %859

850:                                              ; preds = %844
  br label %851

851:                                              ; preds = %850
  %852 = load ptr, ptr %3, align 8
  %853 = load i64, ptr %8, align 8
  %854 = load i64, ptr %7, align 8
  %855 = call double @percentage(i64 noundef %853, i64 noundef %854)
  %856 = load i64, ptr %8, align 8
  %857 = load i64, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %852, i32 noundef 3, i32 noundef 1090, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.83, double noundef %855, i64 noundef %856, i64 noundef %857)
  br label %858

858:                                              ; preds = %851
  br label %859

859:                                              ; preds = %858, %844
  br label %860

860:                                              ; preds = %859
  br label %861

861:                                              ; preds = %860
  %862 = load ptr, ptr %3, align 8
  %863 = getelementptr inbounds %struct.rzip_control, ptr %862, i32 0, i32 26
  %864 = load i64, ptr %863, align 8
  %865 = and i64 %864, 3072
  %866 = icmp ne i64 %865, 0
  br i1 %866, label %867, label %876

867:                                              ; preds = %861
  br label %868

868:                                              ; preds = %867
  %869 = load ptr, ptr %3, align 8
  %870 = load i64, ptr %8, align 8
  %871 = load i64, ptr %11, align 8
  %872 = call double @percentage(i64 noundef %870, i64 noundef %871)
  %873 = load i64, ptr %8, align 8
  %874 = load i64, ptr %11, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %869, i32 noundef 3, i32 noundef 1093, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.84, double noundef %872, i64 noundef %873, i64 noundef %874)
  br label %875

875:                                              ; preds = %868
  br label %876

876:                                              ; preds = %875, %861
  br label %877

877:                                              ; preds = %876
  %878 = load i64, ptr %11, align 8
  %879 = sitofp i64 %878 to x86_fp80
  %880 = load i64, ptr %12, align 8
  %881 = sitofp i64 %880 to x86_fp80
  %882 = fdiv x86_fp80 %879, %881
  store x86_fp80 %882, ptr %21, align 16
  br label %883

883:                                              ; preds = %877
  br label %884

884:                                              ; preds = %883
  %885 = load ptr, ptr %3, align 8
  %886 = load ptr, ptr %19, align 8
  %887 = load ptr, ptr %3, align 8
  %888 = getelementptr inbounds %struct.rzip_control, ptr %887, i32 0, i32 32
  %889 = load i8, ptr %888, align 1
  %890 = sext i8 %889 to i32
  %891 = load ptr, ptr %3, align 8
  %892 = getelementptr inbounds %struct.rzip_control, ptr %891, i32 0, i32 33
  %893 = load i8, ptr %892, align 2
  %894 = sext i8 %893 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %885, i32 noundef 1, i32 noundef 1097, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.85, ptr noundef %886, i32 noundef %890, i32 noundef %894)
  br label %895

895:                                              ; preds = %884
  br label %896

896:                                              ; preds = %895
  br label %897

897:                                              ; preds = %896
  br label %898

898:                                              ; preds = %897
  %899 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %899, i32 noundef 1, i32 noundef 1099, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.86)
  br label %900

900:                                              ; preds = %898
  br label %901

901:                                              ; preds = %900
  %902 = load i8, ptr %22, align 1
  %903 = zext i8 %902 to i32
  %904 = icmp eq i32 %903, 3
  br i1 %904, label %905, label %911

905:                                              ; preds = %901
  br label %906

906:                                              ; preds = %905
  br label %907

907:                                              ; preds = %906
  %908 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %908, i32 noundef 1, i32 noundef 1101, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.87)
  br label %909

909:                                              ; preds = %907
  br label %910

910:                                              ; preds = %909
  br label %972

911:                                              ; preds = %901
  %912 = load i8, ptr %22, align 1
  %913 = zext i8 %912 to i32
  %914 = icmp eq i32 %913, 4
  br i1 %914, label %915, label %921

915:                                              ; preds = %911
  br label %916

916:                                              ; preds = %915
  br label %917

917:                                              ; preds = %916
  %918 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %918, i32 noundef 1, i32 noundef 1103, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.88)
  br label %919

919:                                              ; preds = %917
  br label %920

920:                                              ; preds = %919
  br label %971

921:                                              ; preds = %911
  %922 = load i8, ptr %22, align 1
  %923 = zext i8 %922 to i32
  %924 = icmp eq i32 %923, 5
  br i1 %924, label %925, label %931

925:                                              ; preds = %921
  br label %926

926:                                              ; preds = %925
  br label %927

927:                                              ; preds = %926
  %928 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %928, i32 noundef 1, i32 noundef 1105, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.89)
  br label %929

929:                                              ; preds = %927
  br label %930

930:                                              ; preds = %929
  br label %970

931:                                              ; preds = %921
  %932 = load i8, ptr %22, align 1
  %933 = zext i8 %932 to i32
  %934 = icmp eq i32 %933, 6
  br i1 %934, label %935, label %941

935:                                              ; preds = %931
  br label %936

936:                                              ; preds = %935
  br label %937

937:                                              ; preds = %936
  %938 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %938, i32 noundef 1, i32 noundef 1107, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.90)
  br label %939

939:                                              ; preds = %937
  br label %940

940:                                              ; preds = %939
  br label %969

941:                                              ; preds = %931
  %942 = load i8, ptr %22, align 1
  %943 = zext i8 %942 to i32
  %944 = icmp eq i32 %943, 7
  br i1 %944, label %945, label %951

945:                                              ; preds = %941
  br label %946

946:                                              ; preds = %945
  br label %947

947:                                              ; preds = %946
  %948 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %948, i32 noundef 1, i32 noundef 1109, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.91)
  br label %949

949:                                              ; preds = %947
  br label %950

950:                                              ; preds = %949
  br label %968

951:                                              ; preds = %941
  %952 = load i8, ptr %22, align 1
  %953 = zext i8 %952 to i32
  %954 = icmp eq i32 %953, 8
  br i1 %954, label %955, label %961

955:                                              ; preds = %951
  br label %956

956:                                              ; preds = %955
  br label %957

957:                                              ; preds = %956
  %958 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %958, i32 noundef 1, i32 noundef 1111, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.92)
  br label %959

959:                                              ; preds = %957
  br label %960

960:                                              ; preds = %959
  br label %967

961:                                              ; preds = %951
  br label %962

962:                                              ; preds = %961
  br label %963

963:                                              ; preds = %962
  %964 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %964, i32 noundef 1, i32 noundef 1113, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.93)
  br label %965

965:                                              ; preds = %963
  br label %966

966:                                              ; preds = %965
  br label %967

967:                                              ; preds = %966, %960
  br label %968

968:                                              ; preds = %967, %950
  br label %969

969:                                              ; preds = %968, %940
  br label %970

970:                                              ; preds = %969, %930
  br label %971

971:                                              ; preds = %970, %920
  br label %972

972:                                              ; preds = %971, %910
  br label %973

973:                                              ; preds = %972
  br label %974

974:                                              ; preds = %973
  %975 = load ptr, ptr %3, align 8
  %976 = load i64, ptr %11, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %975, i32 noundef 1, i32 noundef 1114, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.94, i64 noundef %976)
  br label %977

977:                                              ; preds = %974
  br label %978

978:                                              ; preds = %977
  br label %979

979:                                              ; preds = %978
  br label %980

980:                                              ; preds = %979
  %981 = load ptr, ptr %3, align 8
  %982 = load i64, ptr %12, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %981, i32 noundef 1, i32 noundef 1115, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.95, i64 noundef %982)
  br label %983

983:                                              ; preds = %980
  br label %984

984:                                              ; preds = %983
  br label %985

985:                                              ; preds = %984
  br label %986

986:                                              ; preds = %985
  %987 = load ptr, ptr %3, align 8
  %988 = load x86_fp80, ptr %21, align 16
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %987, i32 noundef 1, i32 noundef 1116, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.96, x86_fp80 noundef %988)
  br label %989

989:                                              ; preds = %986
  br label %990

990:                                              ; preds = %989
  %991 = load ptr, ptr %3, align 8
  %992 = getelementptr inbounds %struct.rzip_control, ptr %991, i32 0, i32 26
  %993 = load i64, ptr %992, align 8
  %994 = and i64 %993, 131072
  %995 = icmp ne i64 %994, 0
  br i1 %995, label %996, label %1058

996:                                              ; preds = %990
  br label %997

997:                                              ; preds = %996
  br label %998

998:                                              ; preds = %997
  %999 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %999, i32 noundef 1, i32 noundef 1122, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.97)
  br label %1000

1000:                                             ; preds = %998
  br label %1001

1001:                                             ; preds = %1000
  %1002 = load i32, ptr %24, align 4
  %1003 = call i64 @lseek64(i32 noundef %1002, i64 noundef -16, i32 noundef 2) #11
  %1004 = icmp eq i64 %1003, -1
  %1005 = xor i1 %1004, true
  %1006 = xor i1 %1005, true
  %1007 = zext i1 %1006 to i32
  %1008 = sext i32 %1007 to i64
  %1009 = icmp ne i64 %1008, 0
  br i1 %1009, label %1010, label %1014

1010:                                             ; preds = %1001
  br label %1011

1011:                                             ; preds = %1010
  %1012 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %1012, i32 noundef 1124, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.98)
  br label %1086

1013:                                             ; No predecessors!
  br label %1014

1014:                                             ; preds = %1013, %1001
  %1015 = load i32, ptr %24, align 4
  %1016 = getelementptr inbounds [16 x i8], ptr %32, i64 0, i64 0
  %1017 = call i64 @read(i32 noundef %1015, ptr noundef %1016, i64 noundef 16)
  %1018 = icmp ne i64 %1017, 16
  %1019 = xor i1 %1018, true
  %1020 = xor i1 %1019, true
  %1021 = zext i1 %1020 to i32
  %1022 = sext i32 %1021 to i64
  %1023 = icmp ne i64 %1022, 0
  br i1 %1023, label %1024, label %1028

1024:                                             ; preds = %1014
  br label %1025

1025:                                             ; preds = %1024
  %1026 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %1026, i32 noundef 1126, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.99)
  br label %1086

1027:                                             ; No predecessors!
  br label %1028

1028:                                             ; preds = %1027, %1014
  br label %1029

1029:                                             ; preds = %1028
  br label %1030

1030:                                             ; preds = %1029
  %1031 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1031, i32 noundef 1, i32 noundef 1127, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.100)
  br label %1032

1032:                                             ; preds = %1030
  br label %1033

1033:                                             ; preds = %1032
  store i32 0, ptr %33, align 4
  br label %1034

1034:                                             ; preds = %1049, %1033
  %1035 = load i32, ptr %33, align 4
  %1036 = icmp slt i32 %1035, 16
  br i1 %1036, label %1037, label %1052

1037:                                             ; preds = %1034
  br label %1038

1038:                                             ; preds = %1037
  br label %1039

1039:                                             ; preds = %1038
  %1040 = load ptr, ptr %3, align 8
  %1041 = load i32, ptr %33, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = getelementptr inbounds [16 x i8], ptr %32, i64 0, i64 %1042
  %1044 = load i8, ptr %1043, align 1
  %1045 = sext i8 %1044 to i32
  %1046 = and i32 %1045, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1040, i32 noundef 1, i32 noundef 1129, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.101, i32 noundef %1046)
  br label %1047

1047:                                             ; preds = %1039
  br label %1048

1048:                                             ; preds = %1047
  br label %1049

1049:                                             ; preds = %1048
  %1050 = load i32, ptr %33, align 4
  %1051 = add nsw i32 %1050, 1
  store i32 %1051, ptr %33, align 4
  br label %1034, !llvm.loop !19

1052:                                             ; preds = %1034
  br label %1053

1053:                                             ; preds = %1052
  br label %1054

1054:                                             ; preds = %1053
  %1055 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1055, i32 noundef 1, i32 noundef 1130, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.80)
  br label %1056

1056:                                             ; preds = %1054
  br label %1057

1057:                                             ; preds = %1056
  br label %1064

1058:                                             ; preds = %990
  br label %1059

1059:                                             ; preds = %1058
  br label %1060

1060:                                             ; preds = %1059
  %1061 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1061, i32 noundef 1, i32 noundef 1132, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.102)
  br label %1062

1062:                                             ; preds = %1060
  br label %1063

1063:                                             ; preds = %1062
  br label %1064

1064:                                             ; preds = %1063, %1057
  %1065 = load i32, ptr %24, align 4
  %1066 = call i32 @close(i32 noundef %1065)
  %1067 = icmp ne i32 %1066, 0
  %1068 = xor i1 %1067, true
  %1069 = xor i1 %1068, true
  %1070 = zext i1 %1069 to i32
  %1071 = sext i32 %1070 to i64
  %1072 = icmp ne i64 %1071, 0
  br i1 %1072, label %1073, label %1077

1073:                                             ; preds = %1064
  br label %1074

1074:                                             ; preds = %1073
  %1075 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %1075, i32 noundef 1134, ptr noundef @.str.2, ptr noundef @__func__.get_fileinfo, ptr noundef @.str.103)
  store i1 false, ptr %2, align 1
  br label %1096

1076:                                             ; No predecessors!
  br label %1077

1077:                                             ; preds = %1076, %1064
  br label %1078

1078:                                             ; preds = %1077, %166
  br label %1079

1079:                                             ; preds = %1078
  %1080 = load ptr, ptr %3, align 8
  %1081 = getelementptr inbounds %struct.rzip_control, ptr %1080, i32 0, i32 3
  %1082 = load ptr, ptr %1081, align 8
  call void @free(ptr noundef %1082) #11
  %1083 = load ptr, ptr %3, align 8
  %1084 = getelementptr inbounds %struct.rzip_control, ptr %1083, i32 0, i32 3
  store ptr null, ptr %1084, align 8
  br label %1085

1085:                                             ; preds = %1079
  store i1 true, ptr %2, align 1
  br label %1096

1086:                                             ; preds = %1025, %1011, %823, %795, %778, %749, %710, %505, %472, %453, %386, %233, %216, %189, %145, %130
  %1087 = load ptr, ptr %3, align 8
  %1088 = getelementptr inbounds %struct.rzip_control, ptr %1087, i32 0, i32 26
  %1089 = load i64, ptr %1088, align 8
  %1090 = and i64 %1089, 4096
  %1091 = icmp ne i64 %1090, 0
  br i1 %1091, label %1095, label %1092

1092:                                             ; preds = %1086
  %1093 = load i32, ptr %24, align 4
  %1094 = call i32 @close(i32 noundef %1093)
  br label %1095

1095:                                             ; preds = %1092, %1086
  store i1 false, ptr %2, align 1
  br label %1096

1096:                                             ; preds = %1095, %1085, %1074, %487, %401, %115
  %1097 = load i1, ptr %2, align 1
  ret i1 %1097
}

; Function Attrs: nounwind
declare i32 @fstat64(i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal double @percentage(i64 noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  store i64 %0, ptr %3, align 8
  store i64 %1, ptr %4, align 8
  %7 = load i64, ptr %4, align 8
  %8 = icmp slt i64 %7, 100
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load i64, ptr %3, align 8
  %11 = mul nsw i64 %10, 100
  %12 = sitofp i64 %11 to double
  store double %12, ptr %5, align 8
  %13 = load i64, ptr %4, align 8
  %14 = sitofp i64 %13 to double
  store double %14, ptr %6, align 8
  %15 = load double, ptr %6, align 8
  %16 = fcmp une double %15, 0.000000e+00
  br i1 %16, label %18, label %17

17:                                               ; preds = %9
  store double 1.000000e+00, ptr %6, align 8
  br label %18

18:                                               ; preds = %17, %9
  br label %25

19:                                               ; preds = %2
  %20 = load i64, ptr %3, align 8
  %21 = sitofp i64 %20 to double
  store double %21, ptr %5, align 8
  %22 = load i64, ptr %4, align 8
  %23 = sdiv i64 %22, 100
  %24 = sitofp i64 %23 to double
  store double %24, ptr %6, align 8
  br label %25

25:                                               ; preds = %19, %18
  %26 = load double, ptr %5, align 8
  %27 = load double, ptr %6, align 8
  %28 = fdiv double %26, %27
  ret double %28
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @compress_file(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [24 x i8], align 16
  store ptr %0, ptr %3, align 8
  store i32 -1, ptr %6, align 4
  store i32 -1, ptr %7, align 4
  %9 = load ptr, ptr %3, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 26
  %11 = load i64, ptr %10, align 8
  %12 = or i64 %11, 131072
  store i64 %12, ptr %10, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 26
  %15 = load i64, ptr %14, align 8
  %16 = and i64 %15, 8388608
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %1
  %19 = load ptr, ptr %3, align 8
  %20 = call zeroext i1 @get_hash(ptr noundef %19, i32 noundef 1)
  %21 = xor i1 %20, true
  %22 = xor i1 %21, true
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = sext i32 %24 to i64
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  store i1 false, ptr %2, align 1
  br label %558

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %1
  %30 = getelementptr inbounds [24 x i8], ptr %8, i64 0, i64 0
  call void @llvm.memset.p0.i64(ptr align 16 %30, i8 0, i64 24, i1 false)
  %31 = load ptr, ptr %3, align 8
  %32 = getelementptr inbounds %struct.rzip_control, ptr %31, i32 0, i32 26
  %33 = load i64, ptr %32, align 8
  %34 = and i64 %33, 4096
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %79, label %36

36:                                               ; preds = %29
  %37 = load ptr, ptr %3, align 8
  %38 = getelementptr inbounds %struct.rzip_control, ptr %37, i32 0, i32 0
  %39 = load ptr, ptr %38, align 8
  %40 = call ptr @strrchr(ptr noundef %39, i32 noundef 46) #12
  store ptr %40, ptr %4, align 8
  %41 = icmp ne ptr %40, null
  br i1 %41, label %42, label %59

42:                                               ; preds = %36
  %43 = load ptr, ptr %4, align 8
  %44 = load ptr, ptr %3, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 19
  %46 = load ptr, ptr %45, align 8
  %47 = call i32 @strcmp(ptr noundef %43, ptr noundef %46) #12
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49
  %51 = load ptr, ptr %3, align 8
  %52 = load ptr, ptr %3, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 0
  %54 = load ptr, ptr %53, align 8
  %55 = load ptr, ptr %3, align 8
  %56 = getelementptr inbounds %struct.rzip_control, ptr %55, i32 0, i32 19
  %57 = load ptr, ptr %56, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %51, i32 noundef 1165, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.104, ptr noundef %54, ptr noundef %57)
  br label %58

58:                                               ; preds = %50
  store i1 false, ptr %2, align 1
  br label %558

59:                                               ; preds = %42, %36
  %60 = load ptr, ptr %3, align 8
  %61 = getelementptr inbounds %struct.rzip_control, ptr %60, i32 0, i32 0
  %62 = load ptr, ptr %61, align 8
  %63 = call i32 (ptr, i32, ...) @open64(ptr noundef %62, i32 noundef 0)
  store i32 %63, ptr %6, align 4
  %64 = load i32, ptr %6, align 4
  %65 = icmp eq i32 %64, -1
  %66 = xor i1 %65, true
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = sext i32 %68 to i64
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %59
  br label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %3, align 8
  %74 = load ptr, ptr %3, align 8
  %75 = getelementptr inbounds %struct.rzip_control, ptr %74, i32 0, i32 0
  %76 = load ptr, ptr %75, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %73, i32 noundef 1171, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.35, ptr noundef %76)
  store i1 false, ptr %2, align 1
  br label %558

77:                                               ; No predecessors!
  br label %78

78:                                               ; preds = %77, %59
  br label %80

79:                                               ; preds = %29
  store i32 0, ptr %6, align 4
  br label %80

80:                                               ; preds = %79, %78
  %81 = load ptr, ptr %3, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 8192
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %367, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.rzip_control, ptr %87, i32 0, i32 2
  %89 = load ptr, ptr %88, align 8
  %90 = icmp ne ptr %89, null
  br i1 %90, label %91, label %181

91:                                               ; preds = %86
  %92 = load ptr, ptr %3, align 8
  %93 = getelementptr inbounds %struct.rzip_control, ptr %92, i32 0, i32 19
  %94 = load ptr, ptr %93, align 8
  %95 = load i8, ptr %94, align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %91
  %99 = load ptr, ptr %3, align 8
  %100 = getelementptr inbounds %struct.rzip_control, ptr %99, i32 0, i32 2
  %101 = load ptr, ptr %100, align 8
  %102 = call noalias ptr @strdup(ptr noundef %101) #11
  %103 = load ptr, ptr %3, align 8
  %104 = getelementptr inbounds %struct.rzip_control, ptr %103, i32 0, i32 3
  store ptr %102, ptr %104, align 8
  br label %180

105:                                              ; preds = %91
  %106 = load ptr, ptr %3, align 8
  %107 = getelementptr inbounds %struct.rzip_control, ptr %106, i32 0, i32 2
  %108 = load ptr, ptr %107, align 8
  %109 = call ptr @strrchr(ptr noundef %108, i32 noundef 46) #12
  store ptr %109, ptr %4, align 8
  %110 = icmp ne ptr %109, null
  br i1 %110, label %111, label %172

111:                                              ; preds = %105
  %112 = load ptr, ptr %4, align 8
  %113 = load ptr, ptr %3, align 8
  %114 = getelementptr inbounds %struct.rzip_control, ptr %113, i32 0, i32 19
  %115 = load ptr, ptr %114, align 8
  %116 = call i32 @strcmp(ptr noundef %112, ptr noundef %115) #12
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %172

118:                                              ; preds = %111
  %119 = load ptr, ptr %3, align 8
  %120 = getelementptr inbounds %struct.rzip_control, ptr %119, i32 0, i32 2
  %121 = load ptr, ptr %120, align 8
  %122 = call i64 @strlen(ptr noundef %121) #12
  %123 = load ptr, ptr %3, align 8
  %124 = getelementptr inbounds %struct.rzip_control, ptr %123, i32 0, i32 19
  %125 = load ptr, ptr %124, align 8
  %126 = call i64 @strlen(ptr noundef %125) #12
  %127 = add i64 %122, %126
  %128 = add i64 %127, 1
  %129 = call noalias ptr @malloc(i64 noundef %128) #15
  %130 = load ptr, ptr %3, align 8
  %131 = getelementptr inbounds %struct.rzip_control, ptr %130, i32 0, i32 3
  store ptr %129, ptr %131, align 8
  %132 = load ptr, ptr %3, align 8
  %133 = getelementptr inbounds %struct.rzip_control, ptr %132, i32 0, i32 3
  %134 = load ptr, ptr %133, align 8
  %135 = icmp ne ptr %134, null
  %136 = xor i1 %135, true
  %137 = xor i1 %136, true
  %138 = xor i1 %137, true
  %139 = zext i1 %138 to i32
  %140 = sext i32 %139 to i64
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %118
  br label %143

143:                                              ; preds = %142
  %144 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %144, i32 noundef 1183, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.11)
  br label %533

145:                                              ; No predecessors!
  br label %146

146:                                              ; preds = %145, %118
  %147 = load ptr, ptr %3, align 8
  %148 = getelementptr inbounds %struct.rzip_control, ptr %147, i32 0, i32 3
  %149 = load ptr, ptr %148, align 8
  %150 = load ptr, ptr %3, align 8
  %151 = getelementptr inbounds %struct.rzip_control, ptr %150, i32 0, i32 2
  %152 = load ptr, ptr %151, align 8
  %153 = call ptr @strcpy(ptr noundef %149, ptr noundef %152) #11
  %154 = load ptr, ptr %3, align 8
  %155 = getelementptr inbounds %struct.rzip_control, ptr %154, i32 0, i32 3
  %156 = load ptr, ptr %155, align 8
  %157 = load ptr, ptr %3, align 8
  %158 = getelementptr inbounds %struct.rzip_control, ptr %157, i32 0, i32 19
  %159 = load ptr, ptr %158, align 8
  %160 = call ptr @strcat(ptr noundef %156, ptr noundef %159) #11
  br label %161

161:                                              ; preds = %146
  br label %162

162:                                              ; preds = %161
  %163 = load ptr, ptr %3, align 8
  %164 = load ptr, ptr %3, align 8
  %165 = getelementptr inbounds %struct.rzip_control, ptr %164, i32 0, i32 2
  %166 = load ptr, ptr %165, align 8
  %167 = load ptr, ptr %3, align 8
  %168 = getelementptr inbounds %struct.rzip_control, ptr %167, i32 0, i32 3
  %169 = load ptr, ptr %168, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %163, i32 noundef 1, i32 noundef 1186, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.105, ptr noundef %166, ptr noundef %169)
  br label %170

170:                                              ; preds = %162
  br label %171

171:                                              ; preds = %170
  br label %179

172:                                              ; preds = %111, %105
  %173 = load ptr, ptr %3, align 8
  %174 = getelementptr inbounds %struct.rzip_control, ptr %173, i32 0, i32 2
  %175 = load ptr, ptr %174, align 8
  %176 = call noalias ptr @strdup(ptr noundef %175) #11
  %177 = load ptr, ptr %3, align 8
  %178 = getelementptr inbounds %struct.rzip_control, ptr %177, i32 0, i32 3
  store ptr %176, ptr %178, align 8
  br label %179

179:                                              ; preds = %172, %171
  br label %180

180:                                              ; preds = %179, %98
  br label %285

181:                                              ; preds = %86
  %182 = load ptr, ptr %3, align 8
  %183 = getelementptr inbounds %struct.rzip_control, ptr %182, i32 0, i32 5
  %184 = load ptr, ptr %183, align 8
  %185 = icmp ne ptr %184, null
  br i1 %185, label %186, label %195

186:                                              ; preds = %181
  %187 = load ptr, ptr %3, align 8
  %188 = getelementptr inbounds %struct.rzip_control, ptr %187, i32 0, i32 0
  %189 = load ptr, ptr %188, align 8
  %190 = call ptr @strrchr(ptr noundef %189, i32 noundef 47) #12
  store ptr %190, ptr %4, align 8
  %191 = icmp ne ptr %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %186
  %193 = load ptr, ptr %4, align 8
  %194 = getelementptr inbounds i8, ptr %193, i64 1
  store ptr %194, ptr %5, align 8
  br label %199

195:                                              ; preds = %186, %181
  %196 = load ptr, ptr %3, align 8
  %197 = getelementptr inbounds %struct.rzip_control, ptr %196, i32 0, i32 0
  %198 = load ptr, ptr %197, align 8
  store ptr %198, ptr %5, align 8
  br label %199

199:                                              ; preds = %195, %192
  %200 = load ptr, ptr %3, align 8
  %201 = getelementptr inbounds %struct.rzip_control, ptr %200, i32 0, i32 5
  %202 = load ptr, ptr %201, align 8
  %203 = icmp eq ptr %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %199
  br label %210

205:                                              ; preds = %199
  %206 = load ptr, ptr %3, align 8
  %207 = getelementptr inbounds %struct.rzip_control, ptr %206, i32 0, i32 5
  %208 = load ptr, ptr %207, align 8
  %209 = call i64 @strlen(ptr noundef %208) #12
  br label %210

210:                                              ; preds = %205, %204
  %211 = phi i64 [ 0, %204 ], [ %209, %205 ]
  %212 = load ptr, ptr %5, align 8
  %213 = call i64 @strlen(ptr noundef %212) #12
  %214 = add i64 %211, %213
  %215 = load ptr, ptr %3, align 8
  %216 = getelementptr inbounds %struct.rzip_control, ptr %215, i32 0, i32 19
  %217 = load ptr, ptr %216, align 8
  %218 = call i64 @strlen(ptr noundef %217) #12
  %219 = add i64 %214, %218
  %220 = add i64 %219, 1
  %221 = call noalias ptr @malloc(i64 noundef %220) #15
  %222 = load ptr, ptr %3, align 8
  %223 = getelementptr inbounds %struct.rzip_control, ptr %222, i32 0, i32 3
  store ptr %221, ptr %223, align 8
  %224 = load ptr, ptr %3, align 8
  %225 = getelementptr inbounds %struct.rzip_control, ptr %224, i32 0, i32 3
  %226 = load ptr, ptr %225, align 8
  %227 = icmp ne ptr %226, null
  %228 = xor i1 %227, true
  %229 = xor i1 %228, true
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = sext i32 %231 to i64
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %210
  br label %235

235:                                              ; preds = %234
  %236 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %236, i32 noundef 1201, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.11)
  br label %533

237:                                              ; No predecessors!
  br label %238

238:                                              ; preds = %237, %210
  %239 = load ptr, ptr %3, align 8
  %240 = getelementptr inbounds %struct.rzip_control, ptr %239, i32 0, i32 5
  %241 = load ptr, ptr %240, align 8
  %242 = icmp ne ptr %241, null
  br i1 %242, label %243, label %256

243:                                              ; preds = %238
  %244 = load ptr, ptr %3, align 8
  %245 = getelementptr inbounds %struct.rzip_control, ptr %244, i32 0, i32 3
  %246 = load ptr, ptr %245, align 8
  %247 = load ptr, ptr %3, align 8
  %248 = getelementptr inbounds %struct.rzip_control, ptr %247, i32 0, i32 5
  %249 = load ptr, ptr %248, align 8
  %250 = call ptr @strcpy(ptr noundef %246, ptr noundef %249) #11
  %251 = load ptr, ptr %3, align 8
  %252 = getelementptr inbounds %struct.rzip_control, ptr %251, i32 0, i32 3
  %253 = load ptr, ptr %252, align 8
  %254 = load ptr, ptr %5, align 8
  %255 = call ptr @strcat(ptr noundef %253, ptr noundef %254) #11
  br label %262

256:                                              ; preds = %238
  %257 = load ptr, ptr %3, align 8
  %258 = getelementptr inbounds %struct.rzip_control, ptr %257, i32 0, i32 3
  %259 = load ptr, ptr %258, align 8
  %260 = load ptr, ptr %5, align 8
  %261 = call ptr @strcpy(ptr noundef %259, ptr noundef %260) #11
  br label %262

262:                                              ; preds = %256, %243
  %263 = load ptr, ptr %3, align 8
  %264 = getelementptr inbounds %struct.rzip_control, ptr %263, i32 0, i32 3
  %265 = load ptr, ptr %264, align 8
  %266 = load ptr, ptr %3, align 8
  %267 = getelementptr inbounds %struct.rzip_control, ptr %266, i32 0, i32 19
  %268 = load ptr, ptr %267, align 8
  %269 = call ptr @strcat(ptr noundef %265, ptr noundef %268) #11
  br label %270

270:                                              ; preds = %262
  %271 = load ptr, ptr %3, align 8
  %272 = getelementptr inbounds %struct.rzip_control, ptr %271, i32 0, i32 26
  %273 = load i64, ptr %272, align 8
  %274 = and i64 %273, 1
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %283

276:                                              ; preds = %270
  br label %277

277:                                              ; preds = %276
  %278 = load ptr, ptr %3, align 8
  %279 = load ptr, ptr %3, align 8
  %280 = getelementptr inbounds %struct.rzip_control, ptr %279, i32 0, i32 3
  %281 = load ptr, ptr %280, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %278, i32 noundef 2, i32 noundef 1209, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.33, ptr noundef %281)
  br label %282

282:                                              ; preds = %277
  br label %283

283:                                              ; preds = %282, %270
  br label %284

284:                                              ; preds = %283
  br label %285

285:                                              ; preds = %284, %180
  %286 = load ptr, ptr %3, align 8
  %287 = getelementptr inbounds %struct.rzip_control, ptr %286, i32 0, i32 3
  %288 = load ptr, ptr %287, align 8
  %289 = call i32 (ptr, i32, ...) @open64(ptr noundef %288, i32 noundef 194, i32 noundef 438)
  store i32 %289, ptr %7, align 4
  %290 = load ptr, ptr %3, align 8
  %291 = getelementptr inbounds %struct.rzip_control, ptr %290, i32 0, i32 26
  %292 = load i64, ptr %291, align 8
  %293 = and i64 %292, 8
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %325

295:                                              ; preds = %285
  %296 = load i32, ptr %7, align 4
  %297 = icmp eq i32 -1, %296
  br i1 %297, label %298, label %325

298:                                              ; preds = %295
  %299 = call ptr @__errno_location() #13
  %300 = load i32, ptr %299, align 4
  %301 = icmp eq i32 17, %300
  br i1 %301, label %302, label %325

302:                                              ; preds = %298
  %303 = load ptr, ptr %3, align 8
  %304 = getelementptr inbounds %struct.rzip_control, ptr %303, i32 0, i32 3
  %305 = load ptr, ptr %304, align 8
  %306 = call i32 @unlink(ptr noundef %305) #11
  %307 = icmp ne i32 %306, 0
  %308 = xor i1 %307, true
  %309 = xor i1 %308, true
  %310 = zext i1 %309 to i32
  %311 = sext i32 %310 to i64
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %320

313:                                              ; preds = %302
  br label %314

314:                                              ; preds = %313
  %315 = load ptr, ptr %3, align 8
  %316 = load ptr, ptr %3, align 8
  %317 = getelementptr inbounds %struct.rzip_control, ptr %316, i32 0, i32 3
  %318 = load ptr, ptr %317, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %315, i32 noundef 1215, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.36, ptr noundef %318)
  br label %533

319:                                              ; No predecessors!
  br label %320

320:                                              ; preds = %319, %302
  %321 = load ptr, ptr %3, align 8
  %322 = getelementptr inbounds %struct.rzip_control, ptr %321, i32 0, i32 3
  %323 = load ptr, ptr %322, align 8
  %324 = call i32 (ptr, i32, ...) @open64(ptr noundef %323, i32 noundef 194, i32 noundef 438)
  store i32 %324, ptr %7, align 4
  br label %325

325:                                              ; preds = %320, %298, %295, %285
  %326 = load i32, ptr %7, align 4
  %327 = icmp eq i32 %326, -1
  %328 = xor i1 %327, true
  %329 = xor i1 %328, true
  %330 = zext i1 %329 to i32
  %331 = sext i32 %330 to i64
  %332 = icmp ne i64 %331, 0
  br i1 %332, label %333, label %344

333:                                              ; preds = %325
  %334 = load ptr, ptr %3, align 8
  %335 = getelementptr inbounds %struct.rzip_control, ptr %334, i32 0, i32 26
  %336 = load i64, ptr %335, align 8
  %337 = or i64 %336, 524288
  store i64 %337, ptr %335, align 8
  br label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %3, align 8
  %340 = load ptr, ptr %3, align 8
  %341 = getelementptr inbounds %struct.rzip_control, ptr %340, i32 0, i32 3
  %342 = load ptr, ptr %341, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %339, i32 noundef 1222, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.37, ptr noundef %342)
  br label %533

343:                                              ; No predecessors!
  br label %344

344:                                              ; preds = %343, %325
  %345 = load i32, ptr %7, align 4
  %346 = load ptr, ptr %3, align 8
  %347 = getelementptr inbounds %struct.rzip_control, ptr %346, i32 0, i32 37
  store i32 %345, ptr %347, align 4
  %348 = load ptr, ptr %3, align 8
  %349 = getelementptr inbounds %struct.rzip_control, ptr %348, i32 0, i32 26
  %350 = load i64, ptr %349, align 8
  %351 = and i64 %350, 4096
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %366, label %353

353:                                              ; preds = %344
  %354 = load ptr, ptr %3, align 8
  %355 = load i32, ptr %6, align 4
  %356 = load i32, ptr %7, align 4
  %357 = call zeroext i1 @preserve_perms(ptr noundef %354, i32 noundef %355, i32 noundef %356)
  %358 = xor i1 %357, true
  %359 = xor i1 %358, true
  %360 = xor i1 %359, true
  %361 = zext i1 %360 to i32
  %362 = sext i32 %361 to i64
  %363 = icmp ne i64 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %353
  br label %533

365:                                              ; preds = %353
  br label %366

366:                                              ; preds = %365, %344
  br label %378

367:                                              ; preds = %80
  %368 = load ptr, ptr %3, align 8
  %369 = call zeroext i1 @open_tmpoutbuf(ptr noundef %368)
  %370 = xor i1 %369, true
  %371 = xor i1 %370, true
  %372 = xor i1 %371, true
  %373 = zext i1 %372 to i32
  %374 = sext i32 %373 to i64
  %375 = icmp ne i64 %374, 0
  br i1 %375, label %376, label %377

376:                                              ; preds = %367
  br label %533

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %366
  %379 = load ptr, ptr %3, align 8
  %380 = getelementptr inbounds %struct.rzip_control, ptr %379, i32 0, i32 26
  %381 = load i64, ptr %380, align 8
  %382 = and i64 %381, 8192
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %389, label %384

384:                                              ; preds = %378
  %385 = load i32, ptr %7, align 4
  %386 = getelementptr inbounds [24 x i8], ptr %8, i64 0, i64 0
  %387 = call i64 @write(i32 noundef %385, ptr noundef %386, i64 noundef 24)
  %388 = icmp ne i64 %387, 24
  br label %389

389:                                              ; preds = %384, %378
  %390 = phi i1 [ false, %378 ], [ %388, %384 ]
  %391 = xor i1 %390, true
  %392 = xor i1 %391, true
  %393 = zext i1 %392 to i32
  %394 = sext i32 %393 to i64
  %395 = icmp ne i64 %394, 0
  br i1 %395, label %396, label %400

396:                                              ; preds = %389
  br label %397

397:                                              ; preds = %396
  %398 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %398, i32 noundef 1236, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.106)
  br label %533

399:                                              ; No predecessors!
  br label %400

400:                                              ; preds = %399, %389
  %401 = load ptr, ptr %3, align 8
  %402 = load i32, ptr %6, align 4
  %403 = load i32, ptr %7, align 4
  call void @rzip_fd(ptr noundef %401, i32 noundef %402, i32 noundef %403)
  %404 = load ptr, ptr %3, align 8
  %405 = getelementptr inbounds %struct.rzip_control, ptr %404, i32 0, i32 26
  %406 = load i64, ptr %405, align 8
  %407 = and i64 %406, 8192
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %420, label %409

409:                                              ; preds = %400
  %410 = load ptr, ptr %3, align 8
  %411 = call zeroext i1 @write_magic(ptr noundef %410)
  %412 = xor i1 %411, true
  %413 = xor i1 %412, true
  %414 = xor i1 %413, true
  %415 = zext i1 %414 to i32
  %416 = sext i32 %415 to i64
  %417 = icmp ne i64 %416, 0
  br i1 %417, label %418, label %419

418:                                              ; preds = %409
  br label %533

419:                                              ; preds = %409
  br label %420

420:                                              ; preds = %419, %400
  %421 = load ptr, ptr %3, align 8
  %422 = getelementptr inbounds %struct.rzip_control, ptr %421, i32 0, i32 26
  %423 = load i64, ptr %422, align 8
  %424 = and i64 %423, 8388608
  %425 = icmp ne i64 %424, 0
  br i1 %425, label %426, label %428

426:                                              ; preds = %420
  %427 = load ptr, ptr %3, align 8
  call void @release_hashes(ptr noundef %427)
  br label %428

428:                                              ; preds = %426, %420
  %429 = load ptr, ptr %3, align 8
  %430 = getelementptr inbounds %struct.rzip_control, ptr %429, i32 0, i32 26
  %431 = load i64, ptr %430, align 8
  %432 = and i64 %431, 4096
  %433 = icmp ne i64 %432, 0
  br i1 %433, label %445, label %434

434:                                              ; preds = %428
  %435 = load ptr, ptr %3, align 8
  %436 = getelementptr inbounds %struct.rzip_control, ptr %435, i32 0, i32 26
  %437 = load i64, ptr %436, align 8
  %438 = and i64 %437, 8192
  %439 = icmp ne i64 %438, 0
  br i1 %439, label %445, label %440

440:                                              ; preds = %434
  %441 = load ptr, ptr %3, align 8
  %442 = load i32, ptr %6, align 4
  %443 = call zeroext i1 @preserve_times(ptr noundef %441, i32 noundef %442)
  %444 = xor i1 %443, true
  br label %445

445:                                              ; preds = %440, %434, %428
  %446 = phi i1 [ false, %434 ], [ false, %428 ], [ %444, %440 ]
  %447 = xor i1 %446, true
  %448 = xor i1 %447, true
  %449 = zext i1 %448 to i32
  %450 = sext i32 %449 to i64
  %451 = icmp ne i64 %450, 0
  br i1 %451, label %452, label %454

452:                                              ; preds = %445
  %453 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %453, i32 noundef 1250, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.107)
  br label %533

454:                                              ; preds = %445
  %455 = load i32, ptr %6, align 4
  %456 = call i32 @close(i32 noundef %455)
  %457 = icmp ne i32 %456, 0
  %458 = xor i1 %457, true
  %459 = xor i1 %458, true
  %460 = zext i1 %459 to i32
  %461 = sext i32 %460 to i64
  %462 = icmp ne i64 %461, 0
  br i1 %462, label %463, label %465

463:                                              ; preds = %454
  %464 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %464, i32 noundef 1255, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.108)
  store i32 -1, ptr %6, align 4
  br label %533

465:                                              ; preds = %454
  %466 = load ptr, ptr %3, align 8
  %467 = getelementptr inbounds %struct.rzip_control, ptr %466, i32 0, i32 26
  %468 = load i64, ptr %467, align 8
  %469 = and i64 %468, 8192
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %475, label %471

471:                                              ; preds = %465
  %472 = load i32, ptr %7, align 4
  %473 = call i32 @close(i32 noundef %472)
  %474 = icmp ne i32 %473, 0
  br label %475

475:                                              ; preds = %471, %465
  %476 = phi i1 [ false, %465 ], [ %474, %471 ]
  %477 = xor i1 %476, true
  %478 = xor i1 %477, true
  %479 = zext i1 %478 to i32
  %480 = sext i32 %479 to i64
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %486

482:                                              ; preds = %475
  br label %483

483:                                              ; preds = %482
  %484 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %484, i32 noundef 1260, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.109)
  store i1 false, ptr %2, align 1
  br label %558

485:                                              ; No predecessors!
  br label %486

486:                                              ; preds = %485, %475
  %487 = load ptr, ptr %3, align 8
  %488 = getelementptr inbounds %struct.rzip_control, ptr %487, i32 0, i32 26
  %489 = load i64, ptr %488, align 8
  %490 = and i64 %489, 2097152
  %491 = icmp ne i64 %490, 0
  br i1 %491, label %492, label %494

492:                                              ; preds = %486
  %493 = load ptr, ptr %3, align 8
  call void @close_tmpoutbuf(ptr noundef %493)
  br label %494

494:                                              ; preds = %492, %486
  %495 = load ptr, ptr %3, align 8
  %496 = getelementptr inbounds %struct.rzip_control, ptr %495, i32 0, i32 26
  %497 = load i64, ptr %496, align 8
  %498 = and i64 %497, 2
  %499 = icmp ne i64 %498, 0
  br i1 %499, label %525, label %500

500:                                              ; preds = %494
  %501 = load ptr, ptr %3, align 8
  %502 = getelementptr inbounds %struct.rzip_control, ptr %501, i32 0, i32 26
  %503 = load i64, ptr %502, align 8
  %504 = and i64 %503, 4096
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %525, label %506

506:                                              ; preds = %500
  %507 = load ptr, ptr %3, align 8
  %508 = getelementptr inbounds %struct.rzip_control, ptr %507, i32 0, i32 0
  %509 = load ptr, ptr %508, align 8
  %510 = call i32 @unlink(ptr noundef %509) #11
  %511 = icmp ne i32 %510, 0
  %512 = xor i1 %511, true
  %513 = xor i1 %512, true
  %514 = zext i1 %513 to i32
  %515 = sext i32 %514 to i64
  %516 = icmp ne i64 %515, 0
  br i1 %516, label %517, label %524

517:                                              ; preds = %506
  br label %518

518:                                              ; preds = %517
  %519 = load ptr, ptr %3, align 8
  %520 = load ptr, ptr %3, align 8
  %521 = getelementptr inbounds %struct.rzip_control, ptr %520, i32 0, i32 0
  %522 = load ptr, ptr %521, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %519, i32 noundef 1266, ptr noundef @.str.2, ptr noundef @__func__.compress_file, ptr noundef @.str.52, ptr noundef %522)
  store i1 false, ptr %2, align 1
  br label %558

523:                                              ; No predecessors!
  br label %524

524:                                              ; preds = %523, %506
  br label %525

525:                                              ; preds = %524, %500, %494
  br label %526

526:                                              ; preds = %525
  %527 = load ptr, ptr %3, align 8
  %528 = getelementptr inbounds %struct.rzip_control, ptr %527, i32 0, i32 3
  %529 = load ptr, ptr %528, align 8
  call void @free(ptr noundef %529) #11
  %530 = load ptr, ptr %3, align 8
  %531 = getelementptr inbounds %struct.rzip_control, ptr %530, i32 0, i32 3
  store ptr null, ptr %531, align 8
  br label %532

532:                                              ; preds = %526
  store i1 true, ptr %2, align 1
  br label %558

533:                                              ; preds = %463, %452, %418, %397, %376, %364, %338, %314, %235, %143
  %534 = load ptr, ptr %3, align 8
  %535 = getelementptr inbounds %struct.rzip_control, ptr %534, i32 0, i32 26
  %536 = load i64, ptr %535, align 8
  %537 = and i64 %536, 4096
  %538 = icmp ne i64 %537, 0
  br i1 %538, label %539, label %545

539:                                              ; preds = %533
  %540 = load i32, ptr %6, align 4
  %541 = icmp sgt i32 %540, 0
  br i1 %541, label %542, label %545

542:                                              ; preds = %539
  %543 = load i32, ptr %6, align 4
  %544 = call i32 @close(i32 noundef %543)
  br label %545

545:                                              ; preds = %542, %539, %533
  %546 = load ptr, ptr %3, align 8
  %547 = getelementptr inbounds %struct.rzip_control, ptr %546, i32 0, i32 26
  %548 = load i64, ptr %547, align 8
  %549 = and i64 %548, 8192
  %550 = icmp ne i64 %549, 0
  br i1 %550, label %557, label %551

551:                                              ; preds = %545
  %552 = load i32, ptr %7, align 4
  %553 = icmp sgt i32 %552, 0
  br i1 %553, label %554, label %557

554:                                              ; preds = %551
  %555 = load i32, ptr %7, align 4
  %556 = call i32 @close(i32 noundef %555)
  br label %557

557:                                              ; preds = %554, %551, %545
  store i1 false, ptr %2, align 1
  br label %558

558:                                              ; preds = %557, %532, %518, %483, %72, %58, %27
  %559 = load i1, ptr %2, align 1
  ret i1 %559
}

declare void @rzip_fd(ptr noundef, i32 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local zeroext i1 @initialise_control(ptr noundef %0) #0 {
  %2 = alloca i1, align 1
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  %8 = load ptr, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 8 %8, i8 0, i64 864, i1 false)
  %9 = load ptr, ptr @stderr, align 8
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 17
  store ptr %9, ptr %11, align 8
  %12 = load ptr, ptr @stderr, align 8
  %13 = load ptr, ptr %3, align 8
  %14 = getelementptr inbounds %struct.rzip_control, ptr %13, i32 0, i32 18
  store ptr %12, ptr %14, align 8
  %15 = load ptr, ptr %3, align 8
  %16 = load ptr, ptr %3, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 17
  %18 = load ptr, ptr %17, align 8
  call void @register_outputfile(ptr noundef %15, ptr noundef %18)
  %19 = load ptr, ptr %3, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 26
  store i64 1048579, ptr %20, align 8
  %21 = call noalias ptr @strdup(ptr noundef @.str.110) #11
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 19
  store ptr %21, ptr %23, align 8
  %24 = load ptr, ptr %3, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 20
  store i8 7, ptr %25, align 8
  %26 = load ptr, ptr %3, align 8
  %27 = call i64 @get_ram(ptr noundef %26)
  %28 = load ptr, ptr %3, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 27
  store i64 %27, ptr %29, align 8
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 27
  %32 = load i64, ptr %31, align 8
  %33 = icmp eq i64 %32, -1
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = sext i32 %36 to i64
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %1
  store i1 false, ptr %2, align 1
  br label %184

40:                                               ; preds = %1
  %41 = call i64 @sysconf(i32 noundef 84) #11
  %42 = trunc i64 %41 to i32
  %43 = load ptr, ptr %3, align 8
  %44 = getelementptr inbounds %struct.rzip_control, ptr %43, i32 0, i32 30
  store i32 %42, ptr %44, align 8
  %45 = call i64 @sysconf(i32 noundef 30) #11
  %46 = load ptr, ptr %3, align 8
  %47 = getelementptr inbounds %struct.rzip_control, ptr %46, i32 0, i32 35
  store i64 %45, ptr %47, align 8
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 31
  store i8 19, ptr %49, align 4
  %50 = call i64 @time(ptr noundef null) #11
  store i64 %50, ptr %4, align 8
  %51 = icmp eq i64 %50, -1
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %40
  br label %58

58:                                               ; preds = %57
  %59 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %59, i32 noundef 1303, ptr noundef @.str.2, ptr noundef @__func__.initialise_control, ptr noundef @.str.111)
  store i1 false, ptr %2, align 1
  br label %184

60:                                               ; No predecessors!
  br label %61

61:                                               ; preds = %60, %40
  %62 = load i64, ptr %4, align 8
  %63 = icmp slt i64 %62, 1293840000
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr %3, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %72, i32 noundef 1, i32 noundef 1305, ptr noundef @.str.2, ptr noundef @__func__.initialise_control, ptr noundef @.str.112)
  br label %73

73:                                               ; preds = %71
  br label %74

74:                                               ; preds = %73
  store i64 1293840000, ptr %4, align 8
  br label %75

75:                                               ; preds = %74, %61
  %76 = load i64, ptr %4, align 8
  %77 = sub nsw i64 %76, 1293840000
  %78 = sdiv i64 %77, 4
  store i64 %78, ptr %5, align 8
  %79 = load i64, ptr %5, align 8
  %80 = add nsw i64 1293840000, %79
  store i64 %80, ptr %4, align 8
  %81 = load i64, ptr %4, align 8
  %82 = load ptr, ptr %3, align 8
  %83 = getelementptr inbounds %struct.rzip_control, ptr %82, i32 0, i32 40
  store i64 %81, ptr %83, align 8
  %84 = load ptr, ptr %3, align 8
  %85 = getelementptr inbounds %struct.rzip_control, ptr %84, i32 0, i32 40
  %86 = load i64, ptr %85, align 8
  %87 = load ptr, ptr %3, align 8
  %88 = getelementptr inbounds %struct.rzip_control, ptr %87, i32 0, i32 43
  %89 = getelementptr inbounds [8 x i8], ptr %88, i64 0, i64 0
  %90 = load ptr, ptr %3, align 8
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i32 0, i32 43
  %92 = getelementptr inbounds [8 x i8], ptr %91, i64 0, i64 0
  %93 = getelementptr inbounds i8, ptr %92, i64 1
  %94 = call i64 @nloops(i64 noundef %86, ptr noundef %89, ptr noundef %93)
  %95 = load ptr, ptr %3, align 8
  %96 = getelementptr inbounds %struct.rzip_control, ptr %95, i32 0, i32 39
  store i64 %94, ptr %96, align 8
  %97 = load ptr, ptr %3, align 8
  %98 = load ptr, ptr %3, align 8
  %99 = getelementptr inbounds %struct.rzip_control, ptr %98, i32 0, i32 43
  %100 = getelementptr inbounds [8 x i8], ptr %99, i64 0, i64 0
  %101 = getelementptr inbounds i8, ptr %100, i64 2
  %102 = call zeroext i1 @get_rand(ptr noundef %97, ptr noundef %101, i32 noundef 6)
  %103 = xor i1 %102, true
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  %107 = sext i32 %106 to i64
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %75
  store i1 false, ptr %2, align 1
  br label %184

110:                                              ; preds = %75
  %111 = call ptr @getenv(ptr noundef @.str.113) #11
  store ptr %111, ptr %6, align 8
  %112 = load ptr, ptr %6, align 8
  %113 = icmp ne ptr %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %110
  %115 = call ptr @getenv(ptr noundef @.str.114) #11
  store ptr %115, ptr %6, align 8
  br label %116

116:                                              ; preds = %114, %110
  %117 = load ptr, ptr %6, align 8
  %118 = icmp ne ptr %117, null
  br i1 %118, label %121, label %119

119:                                              ; preds = %116
  %120 = call ptr @getenv(ptr noundef @.str.115) #11
  store ptr %120, ptr %6, align 8
  br label %121

121:                                              ; preds = %119, %116
  %122 = load ptr, ptr %6, align 8
  %123 = icmp ne ptr %122, null
  br i1 %123, label %126, label %124

124:                                              ; preds = %121
  %125 = call ptr @getenv(ptr noundef @.str.116) #11
  store ptr %125, ptr %6, align 8
  br label %126

126:                                              ; preds = %124, %121
  %127 = load ptr, ptr %6, align 8
  %128 = icmp ne ptr %127, null
  br i1 %128, label %140, label %129

129:                                              ; preds = %126
  %130 = call noalias ptr @malloc(i64 noundef 3) #15
  store ptr %130, ptr %6, align 8
  %131 = load ptr, ptr %6, align 8
  %132 = icmp eq ptr %131, null
  br i1 %132, label %133, label %137

133:                                              ; preds = %129
  br label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %135, i32 noundef 1328, ptr noundef @.str.2, ptr noundef @__func__.initialise_control, ptr noundef @.str.117)
  store i1 false, ptr %2, align 1
  br label %184

136:                                              ; No predecessors!
  br label %137

137:                                              ; preds = %136, %129
  %138 = load ptr, ptr %6, align 8
  %139 = call ptr @strcpy(ptr noundef %138, ptr noundef @.str.118) #11
  br label %140

140:                                              ; preds = %137, %126
  %141 = load ptr, ptr %6, align 8
  %142 = call i64 @strlen(ptr noundef %141) #12
  store i64 %142, ptr %7, align 8
  %143 = load i64, ptr %7, align 8
  %144 = add i64 %143, 2
  %145 = call noalias ptr @malloc(i64 noundef %144) #15
  %146 = load ptr, ptr %3, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 6
  store ptr %145, ptr %147, align 8
  %148 = load ptr, ptr %3, align 8
  %149 = getelementptr inbounds %struct.rzip_control, ptr %148, i32 0, i32 6
  %150 = load ptr, ptr %149, align 8
  %151 = icmp eq ptr %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152
  %154 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %154, i32 noundef 1335, ptr noundef @.str.2, ptr noundef @__func__.initialise_control, ptr noundef @.str.119)
  store i1 false, ptr %2, align 1
  br label %184

155:                                              ; No predecessors!
  br label %156

156:                                              ; preds = %155, %140
  %157 = load ptr, ptr %3, align 8
  %158 = getelementptr inbounds %struct.rzip_control, ptr %157, i32 0, i32 6
  %159 = load ptr, ptr %158, align 8
  %160 = load ptr, ptr %6, align 8
  %161 = call ptr @strcpy(ptr noundef %159, ptr noundef %160) #11
  %162 = load ptr, ptr %3, align 8
  %163 = getelementptr inbounds %struct.rzip_control, ptr %162, i32 0, i32 6
  %164 = load ptr, ptr %163, align 8
  %165 = load i64, ptr %7, align 8
  %166 = sub i64 %165, 1
  %167 = getelementptr inbounds i8, ptr %164, i64 %166
  %168 = load i8, ptr %167, align 1
  %169 = sext i8 %168 to i32
  %170 = icmp ne i32 %169, 47
  br i1 %170, label %171, label %183

171:                                              ; preds = %156
  %172 = load ptr, ptr %3, align 8
  %173 = getelementptr inbounds %struct.rzip_control, ptr %172, i32 0, i32 6
  %174 = load ptr, ptr %173, align 8
  %175 = load i64, ptr %7, align 8
  %176 = getelementptr inbounds i8, ptr %174, i64 %175
  store i8 47, ptr %176, align 1
  %177 = load ptr, ptr %3, align 8
  %178 = getelementptr inbounds %struct.rzip_control, ptr %177, i32 0, i32 6
  %179 = load ptr, ptr %178, align 8
  %180 = load i64, ptr %7, align 8
  %181 = add i64 %180, 1
  %182 = getelementptr inbounds i8, ptr %179, i64 %181
  store i8 0, ptr %182, align 1
  br label %183

183:                                              ; preds = %171, %156
  store i1 true, ptr %2, align 1
  br label %184

184:                                              ; preds = %183, %153, %134, %109, %58, %39
  %185 = load i1, ptr %2, align 1
  ret i1 %185
}

declare void @register_outputfile(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i64 @time(ptr noundef) #1

declare zeroext i1 @get_rand(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare void @perror(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

declare void @fatal_exit(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #6

; Function Attrs: nounwind willreturn memory(none)
declare i32 @ntohl(i32 noundef) #8

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @enc_loops(i8 noundef zeroext %0, i8 noundef zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store i8 %0, ptr %3, align 1
  store i8 %1, ptr %4, align 1
  %5 = load i8, ptr %4, align 1
  %6 = zext i8 %5 to i64
  %7 = load i8, ptr %3, align 1
  %8 = zext i8 %7 to i64
  %9 = shl i64 %6, %8
  ret i64 %9
}

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) #1

declare void @round_to_page(ptr noundef) #2

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #10

; Function Attrs: nounwind
declare i32 @mlock(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @munlock(ptr noundef, i64 noundef) #1

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pass(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  %7 = load ptr, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 504, i1 false)
  %8 = load ptr, ptr %5, align 8
  %9 = load ptr, ptr @stdin, align 8
  %10 = call ptr @fgets(ptr noundef %8, i32 noundef 504, ptr noundef %9)
  %11 = icmp eq ptr %10, null
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = sext i32 %14 to i64
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  br label %18

18:                                               ; preds = %17
  %19 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %19, i32 noundef 590, ptr noundef @.str.2, ptr noundef @__func__.get_pass, ptr noundef @.str.142)
  store i32 -1, ptr %3, align 4
  br label %95

20:                                               ; No predecessors!
  br label %21

21:                                               ; preds = %20, %2
  %22 = load ptr, ptr %5, align 8
  %23 = call i64 @strlen(ptr noundef %22) #12
  %24 = trunc i64 %23 to i32
  store i32 %24, ptr %6, align 4
  %25 = load i32, ptr %6, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %51

27:                                               ; preds = %21
  %28 = load ptr, ptr %5, align 8
  %29 = load i32, ptr %6, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i8, ptr %28, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 13, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr %5, align 8
  %38 = load i32, ptr %6, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i8, ptr %37, i64 %40
  %42 = load i8, ptr %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 10, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %36, %27
  %46 = load ptr, ptr %5, align 8
  %47 = load i32, ptr %6, align 4
  %48 = sub nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i8, ptr %46, i64 %49
  store i8 0, ptr %50, align 1
  br label %51

51:                                               ; preds = %45, %36, %21
  %52 = load i32, ptr %6, align 4
  %53 = icmp sgt i32 %52, 1
  br i1 %53, label %54, label %78

54:                                               ; preds = %51
  %55 = load ptr, ptr %5, align 8
  %56 = load i32, ptr %6, align 4
  %57 = sub nsw i32 %56, 2
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %55, i64 %58
  %60 = load i8, ptr %59, align 1
  %61 = sext i8 %60 to i32
  %62 = icmp eq i32 13, %61
  br i1 %62, label %72, label %63

63:                                               ; preds = %54
  %64 = load ptr, ptr %5, align 8
  %65 = load i32, ptr %6, align 4
  %66 = sub nsw i32 %65, 2
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i8, ptr %64, i64 %67
  %69 = load i8, ptr %68, align 1
  %70 = sext i8 %69 to i32
  %71 = icmp eq i32 10, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %63, %54
  %73 = load ptr, ptr %5, align 8
  %74 = load i32, ptr %6, align 4
  %75 = sub nsw i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, ptr %73, i64 %76
  store i8 0, ptr %77, align 1
  br label %78

78:                                               ; preds = %72, %63, %51
  %79 = load ptr, ptr %5, align 8
  %80 = call i64 @strlen(ptr noundef %79) #12
  %81 = trunc i64 %80 to i32
  store i32 %81, ptr %6, align 4
  %82 = load i32, ptr %6, align 4
  %83 = icmp eq i32 0, %82
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  %87 = sext i32 %86 to i64
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %91, i32 noundef 598, ptr noundef @.str.2, ptr noundef @__func__.get_pass, ptr noundef @.str.143)
  store i32 -1, ptr %3, align 4
  br label %95

92:                                               ; No predecessors!
  br label %93

93:                                               ; preds = %92, %78
  %94 = load i32, ptr %6, align 4
  store i32 %94, ptr %3, align 4
  br label %95

95:                                               ; preds = %93, %90, %18
  %96 = load i32, ptr %3, align 4
  ret i32 %96
}

declare void @lrz_stretch(ptr noundef) #2

; Function Attrs: nounwind
declare i32 @utime(ptr noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn }
attributes #10 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(0,1) }

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
