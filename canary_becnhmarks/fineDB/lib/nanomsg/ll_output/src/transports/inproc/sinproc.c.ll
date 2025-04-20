; ModuleID = './src/transports/inproc/sinproc.c'
source_filename = "./src/transports/inproc/sinproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_pipebase_vfptr = type { ptr, ptr }
%struct.nn_sinproc = type { %struct.nn_fsm, i32, i32, ptr, %struct.nn_pipebase, %struct.nn_msgqueue, %struct.nn_msg, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msgqueue = type { %struct.anon, %struct.anon.0, i64, i64, i64, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_list_item = type { ptr, ptr }

@nn_sinproc_pipebase_vfptr = dso_local constant %struct.nn_pipebase_vfptr { ptr @nn_sinproc_send, ptr @nn_sinproc_recv }, align 8, !dbg !0
@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !131
@.str.1 = private unnamed_addr constant [22 x i8] c"sz == sizeof (rcvbuf)\00", align 1, !dbg !137
@.str.2 = private unnamed_addr constant [34 x i8] c"./src/transports/inproc/sinproc.c\00", align 1, !dbg !142
@.str.3 = private unnamed_addr constant [12 x i8] c"!self->peer\00", align 1, !dbg !147
@.str.4 = private unnamed_addr constant [42 x i8] c"sinproc->state == NN_SINPROC_STATE_ACTIVE\00", align 1, !dbg !152
@.str.5 = private unnamed_addr constant [44 x i8] c"!(sinproc->flags & NN_SINPROC_FLAG_SENDING)\00", align 1, !dbg !157
@.str.6 = private unnamed_addr constant [93 x i8] c"sinproc->state == NN_SINPROC_STATE_ACTIVE || sinproc->state == NN_SINPROC_STATE_DISCONNECTED\00", align 1, !dbg !162
@.str.7 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !167
@.str.8 = private unnamed_addr constant [25 x i8] c"rc == 0 || rc == -EAGAIN\00", align 1, !dbg !172
@.str.9 = private unnamed_addr constant [57 x i8] c"srcptr == sinproc->peer && type == NN_SINPROC_DISCONNECT\00", align 1, !dbg !177
@.str.10 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !182
@.str.11 = private unnamed_addr constant [41 x i8] c"sinproc->flags & NN_SINPROC_FLAG_SENDING\00", align 1, !dbg !187

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sinproc_send(ptr noundef %0, ptr noundef %1) #0 !dbg !200 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !202, metadata !DIExpression()), !dbg !203
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !204, metadata !DIExpression()), !dbg !205
  call void @llvm.dbg.declare(metadata ptr %6, metadata !206, metadata !DIExpression()), !dbg !207
  %7 = load ptr, ptr %4, align 8, !dbg !208
  %8 = icmp ne ptr %7, null, !dbg !208
  br i1 %8, label %9, label %12, !dbg !208

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !208
  %11 = getelementptr inbounds i8, ptr %10, i64 -96, !dbg !208
  br label %13, !dbg !208

12:                                               ; preds = %2
  br label %13, !dbg !208

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !208
  store ptr %14, ptr %6, align 8, !dbg !209
  %15 = load ptr, ptr %6, align 8, !dbg !210
  %16 = getelementptr inbounds %struct.nn_sinproc, ptr %15, i32 0, i32 1, !dbg !212
  %17 = load i32, ptr %16, align 8, !dbg !212
  %18 = icmp eq i32 %17, 4, !dbg !213
  br i1 %18, label %19, label %20, !dbg !214

19:                                               ; preds = %13
  store i32 -104, ptr %3, align 4, !dbg !215
  br label %71, !dbg !215

20:                                               ; preds = %13
  br label %21, !dbg !216

21:                                               ; preds = %20
  %22 = load ptr, ptr %6, align 8, !dbg !217
  %23 = getelementptr inbounds %struct.nn_sinproc, ptr %22, i32 0, i32 1, !dbg !217
  %24 = load i32, ptr %23, align 8, !dbg !217
  %25 = icmp eq i32 %24, 3, !dbg !217
  %26 = xor i1 %25, true, !dbg !217
  %27 = zext i1 %26 to i32, !dbg !217
  %28 = sext i32 %27 to i64, !dbg !217
  %29 = icmp ne i64 %28, 0, !dbg !217
  br i1 %29, label %30, label %33, !dbg !220

30:                                               ; preds = %21
  %31 = load ptr, ptr @stderr, align 8, !dbg !221
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 139), !dbg !221
  call void @nn_err_abort() #4, !dbg !221
  unreachable, !dbg !221

33:                                               ; preds = %21
  br label %34, !dbg !220

34:                                               ; preds = %33
  br label %35, !dbg !223

35:                                               ; preds = %34
  %36 = load ptr, ptr %6, align 8, !dbg !224
  %37 = getelementptr inbounds %struct.nn_sinproc, ptr %36, i32 0, i32 2, !dbg !224
  %38 = load i32, ptr %37, align 4, !dbg !224
  %39 = and i32 %38, 1, !dbg !224
  %40 = icmp ne i32 %39, 0, !dbg !224
  %41 = xor i1 %40, true, !dbg !224
  %42 = xor i1 %41, true, !dbg !224
  %43 = zext i1 %42 to i32, !dbg !224
  %44 = sext i32 %43 to i64, !dbg !224
  %45 = icmp ne i64 %44, 0, !dbg !224
  br i1 %45, label %46, label %49, !dbg !227

46:                                               ; preds = %35
  %47 = load ptr, ptr @stderr, align 8, !dbg !228
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 140), !dbg !228
  call void @nn_err_abort() #4, !dbg !228
  unreachable, !dbg !228

49:                                               ; preds = %35
  br label %50, !dbg !227

50:                                               ; preds = %49
  %51 = load ptr, ptr %6, align 8, !dbg !230
  %52 = getelementptr inbounds %struct.nn_sinproc, ptr %51, i32 0, i32 6, !dbg !231
  call void @nn_msg_term(ptr noundef %52), !dbg !232
  %53 = load ptr, ptr %6, align 8, !dbg !233
  %54 = getelementptr inbounds %struct.nn_sinproc, ptr %53, i32 0, i32 6, !dbg !234
  %55 = load ptr, ptr %5, align 8, !dbg !235
  call void @nn_msg_mv(ptr noundef %54, ptr noundef %55), !dbg !236
  %56 = load ptr, ptr %6, align 8, !dbg !237
  %57 = getelementptr inbounds %struct.nn_sinproc, ptr %56, i32 0, i32 2, !dbg !238
  %58 = load i32, ptr %57, align 4, !dbg !239
  %59 = or i32 %58, 1, !dbg !239
  store i32 %59, ptr %57, align 4, !dbg !239
  %60 = load ptr, ptr %6, align 8, !dbg !240
  %61 = getelementptr inbounds %struct.nn_sinproc, ptr %60, i32 0, i32 0, !dbg !241
  %62 = load ptr, ptr %6, align 8, !dbg !242
  %63 = getelementptr inbounds %struct.nn_sinproc, ptr %62, i32 0, i32 3, !dbg !243
  %64 = load ptr, ptr %63, align 8, !dbg !243
  %65 = getelementptr inbounds %struct.nn_sinproc, ptr %64, i32 0, i32 0, !dbg !244
  %66 = load ptr, ptr %6, align 8, !dbg !245
  %67 = getelementptr inbounds %struct.nn_sinproc, ptr %66, i32 0, i32 3, !dbg !246
  %68 = load ptr, ptr %67, align 8, !dbg !246
  %69 = getelementptr inbounds %struct.nn_sinproc, ptr %68, i32 0, i32 8, !dbg !247
  %70 = load ptr, ptr %6, align 8, !dbg !248
  call void @nn_fsm_raiseto(ptr noundef %61, ptr noundef %65, ptr noundef %69, i32 noundef 27713, i32 noundef 3, ptr noundef %70), !dbg !249
  store i32 0, ptr %3, align 4, !dbg !250
  br label %71, !dbg !250

71:                                               ; preds = %50, %19
  %72 = load i32, ptr %3, align 4, !dbg !251
  ret i32 %72, !dbg !251
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sinproc_recv(ptr noundef %0, ptr noundef %1) #0 !dbg !252 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !253, metadata !DIExpression()), !dbg !254
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata ptr %5, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata ptr %6, metadata !259, metadata !DIExpression()), !dbg !260
  %7 = load ptr, ptr %3, align 8, !dbg !261
  %8 = icmp ne ptr %7, null, !dbg !261
  br i1 %8, label %9, label %12, !dbg !261

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !261
  %11 = getelementptr inbounds i8, ptr %10, i64 -96, !dbg !261
  br label %13, !dbg !261

12:                                               ; preds = %2
  br label %13, !dbg !261

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !261
  store ptr %14, ptr %6, align 8, !dbg !262
  br label %15, !dbg !263

15:                                               ; preds = %13
  %16 = load ptr, ptr %6, align 8, !dbg !264
  %17 = getelementptr inbounds %struct.nn_sinproc, ptr %16, i32 0, i32 1, !dbg !264
  %18 = load i32, ptr %17, align 8, !dbg !264
  %19 = icmp eq i32 %18, 3, !dbg !264
  br i1 %19, label %25, label %20, !dbg !264

20:                                               ; preds = %15
  %21 = load ptr, ptr %6, align 8, !dbg !264
  %22 = getelementptr inbounds %struct.nn_sinproc, ptr %21, i32 0, i32 1, !dbg !264
  %23 = load i32, ptr %22, align 8, !dbg !264
  %24 = icmp eq i32 %23, 4, !dbg !264
  br label %25, !dbg !264

25:                                               ; preds = %20, %15
  %26 = phi i1 [ true, %15 ], [ %24, %20 ]
  %27 = xor i1 %26, true, !dbg !264
  %28 = zext i1 %27 to i32, !dbg !264
  %29 = sext i32 %28 to i64, !dbg !264
  %30 = icmp ne i64 %29, 0, !dbg !264
  br i1 %30, label %31, label %34, !dbg !267

31:                                               ; preds = %25
  %32 = load ptr, ptr @stderr, align 8, !dbg !268
  %33 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 164), !dbg !268
  call void @nn_err_abort() #4, !dbg !268
  unreachable, !dbg !268

34:                                               ; preds = %25
  br label %35, !dbg !267

35:                                               ; preds = %34
  %36 = load ptr, ptr %6, align 8, !dbg !270
  %37 = getelementptr inbounds %struct.nn_sinproc, ptr %36, i32 0, i32 5, !dbg !271
  %38 = load ptr, ptr %4, align 8, !dbg !272
  %39 = call i32 @nn_msgqueue_recv(ptr noundef %37, ptr noundef %38), !dbg !273
  store i32 %39, ptr %5, align 4, !dbg !274
  br label %40, !dbg !275

40:                                               ; preds = %35
  %41 = load i32, ptr %5, align 4, !dbg !276
  %42 = icmp eq i32 %41, 0, !dbg !276
  %43 = xor i1 %42, true, !dbg !276
  %44 = zext i1 %43 to i32, !dbg !276
  %45 = sext i32 %44 to i64, !dbg !276
  %46 = icmp ne i64 %45, 0, !dbg !276
  br i1 %46, label %47, label %55, !dbg !279

47:                                               ; preds = %40
  %48 = load ptr, ptr @stderr, align 8, !dbg !280
  %49 = load i32, ptr %5, align 4, !dbg !280
  %50 = sub nsw i32 0, %49, !dbg !280
  %51 = call ptr @nn_err_strerror(i32 noundef %50), !dbg !280
  %52 = load i32, ptr %5, align 4, !dbg !280
  %53 = sub nsw i32 0, %52, !dbg !280
  %54 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str.7, ptr noundef %51, i32 noundef %53, ptr noundef @.str.2, i32 noundef 168), !dbg !280
  call void @nn_err_abort() #4, !dbg !280
  unreachable, !dbg !280

55:                                               ; preds = %40
  br label %56, !dbg !279

56:                                               ; preds = %55
  %57 = load ptr, ptr %6, align 8, !dbg !282
  %58 = getelementptr inbounds %struct.nn_sinproc, ptr %57, i32 0, i32 1, !dbg !284
  %59 = load i32, ptr %58, align 8, !dbg !284
  %60 = icmp ne i32 %59, 4, !dbg !285
  br i1 %60, label %61, label %134, !dbg !286

61:                                               ; preds = %56
  %62 = load ptr, ptr %6, align 8, !dbg !287
  %63 = getelementptr inbounds %struct.nn_sinproc, ptr %62, i32 0, i32 2, !dbg !287
  %64 = load i32, ptr %63, align 4, !dbg !287
  %65 = and i32 %64, 2, !dbg !287
  %66 = sext i32 %65 to i64, !dbg !287
  %67 = icmp ne i64 %66, 0, !dbg !287
  br i1 %67, label %68, label %133, !dbg !290

68:                                               ; preds = %61
  %69 = load ptr, ptr %6, align 8, !dbg !291
  %70 = getelementptr inbounds %struct.nn_sinproc, ptr %69, i32 0, i32 5, !dbg !293
  %71 = load ptr, ptr %6, align 8, !dbg !294
  %72 = getelementptr inbounds %struct.nn_sinproc, ptr %71, i32 0, i32 3, !dbg !295
  %73 = load ptr, ptr %72, align 8, !dbg !295
  %74 = getelementptr inbounds %struct.nn_sinproc, ptr %73, i32 0, i32 6, !dbg !296
  %75 = call i32 @nn_msgqueue_send(ptr noundef %70, ptr noundef %74), !dbg !297
  store i32 %75, ptr %5, align 4, !dbg !298
  br label %76, !dbg !299

76:                                               ; preds = %68
  %77 = load i32, ptr %5, align 4, !dbg !300
  %78 = icmp eq i32 %77, 0, !dbg !300
  br i1 %78, label %82, label %79, !dbg !300

