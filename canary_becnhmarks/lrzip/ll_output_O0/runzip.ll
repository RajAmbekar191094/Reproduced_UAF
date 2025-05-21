; ModuleID = './runzip.c'
source_filename = "./runzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }
%struct.rzip_control = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, ptr, i64, i64, i64, ptr, ptr, ptr, i8, i64, i64, i64, [5 x i8], i64, i64, i64, i64, i64, i32, i8, i8, i8, i64, i64, i32, i32, i32, i64, i64, ptr, ptr, [8 x i8], ptr, i32, ptr, %union.pthread_mutex_t, i8, i8, i8, %union.sem_t, %struct.md5_ctx, [16 x i8], i64, %struct.checksum, ptr, i8, ptr, i64, i64, ptr, i8, ptr, i8, i32, ptr, ptr, ptr, ptr, i8, %struct.sliding_buffer, ptr, ptr, ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.sem_t = type { i64, [24 x i8] }
%struct.md5_ctx = type { i32, i32, i32, i32, [2 x i32], i32, [32 x i32] }
%struct.checksum = type { ptr, ptr, i64 }
%struct.sliding_buffer = type { ptr, ptr, i64, i64, i64, i64, i64, i64, i64, i64, i32 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
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
@__const.runzip_chunk.suffix = private unnamed_addr constant [4 x ptr] [ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], align 16
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
@stderr = external global ptr, align 8
@__func__.seekto_fdin = private unnamed_addr constant [12 x i8] c"seekto_fdin\00", align 1
@.str.50 = private unnamed_addr constant [56 x i8] c"Trying to seek outside tmpinbuf to %lld in seekto_fdin\0A\00", align 1
@__func__.seekto_fdhist = private unnamed_addr constant [14 x i8] c"seekto_fdhist\00", align 1
@.str.51 = private unnamed_addr constant [59 x i8] c"Trying to seek outside tmpoutbuf to %lld in seekto_fdhist\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @runzip_fd(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca [16 x i8], align 16
  %13 = alloca %struct.timeval, align 8
  %14 = alloca %struct.timeval, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca double, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i64, align 8
  %21 = alloca ptr, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  store i32 %1, ptr %8, align 4
  store i32 %2, ptr %9, align 4
  store i32 %3, ptr %10, align 4
  store i64 %4, ptr %11, align 8
  store i64 0, ptr %15, align 8
  %24 = load ptr, ptr %7, align 8
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i32 0, i32 26
  %26 = load i64, ptr %25, align 8
  %27 = and i64 %26, 65536
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %5
  %30 = load ptr, ptr %7, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 26
  %32 = load i64, ptr %31, align 8
  %33 = and i64 %32, 131072
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %29, %5
  %36 = load ptr, ptr %7, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 52
  call void @md5_init_ctx(ptr noundef %37) #6
  br label %38

38:                                               ; preds = %35, %29
  %39 = call i32 @gettimeofday(ptr noundef %13, ptr noundef null) #6
  br label %40

40:                                               ; preds = %153, %38
  %41 = load ptr, ptr %7, align 8
  %42 = load i32, ptr %8, align 4
  %43 = load i64, ptr %11, align 8
  %44 = load i64, ptr %15, align 8
  %45 = call i64 @runzip_chunk(ptr noundef %41, i32 noundef %42, i64 noundef %43, i64 noundef %44)
  store i64 %45, ptr %16, align 8
  %46 = load i64, ptr %16, align 8
  %47 = icmp eq i64 %46, -1
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %55, i32 noundef 384, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.1)
  br label %56

56:                                               ; preds = %54
  store i64 -1, ptr %6, align 8
  br label %558

57:                                               ; preds = %40
  %58 = load i64, ptr %16, align 8
  %59 = load i64, ptr %15, align 8
  %60 = add nsw i64 %59, %58
  store i64 %60, ptr %15, align 8
  %61 = load ptr, ptr %7, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 26
  %63 = load i64, ptr %62, align 8
  %64 = and i64 %63, 2097152
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %57
  %67 = load ptr, ptr %7, align 8
  %68 = call zeroext i1 @flush_tmpoutbuf(ptr noundef %67)
  %69 = xor i1 %68, true
  %70 = xor i1 %69, true
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = sext i32 %72 to i64
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %77, i32 noundef 390, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.2)
  br label %78

78:                                               ; preds = %76
  store i64 -1, ptr %6, align 8
  br label %558

79:                                               ; preds = %66
  br label %102

80:                                               ; preds = %57
  %81 = load ptr, ptr %7, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 8192
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = load ptr, ptr %7, align 8
  %88 = load i32, ptr %9, align 4
  %89 = call zeroext i1 @dump_tmpoutfile(ptr noundef %87, i32 noundef %88)
  %90 = xor i1 %89, true
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = sext i32 %93 to i64
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %86
  br label %97

97:                                               ; preds = %96
  %98 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %98, i32 noundef 395, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.3)
  br label %99

99:                                               ; preds = %97
  store i64 -1, ptr %6, align 8
  br label %558

100:                                              ; preds = %86
  br label %101

101:                                              ; preds = %100, %80
  br label %102

102:                                              ; preds = %101, %79
  %103 = load ptr, ptr %7, align 8
  %104 = getelementptr inbounds %struct.rzip_control, ptr %103, i32 0, i32 26
  %105 = load i64, ptr %104, align 8
  %106 = and i64 %105, 4194304
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load ptr, ptr %7, align 8
  call void @clear_tmpinbuf(ptr noundef %109)
  br label %137

110:                                              ; preds = %102
  %111 = load ptr, ptr %7, align 8
  %112 = getelementptr inbounds %struct.rzip_control, ptr %111, i32 0, i32 26
  %113 = load i64, ptr %112, align 8
  %114 = and i64 %113, 4096
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %136

116:                                              ; preds = %110
  %117 = load ptr, ptr %7, align 8
  %118 = getelementptr inbounds %struct.rzip_control, ptr %117, i32 0, i32 26
  %119 = load i64, ptr %118, align 8
  %120 = and i64 %119, 16
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %116
  %123 = load ptr, ptr %7, align 8
  %124 = call zeroext i1 @clear_tmpinfile(ptr noundef %123)
  %125 = xor i1 %124, true
  %126 = xor i1 %125, true
  %127 = xor i1 %126, true
  %128 = zext i1 %127 to i32
  %129 = sext i32 %128 to i64
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %122
  br label %132

132:                                              ; preds = %131
  %133 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %133, i32 noundef 403, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.4)
  br label %134

134:                                              ; preds = %132
  store i64 -1, ptr %6, align 8
  br label %558

135:                                              ; preds = %122
  br label %136

136:                                              ; preds = %135, %116, %110
  br label %137

137:                                              ; preds = %136, %108
  br label %138

138:                                              ; preds = %137
  %139 = load i64, ptr %15, align 8
  %140 = load i64, ptr %11, align 8
  %141 = icmp slt i64 %139, %140
  br i1 %141, label %153, label %142

142:                                              ; preds = %138
  %143 = load i64, ptr %11, align 8
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 48
  %148 = load i8, ptr %147, align 8
  %149 = icmp ne i8 %148, 0
  %150 = xor i1 %149, true
  br label %151

151:                                              ; preds = %145, %142
  %152 = phi i1 [ false, %142 ], [ %150, %145 ]
  br label %153

153:                                              ; preds = %151, %138
  %154 = phi i1 [ true, %138 ], [ %152, %151 ]
  br i1 %154, label %40, label %155, !llvm.loop !6

155:                                              ; preds = %153
  %156 = call i32 @gettimeofday(ptr noundef %14, ptr noundef null) #6
  %157 = load ptr, ptr %7, align 8
  %158 = getelementptr inbounds %struct.rzip_control, ptr %157, i32 0, i32 26
  %159 = load i64, ptr %158, align 8
  %160 = and i64 %159, 8388608
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %191, label %162

162:                                              ; preds = %155
  %163 = getelementptr inbounds %struct.timeval, ptr %14, i32 0, i32 0
  %164 = load i64, ptr %163, align 8
  %165 = getelementptr inbounds %struct.timeval, ptr %13, i32 0, i32 0
  %166 = load i64, ptr %165, align 8
  %167 = sub nsw i64 %164, %166
  %168 = sitofp i64 %167 to double
  store double %168, ptr %17, align 8
  %169 = load double, ptr %17, align 8
  %170 = fcmp une double %169, 0.000000e+00
  br i1 %170, label %172, label %171

171:                                              ; preds = %162
  store double 1.000000e+00, ptr %17, align 8
  br label %172

172:                                              ; preds = %171, %162
  br label %173

173:                                              ; preds = %172
  %174 = load ptr, ptr %7, align 8
  %175 = getelementptr inbounds %struct.rzip_control, ptr %174, i32 0, i32 26
  %176 = load i64, ptr %175, align 8
  %177 = and i64 %176, 1
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %173
  br label %180

180:                                              ; preds = %179
  %181 = load ptr, ptr %7, align 8
  %182 = load i64, ptr %15, align 8
  %183 = sdiv i64 %182, 1024
  %184 = sdiv i64 %183, 1024
  %185 = sitofp i64 %184 to double
  %186 = load double, ptr %17, align 8
  %187 = fdiv double %185, %186
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %181, i32 noundef 2, i32 noundef 415, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.5, double noundef %187)
  br label %188

188:                                              ; preds = %180
  br label %189

189:                                              ; preds = %188, %173
  br label %190

190:                                              ; preds = %189
  br label %191

191:                                              ; preds = %190, %155
  %192 = load ptr, ptr %7, align 8
  %193 = getelementptr inbounds %struct.rzip_control, ptr %192, i32 0, i32 26
  %194 = load i64, ptr %193, align 8
  %195 = and i64 %194, 65536
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %191
  %198 = load ptr, ptr %7, align 8
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i32 0, i32 26
  %200 = load i64, ptr %199, align 8
  %201 = and i64 %200, 131072
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %556

