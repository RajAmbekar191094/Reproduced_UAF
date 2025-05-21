; ModuleID = './main.c'
source_filename = "./main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.timeval = type { i64, i64 }
%struct.sigaction = type { %union.anon, %struct.__sigset_t, i32, ptr }
%union.anon = type { ptr }
%struct.__sigset_t = type { [16 x i64] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.dirent = type { i64, i64, i16, i8, [256 x i8] }
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@base_control = internal global %struct.rzip_control zeroinitializer, align 8
@control = internal unnamed_addr global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"lrunzip\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"lrzcat\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lrz\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@long_options = internal global [37 x %struct.option] [%struct.option { ptr @.str.43, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 67 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.46, i32 0, ptr null, i32 68 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 101 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 103 }, %struct.option { ptr @.str.50, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 72 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 107 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 75 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 108 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 47 }, %struct.option { ptr @.str.56, i32 2, ptr null, i32 76 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.58, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 78 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 79 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 80 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.67, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 116 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 84 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 85 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 49 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 57 }, %struct.option zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"LRZIP\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NOCONFIG\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"./main.c\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Can only use one of -l, -b, -g, -z or -n\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [41 x i8] c"Invalid compression level (must be 1-9)\0A\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"Invalid nice value (must be -20..19)\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Cannot have -o and -O together\0A\00", align 1
@.str.12 = private unnamed_addr constant [61 x i8] c"Cannot specify an output filename when outputting to stdout\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [40 x i8] c"Cannot have options -o and -O together\0A\00", align 1
@.str.15 = private unnamed_addr constant [62 x i8] c"Cannot specify an output directory when outputting to stdout\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"Failed to allocate for outdir\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"Must have at least one thread\0A\00", align 1
@.str.19 = private unnamed_addr constant [64 x i8] c"Specified output filename already, can't specify an extension.\0A\00", align 1
@.str.20 = private unnamed_addr constant [60 x i8] c"Cannot specify a filename suffix when outputting to stdout\0A\00", align 1
@.str.21 = private unnamed_addr constant [55 x i8] c"Cannot specify an output file name when just testing.\0A\00", align 1
@.str.22 = private unnamed_addr constant [57 x i8] c"Doubt that you want to delete a file when just testing.\0A\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"lrzip version %s\0A\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"0.631\00", align 1
@optind = external local_unnamed_addr global i32, align 4
@.str.25 = private unnamed_addr constant [54 x i8] c"Cannot specify output filename with more than 1 file\0A\00", align 1
@.str.26 = private unnamed_addr constant [47 x i8] c"Cannot specify output filename with recursive\0A\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Cannot have -v and -q options. -v wins.\0A\00", align 1
@.str.28 = private unnamed_addr constant [51 x i8] c"If -U used, cannot specify a window size with -w.\0A\00", align 1
@.str.29 = private unnamed_addr constant [52 x i8] c"Cannot have -U and stdin, unlimited mode disabled.\0A\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"Warning, unable to set nice value\0A\00", align 1
@.str.31 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.32 = private unnamed_addr constant [19 x i8] c"Failed to stat %s\0A\00", align 1
@.str.33 = private unnamed_addr constant [119 x i8] c"lrzip only works directly on regular FILES.\0AUse -r recursive, lrztar or pipe through tar for compressing directories.\0A\00", align 1
@.str.34 = private unnamed_addr constant [52 x i8] c"%s not a directory, -r recursive needs a directory\0A\00", align 1
@.str.35 = private unnamed_addr constant [36 x i8] c"Cannot use -r recursive with STDIO\0A\00", align 1
@.str.36 = private unnamed_addr constant [35 x i8] c"Will not get file info from STDIN\0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [58 x i8] c"Will not read stdin from a terminal. Use -f to override.\0A\00", align 1
@.str.38 = private unnamed_addr constant [58 x i8] c"Will not write stdout to a terminal. Use -f to override.\0A\00", align 1
@.str.39 = private unnamed_addr constant [47 x i8] c"Can only check file written on decompression.\0A\00", align 1
@.str.40 = private unnamed_addr constant [69 x i8] c"Can't check file written when writing to stdout. Checking disabled.\0A\00", align 1
@.str.41 = private unnamed_addr constant [50 x i8] c"Unable to work from STDIN while reading password\0A\00", align 1
@local_control = internal global %struct.rzip_control zeroinitializer, align 8
@.str.42 = private unnamed_addr constant [30 x i8] c"Total time: %02d:%02d:%05.2f\0A\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.45 = private unnamed_addr constant [11 x i8] c"decompress\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"delete\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.48 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.49 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.50 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.51 = private unnamed_addr constant [5 x i8] c"hash\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c"info\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"keep-broken\00", align 1
@.str.54 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.55 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.56 = private unnamed_addr constant [6 x i8] c"level\00", align 1
@.str.57 = private unnamed_addr constant [8 x i8] c"license\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"maxram\00", align 1
@.str.59 = private unnamed_addr constant [12 x i8] c"no-compress\00", align 1
@.str.60 = private unnamed_addr constant [11 x i8] c"nice-level\00", align 1
@.str.61 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"outdir\00", align 1
@.str.63 = private unnamed_addr constant [8 x i8] c"threads\00", align 1
@.str.64 = private unnamed_addr constant [9 x i8] c"progress\00", align 1
@.str.65 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.66 = private unnamed_addr constant [10 x i8] c"recursive\00", align 1
@.str.67 = private unnamed_addr constant [7 x i8] c"suffix\00", align 1
@.str.68 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"threshold\00", align 1
@.str.70 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.71 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@.str.72 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.73 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@.str.75 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.76 = private unnamed_addr constant [5 x i8] c"best\00", align 1
@.str.77 = private unnamed_addr constant [48 x i8] c"bcCdefghHikKlLnN:o:O:p:PrS:tTUm:vVw:z?123456789\00", align 1
@.str.78 = private unnamed_addr constant [41 x i8] c"bcCdDefghHiKlL:nN:o:O:p:PqrS:tTUm:vVw:z?\00", align 1
@__func__.usage = private unnamed_addr constant [6 x i8] c"usage\00", align 1
@.str.79 = private unnamed_addr constant [18 x i8] c"lrz%s version %s\0A\00", align 1
@.str.80 = private unnamed_addr constant [3 x i8] c"ip\00", align 1
@.str.81 = private unnamed_addr constant [37 x i8] c"Copyright (C) Con Kolivas 2006-2016\0A\00", align 1
@.str.82 = private unnamed_addr constant [15 x i8] c"Based on rzip \00", align 1
@.str.83 = private unnamed_addr constant [42 x i8] c"Copyright (C) Andrew Tridgell 1998-2003\0A\0A\00", align 1
@.str.84 = private unnamed_addr constant [34 x i8] c"Usage: lrz%s [options] <file...>\0A\00", align 1
@.str.85 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"\09-c, --stdout\09\09output to STDOUT\0A\00", align 1
@.str.87 = private unnamed_addr constant [64 x i8] c"\09-C, --check\09\09check integrity of file written on decompression\0A\00", align 1
@.str.88 = private unnamed_addr constant [68 x i8] c"\09-c, -C, --check\09\09check integrity of file written on decompression\0A\00", align 1
@.str.89 = private unnamed_addr constant [30 x i8] c"\09-d, --decompress\09decompress\0A\00", align 1
@.str.90 = private unnamed_addr constant [76 x i8] c"\09-e, --encrypt\09\09password protected sha512/aes128 encryption on compression\0A\00", align 1
@.str.91 = private unnamed_addr constant [28 x i8] c"\09-h, -?, --help\09\09show help\0A\00", align 1
@.str.92 = private unnamed_addr constant [53 x i8] c"\09-H, --hash\09\09display md5 hash integrity information\0A\00", align 1
@.str.93 = private unnamed_addr constant [47 x i8] c"\09-i, --info\09\09show compressed file information\0A\00", align 1
@.str.94 = private unnamed_addr constant [54 x i8] c"\09-L, --license\09\09display software version and license\0A\00", align 1
@.str.95 = private unnamed_addr constant [44 x i8] c"\09-P, --progress\09\09show compression progress\0A\00", align 1
@.str.96 = private unnamed_addr constant [47 x i8] c"\09-q, --quiet\09\09don't show compression progress\0A\00", align 1
@.str.97 = private unnamed_addr constant [54 x i8] c"\09-r, --recursive\09\09operate recursively on directories\0A\00", align 1
@.str.98 = private unnamed_addr constant [45 x i8] c"\09-t, --test\09\09test compressed file integrity\0A\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"\09-v[v%s], --verbose\09Increase verbosity\0A\00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c"v\00", align 1
@.str.101 = private unnamed_addr constant [30 x i8] c"\09-V, --version\09\09show version\0A\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"Options affecting output:\0A\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"\09-D, --delete\09\09delete existing files\0A\00", align 1
@.str.104 = private unnamed_addr constant [53 x i8] c"\09-f, --force\09\09force overwrite of any existing files\0A\00", align 1
@.str.105 = private unnamed_addr constant [58 x i8] c"\09-k, --keep\09\09don't delete source files on de/compression\0A\00", align 1
@.str.106 = private unnamed_addr constant [56 x i8] c"\09-K, --keep-broken\09keep broken or damaged output files\0A\00", align 1
@.str.107 = private unnamed_addr constant [66 x i8] c"\09-o, --outfile filename\09specify the output file name and/or path\0A\00", align 1
@.str.108 = private unnamed_addr constant [74 x i8] c"\09-O, --outdir directory\09specify the output directory when -o is not used\0A\00", align 1
@.str.109 = private unnamed_addr constant [65 x i8] c"\09-S, --suffix suffix\09specify compressed suffix (default '.lrz')\0A\00", align 1
@.str.110 = private unnamed_addr constant [32 x i8] c"Options affecting compression:\0A\00", align 1
@.str.111 = private unnamed_addr constant [38 x i8] c"\09--lzma\09\09\09lzma compression (default)\0A\00", align 1
@.str.112 = private unnamed_addr constant [33 x i8] c"\09-b, --bzip2\09\09bzip2 compression\0A\00", align 1
@.str.113 = private unnamed_addr constant [42 x i8] c"\09-g, --gzip\09\09gzip compression using zlib\0A\00", align 1
@.str.114 = private unnamed_addr constant [42 x i8] c"\09-l, --lzo\09\09lzo compression (ultra fast)\0A\00", align 1
@.str.115 = private unnamed_addr constant [74 x i8] c"\09-n, --no-compress\09no backend compression - prepare for other compressor\0A\00", align 1
@.str.116 = private unnamed_addr constant [75 x i8] c"\09-z, --zpaq\09\09zpaq compression (best, extreme compression, extremely slow)\0A\00", align 1
@.str.117 = private unnamed_addr constant [20 x i8] c"Low level options:\0A\00", align 1
@.str.118 = private unnamed_addr constant [67 x i8] c"\09-1 .. -9\09\09set lzma/bzip2/gzip compression level (1-9, default 7)\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"\09--fast\09\09\09alias for -1\0A\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"\09--best\09\09\09alias for -9\0A\00", align 1
@.str.121 = private unnamed_addr constant [75 x i8] c"\09-L, --level level\09set lzma/bzip2/gzip compression level (1-9, default 7)\0A\00", align 1
@.str.122 = private unnamed_addr constant [62 x i8] c"\09-N, --nice-level value\09Set nice value to value (default %d)\0A\00", align 1
@.str.123 = private unnamed_addr constant [72 x i8] c"\09-p, --threads value\09Set processor count to override number of threads\0A\00", align 1
@.str.124 = private unnamed_addr constant [64 x i8] c"\09-m, --maxram size\09Set maximim available ram in hundreds of MB\0A\00", align 1
@.str.125 = private unnamed_addr constant [49 x i8] c"\09\09\09\09overrides detected ammount of available ram\0A\00", align 1
@.str.126 = private unnamed_addr constant [55 x i8] c"\09-T, --threshold\09\09Disable LZO compressibility testing\0A\00", align 1
@.str.127 = private unnamed_addr constant [86 x i8] c"\09-U, --unlimited\09\09Use unlimited window size beyond ramsize (potentially much slower)\0A\00", align 1
@.str.128 = private unnamed_addr constant [65 x i8] c"\09-w, --window size\09maximum compression window in hundreds of MB\0A\00", align 1
@.str.129 = private unnamed_addr constant [73 x i8] c"\09\09\09\09default chosen by heuristic dependent on ram and chosen compression\0A\00", align 1
@.str.130 = private unnamed_addr constant [80 x i8] c"\0ALRZIP=NOCONFIG environment variable setting can be used to bypass lrzip.conf.\0A\00", align 1
@.str.131 = private unnamed_addr constant [83 x i8] c"TMP environment variable will be used for storage of temporary files when needed.\0A\00", align 1
@.str.132 = private unnamed_addr constant [47 x i8] c"TMPDIR may also be stored in lrzip.conf file.\0A\00", align 1
@.str.133 = private unnamed_addr constant [63 x i8] c"\0AIf no filenames or \22-\22 is specified, stdin/out will be used.\0A\00", align 1
@.str.134 = private unnamed_addr constant [16 x i8] c"lrz version %s\0A\00", align 1
@.str.135 = private unnamed_addr constant [78 x i8] c"This is free software.  You may redistribute copies of it under the terms of\0A\00", align 1
@.str.136 = private unnamed_addr constant [72 x i8] c"the GNU General Public License <http://www.gnu.org/licenses/gpl.html>.\0A\00", align 1
@.str.137 = private unnamed_addr constant [55 x i8] c"There is NO WARRANTY, to the extent permitted by law.\0A\00", align 1
@__func__.recurse_dirlist = private unnamed_addr constant [16 x i8] c"recurse_dirlist\00", align 1
@.str.138 = private unnamed_addr constant [29 x i8] c"Unable to open directory %s\0A\00", align 1
@.str.139 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.140 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.141 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.142 = private unnamed_addr constant [24 x i8] c"Unable to stat file %s\0A\00", align 1
@.str.143 = private unnamed_addr constant [21 x i8] c"Not regular file %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [15 x i8] c"Added file %s\0A\00", align 1
@__func__.show_summary = private unnamed_addr constant [13 x i8] c"show_summary\00", align 1
@.str.145 = private unnamed_addr constant [50 x i8] c"The following options are in effect for this %s.\0A\00", align 1
@.str.146 = private unnamed_addr constant [14 x i8] c"DECOMPRESSION\00", align 1
@.str.147 = private unnamed_addr constant [12 x i8] c"COMPRESSION\00", align 1
@.str.148 = private unnamed_addr constant [46 x i8] c"Threading is %s. Number of CPUs detected: %d\0A\00", align 1
@.str.149 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@.str.150 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.151 = private unnamed_addr constant [25 x i8] c"Detected %lld bytes ram\0A\00", align 1
@.str.152 = private unnamed_addr constant [22 x i8] c"Compression level %d\0A\00", align 1
@.str.153 = private unnamed_addr constant [16 x i8] c"Nice Value: %d\0A\00", align 1
@.str.154 = private unnamed_addr constant [15 x i8] c"Show Progress\0A\00", align 1
@.str.155 = private unnamed_addr constant [5 x i8] c"Max \00", align 1
@.str.156 = private unnamed_addr constant [9 x i8] c"Verbose\0A\00", align 1
@.str.157 = private unnamed_addr constant [17 x i8] c"Overwrite Files\0A\00", align 1
@.str.158 = private unnamed_addr constant [34 x i8] c"Remove input files on completion\0A\00", align 1
@.str.159 = private unnamed_addr constant [32 x i8] c"Output Directory Specified: %s\0A\00", align 1
@.str.160 = private unnamed_addr constant [31 x i8] c"Output Filename Specified: %s\0A\00", align 1
@.str.161 = private unnamed_addr constant [21 x i8] c"Test file integrity\0A\00", align 1
@.str.162 = private unnamed_addr constant [32 x i8] c"Temporary Directory set as: %s\0A\00", align 1
@.str.163 = private unnamed_addr constant [22 x i8] c"Compression mode is: \00", align 1
@.str.164 = private unnamed_addr constant [38 x i8] c"LZMA. LZO Compressibility testing %s\0A\00", align 1
@.str.165 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.166 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.167 = private unnamed_addr constant [5 x i8] c"LZO\0A\00", align 1
@.str.168 = private unnamed_addr constant [39 x i8] c"BZIP2. LZO Compressibility testing %s\0A\00", align 1
@.str.169 = private unnamed_addr constant [6 x i8] c"GZIP\0A\00", align 1
@.str.170 = private unnamed_addr constant [38 x i8] c"ZPAQ. LZO Compressibility testing %s\0A\00", align 1
@.str.171 = private unnamed_addr constant [26 x i8] c"RZIP pre-processing only\0A\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"Compression Window: %lld = %lldMB\0A\00", align 1
@.str.173 = private unnamed_addr constant [58 x i8] c"Heuristically Computed Compression Window: %lld = %lldMB\0A\00", align 1
@.str.174 = private unnamed_addr constant [29 x i8] c"Using Unlimited Window size\0A\00", align 1
@.str.175 = private unnamed_addr constant [30 x i8] c"Storage time in seconds %lld\0A\00", align 1
@.str.176 = private unnamed_addr constant [28 x i8] c"Encryption hash loops %lld\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca %struct.timeval, align 8
  %4 = alloca %struct.timeval, align 8
  %5 = alloca %struct.sigaction, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 152, ptr nonnull %5) #16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #16
  store ptr @base_control, ptr @control, align 8, !tbaa !5
  %10 = tail call zeroext i1 @initialise_control(ptr noundef nonnull @base_control) #16
  %11 = load ptr, ptr %1, align 8, !tbaa !5
  %12 = tail call ptr @__xpg_basename(ptr noundef %11) #16
  %13 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(8) @.str) #17
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %17 = or i64 %16, 16
  store i64 %17, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %30

