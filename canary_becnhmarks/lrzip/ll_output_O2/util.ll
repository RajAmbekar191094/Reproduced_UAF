; ModuleID = './util.c'
source_filename = "./util.c"
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
%struct.termios = type { i32, i32, i32, i32, i8, [32 x i8], i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.aes_context = type { i32, ptr, [68 x i64] }
%struct.sha4_context = type { [2 x i64], [8 x i64], [128 x i8], [128 x i8], [128 x i8], i32 }

@stdin = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Fatal error - exiting\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"/dev/urandom\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"./util.c\00", align 1
@__func__.get_rand = private unnamed_addr constant [9 x i8] c"get_rand\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Failed to read fd in get_rand\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to close fd in get_rand\0A\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"lrzip.conf\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"Using configuration file ./lrzip.conf\0A\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1
@.str.9 = private unnamed_addr constant [21 x i8] c"%s/.lrzip/lrzip.conf\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"Using configuration file %s\0A\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"/etc/lrzip/lrzip.conf\00", align 1
@.str.12 = private unnamed_addr constant [48 x i8] c"Using configuration file /etc/lrzip/lrzip.conf\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c" =\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"window\00", align 1
@.str.15 = private unnamed_addr constant [10 x i8] c"unlimited\00", align 1
@.str.16 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"compressionlevel\00", align 1
@__func__.read_config = private unnamed_addr constant [12 x i8] c"read_config\00", align 1
@.str.18 = private unnamed_addr constant [56 x i8] c"CONF.FILE error. Compression Level must between 1 and 9\00", align 1
@.str.19 = private unnamed_addr constant [18 x i8] c"compressionmethod\00", align 1
@.str.20 = private unnamed_addr constant [57 x i8] c"CONF.FILE error. Can only specify one compression method\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"bzip2\00", align 1
@.str.22 = private unnamed_addr constant [5 x i8] c"gzip\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"lzo\00", align 1
@.str.24 = private unnamed_addr constant [5 x i8] c"rzip\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"zpaq\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"lzma\00", align 1
@.str.27 = private unnamed_addr constant [58 x i8] c"CONF.FILE error. Invalid compression method %s specified\0A\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"lzotest\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"no\00", align 1
@.str.30 = private unnamed_addr constant [10 x i8] c"hashcheck\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"showhash\00", align 1
@.str.32 = private unnamed_addr constant [16 x i8] c"outputdirectory\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Fatal Memory Error in read_config\00", align 1
@.str.34 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.35 = private unnamed_addr constant [10 x i8] c"verbosity\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"CONF.FILE error. Verbosity already defined.\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"max\00", align 1
@.str.38 = private unnamed_addr constant [55 x i8] c"lrzip.conf: Unrecognized verbosity value %s. Ignored.\0A\00", align 1
@.str.39 = private unnamed_addr constant [13 x i8] c"showprogress\00", align 1
@.str.40 = private unnamed_addr constant [3 x i8] c"NO\00", align 1
@.str.41 = private unnamed_addr constant [5 x i8] c"nice\00", align 1
@.str.42 = private unnamed_addr constant [49 x i8] c"CONF.FILE error. Nice must be between -20 and 19\00", align 1
@.str.43 = private unnamed_addr constant [11 x i8] c"keepbroken\00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"DELETEFILES\00", align 1
@.str.45 = private unnamed_addr constant [4 x i8] c"YES\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"REPLACEFILE\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"tmpdir\00", align 1
@.str.48 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.49 = private unnamed_addr constant [64 x i8] c"lrzip.conf: Unrecognized parameter value, %s = %s. Continuing.\0A\00", align 1
@.str.50 = private unnamed_addr constant [36 x i8] c"Failed to fclose fp in read_config\0A\00", align 1
@__func__.lrz_crypt = private unnamed_addr constant [10 x i8] c"lrz_crypt\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"Encrypting data        \0A\00", align 1
@.str.52 = private unnamed_addr constant [39 x i8] c"Failed to aes_setkey_enc in lrz_crypt\0A\00", align 1
@.str.53 = private unnamed_addr constant [39 x i8] c"Failed to aes_setkey_dec in lrz_crypt\0A\00", align 1
@.str.54 = private unnamed_addr constant [25 x i8] c"Decrypting data        \0A\00", align 1
@__func__.lrz_stretch = private unnamed_addr constant [12 x i8] c"lrz_stretch\00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"Hashing passphrase %lld (%lld) times \0A\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @register_infile(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 56
  store ptr %1, ptr %4, align 8, !tbaa !5
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 57
  store i8 %2, ptr %5, align 8, !tbaa !16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @register_outfile(ptr nocapture noundef writeonly %0, ptr noundef %1, i8 noundef signext %2) local_unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 58
  store ptr %1, ptr %4, align 8, !tbaa !17
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 62
  store i8 %2, ptr %5, align 8, !tbaa !18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @register_outputfile(ptr nocapture noundef writeonly %0, ptr noundef %1) local_unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 63
  store ptr %1, ptr %3, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @unlink_files(ptr nocapture noundef readonly %0) local_unnamed_addr #1 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !17
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 62
  %7 = load i8, ptr %6, align 8, !tbaa !18
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %5
  %10 = tail call i32 @unlink(ptr noundef nonnull %3) #24
  br label %11

11:                                               ; preds = %9, %5, %1
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 56
  %13 = load ptr, ptr %12, align 8, !tbaa !5
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 57
  %17 = load i8, ptr %16, align 8, !tbaa !16
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = tail call i32 @unlink(ptr noundef nonnull %13) #24
  br label %21

21:                                               ; preds = %19, %15, %11
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define dso_local void @fatal_exit(ptr nocapture noundef readonly %0) local_unnamed_addr #3 {
  %2 = alloca %struct.termios, align 4
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %2) #24
  %3 = load ptr, ptr @stdin, align 8, !tbaa !20
  %4 = tail call i32 @fileno(ptr noundef %3) #24
  %5 = call i32 @tcgetattr(i32 noundef %4, ptr noundef nonnull %2) #24
  %6 = getelementptr inbounds %struct.termios, ptr %2, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !tbaa !21
  %8 = or i32 %7, 8
  store i32 %8, ptr %6, align 4, !tbaa !21
  %9 = load ptr, ptr @stdin, align 8, !tbaa !20
  %10 = call i32 @fileno(ptr noundef %9) #24
  %11 = call i32 @tcsetattr(i32 noundef %10, i32 noundef 0, ptr noundef nonnull %2) #24
  call void @unlink_files(ptr noundef %0)
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 63
  %13 = load ptr, ptr %12, align 8, !tbaa !19
  %14 = call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %13)
  %15 = load ptr, ptr %12, align 8, !tbaa !19
  %16 = call i32 @fflush(ptr noundef %15)
  call void @exit(i32 noundef 1) #25
  unreachable
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare i32 @tcgetattr(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @tcsetattr(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @setup_overhead(ptr nocapture noundef %0) local_unnamed_addr #7 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !23
  %4 = and i64 %3, 992
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %8 = load i8, ptr %7, align 8, !tbaa !24
  %9 = zext i8 %8 to i32
  %10 = mul nuw nsw i32 %9, 7
  %11 = trunc i32 %10 to i16
  %12 = udiv i16 %11, 9
  %13 = zext i16 %12 to i32
  %14 = icmp ult i32 %10, 9
  %15 = select i1 %14, i32 1, i32 %13
  %16 = icmp ult i32 %15, 6
  %17 = shl nuw nsw i32 %15, 1
  %18 = shl i32 16384, %17
  %19 = icmp eq i32 %15, 6
  %20 = select i1 %19, i32 33554432, i32 67108864
  %21 = select i1 %16, i32 %18, i32 %20
  %22 = zext i32 %21 to i64
  %23 = mul nuw nsw i64 %22, 23
  %24 = lshr exact i64 %23, 1
  %25 = add nuw nsw i64 %24, 4194304
  br label %29

26:                                               ; preds = %1
  %27 = and i64 %3, 512
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26, %6
  %30 = phi i64 [ %25, %6 ], [ 117440512, %26 ]
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 21
  store i64 %30, ptr %31, align 8, !tbaa !25
  br label %32

32:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind uwtable
define dso_local void @setup_ram(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %3 = load i64, ptr %2, align 8, !tbaa !23
  %4 = and i64 %3, 8192
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %12, label %6

6:                                                ; preds = %1
  %7 = and i64 %3, 4112
  %8 = icmp eq i64 %7, 4112
  %9 = and i64 %3, 20
  %10 = icmp eq i64 %9, 0
  %11 = or i1 %8, %10
  br i1 %11, label %13, label %12

12:                                               ; preds = %6, %1
  br label %13

13:                                               ; preds = %6, %12
  %14 = phi i64 [ 3, %12 ], [ 6, %6 ]
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 27
  %16 = load i64, ptr %15, align 8, !tbaa !26
  %17 = sdiv i64 %16, %14
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  store i64 %17, ptr %18, align 8, !tbaa !27
  %19 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 23
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 22
  store i64 %17, ptr %20, align 8, !tbaa !28
  %21 = tail call i64 @sysconf(i32 noundef 30) #24
  %22 = srem i64 %17, %21
  %23 = load i64, ptr %19, align 8, !tbaa !29
  %24 = sub nsw i64 %23, %22
  store i64 %24, ptr %19, align 8, !tbaa !29
  %25 = icmp eq i64 %23, %22
  br i1 %25, label %26, label %28, !prof !30

26:                                               ; preds = %13
  %27 = tail call i64 @sysconf(i32 noundef 30) #24
  store i64 %27, ptr %19, align 8, !tbaa !29
  br label %28

28:                                               ; preds = %13, %26
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @round_to_page(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = load i64, ptr %0, align 8, !tbaa !29
  %3 = tail call i64 @sysconf(i32 noundef 30) #24
  %4 = srem i64 %2, %3
  %5 = load i64, ptr %0, align 8, !tbaa !29
  %6 = sub nsw i64 %5, %4
  store i64 %6, ptr %0, align 8, !tbaa !29
  %7 = icmp eq i64 %5, %4
  br i1 %7, label %8, label %10, !prof !30

8:                                                ; preds = %1
  %9 = tail call i64 @sysconf(i32 noundef 30) #24
  store i64 %9, ptr %0, align 8, !tbaa !29
  br label %10

10:                                               ; preds = %8, %1
  ret void
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i64 @round_up_page(ptr nocapture noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 35
  %4 = load i64, ptr %3, align 8, !tbaa !31
  %5 = urem i64 %1, %4
  %6 = and i64 %5, 4294967295
  %7 = icmp eq i64 %6, 0
  %8 = shl i64 %5, 32
  %9 = ashr exact i64 %8, 32
  %10 = sub nsw i64 %4, %9
  %11 = select i1 %7, i64 0, i64 %10
  %12 = add i64 %11, %1
  ret i64 %12
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @get_rand(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2) local_unnamed_addr #8 {
  %4 = tail call i32 (ptr, i32, ...) @open64(ptr noundef nonnull @.str.1, i32 noundef 0) #24
  %5 = icmp eq i32 %4, -1
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = icmp sgt i32 %2, 0
  br i1 %7, label %8, label %26

8:                                                ; preds = %6
  %9 = zext i32 %2 to i64
  br label %10

10:                                               ; preds = %8, %10
  %11 = phi i64 [ 0, %8 ], [ %15, %10 ]
  %12 = tail call i64 @random() #24
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds i8, ptr %1, i64 %11
  store i8 %13, ptr %14, align 1, !tbaa !32
  %15 = add nuw nsw i64 %11, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %26, label %10, !llvm.loop !33

17:                                               ; preds = %3
  %18 = sext i32 %2 to i64
  %19 = tail call i64 @read(i32 noundef %4, ptr noundef %1, i64 noundef %18) #24
  %20 = icmp eq i64 %19, %18
  br i1 %20, label %22, label %21, !prof !35

21:                                               ; preds = %17
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 174, ptr nonnull poison, ptr noundef nonnull @__func__.get_rand, ptr noundef nonnull @.str.3)
  br label %26

22:                                               ; preds = %17
  %23 = tail call i32 @close(i32 noundef %4) #24
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %26, label %25, !prof !35

25:                                               ; preds = %22
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 176, ptr nonnull poison, ptr noundef nonnull @__func__.get_rand, ptr noundef nonnull @.str.4)
  br label %26

26:                                               ; preds = %10, %6, %22, %25, %21
  %27 = phi i1 [ false, %21 ], [ false, %25 ], [ true, %22 ], [ true, %6 ], [ true, %10 ]
  ret i1 %27
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr nocapture noundef readonly, i32 noundef, ...) local_unnamed_addr #10

; Function Attrs: nounwind
declare i64 @random() local_unnamed_addr #5

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: inlinehint nounwind uwtable
define internal void @fatal(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #11 {
  %6 = alloca %struct.termios, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.va_start(ptr nonnull %7)
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @stderr, align 8, !tbaa !20
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef %4, ptr noundef nonnull %7) #26
  call void @perror(ptr noundef null) #26
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  call void %9(ptr noundef %16, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #24
  br label %17

17:                                               ; preds = %14, %11
  call void @llvm.va_end(ptr nonnull %7)
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %19 = load i8, ptr %18, align 8, !tbaa !38
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #24
  %22 = load ptr, ptr @stdin, align 8, !tbaa !20
  %23 = call i32 @fileno(ptr noundef %22) #24
  %24 = call i32 @tcgetattr(i32 noundef %23, ptr noundef nonnull %6) #24
  %25 = getelementptr inbounds %struct.termios, ptr %6, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = or i32 %26, 8
  store i32 %27, ptr %25, align 4, !tbaa !21
  %28 = load ptr, ptr @stdin, align 8, !tbaa !20
  %29 = call i32 @fileno(ptr noundef %28) #24
  %30 = call i32 @tcsetattr(i32 noundef %29, i32 noundef 0, ptr noundef nonnull %6) #24
  call void @unlink_files(ptr noundef nonnull %0)
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 63
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %32)
  %34 = load ptr, ptr %31, align 8, !tbaa !19
  %35 = call i32 @fflush(ptr noundef %34)
  call void @exit(i32 noundef 1) #25
  unreachable

36:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  ret void
}

declare i32 @close(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @read_config(ptr nocapture noundef %0) local_unnamed_addr #8 {
  %2 = alloca [255 x i8], align 16
  %3 = alloca [255 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 255, ptr nonnull %3) #24
  %4 = tail call noalias ptr @fopen64(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6)
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %1
  %7 = tail call ptr @getenv(ptr noundef nonnull @.str.8) #24
  %8 = icmp eq ptr %7, null
  br i1 %8, label %21, label %9

9:                                                ; preds = %6
  %10 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %2, i64 noundef 255, ptr noundef nonnull @.str.9, ptr noundef nonnull %7) #24
  %11 = call noalias ptr @fopen64(ptr noundef nonnull %2, ptr noundef nonnull @.str.6)
  %12 = icmp eq ptr %11, null
  br i1 %12, label %21, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %15 = load ptr, ptr %14, align 8, !tbaa !39
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef nonnull @.str.10, ptr noundef nonnull %2)
  br label %28

