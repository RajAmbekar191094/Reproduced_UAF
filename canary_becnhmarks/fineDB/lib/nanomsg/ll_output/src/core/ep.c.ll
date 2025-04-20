; ModuleID = './src/core/ep.c'
source_filename = "./src/core/ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_ep = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_list_item, [129 x i8] }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sock = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_ctx, %struct.nn_efd, %struct.nn_efd, %struct.nn_sem, %struct.nn_clock, %struct.nn_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x ptr] }
%struct.nn_ctx = type { %struct.nn_mutex, ptr, %struct.nn_queue, %struct.nn_queue, ptr }
%struct.nn_mutex = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.nn_queue = type { ptr, ptr }
%struct.nn_efd = type { i32, i32 }
%struct.nn_sem = type { %union.sem_t }
%union.sem_t = type { i64, [24 x i8] }
%struct.nn_clock = type { i64, i64 }
%struct.nn_list = type { ptr, ptr }
%struct.nn_transport = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.nn_list_item }
%struct.nn_epbase = type { ptr, ptr }
%struct.nn_epbase_vfptr = type { ptr, ptr }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [33 x i8] c"strlen (addr) <= NN_SOCKADDR_MAX\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [16 x i8] c"./src/core/ep.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [32 x i8] c"self->state == NN_EP_STATE_IDLE\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !27

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ep_init(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #0 !dbg !377 {
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca ptr, align 8
  %16 = alloca i32, align 4
  store ptr %0, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !404, metadata !DIExpression()), !dbg !405
  store i32 %1, ptr %10, align 4
  call void @llvm.dbg.declare(metadata ptr %10, metadata !406, metadata !DIExpression()), !dbg !407
  store ptr %2, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !408, metadata !DIExpression()), !dbg !409
  store i32 %3, ptr %12, align 4
  call void @llvm.dbg.declare(metadata ptr %12, metadata !410, metadata !DIExpression()), !dbg !411
  store ptr %4, ptr %13, align 8
  call void @llvm.dbg.declare(metadata ptr %13, metadata !412, metadata !DIExpression()), !dbg !413
  store i32 %5, ptr %14, align 4
  call void @llvm.dbg.declare(metadata ptr %14, metadata !414, metadata !DIExpression()), !dbg !415
  store ptr %6, ptr %15, align 8
  call void @llvm.dbg.declare(metadata ptr %15, metadata !416, metadata !DIExpression()), !dbg !417
  call void @llvm.dbg.declare(metadata ptr %16, metadata !418, metadata !DIExpression()), !dbg !419
  %17 = load ptr, ptr %9, align 8, !dbg !420
  %18 = getelementptr inbounds %struct.nn_ep, ptr %17, i32 0, i32 0, !dbg !421
  %19 = load i32, ptr %10, align 4, !dbg !422
  %20 = load ptr, ptr %9, align 8, !dbg !423
  %21 = load ptr, ptr %11, align 8, !dbg !424
  %22 = getelementptr inbounds %struct.nn_sock, ptr %21, i32 0, i32 0, !dbg !425
  call void @nn_fsm_init(ptr noundef %18, ptr noundef @nn_ep_handler, i32 noundef %19, ptr noundef %20, ptr noundef %22), !dbg !426
  %23 = load ptr, ptr %9, align 8, !dbg !427
  %24 = getelementptr inbounds %struct.nn_ep, ptr %23, i32 0, i32 1, !dbg !428
  store i32 1, ptr %24, align 8, !dbg !429
  %25 = load ptr, ptr %9, align 8, !dbg !430
  %26 = getelementptr inbounds %struct.nn_ep, ptr %25, i32 0, i32 2, !dbg !431
  store ptr null, ptr %26, align 8, !dbg !432
  %27 = load ptr, ptr %11, align 8, !dbg !433
  %28 = load ptr, ptr %9, align 8, !dbg !434
  %29 = getelementptr inbounds %struct.nn_ep, ptr %28, i32 0, i32 3, !dbg !435
  store ptr %27, ptr %29, align 8, !dbg !436
  %30 = load i32, ptr %12, align 4, !dbg !437
  %31 = load ptr, ptr %9, align 8, !dbg !438
  %32 = getelementptr inbounds %struct.nn_ep, ptr %31, i32 0, i32 4, !dbg !439
  store i32 %30, ptr %32, align 8, !dbg !440
  %33 = load ptr, ptr %9, align 8, !dbg !441
  %34 = getelementptr inbounds %struct.nn_ep, ptr %33, i32 0, i32 5, !dbg !442
  call void @nn_list_item_init(ptr noundef %34), !dbg !443
  br label %35, !dbg !444

35:                                               ; preds = %7
  %36 = load ptr, ptr %15, align 8, !dbg !445
  %37 = call i64 @strlen(ptr noundef %36) #6, !dbg !445
  %38 = icmp ule i64 %37, 128, !dbg !445
  %39 = xor i1 %38, true, !dbg !445
  %40 = zext i1 %39 to i32, !dbg !445
  %41 = sext i32 %40 to i64, !dbg !445
  %42 = icmp ne i64 %41, 0, !dbg !445
  br i1 %42, label %43, label %46, !dbg !448

43:                                               ; preds = %35
  %44 = load ptr, ptr @stderr, align 8, !dbg !449
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 59), !dbg !449
  call void @nn_err_abort() #7, !dbg !449
  unreachable, !dbg !449

46:                                               ; preds = %35
  br label %47, !dbg !448

47:                                               ; preds = %46
  %48 = load ptr, ptr %9, align 8, !dbg !451
  %49 = getelementptr inbounds %struct.nn_ep, ptr %48, i32 0, i32 6, !dbg !452
  %50 = getelementptr inbounds [129 x i8], ptr %49, i64 0, i64 0, !dbg !451
  %51 = load ptr, ptr %15, align 8, !dbg !453
  %52 = call ptr @strcpy(ptr noundef %50, ptr noundef %51) #8, !dbg !454
  %53 = load i32, ptr %14, align 4, !dbg !455
  %54 = icmp ne i32 %53, 0, !dbg !455
  br i1 %54, label %55, label %63, !dbg !457

55:                                               ; preds = %47
  %56 = load ptr, ptr %13, align 8, !dbg !458
  %57 = getelementptr inbounds %struct.nn_transport, ptr %56, i32 0, i32 4, !dbg !459
  %58 = load ptr, ptr %57, align 8, !dbg !459
  %59 = load ptr, ptr %9, align 8, !dbg !460
  %60 = load ptr, ptr %9, align 8, !dbg !461
  %61 = getelementptr inbounds %struct.nn_ep, ptr %60, i32 0, i32 2, !dbg !462
  %62 = call i32 %58(ptr noundef %59, ptr noundef %61), !dbg !458
  store i32 %62, ptr %16, align 4, !dbg !463
  br label %71, !dbg !464

63:                                               ; preds = %47
  %64 = load ptr, ptr %13, align 8, !dbg !465
  %65 = getelementptr inbounds %struct.nn_transport, ptr %64, i32 0, i32 5, !dbg !466
  %66 = load ptr, ptr %65, align 8, !dbg !466
  %67 = load ptr, ptr %9, align 8, !dbg !467
  %68 = load ptr, ptr %9, align 8, !dbg !468
  %69 = getelementptr inbounds %struct.nn_ep, ptr %68, i32 0, i32 2, !dbg !469
  %70 = call i32 %66(ptr noundef %67, ptr noundef %69), !dbg !465
  store i32 %70, ptr %16, align 4, !dbg !470
  br label %71

71:                                               ; preds = %63, %55
  %72 = load i32, ptr %16, align 4, !dbg !471
  %73 = icmp slt i32 %72, 0, !dbg !473
  br i1 %73, label %74, label %80, !dbg !474

74:                                               ; preds = %71
  %75 = load ptr, ptr %9, align 8, !dbg !475
  %76 = getelementptr inbounds %struct.nn_ep, ptr %75, i32 0, i32 5, !dbg !477
  call void @nn_list_item_term(ptr noundef %76), !dbg !478
  %77 = load ptr, ptr %9, align 8, !dbg !479
  %78 = getelementptr inbounds %struct.nn_ep, ptr %77, i32 0, i32 0, !dbg !480
  call void @nn_fsm_term(ptr noundef %78), !dbg !481
  %79 = load i32, ptr %16, align 4, !dbg !482
  store i32 %79, ptr %8, align 4, !dbg !483
  br label %81, !dbg !483

