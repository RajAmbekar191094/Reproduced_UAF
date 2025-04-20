; ModuleID = './src/transports/inproc/ins.c'
source_filename = "./src/transports/inproc/ins.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ins = type { %struct.nn_mutex, %struct.nn_list, %struct.nn_list }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_list = type { ptr, ptr }
%struct.nn_ins_item = type { %struct.nn_epbase, %struct.nn_list_item, i32, i32 }
%struct.nn_epbase = type { ptr, ptr }
%struct.nn_list_item = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [30 x i8] c"sz == sizeof (self->protocol)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [30 x i8] c"./src/transports/inproc/ins.c\00", align 1, !dbg !9
@self = internal global %struct.nn_ins zeroinitializer, align 8, !dbg !11
@.str.3 = private unnamed_addr constant [21 x i8] c"citem->connects == 0\00", align 1, !dbg !50

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_item_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 !dbg !107 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !112, metadata !DIExpression()), !dbg !113
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !114, metadata !DIExpression()), !dbg !115
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata ptr %7, metadata !118, metadata !DIExpression()), !dbg !122
  %8 = load ptr, ptr %4, align 8, !dbg !123
  %9 = getelementptr inbounds %struct.nn_ins_item, ptr %8, i32 0, i32 0, !dbg !124
  %10 = load ptr, ptr %5, align 8, !dbg !125
  %11 = load ptr, ptr %6, align 8, !dbg !126
  call void @nn_epbase_init(ptr noundef %9, ptr noundef %10, ptr noundef %11), !dbg !127
  %12 = load ptr, ptr %4, align 8, !dbg !128
  %13 = getelementptr inbounds %struct.nn_ins_item, ptr %12, i32 0, i32 1, !dbg !129
  call void @nn_list_item_init(ptr noundef %13), !dbg !130
  store i64 4, ptr %7, align 8, !dbg !131
  %14 = load ptr, ptr %4, align 8, !dbg !132
  %15 = getelementptr inbounds %struct.nn_ins_item, ptr %14, i32 0, i32 0, !dbg !133
  %16 = load ptr, ptr %4, align 8, !dbg !134
  %17 = getelementptr inbounds %struct.nn_ins_item, ptr %16, i32 0, i32 2, !dbg !135
  call void @nn_epbase_getopt(ptr noundef %15, i32 noundef 0, i32 noundef 13, ptr noundef %17, ptr noundef %7), !dbg !136
  br label %18, !dbg !137

18:                                               ; preds = %3
  %19 = load i64, ptr %7, align 8, !dbg !138
  %20 = icmp eq i64 %19, 4, !dbg !138
  %21 = xor i1 %20, true, !dbg !138
  %22 = zext i1 %21 to i32, !dbg !138
  %23 = sext i32 %22 to i64, !dbg !138
  %24 = icmp ne i64 %23, 0, !dbg !138
  br i1 %24, label %25, label %28, !dbg !141

25:                                               ; preds = %18
  %26 = load ptr, ptr @stderr, align 8, !dbg !142
  %27 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %26, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 61), !dbg !142
  call void @nn_err_abort() #5, !dbg !142
  unreachable, !dbg !142

28:                                               ; preds = %18
  br label %29, !dbg !141

29:                                               ; preds = %28
  %30 = load ptr, ptr %4, align 8, !dbg !144
  %31 = getelementptr inbounds %struct.nn_ins_item, ptr %30, i32 0, i32 3, !dbg !145
  store i32 0, ptr %31, align 4, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_epbase_init(ptr noundef, ptr noundef, ptr noundef) #2

declare void @nn_list_item_init(ptr noundef) #2

declare void @nn_epbase_getopt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_item_term(ptr noundef %0) #0 !dbg !148 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !151, metadata !DIExpression()), !dbg !152
  %3 = load ptr, ptr %2, align 8, !dbg !153
  %4 = getelementptr inbounds %struct.nn_ins_item, ptr %3, i32 0, i32 1, !dbg !154
  call void @nn_list_item_term(ptr noundef %4), !dbg !155
  %5 = load ptr, ptr %2, align 8, !dbg !156
  %6 = getelementptr inbounds %struct.nn_ins_item, ptr %5, i32 0, i32 0, !dbg !157
  call void @nn_epbase_term(ptr noundef %6), !dbg !158
  ret void, !dbg !159
}

declare void @nn_list_item_term(ptr noundef) #2

declare void @nn_epbase_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_init() #0 !dbg !160 {
  call void @nn_mutex_init(ptr noundef @self), !dbg !163
  call void @nn_list_init(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !164
  call void @nn_list_init(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2)), !dbg !165
  ret void, !dbg !166
}

declare void @nn_mutex_init(ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_term() #0 !dbg !167 {
  call void @nn_list_term(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2)), !dbg !168
  call void @nn_list_term(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !169
  call void @nn_mutex_term(ptr noundef @self), !dbg !170
  ret void, !dbg !171
}

declare void @nn_list_term(ptr noundef) #2

declare void @nn_mutex_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ins_bind(ptr noundef %0, ptr noundef %1) #0 !dbg !172 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !179, metadata !DIExpression()), !dbg !180
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !181, metadata !DIExpression()), !dbg !182
  call void @llvm.dbg.declare(metadata ptr %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata ptr %7, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata ptr %8, metadata !187, metadata !DIExpression()), !dbg !188
  call void @nn_mutex_lock(ptr noundef @self), !dbg !189
  %9 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !190
  store ptr %9, ptr %6, align 8, !dbg !192
  br label %10, !dbg !193

