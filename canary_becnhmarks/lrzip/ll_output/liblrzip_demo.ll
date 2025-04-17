; ModuleID = './liblrzip_demo.c'
source_filename = "./liblrzip_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"./liblrzip_demo.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bcdDefghHiklL:nN:o:O:p:qS:tTUvVw:z?\00", align 1
@optarg = external global ptr, align 8
@stderr = external global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid compression level (must be 1-9)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Invalid nice value (must be -20..19)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot have -o and -O together\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external global ptr, align 8
@.str.7 = private unnamed_addr constant [40 x i8] c"Cannot have options -o and -O together\0A\00", align 1
@.str.8 = private unnamed_addr constant [62 x i8] c"Cannot specify an output directory when outputting to stdout\0A\00", align 1
@.str.9 = private unnamed_addr constant [31 x i8] c"Must have at least one thread\0A\00", align 1
@.str.10 = private unnamed_addr constant [64 x i8] c"Specified output filename already, can't specify an extension.\0A\00", align 1
@.str.11 = private unnamed_addr constant [60 x i8] c"Cannot specify a filename suffix when outputting to stdout\0A\00", align 1
@.str.12 = private unnamed_addr constant [55 x i8] c"Cannot specify an output file name when just testing.\0A\00", align 1
@.str.13 = private unnamed_addr constant [57 x i8] c"Doubt that you want to delete a file when just testing.\0A\00", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"lrzip version %s\0A\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"0.631\00", align 1
@.str.16 = private unnamed_addr constant [34 x i8] c"Invalid compression window '%s'!\0A\00", align 1
@optind = external global i32, align 4
@.str.17 = private unnamed_addr constant [54 x i8] c"Cannot specify output filename with more than 1 file\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"If -U used, cannot specify a window size with -w.\0A\00", align 1
@stdin = external global ptr, align 8
@.str.19 = private unnamed_addr constant [52 x i8] c"Cannot have -U and stdin, unlimited mode disabled.\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Can only check file written on decompression.\0A\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"Can't check file written when writing to stdout. Checking disabled.\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"lrzip_filename_add(lr, argv[x])\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"lrzip_file_add(lr, stdin)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".lrz\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%s.out\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Can only use one of -l, -b, -g, -z or -n\0A\00", align 1
@.str.28 = private unnamed_addr constant [37 x i8] c"Copyright (C) Con Kolivas 2006-2011\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Based on rzip \00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Copyright (C) Andrew Tridgell 1998-2003\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [34 x i8] c"Usage: lrzip [options] <file...>\0A\00", align 1
@.str.32 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.33 = private unnamed_addr constant [69 x i8] c"     -c            check integrity of file written on decompression\0A\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"     -d            decompress\0A\00", align 1
@.str.35 = private unnamed_addr constant [79 x i8] c"     -e            password protected sha512/aes128 encryption on compression\0A\00", align 1
@.str.36 = private unnamed_addr constant [30 x i8] c"     -h|-?         show help\0A\00", align 1
@.str.37 = private unnamed_addr constant [59 x i8] c"     -H            display md5 hash integrity information\0A\00", align 1
@.str.38 = private unnamed_addr constant [53 x i8] c"     -i            show compressed file information\0A\00", align 1
@.str.39 = private unnamed_addr constant [52 x i8] c"     -q            don't show compression progress\0A\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"     -t            test compressed file integrity\0A\00", align 1
@.str.41 = private unnamed_addr constant [39 x i8] c"     -v[v]         Increase verbosity\0A\00", align 1
@.str.42 = private unnamed_addr constant [33 x i8] c"     -V            show version\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Options affecting output:\0A\00", align 1
@.str.44 = private unnamed_addr constant [42 x i8] c"     -D            delete existing files\0A\00", align 1
@.str.45 = private unnamed_addr constant [58 x i8] c"     -f            force overwrite of any existing files\0A\00", align 1
@.str.46 = private unnamed_addr constant [56 x i8] c"     -k            keep broken or damaged output files\0A\00", align 1
@.str.47 = private unnamed_addr constant [61 x i8] c"     -o filename   specify the output file name and/or path\0A\00", align 1
@.str.48 = private unnamed_addr constant [69 x i8] c"     -O directory  specify the output directory when -o is not used\0A\00", align 1
@.str.49 = private unnamed_addr constant [63 x i8] c"     -S suffix     specify compressed suffix (default '.lrz')\0A\00", align 1
@.str.50 = private unnamed_addr constant [32 x i8] c"Options affecting compression:\0A\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"     -b            bzip2 compression\0A\00", align 1
@.str.52 = private unnamed_addr constant [48 x i8] c"     -g            gzip compression using zlib\0A\00", align 1
@.str.53 = private unnamed_addr constant [49 x i8] c"     -l            lzo compression (ultra fast)\0A\00", align 1
@.str.54 = private unnamed_addr constant [74 x i8] c"     -n            no backend compression - prepare for other compressor\0A\00", align 1
@.str.55 = private unnamed_addr constant [81 x i8] c"     -z            zpaq compression (best, extreme compression, extremely slow)\0A\00", align 1
@.str.56 = private unnamed_addr constant [20 x i8] c"Low level options:\0A\00", align 1
@.str.57 = private unnamed_addr constant [75 x i8] c"     -L level      set lzma/bzip2/gzip compression level (1-9, default 7)\0A\00", align 1
@.str.58 = private unnamed_addr constant [57 x i8] c"     -N value      Set nice value to value (default 19)\0A\00", align 1
@.str.59 = private unnamed_addr constant [70 x i8] c"     -p value      Set processor count to override number of threads\0A\00", align 1
@.str.60 = private unnamed_addr constant [56 x i8] c"     -T            Disable LZO compressibility testing\0A\00", align 1
@.str.61 = private unnamed_addr constant [87 x i8] c"     -U            Use unlimited window size beyond ramsize (potentially much slower)\0A\00", align 1
@.str.62 = private unnamed_addr constant [65 x i8] c"     -w size       maximum compression window in hundreds of MB\0A\00", align 1
@.str.63 = private unnamed_addr constant [88 x i8] c"                   default chosen by heuristic dependent on ram and chosen compression\0A\00", align 1
@.str.64 = private unnamed_addr constant [80 x i8] c"\0ALRZIP=NOCONFIG environment variable setting can be used to bypass lrzip.conf.\0A\00", align 1
@.str.65 = private unnamed_addr constant [83 x i8] c"TMP environment variable will be used for storage of temporary files when needed.\0A\00", align 1
@.str.66 = private unnamed_addr constant [47 x i8] c"TMPDIR may also be stored in lrzip.conf file.\0A\00", align 1
@.str.67 = private unnamed_addr constant [63 x i8] c"\0AIf no filenames or \22-\22 is specified, stdin/out will be used.\0A\00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@.str.69 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Failed to retrieve passphrase\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Empty passphrase\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8, align 1
  %10 = alloca [4096 x i8], align 16
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca ptr, align 8
  store i32 0, ptr %3, align 4
  store i32 %0, ptr %4, align 4
  store ptr %1, ptr %5, align 8
  store i8 0, ptr %9, align 1
  %14 = call zeroext i1 @lrzip_init()
  %15 = call ptr @lrzip_new(i32 noundef 0)
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %20

19:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 149, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

20:                                               ; preds = %18
  %21 = load ptr, ptr %6, align 8
  call void @lrzip_config_env(ptr noundef %21)
  %22 = load ptr, ptr %6, align 8
  call void @lrzip_log_level_set(ptr noundef %22, i32 noundef 2)
  br label %23

23:                                               ; preds = %259, %20
  %24 = load i32, ptr %4, align 4
  %25 = load ptr, ptr %5, align 8
  %26 = call i32 @getopt(i32 noundef %24, ptr noundef %25, ptr noundef @.str.2) #8
  store i32 %26, ptr %8, align 4
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %260

28:                                               ; preds = %23
  %29 = load i32, ptr %8, align 4
  switch i32 %29, label %259 [
    i32 98, label %30
    i32 99, label %32
    i32 100, label %37
    i32 68, label %39
    i32 101, label %44
    i32 102, label %49
    i32 103, label %54
    i32 104, label %56
    i32 63, label %56
    i32 72, label %57
    i32 105, label %58
    i32 107, label %60
    i32 108, label %65
    i32 76, label %67
    i32 110, label %90
    i32 78, label %92
    i32 111, label %114
    i32 79, label %134
    i32 112, label %155
    i32 113, label %174
    i32 83, label %179
    i32 116, label %200
    i32 84, label %221
    i32 85, label %226
    i32 118, label %231
    i32 86, label %236
    i32 119, label %238
    i32 122, label %257
  ]

30:                                               ; preds = %28
  %31 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %31, i32 noundef 7)
  br label %259

32:                                               ; preds = %28
  %33 = load ptr, ptr %6, align 8
  %34 = load ptr, ptr %6, align 8
  %35 = call i32 @lrzip_flags_get(ptr noundef %34)
  %36 = or i32 %35, 8
  call void @lrzip_flags_set(ptr noundef %33, i32 noundef %36)
  br label %259

37:                                               ; preds = %28
  %38 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %38, i32 noundef 3)
  br label %259

39:                                               ; preds = %28
  %40 = load ptr, ptr %6, align 8
  %41 = load ptr, ptr %6, align 8
  %42 = call i32 @lrzip_flags_get(ptr noundef %41)
  %43 = or i32 %42, 1
  call void @lrzip_flags_set(ptr noundef %40, i32 noundef %43)
  br label %259

44:                                               ; preds = %28
  %45 = load ptr, ptr %6, align 8
  %46 = load ptr, ptr %6, align 8
  %47 = call i32 @lrzip_flags_get(ptr noundef %46)
  %48 = or i32 %47, 64
  call void @lrzip_flags_set(ptr noundef %45, i32 noundef %48)
  br label %259

49:                                               ; preds = %28
  %50 = load ptr, ptr %6, align 8
  %51 = load ptr, ptr %6, align 8
  %52 = call i32 @lrzip_flags_get(ptr noundef %51)
  %53 = or i32 %52, 2
  call void @lrzip_flags_set(ptr noundef %50, i32 noundef %53)
  br label %259

54:                                               ; preds = %28
  %55 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %55, i32 noundef 6)
  br label %259

56:                                               ; preds = %28, %28
  call void @usage()
  store i32 -1, ptr %3, align 4
  br label %495

57:                                               ; preds = %28
  store i8 1, ptr %9, align 1
  br label %259

58:                                               ; preds = %28
  %59 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %59, i32 noundef 1)
  br label %259

60:                                               ; preds = %28
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %6, align 8
  %63 = call i32 @lrzip_flags_get(ptr noundef %62)
  %64 = or i32 %63, 4
  call void @lrzip_flags_set(ptr noundef %61, i32 noundef %64)
  br label %259

65:                                               ; preds = %28
  %66 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %66, i32 noundef 5)
  br label %259

67:                                               ; preds = %28
  %68 = call ptr @__errno_location() #9
  store i32 0, ptr %68, align 4
  %69 = load ptr, ptr @optarg, align 8
  %70 = call i64 @strtol(ptr noundef %69, ptr noundef null, i32 noundef 10) #8
  store i64 %70, ptr %7, align 8
  %71 = call ptr @__errno_location() #9
  %72 = load i32, ptr %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %67
  %75 = load i64, ptr %7, align 8
  %76 = icmp slt i64 %75, 1
  br i1 %76, label %80, label %77

77:                                               ; preds = %74
  %78 = load i64, ptr %7, align 8
  %79 = icmp sgt i64 %78, 9
  br i1 %79, label %80, label %85

80:                                               ; preds = %77, %74, %67
  br label %81

81:                                               ; preds = %80
  %82 = load ptr, ptr @stderr, align 8
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.3)
  call void @exit(i32 noundef 1) #7
  unreachable

84:                                               ; No predecessors!
  br label %85

85:                                               ; preds = %84, %77
  %86 = load ptr, ptr %6, align 8
  %87 = load i64, ptr %7, align 8
  %88 = trunc i64 %87 to i32
  %89 = call zeroext i1 @lrzip_compression_level_set(ptr noundef %86, i32 noundef %88)
  br label %259

90:                                               ; preds = %28
  %91 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %91, i32 noundef 4)
  br label %259