17:                                               ; preds = %1
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %19 = load ptr, ptr %18, align 8, !tbaa !39
  %20 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 38, i64 1, ptr %19)
  br label %28

21:                                               ; preds = %6, %9
  %22 = tail call noalias ptr @fopen64(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.6)
  %23 = icmp eq ptr %22, null
  br i1 %23, label %274, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %26 = load ptr, ptr %25, align 8, !tbaa !39
  %27 = tail call i64 @fwrite(ptr nonnull @.str.12, i64 47, i64 1, ptr %26)
  br label %28

28:                                               ; preds = %17, %13, %24
  %29 = phi ptr [ %22, %24 ], [ %4, %17 ], [ %11, %13 ]
  %30 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull %29)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %270, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %34 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 6
  %35 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 31
  %36 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 5
  %37 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 20
  %38 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 25
  br label %39

39:                                               ; preds = %32, %267
  %40 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = add i64 %40, -1
  %44 = getelementptr inbounds [255 x i8], ptr %3, i64 0, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !32
  br label %45

45:                                               ; preds = %42, %39
  %46 = call ptr @strtok(ptr noundef nonnull %3, ptr noundef nonnull @.str.13) #24
  %47 = icmp eq ptr %46, null
  br i1 %47, label %267, label %48

48:                                               ; preds = %45
  %49 = tail call ptr @__ctype_b_loc() #28
  %50 = load ptr, ptr %49, align 8, !tbaa !20
  %51 = load i8, ptr %46, align 1, !tbaa !32
  %52 = sext i8 %51 to i64
  %53 = getelementptr inbounds i16, ptr %50, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !40
  %55 = and i16 %54, 8192
  %56 = icmp ne i16 %55, 0
  %57 = icmp eq i8 %51, 35
  %58 = select i1 %56, i1 true, i1 %57
  br i1 %58, label %267, label %59

