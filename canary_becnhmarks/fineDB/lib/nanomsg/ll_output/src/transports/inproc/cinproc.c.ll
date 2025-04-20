; ModuleID = './src/transports/inproc/cinproc.c'
source_filename = "./src/transports/inproc/cinproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_cinproc = type { %struct.nn_fsm, i32, %struct.nn_ins_item, %struct.nn_sinproc }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_ins_item = type { %struct.nn_epbase, %struct.nn_list_item, i32, i32 }
%struct.nn_epbase = type { ptr, ptr }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sinproc = type { %struct.nn_fsm, i32, i32, ptr, %struct.nn_pipebase, %struct.nn_msgqueue, %struct.nn_msg, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msgqueue = type { %struct.anon, %struct.anon.0, i64, i64, i64, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_binproc = type { %struct.nn_fsm, i32, %struct.nn_ins_item, %struct.nn_list }
%struct.nn_list = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"./src/transports/inproc/cinproc.c\00", align 1, !dbg !7
@nn_cinproc_vfptr = internal constant %struct.nn_epbase_vfptr { ptr @nn_cinproc_stop, ptr @nn_cinproc_destroy }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !185
@.str.3 = private unnamed_addr constant [48 x i8] c"cinproc->state == NN_CINPROC_STATE_DISCONNECTED\00", align 1, !dbg !190
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !195

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_cinproc_create(ptr noundef %0, ptr noundef %1) #0 !dbg !208 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !213, metadata !DIExpression()), !dbg !214
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata ptr %5, metadata !217, metadata !DIExpression()), !dbg !218
  %6 = call ptr @nn_alloc_(i64 noundef 720), !dbg !219
  store ptr %6, ptr %5, align 8, !dbg !220
  br label %7, !dbg !221

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !dbg !222
  %9 = icmp ne ptr %8, null, !dbg !222
  %10 = xor i1 %9, true, !dbg !222
  %11 = zext i1 %10 to i32, !dbg !222
  %12 = sext i32 %11 to i64, !dbg !222
  %13 = icmp ne i64 %12, 0, !dbg !222
  br i1 %13, label %14, label %17, !dbg !225

14:                                               ; preds = %7
  %15 = load ptr, ptr @stderr, align 8, !dbg !226
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %15, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 62), !dbg !226
  call void @nn_err_abort() #4, !dbg !226
  unreachable, !dbg !226

17:                                               ; preds = %7
  br label %18, !dbg !225

18:                                               ; preds = %17
  %19 = load ptr, ptr %5, align 8, !dbg !228
  %20 = getelementptr inbounds %struct.nn_cinproc, ptr %19, i32 0, i32 2, !dbg !229
  %21 = load ptr, ptr %3, align 8, !dbg !230
  call void @nn_ins_item_init(ptr noundef %20, ptr noundef @nn_cinproc_vfptr, ptr noundef %21), !dbg !231
  %22 = load ptr, ptr %5, align 8, !dbg !232
  %23 = getelementptr inbounds %struct.nn_cinproc, ptr %22, i32 0, i32 0, !dbg !233
  %24 = load ptr, ptr %5, align 8, !dbg !234
  %25 = getelementptr inbounds %struct.nn_cinproc, ptr %24, i32 0, i32 2, !dbg !235
  %26 = getelementptr inbounds %struct.nn_ins_item, ptr %25, i32 0, i32 0, !dbg !236
  %27 = call ptr @nn_epbase_getctx(ptr noundef %26), !dbg !237
  call void @nn_fsm_init_root(ptr noundef %23, ptr noundef @nn_cinproc_handler, ptr noundef %27), !dbg !238
  %28 = load ptr, ptr %5, align 8, !dbg !239
  %29 = getelementptr inbounds %struct.nn_cinproc, ptr %28, i32 0, i32 1, !dbg !240
  store i32 1, ptr %29, align 8, !dbg !241
  %30 = load ptr, ptr %5, align 8, !dbg !242
  %31 = getelementptr inbounds %struct.nn_cinproc, ptr %30, i32 0, i32 3, !dbg !243
  %32 = load ptr, ptr %5, align 8, !dbg !244
  %33 = getelementptr inbounds %struct.nn_cinproc, ptr %32, i32 0, i32 2, !dbg !245
  %34 = getelementptr inbounds %struct.nn_ins_item, ptr %33, i32 0, i32 0, !dbg !246
  %35 = load ptr, ptr %5, align 8, !dbg !247
  %36 = getelementptr inbounds %struct.nn_cinproc, ptr %35, i32 0, i32 0, !dbg !248
  call void @nn_sinproc_init(ptr noundef %31, i32 noundef 1, ptr noundef %34, ptr noundef %36), !dbg !249
  %37 = load ptr, ptr %5, align 8, !dbg !250
  %38 = getelementptr inbounds %struct.nn_cinproc, ptr %37, i32 0, i32 0, !dbg !251
  call void @nn_fsm_start(ptr noundef %38), !dbg !252
  %39 = load ptr, ptr %5, align 8, !dbg !253
  %40 = getelementptr inbounds %struct.nn_cinproc, ptr %39, i32 0, i32 2, !dbg !254
  call void @nn_ins_connect(ptr noundef %40, ptr noundef @nn_cinproc_connect), !dbg !255
  %41 = load ptr, ptr %5, align 8, !dbg !256
  %42 = getelementptr inbounds %struct.nn_cinproc, ptr %41, i32 0, i32 2, !dbg !257
  %43 = getelementptr inbounds %struct.nn_ins_item, ptr %42, i32 0, i32 0, !dbg !258
  %44 = load ptr, ptr %4, align 8, !dbg !259
  store ptr %43, ptr %44, align 8, !dbg !260
  ret i32 0, !dbg !261
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_ins_item_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cinproc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !262 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !263, metadata !DIExpression()), !dbg !264
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !265, metadata !DIExpression()), !dbg !266
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !267, metadata !DIExpression()), !dbg !268
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !269, metadata !DIExpression()), !dbg !270
  call void @llvm.dbg.declare(metadata ptr %9, metadata !271, metadata !DIExpression()), !dbg !272
  call void @llvm.dbg.declare(metadata ptr %10, metadata !273, metadata !DIExpression()), !dbg !274
  %11 = load ptr, ptr %5, align 8, !dbg !275
  %12 = icmp ne ptr %11, null, !dbg !275
  br i1 %12, label %13, label %16, !dbg !275