79:                                               ; preds = %76
  %80 = load i32, ptr %5, align 4, !dbg !300
  %81 = icmp eq i32 %80, -11, !dbg !300
  br label %82, !dbg !300

82:                                               ; preds = %79, %76
  %83 = phi i1 [ true, %76 ], [ %81, %79 ]
  %84 = xor i1 %83, true, !dbg !300
  %85 = zext i1 %84 to i32, !dbg !300
  %86 = sext i32 %85 to i64, !dbg !300
  %87 = icmp ne i64 %86, 0, !dbg !300
  br i1 %87, label %88, label %91, !dbg !303

88:                                               ; preds = %82
  %89 = load ptr, ptr @stderr, align 8, !dbg !304
  %90 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %89, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 175), !dbg !304
  call void @nn_err_abort() #4, !dbg !304
  unreachable, !dbg !304

91:                                               ; preds = %82
  br label %92, !dbg !303

92:                                               ; preds = %91
  %93 = load i32, ptr %5, align 4, !dbg !306
  %94 = icmp eq i32 %93, 0, !dbg !308
  br i1 %94, label %95, label %132, !dbg !309

95:                                               ; preds = %92
  br label %96, !dbg !310

96:                                               ; preds = %95
  %97 = load i32, ptr %5, align 4, !dbg !312
  %98 = icmp eq i32 %97, 0, !dbg !312
  %99 = xor i1 %98, true, !dbg !312
  %100 = zext i1 %99 to i32, !dbg !312
  %101 = sext i32 %100 to i64, !dbg !312
  %102 = icmp ne i64 %101, 0, !dbg !312
  br i1 %102, label %103, label %111, !dbg !315

103:                                              ; preds = %96
  %104 = load ptr, ptr @stderr, align 8, !dbg !316
  %105 = load i32, ptr %5, align 4, !dbg !316
  %106 = sub nsw i32 0, %105, !dbg !316
  %107 = call ptr @nn_err_strerror(i32 noundef %106), !dbg !316
  %108 = load i32, ptr %5, align 4, !dbg !316
  %109 = sub nsw i32 0, %108, !dbg !316
  %110 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str.7, ptr noundef %107, i32 noundef %109, ptr noundef @.str.2, i32 noundef 177), !dbg !316
  call void @nn_err_abort() #4, !dbg !316
  unreachable, !dbg !316

111:                                              ; preds = %96
  br label %112, !dbg !315

112:                                              ; preds = %111
  %113 = load ptr, ptr %6, align 8, !dbg !318
  %114 = getelementptr inbounds %struct.nn_sinproc, ptr %113, i32 0, i32 3, !dbg !319
  %115 = load ptr, ptr %114, align 8, !dbg !319
  %116 = getelementptr inbounds %struct.nn_sinproc, ptr %115, i32 0, i32 6, !dbg !320
  call void @nn_msg_init(ptr noundef %116, i64 noundef 0), !dbg !321
  %117 = load ptr, ptr %6, align 8, !dbg !322
  %118 = getelementptr inbounds %struct.nn_sinproc, ptr %117, i32 0, i32 0, !dbg !323
  %119 = load ptr, ptr %6, align 8, !dbg !324
  %120 = getelementptr inbounds %struct.nn_sinproc, ptr %119, i32 0, i32 3, !dbg !325
  %121 = load ptr, ptr %120, align 8, !dbg !325
  %122 = getelementptr inbounds %struct.nn_sinproc, ptr %121, i32 0, i32 0, !dbg !326
  %123 = load ptr, ptr %6, align 8, !dbg !327
  %124 = getelementptr inbounds %struct.nn_sinproc, ptr %123, i32 0, i32 3, !dbg !328
  %125 = load ptr, ptr %124, align 8, !dbg !328
  %126 = getelementptr inbounds %struct.nn_sinproc, ptr %125, i32 0, i32 9, !dbg !329
  %127 = load ptr, ptr %6, align 8, !dbg !330
  call void @nn_fsm_raiseto(ptr noundef %118, ptr noundef %122, ptr noundef %126, i32 noundef 27713, i32 noundef 4, ptr noundef %127), !dbg !331
  %128 = load ptr, ptr %6, align 8, !dbg !332
  %129 = getelementptr inbounds %struct.nn_sinproc, ptr %128, i32 0, i32 2, !dbg !333
  %130 = load i32, ptr %129, align 4, !dbg !334
  %131 = and i32 %130, -3, !dbg !334
  store i32 %131, ptr %129, align 4, !dbg !334
  br label %132, !dbg !335

132:                                              ; preds = %112, %92
  br label %133, !dbg !336

133:                                              ; preds = %132, %61
  br label %134, !dbg !337

134:                                              ; preds = %133, %56
  %135 = load ptr, ptr %6, align 8, !dbg !338
  %136 = getelementptr inbounds %struct.nn_sinproc, ptr %135, i32 0, i32 5, !dbg !340
  %137 = call i32 @nn_msgqueue_empty(ptr noundef %136), !dbg !341
  %138 = icmp ne i32 %137, 0, !dbg !341
  br i1 %138, label %142, label %139, !dbg !342

139:                                              ; preds = %134
  %140 = load ptr, ptr %6, align 8, !dbg !343
  %141 = getelementptr inbounds %struct.nn_sinproc, ptr %140, i32 0, i32 4, !dbg !344
  call void @nn_pipebase_received(ptr noundef %141), !dbg !345
  br label %142, !dbg !345

142:                                              ; preds = %139, %134
  ret i32 2, !dbg !346
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) #0 !dbg !347 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !366, metadata !DIExpression()), !dbg !367
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !368, metadata !DIExpression()), !dbg !369
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !370, metadata !DIExpression()), !dbg !371
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !372, metadata !DIExpression()), !dbg !373
  call void @llvm.dbg.declare(metadata ptr %9, metadata !374, metadata !DIExpression()), !dbg !375
  call void @llvm.dbg.declare(metadata ptr %10, metadata !376, metadata !DIExpression()), !dbg !377
  %11 = load ptr, ptr %5, align 8, !dbg !378
  %12 = getelementptr inbounds %struct.nn_sinproc, ptr %11, i32 0, i32 0, !dbg !379
  %13 = load i32, ptr %6, align 4, !dbg !380
  %14 = load ptr, ptr %5, align 8, !dbg !381
  %15 = load ptr, ptr %8, align 8, !dbg !382
  call void @nn_fsm_init(ptr noundef %12, ptr noundef @nn_sinproc_handler, i32 noundef %13, ptr noundef %14, ptr noundef %15), !dbg !383
  %16 = load ptr, ptr %5, align 8, !dbg !384
  %17 = getelementptr inbounds %struct.nn_sinproc, ptr %16, i32 0, i32 1, !dbg !385
  store i32 1, ptr %17, align 8, !dbg !386
  %18 = load ptr, ptr %5, align 8, !dbg !387
  %19 = getelementptr inbounds %struct.nn_sinproc, ptr %18, i32 0, i32 2, !dbg !388
  store i32 0, ptr %19, align 4, !dbg !389
  %20 = load ptr, ptr %5, align 8, !dbg !390
  %21 = getelementptr inbounds %struct.nn_sinproc, ptr %20, i32 0, i32 3, !dbg !391
  store ptr null, ptr %21, align 8, !dbg !392
  %22 = load ptr, ptr %5, align 8, !dbg !393
  %23 = getelementptr inbounds %struct.nn_sinproc, ptr %22, i32 0, i32 4, !dbg !394
  %24 = load ptr, ptr %7, align 8, !dbg !395
  call void @nn_pipebase_init(ptr noundef %23, ptr noundef @nn_sinproc_pipebase_vfptr, ptr noundef %24), !dbg !396
  store i64 4, ptr %10, align 8, !dbg !397
  %25 = load ptr, ptr %7, align 8, !dbg !398
  call void @nn_epbase_getopt(ptr noundef %25, i32 noundef 0, i32 noundef 3, ptr noundef %9, ptr noundef %10), !dbg !399
  br label %26, !dbg !400

26:                                               ; preds = %4
  %27 = load i64, ptr %10, align 8, !dbg !401
  %28 = icmp eq i64 %27, 4, !dbg !401
  %29 = xor i1 %28, true, !dbg !401
  %30 = zext i1 %29 to i32, !dbg !401
  %31 = sext i32 %30 to i64, !dbg !401
  %32 = icmp ne i64 %31, 0, !dbg !401
  br i1 %32, label %33, label %36, !dbg !404

33:                                               ; preds = %26
  %34 = load ptr, ptr @stderr, align 8, !dbg !405
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 71), !dbg !405
  call void @nn_err_abort() #4, !dbg !405
  unreachable, !dbg !405

36:                                               ; preds = %26
  br label %37, !dbg !404

37:                                               ; preds = %36
  %38 = load ptr, ptr %5, align 8, !dbg !407
  %39 = getelementptr inbounds %struct.nn_sinproc, ptr %38, i32 0, i32 5, !dbg !408
  %40 = load i32, ptr %9, align 4, !dbg !409
  %41 = sext i32 %40 to i64, !dbg !409
  call void @nn_msgqueue_init(ptr noundef %39, i64 noundef %41), !dbg !410
  %42 = load ptr, ptr %5, align 8, !dbg !411
  %43 = getelementptr inbounds %struct.nn_sinproc, ptr %42, i32 0, i32 6, !dbg !412
  call void @nn_msg_init(ptr noundef %43, i64 noundef 0), !dbg !413
  %44 = load ptr, ptr %5, align 8, !dbg !414
  %45 = getelementptr inbounds %struct.nn_sinproc, ptr %44, i32 0, i32 7, !dbg !415
  call void @nn_fsm_event_init(ptr noundef %45), !dbg !416
  %46 = load ptr, ptr %5, align 8, !dbg !417
  %47 = getelementptr inbounds %struct.nn_sinproc, ptr %46, i32 0, i32 8, !dbg !418
  call void @nn_fsm_event_init(ptr noundef %47), !dbg !419
  %48 = load ptr, ptr %5, align 8, !dbg !420
  %49 = getelementptr inbounds %struct.nn_sinproc, ptr %48, i32 0, i32 9, !dbg !421
  call void @nn_fsm_event_init(ptr noundef %49), !dbg !422
  %50 = load ptr, ptr %5, align 8, !dbg !423
  %51 = getelementptr inbounds %struct.nn_sinproc, ptr %50, i32 0, i32 10, !dbg !424
  call void @nn_fsm_event_init(ptr noundef %51), !dbg !425
  %52 = load ptr, ptr %5, align 8, !dbg !426
  %53 = getelementptr inbounds %struct.nn_sinproc, ptr %52, i32 0, i32 11, !dbg !427
  call void @nn_list_item_init(ptr noundef %53), !dbg !428
  ret void, !dbg !429
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sinproc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !430 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !431, metadata !DIExpression()), !dbg !432
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !433, metadata !DIExpression()), !dbg !434
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !435, metadata !DIExpression()), !dbg !436
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata ptr %9, metadata !439, metadata !DIExpression()), !dbg !440
  call void @llvm.dbg.declare(metadata ptr %10, metadata !441, metadata !DIExpression()), !dbg !442
  call void @llvm.dbg.declare(metadata ptr %11, metadata !443, metadata !DIExpression()), !dbg !444
  %12 = load ptr, ptr %5, align 8, !dbg !445
  %13 = icmp ne ptr %12, null, !dbg !445
  br i1 %13, label %14, label %17, !dbg !445

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !445
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !445
  br label %18, !dbg !445

17:                                               ; preds = %4
  br label %18, !dbg !445

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !445
  store ptr %19, ptr %10, align 8, !dbg !446
  %20 = load i32, ptr %6, align 4, !dbg !447
  %21 = icmp eq i32 %20, -2, !dbg !447
  br i1 %21, label %22, label %25, !dbg !447

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !447
  %24 = icmp eq i32 %23, -3, !dbg !447
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !449
  %27 = zext i1 %26 to i32, !dbg !447
  %28 = sext i32 %27 to i64, !dbg !447
  %29 = icmp ne i64 %28, 0, !dbg !447
  br i1 %29, label %30, label %57, !dbg !450

30:                                               ; preds = %25
  %31 = load ptr, ptr %10, align 8, !dbg !451
  %32 = getelementptr inbounds %struct.nn_sinproc, ptr %31, i32 0, i32 1, !dbg !454
  %33 = load i32, ptr %32, align 8, !dbg !454
  %34 = icmp eq i32 %33, 1, !dbg !455
  br i1 %34, label %40, label %35, !dbg !456

35:                                               ; preds = %30
  %36 = load ptr, ptr %10, align 8, !dbg !457
  %37 = getelementptr inbounds %struct.nn_sinproc, ptr %36, i32 0, i32 1, !dbg !458
  %38 = load i32, ptr %37, align 8, !dbg !458
  %39 = icmp eq i32 %38, 4, !dbg !459
  br i1 %39, label %40, label %41, !dbg !460

40:                                               ; preds = %35, %30
  br label %88, !dbg !461

41:                                               ; preds = %35
  %42 = load ptr, ptr %10, align 8, !dbg !462
  %43 = getelementptr inbounds %struct.nn_sinproc, ptr %42, i32 0, i32 4, !dbg !463
  call void @nn_pipebase_stop(ptr noundef %43), !dbg !464
  %44 = load ptr, ptr %10, align 8, !dbg !465
  %45 = getelementptr inbounds %struct.nn_sinproc, ptr %44, i32 0, i32 0, !dbg !466
  %46 = load ptr, ptr %10, align 8, !dbg !467
  %47 = getelementptr inbounds %struct.nn_sinproc, ptr %46, i32 0, i32 3, !dbg !468
  %48 = load ptr, ptr %47, align 8, !dbg !468
  %49 = getelementptr inbounds %struct.nn_sinproc, ptr %48, i32 0, i32 0, !dbg !469
  %50 = load ptr, ptr %10, align 8, !dbg !470
  %51 = getelementptr inbounds %struct.nn_sinproc, ptr %50, i32 0, i32 3, !dbg !471
  %52 = load ptr, ptr %51, align 8, !dbg !471
  %53 = getelementptr inbounds %struct.nn_sinproc, ptr %52, i32 0, i32 10, !dbg !472
  %54 = load ptr, ptr %10, align 8, !dbg !473
  call void @nn_fsm_raiseto(ptr noundef %45, ptr noundef %49, ptr noundef %53, i32 noundef 27713, i32 noundef 5, ptr noundef %54), !dbg !474
  %55 = load ptr, ptr %10, align 8, !dbg !475
  %56 = getelementptr inbounds %struct.nn_sinproc, ptr %55, i32 0, i32 1, !dbg !476
  store i32 5, ptr %56, align 8, !dbg !477
  br label %303, !dbg !478

