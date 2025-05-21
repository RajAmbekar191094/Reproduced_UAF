; ModuleID = './liblrzip.c'
source_filename = "./liblrzip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Lrzip = type { i32, i32, ptr, ptr, i64, i64, ptr, i64, i64 }
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
%struct.timeval = type { i64, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@.str = private unnamed_addr constant [6 x i8] c"LRZIP\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"NOCONFIG\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lrzip_filename_pop.buf = internal global [4096 x i8] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [13 x i8] c"./liblrzip.c\00", align 1
@__func__.lrzip_run = private unnamed_addr constant [10 x i8] c"lrzip_run\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"No password callback set!\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Total time: %02d:%02d:%05.2f\0A\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"r\00", align 1

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_init() local_unnamed_addr #0 {
  tail call void @CrcGenerateTable() #23
  ret i1 true
}

declare void @CrcGenerateTable() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @lrzip_config_env(ptr nocapture noundef readonly %0) local_unnamed_addr #0 {
  %2 = tail call ptr @getenv(ptr noundef nonnull @.str) #23
  %3 = icmp eq ptr %2, null
  br i1 %3, label %7, label %4

4:                                                ; preds = %1
  %5 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.1) #24
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %4, %1
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = tail call zeroext i1 @read_config(ptr noundef %9) #23
  br label %11

11:                                               ; preds = %7, %4
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #3

