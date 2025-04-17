; ModuleID = '/home/raj/lwan/common/lwan-status.c'
source_filename = "/home/raj/lwan/common/lwan-status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@quiet = internal global i8 0, align 1, !dbg !0
@mutex = internal global %union.pthread_mutex_t zeroinitializer, align 8, !dbg !88
@.str = private unnamed_addr constant [19 x i8] c"pthread_mutex_lock\00", align 1, !dbg !30
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"\1B[32;1m%ld\1B[0m\00", align 1, !dbg !36
@.str.2 = private unnamed_addr constant [15 x i8] c" \1B[3m%s:%d\1B[0m\00", align 1, !dbg !41
@.str.3 = private unnamed_addr constant [15 x i8] c" \1B[33m%s()\1B[0m\00", align 1, !dbg !43
@.str.4 = private unnamed_addr constant [2 x i8] c" \00", align 1, !dbg !45
@.str.5 = private unnamed_addr constant [21 x i8] c"pthread_mutex_unlock\00", align 1, !dbg !50
@.str.6 = private unnamed_addr constant [6 x i8] c"\1B[36m\00", align 1, !dbg !55
@.str.7 = private unnamed_addr constant [6 x i8] c"\1B[33m\00", align 1, !dbg !60
@.str.8 = private unnamed_addr constant [8 x i8] c"\1B[31;1m\00", align 1, !dbg !62
@.str.9 = private unnamed_addr constant [6 x i8] c"\1B[37m\00", align 1, !dbg !67
@.str.10 = private unnamed_addr constant [6 x i8] c"\1B[35m\00", align 1, !dbg !69
@.str.11 = private unnamed_addr constant [6 x i8] c"\1B[32m\00", align 1, !dbg !71
@get_color_end_for_type.retval = internal global ptr @.str.12, align 8, !dbg !78
@.str.12 = private unnamed_addr constant [5 x i8] c"\1B[0m\00", align 1, !dbg !73

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_init(ptr noundef %0) #0 !dbg !130 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !225, metadata !DIExpression()), !dbg !226
  store volatile i8 0, ptr @quiet, align 1, !dbg !227
  %3 = load ptr, ptr %2, align 8, !dbg !228
  ret void, !dbg !229
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_shutdown(ptr noundef %0) #0 !dbg !230 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !231, metadata !DIExpression()), !dbg !232
  ret void, !dbg !233
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_debug_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !234 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !238, metadata !DIExpression()), !dbg !239
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !240, metadata !DIExpression()), !dbg !239
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !241, metadata !DIExpression()), !dbg !239
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !242, metadata !DIExpression()), !dbg !239
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !243
  %11 = trunc i8 %10 to i1, !dbg !243
  br i1 %11, label %20, label %12, !dbg !239

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !245, metadata !DIExpression()), !dbg !262
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !262
  call void @llvm.va_start(ptr %13), !dbg !262
  %14 = load ptr, ptr %5, align 8, !dbg !262
  %15 = load i32, ptr %6, align 4, !dbg !262
  %16 = load ptr, ptr %7, align 8, !dbg !262
  %17 = load ptr, ptr %8, align 8, !dbg !262
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !262
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 32, ptr noundef %17, ptr noundef %18), !dbg !262
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !262
  call void @llvm.va_end(ptr %19), !dbg !262
  br label %20, !dbg !262

20:                                               ; preds = %12, %4
  ret void, !dbg !239
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_out(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5) #0 !dbg !263 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !267, metadata !DIExpression()), !dbg !268
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !269, metadata !DIExpression()), !dbg !270
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !271, metadata !DIExpression()), !dbg !272
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !273, metadata !DIExpression()), !dbg !274
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !275, metadata !DIExpression()), !dbg !276
  store ptr %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !277, metadata !DIExpression()), !dbg !278
  call void @llvm.dbg.declare(metadata ptr %13, metadata !279, metadata !DIExpression()), !dbg !280
  call void @llvm.dbg.declare(metadata ptr %14, metadata !281, metadata !DIExpression()), !dbg !282
  %15 = load ptr, ptr %11, align 8, !dbg !283
  %16 = load ptr, ptr %12, align 8, !dbg !284
  %17 = call i32 @vasprintf(ptr noundef %13, ptr noundef %15, ptr noundef %16) #9, !dbg !285
  store i32 %17, ptr %14, align 4, !dbg !286
  %18 = load i32, ptr %14, align 4, !dbg !287
  %19 = icmp sge i32 %18, 0, !dbg !289
  br i1 %19, label %20, label %29, !dbg !290

20:                                               ; preds = %6
  %21 = load ptr, ptr %7, align 8, !dbg !291
  %22 = load i32, ptr %8, align 4, !dbg !293
  %23 = load ptr, ptr %9, align 8, !dbg !294
  %24 = load i32, ptr %10, align 4, !dbg !295
  %25 = load ptr, ptr %13, align 8, !dbg !296
  %26 = load i32, ptr %14, align 4, !dbg !297
  %27 = sext i32 %26 to i64, !dbg !298
  call void @status_out_msg(ptr noundef %21, i32 noundef %22, ptr noundef %23, i32 noundef %24, ptr noundef %25, i64 noundef %27), !dbg !299
  %28 = load ptr, ptr %13, align 8, !dbg !300
  call void @free(ptr noundef %28) #9, !dbg !301
  br label %29, !dbg !302

29:                                               ; preds = %20, %6
  ret void, !dbg !303
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_info_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !304 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !305, metadata !DIExpression()), !dbg !306
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !307, metadata !DIExpression()), !dbg !306
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !308, metadata !DIExpression()), !dbg !306
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !309, metadata !DIExpression()), !dbg !306
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !310
  %11 = trunc i8 %10 to i1, !dbg !310
  br i1 %11, label %20, label %12, !dbg !306

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !312, metadata !DIExpression()), !dbg !314
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !314
  call void @llvm.va_start(ptr %13), !dbg !314
  %14 = load ptr, ptr %5, align 8, !dbg !314
  %15 = load i32, ptr %6, align 4, !dbg !314
  %16 = load ptr, ptr %7, align 8, !dbg !314
  %17 = load ptr, ptr %8, align 8, !dbg !314
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !314
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 1, ptr noundef %17, ptr noundef %18), !dbg !314
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !314
  call void @llvm.va_end(ptr %19), !dbg !314
  br label %20, !dbg !314

20:                                               ; preds = %12, %4
  ret void, !dbg !306
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_warning_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !315 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !316, metadata !DIExpression()), !dbg !317
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !318, metadata !DIExpression()), !dbg !317
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !319, metadata !DIExpression()), !dbg !317
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !320, metadata !DIExpression()), !dbg !317
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !321
  %11 = trunc i8 %10 to i1, !dbg !321
  br i1 %11, label %20, label %12, !dbg !317

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !323, metadata !DIExpression()), !dbg !325
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !325
  call void @llvm.va_start(ptr %13), !dbg !325
  %14 = load ptr, ptr %5, align 8, !dbg !325
  %15 = load i32, ptr %6, align 4, !dbg !325
  %16 = load ptr, ptr %7, align 8, !dbg !325
  %17 = load ptr, ptr %8, align 8, !dbg !325
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !325
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 2, ptr noundef %17, ptr noundef %18), !dbg !325
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !325
  call void @llvm.va_end(ptr %19), !dbg !325
  br label %20, !dbg !325