57:                                               ; preds = %25
  %58 = load ptr, ptr %10, align 8, !dbg !479
  %59 = getelementptr inbounds %struct.nn_sinproc, ptr %58, i32 0, i32 1, !dbg !479
  %60 = load i32, ptr %59, align 8, !dbg !479
  %61 = icmp eq i32 %60, 5, !dbg !479
  %62 = zext i1 %61 to i32, !dbg !479
  %63 = sext i32 %62 to i64, !dbg !479
  %64 = icmp ne i64 %63, 0, !dbg !479
  br i1 %64, label %65, label %91, !dbg !481

65:                                               ; preds = %57
  br label %66, !dbg !482

66:                                               ; preds = %65
  %67 = load ptr, ptr %8, align 8, !dbg !484
  %68 = load ptr, ptr %10, align 8, !dbg !484
  %69 = getelementptr inbounds %struct.nn_sinproc, ptr %68, i32 0, i32 3, !dbg !484
  %70 = load ptr, ptr %69, align 8, !dbg !484
  %71 = icmp eq ptr %67, %70, !dbg !484
  br i1 %71, label %72, label %75, !dbg !484

72:                                               ; preds = %66
  %73 = load i32, ptr %7, align 4, !dbg !484
  %74 = icmp eq i32 %73, 5, !dbg !484
  br label %75

75:                                               ; preds = %72, %66
  %76 = phi i1 [ false, %66 ], [ %74, %72 ], !dbg !487
  %77 = xor i1 %76, true, !dbg !484
  %78 = zext i1 %77 to i32, !dbg !484
  %79 = sext i32 %78 to i64, !dbg !484
  %80 = icmp ne i64 %79, 0, !dbg !484
  br i1 %80, label %81, label %84, !dbg !488

81:                                               ; preds = %75
  %82 = load ptr, ptr @stderr, align 8, !dbg !489
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str, ptr noundef @.str.9, ptr noundef @.str.2, i32 noundef 217), !dbg !489
  call void @nn_err_abort() #4, !dbg !489
  unreachable, !dbg !489

84:                                               ; preds = %75
  br label %85, !dbg !488

85:                                               ; preds = %84
  %86 = load ptr, ptr %10, align 8, !dbg !491
  %87 = getelementptr inbounds %struct.nn_sinproc, ptr %86, i32 0, i32 1, !dbg !492
  store i32 1, ptr %87, align 8, !dbg !493
  br label %88, !dbg !491

88:                                               ; preds = %85, %40
  call void @llvm.dbg.label(metadata !494), !dbg !495
  %89 = load ptr, ptr %10, align 8, !dbg !496
  %90 = getelementptr inbounds %struct.nn_sinproc, ptr %89, i32 0, i32 0, !dbg !497
  call void @nn_fsm_stopped(ptr noundef %90, i32 noundef 6), !dbg !498
  br label %303, !dbg !499

91:                                               ; preds = %57
  %92 = load ptr, ptr %10, align 8, !dbg !500
  %93 = getelementptr inbounds %struct.nn_sinproc, ptr %92, i32 0, i32 1, !dbg !501
  %94 = load i32, ptr %93, align 8, !dbg !501
  switch i32 %94, label %298 [
    i32 1, label %95
    i32 2, label %114
    i32 3, label %182
    i32 4, label %293
  ], !dbg !502

95:                                               ; preds = %91
  %96 = load i32, ptr %6, align 4, !dbg !503
  switch i32 %96, label %108 [
    i32 -2, label %97
  ], !dbg !505

97:                                               ; preds = %95
  %98 = load i32, ptr %7, align 4, !dbg !506
  switch i32 %98, label %102 [
    i32 -2, label %99
  ], !dbg !508

99:                                               ; preds = %97
  %100 = load ptr, ptr %10, align 8, !dbg !509
  %101 = getelementptr inbounds %struct.nn_sinproc, ptr %100, i32 0, i32 1, !dbg !511
  store i32 2, ptr %101, align 8, !dbg !512
  br label %303, !dbg !513

102:                                              ; preds = %97
  br label %103, !dbg !514

103:                                              ; preds = %102
  %104 = load ptr, ptr @stderr, align 8, !dbg !515
  %105 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %104, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 238), !dbg !515
  call void @nn_err_abort() #4, !dbg !515
  unreachable, !dbg !515

106:                                              ; No predecessors!
  br label %107, !dbg !519

107:                                              ; preds = %106
  br label %108, !dbg !519

108:                                              ; preds = %95, %107
  br label %109, !dbg !520

109:                                              ; preds = %108
  %110 = load ptr, ptr @stderr, align 8, !dbg !521
  %111 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %110, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 242), !dbg !521
  call void @nn_err_abort() #4, !dbg !521
  unreachable, !dbg !521

112:                                              ; No predecessors!
  br label %113, !dbg !525

113:                                              ; preds = %112
  br label %114, !dbg !525

114:                                              ; preds = %91, %113
  %115 = load i32, ptr %6, align 4, !dbg !526
  switch i32 %115, label %181 [
    i32 -2, label %116
    i32 27713, label %147
  ], !dbg !527

116:                                              ; preds = %114
  %117 = load i32, ptr %7, align 4, !dbg !528
  switch i32 %117, label %141 [
    i32 1, label %118
  ], !dbg !530

118:                                              ; preds = %116
  %119 = load ptr, ptr %10, align 8, !dbg !531
  %120 = getelementptr inbounds %struct.nn_sinproc, ptr %119, i32 0, i32 4, !dbg !533
  %121 = call i32 @nn_pipebase_start(ptr noundef %120), !dbg !534
  store i32 %121, ptr %9, align 4, !dbg !535
  br label %122, !dbg !536

122:                                              ; preds = %118
  %123 = load i32, ptr %9, align 4, !dbg !537
  %124 = icmp eq i32 %123, 0, !dbg !537
  %125 = xor i1 %124, true, !dbg !537
  %126 = zext i1 %125 to i32, !dbg !537
  %127 = sext i32 %126 to i64, !dbg !537
  %128 = icmp ne i64 %127, 0, !dbg !537
  br i1 %128, label %129, label %137, !dbg !540

129:                                              ; preds = %122
  %130 = load ptr, ptr @stderr, align 8, !dbg !541
  %131 = load i32, ptr %9, align 4, !dbg !541
  %132 = sub nsw i32 0, %131, !dbg !541
  %133 = call ptr @nn_err_strerror(i32 noundef %132), !dbg !541
  %134 = load i32, ptr %9, align 4, !dbg !541
  %135 = sub nsw i32 0, %134, !dbg !541
  %136 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %130, ptr noundef @.str.7, ptr noundef %133, i32 noundef %135, ptr noundef @.str.2, i32 noundef 257), !dbg !541
  call void @nn_err_abort() #4, !dbg !541
  unreachable, !dbg !541

137:                                              ; preds = %122
  br label %138, !dbg !540

138:                                              ; preds = %137
  %139 = load ptr, ptr %10, align 8, !dbg !543
  %140 = getelementptr inbounds %struct.nn_sinproc, ptr %139, i32 0, i32 1, !dbg !544
  store i32 3, ptr %140, align 8, !dbg !545
  br label %303, !dbg !546

141:                                              ; preds = %116
  br label %142, !dbg !547

142:                                              ; preds = %141
  %143 = load ptr, ptr @stderr, align 8, !dbg !548
  %144 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %143, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 261), !dbg !548
  call void @nn_err_abort() #4, !dbg !548
  unreachable, !dbg !548

145:                                              ; No predecessors!
  br label %146, !dbg !552

146:                                              ; preds = %145
  br label %147, !dbg !552

147:                                              ; preds = %114, %146
  %148 = load i32, ptr %7, align 4, !dbg !553
  switch i32 %148, label %175 [
    i32 2, label %149
  ], !dbg !554

149:                                              ; preds = %147
  %150 = load ptr, ptr %8, align 8, !dbg !555
  %151 = load ptr, ptr %10, align 8, !dbg !557
  %152 = getelementptr inbounds %struct.nn_sinproc, ptr %151, i32 0, i32 3, !dbg !558
  store ptr %150, ptr %152, align 8, !dbg !559
  %153 = load ptr, ptr %10, align 8, !dbg !560
  %154 = getelementptr inbounds %struct.nn_sinproc, ptr %153, i32 0, i32 4, !dbg !561
  %155 = call i32 @nn_pipebase_start(ptr noundef %154), !dbg !562
  store i32 %155, ptr %9, align 4, !dbg !563
  br label %156, !dbg !564

156:                                              ; preds = %149
  %157 = load i32, ptr %9, align 4, !dbg !565
  %158 = icmp eq i32 %157, 0, !dbg !565
  %159 = xor i1 %158, true, !dbg !565
  %160 = zext i1 %159 to i32, !dbg !565
  %161 = sext i32 %160 to i64, !dbg !565
  %162 = icmp ne i64 %161, 0, !dbg !565
  br i1 %162, label %163, label %171, !dbg !568

163:                                              ; preds = %156
  %164 = load ptr, ptr @stderr, align 8, !dbg !569
  %165 = load i32, ptr %9, align 4, !dbg !569
  %166 = sub nsw i32 0, %165, !dbg !569
  %167 = call ptr @nn_err_strerror(i32 noundef %166), !dbg !569
  %168 = load i32, ptr %9, align 4, !dbg !569
  %169 = sub nsw i32 0, %168, !dbg !569
  %170 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %164, ptr noundef @.str.7, ptr noundef %167, i32 noundef %169, ptr noundef @.str.2, i32 noundef 269), !dbg !569
  call void @nn_err_abort() #4, !dbg !569
  unreachable, !dbg !569

171:                                              ; preds = %156
  br label %172, !dbg !568

172:                                              ; preds = %171
  %173 = load ptr, ptr %10, align 8, !dbg !571
  %174 = getelementptr inbounds %struct.nn_sinproc, ptr %173, i32 0, i32 1, !dbg !572
  store i32 3, ptr %174, align 8, !dbg !573
  br label %303, !dbg !574

175:                                              ; preds = %147
  br label %176, !dbg !575

176:                                              ; preds = %175
  %177 = load ptr, ptr @stderr, align 8, !dbg !576
  %178 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %177, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 273), !dbg !576
  call void @nn_err_abort() #4, !dbg !576
  unreachable, !dbg !576

179:                                              ; No predecessors!
  br label %180, !dbg !580

180:                                              ; preds = %179
  br label %181, !dbg !581

181:                                              ; preds = %180, %114
  br label %182, !dbg !581

182:                                              ; preds = %91, %181
  %183 = load i32, ptr %6, align 4, !dbg !582
  switch i32 %183, label %287 [
    i32 27713, label %184
  ], !dbg !583

184:                                              ; preds = %182
  %185 = load i32, ptr %7, align 4, !dbg !584
  switch i32 %185, label %281 [
    i32 3, label %186
    i32 4, label %243
    i32 5, label %265
  ], !dbg !586

186:                                              ; preds = %184
  %187 = load ptr, ptr %10, align 8, !dbg !587
  %188 = getelementptr inbounds %struct.nn_sinproc, ptr %187, i32 0, i32 5, !dbg !589
  %189 = call i32 @nn_msgqueue_empty(ptr noundef %188), !dbg !590
  store i32 %189, ptr %11, align 4, !dbg !591
  %190 = load ptr, ptr %10, align 8, !dbg !592
  %191 = getelementptr inbounds %struct.nn_sinproc, ptr %190, i32 0, i32 5, !dbg !593
  %192 = load ptr, ptr %10, align 8, !dbg !594
  %193 = getelementptr inbounds %struct.nn_sinproc, ptr %192, i32 0, i32 3, !dbg !595
  %194 = load ptr, ptr %193, align 8, !dbg !595
  %195 = getelementptr inbounds %struct.nn_sinproc, ptr %194, i32 0, i32 6, !dbg !596
  %196 = call i32 @nn_msgqueue_send(ptr noundef %191, ptr noundef %195), !dbg !597
  store i32 %196, ptr %9, align 4, !dbg !598
  %197 = load i32, ptr %9, align 4, !dbg !599
  %198 = icmp eq i32 %197, -11, !dbg !601
  br i1 %198, label %199, label %204, !dbg !602

199:                                              ; preds = %186
  %200 = load ptr, ptr %10, align 8, !dbg !603
  %201 = getelementptr inbounds %struct.nn_sinproc, ptr %200, i32 0, i32 2, !dbg !605
  %202 = load i32, ptr %201, align 4, !dbg !606
  %203 = or i32 %202, 2, !dbg !606
  store i32 %203, ptr %201, align 4, !dbg !606
  br label %303, !dbg !607

204:                                              ; preds = %186
  br label %205, !dbg !608

205:                                              ; preds = %204
  %206 = load i32, ptr %9, align 4, !dbg !609
  %207 = icmp eq i32 %206, 0, !dbg !609
  %208 = xor i1 %207, true, !dbg !609
  %209 = zext i1 %208 to i32, !dbg !609
  %210 = sext i32 %209 to i64, !dbg !609
  %211 = icmp ne i64 %210, 0, !dbg !609
  br i1 %211, label %212, label %220, !dbg !612