59:                                               ; preds = %48
  %60 = call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.13) #24
  %61 = icmp eq ptr %60, null
  br i1 %61, label %267, label %62

62:                                               ; preds = %59
  %63 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.14) #27
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %62
  %66 = call i64 @strtol(ptr nocapture noundef nonnull %60, ptr noundef null, i32 noundef 10) #24
  %67 = shl i64 %66, 32
  %68 = ashr exact i64 %67, 32
  store i64 %68, ptr %38, align 8, !tbaa !42
  br label %267

69:                                               ; preds = %62
  %70 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.15) #27
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %69
  %73 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #27
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %267

75:                                               ; preds = %72
  %76 = load i64, ptr %33, align 8, !tbaa !23
  %77 = or i64 %76, 32768
  store i64 %77, ptr %33, align 8, !tbaa !23
  br label %267

78:                                               ; preds = %69
  %79 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.17) #27
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

81:                                               ; preds = %78
  %82 = call i64 @strtol(ptr nocapture noundef nonnull %60, ptr noundef null, i32 noundef 10) #24
  %83 = trunc i64 %82 to i32
  %84 = trunc i64 %82 to i8
  store i8 %84, ptr %37, align 8, !tbaa !24
  %85 = and i32 %83, 255
  %86 = add nsw i32 %85, -10
  %87 = icmp ult i32 %86, -9
  br i1 %87, label %88, label %267

