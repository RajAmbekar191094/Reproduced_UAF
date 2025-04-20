; ModuleID = './src/transports/utils/dns.c'
source_filename = "./src/transports/utils/dns.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_dns = type { %struct.nn_fsm, i32, ptr, %struct.nn_fsm_event }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.addrinfo = type { i32, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.nn_dns_result = type { i32, %struct.sockaddr_storage, i64 }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"self->state == NN_DNS_STATE_IDLE\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [43 x i8] c"./src/transports/utils/dns_getaddrinfo.inc\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [28 x i8] c"sizeof (hostname) > addrlen\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [25 x i8] c"reply && !reply->ai_next\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !32

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dns_init(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !125 {
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !129, metadata !DIExpression()), !dbg !130
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !131, metadata !DIExpression()), !dbg !132
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !133, metadata !DIExpression()), !dbg !134
  %7 = load ptr, ptr %4, align 8, !dbg !135
  %8 = getelementptr inbounds %struct.nn_dns, ptr %7, i32 0, i32 0, !dbg !136
  %9 = load i32, ptr %5, align 4, !dbg !137
  %10 = load ptr, ptr %4, align 8, !dbg !138
  %11 = load ptr, ptr %6, align 8, !dbg !139
  call void @nn_fsm_init(ptr noundef %8, ptr noundef @nn_dns_handler, i32 noundef %9, ptr noundef %10, ptr noundef %11), !dbg !140
  %12 = load ptr, ptr %4, align 8, !dbg !141
  %13 = getelementptr inbounds %struct.nn_dns, ptr %12, i32 0, i32 1, !dbg !142
  store i32 1, ptr %13, align 8, !dbg !143
  %14 = load ptr, ptr %4, align 8, !dbg !144
  %15 = getelementptr inbounds %struct.nn_dns, ptr %14, i32 0, i32 3, !dbg !145
  call void @nn_fsm_event_init(ptr noundef %15), !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_dns_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !148 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !149, metadata !DIExpression()), !dbg !150
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !151, metadata !DIExpression()), !dbg !152
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !153, metadata !DIExpression()), !dbg !154
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata ptr %9, metadata !157, metadata !DIExpression()), !dbg !158
  %10 = load ptr, ptr %5, align 8, !dbg !159
  %11 = icmp ne ptr %10, null, !dbg !159
  br i1 %11, label %12, label %15, !dbg !159

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !159
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !159
  br label %16, !dbg !159

15:                                               ; preds = %4
  br label %16, !dbg !159

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !159
  store ptr %17, ptr %9, align 8, !dbg !160
  %18 = load i32, ptr %6, align 4, !dbg !161
  %19 = icmp eq i32 %18, -2, !dbg !161
  br i1 %19, label %20, label %23, !dbg !161

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !161
  %22 = icmp eq i32 %21, -3, !dbg !161
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !163
  %25 = zext i1 %24 to i32, !dbg !161
  %26 = sext i32 %25 to i64, !dbg !161
  %27 = icmp ne i64 %26, 0, !dbg !161
  br i1 %27, label %28, label %33, !dbg !164

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !165
  %30 = getelementptr inbounds %struct.nn_dns, ptr %29, i32 0, i32 0, !dbg !167
  call void @nn_fsm_stopped(ptr noundef %30, i32 noundef 2), !dbg !168
  %31 = load ptr, ptr %9, align 8, !dbg !169
  %32 = getelementptr inbounds %struct.nn_dns, ptr %31, i32 0, i32 1, !dbg !170
  store i32 1, ptr %32, align 8, !dbg !171
  br label %70, !dbg !172

33:                                               ; preds = %23
  %34 = load ptr, ptr %9, align 8, !dbg !173
  %35 = getelementptr inbounds %struct.nn_dns, ptr %34, i32 0, i32 1, !dbg !174
  %36 = load i32, ptr %35, align 8, !dbg !174
  switch i32 %36, label %65 [
    i32 1, label %37
    i32 2, label %60
  ], !dbg !175

37:                                               ; preds = %33
  %38 = load i32, ptr %6, align 4, !dbg !176
  switch i32 %38, label %54 [
    i32 -2, label %39
  ], !dbg !178

39:                                               ; preds = %37
  %40 = load i32, ptr %7, align 4, !dbg !179
  switch i32 %40, label %48 [
    i32 -2, label %41
  ], !dbg !181

41:                                               ; preds = %39
  %42 = load ptr, ptr %9, align 8, !dbg !182
  %43 = getelementptr inbounds %struct.nn_dns, ptr %42, i32 0, i32 0, !dbg !184
  %44 = load ptr, ptr %9, align 8, !dbg !185
  %45 = getelementptr inbounds %struct.nn_dns, ptr %44, i32 0, i32 3, !dbg !186
  call void @nn_fsm_raise(ptr noundef %43, ptr noundef %45, i32 noundef 1), !dbg !187
  %46 = load ptr, ptr %5, align 8, !dbg !188
  %47 = getelementptr inbounds %struct.nn_fsm, ptr %46, i32 0, i32 1, !dbg !189
  store i32 2, ptr %47, align 8, !dbg !190
  br label %70, !dbg !191

48:                                               ; preds = %39
  br label %49, !dbg !192

49:                                               ; preds = %48
  %50 = load ptr, ptr @stderr, align 8, !dbg !193
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %50, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 152), !dbg !193
  call void @nn_err_abort() #7, !dbg !193
  unreachable, !dbg !193

52:                                               ; No predecessors!
  br label %53, !dbg !197

53:                                               ; preds = %52
  br label %54, !dbg !197

54:                                               ; preds = %37, %53
  br label %55, !dbg !198

55:                                               ; preds = %54
  %56 = load ptr, ptr @stderr, align 8, !dbg !199
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %56, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 155), !dbg !199
  call void @nn_err_abort() #7, !dbg !199
  unreachable, !dbg !199

58:                                               ; No predecessors!
  br label %59, !dbg !203

59:                                               ; preds = %58
  br label %60, !dbg !203

60:                                               ; preds = %33, %59
  br label %61, !dbg !204

