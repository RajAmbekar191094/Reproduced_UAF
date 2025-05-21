; ModuleID = './liblrzip_demo.c'
source_filename = "./liblrzip_demo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"lr\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"./liblrzip_demo.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [23 x i8] c"int main(int, char **)\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"bcdDefghHiklL:nN:o:O:p:qS:tTUvVw:z?\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Invalid compression level (must be 1-9)\0A\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Invalid nice value (must be -20..19)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Cannot have -o and -O together\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
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
@optind = external local_unnamed_addr global i32, align 4
@.str.17 = private unnamed_addr constant [54 x i8] c"Cannot specify output filename with more than 1 file\0A\00", align 1
@.str.18 = private unnamed_addr constant [51 x i8] c"If -U used, cannot specify a window size with -w.\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [52 x i8] c"Cannot have -U and stdin, unlimited mode disabled.\0A\00", align 1
@.str.20 = private unnamed_addr constant [47 x i8] c"Can only check file written on decompression.\0A\00", align 1
@.str.21 = private unnamed_addr constant [69 x i8] c"Can't check file written when writing to stdout. Checking disabled.\0A\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"lrzip_filename_add(lr, argv[x])\00", align 1
@.str.23 = private unnamed_addr constant [26 x i8] c"lrzip_file_add(lr, stdin)\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c".lrz\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%s.out\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.27 = private unnamed_addr constant [42 x i8] c"Can only use one of -l, -b, -g, -z or -n\0A\00", align 1
@.str.29 = private unnamed_addr constant [15 x i8] c"Based on rzip \00", align 1
@.str.68 = private unnamed_addr constant [19 x i8] c"Enter passphrase: \00", align 1
@.str.70 = private unnamed_addr constant [31 x i8] c"Failed to retrieve passphrase\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"Empty passphrase\0A\00", align 1
@str = private unnamed_addr constant [36 x i8] c"Copyright (C) Con Kolivas 2006-2011\00", align 1
@str.72 = private unnamed_addr constant [41 x i8] c"Copyright (C) Andrew Tridgell 1998-2003\0A\00", align 1
@str.73 = private unnamed_addr constant [33 x i8] c"Usage: lrzip [options] <file...>\00", align 1
@str.74 = private unnamed_addr constant [17 x i8] c"General options:\00", align 1
@str.75 = private unnamed_addr constant [68 x i8] c"     -c            check integrity of file written on decompression\00", align 1
@str.76 = private unnamed_addr constant [30 x i8] c"     -d            decompress\00", align 1
@str.77 = private unnamed_addr constant [78 x i8] c"     -e            password protected sha512/aes128 encryption on compression\00", align 1
@str.78 = private unnamed_addr constant [29 x i8] c"     -h|-?         show help\00", align 1
@str.79 = private unnamed_addr constant [58 x i8] c"     -H            display md5 hash integrity information\00", align 1
@str.80 = private unnamed_addr constant [52 x i8] c"     -i            show compressed file information\00", align 1
@str.81 = private unnamed_addr constant [51 x i8] c"     -q            don't show compression progress\00", align 1
@str.82 = private unnamed_addr constant [50 x i8] c"     -t            test compressed file integrity\00", align 1
@str.83 = private unnamed_addr constant [38 x i8] c"     -v[v]         Increase verbosity\00", align 1
@str.84 = private unnamed_addr constant [32 x i8] c"     -V            show version\00", align 1
@str.85 = private unnamed_addr constant [26 x i8] c"Options affecting output:\00", align 1
@str.86 = private unnamed_addr constant [41 x i8] c"     -D            delete existing files\00", align 1
@str.87 = private unnamed_addr constant [57 x i8] c"     -f            force overwrite of any existing files\00", align 1
@str.88 = private unnamed_addr constant [55 x i8] c"     -k            keep broken or damaged output files\00", align 1
@str.89 = private unnamed_addr constant [60 x i8] c"     -o filename   specify the output file name and/or path\00", align 1
@str.90 = private unnamed_addr constant [68 x i8] c"     -O directory  specify the output directory when -o is not used\00", align 1
@str.91 = private unnamed_addr constant [62 x i8] c"     -S suffix     specify compressed suffix (default '.lrz')\00", align 1
@str.92 = private unnamed_addr constant [31 x i8] c"Options affecting compression:\00", align 1
@str.93 = private unnamed_addr constant [37 x i8] c"     -b            bzip2 compression\00", align 1
@str.94 = private unnamed_addr constant [47 x i8] c"     -g            gzip compression using zlib\00", align 1
@str.95 = private unnamed_addr constant [48 x i8] c"     -l            lzo compression (ultra fast)\00", align 1
@str.96 = private unnamed_addr constant [73 x i8] c"     -n            no backend compression - prepare for other compressor\00", align 1
@str.97 = private unnamed_addr constant [80 x i8] c"     -z            zpaq compression (best, extreme compression, extremely slow)\00", align 1
@str.98 = private unnamed_addr constant [19 x i8] c"Low level options:\00", align 1
@str.99 = private unnamed_addr constant [74 x i8] c"     -L level      set lzma/bzip2/gzip compression level (1-9, default 7)\00", align 1
@str.100 = private unnamed_addr constant [56 x i8] c"     -N value      Set nice value to value (default 19)\00", align 1
@str.101 = private unnamed_addr constant [69 x i8] c"     -p value      Set processor count to override number of threads\00", align 1
@str.102 = private unnamed_addr constant [55 x i8] c"     -T            Disable LZO compressibility testing\00", align 1
@str.103 = private unnamed_addr constant [86 x i8] c"     -U            Use unlimited window size beyond ramsize (potentially much slower)\00", align 1
@str.104 = private unnamed_addr constant [64 x i8] c"     -w size       maximum compression window in hundreds of MB\00", align 1
@str.105 = private unnamed_addr constant [87 x i8] c"                   default chosen by heuristic dependent on ram and chosen compression\00", align 1
@str.106 = private unnamed_addr constant [79 x i8] c"\0ALRZIP=NOCONFIG environment variable setting can be used to bypass lrzip.conf.\00", align 1
@str.107 = private unnamed_addr constant [82 x i8] c"TMP environment variable will be used for storage of temporary files when needed.\00", align 1
@str.108 = private unnamed_addr constant [46 x i8] c"TMPDIR may also be stored in lrzip.conf file.\00", align 1
@str.109 = private unnamed_addr constant [62 x i8] c"\0AIf no filenames or \22-\22 is specified, stdin/out will be used.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = tail call zeroext i1 @lrzip_init() #12
  %5 = tail call ptr @lrzip_new(i32 noundef 0) #12
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 149, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #13
  unreachable

