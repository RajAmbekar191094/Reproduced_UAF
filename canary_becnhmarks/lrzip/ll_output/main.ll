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
@control = internal global ptr null, align 8
@.str = private unnamed_addr constant [8 x i8] c"lrunzip\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"lrzcat\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"lrz\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stdout\00", align 1
@long_options = internal global [37 x %struct.option] [%struct.option { ptr @.str.43, i32 0, ptr null, i32 98 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 99 }, %struct.option { ptr @.str.44, i32 0, ptr null, i32 67 }, %struct.option { ptr @.str.45, i32 0, ptr null, i32 100 }, %struct.option { ptr @.str.46, i32 0, ptr null, i32 68 }, %struct.option { ptr @.str.47, i32 0, ptr null, i32 101 }, %struct.option { ptr @.str.48, i32 0, ptr null, i32 102 }, %struct.option { ptr @.str.49, i32 0, ptr null, i32 103 }, %struct.option { ptr @.str.50, i32 0, ptr null, i32 104 }, %struct.option { ptr @.str.51, i32 0, ptr null, i32 72 }, %struct.option { ptr @.str.52, i32 0, ptr null, i32 105 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 107 }, %struct.option { ptr @.str.53, i32 0, ptr null, i32 75 }, %struct.option { ptr @.str.54, i32 0, ptr null, i32 108 }, %struct.option { ptr @.str.55, i32 0, ptr null, i32 47 }, %struct.option { ptr @.str.56, i32 2, ptr null, i32 76 }, %struct.option { ptr @.str.57, i32 0, ptr null, i32 76 }, %struct.option { ptr @.str.58, i32 1, ptr null, i32 109 }, %struct.option { ptr @.str.59, i32 0, ptr null, i32 110 }, %struct.option { ptr @.str.60, i32 1, ptr null, i32 78 }, %struct.option { ptr @.str.61, i32 1, ptr null, i32 111 }, %struct.option { ptr @.str.62, i32 1, ptr null, i32 79 }, %struct.option { ptr @.str.63, i32 1, ptr null, i32 112 }, %struct.option { ptr @.str.64, i32 0, ptr null, i32 80 }, %struct.option { ptr @.str.65, i32 0, ptr null, i32 113 }, %struct.option { ptr @.str.66, i32 0, ptr null, i32 114 }, %struct.option { ptr @.str.67, i32 1, ptr null, i32 83 }, %struct.option { ptr @.str.68, i32 0, ptr null, i32 116 }, %struct.option { ptr @.str.69, i32 1, ptr null, i32 84 }, %struct.option { ptr @.str.70, i32 0, ptr null, i32 85 }, %struct.option { ptr @.str.71, i32 0, ptr null, i32 118 }, %struct.option { ptr @.str.72, i32 0, ptr null, i32 86 }, %struct.option { ptr @.str.73, i32 1, ptr null, i32 119 }, %struct.option { ptr @.str.74, i32 0, ptr null, i32 122 }, %struct.option { ptr @.str.75, i32 0, ptr null, i32 49 }, %struct.option { ptr @.str.76, i32 0, ptr null, i32 57 }, %struct.option zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"keep\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"LRZIP\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"NOCONFIG\00", align 1
@coptions = internal global ptr @.str.77, align 8
@loptions = internal global ptr @.str.78, align 8
@.str.7 = private unnamed_addr constant [9 x i8] c"./main.c\00", align 1
@__func__.main = private unnamed_addr constant [5 x i8] c"main\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"Can only use one of -l, -b, -g, -z or -n\0A\00", align 1
@optarg = external global ptr, align 8
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
@optind = external global i32, align 4
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
@stderr = external global ptr, align 8
@stdout = external global ptr, align 8
@stdin = external global ptr, align 8
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

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.timeval, align 8
  %10 = alloca %struct.timeval, align 8
  %11 = alloca %struct.sigaction, align 8
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca ptr, align 8
  %19 = alloca ptr, align 8
  %20 = alloca ptr, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8, align 1
  %25 = alloca %struct.stat, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %6, align 1
  store i8 0, ptr %7, align 1
  store i8 0, ptr %8, align 1
  store ptr @base_control, ptr @control, align 8
  %26 = load ptr, ptr @control, align 8
  %27 = call zeroext i1 @initialise_control(ptr noundef %26)
  %28 = load ptr, ptr %5, align 8
  %29 = getelementptr inbounds ptr, ptr %28, i64 0
  %30 = load ptr, ptr %29, align 8
  %31 = call ptr @__xpg_basename(ptr noundef %30) #9
  store ptr %31, ptr %19, align 8
  %32 = load ptr, ptr %19, align 8
  %33 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str) #10
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %2
  %36 = load ptr, ptr @control, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 26
  %38 = load i64, ptr %37, align 8
  %39 = or i64 %38, 16
  store i64 %39, ptr %37, align 8
  br label %66

40:                                               ; preds = %2
  %41 = load ptr, ptr %19, align 8
  %42 = call i32 @strcmp(ptr noundef %41, ptr noundef @.str.1) #10
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr @control, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 26
  %47 = load i64, ptr %46, align 8
  %48 = or i64 %47, 8208
  store i64 %48, ptr %46, align 8
  store i8 1, ptr %6, align 1
  br label %65

49:                                               ; preds = %40
  %50 = load ptr, ptr %19, align 8
  %51 = call i32 @strcmp(ptr noundef %50, ptr noundef @.str.2) #10
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load ptr, ptr @control, align 8
  %55 = getelementptr inbounds %struct.rzip_control, ptr %54, i32 0, i32 26
  %56 = load i64, ptr %55, align 8
  %57 = and i64 %56, -2
  store i64 %57, ptr %55, align 8
  %58 = load ptr, ptr @control, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 31
  store i8 0, ptr %59, align 4
  %60 = load ptr, ptr @control, align 8
  %61 = getelementptr inbounds %struct.rzip_control, ptr %60, i32 0, i32 26
  %62 = load i64, ptr %61, align 8
  %63 = and i64 %62, -3
  store i64 %63, ptr %61, align 8
  store i8 1, ptr %7, align 1
  store ptr @.str.3, ptr getelementptr inbounds ([37 x %struct.option], ptr @long_options, i64 0, i64 1), align 16
  store ptr @.str.4, ptr getelementptr inbounds ([37 x %struct.option], ptr @long_options, i64 0, i64 11), align 16
  br label %64

64:                                               ; preds = %53, %49
  br label %65

65:                                               ; preds = %64, %44
  br label %66

66:                                               ; preds = %65, %35
  call void @CrcGenerateTable()
  %67 = call ptr @getenv(ptr noundef @.str.5) #9
  store ptr %67, ptr %18, align 8
  %68 = load ptr, ptr %18, align 8
  %69 = icmp eq ptr %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load ptr, ptr @control, align 8
  %72 = call zeroext i1 @read_config(ptr noundef %71)
  br label %81

73:                                               ; preds = %66
  %74 = load ptr, ptr %18, align 8
  %75 = call ptr @strstr(ptr noundef %74, ptr noundef @.str.6) #10
  %76 = icmp ne ptr %75, null
  br i1 %76, label %80, label %77

77:                                               ; preds = %73
  %78 = load ptr, ptr @control, align 8
  %79 = call zeroext i1 @read_config(ptr noundef %78)
  br label %80

80:                                               ; preds = %77, %73
  br label %81

81:                                               ; preds = %80, %70
  br label %82

82:                                               ; preds = %506, %81
  %83 = load i32, ptr %4, align 4
  %84 = load ptr, ptr %5, align 8
  %85 = load i8, ptr %7, align 1
  %86 = trunc i8 %85 to i1
  br i1 %86, label %87, label %89

87:                                               ; preds = %82
  %88 = load ptr, ptr @coptions, align 8
  br label %91

89:                                               ; preds = %82
  %90 = load ptr, ptr @loptions, align 8
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi ptr [ %88, %87 ], [ %90, %89 ]
  %93 = call i32 @getopt_long(i32 noundef %83, ptr noundef %84, ptr noundef %92, ptr noundef @long_options, ptr noundef %15) #9
  store i32 %93, ptr %14, align 4
  %94 = icmp ne i32 %93, -1
  br i1 %94, label %95, label %507

95:                                               ; preds = %91
  %96 = load i32, ptr %14, align 4
  switch i32 %96, label %506 [
    i32 98, label %97
    i32 99, label %110
    i32 67, label %120
    i32 100, label %129
    i32 68, label %134
    i32 101, label %139
    i32 102, label %144
    i32 103, label %149
    i32 104, label %162
    i32 63, label %162
    i32 72, label %165
    i32 105, label %170
    i32 107, label %175
    i32 75, label %184
    i32 108, label %189
    i32 76, label %202
    i32 109, label %226
    i32 110, label %234
    i32 78, label %247
    i32 111, label %267
    i32 79, label %293
    i32 112, label %345
    i32 80, label %357
    i32 113, label %362
    i32 114, label %367
    i32 83, label %368
    i32 116, label %392
    i32 84, label %420
    i32 85, label %425
    i32 118, label %430
    i32 86, label %476
    i32 119, label %482
    i32 122, label %487
    i32 49, label %500
    i32 50, label %500
    i32 51, label %500
    i32 52, label %500
    i32 53, label %500
    i32 54, label %500
    i32 55, label %500
    i32 56, label %500
    i32 57, label %500
  ]

97:                                               ; preds = %95
  %98 = load ptr, ptr @control, align 8
  %99 = getelementptr inbounds %struct.rzip_control, ptr %98, i32 0, i32 26
  %100 = load i64, ptr %99, align 8
  %101 = and i64 %100, 992
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %97
  %104 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %104, i32 noundef 356, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.8)
  br label %105

105:                                              ; preds = %103, %97
  %106 = load ptr, ptr @control, align 8
  %107 = getelementptr inbounds %struct.rzip_control, ptr %106, i32 0, i32 26
  %108 = load i64, ptr %107, align 8
  %109 = or i64 %108, 128
  store i64 %109, ptr %107, align 8
  br label %506

110:                                              ; preds = %95
  %111 = load i8, ptr %7, align 1
  %112 = trunc i8 %111 to i1
  br i1 %112, label %113, label %119

113:                                              ; preds = %110
  %114 = load ptr, ptr @control, align 8
  %115 = getelementptr inbounds %struct.rzip_control, ptr %114, i32 0, i32 26
  %116 = load i64, ptr %115, align 8
  %117 = or i64 %116, 2
  store i64 %117, ptr %115, align 8
  %118 = load ptr, ptr @control, align 8
  call void @set_stdout(ptr noundef %118)
  br label %506

119:                                              ; preds = %110
  br label %120

120:                                              ; preds = %95, %119
  %121 = load ptr, ptr @control, align 8
  %122 = getelementptr inbounds %struct.rzip_control, ptr %121, i32 0, i32 26
  %123 = load i64, ptr %122, align 8
  %124 = or i64 %123, 262144
  store i64 %124, ptr %122, align 8
  %125 = load ptr, ptr @control, align 8
  %126 = getelementptr inbounds %struct.rzip_control, ptr %125, i32 0, i32 26
  %127 = load i64, ptr %126, align 8
  %128 = or i64 %127, 65536
  store i64 %128, ptr %126, align 8
  br label %506

129:                                              ; preds = %95
  %130 = load ptr, ptr @control, align 8
  %131 = getelementptr inbounds %struct.rzip_control, ptr %130, i32 0, i32 26
  %132 = load i64, ptr %131, align 8
  %133 = or i64 %132, 16
  store i64 %133, ptr %131, align 8
  br label %506

134:                                              ; preds = %95
  %135 = load ptr, ptr @control, align 8
  %136 = getelementptr inbounds %struct.rzip_control, ptr %135, i32 0, i32 26
  %137 = load i64, ptr %136, align 8
  %138 = and i64 %137, -3
  store i64 %138, ptr %136, align 8
  br label %506

139:                                              ; preds = %95
  %140 = load ptr, ptr @control, align 8
  %141 = getelementptr inbounds %struct.rzip_control, ptr %140, i32 0, i32 26
  %142 = load i64, ptr %141, align 8
  %143 = or i64 %142, 8388608
  store i64 %143, ptr %141, align 8
  br label %506

144:                                              ; preds = %95
  %145 = load ptr, ptr @control, align 8
  %146 = getelementptr inbounds %struct.rzip_control, ptr %145, i32 0, i32 26
  %147 = load i64, ptr %146, align 8
  %148 = or i64 %147, 8
  store i64 %148, ptr %146, align 8
  br label %506

149:                                              ; preds = %95
  %150 = load ptr, ptr @control, align 8
  %151 = getelementptr inbounds %struct.rzip_control, ptr %150, i32 0, i32 26
  %152 = load i64, ptr %151, align 8
  %153 = and i64 %152, 992
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %149
  %156 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %156, i32 noundef 383, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.8)
  br label %157

157:                                              ; preds = %155, %149
  %158 = load ptr, ptr @control, align 8
  %159 = getelementptr inbounds %struct.rzip_control, ptr %158, i32 0, i32 26
  %160 = load i64, ptr %159, align 8
  %161 = or i64 %160, 256
  store i64 %161, ptr %159, align 8
  br label %506

162:                                              ; preds = %95, %95
  %163 = load i8, ptr %7, align 1
  %164 = trunc i8 %163 to i1
  call void @usage(i1 noundef zeroext %164)
  store i32 -1, ptr %3, align 4
  br label %1051

165:                                              ; preds = %95
  %166 = load ptr, ptr @control, align 8
  %167 = getelementptr inbounds %struct.rzip_control, ptr %166, i32 0, i32 26
  %168 = load i64, ptr %167, align 8
  %169 = or i64 %168, 65536
  store i64 %169, ptr %167, align 8
  br label %506

170:                                              ; preds = %95
  %171 = load ptr, ptr @control, align 8
  %172 = getelementptr inbounds %struct.rzip_control, ptr %171, i32 0, i32 26
  %173 = load i64, ptr %172, align 8
  %174 = or i64 %173, 16384
  store i64 %174, ptr %172, align 8
  br label %506

175:                                              ; preds = %95
  %176 = load i8, ptr %7, align 1
  %177 = trunc i8 %176 to i1
  br i1 %177, label %178, label %183

178:                                              ; preds = %175
  %179 = load ptr, ptr @control, align 8
  %180 = getelementptr inbounds %struct.rzip_control, ptr %179, i32 0, i32 26
  %181 = load i64, ptr %180, align 8
  %182 = or i64 %181, 2
  store i64 %182, ptr %180, align 8
  br label %506

183:                                              ; preds = %175
  br label %184

184:                                              ; preds = %95, %183
  %185 = load ptr, ptr @control, align 8
  %186 = getelementptr inbounds %struct.rzip_control, ptr %185, i32 0, i32 26
  %187 = load i64, ptr %186, align 8
  %188 = or i64 %187, 524288
  store i64 %188, ptr %186, align 8
  br label %506

189:                                              ; preds = %95
  %190 = load ptr, ptr @control, align 8
  %191 = getelementptr inbounds %struct.rzip_control, ptr %190, i32 0, i32 26
  %192 = load i64, ptr %191, align 8
  %193 = and i64 %192, 992
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %197