88:                                               ; preds = %81
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 238, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.18)
  br label %274

89:                                               ; preds = %78
  %90 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.19) #27
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %126

92:                                               ; preds = %89
  %93 = load i64, ptr %33, align 8, !tbaa !23
  %94 = and i64 %93, 992
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 242, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.20)
  br label %274

97:                                               ; preds = %92
  %98 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.21) #27
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %97
  %101 = or i64 %93, 128
  store i64 %101, ptr %33, align 8, !tbaa !23
  br label %267

102:                                              ; preds = %97
  %103 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.22) #27
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %102
  %106 = or i64 %93, 256
  store i64 %106, ptr %33, align 8, !tbaa !23
  br label %267

107:                                              ; preds = %102
  %108 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.23) #27
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  %111 = or i64 %93, 64
  store i64 %111, ptr %33, align 8, !tbaa !23
  br label %267

112:                                              ; preds = %107
  %113 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.24) #27
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %112
  %116 = or i64 %93, 32
  store i64 %116, ptr %33, align 8, !tbaa !23
  br label %267

117:                                              ; preds = %112
  %118 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.25) #27
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %117
  %121 = or i64 %93, 512
  store i64 %121, ptr %33, align 8, !tbaa !23
  br label %267

122:                                              ; preds = %117
  %123 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.26) #27
  %124 = icmp eq i32 %123, 0
  br i1 %124, label %267, label %125

125:                                              ; preds = %122
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 254, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.27, ptr noundef nonnull %60)
  br label %274

126:                                              ; preds = %89
  %127 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.28) #27
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.29) #27
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %267

132:                                              ; preds = %129
  %133 = load i64, ptr %33, align 8, !tbaa !23
  %134 = and i64 %133, -1048577
  store i64 %134, ptr %33, align 8, !tbaa !23
  br label %267

135:                                              ; preds = %126
  %136 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.30) #27
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #27
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %267

141:                                              ; preds = %138
  %142 = load i64, ptr %33, align 8, !tbaa !23
  %143 = or i64 %142, 327680
  store i64 %143, ptr %33, align 8, !tbaa !23
  br label %267

144:                                              ; preds = %135
  %145 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.31) #27
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #27
  %149 = icmp eq i32 %148, 0
  br i1 %149, label %150, label %267

150:                                              ; preds = %147
  %151 = load i64, ptr %33, align 8, !tbaa !23
  %152 = or i64 %151, 65536
  store i64 %152, ptr %33, align 8, !tbaa !23
  br label %267

153:                                              ; preds = %144
  %154 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.32) #27
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %172

156:                                              ; preds = %153
  %157 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #27
  %158 = add i64 %157, 2
  %159 = call noalias ptr @malloc(i64 noundef %158) #29
  store ptr %159, ptr %36, align 8, !tbaa !43
  %160 = icmp eq ptr %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %156
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 270, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.33)
  br label %274

162:                                              ; preds = %156
  %163 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %159, ptr noundef nonnull dereferenceable(1) %60) #24
  %164 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #27
  %165 = getelementptr i8, ptr %60, i64 -1
  %166 = getelementptr i8, ptr %165, i64 %164
  %167 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %166, ptr noundef nonnull dereferenceable(2) @.str.34) #27
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %267, label %169

169:                                              ; preds = %162
  %170 = call i64 @strlen(ptr nonnull dereferenceable(1) %159)
  %171 = getelementptr inbounds i8, ptr %159, i64 %170
  store i16 47, ptr %171, align 1
  br label %267

