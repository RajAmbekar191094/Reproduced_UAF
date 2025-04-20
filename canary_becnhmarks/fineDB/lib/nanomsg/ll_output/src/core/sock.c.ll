; ModuleID = './src/core/sock.c'
source_filename = "./src/core/sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nn_socktype = type { i32, i32, i32, ptr, ptr, %struct.nn_list_item }
%struct.nn_list_item = type { ptr, ptr }
%struct.nn_sock = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_ctx, %struct.nn_efd, %struct.nn_efd, %struct.nn_sem, %struct.nn_clock, %struct.nn_list, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x ptr] }
%struct.nn_fsm = type { ptr, i32, i32, ptr, ptr, ptr, %struct.nn_fsm_event }
%struct.nn_fsm_event = type { ptr, i32, ptr, i32, %struct.nn_queue_item }
%struct.nn_queue_item = type { ptr }
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
%struct.nn_sockbase = type { ptr, ptr }
%struct.nn_sockbase_vfptr = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nn_ep = type { %struct.nn_fsm, i32, ptr, ptr, i32, %struct.nn_list_item, [129 x i8] }
%struct.nn_optset = type { ptr }
%struct.nn_optset_vfptr = type { ptr, ptr, ptr }
%struct.nn_transport = type { ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.nn_list_item }

@stderr = external global ptr, align 8
@.str = private unnamed_addr constant [30 x i8] c"Assertion failed: %s (%s:%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [93 x i8] c"!(socktype->flags & NN_SOCKTYPE_FLAG_NOSEND) || !(socktype->flags & NN_SOCKTYPE_FLAG_NORECV)\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [18 x i8] c"./src/core/sock.c\00", align 1, !dbg !12
@.str.3 = private unnamed_addr constant [17 x i8] c"%s [%d] (%s:%d)\0A\00", align 1, !dbg !17
@.str.4 = private unnamed_addr constant [2 x i8] c"0\00", align 1, !dbg !22
@.str.5 = private unnamed_addr constant [7 x i8] c"rc < 0\00", align 1, !dbg !27
@.str.6 = private unnamed_addr constant [75 x i8] c"sock->state == NN_SOCK_STATE_ACTIVE || sock->state == NN_SOCK_STATE_ZOMBIE\00", align 1, !dbg !32
@.str.7 = private unnamed_addr constant [22 x i8] c"type == NN_EP_STOPPED\00", align 1, !dbg !37
@.str.8 = private unnamed_addr constant [55 x i8] c"src == NN_FSM_ACTION && type == NN_SOCK_ACTION_STOPPED\00", align 1, !dbg !42

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_init(ptr noundef %0, ptr noundef %1) #0 !dbg !396 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !400, metadata !DIExpression()), !dbg !401
  store ptr %1, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !402, metadata !DIExpression()), !dbg !403
  call void @llvm.dbg.declare(metadata ptr %6, metadata !404, metadata !DIExpression()), !dbg !405
  call void @llvm.dbg.declare(metadata ptr %7, metadata !406, metadata !DIExpression()), !dbg !407
  br label %8, !dbg !408

8:                                                ; preds = %2
  %9 = load ptr, ptr %5, align 8, !dbg !409
  %10 = getelementptr inbounds %struct.nn_socktype, ptr %9, i32 0, i32 2, !dbg !409
  %11 = load i32, ptr %10, align 8, !dbg !409
  %12 = and i32 %11, 2, !dbg !409
  %13 = icmp ne i32 %12, 0, !dbg !409
  br i1 %13, label %14, label %21, !dbg !409

14:                                               ; preds = %8
  %15 = load ptr, ptr %5, align 8, !dbg !409
  %16 = getelementptr inbounds %struct.nn_socktype, ptr %15, i32 0, i32 2, !dbg !409
  %17 = load i32, ptr %16, align 8, !dbg !409
  %18 = and i32 %17, 1, !dbg !409
  %19 = icmp ne i32 %18, 0, !dbg !409
  %20 = xor i1 %19, true, !dbg !409
  br label %21, !dbg !409

21:                                               ; preds = %14, %8
  %22 = phi i1 [ true, %8 ], [ %20, %14 ]
  %23 = xor i1 %22, true, !dbg !409
  %24 = zext i1 %23 to i32, !dbg !409
  %25 = sext i32 %24 to i64, !dbg !409
  %26 = icmp ne i64 %25, 0, !dbg !409
  br i1 %26, label %27, label %30, !dbg !412

27:                                               ; preds = %21
  %28 = load ptr, ptr @stderr, align 8, !dbg !413
  %29 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %28, ptr noundef @.str, ptr noundef @.str.1, ptr noundef @.str.2, i32 noundef 72), !dbg !413
  call void @nn_err_abort() #6, !dbg !413
  unreachable, !dbg !413

30:                                               ; preds = %21
  br label %31, !dbg !412

31:                                               ; preds = %30
  %32 = load ptr, ptr %4, align 8, !dbg !415
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 5, !dbg !416
  %34 = call ptr (...) @nn_global_getpool(), !dbg !417
  call void @nn_ctx_init(ptr noundef %33, ptr noundef %34, ptr noundef @nn_sock_onleave), !dbg !418
  %35 = load ptr, ptr %4, align 8, !dbg !419
  %36 = getelementptr inbounds %struct.nn_sock, ptr %35, i32 0, i32 0, !dbg !420
  %37 = load ptr, ptr %4, align 8, !dbg !421
  %38 = getelementptr inbounds %struct.nn_sock, ptr %37, i32 0, i32 5, !dbg !422
  call void @nn_fsm_init_root(ptr noundef %36, ptr noundef @nn_sock_handler, ptr noundef %38), !dbg !423
  %39 = load ptr, ptr %4, align 8, !dbg !424
  %40 = getelementptr inbounds %struct.nn_sock, ptr %39, i32 0, i32 1, !dbg !425
  store i32 1, ptr %40, align 8, !dbg !426
  %41 = load ptr, ptr %5, align 8, !dbg !427
  %42 = getelementptr inbounds %struct.nn_socktype, ptr %41, i32 0, i32 2, !dbg !429
  %43 = load i32, ptr %42, align 8, !dbg !429
  %44 = and i32 %43, 2, !dbg !430
  %45 = icmp ne i32 %44, 0, !dbg !430
  br i1 %45, label %46, label %49, !dbg !431

46:                                               ; preds = %31
  %47 = load ptr, ptr %4, align 8, !dbg !432
  %48 = getelementptr inbounds %struct.nn_sock, ptr %47, i32 0, i32 6, !dbg !433
  call void @llvm.memset.p0.i64(ptr align 8 %48, i8 -51, i64 8, i1 false), !dbg !434
  br label %61, !dbg !434

49:                                               ; preds = %31
  %50 = load ptr, ptr %4, align 8, !dbg !435
  %51 = getelementptr inbounds %struct.nn_sock, ptr %50, i32 0, i32 6, !dbg !437
  %52 = call i32 @nn_efd_init(ptr noundef %51), !dbg !438
  store i32 %52, ptr %6, align 4, !dbg !439
  %53 = load i32, ptr %6, align 4, !dbg !440
  %54 = icmp slt i32 %53, 0, !dbg !440
  %55 = zext i1 %54 to i32, !dbg !440
  %56 = sext i32 %55 to i64, !dbg !440
  %57 = icmp ne i64 %56, 0, !dbg !440
  br i1 %57, label %58, label %60, !dbg !442

58:                                               ; preds = %49
  %59 = load i32, ptr %6, align 4, !dbg !443
  store i32 %59, ptr %3, align 4, !dbg !444
  br label %192, !dbg !444

60:                                               ; preds = %49
  br label %61

61:                                               ; preds = %60, %46
  %62 = load ptr, ptr %5, align 8, !dbg !445
  %63 = getelementptr inbounds %struct.nn_socktype, ptr %62, i32 0, i32 2, !dbg !447
  %64 = load i32, ptr %63, align 8, !dbg !447
  %65 = and i32 %64, 1, !dbg !448
  %66 = icmp ne i32 %65, 0, !dbg !448
  br i1 %66, label %67, label %70, !dbg !449

67:                                               ; preds = %61
  %68 = load ptr, ptr %4, align 8, !dbg !450
  %69 = getelementptr inbounds %struct.nn_sock, ptr %68, i32 0, i32 7, !dbg !451
  call void @llvm.memset.p0.i64(ptr align 8 %69, i8 -51, i64 8, i1 false), !dbg !452
  br label %91, !dbg !452

70:                                               ; preds = %61
  %71 = load ptr, ptr %4, align 8, !dbg !453
  %72 = getelementptr inbounds %struct.nn_sock, ptr %71, i32 0, i32 7, !dbg !455
  %73 = call i32 @nn_efd_init(ptr noundef %72), !dbg !456
  store i32 %73, ptr %6, align 4, !dbg !457
  %74 = load i32, ptr %6, align 4, !dbg !458
  %75 = icmp slt i32 %74, 0, !dbg !458
  %76 = zext i1 %75 to i32, !dbg !458
  %77 = sext i32 %76 to i64, !dbg !458
  %78 = icmp ne i64 %77, 0, !dbg !458
  br i1 %78, label %79, label %90, !dbg !460

79:                                               ; preds = %70
  %80 = load ptr, ptr %5, align 8, !dbg !461
  %81 = getelementptr inbounds %struct.nn_socktype, ptr %80, i32 0, i32 2, !dbg !464
  %82 = load i32, ptr %81, align 8, !dbg !464
  %83 = and i32 %82, 2, !dbg !465
  %84 = icmp ne i32 %83, 0, !dbg !465
  br i1 %84, label %88, label %85, !dbg !466

85:                                               ; preds = %79
  %86 = load ptr, ptr %4, align 8, !dbg !467
  %87 = getelementptr inbounds %struct.nn_sock, ptr %86, i32 0, i32 6, !dbg !468
  call void @nn_efd_term(ptr noundef %87), !dbg !469
  br label %88, !dbg !469

88:                                               ; preds = %85, %79
  %89 = load i32, ptr %6, align 4, !dbg !470
  store i32 %89, ptr %3, align 4, !dbg !471
  br label %192, !dbg !471

90:                                               ; preds = %70
  br label %91

91:                                               ; preds = %90, %67
  %92 = load ptr, ptr %4, align 8, !dbg !472
  %93 = getelementptr inbounds %struct.nn_sock, ptr %92, i32 0, i32 8, !dbg !473
  call void @nn_sem_init(ptr noundef %93), !dbg !474
  %94 = load i32, ptr %6, align 4, !dbg !475
  %95 = icmp slt i32 %94, 0, !dbg !475
  %96 = zext i1 %95 to i32, !dbg !475
  %97 = sext i32 %96 to i64, !dbg !475
  %98 = icmp ne i64 %97, 0, !dbg !475
  br i1 %98, label %99, label %119, !dbg !477

99:                                               ; preds = %91
  %100 = load ptr, ptr %5, align 8, !dbg !478
  %101 = getelementptr inbounds %struct.nn_socktype, ptr %100, i32 0, i32 2, !dbg !481
  %102 = load i32, ptr %101, align 8, !dbg !481
  %103 = and i32 %102, 1, !dbg !482
  %104 = icmp ne i32 %103, 0, !dbg !482
  br i1 %104, label %108, label %105, !dbg !483

105:                                              ; preds = %99
  %106 = load ptr, ptr %4, align 8, !dbg !484
  %107 = getelementptr inbounds %struct.nn_sock, ptr %106, i32 0, i32 7, !dbg !485
  call void @nn_efd_term(ptr noundef %107), !dbg !486
  br label %108, !dbg !486

108:                                              ; preds = %105, %99
  %109 = load ptr, ptr %5, align 8, !dbg !487
  %110 = getelementptr inbounds %struct.nn_socktype, ptr %109, i32 0, i32 2, !dbg !489
  %111 = load i32, ptr %110, align 8, !dbg !489
  %112 = and i32 %111, 2, !dbg !490
  %113 = icmp ne i32 %112, 0, !dbg !490
  br i1 %113, label %117, label %114, !dbg !491

114:                                              ; preds = %108
  %115 = load ptr, ptr %4, align 8, !dbg !492
  %116 = getelementptr inbounds %struct.nn_sock, ptr %115, i32 0, i32 6, !dbg !493
  call void @nn_efd_term(ptr noundef %116), !dbg !494
  br label %117, !dbg !494

117:                                              ; preds = %114, %108
  %118 = load i32, ptr %6, align 4, !dbg !495
  store i32 %118, ptr %3, align 4, !dbg !496
  br label %192, !dbg !496

119:                                              ; preds = %91
  %120 = load ptr, ptr %4, align 8, !dbg !497
  %121 = getelementptr inbounds %struct.nn_sock, ptr %120, i32 0, i32 4, !dbg !498
  store i32 0, ptr %121, align 8, !dbg !499
  %122 = load ptr, ptr %4, align 8, !dbg !500
  %123 = getelementptr inbounds %struct.nn_sock, ptr %122, i32 0, i32 9, !dbg !501
  call void @nn_clock_init(ptr noundef %123), !dbg !502
  %124 = load ptr, ptr %4, align 8, !dbg !503
  %125 = getelementptr inbounds %struct.nn_sock, ptr %124, i32 0, i32 10, !dbg !504
  call void @nn_list_init(ptr noundef %125), !dbg !505
  %126 = load ptr, ptr %4, align 8, !dbg !506
  %127 = getelementptr inbounds %struct.nn_sock, ptr %126, i32 0, i32 11, !dbg !507
  store i32 1, ptr %127, align 8, !dbg !508
  %128 = load ptr, ptr %4, align 8, !dbg !509
  %129 = getelementptr inbounds %struct.nn_sock, ptr %128, i32 0, i32 12, !dbg !510
  store i32 1000, ptr %129, align 4, !dbg !511
  %130 = load ptr, ptr %4, align 8, !dbg !512
  %131 = getelementptr inbounds %struct.nn_sock, ptr %130, i32 0, i32 13, !dbg !513
  store i32 131072, ptr %131, align 8, !dbg !514
  %132 = load ptr, ptr %4, align 8, !dbg !515
  %133 = getelementptr inbounds %struct.nn_sock, ptr %132, i32 0, i32 14, !dbg !516
  store i32 131072, ptr %133, align 4, !dbg !517
  %134 = load ptr, ptr %4, align 8, !dbg !518
  %135 = getelementptr inbounds %struct.nn_sock, ptr %134, i32 0, i32 15, !dbg !519
  store i32 -1, ptr %135, align 8, !dbg !520
  %136 = load ptr, ptr %4, align 8, !dbg !521
  %137 = getelementptr inbounds %struct.nn_sock, ptr %136, i32 0, i32 16, !dbg !522
  store i32 -1, ptr %137, align 4, !dbg !523
  %138 = load ptr, ptr %4, align 8, !dbg !524
  %139 = getelementptr inbounds %struct.nn_sock, ptr %138, i32 0, i32 17, !dbg !525
  store i32 100, ptr %139, align 8, !dbg !526
  %140 = load ptr, ptr %4, align 8, !dbg !527
  %141 = getelementptr inbounds %struct.nn_sock, ptr %140, i32 0, i32 18, !dbg !528
  store i32 0, ptr %141, align 4, !dbg !529
  %142 = load ptr, ptr %4, align 8, !dbg !530
  %143 = getelementptr inbounds %struct.nn_sock, ptr %142, i32 0, i32 19, !dbg !531
  store i32 8, ptr %143, align 8, !dbg !532
  %144 = load ptr, ptr %4, align 8, !dbg !533
  %145 = getelementptr inbounds %struct.nn_sock, ptr %144, i32 0, i32 20, !dbg !534
  store i32 1, ptr %145, align 4, !dbg !535
  store i32 0, ptr %7, align 4, !dbg !536
  br label %146, !dbg !538

146:                                              ; preds = %155, %119
  %147 = load i32, ptr %7, align 4, !dbg !539
  %148 = icmp ne i32 %147, 3, !dbg !541
  br i1 %148, label %149, label %158, !dbg !542

149:                                              ; preds = %146
  %150 = load ptr, ptr %4, align 8, !dbg !543
  %151 = getelementptr inbounds %struct.nn_sock, ptr %150, i32 0, i32 21, !dbg !544
  %152 = load i32, ptr %7, align 4, !dbg !545
  %153 = sext i32 %152 to i64, !dbg !543
  %154 = getelementptr inbounds [3 x ptr], ptr %151, i64 0, i64 %153, !dbg !543
  store ptr null, ptr %154, align 8, !dbg !546
  br label %155, !dbg !543

155:                                              ; preds = %149
  %156 = load i32, ptr %7, align 4, !dbg !547
  %157 = add nsw i32 %156, 1, !dbg !547
  store i32 %157, ptr %7, align 4, !dbg !547
  br label %146, !dbg !548, !llvm.loop !549

158:                                              ; preds = %146
  %159 = load ptr, ptr %5, align 8, !dbg !552
  %160 = getelementptr inbounds %struct.nn_socktype, ptr %159, i32 0, i32 3, !dbg !553
  %161 = load ptr, ptr %160, align 8, !dbg !553
  %162 = load ptr, ptr %4, align 8, !dbg !554
  %163 = load ptr, ptr %4, align 8, !dbg !555
  %164 = getelementptr inbounds %struct.nn_sock, ptr %163, i32 0, i32 2, !dbg !556
  %165 = call i32 %161(ptr noundef %162, ptr noundef %164), !dbg !552
  store i32 %165, ptr %6, align 4, !dbg !557
  br label %166, !dbg !558

166:                                              ; preds = %158
  %167 = load i32, ptr %6, align 4, !dbg !559
  %168 = icmp eq i32 %167, 0, !dbg !559
  %169 = xor i1 %168, true, !dbg !559
  %170 = zext i1 %169 to i32, !dbg !559
  %171 = sext i32 %170 to i64, !dbg !559
  %172 = icmp ne i64 %171, 0, !dbg !559
  br i1 %172, label %173, label %181, !dbg !562

173:                                              ; preds = %166
  %174 = load ptr, ptr @stderr, align 8, !dbg !563
  %175 = load i32, ptr %6, align 4, !dbg !563
  %176 = sub nsw i32 0, %175, !dbg !563
  %177 = call ptr @nn_err_strerror(i32 noundef %176), !dbg !563
  %178 = load i32, ptr %6, align 4, !dbg !563
  %179 = sub nsw i32 0, %178, !dbg !563
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %174, ptr noundef @.str.3, ptr noundef %177, i32 noundef %179, ptr noundef @.str.2, i32 noundef 132), !dbg !563
  call void @nn_err_abort() #6, !dbg !563
  unreachable, !dbg !563

181:                                              ; preds = %166
  br label %182, !dbg !562

182:                                              ; preds = %181
  %183 = load ptr, ptr %5, align 8, !dbg !565
  %184 = load ptr, ptr %4, align 8, !dbg !566
  %185 = getelementptr inbounds %struct.nn_sock, ptr %184, i32 0, i32 3, !dbg !567
  store ptr %183, ptr %185, align 8, !dbg !568
  %186 = load ptr, ptr %4, align 8, !dbg !569
  %187 = getelementptr inbounds %struct.nn_sock, ptr %186, i32 0, i32 5, !dbg !570
  call void @nn_ctx_enter(ptr noundef %187), !dbg !571
  %188 = load ptr, ptr %4, align 8, !dbg !572
  %189 = getelementptr inbounds %struct.nn_sock, ptr %188, i32 0, i32 0, !dbg !573
  call void @nn_fsm_start(ptr noundef %189), !dbg !574
  %190 = load ptr, ptr %4, align 8, !dbg !575
  %191 = getelementptr inbounds %struct.nn_sock, ptr %190, i32 0, i32 5, !dbg !576
  call void @nn_ctx_leave(ptr noundef %191), !dbg !577
  store i32 0, ptr %3, align 4, !dbg !578
  br label %192, !dbg !578

192:                                              ; preds = %182, %117, %88, %58
  %193 = load i32, ptr %3, align 4, !dbg !579
  ret i32 %193, !dbg !579
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @fprintf(ptr noundef, ptr noundef, ...) #2

; Function Attrs: noreturn
declare void @nn_err_abort() #3

declare void @nn_ctx_init(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_global_getpool(...) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sock_onleave(ptr noundef %0) #0 !dbg !580 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !581, metadata !DIExpression()), !dbg !582
  call void @llvm.dbg.declare(metadata ptr %3, metadata !583, metadata !DIExpression()), !dbg !584
  call void @llvm.dbg.declare(metadata ptr %4, metadata !585, metadata !DIExpression()), !dbg !586
  %5 = load ptr, ptr %2, align 8, !dbg !587
  %6 = icmp ne ptr %5, null, !dbg !587
  br i1 %6, label %7, label %10, !dbg !587

7:                                                ; preds = %1
  %8 = load ptr, ptr %2, align 8, !dbg !587
  %9 = getelementptr inbounds i8, ptr %8, i64 -112, !dbg !587
  br label %11, !dbg !587

10:                                               ; preds = %1
  br label %11, !dbg !587

11:                                               ; preds = %10, %7
  %12 = phi ptr [ %9, %7 ], [ null, %10 ], !dbg !587
  store ptr %12, ptr %3, align 8, !dbg !588
  %13 = load ptr, ptr %3, align 8, !dbg !589
  %14 = getelementptr inbounds %struct.nn_sock, ptr %13, i32 0, i32 1, !dbg !589
  %15 = load i32, ptr %14, align 8, !dbg !589
  %16 = icmp ne i32 %15, 2, !dbg !589
  %17 = zext i1 %16 to i32, !dbg !589
  %18 = sext i32 %17 to i64, !dbg !589
  %19 = icmp ne i64 %18, 0, !dbg !589
  br i1 %19, label %20, label %21, !dbg !591

20:                                               ; preds = %11
  br label %131, !dbg !592

21:                                               ; preds = %11
  %22 = load ptr, ptr %3, align 8, !dbg !593
  %23 = getelementptr inbounds %struct.nn_sock, ptr %22, i32 0, i32 2, !dbg !594
  %24 = load ptr, ptr %23, align 8, !dbg !594
  %25 = getelementptr inbounds %struct.nn_sockbase, ptr %24, i32 0, i32 0, !dbg !595
  %26 = load ptr, ptr %25, align 8, !dbg !595
  %27 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %26, i32 0, i32 6, !dbg !596
  %28 = load ptr, ptr %27, align 8, !dbg !596
  %29 = load ptr, ptr %3, align 8, !dbg !597
  %30 = getelementptr inbounds %struct.nn_sock, ptr %29, i32 0, i32 2, !dbg !598
  %31 = load ptr, ptr %30, align 8, !dbg !598
  %32 = call i32 %28(ptr noundef %31), !dbg !593
  store i32 %32, ptr %4, align 4, !dbg !599
  br label %33, !dbg !600

33:                                               ; preds = %21
  %34 = load i32, ptr %4, align 4, !dbg !601
  %35 = icmp sge i32 %34, 0, !dbg !601
  %36 = xor i1 %35, true, !dbg !601
  %37 = zext i1 %36 to i32, !dbg !601
  %38 = sext i32 %37 to i64, !dbg !601
  %39 = icmp ne i64 %38, 0, !dbg !601
  br i1 %39, label %40, label %48, !dbg !604

40:                                               ; preds = %33
  %41 = load ptr, ptr @stderr, align 8, !dbg !605
  %42 = load i32, ptr %4, align 4, !dbg !605
  %43 = sub nsw i32 0, %42, !dbg !605
  %44 = call ptr @nn_err_strerror(i32 noundef %43), !dbg !605
  %45 = load i32, ptr %4, align 4, !dbg !605
  %46 = sub nsw i32 0, %45, !dbg !605
  %47 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %41, ptr noundef @.str.3, ptr noundef %44, i32 noundef %46, ptr noundef @.str.2, i32 noundef 648), !dbg !605
  call void @nn_err_abort() #6, !dbg !605
  unreachable, !dbg !605

48:                                               ; preds = %33
  br label %49, !dbg !604

49:                                               ; preds = %48
  %50 = load ptr, ptr %3, align 8, !dbg !607
  %51 = getelementptr inbounds %struct.nn_sock, ptr %50, i32 0, i32 3, !dbg !609
  %52 = load ptr, ptr %51, align 8, !dbg !609
  %53 = getelementptr inbounds %struct.nn_socktype, ptr %52, i32 0, i32 2, !dbg !610
  %54 = load i32, ptr %53, align 8, !dbg !610
  %55 = and i32 %54, 1, !dbg !611
  %56 = icmp ne i32 %55, 0, !dbg !611
  br i1 %56, label %90, label %57, !dbg !612

57:                                               ; preds = %49
  %58 = load i32, ptr %4, align 4, !dbg !613
  %59 = and i32 %58, 1, !dbg !616
  %60 = icmp ne i32 %59, 0, !dbg !616
  br i1 %60, label %61, label %75, !dbg !617

61:                                               ; preds = %57
  %62 = load ptr, ptr %3, align 8, !dbg !618
  %63 = getelementptr inbounds %struct.nn_sock, ptr %62, i32 0, i32 4, !dbg !621
  %64 = load i32, ptr %63, align 8, !dbg !621
  %65 = and i32 %64, 1, !dbg !622
  %66 = icmp ne i32 %65, 0, !dbg !622
  br i1 %66, label %74, label %67, !dbg !623

67:                                               ; preds = %61
  %68 = load ptr, ptr %3, align 8, !dbg !624
  %69 = getelementptr inbounds %struct.nn_sock, ptr %68, i32 0, i32 4, !dbg !626
  %70 = load i32, ptr %69, align 8, !dbg !627
  %71 = or i32 %70, 1, !dbg !627
  store i32 %71, ptr %69, align 8, !dbg !627
  %72 = load ptr, ptr %3, align 8, !dbg !628
  %73 = getelementptr inbounds %struct.nn_sock, ptr %72, i32 0, i32 7, !dbg !629
  call void @nn_efd_signal(ptr noundef %73), !dbg !630
  br label %74, !dbg !631

74:                                               ; preds = %67, %61
  br label %89, !dbg !632

75:                                               ; preds = %57
  %76 = load ptr, ptr %3, align 8, !dbg !633
  %77 = getelementptr inbounds %struct.nn_sock, ptr %76, i32 0, i32 4, !dbg !636
  %78 = load i32, ptr %77, align 8, !dbg !636
  %79 = and i32 %78, 1, !dbg !637
  %80 = icmp ne i32 %79, 0, !dbg !637
  br i1 %80, label %81, label %88, !dbg !638

81:                                               ; preds = %75
  %82 = load ptr, ptr %3, align 8, !dbg !639
  %83 = getelementptr inbounds %struct.nn_sock, ptr %82, i32 0, i32 4, !dbg !641
  %84 = load i32, ptr %83, align 8, !dbg !642
  %85 = and i32 %84, -2, !dbg !642
  store i32 %85, ptr %83, align 8, !dbg !642
  %86 = load ptr, ptr %3, align 8, !dbg !643
  %87 = getelementptr inbounds %struct.nn_sock, ptr %86, i32 0, i32 7, !dbg !644
  call void @nn_efd_unsignal(ptr noundef %87), !dbg !645
  br label %88, !dbg !646

88:                                               ; preds = %81, %75
  br label %89

89:                                               ; preds = %88, %74
  br label %90, !dbg !647

90:                                               ; preds = %89, %49
  %91 = load ptr, ptr %3, align 8, !dbg !648
  %92 = getelementptr inbounds %struct.nn_sock, ptr %91, i32 0, i32 3, !dbg !650
  %93 = load ptr, ptr %92, align 8, !dbg !650
  %94 = getelementptr inbounds %struct.nn_socktype, ptr %93, i32 0, i32 2, !dbg !651
  %95 = load i32, ptr %94, align 8, !dbg !651
  %96 = and i32 %95, 2, !dbg !652
  %97 = icmp ne i32 %96, 0, !dbg !652
  br i1 %97, label %131, label %98, !dbg !653

98:                                               ; preds = %90
  %99 = load i32, ptr %4, align 4, !dbg !654
  %100 = and i32 %99, 2, !dbg !657
  %101 = icmp ne i32 %100, 0, !dbg !657
  br i1 %101, label %102, label %116, !dbg !658

102:                                              ; preds = %98
  %103 = load ptr, ptr %3, align 8, !dbg !659
  %104 = getelementptr inbounds %struct.nn_sock, ptr %103, i32 0, i32 4, !dbg !662
  %105 = load i32, ptr %104, align 8, !dbg !662
  %106 = and i32 %105, 2, !dbg !663
  %107 = icmp ne i32 %106, 0, !dbg !663
  br i1 %107, label %115, label %108, !dbg !664

108:                                              ; preds = %102
  %109 = load ptr, ptr %3, align 8, !dbg !665
  %110 = getelementptr inbounds %struct.nn_sock, ptr %109, i32 0, i32 4, !dbg !667
  %111 = load i32, ptr %110, align 8, !dbg !668
  %112 = or i32 %111, 2, !dbg !668
  store i32 %112, ptr %110, align 8, !dbg !668
  %113 = load ptr, ptr %3, align 8, !dbg !669
  %114 = getelementptr inbounds %struct.nn_sock, ptr %113, i32 0, i32 6, !dbg !670
  call void @nn_efd_signal(ptr noundef %114), !dbg !671
  br label %115, !dbg !672

115:                                              ; preds = %108, %102
  br label %130, !dbg !673

116:                                              ; preds = %98
  %117 = load ptr, ptr %3, align 8, !dbg !674
  %118 = getelementptr inbounds %struct.nn_sock, ptr %117, i32 0, i32 4, !dbg !677
  %119 = load i32, ptr %118, align 8, !dbg !677
  %120 = and i32 %119, 2, !dbg !678
  %121 = icmp ne i32 %120, 0, !dbg !678
  br i1 %121, label %122, label %129, !dbg !679

122:                                              ; preds = %116
  %123 = load ptr, ptr %3, align 8, !dbg !680
  %124 = getelementptr inbounds %struct.nn_sock, ptr %123, i32 0, i32 4, !dbg !682
  %125 = load i32, ptr %124, align 8, !dbg !683
  %126 = and i32 %125, -3, !dbg !683
  store i32 %126, ptr %124, align 8, !dbg !683
  %127 = load ptr, ptr %3, align 8, !dbg !684
  %128 = getelementptr inbounds %struct.nn_sock, ptr %127, i32 0, i32 6, !dbg !685
  call void @nn_efd_unsignal(ptr noundef %128), !dbg !686
  br label %129, !dbg !687

129:                                              ; preds = %122, %116
  br label %130

130:                                              ; preds = %129, %115
  br label %131, !dbg !688

131:                                              ; preds = %20, %130, %90
  ret void, !dbg !689
}

declare void @nn_fsm_init_root(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sock_handler(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !690 {
  %5 = alloca ptr, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca ptr, align 8
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !691, metadata !DIExpression()), !dbg !692
  store i32 %1, ptr %6, align 4
  call void @llvm.dbg.declare(metadata ptr %6, metadata !693, metadata !DIExpression()), !dbg !694
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !695, metadata !DIExpression()), !dbg !696
  store ptr %3, ptr %8, align 8
  call void @llvm.dbg.declare(metadata ptr %8, metadata !697, metadata !DIExpression()), !dbg !698
  call void @llvm.dbg.declare(metadata ptr %9, metadata !699, metadata !DIExpression()), !dbg !700
  call void @llvm.dbg.declare(metadata ptr %10, metadata !701, metadata !DIExpression()), !dbg !702
  call void @llvm.dbg.declare(metadata ptr %11, metadata !703, metadata !DIExpression()), !dbg !704
  %12 = load ptr, ptr %5, align 8, !dbg !705
  %13 = icmp ne ptr %12, null, !dbg !705
  br i1 %13, label %14, label %17, !dbg !705

14:                                               ; preds = %4
  %15 = load ptr, ptr %5, align 8, !dbg !705
  %16 = getelementptr inbounds i8, ptr %15, i64 0, !dbg !705
  br label %18, !dbg !705

17:                                               ; preds = %4
  br label %18, !dbg !705

18:                                               ; preds = %17, %14
  %19 = phi ptr [ %16, %14 ], [ null, %17 ], !dbg !705
  store ptr %19, ptr %9, align 8, !dbg !706
  %20 = load i32, ptr %6, align 4, !dbg !707
  %21 = icmp eq i32 %20, -2, !dbg !707
  br i1 %21, label %22, label %25, !dbg !707

22:                                               ; preds = %18
  %23 = load i32, ptr %7, align 4, !dbg !707
  %24 = icmp eq i32 %23, -3, !dbg !707
  br label %25

25:                                               ; preds = %22, %18
  %26 = phi i1 [ false, %18 ], [ %24, %22 ], !dbg !709
  %27 = zext i1 %26 to i32, !dbg !707
  %28 = sext i32 %27 to i64, !dbg !707
  %29 = icmp ne i64 %28, 0, !dbg !707
  br i1 %29, label %30, label %104, !dbg !710

30:                                               ; preds = %25
  br label %31, !dbg !711

31:                                               ; preds = %30
  %32 = load ptr, ptr %9, align 8, !dbg !713
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 1, !dbg !713
  %34 = load i32, ptr %33, align 8, !dbg !713
  %35 = icmp eq i32 %34, 2, !dbg !713
  br i1 %35, label %41, label %36, !dbg !713

36:                                               ; preds = %31
  %37 = load ptr, ptr %9, align 8, !dbg !713
  %38 = getelementptr inbounds %struct.nn_sock, ptr %37, i32 0, i32 1, !dbg !713
  %39 = load i32, ptr %38, align 8, !dbg !713
  %40 = icmp eq i32 %39, 3, !dbg !713
  br label %41, !dbg !713

41:                                               ; preds = %36, %31
  %42 = phi i1 [ true, %31 ], [ %40, %36 ]
  %43 = xor i1 %42, true, !dbg !713
  %44 = zext i1 %43 to i32, !dbg !713
  %45 = sext i32 %44 to i64, !dbg !713
  %46 = icmp ne i64 %45, 0, !dbg !713
  br i1 %46, label %47, label %50, !dbg !716

47:                                               ; preds = %41
  %48 = load ptr, ptr @stderr, align 8, !dbg !717
  %49 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %48, ptr noundef @.str, ptr noundef @.str.6, ptr noundef @.str.2, i32 noundef 724), !dbg !717
  call void @nn_err_abort() #6, !dbg !717
  unreachable, !dbg !717

50:                                               ; preds = %41
  br label %51, !dbg !716

51:                                               ; preds = %50
  %52 = load ptr, ptr %9, align 8, !dbg !719
  %53 = getelementptr inbounds %struct.nn_sock, ptr %52, i32 0, i32 3, !dbg !721
  %54 = load ptr, ptr %53, align 8, !dbg !721
  %55 = getelementptr inbounds %struct.nn_socktype, ptr %54, i32 0, i32 2, !dbg !722
  %56 = load i32, ptr %55, align 8, !dbg !722
  %57 = and i32 %56, 1, !dbg !723
  %58 = icmp ne i32 %57, 0, !dbg !723
  br i1 %58, label %64, label %59, !dbg !724

59:                                               ; preds = %51
  %60 = load ptr, ptr %9, align 8, !dbg !725
  %61 = getelementptr inbounds %struct.nn_sock, ptr %60, i32 0, i32 7, !dbg !727
  call void @nn_efd_term(ptr noundef %61), !dbg !728
  %62 = load ptr, ptr %9, align 8, !dbg !729
  %63 = getelementptr inbounds %struct.nn_sock, ptr %62, i32 0, i32 7, !dbg !730
  call void @llvm.memset.p0.i64(ptr align 8 %63, i8 -51, i64 8, i1 false), !dbg !731
  br label %64, !dbg !732

64:                                               ; preds = %59, %51
  %65 = load ptr, ptr %9, align 8, !dbg !733
  %66 = getelementptr inbounds %struct.nn_sock, ptr %65, i32 0, i32 3, !dbg !735
  %67 = load ptr, ptr %66, align 8, !dbg !735
  %68 = getelementptr inbounds %struct.nn_socktype, ptr %67, i32 0, i32 2, !dbg !736
  %69 = load i32, ptr %68, align 8, !dbg !736
  %70 = and i32 %69, 2, !dbg !737
  %71 = icmp ne i32 %70, 0, !dbg !737
  br i1 %71, label %77, label %72, !dbg !738

72:                                               ; preds = %64
  %73 = load ptr, ptr %9, align 8, !dbg !739
  %74 = getelementptr inbounds %struct.nn_sock, ptr %73, i32 0, i32 6, !dbg !741
  call void @nn_efd_term(ptr noundef %74), !dbg !742
  %75 = load ptr, ptr %9, align 8, !dbg !743
  %76 = getelementptr inbounds %struct.nn_sock, ptr %75, i32 0, i32 6, !dbg !744
  call void @llvm.memset.p0.i64(ptr align 8 %76, i8 -51, i64 8, i1 false), !dbg !745
  br label %77, !dbg !746