8:                                                ; preds = %2
  tail call void @lrzip_config_env(ptr noundef nonnull %5) #12
  tail call void @lrzip_log_level_set(ptr noundef nonnull %5, i32 noundef 2) #12
  br label %9

9:                                                ; preds = %12, %8
  %10 = phi i8 [ 0, %8 ], [ %13, %12 ]
  %11 = tail call i32 @getopt(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @.str.2) #12
  switch i32 %11, label %12 [
    i32 -1, label %254
    i32 98, label %14
    i32 99, label %21
    i32 100, label %24
    i32 68, label %31
    i32 101, label %34
    i32 102, label %37
    i32 103, label %40
    i32 104, label %47
    i32 63, label %47
    i32 72, label %89
    i32 105, label %90
    i32 107, label %98
    i32 108, label %101
    i32 76, label %108
    i32 110, label %124
    i32 78, label %131
    i32 111, label %146
    i32 79, label %159
    i32 112, label %173
    i32 113, label %186
    i32 83, label %189
    i32 116, label %203
    i32 84, label %223
    i32 85, label %226
    i32 118, label %229
    i32 86, label %232
    i32 119, label %234
    i32 122, label %247
  ]

12:                                               ; preds = %9, %156, %158, %252, %246, %229, %226, %223, %221, %201, %186, %184, %171, %144, %129, %121, %106, %98, %96, %89, %45, %37, %34, %31, %29, %21, %19
  %13 = phi i8 [ %10, %252 ], [ %10, %246 ], [ %10, %229 ], [ %10, %226 ], [ %10, %223 ], [ %10, %221 ], [ %10, %201 ], [ %10, %186 ], [ %10, %184 ], [ %10, %171 ], [ %10, %158 ], [ %10, %156 ], [ %10, %144 ], [ %10, %129 ], [ %10, %121 ], [ %10, %106 ], [ %10, %98 ], [ %10, %96 ], [ 1, %89 ], [ %10, %45 ], [ %10, %37 ], [ %10, %34 ], [ %10, %31 ], [ %10, %29 ], [ %10, %21 ], [ %10, %19 ], [ %10, %9 ]
  br label %9, !llvm.loop !5

14:                                               ; preds = %9
  %15 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %15, label %16 [
    i32 7, label %19
    i32 0, label %19
  ]

16:                                               ; preds = %14
  %17 = load ptr, ptr @stderr, align 8, !tbaa !7
  %18 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %17) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

19:                                               ; preds = %14, %14
  %20 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 7) #12
  br label %12

21:                                               ; preds = %9
  %22 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %23 = or i32 %22, 8
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %23) #12
  br label %12

24:                                               ; preds = %9
  %25 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %25, label %26 [
    i32 3, label %29
    i32 0, label %29
  ]

26:                                               ; preds = %24
  %27 = load ptr, ptr @stderr, align 8, !tbaa !7
  %28 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %27) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

29:                                               ; preds = %24, %24
  %30 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 3) #12
  br label %12

31:                                               ; preds = %9
  %32 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %33 = or i32 %32, 1
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %33) #12
  br label %12

34:                                               ; preds = %9
  %35 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %36 = or i32 %35, 64
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %36) #12
  br label %12

37:                                               ; preds = %9
  %38 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %39 = or i32 %38, 2
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %39) #12
  br label %12

40:                                               ; preds = %9
  %41 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %41, label %42 [
    i32 6, label %45
    i32 0, label %45
  ]

42:                                               ; preds = %40
  %43 = load ptr, ptr @stderr, align 8, !tbaa !7
  %44 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %43) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

45:                                               ; preds = %40, %40
  %46 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 6) #12
  br label %12