195:                                              ; preds = %189
  %196 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %196, i32 noundef 406, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.8)
  br label %197

197:                                              ; preds = %195, %189
  %198 = load ptr, ptr @control, align 8
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i32 0, i32 26
  %200 = load i64, ptr %199, align 8
  %201 = or i64 %200, 64
  store i64 %201, ptr %199, align 8
  br label %506

202:                                              ; preds = %95
  %203 = load i8, ptr %7, align 1
  %204 = trunc i8 %203 to i1
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  call void @license()
  call void @exit(i32 noundef 0) #11
  unreachable

206:                                              ; preds = %202
  %207 = load ptr, ptr @optarg, align 8
  %208 = call i32 @atoi(ptr noundef %207) #10
  %209 = trunc i32 %208 to i8
  %210 = load ptr, ptr @control, align 8
  %211 = getelementptr inbounds %struct.rzip_control, ptr %210, i32 0, i32 20
  store i8 %209, ptr %211, align 8
  %212 = load ptr, ptr @control, align 8
  %213 = getelementptr inbounds %struct.rzip_control, ptr %212, i32 0, i32 20
  %214 = load i8, ptr %213, align 8
  %215 = zext i8 %214 to i32
  %216 = icmp slt i32 %215, 1
  br i1 %216, label %223, label %217

217:                                              ; preds = %206
  %218 = load ptr, ptr @control, align 8
  %219 = getelementptr inbounds %struct.rzip_control, ptr %218, i32 0, i32 20
  %220 = load i8, ptr %219, align 8
  %221 = zext i8 %220 to i32
  %222 = icmp sgt i32 %221, 9
  br i1 %222, label %223, label %225

223:                                              ; preds = %217, %206
  %224 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %224, i32 noundef 416, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.9)
  br label %225

225:                                              ; preds = %223, %217
  br label %506

226:                                              ; preds = %95
  %227 = load ptr, ptr @optarg, align 8
  %228 = call i64 @atol(ptr noundef %227) #10
  %229 = mul nsw i64 %228, 1024
  %230 = mul nsw i64 %229, 1024
  %231 = mul nsw i64 %230, 100
  %232 = load ptr, ptr @control, align 8
  %233 = getelementptr inbounds %struct.rzip_control, ptr %232, i32 0, i32 27
  store i64 %231, ptr %233, align 8
  br label %506

234:                                              ; preds = %95
  %235 = load ptr, ptr @control, align 8
  %236 = getelementptr inbounds %struct.rzip_control, ptr %235, i32 0, i32 26
  %237 = load i64, ptr %236, align 8
  %238 = and i64 %237, 992
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %242

240:                                              ; preds = %234
  %241 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %241, i32 noundef 423, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.8)
  br label %242

242:                                              ; preds = %240, %234
  %243 = load ptr, ptr @control, align 8
  %244 = getelementptr inbounds %struct.rzip_control, ptr %243, i32 0, i32 26
  %245 = load i64, ptr %244, align 8
  %246 = or i64 %245, 32
  store i64 %246, ptr %244, align 8
  br label %506

247:                                              ; preds = %95
  %248 = load ptr, ptr @optarg, align 8
  %249 = call i32 @atoi(ptr noundef %248) #10
  %250 = trunc i32 %249 to i8
  %251 = load ptr, ptr @control, align 8
  %252 = getelementptr inbounds %struct.rzip_control, ptr %251, i32 0, i32 31
  store i8 %250, ptr %252, align 4
  %253 = load ptr, ptr @control, align 8
  %254 = getelementptr inbounds %struct.rzip_control, ptr %253, i32 0, i32 31
  %255 = load i8, ptr %254, align 4
  %256 = sext i8 %255 to i32
  %257 = icmp slt i32 %256, -20
  br i1 %257, label %264, label %258

258:                                              ; preds = %247
  %259 = load ptr, ptr @control, align 8
  %260 = getelementptr inbounds %struct.rzip_control, ptr %259, i32 0, i32 31
  %261 = load i8, ptr %260, align 4
  %262 = sext i8 %261 to i32
  %263 = icmp sgt i32 %262, 19
  br i1 %263, label %264, label %266

264:                                              ; preds = %258, %247
  %265 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %265, i32 noundef 429, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.10)
  br label %266

266:                                              ; preds = %264, %258
  br label %506

267:                                              ; preds = %95
  %268 = load ptr, ptr @control, align 8
  %269 = getelementptr inbounds %struct.rzip_control, ptr %268, i32 0, i32 5
  %270 = load ptr, ptr %269, align 8
  %271 = icmp ne ptr %270, null
  br i1 %271, label %272, label %274

272:                                              ; preds = %267
  %273 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %273, i32 noundef 433, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.11)
  br label %274

274:                                              ; preds = %272, %267
  %275 = load ptr, ptr @control, align 8
  %276 = getelementptr inbounds %struct.rzip_control, ptr %275, i32 0, i32 26
  %277 = load i64, ptr %276, align 8
  %278 = and i64 %277, 8192
  %279 = icmp ne i64 %278, 0
  %280 = xor i1 %279, true
  %281 = xor i1 %280, true
  %282 = zext i1 %281 to i32
  %283 = sext i32 %282 to i64
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %287

285:                                              ; preds = %274
  %286 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %286, i32 noundef 435, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.12)
  br label %287

287:                                              ; preds = %285, %274
  %288 = load ptr, ptr @optarg, align 8
  %289 = load ptr, ptr @control, align 8
  %290 = getelementptr inbounds %struct.rzip_control, ptr %289, i32 0, i32 2
  store ptr %288, ptr %290, align 8
  %291 = load ptr, ptr @control, align 8
  %292 = getelementptr inbounds %struct.rzip_control, ptr %291, i32 0, i32 19
  store ptr @.str.13, ptr %292, align 8
  br label %506

293:                                              ; preds = %95
  %294 = load ptr, ptr @control, align 8
  %295 = getelementptr inbounds %struct.rzip_control, ptr %294, i32 0, i32 2
  %296 = load ptr, ptr %295, align 8
  %297 = icmp ne ptr %296, null
  br i1 %297, label %298, label %300

298:                                              ; preds = %293
  %299 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %299, i32 noundef 441, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.14)
  br label %300

300:                                              ; preds = %298, %293
  %301 = load ptr, ptr @control, align 8
  %302 = getelementptr inbounds %struct.rzip_control, ptr %301, i32 0, i32 26
  %303 = load i64, ptr %302, align 8
  %304 = and i64 %303, 8192
  %305 = icmp ne i64 %304, 0
  %306 = xor i1 %305, true
  %307 = xor i1 %306, true
  %308 = zext i1 %307 to i32
  %309 = sext i32 %308 to i64
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %300
  %312 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %312, i32 noundef 443, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.15)
  br label %313

313:                                              ; preds = %311, %300
  %314 = load ptr, ptr @optarg, align 8
  %315 = call i64 @strlen(ptr noundef %314) #10
  %316 = add i64 %315, 2
  %317 = call noalias ptr @malloc(i64 noundef %316) #12
  %318 = load ptr, ptr @control, align 8
  %319 = getelementptr inbounds %struct.rzip_control, ptr %318, i32 0, i32 5
  store ptr %317, ptr %319, align 8
  %320 = load ptr, ptr @control, align 8
  %321 = getelementptr inbounds %struct.rzip_control, ptr %320, i32 0, i32 5
  %322 = load ptr, ptr %321, align 8
  %323 = icmp eq ptr %322, null
  br i1 %323, label %324, label %326

324:                                              ; preds = %313
  %325 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %325, i32 noundef 446, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.16)
  br label %326

326:                                              ; preds = %324, %313
  %327 = load ptr, ptr @control, align 8
  %328 = getelementptr inbounds %struct.rzip_control, ptr %327, i32 0, i32 5
  %329 = load ptr, ptr %328, align 8
  %330 = load ptr, ptr @optarg, align 8
  %331 = call ptr @strcpy(ptr noundef %329, ptr noundef %330) #9
  %332 = load ptr, ptr @optarg, align 8
  %333 = load ptr, ptr @optarg, align 8
  %334 = call i64 @strlen(ptr noundef %333) #10
  %335 = getelementptr inbounds i8, ptr %332, i64 %334
  %336 = getelementptr inbounds i8, ptr %335, i64 -1
  %337 = call i32 @strcmp(ptr noundef %336, ptr noundef @.str.17) #10
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %344

339:                                              ; preds = %326
  %340 = load ptr, ptr @control, align 8
  %341 = getelementptr inbounds %struct.rzip_control, ptr %340, i32 0, i32 5
  %342 = load ptr, ptr %341, align 8
  %343 = call ptr @strcat(ptr noundef %342, ptr noundef @.str.17) #9
  br label %344

344:                                              ; preds = %339, %326
  br label %506

345:                                              ; preds = %95
  %346 = load ptr, ptr @optarg, align 8
  %347 = call i32 @atoi(ptr noundef %346) #10
  %348 = load ptr, ptr @control, align 8
  %349 = getelementptr inbounds %struct.rzip_control, ptr %348, i32 0, i32 30
  store i32 %347, ptr %349, align 8
  %350 = load ptr, ptr @control, align 8
  %351 = getelementptr inbounds %struct.rzip_control, ptr %350, i32 0, i32 30
  %352 = load i32, ptr %351, align 8
  %353 = icmp slt i32 %352, 1
  br i1 %353, label %354, label %356

354:                                              ; preds = %345
  %355 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %355, i32 noundef 454, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.18)
  br label %356

356:                                              ; preds = %354, %345
  br label %506

357:                                              ; preds = %95
  %358 = load ptr, ptr @control, align 8
  %359 = getelementptr inbounds %struct.rzip_control, ptr %358, i32 0, i32 26
  %360 = load i64, ptr %359, align 8
  %361 = or i64 %360, 1
  store i64 %361, ptr %359, align 8
  br label %506

362:                                              ; preds = %95
  %363 = load ptr, ptr @control, align 8
  %364 = getelementptr inbounds %struct.rzip_control, ptr %363, i32 0, i32 26
  %365 = load i64, ptr %364, align 8
  %366 = and i64 %365, -2
  store i64 %366, ptr %364, align 8
  br label %506

367:                                              ; preds = %95
  store i8 1, ptr %8, align 1
  br label %506

368:                                              ; preds = %95
  %369 = load ptr, ptr @control, align 8
  %370 = getelementptr inbounds %struct.rzip_control, ptr %369, i32 0, i32 2
  %371 = load ptr, ptr %370, align 8
  %372 = icmp ne ptr %371, null
  br i1 %372, label %373, label %375

373:                                              ; preds = %368
  %374 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %374, i32 noundef 467, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.19)
  br label %375

375:                                              ; preds = %373, %368
  %376 = load ptr, ptr @control, align 8
  %377 = getelementptr inbounds %struct.rzip_control, ptr %376, i32 0, i32 26
  %378 = load i64, ptr %377, align 8
  %379 = and i64 %378, 8192
  %380 = icmp ne i64 %379, 0
  %381 = xor i1 %380, true
  %382 = xor i1 %381, true
  %383 = zext i1 %382 to i32
  %384 = sext i32 %383 to i64
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %375
  %387 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %387, i32 noundef 469, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.20)
  br label %388

388:                                              ; preds = %386, %375
  %389 = load ptr, ptr @optarg, align 8
  %390 = load ptr, ptr @control, align 8
  %391 = getelementptr inbounds %struct.rzip_control, ptr %390, i32 0, i32 19
  store ptr %389, ptr %391, align 8
  br label %506

392:                                              ; preds = %95
  %393 = load ptr, ptr @control, align 8
  %394 = getelementptr inbounds %struct.rzip_control, ptr %393, i32 0, i32 2
  %395 = load ptr, ptr %394, align 8
  %396 = icmp ne ptr %395, null
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %398, i32 noundef 474, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.21)
  br label %399

399:                                              ; preds = %397, %392
  %400 = load i8, ptr %7, align 1
  %401 = trunc i8 %400 to i1
  br i1 %401, label %402, label %407

402:                                              ; preds = %399
  %403 = load ptr, ptr @control, align 8
  %404 = getelementptr inbounds %struct.rzip_control, ptr %403, i32 0, i32 26
  %405 = load i64, ptr %404, align 8
  %406 = or i64 %405, 2
  store i64 %406, ptr %404, align 8
  br label %407

407:                                              ; preds = %402, %399
  %408 = load ptr, ptr @control, align 8
  %409 = getelementptr inbounds %struct.rzip_control, ptr %408, i32 0, i32 26
  %410 = load i64, ptr %409, align 8
  %411 = and i64 %410, 2
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %415, label %413

413:                                              ; preds = %407
  %414 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %414, i32 noundef 478, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.22)
  br label %415

415:                                              ; preds = %413, %407
  %416 = load ptr, ptr @control, align 8
  %417 = getelementptr inbounds %struct.rzip_control, ptr %416, i32 0, i32 26
  %418 = load i64, ptr %417, align 8
  %419 = or i64 %418, 4
  store i64 %419, ptr %417, align 8
  br label %506

420:                                              ; preds = %95
  %421 = load ptr, ptr @control, align 8
  %422 = getelementptr inbounds %struct.rzip_control, ptr %421, i32 0, i32 26
  %423 = load i64, ptr %422, align 8
  %424 = and i64 %423, -1048577
  store i64 %424, ptr %422, align 8
  br label %506

425:                                              ; preds = %95
  %426 = load ptr, ptr @control, align 8
  %427 = getelementptr inbounds %struct.rzip_control, ptr %426, i32 0, i32 26
  %428 = load i64, ptr %427, align 8
  %429 = or i64 %428, 32768
  store i64 %429, ptr %427, align 8
  br label %506

430:                                              ; preds = %95
  %431 = load ptr, ptr @control, align 8
  %432 = getelementptr inbounds %struct.rzip_control, ptr %431, i32 0, i32 26
  %433 = load i64, ptr %432, align 8
  %434 = and i64 %433, 1
  %435 = icmp ne i64 %434, 0
  br i1 %435, label %441, label %436

436:                                              ; preds = %430
  %437 = load ptr, ptr @control, align 8
  %438 = getelementptr inbounds %struct.rzip_control, ptr %437, i32 0, i32 26
  %439 = load i64, ptr %438, align 8
  %440 = or i64 %439, 1
  store i64 %440, ptr %438, align 8
  br label %475

441:                                              ; preds = %430
  %442 = load ptr, ptr @control, align 8
  %443 = getelementptr inbounds %struct.rzip_control, ptr %442, i32 0, i32 26
  %444 = load i64, ptr %443, align 8
  %445 = and i64 %444, 1024
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %458, label %447

447:                                              ; preds = %441
  %448 = load ptr, ptr @control, align 8
  %449 = getelementptr inbounds %struct.rzip_control, ptr %448, i32 0, i32 26
  %450 = load i64, ptr %449, align 8
  %451 = and i64 %450, 2048
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %458, label %453

