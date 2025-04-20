; ModuleID = './src/transports/inproc/binproc.c'
source_filename = "./src/transports/inproc/binproc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_epbase_vfptr = type { ptr, ptr }
%struct.nn_binproc = type { %struct.nn_fsm, i32, %struct.nn_ins_item, %struct.nn_list }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_ins_item = type { %struct.nn_epbase, %struct.nn_list_item, i32, i32 }
%struct.nn_epbase = type { ptr, ptr }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_sinproc = type { %struct.nn_fsm, i32, i32, ptr, %struct.nn_pipebase, %struct.nn_msgqueue, %struct.nn_msg, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_fsm_event, %struct.nn_list_item }
%struct.nn_pipebase = type { %struct.nn_fsm, ptr, i8, i8, i8, ptr, ptr, %struct.nn_fsm_event, %struct.nn_fsm_event }
%struct.nn_msgqueue = type { %struct.anon, %struct.anon.0, i64, i64, i64, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.0 = type { ptr, i32 }
%struct.nn_msg = type { %struct.nn_chunkref, %struct.nn_chunkref }
%struct.nn_chunkref = type { [32 x i8] }
%struct.nn_cinproc = type { %struct.nn_fsm, i32, %struct.nn_ins_item, %struct.nn_sinproc }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [23 x i8] c"Out of memory (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [34 x i8] c"./src/transports/inproc/binproc.c\00", align 1, !dbg !7
@nn_binproc_vfptr = internal constant %struct.nn_epbase_vfptr { ptr @nn_binproc_stop, ptr @nn_binproc_destroy }, align 8, !dbg !12
@.str.2 = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !185
@.str.3 = private unnamed_addr constant [42 x i8] c"binproc->state == NN_BINPROC_STATE_ACTIVE\00", align 1, !dbg !190
@.str.4 = private unnamed_addr constant [60 x i8] c"src == NN_BINPROC_SRC_SINPROC && type == NN_SINPROC_STOPPED\00", align 1, !dbg !195
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !200

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_binproc_create(ptr noundef %0, ptr noundef %1) #0 !dbg !213 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !218, metadata !DIExpression()), !dbg !219
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata ptr %6, metadata !222, metadata !DIExpression()), !dbg !223
  call void @llvm.dbg.declare(metadata ptr %7, metadata !224, metadata !DIExpression()), !dbg !225
  %8 = call ptr @nn_alloc_(i64 noundef 144), !dbg !226
  store ptr %8, ptr %7, align 8, !dbg !227
  br label %9, !dbg !228

9:                                                ; preds = %2
  %10 = load ptr, ptr %7, align 8, !dbg !229
  %11 = icmp ne ptr %10, null, !dbg !229
  %12 = xor i1 %11, true, !dbg !229
  %13 = zext i1 %12 to i32, !dbg !229
  %14 = sext i32 %13 to i64, !dbg !229
  %15 = icmp ne i64 %14, 0, !dbg !229
  br i1 %15, label %16, label %19, !dbg !232

16:                                               ; preds = %9
  %17 = load ptr, ptr @stderr, align 8, !dbg !233
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 61), !dbg !233
  call void @nn_err_abort() #4, !dbg !233
  unreachable, !dbg !233

19:                                               ; preds = %9
  br label %20, !dbg !232

20:                                               ; preds = %19
  %21 = load ptr, ptr %7, align 8, !dbg !235
  %22 = getelementptr inbounds %struct.nn_binproc, ptr %21, i32 0, i32 2, !dbg !236
  %23 = load ptr, ptr %4, align 8, !dbg !237
  call void @nn_ins_item_init(ptr noundef %22, ptr noundef @nn_binproc_vfptr, ptr noundef %23), !dbg !238
  %24 = load ptr, ptr %7, align 8, !dbg !239
  %25 = getelementptr inbounds %struct.nn_binproc, ptr %24, i32 0, i32 0, !dbg !240
  %26 = load ptr, ptr %7, align 8, !dbg !241
  %27 = getelementptr inbounds %struct.nn_binproc, ptr %26, i32 0, i32 2, !dbg !242
  %28 = getelementptr inbounds %struct.nn_ins_item, ptr %27, i32 0, i32 0, !dbg !243
  %29 = call ptr @nn_epbase_getctx(ptr noundef %28), !dbg !244
  call void @nn_fsm_init_root(ptr noundef %25, ptr noundef @nn_binproc_handler, ptr noundef %29), !dbg !245
  %30 = load ptr, ptr %7, align 8, !dbg !246
  %31 = getelementptr inbounds %struct.nn_binproc, ptr %30, i32 0, i32 1, !dbg !247
  store i32 1, ptr %31, align 8, !dbg !248
  %32 = load ptr, ptr %7, align 8, !dbg !249
  %33 = getelementptr inbounds %struct.nn_binproc, ptr %32, i32 0, i32 3, !dbg !250
  call void @nn_list_init(ptr noundef %33), !dbg !251
  %34 = load ptr, ptr %7, align 8, !dbg !252
  %35 = getelementptr inbounds %struct.nn_binproc, ptr %34, i32 0, i32 0, !dbg !253
  call void @nn_fsm_start(ptr noundef %35), !dbg !254
  %36 = load ptr, ptr %7, align 8, !dbg !255
  %37 = getelementptr inbounds %struct.nn_binproc, ptr %36, i32 0, i32 2, !dbg !256
  %38 = call i32 @nn_ins_bind(ptr noundef %37, ptr noundef @nn_binproc_connect), !dbg !257
  store i32 %38, ptr %6, align 4, !dbg !258
  %39 = load i32, ptr %6, align 4, !dbg !259
  %40 = icmp slt i32 %39, 0, !dbg !259
  %41 = zext i1 %40 to i32, !dbg !259
  %42 = sext i32 %41 to i64, !dbg !259
  %43 = icmp ne i64 %42, 0, !dbg !259
  br i1 %43, label %44, label %56, !dbg !261

44:                                               ; preds = %20
  %45 = load ptr, ptr %7, align 8, !dbg !262
  %46 = getelementptr inbounds %struct.nn_binproc, ptr %45, i32 0, i32 3, !dbg !264
  call void @nn_list_term(ptr noundef %46), !dbg !265
  %47 = load ptr, ptr %7, align 8, !dbg !266
  %48 = getelementptr inbounds %struct.nn_binproc, ptr %47, i32 0, i32 0, !dbg !267
  %49 = getelementptr inbounds %struct.nn_fsm, ptr %48, i32 0, i32 1, !dbg !268
  store i32 1, ptr %49, align 8, !dbg !269
  %50 = load ptr, ptr %7, align 8, !dbg !270
  %51 = getelementptr inbounds %struct.nn_binproc, ptr %50, i32 0, i32 0, !dbg !271
  call void @nn_fsm_term(ptr noundef %51), !dbg !272
  %52 = load ptr, ptr %7, align 8, !dbg !273
  %53 = getelementptr inbounds %struct.nn_binproc, ptr %52, i32 0, i32 2, !dbg !274
  call void @nn_ins_item_term(ptr noundef %53), !dbg !275
  %54 = load ptr, ptr %7, align 8, !dbg !276
  call void @nn_free(ptr noundef %54), !dbg !277
  %55 = load i32, ptr %6, align 4, !dbg !278
  store i32 %55, ptr %3, align 4, !dbg !279
  br label %61, !dbg !279

56:                                               ; preds = %20
  %57 = load ptr, ptr %7, align 8, !dbg !280
  %58 = getelementptr inbounds %struct.nn_binproc, ptr %57, i32 0, i32 2, !dbg !281
  %59 = getelementptr inbounds %struct.nn_ins_item, ptr %58, i32 0, i32 0, !dbg !282
  %60 = load ptr, ptr %5, align 8, !dbg !283
  store ptr %59, ptr %60, align 8, !dbg !284
  store i32 0, ptr %3, align 4, !dbg !285
  br label %61, !dbg !285