80:                                               ; preds = %71
  store i32 0, ptr %8, align 4, !dbg !484
  br label %81, !dbg !484

81:                                               ; preds = %80, %74
  %82 = load i32, ptr %8, align 4, !dbg !485
  ret i32 %82, !dbg !485
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @nn_fsm_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_ep_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !486 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !487, metadata !DIExpression()), !dbg !488
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !489, metadata !DIExpression()), !dbg !490
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !491, metadata !DIExpression()), !dbg !492
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !493, metadata !DIExpression()), !dbg !494
  call void @llvm.dbg.declare(metadata ptr %9, metadata !495, metadata !DIExpression()), !dbg !496
  %10 = load ptr, ptr %5, align 8, !dbg !497
  %11 = icmp ne ptr %10, null, !dbg !497
  br i1 %11, label %12, label %15, !dbg !497

12:                                               ; preds = %4
  %13 = load ptr, ptr %5, align 8, !dbg !497
  %14 = getelementptr inbounds i8, ptr %13, i64 0, !dbg !497
  br label %16, !dbg !497

15:                                               ; preds = %4
  br label %16, !dbg !497

16:                                               ; preds = %15, %12
  %17 = phi ptr [ %14, %12 ], [ null, %15 ], !dbg !497
  store ptr %17, ptr %9, align 8, !dbg !498
  %18 = load i32, ptr %6, align 4, !dbg !499
  %19 = icmp eq i32 %18, -2, !dbg !499
  br i1 %19, label %20, label %23, !dbg !499

20:                                               ; preds = %16
  %21 = load i32, ptr %7, align 4, !dbg !499
  %22 = icmp eq i32 %21, -3, !dbg !499
  br label %23

23:                                               ; preds = %20, %16
  %24 = phi i1 [ false, %16 ], [ %22, %20 ], !dbg !501
  %25 = zext i1 %24 to i32, !dbg !499
  %26 = sext i32 %25 to i64, !dbg !499
  %27 = icmp ne i64 %26, 0, !dbg !499
  br i1 %27, label %28, label %41, !dbg !502

28:                                               ; preds = %23
  %29 = load ptr, ptr %9, align 8, !dbg !503
  %30 = getelementptr inbounds %struct.nn_ep, ptr %29, i32 0, i32 2, !dbg !505
  %31 = load ptr, ptr %30, align 8, !dbg !505
  %32 = getelementptr inbounds %struct.nn_epbase, ptr %31, i32 0, i32 0, !dbg !506
  %33 = load ptr, ptr %32, align 8, !dbg !506
  %34 = getelementptr inbounds %struct.nn_epbase_vfptr, ptr %33, i32 0, i32 0, !dbg !507
  %35 = load ptr, ptr %34, align 8, !dbg !507
  %36 = load ptr, ptr %9, align 8, !dbg !508
  %37 = getelementptr inbounds %struct.nn_ep, ptr %36, i32 0, i32 2, !dbg !509
  %38 = load ptr, ptr %37, align 8, !dbg !509
  call void %35(ptr noundef %38), !dbg !503
  %39 = load ptr, ptr %9, align 8, !dbg !510
  %40 = getelementptr inbounds %struct.nn_ep, ptr %39, i32 0, i32 1, !dbg !511
  store i32 3, ptr %40, align 8, !dbg !512
  br label %94, !dbg !513

41:                                               ; preds = %23
  %42 = load ptr, ptr %9, align 8, !dbg !514
  %43 = getelementptr inbounds %struct.nn_ep, ptr %42, i32 0, i32 1, !dbg !514
  %44 = load i32, ptr %43, align 8, !dbg !514
  %45 = icmp eq i32 %44, 3, !dbg !514
  %46 = zext i1 %45 to i32, !dbg !514
  %47 = sext i32 %46 to i64, !dbg !514
  %48 = icmp ne i64 %47, 0, !dbg !514
  br i1 %48, label %49, label %61, !dbg !516

49:                                               ; preds = %41
  %50 = load i32, ptr %6, align 4, !dbg !517
  %51 = icmp ne i32 %50, -2, !dbg !520
  br i1 %51, label %55, label %52, !dbg !521

52:                                               ; preds = %49
  %53 = load i32, ptr %7, align 4, !dbg !522
  %54 = icmp ne i32 %53, 1, !dbg !523
  br i1 %54, label %55, label %56, !dbg !524

55:                                               ; preds = %52, %49
  br label %94, !dbg !525

56:                                               ; preds = %52
  %57 = load ptr, ptr %9, align 8, !dbg !526
  %58 = getelementptr inbounds %struct.nn_ep, ptr %57, i32 0, i32 1, !dbg !527
  store i32 1, ptr %58, align 8, !dbg !528
  %59 = load ptr, ptr %9, align 8, !dbg !529
  %60 = getelementptr inbounds %struct.nn_ep, ptr %59, i32 0, i32 0, !dbg !530
  call void @nn_fsm_stopped(ptr noundef %60, i32 noundef 1), !dbg !531
  br label %94, !dbg !532

61:                                               ; preds = %41
  %62 = load ptr, ptr %9, align 8, !dbg !533
  %63 = getelementptr inbounds %struct.nn_ep, ptr %62, i32 0, i32 1, !dbg !534
  %64 = load i32, ptr %63, align 8, !dbg !534
  switch i32 %64, label %89 [
    i32 1, label %65
    i32 2, label %84
  ], !dbg !535

65:                                               ; preds = %61
  %66 = load i32, ptr %6, align 4, !dbg !536
  switch i32 %66, label %78 [
    i32 -2, label %67
  ], !dbg !538

67:                                               ; preds = %65
  %68 = load i32, ptr %7, align 4, !dbg !539
  switch i32 %68, label %72 [
    i32 -2, label %69
  ], !dbg !541

69:                                               ; preds = %67
  %70 = load ptr, ptr %9, align 8, !dbg !542
  %71 = getelementptr inbounds %struct.nn_ep, ptr %70, i32 0, i32 1, !dbg !544
  store i32 2, ptr %71, align 8, !dbg !545
  br label %94, !dbg !546

72:                                               ; preds = %67
  br label %73, !dbg !547

73:                                               ; preds = %72
  %74 = load ptr, ptr @stderr, align 8, !dbg !548
  %75 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %74, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 174), !dbg !548
  call void @nn_err_abort() #7, !dbg !548
  unreachable, !dbg !548

76:                                               ; No predecessors!
  br label %77, !dbg !552

77:                                               ; preds = %76
  br label %78, !dbg !552

78:                                               ; preds = %65, %77
  br label %79, !dbg !553

79:                                               ; preds = %78
  %80 = load ptr, ptr @stderr, align 8, !dbg !554
  %81 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %80, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 178), !dbg !554
  call void @nn_err_abort() #7, !dbg !554
  unreachable, !dbg !554

82:                                               ; No predecessors!
  br label %83, !dbg !558

83:                                               ; preds = %82
  br label %84, !dbg !558

84:                                               ; preds = %61, %83
  br label %85, !dbg !559

85:                                               ; preds = %84
  %86 = load ptr, ptr @stderr, align 8, !dbg !560
  %87 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %86, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 187), !dbg !560
  call void @nn_err_abort() #7, !dbg !560
  unreachable, !dbg !560

88:                                               ; No predecessors!
  br label %89, !dbg !564

89:                                               ; preds = %61, %88
  br label %90, !dbg !565

90:                                               ; preds = %89
  %91 = load ptr, ptr @stderr, align 8, !dbg !566
  %92 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %91, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 193), !dbg !566
  call void @nn_err_abort() #7, !dbg !566
  unreachable, !dbg !566

93:                                               ; No predecessors!
  br label %94, !dbg !570

94:                                               ; preds = %28, %55, %56, %69, %93
  ret void, !dbg !571
}

declare void @nn_list_item_init(ptr noundef) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #4

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #5