203:                                              ; preds = %197, %191
  %204 = load ptr, ptr %7, align 8
  %205 = getelementptr inbounds %struct.rzip_control, ptr %204, i32 0, i32 52
  %206 = load ptr, ptr %7, align 8
  %207 = getelementptr inbounds %struct.rzip_control, ptr %206, i32 0, i32 53
  %208 = getelementptr inbounds [16 x i8], ptr %207, i64 0, i64 0
  %209 = call ptr @md5_finish_ctx(ptr noundef %205, ptr noundef %208) #6
  %210 = load ptr, ptr %7, align 8
  %211 = getelementptr inbounds %struct.rzip_control, ptr %210, i32 0, i32 26
  %212 = load i64, ptr %211, align 8
  %213 = and i64 %212, 131072
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %357

215:                                              ; preds = %203
  %216 = load ptr, ptr %7, align 8
  %217 = call i64 @seekto_fdinend(ptr noundef %216)
  store i64 %217, ptr %20, align 8
  %218 = load i64, ptr %20, align 8
  %219 = icmp eq i64 %218, -1
  %220 = xor i1 %219, true
  %221 = xor i1 %220, true
  %222 = zext i1 %221 to i32
  %223 = sext i32 %222 to i64
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %229

225:                                              ; preds = %215
  br label %226

226:                                              ; preds = %225
  %227 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %227, i32 noundef 426, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.6)
  store i64 -1, ptr %6, align 8
  br label %558

228:                                              ; No predecessors!
  br label %229

229:                                              ; preds = %228, %215
  %230 = load ptr, ptr %7, align 8
  %231 = load i64, ptr %20, align 8
  %232 = sub nsw i64 %231, 16
  %233 = call i64 @seekto_fdin(ptr noundef %230, i64 noundef %232)
  %234 = icmp eq i64 %233, -1
  %235 = xor i1 %234, true
  %236 = xor i1 %235, true
  %237 = zext i1 %236 to i32
  %238 = sext i32 %237 to i64
  %239 = icmp ne i64 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %229
  br label %241

241:                                              ; preds = %240
  %242 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %242, i32 noundef 428, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.7)
  store i64 -1, ptr %6, align 8
  br label %558

243:                                              ; No predecessors!
  br label %244

244:                                              ; preds = %243, %229
  %245 = load ptr, ptr %7, align 8
  %246 = load i32, ptr %8, align 4
  %247 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %248 = call i64 @read_1g(ptr noundef %245, i32 noundef %246, ptr noundef %247, i64 noundef 16)
  %249 = icmp ne i64 %248, 16
  %250 = xor i1 %249, true
  %251 = xor i1 %250, true
  %252 = zext i1 %251 to i32
  %253 = sext i32 %252 to i64
  %254 = icmp ne i64 %253, 0
  br i1 %254, label %255, label %259

255:                                              ; preds = %244
  br label %256

256:                                              ; preds = %255
  %257 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %257, i32 noundef 431, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.8)
  store i64 -1, ptr %6, align 8
  br label %558

258:                                              ; No predecessors!
  br label %259

259:                                              ; preds = %258, %244
  %260 = load ptr, ptr %7, align 8
  %261 = getelementptr inbounds %struct.rzip_control, ptr %260, i32 0, i32 26
  %262 = load i64, ptr %261, align 8
  %263 = and i64 %262, 8388608
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %280

265:                                              ; preds = %259
  %266 = load ptr, ptr %7, align 8
  %267 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %268 = load ptr, ptr %7, align 8
  %269 = getelementptr inbounds %struct.rzip_control, ptr %268, i32 0, i32 44
  %270 = load ptr, ptr %269, align 8
  %271 = call zeroext i1 @lrz_decrypt(ptr noundef %266, ptr noundef %267, i64 noundef 16, ptr noundef %270)
  %272 = xor i1 %271, true
  %273 = xor i1 %272, true
  %274 = xor i1 %273, true
  %275 = zext i1 %274 to i32
  %276 = sext i32 %275 to i64
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %279

278:                                              ; preds = %265
  store i64 -1, ptr %6, align 8
  br label %558

279:                                              ; preds = %265
  br label %280

280:                                              ; preds = %279, %259
  store i32 0, ptr %18, align 4
  br label %281

281:                                              ; preds = %353, %280
  %282 = load i32, ptr %18, align 4
  %283 = icmp slt i32 %282, 16
  br i1 %283, label %284, label %356

284:                                              ; preds = %281
  %285 = load i32, ptr %18, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 %286
  %288 = load i8, ptr %287, align 1
  %289 = zext i8 %288 to i32
  %290 = load ptr, ptr %7, align 8
  %291 = getelementptr inbounds %struct.rzip_control, ptr %290, i32 0, i32 53
  %292 = load i32, ptr %18, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [16 x i8], ptr %291, i64 0, i64 %293
  %295 = load i8, ptr %294, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp ne i32 %289, %296
  br i1 %297, label %298, label %352

298:                                              ; preds = %284
  br label %299

299:                                              ; preds = %298
  br label %300

300:                                              ; preds = %299
  %301 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %301, i32 noundef 1, i32 noundef 437, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.9)
  br label %302

302:                                              ; preds = %300
  br label %303

303:                                              ; preds = %302
  store i32 0, ptr %19, align 4
  br label %304

304:                                              ; preds = %319, %303
  %305 = load i32, ptr %19, align 4
  %306 = icmp slt i32 %305, 16
  br i1 %306, label %307, label %322

307:                                              ; preds = %304
  br label %308

308:                                              ; preds = %307
  br label %309

309:                                              ; preds = %308
  %310 = load ptr, ptr %7, align 8
  %311 = load i32, ptr %19, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 %312
  %314 = load i8, ptr %313, align 1
  %315 = zext i8 %314 to i32
  %316 = and i32 %315, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %310, i32 noundef 1, i32 noundef 439, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.10, i32 noundef %316)
  br label %317

317:                                              ; preds = %309
  br label %318

318:                                              ; preds = %317
  br label %319

319:                                              ; preds = %318
  %320 = load i32, ptr %19, align 4
  %321 = add nsw i32 %320, 1
  store i32 %321, ptr %19, align 4
  br label %304, !llvm.loop !8

322:                                              ; preds = %304
  br label %323

323:                                              ; preds = %322
  br label %324

324:                                              ; preds = %323
  %325 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %325, i32 noundef 1, i32 noundef 440, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.11)
  br label %326

326:                                              ; preds = %324
  br label %327

327:                                              ; preds = %326
  store i32 0, ptr %19, align 4
  br label %328

328:                                              ; preds = %345, %327
  %329 = load i32, ptr %19, align 4
  %330 = icmp slt i32 %329, 16
  br i1 %330, label %331, label %348

331:                                              ; preds = %328
  br label %332

332:                                              ; preds = %331
  br label %333

333:                                              ; preds = %332
  %334 = load ptr, ptr %7, align 8
  %335 = load ptr, ptr %7, align 8
  %336 = getelementptr inbounds %struct.rzip_control, ptr %335, i32 0, i32 53
  %337 = load i32, ptr %19, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds [16 x i8], ptr %336, i64 0, i64 %338
  %340 = load i8, ptr %339, align 1
  %341 = zext i8 %340 to i32
  %342 = and i32 %341, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %334, i32 noundef 1, i32 noundef 442, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.10, i32 noundef %342)
  br label %343

343:                                              ; preds = %333
  br label %344

344:                                              ; preds = %343
  br label %345

345:                                              ; preds = %344
  %346 = load i32, ptr %19, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, ptr %19, align 4
  br label %328, !llvm.loop !9

348:                                              ; preds = %328
  br label %349

349:                                              ; preds = %348
  %350 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %350, i32 noundef 443, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.12)
  store i64 -1, ptr %6, align 8
  br label %558

351:                                              ; No predecessors!
  br label %352

352:                                              ; preds = %351, %284
  br label %353

353:                                              ; preds = %352
  %354 = load i32, ptr %18, align 4
  %355 = add nsw i32 %354, 1
  store i32 %355, ptr %18, align 4
  br label %281, !llvm.loop !10

356:                                              ; preds = %281
  br label %357

357:                                              ; preds = %356, %203
  %358 = load ptr, ptr %7, align 8
  %359 = getelementptr inbounds %struct.rzip_control, ptr %358, i32 0, i32 26
  %360 = load i64, ptr %359, align 8
  %361 = and i64 %360, 65536
  %362 = icmp ne i64 %361, 0
  br i1 %362, label %369, label %363

363:                                              ; preds = %357
  %364 = load ptr, ptr %7, align 8
  %365 = getelementptr inbounds %struct.rzip_control, ptr %364, i32 0, i32 26
  %366 = load i64, ptr %365, align 8
  %367 = and i64 %366, 2048
  %368 = icmp ne i64 %367, 0
  br i1 %368, label %369, label %401

369:                                              ; preds = %363, %357
  br label %370

370:                                              ; preds = %369
  br label %371

371:                                              ; preds = %370
  %372 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %372, i32 noundef 1, i32 noundef 448, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.13)
  br label %373

373:                                              ; preds = %371
  br label %374

374:                                              ; preds = %373
  store i32 0, ptr %18, align 4
  br label %375

375:                                              ; preds = %392, %374
  %376 = load i32, ptr %18, align 4
  %377 = icmp slt i32 %376, 16
  br i1 %377, label %378, label %395

378:                                              ; preds = %375
  br label %379

379:                                              ; preds = %378
  br label %380

380:                                              ; preds = %379
  %381 = load ptr, ptr %7, align 8
  %382 = load ptr, ptr %7, align 8
  %383 = getelementptr inbounds %struct.rzip_control, ptr %382, i32 0, i32 53
  %384 = load i32, ptr %18, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [16 x i8], ptr %383, i64 0, i64 %385
  %387 = load i8, ptr %386, align 1
  %388 = zext i8 %387 to i32
  %389 = and i32 %388, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %381, i32 noundef 1, i32 noundef 450, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.10, i32 noundef %389)
  br label %390

390:                                              ; preds = %380
  br label %391

391:                                              ; preds = %390
  br label %392

392:                                              ; preds = %391
  %393 = load i32, ptr %18, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, ptr %18, align 4
  br label %375, !llvm.loop !11

395:                                              ; preds = %375
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  %398 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %398, i32 noundef 1, i32 noundef 451, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.12)
  br label %399

399:                                              ; preds = %397
  br label %400

400:                                              ; preds = %399
  br label %401

