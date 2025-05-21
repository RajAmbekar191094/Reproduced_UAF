; ModuleID = './runzip.c'
source_filename = "./runzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.timeval = type { i64, i64 }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [11 x i8] c"./runzip.c\00", align 1
@__func__.runzip_fd = private unnamed_addr constant [10 x i8] c"runzip_fd\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to runzip_chunk in runzip_fd\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Failed to flush_tmpoutbuf in runzip_fd\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to dump_tmpoutfile in runzip_fd\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to clear_tmpinfile in runzip_fd\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"\0AAverage DeCompression Speed: %6.3fMB/s\0A\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"Failed to seekto_fdinend in rzip_fd\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Failed to seekto_fdin in rzip_fd\0A\00", align 1
@.str.8 = private unnamed_addr constant [38 x i8] c"Failed to read md5 data in runzip_fd\0A\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"MD5 CHECK FAILED.\0AStored:\00", align 1
@.str.10 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"\0AOutput file:\00", align 1
@.str.12 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"MD5: \00", align 1
@.str.14 = private unnamed_addr constant [38 x i8] c"Failed to seekto_fdhist in runzip_fd\0A\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Failed to fdopen fd_hist in runzip_fd\0A\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"Failed to md5_stream in runzip_fd\0A\00", align 1
@.str.18 = private unnamed_addr constant [47 x i8] c"MD5 integrity of written file matches archive\0A\00", align 1
@.str.19 = private unnamed_addr constant [158 x i8] c"Note this lrzip archive did not have a stored md5 value.\0AThe archive decompression was validated with crc32 and the md5 hash was calculated on decompression\0A\00", align 1
@__const.runzip_chunk.divisor = private unnamed_addr constant [4 x i64] [i64 1, i64 1024, i64 1048576, i64 1073741824], align 16
@.str.20 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.21 = private unnamed_addr constant [3 x i8] c"KB\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"MB\00", align 1
@.str.23 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@reltable.runzip_fd = private unnamed_addr constant [4 x i32] [i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.20 to i64), i64 ptrtoint (ptr @reltable.runzip_fd to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.21 to i64), i64 ptrtoint (ptr @reltable.runzip_fd to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.22 to i64), i64 ptrtoint (ptr @reltable.runzip_fd to i64)) to i32), i32 trunc (i64 sub (i64 ptrtoint (ptr @.str.23 to i64), i64 ptrtoint (ptr @reltable.runzip_fd to i64)) to i32)], align 4
@__func__.runzip_chunk = private unnamed_addr constant [13 x i8] c"runzip_chunk\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Reading chunk_bytes at %lld\0A\00", align 1
@.str.25 = private unnamed_addr constant [49 x i8] c"Failed to read chunk_bytes size in runzip_chunk\0A\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"chunk_bytes %d is invalid in runzip_chunk\0A\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Expected size: %lld\0A\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Chunk byte width: %d\0A\00", align 1
@.str.29 = private unnamed_addr constant [40 x i8] c"Failed to seek input file in runzip_fd\0A\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"Failed to open_stream_in in runzip_chunk\0A\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"%3d%%  %9.2f / %9.2f %s\0D\00", align 1
@.str.32 = private unnamed_addr constant [41 x i8] c"Bad checksum: 0x%08x - expected: 0x%08x\0A\00", align 1
@.str.33 = private unnamed_addr constant [28 x i8] c"Checksum for block: 0x%08x\0A\00", align 1
@.str.34 = private unnamed_addr constant [25 x i8] c"Failed to close stream!\0A\00", align 1
@__func__.read_u8 = private unnamed_addr constant [8 x i8] c"read_u8\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"Stream read u8 failed\0A\00", align 1
@__func__.read_vchars = private unnamed_addr constant [12 x i8] c"read_vchars\00", align 1
@.str.36 = private unnamed_addr constant [32 x i8] c"Stream read of %d bytes failed\0A\00", align 1
@__func__.unzip_literal = private unnamed_addr constant [14 x i8] c"unzip_literal\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"len %lld is negative in unzip_literal!\0A\00", align 1
@.str.38 = private unnamed_addr constant [46 x i8] c"Failed to malloc literal buffer of size %lld\0A\00", align 1
@.str.39 = private unnamed_addr constant [40 x i8] c"Failed to read_stream in unzip_literal\0A\00", align 1
@.str.40 = private unnamed_addr constant [45 x i8] c"Failed to write literal buffer of size %lld\0A\00", align 1
@__func__.unzip_match = private unnamed_addr constant [12 x i8] c"unzip_match\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"len %lld is negative in unzip_match!\0A\00", align 1
@.str.42 = private unnamed_addr constant [41 x i8] c"Seek failed on out file in unzip_match.\0A\00", align 1
@.str.43 = private unnamed_addr constant [58 x i8] c"Seek failed by %d from %d on history file in unzip_match\0A\00", align 1
@.str.44 = private unnamed_addr constant [44 x i8] c"Failed to malloc match buffer of size %lld\0A\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"Failed to read %d bytes in unzip_match\0A\00", align 1
@.str.46 = private unnamed_addr constant [41 x i8] c"Failed to write %d bytes in unzip_match\0A\00", align 1
@__func__.read_fdhist = private unnamed_addr constant [12 x i8] c"read_fdhist\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Trying to read beyond end of tmpoutbuf in read_fdhist\0A\00", align 1
@__func__.read_u32 = private unnamed_addr constant [9 x i8] c"read_u32\00", align 1
@.str.48 = private unnamed_addr constant [24 x i8] c"Stream read u32 failed\0A\00", align 1
@__func__.seekto_fdinend = private unnamed_addr constant [15 x i8] c"seekto_fdinend\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Trying to read greater than max_len\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stderr = external local_unnamed_addr global ptr, align 8
@__func__.seekto_fdin = private unnamed_addr constant [12 x i8] c"seekto_fdin\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"Trying to seek outside tmpinbuf to %lld in seekto_fdin\0A\00", align 1
@__func__.seekto_fdhist = private unnamed_addr constant [14 x i8] c"seekto_fdhist\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"Trying to seek outside tmpoutbuf to %lld in seekto_fdhist\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i64 @runzip_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) local_unnamed_addr #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8, align 1
  %10 = alloca i8, align 1
  %11 = alloca %struct.stat, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %12) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %14) #12
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %16 = load i64, ptr %15, align 8, !tbaa !5
  %17 = and i64 %16, 196608
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 52
  tail call void @md5_init_ctx(ptr noundef nonnull %20) #12
  br label %21

21:                                               ; preds = %5, %19
  %22 = call i32 @gettimeofday(ptr noundef nonnull %13, ptr noundef null) #12
  %23 = icmp sgt i64 %4, 10737418240
  %24 = sitofp i64 %4 to x86_fp80
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 32
  %26 = icmp sgt i64 %4, 10485760
  %27 = icmp sgt i64 %4, 10240
  %28 = zext i1 %27 to i64
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 33
  %30 = icmp ne i64 %4, 0
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 14
  %32 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 36
  %33 = getelementptr inbounds %struct.stat, ptr %11, i64 0, i32 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 70
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 12
  %36 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 37
  %38 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 9
  %39 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 10
  %40 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 11
  %41 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 38
  %42 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 7
  %43 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 52
  %44 = sitofp i64 %4 to double
  %45 = icmp eq i64 %4, 0
  %46 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 48
  %47 = select i1 %26, i64 2, i64 %28
  %48 = select i1 %23, i64 3, i64 %47
  %49 = getelementptr inbounds [4 x i64], ptr @__const.runzip_chunk.divisor, i64 0, i64 %48
  %50 = load i64, ptr %49, align 8, !tbaa !16
  %51 = uitofp i64 %50 to x86_fp80
  %52 = fdiv x86_fp80 %24, %51
  %53 = fptrunc x86_fp80 %52 to double
  %54 = uitofp i64 %50 to double
  %55 = shl i64 %48, 2
  br label %56

