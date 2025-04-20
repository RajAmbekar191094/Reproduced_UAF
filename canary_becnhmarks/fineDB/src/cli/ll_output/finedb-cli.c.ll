; ModuleID = 'finedb-cli.c'
source_filename = "finedb-cli.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cli_s = type { ptr, ptr, i32, i32 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ybin_s = type { ptr, i64 }

@.str = private unnamed_addr constant [5 x i8] c"help\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [4 x i8] c"use\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [4 x i8] c"get\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [4 x i8] c"del\00", align 1, !dbg !14
@.str.4 = private unnamed_addr constant [4 x i8] c"put\00", align 1, !dbg !16
@.str.5 = private unnamed_addr constant [4 x i8] c"add\00", align 1, !dbg !18
@.str.6 = private unnamed_addr constant [7 x i8] c"update\00", align 1, !dbg !20
@.str.7 = private unnamed_addr constant [4 x i8] c"inc\00", align 1, !dbg !25
@.str.8 = private unnamed_addr constant [4 x i8] c"dec\00", align 1, !dbg !27
@.str.9 = private unnamed_addr constant [6 x i8] c"start\00", align 1, !dbg !29
@.str.10 = private unnamed_addr constant [7 x i8] c"commit\00", align 1, !dbg !34
@.str.11 = private unnamed_addr constant [9 x i8] c"rollback\00", align 1, !dbg !36
@.str.12 = private unnamed_addr constant [5 x i8] c"ping\00", align 1, !dbg !41
@.str.13 = private unnamed_addr constant [5 x i8] c"sync\00", align 1, !dbg !43
@.str.14 = private unnamed_addr constant [6 x i8] c"async\00", align 1, !dbg !45
@.str.15 = private unnamed_addr constant [10 x i8] c"autocheck\00", align 1, !dbg !47
@commands = dso_local local_unnamed_addr global [17 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr null], align 16, !dbg !52
@.str.16 = private unnamed_addr constant [10 x i8] c"localhost\00", align 1, !dbg !78
@.str.17 = private unnamed_addr constant [2 x i8] c"-\00", align 1, !dbg !80
@.str.18 = private unnamed_addr constant [4 x i8] c"red\00", align 1, !dbg !85
@.str.19 = private unnamed_addr constant [14 x i8] c"Memory error.\00", align 1, !dbg !87
@.str.21 = private unnamed_addr constant [47 x i8] c"Unable to connect to server '%s' on port '%d'.\00", align 1, !dbg !94
@.str.22 = private unnamed_addr constant [5 x i8] c"HOME\00", align 1, !dbg !99
@.str.23 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1, !dbg !101
@.str.24 = private unnamed_addr constant [20 x i8] c".finedb-cli.history\00", align 1, !dbg !103
@.str.25 = private unnamed_addr constant [3 x i8] c"w+\00", align 1, !dbg !108
@.str.26 = private unnamed_addr constant [6 x i8] c"%s > \00", align 1, !dbg !113
@.str.27 = private unnamed_addr constant [8 x i8] c"default\00", align 1, !dbg !115
@.str.28 = private unnamed_addr constant [5 x i8] c"exit\00", align 1, !dbg !120
@.str.29 = private unnamed_addr constant [5 x i8] c"quit\00", align 1, !dbg !122
@.str.30 = private unnamed_addr constant [5 x i8] c"stop\00", align 1, !dbg !124
@.str.31 = private unnamed_addr constant [13 x i8] c"Bad command.\00", align 1, !dbg !126
@.str.32 = private unnamed_addr constant [6 x i8] c"faint\00", align 1, !dbg !131
@.str.33 = private unnamed_addr constant [249 x i8] c"Usage:    finedb-cli [hostname]\0ACommands:\0A    get \22key1\22\0A    put \22key\22 \22data\22\0A    add \22key\22 \22data\22\0A    update \22key\22 \22data\22\0A    del \22key\22\0A    use \22dbname\22\0A    start\0A    commit\0A    rollback\0A    ping\0A    sync\0A    async\0A    autocheck [on|off]\0A    quit\0A\00", align 1, !dbg !133
@.str.34 = private unnamed_addr constant [41 x i8] c"Unable to use the default database (%d).\00", align 1, !dbg !138
@.str.35 = private unnamed_addr constant [25 x i8] c"Use the default database\00", align 1, !dbg !143
@.str.36 = private unnamed_addr constant [38 x i8] c"Unable to use the '%s' database (%d).\00", align 1, !dbg !148
@.str.37 = private unnamed_addr constant [22 x i8] c"Use the '%s' database\00", align 1, !dbg !153
@.str.38 = private unnamed_addr constant [22 x i8] c"Set synchronous mode.\00", align 1, !dbg !158
@.str.39 = private unnamed_addr constant [23 x i8] c"Set asynchronous mode.\00", align 1, !dbg !160
@.str.40 = private unnamed_addr constant [26 x i8] c"Bad key format (no quote)\00", align 1, !dbg !165
@.str.41 = private unnamed_addr constant [8 x i8] c"Bad key\00", align 1, !dbg !170
@.str.42 = private unnamed_addr constant [35 x i8] c"Bad key format (no trailing quote)\00", align 1, !dbg !172
@.str.43 = private unnamed_addr constant [29 x i8] c"Unable to get key '%s' (%d).\00", align 1, !dbg !177
@.str.44 = private unnamed_addr constant [9 x i8] c"No data.\00", align 1, !dbg !182
@.str.46 = private unnamed_addr constant [27 x i8] c"Unable to delete key '%s'.\00", align 1, !dbg !186
@.str.47 = private unnamed_addr constant [3 x i8] c"OK\00", align 1, !dbg !191
@.str.48 = private unnamed_addr constant [13 x i8] c"Missing data\00", align 1, !dbg !193
@.str.49 = private unnamed_addr constant [27 x i8] c"Bad data format (no quote)\00", align 1, !dbg !195
@.str.50 = private unnamed_addr constant [36 x i8] c"Bad data format (no trailing quote)\00", align 1, !dbg !197
@.str.51 = private unnamed_addr constant [23 x i8] c"Unable to %s key '%s'.\00", align 1, !dbg !202
@.str.52 = private unnamed_addr constant [54 x i8] c"A transaction is already open. It will be rollbacked.\00", align 1, !dbg !204
@.str.53 = private unnamed_addr constant [14 x i8] c"Server error.\00", align 1, !dbg !209
@.str.54 = private unnamed_addr constant [21 x i8] c"Transaction started.\00", align 1, !dbg !211
@.str.55 = private unnamed_addr constant [23 x i8] c"No opened transaction.\00", align 1, !dbg !216
@.str.56 = private unnamed_addr constant [21 x i8] c"Transaction stopped.\00", align 1, !dbg !218
@.str.57 = private unnamed_addr constant [3 x i8] c"on\00", align 1, !dbg !220
@.str.58 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !222
@.str.59 = private unnamed_addr constant [5 x i8] c"true\00", align 1, !dbg !224
@.str.60 = private unnamed_addr constant [2 x i8] c"1\00", align 1, !dbg !226
@.str.61 = private unnamed_addr constant [23 x i8] c"autocheck option is %s\00", align 1, !dbg !228
@.str.62 = private unnamed_addr constant [10 x i8] c"activated\00", align 1, !dbg !230
@.str.63 = private unnamed_addr constant [12 x i8] c"deactivated\00", align 1, !dbg !232
@.str.64 = private unnamed_addr constant [27 x i8] c"Lost connection to server.\00", align 1, !dbg !237
@.str.65 = private unnamed_addr constant [44 x i8] c"Reconnected to server. Transaction is lost.\00", align 1, !dbg !239
@.str.66 = private unnamed_addr constant [23 x i8] c"Reconnected to server.\00", align 1, !dbg !244
@.str.67 = private unnamed_addr constant [5 x i8] c"bold\00", align 1, !dbg !246
@.str.68 = private unnamed_addr constant [10 x i8] c"underline\00", align 1, !dbg !248
@.str.70 = private unnamed_addr constant [7 x i8] c"%c[%dm\00", align 1, !dbg !252
@.str.71 = private unnamed_addr constant [6 x i8] c"%c[0m\00", align 1, !dbg !254
@.str.72 = private unnamed_addr constant [6 x i8] c"black\00", align 1, !dbg !256
@.str.73 = private unnamed_addr constant [6 x i8] c"green\00", align 1, !dbg !258
@.str.74 = private unnamed_addr constant [7 x i8] c"yellow\00", align 1, !dbg !260
@.str.75 = private unnamed_addr constant [5 x i8] c"blue\00", align 1, !dbg !262
@.str.76 = private unnamed_addr constant [8 x i8] c"magenta\00", align 1, !dbg !264
@.str.77 = private unnamed_addr constant [5 x i8] c"cyan\00", align 1, !dbg !266
@.str.79 = private unnamed_addr constant [8 x i8] c"%c[9%dm\00", align 1, !dbg !270
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #0 !dbg !282 {
  %3 = alloca %struct.cli_s, align 8
  %4 = alloca [4096 x i8], align 16
  %5 = alloca [4096 x i8], align 16
  call void @llvm.dbg.value(metadata i32 %0, metadata !288, metadata !DIExpression()), !dbg !388
  call void @llvm.dbg.value(metadata ptr %1, metadata !289, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20, !dbg !389
  call void @llvm.dbg.declare(metadata ptr %3, metadata !290, metadata !DIExpression()), !dbg !390
  call void @llvm.dbg.value(metadata ptr @.str.16, metadata !309, metadata !DIExpression()), !dbg !388
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %4) #20, !dbg !391
  call void @llvm.dbg.declare(metadata ptr %4, metadata !310, metadata !DIExpression()), !dbg !392
  call void @llvm.dbg.value(metadata i32 1, metadata !314, metadata !DIExpression()), !dbg !388
  call void @bzero(ptr noundef nonnull %3, i64 noundef 24) #20, !dbg !393
  %6 = getelementptr inbounds %struct.cli_s, ptr %3, i64 0, i32 3, !dbg !394
  store i32 1, ptr %6, align 4, !dbg !395, !tbaa !396
  switch i32 %0, label %18 [
    i32 2, label %7
    i32 3, label %13
  ], !dbg !401

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !403
  %9 = load ptr, ptr %8, align 8, !dbg !403, !tbaa !404
  %10 = load i8, ptr %9, align 1, !dbg !403, !tbaa !405
  %11 = icmp eq i8 %10, 45, !dbg !406
  %12 = select i1 %11, ptr @.str.16, ptr %9, !dbg !407
  call void @llvm.dbg.value(metadata ptr %12, metadata !309, metadata !DIExpression()), !dbg !388
  br label %18, !dbg !408

13:                                               ; preds = %2
  %14 = getelementptr inbounds ptr, ptr %1, i64 2, !dbg !410
  %15 = load ptr, ptr %14, align 8, !dbg !410, !tbaa !404
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(2) @.str.17) #21, !dbg !411
  %17 = icmp eq i32 %16, 0, !dbg !411
  br label %18, !dbg !412

18:                                               ; preds = %2, %7, %13
  %19 = phi ptr [ @.str.16, %13 ], [ %12, %7 ], [ @.str.16, %2 ]
  %20 = phi i1 [ %17, %13 ], [ false, %7 ], [ false, %2 ], !dbg !388
  call void @llvm.dbg.value(metadata i32 poison, metadata !314, metadata !DIExpression()), !dbg !388
  %21 = tail call ptr @finedb_create(ptr noundef nonnull %19, i16 noundef zeroext 11138) #20, !dbg !413
  store ptr %21, ptr %3, align 8, !dbg !415, !tbaa !416
  %22 = icmp eq ptr %21, null, !dbg !417
  br i1 %22, label %23, label %25, !dbg !418

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19), !dbg !419
  %24 = tail call i32 @putchar(i32 10), !dbg !421
  tail call void @exit(i32 noundef 1) #22, !dbg !422
  unreachable, !dbg !422

25:                                               ; preds = %18
  %26 = tail call i32 @finedb_connect(ptr noundef nonnull %21) #20, !dbg !423
  %27 = icmp eq i32 %26, 0, !dbg !425
  br i1 %27, label %32, label %28, !dbg !426

28:                                               ; preds = %25
  %29 = getelementptr inbounds ptr, ptr %1, i64 1, !dbg !427
  %30 = load ptr, ptr %29, align 8, !dbg !427, !tbaa !404
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, ptr noundef %30, i32 noundef 11138), !dbg !429
  %31 = tail call i32 @putchar(i32 10), !dbg !430
  tail call void @exit(i32 noundef 2) #22, !dbg !431
  unreachable, !dbg !431

32:                                               ; preds = %25
  br i1 %20, label %44, label %33, !dbg !432

33:                                               ; preds = %32
  call void @llvm.dbg.value(metadata ptr null, metadata !315, metadata !DIExpression()), !dbg !433
  %34 = tail call ptr @getenv(ptr noundef nonnull @.str.22) #20, !dbg !434
  call void @llvm.dbg.value(metadata ptr %34, metadata !315, metadata !DIExpression()), !dbg !433
  %35 = icmp eq ptr %34, null, !dbg !435
  br i1 %35, label %44, label %36, !dbg !436

36:                                               ; preds = %33
  %37 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %4, i64 noundef 4096, ptr noundef nonnull @.str.23, ptr noundef nonnull %34, ptr noundef nonnull @.str.24) #20, !dbg !437
  %38 = call noalias ptr @fopen(ptr noundef nonnull %4, ptr noundef nonnull @.str.25), !dbg !438
  call void @llvm.dbg.value(metadata ptr %38, metadata !318, metadata !DIExpression()), !dbg !440
  %39 = icmp eq ptr %38, null, !dbg !441
  br i1 %39, label %43, label %40, !dbg !442

40:                                               ; preds = %36
  %41 = tail call i32 @fclose(ptr noundef nonnull %38), !dbg !443
  %42 = tail call i32 @linenoiseHistoryLoad(ptr noundef nonnull @.str.24) #20, !dbg !445
  br label %43, !dbg !446

43:                                               ; preds = %40, %36
  tail call void @linenoiseSetCompletionCallback(ptr noundef nonnull @cli_completion) #20, !dbg !447
  br label %44, !dbg !448

44:                                               ; preds = %33, %43, %32
  %45 = getelementptr inbounds %struct.cli_s, ptr %3, i64 0, i32 1
  br label %46, !dbg !449

46:                                               ; preds = %171, %44
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #20, !dbg !450
  call void @llvm.dbg.declare(metadata ptr %5, metadata !373, metadata !DIExpression()), !dbg !451
  call void @llvm.dbg.value(metadata ptr null, metadata !377, metadata !DIExpression()), !dbg !452
  br i1 %20, label %47, label %66, !dbg !453

47:                                               ; preds = %46
  call void @llvm.dbg.value(metadata i64 0, metadata !386, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata ptr null, metadata !377, metadata !DIExpression()), !dbg !452
  %48 = call i64 @read(i32 noundef 0, ptr noundef nonnull %5, i64 noundef 4096) #20, !dbg !455
  call void @llvm.dbg.value(metadata i64 %48, metadata !380, metadata !DIExpression()), !dbg !454
  %49 = icmp sgt i64 %48, 0, !dbg !456
  br i1 %49, label %50, label %73, !dbg !457

50:                                               ; preds = %47, %63
  %51 = phi i64 [ %64, %63 ], [ %48, %47 ]
  %52 = phi i64 [ %54, %63 ], [ 0, %47 ]
  %53 = phi ptr [ %56, %63 ], [ null, %47 ]
  call void @llvm.dbg.value(metadata i64 %52, metadata !386, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata ptr %53, metadata !377, metadata !DIExpression()), !dbg !452
  %54 = add nsw i64 %51, %52, !dbg !458
  %55 = add nsw i64 %54, 1, !dbg !460
  %56 = call noalias ptr @malloc(i64 noundef %55) #23, !dbg !461
  call void @llvm.dbg.value(metadata ptr %56, metadata !378, metadata !DIExpression()), !dbg !452
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %56, ptr align 1 %53, i64 %52, i1 false), !dbg !462
  %57 = ptrtoint ptr %56 to i64, !dbg !463
  %58 = add i64 %52, %57, !dbg !464
  %59 = inttoptr i64 %58 to ptr, !dbg !465
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %59, ptr nonnull align 16 %5, i64 %51, i1 false), !dbg !466
  call void @llvm.dbg.value(metadata i64 %54, metadata !386, metadata !DIExpression()), !dbg !454
  %60 = getelementptr inbounds i8, ptr %56, i64 %54, !dbg !467
  store i8 0, ptr %60, align 1, !dbg !468, !tbaa !405
  %61 = icmp eq ptr %53, null, !dbg !469
  br i1 %61, label %63, label %62, !dbg !471

62:                                               ; preds = %50
  call void @free(ptr noundef nonnull %53) #20, !dbg !472
  br label %63, !dbg !472

63:                                               ; preds = %62, %50
  call void @llvm.dbg.value(metadata i64 %54, metadata !386, metadata !DIExpression()), !dbg !454
  call void @llvm.dbg.value(metadata ptr %56, metadata !377, metadata !DIExpression()), !dbg !452
  %64 = call i64 @read(i32 noundef 0, ptr noundef nonnull %5, i64 noundef 4096) #20, !dbg !455
  call void @llvm.dbg.value(metadata i64 %64, metadata !380, metadata !DIExpression()), !dbg !454
  %65 = icmp sgt i64 %64, 0, !dbg !456
  br i1 %65, label %50, label %73, !dbg !457, !llvm.loop !473

66:                                               ; preds = %46
  %67 = load ptr, ptr %45, align 8, !dbg !475, !tbaa !477
  %68 = icmp eq ptr %67, null, !dbg !478
  %69 = select i1 %68, ptr @.str.27, ptr %67, !dbg !478
  %70 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %5, i64 noundef 4096, ptr noundef nonnull @.str.26, ptr noundef %69) #20, !dbg !479
  %71 = call ptr @linenoise(ptr noundef nonnull %5) #20, !dbg !480
  call void @llvm.dbg.value(metadata ptr %71, metadata !377, metadata !DIExpression()), !dbg !452
  %72 = icmp eq ptr %71, null, !dbg !482
  br i1 %72, label %172, label %73, !dbg !483

73:                                               ; preds = %63, %47, %66
  %74 = phi ptr [ %71, %66 ], [ null, %47 ], [ %56, %63 ], !dbg !452
  call void @llvm.dbg.value(metadata ptr %74, metadata !377, metadata !DIExpression()), !dbg !452
  call void @llvm.dbg.value(metadata ptr %74, metadata !378, metadata !DIExpression()), !dbg !452
  br label %75, !dbg !484

75:                                               ; preds = %78, %73
  %76 = phi ptr [ %74, %73 ], [ %79, %78 ], !dbg !452
  call void @llvm.dbg.value(metadata ptr %76, metadata !378, metadata !DIExpression()), !dbg !452
  %77 = load i8, ptr %76, align 1, !dbg !484, !tbaa !405
  switch i8 %77, label %80 [
    i8 13, label %78
    i8 32, label %78
    i8 9, label %78
    i8 10, label %78
  ], !dbg !484

78:                                               ; preds = %75, %75, %75, %75
  %79 = getelementptr inbounds i8, ptr %76, i64 1, !dbg !484
  call void @llvm.dbg.value(metadata ptr %79, metadata !378, metadata !DIExpression()), !dbg !452
  br label %75, !dbg !484, !llvm.loop !485

80:                                               ; preds = %75
  call void @llvm.dbg.value(metadata ptr %76, metadata !379, metadata !DIExpression()), !dbg !452
  %81 = call i32 @linenoiseHistoryAdd(ptr noundef nonnull %76) #20, !dbg !486
  %82 = call i32 @linenoiseHistorySave(ptr noundef nonnull %4) #20, !dbg !487
  br label %83, !dbg !488

83:                                               ; preds = %86, %80
  %84 = phi ptr [ %76, %80 ], [ %87, %86 ], !dbg !452
  call void @llvm.dbg.value(metadata ptr %84, metadata !378, metadata !DIExpression()), !dbg !452
  %85 = load i8, ptr %84, align 1, !dbg !489, !tbaa !405
  switch i8 %85, label %86 [
    i8 0, label %88
    i8 32, label %88
    i8 9, label %88
    i8 10, label %88
    i8 13, label %88
  ], !dbg !490

86:                                               ; preds = %83
  %87 = getelementptr inbounds i8, ptr %84, i64 1, !dbg !491
  call void @llvm.dbg.value(metadata ptr %87, metadata !378, metadata !DIExpression()), !dbg !452
  br label %83, !dbg !488, !llvm.loop !492

88:                                               ; preds = %83, %83, %83, %83, %83
  call void @llvm.dbg.value(metadata ptr %84, metadata !378, metadata !DIExpression(DW_OP_plus_uconst, 1, DW_OP_stack_value)), !dbg !452
  store i8 0, ptr %84, align 1, !dbg !494, !tbaa !405
  br label %89, !dbg !495

89:                                               ; preds = %93, %88
  %90 = phi ptr [ %84, %88 ], [ %91, %93 ]
  %91 = getelementptr inbounds i8, ptr %90, i64 1, !dbg !452
  call void @llvm.dbg.value(metadata ptr %91, metadata !378, metadata !DIExpression()), !dbg !452
  %92 = load i8, ptr %91, align 1, !dbg !495, !tbaa !405
  switch i8 %92, label %94 [
    i8 13, label %93
    i8 32, label %93
    i8 9, label %93
    i8 10, label %93
  ], !dbg !495

93:                                               ; preds = %89, %89, %89, %89
  br label %89, !dbg !452, !llvm.loop !496

94:                                               ; preds = %89
  %95 = load i8, ptr %76, align 1, !dbg !497, !tbaa !405
  %96 = icmp eq i8 %95, 0, !dbg !499
  br i1 %96, label %171, label %97, !dbg !500