61:                                               ; preds = %60
  %62 = load ptr, ptr @stderr, align 8, !dbg !205
  %63 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 162), !dbg !205
  call void @nn_err_abort() #7, !dbg !205
  unreachable, !dbg !205

64:                                               ; No predecessors!
  br label %65, !dbg !209

65:                                               ; preds = %33, %64
  br label %66, !dbg !210

66:                                               ; preds = %65
  %67 = load ptr, ptr @stderr, align 8, !dbg !211
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %67, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 168), !dbg !211
  call void @nn_err_abort() #7, !dbg !211
  unreachable, !dbg !211

69:                                               ; No predecessors!
  br label %70, !dbg !215

70:                                               ; preds = %28, %41, %69
  ret void, !dbg !216
}

declare void @nn_fsm_event_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dns_term(ptr noundef %0) #0 !dbg !217 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !220, metadata !DIExpression()), !dbg !221
  br label %3, !dbg !222

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !223
  %5 = getelementptr inbounds %struct.nn_dns, ptr %4, i32 0, i32 1, !dbg !223
  %6 = load i32, ptr %5, align 8, !dbg !223
  %7 = icmp eq i32 %6, 1, !dbg !223
  %8 = xor i1 %7, true, !dbg !223
  %9 = zext i1 %8 to i32, !dbg !223
  %10 = sext i32 %9 to i64, !dbg !223
  %11 = icmp ne i64 %10, 0, !dbg !223
  br i1 %11, label %12, label %15, !dbg !226

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !227
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 52), !dbg !227
  call void @nn_err_abort() #7, !dbg !227
  unreachable, !dbg !227

15:                                               ; preds = %3
  br label %16, !dbg !226

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !229
  %18 = getelementptr inbounds %struct.nn_dns, ptr %17, i32 0, i32 3, !dbg !230
  call void @nn_fsm_event_term(ptr noundef %18), !dbg !231
  %19 = load ptr, ptr %2, align 8, !dbg !232
  %20 = getelementptr inbounds %struct.nn_dns, ptr %19, i32 0, i32 0, !dbg !233
  call void @nn_fsm_term(ptr noundef %20), !dbg !234
  ret void, !dbg !235
}

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_dns_isidle(ptr noundef %0) #0 !dbg !236 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !239, metadata !DIExpression()), !dbg !240
  %3 = load ptr, ptr %2, align 8, !dbg !241
  %4 = getelementptr inbounds %struct.nn_dns, ptr %3, i32 0, i32 0, !dbg !242
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !243
  ret i32 %5, !dbg !244
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dns_start(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr noundef %4) #0 !dbg !245 {
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo, align 8
  %13 = alloca ptr, align 8
  %14 = alloca [128 x i8], align 16
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !250, metadata !DIExpression()), !dbg !251
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !252, metadata !DIExpression()), !dbg !253
  store i64 %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !254, metadata !DIExpression()), !dbg !255
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !256, metadata !DIExpression()), !dbg !257
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata ptr %11, metadata !260, metadata !DIExpression()), !dbg !261
  call void @llvm.dbg.declare(metadata ptr %12, metadata !262, metadata !DIExpression()), !dbg !286
  call void @llvm.dbg.declare(metadata ptr %13, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata ptr %14, metadata !289, metadata !DIExpression()), !dbg !293
  br label %15, !dbg !294

15:                                               ; preds = %5
  %16 = load ptr, ptr %6, align 8, !dbg !295
  %17 = getelementptr inbounds %struct.nn_dns, ptr %16, i32 0, i32 1, !dbg !295
  %18 = load i32, ptr %17, align 8, !dbg !295
  %19 = icmp eq i32 %18, 1, !dbg !295
  %20 = xor i1 %19, true, !dbg !295
  %21 = zext i1 %20 to i32, !dbg !295
  %22 = sext i32 %21 to i64, !dbg !295
  %23 = icmp ne i64 %22, 0, !dbg !295
  br i1 %23, label %24, label %27, !dbg !298

24:                                               ; preds = %15
  %25 = load ptr, ptr @stderr, align 8, !dbg !299
  %26 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 71), !dbg !299
  call void @nn_err_abort() #7, !dbg !299
  unreachable, !dbg !299

27:                                               ; preds = %15
  br label %28, !dbg !298

28:                                               ; preds = %27
  %29 = load ptr, ptr %10, align 8, !dbg !301
  %30 = load ptr, ptr %6, align 8, !dbg !302
  %31 = getelementptr inbounds %struct.nn_dns, ptr %30, i32 0, i32 2, !dbg !303
  store ptr %29, ptr %31, align 8, !dbg !304
  %32 = load ptr, ptr %7, align 8, !dbg !305
  %33 = load i64, ptr %8, align 8, !dbg !306
  %34 = load i32, ptr %9, align 4, !dbg !307
  %35 = load ptr, ptr %6, align 8, !dbg !308
  %36 = getelementptr inbounds %struct.nn_dns, ptr %35, i32 0, i32 2, !dbg !309
  %37 = load ptr, ptr %36, align 8, !dbg !309
  %38 = getelementptr inbounds %struct.nn_dns_result, ptr %37, i32 0, i32 1, !dbg !310
  %39 = load ptr, ptr %6, align 8, !dbg !311
  %40 = getelementptr inbounds %struct.nn_dns, ptr %39, i32 0, i32 2, !dbg !312
  %41 = load ptr, ptr %40, align 8, !dbg !312
  %42 = getelementptr inbounds %struct.nn_dns_result, ptr %41, i32 0, i32 2, !dbg !313
  %43 = call i32 @nn_literal_resolve(ptr noundef %32, i64 noundef %33, i32 noundef %34, ptr noundef %38, ptr noundef %42), !dbg !314
  store i32 %43, ptr %11, align 4, !dbg !315
  %44 = load i32, ptr %11, align 4, !dbg !316
  %45 = icmp eq i32 %44, 0, !dbg !318
  br i1 %45, label %46, label %53, !dbg !319