61:                                               ; preds = %56, %44
  %62 = load i32, ptr %3, align 4, !dbg !286
  ret i32 %62, !dbg !286
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
define internal void @nn_binproc_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !287 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !288, metadata !DIExpression()), !dbg !289
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !290, metadata !DIExpression()), !dbg !291
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !292, metadata !DIExpression()), !dbg !293
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !294, metadata !DIExpression()), !dbg !295
  call void @llvm.dbg.declare(metadata ptr %9, metadata !296, metadata !DIExpression()), !dbg !297
  call void @llvm.dbg.declare(metadata ptr %10, metadata !298, metadata !DIExpression()), !dbg !299
  call void @llvm.dbg.declare(metadata ptr %11, metadata !300, metadata !DIExpression()), !dbg !301
  call void @llvm.dbg.declare(metadata ptr %12, metadata !302, metadata !DIExpression()), !dbg !303
  %13 = load ptr, ptr %5, align 8, !dbg !304
  %14 = icmp ne ptr %13, null, !dbg !304
  br i1 %14, label %15, label %18, !dbg !304

15:                                               ; preds = %4
  %16 = load ptr, ptr %5, align 8, !dbg !304
  %17 = getelementptr inbounds i8, ptr %16, i64 0, !dbg !304
  br label %19, !dbg !304

18:                                               ; preds = %4
  br label %19, !dbg !304

19:                                               ; preds = %18, %15
  %20 = phi ptr [ %17, %15 ], [ null, %18 ], !dbg !304
  store ptr %20, ptr %9, align 8, !dbg !305
  %21 = load i32, ptr %6, align 4, !dbg !306
  %22 = icmp eq i32 %21, -2, !dbg !306
  br i1 %22, label %23, label %26, !dbg !306

23:                                               ; preds = %19
  %24 = load i32, ptr %7, align 4, !dbg !306
  %25 = icmp eq i32 %24, -3, !dbg !306
  br label %26

26:                                               ; preds = %23, %19
  %27 = phi i1 [ false, %19 ], [ %25, %23 ], !dbg !308
  %28 = zext i1 %27 to i32, !dbg !306
  %29 = sext i32 %28 to i64, !dbg !306
  %30 = icmp ne i64 %29, 0, !dbg !306
  br i1 %30, label %31, label %61, !dbg !309

31:                                               ; preds = %26
  %32 = load ptr, ptr %9, align 8, !dbg !310
  %33 = getelementptr inbounds %struct.nn_binproc, ptr %32, i32 0, i32 2, !dbg !312
  call void @nn_ins_unbind(ptr noundef %33), !dbg !313
  %34 = load ptr, ptr %9, align 8, !dbg !314
  %35 = getelementptr inbounds %struct.nn_binproc, ptr %34, i32 0, i32 3, !dbg !316
  %36 = call ptr @nn_list_begin(ptr noundef %35), !dbg !317
  store ptr %36, ptr %10, align 8, !dbg !318
  br label %37, !dbg !319

37:                                               ; preds = %53, %31
  %38 = load ptr, ptr %10, align 8, !dbg !320
  %39 = load ptr, ptr %9, align 8, !dbg !322
  %40 = getelementptr inbounds %struct.nn_binproc, ptr %39, i32 0, i32 3, !dbg !323
  %41 = call ptr @nn_list_end(ptr noundef %40), !dbg !324
  %42 = icmp ne ptr %38, %41, !dbg !325
  br i1 %42, label %43, label %58, !dbg !326

43:                                               ; preds = %37
  %44 = load ptr, ptr %10, align 8, !dbg !327
  %45 = icmp ne ptr %44, null, !dbg !327
  br i1 %45, label %46, label %49, !dbg !327

46:                                               ; preds = %43
  %47 = load ptr, ptr %10, align 8, !dbg !327
  %48 = getelementptr inbounds i8, ptr %47, i64 -576, !dbg !327
  br label %50, !dbg !327

49:                                               ; preds = %43
  br label %50, !dbg !327

50:                                               ; preds = %49, %46
  %51 = phi ptr [ %48, %46 ], [ null, %49 ], !dbg !327
  store ptr %51, ptr %12, align 8, !dbg !329
  %52 = load ptr, ptr %12, align 8, !dbg !330
  call void @nn_sinproc_stop(ptr noundef %52), !dbg !331
  br label %53, !dbg !332

53:                                               ; preds = %50
  %54 = load ptr, ptr %9, align 8, !dbg !333
  %55 = getelementptr inbounds %struct.nn_binproc, ptr %54, i32 0, i32 3, !dbg !334
  %56 = load ptr, ptr %10, align 8, !dbg !335
  %57 = call ptr @nn_list_next(ptr noundef %55, ptr noundef %56), !dbg !336
  store ptr %57, ptr %10, align 8, !dbg !337
  br label %37, !dbg !338, !llvm.loop !339

58:                                               ; preds = %37
  %59 = load ptr, ptr %9, align 8, !dbg !342
  %60 = getelementptr inbounds %struct.nn_binproc, ptr %59, i32 0, i32 1, !dbg !343
  store i32 3, ptr %60, align 8, !dbg !344
  br label %95, !dbg !345

61:                                               ; preds = %26
  %62 = load ptr, ptr %9, align 8, !dbg !346
  %63 = getelementptr inbounds %struct.nn_binproc, ptr %62, i32 0, i32 1, !dbg !346
  %64 = load i32, ptr %63, align 8, !dbg !346
  %65 = icmp eq i32 %64, 3, !dbg !346
  %66 = zext i1 %65 to i32, !dbg !346
  %67 = sext i32 %66 to i64, !dbg !346
  %68 = icmp ne i64 %67, 0, !dbg !346
  br i1 %68, label %69, label %109, !dbg !348

69:                                               ; preds = %61
  br label %70, !dbg !349

70:                                               ; preds = %69
  %71 = load i32, ptr %6, align 4, !dbg !351
  %72 = icmp eq i32 %71, 1, !dbg !351
  br i1 %72, label %73, label %76, !dbg !351

73:                                               ; preds = %70
  %74 = load i32, ptr %7, align 4, !dbg !351
  %75 = icmp eq i32 %74, 6, !dbg !351
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi i1 [ false, %70 ], [ %75, %73 ], !dbg !354
  %78 = xor i1 %77, true, !dbg !351
  %79 = zext i1 %78 to i32, !dbg !351
  %80 = sext i32 %79 to i64, !dbg !351
  %81 = icmp ne i64 %80, 0, !dbg !351
  br i1 %81, label %82, label %85, !dbg !355

82:                                               ; preds = %76
  %83 = load ptr, ptr @stderr, align 8, !dbg !356
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str.2, ptr noundef @.str.4, ptr noundef @.str.1, i32 noundef 165), !dbg !356
  call void @nn_err_abort() #4, !dbg !356
  unreachable, !dbg !356

85:                                               ; preds = %76
  br label %86, !dbg !355

86:                                               ; preds = %85
  %87 = load ptr, ptr %8, align 8, !dbg !358
  store ptr %87, ptr %12, align 8, !dbg !359
  %88 = load ptr, ptr %9, align 8, !dbg !360
  %89 = getelementptr inbounds %struct.nn_binproc, ptr %88, i32 0, i32 3, !dbg !361
  %90 = load ptr, ptr %12, align 8, !dbg !362
  %91 = getelementptr inbounds %struct.nn_sinproc, ptr %90, i32 0, i32 11, !dbg !363
  %92 = call ptr @nn_list_erase(ptr noundef %89, ptr noundef %91), !dbg !364
  %93 = load ptr, ptr %12, align 8, !dbg !365
  call void @nn_sinproc_term(ptr noundef %93), !dbg !366
  %94 = load ptr, ptr %12, align 8, !dbg !367
  call void @nn_free(ptr noundef %94), !dbg !368
  br label %95, !dbg !368

95:                                               ; preds = %86, %58
  call void @llvm.dbg.label(metadata !369), !dbg !370
  %96 = load ptr, ptr %9, align 8, !dbg !371
  %97 = getelementptr inbounds %struct.nn_binproc, ptr %96, i32 0, i32 3, !dbg !373
  %98 = call i32 @nn_list_empty(ptr noundef %97), !dbg !374
  %99 = icmp ne i32 %98, 0, !dbg !374
  br i1 %99, label %101, label %100, !dbg !375

100:                                              ; preds = %95
  br label %183, !dbg !376

