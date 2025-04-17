; ModuleID = '/home/raj/coturn/src/apps/relay/turn_ports.c'
source_filename = "/home/raj/coturn/src/apps/relay/turn_ports.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._turnipports = type { ptr, i16, i16, %struct._ur_addr_map, %struct._ur_addr_map, %struct._turn_mutex }
%struct._ur_addr_map = type { [1024 x %struct._addr_list_header], i64 }
%struct._addr_list_header = type { [4 x %struct._addr_elem], ptr, i64 }
%struct._addr_elem = type { %union.ioa_addr, i64 }
%union.ioa_addr = type { %struct.sockaddr_in6 }
%struct.sockaddr_in6 = type { i16, i16, i32, %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon }
%union.anon = type { [4 x i32] }
%struct._turn_mutex = type { i32, ptr }
%struct._turnports = type { [65536 x i32], i32, i32, i16, i16, [65536 x i16], %struct._turn_mutex }

@.str = private unnamed_addr constant [45 x i8] c"/home/raj/coturn/src/apps/relay/turn_ports.c\00", align 1, !dbg !0
@__FUNCTION__.turnipports_create = private unnamed_addr constant [19 x i8] c"turnipports_create\00", align 1, !dbg !7
@turnipports_singleton = internal global ptr null, align 8, !dbg !13
@__FUNCTION__.turnports_create = private unnamed_addr constant [17 x i8] c"turnports_create\00", align 1, !dbg !154

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @turnipports_create(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 !dbg !167 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !171, metadata !DIExpression()), !dbg !172
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !173, metadata !DIExpression()), !dbg !174
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata ptr %7, metadata !177, metadata !DIExpression()), !dbg !178
  %8 = load ptr, ptr %4, align 8, !dbg !179
  %9 = call ptr @allocate_super_memory_region_func(ptr noundef %8, i64 noundef 360496, ptr noundef @.str, ptr noundef @__FUNCTION__.turnipports_create, i32 noundef 306), !dbg !179
  store ptr %9, ptr %7, align 8, !dbg !178
  %10 = load ptr, ptr %4, align 8, !dbg !180
  %11 = load ptr, ptr %7, align 8, !dbg !181
  %12 = getelementptr inbounds %struct._turnipports, ptr %11, i32 0, i32 0, !dbg !182
  store ptr %10, ptr %12, align 8, !dbg !183
  %13 = load ptr, ptr %7, align 8, !dbg !184
  %14 = getelementptr inbounds %struct._turnipports, ptr %13, i32 0, i32 3, !dbg !185
  call void @ur_addr_map_init(ptr noundef %14), !dbg !186
  %15 = load ptr, ptr %7, align 8, !dbg !187
  %16 = getelementptr inbounds %struct._turnipports, ptr %15, i32 0, i32 4, !dbg !188
  call void @ur_addr_map_init(ptr noundef %16), !dbg !189
  %17 = load i16, ptr %5, align 2, !dbg !190
  %18 = load ptr, ptr %7, align 8, !dbg !191
  %19 = getelementptr inbounds %struct._turnipports, ptr %18, i32 0, i32 1, !dbg !192
  store i16 %17, ptr %19, align 8, !dbg !193
  %20 = load i16, ptr %6, align 2, !dbg !194
  %21 = load ptr, ptr %7, align 8, !dbg !195
  %22 = getelementptr inbounds %struct._turnipports, ptr %21, i32 0, i32 2, !dbg !196
  store i16 %20, ptr %22, align 2, !dbg !197
  %23 = load ptr, ptr %7, align 8, !dbg !198
  %24 = getelementptr inbounds %struct._turnipports, ptr %23, i32 0, i32 5, !dbg !198
  %25 = call i32 @turn_mutex_init_recursive(ptr noundef %24), !dbg !198
  %26 = load ptr, ptr %7, align 8, !dbg !199
  store ptr %26, ptr @turnipports_singleton, align 8, !dbg !200
  %27 = load ptr, ptr %7, align 8, !dbg !201
  ret ptr %27, !dbg !202
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare ptr @allocate_super_memory_region_func(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i32 noundef) #2

declare void @ur_addr_map_init(ptr noundef) #2

declare i32 @turn_mutex_init_recursive(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnipports_add_ip(i8 noundef zeroext %0, ptr noundef %1) #0 !dbg !203 {
  %3 = alloca i8, align 1
  %4 = alloca ptr, align 8
  store i8 %0, ptr %3, align 1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !208, metadata !DIExpression()), !dbg !209
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !210, metadata !DIExpression()), !dbg !211
  %5 = load ptr, ptr @turnipports_singleton, align 8, !dbg !212
  %6 = load i8, ptr %3, align 1, !dbg !213
  %7 = load ptr, ptr %4, align 8, !dbg !214
  %8 = call ptr @turnipports_add(ptr noundef %5, i8 noundef zeroext %6, ptr noundef %7), !dbg !215
  ret void, !dbg !216
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @turnipports_add(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !217 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca %union.ioa_addr, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !220, metadata !DIExpression()), !dbg !221
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !222, metadata !DIExpression()), !dbg !223
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !224, metadata !DIExpression()), !dbg !225
  call void @llvm.dbg.declare(metadata ptr %7, metadata !226, metadata !DIExpression()), !dbg !227
  store i64 0, ptr %7, align 8, !dbg !227
  %9 = load ptr, ptr %4, align 8, !dbg !228
  %10 = icmp ne ptr %9, null, !dbg !228
  br i1 %10, label %11, label %45, !dbg !230

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !231
  %13 = icmp ne ptr %12, null, !dbg !231
  br i1 %13, label %14, label %45, !dbg !232

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %8, metadata !233, metadata !DIExpression()), !dbg !235
  %15 = load ptr, ptr %6, align 8, !dbg !236
  call void @addr_cpy(ptr noundef %8, ptr noundef %15), !dbg !237
  call void @addr_set_port(ptr noundef %8, i32 noundef 0), !dbg !238
  %16 = load ptr, ptr %4, align 8, !dbg !239
  %17 = getelementptr inbounds %struct._turnipports, ptr %16, i32 0, i32 5, !dbg !239
  %18 = call i32 @turn_mutex_lock(ptr noundef %17), !dbg !239
  %19 = load ptr, ptr %4, align 8, !dbg !240
  %20 = load i8, ptr %5, align 1, !dbg !242
  %21 = call ptr @get_map(ptr noundef %19, i8 noundef zeroext %20), !dbg !243
  %22 = call i32 @ur_addr_map_get(ptr noundef %21, ptr noundef %8, ptr noundef %7), !dbg !244
  %23 = icmp ne i32 %22, 0, !dbg !244
  br i1 %23, label %41, label %24, !dbg !245

24:                                               ; preds = %14
  %25 = load ptr, ptr %4, align 8, !dbg !246
  %26 = getelementptr inbounds %struct._turnipports, ptr %25, i32 0, i32 0, !dbg !248
  %27 = load ptr, ptr %26, align 8, !dbg !248
  %28 = load ptr, ptr %4, align 8, !dbg !249
  %29 = getelementptr inbounds %struct._turnipports, ptr %28, i32 0, i32 1, !dbg !250
  %30 = load i16, ptr %29, align 8, !dbg !250
  %31 = load ptr, ptr %4, align 8, !dbg !251
  %32 = getelementptr inbounds %struct._turnipports, ptr %31, i32 0, i32 2, !dbg !252
  %33 = load i16, ptr %32, align 2, !dbg !252
  %34 = call ptr @turnports_create(ptr noundef %27, i16 noundef zeroext %30, i16 noundef zeroext %33), !dbg !253
  %35 = ptrtoint ptr %34 to i64, !dbg !254
  store i64 %35, ptr %7, align 8, !dbg !255
  %36 = load ptr, ptr %4, align 8, !dbg !256
  %37 = load i8, ptr %5, align 1, !dbg !257
  %38 = call ptr @get_map(ptr noundef %36, i8 noundef zeroext %37), !dbg !258
  %39 = load i64, ptr %7, align 8, !dbg !259
  %40 = call i32 @ur_addr_map_put(ptr noundef %38, ptr noundef %8, i64 noundef %39), !dbg !260
  br label %41, !dbg !261

41:                                               ; preds = %24, %14
  %42 = load ptr, ptr %4, align 8, !dbg !262
  %43 = getelementptr inbounds %struct._turnipports, ptr %42, i32 0, i32 5, !dbg !262
  %44 = call i32 @turn_mutex_unlock(ptr noundef %43), !dbg !262
  br label %45, !dbg !263

45:                                               ; preds = %41, %11, %3
  %46 = load i64, ptr %7, align 8, !dbg !264
  %47 = inttoptr i64 %46 to ptr, !dbg !265
  ret ptr %47, !dbg !266
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnipports_allocate(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !267 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !270, metadata !DIExpression()), !dbg !271
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !272, metadata !DIExpression()), !dbg !273
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata ptr %7, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 -1, ptr %7, align 4, !dbg !277
  %9 = load ptr, ptr %4, align 8, !dbg !278
  %10 = icmp ne ptr %9, null, !dbg !278
  br i1 %10, label %11, label %27, !dbg !280

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !281
  %13 = icmp ne ptr %12, null, !dbg !281
  br i1 %13, label %14, label %27, !dbg !282

14:                                               ; preds = %11
  %15 = load ptr, ptr %4, align 8, !dbg !283
  %16 = getelementptr inbounds %struct._turnipports, ptr %15, i32 0, i32 5, !dbg !283
  %17 = call i32 @turn_mutex_lock(ptr noundef %16), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %8, metadata !285, metadata !DIExpression()), !dbg !286
  %18 = load ptr, ptr %4, align 8, !dbg !287
  %19 = load i8, ptr %5, align 1, !dbg !288
  %20 = load ptr, ptr %6, align 8, !dbg !289
  %21 = call ptr @turnipports_add(ptr noundef %18, i8 noundef zeroext %19, ptr noundef %20), !dbg !290
  store ptr %21, ptr %8, align 8, !dbg !286
  %22 = load ptr, ptr %8, align 8, !dbg !291
  %23 = call i32 @turnports_allocate(ptr noundef %22), !dbg !292
  store i32 %23, ptr %7, align 4, !dbg !293
  %24 = load ptr, ptr %4, align 8, !dbg !294
  %25 = getelementptr inbounds %struct._turnipports, ptr %24, i32 0, i32 5, !dbg !294
  %26 = call i32 @turn_mutex_unlock(ptr noundef %25), !dbg !294
  br label %27, !dbg !295

27:                                               ; preds = %14, %11, %3
  %28 = load i32, ptr %7, align 4, !dbg !296
  ret i32 %28, !dbg !297
}

declare i32 @turn_mutex_lock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnports_allocate(ptr noundef %0) #0 !dbg !298 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !301, metadata !DIExpression()), !dbg !302
  call void @llvm.dbg.declare(metadata ptr %4, metadata !303, metadata !DIExpression()), !dbg !304
  store i32 -1, ptr %4, align 4, !dbg !304
  %6 = load ptr, ptr %3, align 8, !dbg !305
  %7 = getelementptr inbounds %struct._turnports, ptr %6, i32 0, i32 6, !dbg !305
  %8 = call i32 @turn_mutex_lock(ptr noundef %7), !dbg !305
  %9 = load ptr, ptr %3, align 8, !dbg !306
  %10 = icmp ne ptr %9, null, !dbg !306
  br i1 %10, label %11, label %96, !dbg !308

11:                                               ; preds = %1
  br label %12, !dbg !309

12:                                               ; preds = %11, %64, %80
  %13 = load ptr, ptr %3, align 8, !dbg !311
  %14 = getelementptr inbounds %struct._turnports, ptr %13, i32 0, i32 2, !dbg !314
  %15 = load i32, ptr %14, align 4, !dbg !314
  %16 = load ptr, ptr %3, align 8, !dbg !315
  %17 = getelementptr inbounds %struct._turnports, ptr %16, i32 0, i32 1, !dbg !316
  %18 = load i32, ptr %17, align 8, !dbg !316
  %19 = icmp ule i32 %15, %18, !dbg !317
  br i1 %19, label %20, label %24, !dbg !318

20:                                               ; preds = %12
  %21 = load ptr, ptr %3, align 8, !dbg !319
  %22 = getelementptr inbounds %struct._turnports, ptr %21, i32 0, i32 6, !dbg !319
  %23 = call i32 @turn_mutex_unlock(ptr noundef %22), !dbg !319
  store i32 -1, ptr %2, align 4, !dbg !321
  br label %101, !dbg !321

24:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %5, metadata !322, metadata !DIExpression()), !dbg !323
  %25 = load ptr, ptr %3, align 8, !dbg !324
  %26 = getelementptr inbounds %struct._turnports, ptr %25, i32 0, i32 1, !dbg !325
  %27 = load i32, ptr %26, align 8, !dbg !325
  %28 = and i32 %27, 65535, !dbg !326
  %29 = trunc i32 %28 to i16, !dbg !327
  %30 = zext i16 %29 to i32, !dbg !327
  store i32 %30, ptr %5, align 4, !dbg !323
  %31 = load ptr, ptr %3, align 8, !dbg !328
  %32 = getelementptr inbounds %struct._turnports, ptr %31, i32 0, i32 5, !dbg !329
  %33 = load i32, ptr %5, align 4, !dbg !330
  %34 = sext i32 %33 to i64, !dbg !328
  %35 = getelementptr inbounds [65536 x i16], ptr %32, i64 0, i64 %34, !dbg !328
  %36 = load i16, ptr %35, align 2, !dbg !328
  %37 = zext i16 %36 to i32, !dbg !331
  store i32 %37, ptr %4, align 4, !dbg !332
  %38 = load i32, ptr %4, align 4, !dbg !333
  %39 = load ptr, ptr %3, align 8, !dbg !335
  %40 = getelementptr inbounds %struct._turnports, ptr %39, i32 0, i32 3, !dbg !336
  %41 = load i16, ptr %40, align 8, !dbg !336
  %42 = zext i16 %41 to i32, !dbg !337
  %43 = icmp slt i32 %38, %42, !dbg !338
  br i1 %43, label %51, label %44, !dbg !339

44:                                               ; preds = %24
  %45 = load i32, ptr %4, align 4, !dbg !340
  %46 = load ptr, ptr %3, align 8, !dbg !341
  %47 = getelementptr inbounds %struct._turnports, ptr %46, i32 0, i32 4, !dbg !342
  %48 = load i16, ptr %47, align 2, !dbg !342
  %49 = zext i16 %48 to i32, !dbg !343
  %50 = icmp sgt i32 %45, %49, !dbg !344
  br i1 %50, label %51, label %55, !dbg !345

51:                                               ; preds = %44, %24
  %52 = load ptr, ptr %3, align 8, !dbg !346
  %53 = getelementptr inbounds %struct._turnports, ptr %52, i32 0, i32 6, !dbg !346
  %54 = call i32 @turn_mutex_unlock(ptr noundef %53), !dbg !346
  store i32 -1, ptr %2, align 4, !dbg !348
  br label %101, !dbg !348

55:                                               ; preds = %44
  %56 = load ptr, ptr %3, align 8, !dbg !349
  %57 = getelementptr inbounds %struct._turnports, ptr %56, i32 0, i32 0, !dbg !351
  %58 = load i32, ptr %4, align 4, !dbg !352
  %59 = sext i32 %58 to i64, !dbg !349
  %60 = getelementptr inbounds [65536 x i32], ptr %57, i64 0, i64 %59, !dbg !349
  %61 = load i32, ptr %60, align 4, !dbg !349
  %62 = call i32 @is_taken(i32 noundef %61), !dbg !353
  %63 = icmp ne i32 %62, 0, !dbg !353
  br i1 %63, label %64, label %69, !dbg !354

64:                                               ; preds = %55
  %65 = load ptr, ptr %3, align 8, !dbg !355
  %66 = getelementptr inbounds %struct._turnports, ptr %65, i32 0, i32 1, !dbg !357
  %67 = load i32, ptr %66, align 8, !dbg !358
  %68 = add i32 %67, 1, !dbg !358
  store i32 %68, ptr %66, align 8, !dbg !358
  br label %12, !dbg !359, !llvm.loop !360

69:                                               ; preds = %55
  %70 = load ptr, ptr %3, align 8, !dbg !362
  %71 = getelementptr inbounds %struct._turnports, ptr %70, i32 0, i32 0, !dbg !364
  %72 = load i32, ptr %4, align 4, !dbg !365
  %73 = sext i32 %72 to i64, !dbg !362
  %74 = getelementptr inbounds [65536 x i32], ptr %71, i64 0, i64 %73, !dbg !362
  %75 = load i32, ptr %74, align 4, !dbg !362
  %76 = load ptr, ptr %3, align 8, !dbg !366
  %77 = getelementptr inbounds %struct._turnports, ptr %76, i32 0, i32 1, !dbg !367
  %78 = load i32, ptr %77, align 8, !dbg !367
  %79 = icmp ne i32 %75, %78, !dbg !368
  br i1 %79, label %80, label %85, !dbg !369

80:                                               ; preds = %69
  %81 = load ptr, ptr %3, align 8, !dbg !370
  %82 = getelementptr inbounds %struct._turnports, ptr %81, i32 0, i32 1, !dbg !372
  %83 = load i32, ptr %82, align 8, !dbg !373
  %84 = add i32 %83, 1, !dbg !373
  store i32 %84, ptr %82, align 8, !dbg !373
  br label %12, !dbg !374, !llvm.loop !360

85:                                               ; preds = %69
  %86 = load ptr, ptr %3, align 8, !dbg !375
  %87 = getelementptr inbounds %struct._turnports, ptr %86, i32 0, i32 0, !dbg !376
  %88 = load i32, ptr %4, align 4, !dbg !377
  %89 = sext i32 %88 to i64, !dbg !375
  %90 = getelementptr inbounds [65536 x i32], ptr %87, i64 0, i64 %89, !dbg !375
  store i32 -2, ptr %90, align 4, !dbg !378
  %91 = load ptr, ptr %3, align 8, !dbg !379
  %92 = getelementptr inbounds %struct._turnports, ptr %91, i32 0, i32 1, !dbg !380
  %93 = load i32, ptr %92, align 8, !dbg !381
  %94 = add i32 %93, 1, !dbg !381
  store i32 %94, ptr %92, align 8, !dbg !381
  br label %95, !dbg !382

95:                                               ; preds = %85
  br label %96, !dbg !383

96:                                               ; preds = %95, %1
  %97 = load ptr, ptr %3, align 8, !dbg !384
  %98 = getelementptr inbounds %struct._turnports, ptr %97, i32 0, i32 6, !dbg !384
  %99 = call i32 @turn_mutex_unlock(ptr noundef %98), !dbg !384
  %100 = load i32, ptr %4, align 4, !dbg !385
  store i32 %100, ptr %2, align 4, !dbg !386
  br label %101, !dbg !386

101:                                              ; preds = %96, %51, %20
  %102 = load i32, ptr %2, align 4, !dbg !387
  ret i32 %102, !dbg !387
}

declare i32 @turn_mutex_unlock(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnipports_allocate_even(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !388 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !392, metadata !DIExpression()), !dbg !393
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !394, metadata !DIExpression()), !dbg !395
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !396, metadata !DIExpression()), !dbg !397
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !398, metadata !DIExpression()), !dbg !399
  call void @llvm.dbg.declare(metadata ptr %9, metadata !400, metadata !DIExpression()), !dbg !401
  store i32 -1, ptr %9, align 4, !dbg !401
  %11 = load ptr, ptr %5, align 8, !dbg !402
  %12 = icmp ne ptr %11, null, !dbg !402
  br i1 %12, label %13, label %30, !dbg !404