212:                                              ; preds = %205
  %213 = load ptr, ptr @stderr, align 8, !dbg !613
  %214 = load i32, ptr %9, align 4, !dbg !613
  %215 = sub nsw i32 0, %214, !dbg !613
  %216 = call ptr @nn_err_strerror(i32 noundef %215), !dbg !613
  %217 = load i32, ptr %9, align 4, !dbg !613
  %218 = sub nsw i32 0, %217, !dbg !613
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %213, ptr noundef @.str.7, ptr noundef %216, i32 noundef %218, ptr noundef @.str.2, i32 noundef 296), !dbg !613
  call void @nn_err_abort() #4, !dbg !613
  unreachable, !dbg !613

220:                                              ; preds = %205
  br label %221, !dbg !612

221:                                              ; preds = %220
  %222 = load ptr, ptr %10, align 8, !dbg !615
  %223 = getelementptr inbounds %struct.nn_sinproc, ptr %222, i32 0, i32 3, !dbg !616
  %224 = load ptr, ptr %223, align 8, !dbg !616
  %225 = getelementptr inbounds %struct.nn_sinproc, ptr %224, i32 0, i32 6, !dbg !617
  call void @nn_msg_init(ptr noundef %225, i64 noundef 0), !dbg !618
  %226 = load i32, ptr %11, align 4, !dbg !619
  %227 = icmp ne i32 %226, 0, !dbg !619
  br i1 %227, label %228, label %231, !dbg !621

228:                                              ; preds = %221
  %229 = load ptr, ptr %10, align 8, !dbg !622
  %230 = getelementptr inbounds %struct.nn_sinproc, ptr %229, i32 0, i32 4, !dbg !623
  call void @nn_pipebase_received(ptr noundef %230), !dbg !624
  br label %231, !dbg !624

231:                                              ; preds = %228, %221
  %232 = load ptr, ptr %10, align 8, !dbg !625
  %233 = getelementptr inbounds %struct.nn_sinproc, ptr %232, i32 0, i32 0, !dbg !626
  %234 = load ptr, ptr %10, align 8, !dbg !627
  %235 = getelementptr inbounds %struct.nn_sinproc, ptr %234, i32 0, i32 3, !dbg !628
  %236 = load ptr, ptr %235, align 8, !dbg !628
  %237 = getelementptr inbounds %struct.nn_sinproc, ptr %236, i32 0, i32 0, !dbg !629
  %238 = load ptr, ptr %10, align 8, !dbg !630
  %239 = getelementptr inbounds %struct.nn_sinproc, ptr %238, i32 0, i32 3, !dbg !631
  %240 = load ptr, ptr %239, align 8, !dbg !631
  %241 = getelementptr inbounds %struct.nn_sinproc, ptr %240, i32 0, i32 9, !dbg !632
  %242 = load ptr, ptr %10, align 8, !dbg !633
  call void @nn_fsm_raiseto(ptr noundef %233, ptr noundef %237, ptr noundef %241, i32 noundef 27713, i32 noundef 4, ptr noundef %242), !dbg !634
  br label %303, !dbg !635

243:                                              ; preds = %184
  br label %244, !dbg !636

244:                                              ; preds = %243
  %245 = load ptr, ptr %10, align 8, !dbg !637
  %246 = getelementptr inbounds %struct.nn_sinproc, ptr %245, i32 0, i32 2, !dbg !637
  %247 = load i32, ptr %246, align 4, !dbg !637
  %248 = and i32 %247, 1, !dbg !637
  %249 = icmp ne i32 %248, 0, !dbg !637
  %250 = xor i1 %249, true, !dbg !637
  %251 = zext i1 %250 to i32, !dbg !637
  %252 = sext i32 %251 to i64, !dbg !637
  %253 = icmp ne i64 %252, 0, !dbg !637
  br i1 %253, label %254, label %257, !dbg !640

254:                                              ; preds = %244
  %255 = load ptr, ptr @stderr, align 8, !dbg !641
  %256 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %255, ptr noundef @.str, ptr noundef @.str.11, ptr noundef @.str.2, i32 noundef 311), !dbg !641
  call void @nn_err_abort() #4, !dbg !641
  unreachable, !dbg !641

257:                                              ; preds = %244
  br label %258, !dbg !640

258:                                              ; preds = %257
  %259 = load ptr, ptr %10, align 8, !dbg !643
  %260 = getelementptr inbounds %struct.nn_sinproc, ptr %259, i32 0, i32 4, !dbg !644
  call void @nn_pipebase_sent(ptr noundef %260), !dbg !645
  %261 = load ptr, ptr %10, align 8, !dbg !646
  %262 = getelementptr inbounds %struct.nn_sinproc, ptr %261, i32 0, i32 2, !dbg !647
  %263 = load i32, ptr %262, align 4, !dbg !648
  %264 = and i32 %263, -2, !dbg !648
  store i32 %264, ptr %262, align 4, !dbg !648
  br label %303, !dbg !649

265:                                              ; preds = %184
  %266 = load ptr, ptr %10, align 8, !dbg !650
  %267 = getelementptr inbounds %struct.nn_sinproc, ptr %266, i32 0, i32 4, !dbg !651
  call void @nn_pipebase_stop(ptr noundef %267), !dbg !652
  %268 = load ptr, ptr %10, align 8, !dbg !653
  %269 = getelementptr inbounds %struct.nn_sinproc, ptr %268, i32 0, i32 0, !dbg !654
  %270 = load ptr, ptr %10, align 8, !dbg !655
  %271 = getelementptr inbounds %struct.nn_sinproc, ptr %270, i32 0, i32 3, !dbg !656
  %272 = load ptr, ptr %271, align 8, !dbg !656
  %273 = getelementptr inbounds %struct.nn_sinproc, ptr %272, i32 0, i32 0, !dbg !657
  %274 = load ptr, ptr %10, align 8, !dbg !658
  %275 = getelementptr inbounds %struct.nn_sinproc, ptr %274, i32 0, i32 3, !dbg !659
  %276 = load ptr, ptr %275, align 8, !dbg !659
  %277 = getelementptr inbounds %struct.nn_sinproc, ptr %276, i32 0, i32 10, !dbg !660
  %278 = load ptr, ptr %10, align 8, !dbg !661
  call void @nn_fsm_raiseto(ptr noundef %269, ptr noundef %273, ptr noundef %277, i32 noundef 27713, i32 noundef 5, ptr noundef %278), !dbg !662
  %279 = load ptr, ptr %10, align 8, !dbg !663
  %280 = getelementptr inbounds %struct.nn_sinproc, ptr %279, i32 0, i32 1, !dbg !664
  store i32 4, ptr %280, align 8, !dbg !665
  br label %303, !dbg !666

281:                                              ; preds = %184
  br label %282, !dbg !667

282:                                              ; preds = %281
  %283 = load ptr, ptr @stderr, align 8, !dbg !668
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 325), !dbg !668
  call void @nn_err_abort() #4, !dbg !668
  unreachable, !dbg !668

285:                                              ; No predecessors!
  br label %286, !dbg !672

286:                                              ; preds = %285
  br label %287, !dbg !672

287:                                              ; preds = %182, %286
  br label %288, !dbg !673

288:                                              ; preds = %287
  %289 = load ptr, ptr @stderr, align 8, !dbg !674
  %290 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %289, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 329), !dbg !674
  call void @nn_err_abort() #4, !dbg !674
  unreachable, !dbg !674

291:                                              ; No predecessors!
  br label %292, !dbg !678

292:                                              ; preds = %291
  br label %293, !dbg !678

293:                                              ; preds = %91, %292
  br label %294, !dbg !679

294:                                              ; preds = %293
  %295 = load ptr, ptr @stderr, align 8, !dbg !680
  %296 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %295, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 338), !dbg !680
  call void @nn_err_abort() #4, !dbg !680
  unreachable, !dbg !680

297:                                              ; No predecessors!
  br label %298, !dbg !684

298:                                              ; preds = %91, %297
  br label %299, !dbg !685

299:                                              ; preds = %298
  %300 = load ptr, ptr @stderr, align 8, !dbg !686
  %301 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %300, ptr noundef @.str, ptr noundef @.str.10, ptr noundef @.str.2, i32 noundef 344), !dbg !686
  call void @nn_err_abort() #4, !dbg !686
  unreachable, !dbg !686

302:                                              ; No predecessors!
  br label %303, !dbg !690

303:                                              ; preds = %41, %88, %99, %138, %172, %199, %231, %258, %265, %302
  ret void, !dbg !691
}

declare void @nn_pipebase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_epbase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_msgqueue_init(ptr noundef, i64 noundef) #2

declare void @nn_msg_init(ptr noundef, i64 noundef) #2

declare void @nn_fsm_event_init(ptr noundef) #2

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_term(ptr noundef %0) #0 !dbg !692 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !695, metadata !DIExpression()), !dbg !696
  %3 = load ptr, ptr %2, align 8, !dbg !697
  %4 = getelementptr inbounds %struct.nn_sinproc, ptr %3, i32 0, i32 11, !dbg !698
  call void @nn_list_item_term(ptr noundef %4), !dbg !699
  %5 = load ptr, ptr %2, align 8, !dbg !700
  %6 = getelementptr inbounds %struct.nn_sinproc, ptr %5, i32 0, i32 10, !dbg !701
  call void @nn_fsm_event_term(ptr noundef %6), !dbg !702
  %7 = load ptr, ptr %2, align 8, !dbg !703
  %8 = getelementptr inbounds %struct.nn_sinproc, ptr %7, i32 0, i32 9, !dbg !704
  call void @nn_fsm_event_term(ptr noundef %8), !dbg !705
  %9 = load ptr, ptr %2, align 8, !dbg !706
  %10 = getelementptr inbounds %struct.nn_sinproc, ptr %9, i32 0, i32 8, !dbg !707
  call void @nn_fsm_event_term(ptr noundef %10), !dbg !708
  %11 = load ptr, ptr %2, align 8, !dbg !709
  %12 = getelementptr inbounds %struct.nn_sinproc, ptr %11, i32 0, i32 7, !dbg !710
  call void @nn_fsm_event_term(ptr noundef %12), !dbg !711
  %13 = load ptr, ptr %2, align 8, !dbg !712
  %14 = getelementptr inbounds %struct.nn_sinproc, ptr %13, i32 0, i32 6, !dbg !713
  call void @nn_msg_term(ptr noundef %14), !dbg !714
  %15 = load ptr, ptr %2, align 8, !dbg !715
  %16 = getelementptr inbounds %struct.nn_sinproc, ptr %15, i32 0, i32 5, !dbg !716
  call void @nn_msgqueue_term(ptr noundef %16), !dbg !717
  %17 = load ptr, ptr %2, align 8, !dbg !718
  %18 = getelementptr inbounds %struct.nn_sinproc, ptr %17, i32 0, i32 4, !dbg !719
  call void @nn_pipebase_term(ptr noundef %18), !dbg !720
  %19 = load ptr, ptr %2, align 8, !dbg !721
  %20 = getelementptr inbounds %struct.nn_sinproc, ptr %19, i32 0, i32 0, !dbg !722
  call void @nn_fsm_term(ptr noundef %20), !dbg !723
  ret void, !dbg !724
}

declare void @nn_list_item_term(ptr noundef) #2

declare void @nn_fsm_event_term(ptr noundef) #2

declare void @nn_msg_term(ptr noundef) #2

declare void @nn_msgqueue_term(ptr noundef) #2

declare void @nn_pipebase_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sinproc_isidle(ptr noundef %0) #0 !dbg !725 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !728, metadata !DIExpression()), !dbg !729
  %3 = load ptr, ptr %2, align 8, !dbg !730
  %4 = getelementptr inbounds %struct.nn_sinproc, ptr %3, i32 0, i32 0, !dbg !731
  %5 = call i32 @nn_fsm_isidle(ptr noundef %4), !dbg !732
  ret i32 %5, !dbg !733
}

declare i32 @nn_fsm_isidle(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !734 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !737, metadata !DIExpression()), !dbg !738
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !739, metadata !DIExpression()), !dbg !740
  %5 = load ptr, ptr %3, align 8, !dbg !741
  %6 = getelementptr inbounds %struct.nn_sinproc, ptr %5, i32 0, i32 0, !dbg !742
  call void @nn_fsm_start(ptr noundef %6), !dbg !743
  %7 = load ptr, ptr %3, align 8, !dbg !744
  %8 = getelementptr inbounds %struct.nn_sinproc, ptr %7, i32 0, i32 0, !dbg !745
  %9 = load ptr, ptr %4, align 8, !dbg !746
  %10 = load ptr, ptr %3, align 8, !dbg !747
  %11 = getelementptr inbounds %struct.nn_sinproc, ptr %10, i32 0, i32 7, !dbg !748
  %12 = load ptr, ptr %3, align 8, !dbg !749
  call void @nn_fsm_raiseto(ptr noundef %8, ptr noundef %9, ptr noundef %11, i32 noundef 27713, i32 noundef 1, ptr noundef %12), !dbg !750
  ret void, !dbg !751
}

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_fsm_raiseto(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_accept(ptr noundef %0, ptr noundef %1) #0 !dbg !752 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !755, metadata !DIExpression()), !dbg !756
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !757, metadata !DIExpression()), !dbg !758
  br label %5, !dbg !759

5:                                                ; preds = %2
  %6 = load ptr, ptr %3, align 8, !dbg !760
  %7 = getelementptr inbounds %struct.nn_sinproc, ptr %6, i32 0, i32 3, !dbg !760
  %8 = load ptr, ptr %7, align 8, !dbg !760
  %9 = icmp ne ptr %8, null, !dbg !760
  %10 = xor i1 %9, true, !dbg !760
  %11 = xor i1 %10, true, !dbg !760
  %12 = zext i1 %11 to i32, !dbg !760
  %13 = sext i32 %12 to i64, !dbg !760
  %14 = icmp ne i64 %13, 0, !dbg !760
  br i1 %14, label %15, label %18, !dbg !763

15:                                               ; preds = %5
  %16 = load ptr, ptr @stderr, align 8, !dbg !764
  %17 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 110), !dbg !764
  call void @nn_err_abort() #4, !dbg !764
  unreachable, !dbg !764

