; ModuleID = '/home/raj/lwan/common/lwan-job.c'
source_filename = "/home/raj/lwan/common/lwan-job.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_node }
%struct.list_node = type { ptr, ptr }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.timespec = type { i64, i64 }
%struct.sched_param = type { i32 }
%struct.job_t = type { %struct.list_node, ptr, ptr }

@running = internal global i8 0, align 1, !dbg !0
@.str = private unnamed_addr constant [9 x i8] c"!running\00", align 1, !dbg !15
@.str.1 = private unnamed_addr constant [33 x i8] c"/home/raj/lwan/common/lwan-job.c\00", align 1, !dbg !21
@__PRETTY_FUNCTION__.lwan_job_thread_init = private unnamed_addr constant [32 x i8] c"void lwan_job_thread_init(void)\00", align 1, !dbg !26
@__FUNCTION__.lwan_job_thread_init = private unnamed_addr constant [21 x i8] c"lwan_job_thread_init\00", align 1, !dbg !32
@.str.2 = private unnamed_addr constant [37 x i8] c"Initializing low priority job thread\00", align 1, !dbg !37
@jobs = internal global %struct.list_head zeroinitializer, align 8, !dbg !95
@self = internal global i64 0, align 8, !dbg !90
@.str.3 = private unnamed_addr constant [15 x i8] c"pthread_create\00", align 1, !dbg !42
@.str.4 = private unnamed_addr constant [22 x i8] c"pthread_setschedparam\00", align 1, !dbg !47
@__FUNCTION__.lwan_job_thread_shutdown = private unnamed_addr constant [25 x i8] c"lwan_job_thread_shutdown\00", align 1, !dbg !52
@.str.5 = private unnamed_addr constant [25 x i8] c"Shutting down job thread\00", align 1, !dbg !57
@queue_mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !100
@.str.6 = private unnamed_addr constant [13 x i8] c"pthread_join\00", align 1, !dbg !60
@.str.7 = private unnamed_addr constant [3 x i8] c"cb\00", align 1, !dbg !65
@__PRETTY_FUNCTION__.lwan_job_add = private unnamed_addr constant [45 x i8] c"void lwan_job_add(_Bool (*)(void *), void *)\00", align 1, !dbg !70
@__FUNCTION__.lwan_job_add = private unnamed_addr constant [13 x i8] c"lwan_job_add\00", align 1, !dbg !75
@.str.8 = private unnamed_addr constant [7 x i8] c"calloc\00", align 1, !dbg !78
@.str.9 = private unnamed_addr constant [24 x i8] c"Couldn't lock job mutex\00", align 1, !dbg !83
@__PRETTY_FUNCTION__.lwan_job_del = private unnamed_addr constant [45 x i8] c"void lwan_job_del(_Bool (*)(void *), void *)\00", align 1, !dbg !88
@__const.job_thread.rgtp = private unnamed_addr constant %struct.timespec { i64 1, i64 0 }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_job_thread_init() #0 !dbg !142 {
  %1 = alloca %struct.sched_param, align 4
  %2 = load i8, ptr @running, align 1, !dbg !146
  %3 = trunc i8 %2 to i1, !dbg !146
  br i1 %3, label %5, label %4, !dbg !149

4:                                                ; preds = %0
  br label %6, !dbg !149

5:                                                ; preds = %0
  call void @__assert_fail(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 77, ptr noundef @__PRETTY_FUNCTION__.lwan_job_thread_init) #10, !dbg !146
  unreachable, !dbg !146

6:                                                ; preds = %4
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.1, i32 noundef 79, ptr noundef @__FUNCTION__.lwan_job_thread_init, ptr noundef @.str.2), !dbg !150
  call void @list_head_init(ptr noundef @jobs), !dbg !151
  store i8 1, ptr @running, align 1, !dbg !152
  %7 = call i32 @pthread_create(ptr noundef @self, ptr noundef null, ptr noundef @job_thread, ptr noundef null) #11, !dbg !153
  %8 = icmp slt i32 %7, 0, !dbg !155
  br i1 %8, label %9, label %10, !dbg !156

9:                                                ; preds = %6
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.1, i32 noundef 85, ptr noundef @__FUNCTION__.lwan_job_thread_init, ptr noundef @.str.3) #12, !dbg !157
  unreachable, !dbg !157

10:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %1, metadata !158, metadata !DIExpression()), !dbg !163
  call void @llvm.memset.p0.i64(ptr align 4 %1, i8 0, i64 4, i1 false), !dbg !163
  %11 = load i64, ptr @self, align 8, !dbg !164
  %12 = call i32 @pthread_setschedparam(i64 noundef %11, i32 noundef 5, ptr noundef %1) #11, !dbg !166
  %13 = icmp slt i32 %12, 0, !dbg !167
  br i1 %13, label %14, label %15, !dbg !168

14:                                               ; preds = %10
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str.1, i32 noundef 92, ptr noundef @__FUNCTION__.lwan_job_thread_init, ptr noundef @.str.4), !dbg !169
  br label %15, !dbg !169

15:                                               ; preds = %14, %10
  ret void, !dbg !170
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #1

declare void @lwan_status_debug_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_head_init(ptr noundef %0) #0 !dbg !171 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !175, metadata !DIExpression()), !dbg !176
  %3 = load ptr, ptr %2, align 8, !dbg !177
  %4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !178
  %5 = load ptr, ptr %2, align 8, !dbg !179
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !180
  %7 = getelementptr inbounds %struct.list_node, ptr %6, i32 0, i32 1, !dbg !181
  store ptr %4, ptr %7, align 8, !dbg !182
  %8 = load ptr, ptr %2, align 8, !dbg !183
  %9 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 0, !dbg !184
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 0, !dbg !185
  store ptr %4, ptr %10, align 8, !dbg !186
  ret void, !dbg !187
}

; Function Attrs: nounwind
declare i32 @pthread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @job_thread(ptr noundef %0) #0 !dbg !188 {
  %2 = alloca ptr, align 8
  %3 = alloca %struct.timespec, align 8
  %4 = alloca i8, align 1
  %5 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !191, metadata !DIExpression()), !dbg !192
  call void @llvm.dbg.declare(metadata ptr %3, metadata !193, metadata !DIExpression()), !dbg !202
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %3, ptr align 8 @__const.job_thread.rgtp, i64 16, i1 false), !dbg !202
  br label %6, !dbg !203

6:                                                ; preds = %75, %1
  %7 = load i8, ptr @running, align 1, !dbg !204
  %8 = trunc i8 %7 to i1, !dbg !204
  br i1 %8, label %9, label %76, !dbg !203

9:                                                ; preds = %6
  call void @llvm.dbg.declare(metadata ptr %4, metadata !205, metadata !DIExpression()), !dbg !207
  store i8 0, ptr %4, align 1, !dbg !207
  %10 = call i32 @pthread_mutex_lock(ptr noundef @queue_mutex) #11, !dbg !208
  %11 = icmp ne i32 %10, 0, !dbg !208
  %12 = xor i1 %11, true, !dbg !208
  %13 = xor i1 %12, true, !dbg !208
  %14 = xor i1 %13, true, !dbg !208
  %15 = zext i1 %14 to i32, !dbg !208
  %16 = sext i32 %15 to i64, !dbg !208
  %17 = icmp ne i64 %16, 0, !dbg !208
  br i1 %17, label %18, label %48, !dbg !210

18:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata ptr %5, metadata !211, metadata !DIExpression()), !dbg !222
  %19 = load ptr, ptr @jobs, align 8, !dbg !223
  %20 = call ptr @list_node_to_off_(ptr noundef %19, i64 noundef 0), !dbg !223
  store ptr %20, ptr %5, align 8, !dbg !223
  br label %21, !dbg !223

21:                                               ; preds = %40, %18
  %22 = load ptr, ptr %5, align 8, !dbg !225
  %23 = call ptr @list_node_from_off_(ptr noundef %22, i64 noundef 0), !dbg !225
  %24 = icmp ne ptr %23, @jobs, !dbg !225
  br i1 %24, label %25, label %46, !dbg !223

25:                                               ; preds = %21
  %26 = load ptr, ptr %5, align 8, !dbg !227
  %27 = getelementptr inbounds %struct.job_t, ptr %26, i32 0, i32 1, !dbg !228
  %28 = load ptr, ptr %27, align 8, !dbg !228
  %29 = load ptr, ptr %5, align 8, !dbg !229
  %30 = getelementptr inbounds %struct.job_t, ptr %29, i32 0, i32 2, !dbg !230
  %31 = load ptr, ptr %30, align 8, !dbg !230
  %32 = call zeroext i1 %28(ptr noundef %31), !dbg !227
  %33 = zext i1 %32 to i32, !dbg !227
  %34 = load i8, ptr %4, align 1, !dbg !231
  %35 = trunc i8 %34 to i1, !dbg !231
  %36 = zext i1 %35 to i32, !dbg !231
  %37 = or i32 %36, %33, !dbg !231
  %38 = icmp ne i32 %37, 0, !dbg !231
  %39 = zext i1 %38 to i8, !dbg !231
  store i8 %39, ptr %4, align 1, !dbg !231
  br label %40, !dbg !232

40:                                               ; preds = %25
  %41 = load ptr, ptr %5, align 8, !dbg !225
  %42 = call ptr @list_node_from_off_(ptr noundef %41, i64 noundef 0), !dbg !225
  %43 = getelementptr inbounds %struct.list_node, ptr %42, i32 0, i32 0, !dbg !225
  %44 = load ptr, ptr %43, align 8, !dbg !225
  %45 = call ptr @list_node_to_off_(ptr noundef %44, i64 noundef 0), !dbg !225
  store ptr %45, ptr %5, align 8, !dbg !225
  br label %21, !dbg !225, !llvm.loop !233

46:                                               ; preds = %21
  %47 = call i32 @pthread_mutex_unlock(ptr noundef @queue_mutex) #11, !dbg !236
  br label %48, !dbg !237

48:                                               ; preds = %46, %9
  %49 = load i8, ptr %4, align 1, !dbg !238
  %50 = trunc i8 %49 to i1, !dbg !238
  br i1 %50, label %51, label %53, !dbg !240

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0, !dbg !241
  store i64 1, ptr %52, align 8, !dbg !242
  br label %62, !dbg !243

53:                                               ; preds = %48
  %54 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0, !dbg !244
  %55 = load i64, ptr %54, align 8, !dbg !244
  %56 = icmp sle i64 %55, 15, !dbg !246
  br i1 %56, label %57, label %61, !dbg !247

57:                                               ; preds = %53
  %58 = getelementptr inbounds %struct.timespec, ptr %3, i32 0, i32 0, !dbg !248
  %59 = load i64, ptr %58, align 8, !dbg !249
  %60 = add nsw i64 %59, 1, !dbg !249
  store i64 %60, ptr %58, align 8, !dbg !249
  br label %61, !dbg !250

61:                                               ; preds = %57, %53
  br label %62

62:                                               ; preds = %61, %51
  %63 = call i32 @nanosleep(ptr noundef %3, ptr noundef null), !dbg !251
  %64 = icmp slt i32 %63, 0, !dbg !251
  %65 = zext i1 %64 to i32, !dbg !251
  %66 = sext i32 %65 to i64, !dbg !251
  %67 = icmp ne i64 %66, 0, !dbg !251
  br i1 %67, label %68, label %75, !dbg !253

68:                                               ; preds = %62
  %69 = call ptr @__errno_location() #13, !dbg !254
  %70 = load i32, ptr %69, align 4, !dbg !254
  %71 = icmp eq i32 %70, 4, !dbg !257
  br i1 %71, label %72, label %74, !dbg !258

72:                                               ; preds = %68
  %73 = call i32 @sleep(i32 noundef 1), !dbg !259
  br label %74, !dbg !259

74:                                               ; preds = %72, %68
  br label %75, !dbg !260

75:                                               ; preds = %74, %62
  br label %6, !dbg !203, !llvm.loop !261

76:                                               ; preds = %6
  ret ptr null, !dbg !263
}

; Function Attrs: noreturn
declare void @lwan_status_critical_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #5

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare i32 @pthread_setschedparam(i64 noundef, i32 noundef, ptr noundef) #3

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_job_thread_shutdown() #0 !dbg !264 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_debug_debug(ptr noundef @.str.1, i32 noundef 98, ptr noundef @__FUNCTION__.lwan_job_thread_shutdown, ptr noundef @.str.5), !dbg !265
  %3 = call i32 @pthread_mutex_lock(ptr noundef @queue_mutex) #11, !dbg !266
  %4 = icmp ne i32 %3, 0, !dbg !266
  %5 = xor i1 %4, true, !dbg !266
  %6 = xor i1 %5, true, !dbg !266
  %7 = xor i1 %6, true, !dbg !266
  %8 = zext i1 %7 to i32, !dbg !266
  %9 = sext i32 %8 to i64, !dbg !266
  %10 = icmp ne i64 %9, 0, !dbg !266
  br i1 %10, label %11, label %41, !dbg !268

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata ptr %1, metadata !269, metadata !DIExpression()), !dbg !271
  call void @llvm.dbg.declare(metadata ptr %2, metadata !272, metadata !DIExpression()), !dbg !273
  %12 = load ptr, ptr @jobs, align 8, !dbg !274
  %13 = call ptr @list_node_to_off_(ptr noundef %12, i64 noundef 0), !dbg !274
  store ptr %13, ptr %1, align 8, !dbg !274
  %14 = load ptr, ptr %1, align 8, !dbg !274
  %15 = call ptr @list_node_from_off_(ptr noundef %14, i64 noundef 0), !dbg !274
  %16 = getelementptr inbounds %struct.list_node, ptr %15, i32 0, i32 0, !dbg !274
  %17 = load ptr, ptr %16, align 8, !dbg !274
  %18 = call ptr @list_node_to_off_(ptr noundef %17, i64 noundef 0), !dbg !274
  store ptr %18, ptr %2, align 8, !dbg !274
  br label %19, !dbg !274