13:                                               ; preds = %4
  %14 = load ptr, ptr %5, align 8, !dbg !275
  %15 = getelementptr inbounds i8, ptr %14, i64 0, !dbg !275
  br label %17, !dbg !275

16:                                               ; preds = %4
  br label %17, !dbg !275

17:                                               ; preds = %16, %13
  %18 = phi ptr [ %15, %13 ], [ null, %16 ], !dbg !275
  store ptr %18, ptr %9, align 8, !dbg !276
  %19 = load i32, ptr %6, align 4, !dbg !277
  %20 = icmp eq i32 %19, -2, !dbg !277
  br i1 %20, label %21, label %24, !dbg !277

21:                                               ; preds = %17
  %22 = load i32, ptr %7, align 4, !dbg !277
  %23 = icmp eq i32 %22, -3, !dbg !277
  br label %24

24:                                               ; preds = %21, %17
  %25 = phi i1 [ false, %17 ], [ %23, %21 ], !dbg !279
  %26 = zext i1 %25 to i32, !dbg !277
  %27 = sext i32 %26 to i64, !dbg !277
  %28 = icmp ne i64 %27, 0, !dbg !277
  br i1 %28, label %29, label %36, !dbg !280

29:                                               ; preds = %24
  %30 = load ptr, ptr %9, align 8, !dbg !281
  %31 = getelementptr inbounds %struct.nn_cinproc, ptr %30, i32 0, i32 2, !dbg !283
  call void @nn_ins_disconnect(ptr noundef %31), !dbg !284
  %32 = load ptr, ptr %9, align 8, !dbg !285
  %33 = getelementptr inbounds %struct.nn_cinproc, ptr %32, i32 0, i32 3, !dbg !286
  call void @nn_sinproc_stop(ptr noundef %33), !dbg !287
  %34 = load ptr, ptr %9, align 8, !dbg !288
  %35 = getelementptr inbounds %struct.nn_cinproc, ptr %34, i32 0, i32 1, !dbg !289
  store i32 4, ptr %35, align 8, !dbg !290
  br label %36, !dbg !291

36:                                               ; preds = %29, %24
  %37 = load ptr, ptr %9, align 8, !dbg !292
  %38 = getelementptr inbounds %struct.nn_cinproc, ptr %37, i32 0, i32 1, !dbg !292
  %39 = load i32, ptr %38, align 8, !dbg !292
  %40 = icmp eq i32 %39, 4, !dbg !292
  %41 = zext i1 %40 to i32, !dbg !292
  %42 = sext i32 %41 to i64, !dbg !292
  %43 = icmp ne i64 %42, 0, !dbg !292
  br i1 %43, label %44, label %58, !dbg !294

44:                                               ; preds = %36
  %45 = load ptr, ptr %9, align 8, !dbg !295
  %46 = getelementptr inbounds %struct.nn_cinproc, ptr %45, i32 0, i32 3, !dbg !298
  %47 = call i32 @nn_sinproc_isidle(ptr noundef %46), !dbg !299
  %48 = icmp ne i32 %47, 0, !dbg !299
  br i1 %48, label %50, label %49, !dbg !300

49:                                               ; preds = %44
  br label %125, !dbg !301

50:                                               ; preds = %44
  %51 = load ptr, ptr %9, align 8, !dbg !302
  %52 = getelementptr inbounds %struct.nn_cinproc, ptr %51, i32 0, i32 1, !dbg !303
  store i32 1, ptr %52, align 8, !dbg !304
  %53 = load ptr, ptr %9, align 8, !dbg !305
  %54 = getelementptr inbounds %struct.nn_cinproc, ptr %53, i32 0, i32 0, !dbg !306
  call void @nn_fsm_stopped_noevent(ptr noundef %54), !dbg !307
  %55 = load ptr, ptr %9, align 8, !dbg !308
  %56 = getelementptr inbounds %struct.nn_cinproc, ptr %55, i32 0, i32 2, !dbg !309
  %57 = getelementptr inbounds %struct.nn_ins_item, ptr %56, i32 0, i32 0, !dbg !310
  call void @nn_epbase_stopped(ptr noundef %57), !dbg !311
  br label %125, !dbg !312

58:                                               ; preds = %36
  %59 = load ptr, ptr %9, align 8, !dbg !313
  %60 = getelementptr inbounds %struct.nn_cinproc, ptr %59, i32 0, i32 1, !dbg !314
  %61 = load i32, ptr %60, align 8, !dbg !314
  switch i32 %61, label %120 [
    i32 1, label %62
    i32 2, label %81
    i32 3, label %115
  ], !dbg !315

62:                                               ; preds = %58
  %63 = load i32, ptr %6, align 4, !dbg !316
  switch i32 %63, label %75 [
    i32 -2, label %64
  ], !dbg !318

64:                                               ; preds = %62
  %65 = load i32, ptr %7, align 4, !dbg !319
  switch i32 %65, label %69 [
    i32 -2, label %66
  ], !dbg !321

66:                                               ; preds = %64
  %67 = load ptr, ptr %9, align 8, !dbg !322
  %68 = getelementptr inbounds %struct.nn_cinproc, ptr %67, i32 0, i32 1, !dbg !324
  store i32 2, ptr %68, align 8, !dbg !325
  br label %125, !dbg !326

69:                                               ; preds = %64
  br label %70, !dbg !327

70:                                               ; preds = %69
  %71 = load ptr, ptr @stderr, align 8, !dbg !328
  %72 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %71, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 161), !dbg !328
  call void @nn_err_abort() #4, !dbg !328
  unreachable, !dbg !328

73:                                               ; No predecessors!
  br label %74, !dbg !332

74:                                               ; preds = %73
  br label %75, !dbg !332

75:                                               ; preds = %62, %74
  br label %76, !dbg !333

76:                                               ; preds = %75
  %77 = load ptr, ptr @stderr, align 8, !dbg !334
  %78 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %77, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 165), !dbg !334
  call void @nn_err_abort() #4, !dbg !334
  unreachable, !dbg !334

79:                                               ; No predecessors!
  br label %80, !dbg !338

80:                                               ; preds = %79
  br label %81, !dbg !338

81:                                               ; preds = %58, %80
  %82 = load i32, ptr %6, align 4, !dbg !339
  switch i32 %82, label %109 [
    i32 -2, label %83
    i32 27713, label %94
  ], !dbg !340