13:                                               ; preds = %4
  %14 = load ptr, ptr %6, align 8, !dbg !405
  %15 = icmp ne ptr %14, null, !dbg !405
  br i1 %15, label %16, label %30, !dbg !406

16:                                               ; preds = %13
  %17 = load ptr, ptr %5, align 8, !dbg !407
  %18 = getelementptr inbounds %struct._turnipports, ptr %17, i32 0, i32 5, !dbg !407
  %19 = call i32 @turn_mutex_lock(ptr noundef %18), !dbg !407
  call void @llvm.dbg.declare(metadata ptr %10, metadata !409, metadata !DIExpression()), !dbg !410
  %20 = load ptr, ptr %5, align 8, !dbg !411
  %21 = load ptr, ptr %6, align 8, !dbg !412
  %22 = call ptr @turnipports_add(ptr noundef %20, i8 noundef zeroext 17, ptr noundef %21), !dbg !413
  store ptr %22, ptr %10, align 8, !dbg !410
  %23 = load ptr, ptr %10, align 8, !dbg !414
  %24 = load i32, ptr %7, align 4, !dbg !415
  %25 = load ptr, ptr %8, align 8, !dbg !416
  %26 = call i32 @turnports_allocate_even(ptr noundef %23, i32 noundef %24, ptr noundef %25), !dbg !417
  store i32 %26, ptr %9, align 4, !dbg !418
  %27 = load ptr, ptr %5, align 8, !dbg !419
  %28 = getelementptr inbounds %struct._turnipports, ptr %27, i32 0, i32 5, !dbg !419
  %29 = call i32 @turn_mutex_unlock(ptr noundef %28), !dbg !419
  br label %30, !dbg !420

30:                                               ; preds = %16, %13, %4
  %31 = load i32, ptr %9, align 4, !dbg !421
  ret i32 %31, !dbg !422
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnports_allocate_even(ptr noundef %0, i32 noundef %1, ptr noundef %2) #0 !dbg !423 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca ptr, align 8
  %13 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !426, metadata !DIExpression()), !dbg !427
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !428, metadata !DIExpression()), !dbg !429
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !430, metadata !DIExpression()), !dbg !431
  %14 = load ptr, ptr %5, align 8, !dbg !432
  %15 = icmp ne ptr %14, null, !dbg !432
  br i1 %15, label %16, label %134, !dbg !434

16:                                               ; preds = %3
  %17 = load ptr, ptr %5, align 8, !dbg !435
  %18 = getelementptr inbounds %struct._turnports, ptr %17, i32 0, i32 6, !dbg !435
  %19 = call i32 @turn_mutex_lock(ptr noundef %18), !dbg !435
  call void @llvm.dbg.declare(metadata ptr %8, metadata !437, metadata !DIExpression()), !dbg !438
  %20 = load ptr, ptr %5, align 8, !dbg !439
  %21 = call zeroext i16 @turnports_size(ptr noundef %20), !dbg !440
  store i16 %21, ptr %8, align 2, !dbg !438
  %22 = load i16, ptr %8, align 2, !dbg !441
  %23 = zext i16 %22 to i32, !dbg !441
  %24 = icmp sgt i32 %23, 1, !dbg !443
  br i1 %24, label %25, label %130, !dbg !444

25:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata ptr %9, metadata !445, metadata !DIExpression()), !dbg !447
  store i16 0, ptr %9, align 2, !dbg !447
  store i16 0, ptr %9, align 2, !dbg !448
  br label %26, !dbg !450

26:                                               ; preds = %126, %25
  %27 = load i16, ptr %9, align 2, !dbg !451
  %28 = zext i16 %27 to i32, !dbg !451
  %29 = load i16, ptr %8, align 2, !dbg !453
  %30 = zext i16 %29 to i32, !dbg !453
  %31 = icmp slt i32 %28, %30, !dbg !454
  br i1 %31, label %32, label %129, !dbg !455

32:                                               ; preds = %26
  call void @llvm.dbg.declare(metadata ptr %10, metadata !456, metadata !DIExpression()), !dbg !458
  %33 = load ptr, ptr %5, align 8, !dbg !459
  %34 = call i32 @turnports_allocate(ptr noundef %33), !dbg !460
  store i32 %34, ptr %10, align 4, !dbg !458
  %35 = load i32, ptr %10, align 4, !dbg !461
  %36 = and i32 %35, 1, !dbg !463
  %37 = icmp ne i32 %36, 0, !dbg !463
  br i1 %37, label %38, label %42, !dbg !464

38:                                               ; preds = %32
  %39 = load ptr, ptr %5, align 8, !dbg !465
  %40 = load i32, ptr %10, align 4, !dbg !467
  %41 = trunc i32 %40 to i16, !dbg !467
  call void @turnports_release(ptr noundef %39, i16 noundef zeroext %41), !dbg !468
  br label %125, !dbg !469

42:                                               ; preds = %32
  %43 = load i32, ptr %6, align 4, !dbg !470
  %44 = icmp ne i32 %43, 0, !dbg !470
  br i1 %44, label %50, label %45, !dbg !473

45:                                               ; preds = %42
  %46 = load ptr, ptr %5, align 8, !dbg !474
  %47 = getelementptr inbounds %struct._turnports, ptr %46, i32 0, i32 6, !dbg !474
  %48 = call i32 @turn_mutex_unlock(ptr noundef %47), !dbg !474
  %49 = load i32, ptr %10, align 4, !dbg !476
  store i32 %49, ptr %4, align 4, !dbg !477
  br label %135, !dbg !477

50:                                               ; preds = %42
  call void @llvm.dbg.declare(metadata ptr %11, metadata !478, metadata !DIExpression()), !dbg !480
  %51 = load i32, ptr %10, align 4, !dbg !481
  %52 = add nsw i32 %51, 1, !dbg !482
  store i32 %52, ptr %11, align 4, !dbg !480
  %53 = load i32, ptr %11, align 4, !dbg !483
  %54 = load ptr, ptr %5, align 8, !dbg !485
  %55 = getelementptr inbounds %struct._turnports, ptr %54, i32 0, i32 4, !dbg !486
  %56 = load i16, ptr %55, align 2, !dbg !486
  %57 = zext i16 %56 to i32, !dbg !485
  %58 = icmp sgt i32 %53, %57, !dbg !487
  br i1 %58, label %59, label %63, !dbg !488

59:                                               ; preds = %50
  %60 = load ptr, ptr %5, align 8, !dbg !489
  %61 = load i32, ptr %10, align 4, !dbg !491
  %62 = trunc i32 %61 to i16, !dbg !491
  call void @turnports_release(ptr noundef %60, i16 noundef zeroext %62), !dbg !492
  br label %123, !dbg !493

63:                                               ; preds = %50
  %64 = load ptr, ptr %5, align 8, !dbg !494
  %65 = load i32, ptr %11, align 4, !dbg !496
  %66 = trunc i32 %65 to i16, !dbg !496
  %67 = call i32 @turnports_is_available(ptr noundef %64, i16 noundef zeroext %66), !dbg !497
  %68 = icmp ne i32 %67, 0, !dbg !497
  br i1 %68, label %73, label %69, !dbg !498

69:                                               ; preds = %63
  %70 = load ptr, ptr %5, align 8, !dbg !499
  %71 = load i32, ptr %10, align 4, !dbg !501
  %72 = trunc i32 %71 to i16, !dbg !501
  call void @turnports_release(ptr noundef %70, i16 noundef zeroext %72), !dbg !502
  br label %122, !dbg !503

73:                                               ; preds = %63
  %74 = load ptr, ptr %5, align 8, !dbg !504
  %75 = getelementptr inbounds %struct._turnports, ptr %74, i32 0, i32 0, !dbg !506
  %76 = load i32, ptr %10, align 4, !dbg !507
  %77 = sext i32 %76 to i64, !dbg !504
  %78 = getelementptr inbounds [65536 x i32], ptr %75, i64 0, i64 %77, !dbg !504
  store i32 -3, ptr %78, align 4, !dbg !508
  %79 = load ptr, ptr %5, align 8, !dbg !509
  %80 = getelementptr inbounds %struct._turnports, ptr %79, i32 0, i32 0, !dbg !510
  %81 = load i32, ptr %11, align 4, !dbg !511
  %82 = sext i32 %81 to i64, !dbg !509
  %83 = getelementptr inbounds [65536 x i32], ptr %80, i64 0, i64 %82, !dbg !509
  store i32 -4, ptr %83, align 4, !dbg !512
  %84 = load ptr, ptr %7, align 8, !dbg !513
  %85 = icmp ne ptr %84, null, !dbg !513
  br i1 %85, label %86, label %117, !dbg !515

86:                                               ; preds = %73
  call void @llvm.dbg.declare(metadata ptr %12, metadata !516, metadata !DIExpression()), !dbg !518
  %87 = load ptr, ptr %7, align 8, !dbg !519
  store ptr %87, ptr %12, align 8, !dbg !518
  call void @llvm.dbg.declare(metadata ptr %13, metadata !520, metadata !DIExpression()), !dbg !521
  %88 = load ptr, ptr %7, align 8, !dbg !522
  store ptr %88, ptr %13, align 8, !dbg !521
  %89 = load ptr, ptr %5, align 8, !dbg !523
  %90 = getelementptr inbounds %struct._turnports, ptr %89, i32 0, i32 5, !dbg !524
  %91 = load ptr, ptr %5, align 8, !dbg !525
  %92 = getelementptr inbounds %struct._turnports, ptr %91, i32 0, i32 1, !dbg !526
  %93 = load i32, ptr %92, align 8, !dbg !526
  %94 = and i32 %93, 65535, !dbg !527
  %95 = trunc i32 %94 to i16, !dbg !528
  %96 = zext i16 %95 to i64, !dbg !523
  %97 = getelementptr inbounds [65536 x i16], ptr %90, i64 0, i64 %96, !dbg !523
  %98 = load i16, ptr %97, align 2, !dbg !523
  %99 = load ptr, ptr %12, align 8, !dbg !529
  %100 = getelementptr inbounds i16, ptr %99, i64 0, !dbg !529
  store i16 %98, ptr %100, align 2, !dbg !530
  %101 = load ptr, ptr %5, align 8, !dbg !531
  %102 = getelementptr inbounds %struct._turnports, ptr %101, i32 0, i32 5, !dbg !532
  %103 = load ptr, ptr %5, align 8, !dbg !533
  %104 = getelementptr inbounds %struct._turnports, ptr %103, i32 0, i32 2, !dbg !534
  %105 = load i32, ptr %104, align 4, !dbg !534
  %106 = and i32 %105, 65535, !dbg !535
  %107 = trunc i32 %106 to i16, !dbg !536
  %108 = zext i16 %107 to i64, !dbg !531
  %109 = getelementptr inbounds [65536 x i16], ptr %102, i64 0, i64 %108, !dbg !531
  %110 = load i16, ptr %109, align 2, !dbg !531
  %111 = load ptr, ptr %12, align 8, !dbg !537
  %112 = getelementptr inbounds i16, ptr %111, i64 1, !dbg !537
  store i16 %110, ptr %112, align 2, !dbg !538
  %113 = call i64 @turn_random(), !dbg !539
  %114 = trunc i64 %113 to i32, !dbg !540
  %115 = load ptr, ptr %13, align 8, !dbg !541
  %116 = getelementptr inbounds i32, ptr %115, i64 1, !dbg !541
  store i32 %114, ptr %116, align 4, !dbg !542
  br label %117, !dbg !543

117:                                              ; preds = %86, %73
  %118 = load ptr, ptr %5, align 8, !dbg !544
  %119 = getelementptr inbounds %struct._turnports, ptr %118, i32 0, i32 6, !dbg !544
  %120 = call i32 @turn_mutex_unlock(ptr noundef %119), !dbg !544
  %121 = load i32, ptr %10, align 4, !dbg !545
  store i32 %121, ptr %4, align 4, !dbg !546
  br label %135, !dbg !546

122:                                              ; preds = %69
  br label %123

123:                                              ; preds = %122, %59
  br label %124

124:                                              ; preds = %123
  br label %125

125:                                              ; preds = %124, %38
  br label %126, !dbg !547

126:                                              ; preds = %125
  %127 = load i16, ptr %9, align 2, !dbg !548
  %128 = add i16 %127, 1, !dbg !548
  store i16 %128, ptr %9, align 2, !dbg !548
  br label %26, !dbg !549, !llvm.loop !550

129:                                              ; preds = %26
  br label %130, !dbg !553

130:                                              ; preds = %129, %16
  %131 = load ptr, ptr %5, align 8, !dbg !554
  %132 = getelementptr inbounds %struct._turnports, ptr %131, i32 0, i32 6, !dbg !554
  %133 = call i32 @turn_mutex_unlock(ptr noundef %132), !dbg !554
  br label %134, !dbg !555

134:                                              ; preds = %130, %3
  store i32 -1, ptr %4, align 4, !dbg !556
  br label %135, !dbg !556

135:                                              ; preds = %134, %117, %45
  %136 = load i32, ptr %4, align 4, !dbg !557
  ret i32 %136, !dbg !557
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @turnipports_release(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2) #0 !dbg !558 {
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  %6 = alloca ptr, align 8
  %7 = alloca %union.ioa_addr, align 4
  %8 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !561, metadata !DIExpression()), !dbg !562
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !563, metadata !DIExpression()), !dbg !564
  store ptr %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !565, metadata !DIExpression()), !dbg !566
  %9 = load ptr, ptr %4, align 8, !dbg !567
  %10 = icmp ne ptr %9, null, !dbg !567
  br i1 %10, label %11, label %34, !dbg !569

11:                                               ; preds = %3
  %12 = load ptr, ptr %6, align 8, !dbg !570
  %13 = icmp ne ptr %12, null, !dbg !570
  br i1 %13, label %14, label %34, !dbg !571

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %7, metadata !572, metadata !DIExpression()), !dbg !574
  call void @llvm.dbg.declare(metadata ptr %8, metadata !575, metadata !DIExpression()), !dbg !576
  %15 = load ptr, ptr %6, align 8, !dbg !577
  call void @addr_cpy(ptr noundef %7, ptr noundef %15), !dbg !578
  call void @addr_set_port(ptr noundef %7, i32 noundef 0), !dbg !579
  %16 = load ptr, ptr %4, align 8, !dbg !580
  %17 = getelementptr inbounds %struct._turnipports, ptr %16, i32 0, i32 5, !dbg !580
  %18 = call i32 @turn_mutex_lock(ptr noundef %17), !dbg !580
  %19 = load ptr, ptr %4, align 8, !dbg !581
  %20 = load i8, ptr %5, align 1, !dbg !583
  %21 = call ptr @get_map(ptr noundef %19, i8 noundef zeroext %20), !dbg !584
  %22 = call i32 @ur_addr_map_get(ptr noundef %21, ptr noundef %7, ptr noundef %8), !dbg !585
  %23 = icmp ne i32 %22, 0, !dbg !585
  br i1 %23, label %24, label %30, !dbg !586

24:                                               ; preds = %14
  %25 = load i64, ptr %8, align 8, !dbg !587
  %26 = inttoptr i64 %25 to ptr, !dbg !589
  %27 = load ptr, ptr %6, align 8, !dbg !590
  %28 = call i32 @addr_get_port(ptr noundef %27), !dbg !591
  %29 = trunc i32 %28 to i16, !dbg !591
  call void @turnports_release(ptr noundef %26, i16 noundef zeroext %29), !dbg !592
  br label %30, !dbg !593

30:                                               ; preds = %24, %14
  %31 = load ptr, ptr %4, align 8, !dbg !594
  %32 = getelementptr inbounds %struct._turnipports, ptr %31, i32 0, i32 5, !dbg !594
  %33 = call i32 @turn_mutex_unlock(ptr noundef %32), !dbg !594
  br label %34, !dbg !595

34:                                               ; preds = %30, %11, %3
  ret void, !dbg !596
}

declare void @addr_cpy(ptr noundef, ptr noundef) #2

declare void @addr_set_port(ptr noundef, i32 noundef) #2

declare i32 @ur_addr_map_get(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @get_map(ptr noundef %0, i8 noundef zeroext %1) #0 !dbg !597 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i8, align 1
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !601, metadata !DIExpression()), !dbg !602
  store i8 %1, ptr %5, align 1
  call void @llvm.dbg.declare(metadata ptr %5, metadata !603, metadata !DIExpression()), !dbg !604
  %6 = load i8, ptr %5, align 1, !dbg !605
  %7 = zext i8 %6 to i32, !dbg !605
  %8 = icmp eq i32 %7, 6, !dbg !607
  br i1 %8, label %9, label %12, !dbg !608

9:                                                ; preds = %2
  %10 = load ptr, ptr %4, align 8, !dbg !609
  %11 = getelementptr inbounds %struct._turnipports, ptr %10, i32 0, i32 4, !dbg !610
  store ptr %11, ptr %3, align 8, !dbg !611
  br label %15, !dbg !611

12:                                               ; preds = %2
  %13 = load ptr, ptr %4, align 8, !dbg !612
  %14 = getelementptr inbounds %struct._turnipports, ptr %13, i32 0, i32 3, !dbg !613
  store ptr %14, ptr %3, align 8, !dbg !614
  br label %15, !dbg !614