92:                                               ; preds = %28
  %93 = call ptr @__errno_location() #9
  store i32 0, ptr %93, align 4
  %94 = load ptr, ptr @optarg, align 8
  %95 = call i64 @strtol(ptr noundef %94, ptr noundef null, i32 noundef 10) #8
  store i64 %95, ptr %7, align 8
  %96 = call ptr @__errno_location() #9
  %97 = load i32, ptr %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %92
  %100 = load i64, ptr %7, align 8
  %101 = icmp slt i64 %100, -20
  br i1 %101, label %105, label %102

102:                                              ; preds = %99
  %103 = load i64, ptr %7, align 8
  %104 = icmp sgt i64 %103, 19
  br i1 %104, label %105, label %110

105:                                              ; preds = %102, %99, %92
  br label %106

106:                                              ; preds = %105
  %107 = load ptr, ptr @stderr, align 8
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef @.str.4)
  call void @exit(i32 noundef 1) #7
  unreachable

109:                                              ; No predecessors!
  br label %110

110:                                              ; preds = %109, %102
  %111 = load ptr, ptr %6, align 8
  %112 = load i64, ptr %7, align 8
  %113 = trunc i64 %112 to i32
  call void @lrzip_nice_set(ptr noundef %111, i32 noundef %113)
  br label %259

114:                                              ; preds = %28
  %115 = load ptr, ptr %6, align 8
  %116 = call ptr @lrzip_outdir_get(ptr noundef %115)
  %117 = icmp ne ptr %116, null
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  br label %119

119:                                              ; preds = %118
  %120 = load ptr, ptr @stderr, align 8
  %121 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %120, ptr noundef @.str.5)
  call void @exit(i32 noundef 1) #7
  unreachable

122:                                              ; No predecessors!
  br label %123

123:                                              ; preds = %122, %114
  %124 = load ptr, ptr @optarg, align 8
  %125 = call i32 @strcmp(ptr noundef %124, ptr noundef @.str.6) #10
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %123
  %128 = load ptr, ptr %6, align 8
  %129 = load ptr, ptr @stdout, align 8
  call void @lrzip_outfile_set(ptr noundef %128, ptr noundef %129)
  br label %133

130:                                              ; preds = %123
  %131 = load ptr, ptr %6, align 8
  %132 = load ptr, ptr @optarg, align 8
  call void @lrzip_outfilename_set(ptr noundef %131, ptr noundef %132)
  br label %133

133:                                              ; preds = %130, %127
  br label %259

134:                                              ; preds = %28
  %135 = load ptr, ptr %6, align 8
  %136 = call ptr @lrzip_outfilename_get(ptr noundef %135)
  %137 = icmp ne ptr %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %138
  %140 = load ptr, ptr @stderr, align 8
  %141 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %140, ptr noundef @.str.7)
  call void @exit(i32 noundef 1) #7
  unreachable

142:                                              ; No predecessors!
  br label %143

143:                                              ; preds = %142, %134
  %144 = load ptr, ptr %6, align 8
  %145 = call ptr @lrzip_outfile_get(ptr noundef %144)
  %146 = icmp ne ptr %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %143
  br label %148

148:                                              ; preds = %147
  %149 = load ptr, ptr @stderr, align 8
  %150 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %149, ptr noundef @.str.8)
  call void @exit(i32 noundef 1) #7
  unreachable

151:                                              ; No predecessors!
  br label %152

152:                                              ; preds = %151, %143
  %153 = load ptr, ptr %6, align 8
  %154 = load ptr, ptr @optarg, align 8
  call void @lrzip_outdir_set(ptr noundef %153, ptr noundef %154)
  br label %259

155:                                              ; preds = %28
  %156 = call ptr @__errno_location() #9
  store i32 0, ptr %156, align 4
  %157 = load ptr, ptr @optarg, align 8
  %158 = call i64 @strtol(ptr noundef %157, ptr noundef null, i32 noundef 10) #8
  store i64 %158, ptr %7, align 8
  %159 = call ptr @__errno_location() #9
  %160 = load i32, ptr %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %155
  %163 = load i64, ptr %7, align 8
  %164 = icmp slt i64 %163, 1
  br i1 %164, label %165, label %170

165:                                              ; preds = %162, %155
  br label %166

166:                                              ; preds = %165
  %167 = load ptr, ptr @stderr, align 8
  %168 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %167, ptr noundef @.str.9)
  call void @exit(i32 noundef 1) #7
  unreachable

169:                                              ; No predecessors!
  br label %170

170:                                              ; preds = %169, %162
  %171 = load ptr, ptr %6, align 8
  %172 = load i64, ptr %7, align 8
  %173 = trunc i64 %172 to i32
  call void @lrzip_threads_set(ptr noundef %171, i32 noundef %173)
  br label %259

174:                                              ; preds = %28
  %175 = load ptr, ptr %6, align 8
  %176 = load ptr, ptr %6, align 8
  %177 = call i32 @lrzip_log_level_get(ptr noundef %176)
  %178 = sub nsw i32 %177, 1
  call void @lrzip_log_level_set(ptr noundef %175, i32 noundef %178)
  br label %259

179:                                              ; preds = %28
  %180 = load ptr, ptr %6, align 8
  %181 = call ptr @lrzip_outfilename_get(ptr noundef %180)
  %182 = icmp ne ptr %181, null
  br i1 %182, label %183, label %188

183:                                              ; preds = %179
  br label %184

184:                                              ; preds = %183
  %185 = load ptr, ptr @stderr, align 8
  %186 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %185, ptr noundef @.str.10)
  call void @exit(i32 noundef 1) #7
  unreachable

187:                                              ; No predecessors!
  br label %188

188:                                              ; preds = %187, %179
  %189 = load ptr, ptr %6, align 8
  %190 = call ptr @lrzip_outfile_get(ptr noundef %189)
  %191 = icmp ne ptr %190, null
  br i1 %191, label %192, label %197

192:                                              ; preds = %188
  br label %193

193:                                              ; preds = %192
  %194 = load ptr, ptr @stderr, align 8
  %195 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %194, ptr noundef @.str.11)
  call void @exit(i32 noundef 1) #7
  unreachable