401:                                              ; preds = %400, %363
  %402 = load ptr, ptr %7, align 8
  %403 = getelementptr inbounds %struct.rzip_control, ptr %402, i32 0, i32 26
  %404 = load i64, ptr %403, align 8
  %405 = and i64 %404, 262144
  %406 = icmp ne i64 %405, 0
  br i1 %406, label %407, label %555

407:                                              ; preds = %401
  %408 = load ptr, ptr %7, align 8
  %409 = getelementptr inbounds %struct.rzip_control, ptr %408, i32 0, i32 26
  %410 = load i64, ptr %409, align 8
  %411 = and i64 %410, 2097152
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %415

413:                                              ; preds = %407
  %414 = load ptr, ptr %7, align 8
  call void @close_tmpoutbuf(ptr noundef %414)
  br label %415

415:                                              ; preds = %413, %407
  %416 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 0
  %417 = load ptr, ptr %7, align 8
  %418 = getelementptr inbounds %struct.rzip_control, ptr %417, i32 0, i32 53
  %419 = getelementptr inbounds [16 x i8], ptr %418, i64 0, i64 0
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %416, ptr align 4 %419, i64 16, i1 false)
  %420 = load ptr, ptr %7, align 8
  %421 = call i64 @seekto_fdhist(ptr noundef %420, i64 noundef 0)
  %422 = icmp eq i64 %421, -1
  %423 = xor i1 %422, true
  %424 = xor i1 %423, true
  %425 = zext i1 %424 to i32
  %426 = sext i32 %425 to i64
  %427 = icmp ne i64 %426, 0
  br i1 %427, label %428, label %432

428:                                              ; preds = %415
  br label %429

429:                                              ; preds = %428
  %430 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %430, i32 noundef 462, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.14)
  store i64 -1, ptr %6, align 8
  br label %558

431:                                              ; No predecessors!
  br label %432

432:                                              ; preds = %431, %415
  %433 = load i32, ptr %10, align 4
  %434 = call noalias ptr @fdopen(i32 noundef %433, ptr noundef @.str.15) #6
  store ptr %434, ptr %21, align 8
  %435 = icmp eq ptr %434, null
  %436 = xor i1 %435, true
  %437 = xor i1 %436, true
  %438 = zext i1 %437 to i32
  %439 = sext i32 %438 to i64
  %440 = icmp ne i64 %439, 0
  br i1 %440, label %441, label %445

441:                                              ; preds = %432
  br label %442

442:                                              ; preds = %441
  %443 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %443, i32 noundef 464, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.16)
  store i64 -1, ptr %6, align 8
  br label %558

444:                                              ; No predecessors!
  br label %445

445:                                              ; preds = %444, %432
  %446 = load ptr, ptr %21, align 8
  %447 = load ptr, ptr %7, align 8
  %448 = getelementptr inbounds %struct.rzip_control, ptr %447, i32 0, i32 53
  %449 = getelementptr inbounds [16 x i8], ptr %448, i64 0, i64 0
  %450 = call i32 @md5_stream(ptr noundef %446, ptr noundef %449) #6
  %451 = icmp ne i32 %450, 0
  %452 = xor i1 %451, true
  %453 = xor i1 %452, true
  %454 = zext i1 %453 to i32
  %455 = sext i32 %454 to i64
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %461

457:                                              ; preds = %445
  br label %458

458:                                              ; preds = %457
  %459 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %459, i32 noundef 466, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.17)
  store i64 -1, ptr %6, align 8
  br label %558

460:                                              ; No predecessors!
  br label %461

461:                                              ; preds = %460, %445
  store i32 0, ptr %22, align 4
  br label %462

462:                                              ; preds = %534, %461
  %463 = load i32, ptr %22, align 4
  %464 = icmp slt i32 %463, 16
  br i1 %464, label %465, label %537

465:                                              ; preds = %462
  %466 = load i32, ptr %22, align 4
  %467 = sext i32 %466 to i64
  %468 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 %467
  %469 = load i8, ptr %468, align 1
  %470 = zext i8 %469 to i32
  %471 = load ptr, ptr %7, align 8
  %472 = getelementptr inbounds %struct.rzip_control, ptr %471, i32 0, i32 53
  %473 = load i32, ptr %22, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [16 x i8], ptr %472, i64 0, i64 %474
  %476 = load i8, ptr %475, align 1
  %477 = zext i8 %476 to i32
  %478 = icmp ne i32 %470, %477
  br i1 %478, label %479, label %533

479:                                              ; preds = %465
  br label %480

480:                                              ; preds = %479
  br label %481

481:                                              ; preds = %480
  %482 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %482, i32 noundef 1, i32 noundef 470, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.9)
  br label %483

483:                                              ; preds = %481
  br label %484

484:                                              ; preds = %483
  store i32 0, ptr %23, align 4
  br label %485

485:                                              ; preds = %500, %484
  %486 = load i32, ptr %23, align 4
  %487 = icmp slt i32 %486, 16
  br i1 %487, label %488, label %503

488:                                              ; preds = %485
  br label %489

489:                                              ; preds = %488
  br label %490

490:                                              ; preds = %489
  %491 = load ptr, ptr %7, align 8
  %492 = load i32, ptr %23, align 4
  %493 = sext i32 %492 to i64
  %494 = getelementptr inbounds [16 x i8], ptr %12, i64 0, i64 %493
  %495 = load i8, ptr %494, align 1
  %496 = zext i8 %495 to i32
  %497 = and i32 %496, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %491, i32 noundef 1, i32 noundef 472, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.10, i32 noundef %497)
  br label %498

498:                                              ; preds = %490
  br label %499

499:                                              ; preds = %498
  br label %500

500:                                              ; preds = %499
  %501 = load i32, ptr %23, align 4
  %502 = add nsw i32 %501, 1
  store i32 %502, ptr %23, align 4
  br label %485, !llvm.loop !12

503:                                              ; preds = %485
  br label %504

504:                                              ; preds = %503
  br label %505

505:                                              ; preds = %504
  %506 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %506, i32 noundef 1, i32 noundef 473, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.11)
  br label %507

507:                                              ; preds = %505
  br label %508

508:                                              ; preds = %507
  store i32 0, ptr %23, align 4
  br label %509

509:                                              ; preds = %526, %508
  %510 = load i32, ptr %23, align 4
  %511 = icmp slt i32 %510, 16
  br i1 %511, label %512, label %529

512:                                              ; preds = %509
  br label %513

513:                                              ; preds = %512
  br label %514

514:                                              ; preds = %513
  %515 = load ptr, ptr %7, align 8
  %516 = load ptr, ptr %7, align 8
  %517 = getelementptr inbounds %struct.rzip_control, ptr %516, i32 0, i32 53
  %518 = load i32, ptr %23, align 4
  %519 = sext i32 %518 to i64
  %520 = getelementptr inbounds [16 x i8], ptr %517, i64 0, i64 %519
  %521 = load i8, ptr %520, align 1
  %522 = zext i8 %521 to i32
  %523 = and i32 %522, 255
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %515, i32 noundef 1, i32 noundef 475, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.10, i32 noundef %523)
  br label %524

524:                                              ; preds = %514
  br label %525

525:                                              ; preds = %524
  br label %526

526:                                              ; preds = %525
  %527 = load i32, ptr %23, align 4
  %528 = add nsw i32 %527, 1
  store i32 %528, ptr %23, align 4
  br label %509, !llvm.loop !13

529:                                              ; preds = %509
  br label %530

530:                                              ; preds = %529
  %531 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %531, i32 noundef 476, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.12)
  store i64 -1, ptr %6, align 8
  br label %558

532:                                              ; No predecessors!
  br label %533

533:                                              ; preds = %532, %465
  br label %534

534:                                              ; preds = %533
  %535 = load i32, ptr %22, align 4
  %536 = add nsw i32 %535, 1
  store i32 %536, ptr %22, align 4
  br label %462, !llvm.loop !14

537:                                              ; preds = %462
  br label %538

538:                                              ; preds = %537
  br label %539

539:                                              ; preds = %538
  %540 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %540, i32 noundef 1, i32 noundef 478, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.18)
  br label %541

541:                                              ; preds = %539
  br label %542

542:                                              ; preds = %541
  %543 = load ptr, ptr %7, align 8
  %544 = getelementptr inbounds %struct.rzip_control, ptr %543, i32 0, i32 26
  %545 = load i64, ptr %544, align 8
  %546 = and i64 %545, 131072
  %547 = icmp ne i64 %546, 0
  br i1 %547, label %554, label %548

548:                                              ; preds = %542
  br label %549

549:                                              ; preds = %548
  br label %550

550:                                              ; preds = %549
  %551 = load ptr, ptr %7, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %551, i32 noundef 1, i32 noundef 482, ptr noundef @.str, ptr noundef @__func__.runzip_fd, ptr noundef @.str.19)
  br label %552

552:                                              ; preds = %550
  br label %553

553:                                              ; preds = %552
  br label %554

554:                                              ; preds = %553, %542
  br label %555

555:                                              ; preds = %554, %401
  br label %556

556:                                              ; preds = %555, %197
  %557 = load i64, ptr %15, align 8
  store i64 %557, ptr %6, align 8
  br label %558

558:                                              ; preds = %556, %530, %458, %442, %429, %349, %278, %256, %241, %226, %134, %99, %78, %56
  %559 = load i64, ptr %6, align 8
  ret i64 %559
}

; Function Attrs: nounwind
declare void @md5_init_ctx(ptr noundef) #1