10:                                               ; preds = %33, %2
  %11 = load ptr, ptr %6, align 8, !dbg !194
  %12 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !196
  %13 = icmp ne ptr %11, %12, !dbg !197
  br i1 %13, label %14, label %36, !dbg !198

14:                                               ; preds = %10
  %15 = load ptr, ptr %6, align 8, !dbg !199
  %16 = icmp ne ptr %15, null, !dbg !199
  br i1 %16, label %17, label %20, !dbg !199

17:                                               ; preds = %14
  %18 = load ptr, ptr %6, align 8, !dbg !199
  %19 = getelementptr inbounds i8, ptr %18, i64 -16, !dbg !199
  br label %21, !dbg !199

20:                                               ; preds = %14
  br label %21, !dbg !199

21:                                               ; preds = %20, %17
  %22 = phi ptr [ %19, %17 ], [ null, %20 ], !dbg !199
  store ptr %22, ptr %7, align 8, !dbg !201
  %23 = load ptr, ptr %4, align 8, !dbg !202
  %24 = getelementptr inbounds %struct.nn_ins_item, ptr %23, i32 0, i32 0, !dbg !204
  %25 = call ptr @nn_epbase_getaddr(ptr noundef %24), !dbg !205
  %26 = load ptr, ptr %7, align 8, !dbg !206
  %27 = getelementptr inbounds %struct.nn_ins_item, ptr %26, i32 0, i32 0, !dbg !207
  %28 = call ptr @nn_epbase_getaddr(ptr noundef %27), !dbg !208
  %29 = call i32 @strncmp(ptr noundef %25, ptr noundef %28, i64 noundef 128) #6, !dbg !209
  %30 = icmp eq i32 %29, 0, !dbg !210
  br i1 %30, label %31, label %32, !dbg !211

31:                                               ; preds = %21
  call void @nn_mutex_unlock(ptr noundef @self), !dbg !212
  store i32 -98, ptr %3, align 4, !dbg !214
  br label %96, !dbg !214

32:                                               ; preds = %21
  br label %33, !dbg !215

33:                                               ; preds = %32
  %34 = load ptr, ptr %6, align 8, !dbg !216
  %35 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1), ptr noundef %34), !dbg !217
  store ptr %35, ptr %6, align 8, !dbg !218
  br label %10, !dbg !219, !llvm.loop !220

36:                                               ; preds = %10
  %37 = load ptr, ptr %4, align 8, !dbg !223
  %38 = getelementptr inbounds %struct.nn_ins_item, ptr %37, i32 0, i32 1, !dbg !224
  %39 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !225
  call void @nn_list_insert(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1), ptr noundef %38, ptr noundef %39), !dbg !226
  %40 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2)), !dbg !227
  store ptr %40, ptr %6, align 8, !dbg !229
  br label %41, !dbg !230

41:                                               ; preds = %92, %36
  %42 = load ptr, ptr %6, align 8, !dbg !231
  %43 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2)), !dbg !233
  %44 = icmp ne ptr %42, %43, !dbg !234
  br i1 %44, label %45, label %95, !dbg !235

45:                                               ; preds = %41
  %46 = load ptr, ptr %6, align 8, !dbg !236
  %47 = icmp ne ptr %46, null, !dbg !236
  br i1 %47, label %48, label %51, !dbg !236

48:                                               ; preds = %45
  %49 = load ptr, ptr %6, align 8, !dbg !236
  %50 = getelementptr inbounds i8, ptr %49, i64 -16, !dbg !236
  br label %52, !dbg !236

51:                                               ; preds = %45
  br label %52, !dbg !236

52:                                               ; preds = %51, %48
  %53 = phi ptr [ %50, %48 ], [ null, %51 ], !dbg !236
  store ptr %53, ptr %8, align 8, !dbg !238
  %54 = load ptr, ptr %4, align 8, !dbg !239
  %55 = getelementptr inbounds %struct.nn_ins_item, ptr %54, i32 0, i32 0, !dbg !241
  %56 = call ptr @nn_epbase_getaddr(ptr noundef %55), !dbg !242
  %57 = load ptr, ptr %8, align 8, !dbg !243
  %58 = getelementptr inbounds %struct.nn_ins_item, ptr %57, i32 0, i32 0, !dbg !244
  %59 = call ptr @nn_epbase_getaddr(ptr noundef %58), !dbg !245
  %60 = call i32 @strncmp(ptr noundef %56, ptr noundef %59, i64 noundef 128) #6, !dbg !246
  %61 = icmp eq i32 %60, 0, !dbg !247
  br i1 %61, label %62, label %91, !dbg !248

62:                                               ; preds = %52
  %63 = load ptr, ptr %4, align 8, !dbg !249
  %64 = getelementptr inbounds %struct.nn_ins_item, ptr %63, i32 0, i32 0, !dbg !252
  %65 = load ptr, ptr %8, align 8, !dbg !253
  %66 = getelementptr inbounds %struct.nn_ins_item, ptr %65, i32 0, i32 2, !dbg !254
  %67 = load i32, ptr %66, align 8, !dbg !254
  %68 = call i32 @nn_epbase_ispeer(ptr noundef %64, i32 noundef %67), !dbg !255
  %69 = icmp ne i32 %68, 0, !dbg !255
  br i1 %69, label %71, label %70, !dbg !256