declare void @nn_list_item_term(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_term(ptr noundef %0) #0 !dbg !572 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !575, metadata !DIExpression()), !dbg !576
  br label %3, !dbg !577

3:                                                ; preds = %1
  %4 = load ptr, ptr %2, align 8, !dbg !578
  %5 = getelementptr inbounds %struct.nn_ep, ptr %4, i32 0, i32 1, !dbg !578
  %6 = load i32, ptr %5, align 8, !dbg !578
  %7 = icmp eq i32 %6, 1, !dbg !578
  %8 = xor i1 %7, true, !dbg !578
  %9 = zext i1 %8 to i32, !dbg !578
  %10 = sext i32 %9 to i64, !dbg !578
  %11 = icmp ne i64 %10, 0, !dbg !578
  br i1 %11, label %12, label %15, !dbg !581

12:                                               ; preds = %3
  %13 = load ptr, ptr @stderr, align 8, !dbg !582
  %14 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef @.str, ptr noundef @.str.3, ptr noundef @.str.2, i32 noundef 87), !dbg !582
  call void @nn_err_abort() #7, !dbg !582
  unreachable, !dbg !582

15:                                               ; preds = %3
  br label %16, !dbg !581

16:                                               ; preds = %15
  %17 = load ptr, ptr %2, align 8, !dbg !584
  %18 = getelementptr inbounds %struct.nn_ep, ptr %17, i32 0, i32 2, !dbg !585
  %19 = load ptr, ptr %18, align 8, !dbg !585
  %20 = getelementptr inbounds %struct.nn_epbase, ptr %19, i32 0, i32 0, !dbg !586
  %21 = load ptr, ptr %20, align 8, !dbg !586
  %22 = getelementptr inbounds %struct.nn_epbase_vfptr, ptr %21, i32 0, i32 1, !dbg !587
  %23 = load ptr, ptr %22, align 8, !dbg !587
  %24 = load ptr, ptr %2, align 8, !dbg !588
  %25 = getelementptr inbounds %struct.nn_ep, ptr %24, i32 0, i32 2, !dbg !589
  %26 = load ptr, ptr %25, align 8, !dbg !589
  call void %23(ptr noundef %26), !dbg !584
  %27 = load ptr, ptr %2, align 8, !dbg !590
  %28 = getelementptr inbounds %struct.nn_ep, ptr %27, i32 0, i32 5, !dbg !591
  call void @nn_list_item_term(ptr noundef %28), !dbg !592
  %29 = load ptr, ptr %2, align 8, !dbg !593
  %30 = getelementptr inbounds %struct.nn_ep, ptr %29, i32 0, i32 0, !dbg !594
  call void @nn_fsm_term(ptr noundef %30), !dbg !595
  ret void, !dbg !596
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_start(ptr noundef %0) #0 !dbg !597 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !598, metadata !DIExpression()), !dbg !599
  %3 = load ptr, ptr %2, align 8, !dbg !600
  %4 = getelementptr inbounds %struct.nn_ep, ptr %3, i32 0, i32 0, !dbg !601
  call void @nn_fsm_start(ptr noundef %4), !dbg !602
  ret void, !dbg !603
}

declare void @nn_fsm_start(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_stop(ptr noundef %0) #0 !dbg !604 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !605, metadata !DIExpression()), !dbg !606
  %3 = load ptr, ptr %2, align 8, !dbg !607
  %4 = getelementptr inbounds %struct.nn_ep, ptr %3, i32 0, i32 0, !dbg !608
  call void @nn_fsm_stop(ptr noundef %4), !dbg !609
  ret void, !dbg !610
}

declare void @nn_fsm_stop(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_stopped(ptr noundef %0) #0 !dbg !611 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !612, metadata !DIExpression()), !dbg !613
  %3 = load ptr, ptr %2, align 8, !dbg !614
  %4 = getelementptr inbounds %struct.nn_ep, ptr %3, i32 0, i32 0, !dbg !615
  %5 = load ptr, ptr %2, align 8, !dbg !616
  %6 = getelementptr inbounds %struct.nn_ep, ptr %5, i32 0, i32 0, !dbg !617
  %7 = getelementptr inbounds %struct.nn_fsm, ptr %6, i32 0, i32 6, !dbg !618
  %8 = getelementptr inbounds %struct.nn_fsm_event, ptr %7, i32 0, i32 0, !dbg !619
  store ptr %4, ptr %8, align 8, !dbg !620
  %9 = load ptr, ptr %2, align 8, !dbg !621
  %10 = getelementptr inbounds %struct.nn_ep, ptr %9, i32 0, i32 0, !dbg !622
  %11 = getelementptr inbounds %struct.nn_fsm, ptr %10, i32 0, i32 6, !dbg !623
  %12 = getelementptr inbounds %struct.nn_fsm_event, ptr %11, i32 0, i32 1, !dbg !624
  store i32 -2, ptr %12, align 8, !dbg !625
  %13 = load ptr, ptr %2, align 8, !dbg !626
  %14 = getelementptr inbounds %struct.nn_ep, ptr %13, i32 0, i32 0, !dbg !627
  %15 = getelementptr inbounds %struct.nn_fsm, ptr %14, i32 0, i32 6, !dbg !628
  %16 = getelementptr inbounds %struct.nn_fsm_event, ptr %15, i32 0, i32 2, !dbg !629
  store ptr null, ptr %16, align 8, !dbg !630
  %17 = load ptr, ptr %2, align 8, !dbg !631
  %18 = getelementptr inbounds %struct.nn_ep, ptr %17, i32 0, i32 0, !dbg !632
  %19 = getelementptr inbounds %struct.nn_fsm, ptr %18, i32 0, i32 6, !dbg !633
  %20 = getelementptr inbounds %struct.nn_fsm_event, ptr %19, i32 0, i32 3, !dbg !634
  store i32 1, ptr %20, align 8, !dbg !635
  %21 = load ptr, ptr %2, align 8, !dbg !636
  %22 = getelementptr inbounds %struct.nn_ep, ptr %21, i32 0, i32 0, !dbg !637
  %23 = getelementptr inbounds %struct.nn_fsm, ptr %22, i32 0, i32 5, !dbg !638
  %24 = load ptr, ptr %23, align 8, !dbg !638
  %25 = load ptr, ptr %2, align 8, !dbg !639
  %26 = getelementptr inbounds %struct.nn_ep, ptr %25, i32 0, i32 0, !dbg !640
  %27 = getelementptr inbounds %struct.nn_fsm, ptr %26, i32 0, i32 6, !dbg !641
  call void @nn_ctx_raise(ptr noundef %24, ptr noundef %27), !dbg !642
  ret void, !dbg !643
}

declare void @nn_ctx_raise(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_ep_getctx(ptr noundef %0) #0 !dbg !644 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !647, metadata !DIExpression()), !dbg !648
  %3 = load ptr, ptr %2, align 8, !dbg !649
  %4 = getelementptr inbounds %struct.nn_ep, ptr %3, i32 0, i32 3, !dbg !650
  %5 = load ptr, ptr %4, align 8, !dbg !650
  %6 = call ptr @nn_sock_getctx(ptr noundef %5), !dbg !651
  ret ptr %6, !dbg !652
}

declare ptr @nn_sock_getctx(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_ep_getaddr(ptr noundef %0) #0 !dbg !653 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !656, metadata !DIExpression()), !dbg !657
  %3 = load ptr, ptr %2, align 8, !dbg !658
  %4 = getelementptr inbounds %struct.nn_ep, ptr %3, i32 0, i32 6, !dbg !659
  %5 = getelementptr inbounds [129 x i8], ptr %4, i64 0, i64 0, !dbg !658
  ret ptr %5, !dbg !660
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_ep_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !661 {
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !664, metadata !DIExpression()), !dbg !665
  store i32 %1, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !666, metadata !DIExpression()), !dbg !667
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !668, metadata !DIExpression()), !dbg !669
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !670, metadata !DIExpression()), !dbg !671
  store ptr %4, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !672, metadata !DIExpression()), !dbg !673
  call void @llvm.dbg.declare(metadata ptr %11, metadata !674, metadata !DIExpression()), !dbg !675
  %12 = load ptr, ptr %6, align 8, !dbg !676
  %13 = getelementptr inbounds %struct.nn_ep, ptr %12, i32 0, i32 3, !dbg !677
  %14 = load ptr, ptr %13, align 8, !dbg !677
  %15 = load i32, ptr %7, align 4, !dbg !678
  %16 = load i32, ptr %8, align 4, !dbg !679
  %17 = load ptr, ptr %9, align 8, !dbg !680
  %18 = load ptr, ptr %10, align 8, !dbg !681
  %19 = call i32 @nn_sock_getopt_inner(ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18), !dbg !682
  store i32 %19, ptr %11, align 4, !dbg !683
  br label %20, !dbg !684