83:                                               ; preds = %81
  %84 = load i32, ptr %7, align 4, !dbg !341
  switch i32 %84, label %88 [
    i32 1, label %85
  ], !dbg !343

85:                                               ; preds = %83
  %86 = load ptr, ptr %9, align 8, !dbg !344
  %87 = getelementptr inbounds %struct.nn_cinproc, ptr %86, i32 0, i32 1, !dbg !346
  store i32 3, ptr %87, align 8, !dbg !347
  br label %125, !dbg !348

88:                                               ; preds = %83
  br label %89, !dbg !349

89:                                               ; preds = %88
  %90 = load ptr, ptr @stderr, align 8, !dbg !350
  %91 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %90, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 180), !dbg !350
  call void @nn_err_abort() #4, !dbg !350
  unreachable, !dbg !350

92:                                               ; No predecessors!
  br label %93, !dbg !354

93:                                               ; preds = %92
  br label %94, !dbg !354

94:                                               ; preds = %81, %93
  %95 = load ptr, ptr %8, align 8, !dbg !355
  store ptr %95, ptr %10, align 8, !dbg !356
  %96 = load i32, ptr %7, align 4, !dbg !357
  switch i32 %96, label %103 [
    i32 1, label %97
  ], !dbg !358

97:                                               ; preds = %94
  %98 = load ptr, ptr %9, align 8, !dbg !359
  %99 = getelementptr inbounds %struct.nn_cinproc, ptr %98, i32 0, i32 3, !dbg !361
  %100 = load ptr, ptr %10, align 8, !dbg !362
  call void @nn_sinproc_accept(ptr noundef %99, ptr noundef %100), !dbg !363
  %101 = load ptr, ptr %9, align 8, !dbg !364
  %102 = getelementptr inbounds %struct.nn_cinproc, ptr %101, i32 0, i32 1, !dbg !365
  store i32 3, ptr %102, align 8, !dbg !366
  br label %125, !dbg !367

103:                                              ; preds = %94
  br label %104, !dbg !368

104:                                              ; preds = %103
  %105 = load ptr, ptr @stderr, align 8, !dbg !369
  %106 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %105, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 191), !dbg !369
  call void @nn_err_abort() #4, !dbg !369
  unreachable, !dbg !369

107:                                              ; No predecessors!
  br label %108, !dbg !373

108:                                              ; preds = %107
  br label %109, !dbg !373

109:                                              ; preds = %81, %108
  br label %110, !dbg !374

110:                                              ; preds = %109
  %111 = load ptr, ptr @stderr, align 8, !dbg !375
  %112 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %111, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 195), !dbg !375
  call void @nn_err_abort() #4, !dbg !375
  unreachable, !dbg !375

113:                                              ; No predecessors!
  br label %114, !dbg !379

114:                                              ; preds = %113
  br label %115, !dbg !379

115:                                              ; preds = %58, %114
  br label %116, !dbg !380

116:                                              ; preds = %115
  %117 = load ptr, ptr @stderr, align 8, !dbg !381
  %118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %117, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 202), !dbg !381
  call void @nn_err_abort() #4, !dbg !381
  unreachable, !dbg !381

119:                                              ; No predecessors!
  br label %120, !dbg !385

120:                                              ; preds = %58, %119
  br label %121, !dbg !386

121:                                              ; preds = %120
  %122 = load ptr, ptr @stderr, align 8, !dbg !387
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 208), !dbg !387
  call void @nn_err_abort() #4, !dbg !387
  unreachable, !dbg !387

124:                                              ; No predecessors!
  br label %125, !dbg !391

125:                                              ; preds = %49, %50, %66, %85, %97, %124
  ret void, !dbg !392
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_sinproc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_ins_connect(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cinproc_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !393 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !397, metadata !DIExpression()), !dbg !398
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !399, metadata !DIExpression()), !dbg !400
  call void @llvm.dbg.declare(metadata ptr %5, metadata !401, metadata !DIExpression()), !dbg !402
  call void @llvm.dbg.declare(metadata ptr %6, metadata !403, metadata !DIExpression()), !dbg !404
  %7 = load ptr, ptr %3, align 8, !dbg !405
  %8 = icmp ne ptr %7, null, !dbg !405
  br i1 %8, label %9, label %12, !dbg !405

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !dbg !405
  %11 = getelementptr inbounds i8, ptr %10, i64 -88, !dbg !405
  br label %13, !dbg !405

12:                                               ; preds = %2
  br label %13, !dbg !405

13:                                               ; preds = %12, %9
  %14 = phi ptr [ %11, %9 ], [ null, %12 ], !dbg !405
  store ptr %14, ptr %5, align 8, !dbg !406
  %15 = load ptr, ptr %4, align 8, !dbg !407
  %16 = icmp ne ptr %15, null, !dbg !407
  br i1 %16, label %17, label %20, !dbg !407

17:                                               ; preds = %13
  %18 = load ptr, ptr %4, align 8, !dbg !407
  %19 = getelementptr inbounds i8, ptr %18, i64 -88, !dbg !407
  br label %21, !dbg !407

20:                                               ; preds = %13
  br label %21, !dbg !407

21:                                               ; preds = %20, %17
  %22 = phi ptr [ %19, %17 ], [ null, %20 ], !dbg !407
  store ptr %22, ptr %6, align 8, !dbg !408
  br label %23, !dbg !409

23:                                               ; preds = %21
  %24 = load ptr, ptr %5, align 8, !dbg !410
  %25 = getelementptr inbounds %struct.nn_cinproc, ptr %24, i32 0, i32 1, !dbg !410
  %26 = load i32, ptr %25, align 8, !dbg !410
  %27 = icmp eq i32 %26, 2, !dbg !410
  %28 = xor i1 %27, true, !dbg !410
  %29 = zext i1 %28 to i32, !dbg !410
  %30 = sext i32 %29 to i64, !dbg !410
  %31 = icmp ne i64 %30, 0, !dbg !410
  br i1 %31, label %32, label %35, !dbg !413

32:                                               ; preds = %23
  %33 = load ptr, ptr @stderr, align 8, !dbg !414
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %33, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 112), !dbg !414
  call void @nn_err_abort() #4, !dbg !414
  unreachable, !dbg !414