196:                                              ; No predecessors!
  br label %197

197:                                              ; preds = %196, %188
  %198 = load ptr, ptr %6, align 8
  %199 = load ptr, ptr @optarg, align 8
  call void @lrzip_suffix_set(ptr noundef %198, ptr noundef %199)
  br label %259

200:                                              ; preds = %28
  %201 = load ptr, ptr %6, align 8
  %202 = call ptr @lrzip_outfilename_get(ptr noundef %201)
  %203 = icmp ne ptr %202, null
  br i1 %203, label %204, label %209

204:                                              ; preds = %200
  br label %205

205:                                              ; preds = %204
  %206 = load ptr, ptr @stderr, align 8
  %207 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %206, ptr noundef @.str.12)
  call void @exit(i32 noundef 1) #7
  unreachable

208:                                              ; No predecessors!
  br label %209

209:                                              ; preds = %208, %200
  %210 = load ptr, ptr %6, align 8
  %211 = call i32 @lrzip_flags_get(ptr noundef %210)
  %212 = and i32 %211, 1
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %219

214:                                              ; preds = %209
  br label %215

215:                                              ; preds = %214
  %216 = load ptr, ptr @stderr, align 8
  %217 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %216, ptr noundef @.str.13)
  call void @exit(i32 noundef 1) #7
  unreachable

218:                                              ; No predecessors!
  br label %219

219:                                              ; preds = %218, %209
  %220 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %220, i32 noundef 2)
  br label %259

221:                                              ; preds = %28
  %222 = load ptr, ptr %6, align 8
  %223 = load ptr, ptr %6, align 8
  %224 = call i32 @lrzip_flags_get(ptr noundef %223)
  %225 = or i32 %224, 16
  call void @lrzip_flags_set(ptr noundef %222, i32 noundef %225)
  br label %259

226:                                              ; preds = %28
  %227 = load ptr, ptr %6, align 8
  %228 = load ptr, ptr %6, align 8
  %229 = call i32 @lrzip_flags_get(ptr noundef %228)
  %230 = or i32 %229, 32
  call void @lrzip_flags_set(ptr noundef %227, i32 noundef %230)
  br label %259

231:                                              ; preds = %28
  %232 = load ptr, ptr %6, align 8
  %233 = load ptr, ptr %6, align 8
  %234 = call i32 @lrzip_log_level_get(ptr noundef %233)
  %235 = add nsw i32 %234, 1
  call void @lrzip_log_level_set(ptr noundef %232, i32 noundef %235)
  br label %259

236:                                              ; preds = %28
  %237 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.15)
  call void @exit(i32 noundef 0) #7
  unreachable

238:                                              ; preds = %28
  %239 = call ptr @__errno_location() #9
  store i32 0, ptr %239, align 4
  %240 = load ptr, ptr @optarg, align 8
  %241 = call i64 @strtoll(ptr noundef %240, ptr noundef null, i32 noundef 10) #8
  store i64 %241, ptr %7, align 8
  %242 = call ptr @__errno_location() #9
  %243 = load i32, ptr %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i64, ptr %7, align 8
  %247 = icmp slt i64 %246, 1
  br i1 %247, label %248, label %254

248:                                              ; preds = %245, %238
  br label %249

249:                                              ; preds = %248
  %250 = load ptr, ptr @stderr, align 8
  %251 = load ptr, ptr @optarg, align 8
  %252 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %250, ptr noundef @.str.16, ptr noundef %251)
  call void @exit(i32 noundef 1) #7
  unreachable

253:                                              ; No predecessors!
  br label %254

254:                                              ; preds = %253, %245
  %255 = load ptr, ptr %6, align 8
  %256 = load i64, ptr %7, align 8
  call void @lrzip_compression_window_max_set(ptr noundef %255, i64 noundef %256)
  br label %259

257:                                              ; preds = %28
  %258 = load ptr, ptr %6, align 8
  call void @mode_check(ptr noundef %258, i32 noundef 9)
  br label %259

259:                                              ; preds = %28, %257, %254, %231, %226, %221, %219, %197, %174, %170, %152, %133, %110, %90, %85, %65, %60, %58, %57, %54, %49, %44, %39, %37, %32, %30
  br label %23, !llvm.loop !6

260:                                              ; preds = %23
  %261 = load ptr, ptr %6, align 8
  %262 = call i32 @lrzip_mode_get(ptr noundef %261)
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %267, label %264

264:                                              ; preds = %260
  %265 = load ptr, ptr %6, align 8
  %266 = call zeroext i1 @lrzip_mode_set(ptr noundef %265, i32 noundef 8)
  br label %267

267:                                              ; preds = %264, %260
  %268 = load i32, ptr @optind, align 4
  %269 = load i32, ptr %4, align 4
  %270 = sub nsw i32 %269, %268
  store i32 %270, ptr %4, align 4
  %271 = load i32, ptr @optind, align 4
  %272 = load ptr, ptr %5, align 8
  %273 = sext i32 %271 to i64
  %274 = getelementptr inbounds ptr, ptr %272, i64 %273
  store ptr %274, ptr %5, align 8
  %275 = load ptr, ptr %6, align 8
  %276 = call ptr @lrzip_outfilename_get(ptr noundef %275)
  %277 = icmp ne ptr %276, null
  br i1 %277, label %278, label %286

278:                                              ; preds = %267
  %279 = load i32, ptr %4, align 4
  %280 = icmp sgt i32 %279, 1
  br i1 %280, label %281, label %286

281:                                              ; preds = %278
  br label %282

282:                                              ; preds = %281
  %283 = load ptr, ptr @stderr, align 8
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str.17)
  call void @exit(i32 noundef 1) #7
  unreachable

285:                                              ; No predecessors!
  br label %286

286:                                              ; preds = %285, %278, %267
  %287 = load ptr, ptr %6, align 8
  %288 = call i32 @lrzip_flags_get(ptr noundef %287)
  %289 = and i32 %288, 32
  %290 = icmp ne i32 %289, 0
  br i1 %290, label %291, label %299

