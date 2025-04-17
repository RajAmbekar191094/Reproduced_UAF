; ModuleID = '/home/raj/lwan/common/lwan-io-wrappers.c'
source_filename = "/home/raj/lwan/common/lwan-io-wrappers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwan_request_t_ = type { i32, i32, %struct.lwan_value_t_, %struct.lwan_value_t_, ptr, %struct.anon.1, %struct.anon.1, %struct.anon.2, %struct.lwan_response_t_ }
%struct.lwan_value_t_ = type { ptr, i64 }
%struct.anon.1 = type { ptr, i64 }
%struct.anon.2 = type { i64, %struct.anon.3 }
%struct.anon.3 = type { i64, i64 }
%struct.lwan_response_t_ = type { ptr, ptr, i64, ptr, %struct.anon.5 }
%struct.anon.5 = type { ptr, ptr, ptr }
%struct.lwan_connection_t_ = type { i32, i32, ptr, ptr, i32, i32 }
%struct.iovec = type { ptr, i64 }

@.str = private unnamed_addr constant [41 x i8] c"/home/raj/lwan/common/lwan-io-wrappers.c\00", align 1, !dbg !0
@__FUNCTION__.lwan_sendfile = private unnamed_addr constant [14 x i8] c"lwan_sendfile\00", align 1, !dbg !7
@.str.1 = private unnamed_addr constant [14 x i8] c"posix_fadvise\00", align 1, !dbg !13
@__FUNCTION__.sendfile_read_write = private unnamed_addr constant [20 x i8] c"sendfile_read_write\00", align 1, !dbg !16
@.str.2 = private unnamed_addr constant [6 x i8] c"lseek\00", align 1, !dbg !21

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lwan_openat(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) #0 !dbg !109 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !276, metadata !DIExpression()), !dbg !277
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !278, metadata !DIExpression()), !dbg !279
  store ptr %2, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !280, metadata !DIExpression()), !dbg !281
  store i32 %3, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !282, metadata !DIExpression()), !dbg !283
  call void @llvm.dbg.declare(metadata ptr %10, metadata !284, metadata !DIExpression()), !dbg !286
  store i32 5, ptr %10, align 4, !dbg !286
  br label %12, !dbg !287

12:                                               ; preds = %52, %4
  %13 = load i32, ptr %10, align 4, !dbg !288
  %14 = icmp ne i32 %13, 0, !dbg !290
  br i1 %14, label %15, label %55, !dbg !290

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %11, metadata !291, metadata !DIExpression()), !dbg !293
  %16 = load i32, ptr %7, align 4, !dbg !294
  %17 = load ptr, ptr %8, align 8, !dbg !295
  %18 = load i32, ptr %9, align 4, !dbg !296
  %19 = call i32 (i32, ptr, i32, ...) @openat(i32 noundef %16, ptr noundef %17, i32 noundef %18), !dbg !297
  store i32 %19, ptr %11, align 4, !dbg !293
  %20 = load i32, ptr %11, align 4, !dbg !298
  %21 = icmp sge i32 %20, 0, !dbg !298
  %22 = xor i1 %21, true, !dbg !298
  %23 = xor i1 %22, true, !dbg !298
  %24 = zext i1 %23 to i32, !dbg !298
  %25 = sext i32 %24 to i64, !dbg !298
  %26 = icmp ne i64 %25, 0, !dbg !298
  br i1 %26, label %27, label %37, !dbg !300

27:                                               ; preds = %15
  %28 = load ptr, ptr %6, align 8, !dbg !301
  %29 = getelementptr inbounds %struct.lwan_request_t_, ptr %28, i32 0, i32 4, !dbg !303
  %30 = load ptr, ptr %29, align 8, !dbg !303
  %31 = getelementptr inbounds %struct.lwan_connection_t_, ptr %30, i32 0, i32 2, !dbg !304
  %32 = load ptr, ptr %31, align 8, !dbg !304
  %33 = load i32, ptr %11, align 4, !dbg !305
  %34 = sext i32 %33 to i64, !dbg !306
  %35 = inttoptr i64 %34 to ptr, !dbg !307
  call void @coro_defer(ptr noundef %32, ptr noundef @close, ptr noundef %35), !dbg !308
  %36 = load i32, ptr %11, align 4, !dbg !309
  store i32 %36, ptr %5, align 4, !dbg !310
  br label %56, !dbg !310

37:                                               ; preds = %15
  %38 = call ptr @__errno_location() #5, !dbg !311
  %39 = load i32, ptr %38, align 4, !dbg !311
  switch i32 %39, label %47 [
    i32 4, label %40
    i32 24, label %40
    i32 23, label %40
    i32 12, label %40
  ], !dbg !312

40:                                               ; preds = %37, %37, %37, %37
  %41 = load ptr, ptr %6, align 8, !dbg !313
  %42 = getelementptr inbounds %struct.lwan_request_t_, ptr %41, i32 0, i32 4, !dbg !315
  %43 = load ptr, ptr %42, align 8, !dbg !315
  %44 = getelementptr inbounds %struct.lwan_connection_t_, ptr %43, i32 0, i32 2, !dbg !316
  %45 = load ptr, ptr %44, align 8, !dbg !316
  %46 = call i32 @coro_yield(ptr noundef %45, i32 noundef 0), !dbg !317
  br label %51, !dbg !318

47:                                               ; preds = %37
  %48 = call ptr @__errno_location() #5, !dbg !319
  %49 = load i32, ptr %48, align 4, !dbg !319
  %50 = sub nsw i32 0, %49, !dbg !320
  store i32 %50, ptr %5, align 4, !dbg !321
  br label %56, !dbg !321

51:                                               ; preds = %40
  br label %52, !dbg !322

52:                                               ; preds = %51
  %53 = load i32, ptr %10, align 4, !dbg !323
  %54 = add nsw i32 %53, -1, !dbg !323
  store i32 %54, ptr %10, align 4, !dbg !323
  br label %12, !dbg !324, !llvm.loop !325

55:                                               ; preds = %12
  store i32 -23, ptr %5, align 4, !dbg !328
  br label %56, !dbg !328

56:                                               ; preds = %55, %47, %27
  %57 = load i32, ptr %5, align 4, !dbg !329
  ret i32 %57, !dbg !329
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @openat(i32 noundef, ptr noundef, i32 noundef, ...) #2

declare void @coro_defer(ptr noundef, ptr noundef, ptr noundef) #2

declare i32 @close(i32 noundef) #2

; Function Attrs: nounwind willreturn memory(none)
declare ptr @__errno_location() #3

declare i32 @coro_yield(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lwan_writev(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !330 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !339, metadata !DIExpression()), !dbg !340
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !341, metadata !DIExpression()), !dbg !342
  store i32 %2, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !343, metadata !DIExpression()), !dbg !344
  call void @llvm.dbg.declare(metadata ptr %7, metadata !345, metadata !DIExpression()), !dbg !346
  store i64 0, ptr %7, align 8, !dbg !346
  call void @llvm.dbg.declare(metadata ptr %8, metadata !347, metadata !DIExpression()), !dbg !348
  store i32 0, ptr %8, align 4, !dbg !348
  call void @llvm.dbg.declare(metadata ptr %9, metadata !349, metadata !DIExpression()), !dbg !351
  store i32 5, ptr %9, align 4, !dbg !351
  br label %11, !dbg !352

11:                                               ; preds = %96, %3
  %12 = load i32, ptr %9, align 4, !dbg !353
  %13 = icmp ne i32 %12, 0, !dbg !355
  br i1 %13, label %14, label %103, !dbg !355

14:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata ptr %10, metadata !356, metadata !DIExpression()), !dbg !358
  %15 = load ptr, ptr %4, align 8, !dbg !359
  %16 = getelementptr inbounds %struct.lwan_request_t_, ptr %15, i32 0, i32 1, !dbg !360
  %17 = load i32, ptr %16, align 4, !dbg !360
  %18 = load ptr, ptr %5, align 8, !dbg !361
  %19 = load i32, ptr %8, align 4, !dbg !362
  %20 = sext i32 %19 to i64, !dbg !363
  %21 = getelementptr inbounds %struct.iovec, ptr %18, i64 %20, !dbg !363
  %22 = load i32, ptr %6, align 4, !dbg !364
  %23 = load i32, ptr %8, align 4, !dbg !365
  %24 = sub nsw i32 %22, %23, !dbg !366
  %25 = call i64 @writev(i32 noundef %17, ptr noundef %21, i32 noundef %24), !dbg !367
  store i64 %25, ptr %10, align 8, !dbg !358
  %26 = load i64, ptr %10, align 8, !dbg !368
  %27 = icmp slt i64 %26, 0, !dbg !368
  %28 = zext i1 %27 to i32, !dbg !368
  %29 = sext i32 %28 to i64, !dbg !368
  %30 = icmp ne i64 %29, 0, !dbg !368
  br i1 %30, label %31, label %38, !dbg !370

31:                                               ; preds = %14
  %32 = load i32, ptr %9, align 4, !dbg !371
  %33 = add nsw i32 %32, -1, !dbg !371
  store i32 %33, ptr %9, align 4, !dbg !371
  %34 = call ptr @__errno_location() #5, !dbg !373
  %35 = load i32, ptr %34, align 4, !dbg !373
  switch i32 %35, label %37 [
    i32 11, label %36
    i32 4, label %36
  ], !dbg !374

36:                                               ; preds = %31, %31
  br label %96, !dbg !375

37:                                               ; preds = %31
  br label %104, !dbg !377

38:                                               ; preds = %14
  %39 = load i64, ptr %10, align 8, !dbg !378
  %40 = load i64, ptr %7, align 8, !dbg !379
  %41 = add nsw i64 %40, %39, !dbg !379
  store i64 %41, ptr %7, align 8, !dbg !379
  br label %42, !dbg !380

42:                                               ; preds = %57, %38
  %43 = load i32, ptr %8, align 4, !dbg !381
  %44 = load i32, ptr %6, align 4, !dbg !382
  %45 = icmp slt i32 %43, %44, !dbg !383
  br i1 %45, label %46, label %55, !dbg !384

46:                                               ; preds = %42
  %47 = load i64, ptr %10, align 8, !dbg !385
  %48 = load ptr, ptr %5, align 8, !dbg !386
  %49 = load i32, ptr %8, align 4, !dbg !387
  %50 = sext i32 %49 to i64, !dbg !386
  %51 = getelementptr inbounds %struct.iovec, ptr %48, i64 %50, !dbg !386
  %52 = getelementptr inbounds %struct.iovec, ptr %51, i32 0, i32 1, !dbg !388
  %53 = load i64, ptr %52, align 8, !dbg !388
  %54 = icmp sge i64 %47, %53, !dbg !389
  br label %55

55:                                               ; preds = %46, %42
  %56 = phi i1 [ false, %42 ], [ %54, %46 ], !dbg !390
  br i1 %56, label %57, label %68, !dbg !380

57:                                               ; preds = %55
  %58 = load ptr, ptr %5, align 8, !dbg !391
  %59 = load i32, ptr %8, align 4, !dbg !393
  %60 = sext i32 %59 to i64, !dbg !391
  %61 = getelementptr inbounds %struct.iovec, ptr %58, i64 %60, !dbg !391
  %62 = getelementptr inbounds %struct.iovec, ptr %61, i32 0, i32 1, !dbg !394
  %63 = load i64, ptr %62, align 8, !dbg !394
  %64 = load i64, ptr %10, align 8, !dbg !395
  %65 = sub nsw i64 %64, %63, !dbg !395
  store i64 %65, ptr %10, align 8, !dbg !395
  %66 = load i32, ptr %8, align 4, !dbg !396
  %67 = add nsw i32 %66, 1, !dbg !396
  store i32 %67, ptr %8, align 4, !dbg !396
  br label %42, !dbg !380, !llvm.loop !397

68:                                               ; preds = %55
  %69 = load i32, ptr %8, align 4, !dbg !399
  %70 = load i32, ptr %6, align 4, !dbg !401
  %71 = icmp eq i32 %69, %70, !dbg !402
  br i1 %71, label %72, label %74, !dbg !403