15:                                               ; preds = %12, %9
  %16 = load ptr, ptr %3, align 8, !dbg !615
  ret ptr %16, !dbg !615
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnports_release(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !616 {
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  %5 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !619, metadata !DIExpression()), !dbg !620
  store i16 %1, ptr %4, align 2
  call void @llvm.dbg.declare(metadata ptr %4, metadata !621, metadata !DIExpression()), !dbg !622
  %6 = load ptr, ptr %3, align 8, !dbg !623
  %7 = getelementptr inbounds %struct._turnports, ptr %6, i32 0, i32 6, !dbg !623
  %8 = call i32 @turn_mutex_lock(ptr noundef %7), !dbg !623
  %9 = load ptr, ptr %3, align 8, !dbg !624
  %10 = icmp ne ptr %9, null, !dbg !624
  br i1 %10, label %11, label %61, !dbg !626

11:                                               ; preds = %2
  %12 = load i16, ptr %4, align 2, !dbg !627
  %13 = zext i16 %12 to i32, !dbg !627
  %14 = load ptr, ptr %3, align 8, !dbg !628
  %15 = getelementptr inbounds %struct._turnports, ptr %14, i32 0, i32 3, !dbg !629
  %16 = load i16, ptr %15, align 8, !dbg !629
  %17 = zext i16 %16 to i32, !dbg !628
  %18 = icmp sge i32 %13, %17, !dbg !630
  br i1 %18, label %19, label %61, !dbg !631

19:                                               ; preds = %11
  %20 = load i16, ptr %4, align 2, !dbg !632
  %21 = zext i16 %20 to i32, !dbg !632
  %22 = load ptr, ptr %3, align 8, !dbg !633
  %23 = getelementptr inbounds %struct._turnports, ptr %22, i32 0, i32 4, !dbg !634
  %24 = load i16, ptr %23, align 2, !dbg !634
  %25 = zext i16 %24 to i32, !dbg !633
  %26 = icmp sle i32 %21, %25, !dbg !635
  br i1 %26, label %27, label %61, !dbg !636

27:                                               ; preds = %19
  call void @llvm.dbg.declare(metadata ptr %5, metadata !637, metadata !DIExpression()), !dbg !639
  %28 = load ptr, ptr %3, align 8, !dbg !640
  %29 = getelementptr inbounds %struct._turnports, ptr %28, i32 0, i32 2, !dbg !641
  %30 = load i32, ptr %29, align 4, !dbg !641
  %31 = and i32 %30, 65535, !dbg !642
  %32 = trunc i32 %31 to i16, !dbg !643
  store i16 %32, ptr %5, align 2, !dbg !639
  %33 = load ptr, ptr %3, align 8, !dbg !644
  %34 = getelementptr inbounds %struct._turnports, ptr %33, i32 0, i32 0, !dbg !646
  %35 = load i16, ptr %4, align 2, !dbg !647
  %36 = zext i16 %35 to i64, !dbg !644
  %37 = getelementptr inbounds [65536 x i32], ptr %34, i64 0, i64 %36, !dbg !644
  %38 = load i32, ptr %37, align 4, !dbg !644
  %39 = call i32 @is_taken(i32 noundef %38), !dbg !648
  %40 = icmp ne i32 %39, 0, !dbg !648
  br i1 %40, label %41, label %60, !dbg !649

41:                                               ; preds = %27
  %42 = load ptr, ptr %3, align 8, !dbg !650
  %43 = getelementptr inbounds %struct._turnports, ptr %42, i32 0, i32 2, !dbg !652
  %44 = load i32, ptr %43, align 4, !dbg !652
  %45 = load ptr, ptr %3, align 8, !dbg !653
  %46 = getelementptr inbounds %struct._turnports, ptr %45, i32 0, i32 0, !dbg !654
  %47 = load i16, ptr %4, align 2, !dbg !655
  %48 = zext i16 %47 to i64, !dbg !653
  %49 = getelementptr inbounds [65536 x i32], ptr %46, i64 0, i64 %48, !dbg !653
  store i32 %44, ptr %49, align 4, !dbg !656
  %50 = load i16, ptr %4, align 2, !dbg !657
  %51 = load ptr, ptr %3, align 8, !dbg !658
  %52 = getelementptr inbounds %struct._turnports, ptr %51, i32 0, i32 5, !dbg !659
  %53 = load i16, ptr %5, align 2, !dbg !660
  %54 = zext i16 %53 to i64, !dbg !658
  %55 = getelementptr inbounds [65536 x i16], ptr %52, i64 0, i64 %54, !dbg !658
  store i16 %50, ptr %55, align 2, !dbg !661
  %56 = load ptr, ptr %3, align 8, !dbg !662
  %57 = getelementptr inbounds %struct._turnports, ptr %56, i32 0, i32 2, !dbg !663
  %58 = load i32, ptr %57, align 4, !dbg !664
  %59 = add i32 %58, 1, !dbg !664
  store i32 %59, ptr %57, align 4, !dbg !664
  br label %60, !dbg !665

60:                                               ; preds = %41, %27
  br label %61, !dbg !666

61:                                               ; preds = %60, %19, %11, %2
  %62 = load ptr, ptr %3, align 8, !dbg !667
  %63 = getelementptr inbounds %struct._turnports, ptr %62, i32 0, i32 6, !dbg !667
  %64 = call i32 @turn_mutex_unlock(ptr noundef %63), !dbg !667
  ret void, !dbg !668
}

declare i32 @addr_get_port(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnipports_is_allocated(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) #0 !dbg !669 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %union.ioa_addr, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !672, metadata !DIExpression()), !dbg !673
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !674, metadata !DIExpression()), !dbg !675
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !676, metadata !DIExpression()), !dbg !677
  store i16 %3, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !678, metadata !DIExpression()), !dbg !679
  call void @llvm.dbg.declare(metadata ptr %9, metadata !680, metadata !DIExpression()), !dbg !681
  store i32 0, ptr %9, align 4, !dbg !681
  %12 = load ptr, ptr %5, align 8, !dbg !682
  %13 = icmp ne ptr %12, null, !dbg !682
  br i1 %13, label %14, label %36, !dbg !684

14:                                               ; preds = %4
  %15 = load ptr, ptr %7, align 8, !dbg !685
  %16 = icmp ne ptr %15, null, !dbg !685
  br i1 %16, label %17, label %36, !dbg !686

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !687, metadata !DIExpression()), !dbg !689
  call void @llvm.dbg.declare(metadata ptr %11, metadata !690, metadata !DIExpression()), !dbg !691
  %18 = load ptr, ptr %7, align 8, !dbg !692
  call void @addr_cpy(ptr noundef %10, ptr noundef %18), !dbg !693
  call void @addr_set_port(ptr noundef %10, i32 noundef 0), !dbg !694
  %19 = load ptr, ptr %5, align 8, !dbg !695
  %20 = getelementptr inbounds %struct._turnipports, ptr %19, i32 0, i32 5, !dbg !695
  %21 = call i32 @turn_mutex_lock(ptr noundef %20), !dbg !695
  %22 = load ptr, ptr %5, align 8, !dbg !696
  %23 = load i8, ptr %6, align 1, !dbg !698
  %24 = call ptr @get_map(ptr noundef %22, i8 noundef zeroext %23), !dbg !699
  %25 = call i32 @ur_addr_map_get(ptr noundef %24, ptr noundef %10, ptr noundef %11), !dbg !700
  %26 = icmp ne i32 %25, 0, !dbg !700
  br i1 %26, label %27, label %32, !dbg !701

27:                                               ; preds = %17
  %28 = load i64, ptr %11, align 8, !dbg !702
  %29 = inttoptr i64 %28 to ptr, !dbg !704
  %30 = load i16, ptr %8, align 2, !dbg !705
  %31 = call i32 @turnports_is_allocated(ptr noundef %29, i16 noundef zeroext %30), !dbg !706
  store i32 %31, ptr %9, align 4, !dbg !707
  br label %32, !dbg !708

32:                                               ; preds = %27, %17
  %33 = load ptr, ptr %5, align 8, !dbg !709
  %34 = getelementptr inbounds %struct._turnipports, ptr %33, i32 0, i32 5, !dbg !709
  %35 = call i32 @turn_mutex_unlock(ptr noundef %34), !dbg !709
  br label %36, !dbg !710

36:                                               ; preds = %32, %14, %4
  %37 = load i32, ptr %9, align 4, !dbg !711
  ret i32 %37, !dbg !712
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnports_is_allocated(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !713 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !716, metadata !DIExpression()), !dbg !717
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !718, metadata !DIExpression()), !dbg !719
  %7 = load ptr, ptr %4, align 8, !dbg !720
  %8 = icmp ne ptr %7, null, !dbg !720
  br i1 %8, label %10, label %9, !dbg !722

9:                                                ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !723
  br label %25, !dbg !723

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !724
  %12 = getelementptr inbounds %struct._turnports, ptr %11, i32 0, i32 6, !dbg !724
  %13 = call i32 @turn_mutex_lock(ptr noundef %12), !dbg !724
  call void @llvm.dbg.declare(metadata ptr %6, metadata !726, metadata !DIExpression()), !dbg !727
  %14 = load ptr, ptr %4, align 8, !dbg !728
  %15 = getelementptr inbounds %struct._turnports, ptr %14, i32 0, i32 0, !dbg !729
  %16 = load i16, ptr %5, align 2, !dbg !730
  %17 = zext i16 %16 to i64, !dbg !728
  %18 = getelementptr inbounds [65536 x i32], ptr %15, i64 0, i64 %17, !dbg !728
  %19 = load i32, ptr %18, align 4, !dbg !728
  %20 = call i32 @is_taken(i32 noundef %19), !dbg !731
  store i32 %20, ptr %6, align 4, !dbg !727
  %21 = load ptr, ptr %4, align 8, !dbg !732
  %22 = getelementptr inbounds %struct._turnports, ptr %21, i32 0, i32 6, !dbg !732
  %23 = call i32 @turn_mutex_unlock(ptr noundef %22), !dbg !732
  %24 = load i32, ptr %6, align 4, !dbg !733
  store i32 %24, ptr %3, align 4, !dbg !734
  br label %25, !dbg !734

25:                                               ; preds = %10, %9
  %26 = load i32, ptr %3, align 4, !dbg !735
  ret i32 %26, !dbg !735
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @turnipports_is_available(ptr noundef %0, i8 noundef zeroext %1, ptr noundef %2, i16 noundef zeroext %3) #0 !dbg !736 {
  %5 = alloca ptr, align 8
  %6 = alloca i8, align 1
  %7 = alloca ptr, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca %union.ioa_addr, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !737, metadata !DIExpression()), !dbg !738
  store i8 %1, ptr %6, align 1
  call void @llvm.dbg.declare(metadata ptr %6, metadata !739, metadata !DIExpression()), !dbg !740
  store ptr %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !741, metadata !DIExpression()), !dbg !742
  store i16 %3, ptr %8, align 2
  call void @llvm.dbg.declare(metadata ptr %8, metadata !743, metadata !DIExpression()), !dbg !744
  call void @llvm.dbg.declare(metadata ptr %9, metadata !745, metadata !DIExpression()), !dbg !746
  store i32 0, ptr %9, align 4, !dbg !746
  %12 = load ptr, ptr %5, align 8, !dbg !747
  %13 = icmp ne ptr %12, null, !dbg !747
  br i1 %13, label %14, label %37, !dbg !749

14:                                               ; preds = %4
  %15 = load ptr, ptr %7, align 8, !dbg !750
  %16 = icmp ne ptr %15, null, !dbg !750
  br i1 %16, label %17, label %37, !dbg !751

17:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata ptr %10, metadata !752, metadata !DIExpression()), !dbg !754
  call void @llvm.dbg.declare(metadata ptr %11, metadata !755, metadata !DIExpression()), !dbg !756
  %18 = load ptr, ptr %7, align 8, !dbg !757
  call void @addr_cpy(ptr noundef %10, ptr noundef %18), !dbg !758
  call void @addr_set_port(ptr noundef %10, i32 noundef 0), !dbg !759
  %19 = load ptr, ptr %5, align 8, !dbg !760
  %20 = getelementptr inbounds %struct._turnipports, ptr %19, i32 0, i32 5, !dbg !760
  %21 = call i32 @turn_mutex_lock(ptr noundef %20), !dbg !760
  %22 = load ptr, ptr %5, align 8, !dbg !761
  %23 = load i8, ptr %6, align 1, !dbg !763
  %24 = call ptr @get_map(ptr noundef %22, i8 noundef zeroext %23), !dbg !764
  %25 = call i32 @ur_addr_map_get(ptr noundef %24, ptr noundef %10, ptr noundef %11), !dbg !765
  %26 = icmp ne i32 %25, 0, !dbg !765
  br i1 %26, label %28, label %27, !dbg !766

27:                                               ; preds = %17
  store i32 1, ptr %9, align 4, !dbg !767
  br label %33, !dbg !769

28:                                               ; preds = %17
  %29 = load i64, ptr %11, align 8, !dbg !770
  %30 = inttoptr i64 %29 to ptr, !dbg !772
  %31 = load i16, ptr %8, align 2, !dbg !773
  %32 = call i32 @turnports_is_available(ptr noundef %30, i16 noundef zeroext %31), !dbg !774
  store i32 %32, ptr %9, align 4, !dbg !775
  br label %33

33:                                               ; preds = %28, %27
  %34 = load ptr, ptr %5, align 8, !dbg !776
  %35 = getelementptr inbounds %struct._turnipports, ptr %34, i32 0, i32 5, !dbg !776
  %36 = call i32 @turn_mutex_unlock(ptr noundef %35), !dbg !776
  br label %37, !dbg !777

37:                                               ; preds = %33, %14, %4
  %38 = load i32, ptr %9, align 4, !dbg !778
  ret i32 %38, !dbg !779
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @turnports_is_available(ptr noundef %0, i16 noundef zeroext %1) #0 !dbg !780 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !781, metadata !DIExpression()), !dbg !782
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !783, metadata !DIExpression()), !dbg !784
  %8 = load ptr, ptr %4, align 8, !dbg !785
  %9 = icmp ne ptr %8, null, !dbg !785
  br i1 %9, label %10, label %49, !dbg !787

10:                                               ; preds = %2
  %11 = load ptr, ptr %4, align 8, !dbg !788
  %12 = getelementptr inbounds %struct._turnports, ptr %11, i32 0, i32 6, !dbg !788
  %13 = call i32 @turn_mutex_lock(ptr noundef %12), !dbg !788
  call void @llvm.dbg.declare(metadata ptr %6, metadata !790, metadata !DIExpression()), !dbg !791
  %14 = load ptr, ptr %4, align 8, !dbg !792
  %15 = getelementptr inbounds %struct._turnports, ptr %14, i32 0, i32 0, !dbg !793
  %16 = load i16, ptr %5, align 2, !dbg !794
  %17 = zext i16 %16 to i64, !dbg !792
  %18 = getelementptr inbounds [65536 x i32], ptr %15, i64 0, i64 %17, !dbg !792
  %19 = load i32, ptr %18, align 4, !dbg !792
  store i32 %19, ptr %6, align 4, !dbg !791
  %20 = load i32, ptr %6, align 4, !dbg !795
  %21 = icmp ne i32 %20, -1, !dbg !797
  br i1 %21, label %22, label %45, !dbg !798

22:                                               ; preds = %10
  %23 = load i32, ptr %6, align 4, !dbg !799
  %24 = call i32 @is_taken(i32 noundef %23), !dbg !800
  %25 = icmp ne i32 %24, 0, !dbg !800
  br i1 %25, label %45, label %26, !dbg !801

26:                                               ; preds = %22
  call void @llvm.dbg.declare(metadata ptr %7, metadata !802, metadata !DIExpression()), !dbg !804
  %27 = load i32, ptr %6, align 4, !dbg !805
  %28 = and i32 %27, 65535, !dbg !806
  %29 = trunc i32 %28 to i16, !dbg !807
  store i16 %29, ptr %7, align 2, !dbg !804
  %30 = load ptr, ptr %4, align 8, !dbg !808
  %31 = getelementptr inbounds %struct._turnports, ptr %30, i32 0, i32 5, !dbg !810
  %32 = load i16, ptr %7, align 2, !dbg !811
  %33 = zext i16 %32 to i64, !dbg !808
  %34 = getelementptr inbounds [65536 x i16], ptr %31, i64 0, i64 %33, !dbg !808
  %35 = load i16, ptr %34, align 2, !dbg !808
  %36 = zext i16 %35 to i32, !dbg !808
  %37 = load i16, ptr %5, align 2, !dbg !812
  %38 = zext i16 %37 to i32, !dbg !812
  %39 = icmp eq i32 %36, %38, !dbg !813
  br i1 %39, label %40, label %44, !dbg !814

40:                                               ; preds = %26
  %41 = load ptr, ptr %4, align 8, !dbg !815
  %42 = getelementptr inbounds %struct._turnports, ptr %41, i32 0, i32 6, !dbg !815
  %43 = call i32 @turn_mutex_unlock(ptr noundef %42), !dbg !815
  store i32 1, ptr %3, align 4, !dbg !817
  br label %50, !dbg !817

44:                                               ; preds = %26
  br label %45, !dbg !818

45:                                               ; preds = %44, %22, %10
  %46 = load ptr, ptr %4, align 8, !dbg !819
  %47 = getelementptr inbounds %struct._turnports, ptr %46, i32 0, i32 6, !dbg !819
  %48 = call i32 @turn_mutex_unlock(ptr noundef %47), !dbg !819
  br label %49, !dbg !820

49:                                               ; preds = %45, %2
  store i32 0, ptr %3, align 4, !dbg !821
  br label %50, !dbg !821

50:                                               ; preds = %49, %40
  %51 = load i32, ptr %3, align 4, !dbg !822
  ret i32 %51, !dbg !822
}

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @turnports_create(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 !dbg !823 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !826, metadata !DIExpression()), !dbg !827
  store i16 %1, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !828, metadata !DIExpression()), !dbg !829
  store i16 %2, ptr %7, align 2
  call void @llvm.dbg.declare(metadata ptr %7, metadata !830, metadata !DIExpression()), !dbg !831
  %9 = load i16, ptr %6, align 2, !dbg !832
  %10 = zext i16 %9 to i32, !dbg !832
  %11 = load i16, ptr %7, align 2, !dbg !834
  %12 = zext i16 %11 to i32, !dbg !834
  %13 = icmp sgt i32 %10, %12, !dbg !835
  br i1 %13, label %14, label %15, !dbg !836

14:                                               ; preds = %3
  store ptr null, ptr %4, align 8, !dbg !837
  br label %22, !dbg !837

15:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata ptr %8, metadata !838, metadata !DIExpression()), !dbg !839
  %16 = load ptr, ptr %5, align 8, !dbg !840
  %17 = call ptr @allocate_super_memory_region_func(ptr noundef %16, i64 noundef 393248, ptr noundef @.str, ptr noundef @__FUNCTION__.turnports_create, i32 noundef 142), !dbg !840
  store ptr %17, ptr %8, align 8, !dbg !839
  %18 = load ptr, ptr %8, align 8, !dbg !841
  %19 = load i16, ptr %6, align 2, !dbg !842
  %20 = load i16, ptr %7, align 2, !dbg !843
  call void @turnports_init(ptr noundef %18, i16 noundef zeroext %19, i16 noundef zeroext %20), !dbg !844
  %21 = load ptr, ptr %8, align 8, !dbg !845
  store ptr %21, ptr %4, align 8, !dbg !846
  br label %22, !dbg !846

22:                                               ; preds = %15, %14
  %23 = load ptr, ptr %4, align 8, !dbg !847
  ret ptr %23, !dbg !847
}

declare i32 @ur_addr_map_put(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnports_init(ptr noundef %0, i16 noundef zeroext %1, i16 noundef zeroext %2) #0 !dbg !848 {
  %4 = alloca ptr, align 8
  %5 = alloca i16, align 2
  %6 = alloca i16, align 2
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !851, metadata !DIExpression()), !dbg !852
  store i16 %1, ptr %5, align 2
  call void @llvm.dbg.declare(metadata ptr %5, metadata !853, metadata !DIExpression()), !dbg !854
  store i16 %2, ptr %6, align 2
  call void @llvm.dbg.declare(metadata ptr %6, metadata !855, metadata !DIExpression()), !dbg !856
  %8 = load i16, ptr %5, align 2, !dbg !857
  %9 = zext i16 %8 to i32, !dbg !857
  %10 = load ptr, ptr %4, align 8, !dbg !858
  %11 = getelementptr inbounds %struct._turnports, ptr %10, i32 0, i32 1, !dbg !859
  store i32 %9, ptr %11, align 8, !dbg !860
  %12 = load i16, ptr %6, align 2, !dbg !861
  %13 = zext i16 %12 to i32, !dbg !862
  %14 = add i32 %13, 1, !dbg !863
  %15 = load ptr, ptr %4, align 8, !dbg !864
  %16 = getelementptr inbounds %struct._turnports, ptr %15, i32 0, i32 2, !dbg !865
  store i32 %14, ptr %16, align 4, !dbg !866
  %17 = load i16, ptr %5, align 2, !dbg !867
  %18 = load ptr, ptr %4, align 8, !dbg !868
  %19 = getelementptr inbounds %struct._turnports, ptr %18, i32 0, i32 3, !dbg !869
  store i16 %17, ptr %19, align 8, !dbg !870
  %20 = load i16, ptr %6, align 2, !dbg !871
  %21 = load ptr, ptr %4, align 8, !dbg !872
  %22 = getelementptr inbounds %struct._turnports, ptr %21, i32 0, i32 4, !dbg !873
  store i16 %20, ptr %22, align 2, !dbg !874
  call void @llvm.dbg.declare(metadata ptr %7, metadata !875, metadata !DIExpression()), !dbg !876
  store i32 0, ptr %7, align 4, !dbg !876
  store i32 0, ptr %7, align 4, !dbg !877
  br label %23, !dbg !879