20:                                               ; preds = %5
  %21 = load i32, ptr %11, align 4, !dbg !685
  %22 = icmp eq i32 %21, 0, !dbg !685
  %23 = xor i1 %22, true, !dbg !685
  %24 = zext i1 %23 to i32, !dbg !685
  %25 = sext i32 %24 to i64, !dbg !685
  %26 = icmp ne i64 %25, 0, !dbg !685
  br i1 %26, label %27, label %35, !dbg !688

27:                                               ; preds = %20
  %28 = load ptr, ptr @stderr, align 8, !dbg !689
  %29 = load i32, ptr %11, align 4, !dbg !689
  %30 = sub nsw i32 0, %29, !dbg !689
  %31 = call ptr @nn_err_strerror(i32 noundef %30), !dbg !689
  %32 = load i32, ptr %11, align 4, !dbg !689
  %33 = sub nsw i32 0, %32, !dbg !689
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str.4, ptr noundef %31, i32 noundef %33, ptr noundef @.str.2, i32 noundef 130), !dbg !689
  call void @nn_err_abort() #7, !dbg !689
  unreachable, !dbg !689

35:                                               ; preds = %20
  br label %36, !dbg !688

36:                                               ; preds = %35
  ret void, !dbg !691
}

declare i32 @nn_sock_getopt_inner(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_ep_ispeer(ptr noundef %0, i32 noundef %1) #0 !dbg !692 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !695, metadata !DIExpression()), !dbg !696
  store i32 %1, ptr %4, align 4
  call void @llvm.dbg.declare(metadata ptr %4, metadata !697, metadata !DIExpression()), !dbg !698
  %5 = load ptr, ptr %3, align 8, !dbg !699
  %6 = getelementptr inbounds %struct.nn_ep, ptr %5, i32 0, i32 3, !dbg !700
  %7 = load ptr, ptr %6, align 8, !dbg !700
  %8 = load i32, ptr %4, align 4, !dbg !701
  %9 = call i32 @nn_sock_ispeer(ptr noundef %7, i32 noundef %8), !dbg !702
  ret i32 %9, !dbg !703
}

declare i32 @nn_sock_ispeer(ptr noundef, i32 noundef) #2