; Function Attrs: nounwind
declare i32 @gettimeofday(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @runzip_chunk(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8, align 1
  %18 = alloca %struct.stat, align 8
  %19 = alloca i8, align 1
  %20 = alloca ptr, align 8
  %21 = alloca i8, align 1
  %22 = alloca [4 x i64], align 16
  %23 = alloca [4 x ptr], align 16
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca i32, align 4
  %27 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store i32 %1, ptr %7, align 4
  store i64 %2, ptr %8, align 8
  store i64 %3, ptr %9, align 8
  store i32 0, ptr %11, align 4
  store i64 0, ptr %14, align 8
  store i32 -1, ptr %15, align 4
  store i32 0, ptr %16, align 4
  store i8 0, ptr %21, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %22, ptr align 16 @__const.runzip_chunk.divisor, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %23, ptr align 16 @__const.runzip_chunk.suffix, i64 32, i1 false)
  %28 = load i64, ptr %8, align 8
  %29 = icmp sgt i64 %28, 10737418240
  br i1 %29, label %30, label %31

30:                                               ; preds = %4
  store i32 3, ptr %26, align 4
  br label %42

31:                                               ; preds = %4
  %32 = load i64, ptr %8, align 8
  %33 = icmp sgt i64 %32, 10485760
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 2, ptr %26, align 4
  br label %41

35:                                               ; preds = %31
  %36 = load i64, ptr %8, align 8
  %37 = icmp sgt i64 %36, 10240
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 1, ptr %26, align 4
  br label %40

39:                                               ; preds = %35
  store i32 0, ptr %26, align 4
  br label %40

40:                                               ; preds = %39, %38
  br label %41

41:                                               ; preds = %40, %34
  br label %42

42:                                               ; preds = %41, %30
  %43 = load i64, ptr %8, align 8
  %44 = sitofp i64 %43 to x86_fp80
  %45 = load i32, ptr %26, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 %46
  %48 = load i64, ptr %47, align 8
  %49 = uitofp i64 %48 to x86_fp80
  %50 = fdiv x86_fp80 %44, %49
  %51 = fptrunc x86_fp80 %50 to double
  store double %51, ptr %25, align 8
  %52 = load ptr, ptr %6, align 8
  %53 = getelementptr inbounds %struct.rzip_control, ptr %52, i32 0, i32 32
  %54 = load i8, ptr %53, align 1
  %55 = sext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %42
  %58 = load ptr, ptr %6, align 8
  %59 = getelementptr inbounds %struct.rzip_control, ptr %58, i32 0, i32 33
  %60 = load i8, ptr %59, align 2
  %61 = sext i8 %60 to i32
  %62 = icmp slt i32 %61, 4
  br i1 %62, label %63, label %64

63:                                               ; preds = %57
  store i8 4, ptr %17, align 1
  br label %129

64:                                               ; preds = %57, %42
  %65 = load ptr, ptr %6, align 8
  %66 = getelementptr inbounds %struct.rzip_control, ptr %65, i32 0, i32 32
  %67 = load i8, ptr %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load ptr, ptr %6, align 8
  %72 = getelementptr inbounds %struct.rzip_control, ptr %71, i32 0, i32 33
  %73 = load i8, ptr %72, align 2
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 4
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  store i8 8, ptr %17, align 1
  br label %128

77:                                               ; preds = %70, %64
  br label %78

78:                                               ; preds = %77
  %79 = load ptr, ptr %6, align 8
  %80 = getelementptr inbounds %struct.rzip_control, ptr %79, i32 0, i32 26
  %81 = load i64, ptr %80, align 8
  %82 = and i64 %81, 2048
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  br label %85

85:                                               ; preds = %84
  %86 = load ptr, ptr %6, align 8
  %87 = load ptr, ptr %6, align 8
  %88 = load i32, ptr %7, align 4
  %89 = call i64 @get_readseek(ptr noundef %87, i32 noundef %88)
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %86, i32 noundef 4, i32 noundef 286, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.24, i64 noundef %89)
  br label %90

90:                                               ; preds = %85
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91
  %93 = load ptr, ptr %6, align 8
  %94 = load i32, ptr %7, align 4
  %95 = call i64 @read_1g(ptr noundef %93, i32 noundef %94, ptr noundef %17, i64 noundef 1)
  %96 = icmp ne i64 %95, 1
  %97 = xor i1 %96, true
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = sext i32 %99 to i64
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %92
  br label %103

103:                                              ; preds = %102
  %104 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %104, i32 noundef 289, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.25)
  store i64 -1, ptr %5, align 8
  br label %407

105:                                              ; No predecessors!
  br label %106

106:                                              ; preds = %105, %92
  %107 = load i8, ptr %17, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp slt i32 %108, 1
  br i1 %109, label %114, label %110

110:                                              ; preds = %106
  %111 = load i8, ptr %17, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp sgt i32 %112, 8
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ true, %106 ], [ %113, %110 ]
  %116 = xor i1 %115, true
  %117 = xor i1 %116, true
  %118 = zext i1 %117 to i32
  %119 = sext i32 %118 to i64
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %121
  %123 = load ptr, ptr %6, align 8
  %124 = load i8, ptr %17, align 1
  %125 = sext i8 %124 to i32
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %123, i32 noundef 291, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.26, i32 noundef %125)
  store i64 -1, ptr %5, align 8
  br label %407

126:                                              ; No predecessors!
  br label %127

127:                                              ; preds = %126, %114
  br label %128

128:                                              ; preds = %127, %76
  br label %129

129:                                              ; preds = %128, %63
  %130 = load i64, ptr %9, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %149, label %132

132:                                              ; preds = %129
  %133 = load i64, ptr %8, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %149

135:                                              ; preds = %132
  br label %136

136:                                              ; preds = %135
  %137 = load ptr, ptr %6, align 8
  %138 = getelementptr inbounds %struct.rzip_control, ptr %137, i32 0, i32 26
  %139 = load i64, ptr %138, align 8
  %140 = and i64 %139, 2048
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %147

142:                                              ; preds = %136
  br label %143

143:                                              ; preds = %142
  %144 = load ptr, ptr %6, align 8
  %145 = load i64, ptr %8, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %144, i32 noundef 4, i32 noundef 294, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.27, i64 noundef %145)
  br label %146

146:                                              ; preds = %143
  br label %147

147:                                              ; preds = %146, %136
  br label %148

148:                                              ; preds = %147
  br label %149

149:                                              ; preds = %148, %132, %129
  br label %150

150:                                              ; preds = %149
  %151 = load ptr, ptr %6, align 8
  %152 = getelementptr inbounds %struct.rzip_control, ptr %151, i32 0, i32 26
  %153 = load i64, ptr %152, align 8
  %154 = and i64 %153, 2048
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %150
  br label %157

157:                                              ; preds = %156
  %158 = load ptr, ptr %6, align 8
  %159 = load i8, ptr %17, align 1
  %160 = sext i8 %159 to i32
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %158, i32 noundef 4, i32 noundef 295, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.28, i32 noundef %160)
  br label %161

161:                                              ; preds = %157
  br label %162

162:                                              ; preds = %161, %150
  br label %163

163:                                              ; preds = %162
  %164 = load ptr, ptr %6, align 8
  %165 = call i64 @seekcur_fdin(ptr noundef %164)
  store i64 %165, ptr %13, align 8
  %166 = load i64, ptr %13, align 8
  %167 = icmp eq i64 %166, -1
  %168 = xor i1 %167, true
  %169 = xor i1 %168, true
  %170 = zext i1 %169 to i32
  %171 = sext i32 %170 to i64
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %163
  br label %174

174:                                              ; preds = %173
  %175 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %175, i32 noundef 299, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.29)
  store i64 -1, ptr %5, align 8
  br label %407

176:                                              ; No predecessors!
  br label %177

177:                                              ; preds = %176, %163
  %178 = load i32, ptr %7, align 4
  %179 = call i32 @fstat64(i32 noundef %178, ptr noundef %18) #6
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %187, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %struct.stat, ptr %18, i32 0, i32 8
  %183 = load i64, ptr %182, align 8
  %184 = load i64, ptr %13, align 8
  %185 = sub nsw i64 %183, %184
  %186 = icmp eq i64 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181, %177
  store i64 0, ptr %5, align 8
  br label %407

188:                                              ; preds = %181
  %189 = load ptr, ptr %6, align 8
  %190 = load i32, ptr %7, align 4
  %191 = load i8, ptr %17, align 1
  %192 = call ptr @open_stream_in(ptr noundef %189, i32 noundef %190, i32 noundef 2, i8 noundef signext %191)
  store ptr %192, ptr %20, align 8
  %193 = load ptr, ptr %20, align 8
  %194 = icmp ne ptr %193, null
  %195 = xor i1 %194, true
  %196 = xor i1 %195, true
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  %199 = sext i32 %198 to i64
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %205

201:                                              ; preds = %188
  br label %202

202:                                              ; preds = %201
  %203 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %203, i32 noundef 306, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.30)
  store i64 -1, ptr %5, align 8
  br label %407

204:                                              ; No predecessors!
  br label %205

205:                                              ; preds = %204, %188
  %206 = load ptr, ptr %6, align 8
  %207 = getelementptr inbounds %struct.rzip_control, ptr %206, i32 0, i32 32
  %208 = load i8, ptr %207, align 1
  %209 = sext i8 %208 to i32
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %211, label %220

211:                                              ; preds = %205
  %212 = load ptr, ptr %6, align 8
  %213 = getelementptr inbounds %struct.rzip_control, ptr %212, i32 0, i32 33
  %214 = load i8, ptr %213, align 2
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 4
  br i1 %216, label %217, label %220

217:                                              ; preds = %211
  %218 = load ptr, ptr %6, align 8
  %219 = getelementptr inbounds %struct.rzip_control, ptr %218, i32 0, i32 70
  store i8 8, ptr %219, align 8
  br label %223

220:                                              ; preds = %211, %205
  %221 = load ptr, ptr %6, align 8
  %222 = getelementptr inbounds %struct.rzip_control, ptr %221, i32 0, i32 70
  store i8 2, ptr %222, align 8
  br label %223

223:                                              ; preds = %220, %217
  br label %224

224:                                              ; preds = %339, %223
  %225 = load ptr, ptr %6, align 8
  %226 = load ptr, ptr %20, align 8
  %227 = call i64 @read_header(ptr noundef %225, ptr noundef %226, ptr noundef %19)
  store i64 %227, ptr %12, align 8
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %233, label %229

229:                                              ; preds = %224
  %230 = load i8, ptr %19, align 1
  %231 = zext i8 %230 to i32
  %232 = icmp ne i32 %231, 0
  br label %233

233:                                              ; preds = %229, %224
  %234 = phi i1 [ true, %224 ], [ %232, %229 ]
  br i1 %234, label %235, label %340

235:                                              ; preds = %233
  %236 = load i64, ptr %12, align 8
  %237 = icmp eq i64 %236, -1
  %238 = xor i1 %237, true
  %239 = xor i1 %238, true
  %240 = zext i1 %239 to i32
  %241 = sext i32 %240 to i64
  %242 = icmp ne i64 %241, 0
  br i1 %242, label %243, label %244