47:                                               ; preds = %9, %9
  %48 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @.str.15)
  %49 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %50 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29)
  %51 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.72)
  %52 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.73)
  %53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.74)
  %54 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.75)
  %55 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.76)
  %56 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.77)
  %57 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.78)
  %58 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.79)
  %59 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.80)
  %60 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.81)
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.82)
  %62 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.83)
  %63 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.84)
  %64 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %65 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  %67 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  %68 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %69 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.90)
  %70 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.91)
  %71 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.92)
  %72 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  %73 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.94)
  %74 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.95)
  %75 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.96)
  %76 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.97)
  %77 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.98)
  %78 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.99)
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.100)
  %80 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.101)
  %81 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.102)
  %82 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.103)
  %83 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.104)
  %84 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.106)
  %86 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.107)
  %87 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.108)
  %88 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.109)
  br label %471

89:                                               ; preds = %9
  br label %12

90:                                               ; preds = %9
  %91 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  %92 = icmp ult i32 %91, 2
  br i1 %92, label %96, label %93

93:                                               ; preds = %90
  %94 = load ptr, ptr @stderr, align 8, !tbaa !7
  %95 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %94) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

96:                                               ; preds = %90
  %97 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 1) #12
  br label %12

98:                                               ; preds = %9
  %99 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %100 = or i32 %99, 4
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %100) #12
  br label %12

101:                                              ; preds = %9
  %102 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %102, label %103 [
    i32 5, label %106
    i32 0, label %106
  ]

103:                                              ; preds = %101
  %104 = load ptr, ptr @stderr, align 8, !tbaa !7
  %105 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %104) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

106:                                              ; preds = %101, %101
  %107 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 5) #12
  br label %12

108:                                              ; preds = %9
  %109 = tail call ptr @__errno_location() #15
  store i32 0, ptr %109, align 4, !tbaa !11
  %110 = load ptr, ptr @optarg, align 8, !tbaa !7
  %111 = tail call i64 @strtol(ptr nocapture noundef %110, ptr noundef null, i32 noundef 10) #12
  %112 = load i32, ptr %109, align 4, !tbaa !11
  %113 = icmp ne i32 %112, 0
  %114 = icmp slt i64 %111, 1
  %115 = select i1 %113, i1 true, i1 %114
  %116 = icmp sgt i64 %111, 9
  %117 = select i1 %115, i1 true, i1 %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %108
  %119 = load ptr, ptr @stderr, align 8, !tbaa !7
  %120 = tail call i64 @fwrite(ptr nonnull @.str.3, i64 40, i64 1, ptr %119) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

121:                                              ; preds = %108
  %122 = trunc i64 %111 to i32
  %123 = tail call zeroext i1 @lrzip_compression_level_set(ptr noundef %5, i32 noundef %122) #12
  br label %12

124:                                              ; preds = %9
  %125 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %125, label %126 [
    i32 4, label %129
    i32 0, label %129
  ]

126:                                              ; preds = %124
  %127 = load ptr, ptr @stderr, align 8, !tbaa !7
  %128 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %127) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

129:                                              ; preds = %124, %124
  %130 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 4) #12
  br label %12

131:                                              ; preds = %9
  %132 = tail call ptr @__errno_location() #15
  store i32 0, ptr %132, align 4, !tbaa !11
  %133 = load ptr, ptr @optarg, align 8, !tbaa !7
  %134 = tail call i64 @strtol(ptr nocapture noundef %133, ptr noundef null, i32 noundef 10) #12
  %135 = load i32, ptr %132, align 4, !tbaa !11
  %136 = icmp ne i32 %135, 0
  %137 = icmp slt i64 %134, -20
  %138 = select i1 %136, i1 true, i1 %137
  %139 = icmp sgt i64 %134, 19
  %140 = select i1 %138, i1 true, i1 %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %131
  %142 = load ptr, ptr @stderr, align 8, !tbaa !7
  %143 = tail call i64 @fwrite(ptr nonnull @.str.4, i64 37, i64 1, ptr %142) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

144:                                              ; preds = %131
  %145 = trunc i64 %134 to i32
  tail call void @lrzip_nice_set(ptr noundef %5, i32 noundef %145) #12
  br label %12

146:                                              ; preds = %9
  %147 = tail call ptr @lrzip_outdir_get(ptr noundef %5) #12
  %148 = icmp eq ptr %147, null
  br i1 %148, label %152, label %149

149:                                              ; preds = %146
  %150 = load ptr, ptr @stderr, align 8, !tbaa !7
  %151 = tail call i64 @fwrite(ptr nonnull @.str.5, i64 31, i64 1, ptr %150) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

152:                                              ; preds = %146
  %153 = load ptr, ptr @optarg, align 8, !tbaa !7
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %153, ptr noundef nonnull dereferenceable(2) @.str.6) #16
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @lrzip_outfile_set(ptr noundef %5, ptr noundef %157) #12
  br label %12

158:                                              ; preds = %152
  tail call void @lrzip_outfilename_set(ptr noundef %5, ptr noundef %153) #12
  br label %12

159:                                              ; preds = %9
  %160 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %161 = icmp eq ptr %160, null
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  %163 = load ptr, ptr @stderr, align 8, !tbaa !7
  %164 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 39, i64 1, ptr %163) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