18:                                               ; preds = %2
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(7) @.str.1) #17
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %23 = or i64 %22, 8208
  store i64 %23, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %30

24:                                               ; preds = %18
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %12, ptr noundef nonnull dereferenceable(4) @.str.2) #17
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  store i8 0, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 31), align 4, !tbaa !17
  %29 = and i64 %28, -4
  store i64 %29, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  store ptr @.str.3, ptr getelementptr inbounds ([37 x %struct.option], ptr @long_options, i64 0, i64 1), align 16, !tbaa !18
  store ptr @.str.4, ptr getelementptr inbounds ([37 x %struct.option], ptr @long_options, i64 0, i64 11), align 16, !tbaa !18
  br label %30

30:                                               ; preds = %21, %27, %24, %15
  %31 = phi i1 [ false, %24 ], [ true, %27 ], [ false, %21 ], [ false, %15 ]
  %32 = phi i1 [ false, %24 ], [ false, %27 ], [ true, %21 ], [ false, %15 ]
  tail call void @CrcGenerateTable() #16
  %33 = tail call ptr @getenv(ptr noundef nonnull @.str.5) #16
  %34 = icmp eq ptr %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) @.str.6) #17
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %35, %30
  %39 = tail call zeroext i1 @read_config(ptr noundef nonnull @base_control) #16
  br label %40

40:                                               ; preds = %38, %35
  %41 = select i1 %31, ptr @.str.77, ptr @.str.78
  br label %42