56:                                               ; preds = %382, %21
  %57 = phi i64 [ 0, %21 ], [ %352, %382 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #12
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #12
  %58 = load i8, ptr %25, align 1, !tbaa !17
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i8, ptr %29, align 2, !tbaa !18
  %62 = icmp slt i8 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i8 4, ptr %10, align 1, !tbaa !19
  br label %83

64:                                               ; preds = %60
  %65 = icmp eq i8 %61, 4
  br i1 %65, label %66, label %67

66:                                               ; preds = %64
  store i8 8, ptr %10, align 1, !tbaa !19
  br label %83

67:                                               ; preds = %64, %56
  %68 = load i64, ptr %15, align 8, !tbaa !5
  %69 = and i64 %68, 2048
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %67
  %72 = call i64 @get_readseek(ptr noundef nonnull %0, i32 noundef %1) #12
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 286, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.24, i64 noundef %72)
  br label %73

73:                                               ; preds = %71, %67
  %74 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %10, i64 noundef 1) #12
  %75 = icmp eq i64 %74, 1
  br i1 %75, label %77, label %76, !prof !20

76:                                               ; preds = %73
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 289, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.25)
  br label %346

77:                                               ; preds = %73
  %78 = load i8, ptr %10, align 1, !tbaa !19
  %79 = add i8 %78, -9
  %80 = icmp ult i8 %79, -8
  br i1 %80, label %81, label %83, !prof !21

81:                                               ; preds = %77
  %82 = sext i8 %78 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 291, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.26, i32 noundef %82)
  br label %346

83:                                               ; preds = %77, %66, %63
  %84 = icmp eq i64 %57, 0
  %85 = and i1 %30, %84
  br i1 %85, label %86, label %91

86:                                               ; preds = %83
  %87 = load i64, ptr %15, align 8, !tbaa !5
  %88 = and i64 %87, 2048
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %86
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 294, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.27, i64 noundef %4)
  br label %91

91:                                               ; preds = %90, %86, %83
  %92 = load i64, ptr %15, align 8, !tbaa !5
  %93 = and i64 %92, 2048
  %94 = icmp eq i64 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i8, ptr %10, align 1, !tbaa !19
  %97 = sext i8 %96 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 295, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.28, i32 noundef %97)
  %98 = load i64, ptr %15, align 8, !tbaa !5
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i64 [ %98, %95 ], [ %92, %91 ]
  %101 = and i64 %100, 4194304
  %102 = icmp eq i64 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, ptr %32, align 8, !tbaa !22
  %105 = call i64 @lseek64(i32 noundef %104, i64 noundef 0, i32 noundef 1) #12
  br label %108

106:                                              ; preds = %99
  %107 = load i64, ptr %31, align 8, !tbaa !23
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i64 [ %107, %106 ], [ %105, %103 ]
  %110 = icmp eq i64 %109, -1
  br i1 %110, label %111, label %112, !prof !21

111:                                              ; preds = %108
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 299, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.29)
  br label %346

112:                                              ; preds = %108
  %113 = call i32 @fstat64(i32 noundef %1, ptr noundef nonnull %11) #12
  %114 = icmp ne i32 %113, 0
  %115 = load i64, ptr %33, align 8
  %116 = icmp eq i64 %115, %109
  %117 = select i1 %114, i1 true, i1 %116
  br i1 %117, label %118, label %119

118:                                              ; preds = %112
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %350

119:                                              ; preds = %112
  %120 = load i8, ptr %10, align 1, !tbaa !19
  %121 = call ptr @open_stream_in(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 2, i8 noundef signext %120) #12
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %124, !prof !21

123:                                              ; preds = %119
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 306, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.30)
  br label %346

124:                                              ; preds = %119
  %125 = load i8, ptr %25, align 1, !tbaa !17
  %126 = icmp eq i8 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %124
  %128 = load i8, ptr %29, align 2, !tbaa !18
  %129 = icmp eq i8 %128, 4
  br i1 %129, label %131, label %130

130:                                              ; preds = %127, %124
  br label %131

131:                                              ; preds = %130, %127
  %132 = phi i8 [ 2, %130 ], [ 8, %127 ]
  store i8 %132, ptr %34, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  %133 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %9, i64 noundef 1) #12
  %134 = icmp eq i64 %133, 1
  br i1 %134, label %136, label %135, !prof !20

135:                                              ; preds = %131, %319
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 57, ptr nonnull poison, ptr noundef nonnull @__func__.read_u8, ptr noundef nonnull @.str.35)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  br label %346

136:                                              ; preds = %131, %319
  %137 = phi i64 [ %302, %319 ], [ 0, %131 ]
  %138 = phi i32 [ %320, %319 ], [ -1, %131 ]
  %139 = phi i32 [ %300, %319 ], [ 0, %131 ]
  %140 = load i8, ptr %9, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %9) #12
  %141 = load i8, ptr %34, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #12
  store i64 0, ptr %8, align 8, !tbaa !16
  %142 = sext i8 %141 to i64
  %143 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %8, i64 noundef %142) #12
  %144 = icmp eq i64 %143, %142
  br i1 %144, label %147, label %145, !prof !20

145:                                              ; preds = %136
  %146 = sext i8 %141 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 80, ptr nonnull poison, ptr noundef nonnull @__func__.read_vchars, ptr noundef nonnull @.str.36, i32 noundef %146)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  br label %346

147:                                              ; preds = %136
  %148 = load i64, ptr %8, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #12
  %149 = icmp ne i64 %148, 0
  %150 = icmp ne i8 %140, 0
  %151 = select i1 %149, i1 true, i1 %150
  br i1 %151, label %152, label %323

152:                                              ; preds = %147
  %153 = icmp eq i64 %148, -1
  br i1 %153, label %346, label %154, !prof !21

154:                                              ; preds = %152
  %155 = icmp eq i8 %140, 0
  br i1 %155, label %156, label %186

156:                                              ; preds = %154
  %157 = icmp slt i64 %148, 0
  br i1 %157, label %158, label %159, !prof !21

158:                                              ; preds = %156
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 156, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_literal, ptr noundef nonnull @.str.37, i64 noundef %148)
  br label %184

159:                                              ; preds = %156
  %160 = call noalias ptr @malloc(i64 noundef %148) #13
  %161 = icmp eq ptr %160, null
  br i1 %161, label %162, label %163, !prof !21

162:                                              ; preds = %159
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 160, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_literal, ptr noundef nonnull @.str.38, i64 noundef %148)
  br label %184

163:                                              ; preds = %159
  %164 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 1, ptr noundef nonnull %160, i64 noundef %148) #12
  %165 = icmp eq i64 %164, -1
  br i1 %165, label %166, label %167, !prof !21

166:                                              ; preds = %163
  call void @free(ptr noundef nonnull %160) #12
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 165, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_literal, ptr noundef nonnull @.str.39)
  br label %184

167:                                              ; preds = %163
  %168 = call i64 @write_1g(ptr noundef nonnull %0, ptr noundef nonnull %160, i64 noundef %164) #12
  %169 = icmp eq i64 %168, %164
  br i1 %169, label %171, label %170, !prof !20

170:                                              ; preds = %167
  call void @free(ptr noundef nonnull %160) #12
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 170, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_literal, ptr noundef nonnull @.str.40, i64 noundef %164)
  br label %184

171:                                              ; preds = %167
  %172 = load i64, ptr %15, align 8, !tbaa !5
  %173 = and i64 %172, 131072
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %171
  %176 = call i32 @CrcUpdate(i32 noundef %139, ptr noundef nonnull %160, i64 noundef %164) #12
  %177 = load i64, ptr %15, align 8, !tbaa !5
  br label %178

178:                                              ; preds = %175, %171
  %179 = phi i32 [ %176, %175 ], [ %139, %171 ]
  %180 = phi i64 [ %177, %175 ], [ %172, %171 ]
  %181 = and i64 %180, 196608
  %182 = icmp eq i64 %181, 0
  br i1 %182, label %295, label %183

183:                                              ; preds = %178
  call void @md5_process_bytes(ptr noundef nonnull %160, i64 noundef %164, ptr noundef nonnull %43) #12
  br label %295