453:                                              ; preds = %447
  %454 = load ptr, ptr @control, align 8
  %455 = getelementptr inbounds %struct.rzip_control, ptr %454, i32 0, i32 26
  %456 = load i64, ptr %455, align 8
  %457 = or i64 %456, 1024
  store i64 %457, ptr %455, align 8
  br label %474

458:                                              ; preds = %447, %441
  %459 = load ptr, ptr @control, align 8
  %460 = getelementptr inbounds %struct.rzip_control, ptr %459, i32 0, i32 26
  %461 = load i64, ptr %460, align 8
  %462 = and i64 %461, 1024
  %463 = icmp ne i64 %462, 0
  br i1 %463, label %464, label %473

464:                                              ; preds = %458
  %465 = load ptr, ptr @control, align 8
  %466 = getelementptr inbounds %struct.rzip_control, ptr %465, i32 0, i32 26
  %467 = load i64, ptr %466, align 8
  %468 = and i64 %467, -1025
  store i64 %468, ptr %466, align 8
  %469 = load ptr, ptr @control, align 8
  %470 = getelementptr inbounds %struct.rzip_control, ptr %469, i32 0, i32 26
  %471 = load i64, ptr %470, align 8
  %472 = or i64 %471, 2048
  store i64 %472, ptr %470, align 8
  br label %473

473:                                              ; preds = %464, %458
  br label %474

474:                                              ; preds = %473, %453
  br label %475

475:                                              ; preds = %474, %436
  br label %506

476:                                              ; preds = %95
  br label %477

477:                                              ; preds = %476
  br label %478

478:                                              ; preds = %477
  %479 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %479, i32 noundef 1, i32 noundef 499, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.23, ptr noundef @.str.24)
  br label %480

480:                                              ; preds = %478
  br label %481

481:                                              ; preds = %480
  call void @exit(i32 noundef 0) #11
  unreachable

482:                                              ; preds = %95
  %483 = load ptr, ptr @optarg, align 8
  %484 = call i64 @atol(ptr noundef %483) #10
  %485 = load ptr, ptr @control, align 8
  %486 = getelementptr inbounds %struct.rzip_control, ptr %485, i32 0, i32 25
  store i64 %484, ptr %486, align 8
  br label %506

487:                                              ; preds = %95
  %488 = load ptr, ptr @control, align 8
  %489 = getelementptr inbounds %struct.rzip_control, ptr %488, i32 0, i32 26
  %490 = load i64, ptr %489, align 8
  %491 = and i64 %490, 992
  %492 = icmp ne i64 %491, 0
  br i1 %492, label %493, label %495

493:                                              ; preds = %487
  %494 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %494, i32 noundef 507, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.8)
  br label %495

495:                                              ; preds = %493, %487
  %496 = load ptr, ptr @control, align 8
  %497 = getelementptr inbounds %struct.rzip_control, ptr %496, i32 0, i32 26
  %498 = load i64, ptr %497, align 8
  %499 = or i64 %498, 512
  store i64 %499, ptr %497, align 8
  br label %506

500:                                              ; preds = %95, %95, %95, %95, %95, %95, %95, %95, %95
  %501 = load i32, ptr %14, align 4
  %502 = sub nsw i32 %501, 48
  %503 = trunc i32 %502 to i8
  %504 = load ptr, ptr @control, align 8
  %505 = getelementptr inbounds %struct.rzip_control, ptr %504, i32 0, i32 20
  store i8 %503, ptr %505, align 8
  br label %506

506:                                              ; preds = %95, %500, %495, %482, %475, %425, %420, %415, %388, %367, %362, %357, %356, %344, %287, %266, %242, %226, %225, %197, %184, %178, %170, %165, %157, %144, %139, %134, %129, %120, %113, %105
  br label %82, !llvm.loop !6

507:                                              ; preds = %91
  %508 = load i32, ptr @optind, align 4
  %509 = load i32, ptr %4, align 4
  %510 = sub nsw i32 %509, %508
  store i32 %510, ptr %4, align 4
  %511 = load i32, ptr @optind, align 4
  %512 = load ptr, ptr %5, align 8
  %513 = sext i32 %511 to i64
  %514 = getelementptr inbounds ptr, ptr %512, i64 %513
  store ptr %514, ptr %5, align 8
  %515 = load ptr, ptr @control, align 8
  %516 = getelementptr inbounds %struct.rzip_control, ptr %515, i32 0, i32 2
  %517 = load ptr, ptr %516, align 8
  %518 = icmp ne ptr %517, null
  br i1 %518, label %519, label %530

519:                                              ; preds = %507
  %520 = load i32, ptr %4, align 4
  %521 = icmp sgt i32 %520, 1
  br i1 %521, label %522, label %524

522:                                              ; preds = %519
  %523 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %523, i32 noundef 529, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.25)
  br label %524

524:                                              ; preds = %522, %519
  %525 = load i8, ptr %8, align 1
  %526 = trunc i8 %525 to i1
  br i1 %526, label %527, label %529

527:                                              ; preds = %524
  %528 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %528, i32 noundef 531, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.26)
  br label %529

529:                                              ; preds = %527, %524
  br label %530

530:                                              ; preds = %529, %507
  %531 = load ptr, ptr @control, align 8
  %532 = getelementptr inbounds %struct.rzip_control, ptr %531, i32 0, i32 26
  %533 = load i64, ptr %532, align 8
  %534 = and i64 %533, 3072
  %535 = icmp ne i64 %534, 0
  br i1 %535, label %536, label %550

536:                                              ; preds = %530
  %537 = load ptr, ptr @control, align 8
  %538 = getelementptr inbounds %struct.rzip_control, ptr %537, i32 0, i32 26
  %539 = load i64, ptr %538, align 8
  %540 = and i64 %539, 1
  %541 = icmp ne i64 %540, 0
  br i1 %541, label %550, label %542

542:                                              ; preds = %536
  br label %543

543:                                              ; preds = %542
  %544 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %544, i32 noundef 535, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.27)
  br label %545

545:                                              ; preds = %543
  %546 = load ptr, ptr @control, align 8
  %547 = getelementptr inbounds %struct.rzip_control, ptr %546, i32 0, i32 26
  %548 = load i64, ptr %547, align 8
  %549 = or i64 %548, 1
  store i64 %549, ptr %547, align 8
  br label %550

550:                                              ; preds = %545, %536, %530
  %551 = load ptr, ptr @control, align 8
  %552 = getelementptr inbounds %struct.rzip_control, ptr %551, i32 0, i32 26
  %553 = load i64, ptr %552, align 8
  %554 = and i64 %553, 32768
  %555 = icmp ne i64 %554, 0
  br i1 %555, label %556, label %567

556:                                              ; preds = %550
  %557 = load ptr, ptr @control, align 8
  %558 = getelementptr inbounds %struct.rzip_control, ptr %557, i32 0, i32 25
  %559 = load i64, ptr %558, align 8
  %560 = icmp ne i64 %559, 0
  br i1 %560, label %561, label %567

561:                                              ; preds = %556
  br label %562

562:                                              ; preds = %561
  %563 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %563, i32 noundef 540, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.28)
  br label %564

564:                                              ; preds = %562
  %565 = load ptr, ptr @control, align 8
  %566 = getelementptr inbounds %struct.rzip_control, ptr %565, i32 0, i32 25
  store i64 0, ptr %566, align 8
  br label %567

567:                                              ; preds = %564, %556, %550
  %568 = load i32, ptr %4, align 4
  %569 = icmp slt i32 %568, 1
  br i1 %569, label %570, label %575

570:                                              ; preds = %567
  %571 = load ptr, ptr @control, align 8
  %572 = getelementptr inbounds %struct.rzip_control, ptr %571, i32 0, i32 26
  %573 = load i64, ptr %572, align 8
  %574 = or i64 %573, 4096
  store i64 %574, ptr %572, align 8
  br label %575

575:                                              ; preds = %570, %567
  %576 = load ptr, ptr @control, align 8
  %577 = getelementptr inbounds %struct.rzip_control, ptr %576, i32 0, i32 26
  %578 = load i64, ptr %577, align 8
  %579 = and i64 %578, 32768
  %580 = icmp ne i64 %579, 0
  br i1 %580, label %581, label %595

581:                                              ; preds = %575
  %582 = load ptr, ptr @control, align 8
  %583 = getelementptr inbounds %struct.rzip_control, ptr %582, i32 0, i32 26
  %584 = load i64, ptr %583, align 8
  %585 = and i64 %584, 4096
  %586 = icmp ne i64 %585, 0
  br i1 %586, label %587, label %595

587:                                              ; preds = %581
  br label %588

588:                                              ; preds = %587
  %589 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %589, i32 noundef 548, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.29)
  br label %590

590:                                              ; preds = %588
  %591 = load ptr, ptr @control, align 8
  %592 = getelementptr inbounds %struct.rzip_control, ptr %591, i32 0, i32 26
  %593 = load i64, ptr %592, align 8
  %594 = and i64 %593, -32769
  store i64 %594, ptr %592, align 8
  br label %595

595:                                              ; preds = %590, %581, %575
  %596 = load ptr, ptr @control, align 8
  call void @setup_overhead(ptr noundef %596)
  %597 = load ptr, ptr @control, align 8
  %598 = getelementptr inbounds %struct.rzip_control, ptr %597, i32 0, i32 31
  %599 = load i8, ptr %598, align 4
  %600 = sext i8 %599 to i32
  %601 = icmp sgt i32 %600, 0
  br i1 %601, label %602, label %626

602:                                              ; preds = %595
  %603 = load ptr, ptr @control, align 8
  %604 = getelementptr inbounds %struct.rzip_control, ptr %603, i32 0, i32 26
  %605 = load i64, ptr %604, align 8
  %606 = and i64 %605, 32
  %607 = icmp ne i64 %606, 0
  br i1 %607, label %626, label %608

608:                                              ; preds = %602
  %609 = load ptr, ptr @control, align 8
  %610 = getelementptr inbounds %struct.rzip_control, ptr %609, i32 0, i32 31
  %611 = load i8, ptr %610, align 4
  %612 = sext i8 %611 to i32
  %613 = sdiv i32 %612, 2
  %614 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %613) #9
  %615 = icmp eq i32 %614, -1
  %616 = xor i1 %615, true
  %617 = xor i1 %616, true
  %618 = zext i1 %617 to i32
  %619 = sext i32 %618 to i64
  %620 = icmp ne i64 %619, 0
  br i1 %620, label %621, label %625

621:                                              ; preds = %608
  br label %622

622:                                              ; preds = %621
  %623 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %623, i32 noundef 558, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.30)
  br label %624

624:                                              ; preds = %622
  br label %625

625:                                              ; preds = %624, %608
  br label %643

626:                                              ; preds = %602, %595
  %627 = load ptr, ptr @control, align 8
  %628 = getelementptr inbounds %struct.rzip_control, ptr %627, i32 0, i32 31
  %629 = load i8, ptr %628, align 4
  %630 = sext i8 %629 to i32
  %631 = call i32 @setpriority(i32 noundef 0, i32 noundef 0, i32 noundef %630) #9
  %632 = icmp eq i32 %631, -1
  %633 = xor i1 %632, true
  %634 = xor i1 %633, true
  %635 = zext i1 %634 to i32
  %636 = sext i32 %635 to i64
  %637 = icmp ne i64 %636, 0
  br i1 %637, label %638, label %642

638:                                              ; preds = %626
  br label %639

639:                                              ; preds = %638
  %640 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %640, i32 noundef 561, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.30)
  br label %641

641:                                              ; preds = %639
  br label %642

642:                                              ; preds = %641, %626
  br label %643

643:                                              ; preds = %642, %625
  store i32 0, ptr %15, align 4
  br label %644

644:                                              ; preds = %1047, %643
  %645 = load i32, ptr %15, align 4
  %646 = load i32, ptr %4, align 4
  %647 = icmp sle i32 %645, %646
  br i1 %647, label %648, label %1050

648:                                              ; preds = %644
  store ptr null, ptr %20, align 8
  store ptr null, ptr %21, align 8
  store i32 0, ptr %22, align 4
  store i32 0, ptr %23, align 4
  %649 = load i32, ptr %15, align 4
  %650 = load i32, ptr %4, align 4
  %651 = icmp slt i32 %649, %650
  br i1 %651, label %652, label %658

652:                                              ; preds = %648
  %653 = load ptr, ptr %5, align 8
  %654 = load i32, ptr %15, align 4
  %655 = sext i32 %654 to i64
  %656 = getelementptr inbounds ptr, ptr %653, i64 %655
  %657 = load ptr, ptr %656, align 8
  store ptr %657, ptr %21, align 8
  br label %669

658:                                              ; preds = %648
  %659 = load i32, ptr %15, align 4
  %660 = icmp eq i32 %659, 0
  br i1 %660, label %661, label %667

661:                                              ; preds = %658
  %662 = load ptr, ptr @control, align 8
  %663 = getelementptr inbounds %struct.rzip_control, ptr %662, i32 0, i32 26
  %664 = load i64, ptr %663, align 8
  %665 = and i64 %664, 4096
  %666 = icmp ne i64 %665, 0
  br i1 %666, label %668, label %667

667:                                              ; preds = %661, %658
  br label %1050

668:                                              ; preds = %661
  br label %669

669:                                              ; preds = %668, %652
  %670 = load ptr, ptr %21, align 8
  %671 = icmp ne ptr %670, null
  br i1 %671, label %672, label %722

672:                                              ; preds = %669
  %673 = load ptr, ptr %21, align 8
  %674 = call i32 @strcmp(ptr noundef %673, ptr noundef @.str.31) #10
  %675 = icmp eq i32 %674, 0
  br i1 %675, label %676, label %681

676:                                              ; preds = %672
  %677 = load ptr, ptr @control, align 8
  %678 = getelementptr inbounds %struct.rzip_control, ptr %677, i32 0, i32 26
  %679 = load i64, ptr %678, align 8
  %680 = or i64 %679, 4096
  store i64 %680, ptr %678, align 8
  br label %721

681:                                              ; preds = %672
  store i8 0, ptr %24, align 1
  %682 = load ptr, ptr %21, align 8
  %683 = call i32 @stat64(ptr noundef %682, ptr noundef %25) #9
  %684 = icmp ne i32 %683, 0
  %685 = xor i1 %684, true
  %686 = xor i1 %685, true
  %687 = zext i1 %686 to i32
  %688 = sext i32 %687 to i64
  %689 = icmp ne i64 %688, 0
  br i1 %689, label %690, label %693

690:                                              ; preds = %681
  %691 = load ptr, ptr @control, align 8
  %692 = load ptr, ptr %21, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %691, i32 noundef 581, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.32, ptr noundef %692)
  br label %693

693:                                              ; preds = %690, %681
  %694 = getelementptr inbounds %struct.stat, ptr %25, i32 0, i32 3
  %695 = load i32, ptr %694, align 8
  %696 = and i32 %695, 61440
  %697 = icmp eq i32 %696, 16384
  %698 = zext i1 %697 to i8
  store i8 %698, ptr %24, align 1
  %699 = load i8, ptr %8, align 1
  %700 = trunc i8 %699 to i1
  br i1 %700, label %711, label %701