19:                                               ; preds = %27, %11
  %20 = load ptr, ptr %1, align 8, !dbg !276
  %21 = call ptr @list_node_from_off_(ptr noundef %20, i64 noundef 0), !dbg !276
  %22 = icmp ne ptr %21, @jobs, !dbg !276
  br i1 %22, label %23, label %34, !dbg !274

23:                                               ; preds = %19
  %24 = load ptr, ptr %1, align 8, !dbg !278
  %25 = getelementptr inbounds %struct.job_t, ptr %24, i32 0, i32 0, !dbg !280
  call void @list_del(ptr noundef %25), !dbg !281
  %26 = load ptr, ptr %1, align 8, !dbg !282
  call void @free(ptr noundef %26) #11, !dbg !283
  br label %27, !dbg !284

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8, !dbg !276
  store ptr %28, ptr %1, align 8, !dbg !276
  %29 = load ptr, ptr %1, align 8, !dbg !276
  %30 = call ptr @list_node_from_off_(ptr noundef %29, i64 noundef 0), !dbg !276
  %31 = getelementptr inbounds %struct.list_node, ptr %30, i32 0, i32 0, !dbg !276
  %32 = load ptr, ptr %31, align 8, !dbg !276
  %33 = call ptr @list_node_to_off_(ptr noundef %32, i64 noundef 0), !dbg !276
  store ptr %33, ptr %2, align 8, !dbg !276
  br label %19, !dbg !276, !llvm.loop !285

34:                                               ; preds = %19
  store i8 0, ptr @running, align 1, !dbg !287
  %35 = load i64, ptr @self, align 8, !dbg !288
  %36 = call i32 @pthread_tryjoin_np(i64 noundef %35, ptr noundef null) #11, !dbg !290
  %37 = icmp slt i32 %36, 0, !dbg !291
  br i1 %37, label %38, label %39, !dbg !292

38:                                               ; preds = %34
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.1, i32 noundef 108, ptr noundef @__FUNCTION__.lwan_job_thread_shutdown, ptr noundef @.str.6) #12, !dbg !293
  unreachable, !dbg !293

39:                                               ; preds = %34
  %40 = call i32 @pthread_mutex_unlock(ptr noundef @queue_mutex) #11, !dbg !294
  br label %41, !dbg !295

41:                                               ; preds = %39, %0
  ret void, !dbg !296
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_to_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !297 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !302, metadata !DIExpression()), !dbg !303
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !304, metadata !DIExpression()), !dbg !305
  %5 = load ptr, ptr %3, align 8, !dbg !306
  %6 = load i64, ptr %4, align 8, !dbg !307
  %7 = sub i64 0, %6, !dbg !308
  %8 = getelementptr inbounds i8, ptr %5, i64 %7, !dbg !308
  ret ptr %8, !dbg !309
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @list_node_from_off_(ptr noundef %0, i64 noundef %1) #0 !dbg !310 {
  %3 = alloca ptr, align 8
  %4 = alloca i64, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !313, metadata !DIExpression()), !dbg !314
  store i64 %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !315, metadata !DIExpression()), !dbg !316
  %5 = load ptr, ptr %3, align 8, !dbg !317
  %6 = load i64, ptr %4, align 8, !dbg !318
  %7 = getelementptr inbounds i8, ptr %5, i64 %6, !dbg !319
  ret ptr %7, !dbg !320
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_del(ptr noundef %0) #0 !dbg !321 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !324, metadata !DIExpression()), !dbg !325
  %3 = load ptr, ptr %2, align 8, !dbg !326
  %4 = load ptr, ptr %2, align 8, !dbg !327
  %5 = getelementptr inbounds %struct.list_node, ptr %4, i32 0, i32 1, !dbg !328
  %6 = load ptr, ptr %5, align 8, !dbg !328
  %7 = load ptr, ptr %2, align 8, !dbg !329
  %8 = getelementptr inbounds %struct.list_node, ptr %7, i32 0, i32 0, !dbg !330
  %9 = load ptr, ptr %8, align 8, !dbg !330
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 1, !dbg !331
  store ptr %6, ptr %10, align 8, !dbg !332
  %11 = load ptr, ptr %2, align 8, !dbg !333
  %12 = getelementptr inbounds %struct.list_node, ptr %11, i32 0, i32 0, !dbg !334
  %13 = load ptr, ptr %12, align 8, !dbg !334
  %14 = load ptr, ptr %2, align 8, !dbg !335
  %15 = getelementptr inbounds %struct.list_node, ptr %14, i32 0, i32 1, !dbg !336
  %16 = load ptr, ptr %15, align 8, !dbg !336
  %17 = getelementptr inbounds %struct.list_node, ptr %16, i32 0, i32 0, !dbg !337
  store ptr %13, ptr %17, align 8, !dbg !338
  ret void, !dbg !339
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_tryjoin_np(i64 noundef, ptr noundef) #3

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_job_add(ptr noundef %0, ptr noundef %1) #0 !dbg !340 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !343, metadata !DIExpression()), !dbg !344
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !345, metadata !DIExpression()), !dbg !346
  %6 = load ptr, ptr %3, align 8, !dbg !347
  %7 = icmp ne ptr %6, null, !dbg !347
  br i1 %7, label %8, label %9, !dbg !350

8:                                                ; preds = %2
  br label %10, !dbg !350

9:                                                ; preds = %2
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 115, ptr noundef @__PRETTY_FUNCTION__.lwan_job_add) #10, !dbg !347
  unreachable, !dbg !347

10:                                               ; preds = %8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !351, metadata !DIExpression()), !dbg !352
  %11 = call noalias ptr @calloc(i64 noundef 1, i64 noundef 32) #14, !dbg !353
  store ptr %11, ptr %5, align 8, !dbg !352
  %12 = load ptr, ptr %5, align 8, !dbg !354
  %13 = icmp ne ptr %12, null, !dbg !354
  br i1 %13, label %15, label %14, !dbg !356

14:                                               ; preds = %10
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_critical_perror_debug(ptr noundef @.str.1, i32 noundef 119, ptr noundef @__FUNCTION__.lwan_job_add, ptr noundef @.str.8) #12, !dbg !357
  unreachable, !dbg !357

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !dbg !358
  %17 = load ptr, ptr %5, align 8, !dbg !359
  %18 = getelementptr inbounds %struct.job_t, ptr %17, i32 0, i32 1, !dbg !360
  store ptr %16, ptr %18, align 8, !dbg !361
  %19 = load ptr, ptr %4, align 8, !dbg !362
  %20 = load ptr, ptr %5, align 8, !dbg !363
  %21 = getelementptr inbounds %struct.job_t, ptr %20, i32 0, i32 2, !dbg !364
  store ptr %19, ptr %21, align 8, !dbg !365
  %22 = call i32 @pthread_mutex_lock(ptr noundef @queue_mutex) #11, !dbg !366
  %23 = icmp ne i32 %22, 0, !dbg !366
  %24 = xor i1 %23, true, !dbg !366
  %25 = xor i1 %24, true, !dbg !366
  %26 = xor i1 %25, true, !dbg !366
  %27 = zext i1 %26 to i32, !dbg !366
  %28 = sext i32 %27 to i64, !dbg !366
  %29 = icmp ne i64 %28, 0, !dbg !366
  br i1 %29, label %30, label %34, !dbg !368