243:                                              ; preds = %235
  store i64 -1, ptr %5, align 8
  br label %407

244:                                              ; preds = %235
  %245 = load i8, ptr %19, align 1
  %246 = zext i8 %245 to i32
  switch i32 %246, label %267 [
    i32 0, label %247
  ]

247:                                              ; preds = %244
  %248 = load ptr, ptr %6, align 8
  %249 = load ptr, ptr %20, align 8
  %250 = load i64, ptr %12, align 8
  %251 = call i64 @unzip_literal(ptr noundef %248, ptr noundef %249, i64 noundef %250, ptr noundef %11)
  store i64 %251, ptr %27, align 8
  %252 = load i64, ptr %27, align 8
  %253 = icmp eq i64 %252, -1
  %254 = xor i1 %253, true
  %255 = xor i1 %254, true
  %256 = zext i1 %255 to i32
  %257 = sext i32 %256 to i64
  %258 = icmp ne i64 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %247
  %260 = load ptr, ptr %6, align 8
  %261 = load ptr, ptr %20, align 8
  %262 = call i32 @close_stream_in(ptr noundef %260, ptr noundef %261)
  store i64 -1, ptr %5, align 8
  br label %407

263:                                              ; preds = %247
  %264 = load i64, ptr %27, align 8
  %265 = load i64, ptr %14, align 8
  %266 = add nsw i64 %265, %264
  store i64 %266, ptr %14, align 8
  br label %289

267:                                              ; preds = %244
  %268 = load ptr, ptr %6, align 8
  %269 = load ptr, ptr %20, align 8
  %270 = load i64, ptr %12, align 8
  %271 = load i8, ptr %17, align 1
  %272 = sext i8 %271 to i32
  %273 = call i64 @unzip_match(ptr noundef %268, ptr noundef %269, i64 noundef %270, ptr noundef %11, i32 noundef %272)
  store i64 %273, ptr %27, align 8
  %274 = load i64, ptr %27, align 8
  %275 = icmp eq i64 %274, -1
  %276 = xor i1 %275, true
  %277 = xor i1 %276, true
  %278 = zext i1 %277 to i32
  %279 = sext i32 %278 to i64
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %267
  %282 = load ptr, ptr %6, align 8
  %283 = load ptr, ptr %20, align 8
  %284 = call i32 @close_stream_in(ptr noundef %282, ptr noundef %283)
  store i64 -1, ptr %5, align 8
  br label %407

285:                                              ; preds = %267
  %286 = load i64, ptr %27, align 8
  %287 = load i64, ptr %14, align 8
  %288 = add nsw i64 %287, %286
  store i64 %288, ptr %14, align 8
  br label %289

289:                                              ; preds = %285, %263
  %290 = load i64, ptr %8, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %339

292:                                              ; preds = %289
  %293 = load i64, ptr %9, align 8
  %294 = load i64, ptr %14, align 8
  %295 = add nsw i64 %293, %294
  %296 = sitofp i64 %295 to double
  %297 = load i64, ptr %8, align 8
  %298 = sitofp i64 %297 to double
  %299 = fdiv double %296, %298
  %300 = fmul double 1.000000e+02, %299
  %301 = fptosi double %300 to i32
  store i32 %301, ptr %16, align 4
  %302 = load i32, ptr %16, align 4
  %303 = sdiv i32 %302, 10
  %304 = load i32, ptr %15, align 4
  %305 = sdiv i32 %304, 10
  %306 = icmp ne i32 %303, %305
  br i1 %306, label %307, label %338

307:                                              ; preds = %292
  %308 = load i64, ptr %9, align 8
  %309 = load i64, ptr %14, align 8
  %310 = add nsw i64 %308, %309
  %311 = sitofp i64 %310 to double
  %312 = load i32, ptr %26, align 4
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [4 x i64], ptr %22, i64 0, i64 %313
  %315 = load i64, ptr %314, align 8
  %316 = uitofp i64 %315 to double
  %317 = fdiv double %311, %316
  store double %317, ptr %24, align 8
  br label %318

318:                                              ; preds = %307
  %319 = load ptr, ptr %6, align 8
  %320 = getelementptr inbounds %struct.rzip_control, ptr %319, i32 0, i32 26
  %321 = load i64, ptr %320, align 8
  %322 = and i64 %321, 1
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %335

324:                                              ; preds = %318
  br label %325

325:                                              ; preds = %324
  %326 = load ptr, ptr %6, align 8
  %327 = load i32, ptr %16, align 4
  %328 = load double, ptr %24, align 8
  %329 = load double, ptr %25, align 8
  %330 = load i32, ptr %26, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [4 x ptr], ptr %23, i64 0, i64 %331
  %333 = load ptr, ptr %332, align 8
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %326, i32 noundef 2, i32 noundef 342, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.31, i32 noundef %327, double noundef %328, double noundef %329, ptr noundef %333)
  br label %334

334:                                              ; preds = %325
  br label %335

335:                                              ; preds = %334, %318
  br label %336

336:                                              ; preds = %335
  %337 = load i32, ptr %16, align 4
  store i32 %337, ptr %15, align 4
  br label %338

338:                                              ; preds = %336, %292
  br label %339

339:                                              ; preds = %338, %289
  br label %224, !llvm.loop !15

340:                                              ; preds = %233
  %341 = load ptr, ptr %6, align 8
  %342 = getelementptr inbounds %struct.rzip_control, ptr %341, i32 0, i32 26
  %343 = load i64, ptr %342, align 8
  %344 = and i64 %343, 131072
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %393, label %346

346:                                              ; preds = %340
  %347 = load ptr, ptr %6, align 8
  %348 = load ptr, ptr %20, align 8
  %349 = call i32 @read_u32(ptr noundef %347, ptr noundef %348, i32 noundef 0, ptr noundef %21)
  store i32 %349, ptr %10, align 4
  %350 = load i8, ptr %21, align 1
  %351 = trunc i8 %350 to i1
  %352 = xor i1 %351, true
  %353 = xor i1 %352, true
  %354 = zext i1 %353 to i32
  %355 = sext i32 %354 to i64
  %356 = icmp ne i64 %355, 0
  br i1 %356, label %357, label %361

357:                                              ; preds = %346
  %358 = load ptr, ptr %6, align 8
  %359 = load ptr, ptr %20, align 8
  %360 = call i32 @close_stream_in(ptr noundef %358, ptr noundef %359)
  store i64 -1, ptr %5, align 8
  br label %407

361:                                              ; preds = %346
  %362 = load i32, ptr %10, align 4
  %363 = load i32, ptr %11, align 4
  %364 = icmp ne i32 %362, %363
  %365 = xor i1 %364, true
  %366 = xor i1 %365, true
  %367 = zext i1 %366 to i32
  %368 = sext i32 %367 to i64
  %369 = icmp ne i64 %368, 0
  br i1 %369, label %370, label %379

370:                                              ; preds = %361
  %371 = load ptr, ptr %6, align 8
  %372 = load ptr, ptr %20, align 8
  %373 = call i32 @close_stream_in(ptr noundef %371, ptr noundef %372)
  br label %374

374:                                              ; preds = %370
  %375 = load ptr, ptr %6, align 8
  %376 = load i32, ptr %11, align 4
  %377 = load i32, ptr %10, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %375, i32 noundef 356, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.32, i32 noundef %376, i32 noundef %377)
  store i64 -1, ptr %5, align 8
  br label %407

378:                                              ; No predecessors!
  br label %379

379:                                              ; preds = %378, %361
  br label %380

380:                                              ; preds = %379
  %381 = load ptr, ptr %6, align 8
  %382 = getelementptr inbounds %struct.rzip_control, ptr %381, i32 0, i32 26
  %383 = load i64, ptr %382, align 8
  %384 = and i64 %383, 2048
  %385 = icmp ne i64 %384, 0
  br i1 %385, label %386, label %391

386:                                              ; preds = %380
  br label %387

387:                                              ; preds = %386
  %388 = load ptr, ptr %6, align 8
  %389 = load i32, ptr %11, align 4
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef %388, i32 noundef 4, i32 noundef 358, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.33, i32 noundef %389)
  br label %390

390:                                              ; preds = %387
  br label %391

391:                                              ; preds = %390, %380
  br label %392

392:                                              ; preds = %391
  br label %393

393:                                              ; preds = %392, %340
  %394 = load ptr, ptr %6, align 8
  %395 = load ptr, ptr %20, align 8
  %396 = call i32 @close_stream_in(ptr noundef %394, ptr noundef %395)
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = xor i1 %398, true
  %400 = zext i1 %399 to i32
  %401 = sext i32 %400 to i64
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %405

403:                                              ; preds = %393
  %404 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %404, i32 noundef 362, ptr noundef @.str, ptr noundef @__func__.runzip_chunk, ptr noundef @.str.34)
  br label %405

405:                                              ; preds = %403, %393
  %406 = load i64, ptr %14, align 8
  store i64 %406, ptr %5, align 8
  br label %407

407:                                              ; preds = %405, %374, %357, %281, %259, %243, %202, %187, %174, %122, %103
  %408 = load i64, ptr %5, align 8
  ret i64 %408
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

declare zeroext i1 @flush_tmpoutbuf(ptr noundef) #2

declare zeroext i1 @dump_tmpoutfile(ptr noundef, i32 noundef) #2

declare void @clear_tmpinbuf(ptr noundef) #2