97:                                               ; preds = %94
  %98 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.28) #21, !dbg !501
  %99 = icmp eq i32 %98, 0, !dbg !501
  br i1 %99, label %103, label %100, !dbg !503

100:                                              ; preds = %97
  %101 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.29) #21, !dbg !504
  %102 = icmp eq i32 %101, 0, !dbg !504
  br i1 %102, label %103, label %104, !dbg !505

103:                                              ; preds = %100, %97
  call void @exit(i32 noundef 0) #22, !dbg !506
  unreachable, !dbg !506

104:                                              ; preds = %100
  %105 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str) #21, !dbg !507
  %106 = icmp eq i32 %105, 0, !dbg !507
  %107 = icmp eq i8 %95, 63
  %108 = select i1 %106, i1 true, i1 %107, !dbg !509
  br i1 %108, label %109, label %111, !dbg !509

109:                                              ; preds = %104
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33), !dbg !510
  %110 = call i32 @putchar(i32 10), !dbg !517
  br label %171, !dbg !518

111:                                              ; preds = %104
  %112 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.13) #21, !dbg !519
  %113 = icmp eq i32 %112, 0, !dbg !519
  br i1 %113, label %114, label %117, !dbg !521

114:                                              ; preds = %111
  call void @llvm.dbg.value(metadata ptr %3, metadata !522, metadata !DIExpression()), !dbg !528
  %115 = load ptr, ptr %3, align 8, !dbg !531, !tbaa !416
  call void @finedb_sync(ptr noundef %115) #20, !dbg !532
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38), !dbg !533
  %116 = call i32 @putchar(i32 10), !dbg !534
  br label %171, !dbg !535

117:                                              ; preds = %111
  %118 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.14) #21, !dbg !536
  %119 = icmp eq i32 %118, 0, !dbg !536
  br i1 %119, label %120, label %123, !dbg !538

120:                                              ; preds = %117
  call void @llvm.dbg.value(metadata ptr %3, metadata !539, metadata !DIExpression()), !dbg !542
  %121 = load ptr, ptr %3, align 8, !dbg !545, !tbaa !416
  call void @finedb_async(ptr noundef %121) #20, !dbg !546
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39), !dbg !547
  %122 = call i32 @putchar(i32 10), !dbg !548
  br label %171, !dbg !549

123:                                              ; preds = %117
  %124 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.1) #21, !dbg !550
  %125 = icmp eq i32 %124, 0, !dbg !550
  br i1 %125, label %126, label %127, !dbg !552

126:                                              ; preds = %123
  call void @command_use(ptr noundef nonnull %3, ptr noundef nonnull %91), !dbg !553
  br label %171, !dbg !553

127:                                              ; preds = %123
  %128 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.2) #21, !dbg !554
  %129 = icmp eq i32 %128, 0, !dbg !554
  br i1 %129, label %130, label %131, !dbg !556

130:                                              ; preds = %127
  call void @command_get(ptr noundef nonnull %3, ptr noundef nonnull %91), !dbg !557
  br label %171, !dbg !557

131:                                              ; preds = %127
  %132 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.3) #21, !dbg !558
  %133 = icmp eq i32 %132, 0, !dbg !558
  br i1 %133, label %134, label %135, !dbg !560

134:                                              ; preds = %131
  call void @command_del(ptr noundef nonnull %3, ptr noundef nonnull %91), !dbg !561
  br label %171, !dbg !561

135:                                              ; preds = %131
  %136 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.4) #21, !dbg !562
  %137 = icmp eq i32 %136, 0, !dbg !562
  br i1 %137, label %138, label %139, !dbg !564

138:                                              ; preds = %135
  call void @command_send_data(ptr noundef nonnull %3, ptr noundef nonnull %91, i32 noundef 0, i32 noundef 0), !dbg !565
  br label %171, !dbg !565

139:                                              ; preds = %135
  %140 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.5) #21, !dbg !566
  %141 = icmp eq i32 %140, 0, !dbg !566
  br i1 %141, label %142, label %143, !dbg !568

142:                                              ; preds = %139
  call void @command_send_data(ptr noundef nonnull %3, ptr noundef nonnull %91, i32 noundef 1, i32 noundef 0), !dbg !569
  br label %171, !dbg !569

143:                                              ; preds = %139
  %144 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.6) #21, !dbg !570
  %145 = icmp eq i32 %144, 0, !dbg !570
  br i1 %145, label %146, label %147, !dbg !572

146:                                              ; preds = %143
  call void @command_send_data(ptr noundef nonnull %3, ptr noundef nonnull %91, i32 noundef 0, i32 noundef 1), !dbg !573
  br label %171, !dbg !573

147:                                              ; preds = %143
  %148 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.7) #21, !dbg !574
  %149 = icmp eq i32 %148, 0, !dbg !574
  br i1 %149, label %171, label %150, !dbg !576

150:                                              ; preds = %147
  %151 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.8) #21, !dbg !577
  %152 = icmp eq i32 %151, 0, !dbg !577
  br i1 %152, label %171, label %153, !dbg !579

153:                                              ; preds = %150
  %154 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.9) #21, !dbg !580
  %155 = icmp eq i32 %154, 0, !dbg !580
  br i1 %155, label %156, label %157, !dbg !582

156:                                              ; preds = %153
  call void @command_start(ptr noundef nonnull %3), !dbg !583
  br label %171, !dbg !583

157:                                              ; preds = %153
  %158 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.30) #21, !dbg !584
  %159 = icmp eq i32 %158, 0, !dbg !584
  br i1 %159, label %160, label %161, !dbg !586

160:                                              ; preds = %157
  call void @command_stop(ptr noundef nonnull %3), !dbg !587
  br label %171, !dbg !587

161:                                              ; preds = %157
  %162 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.12) #21, !dbg !588
  %163 = icmp eq i32 %162, 0, !dbg !588
  br i1 %163, label %164, label %165, !dbg !590

164:                                              ; preds = %161
  call void @command_ping(ptr noundef nonnull %3), !dbg !591
  br label %171, !dbg !591

165:                                              ; preds = %161
  %166 = call i32 @strcasecmp(ptr noundef nonnull %76, ptr noundef nonnull @.str.15) #21, !dbg !592
  %167 = icmp eq i32 %166, 0, !dbg !592
  br i1 %167, label %168, label %169, !dbg !594

168:                                              ; preds = %165
  call void @command_autocheck(ptr noundef nonnull %3, ptr noundef nonnull %91), !dbg !595
  br label %171, !dbg !595

169:                                              ; preds = %165
  call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.31), !dbg !596
  %170 = call i32 @putchar(i32 10), !dbg !598
  br label %171

171:                                              ; preds = %109, %114, %120, %94, %130, %138, %146, %160, %168, %169, %164, %156, %142, %134, %126, %147, %150
  call void @llvm.dbg.label(metadata !387), !dbg !599
  call void @free(ptr noundef %74) #20, !dbg !600
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #20, !dbg !601
  br label %46

172:                                              ; preds = %66
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #20, !dbg !601
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %4) #20, !dbg !602
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20, !dbg !602
  ret i32 0, !dbg !602
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare !dbg !603 void @bzero(ptr nocapture noundef writeonly, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !607 i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !613 ptr @finedb_create(ptr noundef, i16 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nofree nounwind uwtable
define dso_local void @printf_color(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #6 !dbg !616 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !620, metadata !DIExpression()), !dbg !635
  call void @llvm.dbg.value(metadata ptr %1, metadata !621, metadata !DIExpression()), !dbg !635
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20, !dbg !636
  call void @llvm.dbg.declare(metadata ptr %3, metadata !622, metadata !DIExpression()), !dbg !637
  call void @llvm.va_start(ptr nonnull %3), !dbg !638
  %4 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.72) #21, !dbg !639
  %5 = icmp eq i32 %4, 0, !dbg !639
  br i1 %5, label %25, label %6, !dbg !641

6:                                                ; preds = %2
  %7 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.18) #21, !dbg !642
  %8 = icmp eq i32 %7, 0, !dbg !642
  br i1 %8, label %25, label %9, !dbg !644

9:                                                ; preds = %6
  %10 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.73) #21, !dbg !645
  %11 = icmp eq i32 %10, 0, !dbg !645
  br i1 %11, label %25, label %12, !dbg !647

12:                                               ; preds = %9
  %13 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.74) #21, !dbg !648
  %14 = icmp eq i32 %13, 0, !dbg !648
  br i1 %14, label %25, label %15, !dbg !650

15:                                               ; preds = %12
  %16 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.75) #21, !dbg !651
  %17 = icmp eq i32 %16, 0, !dbg !651
  br i1 %17, label %25, label %18, !dbg !653

18:                                               ; preds = %15
  %19 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.76) #21, !dbg !654
  %20 = icmp eq i32 %19, 0, !dbg !654
  br i1 %20, label %25, label %21, !dbg !656

21:                                               ; preds = %18
  %22 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.77) #21, !dbg !657
  %23 = icmp eq i32 %22, 0, !dbg !657
  %24 = select i1 %23, i32 6, i32 7, !dbg !659
  br label %25, !dbg !659

25:                                               ; preds = %21, %18, %15, %12, %9, %6, %2
  %26 = phi i32 [ 0, %2 ], [ 1, %6 ], [ 2, %9 ], [ 3, %12 ], [ 4, %15 ], [ 5, %18 ], [ %24, %21 ]
  call void @llvm.dbg.value(metadata i32 %26, metadata !634, metadata !DIExpression()), !dbg !635
  %27 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.79, i32 noundef 27, i32 noundef %26), !dbg !660
  call void @llvm.dbg.value(metadata ptr %1, metadata !661, metadata !DIExpression()), !dbg !670
  call void @llvm.dbg.value(metadata ptr %3, metadata !669, metadata !DIExpression()), !dbg !670
  %28 = load ptr, ptr @stdout, align 8, !dbg !672, !tbaa !404, !noalias !673
  %29 = call i32 @vfprintf(ptr noundef %28, ptr noundef %1, ptr noundef nonnull %3), !dbg !676
  %30 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef 27), !dbg !677
  call void @llvm.va_end(ptr nonnull %3), !dbg !678
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20, !dbg !679
  ret void, !dbg !679
}

; Function Attrs: nofree nounwind
declare !dbg !680 noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: noreturn nounwind
declare !dbg !684 void @exit(i32 noundef) local_unnamed_addr #8

declare !dbg !688 i32 @finedb_connect(ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind memory(read)
declare !dbg !691 noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare !dbg !694 noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i64 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !698 noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare !dbg !701 noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #7

declare !dbg !704 i32 @linenoiseHistoryLoad(ptr noundef) local_unnamed_addr #5

declare !dbg !708 void @linenoiseSetCompletionCallback(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @cli_completion(ptr nocapture noundef readonly %0, ptr noundef %1) #0 !dbg !721 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !723, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %1, metadata !724, metadata !DIExpression()), !dbg !731
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #21, !dbg !732
  call void @llvm.dbg.value(metadata i64 %3, metadata !726, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata i32 0, metadata !725, metadata !DIExpression()), !dbg !731
  %4 = load ptr, ptr @commands, align 16, !dbg !733, !tbaa !404
  %5 = icmp eq ptr %4, null, !dbg !734
  br i1 %5, label %21, label %6, !dbg !734

6:                                                ; preds = %2, %15
  %7 = phi ptr [ %19, %15 ], [ %4, %2 ]
  %8 = phi i32 [ %16, %15 ], [ 0, %2 ]
  call void @llvm.dbg.value(metadata i32 %8, metadata !725, metadata !DIExpression()), !dbg !731
  call void @llvm.dbg.value(metadata ptr %7, metadata !727, metadata !DIExpression()), !dbg !735
  %9 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %7) #21, !dbg !736
  %10 = icmp ult i64 %9, %3, !dbg !738
  br i1 %10, label %15, label %11, !dbg !739

11:                                               ; preds = %6
  %12 = tail call i32 @strncasecmp(ptr noundef %0, ptr noundef nonnull %7, i64 noundef %3) #21, !dbg !740
  %13 = icmp eq i32 %12, 0, !dbg !740
  br i1 %13, label %14, label %15, !dbg !742

14:                                               ; preds = %11
  tail call void @linenoiseAddCompletion(ptr noundef %1, ptr noundef nonnull %7) #20, !dbg !743
  br label %15, !dbg !743

15:                                               ; preds = %11, %14, %6
  %16 = add i32 %8, 1, !dbg !744
  call void @llvm.dbg.value(metadata i32 %16, metadata !725, metadata !DIExpression()), !dbg !731
  %17 = zext i32 %16 to i64, !dbg !733
  %18 = getelementptr inbounds [17 x ptr], ptr @commands, i64 0, i64 %17, !dbg !733
  %19 = load ptr, ptr %18, align 8, !dbg !733, !tbaa !404
  %20 = icmp eq ptr %19, null, !dbg !734
  br i1 %20, label %21, label %6, !dbg !734, !llvm.loop !745

21:                                               ; preds = %15, %2
  ret void, !dbg !747
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree
declare !dbg !748 noundef i64 @read(i32 noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare !dbg !751 noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !754 void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

declare !dbg !757 ptr @linenoise(ptr noundef) local_unnamed_addr #5

declare !dbg !758 i32 @linenoiseHistoryAdd(ptr noundef) local_unnamed_addr #5

declare !dbg !761 i32 @linenoiseHistorySave(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !762 i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind uwtable
define dso_local void @command_help() local_unnamed_addr #6 !dbg !511 {
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.33), !dbg !763
  %1 = tail call i32 @putchar(i32 10), !dbg !764
  ret void, !dbg !765
}

; Function Attrs: nounwind uwtable
define dso_local void @command_sync(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !523 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !522, metadata !DIExpression()), !dbg !766
  %2 = load ptr, ptr %0, align 8, !dbg !767, !tbaa !416
  tail call void @finedb_sync(ptr noundef %2) #20, !dbg !768
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.38), !dbg !769
  %3 = tail call i32 @putchar(i32 10), !dbg !770
  ret void, !dbg !771
}

; Function Attrs: nounwind uwtable
define dso_local void @command_async(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !540 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !539, metadata !DIExpression()), !dbg !772
  %2 = load ptr, ptr %0, align 8, !dbg !773, !tbaa !416
  tail call void @finedb_async(ptr noundef %2) #20, !dbg !774
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.39), !dbg !775
  %3 = tail call i32 @putchar(i32 10), !dbg !776
  ret void, !dbg !777
}

; Function Attrs: nounwind uwtable
define dso_local void @command_use(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !778 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !782, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr %1, metadata !783, metadata !DIExpression()), !dbg !785
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !791
  %3 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !794
  %4 = load i32, ptr %3, align 4, !dbg !794, !tbaa !396
  %5 = icmp eq i32 %4, 0, !dbg !796
  br i1 %5, label %23, label %6, !dbg !797

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !dbg !798, !tbaa !416
  %8 = tail call i32 @finedb_ping(ptr noundef %7) #20, !dbg !800
  %9 = icmp eq i32 %8, 0, !dbg !800
  br i1 %9, label %23, label %10, !dbg !801

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !dbg !802, !tbaa !416
  %12 = tail call i32 @finedb_connect(ptr noundef %11) #20, !dbg !804
  %13 = icmp eq i32 %12, 0, !dbg !805
  br i1 %13, label %15, label %14, !dbg !806

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !807
  br label %52, !dbg !809

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !810
  %17 = load i32, ptr %16, align 8, !dbg !810, !tbaa !812
  %18 = icmp eq i32 %17, 0, !dbg !813
  br i1 %18, label %20, label %19, !dbg !814

19:                                               ; preds = %15
  store i32 0, ptr %16, align 8, !dbg !815, !tbaa !812
  br label %20, !dbg !817

20:                                               ; preds = %15, %19
  %21 = phi ptr [ @.str.65, %19 ], [ @.str.66, %15 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %21), !dbg !818
  %22 = tail call i32 @putchar(i32 10), !dbg !791
  br label %23, !dbg !809

23:                                               ; preds = %6, %2, %20
  %24 = load i8, ptr %1, align 1, !dbg !819
  %25 = icmp eq i8 %24, 0, !dbg !819
  br i1 %25, label %29, label %26, !dbg !821

26:                                               ; preds = %23
  %27 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.27) #21, !dbg !822
  %28 = icmp eq i32 %27, 0, !dbg !822
  br i1 %28, label %29, label %40, !dbg !823

29:                                               ; preds = %26, %23
  %30 = load ptr, ptr %0, align 8, !dbg !824, !tbaa !416
  %31 = tail call i32 @finedb_setdb(ptr noundef %30, ptr noundef null) #20, !dbg !827
  call void @llvm.dbg.value(metadata i32 %31, metadata !784, metadata !DIExpression()), !dbg !785
  %32 = icmp eq i32 %31, 0, !dbg !828
  br i1 %32, label %34, label %33, !dbg !829

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.34, i32 noundef %31), !dbg !830
  br label %52, !dbg !832

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 1, !dbg !833
  %36 = load ptr, ptr %35, align 8, !dbg !833, !tbaa !477
  %37 = icmp eq ptr %36, null, !dbg !833
  br i1 %37, label %39, label %38, !dbg !833

38:                                               ; preds = %34
  tail call void @free(ptr noundef nonnull %36) #20, !dbg !833
  br label %39, !dbg !833

39:                                               ; preds = %34, %38
  store ptr null, ptr %35, align 8, !dbg !833, !tbaa !477
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.35), !dbg !835
  br label %52

40:                                               ; preds = %26
  %41 = load ptr, ptr %0, align 8, !dbg !836, !tbaa !416
  %42 = tail call i32 @finedb_setdb(ptr noundef %41, ptr noundef nonnull %1) #20, !dbg !839
  call void @llvm.dbg.value(metadata i32 %42, metadata !784, metadata !DIExpression()), !dbg !785
  %43 = icmp eq i32 %42, 0, !dbg !840
  br i1 %43, label %45, label %44, !dbg !841

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.36, i32 noundef %42), !dbg !842
  br label %52, !dbg !844

45:                                               ; preds = %40
  %46 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 1, !dbg !845
  %47 = load ptr, ptr %46, align 8, !dbg !845, !tbaa !477
  %48 = icmp eq ptr %47, null, !dbg !845
  br i1 %48, label %50, label %49, !dbg !845

49:                                               ; preds = %45
  tail call void @free(ptr noundef nonnull %47) #20, !dbg !845
  br label %50, !dbg !845

50:                                               ; preds = %45, %49
  store ptr null, ptr %46, align 8, !dbg !845, !tbaa !477
  %51 = tail call noalias ptr @strdup(ptr noundef nonnull %1) #20, !dbg !847
  store ptr %51, ptr %46, align 8, !dbg !848, !tbaa !477
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.37, ptr noundef nonnull %1), !dbg !849
  br label %52

52:                                               ; preds = %14, %39, %33, %50, %44
  %53 = tail call i32 @putchar(i32 10), !dbg !785
  ret void, !dbg !850
}

; Function Attrs: nounwind uwtable
define dso_local void @command_get(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !851 {
  %3 = alloca %struct.ybin_s, align 8
  %4 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !853, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %1, metadata !854, metadata !DIExpression()), !dbg !866
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %3, metadata !857, metadata !DIExpression()), !dbg !868
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #20, !dbg !867
  call void @llvm.dbg.declare(metadata ptr %4, metadata !864, metadata !DIExpression()), !dbg !869
  br label %5, !dbg !870

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %1, %2 ], [ %9, %8 ]
  call void @llvm.dbg.value(metadata ptr %6, metadata !854, metadata !DIExpression()), !dbg !866
  %7 = load i8, ptr %6, align 1, !dbg !870, !tbaa !405
  switch i8 %7, label %10 [
    i8 13, label %8
    i8 32, label %8
    i8 9, label %8
    i8 10, label %8
    i8 34, label %12
  ], !dbg !870

8:                                                ; preds = %5, %5, %5, %5
  %9 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !870
  call void @llvm.dbg.value(metadata ptr %9, metadata !854, metadata !DIExpression()), !dbg !866
  br label %5, !dbg !870, !llvm.loop !871

10:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40), !dbg !872
  %11 = tail call i32 @putchar(i32 10), !dbg !875
  br label %69, !dbg !876

12:                                               ; preds = %5
  %13 = getelementptr inbounds i8, ptr %6, i64 1, !dbg !877
  call void @llvm.dbg.value(metadata ptr %13, metadata !854, metadata !DIExpression()), !dbg !866
  %14 = load i8, ptr %13, align 1, !dbg !878, !tbaa !405
  %15 = icmp eq i8 %14, 0, !dbg !878
  br i1 %15, label %16, label %18, !dbg !880

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.41), !dbg !881
  %17 = tail call i32 @putchar(i32 10), !dbg !883
  br label %69, !dbg !884

18:                                               ; preds = %12
  call void @llvm.dbg.value(metadata ptr %13, metadata !855, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %13, metadata !856, metadata !DIExpression()), !dbg !866
  call void @llvm.dbg.value(metadata ptr %13, metadata !855, metadata !DIExpression()), !dbg !866
  %19 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 34) #21, !dbg !885
  call void @llvm.dbg.value(metadata ptr %19, metadata !855, metadata !DIExpression()), !dbg !866
  %20 = icmp eq ptr %19, null, !dbg !887
  br i1 %20, label %21, label %23, !dbg !888

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.42), !dbg !889
  %22 = tail call i32 @putchar(i32 10), !dbg !891
  br label %69, !dbg !892

23:                                               ; preds = %18
  store i8 0, ptr %19, align 1, !dbg !893, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !894
  %24 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !897
  %25 = load i32, ptr %24, align 4, !dbg !897, !tbaa !396
  %26 = icmp eq i32 %25, 0, !dbg !898
  br i1 %26, label %45, label %27, !dbg !899

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !dbg !900, !tbaa !416
  %29 = tail call i32 @finedb_ping(ptr noundef %28) #20, !dbg !901
  %30 = icmp eq i32 %29, 0, !dbg !901
  br i1 %30, label %45, label %31, !dbg !902