77:                                               ; preds = %72, %64
  %78 = load ptr, ptr %9, align 8, !dbg !747
  %79 = getelementptr inbounds %struct.nn_sock, ptr %78, i32 0, i32 10, !dbg !749
  %80 = call ptr @nn_list_begin(ptr noundef %79), !dbg !750
  store ptr %80, ptr %10, align 8, !dbg !751
  br label %81, !dbg !752

81:                                               ; preds = %96, %77
  %82 = load ptr, ptr %10, align 8, !dbg !753
  %83 = load ptr, ptr %9, align 8, !dbg !755
  %84 = getelementptr inbounds %struct.nn_sock, ptr %83, i32 0, i32 10, !dbg !756
  %85 = call ptr @nn_list_end(ptr noundef %84), !dbg !757
  %86 = icmp ne ptr %82, %85, !dbg !758
  br i1 %86, label %87, label %101, !dbg !759

87:                                               ; preds = %81
  %88 = load ptr, ptr %10, align 8, !dbg !760
  %89 = icmp ne ptr %88, null, !dbg !760
  br i1 %89, label %90, label %93, !dbg !760

90:                                               ; preds = %87
  %91 = load ptr, ptr %10, align 8, !dbg !760
  %92 = getelementptr inbounds i8, ptr %91, i64 -112, !dbg !760
  br label %94, !dbg !760

93:                                               ; preds = %87
  br label %94, !dbg !760

94:                                               ; preds = %93, %90
  %95 = phi ptr [ %92, %90 ], [ null, %93 ], !dbg !760
  call void @nn_ep_stop(ptr noundef %95), !dbg !761
  br label %96, !dbg !761

96:                                               ; preds = %94
  %97 = load ptr, ptr %9, align 8, !dbg !762
  %98 = getelementptr inbounds %struct.nn_sock, ptr %97, i32 0, i32 10, !dbg !763
  %99 = load ptr, ptr %10, align 8, !dbg !764
  %100 = call ptr @nn_list_next(ptr noundef %98, ptr noundef %99), !dbg !765
  store ptr %100, ptr %10, align 8, !dbg !766
  br label %81, !dbg !767, !llvm.loop !768

101:                                              ; preds = %81
  %102 = load ptr, ptr %9, align 8, !dbg !770
  %103 = getelementptr inbounds %struct.nn_sock, ptr %102, i32 0, i32 1, !dbg !771
  store i32 4, ptr %103, align 8, !dbg !772
  br label %133, !dbg !773

104:                                              ; preds = %25
  %105 = load ptr, ptr %9, align 8, !dbg !774
  %106 = getelementptr inbounds %struct.nn_sock, ptr %105, i32 0, i32 1, !dbg !774
  %107 = load i32, ptr %106, align 8, !dbg !774
  %108 = icmp eq i32 %107, 4, !dbg !774
  %109 = zext i1 %108 to i32, !dbg !774
  %110 = sext i32 %109 to i64, !dbg !774
  %111 = icmp ne i64 %110, 0, !dbg !774
  br i1 %111, label %112, label %162, !dbg !776

112:                                              ; preds = %104
  br label %113, !dbg !777

113:                                              ; preds = %112
  %114 = load i32, ptr %7, align 4, !dbg !779
  %115 = icmp eq i32 %114, 1, !dbg !779
  %116 = xor i1 %115, true, !dbg !779
  %117 = zext i1 %116 to i32, !dbg !779
  %118 = sext i32 %117 to i64, !dbg !779
  %119 = icmp ne i64 %118, 0, !dbg !779
  br i1 %119, label %120, label %123, !dbg !782

120:                                              ; preds = %113
  %121 = load ptr, ptr @stderr, align 8, !dbg !783
  %122 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %121, ptr noundef @.str, ptr noundef @.str.7, ptr noundef @.str.2, i32 noundef 751), !dbg !783
  call void @nn_err_abort() #6, !dbg !783
  unreachable, !dbg !783

123:                                              ; preds = %113
  br label %124, !dbg !782

124:                                              ; preds = %123
  %125 = load ptr, ptr %8, align 8, !dbg !785
  store ptr %125, ptr %11, align 8, !dbg !786
  %126 = load ptr, ptr %9, align 8, !dbg !787
  %127 = getelementptr inbounds %struct.nn_sock, ptr %126, i32 0, i32 10, !dbg !788
  %128 = load ptr, ptr %11, align 8, !dbg !789
  %129 = getelementptr inbounds %struct.nn_ep, ptr %128, i32 0, i32 5, !dbg !790
  %130 = call ptr @nn_list_erase(ptr noundef %127, ptr noundef %129), !dbg !791
  %131 = load ptr, ptr %11, align 8, !dbg !792
  call void @nn_ep_term(ptr noundef %131), !dbg !793
  %132 = load ptr, ptr %11, align 8, !dbg !794
  call void @nn_free(ptr noundef %132), !dbg !795
  br label %133, !dbg !795

133:                                              ; preds = %124, %101
  call void @llvm.dbg.label(metadata !796), !dbg !797
  %134 = load ptr, ptr %9, align 8, !dbg !798
  %135 = getelementptr inbounds %struct.nn_sock, ptr %134, i32 0, i32 10, !dbg !800
  %136 = call i32 @nn_list_empty(ptr noundef %135), !dbg !801
  %137 = icmp ne i32 %136, 0, !dbg !801
  br i1 %137, label %139, label %138, !dbg !802

138:                                              ; preds = %133
  br label %283, !dbg !803

139:                                              ; preds = %133
  %140 = load ptr, ptr %9, align 8, !dbg !804
  %141 = getelementptr inbounds %struct.nn_sock, ptr %140, i32 0, i32 1, !dbg !805
  store i32 5, ptr %141, align 8, !dbg !806
  %142 = load ptr, ptr %9, align 8, !dbg !807
  %143 = getelementptr inbounds %struct.nn_sock, ptr %142, i32 0, i32 2, !dbg !809
  %144 = load ptr, ptr %143, align 8, !dbg !809
  %145 = getelementptr inbounds %struct.nn_sockbase, ptr %144, i32 0, i32 0, !dbg !810
  %146 = load ptr, ptr %145, align 8, !dbg !810
  %147 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %146, i32 0, i32 0, !dbg !811
  %148 = load ptr, ptr %147, align 8, !dbg !811
  %149 = icmp ne ptr %148, null, !dbg !807
  br i1 %149, label %151, label %150, !dbg !812

150:                                              ; preds = %139
  br label %188, !dbg !813

151:                                              ; preds = %139
  %152 = load ptr, ptr %9, align 8, !dbg !814
  %153 = getelementptr inbounds %struct.nn_sock, ptr %152, i32 0, i32 2, !dbg !815
  %154 = load ptr, ptr %153, align 8, !dbg !815
  %155 = getelementptr inbounds %struct.nn_sockbase, ptr %154, i32 0, i32 0, !dbg !816
  %156 = load ptr, ptr %155, align 8, !dbg !816
  %157 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %156, i32 0, i32 0, !dbg !817
  %158 = load ptr, ptr %157, align 8, !dbg !817
  %159 = load ptr, ptr %9, align 8, !dbg !818
  %160 = getelementptr inbounds %struct.nn_sock, ptr %159, i32 0, i32 2, !dbg !819
  %161 = load ptr, ptr %160, align 8, !dbg !819
  call void %158(ptr noundef %161), !dbg !814
  br label %283, !dbg !820

162:                                              ; preds = %104
  %163 = load ptr, ptr %9, align 8, !dbg !821
  %164 = getelementptr inbounds %struct.nn_sock, ptr %163, i32 0, i32 1, !dbg !821
  %165 = load i32, ptr %164, align 8, !dbg !821
  %166 = icmp eq i32 %165, 5, !dbg !821
  %167 = zext i1 %166 to i32, !dbg !821
  %168 = sext i32 %167 to i64, !dbg !821
  %169 = icmp ne i64 %168, 0, !dbg !821
  br i1 %169, label %170, label %203, !dbg !823

170:                                              ; preds = %162
  br label %171, !dbg !824

171:                                              ; preds = %170
  %172 = load i32, ptr %6, align 4, !dbg !826
  %173 = icmp eq i32 %172, -2, !dbg !826
  br i1 %173, label %174, label %177, !dbg !826

174:                                              ; preds = %171
  %175 = load i32, ptr %7, align 4, !dbg !826
  %176 = icmp eq i32 %175, 2, !dbg !826
  br label %177

177:                                              ; preds = %174, %171
  %178 = phi i1 [ false, %171 ], [ %176, %174 ], !dbg !829
  %179 = xor i1 %178, true, !dbg !826
  %180 = zext i1 %179 to i32, !dbg !826
  %181 = sext i32 %180 to i64, !dbg !826
  %182 = icmp ne i64 %181, 0, !dbg !826
  br i1 %182, label %183, label %186, !dbg !830

183:                                              ; preds = %177
  %184 = load ptr, ptr @stderr, align 8, !dbg !831
  %185 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %184, ptr noundef @.str, ptr noundef @.str.8, ptr noundef @.str.2, i32 noundef 775), !dbg !831
  call void @nn_err_abort() #6, !dbg !831
  unreachable, !dbg !831

186:                                              ; preds = %177
  br label %187, !dbg !830

187:                                              ; preds = %186
  br label %188, !dbg !830

188:                                              ; preds = %187, %150
  call void @llvm.dbg.label(metadata !833), !dbg !834
  %189 = load ptr, ptr %9, align 8, !dbg !835
  %190 = getelementptr inbounds %struct.nn_sock, ptr %189, i32 0, i32 2, !dbg !836
  %191 = load ptr, ptr %190, align 8, !dbg !836
  %192 = getelementptr inbounds %struct.nn_sockbase, ptr %191, i32 0, i32 0, !dbg !837
  %193 = load ptr, ptr %192, align 8, !dbg !837
  %194 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %193, i32 0, i32 1, !dbg !838
  %195 = load ptr, ptr %194, align 8, !dbg !838
  %196 = load ptr, ptr %9, align 8, !dbg !839
  %197 = getelementptr inbounds %struct.nn_sock, ptr %196, i32 0, i32 2, !dbg !840
  %198 = load ptr, ptr %197, align 8, !dbg !840
  call void %195(ptr noundef %198), !dbg !835
  %199 = load ptr, ptr %9, align 8, !dbg !841
  %200 = getelementptr inbounds %struct.nn_sock, ptr %199, i32 0, i32 1, !dbg !842
  store i32 1, ptr %200, align 8, !dbg !843
  %201 = load ptr, ptr %9, align 8, !dbg !844
  %202 = getelementptr inbounds %struct.nn_sock, ptr %201, i32 0, i32 8, !dbg !845
  call void @nn_sem_post(ptr noundef %202), !dbg !846
  br label %283, !dbg !847

203:                                              ; preds = %162
  %204 = load ptr, ptr %9, align 8, !dbg !848
  %205 = getelementptr inbounds %struct.nn_sock, ptr %204, i32 0, i32 1, !dbg !849
  %206 = load i32, ptr %205, align 8, !dbg !849
  switch i32 %206, label %278 [
    i32 1, label %207
    i32 2, label %228
    i32 3, label %273
  ], !dbg !850

207:                                              ; preds = %203
  %208 = load i32, ptr %6, align 4, !dbg !851
  switch i32 %208, label %222 [
    i32 -2, label %209
  ], !dbg !853

209:                                              ; preds = %207
  %210 = load i32, ptr %7, align 4, !dbg !854
  switch i32 %210, label %216 [
    i32 -2, label %211
    i32 1, label %214
  ], !dbg !856

211:                                              ; preds = %209
  %212 = load ptr, ptr %9, align 8, !dbg !857
  %213 = getelementptr inbounds %struct.nn_sock, ptr %212, i32 0, i32 1, !dbg !859
  store i32 2, ptr %213, align 8, !dbg !860
  br label %283, !dbg !861

214:                                              ; preds = %209
  %215 = load ptr, ptr %9, align 8, !dbg !862
  call void @nn_sock_action_zombify(ptr noundef %215), !dbg !863
  br label %283, !dbg !864

216:                                              ; preds = %209
  br label %217, !dbg !865

217:                                              ; preds = %216
  %218 = load ptr, ptr @stderr, align 8, !dbg !866
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 807), !dbg !866
  call void @nn_err_abort() #6, !dbg !866
  unreachable, !dbg !866

220:                                              ; No predecessors!
  br label %221, !dbg !870

221:                                              ; preds = %220
  br label %222, !dbg !870

222:                                              ; preds = %207, %221
  br label %223, !dbg !871

223:                                              ; preds = %222
  %224 = load ptr, ptr @stderr, align 8, !dbg !872
  %225 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %224, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 811), !dbg !872
  call void @nn_err_abort() #6, !dbg !872
  unreachable, !dbg !872

226:                                              ; No predecessors!
  br label %227, !dbg !876

227:                                              ; preds = %226
  br label %228, !dbg !876

228:                                              ; preds = %203, %227
  %229 = load i32, ptr %6, align 4, !dbg !877
  switch i32 %229, label %240 [
    i32 -2, label %230
  ], !dbg !878

230:                                              ; preds = %228
  %231 = load i32, ptr %7, align 4, !dbg !879
  switch i32 %231, label %234 [
    i32 1, label %232
  ], !dbg !881

232:                                              ; preds = %230
  %233 = load ptr, ptr %9, align 8, !dbg !882
  call void @nn_sock_action_zombify(ptr noundef %233), !dbg !884
  br label %283, !dbg !885

234:                                              ; preds = %230
  br label %235, !dbg !886

235:                                              ; preds = %234
  %236 = load ptr, ptr @stderr, align 8, !dbg !887
  %237 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %236, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 826), !dbg !887
  call void @nn_err_abort() #6, !dbg !887
  unreachable, !dbg !887

238:                                              ; No predecessors!
  br label %239, !dbg !891

239:                                              ; preds = %238
  br label %240, !dbg !891

240:                                              ; preds = %228, %239
  %241 = load i32, ptr %7, align 4, !dbg !892
  switch i32 %241, label %266 [
    i32 33987, label %242
    i32 33988, label %254
  ], !dbg !893

242:                                              ; preds = %240
  %243 = load ptr, ptr %9, align 8, !dbg !894
  %244 = getelementptr inbounds %struct.nn_sock, ptr %243, i32 0, i32 2, !dbg !896
  %245 = load ptr, ptr %244, align 8, !dbg !896
  %246 = getelementptr inbounds %struct.nn_sockbase, ptr %245, i32 0, i32 0, !dbg !897
  %247 = load ptr, ptr %246, align 8, !dbg !897
  %248 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %247, i32 0, i32 4, !dbg !898
  %249 = load ptr, ptr %248, align 8, !dbg !898
  %250 = load ptr, ptr %9, align 8, !dbg !899
  %251 = getelementptr inbounds %struct.nn_sock, ptr %250, i32 0, i32 2, !dbg !900
  %252 = load ptr, ptr %251, align 8, !dbg !900
  %253 = load ptr, ptr %8, align 8, !dbg !901
  call void %249(ptr noundef %252, ptr noundef %253), !dbg !894
  br label %283, !dbg !902

254:                                              ; preds = %240
  %255 = load ptr, ptr %9, align 8, !dbg !903
  %256 = getelementptr inbounds %struct.nn_sock, ptr %255, i32 0, i32 2, !dbg !904
  %257 = load ptr, ptr %256, align 8, !dbg !904
  %258 = getelementptr inbounds %struct.nn_sockbase, ptr %257, i32 0, i32 0, !dbg !905
  %259 = load ptr, ptr %258, align 8, !dbg !905
  %260 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %259, i32 0, i32 5, !dbg !906
  %261 = load ptr, ptr %260, align 8, !dbg !906
  %262 = load ptr, ptr %9, align 8, !dbg !907
  %263 = getelementptr inbounds %struct.nn_sock, ptr %262, i32 0, i32 2, !dbg !908
  %264 = load ptr, ptr %263, align 8, !dbg !908
  %265 = load ptr, ptr %8, align 8, !dbg !909
  call void %261(ptr noundef %264, ptr noundef %265), !dbg !903
  br label %283, !dbg !910

266:                                              ; preds = %240
  br label %267, !dbg !911

267:                                              ; preds = %266
  %268 = load ptr, ptr @stderr, align 8, !dbg !912
  %269 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %268, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 842), !dbg !912
  call void @nn_err_abort() #6, !dbg !912
  unreachable, !dbg !912

270:                                              ; No predecessors!
  br label %271, !dbg !916

271:                                              ; preds = %270
  br label %272, !dbg !917

272:                                              ; preds = %271
  br label %273, !dbg !917

273:                                              ; preds = %203, %272
  br label %274, !dbg !918

274:                                              ; preds = %273
  %275 = load ptr, ptr @stderr, align 8, !dbg !919
  %276 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %275, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 850), !dbg !919
  call void @nn_err_abort() #6, !dbg !919
  unreachable, !dbg !919

277:                                              ; No predecessors!
  br label %278, !dbg !923

278:                                              ; preds = %203, %277
  br label %279, !dbg !924

279:                                              ; preds = %278
  %280 = load ptr, ptr @stderr, align 8, !dbg !925
  %281 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %280, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 856), !dbg !925
  call void @nn_err_abort() #6, !dbg !925
  unreachable, !dbg !925

282:                                              ; No predecessors!
  br label %283, !dbg !929

283:                                              ; preds = %138, %151, %188, %211, %214, %232, %242, %254, %282
  ret void, !dbg !930
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

declare i32 @nn_efd_init(ptr noundef) #2

declare void @nn_efd_term(ptr noundef) #2

declare void @nn_sem_init(ptr noundef) #2

declare void @nn_clock_init(ptr noundef) #2

declare void @nn_list_init(ptr noundef) #2

declare ptr @nn_err_strerror(i32 noundef) #2

declare void @nn_ctx_enter(ptr noundef) #2

declare void @nn_fsm_start(ptr noundef) #2

declare void @nn_ctx_leave(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sock_stopped(ptr noundef %0) #0 !dbg !931 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !934, metadata !DIExpression()), !dbg !935
  %3 = load ptr, ptr %2, align 8, !dbg !936
  %4 = getelementptr inbounds %struct.nn_sock, ptr %3, i32 0, i32 0, !dbg !937
  %5 = load ptr, ptr %2, align 8, !dbg !938
  %6 = getelementptr inbounds %struct.nn_sock, ptr %5, i32 0, i32 0, !dbg !939
  %7 = getelementptr inbounds %struct.nn_fsm, ptr %6, i32 0, i32 6, !dbg !940
  %8 = getelementptr inbounds %struct.nn_fsm_event, ptr %7, i32 0, i32 0, !dbg !941
  store ptr %4, ptr %8, align 8, !dbg !942
  %9 = load ptr, ptr %2, align 8, !dbg !943
  %10 = getelementptr inbounds %struct.nn_sock, ptr %9, i32 0, i32 0, !dbg !944
  %11 = getelementptr inbounds %struct.nn_fsm, ptr %10, i32 0, i32 6, !dbg !945
  %12 = getelementptr inbounds %struct.nn_fsm_event, ptr %11, i32 0, i32 1, !dbg !946
  store i32 -2, ptr %12, align 8, !dbg !947
  %13 = load ptr, ptr %2, align 8, !dbg !948
  %14 = getelementptr inbounds %struct.nn_sock, ptr %13, i32 0, i32 0, !dbg !949
  %15 = getelementptr inbounds %struct.nn_fsm, ptr %14, i32 0, i32 6, !dbg !950
  %16 = getelementptr inbounds %struct.nn_fsm_event, ptr %15, i32 0, i32 2, !dbg !951
  store ptr null, ptr %16, align 8, !dbg !952
  %17 = load ptr, ptr %2, align 8, !dbg !953
  %18 = getelementptr inbounds %struct.nn_sock, ptr %17, i32 0, i32 0, !dbg !954
  %19 = getelementptr inbounds %struct.nn_fsm, ptr %18, i32 0, i32 6, !dbg !955
  %20 = getelementptr inbounds %struct.nn_fsm_event, ptr %19, i32 0, i32 3, !dbg !956
  store i32 2, ptr %20, align 8, !dbg !957
  %21 = load ptr, ptr %2, align 8, !dbg !958
  %22 = getelementptr inbounds %struct.nn_sock, ptr %21, i32 0, i32 0, !dbg !959
  %23 = getelementptr inbounds %struct.nn_fsm, ptr %22, i32 0, i32 5, !dbg !960
  %24 = load ptr, ptr %23, align 8, !dbg !960
  %25 = load ptr, ptr %2, align 8, !dbg !961
  %26 = getelementptr inbounds %struct.nn_sock, ptr %25, i32 0, i32 0, !dbg !962
  %27 = getelementptr inbounds %struct.nn_fsm, ptr %26, i32 0, i32 6, !dbg !963
  call void @nn_ctx_raise(ptr noundef %24, ptr noundef %27), !dbg !964
  ret void, !dbg !965
}

declare void @nn_ctx_raise(ptr noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sock_zombify(ptr noundef %0) #0 !dbg !966 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !967, metadata !DIExpression()), !dbg !968
  %3 = load ptr, ptr %2, align 8, !dbg !969
  %4 = getelementptr inbounds %struct.nn_sock, ptr %3, i32 0, i32 5, !dbg !970
  call void @nn_ctx_enter(ptr noundef %4), !dbg !971
  %5 = load ptr, ptr %2, align 8, !dbg !972
  %6 = getelementptr inbounds %struct.nn_sock, ptr %5, i32 0, i32 0, !dbg !973
  call void @nn_fsm_action(ptr noundef %6, i32 noundef 1), !dbg !974
  %7 = load ptr, ptr %2, align 8, !dbg !975
  %8 = getelementptr inbounds %struct.nn_sock, ptr %7, i32 0, i32 5, !dbg !976
  call void @nn_ctx_leave(ptr noundef %8), !dbg !977
  ret void, !dbg !978
}

declare void @nn_fsm_action(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_term(ptr noundef %0) #0 !dbg !979 {
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !982, metadata !DIExpression()), !dbg !983
  call void @llvm.dbg.declare(metadata ptr %4, metadata !984, metadata !DIExpression()), !dbg !985
  call void @llvm.dbg.declare(metadata ptr %5, metadata !986, metadata !DIExpression()), !dbg !987
  %6 = load ptr, ptr %3, align 8, !dbg !988
  %7 = getelementptr inbounds %struct.nn_sock, ptr %6, i32 0, i32 5, !dbg !989
  call void @nn_ctx_enter(ptr noundef %7), !dbg !990
  %8 = load ptr, ptr %3, align 8, !dbg !991
  %9 = getelementptr inbounds %struct.nn_sock, ptr %8, i32 0, i32 0, !dbg !992
  call void @nn_fsm_stop(ptr noundef %9), !dbg !993
  %10 = load ptr, ptr %3, align 8, !dbg !994
  %11 = getelementptr inbounds %struct.nn_sock, ptr %10, i32 0, i32 5, !dbg !995
  call void @nn_ctx_leave(ptr noundef %11), !dbg !996
  %12 = load ptr, ptr %3, align 8, !dbg !997
  %13 = getelementptr inbounds %struct.nn_sock, ptr %12, i32 0, i32 8, !dbg !998
  %14 = call i32 @nn_sem_wait(ptr noundef %13), !dbg !999
  store i32 %14, ptr %4, align 4, !dbg !1000
  %15 = load i32, ptr %4, align 4, !dbg !1001
  %16 = icmp eq i32 %15, -4, !dbg !1001
  %17 = zext i1 %16 to i32, !dbg !1001
  %18 = sext i32 %17 to i64, !dbg !1001
  %19 = icmp ne i64 %18, 0, !dbg !1001
  br i1 %19, label %20, label %21, !dbg !1003

20:                                               ; preds = %1
  store i32 -4, ptr %2, align 4, !dbg !1004
  br label %88, !dbg !1004

21:                                               ; preds = %1
  br label %22, !dbg !1005

22:                                               ; preds = %21
  %23 = load i32, ptr %4, align 4, !dbg !1006
  %24 = icmp eq i32 %23, 0, !dbg !1006
  %25 = xor i1 %24, true, !dbg !1006
  %26 = zext i1 %25 to i32, !dbg !1006
  %27 = sext i32 %26 to i64, !dbg !1006
  %28 = icmp ne i64 %27, 0, !dbg !1006
  br i1 %28, label %29, label %37, !dbg !1009

29:                                               ; preds = %22
  %30 = load ptr, ptr @stderr, align 8, !dbg !1010
  %31 = load i32, ptr %4, align 4, !dbg !1010
  %32 = sub nsw i32 0, %31, !dbg !1010
  %33 = call ptr @nn_err_strerror(i32 noundef %32), !dbg !1010
  %34 = load i32, ptr %4, align 4, !dbg !1010
  %35 = sub nsw i32 0, %34, !dbg !1010
  %36 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %30, ptr noundef @.str.3, ptr noundef %33, i32 noundef %35, ptr noundef @.str.2, i32 noundef 175), !dbg !1010
  call void @nn_err_abort() #6, !dbg !1010
  unreachable, !dbg !1010

37:                                               ; preds = %22
  br label %38, !dbg !1009

38:                                               ; preds = %37
  %39 = load ptr, ptr %3, align 8, !dbg !1012
  %40 = getelementptr inbounds %struct.nn_sock, ptr %39, i32 0, i32 5, !dbg !1013
  call void @nn_ctx_enter(ptr noundef %40), !dbg !1014
  %41 = load ptr, ptr %3, align 8, !dbg !1015
  %42 = getelementptr inbounds %struct.nn_sock, ptr %41, i32 0, i32 5, !dbg !1016
  call void @nn_ctx_leave(ptr noundef %42), !dbg !1017
  %43 = load ptr, ptr %3, align 8, !dbg !1018
  %44 = getelementptr inbounds %struct.nn_sock, ptr %43, i32 0, i32 0, !dbg !1019
  call void @nn_fsm_stopped_noevent(ptr noundef %44), !dbg !1020
  %45 = load ptr, ptr %3, align 8, !dbg !1021
  %46 = getelementptr inbounds %struct.nn_sock, ptr %45, i32 0, i32 0, !dbg !1022
  call void @nn_fsm_term(ptr noundef %46), !dbg !1023
  %47 = load ptr, ptr %3, align 8, !dbg !1024
  %48 = getelementptr inbounds %struct.nn_sock, ptr %47, i32 0, i32 8, !dbg !1025
  call void @nn_sem_term(ptr noundef %48), !dbg !1026
  %49 = load ptr, ptr %3, align 8, !dbg !1027
  %50 = getelementptr inbounds %struct.nn_sock, ptr %49, i32 0, i32 10, !dbg !1028
  call void @nn_list_term(ptr noundef %50), !dbg !1029
  %51 = load ptr, ptr %3, align 8, !dbg !1030
  %52 = getelementptr inbounds %struct.nn_sock, ptr %51, i32 0, i32 9, !dbg !1031
  call void @nn_clock_term(ptr noundef %52), !dbg !1032
  %53 = load ptr, ptr %3, align 8, !dbg !1033
  %54 = getelementptr inbounds %struct.nn_sock, ptr %53, i32 0, i32 5, !dbg !1034
  call void @nn_ctx_term(ptr noundef %54), !dbg !1035
  store i32 0, ptr %5, align 4, !dbg !1036
  br label %55, !dbg !1038

55:                                               ; preds = %84, %38
  %56 = load i32, ptr %5, align 4, !dbg !1039
  %57 = icmp ne i32 %56, 3, !dbg !1041
  br i1 %57, label %58, label %87, !dbg !1042

58:                                               ; preds = %55
  %59 = load ptr, ptr %3, align 8, !dbg !1043
  %60 = getelementptr inbounds %struct.nn_sock, ptr %59, i32 0, i32 21, !dbg !1045
  %61 = load i32, ptr %5, align 4, !dbg !1046
  %62 = sext i32 %61 to i64, !dbg !1043
  %63 = getelementptr inbounds [3 x ptr], ptr %60, i64 0, i64 %62, !dbg !1043
  %64 = load ptr, ptr %63, align 8, !dbg !1043
  %65 = icmp ne ptr %64, null, !dbg !1043
  br i1 %65, label %66, label %83, !dbg !1047

66:                                               ; preds = %58
  %67 = load ptr, ptr %3, align 8, !dbg !1048
  %68 = getelementptr inbounds %struct.nn_sock, ptr %67, i32 0, i32 21, !dbg !1049
  %69 = load i32, ptr %5, align 4, !dbg !1050
  %70 = sext i32 %69 to i64, !dbg !1048
  %71 = getelementptr inbounds [3 x ptr], ptr %68, i64 0, i64 %70, !dbg !1048
  %72 = load ptr, ptr %71, align 8, !dbg !1048
  %73 = getelementptr inbounds %struct.nn_optset, ptr %72, i32 0, i32 0, !dbg !1051
  %74 = load ptr, ptr %73, align 8, !dbg !1051
  %75 = getelementptr inbounds %struct.nn_optset_vfptr, ptr %74, i32 0, i32 0, !dbg !1052
  %76 = load ptr, ptr %75, align 8, !dbg !1052
  %77 = load ptr, ptr %3, align 8, !dbg !1053
  %78 = getelementptr inbounds %struct.nn_sock, ptr %77, i32 0, i32 21, !dbg !1054
  %79 = load i32, ptr %5, align 4, !dbg !1055
  %80 = sext i32 %79 to i64, !dbg !1053
  %81 = getelementptr inbounds [3 x ptr], ptr %78, i64 0, i64 %80, !dbg !1053
  %82 = load ptr, ptr %81, align 8, !dbg !1053
  call void %76(ptr noundef %82), !dbg !1048
  br label %83, !dbg !1048

83:                                               ; preds = %66, %58
  br label %84, !dbg !1056

84:                                               ; preds = %83
  %85 = load i32, ptr %5, align 4, !dbg !1057
  %86 = add nsw i32 %85, 1, !dbg !1057
  store i32 %86, ptr %5, align 4, !dbg !1057
  br label %55, !dbg !1058, !llvm.loop !1059

87:                                               ; preds = %55
  store i32 0, ptr %2, align 4, !dbg !1061
  br label %88, !dbg !1061

88:                                               ; preds = %87, %20
  %89 = load i32, ptr %2, align 4, !dbg !1062
  ret i32 %89, !dbg !1062
}

declare void @nn_fsm_stop(ptr noundef) #2

declare i32 @nn_sem_wait(ptr noundef) #2

declare void @nn_fsm_stopped_noevent(ptr noundef) #2

declare void @nn_fsm_term(ptr noundef) #2

declare void @nn_sem_term(ptr noundef) #2

declare void @nn_list_term(ptr noundef) #2

declare void @nn_clock_term(ptr noundef) #2

declare void @nn_ctx_term(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local ptr @nn_sock_getctx(ptr noundef %0) #0 !dbg !1063 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1066, metadata !DIExpression()), !dbg !1067
  %3 = load ptr, ptr %2, align 8, !dbg !1068
  %4 = getelementptr inbounds %struct.nn_sock, ptr %3, i32 0, i32 5, !dbg !1069
  ret ptr %4, !dbg !1070
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_ispeer(ptr noundef %0, i32 noundef %1) #0 !dbg !1071 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1074, metadata !DIExpression()), !dbg !1075
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1076, metadata !DIExpression()), !dbg !1077
  %6 = load ptr, ptr %4, align 8, !dbg !1078
  %7 = getelementptr inbounds %struct.nn_sock, ptr %6, i32 0, i32 3, !dbg !1080
  %8 = load ptr, ptr %7, align 8, !dbg !1080
  %9 = getelementptr inbounds %struct.nn_socktype, ptr %8, i32 0, i32 1, !dbg !1081
  %10 = load i32, ptr %9, align 4, !dbg !1081
  %11 = and i32 %10, 65520, !dbg !1082
  %12 = load i32, ptr %5, align 4, !dbg !1083
  %13 = and i32 %12, 65520, !dbg !1084
  %14 = icmp ne i32 %11, %13, !dbg !1085
  br i1 %14, label %15, label %16, !dbg !1086

15:                                               ; preds = %2
  store i32 0, ptr %3, align 4, !dbg !1087
  br label %24, !dbg !1087

16:                                               ; preds = %2
  %17 = load ptr, ptr %4, align 8, !dbg !1088
  %18 = getelementptr inbounds %struct.nn_sock, ptr %17, i32 0, i32 3, !dbg !1089
  %19 = load ptr, ptr %18, align 8, !dbg !1089
  %20 = getelementptr inbounds %struct.nn_socktype, ptr %19, i32 0, i32 4, !dbg !1090
  %21 = load ptr, ptr %20, align 8, !dbg !1090
  %22 = load i32, ptr %5, align 4, !dbg !1091
  %23 = call i32 %21(i32 noundef %22), !dbg !1088
  store i32 %23, ptr %3, align 4, !dbg !1092
  br label %24, !dbg !1092

24:                                               ; preds = %16, %15
  %25 = load i32, ptr %3, align 4, !dbg !1093
  ret i32 %25, !dbg !1093
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_setopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1094 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1097, metadata !DIExpression()), !dbg !1098
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1099, metadata !DIExpression()), !dbg !1100
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1101, metadata !DIExpression()), !dbg !1102
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1103, metadata !DIExpression()), !dbg !1104
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1105, metadata !DIExpression()), !dbg !1106
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1107, metadata !DIExpression()), !dbg !1108
  %13 = load ptr, ptr %7, align 8, !dbg !1109
  %14 = getelementptr inbounds %struct.nn_sock, ptr %13, i32 0, i32 5, !dbg !1110
  call void @nn_ctx_enter(ptr noundef %14), !dbg !1111
  %15 = load ptr, ptr %7, align 8, !dbg !1112
  %16 = getelementptr inbounds %struct.nn_sock, ptr %15, i32 0, i32 1, !dbg !1112
  %17 = load i32, ptr %16, align 8, !dbg !1112
  %18 = icmp eq i32 %17, 3, !dbg !1112
  %19 = zext i1 %18 to i32, !dbg !1112
  %20 = sext i32 %19 to i64, !dbg !1112
  %21 = icmp ne i64 %20, 0, !dbg !1112
  br i1 %21, label %22, label %25, !dbg !1114

22:                                               ; preds = %5
  %23 = load ptr, ptr %7, align 8, !dbg !1115
  %24 = getelementptr inbounds %struct.nn_sock, ptr %23, i32 0, i32 5, !dbg !1117
  call void @nn_ctx_leave(ptr noundef %24), !dbg !1118
  store i32 -156384765, ptr %6, align 4, !dbg !1119
  br label %35, !dbg !1119

25:                                               ; preds = %5
  %26 = load ptr, ptr %7, align 8, !dbg !1120
  %27 = load i32, ptr %8, align 4, !dbg !1121
  %28 = load i32, ptr %9, align 4, !dbg !1122
  %29 = load ptr, ptr %10, align 8, !dbg !1123
  %30 = load i64, ptr %11, align 8, !dbg !1124
  %31 = call i32 @nn_sock_setopt_inner(ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %29, i64 noundef %30), !dbg !1125
  store i32 %31, ptr %12, align 4, !dbg !1126
  %32 = load ptr, ptr %7, align 8, !dbg !1127
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 5, !dbg !1128
  call void @nn_ctx_leave(ptr noundef %33), !dbg !1129
  %34 = load i32, ptr %12, align 4, !dbg !1130
  store i32 %34, ptr %6, align 4, !dbg !1131
  br label %35, !dbg !1131

35:                                               ; preds = %25, %22
  %36 = load i32, ptr %6, align 4, !dbg !1132
  ret i32 %36, !dbg !1132
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nn_sock_setopt_inner(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, i64 noundef %4) #0 !dbg !1133 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca i64, align 8
  %12 = alloca ptr, align 8
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1134, metadata !DIExpression()), !dbg !1135
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1136, metadata !DIExpression()), !dbg !1137
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1138, metadata !DIExpression()), !dbg !1139
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1140, metadata !DIExpression()), !dbg !1141
  store i64 %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1142, metadata !DIExpression()), !dbg !1143
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1144, metadata !DIExpression()), !dbg !1145
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1146, metadata !DIExpression()), !dbg !1147
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1148, metadata !DIExpression()), !dbg !1149
  %15 = load i32, ptr %8, align 4, !dbg !1150
  %16 = icmp sgt i32 %15, 0, !dbg !1152
  br i1 %16, label %17, label %33, !dbg !1153