172:                                              ; preds = %153
  %173 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.35) #27
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %172
  %176 = load i64, ptr %33, align 8, !tbaa !23
  %177 = and i64 %176, 3072
  %178 = icmp eq i64 %177, 0
  br i1 %178, label %180, label %179

179:                                              ; preds = %175
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 276, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.36)
  br label %274

180:                                              ; preds = %175
  %181 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #27
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %185

183:                                              ; preds = %180
  %184 = or i64 %176, 1024
  store i64 %184, ptr %33, align 8, !tbaa !23
  br label %267

185:                                              ; preds = %180
  %186 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.37) #27
  %187 = icmp eq i32 %186, 0
  br i1 %187, label %188, label %190

188:                                              ; preds = %185
  %189 = or i64 %176, 2048
  store i64 %189, ptr %33, align 8, !tbaa !23
  br label %267

190:                                              ; preds = %185
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %0, i32 noundef 282, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @.str.38, ptr noundef nonnull %60)
  br label %267

191:                                              ; preds = %172
  %192 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.39) #27
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %191
  %195 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.40) #27
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %267

197:                                              ; preds = %194
  %198 = load i64, ptr %33, align 8, !tbaa !23
  %199 = and i64 %198, -2
  store i64 %199, ptr %33, align 8, !tbaa !23
  br label %267

200:                                              ; preds = %191
  %201 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.41) #27
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %203, label %211

203:                                              ; preds = %200
  %204 = call i64 @strtol(ptr nocapture noundef nonnull %60, ptr noundef null, i32 noundef 10) #24
  %205 = trunc i64 %204 to i32
  %206 = trunc i64 %204 to i8
  store i8 %206, ptr %35, align 4, !tbaa !44
  %207 = shl i32 %205, 24
  %208 = add i32 %207, -318767105
  %209 = icmp ult i32 %208, -654311425
  br i1 %209, label %210, label %267

210:                                              ; preds = %203
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 290, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.42)
  br label %274

211:                                              ; preds = %200
  %212 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.43) #27
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = call i32 @strcasecmp(ptr noundef nonnull %60, ptr noundef nonnull @.str.16) #27
  %216 = icmp eq i32 %215, 0
  br i1 %216, label %217, label %267

217:                                              ; preds = %214
  %218 = load i64, ptr %33, align 8, !tbaa !23
  %219 = or i64 %218, 524288
  store i64 %219, ptr %33, align 8, !tbaa !23
  br label %267

220:                                              ; preds = %211
  %221 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(12) @.str.44) #27
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(4) @.str.45) #27
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %267

226:                                              ; preds = %223
  %227 = load i64, ptr %33, align 8, !tbaa !23
  %228 = and i64 %227, -3
  store i64 %228, ptr %33, align 8, !tbaa !23
  br label %267

229:                                              ; preds = %220
  %230 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %46, ptr noundef nonnull dereferenceable(12) @.str.46) #27
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(4) @.str.45) #27
  %234 = icmp eq i32 %233, 0
  br i1 %234, label %235, label %267

235:                                              ; preds = %232
  %236 = load i64, ptr %33, align 8, !tbaa !23
  %237 = or i64 %236, 8
  store i64 %237, ptr %33, align 8, !tbaa !23
  br label %267

238:                                              ; preds = %229
  %239 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.47) #27
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %257

241:                                              ; preds = %238
  %242 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #27
  %243 = add i64 %242, 2
  %244 = call ptr @malloc(i64 %243)
  store ptr %244, ptr %34, align 8, !tbaa !45
  %245 = icmp eq ptr %244, null
  br i1 %245, label %246, label %247

246:                                              ; preds = %241
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef nonnull %0, i32 noundef 305, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.33)
  br label %274

247:                                              ; preds = %241
  %248 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %244, ptr noundef nonnull dereferenceable(1) %60) #24
  %249 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %60) #27
  %250 = getelementptr i8, ptr %60, i64 -1
  %251 = getelementptr i8, ptr %250, i64 %249
  %252 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %251, ptr noundef nonnull dereferenceable(2) @.str.34) #27
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %267, label %254

254:                                              ; preds = %247
  %255 = call i64 @strlen(ptr nonnull dereferenceable(1) %244)
  %256 = getelementptr inbounds i8, ptr %244, i64 %255
  store i16 47, ptr %256, align 1
  br label %267

257:                                              ; preds = %238
  %258 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.48) #27
  %259 = icmp eq i32 %258, 0
  br i1 %259, label %260, label %266

260:                                              ; preds = %257
  %261 = call i32 @strcasecmp(ptr noundef nonnull %46, ptr noundef nonnull @.str.45) #27
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %267

263:                                              ; preds = %260
  %264 = load i64, ptr %33, align 8, !tbaa !23
  %265 = or i64 %264, 8388608
  store i64 %265, ptr %33, align 8, !tbaa !23
  br label %267

266:                                              ; preds = %257
  call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef %0, i32 noundef 315, ptr nonnull poison, ptr nonnull poison, ptr noundef nonnull @.str.49, ptr noundef nonnull %46, ptr noundef nonnull %60)
  br label %267

267:                                              ; preds = %65, %132, %129, %150, %147, %188, %190, %183, %226, %223, %254, %247, %260, %263, %266, %232, %235, %214, %217, %194, %197, %162, %169, %138, %141, %100, %110, %120, %122, %115, %105, %72, %75, %81, %203, %45, %48, %59
  %268 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 255, ptr noundef nonnull %29)
  %269 = icmp eq ptr %268, null
  br i1 %269, label %270, label %39, !llvm.loop !46