20:                                               ; preds = %12, %4
  ret void, !dbg !317
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_error_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !326 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !327, metadata !DIExpression()), !dbg !328
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !329, metadata !DIExpression()), !dbg !328
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !330, metadata !DIExpression()), !dbg !328
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !331, metadata !DIExpression()), !dbg !328
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !332
  %11 = trunc i8 %10 to i1, !dbg !332
  br i1 %11, label %20, label %12, !dbg !328

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !334, metadata !DIExpression()), !dbg !336
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !336
  call void @llvm.va_start(ptr %13), !dbg !336
  %14 = load ptr, ptr %5, align 8, !dbg !336
  %15 = load i32, ptr %6, align 4, !dbg !336
  %16 = load ptr, ptr %7, align 8, !dbg !336
  %17 = load ptr, ptr %8, align 8, !dbg !336
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !336
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 4, ptr noundef %17, ptr noundef %18), !dbg !336
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !336
  call void @llvm.va_end(ptr %19), !dbg !336
  br label %20, !dbg !336

20:                                               ; preds = %12, %4
  ret void, !dbg !328
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lwan_status_perror_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #0 !dbg !337 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !338, metadata !DIExpression()), !dbg !339
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !340, metadata !DIExpression()), !dbg !339
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !341, metadata !DIExpression()), !dbg !339
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !342, metadata !DIExpression()), !dbg !339
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !343
  %11 = trunc i8 %10 to i1, !dbg !343
  br i1 %11, label %20, label %12, !dbg !339

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !345, metadata !DIExpression()), !dbg !347
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !347
  call void @llvm.va_start(ptr %13), !dbg !347
  %14 = load ptr, ptr %5, align 8, !dbg !347
  %15 = load i32, ptr %6, align 4, !dbg !347
  %16 = load ptr, ptr %7, align 8, !dbg !347
  %17 = load ptr, ptr %8, align 8, !dbg !347
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !347
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 8, ptr noundef %17, ptr noundef %18), !dbg !347
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !347
  call void @llvm.va_end(ptr %19), !dbg !347
  br label %20, !dbg !347

20:                                               ; preds = %12, %4
  ret void, !dbg !339
}

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @lwan_status_critical_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #3 !dbg !348 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !349, metadata !DIExpression()), !dbg !350
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !351, metadata !DIExpression()), !dbg !350
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !352, metadata !DIExpression()), !dbg !350
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !353, metadata !DIExpression()), !dbg !350
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !354
  %11 = trunc i8 %10 to i1, !dbg !354
  br i1 %11, label %20, label %12, !dbg !350

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !356, metadata !DIExpression()), !dbg !358
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !358
  call void @llvm.va_start(ptr %13), !dbg !358
  %14 = load ptr, ptr %5, align 8, !dbg !358
  %15 = load i32, ptr %6, align 4, !dbg !358
  %16 = load ptr, ptr %7, align 8, !dbg !358
  %17 = load ptr, ptr %8, align 8, !dbg !358
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !358
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 16, ptr noundef %17, ptr noundef %18), !dbg !358
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !358
  call void @llvm.va_end(ptr %19), !dbg !358
  br label %20, !dbg !358

20:                                               ; preds = %12, %4
  call void @abort() #10, !dbg !359
  unreachable, !dbg !359
}

; Function Attrs: noreturn nounwind
declare void @abort() #4

; Function Attrs: noinline noreturn nounwind optnone uwtable
define dso_local void @lwan_status_critical_perror_debug(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ...) #3 !dbg !361 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !362, metadata !DIExpression()), !dbg !363
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !364, metadata !DIExpression()), !dbg !363
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !365, metadata !DIExpression()), !dbg !363
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !366, metadata !DIExpression()), !dbg !363
  %10 = load volatile i8, ptr @quiet, align 1, !dbg !367
  %11 = trunc i8 %10 to i1, !dbg !367
  br i1 %11, label %20, label %12, !dbg !363

12:                                               ; preds = %4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !369, metadata !DIExpression()), !dbg !371
  %13 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !371
  call void @llvm.va_start(ptr %13), !dbg !371
  %14 = load ptr, ptr %5, align 8, !dbg !371
  %15 = load i32, ptr %6, align 4, !dbg !371
  %16 = load ptr, ptr %7, align 8, !dbg !371
  %17 = load ptr, ptr %8, align 8, !dbg !371
  %18 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !371
  call void @status_out(ptr noundef %14, i32 noundef %15, ptr noundef %16, i32 noundef 24, ptr noundef %17, ptr noundef %18), !dbg !371
  %19 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %9, i64 0, i64 0, !dbg !371
  call void @llvm.va_end(ptr %19), !dbg !371
  br label %20, !dbg !371

20:                                               ; preds = %12, %4
  call void @abort() #10, !dbg !372
  unreachable, !dbg !372
}