17:                                               ; preds = %5
  %18 = load ptr, ptr %7, align 8, !dbg !1154
  %19 = getelementptr inbounds %struct.nn_sock, ptr %18, i32 0, i32 2, !dbg !1155
  %20 = load ptr, ptr %19, align 8, !dbg !1155
  %21 = getelementptr inbounds %struct.nn_sockbase, ptr %20, i32 0, i32 0, !dbg !1156
  %22 = load ptr, ptr %21, align 8, !dbg !1156
  %23 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %22, i32 0, i32 9, !dbg !1157
  %24 = load ptr, ptr %23, align 8, !dbg !1157
  %25 = load ptr, ptr %7, align 8, !dbg !1158
  %26 = getelementptr inbounds %struct.nn_sock, ptr %25, i32 0, i32 2, !dbg !1159
  %27 = load ptr, ptr %26, align 8, !dbg !1159
  %28 = load i32, ptr %8, align 4, !dbg !1160
  %29 = load i32, ptr %9, align 4, !dbg !1161
  %30 = load ptr, ptr %10, align 8, !dbg !1162
  %31 = load i64, ptr %11, align 8, !dbg !1163
  %32 = call i32 %24(ptr noundef %27, i32 noundef %28, i32 noundef %29, ptr noundef %30, i64 noundef %31), !dbg !1154
  store i32 %32, ptr %6, align 4, !dbg !1164
  br label %152, !dbg !1164

33:                                               ; preds = %5
  %34 = load i32, ptr %8, align 4, !dbg !1165
  %35 = icmp slt i32 %34, 0, !dbg !1167
  br i1 %35, label %36, label %54, !dbg !1168

36:                                               ; preds = %33
  %37 = load ptr, ptr %7, align 8, !dbg !1169
  %38 = load i32, ptr %8, align 4, !dbg !1171
  %39 = call ptr @nn_sock_optset(ptr noundef %37, i32 noundef %38), !dbg !1172
  store ptr %39, ptr %12, align 8, !dbg !1173
  %40 = load ptr, ptr %12, align 8, !dbg !1174
  %41 = icmp ne ptr %40, null, !dbg !1174
  br i1 %41, label %43, label %42, !dbg !1176

42:                                               ; preds = %36
  store i32 -92, ptr %6, align 4, !dbg !1177
  br label %152, !dbg !1177

43:                                               ; preds = %36
  %44 = load ptr, ptr %12, align 8, !dbg !1178
  %45 = getelementptr inbounds %struct.nn_optset, ptr %44, i32 0, i32 0, !dbg !1179
  %46 = load ptr, ptr %45, align 8, !dbg !1179
  %47 = getelementptr inbounds %struct.nn_optset_vfptr, ptr %46, i32 0, i32 1, !dbg !1180
  %48 = load ptr, ptr %47, align 8, !dbg !1180
  %49 = load ptr, ptr %12, align 8, !dbg !1181
  %50 = load i32, ptr %9, align 4, !dbg !1182
  %51 = load ptr, ptr %10, align 8, !dbg !1183
  %52 = load i64, ptr %11, align 8, !dbg !1184
  %53 = call i32 %48(ptr noundef %49, i32 noundef %50, ptr noundef %51, i64 noundef %52), !dbg !1178
  store i32 %53, ptr %6, align 4, !dbg !1185
  br label %152, !dbg !1185

54:                                               ; preds = %33
  %55 = load i64, ptr %11, align 8, !dbg !1186
  %56 = icmp ne i64 %55, 4, !dbg !1188
  br i1 %56, label %57, label %58, !dbg !1189

57:                                               ; preds = %54
  store i32 -22, ptr %6, align 4, !dbg !1190
  br label %152, !dbg !1190

58:                                               ; preds = %54
  %59 = load ptr, ptr %10, align 8, !dbg !1191
  %60 = load i32, ptr %59, align 4, !dbg !1192
  store i32 %60, ptr %13, align 4, !dbg !1193
  %61 = load i32, ptr %8, align 4, !dbg !1194
  %62 = icmp eq i32 %61, 0, !dbg !1196
  br i1 %62, label %63, label %148, !dbg !1197

63:                                               ; preds = %58
  %64 = load i32, ptr %9, align 4, !dbg !1198
  switch i32 %64, label %144 [
    i32 1, label %65
    i32 2, label %68
    i32 3, label %78
    i32 4, label %88
    i32 5, label %91
    i32 6, label %94
    i32 7, label %104
    i32 8, label %114
    i32 14, label %129
  ], !dbg !1200

65:                                               ; preds = %63
  %66 = load ptr, ptr %7, align 8, !dbg !1201
  %67 = getelementptr inbounds %struct.nn_sock, ptr %66, i32 0, i32 12, !dbg !1203
  store ptr %67, ptr %14, align 8, !dbg !1204
  br label %145, !dbg !1205

68:                                               ; preds = %63
  %69 = load i32, ptr %13, align 4, !dbg !1206
  %70 = icmp sle i32 %69, 0, !dbg !1206
  %71 = zext i1 %70 to i32, !dbg !1206
  %72 = sext i32 %71 to i64, !dbg !1206
  %73 = icmp ne i64 %72, 0, !dbg !1206
  br i1 %73, label %74, label %75, !dbg !1208

74:                                               ; preds = %68
  store i32 -22, ptr %6, align 4, !dbg !1209
  br label %152, !dbg !1209

75:                                               ; preds = %68
  %76 = load ptr, ptr %7, align 8, !dbg !1210
  %77 = getelementptr inbounds %struct.nn_sock, ptr %76, i32 0, i32 13, !dbg !1211
  store ptr %77, ptr %14, align 8, !dbg !1212
  br label %145, !dbg !1213

78:                                               ; preds = %63
  %79 = load i32, ptr %13, align 4, !dbg !1214
  %80 = icmp sle i32 %79, 0, !dbg !1214
  %81 = zext i1 %80 to i32, !dbg !1214
  %82 = sext i32 %81 to i64, !dbg !1214
  %83 = icmp ne i64 %82, 0, !dbg !1214
  br i1 %83, label %84, label %85, !dbg !1216

84:                                               ; preds = %78
  store i32 -22, ptr %6, align 4, !dbg !1217
  br label %152, !dbg !1217

85:                                               ; preds = %78
  %86 = load ptr, ptr %7, align 8, !dbg !1218
  %87 = getelementptr inbounds %struct.nn_sock, ptr %86, i32 0, i32 14, !dbg !1219
  store ptr %87, ptr %14, align 8, !dbg !1220
  br label %145, !dbg !1221

88:                                               ; preds = %63
  %89 = load ptr, ptr %7, align 8, !dbg !1222
  %90 = getelementptr inbounds %struct.nn_sock, ptr %89, i32 0, i32 15, !dbg !1223
  store ptr %90, ptr %14, align 8, !dbg !1224
  br label %145, !dbg !1225

91:                                               ; preds = %63
  %92 = load ptr, ptr %7, align 8, !dbg !1226
  %93 = getelementptr inbounds %struct.nn_sock, ptr %92, i32 0, i32 16, !dbg !1227
  store ptr %93, ptr %14, align 8, !dbg !1228
  br label %145, !dbg !1229

94:                                               ; preds = %63
  %95 = load i32, ptr %13, align 4, !dbg !1230
  %96 = icmp slt i32 %95, 0, !dbg !1230
  %97 = zext i1 %96 to i32, !dbg !1230
  %98 = sext i32 %97 to i64, !dbg !1230
  %99 = icmp ne i64 %98, 0, !dbg !1230
  br i1 %99, label %100, label %101, !dbg !1232

100:                                              ; preds = %94
  store i32 -22, ptr %6, align 4, !dbg !1233
  br label %152, !dbg !1233

101:                                              ; preds = %94
  %102 = load ptr, ptr %7, align 8, !dbg !1234
  %103 = getelementptr inbounds %struct.nn_sock, ptr %102, i32 0, i32 17, !dbg !1235
  store ptr %103, ptr %14, align 8, !dbg !1236
  br label %145, !dbg !1237

104:                                              ; preds = %63
  %105 = load i32, ptr %13, align 4, !dbg !1238
  %106 = icmp slt i32 %105, 0, !dbg !1238
  %107 = zext i1 %106 to i32, !dbg !1238
  %108 = sext i32 %107 to i64, !dbg !1238
  %109 = icmp ne i64 %108, 0, !dbg !1238
  br i1 %109, label %110, label %111, !dbg !1240

110:                                              ; preds = %104
  store i32 -22, ptr %6, align 4, !dbg !1241
  br label %152, !dbg !1241

111:                                              ; preds = %104
  %112 = load ptr, ptr %7, align 8, !dbg !1242
  %113 = getelementptr inbounds %struct.nn_sock, ptr %112, i32 0, i32 18, !dbg !1243
  store ptr %113, ptr %14, align 8, !dbg !1244
  br label %145, !dbg !1245

114:                                              ; preds = %63
  %115 = load i32, ptr %13, align 4, !dbg !1246
  %116 = icmp slt i32 %115, 1, !dbg !1246
  br i1 %116, label %120, label %117, !dbg !1246

117:                                              ; preds = %114
  %118 = load i32, ptr %13, align 4, !dbg !1246
  %119 = icmp sgt i32 %118, 16, !dbg !1246
  br label %120, !dbg !1246

120:                                              ; preds = %117, %114
  %121 = phi i1 [ true, %114 ], [ %119, %117 ]
  %122 = zext i1 %121 to i32, !dbg !1246
  %123 = sext i32 %122 to i64, !dbg !1246
  %124 = icmp ne i64 %123, 0, !dbg !1246
  br i1 %124, label %125, label %126, !dbg !1248

125:                                              ; preds = %120
  store i32 -22, ptr %6, align 4, !dbg !1249
  br label %152, !dbg !1249

126:                                              ; preds = %120
  %127 = load ptr, ptr %7, align 8, !dbg !1250
  %128 = getelementptr inbounds %struct.nn_sock, ptr %127, i32 0, i32 19, !dbg !1251
  store ptr %128, ptr %14, align 8, !dbg !1252
  br label %145, !dbg !1253

129:                                              ; preds = %63
  %130 = load i32, ptr %13, align 4, !dbg !1254
  %131 = icmp ne i32 %130, 0, !dbg !1254
  br i1 %131, label %132, label %135, !dbg !1254

132:                                              ; preds = %129
  %133 = load i32, ptr %13, align 4, !dbg !1254
  %134 = icmp ne i32 %133, 1, !dbg !1254
  br label %135

135:                                              ; preds = %132, %129
  %136 = phi i1 [ false, %129 ], [ %134, %132 ], !dbg !1256
  %137 = zext i1 %136 to i32, !dbg !1254
  %138 = sext i32 %137 to i64, !dbg !1254
  %139 = icmp ne i64 %138, 0, !dbg !1254
  br i1 %139, label %140, label %141, !dbg !1257

140:                                              ; preds = %135
  store i32 -22, ptr %6, align 4, !dbg !1258
  br label %152, !dbg !1258

141:                                              ; preds = %135
  %142 = load ptr, ptr %7, align 8, !dbg !1259
  %143 = getelementptr inbounds %struct.nn_sock, ptr %142, i32 0, i32 20, !dbg !1260
  store ptr %143, ptr %14, align 8, !dbg !1261
  br label %145, !dbg !1262

144:                                              ; preds = %63
  store i32 -92, ptr %6, align 4, !dbg !1263
  br label %152, !dbg !1263

145:                                              ; preds = %141, %126, %111, %101, %91, %88, %85, %75, %65
  %146 = load i32, ptr %13, align 4, !dbg !1264
  %147 = load ptr, ptr %14, align 8, !dbg !1265
  store i32 %146, ptr %147, align 4, !dbg !1266
  store i32 0, ptr %6, align 4, !dbg !1267
  br label %152, !dbg !1267

148:                                              ; preds = %58
  br label %149, !dbg !1268

149:                                              ; preds = %148
  %150 = load ptr, ptr @stderr, align 8, !dbg !1269
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 310), !dbg !1269
  call void @nn_err_abort() #6, !dbg !1269
  unreachable, !dbg !1269

152:                                              ; preds = %17, %42, %43, %57, %74, %84, %100, %110, %125, %140, %144, %145
  %153 = load i32, ptr %6, align 4, !dbg !1273
  ret i32 %153, !dbg !1273
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_getopt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1274 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1277, metadata !DIExpression()), !dbg !1278
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1279, metadata !DIExpression()), !dbg !1280
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1281, metadata !DIExpression()), !dbg !1282
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1283, metadata !DIExpression()), !dbg !1284
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1285, metadata !DIExpression()), !dbg !1286
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1287, metadata !DIExpression()), !dbg !1288
  %13 = load ptr, ptr %7, align 8, !dbg !1289
  %14 = getelementptr inbounds %struct.nn_sock, ptr %13, i32 0, i32 5, !dbg !1290
  call void @nn_ctx_enter(ptr noundef %14), !dbg !1291
  %15 = load ptr, ptr %7, align 8, !dbg !1292
  %16 = getelementptr inbounds %struct.nn_sock, ptr %15, i32 0, i32 1, !dbg !1292
  %17 = load i32, ptr %16, align 8, !dbg !1292
  %18 = icmp eq i32 %17, 3, !dbg !1292
  %19 = zext i1 %18 to i32, !dbg !1292
  %20 = sext i32 %19 to i64, !dbg !1292
  %21 = icmp ne i64 %20, 0, !dbg !1292
  br i1 %21, label %22, label %25, !dbg !1294

22:                                               ; preds = %5
  %23 = load ptr, ptr %7, align 8, !dbg !1295
  %24 = getelementptr inbounds %struct.nn_sock, ptr %23, i32 0, i32 5, !dbg !1297
  call void @nn_ctx_leave(ptr noundef %24), !dbg !1298
  store i32 -156384765, ptr %6, align 4, !dbg !1299
  br label %35, !dbg !1299

25:                                               ; preds = %5
  %26 = load ptr, ptr %7, align 8, !dbg !1300
  %27 = load i32, ptr %8, align 4, !dbg !1301
  %28 = load i32, ptr %9, align 4, !dbg !1302
  %29 = load ptr, ptr %10, align 8, !dbg !1303
  %30 = load ptr, ptr %11, align 8, !dbg !1304
  %31 = call i32 @nn_sock_getopt_inner(ptr noundef %26, i32 noundef %27, i32 noundef %28, ptr noundef %29, ptr noundef %30), !dbg !1305
  store i32 %31, ptr %12, align 4, !dbg !1306
  %32 = load ptr, ptr %7, align 8, !dbg !1307
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 5, !dbg !1308
  call void @nn_ctx_leave(ptr noundef %33), !dbg !1309
  %34 = load i32, ptr %12, align 4, !dbg !1310
  store i32 %34, ptr %6, align 4, !dbg !1311
  br label %35, !dbg !1311

35:                                               ; preds = %25, %22
  %36 = load i32, ptr %6, align 4, !dbg !1312
  ret i32 %36, !dbg !1312
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_getopt_inner(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) #0 !dbg !1313 {
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca ptr, align 8
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca ptr, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store ptr %0, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1314, metadata !DIExpression()), !dbg !1315
  store i32 %1, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1316, metadata !DIExpression()), !dbg !1317
  store i32 %2, ptr %9, align 4
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1318, metadata !DIExpression()), !dbg !1319
  store ptr %3, ptr %10, align 8
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1320, metadata !DIExpression()), !dbg !1321
  store ptr %4, ptr %11, align 8
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1322, metadata !DIExpression()), !dbg !1323
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1324, metadata !DIExpression()), !dbg !1325
  call void @llvm.dbg.declare(metadata ptr %13, metadata !1326, metadata !DIExpression()), !dbg !1327
  call void @llvm.dbg.declare(metadata ptr %14, metadata !1328, metadata !DIExpression()), !dbg !1329
  call void @llvm.dbg.declare(metadata ptr %15, metadata !1330, metadata !DIExpression()), !dbg !1332
  %16 = load i32, ptr %8, align 4, !dbg !1333
  %17 = icmp eq i32 %16, 0, !dbg !1335
  br i1 %17, label %18, label %129, !dbg !1336

18:                                               ; preds = %5
  %19 = load i32, ptr %9, align 4, !dbg !1337
  switch i32 %19, label %116 [
    i32 12, label %20
    i32 13, label %26
    i32 1, label %32
    i32 2, label %36
    i32 3, label %40
    i32 4, label %44
    i32 5, label %48
    i32 6, label %52
    i32 7, label %56
    i32 8, label %60
    i32 14, label %64
    i32 10, label %68
    i32 11, label %92
  ], !dbg !1339

20:                                               ; preds = %18
  %21 = load ptr, ptr %7, align 8, !dbg !1340
  %22 = getelementptr inbounds %struct.nn_sock, ptr %21, i32 0, i32 3, !dbg !1342
  %23 = load ptr, ptr %22, align 8, !dbg !1342
  %24 = getelementptr inbounds %struct.nn_socktype, ptr %23, i32 0, i32 0, !dbg !1343
  %25 = load i32, ptr %24, align 8, !dbg !1343
  store i32 %25, ptr %14, align 4, !dbg !1344
  br label %117, !dbg !1345

26:                                               ; preds = %18
  %27 = load ptr, ptr %7, align 8, !dbg !1346
  %28 = getelementptr inbounds %struct.nn_sock, ptr %27, i32 0, i32 3, !dbg !1347
  %29 = load ptr, ptr %28, align 8, !dbg !1347
  %30 = getelementptr inbounds %struct.nn_socktype, ptr %29, i32 0, i32 1, !dbg !1348
  %31 = load i32, ptr %30, align 4, !dbg !1348
  store i32 %31, ptr %14, align 4, !dbg !1349
  br label %117, !dbg !1350

32:                                               ; preds = %18
  %33 = load ptr, ptr %7, align 8, !dbg !1351
  %34 = getelementptr inbounds %struct.nn_sock, ptr %33, i32 0, i32 12, !dbg !1352
  %35 = load i32, ptr %34, align 4, !dbg !1352
  store i32 %35, ptr %14, align 4, !dbg !1353
  br label %117, !dbg !1354

36:                                               ; preds = %18
  %37 = load ptr, ptr %7, align 8, !dbg !1355
  %38 = getelementptr inbounds %struct.nn_sock, ptr %37, i32 0, i32 13, !dbg !1356
  %39 = load i32, ptr %38, align 8, !dbg !1356
  store i32 %39, ptr %14, align 4, !dbg !1357
  br label %117, !dbg !1358

40:                                               ; preds = %18
  %41 = load ptr, ptr %7, align 8, !dbg !1359
  %42 = getelementptr inbounds %struct.nn_sock, ptr %41, i32 0, i32 14, !dbg !1360
  %43 = load i32, ptr %42, align 4, !dbg !1360
  store i32 %43, ptr %14, align 4, !dbg !1361
  br label %117, !dbg !1362

44:                                               ; preds = %18
  %45 = load ptr, ptr %7, align 8, !dbg !1363
  %46 = getelementptr inbounds %struct.nn_sock, ptr %45, i32 0, i32 15, !dbg !1364
  %47 = load i32, ptr %46, align 8, !dbg !1364
  store i32 %47, ptr %14, align 4, !dbg !1365
  br label %117, !dbg !1366

48:                                               ; preds = %18
  %49 = load ptr, ptr %7, align 8, !dbg !1367
  %50 = getelementptr inbounds %struct.nn_sock, ptr %49, i32 0, i32 16, !dbg !1368
  %51 = load i32, ptr %50, align 4, !dbg !1368
  store i32 %51, ptr %14, align 4, !dbg !1369
  br label %117, !dbg !1370

52:                                               ; preds = %18
  %53 = load ptr, ptr %7, align 8, !dbg !1371
  %54 = getelementptr inbounds %struct.nn_sock, ptr %53, i32 0, i32 17, !dbg !1372
  %55 = load i32, ptr %54, align 8, !dbg !1372
  store i32 %55, ptr %14, align 4, !dbg !1373
  br label %117, !dbg !1374

56:                                               ; preds = %18
  %57 = load ptr, ptr %7, align 8, !dbg !1375
  %58 = getelementptr inbounds %struct.nn_sock, ptr %57, i32 0, i32 18, !dbg !1376
  %59 = load i32, ptr %58, align 4, !dbg !1376
  store i32 %59, ptr %14, align 4, !dbg !1377
  br label %117, !dbg !1378

60:                                               ; preds = %18
  %61 = load ptr, ptr %7, align 8, !dbg !1379
  %62 = getelementptr inbounds %struct.nn_sock, ptr %61, i32 0, i32 19, !dbg !1380
  %63 = load i32, ptr %62, align 8, !dbg !1380
  store i32 %63, ptr %14, align 4, !dbg !1381
  br label %117, !dbg !1382

64:                                               ; preds = %18
  %65 = load ptr, ptr %7, align 8, !dbg !1383
  %66 = getelementptr inbounds %struct.nn_sock, ptr %65, i32 0, i32 20, !dbg !1384
  %67 = load i32, ptr %66, align 4, !dbg !1384
  store i32 %67, ptr %14, align 4, !dbg !1385
  br label %117, !dbg !1386

68:                                               ; preds = %18
  %69 = load ptr, ptr %7, align 8, !dbg !1387
  %70 = getelementptr inbounds %struct.nn_sock, ptr %69, i32 0, i32 3, !dbg !1389
  %71 = load ptr, ptr %70, align 8, !dbg !1389
  %72 = getelementptr inbounds %struct.nn_socktype, ptr %71, i32 0, i32 2, !dbg !1390
  %73 = load i32, ptr %72, align 8, !dbg !1390
  %74 = and i32 %73, 2, !dbg !1391
  %75 = icmp ne i32 %74, 0, !dbg !1391
  br i1 %75, label %76, label %77, !dbg !1392

76:                                               ; preds = %68
  store i32 -92, ptr %6, align 4, !dbg !1393
  br label %173, !dbg !1393

77:                                               ; preds = %68
  %78 = load ptr, ptr %7, align 8, !dbg !1394
  %79 = getelementptr inbounds %struct.nn_sock, ptr %78, i32 0, i32 6, !dbg !1395
  %80 = call i32 @nn_efd_getfd(ptr noundef %79), !dbg !1396
  store i32 %80, ptr %15, align 4, !dbg !1397
  %81 = load ptr, ptr %10, align 8, !dbg !1398
  %82 = load ptr, ptr %11, align 8, !dbg !1399
  %83 = load i64, ptr %82, align 8, !dbg !1400
  %84 = icmp ult i64 %83, 4, !dbg !1401
  br i1 %84, label %85, label %88, !dbg !1400

85:                                               ; preds = %77
  %86 = load ptr, ptr %11, align 8, !dbg !1402
  %87 = load i64, ptr %86, align 8, !dbg !1403
  br label %89, !dbg !1400

88:                                               ; preds = %77
  br label %89, !dbg !1400

89:                                               ; preds = %88, %85
  %90 = phi i64 [ %87, %85 ], [ 4, %88 ], !dbg !1400
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %81, ptr align 4 %15, i64 %90, i1 false), !dbg !1404
  %91 = load ptr, ptr %11, align 8, !dbg !1405
  store i64 4, ptr %91, align 8, !dbg !1406
  store i32 0, ptr %6, align 4, !dbg !1407
  br label %173, !dbg !1407

92:                                               ; preds = %18
  %93 = load ptr, ptr %7, align 8, !dbg !1408
  %94 = getelementptr inbounds %struct.nn_sock, ptr %93, i32 0, i32 3, !dbg !1410
  %95 = load ptr, ptr %94, align 8, !dbg !1410
  %96 = getelementptr inbounds %struct.nn_socktype, ptr %95, i32 0, i32 2, !dbg !1411
  %97 = load i32, ptr %96, align 8, !dbg !1411
  %98 = and i32 %97, 1, !dbg !1412
  %99 = icmp ne i32 %98, 0, !dbg !1412
  br i1 %99, label %100, label %101, !dbg !1413

100:                                              ; preds = %92
  store i32 -92, ptr %6, align 4, !dbg !1414
  br label %173, !dbg !1414

101:                                              ; preds = %92
  %102 = load ptr, ptr %7, align 8, !dbg !1415
  %103 = getelementptr inbounds %struct.nn_sock, ptr %102, i32 0, i32 7, !dbg !1416
  %104 = call i32 @nn_efd_getfd(ptr noundef %103), !dbg !1417
  store i32 %104, ptr %15, align 4, !dbg !1418
  %105 = load ptr, ptr %10, align 8, !dbg !1419
  %106 = load ptr, ptr %11, align 8, !dbg !1420
  %107 = load i64, ptr %106, align 8, !dbg !1421
  %108 = icmp ult i64 %107, 4, !dbg !1422
  br i1 %108, label %109, label %112, !dbg !1421

109:                                              ; preds = %101
  %110 = load ptr, ptr %11, align 8, !dbg !1423
  %111 = load i64, ptr %110, align 8, !dbg !1424
  br label %113, !dbg !1421

112:                                              ; preds = %101
  br label %113, !dbg !1421

113:                                              ; preds = %112, %109
  %114 = phi i64 [ %111, %109 ], [ 4, %112 ], !dbg !1421
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %105, ptr align 4 %15, i64 %114, i1 false), !dbg !1425
  %115 = load ptr, ptr %11, align 8, !dbg !1426
  store i64 4, ptr %115, align 8, !dbg !1427
  store i32 0, ptr %6, align 4, !dbg !1428
  br label %173, !dbg !1428

116:                                              ; preds = %18
  store i32 -92, ptr %6, align 4, !dbg !1429
  br label %173, !dbg !1429

117:                                              ; preds = %64, %60, %56, %52, %48, %44, %40, %36, %32, %26, %20
  %118 = load ptr, ptr %10, align 8, !dbg !1430
  %119 = load ptr, ptr %11, align 8, !dbg !1431
  %120 = load i64, ptr %119, align 8, !dbg !1432
  %121 = icmp ult i64 %120, 4, !dbg !1433
  br i1 %121, label %122, label %125, !dbg !1432

122:                                              ; preds = %117
  %123 = load ptr, ptr %11, align 8, !dbg !1434
  %124 = load i64, ptr %123, align 8, !dbg !1435
  br label %126, !dbg !1432

125:                                              ; preds = %117
  br label %126, !dbg !1432

126:                                              ; preds = %125, %122
  %127 = phi i64 [ %124, %122 ], [ 4, %125 ], !dbg !1432
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %118, ptr align 4 %14, i64 %127, i1 false), !dbg !1436
  %128 = load ptr, ptr %11, align 8, !dbg !1437
  store i64 4, ptr %128, align 8, !dbg !1438
  store i32 0, ptr %6, align 4, !dbg !1439
  br label %173, !dbg !1439

129:                                              ; preds = %5
  %130 = load i32, ptr %8, align 4, !dbg !1440
  %131 = icmp sgt i32 %130, 0, !dbg !1442
  br i1 %131, label %132, label %148, !dbg !1443

132:                                              ; preds = %129
  %133 = load ptr, ptr %7, align 8, !dbg !1444
  %134 = getelementptr inbounds %struct.nn_sock, ptr %133, i32 0, i32 2, !dbg !1445
  %135 = load ptr, ptr %134, align 8, !dbg !1445
  %136 = getelementptr inbounds %struct.nn_sockbase, ptr %135, i32 0, i32 0, !dbg !1446
  %137 = load ptr, ptr %136, align 8, !dbg !1446
  %138 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %137, i32 0, i32 10, !dbg !1447
  %139 = load ptr, ptr %138, align 8, !dbg !1447
  %140 = load ptr, ptr %7, align 8, !dbg !1448
  %141 = getelementptr inbounds %struct.nn_sock, ptr %140, i32 0, i32 2, !dbg !1449
  %142 = load ptr, ptr %141, align 8, !dbg !1449
  %143 = load i32, ptr %8, align 4, !dbg !1450
  %144 = load i32, ptr %9, align 4, !dbg !1451
  %145 = load ptr, ptr %10, align 8, !dbg !1452
  %146 = load ptr, ptr %11, align 8, !dbg !1453
  %147 = call i32 %139(ptr noundef %142, i32 noundef %143, i32 noundef %144, ptr noundef %145, ptr noundef %146), !dbg !1444
  store i32 %147, ptr %12, align 4, !dbg !1454
  store i32 %147, ptr %6, align 4, !dbg !1455
  br label %173, !dbg !1455

148:                                              ; preds = %129
  %149 = load i32, ptr %8, align 4, !dbg !1456
  %150 = icmp slt i32 %149, 0, !dbg !1458
  br i1 %150, label %151, label %169, !dbg !1459

151:                                              ; preds = %148
  %152 = load ptr, ptr %7, align 8, !dbg !1460
  %153 = load i32, ptr %8, align 4, !dbg !1462
  %154 = call ptr @nn_sock_optset(ptr noundef %152, i32 noundef %153), !dbg !1463
  store ptr %154, ptr %13, align 8, !dbg !1464
  %155 = load ptr, ptr %13, align 8, !dbg !1465
  %156 = icmp ne ptr %155, null, !dbg !1465
  br i1 %156, label %158, label %157, !dbg !1467

157:                                              ; preds = %151
  store i32 -92, ptr %6, align 4, !dbg !1468
  br label %173, !dbg !1468

158:                                              ; preds = %151
  %159 = load ptr, ptr %13, align 8, !dbg !1469
  %160 = getelementptr inbounds %struct.nn_optset, ptr %159, i32 0, i32 0, !dbg !1470
  %161 = load ptr, ptr %160, align 8, !dbg !1470
  %162 = getelementptr inbounds %struct.nn_optset_vfptr, ptr %161, i32 0, i32 2, !dbg !1471
  %163 = load ptr, ptr %162, align 8, !dbg !1471
  %164 = load ptr, ptr %13, align 8, !dbg !1472
  %165 = load i32, ptr %9, align 4, !dbg !1473
  %166 = load ptr, ptr %10, align 8, !dbg !1474
  %167 = load ptr, ptr %11, align 8, !dbg !1475
  %168 = call i32 %163(ptr noundef %164, i32 noundef %165, ptr noundef %166, ptr noundef %167), !dbg !1469
  store i32 %168, ptr %6, align 4, !dbg !1476
  br label %173, !dbg !1476

169:                                              ; preds = %148
  br label %170, !dbg !1477

170:                                              ; preds = %169
  %171 = load ptr, ptr @stderr, align 8, !dbg !1478
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef @.str, ptr noundef @.str.4, ptr noundef @.str.2, i32 noundef 413), !dbg !1478
  call void @nn_err_abort() #6, !dbg !1478
  unreachable, !dbg !1478

173:                                              ; preds = %76, %89, %100, %113, %116, %126, %132, %157, %158
  %174 = load i32, ptr %6, align 4, !dbg !1482
  ret i32 %174, !dbg !1482
}

declare i32 @nn_efd_getfd(ptr noundef) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @nn_sock_optset(ptr noundef %0, i32 noundef %1) #0 !dbg !1483 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1486, metadata !DIExpression()), !dbg !1487
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1488, metadata !DIExpression()), !dbg !1489
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1490, metadata !DIExpression()), !dbg !1491
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1492, metadata !DIExpression()), !dbg !1516
  %8 = load i32, ptr %5, align 4, !dbg !1517
  %9 = sub nsw i32 0, %8, !dbg !1518
  %10 = sub nsw i32 %9, 1, !dbg !1519
  store i32 %10, ptr %6, align 4, !dbg !1520
  %11 = load i32, ptr %6, align 4, !dbg !1521
  %12 = icmp slt i32 %11, 0, !dbg !1521
  br i1 %12, label %16, label %13, !dbg !1521

13:                                               ; preds = %2
  %14 = load i32, ptr %6, align 4, !dbg !1521
  %15 = icmp sge i32 %14, 3, !dbg !1521
  br label %16, !dbg !1521

16:                                               ; preds = %13, %2
  %17 = phi i1 [ true, %2 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32, !dbg !1521
  %19 = sext i32 %18 to i64, !dbg !1521
  %20 = icmp ne i64 %19, 0, !dbg !1521
  br i1 %20, label %21, label %22, !dbg !1523

21:                                               ; preds = %16
  store ptr null, ptr %3, align 8, !dbg !1524
  br label %76, !dbg !1524

22:                                               ; preds = %16
  %23 = load ptr, ptr %4, align 8, !dbg !1525
  %24 = getelementptr inbounds %struct.nn_sock, ptr %23, i32 0, i32 21, !dbg !1525
  %25 = load i32, ptr %6, align 4, !dbg !1525
  %26 = sext i32 %25 to i64, !dbg !1525
  %27 = getelementptr inbounds [3 x ptr], ptr %24, i64 0, i64 %26, !dbg !1525
  %28 = load ptr, ptr %27, align 8, !dbg !1525
  %29 = icmp ne ptr %28, null, !dbg !1525
  %30 = zext i1 %29 to i32, !dbg !1525
  %31 = sext i32 %30 to i64, !dbg !1525
  %32 = icmp ne i64 %31, 0, !dbg !1525
  br i1 %32, label %33, label %40, !dbg !1527

33:                                               ; preds = %22
  %34 = load ptr, ptr %4, align 8, !dbg !1528
  %35 = getelementptr inbounds %struct.nn_sock, ptr %34, i32 0, i32 21, !dbg !1529
  %36 = load i32, ptr %6, align 4, !dbg !1530
  %37 = sext i32 %36 to i64, !dbg !1528
  %38 = getelementptr inbounds [3 x ptr], ptr %35, i64 0, i64 %37, !dbg !1528
  %39 = load ptr, ptr %38, align 8, !dbg !1528
  store ptr %39, ptr %3, align 8, !dbg !1531
  br label %76, !dbg !1531

40:                                               ; preds = %22
  %41 = load i32, ptr %5, align 4, !dbg !1532
  %42 = call ptr @nn_global_transport(i32 noundef %41), !dbg !1533
  store ptr %42, ptr %7, align 8, !dbg !1534
  %43 = load ptr, ptr %7, align 8, !dbg !1535
  %44 = icmp ne ptr %43, null, !dbg !1535
  %45 = xor i1 %44, true, !dbg !1535
  %46 = zext i1 %45 to i32, !dbg !1535
  %47 = sext i32 %46 to i64, !dbg !1535
  %48 = icmp ne i64 %47, 0, !dbg !1535
  br i1 %48, label %49, label %50, !dbg !1537

49:                                               ; preds = %40
  store ptr null, ptr %3, align 8, !dbg !1538
  br label %76, !dbg !1538

50:                                               ; preds = %40
  %51 = load ptr, ptr %7, align 8, !dbg !1539
  %52 = getelementptr inbounds %struct.nn_transport, ptr %51, i32 0, i32 6, !dbg !1539
  %53 = load ptr, ptr %52, align 8, !dbg !1539
  %54 = icmp ne ptr %53, null, !dbg !1539
  %55 = xor i1 %54, true, !dbg !1539
  %56 = zext i1 %55 to i32, !dbg !1539
  %57 = sext i32 %56 to i64, !dbg !1539
  %58 = icmp ne i64 %57, 0, !dbg !1539
  br i1 %58, label %59, label %60, !dbg !1541

59:                                               ; preds = %50
  store ptr null, ptr %3, align 8, !dbg !1542
  br label %76, !dbg !1542

60:                                               ; preds = %50
  %61 = load ptr, ptr %7, align 8, !dbg !1543
  %62 = getelementptr inbounds %struct.nn_transport, ptr %61, i32 0, i32 6, !dbg !1544
  %63 = load ptr, ptr %62, align 8, !dbg !1544
  %64 = call ptr %63(), !dbg !1543
  %65 = load ptr, ptr %4, align 8, !dbg !1545
  %66 = getelementptr inbounds %struct.nn_sock, ptr %65, i32 0, i32 21, !dbg !1546
  %67 = load i32, ptr %6, align 4, !dbg !1547
  %68 = sext i32 %67 to i64, !dbg !1545
  %69 = getelementptr inbounds [3 x ptr], ptr %66, i64 0, i64 %68, !dbg !1545
  store ptr %64, ptr %69, align 8, !dbg !1548
  %70 = load ptr, ptr %4, align 8, !dbg !1549
  %71 = getelementptr inbounds %struct.nn_sock, ptr %70, i32 0, i32 21, !dbg !1550
  %72 = load i32, ptr %6, align 4, !dbg !1551
  %73 = sext i32 %72 to i64, !dbg !1549
  %74 = getelementptr inbounds [3 x ptr], ptr %71, i64 0, i64 %73, !dbg !1549
  %75 = load ptr, ptr %74, align 8, !dbg !1549
  store ptr %75, ptr %3, align 8, !dbg !1552
  br label %76, !dbg !1552

76:                                               ; preds = %60, %59, %49, %33, %21
  %77 = load ptr, ptr %3, align 8, !dbg !1553
  ret ptr %77, !dbg !1553
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_add_ep(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #0 !dbg !1554 {
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1557, metadata !DIExpression()), !dbg !1558
  store ptr %1, ptr %7, align 8
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1559, metadata !DIExpression()), !dbg !1560
  store i32 %2, ptr %8, align 4
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1561, metadata !DIExpression()), !dbg !1562
  store ptr %3, ptr %9, align 8
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1563, metadata !DIExpression()), !dbg !1564
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1565, metadata !DIExpression()), !dbg !1566
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1567, metadata !DIExpression()), !dbg !1568
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1569, metadata !DIExpression()), !dbg !1570
  %13 = load ptr, ptr %6, align 8, !dbg !1571
  %14 = getelementptr inbounds %struct.nn_sock, ptr %13, i32 0, i32 5, !dbg !1572
  call void @nn_ctx_enter(ptr noundef %14), !dbg !1573
  %15 = call ptr @nn_alloc_(i64 noundef 264), !dbg !1574
  store ptr %15, ptr %11, align 8, !dbg !1575
  %16 = load ptr, ptr %11, align 8, !dbg !1576
  %17 = load ptr, ptr %6, align 8, !dbg !1577
  %18 = load ptr, ptr %6, align 8, !dbg !1578
  %19 = getelementptr inbounds %struct.nn_sock, ptr %18, i32 0, i32 11, !dbg !1579
  %20 = load i32, ptr %19, align 8, !dbg !1579
  %21 = load ptr, ptr %7, align 8, !dbg !1580
  %22 = load i32, ptr %8, align 4, !dbg !1581
  %23 = load ptr, ptr %9, align 8, !dbg !1582
  %24 = call i32 @nn_ep_init(ptr noundef %16, i32 noundef 1, ptr noundef %17, i32 noundef %20, ptr noundef %21, i32 noundef %22, ptr noundef %23), !dbg !1583
  store i32 %24, ptr %10, align 4, !dbg !1584
  %25 = load i32, ptr %10, align 4, !dbg !1585
  %26 = icmp slt i32 %25, 0, !dbg !1585
  %27 = zext i1 %26 to i32, !dbg !1585
  %28 = sext i32 %27 to i64, !dbg !1585
  %29 = icmp ne i64 %28, 0, !dbg !1585
  br i1 %29, label %30, label %35, !dbg !1587