42:                                               ; preds = %139, %40
  %43 = phi i8 [ 0, %40 ], [ %140, %139 ]
  %44 = call i32 @getopt_long(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %41, ptr noundef nonnull @long_options, ptr noundef nonnull %6) #16
  switch i32 %44, label %139 [
    i32 -1, label %265
    i32 98, label %45
    i32 99, label %54
    i32 67, label %60
    i32 100, label %63
    i32 68, label %66
    i32 101, label %69
    i32 102, label %72
    i32 103, label %75
    i32 104, label %84
    i32 63, label %84
    i32 72, label %85
    i32 105, label %88
    i32 107, label %91
    i32 75, label %95
    i32 108, label %98
    i32 76, label %107
    i32 109, label %118
    i32 110, label %122
    i32 78, label %131
    i32 111, label %142
    i32 79, label %153
    i32 112, label %185
    i32 80, label %191
    i32 113, label %194
    i32 114, label %197
    i32 83, label %198
    i32 116, label %209
    i32 84, label %226
    i32 85, label %229
    i32 118, label %232
    i32 86, label %249
    i32 119, label %250
    i32 122, label %253
    i32 49, label %262
    i32 50, label %262
    i32 51, label %262
    i32 52, label %262
    i32 53, label %262
    i32 54, label %262
    i32 55, label %262
    i32 56, label %262
    i32 57, label %262
  ]

45:                                               ; preds = %42
  %46 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %47 = and i64 %46, 992
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %45
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 356, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.8)
  %50 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %51

51:                                               ; preds = %49, %45
  %52 = phi i64 [ %50, %49 ], [ %46, %45 ]
  %53 = or i64 %52, 128
  store i64 %53, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

54:                                               ; preds = %42
  br i1 %31, label %55, label %60

55:                                               ; preds = %54
  %56 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %57 = or i64 %56, 8194
  store i64 %57, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %58 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %58, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 4), align 8, !tbaa !20
  %59 = load ptr, ptr @stderr, align 8, !tbaa !5
  store ptr %59, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 17), align 8, !tbaa !21
  call void @register_outputfile(ptr noundef nonnull @base_control, ptr noundef %59) #16
  br label %139

60:                                               ; preds = %42, %54
  %61 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %62 = or i64 %61, 327680
  store i64 %62, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

63:                                               ; preds = %42
  %64 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %65 = or i64 %64, 16
  store i64 %65, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

66:                                               ; preds = %42
  %67 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %68 = and i64 %67, -3
  store i64 %68, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

69:                                               ; preds = %42
  %70 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %71 = or i64 %70, 8388608
  store i64 %71, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

72:                                               ; preds = %42
  %73 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %74 = or i64 %73, 8
  store i64 %74, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

75:                                               ; preds = %42
  %76 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %77 = and i64 %76, 992
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %75
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 383, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.8)
  %80 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %81

81:                                               ; preds = %79, %75
  %82 = phi i64 [ %80, %79 ], [ %76, %75 ]
  %83 = or i64 %82, 256
  store i64 %83, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

84:                                               ; preds = %42, %42
  call fastcc void @usage(i1 noundef zeroext %31)
  br label %754

85:                                               ; preds = %42
  %86 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %87 = or i64 %86, 65536
  store i64 %87, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

88:                                               ; preds = %42
  %89 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %90 = or i64 %89, 16384
  store i64 %90, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

91:                                               ; preds = %42
  br i1 %31, label %92, label %95

92:                                               ; preds = %91
  %93 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %94 = or i64 %93, 2
  store i64 %94, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

95:                                               ; preds = %42, %91
  %96 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %97 = or i64 %96, 524288
  store i64 %97, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

98:                                               ; preds = %42
  %99 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %100 = and i64 %99, 992
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %104, label %102

102:                                              ; preds = %98
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 406, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.8)
  %103 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %104

104:                                              ; preds = %102, %98
  %105 = phi i64 [ %103, %102 ], [ %99, %98 ]
  %106 = or i64 %105, 64
  store i64 %106, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

107:                                              ; preds = %42
  br i1 %31, label %108, label %109

108:                                              ; preds = %107
  call fastcc void @license()
  call void @exit(i32 noundef 0) #18
  unreachable

109:                                              ; preds = %107
  %110 = load ptr, ptr @optarg, align 8, !tbaa !5
  %111 = call i64 @strtol(ptr nocapture noundef nonnull %110, ptr noundef null, i32 noundef 10) #16
  %112 = trunc i64 %111 to i32
  %113 = trunc i64 %111 to i8
  store i8 %113, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 20), align 8, !tbaa !22
  %114 = and i32 %112, 255
  %115 = add nsw i32 %114, -10
  %116 = icmp ult i32 %115, -9
  br i1 %116, label %117, label %139

117:                                              ; preds = %109
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 416, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.9)
  br label %139

118:                                              ; preds = %42
  %119 = load ptr, ptr @optarg, align 8, !tbaa !5
  %120 = call i64 @strtol(ptr nocapture noundef nonnull %119, ptr noundef null, i32 noundef 10) #16
  %121 = mul nsw i64 %120, 104857600
  store i64 %121, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 27), align 8, !tbaa !23
  br label %139

122:                                              ; preds = %42
  %123 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %124 = and i64 %123, 992
  %125 = icmp eq i64 %124, 0
  br i1 %125, label %128, label %126

126:                                              ; preds = %122
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 423, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.8)
  %127 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %128

128:                                              ; preds = %126, %122
  %129 = phi i64 [ %127, %126 ], [ %123, %122 ]
  %130 = or i64 %129, 32
  store i64 %130, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

131:                                              ; preds = %42
  %132 = load ptr, ptr @optarg, align 8, !tbaa !5
  %133 = call i64 @strtol(ptr nocapture noundef nonnull %132, ptr noundef null, i32 noundef 10) #16
  %134 = trunc i64 %133 to i32
  %135 = trunc i64 %133 to i8
  store i8 %135, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 31), align 4, !tbaa !17
  %136 = shl i32 %134, 24
  %137 = add i32 %136, -318767105
  %138 = icmp ult i32 %137, -654311425
  br i1 %138, label %141, label %139

139:                                              ; preds = %131, %109, %42, %236, %243, %246, %241, %185, %190, %171, %181, %141, %117, %262, %259, %250, %229, %226, %223, %207, %197, %194, %191, %151, %128, %118, %104, %95, %92, %88, %85, %81, %72, %69, %66, %63, %60, %55, %51
  %140 = phi i8 [ %43, %262 ], [ %43, %259 ], [ %43, %250 ], [ %43, %246 ], [ %43, %243 ], [ %43, %241 ], [ %43, %236 ], [ %43, %229 ], [ %43, %226 ], [ %43, %223 ], [ %43, %207 ], [ 1, %197 ], [ %43, %194 ], [ %43, %191 ], [ %43, %190 ], [ %43, %185 ], [ %43, %181 ], [ %43, %171 ], [ %43, %151 ], [ %43, %141 ], [ %43, %128 ], [ %43, %118 ], [ %43, %117 ], [ %43, %104 ], [ %43, %95 ], [ %43, %92 ], [ %43, %88 ], [ %43, %85 ], [ %43, %81 ], [ %43, %72 ], [ %43, %69 ], [ %43, %66 ], [ %43, %63 ], [ %43, %60 ], [ %43, %55 ], [ %43, %51 ], [ %43, %42 ], [ %43, %109 ], [ %43, %131 ]
  br label %42, !llvm.loop !24

141:                                              ; preds = %131
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 429, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.10)
  br label %139

142:                                              ; preds = %42
  %143 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 5), align 8, !tbaa !26
  %144 = icmp eq ptr %143, null
  br i1 %144, label %146, label %145

145:                                              ; preds = %142
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 433, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.11)
  br label %146

146:                                              ; preds = %145, %142
  %147 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %148 = and i64 %147, 8192
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %151, label %150, !prof !27

150:                                              ; preds = %146
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 435, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.12)
  br label %151

151:                                              ; preds = %150, %146
  %152 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %152, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  store ptr @.str.13, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 19), align 8, !tbaa !29
  br label %139

153:                                              ; preds = %42
  %154 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %155 = icmp eq ptr %154, null
  br i1 %155, label %157, label %156

156:                                              ; preds = %153
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 441, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.14)
  br label %157

157:                                              ; preds = %156, %153
  %158 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %159 = and i64 %158, 8192
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %162, label %161, !prof !27

161:                                              ; preds = %157
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 443, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.15)
  br label %162

162:                                              ; preds = %161, %157
  %163 = load ptr, ptr @optarg, align 8, !tbaa !5
  %164 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %163) #17
  %165 = add i64 %164, 2
  %166 = call noalias ptr @malloc(i64 noundef %165) #19
  store ptr %166, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 5), align 8, !tbaa !26
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %171

168:                                              ; preds = %162
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull @base_control, i32 poison, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison)
  %169 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 5), align 8, !tbaa !26
  %170 = load ptr, ptr @optarg, align 8, !tbaa !5
  br label %171

171:                                              ; preds = %168, %162
  %172 = phi ptr [ %170, %168 ], [ %163, %162 ]
  %173 = phi ptr [ %169, %168 ], [ %166, %162 ]
  %174 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %173, ptr noundef nonnull dereferenceable(1) %172) #16
  %175 = load ptr, ptr @optarg, align 8, !tbaa !5
  %176 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %175) #17
  %177 = getelementptr i8, ptr %175, i64 -1
  %178 = getelementptr i8, ptr %177, i64 %176
  %179 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %178, ptr noundef nonnull dereferenceable(2) @.str.17) #17
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %139, label %181

181:                                              ; preds = %171
  %182 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 5), align 8, !tbaa !26
  %183 = call i64 @strlen(ptr nonnull dereferenceable(1) %182)
  %184 = getelementptr inbounds i8, ptr %182, i64 %183
  store i16 47, ptr %184, align 1
  br label %139