701:                                              ; preds = %693
  %702 = load i8, ptr %24, align 1
  %703 = trunc i8 %702 to i1
  br i1 %703, label %709, label %704

704:                                              ; preds = %701
  %705 = getelementptr inbounds %struct.stat, ptr %25, i32 0, i32 3
  %706 = load i32, ptr %705, align 8
  %707 = and i32 %706, 61440
  %708 = icmp eq i32 %707, 32768
  br i1 %708, label %711, label %709

709:                                              ; preds = %704, %701
  %710 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %710, i32 noundef 585, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.33)
  br label %711

711:                                              ; preds = %709, %704, %693
  %712 = load i8, ptr %8, align 1
  %713 = trunc i8 %712 to i1
  br i1 %713, label %714, label %720

714:                                              ; preds = %711
  %715 = load i8, ptr %24, align 1
  %716 = trunc i8 %715 to i1
  br i1 %716, label %720, label %717

717:                                              ; preds = %714
  %718 = load ptr, ptr @control, align 8
  %719 = load ptr, ptr %21, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %718, i32 noundef 588, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.34, ptr noundef %719)
  br label %720

720:                                              ; preds = %717, %714, %711
  br label %721

721:                                              ; preds = %720, %676
  br label %722

722:                                              ; preds = %721, %669
  %723 = load i8, ptr %8, align 1
  %724 = trunc i8 %723 to i1
  br i1 %724, label %725, label %748

725:                                              ; preds = %722
  %726 = load ptr, ptr @control, align 8
  %727 = getelementptr inbounds %struct.rzip_control, ptr %726, i32 0, i32 26
  %728 = load i64, ptr %727, align 8
  %729 = and i64 %728, 4096
  %730 = icmp ne i64 %729, 0
  br i1 %730, label %737, label %731

731:                                              ; preds = %725
  %732 = load ptr, ptr @control, align 8
  %733 = getelementptr inbounds %struct.rzip_control, ptr %732, i32 0, i32 26
  %734 = load i64, ptr %733, align 8
  %735 = and i64 %734, 8192
  %736 = icmp ne i64 %735, 0
  br label %737

737:                                              ; preds = %731, %725
  %738 = phi i1 [ true, %725 ], [ %736, %731 ]
  %739 = xor i1 %738, true
  %740 = xor i1 %739, true
  %741 = zext i1 %740 to i32
  %742 = sext i32 %741 to i64
  %743 = icmp ne i64 %742, 0
  br i1 %743, label %744, label %746

744:                                              ; preds = %737
  %745 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %745, i32 noundef 594, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.35)
  br label %746

746:                                              ; preds = %744, %737
  %747 = load ptr, ptr %21, align 8
  call void @recurse_dirlist(ptr noundef %747, ptr noundef %20, ptr noundef %22)
  br label %748

748:                                              ; preds = %746, %722
  %749 = load ptr, ptr @control, align 8
  %750 = getelementptr inbounds %struct.rzip_control, ptr %749, i32 0, i32 26
  %751 = load i64, ptr %750, align 8
  %752 = and i64 %751, 16384
  %753 = icmp ne i64 %752, 0
  br i1 %753, label %754, label %762

754:                                              ; preds = %748
  %755 = load ptr, ptr @control, align 8
  %756 = getelementptr inbounds %struct.rzip_control, ptr %755, i32 0, i32 26
  %757 = load i64, ptr %756, align 8
  %758 = and i64 %757, 4096
  %759 = icmp ne i64 %758, 0
  br i1 %759, label %760, label %762

760:                                              ; preds = %754
  %761 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %761, i32 noundef 599, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.36)
  br label %762

762:                                              ; preds = %760, %754, %748
  br label %763

763:                                              ; preds = %1045, %762
  %764 = load i8, ptr %8, align 1
  %765 = trunc i8 %764 to i1
  br i1 %765, label %766, label %778

766:                                              ; preds = %763
  %767 = load i32, ptr %23, align 4
  %768 = load i32, ptr %22, align 4
  %769 = icmp sge i32 %767, %768
  br i1 %769, label %770, label %771

770:                                              ; preds = %766
  store ptr null, ptr %21, align 8
  br label %1047

771:                                              ; preds = %766
  %772 = load ptr, ptr %20, align 8
  %773 = load i32, ptr %23, align 4
  %774 = add nsw i32 %773, 1
  store i32 %774, ptr %23, align 4
  %775 = mul nsw i32 4096, %773
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds i8, ptr %772, i64 %776
  store ptr %777, ptr %21, align 8
  br label %778

778:                                              ; preds = %771, %763
  %779 = load ptr, ptr %21, align 8
  %780 = load ptr, ptr @control, align 8
  %781 = getelementptr inbounds %struct.rzip_control, ptr %780, i32 0, i32 0
  store ptr %779, ptr %781, align 8
  %782 = load ptr, ptr @control, align 8
  %783 = getelementptr inbounds %struct.rzip_control, ptr %782, i32 0, i32 2
  %784 = load ptr, ptr %783, align 8
  %785 = icmp ne ptr %784, null
  br i1 %785, label %786, label %792

786:                                              ; preds = %778
  %787 = load ptr, ptr @control, align 8
  %788 = getelementptr inbounds %struct.rzip_control, ptr %787, i32 0, i32 2
  %789 = load ptr, ptr %788, align 8
  %790 = call i32 @strcmp(ptr noundef %789, ptr noundef @.str.31) #10
  %791 = icmp eq i32 %790, 0
  br i1 %791, label %806, label %792

792:                                              ; preds = %786, %778
  %793 = load ptr, ptr @control, align 8
  %794 = getelementptr inbounds %struct.rzip_control, ptr %793, i32 0, i32 2
  %795 = load ptr, ptr %794, align 8
  %796 = icmp ne ptr %795, null
  br i1 %796, label %803, label %797

797:                                              ; preds = %792
  %798 = load ptr, ptr @control, align 8
  %799 = getelementptr inbounds %struct.rzip_control, ptr %798, i32 0, i32 26
  %800 = load i64, ptr %799, align 8
  %801 = and i64 %800, 4096
  %802 = icmp ne i64 %801, 0
  br i1 %802, label %806, label %803

803:                                              ; preds = %797, %792
  %804 = load i8, ptr %6, align 1
  %805 = trunc i8 %804 to i1
  br i1 %805, label %806, label %808

806:                                              ; preds = %803, %797, %786
  %807 = load ptr, ptr @control, align 8
  call void @set_stdout(ptr noundef %807)
  br label %808

808:                                              ; preds = %806, %803
  %809 = load i8, ptr %6, align 1
  %810 = trunc i8 %809 to i1
  br i1 %810, label %811, label %822

811:                                              ; preds = %808
  %812 = load ptr, ptr @stderr, align 8
  %813 = load ptr, ptr @control, align 8
  %814 = getelementptr inbounds %struct.rzip_control, ptr %813, i32 0, i32 17
  store ptr %812, ptr %814, align 8
  %815 = load ptr, ptr @stdout, align 8
  %816 = load ptr, ptr @control, align 8
  %817 = getelementptr inbounds %struct.rzip_control, ptr %816, i32 0, i32 4
  store ptr %815, ptr %817, align 8
  %818 = load ptr, ptr @control, align 8
  %819 = load ptr, ptr @control, align 8
  %820 = getelementptr inbounds %struct.rzip_control, ptr %819, i32 0, i32 17
  %821 = load ptr, ptr %820, align 8
  call void @register_outputfile(ptr noundef %818, ptr noundef %821)
  br label %822

822:                                              ; preds = %811, %808
  %823 = load ptr, ptr @control, align 8
  %824 = getelementptr inbounds %struct.rzip_control, ptr %823, i32 0, i32 26
  %825 = load i64, ptr %824, align 8
  %826 = and i64 %825, 8192
  %827 = icmp ne i64 %826, 0
  br i1 %827, label %836, label %828

828:                                              ; preds = %822
  %829 = load ptr, ptr @stdout, align 8
  %830 = load ptr, ptr @control, align 8
  %831 = getelementptr inbounds %struct.rzip_control, ptr %830, i32 0, i32 17
  store ptr %829, ptr %831, align 8
  %832 = load ptr, ptr @control, align 8
  %833 = load ptr, ptr @control, align 8
  %834 = getelementptr inbounds %struct.rzip_control, ptr %833, i32 0, i32 17
  %835 = load ptr, ptr %834, align 8
  call void @register_outputfile(ptr noundef %832, ptr noundef %835)
  br label %836

836:                                              ; preds = %828, %822
  %837 = load ptr, ptr @control, align 8
  %838 = getelementptr inbounds %struct.rzip_control, ptr %837, i32 0, i32 26
  %839 = load i64, ptr %838, align 8
  %840 = and i64 %839, 4096
  %841 = icmp ne i64 %840, 0
  br i1 %841, label %842, label %846

842:                                              ; preds = %836
  %843 = load ptr, ptr @stdin, align 8
  %844 = load ptr, ptr @control, align 8
  %845 = getelementptr inbounds %struct.rzip_control, ptr %844, i32 0, i32 1
  store ptr %843, ptr %845, align 8
  br label %846

846:                                              ; preds = %842, %836
  %847 = getelementptr inbounds %struct.sigaction, ptr %11, i32 0, i32 1
  %848 = call i32 @sigemptyset(ptr noundef %847) #9
  %849 = getelementptr inbounds %struct.sigaction, ptr %11, i32 0, i32 2
  store i32 0, ptr %849, align 8
  %850 = getelementptr inbounds %struct.sigaction, ptr %11, i32 0, i32 0
  store ptr @sighandler, ptr %850, align 8
  %851 = call i32 @sigaction(i32 noundef 15, ptr noundef %11, ptr noundef null) #9
  %852 = call i32 @sigaction(i32 noundef 2, ptr noundef %11, ptr noundef null) #9
  %853 = load ptr, ptr @control, align 8
  %854 = getelementptr inbounds %struct.rzip_control, ptr %853, i32 0, i32 26
  %855 = load i64, ptr %854, align 8
  %856 = and i64 %855, 8
  %857 = icmp ne i64 %856, 0
  br i1 %857, label %902, label %858

858:                                              ; preds = %846
  %859 = load ptr, ptr @control, align 8
  %860 = getelementptr inbounds %struct.rzip_control, ptr %859, i32 0, i32 26
  %861 = load i64, ptr %860, align 8
  %862 = and i64 %861, 4096
  %863 = icmp ne i64 %862, 0
  br i1 %863, label %864, label %875

864:                                              ; preds = %858
  %865 = load ptr, ptr @stdin, align 8
  %866 = call i32 @fileno(ptr noundef %865) #9
  %867 = call i32 @isatty(i32 noundef %866) #9
  %868 = icmp ne i32 %867, 0
  br i1 %868, label %869, label %875

869:                                              ; preds = %864
  br label %870

870:                                              ; preds = %869
  %871 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %871, i32 noundef 638, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.37)
  br label %872

872:                                              ; preds = %870
  %873 = load i8, ptr %7, align 1
  %874 = trunc i8 %873 to i1
  call void @usage(i1 noundef zeroext %874)
  call void @exit(i32 noundef 1) #11
  unreachable

875:                                              ; preds = %864, %858
  %876 = load ptr, ptr @control, align 8
  %877 = getelementptr inbounds %struct.rzip_control, ptr %876, i32 0, i32 26
  %878 = load i64, ptr %877, align 8
  %879 = and i64 %878, 4
  %880 = icmp ne i64 %879, 0
  br i1 %880, label %901, label %881

881:                                              ; preds = %875
  %882 = load ptr, ptr @control, align 8
  %883 = getelementptr inbounds %struct.rzip_control, ptr %882, i32 0, i32 26
  %884 = load i64, ptr %883, align 8
  %885 = and i64 %884, 8192
  %886 = icmp ne i64 %885, 0
  br i1 %886, label %887, label %901

887:                                              ; preds = %881
  %888 = load ptr, ptr @stdout, align 8
  %889 = call i32 @fileno(ptr noundef %888) #9
  %890 = call i32 @isatty(i32 noundef %889) #9
  %891 = icmp ne i32 %890, 0
  br i1 %891, label %892, label %901

892:                                              ; preds = %887
  %893 = load i8, ptr %7, align 1
  %894 = trunc i8 %893 to i1
  br i1 %894, label %901, label %895

895:                                              ; preds = %892
  br label %896

896:                                              ; preds = %895
  %897 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %897, i32 noundef 643, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.38)
  br label %898

898:                                              ; preds = %896
  %899 = load i8, ptr %7, align 1
  %900 = trunc i8 %899 to i1
  call void @usage(i1 noundef zeroext %900)
  call void @exit(i32 noundef 1) #11
  unreachable

901:                                              ; preds = %892, %887, %881, %875
  br label %902

902:                                              ; preds = %901, %846
  %903 = load ptr, ptr @control, align 8
  %904 = getelementptr inbounds %struct.rzip_control, ptr %903, i32 0, i32 26
  %905 = load i64, ptr %904, align 8
  %906 = and i64 %905, 262144
  %907 = icmp ne i64 %906, 0
  br i1 %907, label %908, label %938

908:                                              ; preds = %902
  %909 = load ptr, ptr @control, align 8
  %910 = getelementptr inbounds %struct.rzip_control, ptr %909, i32 0, i32 26
  %911 = load i64, ptr %910, align 8
  %912 = and i64 %911, 16
  %913 = icmp ne i64 %912, 0
  br i1 %913, label %922, label %914

914:                                              ; preds = %908
  br label %915

915:                                              ; preds = %914
  %916 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %916, i32 noundef 651, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.39)
  br label %917

917:                                              ; preds = %915
  %918 = load ptr, ptr @control, align 8
  %919 = getelementptr inbounds %struct.rzip_control, ptr %918, i32 0, i32 26
  %920 = load i64, ptr %919, align 8
  %921 = and i64 %920, -262145
  store i64 %921, ptr %919, align 8
  br label %937

922:                                              ; preds = %908
  %923 = load ptr, ptr @control, align 8
  %924 = getelementptr inbounds %struct.rzip_control, ptr %923, i32 0, i32 26
  %925 = load i64, ptr %924, align 8
  %926 = and i64 %925, 8192
  %927 = icmp ne i64 %926, 0
  br i1 %927, label %928, label %936

928:                                              ; preds = %922
  br label %929

929:                                              ; preds = %928
  %930 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %930, i32 noundef 654, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.40)
  br label %931

931:                                              ; preds = %929
  %932 = load ptr, ptr @control, align 8
  %933 = getelementptr inbounds %struct.rzip_control, ptr %932, i32 0, i32 26
  %934 = load i64, ptr %933, align 8
  %935 = and i64 %934, -262145
  store i64 %935, ptr %933, align 8
  br label %936

936:                                              ; preds = %931, %922
  br label %937

937:                                              ; preds = %936, %917
  br label %938