30:                                               ; preds = %15
  %31 = load ptr, ptr %5, align 8, !dbg !369
  %32 = getelementptr inbounds %struct.job_t, ptr %31, i32 0, i32 0, !dbg !371
  call void @list_add(ptr noundef @jobs, ptr noundef %32), !dbg !372
  %33 = call i32 @pthread_mutex_unlock(ptr noundef @queue_mutex) #11, !dbg !373
  br label %36, !dbg !374

34:                                               ; preds = %15
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_warning_debug(ptr noundef @.str.1, i32 noundef 128, ptr noundef @__FUNCTION__.lwan_job_add, ptr noundef @.str.9), !dbg !375
  %35 = load ptr, ptr %5, align 8, !dbg !377
  call void @free(ptr noundef %35) #11, !dbg !378
  br label %36

36:                                               ; preds = %34, %30
  ret void, !dbg !379
}

; Function Attrs: nounwind allocsize(0,1)
declare noalias ptr @calloc(i64 noundef, i64 noundef) #7

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_add(ptr noundef %0, ptr noundef %1) #0 !dbg !380 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !385, metadata !DIExpression()), !dbg !386
  %5 = load ptr, ptr %3, align 8, !dbg !387
  %6 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 0, !dbg !388
  %7 = getelementptr inbounds %struct.list_node, ptr %6, i32 0, i32 0, !dbg !389
  %8 = load ptr, ptr %7, align 8, !dbg !389
  %9 = load ptr, ptr %4, align 8, !dbg !390
  %10 = getelementptr inbounds %struct.list_node, ptr %9, i32 0, i32 0, !dbg !391
  store ptr %8, ptr %10, align 8, !dbg !392
  %11 = load ptr, ptr %3, align 8, !dbg !393
  %12 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 0, !dbg !394
  %13 = load ptr, ptr %4, align 8, !dbg !395
  %14 = getelementptr inbounds %struct.list_node, ptr %13, i32 0, i32 1, !dbg !396
  store ptr %12, ptr %14, align 8, !dbg !397
  %15 = load ptr, ptr %4, align 8, !dbg !398
  %16 = load ptr, ptr %3, align 8, !dbg !399
  %17 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !400
  %18 = getelementptr inbounds %struct.list_node, ptr %17, i32 0, i32 0, !dbg !401
  %19 = load ptr, ptr %18, align 8, !dbg !401
  %20 = getelementptr inbounds %struct.list_node, ptr %19, i32 0, i32 1, !dbg !402
  store ptr %15, ptr %20, align 8, !dbg !403
  %21 = load ptr, ptr %4, align 8, !dbg !404
  %22 = load ptr, ptr %3, align 8, !dbg !405
  %23 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 0, !dbg !406
  %24 = getelementptr inbounds %struct.list_node, ptr %23, i32 0, i32 0, !dbg !407
  store ptr %21, ptr %24, align 8, !dbg !408
  %25 = load ptr, ptr %3, align 8, !dbg !409
  ret void, !dbg !410
}

declare void @lwan_status_warning_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_job_del(ptr noundef %0, ptr noundef %1) #0 !dbg !411 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !412, metadata !DIExpression()), !dbg !413
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !414, metadata !DIExpression()), !dbg !415
  call void @llvm.dbg.declare(metadata ptr %5, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata ptr %6, metadata !418, metadata !DIExpression()), !dbg !419
  %7 = load ptr, ptr %3, align 8, !dbg !420
  %8 = icmp ne ptr %7, null, !dbg !420
  br i1 %8, label %9, label %10, !dbg !423

9:                                                ; preds = %2
  br label %11, !dbg !423

10:                                               ; preds = %2
  call void @__assert_fail(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 137, ptr noundef @__PRETTY_FUNCTION__.lwan_job_del) #10, !dbg !420
  unreachable, !dbg !420

11:                                               ; preds = %9
  %12 = call i32 @pthread_mutex_lock(ptr noundef @queue_mutex) #11, !dbg !424
  %13 = icmp ne i32 %12, 0, !dbg !424
  %14 = xor i1 %13, true, !dbg !424
  %15 = xor i1 %14, true, !dbg !424
  %16 = xor i1 %15, true, !dbg !424
  %17 = zext i1 %16 to i32, !dbg !424
  %18 = sext i32 %17 to i64, !dbg !424
  %19 = icmp ne i64 %18, 0, !dbg !424
  br i1 %19, label %20, label %58, !dbg !426

20:                                               ; preds = %11
  %21 = load ptr, ptr @jobs, align 8, !dbg !427
  %22 = call ptr @list_node_to_off_(ptr noundef %21, i64 noundef 0), !dbg !427
  store ptr %22, ptr %5, align 8, !dbg !427
  %23 = load ptr, ptr %5, align 8, !dbg !427
  %24 = call ptr @list_node_from_off_(ptr noundef %23, i64 noundef 0), !dbg !427
  %25 = getelementptr inbounds %struct.list_node, ptr %24, i32 0, i32 0, !dbg !427
  %26 = load ptr, ptr %25, align 8, !dbg !427
  %27 = call ptr @list_node_to_off_(ptr noundef %26, i64 noundef 0), !dbg !427
  store ptr %27, ptr %6, align 8, !dbg !427
  br label %28, !dbg !427

28:                                               ; preds = %49, %20
  %29 = load ptr, ptr %5, align 8, !dbg !430
  %30 = call ptr @list_node_from_off_(ptr noundef %29, i64 noundef 0), !dbg !430
  %31 = icmp ne ptr %30, @jobs, !dbg !430
  br i1 %31, label %32, label %56, !dbg !427

32:                                               ; preds = %28
  %33 = load ptr, ptr %3, align 8, !dbg !432
  %34 = load ptr, ptr %5, align 8, !dbg !435
  %35 = getelementptr inbounds %struct.job_t, ptr %34, i32 0, i32 1, !dbg !436
  %36 = load ptr, ptr %35, align 8, !dbg !436
  %37 = icmp eq ptr %33, %36, !dbg !437
  br i1 %37, label %38, label %48, !dbg !438

38:                                               ; preds = %32
  %39 = load ptr, ptr %4, align 8, !dbg !439
  %40 = load ptr, ptr %5, align 8, !dbg !440
  %41 = getelementptr inbounds %struct.job_t, ptr %40, i32 0, i32 2, !dbg !441
  %42 = load ptr, ptr %41, align 8, !dbg !441
  %43 = icmp eq ptr %39, %42, !dbg !442
  br i1 %43, label %44, label %48, !dbg !443

44:                                               ; preds = %38
  %45 = load ptr, ptr %5, align 8, !dbg !444
  %46 = getelementptr inbounds %struct.job_t, ptr %45, i32 0, i32 0, !dbg !446
  call void @list_del(ptr noundef %46), !dbg !447
  %47 = load ptr, ptr %5, align 8, !dbg !448
  call void @free(ptr noundef %47) #11, !dbg !449
  br label %48, !dbg !450

48:                                               ; preds = %44, %38, %32
  br label %49, !dbg !451