291:                                              ; preds = %286
  %292 = load ptr, ptr %6, align 8
  %293 = call i64 @lrzip_compression_window_max_get(ptr noundef %292)
  %294 = icmp ne i64 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %291
  %296 = load ptr, ptr @stderr, align 8
  %297 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %296, ptr noundef @.str.18)
  %298 = load ptr, ptr %6, align 8
  call void @lrzip_compression_window_max_set(ptr noundef %298, i64 noundef 0)
  br label %299

299:                                              ; preds = %295, %291, %286
  %300 = load i32, ptr %4, align 4
  %301 = icmp slt i32 %300, 1
  br i1 %301, label %302, label %306

302:                                              ; preds = %299
  %303 = load ptr, ptr %6, align 8
  %304 = load ptr, ptr @stdin, align 8
  %305 = call zeroext i1 @lrzip_file_add(ptr noundef %303, ptr noundef %304)
  br label %306

306:                                              ; preds = %302, %299
  %307 = load ptr, ptr %6, align 8
  %308 = call i32 @lrzip_flags_get(ptr noundef %307)
  %309 = and i32 %308, 32
  %310 = icmp ne i32 %309, 0
  br i1 %310, label %311, label %322

311:                                              ; preds = %306
  %312 = load ptr, ptr %6, align 8
  %313 = call i32 @lrzip_files_count(ptr noundef %312)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %322

315:                                              ; preds = %311
  %316 = load ptr, ptr @stderr, align 8
  %317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef @.str.19)
  %318 = load ptr, ptr %6, align 8
  %319 = load ptr, ptr %6, align 8
  %320 = call i32 @lrzip_flags_get(ptr noundef %319)
  %321 = and i32 %320, -33
  call void @lrzip_flags_set(ptr noundef %318, i32 noundef %321)
  br label %322

322:                                              ; preds = %315, %311, %306
  %323 = load ptr, ptr %6, align 8
  %324 = call i32 @lrzip_files_count(ptr noundef %323)
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %333

326:                                              ; preds = %322
  %327 = load ptr, ptr %6, align 8
  %328 = call ptr @lrzip_outfilename_get(ptr noundef %327)
  %329 = icmp ne ptr %328, null
  br i1 %329, label %333, label %330

330:                                              ; preds = %326
  %331 = load ptr, ptr %6, align 8
  %332 = load ptr, ptr @stdout, align 8
  call void @lrzip_outfile_set(ptr noundef %331, ptr noundef %332)
  br label %333

333:                                              ; preds = %330, %326, %322
  %334 = load ptr, ptr %6, align 8
  %335 = call i32 @lrzip_flags_get(ptr noundef %334)
  %336 = and i32 %335, 8
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %362

338:                                              ; preds = %333
  %339 = load ptr, ptr %6, align 8
  %340 = call i32 @lrzip_mode_get(ptr noundef %339)
  %341 = icmp ne i32 %340, 3
  br i1 %341, label %342, label %349

342:                                              ; preds = %338
  %343 = load ptr, ptr @stderr, align 8
  %344 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %343, ptr noundef @.str.20)
  %345 = load ptr, ptr %6, align 8
  %346 = load ptr, ptr %6, align 8
  %347 = call i32 @lrzip_flags_get(ptr noundef %346)
  %348 = and i32 %347, -9
  call void @lrzip_flags_set(ptr noundef %345, i32 noundef %348)
  br label %361

349:                                              ; preds = %338
  %350 = load ptr, ptr %6, align 8
  %351 = call ptr @lrzip_outfile_get(ptr noundef %350)
  %352 = icmp ne ptr %351, null
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load ptr, ptr @stderr, align 8
  %355 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %354, ptr noundef @.str.21)
  %356 = load ptr, ptr %6, align 8
  %357 = load ptr, ptr %6, align 8
  %358 = call i32 @lrzip_flags_get(ptr noundef %357)
  %359 = and i32 %358, -9
  call void @lrzip_flags_set(ptr noundef %356, i32 noundef %359)
  br label %360

360:                                              ; preds = %353, %349
  br label %361

361:                                              ; preds = %360, %342
  br label %362

362:                                              ; preds = %361, %333
  store i64 0, ptr %7, align 8
  br label %363

363:                                              ; preds = %404, %362
  %364 = load i64, ptr %7, align 8
  %365 = load i32, ptr %4, align 4
  %366 = sext i32 %365 to i64
  %367 = icmp slt i64 %364, %366
  br i1 %367, label %368, label %407

368:                                              ; preds = %363
  %369 = load ptr, ptr %5, align 8
  %370 = load i64, ptr %7, align 8
  %371 = getelementptr inbounds ptr, ptr %369, i64 %370
  %372 = load ptr, ptr %371, align 8
  %373 = getelementptr inbounds i8, ptr %372, i64 0
  %374 = load i8, ptr %373, align 1
  %375 = sext i8 %374 to i32
  %376 = icmp ne i32 %375, 45
  br i1 %376, label %377, label %387

377:                                              ; preds = %368
  %378 = load ptr, ptr %6, align 8
  %379 = load ptr, ptr %5, align 8
  %380 = load i64, ptr %7, align 8
  %381 = getelementptr inbounds ptr, ptr %379, i64 %380
  %382 = load ptr, ptr %381, align 8
  %383 = call zeroext i1 @lrzip_filename_add(ptr noundef %378, ptr noundef %382)
  br i1 %383, label %384, label %385

384:                                              ; preds = %377
  br label %386