31:                                               ; preds = %27
  %32 = load ptr, ptr %0, align 8, !dbg !903, !tbaa !416
  %33 = tail call i32 @finedb_connect(ptr noundef %32) #20, !dbg !904
  %34 = icmp eq i32 %33, 0, !dbg !905
  br i1 %34, label %37, label %35, !dbg !906

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !907
  %36 = tail call i32 @putchar(i32 10), !dbg !894
  br label %69, !dbg !908

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !909
  %39 = load i32, ptr %38, align 8, !dbg !909, !tbaa !812
  %40 = icmp eq i32 %39, 0, !dbg !910
  br i1 %40, label %42, label %41, !dbg !911

41:                                               ; preds = %37
  store i32 0, ptr %38, align 8, !dbg !912, !tbaa !812
  br label %42, !dbg !913

42:                                               ; preds = %37, %41
  %43 = phi ptr [ @.str.65, %41 ], [ @.str.66, %37 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %43), !dbg !914
  %44 = tail call i32 @putchar(i32 10), !dbg !894
  br label %45, !dbg !908

45:                                               ; preds = %27, %23, %42
  call void @bzero(ptr noundef nonnull %4, i64 noundef 16) #20, !dbg !915
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %13) #21, !dbg !916
  %47 = call ptr @ybin_set(ptr noundef nonnull %3, ptr noundef nonnull %13, i64 noundef %46) #20, !dbg !917
  %48 = load ptr, ptr %0, align 8, !dbg !918, !tbaa !416
  %49 = load ptr, ptr %3, align 8, !dbg !919
  %50 = getelementptr inbounds { ptr, i64 }, ptr %3, i64 0, i32 1, !dbg !919
  %51 = load i64, ptr %50, align 8, !dbg !919
  %52 = call i32 @finedb_get(ptr noundef %48, ptr %49, i64 %51, ptr noundef nonnull %4) #20, !dbg !919
  call void @llvm.dbg.value(metadata i32 %52, metadata !865, metadata !DIExpression()), !dbg !866
  %53 = icmp eq i32 %52, 0, !dbg !920
  br i1 %53, label %56, label %54, !dbg !922

54:                                               ; preds = %45
  call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.43, ptr noundef nonnull %13, i32 noundef %52), !dbg !923
  %55 = call i32 @putchar(i32 10), !dbg !925
  br label %69, !dbg !926

56:                                               ; preds = %45
  %57 = load ptr, ptr %4, align 8, !dbg !927, !tbaa !929
  %58 = icmp eq ptr %57, null, !dbg !932
  %59 = getelementptr inbounds %struct.ybin_s, ptr %4, i64 0, i32 1
  %60 = load i64, ptr %59, align 8
  %61 = icmp eq i64 %60, 0
  %62 = select i1 %58, i1 true, i1 %61, !dbg !933
  br i1 %62, label %63, label %66, !dbg !933

63:                                               ; preds = %56
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.44), !dbg !934
  %64 = call i32 @putchar(i32 10), !dbg !936
  %65 = load ptr, ptr %4, align 8, !dbg !937, !tbaa !929
  br label %66, !dbg !938

66:                                               ; preds = %56, %63
  %67 = phi ptr [ %57, %56 ], [ %65, %63 ], !dbg !937
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) %67), !dbg !939
  br label %69, !dbg !940

69:                                               ; preds = %35, %66, %54, %21, %16, %10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #20, !dbg !940
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20, !dbg !940
  ret void, !dbg !940
}

; Function Attrs: nounwind uwtable
define dso_local void @command_del(ptr nocapture noundef %0, ptr noundef %1) local_unnamed_addr #0 !dbg !941 {
  %3 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !943, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %1, metadata !944, metadata !DIExpression()), !dbg !949
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #20, !dbg !950
  call void @llvm.dbg.declare(metadata ptr %3, metadata !947, metadata !DIExpression()), !dbg !951
  br label %4, !dbg !952

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %1, %2 ], [ %8, %7 ]
  call void @llvm.dbg.value(metadata ptr %5, metadata !944, metadata !DIExpression()), !dbg !949
  %6 = load i8, ptr %5, align 1, !dbg !952, !tbaa !405
  switch i8 %6, label %9 [
    i8 13, label %7
    i8 32, label %7
    i8 9, label %7
    i8 10, label %7
    i8 34, label %11
  ], !dbg !952

7:                                                ; preds = %4, %4, %4, %4
  %8 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !952
  call void @llvm.dbg.value(metadata ptr %8, metadata !944, metadata !DIExpression()), !dbg !949
  br label %4, !dbg !952, !llvm.loop !953

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40), !dbg !954
  %10 = tail call i32 @putchar(i32 10), !dbg !957
  br label %57, !dbg !958

11:                                               ; preds = %4
  %12 = getelementptr inbounds i8, ptr %5, i64 1, !dbg !959
  call void @llvm.dbg.value(metadata ptr %12, metadata !944, metadata !DIExpression()), !dbg !949
  %13 = load i8, ptr %12, align 1, !dbg !960, !tbaa !405
  %14 = icmp eq i8 %13, 0, !dbg !960
  br i1 %14, label %15, label %17, !dbg !962

15:                                               ; preds = %11
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.41), !dbg !963
  %16 = tail call i32 @putchar(i32 10), !dbg !965
  br label %57, !dbg !966

17:                                               ; preds = %11
  call void @llvm.dbg.value(metadata ptr %12, metadata !945, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %12, metadata !946, metadata !DIExpression()), !dbg !949
  call void @llvm.dbg.value(metadata ptr %12, metadata !945, metadata !DIExpression()), !dbg !949
  %18 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %12, i32 noundef 34) #21, !dbg !967
  call void @llvm.dbg.value(metadata ptr %18, metadata !945, metadata !DIExpression()), !dbg !949
  %19 = icmp eq ptr %18, null, !dbg !969
  br i1 %19, label %20, label %22, !dbg !970

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.42), !dbg !971
  %21 = tail call i32 @putchar(i32 10), !dbg !973
  br label %57, !dbg !974

22:                                               ; preds = %17
  store i8 0, ptr %18, align 1, !dbg !975, !tbaa !405
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !976
  %23 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !979
  %24 = load i32, ptr %23, align 4, !dbg !979, !tbaa !396
  %25 = icmp eq i32 %24, 0, !dbg !980
  br i1 %25, label %44, label %26, !dbg !981

26:                                               ; preds = %22
  %27 = load ptr, ptr %0, align 8, !dbg !982, !tbaa !416
  %28 = tail call i32 @finedb_ping(ptr noundef %27) #20, !dbg !983
  %29 = icmp eq i32 %28, 0, !dbg !983
  br i1 %29, label %44, label %30, !dbg !984

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !dbg !985, !tbaa !416
  %32 = tail call i32 @finedb_connect(ptr noundef %31) #20, !dbg !986
  %33 = icmp eq i32 %32, 0, !dbg !987
  br i1 %33, label %36, label %34, !dbg !988

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !989
  %35 = tail call i32 @putchar(i32 10), !dbg !976
  br label %57, !dbg !990

36:                                               ; preds = %30
  %37 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !991
  %38 = load i32, ptr %37, align 8, !dbg !991, !tbaa !812
  %39 = icmp eq i32 %38, 0, !dbg !992
  br i1 %39, label %41, label %40, !dbg !993

40:                                               ; preds = %36
  store i32 0, ptr %37, align 8, !dbg !994, !tbaa !812
  br label %41, !dbg !995

41:                                               ; preds = %36, %40
  %42 = phi ptr [ @.str.65, %40 ], [ @.str.66, %36 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %42), !dbg !996
  %43 = tail call i32 @putchar(i32 10), !dbg !976
  br label %44, !dbg !990

44:                                               ; preds = %26, %22, %41
  %45 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %12) #21, !dbg !997
  %46 = call ptr @ybin_set(ptr noundef nonnull %3, ptr noundef nonnull %12, i64 noundef %45) #20, !dbg !998
  %47 = load ptr, ptr %0, align 8, !dbg !999, !tbaa !416
  %48 = load ptr, ptr %3, align 8, !dbg !1000
  %49 = getelementptr inbounds { ptr, i64 }, ptr %3, i64 0, i32 1, !dbg !1000
  %50 = load i64, ptr %49, align 8, !dbg !1000
  %51 = call i32 @finedb_del(ptr noundef %47, ptr %48, i64 %50) #20, !dbg !1000
  call void @llvm.dbg.value(metadata i32 %51, metadata !948, metadata !DIExpression()), !dbg !949
  %52 = icmp eq i32 %51, 0, !dbg !1001
  br i1 %52, label %54, label %53, !dbg !1003

53:                                               ; preds = %44
  call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.46, ptr noundef nonnull %12), !dbg !1004
  br label %54, !dbg !1004

54:                                               ; preds = %53, %44
  %55 = call i32 @putchar(i32 10), !dbg !1005
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.47), !dbg !1006
  %56 = call i32 @putchar(i32 10), !dbg !1007
  br label %57, !dbg !1008

57:                                               ; preds = %34, %54, %20, %15, %9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #20, !dbg !1008
  ret void, !dbg !1008
}

; Function Attrs: nounwind uwtable
define dso_local void @command_send_data(ptr nocapture noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 !dbg !1009 {
  %5 = alloca %struct.ybin_s, align 8
  %6 = alloca %struct.ybin_s, align 8
  call void @llvm.dbg.value(metadata ptr %0, metadata !1013, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %1, metadata !1014, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %2, metadata !1015, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata i32 %3, metadata !1016, metadata !DIExpression()), !dbg !1023
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #20, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1020, metadata !DIExpression()), !dbg !1025
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #20, !dbg !1024
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1021, metadata !DIExpression()), !dbg !1026
  br label %7, !dbg !1027

7:                                                ; preds = %10, %4
  %8 = phi ptr [ %1, %4 ], [ %11, %10 ]
  call void @llvm.dbg.value(metadata ptr %8, metadata !1014, metadata !DIExpression()), !dbg !1023
  %9 = load i8, ptr %8, align 1, !dbg !1027, !tbaa !405
  switch i8 %9, label %12 [
    i8 13, label %10
    i8 32, label %10
    i8 9, label %10
    i8 10, label %10
    i8 34, label %14
  ], !dbg !1027

10:                                               ; preds = %7, %7, %7, %7
  %11 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1027
  call void @llvm.dbg.value(metadata ptr %11, metadata !1014, metadata !DIExpression()), !dbg !1023
  br label %7, !dbg !1027, !llvm.loop !1028

12:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.40), !dbg !1029
  %13 = tail call i32 @putchar(i32 10), !dbg !1032
  br label %95, !dbg !1033

14:                                               ; preds = %7
  %15 = getelementptr inbounds i8, ptr %8, i64 1, !dbg !1034
  call void @llvm.dbg.value(metadata ptr %15, metadata !1014, metadata !DIExpression()), !dbg !1023
  %16 = load i8, ptr %15, align 1, !dbg !1035, !tbaa !405
  %17 = icmp eq i8 %16, 0, !dbg !1035
  br i1 %17, label %18, label %20, !dbg !1037

18:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.41), !dbg !1038
  %19 = tail call i32 @putchar(i32 10), !dbg !1040
  br label %95, !dbg !1041

20:                                               ; preds = %14
  call void @llvm.dbg.value(metadata ptr %15, metadata !1017, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %15, metadata !1018, metadata !DIExpression()), !dbg !1023
  call void @llvm.dbg.value(metadata ptr %15, metadata !1017, metadata !DIExpression()), !dbg !1023
  %21 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 34) #21, !dbg !1042
  call void @llvm.dbg.value(metadata ptr %21, metadata !1017, metadata !DIExpression()), !dbg !1023
  %22 = icmp eq ptr %21, null, !dbg !1044
  br i1 %22, label %23, label %25, !dbg !1045

23:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.42), !dbg !1046
  %24 = tail call i32 @putchar(i32 10), !dbg !1048
  br label %95, !dbg !1049

25:                                               ; preds = %20
  store i8 0, ptr %21, align 1, !dbg !1050, !tbaa !405
  %26 = getelementptr inbounds i8, ptr %21, i64 1, !dbg !1051
  call void @llvm.dbg.value(metadata ptr %26, metadata !1017, metadata !DIExpression()), !dbg !1023
  %27 = load i8, ptr %26, align 1, !dbg !1052, !tbaa !405
  %28 = icmp eq i8 %27, 0, !dbg !1052
  br i1 %28, label %29, label %31, !dbg !1054

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.48), !dbg !1055
  %30 = tail call i32 @putchar(i32 10), !dbg !1057
  br label %95, !dbg !1058

31:                                               ; preds = %25
  store i8 0, ptr %26, align 1, !dbg !1059, !tbaa !405
  %32 = getelementptr inbounds i8, ptr %21, i64 2, !dbg !1060
  call void @llvm.dbg.value(metadata ptr %32, metadata !1019, metadata !DIExpression()), !dbg !1023
  br label %33, !dbg !1061

33:                                               ; preds = %36, %31
  %34 = phi ptr [ %32, %31 ], [ %37, %36 ], !dbg !1023
  call void @llvm.dbg.value(metadata ptr %34, metadata !1019, metadata !DIExpression()), !dbg !1023
  %35 = load i8, ptr %34, align 1, !dbg !1061, !tbaa !405
  switch i8 %35, label %38 [
    i8 13, label %36
    i8 32, label %36
    i8 9, label %36
    i8 10, label %36
    i8 34, label %40
  ], !dbg !1061

36:                                               ; preds = %33, %33, %33, %33
  %37 = getelementptr inbounds i8, ptr %34, i64 1, !dbg !1061
  call void @llvm.dbg.value(metadata ptr %37, metadata !1019, metadata !DIExpression()), !dbg !1023
  br label %33, !dbg !1061, !llvm.loop !1062

38:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.49), !dbg !1063
  %39 = tail call i32 @putchar(i32 10), !dbg !1066
  br label %95, !dbg !1067

40:                                               ; preds = %33
  %41 = getelementptr inbounds i8, ptr %34, i64 1, !dbg !1068
  call void @llvm.dbg.value(metadata ptr %41, metadata !1019, metadata !DIExpression()), !dbg !1023
  %42 = load i8, ptr %41, align 1, !dbg !1069, !tbaa !405
  %43 = icmp eq i8 %42, 0, !dbg !1069
  br i1 %43, label %44, label %46, !dbg !1071

44:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.48), !dbg !1072
  %45 = tail call i32 @putchar(i32 10), !dbg !1074
  br label %95, !dbg !1075

46:                                               ; preds = %40
  %47 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #21, !dbg !1076
  %48 = getelementptr inbounds i8, ptr %41, i64 %47, !dbg !1077
  %49 = getelementptr inbounds i8, ptr %48, i64 -1, !dbg !1078
  call void @llvm.dbg.value(metadata ptr %49, metadata !1017, metadata !DIExpression()), !dbg !1023
  %50 = load i8, ptr %49, align 1, !dbg !1079, !tbaa !405
  %51 = icmp eq i8 %50, 34, !dbg !1081
  br i1 %51, label %54, label %52, !dbg !1082

52:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.50), !dbg !1083
  %53 = tail call i32 @putchar(i32 10), !dbg !1085
  br label %95, !dbg !1086

54:                                               ; preds = %46
  store i8 0, ptr %49, align 1, !dbg !1087, !tbaa !405
  %55 = tail call i32 @check_connection(ptr noundef %0), !dbg !1088
  %56 = icmp eq i32 %55, 0, !dbg !1088
  br i1 %56, label %95, label %57, !dbg !1090

57:                                               ; preds = %54
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %15) #21, !dbg !1091
  %59 = call ptr @ybin_set(ptr noundef nonnull %5, ptr noundef nonnull %15, i64 noundef %58) #20, !dbg !1092
  %60 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %41) #21, !dbg !1093
  %61 = call ptr @ybin_set(ptr noundef nonnull %6, ptr noundef nonnull %41, i64 noundef %60) #20, !dbg !1094
  %62 = icmp eq i32 %2, 0, !dbg !1095
  br i1 %62, label %72, label %63, !dbg !1097

63:                                               ; preds = %57
  %64 = load ptr, ptr %0, align 8, !dbg !1098, !tbaa !416
  %65 = load ptr, ptr %5, align 8, !dbg !1099
  %66 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1, !dbg !1099
  %67 = load i64, ptr %66, align 8, !dbg !1099
  %68 = load ptr, ptr %6, align 8, !dbg !1099
  %69 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1, !dbg !1099
  %70 = load i64, ptr %69, align 8, !dbg !1099
  %71 = call i32 @finedb_add(ptr noundef %64, ptr %65, i64 %67, ptr %68, i64 %70) #20, !dbg !1099
  call void @llvm.dbg.value(metadata i32 %71, metadata !1022, metadata !DIExpression()), !dbg !1023
  br label %85, !dbg !1100

72:                                               ; preds = %57
  %73 = icmp eq i32 %3, 0, !dbg !1101
  %74 = load ptr, ptr %0, align 8, !dbg !1103, !tbaa !416
  %75 = load ptr, ptr %5, align 8, !dbg !1103
  %76 = getelementptr inbounds { ptr, i64 }, ptr %5, i64 0, i32 1, !dbg !1103
  %77 = load i64, ptr %76, align 8, !dbg !1103
  %78 = load ptr, ptr %6, align 8, !dbg !1103
  %79 = getelementptr inbounds { ptr, i64 }, ptr %6, i64 0, i32 1, !dbg !1103
  %80 = load i64, ptr %79, align 8, !dbg !1103
  br i1 %73, label %83, label %81, !dbg !1104

81:                                               ; preds = %72
  %82 = call i32 @finedb_update(ptr noundef %74, ptr %75, i64 %77, ptr %78, i64 %80) #20, !dbg !1105
  call void @llvm.dbg.value(metadata i32 %82, metadata !1022, metadata !DIExpression()), !dbg !1023
  br label %85, !dbg !1106

83:                                               ; preds = %72
  %84 = call i32 @finedb_put(ptr noundef %74, ptr %75, i64 %77, ptr %78, i64 %80) #20, !dbg !1107
  call void @llvm.dbg.value(metadata i32 %84, metadata !1022, metadata !DIExpression()), !dbg !1023
  br label %85

85:                                               ; preds = %81, %83, %63
  %86 = phi i32 [ %71, %63 ], [ %82, %81 ], [ %84, %83 ], !dbg !1108
  call void @llvm.dbg.value(metadata i32 %86, metadata !1022, metadata !DIExpression()), !dbg !1023
  %87 = icmp eq i32 %86, 0, !dbg !1109
  br i1 %87, label %92, label %88, !dbg !1111

88:                                               ; preds = %85
  %89 = icmp eq i32 %3, 0, !dbg !1112
  %90 = select i1 %89, ptr @.str.4, ptr @.str.6, !dbg !1112
  %91 = select i1 %62, ptr %90, ptr @.str.5, !dbg !1112
  call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.51, ptr noundef nonnull %91, ptr noundef nonnull %15), !dbg !1113
  br label %93, !dbg !1113

92:                                               ; preds = %85
  call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.47), !dbg !1114
  br label %93

93:                                               ; preds = %92, %88
  %94 = call i32 @putchar(i32 10), !dbg !1115
  br label %95, !dbg !1116

95:                                               ; preds = %54, %93, %52, %44, %38, %29, %23, %18, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #20, !dbg !1116
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #20, !dbg !1116
  ret void, !dbg !1116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @command_inc(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #15 !dbg !1117 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1119, metadata !DIExpression()), !dbg !1121
  call void @llvm.dbg.value(metadata ptr %1, metadata !1120, metadata !DIExpression()), !dbg !1121
  ret void, !dbg !1122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @command_dec(ptr nocapture noundef %0, ptr nocapture noundef %1) local_unnamed_addr #15 !dbg !1123 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1125, metadata !DIExpression()), !dbg !1127
  call void @llvm.dbg.value(metadata ptr %1, metadata !1126, metadata !DIExpression()), !dbg !1127
  ret void, !dbg !1128
}

; Function Attrs: nounwind uwtable
define dso_local void @command_start(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !1129 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1131, metadata !DIExpression()), !dbg !1133
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !1134
  %2 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !1137
  %3 = load i32, ptr %2, align 4, !dbg !1137, !tbaa !396
  %4 = icmp eq i32 %3, 0, !dbg !1138
  br i1 %4, label %23, label %5, !dbg !1139

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !dbg !1140, !tbaa !416
  %7 = tail call i32 @finedb_ping(ptr noundef %6) #20, !dbg !1141
  %8 = icmp eq i32 %7, 0, !dbg !1141
  br i1 %8, label %23, label %9, !dbg !1142

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !dbg !1143, !tbaa !416
  %11 = tail call i32 @finedb_connect(ptr noundef %10) #20, !dbg !1144
  %12 = icmp eq i32 %11, 0, !dbg !1145
  br i1 %12, label %15, label %13, !dbg !1146

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !1147
  %14 = tail call i32 @putchar(i32 10), !dbg !1134
  br label %37, !dbg !1148

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !1149
  %17 = load i32, ptr %16, align 8, !dbg !1149, !tbaa !812
  %18 = icmp eq i32 %17, 0, !dbg !1150
  br i1 %18, label %20, label %19, !dbg !1151

19:                                               ; preds = %15
  store i32 0, ptr %16, align 8, !dbg !1152, !tbaa !812
  br label %20, !dbg !1153

20:                                               ; preds = %15, %19
  %21 = phi ptr [ @.str.65, %19 ], [ @.str.66, %15 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %21), !dbg !1154
  %22 = tail call i32 @putchar(i32 10), !dbg !1134
  br label %23, !dbg !1148

23:                                               ; preds = %5, %1, %20
  %24 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !1155
  %25 = load i32, ptr %24, align 8, !dbg !1155, !tbaa !812
  %26 = icmp eq i32 %25, 0, !dbg !1157
  br i1 %26, label %29, label %27, !dbg !1158

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.52), !dbg !1159
  %28 = tail call i32 @putchar(i32 10), !dbg !1161
  br label %29, !dbg !1162