185:                                              ; preds = %42
  %186 = load ptr, ptr @optarg, align 8, !tbaa !5
  %187 = call i64 @strtol(ptr nocapture noundef nonnull %186, ptr noundef null, i32 noundef 10) #16
  %188 = trunc i64 %187 to i32
  store i32 %188, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 30), align 8, !tbaa !30
  %189 = icmp slt i32 %188, 1
  br i1 %189, label %190, label %139

190:                                              ; preds = %185
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 454, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.18)
  br label %139

191:                                              ; preds = %42
  %192 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %193 = or i64 %192, 1
  store i64 %193, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

194:                                              ; preds = %42
  %195 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %196 = and i64 %195, -2
  store i64 %196, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

197:                                              ; preds = %42
  br label %139

198:                                              ; preds = %42
  %199 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %200 = icmp eq ptr %199, null
  br i1 %200, label %202, label %201

201:                                              ; preds = %198
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 467, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.19)
  br label %202

202:                                              ; preds = %201, %198
  %203 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %204 = and i64 %203, 8192
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %207, label %206, !prof !27

206:                                              ; preds = %202
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 469, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.20)
  br label %207

207:                                              ; preds = %206, %202
  %208 = load ptr, ptr @optarg, align 8, !tbaa !5
  store ptr %208, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 19), align 8, !tbaa !29
  br label %139

209:                                              ; preds = %42
  %210 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %211 = icmp eq ptr %210, null
  br i1 %211, label %213, label %212

212:                                              ; preds = %209
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 474, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.21)
  br label %213

213:                                              ; preds = %212, %209
  %214 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br i1 %31, label %215, label %217

215:                                              ; preds = %213
  %216 = or i64 %214, 2
  store i64 %216, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %217

217:                                              ; preds = %213, %215
  %218 = phi i64 [ %216, %215 ], [ %214, %213 ]
  %219 = and i64 %218, 2
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %217
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 478, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.22)
  %222 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %223

223:                                              ; preds = %221, %217
  %224 = phi i64 [ %222, %221 ], [ %218, %217 ]
  %225 = or i64 %224, 4
  store i64 %225, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

226:                                              ; preds = %42
  %227 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %228 = and i64 %227, -1048577
  store i64 %228, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

229:                                              ; preds = %42
  %230 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %231 = or i64 %230, 32768
  store i64 %231, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

232:                                              ; preds = %42
  %233 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %234 = and i64 %233, 1
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %236, label %238

236:                                              ; preds = %232
  %237 = or i64 %233, 1
  store i64 %237, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

238:                                              ; preds = %232
  %239 = and i64 %233, 3072
  %240 = icmp eq i64 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = or i64 %233, 1024
  store i64 %242, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

243:                                              ; preds = %238
  %244 = and i64 %233, 1024
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %139, label %246

246:                                              ; preds = %243
  %247 = and i64 %233, -3073
  %248 = or i64 %247, 2048
  store i64 %248, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

249:                                              ; preds = %42
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 1, i32 noundef 499, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24)
  call void @exit(i32 noundef 0) #18
  unreachable

250:                                              ; preds = %42
  %251 = load ptr, ptr @optarg, align 8, !tbaa !5
  %252 = call i64 @strtol(ptr nocapture noundef nonnull %251, ptr noundef null, i32 noundef 10) #16
  store i64 %252, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 25), align 8, !tbaa !31
  br label %139

253:                                              ; preds = %42
  %254 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %255 = and i64 %254, 992
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %253
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 507, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.8)
  %258 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %259

259:                                              ; preds = %257, %253
  %260 = phi i64 [ %258, %257 ], [ %254, %253 ]
  %261 = or i64 %260, 512
  store i64 %261, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %139

262:                                              ; preds = %42, %42, %42, %42, %42, %42, %42, %42, %42
  %263 = trunc i32 %44 to i8
  %264 = add nsw i8 %263, -48
  store i8 %264, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 20), align 8, !tbaa !22
  br label %139

265:                                              ; preds = %42
  %266 = load i32, ptr @optind, align 4, !tbaa !32
  %267 = sub nsw i32 %0, %266
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds ptr, ptr %1, i64 %268
  %270 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %271 = icmp eq ptr %270, null
  br i1 %271, label %278, label %272

272:                                              ; preds = %265
  %273 = icmp sgt i32 %267, 1
  br i1 %273, label %274, label %275

274:                                              ; preds = %272
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 529, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.25)
  br label %275

275:                                              ; preds = %274, %272
  %276 = icmp eq i8 %43, 0
  br i1 %276, label %278, label %277

277:                                              ; preds = %275
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 531, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.26)
  br label %278

278:                                              ; preds = %275, %277, %265
  %279 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %280 = and i64 %279, 3072
  %281 = icmp ne i64 %280, 0
  %282 = and i64 %279, 1
  %283 = icmp eq i64 %282, 0
  %284 = and i1 %281, %283
  br i1 %284, label %285, label %288

285:                                              ; preds = %278
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 535, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.27)
  %286 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %287 = or i64 %286, 1
  store i64 %287, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %288

288:                                              ; preds = %285, %278
  %289 = phi i64 [ %287, %285 ], [ %279, %278 ]
  %290 = and i64 %289, 32768
  %291 = icmp eq i64 %290, 0
  %292 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 25), align 8
  %293 = icmp eq i64 %292, 0
  %294 = select i1 %291, i1 true, i1 %293
  br i1 %294, label %296, label %295

295:                                              ; preds = %288
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 540, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.28)
  store i64 0, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 25), align 8, !tbaa !31
  br label %296

296:                                              ; preds = %295, %288
  %297 = icmp slt i32 %267, 1
  %298 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br i1 %297, label %299, label %301

299:                                              ; preds = %296
  %300 = or i64 %298, 4096
  store i64 %300, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %301

301:                                              ; preds = %296, %299
  %302 = phi i64 [ %300, %299 ], [ %298, %296 ]
  %303 = and i64 %302, 36864
  %304 = icmp eq i64 %303, 36864
  br i1 %304, label %305, label %308

305:                                              ; preds = %301
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 548, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.29)
  %306 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %307 = and i64 %306, -32769
  store i64 %307, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %308

308:                                              ; preds = %305, %301
  call void @setup_overhead(ptr noundef nonnull @base_control) #16
  %309 = load i8, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 31), align 4, !tbaa !17
  %310 = sext i8 %309 to i32
  %311 = icmp sgt i8 %309, 0
  br i1 %311, label %312, label %320

312:                                              ; preds = %308
  %313 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %314 = and i64 %313, 32
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %316, label %320

316:                                              ; preds = %312
  %317 = lshr i32 %310, 1
  %318 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %317) #16
  %319 = icmp eq i32 %318, -1
  br i1 %319, label %323, label %325, !prof !33

320:                                              ; preds = %312, %308
  %321 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %310) #16
  %322 = icmp eq i32 %321, -1
  br i1 %322, label %323, label %325, !prof !33

323:                                              ; preds = %320, %316
  %324 = phi i32 [ 558, %316 ], [ 561, %320 ]
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef %324, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.30)
  br label %325

325:                                              ; preds = %323, %320, %316
  store i32 0, ptr %6, align 4, !tbaa !32
  %326 = icmp slt i32 %267, 0
  br i1 %326, label %754, label %327

327:                                              ; preds = %325
  %328 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 3
  %329 = icmp eq i8 %43, 0
  %330 = getelementptr inbounds %struct.sigaction, ptr %5, i64 0, i32 1
  %331 = getelementptr inbounds %struct.sigaction, ptr %5, i64 0, i32 2
  %332 = getelementptr inbounds %struct.timeval, ptr %4, i64 0, i32 1
  %333 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  br label %334

334:                                              ; preds = %327, %750
  %335 = phi i32 [ 0, %327 ], [ %752, %750 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  store ptr null, ptr %7, align 8, !tbaa !5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #16
  store i32 0, ptr %8, align 4, !tbaa !32
  %336 = icmp slt i32 %335, %267
  br i1 %336, label %343, label %337

337:                                              ; preds = %334
  %338 = icmp eq i32 %335, 0
  br i1 %338, label %339, label %749

339:                                              ; preds = %337
  %340 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %341 = and i64 %340, 4096
  %342 = icmp eq i64 %341, 0
  br i1 %342, label %749, label %368

343:                                              ; preds = %334
  %344 = sext i32 %335 to i64
  %345 = getelementptr inbounds ptr, ptr %269, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !5
  %347 = icmp eq ptr %346, null
  br i1 %347, label %368, label %348

348:                                              ; preds = %343
  %349 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %346, ptr noundef nonnull dereferenceable(2) @.str.31) #17
  %350 = icmp eq i32 %349, 0
  br i1 %350, label %351, label %354

351:                                              ; preds = %348
  %352 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %353 = or i64 %352, 4096
  store i64 %353, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %368

354:                                              ; preds = %348
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #16
  %355 = call i32 @stat64(ptr noundef nonnull %346, ptr noundef nonnull %9) #16
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %358, label %357, !prof !27

357:                                              ; preds = %354
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 581, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.32, ptr noundef nonnull %346)
  br label %358

358:                                              ; preds = %357, %354
  %359 = load i32, ptr %328, align 8, !tbaa !34
  %360 = and i32 %359, 61440
  br i1 %329, label %361, label %364

361:                                              ; preds = %358
  %362 = icmp eq i32 %360, 32768
  br i1 %362, label %367, label %363

363:                                              ; preds = %361
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 585, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.33)
  br label %367

364:                                              ; preds = %358
  %365 = icmp eq i32 %360, 16384
  br i1 %365, label %367, label %366

366:                                              ; preds = %364
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 588, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.34, ptr noundef nonnull %346)
  br label %367