46:                                               ; preds = %28
  %47 = load ptr, ptr %6, align 8, !dbg !320
  %48 = getelementptr inbounds %struct.nn_dns, ptr %47, i32 0, i32 2, !dbg !322
  %49 = load ptr, ptr %48, align 8, !dbg !322
  %50 = getelementptr inbounds %struct.nn_dns_result, ptr %49, i32 0, i32 0, !dbg !323
  store i32 0, ptr %50, align 8, !dbg !324
  %51 = load ptr, ptr %6, align 8, !dbg !325
  %52 = getelementptr inbounds %struct.nn_dns, ptr %51, i32 0, i32 0, !dbg !326
  call void @nn_fsm_start(ptr noundef %52), !dbg !327
  br label %159, !dbg !328

53:                                               ; preds = %28
  br label %54, !dbg !329

54:                                               ; preds = %53
  %55 = load i32, ptr %11, align 4, !dbg !330
  %56 = icmp eq i32 %55, -22, !dbg !330
  %57 = xor i1 %56, true, !dbg !330
  %58 = zext i1 %57 to i32, !dbg !330
  %59 = sext i32 %58 to i64, !dbg !330
  %60 = icmp ne i64 %59, 0, !dbg !330
  br i1 %60, label %61, label %69, !dbg !333

61:                                               ; preds = %54
  %62 = load ptr, ptr @stderr, align 8, !dbg !334
  %63 = load i32, ptr %11, align 4, !dbg !334
  %64 = sub nsw i32 0, %63, !dbg !334
  %65 = call ptr @nn_err_strerror(i32 noundef %64), !dbg !334
  %66 = load i32, ptr %11, align 4, !dbg !334
  %67 = sub nsw i32 0, %66, !dbg !334
  %68 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %62, ptr noundef @.str.3, ptr noundef %65, i32 noundef %67, ptr noundef @.str.2, i32 noundef 84), !dbg !334
  call void @nn_err_abort() #7, !dbg !334
  unreachable, !dbg !334

69:                                               ; preds = %54
  br label %70, !dbg !333

70:                                               ; preds = %69
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 48, i1 false), !dbg !336
  %71 = load i32, ptr %9, align 4, !dbg !337
  %72 = icmp ne i32 %71, 0, !dbg !337
  br i1 %72, label %73, label %75, !dbg !339

73:                                               ; preds = %70
  %74 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 1, !dbg !340
  store i32 2, ptr %74, align 4, !dbg !341
  br label %78, !dbg !342

75:                                               ; preds = %70
  %76 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 1, !dbg !343
  store i32 10, ptr %76, align 4, !dbg !345
  %77 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 0, !dbg !346
  store i32 8, ptr %77, align 8, !dbg !347
  br label %78

78:                                               ; preds = %75, %73
  br label %79, !dbg !348

79:                                               ; preds = %78
  %80 = load i64, ptr %8, align 8, !dbg !349
  %81 = icmp ugt i64 128, %80, !dbg !349
  %82 = xor i1 %81, true, !dbg !349
  %83 = zext i1 %82 to i32, !dbg !349
  %84 = sext i32 %83 to i64, !dbg !349
  %85 = icmp ne i64 %84, 0, !dbg !349
  br i1 %85, label %86, label %89, !dbg !352

86:                                               ; preds = %79
  %87 = load ptr, ptr @stderr, align 8, !dbg !353
  %88 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %87, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 96), !dbg !353
  call void @nn_err_abort() #7, !dbg !353
  unreachable, !dbg !353

89:                                               ; preds = %79
  br label %90, !dbg !352

90:                                               ; preds = %89
  %91 = getelementptr inbounds %struct.addrinfo, ptr %12, i32 0, i32 2, !dbg !355
  store i32 1, ptr %91, align 8, !dbg !356
  %92 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 0, !dbg !357
  %93 = load ptr, ptr %7, align 8, !dbg !358
  %94 = load i64, ptr %8, align 8, !dbg !359
  call void @llvm.memcpy.p0.p0.i64(ptr align 16 %92, ptr align 1 %93, i64 %94, i1 false), !dbg !357
  %95 = load i64, ptr %8, align 8, !dbg !360
  %96 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 %95, !dbg !361
  store i8 0, ptr %96, align 1, !dbg !362
  %97 = getelementptr inbounds [128 x i8], ptr %14, i64 0, i64 0, !dbg !363
  %98 = call i32 @getaddrinfo(ptr noundef %97, ptr noundef null, ptr noundef %12, ptr noundef %13), !dbg !364
  %99 = load ptr, ptr %6, align 8, !dbg !365
  %100 = getelementptr inbounds %struct.nn_dns, ptr %99, i32 0, i32 2, !dbg !366
  %101 = load ptr, ptr %100, align 8, !dbg !366
  %102 = getelementptr inbounds %struct.nn_dns_result, ptr %101, i32 0, i32 0, !dbg !367
  store i32 %98, ptr %102, align 8, !dbg !368
  %103 = load ptr, ptr %6, align 8, !dbg !369
  %104 = getelementptr inbounds %struct.nn_dns, ptr %103, i32 0, i32 2, !dbg !371
  %105 = load ptr, ptr %104, align 8, !dbg !371
  %106 = getelementptr inbounds %struct.nn_dns_result, ptr %105, i32 0, i32 0, !dbg !372
  %107 = load i32, ptr %106, align 8, !dbg !372
  %108 = icmp ne i32 %107, 0, !dbg !369
  br i1 %108, label %109, label %112, !dbg !373

109:                                              ; preds = %90
  %110 = load ptr, ptr %6, align 8, !dbg !374
  %111 = getelementptr inbounds %struct.nn_dns, ptr %110, i32 0, i32 0, !dbg !376
  call void @nn_fsm_start(ptr noundef %111), !dbg !377
  br label %159, !dbg !378

112:                                              ; preds = %90
  br label %113, !dbg !379

113:                                              ; preds = %112
  %114 = load ptr, ptr %13, align 8, !dbg !380
  %115 = icmp ne ptr %114, null, !dbg !380
  br i1 %115, label %116, label %122, !dbg !380

116:                                              ; preds = %113
  %117 = load ptr, ptr %13, align 8, !dbg !380
  %118 = getelementptr inbounds %struct.addrinfo, ptr %117, i32 0, i32 7, !dbg !380
  %119 = load ptr, ptr %118, align 8, !dbg !380
  %120 = icmp ne ptr %119, null, !dbg !380
  %121 = xor i1 %120, true, !dbg !380
  br label %122