30:                                               ; preds = %4
  %31 = load ptr, ptr %11, align 8, !dbg !1588
  call void @nn_free(ptr noundef %31), !dbg !1590
  %32 = load ptr, ptr %6, align 8, !dbg !1591
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 5, !dbg !1592
  call void @nn_ctx_leave(ptr noundef %33), !dbg !1593
  %34 = load i32, ptr %10, align 4, !dbg !1594
  store i32 %34, ptr %5, align 4, !dbg !1595
  br label %54, !dbg !1595

35:                                               ; preds = %4
  %36 = load ptr, ptr %11, align 8, !dbg !1596
  call void @nn_ep_start(ptr noundef %36), !dbg !1597
  %37 = load ptr, ptr %6, align 8, !dbg !1598
  %38 = getelementptr inbounds %struct.nn_sock, ptr %37, i32 0, i32 11, !dbg !1599
  %39 = load i32, ptr %38, align 8, !dbg !1599
  store i32 %39, ptr %12, align 4, !dbg !1600
  %40 = load ptr, ptr %6, align 8, !dbg !1601
  %41 = getelementptr inbounds %struct.nn_sock, ptr %40, i32 0, i32 11, !dbg !1602
  %42 = load i32, ptr %41, align 8, !dbg !1603
  %43 = add nsw i32 %42, 1, !dbg !1603
  store i32 %43, ptr %41, align 8, !dbg !1603
  %44 = load ptr, ptr %6, align 8, !dbg !1604
  %45 = getelementptr inbounds %struct.nn_sock, ptr %44, i32 0, i32 10, !dbg !1605
  %46 = load ptr, ptr %11, align 8, !dbg !1606
  %47 = getelementptr inbounds %struct.nn_ep, ptr %46, i32 0, i32 5, !dbg !1607
  %48 = load ptr, ptr %6, align 8, !dbg !1608
  %49 = getelementptr inbounds %struct.nn_sock, ptr %48, i32 0, i32 10, !dbg !1609
  %50 = call ptr @nn_list_end(ptr noundef %49), !dbg !1610
  call void @nn_list_insert(ptr noundef %45, ptr noundef %47, ptr noundef %50), !dbg !1611
  %51 = load ptr, ptr %6, align 8, !dbg !1612
  %52 = getelementptr inbounds %struct.nn_sock, ptr %51, i32 0, i32 5, !dbg !1613
  call void @nn_ctx_leave(ptr noundef %52), !dbg !1614
  %53 = load i32, ptr %12, align 4, !dbg !1615
  store i32 %53, ptr %5, align 4, !dbg !1616
  br label %54, !dbg !1616

54:                                               ; preds = %35, %30
  %55 = load i32, ptr %5, align 4, !dbg !1617
  ret i32 %55, !dbg !1617
}

declare ptr @nn_alloc_(i64 noundef) #2

declare i32 @nn_ep_init(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) #2

declare void @nn_free(ptr noundef) #2

declare void @nn_ep_start(ptr noundef) #2

declare void @nn_list_insert(ptr noundef, ptr noundef, ptr noundef) #2

declare ptr @nn_list_end(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_rm_ep(ptr noundef %0, i32 noundef %1) #0 !dbg !1618 {
  %3 = alloca i32, align 4
  %4 = alloca ptr, align 8
  %5 = alloca i32, align 4
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1619, metadata !DIExpression()), !dbg !1620
  store i32 %1, ptr %5, align 4
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1621, metadata !DIExpression()), !dbg !1622
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1623, metadata !DIExpression()), !dbg !1624
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1625, metadata !DIExpression()), !dbg !1626
  %8 = load ptr, ptr %4, align 8, !dbg !1627
  %9 = getelementptr inbounds %struct.nn_sock, ptr %8, i32 0, i32 5, !dbg !1628
  call void @nn_ctx_leave(ptr noundef %9), !dbg !1629
  store ptr null, ptr %7, align 8, !dbg !1630
  %10 = load ptr, ptr %4, align 8, !dbg !1631
  %11 = getelementptr inbounds %struct.nn_sock, ptr %10, i32 0, i32 10, !dbg !1633
  %12 = call ptr @nn_list_begin(ptr noundef %11), !dbg !1634
  store ptr %12, ptr %6, align 8, !dbg !1635
  br label %13, !dbg !1636

13:                                               ; preds = %35, %2
  %14 = load ptr, ptr %6, align 8, !dbg !1637
  %15 = load ptr, ptr %4, align 8, !dbg !1639
  %16 = getelementptr inbounds %struct.nn_sock, ptr %15, i32 0, i32 10, !dbg !1640
  %17 = call ptr @nn_list_end(ptr noundef %16), !dbg !1641
  %18 = icmp ne ptr %14, %17, !dbg !1642
  br i1 %18, label %19, label %40, !dbg !1643

19:                                               ; preds = %13
  %20 = load ptr, ptr %6, align 8, !dbg !1644
  %21 = icmp ne ptr %20, null, !dbg !1644
  br i1 %21, label %22, label %25, !dbg !1644

22:                                               ; preds = %19
  %23 = load ptr, ptr %6, align 8, !dbg !1644
  %24 = getelementptr inbounds i8, ptr %23, i64 -112, !dbg !1644
  br label %26, !dbg !1644

25:                                               ; preds = %19
  br label %26, !dbg !1644

26:                                               ; preds = %25, %22
  %27 = phi ptr [ %24, %22 ], [ null, %25 ], !dbg !1644
  store ptr %27, ptr %7, align 8, !dbg !1646
  %28 = load ptr, ptr %7, align 8, !dbg !1647
  %29 = getelementptr inbounds %struct.nn_ep, ptr %28, i32 0, i32 4, !dbg !1649
  %30 = load i32, ptr %29, align 8, !dbg !1649
  %31 = load i32, ptr %5, align 4, !dbg !1650
  %32 = icmp eq i32 %30, %31, !dbg !1651
  br i1 %32, label %33, label %34, !dbg !1652

33:                                               ; preds = %26
  br label %40, !dbg !1653

34:                                               ; preds = %26
  store ptr null, ptr %7, align 8, !dbg !1654
  br label %35, !dbg !1655

35:                                               ; preds = %34
  %36 = load ptr, ptr %4, align 8, !dbg !1656
  %37 = getelementptr inbounds %struct.nn_sock, ptr %36, i32 0, i32 10, !dbg !1657
  %38 = load ptr, ptr %6, align 8, !dbg !1658
  %39 = call ptr @nn_list_next(ptr noundef %37, ptr noundef %38), !dbg !1659
  store ptr %39, ptr %6, align 8, !dbg !1660
  br label %13, !dbg !1661, !llvm.loop !1662

40:                                               ; preds = %33, %13
  %41 = load ptr, ptr %7, align 8, !dbg !1664
  %42 = icmp ne ptr %41, null, !dbg !1664
  br i1 %42, label %46, label %43, !dbg !1666

43:                                               ; preds = %40
  %44 = load ptr, ptr %4, align 8, !dbg !1667
  %45 = getelementptr inbounds %struct.nn_sock, ptr %44, i32 0, i32 5, !dbg !1669
  call void @nn_ctx_leave(ptr noundef %45), !dbg !1670
  store i32 -22, ptr %3, align 4, !dbg !1671
  br label %50, !dbg !1671

46:                                               ; preds = %40
  %47 = load ptr, ptr %7, align 8, !dbg !1672
  call void @nn_ep_stop(ptr noundef %47), !dbg !1673
  %48 = load ptr, ptr %4, align 8, !dbg !1674
  %49 = getelementptr inbounds %struct.nn_sock, ptr %48, i32 0, i32 5, !dbg !1675
  call void @nn_ctx_leave(ptr noundef %49), !dbg !1676
  store i32 0, ptr %3, align 4, !dbg !1677
  br label %50, !dbg !1677

50:                                               ; preds = %46, %43
  %51 = load i32, ptr %3, align 4, !dbg !1678
  ret i32 %51, !dbg !1678
}

declare ptr @nn_list_begin(ptr noundef) #2

declare ptr @nn_list_next(ptr noundef, ptr noundef) #2

declare void @nn_ep_stop(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_send(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1679 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1682, metadata !DIExpression()), !dbg !1683
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1684, metadata !DIExpression()), !dbg !1685
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1686, metadata !DIExpression()), !dbg !1687
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1688, metadata !DIExpression()), !dbg !1689
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1690, metadata !DIExpression()), !dbg !1691
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1692, metadata !DIExpression()), !dbg !1693
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1694, metadata !DIExpression()), !dbg !1695
  %12 = load ptr, ptr %5, align 8, !dbg !1696
  %13 = getelementptr inbounds %struct.nn_sock, ptr %12, i32 0, i32 3, !dbg !1696
  %14 = load ptr, ptr %13, align 8, !dbg !1696
  %15 = getelementptr inbounds %struct.nn_socktype, ptr %14, i32 0, i32 2, !dbg !1696
  %16 = load i32, ptr %15, align 8, !dbg !1696
  %17 = and i32 %16, 2, !dbg !1696
  %18 = sext i32 %17 to i64, !dbg !1696
  %19 = icmp ne i64 %18, 0, !dbg !1696
  br i1 %19, label %20, label %21, !dbg !1698

20:                                               ; preds = %3
  store i32 -95, ptr %4, align 4, !dbg !1699
  br label %162, !dbg !1699

21:                                               ; preds = %3
  %22 = load ptr, ptr %5, align 8, !dbg !1700
  %23 = getelementptr inbounds %struct.nn_sock, ptr %22, i32 0, i32 5, !dbg !1701
  call void @nn_ctx_enter(ptr noundef %23), !dbg !1702
  %24 = load ptr, ptr %5, align 8, !dbg !1703
  %25 = getelementptr inbounds %struct.nn_sock, ptr %24, i32 0, i32 15, !dbg !1705
  %26 = load i32, ptr %25, align 8, !dbg !1705
  %27 = icmp slt i32 %26, 0, !dbg !1706
  br i1 %27, label %28, label %29, !dbg !1707

28:                                               ; preds = %21
  store i32 -1, ptr %11, align 4, !dbg !1708
  br label %41, !dbg !1709

29:                                               ; preds = %21
  %30 = load ptr, ptr %5, align 8, !dbg !1710
  %31 = getelementptr inbounds %struct.nn_sock, ptr %30, i32 0, i32 9, !dbg !1712
  %32 = call i64 @nn_clock_now(ptr noundef %31), !dbg !1713
  %33 = load ptr, ptr %5, align 8, !dbg !1714
  %34 = getelementptr inbounds %struct.nn_sock, ptr %33, i32 0, i32 15, !dbg !1715
  %35 = load i32, ptr %34, align 8, !dbg !1715
  %36 = sext i32 %35 to i64, !dbg !1714
  %37 = add i64 %32, %36, !dbg !1716
  store i64 %37, ptr %9, align 8, !dbg !1717
  %38 = load ptr, ptr %5, align 8, !dbg !1718
  %39 = getelementptr inbounds %struct.nn_sock, ptr %38, i32 0, i32 15, !dbg !1719
  %40 = load i32, ptr %39, align 8, !dbg !1719
  store i32 %40, ptr %11, align 4, !dbg !1720
  br label %41

41:                                               ; preds = %29, %28
  br label %42, !dbg !1721

42:                                               ; preds = %41, %161
  %43 = load ptr, ptr %5, align 8, !dbg !1722
  %44 = getelementptr inbounds %struct.nn_sock, ptr %43, i32 0, i32 1, !dbg !1722
  %45 = load i32, ptr %44, align 8, !dbg !1722
  %46 = icmp eq i32 %45, 3, !dbg !1722
  %47 = zext i1 %46 to i32, !dbg !1722
  %48 = sext i32 %47 to i64, !dbg !1722
  %49 = icmp ne i64 %48, 0, !dbg !1722
  br i1 %49, label %50, label %53, !dbg !1725

50:                                               ; preds = %42
  %51 = load ptr, ptr %5, align 8, !dbg !1726
  %52 = getelementptr inbounds %struct.nn_sock, ptr %51, i32 0, i32 5, !dbg !1728
  call void @nn_ctx_leave(ptr noundef %52), !dbg !1729
  store i32 -156384765, ptr %4, align 4, !dbg !1730
  br label %162, !dbg !1730

53:                                               ; preds = %42
  %54 = load ptr, ptr %5, align 8, !dbg !1731
  %55 = getelementptr inbounds %struct.nn_sock, ptr %54, i32 0, i32 2, !dbg !1732
  %56 = load ptr, ptr %55, align 8, !dbg !1732
  %57 = getelementptr inbounds %struct.nn_sockbase, ptr %56, i32 0, i32 0, !dbg !1733
  %58 = load ptr, ptr %57, align 8, !dbg !1733
  %59 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %58, i32 0, i32 7, !dbg !1734
  %60 = load ptr, ptr %59, align 8, !dbg !1734
  %61 = load ptr, ptr %5, align 8, !dbg !1735
  %62 = getelementptr inbounds %struct.nn_sock, ptr %61, i32 0, i32 2, !dbg !1736
  %63 = load ptr, ptr %62, align 8, !dbg !1736
  %64 = load ptr, ptr %6, align 8, !dbg !1737
  %65 = call i32 %60(ptr noundef %63, ptr noundef %64), !dbg !1731
  store i32 %65, ptr %8, align 4, !dbg !1738
  %66 = load i32, ptr %8, align 4, !dbg !1739
  %67 = icmp eq i32 %66, 0, !dbg !1739
  %68 = zext i1 %67 to i32, !dbg !1739
  %69 = sext i32 %68 to i64, !dbg !1739
  %70 = icmp ne i64 %69, 0, !dbg !1739
  br i1 %70, label %71, label %74, !dbg !1741

71:                                               ; preds = %53
  %72 = load ptr, ptr %5, align 8, !dbg !1742
  %73 = getelementptr inbounds %struct.nn_sock, ptr %72, i32 0, i32 5, !dbg !1744
  call void @nn_ctx_leave(ptr noundef %73), !dbg !1745
  store i32 0, ptr %4, align 4, !dbg !1746
  br label %162, !dbg !1746

74:                                               ; preds = %53
  br label %75, !dbg !1747

75:                                               ; preds = %74
  %76 = load i32, ptr %8, align 4, !dbg !1748
  %77 = icmp slt i32 %76, 0, !dbg !1748
  %78 = xor i1 %77, true, !dbg !1748
  %79 = zext i1 %78 to i32, !dbg !1748
  %80 = sext i32 %79 to i64, !dbg !1748
  %81 = icmp ne i64 %80, 0, !dbg !1748
  br i1 %81, label %82, label %85, !dbg !1751

82:                                               ; preds = %75
  %83 = load ptr, ptr @stderr, align 8, !dbg !1752
  %84 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %83, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 516), !dbg !1752
  call void @nn_err_abort() #6, !dbg !1752
  unreachable, !dbg !1752

85:                                               ; preds = %75
  br label %86, !dbg !1751

86:                                               ; preds = %85
  %87 = load i32, ptr %8, align 4, !dbg !1754
  %88 = icmp ne i32 %87, -11, !dbg !1754
  %89 = zext i1 %88 to i32, !dbg !1754
  %90 = sext i32 %89 to i64, !dbg !1754
  %91 = icmp ne i64 %90, 0, !dbg !1754
  br i1 %91, label %92, label %96, !dbg !1756

92:                                               ; preds = %86
  %93 = load ptr, ptr %5, align 8, !dbg !1757
  %94 = getelementptr inbounds %struct.nn_sock, ptr %93, i32 0, i32 5, !dbg !1759
  call void @nn_ctx_leave(ptr noundef %94), !dbg !1760
  %95 = load i32, ptr %8, align 4, !dbg !1761
  store i32 %95, ptr %4, align 4, !dbg !1762
  br label %162, !dbg !1762

96:                                               ; preds = %86
  %97 = load i32, ptr %7, align 4, !dbg !1763
  %98 = and i32 %97, 1, !dbg !1763
  %99 = sext i32 %98 to i64, !dbg !1763
  %100 = icmp ne i64 %99, 0, !dbg !1763
  br i1 %100, label %101, label %104, !dbg !1765

101:                                              ; preds = %96
  %102 = load ptr, ptr %5, align 8, !dbg !1766
  %103 = getelementptr inbounds %struct.nn_sock, ptr %102, i32 0, i32 5, !dbg !1768
  call void @nn_ctx_leave(ptr noundef %103), !dbg !1769
  store i32 -11, ptr %4, align 4, !dbg !1770
  br label %162, !dbg !1770

104:                                              ; preds = %96
  %105 = load ptr, ptr %5, align 8, !dbg !1771
  %106 = getelementptr inbounds %struct.nn_sock, ptr %105, i32 0, i32 5, !dbg !1772
  call void @nn_ctx_leave(ptr noundef %106), !dbg !1773
  %107 = load ptr, ptr %5, align 8, !dbg !1774
  %108 = getelementptr inbounds %struct.nn_sock, ptr %107, i32 0, i32 6, !dbg !1775
  %109 = load i32, ptr %11, align 4, !dbg !1776
  %110 = call i32 @nn_efd_wait(ptr noundef %108, i32 noundef %109), !dbg !1777
  store i32 %110, ptr %8, align 4, !dbg !1778
  %111 = load i32, ptr %8, align 4, !dbg !1779
  %112 = icmp eq i32 %111, -110, !dbg !1779
  %113 = zext i1 %112 to i32, !dbg !1779
  %114 = sext i32 %113 to i64, !dbg !1779
  %115 = icmp ne i64 %114, 0, !dbg !1779
  br i1 %115, label %116, label %117, !dbg !1781

116:                                              ; preds = %104
  store i32 -11, ptr %4, align 4, !dbg !1782
  br label %162, !dbg !1782

117:                                              ; preds = %104
  %118 = load i32, ptr %8, align 4, !dbg !1783
  %119 = icmp eq i32 %118, -4, !dbg !1783
  %120 = zext i1 %119 to i32, !dbg !1783
  %121 = sext i32 %120 to i64, !dbg !1783
  %122 = icmp ne i64 %121, 0, !dbg !1783
  br i1 %122, label %123, label %124, !dbg !1785

123:                                              ; preds = %117
  store i32 -4, ptr %4, align 4, !dbg !1786
  br label %162, !dbg !1786

124:                                              ; preds = %117
  br label %125, !dbg !1787

125:                                              ; preds = %124
  %126 = load i32, ptr %8, align 4, !dbg !1788
  %127 = icmp eq i32 %126, 0, !dbg !1788
  %128 = xor i1 %127, true, !dbg !1788
  %129 = zext i1 %128 to i32, !dbg !1788
  %130 = sext i32 %129 to i64, !dbg !1788
  %131 = icmp ne i64 %130, 0, !dbg !1788
  br i1 %131, label %132, label %138, !dbg !1791

132:                                              ; preds = %125
  %133 = load ptr, ptr @stderr, align 8, !dbg !1792
  %134 = load i32, ptr %8, align 4, !dbg !1792
  %135 = call ptr @nn_err_strerror(i32 noundef %134), !dbg !1792
  %136 = load i32, ptr %8, align 4, !dbg !1792
  %137 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %133, ptr noundef @.str.3, ptr noundef %135, i32 noundef %136, ptr noundef @.str.2, i32 noundef 539), !dbg !1792
  call void @nn_err_abort() #6, !dbg !1792
  unreachable, !dbg !1792

138:                                              ; preds = %125
  br label %139, !dbg !1791

139:                                              ; preds = %138
  %140 = load ptr, ptr %5, align 8, !dbg !1794
  %141 = getelementptr inbounds %struct.nn_sock, ptr %140, i32 0, i32 5, !dbg !1795
  call void @nn_ctx_enter(ptr noundef %141), !dbg !1796
  %142 = load ptr, ptr %5, align 8, !dbg !1797
  %143 = getelementptr inbounds %struct.nn_sock, ptr %142, i32 0, i32 15, !dbg !1799
  %144 = load i32, ptr %143, align 8, !dbg !1799
  %145 = icmp sge i32 %144, 0, !dbg !1800
  br i1 %145, label %146, label %161, !dbg !1801

146:                                              ; preds = %139
  %147 = load ptr, ptr %5, align 8, !dbg !1802
  %148 = getelementptr inbounds %struct.nn_sock, ptr %147, i32 0, i32 9, !dbg !1804
  %149 = call i64 @nn_clock_now(ptr noundef %148), !dbg !1805
  store i64 %149, ptr %10, align 8, !dbg !1806
  %150 = load i64, ptr %10, align 8, !dbg !1807
  %151 = load i64, ptr %9, align 8, !dbg !1808
  %152 = icmp ugt i64 %150, %151, !dbg !1809
  br i1 %152, label %153, label %154, !dbg !1807

153:                                              ; preds = %146
  br label %158, !dbg !1807

154:                                              ; preds = %146
  %155 = load i64, ptr %9, align 8, !dbg !1810
  %156 = load i64, ptr %10, align 8, !dbg !1811
  %157 = sub i64 %155, %156, !dbg !1812
  br label %158, !dbg !1807

158:                                              ; preds = %154, %153
  %159 = phi i64 [ 0, %153 ], [ %157, %154 ], !dbg !1807
  %160 = trunc i64 %159 to i32, !dbg !1813
  store i32 %160, ptr %11, align 4, !dbg !1814
  br label %161, !dbg !1815

161:                                              ; preds = %158, %139
  br label %42, !dbg !1721, !llvm.loop !1816

162:                                              ; preds = %123, %116, %101, %92, %71, %50, %20
  %163 = load i32, ptr %4, align 4, !dbg !1818
  ret i32 %163, !dbg !1818
}

declare i64 @nn_clock_now(ptr noundef) #2

declare i32 @nn_efd_wait(ptr noundef, i32 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_recv(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 !dbg !1819 {
  %4 = alloca i32, align 4
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca ptr, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store ptr %0, ptr %5, align 8
  call void @llvm.dbg.declare(metadata ptr %5, metadata !1820, metadata !DIExpression()), !dbg !1821
  store ptr %1, ptr %6, align 8
  call void @llvm.dbg.declare(metadata ptr %6, metadata !1822, metadata !DIExpression()), !dbg !1823
  store i32 %2, ptr %7, align 4
  call void @llvm.dbg.declare(metadata ptr %7, metadata !1824, metadata !DIExpression()), !dbg !1825
  call void @llvm.dbg.declare(metadata ptr %8, metadata !1826, metadata !DIExpression()), !dbg !1827
  call void @llvm.dbg.declare(metadata ptr %9, metadata !1828, metadata !DIExpression()), !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %10, metadata !1830, metadata !DIExpression()), !dbg !1831
  call void @llvm.dbg.declare(metadata ptr %11, metadata !1832, metadata !DIExpression()), !dbg !1833
  call void @llvm.dbg.declare(metadata ptr %12, metadata !1834, metadata !DIExpression()), !dbg !1835
  %13 = load ptr, ptr %5, align 8, !dbg !1836
  store ptr %13, ptr %9, align 8, !dbg !1837
  %14 = load ptr, ptr %5, align 8, !dbg !1838
  %15 = getelementptr inbounds %struct.nn_sock, ptr %14, i32 0, i32 3, !dbg !1838
  %16 = load ptr, ptr %15, align 8, !dbg !1838
  %17 = getelementptr inbounds %struct.nn_socktype, ptr %16, i32 0, i32 2, !dbg !1838
  %18 = load i32, ptr %17, align 8, !dbg !1838
  %19 = and i32 %18, 1, !dbg !1838
  %20 = sext i32 %19 to i64, !dbg !1838
  %21 = icmp ne i64 %20, 0, !dbg !1838
  br i1 %21, label %22, label %23, !dbg !1840

22:                                               ; preds = %3
  store i32 -95, ptr %4, align 4, !dbg !1841
  br label %164, !dbg !1841

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 8, !dbg !1842
  %25 = getelementptr inbounds %struct.nn_sock, ptr %24, i32 0, i32 5, !dbg !1843
  call void @nn_ctx_enter(ptr noundef %25), !dbg !1844
  %26 = load ptr, ptr %5, align 8, !dbg !1845
  %27 = getelementptr inbounds %struct.nn_sock, ptr %26, i32 0, i32 16, !dbg !1847
  %28 = load i32, ptr %27, align 4, !dbg !1847
  %29 = icmp slt i32 %28, 0, !dbg !1848
  br i1 %29, label %30, label %31, !dbg !1849

30:                                               ; preds = %23
  store i32 -1, ptr %12, align 4, !dbg !1850
  br label %43, !dbg !1851

31:                                               ; preds = %23
  %32 = load ptr, ptr %5, align 8, !dbg !1852
  %33 = getelementptr inbounds %struct.nn_sock, ptr %32, i32 0, i32 9, !dbg !1854
  %34 = call i64 @nn_clock_now(ptr noundef %33), !dbg !1855
  %35 = load ptr, ptr %5, align 8, !dbg !1856
  %36 = getelementptr inbounds %struct.nn_sock, ptr %35, i32 0, i32 16, !dbg !1857
  %37 = load i32, ptr %36, align 4, !dbg !1857
  %38 = sext i32 %37 to i64, !dbg !1856
  %39 = add i64 %34, %38, !dbg !1858
  store i64 %39, ptr %10, align 8, !dbg !1859
  %40 = load ptr, ptr %5, align 8, !dbg !1860
  %41 = getelementptr inbounds %struct.nn_sock, ptr %40, i32 0, i32 16, !dbg !1861
  %42 = load i32, ptr %41, align 4, !dbg !1861
  store i32 %42, ptr %12, align 4, !dbg !1862
  br label %43

43:                                               ; preds = %31, %30
  br label %44, !dbg !1863

44:                                               ; preds = %43, %163
  %45 = load ptr, ptr %5, align 8, !dbg !1864
  %46 = getelementptr inbounds %struct.nn_sock, ptr %45, i32 0, i32 1, !dbg !1864
  %47 = load i32, ptr %46, align 8, !dbg !1864
  %48 = icmp eq i32 %47, 3, !dbg !1864
  %49 = zext i1 %48 to i32, !dbg !1864
  %50 = sext i32 %49 to i64, !dbg !1864
  %51 = icmp ne i64 %50, 0, !dbg !1864
  br i1 %51, label %52, label %55, !dbg !1867

52:                                               ; preds = %44
  %53 = load ptr, ptr %5, align 8, !dbg !1868
  %54 = getelementptr inbounds %struct.nn_sock, ptr %53, i32 0, i32 5, !dbg !1870
  call void @nn_ctx_leave(ptr noundef %54), !dbg !1871
  store i32 -156384765, ptr %4, align 4, !dbg !1872
  br label %164, !dbg !1872

55:                                               ; preds = %44
  %56 = load ptr, ptr %5, align 8, !dbg !1873
  %57 = getelementptr inbounds %struct.nn_sock, ptr %56, i32 0, i32 2, !dbg !1874
  %58 = load ptr, ptr %57, align 8, !dbg !1874
  %59 = getelementptr inbounds %struct.nn_sockbase, ptr %58, i32 0, i32 0, !dbg !1875
  %60 = load ptr, ptr %59, align 8, !dbg !1875
  %61 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %60, i32 0, i32 8, !dbg !1876
  %62 = load ptr, ptr %61, align 8, !dbg !1876
  %63 = load ptr, ptr %5, align 8, !dbg !1877
  %64 = getelementptr inbounds %struct.nn_sock, ptr %63, i32 0, i32 2, !dbg !1878
  %65 = load ptr, ptr %64, align 8, !dbg !1878
  %66 = load ptr, ptr %6, align 8, !dbg !1879
  %67 = call i32 %62(ptr noundef %65, ptr noundef %66), !dbg !1873
  store i32 %67, ptr %8, align 4, !dbg !1880
  %68 = load i32, ptr %8, align 4, !dbg !1881
  %69 = icmp eq i32 %68, 0, !dbg !1881
  %70 = zext i1 %69 to i32, !dbg !1881
  %71 = sext i32 %70 to i64, !dbg !1881
  %72 = icmp ne i64 %71, 0, !dbg !1881
  br i1 %72, label %73, label %76, !dbg !1883

73:                                               ; preds = %55
  %74 = load ptr, ptr %5, align 8, !dbg !1884
  %75 = getelementptr inbounds %struct.nn_sock, ptr %74, i32 0, i32 5, !dbg !1886
  call void @nn_ctx_leave(ptr noundef %75), !dbg !1887
  store i32 0, ptr %4, align 4, !dbg !1888
  br label %164, !dbg !1888

76:                                               ; preds = %55
  br label %77, !dbg !1889

77:                                               ; preds = %76
  %78 = load i32, ptr %8, align 4, !dbg !1890
  %79 = icmp slt i32 %78, 0, !dbg !1890
  %80 = xor i1 %79, true, !dbg !1890
  %81 = zext i1 %80 to i32, !dbg !1890
  %82 = sext i32 %81 to i64, !dbg !1890
  %83 = icmp ne i64 %82, 0, !dbg !1890
  br i1 %83, label %84, label %87, !dbg !1893

84:                                               ; preds = %77
  %85 = load ptr, ptr @stderr, align 8, !dbg !1894
  %86 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %85, ptr noundef @.str, ptr noundef @.str.5, ptr noundef @.str.2, i32 noundef 589), !dbg !1894
  call void @nn_err_abort() #6, !dbg !1894
  unreachable, !dbg !1894

87:                                               ; preds = %77
  br label %88, !dbg !1893

88:                                               ; preds = %87
  %89 = load i32, ptr %8, align 4, !dbg !1896
  %90 = icmp ne i32 %89, -11, !dbg !1896
  %91 = zext i1 %90 to i32, !dbg !1896
  %92 = sext i32 %91 to i64, !dbg !1896
  %93 = icmp ne i64 %92, 0, !dbg !1896
  br i1 %93, label %94, label %98, !dbg !1898

94:                                               ; preds = %88
  %95 = load ptr, ptr %5, align 8, !dbg !1899
  %96 = getelementptr inbounds %struct.nn_sock, ptr %95, i32 0, i32 5, !dbg !1901
  call void @nn_ctx_leave(ptr noundef %96), !dbg !1902
  %97 = load i32, ptr %8, align 4, !dbg !1903
  store i32 %97, ptr %4, align 4, !dbg !1904
  br label %164, !dbg !1904

98:                                               ; preds = %88
  %99 = load i32, ptr %7, align 4, !dbg !1905
  %100 = and i32 %99, 1, !dbg !1905
  %101 = sext i32 %100 to i64, !dbg !1905
  %102 = icmp ne i64 %101, 0, !dbg !1905
  br i1 %102, label %103, label %106, !dbg !1907

103:                                              ; preds = %98
  %104 = load ptr, ptr %5, align 8, !dbg !1908
  %105 = getelementptr inbounds %struct.nn_sock, ptr %104, i32 0, i32 5, !dbg !1910
  call void @nn_ctx_leave(ptr noundef %105), !dbg !1911
  store i32 -11, ptr %4, align 4, !dbg !1912
  br label %164, !dbg !1912

106:                                              ; preds = %98
  %107 = load ptr, ptr %5, align 8, !dbg !1913
  %108 = getelementptr inbounds %struct.nn_sock, ptr %107, i32 0, i32 5, !dbg !1914
  call void @nn_ctx_leave(ptr noundef %108), !dbg !1915
  %109 = load ptr, ptr %5, align 8, !dbg !1916
  %110 = getelementptr inbounds %struct.nn_sock, ptr %109, i32 0, i32 7, !dbg !1917
  %111 = load i32, ptr %12, align 4, !dbg !1918
  %112 = call i32 @nn_efd_wait(ptr noundef %110, i32 noundef %111), !dbg !1919
  store i32 %112, ptr %8, align 4, !dbg !1920
  %113 = load i32, ptr %8, align 4, !dbg !1921
  %114 = icmp eq i32 %113, -110, !dbg !1921
  %115 = zext i1 %114 to i32, !dbg !1921
  %116 = sext i32 %115 to i64, !dbg !1921
  %117 = icmp ne i64 %116, 0, !dbg !1921
  br i1 %117, label %118, label %119, !dbg !1923

118:                                              ; preds = %106
  store i32 -11, ptr %4, align 4, !dbg !1924
  br label %164, !dbg !1924

119:                                              ; preds = %106
  %120 = load i32, ptr %8, align 4, !dbg !1925
  %121 = icmp eq i32 %120, -4, !dbg !1925
  %122 = zext i1 %121 to i32, !dbg !1925
  %123 = sext i32 %122 to i64, !dbg !1925
  %124 = icmp ne i64 %123, 0, !dbg !1925
  br i1 %124, label %125, label %126, !dbg !1927

125:                                              ; preds = %119
  store i32 -4, ptr %4, align 4, !dbg !1928
  br label %164, !dbg !1928

126:                                              ; preds = %119
  br label %127, !dbg !1929

127:                                              ; preds = %126
  %128 = load i32, ptr %8, align 4, !dbg !1930
  %129 = icmp eq i32 %128, 0, !dbg !1930
  %130 = xor i1 %129, true, !dbg !1930
  %131 = zext i1 %130 to i32, !dbg !1930
  %132 = sext i32 %131 to i64, !dbg !1930
  %133 = icmp ne i64 %132, 0, !dbg !1930
  br i1 %133, label %134, label %140, !dbg !1933

134:                                              ; preds = %127
  %135 = load ptr, ptr @stderr, align 8, !dbg !1934
  %136 = load i32, ptr %8, align 4, !dbg !1934
  %137 = call ptr @nn_err_strerror(i32 noundef %136), !dbg !1934
  %138 = load i32, ptr %8, align 4, !dbg !1934
  %139 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %135, ptr noundef @.str.3, ptr noundef %137, i32 noundef %138, ptr noundef @.str.2, i32 noundef 612), !dbg !1934
  call void @nn_err_abort() #6, !dbg !1934
  unreachable, !dbg !1934

140:                                              ; preds = %127
  br label %141, !dbg !1933

141:                                              ; preds = %140
  %142 = load ptr, ptr %5, align 8, !dbg !1936
  %143 = getelementptr inbounds %struct.nn_sock, ptr %142, i32 0, i32 5, !dbg !1937
  call void @nn_ctx_enter(ptr noundef %143), !dbg !1938
  %144 = load ptr, ptr %5, align 8, !dbg !1939
  %145 = getelementptr inbounds %struct.nn_sock, ptr %144, i32 0, i32 16, !dbg !1941
  %146 = load i32, ptr %145, align 4, !dbg !1941
  %147 = icmp sge i32 %146, 0, !dbg !1942
  br i1 %147, label %148, label %163, !dbg !1943

148:                                              ; preds = %141
  %149 = load ptr, ptr %5, align 8, !dbg !1944
  %150 = getelementptr inbounds %struct.nn_sock, ptr %149, i32 0, i32 9, !dbg !1946
  %151 = call i64 @nn_clock_now(ptr noundef %150), !dbg !1947
  store i64 %151, ptr %11, align 8, !dbg !1948
  %152 = load i64, ptr %11, align 8, !dbg !1949
  %153 = load i64, ptr %10, align 8, !dbg !1950
  %154 = icmp ugt i64 %152, %153, !dbg !1951
  br i1 %154, label %155, label %156, !dbg !1949

155:                                              ; preds = %148
  br label %160, !dbg !1949

156:                                              ; preds = %148
  %157 = load i64, ptr %10, align 8, !dbg !1952
  %158 = load i64, ptr %11, align 8, !dbg !1953
  %159 = sub i64 %157, %158, !dbg !1954
  br label %160, !dbg !1949