declare zeroext i1 @clear_tmpinfile(ptr noundef) #2

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
declare ptr @md5_finish_ctx(ptr noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seekto_fdinend(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  %5 = load ptr, ptr %3, align 8
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i32 0, i32 26
  %7 = load i64, ptr %6, align 8
  %8 = and i64 %7, 4194304
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %3, align 8
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i32 0, i32 36
  %13 = load i32, ptr %12, align 8
  %14 = call i64 @lseek64(i32 noundef %13, i64 noundef 0, i32 noundef 2) #6
  store i64 %14, ptr %2, align 8
  br label %56

15:                                               ; preds = %1
  br label %16

16:                                               ; preds = %46, %15
  %17 = call i32 @getchar()
  store i32 %17, ptr %4, align 4
  %18 = icmp ne i32 %17, -1
  br i1 %18, label %19, label %47

19:                                               ; preds = %16
  %20 = load i32, ptr %4, align 4
  %21 = trunc i32 %20 to i8
  %22 = load ptr, ptr %3, align 8
  %23 = getelementptr inbounds %struct.rzip_control, ptr %22, i32 0, i32 13
  %24 = load ptr, ptr %23, align 8
  %25 = load ptr, ptr %3, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 15
  %27 = load i64, ptr %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, ptr %26, align 8
  %29 = getelementptr inbounds i8, ptr %24, i64 %27
  store i8 %21, ptr %29, align 1
  %30 = load ptr, ptr %3, align 8
  %31 = getelementptr inbounds %struct.rzip_control, ptr %30, i32 0, i32 15
  %32 = load i64, ptr %31, align 8
  %33 = load ptr, ptr %3, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 16
  %35 = load i64, ptr %34, align 8
  %36 = icmp sgt i64 %32, %35
  %37 = xor i1 %36, true
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = sext i32 %39 to i64
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %19
  br label %43

43:                                               ; preds = %42
  %44 = load ptr, ptr %3, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %44, i32 noundef 134, ptr noundef @.str, ptr noundef @__func__.seekto_fdinend, ptr noundef @.str.49)
  store i64 -1, ptr %2, align 8
  br label %56

45:                                               ; No predecessors!
  br label %46

46:                                               ; preds = %45, %19
  br label %16, !llvm.loop !16

47:                                               ; preds = %16
  %48 = load ptr, ptr %3, align 8
  %49 = getelementptr inbounds %struct.rzip_control, ptr %48, i32 0, i32 15
  %50 = load i64, ptr %49, align 8
  %51 = load ptr, ptr %3, align 8
  %52 = getelementptr inbounds %struct.rzip_control, ptr %51, i32 0, i32 14
  store i64 %50, ptr %52, align 8
  %53 = load ptr, ptr %3, align 8
  %54 = getelementptr inbounds %struct.rzip_control, ptr %53, i32 0, i32 14
  %55 = load i64, ptr %54, align 8
  store i64 %55, ptr %2, align 8
  br label %56

56:                                               ; preds = %47, %43, %10
  %57 = load i64, ptr %2, align 8
  ret i64 %57
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
define internal i64 @seekto_fdin(ptr noundef %0, i64 noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  store i64 %1, ptr %5, align 8
  %6 = load ptr, ptr %4, align 8
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i32 0, i32 26
  %8 = load i64, ptr %7, align 8
  %9 = and i64 %8, 4194304
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 36
  %14 = load i32, ptr %13, align 8
  %15 = load i64, ptr %5, align 8
  %16 = call i64 @lseek64(i32 noundef %14, i64 noundef %15, i32 noundef 0) #6
  store i64 %16, ptr %3, align 8
  br label %42

17:                                               ; preds = %2
  %18 = load i64, ptr %5, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 15
  %21 = load i64, ptr %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %26, label %23

23:                                               ; preds = %17
  %24 = load i64, ptr %5, align 8
  %25 = icmp slt i64 %24, 0
  br label %26

26:                                               ; preds = %23, %17
  %27 = phi i1 [ true, %17 ], [ %25, %23 ]
  %28 = xor i1 %27, true
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = sext i32 %30 to i64
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33
  %35 = load ptr, ptr %4, align 8
  %36 = load i64, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %35, i32 noundef 118, ptr noundef @.str, ptr noundef @__func__.seekto_fdin, ptr noundef @.str.50, i64 noundef %36)
  br label %37

37:                                               ; preds = %34
  store i64 -1, ptr %3, align 8
  br label %42

38:                                               ; preds = %26
  %39 = load i64, ptr %5, align 8
  %40 = load ptr, ptr %4, align 8
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i32 0, i32 14
  store i64 %39, ptr %41, align 8
  store i64 0, ptr %3, align 8
  br label %42

42:                                               ; preds = %38, %37, %11
  %43 = load i64, ptr %3, align 8
  ret i64 %43
}

declare i64 @read_1g(ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

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

declare void @close_tmpoutbuf(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seekto_fdhist(ptr noundef %0, i64 noundef %1) #0 {
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
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load ptr, ptr %4, align 8
  %13 = getelementptr inbounds %struct.rzip_control, ptr %12, i32 0, i32 38
  %14 = load i32, ptr %13, align 8
  %15 = load i64, ptr %5, align 8
  %16 = call i64 @lseek64(i32 noundef %14, i64 noundef %15, i32 noundef 0) #6
  store i64 %16, ptr %3, align 8
  br label %67

17:                                               ; preds = %2
  %18 = load i64, ptr %5, align 8
  %19 = load ptr, ptr %4, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 12
  %21 = load i64, ptr %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = load ptr, ptr %4, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 9
  store i64 %22, ptr %24, align 8
  %25 = load ptr, ptr %4, align 8
  %26 = getelementptr inbounds %struct.rzip_control, ptr %25, i32 0, i32 9
  %27 = load i64, ptr %26, align 8
  %28 = load ptr, ptr %4, align 8
  %29 = getelementptr inbounds %struct.rzip_control, ptr %28, i32 0, i32 10
  %30 = load i64, ptr %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %17
  %33 = load ptr, ptr %4, align 8
  %34 = getelementptr inbounds %struct.rzip_control, ptr %33, i32 0, i32 9
  %35 = load i64, ptr %34, align 8
  %36 = load ptr, ptr %4, align 8
  %37 = getelementptr inbounds %struct.rzip_control, ptr %36, i32 0, i32 10
  store i64 %35, ptr %37, align 8
  br label %38

38:                                               ; preds = %32, %17
  %39 = load ptr, ptr %4, align 8
  %40 = getelementptr inbounds %struct.rzip_control, ptr %39, i32 0, i32 9
  %41 = load i64, ptr %40, align 8
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load ptr, ptr %4, align 8
  %45 = getelementptr inbounds %struct.rzip_control, ptr %44, i32 0, i32 9
  %46 = load i64, ptr %45, align 8
  %47 = load ptr, ptr %4, align 8
  %48 = getelementptr inbounds %struct.rzip_control, ptr %47, i32 0, i32 11
  %49 = load i64, ptr %48, align 8
  %50 = icmp sgt i64 %46, %49
  br label %51

51:                                               ; preds = %43, %38
  %52 = phi i1 [ true, %38 ], [ %50, %43 ]
  %53 = xor i1 %52, true
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = sext i32 %55 to i64
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load ptr, ptr %4, align 8
  %61 = load ptr, ptr %4, align 8
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i32 0, i32 9
  %63 = load i64, ptr %62, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %60, i32 noundef 100, ptr noundef @.str, ptr noundef @__func__.seekto_fdhist, ptr noundef @.str.51, i64 noundef %63)
  br label %64

64:                                               ; preds = %59
  store i64 -1, ptr %3, align 8
  br label %67

65:                                               ; preds = %51
  %66 = load i64, ptr %5, align 8
  store i64 %66, ptr %3, align 8
  br label %67

67:                                               ; preds = %65, %64, %11
  %68 = load i64, ptr %3, align 8
  ret i64 %68
}

; Function Attrs: nounwind
declare noalias ptr @fdopen(i32 noundef, ptr noundef) #1

; Function Attrs: nounwind
declare i32 @md5_stream(ptr noundef, ptr noundef) #1

declare i64 @get_readseek(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seekcur_fdin(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rzip_control, ptr %4, i32 0, i32 26
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 4194304
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 36
  %12 = load i32, ptr %11, align 8
  %13 = call i64 @lseek64(i32 noundef %12, i64 noundef 0, i32 noundef 1) #6
  store i64 %13, ptr %2, align 8
  br label %18

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 14
  %17 = load i64, ptr %16, align 8
  store i64 %17, ptr %2, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = load i64, ptr %2, align 8
  ret i64 %19
}

; Function Attrs: nounwind
declare i32 @fstat64(i32 noundef, ptr noundef) #1

declare ptr @open_stream_in(ptr noundef, i32 noundef, i32 noundef, i8 noundef signext) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_header(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i8, align 1
  store ptr %0, ptr %5, align 8
  store ptr %1, ptr %6, align 8
  store ptr %2, ptr %7, align 8
  store i8 0, ptr %8, align 1
  %9 = load ptr, ptr %5, align 8
  %10 = load ptr, ptr %6, align 8
  %11 = call zeroext i8 @read_u8(ptr noundef %9, ptr noundef %10, i32 noundef 0, ptr noundef %8)
  %12 = load ptr, ptr %7, align 8
  store i8 %11, ptr %12, align 1
  %13 = load i8, ptr %8, align 1
  %14 = trunc i8 %13 to i1
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i64 -1, ptr %4, align 8
  br label %24

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load ptr, ptr %5, align 8
  %20 = getelementptr inbounds %struct.rzip_control, ptr %19, i32 0, i32 70
  %21 = load i8, ptr %20, align 8
  %22 = sext i8 %21 to i32
  %23 = call i64 @read_vchars(ptr noundef %17, ptr noundef %18, i32 noundef 0, i32 noundef %22)
  store i64 %23, ptr %4, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i64, ptr %4, align 8
  ret i64 %25
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unzip_literal(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i64 %2, ptr %8, align 8
  store ptr %3, ptr %9, align 8
  %12 = load i64, ptr %8, align 8
  %13 = icmp slt i64 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = sext i32 %16 to i64
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %19
  %21 = load ptr, ptr %6, align 8
  %22 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %21, i32 noundef 156, ptr noundef @.str, ptr noundef @__func__.unzip_literal, ptr noundef @.str.37, i64 noundef %22)
  store i64 -1, ptr %5, align 8
  br label %115

23:                                               ; No predecessors!
  br label %24

24:                                               ; preds = %23, %4
  %25 = load i64, ptr %8, align 8
  %26 = call noalias ptr @malloc(i64 noundef %25) #7
  store ptr %26, ptr %11, align 8
  %27 = load ptr, ptr %11, align 8
  %28 = icmp ne ptr %27, null
  %29 = xor i1 %28, true
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %24
  br label %36

36:                                               ; preds = %35
  %37 = load ptr, ptr %6, align 8
  %38 = load i64, ptr %8, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %37, i32 noundef 160, ptr noundef @.str, ptr noundef @__func__.unzip_literal, ptr noundef @.str.38, i64 noundef %38)
  store i64 -1, ptr %5, align 8
  br label %115

39:                                               ; No predecessors!
  br label %40

40:                                               ; preds = %39, %24
  %41 = load ptr, ptr %6, align 8
  %42 = load ptr, ptr %7, align 8
  %43 = load ptr, ptr %11, align 8
  %44 = load i64, ptr %8, align 8
  %45 = call i64 @read_stream(ptr noundef %41, ptr noundef %42, i32 noundef 1, ptr noundef %43, i64 noundef %44)
  store i64 %45, ptr %10, align 8
  %46 = load i64, ptr %10, align 8
  %47 = icmp eq i64 %46, -1
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = sext i32 %50 to i64
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %40
  br label %54

54:                                               ; preds = %53
  %55 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %55) #6
  store ptr null, ptr %11, align 8
  br label %56