declare zeroext i1 @read_config(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local void @lrzip_free(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %30, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  tail call void @rzip_control_free(ptr noundef %9) #23
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %11 = load i64, ptr %10, align 8, !tbaa !13
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi i64 [ 0, %13 ], [ %22, %15 ]
  %17 = load ptr, ptr %14, align 8, !tbaa !14
  %18 = getelementptr inbounds ptr, ptr %17, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  tail call void @free(ptr noundef %19) #23
  %20 = load ptr, ptr %14, align 8, !tbaa !14
  %21 = getelementptr inbounds ptr, ptr %20, i64 %16
  store ptr null, ptr %21, align 8, !tbaa !15
  %22 = add nuw i64 %16, 1
  %23 = load i64, ptr %10, align 8, !tbaa !13
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %15, label %25, !llvm.loop !16

25:                                               ; preds = %15, %7
  %26 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  tail call void @free(ptr noundef %27) #23
  store ptr null, ptr %26, align 8, !tbaa !14
  %28 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !18
  tail call void @free(ptr noundef %29) #23
  tail call void @free(ptr noundef nonnull %0) #23
  br label %30

30:                                               ; preds = %1, %3, %25
  ret void
}

declare void @rzip_control_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local ptr @lrzip_new(i32 noundef %0) local_unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #25
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = tail call noalias dereferenceable_or_null(864) ptr @calloc(i64 noundef 1, i64 noundef 864) #25
  %6 = getelementptr inbounds %struct.Lrzip, ptr %2, i64 0, i32 2
  store ptr %5, ptr %6, align 8, !tbaa !5
  %7 = icmp eq ptr %5, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = tail call zeroext i1 @initialise_control(ptr noundef nonnull %5) #23
  br i1 %9, label %10, label %12

10:                                               ; preds = %8
  store i32 %0, ptr %2, align 8, !tbaa !19
  %11 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 64
  store i8 1, ptr %11, align 8, !tbaa !20
  br label %13

12:                                               ; preds = %8, %4
  tail call void @lrzip_free(ptr noundef nonnull %2)
  br label %13

13:                                               ; preds = %1, %12, %10
  %14 = phi ptr [ %2, %10 ], [ null, %12 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #6

declare zeroext i1 @initialise_control(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lrzip_mode_get(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load i32, ptr %0, align 8, !tbaa !19
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi i32 [ %4, %3 ], [ 0, %1 ]
  ret i32 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local zeroext i1 @lrzip_mode_set(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ult i32 %1, 10
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  store i32 %1, ptr %0, align 8, !tbaa !19
  br label %7

7:                                                ; preds = %2, %6
  ret i1 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @lrzip_compression_level_set(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ne ptr %0, null
  %4 = add i32 %1, -1
  %5 = icmp ult i32 %4, 9
  %6 = and i1 %3, %5
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i64 0, i32 20
  store i8 %8, ptr %11, align 8, !tbaa !26
  br label %12

12:                                               ; preds = %2, %7
  ret i1 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lrzip_compression_level_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 20
  %7 = load i8, ptr %6, align 8, !tbaa !26
  %8 = zext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @lrzip_flags_set(ptr noundef writeonly %0, i32 noundef %1) local_unnamed_addr #8 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %6, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 1
  store i32 %1, ptr %5, align 4, !tbaa !27
  br label %6

6:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lrzip_flags_get(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !27
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi i32 [ %5, %3 ], [ 0, %1 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_nice_set(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  %4 = add i32 %1, -21
  %5 = icmp ult i32 %4, -40
  %6 = or i1 %3, %5
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = trunc i32 %1 to i8
  %9 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %10, i64 0, i32 31
  store i8 %8, ptr %11, align 4, !tbaa !28
  br label %12

12:                                               ; preds = %2, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lrzip_nice_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %9, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 31
  %7 = load i8, ptr %6, align 4, !tbaa !28
  %8 = sext i8 %7 to i32
  br label %9

9:                                                ; preds = %1, %3
  %10 = phi i32 [ %8, %3 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_threads_set(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne i32 %1, 0
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %10

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !5
  %9 = getelementptr inbounds %struct.rzip_control, ptr %8, i64 0, i32 30
  store i32 %1, ptr %9, align 8, !tbaa !29
  br label %10

10:                                               ; preds = %2, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lrzip_threads_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 30
  %7 = load i32, ptr %6, align 8, !tbaa !29
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_compression_window_max_set(ptr noundef readonly %0, i64 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i64 0, i32 25
  store i64 %1, ptr %7, align 8, !tbaa !30
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i64 @lrzip_compression_window_max_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 25
  %7 = load i64, ptr %6, align 8, !tbaa !30
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i64 [ %7, %3 ], [ -1, %1 ]
  ret i64 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lrzip_files_count(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !31
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @lrzip_filenames_count(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %5 = load i64, ptr %4, align 8, !tbaa !13
  %6 = trunc i64 %5 to i32
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi i32 [ %6, %3 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lrzip_files_get(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lrzip_filenames_get(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %6, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  br label %6

6:                                                ; preds = %1, %3
  %7 = phi ptr [ %5, %3 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local zeroext i1 @lrzip_file_add(ptr noundef %0, ptr noundef %1) local_unnamed_addr #11 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %38

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %38

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 8
  %12 = load i64, ptr %11, align 8, !tbaa !32
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10
  %15 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 11, i64 noundef 8) #25
  %16 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  store ptr %15, ptr %16, align 8, !tbaa !18
  store i64 1, ptr %11, align 8, !tbaa !32
  br label %32

17:                                               ; preds = %10
  %18 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %19 = load i64, ptr %18, align 8, !tbaa !31
  %20 = mul i64 %12, 10
  %21 = or i64 %20, 1
  %22 = icmp eq i64 %19, %21
  %23 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %24 = load ptr, ptr %23, align 8, !tbaa !18
  br i1 %22, label %25, label %32

25:                                               ; preds = %17
  %26 = add i64 %12, 1
  store i64 %26, ptr %11, align 8, !tbaa !32
  %27 = mul i64 %26, 80
  %28 = or i64 %27, 8
  %29 = tail call ptr @realloc(ptr noundef %24, i64 noundef %28) #26
  %30 = icmp eq ptr %29, null
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  store ptr %29, ptr %23, align 8, !tbaa !18
  br label %32

32:                                               ; preds = %17, %31, %14
  %33 = phi ptr [ %29, %31 ], [ %15, %14 ], [ %24, %17 ]
  %34 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %35 = load i64, ptr %34, align 8, !tbaa !31
  %36 = add i64 %35, 1
  store i64 %36, ptr %34, align 8, !tbaa !31
  %37 = getelementptr inbounds ptr, ptr %33, i64 %35
  store ptr %1, ptr %37, align 8, !tbaa !15
  br label %38

38:                                               ; preds = %25, %6, %2, %32
  %39 = phi i1 [ true, %32 ], [ false, %2 ], [ false, %6 ], [ false, %25 ]
  ret i1 %39
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local zeroext i1 @lrzip_file_del(ptr noundef %0, ptr noundef readnone %1) local_unnamed_addr #13 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %60

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 8
  %8 = load i64, ptr %7, align 8, !tbaa !32
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %60, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %12 = load i64, ptr %11, align 8, !tbaa !31
  %13 = add i64 %12, 1
  %14 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  br label %16

16:                                               ; preds = %10, %23
  %17 = phi i64 [ 0, %10 ], [ %24, %23 ]
  %18 = getelementptr inbounds ptr, ptr %15, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %19, %1
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = add i64 %17, 1
  %25 = icmp ugt i64 %24, %13
  br i1 %25, label %26, label %16, !llvm.loop !33

26:                                               ; preds = %21, %23
  %27 = phi i64 [ %17, %21 ], [ %24, %23 ]
  %28 = icmp ugt i64 %12, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = sub i64 %12, %27
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = and i64 %30, -4
  %34 = add i64 %27, %33
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %45, %35 ]
  %37 = add i64 %27, %36
  %38 = add nuw i64 %37, 1
  %39 = getelementptr inbounds ptr, ptr %15, i64 %38
  %40 = load <2 x ptr>, ptr %39, align 8, !tbaa !15
  %41 = getelementptr inbounds ptr, ptr %39, i64 2
  %42 = load <2 x ptr>, ptr %41, align 8, !tbaa !15
  %43 = getelementptr inbounds ptr, ptr %15, i64 %37
  store <2 x ptr> %40, ptr %43, align 8, !tbaa !15
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  store <2 x ptr> %42, ptr %44, align 8, !tbaa !15
  %45 = add nuw i64 %36, 4
  %46 = icmp eq i64 %45, %33
  br i1 %46, label %47, label %35, !llvm.loop !34

47:                                               ; preds = %35
  %48 = icmp eq i64 %30, %33
  br i1 %48, label %58, label %49

49:                                               ; preds = %29, %47
  %50 = phi i64 [ %27, %29 ], [ %34, %47 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %53, %51 ], [ %50, %49 ]
  %53 = add nuw i64 %52, 1
  %54 = getelementptr inbounds ptr, ptr %15, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !15
  %56 = getelementptr inbounds ptr, ptr %15, i64 %52
  store ptr %55, ptr %56, align 8, !tbaa !15
  %57 = icmp eq i64 %53, %12
  br i1 %57, label %58, label %51, !llvm.loop !37

58:                                               ; preds = %51, %47, %26
  %59 = add i64 %12, -1
  store i64 %59, ptr %11, align 8, !tbaa !38
  br label %60

60:                                               ; preds = %16, %6, %2, %58
  ret i1 %5
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_file_pop(ptr noundef %0) local_unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %60, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !32
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %60, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = icmp eq ptr %10, null
  br i1 %11, label %60, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %14 = load i64, ptr %13, align 8, !tbaa !31
  %15 = add i64 %14, 1
  br label %16

16:                                               ; preds = %23, %12
  %17 = phi i64 [ 0, %12 ], [ %24, %23 ]
  %18 = getelementptr inbounds ptr, ptr %9, i64 %17
  %19 = load ptr, ptr %18, align 8, !tbaa !15
  %20 = icmp eq ptr %19, null
  br i1 %20, label %60, label %21

21:                                               ; preds = %16
  %22 = icmp eq ptr %19, %10
  br i1 %22, label %26, label %23

23:                                               ; preds = %21
  %24 = add i64 %17, 1
  %25 = icmp ugt i64 %24, %15
  br i1 %25, label %26, label %16, !llvm.loop !33

26:                                               ; preds = %23, %21
  %27 = phi i64 [ %17, %21 ], [ %24, %23 ]
  %28 = icmp ugt i64 %14, %27
  br i1 %28, label %29, label %58

29:                                               ; preds = %26
  %30 = sub i64 %14, %27
  %31 = icmp ult i64 %30, 4
  br i1 %31, label %49, label %32

32:                                               ; preds = %29
  %33 = and i64 %30, -4
  %34 = add i64 %27, %33
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi i64 [ 0, %32 ], [ %45, %35 ]
  %37 = add i64 %27, %36
  %38 = add nuw i64 %37, 1
  %39 = getelementptr inbounds ptr, ptr %9, i64 %38
  %40 = load <2 x ptr>, ptr %39, align 8, !tbaa !15
  %41 = getelementptr inbounds ptr, ptr %39, i64 2
  %42 = load <2 x ptr>, ptr %41, align 8, !tbaa !15
  %43 = getelementptr inbounds ptr, ptr %9, i64 %37
  store <2 x ptr> %40, ptr %43, align 8, !tbaa !15
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  store <2 x ptr> %42, ptr %44, align 8, !tbaa !15
  %45 = add nuw i64 %36, 4
  %46 = icmp eq i64 %45, %33
  br i1 %46, label %47, label %35, !llvm.loop !39

47:                                               ; preds = %35
  %48 = icmp eq i64 %30, %33
  br i1 %48, label %58, label %49

49:                                               ; preds = %29, %47
  %50 = phi i64 [ %27, %29 ], [ %34, %47 ]
  br label %51

51:                                               ; preds = %49, %51
  %52 = phi i64 [ %53, %51 ], [ %50, %49 ]
  %53 = add nuw i64 %52, 1
  %54 = getelementptr inbounds ptr, ptr %9, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !15
  %56 = getelementptr inbounds ptr, ptr %9, i64 %52
  store ptr %55, ptr %56, align 8, !tbaa !15
  %57 = icmp eq i64 %53, %14
  br i1 %57, label %58, label %51, !llvm.loop !40

58:                                               ; preds = %51, %47, %26
  %59 = add i64 %14, -1
  store i64 %59, ptr %13, align 8, !tbaa !38
  br label %60

60:                                               ; preds = %16, %58, %7, %1, %3
  %61 = phi ptr [ null, %3 ], [ null, %1 ], [ null, %7 ], [ %10, %58 ], [ %10, %16 ]
  ret ptr %61
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @lrzip_files_clear(ptr noundef %0) local_unnamed_addr #11 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 8
  %5 = load i64, ptr %4, align 8, !tbaa !32
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !18
  tail call void @free(ptr noundef %9) #23
  store ptr null, ptr %8, align 8, !tbaa !18
  br label %10

10:                                               ; preds = %1, %3, %7
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_filename_add(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #23
  %4 = icmp ne ptr %0, null
  %5 = icmp ne ptr %1, null
  %6 = and i1 %4, %5
  br i1 %6, label %7, label %54

7:                                                ; preds = %2
  %8 = load i8, ptr %1, align 1, !tbaa !41
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %54, label %10

10:                                               ; preds = %7
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.2) #24
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %54, label %13

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %15 = load ptr, ptr %14, align 8, !tbaa !18
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %54

17:                                               ; preds = %13
  %18 = call i32 @stat64(ptr noundef nonnull %1, ptr noundef nonnull %3) #23
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %54

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.stat, ptr %3, i64 0, i32 3
  %22 = load i32, ptr %21, align 8, !tbaa !42
  %23 = and i32 %22, 61440
  %24 = icmp eq i32 %23, 16384
  br i1 %24, label %54, label %25

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 5
  %27 = load i64, ptr %26, align 8, !tbaa !12
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 11, i64 noundef 8) #25
  %31 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  store ptr %30, ptr %31, align 8, !tbaa !14
  store i64 1, ptr %26, align 8, !tbaa !12
  br label %47

32:                                               ; preds = %25
  %33 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !13
  %35 = mul i64 %27, 10
  %36 = or i64 %35, 1
  %37 = icmp eq i64 %34, %36
  %38 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !14
  br i1 %37, label %40, label %47

40:                                               ; preds = %32
  %41 = add i64 %27, 1
  store i64 %41, ptr %26, align 8, !tbaa !12
  %42 = mul i64 %41, 80
  %43 = or i64 %42, 8
  %44 = tail call ptr @realloc(ptr noundef %39, i64 noundef %43) #26
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %40
  store ptr %44, ptr %38, align 8, !tbaa !14
  br label %47

47:                                               ; preds = %32, %46, %29
  %48 = phi ptr [ %44, %46 ], [ %30, %29 ], [ %39, %32 ]
  %49 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #23
  %50 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %51 = load i64, ptr %50, align 8, !tbaa !13
  %52 = add i64 %51, 1
  store i64 %52, ptr %50, align 8, !tbaa !13
  %53 = getelementptr inbounds ptr, ptr %48, i64 %51
  store ptr %49, ptr %53, align 8, !tbaa !15
  br label %54

54:                                               ; preds = %40, %20, %17, %13, %2, %7, %10, %47
  %55 = phi i1 [ true, %47 ], [ false, %10 ], [ false, %7 ], [ false, %2 ], [ false, %13 ], [ false, %17 ], [ false, %20 ], [ false, %40 ]
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #23
  ret i1 %55
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @stat64(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #15

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_filename_del(ptr noundef %0, ptr noundef readonly %1) local_unnamed_addr #0 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %71

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !41
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %71, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 5
  %11 = load i64, ptr %10, align 8, !tbaa !12
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %71, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %15 = load i64, ptr %14, align 8, !tbaa !13
  %16 = add i64 %15, 1
  %17 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  br label %19

19:                                               ; preds = %13, %32
  %20 = phi i64 [ 0, %13 ], [ %33, %32 ]
  %21 = getelementptr inbounds ptr, ptr %18, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !15
  %23 = icmp eq ptr %22, null
  br i1 %23, label %71, label %24

24:                                               ; preds = %19
  %25 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %22, ptr noundef nonnull dereferenceable(1) %1) #24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  tail call void @free(ptr noundef nonnull %22) #23
  %28 = load ptr, ptr %17, align 8, !tbaa !14
  %29 = getelementptr inbounds ptr, ptr %28, i64 %20
  store ptr null, ptr %29, align 8, !tbaa !15
  %30 = load ptr, ptr %17, align 8, !tbaa !14
  %31 = load i64, ptr %14, align 8, !tbaa !38
  br label %35

32:                                               ; preds = %24
  %33 = add i64 %20, 1
  %34 = icmp ugt i64 %33, %16
  br i1 %34, label %35, label %19, !llvm.loop !45

35:                                               ; preds = %32, %27
  %36 = phi i64 [ %31, %27 ], [ %15, %32 ]
  %37 = phi ptr [ %30, %27 ], [ %18, %32 ]
  %38 = phi i64 [ %20, %27 ], [ %33, %32 ]
  %39 = icmp ugt i64 %36, %38
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = sub i64 %36, %38
  %42 = icmp ult i64 %41, 4
  br i1 %42, label %60, label %43

43:                                               ; preds = %40
  %44 = and i64 %41, -4
  %45 = add i64 %38, %44
  br label %46

46:                                               ; preds = %46, %43
  %47 = phi i64 [ 0, %43 ], [ %56, %46 ]
  %48 = add i64 %38, %47
  %49 = add nuw i64 %48, 1
  %50 = getelementptr inbounds ptr, ptr %37, i64 %49
  %51 = load <2 x ptr>, ptr %50, align 8, !tbaa !15
  %52 = getelementptr inbounds ptr, ptr %50, i64 2
  %53 = load <2 x ptr>, ptr %52, align 8, !tbaa !15
  %54 = getelementptr inbounds ptr, ptr %37, i64 %48
  store <2 x ptr> %51, ptr %54, align 8, !tbaa !15
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  store <2 x ptr> %53, ptr %55, align 8, !tbaa !15
  %56 = add nuw i64 %47, 4
  %57 = icmp eq i64 %56, %44
  br i1 %57, label %58, label %46, !llvm.loop !46

58:                                               ; preds = %46
  %59 = icmp eq i64 %41, %44
  br i1 %59, label %69, label %60

60:                                               ; preds = %40, %58
  %61 = phi i64 [ %38, %40 ], [ %45, %58 ]
  br label %62

62:                                               ; preds = %60, %62
  %63 = phi i64 [ %64, %62 ], [ %61, %60 ]
  %64 = add nuw i64 %63, 1
  %65 = getelementptr inbounds ptr, ptr %37, i64 %64
  %66 = load ptr, ptr %65, align 8, !tbaa !15
  %67 = getelementptr inbounds ptr, ptr %37, i64 %63
  store ptr %66, ptr %67, align 8, !tbaa !15
  %68 = icmp eq i64 %64, %36
  br i1 %68, label %69, label %62, !llvm.loop !47

69:                                               ; preds = %62, %58, %35
  %70 = add i64 %36, -1
  store i64 %70, ptr %14, align 8, !tbaa !38
  br label %71

71:                                               ; preds = %19, %9, %2, %6, %69
  %72 = phi i1 [ true, %69 ], [ false, %6 ], [ false, %2 ], [ true, %9 ], [ true, %19 ]
  ret i1 %72
}

; Function Attrs: nounwind uwtable
define dso_local ptr @lrzip_filename_pop(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %74, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %74, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = load ptr, ptr %9, align 8, !tbaa !15
  %11 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @lrzip_filename_pop.buf, ptr noundef nonnull dereferenceable(1) %10) #23
  %12 = load i8, ptr @lrzip_filename_pop.buf, align 16, !tbaa !41
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %74, label %14

14:                                               ; preds = %7
  %15 = load i64, ptr %4, align 8, !tbaa !12
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %74, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %19 = load i64, ptr %18, align 8, !tbaa !13
  %20 = add i64 %19, 1
  %21 = load ptr, ptr %8, align 8, !tbaa !14
  br label %22

22:                                               ; preds = %35, %17
  %23 = phi i64 [ 0, %17 ], [ %36, %35 ]
  %24 = getelementptr inbounds ptr, ptr %21, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = icmp eq ptr %25, null
  br i1 %26, label %74, label %27

27:                                               ; preds = %22
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) @lrzip_filename_pop.buf) #24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  tail call void @free(ptr noundef nonnull %25) #23
  %31 = load ptr, ptr %8, align 8, !tbaa !14
  %32 = getelementptr inbounds ptr, ptr %31, i64 %23
  store ptr null, ptr %32, align 8, !tbaa !15
  %33 = load ptr, ptr %8, align 8, !tbaa !14
  %34 = load i64, ptr %18, align 8, !tbaa !38
  br label %38

35:                                               ; preds = %27
  %36 = add i64 %23, 1
  %37 = icmp ugt i64 %36, %20
  br i1 %37, label %38, label %22, !llvm.loop !45

38:                                               ; preds = %35, %30
  %39 = phi i64 [ %34, %30 ], [ %19, %35 ]
  %40 = phi ptr [ %33, %30 ], [ %21, %35 ]
  %41 = phi i64 [ %23, %30 ], [ %36, %35 ]
  %42 = icmp ugt i64 %39, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %38
  %44 = sub i64 %39, %41
  %45 = icmp ult i64 %44, 4
  br i1 %45, label %63, label %46

46:                                               ; preds = %43
  %47 = and i64 %44, -4
  %48 = add i64 %41, %47
  br label %49

49:                                               ; preds = %49, %46
  %50 = phi i64 [ 0, %46 ], [ %59, %49 ]
  %51 = add i64 %41, %50
  %52 = add nuw i64 %51, 1
  %53 = getelementptr inbounds ptr, ptr %40, i64 %52
  %54 = load <2 x ptr>, ptr %53, align 8, !tbaa !15
  %55 = getelementptr inbounds ptr, ptr %53, i64 2
  %56 = load <2 x ptr>, ptr %55, align 8, !tbaa !15
  %57 = getelementptr inbounds ptr, ptr %40, i64 %51
  store <2 x ptr> %54, ptr %57, align 8, !tbaa !15
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  store <2 x ptr> %56, ptr %58, align 8, !tbaa !15
  %59 = add nuw i64 %50, 4
  %60 = icmp eq i64 %59, %47
  br i1 %60, label %61, label %49, !llvm.loop !48

61:                                               ; preds = %49
  %62 = icmp eq i64 %44, %47
  br i1 %62, label %72, label %63

63:                                               ; preds = %43, %61
  %64 = phi i64 [ %41, %43 ], [ %48, %61 ]
  br label %65

65:                                               ; preds = %63, %65
  %66 = phi i64 [ %67, %65 ], [ %64, %63 ]
  %67 = add nuw i64 %66, 1
  %68 = getelementptr inbounds ptr, ptr %40, i64 %67
  %69 = load ptr, ptr %68, align 8, !tbaa !15
  %70 = getelementptr inbounds ptr, ptr %40, i64 %66
  store ptr %69, ptr %70, align 8, !tbaa !15
  %71 = icmp eq i64 %67, %39
  br i1 %71, label %72, label %65, !llvm.loop !49

72:                                               ; preds = %65, %61, %38
  %73 = add i64 %39, -1
  store i64 %73, ptr %18, align 8, !tbaa !38
  br label %74

74:                                               ; preds = %22, %72, %14, %7, %1, %3
  %75 = phi ptr [ null, %3 ], [ null, %1 ], [ @lrzip_filename_pop.buf, %7 ], [ @lrzip_filename_pop.buf, %14 ], [ @lrzip_filename_pop.buf, %72 ], [ @lrzip_filename_pop.buf, %22 ]
  ret ptr %75
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nounwind uwtable
define dso_local void @lrzip_filenames_clear(ptr noundef %0) local_unnamed_addr #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !12
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %26, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %9 = load i64, ptr %8, align 8, !tbaa !13
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  br label %13

13:                                               ; preds = %11, %13
  %14 = phi i64 [ 0, %11 ], [ %20, %13 ]
  %15 = load ptr, ptr %12, align 8, !tbaa !14
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !15
  tail call void @free(ptr noundef %17) #23
  %18 = load ptr, ptr %12, align 8, !tbaa !14
  %19 = getelementptr inbounds ptr, ptr %18, i64 %14
  store ptr null, ptr %19, align 8, !tbaa !15
  %20 = add nuw i64 %14, 1
  %21 = load i64, ptr %8, align 8, !tbaa !13
  %22 = icmp ult i64 %20, %21
  br i1 %22, label %13, label %23, !llvm.loop !50

23:                                               ; preds = %13, %7
  %24 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  tail call void @free(ptr noundef %25) #23
  store ptr null, ptr %24, align 8, !tbaa !14
  br label %26

26:                                               ; preds = %1, %3, %23
  ret void
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @lrzip_suffix_set(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !41
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !51
  tail call void @free(ptr noundef %13) #23
  %14 = load ptr, ptr %10, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i64 0, i32 19
  store ptr null, ptr %15, align 8, !tbaa !51
  %16 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #23
  store ptr %16, ptr %15, align 8, !tbaa !51
  br label %17

17:                                               ; preds = %2, %6, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_suffix_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !51
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @lrzip_outdir_set(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp ne ptr %0, null
  %4 = icmp ne ptr %1, null
  %5 = and i1 %3, %4
  br i1 %5, label %6, label %35

6:                                                ; preds = %2
  %7 = load i8, ptr %1, align 1, !tbaa !41
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %6
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !52
  tail call void @free(ptr noundef %13) #23
  %14 = load ptr, ptr %10, align 8, !tbaa !5
  %15 = getelementptr inbounds %struct.rzip_control, ptr %14, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !52
  %16 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 47) #24
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %9
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !41
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %18
  %23 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #23
  br label %33

24:                                               ; preds = %18, %9
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #24
  %26 = add i64 %25, 2
  %27 = tail call noalias ptr @malloc(i64 noundef %26) #27
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %24
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %27, ptr nonnull align 1 %1, i64 %25, i1 false)
  %30 = getelementptr inbounds i8, ptr %27, i64 %25
  store i8 47, ptr %30, align 1, !tbaa !41
  %31 = add i64 %25, 1
  %32 = getelementptr inbounds i8, ptr %27, i64 %31
  store i8 0, ptr %32, align 1, !tbaa !41
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi ptr [ %27, %29 ], [ %23, %22 ]
  store ptr %34, ptr %15, align 8, !tbaa !52
  br label %35

35:                                               ; preds = %33, %24, %2, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_outdir_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !52
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_outfile_set(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #19 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %1, null
  %6 = load ptr, ptr @stderr, align 8
  %7 = icmp eq ptr %6, %1
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !53
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 4
  store ptr %1, ptr %16, align 8, !tbaa !54
  br label %17

17:                                               ; preds = %4, %9, %2, %15
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_outfile_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nounwind willreturn uwtable
define dso_local void @lrzip_outfilename_set(ptr noundef readonly %0, ptr noundef readonly %1) local_unnamed_addr #11 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %35, label %4

4:                                                ; preds = %2
  %5 = icmp ne ptr %1, null
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = load i8, ptr %1, align 1, !tbaa !41
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %35, label %9

9:                                                ; preds = %6, %4
  %10 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !5
  %12 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !54
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %35

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.rzip_control, ptr %11, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !53
  %18 = icmp ne ptr %17, null
  %19 = and i1 %5, %18
  br i1 %19, label %20, label %26

20:                                               ; preds = %15
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %17, ptr noundef nonnull dereferenceable(1) %1) #24
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  tail call void @free(ptr noundef nonnull %17) #23
  %24 = load ptr, ptr %10, align 8, !tbaa !5
  %25 = getelementptr inbounds %struct.rzip_control, ptr %24, i64 0, i32 2
  store ptr null, ptr %25, align 8, !tbaa !53
  br label %29

26:                                               ; preds = %15
  tail call void @free(ptr noundef %17) #23
  %27 = load ptr, ptr %10, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i64 0, i32 2
  store ptr null, ptr %28, align 8, !tbaa !53
  br i1 %5, label %29, label %32

29:                                               ; preds = %23, %26
  %30 = phi ptr [ %25, %23 ], [ %28, %26 ]
  %31 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #23
  br label %32

32:                                               ; preds = %26, %29
  %33 = phi ptr [ %30, %29 ], [ %28, %26 ]
  %34 = phi ptr [ %31, %29 ], [ null, %26 ]
  store ptr %34, ptr %33, align 8, !tbaa !53
  br label %35

35:                                               ; preds = %20, %9, %2, %6, %32
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_outfilename_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !53
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @lrzip_md5digest_get(ptr noundef readonly %0) local_unnamed_addr #7 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 53
  br label %7

7:                                                ; preds = %1, %3
  %8 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_run(ptr noundef readonly %0) local_unnamed_addr #0 {
  %2 = alloca %struct.timeval, align 8
  %3 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  %4 = icmp eq ptr %0, null
  br i1 %4, label %249, label %5

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !19
  switch i32 %6, label %249 [
    i32 3, label %7
    i32 2, label %13
    i32 1, label %19
    i32 4, label %25
    i32 8, label %32
    i32 5, label %38
    i32 7, label %45
    i32 6, label %52
    i32 9, label %59
  ]

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !5
  %10 = getelementptr inbounds %struct.rzip_control, ptr %9, i64 0, i32 26
  %11 = load i64, ptr %10, align 8, !tbaa !55
  %12 = or i64 %11, 16
  store i64 %12, ptr %10, align 8, !tbaa !55
  br label %66

13:                                               ; preds = %5
  %14 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !5
  %16 = getelementptr inbounds %struct.rzip_control, ptr %15, i64 0, i32 26
  %17 = load i64, ptr %16, align 8, !tbaa !55
  %18 = or i64 %17, 4
  store i64 %18, ptr %16, align 8, !tbaa !55
  br label %66

19:                                               ; preds = %5
  %20 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !5
  %22 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 26
  %23 = load i64, ptr %22, align 8, !tbaa !55
  %24 = or i64 %23, 16384
  store i64 %24, ptr %22, align 8, !tbaa !55
  br label %66

25:                                               ; preds = %5
  %26 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !5
  %28 = getelementptr inbounds %struct.rzip_control, ptr %27, i64 0, i32 26
  %29 = load i64, ptr %28, align 8, !tbaa !55
  %30 = and i64 %29, -33
  %31 = xor i64 %30, 992
  store i64 %31, ptr %28, align 8, !tbaa !55
  br label %66

32:                                               ; preds = %5
  %33 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !5
  %35 = getelementptr inbounds %struct.rzip_control, ptr %34, i64 0, i32 26
  %36 = load i64, ptr %35, align 8, !tbaa !55
  %37 = xor i64 %36, 992
  store i64 %37, ptr %35, align 8, !tbaa !55
  br label %66

38:                                               ; preds = %5
  %39 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !5
  %41 = getelementptr inbounds %struct.rzip_control, ptr %40, i64 0, i32 26
  %42 = load i64, ptr %41, align 8, !tbaa !55
  %43 = and i64 %42, -65
  %44 = xor i64 %43, 992
  store i64 %44, ptr %41, align 8, !tbaa !55
  br label %66

45:                                               ; preds = %5
  %46 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !5
  %48 = getelementptr inbounds %struct.rzip_control, ptr %47, i64 0, i32 26
  %49 = load i64, ptr %48, align 8, !tbaa !55
  %50 = and i64 %49, -129
  %51 = xor i64 %50, 992
  store i64 %51, ptr %48, align 8, !tbaa !55
  br label %66

52:                                               ; preds = %5
  %53 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !5
  %55 = getelementptr inbounds %struct.rzip_control, ptr %54, i64 0, i32 26
  %56 = load i64, ptr %55, align 8, !tbaa !55
  %57 = and i64 %56, -257
  %58 = xor i64 %57, 992
  store i64 %58, ptr %55, align 8, !tbaa !55
  br label %66

59:                                               ; preds = %5
  %60 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !5
  %62 = getelementptr inbounds %struct.rzip_control, ptr %61, i64 0, i32 26
  %63 = load i64, ptr %62, align 8, !tbaa !55
  %64 = and i64 %63, -513
  %65 = xor i64 %64, 992
  store i64 %65, ptr %62, align 8, !tbaa !55
  br label %66

66:                                               ; preds = %59, %52, %45, %38, %32, %25, %19, %13, %7
  %67 = phi ptr [ %61, %59 ], [ %54, %52 ], [ %47, %45 ], [ %40, %38 ], [ %34, %32 ], [ %27, %25 ], [ %21, %19 ], [ %15, %13 ], [ %9, %7 ]
  %68 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  tail call void @setup_overhead(ptr noundef nonnull %67) #23
  %69 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 1
  %70 = load i32, ptr %69, align 4, !tbaa !27
  %71 = and i32 %70, 8
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %66
  %74 = load ptr, ptr %68, align 8, !tbaa !5
  %75 = getelementptr inbounds %struct.rzip_control, ptr %74, i64 0, i32 26
  %76 = load i64, ptr %75, align 8, !tbaa !55
  %77 = or i64 %76, 327680
  store i64 %77, ptr %75, align 8, !tbaa !55
  br label %78

78:                                               ; preds = %73, %66
  %79 = and i32 %70, 2
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %86, label %81

81:                                               ; preds = %78
  %82 = load ptr, ptr %68, align 8, !tbaa !5
  %83 = getelementptr inbounds %struct.rzip_control, ptr %82, i64 0, i32 26
  %84 = load i64, ptr %83, align 8, !tbaa !55
  %85 = or i64 %84, 8
  store i64 %85, ptr %83, align 8, !tbaa !55
  br label %86

86:                                               ; preds = %81, %78
  %87 = and i32 %70, 1
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %94, label %89

89:                                               ; preds = %86
  %90 = load ptr, ptr %68, align 8, !tbaa !5
  %91 = getelementptr inbounds %struct.rzip_control, ptr %90, i64 0, i32 26
  %92 = load i64, ptr %91, align 8, !tbaa !55
  %93 = and i64 %92, -3
  store i64 %93, ptr %91, align 8, !tbaa !55
  br label %94

94:                                               ; preds = %89, %86
  %95 = and i32 %70, 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %102, label %97

97:                                               ; preds = %94
  %98 = load ptr, ptr %68, align 8, !tbaa !5
  %99 = getelementptr inbounds %struct.rzip_control, ptr %98, i64 0, i32 26
  %100 = load i64, ptr %99, align 8, !tbaa !55
  %101 = or i64 %100, 524288
  store i64 %101, ptr %99, align 8, !tbaa !55
  br label %102

102:                                              ; preds = %97, %94
  %103 = and i32 %70, 16
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %102
  %106 = load ptr, ptr %68, align 8, !tbaa !5
  %107 = getelementptr inbounds %struct.rzip_control, ptr %106, i64 0, i32 26
  %108 = load i64, ptr %107, align 8, !tbaa !55
  %109 = and i64 %108, -1048577
  store i64 %109, ptr %107, align 8, !tbaa !55
  br label %110

110:                                              ; preds = %105, %102
  %111 = and i32 %70, 32
  %112 = icmp eq i32 %111, 0
  %113 = load ptr, ptr %68, align 8, !tbaa !5
  br i1 %112, label %118, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 26
  %116 = load i64, ptr %115, align 8, !tbaa !55
  %117 = or i64 %116, 32768
  store i64 %117, ptr %115, align 8, !tbaa !55
  br label %118

118:                                              ; preds = %110, %114
  %119 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 26
  %120 = load i64, ptr %119, align 8, !tbaa !55
  %121 = shl i32 %70, 17
  %122 = and i32 %121, 8388608
  %123 = zext i32 %122 to i64
  %124 = or i64 %120, %123
  %125 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 65
  %126 = load i32, ptr %125, align 4, !tbaa !56
  %127 = icmp sgt i32 %126, 0
  %128 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 26
  br i1 %127, label %129, label %137

129:                                              ; preds = %118
  %130 = or i64 %124, 1
  store i64 %130, ptr %128, align 8, !tbaa !55
  %131 = icmp eq i32 %126, 1
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = or i64 %124, 1025
  store i64 %133, ptr %128, align 8, !tbaa !55
  %134 = icmp ugt i32 %126, 2
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = or i64 %124, 3073
  br label %139

137:                                              ; preds = %118
  %138 = xor i64 %124, 3073
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i64 [ %138, %137 ], [ %136, %135 ]
  store i64 %140, ptr %128, align 8, !tbaa !55
  br label %141

141:                                              ; preds = %129, %132, %139
  %142 = phi i64 [ %130, %129 ], [ %133, %132 ], [ %140, %139 ]
  %143 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 7
  %144 = load i64, ptr %143, align 8, !tbaa !31
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %141
  %147 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 4
  %148 = load i64, ptr %147, align 8, !tbaa !13
  %149 = icmp eq i64 %148, 0
  br i1 %149, label %249, label %150

150:                                              ; preds = %146, %141
  %151 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 4
  %152 = load ptr, ptr %151, align 8, !tbaa !54
  %153 = icmp eq ptr %152, null
  br i1 %153, label %163, label %154

154:                                              ; preds = %150
  %155 = getelementptr inbounds %struct.rzip_control, ptr %113, i64 0, i32 17
  %156 = load ptr, ptr %155, align 8, !tbaa !57
  %157 = icmp eq ptr %152, %156
  br i1 %157, label %158, label %160

158:                                              ; preds = %154
  %159 = load ptr, ptr @stderr, align 8, !tbaa !15
  store ptr %159, ptr %155, align 8, !tbaa !57
  br label %160

160:                                              ; preds = %158, %154
  %161 = phi ptr [ %159, %158 ], [ %156, %154 ]
  %162 = or i64 %142, 8192
  store i64 %162, ptr %128, align 8, !tbaa !55
  tail call void @register_outputfile(ptr noundef nonnull %113, ptr noundef %161) #23
  br label %163

163:                                              ; preds = %160, %150
  %164 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !14
  %166 = icmp eq ptr %165, null
  br i1 %166, label %171, label %167

167:                                              ; preds = %163
  %168 = load ptr, ptr %165, align 8, !tbaa !15
  %169 = load ptr, ptr %68, align 8, !tbaa !5
  store ptr %168, ptr %169, align 8, !tbaa !58
  %170 = load i64, ptr %128, align 8, !tbaa !55
  br label %179

171:                                              ; preds = %163
  %172 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 6
  %173 = load ptr, ptr %172, align 8, !tbaa !18
  %174 = load ptr, ptr %173, align 8, !tbaa !15
  %175 = load ptr, ptr %68, align 8, !tbaa !5
  %176 = getelementptr inbounds %struct.rzip_control, ptr %175, i64 0, i32 1
  store ptr %174, ptr %176, align 8, !tbaa !59
  %177 = load i64, ptr %128, align 8, !tbaa !55
  %178 = or i64 %177, 4096
  store i64 %178, ptr %128, align 8, !tbaa !55
  br label %179

179:                                              ; preds = %171, %167
  %180 = phi ptr [ %175, %171 ], [ %169, %167 ]
  %181 = phi i64 [ %178, %171 ], [ %170, %167 ]
  %182 = and i64 %181, 8192
  %183 = icmp eq i64 %182, 0
  %184 = getelementptr inbounds %struct.rzip_control, ptr %180, i64 0, i32 17
  %185 = load ptr, ptr %184, align 8, !tbaa !57
  %186 = icmp eq ptr %185, null
  %187 = select i1 %183, i1 %186, i1 false
  br i1 %187, label %188, label %190

188:                                              ; preds = %179
  %189 = load ptr, ptr @stdout, align 8, !tbaa !15
  store ptr %189, ptr %184, align 8, !tbaa !57
  br label %190

190:                                              ; preds = %179, %188
  %191 = phi ptr [ %189, %188 ], [ %185, %179 ]
  tail call void @register_outputfile(ptr noundef nonnull %180, ptr noundef %191) #23
  %192 = load ptr, ptr %68, align 8, !tbaa !5
  tail call void @setup_ram(ptr noundef %192) #23
  %193 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #23
  %194 = load i64, ptr %128, align 8, !tbaa !55
  %195 = and i64 %194, 8388608
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %203, label %197

197:                                              ; preds = %190
  %198 = load ptr, ptr %68, align 8, !tbaa !5
  %199 = getelementptr inbounds %struct.rzip_control, ptr %198, i64 0, i32 41
  %200 = load ptr, ptr %199, align 8, !tbaa !60
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %203

202:                                              ; preds = %197
  tail call void (ptr, i32, ptr, ptr, ptr, ...) @print_err(ptr noundef nonnull %113, i32 poison, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison)
  br label %249

203:                                              ; preds = %197, %190
  %204 = and i64 %194, 20
  %205 = icmp eq i64 %204, 0
  br i1 %205, label %209, label %206

206:                                              ; preds = %203
  %207 = load ptr, ptr %68, align 8, !tbaa !5
  %208 = tail call zeroext i1 @decompress_file(ptr noundef %207) #23
  br i1 %208, label %217, label %249

209:                                              ; preds = %203
  %210 = and i64 %194, 16384
  %211 = icmp eq i64 %210, 0
  %212 = load ptr, ptr %68, align 8, !tbaa !5
  br i1 %211, label %215, label %213

213:                                              ; preds = %209
  %214 = tail call zeroext i1 @get_fileinfo(ptr noundef %212) #23
  br i1 %214, label %217, label %249

215:                                              ; preds = %209
  %216 = tail call zeroext i1 @compress_file(ptr noundef %212) #23
  br i1 %216, label %217, label %249

217:                                              ; preds = %213, %215, %206
  %218 = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #23
  %219 = load i64, ptr %128, align 8, !tbaa !55
  %220 = and i64 %219, 16385
  %221 = icmp eq i64 %220, 1
  br i1 %221, label %222, label %249

222:                                              ; preds = %217
  %223 = getelementptr inbounds %struct.timeval, ptr %3, i64 0, i32 1
  %224 = load i64, ptr %223, align 8, !tbaa !61
  %225 = sitofp i64 %224 to double
  %226 = fdiv double %225, 1.000000e+06
  %227 = load i64, ptr %3, align 8, !tbaa !63
  %228 = sitofp i64 %227 to double
  %229 = fadd double %226, %228
  %230 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %231 = load i64, ptr %230, align 8, !tbaa !61
  %232 = sitofp i64 %231 to double
  %233 = fdiv double %232, 1.000000e+06
  %234 = load i64, ptr %2, align 8, !tbaa !63
  %235 = sitofp i64 %234 to double
  %236 = fadd double %233, %235
  %237 = fsub double %229, %236
  %238 = fptosi double %237 to i32
  %239 = sdiv i32 %238, 3600
  %240 = mul nsw i32 %239, 3600
  %241 = sitofp i32 %240 to double
  %242 = fsub double %237, %241
  %243 = fdiv double %237, 6.000000e+01
  %244 = fptosi double %243 to i32
  %245 = srem i32 %244, 60
  %246 = mul nsw i32 %245, 60
  %247 = sitofp i32 %246 to double
  %248 = fsub double %242, %247
  tail call void (ptr, i32, i32, ptr, ptr, ptr, ...) @print_stuff(ptr noundef nonnull %113, i32 poison, i32 poison, ptr nonnull poison, ptr nonnull poison, ptr nonnull poison, i32 noundef %239, i32 noundef %245, double noundef %248)
  br label %249

249:                                              ; preds = %5, %1, %217, %222, %215, %213, %206, %146, %202
  %250 = phi i1 [ false, %202 ], [ false, %146 ], [ false, %206 ], [ false, %213 ], [ false, %215 ], [ true, %222 ], [ true, %217 ], [ false, %1 ], [ false, %5 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret i1 %250
}

declare void @register_outputfile(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @setup_ram(ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_err(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ...) unnamed_addr #20 {
  %6 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #23
  %7 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %8 = load i8, ptr %7, align 8, !tbaa !20
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = icmp eq ptr %12, null
  br i1 %13, label %22, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %16 = load i32, ptr %15, align 4, !tbaa !56
  %17 = icmp sgt i32 %16, -1
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  call void @llvm.va_start(ptr nonnull %6)
  %19 = load ptr, ptr %11, align 8, !tbaa !64
  %20 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %21 = load ptr, ptr %20, align 8, !tbaa !65
  call void %19(ptr noundef %21, i32 noundef 0, i32 noundef 557, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lrzip_run, ptr noundef nonnull @.str.4, ptr noundef nonnull %6) #23
  call void @llvm.va_end(ptr nonnull %6)
  br label %31

22:                                               ; preds = %14, %10, %5
  %23 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 18
  %24 = load ptr, ptr %23, align 8, !tbaa !66
  %25 = icmp eq ptr %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  call void @llvm.va_start(ptr nonnull %6)
  %27 = load ptr, ptr %23, align 8, !tbaa !66
  %28 = call i32 @vfprintf(ptr noundef %27, ptr noundef nonnull @.str.4, ptr noundef nonnull %6)
  call void @llvm.va_end(ptr nonnull %6)
  %29 = load ptr, ptr %23, align 8, !tbaa !66
  %30 = call i32 @fflush(ptr noundef %29)
  br label %31

31:                                               ; preds = %22, %26, %18
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #23
  ret void
}

declare zeroext i1 @decompress_file(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @get_fileinfo(ptr noundef) local_unnamed_addr #1

declare zeroext i1 @compress_file(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define internal void @print_stuff(ptr nocapture noundef readonly %0, i32 %1, i32 %2, ptr nocapture readnone %3, ptr nocapture readnone %4, ptr nocapture readnone %5, ...) unnamed_addr #20 {
  %7 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %7) #23
  %8 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 64
  %9 = load i8, ptr %8, align 8, !tbaa !20
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 68
  %13 = load ptr, ptr %12, align 8, !tbaa !64
  %14 = icmp eq ptr %13, null
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 65
  %17 = load i32, ptr %16, align 4, !tbaa !56
  %18 = icmp sgt i32 %17, 1
  br i1 %18, label %19, label %23

19:                                               ; preds = %15
  call void @llvm.va_start(ptr nonnull %7)
  %20 = load ptr, ptr %12, align 8, !tbaa !64
  %21 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 69
  %22 = load ptr, ptr %21, align 8, !tbaa !65
  call void %20(ptr noundef %22, i32 noundef 2, i32 noundef 578, ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.lrzip_run, ptr noundef nonnull @.str.5, ptr noundef nonnull %7) #23
  call void @llvm.va_end(ptr nonnull %7)
  br label %32

23:                                               ; preds = %15, %11, %6
  %24 = getelementptr inbounds %struct.rzip_control, ptr %0, i64 0, i32 17
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  %26 = icmp eq ptr %25, null
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  call void @llvm.va_start(ptr nonnull %7)
  %28 = load ptr, ptr %24, align 8, !tbaa !57
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef nonnull @.str.5, ptr noundef nonnull %7)
  call void @llvm.va_end(ptr nonnull %7)
  %30 = load ptr, ptr %24, align 8, !tbaa !57
  %31 = call i32 @fflush(ptr noundef %30)
  br label %32

32:                                               ; preds = %23, %27, %19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %7) #23
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_log_level_set(ptr noundef readonly %0, i32 noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i64 0, i32 65
  store i32 %1, ptr %7, align 4, !tbaa !56
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local i32 @lrzip_log_level_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 65
  %7 = load i32, ptr %6, align 4, !tbaa !56
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi i32 [ %7, %3 ], [ 0, %1 ]
  ret i32 %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_log_cb_set(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 68
  store ptr %1, ptr %8, align 8, !tbaa !64
  %9 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 69
  store ptr %2, ptr %9, align 8, !tbaa !65
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_log_stdout_set(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i64 0, i32 17
  store ptr %1, ptr %7, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_log_stdout_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 17
  %7 = load ptr, ptr %6, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_log_stderr_set(ptr noundef readonly %0, ptr noundef %1) local_unnamed_addr #9 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !5
  %7 = getelementptr inbounds %struct.rzip_control, ptr %6, i64 0, i32 18
  store ptr %1, ptr %7, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %2, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local ptr @lrzip_log_stderr_get(ptr noundef readonly %0) local_unnamed_addr #10 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !5
  %6 = getelementptr inbounds %struct.rzip_control, ptr %5, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !66
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_pass_cb_set(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 41
  store ptr %1, ptr %8, align 8, !tbaa !60
  %9 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 42
  store ptr %2, ptr %9, align 8, !tbaa !67
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @lrzip_info_cb_set(ptr noundef readonly %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.Lrzip, ptr %0, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !5
  %8 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 66
  store ptr %1, ptr %8, align 8, !tbaa !68
  %9 = getelementptr inbounds %struct.rzip_control, ptr %7, i64 0, i32 67
  store ptr %2, ptr %9, align 8, !tbaa !69
  br label %10

10:                                               ; preds = %3, %5
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_compress_full(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
  %7 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %7) #23
  %8 = icmp ne ptr %0, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %8, %9
  %11 = icmp ne ptr %2, null
  %12 = and i1 %10, %11
  %13 = icmp ne i64 %3, 0
  %14 = and i1 %12, %13
  %15 = icmp ugt i32 %4, 3
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %84

17:                                               ; preds = %6
  tail call void @CrcGenerateTable() #23
  %18 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #25
  %19 = icmp eq ptr %18, null
  br i1 %19, label %84, label %20

20:                                               ; preds = %17
  %21 = tail call noalias dereferenceable_or_null(864) ptr @calloc(i64 noundef 1, i64 noundef 864) #25
  %22 = getelementptr inbounds %struct.Lrzip, ptr %18, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !5
  %23 = icmp eq ptr %21, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = tail call zeroext i1 @initialise_control(ptr noundef nonnull %21) #23
  br i1 %25, label %27, label %26

26:                                               ; preds = %24, %20
  tail call void @lrzip_free(ptr noundef nonnull %18)
  br label %84

27:                                               ; preds = %24
  store i32 %4, ptr %18, align 8, !tbaa !19
  %28 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 64
  store i8 1, ptr %28, align 8, !tbaa !20
  %29 = tail call ptr @getenv(ptr noundef nonnull @.str) #23
  %30 = icmp eq ptr %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) @.str.1) #24
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %31, %27
  %35 = tail call zeroext i1 @read_config(ptr noundef nonnull %21) #23
  br label %36

36:                                               ; preds = %31, %34
  %37 = tail call noalias ptr @fmemopen(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @.str.6) #23
  %38 = tail call noalias ptr @tmpfile64()
  %39 = icmp ne ptr %37, null
  %40 = icmp ne ptr %38, null
  %41 = and i1 %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct.Lrzip, ptr %18, i64 0, i32 8
  %44 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 11, i64 noundef 8) #25
  %45 = getelementptr inbounds %struct.Lrzip, ptr %18, i64 0, i32 6
  store ptr %44, ptr %45, align 8, !tbaa !18
  store i64 1, ptr %43, align 8, !tbaa !32
  %46 = getelementptr inbounds %struct.Lrzip, ptr %18, i64 0, i32 7
  store i64 1, ptr %46, align 8, !tbaa !31
  store ptr %37, ptr %44, align 8, !tbaa !15
  %47 = load ptr, ptr @stderr, align 8
  %48 = icmp eq ptr %47, %38
  br i1 %48, label %55, label %49

49:                                               ; preds = %42
  %50 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 2
  %51 = load ptr, ptr %50, align 8, !tbaa !53
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 4
  store ptr %38, ptr %54, align 8, !tbaa !54
  br label %55

55:                                               ; preds = %42, %49, %53
  %56 = add i32 %5, -1
  %57 = icmp ult i32 %56, 9
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = trunc i32 %5 to i8
  %60 = getelementptr inbounds %struct.rzip_control, ptr %21, i64 0, i32 20
  store i8 %59, ptr %60, align 8, !tbaa !26
  %61 = tail call zeroext i1 @lrzip_run(ptr noundef nonnull %18)
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = tail call i32 @fileno(ptr noundef nonnull %38) #23
  %64 = call i32 @fstat64(i32 noundef %63, ptr noundef nonnull %7) #23
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct.stat, ptr %7, i64 0, i32 8
  %68 = load i64, ptr %67, align 8, !tbaa !70
  store i64 %68, ptr %1, align 8, !tbaa !38
  %69 = tail call i64 @fread(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %68, ptr noundef nonnull %38)
  %70 = icmp eq i64 %69, %68
  br i1 %70, label %71, label %76, !prof !71

71:                                               ; preds = %66
  %72 = tail call i32 @ferror(ptr noundef nonnull %38) #23
  %73 = icmp eq i32 %72, 0
  br label %76

74:                                               ; preds = %36
  %75 = icmp eq ptr %37, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %55, %71, %58, %66, %62, %74
  %77 = phi i1 [ false, %74 ], [ false, %55 ], [ %73, %71 ], [ false, %58 ], [ false, %66 ], [ false, %62 ]
  %78 = tail call i32 @fclose(ptr noundef nonnull %37)
  br label %79

79:                                               ; preds = %76, %74
  %80 = phi i1 [ %77, %76 ], [ false, %74 ]
  %81 = icmp eq ptr %38, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %79
  %83 = tail call i32 @fclose(ptr noundef nonnull %38)
  br label %84

84:                                               ; preds = %6, %26, %17, %82, %79
  %85 = phi ptr [ %18, %82 ], [ %18, %79 ], [ null, %17 ], [ null, %26 ], [ null, %6 ]
  %86 = phi i1 [ %80, %82 ], [ %80, %79 ], [ false, %17 ], [ false, %26 ], [ false, %6 ]
  tail call void @lrzip_free(ptr noundef %85)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %7) #23
  ret i1 %86
}

; Function Attrs: nounwind
declare noalias ptr @fmemopen(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #21

; Function Attrs: nofree nounwind
declare noalias noundef ptr @tmpfile64() local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @lrzip_decompress(ptr noundef %0, ptr noundef writeonly %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
  %5 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #23
  %6 = icmp ne ptr %0, null
  %7 = icmp ne ptr %1, null
  %8 = and i1 %6, %7
  %9 = icmp ne ptr %2, null
  %10 = and i1 %8, %9
  %11 = icmp ne i64 %3, 0
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %75

13:                                               ; preds = %4
  tail call void @CrcGenerateTable() #23
  %14 = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #25
  %15 = icmp eq ptr %14, null
  br i1 %15, label %75, label %16

16:                                               ; preds = %13
  %17 = tail call noalias dereferenceable_or_null(864) ptr @calloc(i64 noundef 1, i64 noundef 864) #25
  %18 = getelementptr inbounds %struct.Lrzip, ptr %14, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !5
  %19 = icmp eq ptr %17, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = tail call zeroext i1 @initialise_control(ptr noundef nonnull %17) #23
  br i1 %21, label %23, label %22

22:                                               ; preds = %20, %16
  tail call void @lrzip_free(ptr noundef nonnull %14)
  br label %75

23:                                               ; preds = %20
  store i32 3, ptr %14, align 8, !tbaa !19
  %24 = getelementptr inbounds %struct.rzip_control, ptr %17, i64 0, i32 64
  store i8 1, ptr %24, align 8, !tbaa !20
  %25 = tail call ptr @getenv(ptr noundef nonnull @.str) #23
  %26 = icmp eq ptr %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) @.str.1) #24
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %23
  %31 = tail call zeroext i1 @read_config(ptr noundef nonnull %17) #23
  br label %32

32:                                               ; preds = %27, %30
  %33 = tail call noalias ptr @fmemopen(ptr noundef nonnull %2, i64 noundef %3, ptr noundef nonnull @.str.6) #23
  %34 = tail call noalias ptr @tmpfile64()
  %35 = icmp ne ptr %33, null
  %36 = icmp ne ptr %34, null
  %37 = and i1 %35, %36
  br i1 %37, label %38, label %65

38:                                               ; preds = %32
  %39 = getelementptr inbounds %struct.Lrzip, ptr %14, i64 0, i32 8
  %40 = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 11, i64 noundef 8) #25
  %41 = getelementptr inbounds %struct.Lrzip, ptr %14, i64 0, i32 6
  store ptr %40, ptr %41, align 8, !tbaa !18
  store i64 1, ptr %39, align 8, !tbaa !32
  %42 = getelementptr inbounds %struct.Lrzip, ptr %14, i64 0, i32 7
  store i64 1, ptr %42, align 8, !tbaa !31
  store ptr %33, ptr %40, align 8, !tbaa !15
  %43 = load ptr, ptr @stderr, align 8
  %44 = icmp eq ptr %43, %34
  br i1 %44, label %51, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.rzip_control, ptr %17, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !53
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = getelementptr inbounds %struct.rzip_control, ptr %17, i64 0, i32 4
  store ptr %34, ptr %50, align 8, !tbaa !54
  br label %51

51:                                               ; preds = %38, %45, %49
  %52 = tail call zeroext i1 @lrzip_run(ptr noundef nonnull %14)
  br i1 %52, label %53, label %67

53:                                               ; preds = %51
  %54 = tail call i32 @fileno(ptr noundef nonnull %34) #23
  %55 = call i32 @fstat64(i32 noundef %54, ptr noundef nonnull %5) #23
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %67

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.stat, ptr %5, i64 0, i32 8
  %59 = load i64, ptr %58, align 8, !tbaa !70
  store i64 %59, ptr %1, align 8, !tbaa !38
  %60 = tail call i64 @fread(ptr noundef nonnull %0, i64 noundef 1, i64 noundef %59, ptr noundef nonnull %34)
  %61 = icmp eq i64 %60, %59
  br i1 %61, label %62, label %67, !prof !71

62:                                               ; preds = %57
  %63 = tail call i32 @ferror(ptr noundef nonnull %34) #23
  %64 = icmp eq i32 %63, 0
  br label %67

65:                                               ; preds = %32
  %66 = icmp eq ptr %33, null
  br i1 %66, label %70, label %67

67:                                               ; preds = %62, %51, %57, %53, %65
  %68 = phi i1 [ false, %65 ], [ %64, %62 ], [ false, %51 ], [ false, %57 ], [ false, %53 ]
  %69 = tail call i32 @fclose(ptr noundef nonnull %33)
  br label %70

70:                                               ; preds = %67, %65
  %71 = phi i1 [ %68, %67 ], [ false, %65 ]
  %72 = icmp eq ptr %34, null
  br i1 %72, label %75, label %73

73:                                               ; preds = %70
  %74 = tail call i32 @fclose(ptr noundef nonnull %34)
  br label %75

75:                                               ; preds = %4, %22, %13, %73, %70
  %76 = phi ptr [ %14, %73 ], [ %14, %70 ], [ null, %13 ], [ null, %22 ], [ null, %4 ]
  %77 = phi i1 [ %71, %73 ], [ %71, %70 ], [ false, %13 ], [ false, %22 ], [ false, %4 ]
  tail call void @lrzip_free(ptr noundef %76)
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #23
  ret i1 %77
}

declare void @setup_overhead(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #14

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { nounwind allocsize(0,1) }
attributes #26 = { nounwind allocsize(1) }
attributes #27 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 16.0.0"}
!5 = !{!6, !10, i64 8}
!6 = !{!"Lrzip", !7, i64 0, !9, i64 4, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !11, i64 48, !11, i64 56}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!"int", !7, i64 0}
!10 = !{!"any pointer", !7, i64 0}
!11 = !{!"long", !7, i64 0}
!12 = !{!6, !11, i64 32}
!13 = !{!6, !11, i64 24}
!14 = !{!6, !10, i64 16}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!6, !10, i64 40}
!19 = !{!6, !7, i64 0}
!20 = !{!21, !7, i64 696}
!21 = !{!"rzip_control", !10, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !10, i64 32, !10, i64 40, !10, i64 48, !10, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !10, i64 104, !11, i64 112, !11, i64 120, !11, i64 128, !10, i64 136, !10, i64 144, !10, i64 152, !7, i64 160, !11, i64 168, !11, i64 176, !11, i64 184, !7, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !9, i64 240, !7, i64 244, !7, i64 245, !7, i64 246, !11, i64 248, !11, i64 256, !9, i64 264, !9, i64 268, !9, i64 272, !11, i64 280, !11, i64 288, !10, i64 296, !10, i64 304, !7, i64 312, !10, i64 320, !9, i64 328, !10, i64 336, !7, i64 344, !7, i64 384, !7, i64 385, !22, i64 386, !7, i64 392, !23, i64 424, !7, i64 580, !11, i64 600, !24, i64 608, !10, i64 632, !7, i64 640, !10, i64 648, !11, i64 656, !11, i64 664, !10, i64 672, !7, i64 680, !10, i64 688, !7, i64 696, !9, i64 700, !10, i64 704, !10, i64 712, !10, i64 720, !10, i64 728, !7, i64 736, !25, i64 744, !10, i64 832, !10, i64 840, !10, i64 848, !10, i64 856}
!22 = !{!"_Bool", !7, i64 0}
!23 = !{!"md5_ctx", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !7, i64 16, !9, i64 24, !7, i64 28}
!24 = !{!"checksum", !10, i64 0, !10, i64 8, !11, i64 16}
!25 = !{!"sliding_buffer", !10, i64 0, !10, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !9, i64 80}
!26 = !{!21, !7, i64 160}
!27 = !{!6, !9, i64 4}
!28 = !{!21, !7, i64 244}
!29 = !{!21, !9, i64 240}
!30 = !{!21, !11, i64 200}
!31 = !{!6, !11, i64 48}
!32 = !{!6, !11, i64 56}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17, !35, !36}
!35 = !{!"llvm.loop.isvectorized", i32 1}
!36 = !{!"llvm.loop.unroll.runtime.disable"}
!37 = distinct !{!37, !17, !36, !35}
!38 = !{!11, !11, i64 0}
!39 = distinct !{!39, !17, !35, !36}
!40 = distinct !{!40, !17, !36, !35}
!41 = !{!7, !7, i64 0}
!42 = !{!43, !9, i64 24}
!43 = !{!"stat", !11, i64 0, !11, i64 8, !11, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !44, i64 72, !44, i64 88, !44, i64 104, !7, i64 120}
!44 = !{!"timespec", !11, i64 0, !11, i64 8}
!45 = distinct !{!45, !17}
!46 = distinct !{!46, !17, !35, !36}
!47 = distinct !{!47, !17, !36, !35}
!48 = distinct !{!48, !17, !35, !36}
!49 = distinct !{!49, !17, !36, !35}
!50 = distinct !{!50, !17}
!51 = !{!21, !10, i64 152}
!52 = !{!21, !10, i64 40}
!53 = !{!21, !10, i64 16}
!54 = !{!21, !10, i64 32}
!55 = !{!21, !11, i64 208}
!56 = !{!21, !9, i64 700}
!57 = !{!21, !10, i64 136}
!58 = !{!21, !10, i64 0}
!59 = !{!21, !10, i64 8}
!60 = !{!21, !10, i64 296}
!61 = !{!62, !11, i64 8}
!62 = !{!"timeval", !11, i64 0, !11, i64 8}
!63 = !{!62, !11, i64 0}
!64 = !{!21, !10, i64 720}
!65 = !{!21, !10, i64 728}
!66 = !{!21, !10, i64 144}
!67 = !{!21, !10, i64 304}
!68 = !{!21, !10, i64 704}
!69 = !{!21, !10, i64 712}
!70 = !{!43, !11, i64 48}
!71 = !{!"branch_weights", i32 2000, i32 1}