35:                                               ; preds = %23
  br label %36, !dbg !413

36:                                               ; preds = %35
  %37 = load ptr, ptr %5, align 8, !dbg !416
  %38 = getelementptr inbounds %struct.nn_cinproc, ptr %37, i32 0, i32 3, !dbg !417
  %39 = load ptr, ptr %6, align 8, !dbg !418
  %40 = getelementptr inbounds %struct.nn_binproc, ptr %39, i32 0, i32 0, !dbg !419
  call void @nn_sinproc_connect(ptr noundef %38, ptr noundef %40), !dbg !420
  %41 = load ptr, ptr %5, align 8, !dbg !421
  %42 = getelementptr inbounds %struct.nn_cinproc, ptr %41, i32 0, i32 0, !dbg !422
  call void @nn_fsm_action(ptr noundef %42, i32 noundef 1), !dbg !423
  ret void, !dbg !424
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cinproc_stop(ptr noundef %0) #0 !dbg !425 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !426, metadata !DIExpression()), !dbg !427
  call void @llvm.dbg.declare(metadata ptr %3, metadata !428, metadata !DIExpression()), !dbg !429
  %4 = load ptr, ptr %2, align 8, !dbg !430
  %5 = icmp ne ptr %4, null, !dbg !430
  br i1 %5, label %6, label %9, !dbg !430

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !430
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !430
  br label %10, !dbg !430

9:                                                ; preds = %1
  br label %10, !dbg !430

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !430
  store ptr %11, ptr %3, align 8, !dbg !431
  %12 = load ptr, ptr %3, align 8, !dbg !432
  %13 = getelementptr inbounds %struct.nn_cinproc, ptr %12, i32 0, i32 0, !dbg !433
  call void @nn_fsm_stop(ptr noundef %13), !dbg !434
  ret void, !dbg !435
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_cinproc_destroy(ptr noundef %0) #0 !dbg !436 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !437, metadata !DIExpression()), !dbg !438
  call void @llvm.dbg.declare(metadata ptr %3, metadata !439, metadata !DIExpression()), !dbg !440
  %4 = load ptr, ptr %2, align 8, !dbg !441
  %5 = icmp ne ptr %4, null, !dbg !441
  br i1 %5, label %6, label %9, !dbg !441

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !441
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !441
  br label %10, !dbg !441

9:                                                ; preds = %1
  br label %10, !dbg !441

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !441
  store ptr %11, ptr %3, align 8, !dbg !442
  %12 = load ptr, ptr %3, align 8, !dbg !443
  %13 = getelementptr inbounds %struct.nn_cinproc, ptr %12, i32 0, i32 3, !dbg !444
  call void @nn_sinproc_term(ptr noundef %13), !dbg !445
  %14 = load ptr, ptr %3, align 8, !dbg !446
  %15 = getelementptr inbounds %struct.nn_cinproc, ptr %14, i32 0, i32 0, !dbg !447
  call void @nn_fsm_term(ptr noundef %15), !dbg !448
  %16 = load ptr, ptr %3, align 8, !dbg !449
  %17 = getelementptr inbounds %struct.nn_cinproc, ptr %16, i32 0, i32 2, !dbg !450
  call void @nn_ins_item_term(ptr noundef %17), !dbg !451
  %18 = load ptr, ptr %3, align 8, !dbg !452
  call void @nn_free(ptr noundef %18), !dbg !453
  ret void, !dbg !454
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_sinproc_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_ins_item_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_sinproc_connect(ptr noundef, ptr noundef) #2

declare void @nn_fsm_action(ptr noundef, i32 noundef) #2

declare void @nn_ins_disconnect(ptr noundef) #2

declare void @nn_sinproc_stop(ptr noundef) #2