18:                                               ; preds = %5
  br label %19, !dbg !763

19:                                               ; preds = %18
  %20 = load ptr, ptr %4, align 8, !dbg !766
  %21 = load ptr, ptr %3, align 8, !dbg !767
  %22 = getelementptr inbounds %struct.nn_sinproc, ptr %21, i32 0, i32 3, !dbg !768
  store ptr %20, ptr %22, align 8, !dbg !769
  %23 = load ptr, ptr %3, align 8, !dbg !770
  %24 = getelementptr inbounds %struct.nn_sinproc, ptr %23, i32 0, i32 0, !dbg !771
  %25 = load ptr, ptr %4, align 8, !dbg !772
  %26 = getelementptr inbounds %struct.nn_sinproc, ptr %25, i32 0, i32 0, !dbg !773
  %27 = load ptr, ptr %3, align 8, !dbg !774
  %28 = getelementptr inbounds %struct.nn_sinproc, ptr %27, i32 0, i32 7, !dbg !775
  %29 = load ptr, ptr %3, align 8, !dbg !776
  call void @nn_fsm_raiseto(ptr noundef %24, ptr noundef %26, ptr noundef %28, i32 noundef 27713, i32 noundef 2, ptr noundef %29), !dbg !777
  %30 = load ptr, ptr %3, align 8, !dbg !778
  %31 = getelementptr inbounds %struct.nn_sinproc, ptr %30, i32 0, i32 0, !dbg !779
  call void @nn_fsm_start(ptr noundef %31), !dbg !780
  %32 = load ptr, ptr %3, align 8, !dbg !781
  %33 = getelementptr inbounds %struct.nn_sinproc, ptr %32, i32 0, i32 0, !dbg !782
  call void @nn_fsm_action(ptr noundef %33, i32 noundef 1), !dbg !783
  ret void, !dbg !784
}