938:                                              ; preds = %937, %902
  %939 = load ptr, ptr @control, align 8
  call void @setup_ram(ptr noundef %939)
  call void @show_summary()
  %940 = call i32 @gettimeofday(ptr noundef %9, ptr noundef null) #9
  %941 = load ptr, ptr @control, align 8
  %942 = getelementptr inbounds %struct.rzip_control, ptr %941, i32 0, i32 26
  %943 = load i64, ptr %942, align 8
  %944 = and i64 %943, 4096
  %945 = icmp ne i64 %944, 0
  br i1 %945, label %946, label %952

946:                                              ; preds = %938
  %947 = load ptr, ptr @control, align 8
  %948 = getelementptr inbounds %struct.rzip_control, ptr %947, i32 0, i32 26
  %949 = load i64, ptr %948, align 8
  %950 = and i64 %949, 8388608
  %951 = icmp ne i64 %950, 0
  br label %952

952:                                              ; preds = %946, %938
  %953 = phi i1 [ false, %938 ], [ %951, %946 ]
  %954 = xor i1 %953, true
  %955 = xor i1 %954, true
  %956 = zext i1 %955 to i32
  %957 = sext i32 %956 to i64
  %958 = icmp ne i64 %957, 0
  br i1 %958, label %959, label %961

959:                                              ; preds = %952
  %960 = load ptr, ptr @control, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %960, i32 noundef 665, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.41)
  br label %961

961:                                              ; preds = %959, %952
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 @local_control, ptr align 8 @base_control, i64 864, i1 false)
  %962 = load ptr, ptr @control, align 8
  %963 = getelementptr inbounds %struct.rzip_control, ptr %962, i32 0, i32 26
  %964 = load i64, ptr %963, align 8
  %965 = and i64 %964, 16
  %966 = icmp ne i64 %965, 0
  br i1 %966, label %973, label %967

967:                                              ; preds = %961
  %968 = load ptr, ptr @control, align 8
  %969 = getelementptr inbounds %struct.rzip_control, ptr %968, i32 0, i32 26
  %970 = load i64, ptr %969, align 8
  %971 = and i64 %970, 4
  %972 = icmp ne i64 %971, 0
  br i1 %972, label %973, label %975

973:                                              ; preds = %967, %961
  %974 = call zeroext i1 @decompress_file(ptr noundef @local_control)
  br label %986

975:                                              ; preds = %967
  %976 = load ptr, ptr @control, align 8
  %977 = getelementptr inbounds %struct.rzip_control, ptr %976, i32 0, i32 26
  %978 = load i64, ptr %977, align 8
  %979 = and i64 %978, 16384
  %980 = icmp ne i64 %979, 0
  br i1 %980, label %981, label %983

981:                                              ; preds = %975
  %982 = call zeroext i1 @get_fileinfo(ptr noundef @local_control)
  br label %985

983:                                              ; preds = %975
  %984 = call zeroext i1 @compress_file(ptr noundef @local_control)
  br label %985

985:                                              ; preds = %983, %981
  br label %986

986:                                              ; preds = %985, %973
  %987 = call i32 @gettimeofday(ptr noundef %10, ptr noundef null) #9
  %988 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 0
  %989 = load i64, ptr %988, align 8
  %990 = sitofp i64 %989 to double
  %991 = getelementptr inbounds %struct.timeval, ptr %10, i32 0, i32 1
  %992 = load i64, ptr %991, align 8
  %993 = sitofp i64 %992 to double
  %994 = fdiv double %993, 1.000000e+06
  %995 = fadd double %990, %994
  %996 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 0
  %997 = load i64, ptr %996, align 8
  %998 = sitofp i64 %997 to double
  %999 = getelementptr inbounds %struct.timeval, ptr %9, i32 0, i32 1
  %1000 = load i64, ptr %999, align 8
  %1001 = sitofp i64 %1000 to double
  %1002 = fdiv double %1001, 1.000000e+06
  %1003 = fadd double %998, %1002
  %1004 = fsub double %995, %1003
  store double %1004, ptr %13, align 8
  %1005 = load double, ptr %13, align 8
  %1006 = fptosi double %1005 to i32
  %1007 = sdiv i32 %1006, 3600
  store i32 %1007, ptr %16, align 4
  %1008 = load double, ptr %13, align 8
  %1009 = fdiv double %1008, 6.000000e+01
  %1010 = fptosi double %1009 to i32
  %1011 = srem i32 %1010, 60
  store i32 %1011, ptr %17, align 4
  %1012 = load double, ptr %13, align 8
  %1013 = load i32, ptr %16, align 4
  %1014 = mul nsw i32 %1013, 3600
  %1015 = sitofp i32 %1014 to double
  %1016 = fsub double %1012, %1015
  %1017 = load i32, ptr %17, align 4
  %1018 = mul nsw i32 %1017, 60
  %1019 = sitofp i32 %1018 to double
  %1020 = fsub double %1016, %1019
  store double %1020, ptr %12, align 8
  %1021 = load ptr, ptr @control, align 8
  %1022 = getelementptr inbounds %struct.rzip_control, ptr %1021, i32 0, i32 26
  %1023 = load i64, ptr %1022, align 8
  %1024 = and i64 %1023, 16384
  %1025 = icmp ne i64 %1024, 0
  br i1 %1025, label %1042, label %1026

1026:                                             ; preds = %986
  br label %1027

1027:                                             ; preds = %1026
  %1028 = load ptr, ptr @control, align 8
  %1029 = getelementptr inbounds %struct.rzip_control, ptr %1028, i32 0, i32 26
  %1030 = load i64, ptr %1029, align 8
  %1031 = and i64 %1030, 1
  %1032 = icmp ne i64 %1031, 0
  br i1 %1032, label %1033, label %1040

1033:                                             ; preds = %1027
  br label %1034

1034:                                             ; preds = %1033
  %1035 = load ptr, ptr @control, align 8
  %1036 = load i32, ptr %16, align 4
  %1037 = load i32, ptr %17, align 4
  %1038 = load double, ptr %12, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %1035, i32 noundef 2, i32 noundef 683, ptr noundef @.str.7, ptr noundef @__func__.main, ptr noundef @.str.42, i32 noundef %1036, i32 noundef %1037, double noundef %1038)
  br label %1039

1039:                                             ; preds = %1034
  br label %1040

1040:                                             ; preds = %1039, %1027
  br label %1041

1041:                                             ; preds = %1040
  br label %1042

1042:                                             ; preds = %1041, %986
  %1043 = load i8, ptr %8, align 1
  %1044 = trunc i8 %1043 to i1
  br i1 %1044, label %1045, label %1046

1045:                                             ; preds = %1042
  br label %763

1046:                                             ; preds = %1042
  br label %1047

1047:                                             ; preds = %1046, %770
  %1048 = load i32, ptr %15, align 4
  %1049 = add nsw i32 %1048, 1
  store i32 %1049, ptr %15, align 4
  br label %644, !llvm.loop !8

1050:                                             ; preds = %667, %644
  store i32 0, ptr %3, align 4
  br label %1051

1051:                                             ; preds = %1050, %162
  %1052 = load i32, ptr %3, align 4
  ret i32 %1052
}

declare zeroext i1 @initialise_control(ptr noundef) #1

; Function Attrs: nounwind
declare ptr @__xpg_basename(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #3

declare void @CrcGenerateTable() #1

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

declare zeroext i1 @read_config(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare ptr @strstr(ptr noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

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
define internal void @set_stdout(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  %3 = load ptr, ptr %2, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 26
  %5 = load i64, ptr %4, align 8
  %6 = or i64 %5, 8192
  store i64 %6, ptr %4, align 8
  %7 = load ptr, ptr @stdout, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i32 0, i32 4
  store ptr %7, ptr %9, align 8
  %10 = load ptr, ptr @stderr, align 8
  %11 = load ptr, ptr %2, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 17
  store ptr %10, ptr %12, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %2, align 8
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i32 0, i32 17
  %16 = load ptr, ptr %15, align 8
  call void @register_outputfile(ptr noundef %13, ptr noundef %16)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i1 noundef zeroext %0) #0 {
  %2 = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, ptr %2, align 1
  br label %4

4:                                                ; preds = %1
  br label %5

5:                                                ; preds = %4
  %6 = load ptr, ptr @control, align 8
  %7 = load i8, ptr %2, align 1
  %8 = trunc i8 %7 to i1
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, ptr @.str.13, ptr @.str.80
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %6, i32 noundef 1, i32 noundef 70, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.79, ptr noundef %10, ptr noundef @.str.24)
  br label %11

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11
  br label %13

13:                                               ; preds = %12
  br label %14

14:                                               ; preds = %13
  %15 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %15, i32 noundef 1, i32 noundef 71, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.81)
  br label %16

16:                                               ; preds = %14
  br label %17

17:                                               ; preds = %16
  br label %18

18:                                               ; preds = %17
  br label %19

19:                                               ; preds = %18
  %20 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %20, i32 noundef 1, i32 noundef 72, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.82)
  br label %21

21:                                               ; preds = %19
  br label %22

22:                                               ; preds = %21
  br label %23

23:                                               ; preds = %22
  br label %24

24:                                               ; preds = %23
  %25 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %25, i32 noundef 1, i32 noundef 73, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.83)
  br label %26

26:                                               ; preds = %24
  br label %27

27:                                               ; preds = %26
  br label %28

28:                                               ; preds = %27
  br label %29

29:                                               ; preds = %28
  %30 = load ptr, ptr @control, align 8
  %31 = load i8, ptr %2, align 1
  %32 = trunc i8 %31 to i1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, ptr @.str.13, ptr @.str.80
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %30, i32 noundef 1, i32 noundef 74, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.84, ptr noundef %34)
  br label %35

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37
  %39 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %39, i32 noundef 1, i32 noundef 75, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.85)
  br label %40

40:                                               ; preds = %38
  br label %41

41:                                               ; preds = %40
  %42 = load i8, ptr %2, align 1
  %43 = trunc i8 %42 to i1
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  br label %45

45:                                               ; preds = %44
  br label %46

46:                                               ; preds = %45
  %47 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %47, i32 noundef 1, i32 noundef 77, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.86)
  br label %48

48:                                               ; preds = %46
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %52, i32 noundef 1, i32 noundef 78, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.87)
  br label %53

53:                                               ; preds = %51
  br label %54

54:                                               ; preds = %53
  br label %61

55:                                               ; preds = %41
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %58, i32 noundef 1, i32 noundef 80, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.88)
  br label %59

59:                                               ; preds = %57
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60, %54
  br label %62

62:                                               ; preds = %61
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %64, i32 noundef 1, i32 noundef 81, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.89)
  br label %65

65:                                               ; preds = %63
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  br label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %69, i32 noundef 1, i32 noundef 82, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.90)
  br label %70

70:                                               ; preds = %68
  br label %71

71:                                               ; preds = %70
  br label %72

72:                                               ; preds = %71
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %74, i32 noundef 1, i32 noundef 83, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.91)
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  br label %77

77:                                               ; preds = %76
  br label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %79, i32 noundef 1, i32 noundef 84, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.92)
  br label %80

80:                                               ; preds = %78
  br label %81

81:                                               ; preds = %80
  br label %82

82:                                               ; preds = %81
  br label %83

83:                                               ; preds = %82
  %84 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %84, i32 noundef 1, i32 noundef 85, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.93)
  br label %85

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load i8, ptr %2, align 1
  %88 = trunc i8 %87 to i1
  br i1 %88, label %89, label %100

89:                                               ; preds = %86
  br label %90

90:                                               ; preds = %89
  br label %91

91:                                               ; preds = %90
  %92 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %92, i32 noundef 1, i32 noundef 87, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.94)
  br label %93

93:                                               ; preds = %91
  br label %94

94:                                               ; preds = %93
  br label %95

95:                                               ; preds = %94
  br label %96

96:                                               ; preds = %95
  %97 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %97, i32 noundef 1, i32 noundef 88, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.95)
  br label %98

98:                                               ; preds = %96
  br label %99

99:                                               ; preds = %98
  br label %106

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100
  br label %102

102:                                              ; preds = %101
  %103 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %103, i32 noundef 1, i32 noundef 90, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.96)
  br label %104

104:                                              ; preds = %102
  br label %105

105:                                              ; preds = %104
  br label %106

106:                                              ; preds = %105, %99
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  %109 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %109, i32 noundef 1, i32 noundef 91, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.97)
  br label %110

110:                                              ; preds = %108
  br label %111

111:                                              ; preds = %110
  br label %112

112:                                              ; preds = %111
  br label %113

113:                                              ; preds = %112
  %114 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %114, i32 noundef 1, i32 noundef 92, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.98)
  br label %115

115:                                              ; preds = %113
  br label %116

116:                                              ; preds = %115
  br label %117

117:                                              ; preds = %116
  br label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr @control, align 8
  %120 = load i8, ptr %2, align 1
  %121 = trunc i8 %120 to i1
  %122 = zext i1 %121 to i64
  %123 = select i1 %121, ptr @.str.100, ptr @.str.13
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %119, i32 noundef 1, i32 noundef 93, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.99, ptr noundef %123)
  br label %124

124:                                              ; preds = %118
  br label %125

125:                                              ; preds = %124
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %128, i32 noundef 1, i32 noundef 94, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.101)
  br label %129

129:                                              ; preds = %127
  br label %130

130:                                              ; preds = %129
  br label %131

131:                                              ; preds = %130
  br label %132

132:                                              ; preds = %131
  %133 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %133, i32 noundef 1, i32 noundef 95, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.102)
  br label %134

134:                                              ; preds = %132
  br label %135

135:                                              ; preds = %134
  %136 = load i8, ptr %2, align 1
  %137 = trunc i8 %136 to i1
  br i1 %137, label %144, label %138

138:                                              ; preds = %135
  br label %139

139:                                              ; preds = %138
  br label %140

140:                                              ; preds = %139
  %141 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %141, i32 noundef 1, i32 noundef 97, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.103)
  br label %142

142:                                              ; preds = %140
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %143, %135
  br label %145

145:                                              ; preds = %144
  br label %146

146:                                              ; preds = %145
  %147 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %147, i32 noundef 1, i32 noundef 98, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.104)
  br label %148

148:                                              ; preds = %146
  br label %149

149:                                              ; preds = %148
  %150 = load i8, ptr %2, align 1
  %151 = trunc i8 %150 to i1
  br i1 %151, label %152, label %158

152:                                              ; preds = %149
  br label %153

153:                                              ; preds = %152
  br label %154

154:                                              ; preds = %153
  %155 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %155, i32 noundef 1, i32 noundef 100, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.105)
  br label %156

156:                                              ; preds = %154
  br label %157

157:                                              ; preds = %156
  br label %158

158:                                              ; preds = %157, %149
  br label %159

159:                                              ; preds = %158
  br label %160

160:                                              ; preds = %159
  %161 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %161, i32 noundef 1, i32 noundef 101, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.106)
  br label %162

162:                                              ; preds = %160
  br label %163

163:                                              ; preds = %162
  br label %164

164:                                              ; preds = %163
  br label %165

165:                                              ; preds = %164
  %166 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %166, i32 noundef 1, i32 noundef 102, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.107)
  br label %167