270:                                              ; preds = %267, %28
  %271 = call i32 @fclose(ptr noundef nonnull %29)
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %274, label %273, !prof !35

273:                                              ; preds = %270
  call void (ptr, i32, ptr, ptr, ptr, ...) @fatal(ptr noundef %0, i32 noundef 319, ptr nonnull poison, ptr noundef nonnull @__func__.read_config, ptr noundef nonnull @.str.50)
  br label %274

274:                                              ; preds = %21, %270, %273, %246, %210, %179, %161, %125, %96, %88
  %275 = phi i1 [ false, %246 ], [ false, %210 ], [ false, %179 ], [ false, %161 ], [ false, %96 ], [ false, %125 ], [ false, %88 ], [ false, %273 ], [ true, %270 ], [ true, %21 ]
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 255, ptr nonnull %2) #24
  ret i1 %275
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen64(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #16

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @failure(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr noundef %3, ptr noundef %4, ...) unnamed_addr #11 {
  %6 = alloca %struct.termios, align 4
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  call void @llvm.va_start(ptr nonnull %7)
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %5
  %12 = load ptr, ptr @stderr, align 8, !tbaa !20
  %13 = call i32 @vfprintf(ptr noundef %12, ptr noundef %4, ptr noundef nonnull %7) #26
  br label %17

14:                                               ; preds = %5
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %16 = load ptr, ptr %15, align 8, !tbaa !37
  call void %9(ptr noundef %16, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %7) #24
  br label %17

17:                                               ; preds = %14, %11
  call void @llvm.va_end(ptr nonnull %7)
  %18 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %19 = load i8, ptr %18, align 8, !tbaa !38
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %6) #24
  %22 = load ptr, ptr @stdin, align 8, !tbaa !20
  %23 = call i32 @fileno(ptr noundef %22) #24
  %24 = call i32 @tcgetattr(i32 noundef %23, ptr noundef nonnull %6) #24
  %25 = getelementptr inbounds %struct.termios, ptr %6, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !21
  %27 = or i32 %26, 8
  store i32 %27, ptr %25, align 4, !tbaa !21
  %28 = load ptr, ptr @stdin, align 8, !tbaa !20
  %29 = call i32 @fileno(ptr noundef %28) #24
  %30 = call i32 @tcsetattr(i32 noundef %29, i32 noundef 0, ptr noundef nonnull %6) #24
  call void @unlink_files(ptr noundef nonnull %0)
  %31 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 63
  %32 = load ptr, ptr %31, align 8, !tbaa !19
  %33 = call i64 @fwrite(ptr nonnull @.str, i64 22, i64 1, ptr %32)
  %34 = load ptr, ptr %31, align 8, !tbaa !19
  %35 = call i32 @fflush(ptr noundef %34)
  call void @exit(i32 noundef 1) #25
  unreachable

36:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #18

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr noundef %4, ...) unnamed_addr #11 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !38
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !47
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !37
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.read_config, ptr noundef %4, ptr noundef nonnull %6) #24
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !48
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !48
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef %4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !48
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrz_crypt(ptr nocapture noundef readonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #8 {
  %6 = alloca [584 x i8], align 16
  %7 = alloca [64 x i8], align 16
  %8 = alloca [64 x i8], align 16
  %9 = alloca [16 x i8], align 16
  %10 = alloca [16 x i8], align 16
  %11 = alloca %struct.aes_context, align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 560, ptr nonnull %11) #24
  %12 = call i32 @mlock(ptr noundef nonnull %11, i64 noundef 560) #24
  %13 = call i32 @mlock(ptr noundef nonnull %7, i64 noundef 64) #24
  %14 = call i32 @mlock(ptr noundef nonnull %8, i64 noundef 64) #24
  call void @llvm.lifetime.start.p0(i64 584, ptr nonnull %6) #24
  %15 = call i32 @mlock(ptr noundef nonnull %6, i64 noundef 584) #24
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 46
  %17 = load ptr, ptr %16, align 8, !tbaa !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 1 dereferenceable(64) %17, i64 64, i1 false)
  %18 = getelementptr inbounds i8, ptr %6, i64 64
  %19 = load i64, ptr %3, align 1
  store i64 %19, ptr %18, align 16
  %20 = getelementptr inbounds i8, ptr %6, i64 72
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  %22 = load ptr, ptr %21, align 8, !tbaa !50
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 45
  %24 = load i32, ptr %23, align 8, !tbaa !51
  %25 = sext i32 %24 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %20, ptr align 1 %22, i64 %25, i1 false)
  %26 = add nsw i32 %24, 72
  call void @sha4(ptr noundef nonnull %6, i32 noundef %26, ptr noundef nonnull %7, i32 noundef 0) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 16 dereferenceable(64) %7, i64 64, i1 false)
  %27 = load i64, ptr %3, align 1
  store i64 %27, ptr %18, align 16
  %28 = load ptr, ptr %21, align 8, !tbaa !50
  %29 = load i32, ptr %23, align 8, !tbaa !51
  %30 = sext i32 %29 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %20, ptr align 1 %28, i64 %30, i1 false)
  %31 = add nsw i32 %29, 72
  call void @sha4(ptr noundef nonnull %6, i32 noundef %31, ptr noundef nonnull %8, i32 noundef 0) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(584) %6, i8 0, i64 584, i1 false)
  %32 = call i32 @munlock(ptr noundef nonnull %6, i64 noundef 584) #24
  call void @llvm.lifetime.end.p0(i64 584, ptr nonnull %6) #24
  %33 = srem i64 %2, 16
  %34 = sub nsw i64 %2, %33
  %35 = icmp eq i32 %4, 1
  br i1 %35, label %36, label %57