184:                                              ; preds = %170, %166, %162, %158
  %185 = call i32 @close_stream_in(ptr noundef nonnull %0, ptr noundef nonnull %121) #12
  br label %346

186:                                              ; preds = %154
  %187 = load i8, ptr %10, align 1, !tbaa !19
  %188 = icmp slt i64 %148, 0
  br i1 %188, label %189, label %190, !prof !21

189:                                              ; preds = %186
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 200, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.41, i64 noundef %148)
  br label %293

190:                                              ; preds = %186
  %191 = load i64, ptr %15, align 8, !tbaa !5
  %192 = and i64 %191, 2097152
  %193 = icmp eq i64 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %190
  %195 = load i32, ptr %37, align 4, !tbaa !25
  %196 = call i64 @lseek64(i32 noundef %195, i64 noundef 0, i32 noundef 1) #12
  br label %201

197:                                              ; preds = %190
  %198 = load i64, ptr %35, align 8, !tbaa !26
  %199 = load i64, ptr %36, align 8, !tbaa !27
  %200 = add nsw i64 %199, %198
  br label %201

201:                                              ; preds = %197, %194
  %202 = phi i64 [ %200, %197 ], [ %196, %194 ]
  %203 = icmp eq i64 %202, -1
  br i1 %203, label %204, label %205, !prof !21

204:                                              ; preds = %201
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 205, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.42)
  br label %293

205:                                              ; preds = %201
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #12
  store i64 0, ptr %7, align 8, !tbaa !16
  %206 = sext i8 %187 to i64
  %207 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %7, i64 noundef %206) #12
  %208 = icmp eq i64 %207, %206
  br i1 %208, label %211, label %209, !prof !20

209:                                              ; preds = %205
  %210 = sext i8 %187 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 80, ptr nonnull poison, ptr noundef nonnull @__func__.read_vchars, ptr noundef nonnull @.str.36, i32 noundef %210)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  br label %293

211:                                              ; preds = %205
  %212 = load i64, ptr %7, align 8, !tbaa !16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #12
  %213 = icmp eq i64 %212, -1
  br i1 %213, label %293, label %214, !prof !21

214:                                              ; preds = %211
  %215 = sub nsw i64 %202, %212
  %216 = load i64, ptr %15, align 8, !tbaa !5
  %217 = and i64 %216, 2097152
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %214
  %220 = load i32, ptr %41, align 8, !tbaa !28
  %221 = call i64 @lseek64(i32 noundef %220, i64 noundef %215, i32 noundef 0) #12
  br label %234

222:                                              ; preds = %214
  %223 = load i64, ptr %35, align 8, !tbaa !26
  %224 = sub nsw i64 %215, %223
  store i64 %224, ptr %38, align 8, !tbaa !29
  %225 = load i64, ptr %39, align 8, !tbaa !30
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  store i64 %224, ptr %39, align 8, !tbaa !30
  br label %228

228:                                              ; preds = %227, %222
  %229 = icmp slt i64 %224, 0
  br i1 %229, label %233, label %230, !prof !21

230:                                              ; preds = %228
  %231 = load i64, ptr %40, align 8, !tbaa !31
  %232 = icmp sgt i64 %224, %231
  br i1 %232, label %233, label %234, !prof !21

233:                                              ; preds = %230, %228
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 100, ptr nonnull poison, ptr noundef nonnull @__func__.seekto_fdhist, ptr noundef nonnull @.str.51, i64 noundef %224)
  br label %237

234:                                              ; preds = %230, %219
  %235 = phi i64 [ %221, %219 ], [ %215, %230 ]
  %236 = icmp eq i64 %235, -1
  br i1 %236, label %237, label %238, !prof !21

237:                                              ; preds = %234, %233
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 213, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.43, i64 noundef %212, i64 noundef %202)
  br label %293

238:                                              ; preds = %234
  %239 = call noalias ptr @malloc(i64 noundef %148) #13
  %240 = icmp eq ptr %239, null
  br i1 %240, label %243, label %241, !prof !21

241:                                              ; preds = %238
  %242 = icmp eq i64 %148, 0
  br i1 %242, label %295, label %244

243:                                              ; preds = %238
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 217, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.44, i64 noundef %148)
  br label %293

244:                                              ; preds = %241, %286
  %245 = phi i32 [ %281, %286 ], [ %139, %241 ]
  %246 = phi ptr [ %288, %286 ], [ %239, %241 ]
  %247 = phi i64 [ %289, %286 ], [ 0, %241 ]
  %248 = phi i64 [ %287, %286 ], [ %148, %241 ]
  %249 = call i64 @llvm.smin.i64(i64 %248, i64 %212)
  %250 = load i64, ptr %15, align 8, !tbaa !5
  %251 = and i64 %250, 2097152
  %252 = icmp eq i64 %251, 0
  br i1 %252, label %253, label %256

253:                                              ; preds = %244
  %254 = load i32, ptr %41, align 8, !tbaa !28
  %255 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %254, ptr noundef %246, i64 noundef %249) #12
  br label %265

256:                                              ; preds = %244
  %257 = load i64, ptr %38, align 8, !tbaa !29
  %258 = add nsw i64 %257, %249
  %259 = load i64, ptr %40, align 8, !tbaa !31
  %260 = icmp sgt i64 %258, %259
  br i1 %260, label %261, label %262, !prof !21

261:                                              ; preds = %256
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 187, ptr nonnull poison, ptr noundef nonnull @__func__.read_fdhist, ptr noundef nonnull @.str.47)
  br label %265

262:                                              ; preds = %256
  %263 = load ptr, ptr %42, align 8, !tbaa !32
  %264 = getelementptr inbounds i8, ptr %263, i64 %257
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %246, ptr align 1 %264, i64 %249, i1 false)
  br label %269

265:                                              ; preds = %261, %253
  %266 = phi i64 [ -1, %261 ], [ %255, %253 ]
  %267 = icmp eq i64 %266, %249
  br i1 %267, label %269, label %268, !prof !20

268:                                              ; preds = %265
  call void @free(ptr noundef %239) #12
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 225, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.45, i64 noundef %249)
  br label %293

269:                                              ; preds = %265, %262
  %270 = call i64 @write_1g(ptr noundef nonnull %0, ptr noundef %246, i64 noundef %249) #12
  %271 = icmp eq i64 %270, %249
  br i1 %271, label %273, label %272, !prof !20

272:                                              ; preds = %269
  call void @free(ptr noundef %239) #12
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 229, ptr nonnull poison, ptr noundef nonnull @__func__.unzip_match, ptr noundef nonnull @.str.46, i64 noundef %249)
  br label %293

273:                                              ; preds = %269
  %274 = load i64, ptr %15, align 8, !tbaa !5
  %275 = and i64 %274, 131072
  %276 = icmp eq i64 %275, 0
  br i1 %276, label %277, label %280

277:                                              ; preds = %273
  %278 = call i32 @CrcUpdate(i32 noundef %245, ptr noundef %246, i64 noundef %249) #12
  %279 = load i64, ptr %15, align 8, !tbaa !5
  br label %280

280:                                              ; preds = %277, %273
  %281 = phi i32 [ %278, %277 ], [ %245, %273 ]
  %282 = phi i64 [ %279, %277 ], [ %274, %273 ]
  %283 = and i64 %282, 196608
  %284 = icmp eq i64 %283, 0
  br i1 %284, label %286, label %285

285:                                              ; preds = %280
  call void @md5_process_bytes(ptr noundef %246, i64 noundef %249, ptr noundef nonnull %43) #12
  br label %286

286:                                              ; preds = %285, %280
  %287 = sub nsw i64 %248, %249
  %288 = getelementptr inbounds i8, ptr %246, i64 %249
  %289 = add nsw i64 %249, %247
  %290 = icmp eq i64 %287, 0
  br i1 %290, label %291, label %244, !llvm.loop !33

291:                                              ; preds = %286
  call void @free(ptr noundef %239) #12
  %292 = icmp eq i64 %289, -1
  br i1 %292, label %293, label %299, !prof !21