70:                                               ; preds = %62
  br label %92, !dbg !257

71:                                               ; preds = %62
  br label %72, !dbg !258

72:                                               ; preds = %71
  %73 = load ptr, ptr %8, align 8, !dbg !259
  %74 = getelementptr inbounds %struct.nn_ins_item, ptr %73, i32 0, i32 3, !dbg !259
  %75 = load i32, ptr %74, align 4, !dbg !259
  %76 = icmp eq i32 %75, 0, !dbg !259
  %77 = xor i1 %76, true, !dbg !259
  %78 = zext i1 %77 to i32, !dbg !259
  %79 = sext i32 %78 to i64, !dbg !259
  %80 = icmp ne i64 %79, 0, !dbg !259
  br i1 %80, label %81, label %84, !dbg !262

81:                                               ; preds = %72
  %82 = load ptr, ptr @stderr, align 8, !dbg !263
  %83 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %82, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 120), !dbg !263
  call void @nn_err_abort() #5, !dbg !263
  unreachable, !dbg !263

84:                                               ; preds = %72
  br label %85, !dbg !262

85:                                               ; preds = %84
  %86 = load ptr, ptr %8, align 8, !dbg !265
  %87 = getelementptr inbounds %struct.nn_ins_item, ptr %86, i32 0, i32 3, !dbg !266
  store i32 1, ptr %87, align 4, !dbg !267
  %88 = load ptr, ptr %5, align 8, !dbg !268
  %89 = load ptr, ptr %4, align 8, !dbg !269
  %90 = load ptr, ptr %8, align 8, !dbg !270
  call void %88(ptr noundef %89, ptr noundef %90), !dbg !268
  br label %91, !dbg !271

91:                                               ; preds = %85, %52
  br label %92, !dbg !272

92:                                               ; preds = %91, %70
  %93 = load ptr, ptr %6, align 8, !dbg !273
  %94 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2), ptr noundef %93), !dbg !274
  store ptr %94, ptr %6, align 8, !dbg !275
  br label %41, !dbg !276, !llvm.loop !277

95:                                               ; preds = %41
  call void @nn_mutex_unlock(ptr noundef @self), !dbg !279
  store i32 0, ptr %3, align 4, !dbg !280
  br label %96, !dbg !280

96:                                               ; preds = %95, %31
  %97 = load i32, ptr %3, align 4, !dbg !281
  ret i32 %97, !dbg !281
}

declare void @nn_mutex_lock(ptr noundef) #2

declare ptr @nn_list_begin(ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

declare ptr @nn_epbase_getaddr(ptr noundef) #2

declare void @nn_mutex_unlock(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @nn_epbase_ispeer(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_connect(ptr noundef %0, ptr noundef %1) #0 !dbg !282 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !285, metadata !DIExpression()), !dbg !286
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata ptr %5, metadata !289, metadata !DIExpression()), !dbg !290
  call void @llvm.dbg.declare(metadata ptr %6, metadata !291, metadata !DIExpression()), !dbg !292
  call void @nn_mutex_lock(ptr noundef @self), !dbg !293
  %7 = load ptr, ptr %3, align 8, !dbg !294
  %8 = getelementptr inbounds %struct.nn_ins_item, ptr %7, i32 0, i32 1, !dbg !295
  %9 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2)), !dbg !296
  call void @nn_list_insert(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2), ptr noundef %8, ptr noundef %9), !dbg !297
  %10 = call ptr @nn_list_begin(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !298
  store ptr %10, ptr %5, align 8, !dbg !300
  br label %11, !dbg !301

11:                                               ; preds = %50, %2
  %12 = load ptr, ptr %5, align 8, !dbg !302
  %13 = call ptr @nn_list_end(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1)), !dbg !304
  %14 = icmp ne ptr %12, %13, !dbg !305
  br i1 %14, label %15, label %53, !dbg !306

15:                                               ; preds = %11
  %16 = load ptr, ptr %5, align 8, !dbg !307
  %17 = icmp ne ptr %16, null, !dbg !307
  br i1 %17, label %18, label %21, !dbg !307

18:                                               ; preds = %15
  %19 = load ptr, ptr %5, align 8, !dbg !307
  %20 = getelementptr inbounds i8, ptr %19, i64 -16, !dbg !307
  br label %22, !dbg !307

21:                                               ; preds = %15
  br label %22, !dbg !307

22:                                               ; preds = %21, %18
  %23 = phi ptr [ %20, %18 ], [ null, %21 ], !dbg !307
  store ptr %23, ptr %6, align 8, !dbg !309
  %24 = load ptr, ptr %3, align 8, !dbg !310
  %25 = getelementptr inbounds %struct.nn_ins_item, ptr %24, i32 0, i32 0, !dbg !312
  %26 = call ptr @nn_epbase_getaddr(ptr noundef %25), !dbg !313
  %27 = load ptr, ptr %6, align 8, !dbg !314
  %28 = getelementptr inbounds %struct.nn_ins_item, ptr %27, i32 0, i32 0, !dbg !315
  %29 = call ptr @nn_epbase_getaddr(ptr noundef %28), !dbg !316
  %30 = call i32 @strncmp(ptr noundef %26, ptr noundef %29, i64 noundef 128) #6, !dbg !317
  %31 = icmp eq i32 %30, 0, !dbg !318
  br i1 %31, label %32, label %49, !dbg !319