72:                                               ; preds = %68
  %73 = load i64, ptr %7, align 8, !dbg !404
  ret i64 %73, !dbg !405

74:                                               ; preds = %68
  %75 = load ptr, ptr %5, align 8, !dbg !406
  %76 = load i32, ptr %8, align 4, !dbg !407
  %77 = sext i32 %76 to i64, !dbg !406
  %78 = getelementptr inbounds %struct.iovec, ptr %75, i64 %77, !dbg !406
  %79 = getelementptr inbounds %struct.iovec, ptr %78, i32 0, i32 0, !dbg !408
  %80 = load ptr, ptr %79, align 8, !dbg !408
  %81 = load i64, ptr %10, align 8, !dbg !409
  %82 = getelementptr inbounds i8, ptr %80, i64 %81, !dbg !410
  %83 = load ptr, ptr %5, align 8, !dbg !411
  %84 = load i32, ptr %8, align 4, !dbg !412
  %85 = sext i32 %84 to i64, !dbg !411
  %86 = getelementptr inbounds %struct.iovec, ptr %83, i64 %85, !dbg !411
  %87 = getelementptr inbounds %struct.iovec, ptr %86, i32 0, i32 0, !dbg !413
  store ptr %82, ptr %87, align 8, !dbg !414
  %88 = load i64, ptr %10, align 8, !dbg !415
  %89 = load ptr, ptr %5, align 8, !dbg !416
  %90 = load i32, ptr %8, align 4, !dbg !417
  %91 = sext i32 %90 to i64, !dbg !416
  %92 = getelementptr inbounds %struct.iovec, ptr %89, i64 %91, !dbg !416
  %93 = getelementptr inbounds %struct.iovec, ptr %92, i32 0, i32 1, !dbg !418
  %94 = load i64, ptr %93, align 8, !dbg !419
  %95 = sub i64 %94, %88, !dbg !419
  store i64 %95, ptr %93, align 8, !dbg !419
  br label %96, !dbg !416

96:                                               ; preds = %74, %36
  call void @llvm.dbg.label(metadata !420), !dbg !421
  %97 = load ptr, ptr %4, align 8, !dbg !422
  %98 = getelementptr inbounds %struct.lwan_request_t_, ptr %97, i32 0, i32 4, !dbg !423
  %99 = load ptr, ptr %98, align 8, !dbg !423
  %100 = getelementptr inbounds %struct.lwan_connection_t_, ptr %99, i32 0, i32 2, !dbg !424
  %101 = load ptr, ptr %100, align 8, !dbg !424
  %102 = call i32 @coro_yield(ptr noundef %101, i32 noundef 0), !dbg !425
  br label %11, !dbg !426, !llvm.loop !427

103:                                              ; preds = %11
  br label %104, !dbg !428

104:                                              ; preds = %103, %37
  call void @llvm.dbg.label(metadata !429), !dbg !430
  %105 = load ptr, ptr %4, align 8, !dbg !431
  %106 = getelementptr inbounds %struct.lwan_request_t_, ptr %105, i32 0, i32 4, !dbg !432
  %107 = load ptr, ptr %106, align 8, !dbg !432
  %108 = getelementptr inbounds %struct.lwan_connection_t_, ptr %107, i32 0, i32 2, !dbg !433
  %109 = load ptr, ptr %108, align 8, !dbg !433
  %110 = call i32 @coro_yield(ptr noundef %109, i32 noundef -1), !dbg !434
  unreachable, !dbg !435
}

declare i64 @writev(i32 noundef, ptr noundef, i32 noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lwan_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 !dbg !436 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !441, metadata !DIExpression()), !dbg !442
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !443, metadata !DIExpression()), !dbg !444
  store i64 %2, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !445, metadata !DIExpression()), !dbg !446
  call void @llvm.dbg.declare(metadata ptr %7, metadata !447, metadata !DIExpression()), !dbg !448
  store i64 0, ptr %7, align 8, !dbg !448
  call void @llvm.dbg.declare(metadata ptr %8, metadata !449, metadata !DIExpression()), !dbg !451
  store i32 5, ptr %8, align 4, !dbg !451
  br label %10, !dbg !452

10:                                               ; preds = %50, %3
  %11 = load i32, ptr %8, align 4, !dbg !453
  %12 = icmp ne i32 %11, 0, !dbg !455
  br i1 %12, label %13, label %57, !dbg !455

13:                                               ; preds = %10
  call void @llvm.dbg.declare(metadata ptr %9, metadata !456, metadata !DIExpression()), !dbg !458
  %14 = load ptr, ptr %4, align 8, !dbg !459
  %15 = getelementptr inbounds %struct.lwan_request_t_, ptr %14, i32 0, i32 1, !dbg !460
  %16 = load i32, ptr %15, align 4, !dbg !460
  %17 = load ptr, ptr %5, align 8, !dbg !461
  %18 = load i64, ptr %6, align 8, !dbg !462
  %19 = call i64 @write(i32 noundef %16, ptr noundef %17, i64 noundef %18), !dbg !463
  store i64 %19, ptr %9, align 8, !dbg !458
  %20 = load i64, ptr %9, align 8, !dbg !464
  %21 = icmp slt i64 %20, 0, !dbg !464
  %22 = zext i1 %21 to i32, !dbg !464
  %23 = sext i32 %22 to i64, !dbg !464
  %24 = icmp ne i64 %23, 0, !dbg !464
  br i1 %24, label %25, label %32, !dbg !466

25:                                               ; preds = %13
  %26 = load i32, ptr %8, align 4, !dbg !467
  %27 = add nsw i32 %26, -1, !dbg !467
  store i32 %27, ptr %8, align 4, !dbg !467
  %28 = call ptr @__errno_location() #5, !dbg !469
  %29 = load i32, ptr %28, align 4, !dbg !469
  switch i32 %29, label %31 [
    i32 11, label %30
    i32 4, label %30
  ], !dbg !470

30:                                               ; preds = %25, %25
  br label %50, !dbg !471

31:                                               ; preds = %25
  br label %58, !dbg !473

32:                                               ; preds = %13
  %33 = load i64, ptr %9, align 8, !dbg !474
  %34 = load i64, ptr %7, align 8, !dbg !475
  %35 = add nsw i64 %34, %33, !dbg !475
  store i64 %35, ptr %7, align 8, !dbg !475
  %36 = load i64, ptr %7, align 8, !dbg !476
  %37 = load i64, ptr %6, align 8, !dbg !478
  %38 = icmp eq i64 %36, %37, !dbg !479
  br i1 %38, label %39, label %41, !dbg !480

39:                                               ; preds = %32
  %40 = load i64, ptr %7, align 8, !dbg !481
  ret i64 %40, !dbg !482

41:                                               ; preds = %32
  %42 = load i64, ptr %7, align 8, !dbg !483
  %43 = load i64, ptr %6, align 8, !dbg !485
  %44 = icmp ult i64 %42, %43, !dbg !486
  br i1 %44, label %45, label %49, !dbg !487

45:                                               ; preds = %41
  %46 = load ptr, ptr %5, align 8, !dbg !488
  %47 = load i64, ptr %9, align 8, !dbg !489
  %48 = getelementptr inbounds i8, ptr %46, i64 %47, !dbg !490
  store ptr %48, ptr %5, align 8, !dbg !491
  br label %49, !dbg !492

49:                                               ; preds = %45, %41
  br label %50, !dbg !485

50:                                               ; preds = %49, %30
  call void @llvm.dbg.label(metadata !493), !dbg !494
  %51 = load ptr, ptr %4, align 8, !dbg !495
  %52 = getelementptr inbounds %struct.lwan_request_t_, ptr %51, i32 0, i32 4, !dbg !496
  %53 = load ptr, ptr %52, align 8, !dbg !496
  %54 = getelementptr inbounds %struct.lwan_connection_t_, ptr %53, i32 0, i32 2, !dbg !497
  %55 = load ptr, ptr %54, align 8, !dbg !497
  %56 = call i32 @coro_yield(ptr noundef %55, i32 noundef 0), !dbg !498
  br label %10, !dbg !499, !llvm.loop !500

57:                                               ; preds = %10
  br label %58, !dbg !501

58:                                               ; preds = %57, %31
  call void @llvm.dbg.label(metadata !502), !dbg !503
  %59 = load ptr, ptr %4, align 8, !dbg !504
  %60 = getelementptr inbounds %struct.lwan_request_t_, ptr %59, i32 0, i32 4, !dbg !505
  %61 = load ptr, ptr %60, align 8, !dbg !505
  %62 = getelementptr inbounds %struct.lwan_connection_t_, ptr %61, i32 0, i32 2, !dbg !506
  %63 = load ptr, ptr %62, align 8, !dbg !506
  %64 = call i32 @coro_yield(ptr noundef %63, i32 noundef -1), !dbg !507
  unreachable, !dbg !508
}

declare i64 @write(i32 noundef, ptr noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lwan_send(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) #0 !dbg !509 {
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !512, metadata !DIExpression()), !dbg !513
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !514, metadata !DIExpression()), !dbg !515
  store i64 %2, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !516, metadata !DIExpression()), !dbg !517
  store i32 %3, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !518, metadata !DIExpression()), !dbg !519
  call void @llvm.dbg.declare(metadata ptr %9, metadata !520, metadata !DIExpression()), !dbg !521
  store i64 0, ptr %9, align 8, !dbg !521
  call void @llvm.dbg.declare(metadata ptr %10, metadata !522, metadata !DIExpression()), !dbg !524
  store i32 5, ptr %10, align 4, !dbg !524
  br label %12, !dbg !525

12:                                               ; preds = %53, %4
  %13 = load i32, ptr %10, align 4, !dbg !526
  %14 = icmp ne i32 %13, 0, !dbg !528
  br i1 %14, label %15, label %60, !dbg !528

15:                                               ; preds = %12
  call void @llvm.dbg.declare(metadata ptr %11, metadata !529, metadata !DIExpression()), !dbg !531
  %16 = load ptr, ptr %5, align 8, !dbg !532
  %17 = getelementptr inbounds %struct.lwan_request_t_, ptr %16, i32 0, i32 1, !dbg !533
  %18 = load i32, ptr %17, align 4, !dbg !533
  %19 = load ptr, ptr %6, align 8, !dbg !534
  %20 = load i64, ptr %7, align 8, !dbg !535
  %21 = load i32, ptr %8, align 4, !dbg !536
  %22 = call i64 @send(i32 noundef %18, ptr noundef %19, i64 noundef %20, i32 noundef %21), !dbg !537
  store i64 %22, ptr %11, align 8, !dbg !531
  %23 = load i64, ptr %11, align 8, !dbg !538
  %24 = icmp slt i64 %23, 0, !dbg !538
  %25 = zext i1 %24 to i32, !dbg !538
  %26 = sext i32 %25 to i64, !dbg !538
  %27 = icmp ne i64 %26, 0, !dbg !538
  br i1 %27, label %28, label %35, !dbg !540

28:                                               ; preds = %15
  %29 = load i32, ptr %10, align 4, !dbg !541
  %30 = add nsw i32 %29, -1, !dbg !541
  store i32 %30, ptr %10, align 4, !dbg !541
  %31 = call ptr @__errno_location() #5, !dbg !543
  %32 = load i32, ptr %31, align 4, !dbg !543
  switch i32 %32, label %34 [
    i32 11, label %33
    i32 4, label %33
  ], !dbg !544

33:                                               ; preds = %28, %28
  br label %53, !dbg !545

34:                                               ; preds = %28
  br label %61, !dbg !547

35:                                               ; preds = %15
  %36 = load i64, ptr %11, align 8, !dbg !548
  %37 = load i64, ptr %9, align 8, !dbg !549
  %38 = add nsw i64 %37, %36, !dbg !549
  store i64 %38, ptr %9, align 8, !dbg !549
  %39 = load i64, ptr %9, align 8, !dbg !550
  %40 = load i64, ptr %7, align 8, !dbg !552
  %41 = icmp eq i64 %39, %40, !dbg !553
  br i1 %41, label %42, label %44, !dbg !554