367:                                              ; preds = %363, %361, %366, %364
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #16
  br label %368

368:                                              ; preds = %339, %351, %367, %343
  %369 = phi ptr [ %346, %351 ], [ %346, %367 ], [ null, %343 ], [ null, %339 ]
  br i1 %329, label %376, label %370

370:                                              ; preds = %368
  %371 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %372 = and i64 %371, 12288
  %373 = icmp eq i64 %372, 0
  br i1 %373, label %375, label %374, !prof !27

374:                                              ; preds = %370
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 594, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.35)
  br label %375

375:                                              ; preds = %374, %370
  call fastcc void @recurse_dirlist(ptr noundef %369, ptr noundef nonnull %7, ptr noundef nonnull %8)
  br label %376

376:                                              ; preds = %375, %368
  %377 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %378 = and i64 %377, 20480
  %379 = icmp eq i64 %378, 20480
  br i1 %379, label %380, label %381

380:                                              ; preds = %376
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 599, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.36)
  br label %381

381:                                              ; preds = %380, %376
  %382 = load i32, ptr %8, align 4
  %383 = load ptr, ptr %7, align 8
  br label %384

384:                                              ; preds = %748, %381
  %385 = phi ptr [ %369, %381 ], [ %395, %748 ]
  %386 = phi i32 [ 0, %381 ], [ %396, %748 ]
  br i1 %329, label %394, label %387

387:                                              ; preds = %384
  %388 = icmp slt i32 %386, %382
  br i1 %388, label %389, label %750

389:                                              ; preds = %387
  %390 = add nsw i32 %386, 1
  %391 = shl nsw i32 %386, 12
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i8, ptr %383, i64 %392
  br label %394

394:                                              ; preds = %389, %384
  %395 = phi ptr [ %393, %389 ], [ %385, %384 ]
  %396 = phi i32 [ %390, %389 ], [ %386, %384 ]
  store ptr %395, ptr @base_control, align 8, !tbaa !37
  %397 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %398 = icmp eq ptr %397, null
  br i1 %398, label %405, label %399

399:                                              ; preds = %394
  %400 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %397, ptr noundef nonnull dereferenceable(2) @.str.31) #17
  %401 = icmp eq i32 %400, 0
  %402 = or i1 %32, %401
  br i1 %402, label %403, label %419

403:                                              ; preds = %399
  %404 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %410

405:                                              ; preds = %394
  %406 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %407 = and i64 %406, 4096
  %408 = icmp ne i64 %407, 0
  %409 = or i1 %32, %408
  br i1 %409, label %410, label %415

410:                                              ; preds = %403, %405
  %411 = phi i64 [ %404, %403 ], [ %406, %405 ]
  %412 = or i64 %411, 8192
  store i64 %412, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %413 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %413, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 4), align 8, !tbaa !20
  %414 = load ptr, ptr @stderr, align 8, !tbaa !5
  store ptr %414, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 17), align 8, !tbaa !21
  call void @register_outputfile(ptr noundef nonnull @base_control, ptr noundef %414) #16
  br label %415

415:                                              ; preds = %405, %410
  br i1 %32, label %416, label %419

416:                                              ; preds = %415
  %417 = load ptr, ptr @stderr, align 8, !tbaa !5
  store ptr %417, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 17), align 8, !tbaa !21
  %418 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %418, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 4), align 8, !tbaa !20
  call void @register_outputfile(ptr noundef nonnull @base_control, ptr noundef %417) #16
  br label %419

419:                                              ; preds = %399, %416, %415
  %420 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %421 = and i64 %420, 8192
  %422 = icmp eq i64 %421, 0
  br i1 %422, label %423, label %426

423:                                              ; preds = %419
  %424 = load ptr, ptr @stdout, align 8, !tbaa !5
  store ptr %424, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 17), align 8, !tbaa !21
  call void @register_outputfile(ptr noundef nonnull @base_control, ptr noundef %424) #16
  %425 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %426

426:                                              ; preds = %423, %419
  %427 = phi i64 [ %425, %423 ], [ %420, %419 ]
  %428 = and i64 %427, 4096
  %429 = icmp eq i64 %428, 0
  br i1 %429, label %432, label %430

430:                                              ; preds = %426
  %431 = load ptr, ptr @stdin, align 8, !tbaa !5
  store ptr %431, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 1), align 8, !tbaa !38
  br label %432

432:                                              ; preds = %430, %426
  %433 = call i32 @sigemptyset(ptr noundef nonnull %330) #16
  store i32 0, ptr %331, align 8, !tbaa !39
  store ptr @sighandler, ptr %5, align 8, !tbaa !42
  %434 = call i32 @sigaction(i32 noundef 15, ptr noundef nonnull %5, ptr noundef null) #16
  %435 = call i32 @sigaction(i32 noundef 2, ptr noundef nonnull %5, ptr noundef null) #16
  %436 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %437 = and i64 %436, 8
  %438 = icmp eq i64 %437, 0
  br i1 %438, label %439, label %463

439:                                              ; preds = %432
  %440 = and i64 %436, 4096
  %441 = icmp eq i64 %440, 0
  br i1 %441, label %450, label %442

442:                                              ; preds = %439
  %443 = load ptr, ptr @stdin, align 8, !tbaa !5
  %444 = call i32 @fileno(ptr noundef %443) #16
  %445 = call i32 @isatty(i32 noundef %444) #16
  %446 = icmp eq i32 %445, 0
  br i1 %446, label %447, label %449

447:                                              ; preds = %442
  %448 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %450

449:                                              ; preds = %442
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 638, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.37)
  call fastcc void @usage(i1 noundef zeroext %31)
  call void @exit(i32 noundef 1) #18
  unreachable

450:                                              ; preds = %447, %439
  %451 = phi i64 [ %448, %447 ], [ %436, %439 ]
  %452 = and i64 %451, 8196
  %453 = icmp eq i64 %452, 8192
  br i1 %453, label %454, label %463

454:                                              ; preds = %450
  %455 = load ptr, ptr @stdout, align 8, !tbaa !5
  %456 = call i32 @fileno(ptr noundef %455) #16
  %457 = call i32 @isatty(i32 noundef %456) #16
  %458 = icmp eq i32 %457, 0
  %459 = or i1 %31, %458
  br i1 %459, label %460, label %462

460:                                              ; preds = %454
  %461 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %463

462:                                              ; preds = %454
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 643, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.38)
  call fastcc void @usage(i1 noundef zeroext false)
  call void @exit(i32 noundef 1) #18
  unreachable

463:                                              ; preds = %460, %450, %432
  %464 = phi i64 [ %461, %460 ], [ %451, %450 ], [ %436, %432 ]
  %465 = and i64 %464, 262144
  %466 = icmp eq i64 %465, 0
  br i1 %466, label %478, label %467

467:                                              ; preds = %463
  %468 = and i64 %464, 16
  %469 = icmp eq i64 %468, 0
  br i1 %469, label %470, label %471

470:                                              ; preds = %467
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 651, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.39)
  br label %475

471:                                              ; preds = %467
  %472 = and i64 %464, 8192
  %473 = icmp eq i64 %472, 0
  br i1 %473, label %478, label %474

474:                                              ; preds = %471
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull @base_control, i32 noundef 654, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.40)
  br label %475

475:                                              ; preds = %474, %470
  %476 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %477 = and i64 %476, -262145
  store i64 %477, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %478

478:                                              ; preds = %475, %471, %463
  call void @setup_ram(ptr noundef nonnull @base_control) #16
  %479 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %480 = and i64 %479, 16384
  %481 = icmp eq i64 %480, 0
  br i1 %481, label %482, label %698

482:                                              ; preds = %478
  %483 = and i64 %479, 4
  %484 = icmp ne i64 %483, 0
  %485 = and i64 %479, 3072
  %486 = icmp eq i64 %485, 0
  %487 = or i1 %484, %486
  br i1 %487, label %494, label %488

488:                                              ; preds = %482
  %489 = and i64 %479, 16
  %490 = icmp eq i64 %489, 0
  %491 = select i1 %490, ptr @.str.147, ptr @.str.146
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 165, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.145, ptr noundef nonnull %491)
  %492 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %493 = and i64 %492, 3072
  br label %494

494:                                              ; preds = %488, %482
  %495 = phi i64 [ %485, %482 ], [ %493, %488 ]
  %496 = phi i64 [ %479, %482 ], [ %492, %488 ]
  %497 = icmp eq i64 %495, 0
  br i1 %497, label %524, label %498

498:                                              ; preds = %494
  %499 = load i32, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 30), align 8, !tbaa !30
  %500 = icmp sgt i32 %499, 1
  %501 = select i1 %500, ptr @.str.149, ptr @.str.150
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 167, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.148, ptr noundef nonnull %501, i32 noundef %499)
  %502 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %503 = and i64 %502, 3072
  %504 = icmp eq i64 %503, 0
  br i1 %504, label %524, label %505

505:                                              ; preds = %498
  %506 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 27), align 8, !tbaa !23
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 168, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.151, i64 noundef %506)
  %507 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %508 = and i64 %507, 3072
  %509 = icmp eq i64 %508, 0
  br i1 %509, label %524, label %510

510:                                              ; preds = %505
  %511 = load i8, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 20), align 8, !tbaa !22
  %512 = zext i8 %511 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 169, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.152, i32 noundef %512)
  %513 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %514 = and i64 %513, 3072
  %515 = icmp eq i64 %514, 0
  br i1 %515, label %524, label %516

516:                                              ; preds = %510
  %517 = load i8, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 31), align 4, !tbaa !17
  %518 = sext i8 %517 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 170, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.153, i32 noundef %518)
  %519 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %520 = and i64 %519, 3072
  %521 = icmp eq i64 %520, 0
  br i1 %521, label %524, label %522