385:                                              ; preds = %377
  call void @__assert_fail(ptr noundef @.str.22, ptr noundef @.str.1, i32 noundef 308, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

386:                                              ; preds = %384
  br label %404

387:                                              ; preds = %368
  %388 = load ptr, ptr %5, align 8
  %389 = load i64, ptr %7, align 8
  %390 = getelementptr inbounds ptr, ptr %388, i64 %389
  %391 = load ptr, ptr %390, align 8
  %392 = getelementptr inbounds i8, ptr %391, i64 1
  %393 = load i8, ptr %392, align 1
  %394 = sext i8 %393 to i32
  %395 = icmp eq i32 %394, 0
  br i1 %395, label %396, label %403

396:                                              ; preds = %387
  %397 = load ptr, ptr %6, align 8
  %398 = load ptr, ptr @stdin, align 8
  %399 = call zeroext i1 @lrzip_file_add(ptr noundef %397, ptr noundef %398)
  br i1 %399, label %400, label %401

400:                                              ; preds = %396
  br label %402

401:                                              ; preds = %396
  call void @__assert_fail(ptr noundef @.str.23, ptr noundef @.str.1, i32 noundef 312, ptr noundef @__PRETTY_FUNCTION__.main) #7
  unreachable

402:                                              ; preds = %400
  br label %404

403:                                              ; preds = %387
  br label %404

404:                                              ; preds = %403, %402, %386
  %405 = load i64, ptr %7, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, ptr %7, align 8
  br label %363, !llvm.loop !8

407:                                              ; preds = %363
  %408 = load i32, ptr %4, align 4
  %409 = icmp eq i32 %408, 1
  br i1 %409, label %410, label %462

410:                                              ; preds = %407
  %411 = load ptr, ptr %6, align 8
  %412 = call i32 @lrzip_files_count(ptr noundef %411)
  %413 = icmp ne i32 %412, 0
  br i1 %413, label %418, label %414

414:                                              ; preds = %410
  %415 = load ptr, ptr %6, align 8
  %416 = load ptr, ptr @stdin, align 8
  %417 = call zeroext i1 @lrzip_file_add(ptr noundef %415, ptr noundef %416)
  br label %418

418:                                              ; preds = %414, %410
  %419 = load ptr, ptr %6, align 8
  %420 = call i32 @lrzip_filenames_count(ptr noundef %419)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %453

422:                                              ; preds = %418
  %423 = load ptr, ptr %6, align 8
  %424 = call ptr @lrzip_outfilename_get(ptr noundef %423)
  %425 = icmp ne ptr %424, null
  br i1 %425, label %452, label %426

426:                                              ; preds = %422
  %427 = load ptr, ptr %6, align 8
  %428 = call ptr @lrzip_filenames_get(ptr noundef %427)
  %429 = getelementptr inbounds ptr, ptr %428, i64 0
  %430 = load ptr, ptr %429, align 8
  store ptr %430, ptr %11, align 8
  %431 = load ptr, ptr %11, align 8
  %432 = call i64 @strlen(ptr noundef %431) #10
  store i64 %432, ptr %12, align 8
  %433 = load ptr, ptr %11, align 8
  %434 = load i64, ptr %12, align 8
  %435 = getelementptr inbounds i8, ptr %433, i64 %434
  %436 = getelementptr inbounds i8, ptr %435, i64 -4
  %437 = call i32 @strcmp(ptr noundef %436, ptr noundef @.str.24) #10
  %438 = icmp ne i32 %437, 0
  br i1 %438, label %445, label %439

439:                                              ; preds = %426
  %440 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0
  %441 = load ptr, ptr %11, align 8
  %442 = load i64, ptr %12, align 8
  %443 = sub i64 %442, 4
  %444 = call ptr @strncat(ptr noundef %440, ptr noundef %441, i64 noundef %443) #8
  br label %449

445:                                              ; preds = %426
  %446 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0
  %447 = load ptr, ptr %11, align 8
  %448 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %446, i64 noundef 4096, ptr noundef @.str.25, ptr noundef %447) #8
  br label %449

449:                                              ; preds = %445, %439
  %450 = load ptr, ptr %6, align 8
  %451 = getelementptr inbounds [4096 x i8], ptr %10, i64 0, i64 0
  call void @lrzip_outfilename_set(ptr noundef %450, ptr noundef %451)
  br label %452

452:                                              ; preds = %449, %422
  br label %461

453:                                              ; preds = %418
  %454 = load ptr, ptr %6, align 8
  %455 = call ptr @lrzip_outfile_get(ptr noundef %454)
  %456 = icmp ne ptr %455, null
  br i1 %456, label %460, label %457

457:                                              ; preds = %453
  %458 = load ptr, ptr %6, align 8
  %459 = load ptr, ptr @stdout, align 8
  call void @lrzip_outfile_set(ptr noundef %458, ptr noundef %459)
  br label %460

460:                                              ; preds = %457, %453
  br label %461

461:                                              ; preds = %460, %452
  br label %462

462:                                              ; preds = %461, %407
  %463 = load ptr, ptr %6, align 8
  %464 = load ptr, ptr @stdout, align 8
  call void @lrzip_log_stdout_set(ptr noundef %463, ptr noundef %464)
  %465 = load ptr, ptr %6, align 8
  %466 = load ptr, ptr @stderr, align 8
  call void @lrzip_log_stderr_set(ptr noundef %465, ptr noundef %466)
  %467 = load ptr, ptr %6, align 8
  call void @lrzip_pass_cb_set(ptr noundef %467, ptr noundef @pass_cb, ptr noundef null)
  %468 = load ptr, ptr %6, align 8
  %469 = call zeroext i1 @lrzip_run(ptr noundef %468)
  br i1 %469, label %471, label %470

470:                                              ; preds = %462
  call void @exit(i32 noundef 1) #7
  unreachable

471:                                              ; preds = %462
  %472 = load i8, ptr %9, align 1
  %473 = trunc i8 %472 to i1
  br i1 %473, label %474, label %493

474:                                              ; preds = %471
  %475 = load ptr, ptr %6, align 8
  %476 = call ptr @lrzip_md5digest_get(ptr noundef %475)
  store ptr %476, ptr %13, align 8
  store i64 0, ptr %7, align 8
  br label %477

477:                                              ; preds = %489, %474
  %478 = load i64, ptr %7, align 8
  %479 = icmp slt i64 %478, 16
  br i1 %479, label %480, label %492

480:                                              ; preds = %477
  %481 = load ptr, ptr @stdout, align 8
  %482 = load ptr, ptr %13, align 8
  %483 = load i64, ptr %7, align 8
  %484 = getelementptr inbounds i8, ptr %482, i64 %483
  %485 = load i8, ptr %484, align 1
  %486 = zext i8 %485 to i32
  %487 = and i32 %486, 255
  %488 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %481, ptr noundef @.str.26, i32 noundef %487)
  br label %489

489:                                              ; preds = %480
  %490 = load i64, ptr %7, align 8
  %491 = add nsw i64 %490, 1
  store i64 %491, ptr %7, align 8
  br label %477, !llvm.loop !9