42:                                               ; preds = %35
  %43 = load i64, ptr %9, align 8, !dbg !555
  ret i64 %43, !dbg !556

44:                                               ; preds = %35
  %45 = load i64, ptr %9, align 8, !dbg !557
  %46 = load i64, ptr %7, align 8, !dbg !559
  %47 = icmp ult i64 %45, %46, !dbg !560
  br i1 %47, label %48, label %52, !dbg !561

48:                                               ; preds = %44
  %49 = load ptr, ptr %6, align 8, !dbg !562
  %50 = load i64, ptr %11, align 8, !dbg !563
  %51 = getelementptr inbounds i8, ptr %49, i64 %50, !dbg !564
  store ptr %51, ptr %6, align 8, !dbg !565
  br label %52, !dbg !566

52:                                               ; preds = %48, %44
  br label %53, !dbg !559

53:                                               ; preds = %52, %33
  call void @llvm.dbg.label(metadata !567), !dbg !568
  %54 = load ptr, ptr %5, align 8, !dbg !569
  %55 = getelementptr inbounds %struct.lwan_request_t_, ptr %54, i32 0, i32 4, !dbg !570
  %56 = load ptr, ptr %55, align 8, !dbg !570
  %57 = getelementptr inbounds %struct.lwan_connection_t_, ptr %56, i32 0, i32 2, !dbg !571
  %58 = load ptr, ptr %57, align 8, !dbg !571
  %59 = call i32 @coro_yield(ptr noundef %58, i32 noundef 0), !dbg !572
  br label %12, !dbg !573, !llvm.loop !574

60:                                               ; preds = %12
  br label %61, !dbg !575

61:                                               ; preds = %60, %34
  call void @llvm.dbg.label(metadata !576), !dbg !577
  %62 = load ptr, ptr %5, align 8, !dbg !578
  %63 = getelementptr inbounds %struct.lwan_request_t_, ptr %62, i32 0, i32 4, !dbg !579
  %64 = load ptr, ptr %63, align 8, !dbg !579
  %65 = getelementptr inbounds %struct.lwan_connection_t_, ptr %64, i32 0, i32 2, !dbg !580
  %66 = load ptr, ptr %65, align 8, !dbg !580
  %67 = call i32 @coro_yield(ptr noundef %66, i32 noundef -1), !dbg !581
  unreachable, !dbg !582
}

declare i64 @send(i32 noundef, ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @lwan_sendfile(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) #0 !dbg !583 {
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca ptr, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  store ptr %0, ptr %24, align 8
  call void @llvm.dbg.declare(metadata ptr %24, metadata !586, metadata !DIExpression()), !dbg !587
  store i32 %1, ptr %25, align 4
  call void @llvm.dbg.declare(metadata ptr %25, metadata !588, metadata !DIExpression()), !dbg !589
  store i64 %2, ptr %26, align 8
  call void @llvm.dbg.declare(metadata ptr %26, metadata !590, metadata !DIExpression()), !dbg !591
  store i64 %3, ptr %27, align 8
  call void @llvm.dbg.declare(metadata ptr %27, metadata !592, metadata !DIExpression()), !dbg !593
  %29 = load i64, ptr %27, align 8, !dbg !594
  %30 = icmp ugt i64 %29, 7000, !dbg !596
  br i1 %30, label %31, label %42, !dbg !597

31:                                               ; preds = %4
  %32 = load i32, ptr %25, align 4, !dbg !598
  %33 = load i64, ptr %26, align 8, !dbg !598
  %34 = load i64, ptr %27, align 8, !dbg !598
  %35 = call i32 @posix_fadvise(i32 noundef %32, i64 noundef %33, i64 noundef %34, i32 noundef 2) #6, !dbg !598
  %36 = icmp slt i32 %35, 0, !dbg !598
  %37 = zext i1 %36 to i32, !dbg !598
  %38 = sext i32 %37 to i64, !dbg !598
  %39 = icmp ne i64 %38, 0, !dbg !598
  br i1 %39, label %40, label %41, !dbg !601

40:                                               ; preds = %31
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 240, ptr noundef @__FUNCTION__.lwan_sendfile, ptr noundef @.str.1), !dbg !602
  br label %41, !dbg !602

41:                                               ; preds = %40, %31
  br label %42, !dbg !603

42:                                               ; preds = %41, %4
  call void @llvm.dbg.declare(metadata ptr %28, metadata !604, metadata !DIExpression()), !dbg !605
  %43 = load ptr, ptr %24, align 8, !dbg !606
  %44 = getelementptr inbounds %struct.lwan_request_t_, ptr %43, i32 0, i32 4, !dbg !607
  %45 = load ptr, ptr %44, align 8, !dbg !607
  %46 = getelementptr inbounds %struct.lwan_connection_t_, ptr %45, i32 0, i32 2, !dbg !608
  %47 = load ptr, ptr %46, align 8, !dbg !608
  %48 = load i32, ptr %25, align 4, !dbg !609
  %49 = load ptr, ptr %24, align 8, !dbg !610
  %50 = getelementptr inbounds %struct.lwan_request_t_, ptr %49, i32 0, i32 1, !dbg !611
  %51 = load i32, ptr %50, align 4, !dbg !611
  %52 = load i64, ptr %26, align 8, !dbg !612
  %53 = load i64, ptr %27, align 8, !dbg !613
  store ptr %47, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !614, metadata !DIExpression()), !dbg !618
  store i32 %48, ptr %16, align 4
  call void @llvm.dbg.declare(metadata ptr %16, metadata !620, metadata !DIExpression()), !dbg !621
  store i32 %51, ptr %17, align 4
  call void @llvm.dbg.declare(metadata ptr %17, metadata !622, metadata !DIExpression()), !dbg !623
  store i64 %52, ptr %18, align 8
  call void @llvm.dbg.declare(metadata ptr %18, metadata !624, metadata !DIExpression()), !dbg !625
  store i64 %53, ptr %19, align 8
  call void @llvm.dbg.declare(metadata ptr %19, metadata !626, metadata !DIExpression()), !dbg !627
  call void @llvm.dbg.declare(metadata ptr %20, metadata !628, metadata !DIExpression()), !dbg !629
  store i64 0, ptr %20, align 8, !dbg !629
  call void @llvm.dbg.declare(metadata ptr %21, metadata !630, metadata !DIExpression()), !dbg !631
  %54 = load i64, ptr %19, align 8, !dbg !632
  store i64 %54, ptr %21, align 8, !dbg !631
  br label %55, !dbg !633

55:                                               ; preds = %80, %42
  call void @llvm.dbg.declare(metadata ptr %22, metadata !634, metadata !DIExpression()), !dbg !636
  %56 = load i32, ptr %17, align 4, !dbg !637
  %57 = load i32, ptr %16, align 4, !dbg !638
  %58 = load i64, ptr %21, align 8, !dbg !639
  %59 = call i64 @sendfile(i32 noundef %56, i32 noundef %57, ptr noundef %18, i64 noundef %58) #6, !dbg !640
  store i64 %59, ptr %22, align 8, !dbg !636
  %60 = load i64, ptr %22, align 8, !dbg !641
  %61 = icmp slt i64 %60, 0, !dbg !643
  br i1 %61, label %62, label %71, !dbg !644

62:                                               ; preds = %55
  %63 = call ptr @__errno_location() #5, !dbg !645
  %64 = load i32, ptr %63, align 4, !dbg !645
  switch i32 %64, label %68 [
    i32 11, label %65
    i32 4, label %65
  ], !dbg !647

65:                                               ; preds = %62, %62
  %66 = load ptr, ptr %15, align 8, !dbg !648
  %67 = call i32 @coro_yield(ptr noundef %66, i32 noundef 0) #6, !dbg !650
  br label %80, !dbg !651

68:                                               ; preds = %62
  %69 = load ptr, ptr %15, align 8, !dbg !652
  %70 = call i32 @coro_yield(ptr noundef %69, i32 noundef -1) #6, !dbg !653
  unreachable, !dbg !654

71:                                               ; preds = %55
  %72 = load i64, ptr %22, align 8, !dbg !655
  %73 = load i64, ptr %20, align 8, !dbg !656
  %74 = add i64 %73, %72, !dbg !656
  store i64 %74, ptr %20, align 8, !dbg !656
  %75 = load i64, ptr %22, align 8, !dbg !657
  %76 = load i64, ptr %21, align 8, !dbg !658
  %77 = sub i64 %76, %75, !dbg !658
  store i64 %77, ptr %21, align 8, !dbg !658
  %78 = load ptr, ptr %15, align 8, !dbg !659
  %79 = call i32 @coro_yield(ptr noundef %78, i32 noundef 0) #6, !dbg !660
  br label %80, !dbg !661

80:                                               ; preds = %71, %65
  %81 = load i64, ptr %21, align 8, !dbg !662
  %82 = icmp ugt i64 %81, 0, !dbg !663
  br i1 %82, label %55, label %83, !dbg !661, !llvm.loop !664

83:                                               ; preds = %80
  %84 = load i64, ptr %20, align 8, !dbg !666
  store i64 %84, ptr %28, align 8, !dbg !605
  %85 = load i64, ptr %28, align 8, !dbg !667
  %86 = icmp slt i64 %85, 0, !dbg !667
  %87 = zext i1 %86 to i32, !dbg !667
  %88 = sext i32 %87 to i64, !dbg !667
  %89 = icmp ne i64 %88, 0, !dbg !667
  br i1 %89, label %90, label %152, !dbg !669

90:                                               ; preds = %83
  %91 = call ptr @__errno_location() #5, !dbg !670
  %92 = load i32, ptr %91, align 4, !dbg !670
  switch i32 %92, label %151 [
    i32 38, label %93
    i32 22, label %93
  ], !dbg !672

93:                                               ; preds = %90, %90
  %94 = load ptr, ptr %24, align 8, !dbg !673
  %95 = getelementptr inbounds %struct.lwan_request_t_, ptr %94, i32 0, i32 4, !dbg !675
  %96 = load ptr, ptr %95, align 8, !dbg !675
  %97 = getelementptr inbounds %struct.lwan_connection_t_, ptr %96, i32 0, i32 2, !dbg !676
  %98 = load ptr, ptr %97, align 8, !dbg !676
  %99 = load i32, ptr %25, align 4, !dbg !677
  %100 = load ptr, ptr %24, align 8, !dbg !678
  %101 = getelementptr inbounds %struct.lwan_request_t_, ptr %100, i32 0, i32 1, !dbg !679
  %102 = load i32, ptr %101, align 4, !dbg !679
  %103 = load i64, ptr %26, align 8, !dbg !680
  %104 = load i64, ptr %27, align 8, !dbg !681
  store ptr %98, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !682, metadata !DIExpression()), !dbg !684
  store i32 %99, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !686, metadata !DIExpression()), !dbg !687
  store i32 %102, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !688, metadata !DIExpression()), !dbg !689
  store i64 %103, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !690, metadata !DIExpression()), !dbg !691
  store i64 %104, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !692, metadata !DIExpression()), !dbg !693
  call void @llvm.dbg.declare(metadata ptr %11, metadata !694, metadata !DIExpression()), !dbg !695
  store i64 0, ptr %11, align 8, !dbg !695
  call void @llvm.dbg.declare(metadata ptr %12, metadata !696, metadata !DIExpression()), !dbg !697
  %105 = load ptr, ptr %6, align 8, !dbg !698
  %106 = call ptr @coro_malloc(ptr noundef %105, i64 noundef 1400) #6, !dbg !699
  store ptr %106, ptr %12, align 8, !dbg !697
  %107 = load i64, ptr %9, align 8, !dbg !700
  %108 = icmp ne i64 %107, 0, !dbg !700
  br i1 %108, label %109, label %115, !dbg !702