167:                                              ; preds = %165
  br label %168

168:                                              ; preds = %167
  br label %169

169:                                              ; preds = %168
  br label %170

170:                                              ; preds = %169
  %171 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %171, i32 noundef 1, i32 noundef 103, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.108)
  br label %172

172:                                              ; preds = %170
  br label %173

173:                                              ; preds = %172
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %176, i32 noundef 1, i32 noundef 104, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.109)
  br label %177

177:                                              ; preds = %175
  br label %178

178:                                              ; preds = %177
  br label %179

179:                                              ; preds = %178
  br label %180

180:                                              ; preds = %179
  %181 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %181, i32 noundef 1, i32 noundef 105, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.110)
  br label %182

182:                                              ; preds = %180
  br label %183

183:                                              ; preds = %182
  br label %184

184:                                              ; preds = %183
  br label %185

185:                                              ; preds = %184
  %186 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %186, i32 noundef 1, i32 noundef 106, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.111)
  br label %187

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187
  br label %189

189:                                              ; preds = %188
  br label %190

190:                                              ; preds = %189
  %191 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %191, i32 noundef 1, i32 noundef 107, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.112)
  br label %192

192:                                              ; preds = %190
  br label %193

193:                                              ; preds = %192
  br label %194

194:                                              ; preds = %193
  br label %195

195:                                              ; preds = %194
  %196 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %196, i32 noundef 1, i32 noundef 108, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.113)
  br label %197

197:                                              ; preds = %195
  br label %198

198:                                              ; preds = %197
  br label %199

199:                                              ; preds = %198
  br label %200

200:                                              ; preds = %199
  %201 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %201, i32 noundef 1, i32 noundef 109, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.114)
  br label %202

202:                                              ; preds = %200
  br label %203

203:                                              ; preds = %202
  br label %204

204:                                              ; preds = %203
  br label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %206, i32 noundef 1, i32 noundef 110, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.115)
  br label %207

207:                                              ; preds = %205
  br label %208

208:                                              ; preds = %207
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  %211 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %211, i32 noundef 1, i32 noundef 111, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.116)
  br label %212

212:                                              ; preds = %210
  br label %213

213:                                              ; preds = %212
  br label %214

214:                                              ; preds = %213
  br label %215

215:                                              ; preds = %214
  %216 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %216, i32 noundef 1, i32 noundef 112, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.117)
  br label %217

217:                                              ; preds = %215
  br label %218

218:                                              ; preds = %217
  %219 = load i8, ptr %2, align 1
  %220 = trunc i8 %219 to i1
  br i1 %220, label %221, label %237

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %221
  br label %223

223:                                              ; preds = %222
  %224 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %224, i32 noundef 1, i32 noundef 114, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.118)
  br label %225

225:                                              ; preds = %223
  br label %226

226:                                              ; preds = %225
  br label %227

227:                                              ; preds = %226
  br label %228

228:                                              ; preds = %227
  %229 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %229, i32 noundef 1, i32 noundef 115, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.119)
  br label %230

230:                                              ; preds = %228
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231
  br label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %234, i32 noundef 1, i32 noundef 116, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.120)
  br label %235

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %235
  br label %237

237:                                              ; preds = %236, %218
  %238 = load i8, ptr %2, align 1
  %239 = trunc i8 %238 to i1
  br i1 %239, label %246, label %240

240:                                              ; preds = %237
  br label %241

241:                                              ; preds = %240
  br label %242

242:                                              ; preds = %241
  %243 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %243, i32 noundef 1, i32 noundef 119, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.121)
  br label %244

244:                                              ; preds = %242
  br label %245

245:                                              ; preds = %244
  br label %246

246:                                              ; preds = %245, %237
  br label %247

247:                                              ; preds = %246
  br label %248

248:                                              ; preds = %247
  %249 = load ptr, ptr @control, align 8
  %250 = load i8, ptr %2, align 1
  %251 = trunc i8 %250 to i1
  %252 = zext i1 %251 to i64
  %253 = select i1 %251, i32 0, i32 19
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %249, i32 noundef 1, i32 noundef 120, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.122, i32 noundef %253)
  br label %254

254:                                              ; preds = %248
  br label %255

255:                                              ; preds = %254
  br label %256

256:                                              ; preds = %255
  br label %257

257:                                              ; preds = %256
  %258 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %258, i32 noundef 1, i32 noundef 121, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.123)
  br label %259

259:                                              ; preds = %257
  br label %260

260:                                              ; preds = %259
  br label %261

261:                                              ; preds = %260
  br label %262

262:                                              ; preds = %261
  %263 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %263, i32 noundef 1, i32 noundef 122, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.124)
  br label %264

264:                                              ; preds = %262
  br label %265

265:                                              ; preds = %264
  br label %266

266:                                              ; preds = %265
  br label %267

267:                                              ; preds = %266
  %268 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %268, i32 noundef 1, i32 noundef 123, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.125)
  br label %269

269:                                              ; preds = %267
  br label %270

270:                                              ; preds = %269
  br label %271

271:                                              ; preds = %270
  br label %272

272:                                              ; preds = %271
  %273 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %273, i32 noundef 1, i32 noundef 124, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.126)
  br label %274

274:                                              ; preds = %272
  br label %275

275:                                              ; preds = %274
  br label %276

276:                                              ; preds = %275
  br label %277

277:                                              ; preds = %276
  %278 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %278, i32 noundef 1, i32 noundef 125, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.127)
  br label %279

279:                                              ; preds = %277
  br label %280

280:                                              ; preds = %279
  br label %281

281:                                              ; preds = %280
  br label %282

282:                                              ; preds = %281
  %283 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %283, i32 noundef 1, i32 noundef 126, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.128)
  br label %284

284:                                              ; preds = %282
  br label %285

285:                                              ; preds = %284
  br label %286

286:                                              ; preds = %285
  br label %287

287:                                              ; preds = %286
  %288 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %288, i32 noundef 1, i32 noundef 127, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.129)
  br label %289

289:                                              ; preds = %287
  br label %290

290:                                              ; preds = %289
  br label %291

291:                                              ; preds = %290
  br label %292

292:                                              ; preds = %291
  %293 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %293, i32 noundef 1, i32 noundef 128, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.130)
  br label %294

294:                                              ; preds = %292
  br label %295

295:                                              ; preds = %294
  br label %296

296:                                              ; preds = %295
  br label %297

297:                                              ; preds = %296
  %298 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %298, i32 noundef 1, i32 noundef 129, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.131)
  br label %299

299:                                              ; preds = %297
  br label %300

300:                                              ; preds = %299
  br label %301

301:                                              ; preds = %300
  br label %302

302:                                              ; preds = %301
  %303 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %303, i32 noundef 1, i32 noundef 130, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.132)
  br label %304

304:                                              ; preds = %302
  br label %305

305:                                              ; preds = %304
  br label %306

306:                                              ; preds = %305
  br label %307

307:                                              ; preds = %306
  %308 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %308, i32 noundef 1, i32 noundef 131, ptr noundef @.str.7, ptr noundef @__func__.usage, ptr noundef @.str.133)
  br label %309

309:                                              ; preds = %307
  br label %310

310:                                              ; preds = %309
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @license() #0 {
  br label %1

1:                                                ; preds = %0
  br label %2

2:                                                ; preds = %1
  %3 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %3, i32 noundef 1, i32 noundef 137, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.134, ptr noundef @.str.24)
  br label %4

4:                                                ; preds = %2
  br label %5

5:                                                ; preds = %4
  br label %6

6:                                                ; preds = %5
  br label %7

7:                                                ; preds = %6
  %8 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %8, i32 noundef 1, i32 noundef 138, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.81)
  br label %9

9:                                                ; preds = %7
  br label %10

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10
  br label %12

12:                                               ; preds = %11
  %13 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %13, i32 noundef 1, i32 noundef 139, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.82)
  br label %14

14:                                               ; preds = %12
  br label %15

15:                                               ; preds = %14
  br label %16

16:                                               ; preds = %15
  br label %17

17:                                               ; preds = %16
  %18 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %18, i32 noundef 1, i32 noundef 140, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.83)
  br label %19

19:                                               ; preds = %17
  br label %20

20:                                               ; preds = %19
  br label %21

21:                                               ; preds = %20
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %23, i32 noundef 1, i32 noundef 141, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.135)
  br label %24

24:                                               ; preds = %22
  br label %25

25:                                               ; preds = %24
  br label %26

26:                                               ; preds = %25
  br label %27

27:                                               ; preds = %26
  %28 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %28, i32 noundef 1, i32 noundef 142, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.136)
  br label %29

29:                                               ; preds = %27
  br label %30

30:                                               ; preds = %29
  br label %31

31:                                               ; preds = %30
  br label %32

32:                                               ; preds = %31
  %33 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %33, i32 noundef 1, i32 noundef 143, ptr noundef @.str.7, ptr noundef @.str.57, ptr noundef @.str.137)
  br label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34
  ret void
}

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

; Function Attrs: nounwind willreturn memory(read)
declare i32 @atoi(ptr noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @atol(ptr noundef) #3

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #5

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

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
declare ptr @strcpy(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcat(ptr noundef, ptr noundef) #2

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

declare void @setup_overhead(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @setpriority(i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: nounwind
declare i32 @stat64(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recurse_dirlist(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [4096 x i8], align 16
  %8 = alloca %struct.stat, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store ptr %2, ptr %6, align 8
  %11 = load ptr, ptr %4, align 8
  %12 = call ptr @opendir(ptr noundef %11)
  store ptr %12, ptr %10, align 8
  %13 = load ptr, ptr %10, align 8
  %14 = icmp ne ptr %13, null
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load ptr, ptr @control, align 8
  %23 = load ptr, ptr %4, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %22, i32 noundef 283, ptr noundef @.str.7, ptr noundef @__func__.recurse_dirlist, ptr noundef @.str.138, ptr noundef %23)
  br label %24

24:                                               ; preds = %21, %3
  br label %25

25:                                               ; preds = %92, %78, %65, %41, %24
  %26 = load ptr, ptr %10, align 8
  %27 = call ptr @readdir64(ptr noundef %26)
  store ptr %27, ptr %9, align 8
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %112

29:                                               ; preds = %25
  %30 = load ptr, ptr %9, align 8
  %31 = getelementptr inbounds %struct.dirent, ptr %30, i32 0, i32 4
  %32 = getelementptr inbounds [256 x i8], ptr %31, i64 0, i64 0
  %33 = call i32 @strcmp(ptr noundef %32, ptr noundef @.str.139) #10
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %29
  %36 = load ptr, ptr %9, align 8
  %37 = getelementptr inbounds %struct.dirent, ptr %36, i32 0, i32 4
  %38 = getelementptr inbounds [256 x i8], ptr %37, i64 0, i64 0
  %39 = call i32 @strcmp(ptr noundef %38, ptr noundef @.str.140) #10
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %35, %29
  br label %25, !llvm.loop !9

42:                                               ; preds = %35
  %43 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %44 = load ptr, ptr %4, align 8
  %45 = load ptr, ptr %9, align 8
  %46 = getelementptr inbounds %struct.dirent, ptr %45, i32 0, i32 4
  %47 = getelementptr inbounds [256 x i8], ptr %46, i64 0, i64 0
  %48 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %43, ptr noundef @.str.141, ptr noundef %44, ptr noundef %47) #9
  %49 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %50 = call i32 @stat64(ptr noundef %49, ptr noundef %8) #9
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %42
  %58 = load ptr, ptr @control, align 8
  %59 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %58, i32 noundef 289, ptr noundef @.str.7, ptr noundef @__func__.recurse_dirlist, ptr noundef @.str.142, ptr noundef %59)
  br label %60

60:                                               ; preds = %57, %42
  %61 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 3
  %62 = load i32, ptr %61, align 8
  %63 = and i32 %62, 61440
  %64 = icmp eq i32 %63, 16384
  br i1 %64, label %65, label %69

65:                                               ; preds = %60
  %66 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %67 = load ptr, ptr %5, align 8
  %68 = load ptr, ptr %6, align 8
  call void @recurse_dirlist(ptr noundef %66, ptr noundef %67, ptr noundef %68)
  br label %25, !llvm.loop !9

69:                                               ; preds = %60
  %70 = getelementptr inbounds %struct.stat, ptr %8, i32 0, i32 3
  %71 = load i32, ptr %70, align 8
  %72 = and i32 %71, 61440
  %73 = icmp eq i32 %72, 32768
  br i1 %73, label %79, label %74

74:                                               ; preds = %69
  br label %75

75:                                               ; preds = %74
  %76 = load ptr, ptr @control, align 8
  %77 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %76, i32 noundef 295, ptr noundef @.str.7, ptr noundef @__func__.recurse_dirlist, ptr noundef @.str.143, ptr noundef %77)
  br label %78

78:                                               ; preds = %75
  br label %25, !llvm.loop !9

79:                                               ; preds = %69
  br label %80

80:                                               ; preds = %79
  %81 = load ptr, ptr @control, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 2048
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr @control, align 8
  %89 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %88, i32 noundef 4, i32 noundef 298, ptr noundef @.str.7, ptr noundef @__func__.recurse_dirlist, ptr noundef @.str.144, ptr noundef %89)
  br label %90

90:                                               ; preds = %87
  br label %91

91:                                               ; preds = %90, %80
  br label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %5, align 8
  %94 = load ptr, ptr %93, align 8
  %95 = load ptr, ptr %6, align 8
  %96 = load i32, ptr %95, align 4
  %97 = add nsw i32 %96, 1
  %98 = mul nsw i32 4096, %97
  %99 = sext i32 %98 to i64
  %100 = call ptr @realloc(ptr noundef %94, i64 noundef %99) #13
  %101 = load ptr, ptr %5, align 8
  store ptr %100, ptr %101, align 8
  %102 = load ptr, ptr %5, align 8
  %103 = load ptr, ptr %102, align 8
  %104 = load ptr, ptr %6, align 8
  %105 = load i32, ptr %104, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr %104, align 4
  %107 = mul nsw i32 4096, %105
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i8, ptr %103, i64 %108
  %110 = getelementptr inbounds [4096 x i8], ptr %7, i64 0, i64 0
  %111 = call ptr @strcpy(ptr noundef %109, ptr noundef %110) #9
  br label %25, !llvm.loop !9

112:                                              ; preds = %25
  %113 = load ptr, ptr %10, align 8
  %114 = call i32 @closedir(ptr noundef %113)
  ret void
}