492:                                              ; preds = %477
  br label %493

493:                                              ; preds = %492, %471
  %494 = load ptr, ptr %6, align 8
  call void @lrzip_free(ptr noundef %494)
  store i32 0, ptr %3, align 4
  br label %495

495:                                              ; preds = %493, %56
  %496 = load i32, ptr %3, align 4
  ret i32 %496
}

declare zeroext i1 @lrzip_init() #1

declare ptr @lrzip_new(i32 noundef) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @lrzip_config_env(ptr noundef) #1

declare void @lrzip_log_level_set(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mode_check(ptr noundef %0, i32 noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  store i32 %1, ptr %4, align 4
  %6 = load ptr, ptr %3, align 8
  %7 = call i32 @lrzip_mode_get(ptr noundef %6)
  store i32 %7, ptr %5, align 4
  %8 = load i32, ptr %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %19

10:                                               ; preds = %2
  %11 = load i32, ptr %5, align 4
  %12 = load i32, ptr %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  br label %15

15:                                               ; preds = %14
  %16 = load ptr, ptr @stderr, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.27)
  call void @exit(i32 noundef 1) #7
  unreachable

18:                                               ; No predecessors!
  br label %19

19:                                               ; preds = %18, %10, %2
  %20 = load ptr, ptr %3, align 8
  %21 = load i32, ptr %4, align 4
  %22 = call zeroext i1 @lrzip_mode_set(ptr noundef %20, i32 noundef %21)
  ret void
}

declare void @lrzip_flags_set(ptr noundef, i32 noundef) #1

declare i32 @lrzip_flags_get(ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage() #0 {
  %1 = call i32 (ptr, ...) @printf(ptr noundef @.str.14, ptr noundef @.str.15)
  %2 = call i32 (ptr, ...) @printf(ptr noundef @.str.28)
  %3 = call i32 (ptr, ...) @printf(ptr noundef @.str.29)
  %4 = call i32 (ptr, ...) @printf(ptr noundef @.str.30)
  %5 = call i32 (ptr, ...) @printf(ptr noundef @.str.31)
  %6 = call i32 (ptr, ...) @printf(ptr noundef @.str.32)
  %7 = call i32 (ptr, ...) @printf(ptr noundef @.str.33)
  %8 = call i32 (ptr, ...) @printf(ptr noundef @.str.34)
  %9 = call i32 (ptr, ...) @printf(ptr noundef @.str.35)
  %10 = call i32 (ptr, ...) @printf(ptr noundef @.str.36)
  %11 = call i32 (ptr, ...) @printf(ptr noundef @.str.37)
  %12 = call i32 (ptr, ...) @printf(ptr noundef @.str.38)
  %13 = call i32 (ptr, ...) @printf(ptr noundef @.str.39)
  %14 = call i32 (ptr, ...) @printf(ptr noundef @.str.40)
  %15 = call i32 (ptr, ...) @printf(ptr noundef @.str.41)
  %16 = call i32 (ptr, ...) @printf(ptr noundef @.str.42)
  %17 = call i32 (ptr, ...) @printf(ptr noundef @.str.43)
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.44)
  %19 = call i32 (ptr, ...) @printf(ptr noundef @.str.45)
  %20 = call i32 (ptr, ...) @printf(ptr noundef @.str.46)
  %21 = call i32 (ptr, ...) @printf(ptr noundef @.str.47)
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.48)
  %23 = call i32 (ptr, ...) @printf(ptr noundef @.str.49)
  %24 = call i32 (ptr, ...) @printf(ptr noundef @.str.50)
  %25 = call i32 (ptr, ...) @printf(ptr noundef @.str.51)
  %26 = call i32 (ptr, ...) @printf(ptr noundef @.str.52)
  %27 = call i32 (ptr, ...) @printf(ptr noundef @.str.53)
  %28 = call i32 (ptr, ...) @printf(ptr noundef @.str.54)
  %29 = call i32 (ptr, ...) @printf(ptr noundef @.str.55)
  %30 = call i32 (ptr, ...) @printf(ptr noundef @.str.56)
  %31 = call i32 (ptr, ...) @printf(ptr noundef @.str.57)
  %32 = call i32 (ptr, ...) @printf(ptr noundef @.str.58)
  %33 = call i32 (ptr, ...) @printf(ptr noundef @.str.59)
  %34 = call i32 (ptr, ...) @printf(ptr noundef @.str.60)
  %35 = call i32 (ptr, ...) @printf(ptr noundef @.str.61)
  %36 = call i32 (ptr, ...) @printf(ptr noundef @.str.62)
  %37 = call i32 (ptr, ...) @printf(ptr noundef @.str.63)
  %38 = call i32 (ptr, ...) @printf(ptr noundef @.str.64)
  %39 = call i32 (ptr, ...) @printf(ptr noundef @.str.65)
  %40 = call i32 (ptr, ...) @printf(ptr noundef @.str.66)
  %41 = call i32 (ptr, ...) @printf(ptr noundef @.str.67)
  ret void
}

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #4