165:                                              ; preds = %159
  %166 = tail call ptr @lrzip_outfile_get(ptr noundef %5) #12
  %167 = icmp eq ptr %166, null
  br i1 %167, label %171, label %168

168:                                              ; preds = %165
  %169 = load ptr, ptr @stderr, align 8, !tbaa !7
  %170 = tail call i64 @fwrite(ptr nonnull @.str.8, i64 61, i64 1, ptr %169) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

171:                                              ; preds = %165
  %172 = load ptr, ptr @optarg, align 8, !tbaa !7
  tail call void @lrzip_outdir_set(ptr noundef %5, ptr noundef %172) #12
  br label %12

173:                                              ; preds = %9
  %174 = tail call ptr @__errno_location() #15
  store i32 0, ptr %174, align 4, !tbaa !11
  %175 = load ptr, ptr @optarg, align 8, !tbaa !7
  %176 = tail call i64 @strtol(ptr nocapture noundef %175, ptr noundef null, i32 noundef 10) #12
  %177 = load i32, ptr %174, align 4, !tbaa !11
  %178 = icmp ne i32 %177, 0
  %179 = icmp slt i64 %176, 1
  %180 = select i1 %178, i1 true, i1 %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %173
  %182 = load ptr, ptr @stderr, align 8, !tbaa !7
  %183 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 30, i64 1, ptr %182) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

184:                                              ; preds = %173
  %185 = trunc i64 %176 to i32
  tail call void @lrzip_threads_set(ptr noundef %5, i32 noundef %185) #12
  br label %12

186:                                              ; preds = %9
  %187 = tail call i32 @lrzip_log_level_get(ptr noundef %5) #12
  %188 = add nsw i32 %187, -1
  tail call void @lrzip_log_level_set(ptr noundef %5, i32 noundef %188) #12
  br label %12

189:                                              ; preds = %9
  %190 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %191 = icmp eq ptr %190, null
  br i1 %191, label %195, label %192

192:                                              ; preds = %189
  %193 = load ptr, ptr @stderr, align 8, !tbaa !7
  %194 = tail call i64 @fwrite(ptr nonnull @.str.10, i64 63, i64 1, ptr %193) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

195:                                              ; preds = %189
  %196 = tail call ptr @lrzip_outfile_get(ptr noundef %5) #12
  %197 = icmp eq ptr %196, null
  br i1 %197, label %201, label %198

198:                                              ; preds = %195
  %199 = load ptr, ptr @stderr, align 8, !tbaa !7
  %200 = tail call i64 @fwrite(ptr nonnull @.str.11, i64 59, i64 1, ptr %199) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

201:                                              ; preds = %195
  %202 = load ptr, ptr @optarg, align 8, !tbaa !7
  tail call void @lrzip_suffix_set(ptr noundef %5, ptr noundef %202) #12
  br label %12

203:                                              ; preds = %9
  %204 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %205 = icmp eq ptr %204, null
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr @stderr, align 8, !tbaa !7
  %208 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 54, i64 1, ptr %207) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

209:                                              ; preds = %203
  %210 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %211 = and i32 %210, 1
  %212 = icmp eq i32 %211, 0
  br i1 %212, label %216, label %213

213:                                              ; preds = %209
  %214 = load ptr, ptr @stderr, align 8, !tbaa !7
  %215 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 56, i64 1, ptr %214) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

216:                                              ; preds = %209
  %217 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %217, label %218 [
    i32 2, label %221
    i32 0, label %221
  ]

218:                                              ; preds = %216
  %219 = load ptr, ptr @stderr, align 8, !tbaa !7
  %220 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %219) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

221:                                              ; preds = %216, %216
  %222 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 2) #12
  br label %12

223:                                              ; preds = %9
  %224 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %225 = or i32 %224, 16
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %225) #12
  br label %12

226:                                              ; preds = %9
  %227 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %228 = or i32 %227, 32
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %228) #12
  br label %12

229:                                              ; preds = %9
  %230 = tail call i32 @lrzip_log_level_get(ptr noundef %5) #12
  %231 = add nsw i32 %230, 1
  tail call void @lrzip_log_level_set(ptr noundef %5, i32 noundef %231) #12
  br label %12

232:                                              ; preds = %9
  %233 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull @.str.15)
  tail call void @exit(i32 noundef 0) #13
  unreachable

234:                                              ; preds = %9
  %235 = tail call ptr @__errno_location() #15
  store i32 0, ptr %235, align 4, !tbaa !11
  %236 = load ptr, ptr @optarg, align 8, !tbaa !7
  %237 = tail call i64 @strtoll(ptr nocapture noundef %236, ptr noundef null, i32 noundef 10) #12
  %238 = load i32, ptr %235, align 4, !tbaa !11
  %239 = icmp ne i32 %238, 0
  %240 = icmp slt i64 %237, 1
  %241 = select i1 %239, i1 true, i1 %240
  br i1 %241, label %242, label %246

242:                                              ; preds = %234
  %243 = load ptr, ptr @stderr, align 8, !tbaa !7
  %244 = load ptr, ptr @optarg, align 8, !tbaa !7
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %243, ptr noundef nonnull @.str.16, ptr noundef %244) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