101:                                              ; preds = %95
  %102 = load ptr, ptr %9, align 8, !dbg !377
  %103 = getelementptr inbounds %struct.nn_binproc, ptr %102, i32 0, i32 1, !dbg !378
  store i32 1, ptr %103, align 8, !dbg !379
  %104 = load ptr, ptr %9, align 8, !dbg !380
  %105 = getelementptr inbounds %struct.nn_binproc, ptr %104, i32 0, i32 0, !dbg !381
  call void @nn_fsm_stopped_noevent(ptr noundef %105), !dbg !382
  %106 = load ptr, ptr %9, align 8, !dbg !383
  %107 = getelementptr inbounds %struct.nn_binproc, ptr %106, i32 0, i32 2, !dbg !384
  %108 = getelementptr inbounds %struct.nn_ins_item, ptr %107, i32 0, i32 0, !dbg !385
  call void @nn_epbase_stopped(ptr noundef %108), !dbg !386
  br label %183, !dbg !387

109:                                              ; preds = %61
  %110 = load ptr, ptr %9, align 8, !dbg !388
  %111 = getelementptr inbounds %struct.nn_binproc, ptr %110, i32 0, i32 1, !dbg !389
  %112 = load i32, ptr %111, align 8, !dbg !389
  switch i32 %112, label %178 [
    i32 1, label %113
    i32 2, label %132
  ], !dbg !390

113:                                              ; preds = %109
  %114 = load i32, ptr %6, align 4, !dbg !391
  switch i32 %114, label %126 [
    i32 -2, label %115
  ], !dbg !393

115:                                              ; preds = %113
  %116 = load i32, ptr %7, align 4, !dbg !394
  switch i32 %116, label %120 [
    i32 -2, label %117
  ], !dbg !396

117:                                              ; preds = %115
  %118 = load ptr, ptr %9, align 8, !dbg !397
  %119 = getelementptr inbounds %struct.nn_binproc, ptr %118, i32 0, i32 1, !dbg !399
  store i32 2, ptr %119, align 8, !dbg !400
  br label %183, !dbg !401

120:                                              ; preds = %115
  br label %121, !dbg !402

121:                                              ; preds = %120
  %122 = load ptr, ptr @stderr, align 8, !dbg !403
  %123 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %122, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 193), !dbg !403
  call void @nn_err_abort() #4, !dbg !403
  unreachable, !dbg !403

124:                                              ; No predecessors!
  br label %125, !dbg !407

125:                                              ; preds = %124
  br label %126, !dbg !407

126:                                              ; preds = %113, %125
  br label %127, !dbg !408

127:                                              ; preds = %126
  %128 = load ptr, ptr @stderr, align 8, !dbg !409
  %129 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %128, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 197), !dbg !409
  call void @nn_err_abort() #4, !dbg !409
  unreachable, !dbg !409

130:                                              ; No predecessors!
  br label %131, !dbg !413

131:                                              ; preds = %130
  br label %132, !dbg !413

132:                                              ; preds = %109, %131
  %133 = load i32, ptr %6, align 4, !dbg !414
  switch i32 %133, label %172 [
    i32 27713, label %134
  ], !dbg !415

134:                                              ; preds = %132
  %135 = load i32, ptr %7, align 4, !dbg !416
  switch i32 %135, label %166 [
    i32 1, label %136
  ], !dbg !418

136:                                              ; preds = %134
  %137 = load ptr, ptr %8, align 8, !dbg !419
  store ptr %137, ptr %11, align 8, !dbg !421
  %138 = call ptr @nn_alloc_(i64 noundef 592), !dbg !422
  store ptr %138, ptr %12, align 8, !dbg !423
  br label %139, !dbg !424

139:                                              ; preds = %136
  %140 = load ptr, ptr %12, align 8, !dbg !425
  %141 = icmp ne ptr %140, null, !dbg !425
  %142 = xor i1 %141, true, !dbg !425
  %143 = zext i1 %142 to i32, !dbg !425
  %144 = sext i32 %143 to i64, !dbg !425
  %145 = icmp ne i64 %144, 0, !dbg !425
  br i1 %145, label %146, label %149, !dbg !428

146:                                              ; preds = %139
  %147 = load ptr, ptr @stderr, align 8, !dbg !429
  %148 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %147, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 211), !dbg !429
  call void @nn_err_abort() #4, !dbg !429
  unreachable, !dbg !429

149:                                              ; preds = %139
  br label %150, !dbg !428

150:                                              ; preds = %149
  %151 = load ptr, ptr %12, align 8, !dbg !431
  %152 = load ptr, ptr %9, align 8, !dbg !432
  %153 = getelementptr inbounds %struct.nn_binproc, ptr %152, i32 0, i32 2, !dbg !433
  %154 = getelementptr inbounds %struct.nn_ins_item, ptr %153, i32 0, i32 0, !dbg !434
  %155 = load ptr, ptr %9, align 8, !dbg !435
  %156 = getelementptr inbounds %struct.nn_binproc, ptr %155, i32 0, i32 0, !dbg !436
  call void @nn_sinproc_init(ptr noundef %151, i32 noundef 1, ptr noundef %154, ptr noundef %156), !dbg !437
  %157 = load ptr, ptr %9, align 8, !dbg !438
  %158 = getelementptr inbounds %struct.nn_binproc, ptr %157, i32 0, i32 3, !dbg !439
  %159 = load ptr, ptr %12, align 8, !dbg !440
  %160 = getelementptr inbounds %struct.nn_sinproc, ptr %159, i32 0, i32 11, !dbg !441
  %161 = load ptr, ptr %9, align 8, !dbg !442
  %162 = getelementptr inbounds %struct.nn_binproc, ptr %161, i32 0, i32 3, !dbg !443
  %163 = call ptr @nn_list_end(ptr noundef %162), !dbg !444
  call void @nn_list_insert(ptr noundef %158, ptr noundef %160, ptr noundef %163), !dbg !445
  %164 = load ptr, ptr %12, align 8, !dbg !446
  %165 = load ptr, ptr %11, align 8, !dbg !447
  call void @nn_sinproc_accept(ptr noundef %164, ptr noundef %165), !dbg !448
  br label %183, !dbg !449

166:                                              ; preds = %134
  br label %167, !dbg !450

167:                                              ; preds = %166
  %168 = load ptr, ptr @stderr, align 8, !dbg !451
  %169 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %168, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 219), !dbg !451
  call void @nn_err_abort() #4, !dbg !451
  unreachable, !dbg !451

170:                                              ; No predecessors!
  br label %171, !dbg !455

171:                                              ; preds = %170
  br label %172, !dbg !455

172:                                              ; preds = %132, %171
  br label %173, !dbg !456

173:                                              ; preds = %172
  %174 = load ptr, ptr @stderr, align 8, !dbg !457
  %175 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 223), !dbg !457
  call void @nn_err_abort() #4, !dbg !457
  unreachable, !dbg !457

176:                                              ; No predecessors!
  br label %177, !dbg !461

177:                                              ; preds = %176
  br label %178, !dbg !461

178:                                              ; preds = %109, %177
  br label %179, !dbg !462

179:                                              ; preds = %178
  %180 = load ptr, ptr @stderr, align 8, !dbg !463
  %181 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %180, ptr noundef @.str.2, ptr noundef @.str.5, ptr noundef @.str.1, i32 noundef 230), !dbg !463
  call void @nn_err_abort() #4, !dbg !463
  unreachable, !dbg !463

182:                                              ; No predecessors!
  br label %183, !dbg !467

183:                                              ; preds = %100, %101, %117, %150, %182
  ret void, !dbg !468
}

declare ptr @nn_epbase_getctx(ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare i32 @nn_ins_bind(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_binproc_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !469 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !473, metadata !DIExpression()), !dbg !474
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !475, metadata !DIExpression()), !dbg !476
  call void @llvm.dbg.declare(metadata ptr %5, metadata !477, metadata !DIExpression()), !dbg !478
  call void @llvm.dbg.declare(metadata ptr %6, metadata !479, metadata !DIExpression()), !dbg !480
  call void @llvm.dbg.declare(metadata ptr %7, metadata !481, metadata !DIExpression()), !dbg !482
  %8 = load ptr, ptr %3, align 8, !dbg !483
  %9 = icmp ne ptr %8, null, !dbg !483
  br i1 %9, label %10, label %13, !dbg !483

10:                                               ; preds = %2
  %11 = load ptr, ptr %3, align 8, !dbg !483
  %12 = getelementptr inbounds i8, ptr %11, i64 -88, !dbg !483
  br label %14, !dbg !483