declare void @nn_fsm_stopped(ptr noundef, i32 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind willreturn memory(read) }
attributes #7 = { noreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!32}
!llvm.module.flags = !{!369, !370, !371, !372, !373, !374, !375}
!llvm.ident = !{!376}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/core/ep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5f5b49778736fd2bbf7a6ec99ba9cef6")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 33)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 59, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 16)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 87, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 32)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 130, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 17)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 2)
!32 = distinct !DICompileUnit(language: DW_LANG_C11, file: !33, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !34, globals: !368, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "src/core/ep.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "5f5b49778736fd2bbf7a6ec99ba9cef6")
!34 = !{!35, !36, !37, !367}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!36 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !39, line: 35, size: 2112, elements: !40)
!39 = !DIFile(filename: "./src/core/ep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3cb96b08ce030ea933432a57e3a52863")
!40 = !{!41, !205, !206, !222, !361, !362, !363}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !38, file: !39, line: 36, baseType: !42, size: 640)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !43, line: 66, size: 640, elements: !44)
!43 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!44 = !{!45, !51, !52, !53, !54, !55, !197}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !42, file: !43, line: 67, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !43, line: 58, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !36, !36, !35}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !42, file: !43, line: 68, baseType: !36, size: 32, offset: 64)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !42, file: !43, line: 69, baseType: !36, size: 32, offset: 96)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !42, file: !43, line: 70, baseType: !35, size: 64, offset: 128)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !42, file: !43, line: 71, baseType: !50, size: 64, offset: 192)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !42, file: !43, line: 72, baseType: !56, size: 64, offset: 256)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !58, line: 37, size: 704, elements: !59)
!58 = !DIFile(filename: "./src/core/../aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!59 = !{!60, !96, !190, !191, !192}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !57, file: !58, line: 38, baseType: !61, size: 320)
!61 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !62, line: 32, size: 320, elements: !63)
!62 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!63 = !{!64}
!64 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !61, file: !62, line: 36, baseType: !65, size: 320)
!65 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !66, line: 72, baseType: !67)
!66 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!67 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !66, line: 67, size: 320, elements: !68)
!68 = !{!69, !90, !94}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !67, file: !66, line: 69, baseType: !70, size: 320)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !71, line: 22, size: 320, elements: !72)
!71 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!72 = !{!73, !74, !76, !77, !78, !79, !81, !82}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !70, file: !71, line: 24, baseType: !36, size: 32)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !70, file: !71, line: 25, baseType: !75, size: 32, offset: 32)
!75 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !70, file: !71, line: 26, baseType: !36, size: 32, offset: 64)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !70, file: !71, line: 28, baseType: !75, size: 32, offset: 96)
!78 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !70, file: !71, line: 32, baseType: !36, size: 32, offset: 128)
!79 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !70, file: !71, line: 34, baseType: !80, size: 16, offset: 160)
!80 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !70, file: !71, line: 35, baseType: !80, size: 16, offset: 176)
!82 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !70, file: !71, line: 36, baseType: !83, size: 128, offset: 192)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !84, line: 55, baseType: !85)
!84 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !84, line: 51, size: 128, elements: !86)
!86 = !{!87, !89}
!87 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !85, file: !84, line: 53, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !85, file: !84, line: 54, baseType: !88, size: 64, offset: 64)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !67, file: !66, line: 70, baseType: !91, size: 320)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: 40)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !67, file: !66, line: 71, baseType: !95, size: 64)
!95 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !57, file: !58, line: 39, baseType: !97, size: 64, offset: 320)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !99, line: 30, size: 1408, elements: !100)
!99 = !DIFile(filename: "src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!100 = !{!101}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !98, file: !99, line: 31, baseType: !102, size: 1408)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !103, line: 53, size: 1408, elements: !104)
!103 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!104 = !{!105, !106, !116, !117, !123, !150, !151, !177}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !102, file: !103, line: 54, baseType: !61, size: 320)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !102, file: !103, line: 55, baseType: !107, size: 128, offset: 320)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !108, line: 37, size: 128, elements: !109)
!108 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!109 = !{!110, !115}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !107, file: !108, line: 38, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !108, line: 33, size: 64, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !112, file: !108, line: 34, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !107, file: !108, line: 39, baseType: !111, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !102, file: !103, line: 56, baseType: !112, size: 64, offset: 448)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !102, file: !103, line: 57, baseType: !118, size: 64, offset: 512)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !119, line: 25, size: 64, elements: !120)
!119 = !DIFile(filename: "src/aio/../utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!120 = !{!121, !122}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !118, file: !119, line: 26, baseType: !36, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !118, file: !119, line: 27, baseType: !36, size: 32, offset: 32)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !102, file: !103, line: 58, baseType: !124, size: 320, offset: 576)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !125, line: 31, size: 320, elements: !126)
!125 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!126 = !{!127, !128, !129, !130, !138, !149}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !124, file: !125, line: 34, baseType: !36, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !124, file: !125, line: 37, baseType: !36, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !124, file: !125, line: 40, baseType: !36, size: 32, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !124, file: !125, line: 43, baseType: !131, size: 64, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !133, line: 36, size: 64, elements: !134)
!133 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!134 = !{!135, !136, !137}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !132, file: !133, line: 38, baseType: !36, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !132, file: !133, line: 39, baseType: !80, size: 16, offset: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !132, file: !133, line: 40, baseType: !80, size: 16, offset: 48)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !124, file: !125, line: 52, baseType: !139, size: 64, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !125, line: 48, size: 128, elements: !141)
!141 = !{!142, !147, !148}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !140, file: !125, line: 49, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !125, line: 27, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !144, file: !125, line: 28, baseType: !36, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !140, file: !125, line: 50, baseType: !36, size: 32, offset: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !140, file: !125, line: 51, baseType: !36, size: 32, offset: 96)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !124, file: !125, line: 55, baseType: !36, size: 32, offset: 256)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !102, file: !103, line: 59, baseType: !144, size: 32, offset: 896)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !102, file: !103, line: 60, baseType: !152, size: 256, offset: 960)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !153, line: 37, size: 256, elements: !154)
!153 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!154 = !{!155, !166}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !152, file: !153, line: 38, baseType: !156, size: 128)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !157, line: 31, size: 128, elements: !158)
!157 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!158 = !{!159, !165}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !156, file: !157, line: 33, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !161, line: 27, baseType: !162)
!161 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !163, line: 45, baseType: !164)
!163 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!164 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !156, file: !157, line: 34, baseType: !160, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !152, file: !153, line: 39, baseType: !167, size: 128, offset: 128)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !168, line: 31, size: 128, elements: !169)
!168 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!169 = !{!170, !176}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !167, file: !168, line: 32, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !168, line: 26, size: 128, elements: !173)
!173 = !{!174, !175}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !172, file: !168, line: 27, baseType: !171, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !172, file: !168, line: 28, baseType: !171, size: 64, offset: 64)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !167, file: !168, line: 33, baseType: !171, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !102, file: !103, line: 61, baseType: !178, size: 192, offset: 1216)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !179, line: 25, size: 192, elements: !180)
!179 = !DIFile(filename: "src/aio/../utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!180 = !{!181, !187, !188}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !178, file: !179, line: 27, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !184, line: 28, baseType: !185)
!184 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!185 = !DISubroutineType(types: !186)
!186 = !{null, !35}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !178, file: !179, line: 28, baseType: !35, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !178, file: !179, line: 29, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !66, line: 27, baseType: !164)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !57, file: !58, line: 40, baseType: !107, size: 128, offset: 384)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !57, file: !58, line: 41, baseType: !107, size: 128, offset: 512)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !57, file: !58, line: 42, baseType: !193, size: 64, offset: 640)
!193 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !58, line: 35, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !56}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !42, file: !43, line: 73, baseType: !198, size: 320, offset: 320)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !43, line: 34, size: 320, elements: !199)
!199 = !{!200, !201, !202, !203, !204}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !198, file: !43, line: 35, baseType: !50, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !198, file: !43, line: 36, baseType: !36, size: 32, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !198, file: !43, line: 37, baseType: !35, size: 64, offset: 128)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !198, file: !43, line: 38, baseType: !36, size: 32, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !198, file: !43, line: 39, baseType: !112, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !38, file: !39, line: 37, baseType: !36, size: 32, offset: 640)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !38, file: !39, line: 38, baseType: !207, size: 64, offset: 704)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !209, line: 81, size: 128, elements: !210)
!209 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!210 = !{!211, !221}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !208, file: !209, line: 82, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !209, line: 70, size: 128, elements: !215)
!215 = !{!216, !220}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !214, file: !209, line: 75, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !207}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !214, file: !209, line: 78, baseType: !217, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !208, file: !209, line: 83, baseType: !37, size: 64, offset: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !38, file: !39, line: 39, baseType: !223, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !225, line: 42, size: 2752, elements: !226)
!225 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!226 = !{!227, !228, !229, !293, !310, !311, !312, !313, !314, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !224, file: !225, line: 45, baseType: !42, size: 640)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !224, file: !225, line: 46, baseType: !36, size: 32, offset: 640)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !224, file: !225, line: 49, baseType: !230, size: 64, offset: 704)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !232, line: 123, size: 128, elements: !233)
!232 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!233 = !{!234, !292}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !231, file: !232, line: 124, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !232, line: 84, size: 704, elements: !238)
!238 = !{!239, !243, !244, !250, !254, !255, !256, !260, !278, !279, !287}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !237, file: !232, line: 87, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{null, !230}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !237, file: !232, line: 90, baseType: !240, size: 64, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !237, file: !232, line: 97, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!36, !230, !248}
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !232, line: 56, flags: DIFlagFwdDecl)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !237, file: !232, line: 98, baseType: !251, size: 64, offset: 192)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DISubroutineType(types: !253)
!253 = !{null, !230, !248}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !237, file: !232, line: 99, baseType: !251, size: 64, offset: 256)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !237, file: !232, line: 100, baseType: !251, size: 64, offset: 320)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !237, file: !232, line: 104, baseType: !257, size: 64, offset: 384)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!36, !230}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !237, file: !232, line: 108, baseType: !261, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!36, !230, !264}
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !266, line: 30, size: 512, elements: !267)
!266 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!267 = !{!268, !277}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !265, file: !266, line: 33, baseType: !269, size: 256)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !270, line: 39, size: 256, elements: !271)
!270 = !DIFile(filename: "src/aio/../utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!271 = !{!272}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !269, file: !270, line: 40, baseType: !273, size: 256)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 256, elements: !20)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !161, line: 24, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !163, line: 38, baseType: !276)
!276 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !265, file: !266, line: 36, baseType: !269, size: 256, offset: 256)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !237, file: !232, line: 112, baseType: !261, size: 64, offset: 512)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !237, file: !232, line: 115, baseType: !280, size: 64, offset: 576)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!36, !230, !36, !36, !283, !285}
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !286, line: 46, baseType: !164)
!286 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!287 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !237, file: !232, line: 119, baseType: !288, size: 64, offset: 640)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DISubroutineType(types: !290)
!290 = !{!36, !230, !36, !36, !35, !291}
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !231, file: !232, line: 125, baseType: !223, size: 64, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !224, file: !225, line: 52, baseType: !294, size: 64, offset: 768)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !232, line: 160, size: 384, elements: !296)
!296 = !{!297, !298, !299, !300, !305, !309}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !295, file: !232, line: 163, baseType: !36, size: 32)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !295, file: !232, line: 164, baseType: !36, size: 32, offset: 32)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !295, file: !232, line: 167, baseType: !36, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !295, file: !232, line: 173, baseType: !301, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!36, !35, !304}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !295, file: !232, line: 179, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!36, !36}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !295, file: !232, line: 183, baseType: !172, size: 128, offset: 256)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !224, file: !225, line: 54, baseType: !36, size: 32, offset: 832)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !224, file: !225, line: 56, baseType: !57, size: 704, offset: 896)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !224, file: !225, line: 57, baseType: !118, size: 64, offset: 1600)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !224, file: !225, line: 58, baseType: !118, size: 64, offset: 1664)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !224, file: !225, line: 59, baseType: !315, size: 256, offset: 1728)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !316, line: 64, size: 256, elements: !317)
!316 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !315, file: !316, line: 65, baseType: !319, size: 256)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !320, line: 39, baseType: !321)
!320 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!321 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !320, line: 35, size: 256, elements: !322)
!322 = !{!323, !324}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !321, file: !320, line: 37, baseType: !19, size: 256)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !321, file: !320, line: 38, baseType: !95, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !224, file: !225, line: 63, baseType: !156, size: 128, offset: 1984)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !224, file: !225, line: 66, baseType: !167, size: 128, offset: 2112)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !224, file: !225, line: 69, baseType: !36, size: 32, offset: 2240)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !224, file: !225, line: 72, baseType: !36, size: 32, offset: 2272)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !224, file: !225, line: 73, baseType: !36, size: 32, offset: 2304)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !224, file: !225, line: 74, baseType: !36, size: 32, offset: 2336)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !224, file: !225, line: 75, baseType: !36, size: 32, offset: 2368)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !224, file: !225, line: 76, baseType: !36, size: 32, offset: 2400)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !224, file: !225, line: 77, baseType: !36, size: 32, offset: 2432)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !224, file: !225, line: 78, baseType: !36, size: 32, offset: 2464)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !224, file: !225, line: 79, baseType: !36, size: 32, offset: 2496)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !224, file: !225, line: 80, baseType: !36, size: 32, offset: 2528)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !224, file: !225, line: 83, baseType: !338, size: 192, offset: 2560)
!338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 192, elements: !359)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !209, line: 56, size: 64, elements: !341)
!341 = !{!342}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !340, file: !209, line: 57, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !209, line: 48, size: 192, elements: !346)
!346 = !{!347, !351, !355}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !345, file: !209, line: 49, baseType: !348, size: 64)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = !DISubroutineType(types: !350)
!350 = !{null, !339}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !345, file: !209, line: 50, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!36, !339, !36, !283, !285}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !345, file: !209, line: 52, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!36, !339, !36, !35, !291}
!359 = !{!360}
!360 = !DISubrange(count: 3)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !38, file: !39, line: 40, baseType: !36, size: 32, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !38, file: !39, line: 41, baseType: !172, size: 128, offset: 896)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !38, file: !39, line: 42, baseType: !364, size: 1032, offset: 1024)
!364 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !365)
!365 = !{!366}
!366 = !DISubrange(count: 129)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!368 = !{!0, !7, !12, !17, !22, !27}
!369 = !{i32 7, !"Dwarf Version", i32 5}
!370 = !{i32 2, !"Debug Info Version", i32 3}
!371 = !{i32 1, !"wchar_size", i32 4}
!372 = !{i32 8, !"PIC Level", i32 2}
!373 = !{i32 7, !"PIE Level", i32 2}
!374 = !{i32 7, !"uwtable", i32 2}
!375 = !{i32 7, !"frame-pointer", i32 2}
!376 = !{!"clang version 16.0.0"}
!377 = distinct !DISubprogram(name: "nn_ep_init", scope: !2, file: !2, line: 45, type: !378, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!378 = !DISubroutineType(types: !379)
!379 = !{!36, !37, !36, !223, !36, !380, !36, !384}
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_transport", file: !209, line: 190, size: 576, elements: !382)
!382 = !{!383, !386, !387, !391, !392, !397, !398, !402}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !381, file: !209, line: 194, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !381, file: !209, line: 197, baseType: !36, size: 32, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !381, file: !209, line: 204, baseType: !388, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{null}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !381, file: !209, line: 205, baseType: !388, size: 64, offset: 192)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !381, file: !209, line: 213, baseType: !393, size: 64, offset: 256)
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DISubroutineType(types: !395)
!395 = !{!36, !35, !396}
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !381, file: !209, line: 214, baseType: !393, size: 64, offset: 320)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "optset", scope: !381, file: !209, line: 219, baseType: !399, size: 64, offset: 384)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!339}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !381, file: !209, line: 223, baseType: !172, size: 128, offset: 448)
!403 = !{}
!404 = !DILocalVariable(name: "self", arg: 1, scope: !377, file: !2, line: 45, type: !37)
!405 = !DILocation(line: 45, column: 31, scope: !377)
!406 = !DILocalVariable(name: "src", arg: 2, scope: !377, file: !2, line: 45, type: !36)
!407 = !DILocation(line: 45, column: 41, scope: !377)
!408 = !DILocalVariable(name: "sock", arg: 3, scope: !377, file: !2, line: 45, type: !223)
!409 = !DILocation(line: 45, column: 62, scope: !377)
!410 = !DILocalVariable(name: "eid", arg: 4, scope: !377, file: !2, line: 45, type: !36)
!411 = !DILocation(line: 45, column: 72, scope: !377)
!412 = !DILocalVariable(name: "transport", arg: 5, scope: !377, file: !2, line: 46, type: !380)
!413 = !DILocation(line: 46, column: 26, scope: !377)
!414 = !DILocalVariable(name: "bind", arg: 6, scope: !377, file: !2, line: 46, type: !36)
!415 = !DILocation(line: 46, column: 41, scope: !377)
!416 = !DILocalVariable(name: "addr", arg: 7, scope: !377, file: !2, line: 46, type: !384)
!417 = !DILocation(line: 46, column: 59, scope: !377)
!418 = !DILocalVariable(name: "rc", scope: !377, file: !2, line: 48, type: !36)
!419 = !DILocation(line: 48, column: 9, scope: !377)
!420 = !DILocation(line: 50, column: 19, scope: !377)
!421 = !DILocation(line: 50, column: 25, scope: !377)
!422 = !DILocation(line: 50, column: 45, scope: !377)
!423 = !DILocation(line: 50, column: 50, scope: !377)
!424 = !DILocation(line: 50, column: 57, scope: !377)
!425 = !DILocation(line: 50, column: 63, scope: !377)
!426 = !DILocation(line: 50, column: 5, scope: !377)
!427 = !DILocation(line: 51, column: 5, scope: !377)
!428 = !DILocation(line: 51, column: 11, scope: !377)
!429 = !DILocation(line: 51, column: 17, scope: !377)
!430 = !DILocation(line: 53, column: 5, scope: !377)
!431 = !DILocation(line: 53, column: 11, scope: !377)
!432 = !DILocation(line: 53, column: 18, scope: !377)
!433 = !DILocation(line: 54, column: 18, scope: !377)
!434 = !DILocation(line: 54, column: 5, scope: !377)
!435 = !DILocation(line: 54, column: 11, scope: !377)
!436 = !DILocation(line: 54, column: 16, scope: !377)
!437 = !DILocation(line: 55, column: 17, scope: !377)
!438 = !DILocation(line: 55, column: 5, scope: !377)
!439 = !DILocation(line: 55, column: 11, scope: !377)
!440 = !DILocation(line: 55, column: 15, scope: !377)
!441 = !DILocation(line: 56, column: 25, scope: !377)
!442 = !DILocation(line: 56, column: 31, scope: !377)
!443 = !DILocation(line: 56, column: 5, scope: !377)
!444 = !DILocation(line: 59, column: 5, scope: !377)
!445 = !DILocation(line: 59, column: 5, scope: !446)
!446 = distinct !DILexicalBlock(scope: !447, file: !2, line: 59, column: 5)
!447 = distinct !DILexicalBlock(scope: !377, file: !2, line: 59, column: 5)
!448 = !DILocation(line: 59, column: 5, scope: !447)
!449 = !DILocation(line: 59, column: 5, scope: !450)
!450 = distinct !DILexicalBlock(scope: !446, file: !2, line: 59, column: 5)
!451 = !DILocation(line: 64, column: 13, scope: !377)
!452 = !DILocation(line: 64, column: 19, scope: !377)
!453 = !DILocation(line: 64, column: 25, scope: !377)
!454 = !DILocation(line: 64, column: 5, scope: !377)
!455 = !DILocation(line: 70, column: 9, scope: !456)
!456 = distinct !DILexicalBlock(scope: !377, file: !2, line: 70, column: 9)
!457 = !DILocation(line: 70, column: 9, scope: !377)
!458 = !DILocation(line: 71, column: 14, scope: !456)
!459 = !DILocation(line: 71, column: 25, scope: !456)
!460 = !DILocation(line: 71, column: 39, scope: !456)
!461 = !DILocation(line: 71, column: 46, scope: !456)
!462 = !DILocation(line: 71, column: 52, scope: !456)
!463 = !DILocation(line: 71, column: 12, scope: !456)
!464 = !DILocation(line: 71, column: 9, scope: !456)
!465 = !DILocation(line: 73, column: 14, scope: !456)
!466 = !DILocation(line: 73, column: 25, scope: !456)
!467 = !DILocation(line: 73, column: 42, scope: !456)
!468 = !DILocation(line: 73, column: 49, scope: !456)
!469 = !DILocation(line: 73, column: 55, scope: !456)
!470 = !DILocation(line: 73, column: 12, scope: !456)
!471 = !DILocation(line: 76, column: 9, scope: !472)
!472 = distinct !DILexicalBlock(scope: !377, file: !2, line: 76, column: 9)
!473 = !DILocation(line: 76, column: 12, scope: !472)
!474 = !DILocation(line: 76, column: 9, scope: !377)
!475 = !DILocation(line: 77, column: 29, scope: !476)
!476 = distinct !DILexicalBlock(scope: !472, file: !2, line: 76, column: 17)
!477 = !DILocation(line: 77, column: 35, scope: !476)
!478 = !DILocation(line: 77, column: 9, scope: !476)
!479 = !DILocation(line: 78, column: 23, scope: !476)
!480 = !DILocation(line: 78, column: 29, scope: !476)
!481 = !DILocation(line: 78, column: 9, scope: !476)
!482 = !DILocation(line: 79, column: 16, scope: !476)
!483 = !DILocation(line: 79, column: 9, scope: !476)
!484 = !DILocation(line: 82, column: 5, scope: !377)
!485 = !DILocation(line: 83, column: 1, scope: !377)
!486 = distinct !DISubprogram(name: "nn_ep_handler", scope: !2, file: !2, line: 138, type: !48, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !32, retainedNodes: !403)
!487 = !DILocalVariable(name: "self", arg: 1, scope: !486, file: !2, line: 138, type: !50)
!488 = !DILocation(line: 138, column: 43, scope: !486)
!489 = !DILocalVariable(name: "src", arg: 2, scope: !486, file: !2, line: 138, type: !36)
!490 = !DILocation(line: 138, column: 53, scope: !486)
!491 = !DILocalVariable(name: "type", arg: 3, scope: !486, file: !2, line: 138, type: !36)
!492 = !DILocation(line: 138, column: 62, scope: !486)
!493 = !DILocalVariable(name: "srcptr", arg: 4, scope: !486, file: !2, line: 138, type: !35)
!494 = !DILocation(line: 138, column: 74, scope: !486)
!495 = !DILocalVariable(name: "ep", scope: !486, file: !2, line: 140, type: !37)
!496 = !DILocation(line: 140, column: 19, scope: !486)
!497 = !DILocation(line: 142, column: 10, scope: !486)
!498 = !DILocation(line: 142, column: 8, scope: !486)
!499 = !DILocation(line: 147, column: 9, scope: !500)
!500 = distinct !DILexicalBlock(scope: !486, file: !2, line: 147, column: 9)
!501 = !DILocation(line: 0, scope: !500)
!502 = !DILocation(line: 147, column: 9, scope: !486)
!503 = !DILocation(line: 148, column: 9, scope: !504)
!504 = distinct !DILexicalBlock(scope: !500, file: !2, line: 147, column: 64)
!505 = !DILocation(line: 148, column: 13, scope: !504)
!506 = !DILocation(line: 148, column: 21, scope: !504)
!507 = !DILocation(line: 148, column: 28, scope: !504)
!508 = !DILocation(line: 148, column: 34, scope: !504)
!509 = !DILocation(line: 148, column: 38, scope: !504)
!510 = !DILocation(line: 149, column: 9, scope: !504)
!511 = !DILocation(line: 149, column: 13, scope: !504)
!512 = !DILocation(line: 149, column: 19, scope: !504)
!513 = !DILocation(line: 150, column: 9, scope: !504)
!514 = !DILocation(line: 152, column: 9, scope: !515)
!515 = distinct !DILexicalBlock(scope: !486, file: !2, line: 152, column: 9)
!516 = !DILocation(line: 152, column: 9, scope: !486)
!517 = !DILocation(line: 153, column: 13, scope: !518)
!518 = distinct !DILexicalBlock(scope: !519, file: !2, line: 153, column: 13)
!519 = distinct !DILexicalBlock(scope: !515, file: !2, line: 152, column: 54)
!520 = !DILocation(line: 153, column: 17, scope: !518)
!521 = !DILocation(line: 153, column: 34, scope: !518)
!522 = !DILocation(line: 153, column: 37, scope: !518)
!523 = !DILocation(line: 153, column: 42, scope: !518)
!524 = !DILocation(line: 153, column: 13, scope: !519)
!525 = !DILocation(line: 154, column: 13, scope: !518)
!526 = !DILocation(line: 155, column: 9, scope: !519)
!527 = !DILocation(line: 155, column: 13, scope: !519)
!528 = !DILocation(line: 155, column: 19, scope: !519)
!529 = !DILocation(line: 156, column: 26, scope: !519)
!530 = !DILocation(line: 156, column: 30, scope: !519)
!531 = !DILocation(line: 156, column: 9, scope: !519)
!532 = !DILocation(line: 157, column: 9, scope: !519)
!533 = !DILocation(line: 160, column: 13, scope: !486)
!534 = !DILocation(line: 160, column: 17, scope: !486)
!535 = !DILocation(line: 160, column: 5, scope: !486)
!536 = !DILocation(line: 166, column: 17, scope: !537)
!537 = distinct !DILexicalBlock(scope: !486, file: !2, line: 160, column: 24)
!538 = !DILocation(line: 166, column: 9, scope: !537)
!539 = !DILocation(line: 169, column: 21, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !2, line: 166, column: 22)
!541 = !DILocation(line: 169, column: 13, scope: !540)
!542 = !DILocation(line: 171, column: 17, scope: !543)
!543 = distinct !DILexicalBlock(scope: !540, file: !2, line: 169, column: 27)
!544 = !DILocation(line: 171, column: 21, scope: !543)
!545 = !DILocation(line: 171, column: 27, scope: !543)
!546 = !DILocation(line: 172, column: 17, scope: !543)
!547 = !DILocation(line: 174, column: 17, scope: !543)
!548 = !DILocation(line: 174, column: 17, scope: !549)
!549 = distinct !DILexicalBlock(scope: !550, file: !2, line: 174, column: 17)
!550 = distinct !DILexicalBlock(scope: !551, file: !2, line: 174, column: 17)
!551 = distinct !DILexicalBlock(scope: !543, file: !2, line: 174, column: 17)
!552 = !DILocation(line: 175, column: 13, scope: !543)
!553 = !DILocation(line: 178, column: 13, scope: !540)
!554 = !DILocation(line: 178, column: 13, scope: !555)
!555 = distinct !DILexicalBlock(scope: !556, file: !2, line: 178, column: 13)
!556 = distinct !DILexicalBlock(scope: !557, file: !2, line: 178, column: 13)
!557 = distinct !DILexicalBlock(scope: !540, file: !2, line: 178, column: 13)
!558 = !DILocation(line: 179, column: 9, scope: !540)
!559 = !DILocation(line: 187, column: 9, scope: !537)
!560 = !DILocation(line: 187, column: 9, scope: !561)
!561 = distinct !DILexicalBlock(scope: !562, file: !2, line: 187, column: 9)
!562 = distinct !DILexicalBlock(scope: !563, file: !2, line: 187, column: 9)
!563 = distinct !DILexicalBlock(scope: !537, file: !2, line: 187, column: 9)
!564 = !DILocation(line: 187, column: 9, scope: !563)
!565 = !DILocation(line: 193, column: 9, scope: !537)
!566 = !DILocation(line: 193, column: 9, scope: !567)
!567 = distinct !DILexicalBlock(scope: !568, file: !2, line: 193, column: 9)
!568 = distinct !DILexicalBlock(scope: !569, file: !2, line: 193, column: 9)
!569 = distinct !DILexicalBlock(scope: !537, file: !2, line: 193, column: 9)
!570 = !DILocation(line: 194, column: 5, scope: !537)
!571 = !DILocation(line: 195, column: 1, scope: !486)
!572 = distinct !DISubprogram(name: "nn_ep_term", scope: !2, file: !2, line: 85, type: !573, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!573 = !DISubroutineType(types: !574)
!574 = !{null, !37}
!575 = !DILocalVariable(name: "self", arg: 1, scope: !572, file: !2, line: 85, type: !37)
!576 = !DILocation(line: 85, column: 32, scope: !572)
!577 = !DILocation(line: 87, column: 5, scope: !572)
!578 = !DILocation(line: 87, column: 5, scope: !579)
!579 = distinct !DILexicalBlock(scope: !580, file: !2, line: 87, column: 5)
!580 = distinct !DILexicalBlock(scope: !572, file: !2, line: 87, column: 5)
!581 = !DILocation(line: 87, column: 5, scope: !580)
!582 = !DILocation(line: 87, column: 5, scope: !583)
!583 = distinct !DILexicalBlock(scope: !579, file: !2, line: 87, column: 5)
!584 = !DILocation(line: 89, column: 5, scope: !572)
!585 = !DILocation(line: 89, column: 11, scope: !572)
!586 = !DILocation(line: 89, column: 19, scope: !572)
!587 = !DILocation(line: 89, column: 26, scope: !572)
!588 = !DILocation(line: 89, column: 35, scope: !572)
!589 = !DILocation(line: 89, column: 41, scope: !572)
!590 = !DILocation(line: 90, column: 25, scope: !572)
!591 = !DILocation(line: 90, column: 31, scope: !572)
!592 = !DILocation(line: 90, column: 5, scope: !572)
!593 = !DILocation(line: 91, column: 19, scope: !572)
!594 = !DILocation(line: 91, column: 25, scope: !572)
!595 = !DILocation(line: 91, column: 5, scope: !572)
!596 = !DILocation(line: 92, column: 1, scope: !572)
!597 = distinct !DISubprogram(name: "nn_ep_start", scope: !2, file: !2, line: 94, type: !573, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!598 = !DILocalVariable(name: "self", arg: 1, scope: !597, file: !2, line: 94, type: !37)
!599 = !DILocation(line: 94, column: 33, scope: !597)
!600 = !DILocation(line: 96, column: 20, scope: !597)
!601 = !DILocation(line: 96, column: 26, scope: !597)
!602 = !DILocation(line: 96, column: 5, scope: !597)
!603 = !DILocation(line: 97, column: 1, scope: !597)
!604 = distinct !DISubprogram(name: "nn_ep_stop", scope: !2, file: !2, line: 99, type: !573, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!605 = !DILocalVariable(name: "self", arg: 1, scope: !604, file: !2, line: 99, type: !37)
!606 = !DILocation(line: 99, column: 32, scope: !604)
!607 = !DILocation(line: 101, column: 19, scope: !604)
!608 = !DILocation(line: 101, column: 25, scope: !604)
!609 = !DILocation(line: 101, column: 5, scope: !604)
!610 = !DILocation(line: 102, column: 1, scope: !604)
!611 = distinct !DISubprogram(name: "nn_ep_stopped", scope: !2, file: !2, line: 104, type: !573, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!612 = !DILocalVariable(name: "self", arg: 1, scope: !611, file: !2, line: 104, type: !37)
!613 = !DILocation(line: 104, column: 35, scope: !611)
!614 = !DILocation(line: 107, column: 30, scope: !611)
!615 = !DILocation(line: 107, column: 36, scope: !611)
!616 = !DILocation(line: 107, column: 5, scope: !611)
!617 = !DILocation(line: 107, column: 11, scope: !611)
!618 = !DILocation(line: 107, column: 15, scope: !611)
!619 = !DILocation(line: 107, column: 23, scope: !611)
!620 = !DILocation(line: 107, column: 27, scope: !611)
!621 = !DILocation(line: 108, column: 5, scope: !611)
!622 = !DILocation(line: 108, column: 11, scope: !611)
!623 = !DILocation(line: 108, column: 15, scope: !611)
!624 = !DILocation(line: 108, column: 23, scope: !611)
!625 = !DILocation(line: 108, column: 27, scope: !611)
!626 = !DILocation(line: 109, column: 5, scope: !611)
!627 = !DILocation(line: 109, column: 11, scope: !611)
!628 = !DILocation(line: 109, column: 15, scope: !611)
!629 = !DILocation(line: 109, column: 23, scope: !611)
!630 = !DILocation(line: 109, column: 30, scope: !611)
!631 = !DILocation(line: 110, column: 5, scope: !611)
!632 = !DILocation(line: 110, column: 11, scope: !611)
!633 = !DILocation(line: 110, column: 15, scope: !611)
!634 = !DILocation(line: 110, column: 23, scope: !611)
!635 = !DILocation(line: 110, column: 28, scope: !611)
!636 = !DILocation(line: 111, column: 19, scope: !611)
!637 = !DILocation(line: 111, column: 25, scope: !611)
!638 = !DILocation(line: 111, column: 29, scope: !611)
!639 = !DILocation(line: 111, column: 35, scope: !611)
!640 = !DILocation(line: 111, column: 41, scope: !611)
!641 = !DILocation(line: 111, column: 45, scope: !611)
!642 = !DILocation(line: 111, column: 5, scope: !611)
!643 = !DILocation(line: 112, column: 1, scope: !611)
!644 = distinct !DISubprogram(name: "nn_ep_getctx", scope: !2, file: !2, line: 114, type: !645, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!645 = !DISubroutineType(types: !646)
!646 = !{!56, !37}
!647 = !DILocalVariable(name: "self", arg: 1, scope: !644, file: !2, line: 114, type: !37)
!648 = !DILocation(line: 114, column: 44, scope: !644)
!649 = !DILocation(line: 116, column: 28, scope: !644)
!650 = !DILocation(line: 116, column: 34, scope: !644)
!651 = !DILocation(line: 116, column: 12, scope: !644)
!652 = !DILocation(line: 116, column: 5, scope: !644)
!653 = distinct !DISubprogram(name: "nn_ep_getaddr", scope: !2, file: !2, line: 119, type: !654, scopeLine: 120, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!654 = !DISubroutineType(types: !655)
!655 = !{!384, !37}
!656 = !DILocalVariable(name: "self", arg: 1, scope: !653, file: !2, line: 119, type: !37)
!657 = !DILocation(line: 119, column: 42, scope: !653)
!658 = !DILocation(line: 121, column: 12, scope: !653)
!659 = !DILocation(line: 121, column: 18, scope: !653)
!660 = !DILocation(line: 121, column: 5, scope: !653)
!661 = distinct !DISubprogram(name: "nn_ep_getopt", scope: !2, file: !2, line: 124, type: !662, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!662 = !DISubroutineType(types: !663)
!663 = !{null, !37, !36, !36, !35, !291}
!664 = !DILocalVariable(name: "self", arg: 1, scope: !661, file: !2, line: 124, type: !37)
!665 = !DILocation(line: 124, column: 34, scope: !661)
!666 = !DILocalVariable(name: "level", arg: 2, scope: !661, file: !2, line: 124, type: !36)
!667 = !DILocation(line: 124, column: 44, scope: !661)
!668 = !DILocalVariable(name: "option", arg: 3, scope: !661, file: !2, line: 124, type: !36)
!669 = !DILocation(line: 124, column: 55, scope: !661)
!670 = !DILocalVariable(name: "optval", arg: 4, scope: !661, file: !2, line: 125, type: !35)
!671 = !DILocation(line: 125, column: 11, scope: !661)
!672 = !DILocalVariable(name: "optvallen", arg: 5, scope: !661, file: !2, line: 125, type: !291)
!673 = !DILocation(line: 125, column: 27, scope: !661)
!674 = !DILocalVariable(name: "rc", scope: !661, file: !2, line: 127, type: !36)
!675 = !DILocation(line: 127, column: 9, scope: !661)
!676 = !DILocation(line: 129, column: 32, scope: !661)
!677 = !DILocation(line: 129, column: 38, scope: !661)
!678 = !DILocation(line: 129, column: 44, scope: !661)
!679 = !DILocation(line: 129, column: 51, scope: !661)
!680 = !DILocation(line: 129, column: 59, scope: !661)
!681 = !DILocation(line: 129, column: 67, scope: !661)
!682 = !DILocation(line: 129, column: 10, scope: !661)
!683 = !DILocation(line: 129, column: 8, scope: !661)
!684 = !DILocation(line: 130, column: 5, scope: !661)
!685 = !DILocation(line: 130, column: 5, scope: !686)
!686 = distinct !DILexicalBlock(scope: !687, file: !2, line: 130, column: 5)
!687 = distinct !DILexicalBlock(scope: !661, file: !2, line: 130, column: 5)
!688 = !DILocation(line: 130, column: 5, scope: !687)
!689 = !DILocation(line: 130, column: 5, scope: !690)
!690 = distinct !DILexicalBlock(scope: !686, file: !2, line: 130, column: 5)
!691 = !DILocation(line: 131, column: 1, scope: !661)
!692 = distinct !DISubprogram(name: "nn_ep_ispeer", scope: !2, file: !2, line: 133, type: !693, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !403)
!693 = !DISubroutineType(types: !694)
!694 = !{!36, !37, !36}
!695 = !DILocalVariable(name: "self", arg: 1, scope: !692, file: !2, line: 133, type: !37)
!696 = !DILocation(line: 133, column: 33, scope: !692)
!697 = !DILocalVariable(name: "socktype", arg: 2, scope: !692, file: !2, line: 133, type: !36)
!698 = !DILocation(line: 133, column: 43, scope: !692)
!699 = !DILocation(line: 135, column: 28, scope: !692)
!700 = !DILocation(line: 135, column: 34, scope: !692)
!701 = !DILocation(line: 135, column: 40, scope: !692)
!702 = !DILocation(line: 135, column: 12, scope: !692)
!703 = !DILocation(line: 135, column: 5, scope: !692)