160:                                              ; preds = %156, %155
  %161 = phi i64 [ 0, %155 ], [ %159, %156 ], !dbg !1949
  %162 = trunc i64 %161 to i32, !dbg !1955
  store i32 %162, ptr %12, align 4, !dbg !1956
  br label %163, !dbg !1957

163:                                              ; preds = %160, %141
  br label %44, !dbg !1863, !llvm.loop !1958

164:                                              ; preds = %125, %118, %103, %94, %73, %52, %22
  %165 = load i32, ptr %4, align 4, !dbg !1960
  ret i32 %165, !dbg !1960
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nn_sock_add(ptr noundef %0, ptr noundef %1) #0 !dbg !1961 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1964, metadata !DIExpression()), !dbg !1965
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1966, metadata !DIExpression()), !dbg !1967
  %5 = load ptr, ptr %3, align 8, !dbg !1968
  %6 = getelementptr inbounds %struct.nn_sock, ptr %5, i32 0, i32 2, !dbg !1969
  %7 = load ptr, ptr %6, align 8, !dbg !1969
  %8 = getelementptr inbounds %struct.nn_sockbase, ptr %7, i32 0, i32 0, !dbg !1970
  %9 = load ptr, ptr %8, align 8, !dbg !1970
  %10 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %9, i32 0, i32 2, !dbg !1971
  %11 = load ptr, ptr %10, align 8, !dbg !1971
  %12 = load ptr, ptr %3, align 8, !dbg !1972
  %13 = getelementptr inbounds %struct.nn_sock, ptr %12, i32 0, i32 2, !dbg !1973
  %14 = load ptr, ptr %13, align 8, !dbg !1973
  %15 = load ptr, ptr %4, align 8, !dbg !1974
  %16 = call i32 %11(ptr noundef %14, ptr noundef %15), !dbg !1968
  ret i32 %16, !dbg !1975
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nn_sock_rm(ptr noundef %0, ptr noundef %1) #0 !dbg !1976 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8
  call void @llvm.dbg.declare(metadata ptr %3, metadata !1979, metadata !DIExpression()), !dbg !1980
  store ptr %1, ptr %4, align 8
  call void @llvm.dbg.declare(metadata ptr %4, metadata !1981, metadata !DIExpression()), !dbg !1982
  %5 = load ptr, ptr %3, align 8, !dbg !1983
  %6 = getelementptr inbounds %struct.nn_sock, ptr %5, i32 0, i32 2, !dbg !1984
  %7 = load ptr, ptr %6, align 8, !dbg !1984
  %8 = getelementptr inbounds %struct.nn_sockbase, ptr %7, i32 0, i32 0, !dbg !1985
  %9 = load ptr, ptr %8, align 8, !dbg !1985
  %10 = getelementptr inbounds %struct.nn_sockbase_vfptr, ptr %9, i32 0, i32 3, !dbg !1986
  %11 = load ptr, ptr %10, align 8, !dbg !1986
  %12 = load ptr, ptr %3, align 8, !dbg !1987
  %13 = getelementptr inbounds %struct.nn_sock, ptr %12, i32 0, i32 2, !dbg !1988
  %14 = load ptr, ptr %13, align 8, !dbg !1988
  %15 = load ptr, ptr %4, align 8, !dbg !1989
  call void %11(ptr noundef %14, ptr noundef %15), !dbg !1983
  ret void, !dbg !1990
}

declare void @nn_efd_signal(ptr noundef) #2

declare void @nn_efd_unsignal(ptr noundef) #2

declare ptr @nn_global_transport(i32 noundef) #2

declare ptr @nn_list_erase(ptr noundef, ptr noundef) #2