522:                                              ; preds = %516
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 171, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.154)
  %523 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %524

524:                                              ; preds = %522, %516, %510, %505, %498, %494
  %525 = phi i64 [ %523, %522 ], [ %519, %516 ], [ %513, %510 ], [ %507, %505 ], [ %502, %498 ], [ %496, %494 ]
  %526 = and i64 %525, 2048
  %527 = icmp eq i64 %526, 0
  br i1 %527, label %530, label %528

528:                                              ; preds = %524
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 4, i32 noundef 172, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.155)
  %529 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %530

530:                                              ; preds = %528, %524
  %531 = phi i64 [ %529, %528 ], [ %525, %524 ]
  %532 = and i64 %531, 3072
  %533 = icmp eq i64 %532, 0
  br i1 %533, label %552, label %534

534:                                              ; preds = %530
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 173, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.156)
  %535 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %536 = and i64 %535, 3072
  %537 = and i64 %535, 8
  %538 = icmp eq i64 %537, 0
  %539 = icmp eq i64 %536, 0
  %540 = or i1 %538, %539
  br i1 %540, label %544, label %541

541:                                              ; preds = %534
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 175, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.157)
  %542 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %543 = and i64 %542, 3072
  br label %544

544:                                              ; preds = %541, %534
  %545 = phi i64 [ %543, %541 ], [ %536, %534 ]
  %546 = phi i64 [ %542, %541 ], [ %535, %534 ]
  %547 = and i64 %546, 2
  %548 = icmp ne i64 %547, 0
  %549 = icmp eq i64 %545, 0
  %550 = or i1 %549, %548
  br i1 %550, label %552, label %551

551:                                              ; preds = %544
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 177, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.158)
  br label %552

552:                                              ; preds = %551, %544, %530
  %553 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 5), align 8, !tbaa !26
  %554 = icmp eq ptr %553, null
  br i1 %554, label %560, label %555

555:                                              ; preds = %552
  %556 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %557 = and i64 %556, 3072
  %558 = icmp eq i64 %557, 0
  br i1 %558, label %568, label %559

559:                                              ; preds = %555
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 179, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.159, ptr noundef nonnull %553)
  br label %568

560:                                              ; preds = %552
  %561 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 2), align 8, !tbaa !28
  %562 = icmp eq ptr %561, null
  br i1 %562, label %568, label %563

563:                                              ; preds = %560
  %564 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %565 = and i64 %564, 3072
  %566 = icmp eq i64 %565, 0
  br i1 %566, label %568, label %567

567:                                              ; preds = %563
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 181, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.160, ptr noundef nonnull %561)
  br label %568

568:                                              ; preds = %567, %563, %560, %559, %555
  %569 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %570 = and i64 %569, 4
  %571 = icmp eq i64 %570, 0
  %572 = and i64 %569, 3072
  %573 = icmp eq i64 %572, 0
  %574 = or i1 %571, %573
  br i1 %574, label %576, label %575

575:                                              ; preds = %568
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 183, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.161)
  br label %576

576:                                              ; preds = %575, %568
  %577 = load ptr, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 6), align 8, !tbaa !43
  %578 = icmp eq ptr %577, null
  br i1 %578, label %584, label %579

579:                                              ; preds = %576
  %580 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %581 = and i64 %580, 3072
  %582 = icmp eq i64 %581, 0
  br i1 %582, label %584, label %583

583:                                              ; preds = %579
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 185, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.162, ptr noundef nonnull %577)
  br label %584

584:                                              ; preds = %583, %579, %576
  %585 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %586 = and i64 %585, 20
  %587 = icmp eq i64 %586, 0
  br i1 %587, label %588, label %685

588:                                              ; preds = %584
  %589 = and i64 %585, 3072
  %590 = icmp eq i64 %589, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %588
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 189, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.163)
  %592 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %593

593:                                              ; preds = %591, %588
  %594 = phi i64 [ %585, %588 ], [ %592, %591 ]
  %595 = and i64 %594, 992
  %596 = icmp eq i64 %595, 0
  br i1 %596, label %597, label %604

597:                                              ; preds = %593
  %598 = and i64 %594, 3072
  %599 = icmp eq i64 %598, 0
  br i1 %599, label %645, label %600

600:                                              ; preds = %597
  %601 = and i64 %594, 1048576
  %602 = icmp eq i64 %601, 0
  %603 = select i1 %602, ptr @.str.166, ptr @.str.165
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 191, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.164, ptr noundef nonnull %603)
  br label %645

604:                                              ; preds = %593
  %605 = and i64 %594, 64
  %606 = icmp eq i64 %605, 0
  br i1 %606, label %611, label %607

607:                                              ; preds = %604
  %608 = and i64 %594, 3072
  %609 = icmp eq i64 %608, 0
  br i1 %609, label %645, label %610

610:                                              ; preds = %607
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 193, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.167)
  br label %645

611:                                              ; preds = %604
  %612 = and i64 %594, 128
  %613 = icmp eq i64 %612, 0
  br i1 %613, label %621, label %614

614:                                              ; preds = %611
  %615 = and i64 %594, 3072
  %616 = icmp eq i64 %615, 0
  br i1 %616, label %645, label %617

617:                                              ; preds = %614
  %618 = and i64 %594, 1048576
  %619 = icmp eq i64 %618, 0
  %620 = select i1 %619, ptr @.str.166, ptr @.str.165
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 195, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.168, ptr noundef nonnull %620)
  br label %645

621:                                              ; preds = %611
  %622 = and i64 %594, 256
  %623 = icmp eq i64 %622, 0
  br i1 %623, label %628, label %624

624:                                              ; preds = %621
  %625 = and i64 %594, 3072
  %626 = icmp eq i64 %625, 0
  br i1 %626, label %645, label %627

627:                                              ; preds = %624
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 197, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.169)
  br label %645

628:                                              ; preds = %621
  %629 = and i64 %594, 512
  %630 = icmp eq i64 %629, 0
  br i1 %630, label %638, label %631

631:                                              ; preds = %628
  %632 = and i64 %594, 3072
  %633 = icmp eq i64 %632, 0
  br i1 %633, label %645, label %634

634:                                              ; preds = %631
  %635 = and i64 %594, 1048576
  %636 = icmp eq i64 %635, 0
  %637 = select i1 %636, ptr @.str.166, ptr @.str.165
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 199, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.170, ptr noundef nonnull %637)
  br label %645

638:                                              ; preds = %628
  %639 = and i64 %594, 32
  %640 = icmp eq i64 %639, 0
  %641 = and i64 %594, 3072
  %642 = icmp eq i64 %641, 0
  %643 = or i1 %640, %642
  br i1 %643, label %645, label %644

644:                                              ; preds = %638
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 201, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.171)
  br label %645

645:                                              ; preds = %644, %638, %634, %631, %627, %624, %617, %614, %610, %607, %600, %597
  %646 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 25), align 8, !tbaa !31
  %647 = icmp eq i64 %646, 0
  br i1 %647, label %656, label %648

648:                                              ; preds = %645
  %649 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %650 = and i64 %649, 3072
  %651 = icmp eq i64 %650, 0
  br i1 %651, label %676, label %652

652:                                              ; preds = %648
  %653 = mul i64 %646, 100
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 203, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.172, i64 noundef %646, i64 noundef %653)
  %654 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 25), align 8, !tbaa !31
  %655 = icmp eq i64 %654, 0
  br i1 %655, label %656, label %676

656:                                              ; preds = %652, %645
  %657 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %658 = and i64 %657, 32768
  %659 = icmp eq i64 %658, 0
  br i1 %659, label %660, label %676

660:                                              ; preds = %656
  %661 = and i64 %657, 12288
  %662 = icmp eq i64 %661, 0
  br i1 %662, label %665, label %663

663:                                              ; preds = %660
  %664 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 23), align 8, !tbaa !44
  br label %669

665:                                              ; preds = %660
  %666 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 27), align 8, !tbaa !23
  %667 = shl nsw i64 %666, 1
  %668 = sdiv i64 %667, 3
  br label %669

669:                                              ; preds = %665, %663
  %670 = phi i64 [ %664, %663 ], [ %668, %665 ]
  %671 = and i64 %657, 3072
  %672 = icmp eq i64 %671, 0
  br i1 %672, label %676, label %673

673:                                              ; preds = %669
  %674 = sdiv i64 %670, 104857600
  %675 = mul nsw i64 %674, 100
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 213, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.173, i64 noundef %674, i64 noundef %675)
  br label %676

676:                                              ; preds = %673, %669, %656, %652, %648
  %677 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %678 = and i64 %677, 32768
  %679 = icmp eq i64 %678, 0
  %680 = and i64 %677, 3072
  %681 = icmp eq i64 %680, 0
  %682 = or i1 %679, %681
  br i1 %682, label %685, label %683

683:                                              ; preds = %676
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 3, i32 noundef 216, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.174)
  %684 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %685

685:                                              ; preds = %683, %676, %584
  %686 = phi i64 [ %677, %676 ], [ %684, %683 ], [ %585, %584 ]
  %687 = and i64 %686, 2068
  %688 = icmp eq i64 %687, 2048
  br i1 %688, label %689, label %692

689:                                              ; preds = %685
  %690 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 40), align 8, !tbaa !45
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 4, i32 noundef 219, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.175, i64 noundef %690)
  %691 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %692

692:                                              ; preds = %689, %685
  %693 = phi i64 [ %691, %689 ], [ %686, %685 ]
  %694 = and i64 %693, 8390656
  %695 = icmp eq i64 %694, 8390656
  br i1 %695, label %696, label %698

696:                                              ; preds = %692
  %697 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 39), align 8, !tbaa !46
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 4, i32 noundef 221, ptr nonnull poison, ptr noundef nonnull @__func__.show_summary, ptr noundef nonnull @.str.176, i64 noundef %697)
  br label %698