29:                                               ; preds = %27, %23
  %30 = load ptr, ptr %0, align 8, !dbg !1163, !tbaa !416
  %31 = tail call i32 @finedb_start(ptr noundef %30) #20, !dbg !1164
  call void @llvm.dbg.value(metadata i32 %31, metadata !1132, metadata !DIExpression()), !dbg !1133
  %32 = icmp eq i32 %31, 0, !dbg !1165
  br i1 %32, label %35, label %33, !dbg !1167

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.53), !dbg !1168
  %34 = tail call i32 @putchar(i32 10), !dbg !1170
  br label %37, !dbg !1171

35:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.54), !dbg !1172
  %36 = tail call i32 @putchar(i32 10), !dbg !1173
  store i32 1, ptr %24, align 8, !dbg !1174, !tbaa !812
  br label %37, !dbg !1175

37:                                               ; preds = %13, %35, %33
  ret void, !dbg !1175
}

; Function Attrs: nounwind uwtable
define dso_local void @command_stop(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !1176 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1178, metadata !DIExpression()), !dbg !1180
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !1181
  %2 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !1184
  %3 = load i32, ptr %2, align 4, !dbg !1184, !tbaa !396
  %4 = icmp eq i32 %3, 0, !dbg !1185
  br i1 %4, label %23, label %5, !dbg !1186

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !dbg !1187, !tbaa !416
  %7 = tail call i32 @finedb_ping(ptr noundef %6) #20, !dbg !1188
  %8 = icmp eq i32 %7, 0, !dbg !1188
  br i1 %8, label %23, label %9, !dbg !1189

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !dbg !1190, !tbaa !416
  %11 = tail call i32 @finedb_connect(ptr noundef %10) #20, !dbg !1191
  %12 = icmp eq i32 %11, 0, !dbg !1192
  br i1 %12, label %15, label %13, !dbg !1193

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !1194
  %14 = tail call i32 @putchar(i32 10), !dbg !1181
  br label %37, !dbg !1195

15:                                               ; preds = %9
  %16 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !1196
  %17 = load i32, ptr %16, align 8, !dbg !1196, !tbaa !812
  %18 = icmp eq i32 %17, 0, !dbg !1197
  br i1 %18, label %20, label %19, !dbg !1198

19:                                               ; preds = %15
  store i32 0, ptr %16, align 8, !dbg !1199, !tbaa !812
  br label %20, !dbg !1200

20:                                               ; preds = %15, %19
  %21 = phi ptr [ @.str.65, %19 ], [ @.str.66, %15 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %21), !dbg !1201
  %22 = tail call i32 @putchar(i32 10), !dbg !1181
  br label %23, !dbg !1195

23:                                               ; preds = %5, %1, %20
  %24 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !1202
  %25 = load i32, ptr %24, align 8, !dbg !1202, !tbaa !812
  %26 = icmp eq i32 %25, 0, !dbg !1204
  br i1 %26, label %27, label %29, !dbg !1205

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.55), !dbg !1206
  %28 = tail call i32 @putchar(i32 10), !dbg !1208
  br label %37, !dbg !1209

29:                                               ; preds = %23
  %30 = load ptr, ptr %0, align 8, !dbg !1210, !tbaa !416
  %31 = tail call i32 @finedb_stop(ptr noundef %30) #20, !dbg !1211
  call void @llvm.dbg.value(metadata i32 %31, metadata !1179, metadata !DIExpression()), !dbg !1180
  %32 = icmp eq i32 %31, 0, !dbg !1212
  br i1 %32, label %35, label %33, !dbg !1214

33:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.53), !dbg !1215
  %34 = tail call i32 @putchar(i32 10), !dbg !1217
  br label %37, !dbg !1218

35:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.56), !dbg !1219
  %36 = tail call i32 @putchar(i32 10), !dbg !1220
  store i32 0, ptr %24, align 8, !dbg !1221, !tbaa !812
  br label %37, !dbg !1222

37:                                               ; preds = %13, %35, %33, %27
  ret void, !dbg !1222
}

; Function Attrs: nounwind uwtable
define dso_local void @command_ping(ptr nocapture noundef readonly %0) local_unnamed_addr #0 !dbg !1223 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1225, metadata !DIExpression()), !dbg !1227
  %2 = load ptr, ptr %0, align 8, !dbg !1228, !tbaa !416
  %3 = tail call i32 @finedb_ping(ptr noundef %2) #20, !dbg !1229
  call void @llvm.dbg.value(metadata i32 %3, metadata !1226, metadata !DIExpression()), !dbg !1227
  %4 = icmp eq i32 %3, 0, !dbg !1230
  br i1 %4, label %6, label %5, !dbg !1232

5:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.53), !dbg !1233
  br label %7, !dbg !1235

6:                                                ; preds = %1
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.47), !dbg !1236
  br label %7, !dbg !1237

7:                                                ; preds = %6, %5
  %8 = tail call i32 @putchar(i32 10), !dbg !1227
  ret void, !dbg !1237
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @command_autocheck(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #6 !dbg !1238 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !1240, metadata !DIExpression()), !dbg !1242
  call void @llvm.dbg.value(metadata ptr %1, metadata !1241, metadata !DIExpression()), !dbg !1242
  %3 = load i8, ptr %1, align 1, !dbg !1243
  %4 = icmp eq i8 %3, 0, !dbg !1243
  br i1 %4, label %5, label %10, !dbg !1245

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 4, !dbg !1246, !tbaa !396
  %8 = icmp eq i32 %7, 0, !dbg !1247
  %9 = select i1 %8, ptr @.str.63, ptr @.str.62, !dbg !1247
  br label %26, !dbg !1245

10:                                               ; preds = %2
  %11 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.57) #21, !dbg !1248
  %12 = icmp eq i32 %11, 0, !dbg !1248
  br i1 %12, label %22, label %13, !dbg !1251

13:                                               ; preds = %10
  %14 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.58) #21, !dbg !1252
  %15 = icmp eq i32 %14, 0, !dbg !1252
  br i1 %15, label %22, label %16, !dbg !1253

16:                                               ; preds = %13
  %17 = tail call i32 @strcasecmp(ptr noundef nonnull %1, ptr noundef nonnull @.str.59) #21, !dbg !1254
  %18 = icmp eq i32 %17, 0, !dbg !1254
  br i1 %18, label %22, label %19, !dbg !1255

19:                                               ; preds = %16
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.60) #21, !dbg !1256
  %21 = icmp eq i32 %20, 0, !dbg !1256
  br i1 %21, label %22, label %24, !dbg !1257

22:                                               ; preds = %19, %16, %13, %10
  %23 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !1258
  store i32 1, ptr %23, align 4, !dbg !1259, !tbaa !396
  br label %26, !dbg !1260

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !1261
  store i32 0, ptr %25, align 4, !dbg !1262, !tbaa !396
  br label %26

26:                                               ; preds = %5, %22, %24
  %27 = phi ptr [ %9, %5 ], [ @.str.62, %22 ], [ @.str.63, %24 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.61, ptr noundef nonnull %27), !dbg !1263
  %28 = tail call i32 @putchar(i32 10), !dbg !1264
  ret void, !dbg !1265
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @printf_decorated(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ...) local_unnamed_addr #6 !dbg !1266 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.dbg.value(metadata ptr %0, metadata !1268, metadata !DIExpression()), !dbg !1272
  call void @llvm.dbg.value(metadata ptr %1, metadata !1269, metadata !DIExpression()), !dbg !1272
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #20, !dbg !1273
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1270, metadata !DIExpression()), !dbg !1274
  call void @llvm.va_start(ptr nonnull %3), !dbg !1275
  %4 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.67) #21, !dbg !1276
  %5 = icmp eq i32 %4, 0, !dbg !1276
  br i1 %5, label %13, label %6, !dbg !1278

6:                                                ; preds = %2
  %7 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.32) #21, !dbg !1279
  %8 = icmp eq i32 %7, 0, !dbg !1279
  br i1 %8, label %13, label %9, !dbg !1281

9:                                                ; preds = %6
  %10 = call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.68) #21, !dbg !1282
  %11 = icmp eq i32 %10, 0, !dbg !1282
  %12 = select i1 %11, i32 4, i32 7, !dbg !1284
  br label %13, !dbg !1284

13:                                               ; preds = %9, %6, %2
  %14 = phi i32 [ 1, %2 ], [ 2, %6 ], [ %12, %9 ]
  call void @llvm.dbg.value(metadata i32 %14, metadata !1271, metadata !DIExpression()), !dbg !1272
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef 27, i32 noundef %14), !dbg !1285
  call void @llvm.dbg.value(metadata ptr %1, metadata !661, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.value(metadata ptr %3, metadata !669, metadata !DIExpression()), !dbg !1286
  %16 = load ptr, ptr @stdout, align 8, !dbg !1288, !tbaa !404, !noalias !1289
  %17 = call i32 @vfprintf(ptr noundef %16, ptr noundef %1, ptr noundef nonnull %3), !dbg !1292
  %18 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.71, i32 noundef 27), !dbg !1293
  call void @llvm.va_end(ptr nonnull %3), !dbg !1294
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #20, !dbg !1295
  ret void, !dbg !1295
}

; Function Attrs: nounwind uwtable
define dso_local i32 @check_connection(ptr nocapture noundef %0) local_unnamed_addr #0 !dbg !787 {
  call void @llvm.dbg.value(metadata ptr %0, metadata !786, metadata !DIExpression()), !dbg !1296
  %2 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 3, !dbg !1297
  %3 = load i32, ptr %2, align 4, !dbg !1297, !tbaa !396
  %4 = icmp eq i32 %3, 0, !dbg !1298
  br i1 %4, label %24, label %5, !dbg !1299

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !dbg !1300, !tbaa !416
  %7 = tail call i32 @finedb_ping(ptr noundef %6) #20, !dbg !1301
  %8 = icmp eq i32 %7, 0, !dbg !1301
  br i1 %8, label %24, label %9, !dbg !1302

9:                                                ; preds = %5
  %10 = load ptr, ptr %0, align 8, !dbg !1303, !tbaa !416
  %11 = tail call i32 @finedb_connect(ptr noundef %10) #20, !dbg !1304
  %12 = icmp eq i32 %11, 0, !dbg !1305
  br i1 %12, label %14, label %13, !dbg !1306

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @printf_color(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.64), !dbg !1307
  br label %21, !dbg !1308

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.cli_s, ptr %0, i64 0, i32 2, !dbg !1309
  %16 = load i32, ptr %15, align 8, !dbg !1309, !tbaa !812
  %17 = icmp eq i32 %16, 0, !dbg !1310
  br i1 %17, label %19, label %18, !dbg !1311

18:                                               ; preds = %14
  store i32 0, ptr %15, align 8, !dbg !1312, !tbaa !812
  br label %19, !dbg !1313

19:                                               ; preds = %14, %18
  %20 = phi ptr [ @.str.65, %18 ], [ @.str.66, %14 ]
  tail call void (ptr, ptr, ...) @printf_decorated(ptr noundef nonnull @.str.32, ptr noundef nonnull %20), !dbg !1314
  br label %21, !dbg !1315

21:                                               ; preds = %13, %19
  %22 = phi i32 [ 1, %19 ], [ 0, %13 ]
  %23 = tail call i32 @putchar(i32 10), !dbg !1296
  br label %24, !dbg !1316

24:                                               ; preds = %21, %5, %1
  %25 = phi i32 [ 1, %1 ], [ 1, %5 ], [ %22, %21 ], !dbg !1296
  ret i32 %25, !dbg !1316
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1317 i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

declare !dbg !1320 i32 @finedb_setdb(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite)
declare !dbg !1323 noalias ptr @strdup(ptr nocapture noundef readonly) local_unnamed_addr #16

declare !dbg !1324 void @finedb_sync(ptr noundef) local_unnamed_addr #5