109:                                              ; preds = %93
  %110 = load i32, ptr %7, align 4, !dbg !703
  %111 = load i64, ptr %9, align 8, !dbg !704
  %112 = call i64 @lseek(i32 noundef %110, i64 noundef %111, i32 noundef 0) #6, !dbg !705
  %113 = icmp slt i64 %112, 0, !dbg !706
  br i1 %113, label %114, label %115, !dbg !707

114:                                              ; preds = %109
  call void (ptr, i32, ptr, ptr, ...) @lwan_status_perror_debug(ptr noundef @.str, i32 noundef 179, ptr noundef @__FUNCTION__.sendfile_read_write, ptr noundef @.str.2) #6, !dbg !708
  store i64 -1, ptr %5, align 8, !dbg !710
  br label %149, !dbg !710

115:                                              ; preds = %109, %93
  br label %116, !dbg !711

116:                                              ; preds = %138, %115
  %117 = load i64, ptr %10, align 8, !dbg !712
  %118 = icmp ugt i64 %117, 0, !dbg !713
  br i1 %118, label %119, label %147, !dbg !711

119:                                              ; preds = %116
  call void @llvm.dbg.declare(metadata ptr %13, metadata !714, metadata !DIExpression()), !dbg !716
  %120 = load i32, ptr %7, align 4, !dbg !717
  %121 = load ptr, ptr %12, align 8, !dbg !718
  %122 = call i64 @read(i32 noundef %120, ptr noundef %121, i64 noundef 1400) #6, !dbg !719
  store i64 %122, ptr %13, align 8, !dbg !716
  %123 = load i64, ptr %13, align 8, !dbg !720
  %124 = icmp slt i64 %123, 0, !dbg !722
  br i1 %124, label %125, label %128, !dbg !723

125:                                              ; preds = %119
  %126 = load ptr, ptr %6, align 8, !dbg !724
  %127 = call i32 @coro_yield(ptr noundef %126, i32 noundef -1) #6, !dbg !726
  unreachable, !dbg !727

128:                                              ; preds = %119
  call void @llvm.dbg.declare(metadata ptr %14, metadata !728, metadata !DIExpression()), !dbg !729
  %129 = load i32, ptr %8, align 4, !dbg !730
  %130 = load ptr, ptr %12, align 8, !dbg !731
  %131 = load i64, ptr %13, align 8, !dbg !732
  %132 = call i64 @write(i32 noundef %129, ptr noundef %130, i64 noundef %131) #6, !dbg !733
  store i64 %132, ptr %14, align 8, !dbg !729
  %133 = load i64, ptr %14, align 8, !dbg !734
  %134 = icmp slt i64 %133, 0, !dbg !736
  br i1 %134, label %135, label %138, !dbg !737

135:                                              ; preds = %128
  %136 = load ptr, ptr %6, align 8, !dbg !738
  %137 = call i32 @coro_yield(ptr noundef %136, i32 noundef -1) #6, !dbg !740
  unreachable, !dbg !741

138:                                              ; preds = %128
  %139 = load i64, ptr %14, align 8, !dbg !742
  %140 = load i64, ptr %11, align 8, !dbg !743
  %141 = add nsw i64 %140, %139, !dbg !743
  store i64 %141, ptr %11, align 8, !dbg !743
  %142 = load i64, ptr %14, align 8, !dbg !744
  %143 = load i64, ptr %10, align 8, !dbg !745
  %144 = sub i64 %143, %142, !dbg !745
  store i64 %144, ptr %10, align 8, !dbg !745
  %145 = load ptr, ptr %6, align 8, !dbg !746
  %146 = call i32 @coro_yield(ptr noundef %145, i32 noundef 0) #6, !dbg !747
  br label %116, !dbg !711, !llvm.loop !748

147:                                              ; preds = %116
  %148 = load i64, ptr %11, align 8, !dbg !750
  store i64 %148, ptr %5, align 8, !dbg !751
  br label %149, !dbg !751

149:                                              ; preds = %114, %147
  %150 = load i64, ptr %5, align 8, !dbg !752
  store i64 %150, ptr %23, align 8, !dbg !753
  br label %154, !dbg !753

151:                                              ; preds = %90
  br label %152, !dbg !754

152:                                              ; preds = %151, %83
  %153 = load i64, ptr %28, align 8, !dbg !755
  store i64 %153, ptr %23, align 8, !dbg !756
  br label %154, !dbg !756

154:                                              ; preds = %152, %149
  %155 = load i64, ptr %23, align 8, !dbg !757
  ret i64 %155, !dbg !757
}

; Function Attrs: nounwind
declare i32 @posix_fadvise(i32 noundef, i64 noundef, i64 noundef, i32 noundef) #4

declare void @lwan_status_perror_debug(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) #2

; Function Attrs: nounwind
declare i64 @sendfile(i32 noundef, i32 noundef, ptr noundef, i64 noundef) #4

declare ptr @coro_malloc(ptr noundef, i64 noundef) #2

; Function Attrs: nounwind
declare i64 @lseek(i32 noundef, i64 noundef, i32 noundef) #4