23:                                               ; preds = %41, %3
  %24 = load i32, ptr %7, align 4, !dbg !880
  %25 = load i16, ptr %5, align 2, !dbg !882
  %26 = zext i16 %25 to i32, !dbg !882
  %27 = icmp slt i32 %24, %26, !dbg !883
  br i1 %27, label %28, label %44, !dbg !884

28:                                               ; preds = %23
  %29 = load ptr, ptr %4, align 8, !dbg !885
  %30 = getelementptr inbounds %struct._turnports, ptr %29, i32 0, i32 0, !dbg !887
  %31 = load i32, ptr %7, align 4, !dbg !888
  %32 = sext i32 %31 to i64, !dbg !885
  %33 = getelementptr inbounds [65536 x i32], ptr %30, i64 0, i64 %32, !dbg !885
  store i32 -1, ptr %33, align 4, !dbg !889
  %34 = load i32, ptr %7, align 4, !dbg !890
  %35 = trunc i32 %34 to i16, !dbg !891
  %36 = load ptr, ptr %4, align 8, !dbg !892
  %37 = getelementptr inbounds %struct._turnports, ptr %36, i32 0, i32 5, !dbg !893
  %38 = load i32, ptr %7, align 4, !dbg !894
  %39 = sext i32 %38 to i64, !dbg !892
  %40 = getelementptr inbounds [65536 x i16], ptr %37, i64 0, i64 %39, !dbg !892
  store i16 %35, ptr %40, align 2, !dbg !895
  br label %41, !dbg !896

41:                                               ; preds = %28
  %42 = load i32, ptr %7, align 4, !dbg !897
  %43 = add nsw i32 %42, 1, !dbg !897
  store i32 %43, ptr %7, align 4, !dbg !897
  br label %23, !dbg !898, !llvm.loop !899

44:                                               ; preds = %23
  %45 = load i16, ptr %5, align 2, !dbg !901
  %46 = zext i16 %45 to i32, !dbg !901
  store i32 %46, ptr %7, align 4, !dbg !903
  br label %47, !dbg !904

47:                                               ; preds = %66, %44
  %48 = load i32, ptr %7, align 4, !dbg !905
  %49 = load i16, ptr %6, align 2, !dbg !907
  %50 = zext i16 %49 to i32, !dbg !907
  %51 = icmp sle i32 %48, %50, !dbg !908
  br i1 %51, label %52, label %69, !dbg !909

52:                                               ; preds = %47
  %53 = load i32, ptr %7, align 4, !dbg !910
  %54 = load ptr, ptr %4, align 8, !dbg !912
  %55 = getelementptr inbounds %struct._turnports, ptr %54, i32 0, i32 0, !dbg !913
  %56 = load i32, ptr %7, align 4, !dbg !914
  %57 = sext i32 %56 to i64, !dbg !912
  %58 = getelementptr inbounds [65536 x i32], ptr %55, i64 0, i64 %57, !dbg !912
  store i32 %53, ptr %58, align 4, !dbg !915
  %59 = load i32, ptr %7, align 4, !dbg !916
  %60 = trunc i32 %59 to i16, !dbg !917
  %61 = load ptr, ptr %4, align 8, !dbg !918
  %62 = getelementptr inbounds %struct._turnports, ptr %61, i32 0, i32 5, !dbg !919
  %63 = load i32, ptr %7, align 4, !dbg !920
  %64 = sext i32 %63 to i64, !dbg !918
  %65 = getelementptr inbounds [65536 x i16], ptr %62, i64 0, i64 %64, !dbg !918
  store i16 %60, ptr %65, align 2, !dbg !921
  br label %66, !dbg !922

66:                                               ; preds = %52
  %67 = load i32, ptr %7, align 4, !dbg !923
  %68 = add nsw i32 %67, 1, !dbg !923
  store i32 %68, ptr %7, align 4, !dbg !923
  br label %47, !dbg !924, !llvm.loop !925

69:                                               ; preds = %47
  %70 = load i16, ptr %6, align 2, !dbg !927
  %71 = zext i16 %70 to i32, !dbg !929
  %72 = add nsw i32 %71, 1, !dbg !930
  store i32 %72, ptr %7, align 4, !dbg !931
  br label %73, !dbg !932

73:                                               ; preds = %89, %69
  %74 = load i32, ptr %7, align 4, !dbg !933
  %75 = icmp slt i32 %74, 65536, !dbg !935
  br i1 %75, label %76, label %92, !dbg !936

76:                                               ; preds = %73
  %77 = load ptr, ptr %4, align 8, !dbg !937
  %78 = getelementptr inbounds %struct._turnports, ptr %77, i32 0, i32 0, !dbg !939
  %79 = load i32, ptr %7, align 4, !dbg !940
  %80 = sext i32 %79 to i64, !dbg !937
  %81 = getelementptr inbounds [65536 x i32], ptr %78, i64 0, i64 %80, !dbg !937
  store i32 -1, ptr %81, align 4, !dbg !941
  %82 = load i32, ptr %7, align 4, !dbg !942
  %83 = trunc i32 %82 to i16, !dbg !943
  %84 = load ptr, ptr %4, align 8, !dbg !944
  %85 = getelementptr inbounds %struct._turnports, ptr %84, i32 0, i32 5, !dbg !945
  %86 = load i32, ptr %7, align 4, !dbg !946
  %87 = sext i32 %86 to i64, !dbg !944
  %88 = getelementptr inbounds [65536 x i16], ptr %85, i64 0, i64 %87, !dbg !944
  store i16 %83, ptr %88, align 2, !dbg !947
  br label %89, !dbg !948

89:                                               ; preds = %76
  %90 = load i32, ptr %7, align 4, !dbg !949
  %91 = add nsw i32 %90, 1, !dbg !949
  store i32 %91, ptr %7, align 4, !dbg !949
  br label %73, !dbg !950, !llvm.loop !951

92:                                               ; preds = %73
  %93 = load ptr, ptr %4, align 8, !dbg !953
  call void @turnports_randomize(ptr noundef %93), !dbg !954
  %94 = load ptr, ptr %4, align 8, !dbg !955
  %95 = getelementptr inbounds %struct._turnports, ptr %94, i32 0, i32 6, !dbg !955
  %96 = call i32 @turn_mutex_init_recursive(ptr noundef %95), !dbg !955
  ret void, !dbg !956
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @turnports_randomize(ptr noundef %0) #0 !dbg !957 {
  %2 = alloca ptr, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !960, metadata !DIExpression()), !dbg !961
  %11 = load ptr, ptr %2, align 8, !dbg !962
  %12 = icmp ne ptr %11, null, !dbg !962
  br i1 %12, label %13, label %121, !dbg !964

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata ptr %3, metadata !965, metadata !DIExpression()), !dbg !967
  %14 = load ptr, ptr %2, align 8, !dbg !968
  %15 = getelementptr inbounds %struct._turnports, ptr %14, i32 0, i32 2, !dbg !969
  %16 = load i32, ptr %15, align 4, !dbg !969
  %17 = load ptr, ptr %2, align 8, !dbg !970
  %18 = getelementptr inbounds %struct._turnports, ptr %17, i32 0, i32 1, !dbg !971
  %19 = load i32, ptr %18, align 8, !dbg !971
  %20 = sub i32 %16, %19, !dbg !972
  store i32 %20, ptr %3, align 4, !dbg !967
  call void @llvm.dbg.declare(metadata ptr %4, metadata !973, metadata !DIExpression()), !dbg !974
  store i32 0, ptr %4, align 4, !dbg !974
  call void @llvm.dbg.declare(metadata ptr %5, metadata !975, metadata !DIExpression()), !dbg !976
  %21 = load i32, ptr %3, align 4, !dbg !977
  %22 = mul i32 %21, 10, !dbg !978
  store i32 %22, ptr %5, align 4, !dbg !976
  store i32 0, ptr %4, align 4, !dbg !979
  br label %23, !dbg !981

23:                                               ; preds = %117, %13
  %24 = load i32, ptr %4, align 4, !dbg !982
  %25 = load i32, ptr %5, align 4, !dbg !984
  %26 = icmp ult i32 %24, %25, !dbg !985
  br i1 %26, label %27, label %120, !dbg !986

27:                                               ; preds = %23
  call void @llvm.dbg.declare(metadata ptr %6, metadata !987, metadata !DIExpression()), !dbg !989
  %28 = load ptr, ptr %2, align 8, !dbg !990
  %29 = getelementptr inbounds %struct._turnports, ptr %28, i32 0, i32 1, !dbg !991
  %30 = load i32, ptr %29, align 8, !dbg !991
  %31 = call i64 @random() #4, !dbg !992
  %32 = load i32, ptr %3, align 4, !dbg !993
  %33 = zext i32 %32 to i64, !dbg !994
  %34 = urem i64 %31, %33, !dbg !995
  %35 = trunc i64 %34 to i16, !dbg !996
  %36 = zext i16 %35 to i32, !dbg !996
  %37 = add i32 %30, %36, !dbg !997
  %38 = trunc i32 %37 to i16, !dbg !998
  store i16 %38, ptr %6, align 2, !dbg !989
  call void @llvm.dbg.declare(metadata ptr %7, metadata !999, metadata !DIExpression()), !dbg !1000
  %39 = load ptr, ptr %2, align 8, !dbg !1001
  %40 = getelementptr inbounds %struct._turnports, ptr %39, i32 0, i32 1, !dbg !1002
  %41 = load i32, ptr %40, align 8, !dbg !1002
  %42 = call i64 @random() #4, !dbg !1003
  %43 = load i32, ptr %3, align 4, !dbg !1004
  %44 = zext i32 %43 to i64, !dbg !1005
  %45 = urem i64 %42, %44, !dbg !1006
  %46 = trunc i64 %45 to i16, !dbg !1007
  %47 = zext i16 %46 to i32, !dbg !1007
  %48 = add i32 %41, %47, !dbg !1008
  %49 = trunc i32 %48 to i16, !dbg !1009
  store i16 %49, ptr %7, align 2, !dbg !1000
  %50 = load i16, ptr %6, align 2, !dbg !1010
  %51 = zext i16 %50 to i32, !dbg !1010
  %52 = load i16, ptr %7, align 2, !dbg !1012
  %53 = zext i16 %52 to i32, !dbg !1012
  %54 = icmp ne i32 %51, %53, !dbg !1013
  br i1 %54, label %55, label %116, !dbg !1014

55:                                               ; preds = %27
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1015, metadata !DIExpression()), !dbg !1017
  %56 = load ptr, ptr %2, align 8, !dbg !1018
  %57 = getelementptr inbounds %struct._turnports, ptr %56, i32 0, i32 0, !dbg !1019
  %58 = load i16, ptr %6, align 2, !dbg !1020
  %59 = zext i16 %58 to i64, !dbg !1018
  %60 = getelementptr inbounds [65536 x i32], ptr %57, i64 0, i64 %59, !dbg !1018
  %61 = load i32, ptr %60, align 4, !dbg !1018
  store i32 %61, ptr %8, align 4, !dbg !1017
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1021, metadata !DIExpression()), !dbg !1022
  %62 = load ptr, ptr %2, align 8, !dbg !1023
  %63 = getelementptr inbounds %struct._turnports, ptr %62, i32 0, i32 0, !dbg !1024
  %64 = load i16, ptr %7, align 2, !dbg !1025
  %65 = zext i16 %64 to i64, !dbg !1023
  %66 = getelementptr inbounds [65536 x i32], ptr %63, i64 0, i64 %65, !dbg !1023
  %67 = load i32, ptr %66, align 4, !dbg !1023
  store i32 %67, ptr %9, align 4, !dbg !1022
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1026, metadata !DIExpression()), !dbg !1027
  %68 = load ptr, ptr %2, align 8, !dbg !1028
  %69 = getelementptr inbounds %struct._turnports, ptr %68, i32 0, i32 0, !dbg !1029
  %70 = load i16, ptr %6, align 2, !dbg !1030
  %71 = zext i16 %70 to i64, !dbg !1028
  %72 = getelementptr inbounds [65536 x i32], ptr %69, i64 0, i64 %71, !dbg !1028
  %73 = load i32, ptr %72, align 4, !dbg !1028
  store i32 %73, ptr %10, align 4, !dbg !1027
  %74 = load ptr, ptr %2, align 8, !dbg !1031
  %75 = getelementptr inbounds %struct._turnports, ptr %74, i32 0, i32 0, !dbg !1032
  %76 = load i16, ptr %7, align 2, !dbg !1033
  %77 = zext i16 %76 to i64, !dbg !1031
  %78 = getelementptr inbounds [65536 x i32], ptr %75, i64 0, i64 %77, !dbg !1031
  %79 = load i32, ptr %78, align 4, !dbg !1031
  %80 = load ptr, ptr %2, align 8, !dbg !1034
  %81 = getelementptr inbounds %struct._turnports, ptr %80, i32 0, i32 0, !dbg !1035
  %82 = load i16, ptr %6, align 2, !dbg !1036
  %83 = zext i16 %82 to i64, !dbg !1034
  %84 = getelementptr inbounds [65536 x i32], ptr %81, i64 0, i64 %83, !dbg !1034
  store i32 %79, ptr %84, align 4, !dbg !1037
  %85 = load i32, ptr %10, align 4, !dbg !1038
  %86 = load ptr, ptr %2, align 8, !dbg !1039
  %87 = getelementptr inbounds %struct._turnports, ptr %86, i32 0, i32 0, !dbg !1040
  %88 = load i16, ptr %7, align 2, !dbg !1041
  %89 = zext i16 %88 to i64, !dbg !1039
  %90 = getelementptr inbounds [65536 x i32], ptr %87, i64 0, i64 %89, !dbg !1039
  store i32 %85, ptr %90, align 4, !dbg !1042
  %91 = load ptr, ptr %2, align 8, !dbg !1043
  %92 = getelementptr inbounds %struct._turnports, ptr %91, i32 0, i32 5, !dbg !1044
  %93 = load i32, ptr %8, align 4, !dbg !1045
  %94 = sext i32 %93 to i64, !dbg !1043
  %95 = getelementptr inbounds [65536 x i16], ptr %92, i64 0, i64 %94, !dbg !1043
  %96 = load i16, ptr %95, align 2, !dbg !1043
  %97 = zext i16 %96 to i32, !dbg !1046
  store i32 %97, ptr %10, align 4, !dbg !1047
  %98 = load ptr, ptr %2, align 8, !dbg !1048
  %99 = getelementptr inbounds %struct._turnports, ptr %98, i32 0, i32 5, !dbg !1049
  %100 = load i32, ptr %9, align 4, !dbg !1050
  %101 = sext i32 %100 to i64, !dbg !1048
  %102 = getelementptr inbounds [65536 x i16], ptr %99, i64 0, i64 %101, !dbg !1048
  %103 = load i16, ptr %102, align 2, !dbg !1048
  %104 = load ptr, ptr %2, align 8, !dbg !1051
  %105 = getelementptr inbounds %struct._turnports, ptr %104, i32 0, i32 5, !dbg !1052
  %106 = load i32, ptr %8, align 4, !dbg !1053
  %107 = sext i32 %106 to i64, !dbg !1051
  %108 = getelementptr inbounds [65536 x i16], ptr %105, i64 0, i64 %107, !dbg !1051
  store i16 %103, ptr %108, align 2, !dbg !1054
  %109 = load i32, ptr %10, align 4, !dbg !1055
  %110 = trunc i32 %109 to i16, !dbg !1056
  %111 = load ptr, ptr %2, align 8, !dbg !1057
  %112 = getelementptr inbounds %struct._turnports, ptr %111, i32 0, i32 5, !dbg !1058
  %113 = load i32, ptr %9, align 4, !dbg !1059
  %114 = sext i32 %113 to i64, !dbg !1057
  %115 = getelementptr inbounds [65536 x i16], ptr %112, i64 0, i64 %114, !dbg !1057
  store i16 %110, ptr %115, align 2, !dbg !1060
  br label %116, !dbg !1061

116:                                              ; preds = %55, %27
  br label %117, !dbg !1062

117:                                              ; preds = %116
  %118 = load i32, ptr %4, align 4, !dbg !1063
  %119 = add i32 %118, 1, !dbg !1063
  store i32 %119, ptr %4, align 4, !dbg !1063
  br label %23, !dbg !1064, !llvm.loop !1065

120:                                              ; preds = %23
  br label %121, !dbg !1067

121:                                              ; preds = %120, %1
  ret void, !dbg !1068
}

; Function Attrs: nounwind
declare i64 @random() #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_taken(i32 noundef %0) #0 !dbg !1069 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, ptr %2, align 4
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1072, metadata !DIExpression()), !dbg !1073
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i32 -1, ptr %3, align 4, !dbg !1075
  %4 = load i32, ptr %2, align 4, !dbg !1076
  switch i32 %4, label %6 [
    i32 -2, label %5
    i32 -3, label %5
    i32 -4, label %5
  ], !dbg !1077

5:                                                ; preds = %1, %1, %1
  store i32 1, ptr %3, align 4, !dbg !1078
  br label %7, !dbg !1080

6:                                                ; preds = %1
  store i32 0, ptr %3, align 4, !dbg !1081
  br label %7, !dbg !1082

7:                                                ; preds = %6, %5
  %8 = load i32, ptr %3, align 4, !dbg !1083
  ret i32 %8, !dbg !1084
}

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @turnports_size(ptr noundef %0) #0 !dbg !1085 {
  %2 = alloca i16, align 2
  %3 = alloca ptr, align 8
  %4 = alloca i16, align 2
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1088, metadata !DIExpression()), !dbg !1089
  %5 = load ptr, ptr %3, align 8, !dbg !1090
  %6 = icmp ne ptr %5, null, !dbg !1090
  br i1 %6, label %8, label %7, !dbg !1092

7:                                                ; preds = %1
  store i16 0, ptr %2, align 2, !dbg !1093
  br label %24, !dbg !1093

8:                                                ; preds = %1
  %9 = load ptr, ptr %3, align 8, !dbg !1094
  %10 = getelementptr inbounds %struct._turnports, ptr %9, i32 0, i32 6, !dbg !1094
  %11 = call i32 @turn_mutex_lock(ptr noundef %10), !dbg !1094
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1096, metadata !DIExpression()), !dbg !1097
  %12 = load ptr, ptr %3, align 8, !dbg !1098
  %13 = getelementptr inbounds %struct._turnports, ptr %12, i32 0, i32 2, !dbg !1099
  %14 = load i32, ptr %13, align 4, !dbg !1099
  %15 = load ptr, ptr %3, align 8, !dbg !1100
  %16 = getelementptr inbounds %struct._turnports, ptr %15, i32 0, i32 1, !dbg !1101
  %17 = load i32, ptr %16, align 8, !dbg !1101
  %18 = sub i32 %14, %17, !dbg !1102
  %19 = trunc i32 %18 to i16, !dbg !1103
  store i16 %19, ptr %4, align 2, !dbg !1097
  %20 = load ptr, ptr %3, align 8, !dbg !1104
  %21 = getelementptr inbounds %struct._turnports, ptr %20, i32 0, i32 6, !dbg !1104
  %22 = call i32 @turn_mutex_unlock(ptr noundef %21), !dbg !1104
  %23 = load i16, ptr %4, align 2, !dbg !1105
  store i16 %23, ptr %2, align 2, !dbg !1106
  br label %24, !dbg !1106

24:                                               ; preds = %8, %7
  %25 = load i16, ptr %2, align 2, !dbg !1107
  ret i16 %25, !dbg !1107
}