declare !dbg !1327 void @finedb_async(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare !dbg !1328 ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare !dbg !1331 ptr @ybin_set(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare !dbg !1335 i32 @finedb_get(ptr noundef, ptr, i64, ptr noundef) local_unnamed_addr #5

declare !dbg !1338 i32 @finedb_del(ptr noundef, ptr, i64) local_unnamed_addr #5

declare !dbg !1341 i32 @finedb_add(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #5

declare !dbg !1344 i32 @finedb_update(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #5

declare !dbg !1345 i32 @finedb_put(ptr noundef, ptr, i64, ptr, i64) local_unnamed_addr #5

declare !dbg !1346 i32 @finedb_start(ptr noundef) local_unnamed_addr #5

declare !dbg !1347 i32 @finedb_stop(ptr noundef) local_unnamed_addr #5

declare !dbg !1348 i32 @finedb_ping(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare !dbg !1349 i32 @strncasecmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #14

declare !dbg !1352 void @linenoiseAddCompletion(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #17

; Function Attrs: nofree nounwind
declare !dbg !1355 noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.value(metadata, metadata, metadata) #18

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nocallback nofree nosync nounwind willreturn }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nofree nounwind }
attributes #20 = { nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { noreturn nounwind }
attributes #23 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!54}
!llvm.module.flags = !{!275, !276, !277, !278, !279, !280}
!llvm.ident = !{!281}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "finedb-cli.c", directory: "/home/raj/FineDB/src/cli", checksumkind: CSK_MD5, checksum: "ed586b78208bb39d9c3e5f3b4fefa983")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 4)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !22, isLocal: true, isDefinition: true)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 7)
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !9, isLocal: true, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !31, isLocal: true, isDefinition: true)
!31 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !32)
!32 = !{!33}
!33 = !DISubrange(count: 6)
!34 = !DIGlobalVariableExpression(var: !35, expr: !DIExpression())
!35 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !22, isLocal: true, isDefinition: true)
!36 = !DIGlobalVariableExpression(var: !37, expr: !DIExpression())
!37 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !38, isLocal: true, isDefinition: true)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: 9)
!41 = !DIGlobalVariableExpression(var: !42, expr: !DIExpression())
!42 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !3, isLocal: true, isDefinition: true)
!43 = !DIGlobalVariableExpression(var: !44, expr: !DIExpression())
!44 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !3, isLocal: true, isDefinition: true)
!45 = !DIGlobalVariableExpression(var: !46, expr: !DIExpression())
!46 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !31, isLocal: true, isDefinition: true)
!47 = !DIGlobalVariableExpression(var: !48, expr: !DIExpression())
!48 = distinct !DIGlobalVariable(scope: null, file: !2, line: 70, type: !49, isLocal: true, isDefinition: true)
!49 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 80, elements: !50)
!50 = !{!51}
!51 = !DISubrange(count: 10)
!52 = !DIGlobalVariableExpression(var: !53, expr: !DIExpression())
!53 = distinct !DIGlobalVariable(name: "commands", scope: !54, file: !2, line: 68, type: !272, isLocal: false, isDefinition: true)
!54 = distinct !DICompileUnit(language: DW_LANG_C99, file: !2, producer: "clang version 16.0.0", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !55, retainedTypes: !71, globals: !77, splitDebugInlining: false, nameTableKind: None)
!55 = !{!56, !62}
!56 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "ybool_e", file: !57, line: 45, baseType: !58, size: 32, elements: !59)
!57 = !DIFile(filename: "../../lib/ylib/ydefs.h", directory: "/home/raj/FineDB/src/cli", checksumkind: CSK_MD5, checksum: "d3a2b1768a8684c59dbd5861ab8c9350")
!58 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "YFALSE", value: 0)
!61 = !DIEnumerator(name: "YTRUE", value: 1)
!62 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "finedb_result_e", file: !63, line: 17, baseType: !58, size: 32, elements: !64)
!63 = !DIFile(filename: "../lib/libfinedb.h", directory: "/home/raj/FineDB/src/cli", checksumkind: CSK_MD5, checksum: "baafaf372fa9ce6db451dea2a43221cb")
!64 = !{!65, !66, !67, !68, !69, !70}
!65 = !DIEnumerator(name: "FINEDB_OK", value: 0)
!66 = !DIEnumerator(name: "FINEDB_ERR_NETWORK", value: 1)
!67 = !DIEnumerator(name: "FINEDB_ERR_SERVER", value: 2)
!68 = !DIEnumerator(name: "FINEDB_ERR_FILE", value: 3)
!69 = !DIEnumerator(name: "FINEDB_ERR_MEMORY", value: 4)
!70 = !DIEnumerator(name: "FINEDB_ERR_ZIP", value: 5)
!71 = !{!72, !73, !74}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !75, line: 46, baseType: !76)
!75 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!76 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!77 = !{!0, !7, !12, !14, !16, !18, !20, !25, !27, !29, !34, !36, !41, !43, !45, !47, !52, !78, !80, !85, !87, !92, !94, !99, !101, !103, !108, !113, !115, !120, !122, !124, !126, !131, !133, !138, !143, !148, !153, !158, !160, !165, !170, !172, !177, !182, !184, !186, !191, !193, !195, !197, !202, !204, !209, !211, !216, !218, !220, !222, !224, !226, !228, !230, !232, !237, !239, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270}
!78 = !DIGlobalVariableExpression(var: !79, expr: !DIExpression())
!79 = distinct !DIGlobalVariable(scope: null, file: !2, line: 77, type: !49, isLocal: true, isDefinition: true)
!80 = !DIGlobalVariableExpression(var: !81, expr: !DIExpression())
!81 = distinct !DIGlobalVariable(scope: null, file: !2, line: 85, type: !82, isLocal: true, isDefinition: true)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !83)
!83 = !{!84}
!84 = !DISubrange(count: 2)
!85 = !DIGlobalVariableExpression(var: !86, expr: !DIExpression())
!86 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !9, isLocal: true, isDefinition: true)
!87 = !DIGlobalVariableExpression(var: !88, expr: !DIExpression())
!88 = distinct !DIGlobalVariable(scope: null, file: !2, line: 89, type: !89, isLocal: true, isDefinition: true)
!89 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !90)
!90 = !{!91}
!91 = !DISubrange(count: 14)
!92 = !DIGlobalVariableExpression(var: !93, expr: !DIExpression())
!93 = distinct !DIGlobalVariable(scope: null, file: !2, line: 90, type: !82, isLocal: true, isDefinition: true)
!94 = !DIGlobalVariableExpression(var: !95, expr: !DIExpression())
!95 = distinct !DIGlobalVariable(scope: null, file: !2, line: 94, type: !96, isLocal: true, isDefinition: true)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: 47)
!99 = !DIGlobalVariableExpression(var: !100, expr: !DIExpression())
!100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 102, type: !3, isLocal: true, isDefinition: true)
!101 = !DIGlobalVariableExpression(var: !102, expr: !DIExpression())
!102 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !31, isLocal: true, isDefinition: true)
!103 = !DIGlobalVariableExpression(var: !104, expr: !DIExpression())
!104 = distinct !DIGlobalVariable(scope: null, file: !2, line: 105, type: !105, isLocal: true, isDefinition: true)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !106)
!106 = !{!107}
!107 = !DISubrange(count: 20)
!108 = !DIGlobalVariableExpression(var: !109, expr: !DIExpression())
!109 = distinct !DIGlobalVariable(scope: null, file: !2, line: 106, type: !110, isLocal: true, isDefinition: true)
!110 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !111)
!111 = !{!112}
!112 = !DISubrange(count: 3)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !31, isLocal: true, isDefinition: true)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !118)
!118 = !{!119}
!119 = !DISubrange(count: 8)
!120 = !DIGlobalVariableExpression(var: !121, expr: !DIExpression())
!121 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !3, isLocal: true, isDefinition: true)
!122 = !DIGlobalVariableExpression(var: !123, expr: !DIExpression())
!123 = distinct !DIGlobalVariable(scope: null, file: !2, line: 151, type: !3, isLocal: true, isDefinition: true)
!124 = !DIGlobalVariableExpression(var: !125, expr: !DIExpression())
!125 = distinct !DIGlobalVariable(scope: null, file: !2, line: 185, type: !3, isLocal: true, isDefinition: true)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(scope: null, file: !2, line: 196, type: !128, isLocal: true, isDefinition: true)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 104, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 13)
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !31, isLocal: true, isDefinition: true)
!133 = !DIGlobalVariableExpression(var: !134, expr: !DIExpression())
!134 = distinct !DIGlobalVariable(scope: null, file: !2, line: 207, type: !135, isLocal: true, isDefinition: true)
!135 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1992, elements: !136)
!136 = !{!137}
!137 = !DISubrange(count: 249)
!138 = !DIGlobalVariableExpression(var: !139, expr: !DIExpression())
!139 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !140, isLocal: true, isDefinition: true)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 41)
!143 = !DIGlobalVariableExpression(var: !144, expr: !DIExpression())
!144 = distinct !DIGlobalVariable(scope: null, file: !2, line: 241, type: !145, isLocal: true, isDefinition: true)
!145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !146)
!146 = !{!147}
!147 = !DISubrange(count: 25)
!148 = !DIGlobalVariableExpression(var: !149, expr: !DIExpression())
!149 = distinct !DIGlobalVariable(scope: null, file: !2, line: 247, type: !150, isLocal: true, isDefinition: true)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !151)
!151 = !{!152}
!152 = !DISubrange(count: 38)
!153 = !DIGlobalVariableExpression(var: !154, expr: !DIExpression())
!154 = distinct !DIGlobalVariable(scope: null, file: !2, line: 252, type: !155, isLocal: true, isDefinition: true)
!155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !156)
!156 = !{!157}
!157 = !DISubrange(count: 22)
!158 = !DIGlobalVariableExpression(var: !159, expr: !DIExpression())
!159 = distinct !DIGlobalVariable(scope: null, file: !2, line: 261, type: !155, isLocal: true, isDefinition: true)
!160 = !DIGlobalVariableExpression(var: !161, expr: !DIExpression())
!161 = distinct !DIGlobalVariable(scope: null, file: !2, line: 267, type: !162, isLocal: true, isDefinition: true)
!162 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !163)
!163 = !{!164}
!164 = !DISubrange(count: 23)
!165 = !DIGlobalVariableExpression(var: !166, expr: !DIExpression())
!166 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !167, isLocal: true, isDefinition: true)
!167 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !168)
!168 = !{!169}
!169 = !DISubrange(count: 26)
!170 = !DIGlobalVariableExpression(var: !171, expr: !DIExpression())
!171 = distinct !DIGlobalVariable(scope: null, file: !2, line: 285, type: !117, isLocal: true, isDefinition: true)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !2, line: 292, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 35)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 232, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 29)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !2, line: 311, type: !38, isLocal: true, isDefinition: true)
!184 = !DIGlobalVariableExpression(var: !185, expr: !DIExpression())
!185 = distinct !DIGlobalVariable(scope: null, file: !2, line: 314, type: !9, isLocal: true, isDefinition: true)
!186 = !DIGlobalVariableExpression(var: !187, expr: !DIExpression())
!187 = distinct !DIGlobalVariable(scope: null, file: !2, line: 351, type: !188, isLocal: true, isDefinition: true)
!188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 216, elements: !189)
!189 = !{!190}
!190 = !DISubrange(count: 27)
!191 = !DIGlobalVariableExpression(var: !192, expr: !DIExpression())
!192 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !110, isLocal: true, isDefinition: true)
!193 = !DIGlobalVariableExpression(var: !194, expr: !DIExpression())
!194 = distinct !DIGlobalVariable(scope: null, file: !2, line: 385, type: !128, isLocal: true, isDefinition: true)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 393, type: !188, isLocal: true, isDefinition: true)
!197 = !DIGlobalVariableExpression(var: !198, expr: !DIExpression())
!198 = distinct !DIGlobalVariable(scope: null, file: !2, line: 405, type: !199, isLocal: true, isDefinition: true)
!199 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 288, elements: !200)
!200 = !{!201}
!201 = !DISubrange(count: 36)
!202 = !DIGlobalVariableExpression(var: !203, expr: !DIExpression())
!203 = distinct !DIGlobalVariable(scope: null, file: !2, line: 424, type: !162, isLocal: true, isDefinition: true)
!204 = !DIGlobalVariableExpression(var: !205, expr: !DIExpression())
!205 = distinct !DIGlobalVariable(scope: null, file: !2, line: 448, type: !206, isLocal: true, isDefinition: true)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 432, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 54)
!209 = !DIGlobalVariableExpression(var: !210, expr: !DIExpression())
!210 = distinct !DIGlobalVariable(scope: null, file: !2, line: 454, type: !89, isLocal: true, isDefinition: true)
!211 = !DIGlobalVariableExpression(var: !212, expr: !DIExpression())
!212 = distinct !DIGlobalVariable(scope: null, file: !2, line: 458, type: !213, isLocal: true, isDefinition: true)
!213 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !214)
!214 = !{!215}
!215 = !DISubrange(count: 21)
!216 = !DIGlobalVariableExpression(var: !217, expr: !DIExpression())
!217 = distinct !DIGlobalVariable(scope: null, file: !2, line: 472, type: !162, isLocal: true, isDefinition: true)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(scope: null, file: !2, line: 483, type: !213, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !110, isLocal: true, isDefinition: true)
!222 = !DIGlobalVariableExpression(var: !223, expr: !DIExpression())
!223 = distinct !DIGlobalVariable(scope: null, file: !2, line: 506, type: !9, isLocal: true, isDefinition: true)
!224 = !DIGlobalVariableExpression(var: !225, expr: !DIExpression())
!225 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !3, isLocal: true, isDefinition: true)
!226 = !DIGlobalVariableExpression(var: !227, expr: !DIExpression())
!227 = distinct !DIGlobalVariable(scope: null, file: !2, line: 507, type: !82, isLocal: true, isDefinition: true)
!228 = !DIGlobalVariableExpression(var: !229, expr: !DIExpression())
!229 = distinct !DIGlobalVariable(scope: null, file: !2, line: 512, type: !162, isLocal: true, isDefinition: true)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !49, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(scope: null, file: !2, line: 513, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 96, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 12)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(scope: null, file: !2, line: 531, type: !188, isLocal: true, isDefinition: true)
!239 = !DIGlobalVariableExpression(var: !240, expr: !DIExpression())
!240 = distinct !DIGlobalVariable(scope: null, file: !2, line: 537, type: !241, isLocal: true, isDefinition: true)
!241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 352, elements: !242)
!242 = !{!243}
!243 = !DISubrange(count: 44)
!244 = !DIGlobalVariableExpression(var: !245, expr: !DIExpression())
!245 = distinct !DIGlobalVariable(scope: null, file: !2, line: 539, type: !162, isLocal: true, isDefinition: true)
!246 = !DIGlobalVariableExpression(var: !247, expr: !DIExpression())
!247 = distinct !DIGlobalVariable(scope: null, file: !2, line: 646, type: !3, isLocal: true, isDefinition: true)
!248 = !DIGlobalVariableExpression(var: !249, expr: !DIExpression())
!249 = distinct !DIGlobalVariable(scope: null, file: !2, line: 650, type: !49, isLocal: true, isDefinition: true)
!250 = !DIGlobalVariableExpression(var: !251, expr: !DIExpression())
!251 = distinct !DIGlobalVariable(scope: null, file: !2, line: 652, type: !38, isLocal: true, isDefinition: true)
!252 = !DIGlobalVariableExpression(var: !253, expr: !DIExpression())
!253 = distinct !DIGlobalVariable(scope: null, file: !2, line: 654, type: !22, isLocal: true, isDefinition: true)
!254 = !DIGlobalVariableExpression(var: !255, expr: !DIExpression())
!255 = distinct !DIGlobalVariable(scope: null, file: !2, line: 656, type: !31, isLocal: true, isDefinition: true)
!256 = !DIGlobalVariableExpression(var: !257, expr: !DIExpression())
!257 = distinct !DIGlobalVariable(scope: null, file: !2, line: 670, type: !31, isLocal: true, isDefinition: true)
!258 = !DIGlobalVariableExpression(var: !259, expr: !DIExpression())
!259 = distinct !DIGlobalVariable(scope: null, file: !2, line: 674, type: !31, isLocal: true, isDefinition: true)
!260 = !DIGlobalVariableExpression(var: !261, expr: !DIExpression())
!261 = distinct !DIGlobalVariable(scope: null, file: !2, line: 676, type: !22, isLocal: true, isDefinition: true)
!262 = !DIGlobalVariableExpression(var: !263, expr: !DIExpression())
!263 = distinct !DIGlobalVariable(scope: null, file: !2, line: 678, type: !3, isLocal: true, isDefinition: true)
!264 = !DIGlobalVariableExpression(var: !265, expr: !DIExpression())
!265 = distinct !DIGlobalVariable(scope: null, file: !2, line: 680, type: !117, isLocal: true, isDefinition: true)
!266 = !DIGlobalVariableExpression(var: !267, expr: !DIExpression())
!267 = distinct !DIGlobalVariable(scope: null, file: !2, line: 682, type: !3, isLocal: true, isDefinition: true)
!268 = !DIGlobalVariableExpression(var: !269, expr: !DIExpression())
!269 = distinct !DIGlobalVariable(scope: null, file: !2, line: 684, type: !31, isLocal: true, isDefinition: true)
!270 = !DIGlobalVariableExpression(var: !271, expr: !DIExpression())
!271 = distinct !DIGlobalVariable(scope: null, file: !2, line: 686, type: !117, isLocal: true, isDefinition: true)
!272 = !DICompositeType(tag: DW_TAG_array_type, baseType: !73, size: 1088, elements: !273)
!273 = !{!274}
!274 = !DISubrange(count: 17)
!275 = !{i32 7, !"Dwarf Version", i32 5}
!276 = !{i32 2, !"Debug Info Version", i32 3}
!277 = !{i32 1, !"wchar_size", i32 4}
!278 = !{i32 8, !"PIC Level", i32 2}
!279 = !{i32 7, !"PIE Level", i32 2}
!280 = !{i32 7, !"uwtable", i32 2}
!281 = !{!"clang version 16.0.0"}
!282 = distinct !DISubprogram(name: "main", scope: !2, file: !2, line: 75, type: !283, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !287)
!283 = !DISubroutineType(types: !284)
!284 = !{!285, !285, !286}
!285 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!287 = !{!288, !289, !290, !309, !310, !314, !315, !318, !373, !377, !378, !379, !380, !386, !387}
!288 = !DILocalVariable(name: "argc", arg: 1, scope: !282, file: !2, line: 75, type: !285)
!289 = !DILocalVariable(name: "argv", arg: 2, scope: !282, file: !2, line: 75, type: !286)
!290 = !DILocalVariable(name: "cli", scope: !282, file: !2, line: 76, type: !291)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "cli_t", file: !2, line: 32, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cli_s", file: !2, line: 27, size: 192, elements: !293)
!293 = !{!294, !306, !307, !308}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "finedb", scope: !292, file: !2, line: 28, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "finedb_client_t", file: !63, line: 41, baseType: !297)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "finedb_client_s", file: !63, line: 35, size: 192, elements: !298)
!298 = !{!299, !300, !302, !303, !305}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "hostname", scope: !297, file: !63, line: 36, baseType: !73, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !297, file: !63, line: 37, baseType: !301, size: 16, offset: 64)
!301 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !297, file: !63, line: 38, baseType: !285, size: 32, offset: 96)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !297, file: !63, line: 39, baseType: !304, size: 32, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybool_t", file: !57, line: 52, baseType: !56)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "debug", scope: !297, file: !63, line: 40, baseType: !304, size: 32, offset: 160)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "dbname", scope: !292, file: !2, line: 29, baseType: !73, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "in_transaction", scope: !292, file: !2, line: 30, baseType: !304, size: 32, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "autocheck", scope: !292, file: !2, line: 31, baseType: !304, size: 32, offset: 160)
!309 = !DILocalVariable(name: "hostname", scope: !282, file: !2, line: 77, type: !73)
!310 = !DILocalVariable(name: "history_file", scope: !282, file: !2, line: 78, type: !311)
!311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !312)
!312 = !{!313}
!313 = !DISubrange(count: 4096)
!314 = !DILocalVariable(name: "interactive_mode", scope: !282, file: !2, line: 79, type: !304)
!315 = !DILocalVariable(name: "home", scope: !316, file: !2, line: 100, type: !73)
!316 = distinct !DILexicalBlock(scope: !317, file: !2, line: 99, column: 24)
!317 = distinct !DILexicalBlock(scope: !282, file: !2, line: 99, column: 6)
!318 = !DILocalVariable(name: "hist", scope: !319, file: !2, line: 103, type: !321)
!319 = distinct !DILexicalBlock(scope: !320, file: !2, line: 102, column: 40)
!320 = distinct !DILexicalBlock(scope: !316, file: !2, line: 102, column: 7)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !323, line: 7, baseType: !324)
!323 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "571f9fb6223c42439075fdde11a0de5d")
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !325, line: 49, size: 1728, elements: !326)
!325 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h", directory: "", checksumkind: CSK_MD5, checksum: "1bad07471b7974df4ecc1d1c2ca207e6")
!326 = !{!327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !342, !344, !345, !346, !350, !351, !353, !357, !360, !362, !365, !368, !369, !370, !371, !372}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !324, file: !325, line: 51, baseType: !285, size: 32)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_ptr", scope: !324, file: !325, line: 54, baseType: !73, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_end", scope: !324, file: !325, line: 55, baseType: !73, size: 64, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_read_base", scope: !324, file: !325, line: 56, baseType: !73, size: 64, offset: 192)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_base", scope: !324, file: !325, line: 57, baseType: !73, size: 64, offset: 256)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_ptr", scope: !324, file: !325, line: 58, baseType: !73, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_write_end", scope: !324, file: !325, line: 59, baseType: !73, size: 64, offset: 384)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_base", scope: !324, file: !325, line: 60, baseType: !73, size: 64, offset: 448)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_buf_end", scope: !324, file: !325, line: 61, baseType: !73, size: 64, offset: 512)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_base", scope: !324, file: !325, line: 64, baseType: !73, size: 64, offset: 576)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_backup_base", scope: !324, file: !325, line: 65, baseType: !73, size: 64, offset: 640)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_IO_save_end", scope: !324, file: !325, line: 66, baseType: !73, size: 64, offset: 704)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_markers", scope: !324, file: !325, line: 68, baseType: !340, size: 64, offset: 768)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_marker", file: !325, line: 36, flags: DIFlagFwdDecl)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_chain", scope: !324, file: !325, line: 70, baseType: !343, size: 64, offset: 832)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_fileno", scope: !324, file: !325, line: 72, baseType: !285, size: 32, offset: 896)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_flags2", scope: !324, file: !325, line: 73, baseType: !285, size: 32, offset: 928)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_old_offset", scope: !324, file: !325, line: 74, baseType: !347, size: 64, offset: 960)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !348, line: 152, baseType: !349)
!348 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!349 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "_cur_column", scope: !324, file: !325, line: 77, baseType: !301, size: 16, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "_vtable_offset", scope: !324, file: !325, line: 78, baseType: !352, size: 8, offset: 1040)
!352 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "_shortbuf", scope: !324, file: !325, line: 79, baseType: !354, size: 8, offset: 1048)
!354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 8, elements: !355)
!355 = !{!356}
!356 = !DISubrange(count: 1)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !324, file: !325, line: 81, baseType: !358, size: 64, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_typedef, name: "_IO_lock_t", file: !325, line: 43, baseType: null)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "_offset", scope: !324, file: !325, line: 89, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off64_t", file: !348, line: 153, baseType: !349)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "_codecvt", scope: !324, file: !325, line: 91, baseType: !363, size: 64, offset: 1216)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_codecvt", file: !325, line: 37, flags: DIFlagFwdDecl)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "_wide_data", scope: !324, file: !325, line: 92, baseType: !366, size: 64, offset: 1280)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_wide_data", file: !325, line: 38, flags: DIFlagFwdDecl)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_list", scope: !324, file: !325, line: 93, baseType: !343, size: 64, offset: 1344)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "_freeres_buf", scope: !324, file: !325, line: 94, baseType: !72, size: 64, offset: 1408)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "__pad5", scope: !324, file: !325, line: 95, baseType: !74, size: 64, offset: 1472)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "_mode", scope: !324, file: !325, line: 96, baseType: !285, size: 32, offset: 1536)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "_unused2", scope: !324, file: !325, line: 98, baseType: !105, size: 160, offset: 1568)
!373 = !DILocalVariable(name: "buff", scope: !374, file: !2, line: 115, type: !311)
!374 = distinct !DILexicalBlock(scope: !375, file: !2, line: 114, column: 13)
!375 = distinct !DILexicalBlock(scope: !376, file: !2, line: 114, column: 2)
!376 = distinct !DILexicalBlock(scope: !282, file: !2, line: 114, column: 2)
!377 = !DILocalVariable(name: "line", scope: !374, file: !2, line: 115, type: !73)
!378 = !DILocalVariable(name: "pt", scope: !374, file: !2, line: 115, type: !73)
!379 = !DILocalVariable(name: "cmd", scope: !374, file: !2, line: 115, type: !73)
!380 = !DILocalVariable(name: "bufsz", scope: !381, file: !2, line: 118, type: !383)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 117, column: 26)
!382 = distinct !DILexicalBlock(scope: !374, file: !2, line: 117, column: 7)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !384, line: 220, baseType: !385)
!384 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !348, line: 194, baseType: !349)
!386 = !DILocalVariable(name: "linesz", scope: !381, file: !2, line: 118, type: !383)
!387 = !DILabel(scope: !374, name: "reloop", file: !2, line: 199)
!388 = !DILocation(line: 0, scope: !282)
!389 = !DILocation(line: 76, column: 2, scope: !282)
!390 = !DILocation(line: 76, column: 8, scope: !282)
!391 = !DILocation(line: 78, column: 2, scope: !282)
!392 = !DILocation(line: 78, column: 7, scope: !282)
!393 = !DILocation(line: 81, column: 2, scope: !282)
!394 = !DILocation(line: 82, column: 6, scope: !282)
!395 = !DILocation(line: 82, column: 16, scope: !282)
!396 = !{!397, !399, i64 20}
!397 = !{!"cli_s", !398, i64 0, !398, i64 8, !399, i64 16, !399, i64 20}
!398 = !{!"any pointer", !399, i64 0}
!399 = !{!"omnipotent char", !400, i64 0}
!400 = !{!"Simple C/C++ TBAA"}
!401 = !DILocation(line: 83, column: 16, scope: !402)
!402 = distinct !DILexicalBlock(scope: !282, file: !2, line: 83, column: 6)
!403 = !DILocation(line: 83, column: 19, scope: !402)
!404 = !{!398, !398, i64 0}
!405 = !{!399, !399, i64 0}
!406 = !DILocation(line: 83, column: 30, scope: !402)
!407 = !DILocation(line: 83, column: 6, scope: !282)
!408 = !DILocation(line: 85, column: 16, scope: !409)
!409 = distinct !DILexicalBlock(scope: !282, file: !2, line: 85, column: 6)
!410 = !DILocation(line: 85, column: 27, scope: !409)
!411 = !DILocation(line: 85, column: 20, scope: !409)
!412 = !DILocation(line: 85, column: 6, scope: !282)
!413 = !DILocation(line: 88, column: 20, scope: !414)
!414 = distinct !DILexicalBlock(scope: !282, file: !2, line: 88, column: 6)
!415 = !DILocation(line: 88, column: 18, scope: !414)
!416 = !{!397, !398, i64 0}
!417 = !DILocation(line: 88, column: 52, scope: !414)
!418 = !DILocation(line: 88, column: 6, scope: !282)
!419 = !DILocation(line: 89, column: 3, scope: !420)
!420 = distinct !DILexicalBlock(scope: !414, file: !2, line: 88, column: 61)
!421 = !DILocation(line: 90, column: 3, scope: !420)
!422 = !DILocation(line: 91, column: 3, scope: !420)
!423 = !DILocation(line: 93, column: 6, scope: !424)
!424 = distinct !DILexicalBlock(scope: !282, file: !2, line: 93, column: 6)
!425 = !DILocation(line: 93, column: 33, scope: !424)
!426 = !DILocation(line: 93, column: 6, scope: !282)
!427 = !DILocation(line: 94, column: 73, scope: !428)
!428 = distinct !DILexicalBlock(scope: !424, file: !2, line: 93, column: 47)
!429 = !DILocation(line: 94, column: 3, scope: !428)
!430 = !DILocation(line: 95, column: 3, scope: !428)
!431 = !DILocation(line: 96, column: 3, scope: !428)
!432 = !DILocation(line: 99, column: 6, scope: !282)
!433 = !DILocation(line: 0, scope: !316)
!434 = !DILocation(line: 102, column: 15, scope: !320)
!435 = !DILocation(line: 102, column: 31, scope: !320)
!436 = !DILocation(line: 102, column: 7, scope: !316)
!437 = !DILocation(line: 105, column: 4, scope: !319)
!438 = !DILocation(line: 106, column: 16, scope: !439)
!439 = distinct !DILexicalBlock(scope: !319, file: !2, line: 106, column: 8)
!440 = !DILocation(line: 0, scope: !319)
!441 = !DILocation(line: 106, column: 43, scope: !439)
!442 = !DILocation(line: 106, column: 8, scope: !319)
!443 = !DILocation(line: 107, column: 5, scope: !444)
!444 = distinct !DILexicalBlock(scope: !439, file: !2, line: 106, column: 52)
!445 = !DILocation(line: 108, column: 5, scope: !444)
!446 = !DILocation(line: 109, column: 4, scope: !444)
!447 = !DILocation(line: 110, column: 4, scope: !319)
!448 = !DILocation(line: 111, column: 3, scope: !319)
!449 = !DILocation(line: 114, column: 2, scope: !282)
!450 = !DILocation(line: 115, column: 3, scope: !374)
!451 = !DILocation(line: 115, column: 8, scope: !374)
!452 = !DILocation(line: 0, scope: !374)
!453 = !DILocation(line: 117, column: 7, scope: !374)
!454 = !DILocation(line: 0, scope: !381)
!455 = !DILocation(line: 120, column: 20, scope: !381)
!456 = !DILocation(line: 120, column: 49, scope: !381)
!457 = !DILocation(line: 120, column: 4, scope: !381)
!458 = !DILocation(line: 121, column: 31, scope: !459)
!459 = distinct !DILexicalBlock(scope: !381, file: !2, line: 120, column: 54)
!460 = !DILocation(line: 121, column: 39, scope: !459)
!461 = !DILocation(line: 121, column: 17, scope: !459)
!462 = !DILocation(line: 122, column: 5, scope: !459)
!463 = !DILocation(line: 123, column: 20, scope: !459)
!464 = !DILocation(line: 123, column: 31, scope: !459)
!465 = !DILocation(line: 123, column: 12, scope: !459)
!466 = !DILocation(line: 123, column: 5, scope: !459)
!467 = !DILocation(line: 125, column: 5, scope: !459)
!468 = !DILocation(line: 125, column: 16, scope: !459)
!469 = !DILocation(line: 126, column: 9, scope: !470)
!470 = distinct !DILexicalBlock(scope: !459, file: !2, line: 126, column: 9)
!471 = !DILocation(line: 126, column: 9, scope: !459)
!472 = !DILocation(line: 127, column: 6, scope: !470)
!473 = distinct !{!473, !457, !474}
!474 = !DILocation(line: 129, column: 4, scope: !381)
!475 = !DILocation(line: 131, column: 47, scope: !476)
!476 = distinct !DILexicalBlock(scope: !382, file: !2, line: 130, column: 10)
!477 = !{!397, !398, i64 8}
!478 = !DILocation(line: 131, column: 43, scope: !476)
!479 = !DILocation(line: 131, column: 4, scope: !476)
!480 = !DILocation(line: 132, column: 16, scope: !481)
!481 = distinct !DILexicalBlock(scope: !476, file: !2, line: 132, column: 8)
!482 = !DILocation(line: 132, column: 33, scope: !481)
!483 = !DILocation(line: 132, column: 8, scope: !476)
!484 = !DILocation(line: 136, column: 3, scope: !374)
!485 = distinct !{!485, !484, !484}
!486 = !DILocation(line: 139, column: 3, scope: !374)
!487 = !DILocation(line: 140, column: 3, scope: !374)
!488 = !DILocation(line: 142, column: 3, scope: !374)
!489 = !DILocation(line: 142, column: 10, scope: !374)
!490 = !DILocation(line: 142, column: 14, scope: !374)
!491 = !DILocation(line: 143, column: 4, scope: !374)
!492 = distinct !{!492, !488, !493}
!493 = !DILocation(line: 143, column: 6, scope: !374)
!494 = !DILocation(line: 144, column: 9, scope: !374)
!495 = !DILocation(line: 145, column: 3, scope: !374)
!496 = distinct !{!496, !495, !495}
!497 = !DILocation(line: 147, column: 7, scope: !498)
!498 = distinct !DILexicalBlock(scope: !374, file: !2, line: 147, column: 7)
!499 = !DILocation(line: 147, column: 14, scope: !498)
!500 = !DILocation(line: 147, column: 7, scope: !374)
!501 = !DILocation(line: 151, column: 8, scope: !502)
!502 = distinct !DILexicalBlock(scope: !374, file: !2, line: 151, column: 7)
!503 = !DILocation(line: 151, column: 32, scope: !502)
!504 = !DILocation(line: 151, column: 36, scope: !502)
!505 = !DILocation(line: 151, column: 7, scope: !374)
!506 = !DILocation(line: 152, column: 4, scope: !502)
!507 = !DILocation(line: 153, column: 8, scope: !508)
!508 = distinct !DILexicalBlock(scope: !374, file: !2, line: 153, column: 7)
!509 = !DILocation(line: 153, column: 32, scope: !508)
!510 = !DILocation(line: 207, column: 2, scope: !511, inlinedAt: !515)
!511 = distinct !DISubprogram(name: "command_help", scope: !2, file: !2, line: 206, type: !512, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !514)
!512 = !DISubroutineType(types: !513)
!513 = !{null}
!514 = !{}
!515 = distinct !DILocation(line: 154, column: 4, scope: !516)
!516 = distinct !DILexicalBlock(scope: !508, file: !2, line: 153, column: 50)
!517 = !DILocation(line: 223, column: 2, scope: !511, inlinedAt: !515)
!518 = !DILocation(line: 155, column: 4, scope: !516)
!519 = !DILocation(line: 157, column: 15, scope: !520)
!520 = distinct !DILexicalBlock(scope: !508, file: !2, line: 157, column: 14)
!521 = !DILocation(line: 157, column: 14, scope: !508)
!522 = !DILocalVariable(name: "cli", arg: 1, scope: !523, file: !2, line: 259, type: !526)
!523 = distinct !DISubprogram(name: "command_sync", scope: !2, file: !2, line: 259, type: !524, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !527)
!524 = !DISubroutineType(types: !525)
!525 = !{null, !526}
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!527 = !{!522}
!528 = !DILocation(line: 0, scope: !523, inlinedAt: !529)
!529 = distinct !DILocation(line: 158, column: 4, scope: !530)
!530 = distinct !DILexicalBlock(scope: !520, file: !2, line: 157, column: 40)
!531 = !DILocation(line: 260, column: 19, scope: !523, inlinedAt: !529)
!532 = !DILocation(line: 260, column: 2, scope: !523, inlinedAt: !529)
!533 = !DILocation(line: 261, column: 2, scope: !523, inlinedAt: !529)
!534 = !DILocation(line: 262, column: 2, scope: !523, inlinedAt: !529)
!535 = !DILocation(line: 159, column: 4, scope: !530)
!536 = !DILocation(line: 161, column: 15, scope: !537)
!537 = distinct !DILexicalBlock(scope: !520, file: !2, line: 161, column: 14)
!538 = !DILocation(line: 161, column: 14, scope: !520)
!539 = !DILocalVariable(name: "cli", arg: 1, scope: !540, file: !2, line: 265, type: !526)
!540 = distinct !DISubprogram(name: "command_async", scope: !2, file: !2, line: 265, type: !524, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !541)
!541 = !{!539}
!542 = !DILocation(line: 0, scope: !540, inlinedAt: !543)
!543 = distinct !DILocation(line: 162, column: 4, scope: !544)
!544 = distinct !DILexicalBlock(scope: !537, file: !2, line: 161, column: 41)
!545 = !DILocation(line: 266, column: 20, scope: !540, inlinedAt: !543)
!546 = !DILocation(line: 266, column: 2, scope: !540, inlinedAt: !543)
!547 = !DILocation(line: 267, column: 2, scope: !540, inlinedAt: !543)
!548 = !DILocation(line: 268, column: 2, scope: !540, inlinedAt: !543)
!549 = !DILocation(line: 163, column: 4, scope: !544)
!550 = !DILocation(line: 167, column: 8, scope: !551)
!551 = distinct !DILexicalBlock(scope: !374, file: !2, line: 167, column: 7)
!552 = !DILocation(line: 167, column: 7, scope: !374)
!553 = !DILocation(line: 168, column: 4, scope: !551)
!554 = !DILocation(line: 169, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !551, file: !2, line: 169, column: 12)
!556 = !DILocation(line: 169, column: 12, scope: !551)
!557 = !DILocation(line: 170, column: 4, scope: !555)
!558 = !DILocation(line: 171, column: 13, scope: !559)
!559 = distinct !DILexicalBlock(scope: !555, file: !2, line: 171, column: 12)
!560 = !DILocation(line: 171, column: 12, scope: !555)
!561 = !DILocation(line: 172, column: 4, scope: !559)
!562 = !DILocation(line: 173, column: 13, scope: !563)
!563 = distinct !DILexicalBlock(scope: !559, file: !2, line: 173, column: 12)
!564 = !DILocation(line: 173, column: 12, scope: !559)
!565 = !DILocation(line: 174, column: 4, scope: !563)
!566 = !DILocation(line: 175, column: 13, scope: !567)
!567 = distinct !DILexicalBlock(scope: !563, file: !2, line: 175, column: 12)
!568 = !DILocation(line: 175, column: 12, scope: !563)
!569 = !DILocation(line: 176, column: 4, scope: !567)
!570 = !DILocation(line: 177, column: 13, scope: !571)
!571 = distinct !DILexicalBlock(scope: !567, file: !2, line: 177, column: 12)
!572 = !DILocation(line: 177, column: 12, scope: !567)
!573 = !DILocation(line: 178, column: 4, scope: !571)
!574 = !DILocation(line: 179, column: 13, scope: !575)
!575 = distinct !DILexicalBlock(scope: !571, file: !2, line: 179, column: 12)
!576 = !DILocation(line: 179, column: 12, scope: !571)
!577 = !DILocation(line: 181, column: 13, scope: !578)
!578 = distinct !DILexicalBlock(scope: !575, file: !2, line: 181, column: 12)
!579 = !DILocation(line: 181, column: 12, scope: !575)
!580 = !DILocation(line: 183, column: 13, scope: !581)
!581 = distinct !DILexicalBlock(scope: !578, file: !2, line: 183, column: 12)
!582 = !DILocation(line: 183, column: 12, scope: !578)
!583 = !DILocation(line: 184, column: 4, scope: !581)
!584 = !DILocation(line: 185, column: 13, scope: !585)
!585 = distinct !DILexicalBlock(scope: !581, file: !2, line: 185, column: 12)
!586 = !DILocation(line: 185, column: 12, scope: !581)
!587 = !DILocation(line: 186, column: 4, scope: !585)
!588 = !DILocation(line: 191, column: 13, scope: !589)
!589 = distinct !DILexicalBlock(scope: !585, file: !2, line: 191, column: 12)
!590 = !DILocation(line: 191, column: 12, scope: !585)
!591 = !DILocation(line: 192, column: 4, scope: !589)
!592 = !DILocation(line: 193, column: 13, scope: !593)
!593 = distinct !DILexicalBlock(scope: !589, file: !2, line: 193, column: 12)
!594 = !DILocation(line: 193, column: 12, scope: !589)
!595 = !DILocation(line: 194, column: 4, scope: !593)
!596 = !DILocation(line: 196, column: 4, scope: !597)
!597 = distinct !DILexicalBlock(scope: !593, file: !2, line: 195, column: 8)
!598 = !DILocation(line: 197, column: 4, scope: !597)
!599 = !DILocation(line: 199, column: 1, scope: !374)
!600 = !DILocation(line: 200, column: 3, scope: !374)
!601 = !DILocation(line: 201, column: 2, scope: !375)
!602 = !DILocation(line: 203, column: 1, scope: !282)
!603 = !DISubprogram(name: "bzero", scope: !604, file: !604, line: 42, type: !605, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!604 = !DIFile(filename: "/usr/include/strings.h", directory: "", checksumkind: CSK_MD5, checksum: "7444da68ad94ab9f25ff447750787173")
!605 = !DISubroutineType(types: !606)
!606 = !{null, !72, !74}
!607 = !DISubprogram(name: "strcmp", scope: !608, file: !608, line: 156, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!608 = !DIFile(filename: "/usr/include/string.h", directory: "", checksumkind: CSK_MD5, checksum: "f443da8025a0b7c1498fb6c554ec788d")
!609 = !DISubroutineType(types: !610)
!610 = !{!285, !611, !611}
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!613 = !DISubprogram(name: "finedb_create", scope: !63, file: !63, line: 50, type: !614, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!614 = !DISubroutineType(types: !615)
!615 = !{!295, !611, !301}
!616 = distinct !DISubprogram(name: "printf_color", scope: !2, file: !2, line: 665, type: !617, scopeLine: 665, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !619)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !611, !73, null}
!619 = !{!620, !621, !622, !634}
!620 = !DILocalVariable(name: "color", arg: 1, scope: !616, file: !2, line: 665, type: !611)
!621 = !DILocalVariable(name: "s", arg: 2, scope: !616, file: !2, line: 665, type: !73)
!622 = !DILocalVariable(name: "ap", scope: !616, file: !2, line: 666, type: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !624, line: 22, baseType: !625)
!624 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stdarg.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "4c819f80dd915987182e9ab226e27a5a")
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !626, baseType: !627)
!626 = !DIFile(filename: "finedb-cli.c", directory: "/home/raj/FineDB/src/cli")
!627 = !DICompositeType(tag: DW_TAG_array_type, baseType: !628, size: 192, elements: !355)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !629)
!629 = !{!630, !631, !632, !633}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !628, file: !626, line: 642, baseType: !58, size: 32)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !628, file: !626, line: 642, baseType: !58, size: 32, offset: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !628, file: !626, line: 642, baseType: !72, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !628, file: !626, line: 642, baseType: !72, size: 64, offset: 128)
!634 = !DILocalVariable(name: "i", scope: !616, file: !2, line: 667, type: !285)
!635 = !DILocation(line: 0, scope: !616)
!636 = !DILocation(line: 666, column: 2, scope: !616)
!637 = !DILocation(line: 666, column: 10, scope: !616)
!638 = !DILocation(line: 669, column: 2, scope: !616)
!639 = !DILocation(line: 670, column: 7, scope: !640)
!640 = distinct !DILexicalBlock(scope: !616, file: !2, line: 670, column: 6)
!641 = !DILocation(line: 670, column: 6, scope: !616)
!642 = !DILocation(line: 672, column: 12, scope: !643)
!643 = distinct !DILexicalBlock(scope: !640, file: !2, line: 672, column: 11)
!644 = !DILocation(line: 672, column: 11, scope: !640)
!645 = !DILocation(line: 674, column: 12, scope: !646)
!646 = distinct !DILexicalBlock(scope: !643, file: !2, line: 674, column: 11)
!647 = !DILocation(line: 674, column: 11, scope: !643)
!648 = !DILocation(line: 676, column: 12, scope: !649)
!649 = distinct !DILexicalBlock(scope: !646, file: !2, line: 676, column: 11)
!650 = !DILocation(line: 676, column: 11, scope: !646)
!651 = !DILocation(line: 678, column: 12, scope: !652)
!652 = distinct !DILexicalBlock(scope: !649, file: !2, line: 678, column: 11)
!653 = !DILocation(line: 678, column: 11, scope: !649)
!654 = !DILocation(line: 680, column: 12, scope: !655)
!655 = distinct !DILexicalBlock(scope: !652, file: !2, line: 680, column: 11)
!656 = !DILocation(line: 680, column: 11, scope: !652)
!657 = !DILocation(line: 682, column: 12, scope: !658)
!658 = distinct !DILexicalBlock(scope: !655, file: !2, line: 682, column: 11)
!659 = !DILocation(line: 682, column: 11, scope: !655)
!660 = !DILocation(line: 686, column: 2, scope: !616)
!661 = !DILocalVariable(name: "__fmt", arg: 1, scope: !662, file: !663, line: 39, type: !666)
!662 = distinct !DISubprogram(name: "vprintf", scope: !663, file: !663, line: 39, type: !664, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !668)
!663 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "c10e343656e7a2bf1044ef4e4442d902")
!664 = !DISubroutineType(types: !665)
!665 = !{!285, !666, !667}
!666 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !611)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!668 = !{!661, !669}
!669 = !DILocalVariable(name: "__arg", arg: 2, scope: !662, file: !663, line: 39, type: !667)
!670 = !DILocation(line: 0, scope: !662, inlinedAt: !671)
!671 = distinct !DILocation(line: 687, column: 2, scope: !616)
!672 = !DILocation(line: 41, column: 20, scope: !662, inlinedAt: !671)
!673 = !{!674}
!674 = distinct !{!674, !675, !"vprintf: argument 0"}
!675 = distinct !{!675, !"vprintf"}
!676 = !DILocation(line: 41, column: 10, scope: !662, inlinedAt: !671)
!677 = !DILocation(line: 688, column: 2, scope: !616)
!678 = !DILocation(line: 689, column: 2, scope: !616)
!679 = !DILocation(line: 690, column: 1, scope: !616)
!680 = !DISubprogram(name: "printf", scope: !681, file: !681, line: 356, type: !682, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!681 = !DIFile(filename: "/usr/include/stdio.h", directory: "", checksumkind: CSK_MD5, checksum: "f31eefcc3f15835fc5a4023a625cf609")
!682 = !DISubroutineType(types: !683)
!683 = !{!285, !666, null}
!684 = !DISubprogram(name: "exit", scope: !685, file: !685, line: 624, type: !686, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized, retainedNodes: !514)
!685 = !DIFile(filename: "/usr/include/stdlib.h", directory: "", checksumkind: CSK_MD5, checksum: "02258fad21adf111bb9df9825e61954a")
!686 = !DISubroutineType(types: !687)
!687 = !{null, !285}
!688 = !DISubprogram(name: "finedb_connect", scope: !63, file: !63, line: 65, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!689 = !DISubroutineType(types: !690)
!690 = !{!285, !295}
!691 = !DISubprogram(name: "getenv", scope: !685, file: !685, line: 641, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!692 = !DISubroutineType(types: !693)
!693 = !{!73, !611}
!694 = !DISubprogram(name: "snprintf", scope: !681, file: !681, line: 378, type: !695, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!695 = !DISubroutineType(types: !696)
!696 = !{!285, !697, !74, !666, null}
!697 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!698 = !DISubprogram(name: "fopen", scope: !681, file: !681, line: 258, type: !699, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!699 = !DISubroutineType(types: !700)
!700 = !{!321, !666, !666}
!701 = !DISubprogram(name: "fclose", scope: !681, file: !681, line: 178, type: !702, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!702 = !DISubroutineType(types: !703)
!703 = !{!285, !321}
!704 = !DISubprogram(name: "linenoiseHistoryLoad", scope: !705, file: !705, line: 53, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!705 = !DIFile(filename: "../../lib/linenoise/linenoise.h", directory: "/home/raj/FineDB/src/cli", checksumkind: CSK_MD5, checksum: "f1ded1c74c65db7d30c5f45ba2e5463d")
!706 = !DISubroutineType(types: !707)
!707 = !{!285, !73}
!708 = !DISubprogram(name: "linenoiseSetCompletionCallback", scope: !705, file: !705, line: 46, type: !709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!709 = !DISubroutineType(types: !710)
!710 = !{null, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenoiseCompletionCallback", file: !705, line: 45, baseType: !713)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !611, !715}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "linenoiseCompletions", file: !705, line: 43, baseType: !717)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "linenoiseCompletions", file: !705, line: 40, size: 128, elements: !718)
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !717, file: !705, line: 41, baseType: !74, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "cvec", scope: !717, file: !705, line: 42, baseType: !286, size: 64, offset: 64)
!721 = distinct !DISubprogram(name: "cli_completion", scope: !2, file: !2, line: 622, type: !713, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !722)
!722 = !{!723, !724, !725, !726, !727}
!723 = !DILocalVariable(name: "buf", arg: 1, scope: !721, file: !2, line: 622, type: !611)
!724 = !DILocalVariable(name: "lc", arg: 2, scope: !721, file: !2, line: 622, type: !715)
!725 = !DILocalVariable(name: "i", scope: !721, file: !2, line: 623, type: !58)
!726 = !DILocalVariable(name: "bufsz", scope: !721, file: !2, line: 624, type: !74)
!727 = !DILocalVariable(name: "cmd", scope: !728, file: !2, line: 627, type: !73)
!728 = distinct !DILexicalBlock(scope: !729, file: !2, line: 626, column: 32)
!729 = distinct !DILexicalBlock(scope: !730, file: !2, line: 626, column: 2)
!730 = distinct !DILexicalBlock(scope: !721, file: !2, line: 626, column: 2)
!731 = !DILocation(line: 0, scope: !721)
!732 = !DILocation(line: 624, column: 17, scope: !721)
!733 = !DILocation(line: 626, column: 14, scope: !729)
!734 = !DILocation(line: 626, column: 2, scope: !730)
!735 = !DILocation(line: 0, scope: !728)
!736 = !DILocation(line: 629, column: 7, scope: !737)
!737 = distinct !DILexicalBlock(scope: !728, file: !2, line: 629, column: 7)
!738 = !DILocation(line: 629, column: 19, scope: !737)
!739 = !DILocation(line: 629, column: 7, scope: !728)
!740 = !DILocation(line: 631, column: 8, scope: !741)
!741 = distinct !DILexicalBlock(scope: !728, file: !2, line: 631, column: 7)
!742 = !DILocation(line: 631, column: 7, scope: !728)
!743 = !DILocation(line: 632, column: 4, scope: !741)
!744 = !DILocation(line: 626, column: 27, scope: !729)
!745 = distinct !{!745, !734, !746}
!746 = !DILocation(line: 633, column: 2, scope: !730)
!747 = !DILocation(line: 634, column: 1, scope: !721)
!748 = !DISubprogram(name: "read", scope: !384, file: !384, line: 371, type: !749, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!749 = !DISubroutineType(types: !750)
!750 = !{!383, !285, !72, !74}
!751 = !DISubprogram(name: "malloc", scope: !685, file: !685, line: 540, type: !752, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!752 = !DISubroutineType(types: !753)
!753 = !{!72, !74}
!754 = !DISubprogram(name: "free", scope: !685, file: !685, line: 555, type: !755, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !72}
!757 = !DISubprogram(name: "linenoise", scope: !705, file: !705, line: 49, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!758 = !DISubprogram(name: "linenoiseHistoryAdd", scope: !705, file: !705, line: 50, type: !759, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!759 = !DISubroutineType(types: !760)
!760 = !{!285, !611}
!761 = !DISubprogram(name: "linenoiseHistorySave", scope: !705, file: !705, line: 52, type: !706, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!762 = !DISubprogram(name: "strcasecmp", scope: !604, file: !604, line: 116, type: !609, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!763 = !DILocation(line: 207, column: 2, scope: !511)
!764 = !DILocation(line: 223, column: 2, scope: !511)
!765 = !DILocation(line: 224, column: 1, scope: !511)
!766 = !DILocation(line: 0, scope: !523)
!767 = !DILocation(line: 260, column: 19, scope: !523)
!768 = !DILocation(line: 260, column: 2, scope: !523)
!769 = !DILocation(line: 261, column: 2, scope: !523)
!770 = !DILocation(line: 262, column: 2, scope: !523)
!771 = !DILocation(line: 263, column: 1, scope: !523)
!772 = !DILocation(line: 0, scope: !540)
!773 = !DILocation(line: 266, column: 20, scope: !540)
!774 = !DILocation(line: 266, column: 2, scope: !540)
!775 = !DILocation(line: 267, column: 2, scope: !540)
!776 = !DILocation(line: 268, column: 2, scope: !540)
!777 = !DILocation(line: 269, column: 1, scope: !540)
!778 = distinct !DISubprogram(name: "command_use", scope: !2, file: !2, line: 227, type: !779, scopeLine: 227, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !781)
!779 = !DISubroutineType(types: !780)
!780 = !{null, !526, !73}
!781 = !{!782, !783, !784}
!782 = !DILocalVariable(name: "cli", arg: 1, scope: !778, file: !2, line: 227, type: !526)
!783 = !DILocalVariable(name: "pt", arg: 2, scope: !778, file: !2, line: 227, type: !73)
!784 = !DILocalVariable(name: "rc", scope: !778, file: !2, line: 228, type: !285)
!785 = !DILocation(line: 0, scope: !778)
!786 = !DILocalVariable(name: "cli", arg: 1, scope: !787, file: !2, line: 523, type: !526)
!787 = distinct !DISubprogram(name: "check_connection", scope: !2, file: !2, line: 523, type: !788, scopeLine: 523, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !790)
!788 = !DISubroutineType(types: !789)
!789 = !{!285, !526}
!790 = !{!786}
!791 = !DILocation(line: 0, scope: !787, inlinedAt: !792)
!792 = distinct !DILocation(line: 231, column: 7, scope: !793)
!793 = distinct !DILexicalBlock(scope: !778, file: !2, line: 231, column: 6)
!794 = !DILocation(line: 524, column: 12, scope: !795, inlinedAt: !792)
!795 = distinct !DILexicalBlock(scope: !787, file: !2, line: 524, column: 6)
!796 = !DILocation(line: 524, column: 7, scope: !795, inlinedAt: !792)
!797 = !DILocation(line: 524, column: 6, scope: !787, inlinedAt: !792)
!798 = !DILocation(line: 527, column: 24, scope: !799, inlinedAt: !792)
!799 = distinct !DILexicalBlock(scope: !787, file: !2, line: 527, column: 6)
!800 = !DILocation(line: 527, column: 7, scope: !799, inlinedAt: !792)
!801 = !DILocation(line: 527, column: 6, scope: !787, inlinedAt: !792)
!802 = !DILocation(line: 530, column: 26, scope: !803, inlinedAt: !792)
!803 = distinct !DILexicalBlock(scope: !787, file: !2, line: 530, column: 6)
!804 = !DILocation(line: 530, column: 6, scope: !803, inlinedAt: !792)
!805 = !DILocation(line: 530, column: 34, scope: !803, inlinedAt: !792)
!806 = !DILocation(line: 530, column: 6, scope: !787, inlinedAt: !792)
!807 = !DILocation(line: 531, column: 3, scope: !808, inlinedAt: !792)
!808 = distinct !DILexicalBlock(scope: !803, file: !2, line: 530, column: 48)
!809 = !DILocation(line: 231, column: 6, scope: !778)
!810 = !DILocation(line: 535, column: 11, scope: !811, inlinedAt: !792)
!811 = distinct !DILexicalBlock(scope: !787, file: !2, line: 535, column: 6)
!812 = !{!397, !399, i64 16}
!813 = !DILocation(line: 535, column: 6, scope: !811, inlinedAt: !792)
!814 = !DILocation(line: 535, column: 6, scope: !787, inlinedAt: !792)
!815 = !DILocation(line: 536, column: 23, scope: !816, inlinedAt: !792)
!816 = distinct !DILexicalBlock(scope: !811, file: !2, line: 535, column: 27)
!817 = !DILocation(line: 538, column: 2, scope: !816, inlinedAt: !792)
!818 = !DILocation(line: 0, scope: !811, inlinedAt: !792)
!819 = !DILocation(line: 234, column: 7, scope: !820)
!820 = distinct !DILexicalBlock(scope: !778, file: !2, line: 234, column: 6)
!821 = !DILocation(line: 234, column: 18, scope: !820)
!822 = !DILocation(line: 234, column: 22, scope: !820)
!823 = !DILocation(line: 234, column: 6, scope: !778)
!824 = !DILocation(line: 236, column: 31, scope: !825)
!825 = distinct !DILexicalBlock(scope: !826, file: !2, line: 236, column: 7)
!826 = distinct !DILexicalBlock(scope: !820, file: !2, line: 234, column: 49)
!827 = !DILocation(line: 236, column: 13, scope: !825)
!828 = !DILocation(line: 236, column: 46, scope: !825)
!829 = !DILocation(line: 236, column: 7, scope: !826)
!830 = !DILocation(line: 237, column: 4, scope: !831)
!831 = distinct !DILexicalBlock(scope: !825, file: !2, line: 236, column: 52)
!832 = !DILocation(line: 239, column: 3, scope: !831)
!833 = !DILocation(line: 240, column: 4, scope: !834)
!834 = distinct !DILexicalBlock(scope: !825, file: !2, line: 239, column: 10)
!835 = !DILocation(line: 241, column: 4, scope: !834)
!836 = !DILocation(line: 246, column: 31, scope: !837)
!837 = distinct !DILexicalBlock(scope: !838, file: !2, line: 246, column: 7)
!838 = distinct !DILexicalBlock(scope: !820, file: !2, line: 244, column: 9)
!839 = !DILocation(line: 246, column: 13, scope: !837)
!840 = !DILocation(line: 246, column: 44, scope: !837)
!841 = !DILocation(line: 246, column: 7, scope: !838)
!842 = !DILocation(line: 247, column: 4, scope: !843)
!843 = distinct !DILexicalBlock(scope: !837, file: !2, line: 246, column: 50)
!844 = !DILocation(line: 249, column: 3, scope: !843)
!845 = !DILocation(line: 250, column: 4, scope: !846)
!846 = distinct !DILexicalBlock(scope: !837, file: !2, line: 249, column: 10)
!847 = !DILocation(line: 251, column: 18, scope: !846)
!848 = !DILocation(line: 251, column: 16, scope: !846)
!849 = !DILocation(line: 252, column: 4, scope: !846)
!850 = !DILocation(line: 256, column: 1, scope: !778)
!851 = distinct !DISubprogram(name: "command_get", scope: !2, file: !2, line: 272, type: !779, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !852)
!852 = !{!853, !854, !855, !856, !857, !864, !865}
!853 = !DILocalVariable(name: "cli", arg: 1, scope: !851, file: !2, line: 272, type: !526)
!854 = !DILocalVariable(name: "pt", arg: 2, scope: !851, file: !2, line: 272, type: !73)
!855 = !DILocalVariable(name: "pt2", scope: !851, file: !2, line: 273, type: !73)
!856 = !DILocalVariable(name: "key", scope: !851, file: !2, line: 273, type: !73)
!857 = !DILocalVariable(name: "bkey", scope: !851, file: !2, line: 274, type: !858)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "ybin_t", file: !859, line: 33, baseType: !860)
!859 = !DIFile(filename: "../../lib/ylib/ybin.h", directory: "/home/raj/FineDB/src/cli", checksumkind: CSK_MD5, checksum: "7abd7d5e6afd31e8416cab6f0a6bf3b3")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ybin_s", file: !859, line: 27, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !860, file: !859, line: 28, baseType: !72, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !860, file: !859, line: 29, baseType: !74, size: 64, offset: 64)
!864 = !DILocalVariable(name: "bdata", scope: !851, file: !2, line: 274, type: !858)
!865 = !DILocalVariable(name: "rc", scope: !851, file: !2, line: 275, type: !285)
!866 = !DILocation(line: 0, scope: !851)
!867 = !DILocation(line: 274, column: 2, scope: !851)
!868 = !DILocation(line: 274, column: 9, scope: !851)
!869 = !DILocation(line: 274, column: 15, scope: !851)
!870 = !DILocation(line: 277, column: 2, scope: !851)
!871 = distinct !{!871, !870, !870}
!872 = !DILocation(line: 279, column: 3, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 278, column: 18)
!874 = distinct !DILexicalBlock(scope: !851, file: !2, line: 278, column: 6)
!875 = !DILocation(line: 280, column: 3, scope: !873)
!876 = !DILocation(line: 281, column: 3, scope: !873)
!877 = !DILocation(line: 283, column: 4, scope: !851)
!878 = !DILocation(line: 284, column: 7, scope: !879)
!879 = distinct !DILexicalBlock(scope: !851, file: !2, line: 284, column: 6)
!880 = !DILocation(line: 284, column: 6, scope: !851)
!881 = !DILocation(line: 285, column: 3, scope: !882)
!882 = distinct !DILexicalBlock(scope: !879, file: !2, line: 284, column: 12)
!883 = !DILocation(line: 286, column: 3, scope: !882)
!884 = !DILocation(line: 287, column: 3, scope: !882)
!885 = !DILocation(line: 291, column: 13, scope: !886)
!886 = distinct !DILexicalBlock(scope: !851, file: !2, line: 291, column: 6)
!887 = !DILocation(line: 291, column: 31, scope: !886)
!888 = !DILocation(line: 291, column: 6, scope: !851)
!889 = !DILocation(line: 292, column: 3, scope: !890)
!890 = distinct !DILexicalBlock(scope: !886, file: !2, line: 291, column: 40)
!891 = !DILocation(line: 293, column: 3, scope: !890)
!892 = !DILocation(line: 294, column: 3, scope: !890)
!893 = !DILocation(line: 296, column: 7, scope: !851)
!894 = !DILocation(line: 0, scope: !787, inlinedAt: !895)
!895 = distinct !DILocation(line: 299, column: 7, scope: !896)
!896 = distinct !DILexicalBlock(scope: !851, file: !2, line: 299, column: 6)
!897 = !DILocation(line: 524, column: 12, scope: !795, inlinedAt: !895)
!898 = !DILocation(line: 524, column: 7, scope: !795, inlinedAt: !895)
!899 = !DILocation(line: 524, column: 6, scope: !787, inlinedAt: !895)
!900 = !DILocation(line: 527, column: 24, scope: !799, inlinedAt: !895)
!901 = !DILocation(line: 527, column: 7, scope: !799, inlinedAt: !895)
!902 = !DILocation(line: 527, column: 6, scope: !787, inlinedAt: !895)
!903 = !DILocation(line: 530, column: 26, scope: !803, inlinedAt: !895)
!904 = !DILocation(line: 530, column: 6, scope: !803, inlinedAt: !895)
!905 = !DILocation(line: 530, column: 34, scope: !803, inlinedAt: !895)
!906 = !DILocation(line: 530, column: 6, scope: !787, inlinedAt: !895)
!907 = !DILocation(line: 531, column: 3, scope: !808, inlinedAt: !895)
!908 = !DILocation(line: 299, column: 6, scope: !851)
!909 = !DILocation(line: 535, column: 11, scope: !811, inlinedAt: !895)
!910 = !DILocation(line: 535, column: 6, scope: !811, inlinedAt: !895)
!911 = !DILocation(line: 535, column: 6, scope: !787, inlinedAt: !895)
!912 = !DILocation(line: 536, column: 23, scope: !816, inlinedAt: !895)
!913 = !DILocation(line: 538, column: 2, scope: !816, inlinedAt: !895)
!914 = !DILocation(line: 0, scope: !811, inlinedAt: !895)
!915 = !DILocation(line: 302, column: 2, scope: !851)
!916 = !DILocation(line: 303, column: 23, scope: !851)
!917 = !DILocation(line: 303, column: 2, scope: !851)
!918 = !DILocation(line: 304, column: 23, scope: !851)
!919 = !DILocation(line: 304, column: 7, scope: !851)
!920 = !DILocation(line: 305, column: 6, scope: !921)
!921 = distinct !DILexicalBlock(scope: !851, file: !2, line: 305, column: 6)
!922 = !DILocation(line: 305, column: 6, scope: !851)
!923 = !DILocation(line: 306, column: 3, scope: !924)
!924 = distinct !DILexicalBlock(scope: !921, file: !2, line: 305, column: 10)
!925 = !DILocation(line: 307, column: 3, scope: !924)
!926 = !DILocation(line: 308, column: 3, scope: !924)
!927 = !DILocation(line: 310, column: 12, scope: !928)
!928 = distinct !DILexicalBlock(scope: !851, file: !2, line: 310, column: 6)
!929 = !{!930, !398, i64 0}
!930 = !{!"ybin_s", !398, i64 0, !931, i64 8}
!931 = !{!"long", !399, i64 0}
!932 = !DILocation(line: 310, column: 17, scope: !928)
!933 = !DILocation(line: 310, column: 25, scope: !928)
!934 = !DILocation(line: 311, column: 3, scope: !935)
!935 = distinct !DILexicalBlock(scope: !928, file: !2, line: 310, column: 44)
!936 = !DILocation(line: 312, column: 3, scope: !935)
!937 = !DILocation(line: 314, column: 30, scope: !851)
!938 = !DILocation(line: 313, column: 2, scope: !935)
!939 = !DILocation(line: 314, column: 2, scope: !851)
!940 = !DILocation(line: 315, column: 1, scope: !851)
!941 = distinct !DISubprogram(name: "command_del", scope: !2, file: !2, line: 318, type: !779, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !942)
!942 = !{!943, !944, !945, !946, !947, !948}
!943 = !DILocalVariable(name: "cli", arg: 1, scope: !941, file: !2, line: 318, type: !526)
!944 = !DILocalVariable(name: "pt", arg: 2, scope: !941, file: !2, line: 318, type: !73)
!945 = !DILocalVariable(name: "pt2", scope: !941, file: !2, line: 319, type: !73)
!946 = !DILocalVariable(name: "key", scope: !941, file: !2, line: 319, type: !73)
!947 = !DILocalVariable(name: "bkey", scope: !941, file: !2, line: 320, type: !858)
!948 = !DILocalVariable(name: "rc", scope: !941, file: !2, line: 321, type: !285)
!949 = !DILocation(line: 0, scope: !941)
!950 = !DILocation(line: 320, column: 2, scope: !941)
!951 = !DILocation(line: 320, column: 9, scope: !941)
!952 = !DILocation(line: 323, column: 2, scope: !941)
!953 = distinct !{!953, !952, !952}
!954 = !DILocation(line: 325, column: 3, scope: !955)
!955 = distinct !DILexicalBlock(scope: !956, file: !2, line: 324, column: 18)
!956 = distinct !DILexicalBlock(scope: !941, file: !2, line: 324, column: 6)
!957 = !DILocation(line: 326, column: 3, scope: !955)
!958 = !DILocation(line: 327, column: 3, scope: !955)
!959 = !DILocation(line: 329, column: 4, scope: !941)
!960 = !DILocation(line: 330, column: 7, scope: !961)
!961 = distinct !DILexicalBlock(scope: !941, file: !2, line: 330, column: 6)
!962 = !DILocation(line: 330, column: 6, scope: !941)
!963 = !DILocation(line: 331, column: 3, scope: !964)
!964 = distinct !DILexicalBlock(scope: !961, file: !2, line: 330, column: 12)
!965 = !DILocation(line: 332, column: 3, scope: !964)
!966 = !DILocation(line: 333, column: 3, scope: !964)
!967 = !DILocation(line: 337, column: 13, scope: !968)
!968 = distinct !DILexicalBlock(scope: !941, file: !2, line: 337, column: 6)
!969 = !DILocation(line: 337, column: 31, scope: !968)
!970 = !DILocation(line: 337, column: 6, scope: !941)
!971 = !DILocation(line: 338, column: 3, scope: !972)
!972 = distinct !DILexicalBlock(scope: !968, file: !2, line: 337, column: 40)
!973 = !DILocation(line: 339, column: 3, scope: !972)
!974 = !DILocation(line: 340, column: 3, scope: !972)
!975 = !DILocation(line: 342, column: 7, scope: !941)
!976 = !DILocation(line: 0, scope: !787, inlinedAt: !977)
!977 = distinct !DILocation(line: 345, column: 7, scope: !978)
!978 = distinct !DILexicalBlock(scope: !941, file: !2, line: 345, column: 6)
!979 = !DILocation(line: 524, column: 12, scope: !795, inlinedAt: !977)
!980 = !DILocation(line: 524, column: 7, scope: !795, inlinedAt: !977)
!981 = !DILocation(line: 524, column: 6, scope: !787, inlinedAt: !977)
!982 = !DILocation(line: 527, column: 24, scope: !799, inlinedAt: !977)
!983 = !DILocation(line: 527, column: 7, scope: !799, inlinedAt: !977)
!984 = !DILocation(line: 527, column: 6, scope: !787, inlinedAt: !977)
!985 = !DILocation(line: 530, column: 26, scope: !803, inlinedAt: !977)
!986 = !DILocation(line: 530, column: 6, scope: !803, inlinedAt: !977)
!987 = !DILocation(line: 530, column: 34, scope: !803, inlinedAt: !977)
!988 = !DILocation(line: 530, column: 6, scope: !787, inlinedAt: !977)
!989 = !DILocation(line: 531, column: 3, scope: !808, inlinedAt: !977)
!990 = !DILocation(line: 345, column: 6, scope: !941)
!991 = !DILocation(line: 535, column: 11, scope: !811, inlinedAt: !977)
!992 = !DILocation(line: 535, column: 6, scope: !811, inlinedAt: !977)
!993 = !DILocation(line: 535, column: 6, scope: !787, inlinedAt: !977)
!994 = !DILocation(line: 536, column: 23, scope: !816, inlinedAt: !977)
!995 = !DILocation(line: 538, column: 2, scope: !816, inlinedAt: !977)
!996 = !DILocation(line: 0, scope: !811, inlinedAt: !977)
!997 = !DILocation(line: 348, column: 23, scope: !941)
!998 = !DILocation(line: 348, column: 2, scope: !941)
!999 = !DILocation(line: 349, column: 23, scope: !941)
!1000 = !DILocation(line: 349, column: 7, scope: !941)
!1001 = !DILocation(line: 350, column: 6, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !941, file: !2, line: 350, column: 6)
!1003 = !DILocation(line: 350, column: 6, scope: !941)
!1004 = !DILocation(line: 351, column: 3, scope: !1002)
!1005 = !DILocation(line: 352, column: 3, scope: !941)
!1006 = !DILocation(line: 353, column: 2, scope: !941)
!1007 = !DILocation(line: 354, column: 2, scope: !941)
!1008 = !DILocation(line: 355, column: 1, scope: !941)
!1009 = distinct !DISubprogram(name: "command_send_data", scope: !2, file: !2, line: 358, type: !1010, scopeLine: 358, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1012)
!1010 = !DISubroutineType(types: !1011)
!1011 = !{null, !526, !73, !304, !304}
!1012 = !{!1013, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1021, !1022}
!1013 = !DILocalVariable(name: "cli", arg: 1, scope: !1009, file: !2, line: 358, type: !526)
!1014 = !DILocalVariable(name: "pt", arg: 2, scope: !1009, file: !2, line: 358, type: !73)
!1015 = !DILocalVariable(name: "create_only", arg: 3, scope: !1009, file: !2, line: 358, type: !304)
!1016 = !DILocalVariable(name: "update_only", arg: 4, scope: !1009, file: !2, line: 358, type: !304)
!1017 = !DILocalVariable(name: "pt2", scope: !1009, file: !2, line: 359, type: !73)
!1018 = !DILocalVariable(name: "key", scope: !1009, file: !2, line: 359, type: !73)
!1019 = !DILocalVariable(name: "data", scope: !1009, file: !2, line: 359, type: !73)
!1020 = !DILocalVariable(name: "bkey", scope: !1009, file: !2, line: 360, type: !858)
!1021 = !DILocalVariable(name: "bdata", scope: !1009, file: !2, line: 360, type: !858)
!1022 = !DILocalVariable(name: "rc", scope: !1009, file: !2, line: 361, type: !285)
!1023 = !DILocation(line: 0, scope: !1009)
!1024 = !DILocation(line: 360, column: 2, scope: !1009)
!1025 = !DILocation(line: 360, column: 9, scope: !1009)
!1026 = !DILocation(line: 360, column: 15, scope: !1009)
!1027 = !DILocation(line: 363, column: 2, scope: !1009)
!1028 = distinct !{!1028, !1027, !1027}
!1029 = !DILocation(line: 365, column: 3, scope: !1030)
!1030 = distinct !DILexicalBlock(scope: !1031, file: !2, line: 364, column: 18)
!1031 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 364, column: 6)
!1032 = !DILocation(line: 366, column: 3, scope: !1030)
!1033 = !DILocation(line: 367, column: 3, scope: !1030)
!1034 = !DILocation(line: 369, column: 4, scope: !1009)
!1035 = !DILocation(line: 370, column: 7, scope: !1036)
!1036 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 370, column: 6)
!1037 = !DILocation(line: 370, column: 6, scope: !1009)
!1038 = !DILocation(line: 371, column: 3, scope: !1039)
!1039 = distinct !DILexicalBlock(scope: !1036, file: !2, line: 370, column: 12)
!1040 = !DILocation(line: 372, column: 3, scope: !1039)
!1041 = !DILocation(line: 373, column: 3, scope: !1039)
!1042 = !DILocation(line: 377, column: 13, scope: !1043)
!1043 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 377, column: 6)
!1044 = !DILocation(line: 377, column: 31, scope: !1043)
!1045 = !DILocation(line: 377, column: 6, scope: !1009)
!1046 = !DILocation(line: 378, column: 3, scope: !1047)
!1047 = distinct !DILexicalBlock(scope: !1043, file: !2, line: 377, column: 40)
!1048 = !DILocation(line: 379, column: 3, scope: !1047)
!1049 = !DILocation(line: 380, column: 3, scope: !1047)
!1050 = !DILocation(line: 382, column: 7, scope: !1009)
!1051 = !DILocation(line: 383, column: 5, scope: !1009)
!1052 = !DILocation(line: 384, column: 7, scope: !1053)
!1053 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 384, column: 6)
!1054 = !DILocation(line: 384, column: 6, scope: !1009)
!1055 = !DILocation(line: 385, column: 3, scope: !1056)
!1056 = distinct !DILexicalBlock(scope: !1053, file: !2, line: 384, column: 13)
!1057 = !DILocation(line: 386, column: 3, scope: !1056)
!1058 = !DILocation(line: 387, column: 3, scope: !1056)
!1059 = !DILocation(line: 389, column: 7, scope: !1009)
!1060 = !DILocation(line: 390, column: 13, scope: !1009)
!1061 = !DILocation(line: 391, column: 2, scope: !1009)
!1062 = distinct !{!1062, !1061, !1061}
!1063 = !DILocation(line: 393, column: 3, scope: !1064)
!1064 = distinct !DILexicalBlock(scope: !1065, file: !2, line: 392, column: 20)
!1065 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 392, column: 6)
!1066 = !DILocation(line: 394, column: 3, scope: !1064)
!1067 = !DILocation(line: 395, column: 3, scope: !1064)
!1068 = !DILocation(line: 397, column: 6, scope: !1009)
!1069 = !DILocation(line: 398, column: 7, scope: !1070)
!1070 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 398, column: 6)
!1071 = !DILocation(line: 398, column: 6, scope: !1009)
!1072 = !DILocation(line: 399, column: 3, scope: !1073)
!1073 = distinct !DILexicalBlock(scope: !1070, file: !2, line: 398, column: 14)
!1074 = !DILocation(line: 400, column: 3, scope: !1073)
!1075 = !DILocation(line: 401, column: 3, scope: !1073)
!1076 = !DILocation(line: 403, column: 15, scope: !1009)
!1077 = !DILocation(line: 403, column: 13, scope: !1009)
!1078 = !DILocation(line: 403, column: 28, scope: !1009)
!1079 = !DILocation(line: 404, column: 6, scope: !1080)
!1080 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 404, column: 6)
!1081 = !DILocation(line: 404, column: 11, scope: !1080)
!1082 = !DILocation(line: 404, column: 6, scope: !1009)
!1083 = !DILocation(line: 405, column: 3, scope: !1084)
!1084 = distinct !DILexicalBlock(scope: !1080, file: !2, line: 404, column: 19)
!1085 = !DILocation(line: 406, column: 3, scope: !1084)
!1086 = !DILocation(line: 407, column: 3, scope: !1084)
!1087 = !DILocation(line: 409, column: 7, scope: !1009)
!1088 = !DILocation(line: 412, column: 7, scope: !1089)
!1089 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 412, column: 6)
!1090 = !DILocation(line: 412, column: 6, scope: !1009)
!1091 = !DILocation(line: 415, column: 23, scope: !1009)
!1092 = !DILocation(line: 415, column: 2, scope: !1009)
!1093 = !DILocation(line: 416, column: 25, scope: !1009)
!1094 = !DILocation(line: 416, column: 2, scope: !1009)
!1095 = !DILocation(line: 417, column: 6, scope: !1096)
!1096 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 417, column: 6)
!1097 = !DILocation(line: 417, column: 6, scope: !1009)
!1098 = !DILocation(line: 418, column: 24, scope: !1096)
!1099 = !DILocation(line: 418, column: 8, scope: !1096)
!1100 = !DILocation(line: 418, column: 3, scope: !1096)
!1101 = !DILocation(line: 419, column: 11, scope: !1102)
!1102 = distinct !DILexicalBlock(scope: !1096, file: !2, line: 419, column: 11)
!1103 = !DILocation(line: 0, scope: !1102)
!1104 = !DILocation(line: 419, column: 11, scope: !1096)
!1105 = !DILocation(line: 420, column: 8, scope: !1102)
!1106 = !DILocation(line: 420, column: 3, scope: !1102)
!1107 = !DILocation(line: 422, column: 8, scope: !1102)
!1108 = !DILocation(line: 0, scope: !1096)
!1109 = !DILocation(line: 423, column: 6, scope: !1110)
!1110 = distinct !DILexicalBlock(scope: !1009, file: !2, line: 423, column: 6)
!1111 = !DILocation(line: 423, column: 6, scope: !1009)
!1112 = !DILocation(line: 425, column: 17, scope: !1110)
!1113 = !DILocation(line: 424, column: 3, scope: !1110)
!1114 = !DILocation(line: 427, column: 3, scope: !1110)
!1115 = !DILocation(line: 428, column: 2, scope: !1009)
!1116 = !DILocation(line: 429, column: 1, scope: !1009)
!1117 = distinct !DISubprogram(name: "command_inc", scope: !2, file: !2, line: 432, type: !779, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1118)
!1118 = !{!1119, !1120}
!1119 = !DILocalVariable(name: "cli", arg: 1, scope: !1117, file: !2, line: 432, type: !526)
!1120 = !DILocalVariable(name: "pt", arg: 2, scope: !1117, file: !2, line: 432, type: !73)
!1121 = !DILocation(line: 0, scope: !1117)
!1122 = !DILocation(line: 433, column: 1, scope: !1117)
!1123 = distinct !DISubprogram(name: "command_dec", scope: !2, file: !2, line: 436, type: !779, scopeLine: 436, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1124)
!1124 = !{!1125, !1126}
!1125 = !DILocalVariable(name: "cli", arg: 1, scope: !1123, file: !2, line: 436, type: !526)
!1126 = !DILocalVariable(name: "pt", arg: 2, scope: !1123, file: !2, line: 436, type: !73)
!1127 = !DILocation(line: 0, scope: !1123)
!1128 = !DILocation(line: 437, column: 1, scope: !1123)
!1129 = distinct !DISubprogram(name: "command_start", scope: !2, file: !2, line: 440, type: !524, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1130)
!1130 = !{!1131, !1132}
!1131 = !DILocalVariable(name: "cli", arg: 1, scope: !1129, file: !2, line: 440, type: !526)
!1132 = !DILocalVariable(name: "rc", scope: !1129, file: !2, line: 441, type: !285)
!1133 = !DILocation(line: 0, scope: !1129)
!1134 = !DILocation(line: 0, scope: !787, inlinedAt: !1135)
!1135 = distinct !DILocation(line: 444, column: 7, scope: !1136)
!1136 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 444, column: 6)
!1137 = !DILocation(line: 524, column: 12, scope: !795, inlinedAt: !1135)
!1138 = !DILocation(line: 524, column: 7, scope: !795, inlinedAt: !1135)
!1139 = !DILocation(line: 524, column: 6, scope: !787, inlinedAt: !1135)
!1140 = !DILocation(line: 527, column: 24, scope: !799, inlinedAt: !1135)
!1141 = !DILocation(line: 527, column: 7, scope: !799, inlinedAt: !1135)
!1142 = !DILocation(line: 527, column: 6, scope: !787, inlinedAt: !1135)
!1143 = !DILocation(line: 530, column: 26, scope: !803, inlinedAt: !1135)
!1144 = !DILocation(line: 530, column: 6, scope: !803, inlinedAt: !1135)
!1145 = !DILocation(line: 530, column: 34, scope: !803, inlinedAt: !1135)
!1146 = !DILocation(line: 530, column: 6, scope: !787, inlinedAt: !1135)
!1147 = !DILocation(line: 531, column: 3, scope: !808, inlinedAt: !1135)
!1148 = !DILocation(line: 444, column: 6, scope: !1129)
!1149 = !DILocation(line: 535, column: 11, scope: !811, inlinedAt: !1135)
!1150 = !DILocation(line: 535, column: 6, scope: !811, inlinedAt: !1135)
!1151 = !DILocation(line: 535, column: 6, scope: !787, inlinedAt: !1135)
!1152 = !DILocation(line: 536, column: 23, scope: !816, inlinedAt: !1135)
!1153 = !DILocation(line: 538, column: 2, scope: !816, inlinedAt: !1135)
!1154 = !DILocation(line: 0, scope: !811, inlinedAt: !1135)
!1155 = !DILocation(line: 447, column: 11, scope: !1156)
!1156 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 447, column: 6)
!1157 = !DILocation(line: 447, column: 6, scope: !1156)
!1158 = !DILocation(line: 447, column: 6, scope: !1129)
!1159 = !DILocation(line: 448, column: 3, scope: !1160)
!1160 = distinct !DILexicalBlock(scope: !1156, file: !2, line: 447, column: 27)
!1161 = !DILocation(line: 449, column: 3, scope: !1160)
!1162 = !DILocation(line: 450, column: 2, scope: !1160)
!1163 = !DILocation(line: 452, column: 25, scope: !1129)
!1164 = !DILocation(line: 452, column: 7, scope: !1129)
!1165 = !DILocation(line: 453, column: 6, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1129, file: !2, line: 453, column: 6)
!1167 = !DILocation(line: 453, column: 6, scope: !1129)
!1168 = !DILocation(line: 454, column: 3, scope: !1169)
!1169 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 453, column: 10)
!1170 = !DILocation(line: 455, column: 3, scope: !1169)
!1171 = !DILocation(line: 456, column: 3, scope: !1169)
!1172 = !DILocation(line: 458, column: 2, scope: !1129)
!1173 = !DILocation(line: 459, column: 2, scope: !1129)
!1174 = !DILocation(line: 460, column: 22, scope: !1129)
!1175 = !DILocation(line: 461, column: 1, scope: !1129)
!1176 = distinct !DISubprogram(name: "command_stop", scope: !2, file: !2, line: 464, type: !524, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1177)
!1177 = !{!1178, !1179}
!1178 = !DILocalVariable(name: "cli", arg: 1, scope: !1176, file: !2, line: 464, type: !526)
!1179 = !DILocalVariable(name: "rc", scope: !1176, file: !2, line: 465, type: !285)
!1180 = !DILocation(line: 0, scope: !1176)
!1181 = !DILocation(line: 0, scope: !787, inlinedAt: !1182)
!1182 = distinct !DILocation(line: 468, column: 7, scope: !1183)
!1183 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 468, column: 6)
!1184 = !DILocation(line: 524, column: 12, scope: !795, inlinedAt: !1182)
!1185 = !DILocation(line: 524, column: 7, scope: !795, inlinedAt: !1182)
!1186 = !DILocation(line: 524, column: 6, scope: !787, inlinedAt: !1182)
!1187 = !DILocation(line: 527, column: 24, scope: !799, inlinedAt: !1182)
!1188 = !DILocation(line: 527, column: 7, scope: !799, inlinedAt: !1182)
!1189 = !DILocation(line: 527, column: 6, scope: !787, inlinedAt: !1182)
!1190 = !DILocation(line: 530, column: 26, scope: !803, inlinedAt: !1182)
!1191 = !DILocation(line: 530, column: 6, scope: !803, inlinedAt: !1182)
!1192 = !DILocation(line: 530, column: 34, scope: !803, inlinedAt: !1182)
!1193 = !DILocation(line: 530, column: 6, scope: !787, inlinedAt: !1182)
!1194 = !DILocation(line: 531, column: 3, scope: !808, inlinedAt: !1182)
!1195 = !DILocation(line: 468, column: 6, scope: !1176)
!1196 = !DILocation(line: 535, column: 11, scope: !811, inlinedAt: !1182)
!1197 = !DILocation(line: 535, column: 6, scope: !811, inlinedAt: !1182)
!1198 = !DILocation(line: 535, column: 6, scope: !787, inlinedAt: !1182)
!1199 = !DILocation(line: 536, column: 23, scope: !816, inlinedAt: !1182)
!1200 = !DILocation(line: 538, column: 2, scope: !816, inlinedAt: !1182)
!1201 = !DILocation(line: 0, scope: !811, inlinedAt: !1182)
!1202 = !DILocation(line: 471, column: 12, scope: !1203)
!1203 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 471, column: 6)
!1204 = !DILocation(line: 471, column: 7, scope: !1203)
!1205 = !DILocation(line: 471, column: 6, scope: !1176)
!1206 = !DILocation(line: 472, column: 3, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1203, file: !2, line: 471, column: 28)
!1208 = !DILocation(line: 473, column: 3, scope: !1207)
!1209 = !DILocation(line: 474, column: 3, scope: !1207)
!1210 = !DILocation(line: 477, column: 24, scope: !1176)
!1211 = !DILocation(line: 477, column: 7, scope: !1176)
!1212 = !DILocation(line: 478, column: 6, scope: !1213)
!1213 = distinct !DILexicalBlock(scope: !1176, file: !2, line: 478, column: 6)
!1214 = !DILocation(line: 478, column: 6, scope: !1176)
!1215 = !DILocation(line: 479, column: 3, scope: !1216)
!1216 = distinct !DILexicalBlock(scope: !1213, file: !2, line: 478, column: 10)
!1217 = !DILocation(line: 480, column: 3, scope: !1216)
!1218 = !DILocation(line: 481, column: 3, scope: !1216)
!1219 = !DILocation(line: 483, column: 2, scope: !1176)
!1220 = !DILocation(line: 484, column: 2, scope: !1176)
!1221 = !DILocation(line: 485, column: 22, scope: !1176)
!1222 = !DILocation(line: 486, column: 1, scope: !1176)
!1223 = distinct !DISubprogram(name: "command_ping", scope: !2, file: !2, line: 489, type: !524, scopeLine: 489, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1224)
!1224 = !{!1225, !1226}
!1225 = !DILocalVariable(name: "cli", arg: 1, scope: !1223, file: !2, line: 489, type: !526)
!1226 = !DILocalVariable(name: "rc", scope: !1223, file: !2, line: 490, type: !285)
!1227 = !DILocation(line: 0, scope: !1223)
!1228 = !DILocation(line: 493, column: 24, scope: !1223)
!1229 = !DILocation(line: 493, column: 7, scope: !1223)
!1230 = !DILocation(line: 494, column: 6, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1223, file: !2, line: 494, column: 6)
!1232 = !DILocation(line: 494, column: 6, scope: !1223)
!1233 = !DILocation(line: 495, column: 3, scope: !1234)
!1234 = distinct !DILexicalBlock(scope: !1231, file: !2, line: 494, column: 10)
!1235 = !DILocation(line: 497, column: 3, scope: !1234)
!1236 = !DILocation(line: 499, column: 2, scope: !1223)
!1237 = !DILocation(line: 501, column: 1, scope: !1223)
!1238 = distinct !DISubprogram(name: "command_autocheck", scope: !2, file: !2, line: 504, type: !779, scopeLine: 504, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1239)
!1239 = !{!1240, !1241}
!1240 = !DILocalVariable(name: "cli", arg: 1, scope: !1238, file: !2, line: 504, type: !526)
!1241 = !DILocalVariable(name: "pt", arg: 2, scope: !1238, file: !2, line: 504, type: !73)
!1242 = !DILocation(line: 0, scope: !1238)
!1243 = !DILocation(line: 505, column: 6, scope: !1244)
!1244 = distinct !DILexicalBlock(scope: !1238, file: !2, line: 505, column: 6)
!1245 = !DILocation(line: 505, column: 6, scope: !1238)
!1246 = !DILocation(line: 513, column: 24, scope: !1238)
!1247 = !DILocation(line: 513, column: 19, scope: !1238)
!1248 = !DILocation(line: 506, column: 8, scope: !1249)
!1249 = distinct !DILexicalBlock(scope: !1250, file: !2, line: 506, column: 7)
!1250 = distinct !DILexicalBlock(scope: !1244, file: !2, line: 505, column: 18)
!1251 = !DILocation(line: 506, column: 29, scope: !1249)
!1252 = !DILocation(line: 506, column: 33, scope: !1249)
!1253 = !DILocation(line: 506, column: 55, scope: !1249)
!1254 = !DILocation(line: 507, column: 8, scope: !1249)
!1255 = !DILocation(line: 507, column: 31, scope: !1249)
!1256 = !DILocation(line: 507, column: 35, scope: !1249)
!1257 = !DILocation(line: 506, column: 7, scope: !1250)
!1258 = !DILocation(line: 508, column: 9, scope: !1249)
!1259 = !DILocation(line: 508, column: 19, scope: !1249)
!1260 = !DILocation(line: 508, column: 4, scope: !1249)
!1261 = !DILocation(line: 510, column: 9, scope: !1249)
!1262 = !DILocation(line: 510, column: 19, scope: !1249)
!1263 = !DILocation(line: 512, column: 2, scope: !1238)
!1264 = !DILocation(line: 514, column: 2, scope: !1238)
!1265 = !DILocation(line: 515, column: 1, scope: !1238)
!1266 = distinct !DISubprogram(name: "printf_decorated", scope: !2, file: !2, line: 641, type: !617, scopeLine: 641, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !54, retainedNodes: !1267)
!1267 = !{!1268, !1269, !1270, !1271}
!1268 = !DILocalVariable(name: "type", arg: 1, scope: !1266, file: !2, line: 641, type: !611)
!1269 = !DILocalVariable(name: "s", arg: 2, scope: !1266, file: !2, line: 641, type: !73)
!1270 = !DILocalVariable(name: "ap", scope: !1266, file: !2, line: 642, type: !623)
!1271 = !DILocalVariable(name: "i", scope: !1266, file: !2, line: 643, type: !285)
!1272 = !DILocation(line: 0, scope: !1266)
!1273 = !DILocation(line: 642, column: 2, scope: !1266)
!1274 = !DILocation(line: 642, column: 10, scope: !1266)
!1275 = !DILocation(line: 645, column: 2, scope: !1266)
!1276 = !DILocation(line: 646, column: 7, scope: !1277)
!1277 = distinct !DILexicalBlock(scope: !1266, file: !2, line: 646, column: 6)
!1278 = !DILocation(line: 646, column: 6, scope: !1266)
!1279 = !DILocation(line: 648, column: 12, scope: !1280)
!1280 = distinct !DILexicalBlock(scope: !1277, file: !2, line: 648, column: 11)
!1281 = !DILocation(line: 648, column: 11, scope: !1277)
!1282 = !DILocation(line: 650, column: 12, scope: !1283)
!1283 = distinct !DILexicalBlock(scope: !1280, file: !2, line: 650, column: 11)
!1284 = !DILocation(line: 650, column: 11, scope: !1280)
!1285 = !DILocation(line: 654, column: 2, scope: !1266)
!1286 = !DILocation(line: 0, scope: !662, inlinedAt: !1287)
!1287 = distinct !DILocation(line: 655, column: 2, scope: !1266)
!1288 = !DILocation(line: 41, column: 20, scope: !662, inlinedAt: !1287)
!1289 = !{!1290}
!1290 = distinct !{!1290, !1291, !"vprintf: argument 0"}
!1291 = distinct !{!1291, !"vprintf"}
!1292 = !DILocation(line: 41, column: 10, scope: !662, inlinedAt: !1287)
!1293 = !DILocation(line: 656, column: 2, scope: !1266)
!1294 = !DILocation(line: 657, column: 2, scope: !1266)
!1295 = !DILocation(line: 658, column: 1, scope: !1266)
!1296 = !DILocation(line: 0, scope: !787)
!1297 = !DILocation(line: 524, column: 12, scope: !795)
!1298 = !DILocation(line: 524, column: 7, scope: !795)
!1299 = !DILocation(line: 524, column: 6, scope: !787)
!1300 = !DILocation(line: 527, column: 24, scope: !799)
!1301 = !DILocation(line: 527, column: 7, scope: !799)
!1302 = !DILocation(line: 527, column: 6, scope: !787)
!1303 = !DILocation(line: 530, column: 26, scope: !803)
!1304 = !DILocation(line: 530, column: 6, scope: !803)
!1305 = !DILocation(line: 530, column: 34, scope: !803)
!1306 = !DILocation(line: 530, column: 6, scope: !787)
!1307 = !DILocation(line: 531, column: 3, scope: !808)
!1308 = !DILocation(line: 533, column: 3, scope: !808)
!1309 = !DILocation(line: 535, column: 11, scope: !811)
!1310 = !DILocation(line: 535, column: 6, scope: !811)
!1311 = !DILocation(line: 535, column: 6, scope: !787)
!1312 = !DILocation(line: 536, column: 23, scope: !816)
!1313 = !DILocation(line: 538, column: 2, scope: !816)
!1314 = !DILocation(line: 0, scope: !811)
!1315 = !DILocation(line: 541, column: 2, scope: !787)
!1316 = !DILocation(line: 542, column: 1, scope: !787)
!1317 = !DISubprogram(name: "strlen", scope: !608, file: !608, line: 407, type: !1318, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1318 = !DISubroutineType(types: !1319)
!1319 = !{!76, !611}
!1320 = !DISubprogram(name: "finedb_setdb", scope: !63, file: !63, line: 103, type: !1321, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1321 = !DISubroutineType(types: !1322)
!1322 = !{!285, !295, !73}
!1323 = !DISubprogram(name: "strdup", scope: !608, file: !608, line: 187, type: !692, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1324 = !DISubprogram(name: "finedb_sync", scope: !63, file: !63, line: 87, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1325 = !DISubroutineType(types: !1326)
!1326 = !{null, !295}
!1327 = !DISubprogram(name: "finedb_async", scope: !63, file: !63, line: 94, type: !1325, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1328 = !DISubprogram(name: "strchr", scope: !608, file: !608, line: 246, type: !1329, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1329 = !DISubroutineType(types: !1330)
!1330 = !{!73, !611, !285}
!1331 = !DISubprogram(name: "ybin_set", scope: !859, file: !859, line: 46, type: !1332, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1332 = !DISubroutineType(types: !1333)
!1333 = !{!1334, !1334, !72, !74}
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!1335 = !DISubprogram(name: "finedb_get", scope: !63, file: !63, line: 113, type: !1336, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1336 = !DISubroutineType(types: !1337)
!1337 = !{!285, !295, !858, !1334}
!1338 = !DISubprogram(name: "finedb_del", scope: !63, file: !63, line: 122, type: !1339, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1339 = !DISubroutineType(types: !1340)
!1340 = !{!285, !295, !858}
!1341 = !DISubprogram(name: "finedb_add", scope: !63, file: !63, line: 142, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1342 = !DISubroutineType(types: !1343)
!1343 = !{!285, !295, !858, !858}
!1344 = !DISubprogram(name: "finedb_update", scope: !63, file: !63, line: 152, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1345 = !DISubprogram(name: "finedb_put", scope: !63, file: !63, line: 132, type: !1342, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1346 = !DISubprogram(name: "finedb_start", scope: !63, file: !63, line: 184, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1347 = !DISubprogram(name: "finedb_stop", scope: !63, file: !63, line: 192, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1348 = !DISubprogram(name: "finedb_ping", scope: !63, file: !63, line: 200, type: !689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1349 = !DISubprogram(name: "strncasecmp", scope: !604, file: !604, line: 120, type: !1350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1350 = !DISubroutineType(types: !1351)
!1351 = !{!285, !611, !611, !74}
!1352 = !DISubprogram(name: "linenoiseAddCompletion", scope: !705, file: !705, line: 47, type: !1353, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1353 = !DISubroutineType(types: !1354)
!1354 = !{null, !715, !73}
!1355 = !DISubprogram(name: "vfprintf", scope: !681, file: !681, line: 365, type: !1356, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !514)
!1356 = !DISubroutineType(types: !1357)
!1357 = !{!285, !1358, !666, !667}
!1358 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !321)