13:                                               ; preds = %2
  br label %14, !dbg !483

14:                                               ; preds = %13, %10
  %15 = phi ptr [ %12, %10 ], [ null, %13 ], !dbg !483
  store ptr %15, ptr %5, align 8, !dbg !484
  %16 = load ptr, ptr %4, align 8, !dbg !485
  %17 = icmp ne ptr %16, null, !dbg !485
  br i1 %17, label %18, label %21, !dbg !485

18:                                               ; preds = %14
  %19 = load ptr, ptr %4, align 8, !dbg !485
  %20 = getelementptr inbounds i8, ptr %19, i64 -88, !dbg !485
  br label %22, !dbg !485

21:                                               ; preds = %14
  br label %22, !dbg !485

22:                                               ; preds = %21, %18
  %23 = phi ptr [ %20, %18 ], [ null, %21 ], !dbg !485
  store ptr %23, ptr %6, align 8, !dbg !486
  br label %24, !dbg !487

24:                                               ; preds = %22
  %25 = load ptr, ptr %5, align 8, !dbg !488
  %26 = getelementptr inbounds %struct.nn_binproc, ptr %25, i32 0, i32 1, !dbg !488
  %27 = load i32, ptr %26, align 8, !dbg !488
  %28 = icmp eq i32 %27, 2, !dbg !488
  %29 = xor i1 %28, true, !dbg !488
  %30 = zext i1 %29 to i32, !dbg !488
  %31 = sext i32 %30 to i64, !dbg !488
  %32 = icmp ne i64 %31, 0, !dbg !488
  br i1 %32, label %33, label %36, !dbg !491

33:                                               ; preds = %24
  %34 = load ptr, ptr @stderr, align 8, !dbg !492
  %35 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %34, ptr noundef @.str.2, ptr noundef @.str.3, ptr noundef @.str.1, i32 noundef 123), !dbg !492
  call void @nn_err_abort() #4, !dbg !492
  unreachable, !dbg !492

36:                                               ; preds = %24
  br label %37, !dbg !491

37:                                               ; preds = %36
  %38 = call ptr @nn_alloc_(i64 noundef 592), !dbg !494
  store ptr %38, ptr %7, align 8, !dbg !495
  br label %39, !dbg !496

39:                                               ; preds = %37
  %40 = load ptr, ptr %7, align 8, !dbg !497
  %41 = icmp ne ptr %40, null, !dbg !497
  %42 = xor i1 %41, true, !dbg !497
  %43 = zext i1 %42 to i32, !dbg !497
  %44 = sext i32 %43 to i64, !dbg !497
  %45 = icmp ne i64 %44, 0, !dbg !497
  br i1 %45, label %46, label %49, !dbg !500

46:                                               ; preds = %39
  %47 = load ptr, ptr @stderr, align 8, !dbg !501
  %48 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %47, ptr noundef @.str, ptr noundef @.str.1, i32 noundef 126), !dbg !501
  call void @nn_err_abort() #4, !dbg !501
  unreachable, !dbg !501

49:                                               ; preds = %39
  br label %50, !dbg !500

50:                                               ; preds = %49
  %51 = load ptr, ptr %7, align 8, !dbg !503
  %52 = load ptr, ptr %5, align 8, !dbg !504
  %53 = getelementptr inbounds %struct.nn_binproc, ptr %52, i32 0, i32 2, !dbg !505
  %54 = getelementptr inbounds %struct.nn_ins_item, ptr %53, i32 0, i32 0, !dbg !506
  %55 = load ptr, ptr %5, align 8, !dbg !507
  %56 = getelementptr inbounds %struct.nn_binproc, ptr %55, i32 0, i32 0, !dbg !508
  call void @nn_sinproc_init(ptr noundef %51, i32 noundef 1, ptr noundef %54, ptr noundef %56), !dbg !509
  %57 = load ptr, ptr %5, align 8, !dbg !510
  %58 = getelementptr inbounds %struct.nn_binproc, ptr %57, i32 0, i32 3, !dbg !511
  %59 = load ptr, ptr %7, align 8, !dbg !512
  %60 = getelementptr inbounds %struct.nn_sinproc, ptr %59, i32 0, i32 11, !dbg !513
  %61 = load ptr, ptr %5, align 8, !dbg !514
  %62 = getelementptr inbounds %struct.nn_binproc, ptr %61, i32 0, i32 3, !dbg !515
  %63 = call ptr @nn_list_end(ptr noundef %62), !dbg !516
  call void @nn_list_insert(ptr noundef %58, ptr noundef %60, ptr noundef %63), !dbg !517
  %64 = load ptr, ptr %7, align 8, !dbg !518
  %65 = load ptr, ptr %6, align 8, !dbg !519
  %66 = getelementptr inbounds %struct.nn_cinproc, ptr %65, i32 0, i32 0, !dbg !520
  call void @nn_sinproc_connect(ptr noundef %64, ptr noundef %66), !dbg !521
  ret void, !dbg !522
}

declare void @nn_list_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_ins_item_term(ptr noundef) #2

declare void @nn_free(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_binproc_stop(ptr noundef %0) #0 !dbg !523 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !524, metadata !DIExpression()), !dbg !525
  call void @llvm.dbg.declare(metadata ptr %3, metadata !526, metadata !DIExpression()), !dbg !527
  %4 = load ptr, ptr %2, align 8, !dbg !528
  %5 = icmp ne ptr %4, null, !dbg !528
  br i1 %5, label %6, label %9, !dbg !528

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !528
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !528
  br label %10, !dbg !528

9:                                                ; preds = %1
  br label %10, !dbg !528

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !528
  store ptr %11, ptr %3, align 8, !dbg !529
  %12 = load ptr, ptr %3, align 8, !dbg !530
  %13 = getelementptr inbounds %struct.nn_binproc, ptr %12, i32 0, i32 0, !dbg !531
  call void @nn_fsm_stop(ptr noundef %13), !dbg !532
  ret void, !dbg !533
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_binproc_destroy(ptr noundef %0) #0 !dbg !534 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !535, metadata !DIExpression()), !dbg !536
  call void @llvm.dbg.declare(metadata ptr %3, metadata !537, metadata !DIExpression()), !dbg !538
  %4 = load ptr, ptr %2, align 8, !dbg !539
  %5 = icmp ne ptr %4, null, !dbg !539
  br i1 %5, label %6, label %9, !dbg !539

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !dbg !539
  %8 = getelementptr inbounds i8, ptr %7, i64 -88, !dbg !539
  br label %10, !dbg !539

9:                                                ; preds = %1
  br label %10, !dbg !539

10:                                               ; preds = %9, %6
  %11 = phi ptr [ %8, %6 ], [ null, %9 ], !dbg !539
  store ptr %11, ptr %3, align 8, !dbg !540
  %12 = load ptr, ptr %3, align 8, !dbg !541
  %13 = getelementptr inbounds %struct.nn_binproc, ptr %12, i32 0, i32 3, !dbg !542
  call void @nn_list_term(ptr noundef %13), !dbg !543
  %14 = load ptr, ptr %3, align 8, !dbg !544
  %15 = getelementptr inbounds %struct.nn_binproc, ptr %14, i32 0, i32 0, !dbg !545
  call void @nn_fsm_term(ptr noundef %15), !dbg !546
  %16 = load ptr, ptr %3, align 8, !dbg !547
  %17 = getelementptr inbounds %struct.nn_binproc, ptr %16, i32 0, i32 2, !dbg !548
  call void @nn_ins_item_term(ptr noundef %17), !dbg !549
  %18 = load ptr, ptr %3, align 8, !dbg !550
  call void @nn_free(ptr noundef %18), !dbg !551
  ret void, !dbg !552
}

declare void @nn_fsm_stop(ptr noundef) #2