32:                                               ; preds = %22
  %33 = load ptr, ptr %3, align 8, !dbg !320
  %34 = getelementptr inbounds %struct.nn_ins_item, ptr %33, i32 0, i32 0, !dbg !323
  %35 = load ptr, ptr %6, align 8, !dbg !324
  %36 = getelementptr inbounds %struct.nn_ins_item, ptr %35, i32 0, i32 2, !dbg !325
  %37 = load i32, ptr %36, align 8, !dbg !325
  %38 = call i32 @nn_epbase_ispeer(ptr noundef %34, i32 noundef %37), !dbg !326
  %39 = icmp ne i32 %38, 0, !dbg !326
  br i1 %39, label %41, label %40, !dbg !327

40:                                               ; preds = %32
  br label %53, !dbg !328

41:                                               ; preds = %32
  %42 = load ptr, ptr %6, align 8, !dbg !329
  %43 = getelementptr inbounds %struct.nn_ins_item, ptr %42, i32 0, i32 3, !dbg !330
  %44 = load i32, ptr %43, align 4, !dbg !331
  %45 = add nsw i32 %44, 1, !dbg !331
  store i32 %45, ptr %43, align 4, !dbg !331
  %46 = load ptr, ptr %4, align 8, !dbg !332
  %47 = load ptr, ptr %3, align 8, !dbg !333
  %48 = load ptr, ptr %6, align 8, !dbg !334
  call void %46(ptr noundef %47, ptr noundef %48), !dbg !332
  br label %53, !dbg !335

49:                                               ; preds = %22
  br label %50, !dbg !336

50:                                               ; preds = %49
  %51 = load ptr, ptr %5, align 8, !dbg !337
  %52 = call ptr @nn_list_next(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1), ptr noundef %51), !dbg !338
  store ptr %52, ptr %5, align 8, !dbg !339
  br label %11, !dbg !340, !llvm.loop !341