122:                                              ; preds = %116, %113
  %123 = phi i1 [ false, %113 ], [ %121, %116 ], !dbg !383
  %124 = xor i1 %123, true, !dbg !380
  %125 = zext i1 %124 to i32, !dbg !380
  %126 = sext i32 %125 to i64, !dbg !380
  %127 = icmp ne i64 %126, 0, !dbg !380
  br i1 %127, label %128, label %131, !dbg !384

128:                                              ; preds = %122
  %129 = load ptr, ptr @stderr, align 8, !dbg !385
  %130 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %129, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 109), !dbg !385
  call void @nn_err_abort() #7, !dbg !385
  unreachable, !dbg !385

131:                                              ; preds = %122
  br label %132, !dbg !384

132:                                              ; preds = %131
  %133 = load ptr, ptr %6, align 8, !dbg !387
  %134 = getelementptr inbounds %struct.nn_dns, ptr %133, i32 0, i32 2, !dbg !388
  %135 = load ptr, ptr %134, align 8, !dbg !388
  %136 = getelementptr inbounds %struct.nn_dns_result, ptr %135, i32 0, i32 0, !dbg !389
  store i32 0, ptr %136, align 8, !dbg !390
  %137 = load ptr, ptr %6, align 8, !dbg !391
  %138 = getelementptr inbounds %struct.nn_dns, ptr %137, i32 0, i32 2, !dbg !392
  %139 = load ptr, ptr %138, align 8, !dbg !392
  %140 = getelementptr inbounds %struct.nn_dns_result, ptr %139, i32 0, i32 1, !dbg !393
  %141 = load ptr, ptr %13, align 8, !dbg !394
  %142 = getelementptr inbounds %struct.addrinfo, ptr %141, i32 0, i32 5, !dbg !395
  %143 = load ptr, ptr %142, align 8, !dbg !395
  %144 = load ptr, ptr %13, align 8, !dbg !396
  %145 = getelementptr inbounds %struct.addrinfo, ptr %144, i32 0, i32 4, !dbg !397
  %146 = load i32, ptr %145, align 8, !dbg !397
  %147 = zext i32 %146 to i64, !dbg !396
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %140, ptr align 2 %143, i64 %147, i1 false), !dbg !398
  %148 = load ptr, ptr %13, align 8, !dbg !399
  %149 = getelementptr inbounds %struct.addrinfo, ptr %148, i32 0, i32 4, !dbg !400
  %150 = load i32, ptr %149, align 8, !dbg !400
  %151 = zext i32 %150 to i64, !dbg !399
  %152 = load ptr, ptr %6, align 8, !dbg !401
  %153 = getelementptr inbounds %struct.nn_dns, ptr %152, i32 0, i32 2, !dbg !402
  %154 = load ptr, ptr %153, align 8, !dbg !402
  %155 = getelementptr inbounds %struct.nn_dns_result, ptr %154, i32 0, i32 2, !dbg !403
  store i64 %151, ptr %155, align 8, !dbg !404
  %156 = load ptr, ptr %13, align 8, !dbg !405
  call void @freeaddrinfo(ptr noundef %156) #8, !dbg !406
  %157 = load ptr, ptr %6, align 8, !dbg !407
  %158 = getelementptr inbounds %struct.nn_dns, ptr %157, i32 0, i32 0, !dbg !408
  call void @nn_fsm_start(ptr noundef %158), !dbg !409
  br label %159, !dbg !410

159:                                              ; preds = %132, %109, %46
  ret void, !dbg !410
}