698:                                              ; preds = %478, %692, %696
  %699 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #16
  %700 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %701 = and i64 %700, 8392704
  %702 = icmp eq i64 %701, 8392704
  br i1 %702, label %703, label %705, !prof !33

703:                                              ; preds = %698
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull @base_control, i32 noundef 665, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.41)
  %704 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  br label %705

705:                                              ; preds = %703, %698
  %706 = phi i64 [ %704, %703 ], [ %700, %698 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(864) @local_control, ptr noundef nonnull align 8 dereferenceable(864) @base_control, i64 864, i1 false)
  %707 = and i64 %706, 20
  %708 = icmp eq i64 %707, 0
  br i1 %708, label %711, label %709

709:                                              ; preds = %705
  %710 = call zeroext i1 @decompress_file(ptr noundef nonnull @local_control) #16
  br label %718

711:                                              ; preds = %705
  %712 = and i64 %706, 16384
  %713 = icmp eq i64 %712, 0
  br i1 %713, label %716, label %714

714:                                              ; preds = %711
  %715 = call zeroext i1 @get_fileinfo(ptr noundef nonnull @local_control) #16
  br label %718

716:                                              ; preds = %711
  %717 = call zeroext i1 @compress_file(ptr noundef nonnull @local_control) #16
  br label %718

718:                                              ; preds = %714, %716, %709
  %719 = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #16
  %720 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %721 = and i64 %720, 16385
  %722 = icmp eq i64 %721, 1
  br i1 %722, label %723, label %748

723:                                              ; preds = %718
  %724 = load i64, ptr %332, align 8, !tbaa !47
  %725 = sitofp i64 %724 to double
  %726 = fdiv double %725, 1.000000e+06
  %727 = load i64, ptr %4, align 8, !tbaa !49
  %728 = sitofp i64 %727 to double
  %729 = fadd double %726, %728
  %730 = load i64, ptr %333, align 8, !tbaa !47
  %731 = sitofp i64 %730 to double
  %732 = fdiv double %731, 1.000000e+06
  %733 = load i64, ptr %3, align 8, !tbaa !49
  %734 = sitofp i64 %733 to double
  %735 = fadd double %732, %734
  %736 = fsub double %729, %735
  %737 = fptosi double %736 to i32
  %738 = sdiv i32 %737, 3600
  %739 = mul nsw i32 %738, 3600
  %740 = sitofp i32 %739 to double
  %741 = fsub double %736, %740
  %742 = fdiv double %736, 6.000000e+01
  %743 = fptosi double %742 to i32
  %744 = srem i32 %743, 60
  %745 = mul nsw i32 %744, 60
  %746 = sitofp i32 %745 to double
  %747 = fsub double %741, %746
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull @base_control, i32 noundef 2, i32 noundef 683, ptr nonnull poison, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.42, i32 noundef %738, i32 noundef %744, double noundef %747)
  br label %748

748:                                              ; preds = %723, %718
  br i1 %329, label %750, label %384

749:                                              ; preds = %339, %337
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  br label %754

750:                                              ; preds = %387, %748
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %751 = load i32, ptr %6, align 4, !tbaa !32
  %752 = add nsw i32 %751, 1
  store i32 %752, ptr %6, align 4, !tbaa !32
  %753 = icmp slt i32 %751, %267
  br i1 %753, label %334, label %754, !llvm.loop !50

754:                                              ; preds = %750, %325, %749, %84
  %755 = phi i32 [ -1, %84 ], [ 0, %749 ], [ 0, %325 ], [ 0, %750 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #16
  call void @llvm.lifetime.end.p0(i64 152, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #16
  ret i32 %755
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i1 @initialise_control(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare ptr @__xpg_basename(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare void @CrcGenerateTable() local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #5

declare zeroext i1 @read_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #6 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #20
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !53
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
define internal fastcc void @usage(i1 noundef zeroext %0) unnamed_addr #0 {
  %2 = load ptr, ptr @control, align 8, !tbaa !5
  %3 = select i1 %0, ptr @.str.13, ptr @.str.80
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %2, i32 noundef 1, i32 noundef 70, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.79, ptr noundef nonnull %3, ptr noundef nonnull @.str.24)
  %4 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %4, i32 noundef 1, i32 noundef 71, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.81)
  %5 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %5, i32 noundef 1, i32 noundef 72, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.82)
  %6 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %6, i32 noundef 1, i32 noundef 73, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.83)
  %7 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %7, i32 noundef 1, i32 noundef 74, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.84, ptr noundef nonnull %3)
  %8 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %8, i32 noundef 1, i32 noundef 75, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.85)
  %9 = load ptr, ptr @control, align 8, !tbaa !5
  br i1 %0, label %10, label %12

10:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %9, i32 noundef 1, i32 noundef 77, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.86)
  %11 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %11, i32 noundef 1, i32 noundef 78, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.87)
  br label %13

12:                                               ; preds = %1
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %9, i32 noundef 1, i32 noundef 80, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.88)
  br label %13

13:                                               ; preds = %12, %10
  %14 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %14, i32 noundef 1, i32 noundef 81, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.89)
  %15 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %15, i32 noundef 1, i32 noundef 82, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.90)
  %16 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %16, i32 noundef 1, i32 noundef 83, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.91)
  %17 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %17, i32 noundef 1, i32 noundef 84, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.92)
  %18 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %18, i32 noundef 1, i32 noundef 85, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.93)
  %19 = load ptr, ptr @control, align 8, !tbaa !5
  br i1 %0, label %20, label %22

20:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %19, i32 noundef 1, i32 noundef 87, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.94)
  %21 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %21, i32 noundef 1, i32 noundef 88, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.95)
  br label %23

22:                                               ; preds = %13
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %19, i32 noundef 1, i32 noundef 90, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.96)
  br label %23

23:                                               ; preds = %22, %20
  %24 = phi ptr [ @.str.13, %22 ], [ @.str.100, %20 ]
  %25 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %25, i32 noundef 1, i32 noundef 91, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.97)
  %26 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %26, i32 noundef 1, i32 noundef 92, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.98)
  %27 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %27, i32 noundef 1, i32 noundef 93, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.99, ptr noundef nonnull %24)
  %28 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %28, i32 noundef 1, i32 noundef 94, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.101)
  %29 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %29, i32 noundef 1, i32 noundef 95, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.102)
  %30 = load ptr, ptr @control, align 8, !tbaa !5
  br i1 %0, label %33, label %31

31:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %30, i32 noundef 1, i32 noundef 97, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.103)
  %32 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %32, i32 noundef 1, i32 noundef 98, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.104)
  br label %35

33:                                               ; preds = %23
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %30, i32 noundef 1, i32 noundef 98, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.104)
  %34 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %34, i32 noundef 1, i32 noundef 100, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.105)
  br label %35

35:                                               ; preds = %31, %33
  %36 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %36, i32 noundef 1, i32 noundef 101, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.106)
  %37 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %37, i32 noundef 1, i32 noundef 102, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.107)
  %38 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %38, i32 noundef 1, i32 noundef 103, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.108)
  %39 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %39, i32 noundef 1, i32 noundef 104, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.109)
  %40 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %40, i32 noundef 1, i32 noundef 105, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.110)
  %41 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %41, i32 noundef 1, i32 noundef 106, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.111)
  %42 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %42, i32 noundef 1, i32 noundef 107, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.112)
  %43 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %43, i32 noundef 1, i32 noundef 108, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.113)
  %44 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %44, i32 noundef 1, i32 noundef 109, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.114)
  %45 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %45, i32 noundef 1, i32 noundef 110, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.115)
  %46 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %46, i32 noundef 1, i32 noundef 111, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.116)
  %47 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %47, i32 noundef 1, i32 noundef 112, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.117)
  %48 = load ptr, ptr @control, align 8, !tbaa !5
  br i1 %0, label %49, label %52

49:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %48, i32 noundef 1, i32 noundef 114, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.118)
  %50 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %50, i32 noundef 1, i32 noundef 115, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.119)
  %51 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %51, i32 noundef 1, i32 noundef 116, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.120)
  br label %53

52:                                               ; preds = %35
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %48, i32 noundef 1, i32 noundef 119, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.121)
  br label %53

53:                                               ; preds = %49, %52
  %54 = phi i32 [ 19, %52 ], [ 0, %49 ]
  %55 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %55, i32 noundef 1, i32 noundef 120, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.122, i32 noundef %54)
  %56 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %56, i32 noundef 1, i32 noundef 121, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.123)
  %57 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %57, i32 noundef 1, i32 noundef 122, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.124)
  %58 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %58, i32 noundef 1, i32 noundef 123, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.125)
  %59 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %59, i32 noundef 1, i32 noundef 124, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.126)
  %60 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %60, i32 noundef 1, i32 noundef 125, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.127)
  %61 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %61, i32 noundef 1, i32 noundef 126, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.128)
  %62 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %62, i32 noundef 1, i32 noundef 127, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.129)
  %63 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %63, i32 noundef 1, i32 noundef 128, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.130)
  %64 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %64, i32 noundef 1, i32 noundef 129, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.131)
  %65 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %65, i32 noundef 1, i32 noundef 130, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.132)
  %66 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %66, i32 noundef 1, i32 noundef 131, ptr nonnull poison, ptr noundef nonnull @__func__.usage, ptr noundef nonnull @.str.133)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @license() unnamed_addr #0 {
  %1 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1, i32 noundef 1, i32 noundef 137, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.24)
  %2 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %2, i32 noundef 1, i32 noundef 138, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.81)
  %3 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %3, i32 noundef 1, i32 noundef 139, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.82)
  %4 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %4, i32 noundef 1, i32 noundef 140, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.83)
  %5 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %5, i32 noundef 1, i32 noundef 141, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.135)
  %6 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %6, i32 noundef 1, i32 noundef 142, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.136)
  %7 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %7, i32 noundef 1, i32 noundef 143, ptr nonnull poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.137)
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr noundef %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ...) unnamed_addr #6 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !51
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !5
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #20
  call void @perror(ptr noundef null) #20
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef 446, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.main, ptr noundef nonnull @.str.16, ptr noundef nonnull %6) #16
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !53
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #16
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #6 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #16
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !53
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !54
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !51
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  call void %20(ptr noundef %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str.7, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #16
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !21
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !21
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !21
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #16
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #6 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #16
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !53
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !51
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !54
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !51
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !52
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.7, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #16
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !55
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !55
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !55
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #16
  ret void
}