293:                                              ; preds = %291, %211, %272, %268, %243, %237, %209, %204, %189
  %294 = call i32 @close_stream_in(ptr noundef nonnull %0, ptr noundef nonnull %121) #12
  br label %346

295:                                              ; preds = %241, %183, %178
  %296 = phi ptr [ %160, %178 ], [ %160, %183 ], [ %239, %241 ]
  %297 = phi i32 [ %179, %178 ], [ %179, %183 ], [ %139, %241 ]
  %298 = phi i64 [ %164, %178 ], [ %164, %183 ], [ 0, %241 ]
  call void @free(ptr noundef nonnull %296) #12
  br label %299

299:                                              ; preds = %295, %291
  %300 = phi i32 [ %281, %291 ], [ %297, %295 ]
  %301 = phi i64 [ %289, %291 ], [ %298, %295 ]
  %302 = add nsw i64 %301, %137
  br i1 %30, label %303, label %319

303:                                              ; preds = %299
  %304 = add nsw i64 %302, %57
  %305 = sitofp i64 %304 to double
  %306 = fdiv double %305, %44
  %307 = fmul double %306, 1.000000e+02
  %308 = fptosi double %307 to i32
  %309 = sdiv i32 %308, 10
  %310 = sdiv i32 %138, 10
  %311 = icmp eq i32 %309, %310
  br i1 %311, label %319, label %312

312:                                              ; preds = %303
  %313 = load i64, ptr %15, align 8, !tbaa !5
  %314 = and i64 %313, 1
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %319, label %316

316:                                              ; preds = %312
  %317 = fdiv double %305, %54
  %318 = call ptr @llvm.load.relative.i64(ptr @reltable.runzip_fd, i64 %55)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 342, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.31, i32 noundef %308, double noundef %317, double noundef %53, ptr noundef %318)
  br label %319

319:                                              ; preds = %316, %312, %303, %299
  %320 = phi i32 [ %138, %303 ], [ %138, %299 ], [ %308, %316 ], [ %308, %312 ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %9) #12
  %321 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %9, i64 noundef 1) #12
  %322 = icmp eq i64 %321, 1
  br i1 %322, label %136, label %135, !prof !20, !llvm.loop !35

323:                                              ; preds = %147
  %324 = load i64, ptr %15, align 8, !tbaa !5
  %325 = and i64 %324, 131072
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %342

327:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #12
  %328 = call i64 @read_stream(ptr noundef nonnull %0, ptr noundef nonnull %121, i32 noundef 0, ptr noundef nonnull %6, i64 noundef 4) #12
  %329 = icmp eq i64 %328, 4
  br i1 %329, label %332, label %330, !prof !20

330:                                              ; preds = %327
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 68, ptr nonnull poison, ptr noundef nonnull @__func__.read_u32, ptr noundef nonnull @.str.48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %331 = call i32 @close_stream_in(ptr noundef nonnull %0, ptr noundef nonnull %121) #12
  br label %346

332:                                              ; preds = %327
  %333 = load i32, ptr %6, align 4, !tbaa !36
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #12
  %334 = icmp eq i32 %333, %139
  br i1 %334, label %337, label %335, !prof !20

335:                                              ; preds = %332
  %336 = call i32 @close_stream_in(ptr noundef nonnull %0, ptr noundef nonnull %121) #12
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 356, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.32, i32 noundef %139, i32 noundef %333)
  br label %346

337:                                              ; preds = %332
  %338 = load i64, ptr %15, align 8, !tbaa !5
  %339 = and i64 %338, 2048
  %340 = icmp eq i64 %339, 0
  br i1 %340, label %342, label %341

341:                                              ; preds = %337
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 4, i32 noundef 358, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.33, i32 noundef %139)
  br label %342

342:                                              ; preds = %341, %337, %323
  %343 = call i32 @close_stream_in(ptr noundef nonnull %0, ptr noundef nonnull %121) #12
  %344 = icmp eq i32 %343, 0
  br i1 %344, label %347, label %345, !prof !20

345:                                              ; preds = %342
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 362, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_chunk, ptr noundef nonnull @.str.34)
  br label %347

346:                                              ; preds = %152, %111, %123, %330, %335, %76, %81, %184, %293, %135, %145
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  br label %349

347:                                              ; preds = %342, %345
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #12
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #12
  %348 = icmp eq i64 %137, -1
  br i1 %348, label %349, label %350, !prof !21

349:                                              ; preds = %347, %346
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 384, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.1)
  br label %945

350:                                              ; preds = %118, %347
  %351 = phi i64 [ 0, %118 ], [ %137, %347 ]
  %352 = add nsw i64 %351, %57
  %353 = load i64, ptr %15, align 8, !tbaa !5
  %354 = and i64 %353, 2097152
  %355 = icmp eq i64 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %350
  %357 = call zeroext i1 @flush_tmpoutbuf(ptr noundef nonnull %0) #12
  br i1 %357, label %365, label %358, !prof !20

358:                                              ; preds = %356
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 390, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.2)
  br label %945

359:                                              ; preds = %350
  %360 = and i64 %353, 8192
  %361 = icmp eq i64 %360, 0
  br i1 %361, label %365, label %362

362:                                              ; preds = %359
  %363 = call zeroext i1 @dump_tmpoutfile(ptr noundef nonnull %0, i32 noundef %2) #12
  br i1 %363, label %365, label %364, !prof !20

364:                                              ; preds = %362
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 395, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.3)
  br label %945

365:                                              ; preds = %359, %362, %356
  %366 = load i64, ptr %15, align 8, !tbaa !5
  %367 = and i64 %366, 4194304
  %368 = icmp eq i64 %367, 0
  br i1 %368, label %370, label %369

369:                                              ; preds = %365
  call void @clear_tmpinbuf(ptr noundef nonnull %0) #12
  br label %376

370:                                              ; preds = %365
  %371 = and i64 %366, 4112
  %372 = icmp eq i64 %371, 4096
  br i1 %372, label %373, label %376

373:                                              ; preds = %370
  %374 = call zeroext i1 @clear_tmpinfile(ptr noundef nonnull %0) #12
  br i1 %374, label %376, label %375, !prof !20

375:                                              ; preds = %373
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 403, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.4)
  br label %945

376:                                              ; preds = %369, %373, %370
  %377 = icmp slt i64 %352, %4
  br i1 %377, label %382, label %378

378:                                              ; preds = %376
  br i1 %45, label %379, label %383

379:                                              ; preds = %378
  %380 = load i8, ptr %46, align 8, !tbaa !37
  %381 = icmp eq i8 %380, 0
  br i1 %381, label %382, label %383

382:                                              ; preds = %379, %376
  br label %56, !llvm.loop !38

383:                                              ; preds = %378, %379
  %384 = call i32 @gettimeofday(ptr noundef nonnull %14, ptr noundef null) #12
  %385 = load i64, ptr %15, align 8, !tbaa !5
  %386 = and i64 %385, 8388609
  %387 = icmp eq i64 %386, 1
  br i1 %387, label %388, label %399

388:                                              ; preds = %383
  %389 = load i64, ptr %14, align 8, !tbaa !39
  %390 = load i64, ptr %13, align 8, !tbaa !39
  %391 = icmp eq i64 %389, %390
  %392 = sub nsw i64 %389, %390
  %393 = sitofp i64 %392 to double
  %394 = select i1 %391, double 1.000000e+00, double %393
  %395 = sdiv i64 %352, 1048576
  %396 = sitofp i64 %395 to double
  %397 = fdiv double %396, %394
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 415, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.5, double noundef %397)
  %398 = load i64, ptr %15, align 8, !tbaa !5
  br label %399

399:                                              ; preds = %388, %383
  %400 = phi i64 [ %398, %388 ], [ %385, %383 ]
  %401 = and i64 %400, 196608
  %402 = icmp eq i64 %401, 0
  br i1 %402, label %945, label %403

403:                                              ; preds = %399
  %404 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53
  %405 = call ptr @md5_finish_ctx(ptr noundef nonnull %43, ptr noundef nonnull %404) #12
  %406 = load i64, ptr %15, align 8, !tbaa !5
  %407 = and i64 %406, 131072
  %408 = icmp eq i64 %407, 0
  br i1 %408, label %660, label %409