53:                                               ; preds = %41, %40, %11
  call void @nn_mutex_unlock(ptr noundef @self), !dbg !343
  ret void, !dbg !344
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_disconnect(ptr noundef %0) #0 !dbg !345 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !346, metadata !DIExpression()), !dbg !347
  call void @nn_mutex_lock(ptr noundef @self), !dbg !348
  %3 = load ptr, ptr %2, align 8, !dbg !349
  %4 = getelementptr inbounds %struct.nn_ins_item, ptr %3, i32 0, i32 1, !dbg !350
  %5 = call ptr @nn_list_erase(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 2), ptr noundef %4), !dbg !351
  call void @nn_mutex_unlock(ptr noundef @self), !dbg !352
  ret void, !dbg !353
}

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ins_unbind(ptr noundef %0) #0 !dbg !354 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !355, metadata !DIExpression()), !dbg !356
  call void @nn_mutex_lock(ptr noundef @self), !dbg !357
  %3 = load ptr, ptr %2, align 8, !dbg !358
  %4 = getelementptr inbounds %struct.nn_ins_item, ptr %3, i32 0, i32 1, !dbg !359
  %5 = call ptr @nn_list_erase(ptr noundef getelementptr inbounds (%struct.nn_ins, ptr @self, i32 0, i32 1), ptr noundef %4), !dbg !360
  call void @nn_mutex_unlock(ptr noundef @self), !dbg !361
  ret void, !dbg !362
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/transports/inproc/ins.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "647f6c89fef818386564fd19cca23b1f")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!9 = !DIGlobalVariableExpression(var: !10, expr: !DIExpression())
!10 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !3, isLocal: true, isDefinition: true)
!11 = !DIGlobalVariableExpression(var: !12, expr: !DIExpression())
!12 = distinct !DIGlobalVariable(name: "self", scope: !13, file: !2, line: 49, type: !55, isLocal: true, isDefinition: true)
!13 = distinct !DICompileUnit(language: DW_LANG_C11, file: !14, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !15, globals: !49, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "src/transports/inproc/ins.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "647f6c89fef818386564fd19cca23b1f")
!15 = !{!16, !48}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ins_item", file: !18, line: 32, size: 320, elements: !19)
!18 = !DIFile(filename: "./src/transports/inproc/ins.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "9cbc2b057431ba3dad53f44debf178b0")
!19 = !{!20, !38, !45, !47}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !17, file: !18, line: 35, baseType: !21, size: 128)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !22, line: 81, size: 128, elements: !23)
!22 = !DIFile(filename: "./src/transports/inproc/../../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!23 = !{!24, !35}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !21, file: !22, line: 82, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !22, line: 70, size: 128, elements: !28)
!28 = !{!29, !34}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !27, file: !22, line: 75, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33}
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !27, file: !22, line: 78, baseType: !30, size: 64, offset: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !21, file: !22, line: 83, baseType: !36, size: 64, offset: 64)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !22, line: 83, flags: DIFlagFwdDecl)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !17, file: !18, line: 38, baseType: !39, size: 128, offset: 128)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !40, line: 26, size: 128, elements: !41)
!40 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!41 = !{!42, !44}
!42 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !39, file: !40, line: 27, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !39, file: !40, line: 28, baseType: !43, size: 64, offset: 64)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !17, file: !18, line: 42, baseType: !46, size: 32, offset: 256)
!46 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "connects", scope: !17, file: !18, line: 46, baseType: !46, size: 32, offset: 288)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!49 = !{!0, !7, !9, !50, !11}
!50 = !DIGlobalVariableExpression(var: !51, expr: !DIExpression())
!51 = distinct !DIGlobalVariable(scope: null, file: !2, line: 120, type: !52, isLocal: true, isDefinition: true)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 21)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ins", file: !2, line: 33, size: 576, elements: !56)
!56 = !{!57, !93, !98}
!57 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !55, file: !2, line: 36, baseType: !58, size: 320)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !59, line: 32, size: 320, elements: !60)
!59 = !DIFile(filename: "./src/transports/inproc/../../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !58, file: !59, line: 36, baseType: !62, size: 320)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !63, line: 72, baseType: !64)
!63 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!64 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !63, line: 67, size: 320, elements: !65)
!65 = !{!66, !87, !91}
!66 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !64, file: !63, line: 69, baseType: !67, size: 320)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !68, line: 22, size: 320, elements: !69)
!68 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!69 = !{!70, !71, !73, !74, !75, !76, !78, !79}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !67, file: !68, line: 24, baseType: !46, size: 32)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !67, file: !68, line: 25, baseType: !72, size: 32, offset: 32)
!72 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !67, file: !68, line: 26, baseType: !46, size: 32, offset: 64)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !67, file: !68, line: 28, baseType: !72, size: 32, offset: 96)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !67, file: !68, line: 32, baseType: !46, size: 32, offset: 128)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !67, file: !68, line: 34, baseType: !77, size: 16, offset: 160)
!77 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !67, file: !68, line: 35, baseType: !77, size: 16, offset: 176)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !67, file: !68, line: 36, baseType: !80, size: 128, offset: 192)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !81, line: 55, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !81, line: 51, size: 128, elements: !83)
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !82, file: !81, line: 53, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !82, file: !81, line: 54, baseType: !85, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !64, file: !63, line: 70, baseType: !88, size: 320)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 40)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !64, file: !63, line: 71, baseType: !92, size: 64)
!92 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "bound", scope: !55, file: !2, line: 40, baseType: !94, size: 128, offset: 320)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !40, line: 31, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !94, file: !40, line: 32, baseType: !43, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !94, file: !40, line: 33, baseType: !43, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "connected", scope: !55, file: !2, line: 44, baseType: !94, size: 128, offset: 448)
!99 = !{i32 7, !"Dwarf Version", i32 5}
!100 = !{i32 2, !"Debug Info Version", i32 3}
!101 = !{i32 1, !"wchar_size", i32 4}
!102 = !{i32 8, !"PIC Level", i32 2}
!103 = !{i32 7, !"PIE Level", i32 2}
!104 = !{i32 7, !"uwtable", i32 2}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 16.0.0"}
!107 = distinct !DISubprogram(name: "nn_ins_item_init", scope: !2, file: !2, line: 51, type: !108, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !16, !25, !110}
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!111 = !{}
!112 = !DILocalVariable(name: "self", arg: 1, scope: !107, file: !2, line: 51, type: !16)
!113 = !DILocation(line: 51, column: 44, scope: !107)
!114 = !DILocalVariable(name: "vfptr", arg: 2, scope: !107, file: !2, line: 52, type: !25)
!115 = !DILocation(line: 52, column: 35, scope: !107)
!116 = !DILocalVariable(name: "hint", arg: 3, scope: !107, file: !2, line: 52, type: !110)
!117 = !DILocation(line: 52, column: 48, scope: !107)
!118 = !DILocalVariable(name: "sz", scope: !107, file: !2, line: 54, type: !119)
!119 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 46, baseType: !121)
!120 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!121 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!122 = !DILocation(line: 54, column: 12, scope: !107)
!123 = !DILocation(line: 56, column: 22, scope: !107)
!124 = !DILocation(line: 56, column: 28, scope: !107)
!125 = !DILocation(line: 56, column: 36, scope: !107)
!126 = !DILocation(line: 56, column: 43, scope: !107)
!127 = !DILocation(line: 56, column: 5, scope: !107)
!128 = !DILocation(line: 57, column: 25, scope: !107)
!129 = !DILocation(line: 57, column: 31, scope: !107)
!130 = !DILocation(line: 57, column: 5, scope: !107)
!131 = !DILocation(line: 58, column: 8, scope: !107)
!132 = !DILocation(line: 59, column: 24, scope: !107)
!133 = !DILocation(line: 59, column: 30, scope: !107)
!134 = !DILocation(line: 60, column: 10, scope: !107)
!135 = !DILocation(line: 60, column: 16, scope: !107)
!136 = !DILocation(line: 59, column: 5, scope: !107)
!137 = !DILocation(line: 61, column: 5, scope: !107)
!138 = !DILocation(line: 61, column: 5, scope: !139)
!139 = distinct !DILexicalBlock(scope: !140, file: !2, line: 61, column: 5)
!140 = distinct !DILexicalBlock(scope: !107, file: !2, line: 61, column: 5)
!141 = !DILocation(line: 61, column: 5, scope: !140)
!142 = !DILocation(line: 61, column: 5, scope: !143)
!143 = distinct !DILexicalBlock(scope: !139, file: !2, line: 61, column: 5)
!144 = !DILocation(line: 62, column: 5, scope: !107)
!145 = !DILocation(line: 62, column: 11, scope: !107)
!146 = !DILocation(line: 62, column: 20, scope: !107)
!147 = !DILocation(line: 63, column: 1, scope: !107)
!148 = distinct !DISubprogram(name: "nn_ins_item_term", scope: !2, file: !2, line: 65, type: !149, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!149 = !DISubroutineType(types: !150)
!150 = !{null, !16}
!151 = !DILocalVariable(name: "self", arg: 1, scope: !148, file: !2, line: 65, type: !16)
!152 = !DILocation(line: 65, column: 44, scope: !148)
!153 = !DILocation(line: 67, column: 25, scope: !148)
!154 = !DILocation(line: 67, column: 31, scope: !148)
!155 = !DILocation(line: 67, column: 5, scope: !148)
!156 = !DILocation(line: 68, column: 22, scope: !148)
!157 = !DILocation(line: 68, column: 28, scope: !148)
!158 = !DILocation(line: 68, column: 5, scope: !148)
!159 = !DILocation(line: 69, column: 1, scope: !148)
!160 = distinct !DISubprogram(name: "nn_ins_init", scope: !2, file: !2, line: 71, type: !161, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!161 = !DISubroutineType(types: !162)
!162 = !{null}
!163 = !DILocation(line: 73, column: 5, scope: !160)
!164 = !DILocation(line: 74, column: 5, scope: !160)
!165 = !DILocation(line: 75, column: 5, scope: !160)
!166 = !DILocation(line: 76, column: 1, scope: !160)
!167 = distinct !DISubprogram(name: "nn_ins_term", scope: !2, file: !2, line: 77, type: !161, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!168 = !DILocation(line: 79, column: 5, scope: !167)
!169 = !DILocation(line: 80, column: 5, scope: !167)
!170 = !DILocation(line: 81, column: 5, scope: !167)
!171 = !DILocation(line: 82, column: 1, scope: !167)
!172 = distinct !DISubprogram(name: "nn_ins_bind", scope: !2, file: !2, line: 84, type: !173, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!173 = !DISubroutineType(types: !174)
!174 = !{!46, !16, !175}
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ins_fn", file: !18, line: 56, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DISubroutineType(types: !178)
!178 = !{null, !16, !16}
!179 = !DILocalVariable(name: "item", arg: 1, scope: !172, file: !2, line: 84, type: !16)
!180 = !DILocation(line: 84, column: 38, scope: !172)
!181 = !DILocalVariable(name: "fn", arg: 2, scope: !172, file: !2, line: 84, type: !175)
!182 = !DILocation(line: 84, column: 54, scope: !172)
!183 = !DILocalVariable(name: "it", scope: !172, file: !2, line: 86, type: !43)
!184 = !DILocation(line: 86, column: 26, scope: !172)
!185 = !DILocalVariable(name: "bitem", scope: !172, file: !2, line: 87, type: !16)
!186 = !DILocation(line: 87, column: 25, scope: !172)
!187 = !DILocalVariable(name: "citem", scope: !172, file: !2, line: 88, type: !16)
!188 = !DILocation(line: 88, column: 25, scope: !172)
!189 = !DILocation(line: 90, column: 5, scope: !172)
!190 = !DILocation(line: 94, column: 15, scope: !191)
!191 = distinct !DILexicalBlock(scope: !172, file: !2, line: 94, column: 5)
!192 = !DILocation(line: 94, column: 13, scope: !191)
!193 = !DILocation(line: 94, column: 10, scope: !191)
!194 = !DILocation(line: 94, column: 44, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !2, line: 94, column: 5)
!196 = !DILocation(line: 94, column: 50, scope: !195)
!197 = !DILocation(line: 94, column: 47, scope: !195)
!198 = !DILocation(line: 94, column: 5, scope: !191)
!199 = !DILocation(line: 96, column: 17, scope: !200)
!200 = distinct !DILexicalBlock(scope: !195, file: !2, line: 95, column: 48)
!201 = !DILocation(line: 96, column: 15, scope: !200)
!202 = !DILocation(line: 97, column: 42, scope: !203)
!203 = distinct !DILexicalBlock(scope: !200, file: !2, line: 97, column: 13)
!204 = !DILocation(line: 97, column: 48, scope: !203)
!205 = !DILocation(line: 97, column: 22, scope: !203)
!206 = !DILocation(line: 98, column: 35, scope: !203)
!207 = !DILocation(line: 98, column: 42, scope: !203)
!208 = !DILocation(line: 98, column: 15, scope: !203)
!209 = !DILocation(line: 97, column: 13, scope: !203)
!210 = !DILocation(line: 98, column: 68, scope: !203)
!211 = !DILocation(line: 97, column: 13, scope: !200)
!212 = !DILocation(line: 99, column: 13, scope: !213)
!213 = distinct !DILexicalBlock(scope: !203, file: !2, line: 98, column: 74)
!214 = !DILocation(line: 100, column: 13, scope: !213)
!215 = !DILocation(line: 102, column: 5, scope: !200)
!216 = !DILocation(line: 95, column: 43, scope: !195)
!217 = !DILocation(line: 95, column: 16, scope: !195)
!218 = !DILocation(line: 95, column: 14, scope: !195)
!219 = !DILocation(line: 94, column: 5, scope: !195)
!220 = distinct !{!220, !198, !221, !222}
!221 = !DILocation(line: 102, column: 5, scope: !191)
!222 = !{!"llvm.loop.mustprogress"}
!223 = !DILocation(line: 105, column: 35, scope: !172)
!224 = !DILocation(line: 105, column: 41, scope: !172)
!225 = !DILocation(line: 106, column: 9, scope: !172)
!226 = !DILocation(line: 105, column: 5, scope: !172)
!227 = !DILocation(line: 109, column: 15, scope: !228)
!228 = distinct !DILexicalBlock(scope: !172, file: !2, line: 109, column: 5)
!229 = !DILocation(line: 109, column: 13, scope: !228)
!230 = !DILocation(line: 109, column: 10, scope: !228)
!231 = !DILocation(line: 110, column: 11, scope: !232)
!232 = distinct !DILexicalBlock(scope: !228, file: !2, line: 109, column: 5)
!233 = !DILocation(line: 110, column: 17, scope: !232)
!234 = !DILocation(line: 110, column: 14, scope: !232)
!235 = !DILocation(line: 109, column: 5, scope: !228)
!236 = !DILocation(line: 112, column: 17, scope: !237)
!237 = distinct !DILexicalBlock(scope: !232, file: !2, line: 111, column: 52)
!238 = !DILocation(line: 112, column: 15, scope: !237)
!239 = !DILocation(line: 113, column: 42, scope: !240)
!240 = distinct !DILexicalBlock(scope: !237, file: !2, line: 113, column: 13)
!241 = !DILocation(line: 113, column: 48, scope: !240)
!242 = !DILocation(line: 113, column: 22, scope: !240)
!243 = !DILocation(line: 114, column: 35, scope: !240)
!244 = !DILocation(line: 114, column: 42, scope: !240)
!245 = !DILocation(line: 114, column: 15, scope: !240)
!246 = !DILocation(line: 113, column: 13, scope: !240)
!247 = !DILocation(line: 114, column: 68, scope: !240)
!248 = !DILocation(line: 113, column: 13, scope: !237)
!249 = !DILocation(line: 117, column: 37, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !2, line: 117, column: 17)
!251 = distinct !DILexicalBlock(scope: !240, file: !2, line: 114, column: 74)
!252 = !DILocation(line: 117, column: 43, scope: !250)
!253 = !DILocation(line: 117, column: 51, scope: !250)
!254 = !DILocation(line: 117, column: 58, scope: !250)
!255 = !DILocation(line: 117, column: 18, scope: !250)
!256 = !DILocation(line: 117, column: 17, scope: !251)
!257 = !DILocation(line: 118, column: 17, scope: !250)
!258 = !DILocation(line: 120, column: 13, scope: !251)
!259 = !DILocation(line: 120, column: 13, scope: !260)
!260 = distinct !DILexicalBlock(scope: !261, file: !2, line: 120, column: 13)
!261 = distinct !DILexicalBlock(scope: !251, file: !2, line: 120, column: 13)
!262 = !DILocation(line: 120, column: 13, scope: !261)
!263 = !DILocation(line: 120, column: 13, scope: !264)
!264 = distinct !DILexicalBlock(scope: !260, file: !2, line: 120, column: 13)
!265 = !DILocation(line: 121, column: 13, scope: !251)
!266 = !DILocation(line: 121, column: 20, scope: !251)
!267 = !DILocation(line: 121, column: 29, scope: !251)
!268 = !DILocation(line: 122, column: 13, scope: !251)
!269 = !DILocation(line: 122, column: 17, scope: !251)
!270 = !DILocation(line: 122, column: 23, scope: !251)
!271 = !DILocation(line: 123, column: 9, scope: !251)
!272 = !DILocation(line: 124, column: 5, scope: !237)
!273 = !DILocation(line: 111, column: 47, scope: !232)
!274 = !DILocation(line: 111, column: 16, scope: !232)
!275 = !DILocation(line: 111, column: 14, scope: !232)
!276 = !DILocation(line: 109, column: 5, scope: !232)
!277 = distinct !{!277, !235, !278, !222}
!278 = !DILocation(line: 124, column: 5, scope: !228)
!279 = !DILocation(line: 126, column: 5, scope: !172)
!280 = !DILocation(line: 128, column: 5, scope: !172)
!281 = !DILocation(line: 129, column: 1, scope: !172)
!282 = distinct !DISubprogram(name: "nn_ins_connect", scope: !2, file: !2, line: 131, type: !283, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!283 = !DISubroutineType(types: !284)
!284 = !{null, !16, !175}
!285 = !DILocalVariable(name: "item", arg: 1, scope: !282, file: !2, line: 131, type: !16)
!286 = !DILocation(line: 131, column: 42, scope: !282)
!287 = !DILocalVariable(name: "fn", arg: 2, scope: !282, file: !2, line: 131, type: !175)
!288 = !DILocation(line: 131, column: 58, scope: !282)
!289 = !DILocalVariable(name: "it", scope: !282, file: !2, line: 133, type: !43)
!290 = !DILocation(line: 133, column: 26, scope: !282)
!291 = !DILocalVariable(name: "bitem", scope: !282, file: !2, line: 134, type: !16)
!292 = !DILocation(line: 134, column: 25, scope: !282)
!293 = !DILocation(line: 136, column: 5, scope: !282)
!294 = !DILocation(line: 139, column: 39, scope: !282)
!295 = !DILocation(line: 139, column: 45, scope: !282)
!296 = !DILocation(line: 140, column: 9, scope: !282)
!297 = !DILocation(line: 139, column: 5, scope: !282)
!298 = !DILocation(line: 143, column: 15, scope: !299)
!299 = distinct !DILexicalBlock(scope: !282, file: !2, line: 143, column: 5)
!300 = !DILocation(line: 143, column: 13, scope: !299)
!301 = !DILocation(line: 143, column: 10, scope: !299)
!302 = !DILocation(line: 144, column: 11, scope: !303)
!303 = distinct !DILexicalBlock(scope: !299, file: !2, line: 143, column: 5)
!304 = !DILocation(line: 144, column: 17, scope: !303)
!305 = !DILocation(line: 144, column: 14, scope: !303)
!306 = !DILocation(line: 143, column: 5, scope: !299)
!307 = !DILocation(line: 146, column: 17, scope: !308)
!308 = distinct !DILexicalBlock(scope: !303, file: !2, line: 145, column: 48)
!309 = !DILocation(line: 146, column: 15, scope: !308)
!310 = !DILocation(line: 147, column: 42, scope: !311)
!311 = distinct !DILexicalBlock(scope: !308, file: !2, line: 147, column: 13)
!312 = !DILocation(line: 147, column: 48, scope: !311)
!313 = !DILocation(line: 147, column: 22, scope: !311)
!314 = !DILocation(line: 148, column: 35, scope: !311)
!315 = !DILocation(line: 148, column: 42, scope: !311)
!316 = !DILocation(line: 148, column: 15, scope: !311)
!317 = !DILocation(line: 147, column: 13, scope: !311)
!318 = !DILocation(line: 148, column: 68, scope: !311)
!319 = !DILocation(line: 147, column: 13, scope: !308)
!320 = !DILocation(line: 151, column: 37, scope: !321)
!321 = distinct !DILexicalBlock(scope: !322, file: !2, line: 151, column: 17)
!322 = distinct !DILexicalBlock(scope: !311, file: !2, line: 148, column: 74)
!323 = !DILocation(line: 151, column: 43, scope: !321)
!324 = !DILocation(line: 151, column: 51, scope: !321)
!325 = !DILocation(line: 151, column: 58, scope: !321)
!326 = !DILocation(line: 151, column: 18, scope: !321)
!327 = !DILocation(line: 151, column: 17, scope: !322)
!328 = !DILocation(line: 152, column: 17, scope: !321)
!329 = !DILocation(line: 155, column: 15, scope: !322)
!330 = !DILocation(line: 155, column: 22, scope: !322)
!331 = !DILocation(line: 155, column: 13, scope: !322)
!332 = !DILocation(line: 156, column: 13, scope: !322)
!333 = !DILocation(line: 156, column: 17, scope: !322)
!334 = !DILocation(line: 156, column: 23, scope: !322)
!335 = !DILocation(line: 158, column: 13, scope: !322)
!336 = !DILocation(line: 160, column: 5, scope: !308)
!337 = !DILocation(line: 145, column: 43, scope: !303)
!338 = !DILocation(line: 145, column: 16, scope: !303)
!339 = !DILocation(line: 145, column: 14, scope: !303)
!340 = !DILocation(line: 143, column: 5, scope: !303)
!341 = distinct !{!341, !306, !342, !222}
!342 = !DILocation(line: 160, column: 5, scope: !299)
!343 = !DILocation(line: 162, column: 5, scope: !282)
!344 = !DILocation(line: 163, column: 1, scope: !282)
!345 = distinct !DISubprogram(name: "nn_ins_disconnect", scope: !2, file: !2, line: 165, type: !149, scopeLine: 166, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!346 = !DILocalVariable(name: "item", arg: 1, scope: !345, file: !2, line: 165, type: !16)
!347 = !DILocation(line: 165, column: 45, scope: !345)
!348 = !DILocation(line: 167, column: 5, scope: !345)
!349 = !DILocation(line: 168, column: 38, scope: !345)
!350 = !DILocation(line: 168, column: 44, scope: !345)
!351 = !DILocation(line: 168, column: 5, scope: !345)
!352 = !DILocation(line: 169, column: 5, scope: !345)
!353 = !DILocation(line: 170, column: 1, scope: !345)
!354 = distinct !DISubprogram(name: "nn_ins_unbind", scope: !2, file: !2, line: 172, type: !149, scopeLine: 173, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !111)
!355 = !DILocalVariable(name: "item", arg: 1, scope: !354, file: !2, line: 172, type: !16)
!356 = !DILocation(line: 172, column: 41, scope: !354)
!357 = !DILocation(line: 174, column: 5, scope: !354)
!358 = !DILocation(line: 175, column: 34, scope: !354)
!359 = !DILocation(line: 175, column: 40, scope: !354)
!360 = !DILocation(line: 175, column: 5, scope: !354)
!361 = !DILocation(line: 176, column: 5, scope: !354)
!362 = !DILocation(line: 177, column: 1, scope: !354)