declare i64 @read(i32 noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(none) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(none) }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!26}
!llvm.module.flags = !{!101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "common/lwan-io-wrappers.c", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "df65fc501e2089d1c77356ebe44cff47")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 328, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 41)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 112, elements: !11)
!10 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!11 = !{!12}
!12 = !DISubrange(count: 14)
!13 = !DIGlobalVariableExpression(var: !14, expr: !DIExpression())
!14 = distinct !DIGlobalVariable(scope: null, file: !2, line: 240, type: !15, isLocal: true, isDefinition: true)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 112, elements: !11)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !18, isLocal: true, isDefinition: true)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 160, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 20)
!21 = !DIGlobalVariableExpression(var: !22, expr: !DIExpression())
!22 = distinct !DIGlobalVariable(scope: null, file: !2, line: 179, type: !23, isLocal: true, isDefinition: true)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 6)
!26 = distinct !DICompileUnit(language: DW_LANG_C11, file: !27, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !28, retainedTypes: !75, globals: !94, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/raj/lwan/common/lwan-io-wrappers.c", directory: "/home/raj/lwan/build", checksumkind: CSK_MD5, checksum: "df65fc501e2089d1c77356ebe44cff47")
!28 = !{!29, !43, !51, !70}
!29 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 145, baseType: !31, size: 32, elements: !32)
!30 = !DIFile(filename: "common/lwan.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "56f65bbbfce1c5452d6905964ca2b84f")
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !{!33, !34, !35, !36, !37, !38, !39, !40, !41, !42}
!33 = !DIEnumerator(name: "REQUEST_ALL_FLAGS", value: -1)
!34 = !DIEnumerator(name: "REQUEST_METHOD_GET", value: 1)
!35 = !DIEnumerator(name: "REQUEST_METHOD_HEAD", value: 2)
!36 = !DIEnumerator(name: "REQUEST_METHOD_POST", value: 4)
!37 = !DIEnumerator(name: "REQUEST_ACCEPT_DEFLATE", value: 8)
!38 = !DIEnumerator(name: "REQUEST_ACCEPT_GZIP", value: 16)
!39 = !DIEnumerator(name: "REQUEST_IS_HTTP_1_0", value: 32)
!40 = !DIEnumerator(name: "RESPONSE_SENT_HEADERS", value: 64)
!41 = !DIEnumerator(name: "RESPONSE_CHUNKED_ENCODING", value: 128)
!42 = !DIEnumerator(name: "RESPONSE_NO_CONTENT_LENGTH", value: 256)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 158, baseType: !31, size: 32, elements: !44)
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DIEnumerator(name: "CONN_MASK", value: -1)
!46 = !DIEnumerator(name: "CONN_KEEP_ALIVE", value: 1)
!47 = !DIEnumerator(name: "CONN_IS_ALIVE", value: 2)
!48 = !DIEnumerator(name: "CONN_SHOULD_RESUME_CORO", value: 4)
!49 = !DIEnumerator(name: "CONN_WRITE_EVENTS", value: 8)
!50 = !DIEnumerator(name: "CONN_MUST_READ", value: 16)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 114, baseType: !52, size: 32, elements: !53)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !{!54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69}
!54 = !DIEnumerator(name: "HTTP_OK", value: 200)
!55 = !DIEnumerator(name: "HTTP_PARTIAL_CONTENT", value: 206)
!56 = !DIEnumerator(name: "HTTP_MOVED_PERMANENTLY", value: 301)
!57 = !DIEnumerator(name: "HTTP_NOT_MODIFIED", value: 304)
!58 = !DIEnumerator(name: "HTTP_BAD_REQUEST", value: 400)
!59 = !DIEnumerator(name: "HTTP_NOT_AUTHORIZED", value: 401)
!60 = !DIEnumerator(name: "HTTP_FORBIDDEN", value: 403)
!61 = !DIEnumerator(name: "HTTP_NOT_FOUND", value: 404)
!62 = !DIEnumerator(name: "HTTP_NOT_ALLOWED", value: 405)
!63 = !DIEnumerator(name: "HTTP_TIMEOUT", value: 408)
!64 = !DIEnumerator(name: "HTTP_TOO_LARGE", value: 413)
!65 = !DIEnumerator(name: "HTTP_RANGE_UNSATISFIABLE", value: 416)
!66 = !DIEnumerator(name: "HTTP_I_AM_A_TEAPOT", value: 418)
!67 = !DIEnumerator(name: "HTTP_INTERNAL_ERROR", value: 500)
!68 = !DIEnumerator(name: "HTTP_NOT_IMPLEMENTED", value: 501)
!69 = !DIEnumerator(name: "HTTP_UNAVAILABLE", value: 503)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !30, line: 167, baseType: !31, size: 32, elements: !71)
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "CONN_CORO_ABORT", value: -1)
!73 = !DIEnumerator(name: "CONN_CORO_MAY_RESUME", value: 0)
!74 = !DIEnumerator(name: "CONN_CORO_FINISHED", value: 1)
!75 = !{!76, !79, !80, !85, !87, !88, !91}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !81, line: 267, baseType: !82)
!81 = !DIFile(filename: "/usr/include/unistd.h", directory: "", checksumkind: CSK_MD5, checksum: "ed37c2e6f30ba31a8b41e4d70547c39c")
!82 = !DIDerivedType(tag: DW_TAG_typedef, name: "__intptr_t", file: !83, line: 207, baseType: !84)
!83 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!84 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 220, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_typedef, name: "__ssize_t", file: !83, line: 194, baseType: !84)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !89, line: 46, baseType: !90)
!89 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!90 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "off_t", file: !92, line: 56, baseType: !93)
!92 = !DIFile(filename: "/usr/include/fcntl.h", directory: "", checksumkind: CSK_MD5, checksum: "1a9bb91818c37dc7bc291ca6e49fc221")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__off_t", file: !83, line: 152, baseType: !84)
!94 = !{!95, !98, !0, !7, !13, !16, !21}
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression(DW_OP_constu, 5, DW_OP_stack_value))
!96 = distinct !DIGlobalVariable(name: "MAX_FAILED_TRIES", scope: !26, file: !2, line: 29, type: !97, isLocal: true, isDefinition: true)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!98 = !DIGlobalVariableExpression(var: !99, expr: !DIExpression(DW_OP_constu, 1400, DW_OP_stack_value))
!99 = distinct !DIGlobalVariable(name: "BUFFER_SIZE", scope: !26, file: !2, line: 30, type: !100, isLocal: true, isDefinition: true)
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !88)
!101 = !{i32 7, !"Dwarf Version", i32 5}
!102 = !{i32 2, !"Debug Info Version", i32 3}
!103 = !{i32 1, !"wchar_size", i32 4}
!104 = !{i32 8, !"PIC Level", i32 2}
!105 = !{i32 7, !"PIE Level", i32 2}
!106 = !{i32 7, !"uwtable", i32 2}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 16.0.0"}
!109 = distinct !DISubprogram(name: "lwan_openat", scope: !2, file: !2, line: 33, type: !110, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !275)
!110 = !DISubroutineType(types: !111)
!111 = !{!31, !112, !31, !255, !31}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_t", file: !30, line: 106, baseType: !114)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_request_t_", file: !30, line: 206, size: 1280, elements: !115)
!115 = !{!116, !118, !119, !125, !126, !219, !230, !231, !240}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !114, file: !30, line: 207, baseType: !117, size: 32)
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_request_flags_t", file: !30, line: 156, baseType: !29)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !114, file: !30, line: 208, baseType: !31, size: 32, offset: 32)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "url", scope: !114, file: !30, line: 209, baseType: !120, size: 128, offset: 64)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_value_t", file: !30, line: 110, baseType: !121)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_value_t_", file: !30, line: 191, size: 128, elements: !122)
!122 = !{!123, !124}
!123 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !121, file: !30, line: 192, baseType: !87, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !121, file: !30, line: 193, baseType: !88, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "original_url", scope: !114, file: !30, line: 210, baseType: !120, size: 128, offset: 192)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "conn", scope: !114, file: !30, line: 211, baseType: !127, size: 64, offset: 320)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_t", file: !30, line: 112, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_connection_t_", file: !30, line: 196, size: 256, elements: !130)
!130 = !{!131, !133, !134, !139, !217, !218}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !30, line: 199, baseType: !132, size: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_connection_flags_t", file: !30, line: 165, baseType: !43)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "time_to_die", scope: !129, file: !30, line: 200, baseType: !52, size: 32, offset: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "coro", scope: !129, file: !30, line: 201, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "coro_t", file: !137, line: 34, baseType: !138)
!137 = !DIFile(filename: "common/lwan-coro.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "34b7f40341e2e8a3481f0400ece0424e")
!138 = !DICompositeType(tag: DW_TAG_structure_type, name: "coro_t_", file: !137, line: 34, flags: DIFlagFwdDecl)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !129, file: !30, line: 202, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_thread_t", file: !30, line: 108, baseType: !142)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_thread_t_", file: !30, line: 253, size: 832, elements: !143)
!143 = !{!144, !197, !209, !210, !214}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "lwan", scope: !142, file: !30, line: 254, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_t", file: !30, line: 103, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_t_", file: !30, line: 275, size: 640, elements: !148)
!148 = !{!149, !173, !174, !181, !185, !196}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "url_map_trie", scope: !147, file: !30, line: 276, baseType: !150, size: 128)
!150 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_t", file: !151, line: 25, baseType: !152)
!151 = !DIFile(filename: "common/lwan-trie.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "ee6a35f9d72fff2f5550c3424937f5b6")
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_t_", file: !151, line: 41, size: 128, elements: !153)
!153 = !{!154, !172}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !152, file: !151, line: 42, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_node_t", file: !151, line: 26, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_node_t_", file: !151, line: 29, size: 640, elements: !158)
!158 = !{!159, !163, !171}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !151, line: 30, baseType: !160, size: 512)
!160 = !DICompositeType(tag: DW_TAG_array_type, baseType: !155, size: 512, elements: !161)
!161 = !{!162}
!162 = !DISubrange(count: 8)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "leaf", scope: !157, file: !151, line: 31, baseType: !164, size: 64, offset: 512)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_trie_leaf_t", file: !151, line: 27, baseType: !166)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_trie_leaf_t_", file: !151, line: 35, size: 192, elements: !167)
!167 = !{!168, !169, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !166, file: !151, line: 36, baseType: !87, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !166, file: !151, line: 37, baseType: !79, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !151, line: 38, baseType: !164, size: 64, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !157, file: !151, line: 32, baseType: !31, size: 32, offset: 576)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "free_node", scope: !152, file: !151, line: 43, baseType: !76, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "conns", scope: !147, file: !30, line: 277, baseType: !127, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !147, file: !30, line: 283, baseType: !175, size: 128, offset: 192)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !147, file: !30, line: 279, size: 128, elements: !176)
!176 = !{!177, !178, !179}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "threads", scope: !175, file: !30, line: 280, baseType: !140, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "max_fd", scope: !175, file: !30, line: 281, baseType: !52, size: 32, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !175, file: !30, line: 282, baseType: !180, size: 16, offset: 96)
!180 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "module_registry", scope: !147, file: !30, line: 285, baseType: !182, size: 64, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DICompositeType(tag: DW_TAG_structure_type, name: "hash", file: !184, line: 6, flags: DIFlagFwdDecl)
!184 = !DIFile(filename: "common/hash.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "8a7f0d7c578de44c7172c81fd9e8cd22")
!185 = !DIDerivedType(tag: DW_TAG_member, name: "config", scope: !147, file: !30, line: 286, baseType: !186, size: 192, offset: 384)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_config_t", file: !30, line: 111, baseType: !187)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_config_t_", file: !30, line: 266, size: 192, elements: !188)
!188 = !{!189, !190, !191, !193, !194, !195}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "listener", scope: !187, file: !30, line: 267, baseType: !87, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "keep_alive_timeout", scope: !187, file: !30, line: 268, baseType: !180, size: 16, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "quiet", scope: !187, file: !30, line: 269, baseType: !192, size: 8, offset: 80)
!192 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "reuse_port", scope: !187, file: !30, line: 270, baseType: !192, size: 8, offset: 88)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !187, file: !30, line: 271, baseType: !52, size: 32, offset: 96)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "n_threads", scope: !187, file: !30, line: 272, baseType: !180, size: 16, offset: 128)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "main_socket", scope: !147, file: !30, line: 287, baseType: !31, size: 32, offset: 576)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !142, file: !30, line: 259, baseType: !198, size: 576, offset: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !142, file: !30, line: 255, size: 576, elements: !199)
!199 = !{!200, !204, !205}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "date", scope: !198, file: !30, line: 256, baseType: !201, size: 240)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !202)
!202 = !{!203}
!203 = !DISubrange(count: 30)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !198, file: !30, line: 257, baseType: !201, size: 240, offset: 240)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !198, file: !30, line: 258, baseType: !206, size: 64, offset: 512)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "time_t", file: !207, line: 10, baseType: !208)
!207 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/time_t.h", directory: "", checksumkind: CSK_MD5, checksum: "5c299a4954617c88bb03645c7864e1b1")
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !83, line: 160, baseType: !84)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "epoll_fd", scope: !142, file: !30, line: 261, baseType: !31, size: 32, offset: 640)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pipe_fd", scope: !142, file: !30, line: 262, baseType: !211, size: 64, offset: 672)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !31, size: 64, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !142, file: !30, line: 263, baseType: !215, size: 64, offset: 768)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !216, line: 27, baseType: !90)
!216 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!217 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !30, line: 203, baseType: !31, size: 32, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !30, line: 203, baseType: !31, size: 32, offset: 224)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "query_params", scope: !114, file: !30, line: 216, baseType: !220, size: 128, offset: 384)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !30, line: 213, size: 128, elements: !221)
!221 = !{!222, !229}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !220, file: !30, line: 214, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_key_value_t", file: !30, line: 105, baseType: !225)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_key_value_t_", file: !30, line: 173, size: 128, elements: !226)
!226 = !{!227, !228}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !225, file: !30, line: 174, baseType: !87, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !225, file: !30, line: 175, baseType: !87, size: 64, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !220, file: !30, line: 215, baseType: !88, size: 64, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "post_data", scope: !114, file: !30, line: 216, baseType: !220, size: 128, offset: 512)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !114, file: !30, line: 223, baseType: !232, size: 192, offset: 640)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !114, file: !30, line: 217, size: 192, elements: !233)
!233 = !{!234, !235}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "if_modified_since", scope: !232, file: !30, line: 218, baseType: !206, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "range", scope: !232, file: !30, line: 222, baseType: !236, size: 128, offset: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !232, file: !30, line: 219, size: 128, elements: !237)
!237 = !{!238, !239}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "from", scope: !236, file: !30, line: 220, baseType: !91, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "to", scope: !236, file: !30, line: 221, baseType: !91, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "response", scope: !114, file: !30, line: 224, baseType: !241, size: 448, offset: 832)
!241 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_response_t", file: !30, line: 107, baseType: !242)
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lwan_response_t_", file: !30, line: 178, size: 448, elements: !243)
!243 = !{!244, !262, !263, !264, !265}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !242, file: !30, line: 179, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "strbuf_t", file: !247, line: 25, baseType: !248)
!247 = !DIFile(filename: "common/strbuf.h", directory: "/home/raj/lwan", checksumkind: CSK_MD5, checksum: "1033ae3716fb79c0aa99479d5ab6b6cd")
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "strbuf_t_", file: !247, line: 27, size: 256, elements: !249)
!249 = !{!250, !256, !261}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !248, file: !247, line: 31, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !248, file: !247, line: 28, size: 64, elements: !252)
!252 = !{!253, !254}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !251, file: !247, line: 29, baseType: !87, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "static_buffer", scope: !251, file: !247, line: 30, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !248, file: !247, line: 34, baseType: !257, size: 128, offset: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !248, file: !247, line: 32, size: 128, elements: !258)
!258 = !{!259, !260}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "allocated", scope: !257, file: !247, line: 33, baseType: !88, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !257, file: !247, line: 33, baseType: !88, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !248, file: !247, line: 35, baseType: !52, size: 32, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "mime_type", scope: !242, file: !30, line: 180, baseType: !255, size: 64, offset: 64)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "content_length", scope: !242, file: !30, line: 181, baseType: !88, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "headers", scope: !242, file: !30, line: 182, baseType: !223, size: 64, offset: 192)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "stream", scope: !242, file: !30, line: 188, baseType: !266, size: 192, offset: 256)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !242, file: !30, line: 184, size: 192, elements: !267)
!267 = !{!268, !273, !274}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !266, file: !30, line: 185, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DISubroutineType(types: !271)
!271 = !{!272, !112, !79}
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "lwan_http_status_t", file: !30, line: 131, baseType: !51)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !266, file: !30, line: 186, baseType: !79, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !266, file: !30, line: 187, baseType: !79, size: 64, offset: 128)
!275 = !{}
!276 = !DILocalVariable(name: "request", arg: 1, scope: !109, file: !2, line: 33, type: !112)
!277 = !DILocation(line: 33, column: 29, scope: !109)
!278 = !DILocalVariable(name: "dirfd", arg: 2, scope: !109, file: !2, line: 34, type: !31)
!279 = !DILocation(line: 34, column: 17, scope: !109)
!280 = !DILocalVariable(name: "pathname", arg: 3, scope: !109, file: !2, line: 34, type: !255)
!281 = !DILocation(line: 34, column: 36, scope: !109)
!282 = !DILocalVariable(name: "flags", arg: 4, scope: !109, file: !2, line: 34, type: !31)
!283 = !DILocation(line: 34, column: 50, scope: !109)
!284 = !DILocalVariable(name: "tries", scope: !285, file: !2, line: 36, type: !31)
!285 = distinct !DILexicalBlock(scope: !109, file: !2, line: 36, column: 5)
!286 = !DILocation(line: 36, column: 14, scope: !285)
!287 = !DILocation(line: 36, column: 10, scope: !285)
!288 = !DILocation(line: 36, column: 40, scope: !289)
!289 = distinct !DILexicalBlock(scope: !285, file: !2, line: 36, column: 5)
!290 = !DILocation(line: 36, column: 5, scope: !285)
!291 = !DILocalVariable(name: "fd", scope: !292, file: !2, line: 37, type: !31)
!292 = distinct !DILexicalBlock(scope: !289, file: !2, line: 36, column: 56)
!293 = !DILocation(line: 37, column: 13, scope: !292)
!294 = !DILocation(line: 37, column: 25, scope: !292)
!295 = !DILocation(line: 37, column: 32, scope: !292)
!296 = !DILocation(line: 37, column: 42, scope: !292)
!297 = !DILocation(line: 37, column: 18, scope: !292)
!298 = !DILocation(line: 38, column: 13, scope: !299)
!299 = distinct !DILexicalBlock(scope: !292, file: !2, line: 38, column: 13)
!300 = !DILocation(line: 38, column: 13, scope: !292)
!301 = !DILocation(line: 39, column: 24, scope: !302)
!302 = distinct !DILexicalBlock(scope: !299, file: !2, line: 38, column: 30)
!303 = !DILocation(line: 39, column: 33, scope: !302)
!304 = !DILocation(line: 39, column: 39, scope: !302)
!305 = !DILocation(line: 39, column: 82, scope: !302)
!306 = !DILocation(line: 39, column: 72, scope: !302)
!307 = !DILocation(line: 39, column: 64, scope: !302)
!308 = !DILocation(line: 39, column: 13, scope: !302)
!309 = !DILocation(line: 40, column: 20, scope: !302)
!310 = !DILocation(line: 40, column: 13, scope: !302)
!311 = !DILocation(line: 43, column: 17, scope: !292)
!312 = !DILocation(line: 43, column: 9, scope: !292)
!313 = !DILocation(line: 48, column: 24, scope: !314)
!314 = distinct !DILexicalBlock(scope: !292, file: !2, line: 43, column: 24)
!315 = !DILocation(line: 48, column: 33, scope: !314)
!316 = !DILocation(line: 48, column: 39, scope: !314)
!317 = !DILocation(line: 48, column: 13, scope: !314)
!318 = !DILocation(line: 49, column: 13, scope: !314)
!319 = !DILocation(line: 51, column: 21, scope: !314)
!320 = !DILocation(line: 51, column: 20, scope: !314)
!321 = !DILocation(line: 51, column: 13, scope: !314)
!322 = !DILocation(line: 53, column: 5, scope: !292)
!323 = !DILocation(line: 36, column: 52, scope: !289)
!324 = !DILocation(line: 36, column: 5, scope: !289)
!325 = distinct !{!325, !290, !326, !327}
!326 = !DILocation(line: 53, column: 5, scope: !285)
!327 = !{!"llvm.loop.mustprogress"}
!328 = !DILocation(line: 55, column: 5, scope: !109)
!329 = !DILocation(line: 56, column: 1, scope: !109)
!330 = distinct !DISubprogram(name: "lwan_writev", scope: !2, file: !2, line: 59, type: !331, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !275)
!331 = !DISubroutineType(types: !332)
!332 = !{!85, !112, !333, !31}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "iovec", file: !335, line: 26, size: 128, elements: !336)
!335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types/struct_iovec.h", directory: "", checksumkind: CSK_MD5, checksum: "906dd4c9f8205bfe8a00a7ac49f298dc")
!336 = !{!337, !338}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !334, file: !335, line: 28, baseType: !79, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !334, file: !335, line: 29, baseType: !88, size: 64, offset: 64)
!339 = !DILocalVariable(name: "request", arg: 1, scope: !330, file: !2, line: 59, type: !112)
!340 = !DILocation(line: 59, column: 29, scope: !330)
!341 = !DILocalVariable(name: "iov", arg: 2, scope: !330, file: !2, line: 59, type: !333)
!342 = !DILocation(line: 59, column: 52, scope: !330)
!343 = !DILocalVariable(name: "iov_count", arg: 3, scope: !330, file: !2, line: 59, type: !31)
!344 = !DILocation(line: 59, column: 61, scope: !330)
!345 = !DILocalVariable(name: "total_written", scope: !330, file: !2, line: 61, type: !85)
!346 = !DILocation(line: 61, column: 13, scope: !330)
!347 = !DILocalVariable(name: "curr_iov", scope: !330, file: !2, line: 62, type: !31)
!348 = !DILocation(line: 62, column: 9, scope: !330)
!349 = !DILocalVariable(name: "tries", scope: !350, file: !2, line: 64, type: !31)
!350 = distinct !DILexicalBlock(scope: !330, file: !2, line: 64, column: 5)
!351 = !DILocation(line: 64, column: 14, scope: !350)
!352 = !DILocation(line: 64, column: 10, scope: !350)
!353 = !DILocation(line: 64, column: 40, scope: !354)
!354 = distinct !DILexicalBlock(scope: !350, file: !2, line: 64, column: 5)
!355 = !DILocation(line: 64, column: 5, scope: !350)
!356 = !DILocalVariable(name: "written", scope: !357, file: !2, line: 65, type: !85)
!357 = distinct !DILexicalBlock(scope: !354, file: !2, line: 64, column: 48)
!358 = !DILocation(line: 65, column: 17, scope: !357)
!359 = !DILocation(line: 65, column: 34, scope: !357)
!360 = !DILocation(line: 65, column: 43, scope: !357)
!361 = !DILocation(line: 65, column: 47, scope: !357)
!362 = !DILocation(line: 65, column: 53, scope: !357)
!363 = !DILocation(line: 65, column: 51, scope: !357)
!364 = !DILocation(line: 65, column: 63, scope: !357)
!365 = !DILocation(line: 65, column: 75, scope: !357)
!366 = !DILocation(line: 65, column: 73, scope: !357)
!367 = !DILocation(line: 65, column: 27, scope: !357)
!368 = !DILocation(line: 66, column: 13, scope: !369)
!369 = distinct !DILexicalBlock(scope: !357, file: !2, line: 66, column: 13)
!370 = !DILocation(line: 66, column: 13, scope: !357)
!371 = !DILocation(line: 68, column: 18, scope: !372)
!372 = distinct !DILexicalBlock(scope: !369, file: !2, line: 66, column: 36)
!373 = !DILocation(line: 70, column: 21, scope: !372)
!374 = !DILocation(line: 70, column: 13, scope: !372)
!375 = !DILocation(line: 73, column: 17, scope: !376)
!376 = distinct !DILexicalBlock(scope: !372, file: !2, line: 70, column: 28)
!377 = !DILocation(line: 75, column: 17, scope: !376)
!378 = !DILocation(line: 79, column: 26, scope: !357)
!379 = !DILocation(line: 79, column: 23, scope: !357)
!380 = !DILocation(line: 81, column: 9, scope: !357)
!381 = !DILocation(line: 81, column: 16, scope: !357)
!382 = !DILocation(line: 81, column: 27, scope: !357)
!383 = !DILocation(line: 81, column: 25, scope: !357)
!384 = !DILocation(line: 81, column: 37, scope: !357)
!385 = !DILocation(line: 81, column: 40, scope: !357)
!386 = !DILocation(line: 81, column: 60, scope: !357)
!387 = !DILocation(line: 81, column: 64, scope: !357)
!388 = !DILocation(line: 81, column: 74, scope: !357)
!389 = !DILocation(line: 81, column: 48, scope: !357)
!390 = !DILocation(line: 0, scope: !357)
!391 = !DILocation(line: 82, column: 33, scope: !392)
!392 = distinct !DILexicalBlock(scope: !357, file: !2, line: 81, column: 83)
!393 = !DILocation(line: 82, column: 37, scope: !392)
!394 = !DILocation(line: 82, column: 47, scope: !392)
!395 = !DILocation(line: 82, column: 21, scope: !392)
!396 = !DILocation(line: 83, column: 21, scope: !392)
!397 = distinct !{!397, !380, !398, !327}
!398 = !DILocation(line: 84, column: 9, scope: !357)
!399 = !DILocation(line: 86, column: 13, scope: !400)
!400 = distinct !DILexicalBlock(scope: !357, file: !2, line: 86, column: 13)
!401 = !DILocation(line: 86, column: 25, scope: !400)
!402 = !DILocation(line: 86, column: 22, scope: !400)
!403 = !DILocation(line: 86, column: 13, scope: !357)
!404 = !DILocation(line: 87, column: 20, scope: !400)
!405 = !DILocation(line: 87, column: 13, scope: !400)
!406 = !DILocation(line: 89, column: 42, scope: !357)
!407 = !DILocation(line: 89, column: 46, scope: !357)
!408 = !DILocation(line: 89, column: 56, scope: !357)
!409 = !DILocation(line: 89, column: 67, scope: !357)
!410 = !DILocation(line: 89, column: 65, scope: !357)
!411 = !DILocation(line: 89, column: 9, scope: !357)
!412 = !DILocation(line: 89, column: 13, scope: !357)
!413 = !DILocation(line: 89, column: 23, scope: !357)
!414 = !DILocation(line: 89, column: 32, scope: !357)
!415 = !DILocation(line: 90, column: 42, scope: !357)
!416 = !DILocation(line: 90, column: 9, scope: !357)
!417 = !DILocation(line: 90, column: 13, scope: !357)
!418 = !DILocation(line: 90, column: 23, scope: !357)
!419 = !DILocation(line: 90, column: 31, scope: !357)
!420 = !DILabel(scope: !357, name: "try_again", file: !2, line: 92)
!421 = !DILocation(line: 92, column: 1, scope: !357)
!422 = !DILocation(line: 93, column: 20, scope: !357)
!423 = !DILocation(line: 93, column: 29, scope: !357)
!424 = !DILocation(line: 93, column: 35, scope: !357)
!425 = !DILocation(line: 93, column: 9, scope: !357)
!426 = !DILocation(line: 64, column: 5, scope: !354)
!427 = distinct !{!427, !355, !428, !327}
!428 = !DILocation(line: 94, column: 5, scope: !350)
!429 = !DILabel(scope: !330, name: "out", file: !2, line: 96)
!430 = !DILocation(line: 96, column: 1, scope: !330)
!431 = !DILocation(line: 97, column: 16, scope: !330)
!432 = !DILocation(line: 97, column: 25, scope: !330)
!433 = !DILocation(line: 97, column: 31, scope: !330)
!434 = !DILocation(line: 97, column: 5, scope: !330)
!435 = !DILocation(line: 98, column: 5, scope: !330)
!436 = distinct !DISubprogram(name: "lwan_write", scope: !2, file: !2, line: 102, type: !437, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !275)
!437 = !DISubroutineType(types: !438)
!438 = !{!85, !112, !439, !88}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!441 = !DILocalVariable(name: "request", arg: 1, scope: !436, file: !2, line: 102, type: !112)
!442 = !DILocation(line: 102, column: 28, scope: !436)
!443 = !DILocalVariable(name: "buf", arg: 2, scope: !436, file: !2, line: 102, type: !439)
!444 = !DILocation(line: 102, column: 49, scope: !436)
!445 = !DILocalVariable(name: "count", arg: 3, scope: !436, file: !2, line: 102, type: !88)
!446 = !DILocation(line: 102, column: 61, scope: !436)
!447 = !DILocalVariable(name: "total_written", scope: !436, file: !2, line: 104, type: !85)
!448 = !DILocation(line: 104, column: 13, scope: !436)
!449 = !DILocalVariable(name: "tries", scope: !450, file: !2, line: 106, type: !31)
!450 = distinct !DILexicalBlock(scope: !436, file: !2, line: 106, column: 5)
!451 = !DILocation(line: 106, column: 14, scope: !450)
!452 = !DILocation(line: 106, column: 10, scope: !450)
!453 = !DILocation(line: 106, column: 40, scope: !454)
!454 = distinct !DILexicalBlock(scope: !450, file: !2, line: 106, column: 5)
!455 = !DILocation(line: 106, column: 5, scope: !450)
!456 = !DILocalVariable(name: "written", scope: !457, file: !2, line: 107, type: !85)
!457 = distinct !DILexicalBlock(scope: !454, file: !2, line: 106, column: 48)
!458 = !DILocation(line: 107, column: 17, scope: !457)
!459 = !DILocation(line: 107, column: 33, scope: !457)
!460 = !DILocation(line: 107, column: 42, scope: !457)
!461 = !DILocation(line: 107, column: 46, scope: !457)
!462 = !DILocation(line: 107, column: 51, scope: !457)
!463 = !DILocation(line: 107, column: 27, scope: !457)
!464 = !DILocation(line: 108, column: 13, scope: !465)
!465 = distinct !DILexicalBlock(scope: !457, file: !2, line: 108, column: 13)
!466 = !DILocation(line: 108, column: 13, scope: !457)
!467 = !DILocation(line: 109, column: 18, scope: !468)
!468 = distinct !DILexicalBlock(scope: !465, file: !2, line: 108, column: 36)
!469 = !DILocation(line: 111, column: 21, scope: !468)
!470 = !DILocation(line: 111, column: 13, scope: !468)
!471 = !DILocation(line: 114, column: 17, scope: !472)
!472 = distinct !DILexicalBlock(scope: !468, file: !2, line: 111, column: 28)
!473 = !DILocation(line: 116, column: 17, scope: !472)
!474 = !DILocation(line: 120, column: 26, scope: !457)
!475 = !DILocation(line: 120, column: 23, scope: !457)
!476 = !DILocation(line: 121, column: 21, scope: !477)
!477 = distinct !DILexicalBlock(scope: !457, file: !2, line: 121, column: 13)
!478 = !DILocation(line: 121, column: 38, scope: !477)
!479 = !DILocation(line: 121, column: 35, scope: !477)
!480 = !DILocation(line: 121, column: 13, scope: !457)
!481 = !DILocation(line: 122, column: 20, scope: !477)
!482 = !DILocation(line: 122, column: 13, scope: !477)
!483 = !DILocation(line: 123, column: 21, scope: !484)
!484 = distinct !DILexicalBlock(scope: !457, file: !2, line: 123, column: 13)
!485 = !DILocation(line: 123, column: 37, scope: !484)
!486 = !DILocation(line: 123, column: 35, scope: !484)
!487 = !DILocation(line: 123, column: 13, scope: !457)
!488 = !DILocation(line: 124, column: 27, scope: !484)
!489 = !DILocation(line: 124, column: 33, scope: !484)
!490 = !DILocation(line: 124, column: 31, scope: !484)
!491 = !DILocation(line: 124, column: 17, scope: !484)
!492 = !DILocation(line: 124, column: 13, scope: !484)
!493 = !DILabel(scope: !457, name: "try_again", file: !2, line: 126)
!494 = !DILocation(line: 126, column: 1, scope: !457)
!495 = !DILocation(line: 127, column: 20, scope: !457)
!496 = !DILocation(line: 127, column: 29, scope: !457)
!497 = !DILocation(line: 127, column: 35, scope: !457)
!498 = !DILocation(line: 127, column: 9, scope: !457)
!499 = !DILocation(line: 106, column: 5, scope: !454)
!500 = distinct !{!500, !455, !501, !327}
!501 = !DILocation(line: 128, column: 5, scope: !450)
!502 = !DILabel(scope: !436, name: "out", file: !2, line: 130)
!503 = !DILocation(line: 130, column: 1, scope: !436)
!504 = !DILocation(line: 131, column: 16, scope: !436)
!505 = !DILocation(line: 131, column: 25, scope: !436)
!506 = !DILocation(line: 131, column: 31, scope: !436)
!507 = !DILocation(line: 131, column: 5, scope: !436)
!508 = !DILocation(line: 132, column: 5, scope: !436)
!509 = distinct !DISubprogram(name: "lwan_send", scope: !2, file: !2, line: 136, type: !510, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !275)
!510 = !DISubroutineType(types: !511)
!511 = !{!85, !112, !439, !88, !31}
!512 = !DILocalVariable(name: "request", arg: 1, scope: !509, file: !2, line: 136, type: !112)
!513 = !DILocation(line: 136, column: 27, scope: !509)
!514 = !DILocalVariable(name: "buf", arg: 2, scope: !509, file: !2, line: 136, type: !439)
!515 = !DILocation(line: 136, column: 48, scope: !509)
!516 = !DILocalVariable(name: "count", arg: 3, scope: !509, file: !2, line: 136, type: !88)
!517 = !DILocation(line: 136, column: 60, scope: !509)
!518 = !DILocalVariable(name: "flags", arg: 4, scope: !509, file: !2, line: 136, type: !31)
!519 = !DILocation(line: 136, column: 71, scope: !509)
!520 = !DILocalVariable(name: "total_sent", scope: !509, file: !2, line: 138, type: !85)
!521 = !DILocation(line: 138, column: 13, scope: !509)
!522 = !DILocalVariable(name: "tries", scope: !523, file: !2, line: 140, type: !31)
!523 = distinct !DILexicalBlock(scope: !509, file: !2, line: 140, column: 5)
!524 = !DILocation(line: 140, column: 14, scope: !523)
!525 = !DILocation(line: 140, column: 10, scope: !523)
!526 = !DILocation(line: 140, column: 40, scope: !527)
!527 = distinct !DILexicalBlock(scope: !523, file: !2, line: 140, column: 5)
!528 = !DILocation(line: 140, column: 5, scope: !523)
!529 = !DILocalVariable(name: "written", scope: !530, file: !2, line: 141, type: !85)
!530 = distinct !DILexicalBlock(scope: !527, file: !2, line: 140, column: 48)
!531 = !DILocation(line: 141, column: 17, scope: !530)
!532 = !DILocation(line: 141, column: 32, scope: !530)
!533 = !DILocation(line: 141, column: 41, scope: !530)
!534 = !DILocation(line: 141, column: 45, scope: !530)
!535 = !DILocation(line: 141, column: 50, scope: !530)
!536 = !DILocation(line: 141, column: 57, scope: !530)
!537 = !DILocation(line: 141, column: 27, scope: !530)
!538 = !DILocation(line: 142, column: 13, scope: !539)
!539 = distinct !DILexicalBlock(scope: !530, file: !2, line: 142, column: 13)
!540 = !DILocation(line: 142, column: 13, scope: !530)
!541 = !DILocation(line: 143, column: 18, scope: !542)
!542 = distinct !DILexicalBlock(scope: !539, file: !2, line: 142, column: 36)
!543 = !DILocation(line: 145, column: 21, scope: !542)
!544 = !DILocation(line: 145, column: 13, scope: !542)
!545 = !DILocation(line: 148, column: 17, scope: !546)
!546 = distinct !DILexicalBlock(scope: !542, file: !2, line: 145, column: 28)
!547 = !DILocation(line: 150, column: 17, scope: !546)
!548 = !DILocation(line: 154, column: 23, scope: !530)
!549 = !DILocation(line: 154, column: 20, scope: !530)
!550 = !DILocation(line: 155, column: 21, scope: !551)
!551 = distinct !DILexicalBlock(scope: !530, file: !2, line: 155, column: 13)
!552 = !DILocation(line: 155, column: 35, scope: !551)
!553 = !DILocation(line: 155, column: 32, scope: !551)
!554 = !DILocation(line: 155, column: 13, scope: !530)
!555 = !DILocation(line: 156, column: 20, scope: !551)
!556 = !DILocation(line: 156, column: 13, scope: !551)
!557 = !DILocation(line: 157, column: 21, scope: !558)
!558 = distinct !DILexicalBlock(scope: !530, file: !2, line: 157, column: 13)
!559 = !DILocation(line: 157, column: 34, scope: !558)
!560 = !DILocation(line: 157, column: 32, scope: !558)
!561 = !DILocation(line: 157, column: 13, scope: !530)
!562 = !DILocation(line: 158, column: 27, scope: !558)
!563 = !DILocation(line: 158, column: 33, scope: !558)
!564 = !DILocation(line: 158, column: 31, scope: !558)
!565 = !DILocation(line: 158, column: 17, scope: !558)
!566 = !DILocation(line: 158, column: 13, scope: !558)
!567 = !DILabel(scope: !530, name: "try_again", file: !2, line: 160)
!568 = !DILocation(line: 160, column: 1, scope: !530)
!569 = !DILocation(line: 161, column: 20, scope: !530)
!570 = !DILocation(line: 161, column: 29, scope: !530)
!571 = !DILocation(line: 161, column: 35, scope: !530)
!572 = !DILocation(line: 161, column: 9, scope: !530)
!573 = !DILocation(line: 140, column: 5, scope: !527)
!574 = distinct !{!574, !528, !575, !327}
!575 = !DILocation(line: 162, column: 5, scope: !523)
!576 = !DILabel(scope: !509, name: "out", file: !2, line: 164)
!577 = !DILocation(line: 164, column: 1, scope: !509)
!578 = !DILocation(line: 165, column: 16, scope: !509)
!579 = !DILocation(line: 165, column: 25, scope: !509)
!580 = !DILocation(line: 165, column: 31, scope: !509)
!581 = !DILocation(line: 165, column: 5, scope: !509)
!582 = !DILocation(line: 166, column: 5, scope: !509)
!583 = distinct !DISubprogram(name: "lwan_sendfile", scope: !2, file: !2, line: 235, type: !584, scopeLine: 236, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !275)
!584 = !DISubroutineType(types: !585)
!585 = !{!85, !112, !31, !91, !88}
!586 = !DILocalVariable(name: "request", arg: 1, scope: !583, file: !2, line: 235, type: !112)
!587 = !DILocation(line: 235, column: 31, scope: !583)
!588 = !DILocalVariable(name: "in_fd", arg: 2, scope: !583, file: !2, line: 235, type: !31)
!589 = !DILocation(line: 235, column: 44, scope: !583)
!590 = !DILocalVariable(name: "offset", arg: 3, scope: !583, file: !2, line: 235, type: !91)
!591 = !DILocation(line: 235, column: 57, scope: !583)
!592 = !DILocalVariable(name: "count", arg: 4, scope: !583, file: !2, line: 235, type: !88)
!593 = !DILocation(line: 235, column: 72, scope: !583)
!594 = !DILocation(line: 237, column: 9, scope: !595)
!595 = distinct !DILexicalBlock(scope: !583, file: !2, line: 237, column: 9)
!596 = !DILocation(line: 237, column: 15, scope: !595)
!597 = !DILocation(line: 237, column: 9, scope: !583)
!598 = !DILocation(line: 238, column: 13, scope: !599)
!599 = distinct !DILexicalBlock(scope: !600, file: !2, line: 238, column: 13)
!600 = distinct !DILexicalBlock(scope: !595, file: !2, line: 237, column: 34)
!601 = !DILocation(line: 238, column: 13, scope: !600)
!602 = !DILocation(line: 240, column: 13, scope: !599)
!603 = !DILocation(line: 241, column: 5, scope: !600)
!604 = !DILocalVariable(name: "written_bytes", scope: !583, file: !2, line: 243, type: !85)
!605 = !DILocation(line: 243, column: 13, scope: !583)
!606 = !DILocation(line: 244, column: 4, scope: !583)
!607 = !DILocation(line: 244, column: 13, scope: !583)
!608 = !DILocation(line: 244, column: 19, scope: !583)
!609 = !DILocation(line: 244, column: 25, scope: !583)
!610 = !DILocation(line: 244, column: 32, scope: !583)
!611 = !DILocation(line: 244, column: 41, scope: !583)
!612 = !DILocation(line: 244, column: 45, scope: !583)
!613 = !DILocation(line: 244, column: 53, scope: !583)
!614 = !DILocalVariable(name: "coro", arg: 1, scope: !615, file: !2, line: 205, type: !135)
!615 = distinct !DISubprogram(name: "sendfile_linux_sendfile", scope: !2, file: !2, line: 205, type: !616, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !275)
!616 = !DISubroutineType(types: !617)
!617 = !{!85, !135, !31, !31, !91, !88}
!618 = !DILocation(line: 205, column: 33, scope: !615, inlinedAt: !619)
!619 = distinct !DILocation(line: 243, column: 29, scope: !583)
!620 = !DILocalVariable(name: "in_fd", arg: 2, scope: !615, file: !2, line: 205, type: !31)
!621 = !DILocation(line: 205, column: 43, scope: !615, inlinedAt: !619)
!622 = !DILocalVariable(name: "out_fd", arg: 3, scope: !615, file: !2, line: 205, type: !31)
!623 = !DILocation(line: 205, column: 54, scope: !615, inlinedAt: !619)
!624 = !DILocalVariable(name: "offset", arg: 4, scope: !615, file: !2, line: 205, type: !91)
!625 = !DILocation(line: 205, column: 68, scope: !615, inlinedAt: !619)
!626 = !DILocalVariable(name: "count", arg: 5, scope: !615, file: !2, line: 205, type: !88)
!627 = !DILocation(line: 205, column: 83, scope: !615, inlinedAt: !619)
!628 = !DILocalVariable(name: "total_written", scope: !615, file: !2, line: 207, type: !88)
!629 = !DILocation(line: 207, column: 12, scope: !615, inlinedAt: !619)
!630 = !DILocalVariable(name: "to_be_written", scope: !615, file: !2, line: 208, type: !88)
!631 = !DILocation(line: 208, column: 12, scope: !615, inlinedAt: !619)
!632 = !DILocation(line: 208, column: 28, scope: !615, inlinedAt: !619)
!633 = !DILocation(line: 210, column: 5, scope: !615, inlinedAt: !619)
!634 = !DILocalVariable(name: "written", scope: !635, file: !2, line: 211, type: !85)
!635 = distinct !DILexicalBlock(scope: !615, file: !2, line: 210, column: 8)
!636 = !DILocation(line: 211, column: 17, scope: !635, inlinedAt: !619)
!637 = !DILocation(line: 211, column: 36, scope: !635, inlinedAt: !619)
!638 = !DILocation(line: 211, column: 44, scope: !635, inlinedAt: !619)
!639 = !DILocation(line: 211, column: 60, scope: !635, inlinedAt: !619)
!640 = !DILocation(line: 211, column: 27, scope: !635, inlinedAt: !619)
!641 = !DILocation(line: 212, column: 13, scope: !642, inlinedAt: !619)
!642 = distinct !DILexicalBlock(scope: !635, file: !2, line: 212, column: 13)
!643 = !DILocation(line: 212, column: 21, scope: !642, inlinedAt: !619)
!644 = !DILocation(line: 212, column: 13, scope: !635, inlinedAt: !619)
!645 = !DILocation(line: 213, column: 21, scope: !646, inlinedAt: !619)
!646 = distinct !DILexicalBlock(scope: !642, file: !2, line: 212, column: 26)
!647 = !DILocation(line: 213, column: 13, scope: !646, inlinedAt: !619)
!648 = !DILocation(line: 216, column: 28, scope: !649, inlinedAt: !619)
!649 = distinct !DILexicalBlock(scope: !646, file: !2, line: 213, column: 28)
!650 = !DILocation(line: 216, column: 17, scope: !649, inlinedAt: !619)
!651 = !DILocation(line: 217, column: 17, scope: !649, inlinedAt: !619)
!652 = !DILocation(line: 220, column: 28, scope: !649, inlinedAt: !619)
!653 = !DILocation(line: 220, column: 17, scope: !649, inlinedAt: !619)
!654 = !DILocation(line: 221, column: 17, scope: !649, inlinedAt: !619)
!655 = !DILocation(line: 225, column: 34, scope: !635, inlinedAt: !619)
!656 = !DILocation(line: 225, column: 23, scope: !635, inlinedAt: !619)
!657 = !DILocation(line: 226, column: 34, scope: !635, inlinedAt: !619)
!658 = !DILocation(line: 226, column: 23, scope: !635, inlinedAt: !619)
!659 = !DILocation(line: 228, column: 20, scope: !635, inlinedAt: !619)
!660 = !DILocation(line: 228, column: 9, scope: !635, inlinedAt: !619)
!661 = !DILocation(line: 229, column: 5, scope: !635, inlinedAt: !619)
!662 = !DILocation(line: 229, column: 14, scope: !615, inlinedAt: !619)
!663 = !DILocation(line: 229, column: 28, scope: !615, inlinedAt: !619)
!664 = distinct !{!664, !633, !665, !327}
!665 = !DILocation(line: 229, column: 31, scope: !615, inlinedAt: !619)
!666 = !DILocation(line: 231, column: 21, scope: !615, inlinedAt: !619)
!667 = !DILocation(line: 246, column: 9, scope: !668)
!668 = distinct !DILexicalBlock(scope: !583, file: !2, line: 246, column: 9)
!669 = !DILocation(line: 246, column: 9, scope: !583)
!670 = !DILocation(line: 247, column: 17, scope: !671)
!671 = distinct !DILexicalBlock(scope: !668, file: !2, line: 246, column: 38)
!672 = !DILocation(line: 247, column: 9, scope: !671)
!673 = !DILocation(line: 250, column: 40, scope: !674)
!674 = distinct !DILexicalBlock(scope: !671, file: !2, line: 247, column: 24)
!675 = !DILocation(line: 250, column: 49, scope: !674)
!676 = !DILocation(line: 250, column: 55, scope: !674)
!677 = !DILocation(line: 250, column: 61, scope: !674)
!678 = !DILocation(line: 250, column: 68, scope: !674)
!679 = !DILocation(line: 250, column: 77, scope: !674)
!680 = !DILocation(line: 250, column: 81, scope: !674)
!681 = !DILocation(line: 250, column: 89, scope: !674)
!682 = !DILocalVariable(name: "coro", arg: 1, scope: !683, file: !2, line: 170, type: !135)
!683 = distinct !DISubprogram(name: "sendfile_read_write", scope: !2, file: !2, line: 170, type: !616, scopeLine: 171, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !26, retainedNodes: !275)
!684 = !DILocation(line: 170, column: 29, scope: !683, inlinedAt: !685)
!685 = distinct !DILocation(line: 250, column: 20, scope: !674)
!686 = !DILocalVariable(name: "in_fd", arg: 2, scope: !683, file: !2, line: 170, type: !31)
!687 = !DILocation(line: 170, column: 39, scope: !683, inlinedAt: !685)
!688 = !DILocalVariable(name: "out_fd", arg: 3, scope: !683, file: !2, line: 170, type: !31)
!689 = !DILocation(line: 170, column: 50, scope: !683, inlinedAt: !685)
!690 = !DILocalVariable(name: "offset", arg: 4, scope: !683, file: !2, line: 170, type: !91)
!691 = !DILocation(line: 170, column: 64, scope: !683, inlinedAt: !685)
!692 = !DILocalVariable(name: "count", arg: 5, scope: !683, file: !2, line: 170, type: !88)
!693 = !DILocation(line: 170, column: 79, scope: !683, inlinedAt: !685)
!694 = !DILocalVariable(name: "total_bytes_written", scope: !683, file: !2, line: 173, type: !85)
!695 = !DILocation(line: 173, column: 13, scope: !683, inlinedAt: !685)
!696 = !DILocalVariable(name: "buffer", scope: !683, file: !2, line: 176, type: !87)
!697 = !DILocation(line: 176, column: 11, scope: !683, inlinedAt: !685)
!698 = !DILocation(line: 176, column: 32, scope: !683, inlinedAt: !685)
!699 = !DILocation(line: 176, column: 20, scope: !683, inlinedAt: !685)
!700 = !DILocation(line: 178, column: 9, scope: !701, inlinedAt: !685)
!701 = distinct !DILexicalBlock(scope: !683, file: !2, line: 178, column: 9)
!702 = !DILocation(line: 178, column: 16, scope: !701, inlinedAt: !685)
!703 = !DILocation(line: 178, column: 25, scope: !701, inlinedAt: !685)
!704 = !DILocation(line: 178, column: 32, scope: !701, inlinedAt: !685)
!705 = !DILocation(line: 178, column: 19, scope: !701, inlinedAt: !685)
!706 = !DILocation(line: 178, column: 50, scope: !701, inlinedAt: !685)
!707 = !DILocation(line: 178, column: 9, scope: !683, inlinedAt: !685)
!708 = !DILocation(line: 179, column: 9, scope: !709, inlinedAt: !685)
!709 = distinct !DILexicalBlock(scope: !701, file: !2, line: 178, column: 55)
!710 = !DILocation(line: 180, column: 9, scope: !709, inlinedAt: !685)
!711 = !DILocation(line: 183, column: 5, scope: !683, inlinedAt: !685)
!712 = !DILocation(line: 183, column: 12, scope: !683, inlinedAt: !685)
!713 = !DILocation(line: 183, column: 18, scope: !683, inlinedAt: !685)
!714 = !DILocalVariable(name: "read_bytes", scope: !715, file: !2, line: 184, type: !85)
!715 = distinct !DILexicalBlock(scope: !683, file: !2, line: 183, column: 23)
!716 = !DILocation(line: 184, column: 17, scope: !715, inlinedAt: !685)
!717 = !DILocation(line: 184, column: 35, scope: !715, inlinedAt: !685)
!718 = !DILocation(line: 184, column: 42, scope: !715, inlinedAt: !685)
!719 = !DILocation(line: 184, column: 30, scope: !715, inlinedAt: !685)
!720 = !DILocation(line: 185, column: 13, scope: !721, inlinedAt: !685)
!721 = distinct !DILexicalBlock(scope: !715, file: !2, line: 185, column: 13)
!722 = !DILocation(line: 185, column: 24, scope: !721, inlinedAt: !685)
!723 = !DILocation(line: 185, column: 13, scope: !715, inlinedAt: !685)
!724 = !DILocation(line: 186, column: 24, scope: !725, inlinedAt: !685)
!725 = distinct !DILexicalBlock(scope: !721, file: !2, line: 185, column: 29)
!726 = !DILocation(line: 186, column: 13, scope: !725, inlinedAt: !685)
!727 = !DILocation(line: 187, column: 13, scope: !725, inlinedAt: !685)
!728 = !DILocalVariable(name: "bytes_written", scope: !715, file: !2, line: 190, type: !85)
!729 = !DILocation(line: 190, column: 17, scope: !715, inlinedAt: !685)
!730 = !DILocation(line: 190, column: 39, scope: !715, inlinedAt: !685)
!731 = !DILocation(line: 190, column: 47, scope: !715, inlinedAt: !685)
!732 = !DILocation(line: 190, column: 63, scope: !715, inlinedAt: !685)
!733 = !DILocation(line: 190, column: 33, scope: !715, inlinedAt: !685)
!734 = !DILocation(line: 191, column: 13, scope: !735, inlinedAt: !685)
!735 = distinct !DILexicalBlock(scope: !715, file: !2, line: 191, column: 13)
!736 = !DILocation(line: 191, column: 27, scope: !735, inlinedAt: !685)
!737 = !DILocation(line: 191, column: 13, scope: !715, inlinedAt: !685)
!738 = !DILocation(line: 192, column: 24, scope: !739, inlinedAt: !685)
!739 = distinct !DILexicalBlock(scope: !735, file: !2, line: 191, column: 32)
!740 = !DILocation(line: 192, column: 13, scope: !739, inlinedAt: !685)
!741 = !DILocation(line: 193, column: 13, scope: !739, inlinedAt: !685)
!742 = !DILocation(line: 196, column: 32, scope: !715, inlinedAt: !685)
!743 = !DILocation(line: 196, column: 29, scope: !715, inlinedAt: !685)
!744 = !DILocation(line: 197, column: 26, scope: !715, inlinedAt: !685)
!745 = !DILocation(line: 197, column: 15, scope: !715, inlinedAt: !685)
!746 = !DILocation(line: 198, column: 20, scope: !715, inlinedAt: !685)
!747 = !DILocation(line: 198, column: 9, scope: !715, inlinedAt: !685)
!748 = distinct !{!748, !711, !749, !327}
!749 = !DILocation(line: 199, column: 5, scope: !683, inlinedAt: !685)
!750 = !DILocation(line: 201, column: 12, scope: !683, inlinedAt: !685)
!751 = !DILocation(line: 201, column: 5, scope: !683, inlinedAt: !685)
!752 = !DILocation(line: 202, column: 1, scope: !683, inlinedAt: !685)
!753 = !DILocation(line: 250, column: 13, scope: !674)
!754 = !DILocation(line: 252, column: 5, scope: !671)
!755 = !DILocation(line: 253, column: 12, scope: !583)
!756 = !DILocation(line: 253, column: 5, scope: !583)
!757 = !DILocation(line: 254, column: 1, scope: !583)