409:                                              ; preds = %403
  %410 = and i64 %406, 4194304
  %411 = icmp eq i64 %410, 0
  br i1 %411, label %416, label %412

412:                                              ; preds = %409
  %413 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 13
  %414 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 15
  %415 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 16
  br label %419

416:                                              ; preds = %409
  %417 = load i32, ptr %32, align 8, !tbaa !22
  %418 = call i64 @lseek64(i32 noundef %417, i64 noundef 0, i32 noundef 2) #12
  br label %435

419:                                              ; preds = %423, %412
  %420 = load ptr, ptr @stdin, align 8, !tbaa !41
  %421 = call i32 @getc(ptr noundef %420)
  %422 = icmp eq i32 %421, -1
  br i1 %422, label %433, label %423

423:                                              ; preds = %419
  %424 = trunc i32 %421 to i8
  %425 = load ptr, ptr %413, align 8, !tbaa !42
  %426 = load i64, ptr %414, align 8, !tbaa !43
  %427 = add nsw i64 %426, 1
  store i64 %427, ptr %414, align 8, !tbaa !43
  %428 = getelementptr inbounds i8, ptr %425, i64 %426
  store i8 %424, ptr %428, align 1, !tbaa !19
  %429 = load i64, ptr %414, align 8, !tbaa !43
  %430 = load i64, ptr %415, align 8, !tbaa !44
  %431 = icmp sgt i64 %429, %430
  br i1 %431, label %432, label %419, !prof !21, !llvm.loop !45

432:                                              ; preds = %423
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 134, ptr nonnull poison, ptr noundef nonnull @__func__.seekto_fdinend, ptr noundef nonnull @.str.49)
  br label %438

433:                                              ; preds = %419
  %434 = load i64, ptr %414, align 8, !tbaa !43
  store i64 %434, ptr %31, align 8, !tbaa !23
  br label %435

435:                                              ; preds = %416, %433
  %436 = phi i64 [ %434, %433 ], [ %418, %416 ]
  %437 = icmp eq i64 %436, -1
  br i1 %437, label %438, label %439, !prof !21

438:                                              ; preds = %432, %435
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 426, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.6)
  br label %945

439:                                              ; preds = %435
  %440 = add nsw i64 %436, -16
  %441 = load i64, ptr %15, align 8, !tbaa !5
  %442 = and i64 %441, 4194304
  %443 = icmp eq i64 %442, 0
  br i1 %443, label %452, label %444

444:                                              ; preds = %439
  %445 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 15
  %446 = load i64, ptr %445, align 8, !tbaa !43
  %447 = icmp slt i64 %446, %440
  %448 = icmp slt i64 %436, 16
  %449 = or i1 %448, %447
  br i1 %449, label %450, label %451, !prof !21

450:                                              ; preds = %444
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 118, ptr nonnull poison, ptr noundef nonnull @__func__.seekto_fdin, ptr noundef nonnull @.str.50, i64 noundef %440)
  br label %456

451:                                              ; preds = %444
  store i64 %440, ptr %31, align 8, !tbaa !23
  br label %457

452:                                              ; preds = %439
  %453 = load i32, ptr %32, align 8, !tbaa !22
  %454 = call i64 @lseek64(i32 noundef %453, i64 noundef %440, i32 noundef 0) #12
  %455 = icmp eq i64 %454, -1
  br i1 %455, label %456, label %457, !prof !21

456:                                              ; preds = %450, %452
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 428, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.7)
  br label %945

457:                                              ; preds = %451, %452
  %458 = call i64 @read_1g(ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %12, i64 noundef 16) #12
  %459 = icmp eq i64 %458, 16
  br i1 %459, label %461, label %460, !prof !20

460:                                              ; preds = %457
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 431, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.8)
  br label %945

461:                                              ; preds = %457
  %462 = load i64, ptr %15, align 8, !tbaa !5
  %463 = and i64 %462, 8388608
  %464 = icmp eq i64 %463, 0
  br i1 %464, label %469, label %465

465:                                              ; preds = %461
  %466 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  %467 = load ptr, ptr %466, align 8, !tbaa !46
  %468 = call zeroext i1 @lrz_crypt(ptr noundef nonnull %0, ptr noundef nonnull %12, i64 noundef 16, ptr noundef %467, i32 noundef 0) #12
  br i1 %468, label %469, label %945, !prof !20

469:                                              ; preds = %465, %461
  %470 = load i8, ptr %12, align 16, !tbaa !19
  %471 = load i8, ptr %404, align 1, !tbaa !19
  %472 = icmp eq i8 %470, %471
  br i1 %472, label %473, label %565

473:                                              ; preds = %469
  %474 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 1
  %475 = load i8, ptr %474, align 1, !tbaa !19
  %476 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %477 = load i8, ptr %476, align 1, !tbaa !19
  %478 = icmp eq i8 %475, %477
  br i1 %478, label %479, label %565

479:                                              ; preds = %473
  %480 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 2
  %481 = load i8, ptr %480, align 2, !tbaa !19
  %482 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %483 = load i8, ptr %482, align 1, !tbaa !19
  %484 = icmp eq i8 %481, %483
  br i1 %484, label %485, label %565

485:                                              ; preds = %479
  %486 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 3
  %487 = load i8, ptr %486, align 1, !tbaa !19
  %488 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %489 = load i8, ptr %488, align 1, !tbaa !19
  %490 = icmp eq i8 %487, %489
  br i1 %490, label %491, label %565

491:                                              ; preds = %485
  %492 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 4
  %493 = load i8, ptr %492, align 4, !tbaa !19
  %494 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %495 = load i8, ptr %494, align 1, !tbaa !19
  %496 = icmp eq i8 %493, %495
  br i1 %496, label %497, label %565

497:                                              ; preds = %491
  %498 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 5
  %499 = load i8, ptr %498, align 1, !tbaa !19
  %500 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %501 = load i8, ptr %500, align 1, !tbaa !19
  %502 = icmp eq i8 %499, %501
  br i1 %502, label %503, label %565

503:                                              ; preds = %497
  %504 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 6
  %505 = load i8, ptr %504, align 2, !tbaa !19
  %506 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %507 = load i8, ptr %506, align 1, !tbaa !19
  %508 = icmp eq i8 %505, %507
  br i1 %508, label %509, label %565

509:                                              ; preds = %503
  %510 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 7
  %511 = load i8, ptr %510, align 1, !tbaa !19
  %512 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %513 = load i8, ptr %512, align 1, !tbaa !19
  %514 = icmp eq i8 %511, %513
  br i1 %514, label %515, label %565

515:                                              ; preds = %509
  %516 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 8
  %517 = load i8, ptr %516, align 8, !tbaa !19
  %518 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %519 = load i8, ptr %518, align 1, !tbaa !19
  %520 = icmp eq i8 %517, %519
  br i1 %520, label %521, label %565

521:                                              ; preds = %515
  %522 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 9
  %523 = load i8, ptr %522, align 1, !tbaa !19
  %524 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %525 = load i8, ptr %524, align 1, !tbaa !19
  %526 = icmp eq i8 %523, %525
  br i1 %526, label %527, label %565

527:                                              ; preds = %521
  %528 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 10
  %529 = load i8, ptr %528, align 2, !tbaa !19
  %530 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %531 = load i8, ptr %530, align 1, !tbaa !19
  %532 = icmp eq i8 %529, %531
  br i1 %532, label %533, label %565

533:                                              ; preds = %527
  %534 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 11
  %535 = load i8, ptr %534, align 1, !tbaa !19
  %536 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %537 = load i8, ptr %536, align 1, !tbaa !19
  %538 = icmp eq i8 %535, %537
  br i1 %538, label %539, label %565

539:                                              ; preds = %533
  %540 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 12
  %541 = load i8, ptr %540, align 4, !tbaa !19
  %542 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %543 = load i8, ptr %542, align 1, !tbaa !19
  %544 = icmp eq i8 %541, %543
  br i1 %544, label %545, label %565