36:                                               ; preds = %5
  %37 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %38 = load i64, ptr %37, align 8, !tbaa !23
  %39 = and i64 %38, 2048
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 poison, i32 noundef 379, ptr nonnull poison, ptr noundef nonnull @__func__.lrz_crypt, ptr noundef nonnull @.str.51)
  br label %42

42:                                               ; preds = %41, %36
  %43 = call i32 @aes_setkey_enc(ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef 128) #24
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %46, label %45, !prof !35

45:                                               ; preds = %42
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 381, ptr nonnull poison, ptr noundef nonnull @__func__.lrz_crypt, ptr noundef nonnull @.str.52)
  br label %91

46:                                               ; preds = %42
  %47 = call i32 @aes_crypt_cbc(ptr noundef nonnull %11, i32 noundef 1, i64 noundef %34, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %1) #24
  %48 = icmp eq i64 %33, 0
  br i1 %48, label %91, label %49

49:                                               ; preds = %46
  %50 = getelementptr inbounds i8, ptr %1, i64 %34
  %51 = icmp ugt i64 %33, 15
  %52 = sub nsw i64 16, %33
  %53 = select i1 %51, i64 0, i64 %52
  %54 = getelementptr i8, ptr %9, i64 %33
  call void @llvm.memset.p0.i64(ptr align 1 %54, i8 0, i64 %53, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %9, ptr align 1 %50, i64 %33, i1 false)
  %55 = call i32 @aes_crypt_cbc(ptr noundef nonnull %11, i32 noundef 1, i64 noundef 16, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #24
  %56 = getelementptr inbounds i8, ptr %50, i64 -16
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %50, ptr nonnull align 1 %56, i64 %33, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %56, ptr noundef nonnull align 16 dereferenceable(16) %10, i64 16, i1 false)
  br label %91

57:                                               ; preds = %5
  %58 = call i32 @aes_setkey_dec(ptr noundef nonnull %11, ptr noundef nonnull %7, i32 noundef 128) #24
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %61, label %60, !prof !35

60:                                               ; preds = %57
  call void (ptr, i32, ptr, ptr, ptr, ...) @failure(ptr noundef nonnull %0, i32 noundef 394, ptr nonnull poison, ptr noundef nonnull @__func__.lrz_crypt, ptr noundef nonnull @.str.53)
  br label %91

61:                                               ; preds = %57
  %62 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %63 = load i64, ptr %62, align 8, !tbaa !23
  %64 = and i64 %63, 2048
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %61
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 poison, i32 noundef 395, ptr nonnull poison, ptr noundef nonnull @__func__.lrz_crypt, ptr noundef nonnull @.str.54)
  br label %67

67:                                               ; preds = %66, %61
  %68 = icmp eq i64 %33, 0
  br i1 %68, label %89, label %69

69:                                               ; preds = %67
  %70 = add nsw i64 %34, -16
  %71 = call i32 @aes_crypt_cbc(ptr noundef nonnull %11, i32 noundef 0, i64 noundef %70, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %1) #24
  %72 = getelementptr inbounds i8, ptr %1, i64 %34
  %73 = getelementptr inbounds i8, ptr %72, i64 -16
  %74 = call i32 @aes_crypt_ecb(ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull %73, ptr noundef nonnull %9) #24
  %75 = icmp ugt i64 %33, 15
  %76 = sub nsw i64 16, %33
  %77 = select i1 %75, i64 0, i64 %76
  %78 = getelementptr i8, ptr %10, i64 %33
  call void @llvm.memset.p0.i64(ptr align 1 %78, i8 0, i64 %77, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %10, ptr align 1 %72, i64 %33, i1 false)
  %79 = load <2 x i64>, ptr %10, align 16, !tbaa !29
  %80 = load <2 x i64>, ptr %9, align 16, !tbaa !29
  %81 = xor <2 x i64> %80, %79
  store <2 x i64> %81, ptr %9, align 16, !tbaa !29
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %72, ptr nonnull align 16 %9, i64 %33, i1 false)
  %82 = getelementptr inbounds i8, ptr %10, i64 %33
  %83 = getelementptr inbounds i8, ptr %9, i64 %33
  %84 = sub nsw i64 16, %33
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %82, ptr nonnull align 1 %83, i64 %84, i1 false)
  %85 = call i32 @aes_crypt_ecb(ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull %10, ptr noundef nonnull %73) #24
  %86 = load <2 x i64>, ptr %8, align 16, !tbaa !29
  %87 = load <2 x i64>, ptr %73, align 8, !tbaa !29
  %88 = xor <2 x i64> %87, %86
  store <2 x i64> %88, ptr %73, align 8, !tbaa !29
  br label %91

89:                                               ; preds = %67
  %90 = call i32 @aes_crypt_cbc(ptr noundef nonnull %11, i32 noundef 0, i64 noundef %2, ptr noundef nonnull %8, ptr noundef %1, ptr noundef %1) #24
  br label %91