; Function Attrs: nounwind
declare i32 @vasprintf(ptr noundef, ptr noundef, ptr noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal void @status_out_msg(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i64 noundef %5) #0 !dbg !374 {
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca ptr, align 8
  %17 = alloca ptr, align 8
  %18 = alloca [512 x i8], align 16
  %19 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !377, metadata !DIExpression()), !dbg !378
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !379, metadata !DIExpression()), !dbg !380
  store ptr %2, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !381, metadata !DIExpression()), !dbg !382
  store i32 %3, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !383, metadata !DIExpression()), !dbg !384
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !385, metadata !DIExpression()), !dbg !386
  store i64 %5, ptr %12, align 8
  call void @llvm.dbg.declare(metadata ptr %12, metadata !387, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.declare(metadata ptr %13, metadata !389, metadata !DIExpression()), !dbg !390
  %20 = call ptr @__errno_location() #11, !dbg !391
  %21 = load i32, ptr %20, align 4, !dbg !391
  store i32 %21, ptr %13, align 4, !dbg !390
  call void @llvm.dbg.declare(metadata ptr %14, metadata !392, metadata !DIExpression()), !dbg !393
  call void @llvm.dbg.declare(metadata ptr %15, metadata !394, metadata !DIExpression()), !dbg !395
  call void @llvm.dbg.declare(metadata ptr %16, metadata !396, metadata !DIExpression()), !dbg !397
  %22 = load i32, ptr %10, align 4, !dbg !398
  %23 = call ptr @get_color_start_for_type(i32 noundef %22, ptr noundef %14), !dbg !399
  store ptr %23, ptr %16, align 8, !dbg !397
  call void @llvm.dbg.declare(metadata ptr %17, metadata !400, metadata !DIExpression()), !dbg !401
  %24 = load i32, ptr %10, align 4, !dbg !402
  %25 = call ptr @get_color_end_for_type(i32 noundef %24, ptr noundef %15), !dbg !403
  store ptr %25, ptr %17, align 8, !dbg !401
  %26 = call i32 @pthread_mutex_lock(ptr noundef @mutex) #9, !dbg !404
  %27 = icmp slt i32 %26, 0, !dbg !404
  %28 = zext i1 %27 to i32, !dbg !404
  %29 = sext i32 %28 to i64, !dbg !404
  %30 = icmp ne i64 %29, 0, !dbg !404
  br i1 %30, label %31, label %32, !dbg !406

31:                                               ; preds = %6
  call void @perror(ptr noundef @.str), !dbg !407
  br label %32, !dbg !407

32:                                               ; preds = %31, %6
  %33 = load ptr, ptr @stdout, align 8, !dbg !408
  %34 = call i64 (i64, ...) @syscall(i64 noundef 186) #9, !dbg !409
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.1, i64 noundef %34), !dbg !410
  %36 = load ptr, ptr @stdout, align 8, !dbg !411
  %37 = load ptr, ptr %7, align 8, !dbg !412
  %38 = call ptr @basename(ptr noundef %37) #9, !dbg !413
  %39 = load i32, ptr %8, align 4, !dbg !414
  %40 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %36, ptr noundef @.str.2, ptr noundef %38, i32 noundef %39), !dbg !415
  %41 = load ptr, ptr @stdout, align 8, !dbg !416
  %42 = load ptr, ptr %9, align 8, !dbg !417
  %43 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.3, ptr noundef %42), !dbg !418
  %44 = load ptr, ptr @stdout, align 8, !dbg !419
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str.4), !dbg !420
  %46 = load ptr, ptr %16, align 8, !dbg !421
  %47 = load i64, ptr %14, align 8, !dbg !422
  %48 = load ptr, ptr @stdout, align 8, !dbg !423
  %49 = call i64 @fwrite(ptr noundef %46, i64 noundef %47, i64 noundef 1, ptr noundef %48), !dbg !424
  %50 = load ptr, ptr %11, align 8, !dbg !425
  %51 = load i64, ptr %12, align 8, !dbg !426
  %52 = load ptr, ptr @stdout, align 8, !dbg !427
  %53 = call i64 @fwrite(ptr noundef %50, i64 noundef %51, i64 noundef 1, ptr noundef %52), !dbg !428
  %54 = load i32, ptr %10, align 4, !dbg !429
  %55 = and i32 %54, 8, !dbg !431
  %56 = icmp ne i32 %55, 0, !dbg !431
  br i1 %56, label %57, label %70, !dbg !432

57:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata ptr %18, metadata !433, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata ptr %19, metadata !439, metadata !DIExpression()), !dbg !440
  %58 = load i32, ptr %13, align 4, !dbg !441
  %59 = getelementptr inbounds [512 x i8], ptr %18, i64 0, i64 0, !dbg !442
  %60 = call ptr @strerror_r(i32 noundef %58, ptr noundef %59, i64 noundef 511) #9, !dbg !443
  store ptr %60, ptr %19, align 8, !dbg !440
  %61 = load ptr, ptr @stdout, align 8, !dbg !444
  %62 = call i32 @fputc(i32 noundef 58, ptr noundef %61), !dbg !445
  %63 = load ptr, ptr @stdout, align 8, !dbg !446
  %64 = call i32 @fputc(i32 noundef 32, ptr noundef %63), !dbg !447
  %65 = load ptr, ptr %19, align 8, !dbg !448
  %66 = load ptr, ptr %19, align 8, !dbg !449
  %67 = call i64 @strlen(ptr noundef %66) #12, !dbg !450
  %68 = load ptr, ptr @stdout, align 8, !dbg !451
  %69 = call i64 @fwrite(ptr noundef %65, i64 noundef %67, i64 noundef 1, ptr noundef %68), !dbg !452
  br label %70, !dbg !453

70:                                               ; preds = %57, %32
  %71 = load ptr, ptr @stdout, align 8, !dbg !454
  %72 = call i32 @fputc(i32 noundef 46, ptr noundef %71), !dbg !455
  %73 = load ptr, ptr %17, align 8, !dbg !456
  %74 = load i64, ptr %15, align 8, !dbg !457
  %75 = load ptr, ptr @stdout, align 8, !dbg !458
  %76 = call i64 @fwrite(ptr noundef %73, i64 noundef %74, i64 noundef 1, ptr noundef %75), !dbg !459
  %77 = load ptr, ptr @stdout, align 8, !dbg !460
  %78 = call i32 @fputc(i32 noundef 10, ptr noundef %77), !dbg !461
  %79 = call i32 @pthread_mutex_unlock(ptr noundef @mutex) #9, !dbg !462
  %80 = icmp slt i32 %79, 0, !dbg !462
  %81 = zext i1 %80 to i32, !dbg !462
  %82 = sext i32 %81 to i64, !dbg !462
  %83 = icmp ne i64 %82, 0, !dbg !462
  br i1 %83, label %84, label %85, !dbg !464

84:                                               ; preds = %70
  call void @perror(ptr noundef @.str.5), !dbg !465
  br label %85, !dbg !465

85:                                               ; preds = %84, %70
  ret void, !dbg !466
}

; Function Attrs: nounwind
declare void @free(ptr noundef) #5

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #6

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_color_start_for_type(i32 noundef %0, ptr noundef %1) #0 !dbg !467 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !468, metadata !DIExpression()), !dbg !469
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !470, metadata !DIExpression()), !dbg !471
  call void @llvm.dbg.declare(metadata ptr %5, metadata !472, metadata !DIExpression()), !dbg !473
  %6 = load i32, ptr %3, align 4, !dbg !474
  %7 = and i32 %6, 1, !dbg !476
  %8 = icmp ne i32 %7, 0, !dbg !476
  br i1 %8, label %9, label %10, !dbg !477

9:                                                ; preds = %2
  store ptr @.str.6, ptr %5, align 8, !dbg !478
  br label %35, !dbg !479

10:                                               ; preds = %2
  %11 = load i32, ptr %3, align 4, !dbg !480
  %12 = and i32 %11, 2, !dbg !482
  %13 = icmp ne i32 %12, 0, !dbg !482
  br i1 %13, label %14, label %15, !dbg !483

14:                                               ; preds = %10
  store ptr @.str.7, ptr %5, align 8, !dbg !484
  br label %34, !dbg !485

15:                                               ; preds = %10
  %16 = load i32, ptr %3, align 4, !dbg !486
  %17 = and i32 %16, 16, !dbg !488
  %18 = icmp ne i32 %17, 0, !dbg !488
  br i1 %18, label %19, label %20, !dbg !489

19:                                               ; preds = %15
  store ptr @.str.8, ptr %5, align 8, !dbg !490
  br label %33, !dbg !491

20:                                               ; preds = %15
  %21 = load i32, ptr %3, align 4, !dbg !492
  %22 = and i32 %21, 32, !dbg !494
  %23 = icmp ne i32 %22, 0, !dbg !494
  br i1 %23, label %24, label %25, !dbg !495

24:                                               ; preds = %20
  store ptr @.str.9, ptr %5, align 8, !dbg !496
  br label %32, !dbg !497

25:                                               ; preds = %20
  %26 = load i32, ptr %3, align 4, !dbg !498
  %27 = and i32 %26, 8, !dbg !500
  %28 = icmp ne i32 %27, 0, !dbg !500
  br i1 %28, label %29, label %30, !dbg !501