545:                                              ; preds = %539
  %546 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 13
  %547 = load i8, ptr %546, align 1, !tbaa !19
  %548 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %549 = load i8, ptr %548, align 1, !tbaa !19
  %550 = icmp eq i8 %547, %549
  br i1 %550, label %551, label %565

551:                                              ; preds = %545
  %552 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 14
  %553 = load i8, ptr %552, align 2, !tbaa !19
  %554 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %555 = load i8, ptr %554, align 1, !tbaa !19
  %556 = icmp eq i8 %553, %555
  br i1 %556, label %557, label %565

557:                                              ; preds = %551
  %558 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 15
  %559 = load i8, ptr %558, align 1, !tbaa !19
  %560 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %561 = load i8, ptr %560, align 1, !tbaa !19
  %562 = icmp eq i8 %559, %561
  br i1 %562, label %563, label %565

563:                                              ; preds = %557
  %564 = load i64, ptr %15, align 8, !tbaa !5
  br label %660

565:                                              ; preds = %557, %551, %545, %539, %533, %527, %521, %515, %509, %503, %497, %491, %485, %479, %473, %469
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 437, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.9)
  %566 = load i8, ptr %12, align 16, !tbaa !19
  %567 = zext i8 %566 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %567)
  %568 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 1
  %569 = load i8, ptr %568, align 1, !tbaa !19
  %570 = zext i8 %569 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %570)
  %571 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 2
  %572 = load i8, ptr %571, align 2, !tbaa !19
  %573 = zext i8 %572 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %573)
  %574 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 3
  %575 = load i8, ptr %574, align 1, !tbaa !19
  %576 = zext i8 %575 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %576)
  %577 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 4
  %578 = load i8, ptr %577, align 4, !tbaa !19
  %579 = zext i8 %578 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %579)
  %580 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 5
  %581 = load i8, ptr %580, align 1, !tbaa !19
  %582 = zext i8 %581 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %582)
  %583 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 6
  %584 = load i8, ptr %583, align 2, !tbaa !19
  %585 = zext i8 %584 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %585)
  %586 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 7
  %587 = load i8, ptr %586, align 1, !tbaa !19
  %588 = zext i8 %587 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %588)
  %589 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 8
  %590 = load i8, ptr %589, align 8, !tbaa !19
  %591 = zext i8 %590 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %591)
  %592 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 9
  %593 = load i8, ptr %592, align 1, !tbaa !19
  %594 = zext i8 %593 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %594)
  %595 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 10
  %596 = load i8, ptr %595, align 2, !tbaa !19
  %597 = zext i8 %596 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %597)
  %598 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 11
  %599 = load i8, ptr %598, align 1, !tbaa !19
  %600 = zext i8 %599 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %600)
  %601 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 12
  %602 = load i8, ptr %601, align 4, !tbaa !19
  %603 = zext i8 %602 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %603)
  %604 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 13
  %605 = load i8, ptr %604, align 1, !tbaa !19
  %606 = zext i8 %605 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %606)
  %607 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 14
  %608 = load i8, ptr %607, align 2, !tbaa !19
  %609 = zext i8 %608 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %609)
  %610 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 15
  %611 = load i8, ptr %610, align 1, !tbaa !19
  %612 = zext i8 %611 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 439, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %612)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 440, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.11)
  %613 = load i8, ptr %404, align 1, !tbaa !19
  %614 = zext i8 %613 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %614)
  %615 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %616 = load i8, ptr %615, align 1, !tbaa !19
  %617 = zext i8 %616 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %617)
  %618 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %619 = load i8, ptr %618, align 1, !tbaa !19
  %620 = zext i8 %619 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %620)
  %621 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %622 = load i8, ptr %621, align 1, !tbaa !19
  %623 = zext i8 %622 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %623)
  %624 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %625 = load i8, ptr %624, align 1, !tbaa !19
  %626 = zext i8 %625 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %626)
  %627 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %628 = load i8, ptr %627, align 1, !tbaa !19
  %629 = zext i8 %628 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %629)
  %630 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %631 = load i8, ptr %630, align 1, !tbaa !19
  %632 = zext i8 %631 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %632)
  %633 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %634 = load i8, ptr %633, align 1, !tbaa !19
  %635 = zext i8 %634 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %635)
  %636 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %637 = load i8, ptr %636, align 1, !tbaa !19
  %638 = zext i8 %637 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %638)
  %639 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %640 = load i8, ptr %639, align 1, !tbaa !19
  %641 = zext i8 %640 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %641)
  %642 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %643 = load i8, ptr %642, align 1, !tbaa !19
  %644 = zext i8 %643 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %644)
  %645 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %646 = load i8, ptr %645, align 1, !tbaa !19
  %647 = zext i8 %646 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %647)
  %648 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %649 = load i8, ptr %648, align 1, !tbaa !19
  %650 = zext i8 %649 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %650)
  %651 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %652 = load i8, ptr %651, align 1, !tbaa !19
  %653 = zext i8 %652 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %653)
  %654 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %655 = load i8, ptr %654, align 1, !tbaa !19
  %656 = zext i8 %655 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %656)
  %657 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %658 = load i8, ptr %657, align 1, !tbaa !19
  %659 = zext i8 %658 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 442, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %659)
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 443, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.12)
  br label %945

660:                                              ; preds = %563, %403
  %661 = phi i64 [ %564, %563 ], [ %406, %403 ]
  %662 = and i64 %661, 67584
  %663 = icmp eq i64 %662, 0
  br i1 %663, label %713, label %664

664:                                              ; preds = %660
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 448, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.13)
  %665 = load i8, ptr %404, align 1, !tbaa !19
  %666 = zext i8 %665 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %666)
  %667 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %668 = load i8, ptr %667, align 1, !tbaa !19
  %669 = zext i8 %668 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %669)
  %670 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %671 = load i8, ptr %670, align 1, !tbaa !19
  %672 = zext i8 %671 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %672)
  %673 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %674 = load i8, ptr %673, align 1, !tbaa !19
  %675 = zext i8 %674 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %675)
  %676 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %677 = load i8, ptr %676, align 1, !tbaa !19
  %678 = zext i8 %677 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %678)
  %679 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %680 = load i8, ptr %679, align 1, !tbaa !19
  %681 = zext i8 %680 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %681)
  %682 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %683 = load i8, ptr %682, align 1, !tbaa !19
  %684 = zext i8 %683 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %684)
  %685 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %686 = load i8, ptr %685, align 1, !tbaa !19
  %687 = zext i8 %686 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %687)
  %688 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %689 = load i8, ptr %688, align 1, !tbaa !19
  %690 = zext i8 %689 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %690)
  %691 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %692 = load i8, ptr %691, align 1, !tbaa !19
  %693 = zext i8 %692 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %693)
  %694 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %695 = load i8, ptr %694, align 1, !tbaa !19
  %696 = zext i8 %695 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %696)
  %697 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %698 = load i8, ptr %697, align 1, !tbaa !19
  %699 = zext i8 %698 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %699)
  %700 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %701 = load i8, ptr %700, align 1, !tbaa !19
  %702 = zext i8 %701 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %702)
  %703 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %704 = load i8, ptr %703, align 1, !tbaa !19
  %705 = zext i8 %704 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %705)
  %706 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %707 = load i8, ptr %706, align 1, !tbaa !19
  %708 = zext i8 %707 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %708)
  %709 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %710 = load i8, ptr %709, align 1, !tbaa !19
  %711 = zext i8 %710 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 450, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %711)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 451, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.12)
  %712 = load i64, ptr %15, align 8, !tbaa !5
  br label %713

713:                                              ; preds = %660, %664
  %714 = phi i64 [ %661, %660 ], [ %712, %664 ]
  %715 = and i64 %714, 262144
  %716 = icmp eq i64 %715, 0
  br i1 %716, label %945, label %717

717:                                              ; preds = %713
  %718 = and i64 %714, 2097152
  %719 = icmp eq i64 %718, 0
  br i1 %719, label %722, label %720