; Function Attrs: nounwind
declare i64 @strtol(ptr noundef, ptr noundef, i32 noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #2

declare zeroext i1 @lrzip_compression_level_set(ptr noundef, i32 noundef) #1

declare void @lrzip_nice_set(ptr noundef, i32 noundef) #1

declare ptr @lrzip_outdir_get(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strcmp(ptr noundef, ptr noundef) #5

declare void @lrzip_outfile_set(ptr noundef, ptr noundef) #1

declare void @lrzip_outfilename_set(ptr noundef, ptr noundef) #1

declare ptr @lrzip_outfilename_get(ptr noundef) #1

declare ptr @lrzip_outfile_get(ptr noundef) #1

declare void @lrzip_outdir_set(ptr noundef, ptr noundef) #1

declare void @lrzip_threads_set(ptr noundef, i32 noundef) #1

declare i32 @lrzip_log_level_get(ptr noundef) #1

declare void @lrzip_suffix_set(ptr noundef, ptr noundef) #1

declare i32 @printf(ptr noundef, ...) #1

; Function Attrs: nounwind
declare i64 @strtoll(ptr noundef, ptr noundef, i32 noundef) #3

declare void @lrzip_compression_window_max_set(ptr noundef, i64 noundef) #1

declare i32 @lrzip_mode_get(ptr noundef) #1

declare zeroext i1 @lrzip_mode_set(ptr noundef, i32 noundef) #1

declare i64 @lrzip_compression_window_max_get(ptr noundef) #1

declare zeroext i1 @lrzip_file_add(ptr noundef, ptr noundef) #1

declare i32 @lrzip_files_count(ptr noundef) #1

declare zeroext i1 @lrzip_filename_add(ptr noundef, ptr noundef) #1

declare i32 @lrzip_filenames_count(ptr noundef) #1

declare ptr @lrzip_filenames_get(ptr noundef) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @lrzip_log_stdout_set(ptr noundef, ptr noundef) #1

declare void @lrzip_log_stderr_set(ptr noundef, ptr noundef) #1

declare void @lrzip_pass_cb_set(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pass_cb(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.termios, align 4
  store ptr %0, ptr %4, align 8
  store ptr %1, ptr %5, align 8
  store i64 %2, ptr %6, align 8
  %9 = load ptr, ptr @stdin, align 8
  %10 = call i32 @fileno(ptr noundef %9) #8
  %11 = call i32 @tcgetattr(i32 noundef %10, ptr noundef %8) #8
  %12 = getelementptr inbounds %struct.termios, ptr %8, i32 0, i32 3
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, -9
  store i32 %14, ptr %12, align 4
  %15 = load ptr, ptr @stdin, align 8
  %16 = call i32 @fileno(ptr noundef %15) #8
  %17 = call i32 @tcsetattr(i32 noundef %16, i32 noundef 0, ptr noundef %8) #8
  %18 = call i32 (ptr, ...) @printf(ptr noundef @.str.68)
  %19 = load ptr, ptr %5, align 8
  %20 = load i64, ptr %6, align 8
  %21 = call i32 @get_pass(ptr noundef %19, i64 noundef %20)
  store i32 %21, ptr %7, align 4
  %22 = call i32 (ptr, ...) @printf(ptr noundef @.str.69)
  %23 = load i32, ptr %7, align 4
  %24 = icmp slt i32 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %3
  call void @exit(i32 noundef 1) #7
  unreachable

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.termios, ptr %8, i32 0, i32 3
  %28 = load i32, ptr %27, align 4
  %29 = or i32 %28, 8
  store i32 %29, ptr %27, align 4
  %30 = load ptr, ptr @stdin, align 8
  %31 = call i32 @fileno(ptr noundef %30) #8
  %32 = call i32 @tcsetattr(i32 noundef %31, i32 noundef 0, ptr noundef %8) #8
  ret void
}

declare zeroext i1 @lrzip_run(ptr noundef) #1

declare ptr @lrzip_md5digest_get(ptr noundef) #1

declare void @lrzip_free(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @fileno(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pass(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %7 = load ptr, ptr %4, align 8
  %8 = load i64, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr align 1 %7, i8 0, i64 %8, i1 false)
  %9 = load ptr, ptr %4, align 8
  %10 = load i64, ptr %5, align 8
  %11 = trunc i64 %10 to i32
  %12 = load ptr, ptr @stdin, align 8
  %13 = call ptr @fgets(ptr noundef %9, i32 noundef %11, ptr noundef %12)
  %14 = icmp ne ptr %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr @stderr, align 8
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str.70)
  store i32 -1, ptr %3, align 4
  br label %86

18:                                               ; preds = %2
  %19 = load ptr, ptr %4, align 8
  %20 = call i64 @strlen(ptr noundef %19) #10
  %21 = trunc i64 %20 to i32
  store i32 %21, ptr %6, align 4
  %22 = load i32, ptr %6, align 4
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %48

24:                                               ; preds = %18
  %25 = load ptr, ptr %4, align 8
  %26 = load i32, ptr %6, align 4
  %27 = sub nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %25, i64 %28
  %30 = load i8, ptr %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp eq i32 13, %31
  br i1 %32, label %42, label %33

33:                                               ; preds = %24
  %34 = load ptr, ptr %4, align 8
  %35 = load i32, ptr %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i8, ptr %34, i64 %37
  %39 = load i8, ptr %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 10, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %33, %24
  %43 = load ptr, ptr %4, align 8
  %44 = load i32, ptr %6, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, ptr %43, i64 %46
  store i8 0, ptr %47, align 1
  br label %48

48:                                               ; preds = %42, %33, %18
  %49 = load i32, ptr %6, align 4
  %50 = icmp sgt i32 %49, 1
  br i1 %50, label %51, label %75

51:                                               ; preds = %48
  %52 = load ptr, ptr %4, align 8
  %53 = load i32, ptr %6, align 4
  %54 = sub nsw i32 %53, 2
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, ptr %52, i64 %55
  %57 = load i8, ptr %56, align 1
  %58 = sext i8 %57 to i32
  %59 = icmp eq i32 13, %58
  br i1 %59, label %69, label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %4, align 8
  %62 = load i32, ptr %6, align 4
  %63 = sub nsw i32 %62, 2
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i8, ptr %61, i64 %64
  %66 = load i8, ptr %65, align 1
  %67 = sext i8 %66 to i32
  %68 = icmp eq i32 10, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %60, %51
  %70 = load ptr, ptr %4, align 8
  %71 = load i32, ptr %6, align 4
  %72 = sub nsw i32 %71, 2
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8, ptr %70, i64 %73
  store i8 0, ptr %74, align 1
  br label %75

75:                                               ; preds = %69, %60, %48
  %76 = load ptr, ptr %4, align 8
  %77 = call i64 @strlen(ptr noundef %76) #10
  %78 = trunc i64 %77 to i32
  store i32 %78, ptr %6, align 4
  %79 = load i32, ptr %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load ptr, ptr @stderr, align 8
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str.71)
  store i32 -1, ptr %3, align 4
  br label %86

84:                                               ; preds = %75
  %85 = load i32, ptr %6, align 4
  store i32 %85, ptr %3, align 4
  br label %86

86:                                               ; preds = %84, %81, %15
  %87 = load i32, ptr %3, align 4
  ret i32 %87
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #1

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind willreturn memory(none) }
attributes #10 = { nounwind willreturn memory(read) }

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