56:                                               ; preds = %54
  br label %57

57:                                               ; preds = %56
  %58 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %58, i32 noundef 165, ptr noundef @.str, ptr noundef @__func__.unzip_literal, ptr noundef @.str.39)
  store i64 -1, ptr %5, align 8
  br label %115

59:                                               ; No predecessors!
  br label %60

60:                                               ; preds = %59, %40
  %61 = load ptr, ptr %6, align 8
  %62 = load ptr, ptr %11, align 8
  %63 = load i64, ptr %10, align 8
  %64 = call i64 @write_1g(ptr noundef %61, ptr noundef %62, i64 noundef %63)
  %65 = load i64, ptr %10, align 8
  %66 = icmp ne i64 %64, %65
  %67 = xor i1 %66, true
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = sext i32 %69 to i64
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72
  %74 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %74) #6
  store ptr null, ptr %11, align 8
  br label %75

75:                                               ; preds = %73
  br label %76

76:                                               ; preds = %75
  %77 = load ptr, ptr %6, align 8
  %78 = load i64, ptr %10, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %77, i32 noundef 170, ptr noundef @.str, ptr noundef @__func__.unzip_literal, ptr noundef @.str.40, i64 noundef %78)
  store i64 -1, ptr %5, align 8
  br label %115

79:                                               ; No predecessors!
  br label %80

80:                                               ; preds = %79, %60
  %81 = load ptr, ptr %6, align 8
  %82 = getelementptr inbounds %struct.rzip_control, ptr %81, i32 0, i32 26
  %83 = load i64, ptr %82, align 8
  %84 = and i64 %83, 131072
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %93, label %86

86:                                               ; preds = %80
  %87 = load ptr, ptr %9, align 8
  %88 = load i32, ptr %87, align 4
  %89 = load ptr, ptr %11, align 8
  %90 = load i64, ptr %10, align 8
  %91 = call i32 @CrcUpdate(i32 noundef %88, ptr noundef %89, i64 noundef %90)
  %92 = load ptr, ptr %9, align 8
  store i32 %91, ptr %92, align 4
  br label %93

93:                                               ; preds = %86, %80
  %94 = load ptr, ptr %6, align 8
  %95 = getelementptr inbounds %struct.rzip_control, ptr %94, i32 0, i32 26
  %96 = load i64, ptr %95, align 8
  %97 = and i64 %96, 65536
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load ptr, ptr %6, align 8
  %101 = getelementptr inbounds %struct.rzip_control, ptr %100, i32 0, i32 26
  %102 = load i64, ptr %101, align 8
  %103 = and i64 %102, 131072
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %99, %93
  %106 = load ptr, ptr %11, align 8
  %107 = load i64, ptr %10, align 8
  %108 = load ptr, ptr %6, align 8
  %109 = getelementptr inbounds %struct.rzip_control, ptr %108, i32 0, i32 52
  call void @md5_process_bytes(ptr noundef %106, i64 noundef %107, ptr noundef %109) #6
  br label %110

110:                                              ; preds = %105, %99
  br label %111

111:                                              ; preds = %110
  %112 = load ptr, ptr %11, align 8
  call void @free(ptr noundef %112) #6
  store ptr null, ptr %11, align 8
  br label %113

113:                                              ; preds = %111
  %114 = load i64, ptr %10, align 8
  store i64 %114, ptr %5, align 8
  br label %115

115:                                              ; preds = %113, %76, %57, %36, %20
  %116 = load i64, ptr %5, align 8
  ret i64 %116
}

declare i32 @close_stream_in(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @unzip_match(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i64, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  store ptr %1, ptr %8, align 8
  store i64 %2, ptr %9, align 8
  store ptr %3, ptr %10, align 8
  store i32 %4, ptr %11, align 4
  %18 = load i64, ptr %9, align 8
  %19 = icmp slt i64 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %5
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %7, align 8
  %28 = load i64, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef %27, i32 noundef 200, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.41, i64 noundef %28)
  store i64 -1, ptr %6, align 8
  br label %190

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %5
  store i64 0, ptr %14, align 8
  %31 = load ptr, ptr %7, align 8
  %32 = call i64 @seekcur_fdout(ptr noundef %31)
  store i64 %32, ptr %15, align 8
  %33 = load i64, ptr %15, align 8
  %34 = icmp eq i64 %33, -1
  %35 = xor i1 %34, true
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = sext i32 %37 to i64
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  br label %41

41:                                               ; preds = %40
  %42 = load ptr, ptr %7, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %42, i32 noundef 205, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.42)
  store i64 -1, ptr %6, align 8
  br label %190

43:                                               ; No predecessors!
  br label %44

44:                                               ; preds = %43, %30
  %45 = load ptr, ptr %7, align 8
  %46 = load ptr, ptr %8, align 8
  %47 = load i32, ptr %11, align 4
  %48 = call i64 @read_vchars(ptr noundef %45, ptr noundef %46, i32 noundef 0, i32 noundef %47)
  store i64 %48, ptr %12, align 8
  %49 = load i64, ptr %12, align 8
  %50 = icmp eq i64 %49, -1
  %51 = xor i1 %50, true
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = sext i32 %53 to i64
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %44
  store i64 -1, ptr %6, align 8
  br label %190

57:                                               ; preds = %44
  %58 = load ptr, ptr %7, align 8
  %59 = load i64, ptr %15, align 8
  %60 = load i64, ptr %12, align 8
  %61 = sub nsw i64 %59, %60
  %62 = call i64 @seekto_fdhist(ptr noundef %58, i64 noundef %61)
  %63 = icmp eq i64 %62, -1
  %64 = xor i1 %63, true
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = sext i32 %66 to i64
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load ptr, ptr %7, align 8
  %72 = load i64, ptr %12, align 8
  %73 = load i64, ptr %15, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %71, i32 noundef 213, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.43, i64 noundef %72, i64 noundef %73)
  store i64 -1, ptr %6, align 8
  br label %190

74:                                               ; No predecessors!
  br label %75

75:                                               ; preds = %74, %57
  %76 = load i64, ptr %9, align 8
  %77 = call noalias ptr @malloc(i64 noundef %76) #7
  store ptr %77, ptr %16, align 8
  %78 = load ptr, ptr %16, align 8
  %79 = icmp ne ptr %78, null
  %80 = xor i1 %79, true
  %81 = xor i1 %80, true
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = sext i32 %83 to i64
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %75
  br label %87

87:                                               ; preds = %86
  %88 = load ptr, ptr %7, align 8
  %89 = load i64, ptr %9, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %88, i32 noundef 217, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.44, i64 noundef %89)
  store i64 -1, ptr %6, align 8
  br label %190

90:                                               ; No predecessors!
  br label %91

91:                                               ; preds = %90, %75
  %92 = load ptr, ptr %16, align 8
  store ptr %92, ptr %17, align 8
  br label %93

93:                                               ; preds = %175, %91
  %94 = load i64, ptr %9, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %185

96:                                               ; preds = %93
  %97 = load i64, ptr %9, align 8
  %98 = load i64, ptr %12, align 8
  %99 = icmp slt i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96
  %101 = load i64, ptr %9, align 8
  br label %104

102:                                              ; preds = %96
  %103 = load i64, ptr %12, align 8
  br label %104

104:                                              ; preds = %102, %100
  %105 = phi i64 [ %101, %100 ], [ %103, %102 ]
  store i64 %105, ptr %13, align 8
  %106 = load ptr, ptr %7, align 8
  %107 = load ptr, ptr %17, align 8
  %108 = load i64, ptr %13, align 8
  %109 = call i64 @read_fdhist(ptr noundef %106, ptr noundef %107, i64 noundef %108)
  %110 = load i64, ptr %13, align 8
  %111 = icmp ne i64 %109, %110
  %112 = xor i1 %111, true
  %113 = xor i1 %112, true
  %114 = zext i1 %113 to i32
  %115 = sext i32 %114 to i64
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %104
  br label %118

118:                                              ; preds = %117
  %119 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %119) #6
  store ptr null, ptr %16, align 8
  br label %120

120:                                              ; preds = %118
  br label %121

121:                                              ; preds = %120
  %122 = load ptr, ptr %7, align 8
  %123 = load i64, ptr %13, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %122, i32 noundef 225, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.45, i64 noundef %123)
  store i64 -1, ptr %6, align 8
  br label %190

124:                                              ; No predecessors!
  br label %125

125:                                              ; preds = %124, %104
  %126 = load ptr, ptr %7, align 8
  %127 = load ptr, ptr %17, align 8
  %128 = load i64, ptr %13, align 8
  %129 = call i64 @write_1g(ptr noundef %126, ptr noundef %127, i64 noundef %128)
  %130 = load i64, ptr %13, align 8
  %131 = icmp ne i64 %129, %130
  %132 = xor i1 %131, true
  %133 = xor i1 %132, true
  %134 = zext i1 %133 to i32
  %135 = sext i32 %134 to i64
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %125
  br label %138

138:                                              ; preds = %137
  %139 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %139) #6
  store ptr null, ptr %16, align 8
  br label %140

140:                                              ; preds = %138
  br label %141

141:                                              ; preds = %140
  %142 = load ptr, ptr %7, align 8
  %143 = load i64, ptr %13, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %142, i32 noundef 229, ptr noundef @.str, ptr noundef @__func__.unzip_match, ptr noundef @.str.46, i64 noundef %143)
  store i64 -1, ptr %6, align 8
  br label %190