720:                                              ; preds = %717
  call void @close_tmpoutbuf(ptr noundef nonnull %0) #12
  %721 = load i64, ptr %15, align 8, !tbaa !5
  br label %722

722:                                              ; preds = %720, %717
  %723 = phi i64 [ %721, %720 ], [ %714, %717 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %404, i64 16, i1 false)
  %724 = and i64 %723, 2097152
  %725 = icmp eq i64 %724, 0
  br i1 %725, label %738, label %726

726:                                              ; preds = %722
  %727 = load i64, ptr %35, align 8, !tbaa !26
  %728 = sub nsw i64 0, %727
  store i64 %728, ptr %38, align 8, !tbaa !29
  %729 = load i64, ptr %39, align 8, !tbaa !30
  %730 = icmp slt i64 %729, %728
  br i1 %730, label %731, label %732

731:                                              ; preds = %726
  store i64 %728, ptr %39, align 8, !tbaa !30
  br label %732

732:                                              ; preds = %731, %726
  %733 = icmp sgt i64 %727, 0
  br i1 %733, label %737, label %734, !prof !21

734:                                              ; preds = %732
  %735 = load i64, ptr %40, align 8, !tbaa !31
  %736 = icmp slt i64 %735, %728
  br i1 %736, label %737, label %743, !prof !21

737:                                              ; preds = %732, %734
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 100, ptr nonnull poison, ptr noundef nonnull @__func__.seekto_fdhist, ptr noundef nonnull @.str.51, i64 noundef %728)
  br label %742

738:                                              ; preds = %722
  %739 = load i32, ptr %41, align 8, !tbaa !28
  %740 = call i64 @lseek64(i32 noundef %739, i64 noundef 0, i32 noundef 0) #12
  %741 = icmp eq i64 %740, -1
  br i1 %741, label %742, label %743, !prof !21

742:                                              ; preds = %737, %738
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 462, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.14)
  br label %945

743:                                              ; preds = %734, %738
  %744 = call noalias ptr @fdopen(i32 noundef %3, ptr noundef nonnull @.str.15) #12
  %745 = icmp eq ptr %744, null
  br i1 %745, label %746, label %747, !prof !21

746:                                              ; preds = %743
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 464, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.16)
  br label %945

747:                                              ; preds = %743
  %748 = call i32 @md5_stream(ptr noundef nonnull %744, ptr noundef nonnull %404) #12
  %749 = icmp eq i32 %748, 0
  br i1 %749, label %750, label %754, !prof !20

750:                                              ; preds = %747
  %751 = load i8, ptr %12, align 16, !tbaa !19
  %752 = load i8, ptr %404, align 1, !tbaa !19
  %753 = icmp eq i8 %751, %752
  br i1 %753, label %755, label %849

754:                                              ; preds = %747
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 466, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.17)
  br label %945

755:                                              ; preds = %750
  %756 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 1
  %757 = load i8, ptr %756, align 1, !tbaa !19
  %758 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %759 = load i8, ptr %758, align 1, !tbaa !19
  %760 = icmp eq i8 %757, %759
  br i1 %760, label %761, label %849

761:                                              ; preds = %755
  %762 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 2
  %763 = load i8, ptr %762, align 2, !tbaa !19
  %764 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %765 = load i8, ptr %764, align 1, !tbaa !19
  %766 = icmp eq i8 %763, %765
  br i1 %766, label %767, label %849

767:                                              ; preds = %761
  %768 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 3
  %769 = load i8, ptr %768, align 1, !tbaa !19
  %770 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %771 = load i8, ptr %770, align 1, !tbaa !19
  %772 = icmp eq i8 %769, %771
  br i1 %772, label %773, label %849

773:                                              ; preds = %767
  %774 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 4
  %775 = load i8, ptr %774, align 4, !tbaa !19
  %776 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %777 = load i8, ptr %776, align 1, !tbaa !19
  %778 = icmp eq i8 %775, %777
  br i1 %778, label %779, label %849

779:                                              ; preds = %773
  %780 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 5
  %781 = load i8, ptr %780, align 1, !tbaa !19
  %782 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %783 = load i8, ptr %782, align 1, !tbaa !19
  %784 = icmp eq i8 %781, %783
  br i1 %784, label %785, label %849

785:                                              ; preds = %779
  %786 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 6
  %787 = load i8, ptr %786, align 2, !tbaa !19
  %788 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %789 = load i8, ptr %788, align 1, !tbaa !19
  %790 = icmp eq i8 %787, %789
  br i1 %790, label %791, label %849

791:                                              ; preds = %785
  %792 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 7
  %793 = load i8, ptr %792, align 1, !tbaa !19
  %794 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %795 = load i8, ptr %794, align 1, !tbaa !19
  %796 = icmp eq i8 %793, %795
  br i1 %796, label %797, label %849

797:                                              ; preds = %791
  %798 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 8
  %799 = load i8, ptr %798, align 8, !tbaa !19
  %800 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %801 = load i8, ptr %800, align 1, !tbaa !19
  %802 = icmp eq i8 %799, %801
  br i1 %802, label %803, label %849

803:                                              ; preds = %797
  %804 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 9
  %805 = load i8, ptr %804, align 1, !tbaa !19
  %806 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %807 = load i8, ptr %806, align 1, !tbaa !19
  %808 = icmp eq i8 %805, %807
  br i1 %808, label %809, label %849

809:                                              ; preds = %803
  %810 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 10
  %811 = load i8, ptr %810, align 2, !tbaa !19
  %812 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %813 = load i8, ptr %812, align 1, !tbaa !19
  %814 = icmp eq i8 %811, %813
  br i1 %814, label %815, label %849

815:                                              ; preds = %809
  %816 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 11
  %817 = load i8, ptr %816, align 1, !tbaa !19
  %818 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %819 = load i8, ptr %818, align 1, !tbaa !19
  %820 = icmp eq i8 %817, %819
  br i1 %820, label %821, label %849

821:                                              ; preds = %815
  %822 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 12
  %823 = load i8, ptr %822, align 4, !tbaa !19
  %824 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %825 = load i8, ptr %824, align 1, !tbaa !19
  %826 = icmp eq i8 %823, %825
  br i1 %826, label %827, label %849

827:                                              ; preds = %821
  %828 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 13
  %829 = load i8, ptr %828, align 1, !tbaa !19
  %830 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %831 = load i8, ptr %830, align 1, !tbaa !19
  %832 = icmp eq i8 %829, %831
  br i1 %832, label %833, label %849

833:                                              ; preds = %827
  %834 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 14
  %835 = load i8, ptr %834, align 2, !tbaa !19
  %836 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %837 = load i8, ptr %836, align 1, !tbaa !19
  %838 = icmp eq i8 %835, %837
  br i1 %838, label %839, label %849

839:                                              ; preds = %833
  %840 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 15
  %841 = load i8, ptr %840, align 1, !tbaa !19
  %842 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %843 = load i8, ptr %842, align 1, !tbaa !19
  %844 = icmp eq i8 %841, %843
  br i1 %844, label %845, label %849

845:                                              ; preds = %839
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 478, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.18)
  %846 = load i64, ptr %15, align 8, !tbaa !5
  %847 = and i64 %846, 131072
  %848 = icmp eq i64 %847, 0
  br i1 %848, label %944, label %945