declare void @nn_sinproc_init(ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

declare void @nn_sinproc_connect(ptr noundef, ptr noundef) #2

declare void @nn_ins_unbind(ptr noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

declare void @nn_sinproc_stop(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

declare void @nn_sinproc_term(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @nn_list_empty(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_epbase_stopped(ptr noundef) #2

declare void @nn_sinproc_accept(ptr noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn }

!llvm.dbg.cu = !{!14}
!llvm.module.flags = !{!205, !206, !207, !208, !209, !210, !211}
!llvm.ident = !{!212}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/inproc/binproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ae6f1845e304899ab15dc7ce9661c81b")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 23)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 272, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 34)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "nn_binproc_vfptr", scope: !14, file: !2, line: 43, type: !64, isLocal: true, isDefinition: true)
!14 = distinct !DICompileUnit(language: DW_LANG_C11, file: !15, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !16, globals: !184, splitDebugInlining: false, nameTableKind: None)
!15 = !DIFile(filename: "src/transports/inproc/binproc.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ae6f1845e304899ab15dc7ce9661c81b")
!16 = !{!17, !90, !91, !106}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_binproc", file: !19, line: 36, size: 1152, elements: !20)
!19 = !DIFile(filename: "./src/transports/inproc/binproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "219357ea033ab2138672247e5529c0ef")
!20 = !{!21, !53, !54, !85}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !18, file: !19, line: 39, baseType: !22, size: 640)
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
!53 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !18, file: !19, line: 40, baseType: !31, size: 32, offset: 640)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !18, file: !19, line: 43, baseType: !55, size: 320, offset: 704)
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
!85 = !DIDerivedType(tag: DW_TAG_member, name: "sinprocs", scope: !18, file: !19, line: 46, baseType: !86, size: 128, offset: 1024)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !78, line: 31, size: 128, elements: !87)
!87 = !{!88, !89}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !86, file: !78, line: 32, baseType: !81, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !86, file: !78, line: 33, baseType: !81, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_cinproc", file: !93, line: 33, size: 5760, elements: !94)
!93 = !DIFile(filename: "./src/transports/inproc/cinproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "10e72d97be488bf3eea45ef94cfbac78")
!94 = !{!95, !96, !97, !98}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !92, file: !93, line: 36, baseType: !22, size: 640)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !92, file: !93, line: 37, baseType: !31, size: 32, offset: 640)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !92, file: !93, line: 40, baseType: !55, size: 320, offset: 704)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "sinproc", scope: !92, file: !93, line: 43, baseType: !99, size: 4736, offset: 1024)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sinproc", file: !100, line: 46, size: 4736, elements: !101)
!100 = !DIFile(filename: "./src/transports/inproc/sinproc.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "c50de9684b7e0fabb9c8960363a59da6")
!101 = !{!102, !103, !104, !105, !107, !149, !178, !179, !180, !181, !182, !183}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !99, file: !100, line: 49, baseType: !22, size: 640)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !99, file: !100, line: 50, baseType: !31, size: 32, offset: 640)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !100, line: 53, baseType: !31, size: 32, offset: 672)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "peer", scope: !99, file: !100, line: 56, baseType: !106, size: 64, offset: 704)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "pipebase", scope: !99, file: !100, line: 59, baseType: !108, size: 1536, offset: 768)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase", file: !60, line: 147, size: 1536, elements: !109)
!109 = !{!110, !111, !140, !141, !142, !143, !146, !147, !148}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !108, file: !60, line: 148, baseType: !22, size: 640)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !108, file: !60, line: 149, baseType: !112, size: 64, offset: 640)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipebase_vfptr", file: !60, line: 134, size: 128, elements: !115)
!115 = !{!116, !139}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !114, file: !60, line: 138, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{!31, !120, !121}
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !123, line: 30, size: 512, elements: !124)
!123 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!124 = !{!125, !138}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !122, file: !123, line: 33, baseType: !126, size: 256)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !127, line: 39, size: 256, elements: !128)
!127 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !126, file: !127, line: 40, baseType: !130, size: 256)
!130 = !DICompositeType(tag: DW_TAG_array_type, baseType: !131, size: 256, elements: !136)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !132, line: 24, baseType: !133)
!132 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !134, line: 38, baseType: !135)
!134 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!135 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!136 = !{!137}
!137 = !DISubrange(count: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !122, file: !123, line: 36, baseType: !126, size: 256, offset: 256)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !114, file: !60, line: 142, baseType: !117, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !108, file: !60, line: 150, baseType: !131, size: 8, offset: 704)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !108, file: !60, line: 151, baseType: !131, size: 8, offset: 712)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "outstate", scope: !108, file: !60, line: 152, baseType: !131, size: 8, offset: 720)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !108, file: !60, line: 153, baseType: !144, size: 64, offset: 768)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !60, line: 39, flags: DIFlagFwdDecl)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !60, line: 154, baseType: !32, size: 64, offset: 832)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !108, file: !60, line: 155, baseType: !41, size: 320, offset: 896)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !108, file: !60, line: 156, baseType: !41, size: 320, offset: 1216)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "msgqueue", scope: !99, file: !100, line: 63, baseType: !150, size: 512, offset: 2304)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue", file: !151, line: 40, size: 512, elements: !152)
!151 = !DIFile(filename: "./src/transports/inproc/msgqueue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "03057ddde493a8150c86b1bc38c7f2a4")
!152 = !{!153, !166, !171, !175, !176, !177}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !150, file: !151, line: 47, baseType: !154, size: 128)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !151, line: 44, size: 128, elements: !155)
!155 = !{!156, !165}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !154, file: !151, line: 45, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msgqueue_chunk", file: !151, line: 35, size: 64576, elements: !159)
!159 = !{!160, !164}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "msgs", scope: !158, file: !151, line: 36, baseType: !161, size: 64512)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !122, size: 64512, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 126)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !151, line: 37, baseType: !157, size: 64, offset: 64512)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !154, file: !151, line: 46, baseType: !31, size: 32, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !150, file: !151, line: 53, baseType: !167, size: 128, offset: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !150, file: !151, line: 50, size: 128, elements: !168)
!168 = !{!169, !170}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "chunk", scope: !167, file: !151, line: 51, baseType: !157, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !167, file: !151, line: 52, baseType: !31, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !150, file: !151, line: 56, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 46, baseType: !174)
!173 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!174 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !150, file: !151, line: 59, baseType: !172, size: 64, offset: 320)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "maxmem", scope: !150, file: !151, line: 62, baseType: !172, size: 64, offset: 384)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !150, file: !151, line: 66, baseType: !157, size: 64, offset: 448)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !99, file: !100, line: 68, baseType: !122, size: 512, offset: 2816)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "event_connect", scope: !99, file: !100, line: 71, baseType: !41, size: 320, offset: 3328)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "event_sent", scope: !99, file: !100, line: 74, baseType: !41, size: 320, offset: 3648)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "event_received", scope: !99, file: !100, line: 75, baseType: !41, size: 320, offset: 3968)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "event_disconnect", scope: !99, file: !100, line: 76, baseType: !41, size: 320, offset: 4288)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !99, file: !100, line: 80, baseType: !77, size: 128, offset: 4608)
!184 = !{!0, !7, !12, !185, !190, !195, !200}
!185 = !DIGlobalVariableExpression(var: !186, expr: !DIExpression())
!186 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !187, isLocal: true, isDefinition: true)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 30)
!190 = !DIGlobalVariableExpression(var: !191, expr: !DIExpression())
!191 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !192, isLocal: true, isDefinition: true)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 336, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 42)
!195 = !DIGlobalVariableExpression(var: !196, expr: !DIExpression())
!196 = distinct !DIGlobalVariable(scope: null, file: !2, line: 165, type: !197, isLocal: true, isDefinition: true)
!197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 480, elements: !198)
!198 = !{!199}
!199 = !DISubrange(count: 60)
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(scope: null, file: !2, line: 193, type: !202, isLocal: true, isDefinition: true)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !203)
!203 = !{!204}
!204 = !DISubrange(count: 2)
!205 = !{i32 7, !"Dwarf Version", i32 5}
!206 = !{i32 2, !"Debug Info Version", i32 3}
!207 = !{i32 1, !"wchar_size", i32 4}
!208 = !{i32 8, !"PIC Level", i32 2}
!209 = !{i32 7, !"PIE Level", i32 2}
!210 = !{i32 7, !"uwtable", i32 2}
!211 = !{i32 7, !"frame-pointer", i32 2}
!212 = !{!"clang version 16.0.0"}
!213 = distinct !DISubprogram(name: "nn_binproc_create", scope: !2, file: !2, line: 55, type: !214, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !217)
!214 = !DISubroutineType(types: !215)
!215 = !{!31, !32, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!217 = !{}
!218 = !DILocalVariable(name: "hint", arg: 1, scope: !213, file: !2, line: 55, type: !32)
!219 = !DILocation(line: 55, column: 30, scope: !213)
!220 = !DILocalVariable(name: "epbase", arg: 2, scope: !213, file: !2, line: 55, type: !216)
!221 = !DILocation(line: 55, column: 55, scope: !213)
!222 = !DILocalVariable(name: "rc", scope: !213, file: !2, line: 57, type: !31)
!223 = !DILocation(line: 57, column: 9, scope: !213)
!224 = !DILocalVariable(name: "self", scope: !213, file: !2, line: 58, type: !17)
!225 = !DILocation(line: 58, column: 24, scope: !213)
!226 = !DILocation(line: 60, column: 12, scope: !213)
!227 = !DILocation(line: 60, column: 10, scope: !213)
!228 = !DILocation(line: 61, column: 5, scope: !213)
!229 = !DILocation(line: 61, column: 5, scope: !230)
!230 = distinct !DILexicalBlock(scope: !231, file: !2, line: 61, column: 5)
!231 = distinct !DILexicalBlock(scope: !213, file: !2, line: 61, column: 5)
!232 = !DILocation(line: 61, column: 5, scope: !231)
!233 = !DILocation(line: 61, column: 5, scope: !234)
!234 = distinct !DILexicalBlock(scope: !230, file: !2, line: 61, column: 5)
!235 = !DILocation(line: 63, column: 24, scope: !213)
!236 = !DILocation(line: 63, column: 30, scope: !213)
!237 = !DILocation(line: 63, column: 55, scope: !213)
!238 = !DILocation(line: 63, column: 5, scope: !213)
!239 = !DILocation(line: 64, column: 24, scope: !213)
!240 = !DILocation(line: 64, column: 30, scope: !213)
!241 = !DILocation(line: 65, column: 28, scope: !213)
!242 = !DILocation(line: 65, column: 34, scope: !213)
!243 = !DILocation(line: 65, column: 39, scope: !213)
!244 = !DILocation(line: 65, column: 9, scope: !213)
!245 = !DILocation(line: 64, column: 5, scope: !213)
!246 = !DILocation(line: 66, column: 5, scope: !213)
!247 = !DILocation(line: 66, column: 11, scope: !213)
!248 = !DILocation(line: 66, column: 17, scope: !213)
!249 = !DILocation(line: 67, column: 20, scope: !213)
!250 = !DILocation(line: 67, column: 26, scope: !213)
!251 = !DILocation(line: 67, column: 5, scope: !213)
!252 = !DILocation(line: 70, column: 20, scope: !213)
!253 = !DILocation(line: 70, column: 26, scope: !213)
!254 = !DILocation(line: 70, column: 5, scope: !213)
!255 = !DILocation(line: 73, column: 24, scope: !213)
!256 = !DILocation(line: 73, column: 30, scope: !213)
!257 = !DILocation(line: 73, column: 10, scope: !213)
!258 = !DILocation(line: 73, column: 8, scope: !213)
!259 = !DILocation(line: 74, column: 9, scope: !260)
!260 = distinct !DILexicalBlock(scope: !213, file: !2, line: 74, column: 9)
!261 = !DILocation(line: 74, column: 9, scope: !213)
!262 = !DILocation(line: 75, column: 24, scope: !263)
!263 = distinct !DILexicalBlock(scope: !260, file: !2, line: 74, column: 27)
!264 = !DILocation(line: 75, column: 30, scope: !263)
!265 = !DILocation(line: 75, column: 9, scope: !263)
!266 = !DILocation(line: 79, column: 9, scope: !263)
!267 = !DILocation(line: 79, column: 15, scope: !263)
!268 = !DILocation(line: 79, column: 19, scope: !263)
!269 = !DILocation(line: 79, column: 25, scope: !263)
!270 = !DILocation(line: 80, column: 23, scope: !263)
!271 = !DILocation(line: 80, column: 29, scope: !263)
!272 = !DILocation(line: 80, column: 9, scope: !263)
!273 = !DILocation(line: 82, column: 28, scope: !263)
!274 = !DILocation(line: 82, column: 34, scope: !263)
!275 = !DILocation(line: 82, column: 9, scope: !263)
!276 = !DILocation(line: 83, column: 18, scope: !263)
!277 = !DILocation(line: 83, column: 9, scope: !263)
!278 = !DILocation(line: 84, column: 16, scope: !263)
!279 = !DILocation(line: 84, column: 9, scope: !263)
!280 = !DILocation(line: 87, column: 16, scope: !213)
!281 = !DILocation(line: 87, column: 22, scope: !213)
!282 = !DILocation(line: 87, column: 27, scope: !213)
!283 = !DILocation(line: 87, column: 6, scope: !213)
!284 = !DILocation(line: 87, column: 13, scope: !213)
!285 = !DILocation(line: 88, column: 5, scope: !213)
!286 = !DILocation(line: 89, column: 1, scope: !213)
!287 = distinct !DISubprogram(name: "nn_binproc_handler", scope: !2, file: !2, line: 134, type: !28, scopeLine: 136, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !217)
!288 = !DILocalVariable(name: "self", arg: 1, scope: !287, file: !2, line: 134, type: !30)
!289 = !DILocation(line: 134, column: 48, scope: !287)
!290 = !DILocalVariable(name: "src", arg: 2, scope: !287, file: !2, line: 134, type: !31)
!291 = !DILocation(line: 134, column: 58, scope: !287)
!292 = !DILocalVariable(name: "type", arg: 3, scope: !287, file: !2, line: 134, type: !31)
!293 = !DILocation(line: 134, column: 67, scope: !287)
!294 = !DILocalVariable(name: "srcptr", arg: 4, scope: !287, file: !2, line: 135, type: !32)
!295 = !DILocation(line: 135, column: 11, scope: !287)
!296 = !DILocalVariable(name: "binproc", scope: !287, file: !2, line: 137, type: !17)
!297 = !DILocation(line: 137, column: 24, scope: !287)
!298 = !DILocalVariable(name: "it", scope: !287, file: !2, line: 138, type: !81)
!299 = !DILocation(line: 138, column: 26, scope: !287)
!300 = !DILocalVariable(name: "peer", scope: !287, file: !2, line: 139, type: !106)
!301 = !DILocation(line: 139, column: 24, scope: !287)
!302 = !DILocalVariable(name: "sinproc", scope: !287, file: !2, line: 140, type: !106)
!303 = !DILocation(line: 140, column: 24, scope: !287)
!304 = !DILocation(line: 142, column: 15, scope: !287)
!305 = !DILocation(line: 142, column: 13, scope: !287)
!306 = !DILocation(line: 147, column: 9, scope: !307)
!307 = distinct !DILexicalBlock(scope: !287, file: !2, line: 147, column: 9)
!308 = !DILocation(line: 0, scope: !307)
!309 = !DILocation(line: 147, column: 9, scope: !287)
!310 = !DILocation(line: 151, column: 25, scope: !311)
!311 = distinct !DILexicalBlock(scope: !307, file: !2, line: 147, column: 64)
!312 = !DILocation(line: 151, column: 34, scope: !311)
!313 = !DILocation(line: 151, column: 9, scope: !311)
!314 = !DILocation(line: 154, column: 35, scope: !315)
!315 = distinct !DILexicalBlock(scope: !311, file: !2, line: 154, column: 9)
!316 = !DILocation(line: 154, column: 44, scope: !315)
!317 = !DILocation(line: 154, column: 19, scope: !315)
!318 = !DILocation(line: 154, column: 17, scope: !315)
!319 = !DILocation(line: 154, column: 14, scope: !315)
!320 = !DILocation(line: 155, column: 15, scope: !321)
!321 = distinct !DILexicalBlock(scope: !315, file: !2, line: 154, column: 9)
!322 = !DILocation(line: 155, column: 35, scope: !321)
!323 = !DILocation(line: 155, column: 44, scope: !321)
!324 = !DILocation(line: 155, column: 21, scope: !321)
!325 = !DILocation(line: 155, column: 18, scope: !321)
!326 = !DILocation(line: 154, column: 9, scope: !315)
!327 = !DILocation(line: 157, column: 23, scope: !328)
!328 = distinct !DILexicalBlock(scope: !321, file: !2, line: 156, column: 59)
!329 = !DILocation(line: 157, column: 21, scope: !328)
!330 = !DILocation(line: 158, column: 30, scope: !328)
!331 = !DILocation(line: 158, column: 13, scope: !328)
!332 = !DILocation(line: 159, column: 9, scope: !328)
!333 = !DILocation(line: 156, column: 35, scope: !321)
!334 = !DILocation(line: 156, column: 44, scope: !321)
!335 = !DILocation(line: 156, column: 54, scope: !321)
!336 = !DILocation(line: 156, column: 20, scope: !321)
!337 = !DILocation(line: 156, column: 18, scope: !321)
!338 = !DILocation(line: 154, column: 9, scope: !321)
!339 = distinct !{!339, !326, !340, !341}
!340 = !DILocation(line: 159, column: 9, scope: !315)
!341 = !{!"llvm.loop.mustprogress"}
!342 = !DILocation(line: 161, column: 9, scope: !311)
!343 = !DILocation(line: 161, column: 18, scope: !311)
!344 = !DILocation(line: 161, column: 24, scope: !311)
!345 = !DILocation(line: 162, column: 9, scope: !311)
!346 = !DILocation(line: 164, column: 9, scope: !347)
!347 = distinct !DILexicalBlock(scope: !287, file: !2, line: 164, column: 9)
!348 = !DILocation(line: 164, column: 9, scope: !287)
!349 = !DILocation(line: 165, column: 9, scope: !350)
!350 = distinct !DILexicalBlock(scope: !347, file: !2, line: 164, column: 64)
!351 = !DILocation(line: 165, column: 9, scope: !352)
!352 = distinct !DILexicalBlock(scope: !353, file: !2, line: 165, column: 9)
!353 = distinct !DILexicalBlock(scope: !350, file: !2, line: 165, column: 9)
!354 = !DILocation(line: 0, scope: !352)
!355 = !DILocation(line: 165, column: 9, scope: !353)
!356 = !DILocation(line: 165, column: 9, scope: !357)
!357 = distinct !DILexicalBlock(scope: !352, file: !2, line: 165, column: 9)
!358 = !DILocation(line: 166, column: 40, scope: !350)
!359 = !DILocation(line: 166, column: 17, scope: !350)
!360 = !DILocation(line: 167, column: 25, scope: !350)
!361 = !DILocation(line: 167, column: 34, scope: !350)
!362 = !DILocation(line: 167, column: 45, scope: !350)
!363 = !DILocation(line: 167, column: 54, scope: !350)
!364 = !DILocation(line: 167, column: 9, scope: !350)
!365 = !DILocation(line: 168, column: 26, scope: !350)
!366 = !DILocation(line: 168, column: 9, scope: !350)
!367 = !DILocation(line: 169, column: 18, scope: !350)
!368 = !DILocation(line: 169, column: 9, scope: !350)
!369 = !DILabel(scope: !350, name: "finish", file: !2, line: 170)
!370 = !DILocation(line: 170, column: 1, scope: !350)
!371 = !DILocation(line: 171, column: 30, scope: !372)
!372 = distinct !DILexicalBlock(scope: !350, file: !2, line: 171, column: 13)
!373 = !DILocation(line: 171, column: 39, scope: !372)
!374 = !DILocation(line: 171, column: 14, scope: !372)
!375 = !DILocation(line: 171, column: 13, scope: !350)
!376 = !DILocation(line: 172, column: 13, scope: !372)
!377 = !DILocation(line: 173, column: 9, scope: !350)
!378 = !DILocation(line: 173, column: 18, scope: !350)
!379 = !DILocation(line: 173, column: 24, scope: !350)
!380 = !DILocation(line: 174, column: 34, scope: !350)
!381 = !DILocation(line: 174, column: 43, scope: !350)
!382 = !DILocation(line: 174, column: 9, scope: !350)
!383 = !DILocation(line: 175, column: 29, scope: !350)
!384 = !DILocation(line: 175, column: 38, scope: !350)
!385 = !DILocation(line: 175, column: 43, scope: !350)
!386 = !DILocation(line: 175, column: 9, scope: !350)
!387 = !DILocation(line: 176, column: 9, scope: !350)
!388 = !DILocation(line: 179, column: 13, scope: !287)
!389 = !DILocation(line: 179, column: 22, scope: !287)
!390 = !DILocation(line: 179, column: 5, scope: !287)
!391 = !DILocation(line: 185, column: 17, scope: !392)
!392 = distinct !DILexicalBlock(scope: !287, file: !2, line: 179, column: 29)
!393 = !DILocation(line: 185, column: 9, scope: !392)
!394 = !DILocation(line: 188, column: 21, scope: !395)
!395 = distinct !DILexicalBlock(scope: !392, file: !2, line: 185, column: 22)
!396 = !DILocation(line: 188, column: 13, scope: !395)
!397 = !DILocation(line: 190, column: 17, scope: !398)
!398 = distinct !DILexicalBlock(scope: !395, file: !2, line: 188, column: 27)
!399 = !DILocation(line: 190, column: 26, scope: !398)
!400 = !DILocation(line: 190, column: 32, scope: !398)
!401 = !DILocation(line: 191, column: 17, scope: !398)
!402 = !DILocation(line: 193, column: 17, scope: !398)
!403 = !DILocation(line: 193, column: 17, scope: !404)
!404 = distinct !DILexicalBlock(scope: !405, file: !2, line: 193, column: 17)
!405 = distinct !DILexicalBlock(scope: !406, file: !2, line: 193, column: 17)
!406 = distinct !DILexicalBlock(scope: !398, file: !2, line: 193, column: 17)
!407 = !DILocation(line: 194, column: 13, scope: !398)
!408 = !DILocation(line: 197, column: 13, scope: !395)
!409 = !DILocation(line: 197, column: 13, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 197, column: 13)
!411 = distinct !DILexicalBlock(scope: !412, file: !2, line: 197, column: 13)
!412 = distinct !DILexicalBlock(scope: !395, file: !2, line: 197, column: 13)
!413 = !DILocation(line: 198, column: 9, scope: !395)
!414 = !DILocation(line: 204, column: 17, scope: !392)
!415 = !DILocation(line: 204, column: 9, scope: !392)
!416 = !DILocation(line: 207, column: 21, scope: !417)
!417 = distinct !DILexicalBlock(scope: !392, file: !2, line: 204, column: 22)
!418 = !DILocation(line: 207, column: 13, scope: !417)
!419 = !DILocation(line: 209, column: 45, scope: !420)
!420 = distinct !DILexicalBlock(scope: !417, file: !2, line: 207, column: 27)
!421 = !DILocation(line: 209, column: 22, scope: !420)
!422 = !DILocation(line: 210, column: 27, scope: !420)
!423 = !DILocation(line: 210, column: 25, scope: !420)
!424 = !DILocation(line: 211, column: 17, scope: !420)
!425 = !DILocation(line: 211, column: 17, scope: !426)
!426 = distinct !DILexicalBlock(scope: !427, file: !2, line: 211, column: 17)
!427 = distinct !DILexicalBlock(scope: !420, file: !2, line: 211, column: 17)
!428 = !DILocation(line: 211, column: 17, scope: !427)
!429 = !DILocation(line: 211, column: 17, scope: !430)
!430 = distinct !DILexicalBlock(scope: !426, file: !2, line: 211, column: 17)
!431 = !DILocation(line: 212, column: 34, scope: !420)
!432 = !DILocation(line: 213, column: 22, scope: !420)
!433 = !DILocation(line: 213, column: 31, scope: !420)
!434 = !DILocation(line: 213, column: 36, scope: !420)
!435 = !DILocation(line: 213, column: 45, scope: !420)
!436 = !DILocation(line: 213, column: 54, scope: !420)
!437 = !DILocation(line: 212, column: 17, scope: !420)
!438 = !DILocation(line: 214, column: 34, scope: !420)
!439 = !DILocation(line: 214, column: 43, scope: !420)
!440 = !DILocation(line: 214, column: 54, scope: !420)
!441 = !DILocation(line: 214, column: 63, scope: !420)
!442 = !DILocation(line: 215, column: 35, scope: !420)
!443 = !DILocation(line: 215, column: 44, scope: !420)
!444 = !DILocation(line: 215, column: 21, scope: !420)
!445 = !DILocation(line: 214, column: 17, scope: !420)
!446 = !DILocation(line: 216, column: 36, scope: !420)
!447 = !DILocation(line: 216, column: 45, scope: !420)
!448 = !DILocation(line: 216, column: 17, scope: !420)
!449 = !DILocation(line: 217, column: 17, scope: !420)
!450 = !DILocation(line: 219, column: 17, scope: !420)
!451 = !DILocation(line: 219, column: 17, scope: !452)
!452 = distinct !DILexicalBlock(scope: !453, file: !2, line: 219, column: 17)
!453 = distinct !DILexicalBlock(scope: !454, file: !2, line: 219, column: 17)
!454 = distinct !DILexicalBlock(scope: !420, file: !2, line: 219, column: 17)
!455 = !DILocation(line: 220, column: 13, scope: !420)
!456 = !DILocation(line: 223, column: 13, scope: !417)
!457 = !DILocation(line: 223, column: 13, scope: !458)
!458 = distinct !DILexicalBlock(scope: !459, file: !2, line: 223, column: 13)
!459 = distinct !DILexicalBlock(scope: !460, file: !2, line: 223, column: 13)
!460 = distinct !DILexicalBlock(scope: !417, file: !2, line: 223, column: 13)
!461 = !DILocation(line: 224, column: 9, scope: !417)
!462 = !DILocation(line: 230, column: 9, scope: !392)
!463 = !DILocation(line: 230, column: 9, scope: !464)
!464 = distinct !DILexicalBlock(scope: !465, file: !2, line: 230, column: 9)
!465 = distinct !DILexicalBlock(scope: !466, file: !2, line: 230, column: 9)
!466 = distinct !DILexicalBlock(scope: !392, file: !2, line: 230, column: 9)
!467 = !DILocation(line: 231, column: 5, scope: !392)
!468 = !DILocation(line: 232, column: 1, scope: !287)
!469 = distinct !DISubprogram(name: "nn_binproc_connect", scope: !2, file: !2, line: 113, type: !470, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !217)
!470 = !DISubroutineType(types: !471)
!471 = !{null, !472, !472}
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!473 = !DILocalVariable(name: "self", arg: 1, scope: !469, file: !2, line: 113, type: !472)
!474 = !DILocation(line: 113, column: 53, scope: !469)
!475 = !DILocalVariable(name: "peer", arg: 2, scope: !469, file: !2, line: 114, type: !472)
!476 = !DILocation(line: 114, column: 25, scope: !469)
!477 = !DILocalVariable(name: "binproc", scope: !469, file: !2, line: 116, type: !17)
!478 = !DILocation(line: 116, column: 24, scope: !469)
!479 = !DILocalVariable(name: "cinproc", scope: !469, file: !2, line: 117, type: !91)
!480 = !DILocation(line: 117, column: 24, scope: !469)
!481 = !DILocalVariable(name: "sinproc", scope: !469, file: !2, line: 118, type: !106)
!482 = !DILocation(line: 118, column: 24, scope: !469)
!483 = !DILocation(line: 120, column: 15, scope: !469)
!484 = !DILocation(line: 120, column: 13, scope: !469)
!485 = !DILocation(line: 121, column: 15, scope: !469)
!486 = !DILocation(line: 121, column: 13, scope: !469)
!487 = !DILocation(line: 123, column: 5, scope: !469)
!488 = !DILocation(line: 123, column: 5, scope: !489)
!489 = distinct !DILexicalBlock(scope: !490, file: !2, line: 123, column: 5)
!490 = distinct !DILexicalBlock(scope: !469, file: !2, line: 123, column: 5)
!491 = !DILocation(line: 123, column: 5, scope: !490)
!492 = !DILocation(line: 123, column: 5, scope: !493)
!493 = distinct !DILexicalBlock(scope: !489, file: !2, line: 123, column: 5)
!494 = !DILocation(line: 125, column: 15, scope: !469)
!495 = !DILocation(line: 125, column: 13, scope: !469)
!496 = !DILocation(line: 126, column: 5, scope: !469)
!497 = !DILocation(line: 126, column: 5, scope: !498)
!498 = distinct !DILexicalBlock(scope: !499, file: !2, line: 126, column: 5)
!499 = distinct !DILexicalBlock(scope: !469, file: !2, line: 126, column: 5)
!500 = !DILocation(line: 126, column: 5, scope: !499)
!501 = !DILocation(line: 126, column: 5, scope: !502)
!502 = distinct !DILexicalBlock(scope: !498, file: !2, line: 126, column: 5)
!503 = !DILocation(line: 127, column: 22, scope: !469)
!504 = !DILocation(line: 128, column: 10, scope: !469)
!505 = !DILocation(line: 128, column: 19, scope: !469)
!506 = !DILocation(line: 128, column: 24, scope: !469)
!507 = !DILocation(line: 128, column: 33, scope: !469)
!508 = !DILocation(line: 128, column: 42, scope: !469)
!509 = !DILocation(line: 127, column: 5, scope: !469)
!510 = !DILocation(line: 129, column: 22, scope: !469)
!511 = !DILocation(line: 129, column: 31, scope: !469)
!512 = !DILocation(line: 129, column: 42, scope: !469)
!513 = !DILocation(line: 129, column: 51, scope: !469)
!514 = !DILocation(line: 130, column: 23, scope: !469)
!515 = !DILocation(line: 130, column: 32, scope: !469)
!516 = !DILocation(line: 130, column: 9, scope: !469)
!517 = !DILocation(line: 129, column: 5, scope: !469)
!518 = !DILocation(line: 131, column: 25, scope: !469)
!519 = !DILocation(line: 131, column: 35, scope: !469)
!520 = !DILocation(line: 131, column: 44, scope: !469)
!521 = !DILocation(line: 131, column: 5, scope: !469)
!522 = !DILocation(line: 132, column: 1, scope: !469)
!523 = distinct !DISubprogram(name: "nn_binproc_stop", scope: !2, file: !2, line: 91, type: !69, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !217)
!524 = !DILocalVariable(name: "self", arg: 1, scope: !523, file: !2, line: 91, type: !71)
!525 = !DILocation(line: 91, column: 48, scope: !523)
!526 = !DILocalVariable(name: "binproc", scope: !523, file: !2, line: 93, type: !17)
!527 = !DILocation(line: 93, column: 24, scope: !523)
!528 = !DILocation(line: 95, column: 15, scope: !523)
!529 = !DILocation(line: 95, column: 13, scope: !523)
!530 = !DILocation(line: 97, column: 19, scope: !523)
!531 = !DILocation(line: 97, column: 28, scope: !523)
!532 = !DILocation(line: 97, column: 5, scope: !523)
!533 = !DILocation(line: 98, column: 1, scope: !523)
!534 = distinct !DISubprogram(name: "nn_binproc_destroy", scope: !2, file: !2, line: 100, type: !69, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !14, retainedNodes: !217)
!535 = !DILocalVariable(name: "self", arg: 1, scope: !534, file: !2, line: 100, type: !71)
!536 = !DILocation(line: 100, column: 51, scope: !534)
!537 = !DILocalVariable(name: "binproc", scope: !534, file: !2, line: 102, type: !17)
!538 = !DILocation(line: 102, column: 24, scope: !534)
!539 = !DILocation(line: 104, column: 15, scope: !534)
!540 = !DILocation(line: 104, column: 13, scope: !534)
!541 = !DILocation(line: 106, column: 20, scope: !534)
!542 = !DILocation(line: 106, column: 29, scope: !534)
!543 = !DILocation(line: 106, column: 5, scope: !534)
!544 = !DILocation(line: 107, column: 19, scope: !534)
!545 = !DILocation(line: 107, column: 28, scope: !534)
!546 = !DILocation(line: 107, column: 5, scope: !534)
!547 = !DILocation(line: 108, column: 24, scope: !534)
!548 = !DILocation(line: 108, column: 33, scope: !534)
!549 = !DILocation(line: 108, column: 5, scope: !534)
!550 = !DILocation(line: 110, column: 14, scope: !534)
!551 = !DILocation(line: 110, column: 5, scope: !534)
!552 = !DILocation(line: 111, column: 1, scope: !534)