declare i32 @nn_sinproc_isidle(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_epbase_stopped(ptr noundef) #2

declare void @nn_sinproc_accept(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!200, !201, !202, !203, !204, !205, !206}
!llvm.ident = !{!207}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/inproc/cinproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "67297b46b10f769654b48e7efb644598")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 62, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_cinproc_vfptr", scope: !14, file: !2, line: 46, type: !64, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !184, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/transports/inproc/cinproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "67297b46b10f769654b48e7efb644598")
!16 = !{!17, !171, !172, !93}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_cinproc", file: !19, line: 33, size: 5760, elements: !20)
!19 = !DIFile(filename: "./src/transports/inproc/cinproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "10e72d97be488bf3eea45ef94cfbac78")
!20 = !{!21, !53, !54, !85}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !18, file: !19, line: 36, baseType: !22, size: 640)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !23, line: 66, size: 640, elements: !24)
!23 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!24 = !{!25, !33, !34, !35, !36, !37, !40}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !22, file: !23, line: 67, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !23, line: 58, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !31, !31, !32}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !22, file: !23, line: 68, baseType: !31, size: 32, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !22, file: !23, line: 69, baseType: !31, size: 32, offset: 96)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !22, file: !23, line: 70, baseType: !32, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !22, file: !23, line: 71, baseType: !30, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !22, file: !23, line: 72, baseType: !38, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !23, line: 30, flags: DIFlagFwdDecl)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !22, file: !23, line: 73, baseType: !41, size: 320, offset: 320)
!41 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !23, line: 34, size: 320, elements: !42)
!42 = !{!43, !44, !45, !46, !47}
!43 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !41, file: !23, line: 35, baseType: !30, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !41, file: !23, line: 36, baseType: !31, size: 32, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !41, file: !23, line: 37, baseType: !32, size: 64, offset: 128)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !41, file: !23, line: 38, baseType: !31, size: 32, offset: 192)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !41, file: !23, line: 39, baseType: !48, size: 64, offset: 256)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !49, line: 33, size: 64, elements: !50)
!49 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!50 = !{!51}
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !48, file: !49, line: 34, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !18, file: !19, line: 37, baseType: !31, size: 32, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !18, file: !19, line: 40, baseType: !55, size: 320, offset: 704)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ins_item", file: !56, line: 32, size: 320, elements: !57)
!56 = !DIFile(filename: "./src/transports/inproc/ins.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "9cbc2b057431ba3dad53f44debf178b0")
!57 = !{!58, !76, !83, !84}
!58 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !55, file: !56, line: 35, baseType: !59, size: 128)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !60, line: 81, size: 128, elements: !61)
!60 = !DIFile(filename: "./src/transports/inproc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!61 = !{!62, !73}
!62 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !59, file: !60, line: 82, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !60, line: 70, size: 128, elements: !66)
!66 = !{!67, !72}
!67 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !65, file: !60, line: 75, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71}
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !65, file: !60, line: 78, baseType: !68, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !59, file: !60, line: 83, baseType: !74, size: 64, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !60, line: 83, flags: DIFlagFwdDecl)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !55, file: !56, line: 38, baseType: !77, size: 128, offset: 128)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !78, line: 26, size: 128, elements: !79)
!78 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!79 = !{!80, !82}
!80 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !77, file: !78, line: 27, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !77, file: !78, line: 28, baseType: !81, size: 64, offset: 64)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !55, file: !56, line: 42, baseType: !31, size: 32, offset: 256)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "connects", scope: !55, file: !56, line: 46, baseType: !31, size: 32, offset: 288)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sinproc", scope: !18, file: !19, line: 43, baseType: !86, size: 4736, offset: 1024)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sinproc", file: !87, line: 46, size: 4736, elements: !88)
!87 = !DIFile(filename: "./src/transports/inproc/sinproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c50de9684b7e0fabb9c8960363a59da6")
!88 = !{!89, !90, !91, !92, !94, !136, !165, !166, !167, !168, !169, !170}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !86, file: !87, line: 49, baseType: !22, size: 640)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !86, file: !87, line: 50, baseType: !31, size: 32, offset: 640)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !86, file: !87, line: 53, baseType: !31, size: 32, offset: 672)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !86, file: !87, line: 56, baseType: !93, size: 64, offset: 704)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !86, file: !87, line: 59, baseType: !95, size: 1536, offset: 768)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !60, line: 147, size: 1536, elements: !96)
!96 = !{!97, !98, !127, !128, !129, !130, !133, !134, !135}
!97 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !95, file: !60, line: 148, baseType: !22, size: 640)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !95, file: !60, line: 149, baseType: !99, size: 64, offset: 640)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !60, line: 134, size: 128, elements: !102)
!102 = !{!103, !126}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !101, file: !60, line: 138, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DISubroutineType(types: !106)
!106 = !{!31, !107, !108}
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !110, line: 30, size: 512, elements: !111)
!110 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!111 = !{!112, !125}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !109, file: !110, line: 33, baseType: !113, size: 256)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !114, line: 39, size: 256, elements: !115)
!114 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !113, file: !114, line: 40, baseType: !117, size: 256)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !123)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !119, line: 24, baseType: !120)
!119 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !121, line: 38, baseType: !122)
!121 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!122 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!123 = !{!124}
!124 = !DISubrange(count: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !109, file: !110, line: 36, baseType: !113, size: 256, offset: 256)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !101, file: !60, line: 142, baseType: !104, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !95, file: !60, line: 150, baseType: !118, size: 8, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !95, file: !60, line: 151, baseType: !118, size: 8, offset: 712)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !95, file: !60, line: 152, baseType: !118, size: 8, offset: 720)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !95, file: !60, line: 153, baseType: !131, size: 64, offset: 768)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !60, line: 39, flags: DIFlagFwdDecl)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !95, file: !60, line: 154, baseType: !32, size: 64, offset: 832)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !95, file: !60, line: 155, baseType: !41, size: 320, offset: 896)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !95, file: !60, line: 156, baseType: !41, size: 320, offset: 1216)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "msgqueue", scope: !86, file: !87, line: 63, baseType: !137, size: 512, offset: 2304)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue", file: !138, line: 40, size: 512, elements: !139)
!138 = !DIFile(filename: "./src/transports/inproc/msgqueue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03057ddde493a8150c86b1bc38c7f2a4")
!139 = !{!140, !153, !158, !162, !163, !164}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !137, file: !138, line: 47, baseType: !141, size: 128)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !138, line: 44, size: 128, elements: !142)
!142 = !{!143, !152}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !141, file: !138, line: 45, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue_chunk", file: !138, line: 35, size: 64576, elements: !146)
!146 = !{!147, !151}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "msgs", scope: !145, file: !138, line: 36, baseType: !148, size: 64512)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 64512, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 126)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !145, file: !138, line: 37, baseType: !144, size: 64, offset: 64512)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !141, file: !138, line: 46, baseType: !31, size: 32, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !137, file: !138, line: 53, baseType: !154, size: 128, offset: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !137, file: !138, line: 50, size: 128, elements: !155)
!155 = !{!156, !157}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !154, file: !138, line: 51, baseType: !144, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !154, file: !138, line: 52, baseType: !31, size: 32, offset: 64)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !137, file: !138, line: 56, baseType: !159, size: 64, offset: 256)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !160, line: 46, baseType: !161)
!160 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!161 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !137, file: !138, line: 59, baseType: !159, size: 64, offset: 320)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "maxmem", scope: !137, file: !138, line: 62, baseType: !159, size: 64, offset: 384)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !137, file: !138, line: 66, baseType: !144, size: 64, offset: 448)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !86, file: !87, line: 68, baseType: !109, size: 512, offset: 2816)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "event_connect", scope: !86, file: !87, line: 71, baseType: !41, size: 320, offset: 3328)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !86, file: !87, line: 74, baseType: !41, size: 320, offset: 3648)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !86, file: !87, line: 75, baseType: !41, size: 320, offset: 3968)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "event_disconnect", scope: !86, file: !87, line: 76, baseType: !41, size: 320, offset: 4288)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !86, file: !87, line: 80, baseType: !77, size: 128, offset: 4608)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_binproc", file: !174, line: 36, size: 1152, elements: !175)
!174 = !DIFile(filename: "./src/transports/inproc/binproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "219357ea033ab2138672247e5529c0ef")
!175 = !{!176, !177, !178, !179}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !173, file: !174, line: 39, baseType: !22, size: 640)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !173, file: !174, line: 40, baseType: !31, size: 32, offset: 640)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !173, file: !174, line: 43, baseType: !55, size: 320, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "sinprocs", scope: !173, file: !174, line: 46, baseType: !180, size: 128, offset: 1024)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !78, line: 31, size: 128, elements: !181)
!181 = !{!182, !183}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !180, file: !78, line: 32, baseType: !81, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !180, file: !78, line: 33, baseType: !81, size: 64, offset: 64)
!184 = !{!0, !7, !12, !185, !190, !195}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 30)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 112, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 384, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 48)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 161, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 2)
!200 = !{i32 7, !"Dwarf Version", i32 5}
!201 = !{i32 2, !"Debug Info Version", i32 3}
!202 = !{i32 1, !"wchar_size", i32 4}
!203 = !{i32 8, !"PIC Level", i32 2}
!204 = !{i32 7, !"PIE Level", i32 2}
!205 = !{i32 7, !"uwtable", i32 2}
!206 = !{i32 7, !"frame-pointer", i32 2}
!207 = !{!"clang version 16.0.0"}
!208 = distinct !DISubprogram(name: "nn_cinproc_create", scope: !2, file: !2, line: 57, type: !209, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !212)
!209 = !DISubroutineType(types: !210)
!210 = !{!31, !32, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!212 = !{}
!213 = !DILocalVariable(name: "hint", arg: 1, scope: !208, file: !2, line: 57, type: !32)
!214 = !DILocation(line: 57, column: 30, scope: !208)
!215 = !DILocalVariable(name: "epbase", arg: 2, scope: !208, file: !2, line: 57, type: !211)
!216 = !DILocation(line: 57, column: 55, scope: !208)
!217 = !DILocalVariable(name: "self", scope: !208, file: !2, line: 59, type: !17)
!218 = !DILocation(line: 59, column: 24, scope: !208)
!219 = !DILocation(line: 61, column: 12, scope: !208)
!220 = !DILocation(line: 61, column: 10, scope: !208)
!221 = !DILocation(line: 62, column: 5, scope: !208)
!222 = !DILocation(line: 62, column: 5, scope: !223)
!223 = distinct !DILexicalBlock(scope: !224, file: !2, line: 62, column: 5)
!224 = distinct !DILexicalBlock(scope: !208, file: !2, line: 62, column: 5)
!225 = !DILocation(line: 62, column: 5, scope: !224)
!226 = !DILocation(line: 62, column: 5, scope: !227)
!227 = distinct !DILexicalBlock(scope: !223, file: !2, line: 62, column: 5)
!228 = !DILocation(line: 64, column: 24, scope: !208)
!229 = !DILocation(line: 64, column: 30, scope: !208)
!230 = !DILocation(line: 64, column: 55, scope: !208)
!231 = !DILocation(line: 64, column: 5, scope: !208)
!232 = !DILocation(line: 65, column: 24, scope: !208)
!233 = !DILocation(line: 65, column: 30, scope: !208)
!234 = !DILocation(line: 66, column: 28, scope: !208)
!235 = !DILocation(line: 66, column: 34, scope: !208)
!236 = !DILocation(line: 66, column: 39, scope: !208)
!237 = !DILocation(line: 66, column: 9, scope: !208)
!238 = !DILocation(line: 65, column: 5, scope: !208)
!239 = !DILocation(line: 67, column: 5, scope: !208)
!240 = !DILocation(line: 67, column: 11, scope: !208)
!241 = !DILocation(line: 67, column: 17, scope: !208)
!242 = !DILocation(line: 68, column: 23, scope: !208)
!243 = !DILocation(line: 68, column: 29, scope: !208)
!244 = !DILocation(line: 69, column: 10, scope: !208)
!245 = !DILocation(line: 69, column: 16, scope: !208)
!246 = !DILocation(line: 69, column: 21, scope: !208)
!247 = !DILocation(line: 69, column: 30, scope: !208)
!248 = !DILocation(line: 69, column: 36, scope: !208)
!249 = !DILocation(line: 68, column: 5, scope: !208)
!250 = !DILocation(line: 72, column: 20, scope: !208)
!251 = !DILocation(line: 72, column: 26, scope: !208)
!252 = !DILocation(line: 72, column: 5, scope: !208)
!253 = !DILocation(line: 75, column: 22, scope: !208)
!254 = !DILocation(line: 75, column: 28, scope: !208)
!255 = !DILocation(line: 75, column: 5, scope: !208)
!256 = !DILocation(line: 77, column: 16, scope: !208)
!257 = !DILocation(line: 77, column: 22, scope: !208)
!258 = !DILocation(line: 77, column: 27, scope: !208)
!259 = !DILocation(line: 77, column: 6, scope: !208)
!260 = !DILocation(line: 77, column: 13, scope: !208)
!261 = !DILocation(line: 78, column: 5, scope: !208)
!262 = distinct !DISubprogram(name: "nn_cinproc_handler", scope: !2, file: !2, line: 117, type: !28, scopeLine: 119, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !212)
!263 = !DILocalVariable(name: "self", arg: 1, scope: !262, file: !2, line: 117, type: !30)
!264 = !DILocation(line: 117, column: 48, scope: !262)
!265 = !DILocalVariable(name: "src", arg: 2, scope: !262, file: !2, line: 117, type: !31)
!266 = !DILocation(line: 117, column: 58, scope: !262)
!267 = !DILocalVariable(name: "type", arg: 3, scope: !262, file: !2, line: 117, type: !31)
!268 = !DILocation(line: 117, column: 67, scope: !262)
!269 = !DILocalVariable(name: "srcptr", arg: 4, scope: !262, file: !2, line: 118, type: !32)
!270 = !DILocation(line: 118, column: 11, scope: !262)
!271 = !DILocalVariable(name: "cinproc", scope: !262, file: !2, line: 120, type: !17)
!272 = !DILocation(line: 120, column: 24, scope: !262)
!273 = !DILocalVariable(name: "sinproc", scope: !262, file: !2, line: 121, type: !93)
!274 = !DILocation(line: 121, column: 24, scope: !262)
!275 = !DILocation(line: 123, column: 15, scope: !262)
!276 = !DILocation(line: 123, column: 13, scope: !262)
!277 = !DILocation(line: 128, column: 9, scope: !278)
!278 = distinct !DILexicalBlock(scope: !262, file: !2, line: 128, column: 9)
!279 = !DILocation(line: 0, scope: !278)
!280 = !DILocation(line: 128, column: 9, scope: !262)
!281 = !DILocation(line: 132, column: 29, scope: !282)
!282 = distinct !DILexicalBlock(scope: !278, file: !2, line: 128, column: 64)
!283 = !DILocation(line: 132, column: 38, scope: !282)
!284 = !DILocation(line: 132, column: 9, scope: !282)
!285 = !DILocation(line: 135, column: 27, scope: !282)
!286 = !DILocation(line: 135, column: 36, scope: !282)
!287 = !DILocation(line: 135, column: 9, scope: !282)
!288 = !DILocation(line: 136, column: 9, scope: !282)
!289 = !DILocation(line: 136, column: 18, scope: !282)
!290 = !DILocation(line: 136, column: 24, scope: !282)
!291 = !DILocation(line: 137, column: 5, scope: !282)
!292 = !DILocation(line: 138, column: 9, scope: !293)
!293 = distinct !DILexicalBlock(scope: !262, file: !2, line: 138, column: 9)
!294 = !DILocation(line: 138, column: 9, scope: !262)
!295 = !DILocation(line: 139, column: 34, scope: !296)
!296 = distinct !DILexicalBlock(scope: !297, file: !2, line: 139, column: 13)
!297 = distinct !DILexicalBlock(scope: !293, file: !2, line: 138, column: 64)
!298 = !DILocation(line: 139, column: 43, scope: !296)
!299 = !DILocation(line: 139, column: 14, scope: !296)
!300 = !DILocation(line: 139, column: 13, scope: !297)
!301 = !DILocation(line: 140, column: 13, scope: !296)
!302 = !DILocation(line: 141, column: 9, scope: !297)
!303 = !DILocation(line: 141, column: 18, scope: !297)
!304 = !DILocation(line: 141, column: 24, scope: !297)
!305 = !DILocation(line: 142, column: 34, scope: !297)
!306 = !DILocation(line: 142, column: 43, scope: !297)
!307 = !DILocation(line: 142, column: 9, scope: !297)
!308 = !DILocation(line: 143, column: 29, scope: !297)
!309 = !DILocation(line: 143, column: 38, scope: !297)
!310 = !DILocation(line: 143, column: 43, scope: !297)
!311 = !DILocation(line: 143, column: 9, scope: !297)
!312 = !DILocation(line: 144, column: 9, scope: !297)
!313 = !DILocation(line: 147, column: 13, scope: !262)
!314 = !DILocation(line: 147, column: 22, scope: !262)
!315 = !DILocation(line: 147, column: 5, scope: !262)
!316 = !DILocation(line: 153, column: 17, scope: !317)
!317 = distinct !DILexicalBlock(scope: !262, file: !2, line: 147, column: 29)
!318 = !DILocation(line: 153, column: 9, scope: !317)
!319 = !DILocation(line: 156, column: 21, scope: !320)
!320 = distinct !DILexicalBlock(scope: !317, file: !2, line: 153, column: 22)
!321 = !DILocation(line: 156, column: 13, scope: !320)
!322 = !DILocation(line: 158, column: 17, scope: !323)
!323 = distinct !DILexicalBlock(scope: !320, file: !2, line: 156, column: 27)
!324 = !DILocation(line: 158, column: 26, scope: !323)
!325 = !DILocation(line: 158, column: 32, scope: !323)
!326 = !DILocation(line: 159, column: 17, scope: !323)
!327 = !DILocation(line: 161, column: 17, scope: !323)
!328 = !DILocation(line: 161, column: 17, scope: !329)
!329 = distinct !DILexicalBlock(scope: !330, file: !2, line: 161, column: 17)
!330 = distinct !DILexicalBlock(scope: !331, file: !2, line: 161, column: 17)
!331 = distinct !DILexicalBlock(scope: !323, file: !2, line: 161, column: 17)
!332 = !DILocation(line: 162, column: 13, scope: !323)
!333 = !DILocation(line: 165, column: 13, scope: !320)
!334 = !DILocation(line: 165, column: 13, scope: !335)
!335 = distinct !DILexicalBlock(scope: !336, file: !2, line: 165, column: 13)
!336 = distinct !DILexicalBlock(scope: !337, file: !2, line: 165, column: 13)
!337 = distinct !DILexicalBlock(scope: !320, file: !2, line: 165, column: 13)
!338 = !DILocation(line: 166, column: 9, scope: !320)
!339 = !DILocation(line: 172, column: 17, scope: !317)
!340 = !DILocation(line: 172, column: 9, scope: !317)
!341 = !DILocation(line: 175, column: 21, scope: !342)
!342 = distinct !DILexicalBlock(scope: !317, file: !2, line: 172, column: 22)
!343 = !DILocation(line: 175, column: 13, scope: !342)
!344 = !DILocation(line: 177, column: 17, scope: !345)
!345 = distinct !DILexicalBlock(scope: !342, file: !2, line: 175, column: 27)
!346 = !DILocation(line: 177, column: 26, scope: !345)
!347 = !DILocation(line: 177, column: 32, scope: !345)
!348 = !DILocation(line: 178, column: 17, scope: !345)
!349 = !DILocation(line: 180, column: 17, scope: !345)
!350 = !DILocation(line: 180, column: 17, scope: !351)
!351 = distinct !DILexicalBlock(scope: !352, file: !2, line: 180, column: 17)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 180, column: 17)
!353 = distinct !DILexicalBlock(scope: !345, file: !2, line: 180, column: 17)
!354 = !DILocation(line: 181, column: 13, scope: !345)
!355 = !DILocation(line: 184, column: 44, scope: !342)
!356 = !DILocation(line: 184, column: 21, scope: !342)
!357 = !DILocation(line: 185, column: 21, scope: !342)
!358 = !DILocation(line: 185, column: 13, scope: !342)
!359 = !DILocation(line: 187, column: 37, scope: !360)
!360 = distinct !DILexicalBlock(scope: !342, file: !2, line: 185, column: 27)
!361 = !DILocation(line: 187, column: 46, scope: !360)
!362 = !DILocation(line: 187, column: 55, scope: !360)
!363 = !DILocation(line: 187, column: 17, scope: !360)
!364 = !DILocation(line: 188, column: 17, scope: !360)
!365 = !DILocation(line: 188, column: 26, scope: !360)
!366 = !DILocation(line: 188, column: 32, scope: !360)
!367 = !DILocation(line: 189, column: 17, scope: !360)
!368 = !DILocation(line: 191, column: 17, scope: !360)
!369 = !DILocation(line: 191, column: 17, scope: !370)
!370 = distinct !DILexicalBlock(scope: !371, file: !2, line: 191, column: 17)
!371 = distinct !DILexicalBlock(scope: !372, file: !2, line: 191, column: 17)
!372 = distinct !DILexicalBlock(scope: !360, file: !2, line: 191, column: 17)
!373 = !DILocation(line: 192, column: 13, scope: !360)
!374 = !DILocation(line: 195, column: 13, scope: !342)
!375 = !DILocation(line: 195, column: 13, scope: !376)
!376 = distinct !DILexicalBlock(scope: !377, file: !2, line: 195, column: 13)
!377 = distinct !DILexicalBlock(scope: !378, file: !2, line: 195, column: 13)
!378 = distinct !DILexicalBlock(scope: !342, file: !2, line: 195, column: 13)
!379 = !DILocation(line: 196, column: 9, scope: !342)
!380 = !DILocation(line: 202, column: 9, scope: !317)
!381 = !DILocation(line: 202, column: 9, scope: !382)
!382 = distinct !DILexicalBlock(scope: !383, file: !2, line: 202, column: 9)
!383 = distinct !DILexicalBlock(scope: !384, file: !2, line: 202, column: 9)
!384 = distinct !DILexicalBlock(scope: !317, file: !2, line: 202, column: 9)
!385 = !DILocation(line: 202, column: 9, scope: !384)
!386 = !DILocation(line: 208, column: 9, scope: !317)
!387 = !DILocation(line: 208, column: 9, scope: !388)
!388 = distinct !DILexicalBlock(scope: !389, file: !2, line: 208, column: 9)
!389 = distinct !DILexicalBlock(scope: !390, file: !2, line: 208, column: 9)
!390 = distinct !DILexicalBlock(scope: !317, file: !2, line: 208, column: 9)
!391 = !DILocation(line: 209, column: 5, scope: !317)
!392 = !DILocation(line: 210, column: 1, scope: !262)
!393 = distinct !DISubprogram(name: "nn_cinproc_connect", scope: !2, file: !2, line: 103, type: !394, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !212)
!394 = !DISubroutineType(types: !395)
!395 = !{null, !396, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!397 = !DILocalVariable(name: "self", arg: 1, scope: !393, file: !2, line: 103, type: !396)
!398 = !DILocation(line: 103, column: 53, scope: !393)
!399 = !DILocalVariable(name: "peer", arg: 2, scope: !393, file: !2, line: 104, type: !396)
!400 = !DILocation(line: 104, column: 25, scope: !393)
!401 = !DILocalVariable(name: "cinproc", scope: !393, file: !2, line: 106, type: !17)
!402 = !DILocation(line: 106, column: 24, scope: !393)
!403 = !DILocalVariable(name: "binproc", scope: !393, file: !2, line: 107, type: !172)
!404 = !DILocation(line: 107, column: 24, scope: !393)
!405 = !DILocation(line: 109, column: 15, scope: !393)
!406 = !DILocation(line: 109, column: 13, scope: !393)
!407 = !DILocation(line: 110, column: 15, scope: !393)
!408 = !DILocation(line: 110, column: 13, scope: !393)
!409 = !DILocation(line: 112, column: 5, scope: !393)
!410 = !DILocation(line: 112, column: 5, scope: !411)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 112, column: 5)
!412 = distinct !DILexicalBlock(scope: !393, file: !2, line: 112, column: 5)
!413 = !DILocation(line: 112, column: 5, scope: !412)
!414 = !DILocation(line: 112, column: 5, scope: !415)
!415 = distinct !DILexicalBlock(scope: !411, file: !2, line: 112, column: 5)
!416 = !DILocation(line: 113, column: 26, scope: !393)
!417 = !DILocation(line: 113, column: 35, scope: !393)
!418 = !DILocation(line: 113, column: 45, scope: !393)
!419 = !DILocation(line: 113, column: 54, scope: !393)
!420 = !DILocation(line: 113, column: 5, scope: !393)
!421 = !DILocation(line: 114, column: 21, scope: !393)
!422 = !DILocation(line: 114, column: 30, scope: !393)
!423 = !DILocation(line: 114, column: 5, scope: !393)
!424 = !DILocation(line: 115, column: 1, scope: !393)
!425 = distinct !DISubprogram(name: "nn_cinproc_stop", scope: !2, file: !2, line: 81, type: !69, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !212)
!426 = !DILocalVariable(name: "self", arg: 1, scope: !425, file: !2, line: 81, type: !71)
!427 = !DILocation(line: 81, column: 48, scope: !425)
!428 = !DILocalVariable(name: "cinproc", scope: !425, file: !2, line: 83, type: !17)
!429 = !DILocation(line: 83, column: 24, scope: !425)
!430 = !DILocation(line: 85, column: 15, scope: !425)
!431 = !DILocation(line: 85, column: 13, scope: !425)
!432 = !DILocation(line: 87, column: 19, scope: !425)
!433 = !DILocation(line: 87, column: 28, scope: !425)
!434 = !DILocation(line: 87, column: 5, scope: !425)
!435 = !DILocation(line: 88, column: 1, scope: !425)
!436 = distinct !DISubprogram(name: "nn_cinproc_destroy", scope: !2, file: !2, line: 90, type: !69, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !212)
!437 = !DILocalVariable(name: "self", arg: 1, scope: !436, file: !2, line: 90, type: !71)
!438 = !DILocation(line: 90, column: 51, scope: !436)
!439 = !DILocalVariable(name: "cinproc", scope: !436, file: !2, line: 92, type: !17)
!440 = !DILocation(line: 92, column: 24, scope: !436)
!441 = !DILocation(line: 94, column: 15, scope: !436)
!442 = !DILocation(line: 94, column: 13, scope: !436)
!443 = !DILocation(line: 96, column: 23, scope: !436)
!444 = !DILocation(line: 96, column: 32, scope: !436)
!445 = !DILocation(line: 96, column: 5, scope: !436)
!446 = !DILocation(line: 97, column: 19, scope: !436)
!447 = !DILocation(line: 97, column: 28, scope: !436)
!448 = !DILocation(line: 97, column: 5, scope: !436)
!449 = !DILocation(line: 98, column: 24, scope: !436)
!450 = !DILocation(line: 98, column: 33, scope: !436)
!451 = !DILocation(line: 98, column: 5, scope: !436)
!452 = !DILocation(line: 100, column: 14, scope: !436)
!453 = !DILocation(line: 100, column: 5, scope: !436)
!454 = !DILocation(line: 101, column: 1, scope: !436)