declare void @setup_overhead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind uwtable
define internal fastcc void @recurse_dirlist(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2) unnamed_addr #0 {
  %4 = alloca [4096 x i8], align 16
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #16
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #16
  %6 = tail call ptr @opendir(ptr noundef %0)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10, !prof !33

8:                                                ; preds = %3
  %9 = load ptr, ptr @control, align 8, !tbaa !5
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %9, i32 noundef 283, ptr nonnull poison, ptr noundef nonnull @__func__.recurse_dirlist, ptr noundef nonnull @.str.138, ptr noundef %0)
  br label %10

10:                                               ; preds = %8, %3
  %11 = tail call ptr @readdir64(ptr noundef %6) #16
  %12 = icmp eq ptr %11, null
  br i1 %12, label %58, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %23
  %16 = phi ptr [ %11, %13 ], [ %24, %23 ]
  %17 = getelementptr inbounds %struct.dirent, ptr %16, i64 0, i32 4
  %18 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(2) @.str.139) #17
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(3) @.str.140) #17
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %15, %20, %36, %37, %45
  %24 = call ptr @readdir64(ptr noundef %6) #16
  %25 = icmp eq ptr %24, null
  br i1 %25, label %58, label %15, !llvm.loop !56

26:                                               ; preds = %20
  %27 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.141, ptr noundef %0, ptr noundef nonnull %17) #16
  %28 = call i32 @stat64(ptr noundef nonnull %4, ptr noundef nonnull %5) #16
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %32, label %30, !prof !27

30:                                               ; preds = %26
  %31 = load ptr, ptr @control, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %31, i32 noundef 289, ptr nonnull poison, ptr noundef nonnull @__func__.recurse_dirlist, ptr noundef nonnull @.str.142, ptr noundef nonnull %4)
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, ptr %14, align 8, !tbaa !34
  %34 = trunc i32 %33 to i16
  %35 = and i16 %34, -4096
  switch i16 %35, label %37 [
    i16 16384, label %36
    i16 -32768, label %39
  ]

36:                                               ; preds = %32
  call fastcc void @recurse_dirlist(ptr noundef nonnull %4, ptr noundef %1, ptr noundef %2)
  br label %23

37:                                               ; preds = %32
  %38 = load ptr, ptr @control, align 8, !tbaa !5
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %38, i32 noundef 295, ptr nonnull poison, ptr noundef nonnull @__func__.recurse_dirlist, ptr noundef nonnull @.str.143, ptr noundef nonnull %4)
  br label %23

39:                                               ; preds = %32
  %40 = load i64, ptr getelementptr inbounds (%struct.rzip_control, ptr @base_control, i64 0, i32 26), align 8, !tbaa !9
  %41 = and i64 %40, 2048
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @control, align 8, !tbaa !5
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %44, i32 noundef 4, i32 noundef 298, ptr nonnull poison, ptr noundef nonnull @__func__.recurse_dirlist, ptr noundef nonnull @.str.144, ptr noundef nonnull %4)
  br label %45

45:                                               ; preds = %43, %39
  %46 = load ptr, ptr %1, align 8, !tbaa !5
  %47 = load i32, ptr %2, align 4, !tbaa !32
  %48 = shl i32 %47, 12
  %49 = add i32 %48, 4096
  %50 = sext i32 %49 to i64
  %51 = call ptr @realloc(ptr noundef %46, i64 noundef %50) #21
  store ptr %51, ptr %1, align 8, !tbaa !5
  %52 = load i32, ptr %2, align 4, !tbaa !32
  %53 = add nsw i32 %52, 1
  store i32 %53, ptr %2, align 4, !tbaa !32
  %54 = shl nsw i32 %52, 12
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %51, i64 %55
  %57 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %56, ptr noundef nonnull dereferenceable(1) %4) #16
  br label %23

58:                                               ; preds = %23, %10
  %59 = call i32 @closedir(ptr noundef %6)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #16
  ret void
}

declare void @register_outputfile(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) local_unnamed_addr #3

; Function Attrs: noreturn nounwind uwtable
define internal void @sighandler(i32 %0) #11 {
  %2 = alloca %struct.termios, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #16
  %3 = load ptr, ptr @stdin, align 8, !tbaa !5
  %4 = tail call i32 @fileno(ptr noundef %3) #16
  %5 = call i32 @tcgetattr(i32 noundef %4, ptr noundef nonnull %2) #16
  %6 = getelementptr inbounds %struct.termios, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !57
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 4, !tbaa !57
  %9 = load ptr, ptr @stdin, align 8, !tbaa !5
  %10 = call i32 @fileno(ptr noundef %9) #16
  %11 = call i32 @tcsetattr(i32 noundef %10, i32 noundef 0, ptr noundef nonnull %2) #16
  %12 = load ptr, ptr @control, align 8, !tbaa !5
  call void @unlink_files(ptr noundef %12) #16
  call void @exit(i32 noundef 0) #18
  unreachable
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #10

declare void @setup_ram(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

declare zeroext i1 @decompress_file(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @get_fileinfo(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @compress_file(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #13

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #13

declare void @fatal_exit(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noalias noundef ptr @opendir(ptr nocapture noundef readonly) local_unnamed_addr #10

declare ptr @readdir64(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind
declare noundef i32 @closedir(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @unlink_files(ptr noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #14 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nounwind }
attributes #17 = { nounwind willreturn memory(read) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind allocsize(0) }
attributes #20 = { cold }
attributes #21 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !11, i64 208}
!10 = !{!"rzip_control", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !6, i64 32, !6, i64 40, !6, i64 48, !6, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !6, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !6, i64 136, !6, i64 144, !6, i64 152, !7, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !7, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !12, i64 240, !7, i64 244, !7, i64 245, !7, i64 246, !11, i64 248, !11, i64 256, !12, i64 264, !12, i64 268, !12, i64 272, !11, i64 280, !11, i64 288, !6, i64 296, !6, i64 304, !7, i64 312, !6, i64 320, !12, i64 328, !6, i64 336, !7, i64 344, !7, i64 384, !7, i64 385, !13, i64 386, !7, i64 392, !14, i64 424, !7, i64 580, !11, i64 600, !15, i64 608, !6, i64 632, !7, i64 640, !6, i64 648, !11, i64 656, !11, i64 664, !6, i64 672, !7, i64 680, !6, i64 688, !7, i64 696, !12, i64 700, !6, i64 704, !6, i64 712, !6, i64 720, !6, i64 728, !7, i64 736, !16, i64 744, !6, i64 832, !6, i64 840, !6, i64 848, !6, i64 856}
!11 = !{!"long", !7, i64 0}
!12 = !{!"int", !7, i64 0}
!13 = !{!"_Bool", !7, i64 0}
!14 = !{!"md5_ctx", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !12, i64 24, !7, i64 28}
!15 = !{!"checksum", !6, i64 0, !6, i64 8, !11, i64 16}
!16 = !{!"sliding_buffer", !6, i64 0, !6, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !12, i64 80}
!17 = !{!10, !7, i64 244}
!18 = !{!19, !6, i64 0}
!19 = !{!"option", !6, i64 0, !12, i64 8, !6, i64 16, !12, i64 24}
!20 = !{!10, !6, i64 32}
!21 = !{!10, !6, i64 136}
!22 = !{!10, !7, i64 160}
!23 = !{!10, !11, i64 216}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.mustprogress"}
!26 = !{!10, !6, i64 40}
!27 = !{!"branch_weights", i32 2000, i32 1}
!28 = !{!10, !6, i64 16}
!29 = !{!10, !6, i64 152}
!30 = !{!10, !12, i64 240}
!31 = !{!10, !11, i64 200}
!32 = !{!12, !12, i64 0}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!35, !12, i64 24}
!35 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !12, i64 28, !12, i64 32, !12, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !36, i64 72, !36, i64 88, !36, i64 104, !7, i64 120}
!36 = !{!"timespec", !11, i64 0, !11, i64 8}
!37 = !{!10, !6, i64 0}
!38 = !{!10, !6, i64 8}
!39 = !{!40, !12, i64 136}
!40 = !{!"sigaction", !7, i64 0, !41, i64 8, !12, i64 136, !6, i64 144}
!41 = !{!"", !7, i64 0}
!42 = !{!7, !7, i64 0}
!43 = !{!10, !6, i64 48}
!44 = !{!10, !11, i64 184}
!45 = !{!10, !11, i64 288}
!46 = !{!10, !11, i64 280}
!47 = !{!48, !11, i64 8}
!48 = !{!"timeval", !11, i64 0, !11, i64 8}
!49 = !{!48, !11, i64 0}
!50 = distinct !{!50, !25}
!51 = !{!10, !6, i64 720}
!52 = !{!10, !6, i64 728}
!53 = !{!10, !7, i64 696}
!54 = !{!10, !12, i64 700}
!55 = !{!10, !6, i64 144}
!56 = distinct !{!56, !25}
!57 = !{!58, !12, i64 12}
!58 = !{!"termios", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !7, i64 16, !7, i64 17, !12, i64 52, !12, i64 56}