246:                                              ; preds = %234
  tail call void @lrzip_compression_window_max_set(ptr noundef %5, i64 noundef %237) #12
  br label %12

247:                                              ; preds = %9
  %248 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  switch i32 %248, label %249 [
    i32 9, label %252
    i32 0, label %252
  ]

249:                                              ; preds = %247
  %250 = load ptr, ptr @stderr, align 8, !tbaa !7
  %251 = tail call i64 @fwrite(ptr nonnull @.str.27, i64 41, i64 1, ptr %250) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

252:                                              ; preds = %247, %247
  %253 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 9) #12
  br label %12

254:                                              ; preds = %9
  %255 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %259

257:                                              ; preds = %254
  %258 = tail call zeroext i1 @lrzip_mode_set(ptr noundef %5, i32 noundef 8) #12
  br label %259

259:                                              ; preds = %257, %254
  %260 = load i32, ptr @optind, align 4, !tbaa !11
  %261 = sub nsw i32 %0, %260
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds ptr, ptr %1, i64 %262
  %264 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %265 = icmp ne ptr %264, null
  %266 = icmp sgt i32 %261, 1
  %267 = select i1 %265, i1 %266, i1 false
  br i1 %267, label %268, label %271

268:                                              ; preds = %259
  %269 = load ptr, ptr @stderr, align 8, !tbaa !7
  %270 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 53, i64 1, ptr %269) #14
  tail call void @exit(i32 noundef 1) #13
  unreachable

271:                                              ; preds = %259
  %272 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %273 = and i32 %272, 32
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %281, label %275

275:                                              ; preds = %271
  %276 = tail call i64 @lrzip_compression_window_max_get(ptr noundef %5) #12
  %277 = icmp eq i64 %276, 0
  br i1 %277, label %281, label %278

278:                                              ; preds = %275
  %279 = load ptr, ptr @stderr, align 8, !tbaa !7
  %280 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 50, i64 1, ptr %279) #14
  tail call void @lrzip_compression_window_max_set(ptr noundef %5, i64 noundef 0) #12
  br label %281

281:                                              ; preds = %278, %275, %271
  %282 = icmp slt i32 %261, 1
  br i1 %282, label %283, label %286

283:                                              ; preds = %281
  %284 = load ptr, ptr @stdin, align 8, !tbaa !7
  %285 = tail call zeroext i1 @lrzip_file_add(ptr noundef %5, ptr noundef %284) #12
  br label %286

286:                                              ; preds = %283, %281
  %287 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %288 = and i32 %287, 32
  %289 = icmp eq i32 %288, 0
  br i1 %289, label %298, label %290

290:                                              ; preds = %286
  %291 = tail call i32 @lrzip_files_count(ptr noundef %5) #12
  %292 = icmp eq i32 %291, 0
  br i1 %292, label %298, label %293

293:                                              ; preds = %290
  %294 = load ptr, ptr @stderr, align 8, !tbaa !7
  %295 = tail call i64 @fwrite(ptr nonnull @.str.19, i64 51, i64 1, ptr %294) #14
  %296 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %297 = and i32 %296, -33
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %297) #12
  br label %298

298:                                              ; preds = %293, %290, %286
  %299 = tail call i32 @lrzip_files_count(ptr noundef %5) #12
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %306, label %301

301:                                              ; preds = %298
  %302 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %303 = icmp eq ptr %302, null
  br i1 %303, label %304, label %306

304:                                              ; preds = %301
  %305 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @lrzip_outfile_set(ptr noundef %5, ptr noundef %305) #12
  br label %306

306:                                              ; preds = %304, %301, %298
  %307 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %308 = and i32 %307, 8
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %325, label %310

310:                                              ; preds = %306
  %311 = tail call i32 @lrzip_mode_get(ptr noundef %5) #12
  %312 = icmp eq i32 %311, 3
  br i1 %312, label %316, label %313

313:                                              ; preds = %310
  %314 = load ptr, ptr @stderr, align 8, !tbaa !7
  %315 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 46, i64 1, ptr %314) #14
  br label %322

316:                                              ; preds = %310
  %317 = tail call ptr @lrzip_outfile_get(ptr noundef %5) #12
  %318 = icmp eq ptr %317, null
  br i1 %318, label %325, label %319

319:                                              ; preds = %316
  %320 = load ptr, ptr @stderr, align 8, !tbaa !7
  %321 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 68, i64 1, ptr %320) #14
  br label %322

322:                                              ; preds = %319, %313
  %323 = tail call i32 @lrzip_flags_get(ptr noundef %5) #12
  %324 = and i32 %323, -9
  tail call void @lrzip_flags_set(ptr noundef %5, i32 noundef %324) #12
  br label %325

325:                                              ; preds = %322, %316, %306
  %326 = icmp sgt i32 %261, 0
  br i1 %326, label %327, label %382

327:                                              ; preds = %325
  %328 = zext i32 %261 to i64
  br label %329

329:                                              ; preds = %327, %346
  %330 = phi i64 [ %347, %346 ], [ 0, %327 ]
  %331 = getelementptr inbounds ptr, ptr %263, i64 %330
  %332 = load ptr, ptr %331, align 8, !tbaa !7
  %333 = load i8, ptr %332, align 1, !tbaa !13
  %334 = icmp eq i8 %333, 45
  br i1 %334, label %338, label %335