declare void @register_outputfile(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @sigemptyset(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sighandler(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.termios, align 4
  store i32 %0, ptr %2, align 4
  %4 = load ptr, ptr @stdin, align 8
  %5 = call i32 @fileno(ptr noundef %4) #9
  %6 = call i32 @tcgetattr(i32 noundef %5, ptr noundef %3) #9
  %7 = getelementptr inbounds %struct.termios, ptr %3, i32 0, i32 3
  %8 = load i32, ptr %7, align 4
  %9 = or i32 %8, 8
  store i32 %9, ptr %7, align 4
  %10 = load ptr, ptr @stdin, align 8
  %11 = call i32 @fileno(ptr noundef %10) #9
  %12 = call i32 @tcsetattr(i32 noundef %11, i32 noundef 0, ptr noundef %3) #9
  %13 = load ptr, ptr @control, align 8
  call void @unlink_files(ptr noundef %13)
  call void @exit(i32 noundef 0) #11
  unreachable
}

; Function Attrs: nounwind
declare i32 @sigaction(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @isatty(i32 noundef) #2

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #2

declare void @setup_ram(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_summary() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load ptr, ptr @control, align 8
  %4 = getelementptr inbounds %struct.rzip_control, ptr %3, i32 0, i32 26
  %5 = load i64, ptr %4, align 8
  %6 = and i64 %5, 16384
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %570, label %8

8:                                                ; preds = %0
  %9 = load ptr, ptr @control, align 8
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i32 0, i32 26
  %11 = load i64, ptr %10, align 8
  %12 = and i64 %11, 4
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %34, label %14

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr @control, align 8
  %17 = getelementptr inbounds %struct.rzip_control, ptr %16, i32 0, i32 26
  %18 = load i64, ptr %17, align 8
  %19 = and i64 %18, 3072
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %15
  br label %22

22:                                               ; preds = %21
  %23 = load ptr, ptr @control, align 8
  %24 = load ptr, ptr @control, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 26
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 16
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, ptr @.str.146, ptr @.str.147
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %23, i32 noundef 3, i32 noundef 165, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.145, ptr noundef %30)
  br label %31

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %15
  br label %33

33:                                               ; preds = %32
  br label %34

34:                                               ; preds = %33, %8
  br label %35

35:                                               ; preds = %34
  %36 = load ptr, ptr @control, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 26
  %38 = load i64, ptr %37, align 8
  %39 = and i64 %38, 3072
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  br label %42

42:                                               ; preds = %41
  %43 = load ptr, ptr @control, align 8
  %44 = load ptr, ptr @control, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 30
  %46 = load i32, ptr %45, align 8
  %47 = icmp sgt i32 %46, 1
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, ptr @.str.149, ptr @.str.150
  %50 = load ptr, ptr @control, align 8
  %51 = getelementptr inbounds %struct.rzip_control, ptr %50, i32 0, i32 30
  %52 = load i32, ptr %51, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %43, i32 noundef 3, i32 noundef 167, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.148, ptr noundef %49, i32 noundef %52)
  br label %53

53:                                               ; preds = %42
  br label %54

54:                                               ; preds = %53, %35
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  %57 = load ptr, ptr @control, align 8
  %58 = getelementptr inbounds %struct.rzip_control, ptr %57, i32 0, i32 26
  %59 = load i64, ptr %58, align 8
  %60 = and i64 %59, 3072
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62
  %64 = load ptr, ptr @control, align 8
  %65 = load ptr, ptr @control, align 8
  %66 = getelementptr inbounds %struct.rzip_control, ptr %65, i32 0, i32 27
  %67 = load i64, ptr %66, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %64, i32 noundef 3, i32 noundef 168, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.151, i64 noundef %67)
  br label %68

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %68, %56
  br label %70

70:                                               ; preds = %69
  br label %71

71:                                               ; preds = %70
  %72 = load ptr, ptr @control, align 8
  %73 = getelementptr inbounds %struct.rzip_control, ptr %72, i32 0, i32 26
  %74 = load i64, ptr %73, align 8
  %75 = and i64 %74, 3072
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  br label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr @control, align 8
  %80 = load ptr, ptr @control, align 8
  %81 = getelementptr inbounds %struct.rzip_control, ptr %80, i32 0, i32 20
  %82 = load i8, ptr %81, align 8
  %83 = zext i8 %82 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %79, i32 noundef 3, i32 noundef 169, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.152, i32 noundef %83)
  br label %84

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84, %71
  br label %86

86:                                               ; preds = %85
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr @control, align 8
  %89 = getelementptr inbounds %struct.rzip_control, ptr %88, i32 0, i32 26
  %90 = load i64, ptr %89, align 8
  %91 = and i64 %90, 3072
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %87
  br label %94

94:                                               ; preds = %93
  %95 = load ptr, ptr @control, align 8
  %96 = load ptr, ptr @control, align 8
  %97 = getelementptr inbounds %struct.rzip_control, ptr %96, i32 0, i32 31
  %98 = load i8, ptr %97, align 4
  %99 = sext i8 %98 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %95, i32 noundef 3, i32 noundef 170, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.153, i32 noundef %99)
  br label %100

100:                                              ; preds = %94
  br label %101

101:                                              ; preds = %100, %87
  br label %102

102:                                              ; preds = %101
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr @control, align 8
  %105 = getelementptr inbounds %struct.rzip_control, ptr %104, i32 0, i32 26
  %106 = load i64, ptr %105, align 8
  %107 = and i64 %106, 3072
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %103
  br label %110

110:                                              ; preds = %109
  %111 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %111, i32 noundef 3, i32 noundef 171, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.154)
  br label %112

112:                                              ; preds = %110
  br label %113

113:                                              ; preds = %112, %103
  br label %114

114:                                              ; preds = %113
  br label %115

115:                                              ; preds = %114
  %116 = load ptr, ptr @control, align 8
  %117 = getelementptr inbounds %struct.rzip_control, ptr %116, i32 0, i32 26
  %118 = load i64, ptr %117, align 8
  %119 = and i64 %118, 2048
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %115
  br label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %123, i32 noundef 4, i32 noundef 172, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.155)
  br label %124

124:                                              ; preds = %122
  br label %125

125:                                              ; preds = %124, %115
  br label %126

126:                                              ; preds = %125
  br label %127

127:                                              ; preds = %126
  %128 = load ptr, ptr @control, align 8
  %129 = getelementptr inbounds %struct.rzip_control, ptr %128, i32 0, i32 26
  %130 = load i64, ptr %129, align 8
  %131 = and i64 %130, 3072
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %127
  br label %134

134:                                              ; preds = %133
  %135 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %135, i32 noundef 3, i32 noundef 173, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.156)
  br label %136

136:                                              ; preds = %134
  br label %137

137:                                              ; preds = %136, %127
  br label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr @control, align 8
  %140 = getelementptr inbounds %struct.rzip_control, ptr %139, i32 0, i32 26
  %141 = load i64, ptr %140, align 8
  %142 = and i64 %141, 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %157

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144
  %146 = load ptr, ptr @control, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 26
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 3072
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %145
  br label %152

152:                                              ; preds = %151
  %153 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %153, i32 noundef 3, i32 noundef 175, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.157)
  br label %154

154:                                              ; preds = %152
  br label %155

155:                                              ; preds = %154, %145
  br label %156

156:                                              ; preds = %155
  br label %157

157:                                              ; preds = %156, %138
  %158 = load ptr, ptr @control, align 8
  %159 = getelementptr inbounds %struct.rzip_control, ptr %158, i32 0, i32 26
  %160 = load i64, ptr %159, align 8
  %161 = and i64 %160, 2
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %176, label %163

163:                                              ; preds = %157
  br label %164

164:                                              ; preds = %163
  %165 = load ptr, ptr @control, align 8
  %166 = getelementptr inbounds %struct.rzip_control, ptr %165, i32 0, i32 26
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 3072
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %164
  br label %171

171:                                              ; preds = %170
  %172 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %172, i32 noundef 3, i32 noundef 177, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.158)
  br label %173

173:                                              ; preds = %171
  br label %174

174:                                              ; preds = %173, %164
  br label %175

175:                                              ; preds = %174
  br label %176

176:                                              ; preds = %175, %157
  %177 = load ptr, ptr @control, align 8
  %178 = getelementptr inbounds %struct.rzip_control, ptr %177, i32 0, i32 5
  %179 = load ptr, ptr %178, align 8
  %180 = icmp ne ptr %179, null
  br i1 %180, label %181, label %197

181:                                              ; preds = %176
  br label %182

182:                                              ; preds = %181
  %183 = load ptr, ptr @control, align 8
  %184 = getelementptr inbounds %struct.rzip_control, ptr %183, i32 0, i32 26
  %185 = load i64, ptr %184, align 8
  %186 = and i64 %185, 3072
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %182
  br label %189

189:                                              ; preds = %188
  %190 = load ptr, ptr @control, align 8
  %191 = load ptr, ptr @control, align 8
  %192 = getelementptr inbounds %struct.rzip_control, ptr %191, i32 0, i32 5
  %193 = load ptr, ptr %192, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %190, i32 noundef 3, i32 noundef 179, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.159, ptr noundef %193)
  br label %194

194:                                              ; preds = %189
  br label %195

195:                                              ; preds = %194, %182
  br label %196

196:                                              ; preds = %195
  br label %219

197:                                              ; preds = %176
  %198 = load ptr, ptr @control, align 8
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i32 0, i32 2
  %200 = load ptr, ptr %199, align 8
  %201 = icmp ne ptr %200, null
  br i1 %201, label %202, label %218

202:                                              ; preds = %197
  br label %203

203:                                              ; preds = %202
  %204 = load ptr, ptr @control, align 8
  %205 = getelementptr inbounds %struct.rzip_control, ptr %204, i32 0, i32 26
  %206 = load i64, ptr %205, align 8
  %207 = and i64 %206, 3072
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %216

209:                                              ; preds = %203
  br label %210

210:                                              ; preds = %209
  %211 = load ptr, ptr @control, align 8
  %212 = load ptr, ptr @control, align 8
  %213 = getelementptr inbounds %struct.rzip_control, ptr %212, i32 0, i32 2
  %214 = load ptr, ptr %213, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %211, i32 noundef 3, i32 noundef 181, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.160, ptr noundef %214)
  br label %215

215:                                              ; preds = %210
  br label %216

216:                                              ; preds = %215, %203
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %197
  br label %219

219:                                              ; preds = %218, %196
  %220 = load ptr, ptr @control, align 8
  %221 = getelementptr inbounds %struct.rzip_control, ptr %220, i32 0, i32 26
  %222 = load i64, ptr %221, align 8
  %223 = and i64 %222, 4
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %238

225:                                              ; preds = %219
  br label %226

226:                                              ; preds = %225
  %227 = load ptr, ptr @control, align 8
  %228 = getelementptr inbounds %struct.rzip_control, ptr %227, i32 0, i32 26
  %229 = load i64, ptr %228, align 8
  %230 = and i64 %229, 3072
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %226
  br label %233

233:                                              ; preds = %232
  %234 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %234, i32 noundef 3, i32 noundef 183, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.161)
  br label %235

235:                                              ; preds = %233
  br label %236

236:                                              ; preds = %235, %226
  br label %237

237:                                              ; preds = %236
  br label %238

238:                                              ; preds = %237, %219
  %239 = load ptr, ptr @control, align 8
  %240 = getelementptr inbounds %struct.rzip_control, ptr %239, i32 0, i32 6
  %241 = load ptr, ptr %240, align 8
  %242 = icmp ne ptr %241, null
  br i1 %242, label %243, label %259

243:                                              ; preds = %238
  br label %244

244:                                              ; preds = %243
  %245 = load ptr, ptr @control, align 8
  %246 = getelementptr inbounds %struct.rzip_control, ptr %245, i32 0, i32 26
  %247 = load i64, ptr %246, align 8
  %248 = and i64 %247, 3072
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %257

250:                                              ; preds = %244
  br label %251

251:                                              ; preds = %250
  %252 = load ptr, ptr @control, align 8
  %253 = load ptr, ptr @control, align 8
  %254 = getelementptr inbounds %struct.rzip_control, ptr %253, i32 0, i32 6
  %255 = load ptr, ptr %254, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %252, i32 noundef 3, i32 noundef 185, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.162, ptr noundef %255)
  br label %256

256:                                              ; preds = %251
  br label %257

257:                                              ; preds = %256, %244
  br label %258

258:                                              ; preds = %257
  br label %259

259:                                              ; preds = %258, %238
  %260 = load ptr, ptr @control, align 8
  %261 = getelementptr inbounds %struct.rzip_control, ptr %260, i32 0, i32 26
  %262 = load i64, ptr %261, align 8
  %263 = and i64 %262, 16
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %519, label %265

265:                                              ; preds = %259
  %266 = load ptr, ptr @control, align 8
  %267 = getelementptr inbounds %struct.rzip_control, ptr %266, i32 0, i32 26
  %268 = load i64, ptr %267, align 8
  %269 = and i64 %268, 4
  %270 = icmp ne i64 %269, 0
  br i1 %270, label %519, label %271

271:                                              ; preds = %265
  br label %272

272:                                              ; preds = %271
  %273 = load ptr, ptr @control, align 8
  %274 = getelementptr inbounds %struct.rzip_control, ptr %273, i32 0, i32 26
  %275 = load i64, ptr %274, align 8
  %276 = and i64 %275, 3072
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %282

278:                                              ; preds = %272
  br label %279

279:                                              ; preds = %278
  %280 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %280, i32 noundef 3, i32 noundef 189, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.163)
  br label %281

281:                                              ; preds = %279
  br label %282

282:                                              ; preds = %281, %272
  br label %283

283:                                              ; preds = %282
  %284 = load ptr, ptr @control, align 8
  %285 = getelementptr inbounds %struct.rzip_control, ptr %284, i32 0, i32 26
  %286 = load i64, ptr %285, align 8
  %287 = and i64 %286, 992
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %309, label %289

289:                                              ; preds = %283
  br label %290

290:                                              ; preds = %289
  %291 = load ptr, ptr @control, align 8
  %292 = getelementptr inbounds %struct.rzip_control, ptr %291, i32 0, i32 26
  %293 = load i64, ptr %292, align 8
  %294 = and i64 %293, 3072
  %295 = icmp ne i64 %294, 0
  br i1 %295, label %296, label %307

296:                                              ; preds = %290
  br label %297

297:                                              ; preds = %296
  %298 = load ptr, ptr @control, align 8
  %299 = load ptr, ptr @control, align 8
  %300 = getelementptr inbounds %struct.rzip_control, ptr %299, i32 0, i32 26
  %301 = load i64, ptr %300, align 8
  %302 = and i64 %301, 1048576
  %303 = icmp ne i64 %302, 0
  %304 = zext i1 %303 to i64
  %305 = select i1 %303, ptr @.str.165, ptr @.str.166
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %298, i32 noundef 3, i32 noundef 191, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.164, ptr noundef %305)
  br label %306

306:                                              ; preds = %297
  br label %307

307:                                              ; preds = %306, %290
  br label %308

308:                                              ; preds = %307
  br label %423

309:                                              ; preds = %283
  %310 = load ptr, ptr @control, align 8
  %311 = getelementptr inbounds %struct.rzip_control, ptr %310, i32 0, i32 26
  %312 = load i64, ptr %311, align 8
  %313 = and i64 %312, 64
  %314 = icmp ne i64 %313, 0
  br i1 %314, label %315, label %328

315:                                              ; preds = %309
  br label %316

316:                                              ; preds = %315
  %317 = load ptr, ptr @control, align 8
  %318 = getelementptr inbounds %struct.rzip_control, ptr %317, i32 0, i32 26
  %319 = load i64, ptr %318, align 8
  %320 = and i64 %319, 3072
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %326