declare i64 @turn_random() #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!15}
!llvm.module.flags = !{!159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "src/apps/relay/turn_ports.c", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "e6c4a5cd16231e09fd338a26be8c57e0")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 360, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 45)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 306, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 152, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 19)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(name: "turnipports_singleton", scope: !15, file: !2, line: 302, type: !18, isLocal: true, isDefinition: true)
!15 = distinct !DICompileUnit(language: DW_LANG_C11, file: !16, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !17, globals: !153, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/raj/coturn/src/apps/relay/turn_ports.c", directory: "/home/raj/coturn/build", checksumkind: CSK_MD5, checksum: "e6c4a5cd16231e09fd338a26be8c57e0")
!17 = !{!18, !133, !135, !112, !78, !29, !150, !80, !113, !151, !152}
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnipports", file: !20, line: 50, baseType: !21)
!20 = !DIFile(filename: "src/apps/relay/turn_ports.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "11983eef23ed630198ed333562550552")
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turnipports", file: !2, line: 282, size: 2883968, elements: !22)
!22 = !{!23, !28, !34, !35, !124, !125}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "sm", scope: !21, file: !2, line: 284, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "super_memory_t", file: !26, line: 49, baseType: !27)
!26 = !DIFile(filename: "src/apps/relay/ns_sm.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "9025fd46a533d33a213551fd581f5b89")
!27 = !DICompositeType(tag: DW_TAG_structure_type, name: "_super_memory", file: !26, line: 48, flags: DIFlagFwdDecl)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !21, file: !2, line: 285, baseType: !29, size: 16, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !30, line: 25, baseType: !31)
!30 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint16_t", file: !32, line: 40, baseType: !33)
!32 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!33 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!34 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !21, file: !2, line: 286, baseType: !29, size: 16, offset: 80)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "ip_to_turnports_udp", scope: !21, file: !2, line: 287, baseType: !36, size: 1441856, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map", file: !37, line: 183, baseType: !38)
!37 = !DIFile(filename: "src/server/ns_turn_maps.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "1d968a8e0fbb011891961d10535e1104")
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_ur_addr_map", file: !37, line: 177, size: 1441856, elements: !39)
!39 = !{!40, !121}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "lists", scope: !38, file: !37, line: 178, baseType: !41, size: 1441792)
!41 = !DICompositeType(tag: DW_TAG_array_type, baseType: !42, size: 1441792, elements: !119)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_list_header", file: !37, line: 175, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_list_header", file: !37, line: 171, size: 1408, elements: !44)
!44 = !{!45, !114, !116}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "main_list", scope: !43, file: !37, line: 172, baseType: !46, size: 1280)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, size: 1280, elements: !108)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "addr_elem", file: !37, line: 169, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_addr_elem", file: !37, line: 166, size: 320, elements: !49)
!49 = !{!50, !111}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !48, file: !37, line: 167, baseType: !51, size: 224)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "ioa_addr", file: !52, line: 48, baseType: !53)
!52 = !DIFile(filename: "src/client/ns_turn_ioaddr.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "6bb7c107d1e7937049c12f6d0dffd94c")
!53 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !52, line: 44, size: 224, elements: !54)
!54 = !{!55, !66, !86}
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !53, file: !52, line: 45, baseType: !56, size: 128)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr", file: !57, line: 180, size: 128, elements: !58)
!57 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/socket.h", directory: "", checksumkind: CSK_MD5, checksum: "e3826be048699664d9ef7b080f62f2e0")
!58 = !{!59, !62}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "sa_family", scope: !56, file: !57, line: 182, baseType: !60, size: 16)
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "sa_family_t", file: !61, line: 28, baseType: !33)
!61 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/sockaddr.h", directory: "", checksumkind: CSK_MD5, checksum: "dd7f1d9dd6e26f88d1726905ed5d9ff5")
!62 = !DIDerivedType(tag: DW_TAG_member, name: "sa_data", scope: !56, file: !57, line: 183, baseType: !63, size: 112, offset: 16)
!63 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !64)
!64 = !{!65}
!65 = !DISubrange(count: 14)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "s4", scope: !53, file: !52, line: 46, baseType: !67, size: 128)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in", file: !68, line: 245, size: 128, elements: !69)
!68 = !DIFile(filename: "/usr/include/netinet/in.h", directory: "", checksumkind: CSK_MD5, checksum: "eb6560f10d4cfe9f30fea2c92b9da0fd")
!69 = !{!70, !71, !73, !81}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "sin_family", scope: !67, file: !68, line: 247, baseType: !60, size: 16)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "sin_port", scope: !67, file: !68, line: 248, baseType: !72, size: 16, offset: 16)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_port_t", file: !68, line: 123, baseType: !29)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "sin_addr", scope: !67, file: !68, line: 249, baseType: !74, size: 32, offset: 32)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in_addr", file: !68, line: 31, size: 32, elements: !75)
!75 = !{!76}
!76 = !DIDerivedType(tag: DW_TAG_member, name: "s_addr", scope: !74, file: !68, line: 33, baseType: !77, size: 32)
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "in_addr_t", file: !68, line: 30, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !30, line: 26, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint32_t", file: !32, line: 42, baseType: !80)
!80 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "sin_zero", scope: !67, file: !68, line: 252, baseType: !82, size: 64, offset: 64)
!82 = !DICompositeType(tag: DW_TAG_array_type, baseType: !83, size: 64, elements: !84)
!83 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!84 = !{!85}
!85 = !DISubrange(count: 8)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "s6", scope: !53, file: !52, line: 47, baseType: !87, size: 224)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sockaddr_in6", file: !68, line: 260, size: 224, elements: !88)
!88 = !{!89, !90, !91, !92, !110}
!89 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_family", scope: !87, file: !68, line: 262, baseType: !60, size: 16)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_port", scope: !87, file: !68, line: 263, baseType: !72, size: 16, offset: 16)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_flowinfo", scope: !87, file: !68, line: 264, baseType: !78, size: 32, offset: 32)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_addr", scope: !87, file: !68, line: 265, baseType: !93, size: 128, offset: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "in6_addr", file: !68, line: 219, size: 128, elements: !94)
!94 = !{!95}
!95 = !DIDerivedType(tag: DW_TAG_member, name: "__in6_u", scope: !93, file: !68, line: 226, baseType: !96, size: 128)
!96 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !93, file: !68, line: 221, size: 128, elements: !97)
!97 = !{!98, !104, !106}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr8", scope: !96, file: !68, line: 223, baseType: !99, size: 128)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 128, elements: !102)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !30, line: 24, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !32, line: 38, baseType: !83)
!102 = !{!103}
!103 = !DISubrange(count: 16)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr16", scope: !96, file: !68, line: 224, baseType: !105, size: 128)
!105 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 128, elements: !84)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "__u6_addr32", scope: !96, file: !68, line: 225, baseType: !107, size: 128)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 128, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 4)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "sin6_scope_id", scope: !87, file: !68, line: 266, baseType: !78, size: 32, offset: 192)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !48, file: !37, line: 168, baseType: !112, size: 64, offset: 256)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "ur_addr_map_value_type", file: !37, line: 161, baseType: !113)
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "extra_list", scope: !43, file: !37, line: 173, baseType: !115, size: 64, offset: 1280)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "extra_sz", scope: !43, file: !37, line: 174, baseType: !117, size: 64, offset: 1344)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !118, line: 46, baseType: !113)
!118 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!119 = !{!120}
!120 = !DISubrange(count: 1024)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !38, file: !37, line: 179, baseType: !122, size: 64, offset: 1441792)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !30, line: 27, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !32, line: 45, baseType: !113)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "ip_to_turnports_tcp", scope: !21, file: !2, line: 288, baseType: !36, size: 1441856, offset: 1441984)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !21, file: !2, line: 289, baseType: !126, size: 128, offset: 2883840)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "turn_mutex", file: !127, line: 60, baseType: !128)
!127 = !DIFile(filename: "src/server/ns_turn_ioalib.h", directory: "/home/raj/coturn", checksumkind: CSK_MD5, checksum: "c6bb568b11ce41f25b29a4464aa685c5")
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turn_mutex", file: !127, line: 55, size: 128, elements: !129)
!129 = !{!130, !131}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !128, file: !127, line: 56, baseType: !78, size: 32)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !128, file: !127, line: 57, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "turnports", file: !2, line: 56, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_turnports", file: !2, line: 47, size: 3145984, elements: !138)
!138 = !{!139, !143, !144, !145, !146, !147, !149}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !137, file: !2, line: 48, baseType: !140, size: 2097152)
!140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 2097152, elements: !141)
!141 = !{!142}
!142 = !DISubrange(count: 65536)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "low", scope: !137, file: !2, line: 49, baseType: !78, size: 32, offset: 2097152)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "high", scope: !137, file: !2, line: 50, baseType: !78, size: 32, offset: 2097184)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "range_start", scope: !137, file: !2, line: 51, baseType: !29, size: 16, offset: 2097216)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "range_stop", scope: !137, file: !2, line: 52, baseType: !29, size: 16, offset: 2097232)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "ports", scope: !137, file: !2, line: 53, baseType: !148, size: 1048576, offset: 2097248)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, size: 1048576, elements: !141)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !137, file: !2, line: 54, baseType: !126, size: 128, offset: 3145856)
!150 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!153 = !{!0, !7, !13, !154}
!154 = !DIGlobalVariableExpression(var: !155, expr: !DIExpression())
!155 = distinct !DIGlobalVariable(scope: null, file: !2, line: 142, type: !156, isLocal: true, isDefinition: true)
!156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 136, elements: !157)
!157 = !{!158}
!158 = !DISubrange(count: 17)
!159 = !{i32 7, !"Dwarf Version", i32 5}
!160 = !{i32 2, !"Debug Info Version", i32 3}
!161 = !{i32 1, !"wchar_size", i32 4}
!162 = !{i32 8, !"PIC Level", i32 2}
!163 = !{i32 7, !"PIE Level", i32 2}
!164 = !{i32 7, !"uwtable", i32 2}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 16.0.0"}
!167 = distinct !DISubprogram(name: "turnipports_create", scope: !2, file: !2, line: 304, type: !168, scopeLine: 305, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!168 = !DISubroutineType(types: !169)
!169 = !{!18, !24, !29, !29}
!170 = !{}
!171 = !DILocalVariable(name: "sm", arg: 1, scope: !167, file: !2, line: 304, type: !24)
!172 = !DILocation(line: 304, column: 49, scope: !167)
!173 = !DILocalVariable(name: "start", arg: 2, scope: !167, file: !2, line: 304, type: !29)
!174 = !DILocation(line: 304, column: 62, scope: !167)
!175 = !DILocalVariable(name: "end", arg: 3, scope: !167, file: !2, line: 304, type: !29)
!176 = !DILocation(line: 304, column: 78, scope: !167)
!177 = !DILocalVariable(name: "ret", scope: !167, file: !2, line: 306, type: !18)
!178 = !DILocation(line: 306, column: 15, scope: !167)
!179 = !DILocation(line: 306, column: 36, scope: !167)
!180 = !DILocation(line: 307, column: 12, scope: !167)
!181 = !DILocation(line: 307, column: 2, scope: !167)
!182 = !DILocation(line: 307, column: 7, scope: !167)
!183 = !DILocation(line: 307, column: 10, scope: !167)
!184 = !DILocation(line: 308, column: 21, scope: !167)
!185 = !DILocation(line: 308, column: 26, scope: !167)
!186 = !DILocation(line: 308, column: 2, scope: !167)
!187 = !DILocation(line: 309, column: 21, scope: !167)
!188 = !DILocation(line: 309, column: 26, scope: !167)
!189 = !DILocation(line: 309, column: 2, scope: !167)
!190 = !DILocation(line: 310, column: 15, scope: !167)
!191 = !DILocation(line: 310, column: 2, scope: !167)
!192 = !DILocation(line: 310, column: 7, scope: !167)
!193 = !DILocation(line: 310, column: 13, scope: !167)
!194 = !DILocation(line: 311, column: 13, scope: !167)
!195 = !DILocation(line: 311, column: 2, scope: !167)
!196 = !DILocation(line: 311, column: 7, scope: !167)
!197 = !DILocation(line: 311, column: 11, scope: !167)
!198 = !DILocation(line: 312, column: 2, scope: !167)
!199 = !DILocation(line: 313, column: 26, scope: !167)
!200 = !DILocation(line: 313, column: 24, scope: !167)
!201 = !DILocation(line: 314, column: 9, scope: !167)
!202 = !DILocation(line: 314, column: 2, scope: !167)
!203 = distinct !DISubprogram(name: "turnipports_add_ip", scope: !2, file: !2, line: 334, type: !204, scopeLine: 335, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!204 = !DISubroutineType(types: !205)
!205 = !{null, !100, !206}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!208 = !DILocalVariable(name: "transport", arg: 1, scope: !203, file: !2, line: 334, type: !100)
!209 = !DILocation(line: 334, column: 33, scope: !203)
!210 = !DILocalVariable(name: "backend_addr", arg: 2, scope: !203, file: !2, line: 334, type: !206)
!211 = !DILocation(line: 334, column: 60, scope: !203)
!212 = !DILocation(line: 336, column: 18, scope: !203)
!213 = !DILocation(line: 336, column: 41, scope: !203)
!214 = !DILocation(line: 336, column: 52, scope: !203)
!215 = !DILocation(line: 336, column: 2, scope: !203)
!216 = !DILocation(line: 337, column: 1, scope: !203)
!217 = distinct !DISubprogram(name: "turnipports_add", scope: !2, file: !2, line: 317, type: !218, scopeLine: 318, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!218 = !DISubroutineType(types: !219)
!219 = !{!135, !18, !100, !206}
!220 = !DILocalVariable(name: "tp", arg: 1, scope: !217, file: !2, line: 317, type: !18)
!221 = !DILocation(line: 317, column: 48, scope: !217)
!222 = !DILocalVariable(name: "transport", arg: 2, scope: !217, file: !2, line: 317, type: !100)
!223 = !DILocation(line: 317, column: 60, scope: !217)
!224 = !DILocalVariable(name: "backend_addr", arg: 3, scope: !217, file: !2, line: 317, type: !206)
!225 = !DILocation(line: 317, column: 87, scope: !217)
!226 = !DILocalVariable(name: "t", scope: !217, file: !2, line: 319, type: !112)
!227 = !DILocation(line: 319, column: 25, scope: !217)
!228 = !DILocation(line: 320, column: 6, scope: !229)
!229 = distinct !DILexicalBlock(scope: !217, file: !2, line: 320, column: 6)
!230 = !DILocation(line: 320, column: 9, scope: !229)
!231 = !DILocation(line: 320, column: 12, scope: !229)
!232 = !DILocation(line: 320, column: 6, scope: !217)
!233 = !DILocalVariable(name: "ba", scope: !234, file: !2, line: 321, type: !51)
!234 = distinct !DILexicalBlock(scope: !229, file: !2, line: 320, column: 26)
!235 = !DILocation(line: 321, column: 12, scope: !234)
!236 = !DILocation(line: 322, column: 17, scope: !234)
!237 = !DILocation(line: 322, column: 3, scope: !234)
!238 = !DILocation(line: 323, column: 3, scope: !234)
!239 = !DILocation(line: 324, column: 3, scope: !234)
!240 = !DILocation(line: 325, column: 32, scope: !241)
!241 = distinct !DILexicalBlock(scope: !234, file: !2, line: 325, column: 7)
!242 = !DILocation(line: 325, column: 36, scope: !241)
!243 = !DILocation(line: 325, column: 24, scope: !241)
!244 = !DILocation(line: 325, column: 8, scope: !241)
!245 = !DILocation(line: 325, column: 7, scope: !234)
!246 = !DILocation(line: 326, column: 50, scope: !247)
!247 = distinct !DILexicalBlock(scope: !241, file: !2, line: 325, column: 58)
!248 = !DILocation(line: 326, column: 54, scope: !247)
!249 = !DILocation(line: 326, column: 58, scope: !247)
!250 = !DILocation(line: 326, column: 62, scope: !247)
!251 = !DILocation(line: 326, column: 69, scope: !247)
!252 = !DILocation(line: 326, column: 73, scope: !247)
!253 = !DILocation(line: 326, column: 33, scope: !247)
!254 = !DILocation(line: 326, column: 8, scope: !247)
!255 = !DILocation(line: 326, column: 6, scope: !247)
!256 = !DILocation(line: 327, column: 28, scope: !247)
!257 = !DILocation(line: 327, column: 32, scope: !247)
!258 = !DILocation(line: 327, column: 20, scope: !247)
!259 = !DILocation(line: 327, column: 49, scope: !247)
!260 = !DILocation(line: 327, column: 4, scope: !247)
!261 = !DILocation(line: 328, column: 3, scope: !247)
!262 = !DILocation(line: 329, column: 3, scope: !234)
!263 = !DILocation(line: 330, column: 2, scope: !234)
!264 = !DILocation(line: 331, column: 22, scope: !217)
!265 = !DILocation(line: 331, column: 9, scope: !217)
!266 = !DILocation(line: 331, column: 2, scope: !217)
!267 = distinct !DISubprogram(name: "turnipports_allocate", scope: !2, file: !2, line: 339, type: !268, scopeLine: 340, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!268 = !DISubroutineType(types: !269)
!269 = !{!150, !18, !100, !206}
!270 = !DILocalVariable(name: "tp", arg: 1, scope: !267, file: !2, line: 339, type: !18)
!271 = !DILocation(line: 339, column: 39, scope: !267)
!272 = !DILocalVariable(name: "transport", arg: 2, scope: !267, file: !2, line: 339, type: !100)
!273 = !DILocation(line: 339, column: 51, scope: !267)
!274 = !DILocalVariable(name: "backend_addr", arg: 3, scope: !267, file: !2, line: 339, type: !206)
!275 = !DILocation(line: 339, column: 78, scope: !267)
!276 = !DILocalVariable(name: "ret", scope: !267, file: !2, line: 341, type: !150)
!277 = !DILocation(line: 341, column: 6, scope: !267)
!278 = !DILocation(line: 342, column: 6, scope: !279)
!279 = distinct !DILexicalBlock(scope: !267, file: !2, line: 342, column: 6)
!280 = !DILocation(line: 342, column: 9, scope: !279)
!281 = !DILocation(line: 342, column: 12, scope: !279)
!282 = !DILocation(line: 342, column: 6, scope: !267)
!283 = !DILocation(line: 343, column: 3, scope: !284)
!284 = distinct !DILexicalBlock(scope: !279, file: !2, line: 342, column: 26)
!285 = !DILocalVariable(name: "t", scope: !284, file: !2, line: 344, type: !135)
!286 = !DILocation(line: 344, column: 14, scope: !284)
!287 = !DILocation(line: 344, column: 34, scope: !284)
!288 = !DILocation(line: 344, column: 38, scope: !284)
!289 = !DILocation(line: 344, column: 49, scope: !284)
!290 = !DILocation(line: 344, column: 18, scope: !284)
!291 = !DILocation(line: 345, column: 28, scope: !284)
!292 = !DILocation(line: 345, column: 9, scope: !284)
!293 = !DILocation(line: 345, column: 7, scope: !284)
!294 = !DILocation(line: 346, column: 3, scope: !284)
!295 = !DILocation(line: 347, column: 2, scope: !284)
!296 = !DILocation(line: 348, column: 9, scope: !267)
!297 = !DILocation(line: 348, column: 2, scope: !267)
!298 = distinct !DISubprogram(name: "turnports_allocate", scope: !2, file: !2, line: 158, type: !299, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!299 = !DISubroutineType(types: !300)
!300 = !{!150, !135}
!301 = !DILocalVariable(name: "tp", arg: 1, scope: !298, file: !2, line: 158, type: !135)
!302 = !DILocation(line: 158, column: 35, scope: !298)
!303 = !DILocalVariable(name: "port", scope: !298, file: !2, line: 160, type: !150)
!304 = !DILocation(line: 160, column: 7, scope: !298)
!305 = !DILocation(line: 162, column: 3, scope: !298)
!306 = !DILocation(line: 164, column: 6, scope: !307)
!307 = distinct !DILexicalBlock(scope: !298, file: !2, line: 164, column: 6)
!308 = !DILocation(line: 164, column: 6, scope: !298)
!309 = !DILocation(line: 166, column: 5, scope: !310)
!310 = distinct !DILexicalBlock(scope: !307, file: !2, line: 164, column: 10)
!311 = !DILocation(line: 168, column: 10, scope: !312)
!312 = distinct !DILexicalBlock(scope: !313, file: !2, line: 168, column: 10)
!313 = distinct !DILexicalBlock(scope: !310, file: !2, line: 166, column: 14)
!314 = !DILocation(line: 168, column: 14, scope: !312)
!315 = !DILocation(line: 168, column: 22, scope: !312)
!316 = !DILocation(line: 168, column: 26, scope: !312)
!317 = !DILocation(line: 168, column: 19, scope: !312)
!318 = !DILocation(line: 168, column: 10, scope: !313)
!319 = !DILocation(line: 169, column: 8, scope: !320)
!320 = distinct !DILexicalBlock(scope: !312, file: !2, line: 168, column: 31)
!321 = !DILocation(line: 170, column: 8, scope: !320)
!322 = !DILocalVariable(name: "position", scope: !313, file: !2, line: 173, type: !150)
!323 = !DILocation(line: 173, column: 11, scope: !313)
!324 = !DILocation(line: 173, column: 31, scope: !313)
!325 = !DILocation(line: 173, column: 35, scope: !313)
!326 = !DILocation(line: 173, column: 39, scope: !313)
!327 = !DILocation(line: 173, column: 20, scope: !313)
!328 = !DILocation(line: 175, column: 17, scope: !313)
!329 = !DILocation(line: 175, column: 21, scope: !313)
!330 = !DILocation(line: 175, column: 27, scope: !313)
!331 = !DILocation(line: 175, column: 12, scope: !313)
!332 = !DILocation(line: 175, column: 11, scope: !313)
!333 = !DILocation(line: 176, column: 10, scope: !334)
!334 = distinct !DILexicalBlock(scope: !313, file: !2, line: 176, column: 10)
!335 = !DILocation(line: 176, column: 21, scope: !334)
!336 = !DILocation(line: 176, column: 25, scope: !334)
!337 = !DILocation(line: 176, column: 15, scope: !334)
!338 = !DILocation(line: 176, column: 14, scope: !334)
!339 = !DILocation(line: 176, column: 38, scope: !334)
!340 = !DILocation(line: 176, column: 41, scope: !334)
!341 = !DILocation(line: 176, column: 53, scope: !334)
!342 = !DILocation(line: 176, column: 57, scope: !334)
!343 = !DILocation(line: 176, column: 47, scope: !334)
!344 = !DILocation(line: 176, column: 45, scope: !334)
!345 = !DILocation(line: 176, column: 10, scope: !313)
!346 = !DILocation(line: 177, column: 8, scope: !347)
!347 = distinct !DILexicalBlock(scope: !334, file: !2, line: 176, column: 71)
!348 = !DILocation(line: 178, column: 8, scope: !347)
!349 = !DILocation(line: 180, column: 19, scope: !350)
!350 = distinct !DILexicalBlock(scope: !313, file: !2, line: 180, column: 10)
!351 = !DILocation(line: 180, column: 23, scope: !350)
!352 = !DILocation(line: 180, column: 30, scope: !350)
!353 = !DILocation(line: 180, column: 10, scope: !350)
!354 = !DILocation(line: 180, column: 10, scope: !313)
!355 = !DILocation(line: 181, column: 11, scope: !356)
!356 = distinct !DILexicalBlock(scope: !350, file: !2, line: 180, column: 38)
!357 = !DILocation(line: 181, column: 15, scope: !356)
!358 = !DILocation(line: 181, column: 8, scope: !356)
!359 = !DILocation(line: 182, column: 8, scope: !356)
!360 = distinct !{!360, !309, !361}
!361 = !DILocation(line: 191, column: 5, scope: !310)
!362 = !DILocation(line: 184, column: 10, scope: !363)
!363 = distinct !DILexicalBlock(scope: !313, file: !2, line: 184, column: 10)
!364 = !DILocation(line: 184, column: 14, scope: !363)
!365 = !DILocation(line: 184, column: 21, scope: !363)
!366 = !DILocation(line: 184, column: 28, scope: !363)
!367 = !DILocation(line: 184, column: 32, scope: !363)
!368 = !DILocation(line: 184, column: 26, scope: !363)
!369 = !DILocation(line: 184, column: 10, scope: !313)
!370 = !DILocation(line: 185, column: 11, scope: !371)
!371 = distinct !DILexicalBlock(scope: !363, file: !2, line: 184, column: 37)
!372 = !DILocation(line: 185, column: 15, scope: !371)
!373 = !DILocation(line: 185, column: 8, scope: !371)
!374 = !DILocation(line: 186, column: 8, scope: !371)
!375 = !DILocation(line: 188, column: 7, scope: !313)
!376 = !DILocation(line: 188, column: 11, scope: !313)
!377 = !DILocation(line: 188, column: 18, scope: !313)
!378 = !DILocation(line: 188, column: 23, scope: !313)
!379 = !DILocation(line: 189, column: 10, scope: !313)
!380 = !DILocation(line: 189, column: 14, scope: !313)
!381 = !DILocation(line: 189, column: 7, scope: !313)
!382 = !DILocation(line: 190, column: 7, scope: !313)
!383 = !DILocation(line: 192, column: 3, scope: !310)
!384 = !DILocation(line: 194, column: 3, scope: !298)
!385 = !DILocation(line: 196, column: 10, scope: !298)
!386 = !DILocation(line: 196, column: 3, scope: !298)
!387 = !DILocation(line: 197, column: 1, scope: !298)
!388 = distinct !DISubprogram(name: "turnipports_allocate_even", scope: !2, file: !2, line: 351, type: !389, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!389 = !DISubroutineType(types: !390)
!390 = !{!150, !18, !206, !150, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!392 = !DILocalVariable(name: "tp", arg: 1, scope: !388, file: !2, line: 351, type: !18)
!393 = !DILocation(line: 351, column: 44, scope: !388)
!394 = !DILocalVariable(name: "backend_addr", arg: 2, scope: !388, file: !2, line: 351, type: !206)
!395 = !DILocation(line: 351, column: 64, scope: !388)
!396 = !DILocalVariable(name: "allocate_rtcp", arg: 3, scope: !388, file: !2, line: 351, type: !150)
!397 = !DILocation(line: 351, column: 82, scope: !388)
!398 = !DILocalVariable(name: "reservation_token", arg: 4, scope: !388, file: !2, line: 352, type: !391)
!399 = !DILocation(line: 352, column: 15, scope: !388)
!400 = !DILocalVariable(name: "ret", scope: !388, file: !2, line: 354, type: !150)
!401 = !DILocation(line: 354, column: 6, scope: !388)
!402 = !DILocation(line: 355, column: 6, scope: !403)
!403 = distinct !DILexicalBlock(scope: !388, file: !2, line: 355, column: 6)
!404 = !DILocation(line: 355, column: 9, scope: !403)
!405 = !DILocation(line: 355, column: 12, scope: !403)
!406 = !DILocation(line: 355, column: 6, scope: !388)
!407 = !DILocation(line: 356, column: 3, scope: !408)
!408 = distinct !DILexicalBlock(scope: !403, file: !2, line: 355, column: 26)
!409 = !DILocalVariable(name: "t", scope: !408, file: !2, line: 357, type: !135)
!410 = !DILocation(line: 357, column: 14, scope: !408)
!411 = !DILocation(line: 357, column: 34, scope: !408)
!412 = !DILocation(line: 357, column: 74, scope: !408)
!413 = !DILocation(line: 357, column: 18, scope: !408)
!414 = !DILocation(line: 358, column: 33, scope: !408)
!415 = !DILocation(line: 358, column: 36, scope: !408)
!416 = !DILocation(line: 358, column: 51, scope: !408)
!417 = !DILocation(line: 358, column: 9, scope: !408)
!418 = !DILocation(line: 358, column: 7, scope: !408)
!419 = !DILocation(line: 359, column: 3, scope: !408)
!420 = !DILocation(line: 360, column: 2, scope: !408)
!421 = !DILocation(line: 361, column: 9, scope: !388)
!422 = !DILocation(line: 361, column: 2, scope: !388)
!423 = distinct !DISubprogram(name: "turnports_allocate_even", scope: !2, file: !2, line: 212, type: !424, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!424 = !DISubroutineType(types: !425)
!425 = !{!150, !135, !150, !391}
!426 = !DILocalVariable(name: "tp", arg: 1, scope: !423, file: !2, line: 212, type: !135)
!427 = !DILocation(line: 212, column: 40, scope: !423)
!428 = !DILocalVariable(name: "allocate_rtcp", arg: 2, scope: !423, file: !2, line: 212, type: !150)
!429 = !DILocation(line: 212, column: 48, scope: !423)
!430 = !DILocalVariable(name: "reservation_token", arg: 3, scope: !423, file: !2, line: 212, type: !391)
!431 = !DILocation(line: 212, column: 73, scope: !423)
!432 = !DILocation(line: 213, column: 6, scope: !433)
!433 = distinct !DILexicalBlock(scope: !423, file: !2, line: 213, column: 6)
!434 = !DILocation(line: 213, column: 6, scope: !423)
!435 = !DILocation(line: 214, column: 5, scope: !436)
!436 = distinct !DILexicalBlock(scope: !433, file: !2, line: 213, column: 10)
!437 = !DILocalVariable(name: "size", scope: !436, file: !2, line: 215, type: !29)
!438 = !DILocation(line: 215, column: 14, scope: !436)
!439 = !DILocation(line: 215, column: 36, scope: !436)
!440 = !DILocation(line: 215, column: 21, scope: !436)
!441 = !DILocation(line: 216, column: 8, scope: !442)
!442 = distinct !DILexicalBlock(scope: !436, file: !2, line: 216, column: 8)
!443 = !DILocation(line: 216, column: 12, scope: !442)
!444 = !DILocation(line: 216, column: 8, scope: !436)
!445 = !DILocalVariable(name: "i", scope: !446, file: !2, line: 217, type: !29)
!446 = distinct !DILexicalBlock(scope: !442, file: !2, line: 216, column: 16)
!447 = !DILocation(line: 217, column: 16, scope: !446)
!448 = !DILocation(line: 218, column: 12, scope: !449)
!449 = distinct !DILexicalBlock(scope: !446, file: !2, line: 218, column: 7)
!450 = !DILocation(line: 218, column: 11, scope: !449)
!451 = !DILocation(line: 218, column: 15, scope: !452)
!452 = distinct !DILexicalBlock(scope: !449, file: !2, line: 218, column: 7)
!453 = !DILocation(line: 218, column: 17, scope: !452)
!454 = !DILocation(line: 218, column: 16, scope: !452)
!455 = !DILocation(line: 218, column: 7, scope: !449)
!456 = !DILocalVariable(name: "port", scope: !457, file: !2, line: 219, type: !150)
!457 = distinct !DILexicalBlock(scope: !452, file: !2, line: 218, column: 27)
!458 = !DILocation(line: 219, column: 12, scope: !457)
!459 = !DILocation(line: 219, column: 36, scope: !457)
!460 = !DILocation(line: 219, column: 17, scope: !457)
!461 = !DILocation(line: 220, column: 11, scope: !462)
!462 = distinct !DILexicalBlock(scope: !457, file: !2, line: 220, column: 11)
!463 = !DILocation(line: 220, column: 16, scope: !462)
!464 = !DILocation(line: 220, column: 11, scope: !457)
!465 = !DILocation(line: 221, column: 27, scope: !466)
!466 = distinct !DILexicalBlock(scope: !462, file: !2, line: 220, column: 30)
!467 = !DILocation(line: 221, column: 30, scope: !466)
!468 = !DILocation(line: 221, column: 9, scope: !466)
!469 = !DILocation(line: 222, column: 8, scope: !466)
!470 = !DILocation(line: 223, column: 13, scope: !471)
!471 = distinct !DILexicalBlock(scope: !472, file: !2, line: 223, column: 12)
!472 = distinct !DILexicalBlock(scope: !462, file: !2, line: 222, column: 15)
!473 = !DILocation(line: 223, column: 12, scope: !472)
!474 = !DILocation(line: 224, column: 10, scope: !475)
!475 = distinct !DILexicalBlock(scope: !471, file: !2, line: 223, column: 28)
!476 = !DILocation(line: 225, column: 17, scope: !475)
!477 = !DILocation(line: 225, column: 10, scope: !475)
!478 = !DILocalVariable(name: "rtcp_port", scope: !479, file: !2, line: 227, type: !150)
!479 = distinct !DILexicalBlock(scope: !471, file: !2, line: 226, column: 16)
!480 = !DILocation(line: 227, column: 14, scope: !479)
!481 = !DILocation(line: 227, column: 24, scope: !479)
!482 = !DILocation(line: 227, column: 28, scope: !479)
!483 = !DILocation(line: 228, column: 13, scope: !484)
!484 = distinct !DILexicalBlock(scope: !479, file: !2, line: 228, column: 13)
!485 = !DILocation(line: 228, column: 23, scope: !484)
!486 = !DILocation(line: 228, column: 27, scope: !484)
!487 = !DILocation(line: 228, column: 22, scope: !484)
!488 = !DILocation(line: 228, column: 13, scope: !479)
!489 = !DILocation(line: 229, column: 29, scope: !490)
!490 = distinct !DILexicalBlock(scope: !484, file: !2, line: 228, column: 39)
!491 = !DILocation(line: 229, column: 32, scope: !490)
!492 = !DILocation(line: 229, column: 11, scope: !490)
!493 = !DILocation(line: 230, column: 10, scope: !490)
!494 = !DILocation(line: 230, column: 44, scope: !495)
!495 = distinct !DILexicalBlock(scope: !484, file: !2, line: 230, column: 20)
!496 = !DILocation(line: 230, column: 47, scope: !495)
!497 = !DILocation(line: 230, column: 21, scope: !495)
!498 = !DILocation(line: 230, column: 20, scope: !484)
!499 = !DILocation(line: 231, column: 29, scope: !500)
!500 = distinct !DILexicalBlock(scope: !495, file: !2, line: 230, column: 59)
!501 = !DILocation(line: 231, column: 32, scope: !500)
!502 = !DILocation(line: 231, column: 11, scope: !500)
!503 = !DILocation(line: 232, column: 10, scope: !500)
!504 = !DILocation(line: 233, column: 11, scope: !505)
!505 = distinct !DILexicalBlock(scope: !495, file: !2, line: 232, column: 17)
!506 = !DILocation(line: 233, column: 15, scope: !505)
!507 = !DILocation(line: 233, column: 22, scope: !505)
!508 = !DILocation(line: 233, column: 27, scope: !505)
!509 = !DILocation(line: 234, column: 11, scope: !505)
!510 = !DILocation(line: 234, column: 15, scope: !505)
!511 = !DILocation(line: 234, column: 22, scope: !505)
!512 = !DILocation(line: 234, column: 32, scope: !505)
!513 = !DILocation(line: 235, column: 14, scope: !514)
!514 = distinct !DILexicalBlock(scope: !505, file: !2, line: 235, column: 14)
!515 = !DILocation(line: 235, column: 14, scope: !505)
!516 = !DILocalVariable(name: "v16", scope: !517, file: !2, line: 236, type: !151)
!517 = distinct !DILexicalBlock(scope: !514, file: !2, line: 235, column: 33)
!518 = !DILocation(line: 236, column: 22, scope: !517)
!519 = !DILocation(line: 236, column: 37, scope: !517)
!520 = !DILocalVariable(name: "v32", scope: !517, file: !2, line: 237, type: !152)
!521 = !DILocation(line: 237, column: 22, scope: !517)
!522 = !DILocation(line: 237, column: 37, scope: !517)
!523 = !DILocation(line: 238, column: 30, scope: !517)
!524 = !DILocation(line: 238, column: 34, scope: !517)
!525 = !DILocation(line: 238, column: 51, scope: !517)
!526 = !DILocation(line: 238, column: 55, scope: !517)
!527 = !DILocation(line: 238, column: 59, scope: !517)
!528 = !DILocation(line: 238, column: 40, scope: !517)
!529 = !DILocation(line: 238, column: 12, scope: !517)
!530 = !DILocation(line: 238, column: 18, scope: !517)
!531 = !DILocation(line: 239, column: 30, scope: !517)
!532 = !DILocation(line: 239, column: 34, scope: !517)
!533 = !DILocation(line: 239, column: 51, scope: !517)
!534 = !DILocation(line: 239, column: 55, scope: !517)
!535 = !DILocation(line: 239, column: 60, scope: !517)
!536 = !DILocation(line: 239, column: 40, scope: !517)
!537 = !DILocation(line: 239, column: 12, scope: !517)
!538 = !DILocation(line: 239, column: 18, scope: !517)
!539 = !DILocation(line: 240, column: 29, scope: !517)
!540 = !DILocation(line: 240, column: 19, scope: !517)
!541 = !DILocation(line: 240, column: 12, scope: !517)
!542 = !DILocation(line: 240, column: 18, scope: !517)
!543 = !DILocation(line: 241, column: 11, scope: !517)
!544 = !DILocation(line: 242, column: 11, scope: !505)
!545 = !DILocation(line: 243, column: 18, scope: !505)
!546 = !DILocation(line: 243, column: 11, scope: !505)
!547 = !DILocation(line: 247, column: 7, scope: !457)
!548 = !DILocation(line: 218, column: 23, scope: !452)
!549 = !DILocation(line: 218, column: 7, scope: !452)
!550 = distinct !{!550, !455, !551, !552}
!551 = !DILocation(line: 247, column: 7, scope: !449)
!552 = !{!"llvm.loop.mustprogress"}
!553 = !DILocation(line: 248, column: 5, scope: !446)
!554 = !DILocation(line: 249, column: 5, scope: !436)
!555 = !DILocation(line: 250, column: 3, scope: !436)
!556 = !DILocation(line: 251, column: 3, scope: !423)
!557 = !DILocation(line: 252, column: 1, scope: !423)
!558 = distinct !DISubprogram(name: "turnipports_release", scope: !2, file: !2, line: 364, type: !559, scopeLine: 365, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!559 = !DISubroutineType(types: !560)
!560 = !{null, !18, !100, !206}
!561 = !DILocalVariable(name: "tp", arg: 1, scope: !558, file: !2, line: 364, type: !18)
!562 = !DILocation(line: 364, column: 39, scope: !558)
!563 = !DILocalVariable(name: "transport", arg: 2, scope: !558, file: !2, line: 364, type: !100)
!564 = !DILocation(line: 364, column: 51, scope: !558)
!565 = !DILocalVariable(name: "socket_addr", arg: 3, scope: !558, file: !2, line: 364, type: !206)
!566 = !DILocation(line: 364, column: 78, scope: !558)
!567 = !DILocation(line: 366, column: 6, scope: !568)
!568 = distinct !DILexicalBlock(scope: !558, file: !2, line: 366, column: 6)
!569 = !DILocation(line: 366, column: 9, scope: !568)
!570 = !DILocation(line: 366, column: 12, scope: !568)
!571 = !DILocation(line: 366, column: 6, scope: !558)
!572 = !DILocalVariable(name: "ba", scope: !573, file: !2, line: 367, type: !51)
!573 = distinct !DILexicalBlock(scope: !568, file: !2, line: 366, column: 25)
!574 = !DILocation(line: 367, column: 12, scope: !573)
!575 = !DILocalVariable(name: "t", scope: !573, file: !2, line: 368, type: !112)
!576 = !DILocation(line: 368, column: 26, scope: !573)
!577 = !DILocation(line: 369, column: 17, scope: !573)
!578 = !DILocation(line: 369, column: 3, scope: !573)
!579 = !DILocation(line: 370, column: 3, scope: !573)
!580 = !DILocation(line: 371, column: 3, scope: !573)
!581 = !DILocation(line: 372, column: 31, scope: !582)
!582 = distinct !DILexicalBlock(scope: !573, file: !2, line: 372, column: 7)
!583 = !DILocation(line: 372, column: 35, scope: !582)
!584 = !DILocation(line: 372, column: 23, scope: !582)
!585 = !DILocation(line: 372, column: 7, scope: !582)
!586 = !DILocation(line: 372, column: 7, scope: !573)
!587 = !DILocation(line: 373, column: 35, scope: !588)
!588 = distinct !DILexicalBlock(scope: !582, file: !2, line: 372, column: 57)
!589 = !DILocation(line: 373, column: 22, scope: !588)
!590 = !DILocation(line: 373, column: 52, scope: !588)
!591 = !DILocation(line: 373, column: 38, scope: !588)
!592 = !DILocation(line: 373, column: 4, scope: !588)
!593 = !DILocation(line: 374, column: 3, scope: !588)
!594 = !DILocation(line: 375, column: 3, scope: !573)
!595 = !DILocation(line: 376, column: 2, scope: !573)
!596 = !DILocation(line: 377, column: 1, scope: !558)
!597 = distinct !DISubprogram(name: "get_map", scope: !2, file: !2, line: 294, type: !598, scopeLine: 295, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!598 = !DISubroutineType(types: !599)
!599 = !{!600, !18, !100}
!600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!601 = !DILocalVariable(name: "tp", arg: 1, scope: !597, file: !2, line: 294, type: !18)
!602 = !DILocation(line: 294, column: 42, scope: !597)
!603 = !DILocalVariable(name: "transport", arg: 2, scope: !597, file: !2, line: 294, type: !100)
!604 = !DILocation(line: 294, column: 54, scope: !597)
!605 = !DILocation(line: 296, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !597, file: !2, line: 296, column: 5)
!607 = !DILocation(line: 296, column: 15, scope: !606)
!608 = !DILocation(line: 296, column: 5, scope: !597)
!609 = !DILocation(line: 297, column: 12, scope: !606)
!610 = !DILocation(line: 297, column: 16, scope: !606)
!611 = !DILocation(line: 297, column: 3, scope: !606)
!612 = !DILocation(line: 298, column: 11, scope: !597)
!613 = !DILocation(line: 298, column: 15, scope: !597)
!614 = !DILocation(line: 298, column: 2, scope: !597)
!615 = !DILocation(line: 299, column: 1, scope: !597)
!616 = distinct !DISubprogram(name: "turnports_release", scope: !2, file: !2, line: 199, type: !617, scopeLine: 199, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!617 = !DISubroutineType(types: !618)
!618 = !{null, !135, !29}
!619 = !DILocalVariable(name: "tp", arg: 1, scope: !616, file: !2, line: 199, type: !135)
!620 = !DILocation(line: 199, column: 35, scope: !616)
!621 = !DILocalVariable(name: "port", arg: 2, scope: !616, file: !2, line: 199, type: !29)
!622 = !DILocation(line: 199, column: 48, scope: !616)
!623 = !DILocation(line: 200, column: 3, scope: !616)
!624 = !DILocation(line: 201, column: 6, scope: !625)
!625 = distinct !DILexicalBlock(scope: !616, file: !2, line: 201, column: 6)
!626 = !DILocation(line: 201, column: 9, scope: !625)
!627 = !DILocation(line: 201, column: 12, scope: !625)
!628 = !DILocation(line: 201, column: 18, scope: !625)
!629 = !DILocation(line: 201, column: 22, scope: !625)
!630 = !DILocation(line: 201, column: 16, scope: !625)
!631 = !DILocation(line: 201, column: 34, scope: !625)
!632 = !DILocation(line: 201, column: 37, scope: !625)
!633 = !DILocation(line: 201, column: 43, scope: !625)
!634 = !DILocation(line: 201, column: 47, scope: !625)
!635 = !DILocation(line: 201, column: 41, scope: !625)
!636 = !DILocation(line: 201, column: 6, scope: !616)
!637 = !DILocalVariable(name: "position", scope: !638, file: !2, line: 202, type: !29)
!638 = distinct !DILexicalBlock(scope: !625, file: !2, line: 201, column: 59)
!639 = !DILocation(line: 202, column: 14, scope: !638)
!640 = !DILocation(line: 202, column: 34, scope: !638)
!641 = !DILocation(line: 202, column: 38, scope: !638)
!642 = !DILocation(line: 202, column: 43, scope: !638)
!643 = !DILocation(line: 202, column: 23, scope: !638)
!644 = !DILocation(line: 203, column: 17, scope: !645)
!645 = distinct !DILexicalBlock(scope: !638, file: !2, line: 203, column: 8)
!646 = !DILocation(line: 203, column: 21, scope: !645)
!647 = !DILocation(line: 203, column: 28, scope: !645)
!648 = !DILocation(line: 203, column: 8, scope: !645)
!649 = !DILocation(line: 203, column: 8, scope: !638)
!650 = !DILocation(line: 204, column: 24, scope: !651)
!651 = distinct !DILexicalBlock(scope: !645, file: !2, line: 203, column: 36)
!652 = !DILocation(line: 204, column: 28, scope: !651)
!653 = !DILocation(line: 204, column: 7, scope: !651)
!654 = !DILocation(line: 204, column: 11, scope: !651)
!655 = !DILocation(line: 204, column: 18, scope: !651)
!656 = !DILocation(line: 204, column: 23, scope: !651)
!657 = !DILocation(line: 205, column: 27, scope: !651)
!658 = !DILocation(line: 205, column: 7, scope: !651)
!659 = !DILocation(line: 205, column: 11, scope: !651)
!660 = !DILocation(line: 205, column: 17, scope: !651)
!661 = !DILocation(line: 205, column: 26, scope: !651)
!662 = !DILocation(line: 206, column: 10, scope: !651)
!663 = !DILocation(line: 206, column: 14, scope: !651)
!664 = !DILocation(line: 206, column: 7, scope: !651)
!665 = !DILocation(line: 207, column: 5, scope: !651)
!666 = !DILocation(line: 208, column: 3, scope: !638)
!667 = !DILocation(line: 209, column: 3, scope: !616)
!668 = !DILocation(line: 210, column: 1, scope: !616)
!669 = distinct !DISubprogram(name: "turnipports_is_allocated", scope: !2, file: !2, line: 379, type: !670, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!670 = !DISubroutineType(types: !671)
!671 = !{!150, !18, !100, !206, !29}
!672 = !DILocalVariable(name: "tp", arg: 1, scope: !669, file: !2, line: 379, type: !18)
!673 = !DILocation(line: 379, column: 43, scope: !669)
!674 = !DILocalVariable(name: "transport", arg: 2, scope: !669, file: !2, line: 379, type: !100)
!675 = !DILocation(line: 379, column: 55, scope: !669)
!676 = !DILocalVariable(name: "backend_addr", arg: 3, scope: !669, file: !2, line: 379, type: !206)
!677 = !DILocation(line: 379, column: 82, scope: !669)
!678 = !DILocalVariable(name: "port", arg: 4, scope: !669, file: !2, line: 379, type: !29)
!679 = !DILocation(line: 379, column: 105, scope: !669)
!680 = !DILocalVariable(name: "ret", scope: !669, file: !2, line: 381, type: !150)
!681 = !DILocation(line: 381, column: 6, scope: !669)
!682 = !DILocation(line: 382, column: 6, scope: !683)
!683 = distinct !DILexicalBlock(scope: !669, file: !2, line: 382, column: 6)
!684 = !DILocation(line: 382, column: 9, scope: !683)
!685 = !DILocation(line: 382, column: 12, scope: !683)
!686 = !DILocation(line: 382, column: 6, scope: !669)
!687 = !DILocalVariable(name: "ba", scope: !688, file: !2, line: 383, type: !51)
!688 = distinct !DILexicalBlock(scope: !683, file: !2, line: 382, column: 26)
!689 = !DILocation(line: 383, column: 12, scope: !688)
!690 = !DILocalVariable(name: "t", scope: !688, file: !2, line: 384, type: !112)
!691 = !DILocation(line: 384, column: 26, scope: !688)
!692 = !DILocation(line: 385, column: 17, scope: !688)
!693 = !DILocation(line: 385, column: 3, scope: !688)
!694 = !DILocation(line: 386, column: 3, scope: !688)
!695 = !DILocation(line: 387, column: 3, scope: !688)
!696 = !DILocation(line: 388, column: 31, scope: !697)
!697 = distinct !DILexicalBlock(scope: !688, file: !2, line: 388, column: 7)
!698 = !DILocation(line: 388, column: 34, scope: !697)
!699 = !DILocation(line: 388, column: 23, scope: !697)
!700 = !DILocation(line: 388, column: 7, scope: !697)
!701 = !DILocation(line: 388, column: 7, scope: !688)
!702 = !DILocation(line: 389, column: 46, scope: !703)
!703 = distinct !DILexicalBlock(scope: !697, file: !2, line: 388, column: 56)
!704 = !DILocation(line: 389, column: 33, scope: !703)
!705 = !DILocation(line: 389, column: 49, scope: !703)
!706 = !DILocation(line: 389, column: 10, scope: !703)
!707 = !DILocation(line: 389, column: 8, scope: !703)
!708 = !DILocation(line: 390, column: 3, scope: !703)
!709 = !DILocation(line: 391, column: 3, scope: !688)
!710 = !DILocation(line: 392, column: 2, scope: !688)
!711 = !DILocation(line: 393, column: 9, scope: !669)
!712 = !DILocation(line: 393, column: 2, scope: !669)
!713 = distinct !DISubprogram(name: "turnports_is_allocated", scope: !2, file: !2, line: 254, type: !714, scopeLine: 254, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!714 = !DISubroutineType(types: !715)
!715 = !{!150, !135, !29}
!716 = !DILocalVariable(name: "tp", arg: 1, scope: !713, file: !2, line: 254, type: !135)
!717 = !DILocation(line: 254, column: 39, scope: !713)
!718 = !DILocalVariable(name: "port", arg: 2, scope: !713, file: !2, line: 254, type: !29)
!719 = !DILocation(line: 254, column: 52, scope: !713)
!720 = !DILocation(line: 255, column: 7, scope: !721)
!721 = distinct !DILexicalBlock(scope: !713, file: !2, line: 255, column: 6)
!722 = !DILocation(line: 255, column: 6, scope: !713)
!723 = !DILocation(line: 255, column: 11, scope: !721)
!724 = !DILocation(line: 257, column: 5, scope: !725)
!725 = distinct !DILexicalBlock(scope: !721, file: !2, line: 256, column: 8)
!726 = !DILocalVariable(name: "ret", scope: !725, file: !2, line: 258, type: !150)
!727 = !DILocation(line: 258, column: 9, scope: !725)
!728 = !DILocation(line: 258, column: 24, scope: !725)
!729 = !DILocation(line: 258, column: 28, scope: !725)
!730 = !DILocation(line: 258, column: 35, scope: !725)
!731 = !DILocation(line: 258, column: 15, scope: !725)
!732 = !DILocation(line: 259, column: 5, scope: !725)
!733 = !DILocation(line: 260, column: 12, scope: !725)
!734 = !DILocation(line: 260, column: 5, scope: !725)
!735 = !DILocation(line: 262, column: 1, scope: !713)
!736 = distinct !DISubprogram(name: "turnipports_is_available", scope: !2, file: !2, line: 396, type: !670, scopeLine: 397, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !170)
!737 = !DILocalVariable(name: "tp", arg: 1, scope: !736, file: !2, line: 396, type: !18)
!738 = !DILocation(line: 396, column: 43, scope: !736)
!739 = !DILocalVariable(name: "transport", arg: 2, scope: !736, file: !2, line: 396, type: !100)
!740 = !DILocation(line: 396, column: 55, scope: !736)
!741 = !DILocalVariable(name: "backend_addr", arg: 3, scope: !736, file: !2, line: 396, type: !206)
!742 = !DILocation(line: 396, column: 82, scope: !736)
!743 = !DILocalVariable(name: "port", arg: 4, scope: !736, file: !2, line: 396, type: !29)
!744 = !DILocation(line: 396, column: 105, scope: !736)
!745 = !DILocalVariable(name: "ret", scope: !736, file: !2, line: 398, type: !150)
!746 = !DILocation(line: 398, column: 6, scope: !736)
!747 = !DILocation(line: 399, column: 6, scope: !748)
!748 = distinct !DILexicalBlock(scope: !736, file: !2, line: 399, column: 6)
!749 = !DILocation(line: 399, column: 9, scope: !748)
!750 = !DILocation(line: 399, column: 12, scope: !748)
!751 = !DILocation(line: 399, column: 6, scope: !736)
!752 = !DILocalVariable(name: "ba", scope: !753, file: !2, line: 400, type: !51)
!753 = distinct !DILexicalBlock(scope: !748, file: !2, line: 399, column: 26)
!754 = !DILocation(line: 400, column: 12, scope: !753)
!755 = !DILocalVariable(name: "t", scope: !753, file: !2, line: 401, type: !112)
!756 = !DILocation(line: 401, column: 26, scope: !753)
!757 = !DILocation(line: 402, column: 17, scope: !753)
!758 = !DILocation(line: 402, column: 3, scope: !753)
!759 = !DILocation(line: 403, column: 3, scope: !753)
!760 = !DILocation(line: 404, column: 3, scope: !753)
!761 = !DILocation(line: 405, column: 32, scope: !762)
!762 = distinct !DILexicalBlock(scope: !753, file: !2, line: 405, column: 7)
!763 = !DILocation(line: 405, column: 35, scope: !762)
!764 = !DILocation(line: 405, column: 24, scope: !762)
!765 = !DILocation(line: 405, column: 8, scope: !762)
!766 = !DILocation(line: 405, column: 7, scope: !753)
!767 = !DILocation(line: 406, column: 8, scope: !768)
!768 = distinct !DILexicalBlock(scope: !762, file: !2, line: 405, column: 57)
!769 = !DILocation(line: 407, column: 3, scope: !768)
!770 = !DILocation(line: 408, column: 46, scope: !771)
!771 = distinct !DILexicalBlock(scope: !762, file: !2, line: 407, column: 10)
!772 = !DILocation(line: 408, column: 33, scope: !771)
!773 = !DILocation(line: 408, column: 49, scope: !771)
!774 = !DILocation(line: 408, column: 10, scope: !771)
!775 = !DILocation(line: 408, column: 8, scope: !771)
!776 = !DILocation(line: 410, column: 3, scope: !753)
!777 = !DILocation(line: 411, column: 2, scope: !753)
!778 = !DILocation(line: 412, column: 9, scope: !736)
!779 = !DILocation(line: 412, column: 2, scope: !736)
!780 = distinct !DISubprogram(name: "turnports_is_available", scope: !2, file: !2, line: 264, type: !714, scopeLine: 264, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!781 = !DILocalVariable(name: "tp", arg: 1, scope: !780, file: !2, line: 264, type: !135)
!782 = !DILocation(line: 264, column: 39, scope: !780)
!783 = !DILocalVariable(name: "port", arg: 2, scope: !780, file: !2, line: 264, type: !29)
!784 = !DILocation(line: 264, column: 52, scope: !780)
!785 = !DILocation(line: 265, column: 6, scope: !786)
!786 = distinct !DILexicalBlock(scope: !780, file: !2, line: 265, column: 6)
!787 = !DILocation(line: 265, column: 6, scope: !780)
!788 = !DILocation(line: 266, column: 5, scope: !789)
!789 = distinct !DILexicalBlock(scope: !786, file: !2, line: 265, column: 10)
!790 = !DILocalVariable(name: "status", scope: !789, file: !2, line: 267, type: !78)
!791 = !DILocation(line: 267, column: 14, scope: !789)
!792 = !DILocation(line: 267, column: 23, scope: !789)
!793 = !DILocation(line: 267, column: 27, scope: !789)
!794 = !DILocation(line: 267, column: 34, scope: !789)
!795 = !DILocation(line: 268, column: 9, scope: !796)
!796 = distinct !DILexicalBlock(scope: !789, file: !2, line: 268, column: 8)
!797 = !DILocation(line: 268, column: 15, scope: !796)
!798 = !DILocation(line: 268, column: 35, scope: !796)
!799 = !DILocation(line: 268, column: 48, scope: !796)
!800 = !DILocation(line: 268, column: 39, scope: !796)
!801 = !DILocation(line: 268, column: 8, scope: !789)
!802 = !DILocalVariable(name: "position", scope: !803, file: !2, line: 269, type: !29)
!803 = distinct !DILexicalBlock(scope: !796, file: !2, line: 268, column: 57)
!804 = !DILocation(line: 269, column: 16, scope: !803)
!805 = !DILocation(line: 269, column: 36, scope: !803)
!806 = !DILocation(line: 269, column: 43, scope: !803)
!807 = !DILocation(line: 269, column: 25, scope: !803)
!808 = !DILocation(line: 270, column: 10, scope: !809)
!809 = distinct !DILexicalBlock(scope: !803, file: !2, line: 270, column: 10)
!810 = !DILocation(line: 270, column: 14, scope: !809)
!811 = !DILocation(line: 270, column: 20, scope: !809)
!812 = !DILocation(line: 270, column: 31, scope: !809)
!813 = !DILocation(line: 270, column: 29, scope: !809)
!814 = !DILocation(line: 270, column: 10, scope: !803)
!815 = !DILocation(line: 271, column: 8, scope: !816)
!816 = distinct !DILexicalBlock(scope: !809, file: !2, line: 270, column: 37)
!817 = !DILocation(line: 272, column: 8, scope: !816)
!818 = !DILocation(line: 274, column: 5, scope: !803)
!819 = !DILocation(line: 275, column: 5, scope: !789)
!820 = !DILocation(line: 276, column: 3, scope: !789)
!821 = !DILocation(line: 277, column: 3, scope: !780)
!822 = !DILocation(line: 278, column: 1, scope: !780)
!823 = distinct !DISubprogram(name: "turnports_create", scope: !2, file: !2, line: 138, type: !824, scopeLine: 138, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!824 = !DISubroutineType(types: !825)
!825 = !{!135, !24, !29, !29}
!826 = !DILocalVariable(name: "sm", arg: 1, scope: !823, file: !2, line: 138, type: !24)
!827 = !DILocation(line: 138, column: 45, scope: !823)
!828 = !DILocalVariable(name: "start", arg: 2, scope: !823, file: !2, line: 138, type: !29)
!829 = !DILocation(line: 138, column: 58, scope: !823)
!830 = !DILocalVariable(name: "end", arg: 3, scope: !823, file: !2, line: 138, type: !29)
!831 = !DILocation(line: 138, column: 74, scope: !823)
!832 = !DILocation(line: 140, column: 6, scope: !833)
!833 = distinct !DILexicalBlock(scope: !823, file: !2, line: 140, column: 6)
!834 = !DILocation(line: 140, column: 12, scope: !833)
!835 = !DILocation(line: 140, column: 11, scope: !833)
!836 = !DILocation(line: 140, column: 6, scope: !823)
!837 = !DILocation(line: 140, column: 17, scope: !833)
!838 = !DILocalVariable(name: "ret", scope: !823, file: !2, line: 142, type: !135)
!839 = !DILocation(line: 142, column: 14, scope: !823)
!840 = !DILocation(line: 142, column: 30, scope: !823)
!841 = !DILocation(line: 143, column: 18, scope: !823)
!842 = !DILocation(line: 143, column: 22, scope: !823)
!843 = !DILocation(line: 143, column: 28, scope: !823)
!844 = !DILocation(line: 143, column: 3, scope: !823)
!845 = !DILocation(line: 145, column: 10, scope: !823)
!846 = !DILocation(line: 145, column: 3, scope: !823)
!847 = !DILocation(line: 146, column: 1, scope: !823)
!848 = distinct !DISubprogram(name: "turnports_init", scope: !2, file: !2, line: 109, type: !849, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !135, !29, !29}
!851 = !DILocalVariable(name: "tp", arg: 1, scope: !848, file: !2, line: 109, type: !135)
!852 = !DILocation(line: 109, column: 39, scope: !848)
!853 = !DILocalVariable(name: "start", arg: 2, scope: !848, file: !2, line: 109, type: !29)
!854 = !DILocation(line: 109, column: 52, scope: !848)
!855 = !DILocalVariable(name: "end", arg: 3, scope: !848, file: !2, line: 109, type: !29)
!856 = !DILocation(line: 109, column: 68, scope: !848)
!857 = !DILocation(line: 111, column: 11, scope: !848)
!858 = !DILocation(line: 111, column: 3, scope: !848)
!859 = !DILocation(line: 111, column: 7, scope: !848)
!860 = !DILocation(line: 111, column: 10, scope: !848)
!861 = !DILocation(line: 112, column: 23, scope: !848)
!862 = !DILocation(line: 112, column: 13, scope: !848)
!863 = !DILocation(line: 112, column: 27, scope: !848)
!864 = !DILocation(line: 112, column: 3, scope: !848)
!865 = !DILocation(line: 112, column: 7, scope: !848)
!866 = !DILocation(line: 112, column: 11, scope: !848)
!867 = !DILocation(line: 114, column: 19, scope: !848)
!868 = !DILocation(line: 114, column: 3, scope: !848)
!869 = !DILocation(line: 114, column: 7, scope: !848)
!870 = !DILocation(line: 114, column: 18, scope: !848)
!871 = !DILocation(line: 115, column: 18, scope: !848)
!872 = !DILocation(line: 115, column: 3, scope: !848)
!873 = !DILocation(line: 115, column: 7, scope: !848)
!874 = !DILocation(line: 115, column: 17, scope: !848)
!875 = !DILocalVariable(name: "i", scope: !848, file: !2, line: 117, type: !150)
!876 = !DILocation(line: 117, column: 7, scope: !848)
!877 = !DILocation(line: 118, column: 8, scope: !878)
!878 = distinct !DILexicalBlock(scope: !848, file: !2, line: 118, column: 3)
!879 = !DILocation(line: 118, column: 7, scope: !878)
!880 = !DILocation(line: 118, column: 11, scope: !881)
!881 = distinct !DILexicalBlock(scope: !878, file: !2, line: 118, column: 3)
!882 = !DILocation(line: 118, column: 13, scope: !881)
!883 = !DILocation(line: 118, column: 12, scope: !881)
!884 = !DILocation(line: 118, column: 3, scope: !878)
!885 = !DILocation(line: 119, column: 5, scope: !886)
!886 = distinct !DILexicalBlock(scope: !881, file: !2, line: 118, column: 24)
!887 = !DILocation(line: 119, column: 9, scope: !886)
!888 = !DILocation(line: 119, column: 16, scope: !886)
!889 = !DILocation(line: 119, column: 18, scope: !886)
!890 = !DILocation(line: 120, column: 28, scope: !886)
!891 = !DILocation(line: 120, column: 18, scope: !886)
!892 = !DILocation(line: 120, column: 5, scope: !886)
!893 = !DILocation(line: 120, column: 9, scope: !886)
!894 = !DILocation(line: 120, column: 15, scope: !886)
!895 = !DILocation(line: 120, column: 17, scope: !886)
!896 = !DILocation(line: 121, column: 3, scope: !886)
!897 = !DILocation(line: 118, column: 20, scope: !881)
!898 = !DILocation(line: 118, column: 3, scope: !881)
!899 = distinct !{!899, !884, !900, !552}
!900 = !DILocation(line: 121, column: 3, scope: !878)
!901 = !DILocation(line: 122, column: 9, scope: !902)
!902 = distinct !DILexicalBlock(scope: !848, file: !2, line: 122, column: 3)
!903 = !DILocation(line: 122, column: 8, scope: !902)
!904 = !DILocation(line: 122, column: 7, scope: !902)
!905 = !DILocation(line: 122, column: 15, scope: !906)
!906 = distinct !DILexicalBlock(scope: !902, file: !2, line: 122, column: 3)
!907 = !DILocation(line: 122, column: 18, scope: !906)
!908 = !DILocation(line: 122, column: 16, scope: !906)
!909 = !DILocation(line: 122, column: 3, scope: !902)
!910 = !DILocation(line: 123, column: 29, scope: !911)
!911 = distinct !DILexicalBlock(scope: !906, file: !2, line: 122, column: 27)
!912 = !DILocation(line: 123, column: 5, scope: !911)
!913 = !DILocation(line: 123, column: 9, scope: !911)
!914 = !DILocation(line: 123, column: 16, scope: !911)
!915 = !DILocation(line: 123, column: 18, scope: !911)
!916 = !DILocation(line: 124, column: 28, scope: !911)
!917 = !DILocation(line: 124, column: 18, scope: !911)
!918 = !DILocation(line: 124, column: 5, scope: !911)
!919 = !DILocation(line: 124, column: 9, scope: !911)
!920 = !DILocation(line: 124, column: 15, scope: !911)
!921 = !DILocation(line: 124, column: 17, scope: !911)
!922 = !DILocation(line: 125, column: 3, scope: !911)
!923 = !DILocation(line: 122, column: 23, scope: !906)
!924 = !DILocation(line: 122, column: 3, scope: !906)
!925 = distinct !{!925, !909, !926, !552}
!926 = !DILocation(line: 125, column: 3, scope: !902)
!927 = !DILocation(line: 126, column: 15, scope: !928)
!928 = distinct !DILexicalBlock(scope: !848, file: !2, line: 126, column: 3)
!929 = !DILocation(line: 126, column: 10, scope: !928)
!930 = !DILocation(line: 126, column: 19, scope: !928)
!931 = !DILocation(line: 126, column: 8, scope: !928)
!932 = !DILocation(line: 126, column: 7, scope: !928)
!933 = !DILocation(line: 126, column: 22, scope: !934)
!934 = distinct !DILexicalBlock(scope: !928, file: !2, line: 126, column: 3)
!935 = !DILocation(line: 126, column: 23, scope: !934)
!936 = !DILocation(line: 126, column: 3, scope: !928)
!937 = !DILocation(line: 127, column: 5, scope: !938)
!938 = distinct !DILexicalBlock(scope: !934, file: !2, line: 126, column: 40)
!939 = !DILocation(line: 127, column: 9, scope: !938)
!940 = !DILocation(line: 127, column: 16, scope: !938)
!941 = !DILocation(line: 127, column: 18, scope: !938)
!942 = !DILocation(line: 128, column: 28, scope: !938)
!943 = !DILocation(line: 128, column: 18, scope: !938)
!944 = !DILocation(line: 128, column: 5, scope: !938)
!945 = !DILocation(line: 128, column: 9, scope: !938)
!946 = !DILocation(line: 128, column: 15, scope: !938)
!947 = !DILocation(line: 128, column: 17, scope: !938)
!948 = !DILocation(line: 129, column: 3, scope: !938)
!949 = !DILocation(line: 126, column: 36, scope: !934)
!950 = !DILocation(line: 126, column: 3, scope: !934)
!951 = distinct !{!951, !936, !952, !552}
!952 = !DILocation(line: 129, column: 3, scope: !928)
!953 = !DILocation(line: 131, column: 23, scope: !848)
!954 = !DILocation(line: 131, column: 3, scope: !848)
!955 = !DILocation(line: 133, column: 3, scope: !848)
!956 = !DILocation(line: 134, column: 1, scope: !848)
!957 = distinct !DISubprogram(name: "turnports_randomize", scope: !2, file: !2, line: 87, type: !958, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!958 = !DISubroutineType(types: !959)
!959 = !{null, !135}
!960 = !DILocalVariable(name: "tp", arg: 1, scope: !957, file: !2, line: 87, type: !135)
!961 = !DILocation(line: 87, column: 44, scope: !957)
!962 = !DILocation(line: 88, column: 6, scope: !963)
!963 = distinct !DILexicalBlock(scope: !957, file: !2, line: 88, column: 6)
!964 = !DILocation(line: 88, column: 6, scope: !957)
!965 = !DILocalVariable(name: "size", scope: !966, file: !2, line: 89, type: !80)
!966 = distinct !DILexicalBlock(scope: !963, file: !2, line: 88, column: 10)
!967 = !DILocation(line: 89, column: 18, scope: !966)
!968 = !DILocation(line: 89, column: 38, scope: !966)
!969 = !DILocation(line: 89, column: 42, scope: !966)
!970 = !DILocation(line: 89, column: 47, scope: !966)
!971 = !DILocation(line: 89, column: 51, scope: !966)
!972 = !DILocation(line: 89, column: 46, scope: !966)
!973 = !DILocalVariable(name: "i", scope: !966, file: !2, line: 90, type: !80)
!974 = !DILocation(line: 90, column: 18, scope: !966)
!975 = !DILocalVariable(name: "cycles", scope: !966, file: !2, line: 91, type: !80)
!976 = !DILocation(line: 91, column: 18, scope: !966)
!977 = !DILocation(line: 91, column: 25, scope: !966)
!978 = !DILocation(line: 91, column: 29, scope: !966)
!979 = !DILocation(line: 92, column: 10, scope: !980)
!980 = distinct !DILexicalBlock(scope: !966, file: !2, line: 92, column: 5)
!981 = !DILocation(line: 92, column: 9, scope: !980)
!982 = !DILocation(line: 92, column: 13, scope: !983)
!983 = distinct !DILexicalBlock(scope: !980, file: !2, line: 92, column: 5)
!984 = !DILocation(line: 92, column: 15, scope: !983)
!985 = !DILocation(line: 92, column: 14, scope: !983)
!986 = !DILocation(line: 92, column: 5, scope: !980)
!987 = !DILocalVariable(name: "port1", scope: !988, file: !2, line: 93, type: !29)
!988 = distinct !DILexicalBlock(scope: !983, file: !2, line: 92, column: 27)
!989 = !DILocation(line: 93, column: 16, scope: !988)
!990 = !DILocation(line: 93, column: 35, scope: !988)
!991 = !DILocation(line: 93, column: 39, scope: !988)
!992 = !DILocation(line: 93, column: 72, scope: !988)
!993 = !DILocation(line: 93, column: 98, scope: !988)
!994 = !DILocation(line: 93, column: 83, scope: !988)
!995 = !DILocation(line: 93, column: 81, scope: !988)
!996 = !DILocation(line: 93, column: 45, scope: !988)
!997 = !DILocation(line: 93, column: 43, scope: !988)
!998 = !DILocation(line: 93, column: 24, scope: !988)
!999 = !DILocalVariable(name: "port2", scope: !988, file: !2, line: 94, type: !29)
!1000 = !DILocation(line: 94, column: 16, scope: !988)
!1001 = !DILocation(line: 94, column: 35, scope: !988)
!1002 = !DILocation(line: 94, column: 39, scope: !988)
!1003 = !DILocation(line: 94, column: 72, scope: !988)
!1004 = !DILocation(line: 94, column: 98, scope: !988)
!1005 = !DILocation(line: 94, column: 83, scope: !988)
!1006 = !DILocation(line: 94, column: 81, scope: !988)
!1007 = !DILocation(line: 94, column: 45, scope: !988)
!1008 = !DILocation(line: 94, column: 43, scope: !988)
!1009 = !DILocation(line: 94, column: 24, scope: !988)
!1010 = !DILocation(line: 95, column: 10, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !988, file: !2, line: 95, column: 10)
!1012 = !DILocation(line: 95, column: 17, scope: !1011)
!1013 = !DILocation(line: 95, column: 15, scope: !1011)
!1014 = !DILocation(line: 95, column: 10, scope: !988)
!1015 = !DILocalVariable(name: "pos1", scope: !1016, file: !2, line: 96, type: !150)
!1016 = distinct !DILexicalBlock(scope: !1011, file: !2, line: 95, column: 24)
!1017 = !DILocation(line: 96, column: 12, scope: !1016)
!1018 = !DILocation(line: 96, column: 17, scope: !1016)
!1019 = !DILocation(line: 96, column: 21, scope: !1016)
!1020 = !DILocation(line: 96, column: 28, scope: !1016)
!1021 = !DILocalVariable(name: "pos2", scope: !1016, file: !2, line: 97, type: !150)
!1022 = !DILocation(line: 97, column: 12, scope: !1016)
!1023 = !DILocation(line: 97, column: 17, scope: !1016)
!1024 = !DILocation(line: 97, column: 21, scope: !1016)
!1025 = !DILocation(line: 97, column: 28, scope: !1016)
!1026 = !DILocalVariable(name: "tmp", scope: !1016, file: !2, line: 98, type: !150)
!1027 = !DILocation(line: 98, column: 12, scope: !1016)
!1028 = !DILocation(line: 98, column: 21, scope: !1016)
!1029 = !DILocation(line: 98, column: 25, scope: !1016)
!1030 = !DILocation(line: 98, column: 32, scope: !1016)
!1031 = !DILocation(line: 99, column: 26, scope: !1016)
!1032 = !DILocation(line: 99, column: 30, scope: !1016)
!1033 = !DILocation(line: 99, column: 37, scope: !1016)
!1034 = !DILocation(line: 99, column: 8, scope: !1016)
!1035 = !DILocation(line: 99, column: 12, scope: !1016)
!1036 = !DILocation(line: 99, column: 19, scope: !1016)
!1037 = !DILocation(line: 99, column: 25, scope: !1016)
!1038 = !DILocation(line: 100, column: 36, scope: !1016)
!1039 = !DILocation(line: 100, column: 8, scope: !1016)
!1040 = !DILocation(line: 100, column: 12, scope: !1016)
!1041 = !DILocation(line: 100, column: 19, scope: !1016)
!1042 = !DILocation(line: 100, column: 25, scope: !1016)
!1043 = !DILocation(line: 101, column: 17, scope: !1016)
!1044 = !DILocation(line: 101, column: 21, scope: !1016)
!1045 = !DILocation(line: 101, column: 27, scope: !1016)
!1046 = !DILocation(line: 101, column: 12, scope: !1016)
!1047 = !DILocation(line: 101, column: 11, scope: !1016)
!1048 = !DILocation(line: 102, column: 24, scope: !1016)
!1049 = !DILocation(line: 102, column: 28, scope: !1016)
!1050 = !DILocation(line: 102, column: 34, scope: !1016)
!1051 = !DILocation(line: 102, column: 8, scope: !1016)
!1052 = !DILocation(line: 102, column: 12, scope: !1016)
!1053 = !DILocation(line: 102, column: 18, scope: !1016)
!1054 = !DILocation(line: 102, column: 23, scope: !1016)
!1055 = !DILocation(line: 103, column: 34, scope: !1016)
!1056 = !DILocation(line: 103, column: 24, scope: !1016)
!1057 = !DILocation(line: 103, column: 8, scope: !1016)
!1058 = !DILocation(line: 103, column: 12, scope: !1016)
!1059 = !DILocation(line: 103, column: 18, scope: !1016)
!1060 = !DILocation(line: 103, column: 23, scope: !1016)
!1061 = !DILocation(line: 104, column: 7, scope: !1016)
!1062 = !DILocation(line: 105, column: 5, scope: !988)
!1063 = !DILocation(line: 92, column: 23, scope: !983)
!1064 = !DILocation(line: 92, column: 5, scope: !983)
!1065 = distinct !{!1065, !986, !1066, !552}
!1066 = !DILocation(line: 105, column: 5, scope: !980)
!1067 = !DILocation(line: 106, column: 3, scope: !966)
!1068 = !DILocation(line: 107, column: 1, scope: !957)
!1069 = distinct !DISubprogram(name: "is_taken", scope: !2, file: !2, line: 73, type: !1070, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!1070 = !DISubroutineType(types: !1071)
!1071 = !{!150, !78}
!1072 = !DILocalVariable(name: "status", arg: 1, scope: !1069, file: !2, line: 73, type: !78)
!1073 = !DILocation(line: 73, column: 30, scope: !1069)
!1074 = !DILocalVariable(name: "ret", scope: !1069, file: !2, line: 74, type: !150)
!1075 = !DILocation(line: 74, column: 6, scope: !1069)
!1076 = !DILocation(line: 75, column: 10, scope: !1069)
!1077 = !DILocation(line: 75, column: 2, scope: !1069)
!1078 = !DILocation(line: 79, column: 7, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1069, file: !2, line: 75, column: 18)
!1080 = !DILocation(line: 80, column: 3, scope: !1079)
!1081 = !DILocation(line: 82, column: 7, scope: !1079)
!1082 = !DILocation(line: 83, column: 2, scope: !1079)
!1083 = !DILocation(line: 84, column: 9, scope: !1069)
!1084 = !DILocation(line: 84, column: 2, scope: !1069)
!1085 = distinct !DISubprogram(name: "turnports_size", scope: !2, file: !2, line: 148, type: !1086, scopeLine: 148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !15, retainedNodes: !170)
!1086 = !DISubroutineType(types: !1087)
!1087 = !{!29, !135}
!1088 = !DILocalVariable(name: "tp", arg: 1, scope: !1085, file: !2, line: 148, type: !135)
!1089 = !DILocation(line: 148, column: 36, scope: !1085)
!1090 = !DILocation(line: 149, column: 7, scope: !1091)
!1091 = distinct !DILexicalBlock(scope: !1085, file: !2, line: 149, column: 6)
!1092 = !DILocation(line: 149, column: 6, scope: !1085)
!1093 = !DILocation(line: 149, column: 11, scope: !1091)
!1094 = !DILocation(line: 151, column: 5, scope: !1095)
!1095 = distinct !DILexicalBlock(scope: !1091, file: !2, line: 150, column: 8)
!1096 = !DILocalVariable(name: "ret", scope: !1095, file: !2, line: 152, type: !29)
!1097 = !DILocation(line: 152, column: 14, scope: !1095)
!1098 = !DILocation(line: 152, column: 32, scope: !1095)
!1099 = !DILocation(line: 152, column: 36, scope: !1095)
!1100 = !DILocation(line: 152, column: 41, scope: !1095)
!1101 = !DILocation(line: 152, column: 45, scope: !1095)
!1102 = !DILocation(line: 152, column: 40, scope: !1095)
!1103 = !DILocation(line: 152, column: 20, scope: !1095)
!1104 = !DILocation(line: 153, column: 5, scope: !1095)
!1105 = !DILocation(line: 154, column: 12, scope: !1095)
!1106 = !DILocation(line: 154, column: 5, scope: !1095)
!1107 = !DILocation(line: 156, column: 1, scope: !1085)