335:                                              ; preds = %329
  %336 = tail call zeroext i1 @lrzip_filename_add(ptr noundef %5, ptr noundef nonnull %332) #12
  br i1 %336, label %346, label %337

337:                                              ; preds = %335
  tail call void @__assert_fail(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #13
  unreachable

338:                                              ; preds = %329
  %339 = getelementptr inbounds i8, ptr %332, i64 1
  %340 = load i8, ptr %339, align 1, !tbaa !13
  %341 = icmp eq i8 %340, 0
  br i1 %341, label %342, label %346

342:                                              ; preds = %338
  %343 = load ptr, ptr @stdin, align 8, !tbaa !7
  %344 = tail call zeroext i1 @lrzip_file_add(ptr noundef %5, ptr noundef %343) #12
  br i1 %344, label %346, label %345

345:                                              ; preds = %342
  tail call void @__assert_fail(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.1, i32 noundef 312, ptr noundef nonnull @__PRETTY_FUNCTION__.main) #13
  unreachable

346:                                              ; preds = %338, %342, %335
  %347 = add nuw nsw i64 %330, 1
  %348 = icmp eq i64 %347, %328
  br i1 %348, label %349, label %329, !llvm.loop !14

349:                                              ; preds = %346
  %350 = icmp eq i32 %261, 1
  br i1 %350, label %351, label %382

351:                                              ; preds = %349
  %352 = tail call i32 @lrzip_files_count(ptr noundef %5) #12
  %353 = icmp eq i32 %352, 0
  br i1 %353, label %354, label %357

354:                                              ; preds = %351
  %355 = load ptr, ptr @stdin, align 8, !tbaa !7
  %356 = tail call zeroext i1 @lrzip_file_add(ptr noundef %5, ptr noundef %355) #12
  br label %357

357:                                              ; preds = %354, %351
  %358 = tail call i32 @lrzip_filenames_count(ptr noundef %5) #12
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %377, label %360

360:                                              ; preds = %357
  %361 = tail call ptr @lrzip_outfilename_get(ptr noundef %5) #12
  %362 = icmp eq ptr %361, null
  br i1 %362, label %363, label %382

363:                                              ; preds = %360
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #12
  %364 = tail call ptr @lrzip_filenames_get(ptr noundef %5) #12
  %365 = load ptr, ptr %364, align 8, !tbaa !7
  %366 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %365) #16
  %367 = getelementptr inbounds i8, ptr %365, i64 %366
  %368 = getelementptr inbounds i8, ptr %367, i64 -4
  %369 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %368, ptr noundef nonnull dereferenceable(5) @.str.24) #16
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %374

371:                                              ; preds = %363
  %372 = add i64 %366, -4
  %373 = call ptr @strncat(ptr noundef nonnull dereferenceable(1) %3, ptr noundef %365, i64 noundef %372) #12
  br label %376

374:                                              ; preds = %363
  %375 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %3, i64 noundef 4096, ptr noundef nonnull @.str.25, ptr noundef %365) #12
  br label %376

376:                                              ; preds = %374, %371
  call void @lrzip_outfilename_set(ptr noundef %5, ptr noundef nonnull %3) #12
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #12
  br label %382

377:                                              ; preds = %357
  %378 = tail call ptr @lrzip_outfile_get(ptr noundef %5) #12
  %379 = icmp eq ptr %378, null
  br i1 %379, label %380, label %382

380:                                              ; preds = %377
  %381 = load ptr, ptr @stdout, align 8, !tbaa !7
  tail call void @lrzip_outfile_set(ptr noundef %5, ptr noundef %381) #12
  br label %382

382:                                              ; preds = %325, %376, %360, %380, %377, %349
  %383 = load ptr, ptr @stdout, align 8, !tbaa !7
  call void @lrzip_log_stdout_set(ptr noundef %5, ptr noundef %383) #12
  %384 = load ptr, ptr @stderr, align 8, !tbaa !7
  call void @lrzip_log_stderr_set(ptr noundef %5, ptr noundef %384) #12
  call void @lrzip_pass_cb_set(ptr noundef %5, ptr noundef nonnull @pass_cb, ptr noundef null) #12
  %385 = call zeroext i1 @lrzip_run(ptr noundef %5) #12
  br i1 %385, label %387, label %386

386:                                              ; preds = %382
  call void @exit(i32 noundef 1) #13
  unreachable

387:                                              ; preds = %382
  %388 = icmp eq i8 %10, 0
  br i1 %388, label %470, label %389