144:                                              ; No predecessors!
  br label %145

145:                                              ; preds = %144, %125
  %146 = load ptr, ptr %7, align 8
  %147 = getelementptr inbounds %struct.rzip_control, ptr %146, i32 0, i32 26
  %148 = load i64, ptr %147, align 8
  %149 = and i64 %148, 131072
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %158, label %151

151:                                              ; preds = %145
  %152 = load ptr, ptr %10, align 8
  %153 = load i32, ptr %152, align 4
  %154 = load ptr, ptr %17, align 8
  %155 = load i64, ptr %13, align 8
  %156 = call i32 @CrcUpdate(i32 noundef %153, ptr noundef %154, i64 noundef %155)
  %157 = load ptr, ptr %10, align 8
  store i32 %156, ptr %157, align 4
  br label %158

158:                                              ; preds = %151, %145
  %159 = load ptr, ptr %7, align 8
  %160 = getelementptr inbounds %struct.rzip_control, ptr %159, i32 0, i32 26
  %161 = load i64, ptr %160, align 8
  %162 = and i64 %161, 65536
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %170, label %164

164:                                              ; preds = %158
  %165 = load ptr, ptr %7, align 8
  %166 = getelementptr inbounds %struct.rzip_control, ptr %165, i32 0, i32 26
  %167 = load i64, ptr %166, align 8
  %168 = and i64 %167, 131072
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %175

170:                                              ; preds = %164, %158
  %171 = load ptr, ptr %17, align 8
  %172 = load i64, ptr %13, align 8
  %173 = load ptr, ptr %7, align 8
  %174 = getelementptr inbounds %struct.rzip_control, ptr %173, i32 0, i32 52
  call void @md5_process_bytes(ptr noundef %171, i64 noundef %172, ptr noundef %174) #6
  br label %175

175:                                              ; preds = %170, %164
  %176 = load i64, ptr %13, align 8
  %177 = load i64, ptr %9, align 8
  %178 = sub nsw i64 %177, %176
  store i64 %178, ptr %9, align 8
  %179 = load i64, ptr %13, align 8
  %180 = load ptr, ptr %17, align 8
  %181 = getelementptr inbounds i8, ptr %180, i64 %179
  store ptr %181, ptr %17, align 8
  %182 = load i64, ptr %13, align 8
  %183 = load i64, ptr %14, align 8
  %184 = add nsw i64 %183, %182
  store i64 %184, ptr %14, align 8
  br label %93, !llvm.loop !17

185:                                              ; preds = %93
  br label %186

186:                                              ; preds = %185
  %187 = load ptr, ptr %16, align 8
  call void @free(ptr noundef %187) #6
  store ptr null, ptr %16, align 8
  br label %188

188:                                              ; preds = %186
  %189 = load i64, ptr %14, align 8
  store i64 %189, ptr %6, align 8
  br label %190

190:                                              ; preds = %188, %141, %121, %87, %70, %56, %41, %26
  %191 = load i64, ptr %6, align 8
  ret i64 %191
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_u32(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = call i64 @read_stream(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %10, i64 noundef 4)
  %15 = icmp ne i64 %14, 4
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load ptr, ptr %9, align 8
  store i8 1, ptr %22, align 1
  br label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %24, i32 noundef 68, ptr noundef @.str, ptr noundef @__func__.read_u32, ptr noundef @.str.48)
  store i32 0, ptr %5, align 4
  br label %30

25:                                               ; No predecessors!
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i32, ptr %10, align 4
  %28 = call i32 @__uint32_identity(i32 noundef %27)
  store i32 %28, ptr %10, align 4
  %29 = load i32, ptr %10, align 4
  store i32 %29, ptr %5, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, ptr %5, align 4
  ret i32 %31
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @read_u8(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 {
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i8, align 1
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store ptr %3, ptr %9, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = call i64 @read_stream(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %10, i64 noundef 1)
  %15 = icmp ne i64 %14, 1
  %16 = xor i1 %15, true
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = sext i32 %18 to i64
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %4
  %22 = load ptr, ptr %9, align 8
  store i8 1, ptr %22, align 1
  br label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %6, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %24, i32 noundef 57, ptr noundef @.str, ptr noundef @__func__.read_u8, ptr noundef @.str.35)
  store i8 0, ptr %5, align 1
  br label %28

25:                                               ; No predecessors!
  br label %26

26:                                               ; preds = %25, %4
  %27 = load i8, ptr %10, align 1
  store i8 %27, ptr %5, align 1
  br label %28

28:                                               ; preds = %26, %23
  %29 = load i8, ptr %5, align 1
  ret i8 %29
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_vchars(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %6, align 8
  store ptr %1, ptr %7, align 8
  store i32 %2, ptr %8, align 4
  store i32 %3, ptr %9, align 4
  store i64 0, ptr %10, align 8
  %11 = load ptr, ptr %6, align 8
  %12 = load ptr, ptr %7, align 8
  %13 = load i32, ptr %8, align 4
  %14 = load i32, ptr %9, align 4
  %15 = sext i32 %14 to i64
  %16 = call i64 @read_stream(ptr noundef %11, ptr noundef %12, i32 noundef %13, ptr noundef %10, i64 noundef %15)
  %17 = load i32, ptr %9, align 4
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %16, %18
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = sext i32 %22 to i64
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %4
  br label %26

26:                                               ; preds = %25
  %27 = load ptr, ptr %6, align 8
  %28 = load i32, ptr %9, align 4
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %27, i32 noundef 80, ptr noundef @.str, ptr noundef @__func__.read_vchars, ptr noundef @.str.36, i32 noundef %28)
  store i64 -1, ptr %5, align 8
  br label %34

29:                                               ; No predecessors!
  br label %30

30:                                               ; preds = %29, %4
  %31 = load i64, ptr %10, align 8
  %32 = call i64 @__uint64_identity(i64 noundef %31)
  store i64 %32, ptr %10, align 8
  %33 = load i64, ptr %10, align 8
  store i64 %33, ptr %5, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i64, ptr %5, align 8
  ret i64 %35
}

declare i64 @read_stream(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__uint64_identity(i64 noundef %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, ptr %2, align 8
  %3 = load i64, ptr %2, align 8
  ret i64 %3
}

; Function Attrs: nounwind allocsize(0)
declare noalias ptr @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(ptr noundef) #1

declare i64 @write_1g(ptr noundef, ptr noundef, i64 noundef) #2

declare i32 @CrcUpdate(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare void @md5_process_bytes(ptr noundef, i64 noundef, ptr noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @seekcur_fdout(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  %4 = load ptr, ptr %3, align 8
  %5 = getelementptr inbounds %struct.rzip_control, ptr %4, i32 0, i32 26
  %6 = load i64, ptr %5, align 8
  %7 = and i64 %6, 2097152
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load ptr, ptr %3, align 8
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i32 0, i32 37
  %12 = load i32, ptr %11, align 4
  %13 = call i64 @lseek64(i32 noundef %12, i64 noundef 0, i32 noundef 1) #6
  store i64 %13, ptr %2, align 8
  br label %22

14:                                               ; preds = %1
  %15 = load ptr, ptr %3, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 12
  %17 = load i64, ptr %16, align 8
  %18 = load ptr, ptr %3, align 8
  %19 = getelementptr inbounds %struct.rzip_control, ptr %18, i32 0, i32 8
  %20 = load i64, ptr %19, align 8
  %21 = add nsw i64 %17, %20
  store i64 %21, ptr %2, align 8
  br label %22

22:                                               ; preds = %14, %9
  %23 = load i64, ptr %2, align 8
  ret i64 %23
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_fdhist(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
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
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = load ptr, ptr %5, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i32 0, i32 38
  %17 = load i32, ptr %16, align 8
  %18 = load ptr, ptr %6, align 8
  %19 = load i64, ptr %7, align 8
  %20 = call i64 @read_1g(ptr noundef %14, i32 noundef %17, ptr noundef %18, i64 noundef %19)
  store i64 %20, ptr %4, align 8
  br label %51

21:                                               ; preds = %3
  %22 = load i64, ptr %7, align 8
  %23 = load ptr, ptr %5, align 8
  %24 = getelementptr inbounds %struct.rzip_control, ptr %23, i32 0, i32 9
  %25 = load i64, ptr %24, align 8
  %26 = add nsw i64 %22, %25
  %27 = load ptr, ptr %5, align 8
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i32 0, i32 11
  %29 = load i64, ptr %28, align 8
  %30 = icmp sgt i64 %26, %29
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = sext i32 %33 to i64
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %21
  br label %37

37:                                               ; preds = %36
  %38 = load ptr, ptr %5, align 8
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %38, i32 noundef 187, ptr noundef @.str, ptr noundef @__func__.read_fdhist, ptr noundef @.str.47)
  br label %39

39:                                               ; preds = %37
  store i64 -1, ptr %4, align 8
  br label %51

40:                                               ; preds = %21
  %41 = load ptr, ptr %6, align 8
  %42 = load ptr, ptr %5, align 8
  %43 = getelementptr inbounds %struct.rzip_control, ptr %42, i32 0, i32 7
  %44 = load ptr, ptr %43, align 8
  %45 = load ptr, ptr %5, align 8
  %46 = getelementptr inbounds %struct.rzip_control, ptr %45, i32 0, i32 9
  %47 = load i64, ptr %46, align 8
  %48 = getelementptr inbounds i8, ptr %44, i64 %47
  %49 = load i64, ptr %7, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %41, ptr align 1 %48, i64 %49, i1 false)
  %50 = load i64, ptr %7, align 8
  store i64 %50, ptr %4, align 8
  br label %51

51:                                               ; preds = %40, %39, %13
  %52 = load i64, ptr %4, align 8
  ret i64 %52
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__uint32_identity(i32 noundef %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  %3 = load i32, ptr %2, align 4
  ret i32 %3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

declare i32 @vfprintf(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @fflush(ptr noundef) #2

declare i32 @getchar() #2

declare void @fatal_exit(ptr noundef) #2

declare void @perror(ptr noundef) #2

declare zeroext i1 @lrz_crypt(ptr noundef, ptr noundef, i64 noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind allocsize(0) }

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