declare void @nn_ep_term(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

declare i32 @nn_list_empty(ptr noundef) #2

declare void @nn_sem_post(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nn_sock_action_zombify(ptr noundef %0) #0 !dbg !1991 {
  %2 = alloca ptr, align 8
  store ptr %0, ptr %2, align 8
  call void @llvm.dbg.declare(metadata ptr %2, metadata !1992, metadata !DIExpression()), !dbg !1993
  %3 = load ptr, ptr %2, align 8, !dbg !1994
  %4 = getelementptr inbounds %struct.nn_sock, ptr %3, i32 0, i32 1, !dbg !1995
  store i32 3, ptr %4, align 8, !dbg !1996
  %5 = load ptr, ptr %2, align 8, !dbg !1997
  %6 = getelementptr inbounds %struct.nn_sock, ptr %5, i32 0, i32 4, !dbg !1999
  %7 = load i32, ptr %6, align 8, !dbg !1999
  %8 = and i32 %7, 1, !dbg !2000
  %9 = icmp ne i32 %8, 0, !dbg !2000
  br i1 %9, label %26, label %10, !dbg !2001

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !dbg !2002
  %12 = getelementptr inbounds %struct.nn_sock, ptr %11, i32 0, i32 4, !dbg !2004
  %13 = load i32, ptr %12, align 8, !dbg !2005
  %14 = or i32 %13, 1, !dbg !2005
  store i32 %14, ptr %12, align 8, !dbg !2005
  %15 = load ptr, ptr %2, align 8, !dbg !2006
  %16 = getelementptr inbounds %struct.nn_sock, ptr %15, i32 0, i32 3, !dbg !2008
  %17 = load ptr, ptr %16, align 8, !dbg !2008
  %18 = getelementptr inbounds %struct.nn_socktype, ptr %17, i32 0, i32 2, !dbg !2009
  %19 = load i32, ptr %18, align 8, !dbg !2009
  %20 = and i32 %19, 1, !dbg !2010
  %21 = icmp ne i32 %20, 0, !dbg !2010
  br i1 %21, label %25, label %22, !dbg !2011

22:                                               ; preds = %10
  %23 = load ptr, ptr %2, align 8, !dbg !2012
  %24 = getelementptr inbounds %struct.nn_sock, ptr %23, i32 0, i32 7, !dbg !2013
  call void @nn_efd_signal(ptr noundef %24), !dbg !2014
  br label %25, !dbg !2014

25:                                               ; preds = %22, %10
  br label %26, !dbg !2015

26:                                               ; preds = %25, %1
  %27 = load ptr, ptr %2, align 8, !dbg !2016
  %28 = getelementptr inbounds %struct.nn_sock, ptr %27, i32 0, i32 4, !dbg !2018
  %29 = load i32, ptr %28, align 8, !dbg !2018
  %30 = and i32 %29, 2, !dbg !2019
  %31 = icmp ne i32 %30, 0, !dbg !2019
  br i1 %31, label %48, label %32, !dbg !2020

32:                                               ; preds = %26
  %33 = load ptr, ptr %2, align 8, !dbg !2021
  %34 = getelementptr inbounds %struct.nn_sock, ptr %33, i32 0, i32 4, !dbg !2023
  %35 = load i32, ptr %34, align 8, !dbg !2024
  %36 = or i32 %35, 2, !dbg !2024
  store i32 %36, ptr %34, align 8, !dbg !2024
  %37 = load ptr, ptr %2, align 8, !dbg !2025
  %38 = getelementptr inbounds %struct.nn_sock, ptr %37, i32 0, i32 3, !dbg !2027
  %39 = load ptr, ptr %38, align 8, !dbg !2027
  %40 = getelementptr inbounds %struct.nn_socktype, ptr %39, i32 0, i32 2, !dbg !2028
  %41 = load i32, ptr %40, align 8, !dbg !2028
  %42 = and i32 %41, 2, !dbg !2029
  %43 = icmp ne i32 %42, 0, !dbg !2029
  br i1 %43, label %47, label %44, !dbg !2030

44:                                               ; preds = %32
  %45 = load ptr, ptr %2, align 8, !dbg !2031
  %46 = getelementptr inbounds %struct.nn_sock, ptr %45, i32 0, i32 6, !dbg !2032
  call void @nn_efd_signal(ptr noundef %46), !dbg !2033
  br label %47, !dbg !2033

47:                                               ; preds = %44, %32
  br label %48, !dbg !2034

48:                                               ; preds = %47, %26
  ret void, !dbg !2035
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!47}
!llvm.module.flags = !{!388, !389, !390, !391, !392, !393, !394}
!llvm.ident = !{!395}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "./src/core/sock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "088b482bf70c53ce5aa2698ae8e293ae")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 240, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !{!6}
!6 = !DISubrange(count: 30)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 744, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 93)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 18)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(scope: null, file: !2, line: 132, type: !19, isLocal: true, isDefinition: true)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 136, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 17)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(scope: null, file: !2, line: 413, type: !24, isLocal: true, isDefinition: true)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: 2)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(scope: null, file: !2, line: 516, type: !29, isLocal: true, isDefinition: true)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: 7)
!32 = !DIGlobalVariableExpression(var: !33, expr: !DIExpression())
!33 = distinct !DIGlobalVariable(scope: null, file: !2, line: 723, type: !34, isLocal: true, isDefinition: true)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 600, elements: !35)
!35 = !{!36}
!36 = !DISubrange(count: 75)
!37 = !DIGlobalVariableExpression(var: !38, expr: !DIExpression())
!38 = distinct !DIGlobalVariable(scope: null, file: !2, line: 751, type: !39, isLocal: true, isDefinition: true)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: 22)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(scope: null, file: !2, line: 775, type: !44, isLocal: true, isDefinition: true)
!44 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 440, elements: !45)
!45 = !{!46}
!46 = !DISubrange(count: 55)
!47 = distinct !DICompileUnit(language: DW_LANG_C11, file: !48, producer: "clang version 16.0.0", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !49, globals: !387, splitDebugInlining: false, nameTableKind: None)
!48 = !DIFile(filename: "src/core/sock.c", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "088b482bf70c53ce5aa2698ae8e293ae")
!49 = !{!50, !51, !52, !385, !245, !386, !238, !263}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!51 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ep", file: !54, line: 35, size: 2112, elements: !55)
!54 = !DIFile(filename: "./src/core/ep.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3cb96b08ce030ea933432a57e3a52863")
!55 = !{!56, !220, !221, !237, !379, !380, !381}
!56 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !53, file: !54, line: 36, baseType: !57, size: 640)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm", file: !58, line: 66, size: 640, elements: !59)
!58 = !DIFile(filename: "src/aio/fsm.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ac09c7fbcc685fa852831b867c0bcf1a")
!59 = !{!60, !66, !67, !68, !69, !70, !212}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !57, file: !58, line: 67, baseType: !61, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fsm_fn", file: !58, line: 58, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !51, !51, !50}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !57, file: !58, line: 68, baseType: !51, size: 32, offset: 64)
!67 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !57, file: !58, line: 69, baseType: !51, size: 32, offset: 96)
!68 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !57, file: !58, line: 70, baseType: !50, size: 64, offset: 128)
!69 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !57, file: !58, line: 71, baseType: !65, size: 64, offset: 192)
!70 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !57, file: !58, line: 72, baseType: !71, size: 64, offset: 256)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_ctx", file: !73, line: 37, size: 704, elements: !74)
!73 = !DIFile(filename: "./src/core/../aio/ctx.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "02553d3500c8d7bb20cd89fa252fe2c2")
!74 = !{!75, !111, !205, !206, !207}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !72, file: !73, line: 38, baseType: !76, size: 320)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_mutex", file: !77, line: 32, size: 320, elements: !78)
!77 = !DIFile(filename: "src/aio/../utils/mutex.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "ab0c52cd45f66eb2dc338be2fc47cd53")
!78 = !{!79}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !76, file: !77, line: 36, baseType: !80, size: 320)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_mutex_t", file: !81, line: 72, baseType: !82)
!81 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h", directory: "", checksumkind: CSK_MD5, checksum: "735e3bf264ff9d8f5d95898b1692fbdb")
!82 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !81, line: 67, size: 320, elements: !83)
!83 = !{!84, !105, !109}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "__data", scope: !82, file: !81, line: 69, baseType: !85, size: 320)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_mutex_s", file: !86, line: 22, size: 320, elements: !87)
!86 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h", directory: "", checksumkind: CSK_MD5, checksum: "584baedd80e6041b81caae7f496091c0")
!87 = !{!88, !89, !91, !92, !93, !94, !96, !97}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "__lock", scope: !85, file: !86, line: 24, baseType: !51, size: 32)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !85, file: !86, line: 25, baseType: !90, size: 32, offset: 32)
!90 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "__owner", scope: !85, file: !86, line: 26, baseType: !51, size: 32, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "__nusers", scope: !85, file: !86, line: 28, baseType: !90, size: 32, offset: 96)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "__kind", scope: !85, file: !86, line: 32, baseType: !51, size: 32, offset: 128)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "__spins", scope: !85, file: !86, line: 34, baseType: !95, size: 16, offset: 160)
!95 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "__elision", scope: !85, file: !86, line: 35, baseType: !95, size: 16, offset: 176)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "__list", scope: !85, file: !86, line: 36, baseType: !98, size: 128, offset: 192)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "__pthread_list_t", file: !99, line: 55, baseType: !100)
!99 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h", directory: "", checksumkind: CSK_MD5, checksum: "04c81e86d34dad9c99ad006d32e47a0d")
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__pthread_internal_list", file: !99, line: 51, size: 128, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, name: "__prev", scope: !100, file: !99, line: 53, baseType: !103, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "__next", scope: !100, file: !99, line: 54, baseType: !103, size: 64, offset: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !82, file: !81, line: 70, baseType: !106, size: 320)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !107)
!107 = !{!108}
!108 = !DISubrange(count: 40)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !82, file: !81, line: 71, baseType: !110, size: 64)
!110 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pool", scope: !72, file: !73, line: 39, baseType: !112, size: 64, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pool", file: !114, line: 30, size: 1408, elements: !115)
!114 = !DIFile(filename: "src/aio/pool.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a87eb417ecad65fee67523e01b3df661")
!115 = !{!116}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "worker", scope: !113, file: !114, line: 31, baseType: !117, size: 1408)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_worker", file: !118, line: 53, size: 1408, elements: !119)
!118 = !DIFile(filename: "src/aio/worker_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "fa8a45294d4b5fad11057b21636a83f1")
!119 = !{!120, !121, !131, !132, !138, !165, !166, !192}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !117, file: !118, line: 54, baseType: !76, size: 320)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !117, file: !118, line: 55, baseType: !122, size: 128, offset: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue", file: !123, line: 37, size: 128, elements: !124)
!123 = !DIFile(filename: "src/aio/../utils/queue.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "caacb10382cb7490d9578205cd63745e")
!124 = !{!125, !130}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !122, file: !123, line: 38, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_queue_item", file: !123, line: 33, size: 64, elements: !128)
!128 = !{!129}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !127, file: !123, line: 34, baseType: !126, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !122, file: !123, line: 39, baseType: !126, size: 64, offset: 64)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !117, file: !118, line: 56, baseType: !127, size: 64, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "efd", scope: !117, file: !118, line: 57, baseType: !133, size: 64, offset: 512)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_efd", file: !134, line: 25, size: 64, elements: !135)
!134 = !DIFile(filename: "src/utils/efd_pipe.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "1c08f4b50eadadd7c2f017e0160a8607")
!135 = !{!136, !137}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "r", scope: !133, file: !134, line: 26, baseType: !51, size: 32)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "w", scope: !133, file: !134, line: 27, baseType: !51, size: 32, offset: 32)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "poller", scope: !117, file: !118, line: 58, baseType: !139, size: 320, offset: 576)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller", file: !140, line: 31, size: 320, elements: !141)
!140 = !DIFile(filename: "src/aio/poller_poll.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "8331c67183aee395093a221094b46a77")
!141 = !{!142, !143, !144, !145, !153, !164}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !139, file: !140, line: 34, baseType: !51, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !139, file: !140, line: 37, baseType: !51, size: 32, offset: 32)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "capacity", scope: !139, file: !140, line: 40, baseType: !51, size: 32, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "pollset", scope: !139, file: !140, line: 43, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !148, line: 36, size: 64, elements: !149)
!148 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/poll.h", directory: "", checksumkind: CSK_MD5, checksum: "8fae87e980509ab4e228a56ef7f0a295")
!149 = !{!150, !151, !152}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "fd", scope: !147, file: !148, line: 38, baseType: !51, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !147, file: !148, line: 39, baseType: !95, size: 16, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "revents", scope: !147, file: !148, line: 40, baseType: !95, size: 16, offset: 48)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "hndls", scope: !139, file: !140, line: 52, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_hndls_item", file: !140, line: 48, size: 128, elements: !156)
!156 = !{!157, !162, !163}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "hndl", scope: !155, file: !140, line: 49, baseType: !158, size: 64)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_poller_hndl", file: !140, line: 27, size: 32, elements: !160)
!160 = !{!161}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !159, file: !140, line: 28, baseType: !51, size: 32)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !155, file: !140, line: 50, baseType: !51, size: 32, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !155, file: !140, line: 51, baseType: !51, size: 32, offset: 96)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "removed", scope: !139, file: !140, line: 55, baseType: !51, size: 32, offset: 256)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "efd_hndl", scope: !117, file: !118, line: 59, baseType: !159, size: 32, offset: 896)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "timerset", scope: !117, file: !118, line: 60, baseType: !167, size: 256, offset: 960)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_timerset", file: !168, line: 37, size: 256, elements: !169)
!168 = !DIFile(filename: "src/aio/timerset.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "52e8c17e3b1e67716e0e1d199e372b86")
!169 = !{!170, !181}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !167, file: !168, line: 38, baseType: !171, size: 128)
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_clock", file: !172, line: 31, size: 128, elements: !173)
!172 = !DIFile(filename: "src/aio/../utils/clock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "3b1dd450fb044b73356270322fc96dfd")
!173 = !{!174, !180}
!174 = !DIDerivedType(tag: DW_TAG_member, name: "last_tsc", scope: !171, file: !172, line: 33, baseType: !175, size: 64)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !176, line: 27, baseType: !177)
!176 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/stdint-uintn.h", directory: "", checksumkind: CSK_MD5, checksum: "2bf2ae53c58c01b1a1b9383b5195125c")
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint64_t", file: !178, line: 45, baseType: !179)
!178 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "d108b5f93a74c50510d7d9bc0ab36df9")
!179 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !171, file: !172, line: 34, baseType: !175, size: 64, offset: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "timeouts", scope: !167, file: !168, line: 39, baseType: !182, size: 128, offset: 128)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list", file: !183, line: 31, size: 128, elements: !184)
!183 = !DIFile(filename: "src/utils/list.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "54c9ac337e41c4f709e57b7be8c51978")
!184 = !{!185, !191}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !182, file: !183, line: 32, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_list_item", file: !183, line: 26, size: 128, elements: !188)
!188 = !{!189, !190}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !187, file: !183, line: 27, baseType: !186, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !187, file: !183, line: 28, baseType: !186, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !182, file: !183, line: 33, baseType: !186, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !117, file: !118, line: 61, baseType: !193, size: 192, offset: 1216)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_thread", file: !194, line: 25, size: 192, elements: !195)
!194 = !DIFile(filename: "src/utils/thread_posix.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "a50c09fdec8abf14a2a4c221d123dfb2")
!195 = !{!196, !202, !203}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "routine", scope: !193, file: !194, line: 27, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_thread_routine", file: !199, line: 28, baseType: !200)
!199 = !DIFile(filename: "src/aio/../utils/thread.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "90314d20f13144524299a0a943222bab")
!200 = !DISubroutineType(types: !201)
!201 = !{null, !50}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !193, file: !194, line: 28, baseType: !50, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !193, file: !194, line: 29, baseType: !204, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "pthread_t", file: !81, line: 27, baseType: !179)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !72, file: !73, line: 40, baseType: !122, size: 128, offset: 384)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "eventsto", scope: !72, file: !73, line: 41, baseType: !122, size: 128, offset: 512)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "onleave", scope: !72, file: !73, line: 42, baseType: !208, size: 64, offset: 640)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_ctx_onleave", file: !73, line: 35, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !71}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "stopped", scope: !57, file: !58, line: 73, baseType: !213, size: 320, offset: 320)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_fsm_event", file: !58, line: 34, size: 320, elements: !214)
!214 = !{!215, !216, !217, !218, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !213, file: !58, line: 35, baseType: !65, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "src", scope: !213, file: !58, line: 36, baseType: !51, size: 32, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "srcptr", scope: !213, file: !58, line: 37, baseType: !50, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !213, file: !58, line: 38, baseType: !51, size: 32, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !213, file: !58, line: 39, baseType: !127, size: 64, offset: 256)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !53, file: !54, line: 37, baseType: !51, size: 32, offset: 640)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "epbase", scope: !53, file: !54, line: 38, baseType: !222, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase", file: !224, line: 81, size: 128, elements: !225)
!224 = !DIFile(filename: "./src/core/../transport.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "cc9abeba51635c30594998f6bd55506c")
!225 = !{!226, !236}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !223, file: !224, line: 82, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !229)
!229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_epbase_vfptr", file: !224, line: 70, size: 128, elements: !230)
!230 = !{!231, !235}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !229, file: !224, line: 75, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{null, !222}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !229, file: !224, line: 78, baseType: !232, size: 64, offset: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "ep", scope: !223, file: !224, line: 83, baseType: !52, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !53, file: !54, line: 39, baseType: !238, size: 64, offset: 768)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sock", file: !240, line: 42, size: 2752, elements: !241)
!240 = !DIFile(filename: "./src/core/sock.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "81758969b613e986f7c84ae94c8bce2a")
!241 = !{!242, !243, !244, !310, !327, !328, !329, !330, !331, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "fsm", scope: !239, file: !240, line: 45, baseType: !57, size: 640)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !239, file: !240, line: 46, baseType: !51, size: 32, offset: 640)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "sockbase", scope: !239, file: !240, line: 49, baseType: !245, size: 64, offset: 704)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase", file: !247, line: 123, size: 128, elements: !248)
!247 = !DIFile(filename: "./src/core/../protocol.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "4a0ba29a278319bd7d1d2ca969fba722")
!248 = !{!249, !309}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !246, file: !247, line: 124, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sockbase_vfptr", file: !247, line: 84, size: 704, elements: !253)
!253 = !{!254, !258, !259, !265, !269, !270, !271, !275, !295, !296, !304}
!254 = !DIDerivedType(tag: DW_TAG_member, name: "stop", scope: !252, file: !247, line: 87, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{null, !245}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !252, file: !247, line: 90, baseType: !255, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !252, file: !247, line: 97, baseType: !260, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!51, !245, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DICompositeType(tag: DW_TAG_structure_type, name: "nn_pipe", file: !247, line: 56, flags: DIFlagFwdDecl)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !252, file: !247, line: 98, baseType: !266, size: 64, offset: 192)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !245, !263}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !252, file: !247, line: 99, baseType: !266, size: 64, offset: 256)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !252, file: !247, line: 100, baseType: !266, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "events", scope: !252, file: !247, line: 104, baseType: !272, size: 64, offset: 384)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!51, !245}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "send", scope: !252, file: !247, line: 108, baseType: !276, size: 64, offset: 448)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!51, !245, !279}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_msg", file: !281, line: 30, size: 512, elements: !282)
!281 = !DIFile(filename: "src/utils/msg.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "b32a3194aed1e6732d55383f32b5e850")
!282 = !{!283, !294}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "hdr", scope: !280, file: !281, line: 33, baseType: !284, size: 256)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_chunkref", file: !285, line: 39, size: 256, elements: !286)
!285 = !DIFile(filename: "src/utils/chunkref.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "bea9f00d23cbdc1ae3f7acb7d04706f5")
!286 = !{!287}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ref", scope: !284, file: !285, line: 40, baseType: !288, size: 256)
!288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !289, size: 256, elements: !292)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !176, line: 24, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__uint8_t", file: !178, line: 38, baseType: !291)
!291 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!292 = !{!293}
!293 = !DISubrange(count: 32)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "body", scope: !280, file: !281, line: 36, baseType: !284, size: 256, offset: 256)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "recv", scope: !252, file: !247, line: 112, baseType: !276, size: 64, offset: 512)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !252, file: !247, line: 115, baseType: !297, size: 64, offset: 576)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!51, !245, !51, !51, !300, !302}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !303, line: 46, baseType: !179)
!303 = !DIFile(filename: "SVF/llvm-16.0.0.obj/lib/clang/16/include/stddef.h", directory: "/home/raj", checksumkind: CSK_MD5, checksum: "f95079da609b0e8f201cb8136304bf3b")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !252, file: !247, line: 119, baseType: !305, size: 64, offset: 640)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!51, !245, !51, !51, !50, !308}
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "sock", scope: !246, file: !247, line: 125, baseType: !238, size: 64, offset: 64)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "socktype", scope: !239, file: !240, line: 52, baseType: !311, size: 64, offset: 768)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_socktype", file: !247, line: 160, size: 384, elements: !313)
!313 = !{!314, !315, !316, !317, !322, !326}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !312, file: !247, line: 163, baseType: !51, size: 32)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !312, file: !247, line: 164, baseType: !51, size: 32, offset: 32)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !312, file: !247, line: 167, baseType: !51, size: 32, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "create", scope: !312, file: !247, line: 173, baseType: !318, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!51, !50, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "ispeer", scope: !312, file: !247, line: 179, baseType: !323, size: 64, offset: 192)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!51, !51}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !312, file: !247, line: 183, baseType: !187, size: 128, offset: 256)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !239, file: !240, line: 54, baseType: !51, size: 32, offset: 832)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !239, file: !240, line: 56, baseType: !72, size: 704, offset: 896)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "sndfd", scope: !239, file: !240, line: 57, baseType: !133, size: 64, offset: 1600)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "rcvfd", scope: !239, file: !240, line: 58, baseType: !133, size: 64, offset: 1664)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "termsem", scope: !239, file: !240, line: 59, baseType: !332, size: 256, offset: 1728)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_sem", file: !333, line: 64, size: 256, elements: !334)
!333 = !DIFile(filename: "src/aio/../utils/sem.h", directory: "/home/raj/FineDB/lib/nanomsg", checksumkind: CSK_MD5, checksum: "925a3ae06fa6fbb251fb87fc0fbd3a0b")
!334 = !{!335}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "sem", scope: !332, file: !333, line: 65, baseType: !336, size: 256)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "sem_t", file: !337, line: 39, baseType: !338)
!337 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/semaphore.h", directory: "", checksumkind: CSK_MD5, checksum: "f0ec69aef73516c696d526041269f8fd")
!338 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !337, line: 35, size: 256, elements: !339)
!339 = !{!340, !342}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "__size", scope: !338, file: !337, line: 37, baseType: !341, size: 256)
!341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !292)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "__align", scope: !338, file: !337, line: 38, baseType: !110, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "clock", scope: !239, file: !240, line: 63, baseType: !171, size: 128, offset: 1984)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "eps", scope: !239, file: !240, line: 66, baseType: !182, size: 128, offset: 2112)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !239, file: !240, line: 69, baseType: !51, size: 32, offset: 2240)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "linger", scope: !239, file: !240, line: 72, baseType: !51, size: 32, offset: 2272)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "sndbuf", scope: !239, file: !240, line: 73, baseType: !51, size: 32, offset: 2304)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rcvbuf", scope: !239, file: !240, line: 74, baseType: !51, size: 32, offset: 2336)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sndtimeo", scope: !239, file: !240, line: 75, baseType: !51, size: 32, offset: 2368)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "rcvtimeo", scope: !239, file: !240, line: 76, baseType: !51, size: 32, offset: 2400)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl", scope: !239, file: !240, line: 77, baseType: !51, size: 32, offset: 2432)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect_ivl_max", scope: !239, file: !240, line: 78, baseType: !51, size: 32, offset: 2464)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "sndprio", scope: !239, file: !240, line: 79, baseType: !51, size: 32, offset: 2496)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ipv4only", scope: !239, file: !240, line: 80, baseType: !51, size: 32, offset: 2528)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "optsets", scope: !239, file: !240, line: 83, baseType: !356, size: 192, offset: 2560)
!356 = !DICompositeType(tag: DW_TAG_array_type, baseType: !357, size: 192, elements: !377)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset", file: !224, line: 56, size: 64, elements: !359)
!359 = !{!360}
!360 = !DIDerivedType(tag: DW_TAG_member, name: "vfptr", scope: !358, file: !224, line: 57, baseType: !361, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_optset_vfptr", file: !224, line: 48, size: 192, elements: !364)
!364 = !{!365, !369, !373}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !363, file: !224, line: 49, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{null, !357}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "setopt", scope: !363, file: !224, line: 50, baseType: !370, size: 64, offset: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!51, !357, !51, !300, !302}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "getopt", scope: !363, file: !224, line: 52, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!375 = !DISubroutineType(types: !376)
!376 = !{!51, !357, !51, !50, !308}
!377 = !{!378}
!378 = !DISubrange(count: 3)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "eid", scope: !53, file: !54, line: 40, baseType: !51, size: 32, offset: 832)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !53, file: !54, line: 41, baseType: !187, size: 128, offset: 896)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !53, file: !54, line: 42, baseType: !382, size: 1032, offset: 1024)
!382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1032, elements: !383)
!383 = !{!384}
!384 = !DISubrange(count: 129)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!387 = !{!0, !7, !12, !17, !22, !27, !32, !37, !42}
!388 = !{i32 7, !"Dwarf Version", i32 5}
!389 = !{i32 2, !"Debug Info Version", i32 3}
!390 = !{i32 1, !"wchar_size", i32 4}
!391 = !{i32 8, !"PIC Level", i32 2}
!392 = !{i32 7, !"PIE Level", i32 2}
!393 = !{i32 7, !"uwtable", i32 2}
!394 = !{i32 7, !"frame-pointer", i32 2}
!395 = !{!"clang version 16.0.0"}
!396 = distinct !DISubprogram(name: "nn_sock_init", scope: !2, file: !2, line: 65, type: !397, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!397 = !DISubroutineType(types: !398)
!398 = !{!51, !238, !311}
!399 = !{}
!400 = !DILocalVariable(name: "self", arg: 1, scope: !396, file: !2, line: 65, type: !238)
!401 = !DILocation(line: 65, column: 35, scope: !396)
!402 = !DILocalVariable(name: "socktype", arg: 2, scope: !396, file: !2, line: 65, type: !311)
!403 = !DILocation(line: 65, column: 61, scope: !396)
!404 = !DILocalVariable(name: "rc", scope: !396, file: !2, line: 67, type: !51)
!405 = !DILocation(line: 67, column: 9, scope: !396)
!406 = !DILocalVariable(name: "i", scope: !396, file: !2, line: 68, type: !51)
!407 = !DILocation(line: 68, column: 9, scope: !396)
!408 = !DILocation(line: 71, column: 5, scope: !396)
!409 = !DILocation(line: 71, column: 5, scope: !410)
!410 = distinct !DILexicalBlock(scope: !411, file: !2, line: 71, column: 5)
!411 = distinct !DILexicalBlock(scope: !396, file: !2, line: 71, column: 5)
!412 = !DILocation(line: 71, column: 5, scope: !411)
!413 = !DILocation(line: 71, column: 5, scope: !414)
!414 = distinct !DILexicalBlock(scope: !410, file: !2, line: 71, column: 5)
!415 = !DILocation(line: 75, column: 19, scope: !396)
!416 = !DILocation(line: 75, column: 25, scope: !396)
!417 = !DILocation(line: 75, column: 30, scope: !396)
!418 = !DILocation(line: 75, column: 5, scope: !396)
!419 = !DILocation(line: 78, column: 24, scope: !396)
!420 = !DILocation(line: 78, column: 30, scope: !396)
!421 = !DILocation(line: 78, column: 53, scope: !396)
!422 = !DILocation(line: 78, column: 59, scope: !396)
!423 = !DILocation(line: 78, column: 5, scope: !396)
!424 = !DILocation(line: 79, column: 5, scope: !396)
!425 = !DILocation(line: 79, column: 11, scope: !396)
!426 = !DILocation(line: 79, column: 17, scope: !396)
!427 = !DILocation(line: 83, column: 9, scope: !428)
!428 = distinct !DILexicalBlock(scope: !396, file: !2, line: 83, column: 9)
!429 = !DILocation(line: 83, column: 19, scope: !428)
!430 = !DILocation(line: 83, column: 25, scope: !428)
!431 = !DILocation(line: 83, column: 9, scope: !396)
!432 = !DILocation(line: 84, column: 18, scope: !428)
!433 = !DILocation(line: 84, column: 24, scope: !428)
!434 = !DILocation(line: 84, column: 9, scope: !428)
!435 = !DILocation(line: 86, column: 28, scope: !436)
!436 = distinct !DILexicalBlock(scope: !428, file: !2, line: 85, column: 10)
!437 = !DILocation(line: 86, column: 34, scope: !436)
!438 = !DILocation(line: 86, column: 14, scope: !436)
!439 = !DILocation(line: 86, column: 12, scope: !436)
!440 = !DILocation(line: 87, column: 13, scope: !441)
!441 = distinct !DILexicalBlock(scope: !436, file: !2, line: 87, column: 13)
!442 = !DILocation(line: 87, column: 13, scope: !436)
!443 = !DILocation(line: 88, column: 20, scope: !441)
!444 = !DILocation(line: 88, column: 13, scope: !441)
!445 = !DILocation(line: 90, column: 9, scope: !446)
!446 = distinct !DILexicalBlock(scope: !396, file: !2, line: 90, column: 9)
!447 = !DILocation(line: 90, column: 19, scope: !446)
!448 = !DILocation(line: 90, column: 25, scope: !446)
!449 = !DILocation(line: 90, column: 9, scope: !396)
!450 = !DILocation(line: 91, column: 18, scope: !446)
!451 = !DILocation(line: 91, column: 24, scope: !446)
!452 = !DILocation(line: 91, column: 9, scope: !446)
!453 = !DILocation(line: 93, column: 28, scope: !454)
!454 = distinct !DILexicalBlock(scope: !446, file: !2, line: 92, column: 10)
!455 = !DILocation(line: 93, column: 34, scope: !454)
!456 = !DILocation(line: 93, column: 14, scope: !454)
!457 = !DILocation(line: 93, column: 12, scope: !454)
!458 = !DILocation(line: 94, column: 13, scope: !459)
!459 = distinct !DILexicalBlock(scope: !454, file: !2, line: 94, column: 13)
!460 = !DILocation(line: 94, column: 13, scope: !454)
!461 = !DILocation(line: 95, column: 19, scope: !462)
!462 = distinct !DILexicalBlock(scope: !463, file: !2, line: 95, column: 17)
!463 = distinct !DILexicalBlock(scope: !459, file: !2, line: 94, column: 31)
!464 = !DILocation(line: 95, column: 29, scope: !462)
!465 = !DILocation(line: 95, column: 35, scope: !462)
!466 = !DILocation(line: 95, column: 17, scope: !463)
!467 = !DILocation(line: 96, column: 31, scope: !462)
!468 = !DILocation(line: 96, column: 37, scope: !462)
!469 = !DILocation(line: 96, column: 17, scope: !462)
!470 = !DILocation(line: 97, column: 20, scope: !463)
!471 = !DILocation(line: 97, column: 13, scope: !463)
!472 = !DILocation(line: 100, column: 19, scope: !396)
!473 = !DILocation(line: 100, column: 25, scope: !396)
!474 = !DILocation(line: 100, column: 5, scope: !396)
!475 = !DILocation(line: 101, column: 9, scope: !476)
!476 = distinct !DILexicalBlock(scope: !396, file: !2, line: 101, column: 9)
!477 = !DILocation(line: 101, column: 9, scope: !396)
!478 = !DILocation(line: 102, column: 15, scope: !479)
!479 = distinct !DILexicalBlock(scope: !480, file: !2, line: 102, column: 13)
!480 = distinct !DILexicalBlock(scope: !476, file: !2, line: 101, column: 27)
!481 = !DILocation(line: 102, column: 25, scope: !479)
!482 = !DILocation(line: 102, column: 31, scope: !479)
!483 = !DILocation(line: 102, column: 13, scope: !480)
!484 = !DILocation(line: 103, column: 27, scope: !479)
!485 = !DILocation(line: 103, column: 33, scope: !479)
!486 = !DILocation(line: 103, column: 13, scope: !479)
!487 = !DILocation(line: 104, column: 15, scope: !488)
!488 = distinct !DILexicalBlock(scope: !480, file: !2, line: 104, column: 13)
!489 = !DILocation(line: 104, column: 25, scope: !488)
!490 = !DILocation(line: 104, column: 31, scope: !488)
!491 = !DILocation(line: 104, column: 13, scope: !480)
!492 = !DILocation(line: 105, column: 27, scope: !488)
!493 = !DILocation(line: 105, column: 33, scope: !488)
!494 = !DILocation(line: 105, column: 13, scope: !488)
!495 = !DILocation(line: 106, column: 16, scope: !480)
!496 = !DILocation(line: 106, column: 9, scope: !480)
!497 = !DILocation(line: 109, column: 5, scope: !396)
!498 = !DILocation(line: 109, column: 11, scope: !396)
!499 = !DILocation(line: 109, column: 17, scope: !396)
!500 = !DILocation(line: 110, column: 21, scope: !396)
!501 = !DILocation(line: 110, column: 27, scope: !396)
!502 = !DILocation(line: 110, column: 5, scope: !396)
!503 = !DILocation(line: 111, column: 20, scope: !396)
!504 = !DILocation(line: 111, column: 26, scope: !396)
!505 = !DILocation(line: 111, column: 5, scope: !396)
!506 = !DILocation(line: 112, column: 5, scope: !396)
!507 = !DILocation(line: 112, column: 11, scope: !396)
!508 = !DILocation(line: 112, column: 15, scope: !396)
!509 = !DILocation(line: 115, column: 5, scope: !396)
!510 = !DILocation(line: 115, column: 11, scope: !396)
!511 = !DILocation(line: 115, column: 18, scope: !396)
!512 = !DILocation(line: 116, column: 5, scope: !396)
!513 = !DILocation(line: 116, column: 11, scope: !396)
!514 = !DILocation(line: 116, column: 18, scope: !396)
!515 = !DILocation(line: 117, column: 5, scope: !396)
!516 = !DILocation(line: 117, column: 11, scope: !396)
!517 = !DILocation(line: 117, column: 18, scope: !396)
!518 = !DILocation(line: 118, column: 5, scope: !396)
!519 = !DILocation(line: 118, column: 11, scope: !396)
!520 = !DILocation(line: 118, column: 20, scope: !396)
!521 = !DILocation(line: 119, column: 5, scope: !396)
!522 = !DILocation(line: 119, column: 11, scope: !396)
!523 = !DILocation(line: 119, column: 20, scope: !396)
!524 = !DILocation(line: 120, column: 5, scope: !396)
!525 = !DILocation(line: 120, column: 11, scope: !396)
!526 = !DILocation(line: 120, column: 25, scope: !396)
!527 = !DILocation(line: 121, column: 5, scope: !396)
!528 = !DILocation(line: 121, column: 11, scope: !396)
!529 = !DILocation(line: 121, column: 29, scope: !396)
!530 = !DILocation(line: 122, column: 5, scope: !396)
!531 = !DILocation(line: 122, column: 11, scope: !396)
!532 = !DILocation(line: 122, column: 19, scope: !396)
!533 = !DILocation(line: 123, column: 5, scope: !396)
!534 = !DILocation(line: 123, column: 11, scope: !396)
!535 = !DILocation(line: 123, column: 20, scope: !396)
!536 = !DILocation(line: 127, column: 12, scope: !537)
!537 = distinct !DILexicalBlock(scope: !396, file: !2, line: 127, column: 5)
!538 = !DILocation(line: 127, column: 10, scope: !537)
!539 = !DILocation(line: 127, column: 17, scope: !540)
!540 = distinct !DILexicalBlock(scope: !537, file: !2, line: 127, column: 5)
!541 = !DILocation(line: 127, column: 19, scope: !540)
!542 = !DILocation(line: 127, column: 5, scope: !537)
!543 = !DILocation(line: 128, column: 9, scope: !540)
!544 = !DILocation(line: 128, column: 15, scope: !540)
!545 = !DILocation(line: 128, column: 24, scope: !540)
!546 = !DILocation(line: 128, column: 27, scope: !540)
!547 = !DILocation(line: 127, column: 40, scope: !540)
!548 = !DILocation(line: 127, column: 5, scope: !540)
!549 = distinct !{!549, !542, !550, !551}
!550 = !DILocation(line: 128, column: 29, scope: !537)
!551 = !{!"llvm.loop.mustprogress"}
!552 = !DILocation(line: 131, column: 10, scope: !396)
!553 = !DILocation(line: 131, column: 20, scope: !396)
!554 = !DILocation(line: 131, column: 36, scope: !396)
!555 = !DILocation(line: 131, column: 43, scope: !396)
!556 = !DILocation(line: 131, column: 49, scope: !396)
!557 = !DILocation(line: 131, column: 8, scope: !396)
!558 = !DILocation(line: 132, column: 5, scope: !396)
!559 = !DILocation(line: 132, column: 5, scope: !560)
!560 = distinct !DILexicalBlock(scope: !561, file: !2, line: 132, column: 5)
!561 = distinct !DILexicalBlock(scope: !396, file: !2, line: 132, column: 5)
!562 = !DILocation(line: 132, column: 5, scope: !561)
!563 = !DILocation(line: 132, column: 5, scope: !564)
!564 = distinct !DILexicalBlock(scope: !560, file: !2, line: 132, column: 5)
!565 = !DILocation(line: 133, column: 22, scope: !396)
!566 = !DILocation(line: 133, column: 5, scope: !396)
!567 = !DILocation(line: 133, column: 11, scope: !396)
!568 = !DILocation(line: 133, column: 20, scope: !396)
!569 = !DILocation(line: 136, column: 20, scope: !396)
!570 = !DILocation(line: 136, column: 26, scope: !396)
!571 = !DILocation(line: 136, column: 5, scope: !396)
!572 = !DILocation(line: 137, column: 20, scope: !396)
!573 = !DILocation(line: 137, column: 26, scope: !396)
!574 = !DILocation(line: 137, column: 5, scope: !396)
!575 = !DILocation(line: 138, column: 20, scope: !396)
!576 = !DILocation(line: 138, column: 26, scope: !396)
!577 = !DILocation(line: 138, column: 5, scope: !396)
!578 = !DILocation(line: 140, column: 5, scope: !396)
!579 = !DILocation(line: 141, column: 1, scope: !396)
!580 = distinct !DISubprogram(name: "nn_sock_onleave", scope: !2, file: !2, line: 634, type: !210, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !399)
!581 = !DILocalVariable(name: "self", arg: 1, scope: !580, file: !2, line: 634, type: !71)
!582 = !DILocation(line: 634, column: 45, scope: !580)
!583 = !DILocalVariable(name: "sock", scope: !580, file: !2, line: 636, type: !238)
!584 = !DILocation(line: 636, column: 21, scope: !580)
!585 = !DILocalVariable(name: "events", scope: !580, file: !2, line: 637, type: !51)
!586 = !DILocation(line: 637, column: 9, scope: !580)
!587 = !DILocation(line: 639, column: 12, scope: !580)
!588 = !DILocation(line: 639, column: 10, scope: !580)
!589 = !DILocation(line: 643, column: 9, scope: !590)
!590 = distinct !DILexicalBlock(scope: !580, file: !2, line: 643, column: 9)
!591 = !DILocation(line: 643, column: 9, scope: !580)
!592 = !DILocation(line: 644, column: 9, scope: !590)
!593 = !DILocation(line: 647, column: 14, scope: !580)
!594 = !DILocation(line: 647, column: 20, scope: !580)
!595 = !DILocation(line: 647, column: 30, scope: !580)
!596 = !DILocation(line: 647, column: 37, scope: !580)
!597 = !DILocation(line: 647, column: 45, scope: !580)
!598 = !DILocation(line: 647, column: 51, scope: !580)
!599 = !DILocation(line: 647, column: 12, scope: !580)
!600 = !DILocation(line: 648, column: 5, scope: !580)
!601 = !DILocation(line: 648, column: 5, scope: !602)
!602 = distinct !DILexicalBlock(scope: !603, file: !2, line: 648, column: 5)
!603 = distinct !DILexicalBlock(scope: !580, file: !2, line: 648, column: 5)
!604 = !DILocation(line: 648, column: 5, scope: !603)
!605 = !DILocation(line: 648, column: 5, scope: !606)
!606 = distinct !DILexicalBlock(scope: !602, file: !2, line: 648, column: 5)
!607 = !DILocation(line: 651, column: 11, scope: !608)
!608 = distinct !DILexicalBlock(scope: !580, file: !2, line: 651, column: 9)
!609 = !DILocation(line: 651, column: 17, scope: !608)
!610 = !DILocation(line: 651, column: 27, scope: !608)
!611 = !DILocation(line: 651, column: 33, scope: !608)
!612 = !DILocation(line: 651, column: 9, scope: !580)
!613 = !DILocation(line: 652, column: 13, scope: !614)
!614 = distinct !DILexicalBlock(scope: !615, file: !2, line: 652, column: 13)
!615 = distinct !DILexicalBlock(scope: !608, file: !2, line: 651, column: 61)
!616 = !DILocation(line: 652, column: 20, scope: !614)
!617 = !DILocation(line: 652, column: 13, scope: !615)
!618 = !DILocation(line: 653, column: 19, scope: !619)
!619 = distinct !DILexicalBlock(scope: !620, file: !2, line: 653, column: 17)
!620 = distinct !DILexicalBlock(scope: !614, file: !2, line: 652, column: 44)
!621 = !DILocation(line: 653, column: 25, scope: !619)
!622 = !DILocation(line: 653, column: 31, scope: !619)
!623 = !DILocation(line: 653, column: 17, scope: !620)
!624 = !DILocation(line: 654, column: 17, scope: !625)
!625 = distinct !DILexicalBlock(scope: !619, file: !2, line: 653, column: 51)
!626 = !DILocation(line: 654, column: 23, scope: !625)
!627 = !DILocation(line: 654, column: 29, scope: !625)
!628 = !DILocation(line: 655, column: 33, scope: !625)
!629 = !DILocation(line: 655, column: 39, scope: !625)
!630 = !DILocation(line: 655, column: 17, scope: !625)
!631 = !DILocation(line: 656, column: 13, scope: !625)
!632 = !DILocation(line: 657, column: 9, scope: !620)
!633 = !DILocation(line: 659, column: 17, scope: !634)
!634 = distinct !DILexicalBlock(scope: !635, file: !2, line: 659, column: 17)
!635 = distinct !DILexicalBlock(scope: !614, file: !2, line: 658, column: 14)
!636 = !DILocation(line: 659, column: 23, scope: !634)
!637 = !DILocation(line: 659, column: 29, scope: !634)
!638 = !DILocation(line: 659, column: 17, scope: !635)
!639 = !DILocation(line: 660, column: 17, scope: !640)
!640 = distinct !DILexicalBlock(scope: !634, file: !2, line: 659, column: 48)
!641 = !DILocation(line: 660, column: 23, scope: !640)
!642 = !DILocation(line: 660, column: 29, scope: !640)
!643 = !DILocation(line: 661, column: 35, scope: !640)
!644 = !DILocation(line: 661, column: 41, scope: !640)
!645 = !DILocation(line: 661, column: 17, scope: !640)
!646 = !DILocation(line: 662, column: 13, scope: !640)
!647 = !DILocation(line: 664, column: 5, scope: !615)
!648 = !DILocation(line: 667, column: 11, scope: !649)
!649 = distinct !DILexicalBlock(scope: !580, file: !2, line: 667, column: 9)
!650 = !DILocation(line: 667, column: 17, scope: !649)
!651 = !DILocation(line: 667, column: 27, scope: !649)
!652 = !DILocation(line: 667, column: 33, scope: !649)
!653 = !DILocation(line: 667, column: 9, scope: !580)
!654 = !DILocation(line: 668, column: 13, scope: !655)
!655 = distinct !DILexicalBlock(scope: !656, file: !2, line: 668, column: 13)
!656 = distinct !DILexicalBlock(scope: !649, file: !2, line: 667, column: 61)
!657 = !DILocation(line: 668, column: 20, scope: !655)
!658 = !DILocation(line: 668, column: 13, scope: !656)
!659 = !DILocation(line: 669, column: 19, scope: !660)
!660 = distinct !DILexicalBlock(scope: !661, file: !2, line: 669, column: 17)
!661 = distinct !DILexicalBlock(scope: !655, file: !2, line: 668, column: 45)
!662 = !DILocation(line: 669, column: 25, scope: !660)
!663 = !DILocation(line: 669, column: 31, scope: !660)
!664 = !DILocation(line: 669, column: 17, scope: !661)
!665 = !DILocation(line: 670, column: 17, scope: !666)
!666 = distinct !DILexicalBlock(scope: !660, file: !2, line: 669, column: 52)
!667 = !DILocation(line: 670, column: 23, scope: !666)
!668 = !DILocation(line: 670, column: 29, scope: !666)
!669 = !DILocation(line: 671, column: 33, scope: !666)
!670 = !DILocation(line: 671, column: 39, scope: !666)
!671 = !DILocation(line: 671, column: 17, scope: !666)
!672 = !DILocation(line: 672, column: 13, scope: !666)
!673 = !DILocation(line: 673, column: 9, scope: !661)
!674 = !DILocation(line: 675, column: 17, scope: !675)
!675 = distinct !DILexicalBlock(scope: !676, file: !2, line: 675, column: 17)
!676 = distinct !DILexicalBlock(scope: !655, file: !2, line: 674, column: 14)
!677 = !DILocation(line: 675, column: 23, scope: !675)
!678 = !DILocation(line: 675, column: 29, scope: !675)
!679 = !DILocation(line: 675, column: 17, scope: !676)
!680 = !DILocation(line: 676, column: 17, scope: !681)
!681 = distinct !DILexicalBlock(scope: !675, file: !2, line: 675, column: 49)
!682 = !DILocation(line: 676, column: 23, scope: !681)
!683 = !DILocation(line: 676, column: 29, scope: !681)
!684 = !DILocation(line: 677, column: 35, scope: !681)
!685 = !DILocation(line: 677, column: 41, scope: !681)
!686 = !DILocation(line: 677, column: 17, scope: !681)
!687 = !DILocation(line: 678, column: 13, scope: !681)
!688 = !DILocation(line: 680, column: 5, scope: !656)
!689 = !DILocation(line: 681, column: 1, scope: !580)
!690 = distinct !DISubprogram(name: "nn_sock_handler", scope: !2, file: !2, line: 710, type: !63, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !399)
!691 = !DILocalVariable(name: "self", arg: 1, scope: !690, file: !2, line: 710, type: !65)
!692 = !DILocation(line: 710, column: 45, scope: !690)
!693 = !DILocalVariable(name: "src", arg: 2, scope: !690, file: !2, line: 710, type: !51)
!694 = !DILocation(line: 710, column: 55, scope: !690)
!695 = !DILocalVariable(name: "type", arg: 3, scope: !690, file: !2, line: 710, type: !51)
!696 = !DILocation(line: 710, column: 64, scope: !690)
!697 = !DILocalVariable(name: "srcptr", arg: 4, scope: !690, file: !2, line: 711, type: !50)
!698 = !DILocation(line: 711, column: 11, scope: !690)
!699 = !DILocalVariable(name: "sock", scope: !690, file: !2, line: 713, type: !238)
!700 = !DILocation(line: 713, column: 21, scope: !690)
!701 = !DILocalVariable(name: "it", scope: !690, file: !2, line: 714, type: !186)
!702 = !DILocation(line: 714, column: 26, scope: !690)
!703 = !DILocalVariable(name: "ep", scope: !690, file: !2, line: 715, type: !52)
!704 = !DILocation(line: 715, column: 19, scope: !690)
!705 = !DILocation(line: 717, column: 12, scope: !690)
!706 = !DILocation(line: 717, column: 10, scope: !690)
!707 = !DILocation(line: 722, column: 9, scope: !708)
!708 = distinct !DILexicalBlock(scope: !690, file: !2, line: 722, column: 9)
!709 = !DILocation(line: 0, scope: !708)
!710 = !DILocation(line: 722, column: 9, scope: !690)
!711 = !DILocation(line: 723, column: 9, scope: !712)
!712 = distinct !DILexicalBlock(scope: !708, file: !2, line: 722, column: 64)
!713 = !DILocation(line: 723, column: 9, scope: !714)
!714 = distinct !DILexicalBlock(scope: !715, file: !2, line: 723, column: 9)
!715 = distinct !DILexicalBlock(scope: !712, file: !2, line: 723, column: 9)
!716 = !DILocation(line: 723, column: 9, scope: !715)
!717 = !DILocation(line: 723, column: 9, scope: !718)
!718 = distinct !DILexicalBlock(scope: !714, file: !2, line: 723, column: 9)
!719 = !DILocation(line: 728, column: 15, scope: !720)
!720 = distinct !DILexicalBlock(scope: !712, file: !2, line: 728, column: 13)
!721 = !DILocation(line: 728, column: 21, scope: !720)
!722 = !DILocation(line: 728, column: 31, scope: !720)
!723 = !DILocation(line: 728, column: 37, scope: !720)
!724 = !DILocation(line: 728, column: 13, scope: !712)
!725 = !DILocation(line: 729, column: 27, scope: !726)
!726 = distinct !DILexicalBlock(scope: !720, file: !2, line: 728, column: 65)
!727 = !DILocation(line: 729, column: 33, scope: !726)
!728 = !DILocation(line: 729, column: 13, scope: !726)
!729 = !DILocation(line: 730, column: 22, scope: !726)
!730 = !DILocation(line: 730, column: 28, scope: !726)
!731 = !DILocation(line: 730, column: 13, scope: !726)
!732 = !DILocation(line: 731, column: 9, scope: !726)
!733 = !DILocation(line: 732, column: 15, scope: !734)
!734 = distinct !DILexicalBlock(scope: !712, file: !2, line: 732, column: 13)
!735 = !DILocation(line: 732, column: 21, scope: !734)
!736 = !DILocation(line: 732, column: 31, scope: !734)
!737 = !DILocation(line: 732, column: 37, scope: !734)
!738 = !DILocation(line: 732, column: 13, scope: !712)
!739 = !DILocation(line: 733, column: 27, scope: !740)
!740 = distinct !DILexicalBlock(scope: !734, file: !2, line: 732, column: 65)
!741 = !DILocation(line: 733, column: 33, scope: !740)
!742 = !DILocation(line: 733, column: 13, scope: !740)
!743 = !DILocation(line: 734, column: 22, scope: !740)
!744 = !DILocation(line: 734, column: 28, scope: !740)
!745 = !DILocation(line: 734, column: 13, scope: !740)
!746 = !DILocation(line: 735, column: 9, scope: !740)
!747 = !DILocation(line: 738, column: 35, scope: !748)
!748 = distinct !DILexicalBlock(scope: !712, file: !2, line: 738, column: 9)
!749 = !DILocation(line: 738, column: 41, scope: !748)
!750 = !DILocation(line: 738, column: 19, scope: !748)
!751 = !DILocation(line: 738, column: 17, scope: !748)
!752 = !DILocation(line: 738, column: 14, scope: !748)
!753 = !DILocation(line: 739, column: 15, scope: !754)
!754 = distinct !DILexicalBlock(scope: !748, file: !2, line: 738, column: 9)
!755 = !DILocation(line: 739, column: 35, scope: !754)
!756 = !DILocation(line: 739, column: 41, scope: !754)
!757 = !DILocation(line: 739, column: 21, scope: !754)
!758 = !DILocation(line: 739, column: 18, scope: !754)
!759 = !DILocation(line: 738, column: 9, scope: !748)
!760 = !DILocation(line: 741, column: 25, scope: !754)
!761 = !DILocation(line: 741, column: 13, scope: !754)
!762 = !DILocation(line: 740, column: 35, scope: !754)
!763 = !DILocation(line: 740, column: 41, scope: !754)
!764 = !DILocation(line: 740, column: 46, scope: !754)
!765 = !DILocation(line: 740, column: 20, scope: !754)
!766 = !DILocation(line: 740, column: 18, scope: !754)
!767 = !DILocation(line: 738, column: 9, scope: !754)
!768 = distinct !{!768, !759, !769, !551}
!769 = !DILocation(line: 741, column: 57, scope: !748)
!770 = !DILocation(line: 742, column: 9, scope: !712)
!771 = !DILocation(line: 742, column: 15, scope: !712)
!772 = !DILocation(line: 742, column: 21, scope: !712)
!773 = !DILocation(line: 743, column: 9, scope: !712)
!774 = !DILocation(line: 745, column: 9, scope: !775)
!775 = distinct !DILexicalBlock(scope: !690, file: !2, line: 745, column: 9)
!776 = !DILocation(line: 745, column: 9, scope: !690)
!777 = !DILocation(line: 751, column: 9, scope: !778)
!778 = distinct !DILexicalBlock(scope: !775, file: !2, line: 745, column: 62)
!779 = !DILocation(line: 751, column: 9, scope: !780)
!780 = distinct !DILexicalBlock(scope: !781, file: !2, line: 751, column: 9)
!781 = distinct !DILexicalBlock(scope: !778, file: !2, line: 751, column: 9)
!782 = !DILocation(line: 751, column: 9, scope: !781)
!783 = !DILocation(line: 751, column: 9, scope: !784)
!784 = distinct !DILexicalBlock(scope: !780, file: !2, line: 751, column: 9)
!785 = !DILocation(line: 754, column: 30, scope: !778)
!786 = !DILocation(line: 754, column: 12, scope: !778)
!787 = !DILocation(line: 755, column: 25, scope: !778)
!788 = !DILocation(line: 755, column: 31, scope: !778)
!789 = !DILocation(line: 755, column: 37, scope: !778)
!790 = !DILocation(line: 755, column: 41, scope: !778)
!791 = !DILocation(line: 755, column: 9, scope: !778)
!792 = !DILocation(line: 756, column: 21, scope: !778)
!793 = !DILocation(line: 756, column: 9, scope: !778)
!794 = !DILocation(line: 757, column: 18, scope: !778)
!795 = !DILocation(line: 757, column: 9, scope: !778)
!796 = !DILabel(scope: !778, name: "finish2", file: !2, line: 759)
!797 = !DILocation(line: 759, column: 1, scope: !778)
!798 = !DILocation(line: 763, column: 30, scope: !799)
!799 = distinct !DILexicalBlock(scope: !778, file: !2, line: 763, column: 13)
!800 = !DILocation(line: 763, column: 36, scope: !799)
!801 = !DILocation(line: 763, column: 14, scope: !799)
!802 = !DILocation(line: 763, column: 13, scope: !778)
!803 = !DILocation(line: 764, column: 13, scope: !799)
!804 = !DILocation(line: 765, column: 9, scope: !778)
!805 = !DILocation(line: 765, column: 15, scope: !778)
!806 = !DILocation(line: 765, column: 21, scope: !778)
!807 = !DILocation(line: 766, column: 14, scope: !808)
!808 = distinct !DILexicalBlock(scope: !778, file: !2, line: 766, column: 13)
!809 = !DILocation(line: 766, column: 20, scope: !808)
!810 = !DILocation(line: 766, column: 30, scope: !808)
!811 = !DILocation(line: 766, column: 37, scope: !808)
!812 = !DILocation(line: 766, column: 13, scope: !778)
!813 = !DILocation(line: 767, column: 13, scope: !808)
!814 = !DILocation(line: 768, column: 9, scope: !778)
!815 = !DILocation(line: 768, column: 15, scope: !778)
!816 = !DILocation(line: 768, column: 25, scope: !778)
!817 = !DILocation(line: 768, column: 32, scope: !778)
!818 = !DILocation(line: 768, column: 38, scope: !778)
!819 = !DILocation(line: 768, column: 44, scope: !778)
!820 = !DILocation(line: 769, column: 9, scope: !778)
!821 = !DILocation(line: 771, column: 9, scope: !822)
!822 = distinct !DILexicalBlock(scope: !690, file: !2, line: 771, column: 9)
!823 = !DILocation(line: 771, column: 9, scope: !690)
!824 = !DILocation(line: 775, column: 9, scope: !825)
!825 = distinct !DILexicalBlock(scope: !822, file: !2, line: 771, column: 58)
!826 = !DILocation(line: 775, column: 9, scope: !827)
!827 = distinct !DILexicalBlock(scope: !828, file: !2, line: 775, column: 9)
!828 = distinct !DILexicalBlock(scope: !825, file: !2, line: 775, column: 9)
!829 = !DILocation(line: 0, scope: !827)
!830 = !DILocation(line: 775, column: 9, scope: !828)
!831 = !DILocation(line: 775, column: 9, scope: !832)
!832 = distinct !DILexicalBlock(scope: !827, file: !2, line: 775, column: 9)
!833 = !DILabel(scope: !825, name: "finish1", file: !2, line: 777)
!834 = !DILocation(line: 777, column: 1, scope: !825)
!835 = !DILocation(line: 780, column: 9, scope: !825)
!836 = !DILocation(line: 780, column: 15, scope: !825)
!837 = !DILocation(line: 780, column: 25, scope: !825)
!838 = !DILocation(line: 780, column: 32, scope: !825)
!839 = !DILocation(line: 780, column: 41, scope: !825)
!840 = !DILocation(line: 780, column: 47, scope: !825)
!841 = !DILocation(line: 781, column: 9, scope: !825)
!842 = !DILocation(line: 781, column: 15, scope: !825)
!843 = !DILocation(line: 781, column: 21, scope: !825)
!844 = !DILocation(line: 785, column: 23, scope: !825)
!845 = !DILocation(line: 785, column: 29, scope: !825)
!846 = !DILocation(line: 785, column: 9, scope: !825)
!847 = !DILocation(line: 787, column: 9, scope: !825)
!848 = !DILocation(line: 790, column: 13, scope: !690)
!849 = !DILocation(line: 790, column: 19, scope: !690)
!850 = !DILocation(line: 790, column: 5, scope: !690)
!851 = !DILocation(line: 796, column: 17, scope: !852)
!852 = distinct !DILexicalBlock(scope: !690, file: !2, line: 790, column: 26)
!853 = !DILocation(line: 796, column: 9, scope: !852)
!854 = !DILocation(line: 799, column: 21, scope: !855)
!855 = distinct !DILexicalBlock(scope: !852, file: !2, line: 796, column: 22)
!856 = !DILocation(line: 799, column: 13, scope: !855)
!857 = !DILocation(line: 801, column: 17, scope: !858)
!858 = distinct !DILexicalBlock(scope: !855, file: !2, line: 799, column: 27)
!859 = !DILocation(line: 801, column: 23, scope: !858)
!860 = !DILocation(line: 801, column: 29, scope: !858)
!861 = !DILocation(line: 802, column: 17, scope: !858)
!862 = !DILocation(line: 804, column: 41, scope: !858)
!863 = !DILocation(line: 804, column: 17, scope: !858)
!864 = !DILocation(line: 805, column: 17, scope: !858)
!865 = !DILocation(line: 807, column: 17, scope: !858)
!866 = !DILocation(line: 807, column: 17, scope: !867)
!867 = distinct !DILexicalBlock(scope: !868, file: !2, line: 807, column: 17)
!868 = distinct !DILexicalBlock(scope: !869, file: !2, line: 807, column: 17)
!869 = distinct !DILexicalBlock(scope: !858, file: !2, line: 807, column: 17)
!870 = !DILocation(line: 808, column: 13, scope: !858)
!871 = !DILocation(line: 811, column: 13, scope: !855)
!872 = !DILocation(line: 811, column: 13, scope: !873)
!873 = distinct !DILexicalBlock(scope: !874, file: !2, line: 811, column: 13)
!874 = distinct !DILexicalBlock(scope: !875, file: !2, line: 811, column: 13)
!875 = distinct !DILexicalBlock(scope: !855, file: !2, line: 811, column: 13)
!876 = !DILocation(line: 812, column: 9, scope: !855)
!877 = !DILocation(line: 818, column: 17, scope: !852)
!878 = !DILocation(line: 818, column: 9, scope: !852)
!879 = !DILocation(line: 821, column: 21, scope: !880)
!880 = distinct !DILexicalBlock(scope: !852, file: !2, line: 818, column: 22)
!881 = !DILocation(line: 821, column: 13, scope: !880)
!882 = !DILocation(line: 823, column: 41, scope: !883)
!883 = distinct !DILexicalBlock(scope: !880, file: !2, line: 821, column: 27)
!884 = !DILocation(line: 823, column: 17, scope: !883)
!885 = !DILocation(line: 824, column: 17, scope: !883)
!886 = !DILocation(line: 826, column: 17, scope: !883)
!887 = !DILocation(line: 826, column: 17, scope: !888)
!888 = distinct !DILexicalBlock(scope: !889, file: !2, line: 826, column: 17)
!889 = distinct !DILexicalBlock(scope: !890, file: !2, line: 826, column: 17)
!890 = distinct !DILexicalBlock(scope: !883, file: !2, line: 826, column: 17)
!891 = !DILocation(line: 827, column: 13, scope: !883)
!892 = !DILocation(line: 832, column: 21, scope: !880)
!893 = !DILocation(line: 832, column: 13, scope: !880)
!894 = !DILocation(line: 834, column: 17, scope: !895)
!895 = distinct !DILexicalBlock(scope: !880, file: !2, line: 832, column: 27)
!896 = !DILocation(line: 834, column: 23, scope: !895)
!897 = !DILocation(line: 834, column: 33, scope: !895)
!898 = !DILocation(line: 834, column: 40, scope: !895)
!899 = !DILocation(line: 834, column: 44, scope: !895)
!900 = !DILocation(line: 834, column: 50, scope: !895)
!901 = !DILocation(line: 835, column: 39, scope: !895)
!902 = !DILocation(line: 836, column: 17, scope: !895)
!903 = !DILocation(line: 838, column: 17, scope: !895)
!904 = !DILocation(line: 838, column: 23, scope: !895)
!905 = !DILocation(line: 838, column: 33, scope: !895)
!906 = !DILocation(line: 838, column: 40, scope: !895)
!907 = !DILocation(line: 838, column: 45, scope: !895)
!908 = !DILocation(line: 838, column: 51, scope: !895)
!909 = !DILocation(line: 839, column: 39, scope: !895)
!910 = !DILocation(line: 840, column: 17, scope: !895)
!911 = !DILocation(line: 842, column: 17, scope: !895)
!912 = !DILocation(line: 842, column: 17, scope: !913)
!913 = distinct !DILexicalBlock(scope: !914, file: !2, line: 842, column: 17)
!914 = distinct !DILexicalBlock(scope: !915, file: !2, line: 842, column: 17)
!915 = distinct !DILexicalBlock(scope: !895, file: !2, line: 842, column: 17)
!916 = !DILocation(line: 843, column: 13, scope: !895)
!917 = !DILocation(line: 844, column: 9, scope: !880)
!918 = !DILocation(line: 850, column: 9, scope: !852)
!919 = !DILocation(line: 850, column: 9, scope: !920)
!920 = distinct !DILexicalBlock(scope: !921, file: !2, line: 850, column: 9)
!921 = distinct !DILexicalBlock(scope: !922, file: !2, line: 850, column: 9)
!922 = distinct !DILexicalBlock(scope: !852, file: !2, line: 850, column: 9)
!923 = !DILocation(line: 850, column: 9, scope: !922)
!924 = !DILocation(line: 856, column: 9, scope: !852)
!925 = !DILocation(line: 856, column: 9, scope: !926)
!926 = distinct !DILexicalBlock(scope: !927, file: !2, line: 856, column: 9)
!927 = distinct !DILexicalBlock(scope: !928, file: !2, line: 856, column: 9)
!928 = distinct !DILexicalBlock(scope: !852, file: !2, line: 856, column: 9)
!929 = !DILocation(line: 857, column: 5, scope: !852)
!930 = !DILocation(line: 858, column: 1, scope: !690)
!931 = distinct !DISubprogram(name: "nn_sock_stopped", scope: !2, file: !2, line: 143, type: !932, scopeLine: 144, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !238}
!934 = !DILocalVariable(name: "self", arg: 1, scope: !931, file: !2, line: 143, type: !238)
!935 = !DILocation(line: 143, column: 39, scope: !931)
!936 = !DILocation(line: 146, column: 30, scope: !931)
!937 = !DILocation(line: 146, column: 36, scope: !931)
!938 = !DILocation(line: 146, column: 5, scope: !931)
!939 = !DILocation(line: 146, column: 11, scope: !931)
!940 = !DILocation(line: 146, column: 15, scope: !931)
!941 = !DILocation(line: 146, column: 23, scope: !931)
!942 = !DILocation(line: 146, column: 27, scope: !931)
!943 = !DILocation(line: 147, column: 5, scope: !931)
!944 = !DILocation(line: 147, column: 11, scope: !931)
!945 = !DILocation(line: 147, column: 15, scope: !931)
!946 = !DILocation(line: 147, column: 23, scope: !931)
!947 = !DILocation(line: 147, column: 27, scope: !931)
!948 = !DILocation(line: 148, column: 5, scope: !931)
!949 = !DILocation(line: 148, column: 11, scope: !931)
!950 = !DILocation(line: 148, column: 15, scope: !931)
!951 = !DILocation(line: 148, column: 23, scope: !931)
!952 = !DILocation(line: 148, column: 30, scope: !931)
!953 = !DILocation(line: 149, column: 5, scope: !931)
!954 = !DILocation(line: 149, column: 11, scope: !931)
!955 = !DILocation(line: 149, column: 15, scope: !931)
!956 = !DILocation(line: 149, column: 23, scope: !931)
!957 = !DILocation(line: 149, column: 28, scope: !931)
!958 = !DILocation(line: 150, column: 19, scope: !931)
!959 = !DILocation(line: 150, column: 25, scope: !931)
!960 = !DILocation(line: 150, column: 29, scope: !931)
!961 = !DILocation(line: 150, column: 35, scope: !931)
!962 = !DILocation(line: 150, column: 41, scope: !931)
!963 = !DILocation(line: 150, column: 45, scope: !931)
!964 = !DILocation(line: 150, column: 5, scope: !931)
!965 = !DILocation(line: 151, column: 1, scope: !931)
!966 = distinct !DISubprogram(name: "nn_sock_zombify", scope: !2, file: !2, line: 153, type: !932, scopeLine: 154, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!967 = !DILocalVariable(name: "self", arg: 1, scope: !966, file: !2, line: 153, type: !238)
!968 = !DILocation(line: 153, column: 39, scope: !966)
!969 = !DILocation(line: 155, column: 20, scope: !966)
!970 = !DILocation(line: 155, column: 26, scope: !966)
!971 = !DILocation(line: 155, column: 5, scope: !966)
!972 = !DILocation(line: 156, column: 21, scope: !966)
!973 = !DILocation(line: 156, column: 27, scope: !966)
!974 = !DILocation(line: 156, column: 5, scope: !966)
!975 = !DILocation(line: 157, column: 20, scope: !966)
!976 = !DILocation(line: 157, column: 26, scope: !966)
!977 = !DILocation(line: 157, column: 5, scope: !966)
!978 = !DILocation(line: 158, column: 1, scope: !966)
!979 = distinct !DISubprogram(name: "nn_sock_term", scope: !2, file: !2, line: 160, type: !980, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!980 = !DISubroutineType(types: !981)
!981 = !{!51, !238}
!982 = !DILocalVariable(name: "self", arg: 1, scope: !979, file: !2, line: 160, type: !238)
!983 = !DILocation(line: 160, column: 35, scope: !979)
!984 = !DILocalVariable(name: "rc", scope: !979, file: !2, line: 162, type: !51)
!985 = !DILocation(line: 162, column: 9, scope: !979)
!986 = !DILocalVariable(name: "i", scope: !979, file: !2, line: 163, type: !51)
!987 = !DILocation(line: 163, column: 9, scope: !979)
!988 = !DILocation(line: 166, column: 20, scope: !979)
!989 = !DILocation(line: 166, column: 26, scope: !979)
!990 = !DILocation(line: 166, column: 5, scope: !979)
!991 = !DILocation(line: 167, column: 19, scope: !979)
!992 = !DILocation(line: 167, column: 25, scope: !979)
!993 = !DILocation(line: 167, column: 5, scope: !979)
!994 = !DILocation(line: 168, column: 20, scope: !979)
!995 = !DILocation(line: 168, column: 26, scope: !979)
!996 = !DILocation(line: 168, column: 5, scope: !979)
!997 = !DILocation(line: 172, column: 24, scope: !979)
!998 = !DILocation(line: 172, column: 30, scope: !979)
!999 = !DILocation(line: 172, column: 10, scope: !979)
!1000 = !DILocation(line: 172, column: 8, scope: !979)
!1001 = !DILocation(line: 173, column: 9, scope: !1002)
!1002 = distinct !DILexicalBlock(scope: !979, file: !2, line: 173, column: 9)
!1003 = !DILocation(line: 173, column: 9, scope: !979)
!1004 = !DILocation(line: 174, column: 9, scope: !1002)
!1005 = !DILocation(line: 175, column: 5, scope: !979)
!1006 = !DILocation(line: 175, column: 5, scope: !1007)
!1007 = distinct !DILexicalBlock(scope: !1008, file: !2, line: 175, column: 5)
!1008 = distinct !DILexicalBlock(scope: !979, file: !2, line: 175, column: 5)
!1009 = !DILocation(line: 175, column: 5, scope: !1008)
!1010 = !DILocation(line: 175, column: 5, scope: !1011)
!1011 = distinct !DILexicalBlock(scope: !1007, file: !2, line: 175, column: 5)
!1012 = !DILocation(line: 181, column: 20, scope: !979)
!1013 = !DILocation(line: 181, column: 26, scope: !979)
!1014 = !DILocation(line: 181, column: 5, scope: !979)
!1015 = !DILocation(line: 182, column: 20, scope: !979)
!1016 = !DILocation(line: 182, column: 26, scope: !979)
!1017 = !DILocation(line: 182, column: 5, scope: !979)
!1018 = !DILocation(line: 185, column: 30, scope: !979)
!1019 = !DILocation(line: 185, column: 36, scope: !979)
!1020 = !DILocation(line: 185, column: 5, scope: !979)
!1021 = !DILocation(line: 186, column: 19, scope: !979)
!1022 = !DILocation(line: 186, column: 25, scope: !979)
!1023 = !DILocation(line: 186, column: 5, scope: !979)
!1024 = !DILocation(line: 187, column: 19, scope: !979)
!1025 = !DILocation(line: 187, column: 25, scope: !979)
!1026 = !DILocation(line: 187, column: 5, scope: !979)
!1027 = !DILocation(line: 188, column: 20, scope: !979)
!1028 = !DILocation(line: 188, column: 26, scope: !979)
!1029 = !DILocation(line: 188, column: 5, scope: !979)
!1030 = !DILocation(line: 189, column: 21, scope: !979)
!1031 = !DILocation(line: 189, column: 27, scope: !979)
!1032 = !DILocation(line: 189, column: 5, scope: !979)
!1033 = !DILocation(line: 190, column: 19, scope: !979)
!1034 = !DILocation(line: 190, column: 25, scope: !979)
!1035 = !DILocation(line: 190, column: 5, scope: !979)
!1036 = !DILocation(line: 193, column: 12, scope: !1037)
!1037 = distinct !DILexicalBlock(scope: !979, file: !2, line: 193, column: 5)
!1038 = !DILocation(line: 193, column: 10, scope: !1037)
!1039 = !DILocation(line: 193, column: 17, scope: !1040)
!1040 = distinct !DILexicalBlock(scope: !1037, file: !2, line: 193, column: 5)
!1041 = !DILocation(line: 193, column: 19, scope: !1040)
!1042 = !DILocation(line: 193, column: 5, scope: !1037)
!1043 = !DILocation(line: 194, column: 13, scope: !1044)
!1044 = distinct !DILexicalBlock(scope: !1040, file: !2, line: 194, column: 13)
!1045 = !DILocation(line: 194, column: 19, scope: !1044)
!1046 = !DILocation(line: 194, column: 28, scope: !1044)
!1047 = !DILocation(line: 194, column: 13, scope: !1040)
!1048 = !DILocation(line: 195, column: 13, scope: !1044)
!1049 = !DILocation(line: 195, column: 19, scope: !1044)
!1050 = !DILocation(line: 195, column: 28, scope: !1044)
!1051 = !DILocation(line: 195, column: 32, scope: !1044)
!1052 = !DILocation(line: 195, column: 39, scope: !1044)
!1053 = !DILocation(line: 195, column: 48, scope: !1044)
!1054 = !DILocation(line: 195, column: 54, scope: !1044)
!1055 = !DILocation(line: 195, column: 63, scope: !1044)
!1056 = !DILocation(line: 194, column: 29, scope: !1044)
!1057 = !DILocation(line: 193, column: 40, scope: !1040)
!1058 = !DILocation(line: 193, column: 5, scope: !1040)
!1059 = distinct !{!1059, !1042, !1060, !551}
!1060 = !DILocation(line: 195, column: 65, scope: !1037)
!1061 = !DILocation(line: 197, column: 5, scope: !979)
!1062 = !DILocation(line: 198, column: 1, scope: !979)
!1063 = distinct !DISubprogram(name: "nn_sock_getctx", scope: !2, file: !2, line: 200, type: !1064, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1064 = !DISubroutineType(types: !1065)
!1065 = !{!71, !238}
!1066 = !DILocalVariable(name: "self", arg: 1, scope: !1063, file: !2, line: 200, type: !238)
!1067 = !DILocation(line: 200, column: 48, scope: !1063)
!1068 = !DILocation(line: 202, column: 13, scope: !1063)
!1069 = !DILocation(line: 202, column: 19, scope: !1063)
!1070 = !DILocation(line: 202, column: 5, scope: !1063)
!1071 = distinct !DISubprogram(name: "nn_sock_ispeer", scope: !2, file: !2, line: 205, type: !1072, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1072 = !DISubroutineType(types: !1073)
!1073 = !{!51, !238, !51}
!1074 = !DILocalVariable(name: "self", arg: 1, scope: !1071, file: !2, line: 205, type: !238)
!1075 = !DILocation(line: 205, column: 37, scope: !1071)
!1076 = !DILocalVariable(name: "socktype", arg: 2, scope: !1071, file: !2, line: 205, type: !51)
!1077 = !DILocation(line: 205, column: 47, scope: !1071)
!1078 = !DILocation(line: 211, column: 10, scope: !1079)
!1079 = distinct !DILexicalBlock(scope: !1071, file: !2, line: 211, column: 9)
!1080 = !DILocation(line: 211, column: 16, scope: !1079)
!1081 = !DILocation(line: 211, column: 26, scope: !1079)
!1082 = !DILocation(line: 211, column: 35, scope: !1079)
!1083 = !DILocation(line: 211, column: 49, scope: !1079)
!1084 = !DILocation(line: 211, column: 59, scope: !1079)
!1085 = !DILocation(line: 211, column: 45, scope: !1079)
!1086 = !DILocation(line: 211, column: 9, scope: !1071)
!1087 = !DILocation(line: 212, column: 9, scope: !1079)
!1088 = !DILocation(line: 216, column: 12, scope: !1071)
!1089 = !DILocation(line: 216, column: 18, scope: !1071)
!1090 = !DILocation(line: 216, column: 28, scope: !1071)
!1091 = !DILocation(line: 216, column: 36, scope: !1071)
!1092 = !DILocation(line: 216, column: 5, scope: !1071)
!1093 = !DILocation(line: 217, column: 1, scope: !1071)
!1094 = distinct !DISubprogram(name: "nn_sock_setopt", scope: !2, file: !2, line: 219, type: !1095, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1095 = !DISubroutineType(types: !1096)
!1096 = !{!51, !238, !51, !51, !300, !302}
!1097 = !DILocalVariable(name: "self", arg: 1, scope: !1094, file: !2, line: 219, type: !238)
!1098 = !DILocation(line: 219, column: 37, scope: !1094)
!1099 = !DILocalVariable(name: "level", arg: 2, scope: !1094, file: !2, line: 219, type: !51)
!1100 = !DILocation(line: 219, column: 47, scope: !1094)
!1101 = !DILocalVariable(name: "option", arg: 3, scope: !1094, file: !2, line: 219, type: !51)
!1102 = !DILocation(line: 219, column: 58, scope: !1094)
!1103 = !DILocalVariable(name: "optval", arg: 4, scope: !1094, file: !2, line: 220, type: !300)
!1104 = !DILocation(line: 220, column: 17, scope: !1094)
!1105 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1094, file: !2, line: 220, type: !302)
!1106 = !DILocation(line: 220, column: 32, scope: !1094)
!1107 = !DILocalVariable(name: "rc", scope: !1094, file: !2, line: 222, type: !51)
!1108 = !DILocation(line: 222, column: 9, scope: !1094)
!1109 = !DILocation(line: 224, column: 20, scope: !1094)
!1110 = !DILocation(line: 224, column: 26, scope: !1094)
!1111 = !DILocation(line: 224, column: 5, scope: !1094)
!1112 = !DILocation(line: 225, column: 9, scope: !1113)
!1113 = distinct !DILexicalBlock(scope: !1094, file: !2, line: 225, column: 9)
!1114 = !DILocation(line: 225, column: 9, scope: !1094)
!1115 = !DILocation(line: 226, column: 24, scope: !1116)
!1116 = distinct !DILexicalBlock(scope: !1113, file: !2, line: 225, column: 56)
!1117 = !DILocation(line: 226, column: 30, scope: !1116)
!1118 = !DILocation(line: 226, column: 9, scope: !1116)
!1119 = !DILocation(line: 227, column: 9, scope: !1116)
!1120 = !DILocation(line: 229, column: 32, scope: !1094)
!1121 = !DILocation(line: 229, column: 38, scope: !1094)
!1122 = !DILocation(line: 229, column: 45, scope: !1094)
!1123 = !DILocation(line: 229, column: 53, scope: !1094)
!1124 = !DILocation(line: 229, column: 61, scope: !1094)
!1125 = !DILocation(line: 229, column: 10, scope: !1094)
!1126 = !DILocation(line: 229, column: 8, scope: !1094)
!1127 = !DILocation(line: 230, column: 20, scope: !1094)
!1128 = !DILocation(line: 230, column: 26, scope: !1094)
!1129 = !DILocation(line: 230, column: 5, scope: !1094)
!1130 = !DILocation(line: 232, column: 12, scope: !1094)
!1131 = !DILocation(line: 232, column: 5, scope: !1094)
!1132 = !DILocation(line: 233, column: 1, scope: !1094)
!1133 = distinct !DISubprogram(name: "nn_sock_setopt_inner", scope: !2, file: !2, line: 235, type: !1095, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1134 = !DILocalVariable(name: "self", arg: 1, scope: !1133, file: !2, line: 235, type: !238)
!1135 = !DILocation(line: 235, column: 50, scope: !1133)
!1136 = !DILocalVariable(name: "level", arg: 2, scope: !1133, file: !2, line: 235, type: !51)
!1137 = !DILocation(line: 235, column: 60, scope: !1133)
!1138 = !DILocalVariable(name: "option", arg: 3, scope: !1133, file: !2, line: 236, type: !51)
!1139 = !DILocation(line: 236, column: 9, scope: !1133)
!1140 = !DILocalVariable(name: "optval", arg: 4, scope: !1133, file: !2, line: 236, type: !300)
!1141 = !DILocation(line: 236, column: 29, scope: !1133)
!1142 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1133, file: !2, line: 236, type: !302)
!1143 = !DILocation(line: 236, column: 44, scope: !1133)
!1144 = !DILocalVariable(name: "optset", scope: !1133, file: !2, line: 238, type: !357)
!1145 = !DILocation(line: 238, column: 23, scope: !1133)
!1146 = !DILocalVariable(name: "val", scope: !1133, file: !2, line: 239, type: !51)
!1147 = !DILocation(line: 239, column: 9, scope: !1133)
!1148 = !DILocalVariable(name: "dst", scope: !1133, file: !2, line: 240, type: !386)
!1149 = !DILocation(line: 240, column: 10, scope: !1133)
!1150 = !DILocation(line: 243, column: 9, scope: !1151)
!1151 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 243, column: 9)
!1152 = !DILocation(line: 243, column: 15, scope: !1151)
!1153 = !DILocation(line: 243, column: 9, scope: !1133)
!1154 = !DILocation(line: 244, column: 16, scope: !1151)
!1155 = !DILocation(line: 244, column: 22, scope: !1151)
!1156 = !DILocation(line: 244, column: 32, scope: !1151)
!1157 = !DILocation(line: 244, column: 39, scope: !1151)
!1158 = !DILocation(line: 244, column: 47, scope: !1151)
!1159 = !DILocation(line: 244, column: 53, scope: !1151)
!1160 = !DILocation(line: 244, column: 63, scope: !1151)
!1161 = !DILocation(line: 244, column: 70, scope: !1151)
!1162 = !DILocation(line: 245, column: 13, scope: !1151)
!1163 = !DILocation(line: 245, column: 21, scope: !1151)
!1164 = !DILocation(line: 244, column: 9, scope: !1151)
!1165 = !DILocation(line: 248, column: 9, scope: !1166)
!1166 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 248, column: 9)
!1167 = !DILocation(line: 248, column: 15, scope: !1166)
!1168 = !DILocation(line: 248, column: 9, scope: !1133)
!1169 = !DILocation(line: 249, column: 34, scope: !1170)
!1170 = distinct !DILexicalBlock(scope: !1166, file: !2, line: 248, column: 32)
!1171 = !DILocation(line: 249, column: 40, scope: !1170)
!1172 = !DILocation(line: 249, column: 18, scope: !1170)
!1173 = !DILocation(line: 249, column: 16, scope: !1170)
!1174 = !DILocation(line: 250, column: 14, scope: !1175)
!1175 = distinct !DILexicalBlock(scope: !1170, file: !2, line: 250, column: 13)
!1176 = !DILocation(line: 250, column: 13, scope: !1170)
!1177 = !DILocation(line: 251, column: 13, scope: !1175)
!1178 = !DILocation(line: 252, column: 16, scope: !1170)
!1179 = !DILocation(line: 252, column: 24, scope: !1170)
!1180 = !DILocation(line: 252, column: 31, scope: !1170)
!1181 = !DILocation(line: 252, column: 39, scope: !1170)
!1182 = !DILocation(line: 252, column: 47, scope: !1170)
!1183 = !DILocation(line: 252, column: 55, scope: !1170)
!1184 = !DILocation(line: 252, column: 63, scope: !1170)
!1185 = !DILocation(line: 252, column: 9, scope: !1170)
!1186 = !DILocation(line: 256, column: 9, scope: !1187)
!1187 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 256, column: 9)
!1188 = !DILocation(line: 256, column: 19, scope: !1187)
!1189 = !DILocation(line: 256, column: 9, scope: !1133)
!1190 = !DILocation(line: 257, column: 9, scope: !1187)
!1191 = !DILocation(line: 258, column: 19, scope: !1133)
!1192 = !DILocation(line: 258, column: 11, scope: !1133)
!1193 = !DILocation(line: 258, column: 9, scope: !1133)
!1194 = !DILocation(line: 261, column: 9, scope: !1195)
!1195 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 261, column: 9)
!1196 = !DILocation(line: 261, column: 15, scope: !1195)
!1197 = !DILocation(line: 261, column: 9, scope: !1133)
!1198 = !DILocation(line: 262, column: 17, scope: !1199)
!1199 = distinct !DILexicalBlock(scope: !1195, file: !2, line: 261, column: 33)
!1200 = !DILocation(line: 262, column: 9, scope: !1199)
!1201 = !DILocation(line: 264, column: 20, scope: !1202)
!1202 = distinct !DILexicalBlock(scope: !1199, file: !2, line: 262, column: 25)
!1203 = !DILocation(line: 264, column: 26, scope: !1202)
!1204 = !DILocation(line: 264, column: 17, scope: !1202)
!1205 = !DILocation(line: 265, column: 13, scope: !1202)
!1206 = !DILocation(line: 267, column: 17, scope: !1207)
!1207 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 267, column: 17)
!1208 = !DILocation(line: 267, column: 17, scope: !1202)
!1209 = !DILocation(line: 268, column: 17, scope: !1207)
!1210 = !DILocation(line: 269, column: 20, scope: !1202)
!1211 = !DILocation(line: 269, column: 26, scope: !1202)
!1212 = !DILocation(line: 269, column: 17, scope: !1202)
!1213 = !DILocation(line: 270, column: 13, scope: !1202)
!1214 = !DILocation(line: 272, column: 17, scope: !1215)
!1215 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 272, column: 17)
!1216 = !DILocation(line: 272, column: 17, scope: !1202)
!1217 = !DILocation(line: 273, column: 17, scope: !1215)
!1218 = !DILocation(line: 274, column: 20, scope: !1202)
!1219 = !DILocation(line: 274, column: 26, scope: !1202)
!1220 = !DILocation(line: 274, column: 17, scope: !1202)
!1221 = !DILocation(line: 275, column: 13, scope: !1202)
!1222 = !DILocation(line: 277, column: 20, scope: !1202)
!1223 = !DILocation(line: 277, column: 26, scope: !1202)
!1224 = !DILocation(line: 277, column: 17, scope: !1202)
!1225 = !DILocation(line: 278, column: 13, scope: !1202)
!1226 = !DILocation(line: 280, column: 20, scope: !1202)
!1227 = !DILocation(line: 280, column: 26, scope: !1202)
!1228 = !DILocation(line: 280, column: 17, scope: !1202)
!1229 = !DILocation(line: 281, column: 13, scope: !1202)
!1230 = !DILocation(line: 283, column: 17, scope: !1231)
!1231 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 283, column: 17)
!1232 = !DILocation(line: 283, column: 17, scope: !1202)
!1233 = !DILocation(line: 284, column: 17, scope: !1231)
!1234 = !DILocation(line: 285, column: 20, scope: !1202)
!1235 = !DILocation(line: 285, column: 26, scope: !1202)
!1236 = !DILocation(line: 285, column: 17, scope: !1202)
!1237 = !DILocation(line: 286, column: 13, scope: !1202)
!1238 = !DILocation(line: 288, column: 17, scope: !1239)
!1239 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 288, column: 17)
!1240 = !DILocation(line: 288, column: 17, scope: !1202)
!1241 = !DILocation(line: 289, column: 17, scope: !1239)
!1242 = !DILocation(line: 290, column: 20, scope: !1202)
!1243 = !DILocation(line: 290, column: 26, scope: !1202)
!1244 = !DILocation(line: 290, column: 17, scope: !1202)
!1245 = !DILocation(line: 291, column: 13, scope: !1202)
!1246 = !DILocation(line: 293, column: 17, scope: !1247)
!1247 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 293, column: 17)
!1248 = !DILocation(line: 293, column: 17, scope: !1202)
!1249 = !DILocation(line: 294, column: 17, scope: !1247)
!1250 = !DILocation(line: 295, column: 20, scope: !1202)
!1251 = !DILocation(line: 295, column: 26, scope: !1202)
!1252 = !DILocation(line: 295, column: 17, scope: !1202)
!1253 = !DILocation(line: 296, column: 13, scope: !1202)
!1254 = !DILocation(line: 298, column: 17, scope: !1255)
!1255 = distinct !DILexicalBlock(scope: !1202, file: !2, line: 298, column: 17)
!1256 = !DILocation(line: 0, scope: !1255)
!1257 = !DILocation(line: 298, column: 17, scope: !1202)
!1258 = !DILocation(line: 299, column: 17, scope: !1255)
!1259 = !DILocation(line: 300, column: 20, scope: !1202)
!1260 = !DILocation(line: 300, column: 26, scope: !1202)
!1261 = !DILocation(line: 300, column: 17, scope: !1202)
!1262 = !DILocation(line: 301, column: 13, scope: !1202)
!1263 = !DILocation(line: 303, column: 13, scope: !1202)
!1264 = !DILocation(line: 305, column: 16, scope: !1199)
!1265 = !DILocation(line: 305, column: 10, scope: !1199)
!1266 = !DILocation(line: 305, column: 14, scope: !1199)
!1267 = !DILocation(line: 307, column: 9, scope: !1199)
!1268 = !DILocation(line: 310, column: 5, scope: !1133)
!1269 = !DILocation(line: 310, column: 5, scope: !1270)
!1270 = distinct !DILexicalBlock(scope: !1271, file: !2, line: 310, column: 5)
!1271 = distinct !DILexicalBlock(scope: !1272, file: !2, line: 310, column: 5)
!1272 = distinct !DILexicalBlock(scope: !1133, file: !2, line: 310, column: 5)
!1273 = !DILocation(line: 311, column: 1, scope: !1133)
!1274 = distinct !DISubprogram(name: "nn_sock_getopt", scope: !2, file: !2, line: 313, type: !1275, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{!51, !238, !51, !51, !50, !308}
!1277 = !DILocalVariable(name: "self", arg: 1, scope: !1274, file: !2, line: 313, type: !238)
!1278 = !DILocation(line: 313, column: 37, scope: !1274)
!1279 = !DILocalVariable(name: "level", arg: 2, scope: !1274, file: !2, line: 313, type: !51)
!1280 = !DILocation(line: 313, column: 47, scope: !1274)
!1281 = !DILocalVariable(name: "option", arg: 3, scope: !1274, file: !2, line: 313, type: !51)
!1282 = !DILocation(line: 313, column: 58, scope: !1274)
!1283 = !DILocalVariable(name: "optval", arg: 4, scope: !1274, file: !2, line: 314, type: !50)
!1284 = !DILocation(line: 314, column: 11, scope: !1274)
!1285 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1274, file: !2, line: 314, type: !308)
!1286 = !DILocation(line: 314, column: 27, scope: !1274)
!1287 = !DILocalVariable(name: "rc", scope: !1274, file: !2, line: 316, type: !51)
!1288 = !DILocation(line: 316, column: 9, scope: !1274)
!1289 = !DILocation(line: 318, column: 20, scope: !1274)
!1290 = !DILocation(line: 318, column: 26, scope: !1274)
!1291 = !DILocation(line: 318, column: 5, scope: !1274)
!1292 = !DILocation(line: 319, column: 9, scope: !1293)
!1293 = distinct !DILexicalBlock(scope: !1274, file: !2, line: 319, column: 9)
!1294 = !DILocation(line: 319, column: 9, scope: !1274)
!1295 = !DILocation(line: 320, column: 24, scope: !1296)
!1296 = distinct !DILexicalBlock(scope: !1293, file: !2, line: 319, column: 56)
!1297 = !DILocation(line: 320, column: 30, scope: !1296)
!1298 = !DILocation(line: 320, column: 9, scope: !1296)
!1299 = !DILocation(line: 321, column: 9, scope: !1296)
!1300 = !DILocation(line: 323, column: 32, scope: !1274)
!1301 = !DILocation(line: 323, column: 38, scope: !1274)
!1302 = !DILocation(line: 323, column: 45, scope: !1274)
!1303 = !DILocation(line: 323, column: 53, scope: !1274)
!1304 = !DILocation(line: 323, column: 61, scope: !1274)
!1305 = !DILocation(line: 323, column: 10, scope: !1274)
!1306 = !DILocation(line: 323, column: 8, scope: !1274)
!1307 = !DILocation(line: 324, column: 20, scope: !1274)
!1308 = !DILocation(line: 324, column: 26, scope: !1274)
!1309 = !DILocation(line: 324, column: 5, scope: !1274)
!1310 = !DILocation(line: 326, column: 12, scope: !1274)
!1311 = !DILocation(line: 326, column: 5, scope: !1274)
!1312 = !DILocation(line: 327, column: 1, scope: !1274)
!1313 = distinct !DISubprogram(name: "nn_sock_getopt_inner", scope: !2, file: !2, line: 329, type: !1275, scopeLine: 331, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1314 = !DILocalVariable(name: "self", arg: 1, scope: !1313, file: !2, line: 329, type: !238)
!1315 = !DILocation(line: 329, column: 43, scope: !1313)
!1316 = !DILocalVariable(name: "level", arg: 2, scope: !1313, file: !2, line: 329, type: !51)
!1317 = !DILocation(line: 329, column: 53, scope: !1313)
!1318 = !DILocalVariable(name: "option", arg: 3, scope: !1313, file: !2, line: 330, type: !51)
!1319 = !DILocation(line: 330, column: 9, scope: !1313)
!1320 = !DILocalVariable(name: "optval", arg: 4, scope: !1313, file: !2, line: 330, type: !50)
!1321 = !DILocation(line: 330, column: 23, scope: !1313)
!1322 = !DILocalVariable(name: "optvallen", arg: 5, scope: !1313, file: !2, line: 330, type: !308)
!1323 = !DILocation(line: 330, column: 39, scope: !1313)
!1324 = !DILocalVariable(name: "rc", scope: !1313, file: !2, line: 332, type: !51)
!1325 = !DILocation(line: 332, column: 9, scope: !1313)
!1326 = !DILocalVariable(name: "optset", scope: !1313, file: !2, line: 333, type: !357)
!1327 = !DILocation(line: 333, column: 23, scope: !1313)
!1328 = !DILocalVariable(name: "intval", scope: !1313, file: !2, line: 334, type: !51)
!1329 = !DILocation(line: 334, column: 9, scope: !1313)
!1330 = !DILocalVariable(name: "fd", scope: !1313, file: !2, line: 335, type: !1331)
!1331 = !DIDerivedType(tag: DW_TAG_typedef, name: "nn_fd", file: !134, line: 23, baseType: !51)
!1332 = !DILocation(line: 335, column: 11, scope: !1313)
!1333 = !DILocation(line: 338, column: 9, scope: !1334)
!1334 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 338, column: 9)
!1335 = !DILocation(line: 338, column: 15, scope: !1334)
!1336 = !DILocation(line: 338, column: 9, scope: !1313)
!1337 = !DILocation(line: 339, column: 17, scope: !1338)
!1338 = distinct !DILexicalBlock(scope: !1334, file: !2, line: 338, column: 33)
!1339 = !DILocation(line: 339, column: 9, scope: !1338)
!1340 = !DILocation(line: 341, column: 22, scope: !1341)
!1341 = distinct !DILexicalBlock(scope: !1338, file: !2, line: 339, column: 25)
!1342 = !DILocation(line: 341, column: 28, scope: !1341)
!1343 = !DILocation(line: 341, column: 38, scope: !1341)
!1344 = !DILocation(line: 341, column: 20, scope: !1341)
!1345 = !DILocation(line: 342, column: 13, scope: !1341)
!1346 = !DILocation(line: 344, column: 22, scope: !1341)
!1347 = !DILocation(line: 344, column: 28, scope: !1341)
!1348 = !DILocation(line: 344, column: 38, scope: !1341)
!1349 = !DILocation(line: 344, column: 20, scope: !1341)
!1350 = !DILocation(line: 345, column: 13, scope: !1341)
!1351 = !DILocation(line: 347, column: 22, scope: !1341)
!1352 = !DILocation(line: 347, column: 28, scope: !1341)
!1353 = !DILocation(line: 347, column: 20, scope: !1341)
!1354 = !DILocation(line: 348, column: 13, scope: !1341)
!1355 = !DILocation(line: 350, column: 22, scope: !1341)
!1356 = !DILocation(line: 350, column: 28, scope: !1341)
!1357 = !DILocation(line: 350, column: 20, scope: !1341)
!1358 = !DILocation(line: 351, column: 13, scope: !1341)
!1359 = !DILocation(line: 353, column: 22, scope: !1341)
!1360 = !DILocation(line: 353, column: 28, scope: !1341)
!1361 = !DILocation(line: 353, column: 20, scope: !1341)
!1362 = !DILocation(line: 354, column: 13, scope: !1341)
!1363 = !DILocation(line: 356, column: 22, scope: !1341)
!1364 = !DILocation(line: 356, column: 28, scope: !1341)
!1365 = !DILocation(line: 356, column: 20, scope: !1341)
!1366 = !DILocation(line: 357, column: 13, scope: !1341)
!1367 = !DILocation(line: 359, column: 22, scope: !1341)
!1368 = !DILocation(line: 359, column: 28, scope: !1341)
!1369 = !DILocation(line: 359, column: 20, scope: !1341)
!1370 = !DILocation(line: 360, column: 13, scope: !1341)
!1371 = !DILocation(line: 362, column: 22, scope: !1341)
!1372 = !DILocation(line: 362, column: 28, scope: !1341)
!1373 = !DILocation(line: 362, column: 20, scope: !1341)
!1374 = !DILocation(line: 363, column: 13, scope: !1341)
!1375 = !DILocation(line: 365, column: 22, scope: !1341)
!1376 = !DILocation(line: 365, column: 28, scope: !1341)
!1377 = !DILocation(line: 365, column: 20, scope: !1341)
!1378 = !DILocation(line: 366, column: 13, scope: !1341)
!1379 = !DILocation(line: 368, column: 22, scope: !1341)
!1380 = !DILocation(line: 368, column: 28, scope: !1341)
!1381 = !DILocation(line: 368, column: 20, scope: !1341)
!1382 = !DILocation(line: 369, column: 13, scope: !1341)
!1383 = !DILocation(line: 371, column: 22, scope: !1341)
!1384 = !DILocation(line: 371, column: 28, scope: !1341)
!1385 = !DILocation(line: 371, column: 20, scope: !1341)
!1386 = !DILocation(line: 372, column: 13, scope: !1341)
!1387 = !DILocation(line: 374, column: 17, scope: !1388)
!1388 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 374, column: 17)
!1389 = !DILocation(line: 374, column: 23, scope: !1388)
!1390 = !DILocation(line: 374, column: 33, scope: !1388)
!1391 = !DILocation(line: 374, column: 39, scope: !1388)
!1392 = !DILocation(line: 374, column: 17, scope: !1341)
!1393 = !DILocation(line: 375, column: 17, scope: !1388)
!1394 = !DILocation(line: 376, column: 33, scope: !1341)
!1395 = !DILocation(line: 376, column: 39, scope: !1341)
!1396 = !DILocation(line: 376, column: 18, scope: !1341)
!1397 = !DILocation(line: 376, column: 16, scope: !1341)
!1398 = !DILocation(line: 377, column: 21, scope: !1341)
!1399 = !DILocation(line: 378, column: 18, scope: !1341)
!1400 = !DILocation(line: 378, column: 17, scope: !1341)
!1401 = !DILocation(line: 378, column: 28, scope: !1341)
!1402 = !DILocation(line: 378, column: 48, scope: !1341)
!1403 = !DILocation(line: 378, column: 47, scope: !1341)
!1404 = !DILocation(line: 377, column: 13, scope: !1341)
!1405 = !DILocation(line: 379, column: 14, scope: !1341)
!1406 = !DILocation(line: 379, column: 24, scope: !1341)
!1407 = !DILocation(line: 380, column: 13, scope: !1341)
!1408 = !DILocation(line: 382, column: 17, scope: !1409)
!1409 = distinct !DILexicalBlock(scope: !1341, file: !2, line: 382, column: 17)
!1410 = !DILocation(line: 382, column: 23, scope: !1409)
!1411 = !DILocation(line: 382, column: 33, scope: !1409)
!1412 = !DILocation(line: 382, column: 39, scope: !1409)
!1413 = !DILocation(line: 382, column: 17, scope: !1341)
!1414 = !DILocation(line: 383, column: 17, scope: !1409)
!1415 = !DILocation(line: 384, column: 33, scope: !1341)
!1416 = !DILocation(line: 384, column: 39, scope: !1341)
!1417 = !DILocation(line: 384, column: 18, scope: !1341)
!1418 = !DILocation(line: 384, column: 16, scope: !1341)
!1419 = !DILocation(line: 385, column: 21, scope: !1341)
!1420 = !DILocation(line: 386, column: 18, scope: !1341)
!1421 = !DILocation(line: 386, column: 17, scope: !1341)
!1422 = !DILocation(line: 386, column: 28, scope: !1341)
!1423 = !DILocation(line: 386, column: 48, scope: !1341)
!1424 = !DILocation(line: 386, column: 47, scope: !1341)
!1425 = !DILocation(line: 385, column: 13, scope: !1341)
!1426 = !DILocation(line: 387, column: 14, scope: !1341)
!1427 = !DILocation(line: 387, column: 24, scope: !1341)
!1428 = !DILocation(line: 388, column: 13, scope: !1341)
!1429 = !DILocation(line: 390, column: 13, scope: !1341)
!1430 = !DILocation(line: 393, column: 17, scope: !1338)
!1431 = !DILocation(line: 394, column: 14, scope: !1338)
!1432 = !DILocation(line: 394, column: 13, scope: !1338)
!1433 = !DILocation(line: 394, column: 24, scope: !1338)
!1434 = !DILocation(line: 394, column: 42, scope: !1338)
!1435 = !DILocation(line: 394, column: 41, scope: !1338)
!1436 = !DILocation(line: 393, column: 9, scope: !1338)
!1437 = !DILocation(line: 395, column: 10, scope: !1338)
!1438 = !DILocation(line: 395, column: 20, scope: !1338)
!1439 = !DILocation(line: 397, column: 9, scope: !1338)
!1440 = !DILocation(line: 401, column: 9, scope: !1441)
!1441 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 401, column: 9)
!1442 = !DILocation(line: 401, column: 15, scope: !1441)
!1443 = !DILocation(line: 401, column: 9, scope: !1313)
!1444 = !DILocation(line: 402, column: 21, scope: !1441)
!1445 = !DILocation(line: 402, column: 27, scope: !1441)
!1446 = !DILocation(line: 402, column: 37, scope: !1441)
!1447 = !DILocation(line: 402, column: 44, scope: !1441)
!1448 = !DILocation(line: 402, column: 52, scope: !1441)
!1449 = !DILocation(line: 402, column: 58, scope: !1441)
!1450 = !DILocation(line: 403, column: 13, scope: !1441)
!1451 = !DILocation(line: 403, column: 20, scope: !1441)
!1452 = !DILocation(line: 403, column: 28, scope: !1441)
!1453 = !DILocation(line: 403, column: 36, scope: !1441)
!1454 = !DILocation(line: 402, column: 19, scope: !1441)
!1455 = !DILocation(line: 402, column: 9, scope: !1441)
!1456 = !DILocation(line: 406, column: 9, scope: !1457)
!1457 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 406, column: 9)
!1458 = !DILocation(line: 406, column: 15, scope: !1457)
!1459 = !DILocation(line: 406, column: 9, scope: !1313)
!1460 = !DILocation(line: 407, column: 34, scope: !1461)
!1461 = distinct !DILexicalBlock(scope: !1457, file: !2, line: 406, column: 32)
!1462 = !DILocation(line: 407, column: 40, scope: !1461)
!1463 = !DILocation(line: 407, column: 18, scope: !1461)
!1464 = !DILocation(line: 407, column: 16, scope: !1461)
!1465 = !DILocation(line: 408, column: 14, scope: !1466)
!1466 = distinct !DILexicalBlock(scope: !1461, file: !2, line: 408, column: 13)
!1467 = !DILocation(line: 408, column: 13, scope: !1461)
!1468 = !DILocation(line: 409, column: 13, scope: !1466)
!1469 = !DILocation(line: 410, column: 16, scope: !1461)
!1470 = !DILocation(line: 410, column: 24, scope: !1461)
!1471 = !DILocation(line: 410, column: 31, scope: !1461)
!1472 = !DILocation(line: 410, column: 39, scope: !1461)
!1473 = !DILocation(line: 410, column: 47, scope: !1461)
!1474 = !DILocation(line: 410, column: 55, scope: !1461)
!1475 = !DILocation(line: 410, column: 63, scope: !1461)
!1476 = !DILocation(line: 410, column: 9, scope: !1461)
!1477 = !DILocation(line: 413, column: 5, scope: !1313)
!1478 = !DILocation(line: 413, column: 5, scope: !1479)
!1479 = distinct !DILexicalBlock(scope: !1480, file: !2, line: 413, column: 5)
!1480 = distinct !DILexicalBlock(scope: !1481, file: !2, line: 413, column: 5)
!1481 = distinct !DILexicalBlock(scope: !1313, file: !2, line: 413, column: 5)
!1482 = !DILocation(line: 414, column: 1, scope: !1313)
!1483 = distinct !DISubprogram(name: "nn_sock_optset", scope: !2, file: !2, line: 683, type: !1484, scopeLine: 684, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!357, !238, !51}
!1486 = !DILocalVariable(name: "self", arg: 1, scope: !1483, file: !2, line: 683, type: !238)
!1487 = !DILocation(line: 683, column: 58, scope: !1483)
!1488 = !DILocalVariable(name: "id", arg: 2, scope: !1483, file: !2, line: 683, type: !51)
!1489 = !DILocation(line: 683, column: 68, scope: !1483)
!1490 = !DILocalVariable(name: "index", scope: !1483, file: !2, line: 685, type: !51)
!1491 = !DILocation(line: 685, column: 9, scope: !1483)
!1492 = !DILocalVariable(name: "tp", scope: !1483, file: !2, line: 686, type: !1493)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nn_transport", file: !224, line: 190, size: 576, elements: !1495)
!1495 = !{!1496, !1499, !1500, !1504, !1505, !1510, !1511, !1515}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1494, file: !224, line: 194, baseType: !1497, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1494, file: !224, line: 197, baseType: !51, size: 32, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !1494, file: !224, line: 204, baseType: !1501, size: 64, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{null}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "term", scope: !1494, file: !224, line: 205, baseType: !1501, size: 64, offset: 192)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1494, file: !224, line: 213, baseType: !1506, size: 64, offset: 256)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DISubroutineType(types: !1508)
!1508 = !{!51, !50, !1509}
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !1494, file: !224, line: 214, baseType: !1506, size: 64, offset: 320)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "optset", scope: !1494, file: !224, line: 219, baseType: !1512, size: 64, offset: 384)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{!357}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "item", scope: !1494, file: !224, line: 223, baseType: !187, size: 128, offset: 448)
!1516 = !DILocation(line: 686, column: 26, scope: !1483)
!1517 = !DILocation(line: 689, column: 15, scope: !1483)
!1518 = !DILocation(line: 689, column: 14, scope: !1483)
!1519 = !DILocation(line: 689, column: 19, scope: !1483)
!1520 = !DILocation(line: 689, column: 11, scope: !1483)
!1521 = !DILocation(line: 692, column: 9, scope: !1522)
!1522 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 692, column: 9)
!1523 = !DILocation(line: 692, column: 9, scope: !1483)
!1524 = !DILocation(line: 693, column: 9, scope: !1522)
!1525 = !DILocation(line: 696, column: 9, scope: !1526)
!1526 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 696, column: 9)
!1527 = !DILocation(line: 696, column: 9, scope: !1483)
!1528 = !DILocation(line: 697, column: 16, scope: !1526)
!1529 = !DILocation(line: 697, column: 22, scope: !1526)
!1530 = !DILocation(line: 697, column: 31, scope: !1526)
!1531 = !DILocation(line: 697, column: 9, scope: !1526)
!1532 = !DILocation(line: 700, column: 31, scope: !1483)
!1533 = !DILocation(line: 700, column: 10, scope: !1483)
!1534 = !DILocation(line: 700, column: 8, scope: !1483)
!1535 = !DILocation(line: 701, column: 9, scope: !1536)
!1536 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 701, column: 9)
!1537 = !DILocation(line: 701, column: 9, scope: !1483)
!1538 = !DILocation(line: 702, column: 9, scope: !1536)
!1539 = !DILocation(line: 703, column: 9, scope: !1540)
!1540 = distinct !DILexicalBlock(scope: !1483, file: !2, line: 703, column: 9)
!1541 = !DILocation(line: 703, column: 9, scope: !1483)
!1542 = !DILocation(line: 704, column: 9, scope: !1540)
!1543 = !DILocation(line: 705, column: 29, scope: !1483)
!1544 = !DILocation(line: 705, column: 33, scope: !1483)
!1545 = !DILocation(line: 705, column: 5, scope: !1483)
!1546 = !DILocation(line: 705, column: 11, scope: !1483)
!1547 = !DILocation(line: 705, column: 20, scope: !1483)
!1548 = !DILocation(line: 705, column: 27, scope: !1483)
!1549 = !DILocation(line: 707, column: 12, scope: !1483)
!1550 = !DILocation(line: 707, column: 18, scope: !1483)
!1551 = !DILocation(line: 707, column: 27, scope: !1483)
!1552 = !DILocation(line: 707, column: 5, scope: !1483)
!1553 = !DILocation(line: 708, column: 1, scope: !1483)
!1554 = distinct !DISubprogram(name: "nn_sock_add_ep", scope: !2, file: !2, line: 416, type: !1555, scopeLine: 418, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1555 = !DISubroutineType(types: !1556)
!1556 = !{!51, !238, !1493, !51, !1497}
!1557 = !DILocalVariable(name: "self", arg: 1, scope: !1554, file: !2, line: 416, type: !238)
!1558 = !DILocation(line: 416, column: 37, scope: !1554)
!1559 = !DILocalVariable(name: "transport", arg: 2, scope: !1554, file: !2, line: 416, type: !1493)
!1560 = !DILocation(line: 416, column: 64, scope: !1554)
!1561 = !DILocalVariable(name: "bind", arg: 3, scope: !1554, file: !2, line: 417, type: !51)
!1562 = !DILocation(line: 417, column: 9, scope: !1554)
!1563 = !DILocalVariable(name: "addr", arg: 4, scope: !1554, file: !2, line: 417, type: !1497)
!1564 = !DILocation(line: 417, column: 27, scope: !1554)
!1565 = !DILocalVariable(name: "rc", scope: !1554, file: !2, line: 419, type: !51)
!1566 = !DILocation(line: 419, column: 9, scope: !1554)
!1567 = !DILocalVariable(name: "ep", scope: !1554, file: !2, line: 420, type: !52)
!1568 = !DILocation(line: 420, column: 19, scope: !1554)
!1569 = !DILocalVariable(name: "eid", scope: !1554, file: !2, line: 421, type: !51)
!1570 = !DILocation(line: 421, column: 9, scope: !1554)
!1571 = !DILocation(line: 423, column: 20, scope: !1554)
!1572 = !DILocation(line: 423, column: 26, scope: !1554)
!1573 = !DILocation(line: 423, column: 5, scope: !1554)
!1574 = !DILocation(line: 426, column: 10, scope: !1554)
!1575 = !DILocation(line: 426, column: 8, scope: !1554)
!1576 = !DILocation(line: 427, column: 22, scope: !1554)
!1577 = !DILocation(line: 427, column: 42, scope: !1554)
!1578 = !DILocation(line: 427, column: 48, scope: !1554)
!1579 = !DILocation(line: 427, column: 54, scope: !1554)
!1580 = !DILocation(line: 427, column: 59, scope: !1554)
!1581 = !DILocation(line: 428, column: 9, scope: !1554)
!1582 = !DILocation(line: 428, column: 15, scope: !1554)
!1583 = !DILocation(line: 427, column: 10, scope: !1554)
!1584 = !DILocation(line: 427, column: 8, scope: !1554)
!1585 = !DILocation(line: 429, column: 9, scope: !1586)
!1586 = distinct !DILexicalBlock(scope: !1554, file: !2, line: 429, column: 9)
!1587 = !DILocation(line: 429, column: 9, scope: !1554)
!1588 = !DILocation(line: 430, column: 18, scope: !1589)
!1589 = distinct !DILexicalBlock(scope: !1586, file: !2, line: 429, column: 27)
!1590 = !DILocation(line: 430, column: 9, scope: !1589)
!1591 = !DILocation(line: 431, column: 24, scope: !1589)
!1592 = !DILocation(line: 431, column: 30, scope: !1589)
!1593 = !DILocation(line: 431, column: 9, scope: !1589)
!1594 = !DILocation(line: 432, column: 16, scope: !1589)
!1595 = !DILocation(line: 432, column: 9, scope: !1589)
!1596 = !DILocation(line: 434, column: 18, scope: !1554)
!1597 = !DILocation(line: 434, column: 5, scope: !1554)
!1598 = !DILocation(line: 437, column: 11, scope: !1554)
!1599 = !DILocation(line: 437, column: 17, scope: !1554)
!1600 = !DILocation(line: 437, column: 9, scope: !1554)
!1601 = !DILocation(line: 438, column: 7, scope: !1554)
!1602 = !DILocation(line: 438, column: 13, scope: !1554)
!1603 = !DILocation(line: 438, column: 5, scope: !1554)
!1604 = !DILocation(line: 441, column: 22, scope: !1554)
!1605 = !DILocation(line: 441, column: 28, scope: !1554)
!1606 = !DILocation(line: 441, column: 34, scope: !1554)
!1607 = !DILocation(line: 441, column: 38, scope: !1554)
!1608 = !DILocation(line: 441, column: 58, scope: !1554)
!1609 = !DILocation(line: 441, column: 64, scope: !1554)
!1610 = !DILocation(line: 441, column: 44, scope: !1554)
!1611 = !DILocation(line: 441, column: 5, scope: !1554)
!1612 = !DILocation(line: 443, column: 20, scope: !1554)
!1613 = !DILocation(line: 443, column: 26, scope: !1554)
!1614 = !DILocation(line: 443, column: 5, scope: !1554)
!1615 = !DILocation(line: 445, column: 12, scope: !1554)
!1616 = !DILocation(line: 445, column: 5, scope: !1554)
!1617 = !DILocation(line: 446, column: 1, scope: !1554)
!1618 = distinct !DISubprogram(name: "nn_sock_rm_ep", scope: !2, file: !2, line: 448, type: !1072, scopeLine: 449, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1619 = !DILocalVariable(name: "self", arg: 1, scope: !1618, file: !2, line: 448, type: !238)
!1620 = !DILocation(line: 448, column: 36, scope: !1618)
!1621 = !DILocalVariable(name: "eid", arg: 2, scope: !1618, file: !2, line: 448, type: !51)
!1622 = !DILocation(line: 448, column: 46, scope: !1618)
!1623 = !DILocalVariable(name: "it", scope: !1618, file: !2, line: 450, type: !186)
!1624 = !DILocation(line: 450, column: 26, scope: !1618)
!1625 = !DILocalVariable(name: "ep", scope: !1618, file: !2, line: 451, type: !52)
!1626 = !DILocation(line: 451, column: 19, scope: !1618)
!1627 = !DILocation(line: 453, column: 20, scope: !1618)
!1628 = !DILocation(line: 453, column: 26, scope: !1618)
!1629 = !DILocation(line: 453, column: 5, scope: !1618)
!1630 = !DILocation(line: 456, column: 8, scope: !1618)
!1631 = !DILocation(line: 457, column: 31, scope: !1632)
!1632 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 457, column: 5)
!1633 = !DILocation(line: 457, column: 37, scope: !1632)
!1634 = !DILocation(line: 457, column: 15, scope: !1632)
!1635 = !DILocation(line: 457, column: 13, scope: !1632)
!1636 = !DILocation(line: 457, column: 10, scope: !1632)
!1637 = !DILocation(line: 458, column: 11, scope: !1638)
!1638 = distinct !DILexicalBlock(scope: !1632, file: !2, line: 457, column: 5)
!1639 = !DILocation(line: 458, column: 31, scope: !1638)
!1640 = !DILocation(line: 458, column: 37, scope: !1638)
!1641 = !DILocation(line: 458, column: 17, scope: !1638)
!1642 = !DILocation(line: 458, column: 14, scope: !1638)
!1643 = !DILocation(line: 457, column: 5, scope: !1632)
!1644 = !DILocation(line: 460, column: 14, scope: !1645)
!1645 = distinct !DILexicalBlock(scope: !1638, file: !2, line: 459, column: 47)
!1646 = !DILocation(line: 460, column: 12, scope: !1645)
!1647 = !DILocation(line: 461, column: 13, scope: !1648)
!1648 = distinct !DILexicalBlock(scope: !1645, file: !2, line: 461, column: 13)
!1649 = !DILocation(line: 461, column: 17, scope: !1648)
!1650 = !DILocation(line: 461, column: 24, scope: !1648)
!1651 = !DILocation(line: 461, column: 21, scope: !1648)
!1652 = !DILocation(line: 461, column: 13, scope: !1645)
!1653 = !DILocation(line: 462, column: 13, scope: !1648)
!1654 = !DILocation(line: 463, column: 12, scope: !1645)
!1655 = !DILocation(line: 464, column: 5, scope: !1645)
!1656 = !DILocation(line: 459, column: 31, scope: !1638)
!1657 = !DILocation(line: 459, column: 37, scope: !1638)
!1658 = !DILocation(line: 459, column: 42, scope: !1638)
!1659 = !DILocation(line: 459, column: 16, scope: !1638)
!1660 = !DILocation(line: 459, column: 14, scope: !1638)
!1661 = !DILocation(line: 457, column: 5, scope: !1638)
!1662 = distinct !{!1662, !1643, !1663, !551}
!1663 = !DILocation(line: 464, column: 5, scope: !1632)
!1664 = !DILocation(line: 467, column: 10, scope: !1665)
!1665 = distinct !DILexicalBlock(scope: !1618, file: !2, line: 467, column: 9)
!1666 = !DILocation(line: 467, column: 9, scope: !1618)
!1667 = !DILocation(line: 468, column: 24, scope: !1668)
!1668 = distinct !DILexicalBlock(scope: !1665, file: !2, line: 467, column: 14)
!1669 = !DILocation(line: 468, column: 30, scope: !1668)
!1670 = !DILocation(line: 468, column: 9, scope: !1668)
!1671 = !DILocation(line: 469, column: 9, scope: !1668)
!1672 = !DILocation(line: 474, column: 17, scope: !1618)
!1673 = !DILocation(line: 474, column: 5, scope: !1618)
!1674 = !DILocation(line: 476, column: 20, scope: !1618)
!1675 = !DILocation(line: 476, column: 26, scope: !1618)
!1676 = !DILocation(line: 476, column: 5, scope: !1618)
!1677 = !DILocation(line: 478, column: 5, scope: !1618)
!1678 = !DILocation(line: 479, column: 1, scope: !1618)
!1679 = distinct !DISubprogram(name: "nn_sock_send", scope: !2, file: !2, line: 481, type: !1680, scopeLine: 482, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!51, !238, !279, !51}
!1682 = !DILocalVariable(name: "self", arg: 1, scope: !1679, file: !2, line: 481, type: !238)
!1683 = !DILocation(line: 481, column: 35, scope: !1679)
!1684 = !DILocalVariable(name: "msg", arg: 2, scope: !1679, file: !2, line: 481, type: !279)
!1685 = !DILocation(line: 481, column: 56, scope: !1679)
!1686 = !DILocalVariable(name: "flags", arg: 3, scope: !1679, file: !2, line: 481, type: !51)
!1687 = !DILocation(line: 481, column: 65, scope: !1679)
!1688 = !DILocalVariable(name: "rc", scope: !1679, file: !2, line: 483, type: !51)
!1689 = !DILocation(line: 483, column: 9, scope: !1679)
!1690 = !DILocalVariable(name: "deadline", scope: !1679, file: !2, line: 484, type: !175)
!1691 = !DILocation(line: 484, column: 14, scope: !1679)
!1692 = !DILocalVariable(name: "now", scope: !1679, file: !2, line: 485, type: !175)
!1693 = !DILocation(line: 485, column: 14, scope: !1679)
!1694 = !DILocalVariable(name: "timeout", scope: !1679, file: !2, line: 486, type: !51)
!1695 = !DILocation(line: 486, column: 9, scope: !1679)
!1696 = !DILocation(line: 489, column: 9, scope: !1697)
!1697 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 489, column: 9)
!1698 = !DILocation(line: 489, column: 9, scope: !1679)
!1699 = !DILocation(line: 490, column: 9, scope: !1697)
!1700 = !DILocation(line: 492, column: 20, scope: !1679)
!1701 = !DILocation(line: 492, column: 26, scope: !1679)
!1702 = !DILocation(line: 492, column: 5, scope: !1679)
!1703 = !DILocation(line: 495, column: 9, scope: !1704)
!1704 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 495, column: 9)
!1705 = !DILocation(line: 495, column: 15, scope: !1704)
!1706 = !DILocation(line: 495, column: 24, scope: !1704)
!1707 = !DILocation(line: 495, column: 9, scope: !1679)
!1708 = !DILocation(line: 496, column: 17, scope: !1704)
!1709 = !DILocation(line: 496, column: 9, scope: !1704)
!1710 = !DILocation(line: 498, column: 35, scope: !1711)
!1711 = distinct !DILexicalBlock(scope: !1704, file: !2, line: 497, column: 10)
!1712 = !DILocation(line: 498, column: 41, scope: !1711)
!1713 = !DILocation(line: 498, column: 20, scope: !1711)
!1714 = !DILocation(line: 498, column: 50, scope: !1711)
!1715 = !DILocation(line: 498, column: 56, scope: !1711)
!1716 = !DILocation(line: 498, column: 48, scope: !1711)
!1717 = !DILocation(line: 498, column: 18, scope: !1711)
!1718 = !DILocation(line: 499, column: 19, scope: !1711)
!1719 = !DILocation(line: 499, column: 25, scope: !1711)
!1720 = !DILocation(line: 499, column: 17, scope: !1711)
!1721 = !DILocation(line: 502, column: 5, scope: !1679)
!1722 = !DILocation(line: 505, column: 13, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 505, column: 13)
!1724 = distinct !DILexicalBlock(scope: !1679, file: !2, line: 502, column: 15)
!1725 = !DILocation(line: 505, column: 13, scope: !1724)
!1726 = !DILocation(line: 506, column: 28, scope: !1727)
!1727 = distinct !DILexicalBlock(scope: !1723, file: !2, line: 505, column: 60)
!1728 = !DILocation(line: 506, column: 34, scope: !1727)
!1729 = !DILocation(line: 506, column: 13, scope: !1727)
!1730 = !DILocation(line: 507, column: 13, scope: !1727)
!1731 = !DILocation(line: 511, column: 14, scope: !1724)
!1732 = !DILocation(line: 511, column: 20, scope: !1724)
!1733 = !DILocation(line: 511, column: 30, scope: !1724)
!1734 = !DILocation(line: 511, column: 37, scope: !1724)
!1735 = !DILocation(line: 511, column: 43, scope: !1724)
!1736 = !DILocation(line: 511, column: 49, scope: !1724)
!1737 = !DILocation(line: 511, column: 59, scope: !1724)
!1738 = !DILocation(line: 511, column: 12, scope: !1724)
!1739 = !DILocation(line: 512, column: 13, scope: !1740)
!1740 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 512, column: 13)
!1741 = !DILocation(line: 512, column: 13, scope: !1724)
!1742 = !DILocation(line: 513, column: 28, scope: !1743)
!1743 = distinct !DILexicalBlock(scope: !1740, file: !2, line: 512, column: 32)
!1744 = !DILocation(line: 513, column: 34, scope: !1743)
!1745 = !DILocation(line: 513, column: 13, scope: !1743)
!1746 = !DILocation(line: 514, column: 13, scope: !1743)
!1747 = !DILocation(line: 516, column: 9, scope: !1724)
!1748 = !DILocation(line: 516, column: 9, scope: !1749)
!1749 = distinct !DILexicalBlock(scope: !1750, file: !2, line: 516, column: 9)
!1750 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 516, column: 9)
!1751 = !DILocation(line: 516, column: 9, scope: !1750)
!1752 = !DILocation(line: 516, column: 9, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1749, file: !2, line: 516, column: 9)
!1754 = !DILocation(line: 519, column: 13, scope: !1755)
!1755 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 519, column: 13)
!1756 = !DILocation(line: 519, column: 13, scope: !1724)
!1757 = !DILocation(line: 520, column: 28, scope: !1758)
!1758 = distinct !DILexicalBlock(scope: !1755, file: !2, line: 519, column: 38)
!1759 = !DILocation(line: 520, column: 34, scope: !1758)
!1760 = !DILocation(line: 520, column: 13, scope: !1758)
!1761 = !DILocation(line: 521, column: 20, scope: !1758)
!1762 = !DILocation(line: 521, column: 13, scope: !1758)
!1763 = !DILocation(line: 526, column: 13, scope: !1764)
!1764 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 526, column: 13)
!1765 = !DILocation(line: 526, column: 13, scope: !1724)
!1766 = !DILocation(line: 527, column: 28, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1764, file: !2, line: 526, column: 44)
!1768 = !DILocation(line: 527, column: 34, scope: !1767)
!1769 = !DILocation(line: 527, column: 13, scope: !1767)
!1770 = !DILocation(line: 528, column: 13, scope: !1767)
!1771 = !DILocation(line: 533, column: 24, scope: !1724)
!1772 = !DILocation(line: 533, column: 30, scope: !1724)
!1773 = !DILocation(line: 533, column: 9, scope: !1724)
!1774 = !DILocation(line: 534, column: 28, scope: !1724)
!1775 = !DILocation(line: 534, column: 34, scope: !1724)
!1776 = !DILocation(line: 534, column: 41, scope: !1724)
!1777 = !DILocation(line: 534, column: 14, scope: !1724)
!1778 = !DILocation(line: 534, column: 12, scope: !1724)
!1779 = !DILocation(line: 535, column: 13, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 535, column: 13)
!1781 = !DILocation(line: 535, column: 13, scope: !1724)
!1782 = !DILocation(line: 536, column: 13, scope: !1780)
!1783 = !DILocation(line: 537, column: 13, scope: !1784)
!1784 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 537, column: 13)
!1785 = !DILocation(line: 537, column: 13, scope: !1724)
!1786 = !DILocation(line: 538, column: 13, scope: !1784)
!1787 = !DILocation(line: 539, column: 9, scope: !1724)
!1788 = !DILocation(line: 539, column: 9, scope: !1789)
!1789 = distinct !DILexicalBlock(scope: !1790, file: !2, line: 539, column: 9)
!1790 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 539, column: 9)
!1791 = !DILocation(line: 539, column: 9, scope: !1790)
!1792 = !DILocation(line: 539, column: 9, scope: !1793)
!1793 = distinct !DILexicalBlock(scope: !1789, file: !2, line: 539, column: 9)
!1794 = !DILocation(line: 540, column: 24, scope: !1724)
!1795 = !DILocation(line: 540, column: 30, scope: !1724)
!1796 = !DILocation(line: 540, column: 9, scope: !1724)
!1797 = !DILocation(line: 544, column: 13, scope: !1798)
!1798 = distinct !DILexicalBlock(scope: !1724, file: !2, line: 544, column: 13)
!1799 = !DILocation(line: 544, column: 19, scope: !1798)
!1800 = !DILocation(line: 544, column: 28, scope: !1798)
!1801 = !DILocation(line: 544, column: 13, scope: !1724)
!1802 = !DILocation(line: 545, column: 34, scope: !1803)
!1803 = distinct !DILexicalBlock(scope: !1798, file: !2, line: 544, column: 34)
!1804 = !DILocation(line: 545, column: 40, scope: !1803)
!1805 = !DILocation(line: 545, column: 19, scope: !1803)
!1806 = !DILocation(line: 545, column: 17, scope: !1803)
!1807 = !DILocation(line: 546, column: 30, scope: !1803)
!1808 = !DILocation(line: 546, column: 36, scope: !1803)
!1809 = !DILocation(line: 546, column: 34, scope: !1803)
!1810 = !DILocation(line: 546, column: 51, scope: !1803)
!1811 = !DILocation(line: 546, column: 62, scope: !1803)
!1812 = !DILocation(line: 546, column: 60, scope: !1803)
!1813 = !DILocation(line: 546, column: 23, scope: !1803)
!1814 = !DILocation(line: 546, column: 21, scope: !1803)
!1815 = !DILocation(line: 547, column: 9, scope: !1803)
!1816 = distinct !{!1816, !1721, !1817}
!1817 = !DILocation(line: 548, column: 5, scope: !1679)
!1818 = !DILocation(line: 549, column: 1, scope: !1679)
!1819 = distinct !DISubprogram(name: "nn_sock_recv", scope: !2, file: !2, line: 551, type: !1680, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1820 = !DILocalVariable(name: "self", arg: 1, scope: !1819, file: !2, line: 551, type: !238)
!1821 = !DILocation(line: 551, column: 35, scope: !1819)
!1822 = !DILocalVariable(name: "msg", arg: 2, scope: !1819, file: !2, line: 551, type: !279)
!1823 = !DILocation(line: 551, column: 56, scope: !1819)
!1824 = !DILocalVariable(name: "flags", arg: 3, scope: !1819, file: !2, line: 551, type: !51)
!1825 = !DILocation(line: 551, column: 65, scope: !1819)
!1826 = !DILocalVariable(name: "rc", scope: !1819, file: !2, line: 553, type: !51)
!1827 = !DILocation(line: 553, column: 9, scope: !1819)
!1828 = !DILocalVariable(name: "sockbase", scope: !1819, file: !2, line: 554, type: !245)
!1829 = !DILocation(line: 554, column: 25, scope: !1819)
!1830 = !DILocalVariable(name: "deadline", scope: !1819, file: !2, line: 555, type: !175)
!1831 = !DILocation(line: 555, column: 14, scope: !1819)
!1832 = !DILocalVariable(name: "now", scope: !1819, file: !2, line: 556, type: !175)
!1833 = !DILocation(line: 556, column: 14, scope: !1819)
!1834 = !DILocalVariable(name: "timeout", scope: !1819, file: !2, line: 557, type: !51)
!1835 = !DILocation(line: 557, column: 9, scope: !1819)
!1836 = !DILocation(line: 559, column: 38, scope: !1819)
!1837 = !DILocation(line: 559, column: 14, scope: !1819)
!1838 = !DILocation(line: 562, column: 9, scope: !1839)
!1839 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 562, column: 9)
!1840 = !DILocation(line: 562, column: 9, scope: !1819)
!1841 = !DILocation(line: 563, column: 9, scope: !1839)
!1842 = !DILocation(line: 565, column: 20, scope: !1819)
!1843 = !DILocation(line: 565, column: 26, scope: !1819)
!1844 = !DILocation(line: 565, column: 5, scope: !1819)
!1845 = !DILocation(line: 568, column: 9, scope: !1846)
!1846 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 568, column: 9)
!1847 = !DILocation(line: 568, column: 15, scope: !1846)
!1848 = !DILocation(line: 568, column: 24, scope: !1846)
!1849 = !DILocation(line: 568, column: 9, scope: !1819)
!1850 = !DILocation(line: 569, column: 17, scope: !1846)
!1851 = !DILocation(line: 569, column: 9, scope: !1846)
!1852 = !DILocation(line: 571, column: 35, scope: !1853)
!1853 = distinct !DILexicalBlock(scope: !1846, file: !2, line: 570, column: 10)
!1854 = !DILocation(line: 571, column: 41, scope: !1853)
!1855 = !DILocation(line: 571, column: 20, scope: !1853)
!1856 = !DILocation(line: 571, column: 50, scope: !1853)
!1857 = !DILocation(line: 571, column: 56, scope: !1853)
!1858 = !DILocation(line: 571, column: 48, scope: !1853)
!1859 = !DILocation(line: 571, column: 18, scope: !1853)
!1860 = !DILocation(line: 572, column: 19, scope: !1853)
!1861 = !DILocation(line: 572, column: 25, scope: !1853)
!1862 = !DILocation(line: 572, column: 17, scope: !1853)
!1863 = !DILocation(line: 575, column: 5, scope: !1819)
!1864 = !DILocation(line: 578, column: 13, scope: !1865)
!1865 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 578, column: 13)
!1866 = distinct !DILexicalBlock(scope: !1819, file: !2, line: 575, column: 15)
!1867 = !DILocation(line: 578, column: 13, scope: !1866)
!1868 = !DILocation(line: 579, column: 28, scope: !1869)
!1869 = distinct !DILexicalBlock(scope: !1865, file: !2, line: 578, column: 60)
!1870 = !DILocation(line: 579, column: 34, scope: !1869)
!1871 = !DILocation(line: 579, column: 13, scope: !1869)
!1872 = !DILocation(line: 580, column: 13, scope: !1869)
!1873 = !DILocation(line: 584, column: 14, scope: !1866)
!1874 = !DILocation(line: 584, column: 20, scope: !1866)
!1875 = !DILocation(line: 584, column: 30, scope: !1866)
!1876 = !DILocation(line: 584, column: 37, scope: !1866)
!1877 = !DILocation(line: 584, column: 43, scope: !1866)
!1878 = !DILocation(line: 584, column: 49, scope: !1866)
!1879 = !DILocation(line: 584, column: 59, scope: !1866)
!1880 = !DILocation(line: 584, column: 12, scope: !1866)
!1881 = !DILocation(line: 585, column: 13, scope: !1882)
!1882 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 585, column: 13)
!1883 = !DILocation(line: 585, column: 13, scope: !1866)
!1884 = !DILocation(line: 586, column: 28, scope: !1885)
!1885 = distinct !DILexicalBlock(scope: !1882, file: !2, line: 585, column: 32)
!1886 = !DILocation(line: 586, column: 34, scope: !1885)
!1887 = !DILocation(line: 586, column: 13, scope: !1885)
!1888 = !DILocation(line: 587, column: 13, scope: !1885)
!1889 = !DILocation(line: 589, column: 9, scope: !1866)
!1890 = !DILocation(line: 589, column: 9, scope: !1891)
!1891 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 589, column: 9)
!1892 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 589, column: 9)
!1893 = !DILocation(line: 589, column: 9, scope: !1892)
!1894 = !DILocation(line: 589, column: 9, scope: !1895)
!1895 = distinct !DILexicalBlock(scope: !1891, file: !2, line: 589, column: 9)
!1896 = !DILocation(line: 592, column: 13, scope: !1897)
!1897 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 592, column: 13)
!1898 = !DILocation(line: 592, column: 13, scope: !1866)
!1899 = !DILocation(line: 593, column: 28, scope: !1900)
!1900 = distinct !DILexicalBlock(scope: !1897, file: !2, line: 592, column: 38)
!1901 = !DILocation(line: 593, column: 34, scope: !1900)
!1902 = !DILocation(line: 593, column: 13, scope: !1900)
!1903 = !DILocation(line: 594, column: 20, scope: !1900)
!1904 = !DILocation(line: 594, column: 13, scope: !1900)
!1905 = !DILocation(line: 599, column: 13, scope: !1906)
!1906 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 599, column: 13)
!1907 = !DILocation(line: 599, column: 13, scope: !1866)
!1908 = !DILocation(line: 600, column: 28, scope: !1909)
!1909 = distinct !DILexicalBlock(scope: !1906, file: !2, line: 599, column: 44)
!1910 = !DILocation(line: 600, column: 34, scope: !1909)
!1911 = !DILocation(line: 600, column: 13, scope: !1909)
!1912 = !DILocation(line: 601, column: 13, scope: !1909)
!1913 = !DILocation(line: 606, column: 24, scope: !1866)
!1914 = !DILocation(line: 606, column: 30, scope: !1866)
!1915 = !DILocation(line: 606, column: 9, scope: !1866)
!1916 = !DILocation(line: 607, column: 28, scope: !1866)
!1917 = !DILocation(line: 607, column: 34, scope: !1866)
!1918 = !DILocation(line: 607, column: 41, scope: !1866)
!1919 = !DILocation(line: 607, column: 14, scope: !1866)
!1920 = !DILocation(line: 607, column: 12, scope: !1866)
!1921 = !DILocation(line: 608, column: 13, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 608, column: 13)
!1923 = !DILocation(line: 608, column: 13, scope: !1866)
!1924 = !DILocation(line: 609, column: 13, scope: !1922)
!1925 = !DILocation(line: 610, column: 13, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 610, column: 13)
!1927 = !DILocation(line: 610, column: 13, scope: !1866)
!1928 = !DILocation(line: 611, column: 13, scope: !1926)
!1929 = !DILocation(line: 612, column: 9, scope: !1866)
!1930 = !DILocation(line: 612, column: 9, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1932, file: !2, line: 612, column: 9)
!1932 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 612, column: 9)
!1933 = !DILocation(line: 612, column: 9, scope: !1932)
!1934 = !DILocation(line: 612, column: 9, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !2, line: 612, column: 9)
!1936 = !DILocation(line: 613, column: 24, scope: !1866)
!1937 = !DILocation(line: 613, column: 30, scope: !1866)
!1938 = !DILocation(line: 613, column: 9, scope: !1866)
!1939 = !DILocation(line: 617, column: 13, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1866, file: !2, line: 617, column: 13)
!1941 = !DILocation(line: 617, column: 19, scope: !1940)
!1942 = !DILocation(line: 617, column: 28, scope: !1940)
!1943 = !DILocation(line: 617, column: 13, scope: !1866)
!1944 = !DILocation(line: 618, column: 34, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1940, file: !2, line: 617, column: 34)
!1946 = !DILocation(line: 618, column: 40, scope: !1945)
!1947 = !DILocation(line: 618, column: 19, scope: !1945)
!1948 = !DILocation(line: 618, column: 17, scope: !1945)
!1949 = !DILocation(line: 619, column: 30, scope: !1945)
!1950 = !DILocation(line: 619, column: 36, scope: !1945)
!1951 = !DILocation(line: 619, column: 34, scope: !1945)
!1952 = !DILocation(line: 619, column: 51, scope: !1945)
!1953 = !DILocation(line: 619, column: 62, scope: !1945)
!1954 = !DILocation(line: 619, column: 60, scope: !1945)
!1955 = !DILocation(line: 619, column: 23, scope: !1945)
!1956 = !DILocation(line: 619, column: 21, scope: !1945)
!1957 = !DILocation(line: 620, column: 9, scope: !1945)
!1958 = distinct !{!1958, !1863, !1959}
!1959 = !DILocation(line: 621, column: 5, scope: !1819)
!1960 = !DILocation(line: 622, column: 1, scope: !1819)
!1961 = distinct !DISubprogram(name: "nn_sock_add", scope: !2, file: !2, line: 624, type: !1962, scopeLine: 625, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{!51, !238, !263}
!1964 = !DILocalVariable(name: "self", arg: 1, scope: !1961, file: !2, line: 624, type: !238)
!1965 = !DILocation(line: 624, column: 34, scope: !1961)
!1966 = !DILocalVariable(name: "pipe", arg: 2, scope: !1961, file: !2, line: 624, type: !263)
!1967 = !DILocation(line: 624, column: 56, scope: !1961)
!1968 = !DILocation(line: 626, column: 12, scope: !1961)
!1969 = !DILocation(line: 626, column: 18, scope: !1961)
!1970 = !DILocation(line: 626, column: 28, scope: !1961)
!1971 = !DILocation(line: 626, column: 35, scope: !1961)
!1972 = !DILocation(line: 626, column: 40, scope: !1961)
!1973 = !DILocation(line: 626, column: 46, scope: !1961)
!1974 = !DILocation(line: 626, column: 56, scope: !1961)
!1975 = !DILocation(line: 626, column: 5, scope: !1961)
!1976 = distinct !DISubprogram(name: "nn_sock_rm", scope: !2, file: !2, line: 629, type: !1977, scopeLine: 630, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{null, !238, !263}
!1979 = !DILocalVariable(name: "self", arg: 1, scope: !1976, file: !2, line: 629, type: !238)
!1980 = !DILocation(line: 629, column: 34, scope: !1976)
!1981 = !DILocalVariable(name: "pipe", arg: 2, scope: !1976, file: !2, line: 629, type: !263)
!1982 = !DILocation(line: 629, column: 56, scope: !1976)
!1983 = !DILocation(line: 631, column: 5, scope: !1976)
!1984 = !DILocation(line: 631, column: 11, scope: !1976)
!1985 = !DILocation(line: 631, column: 21, scope: !1976)
!1986 = !DILocation(line: 631, column: 28, scope: !1976)
!1987 = !DILocation(line: 631, column: 32, scope: !1976)
!1988 = !DILocation(line: 631, column: 38, scope: !1976)
!1989 = !DILocation(line: 631, column: 48, scope: !1976)
!1990 = !DILocation(line: 632, column: 1, scope: !1976)
!1991 = distinct !DISubprogram(name: "nn_sock_action_zombify", scope: !2, file: !2, line: 864, type: !932, scopeLine: 865, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !47, retainedNodes: !399)
!1992 = !DILocalVariable(name: "self", arg: 1, scope: !1991, file: !2, line: 864, type: !238)
!1993 = !DILocation(line: 864, column: 53, scope: !1991)
!1994 = !DILocation(line: 868, column: 5, scope: !1991)
!1995 = !DILocation(line: 868, column: 11, scope: !1991)
!1996 = !DILocation(line: 868, column: 17, scope: !1991)
!1997 = !DILocation(line: 871, column: 11, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 871, column: 9)
!1999 = !DILocation(line: 871, column: 17, scope: !1998)
!2000 = !DILocation(line: 871, column: 23, scope: !1998)
!2001 = !DILocation(line: 871, column: 9, scope: !1991)
!2002 = !DILocation(line: 872, column: 9, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1998, file: !2, line: 871, column: 43)
!2004 = !DILocation(line: 872, column: 15, scope: !2003)
!2005 = !DILocation(line: 872, column: 21, scope: !2003)
!2006 = !DILocation(line: 873, column: 15, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2003, file: !2, line: 873, column: 13)
!2008 = !DILocation(line: 873, column: 21, scope: !2007)
!2009 = !DILocation(line: 873, column: 31, scope: !2007)
!2010 = !DILocation(line: 873, column: 37, scope: !2007)
!2011 = !DILocation(line: 873, column: 13, scope: !2003)
!2012 = !DILocation(line: 874, column: 29, scope: !2007)
!2013 = !DILocation(line: 874, column: 35, scope: !2007)
!2014 = !DILocation(line: 874, column: 13, scope: !2007)
!2015 = !DILocation(line: 875, column: 5, scope: !2003)
!2016 = !DILocation(line: 876, column: 11, scope: !2017)
!2017 = distinct !DILexicalBlock(scope: !1991, file: !2, line: 876, column: 9)
!2018 = !DILocation(line: 876, column: 17, scope: !2017)
!2019 = !DILocation(line: 876, column: 23, scope: !2017)
!2020 = !DILocation(line: 876, column: 9, scope: !1991)
!2021 = !DILocation(line: 877, column: 9, scope: !2022)
!2022 = distinct !DILexicalBlock(scope: !2017, file: !2, line: 876, column: 44)
!2023 = !DILocation(line: 877, column: 15, scope: !2022)
!2024 = !DILocation(line: 877, column: 21, scope: !2022)
!2025 = !DILocation(line: 878, column: 15, scope: !2026)
!2026 = distinct !DILexicalBlock(scope: !2022, file: !2, line: 878, column: 13)
!2027 = !DILocation(line: 878, column: 21, scope: !2026)
!2028 = !DILocation(line: 878, column: 31, scope: !2026)
!2029 = !DILocation(line: 878, column: 37, scope: !2026)
!2030 = !DILocation(line: 878, column: 13, scope: !2022)
!2031 = !DILocation(line: 879, column: 29, scope: !2026)
!2032 = !DILocation(line: 879, column: 35, scope: !2026)
!2033 = !DILocation(line: 879, column: 13, scope: !2026)
!2034 = !DILocation(line: 880, column: 5, scope: !2022)
!2035 = !DILocation(line: 881, column: 1, scope: !1991)