389:                                              ; preds = %387
  %390 = call ptr @lrzip_md5digest_get(ptr noundef %5) #12
  %391 = load ptr, ptr @stdout, align 8, !tbaa !7
  %392 = load i8, ptr %390, align 1, !tbaa !13
  %393 = zext i8 %392 to i32
  %394 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %391, ptr noundef nonnull @.str.26, i32 noundef %393)
  %395 = load ptr, ptr @stdout, align 8, !tbaa !7
  %396 = getelementptr inbounds i8, ptr %390, i64 1
  %397 = load i8, ptr %396, align 1, !tbaa !13
  %398 = zext i8 %397 to i32
  %399 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %395, ptr noundef nonnull @.str.26, i32 noundef %398)
  %400 = load ptr, ptr @stdout, align 8, !tbaa !7
  %401 = getelementptr inbounds i8, ptr %390, i64 2
  %402 = load i8, ptr %401, align 1, !tbaa !13
  %403 = zext i8 %402 to i32
  %404 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %400, ptr noundef nonnull @.str.26, i32 noundef %403)
  %405 = load ptr, ptr @stdout, align 8, !tbaa !7
  %406 = getelementptr inbounds i8, ptr %390, i64 3
  %407 = load i8, ptr %406, align 1, !tbaa !13
  %408 = zext i8 %407 to i32
  %409 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %405, ptr noundef nonnull @.str.26, i32 noundef %408)
  %410 = load ptr, ptr @stdout, align 8, !tbaa !7
  %411 = getelementptr inbounds i8, ptr %390, i64 4
  %412 = load i8, ptr %411, align 1, !tbaa !13
  %413 = zext i8 %412 to i32
  %414 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %410, ptr noundef nonnull @.str.26, i32 noundef %413)
  %415 = load ptr, ptr @stdout, align 8, !tbaa !7
  %416 = getelementptr inbounds i8, ptr %390, i64 5
  %417 = load i8, ptr %416, align 1, !tbaa !13
  %418 = zext i8 %417 to i32
  %419 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %415, ptr noundef nonnull @.str.26, i32 noundef %418)
  %420 = load ptr, ptr @stdout, align 8, !tbaa !7
  %421 = getelementptr inbounds i8, ptr %390, i64 6
  %422 = load i8, ptr %421, align 1, !tbaa !13
  %423 = zext i8 %422 to i32
  %424 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %420, ptr noundef nonnull @.str.26, i32 noundef %423)
  %425 = load ptr, ptr @stdout, align 8, !tbaa !7
  %426 = getelementptr inbounds i8, ptr %390, i64 7
  %427 = load i8, ptr %426, align 1, !tbaa !13
  %428 = zext i8 %427 to i32
  %429 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %425, ptr noundef nonnull @.str.26, i32 noundef %428)
  %430 = load ptr, ptr @stdout, align 8, !tbaa !7
  %431 = getelementptr inbounds i8, ptr %390, i64 8
  %432 = load i8, ptr %431, align 1, !tbaa !13
  %433 = zext i8 %432 to i32
  %434 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %430, ptr noundef nonnull @.str.26, i32 noundef %433)
  %435 = load ptr, ptr @stdout, align 8, !tbaa !7
  %436 = getelementptr inbounds i8, ptr %390, i64 9
  %437 = load i8, ptr %436, align 1, !tbaa !13
  %438 = zext i8 %437 to i32
  %439 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %435, ptr noundef nonnull @.str.26, i32 noundef %438)
  %440 = load ptr, ptr @stdout, align 8, !tbaa !7
  %441 = getelementptr inbounds i8, ptr %390, i64 10
  %442 = load i8, ptr %441, align 1, !tbaa !13
  %443 = zext i8 %442 to i32
  %444 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %440, ptr noundef nonnull @.str.26, i32 noundef %443)
  %445 = load ptr, ptr @stdout, align 8, !tbaa !7
  %446 = getelementptr inbounds i8, ptr %390, i64 11
  %447 = load i8, ptr %446, align 1, !tbaa !13
  %448 = zext i8 %447 to i32
  %449 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %445, ptr noundef nonnull @.str.26, i32 noundef %448)
  %450 = load ptr, ptr @stdout, align 8, !tbaa !7
  %451 = getelementptr inbounds i8, ptr %390, i64 12
  %452 = load i8, ptr %451, align 1, !tbaa !13
  %453 = zext i8 %452 to i32
  %454 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %450, ptr noundef nonnull @.str.26, i32 noundef %453)
  %455 = load ptr, ptr @stdout, align 8, !tbaa !7
  %456 = getelementptr inbounds i8, ptr %390, i64 13
  %457 = load i8, ptr %456, align 1, !tbaa !13
  %458 = zext i8 %457 to i32
  %459 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %455, ptr noundef nonnull @.str.26, i32 noundef %458)
  %460 = load ptr, ptr @stdout, align 8, !tbaa !7
  %461 = getelementptr inbounds i8, ptr %390, i64 14
  %462 = load i8, ptr %461, align 1, !tbaa !13
  %463 = zext i8 %462 to i32
  %464 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %460, ptr noundef nonnull @.str.26, i32 noundef %463)
  %465 = load ptr, ptr @stdout, align 8, !tbaa !7
  %466 = getelementptr inbounds i8, ptr %390, i64 15
  %467 = load i8, ptr %466, align 1, !tbaa !13
  %468 = zext i8 %467 to i32
  %469 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %465, ptr noundef nonnull @.str.26, i32 noundef %468)
  br label %470

470:                                              ; preds = %389, %387
  call void @lrzip_free(ptr noundef %5) #12
  br label %471

471:                                              ; preds = %470, %47
  %472 = phi i32 [ -1, %47 ], [ 0, %470 ]
  ret i32 %472
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare zeroext i1 @lrzip_init() local_unnamed_addr #2