declare void @nn_fsm_action(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sinproc_stop(ptr noundef %0) #0 !dbg !785 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !786, metadata !DIExpression()), !dbg !787
  %3 = load ptr, ptr %2, align 8, !dbg !788
  %4 = getelementptr inbounds %struct.nn_sinproc, ptr %3, i32 0, i32 0, !dbg !789
  call void @nn_fsm_stop(ptr noundef %4), !dbg !790
  ret void, !dbg !791
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_msg_mv(ptr noundef, ptr noundef) #2

declare i32 @nn_msgqueue_recv(ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare i32 @nn_msgqueue_send(ptr noundef, ptr noundef) #2

declare i32 @nn_msgqueue_empty(ptr noundef) #2

declare void @nn_pipebase_received(ptr noundef) #2

declare void @nn_pipebase_stop(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

declare i32 @nn_pipebase_start(ptr noundef) #2

declare void @nn_pipebase_sent(ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!192, !193, !194, !195, !196, !197, !198}
!llvm.ident = !{!199}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "nn_sinproc_pipebase_vfptr", scope: !2, file: !133, line: 53, type: !51, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !130, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "src/transports/inproc/sinproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7b7455b4f64136fe0d541473a74e0de8")
!4 = !{!5, !128, !19}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sinproc", file: !7, line: 46, size: 4736, elements: !8)
!7 = !DIFile(filename: "./src/transports/inproc/sinproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c50de9684b7e0fabb9c8960363a59da6")
!8 = !{!9, !41, !42, !43, !44, !87, !116, !117, !118, !119, !120, !121}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !6, file: !7, line: 49, baseType: !10, size: 640)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !11, line: 66, size: 640, elements: !12)
!11 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!12 = !{!13, !21, !22, !23, !24, !25, !28}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !10, file: !11, line: 67, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !11, line: 58, baseType: !15)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18, !19, !19, !20}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !10, file: !11, line: 68, baseType: !19, size: 32, offset: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !10, file: !11, line: 69, baseType: !19, size: 32, offset: 96)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !10, file: !11, line: 70, baseType: !20, size: 64, offset: 128)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !10, file: !11, line: 71, baseType: !18, size: 64, offset: 192)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !10, file: !11, line: 72, baseType: !26, size: 64, offset: 256)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !11, line: 30, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !10, file: !11, line: 73, baseType: !29, size: 320, offset: 320)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !11, line: 34, size: 320, elements: !30)
!30 = !{!31, !32, !33, !34, !35}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !29, file: !11, line: 35, baseType: !18, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !29, file: !11, line: 36, baseType: !19, size: 32, offset: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !29, file: !11, line: 37, baseType: !20, size: 64, offset: 128)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !29, file: !11, line: 38, baseType: !19, size: 32, offset: 192)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !29, file: !11, line: 39, baseType: !36, size: 64, offset: 256)
!36 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !37, line: 33, size: 64, elements: !38)
!37 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!38 = !{!39}
!39 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !36, file: !37, line: 34, baseType: !40, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !6, file: !7, line: 50, baseType: !19, size: 32, offset: 640)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !6, file: !7, line: 53, baseType: !19, size: 32, offset: 672)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !6, file: !7, line: 56, baseType: !5, size: 64, offset: 704)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !6, file: !7, line: 59, baseType: !45, size: 1536, offset: 768)
!45 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !46, line: 147, size: 1536, elements: !47)
!46 = !DIFile(filename: "./src/transports/inproc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!47 = !{!48, !49, !78, !79, !80, !81, !84, !85, !86}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !45, file: !46, line: 148, baseType: !10, size: 640)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !45, file: !46, line: 149, baseType: !50, size: 64, offset: 640)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !46, line: 134, size: 128, elements: !53)
!53 = !{!54, !77}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !52, file: !46, line: 138, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DISubroutineType(types: !57)
!57 = !{!19, !58, !59}
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !61, line: 30, size: 512, elements: !62)
!61 = !DIFile(filename: "./src/transports/inproc/../../utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!62 = !{!63, !76}
!63 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !60, file: !61, line: 33, baseType: !64, size: 256)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !65, line: 39, size: 256, elements: !66)
!65 = !DIFile(filename: "./src/transports/inproc/../../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!66 = !{!67}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !64, file: !65, line: 40, baseType: !68, size: 256)
!68 = !DICompositeType(tag: DW_TAG_array_type, baseType: !69, size: 256, elements: !74)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 24, baseType: !71)
!70 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!71 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !72, line: 38, baseType: !73)
!72 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!73 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!74 = !{!75}
!75 = !DISubrange(count: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !60, file: !61, line: 36, baseType: !64, size: 256, offset: 256)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !52, file: !46, line: 142, baseType: !55, size: 64, offset: 64)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !45, file: !46, line: 150, baseType: !69, size: 8, offset: 704)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !45, file: !46, line: 151, baseType: !69, size: 8, offset: 712)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !45, file: !46, line: 152, baseType: !69, size: 8, offset: 720)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !45, file: !46, line: 153, baseType: !82, size: 64, offset: 768)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !46, line: 39, flags: DIFlagFwdDecl)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !45, file: !46, line: 154, baseType: !20, size: 64, offset: 832)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !45, file: !46, line: 155, baseType: !29, size: 320, offset: 896)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !45, file: !46, line: 156, baseType: !29, size: 320, offset: 1216)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "msgqueue", scope: !6, file: !7, line: 63, baseType: !88, size: 512, offset: 2304)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue", file: !89, line: 40, size: 512, elements: !90)
!89 = !DIFile(filename: "./src/transports/inproc/msgqueue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03057ddde493a8150c86b1bc38c7f2a4")
!90 = !{!91, !104, !109, !113, !114, !115}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !88, file: !89, line: 47, baseType: !92, size: 128)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !89, line: 44, size: 128, elements: !93)
!93 = !{!94, !103}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !92, file: !89, line: 45, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue_chunk", file: !89, line: 35, size: 64576, elements: !97)
!97 = !{!98, !102}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "msgs", scope: !96, file: !89, line: 36, baseType: !99, size: 64512)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !60, size: 64512, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 126)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !96, file: !89, line: 37, baseType: !95, size: 64, offset: 64512)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !92, file: !89, line: 46, baseType: !19, size: 32, offset: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !88, file: !89, line: 53, baseType: !105, size: 128, offset: 128)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !88, file: !89, line: 50, size: 128, elements: !106)
!106 = !{!107, !108}
!107 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !105, file: !89, line: 51, baseType: !95, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !105, file: !89, line: 52, baseType: !19, size: 32, offset: 64)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !88, file: !89, line: 56, baseType: !110, size: 64, offset: 256)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !111, line: 46, baseType: !112)
!111 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!112 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !88, file: !89, line: 59, baseType: !110, size: 64, offset: 320)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "maxmem", scope: !88, file: !89, line: 62, baseType: !110, size: 64, offset: 384)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !88, file: !89, line: 66, baseType: !95, size: 64, offset: 448)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !6, file: !7, line: 68, baseType: !60, size: 512, offset: 2816)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "event_connect", scope: !6, file: !7, line: 71, baseType: !29, size: 320, offset: 3328)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !6, file: !7, line: 74, baseType: !29, size: 320, offset: 3648)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !6, file: !7, line: 75, baseType: !29, size: 320, offset: 3968)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "event_disconnect", scope: !6, file: !7, line: 76, baseType: !29, size: 320, offset: 4288)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !6, file: !7, line: 80, baseType: !122, size: 128, offset: 4608)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !123, line: 26, size: 128, elements: !124)
!123 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !122, file: !123, line: 27, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !122, file: !123, line: 28, baseType: !126, size: 64, offset: 64)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!130 = !{!0, !131, !137, !142, !147, !152, !157, !162, !167, !172, !177, !182, !187}
!131 = !DIGlobalVariableExpression(var: !132, expr: !DIExpression())
!132 = distinct !DIGlobalVariable(scope: null, file: !133, line: 71, type: !134, isLocal: true, isDefinition: true)
!133 = !DIFile(filename: "./src/transports/inproc/sinproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "7b7455b4f64136fe0d541473a74e0de8")
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 240, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 30)
!137 = !DIGlobalVariableExpression(var: !138, expr: !DIExpression())
!138 = distinct !DIGlobalVariable(scope: null, file: !133, line: 71, type: !139, isLocal: true, isDefinition: true)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 176, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 22)
!142 = !DIGlobalVariableExpression(var: !143, expr: !DIExpression())
!143 = distinct !DIGlobalVariable(scope: null, file: !133, line: 71, type: !144, isLocal: true, isDefinition: true)
!144 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 272, elements: !145)
!145 = !{!146}
!146 = !DISubrange(count: 34)
!147 = !DIGlobalVariableExpression(var: !148, expr: !DIExpression())
!148 = distinct !DIGlobalVariable(scope: null, file: !133, line: 110, type: !149, isLocal: true, isDefinition: true)
!149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 96, elements: !150)
!150 = !{!151}
!151 = !DISubrange(count: 12)
!152 = !DIGlobalVariableExpression(var: !153, expr: !DIExpression())
!153 = distinct !DIGlobalVariable(scope: null, file: !133, line: 139, type: !154, isLocal: true, isDefinition: true)
!154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 336, elements: !155)
!155 = !{!156}
!156 = !DISubrange(count: 42)
!157 = !DIGlobalVariableExpression(var: !158, expr: !DIExpression())
!158 = distinct !DIGlobalVariable(scope: null, file: !133, line: 140, type: !159, isLocal: true, isDefinition: true)
!159 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 352, elements: !160)
!160 = !{!161}
!161 = !DISubrange(count: 44)
!162 = !DIGlobalVariableExpression(var: !163, expr: !DIExpression())
!163 = distinct !DIGlobalVariable(scope: null, file: !133, line: 163, type: !164, isLocal: true, isDefinition: true)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 744, elements: !165)
!165 = !{!166}
!166 = !DISubrange(count: 93)
!167 = !DIGlobalVariableExpression(var: !168, expr: !DIExpression())
!168 = distinct !DIGlobalVariable(scope: null, file: !133, line: 168, type: !169, isLocal: true, isDefinition: true)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 136, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 17)
!172 = !DIGlobalVariableExpression(var: !173, expr: !DIExpression())
!173 = distinct !DIGlobalVariable(scope: null, file: !133, line: 175, type: !174, isLocal: true, isDefinition: true)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 200, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 25)
!177 = !DIGlobalVariableExpression(var: !178, expr: !DIExpression())
!178 = distinct !DIGlobalVariable(scope: null, file: !133, line: 217, type: !179, isLocal: true, isDefinition: true)
!179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 456, elements: !180)
!180 = !{!181}
!181 = !DISubrange(count: 57)
!182 = !DIGlobalVariableExpression(var: !183, expr: !DIExpression())
!183 = distinct !DIGlobalVariable(scope: null, file: !133, line: 238, type: !184, isLocal: true, isDefinition: true)
!184 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 16, elements: !185)
!185 = !{!186}
!186 = !DISubrange(count: 2)
!187 = !DIGlobalVariableExpression(var: !188, expr: !DIExpression())
!188 = distinct !DIGlobalVariable(scope: null, file: !133, line: 311, type: !189, isLocal: true, isDefinition: true)
!189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 328, elements: !190)
!190 = !{!191}
!191 = !DISubrange(count: 41)
!192 = !{i32 7, !"Dwarf Version", i32 5}
!193 = !{i32 2, !"Debug Info Version", i32 3}
!194 = !{i32 1, !"wchar_size", i32 4}
!195 = !{i32 8, !"PIC Level", i32 2}
!196 = !{i32 7, !"PIE Level", i32 2}
!197 = !{i32 7, !"uwtable", i32 2}
!198 = !{i32 7, !"frame-pointer", i32 2}
!199 = !{!"clang version 16.0.0"}
!200 = distinct !DISubprogram(name: "nn_sinproc_send", scope: !133, file: !133, line: 127, type: !56, scopeLine: 128, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!201 = !{}
!202 = !DILocalVariable(name: "self", arg: 1, scope: !200, file: !133, line: 127, type: !58)
!203 = !DILocation(line: 127, column: 49, scope: !200)
!204 = !DILocalVariable(name: "msg", arg: 2, scope: !200, file: !133, line: 127, type: !59)
!205 = !DILocation(line: 127, column: 70, scope: !200)
!206 = !DILocalVariable(name: "sinproc", scope: !200, file: !133, line: 129, type: !5)
!207 = !DILocation(line: 129, column: 24, scope: !200)
!208 = !DILocation(line: 131, column: 15, scope: !200)
!209 = !DILocation(line: 131, column: 13, scope: !200)
!210 = !DILocation(line: 135, column: 9, scope: !211)
!211 = distinct !DILexicalBlock(scope: !200, file: !133, line: 135, column: 9)
!212 = !DILocation(line: 135, column: 18, scope: !211)
!213 = !DILocation(line: 135, column: 24, scope: !211)
!214 = !DILocation(line: 135, column: 9, scope: !200)
!215 = !DILocation(line: 136, column: 9, scope: !211)
!216 = !DILocation(line: 139, column: 5, scope: !200)
!217 = !DILocation(line: 139, column: 5, scope: !218)
!218 = distinct !DILexicalBlock(scope: !219, file: !133, line: 139, column: 5)
!219 = distinct !DILexicalBlock(scope: !200, file: !133, line: 139, column: 5)
!220 = !DILocation(line: 139, column: 5, scope: !219)
!221 = !DILocation(line: 139, column: 5, scope: !222)
!222 = distinct !DILexicalBlock(scope: !218, file: !133, line: 139, column: 5)
!223 = !DILocation(line: 140, column: 5, scope: !200)
!224 = !DILocation(line: 140, column: 5, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !133, line: 140, column: 5)
!226 = distinct !DILexicalBlock(scope: !200, file: !133, line: 140, column: 5)
!227 = !DILocation(line: 140, column: 5, scope: !226)
!228 = !DILocation(line: 140, column: 5, scope: !229)
!229 = distinct !DILexicalBlock(scope: !225, file: !133, line: 140, column: 5)
!230 = !DILocation(line: 143, column: 19, scope: !200)
!231 = !DILocation(line: 143, column: 28, scope: !200)
!232 = !DILocation(line: 143, column: 5, scope: !200)
!233 = !DILocation(line: 144, column: 17, scope: !200)
!234 = !DILocation(line: 144, column: 26, scope: !200)
!235 = !DILocation(line: 144, column: 31, scope: !200)
!236 = !DILocation(line: 144, column: 5, scope: !200)
!237 = !DILocation(line: 147, column: 5, scope: !200)
!238 = !DILocation(line: 147, column: 14, scope: !200)
!239 = !DILocation(line: 147, column: 20, scope: !200)
!240 = !DILocation(line: 148, column: 22, scope: !200)
!241 = !DILocation(line: 148, column: 31, scope: !200)
!242 = !DILocation(line: 148, column: 37, scope: !200)
!243 = !DILocation(line: 148, column: 46, scope: !200)
!244 = !DILocation(line: 148, column: 52, scope: !200)
!245 = !DILocation(line: 149, column: 10, scope: !200)
!246 = !DILocation(line: 149, column: 19, scope: !200)
!247 = !DILocation(line: 149, column: 25, scope: !200)
!248 = !DILocation(line: 150, column: 26, scope: !200)
!249 = !DILocation(line: 148, column: 5, scope: !200)
!250 = !DILocation(line: 152, column: 5, scope: !200)
!251 = !DILocation(line: 153, column: 1, scope: !200)
!252 = distinct !DISubprogram(name: "nn_sinproc_recv", scope: !133, file: !133, line: 155, type: !56, scopeLine: 156, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!253 = !DILocalVariable(name: "self", arg: 1, scope: !252, file: !133, line: 155, type: !58)
!254 = !DILocation(line: 155, column: 49, scope: !252)
!255 = !DILocalVariable(name: "msg", arg: 2, scope: !252, file: !133, line: 155, type: !59)
!256 = !DILocation(line: 155, column: 70, scope: !252)
!257 = !DILocalVariable(name: "rc", scope: !252, file: !133, line: 157, type: !19)
!258 = !DILocation(line: 157, column: 9, scope: !252)
!259 = !DILocalVariable(name: "sinproc", scope: !252, file: !133, line: 158, type: !5)
!260 = !DILocation(line: 158, column: 24, scope: !252)
!261 = !DILocation(line: 160, column: 15, scope: !252)
!262 = !DILocation(line: 160, column: 13, scope: !252)
!263 = !DILocation(line: 163, column: 5, scope: !252)
!264 = !DILocation(line: 163, column: 5, scope: !265)
!265 = distinct !DILexicalBlock(scope: !266, file: !133, line: 163, column: 5)
!266 = distinct !DILexicalBlock(scope: !252, file: !133, line: 163, column: 5)
!267 = !DILocation(line: 163, column: 5, scope: !266)
!268 = !DILocation(line: 163, column: 5, scope: !269)
!269 = distinct !DILexicalBlock(scope: !265, file: !133, line: 163, column: 5)
!270 = !DILocation(line: 167, column: 29, scope: !252)
!271 = !DILocation(line: 167, column: 38, scope: !252)
!272 = !DILocation(line: 167, column: 48, scope: !252)
!273 = !DILocation(line: 167, column: 10, scope: !252)
!274 = !DILocation(line: 167, column: 8, scope: !252)
!275 = !DILocation(line: 168, column: 5, scope: !252)
!276 = !DILocation(line: 168, column: 5, scope: !277)
!277 = distinct !DILexicalBlock(scope: !278, file: !133, line: 168, column: 5)
!278 = distinct !DILexicalBlock(scope: !252, file: !133, line: 168, column: 5)
!279 = !DILocation(line: 168, column: 5, scope: !278)
!280 = !DILocation(line: 168, column: 5, scope: !281)
!281 = distinct !DILexicalBlock(scope: !277, file: !133, line: 168, column: 5)
!282 = !DILocation(line: 172, column: 9, scope: !283)
!283 = distinct !DILexicalBlock(scope: !252, file: !133, line: 172, column: 9)
!284 = !DILocation(line: 172, column: 18, scope: !283)
!285 = !DILocation(line: 172, column: 24, scope: !283)
!286 = !DILocation(line: 172, column: 9, scope: !252)
!287 = !DILocation(line: 173, column: 13, scope: !288)
!288 = distinct !DILexicalBlock(scope: !289, file: !133, line: 173, column: 13)
!289 = distinct !DILexicalBlock(scope: !283, file: !133, line: 172, column: 58)
!290 = !DILocation(line: 173, column: 13, scope: !289)
!291 = !DILocation(line: 174, column: 37, scope: !292)
!292 = distinct !DILexicalBlock(scope: !288, file: !133, line: 173, column: 67)
!293 = !DILocation(line: 174, column: 46, scope: !292)
!294 = !DILocation(line: 174, column: 57, scope: !292)
!295 = !DILocation(line: 174, column: 66, scope: !292)
!296 = !DILocation(line: 174, column: 72, scope: !292)
!297 = !DILocation(line: 174, column: 18, scope: !292)
!298 = !DILocation(line: 174, column: 16, scope: !292)
!299 = !DILocation(line: 175, column: 13, scope: !292)
!300 = !DILocation(line: 175, column: 13, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !133, line: 175, column: 13)
!302 = distinct !DILexicalBlock(scope: !292, file: !133, line: 175, column: 13)
!303 = !DILocation(line: 175, column: 13, scope: !302)
!304 = !DILocation(line: 175, column: 13, scope: !305)
!305 = distinct !DILexicalBlock(scope: !301, file: !133, line: 175, column: 13)
!306 = !DILocation(line: 176, column: 17, scope: !307)
!307 = distinct !DILexicalBlock(scope: !292, file: !133, line: 176, column: 17)
!308 = !DILocation(line: 176, column: 20, scope: !307)
!309 = !DILocation(line: 176, column: 17, scope: !292)
!310 = !DILocation(line: 177, column: 17, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !133, line: 176, column: 26)
!312 = !DILocation(line: 177, column: 17, scope: !313)
!313 = distinct !DILexicalBlock(scope: !314, file: !133, line: 177, column: 17)
!314 = distinct !DILexicalBlock(scope: !311, file: !133, line: 177, column: 17)
!315 = !DILocation(line: 177, column: 17, scope: !314)
!316 = !DILocation(line: 177, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !313, file: !133, line: 177, column: 17)
!318 = !DILocation(line: 178, column: 31, scope: !311)
!319 = !DILocation(line: 178, column: 40, scope: !311)
!320 = !DILocation(line: 178, column: 46, scope: !311)
!321 = !DILocation(line: 178, column: 17, scope: !311)
!322 = !DILocation(line: 179, column: 34, scope: !311)
!323 = !DILocation(line: 179, column: 43, scope: !311)
!324 = !DILocation(line: 179, column: 49, scope: !311)
!325 = !DILocation(line: 179, column: 58, scope: !311)
!326 = !DILocation(line: 179, column: 64, scope: !311)
!327 = !DILocation(line: 180, column: 22, scope: !311)
!328 = !DILocation(line: 180, column: 31, scope: !311)
!329 = !DILocation(line: 180, column: 37, scope: !311)
!330 = !DILocation(line: 181, column: 42, scope: !311)
!331 = !DILocation(line: 179, column: 17, scope: !311)
!332 = !DILocation(line: 182, column: 17, scope: !311)
!333 = !DILocation(line: 182, column: 26, scope: !311)
!334 = !DILocation(line: 182, column: 32, scope: !311)
!335 = !DILocation(line: 183, column: 13, scope: !311)
!336 = !DILocation(line: 184, column: 9, scope: !292)
!337 = !DILocation(line: 185, column: 5, scope: !289)
!338 = !DILocation(line: 187, column: 30, scope: !339)
!339 = distinct !DILexicalBlock(scope: !252, file: !133, line: 187, column: 9)
!340 = !DILocation(line: 187, column: 39, scope: !339)
!341 = !DILocation(line: 187, column: 10, scope: !339)
!342 = !DILocation(line: 187, column: 9, scope: !252)
!343 = !DILocation(line: 188, column: 31, scope: !339)
!344 = !DILocation(line: 188, column: 40, scope: !339)
!345 = !DILocation(line: 188, column: 8, scope: !339)
!346 = !DILocation(line: 190, column: 5, scope: !252)
!347 = distinct !DISubprogram(name: "nn_sinproc_init", scope: !133, file: !133, line: 58, type: !348, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!348 = !DISubroutineType(types: !349)
!349 = !{null, !5, !19, !350, !18}
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !46, line: 81, size: 128, elements: !352)
!352 = !{!353, !363}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !351, file: !46, line: 82, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !356)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !46, line: 70, size: 128, elements: !357)
!357 = !{!358, !362}
!358 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !356, file: !46, line: 75, baseType: !359, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !350}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !356, file: !46, line: 78, baseType: !359, size: 64, offset: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !351, file: !46, line: 83, baseType: !364, size: 64, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !46, line: 83, flags: DIFlagFwdDecl)
!366 = !DILocalVariable(name: "self", arg: 1, scope: !347, file: !133, line: 58, type: !5)
!367 = !DILocation(line: 58, column: 42, scope: !347)
!368 = !DILocalVariable(name: "src", arg: 2, scope: !347, file: !133, line: 58, type: !19)
!369 = !DILocation(line: 58, column: 52, scope: !347)
!370 = !DILocalVariable(name: "epbase", arg: 3, scope: !347, file: !133, line: 59, type: !350)
!371 = !DILocation(line: 59, column: 23, scope: !347)
!372 = !DILocalVariable(name: "owner", arg: 4, scope: !347, file: !133, line: 59, type: !18)
!373 = !DILocation(line: 59, column: 46, scope: !347)
!374 = !DILocalVariable(name: "rcvbuf", scope: !347, file: !133, line: 61, type: !19)
!375 = !DILocation(line: 61, column: 9, scope: !347)
!376 = !DILocalVariable(name: "sz", scope: !347, file: !133, line: 62, type: !110)
!377 = !DILocation(line: 62, column: 12, scope: !347)
!378 = !DILocation(line: 64, column: 19, scope: !347)
!379 = !DILocation(line: 64, column: 25, scope: !347)
!380 = !DILocation(line: 64, column: 50, scope: !347)
!381 = !DILocation(line: 64, column: 55, scope: !347)
!382 = !DILocation(line: 64, column: 61, scope: !347)
!383 = !DILocation(line: 64, column: 5, scope: !347)
!384 = !DILocation(line: 65, column: 5, scope: !347)
!385 = !DILocation(line: 65, column: 11, scope: !347)
!386 = !DILocation(line: 65, column: 17, scope: !347)
!387 = !DILocation(line: 66, column: 5, scope: !347)
!388 = !DILocation(line: 66, column: 11, scope: !347)
!389 = !DILocation(line: 66, column: 17, scope: !347)
!390 = !DILocation(line: 67, column: 5, scope: !347)
!391 = !DILocation(line: 67, column: 11, scope: !347)
!392 = !DILocation(line: 67, column: 16, scope: !347)
!393 = !DILocation(line: 68, column: 24, scope: !347)
!394 = !DILocation(line: 68, column: 30, scope: !347)
!395 = !DILocation(line: 68, column: 68, scope: !347)
!396 = !DILocation(line: 68, column: 5, scope: !347)
!397 = !DILocation(line: 69, column: 8, scope: !347)
!398 = !DILocation(line: 70, column: 23, scope: !347)
!399 = !DILocation(line: 70, column: 5, scope: !347)
!400 = !DILocation(line: 71, column: 5, scope: !347)
!401 = !DILocation(line: 71, column: 5, scope: !402)
!402 = distinct !DILexicalBlock(scope: !403, file: !133, line: 71, column: 5)
!403 = distinct !DILexicalBlock(scope: !347, file: !133, line: 71, column: 5)
!404 = !DILocation(line: 71, column: 5, scope: !403)
!405 = !DILocation(line: 71, column: 5, scope: !406)
!406 = distinct !DILexicalBlock(scope: !402, file: !133, line: 71, column: 5)
!407 = !DILocation(line: 72, column: 24, scope: !347)
!408 = !DILocation(line: 72, column: 30, scope: !347)
!409 = !DILocation(line: 72, column: 40, scope: !347)
!410 = !DILocation(line: 72, column: 5, scope: !347)
!411 = !DILocation(line: 73, column: 19, scope: !347)
!412 = !DILocation(line: 73, column: 25, scope: !347)
!413 = !DILocation(line: 73, column: 5, scope: !347)
!414 = !DILocation(line: 74, column: 25, scope: !347)
!415 = !DILocation(line: 74, column: 31, scope: !347)
!416 = !DILocation(line: 74, column: 5, scope: !347)
!417 = !DILocation(line: 75, column: 25, scope: !347)
!418 = !DILocation(line: 75, column: 31, scope: !347)
!419 = !DILocation(line: 75, column: 5, scope: !347)
!420 = !DILocation(line: 76, column: 25, scope: !347)
!421 = !DILocation(line: 76, column: 31, scope: !347)
!422 = !DILocation(line: 76, column: 5, scope: !347)
!423 = !DILocation(line: 77, column: 25, scope: !347)
!424 = !DILocation(line: 77, column: 31, scope: !347)
!425 = !DILocation(line: 77, column: 5, scope: !347)
!426 = !DILocation(line: 78, column: 25, scope: !347)
!427 = !DILocation(line: 78, column: 31, scope: !347)
!428 = !DILocation(line: 78, column: 5, scope: !347)
!429 = !DILocation(line: 79, column: 1, scope: !347)
!430 = distinct !DISubprogram(name: "nn_sinproc_handler", scope: !133, file: !133, line: 193, type: !16, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !201)
!431 = !DILocalVariable(name: "self", arg: 1, scope: !430, file: !133, line: 193, type: !18)
!432 = !DILocation(line: 193, column: 48, scope: !430)
!433 = !DILocalVariable(name: "src", arg: 2, scope: !430, file: !133, line: 193, type: !19)
!434 = !DILocation(line: 193, column: 58, scope: !430)
!435 = !DILocalVariable(name: "type", arg: 3, scope: !430, file: !133, line: 193, type: !19)
!436 = !DILocation(line: 193, column: 67, scope: !430)
!437 = !DILocalVariable(name: "srcptr", arg: 4, scope: !430, file: !133, line: 194, type: !20)
!438 = !DILocation(line: 194, column: 11, scope: !430)
!439 = !DILocalVariable(name: "rc", scope: !430, file: !133, line: 196, type: !19)
!440 = !DILocation(line: 196, column: 9, scope: !430)
!441 = !DILocalVariable(name: "sinproc", scope: !430, file: !133, line: 197, type: !5)
!442 = !DILocation(line: 197, column: 24, scope: !430)
!443 = !DILocalVariable(name: "empty", scope: !430, file: !133, line: 198, type: !19)
!444 = !DILocation(line: 198, column: 9, scope: !430)
!445 = !DILocation(line: 200, column: 15, scope: !430)
!446 = !DILocation(line: 200, column: 13, scope: !430)
!447 = !DILocation(line: 205, column: 9, scope: !448)
!448 = distinct !DILexicalBlock(scope: !430, file: !133, line: 205, column: 9)
!449 = !DILocation(line: 0, scope: !448)
!450 = !DILocation(line: 205, column: 9, scope: !430)
!451 = !DILocation(line: 206, column: 13, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !133, line: 206, column: 13)
!453 = distinct !DILexicalBlock(scope: !448, file: !133, line: 205, column: 64)
!454 = !DILocation(line: 206, column: 22, scope: !452)
!455 = !DILocation(line: 206, column: 28, scope: !452)
!456 = !DILocation(line: 206, column: 53, scope: !452)
!457 = !DILocation(line: 207, column: 15, scope: !452)
!458 = !DILocation(line: 207, column: 24, scope: !452)
!459 = !DILocation(line: 207, column: 30, scope: !452)
!460 = !DILocation(line: 206, column: 13, scope: !453)
!461 = !DILocation(line: 208, column: 13, scope: !452)
!462 = !DILocation(line: 209, column: 28, scope: !453)
!463 = !DILocation(line: 209, column: 37, scope: !453)
!464 = !DILocation(line: 209, column: 9, scope: !453)
!465 = !DILocation(line: 210, column: 26, scope: !453)
!466 = !DILocation(line: 210, column: 35, scope: !453)
!467 = !DILocation(line: 210, column: 41, scope: !453)
!468 = !DILocation(line: 210, column: 50, scope: !453)
!469 = !DILocation(line: 210, column: 56, scope: !453)
!470 = !DILocation(line: 211, column: 14, scope: !453)
!471 = !DILocation(line: 211, column: 23, scope: !453)
!472 = !DILocation(line: 211, column: 29, scope: !453)
!473 = !DILocation(line: 212, column: 36, scope: !453)
!474 = !DILocation(line: 210, column: 9, scope: !453)
!475 = !DILocation(line: 213, column: 9, scope: !453)
!476 = !DILocation(line: 213, column: 18, scope: !453)
!477 = !DILocation(line: 213, column: 24, scope: !453)
!478 = !DILocation(line: 214, column: 9, scope: !453)
!479 = !DILocation(line: 216, column: 9, scope: !480)
!480 = distinct !DILexicalBlock(scope: !430, file: !133, line: 216, column: 9)
!481 = !DILocation(line: 216, column: 9, scope: !430)
!482 = !DILocation(line: 217, column: 9, scope: !483)
!483 = distinct !DILexicalBlock(scope: !480, file: !133, line: 216, column: 64)
!484 = !DILocation(line: 217, column: 9, scope: !485)
!485 = distinct !DILexicalBlock(scope: !486, file: !133, line: 217, column: 9)
!486 = distinct !DILexicalBlock(scope: !483, file: !133, line: 217, column: 9)
!487 = !DILocation(line: 0, scope: !485)
!488 = !DILocation(line: 217, column: 9, scope: !486)
!489 = !DILocation(line: 217, column: 9, scope: !490)
!490 = distinct !DILexicalBlock(scope: !485, file: !133, line: 217, column: 9)
!491 = !DILocation(line: 218, column: 9, scope: !483)
!492 = !DILocation(line: 218, column: 18, scope: !483)
!493 = !DILocation(line: 218, column: 24, scope: !483)
!494 = !DILabel(scope: !483, name: "finish", file: !133, line: 219)
!495 = !DILocation(line: 219, column: 1, scope: !483)
!496 = !DILocation(line: 220, column: 26, scope: !483)
!497 = !DILocation(line: 220, column: 35, scope: !483)
!498 = !DILocation(line: 220, column: 9, scope: !483)
!499 = !DILocation(line: 221, column: 9, scope: !483)
!500 = !DILocation(line: 224, column: 13, scope: !430)
!501 = !DILocation(line: 224, column: 22, scope: !430)
!502 = !DILocation(line: 224, column: 5, scope: !430)
!503 = !DILocation(line: 230, column: 17, scope: !504)
!504 = distinct !DILexicalBlock(scope: !430, file: !133, line: 224, column: 29)
!505 = !DILocation(line: 230, column: 9, scope: !504)
!506 = !DILocation(line: 233, column: 21, scope: !507)
!507 = distinct !DILexicalBlock(scope: !504, file: !133, line: 230, column: 22)
!508 = !DILocation(line: 233, column: 13, scope: !507)
!509 = !DILocation(line: 235, column: 17, scope: !510)
!510 = distinct !DILexicalBlock(scope: !507, file: !133, line: 233, column: 27)
!511 = !DILocation(line: 235, column: 26, scope: !510)
!512 = !DILocation(line: 235, column: 32, scope: !510)
!513 = !DILocation(line: 236, column: 17, scope: !510)
!514 = !DILocation(line: 238, column: 17, scope: !510)
!515 = !DILocation(line: 238, column: 17, scope: !516)
!516 = distinct !DILexicalBlock(scope: !517, file: !133, line: 238, column: 17)
!517 = distinct !DILexicalBlock(scope: !518, file: !133, line: 238, column: 17)
!518 = distinct !DILexicalBlock(scope: !510, file: !133, line: 238, column: 17)
!519 = !DILocation(line: 239, column: 13, scope: !510)
!520 = !DILocation(line: 242, column: 13, scope: !507)
!521 = !DILocation(line: 242, column: 13, scope: !522)
!522 = distinct !DILexicalBlock(scope: !523, file: !133, line: 242, column: 13)
!523 = distinct !DILexicalBlock(scope: !524, file: !133, line: 242, column: 13)
!524 = distinct !DILexicalBlock(scope: !507, file: !133, line: 242, column: 13)
!525 = !DILocation(line: 243, column: 9, scope: !507)
!526 = !DILocation(line: 251, column: 17, scope: !504)
!527 = !DILocation(line: 251, column: 9, scope: !504)
!528 = !DILocation(line: 254, column: 21, scope: !529)
!529 = distinct !DILexicalBlock(scope: !504, file: !133, line: 251, column: 22)
!530 = !DILocation(line: 254, column: 13, scope: !529)
!531 = !DILocation(line: 256, column: 42, scope: !532)
!532 = distinct !DILexicalBlock(scope: !529, file: !133, line: 254, column: 27)
!533 = !DILocation(line: 256, column: 51, scope: !532)
!534 = !DILocation(line: 256, column: 22, scope: !532)
!535 = !DILocation(line: 256, column: 20, scope: !532)
!536 = !DILocation(line: 257, column: 17, scope: !532)
!537 = !DILocation(line: 257, column: 17, scope: !538)
!538 = distinct !DILexicalBlock(scope: !539, file: !133, line: 257, column: 17)
!539 = distinct !DILexicalBlock(scope: !532, file: !133, line: 257, column: 17)
!540 = !DILocation(line: 257, column: 17, scope: !539)
!541 = !DILocation(line: 257, column: 17, scope: !542)
!542 = distinct !DILexicalBlock(scope: !538, file: !133, line: 257, column: 17)
!543 = !DILocation(line: 258, column: 17, scope: !532)
!544 = !DILocation(line: 258, column: 26, scope: !532)
!545 = !DILocation(line: 258, column: 32, scope: !532)
!546 = !DILocation(line: 259, column: 17, scope: !532)
!547 = !DILocation(line: 261, column: 17, scope: !532)
!548 = !DILocation(line: 261, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !133, line: 261, column: 17)
!550 = distinct !DILexicalBlock(scope: !551, file: !133, line: 261, column: 17)
!551 = distinct !DILexicalBlock(scope: !532, file: !133, line: 261, column: 17)
!552 = !DILocation(line: 262, column: 13, scope: !532)
!553 = !DILocation(line: 265, column: 21, scope: !529)
!554 = !DILocation(line: 265, column: 13, scope: !529)
!555 = !DILocation(line: 267, column: 54, scope: !556)
!556 = distinct !DILexicalBlock(scope: !529, file: !133, line: 265, column: 27)
!557 = !DILocation(line: 267, column: 17, scope: !556)
!558 = !DILocation(line: 267, column: 26, scope: !556)
!559 = !DILocation(line: 267, column: 31, scope: !556)
!560 = !DILocation(line: 268, column: 42, scope: !556)
!561 = !DILocation(line: 268, column: 51, scope: !556)
!562 = !DILocation(line: 268, column: 22, scope: !556)
!563 = !DILocation(line: 268, column: 20, scope: !556)
!564 = !DILocation(line: 269, column: 17, scope: !556)
!565 = !DILocation(line: 269, column: 17, scope: !566)
!566 = distinct !DILexicalBlock(scope: !567, file: !133, line: 269, column: 17)
!567 = distinct !DILexicalBlock(scope: !556, file: !133, line: 269, column: 17)
!568 = !DILocation(line: 269, column: 17, scope: !567)
!569 = !DILocation(line: 269, column: 17, scope: !570)
!570 = distinct !DILexicalBlock(scope: !566, file: !133, line: 269, column: 17)
!571 = !DILocation(line: 270, column: 17, scope: !556)
!572 = !DILocation(line: 270, column: 26, scope: !556)
!573 = !DILocation(line: 270, column: 32, scope: !556)
!574 = !DILocation(line: 271, column: 17, scope: !556)
!575 = !DILocation(line: 273, column: 17, scope: !556)
!576 = !DILocation(line: 273, column: 17, scope: !577)
!577 = distinct !DILexicalBlock(scope: !578, file: !133, line: 273, column: 17)
!578 = distinct !DILexicalBlock(scope: !579, file: !133, line: 273, column: 17)
!579 = distinct !DILexicalBlock(scope: !556, file: !133, line: 273, column: 17)
!580 = !DILocation(line: 274, column: 13, scope: !556)
!581 = !DILocation(line: 275, column: 9, scope: !529)
!582 = !DILocation(line: 281, column: 21, scope: !504)
!583 = !DILocation(line: 281, column: 13, scope: !504)
!584 = !DILocation(line: 284, column: 25, scope: !585)
!585 = distinct !DILexicalBlock(scope: !504, file: !133, line: 281, column: 26)
!586 = !DILocation(line: 284, column: 17, scope: !585)
!587 = !DILocation(line: 287, column: 49, scope: !588)
!588 = distinct !DILexicalBlock(scope: !585, file: !133, line: 284, column: 31)
!589 = !DILocation(line: 287, column: 58, scope: !588)
!590 = !DILocation(line: 287, column: 29, scope: !588)
!591 = !DILocation(line: 287, column: 27, scope: !588)
!592 = !DILocation(line: 290, column: 45, scope: !588)
!593 = !DILocation(line: 290, column: 54, scope: !588)
!594 = !DILocation(line: 291, column: 26, scope: !588)
!595 = !DILocation(line: 291, column: 35, scope: !588)
!596 = !DILocation(line: 291, column: 41, scope: !588)
!597 = !DILocation(line: 290, column: 26, scope: !588)
!598 = !DILocation(line: 290, column: 24, scope: !588)
!599 = !DILocation(line: 292, column: 25, scope: !600)
!600 = distinct !DILexicalBlock(scope: !588, file: !133, line: 292, column: 25)
!601 = !DILocation(line: 292, column: 28, scope: !600)
!602 = !DILocation(line: 292, column: 25, scope: !588)
!603 = !DILocation(line: 293, column: 25, scope: !604)
!604 = distinct !DILexicalBlock(scope: !600, file: !133, line: 292, column: 40)
!605 = !DILocation(line: 293, column: 34, scope: !604)
!606 = !DILocation(line: 293, column: 40, scope: !604)
!607 = !DILocation(line: 294, column: 25, scope: !604)
!608 = !DILocation(line: 296, column: 21, scope: !588)
!609 = !DILocation(line: 296, column: 21, scope: !610)
!610 = distinct !DILexicalBlock(scope: !611, file: !133, line: 296, column: 21)
!611 = distinct !DILexicalBlock(scope: !588, file: !133, line: 296, column: 21)
!612 = !DILocation(line: 296, column: 21, scope: !611)
!613 = !DILocation(line: 296, column: 21, scope: !614)
!614 = distinct !DILexicalBlock(scope: !610, file: !133, line: 296, column: 21)
!615 = !DILocation(line: 297, column: 35, scope: !588)
!616 = !DILocation(line: 297, column: 44, scope: !588)
!617 = !DILocation(line: 297, column: 50, scope: !588)
!618 = !DILocation(line: 297, column: 21, scope: !588)
!619 = !DILocation(line: 300, column: 25, scope: !620)
!620 = distinct !DILexicalBlock(scope: !588, file: !133, line: 300, column: 25)
!621 = !DILocation(line: 300, column: 25, scope: !588)
!622 = !DILocation(line: 301, column: 48, scope: !620)
!623 = !DILocation(line: 301, column: 57, scope: !620)
!624 = !DILocation(line: 301, column: 25, scope: !620)
!625 = !DILocation(line: 304, column: 38, scope: !588)
!626 = !DILocation(line: 304, column: 47, scope: !588)
!627 = !DILocation(line: 304, column: 53, scope: !588)
!628 = !DILocation(line: 304, column: 62, scope: !588)
!629 = !DILocation(line: 304, column: 68, scope: !588)
!630 = !DILocation(line: 305, column: 26, scope: !588)
!631 = !DILocation(line: 305, column: 35, scope: !588)
!632 = !DILocation(line: 305, column: 41, scope: !588)
!633 = !DILocation(line: 306, column: 46, scope: !588)
!634 = !DILocation(line: 304, column: 21, scope: !588)
!635 = !DILocation(line: 308, column: 21, scope: !588)
!636 = !DILocation(line: 311, column: 21, scope: !588)
!637 = !DILocation(line: 311, column: 21, scope: !638)
!638 = distinct !DILexicalBlock(scope: !639, file: !133, line: 311, column: 21)
!639 = distinct !DILexicalBlock(scope: !588, file: !133, line: 311, column: 21)
!640 = !DILocation(line: 311, column: 21, scope: !639)
!641 = !DILocation(line: 311, column: 21, scope: !642)
!642 = distinct !DILexicalBlock(scope: !638, file: !133, line: 311, column: 21)
!643 = !DILocation(line: 312, column: 40, scope: !588)
!644 = !DILocation(line: 312, column: 49, scope: !588)
!645 = !DILocation(line: 312, column: 21, scope: !588)
!646 = !DILocation(line: 313, column: 21, scope: !588)
!647 = !DILocation(line: 313, column: 30, scope: !588)
!648 = !DILocation(line: 313, column: 36, scope: !588)
!649 = !DILocation(line: 314, column: 21, scope: !588)
!650 = !DILocation(line: 317, column: 40, scope: !588)
!651 = !DILocation(line: 317, column: 49, scope: !588)
!652 = !DILocation(line: 317, column: 21, scope: !588)
!653 = !DILocation(line: 318, column: 38, scope: !588)
!654 = !DILocation(line: 318, column: 47, scope: !588)
!655 = !DILocation(line: 318, column: 53, scope: !588)
!656 = !DILocation(line: 318, column: 62, scope: !588)
!657 = !DILocation(line: 318, column: 68, scope: !588)
!658 = !DILocation(line: 319, column: 26, scope: !588)
!659 = !DILocation(line: 319, column: 35, scope: !588)
!660 = !DILocation(line: 319, column: 41, scope: !588)
!661 = !DILocation(line: 320, column: 48, scope: !588)
!662 = !DILocation(line: 318, column: 21, scope: !588)
!663 = !DILocation(line: 321, column: 21, scope: !588)
!664 = !DILocation(line: 321, column: 30, scope: !588)
!665 = !DILocation(line: 321, column: 36, scope: !588)
!666 = !DILocation(line: 322, column: 21, scope: !588)
!667 = !DILocation(line: 325, column: 21, scope: !588)
!668 = !DILocation(line: 325, column: 21, scope: !669)
!669 = distinct !DILexicalBlock(scope: !670, file: !133, line: 325, column: 21)
!670 = distinct !DILexicalBlock(scope: !671, file: !133, line: 325, column: 21)
!671 = distinct !DILexicalBlock(scope: !588, file: !133, line: 325, column: 21)
!672 = !DILocation(line: 326, column: 17, scope: !588)
!673 = !DILocation(line: 329, column: 17, scope: !585)
!674 = !DILocation(line: 329, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !133, line: 329, column: 17)
!676 = distinct !DILexicalBlock(scope: !677, file: !133, line: 329, column: 17)
!677 = distinct !DILexicalBlock(scope: !585, file: !133, line: 329, column: 17)
!678 = !DILocation(line: 330, column: 13, scope: !585)
!679 = !DILocation(line: 338, column: 13, scope: !504)
!680 = !DILocation(line: 338, column: 13, scope: !681)
!681 = distinct !DILexicalBlock(scope: !682, file: !133, line: 338, column: 13)
!682 = distinct !DILexicalBlock(scope: !683, file: !133, line: 338, column: 13)
!683 = distinct !DILexicalBlock(scope: !504, file: !133, line: 338, column: 13)
!684 = !DILocation(line: 338, column: 13, scope: !683)
!685 = !DILocation(line: 344, column: 9, scope: !504)
!686 = !DILocation(line: 344, column: 9, scope: !687)
!687 = distinct !DILexicalBlock(scope: !688, file: !133, line: 344, column: 9)
!688 = distinct !DILexicalBlock(scope: !689, file: !133, line: 344, column: 9)
!689 = distinct !DILexicalBlock(scope: !504, file: !133, line: 344, column: 9)
!690 = !DILocation(line: 345, column: 5, scope: !504)
!691 = !DILocation(line: 346, column: 1, scope: !430)
!692 = distinct !DISubprogram(name: "nn_sinproc_term", scope: !133, file: !133, line: 81, type: !693, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!693 = !DISubroutineType(types: !694)
!694 = !{null, !5}
!695 = !DILocalVariable(name: "self", arg: 1, scope: !692, file: !133, line: 81, type: !5)
!696 = !DILocation(line: 81, column: 42, scope: !692)
!697 = !DILocation(line: 83, column: 25, scope: !692)
!698 = !DILocation(line: 83, column: 31, scope: !692)
!699 = !DILocation(line: 83, column: 5, scope: !692)
!700 = !DILocation(line: 84, column: 25, scope: !692)
!701 = !DILocation(line: 84, column: 31, scope: !692)
!702 = !DILocation(line: 84, column: 5, scope: !692)
!703 = !DILocation(line: 85, column: 25, scope: !692)
!704 = !DILocation(line: 85, column: 31, scope: !692)
!705 = !DILocation(line: 85, column: 5, scope: !692)
!706 = !DILocation(line: 86, column: 25, scope: !692)
!707 = !DILocation(line: 86, column: 31, scope: !692)
!708 = !DILocation(line: 86, column: 5, scope: !692)
!709 = !DILocation(line: 87, column: 25, scope: !692)
!710 = !DILocation(line: 87, column: 31, scope: !692)
!711 = !DILocation(line: 87, column: 5, scope: !692)
!712 = !DILocation(line: 88, column: 19, scope: !692)
!713 = !DILocation(line: 88, column: 25, scope: !692)
!714 = !DILocation(line: 88, column: 5, scope: !692)
!715 = !DILocation(line: 89, column: 24, scope: !692)
!716 = !DILocation(line: 89, column: 30, scope: !692)
!717 = !DILocation(line: 89, column: 5, scope: !692)
!718 = !DILocation(line: 90, column: 24, scope: !692)
!719 = !DILocation(line: 90, column: 30, scope: !692)
!720 = !DILocation(line: 90, column: 5, scope: !692)
!721 = !DILocation(line: 91, column: 19, scope: !692)
!722 = !DILocation(line: 91, column: 25, scope: !692)
!723 = !DILocation(line: 91, column: 5, scope: !692)
!724 = !DILocation(line: 92, column: 1, scope: !692)
!725 = distinct !DISubprogram(name: "nn_sinproc_isidle", scope: !133, file: !133, line: 94, type: !726, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!726 = !DISubroutineType(types: !727)
!727 = !{!19, !5}
!728 = !DILocalVariable(name: "self", arg: 1, scope: !725, file: !133, line: 94, type: !5)
!729 = !DILocation(line: 94, column: 43, scope: !725)
!730 = !DILocation(line: 96, column: 28, scope: !725)
!731 = !DILocation(line: 96, column: 34, scope: !725)
!732 = !DILocation(line: 96, column: 12, scope: !725)
!733 = !DILocation(line: 96, column: 5, scope: !725)
!734 = distinct !DISubprogram(name: "nn_sinproc_connect", scope: !133, file: !133, line: 99, type: !735, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!735 = !DISubroutineType(types: !736)
!736 = !{null, !5, !18}
!737 = !DILocalVariable(name: "self", arg: 1, scope: !734, file: !133, line: 99, type: !5)
!738 = !DILocation(line: 99, column: 45, scope: !734)
!739 = !DILocalVariable(name: "peer", arg: 2, scope: !734, file: !133, line: 99, type: !18)
!740 = !DILocation(line: 99, column: 66, scope: !734)
!741 = !DILocation(line: 101, column: 20, scope: !734)
!742 = !DILocation(line: 101, column: 26, scope: !734)
!743 = !DILocation(line: 101, column: 5, scope: !734)
!744 = !DILocation(line: 104, column: 22, scope: !734)
!745 = !DILocation(line: 104, column: 28, scope: !734)
!746 = !DILocation(line: 104, column: 33, scope: !734)
!747 = !DILocation(line: 104, column: 40, scope: !734)
!748 = !DILocation(line: 104, column: 46, scope: !734)
!749 = !DILocation(line: 105, column: 50, scope: !734)
!750 = !DILocation(line: 104, column: 5, scope: !734)
!751 = !DILocation(line: 106, column: 1, scope: !734)
!752 = distinct !DISubprogram(name: "nn_sinproc_accept", scope: !133, file: !133, line: 108, type: !753, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !5, !5}
!755 = !DILocalVariable(name: "self", arg: 1, scope: !752, file: !133, line: 108, type: !5)
!756 = !DILocation(line: 108, column: 44, scope: !752)
!757 = !DILocalVariable(name: "peer", arg: 2, scope: !752, file: !133, line: 108, type: !5)
!758 = !DILocation(line: 108, column: 69, scope: !752)
!759 = !DILocation(line: 110, column: 5, scope: !752)
!760 = !DILocation(line: 110, column: 5, scope: !761)
!761 = distinct !DILexicalBlock(scope: !762, file: !133, line: 110, column: 5)
!762 = distinct !DILexicalBlock(scope: !752, file: !133, line: 110, column: 5)
!763 = !DILocation(line: 110, column: 5, scope: !762)
!764 = !DILocation(line: 110, column: 5, scope: !765)
!765 = distinct !DILexicalBlock(scope: !761, file: !133, line: 110, column: 5)
!766 = !DILocation(line: 111, column: 18, scope: !752)
!767 = !DILocation(line: 111, column: 5, scope: !752)
!768 = !DILocation(line: 111, column: 11, scope: !752)
!769 = !DILocation(line: 111, column: 16, scope: !752)
!770 = !DILocation(line: 114, column: 22, scope: !752)
!771 = !DILocation(line: 114, column: 28, scope: !752)
!772 = !DILocation(line: 114, column: 34, scope: !752)
!773 = !DILocation(line: 114, column: 40, scope: !752)
!774 = !DILocation(line: 114, column: 46, scope: !752)
!775 = !DILocation(line: 114, column: 52, scope: !752)
!776 = !DILocation(line: 115, column: 51, scope: !752)
!777 = !DILocation(line: 114, column: 5, scope: !752)
!778 = !DILocation(line: 118, column: 20, scope: !752)
!779 = !DILocation(line: 118, column: 26, scope: !752)
!780 = !DILocation(line: 118, column: 5, scope: !752)
!781 = !DILocation(line: 119, column: 21, scope: !752)
!782 = !DILocation(line: 119, column: 27, scope: !752)
!783 = !DILocation(line: 119, column: 5, scope: !752)
!784 = !DILocation(line: 120, column: 1, scope: !752)
!785 = distinct !DISubprogram(name: "nn_sinproc_stop", scope: !133, file: !133, line: 122, type: !693, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !201)
!786 = !DILocalVariable(name: "self", arg: 1, scope: !785, file: !133, line: 122, type: !5)
!787 = !DILocation(line: 122, column: 42, scope: !785)
!788 = !DILocation(line: 124, column: 19, scope: !785)
!789 = !DILocation(line: 124, column: 25, scope: !785)
!790 = !DILocation(line: 124, column: 5, scope: !785)
!791 = !DILocation(line: 125, column: 1, scope: !785)