29:                                               ; preds = %25
  store ptr @.str.10, ptr %5, align 8, !dbg !502
  br label %31, !dbg !503

30:                                               ; preds = %25
  store ptr @.str.11, ptr %5, align 8, !dbg !504
  br label %31

31:                                               ; preds = %30, %29
  br label %32

32:                                               ; preds = %31, %24
  br label %33

33:                                               ; preds = %32, %19
  br label %34

34:                                               ; preds = %33, %14
  br label %35

35:                                               ; preds = %34, %9
  %36 = load ptr, ptr %5, align 8, !dbg !505
  %37 = call i64 @strlen(ptr noundef %36) #12, !dbg !506
  %38 = load ptr, ptr %4, align 8, !dbg !507
  store i64 %37, ptr %38, align 8, !dbg !508
  %39 = load ptr, ptr %5, align 8, !dbg !509
  ret ptr %39, !dbg !510
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_color_end_for_type(i32 noundef %0, ptr noundef %1) #0 !dbg !80 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  store i32 %0, ptr %3, align 4
  call void @llvm.dbg.declare(metadata ptr %3, metadata !511, metadata !DIExpression()), !dbg !512
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !513, metadata !DIExpression()), !dbg !514
  %5 = load ptr, ptr @get_color_end_for_type.retval, align 8, !dbg !515
  %6 = call i64 @strlen(ptr noundef %5) #12, !dbg !516
  %7 = load ptr, ptr %4, align 8, !dbg !517
  store i64 %6, ptr %7, align 8, !dbg !518
  %8 = load ptr, ptr @get_color_end_for_type.retval, align 8, !dbg !519
  ret ptr %8, !dbg !520
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) #5

declare void @perror(ptr noundef) #7

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #7

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) #5

; Function Attrs: nounwind
declare ptr @basename(ptr noundef) #5

declare i64 @fwrite(ptr noundef, i64 noundef, i64 noundef, ptr noundef) #7

; Function Attrs: nounwind
declare ptr @strerror_r(i32 noundef, ptr noundef, i64 noundef) #5