849:                                              ; preds = %839, %833, %827, %821, %815, %809, %803, %797, %791, %785, %779, %773, %767, %761, %755, %750
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 470, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.9)
  %850 = load i8, ptr %12, align 16, !tbaa !19
  %851 = zext i8 %850 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %851)
  %852 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 1
  %853 = load i8, ptr %852, align 1, !tbaa !19
  %854 = zext i8 %853 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %854)
  %855 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 2
  %856 = load i8, ptr %855, align 2, !tbaa !19
  %857 = zext i8 %856 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %857)
  %858 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 3
  %859 = load i8, ptr %858, align 1, !tbaa !19
  %860 = zext i8 %859 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %860)
  %861 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 4
  %862 = load i8, ptr %861, align 4, !tbaa !19
  %863 = zext i8 %862 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %863)
  %864 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 5
  %865 = load i8, ptr %864, align 1, !tbaa !19
  %866 = zext i8 %865 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %866)
  %867 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 6
  %868 = load i8, ptr %867, align 2, !tbaa !19
  %869 = zext i8 %868 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %869)
  %870 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 7
  %871 = load i8, ptr %870, align 1, !tbaa !19
  %872 = zext i8 %871 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %872)
  %873 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 8
  %874 = load i8, ptr %873, align 8, !tbaa !19
  %875 = zext i8 %874 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %875)
  %876 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 9
  %877 = load i8, ptr %876, align 1, !tbaa !19
  %878 = zext i8 %877 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %878)
  %879 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 10
  %880 = load i8, ptr %879, align 2, !tbaa !19
  %881 = zext i8 %880 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %881)
  %882 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 11
  %883 = load i8, ptr %882, align 1, !tbaa !19
  %884 = zext i8 %883 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %884)
  %885 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 12
  %886 = load i8, ptr %885, align 4, !tbaa !19
  %887 = zext i8 %886 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %887)
  %888 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 13
  %889 = load i8, ptr %888, align 1, !tbaa !19
  %890 = zext i8 %889 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %890)
  %891 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 14
  %892 = load i8, ptr %891, align 2, !tbaa !19
  %893 = zext i8 %892 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %893)
  %894 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 15
  %895 = load i8, ptr %894, align 1, !tbaa !19
  %896 = zext i8 %895 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 472, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %896)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 473, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.11)
  %897 = load i8, ptr %404, align 1, !tbaa !19
  %898 = zext i8 %897 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %898)
  %899 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 1
  %900 = load i8, ptr %899, align 1, !tbaa !19
  %901 = zext i8 %900 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %901)
  %902 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 2
  %903 = load i8, ptr %902, align 1, !tbaa !19
  %904 = zext i8 %903 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %904)
  %905 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 3
  %906 = load i8, ptr %905, align 1, !tbaa !19
  %907 = zext i8 %906 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %907)
  %908 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 4
  %909 = load i8, ptr %908, align 1, !tbaa !19
  %910 = zext i8 %909 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %910)
  %911 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 5
  %912 = load i8, ptr %911, align 1, !tbaa !19
  %913 = zext i8 %912 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %913)
  %914 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 6
  %915 = load i8, ptr %914, align 1, !tbaa !19
  %916 = zext i8 %915 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %916)
  %917 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 7
  %918 = load i8, ptr %917, align 1, !tbaa !19
  %919 = zext i8 %918 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %919)
  %920 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 8
  %921 = load i8, ptr %920, align 1, !tbaa !19
  %922 = zext i8 %921 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %922)
  %923 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 9
  %924 = load i8, ptr %923, align 1, !tbaa !19
  %925 = zext i8 %924 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %925)
  %926 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 10
  %927 = load i8, ptr %926, align 1, !tbaa !19
  %928 = zext i8 %927 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %928)
  %929 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 11
  %930 = load i8, ptr %929, align 1, !tbaa !19
  %931 = zext i8 %930 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %931)
  %932 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 12
  %933 = load i8, ptr %932, align 1, !tbaa !19
  %934 = zext i8 %933 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %934)
  %935 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 13
  %936 = load i8, ptr %935, align 1, !tbaa !19
  %937 = zext i8 %936 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %937)
  %938 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 14
  %939 = load i8, ptr %938, align 1, !tbaa !19
  %940 = zext i8 %939 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %940)
  %941 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 53, i64 15
  %942 = load i8, ptr %941, align 1, !tbaa !19
  %943 = zext i8 %942 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 475, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.10, i32 noundef %943)
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 476, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.12)
  br label %945

944:                                              ; preds = %845
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 482, ptr nonnull poison, ptr noundef nonnull @__func__.runzip_fd, ptr noundef nonnull @.str.19)
  br label %945

945:                                              ; preds = %944, %845, %713, %399, %465, %438, %456, %460, %565, %742, %746, %754, %849, %375, %364, %358, %349
  %946 = phi i64 [ -1, %349 ], [ -1, %358 ], [ -1, %375 ], [ -1, %364 ], [ -1, %849 ], [ -1, %754 ], [ -1, %746 ], [ -1, %742 ], [ -1, %565 ], [ -1, %460 ], [ -1, %456 ], [ -1, %438 ], [ -1, %465 ], [ %352, %399 ], [ %352, %713 ], [ %352, %845 ], [ %352, %944 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %14) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %13) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %12) #12
  ret i64 %946
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind
declare void @md5_init_ctx(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !47
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !48
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !49
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !50
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #12
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !51
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !51
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !51
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret void
}

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @dump_tmpoutfile(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @clear_tmpinbuf(ptr noundef) local_unnamed_addr #5

declare zeroext i1 @clear_tmpinfile(ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #4 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #12
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !47
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !48
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !49
  %18 = icmp slt i32 %17, %1
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !48
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  call void %20(ptr noundef %22, i32 noundef %1, i32 noundef %2, ptr noundef nonnull @.str, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #12
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !52
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !52
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #12
  ret void
}

; Function Attrs: nounwind
declare ptr @md5_finish_ctx(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !41
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #14
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #12
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #12
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret void
}

declare i64 @read_1g(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr noundef %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #4 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #12
  call void @llvm.va_start(ptr nonnull %6)
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %5
  %11 = load ptr, ptr @stderr, align 8, !tbaa !41
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %4, ptr noundef nonnull %6) #14
  call void @perror(ptr noundef null) #14
  br label %16

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %15 = load ptr, ptr %14, align 8, !tbaa !50
  call void %8(ptr noundef %15, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %6) #12
  br label %16

16:                                               ; preds = %13, %10
  call void @llvm.va_end(ptr nonnull %6)
  %17 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %18 = load i8, ptr %17, align 8, !tbaa !47
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  call void @fatal_exit(ptr noundef nonnull %0) #12
  br label %21

21:                                               ; preds = %20, %16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #12
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

declare void @close_tmpoutbuf(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fdopen(i32 noundef, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @md5_stream(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @get_readseek(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

declare ptr @open_stream_in(ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) local_unnamed_addr #5

declare i32 @close_stream_in(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare i64 @read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

declare i64 @write_1g(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @md5_process_bytes(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #9

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

declare void @fatal_exit(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #3

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @llvm.load.relative.i64(ptr, i64) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold }

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
!16 = !{!10, !10, i64 0}
!17 = !{!6, !8, i64 245}
!18 = !{!6, !8, i64 246}
!19 = !{!8, !8, i64 0}
!20 = !{!"branch_weights", i32 2000, i32 1}
!21 = !{!"branch_weights", i32 1, i32 2000}
!22 = !{!6, !11, i64 264}
!23 = !{!6, !10, i64 112}
!24 = !{!6, !8, i64 736}
!25 = !{!6, !11, i64 268}
!26 = !{!6, !10, i64 96}
!27 = !{!6, !10, i64 64}
!28 = !{!6, !11, i64 272}
!29 = !{!6, !10, i64 72}
!30 = !{!6, !10, i64 80}
!31 = !{!6, !10, i64 88}
!32 = !{!6, !7, i64 56}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = distinct !{!35, !34}
!36 = !{!11, !11, i64 0}
!37 = !{!6, !8, i64 384}
!38 = distinct !{!38, !34}
!39 = !{!40, !10, i64 0}
!40 = !{!"timeval", !10, i64 0, !10, i64 8}
!41 = !{!7, !7, i64 0}
!42 = !{!6, !7, i64 104}
!43 = !{!6, !10, i64 120}
!44 = !{!6, !10, i64 128}
!45 = distinct !{!45, !34}
!46 = !{!6, !7, i64 320}
!47 = !{!6, !8, i64 696}
!48 = !{!6, !7, i64 720}
!49 = !{!6, !11, i64 700}
!50 = !{!6, !7, i64 728}
!51 = !{!6, !7, i64 144}
!52 = !{!6, !7, i64 136}