322:                                              ; preds = %316
  br label %323

323:                                              ; preds = %322
  %324 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %324, i32 noundef 3, i32 noundef 193, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.167)
  br label %325

325:                                              ; preds = %323
  br label %326

326:                                              ; preds = %325, %316
  br label %327

327:                                              ; preds = %326
  br label %422

328:                                              ; preds = %309
  %329 = load ptr, ptr @control, align 8
  %330 = getelementptr inbounds %struct.rzip_control, ptr %329, i32 0, i32 26
  %331 = load i64, ptr %330, align 8
  %332 = and i64 %331, 128
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %354

334:                                              ; preds = %328
  br label %335

335:                                              ; preds = %334
  %336 = load ptr, ptr @control, align 8
  %337 = getelementptr inbounds %struct.rzip_control, ptr %336, i32 0, i32 26
  %338 = load i64, ptr %337, align 8
  %339 = and i64 %338, 3072
  %340 = icmp ne i64 %339, 0
  br i1 %340, label %341, label %352

341:                                              ; preds = %335
  br label %342

342:                                              ; preds = %341
  %343 = load ptr, ptr @control, align 8
  %344 = load ptr, ptr @control, align 8
  %345 = getelementptr inbounds %struct.rzip_control, ptr %344, i32 0, i32 26
  %346 = load i64, ptr %345, align 8
  %347 = and i64 %346, 1048576
  %348 = icmp ne i64 %347, 0
  %349 = zext i1 %348 to i64
  %350 = select i1 %348, ptr @.str.165, ptr @.str.166
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %343, i32 noundef 3, i32 noundef 195, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.168, ptr noundef %350)
  br label %351

351:                                              ; preds = %342
  br label %352

352:                                              ; preds = %351, %335
  br label %353

353:                                              ; preds = %352
  br label %421

354:                                              ; preds = %328
  %355 = load ptr, ptr @control, align 8
  %356 = getelementptr inbounds %struct.rzip_control, ptr %355, i32 0, i32 26
  %357 = load i64, ptr %356, align 8
  %358 = and i64 %357, 256
  %359 = icmp ne i64 %358, 0
  br i1 %359, label %360, label %373

360:                                              ; preds = %354
  br label %361

361:                                              ; preds = %360
  %362 = load ptr, ptr @control, align 8
  %363 = getelementptr inbounds %struct.rzip_control, ptr %362, i32 0, i32 26
  %364 = load i64, ptr %363, align 8
  %365 = and i64 %364, 3072
  %366 = icmp ne i64 %365, 0
  br i1 %366, label %367, label %371

367:                                              ; preds = %361
  br label %368

368:                                              ; preds = %367
  %369 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %369, i32 noundef 3, i32 noundef 197, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.169)
  br label %370

370:                                              ; preds = %368
  br label %371

371:                                              ; preds = %370, %361
  br label %372

372:                                              ; preds = %371
  br label %420

373:                                              ; preds = %354
  %374 = load ptr, ptr @control, align 8
  %375 = getelementptr inbounds %struct.rzip_control, ptr %374, i32 0, i32 26
  %376 = load i64, ptr %375, align 8
  %377 = and i64 %376, 512
  %378 = icmp ne i64 %377, 0
  br i1 %378, label %379, label %399

379:                                              ; preds = %373
  br label %380

380:                                              ; preds = %379
  %381 = load ptr, ptr @control, align 8
  %382 = getelementptr inbounds %struct.rzip_control, ptr %381, i32 0, i32 26
  %383 = load i64, ptr %382, align 8
  %384 = and i64 %383, 3072
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %397

386:                                              ; preds = %380
  br label %387

387:                                              ; preds = %386
  %388 = load ptr, ptr @control, align 8
  %389 = load ptr, ptr @control, align 8
  %390 = getelementptr inbounds %struct.rzip_control, ptr %389, i32 0, i32 26
  %391 = load i64, ptr %390, align 8
  %392 = and i64 %391, 1048576
  %393 = icmp ne i64 %392, 0
  %394 = zext i1 %393 to i64
  %395 = select i1 %393, ptr @.str.165, ptr @.str.166
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %388, i32 noundef 3, i32 noundef 199, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.170, ptr noundef %395)
  br label %396

396:                                              ; preds = %387
  br label %397

397:                                              ; preds = %396, %380
  br label %398

398:                                              ; preds = %397
  br label %419

399:                                              ; preds = %373
  %400 = load ptr, ptr @control, align 8
  %401 = getelementptr inbounds %struct.rzip_control, ptr %400, i32 0, i32 26
  %402 = load i64, ptr %401, align 8
  %403 = and i64 %402, 32
  %404 = icmp ne i64 %403, 0
  br i1 %404, label %405, label %418

405:                                              ; preds = %399
  br label %406

406:                                              ; preds = %405
  %407 = load ptr, ptr @control, align 8
  %408 = getelementptr inbounds %struct.rzip_control, ptr %407, i32 0, i32 26
  %409 = load i64, ptr %408, align 8
  %410 = and i64 %409, 3072
  %411 = icmp ne i64 %410, 0
  br i1 %411, label %412, label %416

412:                                              ; preds = %406
  br label %413

413:                                              ; preds = %412
  %414 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %414, i32 noundef 3, i32 noundef 201, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.171)
  br label %415

415:                                              ; preds = %413
  br label %416

416:                                              ; preds = %415, %406
  br label %417

417:                                              ; preds = %416
  br label %418

418:                                              ; preds = %417, %399
  br label %419

419:                                              ; preds = %418, %398
  br label %420

420:                                              ; preds = %419, %372
  br label %421

421:                                              ; preds = %420, %353
  br label %422

422:                                              ; preds = %421, %327
  br label %423

423:                                              ; preds = %422, %308
  %424 = load ptr, ptr @control, align 8
  %425 = getelementptr inbounds %struct.rzip_control, ptr %424, i32 0, i32 25
  %426 = load i64, ptr %425, align 8
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %448

428:                                              ; preds = %423
  br label %429

429:                                              ; preds = %428
  %430 = load ptr, ptr @control, align 8
  %431 = getelementptr inbounds %struct.rzip_control, ptr %430, i32 0, i32 26
  %432 = load i64, ptr %431, align 8
  %433 = and i64 %432, 3072
  %434 = icmp ne i64 %433, 0
  br i1 %434, label %435, label %446

435:                                              ; preds = %429
  br label %436

436:                                              ; preds = %435
  %437 = load ptr, ptr @control, align 8
  %438 = load ptr, ptr @control, align 8
  %439 = getelementptr inbounds %struct.rzip_control, ptr %438, i32 0, i32 25
  %440 = load i64, ptr %439, align 8
  %441 = load ptr, ptr @control, align 8
  %442 = getelementptr inbounds %struct.rzip_control, ptr %441, i32 0, i32 25
  %443 = load i64, ptr %442, align 8
  %444 = mul i64 %443, 100
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %437, i32 noundef 3, i32 noundef 203, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.172, i64 noundef %440, i64 noundef %444)
  br label %445

445:                                              ; preds = %436
  br label %446

446:                                              ; preds = %445, %429
  br label %447

447:                                              ; preds = %446
  br label %448

448:                                              ; preds = %447, %423
  %449 = load ptr, ptr @control, align 8
  %450 = getelementptr inbounds %struct.rzip_control, ptr %449, i32 0, i32 25
  %451 = load i64, ptr %450, align 8
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %499, label %453

453:                                              ; preds = %448
  %454 = load ptr, ptr @control, align 8
  %455 = getelementptr inbounds %struct.rzip_control, ptr %454, i32 0, i32 26
  %456 = load i64, ptr %455, align 8
  %457 = and i64 %456, 32768
  %458 = icmp ne i64 %457, 0
  br i1 %458, label %499, label %459

459:                                              ; preds = %453
  %460 = load ptr, ptr @control, align 8
  %461 = getelementptr inbounds %struct.rzip_control, ptr %460, i32 0, i32 26
  %462 = load i64, ptr %461, align 8
  %463 = and i64 %462, 8192
  %464 = icmp ne i64 %463, 0
  br i1 %464, label %471, label %465

465:                                              ; preds = %459
  %466 = load ptr, ptr @control, align 8
  %467 = getelementptr inbounds %struct.rzip_control, ptr %466, i32 0, i32 26
  %468 = load i64, ptr %467, align 8
  %469 = and i64 %468, 4096
  %470 = icmp ne i64 %469, 0
  br i1 %470, label %471, label %475

471:                                              ; preds = %465, %459
  %472 = load ptr, ptr @control, align 8
  %473 = getelementptr inbounds %struct.rzip_control, ptr %472, i32 0, i32 23
  %474 = load i64, ptr %473, align 8
  store i64 %474, ptr %1, align 8
  br label %481

475:                                              ; preds = %465
  %476 = load ptr, ptr @control, align 8
  %477 = getelementptr inbounds %struct.rzip_control, ptr %476, i32 0, i32 27
  %478 = load i64, ptr %477, align 8
  %479 = mul nsw i64 %478, 2
  %480 = sdiv i64 %479, 3
  store i64 %480, ptr %1, align 8
  br label %481

481:                                              ; preds = %475, %471
  %482 = load i64, ptr %1, align 8
  %483 = sdiv i64 %482, 104857600
  store i64 %483, ptr %2, align 8
  br label %484

484:                                              ; preds = %481
  %485 = load ptr, ptr @control, align 8
  %486 = getelementptr inbounds %struct.rzip_control, ptr %485, i32 0, i32 26
  %487 = load i64, ptr %486, align 8
  %488 = and i64 %487, 3072
  %489 = icmp ne i64 %488, 0
  br i1 %489, label %490, label %497

490:                                              ; preds = %484
  br label %491

491:                                              ; preds = %490
  %492 = load ptr, ptr @control, align 8
  %493 = load i64, ptr %2, align 8
  %494 = load i64, ptr %2, align 8
  %495 = mul i64 %494, 100
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %492, i32 noundef 3, i32 noundef 213, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.173, i64 noundef %493, i64 noundef %495)
  br label %496

496:                                              ; preds = %491
  br label %497

497:                                              ; preds = %496, %484
  br label %498

498:                                              ; preds = %497
  br label %499

499:                                              ; preds = %498, %453, %448
  %500 = load ptr, ptr @control, align 8
  %501 = getelementptr inbounds %struct.rzip_control, ptr %500, i32 0, i32 26
  %502 = load i64, ptr %501, align 8
  %503 = and i64 %502, 32768
  %504 = icmp ne i64 %503, 0
  br i1 %504, label %505, label %518

505:                                              ; preds = %499
  br label %506

506:                                              ; preds = %505
  %507 = load ptr, ptr @control, align 8
  %508 = getelementptr inbounds %struct.rzip_control, ptr %507, i32 0, i32 26
  %509 = load i64, ptr %508, align 8
  %510 = and i64 %509, 3072
  %511 = icmp ne i64 %510, 0
  br i1 %511, label %512, label %516

512:                                              ; preds = %506
  br label %513

513:                                              ; preds = %512
  %514 = load ptr, ptr @control, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %514, i32 noundef 3, i32 noundef 216, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.174)
  br label %515

515:                                              ; preds = %513
  br label %516

516:                                              ; preds = %515, %506
  br label %517

517:                                              ; preds = %516
  br label %518

518:                                              ; preds = %517, %499
  br label %519

519:                                              ; preds = %518, %265, %259
  %520 = load ptr, ptr @control, align 8
  %521 = getelementptr inbounds %struct.rzip_control, ptr %520, i32 0, i32 26
  %522 = load i64, ptr %521, align 8
  %523 = and i64 %522, 16
  %524 = icmp ne i64 %523, 0
  br i1 %524, label %547, label %525

525:                                              ; preds = %519
  %526 = load ptr, ptr @control, align 8
  %527 = getelementptr inbounds %struct.rzip_control, ptr %526, i32 0, i32 26
  %528 = load i64, ptr %527, align 8
  %529 = and i64 %528, 4
  %530 = icmp ne i64 %529, 0
  br i1 %530, label %547, label %531

531:                                              ; preds = %525
  br label %532

532:                                              ; preds = %531
  %533 = load ptr, ptr @control, align 8
  %534 = getelementptr inbounds %struct.rzip_control, ptr %533, i32 0, i32 26
  %535 = load i64, ptr %534, align 8
  %536 = and i64 %535, 2048
  %537 = icmp ne i64 %536, 0
  br i1 %537, label %538, label %545

538:                                              ; preds = %532
  br label %539

539:                                              ; preds = %538
  %540 = load ptr, ptr @control, align 8
  %541 = load ptr, ptr @control, align 8
  %542 = getelementptr inbounds %struct.rzip_control, ptr %541, i32 0, i32 40
  %543 = load i64, ptr %542, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %540, i32 noundef 4, i32 noundef 219, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.175, i64 noundef %543)
  br label %544

544:                                              ; preds = %539
  br label %545

545:                                              ; preds = %544, %532
  br label %546

546:                                              ; preds = %545
  br label %547

547:                                              ; preds = %546, %525, %519
  %548 = load ptr, ptr @control, align 8
  %549 = getelementptr inbounds %struct.rzip_control, ptr %548, i32 0, i32 26
  %550 = load i64, ptr %549, align 8
  %551 = and i64 %550, 8388608
  %552 = icmp ne i64 %551, 0
  br i1 %552, label %553, label %569

553:                                              ; preds = %547
  br label %554

554:                                              ; preds = %553
  %555 = load ptr, ptr @control, align 8
  %556 = getelementptr inbounds %struct.rzip_control, ptr %555, i32 0, i32 26
  %557 = load i64, ptr %556, align 8
  %558 = and i64 %557, 2048
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %567

560:                                              ; preds = %554
  br label %561

561:                                              ; preds = %560
  %562 = load ptr, ptr @control, align 8
  %563 = load ptr, ptr @control, align 8
  %564 = getelementptr inbounds %struct.rzip_control, ptr %563, i32 0, i32 39
  %565 = load i64, ptr %564, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %562, i32 noundef 4, i32 noundef 221, ptr noundef @.str.7, ptr noundef @__func__.show_summary, ptr noundef @.str.176, i64 noundef %565)
  br label %566

566:                                              ; preds = %561
  br label %567

567:                                              ; preds = %566, %554
  br label %568

568:                                              ; preds = %567
  br label %569

569:                                              ; preds = %568, %547
  br label %570

570:                                              ; preds = %569, %0
  ret void
}

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

declare zeroext i1 @decompress_file(ptr noundef) #1

declare zeroext i1 @get_fileinfo(ptr noundef) #1

declare zeroext i1 @compress_file(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #7

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #7

declare void @fatal_exit(ptr noundef) #1

declare void @perror(ptr noundef) #1

declare i32 @fflush(ptr noundef) #1

declare ptr @opendir(ptr noundef) #1

declare ptr @readdir64(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @sprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind allocsize(1)
declare ptr @realloc(ptr noundef, i64 noundef) #8

declare i32 @closedir(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) #2

declare void @unlink_files(ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }

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