declare i32 @fputc(i32 noundef, ptr noundef) #7

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { noinline noreturn nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { nounwind willreturn memory(none) }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128}
!llvm.ident = !{!129}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "quiet", scope: !2, file: !16, line: 44, type: !120, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !25, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/raj/lwan/common/lwan-status.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "3144bdabc8d20e3f6762e4c059065536")
!4 = !{!5, !15}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !6, line: 158, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !10, !11, !12, !13, !14}
!9 = !DIEnumerator(name: "CONN_MASK", value: -1)
!10 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!11 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!12 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!13 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!14 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!15 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !16, line: 35, baseType: !17, size: 32, elements: !18)
!16 = !DIFile(filename: "common/lwan-status.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "3144bdabc8d20e3f6762e4c059065536")
!17 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!18 = !{!19, !20, !21, !22, !23, !24}
!19 = !DIEnumerator(name: "STATUS_INFO", value: 1)
!20 = !DIEnumerator(name: "STATUS_WARNING", value: 2)
!21 = !DIEnumerator(name: "STATUS_ERROR", value: 4)
!22 = !DIEnumerator(name: "STATUS_PERROR", value: 8)
!23 = !DIEnumerator(name: "STATUS_CRITICAL", value: 16)
!24 = !DIEnumerator(name: "STATUS_DEBUG", value: 32)
!25 = !{!26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{!0, !30, !36, !41, !43, !45, !50, !55, !60, !62, !67, !69, !71, !73, !78, !88}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(scope: null, file: !16, line: 109, type: !32, isLocal: true, isDefinition: true)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 152, elements: !34)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{!35}
!35 = !DISubrange(count: 19)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !16, line: 112, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 120, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 15)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !16, line: 113, type: !38, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !16, line: 114, type: !38, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !16, line: 115, type: !47, isLocal: true, isDefinition: true)
!47 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 16, elements: !48)
!48 = !{!49}
!49 = !DISubrange(count: 2)
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !16, line: 134, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 168, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 21)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(scope: null, file: !16, line: 69, type: !57, isLocal: true, isDefinition: true)
!57 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 48, elements: !58)
!58 = !{!59}
!59 = !DISubrange(count: 6)
!60 = !DIGlobalVariableExpression(var: !61, expr: !DIExpression())
!61 = distinct !DIGlobalVariable(scope: null, file: !16, line: 71, type: !57, isLocal: true, isDefinition: true)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(scope: null, file: !16, line: 73, type: !64, isLocal: true, isDefinition: true)
!64 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 64, elements: !65)
!65 = !{!66}
!66 = !DISubrange(count: 8)
!67 = !DIGlobalVariableExpression(var: !68, expr: !DIExpression())
!68 = distinct !DIGlobalVariable(scope: null, file: !16, line: 75, type: !57, isLocal: true, isDefinition: true)
!69 = !DIGlobalVariableExpression(var: !70, expr: !DIExpression())
!70 = distinct !DIGlobalVariable(scope: null, file: !16, line: 77, type: !57, isLocal: true, isDefinition: true)
!71 = !DIGlobalVariableExpression(var: !72, expr: !DIExpression())
!72 = distinct !DIGlobalVariable(scope: null, file: !16, line: 79, type: !57, isLocal: true, isDefinition: true)
!73 = !DIGlobalVariableExpression(var: !74, expr: !DIExpression())
!74 = distinct !DIGlobalVariable(scope: null, file: !16, line: 90, type: !75, isLocal: true, isDefinition: true)
!75 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 40, elements: !76)
!76 = !{!77}
!77 = !DISubrange(count: 5)
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(name: "retval", scope: !80, file: !16, line: 90, type: !83, isLocal: true, isDefinition: true)
!80 = distinct !DISubprogram(name: "get_color_end_for_type", scope: !16, file: !16, line: 87, type: !81, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{!83, !85, !86}
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_status_type_t", file: !16, line: 42, baseType: !15)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!87 = !{}
!88 = !DIGlobalVariableExpression(var: !89, expr: !DIExpression())
!89 = distinct !DIGlobalVariable(name: "mutex", scope: !2, file: !16, line: 45, type: !90, isLocal: true, isDefinition: true)
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !91, line: 72, baseType: !92)
!91 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !91, line: 67, size: 320, elements: !93)
!93 = !{!94, !114, !118}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !92, file: !91, line: 69, baseType: !95, size: 320)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !96, line: 22, size: 320, elements: !97)
!96 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!97 = !{!98, !99, !100, !101, !102, !103, !105, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !95, file: !96, line: 24, baseType: !7, size: 32)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !95, file: !96, line: 25, baseType: !17, size: 32, offset: 32)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !95, file: !96, line: 26, baseType: !7, size: 32, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !95, file: !96, line: 28, baseType: !17, size: 32, offset: 96)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !95, file: !96, line: 32, baseType: !7, size: 32, offset: 128)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !95, file: !96, line: 34, baseType: !104, size: 16, offset: 160)
!104 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !95, file: !96, line: 35, baseType: !104, size: 16, offset: 176)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !95, file: !96, line: 36, baseType: !107, size: 128, offset: 192)
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !108, line: 55, baseType: !109)
!108 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !108, line: 51, size: 128, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !109, file: !108, line: 53, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !109, file: !108, line: 54, baseType: !112, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !92, file: !91, line: 70, baseType: !115, size: 320)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 320, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: 40)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !92, file: !91, line: 71, baseType: !119, size: 64)
!119 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!120 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !121)
!121 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!122 = !{i32 7, !"Dwarf Version", i32 5}
!123 = !{i32 2, !"Debug Info Version", i32 3}
!124 = !{i32 1, !"wchar_size", i32 4}
!125 = !{i32 8, !"PIC Level", i32 2}
!126 = !{i32 7, !"PIE Level", i32 2}
!127 = !{i32 7, !"uwtable", i32 2}
!128 = !{i32 7, !"frame-pointer", i32 2}
!129 = !{!"clang version 16.0.0"}
!130 = distinct !DISubprogram(name: "lwan_status_init", scope: !16, file: !16, line: 48, type: !131, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!131 = !DISubroutineType(types: !132)
!132 = !{null, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !6, line: 103, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !6, line: 275, size: 640, elements: !136)
!136 = !{!137, !164, !203, !210, !214, !224}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !135, file: !6, line: 276, baseType: !138, size: 128)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !139, line: 25, baseType: !140)
!139 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !139, line: 41, size: 128, elements: !141)
!141 = !{!142, !160}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !140, file: !139, line: 42, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !139, line: 26, baseType: !145)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !139, line: 29, size: 640, elements: !146)
!146 = !{!147, !149, !159}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !139, line: 30, baseType: !148, size: 512)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 512, elements: !65)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !145, file: !139, line: 31, baseType: !150, size: 64, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !139, line: 27, baseType: !152)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !139, line: 35, size: 192, elements: !153)
!153 = !{!154, !156, !158}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !152, file: !139, line: 36, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !152, file: !139, line: 37, baseType: !157, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !152, file: !139, line: 38, baseType: !150, size: 64, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !145, file: !139, line: 32, baseType: !7, size: 32, offset: 576)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !140, file: !139, line: 43, baseType: !161, size: 64, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !157}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !135, file: !6, line: 277, baseType: !165, size: 64, offset: 128)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !6, line: 112, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !6, line: 196, size: 256, elements: !168)
!168 = !{!169, !171, !172, !177, !201, !202}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !167, file: !6, line: 199, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !6, line: 165, baseType: !5)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !167, file: !6, line: 200, baseType: !17, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !167, file: !6, line: 201, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !175, line: 34, baseType: !176)
!175 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !175, line: 34, flags: DIFlagFwdDecl)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !167, file: !6, line: 202, baseType: !178, size: 64, offset: 128)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !6, line: 108, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !6, line: 253, size: 832, elements: !181)
!181 = !{!182, !183, !196, !197, !199}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !180, file: !6, line: 254, baseType: !133, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !180, file: !6, line: 259, baseType: !184, size: 576, offset: 64)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !180, file: !6, line: 255, size: 576, elements: !185)
!185 = !{!186, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !184, file: !6, line: 256, baseType: !187, size: 240)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 240, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 30)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !184, file: !6, line: 257, baseType: !187, size: 240, offset: 240)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !184, file: !6, line: 258, baseType: !192, size: 64, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !193, line: 10, baseType: !194)
!193 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!194 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !195, line: 160, baseType: !119)
!195 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!196 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !180, file: !6, line: 261, baseType: !7, size: 32, offset: 640)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !180, file: !6, line: 262, baseType: !198, size: 64, offset: 672)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64, elements: !48)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !180, file: !6, line: 263, baseType: !200, size: 64, offset: 768)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !91, line: 27, baseType: !28)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !6, line: 203, baseType: !7, size: 32, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !6, line: 203, baseType: !7, size: 32, offset: 224)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !135, file: !6, line: 283, baseType: !204, size: 128, offset: 192)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !135, file: !6, line: 279, size: 128, elements: !205)
!205 = !{!206, !207, !208}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !204, file: !6, line: 280, baseType: !178, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !204, file: !6, line: 281, baseType: !17, size: 32, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !204, file: !6, line: 282, baseType: !209, size: 16, offset: 96)
!209 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !135, file: !6, line: 285, baseType: !211, size: 64, offset: 320)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !213, line: 6, flags: DIFlagFwdDecl)
!213 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!214 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !135, file: !6, line: 286, baseType: !215, size: 192, offset: 384)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !6, line: 111, baseType: !216)
!216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !6, line: 266, size: 192, elements: !217)
!217 = !{!218, !219, !220, !221, !222, !223}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !216, file: !6, line: 267, baseType: !155, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !216, file: !6, line: 268, baseType: !209, size: 16, offset: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !216, file: !6, line: 269, baseType: !121, size: 8, offset: 80)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !216, file: !6, line: 270, baseType: !121, size: 8, offset: 88)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !216, file: !6, line: 271, baseType: !17, size: 32, offset: 96)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !216, file: !6, line: 272, baseType: !209, size: 16, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !135, file: !6, line: 287, baseType: !7, size: 32, offset: 576)
!225 = !DILocalVariable(name: "l", arg: 1, scope: !130, file: !16, line: 48, type: !133)
!226 = !DILocation(line: 48, column: 26, scope: !130)
!227 = !DILocation(line: 53, column: 11, scope: !130)
!228 = !DILocation(line: 54, column: 12, scope: !130)
!229 = !DILocation(line: 56, column: 1, scope: !130)
!230 = distinct !DISubprogram(name: "lwan_status_shutdown", scope: !16, file: !16, line: 59, type: !131, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!231 = !DILocalVariable(name: "l", arg: 1, scope: !230, file: !16, line: 59, type: !133)
!232 = !DILocation(line: 59, column: 30, scope: !230)
!233 = !DILocation(line: 61, column: 1, scope: !230)
!234 = distinct !DISubprogram(name: "lwan_status_debug_debug", scope: !16, file: !16, line: 188, type: !235, scopeLine: 188, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!235 = !DISubroutineType(types: !236)
!236 = !{null, !83, !237, !83, !83, null}
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!238 = !DILocalVariable(name: "file", arg: 1, scope: !234, file: !16, line: 188, type: !83)
!239 = !DILocation(line: 188, column: 1, scope: !234)
!240 = !DILocalVariable(name: "line", arg: 2, scope: !234, file: !16, line: 188, type: !237)
!241 = !DILocalVariable(name: "func", arg: 3, scope: !234, file: !16, line: 188, type: !83)
!242 = !DILocalVariable(name: "fmt", arg: 4, scope: !234, file: !16, line: 188, type: !83)
!243 = !DILocation(line: 188, column: 1, scope: !244)
!244 = distinct !DILexicalBlock(scope: !234, file: !16, line: 188, column: 1)
!245 = !DILocalVariable(name: "values", scope: !246, file: !16, line: 188, type: !247)
!246 = distinct !DILexicalBlock(scope: !244, file: !16, line: 188, column: 1)
!247 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !248, line: 52, baseType: !249)
!248 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !250, line: 14, baseType: !251)
!250 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !252, baseType: !253)
!252 = !DIFile(filename: "common/lwan-status.c", directory: "/home/raj/lwan")
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 192, elements: !260)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !255)
!255 = !{!256, !257, !258, !259}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !254, file: !252, line: 188, baseType: !17, size: 32)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !254, file: !252, line: 188, baseType: !17, size: 32, offset: 32)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !254, file: !252, line: 188, baseType: !157, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !254, file: !252, line: 188, baseType: !157, size: 64, offset: 128)
!260 = !{!261}
!261 = !DISubrange(count: 1)
!262 = !DILocation(line: 188, column: 1, scope: !246)
!263 = distinct !DISubprogram(name: "status_out", scope: !16, file: !16, line: 141, type: !264, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!264 = !DISubroutineType(types: !265)
!265 = !{null, !83, !237, !83, !85, !83, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!267 = !DILocalVariable(name: "file", arg: 1, scope: !263, file: !16, line: 141, type: !83)
!268 = !DILocation(line: 141, column: 24, scope: !263)
!269 = !DILocalVariable(name: "line", arg: 2, scope: !263, file: !16, line: 141, type: !237)
!270 = !DILocation(line: 141, column: 40, scope: !263)
!271 = !DILocalVariable(name: "func", arg: 3, scope: !263, file: !16, line: 141, type: !83)
!272 = !DILocation(line: 141, column: 58, scope: !263)
!273 = !DILocalVariable(name: "type", arg: 4, scope: !263, file: !16, line: 142, type: !85)
!274 = !DILocation(line: 142, column: 32, scope: !263)
!275 = !DILocalVariable(name: "fmt", arg: 5, scope: !263, file: !16, line: 142, type: !83)
!276 = !DILocation(line: 142, column: 50, scope: !263)
!277 = !DILocalVariable(name: "values", arg: 6, scope: !263, file: !16, line: 142, type: !266)
!278 = !DILocation(line: 142, column: 63, scope: !263)
!279 = !DILocalVariable(name: "output", scope: !263, file: !16, line: 145, type: !155)
!280 = !DILocation(line: 145, column: 11, scope: !263)
!281 = !DILocalVariable(name: "len", scope: !263, file: !16, line: 146, type: !7)
!282 = !DILocation(line: 146, column: 9, scope: !263)
!283 = !DILocation(line: 148, column: 30, scope: !263)
!284 = !DILocation(line: 148, column: 35, scope: !263)
!285 = !DILocation(line: 148, column: 11, scope: !263)
!286 = !DILocation(line: 148, column: 9, scope: !263)
!287 = !DILocation(line: 149, column: 9, scope: !288)
!288 = distinct !DILexicalBlock(scope: !263, file: !16, line: 149, column: 9)
!289 = !DILocation(line: 149, column: 13, scope: !288)
!290 = !DILocation(line: 149, column: 9, scope: !263)
!291 = !DILocation(line: 153, column: 24, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !16, line: 149, column: 19)
!293 = !DILocation(line: 153, column: 30, scope: !292)
!294 = !DILocation(line: 153, column: 36, scope: !292)
!295 = !DILocation(line: 153, column: 42, scope: !292)
!296 = !DILocation(line: 153, column: 48, scope: !292)
!297 = !DILocation(line: 153, column: 64, scope: !292)
!298 = !DILocation(line: 153, column: 56, scope: !292)
!299 = !DILocation(line: 153, column: 9, scope: !292)
!300 = !DILocation(line: 155, column: 14, scope: !292)
!301 = !DILocation(line: 155, column: 9, scope: !292)
!302 = !DILocation(line: 156, column: 5, scope: !292)
!303 = !DILocation(line: 157, column: 1, scope: !263)
!304 = distinct !DISubprogram(name: "lwan_status_info_debug", scope: !16, file: !16, line: 191, type: !235, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!305 = !DILocalVariable(name: "file", arg: 1, scope: !304, file: !16, line: 191, type: !83)
!306 = !DILocation(line: 191, column: 1, scope: !304)
!307 = !DILocalVariable(name: "line", arg: 2, scope: !304, file: !16, line: 191, type: !237)
!308 = !DILocalVariable(name: "func", arg: 3, scope: !304, file: !16, line: 191, type: !83)
!309 = !DILocalVariable(name: "fmt", arg: 4, scope: !304, file: !16, line: 191, type: !83)
!310 = !DILocation(line: 191, column: 1, scope: !311)
!311 = distinct !DILexicalBlock(scope: !304, file: !16, line: 191, column: 1)
!312 = !DILocalVariable(name: "values", scope: !313, file: !16, line: 191, type: !247)
!313 = distinct !DILexicalBlock(scope: !311, file: !16, line: 191, column: 1)
!314 = !DILocation(line: 191, column: 1, scope: !313)
!315 = distinct !DISubprogram(name: "lwan_status_warning_debug", scope: !16, file: !16, line: 192, type: !235, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!316 = !DILocalVariable(name: "file", arg: 1, scope: !315, file: !16, line: 192, type: !83)
!317 = !DILocation(line: 192, column: 1, scope: !315)
!318 = !DILocalVariable(name: "line", arg: 2, scope: !315, file: !16, line: 192, type: !237)
!319 = !DILocalVariable(name: "func", arg: 3, scope: !315, file: !16, line: 192, type: !83)
!320 = !DILocalVariable(name: "fmt", arg: 4, scope: !315, file: !16, line: 192, type: !83)
!321 = !DILocation(line: 192, column: 1, scope: !322)
!322 = distinct !DILexicalBlock(scope: !315, file: !16, line: 192, column: 1)
!323 = !DILocalVariable(name: "values", scope: !324, file: !16, line: 192, type: !247)
!324 = distinct !DILexicalBlock(scope: !322, file: !16, line: 192, column: 1)
!325 = !DILocation(line: 192, column: 1, scope: !324)
!326 = distinct !DISubprogram(name: "lwan_status_error_debug", scope: !16, file: !16, line: 193, type: !235, scopeLine: 193, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!327 = !DILocalVariable(name: "file", arg: 1, scope: !326, file: !16, line: 193, type: !83)
!328 = !DILocation(line: 193, column: 1, scope: !326)
!329 = !DILocalVariable(name: "line", arg: 2, scope: !326, file: !16, line: 193, type: !237)
!330 = !DILocalVariable(name: "func", arg: 3, scope: !326, file: !16, line: 193, type: !83)
!331 = !DILocalVariable(name: "fmt", arg: 4, scope: !326, file: !16, line: 193, type: !83)
!332 = !DILocation(line: 193, column: 1, scope: !333)
!333 = distinct !DILexicalBlock(scope: !326, file: !16, line: 193, column: 1)
!334 = !DILocalVariable(name: "values", scope: !335, file: !16, line: 193, type: !247)
!335 = distinct !DILexicalBlock(scope: !333, file: !16, line: 193, column: 1)
!336 = !DILocation(line: 193, column: 1, scope: !335)
!337 = distinct !DISubprogram(name: "lwan_status_perror_debug", scope: !16, file: !16, line: 194, type: !235, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!338 = !DILocalVariable(name: "file", arg: 1, scope: !337, file: !16, line: 194, type: !83)
!339 = !DILocation(line: 194, column: 1, scope: !337)
!340 = !DILocalVariable(name: "line", arg: 2, scope: !337, file: !16, line: 194, type: !237)
!341 = !DILocalVariable(name: "func", arg: 3, scope: !337, file: !16, line: 194, type: !83)
!342 = !DILocalVariable(name: "fmt", arg: 4, scope: !337, file: !16, line: 194, type: !83)
!343 = !DILocation(line: 194, column: 1, scope: !344)
!344 = distinct !DILexicalBlock(scope: !337, file: !16, line: 194, column: 1)
!345 = !DILocalVariable(name: "values", scope: !346, file: !16, line: 194, type: !247)
!346 = distinct !DILexicalBlock(scope: !344, file: !16, line: 194, column: 1)
!347 = !DILocation(line: 194, column: 1, scope: !346)
!348 = distinct !DISubprogram(name: "lwan_status_critical_debug", scope: !16, file: !16, line: 196, type: !235, scopeLine: 196, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!349 = !DILocalVariable(name: "file", arg: 1, scope: !348, file: !16, line: 196, type: !83)
!350 = !DILocation(line: 196, column: 1, scope: !348)
!351 = !DILocalVariable(name: "line", arg: 2, scope: !348, file: !16, line: 196, type: !237)
!352 = !DILocalVariable(name: "func", arg: 3, scope: !348, file: !16, line: 196, type: !83)
!353 = !DILocalVariable(name: "fmt", arg: 4, scope: !348, file: !16, line: 196, type: !83)
!354 = !DILocation(line: 196, column: 1, scope: !355)
!355 = distinct !DILexicalBlock(scope: !348, file: !16, line: 196, column: 1)
!356 = !DILocalVariable(name: "values", scope: !357, file: !16, line: 196, type: !247)
!357 = distinct !DILexicalBlock(scope: !355, file: !16, line: 196, column: 1)
!358 = !DILocation(line: 196, column: 1, scope: !357)
!359 = !DILocation(line: 196, column: 1, scope: !360)
!360 = distinct !DILexicalBlock(scope: !348, file: !16, line: 196, column: 1)
!361 = distinct !DISubprogram(name: "lwan_status_critical_perror_debug", scope: !16, file: !16, line: 197, type: !235, scopeLine: 197, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !87)
!362 = !DILocalVariable(name: "file", arg: 1, scope: !361, file: !16, line: 197, type: !83)
!363 = !DILocation(line: 197, column: 1, scope: !361)
!364 = !DILocalVariable(name: "line", arg: 2, scope: !361, file: !16, line: 197, type: !237)
!365 = !DILocalVariable(name: "func", arg: 3, scope: !361, file: !16, line: 197, type: !83)
!366 = !DILocalVariable(name: "fmt", arg: 4, scope: !361, file: !16, line: 197, type: !83)
!367 = !DILocation(line: 197, column: 1, scope: !368)
!368 = distinct !DILexicalBlock(scope: !361, file: !16, line: 197, column: 1)
!369 = !DILocalVariable(name: "values", scope: !370, file: !16, line: 197, type: !247)
!370 = distinct !DILexicalBlock(scope: !368, file: !16, line: 197, column: 1)
!371 = !DILocation(line: 197, column: 1, scope: !370)
!372 = !DILocation(line: 197, column: 1, scope: !373)
!373 = distinct !DILexicalBlock(scope: !361, file: !16, line: 197, column: 1)
!374 = distinct !DISubprogram(name: "status_out_msg", scope: !16, file: !16, line: 99, type: !375, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!375 = !DISubroutineType(types: !376)
!376 = !{null, !83, !237, !83, !85, !83, !26}
!377 = !DILocalVariable(name: "file", arg: 1, scope: !374, file: !16, line: 99, type: !83)
!378 = !DILocation(line: 99, column: 28, scope: !374)
!379 = !DILocalVariable(name: "line", arg: 2, scope: !374, file: !16, line: 99, type: !237)
!380 = !DILocation(line: 99, column: 44, scope: !374)
!381 = !DILocalVariable(name: "func", arg: 3, scope: !374, file: !16, line: 99, type: !83)
!382 = !DILocation(line: 99, column: 62, scope: !374)
!383 = !DILocalVariable(name: "type", arg: 4, scope: !374, file: !16, line: 100, type: !85)
!384 = !DILocation(line: 100, column: 36, scope: !374)
!385 = !DILocalVariable(name: "msg", arg: 5, scope: !374, file: !16, line: 100, type: !83)
!386 = !DILocation(line: 100, column: 54, scope: !374)
!387 = !DILocalVariable(name: "msg_len", arg: 6, scope: !374, file: !16, line: 100, type: !26)
!388 = !DILocation(line: 100, column: 66, scope: !374)
!389 = !DILocalVariable(name: "error_number", scope: !374, file: !16, line: 103, type: !7)
!390 = !DILocation(line: 103, column: 9, scope: !374)
!391 = !DILocation(line: 103, column: 24, scope: !374)
!392 = !DILocalVariable(name: "start_len", scope: !374, file: !16, line: 104, type: !26)
!393 = !DILocation(line: 104, column: 12, scope: !374)
!394 = !DILocalVariable(name: "end_len", scope: !374, file: !16, line: 104, type: !26)
!395 = !DILocation(line: 104, column: 23, scope: !374)
!396 = !DILocalVariable(name: "start_color", scope: !374, file: !16, line: 105, type: !83)
!397 = !DILocation(line: 105, column: 17, scope: !374)
!398 = !DILocation(line: 105, column: 56, scope: !374)
!399 = !DILocation(line: 105, column: 31, scope: !374)
!400 = !DILocalVariable(name: "end_color", scope: !374, file: !16, line: 106, type: !83)
!401 = !DILocation(line: 106, column: 17, scope: !374)
!402 = !DILocation(line: 106, column: 52, scope: !374)
!403 = !DILocation(line: 106, column: 29, scope: !374)
!404 = !DILocation(line: 108, column: 9, scope: !405)
!405 = distinct !DILexicalBlock(scope: !374, file: !16, line: 108, column: 9)
!406 = !DILocation(line: 108, column: 9, scope: !374)
!407 = !DILocation(line: 109, column: 9, scope: !405)
!408 = !DILocation(line: 112, column: 13, scope: !374)
!409 = !DILocation(line: 112, column: 45, scope: !374)
!410 = !DILocation(line: 112, column: 5, scope: !374)
!411 = !DILocation(line: 113, column: 13, scope: !374)
!412 = !DILocation(line: 113, column: 54, scope: !374)
!413 = !DILocation(line: 113, column: 45, scope: !374)
!414 = !DILocation(line: 113, column: 61, scope: !374)
!415 = !DILocation(line: 113, column: 5, scope: !374)
!416 = !DILocation(line: 114, column: 13, scope: !374)
!417 = !DILocation(line: 114, column: 45, scope: !374)
!418 = !DILocation(line: 114, column: 5, scope: !374)
!419 = !DILocation(line: 115, column: 13, scope: !374)
!420 = !DILocation(line: 115, column: 5, scope: !374)
!421 = !DILocation(line: 118, column: 12, scope: !374)
!422 = !DILocation(line: 118, column: 25, scope: !374)
!423 = !DILocation(line: 118, column: 39, scope: !374)
!424 = !DILocation(line: 118, column: 5, scope: !374)
!425 = !DILocation(line: 119, column: 12, scope: !374)
!426 = !DILocation(line: 119, column: 17, scope: !374)
!427 = !DILocation(line: 119, column: 29, scope: !374)
!428 = !DILocation(line: 119, column: 5, scope: !374)
!429 = !DILocation(line: 121, column: 9, scope: !430)
!430 = distinct !DILexicalBlock(scope: !374, file: !16, line: 121, column: 9)
!431 = !DILocation(line: 121, column: 14, scope: !430)
!432 = !DILocation(line: 121, column: 9, scope: !374)
!433 = !DILocalVariable(name: "buffer", scope: !434, file: !16, line: 122, type: !435)
!434 = distinct !DILexicalBlock(scope: !430, file: !16, line: 121, column: 31)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !33, size: 4096, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 512)
!438 = !DILocation(line: 122, column: 14, scope: !434)
!439 = !DILocalVariable(name: "error_msg", scope: !434, file: !16, line: 123, type: !155)
!440 = !DILocation(line: 123, column: 15, scope: !434)
!441 = !DILocation(line: 123, column: 38, scope: !434)
!442 = !DILocation(line: 123, column: 52, scope: !434)
!443 = !DILocation(line: 123, column: 27, scope: !434)
!444 = !DILocation(line: 124, column: 20, scope: !434)
!445 = !DILocation(line: 124, column: 9, scope: !434)
!446 = !DILocation(line: 125, column: 20, scope: !434)
!447 = !DILocation(line: 125, column: 9, scope: !434)
!448 = !DILocation(line: 126, column: 16, scope: !434)
!449 = !DILocation(line: 126, column: 34, scope: !434)
!450 = !DILocation(line: 126, column: 27, scope: !434)
!451 = !DILocation(line: 126, column: 49, scope: !434)
!452 = !DILocation(line: 126, column: 9, scope: !434)
!453 = !DILocation(line: 127, column: 5, scope: !434)
!454 = !DILocation(line: 129, column: 16, scope: !374)
!455 = !DILocation(line: 129, column: 5, scope: !374)
!456 = !DILocation(line: 130, column: 12, scope: !374)
!457 = !DILocation(line: 130, column: 23, scope: !374)
!458 = !DILocation(line: 130, column: 35, scope: !374)
!459 = !DILocation(line: 130, column: 5, scope: !374)
!460 = !DILocation(line: 131, column: 17, scope: !374)
!461 = !DILocation(line: 131, column: 5, scope: !374)
!462 = !DILocation(line: 133, column: 9, scope: !463)
!463 = distinct !DILexicalBlock(scope: !374, file: !16, line: 133, column: 9)
!464 = !DILocation(line: 133, column: 9, scope: !374)
!465 = !DILocation(line: 134, column: 9, scope: !463)
!466 = !DILocation(line: 135, column: 1, scope: !374)
!467 = distinct !DISubprogram(name: "get_color_start_for_type", scope: !16, file: !16, line: 64, type: !81, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !87)
!468 = !DILocalVariable(name: "type", arg: 1, scope: !467, file: !16, line: 64, type: !85)
!469 = !DILocation(line: 64, column: 45, scope: !467)
!470 = !DILocalVariable(name: "len_out", arg: 2, scope: !467, file: !16, line: 64, type: !86)
!471 = !DILocation(line: 64, column: 59, scope: !467)
!472 = !DILocalVariable(name: "retval", scope: !467, file: !16, line: 66, type: !83)
!473 = !DILocation(line: 66, column: 17, scope: !467)
!474 = !DILocation(line: 68, column: 9, scope: !475)
!475 = distinct !DILexicalBlock(scope: !467, file: !16, line: 68, column: 9)
!476 = !DILocation(line: 68, column: 14, scope: !475)
!477 = !DILocation(line: 68, column: 9, scope: !467)
!478 = !DILocation(line: 69, column: 16, scope: !475)
!479 = !DILocation(line: 69, column: 9, scope: !475)
!480 = !DILocation(line: 70, column: 14, scope: !481)
!481 = distinct !DILexicalBlock(scope: !475, file: !16, line: 70, column: 14)
!482 = !DILocation(line: 70, column: 19, scope: !481)
!483 = !DILocation(line: 70, column: 14, scope: !475)
!484 = !DILocation(line: 71, column: 16, scope: !481)
!485 = !DILocation(line: 71, column: 9, scope: !481)
!486 = !DILocation(line: 72, column: 14, scope: !487)
!487 = distinct !DILexicalBlock(scope: !481, file: !16, line: 72, column: 14)
!488 = !DILocation(line: 72, column: 19, scope: !487)
!489 = !DILocation(line: 72, column: 14, scope: !481)
!490 = !DILocation(line: 73, column: 16, scope: !487)
!491 = !DILocation(line: 73, column: 9, scope: !487)
!492 = !DILocation(line: 74, column: 14, scope: !493)
!493 = distinct !DILexicalBlock(scope: !487, file: !16, line: 74, column: 14)
!494 = !DILocation(line: 74, column: 19, scope: !493)
!495 = !DILocation(line: 74, column: 14, scope: !487)
!496 = !DILocation(line: 75, column: 16, scope: !493)
!497 = !DILocation(line: 75, column: 9, scope: !493)
!498 = !DILocation(line: 76, column: 14, scope: !499)
!499 = distinct !DILexicalBlock(scope: !493, file: !16, line: 76, column: 14)
!500 = !DILocation(line: 76, column: 19, scope: !499)
!501 = !DILocation(line: 76, column: 14, scope: !493)
!502 = !DILocation(line: 77, column: 16, scope: !499)
!503 = !DILocation(line: 77, column: 9, scope: !499)
!504 = !DILocation(line: 79, column: 16, scope: !499)
!505 = !DILocation(line: 81, column: 23, scope: !467)
!506 = !DILocation(line: 81, column: 16, scope: !467)
!507 = !DILocation(line: 81, column: 6, scope: !467)
!508 = !DILocation(line: 81, column: 14, scope: !467)
!509 = !DILocation(line: 83, column: 12, scope: !467)
!510 = !DILocation(line: 83, column: 5, scope: !467)
!511 = !DILocalVariable(name: "type", arg: 1, scope: !80, file: !16, line: 87, type: !85)
!512 = !DILocation(line: 87, column: 43, scope: !80)
!513 = !DILocalVariable(name: "len_out", arg: 2, scope: !80, file: !16, line: 88, type: !86)
!514 = !DILocation(line: 88, column: 33, scope: !80)
!515 = !DILocation(line: 91, column: 23, scope: !80)
!516 = !DILocation(line: 91, column: 16, scope: !80)
!517 = !DILocation(line: 91, column: 6, scope: !80)
!518 = !DILocation(line: 91, column: 14, scope: !80)
!519 = !DILocation(line: 92, column: 12, scope: !80)
!520 = !DILocation(line: 92, column: 5, scope: !80)