declare i32 @nn_literal_resolve(ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

declare i32 @getaddrinfo(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @freeaddrinfo(ptr noundef) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_dns_stop(ptr noundef %0) #0 !dbg !411 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !412, metadata !DIExpression()), !dbg !413
  %3 = load ptr, ptr %2, align 8, !dbg !414
  %4 = getelementptr inbounds %struct.nn_dns, ptr %3, i32 0, i32 0, !dbg !415
  call void @nn_fsm_stop(ptr noundef %4), !dbg !416
  ret void, !dbg !417
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare void @nn_fsm_raise(ptr noundef, ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!37}
!llvm.module.flags = !{!117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/utils/dns_getaddrinfo.inc", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cb85e042e4d7417b4b9ecb7f4bb597c5")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 344, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 43)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 84, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 17)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 96, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 224, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 28)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 109, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 200, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 25)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 152, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 2)
!37 = distinct !DICompileUnit(language: DW_LANG_C11, file: !38, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !39, retainedTypes: !53, globals: !116, splitDebugInlining: false, nameTableKind: None)
!38 = !DIFile(filename: "src/transports/utils/dns.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "57a8f4f93cdcb155dc7d40172dcea619")
!39 = !{!40}
!40 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "__socket_type", file: !41, line: 24, baseType: !42, size: 32, elements: !43)
!41 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket_type.h", directory: "", checksumkind: CSK_MD5, checksum: "0d4e972fdeb3da9a5bc94fa41144e9f8")
!42 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DIEnumerator(name: "SOCK_STREAM", value: 1)
!45 = !DIEnumerator(name: "SOCK_DGRAM", value: 2)
!46 = !DIEnumerator(name: "SOCK_RAW", value: 3)
!47 = !DIEnumerator(name: "SOCK_RDM", value: 4)
!48 = !DIEnumerator(name: "SOCK_SEQPACKET", value: 5)
!49 = !DIEnumerator(name: "SOCK_DCCP", value: 6)
!50 = !DIEnumerator(name: "SOCK_PACKET", value: 10)
!51 = !DIEnumerator(name: "SOCK_CLOEXEC", value: 524288)
!52 = !DIEnumerator(name: "SOCK_NONBLOCK", value: 2048)
!53 = !{!54, !55, !115}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dns", file: !57, line: 29, size: 1088, elements: !58)
!57 = !DIFile(filename: "./src/transports/utils/dns_getaddrinfo.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a015ef2cc10793d51c95bab5cc36a226")
!58 = !{!59, !90, !91, !114}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !56, file: !57, line: 30, baseType: !60, size: 640)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !61, line: 66, size: 640, elements: !62)
!61 = !DIFile(filename: "./src/transports/utils/../../aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!62 = !{!63, !70, !71, !72, !73, !74, !77}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !60, file: !61, line: 67, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !61, line: 58, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !54, !54, !69}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !60, file: !61, line: 68, baseType: !54, size: 32, offset: 64)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !60, file: !61, line: 69, baseType: !54, size: 32, offset: 96)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !60, file: !61, line: 70, baseType: !69, size: 64, offset: 128)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !60, file: !61, line: 71, baseType: !68, size: 64, offset: 192)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !60, file: !61, line: 72, baseType: !75, size: 64, offset: 256)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !61, line: 30, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !60, file: !61, line: 73, baseType: !78, size: 320, offset: 320)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !61, line: 34, size: 320, elements: !79)
!79 = !{!80, !81, !82, !83, !84}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !78, file: !61, line: 35, baseType: !68, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !78, file: !61, line: 36, baseType: !54, size: 32, offset: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !78, file: !61, line: 37, baseType: !69, size: 64, offset: 128)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !78, file: !61, line: 38, baseType: !54, size: 32, offset: 192)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !78, file: !61, line: 39, baseType: !85, size: 64, offset: 256)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !86, line: 33, size: 64, elements: !87)
!86 = !DIFile(filename: "./src/transports/utils/../../aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !85, file: !86, line: 34, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !56, file: !57, line: 31, baseType: !54, size: 32, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "result", scope: !56, file: !57, line: 32, baseType: !92, size: 64, offset: 704)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_dns_result", file: !94, line: 40, size: 1152, elements: !95)
!94 = !DIFile(filename: "./src/transports/utils/dns.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "76a00e05d3a52d3969672216fa33910b")
!95 = !{!96, !97, !111}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !93, file: !94, line: 41, baseType: !54, size: 32)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !93, file: !94, line: 42, baseType: !98, size: 1024, offset: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_storage", file: !99, line: 193, size: 1024, elements: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!100 = !{!101, !105, !109}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "ss_family", scope: !98, file: !99, line: 195, baseType: !102, size: 16)
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !103, line: 28, baseType: !104)
!103 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!104 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_padding", scope: !98, file: !99, line: 196, baseType: !106, size: 944, offset: 16)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 944, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 118)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__ss_align", scope: !98, file: !99, line: 197, baseType: !110, size: 64, offset: 960)
!110 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "addrlen", scope: !93, file: !94, line: 43, baseType: !112, size: 64, offset: 1088)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 46, baseType: !110)
!113 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!114 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !56, file: !57, line: 33, baseType: !78, size: 320, offset: 768)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!116 = !{!0, !7, !12, !17, !22, !27, !32}
!117 = !{i32 7, !"Dwarf Version", i32 5}
!118 = !{i32 2, !"Debug Info Version", i32 3}
!119 = !{i32 1, !"wchar_size", i32 4}
!120 = !{i32 8, !"PIC Level", i32 2}
!121 = !{i32 7, !"PIE Level", i32 2}
!122 = !{i32 7, !"uwtable", i32 2}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 16.0.0"}
!125 = distinct !DISubprogram(name: "nn_dns_init", scope: !2, file: !2, line: 43, type: !126, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !128)
!126 = !DISubroutineType(types: !127)
!127 = !{null, !55, !54, !68}
!128 = !{}
!129 = !DILocalVariable(name: "self", arg: 1, scope: !125, file: !2, line: 43, type: !55)
!130 = !DILocation(line: 43, column: 34, scope: !125)
!131 = !DILocalVariable(name: "src", arg: 2, scope: !125, file: !2, line: 43, type: !54)
!132 = !DILocation(line: 43, column: 44, scope: !125)
!133 = !DILocalVariable(name: "owner", arg: 3, scope: !125, file: !2, line: 43, type: !68)
!134 = !DILocation(line: 43, column: 64, scope: !125)
!135 = !DILocation(line: 45, column: 19, scope: !125)
!136 = !DILocation(line: 45, column: 25, scope: !125)
!137 = !DILocation(line: 45, column: 46, scope: !125)
!138 = !DILocation(line: 45, column: 51, scope: !125)
!139 = !DILocation(line: 45, column: 57, scope: !125)
!140 = !DILocation(line: 45, column: 5, scope: !125)
!141 = !DILocation(line: 46, column: 5, scope: !125)
!142 = !DILocation(line: 46, column: 11, scope: !125)
!143 = !DILocation(line: 46, column: 17, scope: !125)
!144 = !DILocation(line: 47, column: 25, scope: !125)
!145 = !DILocation(line: 47, column: 31, scope: !125)
!146 = !DILocation(line: 47, column: 5, scope: !125)
!147 = !DILocation(line: 48, column: 1, scope: !125)
!148 = distinct !DISubprogram(name: "nn_dns_handler", scope: !2, file: !2, line: 123, type: !66, scopeLine: 125, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !37, retainedNodes: !128)
!149 = !DILocalVariable(name: "self", arg: 1, scope: !148, file: !2, line: 123, type: !68)
!150 = !DILocation(line: 123, column: 44, scope: !148)
!151 = !DILocalVariable(name: "src", arg: 2, scope: !148, file: !2, line: 123, type: !54)
!152 = !DILocation(line: 123, column: 54, scope: !148)
!153 = !DILocalVariable(name: "type", arg: 3, scope: !148, file: !2, line: 123, type: !54)
!154 = !DILocation(line: 123, column: 63, scope: !148)
!155 = !DILocalVariable(name: "srcptr", arg: 4, scope: !148, file: !2, line: 124, type: !69)
!156 = !DILocation(line: 124, column: 11, scope: !148)
!157 = !DILocalVariable(name: "dns", scope: !148, file: !2, line: 126, type: !55)
!158 = !DILocation(line: 126, column: 20, scope: !148)
!159 = !DILocation(line: 128, column: 11, scope: !148)
!160 = !DILocation(line: 128, column: 9, scope: !148)
!161 = !DILocation(line: 133, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !2, line: 133, column: 9)
!163 = !DILocation(line: 0, scope: !162)
!164 = !DILocation(line: 133, column: 9, scope: !148)
!165 = !DILocation(line: 134, column: 26, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !2, line: 133, column: 64)
!167 = !DILocation(line: 134, column: 31, scope: !166)
!168 = !DILocation(line: 134, column: 9, scope: !166)
!169 = !DILocation(line: 135, column: 9, scope: !166)
!170 = !DILocation(line: 135, column: 14, scope: !166)
!171 = !DILocation(line: 135, column: 20, scope: !166)
!172 = !DILocation(line: 136, column: 9, scope: !166)
!173 = !DILocation(line: 139, column: 13, scope: !148)
!174 = !DILocation(line: 139, column: 18, scope: !148)
!175 = !DILocation(line: 139, column: 5, scope: !148)
!176 = !DILocation(line: 144, column: 17, scope: !177)
!177 = distinct !DILexicalBlock(scope: !148, file: !2, line: 139, column: 25)
!178 = !DILocation(line: 144, column: 9, scope: !177)
!179 = !DILocation(line: 146, column: 21, scope: !180)
!180 = distinct !DILexicalBlock(scope: !177, file: !2, line: 144, column: 22)
!181 = !DILocation(line: 146, column: 13, scope: !180)
!182 = !DILocation(line: 148, column: 32, scope: !183)
!183 = distinct !DILexicalBlock(scope: !180, file: !2, line: 146, column: 27)
!184 = !DILocation(line: 148, column: 37, scope: !183)
!185 = !DILocation(line: 148, column: 43, scope: !183)
!186 = !DILocation(line: 148, column: 48, scope: !183)
!187 = !DILocation(line: 148, column: 17, scope: !183)
!188 = !DILocation(line: 149, column: 17, scope: !183)
!189 = !DILocation(line: 149, column: 23, scope: !183)
!190 = !DILocation(line: 149, column: 29, scope: !183)
!191 = !DILocation(line: 150, column: 17, scope: !183)
!192 = !DILocation(line: 152, column: 17, scope: !183)
!193 = !DILocation(line: 152, column: 17, scope: !194)
!194 = distinct !DILexicalBlock(scope: !195, file: !2, line: 152, column: 17)
!195 = distinct !DILexicalBlock(scope: !196, file: !2, line: 152, column: 17)
!196 = distinct !DILexicalBlock(scope: !183, file: !2, line: 152, column: 17)
!197 = !DILocation(line: 153, column: 13, scope: !183)
!198 = !DILocation(line: 155, column: 13, scope: !180)
!199 = !DILocation(line: 155, column: 13, scope: !200)
!200 = distinct !DILexicalBlock(scope: !201, file: !2, line: 155, column: 13)
!201 = distinct !DILexicalBlock(scope: !202, file: !2, line: 155, column: 13)
!202 = distinct !DILexicalBlock(scope: !180, file: !2, line: 155, column: 13)
!203 = !DILocation(line: 156, column: 9, scope: !180)
!204 = !DILocation(line: 162, column: 9, scope: !177)
!205 = !DILocation(line: 162, column: 9, scope: !206)
!206 = distinct !DILexicalBlock(scope: !207, file: !2, line: 162, column: 9)
!207 = distinct !DILexicalBlock(scope: !208, file: !2, line: 162, column: 9)
!208 = distinct !DILexicalBlock(scope: !177, file: !2, line: 162, column: 9)
!209 = !DILocation(line: 162, column: 9, scope: !208)
!210 = !DILocation(line: 168, column: 9, scope: !177)
!211 = !DILocation(line: 168, column: 9, scope: !212)
!212 = distinct !DILexicalBlock(scope: !213, file: !2, line: 168, column: 9)
!213 = distinct !DILexicalBlock(scope: !214, file: !2, line: 168, column: 9)
!214 = distinct !DILexicalBlock(scope: !177, file: !2, line: 168, column: 9)
!215 = !DILocation(line: 169, column: 5, scope: !177)
!216 = !DILocation(line: 170, column: 1, scope: !148)
!217 = distinct !DISubprogram(name: "nn_dns_term", scope: !2, file: !2, line: 50, type: !218, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !128)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !55}
!220 = !DILocalVariable(name: "self", arg: 1, scope: !217, file: !2, line: 50, type: !55)
!221 = !DILocation(line: 50, column: 34, scope: !217)
!222 = !DILocation(line: 52, column: 5, scope: !217)
!223 = !DILocation(line: 52, column: 5, scope: !224)
!224 = distinct !DILexicalBlock(scope: !225, file: !2, line: 52, column: 5)
!225 = distinct !DILexicalBlock(scope: !217, file: !2, line: 52, column: 5)
!226 = !DILocation(line: 52, column: 5, scope: !225)
!227 = !DILocation(line: 52, column: 5, scope: !228)
!228 = distinct !DILexicalBlock(scope: !224, file: !2, line: 52, column: 5)
!229 = !DILocation(line: 54, column: 25, scope: !217)
!230 = !DILocation(line: 54, column: 31, scope: !217)
!231 = !DILocation(line: 54, column: 5, scope: !217)
!232 = !DILocation(line: 55, column: 19, scope: !217)
!233 = !DILocation(line: 55, column: 25, scope: !217)
!234 = !DILocation(line: 55, column: 5, scope: !217)
!235 = !DILocation(line: 56, column: 1, scope: !217)
!236 = distinct !DISubprogram(name: "nn_dns_isidle", scope: !2, file: !2, line: 58, type: !237, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !128)
!237 = !DISubroutineType(types: !238)
!238 = !{!54, !55}
!239 = !DILocalVariable(name: "self", arg: 1, scope: !236, file: !2, line: 58, type: !55)
!240 = !DILocation(line: 58, column: 35, scope: !236)
!241 = !DILocation(line: 60, column: 28, scope: !236)
!242 = !DILocation(line: 60, column: 34, scope: !236)
!243 = !DILocation(line: 60, column: 12, scope: !236)
!244 = !DILocation(line: 60, column: 5, scope: !236)
!245 = distinct !DISubprogram(name: "nn_dns_start", scope: !2, file: !2, line: 63, type: !246, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !128)
!246 = !DISubroutineType(types: !247)
!247 = !{null, !55, !248, !112, !54, !92}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!250 = !DILocalVariable(name: "self", arg: 1, scope: !245, file: !2, line: 63, type: !55)
!251 = !DILocation(line: 63, column: 35, scope: !245)
!252 = !DILocalVariable(name: "addr", arg: 2, scope: !245, file: !2, line: 63, type: !248)
!253 = !DILocation(line: 63, column: 53, scope: !245)
!254 = !DILocalVariable(name: "addrlen", arg: 3, scope: !245, file: !2, line: 63, type: !112)
!255 = !DILocation(line: 63, column: 66, scope: !245)
!256 = !DILocalVariable(name: "ipv4only", arg: 4, scope: !245, file: !2, line: 64, type: !54)
!257 = !DILocation(line: 64, column: 9, scope: !245)
!258 = !DILocalVariable(name: "result", arg: 5, scope: !245, file: !2, line: 64, type: !92)
!259 = !DILocation(line: 64, column: 41, scope: !245)
!260 = !DILocalVariable(name: "rc", scope: !245, file: !2, line: 66, type: !54)
!261 = !DILocation(line: 66, column: 9, scope: !245)
!262 = !DILocalVariable(name: "query", scope: !245, file: !2, line: 67, type: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "addrinfo", file: !264, line: 565, size: 384, elements: !265)
!264 = !DIFile(filename: "/usr/include/netdb.h", directory: "", checksumkind: CSK_MD5, checksum: "dd84cdc2a8dcb66c232d326e9ca8b469")
!265 = !{!266, !267, !268, !269, !270, !274, !283, !284}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "ai_flags", scope: !263, file: !264, line: 567, baseType: !54, size: 32)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ai_family", scope: !263, file: !264, line: 568, baseType: !54, size: 32, offset: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "ai_socktype", scope: !263, file: !264, line: 569, baseType: !54, size: 32, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "ai_protocol", scope: !263, file: !264, line: 570, baseType: !54, size: 32, offset: 96)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addrlen", scope: !263, file: !264, line: 571, baseType: !271, size: 32, offset: 128)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "socklen_t", file: !99, line: 33, baseType: !272)
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__socklen_t", file: !273, line: 210, baseType: !42)
!273 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!274 = !DIDerivedType(tag: DW_TAG_member, name: "ai_addr", scope: !263, file: !264, line: 572, baseType: !275, size: 64, offset: 192)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !99, line: 180, size: 128, elements: !277)
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !276, file: !99, line: 182, baseType: !102, size: 16)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !276, file: !99, line: 183, baseType: !280, size: 112, offset: 16)
!280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !281)
!281 = !{!282}
!282 = !DISubrange(count: 14)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ai_canonname", scope: !263, file: !264, line: 573, baseType: !115, size: 64, offset: 256)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "ai_next", scope: !263, file: !264, line: 574, baseType: !285, size: 64, offset: 320)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!286 = !DILocation(line: 67, column: 21, scope: !245)
!287 = !DILocalVariable(name: "reply", scope: !245, file: !2, line: 68, type: !285)
!288 = !DILocation(line: 68, column: 22, scope: !245)
!289 = !DILocalVariable(name: "hostname", scope: !245, file: !2, line: 69, type: !290)
!290 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !291)
!291 = !{!292}
!292 = !DISubrange(count: 128)
!293 = !DILocation(line: 69, column: 10, scope: !245)
!294 = !DILocation(line: 71, column: 5, scope: !245)
!295 = !DILocation(line: 71, column: 5, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 71, column: 5)
!297 = distinct !DILexicalBlock(scope: !245, file: !2, line: 71, column: 5)
!298 = !DILocation(line: 71, column: 5, scope: !297)
!299 = !DILocation(line: 71, column: 5, scope: !300)
!300 = distinct !DILexicalBlock(scope: !296, file: !2, line: 71, column: 5)
!301 = !DILocation(line: 73, column: 20, scope: !245)
!302 = !DILocation(line: 73, column: 5, scope: !245)
!303 = !DILocation(line: 73, column: 11, scope: !245)
!304 = !DILocation(line: 73, column: 18, scope: !245)
!305 = !DILocation(line: 77, column: 30, scope: !245)
!306 = !DILocation(line: 77, column: 36, scope: !245)
!307 = !DILocation(line: 77, column: 45, scope: !245)
!308 = !DILocation(line: 77, column: 56, scope: !245)
!309 = !DILocation(line: 77, column: 62, scope: !245)
!310 = !DILocation(line: 77, column: 70, scope: !245)
!311 = !DILocation(line: 78, column: 10, scope: !245)
!312 = !DILocation(line: 78, column: 16, scope: !245)
!313 = !DILocation(line: 78, column: 24, scope: !245)
!314 = !DILocation(line: 77, column: 10, scope: !245)
!315 = !DILocation(line: 77, column: 8, scope: !245)
!316 = !DILocation(line: 79, column: 9, scope: !317)
!317 = distinct !DILexicalBlock(scope: !245, file: !2, line: 79, column: 9)
!318 = !DILocation(line: 79, column: 12, scope: !317)
!319 = !DILocation(line: 79, column: 9, scope: !245)
!320 = !DILocation(line: 80, column: 9, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !2, line: 79, column: 18)
!322 = !DILocation(line: 80, column: 15, scope: !321)
!323 = !DILocation(line: 80, column: 23, scope: !321)
!324 = !DILocation(line: 80, column: 29, scope: !321)
!325 = !DILocation(line: 81, column: 24, scope: !321)
!326 = !DILocation(line: 81, column: 30, scope: !321)
!327 = !DILocation(line: 81, column: 9, scope: !321)
!328 = !DILocation(line: 82, column: 9, scope: !321)
!329 = !DILocation(line: 84, column: 5, scope: !245)
!330 = !DILocation(line: 84, column: 5, scope: !331)
!331 = distinct !DILexicalBlock(scope: !332, file: !2, line: 84, column: 5)
!332 = distinct !DILexicalBlock(scope: !245, file: !2, line: 84, column: 5)
!333 = !DILocation(line: 84, column: 5, scope: !332)
!334 = !DILocation(line: 84, column: 5, scope: !335)
!335 = distinct !DILexicalBlock(scope: !331, file: !2, line: 84, column: 5)
!336 = !DILocation(line: 87, column: 5, scope: !245)
!337 = !DILocation(line: 88, column: 9, scope: !338)
!338 = distinct !DILexicalBlock(scope: !245, file: !2, line: 88, column: 9)
!339 = !DILocation(line: 88, column: 9, scope: !245)
!340 = !DILocation(line: 89, column: 15, scope: !338)
!341 = !DILocation(line: 89, column: 25, scope: !338)
!342 = !DILocation(line: 89, column: 9, scope: !338)
!343 = !DILocation(line: 91, column: 15, scope: !344)
!344 = distinct !DILexicalBlock(scope: !338, file: !2, line: 90, column: 10)
!345 = !DILocation(line: 91, column: 25, scope: !344)
!346 = !DILocation(line: 93, column: 15, scope: !344)
!347 = !DILocation(line: 93, column: 24, scope: !344)
!348 = !DILocation(line: 96, column: 5, scope: !245)
!349 = !DILocation(line: 96, column: 5, scope: !350)
!350 = distinct !DILexicalBlock(scope: !351, file: !2, line: 96, column: 5)
!351 = distinct !DILexicalBlock(scope: !245, file: !2, line: 96, column: 5)
!352 = !DILocation(line: 96, column: 5, scope: !351)
!353 = !DILocation(line: 96, column: 5, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !2, line: 96, column: 5)
!355 = !DILocation(line: 97, column: 11, scope: !245)
!356 = !DILocation(line: 97, column: 23, scope: !245)
!357 = !DILocation(line: 98, column: 5, scope: !245)
!358 = !DILocation(line: 98, column: 23, scope: !245)
!359 = !DILocation(line: 98, column: 29, scope: !245)
!360 = !DILocation(line: 99, column: 15, scope: !245)
!361 = !DILocation(line: 99, column: 5, scope: !245)
!362 = !DILocation(line: 99, column: 24, scope: !245)
!363 = !DILocation(line: 102, column: 40, scope: !245)
!364 = !DILocation(line: 102, column: 27, scope: !245)
!365 = !DILocation(line: 102, column: 5, scope: !245)
!366 = !DILocation(line: 102, column: 11, scope: !245)
!367 = !DILocation(line: 102, column: 19, scope: !245)
!368 = !DILocation(line: 102, column: 25, scope: !245)
!369 = !DILocation(line: 103, column: 9, scope: !370)
!370 = distinct !DILexicalBlock(scope: !245, file: !2, line: 103, column: 9)
!371 = !DILocation(line: 103, column: 15, scope: !370)
!372 = !DILocation(line: 103, column: 23, scope: !370)
!373 = !DILocation(line: 103, column: 9, scope: !245)
!374 = !DILocation(line: 104, column: 24, scope: !375)
!375 = distinct !DILexicalBlock(scope: !370, file: !2, line: 103, column: 30)
!376 = !DILocation(line: 104, column: 30, scope: !375)
!377 = !DILocation(line: 104, column: 9, scope: !375)
!378 = !DILocation(line: 105, column: 9, scope: !375)
!379 = !DILocation(line: 109, column: 5, scope: !245)
!380 = !DILocation(line: 109, column: 5, scope: !381)
!381 = distinct !DILexicalBlock(scope: !382, file: !2, line: 109, column: 5)
!382 = distinct !DILexicalBlock(scope: !245, file: !2, line: 109, column: 5)
!383 = !DILocation(line: 0, scope: !381)
!384 = !DILocation(line: 109, column: 5, scope: !382)
!385 = !DILocation(line: 109, column: 5, scope: !386)
!386 = distinct !DILexicalBlock(scope: !381, file: !2, line: 109, column: 5)
!387 = !DILocation(line: 110, column: 5, scope: !245)
!388 = !DILocation(line: 110, column: 11, scope: !245)
!389 = !DILocation(line: 110, column: 19, scope: !245)
!390 = !DILocation(line: 110, column: 25, scope: !245)
!391 = !DILocation(line: 111, column: 14, scope: !245)
!392 = !DILocation(line: 111, column: 20, scope: !245)
!393 = !DILocation(line: 111, column: 28, scope: !245)
!394 = !DILocation(line: 111, column: 34, scope: !245)
!395 = !DILocation(line: 111, column: 41, scope: !245)
!396 = !DILocation(line: 111, column: 50, scope: !245)
!397 = !DILocation(line: 111, column: 57, scope: !245)
!398 = !DILocation(line: 111, column: 5, scope: !245)
!399 = !DILocation(line: 112, column: 29, scope: !245)
!400 = !DILocation(line: 112, column: 36, scope: !245)
!401 = !DILocation(line: 112, column: 5, scope: !245)
!402 = !DILocation(line: 112, column: 11, scope: !245)
!403 = !DILocation(line: 112, column: 19, scope: !245)
!404 = !DILocation(line: 112, column: 27, scope: !245)
!405 = !DILocation(line: 113, column: 19, scope: !245)
!406 = !DILocation(line: 113, column: 5, scope: !245)
!407 = !DILocation(line: 115, column: 20, scope: !245)
!408 = !DILocation(line: 115, column: 26, scope: !245)
!409 = !DILocation(line: 115, column: 5, scope: !245)
!410 = !DILocation(line: 116, column: 1, scope: !245)
!411 = distinct !DISubprogram(name: "nn_dns_stop", scope: !2, file: !2, line: 118, type: !218, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !37, retainedNodes: !128)
!412 = !DILocalVariable(name: "self", arg: 1, scope: !411, file: !2, line: 118, type: !55)
!413 = !DILocation(line: 118, column: 34, scope: !411)
!414 = !DILocation(line: 120, column: 19, scope: !411)
!415 = !DILocation(line: 120, column: 25, scope: !411)
!416 = !DILocation(line: 120, column: 5, scope: !411)
!417 = !DILocation(line: 121, column: 1, scope: !411)