declare ptr @lrzip_new(i32 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @lrzip_config_env(ptr noundef) local_unnamed_addr #2

declare void @lrzip_log_level_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @getopt(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @lrzip_flags_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lrzip_flags_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #3

declare zeroext i1 @lrzip_compression_level_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @lrzip_nice_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @lrzip_outdir_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

declare void @lrzip_outfile_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lrzip_outfilename_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lrzip_outfilename_get(ptr noundef) local_unnamed_addr #2

declare ptr @lrzip_outfile_get(ptr noundef) local_unnamed_addr #2

declare void @lrzip_outdir_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lrzip_threads_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @lrzip_log_level_get(ptr noundef) local_unnamed_addr #2

declare void @lrzip_suffix_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

declare void @lrzip_compression_window_max_set(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @lrzip_mode_get(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lrzip_mode_set(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i64 @lrzip_compression_window_max_get(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lrzip_file_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lrzip_files_count(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @lrzip_filename_add(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lrzip_filenames_count(ptr noundef) local_unnamed_addr #2

declare ptr @lrzip_filenames_get(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @lrzip_log_stdout_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lrzip_log_stderr_set(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @lrzip_pass_cb_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @pass_cb(ptr nocapture readnone %0, ptr noundef %1, i64 noundef %2) #0 {
  %4 = alloca %struct.termios, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %4) #12
  %5 = load ptr, ptr @stdin, align 8, !tbaa !7
  %6 = tail call i32 @fileno(ptr noundef %5) #12
  %7 = call i32 @tcgetattr(i32 noundef %6, ptr noundef nonnull %4) #12
  %8 = getelementptr inbounds %struct.termios, ptr %4, i64 0, i32 3
  %9 = load i32, ptr %8, align 4, !tbaa !15
  %10 = and i32 %9, -9
  store i32 %10, ptr %8, align 4, !tbaa !15
  %11 = load ptr, ptr @stdin, align 8, !tbaa !7
  %12 = call i32 @fileno(ptr noundef %11) #12
  %13 = call i32 @tcsetattr(i32 noundef %12, i32 noundef 0, ptr noundef nonnull %4) #12
  %14 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.68)
  call void @llvm.memset.p0.i64(ptr align 1 %1, i8 0, i64 %2, i1 false)
  %15 = trunc i64 %2 to i32
  %16 = load ptr, ptr @stdin, align 8, !tbaa !7
  %17 = call ptr @fgets(ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %41, label %19

19:                                               ; preds = %3
  %20 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %21 = trunc i64 %20 to i32
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %19
  %24 = add i64 %20, 4294967295
  %25 = and i64 %24, 4294967295
  %26 = getelementptr inbounds i8, ptr %1, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !13
  switch i8 %27, label %29 [
    i8 13, label %28
    i8 10, label %28
  ]

28:                                               ; preds = %23, %23
  store i8 0, ptr %26, align 1, !tbaa !13
  br label %29

29:                                               ; preds = %28, %23
  %30 = icmp ugt i32 %21, 1
  br i1 %30, label %31, label %37

31:                                               ; preds = %29
  %32 = add i64 %20, 4294967294
  %33 = and i64 %32, 4294967295
  %34 = getelementptr inbounds i8, ptr %1, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !13
  switch i8 %35, label %37 [
    i8 13, label %36
    i8 10, label %36
  ]

36:                                               ; preds = %31, %31
  store i8 0, ptr %34, align 1, !tbaa !13
  br label %37

37:                                               ; preds = %36, %31, %29, %19
  %38 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #16
  %39 = trunc i64 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %37, %3
  %42 = phi i64 [ 30, %3 ], [ 17, %37 ]
  %43 = phi ptr [ @.str.70, %3 ], [ @.str.71, %37 ]
  %44 = load ptr, ptr @stderr, align 8, !tbaa !7
  %45 = call i64 @fwrite(ptr nonnull %43, i64 %42, i64 1, ptr %44) #14
  %46 = call i32 @putchar(i32 10)
  br label %50

47:                                               ; preds = %37
  %48 = call i32 @putchar(i32 10)
  %49 = icmp slt i32 %39, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %41, %47
  call void @exit(i32 noundef 1) #13
  unreachable

51:                                               ; preds = %47
  %52 = load i32, ptr %8, align 4, !tbaa !15
  %53 = or i32 %52, 8
  store i32 %53, ptr %8, align 4, !tbaa !15
  %54 = load ptr, ptr @stdin, align 8, !tbaa !7
  %55 = call i32 @fileno(ptr noundef %54) #12
  %56 = call i32 @tcsetattr(i32 noundef %55, i32 noundef 0, ptr noundef nonnull %4) #12
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %4) #12
  ret void
}

declare zeroext i1 @lrzip_run(ptr noundef) local_unnamed_addr #2

declare ptr @lrzip_md5digest_get(ptr noundef) local_unnamed_addr #2

declare void @lrzip_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nofree nounwind }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = !{!8, !8, i64 0}
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!9, !9, i64 0}
!14 = distinct !{!14, !6}
!15 = !{!16, !12, i64 12}
!16 = !{!"termios", !12, i64 0, !12, i64 4, !12, i64 8, !12, i64 12, !9, i64 16, !9, i64 17, !12, i64 52, !12, i64 56}