91:                                               ; preds = %49, %46, %89, %69, %60, %45
  %92 = phi i1 [ false, %45 ], [ false, %60 ], [ true, %69 ], [ true, %89 ], [ true, %46 ], [ true, %49 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(560) %11, i8 0, i64 560, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %8, i8 0, i64 64, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  %93 = call i32 @munlock(ptr noundef nonnull %11, i64 noundef 560) #24
  %94 = call i32 @munlock(ptr noundef nonnull %8, i64 noundef 64) #24
  %95 = call i32 @munlock(ptr noundef nonnull %7, i64 noundef 64) #24
  call void @llvm.lifetime.end.p0(i64 560, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #24
  ret i1 %92
}

; Function Attrs: nounwind
declare i32 @mlock(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef %4, ptr noundef %5, ...) unnamed_addr #11 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #24
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !38
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !36
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !47
  %18 = icmp sgt i32 %17, 3
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !36
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !37
  call void %20(ptr noundef %22, i32 noundef 4, i32 noundef %2, ptr noundef nonnull @.str.2, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %7) #24
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !39
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !39
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !39
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #24
  ret void
}

declare i32 @aes_setkey_enc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @aes_crypt_cbc(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #21

declare i32 @aes_setkey_dec(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare i32 @aes_crypt_ecb(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind
declare i32 @munlock(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @lrz_stretch(ptr nocapture noundef readonly %0) local_unnamed_addr #8 {
  %2 = alloca %struct.sha4_context, align 8
  %3 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 472, ptr nonnull %2) #24
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #24
  %4 = call i32 @mlock(ptr noundef nonnull %2, i64 noundef 472) #24
  call void @sha4_starts(ptr noundef nonnull %2, i32 noundef 0) #24
  %5 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 39
  %6 = load i64, ptr %5, align 8, !tbaa !52
  %7 = shl nsw i64 %6, 6
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 45
  %9 = load i32, ptr %8, align 8, !tbaa !51
  %10 = sext i32 %9 to i64
  %11 = add nsw i64 %10, 8
  %12 = udiv i64 %7, %11
  %13 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 26
  %14 = load i64, ptr %13, align 8, !tbaa !23
  %15 = and i64 %14, 2048
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %0, i32 poison, i32 noundef 434, ptr nonnull poison, ptr noundef nonnull @__func__.lrz_stretch, ptr noundef nonnull @.str.55, i64 noundef %6, i64 noundef %12)
  br label %18

18:                                               ; preds = %17, %1
  %19 = icmp sgt i64 %12, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %18
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 44
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi i64 [ 0, %20 ], [ %26, %22 ]
  store i64 %23, ptr %3, align 8, !tbaa !29
  call void @sha4_update(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 8) #24
  %24 = load ptr, ptr %21, align 8, !tbaa !50
  %25 = load i32, ptr %8, align 8, !tbaa !51
  call void @sha4_update(ptr noundef nonnull %2, ptr noundef %24, i32 noundef %25) #24
  %26 = add nuw nsw i64 %23, 1
  %27 = icmp eq i64 %26, %12
  br i1 %27, label %28, label %22, !llvm.loop !53

28:                                               ; preds = %22, %18
  %29 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 46
  %30 = load ptr, ptr %29, align 8, !tbaa !49
  call void @sha4_finish(ptr noundef nonnull %2, ptr noundef %30) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(472) %2, i8 0, i64 472, i1 false)
  %31 = call i32 @munlock(ptr noundef nonnull %2, i64 noundef 472) #24
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #24
  call void @llvm.lifetime.end.p0(i64 472, ptr nonnull %2) #24
  ret void
}

declare void @sha4_starts(ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @sha4_update(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

declare void @sha4_finish(ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtol(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #15

declare void @sha4(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #23 = { nofree nounwind }
attributes #24 = { nounwind }
attributes #25 = { noreturn nounwind }
attributes #26 = { cold }
attributes #27 = { nounwind willreturn memory(read) }
attributes #28 = { nounwind willreturn memory(none) }
attributes #29 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !7, i64 632}
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
!16 = !{!6, !8, i64 640}
!17 = !{!6, !7, i64 648}
!18 = !{!6, !8, i64 680}
!19 = !{!6, !7, i64 688}
!20 = !{!7, !7, i64 0}
!21 = !{!22, !11, i64 12}
!22 = !{!"termios", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !8, i64 16, !8, i64 17, !11, i64 52, !11, i64 56}
!23 = !{!6, !10, i64 208}
!24 = !{!6, !8, i64 160}
!25 = !{!6, !10, i64 168}
!26 = !{!6, !10, i64 216}
!27 = !{!6, !10, i64 184}
!28 = !{!6, !10, i64 176}
!29 = !{!10, !10, i64 0}
!30 = !{!"branch_weights", i32 1, i32 2000}
!31 = !{!6, !10, i64 256}
!32 = !{!8, !8, i64 0}
!33 = distinct !{!33, !34}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"branch_weights", i32 2000, i32 1}
!36 = !{!6, !7, i64 720}
!37 = !{!6, !7, i64 728}
!38 = !{!6, !8, i64 696}
!39 = !{!6, !7, i64 136}
!40 = !{!41, !41, i64 0}
!41 = !{!"short", !8, i64 0}
!42 = !{!6, !10, i64 200}
!43 = !{!6, !7, i64 40}
!44 = !{!6, !8, i64 244}
!45 = !{!6, !7, i64 48}
!46 = distinct !{!46, !34}
!47 = !{!6, !11, i64 700}
!48 = !{!6, !7, i64 144}
!49 = !{!6, !7, i64 336}
!50 = !{!6, !7, i64 320}
!51 = !{!6, !11, i64 328}
!52 = !{!6, !10, i64 280}
!53 = distinct !{!53, !34}