49:                                               ; preds = %48
  %50 = load ptr, ptr %6, align 8, !dbg !430
  store ptr %50, ptr %5, align 8, !dbg !430
  %51 = load ptr, ptr %5, align 8, !dbg !430
  %52 = call ptr @list_node_from_off_(ptr noundef %51, i64 noundef 0), !dbg !430
  %53 = getelementptr inbounds %struct.list_node, ptr %52, i32 0, i32 0, !dbg !430
  %54 = load ptr, ptr %53, align 8, !dbg !430
  %55 = call ptr @list_node_to_off_(ptr noundef %54, i64 noundef 0), !dbg !430
  store ptr %55, ptr %6, align 8, !dbg !430
  br label %28, !dbg !430, !llvm.loop !452

56:                                               ; preds = %28
  %57 = call i32 @pthread_mutex_unlock(ptr noundef @queue_mutex) #11, !dbg !454
  br label %58, !dbg !455

58:                                               ; preds = %56, %11
  ret void, !dbg !456
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare i32 @nanosleep(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #9

declare i32 @sleep(i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind allocsize(0,1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { nounwind willreturn memory(none) }
attributes #14 = { nounwind allocsize(0,1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "running", scope: !2, file: !17, line: 41, type: !133, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !14, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/lwan-job.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "37f1591a76c3166f23ef5ae3b94f9151")
!4 = !{!5, !6, !12}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_node", file: !8, line: 191, size: 128, elements: !9)
!8 = !DIFile(filename: "common/list.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "c0dffb77b1bbbbb179ef8d69b9e1dd8c")
!9 = !{!10, !11}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !8, line: 193, baseType: !6, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !8, line: 193, baseType: !6, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !21, !26, !32, !37, !42, !47, !52, !57, !60, !65, !70, !75, !78, !83, !88, !90, !95, !0, !100}
!15 = !DIGlobalVariableExpression(var: !16, expr: !DIExpression())
!16 = distinct !DIGlobalVariable(scope: null, file: !17, line: 77, type: !18, isLocal: true, isDefinition: true)
!17 = !DIFile(filename: "common/lwan-job.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "37f1591a76c3166f23ef5ae3b94f9151")
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 72, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 9)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !17, line: 77, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 264, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 33)
!26 = !DIGlobalVariableExpression(var: !27, expr: !DIExpression())
!27 = distinct !DIGlobalVariable(scope: null, file: !17, line: 77, type: !28, isLocal: true, isDefinition: true)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 256, elements: !30)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!30 = !{!31}
!31 = !DISubrange(count: 32)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !17, line: 79, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 168, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 21)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !17, line: 79, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 296, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 37)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !17, line: 85, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 120, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 15)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !17, line: 92, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 176, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 22)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(scope: null, file: !17, line: 98, type: !54, isLocal: true, isDefinition: true)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 200, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 25)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(scope: null, file: !17, line: 98, type: !59, isLocal: true, isDefinition: true)
!59 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 200, elements: !55)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !17, line: 108, type: !62, isLocal: true, isDefinition: true)
!62 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 104, elements: !63)
!63 = !{!64}
!64 = !DISubrange(count: 13)
!65 = !DIGlobalVariableExpression(var: !66, expr: !DIExpression())
!66 = distinct !DIGlobalVariable(scope: null, file: !17, line: 115, type: !67, isLocal: true, isDefinition: true)
!67 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 24, elements: !68)
!68 = !{!69}
!69 = !DISubrange(count: 3)
!70 = !DIGlobalVariableExpression(var: !71, expr: !DIExpression())
!71 = distinct !DIGlobalVariable(scope: null, file: !17, line: 115, type: !72, isLocal: true, isDefinition: true)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 360, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 45)
!75 = !DIGlobalVariableExpression(var: !76, expr: !DIExpression())
!76 = distinct !DIGlobalVariable(scope: null, file: !17, line: 119, type: !77, isLocal: true, isDefinition: true)
!77 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 104, elements: !63)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !17, line: 119, type: !80, isLocal: true, isDefinition: true)
!80 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 56, elements: !81)
!81 = !{!82}
!82 = !DISubrange(count: 7)
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(scope: null, file: !17, line: 128, type: !85, isLocal: true, isDefinition: true)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 192, elements: !86)
!86 = !{!87}
!87 = !DISubrange(count: 24)
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(scope: null, file: !17, line: 137, type: !72, isLocal: true, isDefinition: true)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "self", scope: !2, file: !17, line: 39, type: !92, isLocal: true, isDefinition: true)
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !93, line: 27, baseType: !94)
!93 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!94 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "jobs", scope: !2, file: !17, line: 42, type: !97, isLocal: true, isDefinition: true)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !8, line: 208, size: 128, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "n", scope: !97, file: !8, line: 210, baseType: !7, size: 128)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "queue_mutex", scope: !2, file: !17, line: 40, type: !102, isLocal: true, isDefinition: true)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !93, line: 72, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !93, line: 67, size: 320, elements: !104)
!104 = !{!105, !127, !131}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !103, file: !93, line: 69, baseType: !106, size: 320)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !107, line: 22, size: 320, elements: !108)
!107 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!108 = !{!109, !111, !113, !114, !115, !116, !118, !119}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !106, file: !107, line: 24, baseType: !110, size: 32)
!110 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !106, file: !107, line: 25, baseType: !112, size: 32, offset: 32)
!112 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !106, file: !107, line: 26, baseType: !110, size: 32, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !106, file: !107, line: 28, baseType: !112, size: 32, offset: 96)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !106, file: !107, line: 32, baseType: !110, size: 32, offset: 128)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !106, file: !107, line: 34, baseType: !117, size: 16, offset: 160)
!117 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !106, file: !107, line: 35, baseType: !117, size: 16, offset: 176)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !106, file: !107, line: 36, baseType: !120, size: 128, offset: 192)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !121, line: 55, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !121, line: 51, size: 128, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !122, file: !121, line: 53, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !122, file: !121, line: 54, baseType: !125, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !103, file: !93, line: 70, baseType: !128, size: 320)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 320, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 40)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !103, file: !93, line: 71, baseType: !132, size: 64)
!132 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!133 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!134 = !{i32 7, !"Dwarf Version", i32 5}
!135 = !{i32 2, !"Debug Info Version", i32 3}
!136 = !{i32 1, !"wchar_size", i32 4}
!137 = !{i32 8, !"PIC Level", i32 2}
!138 = !{i32 7, !"PIE Level", i32 2}
!139 = !{i32 7, !"uwtable", i32 2}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 16.0.0"}
!142 = distinct !DISubprogram(name: "lwan_job_thread_init", scope: !17, file: !17, line: 75, type: !143, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!143 = !DISubroutineType(types: !144)
!144 = !{null}
!145 = !{}
!146 = !DILocation(line: 77, column: 5, scope: !147)
!147 = distinct !DILexicalBlock(scope: !148, file: !17, line: 77, column: 5)
!148 = distinct !DILexicalBlock(scope: !142, file: !17, line: 77, column: 5)
!149 = !DILocation(line: 77, column: 5, scope: !148)
!150 = !DILocation(line: 79, column: 5, scope: !142)
!151 = !DILocation(line: 81, column: 5, scope: !142)
!152 = !DILocation(line: 83, column: 13, scope: !142)
!153 = !DILocation(line: 84, column: 9, scope: !154)
!154 = distinct !DILexicalBlock(scope: !142, file: !17, line: 84, column: 9)
!155 = !DILocation(line: 84, column: 55, scope: !154)
!156 = !DILocation(line: 84, column: 9, scope: !142)
!157 = !DILocation(line: 85, column: 9, scope: !154)
!158 = !DILocalVariable(name: "sched_param", scope: !142, file: !17, line: 88, type: !159)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_param", file: !160, line: 23, size: 32, elements: !161)
!160 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_sched_param.h", directory: "", checksumkind: CSK_MD5, checksum: "13c2f29d5f5dc39597ef32d201b78292")
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "sched_priority", scope: !159, file: !160, line: 25, baseType: !110, size: 32)
!163 = !DILocation(line: 88, column: 24, scope: !142)
!164 = !DILocation(line: 91, column: 31, scope: !165)
!165 = distinct !DILexicalBlock(scope: !142, file: !17, line: 91, column: 9)
!166 = !DILocation(line: 91, column: 9, scope: !165)
!167 = !DILocation(line: 91, column: 63, scope: !165)
!168 = !DILocation(line: 91, column: 9, scope: !142)
!169 = !DILocation(line: 92, column: 9, scope: !165)
!170 = !DILocation(line: 94, column: 1, scope: !142)
!171 = distinct !DISubprogram(name: "list_head_init", scope: !8, file: !8, line: 309, type: !172, scopeLine: 310, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !174}
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!175 = !DILocalVariable(name: "h", arg: 1, scope: !171, file: !8, line: 309, type: !174)
!176 = !DILocation(line: 309, column: 53, scope: !171)
!177 = !DILocation(line: 311, column: 27, scope: !171)
!178 = !DILocation(line: 311, column: 30, scope: !171)
!179 = !DILocation(line: 311, column: 14, scope: !171)
!180 = !DILocation(line: 311, column: 17, scope: !171)
!181 = !DILocation(line: 311, column: 19, scope: !171)
!182 = !DILocation(line: 311, column: 24, scope: !171)
!183 = !DILocation(line: 311, column: 2, scope: !171)
!184 = !DILocation(line: 311, column: 5, scope: !171)
!185 = !DILocation(line: 311, column: 7, scope: !171)
!186 = !DILocation(line: 311, column: 12, scope: !171)
!187 = !DILocation(line: 312, column: 1, scope: !171)
!188 = distinct !DISubprogram(name: "job_thread", scope: !17, file: !17, line: 45, type: !189, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!189 = !DISubroutineType(types: !190)
!190 = !{!5, !5}
!191 = !DILocalVariable(name: "data", arg: 1, scope: !188, file: !17, line: 45, type: !5)
!192 = !DILocation(line: 45, column: 18, scope: !188)
!193 = !DILocalVariable(name: "rgtp", scope: !188, file: !17, line: 47, type: !194)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timespec", file: !195, line: 11, size: 128, elements: !196)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h", directory: "", checksumkind: CSK_MD5, checksum: "55dc154df3f21a5aa944dcafba9b43f6")
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !194, file: !195, line: 16, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !199, line: 160, baseType: !132)
!199 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !194, file: !195, line: 21, baseType: !201, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__syscall_slong_t", file: !199, line: 197, baseType: !132)
!202 = !DILocation(line: 47, column: 21, scope: !188)
!203 = !DILocation(line: 49, column: 5, scope: !188)
!204 = !DILocation(line: 49, column: 12, scope: !188)
!205 = !DILocalVariable(name: "had_job", scope: !206, file: !17, line: 50, type: !133)
!206 = distinct !DILexicalBlock(scope: !188, file: !17, line: 49, column: 21)
!207 = !DILocation(line: 50, column: 14, scope: !206)
!208 = !DILocation(line: 52, column: 13, scope: !209)
!209 = distinct !DILexicalBlock(scope: !206, file: !17, line: 52, column: 13)
!210 = !DILocation(line: 52, column: 13, scope: !206)
!211 = !DILocalVariable(name: "job", scope: !212, file: !17, line: 53, type: !213)
!212 = distinct !DILexicalBlock(scope: !209, file: !17, line: 52, column: 56)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "job_t", file: !17, line: 33, size: 256, elements: !215)
!215 = !{!216, !217, !221}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "jobs", scope: !214, file: !17, line: 34, baseType: !7, size: 128)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "cb", scope: !214, file: !17, line: 35, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!133, !5}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !214, file: !17, line: 36, baseType: !5, size: 64, offset: 192)
!222 = !DILocation(line: 53, column: 27, scope: !212)
!223 = !DILocation(line: 55, column: 13, scope: !224)
!224 = distinct !DILexicalBlock(scope: !212, file: !17, line: 55, column: 13)
!225 = !DILocation(line: 55, column: 13, scope: !226)
!226 = distinct !DILexicalBlock(scope: !224, file: !17, line: 55, column: 13)
!227 = !DILocation(line: 56, column: 28, scope: !226)
!228 = !DILocation(line: 56, column: 33, scope: !226)
!229 = !DILocation(line: 56, column: 36, scope: !226)
!230 = !DILocation(line: 56, column: 41, scope: !226)
!231 = !DILocation(line: 56, column: 25, scope: !226)
!232 = !DILocation(line: 56, column: 17, scope: !226)
!233 = distinct !{!233, !223, !234, !235}
!234 = !DILocation(line: 56, column: 45, scope: !224)
!235 = !{!"llvm.loop.mustprogress"}
!236 = !DILocation(line: 58, column: 13, scope: !212)
!237 = !DILocation(line: 59, column: 9, scope: !212)
!238 = !DILocation(line: 61, column: 13, scope: !239)
!239 = distinct !DILexicalBlock(scope: !206, file: !17, line: 61, column: 13)
!240 = !DILocation(line: 61, column: 13, scope: !206)
!241 = !DILocation(line: 62, column: 18, scope: !239)
!242 = !DILocation(line: 62, column: 25, scope: !239)
!243 = !DILocation(line: 62, column: 13, scope: !239)
!244 = !DILocation(line: 63, column: 23, scope: !245)
!245 = distinct !DILexicalBlock(scope: !239, file: !17, line: 63, column: 18)
!246 = !DILocation(line: 63, column: 30, scope: !245)
!247 = !DILocation(line: 63, column: 18, scope: !239)
!248 = !DILocation(line: 64, column: 18, scope: !245)
!249 = !DILocation(line: 64, column: 24, scope: !245)
!250 = !DILocation(line: 64, column: 13, scope: !245)
!251 = !DILocation(line: 66, column: 13, scope: !252)
!252 = distinct !DILexicalBlock(scope: !206, file: !17, line: 66, column: 13)
!253 = !DILocation(line: 66, column: 13, scope: !206)
!254 = !DILocation(line: 67, column: 17, scope: !255)
!255 = distinct !DILexicalBlock(scope: !256, file: !17, line: 67, column: 17)
!256 = distinct !DILexicalBlock(scope: !252, file: !17, line: 66, column: 51)
!257 = !DILocation(line: 67, column: 23, scope: !255)
!258 = !DILocation(line: 67, column: 17, scope: !256)
!259 = !DILocation(line: 68, column: 17, scope: !255)
!260 = !DILocation(line: 69, column: 9, scope: !256)
!261 = distinct !{!261, !203, !262, !235}
!262 = !DILocation(line: 70, column: 5, scope: !188)
!263 = !DILocation(line: 72, column: 5, scope: !188)
!264 = distinct !DISubprogram(name: "lwan_job_thread_shutdown", scope: !17, file: !17, line: 96, type: !143, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!265 = !DILocation(line: 98, column: 5, scope: !264)
!266 = !DILocation(line: 100, column: 9, scope: !267)
!267 = distinct !DILexicalBlock(scope: !264, file: !17, line: 100, column: 9)
!268 = !DILocation(line: 100, column: 9, scope: !264)
!269 = !DILocalVariable(name: "node", scope: !270, file: !17, line: 101, type: !213)
!270 = distinct !DILexicalBlock(scope: !267, file: !17, line: 100, column: 52)
!271 = !DILocation(line: 101, column: 23, scope: !270)
!272 = !DILocalVariable(name: "next", scope: !270, file: !17, line: 101, type: !213)
!273 = !DILocation(line: 101, column: 30, scope: !270)
!274 = !DILocation(line: 102, column: 9, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !17, line: 102, column: 9)
!276 = !DILocation(line: 102, column: 9, scope: !277)
!277 = distinct !DILexicalBlock(scope: !275, file: !17, line: 102, column: 9)
!278 = !DILocation(line: 103, column: 23, scope: !279)
!279 = distinct !DILexicalBlock(scope: !277, file: !17, line: 102, column: 53)
!280 = !DILocation(line: 103, column: 29, scope: !279)
!281 = !DILocation(line: 103, column: 13, scope: !279)
!282 = !DILocation(line: 104, column: 18, scope: !279)
!283 = !DILocation(line: 104, column: 13, scope: !279)
!284 = !DILocation(line: 105, column: 9, scope: !279)
!285 = distinct !{!285, !274, !286, !235}
!286 = !DILocation(line: 105, column: 9, scope: !275)
!287 = !DILocation(line: 106, column: 17, scope: !270)
!288 = !DILocation(line: 107, column: 32, scope: !289)
!289 = distinct !DILexicalBlock(scope: !270, file: !17, line: 107, column: 13)
!290 = !DILocation(line: 107, column: 13, scope: !289)
!291 = !DILocation(line: 107, column: 44, scope: !289)
!292 = !DILocation(line: 107, column: 13, scope: !270)
!293 = !DILocation(line: 108, column: 13, scope: !289)
!294 = !DILocation(line: 109, column: 9, scope: !270)
!295 = !DILocation(line: 110, column: 5, scope: !270)
!296 = !DILocation(line: 111, column: 1, scope: !264)
!297 = distinct !DISubprogram(name: "list_node_to_off_", scope: !8, file: !8, line: 716, type: !298, scopeLine: 717, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!298 = !DISubroutineType(types: !299)
!299 = !{!5, !6, !300}
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !301, line: 46, baseType: !94)
!301 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!302 = !DILocalVariable(name: "node", arg: 1, scope: !297, file: !8, line: 716, type: !6)
!303 = !DILocation(line: 716, column: 57, scope: !297)
!304 = !DILocalVariable(name: "off", arg: 2, scope: !297, file: !8, line: 716, type: !300)
!305 = !DILocation(line: 716, column: 70, scope: !297)
!306 = !DILocation(line: 718, column: 26, scope: !297)
!307 = !DILocation(line: 718, column: 33, scope: !297)
!308 = !DILocation(line: 718, column: 31, scope: !297)
!309 = !DILocation(line: 718, column: 2, scope: !297)
!310 = distinct !DISubprogram(name: "list_node_from_off_", scope: !8, file: !8, line: 720, type: !311, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!311 = !DISubroutineType(types: !312)
!312 = !{!6, !5, !300}
!313 = !DILocalVariable(name: "ptr", arg: 1, scope: !310, file: !8, line: 720, type: !5)
!314 = !DILocation(line: 720, column: 59, scope: !310)
!315 = !DILocalVariable(name: "off", arg: 2, scope: !310, file: !8, line: 720, type: !300)
!316 = !DILocation(line: 720, column: 71, scope: !310)
!317 = !DILocation(line: 722, column: 38, scope: !310)
!318 = !DILocation(line: 722, column: 44, scope: !310)
!319 = !DILocation(line: 722, column: 42, scope: !310)
!320 = !DILocation(line: 722, column: 2, scope: !310)
!321 = distinct !DISubprogram(name: "list_del", scope: !8, file: !8, line: 384, type: !322, scopeLine: 385, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !6}
!324 = !DILocalVariable(name: "n", arg: 1, scope: !321, file: !8, line: 384, type: !6)
!325 = !DILocation(line: 384, column: 47, scope: !321)
!326 = !DILocation(line: 386, column: 8, scope: !321)
!327 = !DILocation(line: 387, column: 18, scope: !321)
!328 = !DILocation(line: 387, column: 21, scope: !321)
!329 = !DILocation(line: 387, column: 2, scope: !321)
!330 = !DILocation(line: 387, column: 5, scope: !321)
!331 = !DILocation(line: 387, column: 11, scope: !321)
!332 = !DILocation(line: 387, column: 16, scope: !321)
!333 = !DILocation(line: 388, column: 18, scope: !321)
!334 = !DILocation(line: 388, column: 21, scope: !321)
!335 = !DILocation(line: 388, column: 2, scope: !321)
!336 = !DILocation(line: 388, column: 5, scope: !321)
!337 = !DILocation(line: 388, column: 11, scope: !321)
!338 = !DILocation(line: 388, column: 16, scope: !321)
!339 = !DILocation(line: 393, column: 1, scope: !321)
!340 = distinct !DISubprogram(name: "lwan_job_add", scope: !17, file: !17, line: 113, type: !341, scopeLine: 114, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !218, !5}
!343 = !DILocalVariable(name: "cb", arg: 1, scope: !340, file: !17, line: 113, type: !218)
!344 = !DILocation(line: 113, column: 26, scope: !340)
!345 = !DILocalVariable(name: "data", arg: 2, scope: !340, file: !17, line: 113, type: !5)
!346 = !DILocation(line: 113, column: 49, scope: !340)
!347 = !DILocation(line: 115, column: 5, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !17, line: 115, column: 5)
!349 = distinct !DILexicalBlock(scope: !340, file: !17, line: 115, column: 5)
!350 = !DILocation(line: 115, column: 5, scope: !349)
!351 = !DILocalVariable(name: "job", scope: !340, file: !17, line: 117, type: !213)
!352 = !DILocation(line: 117, column: 19, scope: !340)
!353 = !DILocation(line: 117, column: 25, scope: !340)
!354 = !DILocation(line: 118, column: 10, scope: !355)
!355 = distinct !DILexicalBlock(scope: !340, file: !17, line: 118, column: 9)
!356 = !DILocation(line: 118, column: 9, scope: !340)
!357 = !DILocation(line: 119, column: 9, scope: !355)
!358 = !DILocation(line: 121, column: 15, scope: !340)
!359 = !DILocation(line: 121, column: 5, scope: !340)
!360 = !DILocation(line: 121, column: 10, scope: !340)
!361 = !DILocation(line: 121, column: 13, scope: !340)
!362 = !DILocation(line: 122, column: 17, scope: !340)
!363 = !DILocation(line: 122, column: 5, scope: !340)
!364 = !DILocation(line: 122, column: 10, scope: !340)
!365 = !DILocation(line: 122, column: 15, scope: !340)
!366 = !DILocation(line: 124, column: 9, scope: !367)
!367 = distinct !DILexicalBlock(scope: !340, file: !17, line: 124, column: 9)
!368 = !DILocation(line: 124, column: 9, scope: !340)
!369 = !DILocation(line: 125, column: 26, scope: !370)
!370 = distinct !DILexicalBlock(scope: !367, file: !17, line: 124, column: 52)
!371 = !DILocation(line: 125, column: 31, scope: !370)
!372 = !DILocation(line: 125, column: 9, scope: !370)
!373 = !DILocation(line: 126, column: 9, scope: !370)
!374 = !DILocation(line: 127, column: 5, scope: !370)
!375 = !DILocation(line: 128, column: 9, scope: !376)
!376 = distinct !DILexicalBlock(scope: !367, file: !17, line: 127, column: 12)
!377 = !DILocation(line: 129, column: 14, scope: !376)
!378 = !DILocation(line: 129, column: 9, scope: !376)
!379 = !DILocation(line: 131, column: 1, scope: !340)
!380 = distinct !DISubprogram(name: "list_add", scope: !8, file: !8, line: 327, type: !381, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !145)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !174, !6}
!383 = !DILocalVariable(name: "h", arg: 1, scope: !380, file: !8, line: 327, type: !174)
!384 = !DILocation(line: 327, column: 47, scope: !380)
!385 = !DILocalVariable(name: "n", arg: 2, scope: !380, file: !8, line: 327, type: !6)
!386 = !DILocation(line: 327, column: 68, scope: !380)
!387 = !DILocation(line: 329, column: 12, scope: !380)
!388 = !DILocation(line: 329, column: 15, scope: !380)
!389 = !DILocation(line: 329, column: 17, scope: !380)
!390 = !DILocation(line: 329, column: 2, scope: !380)
!391 = !DILocation(line: 329, column: 5, scope: !380)
!392 = !DILocation(line: 329, column: 10, scope: !380)
!393 = !DILocation(line: 330, column: 13, scope: !380)
!394 = !DILocation(line: 330, column: 16, scope: !380)
!395 = !DILocation(line: 330, column: 2, scope: !380)
!396 = !DILocation(line: 330, column: 5, scope: !380)
!397 = !DILocation(line: 330, column: 10, scope: !380)
!398 = !DILocation(line: 331, column: 20, scope: !380)
!399 = !DILocation(line: 331, column: 2, scope: !380)
!400 = !DILocation(line: 331, column: 5, scope: !380)
!401 = !DILocation(line: 331, column: 7, scope: !380)
!402 = !DILocation(line: 331, column: 13, scope: !380)
!403 = !DILocation(line: 331, column: 18, scope: !380)
!404 = !DILocation(line: 332, column: 14, scope: !380)
!405 = !DILocation(line: 332, column: 2, scope: !380)
!406 = !DILocation(line: 332, column: 5, scope: !380)
!407 = !DILocation(line: 332, column: 7, scope: !380)
!408 = !DILocation(line: 332, column: 12, scope: !380)
!409 = !DILocation(line: 333, column: 8, scope: !380)
!410 = !DILocation(line: 334, column: 1, scope: !380)
!411 = distinct !DISubprogram(name: "lwan_job_del", scope: !17, file: !17, line: 133, type: !341, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !145)
!412 = !DILocalVariable(name: "cb", arg: 1, scope: !411, file: !17, line: 133, type: !218)
!413 = !DILocation(line: 133, column: 26, scope: !411)
!414 = !DILocalVariable(name: "data", arg: 2, scope: !411, file: !17, line: 133, type: !5)
!415 = !DILocation(line: 133, column: 49, scope: !411)
!416 = !DILocalVariable(name: "node", scope: !411, file: !17, line: 135, type: !213)
!417 = !DILocation(line: 135, column: 19, scope: !411)
!418 = !DILocalVariable(name: "next", scope: !411, file: !17, line: 135, type: !213)
!419 = !DILocation(line: 135, column: 26, scope: !411)
!420 = !DILocation(line: 137, column: 5, scope: !421)
!421 = distinct !DILexicalBlock(scope: !422, file: !17, line: 137, column: 5)
!422 = distinct !DILexicalBlock(scope: !411, file: !17, line: 137, column: 5)
!423 = !DILocation(line: 137, column: 5, scope: !422)
!424 = !DILocation(line: 139, column: 9, scope: !425)
!425 = distinct !DILexicalBlock(scope: !411, file: !17, line: 139, column: 9)
!426 = !DILocation(line: 139, column: 9, scope: !411)
!427 = !DILocation(line: 140, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !429, file: !17, line: 140, column: 9)
!429 = distinct !DILexicalBlock(scope: !425, file: !17, line: 139, column: 52)
!430 = !DILocation(line: 140, column: 9, scope: !431)
!431 = distinct !DILexicalBlock(scope: !428, file: !17, line: 140, column: 9)
!432 = !DILocation(line: 141, column: 17, scope: !433)
!433 = distinct !DILexicalBlock(scope: !434, file: !17, line: 141, column: 17)
!434 = distinct !DILexicalBlock(scope: !431, file: !17, line: 140, column: 53)
!435 = !DILocation(line: 141, column: 23, scope: !433)
!436 = !DILocation(line: 141, column: 29, scope: !433)
!437 = !DILocation(line: 141, column: 20, scope: !433)
!438 = !DILocation(line: 141, column: 32, scope: !433)
!439 = !DILocation(line: 141, column: 35, scope: !433)
!440 = !DILocation(line: 141, column: 43, scope: !433)
!441 = !DILocation(line: 141, column: 49, scope: !433)
!442 = !DILocation(line: 141, column: 40, scope: !433)
!443 = !DILocation(line: 141, column: 17, scope: !434)
!444 = !DILocation(line: 142, column: 27, scope: !445)
!445 = distinct !DILexicalBlock(scope: !433, file: !17, line: 141, column: 55)
!446 = !DILocation(line: 142, column: 33, scope: !445)
!447 = !DILocation(line: 142, column: 17, scope: !445)
!448 = !DILocation(line: 143, column: 22, scope: !445)
!449 = !DILocation(line: 143, column: 17, scope: !445)
!450 = !DILocation(line: 144, column: 13, scope: !445)
!451 = !DILocation(line: 145, column: 9, scope: !434)
!452 = distinct !{!452, !427, !453, !235}
!453 = !DILocation(line: 145, column: 9, scope: !428)
!454 = !DILocation(line: 146, column: 9, scope: !429)
!455 = !DILocation(line: 147, column: 5, scope: !429)
!456 = !DILocation(line: 148, column: 1, scope: !411)
